import { PrismaClient } from "@prisma/client";
const prisma =new PrismaClient();
const main=async()=>{
    //create->creating a signle value
    // const result =await prisma.post.create({
    //     data:{
    //         title:"Lorem ipsum",
    //         content:"lorem ipsum",
    //         authorName:"Md Lanju Mia",
    //     }
    // })
    //createMany->creating multiple value
    const createManyReault=await prisma.post.createMany({
        data:[
            {
               title:"Lorem ipsum",
               content:"lorem ipsum",
               authorName:"Md Lanju Mia",
            },
            {
               title:"Lorem ipsum",
               content:"lorem ipsum",
               authorName:"Suhel Nayon",
            },
        ]
    })
    //findMany->Get the all data
    const getAllData=await prisma.post.findMany()
    //findFirst->if match the condition then return only first matches data
    const findFirstResult=await prisma.post.findFirst({
        where:{
            published:false
        }
    })
    //findFirstOrThrow->if the data is not match the condition return a error
    const findFirstOrThrowResult=await prisma.post.findFirstOrThrow({
        where:{
            published:false
        }
    })
    //findUnique->return unique value
    const findUniqueResult=await prisma.post.findUnique({
        where:{
            id:2
        }
    })
    //findUniqueOrThrow->if match the condition,return unique value,does not matche the condition return error
    const findUniqueOrThrowResult=await prisma.post.findUniqueOrThrow({
        where:{
            id:2
        }
    })
    //update->update a single value
    
/*     const updateResult=await prisma.post.update({
        where:{
            id:2
        },
        data:{
            authorName:"Ayesha siddika",
            content:"Here is ayesha bloging",
            title:"Ayesha technology"
        }
    })  */
    //update->update a multiple value
    const updateManyResult=await prisma.post.updateMany({
        where:{
            published:true
        },
        data:{
            published:false
        }
    }) 
    //delete->delete can single delete
/*     const deleteResult=await prisma.post.delete({
        where:{
            id:1
        }
    }) */
    //deleteMany->delete multiple value
    const deleteManyResult=await prisma.post.deleteMany({
        where:{
            title:"Lorem ipsum"
        }
    })
    console.log(deleteManyResult);

}
main()
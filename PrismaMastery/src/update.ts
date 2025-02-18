import { PrismaClient } from "@prisma/client";
const prisma=new PrismaClient();
const updateFunc=async()=>{
    const updateResult=await prisma.post.update({
        where:{
            id:2
        },
        data:{
            authorName:"Ayesha siddika",
            content:"Here is ayesha bloging",
            title:"Ayesha technology"
        }
    }) 
    console.log(updateResult);
}
updateFunc()
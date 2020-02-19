const app = require('express')();
const Prisma = require('@prisma/client');
const prismaClient = new Prisma.PrismaClient();

app.get('/', async function (req, res) {
  // TEST autocomplete, TEST ORM, TEST DB

  // const newUser = await prismaClient.user.create({data: {email:"tjhhkjh"}});
  // const users = await prismaClient.user.findMany();
  const newPost = await prismaClient.post.create({data: {title:"tt",content:"lol"}});
  const posts = await prismaClient.post.findMany()

  console.log(JSON.stringify(posts));

  res.send('Hello World!');
})

app.listen(3000, function () {
  console.log('Prisma2 app listening on port 3000!')
})


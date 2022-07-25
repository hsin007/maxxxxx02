const nodemailer = require('nodemailer');
const transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    port: 465,
    auth: {
        user: 'mfee26dservice@gmail.com',
        pass: 'jevfvikfxizdyqgn',
    },
});

transporter
    .sendMail({
        from: '來生投放所 <service@nextlife.com.tw>',
        to: 'a2827234@gmail.com',
        subject: '《來生投放所》修改密碼通知信',
        html: `
    <a href="#"><img src="https://i.imgur.com/p6gpFUR.png" width="800" /></a>`,
    })
    .then((info) => {
        console.log({ info });
    })
    .catch(console.error);

$(() => {
    $("#error_explanation li").text((index, text) => {
        return text.replace(/Email/g, "「电子邮箱」")
            .replace(/Current password/g, "「当前密码」")
            .replace(/Password confirmation/g, "「确认密码」")
            .replace(/Password/g, "「密码」")
            .replace(/Sid/g, "「学号」")
            .replace(/Name/g, "「姓名」")
            .replace(/School class/g, "「班级」");
    });
});

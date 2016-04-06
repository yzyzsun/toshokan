$(() => {
    $("#error_explanation li").text((index, text) => {
        return text.replace(/Isbn/g, "「ISBN-13」")
            .replace(/Title/g, "「书名」")
            .replace(/Author/g, "「学号」")
            .replace(/Publisher/g, "「出版社」")
            .replace(/Introduction/g, "「简介」");
    });
});

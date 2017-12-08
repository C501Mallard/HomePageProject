$('.startclick').click(function () {
    if ($('#startspan').hasClass("fa-star")) {
        $('.startclick').removeClass('active')
        setTimeout(function () {
            $('.startclick').removeClass('active-2')
        }, 30)
        $('.startclick').removeClass('active-3')
        setTimeout(function () {
            $('#startspan').removeClass('fa-star')
            $('#startspan').addClass('fa-star-o')
        }, 15)
    } else {
        $('.startclick').addClass('active')
        $('.startclick').addClass('active-2')
        setTimeout(function () {
            $('#startspan').addClass('fa-star')
            $('#startspan').removeClass('fa-star-o')
        }, 150)
        setTimeout(function () {
            $('.startclick').addClass('active-3')
        }, 150)
        $('.info').addClass('info-tog')
        setTimeout(function () {
            $('.info').removeClass('info-tog')
        }, 1000)
    }
})
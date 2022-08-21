
$('#btnAdd').off('click').on('click', function () {
    $('#myModal').modal('show');
})


$("#btnSave").click(function(){
    var AddData = $("#addform").serialize();

    $.ajax({
        type:"POST",
        url: "/CongTy/SaveData",
        data:AddData,
        success: function () {
            window.location.href = "/CongTy/Index";
        }
    })
})


$(".custom-file-input").on("change", function () {
    var fileName = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
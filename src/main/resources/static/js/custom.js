
$(function () {
    $('.container-fluid .add-group.addOperationBtn').on('click', function (event) {
        event.preventDefault();
        $('.addOperationModal #addOperationModal').modal();
    })
});

$(function () {
    $('.container-fluid .add-group.addCompBtn').on('click', function (event) {
        event.preventDefault();
        $('.addCompModal #addCompModal').modal();
    })
});
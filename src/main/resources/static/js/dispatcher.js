$(function () {
    $('.container-fluid .add-group.addProdOrderBtn').on('click', function (event) {
        event.preventDefault();
        $('.addProdOrderModal #addProdOrderModal').modal();
    })
});
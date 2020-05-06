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

$(function () {
    $('.container-fluid .add-group.addProdBtn').on('click', function (event) {
        event.preventDefault();
        $('.addProdModal #addProdModal').modal();
    })
});
$(function () {
    $("#btnAddComponent").on("click", function (event) {
        event.preventDefault();
        var newRow = $("<tr>");
        var cols = "";
        var name = $("#components-select option:selected").text();
        var number = $('#component_number').val();

        cols += '<th class="number" scope="row"></th>';

        cols += '<td>' +
            '<input type="text" id="componentName" name="componentName" value="' + name + '" hidden>'
            + name + '</td>';

        cols += '<td>' +
            '<input type="number" id="componentNumber" name="componentNumber" value="' + number + '" hidden>'
            + number + '</td>';

        cols += '<td> <button type="button" id="btnDelComponent" class="btn btn-outline-danger btn-sm">ꟷ </button></td>';

        newRow.append(cols);
        $("table.component-list").append(newRow);

        updateRowsNumbers();
    });
});
$("#component-list").on("click", "#btnDelComponent", function () {
    $(this).closest("tr").remove();

    updateRowsNumbers();

});

function updateRowsNumbers() {
    $('#component-list tbody tr').each(function (idx) {// или без row
        $(this).children().first().html(idx + 1);
    });
}

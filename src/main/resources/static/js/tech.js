//Tech
//Tech modals
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

//Edit product modal
$(function () {
    $(".editProdBtn").on('click', function (event) {
        event.preventDefault();

        var href = $(this).attr('href');
        $.get(href,function (product) {
            $(".addProdModal #prodName").val(product.name);
            $("#idProdModal").val(product.id);
        });

        $('.addProdModal #addProdModal').modal();
    })
});

//Components controller
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

        updateComponentRowsNumbers();
    });
});

$("#component-list").on("click", "#btnDelComponent", function () {
    $(this).closest("tr").remove();

    updateComponentRowsNumbers();

});

function updateComponentRowsNumbers() {
    $('#component-list tbody tr').each(function (idx) {// или без row
        $(this).children().first().html(idx + 1);
    });
}

//Operations controller
$(function () {
    $("#btnAddOperationModal").on("click", function (event) {
        event.preventDefault();
        var newRow = $("<tr>");
        var cols = "";
        var name = $("#operations-select option:selected").text();
        var number = $('#operation_number').val();

        cols += '<th class="number" scope="row"></th>';

        cols += '<td>' +
            '<input type="text" id="operationName" name="operationName" value="' + name + '" hidden>'
            + name + '</td>';

        cols += '<td>' +
            '<input type="number" id="operationSeconds" name="operationSeconds" value="' + number + '" hidden>'
            + number + '</td>';

        cols += '<td> <button type="button" id="btnDelOperation" class="btn btn-outline-danger btn-sm">ꟷ </button></td>';

        newRow.append(cols);
        $("table.operation-list").append(newRow);

        updateOperationRowsNumbers();
    });
});

function updateOperationRowsNumbers() {
    $('#operation-list tbody tr').each(function (idx) {// или без row
        $(this).children().first().html(idx + 1);
    });
}

$("#operation-list").on("click", "#btnDelOperation", function () {
    $(this).closest("tr").remove();

    updateOperationRowsNumbers();

});

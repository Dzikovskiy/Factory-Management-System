<#macro modal>

    <div class="modal fade" id="addProdOrderModal" tabindex="-1" role="dialog" aria-labelledby="addProdOrderModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="addProdOrderModalLabel">Добавить производственный заказ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body ">
                    <form method="post" action="/saveOperation">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Товар:</label>
                            <select name="product" id="products-select" class="custom-select">
                                <option value="" selected>Выберите товар</option>
                                <#if products?has_content>
                                    <#list products as prod>
                                        <option value="${prod.name}">${prod.name}</option>
                                    </#list>
                                </#if>
                            </select>
                        </div>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Название операции в этом цеху (с
                                маленькой):</label>
                            <input type="text" class="form-control" id="operation_name" name="operation_name" value=""
                                   placeholder="введите название операции" required>
                            <div class="row justify-content-center mt-3">
                                <button type="submit" class="btn btn-primary ">Добавить</button>
                            </div>
                        </div>
                    </form>
                    <#if operations?has_content>
                        <table class="table table-sm pb-5 pt-3 table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Цех</th>
                                <th scope="col">Операция</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list operations as oper>
                                <tr>
                                    <th scope="row">${oper?counter}</th>
                                    <td>${oper.workshop.name}</td>
                                    <td>${oper.name}</td>
                                    <td>
                                        <form method="post" action="/deleteOperation">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                            <input type="text" class="form-control" id="id" name="id"
                                                   value="${oper.id}" readonly hidden>
                                            <input type="text" class="form-control" id="workshop_name" name="workshop_name"
                                                   value="${oper.workshop.name}" readonly hidden>
                                            <button type="submit" class="btn btn-outline-danger btn-sm">ꟷ</button>
                                        </form>
                                    </td>
                                </tr>
                            </#list>
                            </tbody>
                        </table>
                    </#if>
                </div>
            </div>
        </div>
    </div>

</#macro>
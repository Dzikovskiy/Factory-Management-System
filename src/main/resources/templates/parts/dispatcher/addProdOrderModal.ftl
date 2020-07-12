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
                    <form method="post" action="/saveProductOrder">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Товар:</label>
                            <select name="product_name" id="products-select" class="custom-select">
                                <option value="" selected>Выберите товар</option>
                                <#if products?has_content>
                                    <#list products as prod>
                                        <option value="${prod.name}">${prod.name}</option>
                                    </#list>
                                </#if>
                            </select>
                        </div>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Дата готовности</label>
                            <input type="date" id="date" name="date" class="form-control"
                                   value="2020-05-08"
                                   min="2020-05-08" max="2025-12-31" >
                        </div>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Количество</label>
                            <input type="number" class="form-control" id="number" name="number" value=""
                                   placeholder="введите количество" required>
                            <div class="row justify-content-center mt-3">
                                <button type="submit" class="btn btn-primary ">Добавить</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</#macro>
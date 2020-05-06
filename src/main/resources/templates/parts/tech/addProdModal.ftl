<#macro modal>

    <div class="modal fade" id="addProdModal" tabindex="-1" role="dialog" aria-labelledby="addProdModalLabel"
         aria-hidden="true">

        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="addProdModalLabel">Добавить товар</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body ">

                    <form method="post" id="saveCompForm" action="/saveProduct">
                        <input type="hidden" id="idProdModal" name="idProdModal"/>
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <div class="form-group row ml-1 mb-3">
                            <h5><label for="text" class="col-sm-2 col-form-label">Название:</label></h5>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="prodName" name="name" value=""
                                       placeholder="введите название" required>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <div class="col-sm-6">
                                <h5><label for="text" class="col-sm-3 col-form-label">Операции:</label></h5>
                                <div class="row">
                                    <div class="col-6">
                                        <select name="operation" id="operations-select" class="custom-select">
                                            <option value="" selected>Выберите операцию</option>
                                            <#list workshops as work>
                                            <optgroup label="${work.name} цех">
                                                <#list work.operations as oper>
                                                <option value="${oper.name}">${oper.name}</option>
                                                </#list>
                                            </optgroup>
                                            </#list>
                                        </select>
                                    </div>
                                    <div class="col-3 ">
                                        <input type="number" class="form-control" id="operation_number"
                                               name="operation_number" value=""
                                               placeholder="секунд">
                                    </div>
                                    <div class="col-3">
                                        <button type="button" id="btnAddOperationModal"
                                                class="btn btn-info btnAddOperationModal">Добавить
                                        </button>
                                    </div>
                                </div>

                                <div class="row mx-2 px-2 my-3">
                                    <table id="operation-list"
                                           class="table table-sm mr-4 py-5 table-striped operation-list">
                                        <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Операции</th>
                                            <th scope="col">Секунды</th>
                                            <th scope="col"></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <h5><label for="text" class="col-sm-3 col-form-label">Комплектующие:</label></h5>
                                <div class="row">
                                    <div class="col-6">
                                        <select name="component" id="components-select" class="custom-select">
                                            <option value="" selected>Выберите комплектующую</option>
                                            <#if components?has_content>
                                                <#list components as comp>
                                                    <option value="${comp.name}">${comp.name}</option>
                                                </#list>
                                            </#if>
                                        </select>
                                    </div>
                                    <div class="col-3">
                                        <input type="number" class="form-control" id="component_number"
                                               name="component_number" value=""
                                               placeholder="кол-во">
                                    </div>
                                    <div class="col-3">
                                        <button type="button" id="btnAddComponent"
                                                class="btn btn-success btnAddComponent">Добавить
                                        </button>
                                    </div>
                                </div>

                                <div class="row mx-2 px-2 my-3">
                                    <table id="component-list"
                                           class="table table-sm mr-4 py-5 table-striped component-list">
                                        <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Комплектующие</th>
                                            <th scope="col">Кол-во</th>
                                            <th scope="col"></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                        <div class="form-group row justify-content-center mt-3">
                            <button type="submit" class="btn btn-primary ">Сохранить</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</#macro>
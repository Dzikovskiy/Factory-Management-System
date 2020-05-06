<#macro modal>

    <div class="modal fade" id="addCompModal" tabindex="-1" role="dialog" aria-labelledby="addCompModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Добавить комплектующую/материал</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body ">
                    <form method="post" action="/saveComponent">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <div class="form-group mb-3">
                            <label for="text" class="col-form-label">Название:</label>
                            <input type="text" class="form-control" id="name" name="name" value=""
                                   placeholder="введите название" required>
                            <div class="row justify-content-center mt-3">
                                <button type="submit" class="btn btn-primary ">Добавить</button>
                            </div>
                        </div>
                    </form>
                    <#if components?has_content>
                        <table class="table table-sm pb-5 pt-3 table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Назван</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list components as comp>
                                <tr>
                                    <th scope="row">${comp?counter}</th>
                                    <td>${comp.name}</td>
                                    <td>
                                        <form method="post" action="/deleteComponent">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                            <input type="text" class="form-control" id="id" name="id"
                                                   value="${comp.id}" readonly hidden>
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
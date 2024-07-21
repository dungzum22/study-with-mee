<div class="row" id="messages-table">
  <div class="col-12">
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">User Messages</h3>
      </div>
      <div class="row p-2">
        <div class="col-6">
          <div class="btn-group">
            <button type="button" class="btn btn-primary btn-sm" onclick="switchViewMessages(false)">
              <i class="fa fa-plus"></i> Create
            </button>
          </div>
        </div>
        <div class="col-6">
          <div class="input-group input-group-sm float-right" style="width: 250px">
            <input type="text" name="table_search" class="form-control float-right" placeholder="Search" id="inpSearchMessages" oninput="onSearchByMessageContent()">
            <div class="input-group-append">
              <button type="submit" class="btn btn-default">
                <i class="fas fa-search"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="card-body table-responsive p-0">
        <table class="table table-head-fixed text-wrap table-sm table-striped">
          <thead>
            <tr>
              <th>Id</th>
              <th>Subject</th>
              <th>Email</th>
              <th>Message</th>
              <th>Status</th>
              <th>Create Date</th>
              <th>Updated Date</th>
              <th>Created By</th>
              <th>Updated By</th>
              <th style="width: 95px;">Actions</th>
            </tr>
          </thead>
          <tbody id="tblMessages">
          </tbody>
        </table>
        <div class="card-footer clearfix">
          <ul id="messagesPagination" class="pagination-sm float-right"></ul>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row" id="messages-form">
  <div class="col-12">
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create/Edit Message</h3>
      </div>
      <div class="card-body">
        <div class="form-group" style="display: none">
          <label for="messageId">Id</label>
          <input type="text" name="id" class="form-control" id="inpMessageId">
        </div>
        <div class="form-group">
          <label for="subject">Subject</label>
          <input class="form-control" placeholder="Subject" id="inpMessageSubject">
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input class="form-control" placeholder="Email" id="inpMessageEmail">
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="inpMessageContent" class="form-control" placeholder="Message"></textarea>
        </div>
        <div class="form-group" style="display: none;">
          <label for="status">Status</label>
          <input type="text" name="status" class="form-control" id="inpMessageStatus">
        </div>
      </div>
      <div class="card-footer">
        <div class="float-right">
          <button type="button" class="btn btn-default" onclick="draftMessage()">
            <i class="fas fa-pencil-alt"></i> Draft
          </button>
          <button type="button" class="btn btn-primary" onclick="saveMessage()">
            <i class="fas fa-save"></i> Save
          </button>
        </div>
        <button type="button" class="btn btn-default" onclick="switchViewMessages(true)">
          <i class="fas fa-times"></i> Discard
        </button>
      </div>
    </div>
  </div>
</div>

<script src="${pageContext.request.contextPath}/page-admin/features/messages/index.js"></script>

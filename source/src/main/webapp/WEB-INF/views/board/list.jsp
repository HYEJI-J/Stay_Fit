<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
            	<!-- 마이페이지 카테고리 -->
                <jsp:include page="/WEB-INF/views/board/boardcategory.jsp"></jsp:include>
                
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        
                        <% String boardTitle = "";
                        switch(request.getParameter("bcid")) {
							case "0":
								boardTitle = "공지사항";
								break;
								
							case "1":
								boardTitle = "식단";
								break;
								
							case "2":
								boardTitle = "팁&노하우";
								break;
								
							case "3":
								boardTitle = "고민&질문";
								break;
							}
							
							
							%>
                        <h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light">마이페이지 /</span> <%=boardTitle %>
							
						</h4>
                        
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    <select name="">
                                    	<option value="0" <%if(request.getParameter("bcid").equals("0")){ %> selected <%} %>>공지사항</option>
                                    	<option value="1" <%if(request.getParameter("bcid").equals("1")){ %> selected <%} %>>식단</option>
                                    	<option value="2" <%if(request.getParameter("bcid").equals("2")){ %> selected <%} %>>팁&노하우</option>
                                    	<option value="3" <%if(request.getParameter("bcid").equals("3")){ %> selected <%} %>>고민&질문</option>
                                    </select>
                                </div>
                                <div class="hero__search__categories">
                                	<select name="">
                                    	<option value="1" selected>전체</option>
                                    	<option value="2">작성자</option>
                                    	<option value="3">제목</option>
                                    </select>
                                </div>
                                <input type="text" placeholder="검색어를 입력해주세요.">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        
                        <div class="container-xl flex-grow-1 container-p-y">
	                        <!-- Basic Bootstrap Table -->
							<div class="card">
								<h5 class="card-header">Table Basic</h5>
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead>
											<tr>
												<th>Project</th>
												<th>Client</th>
												<th>Users</th>
												<th>Status</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody class="table-border-bottom-0">
											<tr>
												<td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>Angular
														Project</strong></td>
												<td>Albert Cook</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><img
															src="../assets/img/avatars/5.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Sophia Wilkerson"><img
															src="../assets/img/avatars/6.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Christina Parker"><img
															src="../assets/img/avatars/7.png" alt="Avatar"
															class="rounded-circle"></li>
													</ul>
												</td>
												<td><span class="badge bg-label-primary me-1">Active</span></td>
												<td>
													<div class="dropdown">
														<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bx bx-edit-alt me-1"></i> Edit</a> <a class="dropdown-item"
																href="javascript:void(0);"><i class="bx bx-trash me-1"></i>
																Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>React
														Project</strong></td>
												<td>Barry Hunter</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><img
															src="../assets/img/avatars/5.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Sophia Wilkerson"><img
															src="../assets/img/avatars/6.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Christina Parker"><img
															src="../assets/img/avatars/7.png" alt="Avatar"
															class="rounded-circle"></li>
													</ul>
												</td>
												<td><span class="badge bg-label-success me-1">Completed</span></td>
												<td>
													<div class="dropdown">
														<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bx bx-edit-alt me-2"></i> Edit</a> <a class="dropdown-item"
																href="javascript:void(0);"><i class="bx bx-trash me-2"></i>
																Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>VueJs
														Project</strong></td>
												<td>Trevor Baker</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><img
															src="../assets/img/avatars/5.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Sophia Wilkerson"><img
															src="../assets/img/avatars/6.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Christina Parker"><img
															src="../assets/img/avatars/7.png" alt="Avatar"
															class="rounded-circle"></li>
													</ul>
												</td>
												<td><span class="badge bg-label-info me-1">Scheduled</span></td>
												<td>
													<div class="dropdown">
														<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bx bx-edit-alt me-2"></i> Edit</a> <a class="dropdown-item"
																href="javascript:void(0);"><i class="bx bx-trash me-2"></i>
																Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-bootstrap fa-lg text-primary me-3"></i>
													<strong>Bootstrap Project</strong></td>
												<td>Jerry Milton</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><img
															src="../assets/img/avatars/5.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Sophia Wilkerson"><img
															src="../assets/img/avatars/6.png" alt="Avatar"
															class="rounded-circle"></li>
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Christina Parker"><img
															src="../assets/img/avatars/7.png" alt="Avatar"
															class="rounded-circle"></li>
													</ul>
												</td>
												<td><span class="badge bg-label-warning me-1">Pending</span></td>
												<td>
													<div class="dropdown">
														<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bx bx-edit-alt me-2"></i> Edit</a> <a class="dropdown-item"
																href="javascript:void(0);"><i class="bx bx-trash me-2"></i>
																Delete</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!--/ Basic Bootstrap Table -->
                        </div>
                        
                        <div class="col-lg-12">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    
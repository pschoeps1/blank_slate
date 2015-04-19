{"filter":false,"title":"users_signup_test.rb","tooltip":"/test/integration/users_signup_test.rb","undoManager":{"mark":3,"position":3,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":7,"column":0},"action":"remove","lines":["require 'test_helper'","","class UsersSignupTest < ActionDispatch::IntegrationTest","  # test \"the truth\" do","  #   assert true","  # end","end",""]},{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"insert","lines":["require 'test_helper'","","class UsersSignupTest < ActionDispatch::IntegrationTest","","  test \"invalid signup information\" do","    get signup_path","    assert_no_difference 'User.count' do","      post users_path, user: { name:  \"\",","                               email: \"user@invalid\",","                               password:              \"foo\",","                               password_confirmation: \"bar\" }","    end","    assert_template 'users/new'","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":5},"end":{"row":14,"column":0},"action":"insert","lines":["",""]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":2},"end":{"row":15,"column":0},"action":"insert","lines":["",""]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":2},"end":{"row":24,"column":5},"action":"insert","lines":["test \"valid signup information\" do","    get signup_path","    assert_difference 'User.count', 1 do","      post_via_redirect users_path, user: { name:  \"Example User\",","                                            email: \"user@example.com\",","                                            password:              \"password\",","                                            password_confirmation: \"password\" }","    end","    assert_template 'users/show'","  end"]}]}]]},"ace":{"folds":[],"scrolltop":67,"scrollleft":0,"selection":{"start":{"row":24,"column":5},"end":{"row":24,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":3,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1429319152123,"hash":"52c80b2ae9d1197809c4f22eafcf8ecae2fcd416"}
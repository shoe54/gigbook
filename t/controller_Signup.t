use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GigBook';
use GigBook::Controller::Signup;

ok( request('/signup')->is_success, 'Request should succeed' );
done_testing();

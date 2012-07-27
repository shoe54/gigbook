use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GigBook';
use GigBook::Controller::Band;

ok( request('/band')->is_success, 'Request should succeed' );
done_testing();

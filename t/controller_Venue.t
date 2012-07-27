use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GigBook';
use GigBook::Controller::Venue;

ok( request('/venue')->is_success, 'Request should succeed' );
done_testing();

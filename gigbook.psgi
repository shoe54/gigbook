use strict;
use warnings;

use GigBook;

my $app = GigBook->apply_default_middlewares(GigBook->psgi_app);
$app;


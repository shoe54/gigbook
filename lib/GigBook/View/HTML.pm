package GigBook::View::HTML;
use Moose;
extends 'Catalyst::View::HTML::Mason';

use GigBook;

__PACKAGE__->config( use_match => 0 );
__PACKAGE__->config(
    template_extension => '.html',
    interp_args        => { comp_root => GigBook->path_to(qw/root src/) },
    globals            => [qw/$c/]
);

1;

package GigBook::Controller::Root;
use Moose;
use namespace::autoclean;


BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config( namespace => '' );

=head1 NAME

GigBook::Controller::Root - Root Controller for GigBook

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index : Path : Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    #$c->response->body( $c->welcome_message );
}

=head2 default

Standard 404 error page

=cut

sub default : Path {
    my ( $self, $c ) = @_;
    $c->response->body('Page not found');
    $c->response->status(404);
}

=head2 info

Summary of info

=cut

sub info : Path {
    my ( $self, $c ) = @_;
}

=head2 auto

Summary of auto

=cut

sub auto : Private {
    my ( $self, $c ) = @_;
    my $params = $c->req->params();
    my ( $corporate, $artist ) = @{$params}{qw/corporate artist/};
    my $get_string;
    if ( %{$params} ) {
        $get_string = '?';
        $get_string .= 'corporate=' . $corporate if $corporate;
        $get_string .= '&artist=' . $artist       if $artist;
    }
    $c->log->debug( "Got corporate parameter: " . $corporate ) if $corporate;

    $c->stash(
        c          => $c,
        artist     => $artist,
        corporate  => $corporate,
        get_string => $get_string
    );
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {
}

=head1 AUTHOR

William Travis Holton

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;

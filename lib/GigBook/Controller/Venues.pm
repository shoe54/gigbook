package GigBook::Controller::Venues;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

GigBook::Controller::Venue - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

=head2 index

=cut

sub index :Path('/gigfind')  : Args(0) {
    my ( $self, $c ) = @_;

#    $c->response->body('Matched GigBook::Controller::Venue in Venue.');
}


=head2 venues

Summarry of venues

=cut

#sub venues :Path('/venues') {
    #my ($self, $c) = @_;
    #my $params = $c->req->params();
    #my ( $corporate, $artist ) = @{$params}{qw/corporate artist/};
    #my $get_string;
    #if ( %{$params} ) {
        #$get_string = '?';
        #$get_string .= 'corporate=' . $corporate if $corporate;
        #$get_string .= '&artist=' . $artist       if $artist;
    #}
    #$c->res->redirect($c->uri_for('/venue').$get_string);
#}

=head2 auto

Summarry of auto

=cut

sub auto :Private {
    my ($self, $c) = @_;
    $c->stash(active => 'venue')
}

=head1 AUTHOR

William Travis Holton

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;

package GigBook::Controller::Bands;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

GigBook::Controller::Band - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path('/gigbook') :Args(0) {
    my ( $self, $c ) = @_;

#    $c->response->body('Matched GigBook::Controller::Band in Band.');
}

=head2 auto

Summary of auto

=cut

sub auto :Private {
    my ($self, $c) = @_;
    $c->stash(active => 'band');
}


=head2 bands

Summary of bands

=cut

#sub bands :Path('/bands') {
    #my ($self, $c) = @_;
    #my $params = $c->req->params();
    #my ( $corporate, $artist ) = @{$params}{qw/corporate artist/};
    #my $get_string;
    #if ( %{$params} ) {
        #$get_string = '?';
        #$get_string .= 'corporate=' . $corporate if $corporate;
        #$get_string .= '&artist=' . $artist       if $artist;
    #}
    #$c->res->redirect($c->uri_for('/band').$get_string);
#}


=head1 AUTHOR

William Travis Holton

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;

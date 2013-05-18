package Business::PaperlessTrans::Response::Role::Authorization;
use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '0.001000'; # VERSION

use Moose::Role;
use MooseX::RemoteHelper;
use MooseX::Types::Common::String qw( NonEmptySimpleStr );
use MooseX::Types::Moose          qw( Bool              );
use MooseX::Types -declare => [qw( IsApproved )];

subtype IsApproved, as Bool;
coerce  IsApproved, from NonEmptySimpleStr,
	via {
		my $val = lc $_;
		if ( $val eq 'true' ) {
			return 1;
		}
		elsif ( $val eq 'false' ) {
			return 0;
		}
		return 0;
	};

has is_approved => (
	remote_name => 'IsApproved',
	isa         => IsApproved,
	is          => 'ro',
	coerce      => 1,
);

has authorization => (
	remote_name => 'Authorization',
	isa         => NonEmptySimpleStr,
	is          => 'ro',
);

1;
# ABSTRACT: Authorized Card Response

__END__

=pod

=head1 NAME

Business::PaperlessTrans::Response::Role::Authorization - Authorized Card Response

=head1 VERSION

version 0.001000

=head1 AUTHOR

Caleb Cushing <xenoterracide@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Caleb Cushing.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut

package RT::Action::TransactionNote;

use strict;
use warnings;
use base qw(RT::Action);

sub Prepare {
    return 1;
}

sub Commit {
    my $self = shift;

    my $string = "Some string";
    my $arg = $self->Argument;

    my ($ret, $msg) = $self->TransactionObj->AddCustomFieldValue(
        Field => $arg,
        Value => $string
    );

    RT::Logger->error("Unable to set transaction cf Notes: $msg") unless $ret;

    return 1;
}

1;

package RT::Ticket;

use strict;
use warnings;


{
# Turn off redefined subroutine warnings for this block
no warnings qw(redefine);

sub Subject {
    my $self = shift;

    my $subject = $self->_Value( 'Subject' );

    # Isolate the changes to the core code with a single method call
    $subject = $self->MadridCustomSubject($subject);

    return $subject if defined $subject;

    if ( RT->Config->Get( 'DatabaseType' ) eq 'Oracle' && $self->CurrentUserHasRight( 'ShowTicket' ) ) {

        # Oracle treats empty strings as NULL, so it returns undef for empty subjects.
        # Since '' is the default Subject value, returning '' is more correct.
        return '';
    }
    else {
        return undef;
    }
}
}

sub MadridCustomSubject{
    my $self = shift;
    my $subject = shift;

    return $subject . "I'm in yur computer";
}

1;

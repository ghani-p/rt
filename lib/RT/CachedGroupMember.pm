

# $Header$

# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#


=head1 NAME

RT::CachedGroupMember


=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

package RT::CachedGroupMember;
use RT::Record; 


use vars qw( @ISA );
@ISA= qw( RT::Record );

sub _Init {
  my $self = shift; 

  $self->Table('CachedGroupMembers');
  $self->SUPER::_Init(@_);
}





=item Create PARAMHASH

Create takes a hash of values and creates a row in the database:

  int(11) 'GroupId'.
  int(11) 'MemberId'.
  int(11) 'Via'.

=cut




sub Create {
    my $self = shift;
    my %args = ( 
                GroupId => '',
                MemberId => '',
                Via => '',

		  @_);
    $self->SUPER::Create(
                         GroupId => $args{'GroupId'},
                         MemberId => $args{'MemberId'},
                         Via => $args{'Via'},
);

}



=item id

Returns the current value of id. 
(In the database, id is stored as int(11).)


=cut


=item GroupId

Returns the current value of GroupId. 
(In the database, GroupId is stored as int(11).)



=item SetGroupId VALUE


Set GroupId to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, GroupId will be stored as a int(11).)


=cut


=item MemberId

Returns the current value of MemberId. 
(In the database, MemberId is stored as int(11).)



=item SetMemberId VALUE


Set MemberId to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, MemberId will be stored as a int(11).)


=cut


=item Via

Returns the current value of Via. 
(In the database, Via is stored as int(11).)



=item SetVia VALUE


Set Via to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Via will be stored as a int(11).)


=cut



sub _ClassAccessible {
    {
     
        id =>
		{read => 1, type => 'int(11)', default => ''},
        GroupId => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        MemberId => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Via => 
		{read => 1, write => 1, type => 'int(11)', default => ''},

 }
};


        eval "require RT::CachedGroupMember_Overlay";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };

        eval "require RT::CachedGroupMember_Local";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

If you'll be working with perl 5.6.0 or greater, each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::CachedGroupMember_Overlay, RT::CachedGroupMember_Local

=cut


1;

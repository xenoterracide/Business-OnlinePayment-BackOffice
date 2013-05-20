
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006000
eval "use Test::Spelling 0.12; use Pod::Wordlist::hanekomu; 1" or die $@;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
Caleb
Cushing
xenoterracide
lib
Business
PaperlessTrans
Role
Identification
RequestPart
Phone
AuthenticationToken
Request
TestConnection
Response
AuthorizeCard
Profile
ProcessACH
State
EmailAddress
Authorization
MessagePart
Check
Address
OnlinePayment
CustomFields
Client
IsApproved
ProcessCard
NameOnAccount
Card
Money
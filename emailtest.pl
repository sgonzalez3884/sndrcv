#!/usr/bin/perl -w

use strict;
use warnings;
use Mail::Sendmail;
use Email::Valid;

my(%mail);

%mail = (
	To => 'sgonzalez@codejunkie.net,sgonzalez@maloneytpa.com',
	From => 'automation-sndrcv',
	Subject => 'Test Mail::Sendmail 2 Addresses',
	Message => "Message would be here...\nLine2\r\nLine3\n"
);


#sendmail(%mail) or die $Mail::Sendmail::Error;
#

my($str) = 'Hello';
$str .= ' world';

print $str . "\n";


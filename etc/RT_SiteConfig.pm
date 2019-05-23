use utf8;

# Any configuration directives you include  here will override
# RT's default configuration file, RT_Config.pm
#
# To include a directive here, just copy the equivalent statement
# from RT_Config.pm and change the value. We've included a single
# sample value below.
#
# If this file includes non-ASCII characters, it must be encoded in
# UTF-8.
#
# This file is actually a perl module, so you can include valid
# perl code, as well.
#
# The converse is also true, if this file isn't valid perl, you're
# going to run into trouble. To check your SiteConfig file, use
# this command:
#
#   perl -c /path/to/your/etc/RT_SiteConfig.pm
#
# You must restart your webserver after making changes to this file.

#Set( $rtname, '127.0.0.1');
Set($rtname, 'localhost');
Set($WebPort, 8080);
Set(@ReferrerWhitelist, '127.0.0.1', '192.168.1.2',);
Set($RestrictReferrer, 0);

Set($LogToSTDERR, 'debug');
Set($DevelMode, 1);

# You must install Plugins on your own, this is only an example
# of the correct syntax to use when activating them:
#     Plugin( "RT::Extension::SLA" );
#     Plugin( "RT::Authen::ExternalAuth" );

#Plugin( 'RT::Extension::MandatoryOnTransition');
#Set( %MandatoryOnTransition,
#    newstuff => {
#        'new -> resolved'      => ['CF.color', 'size'],
#        'open -> resolved'      => ['CF.color', 'size'],
#    },
#);



Set( %Crypt,
    Incoming => 'GnuPG',
    Outgoing => 'GnuPG',

    RejectOnMissingPrivateKey => 1,
    RejectOnBadData => 1,

    AllowEncryptDataInDB => 0,

    Dashboards => {
        Encrypt => 0,
        Sign => 0,
    },
);

Set( %GnuPG,
    Enable => 1,
    GnuPG => '/usr/bin/gpg1', # debian
    # GnuPG => '/usr/local/bin/gpg1', # macOS
    Passphrase => 'Ormafura25!',
    OutgoingMessagesFormat => "RFC", # Inline
);

Set( %GnuPGOptions,
    homedir => q{/home/mrodrigu/.gnupg/pubring.gpg},
);

Set($MailCommand, "testfile");


1;

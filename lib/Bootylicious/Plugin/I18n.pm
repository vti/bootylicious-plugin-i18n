package Bootylicious::Plugin::I18n;

use strict;
use warnings;

use base 'Mojolicious::Plugin';

use MojoX::Locale::Maketext;
use POSIX qw(locale_h);

our $VERSION = '0.990201';

sub register {
    my ($self, $app, $args) = @_;

    $args ||= {};

    $args->{languages} ||= 'en';
    $args->{helper}    ||= 'loc';

    my $i18n = MojoX::Locale::Maketext->new;

    $i18n->setup(namespace => 'Bootylicious::Plugin', subclass => 'I18N');

    my $languages = $args->{languages};
    $languages = [$languages] unless ref($languages) eq 'ARRAY';

    $i18n->languages($languages);

    setlocale(LC_ALL, $languages->[0]);

    my $strings = main::config('strings');

    foreach my $key (keys %$strings) {
        $strings->{$key} = $i18n->loc($strings->{$key});
    }

    main::config(strings => $strings);

    $app->renderer->add_helper(
        $args->{helper} => sub {
            my $c = shift;

            return $i18n->localize(@_);
        }
    );
}

1;
__END__

=head1 NAME

Bootylicious::Plugin::I18n - i18n plugin for bootylicious

=head1 SYNOPSIS

    # In your bootylicious.conf

    "plugins" : [
        "i18n", {"languages" : "ru_RU.UTF-8", "helper" : "loc"}
    ]

=head1 DESCRIPTION

Translates strings, localizes time and adds template helper for translating
your own strings.

=head1 ATTRIBUTES

=head2 C<languages>

    Set languages.

=head2 C<helper>

    Set helper name to use in templates for localization.

=head1 METHODS

=head2 C<hook_init>

    Plugin is run just after L<bootylicious> routes initialization.

=head1 SEE ALSO

    L<bootylicious>, L<Mojo>, L<Mojolicious>, L<MojoX::Locale::Maketext>

=head1 AUTHOR

Viacheslav Tykhanovskyi, C<vti@cpan.org>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009, Viacheslav Tykhanovskyi.

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=cut

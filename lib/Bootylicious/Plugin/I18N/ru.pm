package Bootylicious::Plugin::I18N::ru;

use strict;
use warnings;
use utf8;

use base 'Bootylicious::Plugin::I18N';

our %Lexicon = (
    _AUTO => 1,

    'Archive' => 'Архив',
    'Tags'    => 'Теги',
    'Tag'     => 'Тег',
    'Internal error occuried :(' =>
      'Возникла внутренняя ошибка :(',
    'The page you are looking for was not found' =>
      'Страница, которую вы ищете, не была найдена'
);

1;
__END__

=head1 NAME

Bootylicious::Plugin::I18N::ru - Russian

=head1 SYNOPSIS

    # Used internally

=head1 DESCRIPTION

Russian lexicon for L<Bootylicious::Plugin::I18n>.

=head1 SEE ALSO

    L<bootylicious>, L<Mojo>, L<Mojolicious>, L<MojoX::Locale::Maketext>

=head1 AUTHOR

Viacheslav Tykhanovskyi, C<vti@cpan.org>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009, Viacheslav Tykhanovskyi.

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=cut

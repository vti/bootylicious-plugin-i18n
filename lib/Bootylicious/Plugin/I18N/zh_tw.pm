package Bootylicious::Plugin::I18N::zh_tw;

use strict;
use warnings;
use utf8;

use base 'Bootylicious::Plugin::I18N';

our %Lexicon = (
    _AUTO => 1,

    'Archive' => '文件檔案庫',
    'Tags'    => '標籤',
    'Tag'     => '標籤',
    'Later'   => '晚些',
    'Earlier' => '早些',
    'Internal error occuried :(' =>
      '發生內部錯誤 :(',
    'The page you are looking for was not found' =>
      '您所尋找的頁面不存在'
);

1;
__END__

=encoding utf8

=head1 NAME

Bootylicious::Plugin::I18N::zh_tw - Chinese (Traditional)

=head1 SYNOPSIS

    # Used internally

=head1 DESCRIPTION

Chinese (Traditional) lexicon for L<Bootylicious::Plugin::I18n>.

=head1 SEE ALSO

    L<bootylicious>, L<Mojo>, L<Mojolicious>, L<MojoX::Locale::Maketext>

=head1 AUTHOR

BlueT - Matthew Lien - 練喆明, C<BlueT@BlueT.org>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010, BlueT - Matthew Lien - 練喆明.

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=cut

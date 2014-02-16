# NAME

Hash::Util::FieldHash::Compat - Use [Hash::Util::FieldHash](https://metacpan.org/pod/Hash::Util::FieldHash) or ties, depending
on availability.

# SYNOPSIS

    use Hash::Util::FieldHash::Compat;

    # pretend you are using L<Hash::Util::FieldHash>
    # under older perls it'll be Tie::RefHash::Weak instead (slower, but same behavior)

# DESCRIPTION

Under older perls this module provides a drop-in compatible API to
[Hash::Util::FieldHash](https://metacpan.org/pod/Hash::Util::FieldHash) using [perltie](https://metacpan.org/pod/perltie). When [Hash::Util::FieldHash](https://metacpan.org/pod/Hash::Util::FieldHash) is
available it will use that instead.

This way code requiring field hashes can benefit from fast, robust field hashes
on Perl 5.10 and newer, but still run on older perls that don't ship with that
module.

See [Hash::Util::FieldHash](https://metacpan.org/pod/Hash::Util::FieldHash) for all the details of the API.

# SEE ALSO

[Hash::Util::FieldHash](https://metacpan.org/pod/Hash::Util::FieldHash), [Tie::RefHash](https://metacpan.org/pod/Tie::RefHash), [Tie::RefHash::Weak](https://metacpan.org/pod/Tie::RefHash::Weak).

# VERSION CONTROL

This module is maintained using Darcs. You can get the latest version from
[http://nothingmuch.woobling.org/code](http://nothingmuch.woobling.org/code), and use `darcs send` to commit
changes.

# AUTHOR

Yuval Kogman <nothingmuch@woobling.org>

# COPYRIGHT

    Copyright (c) 2008 Yuval Kogman. All rights reserved
    This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

package inc::MakeMaker;
use Moose;
extends 'Dist::Zilla::Plugin::MakeMaker::Awesome';

around _build_WriteMakefile_dump => sub {
    my $orig = shift;
    my $self = shift;

    return $self->$orig(@_) . <<'MORE_PREREQS';

if (not eval { require Hash::Util::FieldHash; 1 }) {
    $WriteMakefileArgs{PREREQ_PM}{'Tie::RefHash::Weak'} = '0.08';
    $WriteMakefileArgs{PREREQ_PM}{'Tie::RefHash'} = '1.38';
    $WriteMakefileArgs{PREREQ_PM}{'Scalar::Util'} = '0';
}

MORE_PREREQS
};
1;

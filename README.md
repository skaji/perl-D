# D module

```perl
use D; # export 'd' function and '$_JSON' variable by default

my $data = [1..10];

d $data;
print $_JSON->encode($data);
```

# Install

```
cpm install -g https://github.com/skaji/perl-D.git
```


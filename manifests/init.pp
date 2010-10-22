class oidentd {
  include oidentd::base

  if $use_shorewall {
    include shorewall::rules::identd
  }
}

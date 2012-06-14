class oidentd(
  $manage_shorewall = false
) {
  include oidentd::base

  if $manage_shorewall {
    include shorewall::rules::identd
  }
}

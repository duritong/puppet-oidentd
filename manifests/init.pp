class oidentd {
  include oidentd::base

  if hiera('use_shorewall',false) {
    include shorewall::rules::identd
  }
}

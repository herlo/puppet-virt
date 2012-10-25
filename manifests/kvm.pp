define virt::kvm($hostname, $desc, $memory = 1024, $graphics = "enable", $virt_disk, $interfaces, $ensure = running, $xml_file) {

  virt { "$name":
    hostname    => $hostname,
    desc        => "$desc",
    virt_type   => "kvm",
    provider    => "libvirt",
    memory      => $memory,
    graphics    => $graphics,
    ensure      => $ensure,
    virt_disk   => $virt_disk,
    interfaces  => $interfaces,
    xml_file    => $xml_file,
    clocksync   => "UTC",
    autoboot    => true,
    on_poweroff => "destroy",
    on_reboot   => "restart",
    on_crash    => "restart",
  }

}

define virt::kvm($hostname, $desc, $memory = 1024, $graphics = "enable", $virt_disk, $interfaces, $ensure = running, ) {

  virt { "$name":
    hostname      => $hostname,
    desc          => "$desc",
    memory        => $memory,
    graphics      => $graphics,
    clocksync     => "UTC",
    virt_disk     => $virt_disk
    virt_type     => "kvm",
    provider      => "libvirt",
    interfaces    => $interfaces
    autoboot      => true,
    ensure        => $ensure,
    on_poweroff   => "destroy",
    on_reboot     => "restart",
    on_crash      => "restart",
  }

}

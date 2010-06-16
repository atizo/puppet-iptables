class iptables::disable inherits iptables::base {
    Service['iptables'] {
        ensure => stopped,
        enable => false,
        hasstatus => true,
    }
    Service['ip6tables'] {
        ensure => stopped,
        enable => false,
        hasstatus => true,
    }
}

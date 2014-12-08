#!/bin/ksh
#
# convert an IPS package name to an SVR4 name
#
# NB. SUNW old-fashioned names don't get converted
#
PKGPREFIX=TRIB
for pkg in $*
do
case $pkg in
SUNW*)
    echo $pkg
    ;;
*)
echo $pkg | /usr/bin/sed -e 's:%2F:_:g' -e 's:%2B:+:g' -e 's:/:_:g' -e s:_network:_net: -e 's:^system_:sys_:' -e s:_management:_mgmt: -e 's:^service_:svc_:' -e 's:^source_:src_:' -e 's:^developer_:dev_:' -e s:_serial_:_ser_: -e 's:^network_:net_:' -e s:fibre-channel:fc: -e 's:^driver_:drv_:' -e s:auto-install:ai:g -e s:fault-management:fma: -e s:_library_:_lib_: -e 's:^library_:lib_:' -e s:dynamic-reconfiguration:dr: -e s:management:mgmt: -e s:_install_install:_install: -e s:_header_header:_header: -e s:_osnet_osnet:_osnet: -e s:_ips_ips:_ips: -e s:_sea_sea:_sea: -e s:_open-printing_:_: -e s:_module_module:_module: -e 's:^print_lp:lp:' -e 's:^runtime_::' -e 's:-redistributable:-redist:' -e s:ipfilter_header-ipfilter:ipfilter_header: -e s:_ima_header-ima:_ima_header: -e s:_libdiskmgt_header-libdiskmgt:_libdiskmgt_header: -e s:_dcam1394_devfsadm-dcam1394:_dcam1394_devfsadm: -e s:_diffie-hellman:_dh: -e s:_trusted-nonglobal:_nonglobal: -e 's:^consolidation:cnsldtn:' -e s:_extended-system-utilities:_esu: -e s:-incorporation:-incrprtn: -e s:distribution-constructor:distro-const: -e s:_postscript:_ps: -e s:lib_install_lib:lib_install_: -e s:lib_storage_lib:lib_storage_: -e s:libsun_fc:libsun: -e s:point-in-time:p-i-t: -e s:cache-accelerator:nca: -e s:_datastore_binfiles:_binfiles: -e s:dtrace_providers:dtrace: -e 's:devfsadm$:devfs:' -e s:volume-manager:volmgr: -e 's:scsi-plugin$:scsi-plug:' -e 's:x11_server_xorg_driver_xorg:xorg-driver:' -e 's:scsi-plugins$:scsi-plugin:' -e 's:administration:admin:' -e 's:python-2_python:python2:' -e 's:^:TRIB:' -e s:osnet_osnet:osnet: -e s:sic_team_sic_team:sic_team: -e s:compatibility:compat: -e s:admin_admin:admin: -e s:gnome_gnome:gnome: -e s:documentation:docs: -e s:nvidia_nvidia:nvidia: -e s:ub_javavm_ub_javavm:ub_javavm: -e s:solaris_re_solaris_re:solaris_re: -e s:sunpro_sunpro:sunpro: -e s:desktop_remote-desktop:remote-desktop: -e s:x11_diagnostic_x11:x11: -e s:mail_thunderbird:thunderbird: -e s:cacao_cacao:cacao: -e s:web_browser_:: -e s:_:-:g -es:lib-lib:lib: -e s:sys-input-method:input-method: -e s:sys-mgmt-visual:visual: -e s:gnome-applet-gnome:gnome: -e s:clutter-clutter:clutter: -e s:gnome-speech-driver-gnome-speech-:: -e s:compiz-plugin-compiz-:compiz-plugin-: -e s:ghostscript-fonts-gnu-gs-:gnu-gs-: -e s:vpanels-vpanels:vpamels: -e s:preferences:prefs: -e s:siliconmotion:simotion: -e s:sys-font:font: -e s:xorg-xorg:xorg: -e s:thunderbird-plugin-thunderbird-:thunderbird-plugin-: -e s:gnome-l10n-gnome-l10n-:gnome-l10n-: -e s:background-os-:os-: -e s:gnome-accessibility-gnome-a11y-:gnome-a11y-: -e s:system-monitor-gnome-system-monitor:gnome-system-monitor: -e s:SunVTS-SunVTS:SunVTS: -e s:gnu-emacs-gnu-emacs-:gnu-emacs-: -e s:xdg-xdg:xdg: -e s:window-manager:wm: -e s:desktop-compiz:compiz: -e s:gnome-media-gnome-media:gnome-media: -e s:desktop-archive-manager-:desktop-: -e s:theme-sound-:: -e s:theme-gnome-icon:icon: -e s:theme-tango-icon:tango-icon: -e s:theme-hicolor-icon:hicolor-icon: -e s:desktop-admin:desktop: -e s:print-filter-:: -e s:desktop-calculator-:desktop-: -e s:desktop-character-map-:desktop-: -e s:desktop-xdg-menu-editor-:: -e s:communication:comms: -e s:nss-header-nss:nss-header: -e s:lib-musicbrainz-libmusicbrainz:lib-musicbrainz: -e s:desktop-cd-ripping-:desktop-: -e s:print-cups:cups: -e s:input-method-iiim:iiim: -e s:xsane-sane:sane: -e s:sys-display-manager-:: -e s:desktop-evolution:evolution: -e s:gtk2-gtk-:gtk2-: -e s:truetype:ttype: -e s:compiz-lib-compiz:compiz: -e s:media-player-totem:totem: -e s:zope-interface-26:zope: -e s:lib-desktop-gtk2-backend-cups:gtk2-backend-cups: -e s:ultra-enterprise-10000:e10k: -e s:io-performance-counters:io-counters: -e s:sparc-enterprise:enterprise: -e s:domain-service-processor-protocol:domain-sp: -e s:domain-configuration:domain-conf: -e s:embedded-fcode:efcode:
    ;;
esac
done

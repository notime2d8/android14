cmd_arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb := clang -E -Wp,-MMD,arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.dts.tmp arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dts ; ./scripts/dtc/dtc -o arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb -b 0 -iarch/arm64/boot/dts/rockchip/ -i./scripts/dtc/include-prefixes -Wno-interrupt_provider -@ -Wno-unit_address_vs_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address   -d arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.d.dtc.tmp arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.dts.tmp ; cat arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.d.pre.tmp arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.d.dtc.tmp > arch/arm64/boot/dts/rockchip/.rk3588s-9tripod-linux.dtb.d

source_arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb := arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dts

deps_arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb := \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/pwm/pwm.h \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/rockchip.h \
  scripts/dtc/include-prefixes/dt-bindings/input/rk-input.h \
  scripts/dtc/include-prefixes/dt-bindings/display/drm_mipi_dsi.h \
  scripts/dtc/include-prefixes/dt-bindings/display/rockchip_vop.h \
  scripts/dtc/include-prefixes/dt-bindings/sensor-dev.h \
  scripts/dtc/include-prefixes/dt-bindings/usb/pd.h \
  arch/arm64/boot/dts/rockchip/rk3588s.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/rk3588-cru.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/phy/phy.h \
  scripts/dtc/include-prefixes/dt-bindings/power/rk3588-power.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip,boot-mode.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip-system-status.h \
  scripts/dtc/include-prefixes/dt-bindings/suspend/rockchip-rk3588.h \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi \
  arch/arm64/boot/dts/rockchip/rk3588s-pinconf.dtsi \
  arch/arm64/boot/dts/rockchip/rk3588-rk806-single.dtsi \
  arch/arm64/boot/dts/rockchip/rk3588-linux.dtsi \

arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb: $(deps_arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb)

$(deps_arch/arm64/boot/dts/rockchip/rk3588s-9tripod-linux.dtb):

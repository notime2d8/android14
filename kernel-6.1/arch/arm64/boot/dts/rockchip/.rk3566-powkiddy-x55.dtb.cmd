cmd_arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb := clang -E -Wp,-MMD,arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.dts.tmp arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts ; ./scripts/dtc/dtc -o arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb -b 0 -iarch/arm64/boot/dts/rockchip/ -i./scripts/dtc/include-prefixes -Wno-interrupt_provider -@ -Wno-unit_address_vs_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address   -d arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.d.dtc.tmp arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.dts.tmp ; cat arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.d.pre.tmp arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.d.dtc.tmp > arch/arm64/boot/dts/rockchip/.rk3566-powkiddy-x55.dtb.d

source_arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb := arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts

deps_arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb := \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/rockchip.h \
  scripts/dtc/include-prefixes/dt-bindings/input/rk-input.h \
  scripts/dtc/include-prefixes/dt-bindings/leds/common.h \
  scripts/dtc/include-prefixes/dt-bindings/sensor-dev.h \
  scripts/dtc/include-prefixes/dt-bindings/display/drm_mipi_dsi.h \
  scripts/dtc/include-prefixes/dt-bindings/display/rockchip_vop.h \
  arch/arm64/boot/dts/rockchip/rk3566.dtsi \
  arch/arm64/boot/dts/rockchip/rk356x.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/rk3568-cru.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/phy/phy.h \
  scripts/dtc/include-prefixes/dt-bindings/power/rk3568-power.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip,boot-mode.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip-system-status.h \
  scripts/dtc/include-prefixes/dt-bindings/suspend/rockchip-rk3568.h \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/rockchip/rk3568-dram-default-timing.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/rockchip-ddr.h \
  scripts/dtc/include-prefixes/dt-bindings/memory/rk3568-dram.h \
  scripts/dtc/include-prefixes/dt-bindings/memory/rockchip-dram.h \
  arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi \
  arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi \

arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb: $(deps_arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb)

$(deps_arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb):

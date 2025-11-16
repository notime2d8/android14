cmd_arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb := gcc -E -Wp,-MMD,arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.dts.tmp arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dts ; ./scripts/dtc/dtc -o arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb -b 0 -iarch/arm64/boot/dts/rockchip/ -i./scripts/dtc/include-prefixes -Wno-interrupt_provider -@ -Wno-unit_address_vs_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address   -d arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.d.dtc.tmp arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.dts.tmp ; cat arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.d.pre.tmp arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.d.dtc.tmp > arch/arm64/boot/dts/rockchip/.px30-evb-ddr3-v10-linux.dtb.d

source_arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb := arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dts

deps_arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb := \
  arch/arm64/boot/dts/rockchip/px30.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/px30-cru.h \
  scripts/dtc/include-prefixes/dt-bindings/display/media-bus-format.h \
  scripts/dtc/include-prefixes/dt-bindings/display/../../uapi/linux/media-bus-format.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/rockchip.h \
  scripts/dtc/include-prefixes/dt-bindings/power/px30-power.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip,boot-mode.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/rockchip-system-status.h \
  scripts/dtc/include-prefixes/dt-bindings/suspend/rockchip-px30.h \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/rockchip/px30-dram-default-timing.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/rockchip-ddr.h \
  scripts/dtc/include-prefixes/dt-bindings/memory/px30-dram.h \
  arch/arm64/boot/dts/rockchip/px30s-dram-default-timing.dtsi \
  arch/arm64/boot/dts/rockchip/px30s-pinctrl.dtsi \
  arch/arm64/boot/dts/rockchip/rk3326-linux.dtsi \
  arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  scripts/dtc/include-prefixes/dt-bindings/display/drm_mipi_dsi.h \
  scripts/dtc/include-prefixes/dt-bindings/sensor-dev.h \

arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb: $(deps_arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb)

$(deps_arch/arm64/boot/dts/rockchip/px30-evb-ddr3-v10-linux.dtb):

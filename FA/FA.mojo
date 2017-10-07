<?xml version="1.0" encoding="UTF-8"?>
<project name="FA" board="Mojo V3" language="Lucid">
  <files>
    <src>fa_fsm.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>rom.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <ucf>custom.ucf</ucf>
    <component>reset_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>

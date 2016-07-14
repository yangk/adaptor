/* This linker script generated from xt-genldscripts.tpp for LSP F:\ssc6364\secupdate\date0414\sec63\lsp\es_bin_ram_image-2m-233L */
/* Linker Script for default link */
MEMORY
{
  sram30_seg :                        	org = 0x00180000, len = 0x100
  ResetEpilog.text_seg :              	org = 0x00180100, len = 0x300
  sram32_seg :                        	org = 0x00180400, len = 0x100
  secstart.text_seg :                 	org = 0x00180500, len = 0x2300
  sram34_seg :                        	org = 0x00182800, len = 0x7D800
  sysinfo_seg :                       	org = 0x10000000, len = 0x100
  iram0_0_seg :                       	org = 0x10000150, len = 0x1FAB0
  WindowVectors.text_seg :            	org = 0x1001FC00, len = 0x178
  iram1_seg :                         	org = 0x1001FD78, len = 0x8
  Level2InterruptVector.text_seg :    	org = 0x1001FD80, len = 0x38
  iram3_seg :                         	org = 0x1001FDB8, len = 0x8
  Level3InterruptVector.text_seg :    	org = 0x1001FDC0, len = 0x38
  iram5_seg :                         	org = 0x1001FDF8, len = 0x8
  Level4InterruptVector.text_seg :    	org = 0x1001FE00, len = 0x38
  iram7_seg :                         	org = 0x1001FE38, len = 0x8
  Level5InterruptVector.text_seg :    	org = 0x1001FE40, len = 0x38
  iram9_seg :                         	org = 0x1001FE78, len = 0x8
  DebugExceptionVector.text_seg :     	org = 0x1001FE80, len = 0x38
  iram11_seg :                        	org = 0x1001FEB8, len = 0x8
  NMIExceptionVector.text_seg :       	org = 0x1001FEC0, len = 0x38
  iram13_seg :                        	org = 0x1001FEF8, len = 0x8
  KernelExceptionVector.text_seg :    	org = 0x1001FF00, len = 0x38
  iram15_seg :                        	org = 0x1001FF38, len = 0x8
  UserExceptionVector.text_seg :      	org = 0x1001FF40, len = 0x38
  iram17_seg :                        	org = 0x1001FF78, len = 0x48
  DoubleExceptionVector.text_seg :    	org = 0x1001FFC0, len = 0x40
  ResetVector.text_seg :              	org = 0xFE000000, len = 0x300
  srom0_seg :                         	org = 0xFE000300, len = 0x1FFD00
}

PHDRS
{
  sram30_phdr PT_LOAD;
  ResetEpilog.text_phdr PT_LOAD;
  sram32_phdr PT_LOAD;
  secstart.text_phdr PT_LOAD;
  sram34_phdr PT_LOAD;
  sram34_bss_phdr PT_LOAD;
  sysinfo_phdr PT_LOAD;
  iram0_0_phdr PT_LOAD;
  iram0_0_bss_phdr PT_LOAD;
  WindowVectors.text_phdr PT_LOAD;
  iram1_phdr PT_LOAD;
  Level2InterruptVector.text_phdr PT_LOAD;
  iram3_phdr PT_LOAD;
  Level3InterruptVector.text_phdr PT_LOAD;
  iram5_phdr PT_LOAD;
  Level4InterruptVector.text_phdr PT_LOAD;
  iram7_phdr PT_LOAD;
  Level5InterruptVector.text_phdr PT_LOAD;
  iram9_phdr PT_LOAD;
  DebugExceptionVector.text_phdr PT_LOAD;
  iram11_phdr PT_LOAD;
  NMIExceptionVector.text_phdr PT_LOAD;
  iram13_phdr PT_LOAD;
  KernelExceptionVector.text_phdr PT_LOAD;
  iram15_phdr PT_LOAD;
  UserExceptionVector.text_phdr PT_LOAD;
  iram17_phdr PT_LOAD;
  DoubleExceptionVector.text_phdr PT_LOAD;
  ResetVector.text_phdr PT_LOAD;
  srom0_phdr PT_LOAD;
}


/*  Default entry point:  */
ENTRY(_start)
PROVIDE(_memmap_vecbase_reset = 0x1001fc00);
/* Various memory-map dependent cache attribute settings: */
_memmap_cacheattr_wb_base = 0x30000077;
_memmap_cacheattr_wt_base = 0x300000BB;
_memmap_cacheattr_bp_base = 0x30000033;
_memmap_cacheattr_unused_mask = 0x0FFFFF00;
_memmap_cacheattr_wb_trapnull = 0x33333377;
_memmap_cacheattr_wba_trapnull = 0x33333377;
_memmap_cacheattr_wbna_trapnull = 0x33333377;
_memmap_cacheattr_wt_trapnull = 0x333333BB;
_memmap_cacheattr_bp_trapnull = 0x33333333;
_memmap_cacheattr_wb_strict = 0x3CCCCC77;
_memmap_cacheattr_wt_strict = 0x3CCCCCBB;
_memmap_cacheattr_bp_strict = 0x3CCCCC33;
_memmap_cacheattr_wb_allvalid = 0x33333377;
_memmap_cacheattr_wt_allvalid = 0x333333BB;
_memmap_cacheattr_bp_allvalid = 0x33333333;
PROVIDE(_memmap_cacheattr_reset = _memmap_cacheattr_wb_trapnull);

SECTIONS
{

  .srom.rodata : ALIGN(4)
  {
    _srom_rodata_start = ABSOLUTE(.);
    *(.srom.rodata)
    _srom_rodata_end = ABSOLUTE(.);
  } >srom0_seg :srom0_phdr

  .srom.text : ALIGN(4)
  {
    _srom_text_start = ABSOLUTE(.);
    *(.srom.literal .srom.text)
    . = ALIGN(4);
    _rom_store_table = .;
    LONG(_ResetEpilog_literal_start);
    LONG(_ResetEpilog_literal_end);
    LONG(LOADADDR(.ResetEpilog.literal));
    LONG(_ResetEpilog_text_start);
    LONG(_ResetEpilog_text_end);
    LONG(LOADADDR(.ResetEpilog.text));
    LONG(_secstart_literal_start);
    LONG(_secstart_literal_end);
    LONG(LOADADDR(.secstart.literal));
    LONG(_secstart_text_start);
    LONG(_secstart_text_end);
    LONG(LOADADDR(.secstart.text));
    LONG(_sram_rodata_start);
    LONG(_sram_rodata_end);
    LONG(LOADADDR(.sram.rodata));
    LONG(_rodata_start);
    LONG(_rodata_end);
    LONG(LOADADDR(.rodata));
    LONG(_lit4_start);
    LONG(_lit4_end);
    LONG(LOADADDR(.lit4));
    LONG(_ResetVector_literal_start);
    LONG(_ResetVector_literal_end);
    LONG(LOADADDR(.ResetVector.literal));
    LONG(_sram_text_start);
    LONG(_sram_text_end);
    LONG(LOADADDR(.sram.text));
    LONG(_text_start);
    LONG(_text_end);
    LONG(LOADADDR(.text));
    LONG(_sram_data_start);
    LONG(_sram_data_end);
    LONG(LOADADDR(.sram.data));
    LONG(_data_start);
    LONG(_data_end);
    LONG(LOADADDR(.data));
    LONG(_sysinfo_literal_start);
    LONG(_sysinfo_literal_end);
    LONG(LOADADDR(.sysinfo.literal));
    LONG(_dram0_literal_start);
    LONG(_dram0_literal_end);
    LONG(LOADADDR(.dram0.literal));
    LONG(_dram0_data_start);
    LONG(_dram0_data_end);
    LONG(LOADADDR(.dram0.data));
    LONG(_dram0_rodata_start);
    LONG(_dram0_rodata_end);
    LONG(LOADADDR(.dram0.rodata));
    LONG(_iram0_text_start);
    LONG(_iram0_text_end);
    LONG(LOADADDR(.iram0.text));
    LONG(_WindowVectors_text_start);
    LONG(_WindowVectors_text_end);
    LONG(LOADADDR(.WindowVectors.text));
    LONG(_Level2InterruptVector_literal_start);
    LONG(_Level2InterruptVector_literal_end);
    LONG(LOADADDR(.Level2InterruptVector.literal));
    LONG(_Level2InterruptVector_text_start);
    LONG(_Level2InterruptVector_text_end);
    LONG(LOADADDR(.Level2InterruptVector.text));
    LONG(_Level3InterruptVector_literal_start);
    LONG(_Level3InterruptVector_literal_end);
    LONG(LOADADDR(.Level3InterruptVector.literal));
    LONG(_Level3InterruptVector_text_start);
    LONG(_Level3InterruptVector_text_end);
    LONG(LOADADDR(.Level3InterruptVector.text));
    LONG(_Level4InterruptVector_literal_start);
    LONG(_Level4InterruptVector_literal_end);
    LONG(LOADADDR(.Level4InterruptVector.literal));
    LONG(_Level4InterruptVector_text_start);
    LONG(_Level4InterruptVector_text_end);
    LONG(LOADADDR(.Level4InterruptVector.text));
    LONG(_Level5InterruptVector_literal_start);
    LONG(_Level5InterruptVector_literal_end);
    LONG(LOADADDR(.Level5InterruptVector.literal));
    LONG(_Level5InterruptVector_text_start);
    LONG(_Level5InterruptVector_text_end);
    LONG(LOADADDR(.Level5InterruptVector.text));
    LONG(_DebugExceptionVector_literal_start);
    LONG(_DebugExceptionVector_literal_end);
    LONG(LOADADDR(.DebugExceptionVector.literal));
    LONG(_DebugExceptionVector_text_start);
    LONG(_DebugExceptionVector_text_end);
    LONG(LOADADDR(.DebugExceptionVector.text));
    LONG(_NMIExceptionVector_literal_start);
    LONG(_NMIExceptionVector_literal_end);
    LONG(LOADADDR(.NMIExceptionVector.literal));
    LONG(_NMIExceptionVector_text_start);
    LONG(_NMIExceptionVector_text_end);
    LONG(LOADADDR(.NMIExceptionVector.text));
    LONG(_KernelExceptionVector_literal_start);
    LONG(_KernelExceptionVector_literal_end);
    LONG(LOADADDR(.KernelExceptionVector.literal));
    LONG(_KernelExceptionVector_text_start);
    LONG(_KernelExceptionVector_text_end);
    LONG(LOADADDR(.KernelExceptionVector.text));
    LONG(_UserExceptionVector_literal_start);
    LONG(_UserExceptionVector_literal_end);
    LONG(LOADADDR(.UserExceptionVector.literal));
    LONG(_UserExceptionVector_text_start);
    LONG(_UserExceptionVector_text_end);
    LONG(LOADADDR(.UserExceptionVector.text));
    LONG(_DoubleExceptionVector_literal_start);
    LONG(_DoubleExceptionVector_literal_end);
    LONG(LOADADDR(.DoubleExceptionVector.literal));
    LONG(_DoubleExceptionVector_text_start);
    LONG(_DoubleExceptionVector_text_end);
    LONG(LOADADDR(.DoubleExceptionVector.text));
    LONG(0);
    LONG(0);
    LONG(0);
    _rom_store = .;
    _srom_text_end = ABSOLUTE(.);
  } >srom0_seg :srom0_phdr

  .ResetEpilog.literal : AT(LOADADDR(.srom.text) + ((SIZEOF(.srom.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _ResetEpilog_literal_start = ABSOLUTE(.);
    *(.ResetEpilog.literal)
    _ResetEpilog_literal_end = ABSOLUTE(.);
  } >sram30_seg :sram30_phdr

  .ResetEpilog.text : AT(LOADADDR(.ResetEpilog.literal) + ((SIZEOF(.ResetEpilog.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _ResetEpilog_text_start = ABSOLUTE(.);
    *(.ResetEpilog.text)
    _ResetEpilog_text_end = ABSOLUTE(.);
  } >ResetEpilog.text_seg :ResetEpilog.text_phdr

  .secstart.literal : AT(LOADADDR(.ResetEpilog.text) + ((SIZEOF(.ResetEpilog.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _secstart_literal_start = ABSOLUTE(.);
    *(.secstart.literal)
    _secstart_literal_end = ABSOLUTE(.);
  } >sram32_seg :sram32_phdr

  .secstart.text : AT(LOADADDR(.secstart.literal) + ((SIZEOF(.secstart.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _secstart_text_start = ABSOLUTE(.);
    *(.secstart.text)
    _secstart_text_end = ABSOLUTE(.);
  } >secstart.text_seg :secstart.text_phdr

  .sram.rodata : AT(LOADADDR(.secstart.text) + ((SIZEOF(.secstart.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _sram_rodata_start = ABSOLUTE(.);
    *(.sram.rodata)
    _sram_rodata_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .rodata : AT(LOADADDR(.sram.rodata) + (ADDR(.rodata) - ADDR(.sram.rodata))) ALIGN(4)
  {
    _rodata_start = ABSOLUTE(.);
    *(.rodata)
    *(.rodata.*)
    *(.gnu.linkonce.r.*)
    *(.rodata1)
    __XT_EXCEPTION_TABLE__ = ABSOLUTE(.);
    KEEP (*(.xt_except_table))
    KEEP (*(.gcc_except_table))
    *(.gnu.linkonce.e.*)
    *(.gnu.version_r)
    KEEP (*(.eh_frame))
    /*  C++ constructor and destructor tables, properly ordered:  */
    KEEP (*crtbegin.o(.ctors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    KEEP (*crtbegin.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
    /*  C++ exception handlers table:  */
    __XT_EXCEPTION_DESCS__ = ABSOLUTE(.);
    *(.xt_except_desc)
    *(.gnu.linkonce.h.*)
    __XT_EXCEPTION_DESCS_END__ = ABSOLUTE(.);
    *(.xt_except_desc_end)
    *(.dynamic)
    *(.gnu.version_d)
    . = ALIGN(4);		/* this table MUST be 4-byte aligned */
    _bss_table_start = ABSOLUTE(.);
    LONG(_bss_start)
    LONG(_bss_end)
    LONG(_dram0_bss_start)
    LONG(_dram0_bss_end)
    _bss_table_end = ABSOLUTE(.);
    _rodata_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .lit4 : AT(LOADADDR(.rodata) + (ADDR(.lit4) - ADDR(.rodata))) ALIGN(4)
  {
    _lit4_start = ABSOLUTE(.);
    *(*.lit4)
    *(.lit4.*)
    *(.gnu.linkonce.lit4.*)
    _lit4_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .ResetVector.literal : AT(LOADADDR(.lit4) + (ADDR(.ResetVector.literal) - ADDR(.lit4))) ALIGN(4)
  {
    _ResetVector_literal_start = ABSOLUTE(.);
    *(.ResetVector.literal)
    _ResetVector_literal_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .sram.text : AT(LOADADDR(.ResetVector.literal) + (ADDR(.sram.text) - ADDR(.ResetVector.literal))) ALIGN(4)
  {
    _sram_text_start = ABSOLUTE(.);
    *(.sram.literal .sram.text)
    _sram_text_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .text : AT(LOADADDR(.sram.text) + (ADDR(.text) - ADDR(.sram.text))) ALIGN(4)
  {
    _stext = .;
    _text_start = ABSOLUTE(.);
    *(.entry.text)
    *(.init.literal)
    KEEP(*(.init))
    *(.literal .text .literal.* .text.* .stub .gnu.warning .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    *(.fini.literal)
    KEEP(*(.fini))
    *(.gnu.version)
    _text_end = ABSOLUTE(.);
    _etext = .;
  } >sram34_seg :sram34_phdr

  .sram.data : AT(LOADADDR(.text) + (ADDR(.sram.data) - ADDR(.text))) ALIGN(4)
  {
    _sram_data_start = ABSOLUTE(.);
    *(.sram.data)
    _sram_data_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .data : AT(LOADADDR(.sram.data) + (ADDR(.data) - ADDR(.sram.data))) ALIGN(4)
  {
    _data_start = ABSOLUTE(.);
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    KEEP(*(.gnu.linkonce.d.*personality*))
    *(.data1)
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
    *(.sdata2)
    *(.sdata2.*)
    *(.gnu.linkonce.s2.*)
    KEEP(*(.jcr))
    _data_end = ABSOLUTE(.);
  } >sram34_seg :sram34_phdr

  .bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _bss_start = ABSOLUTE(.);
    *(.dynsbss)
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
    *(.scommon)
    *(.sbss2)
    *(.sbss2.*)
    *(.gnu.linkonce.sb2.*)
    *(.dynbss)
    *(.bss)
    *(.bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    *(.sram.bss)
    . = ALIGN (8);
    _bss_end = ABSOLUTE(.);
    _end = ALIGN(0x8);
    PROVIDE(end = ALIGN(0x8));
    _stack_sentry = ALIGN(0x8);
  } >sram34_seg :sram34_bss_phdr
 __stack = 0x200000;
  _heap_sentry = 0x200000;

  .sysinfo.literal : AT(LOADADDR(.data) + ((SIZEOF(.data) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _sysinfo_literal_start = ABSOLUTE(.);
    *(.sysinfo.literal)
    _sysinfo_literal_end = ABSOLUTE(.);
  } >sysinfo_seg :sysinfo_phdr

  .dram0.literal : AT(LOADADDR(.sysinfo.literal) + ((SIZEOF(.sysinfo.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _dram0_literal_start = ABSOLUTE(.);
    *(.dram0.literal)
    *(.dram.literal)
    _dram0_literal_end = ABSOLUTE(.);
  } >iram0_0_seg :iram0_0_phdr

  .dram0.data : AT(LOADADDR(.dram0.literal) + (ADDR(.dram0.data) - ADDR(.dram0.literal))) ALIGN(4)
  {
    _dram0_data_start = ABSOLUTE(.);
    *(.dram0.data)
    *(.dram.data)
    _dram0_data_end = ABSOLUTE(.);
  } >iram0_0_seg :iram0_0_phdr

  .dram0.rodata : AT(LOADADDR(.dram0.data) + (ADDR(.dram0.rodata) - ADDR(.dram0.data))) ALIGN(4)
  {
    _dram0_rodata_start = ABSOLUTE(.);
    *(.dram0.rodata)
    *(.dram.rodata)
    _dram0_rodata_end = ABSOLUTE(.);
  } >iram0_0_seg :iram0_0_phdr

  .iram0.text : AT(LOADADDR(.dram0.rodata) + (ADDR(.iram0.text) - ADDR(.dram0.rodata))) ALIGN(4)
  {
    _iram0_text_start = ABSOLUTE(.);
    *(.iram0.literal .iram.literal .iram.text.literal .iram0.text .iram.text)
    _iram0_text_end = ABSOLUTE(.);
  } >iram0_0_seg :iram0_0_phdr

  .dram0.bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _dram0_bss_start = ABSOLUTE(.);
    *(.dram0.bss)
    . = ALIGN (8);
    _dram0_bss_end = ABSOLUTE(.);
  } >iram0_0_seg :iram0_0_bss_phdr

  .WindowVectors.text : AT(LOADADDR(.iram0.text) + ((SIZEOF(.iram0.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _WindowVectors_text_start = ABSOLUTE(.);
    KEEP (*(.WindowVectors.text))
    _WindowVectors_text_end = ABSOLUTE(.);
  } >WindowVectors.text_seg :WindowVectors.text_phdr

  .Level2InterruptVector.literal : AT(LOADADDR(.WindowVectors.text) + ((SIZEOF(.WindowVectors.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level2InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level2InterruptVector.literal)
    _Level2InterruptVector_literal_end = ABSOLUTE(.);
  } >iram1_seg :iram1_phdr

  .Level2InterruptVector.text : AT(LOADADDR(.Level2InterruptVector.literal) + ((SIZEOF(.Level2InterruptVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level2InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level2InterruptVector.text))
    _Level2InterruptVector_text_end = ABSOLUTE(.);
  } >Level2InterruptVector.text_seg :Level2InterruptVector.text_phdr

  .Level3InterruptVector.literal : AT(LOADADDR(.Level2InterruptVector.text) + ((SIZEOF(.Level2InterruptVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level3InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level3InterruptVector.literal)
    _Level3InterruptVector_literal_end = ABSOLUTE(.);
  } >iram3_seg :iram3_phdr

  .Level3InterruptVector.text : AT(LOADADDR(.Level3InterruptVector.literal) + ((SIZEOF(.Level3InterruptVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level3InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level3InterruptVector.text))
    _Level3InterruptVector_text_end = ABSOLUTE(.);
  } >Level3InterruptVector.text_seg :Level3InterruptVector.text_phdr

  .Level4InterruptVector.literal : AT(LOADADDR(.Level3InterruptVector.text) + ((SIZEOF(.Level3InterruptVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level4InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level4InterruptVector.literal)
    _Level4InterruptVector_literal_end = ABSOLUTE(.);
  } >iram5_seg :iram5_phdr

  .Level4InterruptVector.text : AT(LOADADDR(.Level4InterruptVector.literal) + ((SIZEOF(.Level4InterruptVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level4InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level4InterruptVector.text))
    _Level4InterruptVector_text_end = ABSOLUTE(.);
  } >Level4InterruptVector.text_seg :Level4InterruptVector.text_phdr

  .Level5InterruptVector.literal : AT(LOADADDR(.Level4InterruptVector.text) + ((SIZEOF(.Level4InterruptVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level5InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level5InterruptVector.literal)
    _Level5InterruptVector_literal_end = ABSOLUTE(.);
  } >iram7_seg :iram7_phdr

  .Level5InterruptVector.text : AT(LOADADDR(.Level5InterruptVector.literal) + ((SIZEOF(.Level5InterruptVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _Level5InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level5InterruptVector.text))
    _Level5InterruptVector_text_end = ABSOLUTE(.);
  } >Level5InterruptVector.text_seg :Level5InterruptVector.text_phdr

  .DebugExceptionVector.literal : AT(LOADADDR(.Level5InterruptVector.text) + ((SIZEOF(.Level5InterruptVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _DebugExceptionVector_literal_start = ABSOLUTE(.);
    *(.DebugExceptionVector.literal)
    _DebugExceptionVector_literal_end = ABSOLUTE(.);
  } >iram9_seg :iram9_phdr

  .DebugExceptionVector.text : AT(LOADADDR(.DebugExceptionVector.literal) + ((SIZEOF(.DebugExceptionVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _DebugExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DebugExceptionVector.text))
    _DebugExceptionVector_text_end = ABSOLUTE(.);
  } >DebugExceptionVector.text_seg :DebugExceptionVector.text_phdr

  .NMIExceptionVector.literal : AT(LOADADDR(.DebugExceptionVector.text) + ((SIZEOF(.DebugExceptionVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _NMIExceptionVector_literal_start = ABSOLUTE(.);
    *(.NMIExceptionVector.literal)
    _NMIExceptionVector_literal_end = ABSOLUTE(.);
  } >iram11_seg :iram11_phdr

  .NMIExceptionVector.text : AT(LOADADDR(.NMIExceptionVector.literal) + ((SIZEOF(.NMIExceptionVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _NMIExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.NMIExceptionVector.text))
    _NMIExceptionVector_text_end = ABSOLUTE(.);
  } >NMIExceptionVector.text_seg :NMIExceptionVector.text_phdr

  .KernelExceptionVector.literal : AT(LOADADDR(.NMIExceptionVector.text) + ((SIZEOF(.NMIExceptionVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _KernelExceptionVector_literal_start = ABSOLUTE(.);
    *(.KernelExceptionVector.literal)
    _KernelExceptionVector_literal_end = ABSOLUTE(.);
  } >iram13_seg :iram13_phdr

  .KernelExceptionVector.text : AT(LOADADDR(.KernelExceptionVector.literal) + ((SIZEOF(.KernelExceptionVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _KernelExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.KernelExceptionVector.text))
    _KernelExceptionVector_text_end = ABSOLUTE(.);
  } >KernelExceptionVector.text_seg :KernelExceptionVector.text_phdr

  .UserExceptionVector.literal : AT(LOADADDR(.KernelExceptionVector.text) + ((SIZEOF(.KernelExceptionVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _UserExceptionVector_literal_start = ABSOLUTE(.);
    *(.UserExceptionVector.literal)
    _UserExceptionVector_literal_end = ABSOLUTE(.);
  } >iram15_seg :iram15_phdr

  .UserExceptionVector.text : AT(LOADADDR(.UserExceptionVector.literal) + ((SIZEOF(.UserExceptionVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _UserExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.UserExceptionVector.text))
    _UserExceptionVector_text_end = ABSOLUTE(.);
  } >UserExceptionVector.text_seg :UserExceptionVector.text_phdr

  .DoubleExceptionVector.literal : AT(LOADADDR(.UserExceptionVector.text) + ((SIZEOF(.UserExceptionVector.text) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _DoubleExceptionVector_literal_start = ABSOLUTE(.);
    *(.DoubleExceptionVector.literal)
    _DoubleExceptionVector_literal_end = ABSOLUTE(.);
  } >iram17_seg :iram17_phdr

  .DoubleExceptionVector.text : AT(LOADADDR(.DoubleExceptionVector.literal) + ((SIZEOF(.DoubleExceptionVector.literal) + 3) & 0xFFFFFFFC)) ALIGN(4)
  {
    _DoubleExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DoubleExceptionVector.text))
    _DoubleExceptionVector_text_end = ABSOLUTE(.);
  } >DoubleExceptionVector.text_seg :DoubleExceptionVector.text_phdr

  .ResetVector.text : ALIGN(4)
  {
    _ResetVector_text_start = ABSOLUTE(.);
    KEEP (*(.ResetVector.text))
    _ResetVector_text_end = ABSOLUTE(.);
  } >ResetVector.text_seg :ResetVector.text_phdr
  .rom_store_end LOADADDR(.DoubleExceptionVector.text) + SIZEOF(.DoubleExceptionVector.text) : 
  { 
    _rom_store_end = .;
  } >srom0_seg
  .debug  0 :  { *(.debug) }
  .line  0 :  { *(.line) }
  .debug_srcinfo  0 :  { *(.debug_srcinfo) }
  .debug_sfnames  0 :  { *(.debug_sfnames) }
  .debug_aranges  0 :  { *(.debug_aranges) }
  .debug_pubnames  0 :  { *(.debug_pubnames) }
  .debug_info  0 :  { *(.debug_info) }
  .debug_abbrev  0 :  { *(.debug_abbrev) }
  .debug_line  0 :  { *(.debug_line) }
  .debug_frame  0 :  { *(.debug_frame) }
  .debug_str  0 :  { *(.debug_str) }
  .debug_loc  0 :  { *(.debug_loc) }
  .debug_macinfo  0 :  { *(.debug_macinfo) }
  .debug_weaknames  0 :  { *(.debug_weaknames) }
  .debug_funcnames  0 :  { *(.debug_funcnames) }
  .debug_typenames  0 :  { *(.debug_typenames) }
  .debug_varnames  0 :  { *(.debug_varnames) }
  .xt.insn 0 :
  {
    KEEP (*(.xt.insn))
    KEEP (*(.gnu.linkonce.x.*))
  }
  .xt.prop 0 :
  {
    KEEP (*(.xt.prop))
    KEEP (*(.xt.prop.*))
    KEEP (*(.gnu.linkonce.prop.*))
  }
  .xt.lit 0 :
  {
    KEEP (*(.xt.lit))
    KEEP (*(.xt.lit.*))
    KEEP (*(.gnu.linkonce.p.*))
  }
  .xt.profile_range 0 :
  {
    KEEP (*(.xt.profile_range))
    KEEP (*(.gnu.linkonce.profile_range.*))
  }
  .xt.profile_ranges 0 :
  {
    KEEP (*(.xt.profile_ranges))
    KEEP (*(.gnu.linkonce.xt.profile_ranges.*))
  }
  .xt.profile_files 0 :
  {
    KEEP (*(.xt.profile_files))
    KEEP (*(.gnu.linkonce.xt.profile_files.*))
  }
}


/*
 * Copyright (c) 2006-2015 Triductor Technology, Inc.
 *           All Rights Reserved Worldwide
 *
 * Filename: lightelf_mdio_reg.h
 * Author  : $Author: Eric $
 * Date    : Jun/01/2015
 * Version : $Revision: 550 $
 * Purpose : Describe all the available registers for MDIO of LIGHTELF.
             This file is automatically generated by Register Parser.
 */

#ifndef __LIGHTELF_MDIO_REG_H__
#define __LIGHTELF_MDIO_REG_H__

#ifndef REG32
    #define REG32(x)                    (*(volatile unsigned int *)(x))
#endif

#ifndef _REG_FLD_OP_
    #define _REG_FLD_OP_

    // Register Field Mask
    #define FLD_MASK(s,e)              ((0xffffffff >> (31-(e)+(s))) << (s))

    // Register Field Mask Write-Data
    // s -- Start of Bit  e -- End   of Bit
    // v -- Value
    #define FLD_MWD(s,e,v)              (((v) << (s)) & FLD_MASK((s),(e)))

    // Register Field Mask Read-Data
    // s -- Start of Bit  e -- End   of Bit
    // v -- Value
    #define FLD_MRD(s,e,v)              (((v) & FLD_MASK((s),(e))) >> (s))

    // Register Field Write operation
    // a -- Address   s -- Start of Bit
    // v -- Value     e -- End   of Bit
    #define OP_FLD_WR(a,s,e,v)          (REG32((a)) = (((v) << (s)) & FLD_MASK((s),(e))) | (REG32((a)) & ~FLD_MASK((s),(e))))
    #define OP_FLD_WR_EXC(a,s,e,v)      (REG32((a)) = (((v) << (s)) & FLD_MASK((s),(e))))

    // Register Field Read operation
    #define OP_FLD_RD(a,s,e)            ((REG32((a)) & FLD_MASK((s),(e))) >> (s))

#endif

//Address Offset for multi-instance mode only
#ifndef  REG_OFFSET_MDIO
    #define  REG_OFFSET_MDIO  (0x0)
#endif

// Base address
#ifndef REG_BASE_MDIO
    #define  REG_BASE_MDIO    (0xf2400000)
#endif



//------------------------------------
// Basic Registers
//------------------------------------
#define  REG_MDIO_MCFG                                            (REG_BASE_MDIO + 0x20)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MCFG()                                       (REG32(REG_MDIO_MCFG))
    #define  WR_MDIO_MCFG(v)                                      (REG32(REG_MDIO_MCFG) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MCFG()                                (0xFF1F)  
    #define  REG_WMASK_MDIO_MCFG()                                (0xFF1F)

    //Field: MDIO_SCINC
    #define  FLD_LSB_MDIO_SCINC()                                 (0)
    #define  FLD_MSB_MDIO_SCINC()                                 (0)
    #define  FLD_MASK_MDIO_SCINC()                                (FLD_MASK(0, 0))
    #define  FLD_MWD_MDIO_SCINC(v)                                (FLD_MWD(0, 0, v))
    #define  FLD_MRD_MDIO_SCINC(v)                                (FLD_MRD(0, 0, v))
    #define  SET_MDIO_SCINC(v)                                    OP_FLD_WR(REG_MDIO_MCFG, 0, 0, v)
    #define  GET_MDIO_SCINC()                                     OP_FLD_RD(REG_MDIO_MCFG, 0, 0)
    #define  RST_MDIO_SCINC()                                     OP_FLD_WR(REG_MDIO_MCFG, 0, 0, 0x0)

    //Field: MDIO_SPRE
    #define  FLD_LSB_MDIO_SPRE()                                  (1)
    #define  FLD_MSB_MDIO_SPRE()                                  (1)
    #define  FLD_MASK_MDIO_SPRE()                                 (FLD_MASK(1, 1))
    #define  FLD_MWD_MDIO_SPRE(v)                                 (FLD_MWD(1, 1, v))
    #define  FLD_MRD_MDIO_SPRE(v)                                 (FLD_MRD(1, 1, v))
    #define  SET_MDIO_SPRE(v)                                     OP_FLD_WR(REG_MDIO_MCFG, 1, 1, v)
    #define  GET_MDIO_SPRE()                                      OP_FLD_RD(REG_MDIO_MCFG, 1, 1)
    #define  RST_MDIO_SPRE()                                      OP_FLD_WR(REG_MDIO_MCFG, 1, 1, 0x0)

    //Field: MDIO_CLKS
    #define  FLD_LSB_MDIO_CLKS()                                  (2)
    #define  FLD_MSB_MDIO_CLKS()                                  (4)
    #define  FLD_MASK_MDIO_CLKS()                                 (FLD_MASK(2, 4))
    #define  FLD_MWD_MDIO_CLKS(v)                                 (FLD_MWD(2, 4, v))
    #define  FLD_MRD_MDIO_CLKS(v)                                 (FLD_MRD(2, 4, v))
    #define  SET_MDIO_CLKS(v)                                     OP_FLD_WR(REG_MDIO_MCFG, 2, 4, v)
    #define  GET_MDIO_CLKS()                                      OP_FLD_RD(REG_MDIO_MCFG, 2, 4)
    #define  RST_MDIO_CLKS()                                      OP_FLD_WR(REG_MDIO_MCFG, 2, 4, 0x5)

    //Field: MDIO_MDIO_MAC
    #define  FLD_LSB_MDIO_MDIO_MAC()                              (8)
    #define  FLD_MSB_MDIO_MDIO_MAC()                              (8)
    #define  FLD_MASK_MDIO_MDIO_MAC()                             (FLD_MASK(8, 8))
    #define  FLD_MWD_MDIO_MDIO_MAC(v)                             (FLD_MWD(8, 8, v))
    #define  FLD_MRD_MDIO_MDIO_MAC(v)                             (FLD_MRD(8, 8, v))
    #define  SET_MDIO_MDIO_MAC(v)                                 OP_FLD_WR(REG_MDIO_MCFG, 8, 8, v)
    #define  GET_MDIO_MDIO_MAC()                                  OP_FLD_RD(REG_MDIO_MCFG, 8, 8)
    #define  RST_MDIO_MDIO_MAC()                                  OP_FLD_WR(REG_MDIO_MCFG, 8, 8, 0x0)

    //Field: MDIO_MDIO_LS
    #define  FLD_LSB_MDIO_MDIO_LS()                               (9)
    #define  FLD_MSB_MDIO_MDIO_LS()                               (9)
    #define  FLD_MASK_MDIO_MDIO_LS()                              (FLD_MASK(9, 9))
    #define  FLD_MWD_MDIO_MDIO_LS(v)                              (FLD_MWD(9, 9, v))
    #define  FLD_MRD_MDIO_MDIO_LS(v)                              (FLD_MRD(9, 9, v))
    #define  SET_MDIO_MDIO_LS(v)                                  OP_FLD_WR(REG_MDIO_MCFG, 9, 9, v)
    #define  GET_MDIO_MDIO_LS()                                   OP_FLD_RD(REG_MDIO_MCFG, 9, 9)
    #define  RST_MDIO_MDIO_LS()                                   OP_FLD_WR(REG_MDIO_MCFG, 9, 9, 0x1)

    //Field: MDIO_IFG
    #define  FLD_LSB_MDIO_IFG()                                   (10)
    #define  FLD_MSB_MDIO_IFG()                                   (14)
    #define  FLD_MASK_MDIO_IFG()                                  (FLD_MASK(10, 14))
    #define  FLD_MWD_MDIO_IFG(v)                                  (FLD_MWD(10, 14, v))
    #define  FLD_MRD_MDIO_IFG(v)                                  (FLD_MRD(10, 14, v))
    #define  SET_MDIO_IFG(v)                                      OP_FLD_WR(REG_MDIO_MCFG, 10, 14, v)
    #define  GET_MDIO_IFG()                                       OP_FLD_RD(REG_MDIO_MCFG, 10, 14)
    #define  RST_MDIO_IFG()                                       OP_FLD_WR(REG_MDIO_MCFG, 10, 14, 0x0)

    //Field: MDIO_RST
    #define  FLD_LSB_MDIO_RST()                                   (15)
    #define  FLD_MSB_MDIO_RST()                                   (15)
    #define  FLD_MASK_MDIO_RST()                                  (FLD_MASK(15, 15))
    #define  FLD_MWD_MDIO_RST(v)                                  (FLD_MWD(15, 15, v))
    #define  FLD_MRD_MDIO_RST(v)                                  (FLD_MRD(15, 15, v))
    #define  SET_MDIO_RST(v)                                      OP_FLD_WR(REG_MDIO_MCFG, 15, 15, v)
    #define  GET_MDIO_RST()                                       OP_FLD_RD(REG_MDIO_MCFG, 15, 15)
    #define  RST_MDIO_RST()                                       OP_FLD_WR(REG_MDIO_MCFG, 15, 15, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MCFG(SCINC,SPRE,CLKS,MDIO_MAC,MDIO_LS,IFG,RST) \
                (WR_MDIO_MCFG( \
                  (FLD_MWD_MDIO_SCINC(SCINC))                                          | \
                  (FLD_MWD_MDIO_SPRE(SPRE))                                            | \
                  (FLD_MWD_MDIO_CLKS(CLKS))                                            | \
                  (FLD_MWD_MDIO_MDIO_MAC(MDIO_MAC))                                    | \
                  (FLD_MWD_MDIO_MDIO_LS(MDIO_LS))                                      | \
                  (FLD_MWD_MDIO_IFG(IFG))                                              | \
                  (FLD_MWD_MDIO_RST(RST))                                                \
                ))


#define  REG_MDIO_MCMD                                            (REG_BASE_MDIO + 0x24)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MCMD()                                       (REG32(REG_MDIO_MCMD))
    #define  WR_MDIO_MCMD(v)                                      (REG32(REG_MDIO_MCMD) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MCMD()                                (0x3)  
    #define  REG_WMASK_MDIO_MCMD()                                (0x3)

    //Field: MDIO_RSTAT
    #define  FLD_LSB_MDIO_RSTAT()                                 (0)
    #define  FLD_MSB_MDIO_RSTAT()                                 (0)
    #define  FLD_MASK_MDIO_RSTAT()                                (FLD_MASK(0, 0))
    #define  FLD_MWD_MDIO_RSTAT(v)                                (FLD_MWD(0, 0, v))
    #define  FLD_MRD_MDIO_RSTAT(v)                                (FLD_MRD(0, 0, v))
    #define  SET_MDIO_RSTAT(v)                                    OP_FLD_WR(REG_MDIO_MCMD, 0, 0, v)
    #define  GET_MDIO_RSTAT()                                     OP_FLD_RD(REG_MDIO_MCMD, 0, 0)
    #define  RST_MDIO_RSTAT()                                     OP_FLD_WR(REG_MDIO_MCMD, 0, 0, 0x0)

    //Field: MDIO_SCAN_READ
    #define  FLD_LSB_MDIO_SCAN_READ()                             (1)
    #define  FLD_MSB_MDIO_SCAN_READ()                             (1)
    #define  FLD_MASK_MDIO_SCAN_READ()                            (FLD_MASK(1, 1))
    #define  FLD_MWD_MDIO_SCAN_READ(v)                            (FLD_MWD(1, 1, v))
    #define  FLD_MRD_MDIO_SCAN_READ(v)                            (FLD_MRD(1, 1, v))
    #define  SET_MDIO_SCAN_READ(v)                                OP_FLD_WR(REG_MDIO_MCMD, 1, 1, v)
    #define  GET_MDIO_SCAN_READ()                                 OP_FLD_RD(REG_MDIO_MCMD, 1, 1)
    #define  RST_MDIO_SCAN_READ()                                 OP_FLD_WR(REG_MDIO_MCMD, 1, 1, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MCMD(RSTAT,SCAN_READ) \
                (WR_MDIO_MCMD( \
                  (FLD_MWD_MDIO_RSTAT(RSTAT))                                          | \
                  (FLD_MWD_MDIO_SCAN_READ(SCAN_READ))                                    \
                ))


#define  REG_MDIO_MADR                                            (REG_BASE_MDIO + 0x28)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MADR()                                       (REG32(REG_MDIO_MADR))
    #define  WR_MDIO_MADR(v)                                      (REG32(REG_MDIO_MADR) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MADR()                                (0x1F1F)  
    #define  REG_WMASK_MDIO_MADR()                                (0x1F1F)

    //Field: MDIO_RGAD
    #define  FLD_LSB_MDIO_RGAD()                                  (0)
    #define  FLD_MSB_MDIO_RGAD()                                  (4)
    #define  FLD_MASK_MDIO_RGAD()                                 (FLD_MASK(0, 4))
    #define  FLD_MWD_MDIO_RGAD(v)                                 (FLD_MWD(0, 4, v))
    #define  FLD_MRD_MDIO_RGAD(v)                                 (FLD_MRD(0, 4, v))
    #define  SET_MDIO_RGAD(v)                                     OP_FLD_WR(REG_MDIO_MADR, 0, 4, v)
    #define  GET_MDIO_RGAD()                                      OP_FLD_RD(REG_MDIO_MADR, 0, 4)
    #define  RST_MDIO_RGAD()                                      OP_FLD_WR(REG_MDIO_MADR, 0, 4, 0x0)

    //Field: MDIO_FIAD
    #define  FLD_LSB_MDIO_FIAD()                                  (8)
    #define  FLD_MSB_MDIO_FIAD()                                  (12)
    #define  FLD_MASK_MDIO_FIAD()                                 (FLD_MASK(8, 12))
    #define  FLD_MWD_MDIO_FIAD(v)                                 (FLD_MWD(8, 12, v))
    #define  FLD_MRD_MDIO_FIAD(v)                                 (FLD_MRD(8, 12, v))
    #define  SET_MDIO_FIAD(v)                                     OP_FLD_WR(REG_MDIO_MADR, 8, 12, v)
    #define  GET_MDIO_FIAD()                                      OP_FLD_RD(REG_MDIO_MADR, 8, 12)
    #define  RST_MDIO_FIAD()                                      OP_FLD_WR(REG_MDIO_MADR, 8, 12, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MADR(RGAD,FIAD) \
                (WR_MDIO_MADR( \
                  (FLD_MWD_MDIO_RGAD(RGAD))                                            | \
                  (FLD_MWD_MDIO_FIAD(FIAD))                                              \
                ))


#define  REG_MDIO_MWTD                                            (REG_BASE_MDIO + 0x2c)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MWTD()                                       (REG32(REG_MDIO_MWTD))
    #define  WR_MDIO_MWTD(v)                                      (REG32(REG_MDIO_MWTD) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MWTD()                                (0xFFFF)  
    #define  REG_WMASK_MDIO_MWTD()                                (0xFFFF)

    //Field: MDIO_CTLD
    #define  FLD_LSB_MDIO_CTLD()                                  (0)
    #define  FLD_MSB_MDIO_CTLD()                                  (15)
    #define  FLD_MASK_MDIO_CTLD()                                 (FLD_MASK(0, 15))
    #define  FLD_MWD_MDIO_CTLD(v)                                 (FLD_MWD(0, 15, v))
    #define  FLD_MRD_MDIO_CTLD(v)                                 (FLD_MRD(0, 15, v))
    #define  SET_MDIO_CTLD(v)                                     OP_FLD_WR_EXC(REG_MDIO_MWTD, 0, 15, v)
    #define  GET_MDIO_CTLD()                                      OP_FLD_RD(REG_MDIO_MWTD, 0, 15)
    #define  RST_MDIO_CTLD()                                      OP_FLD_WR_EXC(REG_MDIO_MWTD, 0, 15, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MWTD(CTLD) \
                (WR_MDIO_MWTD( \
                  (FLD_MWD_MDIO_CTLD(CTLD))                                              \
                ))


#define  REG_MDIO_MRDD                                            (REG_BASE_MDIO + 0x30)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MRDD()                                       (REG32(REG_MDIO_MRDD))
    #define  WR_MDIO_MRDD(v)                                      (REG32(REG_MDIO_MRDD) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MRDD()                                (0xFFFF)  
    #define  REG_WMASK_MDIO_MRDD()                                (0x0)

    //Field: MDIO_PRSD
    #define  FLD_LSB_MDIO_PRSD()                                  (0)
    #define  FLD_MSB_MDIO_PRSD()                                  (15)
    #define  FLD_MASK_MDIO_PRSD()                                 (FLD_MASK(0, 15))
    #define  FLD_MWD_MDIO_PRSD(v)                                 (FLD_MWD(0, 15, v))
    #define  FLD_MRD_MDIO_PRSD(v)                                 (FLD_MRD(0, 15, v))
    #define  GET_MDIO_PRSD()                                      OP_FLD_RD(REG_MDIO_MRDD, 0, 15)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MRDD(PRSD) \
                (WR_MDIO_MRDD( \
   \
                ))


#define  REG_MDIO_MIND                                            (REG_BASE_MDIO + 0x34)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MIND()                                       (REG32(REG_MDIO_MIND))
    #define  WR_MDIO_MIND(v)                                      (REG32(REG_MDIO_MIND) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MIND()                                (0xF)  
    #define  REG_WMASK_MDIO_MIND()                                (0x8)

    //Field: MDIO_BUSY
    #define  FLD_LSB_MDIO_BUSY()                                  (0)
    #define  FLD_MSB_MDIO_BUSY()                                  (0)
    #define  FLD_MASK_MDIO_BUSY()                                 (FLD_MASK(0, 0))
    #define  FLD_MWD_MDIO_BUSY(v)                                 (FLD_MWD(0, 0, v))
    #define  FLD_MRD_MDIO_BUSY(v)                                 (FLD_MRD(0, 0, v))
    #define  GET_MDIO_BUSY()                                      OP_FLD_RD(REG_MDIO_MIND, 0, 0)

    //Field: MDIO_SCAN
    #define  FLD_LSB_MDIO_SCAN()                                  (1)
    #define  FLD_MSB_MDIO_SCAN()                                  (1)
    #define  FLD_MASK_MDIO_SCAN()                                 (FLD_MASK(1, 1))
    #define  FLD_MWD_MDIO_SCAN(v)                                 (FLD_MWD(1, 1, v))
    #define  FLD_MRD_MDIO_SCAN(v)                                 (FLD_MRD(1, 1, v))
    #define  GET_MDIO_SCAN()                                      OP_FLD_RD(REG_MDIO_MIND, 1, 1)

    //Field: MDIO_NVALID
    #define  FLD_LSB_MDIO_NVALID()                                (2)
    #define  FLD_MSB_MDIO_NVALID()                                (2)
    #define  FLD_MASK_MDIO_NVALID()                               (FLD_MASK(2, 2))
    #define  FLD_MWD_MDIO_NVALID(v)                               (FLD_MWD(2, 2, v))
    #define  FLD_MRD_MDIO_NVALID(v)                               (FLD_MRD(2, 2, v))
    #define  GET_MDIO_NVALID()                                    OP_FLD_RD(REG_MDIO_MIND, 2, 2)

    //Field: MDIO_MIILF_SR
    #define  FLD_LSB_MDIO_MIILF_SR()                              (3)
    #define  FLD_MSB_MDIO_MIILF_SR()                              (3)
    #define  FLD_MASK_MDIO_MIILF_SR()                             (FLD_MASK(3, 3))
    #define  FLD_MWD_MDIO_MIILF_SR(v)                             (FLD_MWD(3, 3, v))
    #define  FLD_MRD_MDIO_MIILF_SR(v)                             (FLD_MRD(3, 3, v))
    #define  SET_MDIO_MIILF_SR(v)                                 OP_FLD_WR_EXC(REG_MDIO_MIND, 3, 3, v)
    #define  GET_MDIO_MIILF_SR()                                  OP_FLD_RD(REG_MDIO_MIND, 3, 3)
    #define  CLR_MDIO_MIILF_SR()                                  OP_FLD_WR_EXC(REG_MDIO_MIND, 3, 3, 0x1)
    #define  RST_MDIO_MIILF_SR()                                  OP_FLD_WR_EXC(REG_MDIO_MIND, 3, 3, 0x1)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MIND(BUSY,SCAN,NVALID,MIILF_SR) \
                (WR_MDIO_MIND( \
                  (FLD_MWD_MDIO_MIILF_SR(MIILF_SR))                                      \
                ))


#define  REG_MDIO_PHYID                                           (REG_BASE_MDIO + 0x4c)
    //Read/Write-Register Using Address
    #define  RD_MDIO_PHYID()                                      (REG32(REG_MDIO_PHYID))
    #define  WR_MDIO_PHYID(v)                                     (REG32(REG_MDIO_PHYID) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_PHYID()                               (0x3F)  
    #define  REG_WMASK_MDIO_PHYID()                               (0x3F)

    //Field: MDIO_PHYID
    #define  FLD_LSB_MDIO_PHYID()                                 (0)
    #define  FLD_MSB_MDIO_PHYID()                                 (4)
    #define  FLD_MASK_MDIO_PHYID()                                (FLD_MASK(0, 4))
    #define  FLD_MWD_MDIO_PHYID(v)                                (FLD_MWD(0, 4, v))
    #define  FLD_MRD_MDIO_PHYID(v)                                (FLD_MRD(0, 4, v))
    #define  SET_MDIO_PHYID(v)                                    OP_FLD_WR(REG_MDIO_PHYID, 0, 4, v)
    #define  GET_MDIO_PHYID()                                     OP_FLD_RD(REG_MDIO_PHYID, 0, 4)
    #define  RST_MDIO_PHYID()                                     OP_FLD_WR(REG_MDIO_PHYID, 0, 4, 0x0)

    //Field: MDIO_PHYID_TEST
    #define  FLD_LSB_MDIO_PHYID_TEST()                            (5)
    #define  FLD_MSB_MDIO_PHYID_TEST()                            (5)
    #define  FLD_MASK_MDIO_PHYID_TEST()                           (FLD_MASK(5, 5))
    #define  FLD_MWD_MDIO_PHYID_TEST(v)                           (FLD_MWD(5, 5, v))
    #define  FLD_MRD_MDIO_PHYID_TEST(v)                           (FLD_MRD(5, 5, v))
    #define  SET_MDIO_PHYID_TEST(v)                               OP_FLD_WR(REG_MDIO_PHYID, 5, 5, v)
    #define  GET_MDIO_PHYID_TEST()                                OP_FLD_RD(REG_MDIO_PHYID, 5, 5)
    #define  RST_MDIO_PHYID_TEST()                                OP_FLD_WR(REG_MDIO_PHYID, 5, 5, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_PHYID(PHYID,PHYID_TEST) \
                (WR_MDIO_PHYID( \
                  (FLD_MWD_MDIO_PHYID(PHYID))                                          | \
                  (FLD_MWD_MDIO_PHYID_TEST(PHYID_TEST))                                  \
                ))


#define  REG_MDIO_PHYSTA                                          (REG_BASE_MDIO + 0x50)
    //Read/Write-Register Using Address
    #define  RD_MDIO_PHYSTA()                                     (REG32(REG_MDIO_PHYSTA))
    #define  WR_MDIO_PHYSTA(v)                                    (REG32(REG_MDIO_PHYSTA) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_PHYSTA()                              (0xFFFF)  
    #define  REG_WMASK_MDIO_PHYSTA()                              (0xFFFF)

    //Field: MDIO_PHYSTA
    #define  FLD_LSB_MDIO_PHYSTA()                                (0)
    #define  FLD_MSB_MDIO_PHYSTA()                                (15)
    #define  FLD_MASK_MDIO_PHYSTA()                               (FLD_MASK(0, 15))
    #define  FLD_MWD_MDIO_PHYSTA(v)                               (FLD_MWD(0, 15, v))
    #define  FLD_MRD_MDIO_PHYSTA(v)                               (FLD_MRD(0, 15, v))
    #define  SET_MDIO_PHYSTA(v)                                   OP_FLD_WR_EXC(REG_MDIO_PHYSTA, 0, 15, v)
    #define  GET_MDIO_PHYSTA()                                    OP_FLD_RD(REG_MDIO_PHYSTA, 0, 15)
    #define  RST_MDIO_PHYSTA()                                    OP_FLD_WR_EXC(REG_MDIO_PHYSTA, 0, 15, 0xfe00)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_PHYSTA(PHYSTA) \
                (WR_MDIO_PHYSTA( \
                  (FLD_MWD_MDIO_PHYSTA(PHYSTA))                                          \
                ))


#define  REG_MDIO_MGDI                                            (REG_BASE_MDIO + 0x78)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MGDI()                                       (REG32(REG_MDIO_MGDI))
    #define  WR_MDIO_MGDI(v)                                      (REG32(REG_MDIO_MGDI) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MGDI()                                (0xFFFF)  
    #define  REG_WMASK_MDIO_MGDI()                                (0x0)

    //Field: MDIO_MGDI
    #define  FLD_LSB_MDIO_MGDI()                                  (0)
    #define  FLD_MSB_MDIO_MGDI()                                  (15)
    #define  FLD_MASK_MDIO_MGDI()                                 (FLD_MASK(0, 15))
    #define  FLD_MWD_MDIO_MGDI(v)                                 (FLD_MWD(0, 15, v))
    #define  FLD_MRD_MDIO_MGDI(v)                                 (FLD_MRD(0, 15, v))
    #define  GET_MDIO_MGDI()                                      OP_FLD_RD(REG_MDIO_MGDI, 0, 15)
    #define  RST_MDIO_MGDI()                                      OP_FLD_RD(REG_MDIO_MGDI, 0, 15)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MGDI(MGDI) \
                (WR_MDIO_MGDI( \
   \
                ))


#define  REG_MDIO_MGDO                                            (REG_BASE_MDIO + 0x7c)
    //Read/Write-Register Using Address
    #define  RD_MDIO_MGDO()                                       (REG32(REG_MDIO_MGDO))
    #define  WR_MDIO_MGDO(v)                                      (REG32(REG_MDIO_MGDO) = v)

    //Register Read/Write-Mask
    #define  REG_RMASK_MDIO_MGDO()                                (0xFFFF)  
    #define  REG_WMASK_MDIO_MGDO()                                (0xFFFF)

    //Field: MDIO_MGDO
    #define  FLD_LSB_MDIO_MGDO()                                  (0)
    #define  FLD_MSB_MDIO_MGDO()                                  (15)
    #define  FLD_MASK_MDIO_MGDO()                                 (FLD_MASK(0, 15))
    #define  FLD_MWD_MDIO_MGDO(v)                                 (FLD_MWD(0, 15, v))
    #define  FLD_MRD_MDIO_MGDO(v)                                 (FLD_MRD(0, 15, v))
    #define  SET_MDIO_MGDO(v)                                     OP_FLD_WR_EXC(REG_MDIO_MGDO, 0, 15, v)
    #define  GET_MDIO_MGDO()                                      OP_FLD_RD(REG_MDIO_MGDO, 0, 15)
    #define  RST_MDIO_MGDO()                                      OP_FLD_WR_EXC(REG_MDIO_MGDO, 0, 15, 0x0)

    //Write-Register Using Field-Name
    #define  WRF_MDIO_MGDO(MGDO) \
                (WR_MDIO_MGDO( \
                  (FLD_MWD_MDIO_MGDO(MGDO))                                              \
                ))



#endif /*__LIGHTELF_MDIO_REG_H__*/
// vim:ft=c:nowrap:noma

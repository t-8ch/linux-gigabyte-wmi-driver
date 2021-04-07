/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Wed Apr  7 12:33:55 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00006C89 (27785)
 *     Revision         0x01
 *     Checksum         0x16
 *     OEM ID           "GBT"
 *     OEM Table ID     "GSWApp"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 1, "GBT", "GSWApp", 0x00000001)
{
    External (GSA1.M009, MethodObj)    // 1 Arguments
    External (GSA1.M010, MethodObj)    // 2 Arguments
    External (GSA1.M037, DeviceObj)
    External (GSA1.M046, DeviceObj)
    External (GSA1.M047, DeviceObj)
    External (GSA1.M050, DeviceObj)
    External (GSA1.M051, DeviceObj)
    External (GSA1.M052, DeviceObj)
    External (GSA1.M053, DeviceObj)
    External (GSA1.M054, DeviceObj)
    External (GSA1.M055, DeviceObj)
    External (GSA1.M056, DeviceObj)
    External (GSA1.M057, DeviceObj)
    External (GSA1.M058, DeviceObj)
    External (GSA1.M059, DeviceObj)
    External (GSA1.M062, DeviceObj)
    External (GSA1.M068, DeviceObj)
    External (GSA1.M069, DeviceObj)
    External (GSA1.M070, DeviceObj)
    External (GSA1.M071, DeviceObj)
    External (GSA1.M072, DeviceObj)
    External (GSA1.M074, DeviceObj)
    External (GSA1.M075, DeviceObj)
    External (GSA1.M076, DeviceObj)
    External (GSA1.M077, DeviceObj)
    External (GSA1.M078, DeviceObj)
    External (GSA1.M079, DeviceObj)
    External (GSA1.M080, DeviceObj)
    External (GSA1.M081, DeviceObj)
    External (GSA1.M082, FieldUnitObj)
    External (GSA1.M083, FieldUnitObj)
    External (GSA1.M084, FieldUnitObj)
    External (GSA1.M085, FieldUnitObj)
    External (GSA1.M086, FieldUnitObj)
    External (GSA1.M087, FieldUnitObj)
    External (GSA1.M088, FieldUnitObj)
    External (GSA1.M089, FieldUnitObj)
    External (GSA1.M090, FieldUnitObj)
    External (GSA1.M091, FieldUnitObj)
    External (GSA1.M092, FieldUnitObj)
    External (GSA1.M093, FieldUnitObj)
    External (GSA1.M094, FieldUnitObj)
    External (GSA1.M095, FieldUnitObj)
    External (GSA1.M096, FieldUnitObj)
    External (GSA1.M097, FieldUnitObj)
    External (GSA1.M098, FieldUnitObj)
    External (GSA1.M099, FieldUnitObj)
    External (GSA1.M100, FieldUnitObj)
    External (GSA1.M101, FieldUnitObj)
    External (GSA1.M102, FieldUnitObj)
    External (GSA1.M103, FieldUnitObj)
    External (GSA1.M104, FieldUnitObj)
    External (GSA1.M105, FieldUnitObj)
    External (GSA1.M106, FieldUnitObj)
    External (GSA1.M107, FieldUnitObj)
    External (GSA1.M108, FieldUnitObj)
    External (GSA1.M109, FieldUnitObj)
    External (GSA1.M110, FieldUnitObj)
    External (GSA1.M115, BuffObj)
    External (GSA1.M116, BuffFieldObj)
    External (GSA1.M117, BuffFieldObj)
    External (GSA1.M118, BuffFieldObj)
    External (GSA1.M119, BuffFieldObj)
    External (GSA1.M120, BuffFieldObj)
    External (GSA1.M122, FieldUnitObj)
    External (GSA1.M127, DeviceObj)
    External (GSA1.M128, FieldUnitObj)
    External (GSA1.M131, FieldUnitObj)
    External (GSA1.M132, FieldUnitObj)
    External (GSA1.M133, FieldUnitObj)
    External (GSA1.M134, FieldUnitObj)
    External (GSA1.M135, FieldUnitObj)
    External (GSA1.M136, FieldUnitObj)
    External (GSA1.M220, FieldUnitObj)
    External (GSA1.M221, FieldUnitObj)
    External (GSA1.M226, FieldUnitObj)
    External (GSA1.M227, DeviceObj)
    External (GSA1.M229, FieldUnitObj)
    External (GSA1.M231, FieldUnitObj)
    External (GSA1.M233, FieldUnitObj)
    External (GSA1.M235, FieldUnitObj)

    Scope (\)
    {
        Device (GSA1)
        {
            Method (GIO2, 0, Serialized)
            {
            }

            Method (GIO0, 1, Serialized)
            {
                Return (M009 (Arg0))
            }

            Method (GIO1, 2, Serialized)
            {
                M010 (Arg0, Arg1)
            }

            Method (PIOD, 1, Serialized)
            {
                Local0 = (Arg0 + Zero)
                OperationRegion (VARM, SystemIO, 0x80, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                VARR = Local0
            }

            Method (PIO0, 3, Serialized)
            {
                Local0 = (Arg0 + Zero)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Local1 = VARR /* \GSA1.PIO0.VARR */
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = ((Local1 >> Arg1) & (Local5 >> (0x20 - Arg2)
                    ))
                Return (Local2)
            }

            Method (PIO1, 4, Serialized)
            {
                Local0 = (Arg0 + Zero)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Local1 = VARR /* \GSA1.PIO1.VARR */
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = (Arg1 + Arg2)
                Local2 = (0x20 - Local2)
                Local2 = (((Local5 << Local2) & Local5) >> Local2)
                Local2 = ((Local2 >> Arg1) << Arg1)
                Local3 = (Arg3 << Arg1)
                Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
                VARR = Local4
            }

            Method (PIO6, 2, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP) /* \GSA1.PIO6.VARP */
                    }
                    Case (One)
                    {
                        Return (VARQ) /* \GSA1.PIO6.VARQ */
                    }
                    Case (0x02)
                    {
                        Return (VARR) /* \GSA1.PIO6.VARR */
                    }

                }

                Return (Zero)
            }

            Method (PIO7, 3, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        VARP = Arg2
                    }
                    Case (One)
                    {
                        VARQ = Arg2
                    }
                    Case (0x02)
                    {
                        VARR = Arg2
                    }

                }
            }

            Mutex (MEMB, 0x00)
            Method (MEM8, 0, Serialized)
            {
            }

            Method (MEM9, 1, Serialized)
            {
                MEM8 ()
            }

            Method (MEMA, 1, Serialized)
            {
            }

            Method (MEM0, 3, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Local1 = VARR /* \GSA1.MEM0.VARR */
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = ((Local1 >> Arg1) & (Local5 >> (0x20 - Arg2)
                    ))
                Return (Local2)
            }

            Method (MEM1, 4, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Local1 = VARR /* \GSA1.MEM1.VARR */
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = (Arg1 + Arg2)
                Local2 = (0x20 - Local2)
                Local2 = (((Local5 << Local2) & Local5) >> Local2)
                Local2 = ((Local2 >> Arg1) << Arg1)
                Local3 = (Arg3 << Arg1)
                Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
                VARR = Local4
            }

            Method (MEM4, 2, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP) /* \GSA1.MEM4.VARP */
                    }
                    Case (One)
                    {
                        Return (VARQ) /* \GSA1.MEM4.VARQ */
                    }
                    Case (0x02)
                    {
                        Return (VARR) /* \GSA1.MEM4.VARR */
                    }

                }

                Return (Zero)
            }

            Method (MEM5, 3, Serialized)
            {
                Local0 = Arg0
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        VARP = Arg2
                    }
                    Case (One)
                    {
                        VARQ = Arg2
                    }
                    Case (0x02)
                    {
                        VARR = Arg2
                    }

                }
            }

            Method (PCI0, 0, Serialized)
            {
            }

            Method (PCI1, 1, Serialized)
            {
                PCI0 ()
            }

            Method (PCI2, 1, Serialized)
            {
            }

            Method (PCI4, 0, Serialized)
            {
                Return (PCIB) /* \GSA1.PCIB */
            }

            Name (PCIB, 0xF0000000)
            Method (PCI9, 5, Serialized)
            {
                Local0 = PCIB /* \GSA1.PCIB */
                Local0 += (Arg0 << 0x14)
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Local0 += Arg3
                Return (MEM4 (Local0, Arg4))
            }

            Method (PCIA, 6, Serialized)
            {
                Local0 = PCIB /* \GSA1.PCIB */
                Local0 += (Arg0 << 0x14)
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Local0 += Arg3
                MEM5 (Local0, Arg4, Arg5)
            }

            Method (PCIE, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, Zero))
            }

            Method (PCIF, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, Zero, Arg4)
            }

            Method (PCIG, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, One))
            }

            Method (PCIH, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, One, Arg4)
            }

            Method (PCI7, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, 0x02))
            }

            Method (PCI8, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, 0x02, Arg4)
            }

            Method (PCI5, 6, Serialized)
            {
                Local0 = PCIB /* \GSA1.PCIB */
                Local0 += (Arg0 << 0x14)
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Return (MEM0 ((Local0 + Arg3), Arg4, Arg5))
            }

            Method (PCI6, 7, Serialized)
            {
                Local0 = PCIB /* \GSA1.PCIB */
                Local0 += (Arg0 << 0x14)
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                If ((MEM0 (Local0, Zero, 0x20) != Ones))
                {
                    MEM1 ((Local0 + Arg3), Arg4, Arg5, Arg6)
                }
            }

            Method (PCIC, 4, Serialized)
            {
                Local0 = (PCIB + (Arg0 << 0x14))
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Local0 += 0xE0
                OperationRegion (VARM, SystemMemory, Local0, 0x08)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VAR1,   32
                }

                BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x04), 
                    VAR2,   32
                }

                Local0 = VAR2 /* \GSA1.PCIC.VAR2 */
                Return (Local0)
            }

            Method (PCID, 5, Serialized)
            {
                Local0 = (PCIB + (Arg0 << 0x14))
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Local0 += 0xE0
                OperationRegion (VARM, SystemMemory, Local0, 0x08)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VAR1,   32
                }

                BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x04), 
                    VAR2,   32
                }

                VAR2 = Arg4
            }

            Method (PFM8, 4, Serialized)
            {
                Local1 = Arg0
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = (Arg1 + Arg2)
                Local2 = (0x20 - Local2)
                Local2 = (((Local5 << Local2) & Local5) >> Local2)
                Local2 = ((Local2 >> Arg1) << Arg1)
                Local3 = (Arg3 << Arg1)
                Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
                Return (Local4)
            }

            Method (PFM9, 3, Serialized)
            {
                Local1 = Arg0
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = ((Local1 >> Arg1) & (Local5 >> (0x20 - Arg2)
                    ))
                Return (Local2)
            }

            Name (GGGD, "AM4: X470/X570/B550/A520")
            Method (PFM0, 0, Serialized)
            {
            }

            Method (PFM1, 1, Serialized)
            {
                PFM0 ()
            }

            Method (PFM2, 1, Serialized)
            {
            }

            Name (PFMH, Package (0x04)
            {
                Buffer (0x03)
                {
                     0x02, 0xA0, 0x00                                 // ...
                }, 

                Buffer (0x03)
                {
                     0x02, 0xA2, 0x00                                 // ...
                }, 

                Buffer (0x03)
                {
                     0x02, 0xA4, 0x00                                 // ...
                }, 

                Buffer (0x03)
                {
                     0x02, 0xA6, 0x00                                 // ...
                }
            })
            Method (PFM7, 0, Serialized)
            {
                Return (RefOf (PFMH))
            }

            Method (SMBB, 0, Serialized)
            {
                Return (0x0B00)
            }

            Method (SMB8, 0, Serialized)
            {
            }

            Mutex (SME0, 0x00)
            OperationRegion (SMBI, SystemIO, 0x0B00, 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCNT,   8, 
                HCMD,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8
            }

            Method (SMBG, 1, Serialized)
            {
                SMB8 ()
            }

            Method (SMBH, 1, Serialized)
            {
            }

            Method (KILL, 0, Serialized)
            {
                HCNT |= 0x02
                HSTS |= 0xFF
            }

            Method (CMPL, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Stall (0x32)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (SRDY, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Sleep (One)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            HSTS = 0xBF
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Stall (0x32)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (SMBL, 1, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCNT = 0x40
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMBM, 1, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCNT = 0x40
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB0, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCMD = Arg1
                HCNT = 0x44
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB1, 1, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCNT = 0x44
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB2, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCMD = Arg1
                DAT0 = Arg2
                HCNT = 0x48
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB3, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCMD = Arg1
                HCNT = 0x48
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB4, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCMD = Arg1
                DAT0 = (Arg2 & 0xFF)
                DAT1 = ((Arg2 >> 0x08) & 0xFF)
                HCNT = 0x4C
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB5, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Ones)
                }

                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCMD = Arg1
                HCNT = 0x4C
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Ones)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (((DAT1 << 0x08) | DAT0))
                    }
                }

                Return (Ones)
            }

            Method (SMBK, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCMD = Arg1
                Local0 = HCNT /* \GSA1.HCNT */
                Local1 = Zero
                Local5 = SizeOf (Arg2)
                DAT0 = Local5
                While ((Local5 > Local1))
                {
                    HBDR = DerefOf (Arg2 [Local1])
                    Local1++
                }

                HCNT = 0x54
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB9, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                HSTS = 0xBF
                TXSA = Arg0
                HCMD = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCNT = 0x54
                Local5 = SizeOf (Arg2)
                While ((Local5 > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Local1++
                    If ((Local5 > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }

                    HSTS = 0x80
                }

                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMBA, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCMD = Arg1
                HCNT = 0x54
                If (CMPL ())
                {
                    If ((HSTS & 0x0C))
                    {
                        HSTS |= 0xFF
                        PIOD (0x22)
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Local6 = DAT0 /* \GSA1.DAT0 */
                        Local1 = Zero
                        While ((Local1 < Local6))
                        {
                            Arg2 [Local1] = HBDR /* \GSA1.HBDR */
                            Local1++
                        }

                        HSTS |= 0xFF
                        Return (Local6)
                    }
                }

                PIOD (0x33)
                Return (0xFFFF)
            }

            Method (SMBF, 1, Serialized)
            {
                If ((Arg0 == Zero))
                {
                    SMB2 (0x6C, Zero, Zero)
                }
                Else
                {
                    SMB2 (0x6E, Zero, Zero)
                }
            }

            Method (SMBE, 2, Serialized)
            {
                Local0 = Zero
                While ((Local0 < 0x0200))
                {
                    If ((Local0 == Zero))
                    {
                        SMBF (Zero)
                    }

                    If ((Local0 == 0x0100))
                    {
                        SMBF (One)
                    }

                    Local1 = SMB3 (Arg0, (Local0 % 0x0100))
                    If ((Local1 == 0xFFFF))
                    {
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Arg1 [Local0] = Local1
                        Local0++
                    }
                }

                SMBF (Zero)
                Return (Zero)
            }

            Method (SMAB, 0, Serialized)
            {
                Return (0x0B20)
            }

            Method (SMA8, 0, Serialized)
            {
            }

            Mutex (SME3, 0x00)
            OperationRegion (SMG0, SystemIO, 0x0B20, 0x20)
            Field (SMG0, ByteAcc, NoLock, Preserve)
            {
                SMG1,   8, 
                Offset (0x02), 
                SMG2,   8, 
                SMG3,   8, 
                SMG4,   8, 
                SMG5,   8, 
                SMG6,   8, 
                SMG7,   8
            }

            Method (SMAG, 1, Serialized)
            {
                SMA8 ()
            }

            Method (SMAH, 1, Serialized)
            {
            }

            Method (SMAK, 0, Serialized)
            {
                SMG2 |= 0x02
                SMG1 |= 0xFF
            }

            Method (SMAL, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((SMG1 & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Stall (0x32)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            SMAK ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (SMAM, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((SMG1 & 0x40))
                    {
                        Sleep (One)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            SMG1 = 0xBF
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((SMG1 & One))
                    {
                        Stall (0x32)
                        Local0--
                        If ((Local0 == Zero))
                        {
                            SMAK ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (SMAO, 1, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG2 = 0x40
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMAP, 1, Serialized)
            {
                If (SMAM ())
                {
                    Return (0xFFFF)
                }

                SMG1 = 0xBF
                SMG4 = (Arg0 | One)
                SMG2 = 0x40
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (SMG5) /* \GSA1.SMG5 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMA0, 2, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG3 = Arg1
                SMG2 = 0x44
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMA1, 1, Serialized)
            {
                If (SMAM ())
                {
                    Return (0xFFFF)
                }

                SMG1 = 0xBF
                SMG4 = (Arg0 | One)
                SMG2 = 0x44
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (SMG5) /* \GSA1.SMG5 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMA2, 3, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG3 = Arg1
                SMG5 = Arg2
                SMG2 = 0x48
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMA3, 2, Serialized)
            {
                If (SMAM ())
                {
                    Return (0xFFFF)
                }

                SMG1 = 0xBF
                SMG4 = (Arg0 | One)
                SMG3 = Arg1
                SMG2 = 0x48
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (SMG5) /* \GSA1.SMG5 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMA4, 3, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG3 = Arg1
                SMG5 = (Arg2 & 0xFF)
                SMG6 = ((Arg2 >> 0x08) & 0xFF)
                SMG2 = 0x4C
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMA5, 2, Serialized)
            {
                If (SMAM ())
                {
                    Return (Ones)
                }

                SMG1 = 0xBF
                SMG4 = (Arg0 | One)
                SMG3 = Arg1
                SMG2 = 0x4C
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Ones)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (((SMG6 << 0x08) | SMG5))
                    }
                }

                Return (Ones)
            }

            Method (SMAN, 3, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG3 = Arg1
                Local0 = SMG2 /* \GSA1.SMG2 */
                Local1 = Zero
                Local5 = SizeOf (Arg2)
                SMG5 = Local5
                While ((Local5 > Local1))
                {
                    SMG7 = DerefOf (Arg2 [Local1])
                    Local1++
                }

                SMG2 = 0x54
                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMA9, 3, Serialized)
            {
                If (SMAM ())
                {
                    Return (Zero)
                }

                SMG1 = 0xBF
                SMG4 = Arg0
                SMG3 = Arg1
                SMG5 = SizeOf (Arg2)
                Local1 = Zero
                SMG7 = DerefOf (Arg2 [Zero])
                SMG2 = 0x54
                Local5 = SizeOf (Arg2)
                While ((Local5 > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(SMG1 & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        SMAK ()
                        Return (Zero)
                    }

                    Local1++
                    If ((Local5 > Local1))
                    {
                        SMG7 = DerefOf (Arg2 [Local1])
                    }

                    SMG1 = 0x80
                }

                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (Zero)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMAA, 3, Serialized)
            {
                If (SMAM ())
                {
                    Return (0xFFFF)
                }

                SMG1 = 0xBF
                SMG4 = (Arg0 | One)
                SMG3 = Arg1
                SMG2 = 0x54
                Local0 = 0x0FA0
                While ((!(SMG1 & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    SMAK ()
                    Return (0xFFFF)
                }

                Local6 = SMG5 /* \GSA1.SMG5 */
                Arg2 [Zero] = SMG7 /* \GSA1.SMG7 */
                Local1 = One
                SMG1 = 0x80
                While ((Local1 < Local6))
                {
                    Local0 = 0x0FA0
                    While ((!(SMG1 & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        SMAK ()
                        Return ((SMG5 | 0x8000))
                    }

                    Arg2 [Local1] = SMG7 /* \GSA1.SMG7 */
                    SMG1 = 0x80
                    Local1++
                }

                If (SMAL ())
                {
                    If ((SMG1 & 0x0C))
                    {
                        SMG1 |= 0xFF
                        Return (0xFFFF)
                    }
                    Else
                    {
                        SMG1 |= 0xFF
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMM9, 1, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = Zero
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = Zero
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMMA, 1, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Release (SME3)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMMC, 2, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBL (Arg1)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (Zero)
            }

            Method (SMMD, 2, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBM (Arg1)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (0xFFFF)
            }

            Method (SMM0, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB0 (Arg1, Arg2)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (Zero)
            }

            Method (SMM1, 2, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB1 (Arg1)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (0xFFFF)
            }

            Method (SMM2, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB2 (Arg1, Arg2, Arg3)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMA2 (Arg1, Arg2, Arg3)
                    Release (SME3)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM3, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB3 (Arg1, Arg2)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMA3 (Arg1, Arg2)
                    Release (SME3)
                    Return (Local0)
                }

                Return (0xFFFF)
            }

            Method (SMM4, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB4 (Arg1, Arg2, Arg3)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMA4 (Arg1, Arg2, Arg3)
                    Release (SME3)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM5, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMB5 (Arg1, Arg2)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMA5 (Arg1, Arg2)
                    Release (SME3)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SMMB, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBK (Arg1, Arg2, Arg3)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMAN (Arg1, Arg2, Arg3)
                    Release (SME3)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM6, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBK (Arg1, Arg2, Arg3)
                    Release (SME0)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMA9 (Arg1, Arg2, Arg3)
                    Release (SME3)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM7, 3, Serialized)
            {
                Name (DATB, Buffer (0x0100){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, SMD0)
                CreateWordField (DATC, 0x02, SMD1)
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBA (Arg1, Arg2, DATB)
                    Release (SME0)
                    If ((Local0 & 0x8000))
                    {
                        SMD0 = Local0
                        SMD1 = Zero
                        Concatenate (DATC, DATB, Local1)
                    }
                    Else
                    {
                        SMD0 = Zero
                        SMD1 = Local0
                        Concatenate (DATC, DATB, Local1)
                    }

                    Return (Local1)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SME3, 0xFFFF)
                    Local0 = SMAA (Arg1, Arg2, DATB)
                    Release (SME3)
                    If ((Local0 & 0x8000))
                    {
                        SMD0 = Local0
                        SMD1 = Zero
                        Concatenate (DATC, DATB, Local1)
                    }
                    Else
                    {
                        SMD0 = Zero
                        SMD1 = Local0
                        Concatenate (DATC, DATB, Local1)
                    }

                    Return (Local1)
                }

                Return (Ones)
            }

            Method (SMM8, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SME0, 0xFFFF)
                    Local0 = SMBE (Arg1, Arg2)
                    Release (SME0)
                    Return (Local0)
                }
            }

            Method (XDP8, 1, Serialized)
            {
                Acquire (SME0, 0xFFFF)
                Local0 = (((SMB3 (Arg0, 0xFD) | (SMB3 (Arg0, 0xFC) << 0x08
                    )) | (SMB3 (Arg0, 0x6E) << 0x10)) | (SMB3 (Arg0, 0x6F) << 
                    0x18))
                Release (SME0)
                Return (Local0)
            }

            Method (XDPV, 1, Serialized)
            {
                Acquire (SME0, 0xFFFF)
                Local0 = SMB3 (Arg0, 0x6E)
                Local1 = SMB3 (Arg0, 0x6F)
                Local2 = SMB3 (Arg0, 0xFC)
                Release (SME0)
                If ((((Local0 == 0x52) && (Local1 == 0x49)) && (Local2 == 0x7C)))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (XDPU, 1, Serialized)
            {
                Acquire (SME0, 0xFFFF)
                Local0 = SMB3 (Arg0, 0x74)
                Release (SME0)
                Return (Local0)
            }

            Method (XDPE, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local1 = 0x06100050
                }
                Else
                {
                    Local1 = 0x0A100050
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                Local3 = SMB5 (Arg0, (Local1 & 0xFF))
                Release (SME0)
                Return (Local3)
            }

            Method (XDPF, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local1 = 0x06100050
                }
                Else
                {
                    Local1 = 0x0A100050
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                Local5 = Arg2
                SMB4 (Arg0, (Local1 & 0xFF), Local5)
                Release (SME0)
                Return (Zero)
            }

            Method (XDP9, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04090082
                }
                Else
                {
                    Local0 = 0x08090082
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local5 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local5)
            }

            Method (XDPA, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04090082
                    Local1 = 0x001000EC
                    Local2 = 0x000101E6
                }
                Else
                {
                    Local0 = 0x08090082
                    Local1 = 0x001000EC
                    Local2 = 0x000101E6
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local2 >> 0x18))
                Local5 = SMB3 (Arg0, (Local2 & 0xFF))
                Local5 = PFM8 (Local5, ((Local2 >> 0x08) & 0xFF), (
                    (Local2 >> 0x10) & 0xFF), Zero)
                SMB2 (Arg0, (Local2 & 0xFF), Local5)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                Local5 = SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                SMB4 (Arg0, (Local1 & 0xFF), 0xA55A)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                SMB4 (Arg0, (Local0 & 0xFF), Arg2)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                SMB4 (Arg0, (Local1 & 0xFF), Zero)
                SMB2 (Arg0, 0xFF, (Local2 >> 0x18))
                Local5 = SMB3 (Arg0, (Local2 & 0xFF))
                Local5 = PFM8 (Local5, ((Local2 >> 0x08) & 0xFF), (
                    (Local2 >> 0x10) & 0xFF), One)
                SMB2 (Arg0, (Local2 & 0xFF), Local5)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPW, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04020C82
                }
                Else
                {
                    Local0 = 0x08020C82
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local2 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SME0)
                Return (Local2)
            }

            Method (XDPX, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04020C82
                }
                Else
                {
                    Local0 = 0x08020C82
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), (Arg2 & One))
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPC, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04080054
                }
                Else
                {
                    Local0 = 0x08080054
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local2 = SMB3 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local2)
            }

            Method (XDPB, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04080054
                }
                Else
                {
                    Local0 = 0x08080054
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                SMB2 (Arg0, (Local0 & 0xFF), Arg2)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPD, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x040800B0
                }
                Else
                {
                    Local0 = 0x080800B1
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local1 = SMB3 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local1)
            }

            Method (XDPM, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04040C22
                }
                Else
                {
                    Local0 = 0x08040C22
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SME0)
                If ((Local4 & 0x08))
                {
                    Return (Local4)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (XDPN, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04040C22
                }
                Else
                {
                    Local0 = 0x08040C22
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = SMB5 (Arg0, (Local0 & 0xFF))
                If ((Arg2 == Zero))
                {
                    Local4 = PFM8 (Local4, 0x0F, One, Zero)
                }
                Else
                {
                    Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF), Arg2)
                }

                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPJ, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04040822
                }
                Else
                {
                    Local0 = 0x08040822
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SME0)
                If ((Local4 & 0x08))
                {
                    Return (Local4)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (XDPK, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x04040822
                }
                Else
                {
                    Local0 = 0x08040822
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = SMB5 (Arg0, (Local0 & 0xFF))
                If ((Arg2 == Zero))
                {
                    Local4 = PFM8 (Local4, 0x0F, One, Zero)
                }
                Else
                {
                    Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF), Arg2)
                }

                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPO, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0610008C
                }
                Else
                {
                    Local0 = 0x0A10008C
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local3)
            }

            Method (XDPP, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0610008C
                }
                Else
                {
                    Local0 = 0x0A10008C
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPY, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0610009E
                }
                Else
                {
                    Local0 = 0x0A10009E
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local3)
            }

            Method (XDPZ, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0610009E
                }
                Else
                {
                    Local0 = 0x0A10009E
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPQ, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x06100066
                }
                Else
                {
                    Local0 = 0x0A100066
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SME0)
                Return (Local3)
            }

            Method (XDPR, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x06100066
                }
                Else
                {
                    Local0 = 0x0A100066
                }

                Acquire (SME0, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SME0)
                Return (Zero)
            }

            Method (XDPS, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0004044B
                    Acquire (SME0, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    Local0 = SMB3 (Arg0, 0x4D)
                    Local1 = SMB3 (Arg0, 0x4A)
                    Local2 = SMB3 (Arg0, 0x4B)
                    Local4 = ((Local0 + (Local1 << 0x08)) + (Local2 << 0x10
                        ))
                    Release (SME0)
                }
                Else
                {
                    Local0 = 0x0004044C
                    Acquire (SME0, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    Local0 = SMB3 (Arg0, 0x4C)
                    Local4 = Local0
                    Release (SME0)
                }

                Return (Local4)
            }

            Method (XDPT, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0004044B
                    Acquire (SME0, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    SMB2 (Arg0, 0x4D, (Arg2 & 0xFF))
                    SMB2 (Arg0, 0x4A, ((Arg2 >> 0x08) & 0xFF))
                    SMB2 (Arg0, 0x4B, ((Arg2 >> 0x10) & 0xFF))
                    Release (SME0)
                }
                Else
                {
                    Local0 = 0x0004044C
                    Acquire (SME0, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    SMB2 (Arg0, 0x4C, (Arg2 & 0xFF))
                    Release (SME0)
                }

                Return (Zero)
            }

            Method (IRCU, 1, Serialized)
            {
                Return (Ones)
            }

            Method (IRCE, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCF, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRC9, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCA, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCC, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCB, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCD, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCM, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCN, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCO, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCP, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCQ, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCR, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCS, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCT, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                Return (Zero)
            }

            Method (ISM0, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMD, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMF, 2, Serialized)
            {
                If (((Arg0 & 0xFF00) == Zero))
                {
                    Arg0 += 0x0200
                }

                Local0 = 0x00080000
                Local1 = 0x000204F0
                SMM2 ((Arg0 >> 0x08), (Arg0 & 0xFF), (Local0 & 0xFF
                    ), Arg1)
                Local2 = SMM5 ((Arg0 >> 0x08), (Arg0 & 0xFF), (
                    Local1 & 0xFF))
                Local2 = PFM9 (Local2, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF))
                Return (Local2)
            }

            Method (ISMG, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x000204F0
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local2 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Local2 = PFM8 (Local2, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF), Arg2)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), Local2)
                Return (Zero)
            }

            Method (ISM5, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100028
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISM6, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100028
                Local2 = 0x000800E7
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                SMM2 (0x02, Arg0, (Local2 & 0xFF), One)
                Return (Zero)
            }

            Method (ISME, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x0010008B
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, (Local1 & 0xFF)))
            }

            Method (ISM4, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100023
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, (Local1 & 0xFF)))
            }

            Method (ISM3, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100023
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISM2, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100021
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, (Local1 & 0xFF)))
            }

            Method (ISM1, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100021
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISM7, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100055
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISM8, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100055
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISM9, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x0010005B
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMA, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x0010005B
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMH, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100042
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMI, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100042
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMJ, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100046
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMK, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100046
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISML, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x001000E6
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMM, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x001000E6
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMN, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100042
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMO, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100042
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMP, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100046
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMQ, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100046
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMR, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x001000EA
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMS, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x001000EA
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMT, 2, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100033
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
                Return (Local3)
            }

            Method (ISMU, 3, Serialized)
            {
                Local0 = 0x00080000
                Local1 = 0x00100033
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local1 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISMV, 2, Serialized)
            {
                Local0 = 0x001000C5
                Local1 = 0x001000C7
                SMM4 (0x02, Arg0, (Local1 & 0xFF), Arg1)
                Local3 = SMM5 (0x02, Arg0, (Local0 & 0xFF))
                Return (Local3)
            }

            Method (ISMW, 3, Serialized)
            {
                Local0 = 0x001000C5
                Local1 = 0x001000C7
                SMM4 (0x02, Arg0, (Local1 & 0xFF), Arg1)
                SMM4 (0x02, Arg0, (Local0 & 0xFF), (Arg2 & 0xFFFF))
                Return (Zero)
            }

            Method (ISK0, 1, Serialized)
            {
                If (ISMD (Arg0))
                {
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (ISK5, 2, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (ISM5 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK6, 3, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    ISM6 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK4, 2, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (ISM4 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK3, 3, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    ISM3 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK2, 2, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (ISM2 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK1, 3, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    ISM1 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK7, 2, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (ISM7 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK8, 3, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    ISM8 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK9, 2, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (ISM9 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISKA, 3, Serialized)
            {
                Local0 = ISK0 (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    ISMA (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (NCT0, 1, Serialized)
            {
                Return ((SMM3 (0x02, Arg0, 0x5D) | (SMM3 (0x02, Arg0, 0x5E) << 0x08
                    )))
            }

            Method (NCT1, 2, Serialized)
            {
                Return (SMM3 (0x02, Arg0, Arg1))
            }

            Method (NCT2, 3, Serialized)
            {
                Local1 = SMM2 (0x02, Arg0, Arg1, Arg2)
                Return (Local1)
            }

            Name (SIOG, 0x0A45)
            OperationRegion (SIO1, SystemIO, SIOG, 0x02)
            Field (SIO1, ByteAcc, Lock, WriteAsZeros)
            {
                SIO2,   8, 
                SIO3,   8
            }

            IndexField (SIO2, SIO3, ByteAcc, Lock, Preserve)
            {
                Offset (0x0B), 
                FTD1,   3, 
                FTD2,   3, 
                Offset (0x0D), 
                FTA1,   8, 
                FTA2,   8, 
                FTA3,   8, 
                Offset (0x13), 
                FAE1,   1, 
                FAE2,   1, 
                FAE3,   1, 
                REV1,   1, 
                FTE1,   1, 
                FTE2,   1, 
                FTE3,   1, 
                Offset (0x14), 
                FBE1,   1, 
                FBE2,   1, 
                FBE3,   1, 
                REV2,   4, 
                Offset (0x15), 
                FP10,   7, 
                FP17,   1, 
                FP20,   7, 
                FP27,   1, 
                FP30,   7, 
                FP37,   1, 
                FTB1,   8, 
                FTB2,   8, 
                FTB3,   8, 
                Offset (0x29), 
                FET1,   8, 
                FET2,   8, 
                FET3,   8, 
                FET4,   8, 
                FET5,   8, 
                FET6,   8, 
                Offset (0x44), 
                BEEP,   8, 
                Offset (0x4C), 
                FTA6,   8, 
                FTB6,   8, 
                Offset (0x5C), 
                FBEC,   3, 
                Offset (0x60), 
                FC10,   8, 
                FC11,   8, 
                FC12,   8, 
                FC13,   8, 
                FC14,   8, 
                FC15,   8, 
                FC16,   8, 
                FC17,   8, 
                FC20,   8, 
                FC21,   8, 
                FC22,   8, 
                FC23,   8, 
                FC24,   8, 
                FC25,   8, 
                FC26,   8, 
                FC27,   8, 
                FC30,   8, 
                FC31,   8, 
                FC32,   8, 
                FC33,   8, 
                FC34,   8, 
                FC35,   8, 
                FC36,   8, 
                FC37,   8, 
                FC40,   8, 
                FC41,   8, 
                FC42,   8, 
                FC43,   8, 
                FC44,   8, 
                FC45,   8, 
                FC46,   8, 
                FC47,   8, 
                FTA4,   8, 
                FTB4,   8, 
                FTA5,   8, 
                FTB5,   8, 
                Offset (0xA0), 
                FC50,   8, 
                FC51,   8, 
                FC52,   8, 
                FC53,   8, 
                FC54,   8, 
                FC55,   8, 
                FC56,   8, 
                FC57,   8, 
                FC60,   8, 
                FC61,   8, 
                FC62,   8, 
                FC63,   8, 
                FC64,   8, 
                FC65,   8, 
                FC66,   8, 
                FC67,   8
            }

            Method (SIOE, 0, NotSerialized)
            {
                Return (FBEC) /* \GSA1.FBEC */
            }

            Method (SIOF, 1, NotSerialized)
            {
                FBEC = Arg0
            }

            Method (SIOA, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        FBE1 = Zero
                        FAE1 = Zero
                    }
                    Case (One)
                    {
                        FBE2 = Zero
                        FAE2 = Zero
                    }
                    Case (0x02)
                    {
                        FBE3 = Zero
                        FAE3 = Zero
                    }

                }
            }

            Method (SIO9, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        FBE1 = Zero
                        FAE1 = One
                    }
                    Case (One)
                    {
                        FBE2 = Zero
                        FAE2 = One
                    }
                    Case (0x02)
                    {
                        FBE3 = Zero
                        FAE3 = One
                    }

                }
            }

            Method (SIOD, 1, Serialized)
            {
                Local1 = Zero
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        If (((FBE1 == Zero) && (FAE1 == Zero)))
                        {
                            Local1 = One
                        }
                    }
                    Case (One)
                    {
                        If (((FBE2 == Zero) && (FAE2 == Zero)))
                        {
                            Local1 = One
                        }
                    }
                    Case (0x02)
                    {
                        If (((FBE3 == Zero) && (FAE3 == Zero)))
                        {
                            Local1 = One
                        }
                    }

                }

                Return (Local1)
            }

            Method (SIO0, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FET1) /* \GSA1.FET1 */
                    }
                    Case (One)
                    {
                        Return (FET2) /* \GSA1.FET2 */
                    }
                    Case (0x02)
                    {
                        Return (FET3) /* \GSA1.FET3 */
                    }
                    Case (0x03)
                    {
                        Return (FET4) /* \GSA1.FET4 */
                    }
                    Case (0x04)
                    {
                        Return (FET5) /* \GSA1.FET5 */
                    }
                    Case (0x05)
                    {
                        Return (FET6) /* \GSA1.FET6 */
                    }

                }
            }

            Method (SIO4, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (((FTB1 << 0x08) | FTA1))
                    }
                    Case (One)
                    {
                        Return (((FTB2 << 0x08) | FTA2))
                    }
                    Case (0x02)
                    {
                        Return (((FTB3 << 0x08) | FTA3))
                    }
                    Case (0x03)
                    {
                        Return (((FTB4 << 0x08) | FTA4))
                    }
                    Case (0x04)
                    {
                        Return (((FTB5 << 0x08) | FTA5))
                    }
                    Case (0x05)
                    {
                        Return (((FTB6 >> 0x08) | FTA6))
                    }

                }
            }

            Method (SIOC, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        FP10 = Arg1
                    }
                    Case (One)
                    {
                        FP20 = Arg1
                    }
                    Case (0x02)
                    {
                        FP30 = Arg1
                    }

                }
            }

            Method (SIOB, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FP10) /* \GSA1.FP10 */
                    }
                    Case (One)
                    {
                        Return (FP20) /* \GSA1.FP20 */
                    }
                    Case (0x02)
                    {
                        Return (FP30) /* \GSA1.FP30 */
                    }

                }

                Return (Zero)
            }

            Method (SIO7, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC10) /* \GSA1.FC10 */
                    }
                    Case (One)
                    {
                        Return (FC20) /* \GSA1.FC20 */
                    }
                    Case (0x02)
                    {
                        Return (FC30) /* \GSA1.FC30 */
                    }
                    Case (0x03)
                    {
                        Return (FC40) /* \GSA1.FC40 */
                    }
                    Case (0x04)
                    {
                        Return (FC50) /* \GSA1.FC50 */
                    }
                    Case (0x05)
                    {
                        Return (FC60) /* \GSA1.FC60 */
                    }

                }

                Return (Zero)
            }

            Method (SIO5, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC11) /* \GSA1.FC11 */
                    }
                    Case (One)
                    {
                        Return (FC21) /* \GSA1.FC21 */
                    }
                    Case (0x02)
                    {
                        Return (FC31) /* \GSA1.FC31 */
                    }
                    Case (0x03)
                    {
                        Return (FC41) /* \GSA1.FC41 */
                    }
                    Case (0x04)
                    {
                        Return (FC51) /* \GSA1.FC51 */
                    }
                    Case (0x05)
                    {
                        Return (FC61) /* \GSA1.FC61 */
                    }

                }

                Return (Zero)
            }

            Method (SIO8, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        FC10 = Arg1
                    }
                    Case (One)
                    {
                        FC20 = Arg1
                    }
                    Case (0x02)
                    {
                        FC30 = Arg1
                    }
                    Case (0x03)
                    {
                        FC40 = Arg1
                    }
                    Case (0x04)
                    {
                        FC50 = Arg1
                    }
                    Case (0x05)
                    {
                        FC60 = Arg1
                    }

                }
            }

            Method (SIO6, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        FC11 = Arg1
                    }
                    Case (One)
                    {
                        FC21 = Arg1
                    }
                    Case (0x02)
                    {
                        FC31 = Arg1
                    }
                    Case (0x03)
                    {
                        FC41 = Arg1
                    }
                    Case (0x04)
                    {
                        FC51 = Arg1
                    }
                    Case (0x05)
                    {
                        FC61 = Arg1
                    }

                }
            }

            Name (DIC3, Package (0x04)
            {
                Buffer (0x04)
                {
                     0x09, 0x09, 0x01, 0x07                           // ....
                }, 

                Buffer (0x04)
                {
                     0x04, 0x04, 0x02, 0x07                           // ....
                }, 

                Buffer (0x04)
                {
                     0x01, 0x01, 0x02, 0x01                           // ....
                }, 

                Buffer (0x04)
                {
                     0x00, 0x01, 0x02, 0x01                           // ....
                }
            })
            Method (DIM0, 0, Serialized)
            {
                Local2 = PFM7 ()
                Local7 = DerefOf (Local2)
                Local0 = SizeOf (Local7)
                Local1 = Zero
                While ((Local1 < Local0))
                {
                    Local5 = DerefOf (DerefOf (Local7 [Local1]) [Zero])
                    Local6 = DerefOf (DerefOf (Local7 [Local1]) [One])
                    Local4 = Zero
                    If ((SMM3 (Local5, Local6, Zero) != 0xFFFF))
                    {
                        Local4 = One
                        If ((SMM3 (Local5, ((Local6 & 0x0F) | 0x30), 
                            Zero) != 0xFFFF))
                        {
                            Local4 |= 0x04
                        }
                    }

                    DerefOf (DerefOf (Local2) [Local1]) [0x02] = Local4
                    Local1++
                }
            }

            Method (DIM6, 1, Serialized)
            {
                Return ("KingStone")
            }

            Method (DIMC, 0, Serialized)
            {
                Name (DIMG, Buffer (0x03){})
                Local2 = PFM7 ()
                Local7 = DerefOf (Local2)
                Local0 = SizeOf (Local7)
                Local1 = Zero
                While ((Local1 < Local0))
                {
                    Local4 = DerefOf (DerefOf (Local7 [Local1]) [0x02])
                    Local5 = (One << Local1)
                    If ((Local4 & One))
                    {
                        DIMG [Zero] = (DerefOf (DIMG [Zero]) | Local5
                            )
                    }

                    If ((Local4 & 0x02))
                    {
                        DIMG [One] = (DerefOf (DIMG [One]) | Local5
                            )
                    }

                    If ((Local4 & 0x04))
                    {
                        DIMG [0x02] = (DerefOf (DIMG [0x02]) | Local5
                            )
                    }

                    Local1++
                }

                Return (DIMG) /* \GSA1.DIMC.DIMG */
            }

            Method (DIMD, 1, Serialized)
            {
                Local2 = PFM7 ()
                Local7 = DerefOf (Local2)
                If ((Arg0 < SizeOf (Local7)))
                {
                    Local5 = DerefOf (DerefOf (Local7 [Arg0]) [Zero])
                    Local6 = ((DerefOf (DerefOf (Local7 [Arg0]) [One]) & 
                        0x0F) | 0x30)
                    Local4 = DerefOf (DerefOf (Local7 [Arg0]) [0x02])
                    If ((Local4 & 0x04))
                    {
                        Return ((SMM5 (Local5, Local6, 0x05) & 0x1FFF))
                    }
                }

                Return (Ones)
            }

            Method (DIM1, 1, Serialized)
            {
                Name (DATB, Buffer (0x0200){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, DIM8)
                CreateWordField (DATC, 0x02, DIM9)
                Local2 = PFM7 ()
                Local7 = DerefOf (Local2)
                If ((Arg0 < SizeOf (Local7)))
                {
                    Local0 = SMM8 (DerefOf (DerefOf (Local7 [Arg0]) [Zero]), 
                        DerefOf (DerefOf (Local7 [Arg0]) [One]), DATB)
                    If ((Local0 == Zero))
                    {
                        DIM8 = Zero
                        DIM9 = 0x0200
                        Concatenate (DATC, DATB, Local1)
                        Return (Local1)
                    }
                }

                DIM8 = 0xFFFF
                DIM9 = Zero
                Concatenate (DATC, DATB, Local1)
                Return (Local1)
            }

            Name (EVT1, Zero)
            Method (EVT0, 0, Serialized)
            {
            }

            Method (EVT2, 1, Serialized)
            {
                EVT1 = Arg0
                Notify (\GSA1, 0xE2) // Hardware-Specific
            }

            Name (GGGA, Package (0x05)
            {
                "F61a", 
                "X470 AORUS ULTRA GAMING", 
                "X470AORUSULTRAGAMING", 
                "8A06BG0Z", 
                0x01000000
            })
            Name (GGGB, "20210322")
            Name (GGGC, Zero)
            Method (GGG1, 0, Serialized)
            {
                Return (GGGB) /* \GSA1.GGGB */
            }

            Method (GGG2, 0, Serialized)
            {
                Return (GGGD) /* \GSA1.GGGD */
            }

            Method (GGG3, 0, Serialized)
            {
                Return (DerefOf (GGGA [0x03]))
            }

            Method (GGG4, 0, Serialized)
            {
                Return (DerefOf (GGGA [Zero]))
            }

            Method (GGG5, 0, Serialized)
            {
                Return (DerefOf (GGGA [One]))
            }

            Method (GGG6, 0, Serialized)
            {
                Return (DerefOf (GGGA [0x04]))
            }

            Method (GGG7, 0, Serialized)
            {
                Return (GGG9 (Zero))
            }

            Method (GGG8, 0, Serialized)
            {
                Return (GGGB) /* \GSA1.GGGB */
            }

            Method (GGG9, 1, Serialized)
            {
                Local0 = Zero
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Local0 = GGGC /* \GSA1.GGGC */
                    }
                    Case (0x04)
                    {
                        Local0 = 0x3108090B
                    }
                    Case (0x08)
                    {
                        Local0 = 0x0190005F
                    }
                    Case (0x10)
                    {
                        Local0 = CPEX /* \GSA1.CPEX */
                    }
                    Case (0x14)
                    {
                        Local0 = 0x20210101
                    }
                    Case (0x18)
                    {
                        Local0 = 0xFFE20000
                    }
                    Case (0x1C)
                    {
                        Local0 = 0xFF000000
                    }

                }

                Return (Local0)
            }

            Name (GGGL, Package (0x16)
            {
                0x23A1, 
                0x1FBE, 
                0x1C48, 
                0x1AB1, 
                0x17C8, 
                0x1530, 
                0x12E0, 
                0x11D1, 
                0x0FDF, 
                0x0E24, 
                0x0D59, 
                0x0BE4, 
                0x0A98, 
                0x0970, 
                0x08E8, 
                0x07F0, 
                0x0712, 
                0x06AC, 
                0x05F2, 
                0x054C, 
                0x04B8, 
                0x0474
            })
            Method (GGGH, 3, Serialized)
            {
                Local0 = 0x11D1
                If ((Arg0 == 0x03))
                {
                    Local5 = SizeOf (GGGL)
                    Local0 = Zero
                    If (((Arg1 > Zero) && (Arg1 <= Local5)))
                    {
                        Local0 = DerefOf (GGGL [(Arg1 - One)])
                    }

                    Local1 = Arg2
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Local0 = Arg1
                    Local1 = Arg2
                }
                ElseIf ((Arg0 == 0x04))
                {
                    Local0 = ((0x001234DE + (Arg1 >> One)) / Arg1)
                    Local1 = Arg2
                }
                ElseIf ((Arg0 == One))
                {
                    Local0 = 0x11D1
                    Local1 = 0x03E8
                }
                ElseIf ((Arg0 == Zero))
                {
                    Local0 = 0x11D1
                    Local1 = 0x03E8
                }

                If (Local0)
                {
                    PIO7 (0x53, Zero, 0xB6)
                    PIO7 (0x52, Zero, (Local0 & 0xFF))
                    PIO7 (0x52, Zero, ((Local0 >> 0x08) & 0xFF))
                    PIO7 (0x61, Zero, (PIO6 (0x61, Zero) | 0x03))
                    Sleep (Local1)
                    PIO7 (0x61, Zero, (PIO6 (0x61, Zero) & 0xFC))
                }
                Else
                {
                    Sleep (Local1)
                }
            }

            OperationRegion (DBS0, SystemIO, 0x2E, 0x02)
            Field (DBS0, ByteAcc, NoLock, Preserve)
            {
                DBS1,   8, 
                DBS2,   8
            }

            IndexField (DBS1, DBS2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                DBS4,   8, 
                Offset (0xEF), 
                DBS8,   1, 
                DBS9,   1
            }

            Mutex (DBS3, 0x00)
            Method (DBS5, 1, NotSerialized)
            {
                Acquire (DBS3, 0xFFFF)
                DBS1 = 0x87
                DBS1 = One
                DBS1 = 0x55
                If (Ones)
                {
                    DBS1 = 0x55
                }
                Else
                {
                    DBS1 = 0xAA
                }

                DBS4 = Arg0
            }

            Method (DBS6, 0, NotSerialized)
            {
                DBS1 = 0x02
                DBS2 = 0x02
                Release (DBS3)
            }

            Method (GGGG, 0, Serialized)
            {
                DBS5 (0x07)
                Local0 = DBS9 /* \GSA1.DBS9 */
                DBS6 ()
                Return (Local0)
            }

            Method (GGGE, 0, Serialized)
            {
                DBS5 (0x07)
                Local0 = DBS8 /* \GSA1.DBS8 */
                DBS6 ()
                Return (Local0)
            }

            Method (GGGF, 1, Serialized)
            {
                DBS5 (0x07)
                DBS8 = Arg0
                Local0 = DBS8 /* \GSA1.DBS8 */
                DBS6 ()
                Return (Local0)
            }

            Method (MPTS, 1, NotSerialized)
            {
            }

            Method (MWAK, 1, NotSerialized)
            {
                PFM1 (Arg0)
            }

            OperationRegion (GGGT, SystemMemory, 0x3C9C4B18, 0x0100)
            Field (GGGT, DWordAcc, Lock, Preserve)
            {
                Offset (0x04), 
                CPEX,   32, 
                PGRV,   8, 
                CCNT,   8, 
                E8CV,   8
            }

            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "GSADEV0")  // _UID: Unique ID
            Name (MARK, "Mark Tsai<mark@gigabyte.com><marktsai0316@gmail.com>")
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If ((GGGG () == One))
                {
                    GGGC = (GGGC | 0x00040000)
                }

                PFM0 ()
                GGGC = (GGGC | 0x10)
                GGGC = (GGGC | 0x20)
                GGGC = (GGGC | 0x40)
                GGGC = (GGGC | 0x80)
                GGGC = (GGGC | 0x0800)
                EVT0 ()
                DIM0 ()
            }

            Method (_WDG, 0, Serialized)
            {
                Return (QWDG) /* \GSA1.QWDG */
            }

            Name (QWDG, Buffer (0x50)
            {
                /* 0000 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0008 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0010 */  0x43, 0x43, 0x01, 0x00, 0xEF, 0xBE, 0xAD, 0xDE,  // CC......
                /* 0018 */  0x00, 0x10, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x41, 0x41, 0x01, 0x01,  // )...AA..
                /* 0028 */  0xEF, 0xBE, 0xAD, 0xDE, 0x01, 0x20, 0x00, 0x00,  // ..... ..
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0038 */  0x42, 0x42, 0x01, 0x02, 0xEF, 0xBE, 0xAD, 0xDE,  // BB......
                /* 0040 */  0x02, 0x40, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,  // .@......
                /* 0048 */  0x29, 0x10, 0x00, 0x00, 0xE2, 0x00, 0x01, 0x08   // ).......
            })
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Name (WQCC, Buffer (0x2984)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x74, 0x29, 0x00, 0x00, 0x1C, 0xC0, 0x01, 0x00,  // t)......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0x30, 0x97, 0x01, 0x01, 0x08, 0x09, 0x42,  // .0.....B
                /* 0020 */  0x58, 0x09, 0x84, 0xC4, 0x39, 0xA0, 0x10, 0x81,  // X...9...
                /* 0028 */  0xE4, 0x13, 0x49, 0x0E, 0x0C, 0x4A, 0x02, 0x88,  // ..I..J..
                /* 0030 */  0xE4, 0x40, 0xC8, 0x05, 0x13, 0x13, 0x20, 0x02,  // .@.... .
                /* 0038 */  0x42, 0x5E, 0x05, 0xD8, 0x14, 0x60, 0x12, 0x44,  // B^...`.D
                /* 0040 */  0xFD, 0xFB, 0x43, 0x94, 0x06, 0x45, 0x09, 0x2C,  // ..C..E.,
                /* 0048 */  0x04, 0x42, 0x32, 0x05, 0xF8, 0x16, 0xE0, 0x58,  // .B2....X
                /* 0050 */  0x80, 0x61, 0x01, 0xB2, 0x05, 0x58, 0x86, 0x22,  // .a...X."
                /* 0058 */  0xA8, 0x9D, 0x0A, 0x90, 0x2B, 0x40, 0x98, 0x00,  // ....+@..
                /* 0060 */  0xF1, 0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0x84, 0x83,  // ...h....
                /* 0068 */  0x46, 0x89, 0x81, 0x90, 0x44, 0x58, 0x39, 0xC7,  // F...DX9.
                /* 0070 */  0x96, 0x72, 0x01, 0xA6, 0x05, 0x08, 0x17, 0x20,  // .r..... 
                /* 0078 */  0x1D, 0x43, 0x23, 0xA8, 0x1B, 0x4C, 0x52, 0x05,  // .C#..LR.
                /* 0080 */  0x88, 0x86, 0x11, 0x5A, 0x41, 0x70, 0x1A, 0xC4,  // ...ZAp..
                /* 0088 */  0x51, 0x44, 0x09, 0xC3, 0xF0, 0x8C, 0x19, 0x28,  // QD.....(
                /* 0090 */  0x5C, 0x90, 0x48, 0x86, 0x09, 0x7A, 0x02, 0x41,  // \.H..z.A
                /* 0098 */  0x4A, 0xC6, 0x90, 0x66, 0x2C, 0x02, 0x71, 0x06,  // J..f,.q.
                /* 00A0 */  0x1C, 0x2B, 0x46, 0xA8, 0x90, 0x98, 0x81, 0x04,  // .+F.....
                /* 00A8 */  0x3F, 0x81, 0xAE, 0x31, 0xE4, 0x19, 0x88, 0x58,  // ?..1...X
                /* 00B0 */  0x9F, 0x80, 0x40, 0xA2, 0x47, 0x09, 0x6E, 0x5C,  // ..@.G.n\
                /* 00B8 */  0xA3, 0xB2, 0x31, 0x9D, 0x0D, 0x6E, 0x60, 0x26,  // ..1..n`&
                /* 00C0 */  0x88, 0x73, 0x78, 0x18, 0x19, 0x10, 0x9A, 0x40,  // .sx....@
                /* 00C8 */  0xFC, 0xD8, 0xE1, 0x13, 0xD8, 0xFD, 0x0C, 0x65,  // .......e
                /* 00D0 */  0x51, 0x80, 0x41, 0x0C, 0x29, 0x04, 0x11, 0x42,  // Q.A.)..B
                /* 00D8 */  0x8D, 0x02, 0x6C, 0x0D, 0x56, 0xC6, 0x20, 0x84,  // ..l.V. .
                /* 00E0 */  0x10, 0xC5, 0x08, 0x0C, 0x85, 0x61, 0x46, 0xB1,  // .....aF.
                /* 00E8 */  0xC3, 0x39, 0x0B, 0xA4, 0x36, 0x01, 0xCA, 0x40,  // .9..6..@
                /* 00F0 */  0x04, 0xCA, 0x10, 0x98, 0xFD, 0x41, 0x90, 0x40,  // .....A.@
                /* 00F8 */  0xE7, 0x01, 0xFD, 0x08, 0x2C, 0x09, 0x44, 0x46,  // ....,.DF
                /* 0100 */  0xB6, 0x94, 0x80, 0x1C, 0x06, 0x12, 0x1C, 0x8E,  // ........
                /* 0108 */  0x27, 0xD2, 0xFC, 0xCC, 0x34, 0x2A, 0x26, 0x01,  // '...4*&.
                /* 0110 */  0x50, 0x1A, 0x40, 0x24, 0x0A, 0x42, 0xBF, 0x03,  // P.@$.B..
                /* 0118 */  0x2A, 0x40, 0xCA, 0xC9, 0x80, 0xD8, 0x1E, 0x97,  // *@......
                /* 0120 */  0xE6, 0x74, 0x80, 0xA7, 0xEE, 0xBB, 0xC1, 0x99,  // .t......
                /* 0128 */  0xF9, 0xAC, 0xE0, 0x2D, 0xF8, 0xFF, 0x7F, 0x46,  // ...-...F
                /* 0130 */  0xE0, 0x63, 0xF0, 0x50, 0x0F, 0x21, 0xE0, 0x11,  // .c.P.!..
                /* 0138 */  0xB2, 0x43, 0x82, 0x01, 0xF1, 0xDE, 0x6F, 0x05,  // .C....o.
                /* 0140 */  0x64, 0x2E, 0x06, 0x64, 0x07, 0x85, 0xE7, 0x03,  // d..d....
                /* 0148 */  0xB0, 0x4C, 0xF2, 0x34, 0x8F, 0xA1, 0xE2, 0xA9,  // .L.4....
                /* 0150 */  0x21, 0x8E, 0x04, 0x7C, 0x2A, 0x27, 0xC5, 0x08,  // !..|*'..
                /* 0158 */  0x7C, 0x8C, 0xF0, 0xE8, 0xF8, 0x28, 0x7C, 0x76,  // |....(|v
                /* 0160 */  0x38, 0xED, 0x62, 0x8F, 0x10, 0x54, 0xD6, 0x31,  // 8.b..T.1
                /* 0168 */  0x02, 0x3D, 0xF7, 0x23, 0x0C, 0xF8, 0xD2, 0xD0,  // .=.#....
                /* 0170 */  0xAC, 0x00, 0xA1, 0xF7, 0x00, 0x11, 0xBC, 0x0E,  // ........
                /* 0178 */  0xF8, 0xC6, 0x60, 0x71, 0x30, 0x3A, 0x51, 0xE0,  // ..`q0:Q.
                /* 0180 */  0x87, 0x6E, 0xBF, 0x02, 0x10, 0x42, 0x9F, 0xDB,  // .n...B..
                /* 0188 */  0x49, 0x3C, 0x50, 0x44, 0x48, 0xD0, 0x23, 0x86,  // I<PDH.#.
                /* 0190 */  0x60, 0xCE, 0x2A, 0xD6, 0x01, 0x3C, 0x09, 0x24,  // `.*..<.$
                /* 0198 */  0x28, 0x70, 0x88, 0x68, 0x68, 0xAE, 0x13, 0x53,  // (p.hh..S
                /* 01A0 */  0x43, 0x39, 0x91, 0xB8, 0x41, 0xA3, 0x9C, 0xC0,  // C9..A...
                /* 01A8 */  0xB1, 0x78, 0x9C, 0xC7, 0xF7, 0xD8, 0xE0, 0x23,  // .x.....#
                /* 01B0 */  0xC6, 0x39, 0xBF, 0x05, 0x78, 0x70, 0x9C, 0xC0,  // .9..xp..
                /* 01B8 */  0x12, 0x1F, 0x1E, 0x3E, 0x7B, 0x50, 0x51, 0x30,  // ...>{PQ0
                /* 01C0 */  0xA8, 0xE3, 0x07, 0xE0, 0xE6, 0xFF, 0x7F, 0xFC,  // ........
                /* 01C8 */  0x00, 0x2C, 0x41, 0x3C, 0x7E, 0x80, 0x33, 0x96,  // .,A<~.3.
                /* 01D0 */  0x82, 0xF3, 0x00, 0x3B, 0x7E, 0x00, 0xDC, 0xF8,  // ...;~...
                /* 01D8 */  0xFF, 0x1F, 0x3F, 0xB8, 0x8C, 0x91, 0x1B, 0x96,  // ..?.....
                /* 01E0 */  0x8E, 0xDC, 0xC0, 0xBE, 0x4D, 0x9C, 0x89, 0x21,  // ....M..!
                /* 01E8 */  0x1E, 0x14, 0x4C, 0xE0, 0xD0, 0x10, 0xB2, 0x30,  // ..L....0
                /* 01F0 */  0x74, 0xD0, 0x7C, 0x07, 0x34, 0x74, 0x40, 0xC6,  // t.|.4t@.
                /* 01F8 */  0x09, 0x06, 0xB8, 0x61, 0x3C, 0xC1, 0x00, 0x93,  // ...a<...
                /* 0200 */  0xF0, 0x67, 0x04, 0x54, 0x5C, 0x18, 0x14, 0x81,  // .g.T\...
                /* 0208 */  0xA3, 0x1E, 0x07, 0xE8, 0xC8, 0x3C, 0x30, 0xF8,  // .....<0.
                /* 0210 */  0x07, 0x19, 0x36, 0x97, 0xDA, 0x27, 0xAD, 0x61,  // ..6..'.a
                /* 0218 */  0x9A, 0xC0, 0x23, 0x83, 0xF3, 0xFF, 0x1F, 0x19,  // ..#.....
                /* 0220 */  0xB8, 0xE6, 0x7E, 0x00, 0x98, 0xE3, 0x84, 0x07,  // ..~.....
                /* 0228 */  0xC0, 0xC1, 0x5B, 0xBD, 0x01, 0x10, 0xA5, 0x13,  // ..[.....
                /* 0230 */  0x42, 0x12, 0x84, 0x33, 0xD6, 0xDB, 0xCD, 0x19,  // B..3....
                /* 0238 */  0xBC, 0x1C, 0xF8, 0x28, 0x63, 0x8C, 0xF7, 0x83,  // ...(c...
                /* 0240 */  0xA3, 0xC2, 0x9E, 0x7F, 0x10, 0x47, 0x39, 0x94,  // .....G9.
                /* 0248 */  0xA8, 0xD3, 0x1C, 0x40, 0xA4, 0xCB, 0x0F, 0xEE,  // ...@....
                /* 0250 */  0xFC, 0x03, 0xEB, 0xFF, 0x7F, 0xFE, 0x81, 0x78,  // .......x
                /* 0258 */  0x9A, 0x03, 0xA8, 0x72, 0x0C, 0xC1, 0x1D, 0x5E,  // ...r...^
                /* 0260 */  0xC0, 0x71, 0x61, 0xC0, 0x1D, 0x4B, 0x80, 0x03,  // .qa..K..
                /* 0268 */  0x3C, 0x17, 0x78, 0xFC, 0x40, 0x49, 0x3A, 0x81,  // <.x.@I:.
                /* 0270 */  0x80, 0xE6, 0xFF, 0x7F, 0x02, 0x01, 0x58, 0x72,  // ......Xr
                /* 0278 */  0xA0, 0x03, 0x6B, 0xA8, 0x13, 0x08, 0x15, 0x74,  // ..k....t
                /* 0280 */  0x02, 0x81, 0xFE, 0xEC, 0xF0, 0x09, 0x04, 0xB8,  // ........
                /* 0288 */  0x8A, 0x1C, 0x31, 0xEA, 0xFF, 0x7F, 0x3E, 0x80,  // ..1...>.
                /* 0290 */  0x6B, 0x6D, 0x94, 0x9A, 0xE6, 0x1B, 0x08, 0xF6,  // km......
                /* 0298 */  0x00, 0x02, 0x8E, 0xF7, 0x9A, 0x0F, 0x20, 0xC0,  // ...... .
                /* 02A0 */  0x0C, 0xE4, 0xC8, 0xCE, 0xE8, 0xAC, 0xF9, 0x01,  // ........
                /* 02A8 */  0x04, 0xB8, 0x08, 0x7A, 0xE7, 0xF9, 0xF4, 0xC1,  // ...z....
                /* 02B0 */  0x61, 0x70, 0x07, 0x10, 0x40, 0xED, 0xFF, 0xFF,  // ap..@...
                /* 02B8 */  0x00, 0x02, 0x2C, 0x6F, 0x10, 0x0F, 0x20, 0xE0,  // ..,o.. .
                /* 02C0 */  0x0C, 0xF1, 0x8E, 0xD0, 0x8F, 0xC0, 0xC1, 0x8F,  // ........
                /* 02C8 */  0xF5, 0xF4, 0x5C, 0x09, 0x37, 0xE6, 0xB9, 0x12,  // ..\.7...
                /* 02D0 */  0x54, 0x27, 0x10, 0xE0, 0x70, 0xD0, 0xC0, 0x1D,  // T'..p...
                /* 02D8 */  0x10, 0xE0, 0x12, 0xF8, 0x24, 0xED, 0x33, 0x07,  // ....$.3.
                /* 02E0 */  0x38, 0x4E, 0x57, 0x26, 0xF0, 0x60, 0xE1, 0x9C,  // 8NW&.`..
                /* 02E8 */  0x22, 0x9E, 0xFE, 0x7C, 0x17, 0x78, 0x2D, 0xF0,  // "..|.x-.
                /* 02F0 */  0x60, 0xC1, 0x77, 0x26, 0x85, 0xFB, 0xFF, 0x1F,  // `.w&....
                /* 02F8 */  0x2C, 0xE0, 0xE0, 0xE0, 0x03, 0x5C, 0x0E, 0x43,  // ,....\.C
                /* 0300 */  0xE4, 0xE0, 0x03, 0xC8, 0x9F, 0x7E, 0xF8, 0x77,  // .....~.w
                /* 0308 */  0x95, 0x08, 0xE7, 0xE5, 0x83, 0x00, 0x3B, 0xF8,  // ......;.
                /* 0310 */  0xC0, 0xFD, 0xFF, 0x1F, 0x7C, 0x00, 0x16, 0x3A,  // ....|..:
                /* 0318 */  0x3B, 0xF8, 0x00, 0xF1, 0xFF, 0xFF, 0xC1, 0x07,  // ;.......
                /* 0320 */  0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x03, 0xDC, 0x2E,  // ........
                /* 0328 */  0x17, 0xBE, 0x5E, 0x3C, 0xA5, 0xBC, 0xF8, 0xC0,  // ..^<....
                /* 0330 */  0x3B, 0xF8, 0x40, 0x7C, 0xC4, 0xE8, 0xE0, 0x03,  // ;.@|....
                /* 0338 */  0x0C, 0xE7, 0xC5, 0x06, 0x80, 0x3F, 0xF8, 0x00,  // .....?..
                /* 0340 */  0xBE, 0xFF, 0xFF, 0x07, 0x1F, 0xC0, 0xD2, 0x70,  // .......p
                /* 0348 */  0x1F, 0x7C, 0x00, 0x5E, 0xFD, 0xFF, 0x0F, 0x3E,  // .|.^...>
                /* 0350 */  0x00, 0xF7, 0xEE, 0x28, 0x6C, 0x84, 0x0F, 0x3E,  // ...(l..>
                /* 0358 */  0x20, 0x5C, 0xB5, 0x0E, 0x3E, 0xC0, 0xE3, 0xFF,  //  \..>...
                /* 0360 */  0x7F, 0xF0, 0x81, 0x39, 0xAF, 0x97, 0x10, 0x76,  // ...9...v
                /* 0368 */  0xF0, 0x01, 0x26, 0x12, 0xD7, 0x48, 0x4F, 0x3D,  // ..&..HO=
                /* 0370 */  0x16, 0x05, 0x83, 0x3A, 0xF8, 0x00, 0x0C, 0x3A,  // ...:...:
                /* 0378 */  0xAB, 0x3E, 0xF8, 0x80, 0x33, 0xD6, 0x79, 0x40,  // .>..3.y@
                /* 0380 */  0xFF, 0xFF, 0x1F, 0x81, 0x25, 0x1D, 0x40, 0xA0,  // ....%.@.
                /* 0388 */  0x4B, 0x38, 0x80, 0x80, 0xEA, 0xDC, 0x03, 0x1C,  // K8......
                /* 0390 */  0x0E, 0x0A, 0xCF, 0x07, 0x60, 0x99, 0xE5, 0xE1,  // ....`...
                /* 0398 */  0xBE, 0x7F, 0xE0, 0xAF, 0x04, 0xEC, 0x04, 0x02,  // ........
                /* 03A0 */  0x8A, 0xA5, 0xE9, 0x04, 0x02, 0x0C, 0x27, 0xC6,  // ......'.
                /* 03A8 */  0x4E, 0xC4, 0x80, 0x9B, 0xFF, 0xFF, 0x09, 0x04,  // N.......
                /* 03B0 */  0x60, 0xC2, 0xD1, 0xE0, 0x49, 0x0E, 0x70, 0xFE,  // `...I.p.
                /* 03B8 */  0xFF, 0x3F, 0xC9, 0x01, 0xFC, 0x3E, 0xF9, 0xC0,  // .?...>..
                /* 03C0 */  0xB9, 0xF7, 0x60, 0x08, 0xFE, 0xFF, 0x0F, 0x3E,  // ..`....>
                /* 03C8 */  0xC0, 0x7F, 0x5C, 0xAF, 0x04, 0x3E, 0xF8, 0x00,  // ..\..>..
                /* 03D0 */  0x93, 0x35, 0xF2, 0x53, 0x8F, 0x23, 0xBF, 0x22,  // .5.S.#."
                /* 03D8 */  0x7C, 0xF0, 0x01, 0xE8, 0xF1, 0xFF, 0x3F, 0xF8,  // |.....?.
                /* 03E0 */  0x80, 0xC9, 0xDB, 0xC1, 0x07, 0xA4, 0xA2, 0x4F,  // .......O
                /* 03E8 */  0x72, 0x34, 0x34, 0x84, 0x8C, 0x1C, 0x5E, 0x50,  // r44...^P
                /* 03F0 */  0xC3, 0xF1, 0x91, 0x02, 0x17, 0xF2, 0xDC, 0x03,  // ........
                /* 03F8 */  0xA8, 0x39, 0x72, 0x80, 0x0B, 0xC2, 0x47, 0x0E,  // .9r...G.
                /* 0400 */  0x30, 0xCD, 0xCE, 0x07, 0x10, 0x18, 0x07, 0x37,  // 0......7
                /* 0408 */  0x90, 0x1F, 0x43, 0x71, 0x27, 0x51, 0x50, 0xFC,  // ..Cq'QP.
                /* 0410 */  0xFF, 0x0F, 0x1C, 0x00, 0x53, 0x6E, 0x06, 0x0F,  // ....Sn..
                /* 0418 */  0x6E, 0x20, 0x3D, 0x70, 0xD0, 0x13, 0xA8, 0x0F,  // n =p....
                /* 0420 */  0x50, 0xF8, 0x03, 0x07, 0x2E, 0x32, 0x84, 0x4E,  // P....2.N
                /* 0428 */  0xA2, 0xC0, 0xF5, 0x94, 0xC1, 0xFF, 0xFF, 0x07,  // ........
                /* 0430 */  0x0E, 0x70, 0x9C, 0x9C, 0xE0, 0xFD, 0x83, 0x7C,  // .p.....|
                /* 0438 */  0xEE, 0x00, 0x97, 0xBC, 0x73, 0x07, 0x28, 0x0F,  // ....s.(.
                /* 0440 */  0x64, 0xFC, 0xE0, 0x01, 0x3C, 0x44, 0x9C, 0x3A,  // d...<D.:
                /* 0448 */  0x50, 0xB1, 0x0F, 0x4E, 0x00, 0x05, 0xFE, 0xFF,  // P..N....
                /* 0450 */  0x07, 0x0F, 0x60, 0x32, 0xDA, 0x07, 0x0F, 0x70,  // ..`2...p
                /* 0458 */  0x0A, 0x3F, 0x78, 0xD0, 0xD8, 0x10, 0x72, 0x72,  // .?x...rr
                /* 0460 */  0x70, 0x82, 0x7A, 0xFE, 0x04, 0x1C, 0x3A, 0x1B,  // p.z...:.
                /* 0468 */  0xB1, 0x08, 0x7C, 0xE4, 0x00, 0x27, 0x3C, 0x3F,  // ..|..'<?
                /* 0470 */  0x72, 0x00, 0x8F, 0xC0, 0xAE, 0x67, 0x6E, 0x82,  // r....gn.
                /* 0478 */  0xFF, 0xFF, 0x18, 0x1C, 0x12, 0xF7, 0x08, 0xA0,  // ........
                /* 0480 */  0x30, 0x3E, 0xD1, 0xF8, 0xC8, 0x01, 0x57, 0x12,  // 0>....W.
                /* 0488 */  0x1C, 0x6A, 0x7C, 0x1E, 0xF6, 0x63, 0xE4, 0x71,  // .j|..c.q
                /* 0490 */  0xBE, 0x06, 0x1C, 0x88, 0xE7, 0xFD, 0xEC, 0x01,  // ........
                /* 0498 */  0xE3, 0x64, 0xE0, 0x49, 0x9D, 0x92, 0xB5, 0x9F,  // .d.I....
                /* 04A0 */  0x20, 0xC8, 0x65, 0xC2, 0x04, 0x3E, 0x1E, 0x30,  //  .e..>.0
                /* 04A8 */  0x34, 0x7E, 0x10, 0x01, 0xEB, 0x91, 0xE0, 0xC9,  // 4~......
                /* 04B0 */  0x00, 0x2C, 0x73, 0x7E, 0x0B, 0xC1, 0x1C, 0x39,  // .,s~...9
                /* 04B8 */  0x30, 0x80, 0xF1, 0x1E, 0x39, 0x8C, 0x7A, 0x54,  // 0...9.zT
                /* 04C0 */  0x3E, 0x40, 0xF8, 0xE8, 0xE1, 0xF1, 0x87, 0x8D,  // >@......
                /* 04C8 */  0x10, 0xE4, 0xBC, 0xDE, 0x06, 0x7C, 0xF1, 0x08,  // .....|..
                /* 04D0 */  0x18, 0x36, 0xB8, 0x09, 0x7C, 0xEC, 0x00, 0xDF,  // .6..|...
                /* 04D8 */  0xE5, 0xE0, 0x51, 0xC3, 0x27, 0x84, 0xC7, 0x0E,  // ..Q.'...
                /* 04E0 */  0x70, 0xC6, 0x3A, 0xD5, 0xD0, 0x48, 0xA3, 0x41,  // p.:..H.A
                /* 04E8 */  0x9D, 0x15, 0x7C, 0x2E, 0xF0, 0x99, 0xE0, 0xA1,  // ..|.....
                /* 04F0 */  0xC5, 0x87, 0x0D, 0x83, 0x9C, 0xEB, 0xA1, 0x3D,  // .......=
                /* 04F8 */  0x2F, 0x3C, 0x10, 0x78, 0xE8, 0x0C, 0xEB, 0xC1,  // /<.x....
                /* 0500 */  0x83, 0x9D, 0x10, 0xF0, 0x57, 0x96, 0x80, 0xAF,  // ....W...
                /* 0508 */  0x06, 0xCF, 0x1B, 0x30, 0xFE, 0xFF, 0xE7, 0x0E,  // ...0....
                /* 0510 */  0x38, 0x87, 0x0C, 0xF8, 0xE3, 0xF1, 0x49, 0xC0,  // 8.....I.
                /* 0518 */  0x67, 0x65, 0x1F, 0x80, 0xC8, 0x20, 0x50, 0x67,  // ge... Pg
                /* 0520 */  0x66, 0x3E, 0xD2, 0xD3, 0x7A, 0x21, 0xF0, 0x39,  // f>..z!.9
                /* 0528 */  0xE1, 0xB0, 0xD8, 0xE1, 0x89, 0x8F, 0x07, 0xFC,  // ........
                /* 0530 */  0x47, 0xDC, 0xA7, 0x0C, 0xDF, 0x1A, 0x3C, 0x5F,  // G.....<_
                /* 0538 */  0x9F, 0x16, 0x7C, 0x06, 0x01, 0xD7, 0xB5, 0xC3,  // ..|.....
                /* 0540 */  0x43, 0x38, 0x09, 0xDF, 0x13, 0x30, 0xA7, 0x10,  // C8...0..
                /* 0548 */  0x60, 0x10, 0xE5, 0xA5, 0x29, 0x98, 0x47, 0x10,  // `...).G.
                /* 0550 */  0x2D, 0x54, 0x36, 0x4E, 0x6A, 0x74, 0x4C, 0x16,  // -T6NjtL.
                /* 0558 */  0x7B, 0x42, 0xD0, 0x78, 0xCE, 0xFD, 0xD4, 0x0E,  // {B.x....
                /* 0560 */  0xF0, 0xB5, 0xC2, 0xE7, 0x02, 0x8B, 0x84, 0xD2,  // ........
                /* 0568 */  0x75, 0xC4, 0x10, 0x96, 0x77, 0x1E, 0x31, 0x84,  // u...w.1.
                /* 0570 */  0x06, 0xE3, 0xA3, 0x18, 0x81, 0xA3, 0x20, 0x1E,  // ...... .
                /* 0578 */  0xBB, 0xA3, 0x42, 0xC8, 0xC6, 0xA9, 0x07, 0x7D,  // ..B....}
                /* 0580 */  0xD5, 0xE1, 0x04, 0x8E, 0x76, 0x8C, 0xF3, 0x59,  // ....v..Y
                /* 0588 */  0x01, 0xCA, 0xC0, 0x1E, 0x2B, 0x8E, 0xC5, 0x47,  // ....+..G
                /* 0590 */  0x1C, 0x70, 0xFC, 0xFF, 0x8F, 0x6A, 0x70, 0x87,  // .p...jp.
                /* 0598 */  0xFE, 0x1E, 0x60, 0x02, 0x76, 0x98, 0xC6, 0x1D,  // ..`.v...
                /* 05A0 */  0x0B, 0xE0, 0xCC, 0xE0, 0xB5, 0xA0, 0xEA, 0x71,  // .......q
                /* 05A8 */  0xE8, 0xB6, 0x60, 0x75, 0x97, 0x01, 0x14, 0xDE,  // ..`u....
                /* 05B0 */  0x23, 0x15, 0xEE, 0xE8, 0x0C, 0x16, 0x20, 0x5F,  // #..... _
                /* 05B8 */  0x06, 0xAC, 0xF4, 0x40, 0x40, 0x67, 0x12, 0x22,  // ...@@g."
                /* 05C0 */  0x4C, 0x34, 0xC3, 0x63, 0x0E, 0x4D, 0x7C, 0xA0,  // L4.c.M|.
                /* 05C8 */  0x1E, 0x1D, 0x1F, 0xA8, 0x8F, 0x31, 0xEC, 0xA0,  // .....1..
                /* 05D0 */  0x80, 0x3B, 0x35, 0x61, 0x60, 0x3D, 0x74, 0x0E,  // .;5a`=t.
                /* 05D8 */  0x6B, 0xB4, 0xB0, 0x47, 0xFC, 0x0C, 0xE1, 0xFB,  // k..G....
                /* 05E0 */  0x87, 0x2F, 0x46, 0xBE, 0xB6, 0xF8, 0xE4, 0x01,  // ./F.....
                /* 05E8 */  0x96, 0x03, 0x14, 0x70, 0x91, 0x76, 0x7C, 0x40,  // ...p.v|@
                /* 05F0 */  0x1D, 0x84, 0x2C, 0xF5, 0xF8, 0x80, 0xC0, 0x38,  // ..,....8
                /* 05F8 */  0x44, 0x9F, 0x07, 0xCE, 0xF2, 0x99, 0xC0, 0x13,  // D.......
                /* 0600 */  0x7E, 0x1C, 0xC1, 0x0A, 0x3B, 0x43, 0xA0, 0x24,  // ~...;C.$
                /* 0608 */  0x51, 0xE8, 0x64, 0xEF, 0x33, 0x04, 0x3F, 0x4C,  // Q.d.3.?L
                /* 0610 */  0x1A, 0xCC, 0x20, 0x3E, 0x43, 0x38, 0xDE, 0x11,  // .. >C8..
                /* 0618 */  0x06, 0x3D, 0x3A, 0x6B, 0x9D, 0x88, 0xFE, 0xFF,  // .=:k....
                /* 0620 */  0xF3, 0x7D, 0x76, 0x38, 0x3A, 0xC7, 0x39, 0x43,  // .}v8:.9C
                /* 0628 */  0x00, 0xD5, 0x83, 0x0C, 0xF8, 0x4E, 0x0F, 0xC0,  // .....N..
                /* 0630 */  0xFB, 0xA0, 0xC9, 0x4F, 0x0F, 0x80, 0xB3, 0x03,  // ...O....
                /* 0638 */  0xD5, 0x59, 0x1E, 0xF1, 0xDB, 0x88, 0x6F, 0x0F,  // .Y....o.
                /* 0640 */  0xD8, 0xD3, 0x03, 0xFE, 0xFF, 0x7F, 0x7A, 0x00,  // ......z.
                /* 0648 */  0xF8, 0x04, 0xE9, 0xD3, 0x03, 0xE0, 0xEA, 0xFF,  // ........
                /* 0650 */  0x7F, 0x7A, 0xC0, 0x1F, 0x14, 0xDE, 0xF9, 0x7C,  // .z.....|
                /* 0658 */  0x7A, 0x00, 0xD8, 0x36, 0x68, 0x9F, 0x1E, 0x80,  // z..6h...
                /* 0660 */  0xF7, 0xFF, 0xFF, 0xF4, 0x00, 0x1C, 0x6E, 0xA8,  // ......n.
                /* 0668 */  0x3E, 0xAF, 0x3D, 0x3D, 0x00, 0x6C, 0x83, 0xE5,  // >.==.l..
                /* 0670 */  0xA7, 0x07, 0xF0, 0xFF, 0xFF, 0x0F, 0xDD, 0x40,  // .......@
                /* 0678 */  0xEA, 0xF4, 0x80, 0xE2, 0xB0, 0xD0, 0xD3, 0x03,  // ........
                /* 0680 */  0x84, 0x43, 0x31, 0x1B, 0xE4, 0x11, 0x07, 0xAF,  // .C1.....
                /* 0688 */  0x7E, 0x24, 0xE4, 0xF0, 0x00, 0xBE, 0xB3, 0x3B,  // ~$.....;
                /* 0690 */  0xFE, 0xF0, 0x00, 0x78, 0x39, 0xAF, 0xE3, 0x0F,  // ...x9...
                /* 0698 */  0x0F, 0xC0, 0xFB, 0x98, 0xEE, 0xC3, 0x03, 0x9C,  // ........
                /* 06A0 */  0xFF, 0xFF, 0xE1, 0x01, 0x70, 0x70, 0xFC, 0xC5,  // ....pp..
                /* 06A8 */  0x89, 0x3A, 0xFE, 0x22, 0x0F, 0x0F, 0x6C, 0xDC,  // .:."..l.
                /* 06B0 */  0x51, 0x42, 0x87, 0x78, 0x91, 0x8D, 0x7D, 0x6E,  // QB.x..}n
                /* 06B8 */  0x67, 0xE2, 0x2B, 0xF6, 0x41, 0xBC, 0x0E, 0xF8,  // g.+.A...
                /* 06C0 */  0xF8, 0x00, 0x30, 0xE8, 0xFF, 0x7F, 0x7C, 0x80,  // ..0...|.
                /* 06C8 */  0xEF, 0xE1, 0x5C, 0x05, 0xA8, 0xBB, 0x51, 0xB3,  // ..\...Q.
                /* 06D0 */  0x4B, 0x1E, 0xC3, 0x8A, 0x8E, 0x39, 0x57, 0x01,  // K....9W.
                /* 06D8 */  0x5C, 0xF8, 0xFF, 0x9F, 0x1E, 0x80, 0x13, 0xB8,  // \.......
                /* 06E0 */  0x4F, 0x0F, 0x80, 0x17, 0x59, 0xA7, 0x07, 0xD4,  // O...Y...
                /* 06E8 */  0x59, 0xC0, 0x32, 0x8F, 0x0A, 0x9A, 0x6C, 0xB5,  // Y.2...l.
                /* 06F0 */  0xA7, 0x04, 0x9D, 0x1E, 0xD8, 0xDD, 0x01, 0x7F,  // ........
                /* 06F8 */  0x76, 0x00, 0xFC, 0xFE, 0xFF, 0xCF, 0x0E, 0xC0,  // v.......
                /* 0700 */  0xDF, 0xC4, 0xD9, 0x01, 0x50, 0xA3, 0x6F, 0x81,  // ....P.o.
                /* 0708 */  0x3A, 0xE2, 0xE1, 0xF4, 0xBE, 0x14, 0x74, 0x90,  // :.....t.
                /* 0710 */  0xC1, 0x89, 0x9C, 0xA5, 0x06, 0x1E, 0xD8, 0x9A,  // ........
                /* 0718 */  0xC1, 0x75, 0x04, 0x60, 0xFA, 0x20, 0x75, 0x6A,  // .u.`. uj
                /* 0720 */  0xF0, 0xA1, 0xC1, 0xCA, 0x28, 0xA4, 0xE3, 0xF0,  // ....(...
                /* 0728 */  0x80, 0x4A, 0x7E, 0x84, 0xA0, 0x20, 0x06, 0x74,  // .J~.. .t
                /* 0730 */  0xAC, 0x43, 0x15, 0xFA, 0x64, 0xE6, 0x21, 0x1C,  // .C..d.!.
                /* 0738 */  0xA3, 0x93, 0x5C, 0x1D, 0xE8, 0xC4, 0x3C, 0x47,  // ..\...<G
                /* 0740 */  0x8E, 0xC7, 0xC6, 0x65, 0xD4, 0xAA, 0x66, 0x08,  // ...e..f.
                /* 0748 */  0x22, 0x35, 0x47, 0x02, 0xD4, 0x04, 0x7C, 0x72,  // "5G...|r
                /* 0750 */  0xC0, 0xE8, 0x1A, 0x01, 0xF9, 0xFF, 0x5F, 0xA8,  // ......_.
                /* 0758 */  0xC0, 0xA3, 0xEF, 0xE0, 0x00, 0x72, 0x74, 0x7E,  // .....rt~
                /* 0760 */  0x2F, 0x03, 0x1C, 0x8D, 0xCA, 0xF7, 0x32, 0xC0,  // /.....2.
                /* 0768 */  0x93, 0x8A, 0xFB, 0x07, 0x10, 0xF8, 0xFF, 0xDF,  // ........
                /* 0770 */  0x58, 0x81, 0x39, 0x7C, 0x85, 0xF3, 0x16, 0x70,  // X.9|...p
                /* 0778 */  0xFC, 0x48, 0x27, 0xC2, 0xEE, 0x88, 0x00, 0xC3,  // .H'.....
                /* 0780 */  0x86, 0xEC, 0xC3, 0x03, 0xF6, 0xFF, 0x7F, 0x17,  // ........
                /* 0788 */  0x02, 0x1C, 0x8D, 0xF6, 0xE1, 0x01, 0xDE, 0x5D,  // .......]
                /* 0790 */  0x08, 0x18, 0xCC, 0xC7, 0x77, 0x21, 0xC0, 0xFD,  // ....w!..
                /* 0798 */  0xFF, 0xFF, 0x2E, 0x04, 0x70, 0x65, 0xE4, 0xBE,  // ....pe..
                /* 07A0 */  0x7F, 0x00, 0x5E, 0x62, 0xDD, 0x3F, 0xD0, 0x31,  // ..^b.?.1
                /* 07A8 */  0xEF, 0x1F, 0x28, 0xD8, 0xC3, 0xB1, 0xEB, 0x6B,  // ..(....k
                /* 07B0 */  0x26, 0x39, 0x81, 0xC4, 0x88, 0x10, 0x29, 0x34,  // &9....)4
                /* 07B8 */  0x81, 0xD4, 0xFF, 0xFF, 0x2E, 0xC4, 0x03, 0xC1,  // ........
                /* 07C0 */  0x28, 0x0E, 0x84, 0x0E, 0x0F, 0x3C, 0x00, 0x1C,  // (....<..
                /* 07C8 */  0x05, 0xF1, 0x91, 0xC1, 0x87, 0x07, 0x2B, 0x39,  // ......+9
                /* 07D0 */  0x3C, 0xA0, 0xA7, 0x74, 0xDC, 0xBE, 0x92, 0xB0,  // <..t....
                /* 07D8 */  0xC3, 0x03, 0xBC, 0x13, 0x08, 0xBB, 0x0B, 0x01,  // ........
                /* 07E0 */  0x6B, 0x63, 0x02, 0xB4, 0x41, 0x92, 0xF1, 0xC1,  // kc..A...
                /* 07E8 */  0xD1, 0x7E, 0xD6, 0x00, 0xC5, 0xF8, 0x80, 0xCF,  // .~......
                /* 07F0 */  0x59, 0x03, 0x5C, 0xE3, 0xE3, 0x01, 0xC7, 0x87,  // Y.\.....
                /* 07F8 */  0x86, 0xF6, 0x69, 0x20, 0xE6, 0xE1, 0x1C, 0x0D,  // ..i ....
                /* 0800 */  0x66, 0x80, 0xE0, 0xFE, 0xFF, 0x0F, 0x10, 0x5C,  // f......\
                /* 0808 */  0xC7, 0x17, 0x0F, 0x10, 0x7C, 0x67, 0x13, 0xE0,  // ....|g..
                /* 0810 */  0x6D, 0xE3, 0x6C, 0x02, 0xA8, 0x91, 0x73, 0xED,  // m.l...s.
                /* 0818 */  0x43, 0x8D, 0xDA, 0xF2, 0xAE, 0x7D, 0x88, 0x19,  // C....}..
                /* 0820 */  0x1F, 0xEF, 0xE1, 0x32, 0x59, 0x57, 0x3E, 0xD4,  // ...2YW>.
                /* 0828 */  0x11, 0xC9, 0x72, 0xCE, 0x48, 0x28, 0x2A, 0x83,  // ..r.H(*.
                /* 0830 */  0x99, 0xC2, 0xA7, 0x02, 0x87, 0x3B, 0x23, 0xA1,  // .....;#.
                /* 0838 */  0xCF, 0x0B, 0x6C, 0x7C, 0xEC, 0xDC, 0x00, 0xFF,  // ..l|....
                /* 0840 */  0xFF, 0x7F, 0xE3, 0x03, 0x9C, 0xEB, 0x38, 0x37,  // ......87
                /* 0848 */  0x00, 0xD2, 0xE6, 0x78, 0xC2, 0x5D, 0x9E, 0x1B,  // ...x.]..
                /* 0850 */  0x80, 0xD0, 0xFF, 0xFF, 0xDC, 0x00, 0xF0, 0xC1,  // ........
                /* 0858 */  0xC7, 0xB9, 0x01, 0x50, 0x23, 0xE8, 0xDC, 0x80,  // ...P#...
                /* 0860 */  0x16, 0x78, 0x52, 0xD0, 0x04, 0x9B, 0x9F, 0x03,  // .xR.....
                /* 0868 */  0x81, 0x7E, 0x1A, 0xF2, 0x05, 0x18, 0x8C, 0xFF,  // .~......
                /* 0870 */  0xFF, 0xF1, 0xF0, 0x0B, 0x30, 0xE0, 0x67, 0xA0,  // ....0.g.
                /* 0878 */  0x1E, 0x85, 0xC7, 0xD0, 0xF3, 0xC1, 0x01, 0xC8,  // ........
                /* 0880 */  0x0F, 0xE2, 0xC1, 0x01, 0x30, 0x77, 0x0D, 0xF1,  // ....0w..
                /* 0888 */  0xC1, 0x01, 0xFF, 0xFF, 0x3F, 0x38, 0x00, 0x7C,  // ....?8.|
                /* 0890 */  0x32, 0x7A, 0x70, 0x00, 0x74, 0xFD, 0xFF, 0x0F,  // 2zp.t...
                /* 0898 */  0x0E, 0xB8, 0xF3, 0xD0, 0x83, 0x03, 0xC0, 0xB0,  // ........
                /* 08A0 */  0x01, 0x3C, 0x38, 0x00, 0x36, 0xFE, 0xFF, 0x07,  // .<8.6...
                /* 08A8 */  0x01, 0x9C, 0xC0, 0x13, 0x34, 0x5A, 0xF0, 0x4B,  // ....4Z.K
                /* 08B0 */  0x41, 0xE3, 0x7A, 0x7B, 0x39, 0xEA, 0xB7, 0xE7,  // A.z{9...
                /* 08B8 */  0xA3, 0x89, 0x1D, 0xFD, 0x20, 0x3D, 0xB2, 0x73,  // .... =.s
                /* 08C0 */  0x3E, 0xA0, 0x08, 0x27, 0x10, 0x9A, 0x1C, 0x9D,  // >..'....
                /* 08C8 */  0xE9, 0xA1, 0xC1, 0xD2, 0x28, 0x24, 0xE4, 0xF0,  // ....($..
                /* 08D0 */  0x80, 0x8A, 0x7E, 0x84, 0xA0, 0x20, 0x06, 0x74,  // ..~.. .t
                /* 08D8 */  0x2E, 0x08, 0x19, 0x39, 0x3C, 0xA0, 0x54, 0x8C,  // ...9<.T.
                /* 08E0 */  0x97, 0x0C, 0xE4, 0x9C, 0xEA, 0x44, 0x51, 0x90,  // .....DQ.
                /* 08E8 */  0xBB, 0x03, 0x9D, 0x99, 0x27, 0xC9, 0x35, 0xDC,  // ....'.5.
                /* 08F0 */  0xE9, 0x10, 0xB8, 0x55, 0x4D, 0x11, 0x44, 0x6A,  // ...UM.Dj
                /* 08F8 */  0xCE, 0x04, 0xA8, 0x09, 0xF8, 0xE8, 0x80, 0x99,  // ........
                /* 0900 */  0x33, 0xEE, 0x46, 0x07, 0x57, 0x1C, 0x8C, 0xF4,  // 3.F.W...
                /* 0908 */  0x5D, 0x1C, 0x40, 0x8E, 0xCE, 0x0F, 0x20, 0xF0,  // ].@... .
                /* 0910 */  0xCF, 0x85, 0xB8, 0x03, 0x82, 0x8F, 0x01, 0xAF,  // ........
                /* 0918 */  0x02, 0x07, 0x14, 0xE2, 0xC1, 0x10, 0xEE, 0x01,  // ........
                /* 0920 */  0x04, 0xB8, 0xFC, 0xFF, 0x8F, 0xD5, 0xE0, 0x3B,  // .......;
                /* 0928 */  0x18, 0x02, 0x7F, 0xB9, 0x07, 0x10, 0x40, 0x4D,  // ......@M
                /* 0930 */  0xC2, 0xB7, 0x81, 0x0E, 0x20, 0x1C, 0xD6, 0x89,  // .... ...
                /* 0938 */  0x17, 0xA9, 0x03, 0x08, 0x3F, 0x00, 0xC4, 0x3E,  // ....?..>
                /* 0940 */  0xE0, 0x47, 0x21, 0x46, 0xE0, 0x94, 0x70, 0x3A,  // .G!F..p:
                /* 0948 */  0x7E, 0xF0, 0x7C, 0x30, 0xCA, 0x40, 0xA2, 0xA3,  // ~.|0.@..
                /* 0950 */  0x03, 0x57, 0x7D, 0x0A, 0xA1, 0x20, 0x3E, 0x30,  // .W}.. >0
                /* 0958 */  0x38, 0xD6, 0xF1, 0x03, 0x3D, 0x28, 0x2B, 0x9E,  // 8...=(+.
                /* 0960 */  0x04, 0xB9, 0x7D, 0x00, 0x83, 0xFF, 0xFF, 0xED,  // ..}.....
                /* 0968 */  0x03, 0xF8, 0x9C, 0x54, 0xE0, 0x1C, 0x06, 0x7C,  // ...T...|
                /* 0970 */  0x78, 0x61, 0x73, 0x03, 0x7E, 0xB3, 0xF7, 0xDC,  // xas.~...
                /* 0978 */  0xC0, 0x95, 0x72, 0x6E, 0xBE, 0x1C, 0xD0, 0xB9,  // ..rn....
                /* 0980 */  0xF1, 0x0B, 0x09, 0xE6, 0x38, 0xE0, 0x73, 0x85,  // ....8.s.
                /* 0988 */  0xE7, 0x06, 0x0C, 0xAE, 0x23, 0xF8, 0x41, 0xBD,  // ....#.A.
                /* 0990 */  0x74, 0x14, 0x7B, 0x65, 0xA1, 0x53, 0x84, 0x75,  // t.{e.S.u
                /* 0998 */  0x6C, 0xF0, 0xDD, 0x06, 0x38, 0xFE, 0xFF, 0xEF,  // l...8...
                /* 09A0 */  0x36, 0x58, 0x69, 0x77, 0x1B, 0x94, 0x98, 0xBB,  // 6Xiw....
                /* 09A8 */  0x0D, 0x05, 0xF1, 0x9C, 0x1C, 0x14, 0x42, 0x36,  // ......B6
                /* 09B0 */  0x6E, 0x14, 0xE8, 0x3B, 0x88, 0x0F, 0x19, 0x8E,  // n..;....
                /* 09B8 */  0x76, 0xB5, 0x01, 0x9A, 0x50, 0x16, 0x39, 0x6B,  // v...P.9k
                /* 09C0 */  0xE8, 0x33, 0x78, 0xEE, 0xA8, 0x7A, 0x1C, 0x9A,  // .3x..z..
                /* 09C8 */  0xC6, 0x51, 0x54, 0x77, 0xFE, 0xD6, 0x40, 0xCF,  // .QTw..@.
                /* 09D0 */  0xF5, 0xB5, 0xF7, 0x74, 0x9F, 0x48, 0xAC, 0x19,  // ...t.H..
                /* 09D8 */  0x41, 0x87, 0x92, 0xDA, 0xEE, 0x3A, 0xE4, 0x82,  // A....:..
                /* 09E0 */  0x03, 0xBC, 0xED, 0x5E, 0x70, 0x00, 0x19, 0xFF,  // ...^p...
                /* 09E8 */  0xFF, 0xE3, 0x00, 0x36, 0xFD, 0x85, 0x0D, 0x75,  // ...6...u
                /* 09F0 */  0x22, 0xB0, 0x9A, 0x0B, 0x0E, 0x62, 0x8E, 0x67,  // "....b.g
                /* 09F8 */  0xC1, 0x07, 0x7C, 0x40, 0x98, 0xFC, 0xF7, 0x35,  // ..|@...5
                /* 0A00 */  0x54, 0x72, 0x0A, 0xE5, 0x3B, 0x40, 0xA0, 0x12,  // Tr..;@..
                /* 0A08 */  0x1D, 0x20, 0x28, 0x88, 0x87, 0xED, 0xFB, 0x1A,  // . (.....
                /* 0A10 */  0x60, 0xEB, 0x88, 0x03, 0xD8, 0xBA, 0xAF, 0x80,  // `.......
                /* 0A18 */  0xF9, 0xFF, 0x7F, 0x5F, 0xC1, 0x9D, 0x57, 0x7D,  // ..._..W}
                /* 0A20 */  0x3F, 0xE0, 0x52, 0xEE, 0x07, 0x14, 0xC4, 0xF7,  // ?.R.....
                /* 0A28 */  0x04, 0xDF, 0x34, 0x7C, 0x5F, 0x81, 0x17, 0xEC,  // ..4|_...
                /* 0A30 */  0xBE, 0x02, 0x34, 0x87, 0x64, 0x14, 0xDF, 0x57,  // ..4.d..W
                /* 0A38 */  0xC0, 0x39, 0x36, 0x76, 0xBF, 0x63, 0xD7, 0x15,  // .96v.c..
                /* 0A40 */  0xE0, 0x3D, 0x89, 0xD7, 0x15, 0xC0, 0xC8, 0xFF,  // .=......
                /* 0A48 */  0xFF, 0x34, 0xC0, 0x15, 0x9C, 0xEF, 0x50, 0x92,  // .4....P.
                /* 0A50 */  0x20, 0xA4, 0xE8, 0xBA, 0x02, 0xF5, 0x0A, 0x74,  //  ......t
                /* 0A58 */  0x70, 0xD1, 0x0F, 0xA1, 0xEB, 0x0B, 0x0B, 0x40,  // p......@
                /* 0A60 */  0xE1, 0xFF, 0xFF, 0x85, 0x05, 0x60, 0x9B, 0xE0,  // .....`..
                /* 0A68 */  0x0B, 0x0B, 0x20, 0xE4, 0xFF, 0x7F, 0x1A, 0xC0,  // .. .....
                /* 0A70 */  0x68, 0x3B, 0xAF, 0xA1, 0x60, 0xAD, 0xF5, 0x2D,  // h;..`..-
                /* 0A78 */  0xA0, 0xB9, 0x1E, 0xE1, 0xBB, 0xCA, 0xFB, 0x3A,  // .......:
                /* 0A80 */  0x3F, 0xAE, 0x63, 0xF4, 0xDD, 0x56, 0x50, 0xCA,  // ?.c..VP.
                /* 0A88 */  0x28, 0xA4, 0xE3, 0xF8, 0x80, 0x4A, 0x7E, 0xBF,  // (....J~.
                /* 0A90 */  0xA0, 0x20, 0x06, 0xF4, 0xFD, 0x16, 0x70, 0x75,  // . ....pu
                /* 0A98 */  0x5A, 0x07, 0x8C, 0xFF, 0xFF, 0x4F, 0xEB, 0x80,  // Z....O..
                /* 0AA0 */  0xA3, 0x69, 0xFB, 0xF6, 0x01, 0x78, 0x09, 0x7F,  // .i...x..
                /* 0AA8 */  0xF9, 0x44, 0x8B, 0x01, 0xD2, 0xED, 0x83, 0x19,  // .D......
                /* 0AB0 */  0x3D, 0x00, 0x90, 0x9B, 0x97, 0x2F, 0x60, 0x18,  // =..../`.
                /* 0AB8 */  0x82, 0xF1, 0xAF, 0x1F, 0xA8, 0xE0, 0x14, 0x8A,  // ........
                /* 0AC0 */  0x77, 0x76, 0x40, 0x05, 0x3A, 0x3B, 0x50, 0x10,  // wv@.:;P.
                /* 0AC8 */  0x0F, 0xDB, 0xD7, 0x0F, 0xE0, 0xF8, 0xFF, 0xBF,  // ........
                /* 0AD0 */  0x7B, 0x01, 0xFC, 0xFF, 0xFF, 0xDF, 0xBD, 0x00,  // {.......
                /* 0AD8 */  0x37, 0xD3, 0x7A, 0x5C, 0x01, 0xEC, 0x5D, 0xBD,  // 7.z\..].
                /* 0AE0 */  0x71, 0xC7, 0x15, 0xC0, 0xCB, 0xFF, 0xFF, 0xB8,  // q.......
                /* 0AE8 */  0x02, 0xF0, 0xFF, 0xFF, 0x7F, 0x5C, 0x01, 0x9C,  // .....\..
                /* 0AF0 */  0x8C, 0xEA, 0x71, 0x05, 0x30, 0x23, 0xEB, 0x1D,  // ..q.0#..
                /* 0AF8 */  0xA0, 0xE3, 0x0A, 0x4E, 0xE6, 0x71, 0x41, 0xC7,  // ...N.qA.
                /* 0B00 */  0x15, 0x36, 0xB1, 0x98, 0xAF, 0x9E, 0x30, 0xCE,  // .6....0.
                /* 0B08 */  0x0E, 0x3E, 0x38, 0x18, 0xC2, 0x92, 0x28, 0x74,  // .>8...(t
                /* 0B10 */  0x6E, 0x84, 0xAF, 0xE4, 0xDC, 0x08, 0x74, 0xFF,  // n.....t.
                /* 0B18 */  0xFF, 0x07, 0x08, 0x38, 0x27, 0x0D, 0x72, 0x0B,  // ...8'.r.
                /* 0B20 */  0x01, 0xCD, 0xE9, 0xA1, 0xB6, 0x73, 0x23, 0x90,  // .....s#.
                /* 0B28 */  0x87, 0xF0, 0xD9, 0x01, 0xF0, 0x92, 0xE8, 0x6D,  // .......m
                /* 0B30 */  0xA0, 0x4B, 0x30, 0x2E, 0xE1, 0xC9, 0x09, 0x81,  // .K0.....
                /* 0B38 */  0x71, 0x58, 0x9E, 0x4D, 0x94, 0xE6, 0xC7, 0x41,  // qX.M...A
                /* 0B40 */  0x53, 0xC1, 0xE9, 0xE0, 0xC4, 0xF3, 0xC0, 0x48,  // S......H
                /* 0B48 */  0x35, 0x89, 0x8E, 0x0E, 0x5C, 0xE7, 0xF9, 0x89,  // 5...\...
                /* 0B50 */  0x82, 0xF8, 0xC0, 0xE0, 0x83, 0x13, 0x70, 0xF9,  // ......p.
                /* 0B58 */  0xFF, 0x1F, 0x9C, 0x00, 0x36, 0xCC, 0x0D, 0xCE,  // ....6...
                /* 0B60 */  0x85, 0x04, 0x33, 0x37, 0xE0, 0x77, 0x5E, 0xF0,  // ..37.w^.
                /* 0B68 */  0x1D, 0x0B, 0xF8, 0xFE, 0xFF, 0xEF, 0x58, 0x80,  // ......X.
                /* 0B70 */  0x21, 0x28, 0xDF, 0xB1, 0x00, 0x77, 0xF7, 0x14,  // !(...w..
                /* 0B78 */  0x5F, 0x6C, 0x00, 0x2F, 0xF1, 0x1D, 0xFC, 0xFF,  // _l./....
                /* 0B80 */  0x2F, 0x36, 0x18, 0x0E, 0xCB, 0xB9, 0xD8, 0x20,  // /6..... 
                /* 0B88 */  0xCE, 0x97, 0x86, 0x0E, 0x11, 0xB7, 0x76, 0x0C,  // ......v.
                /* 0B90 */  0x1D, 0x6D, 0x30, 0x57, 0x4C, 0x80, 0xCF, 0xFF,  // .m0WL...
                /* 0B98 */  0xFF, 0x2B, 0x26, 0xC0, 0x2E, 0xCD, 0xE7, 0x15,  // .+&.....
                /* 0BA0 */  0x40, 0x8D, 0xD2, 0x25, 0xEA, 0xBC, 0xF2, 0xFF,  // @..%....
                /* 0BA8 */  0x7F, 0x20, 0xC0, 0x28, 0x7F, 0x24, 0xE8, 0xBC,  // . .(.$..
                /* 0BB0 */  0xC2, 0xE6, 0x78, 0x16, 0xFC, 0xB8, 0x82, 0xD3,  // ..x.....
                /* 0BB8 */  0x0A, 0xA8, 0xE3, 0x0A, 0x57, 0x09, 0x23, 0x2D,  // ....W.#-
                /* 0BC0 */  0x0B, 0xD6, 0xF9, 0x81, 0xA7, 0x3F, 0xB5, 0x50,  // .....?.P
                /* 0BC8 */  0x10, 0x0F, 0xDC, 0xC7, 0x15, 0x80, 0x59, 0xD7,  // ......Y.
                /* 0BD0 */  0x00, 0x38, 0x73, 0x79, 0x85, 0x78, 0x72, 0xF0,  // .8sy.xr.
                /* 0BD8 */  0xD8, 0xC0, 0xF9, 0xFF, 0x3F, 0xD8, 0x01, 0xB7,  // ....?...
                /* 0BE0 */  0x3B, 0x20, 0xB0, 0x47, 0xF2, 0x25, 0x08, 0x60,  // ; .G.%.`
                /* 0BE8 */  0xC4, 0x48, 0x7C, 0x09, 0xC2, 0xFD, 0xFF, 0x2F,  // .H|..../
                /* 0BF0 */  0x41, 0x80, 0x2F, 0xCF, 0x97, 0x20, 0x40, 0x4D,  // A./.. @M
                /* 0BF8 */  0xA0, 0xC3, 0x32, 0x3A, 0xE0, 0x1D, 0x10, 0x39,  // ..2:...9
                /* 0C00 */  0x1B, 0x1F, 0x82, 0x30, 0xA1, 0x0E, 0xCB, 0xA8,  // ...0....
                /* 0C08 */  0x38, 0x30, 0x12, 0x7D, 0x58, 0x46, 0xC9, 0xBC,  // 80.}XF..
                /* 0C10 */  0x03, 0x51, 0x10, 0x1F, 0x96, 0x81, 0xDF, 0xFF,  // .Q......
                /* 0C18 */  0xFF, 0x0E, 0x04, 0x30, 0xF5, 0x60, 0x03, 0xAC,  // ...0.`..
                /* 0C20 */  0xFE, 0xFF, 0x77, 0x65, 0x80, 0x4F, 0x30, 0x0F,  // ..we.O0.
                /* 0C28 */  0x36, 0x80, 0x19, 0xA9, 0x97, 0x45, 0xB4, 0xF4,  // 6....E..
                /* 0C30 */  0x47, 0x82, 0xFE, 0xFF, 0x97, 0x45, 0x3C, 0x4A,  // G....E<J
                /* 0C38 */  0xE0, 0x30, 0x07, 0xC4, 0xC4, 0x5E, 0x16, 0x51,  // .0...^.Q
                /* 0C40 */  0x32, 0x61, 0x24, 0xE6, 0xB2, 0x88, 0xBA, 0x31,  // 2a$....1
                /* 0C48 */  0x73, 0x10, 0x5F, 0x16, 0x01, 0xEE, 0xFE, 0xFF,  // s._.....
                /* 0C50 */  0x4F, 0x36, 0xC0, 0xE6, 0xE6, 0x62, 0x25, 0x97,  // O6...b%.
                /* 0C58 */  0x45, 0x88, 0x49, 0x2E, 0x8B, 0x40, 0x51, 0xD7,  // E.I..@Q.
                /* 0C60 */  0xDC, 0x40, 0x73, 0x78, 0xA9, 0xED, 0xB4, 0x08,  // .@sx....
                /* 0C68 */  0x90, 0xE0, 0xFF, 0x7F, 0x0A, 0x02, 0x1C, 0x41,  // .......A
                /* 0C70 */  0x3D, 0x2D, 0x02, 0xEE, 0x2E, 0x41, 0x98, 0xD3,  // =-...A..
                /* 0C78 */  0x22, 0xE0, 0xE4, 0xFF, 0x7F, 0x5A, 0x04, 0xF8,  // "....Z..
                /* 0C80 */  0xFF, 0xFF, 0x3F, 0x2D, 0x02, 0x1C, 0x1A, 0xD6,  // ..?-....
                /* 0C88 */  0x83, 0x0D, 0x60, 0x46, 0xF7, 0x69, 0x11, 0x9D,  // ..`F.i..
                /* 0C90 */  0xE3, 0xB4, 0x88, 0x40, 0x38, 0xAF, 0xA0, 0xFF,  // ...@8...
                /* 0C98 */  0xFF, 0xD8, 0x5D, 0xDF, 0x17, 0x51, 0x63, 0xD2,  // ..]..Qc.
                /* 0CA0 */  0x69, 0x11, 0xA5, 0x19, 0x46, 0xCA, 0x4E, 0x8B,  // i...F.N.
                /* 0CA8 */  0x28, 0x2D, 0x07, 0x1C, 0x0A, 0xE2, 0xD3, 0x22,  // (-....."
                /* 0CB0 */  0xC0, 0xE3, 0xFF, 0xFF, 0xC9, 0x06, 0x18, 0xA4,  // ........
                /* 0CB8 */  0x1C, 0x9B, 0x2F, 0x12, 0xF4, 0xB4, 0x08, 0x63,  // ../....c
                /* 0CC0 */  0x8A, 0x3E, 0x3B, 0x78, 0x6E, 0xC0, 0xE0, 0xFE,  // .>;xn...
                /* 0CC8 */  0x82, 0x1F, 0xD4, 0x0B, 0x4A, 0xB1, 0x63, 0xF6,  // ....J.c.
                /* 0CD0 */  0x3B, 0x40, 0x87, 0x46, 0x98, 0x77, 0x21, 0x80,  // ;@.F.w!.
                /* 0CD8 */  0x11, 0x77, 0x46, 0xEC, 0xFF, 0xFF, 0x2E, 0x04,  // .wF.....
                /* 0CE0 */  0x18, 0x3B, 0xDC, 0xBC, 0x0B, 0x01, 0x66, 0x42,  // .;....fB
                /* 0CE8 */  0xDD, 0x19, 0x51, 0x07, 0x02, 0x87, 0xBC, 0x33,  // ..Q....3
                /* 0CF0 */  0x22, 0xEE, 0x42, 0x98, 0x63, 0x23, 0x27, 0x70,  // ".B.c#'p
                /* 0CF8 */  0xAC, 0x4B, 0x23, 0x2A, 0xD0, 0xA5, 0x11, 0x48,  // .K#*...H
                /* 0D00 */  0xFF, 0xFF, 0x2F, 0x8D, 0x00, 0xEB, 0xA5, 0x9D,  // ../.....
                /* 0D08 */  0x6C, 0x10, 0xFF, 0xFF, 0xD9, 0xE9, 0x64, 0x43,  // l.....dC
                /* 0D10 */  0x41, 0x3C, 0x27, 0x07, 0x3D, 0xD9, 0x40, 0x8D,  // A<'.=.@.
                /* 0D18 */  0x76, 0x69, 0x04, 0xAA, 0x22, 0x4F, 0x36, 0xA0,  // vi.."O6.
                /* 0D20 */  0xBD, 0x8A, 0x1C, 0x53, 0xCD, 0x08, 0x3A, 0xD9,  // ...S..:.
                /* 0D28 */  0xBC, 0xA8, 0x17, 0x76, 0xB4, 0x01, 0xEA, 0x87,  // ...v....
                /* 0D30 */  0x95, 0x47, 0x1B, 0xC0, 0x8C, 0xF6, 0x5B, 0x23,  // .G....[#
                /* 0D38 */  0xE2, 0xFF, 0x4F, 0x50, 0x12, 0x84, 0xB2, 0xDC,  // ..OP....
                /* 0D40 */  0x1A, 0x21, 0x8F, 0xF9, 0x65, 0xC9, 0x68, 0xEF,  // .!..e.h.
                /* 0D48 */  0x8D, 0x00, 0xA7, 0xFF, 0xFF, 0xF7, 0x46, 0x80,  // ......F.
                /* 0D50 */  0xFF, 0xFF, 0xFF, 0x7B, 0x23, 0xE0, 0x13, 0xEB,  // ...{#...
                /* 0D58 */  0x6D, 0x08, 0x30, 0x73, 0xF7, 0xF1, 0x6D, 0x88,  // m.0s..m.
                /* 0D60 */  0x4B, 0x81, 0x90, 0xD2, 0xD7, 0x82, 0x06, 0x7C,  // K......|
                /* 0D68 */  0x5E, 0x7D, 0x9E, 0x1A, 0x11, 0x47, 0x09, 0x5F,  // ^}...G._
                /* 0D70 */  0x25, 0x74, 0x5D, 0xA4, 0xA7, 0x06, 0x2B, 0xA3,  // %t]...+.
                /* 0D78 */  0x90, 0x92, 0xD3, 0x03, 0x2A, 0xFB, 0xE1, 0x85,  // ....*...
                /* 0D80 */  0x82, 0x18, 0xD0, 0xC7, 0x06, 0x2B, 0xB9, 0xDE,  // .....+..
                /* 0D88 */  0xA0, 0x87, 0x73, 0x34, 0x07, 0xF4, 0xD6, 0xE0,  // ..s4....
                /* 0D90 */  0x24, 0x77, 0x16, 0x10, 0xFC, 0xFF, 0x8F, 0x42,  // $w.....B
                /* 0D98 */  0xC0, 0x40, 0xD7, 0x09, 0x04, 0x34, 0x17, 0x87,  // .@...4..
                /* 0DA0 */  0x87, 0xB2, 0x37, 0x10, 0xE0, 0x21, 0x67, 0xD2,  // ..7..!g.
                /* 0DA8 */  0xA8, 0x3D, 0x7B, 0xD2, 0xA6, 0xF0, 0xA4, 0x1D,  // .={.....
                /* 0DB0 */  0xEE, 0xDE, 0x83, 0xBE, 0x1D, 0xF8, 0x32, 0x83,  // ......2.
                /* 0DB8 */  0x21, 0x18, 0xE6, 0x0A, 0x02, 0x34, 0x6F, 0x49,  // !....4oI
                /* 0DC0 */  0xE0, 0xBB, 0x7C, 0x00, 0xEB, 0xFF, 0x3F, 0xC1,  // ..|...?.
                /* 0DC8 */  0x21, 0xFA, 0xF2, 0x01, 0x78, 0x89, 0xFB, 0x48,  // !...x..H
                /* 0DD0 */  0xD0, 0xE5, 0x03, 0x17, 0xFF, 0x15, 0xA0, 0xCB,  // ........
                /* 0DD8 */  0x07, 0xBB, 0xD7, 0x61, 0xC6, 0xEF, 0xD0, 0x27,  // ...a...'
                /* 0DE0 */  0x06, 0x0A, 0xE1, 0xB8, 0x14, 0x0A, 0x7B, 0x70,  // ......{p
                /* 0DE8 */  0x40, 0xC5, 0x83, 0xA3, 0x20, 0x1E, 0xB4, 0xE3,  // @... ...
                /* 0DF0 */  0x5D, 0x3E, 0xD0, 0x23, 0xF3, 0xE5, 0x03, 0x43,  // ]>.#...C
                /* 0DF8 */  0x30, 0xCE, 0xC1, 0x01, 0xDA, 0xE9, 0x83, 0x1D,  // 0.......
                /* 0E00 */  0x1C, 0x80, 0xC9, 0x9D, 0x89, 0x9C, 0x3F, 0x40,  // ......?@
                /* 0E08 */  0x76, 0xCE, 0x00, 0xF3, 0xF8, 0x60, 0xFE, 0xFF,  // v....`..
                /* 0E10 */  0xCF, 0x19, 0x80, 0x5D, 0x94, 0xE7, 0x0C, 0xC0,  // ...]....
                /* 0E18 */  0x8C, 0xB6, 0x3B, 0x13, 0x5A, 0xEB, 0x9D, 0x09,  // ..;.Z...
                /* 0E20 */  0xC2, 0x6D, 0x81, 0x29, 0xBC, 0x33, 0xA1, 0xB4,  // .m.).3..
                /* 0E28 */  0xDD, 0x99, 0x80, 0xD0, 0xFF, 0xFF, 0xCE, 0x04,  // ........
                /* 0E30 */  0x38, 0x14, 0x34, 0x69, 0xD4, 0x61, 0xD1, 0x93,  // 8.4i.a..
                /* 0E38 */  0x36, 0x88, 0x27, 0xED, 0xBB, 0x0A, 0x9C, 0xCB,  // 6.'.....
                /* 0E40 */  0x07, 0xEE, 0xAE, 0x02, 0xEF, 0xCE, 0x04, 0x9C,  // ........
                /* 0E48 */  0xEE, 0x2A, 0xE0, 0xBB, 0x7D, 0x00, 0xC7, 0xFF,  // .*..}...
                /* 0E50 */  0xFF, 0xED, 0x03, 0xCE, 0x28, 0xDF, 0x3E, 0x00,  // ....(.>.
                /* 0E58 */  0x33, 0x91, 0x2F, 0x4D, 0x28, 0x58, 0x4B, 0xB8,  // 3./M(XK.
                /* 0E60 */  0x7D, 0x20, 0x2E, 0x4D, 0x98, 0x03, 0x00, 0x8F,  // } .M....
                /* 0E68 */  0x7D, 0x6B, 0x42, 0x05, 0xA6, 0xD0, 0xB5, 0xC9,  // }kB.....
                /* 0E70 */  0x47, 0x07, 0x1E, 0x10, 0x8E, 0x82, 0xF8, 0xD6,  // G.......
                /* 0E78 */  0x04, 0xF8, 0x3B, 0x69, 0x80, 0x77, 0x06, 0xFE,  // ..;i.w..
                /* 0E80 */  0xFF, 0xDF, 0x9A, 0x80, 0xCF, 0x49, 0x03, 0xF0,  // .....I..
                /* 0E88 */  0x64, 0xFC, 0xDA, 0x04, 0xC8, 0x3B, 0x09, 0xB3,  // d....;..
                /* 0E90 */  0x6B, 0x13, 0x70, 0xF8, 0xFF, 0x5F, 0x9B, 0x00,  // k.p.._..
                /* 0E98 */  0xFB, 0x4E, 0xAE, 0x4D, 0x80, 0xAE, 0xE3, 0x02,  // .N.M....
                /* 0EA0 */  0xBB, 0x7D, 0x00, 0x97, 0xFF, 0xFF, 0xED, 0x03,  // .}......
                /* 0EA8 */  0x6C, 0xC3, 0x7C, 0x6D, 0x02, 0xEC, 0x1D, 0x00,  // l.|m....
                /* 0EB0 */  0xF8, 0xB5, 0x09, 0x70, 0x7D, 0xD2, 0x80, 0xFD,  // ...p}...
                /* 0EB8 */  0xFF, 0xBF, 0x36, 0x01, 0x46, 0x4E, 0x1A, 0xC0,  // ..6.FN..
                /* 0EC0 */  0x7F, 0x9C, 0x4F, 0x1A, 0x80, 0x19, 0x81, 0x27,  // ..O....'
                /* 0EC8 */  0x0D, 0xD4, 0x21, 0xC0, 0x82, 0x0F, 0xDD, 0xE4,  // ..!.....
                /* 0ED0 */  0x0A, 0x60, 0x8F, 0x43, 0x24, 0x30, 0xC1, 0x03,  // .`.C$0..
                /* 0ED8 */  0x47, 0x39, 0xCB, 0xE3, 0x34, 0x78, 0x85, 0x53,  // G9..4x.S
                /* 0EE0 */  0xD2, 0x18, 0x02, 0x9D, 0xF7, 0x41, 0x45, 0x78,  // .....AEx
                /* 0EE8 */  0x3F, 0x31, 0xB8, 0xCE, 0x1B, 0x28, 0x49, 0x06,  // ?1...(I.
                /* 0EF0 */  0xFE, 0xFF, 0x27, 0x1F, 0xC0, 0xD2, 0x79, 0x03,  // ..'...y.
                /* 0EF8 */  0x5C, 0x07, 0x08, 0xE0, 0x2F, 0xFE, 0x00, 0x01,  // \.../...
                /* 0F00 */  0xA8, 0x51, 0xB9, 0x44, 0x5D, 0xE3, 0x70, 0xAA,  // .Q.D].p.
                /* 0F08 */  0x25, 0xFC, 0xFF, 0x0F, 0x10, 0xFC, 0x1A, 0xC7,  // %.......
                /* 0F10 */  0xEF, 0xE6, 0xBE, 0xCC, 0x09, 0x4C, 0xD7, 0x38,  // .....L.8
                /* 0F18 */  0xAE, 0x12, 0x46, 0xAA, 0x96, 0xAB, 0x93, 0x03,  // ..F.....
                /* 0F20 */  0xD7, 0x01, 0x23, 0x38, 0x83, 0x78, 0xD8, 0x8E,  // ..#8.x..
                /* 0F28 */  0x75, 0xAA, 0x47, 0x8F, 0xC9, 0x8A, 0xEF, 0x04,  // u.G.....
                /* 0F30 */  0x3A, 0x82, 0x38, 0xC8, 0x31, 0x0E, 0x28, 0x1E,  // :.8.1.(.
                /* 0F38 */  0xE9, 0xC1, 0x95, 0x6D, 0x6C, 0xE8, 0x63, 0x92,  // ...ml.c.
                /* 0F40 */  0x35, 0x23, 0x0A, 0xF0, 0x68, 0xCE, 0x05, 0x33,  // 5#..h..3
                /* 0F48 */  0x3B, 0xE0, 0x77, 0xFF, 0x07, 0x5F, 0xB2, 0xD9,  // ;.w.._..
                /* 0F50 */  0xA1, 0x75, 0xDC, 0x48, 0xC8, 0x68, 0x6A, 0x87,  // .u.H.hj.
                /* 0F58 */  0xD4, 0x6C, 0x1E, 0x19, 0x3C, 0x39, 0x30, 0xFF,  // .l..<90.
                /* 0F60 */  0xFF, 0x27, 0x07, 0x96, 0x23, 0x83, 0x27, 0x07,  // .'..#.'.
                /* 0F68 */  0xAE, 0x68, 0xA7, 0x2F, 0xF4, 0xE4, 0x3C, 0x91,  // .h./..<.
                /* 0F70 */  0x57, 0x81, 0x08, 0xEF, 0x34, 0xBE, 0x4C, 0x02,  // W...4.L.
                /* 0F78 */  0x47, 0x24, 0x5F, 0x26, 0x81, 0xB3, 0x9C, 0x3B,  // G$_&...;
                /* 0F80 */  0x10, 0xEA, 0xA9, 0xE0, 0xB3, 0x82, 0x29, 0x7C,  // ......)|
                /* 0F88 */  0x01, 0x70, 0xB8, 0x23, 0x02, 0xFA, 0x0E, 0x84,  // .p.#....
                /* 0F90 */  0x0F, 0x73, 0x07, 0x02, 0x9A, 0x23, 0xF1, 0x10,  // .s...#..
                /* 0F98 */  0xF8, 0xFF, 0xFF, 0x8E, 0x00, 0x8E, 0x2B, 0x10,  // ......+.
                /* 0FA0 */  0xF0, 0x36, 0x7F, 0x05, 0x02, 0xD4, 0x08, 0xB9,  // .6......
                /* 0FA8 */  0x02, 0xA1, 0x85, 0x5D, 0x81, 0x10, 0x77, 0x49,  // ...]..wI
                /* 0FB0 */  0xCC, 0xF8, 0x2D, 0xE7, 0x0A, 0x44, 0x21, 0x2C,  // ..-..D!,
                /* 0FB8 */  0x04, 0x46, 0x32, 0x20, 0x74, 0x70, 0xE0, 0xC1,  // .F2 tp..
                /* 0FC0 */  0xAF, 0x40, 0x14, 0xC4, 0xD7, 0x0B, 0xDF, 0x3E,  // .@.....>
                /* 0FC8 */  0x7C, 0x05, 0x82, 0x77, 0x6E, 0x80, 0x77, 0x35,  // |..wn.w5
                /* 0FD0 */  0x04, 0xFF, 0xFF, 0xFF, 0x2A, 0x06, 0xE7, 0xDC,  // ....*...
                /* 0FD8 */  0x00, 0xAE, 0x80, 0xA3, 0x43, 0x8F, 0xD9, 0x97,  // ....C...
                /* 0FE0 */  0x20, 0x18, 0x03, 0x04, 0xA6, 0xE7, 0x20, 0xF0,  //  ..... .
                /* 0FE8 */  0x5D, 0xF4, 0x3C, 0x40, 0x1C, 0xB0, 0xCF, 0x41,  // ].<@...A
                /* 0FF0 */  0xD8, 0xF1, 0x01, 0xD3, 0x9B, 0x10, 0xF8, 0xCE,  // ........
                /* 0FF8 */  0x03, 0xBE, 0x09, 0xE1, 0x80, 0x7D, 0x13, 0xC2,  // .....}..
                /* 1000 */  0x5E, 0x54, 0xC1, 0xF0, 0xFF, 0x1F, 0x1F, 0xF0,  // ^T......
                /* 1008 */  0x80, 0xF2, 0xBD, 0x16, 0x7C, 0x87, 0x1E, 0xF0,  // ....|...
                /* 1010 */  0x8E, 0x0F, 0xF8, 0x1C, 0x7A, 0x00, 0x4F, 0xEA,  // ....z.O.
                /* 1018 */  0x0F, 0x3D, 0x40, 0xE9, 0xFF, 0x7F, 0xE8, 0x01,  // .=@.....
                /* 1020 */  0x1E, 0x3A, 0x0F, 0x3D, 0x68, 0xDD, 0xD7, 0x48,  // .:.=h..H
                /* 1028 */  0x08, 0xB7, 0x05, 0xA6, 0xF6, 0x1A, 0x89, 0xD2,  // ........
                /* 1030 */  0x79, 0x8D, 0x04, 0x28, 0xF8, 0xFF, 0xBF, 0x46,  // y..(...F
                /* 1038 */  0x02, 0x4C, 0x3D, 0x9A, 0xC3, 0x9F, 0x35, 0xEE,  // .L=...5.
                /* 1040 */  0x68, 0x0E, 0xA6, 0xFF, 0xFF, 0x35, 0x12, 0x18,  // h....5..
                /* 1048 */  0xDD, 0x98, 0xC0, 0x77, 0x07, 0x02, 0xDE, 0xEE,  // ...w....
                /* 1050 */  0xEF, 0x40, 0x80, 0x1A, 0x31, 0x77, 0x20, 0x14,  // .@..1w .
                /* 1058 */  0xAC, 0xC5, 0xDD, 0x23, 0xA1, 0x1C, 0x00, 0xB8,  // ...#....
                /* 1060 */  0xA0, 0x8B, 0x24, 0x4A, 0x0A, 0x8C, 0x6E, 0x92,  // ..$J..n.
                /* 1068 */  0x3E, 0x3A, 0xF0, 0xE8, 0x97, 0x20, 0x0A, 0xE2,  // >:... ..
                /* 1070 */  0x8B, 0x24, 0xAC, 0xFF, 0xFF, 0x45, 0x12, 0xE0,  // .$...E..
                /* 1078 */  0xFF, 0xFF, 0xFF, 0x22, 0x09, 0xD8, 0x3D, 0xF6,  // ..."..=.
                /* 1080 */  0x80, 0xF7, 0x22, 0x09, 0x9C, 0x8E, 0x3D, 0x80,  // .."...=.
                /* 1088 */  0x95, 0xFF, 0xFF, 0xB1, 0x07, 0x86, 0xFC, 0x9B,  // ........
                /* 1090 */  0x24, 0x20, 0xCF, 0x99, 0x00, 0x65, 0x37, 0x49,  // $ ...e7I
                /* 1098 */  0x80, 0x2C, 0xFF, 0xFF, 0x9B, 0x24, 0xC0, 0xFF,  // .,...$..
                /* 10A0 */  0xFF, 0xFF, 0x4D, 0x12, 0x7C, 0x4E, 0x6E, 0x92,  // ..M.|Nn.
                /* 10A8 */  0x80, 0xAE, 0x43, 0x0B, 0xBB, 0x03, 0x01, 0x73,  // ..C....s
                /* 10B0 */  0xFB, 0x37, 0x49, 0x40, 0xCF, 0xFF, 0xFF, 0x26,  // .7I@...&
                /* 10B8 */  0x09, 0xFF, 0x00, 0xC0, 0x6F, 0x92, 0x00, 0xAF,  // ....o...
                /* 10C0 */  0xFF, 0xFF, 0x37, 0x49, 0x80, 0x47, 0xC7, 0x1E,  // ..7I.G..
                /* 10C8 */  0x70, 0xDE, 0x24, 0x81, 0xFB, 0x31, 0x85, 0xFF,  // p.$..1..
                /* 10D0 */  0xFF, 0x8F, 0x3D, 0xC0, 0x5B, 0xFF, 0xB1, 0x07,  // ..=.[...
                /* 10D8 */  0x50, 0x93, 0xED, 0x85, 0xA3, 0x63, 0x0F, 0x3F,  // P....c.?
                /* 10E0 */  0x0B, 0x38, 0xEB, 0x32, 0x75, 0x93, 0x84, 0xA1,  // .8.2u...
                /* 10E8 */  0x70, 0x20, 0xE4, 0x94, 0xE3, 0x74, 0x80, 0xBA,  // p ...t..
                /* 10F0 */  0x4B, 0xF2, 0x5C, 0x30, 0x4A, 0x71, 0xEE, 0x41,  // K.\0Jq.A
                /* 10F8 */  0x5D, 0x2C, 0x0D, 0x67, 0x10, 0x7B, 0xB8, 0x4B,  // ],.g.{.K
                /* 1100 */  0x02, 0x4A, 0xFE, 0xFF, 0x77, 0x49, 0x80, 0xFF,  // .J..wI..
                /* 1108 */  0xFF, 0xFF, 0xBB, 0x24, 0x78, 0x83, 0xDD, 0x04,  // ...$x...
                /* 1110 */  0xD0, 0xA7, 0x11, 0x4F, 0xE6, 0x65, 0xC7, 0xA3,  // ...O.e..
                /* 1118 */  0x39, 0x39, 0x9F, 0x04, 0x80, 0xDF, 0x38, 0x7C,  // 99....8|
                /* 1120 */  0x12, 0x00, 0xD7, 0xE0, 0xE0, 0x9C, 0x5C, 0x02,  // ......\.
                /* 1128 */  0xBE, 0x36, 0x3C, 0xD6, 0x78, 0x70, 0xC0, 0xF0,  // .6<.xp..
                /* 1130 */  0xDC, 0xC3, 0x07, 0x07, 0x9E, 0x3B, 0x2A, 0xF0,  // .....;*.
                /* 1138 */  0xFC, 0xFF, 0xDF, 0x51, 0x01, 0x03, 0x23, 0xF7,  // ...Q..#.
                /* 1140 */  0xED, 0x0A, 0xF0, 0xE4, 0xFF, 0x76, 0x05, 0xA8,  // .....v..
                /* 1148 */  0x09, 0x72, 0xBB, 0x42, 0x71, 0x38, 0xD8, 0xED,  // .r.Bq8..
                /* 1150 */  0x0A, 0x71, 0x47, 0xC5, 0x1E, 0xAF, 0x30, 0xD0,  // .qG...0.
                /* 1158 */  0xB2, 0xF0, 0xFF, 0xBF, 0xA5, 0x62, 0x22, 0xC0,  // .....b".
                /* 1160 */  0x28, 0x00, 0x84, 0x0E, 0x0F, 0x5C, 0x32, 0x1C,  // (....\2.
                /* 1168 */  0x05, 0xF1, 0x88, 0x7C, 0x4B, 0x05, 0x58, 0xFD,  // ...|K.X.
                /* 1170 */  0xFF, 0xBF, 0xA5, 0x02, 0xCC, 0x08, 0x77, 0xD1,  // ......w.
                /* 1178 */  0x82, 0x7E, 0x1C, 0x00, 0x9E, 0x57, 0x2D, 0xF0,  // .~...W-.
                /* 1180 */  0x0D, 0x0F, 0xCE, 0x55, 0x0B, 0x37, 0x3C, 0xEC,  // ...U.7<.
                /* 1188 */  0xFF, 0x7F, 0x78, 0xC0, 0xEC, 0xB2, 0x05, 0xBE,  // ..x.....
                /* 1190 */  0x1B, 0x30, 0xE0, 0xE1, 0x50, 0x05, 0xB8, 0x0A,  // .0..P...
                /* 1198 */  0x70, 0xA8, 0x02, 0x02, 0xFF, 0xFF, 0x43, 0x15,  // p.....C.
                /* 11A0 */  0x30, 0x53, 0xB6, 0x40, 0x1D, 0xAA, 0xF8, 0x71,  // 0S.@...q
                /* 11A8 */  0xC8, 0x4A, 0x1F, 0x30, 0x1A, 0xAE, 0x21, 0xDE,  // .J.0..!.
                /* 11B0 */  0x80, 0xF9, 0x6D, 0xC1, 0x57, 0x3D, 0x81, 0xE9,  // ..m.W=..
                /* 11B8 */  0xFE, 0xCB, 0x95, 0x51, 0x48, 0xC9, 0xE9, 0x0E,  // ...QH...
                /* 11C0 */  0x95, 0xFD, 0xF4, 0x43, 0x41, 0x0C, 0xE8, 0x1B,  // ...CA...
                /* 11C8 */  0xA2, 0x4F, 0x0E, 0x38, 0x15, 0x20, 0x9A, 0x82,  // .O.8. ..
                /* 11D0 */  0x11, 0x4E, 0xE8, 0xCD, 0x13, 0x18, 0x12, 0xF8,  // .N......
                /* 11D8 */  0xE6, 0x09, 0x9E, 0x6B, 0x03, 0xBB, 0x21, 0x02,  // ...k..!.
                /* 11E0 */  0x0B, 0x39, 0x93, 0x46, 0xED, 0xD9, 0x93, 0x36,  // .9.F...6
                /* 11E8 */  0x85, 0x27, 0xED, 0xBB, 0x0A, 0x9C, 0xDB, 0x07,  // .'......
                /* 11F0 */  0xEE, 0xAE, 0x02, 0xEF, 0x86, 0xC8, 0xFF, 0xFF,  // ........
                /* 11F8 */  0xD7, 0x2C, 0xE0, 0x7D, 0xF9, 0x00, 0xDE, 0x09,  // .,.}....
                /* 1200 */  0x2E, 0x1F, 0x80, 0x9A, 0xB8, 0x8F, 0x04, 0x5D,  // .......]
                /* 1208 */  0x3E, 0x70, 0xF1, 0x5F, 0x01, 0xBA, 0x7C, 0xB0,  // >p._..|.
                /* 1210 */  0x0B, 0x22, 0x66, 0xFC, 0x0E, 0x7D, 0x62, 0xA0,  // ."f..}b.
                /* 1218 */  0x10, 0x8E, 0x4B, 0xA1, 0xB0, 0x07, 0x07, 0x54,  // ..K....T
                /* 1220 */  0x3C, 0x38, 0x0A, 0xE2, 0x41, 0xFB, 0x16, 0x04,  // <8..A...
                /* 1228 */  0xE7, 0xF2, 0x81, 0x21, 0xF8, 0xFF, 0xBF, 0x05,  // ...!....
                /* 1230 */  0x01, 0x4F, 0x02, 0xDF, 0x82, 0xC0, 0x77, 0xCE,  // .O....w.
                /* 1238 */  0x00, 0xEF, 0xED, 0x10, 0xF8, 0x9F, 0x33, 0x80,  // ......3.
                /* 1240 */  0x77, 0x83, 0x73, 0x06, 0x28, 0xFF, 0xFF, 0xE7,  // w.s.(...
                /* 1248 */  0x0C, 0xE0, 0xA9, 0xED, 0xCE, 0x84, 0xD6, 0x7A,  // .......z
                /* 1250 */  0x67, 0x82, 0x70, 0x1C, 0x64, 0x0A, 0xEF, 0x4C,  // g.p.d..L
                /* 1258 */  0x28, 0x6D, 0x77, 0x26, 0x80, 0x14, 0xA7, 0x74,  // (mw&...t
                /* 1260 */  0xF8, 0xA7, 0x51, 0xDC, 0x09, 0x10, 0x0C, 0xFF,  // ..Q.....
                /* 1268 */  0xFF, 0x3B, 0x13, 0x30, 0x3B, 0x8C, 0x82, 0xEF,  // .;.0;...
                /* 1270 */  0xF6, 0x01, 0xBC, 0x23, 0xDC, 0x3E, 0x00, 0x35,  // ...#.>.5
                /* 1278 */  0x91, 0x2F, 0x4D, 0x28, 0x58, 0x4B, 0xB8, 0x7D,  // ./M(XK.}
                /* 1280 */  0x20, 0x2E, 0x4D, 0x98, 0x03, 0x00, 0x8F, 0x7D,  //  .M....}
                /* 1288 */  0x6B, 0x42, 0x05, 0xA6, 0xD0, 0xB5, 0xC9, 0x47,  // kB.....G
                /* 1290 */  0x07, 0x1E, 0x10, 0x8E, 0x82, 0xF8, 0xD6, 0x84,  // ........
                /* 1298 */  0xFD, 0xFF, 0xDF, 0x9A, 0x00, 0x63, 0x27, 0x0D,  // .....c'.
                /* 12A0 */  0xF0, 0xDE, 0x9A, 0x80, 0xD3, 0x49, 0x03, 0xF0,  // .....I..
                /* 12A8 */  0x54, 0xE1, 0xA4, 0x01, 0xF1, 0xFF, 0x7F, 0x6D,  // T......m
                /* 12B0 */  0x02, 0x1C, 0x5D, 0x17, 0xD8, 0xB5, 0x09, 0x60,  // ..]....`
                /* 12B8 */  0xD0, 0x3D, 0x1C, 0xCE, 0xFF, 0xFF, 0xDA, 0x04,  // .=......
                /* 12C0 */  0xB8, 0xB9, 0x87, 0x03, 0xFF, 0x0C, 0xD7, 0x26,  // .......&
                /* 12C8 */  0x40, 0xDF, 0x01, 0x80, 0x5F, 0x9B, 0xE0, 0xFE,  // @..._...
                /* 12D0 */  0xFF, 0xAF, 0x4D, 0x80, 0xCF, 0x93, 0x06, 0x38,  // ..M....8
                /* 12D8 */  0xAF, 0x4D, 0xC0, 0xFD, 0xA4, 0x01, 0xFC, 0xFF,  // .M......
                /* 12E0 */  0xFF, 0x1D, 0x4E, 0x1A, 0x80, 0x9A, 0x3C, 0x6F,  // ..N...<o
                /* 12E8 */  0x03, 0x9D, 0x34, 0xF8, 0x59, 0xC0, 0xF9, 0x16,  // ..4.Y...
                /* 12F0 */  0xA9, 0x6B, 0x13, 0x0C, 0x85, 0x03, 0x21, 0x23,  // .k....!#
                /* 12F8 */  0x48, 0x30, 0x11, 0xA0, 0x2E, 0x4E, 0x3C, 0x0B,  // H0...N<.
                /* 1300 */  0x8C, 0x94, 0x93, 0xE8, 0xA8, 0xC1, 0x6F, 0x51,  // ......oQ
                /* 1308 */  0x86, 0x33, 0x88, 0x4F, 0x0C, 0xBE, 0x38, 0x01,  // .3.O..8.
                /* 1310 */  0xBE, 0x06, 0xE7, 0x33, 0x37, 0x7E, 0x32, 0xAF,  // ...37~2.
                /* 1318 */  0x19, 0x1E, 0xCD, 0x83, 0x91, 0x83, 0x4C, 0x0E,  // ......L.
                /* 1320 */  0xB4, 0xFF, 0xFF, 0xC9, 0x81, 0xE7, 0xC4, 0x0D,  // ........
                /* 1328 */  0xBE, 0xC1, 0xC1, 0x39, 0x33, 0x04, 0x7C, 0x10,  // ...93.|.
                /* 1330 */  0x78, 0xA0, 0xF0, 0xE0, 0x80, 0xE1, 0x89, 0xC1,  // x.......
                /* 1338 */  0x83, 0x03, 0xD7, 0x85, 0x0C, 0x30, 0x0D, 0xE5,  // .....0..
                /* 1340 */  0x7B, 0x0D, 0xE6, 0xFF, 0x7F, 0xAF, 0x01, 0xEC,  // {.......
                /* 1348 */  0x84, 0xB8, 0xD7, 0x00, 0x6A, 0xE4, 0xDE, 0x6B,  // ....j..k
                /* 1350 */  0x50, 0x1C, 0x96, 0x7F, 0xAF, 0x41, 0x5C, 0xC8,  // P....A\.
                /* 1358 */  0xB0, 0x07, 0x1B, 0x0C, 0xB4, 0x2E, 0x36, 0x14,  // ......6.
                /* 1360 */  0xC2, 0x42, 0x61, 0x24, 0x13, 0x42, 0x87, 0x07,  // .Ba$.B..
                /* 1368 */  0x2E, 0x0C, 0x8E, 0x82, 0x78, 0xE4, 0xBE, 0x92,  // ....x...
                /* 1370 */  0x01, 0xCB, 0xFF, 0xFF, 0x95, 0x0C, 0x58, 0x85,  // ......X.
                /* 1378 */  0xBB, 0xDB, 0x40, 0x0F, 0x73, 0x25, 0x03, 0xAA,  // ..@.s%..
                /* 1380 */  0x37, 0x16, 0x70, 0x0D, 0x0F, 0xCE, 0xED, 0x06,  // 7.p.....
                /* 1388 */  0x37, 0x3C, 0xE0, 0x79, 0xBF, 0x01, 0xDF, 0x75,  // 7<.y...u
                /* 1390 */  0x0F, 0xCC, 0xFF, 0xFF, 0xE1, 0x01, 0x9B, 0x73,  // .......s
                /* 1398 */  0x0C, 0xE0, 0xAA, 0xC4, 0x39, 0x06, 0x50, 0xA3,  // ....9.P.
                /* 13A0 */  0x74, 0x89, 0x3A, 0xC7, 0xE0, 0x94, 0xBF, 0x0F,  // t.:.....
                /* 13A8 */  0x74, 0xDD, 0x83, 0x73, 0x06, 0xA8, 0x19, 0x41,  // t..s...A
                /* 13B0 */  0x48, 0x2F, 0x2D, 0x56, 0x0A, 0xA9, 0xFB, 0x1E,  // H/-V....
                /* 13B8 */  0xD7, 0x08, 0x23, 0x45, 0xE7, 0x18, 0x94, 0x86,  // ..#E....
                /* 13C0 */  0x73, 0x0C, 0x05, 0xF1, 0xC8, 0x7D, 0xDF, 0xC3,  // s....}..
                /* 13C8 */  0xFC, 0xFF, 0xEF, 0x7B, 0x80, 0xA9, 0xC1, 0xE1,  // ...{....
                /* 13D0 */  0x27, 0x13, 0xB1, 0xFA, 0x7B, 0x00, 0x19, 0x1C,  // '...{...
                /* 13D8 */  0xF0, 0x9B, 0xBE, 0xEF, 0x86, 0x80, 0xAD, 0x03,  // ........
                /* 13E0 */  0x0C, 0x98, 0xFE, 0xFF, 0x77, 0x43, 0xC0, 0x02,  // ....wC..
                /* 13E8 */  0x92, 0xEF, 0x86, 0x00, 0x2B, 0x46, 0xE2, 0x4B,  // ....+F.K
                /* 13F0 */  0x10, 0x70, 0xFB, 0xFF, 0x5F, 0x82, 0x80, 0x4B,  // .p.._..K
                /* 13F8 */  0x8A, 0x4B, 0x10, 0xA0, 0x46, 0xCE, 0x25, 0x08,  // .K..F.%.
                /* 1400 */  0x25, 0x09, 0x42, 0xF2, 0x2E, 0x41, 0x88, 0xBB,  // %.B..A..
                /* 1408 */  0x21, 0xFE, 0x14, 0x84, 0x1B, 0x86, 0x6E, 0x41,  // !.....nA
                /* 1410 */  0x14, 0xC2, 0x32, 0x60, 0x24, 0x02, 0x42, 0xA7,  // ..2`$.B.
                /* 1418 */  0x07, 0x1E, 0xFB, 0x16, 0x44, 0x41, 0x7C, 0xC6,  // ....DA|.
                /* 1420 */  0xF0, 0xE5, 0x10, 0x70, 0xF6, 0xFF, 0x3F, 0xFF,  // ...p..?.
                /* 1428 */  0xC3, 0xBD, 0x08, 0x61, 0xCE, 0xFF, 0x80, 0x9D,  // ...a....
                /* 1430 */  0xBB, 0x24, 0xE0, 0xE1, 0x36, 0x04, 0xBE, 0xBB,  // .$..6...
                /* 1438 */  0x24, 0xE0, 0xE0, 0xFF, 0x7F, 0x3B, 0xE4, 0x77,  // $....;.w
                /* 1440 */  0x49, 0xC0, 0xD9, 0xB9, 0x07, 0x70, 0xD5, 0xE2,  // I....p..
                /* 1448 */  0xDC, 0x03, 0x68, 0xF9, 0xFF, 0x13, 0x58, 0xDC,  // ..h...X.
                /* 1450 */  0xF3, 0x42, 0xE7, 0x1E, 0x2E, 0x0A, 0x42, 0x62,  // .B....Bb
                /* 1458 */  0x5F, 0x24, 0x3A, 0xF2, 0x9C, 0x6C, 0x9F, 0x03,  // _$:..l..
                /* 1460 */  0x16, 0xF8, 0x69, 0x1F, 0xB6, 0x47, 0x7C, 0xD4,  // ..i..G|.
                /* 1468 */  0x31, 0xCE, 0xCC, 0x23, 0x3A, 0xE7, 0xDA, 0x07,  // 1..#:...
                /* 1470 */  0x47, 0x0F, 0x04, 0x3A, 0x7E, 0x51, 0x08, 0x4B,  // G..:~Q.K
                /* 1478 */  0xA2, 0xD0, 0x29, 0x0C, 0x7C, 0x53, 0x38, 0xCB,  // ..).|S8.
                /* 1480 */  0x13, 0x7E, 0x33, 0x38, 0x3C, 0x9F, 0xC2, 0x80,  // .~38<...
                /* 1488 */  0xE7, 0xC1, 0x07, 0x9C, 0xC7, 0x07, 0xE0, 0x9D,  // ........
                /* 1490 */  0xEF, 0xF8, 0x00, 0xF4, 0xFE, 0xFF, 0xC7, 0x07,  // ........
                /* 1498 */  0x70, 0x8B, 0x3A, 0x3E, 0xA0, 0x60, 0x2D, 0xF2,  // p.:>.`-.
                /* 14A0 */  0xA8, 0xA0, 0xCB, 0x83, 0x55, 0x0A, 0xF0, 0x38,  // ....U..8
                /* 14A8 */  0x44, 0x32, 0xDD, 0x97, 0x16, 0x7B, 0x1E, 0x07,  // D2...{..
                /* 14B0 */  0x39, 0x3A, 0x80, 0x4F, 0xC9, 0xD1, 0x01, 0xD0,  // 9:.O....
                /* 14B8 */  0x65, 0x4C, 0x80, 0xB6, 0xA3, 0x03, 0x90, 0x8F,  // eL......
                /* 14C0 */  0x7B, 0x74, 0x00, 0xED, 0xFF, 0xFF, 0xE8, 0x00,  // {t......
                /* 14C8 */  0x1C, 0x25, 0x1D, 0x1D, 0xD0, 0x12, 0x8F, 0x0E,  // .%......
                /* 14D0 */  0x68, 0x91, 0xF3, 0xD0, 0x0C, 0xD9, 0x30, 0x74,  // h.....0t
                /* 14D8 */  0x74, 0x40, 0x9D, 0x1C, 0x2C, 0xE7, 0xE8, 0x80,  // t@..,...
                /* 14E0 */  0xA2, 0x32, 0x98, 0x29, 0x7C, 0x74, 0xF0, 0x01,  // .2.)|t..
                /* 14E8 */  0x0C, 0xCE, 0xD1, 0x01, 0x77, 0x00, 0x83, 0x77,  // ....w..w
                /* 14F0 */  0x74, 0x00, 0x4E, 0x07, 0x30, 0x70, 0x9D, 0x1C,  // t.N.0p..
                /* 14F8 */  0x80, 0x77, 0xDD, 0x93, 0x03, 0x94, 0xFF, 0xFF,  // .w......
                /* 1500 */  0xC9, 0x01, 0xF0, 0x20, 0xE8, 0xE4, 0x80, 0x92,  // ... ....
                /* 1508 */  0x32, 0x72, 0x9F, 0x14, 0x34, 0x5B, 0x1F, 0xA9,  // 2r..4[..
                /* 1510 */  0x62, 0x84, 0x3C, 0x9B, 0x8A, 0x47, 0x46, 0x0E,  // b.<..GF.
                /* 1518 */  0x0E, 0xC0, 0xF2, 0x50, 0x0A, 0x9C, 0x0E, 0x0E,  // ...P....
                /* 1520 */  0x80, 0x97, 0xFF, 0xFF, 0xC1, 0x01, 0x97, 0xF9,  // ........
                /* 1528 */  0x04, 0x03, 0xE8, 0x3A, 0x38, 0xB0, 0x13, 0x0C,  // ...:8...
                /* 1530 */  0x9B, 0xE3, 0x21, 0xFA, 0x6C, 0xCB, 0x4E, 0x30,  // ..!.l.N0
                /* 1538 */  0x00, 0x57, 0xFE, 0xFF, 0x27, 0x07, 0xF0, 0x75,  // .W..'..u
                /* 1540 */  0x3E, 0x39, 0x00, 0xD2, 0xAE, 0x97, 0x3E, 0x39,  // >9....>9
                /* 1548 */  0x00, 0xE3, 0x23, 0x0C, 0xE0, 0xE8, 0xFF, 0x7F,  // ..#.....
                /* 1550 */  0x72, 0x00, 0x4E, 0xA1, 0x8F, 0x30, 0x80, 0xBA,  // r.N..0..
                /* 1558 */  0x33, 0x1D, 0xE0, 0xFB, 0xFF, 0x7F, 0x72, 0x00,  // 3.....r.
                /* 1560 */  0xDE, 0xA5, 0x8F, 0xB9, 0x80, 0xA6, 0xA3, 0x80,  // ........
                /* 1568 */  0x8F, 0xB9, 0xB6, 0x3A, 0x58, 0x8D, 0xF1, 0x31,  // ...:X..1
                /* 1570 */  0x17, 0x07, 0xF1, 0x08, 0x70, 0x02, 0x8F, 0x0E,  // ....p...
                /* 1578 */  0x80, 0xBF, 0xFF, 0xFF, 0xD1, 0x01, 0xF0, 0x13,  // ........
                /* 1580 */  0xFC, 0xE8, 0x00, 0x48, 0x3B, 0x4C, 0xB1, 0xA3,  // ...H;L..
                /* 1588 */  0x03, 0x70, 0x3E, 0x4D, 0x81, 0xEF, 0xFF, 0x7F,  // .p>M....
                /* 1590 */  0x74, 0x00, 0x3C, 0x16, 0x3F, 0x4D, 0x01, 0xBA,  // t.<.?M..
                /* 1598 */  0x0E, 0x31, 0xB8, 0xD3, 0x14, 0x70, 0xFF, 0xFF,  // .1...p..
                /* 15A0 */  0x9F, 0x1C, 0x00, 0xD7, 0xC9, 0x4F, 0x0E, 0x80,  // .....O..
                /* 15A8 */  0x1A, 0x81, 0x0B, 0xD4, 0xC9, 0x81, 0x73, 0x58,  // ......sX
                /* 15B0 */  0xF0, 0x43, 0x41, 0x3A, 0x27, 0xAD, 0xE1, 0x3E,  // .CA:'..>
                /* 15B8 */  0x39, 0x30, 0x94, 0x53, 0x8C, 0xED, 0xC1, 0x45,  // 90.S...E
                /* 15C0 */  0xAE, 0x19, 0x5C, 0xD0, 0x04, 0x52, 0x87, 0x06,  // ..\..R..
                /* 15C8 */  0x9F, 0x19, 0x2C, 0x8D, 0x42, 0x42, 0xCE, 0x0E,  // ..,.BB..
                /* 15D0 */  0xA8, 0xE8, 0x27, 0x08, 0x0A, 0x62, 0x40, 0xE7,  // ..'..b@.
                /* 15D8 */  0x3A, 0x3B, 0xA0, 0x55, 0x80, 0xE8, 0x1A, 0x70,  // :;.U...p
                /* 15E0 */  0x8C, 0xFF, 0xFF, 0x08, 0xE7, 0x94, 0x60, 0x90,  // ......`.
                /* 15E8 */  0xAB, 0x03, 0x9D, 0x99, 0x27, 0xC9, 0x35, 0xDC,  // ....'.5.
                /* 15F0 */  0x61, 0x10, 0xB8, 0x55, 0x4D, 0x11, 0x44, 0x6A,  // a..UM.Dj
                /* 15F8 */  0xCE, 0x04, 0xA8, 0x09, 0xF8, 0xE4, 0x80, 0xB9,  // ........
                /* 1600 */  0x38, 0x80, 0x4B, 0xDF, 0xC5, 0x01, 0xE4, 0xE8,  // 8.K.....
                /* 1608 */  0xFC, 0x00, 0xE2, 0x41, 0x73, 0x09, 0xE7, 0x0F,  // ...As...
                /* 1610 */  0x0A, 0xE2, 0x41, 0x3B, 0x1E, 0x84, 0x94, 0x9C,  // ..A;....
                /* 1618 */  0x3F, 0xA0, 0xC6, 0x39, 0x7F, 0x00, 0xCD, 0x51,  // ?..9...Q
                /* 1620 */  0x59, 0xD8, 0xB4, 0x41, 0x63, 0x4C, 0x80, 0xB6,  // Y..AcL..
                /* 1628 */  0xE3, 0x02, 0x3B, 0x80, 0x00, 0x95, 0xFF, 0xFF,  // ..;.....
                /* 1630 */  0x01, 0x04, 0x5C, 0xE9, 0x0F, 0x20, 0x80, 0x1A,  // ..\.. ..
                /* 1638 */  0x29, 0x6F, 0x03, 0x9D, 0xC9, 0x70, 0x22, 0x16,  // )o...p".
                /* 1640 */  0xA9, 0x03, 0x08, 0x4E, 0xEB, 0x7C, 0xA5, 0x11,  // ...N.|..
                /* 1648 */  0x42, 0x30, 0x3D, 0x43, 0x92, 0xD8, 0xE7, 0x0F,  // B0=C....
                /* 1650 */  0x54, 0x60, 0x0A, 0x05, 0x3C, 0x3B, 0xA0, 0x22,  // T`..<;."
                /* 1658 */  0x9D, 0x1D, 0x28, 0x88, 0x87, 0xED, 0xF3, 0x07,  // ..(.....
                /* 1660 */  0x60, 0x2B, 0xD8, 0xAD, 0x09, 0xCA, 0xED, 0xC5,  // `+......
                /* 1668 */  0xD7, 0x6D, 0x8B, 0x1F, 0x1C, 0x84, 0xFF, 0xFF,  // .m......
                /* 1670 */  0xE0, 0x80, 0xD1, 0xF4, 0x7D, 0x56, 0x01, 0xC6,  // ....}V..
                /* 1678 */  0x47, 0x2F, 0xF0, 0x1D, 0x1A, 0x1E, 0xBD, 0x80,  // G/......
                /* 1680 */  0xF1, 0x98, 0x7C, 0xF4, 0x02, 0xCE, 0xE1, 0x8F,  // ..|.....
                /* 1688 */  0x2A, 0x50, 0xFF, 0xFF, 0x47, 0x15, 0x38, 0xED,  // *P..G.8.
                /* 1690 */  0x8F, 0x2A, 0x40, 0x57, 0xEC, 0x39, 0x00, 0x34,  // .*@W.9.4
                /* 1698 */  0x18, 0xAF, 0x5B, 0x11, 0x4E, 0x2B, 0xD4, 0x99,  // ..[.N+..
                /* 16A0 */  0x9F, 0x52, 0xC4, 0x98, 0x61, 0x8E, 0x39, 0x56,  // .R..a.9V
                /* 16A8 */  0x98, 0x10, 0x61, 0xCF, 0x24, 0x4C, 0xF3, 0xD8,  // ..a.$L..
                /* 16B0 */  0x1A, 0x99, 0xE7, 0xE7, 0x63, 0x82, 0x4E, 0x61,  // ....c.Na
                /* 16B8 */  0xA8, 0x53, 0x81, 0xC3, 0x9D, 0xC2, 0x10, 0x07,  // .S......
                /* 16C0 */  0x53, 0x76, 0x6A, 0xC1, 0xC7, 0x39, 0xB5, 0x50,  // Svj..9.P
                /* 16C8 */  0x08, 0x07, 0x81, 0x51, 0x0C, 0x08, 0x9D, 0x22,  // ...Q..."
                /* 16D0 */  0xB8, 0x70, 0x38, 0x0A, 0xE2, 0xB3, 0x83, 0x4F,  // .p8....O
                /* 16D8 */  0x11, 0x70, 0x4E, 0x2D, 0x98, 0x83, 0x29, 0x60,  // .pN-..)`
                /* 16E0 */  0x66, 0x78, 0xF8, 0xFF, 0xFF, 0xBD, 0x05, 0x3F,  // fx.....?
                /* 16E8 */  0x3C, 0xE0, 0x79, 0x73, 0x01, 0xDF, 0x09, 0x05,  // <.ys....
                /* 16F0 */  0xBC, 0xC3, 0x03, 0x3E, 0x27, 0x14, 0xE0, 0x7D,  // ...>'..}
                /* 16F8 */  0x36, 0x03, 0x5F, 0xFC, 0x13, 0x0A, 0x68, 0xFE,  // 6._...h.
                /* 1700 */  0xFF, 0x67, 0x33, 0xE0, 0xAC, 0xEE, 0x58, 0x82,  // .g3...X.
                /* 1708 */  0x56, 0xFB, 0x0A, 0xD0, 0x64, 0xAB, 0x3D, 0x24,  // V...d.=$
                /* 1710 */  0xE8, 0x6C, 0xC6, 0x4F, 0x29, 0x3E, 0x7F, 0xFB,  // .l.O)>..
                /* 1718 */  0x58, 0x72, 0x20, 0xD6, 0x77, 0x36, 0x43, 0x29,  // Xr .w6C)
                /* 1720 */  0xA3, 0x90, 0x8E, 0xB3, 0x12, 0xEA, 0x94, 0x6A,  // .......j
                /* 1728 */  0x38, 0x83, 0x18, 0xD0, 0xB1, 0x06, 0x8E, 0x82,  // 8.......
                /* 1730 */  0xF4, 0xB1, 0x8A, 0x0D, 0xD1, 0x49, 0x8E, 0x66,  // .....I.f
                /* 1738 */  0x40, 0x51, 0xD7, 0xB5, 0x01, 0xFA, 0x20, 0x5E,  // @Q.... ^
                /* 1740 */  0x1B, 0x98, 0xB3, 0x21, 0xBE, 0x69, 0x02, 0xD1,  // ...!.i..
                /* 1748 */  0x39, 0xE3, 0x6E, 0x1F, 0xF8, 0x9B, 0xE6, 0xFF,  // 9.n.....
                /* 1750 */  0xFF, 0x4D, 0x13, 0x30, 0x31, 0x6E, 0xEC, 0xF5,  // .M.01n..
                /* 1758 */  0x03, 0x98, 0x8B, 0x59, 0x9B, 0xAE, 0x1F, 0x80,  // ...Y....
                /* 1760 */  0x97, 0xC8, 0x57, 0x78, 0xD4, 0x59, 0xC0, 0x12,  // ..Wx.Y..
                /* 1768 */  0xAE, 0x1F, 0x88, 0x4B, 0x16, 0xBF, 0x7E, 0x60,  // ...K..~`
                /* 1770 */  0x43, 0xDF, 0xE1, 0x51, 0x71, 0x29, 0x14, 0xF6,  // C..Qq)..
                /* 1778 */  0xEC, 0x80, 0x8A, 0x07, 0x47, 0xFE, 0xFF, 0x20,  // ....G.. 
                /* 1780 */  0x6C, 0xD8, 0xBE, 0x08, 0xF9, 0xEC, 0x80, 0x3B,  // l......;
                /* 1788 */  0x20, 0xB0, 0x21, 0xB2, 0xA3, 0x03, 0xBC, 0x3B,  //  .!....;
                /* 1790 */  0x16, 0x70, 0x3A, 0x3A, 0x80, 0xEF, 0xA4, 0x01,  // .p::....
                /* 1798 */  0xDE, 0x4B, 0x16, 0x70, 0x3A, 0x69, 0x00, 0x9E,  // .K.p:i..
                /* 17A0 */  0xCC, 0x9C, 0x34, 0x10, 0xFF, 0xFF, 0x93, 0x06,  // ..4.....
                /* 17A8 */  0x60, 0x44, 0xD2, 0x49, 0x03, 0x05, 0x4B, 0xC6,  // `D.I..K.
                /* 17B0 */  0xA6, 0x7B, 0x13, 0x4E, 0xE4, 0x3C, 0x74, 0xAC,  // .{.N.<t.
                /* 17B8 */  0xE0, 0xB2, 0x0E, 0x1A, 0xA8, 0x23, 0x8F, 0x6F,  // .....#.o
                /* 17C0 */  0xAC, 0xE0, 0xBB, 0xAC, 0xE3, 0x6E, 0xAC, 0xC0,  // .....n..
                /* 17C8 */  0xF3, 0x72, 0x08, 0xBE, 0x93, 0x03, 0xB0, 0xFB,  // .r......
                /* 17D0 */  0xFF, 0x9F, 0x1C, 0x60, 0xAA, 0x39, 0x39, 0x00,  // ...`.99.
                /* 17D8 */  0x6A, 0xC2, 0x5F, 0xE0, 0x50, 0xE0, 0x16, 0x03,  // j._.P...
                /* 17E0 */  0xA4, 0x93, 0x03, 0xBB, 0x37, 0xF8, 0xBE, 0x82,  // ....7...
                /* 17E8 */  0xB9, 0x89, 0x9C, 0xDC, 0x89, 0x78, 0x6E, 0x2F,  // .....xn/
                /* 17F0 */  0x2D, 0xB8, 0xFB, 0x3A, 0x8C, 0x13, 0x8F, 0x8F,  // -..:....
                /* 17F8 */  0x0F, 0x3C, 0xD0, 0xF1, 0x81, 0x82, 0x78, 0xE8,  // .<....x.
                /* 1800 */  0xBE, 0xC4, 0x01, 0xAE, 0xAE, 0xF6, 0x3E, 0x21,  // ......>!
                /* 1808 */  0xC1, 0x00, 0x3C, 0xDF, 0x73, 0x83, 0xF7, 0xFF,  // ..<.s...
                /* 1810 */  0x3F, 0xAE, 0x03, 0x9B, 0x03, 0x1F, 0xE0, 0xC4,  // ?.......
                /* 1818 */  0xC9, 0x69, 0x05, 0xEA, 0x81, 0x0F, 0x78, 0x8E,  // .i....x.
                /* 1820 */  0xC9, 0xE7, 0x26, 0xF8, 0xA7, 0x15, 0x7E, 0x6E,  // ..&...~n
                /* 1828 */  0x02, 0xB6, 0xFF, 0xFF, 0xE3, 0x0A, 0x0C, 0x37,  // .......7
                /* 1830 */  0xC7, 0x15, 0x40, 0xDA, 0x51, 0x05, 0xC6, 0x0D,  // ..@.Q...
                /* 1838 */  0xE0, 0x99, 0x05, 0x7B, 0x5C, 0x01, 0x58, 0xF1,  // ...{\.X.
                /* 1840 */  0xFF, 0x3F, 0xAE, 0x00, 0xFC, 0xFF, 0xFF, 0x1F,  // .?......
                /* 1848 */  0x57, 0x30, 0xE7, 0x3F, 0x5F, 0xDE, 0x01, 0x6F,  // W0.?_..o
                /* 1850 */  0x56, 0xA7, 0xA6, 0xC3, 0x86, 0x35, 0x43, 0x8B,  // V....5C.
                /* 1858 */  0xC0, 0x97, 0x77, 0x80, 0x29, 0xFF, 0xFF, 0xEB,  // ..w.)...
                /* 1860 */  0x07, 0x1C, 0x50, 0x7E, 0xFD, 0x00, 0xEE, 0x77,  // ..P~...w
                /* 1868 */  0x60, 0xB0, 0x8C, 0xE1, 0x28, 0x3C, 0x86, 0x77,  // `...(<.w
                /* 1870 */  0xED, 0xD7, 0x0F, 0xE0, 0x6E, 0xE7, 0xFA, 0x01,  // ....n...
                /* 1878 */  0xA8, 0x89, 0x7E, 0xFD, 0x40, 0x89, 0x82, 0x90,  // ..~.@...
                /* 1880 */  0x94, 0xAB, 0x27, 0xFA, 0xFF, 0x7F, 0xF5, 0x84,  // ..'.....
                /* 1888 */  0x31, 0xE6, 0xB7, 0x00, 0xDF, 0xBD, 0x00, 0xBF,  // 1.......
                /* 1890 */  0xF7, 0x26, 0xDC, 0xDD, 0x0B, 0xF0, 0x71, 0x69,  // .&....qi
                /* 1898 */  0xC2, 0x9E, 0x56, 0x80, 0xDD, 0xFF, 0xFF, 0xB4,  // ..V.....
                /* 18A0 */  0x02, 0xB8, 0xB8, 0x7B, 0x81, 0xE3, 0xB4, 0x02,  // ...{....
                /* 18A8 */  0x78, 0xD0, 0x73, 0x5A, 0x01, 0xA4, 0x9D, 0x54,  // x.sZ...T
                /* 18B0 */  0xB0, 0x17, 0x4F, 0xFF, 0xFF, 0x2F, 0x9E, 0x80,  // ..O../..
                /* 18B8 */  0xEB, 0x93, 0x06, 0xEE, 0xE2, 0x09, 0x18, 0x39,  // .......9
                /* 18C0 */  0x66, 0xE0, 0x2E, 0x9E, 0xC0, 0xF4, 0xFF, 0x7F,  // f.......
                /* 18C8 */  0xF1, 0x04, 0xB8, 0xE2, 0xE7, 0xB4, 0x02, 0xA8,  // ........
                /* 18D0 */  0xD1, 0x76, 0x5A, 0x41, 0xC1, 0x5A, 0xEB, 0xC5,  // .vZA.Z..
                /* 18D8 */  0x13, 0x7D, 0x5D, 0xE1, 0xF7, 0x4E, 0xFC, 0xFF,  // .}]..N..
                /* 18E0 */  0xFF, 0xDE, 0x09, 0x30, 0xE8, 0x00, 0x84, 0xBB,  // ...0....
                /* 18E8 */  0x77, 0x02, 0xC6, 0xFE, 0xFF, 0xB7, 0x0F, 0x60,  // w......`
                /* 18F0 */  0x78, 0x08, 0xF0, 0xED, 0x03, 0xF0, 0x72, 0xD1,  // x.....r.
                /* 18F8 */  0xF2, 0xED, 0x03, 0xF7, 0x52, 0xF0, 0xED, 0x83,  // ....R...
                /* 1900 */  0x8D, 0xF6, 0xED, 0x03, 0x1F, 0xFA, 0xCC, 0x40,  // .......@
                /* 1908 */  0x21, 0x1C, 0x97, 0x42, 0x61, 0x8F, 0x0E, 0xA8,  // !..Ba...
                /* 1910 */  0x9B, 0x97, 0xC1, 0x0C, 0xE2, 0x51, 0x3B, 0xDC,  // .....Q;.
                /* 1918 */  0xED, 0x03, 0x7D, 0x3E, 0x60, 0x23, 0x64, 0x27,  // ..}>`#d'
                /* 1920 */  0x07, 0x78, 0xC7, 0x0F, 0x76, 0x72, 0x00, 0x26,  // .x..vr.&
                /* 1928 */  0x04, 0x3E, 0x39, 0x80, 0xE1, 0xFF, 0x7F, 0x0D,  // .>9.....
                /* 1930 */  0xC2, 0x1E, 0x34, 0xC0, 0x3B, 0x3E, 0xE0, 0x73,  // ..4.;>.s
                /* 1938 */  0xD0, 0x00, 0x5C, 0x19, 0x3A, 0x68, 0x00, 0x6A,  // ..\.:h.j
                /* 1940 */  0xC2, 0x1E, 0x34, 0x50, 0xA3, 0x76, 0xF8, 0xB1,  // ..4P.v..
                /* 1948 */  0xE9, 0xA0, 0xC1, 0x06, 0x1C, 0xC1, 0x04, 0xFF,  // ........
                /* 1950 */  0xFF, 0xC7, 0x0C, 0x80, 0xFF, 0xFF, 0xFF, 0x63,  // .......c
                /* 1958 */  0x06, 0xCC, 0xD0, 0x94, 0x3A, 0x66, 0x00, 0x5E,  // ....:f.^
                /* 1960 */  0x24, 0x1D, 0x8F, 0xD0, 0x12, 0x9F, 0x01, 0xBA,  // $.......
                /* 1968 */  0x65, 0xD4, 0x38, 0x6A, 0xDD, 0xF5, 0xD8, 0x31,  // e.8j...1
                /* 1970 */  0xD7, 0xC7, 0x0A, 0x2E, 0xEB, 0xA0, 0x81, 0x3A,  // .......:
                /* 1978 */  0x53, 0x59, 0xCE, 0x41, 0x03, 0x45, 0x65, 0x30,  // SY.A.Ee0
                /* 1980 */  0x53, 0xF8, 0xA0, 0xE6, 0x83, 0x86, 0x8D, 0xDC,  // S.......
                /* 1988 */  0x3A, 0xA1, 0x86, 0x39, 0xA8, 0x01, 0xCD, 0xE1,  // :..9....
                /* 1990 */  0x91, 0x5B, 0x27, 0x68, 0xC4, 0x9D, 0x1C, 0x40,  // .['h...@
                /* 1998 */  0xFE, 0xFF, 0x3F, 0x39, 0x80, 0x5D, 0xD1, 0x79,  // ..?9.].y
                /* 19A0 */  0x07, 0x50, 0x23, 0xF0, 0xC6, 0x8D, 0x16, 0xFC,  // .P#.....
                /* 19A8 */  0x50, 0xD0, 0xC9, 0x01, 0x87, 0x72, 0x3A, 0x61,  // P....r:a
                /* 19B0 */  0x5F, 0xB9, 0x0D, 0x1D, 0x3E, 0x88, 0x81, 0x42,  // _...>..B
                /* 19B8 */  0xBC, 0x05, 0x1C, 0x44, 0x82, 0xE2, 0x2E, 0x9E,  // ...D....
                /* 19C0 */  0x28, 0x59, 0x14, 0x92, 0x71, 0x7A, 0x40, 0x05,  // (Y..qz@.
                /* 19C8 */  0x3F, 0x43, 0x50, 0x10, 0x03, 0x3A, 0xD5, 0xE9,  // ?CP..:..
                /* 19D0 */  0x01, 0x7D, 0xE2, 0x64, 0xA3, 0x74, 0x90, 0x8B,  // .}.d.t..
                /* 19D8 */  0x27, 0x50, 0xBC, 0x39, 0x80, 0xEB, 0xE0, 0x09,  // 'P.9....
                /* 19E0 */  0xE7, 0xFF, 0x7F, 0xF0, 0x04, 0xE3, 0x01, 0x04,  // ........
                /* 19E8 */  0x7C, 0x03, 0x3A, 0xCA, 0x43, 0xE4, 0x07, 0x10,  // |.:.C...
                /* 19F0 */  0xE0, 0x39, 0x2A, 0x1F, 0x40, 0x00, 0x47, 0x8E,  // .9*.@.G.
                /* 19F8 */  0x0E, 0x20, 0x80, 0x80, 0xFF, 0xFF, 0x39, 0x00,  // . ....9.
                /* 1A00 */  0x66, 0xE8, 0x93, 0x10, 0xEA, 0x00, 0x62, 0x11,  // f.....b.
                /* 1A08 */  0x07, 0x10, 0xC4, 0xB9, 0x93, 0x1D, 0x40, 0xE0,  // ......@.
                /* 1A10 */  0x06, 0x3E, 0x0D, 0xA1, 0xA2, 0x52, 0x28, 0xE8,  // .>...R(.
                /* 1A18 */  0xE9, 0x01, 0x15, 0x0D, 0x8E, 0x82, 0x78, 0xE4,  // ......x.
                /* 1A20 */  0x8E, 0x76, 0x7A, 0x40, 0x1F, 0xC7, 0xD8, 0x28,  // .vz@...(
                /* 1A28 */  0xD9, 0xE1, 0x01, 0xDE, 0x29, 0x0E, 0x38, 0x1D,  // ....).8.
                /* 1A30 */  0x1E, 0xC0, 0x75, 0xD4, 0x00, 0xEF, 0x21, 0x0E,  // ..u...!.
                /* 1A38 */  0x38, 0x1D, 0x35, 0xC0, 0xFE, 0xFF, 0x3F, 0x6A,  // 8.5...?j
                /* 1A40 */  0x00, 0x4B, 0x49, 0x47, 0x0D, 0x40, 0x8D, 0xBC,  // .KIG.@..
                /* 1A48 */  0xA3, 0x13, 0x4A, 0x12, 0x84, 0xE4, 0x1E, 0x9D,  // ..J.....
                /* 1A50 */  0xD0, 0x20, 0x2F, 0x00, 0xC1, 0x4F, 0xC8, 0x23,  // . /..O.#
                /* 1A58 */  0xF3, 0x9C, 0x0F, 0xCE, 0x23, 0x78, 0x72, 0x02,  // ....#xr.
                /* 1A60 */  0x3C, 0xFE, 0xFF, 0x4F, 0x4E, 0x80, 0x85, 0x93,  // <..ON...
                /* 1A68 */  0x20, 0x70, 0x3E, 0x7F, 0x00, 0x9E, 0x2C, 0x9D,  //  p>...,.
                /* 1A70 */  0x3F, 0x80, 0xDC, 0xFF, 0xFF, 0xFC, 0x01, 0x76,  // ?......v
                /* 1A78 */  0x61, 0x27, 0x27, 0xD4, 0xF9, 0xC3, 0x42, 0x8F,  // a''...B.
                /* 1A80 */  0xA4, 0x88, 0x93, 0x13, 0x3B, 0x09, 0xC7, 0x0D,  // ....;...
                /* 1A88 */  0xFE, 0xD6, 0xE4, 0x83, 0x82, 0xCF, 0x1F, 0x98,  // ........
                /* 1A90 */  0x53, 0x29, 0x70, 0x3C, 0x39, 0x01, 0xFF, 0xC3,  // S)p<9...
                /* 1A98 */  0x03, 0xF0, 0xD6, 0x74, 0x78, 0x00, 0xD9, 0xFF,  // ...tx...
                /* 1AA0 */  0xFF, 0xF0, 0x00, 0x6C, 0x25, 0x9E, 0x4A, 0xD1,  // ...l%.J.
                /* 1AA8 */  0x92, 0x4F, 0xA5, 0x90, 0x66, 0x1C, 0x23, 0xFE,  // .O..f.#.
                /* 1AB0 */  0xFB, 0x76, 0x24, 0x9F, 0x1E, 0x30, 0xF2, 0x0E,  // .v$..0..
                /* 1AB8 */  0x43, 0xA8, 0xE3, 0x84, 0x0F, 0x43, 0x00, 0x17,  // C....C..
                /* 1AC0 */  0x4E, 0x20, 0x1E, 0x33, 0x97, 0x70, 0x00, 0xA1,  // N .3.p..
                /* 1AC8 */  0x20, 0x1E, 0xB3, 0xCF, 0xFB, 0x1E, 0x33, 0x6E,  //  .....3n
                /* 1AD0 */  0x26, 0xBE, 0x1F, 0xF8, 0x16, 0xE0, 0x21, 0xFD,  // &.....!.
                /* 1AD8 */  0xFF, 0x1F, 0x05, 0x61, 0x9F, 0x86, 0x00, 0xEF,  // ...a....
                /* 1AE0 */  0x9E, 0x4E, 0x20, 0x80, 0x9A, 0xD8, 0xC7, 0x52,  // .N ....R
                /* 1AE8 */  0xB4, 0x8C, 0x63, 0x29, 0xA4, 0x13, 0x08, 0xAC,  // ..c)....
                /* 1AF0 */  0xC8, 0xC7, 0x21, 0x54, 0x58, 0x0A, 0x9D, 0x4B,  // ..!TX..K
                /* 1AF8 */  0xFF, 0xFF, 0x8F, 0x0F, 0x98, 0x70, 0x70, 0x14,  // .....pp.
                /* 1B00 */  0xC4, 0xC7, 0x52, 0xC0, 0xDB, 0x59, 0x03, 0xDC,  // ..R..Y..
                /* 1B08 */  0xE7, 0x52, 0xC0, 0xFA, 0xFF, 0xFF, 0x04, 0xA1,  // .R......
                /* 1B10 */  0xB3, 0x06, 0xA0, 0x26, 0xF8, 0xE1, 0x09, 0x2D,  // ...&...-
                /* 1B18 */  0x04, 0x48, 0x87, 0x27, 0x38, 0x17, 0x05, 0x36,  // .H.'8..6
                /* 1B20 */  0xF4, 0xF0, 0x47, 0xEA, 0xCB, 0x8D, 0x0F, 0xD8,  // ..G.....
                /* 1B28 */  0xEC, 0xF0, 0xC4, 0xE3, 0x1E, 0x9E, 0x00, 0x3A,  // .......:
                /* 1B30 */  0xC4, 0x1C, 0x33, 0xE2, 0xFF, 0x4F, 0x30, 0xD8,  // ..3..O0.
                /* 1B38 */  0x71, 0x85, 0x82, 0xF8, 0xB8, 0x02, 0x6F, 0x84,  // q.....o.
                /* 1B40 */  0x35, 0x23, 0xE8, 0xE8, 0x04, 0x98, 0x19, 0x1D,  // 5#......
                /* 1B48 */  0xAC, 0x33, 0x39, 0xEC, 0xD1, 0x01, 0x9F, 0x23,  // .39....#
                /* 1B50 */  0x33, 0x39, 0xAC, 0x00, 0x8A, 0x4C, 0x1D, 0x56,  // 39...L.V
                /* 1B58 */  0x90, 0xFF, 0xFF, 0xC3, 0x0A, 0x60, 0x23, 0xCD,  // .....`#.
                /* 1B60 */  0xD3, 0x40, 0x87, 0x15, 0x5C, 0xBA, 0xC3, 0x0A,  // .@..\...
                /* 1B68 */  0xE2, 0x9C, 0x85, 0x3D, 0xAC, 0xC0, 0x49, 0x02,  // ...=..I.
                /* 1B70 */  0xAB, 0xC3, 0x0A, 0xCF, 0x00, 0x23, 0xC5, 0x24,  // .....#.$
                /* 1B78 */  0x3A, 0x69, 0x70, 0x8D, 0x67, 0x16, 0x0A, 0xE2,  // :ip.g...
                /* 1B80 */  0x33, 0x83, 0x0F, 0x2B, 0x80, 0xA9, 0x58, 0x77,  // 3..+..Xw
                /* 1B88 */  0x12, 0xA8, 0x63, 0x03, 0x0E, 0xFF, 0xFF, 0xB1,  // ..c.....
                /* 1B90 */  0xC1, 0xBD, 0x91, 0x80, 0xEF, 0x16, 0x00, 0x67,  // .......g
                /* 1B98 */  0x22, 0x6C, 0x6A, 0xC0, 0xEF, 0x3C, 0x02, 0xBE,  // "lj..<..
                /* 1BA0 */  0xDB, 0x28, 0xB0, 0x04, 0xE5, 0xB7, 0x6B, 0x38,  // .(....k8
                /* 1BA8 */  0x71, 0x6E, 0x35, 0x40, 0x13, 0xCA, 0xC2, 0xA6,  // qn5@....
                /* 1BB0 */  0x0D, 0xF5, 0xFF, 0x3F, 0x6D, 0x8F, 0xE2, 0x18,  // ...?m...
                /* 1BB8 */  0x8E, 0xC2, 0x63, 0x78, 0x78, 0x4C, 0xE0, 0x6B,  // ..cxxL.k
                /* 1BC0 */  0x0D, 0xF0, 0x56, 0x75, 0xAD, 0x01, 0xD4, 0x84,  // ..Vu....
                /* 1BC8 */  0xBD, 0x8D, 0xA2, 0x60, 0x1D, 0xFE, 0xAA, 0x8F,  // ...`....
                /* 1BD0 */  0x38, 0xD5, 0x30, 0x9F, 0x10, 0xE4, 0x58, 0xC2,  // 8.0...X.
                /* 1BD8 */  0x02, 0xDF, 0x44, 0x51, 0x17, 0x51, 0x07, 0x3D,  // ..DQ.Q.=
                /* 1BE0 */  0x3A, 0xA0, 0xA2, 0xC1, 0x51, 0x10, 0xDF, 0x44,  // :...Q..D
                /* 1BE8 */  0x01, 0x07, 0xFF, 0xFF, 0x9B, 0x28, 0x38, 0xC3,  // .....(8.
                /* 1BF0 */  0x8D, 0x0E, 0x7D, 0x0E, 0xF0, 0x70, 0x9F, 0x0C,  // ..}..p..
                /* 1BF8 */  0x0E, 0xF9, 0x01, 0x82, 0x5D, 0x44, 0x01, 0x3E,  // ....]D.>
                /* 1C00 */  0xB8, 0x3A, 0x66, 0x00, 0x6A, 0xFE, 0xFF, 0x41,  // .:f.j..A
                /* 1C08 */  0x2E, 0xA2, 0xA8, 0xA3, 0x80, 0x83, 0x1D, 0x35,  // .......5
                /* 1C10 */  0x04, 0x1C, 0xE1, 0x68, 0x5F, 0x44, 0xD9, 0xB8,  // ...h_D..
                /* 1C18 */  0x4F, 0x27, 0x74, 0x88, 0x8A, 0xC7, 0x46, 0x08,  // O't...F.
                /* 1C20 */  0x46, 0xB9, 0x82, 0x51, 0x08, 0x87, 0x80, 0x51,  // F..Q...Q
                /* 1C28 */  0x84, 0x9B, 0x18, 0x4A, 0x34, 0x1C, 0x05, 0xF1,  // ...J4...
                /* 1C30 */  0x81, 0xC1, 0xE7, 0x0C, 0x38, 0x43, 0x3A, 0x87,  // ....8C:.
                /* 1C38 */  0x53, 0xF4, 0xAD, 0x10, 0x78, 0x9E, 0x33, 0xC0,  // S...x.3.
                /* 1C40 */  0x37, 0x3A, 0x38, 0x47, 0x70, 0x0F, 0xF8, 0x7D,  // 7:8Gp..}
                /* 1C48 */  0x13, 0x30, 0x73, 0x28, 0x81, 0x73, 0xDB, 0xE6,  // .0s(.s..
                /* 1C50 */  0x17, 0x4E, 0xF8, 0xFF, 0xFF, 0x0B, 0x27, 0xE0,  // .N....'.
                /* 1C58 */  0x5C, 0xD6, 0xA1, 0x04, 0x50, 0xA3, 0xF5, 0x50,  // \...P..P
                /* 1C60 */  0x82, 0xD6, 0x7E, 0x28, 0x41, 0x4F, 0xF7, 0x01,  // ..~(AO..
                /* 1C68 */  0xC4, 0x40, 0x07, 0x14, 0x26, 0xC4, 0x13, 0x95,  // .@..&...
                /* 1C70 */  0x6E, 0xDA, 0x28, 0x9D, 0x14, 0x52, 0x72, 0x96,  // n.(..Rr.
                /* 1C78 */  0x42, 0x65, 0x3F, 0x43, 0x50, 0x10, 0x03, 0x3A,  // Be?CP..:
                /* 1C80 */  0xD8, 0xD1, 0x01, 0xCA, 0xFF, 0x7F, 0xB8, 0xA7,  // ........
                /* 1C88 */  0x73, 0x10, 0xA7, 0x51, 0xFC, 0x59, 0x1B, 0x10,  // s..Q.Y..
                /* 1C90 */  0x2B, 0x6E, 0xD2, 0x28, 0x39, 0xF7, 0x31, 0x0A,  // +n.(9.1.
                /* 1C98 */  0xE2, 0x49, 0x3B, 0x2A, 0x84, 0x6C, 0x4C, 0x1A,  // .I;*.lL.
                /* 1CA0 */  0x3D, 0xE7, 0xE7, 0x00, 0x7E, 0x67, 0x61, 0x97,  // =...~ga.
                /* 1CA8 */  0x15, 0xE0, 0x29, 0x72, 0xDA, 0xD0, 0x67, 0xF0,  // ..)r..g.
                /* 1CB0 */  0x44, 0x53, 0xF5, 0x38, 0x34, 0x8D, 0xA3, 0xA8,  // DS.84...
                /* 1CB8 */  0xEE, 0xCE, 0xA0, 0x91, 0x9E, 0x6C, 0x63, 0xF3,  // .....lc.
                /* 1CC0 */  0x95, 0xC2, 0x31, 0xE9, 0x38, 0x67, 0x6B, 0x38,  // ..1.8gk8
                /* 1CC8 */  0xD2, 0x76, 0x0B, 0x01, 0xE1, 0xFF, 0xFF, 0x16,  // .v......
                /* 1CD0 */  0x02, 0x4C, 0xB4, 0xDD, 0x0F, 0x01, 0x5D, 0xE3,  // .L....].
                /* 1CD8 */  0x0A, 0x18, 0xF3, 0x8C, 0x1F, 0x26, 0x3C, 0xC7,  // .....&<.
                /* 1CE0 */  0x43, 0xF4, 0x34, 0x7C, 0x3F, 0x04, 0x06, 0xE3,  // C.4|?...
                /* 1CE8 */  0x79, 0xF8, 0x60, 0xF7, 0x43, 0xC0, 0xD2, 0xFF,  // y.`.C...
                /* 1CF0 */  0xFF, 0xB4, 0xC1, 0xEE, 0x05, 0x07, 0x8C, 0xB9,  // ........
                /* 1CF8 */  0x1F, 0x02, 0x7C, 0x10, 0x78, 0xCC, 0x00, 0xD4,  // ..|.x...
                /* 1D00 */  0x04, 0x3E, 0x66, 0xA0, 0x38, 0x08, 0x90, 0x8E,  // .>f.8...
                /* 1D08 */  0x19, 0x0C, 0x3B, 0xE8, 0xDB, 0xDD, 0x61, 0xF8,  // ..;...a.
                /* 1D10 */  0x34, 0xED, 0x71, 0x1E, 0x09, 0xE6, 0xA0, 0x81,  // 4.q.....
                /* 1D18 */  0xFD, 0xFF, 0x1F, 0x34, 0x00, 0xCB, 0xD7, 0x71,  // ...4...q
                /* 1D20 */  0xDC, 0x41, 0x03, 0x60, 0xC3, 0xFF, 0x9F, 0xA0,  // .A.`....
                /* 1D28 */  0xC1, 0x83, 0x06, 0xA0, 0x46, 0xDD, 0x9D, 0x0F,  // ....F...
                /* 1D30 */  0xC5, 0xE1, 0xBB, 0x9E, 0x0F, 0x1A, 0x70, 0x46,  // ......pF
                /* 1D38 */  0x7C, 0x44, 0x18, 0x75, 0x97, 0x3E, 0x94, 0x2E,  // |D.u.>..
                /* 1D40 */  0x0A, 0xE9, 0x38, 0x68, 0xA0, 0x92, 0x1F, 0x0B,  // ..8h....
                /* 1D48 */  0x28, 0x88, 0x01, 0x1D, 0xEB, 0xA0, 0x01, 0xF5,  // (.......
                /* 1D50 */  0xCE, 0x07, 0x58, 0xBD, 0xEE, 0x79, 0xCE, 0x7C,  // ..X..y.|
                /* 1D58 */  0xCB, 0xFE, 0xFF, 0xCF, 0xD9, 0x14, 0x9E, 0xB3,  // ........
                /* 1D60 */  0xAF, 0x1F, 0xE0, 0x3D, 0xF0, 0x02, 0xFF, 0xEB,  // ...=....
                /* 1D68 */  0x07, 0xF0, 0x56, 0x78, 0xFD, 0x00, 0xD4, 0x48,  // ..Vx...H
                /* 1D70 */  0xBB, 0x7E, 0xA0, 0x60, 0x2D, 0xF5, 0xA1, 0xA0,  // .~.`-...
                /* 1D78 */  0x01, 0x47, 0x7E, 0x83, 0xE5, 0xC7, 0x0F, 0x43,  // .G~....C
                /* 1D80 */  0xBC, 0x01, 0xFC, 0xFF, 0x0F, 0x20, 0x41, 0x79,  // ..... Ay
                /* 1D88 */  0x97, 0x0F, 0x94, 0x30, 0x0A, 0x09, 0x39, 0x39,  // ...0..99
                /* 1D90 */  0xA0, 0xA2, 0x1F, 0x0A, 0x28, 0x88, 0x01, 0x9D,  // ....(...
                /* 1D98 */  0xEB, 0xE4, 0x80, 0x56, 0x71, 0xF9, 0x20, 0xC3,  // ...Vq. .
                /* 1DA0 */  0x39, 0xA2, 0x17, 0x06, 0x9F, 0x3E, 0x00, 0xC6,  // 9....>..
                /* 1DA8 */  0xFE, 0xFF, 0x4F, 0x1F, 0xC0, 0xD7, 0xE2, 0xE9,  // ..O.....
                /* 1DB0 */  0x03, 0x50, 0x13, 0xF7, 0xE6, 0x8A, 0x8E, 0x3F,  // .P.....?
                /* 1DB8 */  0x36, 0x9D, 0x3E, 0x3C, 0xD9, 0xA7, 0x0F, 0x18,  // 6.><....
                /* 1DC0 */  0x91, 0x6F, 0x80, 0xA8, 0xB0, 0x14, 0xBA, 0x02,  // .o......
                /* 1DC8 */  0xFA, 0xE4, 0xC0, 0xC3, 0xC1, 0x51, 0x10, 0x8F,  // .....Q..
                /* 1DD0 */  0xDA, 0x27, 0x07, 0x38, 0xA7, 0x0F, 0xCC, 0x15,  // .'.8....
                /* 1DD8 */  0x10, 0xD8, 0xFF, 0xFF, 0xAF, 0x80, 0x00, 0x97,  // ........
                /* 1DE0 */  0x34, 0x9E, 0x33, 0x00, 0x35, 0x82, 0xCE, 0x19,  // 4.3.5...
                /* 1DE8 */  0x28, 0x29, 0xB7, 0x5C, 0x7A, 0xCE, 0xF0, 0xFF,  // ().\z...
                /* 1DF0 */  0xFF, 0xD0, 0xC4, 0xCE, 0xF3, 0xC7, 0x71, 0x84,  // ......q.
                /* 1DF8 */  0x4C, 0xD6, 0x31, 0x03, 0x25, 0x88, 0x42, 0xE7,  // L.1.%.B.
                /* 1E00 */  0x1D, 0xC0, 0xD1, 0x31, 0x03, 0x7C, 0x07, 0x07,  // ...1.|..
                /* 1E08 */  0xE0, 0xED, 0xF1, 0xE0, 0x00, 0x28, 0xF9, 0xFF,  // .....(..
                /* 1E10 */  0x9F, 0x03, 0xB8, 0xBC, 0xC3, 0x1B, 0xEA, 0x28,  // .......(
                /* 1E18 */  0x60, 0xB9, 0x87, 0x37, 0x24, 0xCA, 0xBB, 0x0D,  // `..7$...
                /* 1E20 */  0x9B, 0x5B, 0xE0, 0x9A, 0x61, 0x74, 0x02, 0xD0,  // .[..at..
                /* 1E28 */  0xE9, 0x0D, 0x25, 0xED, 0xF4, 0x06, 0x50, 0xE2,  // ..%...P.
                /* 1E30 */  0xFC, 0xE1, 0x41, 0x73, 0x09, 0xC7, 0x0F, 0x0A,  // ..As....
                /* 1E38 */  0xE2, 0x41, 0x3B, 0x1E, 0x28, 0xEA, 0xF8, 0x01,  // .A;.(...
                /* 1E40 */  0x27, 0xCE, 0xE9, 0x0D, 0xA8, 0xFE, 0xFF, 0x85,  // '.......
                /* 1E48 */  0x4D, 0x1B, 0xFA, 0x28, 0x8E, 0xE1, 0x28, 0x3C,  // M..(..(<
                /* 1E50 */  0x86, 0x77, 0xE1, 0x04, 0x3E, 0x7F, 0x00, 0x6F,  // .w..>..o
                /* 1E58 */  0x91, 0xE7, 0x0F, 0x40, 0x8D, 0xAC, 0x73, 0x10,  // ...@..s.
                /* 1E60 */  0x8A, 0xC3, 0x32, 0xCF, 0x41, 0xC8, 0xF3, 0x07,  // ..2.A...
                /* 1E68 */  0x9F, 0xF8, 0x03, 0x82, 0x67, 0x66, 0x68, 0x72,  // ....gfhr
                /* 1E70 */  0x14, 0x02, 0x34, 0xFC, 0xFF, 0x8F, 0x42, 0x80,  // ..4...B.
                /* 1E78 */  0x53, 0x93, 0x67, 0x07, 0x40, 0x4D, 0xD8, 0x23,  // S.g.@M.#
                /* 1E80 */  0x19, 0x3A, 0xFC, 0x49, 0x12, 0x39, 0xC6, 0x33,  // .:.I.9.3
                /* 1E88 */  0xF4, 0x30, 0x7C, 0x90, 0x04, 0x9E, 0xFF, 0xFF,  // .0|.....
                /* 1E90 */  0x83, 0x24, 0xC0, 0x55, 0x95, 0xC7, 0x0C, 0xA0,  // .$.U....
                /* 1E98 */  0xF4, 0xFF, 0x3F, 0x66, 0x00, 0x0F, 0x61, 0x07,  // ..?f..a.
                /* 1EA0 */  0x38, 0xD4, 0x31, 0xC3, 0x42, 0x0F, 0x70, 0xC8,  // 8.1.B.p.
                /* 1EA8 */  0x63, 0x06, 0xE6, 0x2C, 0x0F, 0xF0, 0xF1, 0xFF,  // c..,....
                /* 1EB0 */  0x7F, 0xF8, 0x00, 0xDC, 0xBA, 0x3C, 0x7C, 0x00,  // .....<|.
                /* 1EB8 */  0x6A, 0xE4, 0x1C, 0x99, 0x50, 0xA3, 0xB6, 0xBC,  // j...P...
                /* 1EC0 */  0x23, 0x13, 0xF5, 0x79, 0x10, 0x15, 0x42, 0x8C,  // #..y..B.
                /* 1EC8 */  0xA0, 0x3E, 0xB9, 0x81, 0xFF, 0xC4, 0x04, 0x8E,  // .>......
                /* 1ED0 */  0xFF, 0xFF, 0x89, 0x09, 0xF8, 0x9F, 0x1B, 0x80,  // ........
                /* 1ED8 */  0xF7, 0xC9, 0xD0, 0x67, 0x73, 0xC0, 0xD5, 0xA5,  // ...gs...
                /* 1EE0 */  0xE1, 0x84, 0x2B, 0x1C, 0xAE, 0x20, 0xCF, 0xA6,  // ..+.. ..
                /* 1EE8 */  0xE2, 0x91, 0x91, 0x13, 0x24, 0xB0, 0xF8, 0xFF,  // ....$...
                /* 1EF0 */  0x9F, 0xC5, 0x80, 0xEF, 0xC1, 0x01, 0xF0, 0xE4,  // ........
                /* 1EF8 */  0xF3, 0xE0, 0x00, 0xA8, 0x91, 0x74, 0x70, 0x40,  // .....tp@
                /* 1F00 */  0xC1, 0x92, 0x83, 0x03, 0xE2, 0x2E, 0xC6, 0x44,  // .......D
                /* 1F08 */  0xCE, 0x43, 0x33, 0x64, 0x27, 0x07, 0x30, 0xFC,  // .C3d'.0.
                /* 1F10 */  0xFF, 0x8F, 0xB2, 0x00, 0x77, 0x84, 0x9E, 0x1C,  // ....w...
                /* 1F18 */  0x00, 0x35, 0xF1, 0x9E, 0x06, 0x3E, 0xC3, 0x7B,  // .5...>.{
                /* 1F20 */  0x64, 0x0A, 0x04, 0x83, 0x3A, 0xE8, 0xF9, 0x80,  // d...:...
                /* 1F28 */  0x80, 0xFB, 0xFF, 0x0F, 0xC2, 0x03, 0x3D, 0xCE,  // ......=.
                /* 1F30 */  0xC3, 0x3B, 0x12, 0x26, 0x09, 0x0E, 0x75, 0x06,  // .;.&..u.
                /* 1F38 */  0xF0, 0x48, 0x9A, 0x3F, 0xCD, 0x90, 0x09, 0x7B,  // .H.?...{
                /* 1F40 */  0x2A, 0x21, 0x99, 0xB4, 0x21, 0xA1, 0xCE, 0x8A,  // *!..!...
                /* 1F48 */  0x64, 0x42, 0x9A, 0xCE, 0xAB, 0x43, 0xC4, 0x27,  // dB...C.'
                /* 1F50 */  0x45, 0xC3, 0x24, 0xF0, 0xE8, 0x19, 0x1A, 0x27,  // E.$....'
                /* 1F58 */  0x18, 0x60, 0x7C, 0xA0, 0x39, 0x1D, 0x1C, 0xFF,  // .`|.9...
                /* 1F60 */  0xB9, 0x44, 0x8B, 0x70, 0xCE, 0xF1, 0x42, 0x19,  // .D.p..B.
                /* 1F68 */  0x2E, 0xD0, 0xB3, 0x82, 0x4F, 0xF4, 0x0C, 0x2B,  // ....O..+
                /* 1F70 */  0xF8, 0x41, 0xBC, 0x06, 0x30, 0x98, 0x40, 0x51,  // .A..0.@Q
                /* 1F78 */  0x3C, 0x1A, 0x43, 0xBE, 0x0A, 0x30, 0xA8, 0x56,  // <.C..0.V
                /* 1F80 */  0x6F, 0x0B, 0x02, 0x37, 0xAC, 0x81, 0x82, 0x19,  // o..7....
                /* 1F88 */  0xE2, 0xE8, 0xB0, 0xC3, 0x34, 0xA4, 0x07, 0xF2,  // ....4...
                /* 1F90 */  0x9C, 0xE1, 0x7B, 0x80, 0x09, 0x4E, 0xF8, 0x99,  // ..{..N..
                /* 1F98 */  0xA1, 0xDC, 0x3B, 0xBF, 0xC4, 0xA3, 0x0A, 0xA3,  // ..;.....
                /* 1FA0 */  0x39, 0x28, 0x02, 0x17, 0x1A, 0x73, 0x28, 0xF0,  // 9(...s(.
                /* 1FA8 */  0x24, 0xDE, 0x26, 0x7C, 0x38, 0x60, 0xEE, 0x27,  // $.&|8`.'
                /* 1FB0 */  0xA8, 0x0B, 0xC4, 0x33, 0x44, 0x8C, 0xB7, 0x22,  // ...3D.."
                /* 1FB8 */  0x23, 0xD4, 0x28, 0xC0, 0x16, 0x3A, 0x41, 0x30,  // #.(..:A0
                /* 1FC0 */  0x4A, 0x10, 0x86, 0xC2, 0x31, 0xA3, 0x78, 0x9A,  // J...1.x.
                /* 1FC8 */  0x67, 0x11, 0xA4, 0x36, 0x01, 0xCA, 0x40, 0x64,  // g..6..@d
                /* 1FD0 */  0x0C, 0x11, 0x81, 0xD0, 0xFE, 0x20, 0x88, 0x84,  // ..... ..
                /* 1FD8 */  0xC7, 0x84, 0xCE, 0x05, 0x8E, 0x34, 0x1A, 0xD4,  // .....4..
                /* 1FE0 */  0x11, 0xC3, 0x67, 0x03, 0x9F, 0x0B, 0xCE, 0xF1,  // ..g.....
                /* 1FE8 */  0xA0, 0x0F, 0xD1, 0x20, 0x47, 0x77, 0x70, 0x75,  // ... Gwpu
                /* 1FF0 */  0x1E, 0x0A, 0xC8, 0xF0, 0xD8, 0x71, 0xC4, 0x67,  // .....q.g
                /* 1FF8 */  0x0B, 0x9F, 0x12, 0xF0, 0xAE, 0x01, 0x75, 0x3D,  // ......u=
                /* 2000 */  0x78, 0x9C, 0x00, 0xC3, 0xFF, 0x1F, 0xD0, 0x23,  // x......#
                /* 2008 */  0x7A, 0x16, 0x81, 0x3D, 0x1E, 0x1F, 0x0D, 0x7C,  // z..=...|
                /* 2010 */  0x0A, 0x30, 0x81, 0xE5, 0x0F, 0x02, 0x35, 0x32,  // .0....52
                /* 2018 */  0x43, 0x7B, 0xA4, 0xA7, 0xF5, 0x86, 0xE0, 0x73,  // C{.....s
                /* 2020 */  0x81, 0x09, 0x2C, 0xF6, 0x84, 0x4A, 0xC7, 0x03,  // ..,..J..
                /* 2028 */  0xFE, 0xB3, 0xD6, 0xA3, 0x41, 0x84, 0x37, 0x03,  // ....A.7.
                /* 2030 */  0xCF, 0xD7, 0x67, 0x1B, 0xE6, 0xE4, 0x64, 0x83,  // ..g...d.
                /* 2038 */  0xBE, 0x2C, 0x60, 0x08, 0x06, 0x3E, 0xA1, 0x50,  // .,`..>.P
                /* 2040 */  0x51, 0x27, 0x14, 0xD4, 0xC9, 0xC2, 0x87, 0x0A,  // Q'......
                /* 2048 */  0x76, 0x37, 0x78, 0x68, 0x60, 0x07, 0x14, 0x76,  // v7xh`..v
                /* 2050 */  0xEA, 0x21, 0xA7, 0x12, 0xD0, 0x9F, 0x67, 0x70,  // .!....gp
                /* 2058 */  0xC7, 0x0C, 0xB8, 0xB7, 0x0A, 0xDC, 0x8C, 0xF8,  // ........
                /* 2060 */  0xF1, 0x97, 0x1C, 0x75, 0x40, 0xE3, 0xEC, 0xF8,  // ...u@...
                /* 2068 */  0xA0, 0x63, 0x00, 0x3F, 0xEB, 0xC0, 0xBF, 0x31,  // .c.?...1
                /* 2070 */  0xC5, 0x08, 0xF3, 0x24, 0x11, 0x2B, 0xC6, 0xE1,  // ...$.+..
                /* 2078 */  0x9C, 0xCB, 0x49, 0xBC, 0x37, 0x55, 0x09, 0x23,  // ..I.7U.#
                /* 2080 */  0xC8, 0x2E, 0x6F, 0x3C, 0xE4, 0x90, 0xE4, 0x21,  // ..o<...!
                /* 2088 */  0x9D, 0xC7, 0xB3, 0x81, 0xFF, 0xFF, 0xE3, 0x30,  // .......0
                /* 2090 */  0x81, 0x87, 0x88, 0x1F, 0x06, 0x3F, 0x4B, 0x3C,  // .....?K<
                /* 2098 */  0xFC, 0xB0, 0x49, 0xBC, 0xFF, 0x78, 0x02, 0x47,  // ..I..x.G
                /* 20A0 */  0xE5, 0x53, 0x8A, 0x11, 0x82, 0x3F, 0x7C, 0x9C,  // .S...?|.
                /* 20A8 */  0xF3, 0x5B, 0x80, 0x09, 0x7C, 0x3D, 0xF2, 0x09,  // .[..|=..
                /* 20B0 */  0x17, 0x31, 0x00, 0x14, 0xF8, 0x09, 0x9D, 0xA2,  // .1......
                /* 20B8 */  0xCF, 0x42, 0x27, 0x86, 0x3B, 0x14, 0xF0, 0x11,  // .B'.;...
                /* 20C0 */  0x61, 0x07, 0xC0, 0xCF, 0x37, 0x00, 0xD7, 0xFE,  // a...7...
                /* 20C8 */  0xFF, 0xE7, 0x1B, 0xEC, 0xE9, 0xE1, 0xF9, 0x06,  // ........
                /* 20D0 */  0xE0, 0xFB, 0xFF, 0xFF, 0x7C, 0x03, 0x98, 0x99,  // ....|...
                /* 20D8 */  0x40, 0xB0, 0xC7, 0x9B, 0x73, 0x38, 0x9F, 0xE7,  // @...s8..
                /* 20E0 */  0x97, 0x47, 0x8B, 0x28, 0x21, 0xA2, 0xC4, 0x89,  // .G.(!...
                /* 20E8 */  0x10, 0xE5, 0x09, 0x22, 0x9E, 0xAF, 0x2F, 0x98,  // ..."../.
                /* 20F0 */  0xF3, 0x0D, 0xE0, 0x22, 0xDA, 0xE1, 0x06, 0x15,  // ..."....
                /* 20F8 */  0xE6, 0x7C, 0x03, 0x28, 0xFA, 0xFF, 0x9F, 0x6F,  // .|.(...o
                /* 2100 */  0x00, 0x93, 0x27, 0x89, 0xE7, 0x1B, 0x70, 0xC6,  // ..'...p.
                /* 2108 */  0x7F, 0xAA, 0xE8, 0x7C, 0x03, 0xB8, 0xFF, 0xFF,  // ...|....
                /* 2110 */  0x9F, 0x6F, 0x00, 0x9E, 0x60, 0x3D, 0xDF, 0x80,  // .o..`=..
                /* 2118 */  0xEB, 0x5C, 0xF1, 0xF4, 0xF2, 0x68, 0xF3, 0x66,  // .\...h.f
                /* 2120 */  0x61, 0xC0, 0x78, 0x1E, 0xC6, 0xCB, 0x0D, 0xF6,  // a.x.....
                /* 2128 */  0x74, 0x03, 0x98, 0xF8, 0xFF, 0x1F, 0x06, 0x01,  // t.......
                /* 2130 */  0xF6, 0xDD, 0x23, 0x1E, 0x06, 0x81, 0xFF, 0xFF,  // ..#.....
                /* 2138 */  0xFF, 0x30, 0x08, 0xF0, 0xFF, 0xFF, 0x7F, 0xBA,  // .0......
                /* 2140 */  0xC1, 0x1C, 0x6E, 0x82, 0x3D, 0xCD, 0xF8, 0xF2,  // ..n.=...
                /* 2148 */  0x70, 0x0C, 0x01, 0xDF, 0x05, 0x61, 0x9E, 0x6F,  // p....a.o
                /* 2150 */  0x00, 0x1B, 0x0A, 0x6D, 0xFA, 0xD4, 0x68, 0xD4,  // ...m..h.
                /* 2158 */  0xAA, 0x41, 0x99, 0x1A, 0x65, 0x1A, 0xD4, 0xEA,  // .A..e...
                /* 2160 */  0x53, 0xA9, 0x31, 0x63, 0xA6, 0x9E, 0x10, 0x8A,  // S.1c....
                /* 2168 */  0x04, 0xA1, 0x43, 0x82, 0xE3, 0xBE, 0x13, 0x04,  // ..C.....
                /* 2170 */  0xE2, 0xD0, 0x6F, 0x0F, 0x81, 0x58, 0xCC, 0xBB,  // ..o..X..
                /* 2178 */  0x40, 0x20, 0x16, 0xAB, 0x03, 0x84, 0x49, 0x36,  // @ ....I6
                /* 2180 */  0x02, 0xC2, 0xA4, 0x2A, 0x01, 0x61, 0xE2, 0xDF,  // ...*.a..
                /* 2188 */  0x0E, 0x02, 0x71, 0x04, 0x2D, 0x20, 0x4C, 0xBA,  // ..q.- L.
                /* 2190 */  0x17, 0x10, 0x16, 0x66, 0xA5, 0x02, 0x71, 0x24,  // ...f..q$
                /* 2198 */  0x37, 0x20, 0x2C, 0xCA, 0xEA, 0x04, 0xE2, 0x70,  // 7 ,....p
                /* 21A0 */  0x76, 0x40, 0x58, 0xFC, 0xE7, 0x82, 0x40, 0x2C,  // v@X...@,
                /* 21A8 */  0xE2, 0xD1, 0x23, 0x10, 0x87, 0x07, 0xA1, 0x72,  // ..#....r
                /* 21B0 */  0x34, 0x81, 0x30, 0x49, 0xA6, 0x40, 0x98, 0x40,  // 4.0I.@.@
                /* 21B8 */  0x59, 0x20, 0x4C, 0xA2, 0x2F, 0x10, 0x26, 0xE5,  // Y L./.&.
                /* 21C0 */  0x67, 0x20, 0x10, 0x07, 0x01, 0xA1, 0x32, 0x9E,  // g ....2.
                /* 21C8 */  0x33, 0xDA, 0x94, 0x0E, 0x15, 0x41, 0x34, 0x34,  // 3....A44
                /* 21D0 */  0xF2, 0x60, 0x09, 0x44, 0xA4, 0x83, 0x08, 0xC8,  // .`.D....
                /* 21D8 */  0x31, 0xC4, 0x01, 0xB1, 0x50, 0x20, 0x02, 0x72,  // 1...P .r
                /* 21E0 */  0x40, 0x75, 0x40, 0x2C, 0x2E, 0x88, 0x80, 0x1C,  // @u@,....
                /* 21E8 */  0x5D, 0x1E, 0x10, 0x13, 0x62, 0x6F, 0x38, 0xD4,  // ]...bo8.
                /* 21F0 */  0x1F, 0x10, 0x13, 0x08, 0x22, 0x20, 0xCB, 0xFD,  // ...." ..
                /* 21F8 */  0x04, 0x04, 0x22, 0xE2, 0x41, 0x34, 0x1C, 0xF2,  // ..".A4..
                /* 2200 */  0x13, 0x28, 0xE0, 0xFF, 0x0F, 0xE4, 0x58, 0x20,  // .(....X 
                /* 2208 */  0x02, 0x72, 0xBC, 0xC7, 0x81, 0x80, 0x1C, 0x16,  // .r......
                /* 2210 */  0x44, 0x40, 0x0E, 0xFC, 0x6E, 0x08, 0x44, 0xD2,  // D@..n.D.
                /* 2218 */  0x83, 0x08, 0xC8, 0xE9, 0x45, 0x02, 0x31, 0x2D,  // ....E.1-
                /* 2220 */  0x0F, 0x26, 0x01, 0x59, 0xD5, 0x1F, 0x3E, 0x10,  // .&.Y..>.
                /* 2228 */  0xD1, 0x08, 0x22, 0x20, 0xEB, 0x7C, 0x2F, 0x04,  // .." .|/.
                /* 2230 */  0x22, 0xA2, 0x41, 0x04, 0x64, 0xD1, 0x8F, 0x86,  // ".A.d...
                /* 2238 */  0x40, 0x24, 0x02, 0x88, 0x8E, 0x00, 0xE4, 0x05,  // @$......
                /* 2240 */  0x26, 0x20, 0x47, 0x03, 0xD1, 0x71, 0x80, 0x18,  // & G..q..
                /* 2248 */  0x05, 0x62, 0xC2, 0x41, 0x34, 0x68, 0xF2, 0x5C,  // .b.A4h.\
                /* 2250 */  0x08, 0x44, 0x84, 0x81, 0x08, 0xC8, 0xC2, 0xFE,  // .D......
                /* 2258 */  0x13, 0x81, 0x88, 0x4C, 0x10, 0x01, 0x59, 0xA6,  // ...L..Y.
                /* 2260 */  0xD6, 0x81, 0x50, 0x10, 0x01, 0x59, 0xF6, 0x43,  // ..P..Y.C
                /* 2268 */  0x43, 0x40, 0x0E, 0x01, 0xA2, 0x81, 0x13, 0xB5,  // C@......
                /* 2270 */  0x03, 0xA7, 0x20, 0x02, 0x72, 0xAC, 0xD7, 0x44,  // .. .r..D
                /* 2278 */  0x20, 0x12, 0x12, 0x44, 0x40, 0x8E, 0xAA, 0x17,  //  ..D@...
                /* 2280 */  0x88, 0xE5, 0x06, 0x11, 0x90, 0x63, 0x7F, 0x26,  // .....c.&
                /* 2288 */  0x02, 0x11, 0x11, 0x82, 0x81, 0x98, 0x8A, 0x07,  // ........
                /* 2290 */  0x4C, 0x20, 0x22, 0x09, 0x44, 0x07, 0x05, 0x02,  // L ".D...
                /* 2298 */  0x44, 0x93, 0x02, 0xD1, 0x04, 0xAF, 0x2C, 0x01,  // D.....,.
                /* 22A0 */  0x39, 0x0E, 0x88, 0x80, 0x9C, 0xE5, 0xBB, 0x22,  // 9......"
                /* 22A8 */  0x20, 0x27, 0x03, 0x11, 0x90, 0x93, 0x6A, 0x06,  //  '....j.
                /* 22B0 */  0x62, 0xB1, 0x41, 0x04, 0xE4, 0x00, 0x2F, 0x19,  // b.A.../.
                /* 22B8 */  0x01, 0x39, 0x0D, 0x88, 0x8E, 0x0F, 0x44, 0x34,  // .9....D4
                /* 22C0 */  0x10, 0x0B, 0x06, 0xA2, 0x41, 0x11, 0xD5, 0x83,  // ....A...
                /* 22C8 */  0xA2, 0x20, 0x1A, 0x08, 0x79, 0x12, 0x1D, 0x08,  // . ..y...
                /* 22D0 */  0x03, 0xD1, 0x40, 0xC8, 0x2B, 0x4A, 0x03, 0x21,  // ..@.+J.!
                /* 22D8 */  0x20, 0x02, 0x72, 0xC8, 0x77, 0x8B, 0x80, 0x9C,  //  .r.w...
                /* 22E0 */  0x18, 0x44, 0x07, 0x03, 0xF2, 0x0C, 0x09, 0x44,  // .D.....D
                /* 22E8 */  0xE2, 0x83, 0x08, 0xC8, 0x0A, 0xFE, 0x60, 0x02,  // ......`.
                /* 22F0 */  0xB2, 0x1C, 0x10, 0x01, 0x39, 0x18, 0x10, 0x4D,  // ....9..M
                /* 22F8 */  0x09, 0x44, 0x23, 0xBE, 0x65, 0x02, 0x91, 0xC0,  // .D#.e...
                /* 2300 */  0x20, 0x3A, 0x24, 0x90, 0xC7, 0x4B, 0x01, 0xFF,  //  :$..K..
                /* 2308 */  0x7F, 0x20, 0x4B, 0x79, 0x8D, 0x09, 0xC8, 0xA1,  // . Ky....
                /* 2310 */  0x40, 0x04, 0xE4, 0x84, 0x40, 0x34, 0xDE, 0xE7,  // @...@4..
                /* 2318 */  0xE4, 0xA1, 0x81, 0x81, 0xE8, 0xA8, 0x41, 0x5E,  // ......A^
                /* 2320 */  0x4E, 0x02, 0xB2, 0x18, 0xF5, 0x40, 0x4C, 0xCD,  // N....@L.
                /* 2328 */  0x3B, 0x49, 0x40, 0x96, 0x06, 0xA2, 0x81, 0x11,  // ;I@.....
                /* 2330 */  0x20, 0x9A, 0x18, 0x88, 0x6A, 0xFF, 0x5B, 0x09,  //  ...j.[.
                /* 2338 */  0xC8, 0x41, 0x40, 0x04, 0xE4, 0x14, 0xFA, 0x81,  // .A@.....
                /* 2340 */  0x58, 0x26, 0x10, 0x0D, 0x8A, 0x3C, 0xD5, 0x04,  // X&...<..
                /* 2348 */  0xE4, 0xBC, 0x20, 0x02, 0xB2, 0xF2, 0x02, 0x40,  // .. ....@
                /* 2350 */  0x2C, 0x06, 0x88, 0x80, 0x9C, 0x21, 0x01, 0x10,  // ,....!..
                /* 2358 */  0x4B, 0x04, 0xA2, 0x41, 0x91, 0x08, 0x40, 0x2C,  // K..A..@,
                /* 2360 */  0x2B, 0x88, 0x80, 0xAC, 0xBA, 0xC2, 0x41, 0x82,  // +.....A.
                /* 2368 */  0x82, 0x08, 0xC8, 0x5A, 0x32, 0x1C, 0x20, 0x28,  // ...Z2. (
                /* 2370 */  0x88, 0x06, 0x42, 0x80, 0x68, 0x5E, 0x20, 0x1A,  // ..B.h^ .
                /* 2378 */  0xB6, 0x03, 0x10, 0x8B, 0x0E, 0xA2, 0xC3, 0x02,  // ........
                /* 2380 */  0x49, 0x71, 0x58, 0xA0, 0x20, 0x3A, 0x2C, 0x10,  // IqX. :,.
                /* 2388 */  0x20, 0x9A, 0x14, 0x88, 0x4A, 0x6E, 0x01, 0xC4,  //  ...Jn..
                /* 2390 */  0xF4, 0x83, 0xE8, 0xE0, 0x42, 0x62, 0x00, 0xB1,  // ....Bb..
                /* 2398 */  0x28, 0x20, 0x02, 0x72, 0xAE, 0x1C, 0x07, 0x09,  // ( .r....
                /* 23A0 */  0x0A, 0xA2, 0x83, 0x08, 0xE9, 0x01, 0xC4, 0xB4,  // ........
                /* 23A8 */  0x83, 0xE8, 0xD0, 0x42, 0x82, 0x00, 0x31, 0x45,  // ...B..1E
                /* 23B0 */  0x20, 0x02, 0x72, 0x36, 0x20, 0x1A, 0x14, 0x88,  //  .r6 ...
                /* 23B8 */  0xC6, 0x2C, 0x02, 0xC4, 0x42, 0x83, 0x08, 0xC8,  // .,..B...
                /* 23C0 */  0xF9, 0x9B, 0x1C, 0x04, 0x68, 0x94, 0x03, 0x06,  // ....h...
                /* 23C8 */  0x05, 0x11, 0x90, 0x33, 0x02, 0x51, 0xB1, 0x55,  // ...3.Q.U
                /* 23D0 */  0x80, 0x98, 0x72, 0x10, 0x1D, 0x38, 0x48, 0x96,  // ..r..8H.
                /* 23D8 */  0x03, 0x07, 0x05, 0x11, 0x90, 0x13, 0x85, 0x01,  // ........
                /* 23E0 */  0x62, 0xF1, 0x40, 0x04, 0x64, 0xA1, 0x65, 0x80,  // b.@.d.e.
                /* 23E8 */  0x98, 0x6A, 0x10, 0x1D, 0x10, 0x08, 0x10, 0xD5,  // .j......
                /* 23F0 */  0x92, 0x06, 0x88, 0x65, 0x04, 0xD1, 0xFF, 0xFF,  // ...e....
                /* 23F8 */  0xD0, 0x40, 0x80, 0x68, 0xDA, 0x36, 0x40, 0x2C,  // .@.h.6@,
                /* 2400 */  0x3B, 0x88, 0x80, 0x2C, 0x24, 0x0F, 0x10, 0x53,  // ;..,$..S
                /* 2408 */  0x05, 0x22, 0x20, 0xE7, 0x03, 0xA2, 0x61, 0x81,  // ." ...a.
                /* 2410 */  0xA8, 0xEA, 0x3E, 0x07, 0x02, 0x0A, 0x22, 0x20,  // ..>..." 
                /* 2418 */  0xEB, 0x0F, 0x74, 0xD8, 0xA0, 0x20, 0x3A, 0xD8,  // ..t.. :.
                /* 2420 */  0x90, 0x44, 0x40, 0x2C, 0x2D, 0x88, 0x80, 0xAC,  // .D@,-...
                /* 2428 */  0xBB, 0xD1, 0xE0, 0x28, 0x88, 0x0E, 0x10, 0xE4,  // ...(....
                /* 2430 */  0x81, 0xA7, 0x03, 0x04, 0x01, 0x11, 0x90, 0x23,  // .......#
                /* 2438 */  0x03, 0xD1, 0xFC, 0x40, 0x34, 0x7C, 0xA5, 0x83,  // ...@4|..
                /* 2440 */  0x05, 0xCD, 0x04, 0xC4, 0x44, 0x85, 0x02, 0x62,  // ....D..b
                /* 2448 */  0x0A, 0x41, 0x04, 0x64, 0x85, 0xA5, 0x80, 0x98,  // .A.d....
                /* 2450 */  0x5E, 0x10, 0x01, 0x59, 0x71, 0xAB, 0xC3, 0x01,  // ^..Yq...
                /* 2458 */  0x05, 0x11, 0x90, 0xF5, 0xC4, 0x02, 0x62, 0xEA,  // ......b.
                /* 2460 */  0x40, 0x04, 0x64, 0x6D, 0xB9, 0x80, 0x98, 0x50,  // @.dm...P
                /* 2468 */  0x10, 0x0D, 0x9C, 0xF4, 0x02, 0x62, 0xB2, 0x41,  // .....b.A
                /* 2470 */  0x74, 0x50, 0x20, 0xC5, 0x0E, 0x0A, 0x14, 0x44,  // tP ....D
                /* 2478 */  0x40, 0x96, 0x96, 0x0C, 0x98, 0x82, 0x08, 0x98,  // @.......
                /* 2480 */  0x44, 0x3B, 0x04, 0x50, 0x10, 0x0D, 0x98, 0x54,  // D;.P...T
                /* 2488 */  0x03, 0x62, 0x19, 0x40, 0x04, 0xE4, 0x24, 0xDD,  // .b.@..$.
                /* 2490 */  0x80, 0x58, 0x2E, 0x10, 0x1D, 0x7A, 0x48, 0x38,  // .X...zH8
                /* 2498 */  0x60, 0x0A, 0x22, 0x20, 0xE7, 0x48, 0x07, 0xC4,  // `." .H..
                /* 24A0 */  0x52, 0x81, 0xE8, 0x30, 0x42, 0xE2, 0x1D, 0x46,  // R..0B..F
                /* 24A8 */  0x28, 0x88, 0x80, 0xAC, 0xB7, 0xDE, 0xC1, 0x88,  // (.......
                /* 24B0 */  0x82, 0xE8, 0x40, 0x40, 0xF2, 0x1D, 0x08, 0x28,  // ..@@...(
                /* 24B8 */  0x88, 0x80, 0x9C, 0x10, 0x88, 0xC6, 0x05, 0xA2,  // ........
                /* 24C0 */  0x71, 0xFB, 0x01, 0xB1, 0xF0, 0x20, 0x1A, 0x3C,  // q.... .<
                /* 24C8 */  0x29, 0x38, 0x78, 0x9A, 0xF0, 0x90, 0x41, 0x41,  // )8x...AA
                /* 24D0 */  0x04, 0xE4, 0xA8, 0x40, 0x54, 0x7A, 0xC3, 0x43,  // ...@Tz.C
                /* 24D8 */  0x09, 0x05, 0xD1, 0x41, 0x88, 0x44, 0x84, 0xF8,  // ...A.D..
                /* 24E0 */  0xFF, 0x3F, 0x08, 0x11, 0x10, 0x1D, 0x7A, 0x08,  // .?....z.
                /* 24E8 */  0x10, 0x15, 0x51, 0xF1, 0x10, 0x43, 0x3B, 0x1E,  // ..Q..C;.
                /* 24F0 */  0x62, 0x28, 0x88, 0x06, 0x41, 0x80, 0x68, 0x52,  // b(..A.hR
                /* 24F8 */  0x20, 0xAA, 0x3A, 0xE4, 0x81, 0x81, 0x82, 0xE8,  //  .:.....
                /* 2500 */  0xB0, 0x45, 0x4A, 0x02, 0x31, 0x6D, 0x20, 0x3A,  // .EJ.1m :
                /* 2508 */  0x0C, 0x90, 0x94, 0x40, 0x4C, 0x29, 0x88, 0x80,  // ...@L)..
                /* 2510 */  0xAC, 0x36, 0xE6, 0xC1, 0x83, 0x82, 0xE8, 0xC0,  // .6......
                /* 2518 */  0x40, 0x6A, 0x02, 0x53, 0x10, 0x01, 0x39, 0x2B,  // @j.S..9+
                /* 2520 */  0x10, 0x4D, 0x0E, 0x44, 0x93, 0xE4, 0x3C, 0x04,  // .M.D..<.
                /* 2528 */  0x50, 0x10, 0x1D, 0x02, 0x48, 0xCF, 0x43, 0x00,  // P...H.C.
                /* 2530 */  0x05, 0xD1, 0x41, 0x8A, 0x14, 0x05, 0x62, 0x09,  // ..A...b.
                /* 2538 */  0x40, 0x74, 0x58, 0x20, 0x49, 0x81, 0x98, 0x38,  // @tX I..8
                /* 2540 */  0x10, 0x01, 0x39, 0x28, 0x10, 0x4D, 0x0D, 0x44,  // ..9(.M.D
                /* 2548 */  0x13, 0x34, 0x3D, 0x08, 0x51, 0x10, 0x01, 0x39,  // .4=.Q..9
                /* 2550 */  0x4E, 0x54, 0x20, 0x16, 0x0E, 0x44, 0x87, 0x0B,  // NT ..D..
                /* 2558 */  0x92, 0xF5, 0x20, 0x40, 0x41, 0x74, 0x40, 0x22,  // .. @At@"
                /* 2560 */  0x5D, 0x81, 0x29, 0x88, 0x80, 0x2C, 0x2F, 0x2C,  // ].)..,/,
                /* 2568 */  0x10, 0x13, 0x0B, 0xA2, 0xC3, 0x00, 0x01, 0xA2,  // ........
                /* 2570 */  0x52, 0xCA, 0x02, 0xB1, 0x68, 0x20, 0x3A, 0xA8,  // R...h :.
                /* 2578 */  0x10, 0x20, 0x9A, 0xB5, 0x2D, 0x10, 0x0B, 0x0E,  // . ..-...
                /* 2580 */  0xA2, 0x83, 0x15, 0x89, 0x7B, 0xE0, 0xA1, 0x20,  // ....{.. 
                /* 2588 */  0x02, 0xB2, 0xBE, 0xBA, 0x83, 0xA0, 0x20, 0x02,  // ...... .
                /* 2590 */  0x72, 0x70, 0x20, 0xAA, 0x22, 0xEF, 0x21, 0x85,  // rp .".!.
                /* 2598 */  0x82, 0xE8, 0x90, 0x42, 0x80, 0xA8, 0xD2, 0xBE,  // ...B....
                /* 25A0 */  0x87, 0x0B, 0x0A, 0xA2, 0x03, 0x01, 0x79, 0x60,  // ......y`
                /* 25A8 */  0xEA, 0x40, 0x41, 0x40, 0x74, 0x78, 0x22, 0x89,  // .@A@tx".
                /* 25B0 */  0x0F, 0x4F, 0x14, 0x44, 0x40, 0xD6, 0xDA, 0xF8,  // .O.D@...
                /* 25B8 */  0xF0, 0x42, 0x41, 0x04, 0x64, 0x25, 0x91, 0x81,  // .BA.d%..
                /* 25C0 */  0x98, 0x2E, 0x10, 0x01, 0x39, 0x27, 0x88, 0xFE,  // ....9'..
                /* 25C8 */  0xFF, 0x03, 0x27, 0x40, 0x34, 0x45, 0xE5, 0x81,  // ..'@4E..
                /* 25D0 */  0x51, 0x10, 0x1D, 0x44, 0x48, 0xE6, 0x83, 0x08,  // Q..DH...
                /* 25D8 */  0x05, 0xD1, 0xE1, 0x89, 0x00, 0x51, 0x2D, 0x9D,  // .....Q-.
                /* 25E0 */  0x0F, 0x43, 0xB4, 0xF4, 0x61, 0x88, 0x82, 0xE8,  // .C..a...
                /* 25E8 */  0x10, 0x41, 0x52, 0x1F, 0x22, 0x28, 0x88, 0x0E,  // .AR."(..
                /* 25F0 */  0x1F, 0x24, 0xF6, 0xE0, 0x28, 0x88, 0x0E, 0x7A,  // .$..(..z
                /* 25F8 */  0xA4, 0xF6, 0x41, 0x8F, 0x82, 0xE8, 0x60, 0x47,  // ..A...`G
                /* 2600 */  0x7A, 0x03, 0x31, 0x7D, 0x20, 0x1A, 0x34, 0x09,  // z.1} .4.
                /* 2608 */  0x0E, 0xC4, 0xD4, 0x82, 0x08, 0xC8, 0x9A, 0x93,  // ........
                /* 2610 */  0x1F, 0x14, 0x28, 0x88, 0x80, 0xAC, 0xA8, 0x39,  // ..(....9
                /* 2618 */  0x30, 0x05, 0x11, 0x30, 0xA9, 0x7E, 0x00, 0xA0,  // 0..0.~..
                /* 2620 */  0x20, 0x3A, 0xF8, 0x90, 0xEC, 0x87, 0x3F, 0x0A,  //  :....?.
                /* 2628 */  0xA2, 0x03, 0x02, 0x09, 0x7F, 0x40, 0xA0, 0x20,  // .....@. 
                /* 2630 */  0x3A, 0x20, 0x90, 0xF2, 0xC0, 0x14, 0x44, 0x40,  // : ....D@
                /* 2638 */  0x16, 0xDC, 0x1E, 0x88, 0xA9, 0x07, 0xD1, 0xC0,  // ........
                /* 2640 */  0x49, 0x7C, 0x20, 0x26, 0x0B, 0x44, 0x87, 0x11,  // I| &.D..
                /* 2648 */  0x02, 0x44, 0xE3, 0x02, 0xD1, 0xB4, 0xF5, 0x0F,  // .D......
                /* 2650 */  0x3E, 0x14, 0x44, 0x07, 0x28, 0x72, 0x6B, 0x15,  // >.D.(rk.
                /* 2658 */  0x90, 0x7F, 0x8A, 0x41, 0x1E, 0x82, 0x08, 0x10,  // ...A....
                /* 2660 */  0xFD, 0x0F, 0x04, 0x62, 0xFA, 0x0D, 0x00, 0xB1,  // ...b....
                /* 2668 */  0x34, 0x20, 0x3A, 0x74, 0x10, 0x05, 0x40, 0x4C,  // 4 :t..@L
                /* 2670 */  0x29, 0x88, 0x0E, 0x2B, 0x44, 0x02, 0x10, 0x13,  // )..+D...
                /* 2678 */  0x0F, 0x22, 0x20, 0xEB, 0xB0, 0x00, 0xC4, 0x44,  // ." ....D
                /* 2680 */  0x81, 0xE8, 0x50, 0x41, 0x80, 0x68, 0x5A, 0x20,  // ..PA.hZ 
                /* 2688 */  0x2A, 0x5C, 0x03, 0x10, 0x4B, 0x01, 0x22, 0x20,  // *\..K." 
                /* 2690 */  0x87, 0xF0, 0x00, 0xC4, 0x22, 0x81, 0xE8, 0xE0,  // ...."...
                /* 2698 */  0x45, 0x4C, 0x00, 0xB1, 0xB0, 0x20, 0x3A, 0xE4,  // EL... :.
                /* 26A0 */  0x10, 0x15, 0x40, 0x2C, 0x0A, 0x88, 0x0E, 0x39,  // ..@,...9
                /* 26A8 */  0xC4, 0x05, 0x10, 0x13, 0x0A, 0xA2, 0xC3, 0x0A,  // ........
                /* 26B0 */  0x01, 0xD1, 0xFF, 0xFF, 0xB0, 0x42, 0x64, 0x00,  // .....Bd.
                /* 26B8 */  0xB1, 0x48, 0x20, 0x02, 0x72, 0x40, 0x20, 0x1A,  // .H .r@ .
                /* 26C0 */  0x57, 0x07, 0x10, 0x0B, 0x0F, 0x22, 0x20, 0x4B,  // W...." K
                /* 26C8 */  0x30, 0x02, 0xC4, 0x04, 0x81, 0x08, 0xC8, 0xB2,  // 0.......
                /* 26D0 */  0x9C, 0x00, 0x31, 0x91, 0x20, 0x3A, 0x18, 0x12,  // ..1. :..
                /* 26D8 */  0x2B, 0x40, 0x4C, 0x34, 0x88, 0x06, 0x47, 0xBC,  // +@L4..G.
                /* 26E0 */  0x00, 0xB1, 0x18, 0x20, 0x3A, 0xF0, 0x11, 0x33,  // ... :..3
                /* 26E8 */  0x40, 0x2C, 0x18, 0x88, 0x0E, 0x31, 0xC4, 0x0D,  // @,...1..
                /* 26F0 */  0x10, 0x8B, 0x0A, 0xA2, 0x43, 0x1E, 0xB1, 0x03,  // ....C...
                /* 26F8 */  0xC4, 0xE2, 0x83, 0xE8, 0x00, 0x46, 0x04, 0x01,  // .....F..
                /* 2700 */  0x31, 0x49, 0x20, 0x1A, 0x0C, 0x51, 0x34, 0x18,  // 1I ..Q4.
                /* 2708 */  0x0A, 0xA2, 0x83, 0x04, 0x91, 0x04, 0xC4, 0x54,  // .......T
                /* 2710 */  0x83, 0xE8, 0xD0, 0x42, 0x2C, 0x01, 0xB1, 0x08,  // ...B,...
                /* 2718 */  0x20, 0x3A, 0x8C, 0x10, 0x4F, 0x40, 0x2C, 0x13,  //  :..O@,.
                /* 2720 */  0x88, 0x0E, 0x0C, 0x44, 0x14, 0x10, 0xD3, 0x0A,  // ...D....
                /* 2728 */  0xA2, 0x03, 0x25, 0x31, 0x05, 0xC4, 0x84, 0x83,  // ..%1....
                /* 2730 */  0xE8, 0x50, 0x44, 0x5C, 0x01, 0xB1, 0x88, 0x20,  // .PD\... 
                /* 2738 */  0x3A, 0x38, 0x10, 0x59, 0x40, 0x4C, 0x3E, 0x88,  // :8.Y@L>.
                /* 2740 */  0x0E, 0xB0, 0xC4, 0x16, 0x10, 0x93, 0x06, 0xA2,  // ........
                /* 2748 */  0x43, 0x00, 0xF1, 0x05, 0xC4, 0x74, 0x82, 0xE8,  // C....t..
                /* 2750 */  0x60, 0x43, 0x84, 0x0D, 0x8A, 0x82, 0xE8, 0xC0,  // `C......
                /* 2758 */  0x47, 0x94, 0x01, 0xB1, 0x24, 0x20, 0x02, 0xB2,  // G...$ ..
                /* 2760 */  0x32, 0x67, 0xC0, 0x14, 0x44, 0x87, 0x1E, 0x62,  // 2g..D..b
                /* 2768 */  0x0D, 0x88, 0x69, 0x07, 0xD1, 0x61, 0x8F, 0x78,  // ..i..a.x
                /* 2770 */  0x03, 0x62, 0x81, 0x40, 0x34, 0x10, 0x22, 0x0E,  // .b.@4.".
                /* 2778 */  0x98, 0x82, 0x68, 0x20, 0xC4, 0xDC, 0x40, 0x28,  // ..h ..@(
                /* 2780 */  0x88, 0x0E, 0x12, 0xC4, 0x1D, 0x10, 0x0B, 0x03,  // ........
                /* 2788 */  0xA2, 0x81, 0x13, 0x79, 0x40, 0x4C, 0x23, 0x88,  // ...y@L#.
                /* 2790 */  0x80, 0xAC, 0xD1, 0x1E, 0x10, 0x53, 0x0C, 0xA2,  // .....S..
                /* 2798 */  0x43, 0x08, 0xF1, 0x07, 0xC4, 0x02, 0x80, 0xE8,  // C.......
                /* 27A0 */  0xE0, 0x41, 0x04, 0x82, 0xFC, 0xFF, 0x1F, 0x3C,  // .A.....<
                /* 27A8 */  0x08, 0x88, 0x0E, 0x73, 0x44, 0x21, 0x10, 0xCB,  // ...sD!..
                /* 27B0 */  0x08, 0xA2, 0x81, 0x11, 0x87, 0x40, 0x4C, 0x3A,  // .....@L:
                /* 27B8 */  0x88, 0x0E, 0x50, 0x44, 0x22, 0x10, 0x0B, 0x02,  // ..PD"...
                /* 27C0 */  0x22, 0x20, 0x07, 0xD2, 0x08, 0xC4, 0xD2, 0x81,  // " ......
                /* 27C8 */  0x68, 0x60, 0xC4, 0xE3, 0x81, 0x81, 0x82, 0xE8,  // h`......
                /* 27D0 */  0x50, 0x40, 0x44, 0x1E, 0x0A, 0x28, 0x88, 0x8E,  // P@D..(..
                /* 27D8 */  0xC1, 0x44, 0x25, 0x10, 0xCB, 0x03, 0x22, 0x20,  // .D%..." 
                /* 27E0 */  0xE7, 0x71, 0x39, 0x00, 0x0A, 0xA2, 0xC3, 0x08,  // .q9.....
                /* 27E8 */  0xB1, 0x09, 0xC4, 0xF2, 0x82, 0x68, 0xA0, 0x44,  // .....h.D
                /* 27F0 */  0xE7, 0x01, 0x84, 0x82, 0x08, 0xC8, 0x69, 0x84,  // ......i.
                /* 27F8 */  0x02, 0xB1, 0x6C, 0x20, 0x3A, 0xE8, 0x10, 0xA3,  // ..l :...
                /* 2800 */  0x40, 0x4C, 0x39, 0x88, 0x80, 0x89, 0x53, 0x60,  // @L9...S`
                /* 2808 */  0x0A, 0x22, 0x20, 0x67, 0xB2, 0x7A, 0xC8, 0xA0,  // ." g.z..
                /* 2810 */  0x20, 0x3A, 0xE0, 0x11, 0xAD, 0x87, 0x10, 0x0A,  //  :......
                /* 2818 */  0x22, 0x20, 0xE7, 0x16, 0x0B, 0xC4, 0x54, 0x98,  // " ....T.
                /* 2820 */  0x05, 0xA6, 0x20, 0x3A, 0x94, 0x11, 0x20, 0x9A,  // .. :.. .
                /* 2828 */  0xD2, 0x2D, 0x10, 0x8B, 0x0C, 0x22, 0x20, 0x27,  // .-..." '
                /* 2830 */  0x96, 0x0B, 0xC4, 0xF2, 0x83, 0xE8, 0xF0, 0x42,  // .......B
                /* 2838 */  0xFC, 0x02, 0x31, 0x5D, 0x20, 0x02, 0xB2, 0x3A,  // ..1] ..:
                /* 2840 */  0xC3, 0x40, 0x4C, 0x2A, 0x88, 0x06, 0x46, 0x14,  // .@L*..F.
                /* 2848 */  0x0F, 0x8C, 0x82, 0xE8, 0xA0, 0x40, 0x24, 0x03,  // .....@$.
                /* 2850 */  0xB1, 0x44, 0x20, 0x3A, 0x08, 0x11, 0xCB, 0x40,  // .D :...@
                /* 2858 */  0x4C, 0x2F, 0x88, 0x0E, 0x49, 0xC4, 0xF3, 0xE0,  // L/..I...
                /* 2860 */  0x29, 0x88, 0x06, 0x49, 0x44, 0x0F, 0x92, 0x82,  // )..ID...
                /* 2868 */  0xE8, 0x00, 0x41, 0x4C, 0x1F, 0x1A, 0x28, 0x88,  // ..AL..(.
                /* 2870 */  0x0E, 0x06, 0xC4, 0xF5, 0xC1, 0x80, 0x82, 0x08,  // ........
                /* 2878 */  0xC8, 0x1A, 0x64, 0x1F, 0x4C, 0x28, 0x88, 0x0E,  // ..d.L(..
                /* 2880 */  0xAC, 0x04, 0x88, 0xA6, 0x04, 0xA2, 0x21, 0x6D,  // ......!m
                /* 2888 */  0x0F, 0x92, 0x82, 0xE8, 0xC0, 0x42, 0x7C, 0x83,  // .....B|.
                /* 2890 */  0xFC, 0xFF, 0x1F, 0x58, 0x88, 0xF0, 0x03, 0x0B,  // ...X....
                /* 2898 */  0x05, 0xD1, 0xE0, 0x09, 0x10, 0x0D, 0xA9, 0x1C,  // ........
                /* 28A0 */  0x98, 0x82, 0x08, 0xC8, 0xF2, 0x9D, 0x1F, 0x26,  // .......&
                /* 28A8 */  0x28, 0x88, 0x0E, 0x16, 0x44, 0xFA, 0x21, 0x86,  // (...D.!.
                /* 28B0 */  0x82, 0x68, 0xB0, 0x44, 0xFB, 0x21, 0x84, 0x82,  // .h.D.!..
                /* 28B8 */  0xE8, 0xB0, 0x48, 0xBC, 0x1F, 0x6E, 0x28, 0x88,  // ..H..n(.
                /* 28C0 */  0x80, 0x9C, 0xCA, 0xFC, 0x41, 0x82, 0x82, 0xE8,  // ....A...
                /* 28C8 */  0x70, 0x48, 0xD4, 0x03, 0x31, 0xFD, 0x20, 0x3A,  // pH..1. :
                /* 28D0 */  0x50, 0x11, 0xF9, 0x87, 0x13, 0x0A, 0xA2, 0x81,  // P.......
                /* 28D8 */  0x13, 0xFB, 0x03, 0xA7, 0x20, 0x3A, 0x94, 0x12,  // .... :..
                /* 28E0 */  0xFF, 0xC0, 0x14, 0x44, 0x83, 0x22, 0x01, 0x06,  // ...D."..
                /* 28E8 */  0x45, 0x41, 0x74, 0x90, 0x26, 0x09, 0x80, 0x58,  // EAt.&..X
                /* 28F0 */  0x32, 0x10, 0x0D, 0x98, 0x34, 0x00, 0x62, 0x31,  // 2...4.b1
                /* 28F8 */  0x41, 0x74, 0x18, 0x26, 0x15, 0x80, 0x58, 0x70,  // At.&..Xp
                /* 2900 */  0x10, 0x1D, 0x5C, 0x48, 0x06, 0x20, 0x16, 0x0A,  // ..\H. ..
                /* 2908 */  0x44, 0x07, 0x0E, 0x12, 0x02, 0x88, 0x85, 0x04,  // D.......
                /* 2910 */  0xD1, 0xC1, 0x94, 0xA4, 0x00, 0x62, 0x99, 0x41,  // .....b.A
                /* 2918 */  0x74, 0xB0, 0x24, 0x2D, 0x80, 0x18, 0x79, 0x20,  // t.$-..y 
                /* 2920 */  0x26, 0x25, 0x07, 0x10, 0x13, 0x06, 0xA2, 0x41,  // &%.....A
                /* 2928 */  0x93, 0x20, 0x83, 0xA6, 0x20, 0x3A, 0x08, 0x10,  // . .. :..
                /* 2930 */  0x20, 0x2A, 0xA2, 0xC8, 0x01, 0x88, 0x36, 0x01,  //  *....6.
                /* 2938 */  0x62, 0x7A, 0x40, 0x74, 0xF8, 0x23, 0x51, 0x80,  // bz@t.#Q.
                /* 2940 */  0x98, 0x38, 0x10, 0x01, 0x59, 0x5C, 0x96, 0x03,  // .8..Y\..
                /* 2948 */  0x04, 0x05, 0xD1, 0x21, 0x8B, 0x84, 0x39, 0x28,  // ...!..9(
                /* 2950 */  0x50, 0x10, 0x0D, 0x96, 0x3C, 0xA1, 0x0E, 0x96,  // P...<...
                /* 2958 */  0x81, 0x68, 0x10, 0x24, 0xCF, 0x11, 0x85, 0x82,  // .h.$....
                /* 2960 */  0xF0, 0x3E, 0xC7, 0x27, 0x9A, 0xE8, 0xB0, 0x43,  // .>.'...C
                /* 2968 */  0x1B, 0x81, 0xD0, 0x48, 0x03, 0xA0, 0x9D, 0x40,  // ...H...@
                /* 2970 */  0x58, 0x78, 0x10, 0x1E, 0x0A, 0xE4, 0xFF, 0xFF,  // Xx......
                /* 2978 */  0x78, 0x46, 0x62, 0x0D, 0x98, 0x82, 0xF0, 0x5A,  // xFb....Z
                /* 2980 */  0x20, 0xEC, 0xFF, 0x0F                           //  ...
            })
            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If (Zero){}
                ElseIf ((Arg0 == 0xE2))
                {
                    Return (EVT1) /* \GSA1.EVT1 */
                }

                Return (Zero)
            }

            Name (SAA0, Buffer (0x10)
            {
                /* 0000 */  0xF0, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (CCAA, Zero)
            Name (CCAB, Zero)
            Name (CCAC, Zero)
            Name (ECD0, Zero)
            Name (ECD1, Zero)
            Name (ECD2, Zero)
            Method (WCAA, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((CCAA == Zero)){}
                }
                ElseIf ((CCAA != Zero)){}
                CCAA = Arg0
            }

            Method (WED0, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD0 == Zero)){}
                }
                ElseIf ((ECD0 != Zero)){}
                ECD0 = Arg0
            }

            Method (WED1, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD1 == Zero)){}
                }
                ElseIf ((ECD1 != Zero)){}
                ECD1 = Arg0
            }

            Method (WED2, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD2 == Zero)){}
                }
                ElseIf ((ECD2 != Zero)){}
                ECD2 = Arg0
            }

            Method (GETA, 1, NotSerialized)
            {
                Return (SAA0) /* \GSA1.SAA0 */
            }

            Method (WQAA, 1, NotSerialized)
            {
                Return (GETA (Arg0))
            }

            Method (SETA, 2, NotSerialized)
            {
                SAA0 = Arg1
                Return (SAA0) /* \GSA1.SAA0 */
            }

            Method (WSAA, 2, NotSerialized)
            {
                Return (SETA (Arg0, Arg1))
            }

            Method (WMBB, 3, Serialized)
            {
                If (Zero){}
                ElseIf ((Arg1 == One))
                {
                    Return (GGG1 ())
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Return (GGG2 ())
                }
                ElseIf ((Arg1 == 0x03))
                {
                    Return (GGG3 ())
                }
                ElseIf ((Arg1 == 0x04))
                {
                    Return (GGG4 ())
                }
                ElseIf ((Arg1 == 0x05))
                {
                    Return (GGG5 ())
                }
                ElseIf ((Arg1 == 0x06))
                {
                    Return (GGG6 ())
                }
                ElseIf ((Arg1 == 0x07))
                {
                    Return (GGG7 ())
                }
                ElseIf ((Arg1 == 0x08))
                {
                    Return (GGG8 ())
                }
                ElseIf ((Arg1 == 0x0A))
                {
                    Return (GGG9 (Arg2))
                }
                ElseIf ((Arg1 == 0x0B))
                {
                    Return (GGGE ())
                }
                ElseIf ((Arg1 == 0x0C))
                {
                    Return (GGGF (Arg2))
                }
                ElseIf ((Arg1 == 0x0D))
                {
                    CreateWordField (Arg2, Zero, GGGI)
                    CreateWordField (Arg2, 0x02, GGGJ)
                    CreateWordField (Arg2, 0x04, GGGK)
                    GGGH (GGGI, GGGJ, GGGK)
                }
                ElseIf ((Arg1 == 0x0E))
                {
                    \GSA1.MPTS (ToInteger (Arg2))
                }
                ElseIf ((Arg1 == 0x0F))
                {
                    \GSA1.MWAK (ToInteger (Arg2))
                }
                ElseIf (((Arg1 >= 0x61) && (Arg1 <= 0x6D)))
                {
                    Name (SMD9, Buffer (0x04){})
                    CreateWordField (SMD9, Zero, SMDA)
                    CreateDWordField (SMD9, Zero, SMDB)
                    CreateByteField (Arg2, Zero, SMD7)
                    CreateByteField (Arg2, One, SMD2)
                    CreateByteField (Arg2, 0x02, SMD3)
                    CreateByteField (Arg2, 0x03, SMD4)
                    CreateWordField (Arg2, 0x04, SMD5)
                    If ((Arg1 == 0x61))
                    {
                        Local0 = Zero
                        If ((SMD7 == 0x02))
                        {
                            Local0 = SMBB ()
                        }

                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x62))
                    {
                        Local0 = SMMC (SMD7, SMD2)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x63))
                    {
                        Local0 = SMMD (SMD7, SMD2)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x64))
                    {
                        Local0 = SMBB ()
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x65))
                    {
                        Local0 = SMM0 (SMD7, SMD2, SMD3)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x66))
                    {
                        Local0 = SMM1 (SMD7, SMD2)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x67))
                    {
                        Local0 = SMM2 (SMD7, SMD2, SMD3, SMD4)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x68))
                    {
                        Local0 = SMM3 (SMD7, SMD2, SMD3)
                        SMDA = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x69))
                    {
                        Local0 = SMM4 (SMD7, SMD2, SMD3, SMD5)
                        SMDB = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x6A))
                    {
                        Local0 = SMM5 (SMD7, SMD2, SMD3)
                        SMDB = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x6B))
                    {
                        CreateDWordField (Arg2, 0x03, SMD8)
                        CreateField (Arg2, 0x38, (SMD8 * 0x08), SMD6)
                        Local0 = SMM6 (SMD7, SMD2, SMD3, SMD6)
                        SMDB = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                    ElseIf ((Arg1 == 0x6C))
                    {
                        Local0 = SMM7 (SMD7, SMD2, SMD3)
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x6D))
                    {
                        CreateDWordField (Arg2, 0x03, SMDC)
                        CreateField (Arg2, 0x38, (SMDC * 0x08), SMDD)
                        Local0 = SMMB (SMD7, SMD2, SMD3, SMDD)
                        SMDB = Local0
                        Return (SMD9) /* \GSA1.WMBB.SMD9 */
                    }
                }
                ElseIf (((Arg1 >= 0x6E) && (Arg1 <= 0x75)))
                {
                    CreateWordField (Arg2, Zero, PID0)
                    CreateByteField (Arg2, 0x02, PID1)
                    CreateWordField (Arg2, 0x02, PID2)
                    CreateDWordField (Arg2, 0x02, PID3)
                    If ((Arg1 == 0x6E))
                    {
                        Local0 = PIO6 (PID0, Zero)
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x6F))
                    {
                        PIO7 (PID0, Zero, PID1)
                    }
                    ElseIf ((Arg1 == 0x70))
                    {
                        Local0 = PIO6 (PID0, One)
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x71))
                    {
                        PIO7 (PID0, One, PID2)
                    }
                    ElseIf ((Arg1 == 0x72))
                    {
                        Local0 = PIO6 (PID0, 0x02)
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x73))
                    {
                        PIO7 (PID0, 0x02, PID3)
                    }
                }
                ElseIf ((Arg1 == 0x76)){}
                ElseIf ((Arg1 == 0x77)){}
                ElseIf (((Arg1 >= 0x78) && (Arg1 <= 0x80)))
                {
                    CreateByteField (Arg2, Zero, PCE0)
                    CreateByteField (Arg2, One, PCE1)
                    CreateByteField (Arg2, 0x02, PCE2)
                    CreateWordField (Arg2, 0x04, PCE3)
                    CreateByteField (Arg2, 0x06, PCE6)
                    CreateWordField (Arg2, 0x06, PCE4)
                    CreateDWordField (Arg2, 0x06, PCE5)
                    If ((Arg1 == 0x78))
                    {
                        Local0 = PCI4 ()
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x79))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, Zero))
                    }
                    ElseIf ((Arg1 == 0x7A))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, Zero, PCE6)
                    }
                    ElseIf ((Arg1 == 0x7B))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, One))
                    }
                    ElseIf ((Arg1 == 0x7C))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, One, PCE4)
                    }
                    ElseIf ((Arg1 == 0x7D))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, 0x02))
                    }
                    ElseIf ((Arg1 == 0x7E))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, 0x02, PCE5)
                    }

                    CreateByteField (Arg2, 0x06, PCE7)
                    CreateByteField (Arg2, 0x07, PCE8)
                    CreateDWordField (Arg2, 0x08, PCE9)
                    If ((Arg1 == 0x7F))
                    {
                        Return (PCI5 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8))
                    }
                    ElseIf ((Arg1 == 0x80))
                    {
                        PCI6 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8, PCE9)
                    }
                }
                ElseIf (((Arg1 >= 0x82) && (Arg1 <= 0x89)))
                {
                    CreateDWordField (Arg2, Zero, MED0)
                    CreateByteField (Arg2, 0x04, MED1)
                    CreateWordField (Arg2, 0x04, MED2)
                    CreateDWordField (Arg2, 0x04, MED3)
                    CreateByteField (Arg2, 0x04, MED4)
                    CreateByteField (Arg2, 0x05, MED5)
                    CreateDWordField (Arg2, 0x06, MED6)
                    If ((Arg1 == 0x82))
                    {
                        Return (MEM4 (MED0, Zero))
                    }
                    ElseIf ((Arg1 == 0x83))
                    {
                        MEM5 (MED0, Zero, MED1)
                    }
                    ElseIf ((Arg1 == 0x84))
                    {
                        Return (MEM4 (MED0, One))
                    }
                    ElseIf ((Arg1 == 0x85))
                    {
                        MEM5 (MED0, One, MED2)
                    }
                    ElseIf ((Arg1 == 0x86))
                    {
                        Return (MEM4 (MED0, 0x02))
                    }
                    ElseIf ((Arg1 == 0x87))
                    {
                        MEM5 (MED0, 0x02, MED3)
                    }
                    ElseIf ((Arg1 == 0x88))
                    {
                        Return (MEM0 (MED0, MED4, MED5))
                    }
                    ElseIf ((Arg1 == 0x89))
                    {
                        MEM1 (MED0, MED4, MED5, MED6)
                    }
                }
                ElseIf ((Arg1 == 0xBE))
                {
                    EVT2 (Arg2)
                }
                ElseIf ((Arg1 == 0x012C))
                {
                    Return (DIMC ())
                }
                ElseIf ((Arg1 == 0x0130))
                {
                    Return (DIMD (DerefOf (Arg2 [Zero])))
                }
                ElseIf ((Arg1 == 0x0136))
                {
                    Return (DIM1 (DerefOf (Arg2 [Zero])))
                }
            }

            Method (WMBC, 3, NotSerialized)
            {
            }
        }
    }

    Scope (\)
    {
    }
}


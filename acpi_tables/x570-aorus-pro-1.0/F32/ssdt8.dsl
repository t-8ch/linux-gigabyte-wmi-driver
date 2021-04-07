/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Wed Apr  7 13:25:28 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000A663 (42595)
 *     Revision         0x01
 *     Checksum         0xF6
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

            Method (SMBB, 0, Serialized)
            {
                Return (0x0B00)
            }

            Method (SMB8, 0, Serialized)
            {
            }

            Mutex (SMMB, 0x00)
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

            Mutex (SMME, 0x00)
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
                    Acquire (SMMB, 0xFFFF)
                    Local0 = Zero
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
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
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Release (SMME)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMMH, 2, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBL (Arg1)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (Zero)
            }

            Method (SMMI, 2, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBM (Arg1)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (0xFFFF)
            }

            Method (SMM0, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB0 (Arg1, Arg2)
                    Release (SMMB)
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
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB1 (Arg1)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                Return (0xFFFF)
            }

            Method (SMM2, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB2 (Arg1, Arg2, Arg3)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMA2 (Arg1, Arg2, Arg3)
                    Release (SMME)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM3, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB3 (Arg1, Arg2)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMA3 (Arg1, Arg2)
                    Release (SMME)
                    Return (Local0)
                }

                Return (0xFFFF)
            }

            Method (SMM4, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB4 (Arg1, Arg2, Arg3)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMA4 (Arg1, Arg2, Arg3)
                    Release (SMME)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM5, 3, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMB5 (Arg1, Arg2)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMA5 (Arg1, Arg2)
                    Release (SMME)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SMMU, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBK (Arg1, Arg2, Arg3)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMAN (Arg1, Arg2, Arg3)
                    Release (SMME)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM6, 4, Serialized)
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Zero
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBK (Arg1, Arg2, Arg3)
                    Release (SMMB)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = Zero
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMA9 (Arg1, Arg2, Arg3)
                    Release (SMME)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM7, 3, Serialized)
            {
                Name (DATB, Buffer (0x0100){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, SMMF)
                CreateWordField (DATC, 0x02, SMMG)
                If ((Arg0 == 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBA (Arg1, Arg2, DATB)
                    Release (SMMB)
                    If ((Local0 & 0x8000))
                    {
                        SMMF = Local0
                        SMMG = Zero
                        Concatenate (DATC, DATB, Local1)
                    }
                    Else
                    {
                        SMMF = Zero
                        SMMG = Local0
                        Concatenate (DATC, DATB, Local1)
                    }

                    Return (Local1)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Acquire (SMME, 0xFFFF)
                    Local0 = SMAA (Arg1, Arg2, DATB)
                    Release (SMME)
                    If ((Local0 & 0x8000))
                    {
                        SMMF = Local0
                        SMMG = Zero
                        Concatenate (DATC, DATB, Local1)
                    }
                    Else
                    {
                        SMMF = Zero
                        SMMG = Local0
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
                    Acquire (SMMB, 0xFFFF)
                    Local0 = SMBE (Arg1, Arg2)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (MM17, 1, NotSerialized)
            {
                Local7 = Arg0
                Local0 = Zero
                Local1 = ""
                While ((Local0 < SizeOf (Local7)))
                {
                    If ((Local0 != Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Local6 = ToHexString (DerefOf (Local7 [Local0]), Local2)
                    Concatenate (Local1, Local6, Local1)
                    Local0++
                }

                Return (Local1)
            }

            Method (MM18, 1, NotSerialized)
            {
                Local7 = Arg0
                Local0 = Zero
                Local1 = ""
                While ((Local0 < SizeOf (Local7)))
                {
                    If ((Local0 != Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Concatenate (Local1, DerefOf (Local7 [Local0]), Local1)
                    Local0++
                }

                Return (Local1)
            }

            Method (MM00, 0, NotSerialized)
            {
                Return (SizeOf (GSAT))
            }

            Method (MM01, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = SizeOf (GSAT)
                While ((Local0 < Local1))
                {
                    If ((DerefOf (DerefOf (GSAT [Local0]) [Zero]) == Arg0))
                    {
                        Return (DerefOf (GSAT [Local0]))
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (MM19, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = SizeOf (GSAT)
                While ((Local0 < Local1))
                {
                    If ((DerefOf (DerefOf (GSAT [Local0]) [Zero]) == Arg0))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (MM02, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (Local0 [One]))
                }

                Return (Ones)
            }

            Method (MM04, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (Local0 [0x02]))
                }

                Return (Ones)
            }

            Method (MM14, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (Local0 [0x03]))
                }

                Return (Ones)
            }

            Method (MM03, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (Local0 [0x04]))
                }

                Return (Ones)
            }

            Method (MM06, 2, Serialized)
            {
                Local0 = MM03 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If ((Arg1 >= SizeOf (Local0)))
                    {
                        Return (Ones)
                    }

                    If ((Arg1 < SizeOf (Local0)))
                    {
                        Local1 = DerefOf (Local0 [Arg1])
                        If ((ObjectType (Local1) == 0x04))
                        {
                            IFPK [Zero] = DerefOf (Local1 [Zero])
                            IFPK [One] = DerefOf (Local1 [One])
                            IFPK [0x02] = DerefOf (DerefOf (Local1 [0x02]) [
                                Zero])
                            IFPK [0x03] = DerefOf (DerefOf (Local1 [0x02]) [
                                One])
                            IFPK [0x04] = DerefOf (DerefOf (Local1 [0x02]) [
                                0x02])
                            IFPK [0x05] = DerefOf (DerefOf (Local1 [0x02]) [
                                0x03])
                            Return (IFPK) /* \GSA1.MM06.IFPK */
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM07, 2, Serialized)
            {
                Local0 = MM03 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If ((Arg1 < SizeOf (Local0)))
                    {
                        Local1 = DerefOf (Local0 [Arg1])
                        If ((ObjectType (Local1) == 0x04))
                        {
                            IFPK [Zero] = DerefOf (Local1 [Zero])
                            IFPK [One] = DerefOf (Local1 [One])
                            IFPK [0x02] = DerefOf (DerefOf (Local1 [0x03]) [
                                Zero])
                            IFPK [0x03] = DerefOf (DerefOf (Local1 [0x03]) [
                                One])
                            IFPK [0x04] = DerefOf (DerefOf (Local1 [0x03]) [
                                0x02])
                            IFPK [0x05] = DerefOf (DerefOf (Local1 [0x03]) [
                                0x03])
                            Return (IFPK) /* \GSA1.MM07.IFPK */
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM10, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM11, 2, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM12, 2, NotSerialized)
            {
                Local6 = Arg1
                Local0 = Zero
                While (One)
                {
                    Local1 = MM06 (Arg0, Local0)
                    If ((ObjectType (Local1) == 0x04))
                    {
                        If ((DerefOf (Local1 [0x02]) <= DerefOf (Local1 [0x03]
                            )))
                        {
                            If (((Local6 >= DerefOf (Local1 [0x02])) && (
                                Local6 <= DerefOf (Local1 [0x03]))))
                            {
                                Local3 = (Local6 - DerefOf (Local1 [0x02]))
                                Local5 = DerefOf (Local1 [0x04])
                                If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                                {
                                    Local2 = MM07 (Arg0, Local0)
                                    Local3 /= DerefOf (Local1 [0x04])
                                    If ((DerefOf (Local2 [0x02]) <= DerefOf (Local2 [0x03]
                                        )))
                                    {
                                        Local4 = (DerefOf (Local2 [0x02]) + (Local3 * DerefOf (Local2 [
                                            0x04])))
                                    }
                                    Else
                                    {
                                        Local4 = (DerefOf (Local2 [0x02]) - (Local3 * DerefOf (Local2 [
                                            0x04])))
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (((Local6 >= DerefOf (Local1 [0x03])) && 
                            (Local6 <= DerefOf (Local1 [0x02]))))
                        {
                            Local3 = (DerefOf (Local1 [0x02]) - Local6)
                            If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                            {
                                Local2 = MM07 (Arg0, Local0)
                                Local3 /= DerefOf (Local1 [0x04])
                                If ((DerefOf (Local2 [0x02]) <= DerefOf (Local2 [0x03]
                                    )))
                                {
                                    Local4 = (DerefOf (Local2 [0x02]) + (Local3 * DerefOf (Local2 [
                                        0x04])))
                                }
                                Else
                                {
                                    Local4 = (DerefOf (Local2 [0x02]) - (Local3 * DerefOf (Local2 [
                                        0x04])))
                                }

                                Return (Local4)
                            }
                        }

                        Local0++
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM13, 2, NotSerialized)
            {
                Local6 = Arg1
                Local0 = Zero
                While (One)
                {
                    Local1 = MM07 (Arg0, Local0)
                    If ((ObjectType (Local1) == 0x04))
                    {
                        If ((DerefOf (Local1 [0x02]) <= DerefOf (Local1 [0x03]
                            )))
                        {
                            If (((Local6 >= DerefOf (Local1 [0x02])) && (
                                Local6 <= DerefOf (Local1 [0x03]))))
                            {
                                Local3 = (Local6 - DerefOf (Local1 [0x02]))
                                If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                                {
                                    Local2 = MM06 (Arg0, Local0)
                                    Local3 /= DerefOf (Local1 [0x04])
                                    If ((DerefOf (Local2 [0x02]) <= DerefOf (Local2 [0x03]
                                        )))
                                    {
                                        Local4 = (DerefOf (Local2 [0x02]) + (Local3 * DerefOf (Local2 [
                                            0x04])))
                                    }
                                    Else
                                    {
                                        Local4 = (DerefOf (Local2 [0x02]) - (Local3 * DerefOf (Local2 [
                                            0x04])))
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (((Local6 >= DerefOf (Local1 [0x03])) && 
                            (Local6 <= DerefOf (Local1 [0x02]))))
                        {
                            Local3 = (DerefOf (Local1 [0x02]) - Local6)
                            If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                            {
                                Local2 = MM06 (Arg0, Local0)
                                Local3 /= DerefOf (Local1 [0x04])
                                If ((DerefOf (Local2 [0x02]) <= DerefOf (Local2 [0x03]
                                    )))
                                {
                                    Local4 = (DerefOf (Local2 [0x02]) + (Local3 * DerefOf (Local2 [
                                        0x04])))
                                }
                                Else
                                {
                                    Local4 = (DerefOf (Local2 [0x02]) - (Local3 * DerefOf (Local2 [
                                        0x04])))
                                }

                                Return (Local4)
                            }
                        }

                        Local0++
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM08, 1, NotSerialized)
            {
                Local6 = MM10 (Arg0)
                Local0 = Zero
                While (One)
                {
                    Local1 = MM07 (Arg0, Local0)
                    If ((Local1 != Ones))
                    {
                        If ((DerefOf (Local1 [0x02]) <= DerefOf (Local1 [0x03]
                            )))
                        {
                            If (((Local6 >= DerefOf (Local1 [0x02])) && (
                                Local6 <= DerefOf (Local1 [0x03]))))
                            {
                                Local3 = (Local6 - DerefOf (Local1 [0x02]))
                                If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                                {
                                    Local2 = MM06 (Arg0, Local0)
                                    Local4 = (DerefOf (Local2 [0x02]) + ((Local3 / DerefOf (
                                        Local1 [0x04])) * DerefOf (Local2 [0x04])))
                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (((Local6 >= DerefOf (Local1 [0x03])) && 
                            (Local6 <= DerefOf (Local1 [0x02]))))
                        {
                            Local3 = (DerefOf (Local1 [0x02]) - Local6)
                            If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                            {
                                Local2 = MM06 (Arg0, Local0)
                                Local4 = (DerefOf (Local2 [0x02]) + ((Local3 / DerefOf (
                                    Local1 [0x04])) * DerefOf (Local2 [0x04])))
                                Return (Local4)
                            }
                        }

                        Local0++
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM09, 2, NotSerialized)
            {
                Local0 = Zero
                While (One)
                {
                    Local1 = MM06 (Arg0, Local0)
                    If ((ObjectType (Local1) == 0x04))
                    {
                        If (((Arg1 >= DerefOf (Local1 [0x02])) && (
                            Arg1 <= DerefOf (Local1 [0x03]))))
                        {
                            Local3 = (Arg1 - DerefOf (Local1 [0x02]))
                            If (((Local3 % DerefOf (Local1 [0x04])) == Zero))
                            {
                                Local2 = MM07 (Arg0, Local0)
                                Local4 = (DerefOf (Local2 [0x02]) + ((Local3 / DerefOf (
                                    Local1 [0x04])) * DerefOf (Local2 [0x04])))
                                Return (Zero)
                            }
                        }

                        Local0++
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM15, 2, NotSerialized)
            {
                Local0 = MM14 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If ((DerefOf (Local0 [One]) == One))
                    {
                        Local4 = DerefOf (Local0 [0x02])
                        Local2 = SizeOf (Local4)
                        Local3 = Zero
                        While ((Local3 < Local2))
                        {
                            If ((Arg1 == DerefOf (Local4 [Local3])))
                            {
                                Return (DerefOf (DerefOf (Local0 [0x03]) [Local3]))
                            }

                            Local3++
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM16, 2, NotSerialized)
            {
                Local0 = MM14 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If ((DerefOf (Local0 [One]) == One))
                    {
                        Local1 = Match (DerefOf (Local0 [0x03]), MEQ, Arg1, MTR, Zero, 
                            Zero)
                        If ((Local1 != Ones))
                        {
                            Return (DerefOf (DerefOf (Local0 [0x02]) [Local1]))
                        }
                    }
                }

                Return ("Unknown")
            }

            Name (GSAT, Package (0x17)
            {
                Package (0x04)
                {
                    0x1B, 
                    "CPU Vcore Loadline Calibration", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x000500EB
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x05)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo"
                        }, 

                        Package (0x05)
                        {
                            0x0C, 
                            0x07, 
                            0x04, 
                            0x03, 
                            0x02
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x04)
                {
                    0x4D, 
                    "Vcore SOC Loadline Calibration", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_2", 
                        0x74, 
                        One, 
                        0x000500EC
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x05)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo"
                        }, 

                        Package (0x05)
                        {
                            0x0C, 
                            0x07, 
                            0x04, 
                            0x03, 
                            0x02
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x04)
                {
                    0x1D, 
                    "CPU Vcore Protection", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x00030549
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x06)
                        {
                            "150mV", 
                            "200mV", 
                            "250mV", 
                            "300mV", 
                            "350mV", 
                            "400mV"
                        }, 

                        Package (0x06)
                        {
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07
                        }, 

                        "350mV"
                    }
                }, 

                Package (0x04)
                {
                    0x22, 
                    "CPU Vcore Current Protection", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x00050049
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x05)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo"
                        }, 

                        Package (0x05)
                        {
                            0x0B, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x13
                        }, 

                        "Medium"
                    }
                }, 

                Package (0x04)
                {
                    0x26, 
                    "CPU Vcore PWM Switch Rate", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x00060035
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "300khz", 
                            "400khz", 
                            "500khz"
                        }, 

                        Package (0x03)
                        {
                            0x34, 
                            0x2E, 
                            0x28
                        }, 

                        "400khz"
                    }
                }, 

                Package (0x04)
                {
                    0x50, 
                    "Vcore SOC PWM Switch Rate", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_2", 
                        0x74, 
                        One, 
                        0x00060036
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "300khz", 
                            "400khz", 
                            "500khz"
                        }, 

                        Package (0x03)
                        {
                            0x34, 
                            0x2E, 
                            0x28
                        }, 

                        "400khz"
                    }
                }, 

                Package (0x04)
                {
                    0x2D, 
                    "PWM Phase Control", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x0004042C
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x06)
                        {
                            "exm Perf", 
                            "high Perf", 
                            "Perf", 
                            "Balanced", 
                            "Mid PWR", 
                            "Lite PWR"
                        }, 

                        Package (0x06)
                        {
                            Zero, 
                            0x44, 
                            0x4044, 
                            0x00444444, 
                            0x00934444, 
                            0x00A08944
                        }, 

                        "exm Perf"
                    }
                }, 

                Package (0x06)
                {
                    0x06, 
                    "CPU VCore DVID Offset", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x000800E1
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFF8AD0, 
                            0x7530, 
                            0x0271, 
                            0x000186A0
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFF8AD0, 
                                0xFFFFFD8F, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                0xD0, 
                                0xFF, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x7530, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x05, 
                    "CPU VCore", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x000800E3
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x000124F8, 
                            0x0002BF20, 
                            0x0271, 
                            0x000186A0
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x000124F8, 
                                0x0002BF20, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                0x77, 
                                0x012B, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0001D4C0, 
                                0x0001D4C0, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0001D4C0
                }, 

                Package (0x04)
                {
                    0x80000005, 
                    "CPU VCore Mode", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_1", 
                        0x74, 
                        Zero, 
                        0x000800B0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x0B, 
                    "VCORE SOC DVID Offset", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_2", 
                        0x74, 
                        One, 
                        0x000800E2
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFF8AD0, 
                            0x7530, 
                            0x0271, 
                            0x000186A0
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFF8AD0, 
                                0xFFFFFD8F, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                0xD0, 
                                0xFF, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x7530, 
                                0x0271, 
                                0x000186A0
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x0A, 
                    "VCORE SOC", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_2", 
                        0x74, 
                        One, 
                        0x000800E4
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x000124F8, 
                            0x0001D4C0, 
                            0x0271, 
                            0x000186A0
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x000124F8, 
                                0x0001D4C0, 
                                0x0271, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x77, 
                                0xBF, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x00016472, 
                                0x00016472, 
                                0x0271, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x00016472
                }, 

                Package (0x04)
                {
                    0x8000000A, 
                    "VCORE SOC Mode", 
                    Package (0x05)
                    {
                        One, 
                        "IR35201_0x74_2", 
                        0x74, 
                        One, 
                        0x000800B1
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x62, 
                    "CPU VDD18", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF3", 
                        0x20, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0640, 
                            0x0910, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0640, 
                                0x06E0, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x85, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0708, 
                                0x0910, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0D, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0708
                }, 

                Package (0x06)
                {
                    0x09, 
                    "CPU VDDP", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF2", 
                        0x20, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x02BC, 
                            0x0640, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x02BC, 
                                0x0370, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0384, 
                                0x0640, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x23, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0384
                }, 

                Package (0x06)
                {
                    0x0C, 
                    "PM_CLDO12", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF2", 
                        0x26, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xAA, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x0F, 
                    "DRAM Voltage (CH A/B)", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF1", 
                        0x2A, 
                        One, 
                        0x0F
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x03E8, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x05D2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x1D, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1F, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x18, 
                    "DDRVPP (CH A/B) Voltage", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF3", 
                        0x2A, 
                        0x03, 
                        0x18
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x07BC, 
                            0x0BCC, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x07BC, 
                                0x099C, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8D, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x09C4, 
                                0x0BCC, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0D, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x09C4
                }, 

                Package (0x06)
                {
                    0x10, 
                    "DRAM CH(A/B) Termination", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF2", 
                        0x2A, 
                        0x02, 
                        0x10
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x01C2, 
                            0x03E8, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x01C2, 
                                0x0258, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1E, 
                                Zero, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x025D, 
                                0x03E8, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x81, 
                                0xD0, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0258
                }, 

                Package (0x06)
                {
                    0x74, 
                    "PM_1VSOC", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF1", 
                        0x26, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x05DC, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x19, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x73, 
                    "PM_1V8", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF3", 
                        0x26, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x05DC, 
                            0x07D0, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x06F4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8F, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0708, 
                                0x07D0, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0A, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0708
                }, 

                Package (0x04)
                {
                    0x20000001, 
                    "Pcie Slot1 x16_1_S", 
                    Package (0x05)
                    {
                        0x13, 
                        "FCHGPIO_23_9_X", 
                        0x02, 
                        0x17, 
                        0x09
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x08)
                        {
                            "000", 
                            "001", 
                            "010", 
                            "011", 
                            "100", 
                            "101", 
                            "110", 
                            "111"
                        }, 

                        Package (0x08)
                        {
                            0xFF, 
                            Zero, 
                            0xFF, 
                            One, 
                            0xFF, 
                            0x02, 
                            0xFF, 
                            0x03
                        }, 

                        "2#0#0#000301"
                    }
                }, 

                Package (0x04)
                {
                    0x20000002, 
                    "Pcie Slot2 x8_1_S", 
                    Package (0x05)
                    {
                        0x13, 
                        "FCHGPIO_92_X_4", 
                        0x02, 
                        0x5C, 
                        0x04
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x08)
                        {
                            "000", 
                            "001", 
                            "010", 
                            "011", 
                            "100", 
                            "101", 
                            "110", 
                            "111"
                        }, 

                        Package (0x08)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            One, 
                            0xFF, 
                            0xFF, 
                            0x02, 
                            0x03
                        }, 

                        "1#0#1#000301"
                    }
                }
            })
            Method (XDP8, 1, Serialized)
            {
                Acquire (SMMB, 0xFFFF)
                Local0 = (((SMB3 (Arg0, 0xFD) | (SMB3 (Arg0, 0xFC) << 0x08
                    )) | (SMB3 (Arg0, 0x6E) << 0x10)) | (SMB3 (Arg0, 0x6F) << 
                    0x18))
                Release (SMMB)
                Return (Local0)
            }

            Method (XDPV, 1, Serialized)
            {
                Acquire (SMMB, 0xFFFF)
                Local0 = SMB3 (Arg0, 0x6E)
                Local1 = SMB3 (Arg0, 0x6F)
                Local2 = SMB3 (Arg0, 0xFC)
                Release (SMMB)
                If ((((Local0 == 0x52) && (Local1 == 0x49)) && (Local2 == 0x7C)))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (XDPU, 1, Serialized)
            {
                Acquire (SMMB, 0xFFFF)
                Local0 = SMB3 (Arg0, 0x74)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                Local3 = SMB5 (Arg0, (Local1 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local1 >> 0x18))
                Local5 = Arg2
                SMB4 (Arg0, (Local1 & 0xFF), Local5)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local5 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
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
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local2 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), (Arg2 & One))
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local2 = SMB3 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                SMB2 (Arg0, (Local0 & 0xFF), Arg2)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local1 = SMB3 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
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
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
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
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local3 = SMB5 (Arg0, (Local0 & 0xFF))
                Release (SMMB)
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

                Acquire (SMMB, 0xFFFF)
                SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                Local4 = Arg2
                SMB4 (Arg0, (Local0 & 0xFF), Local4)
                Release (SMMB)
                Return (Zero)
            }

            Method (XDPS, 2, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0004044B
                    Acquire (SMMB, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    Local0 = SMB3 (Arg0, 0x4D)
                    Local1 = SMB3 (Arg0, 0x4A)
                    Local2 = SMB3 (Arg0, 0x4B)
                    Local4 = ((Local0 + (Local1 << 0x08)) + (Local2 << 0x10
                        ))
                    Release (SMMB)
                }
                Else
                {
                    Local0 = 0x0004044C
                    Acquire (SMMB, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    Local0 = SMB3 (Arg0, 0x4C)
                    Local4 = Local0
                    Release (SMMB)
                }

                Return (Local4)
            }

            Method (XDPT, 3, Serialized)
            {
                If ((Arg1 == Zero))
                {
                    Local0 = 0x0004044B
                    Acquire (SMMB, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    SMB2 (Arg0, 0x4D, (Arg2 & 0xFF))
                    SMB2 (Arg0, 0x4A, ((Arg2 >> 0x08) & 0xFF))
                    SMB2 (Arg0, 0x4B, ((Arg2 >> 0x10) & 0xFF))
                    Release (SMMB)
                }
                Else
                {
                    Local0 = 0x0004044C
                    Acquire (SMMB, 0xFFFF)
                    SMB2 (Arg0, 0xFF, (Local0 >> 0x18))
                    SMB2 (Arg0, 0x4C, (Arg2 & 0xFF))
                    Release (SMMB)
                }

                Return (Zero)
            }

            Method (IRD8, 1, Serialized)
            {
                Return ((((SMM3 (0x02, Arg0, 0xFA) | (SMM3 (0x02, Arg0, 
                    0xFB) << 0x08)) | (SMM3 (0x02, Arg0, 0xFC) << 0x10)) | (
                    SMM3 (0x02, Arg0, 0xFD) << 0x18)))
            }

            Method (IRDV, 1, Serialized)
            {
                Local0 = SMM3 (0x02, Arg0, 0xFC)
                Local1 = SMM3 (0x02, Arg0, 0xFD)
                Local2 = SMM3 (0x02, Arg0, 0xFB)
                If (((Local0 == 0x49) && (Local1 == 0x50)))
                {
                    If (((Local2 == 0x4D) || (Local2 == 0x50)))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (IRDU, 1, Serialized)
            {
                Return (SMM3 (0x02, Arg0, 0xFA))
            }

            Method (IRDE, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x000106EB
                        Local1 = 0x000500EA
                    }
                    Else
                    {
                        Local0 = 0x000105EB
                        Local1 = 0x000500EB
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000106EC
                    Local1 = 0x000500EB
                }
                Else
                {
                    Local0 = 0x000105EC
                    Local1 = 0x000500EC
                }

                Local3 = SMM3 (0x02, Arg0, (Local1 & 0xFF))
                Local4 = PFM9 (Local3, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF))
                Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local5 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                If ((Local5 == Zero))
                {
                    Return (0x20)
                }
                Else
                {
                    Return ((Local4 & 0x1F))
                }
            }

            Method (IRDF, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x000106EB
                        Local1 = 0x000500EA
                    }
                    Else
                    {
                        Local0 = 0x000105EB
                        Local1 = 0x000500EB
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000106EC
                    Local1 = 0x000500EB
                }
                Else
                {
                    Local0 = 0x000105EC
                    Local1 = 0x000500EC
                }

                Local4 = SMM3 (0x02, Arg0, (Local1 & 0xFF))
                Local4 = PFM8 (Local4, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF), (Arg2 & 0x1F))
                SMM2 (0x02, Arg0, (Local1 & 0xFF), Local4)
                Local5 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local5 = PFM8 (Local5, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), (Arg2 >> 0x05))
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Local5)
                Return (Zero)
            }

            Method (IRD9, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00080092
                        Local1 = 0x00010791
                    }
                    Else
                    {
                        Local0 = 0x00080094
                        Local1 = 0x00010693
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000800E3
                    Local1 = 0x000107E5
                }
                Else
                {
                    Local0 = 0x000800E4
                    Local1 = 0x000106E5
                }

                Local3 = SMM3 (0x02, Arg0, (Local1 & 0xFF))
                Local4 = PFM9 (Local3, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF))
                Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local5 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Return (((Local5 << One) | (Local4 & One)))
            }

            Method (IRDA, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00080092
                        Local1 = 0x00010791
                    }
                    Else
                    {
                        Local0 = 0x00080094
                        Local1 = 0x00010693
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000800E3
                    Local1 = 0x000107E5
                }
                Else
                {
                    Local0 = 0x000800E4
                    Local1 = 0x000106E5
                }

                Local5 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local5 = PFM8 (Local5, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), (Arg2 >> One))
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Local5)
                Local4 = SMM3 (0x02, Arg0, (Local1 & 0xFF))
                Local4 = PFM8 (Local4, ((Local1 >> 0x08) & 0xFF), (
                    (Local1 >> 0x10) & 0xFF), (Arg2 & One))
                SMM2 (0x02, Arg0, (Local1 & 0xFF), Local4)
                Return (Zero)
            }

            Method (IRDW, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local2 = 0x0001009A
                    }
                    Else
                    {
                        Local2 = 0x0001009B
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local2 = 0x0001009A
                }
                Else
                {
                    Local2 = 0x0001009B
                }

                Local3 = SMM3 (0x02, Arg0, (Local2 & 0xFF))
                Local0 = PFM9 (Local3, ((Local2 >> 0x08) & 0xFF), (
                    (Local2 >> 0x10) & 0xFF))
                Return (Local0)
            }

            Method (IRDX, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local2 = 0x0001009A
                    }
                    Else
                    {
                        Local2 = 0x0001009B
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local2 = 0x0001009A
                }
                Else
                {
                    Local2 = 0x0001009B
                }

                Local4 = SMM3 (0x02, Arg0, (Local2 & 0xFF))
                Local4 = PFM8 (Local4, ((Local2 >> 0x08) & 0xFF), (
                    (Local2 >> 0x10) & 0xFF), (Arg2 & One))
                SMM2 (0x02, Arg0, (Local2 & 0xFF), Local4)
                Return (Zero)
            }

            Method (IRDC, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x0008007D
                    }
                    Else
                    {
                        Local0 = 0x0008007E
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000800E1
                }
                Else
                {
                    Local0 = 0x000800E2
                }

                Return (SMM3 (0x02, Arg0, (Local0 & 0xFF)))
            }

            Method (IRDB, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x0008007D
                    }
                    Else
                    {
                        Local0 = 0x0008007E
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000800E1
                }
                Else
                {
                    Local0 = 0x000800E2
                }

                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg2)
                Return (Zero)
            }

            Method (IRDD, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x000800B0
                    }
                    Else
                    {
                        Local0 = 0x000800B1
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x000800B0
                }
                Else
                {
                    Local0 = 0x000800B1
                }

                Return (SMM3 (0x02, Arg0, (Local0 & 0xFF)))
            }

            Method (IRDM, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00030545
                    }
                    Else
                    {
                        Local0 = 0x00030546
                    }

                    Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                    Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF))
                    Return (Local4)
                }
                Else
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00030549
                    }
                    Else
                    {
                        Local0 = 0x0003054A
                    }

                    Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                    Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF))
                    Return (Local4)
                }
            }

            Method (IRDN, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00030545
                    }
                    Else
                    {
                        Local0 = 0x00030546
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x00030549
                }
                Else
                {
                    Local0 = 0x0003054A
                }

                Local4 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), Arg2)
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Local4)
                Return (Zero)
            }

            Method (IRDO, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00050045
                    }
                    Else
                    {
                        Local0 = 0x00050046
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x00050049
                }
                Else
                {
                    Local0 = 0x0005004A
                }

                Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Return (Local4)
            }

            Method (IRDP, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00050045
                    }
                    Else
                    {
                        Local0 = 0x00050046
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x00050049
                }
                Else
                {
                    Local0 = 0x0005004A
                }

                Local4 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), Arg2)
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Local4)
                Return (Zero)
            }

            Method (IRDQ, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00060031
                    }
                    Else
                    {
                        Local0 = 0x00060032
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x00060035
                }
                Else
                {
                    Local0 = 0x00060036
                }

                Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF))
                Return (Local4)
            }

            Method (IRDR, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x00060031
                    }
                    Else
                    {
                        Local0 = 0x00060032
                    }
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = 0x00060035
                }
                Else
                {
                    Local0 = 0x00060036
                }

                Local4 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                    (Local0 >> 0x10) & 0xFF), Arg2)
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Local4)
                Return (Zero)
            }

            Method (IRDS, 2, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x0004042C
                    }
                    Else
                    {
                        Local0 = 0x0004002F
                    }

                    Local3 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                    Local4 = PFM9 (Local3, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF))
                }
                ElseIf ((Arg1 == Zero))
                {
                    Local0 = SMM3 (0x02, Arg0, 0x2C)
                    Local1 = SMM3 (0x02, Arg0, 0x2D)
                    Local2 = SMM3 (0x02, Arg0, 0x2E)
                    Local4 = ((Local0 + (Local1 << 0x08)) + (Local2 << 0x10
                        ))
                }
                Else
                {
                    Local0 = SMM3 (0x02, Arg0, 0x2F)
                    Local4 = Local0
                }

                Return (Local4)
            }

            Method (IRDT, 3, Serialized)
            {
                If ((IRDU (Arg0) < 0x03))
                {
                    If ((Arg1 == Zero))
                    {
                        Local0 = 0x0004042C
                    }
                    Else
                    {
                        Local0 = 0x0004002F
                    }

                    Local4 = SMM3 (0x02, Arg0, (Local0 & 0xFF))
                    Local4 = PFM8 (Local4, ((Local0 >> 0x08) & 0xFF), (
                        (Local0 >> 0x10) & 0xFF), Arg2)
                    SMM2 (0x02, Arg0, (Local0 & 0xFF), Local4)
                    Return (Zero)
                }
                Else
                {
                    If ((Arg1 == Zero))
                    {
                        SMM2 (0x02, Arg0, 0x2C, (Arg2 & 0xFF))
                        SMM2 (0x02, Arg0, 0x2D, ((Arg2 >> 0x08) & 0xFF))
                        SMM2 (0x02, Arg0, 0x2E, ((Arg2 >> 0x10) & 0xFF))
                    }
                    Else
                    {
                        SMM2 (0x02, Arg0, 0x2F, (Arg2 & 0xFF))
                    }

                    Return (Zero)
                }
            }

            Method (IRCU, 1, Serialized)
            {
                If (IRDV (Arg0))
                {
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (IRCE, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDE (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCF, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDF (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRC9, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRD9 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCA, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDA (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRCC, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDC (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCB, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDB (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRCD, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDD (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCM, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDM (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCN, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDN (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRCO, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDO (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCP, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDP (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRCQ, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDQ (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCR, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDR (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (IRCS, 2, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    Return (IRDS (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (IRCT, 3, Serialized)
            {
                Local0 = IRCU (Arg0)
                If (Zero){}
                ElseIf ((Local0 == Zero))
                {
                    IRDT (Arg0, Arg1, Arg2)
                }

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
                Local0 = 0x00080000
                Local1 = 0x000204F0
                SMM2 (0x02, Arg0, (Local0 & 0xFF), Arg1)
                Local2 = SMM5 (0x02, Arg0, (Local1 & 0xFF))
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

            Name (EZVT, 0xFF)
            Name (EZVU, "None None None")
            Name (EZVV, 0xFFFF)
            Name (EZVW, "None None None")
            Name (EZVX, 0xFFFF)
            Name (EZW0, "None None None")
            Name (EZW1, "None None None")
            Method (EZV7, 1, Serialized)
            {
                EZV4 (0x0C, EZVT)
                Local0 = EZVK (0x80000005, EZVU)
                If ((Local0 == 0x02))
                {
                    EZV4 (0x06, EZVV)
                }
                ElseIf ((Local0 == 0x03))
                {
                    EZV4 (0x05, EZVV)
                }
                ElseIf ((Local0 == Zero)){}
                Local0 = EZVK (0x8000000A, EZVW)
                If ((Local0 == 0x03))
                {
                    EZV4 (0x0A, EZVX)
                }
                ElseIf ((Local0 == Zero)){}
                EZVI (0x1B, EZW0)
                EZVI (0x4D, EZW1)
            }

            Method (EZV8, 1, Serialized)
            {
                If ((Arg0 == 0x05)){}
                Else
                {
                    EZVT = EZV3 (0x0C)
                    EZVU = EZVH (0x80000005)
                    Local0 = EZVK (0x80000005, EZVU)
                    If ((Local0 == 0x02))
                    {
                        EZVV = EZV3 (0x06)
                    }
                    ElseIf ((Local0 == 0x03))
                    {
                        EZVV = EZV3 (0x05)
                    }

                    EZVW = EZVH (0x8000000A)
                    Local0 = EZVK (0x80000005, EZVW)
                    If ((Local0 == 0x02))
                    {
                        EZVX = EZV3 (0x0B)
                    }
                    ElseIf ((Local0 == 0x03))
                    {
                        EZVX = EZV3 (0x0A)
                    }

                    EZW0 = EZVH (0x1B)
                    EZW1 = EZVH (0x4D)
                }
            }

            Method (EZV5, 0, Serialized)
            {
                EZW3 ()
                EZVM ()
            }

            Method (EZW3, 0, Serialized)
            {
                EZW4 (0x26)
                EZW4 (0x50)
            }

            Method (EZW4, 1, Serialized)
            {
                Local0 = MM19 (Arg0)
                If ((Local0 != Ones))
                {
                    DerefOf (GSAT [Local0]) [Zero] = Ones
                }
            }

            Method (EZVM, 0, Serialized)
            {
            }

            Name (EZW2, "1.0")
            Name (EZVZ, "")
            Method (EZVY, 3, NotSerialized)
            {
                Local7 = EZVZ /* \GSA1.EZVZ */
                Local6 = DerefOf (Local7 [0x02])
                Return (Zero)
            }

            Method (EZV6, 0, Serialized)
            {
                Return (0xDEAB)
            }

            Method (EZV0, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Local1 = DerefOf (Local0 [One])
                    If ((DerefOf (DerefOf (Local0 [0x03]) [One]) == Zero))
                    {
                        Local7 = "I"
                        Local3 = ToHexString (DerefOf (Local0 [0x05]), Local4)
                        Local2 = ""
                        Local6 = Zero
                        Local4 = DerefOf (Local0 [0x03])
                        Local4 = (SizeOf (Local4) - 0x02)
                        While ((Local6 < Local4))
                        {
                            If ((Local6 != Zero))
                            {
                                Concatenate (Local2, ":", Local2)
                            }

                            Local5 = MM17 (DerefOf (DerefOf (Local0 [0x03]) [(0x02 + 
                                Local6)]))
                            Concatenate (Local2, Local5, Local2)
                            Local6++
                        }
                    }
                    Else
                    {
                        Local7 = "S"
                        Local3 = DerefOf (DerefOf (Local0 [0x03]) [0x04])
                        Local2 = MM18 (DerefOf (DerefOf (Local0 [0x03]) [0x02]))
                    }

                    Concatenate (Local1, ":", Local1)
                    Local4 = ToHexString (DerefOf (DerefOf (Local0 [0x03]) [Zero])
                        )
                    Concatenate (Local1, Local4, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local7, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local3, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local2, Local1)
                    Return (Local1)
                }

                Return (Ones)
            }

            Method (EZVC, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                }

                Return (Ones)
            }

            Method (EZVB, 1, NotSerialized)
            {
                Local0 = EZVC (Arg0)
                Local1 = MM01 (Local0)
                If ((ObjectType (Local1) == 0x04))
                {
                    Return (DerefOf (Local1 [0x02]))
                }

                Return (Ones)
            }

            Method (EZV1, 1, NotSerialized)
            {
                Local0 = EZVB (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Local2 = Zero
                    If ((Local2 == DerefOf (Local0 [0x03])))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Return (Ones)
            }

            Method (EZV2, 2, NotSerialized)
            {
                Local0 = EZVB (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If ((Arg1 == One))
                    {
                        Local1 = DerefOf (Local0 [0x03])
                    }
                    Else
                    {
                        Local1 = DerefOf (Local0 [0x04])
                    }
                }
            }

            Method (EZV3, 1, Serialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If (Zero){}
                    ElseIf (((DerefOf (DerefOf (Local0 [0x02]) [Zero]
                        ) == One) || (DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 0x02)))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x000800E3)
                            {
                                Local1 = IRD9 (Local7, Local6)
                            }
                            Case (0x000800E4)
                            {
                                Local1 = IRD9 (Local7, Local6)
                            }
                            Case (0x000800E1)
                            {
                                Local1 = IRDC (Local7, Local6)
                            }
                            Case (0x000800E2)
                            {
                                Local1 = IRDC (Local7, Local6)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM13 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0F))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x04090082)
                            {
                                Local1 = XDP9 (Local7, Local6)
                            }
                            Case (0x08090082)
                            {
                                Local1 = XDP9 (Local7, Local6)
                            }
                            Case (0x04080054)
                            {
                                Local1 = XDPC (Local7, Local6)
                            }
                            Case (0x08080054)
                            {
                                Local1 = XDPC (Local7, Local6)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM13 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        Zero))
                    {
                        Local1 = NCT1 (DerefOf (DerefOf (Local0 [0x02]) [0x02]), 
                            DerefOf (DerefOf (Local0 [0x02]) [0x03]))
                        If ((Local1 != Ones))
                        {
                            Local2 = MM13 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x08))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x00100021)
                            {
                                Local1 = ISM2 (Local7, Local6)
                                If ((Local1 == Zero)){}
                                If ((Arg0 == 0x0A))
                                {
                                    If ((Local1 > 0x05DC))
                                    {
                                        Local1 = Zero
                                    }
                                }
                            }
                            Case (0x00100023)
                            {
                                Local1 = ISM4 (Local7, Local6)
                                If ((Local1 == Zero)){}
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM13 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    Else
                    {
                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZV4, 2, Serialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If (Zero){}
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        Zero))
                    {
                        Local2 = MM12 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local1 = NCT2 (DerefOf (DerefOf (Local0 [0x02]) [0x02]), 
                                DerefOf (DerefOf (Local0 [0x02]) [0x03]), Local2)
                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (((DerefOf (DerefOf (Local0 [0x02]) [Zero]
                        ) == One) || (DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 0x02)))
                    {
                        Local2 = MM12 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x000800E3)
                                {
                                    Local1 = IRDA (Local7, Local6, Zero)
                                    Local1 = IRDA (Local7, Local6, Local2)
                                }
                                Case (0x000800E4)
                                {
                                    Local1 = IRDA (Local7, Local6, Zero)
                                    Local1 = IRDA (Local7, Local6, Local2)
                                }
                                Case (0x000800E1)
                                {
                                    Local1 = IRDA (Local7, Local6, Zero)
                                    Local1 = IRDB (Local7, Local6, Local2)
                                }
                                Case (0x000800E2)
                                {
                                    Local1 = IRDA (Local7, Local6, Zero)
                                    Local1 = IRDB (Local7, Local6, Local2)
                                }
                                Default
                                {
                                    Local1 = Ones
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0F))
                    {
                        Local2 = MM12 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x04090082)
                                {
                                    Local1 = XDPA (Local7, Local6, Zero)
                                    Local1 = XDPA (Local7, Local6, Local2)
                                }
                                Case (0x08090082)
                                {
                                    Local1 = XDPA (Local7, Local6, Zero)
                                    Local1 = XDPA (Local7, Local6, Local2)
                                }
                                Case (0x04080054)
                                {
                                    Local1 = XDPA (Local7, Local6, Zero)
                                    Local1 = XDPB (Local7, Local6, Local2)
                                }
                                Case (0x08080054)
                                {
                                    Local1 = XDPA (Local7, Local6, Zero)
                                    Local1 = XDPB (Local7, Local6, Local2)
                                }
                                Default
                                {
                                    Local1 = Ones
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x08))
                    {
                        Local2 = MM12 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x00100021)
                                {
                                    Local1 = ISM3 (Local7, Local6, Zero)
                                    Local1 = ISM1 (Local7, Local6, Local2)
                                    Local1 = ISMG (Local7, Local6, 0x03)
                                }
                                Case (0x00100023)
                                {
                                    Local1 = ISM3 (Local7, Local6, Local2)
                                    Local1 = ISMG (Local7, Local6, 0x02)
                                }
                                Default
                                {
                                    Local1 = 0xFFFF
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (Ones)
                    }
                }

                Return (One)
            }

            Method (EZV9, 1, NotSerialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    Return (DerefOf (Local0 [0x05]))
                }

                Return (One)
            }

            Method (EZVA, 1, NotSerialized)
            {
                Local0 = MM02 (Arg0)
                Return (Local0)
            }

            Method (EZVF, 2, NotSerialized)
            {
                Local0 = MM13 (Arg0, Arg1)
                Return (Local0)
            }

            Method (EZVG, 2, NotSerialized)
            {
                Local0 = MM12 (Arg0, Arg1)
                Return (Local0)
            }

            Method (EZVH, 1, Serialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If (Zero){}
                    ElseIf (((DerefOf (DerefOf (Local0 [0x02]) [Zero]
                        ) == One) || (DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 0x02)))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x000800B0)
                            {
                                Local3 = IRD9 (Local7, Local6)
                                Local3 >>= One
                                If ((Local3 == Zero))
                                {
                                    Local2 = Zero
                                    If ((Arg0 == 0x80000005))
                                    {
                                        Local2 = EZV3 (0x06)
                                    }
                                    ElseIf ((Arg0 == 0x8000000A))
                                    {
                                        Local2 = Zero
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = Zero
                                    }
                                    Else
                                    {
                                        Local1 = 0x02
                                    }
                                }
                                Else
                                {
                                    Local1 = 0x03
                                }
                            }
                            Case (0x000800B1)
                            {
                                Local3 = IRD9 (Local7, Local6)
                                Local3 >>= One
                                If ((Local3 == Zero))
                                {
                                    Local2 = Zero
                                    If ((Arg0 == 0x80000005))
                                    {
                                        Local2 = EZV3 (0x06)
                                    }
                                    ElseIf ((Arg0 == 0x8000000A))
                                    {
                                        Local2 = Zero
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = Zero
                                    }
                                    Else
                                    {
                                        Local1 = 0x02
                                    }
                                }
                                Else
                                {
                                    Local1 = 0x03
                                }
                            }
                            Case (0x000500EB)
                            {
                                Local1 = IRDE (Local7, Local6)
                            }
                            Case (0x000500EC)
                            {
                                Local1 = IRDE (Local7, Local6)
                            }
                            Case (0x00030549)
                            {
                                Local1 = IRDM (Local7, Local6)
                            }
                            Case (0x0003054A)
                            {
                                Local1 = IRDM (Local7, Local6)
                            }
                            Case (0x00050049)
                            {
                                Local1 = IRDO (Local7, Local6)
                            }
                            Case (0x0005004A)
                            {
                                Local1 = IRDO (Local7, Local6)
                            }
                            Case (0x00060035)
                            {
                                Local1 = IRDQ (Local7, Local6)
                            }
                            Case (0x00060036)
                            {
                                Local1 = IRDQ (Local7, Local6)
                            }
                            Case (0x0004042C)
                            {
                                Local1 = IRDS (Local7, Local6)
                            }
                            Case (0x0004002F)
                            {
                                Local1 = IRDS (Local7, Local6)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0F))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x040800B0)
                            {
                                Local3 = XDP9 (Local7, Local6)
                                If ((Local3 == Zero))
                                {
                                    Local2 = Zero
                                    If ((Arg0 == 0x80000005))
                                    {
                                        Local2 = EZV3 (0x06)
                                    }
                                    ElseIf ((Arg0 == 0x8000000A))
                                    {
                                        Local2 = Zero
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = Zero
                                    }
                                    Else
                                    {
                                        Local1 = 0x02
                                    }
                                }
                                Else
                                {
                                    Local1 = 0x03
                                }
                            }
                            Case (0x080800B1)
                            {
                                Local3 = XDP9 (Local7, Local6)
                                If ((Local3 == Zero))
                                {
                                    Local2 = Zero
                                    If ((Arg0 == 0x80000005))
                                    {
                                        Local2 = EZV3 (0x06)
                                    }
                                    ElseIf ((Arg0 == 0x8000000A))
                                    {
                                        Local2 = Zero
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = Zero
                                    }
                                    Else
                                    {
                                        Local1 = 0x02
                                    }
                                }
                                Else
                                {
                                    Local1 = 0x03
                                }
                            }
                            Case (0x06100050)
                            {
                                Local1 = XDPE (Local7, Local6)
                            }
                            Case (0x0A100050)
                            {
                                Local1 = XDPE (Local7, Local6)
                            }
                            Case (0x04040C22)
                            {
                                Local1 = XDPM (Local7, Local6)
                            }
                            Case (0x08040C22)
                            {
                                Local1 = XDPM (Local7, Local6)
                            }
                            Case (0x0610008C)
                            {
                                Local1 = XDPO (Local7, Local6)
                            }
                            Case (0x0A10008C)
                            {
                                Local1 = XDPO (Local7, Local6)
                            }
                            Case (0x0610009E)
                            {
                                Local1 = XDPY (Local7, Local6)
                            }
                            Case (0x0A10009E)
                            {
                                Local1 = XDPY (Local7, Local6)
                            }
                            Case (0x06100066)
                            {
                                Local1 = XDPQ (Local7, Local6)
                            }
                            Case (0x0A100066)
                            {
                                Local1 = XDPQ (Local7, Local6)
                            }
                            Case (0x0004044B)
                            {
                                Local1 = XDPS (Local7, Local6)
                            }
                            Case (0x0004044C)
                            {
                                Local1 = XDPS (Local7, Local6)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x08))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x000204F0)
                            {
                                Local1 = ISMF (Local7, Local6)
                            }
                            Case (0x00100028)
                            {
                                Local1 = ISM5 (Local7, Local6)
                            }
                            Case (0x00100042)
                            {
                                Local1 = ISMH (Local7, Local6)
                            }
                            Case (0x00100046)
                            {
                                Local1 = ISMJ (Local7, Local6)
                            }
                            Case (0x001000E6)
                            {
                                Local1 = ISML (Local7, Local6)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x14))
                    {
                        Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                        Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                        {
                            Case (0x000204F0)
                            {
                                Local1 = ISMF (Local7, Local6)
                            }
                            Case (0x00100028)
                            {
                                Local1 = ISM5 (Local7, Local6)
                            }
                            Case (0x00100042)
                            {
                                Local1 = ISMN (Local7, Local6)
                            }
                            Case (0x00100046)
                            {
                                Local1 = ISMP (Local7, Local6)
                            }
                            Case (0x00100033)
                            {
                                Local1 = ISMT (Local7, Local6)
                            }
                            Case (0xEA38)
                            {
                                Local1 = ISMV (Local7, 0xEA38)
                            }
                            Case (0xEAB8)
                            {
                                Local1 = ISMV (Local7, 0xEAB8)
                            }
                            Case (0xEB38)
                            {
                                Local1 = ISMV (Local7, 0xEB38)
                            }
                            Default
                            {
                                Local1 = Ones
                            }

                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        Zero))
                    {
                        Local1 = NCT1 (DerefOf (DerefOf (Local0 [0x02]) [0x02]), 
                            DerefOf (DerefOf (Local0 [0x02]) [0x03]))
                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x04))
                    {
                        Local1 = M009 (DerefOf (DerefOf (Local0 [0x02]) [0x02]))
                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x13))
                    {
                        Local3 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local2 = Zero
                        Local1 = Zero
                        While ((Local2 < Local3))
                        {
                            Local1 = ((Local1 << One) | M009 (DerefOf (DerefOf (Local0 [
                                0x02]) [(0x03 + Local2)])))
                            Local2++
                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0C))
                    {
                        Local4 = (DerefOf (DerefOf (Local0 [0x02]) [0x02]) - 0x10)
                        Local1 = PIO0 ((0x0A00 + (Local4 >> 0x04)), (Local4 & 
                            0x0F), One)
                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0D))
                    {
                        Local3 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                        Local2 = Zero
                        Local1 = Zero
                        While ((Local2 < Local3))
                        {
                            Local4 = (DerefOf (DerefOf (Local0 [0x02]) [(0x03 + Local2
                                )]) - 0x10)
                            Local1 = ((Local1 << One) | PIO0 ((0x0A00 + (Local4 >> 0x04
                                )), (Local4 & 0x0F), One))
                            Local2++
                        }

                        If ((Local1 != Ones))
                        {
                            Local2 = MM16 (Arg0, Local1)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZVI, 2, Serialized)
            {
                Local0 = MM01 (Arg0)
                If ((ObjectType (Local0) == 0x04))
                {
                    If (Zero){}
                    ElseIf (((DerefOf (DerefOf (Local0 [0x02]) [Zero]
                        ) == One) || (DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 0x02)))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x000800B0)
                                {
                                    If ((Local2 == Zero))
                                    {
                                        Local3 = Zero
                                        IRDA (Local7, Local6, Local3)
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x02))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x00016472)
                                        }
                                        ElseIf ((Arg0 == 0x80001005))
                                        {
                                            EZV4 (0x1005, 0x0001D4C0)
                                        }
                                    }

                                    Local1 = Zero
                                }
                                Case (0x000800B1)
                                {
                                    If ((Local2 == Zero))
                                    {
                                        Local3 = Zero
                                        IRDA (Local7, Local6, Local3)
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x02))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x00016472)
                                        }
                                    }

                                    Local1 = Zero
                                }
                                Case (0x000500EB)
                                {
                                    If ((Local2 == 0x20))
                                    {
                                        Local2 = Zero
                                    }
                                    Else
                                    {
                                        Local2 |= 0x20
                                    }

                                    Local1 = IRDF (Local7, Local6, Local2)
                                }
                                Case (0x000500EC)
                                {
                                    If ((Local2 == 0x20))
                                    {
                                        Local2 = Zero
                                    }
                                    Else
                                    {
                                        Local2 += 0x20
                                    }

                                    Local1 = IRDF (Local7, Local6, Local2)
                                }
                                Case (0x00030549)
                                {
                                    Local1 = IRDN (Local7, Local6, Local2)
                                }
                                Case (0x0003054A)
                                {
                                    Local1 = IRDN (Local7, Local6, Local2)
                                }
                                Case (0x00050049)
                                {
                                    Local1 = IRDP (Local7, Local6, Local2)
                                }
                                Case (0x0005004A)
                                {
                                    Local1 = IRDP (Local7, Local6, Local2)
                                }
                                Case (0x00060035)
                                {
                                    Local1 = IRDR (Local7, Local6, Local2)
                                }
                                Case (0x00060036)
                                {
                                    Local1 = IRDR (Local7, Local6, Local2)
                                }
                                Case (0x0004042C)
                                {
                                    Local1 = IRDT (Local7, Local6, Local2)
                                }
                                Case (0x0004002F)
                                {
                                    Local1 = IRDT (Local7, Local6, Local2)
                                }
                                Default
                                {
                                    Local1 = 0xFFFF
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0F))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x040800B0)
                                {
                                    If ((Local2 == Zero))
                                    {
                                        Local3 = Zero
                                        XDPA (Local7, Local6, Local3)
                                        EZV4 (0x06, Zero)
                                    }
                                    ElseIf ((Local2 == 0x02))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x0001D4C0)
                                        }
                                    }

                                    Local1 = Zero
                                }
                                Case (0x080800B1)
                                {
                                    If ((Local2 == Zero))
                                    {
                                        Local3 = Zero
                                        XDPA (Local7, Local6, Local3)
                                    }
                                    ElseIf ((Local2 == 0x02))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x06, Zero)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A)){}
                                    }
                                    ElseIf ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x00015F90)
                                        }
                                    }

                                    Local1 = Zero
                                }
                                Case (0x06100050)
                                {
                                    Local1 = XDPF (Local7, Local6, Local2)
                                }
                                Case (0x0A100050)
                                {
                                    Local1 = XDPF (Local7, Local6, Local2)
                                }
                                Case (0x04040C22)
                                {
                                    Local1 = XDPN (Local7, Local6, Local2)
                                }
                                Case (0x08040C22)
                                {
                                    Local1 = XDPN (Local7, Local6, Local2)
                                }
                                Case (0x04040822)
                                {
                                    Local1 = XDPK (Local7, Local6, Local2)
                                }
                                Case (0x08040822)
                                {
                                    Local1 = XDPK (Local7, Local6, Local2)
                                }
                                Case (0x0610008C)
                                {
                                    Local1 = XDPP (Local7, Local6, Local2)
                                }
                                Case (0x0A10008C)
                                {
                                    Local1 = XDPP (Local7, Local6, Local2)
                                }
                                Case (0x0610009E)
                                {
                                    Local1 = XDPZ (Local7, Local6, Local2)
                                }
                                Case (0x0A10009E)
                                {
                                    Local1 = XDPZ (Local7, Local6, Local2)
                                }
                                Case (0x06100066)
                                {
                                    Local1 = XDPR (Local7, Local6, Local2)
                                }
                                Case (0x0A100066)
                                {
                                    Local1 = XDPR (Local7, Local6, Local2)
                                }
                                Case (0x0004044B)
                                {
                                    Local1 = XDPT (Local7, Local6, Local2)
                                }
                                Case (0x0004044C)
                                {
                                    Local1 = XDPT (Local7, Local6, Local2)
                                }
                                Default
                                {
                                    Local1 = 0xFFFF
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x08))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x000204F0)
                                {
                                    If ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                            ISM3 (Local7, Local6, Zero)
                                            Local1 = ISMG (Local7, Local6, Local2)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x00016472)
                                            ISM3 (Local7, Local6, Zero)
                                            Local1 = ISMG (Local7, Local6, Local2)
                                        }
                                    }

                                    If ((Local2 == 0x02))
                                    {
                                        Local1 = ISMG (Local7, Local6, Local2)
                                        Local1 = ISM3 (Local7, Local6, Zero)
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = ISMG (Local7, Local6, Local2)
                                        Local1 = ISM3 (Local7, Local6, Zero)
                                    }
                                }
                                Case (0x00100028)
                                {
                                    Local1 = ISM6 (Local7, Local6, Local2)
                                }
                                Case (0x00100042)
                                {
                                    Local1 = ISMI (Local7, Local6, Local2)
                                }
                                Case (0x00100046)
                                {
                                    Local1 = ISMK (Local7, Local6, Local2)
                                }
                                Case (0x001000E6)
                                {
                                    Local1 = ISMM (Local7, Local6, Local2)
                                }
                                Default
                                {
                                    Local1 = 0xFFFF
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x14))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local7 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local6 = DerefOf (DerefOf (Local0 [0x02]) [0x03])
                            Switch (DerefOf (DerefOf (Local0 [0x02]) [0x04]))
                            {
                                Case (0x000204F0)
                                {
                                    If ((Local2 == 0x03))
                                    {
                                        If ((Arg0 == 0x80000005))
                                        {
                                            EZV4 (0x05, 0x0001D4C0)
                                            ISM3 (Local7, Local6, Zero)
                                            Local1 = ISMG (Local7, Local6, Local2)
                                        }
                                        ElseIf ((Arg0 == 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x00016472)
                                            ISM3 (Local7, Local6, Zero)
                                            Local1 = ISMG (Local7, Local6, Local2)
                                        }
                                    }

                                    If ((Local2 == 0x02))
                                    {
                                        Local1 = ISMG (Local7, Local6, Local2)
                                        Local1 = ISM3 (Local7, Local6, Zero)
                                    }

                                    If ((Local2 == Zero))
                                    {
                                        Local1 = ISMG (Local7, Local6, Local2)
                                        Local1 = ISM3 (Local7, Local6, Zero)
                                    }
                                }
                                Case (0x00100028)
                                {
                                    Local1 = ISM6 (Local7, Local6, Local2)
                                }
                                Case (0x00100042)
                                {
                                    Local1 = ISMO (Local7, Local6, Local2)
                                }
                                Case (0x00100046)
                                {
                                    Local1 = ISMQ (Local7, Local6, Local2)
                                    If ((Local2 == 0x09C4))
                                    {
                                        Local2 = 0x08FC
                                    }

                                    Local1 = ISMS (Local7, Local6, Local2)
                                }
                                Case (0x00100033)
                                {
                                    Local1 = ISMU (Local7, Local6, Local2)
                                }
                                Case (0xEA38)
                                {
                                    Local1 = ISMW (Local7, 0xEA38, Local2)
                                }
                                Case (0xEAB8)
                                {
                                    Local1 = ISMW (Local7, 0xEAB8, Local2)
                                }
                                Case (0xEB38)
                                {
                                    Local1 = ISMW (Local7, 0xEB38, Local2)
                                }
                                Default
                                {
                                    Local1 = 0xFFFF
                                }

                            }

                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        Zero))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local1 = NCT2 (DerefOf (DerefOf (Local0 [0x02]) [0x02]), 
                                DerefOf (DerefOf (Local0 [0x02]) [0x03]), Local2)
                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x04))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            M010 (DerefOf (DerefOf (Local0 [0x02]) [0x02]), Local2)
                            Local1 = Zero
                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0C))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local5 = (DerefOf (DerefOf (Local0 [0x02]) [(0x03 + Local1
                                )]) - 0x10)
                            PIO1 ((0x0A00 + (Local5 >> 0x04)), (Local5 & 0x0F), 
                                One, Local2)
                            Local1 = Zero
                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf ((DerefOf (DerefOf (Local0 [0x02]) [Zero]) == 
                        0x0D))
                    {
                        Local2 = MM15 (Arg0, Arg1)
                        If ((Local2 != Ones))
                        {
                            Local3 = DerefOf (DerefOf (Local0 [0x02]) [0x02])
                            Local1 = Zero
                            While ((Local1 < Local3))
                            {
                                Local4 = ((Local2 >> ((Local3 - Local1) - One)) & 
                                    One)
                                Local5 = (DerefOf (DerefOf (Local0 [0x02]) [(0x03 + Local1
                                    )]) - 0x10)
                                PIO1 ((0x0A00 + (Local5 >> 0x04)), (Local5 & 0x0F), 
                                    One, Local4)
                                Local1++
                            }

                            Local1 = Zero
                            If ((Local1 == 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Return (One)
            }

            Method (EZVJ, 2, NotSerialized)
            {
                Local0 = MM16 (Arg0, Arg1)
                Return (Local0)
            }

            Method (EZVK, 2, NotSerialized)
            {
                Local0 = MM15 (Arg0, Arg1)
                Return (Local0)
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

            Method (PTC0, 0, Serialized)
            {
            }

            Scope (\_TZ)
            {
                ThermalZone (PCT0)
                {
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (\_OSI ("Windows 2001"))
                        {
                            Local0 = 0x04
                        }

                        If (\_OSI ("Windows 2001.1"))
                        {
                            Local0 = 0x05
                        }

                        If (\_OSI ("FreeBSD"))
                        {
                            Local0 = 0x06
                        }

                        If (\_OSI ("HP-UX"))
                        {
                            Local0 = 0x07
                        }

                        If (\_OSI ("OpenVMS"))
                        {
                            Local0 = 0x08
                        }

                        If (\_OSI ("Windows 2001 SP1"))
                        {
                            Local0 = 0x09
                        }

                        If (\_OSI ("Windows 2001 SP2"))
                        {
                            Local0 = 0x0A
                        }

                        If (\_OSI ("Windows 2001 SP3"))
                        {
                            Local0 = 0x0B
                        }

                        If (\_OSI ("Windows 2006"))
                        {
                            Local0 = 0x0C
                        }

                        If (\_OSI ("Windows 2006 SP1"))
                        {
                            Local0 = 0x0D
                        }

                        If (\_OSI ("Windows 2009"))
                        {
                            Local0 = 0x0E
                        }

                        If (\_OSI ("Windows 2012"))
                        {
                            Local0 = 0x0F
                        }

                        If (\_OSI ("Windows 2013"))
                        {
                            Local0 = 0x10
                        }

                        If (\_OSI ("Windows 2015"))
                        {
                            Local0 = 0x11
                        }

                        If (\_OSI ("Windows 2016"))
                        {
                            Local0 = 0x12
                        }

                        If (\_OSI ("Windows 2017"))
                        {
                            Local0 = 0x13
                        }

                        If (\_OSI ("Windows 2017.2"))
                        {
                            Local0 = 0x14
                        }

                        If (\_OSI ("Windows 2018"))
                        {
                            Local0 = 0x15
                        }

                        If (\_OSI ("Windows 2018.2"))
                        {
                            Local0 = 0x16
                        }

                        If ((Local0 <= 0x0E)){}
                        Return (0x0B)
                    }

                    Name (TZD, Package (0x00){})
                    Method (_TZD, 0, Serialized)  // _TZD: Thermal Zone Devices
                    {
                        Return (TZD) /* \_TZ_.PCT0.TZD_ */
                    }

                    Name (PSL, Package (0x00){})
                    Method (_PSL, 0, Serialized)  // _PSL: Passive List
                    {
                        Return (PSL) /* \_TZ_.PCT0.PSL_ */
                    }

                    Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
                    {
                        Return (0x0B54)
                    }

                    Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                    {
                        Return (0x0B72)
                    }

                    Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                    {
                        Return (0x0B7C)
                    }

                    Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
                    {
                        Return (Zero)
                    }

                    Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
                    {
                        Return (Zero)
                    }

                    Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
                    {
                        Return (0x0A)
                    }

                    Method (_TZP, 0, Serialized)  // _TZP: Thermal Zone Polling
                    {
                        Return (0x0A)
                    }

                    Name (X57V, Zero)
                    Method (_TMP, 0, Serialized)  // _TMP: Temperature
                    {
                        If ((\GSA1.PTCF == One))
                        {
                            \GSA1.GGGH (0x04, 0x96, 0xFA)
                            \GSA1.GGGH (0x04, 0x96, 0xFA)
                            \GSA1.GGGH (0x04, 0x96, 0xFA)
                            \GSA1.GGGH (0x04, 0x96, 0xFA)
                            \GSA1.PTCF = Zero
                            Return (0x0B7C)
                        }

                        Return (0x0B54)
                    }

                    Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
                    {
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
                "F32", 
                "X570 AORUS PRO", 
                "X570AORUSPRO", 
                "8AMTS004", 
                0x01000000
            })
            Name (GGGB, "20201111")
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
                        Local0 = 0x4008090B
                    }
                    Case (0x08)
                    {
                        Local0 = 0x0130005F
                    }
                    Case (0x0C)
                    {
                        Local0 = 0xDEAB
                    }
                    Case (0x10)
                    {
                        Local0 = CPEX /* \GSA1.CPEX */
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
                EZV8 (Arg0)
            }

            Method (MWAK, 1, NotSerialized)
            {
                PFM1 (Arg0)
                EZV7 (Arg0)
            }

            OperationRegion (GGGT, SystemMemory, 0xBD12AB18, 0x0100)
            Field (GGGT, DWordAcc, Lock, Preserve)
            {
                Offset (0x04), 
                CPEX,   32, 
                PGRV,   8, 
                CCNT,   8, 
                E8CV,   8, 
                PTCF,   8
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
                GGGC = (GGGC | 0x2000)
                EZV5 ()
                DIM0 ()
                GGGC = (GGGC | 0x00080000)
                PTC0 ()
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

            Name (WQCC, Buffer (0x26CA)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xBA, 0x26, 0x00, 0x00, 0xFA, 0xA0, 0x01, 0x00,  // .&......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0xA8, 0xA7, 0x88, 0x01, 0x01, 0x08, 0x09, 0x42,  // .......B
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
                /* 0470 */  0x72, 0x00, 0x0F, 0x7D, 0x3A, 0x67, 0x6E, 0x82,  // r..}:gn.
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
                /* 0548 */  0x60, 0x90, 0x5C, 0xE5, 0xDB, 0xE0, 0x79, 0xE8,  // `.\...y.
                /* 0550 */  0x11, 0x44, 0x0B, 0x95, 0x8D, 0x93, 0x1A, 0x1D,  // .D......
                /* 0558 */  0x93, 0xC5, 0x9E, 0x10, 0x34, 0x9E, 0x73, 0x3F,  // ....4.s?
                /* 0560 */  0xB5, 0x03, 0x7C, 0xAD, 0xF0, 0xB9, 0xC0, 0x22,  // ..|...."
                /* 0568 */  0xA1, 0x74, 0x1D, 0x31, 0x84, 0xE5, 0x9D, 0x47,  // .t.1...G
                /* 0570 */  0x0C, 0xA1, 0xC1, 0xF8, 0x28, 0x46, 0xE0, 0x28,  // ....(F.(
                /* 0578 */  0x88, 0xC7, 0xEE, 0xA8, 0x10, 0xB2, 0x71, 0xEA,  // ......q.
                /* 0580 */  0x41, 0x5F, 0x75, 0x38, 0x81, 0xA3, 0x1D, 0xE3,  // A_u8....
                /* 0588 */  0x7C, 0x56, 0x80, 0x32, 0xB0, 0xC7, 0x8A, 0x63,  // |V.2...c
                /* 0590 */  0xF1, 0x11, 0x07, 0x1C, 0xFF, 0xFF, 0xA3, 0x1A,  // ........
                /* 0598 */  0xDC, 0xA1, 0xBF, 0x07, 0x98, 0x80, 0x1D, 0xA6,  // ........
                /* 05A0 */  0x71, 0xC7, 0x02, 0x38, 0x33, 0x78, 0x2D, 0xA8,  // q..83x-.
                /* 05A8 */  0x7A, 0x1C, 0xBA, 0x2D, 0x58, 0xDD, 0x65, 0x00,  // z..-X.e.
                /* 05B0 */  0x85, 0xF7, 0x48, 0x85, 0x3B, 0x3A, 0x83, 0x05,  // ..H.;:..
                /* 05B8 */  0xC8, 0x97, 0x01, 0x2B, 0x3D, 0x10, 0xD0, 0x99,  // ...+=...
                /* 05C0 */  0x84, 0x08, 0x13, 0xCD, 0xF0, 0x98, 0x43, 0x13,  // ......C.
                /* 05C8 */  0x1F, 0xA8, 0x47, 0xC7, 0x07, 0xEA, 0x63, 0x0C,  // ..G...c.
                /* 05D0 */  0x3B, 0x28, 0xE0, 0x4E, 0x4D, 0x18, 0x58, 0x0F,  // ;(.NM.X.
                /* 05D8 */  0x9D, 0xC3, 0x1A, 0x2D, 0xEC, 0x11, 0x3F, 0x43,  // ...-..?C
                /* 05E0 */  0xF8, 0xFE, 0xE1, 0x8B, 0x91, 0xAF, 0x2D, 0x3E,  // ......->
                /* 05E8 */  0x79, 0x80, 0xE5, 0x00, 0x05, 0x5C, 0xA4, 0x1D,  // y....\..
                /* 05F0 */  0x1F, 0x50, 0x07, 0x21, 0x4B, 0x3D, 0x3E, 0x20,  // .P.!K=> 
                /* 05F8 */  0x30, 0x0E, 0xD1, 0xE7, 0x81, 0xB3, 0x7C, 0x26,  // 0.....|&
                /* 0600 */  0xF0, 0x84, 0x1F, 0x47, 0xB0, 0xC2, 0xCE, 0x10,  // ...G....
                /* 0608 */  0x28, 0x49, 0x14, 0x3A, 0xD9, 0xFB, 0x0C, 0xC1,  // (I.:....
                /* 0610 */  0x0F, 0x93, 0x06, 0x33, 0x88, 0xCF, 0x10, 0x8E,  // ...3....
                /* 0618 */  0x77, 0x84, 0x41, 0x8F, 0xCE, 0x5A, 0x27, 0xA2,  // w.A..Z'.
                /* 0620 */  0xFF, 0xFF, 0x7C, 0x9F, 0x1D, 0x8E, 0xCE, 0x71,  // ..|....q
                /* 0628 */  0xCE, 0x10, 0x40, 0xF5, 0x20, 0x03, 0xBE, 0xD3,  // ..@. ...
                /* 0630 */  0x03, 0xF0, 0x3E, 0x68, 0xF2, 0xD3, 0x03, 0xE0,  // ..>h....
                /* 0638 */  0xEC, 0x40, 0x75, 0x96, 0x47, 0xFC, 0x36, 0xE2,  // .@u.G.6.
                /* 0640 */  0xDB, 0x03, 0xF6, 0xF4, 0x80, 0xFF, 0xFF, 0x9F,  // ........
                /* 0648 */  0x1E, 0x00, 0x3E, 0x41, 0xFA, 0xF4, 0x00, 0xB8,  // ..>A....
                /* 0650 */  0xFA, 0xFF, 0x9F, 0x1E, 0xF0, 0x07, 0x85, 0x77,  // .......w
                /* 0658 */  0x3E, 0x9F, 0x1E, 0x00, 0xB6, 0x0D, 0xDA, 0xA7,  // >.......
                /* 0660 */  0x07, 0xE0, 0xFD, 0xFF, 0x3F, 0x3D, 0x00, 0x87,  // ....?=..
                /* 0668 */  0x1B, 0xAA, 0xCF, 0x6B, 0x4F, 0x0F, 0x00, 0xDB,  // ...kO...
                /* 0670 */  0x60, 0xF9, 0xE9, 0x01, 0xFC, 0xFF, 0xFF, 0x43,  // `......C
                /* 0678 */  0x37, 0x90, 0x3A, 0x3D, 0xA0, 0x38, 0x2C, 0xF4,  // 7.:=.8,.
                /* 0680 */  0xF4, 0x00, 0xE1, 0x50, 0xCC, 0x06, 0x79, 0xC4,  // ...P..y.
                /* 0688 */  0xC1, 0xAB, 0x1F, 0x09, 0x39, 0x3C, 0x80, 0xEF,  // ....9<..
                /* 0690 */  0xEC, 0x8E, 0x3F, 0x3C, 0x00, 0x5E, 0xCE, 0xEB,  // ..?<.^..
                /* 0698 */  0xF8, 0xC3, 0x03, 0xF0, 0x3E, 0xA6, 0xFB, 0xF0,  // ....>...
                /* 06A0 */  0x00, 0xE7, 0xFF, 0x7F, 0x78, 0x00, 0x1C, 0x1C,  // ....x...
                /* 06A8 */  0x7F, 0x71, 0xA2, 0x8E, 0xBF, 0xC8, 0xC3, 0x03,  // .q......
                /* 06B0 */  0x1B, 0x77, 0x94, 0xD0, 0x21, 0x5E, 0x64, 0x63,  // .w..!^dc
                /* 06B8 */  0x9F, 0xDB, 0x99, 0xF8, 0x8A, 0x7D, 0x10, 0xAF,  // .....}..
                /* 06C0 */  0x03, 0x3E, 0x3E, 0x00, 0x0C, 0xFA, 0xFF, 0x1F,  // .>>.....
                /* 06C8 */  0x1F, 0xE0, 0x7B, 0x38, 0x57, 0x01, 0xEA, 0x6E,  // ..{8W..n
                /* 06D0 */  0xD4, 0xEC, 0x92, 0xC7, 0xB0, 0xA2, 0x63, 0xCE,  // ......c.
                /* 06D8 */  0x55, 0x00, 0x17, 0xFE, 0xFF, 0xA7, 0x07, 0xE0,  // U.......
                /* 06E0 */  0x04, 0xEE, 0xD3, 0x03, 0xE0, 0x45, 0xD6, 0xE9,  // .....E..
                /* 06E8 */  0x01, 0x75, 0x16, 0xB0, 0xCC, 0xA3, 0x82, 0x26,  // .u.....&
                /* 06F0 */  0x5B, 0xED, 0x29, 0x41, 0xA7, 0x07, 0x76, 0x77,  // [.)A..vw
                /* 06F8 */  0xC0, 0x9F, 0x1D, 0x00, 0xBF, 0xFF, 0xFF, 0xB3,  // ........
                /* 0700 */  0x03, 0xF0, 0x37, 0x71, 0x76, 0x00, 0xD4, 0xE8,  // ..7qv...
                /* 0708 */  0x5B, 0xA0, 0x8E, 0x78, 0x38, 0xBD, 0x2F, 0x05,  // [..x8./.
                /* 0710 */  0x1D, 0x64, 0x70, 0x22, 0x67, 0xA9, 0x81, 0x07,  // .dp"g...
                /* 0718 */  0xB6, 0x66, 0x70, 0x1D, 0x01, 0x98, 0x3E, 0x48,  // .fp...>H
                /* 0720 */  0x9D, 0x1A, 0x7C, 0x68, 0xB0, 0x32, 0x0A, 0xE9,  // ..|h.2..
                /* 0728 */  0x38, 0x3C, 0xA0, 0x92, 0x1F, 0x21, 0x28, 0x88,  // 8<...!(.
                /* 0730 */  0x01, 0x1D, 0xEB, 0x50, 0x85, 0x3E, 0x99, 0x79,  // ...P.>.y
                /* 0738 */  0x08, 0xC7, 0xE8, 0x24, 0x57, 0x07, 0x3A, 0x31,  // ...$W.:1
                /* 0740 */  0xCF, 0x91, 0xE3, 0xB1, 0x71, 0x19, 0xB5, 0xAA,  // ....q...
                /* 0748 */  0x19, 0x82, 0x48, 0xCD, 0x91, 0x00, 0x35, 0x01,  // ..H...5.
                /* 0750 */  0x9F, 0x1C, 0x30, 0xBA, 0x46, 0x40, 0xFE, 0xFF,  // ..0.F@..
                /* 0758 */  0x17, 0x2A, 0xF0, 0xE8, 0x3B, 0x38, 0x80, 0x1C,  // .*..;8..
                /* 0760 */  0x9D, 0xDF, 0xCB, 0x00, 0x47, 0xA3, 0xF2, 0xBD,  // ....G...
                /* 0768 */  0x0C, 0xF0, 0xA4, 0xE2, 0xFE, 0x01, 0x04, 0xFE,  // ........
                /* 0770 */  0xFF, 0x37, 0x56, 0x60, 0x0E, 0x5F, 0xE1, 0xBC,  // .7V`._..
                /* 0778 */  0x05, 0x1C, 0x3F, 0xD2, 0x89, 0xB0, 0x3B, 0x22,  // ..?...;"
                /* 0780 */  0xC0, 0xB0, 0x21, 0xFB, 0xF0, 0x80, 0xFD, 0xFF,  // ..!.....
                /* 0788 */  0xDF, 0x85, 0x00, 0x47, 0xA3, 0x7D, 0x78, 0x80,  // ...G.}x.
                /* 0790 */  0x77, 0x17, 0x02, 0x06, 0xF3, 0xF1, 0x5D, 0x08,  // w.....].
                /* 0798 */  0x70, 0xFF, 0xFF, 0xBF, 0x0B, 0x01, 0x5C, 0x19,  // p.....\.
                /* 07A0 */  0xB9, 0xEF, 0x1F, 0x80, 0x97, 0x58, 0xF7, 0x0F,  // .....X..
                /* 07A8 */  0x74, 0xCC, 0xFB, 0x07, 0x0A, 0xF6, 0x70, 0xEC,  // t.....p.
                /* 07B0 */  0xFA, 0x9A, 0x49, 0x4E, 0x20, 0x31, 0x22, 0x44,  // ..IN 1"D
                /* 07B8 */  0x0A, 0x4D, 0x20, 0xF5, 0xFF, 0xBF, 0x0B, 0xF1,  // .M .....
                /* 07C0 */  0x40, 0x30, 0x8A, 0x03, 0xA1, 0xC3, 0x03, 0x0F,  // @0......
                /* 07C8 */  0x00, 0x47, 0x41, 0x7C, 0x64, 0xF0, 0xE1, 0xC1,  // .GA|d...
                /* 07D0 */  0x4A, 0x0E, 0x0F, 0xE8, 0x29, 0x1D, 0xB7, 0xAF,  // J...)...
                /* 07D8 */  0x24, 0xEC, 0xF0, 0x00, 0xEF, 0x04, 0xC2, 0xEE,  // $.......
                /* 07E0 */  0x42, 0xC0, 0xDA, 0x98, 0x00, 0x6D, 0x90, 0x64,  // B....m.d
                /* 07E8 */  0x7C, 0x70, 0xB4, 0x9F, 0x35, 0x40, 0x31, 0x3E,  // |p..5@1>
                /* 07F0 */  0xE0, 0x73, 0xD6, 0x00, 0xD7, 0xF8, 0x78, 0xC0,  // .s....x.
                /* 07F8 */  0xF1, 0xA1, 0xA1, 0x7D, 0x1A, 0x88, 0x79, 0x38,  // ...}..y8
                /* 0800 */  0x47, 0x83, 0x19, 0x20, 0xB8, 0xFF, 0xFF, 0x03,  // G.. ....
                /* 0808 */  0x04, 0xD7, 0xF1, 0xC5, 0x03, 0x04, 0xDF, 0xD9,  // ........
                /* 0810 */  0x04, 0x78, 0xDB, 0x38, 0x9B, 0x00, 0x6A, 0xE4,  // .x.8..j.
                /* 0818 */  0x5C, 0xFB, 0x50, 0xA3, 0xB6, 0xBC, 0x6B, 0x1F,  // \.P...k.
                /* 0820 */  0x62, 0xC6, 0xC7, 0x7B, 0xB8, 0x4C, 0xD6, 0x95,  // b..{.L..
                /* 0828 */  0x0F, 0x75, 0x44, 0xB2, 0x9C, 0x33, 0x12, 0x8A,  // .uD..3..
                /* 0830 */  0xCA, 0x60, 0xA6, 0xF0, 0xA9, 0xC0, 0xE1, 0xCE,  // .`......
                /* 0838 */  0x48, 0xE8, 0xF3, 0x02, 0x1B, 0x1F, 0x3B, 0x37,  // H.....;7
                /* 0840 */  0xC0, 0xFF, 0xFF, 0xDF, 0xF8, 0x00, 0xE7, 0x3A,  // .......:
                /* 0848 */  0xCE, 0x0D, 0x80, 0xB4, 0x39, 0x9E, 0x70, 0x97,  // ....9.p.
                /* 0850 */  0xE7, 0x06, 0x20, 0xF4, 0xFF, 0x3F, 0x37, 0x00,  // .. ..?7.
                /* 0858 */  0x7C, 0xF0, 0x71, 0x6E, 0x00, 0xD4, 0x08, 0x3A,  // |.qn...:
                /* 0860 */  0x37, 0xA0, 0x05, 0x9E, 0x14, 0x34, 0xC1, 0xE6,  // 7....4..
                /* 0868 */  0xE7, 0x40, 0xA0, 0x9F, 0x86, 0x7C, 0x01, 0x06,  // .@...|..
                /* 0870 */  0xE3, 0xFF, 0x7F, 0x3C, 0xFC, 0x02, 0x0C, 0xF8,  // ...<....
                /* 0878 */  0x19, 0xA8, 0x47, 0xE1, 0x31, 0xF4, 0x7C, 0x70,  // ..G.1.|p
                /* 0880 */  0x00, 0xF2, 0x83, 0x78, 0x70, 0x00, 0xCC, 0x5D,  // ...xp..]
                /* 0888 */  0x43, 0x7C, 0x70, 0xC0, 0xFF, 0xFF, 0x0F, 0x0E,  // C|p.....
                /* 0890 */  0x00, 0x9F, 0x8C, 0x1E, 0x1C, 0x00, 0x5D, 0xFF,  // ......].
                /* 0898 */  0xFF, 0x83, 0x03, 0xEE, 0x3C, 0xF4, 0xE0, 0x00,  // ....<...
                /* 08A0 */  0x30, 0x6C, 0x00, 0x0F, 0x0E, 0x80, 0x8D, 0xFF,  // 0l......
                /* 08A8 */  0xFF, 0x41, 0x00, 0x17, 0xFE, 0x04, 0x8D, 0x3A,  // .A.....:
                /* 08B0 */  0x0B, 0x58, 0x0C, 0x90, 0xE6, 0x7A, 0x84, 0x4F,  // .X...z.O
                /* 08B8 */  0xCF, 0x6F, 0x19, 0x0F, 0x66, 0xC6, 0x7E, 0x82,  // .o..f.~.
                /* 08C0 */  0x3E, 0xCC, 0x03, 0xC1, 0xC4, 0x3F, 0x39, 0xD3,  // >....?9.
                /* 08C8 */  0x33, 0x83, 0x83, 0x53, 0x28, 0xDE, 0xD9, 0x01,  // 3..S(...
                /* 08D0 */  0x15, 0xE8, 0xEC, 0x40, 0x41, 0x3C, 0x6C, 0xC7,  // ...@A<l.
                /* 08D8 */  0x82, 0x90, 0x91, 0x23, 0x1D, 0x5A, 0xF1, 0x2C,  // ...#.Z.,
                /* 08E0 */  0x34, 0xA6, 0x04, 0x83, 0x1C, 0x1D, 0xE8, 0xC0,  // 4.......
                /* 08E8 */  0x3C, 0x46, 0x7E, 0xFF, 0xF7, 0x91, 0x8E, 0xC1,  // <F~.....
                /* 08F0 */  0x56, 0x35, 0x42, 0x10, 0xA9, 0xB9, 0x11, 0xA0,  // V5B.....
                /* 08F8 */  0x26, 0xE0, 0x8B, 0x03, 0x66, 0xC8, 0xB8, 0x03,  // &...f...
                /* 0900 */  0x1D, 0x5C, 0x71, 0x30, 0xCA, 0x35, 0x36, 0xB4,  // .\q0.56.
                /* 0908 */  0x0A, 0x10, 0x9D, 0x06, 0x8C, 0x70, 0x32, 0xE7,  // .....p2.
                /* 0910 */  0x06, 0x0C, 0x67, 0xEF, 0xB9, 0x81, 0x4B, 0xDF,  // ..g...K.
                /* 0918 */  0x15, 0x03, 0xE4, 0xFF, 0x7F, 0x74, 0x7E, 0x5C,  // .....t~\
                /* 0920 */  0xF1, 0xF9, 0x80, 0x4B, 0x39, 0x1F, 0x50, 0x10,  // ...K9.P.
                /* 0928 */  0x9F, 0x13, 0x7C, 0xD2, 0xF0, 0x21, 0xD8, 0xE7,  // ..|..!..
                /* 0930 */  0x03, 0xDC, 0x91, 0xC2, 0x27, 0x14, 0x07, 0x3B,  // ....'..;
                /* 0938 */  0xA9, 0x00, 0xCD, 0x21, 0x19, 0xC5, 0xB3, 0x86,  // ...!....
                /* 0940 */  0x3B, 0x83, 0x97, 0x88, 0xAA, 0xC7, 0xA1, 0x69,  // ;......i
                /* 0948 */  0x1C, 0x45, 0x75, 0xB7, 0x4F, 0x0D, 0xF4, 0x5C,  // .Eu.O..\
                /* 0950 */  0x9F, 0xFA, 0x4E, 0xF7, 0xD8, 0xD8, 0x35, 0x92,  // ..N...5.
                /* 0958 */  0x1D, 0x57, 0x80, 0xF7, 0xB4, 0x1E, 0x57, 0x00,  // .W....W.
                /* 0960 */  0x2B, 0xFF, 0xFF, 0xE3, 0x0A, 0x78, 0x06, 0x7C,  // +....x.|
                /* 0968 */  0x40, 0x98, 0xE3, 0x0A, 0xC0, 0xE5, 0xFF, 0xFF,  // @.......
                /* 0970 */  0x71, 0x05, 0xE0, 0xD7, 0xA8, 0x1E, 0x57, 0x00,  // q.....W.
                /* 0978 */  0x33, 0xB2, 0xDE, 0x01, 0xFA, 0xFF, 0x1F, 0x57,  // 3......W
                /* 0980 */  0x70, 0x32, 0x8F, 0x0B, 0x3A, 0xAE, 0xB0, 0x89,  // p2..:...
                /* 0988 */  0xC5, 0x8C, 0x71, 0x38, 0xD1, 0xE3, 0x1F, 0xF3,  // ..q8....
                /* 0990 */  0x0B, 0x07, 0x3F, 0x37, 0x82, 0x4F, 0xC9, 0xB9,  // ..?7.O..
                /* 0998 */  0x11, 0x3D, 0x83, 0x93, 0x38, 0xA1, 0x10, 0xCF,  // .=..8...
                /* 09A0 */  0xF3, 0x70, 0xCF, 0x8D, 0xC0, 0xF9, 0x16, 0xC2,  // .p......
                /* 09A8 */  0x4F, 0x0F, 0xB5, 0x9D, 0x1B, 0x81, 0x3C, 0x84,  // O.....<.
                /* 09B0 */  0xCF, 0x0E, 0xC0, 0xF7, 0xFF, 0x7F, 0x10, 0x00,  // ........
                /* 09B8 */  0x4F, 0xA2, 0xB7, 0x81, 0xCE, 0x0E, 0x1C, 0xD6,  // O.......
                /* 09C0 */  0x09, 0x4F, 0x4E, 0x08, 0x8C, 0xC3, 0xF2, 0x6C,  // .ON....l
                /* 09C8 */  0xA2, 0xBC, 0xC2, 0x32, 0x82, 0xA9, 0xE0, 0x74,  // ...2...t
                /* 09D0 */  0x70, 0xE2, 0x79, 0x60, 0xA4, 0x9A, 0x44, 0x47,  // p.y`..DG
                /* 09D8 */  0x07, 0xAE, 0xF3, 0xFC, 0x44, 0x41, 0x7C, 0x60,  // ....DA|`
                /* 09E0 */  0xF0, 0xC1, 0x09, 0x60, 0xD6, 0xDC, 0xE0, 0x5C,  // ...`...\
                /* 09E8 */  0x48, 0x30, 0x73, 0xE3, 0xFF, 0xFF, 0xB9, 0x01,  // H0s.....
                /* 09F0 */  0xAF, 0xF3, 0x82, 0xEF, 0x58, 0x00, 0x23, 0xA0,  // ....X.#.
                /* 09F8 */  0x7C, 0xC7, 0x02, 0x6C, 0xFC, 0xFF, 0x2F, 0x36,  // |..l../6
                /* 0A00 */  0x60, 0xBB, 0xA7, 0xF8, 0x62, 0x03, 0x78, 0x89,  // `...b.x.
                /* 0A08 */  0x7F, 0xC3, 0x44, 0x71, 0x58, 0xCE, 0xC5, 0x06,  // ..DqX...
                /* 0A10 */  0x71, 0xBE, 0x34, 0x74, 0x88, 0xB8, 0xB5, 0x63,  // q.4t...c
                /* 0A18 */  0xE8, 0x68, 0x83, 0xB9, 0x62, 0x02, 0x1C, 0xF8,  // .h..b...
                /* 0A20 */  0xFF, 0x5F, 0x31, 0x01, 0xFE, 0xFF, 0xFF, 0xCF,  // ._1.....
                /* 0A28 */  0x2B, 0x60, 0xD2, 0x7C, 0x5E, 0x01, 0xD4, 0x28,  // +`.|^..(
                /* 0A30 */  0x5D, 0xA2, 0xAE, 0x98, 0x38, 0xE5, 0x8F, 0x04,  // ]...8...
                /* 0A38 */  0x9D, 0x57, 0xD8, 0x1C, 0xCF, 0x82, 0x1F, 0x57,  // .W.....W
                /* 0A40 */  0x70, 0x5A, 0x01, 0x75, 0x5C, 0xE1, 0x2A, 0x61,  // pZ.u\.*a
                /* 0A48 */  0xA4, 0x65, 0xC1, 0x3A, 0x3F, 0xF0, 0xF4, 0xA7,  // .e.:?...
                /* 0A50 */  0x16, 0x0A, 0xE2, 0x81, 0xFB, 0xB8, 0x02, 0xD8,  // ........
                /* 0A58 */  0xFD, 0xFF, 0x1F, 0x57, 0x80, 0xFB, 0x35, 0x00,  // ...W..5.
                /* 0A60 */  0xCE, 0x5C, 0x5E, 0x21, 0x9E, 0x1C, 0x7C, 0xB0,  // .\^!..|.
                /* 0A68 */  0x03, 0x7C, 0xDC, 0x01, 0x81, 0x3D, 0x92, 0x2F,  // .|...=./
                /* 0A70 */  0x41, 0xC0, 0xEA, 0xFF, 0x7F, 0x09, 0x02, 0xDC,  // A.......
                /* 0A78 */  0x8D, 0xC4, 0x97, 0x20, 0xC0, 0x9D, 0xE7, 0x4B,  // ... ...K
                /* 0A80 */  0x10, 0xA0, 0xE0, 0xFF, 0x7F, 0x1A, 0x80, 0x17,  // ........
                /* 0A88 */  0xE8, 0xB0, 0x8C, 0x0E, 0x78, 0x07, 0x44, 0xCE,  // ....x.D.
                /* 0A90 */  0xC6, 0x87, 0x20, 0x4C, 0xA8, 0xC3, 0x32, 0x2A,  // .. L..2*
                /* 0A98 */  0x0E, 0x8C, 0x44, 0x1F, 0x96, 0x51, 0x32, 0xEF,  // ..D..Q2.
                /* 0AA0 */  0x40, 0x14, 0xC4, 0x87, 0x65, 0x80, 0x5D, 0x77,  // @...e.]w
                /* 0AA8 */  0x20, 0xB0, 0xFE, 0xFF, 0xEF, 0xCA, 0x00, 0xFF,  //  .......
                /* 0AB0 */  0xFF, 0xFF, 0x07, 0x1B, 0xB8, 0x30, 0x0F, 0x36,  // .....0.6
                /* 0AB8 */  0x80, 0x19, 0xA9, 0x97, 0x45, 0xB4, 0xF4, 0xCB,  // ....E...
                /* 0AC0 */  0x22, 0x14, 0x94, 0xC0, 0x61, 0x0E, 0x88, 0x89,  // "...a...
                /* 0AC8 */  0xBD, 0x2C, 0xA2, 0x64, 0xC2, 0x48, 0xCC, 0x65,  // .,.d.H.e
                /* 0AD0 */  0x11, 0x75, 0x63, 0xE6, 0x20, 0xBE, 0x2C, 0x02,  // .uc. .,.
                /* 0AD8 */  0xBE, 0xFF, 0xFF, 0x27, 0x1B, 0x80, 0x19, 0x37,  // ...'...7
                /* 0AE0 */  0x17, 0x2B, 0xB9, 0x2C, 0x42, 0x4C, 0x72, 0x59,  // .+.,BLrY
                /* 0AE8 */  0x04, 0x8A, 0xBA, 0xE6, 0x06, 0x9A, 0xC3, 0x4B,  // .......K
                /* 0AF0 */  0x6D, 0xA7, 0x20, 0x10, 0xFF, 0xFF, 0x4F, 0x8B,  // m. ...O.
                /* 0AF8 */  0x00, 0xDF, 0xA0, 0x9E, 0x82, 0x00, 0x1B, 0xFF,  // ........
                /* 0B00 */  0xFF, 0xD3, 0x22, 0xD8, 0x2E, 0x41, 0x98, 0xD3,  // .."..A..
                /* 0B08 */  0x22, 0xC0, 0xE3, 0xFF, 0xFF, 0x69, 0x11, 0xE0,  // "....i..
                /* 0B10 */  0xFF, 0xFF, 0xFF, 0x60, 0x83, 0x1F, 0xD6, 0x83,  // ...`....
                /* 0B18 */  0x0D, 0x60, 0x46, 0xF7, 0x69, 0x11, 0x9D, 0xE3,  // .`F.i...
                /* 0B20 */  0xB4, 0x88, 0x40, 0x38, 0xAF, 0xA0, 0xB1, 0xBB,  // ..@8....
                /* 0B28 */  0xBE, 0x2F, 0xA2, 0xC6, 0xA4, 0xD3, 0x22, 0x4A,  // ./...."J
                /* 0B30 */  0x33, 0x8C, 0x94, 0x9D, 0x16, 0x51, 0x5A, 0x0E,  // 3....QZ.
                /* 0B38 */  0x38, 0x14, 0xC4, 0xA7, 0x45, 0xC0, 0xFD, 0xFF,  // 8...E...
                /* 0B40 */  0xFF, 0x64, 0x03, 0xB0, 0x21, 0xE5, 0xD8, 0x7C,  // .d..!..|
                /* 0B48 */  0x91, 0xA0, 0xA7, 0x45, 0x18, 0x53, 0xF4, 0xD9,  // ...E.S..
                /* 0B50 */  0xC1, 0x73, 0x03, 0x06, 0xF7, 0x17, 0xFC, 0xA0,  // .s......
                /* 0B58 */  0x5E, 0x50, 0x8A, 0x1D, 0xB3, 0xDF, 0x01, 0x3A,  // ^P.....:
                /* 0B60 */  0x34, 0xC2, 0xBC, 0x0B, 0x01, 0xA7, 0xFF, 0xFF,  // 4.......
                /* 0B68 */  0x9D, 0x11, 0x60, 0xDF, 0xE1, 0xE6, 0x5D, 0x08,  // ..`...].
                /* 0B70 */  0xF8, 0xFF, 0xFF, 0x4F, 0x03, 0x30, 0x43, 0xDD,  // ...O.0C.
                /* 0B78 */  0x19, 0x51, 0x07, 0x02, 0x87, 0xBC, 0x33, 0x22,  // .Q....3"
                /* 0B80 */  0xEE, 0x42, 0x98, 0x63, 0x23, 0x27, 0x70, 0xAC,  // .B.c#'p.
                /* 0B88 */  0x4B, 0x23, 0x2A, 0xD0, 0xA5, 0x11, 0x20, 0xEA,  // K#*... .
                /* 0B90 */  0xFF, 0xFF, 0xD2, 0x08, 0x18, 0x94, 0x76, 0xB2,  // ......v.
                /* 0B98 */  0x41, 0x89, 0x39, 0xD9, 0x50, 0x10, 0xCF, 0xC9,  // A.9.P...
                /* 0BA0 */  0x41, 0x4F, 0x36, 0x50, 0xA3, 0x5D, 0x1A, 0x81,  // AO6P.]..
                /* 0BA8 */  0xAA, 0xC8, 0x93, 0x0D, 0x68, 0xAF, 0x22, 0xC7,  // ....h.".
                /* 0BB0 */  0x54, 0x33, 0x82, 0x4E, 0x36, 0x2F, 0xEA, 0x85,  // T3.N6/..
                /* 0BB8 */  0x1D, 0x6D, 0x80, 0xD4, 0xFF, 0xFF, 0x68, 0x03,  // .m....h.
                /* 0BC0 */  0x96, 0xC3, 0xCA, 0xA3, 0x0D, 0x60, 0x46, 0xFB,  // .....`F.
                /* 0BC8 */  0xAD, 0x11, 0x25, 0x09, 0x42, 0x59, 0x6E, 0x8D,  // ..%.BYn.
                /* 0BD0 */  0x90, 0xC7, 0xFC, 0xB2, 0x64, 0xB4, 0xF7, 0x46,  // ....d..F
                /* 0BD8 */  0x80, 0x07, 0xFF, 0xFF, 0x7B, 0x23, 0xC0, 0xFF,  // ....{#..
                /* 0BE0 */  0xFF, 0xFF, 0xBD, 0x11, 0xE0, 0x26, 0xD6, 0xDB,  // .....&..
                /* 0BE8 */  0x10, 0x30, 0xFC, 0xFF, 0xDF, 0x86, 0xC0, 0x7B,  // .0.....{
                /* 0BF0 */  0xF7, 0xF1, 0x6D, 0x88, 0x4B, 0x81, 0x90, 0xD2,  // ..m.K...
                /* 0BF8 */  0xD7, 0x82, 0x06, 0x7C, 0x5E, 0x7D, 0x9E, 0x1A,  // ...|^}..
                /* 0C00 */  0x11, 0x47, 0x09, 0x5F, 0x25, 0x74, 0x5D, 0xA4,  // .G._%t].
                /* 0C08 */  0xA7, 0x06, 0x2B, 0xA3, 0x90, 0x92, 0xD3, 0x03,  // ..+.....
                /* 0C10 */  0x2A, 0xFB, 0xE1, 0x85, 0x82, 0x18, 0xD0, 0xC7,  // *.......
                /* 0C18 */  0x06, 0x2B, 0xB9, 0xDE, 0xA0, 0x87, 0x73, 0x34,  // .+....s4
                /* 0C20 */  0x07, 0xF4, 0xD6, 0xE0, 0x24, 0x47, 0x21, 0xA0,  // ....$G!.
                /* 0C28 */  0xA8, 0xEB, 0x04, 0x02, 0x9A, 0x8B, 0xC3, 0x43,  // .......C
                /* 0C30 */  0xD9, 0x1B, 0x08, 0xF0, 0x90, 0x33, 0x69, 0xD4,  // .....3i.
                /* 0C38 */  0x9E, 0x3D, 0x69, 0x53, 0x78, 0xD2, 0x0E, 0x77,  // .=iSx..w
                /* 0C40 */  0xEF, 0x41, 0xDF, 0x0E, 0x7C, 0x99, 0xC1, 0x10,  // .A..|...
                /* 0C48 */  0x0C, 0x73, 0x05, 0x01, 0x02, 0xFF, 0xFF, 0x2B,  // .s.....+
                /* 0C50 */  0x08, 0x58, 0x6E, 0x49, 0xE0, 0xBB, 0x7C, 0x00,  // .XnI..|.
                /* 0C58 */  0xEF, 0x21, 0xFA, 0xF2, 0x01, 0x78, 0x89, 0xFB,  // .!...x..
                /* 0C60 */  0x48, 0xD0, 0xE5, 0x03, 0x17, 0xFF, 0x15, 0xA0,  // H.......
                /* 0C68 */  0xCB, 0x07, 0xBB, 0xD7, 0x61, 0xC6, 0xEF, 0xD0,  // ....a...
                /* 0C70 */  0x27, 0x06, 0x0A, 0xE1, 0xB8, 0x14, 0x0A, 0x7B,  // '......{
                /* 0C78 */  0x70, 0x40, 0xC5, 0x83, 0xA3, 0x20, 0x1E, 0xB4,  // p@... ..
                /* 0C80 */  0xE3, 0x5D, 0x3E, 0xD0, 0x23, 0xF3, 0xE5, 0x03,  // .]>.#...
                /* 0C88 */  0x43, 0x30, 0xCE, 0xC1, 0x01, 0xDA, 0xE9, 0x83,  // C0......
                /* 0C90 */  0x41, 0xFB, 0xFF, 0x7F, 0x70, 0x00, 0x16, 0x77,  // A...p..w
                /* 0C98 */  0x26, 0x72, 0xFE, 0x00, 0xD9, 0x39, 0x03, 0xCC,  // &r...9..
                /* 0CA0 */  0xE3, 0x03, 0x3E, 0xE7, 0x0C, 0xC0, 0x13, 0xCA,  // ..>.....
                /* 0CA8 */  0x73, 0x06, 0x70, 0xFA, 0xFF, 0x9F, 0x33, 0x80,  // s.p...3.
                /* 0CB0 */  0x85, 0xB6, 0x3B, 0x13, 0x5A, 0xEB, 0x9D, 0x09,  // ..;.Z...
                /* 0CB8 */  0xC2, 0x6D, 0x81, 0x29, 0xBC, 0x33, 0xA1, 0xB4,  // .m.).3..
                /* 0CC0 */  0xDD, 0x99, 0x00, 0x52, 0x08, 0x9A, 0x34, 0xEA,  // ...R..4.
                /* 0CC8 */  0xB0, 0xE8, 0x49, 0x1B, 0xC4, 0x93, 0xF6, 0x5D,  // ..I....]
                /* 0CD0 */  0x05, 0xCE, 0xE5, 0x03, 0x77, 0x57, 0x81, 0x77,  // ....wW.w
                /* 0CD8 */  0x67, 0x82, 0xFB, 0xFF, 0xBF, 0x7C, 0x80, 0xF7,  // g....|..
                /* 0CE0 */  0xAE, 0x02, 0xBE, 0xDB, 0x07, 0xF0, 0x1E, 0xE5,  // ........
                /* 0CE8 */  0xDB, 0x07, 0x60, 0x26, 0xF2, 0xA5, 0x09, 0x05,  // ..`&....
                /* 0CF0 */  0x6B, 0x09, 0xB7, 0x0F, 0xC4, 0xA5, 0x09, 0x73,  // k......s
                /* 0CF8 */  0x00, 0xE0, 0xB1, 0x6F, 0x4D, 0xA8, 0xC0, 0x14,  // ...oM...
                /* 0D00 */  0xBA, 0x36, 0xF9, 0xE8, 0xC0, 0x03, 0xC2, 0x51,  // .6.....Q
                /* 0D08 */  0x10, 0xDF, 0x9A, 0xC0, 0xF7, 0xFF, 0xBF, 0x35,  // .......5
                /* 0D10 */  0x01, 0x3E, 0x4E, 0x1A, 0xE0, 0xBD, 0x35, 0x01,  // .>N...5.
                /* 0D18 */  0xA7, 0x93, 0x06, 0xE0, 0xC9, 0xF8, 0x49, 0x03,  // ......I.
                /* 0D20 */  0xD4, 0xFF, 0xFF, 0x6B, 0x13, 0x60, 0xE0, 0x24,  // ...k.`.$
                /* 0D28 */  0xCC, 0xAE, 0x4D, 0x00, 0x83, 0x9C, 0x5C, 0x9B,  // ..M...\.
                /* 0D30 */  0x40, 0xFA, 0xFF, 0xBF, 0x36, 0x01, 0xF3, 0xE3,  // @...6...
                /* 0D38 */  0x02, 0xBB, 0x7D, 0x00, 0xF3, 0x61, 0xBE, 0x36,  // ..}..a.6
                /* 0D40 */  0x01, 0xF6, 0x0E, 0x00, 0xFC, 0xDA, 0x04, 0xF6,  // ........
                /* 0D48 */  0xFF, 0xFF, 0xB5, 0x09, 0xB0, 0x75, 0xD2, 0x00,  // .....u..
                /* 0D50 */  0xE7, 0xB5, 0x09, 0xB8, 0x9F, 0x34, 0x80, 0xFF,  // .....4..
                /* 0D58 */  0x38, 0x9F, 0x34, 0xE0, 0xFF, 0xFF, 0x4F, 0x1A,  // 8.4...O.
                /* 0D60 */  0xC0, 0x5C, 0xE0, 0x49, 0x03, 0x75, 0x08, 0xB0,  // .\.I.u..
                /* 0D68 */  0xE0, 0x43, 0x37, 0xB9, 0x02, 0xD8, 0xE3, 0x10,  // .C7.....
                /* 0D70 */  0x09, 0x4C, 0xF0, 0xC0, 0x51, 0xCE, 0xF2, 0x38,  // .L..Q..8
                /* 0D78 */  0x0D, 0x5E, 0xE1, 0x94, 0x34, 0x86, 0x40, 0xE7,  // .^..4.@.
                /* 0D80 */  0x7D, 0x50, 0x11, 0xDE, 0x4F, 0x0C, 0xAE, 0xF3,  // }P..O...
                /* 0D88 */  0x06, 0x4A, 0x12, 0x85, 0x4E, 0x3E, 0x80, 0xA3,  // .J..N>..
                /* 0D90 */  0xF3, 0x06, 0xB8, 0x0E, 0x10, 0xC0, 0xF0, 0xFF,  // ........
                /* 0D98 */  0x7F, 0x80, 0x80, 0x2D, 0xFE, 0x00, 0x01, 0xA8,  // ...-....
                /* 0DA0 */  0x51, 0xB9, 0x44, 0x5D, 0xE3, 0x70, 0xAA, 0xDF,  // Q.D].p..
                /* 0DA8 */  0x07, 0x3A, 0x40, 0xB0, 0x6B, 0x1C, 0xBF, 0x9B,  // .:@.k...
                /* 0DB0 */  0xFB, 0x32, 0x27, 0x30, 0x5D, 0xE3, 0xB8, 0x4A,  // .2'0]..J
                /* 0DB8 */  0x18, 0xA9, 0x5A, 0xAE, 0x4E, 0x0E, 0x5C, 0x07,  // ..Z.N.\.
                /* 0DC0 */  0x8C, 0xE0, 0x0C, 0xE2, 0x61, 0x3B, 0xD6, 0xA9,  // ....a;..
                /* 0DC8 */  0x1E, 0x3D, 0x26, 0x2B, 0xBE, 0x13, 0xE8, 0x08,  // .=&+....
                /* 0DD0 */  0xE2, 0x20, 0xC7, 0x38, 0xA0, 0x78, 0xA4, 0x07,  // . .8.x..
                /* 0DD8 */  0x57, 0xB6, 0xB1, 0xA1, 0x8F, 0x49, 0xD6, 0x8C,  // W....I..
                /* 0DE0 */  0x28, 0xC0, 0xA3, 0x39, 0x17, 0xCC, 0xEC, 0xE0,  // (..9....
                /* 0DE8 */  0xFF, 0xFF, 0x67, 0x07, 0xFE, 0xFB, 0x3F, 0xF8,  // ..g...?.
                /* 0DF0 */  0x92, 0xCD, 0x0E, 0xAD, 0xE3, 0x46, 0x42, 0x46,  // .....FBF
                /* 0DF8 */  0x53, 0x3B, 0xA4, 0x66, 0xF3, 0xC8, 0xE0, 0xC9,  // S;.f....
                /* 0E00 */  0x01, 0xBF, 0x23, 0x83, 0x27, 0x07, 0xAE, 0x68,  // ..#.'..h
                /* 0E08 */  0xA7, 0x2F, 0xF4, 0xE4, 0x3C, 0x91, 0x57, 0x81,  // ./..<.W.
                /* 0E10 */  0x08, 0xEF, 0x34, 0xBE, 0x4C, 0x02, 0x47, 0x24,  // ..4.L.G$
                /* 0E18 */  0x5F, 0x26, 0x81, 0xD7, 0xFF, 0xFF, 0x32, 0x09,  // _&....2.
                /* 0E20 */  0x57, 0xCE, 0x1D, 0x08, 0xF5, 0x54, 0xF0, 0x59,  // W....T.Y
                /* 0E28 */  0xC1, 0x14, 0xBE, 0x00, 0x38, 0xDC, 0x11, 0x01,  // ....8...
                /* 0E30 */  0x7D, 0x07, 0xC2, 0x87, 0xB9, 0x03, 0x01, 0xCD,  // }.......
                /* 0E38 */  0x91, 0xF8, 0x8E, 0x00, 0xAE, 0x2B, 0x10, 0xF0,  // .....+..
                /* 0E40 */  0x36, 0x7F, 0x05, 0x02, 0xB4, 0xFC, 0xFF, 0x87,  // 6.......
                /* 0E48 */  0x4C, 0xAE, 0x40, 0x68, 0x61, 0x57, 0x20, 0xC4,  // L.@haW .
                /* 0E50 */  0x5D, 0x12, 0x33, 0x7E, 0xCB, 0xB9, 0x02, 0x51,  // ].3~...Q
                /* 0E58 */  0x08, 0x0B, 0x81, 0x91, 0x0C, 0x08, 0x1D, 0x1C,  // ........
                /* 0E60 */  0x78, 0xF0, 0x2B, 0x10, 0x05, 0xF1, 0xF5, 0xC2,  // x.+.....
                /* 0E68 */  0xB7, 0x0F, 0x5F, 0x81, 0xE0, 0x9D, 0x1B, 0xE0,  // .._.....
                /* 0E70 */  0xDD, 0x24, 0x81, 0xD3, 0xB9, 0x01, 0x5C, 0x01,  // .$....\.
                /* 0E78 */  0x47, 0x87, 0x1E, 0xB3, 0x2F, 0x41, 0x30, 0x06,  // G.../A0.
                /* 0E80 */  0x08, 0x4C, 0xCF, 0x41, 0xE0, 0xBB, 0xE8, 0x79,  // .L.A...y
                /* 0E88 */  0x80, 0x38, 0x60, 0x9F, 0x83, 0xB0, 0xE3, 0x83,  // .8`.....
                /* 0E90 */  0xF1, 0xFF, 0x1F, 0x1F, 0xF0, 0xBA, 0x09, 0x81,  // ........
                /* 0E98 */  0xEF, 0x3C, 0xE0, 0x9B, 0x10, 0x0E, 0xD8, 0x37,  // .<.....7
                /* 0EA0 */  0x21, 0xEC, 0x45, 0x15, 0x98, 0x42, 0xF9, 0x5E,  // !.E..B.^
                /* 0EA8 */  0x0B, 0xBE, 0x43, 0x0F, 0x78, 0xC7, 0x07, 0x7C,  // ..C.x..|
                /* 0EB0 */  0x0E, 0x3D, 0xE0, 0xFB, 0xFF, 0x1F, 0x7A, 0x80,  // .=....z.
                /* 0EB8 */  0xB7, 0xFA, 0x43, 0x0F, 0xA0, 0x46, 0xE7, 0xA1,  // ..C..F..
                /* 0EC0 */  0x07, 0xAD, 0xFB, 0x1A, 0x09, 0xE1, 0xB6, 0xC0,  // ........
                /* 0EC8 */  0xD4, 0x5E, 0x23, 0x51, 0x3A, 0xAF, 0x91, 0x80,  // .^#Q:...
                /* 0ED0 */  0xB6, 0xFF, 0xFF, 0x35, 0x12, 0xE0, 0xFF, 0xFF,  // ...5....
                /* 0ED8 */  0xFF, 0x1A, 0x09, 0xAC, 0x8F, 0xE6, 0xF0, 0x67,  // .......g
                /* 0EE0 */  0x8D, 0x3B, 0x9A, 0x03, 0xEF, 0x91, 0xF8, 0xC6,  // .;......
                /* 0EE8 */  0x04, 0xBE, 0x3B, 0x10, 0xF0, 0x76, 0x7F, 0x07,  // ..;..v..
                /* 0EF0 */  0x02, 0xF1, 0xFF, 0xFF, 0x0E, 0x04, 0x0C, 0xC5,  // ........
                /* 0EF8 */  0xDC, 0x81, 0x50, 0xB0, 0x16, 0x77, 0x8F, 0x84,  // ..P..w..
                /* 0F00 */  0x72, 0x00, 0xE0, 0x82, 0x2E, 0x92, 0x28, 0x29,  // r.....()
                /* 0F08 */  0x30, 0xBA, 0x49, 0xFA, 0xE8, 0xC0, 0xA3, 0x5F,  // 0.I...._
                /* 0F10 */  0x82, 0x28, 0x88, 0x2F, 0x92, 0x00, 0x93, 0xFE,  // .(./....
                /* 0F18 */  0xFF, 0x17, 0x49, 0x80, 0xA9, 0xC7, 0x1E, 0xF0,  // ..I.....
                /* 0F20 */  0x8E, 0x0F, 0xF6, 0xFF, 0xFF, 0xD8, 0x03, 0xD8,  // ........
                /* 0F28 */  0x95, 0x7F, 0x93, 0x04, 0xE4, 0x39, 0x13, 0xA0,  // .....9..
                /* 0F30 */  0xEC, 0x26, 0x09, 0x04, 0xFF, 0xFF, 0x37, 0x49,  // .&....7I
                /* 0F38 */  0x80, 0xFF, 0xFF, 0xFF, 0x9B, 0x24, 0xE0, 0xDE,  // .....$..
                /* 0F40 */  0xC9, 0x4D, 0x12, 0xD0, 0x75, 0x68, 0x61, 0x77,  // .M..uhaw
                /* 0F48 */  0x20, 0x60, 0xF3, 0xFF, 0xBF, 0x03, 0x81, 0xCB,  //  `......
                /* 0F50 */  0xFE, 0x4D, 0x12, 0xD0, 0x77, 0x00, 0xE0, 0x37,  // .M..w..7
                /* 0F58 */  0x49, 0x80, 0x0B, 0xFF, 0xFF, 0x9B, 0x24, 0xC0,  // I.....$.
                /* 0F60 */  0xFF, 0xFF, 0xFF, 0x4D, 0x12, 0xCE, 0xB1, 0x07,  // ...M....
                /* 0F68 */  0x9C, 0x37, 0x49, 0xE0, 0x7E, 0xEC, 0x01, 0xFE,  // .7I.~...
                /* 0F70 */  0xFA, 0x8F, 0x3D, 0x80, 0x9A, 0x6C, 0x2F, 0x1C,  // ..=..l/.
                /* 0F78 */  0x1D, 0x7B, 0xF8, 0x59, 0xC0, 0x59, 0x97, 0xA9,  // .{.Y.Y..
                /* 0F80 */  0x9B, 0x24, 0xEE, 0xFF, 0x7F, 0x93, 0x64, 0x0A,  // .$....d.
                /* 0F88 */  0x07, 0x42, 0x4E, 0x39, 0x4E, 0x07, 0xA8, 0xBB,  // .BN9N...
                /* 0F90 */  0x24, 0xCF, 0x05, 0xA3, 0x14, 0xE7, 0x1E, 0xD4,  // $.......
                /* 0F98 */  0xC5, 0xD2, 0x70, 0x06, 0xB1, 0x87, 0xBB, 0x24,  // ..p....$
                /* 0FA0 */  0x40, 0xE3, 0xFF, 0xFF, 0x5D, 0x12, 0xE0, 0x40,  // @...]..@
                /* 0FA8 */  0xB0, 0x9B, 0x00, 0xFA, 0x34, 0xE2, 0xC9, 0xBC,  // ....4...
                /* 0FB0 */  0xEC, 0x78, 0x34, 0x27, 0xE7, 0x93, 0x00, 0xF0,  // .x4'....
                /* 0FB8 */  0x1B, 0x87, 0x4F, 0x02, 0xE0, 0x1A, 0x1C, 0x9C,  // ..O.....
                /* 0FC0 */  0x93, 0x4B, 0xC0, 0xD7, 0x86, 0xC7, 0x1A, 0x0F,  // .K......
                /* 0FC8 */  0x0E, 0x6C, 0xFF, 0xFF, 0xC1, 0x81, 0xF3, 0xDC,  // .l......
                /* 0FD0 */  0xC3, 0x07, 0x07, 0x9E, 0x3B, 0x2A, 0x60, 0x7A,  // ....;*`z
                /* 0FD8 */  0xE4, 0xBE, 0x5D, 0x01, 0x9E, 0xFC, 0xC3, 0x92,  // ..].....
                /* 0FE0 */  0xFF, 0xFF, 0xED, 0x0A, 0xB0, 0x12, 0xE4, 0x76,  // .......v
                /* 0FE8 */  0x85, 0xE2, 0x70, 0xB0, 0xDB, 0x15, 0xE2, 0x8E,  // ..p.....
                /* 0FF0 */  0x8A, 0x3D, 0x5E, 0x61, 0xA0, 0x75, 0xBD, 0xA2,  // .=^a.u..
                /* 0FF8 */  0x10, 0x8E, 0x00, 0xA3, 0x00, 0x10, 0x3A, 0x3C,  // ......:<
                /* 1000 */  0x70, 0xC9, 0x70, 0x14, 0xC4, 0x23, 0xF2, 0x2D,  // p.p..#.-
                /* 1008 */  0x15, 0x60, 0xC2, 0xFF, 0xFF, 0x96, 0x0A, 0xB0,  // .`......
                /* 1010 */  0x3C, 0xDC, 0x45, 0x0B, 0xE2, 0xFF, 0xFF, 0xA2,  // <.E.....
                /* 1018 */  0xC5, 0x8E, 0x03, 0xC0, 0xF3, 0xAA, 0x05, 0xBE,  // ........
                /* 1020 */  0xE1, 0xC1, 0xB9, 0x6A, 0xE1, 0x86, 0x07, 0x3C,  // ...j...<
                /* 1028 */  0x2F, 0x5B, 0xE0, 0xBB, 0x01, 0x03, 0x1E, 0x0E,  // /[......
                /* 1030 */  0x55, 0x60, 0xF8, 0xFF, 0x1F, 0xAA, 0x00, 0x13,  // U`......
                /* 1038 */  0x01, 0x0E, 0x55, 0x80, 0x1A, 0x65, 0x0B, 0xD4,  // ..U..e..
                /* 1040 */  0xA1, 0x8A, 0x1F, 0x87, 0xAC, 0xF4, 0x01, 0xA3,  // ........
                /* 1048 */  0xE1, 0x1A, 0xE2, 0x0D, 0x98, 0xDF, 0x16, 0x7C,  // .......|
                /* 1050 */  0xD5, 0x13, 0x98, 0xEE, 0xBF, 0x5C, 0x19, 0x85,  // .....\..
                /* 1058 */  0x94, 0x9C, 0xEE, 0x50, 0xD9, 0x4F, 0x3F, 0x14,  // ...P.O?.
                /* 1060 */  0xC4, 0x80, 0xBE, 0x21, 0xFA, 0xE4, 0x80, 0x53,  // ...!...S
                /* 1068 */  0x01, 0xA2, 0x29, 0x18, 0xE1, 0x84, 0xDE, 0x3C,  // ..)....<
                /* 1070 */  0x81, 0x21, 0x81, 0x6F, 0x9E, 0xFE, 0xFF, 0x5F,  // .!.o..._
                /* 1078 */  0x1B, 0xC0, 0x74, 0x43, 0x04, 0x16, 0x72, 0x26,  // ..tC..r&
                /* 1080 */  0x8D, 0xDA, 0xB3, 0x27, 0x6D, 0x0A, 0x4F, 0xDA,  // ...'m.O.
                /* 1088 */  0x77, 0x15, 0x38, 0xB7, 0x0F, 0xDC, 0x5D, 0x05,  // w.8...].
                /* 1090 */  0xDE, 0x0D, 0x11, 0xF8, 0x5C, 0xB3, 0xC0, 0x77,  // ....\..w
                /* 1098 */  0xF9, 0x00, 0xDE, 0x09, 0x2E, 0x1F, 0x40, 0xE1,  // ......@.
                /* 10A0 */  0xFF, 0x7F, 0xF9, 0x00, 0x5E, 0x71, 0x1F, 0x09,  // ....^q..
                /* 10A8 */  0xBA, 0x7C, 0xE0, 0xE2, 0xBF, 0x02, 0x74, 0xF9,  // .|....t.
                /* 10B0 */  0x60, 0x17, 0x44, 0xCC, 0xF8, 0x1D, 0xFA, 0xC4,  // `.D.....
                /* 10B8 */  0x40, 0x21, 0x1C, 0x97, 0x42, 0x61, 0x0F, 0x0E,  // @!..Ba..
                /* 10C0 */  0xA8, 0x78, 0x70, 0x14, 0xC4, 0x83, 0xF6, 0x2D,  // .xp....-
                /* 10C8 */  0x08, 0xCE, 0xE5, 0x03, 0x73, 0x0B, 0x02, 0xA6,  // ....s...
                /* 10D0 */  0x04, 0xBE, 0x05, 0x81, 0xEF, 0x9C, 0x01, 0xDE,  // ........
                /* 10D8 */  0xDB, 0x21, 0xF0, 0xFB, 0xFF, 0x9F, 0x33, 0x00,  // .!....3.
                /* 10E0 */  0x2F, 0x0D, 0xCE, 0x19, 0x80, 0x1A, 0x6D, 0x77,  // /.....mw
                /* 10E8 */  0x26, 0xB4, 0xD6, 0x3B, 0x13, 0x84, 0xE3, 0x20,  // &..;... 
                /* 10F0 */  0x53, 0x78, 0x67, 0x42, 0x69, 0xBB, 0x33, 0x01,  // SxgBi.3.
                /* 10F8 */  0x5A, 0xFE, 0xFF, 0x77, 0x26, 0x60, 0x7F, 0x4A,  // Z..w&`.J
                /* 1100 */  0x87, 0x7F, 0x1A, 0xC5, 0x9D, 0xD2, 0x81, 0xF7,  // ........
                /* 1108 */  0xA8, 0x7C, 0x18, 0x05, 0xDF, 0xED, 0x03, 0x78,  // .|.....x
                /* 1110 */  0x47, 0xB8, 0x7D, 0x80, 0xF0, 0xFF, 0x7F, 0xFB,  // G.}.....
                /* 1118 */  0x00, 0xA6, 0x91, 0x2F, 0x4D, 0x28, 0x58, 0x4B,  // .../M(XK
                /* 1120 */  0xB8, 0x7D, 0x20, 0x2E, 0x4D, 0x98, 0x03, 0x00,  // .} .M...
                /* 1128 */  0x8F, 0x7D, 0x6B, 0x42, 0x05, 0xA6, 0xD0, 0xB5,  // .}kB....
                /* 1130 */  0xC9, 0x47, 0x07, 0x1E, 0x10, 0x8E, 0x82, 0xF8,  // .G......
                /* 1138 */  0xD6, 0x04, 0xF8, 0x3B, 0x69, 0x80, 0x77, 0x7C,  // ...;i.w|
                /* 1140 */  0xC0, 0xE4, 0xFF, 0x7F, 0xD2, 0x00, 0x8C, 0x55,  // .......U
                /* 1148 */  0xB8, 0x36, 0x01, 0xF2, 0xAE, 0x0B, 0xEC, 0xDA,  // .6......
                /* 1150 */  0x04, 0x98, 0xF8, 0xFF, 0x5F, 0x9B, 0x00, 0x6F,  // ...._..o
                /* 1158 */  0xF7, 0x70, 0x70, 0x5E, 0x9B, 0x80, 0xFB, 0x3D,  // .pp^...=
                /* 1160 */  0x1C, 0xF8, 0x67, 0xB8, 0x7D, 0x40, 0xFB, 0xFF,  // ..g.}@..
                /* 1168 */  0x5F, 0x9B, 0x00, 0x4F, 0x07, 0x00, 0x7E, 0x6D,  // _..O..~m
                /* 1170 */  0x02, 0x5C, 0x9F, 0x34, 0xC0, 0x39, 0x3E, 0xF0,  // .\.4.9>.
                /* 1178 */  0xFD, 0xFF, 0x4F, 0x1A, 0x80, 0xCB, 0x0E, 0x27,  // ..O....'
                /* 1180 */  0x0D, 0x40, 0x4D, 0x9E, 0xB7, 0x81, 0x4E, 0x1A,  // .@M...N.
                /* 1188 */  0xFC, 0x2C, 0xE0, 0x7C, 0x8B, 0xD4, 0xB5, 0x09,  // .,.|....
                /* 1190 */  0x86, 0xC2, 0x81, 0x90, 0x11, 0x24, 0x98, 0x08,  // .....$..
                /* 1198 */  0x50, 0x17, 0x27, 0x9E, 0x05, 0x46, 0xCA, 0x49,  // P.'..F.I
                /* 11A0 */  0x74, 0xD4, 0xE0, 0xB7, 0x28, 0xC3, 0x19, 0xC4,  // t...(...
                /* 11A8 */  0x27, 0x06, 0x5F, 0x9C, 0xC0, 0xFD, 0xFF, 0xBF,  // '._.....
                /* 11B0 */  0x38, 0x01, 0xE7, 0xC1, 0xF9, 0xCC, 0x8D, 0x9F,  // 8.......
                /* 11B8 */  0xCC, 0x6B, 0x86, 0x47, 0xF3, 0x60, 0xE4, 0x20,  // .k.G.`. 
                /* 11C0 */  0x93, 0x03, 0x7A, 0x27, 0x6E, 0xF0, 0x0D, 0x0E,  // ..z'n...
                /* 11C8 */  0xCE, 0x99, 0x21, 0xE0, 0x83, 0xC0, 0x03, 0x85,  // ..!.....
                /* 11D0 */  0x07, 0x07, 0x0C, 0x4F, 0x0C, 0x1E, 0x1C, 0xB8,  // ...O....
                /* 11D8 */  0x2E, 0x64, 0xE0, 0xFA, 0xFF, 0x5F, 0xC8, 0x00,  // .d..._..
                /* 11E0 */  0x7B, 0x50, 0xBE, 0xD7, 0x00, 0x9E, 0x42, 0xDC,  // {P....B.
                /* 11E8 */  0x6B, 0x00, 0x29, 0xFF, 0x7F, 0x02, 0x26, 0xF7,  // k.)...&.
                /* 11F0 */  0x5E, 0x83, 0xE2, 0xB0, 0xFC, 0x7B, 0x0D, 0xE2,  // ^....{..
                /* 11F8 */  0x42, 0x86, 0x3D, 0xD8, 0x60, 0xA0, 0x75, 0xB1,  // B.=.`.u.
                /* 1200 */  0xA1, 0x10, 0x16, 0x0A, 0x23, 0x99, 0x10, 0x3A,  // ....#..:
                /* 1208 */  0x3C, 0x70, 0x61, 0x70, 0x14, 0xC4, 0x23, 0xF7,  // <pap..#.
                /* 1210 */  0x95, 0x0C, 0x70, 0x17, 0xEE, 0x6E, 0x03, 0x3D,  // ..p..n.=
                /* 1218 */  0xCC, 0x95, 0x0C, 0xA8, 0xDE, 0x58, 0xC0, 0x35,  // .....X.5
                /* 1220 */  0x3C, 0x38, 0xB7, 0x1B, 0xDC, 0xF0, 0xD8, 0xFF,  // <8......
                /* 1228 */  0x7F, 0x78, 0xC0, 0xF0, 0x7E, 0x03, 0xBE, 0xEB,  // .x..~...
                /* 1230 */  0x1E, 0xE0, 0xE1, 0x1C, 0x03, 0xB8, 0x2A, 0x71,  // ......*q
                /* 1238 */  0x8E, 0x01, 0xF1, 0xFF, 0xFF, 0x1C, 0x03, 0x0C,  // ........
                /* 1240 */  0xC5, 0xDD, 0x53, 0x51, 0xA2, 0x20, 0x24, 0xF6,  // ..SQ. $.
                /* 1248 */  0x89, 0xA1, 0x23, 0xCC, 0xC9, 0xF6, 0x39, 0x60,  // ..#...9`
                /* 1250 */  0x81, 0x9F, 0xF6, 0x61, 0x7B, 0xC4, 0x47, 0x1D,  // ...a{.G.
                /* 1258 */  0xE3, 0xCC, 0x3C, 0xA2, 0x73, 0xAE, 0x7D, 0x70,  // ..<.s.}p
                /* 1260 */  0xF4, 0x40, 0xA0, 0xBB, 0x2A, 0x4A, 0x12, 0x85,  // .@..*J..
                /* 1268 */  0x4E, 0x55, 0xE0, 0x9B, 0xC2, 0x59, 0x9E, 0xF0,  // NU...Y..
                /* 1270 */  0x9B, 0xC1, 0xE1, 0xF9, 0x54, 0x05, 0x3C, 0x4F,  // ....T.<O
                /* 1278 */  0x32, 0xE0, 0x3C, 0x3E, 0x00, 0xEF, 0x7C, 0x02,  // 2.<>..|.
                /* 1280 */  0xFE, 0xFF, 0xC7, 0x07, 0xC0, 0x8C, 0xA8, 0x5B,  // .......[
                /* 1288 */  0x33, 0x5A, 0xE4, 0x51, 0x41, 0x97, 0x07, 0xAB,  // 3Z.QA...
                /* 1290 */  0x14, 0xE0, 0x71, 0x88, 0x64, 0xBA, 0x2F, 0x2D,  // ..q.d./-
                /* 1298 */  0xF6, 0x3C, 0x0E, 0x72, 0x74, 0x00, 0x9F, 0x92,  // .<.rt...
                /* 12A0 */  0xA3, 0x03, 0xA0, 0xCB, 0x98, 0x00, 0x6D, 0x47,  // ......mG
                /* 12A8 */  0x07, 0xA0, 0xF5, 0xFF, 0x3F, 0x3A, 0x80, 0x25,  // ....?:.%
                /* 12B0 */  0xEE, 0xD1, 0x01, 0x50, 0x23, 0xE9, 0xE8, 0x80,  // ...P#...
                /* 12B8 */  0x96, 0x78, 0x74, 0x40, 0x8B, 0x9C, 0x87, 0x66,  // .xt@...f
                /* 12C0 */  0xC8, 0x86, 0xA1, 0xA3, 0x03, 0xEA, 0xE4, 0x60,  // .......`
                /* 12C8 */  0x39, 0x47, 0x07, 0x14, 0x95, 0xC1, 0x4C, 0xE1,  // 9G....L.
                /* 12D0 */  0xA3, 0x83, 0x0F, 0x60, 0x70, 0x8E, 0x0E, 0xB8,  // ...`p...
                /* 12D8 */  0x03, 0x18, 0xBC, 0xA3, 0x03, 0x70, 0x3A, 0x80,  // .....p:.
                /* 12E0 */  0x81, 0xEB, 0xE4, 0x00, 0xB6, 0xFF, 0xFF, 0xC9,  // ........
                /* 12E8 */  0x01, 0x98, 0xD4, 0x3D, 0x39, 0x00, 0x6A, 0x04,  // ...=9.j.
                /* 12F0 */  0x9D, 0x1C, 0x50, 0x52, 0x46, 0xEE, 0x93, 0x82,  // ..PRF...
                /* 12F8 */  0x66, 0xEB, 0x23, 0x55, 0x8C, 0x90, 0x67, 0x53,  // f.#U..gS
                /* 1300 */  0xF1, 0xC8, 0xC8, 0xC1, 0x01, 0x58, 0x9E, 0x32,  // .....X.2
                /* 1308 */  0x81, 0xD3, 0xC1, 0x01, 0xCC, 0xFF, 0xFF, 0x83,  // ........
                /* 1310 */  0x03, 0x30, 0xCD, 0x7C, 0x82, 0x01, 0x74, 0x1D,  // .0.|..t.
                /* 1318 */  0x1C, 0xD8, 0x09, 0x86, 0xCD, 0xF1, 0x10, 0x3D,  // .......=
                /* 1320 */  0x0D, 0x9F, 0x60, 0x00, 0x9F, 0xFF, 0xFF, 0x93,  // ..`.....
                /* 1328 */  0x03, 0x60, 0xA3, 0xF3, 0xC9, 0x01, 0x90, 0x76,  // .`.....v
                /* 1330 */  0xBD, 0xF4, 0xC9, 0x01, 0x18, 0x1F, 0x61, 0x80,  // ......a.
                /* 1338 */  0xC5, 0xFF, 0xFF, 0xE4, 0x00, 0x18, 0x0B, 0x7D,  // .......}
                /* 1340 */  0x84, 0x01, 0xD4, 0x9D, 0xE9, 0x00, 0x23, 0xFF,  // ......#.
                /* 1348 */  0xFF, 0x93, 0x03, 0x60, 0xB5, 0xF4, 0x31, 0x17,  // ...`..1.
                /* 1350 */  0xD0, 0x74, 0x14, 0xF0, 0x31, 0xD7, 0x56, 0x07,  // .t..1.V.
                /* 1358 */  0xAB, 0x31, 0x3E, 0xE6, 0xE2, 0x20, 0x1E, 0x01,  // .1>.. ..
                /* 1360 */  0x4E, 0xE0, 0xD1, 0x01, 0x18, 0xFE, 0xFF, 0x8F,  // N.......
                /* 1368 */  0x0E, 0x80, 0xFD, 0xE0, 0x47, 0x07, 0x40, 0xDA,  // ....G.@.
                /* 1370 */  0x61, 0x8A, 0x1D, 0x1D, 0x80, 0xC5, 0xFF, 0xFF,  // a.......
                /* 1378 */  0x34, 0x05, 0xB0, 0xA4, 0xF8, 0x69, 0x0A, 0xD0,  // 4....i..
                /* 1380 */  0x75, 0x88, 0xC1, 0x9D, 0xA6, 0x60, 0xFF, 0xFF,  // u....`..
                /* 1388 */  0xCF, 0x30, 0x00, 0x93, 0x92, 0x9F, 0x1C, 0x00,  // .0......
                /* 1390 */  0x35, 0x02, 0x17, 0xA8, 0x93, 0x03, 0xE7, 0xB0,  // 5.......
                /* 1398 */  0xE0, 0x87, 0x82, 0x74, 0x4E, 0x5A, 0xC3, 0xFD,  // ...tNZ..
                /* 13A0 */  0xFF, 0x3F, 0x39, 0x30, 0x94, 0x53, 0x8C, 0xED,  // .?90.S..
                /* 13A8 */  0xC1, 0x45, 0xAE, 0x19, 0x5C, 0xD0, 0x04, 0x52,  // .E..\..R
                /* 13B0 */  0x87, 0x06, 0x9F, 0x19, 0x2C, 0x8D, 0x42, 0x42,  // ....,.BB
                /* 13B8 */  0xCE, 0x0E, 0xA8, 0xE8, 0x27, 0x08, 0x0A, 0x62,  // ....'..b
                /* 13C0 */  0x40, 0xE7, 0x3A, 0x3B, 0xA0, 0x55, 0x80, 0xE8,  // @.:;.U..
                /* 13C8 */  0x1A, 0x70, 0x8C, 0x11, 0xCE, 0x29, 0xC1, 0x20,  // .p...). 
                /* 13D0 */  0x57, 0x07, 0x3A, 0x33, 0x4F, 0x92, 0x6B, 0xB8,  // W.:3O.k.
                /* 13D8 */  0xC3, 0x20, 0x70, 0xAB, 0x9A, 0x22, 0x88, 0xD4,  // . p.."..
                /* 13E0 */  0x9C, 0x09, 0x50, 0x13, 0xF0, 0xC9, 0x01, 0x73,  // ..P....s
                /* 13E8 */  0x71, 0x00, 0x97, 0xBE, 0x8B, 0x03, 0xC8, 0xD1,  // q.......
                /* 13F0 */  0xF9, 0x01, 0xC4, 0x83, 0xE6, 0x12, 0xCE, 0x1F,  // ........
                /* 13F8 */  0x14, 0xC4, 0x83, 0x76, 0x3C, 0x08, 0x29, 0x39,  // ...v<.)9
                /* 1400 */  0x7F, 0x40, 0x8D, 0x73, 0xFE, 0x00, 0x9A, 0xA3,  // .@.s....
                /* 1408 */  0xB2, 0xB0, 0x69, 0x43, 0xFE, 0xFF, 0x4F, 0x1B,  // ..iC..O.
                /* 1410 */  0x63, 0x4C, 0x80, 0xB6, 0xE3, 0x02, 0x3B, 0x80,  // cL....;.
                /* 1418 */  0x00, 0xED, 0xF4, 0x07, 0x10, 0x40, 0x8D, 0x94,  // .....@..
                /* 1420 */  0xB7, 0x81, 0xCE, 0x64, 0x38, 0x11, 0x8B, 0xD4,  // ...d8...
                /* 1428 */  0x01, 0x04, 0xA7, 0x75, 0xBE, 0xD2, 0x08, 0x21,  // ...u...!
                /* 1430 */  0x98, 0x9E, 0x21, 0x49, 0xEC, 0xF3, 0x07, 0x2A,  // ..!I...*
                /* 1438 */  0x30, 0x85, 0x02, 0x9E, 0x1D, 0x50, 0x91, 0xCE,  // 0....P..
                /* 1440 */  0x0E, 0x14, 0xC4, 0xC3, 0xF6, 0xF9, 0x03, 0xD8,  // ........
                /* 1448 */  0xFF, 0xFF, 0xCF, 0x1F, 0xE0, 0x0B, 0x76, 0x6B,  // ......vk
                /* 1450 */  0x82, 0x72, 0x7B, 0xF1, 0x75, 0xDB, 0xE2, 0x07,  // .r{.u...
                /* 1458 */  0x07, 0x14, 0xA7, 0xEF, 0xB3, 0x0A, 0x30, 0x3E,  // ......0>
                /* 1460 */  0x7A, 0x81, 0xEF, 0xD0, 0xF0, 0xE8, 0x05, 0x8C,  // z.......
                /* 1468 */  0xC7, 0xE4, 0xA3, 0x17, 0x18, 0xFF, 0xFF, 0x47,  // .......G
                /* 1470 */  0x15, 0x60, 0x10, 0xFE, 0xA8, 0x02, 0xBA, 0xF6,  // .`......
                /* 1478 */  0x47, 0x15, 0xA0, 0x2B, 0xF6, 0x1C, 0x00, 0x1A,  // G..+....
                /* 1480 */  0x8C, 0xD7, 0xAD, 0x08, 0xA7, 0x15, 0xEA, 0xCC,  // ........
                /* 1488 */  0x4F, 0x29, 0x62, 0xCC, 0x30, 0xC7, 0x1C, 0x2B,  // O)b.0..+
                /* 1490 */  0x4C, 0x88, 0xB0, 0x67, 0x12, 0xA6, 0x79, 0x6C,  // L..g..yl
                /* 1498 */  0x8D, 0xCC, 0xF3, 0xF3, 0x31, 0x41, 0xA7, 0x30,  // ....1A.0
                /* 14A0 */  0xD4, 0xA9, 0xC0, 0xE1, 0x4E, 0x61, 0x88, 0x83,  // ....Na..
                /* 14A8 */  0x29, 0x3B, 0xB5, 0xE0, 0xE3, 0x9C, 0x5A, 0x28,  // );....Z(
                /* 14B0 */  0x84, 0x83, 0xC0, 0x28, 0x06, 0x84, 0x4E, 0x11,  // ...(..N.
                /* 14B8 */  0x5C, 0x38, 0x1C, 0x05, 0xF1, 0xD9, 0xC1, 0xA7,  // \8......
                /* 14C0 */  0x08, 0x38, 0xA7, 0x16, 0xCC, 0xC1, 0x14, 0xB8,  // .8......
                /* 14C8 */  0xFC, 0xFF, 0xCF, 0x83, 0xC0, 0x66, 0x78, 0x70,  // .....fxp
                /* 14D0 */  0xEE, 0x2D, 0xB8, 0xE1, 0x01, 0xCF, 0x9B, 0x0B,  // .-......
                /* 14D8 */  0xF8, 0x4E, 0x28, 0xE0, 0x1D, 0x1E, 0xF0, 0x39,  // .N(....9
                /* 14E0 */  0xA1, 0x00, 0xE3, 0xFF, 0xFF, 0xD9, 0x0C, 0xAC,  // ........
                /* 14E8 */  0xF1, 0xCF, 0x66, 0x80, 0x1A, 0x75, 0xC7, 0x12,  // ..f..u..
                /* 14F0 */  0xB4, 0xDA, 0x57, 0x80, 0x26, 0x5B, 0xED, 0x21,  // ..W.&[.!
                /* 14F8 */  0x41, 0x67, 0x33, 0x7E, 0x4A, 0xF1, 0xF9, 0xDB,  // Ag3~J...
                /* 1500 */  0xC7, 0x92, 0x03, 0xB1, 0xBE, 0xB3, 0x19, 0x4A,  // .......J
                /* 1508 */  0x19, 0x85, 0x74, 0x9C, 0x95, 0x50, 0xA7, 0x54,  // ..t..P.T
                /* 1510 */  0xC3, 0x19, 0xC4, 0x80, 0x8E, 0x35, 0x70, 0x14,  // .....5p.
                /* 1518 */  0xA4, 0x8F, 0x55, 0x6C, 0x88, 0x4E, 0x72, 0x34,  // ..Ul.Nr4
                /* 1520 */  0x03, 0x8A, 0xBA, 0xAE, 0x0D, 0xD0, 0x07, 0xF1,  // ........
                /* 1528 */  0xDA, 0xC0, 0x9C, 0x0D, 0xF1, 0x75, 0x0B, 0x44,  // .....u.D
                /* 1530 */  0xFF, 0xFF, 0x9B, 0x26, 0xF8, 0xE7, 0x8C, 0xBB,  // ...&....
                /* 1538 */  0x7D, 0xE0, 0x6F, 0x9A, 0x80, 0x8B, 0x71, 0x63,  // }.o...qc
                /* 1540 */  0xAF, 0x1F, 0xC0, 0x5C, 0xCC, 0xDA, 0x74, 0xFD,  // ...\..t.
                /* 1548 */  0x00, 0x5C, 0xFC, 0xFF, 0x0F, 0x02, 0xB8, 0xC8,  // .\......
                /* 1550 */  0x57, 0x78, 0xD4, 0x59, 0xC0, 0x12, 0xAE, 0x1F,  // Wx.Y....
                /* 1558 */  0x88, 0x4B, 0x16, 0xBF, 0x7E, 0x60, 0x43, 0xDF,  // .K..~`C.
                /* 1560 */  0xE1, 0x51, 0x71, 0x29, 0x14, 0xF6, 0xEC, 0x80,  // .Qq)....
                /* 1568 */  0x8A, 0x07, 0x47, 0x41, 0x3C, 0x6C, 0x5F, 0x84,  // ..GA<l_.
                /* 1570 */  0x7C, 0x76, 0xC0, 0x1D, 0x10, 0xD8, 0x10, 0xD9,  // |v......
                /* 1578 */  0xD1, 0x01, 0xDE, 0x1D, 0x0B, 0x38, 0x1D, 0x1D,  // .....8..
                /* 1580 */  0xC0, 0x77, 0xD2, 0x00, 0xEF, 0x25, 0x0B, 0x38,  // .w...%.8
                /* 1588 */  0x9D, 0x34, 0x80, 0xD3, 0xFF, 0xFF, 0xA4, 0x01,  // .4......
                /* 1590 */  0x9C, 0xCC, 0x9C, 0x34, 0x00, 0x35, 0x92, 0x4E,  // ...4.5.N
                /* 1598 */  0x1A, 0x28, 0x58, 0x32, 0x36, 0xDD, 0x9B, 0x70,  // .(X26..p
                /* 15A0 */  0x22, 0xE7, 0xA1, 0x63, 0x05, 0x97, 0x75, 0xD0,  // "..c..u.
                /* 15A8 */  0x40, 0x1D, 0x79, 0x7C, 0x63, 0x05, 0xDF, 0x65,  // @.y|c..e
                /* 15B0 */  0x1D, 0x77, 0x63, 0x05, 0x9E, 0x97, 0x43, 0xF0,  // .wc...C.
                /* 15B8 */  0xFD, 0xFF, 0x4F, 0x0E, 0xC0, 0x5B, 0xCD, 0xC9,  // ..O..[..
                /* 15C0 */  0x01, 0x50, 0x13, 0xFE, 0x02, 0x87, 0x02, 0xB7,  // .P......
                /* 15C8 */  0x18, 0x20, 0x9D, 0x1C, 0xD8, 0xBD, 0xC1, 0xF7,  // . ......
                /* 15D0 */  0x15, 0xCC, 0x4D, 0xE4, 0xE4, 0x4E, 0xC4, 0x73,  // ..M..N.s
                /* 15D8 */  0x7B, 0x69, 0xC1, 0xDD, 0xD7, 0x61, 0x9C, 0x78,  // {i...a.x
                /* 15E0 */  0x7C, 0x7C, 0xE0, 0x81, 0x8E, 0x0F, 0x14, 0xC4,  // ||......
                /* 15E8 */  0x43, 0xF7, 0x25, 0x0E, 0xF8, 0xFF, 0xFF, 0x2F,  // C.%..../
                /* 15F0 */  0x31, 0xE0, 0xBA, 0xDA, 0xFB, 0x84, 0x04, 0x03,  // 1.......
                /* 15F8 */  0xF0, 0x7C, 0xCF, 0x0D, 0x18, 0x8E, 0xDE, 0x07,  // .|......
                /* 1600 */  0x3E, 0xC0, 0x89, 0x93, 0xD3, 0x0A, 0xD4, 0x03,  // >.......
                /* 1608 */  0x1F, 0xF0, 0x1C, 0x93, 0xCF, 0x4D, 0xF0, 0x4F,  // .....M.O
                /* 1610 */  0x2B, 0xFC, 0xDC, 0x84, 0xFF, 0xFF, 0x1F, 0x57,  // +......W
                /* 1618 */  0x80, 0xAF, 0x9B, 0xE3, 0x0A, 0x20, 0xED, 0xA8,  // ..... ..
                /* 1620 */  0x02, 0xE3, 0x06, 0xF0, 0xCC, 0x82, 0x3D, 0xAE,  // ......=.
                /* 1628 */  0x00, 0xDE, 0xFE, 0xFF, 0xC7, 0x15, 0x80, 0xFF,  // ........
                /* 1630 */  0xFF, 0xFF, 0xE3, 0x0A, 0xF0, 0x3C, 0xFF, 0xF9,  // .....<..
                /* 1638 */  0xF2, 0x0E, 0x78, 0xB3, 0x3A, 0x35, 0x1D, 0x36,  // ..x.:5.6
                /* 1640 */  0xAC, 0x19, 0x5A, 0x04, 0xBE, 0xBC, 0x03, 0x2E,  // ..Z.....
                /* 1648 */  0xFF, 0xFF, 0xD7, 0x0F, 0x60, 0x0C, 0xCA, 0xAF,  // ....`...
                /* 1650 */  0x1F, 0xC0, 0xFD, 0x0E, 0x0C, 0x96, 0x31, 0x1C,  // ......1.
                /* 1658 */  0x85, 0xC7, 0xF0, 0xAE, 0xFD, 0xFA, 0x01, 0xDC,  // ........
                /* 1660 */  0xED, 0x5C, 0x3F, 0x80, 0xDC, 0xFF, 0xFF, 0xFA,  // .\?.....
                /* 1668 */  0x01, 0xF6, 0xE8, 0xD7, 0x0F, 0x94, 0x28, 0x08,  // ......(.
                /* 1670 */  0x49, 0xB9, 0x7A, 0x82, 0x60, 0xCC, 0x6F, 0x01,  // I.z.`.o.
                /* 1678 */  0xBE, 0x7B, 0x01, 0x7E, 0xEF, 0x4D, 0xB8, 0xBB,  // .{.~.M..
                /* 1680 */  0x17, 0xE0, 0xE3, 0xD2, 0x84, 0xFD, 0xFF, 0x9F,  // ........
                /* 1688 */  0x56, 0x00, 0xD3, 0x77, 0x2F, 0x70, 0x9C, 0x56,  // V..w/p.V
                /* 1690 */  0x00, 0x0F, 0x7A, 0x4E, 0x2B, 0x40, 0xF4, 0xFF,  // ..zN+@..
                /* 1698 */  0x7F, 0x5A, 0x01, 0x2E, 0x27, 0x15, 0xEC, 0xC5,  // .Z..'...
                /* 16A0 */  0x13, 0xF0, 0x7D, 0xD2, 0xC0, 0x5D, 0x3C, 0x01,  // ..}..]<.
                /* 16A8 */  0x23, 0xC7, 0x0C, 0xDC, 0x69, 0x05, 0xF7, 0xFF,  // #...i...
                /* 16B0 */  0xBF, 0x78, 0x02, 0x4C, 0xF4, 0x73, 0x5A, 0x01,  // .x.L.sZ.
                /* 16B8 */  0xD2, 0xFF, 0xFF, 0x83, 0x00, 0x58, 0xB4, 0x9D,  // .....X..
                /* 16C0 */  0x56, 0x50, 0xB0, 0xD6, 0x7A, 0xF1, 0x44, 0x5F,  // VP..z.D_
                /* 16C8 */  0x57, 0xF8, 0xBD, 0x13, 0x60, 0xD4, 0x01, 0x08,  // W...`...
                /* 16D0 */  0x77, 0xFB, 0x00, 0x4E, 0xFF, 0xFF, 0x7B, 0x27,  // w..N..{'
                /* 16D8 */  0xE0, 0xEF, 0x10, 0xE0, 0xDB, 0x07, 0xE0, 0xE5,  // ........
                /* 16E0 */  0xA2, 0xE5, 0xDB, 0x07, 0xEE, 0xA5, 0xE0, 0xDB,  // ........
                /* 16E8 */  0x07, 0x1B, 0xED, 0xDB, 0x07, 0x3E, 0xF4, 0x99,  // .....>..
                /* 16F0 */  0x81, 0x42, 0x38, 0x2E, 0x85, 0xC2, 0x1E, 0x1D,  // .B8.....
                /* 16F8 */  0x50, 0x37, 0x2F, 0x83, 0x19, 0xC4, 0xA3, 0x76,  // P7/....v
                /* 1700 */  0xB8, 0xDB, 0x07, 0xFA, 0x7C, 0xC0, 0x46, 0xC8,  // ....|.F.
                /* 1708 */  0x4E, 0x0E, 0xF0, 0x8E, 0x1F, 0x6C, 0x84, 0x30,  // N....l.0
                /* 1710 */  0xFE, 0xFF, 0x27, 0x07, 0xF0, 0x12, 0xF8, 0xE4,  // ..'.....
                /* 1718 */  0x00, 0x86, 0x6B, 0x10, 0xF6, 0xA0, 0x01, 0xDE,  // ..k.....
                /* 1720 */  0xF1, 0x01, 0x9F, 0x83, 0x06, 0xE0, 0xCA, 0xD0,  // ........
                /* 1728 */  0x41, 0x03, 0xE8, 0xFD, 0xFF, 0x0F, 0x1A, 0xE0,  // A.......
                /* 1730 */  0x0E, 0x7B, 0xD0, 0x40, 0x8D, 0xDA, 0xE1, 0xC7,  // .{.@....
                /* 1738 */  0xA6, 0x83, 0x06, 0x1B, 0x70, 0x04, 0x1F, 0x33,  // ....p..3
                /* 1740 */  0x00, 0x8E, 0xFE, 0xFF, 0x8F, 0x19, 0xC0, 0x3B,  // .......;
                /* 1748 */  0x34, 0xA5, 0x8E, 0x19, 0x80, 0x17, 0x49, 0xC7,  // 4.....I.
                /* 1750 */  0x23, 0xB4, 0xC4, 0x67, 0x80, 0x6E, 0x19, 0x35,  // #..g.n.5
                /* 1758 */  0x8E, 0x5A, 0x77, 0x3D, 0x76, 0xCC, 0xF5, 0xB1,  // .Zw=v...
                /* 1760 */  0x82, 0xCB, 0x3A, 0x68, 0xA0, 0xCE, 0x54, 0x96,  // ..:h..T.
                /* 1768 */  0x73, 0xD0, 0x40, 0x51, 0x19, 0xCC, 0x14, 0x3E,  // s.@Q...>
                /* 1770 */  0xA8, 0xF9, 0xA0, 0x61, 0x23, 0xB7, 0x4E, 0xA8,  // ...a#.N.
                /* 1778 */  0x61, 0x0E, 0x6A, 0x40, 0x73, 0x78, 0x04, 0x8A,  // a.j@sx..
                /* 1780 */  0xFE, 0xFF, 0x6F, 0x9D, 0xF0, 0xC5, 0x9D, 0x1C,  // ..o.....
                /* 1788 */  0x80, 0xBA, 0xA2, 0xF3, 0x0E, 0xA0, 0x46, 0xE0,  // ......F.
                /* 1790 */  0x8D, 0x1B, 0x2D, 0xF8, 0xA1, 0xA0, 0x93, 0x03,  // ..-.....
                /* 1798 */  0x0E, 0xE5, 0x74, 0xC2, 0xBE, 0x72, 0x1B, 0x3A,  // ..t..r.:
                /* 17A0 */  0x7C, 0x10, 0x03, 0x85, 0x78, 0x0B, 0x38, 0x88,  // |...x.8.
                /* 17A8 */  0x04, 0xC5, 0x5D, 0x3C, 0x51, 0xB2, 0x28, 0x24,  // ..]<Q.($
                /* 17B0 */  0xE3, 0xF4, 0x80, 0x0A, 0x7E, 0x86, 0xA0, 0x20,  // ....~.. 
                /* 17B8 */  0x06, 0x74, 0xAA, 0xD3, 0x03, 0xFA, 0xC4, 0xC9,  // .t......
                /* 17C0 */  0x46, 0xE9, 0x20, 0x17, 0x4F, 0x20, 0xF1, 0xFF,  // F. .O ..
                /* 17C8 */  0xBF, 0x78, 0xC2, 0xBE, 0x39, 0x80, 0xEB, 0xE0,  // .x..9...
                /* 17D0 */  0x09, 0x2C, 0x0E, 0x20, 0xE0, 0x1B, 0xD0, 0x51,  // .,. ...Q
                /* 17D8 */  0x1E, 0x22, 0x3F, 0x80, 0x00, 0xCF, 0x51, 0xF9,  // ."?...Q.
                /* 17E0 */  0x00, 0x02, 0x38, 0x72, 0x74, 0x00, 0x01, 0xC5,  // ..8rt...
                /* 17E8 */  0xFF, 0xFF, 0x00, 0x02, 0xBC, 0x43, 0x9F, 0x84,  // .....C..
                /* 17F0 */  0x50, 0x07, 0x10, 0x8B, 0x38, 0x80, 0x20, 0xCE,  // P...8. .
                /* 17F8 */  0x9D, 0xEC, 0x00, 0x02, 0x37, 0xF0, 0x69, 0x08,  // ....7.i.
                /* 1800 */  0x15, 0x95, 0x42, 0x41, 0x4F, 0x0F, 0xA8, 0x68,  // ..BAO..h
                /* 1808 */  0x70, 0x14, 0xC4, 0x23, 0x77, 0xB4, 0xD3, 0x03,  // p..#w...
                /* 1810 */  0xFA, 0x38, 0xC6, 0x46, 0xC9, 0x0E, 0x0F, 0xF0,  // .8.F....
                /* 1818 */  0x4E, 0x71, 0xC0, 0xE9, 0xF0, 0x00, 0xAE, 0xA3,  // Nq......
                /* 1820 */  0x06, 0x78, 0x87, 0x07, 0xCE, 0xFF, 0xFF, 0x51,  // .x.....Q
                /* 1828 */  0x03, 0x70, 0x28, 0xE9, 0xA8, 0x01, 0xA8, 0x91,  // .p(.....
                /* 1830 */  0x77, 0x74, 0x42, 0x49, 0x82, 0x90, 0xDC, 0xA3,  // wtBI....
                /* 1838 */  0x13, 0x1A, 0xE4, 0x05, 0x20, 0xF8, 0x09, 0x79,  // .... ..y
                /* 1840 */  0x64, 0x9E, 0xF3, 0xC1, 0x79, 0x04, 0x4F, 0x4E,  // d...y.ON
                /* 1848 */  0xC0, 0xF4, 0xFF, 0x7F, 0x72, 0x02, 0x1C, 0x9F,  // ....r...
                /* 1850 */  0x04, 0x81, 0xF3, 0xF9, 0x03, 0xF0, 0xF4, 0xFF,  // ........
                /* 1858 */  0xB7, 0x74, 0xFE, 0x00, 0xD4, 0x08, 0x3B, 0x39,  // .t....;9
                /* 1860 */  0xA1, 0xCE, 0x1F, 0x16, 0x7A, 0x24, 0x45, 0x9C,  // ....z$E.
                /* 1868 */  0x9C, 0xD8, 0x49, 0x38, 0x6E, 0xF0, 0xB7, 0x26,  // ..I8n..&
                /* 1870 */  0x1F, 0x14, 0x7C, 0xFE, 0xC0, 0x9C, 0x4A, 0x81,  // ..|...J.
                /* 1878 */  0xE3, 0xC9, 0x09, 0xF8, 0x1F, 0x1E, 0x80, 0xC7,  // ........
                /* 1880 */  0xFF, 0xFF, 0xF0, 0x00, 0x3E, 0x4D, 0x87, 0x07,  // ....>M..
                /* 1888 */  0x40, 0x8D, 0xC4, 0x53, 0x29, 0x5A, 0xF2, 0xA9,  // @..S)Z..
                /* 1890 */  0x14, 0xD2, 0x8C, 0x63, 0xC4, 0x7F, 0xDF, 0x8E,  // ...c....
                /* 1898 */  0xE4, 0xD3, 0x03, 0x46, 0xDE, 0x61, 0x08, 0x75,  // ...F.a.u
                /* 18A0 */  0x9C, 0xF0, 0x61, 0x08, 0xF0, 0xFC, 0xFF, 0x3F,  // ..a....?
                /* 18A8 */  0x0C, 0x81, 0xE3, 0x04, 0xE2, 0x31, 0x73, 0x09,  // .....1s.
                /* 18B0 */  0x07, 0x10, 0x0A, 0xE2, 0x31, 0xFB, 0xBC, 0xEF,  // ....1...
                /* 18B8 */  0x31, 0xE3, 0x66, 0xE2, 0xFB, 0x81, 0x6F, 0x01,  // 1.f...o.
                /* 18C0 */  0x3E, 0x0A, 0xC2, 0x3F, 0x0D, 0x01, 0xDE, 0x3D,  // >..?...=
                /* 18C8 */  0x9D, 0x40, 0x00, 0x15, 0xFF, 0xFF, 0x73, 0x00,  // .@....s.
                /* 18D0 */  0x3E, 0xF6, 0xB1, 0x14, 0x2D, 0xE3, 0x58, 0x0A,  // >...-.X.
                /* 18D8 */  0xE9, 0x04, 0x02, 0x2B, 0xF2, 0x71, 0x08, 0x15,  // ...+.q..
                /* 18E0 */  0x96, 0x42, 0xE7, 0x52, 0x1F, 0x1F, 0x78, 0x38,  // .B.R..x8
                /* 18E8 */  0x38, 0x0A, 0xE2, 0x63, 0x29, 0xE0, 0xED, 0xAC,  // 8..c)...
                /* 18F0 */  0x01, 0xEE, 0x73, 0x29, 0xE0, 0xE5, 0xFF, 0x7F,  // ..s)....
                /* 18F8 */  0xD6, 0x00, 0x7E, 0xA2, 0xCE, 0x1A, 0x80, 0x9A,  // ..~.....
                /* 1900 */  0xE0, 0x87, 0x27, 0xB4, 0x10, 0x20, 0x1D, 0x9E,  // ..'.. ..
                /* 1908 */  0xE0, 0x5C, 0x14, 0xD8, 0xD0, 0xC3, 0x1F, 0xA9,  // .\......
                /* 1910 */  0x2F, 0x37, 0x3E, 0x60, 0xB3, 0xC3, 0x13, 0x8F,  // /7>`....
                /* 1918 */  0x7B, 0x78, 0x02, 0xD4, 0xFD, 0xFF, 0x0F, 0x4F,  // {x.....O
                /* 1920 */  0xC0, 0x29, 0xE6, 0x98, 0x51, 0xC1, 0x8E, 0x2B,  // .)..Q..+
                /* 1928 */  0x14, 0xC4, 0xC7, 0x15, 0x78, 0x23, 0xAC, 0x19,  // ....x#..
                /* 1930 */  0x41, 0x47, 0x27, 0xC0, 0xCC, 0xE8, 0x60, 0x9D,  // AG'...`.
                /* 1938 */  0xC9, 0x61, 0x8F, 0x0E, 0xF8, 0x1C, 0x99, 0xC9,  // .a......
                /* 1940 */  0x61, 0x05, 0x28, 0xFD, 0xFF, 0x0F, 0x2B, 0xC0,  // a.(...+.
                /* 1948 */  0xC7, 0xD4, 0x61, 0x05, 0x50, 0x93, 0xE6, 0x69,  // ..a.P..i
                /* 1950 */  0xA0, 0xC3, 0x0A, 0x2E, 0xDD, 0x61, 0x05, 0x71,  // .....a.q
                /* 1958 */  0xCE, 0xC2, 0x1E, 0x56, 0xE0, 0x24, 0x81, 0xD5,  // ...V.$..
                /* 1960 */  0x61, 0x85, 0x67, 0x80, 0x91, 0x62, 0x12, 0x9D,  // a.g..b..
                /* 1968 */  0x34, 0xB8, 0xC6, 0x33, 0x0B, 0x05, 0xF1, 0x99,  // 4..3....
                /* 1970 */  0xC1, 0x87, 0x15, 0xC0, 0x54, 0x2C, 0x01, 0xFF,  // ....T,..
                /* 1978 */  0xFF, 0x3B, 0x09, 0xCC, 0xB1, 0x01, 0xBF, 0x1B,  // .;......
                /* 1980 */  0x09, 0xF8, 0x6E, 0x01, 0x70, 0x26, 0xC2, 0xA6,  // ..n.p&..
                /* 1988 */  0x06, 0xFC, 0xCE, 0x23, 0xE0, 0xBB, 0x8D, 0x02,  // ...#....
                /* 1990 */  0x4B, 0x50, 0x7E, 0xBB, 0x86, 0x13, 0xE7, 0x56,  // KP~....V
                /* 1998 */  0x03, 0xA2, 0xFF, 0xFF, 0xAD, 0x06, 0xEC, 0x50,  // .......P
                /* 19A0 */  0x16, 0x36, 0x6D, 0xE8, 0xA3, 0x38, 0x86, 0xA3,  // .6m..8..
                /* 19A8 */  0xF0, 0x18, 0x1E, 0x1E, 0x13, 0xF8, 0x5A, 0x03,  // ......Z.
                /* 19B0 */  0xBC, 0x55, 0x5D, 0x6B, 0x00, 0x35, 0x61, 0x6F,  // .U]k.5ao
                /* 19B8 */  0xA3, 0x28, 0x58, 0x87, 0xBF, 0xEA, 0x23, 0x4E,  // .(X...#N
                /* 19C0 */  0x35, 0xCC, 0x27, 0x04, 0x39, 0x96, 0xB0, 0xC0,  // 5.'.9...
                /* 19C8 */  0x37, 0x51, 0xD4, 0x45, 0xD4, 0x41, 0x8F, 0x0E,  // 7Q.E.A..
                /* 19D0 */  0xA8, 0x68, 0x70, 0x14, 0xC4, 0x37, 0x51, 0xB0,  // .hp..7Q.
                /* 19D8 */  0xFC, 0xFF, 0x6F, 0xA2, 0x80, 0x91, 0x70, 0xA3,  // ..o...p.
                /* 19E0 */  0x43, 0x9F, 0x03, 0x3C, 0xDC, 0x27, 0x83, 0x43,  // C..<.'.C
                /* 19E8 */  0x7E, 0x80, 0x60, 0x17, 0x51, 0x80, 0x0F, 0xAE,  // ~.`.Q...
                /* 19F0 */  0x8E, 0x19, 0x20, 0xFF, 0xFF, 0x1F, 0x33, 0x80,  // .. ...3.
                /* 19F8 */  0x5D, 0x90, 0x8B, 0x28, 0xEA, 0x28, 0xE0, 0x60,  // ]..(.(.`
                /* 1A00 */  0x47, 0x0D, 0x01, 0x47, 0x38, 0xDA, 0x17, 0x51,  // G..G8..Q
                /* 1A08 */  0x36, 0xEE, 0xD3, 0x09, 0x1D, 0xA2, 0xE2, 0xB1,  // 6.......
                /* 1A10 */  0x11, 0x82, 0x51, 0xAE, 0x60, 0x14, 0xC2, 0x21,  // ..Q.`..!
                /* 1A18 */  0x60, 0x14, 0xE1, 0x26, 0x86, 0x12, 0x0D, 0x47,  // `..&...G
                /* 1A20 */  0x41, 0x7C, 0x60, 0xF0, 0x39, 0x03, 0xCE, 0x90,  // A|`.9...
                /* 1A28 */  0xCE, 0xE1, 0x14, 0x7D, 0x2B, 0x04, 0x9E, 0xE7,  // ...}+...
                /* 1A30 */  0x0C, 0xF0, 0x8D, 0x0E, 0xCE, 0x11, 0xDC, 0x03,  // ........
                /* 1A38 */  0x7E, 0xDF, 0x04, 0xDE, 0xFF, 0xFF, 0x43, 0x09,  // ~.....C.
                /* 1A40 */  0x58, 0x6F, 0xDB, 0xFC, 0xC2, 0x09, 0x70, 0x42,  // Xo....pB
                /* 1A48 */  0xD6, 0xA1, 0x04, 0x50, 0xA3, 0xF5, 0x50, 0x82,  // ...P..P.
                /* 1A50 */  0xD6, 0xAE, 0xE0, 0xFF, 0x7F, 0x28, 0xC1, 0x4E,  // .....(.N
                /* 1A58 */  0xF7, 0x01, 0xC4, 0x40, 0x07, 0x14, 0x26, 0xC4,  // ...@..&.
                /* 1A60 */  0x13, 0x95, 0x6E, 0xDA, 0x28, 0x9D, 0x14, 0x52,  // ..n.(..R
                /* 1A68 */  0x72, 0x96, 0x42, 0x65, 0x3F, 0x43, 0x50, 0x10,  // r.Be?CP.
                /* 1A70 */  0x03, 0x3A, 0xD8, 0xD1, 0x01, 0xCA, 0x70, 0x4F,  // .:....pO
                /* 1A78 */  0xE7, 0x20, 0x4E, 0xA3, 0xF8, 0xB3, 0x36, 0x20,  // . N...6 
                /* 1A80 */  0x56, 0xDC, 0xA4, 0x51, 0x72, 0xEE, 0x63, 0x14,  // V..Qr.c.
                /* 1A88 */  0xC4, 0x93, 0x76, 0x54, 0x08, 0xD9, 0x98, 0x34,  // ..vT...4
                /* 1A90 */  0x7A, 0xCE, 0xCF, 0x01, 0xFC, 0xCE, 0xC2, 0x2E,  // z.......
                /* 1A98 */  0x2B, 0xC0, 0x53, 0xE4, 0xB4, 0xA1, 0xFD, 0xFF,  // +.S.....
                /* 1AA0 */  0xA7, 0xCD, 0x67, 0xF0, 0x44, 0x53, 0xF5, 0x38,  // ..g.DS.8
                /* 1AA8 */  0x34, 0x8D, 0xA3, 0xA8, 0xEE, 0xCE, 0xA0, 0x91,  // 4.......
                /* 1AB0 */  0x9E, 0x6C, 0x63, 0xF3, 0x95, 0xC2, 0x31, 0xE9,  // .lc...1.
                /* 1AB8 */  0x38, 0x67, 0x6B, 0x38, 0xD2, 0x76, 0x0B, 0x01,  // 8gk8.v..
                /* 1AC0 */  0xEA, 0xDA, 0xEE, 0x87, 0x80, 0xAE, 0x71, 0x05,  // ......q.
                /* 1AC8 */  0x8C, 0x79, 0xC6, 0x0F, 0x13, 0x9E, 0xE3, 0x21,  // .y.....!
                /* 1AD0 */  0x7A, 0x1A, 0xBE, 0x1F, 0x02, 0x83, 0xF1, 0x3C,  // z......<
                /* 1AD8 */  0x7C, 0xB0, 0x1B, 0x1F, 0xF0, 0xF8, 0xFF, 0xDF,  // |.......
                /* 1AE0 */  0x0F, 0x81, 0xE3, 0xBD, 0xE0, 0x80, 0x31, 0xF7,  // ......1.
                /* 1AE8 */  0x43, 0x80, 0x0F, 0x02, 0x8F, 0x19, 0x40, 0xFF,  // C.....@.
                /* 1AF0 */  0xFF, 0x7F, 0x0E, 0x80, 0x1B, 0xF8, 0x98, 0x81,  // ........
                /* 1AF8 */  0xE2, 0x20, 0x40, 0x3A, 0x66, 0x30, 0xEC, 0xA0,  // . @:f0..
                /* 1B00 */  0x6F, 0x77, 0x87, 0xE1, 0xD3, 0xB4, 0xC7, 0x79,  // ow.....y
                /* 1B08 */  0x24, 0x98, 0x83, 0x06, 0xE0, 0xFC, 0x3A, 0x8E,  // $.....:.
                /* 1B10 */  0x3B, 0x68, 0x00, 0xBE, 0xFE, 0xFF, 0x07, 0x0D,  // ;h......
                /* 1B18 */  0xE0, 0x67, 0xF0, 0xA0, 0x01, 0xA8, 0x51, 0x77,  // .g....Qw
                /* 1B20 */  0xE7, 0x43, 0x71, 0xF8, 0xAE, 0xE7, 0x83, 0x06,  // .Cq.....
                /* 1B28 */  0x9C, 0x11, 0x1F, 0x11, 0x46, 0xDD, 0xA5, 0x0F,  // ....F...
                /* 1B30 */  0xA5, 0x8B, 0x42, 0x3A, 0x0E, 0x1A, 0xA8, 0xE4,  // ..B:....
                /* 1B38 */  0xC7, 0x02, 0x0A, 0x62, 0x40, 0xC7, 0x3A, 0x68,  // ...b@.:h
                /* 1B40 */  0x40, 0xBD, 0xF3, 0x01, 0x1E, 0xFE, 0xFF, 0x77,  // @......w
                /* 1B48 */  0x3E, 0x60, 0x73, 0xDD, 0xF3, 0x9C, 0xF9, 0x96,  // >`s.....
                /* 1B50 */  0x3D, 0x67, 0x53, 0x78, 0xCE, 0xBE, 0x7E, 0x80,  // =gSx..~.
                /* 1B58 */  0xF7, 0xC0, 0x0B, 0xFC, 0xAF, 0x1F, 0xC0, 0x5B,  // .......[
                /* 1B60 */  0xE1, 0xF5, 0x03, 0x48, 0xFE, 0xFF, 0xAF, 0x1F,  // ...H....
                /* 1B68 */  0x60, 0x95, 0x76, 0xFD, 0x40, 0xC1, 0x5A, 0xEA,  // `.v.@.Z.
                /* 1B70 */  0x43, 0x41, 0x03, 0x8E, 0xFC, 0x06, 0xCB, 0x8F,  // CA......
                /* 1B78 */  0x1F, 0x86, 0x78, 0x03, 0x38, 0x80, 0x04, 0xE5,  // ..x.8...
                /* 1B80 */  0x5D, 0x3E, 0x50, 0xC2, 0x28, 0x24, 0xE4, 0xE4,  // ]>P.($..
                /* 1B88 */  0x80, 0x8A, 0x7E, 0x28, 0xA0, 0x20, 0x06, 0x74,  // ..~(. .t
                /* 1B90 */  0xAE, 0x93, 0x03, 0x5A, 0xC5, 0xE5, 0x83, 0x0C,  // ...Z....
                /* 1B98 */  0xE7, 0x88, 0x5E, 0x18, 0x7C, 0xFA, 0x00, 0x38,  // ..^.|..8
                /* 1BA0 */  0xF5, 0xFF, 0x3F, 0x7D, 0x00, 0x36, 0x2D, 0x9E,  // ..?}.6-.
                /* 1BA8 */  0x3E, 0x00, 0x35, 0x71, 0x6F, 0xAE, 0xE8, 0xF8,  // >.5qo...
                /* 1BB0 */  0x63, 0xD3, 0xE9, 0xC3, 0x93, 0x7D, 0xFA, 0x80,  // c....}..
                /* 1BB8 */  0x11, 0xF9, 0x06, 0x88, 0x0A, 0x4B, 0xA1, 0x2B,  // .....K.+
                /* 1BC0 */  0xA0, 0x4F, 0x0E, 0x3C, 0x1C, 0x1C, 0x05, 0xF1,  // .O.<....
                /* 1BC8 */  0xA8, 0x7D, 0x72, 0x80, 0x73, 0xFA, 0xC0, 0x5C,  // .}r.s..\
                /* 1BD0 */  0xEA, 0xE0, 0xFF, 0xFF, 0xAF, 0x80, 0x00, 0x53,  // .......S
                /* 1BD8 */  0x35, 0x9E, 0x33, 0x80, 0xD4, 0xFF, 0xFF, 0x9C,  // 5.3.....
                /* 1BE0 */  0x01, 0x2C, 0x04, 0x9D, 0x33, 0x50, 0x52, 0x6E,  // .,..3PRn
                /* 1BE8 */  0xB9, 0xF4, 0xD0, 0x84, 0x39, 0xCF, 0x1F, 0xC7,  // ....9...
                /* 1BF0 */  0x11, 0x32, 0x59, 0xC7, 0x0C, 0x94, 0x20, 0x0A,  // .2Y... .
                /* 1BF8 */  0x9D, 0x77, 0x00, 0x47, 0xC7, 0x0C, 0xF0, 0x1D,  // .w.G....
                /* 1C00 */  0x1C, 0x80, 0xB7, 0xC7, 0x83, 0x03, 0x48, 0xFF,  // ......H.
                /* 1C08 */  0xFF, 0x07, 0x07, 0x60, 0x29, 0xEF, 0xF0, 0x86,  // ...`)...
                /* 1C10 */  0x3A, 0x0A, 0x58, 0xEE, 0xE1, 0x0D, 0x89, 0xF2,  // :.X.....
                /* 1C18 */  0x6E, 0xC3, 0xE6, 0x16, 0xB8, 0x66, 0x18, 0x9D,  // n....f..
                /* 1C20 */  0x00, 0x74, 0x7A, 0x43, 0x49, 0x3B, 0xBD, 0x01,  // .tzCI;..
                /* 1C28 */  0x94, 0x38, 0x7F, 0x78, 0xD0, 0x5C, 0xC2, 0xF1,  // .8.x.\..
                /* 1C30 */  0x83, 0x82, 0x78, 0xD0, 0x8E, 0x07, 0x8A, 0x3A,  // ..x....:
                /* 1C38 */  0x7E, 0xC0, 0x89, 0x73, 0xFC, 0x40, 0xFE, 0xFF,  // ~..s.@..
                /* 1C40 */  0x4F, 0x6F, 0xC0, 0x4E, 0xD8, 0xB4, 0xA1, 0x8F,  // Oo.N....
                /* 1C48 */  0xE2, 0x18, 0x8E, 0xC2, 0x63, 0x78, 0x17, 0x4E,  // ....cx.N
                /* 1C50 */  0xE0, 0xF3, 0x07, 0xF0, 0x16, 0x79, 0xFE, 0x00,  // .....y..
                /* 1C58 */  0xD4, 0xC8, 0x3A, 0x07, 0xA1, 0x38, 0x2C, 0xF3,  // ..:..8,.
                /* 1C60 */  0x1C, 0x84, 0x3C, 0x7F, 0xF0, 0x89, 0x3F, 0x20,  // ..<...? 
                /* 1C68 */  0x78, 0x66, 0x86, 0x26, 0x47, 0x21, 0x10, 0xFD,  // xf.&G!..
                /* 1C70 */  0xFF, 0x8F, 0x42, 0x00, 0x63, 0x4C, 0x9E, 0x1D,  // ..B.cL..
                /* 1C78 */  0x00, 0x35, 0x61, 0x8F, 0x64, 0xE8, 0xF0, 0x27,  // .5a.d..'
                /* 1C80 */  0x49, 0xE4, 0x18, 0xCF, 0xD0, 0xC3, 0xF0, 0x41,  // I......A
                /* 1C88 */  0x12, 0xF3, 0xFF, 0x3F, 0x48, 0x02, 0xFC, 0xFF,  // ...?H...
                /* 1C90 */  0xFF, 0x1F, 0x33, 0x30, 0x2A, 0x8F, 0x19, 0x80,  // ..30*...
                /* 1C98 */  0x1A, 0x61, 0x07, 0x38, 0xD4, 0x31, 0xC3, 0x42,  // .a.8.1.B
                /* 1CA0 */  0x0F, 0x70, 0xC8, 0x63, 0x06, 0xE6, 0x2C, 0x0F,  // .p.c..,.
                /* 1CA8 */  0x30, 0xE6, 0xFF, 0x7F, 0x96, 0x07, 0x98, 0xE3,  // 0.......
                /* 1CB0 */  0xF2, 0xF0, 0x01, 0xA8, 0x91, 0x73, 0x64, 0x42,  // .....sdB
                /* 1CB8 */  0x8D, 0xDA, 0xF2, 0x8E, 0x4C, 0xD4, 0xE7, 0x41,  // ....L..A
                /* 1CC0 */  0x54, 0x08, 0x31, 0x82, 0xFA, 0xE4, 0xC6, 0xFE,  // T.1.....
                /* 1CC8 */  0xFF, 0x27, 0x37, 0x30, 0x9F, 0x98, 0x00, 0x47,  // .'70...G
                /* 1CD0 */  0xE7, 0x06, 0xE0, 0x7D, 0x32, 0xF4, 0xD9, 0x1C,  // ...}2...
                /* 1CD8 */  0xB0, 0xF4, 0xFF, 0x3F, 0x9B, 0xB3, 0x4B, 0xC3,  // ...?..K.
                /* 1CE0 */  0x09, 0x57, 0x38, 0x5C, 0x41, 0x9E, 0x4D, 0xC5,  // .W8\A.M.
                /* 1CE8 */  0x23, 0x23, 0x27, 0x48, 0x60, 0x79, 0x70, 0x00,  // ##'H`yp.
                /* 1CF0 */  0xBC, 0xFB, 0x3C, 0x38, 0x00, 0x22, 0xFE, 0xFF,  // ..<8."..
                /* 1CF8 */  0xE7, 0x00, 0x18, 0x92, 0x0E, 0x0E, 0x28, 0x58,  // ......(X
                /* 1D00 */  0x72, 0x70, 0x40, 0xDC, 0xC5, 0x98, 0xC8, 0x79,  // rp@....y
                /* 1D08 */  0x68, 0x86, 0xEC, 0x28, 0x0B, 0xB0, 0x4B, 0xE8,  // h..(..K.
                /* 1D10 */  0xC9, 0x01, 0x48, 0xFE, 0xFF, 0x4F, 0x0E, 0x60,  // ..H..O.`
                /* 1D18 */  0x8D, 0xF7, 0x34, 0xF0, 0x19, 0xDE, 0x23, 0x53,  // ..4...#S
                /* 1D20 */  0x20, 0x18, 0xD4, 0x41, 0xCF, 0x07, 0x04, 0xFC,  //  ..A....
                /* 1D28 */  0x40, 0x8F, 0xF3, 0xF0, 0x8E, 0x84, 0x49, 0x82,  // @.....I.
                /* 1D30 */  0x43, 0x9D, 0x01, 0x3C, 0x92, 0xE6, 0x4F, 0x33,  // C..<..O3
                /* 1D38 */  0x64, 0xC2, 0x9E, 0x4A, 0x48, 0x26, 0x6D, 0x48,  // d..JH&mH
                /* 1D40 */  0xA8, 0xB3, 0x22, 0x99, 0x90, 0xA6, 0xF3, 0xEA,  // ..".....
                /* 1D48 */  0x10, 0xF1, 0x49, 0xD1, 0x30, 0x09, 0x3C, 0x7A,  // ..I.0.<z
                /* 1D50 */  0x86, 0xC6, 0x09, 0x06, 0x18, 0x1F, 0x68, 0x4E,  // ......hN
                /* 1D58 */  0x07, 0xC7, 0x7F, 0x2E, 0xD1, 0x22, 0x9C, 0x73,  // .....".s
                /* 1D60 */  0xBC, 0x50, 0x86, 0x0B, 0xF4, 0xAC, 0xE0, 0x13,  // .P......
                /* 1D68 */  0x3D, 0xC3, 0x0A, 0x7E, 0x10, 0xAF, 0x01, 0x0C,  // =..~....
                /* 1D70 */  0x26, 0x50, 0x14, 0x8F, 0xC6, 0x90, 0xAF, 0x02,  // &P......
                /* 1D78 */  0x0C, 0xAA, 0xD5, 0xDB, 0x82, 0xC0, 0x0D, 0x6B,  // .......k
                /* 1D80 */  0xA0, 0x60, 0x86, 0x38, 0x3A, 0xEC, 0x30, 0x0D,  // .`.8:.0.
                /* 1D88 */  0xE9, 0x81, 0x3C, 0x67, 0xF8, 0x1E, 0x60, 0x82,  // ..<g..`.
                /* 1D90 */  0x13, 0x7E, 0x66, 0x28, 0xF7, 0xCE, 0x2F, 0xF1,  // .~f(../.
                /* 1D98 */  0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0xC0, 0x85, 0xC6,  // ..h.....
                /* 1DA0 */  0x1C, 0x0A, 0x3C, 0x89, 0xB7, 0x09, 0x1F, 0x0E,  // ..<.....
                /* 1DA8 */  0x98, 0xFB, 0x09, 0xEA, 0x02, 0xF1, 0x0C, 0x11,  // ........
                /* 1DB0 */  0xE3, 0xAD, 0xC8, 0x08, 0x35, 0x0A, 0xB0, 0x85,  // ....5...
                /* 1DB8 */  0x4E, 0x10, 0x8C, 0x12, 0x84, 0xA1, 0x70, 0xCC,  // N.....p.
                /* 1DC0 */  0x28, 0x9E, 0xE6, 0x59, 0x04, 0xA9, 0x4D, 0x80,  // (..Y..M.
                /* 1DC8 */  0x32, 0x10, 0x19, 0x43, 0x44, 0x20, 0xB4, 0x3F,  // 2..CD .?
                /* 1DD0 */  0x08, 0x22, 0xE1, 0x31, 0xA1, 0x73, 0x81, 0x23,  // .".1.s.#
                /* 1DD8 */  0x8D, 0x06, 0x75, 0xC4, 0xF0, 0xD9, 0xE0, 0xFF,  // ..u.....
                /* 1DE0 */  0xFF, 0x14, 0xE1, 0x39, 0x1E, 0xF4, 0x21, 0x1A,  // ...9..!.
                /* 1DE8 */  0xE4, 0xE8, 0x0E, 0xAE, 0xCE, 0x43, 0x01, 0x19,  // .....C..
                /* 1DF0 */  0x1E, 0x3B, 0x8E, 0xF8, 0x6C, 0xE1, 0x53, 0x02,  // .;..l.S.
                /* 1DF8 */  0xDE, 0x35, 0xA0, 0xAE, 0x07, 0x8F, 0x13, 0x60,  // .5.....`
                /* 1E00 */  0x19, 0xD1, 0xB3, 0x08, 0xEC, 0xF1, 0xF8, 0x68,  // .......h
                /* 1E08 */  0xE0, 0x53, 0x80, 0x09, 0x2C, 0x7F, 0x10, 0xA8,  // .S..,...
                /* 1E10 */  0x91, 0x19, 0xDA, 0x23, 0x3D, 0xAD, 0x37, 0x04,  // ...#=.7.
                /* 1E18 */  0x9F, 0x0B, 0x4C, 0x60, 0xB1, 0x27, 0x54, 0x3A,  // ..L`.'T:
                /* 1E20 */  0x1E, 0xF0, 0x9F, 0xB5, 0x1E, 0x0D, 0x22, 0xBC,  // ......".
                /* 1E28 */  0x19, 0x78, 0xBE, 0x3E, 0xDB, 0x30, 0x27, 0x27,  // .x.>.0''
                /* 1E30 */  0x1B, 0xF4, 0x65, 0x01, 0x43, 0x30, 0xF0, 0x09,  // ..e.C0..
                /* 1E38 */  0x85, 0x8A, 0x3A, 0xA1, 0xA0, 0x4E, 0x16, 0x3E,  // ..:..N.>
                /* 1E40 */  0x54, 0xB0, 0xBB, 0xC1, 0x43, 0x03, 0x3B, 0xA0,  // T...C.;.
                /* 1E48 */  0xB0, 0x53, 0x0F, 0x39, 0x95, 0x80, 0xFE, 0x3C,  // .S.9...<
                /* 1E50 */  0x83, 0x3B, 0x66, 0xC0, 0xBD, 0x55, 0xE0, 0x66,  // .;f..U.f
                /* 1E58 */  0xC4, 0x8F, 0xBF, 0xE4, 0xA8, 0x03, 0x82, 0xFF,  // ........
                /* 1E60 */  0xFF, 0x51, 0x87, 0x39, 0x3B, 0x3E, 0xE8, 0x18,  // .Q.9;>..
                /* 1E68 */  0xC0, 0xCF, 0x3A, 0xF0, 0x6F, 0x4C, 0x31, 0xC2,  // ..:.oL1.
                /* 1E70 */  0x3C, 0x49, 0xC4, 0x8A, 0x71, 0x38, 0xE7, 0x72,  // <I..q8.r
                /* 1E78 */  0x12, 0xEF, 0x4D, 0x55, 0xC2, 0x08, 0xB2, 0xCB,  // ..MU....
                /* 1E80 */  0x1B, 0x0F, 0x39, 0x24, 0x79, 0x48, 0xE7, 0xF1,  // ..9$yH..
                /* 1E88 */  0x08, 0xC2, 0x09, 0x3C, 0x44, 0xFC, 0x30, 0xF8,  // ...<D.0.
                /* 1E90 */  0x59, 0xE2, 0xE1, 0x87, 0x4D, 0xE2, 0xFD, 0xC7,  // Y...M...
                /* 1E98 */  0x13, 0x38, 0x2A, 0x9F, 0x52, 0x8C, 0x10, 0xFC,  // .8*.R...
                /* 1EA0 */  0xE1, 0xE3, 0x9C, 0xDF, 0x02, 0x4C, 0xE0, 0xEB,  // .....L..
                /* 1EA8 */  0x91, 0x4F, 0xB8, 0x88, 0x01, 0xA0, 0xC0, 0x4F,  // .O.....O
                /* 1EB0 */  0xE8, 0x14, 0x7D, 0x16, 0x3A, 0x31, 0xDC, 0xA1,  // ..}.:1..
                /* 1EB8 */  0x80, 0x8F, 0x08, 0x3B, 0x00, 0x7E, 0xBE, 0x01,  // ...;.~..
                /* 1EC0 */  0xD8, 0xF0, 0xFF, 0x3F, 0xDF, 0x00, 0xD7, 0xD3,  // ...?....
                /* 1EC8 */  0xC3, 0xF3, 0x0D, 0xC0, 0xC8, 0xFF, 0xFF, 0xF9,  // ........
                /* 1ED0 */  0x06, 0xF0, 0x3E, 0x81, 0x60, 0x8F, 0x37, 0xE7,  // ..>.`.7.
                /* 1ED8 */  0x70, 0x3E, 0xCF, 0x2F, 0x8F, 0x16, 0x51, 0x42,  // p>./..QB
                /* 1EE0 */  0x44, 0x89, 0x13, 0x21, 0xCA, 0x13, 0x44, 0x3C,  // D..!..D<
                /* 1EE8 */  0x5F, 0x5F, 0x30, 0xE7, 0x1B, 0xC0, 0x45, 0xB4,  // __0...E.
                /* 1EF0 */  0xC3, 0x0D, 0x2A, 0xCC, 0xF9, 0x06, 0x48, 0xFC,  // ..*...H.
                /* 1EF8 */  0xFF, 0xCF, 0x37, 0x00, 0x4F, 0x4E, 0x12, 0xCF,  // ..7.ON..
                /* 1F00 */  0x37, 0xE0, 0x8C, 0xFF, 0x54, 0xD1, 0xF9, 0x06,  // 7...T...
                /* 1F08 */  0xB0, 0xF3, 0xFF, 0x3F, 0xDF, 0x00, 0x2C, 0xC4,  // ...?..,.
                /* 1F10 */  0x7A, 0xBE, 0x01, 0xD7, 0xB9, 0xE2, 0xE9, 0xE5,  // z.......
                /* 1F18 */  0xD1, 0xE6, 0xCD, 0xC2, 0x80, 0xF1, 0x3C, 0x8C,  // ......<.
                /* 1F20 */  0x97, 0x1B, 0xEC, 0xE9, 0x06, 0x5C, 0xFF, 0xFF,  // .....\..
                /* 1F28 */  0xC3, 0x20, 0xC0, 0xED, 0x7B, 0xC4, 0xD3, 0x0D,  // . ..{...
                /* 1F30 */  0x18, 0xFE, 0xFF, 0x87, 0x41, 0x80, 0xFF, 0xFF,  // ....A...
                /* 1F38 */  0xFF, 0xC3, 0x20, 0xF0, 0x3C, 0xDC, 0x04, 0x7B,  // .. .<..{
                /* 1F40 */  0x9A, 0xF1, 0xE5, 0xE1, 0x18, 0x02, 0xBE, 0x0B,  // ........
                /* 1F48 */  0xC2, 0x3C, 0xDF, 0x00, 0x36, 0x14, 0xDA, 0xF4,  // .<..6...
                /* 1F50 */  0xA9, 0xD1, 0xA8, 0x55, 0x83, 0x32, 0x35, 0xCA,  // ...U.25.
                /* 1F58 */  0x34, 0xA8, 0xD5, 0xA7, 0x52, 0x63, 0xC6, 0xCA,  // 4...Rc..
                /* 1F60 */  0x3F, 0x0D, 0x14, 0xE9, 0x0D, 0xA1, 0x43, 0x82,  // ?.....C.
                /* 1F68 */  0xE3, 0xBE, 0x13, 0x04, 0xE2, 0xD0, 0x6F, 0x0F,  // ......o.
                /* 1F70 */  0x81, 0x58, 0xCC, 0xBB, 0x40, 0x20, 0x16, 0xAB,  // .X..@ ..
                /* 1F78 */  0x03, 0x84, 0x49, 0x36, 0x02, 0xC2, 0xA4, 0x2A,  // ..I6...*
                /* 1F80 */  0x01, 0x61, 0xE2, 0xDF, 0x0E, 0x02, 0x71, 0x04,  // .a....q.
                /* 1F88 */  0x2D, 0x20, 0x4C, 0xBA, 0x17, 0x10, 0x16, 0x66,  // - L....f
                /* 1F90 */  0xA5, 0x02, 0x71, 0x24, 0x37, 0x20, 0x2C, 0xCA,  // ..q$7 ,.
                /* 1F98 */  0xEA, 0x04, 0xE2, 0x70, 0x76, 0x40, 0x58, 0xFC,  // ...pv@X.
                /* 1FA0 */  0xE7, 0x82, 0x40, 0x2C, 0xE2, 0xD1, 0x23, 0x10,  // ..@,..#.
                /* 1FA8 */  0x87, 0x07, 0xA1, 0x72, 0x34, 0x81, 0x30, 0x49,  // ...r4.0I
                /* 1FB0 */  0xA6, 0x40, 0x98, 0x40, 0x59, 0x20, 0x4C, 0xA2,  // .@.@Y L.
                /* 1FB8 */  0x2F, 0x10, 0x26, 0xE5, 0x67, 0x20, 0x10, 0x07,  // /.&.g ..
                /* 1FC0 */  0x01, 0xA1, 0x32, 0x9E, 0x33, 0xDA, 0x94, 0x0E,  // ..2.3...
                /* 1FC8 */  0x15, 0x41, 0x34, 0x34, 0xF2, 0x60, 0x09, 0xA4,  // .A44.`..
                /* 1FD0 */  0xFF, 0xFF, 0x90, 0x04, 0x22, 0x20, 0xC7, 0x10,  // ...." ..
                /* 1FD8 */  0x07, 0xC4, 0x42, 0x81, 0x08, 0xC8, 0x01, 0xD5,  // ..B.....
                /* 1FE0 */  0x01, 0xB1, 0xB8, 0x20, 0x02, 0x72, 0x74, 0x79,  // ... .rty
                /* 1FE8 */  0x40, 0x4C, 0x88, 0xBD, 0xE1, 0x50, 0x7F, 0x40,  // @L...P.@
                /* 1FF0 */  0x4C, 0x20, 0x88, 0x80, 0x2C, 0xF7, 0x13, 0x10,  // L ..,...
                /* 1FF8 */  0x88, 0x88, 0x07, 0xD1, 0x70, 0xC8, 0x4F, 0x20,  // ....p.O 
                /* 2000 */  0x10, 0x89, 0x05, 0x22, 0x20, 0xC7, 0x7B, 0x1C,  // ..." .{.
                /* 2008 */  0x08, 0xC8, 0x61, 0x41, 0x04, 0xE4, 0xC0, 0xEF,  // ..aA....
                /* 2010 */  0x86, 0x40, 0x24, 0x3D, 0x88, 0x80, 0x9C, 0x5E,  // .@$=...^
                /* 2018 */  0x24, 0x10, 0xD3, 0xF2, 0x60, 0x12, 0x90, 0x55,  // $...`..U
                /* 2020 */  0xFD, 0xE1, 0x03, 0x11, 0x8D, 0x20, 0x02, 0xB2,  // ..... ..
                /* 2028 */  0xCE, 0xF7, 0x42, 0x20, 0x22, 0x1A, 0x44, 0x40,  // ..B ".D@
                /* 2030 */  0x16, 0xFD, 0x68, 0x08, 0x44, 0x22, 0x80, 0xE8,  // ..h.D"..
                /* 2038 */  0x08, 0x40, 0x5E, 0x60, 0x02, 0x72, 0x34, 0x10,  // .@^`.r4.
                /* 2040 */  0x1D, 0x07, 0x88, 0x51, 0x20, 0x26, 0x1C, 0x44,  // ...Q &.D
                /* 2048 */  0x83, 0x26, 0xCF, 0x85, 0x40, 0x44, 0x18, 0x88,  // .&..@D..
                /* 2050 */  0x80, 0x2C, 0xEC, 0x3F, 0x11, 0x88, 0xC8, 0x04,  // .,.?....
                /* 2058 */  0x11, 0x90, 0x65, 0x6A, 0x1D, 0x08, 0x05, 0x11,  // ..ej....
                /* 2060 */  0x90, 0x65, 0x3F, 0x34, 0x04, 0xE4, 0x10, 0x20,  // .e?4... 
                /* 2068 */  0x1A, 0x38, 0x51, 0x3B, 0x70, 0x0A, 0x22, 0x20,  // .8Q;p." 
                /* 2070 */  0xC7, 0x7A, 0x4D, 0x04, 0x22, 0x21, 0x41, 0x04,  // .zM."!A.
                /* 2078 */  0xE4, 0x9C, 0x7A, 0x81, 0x58, 0x68, 0x10, 0x01,  // ..z.Xh..
                /* 2080 */  0x59, 0xFE, 0x67, 0x22, 0x10, 0xC9, 0x02, 0xA2,  // Y.g"....
                /* 2088 */  0x41, 0x13, 0xC1, 0x83, 0xA6, 0x20, 0x02, 0x72,  // A.... .r
                /* 2090 */  0xC6, 0x47, 0x4C, 0x20, 0x12, 0x18, 0x44, 0x87,  // .GL ..D.
                /* 2098 */  0x06, 0xF2, 0xCA, 0x12, 0x90, 0x73, 0x80, 0x08,  // .....s..
                /* 20A0 */  0xC8, 0x21, 0xBE, 0x2B, 0x02, 0x72, 0x24, 0x10,  // .!.+.r$.
                /* 20A8 */  0x01, 0x39, 0xA4, 0x66, 0x20, 0x16, 0x19, 0x44,  // .9.f ..D
                /* 20B0 */  0x40, 0xCE, 0x2C, 0x1A, 0x88, 0xFD, 0x36, 0x7C,  // @.,...6|
                /* 20B8 */  0x7C, 0x20, 0x20, 0x02, 0x72, 0x2E, 0x20, 0xAA,  // |  .r. .
                /* 20C0 */  0x50, 0x35, 0x10, 0x93, 0x0B, 0x22, 0x20, 0x6B,  // P5..." k
                /* 20C8 */  0x7D, 0x12, 0x05, 0x22, 0xCA, 0x41, 0x34, 0x28,  // }..".A4(
                /* 20D0 */  0xF2, 0xDB, 0x08, 0xA4, 0xFF, 0x3F, 0xC1, 0x54,  // .....?.T
                /* 20D8 */  0x20, 0x02, 0xB2, 0xBE, 0x77, 0x8B, 0x80, 0x2C,  //  ...w..,
                /* 20E0 */  0x16, 0x44, 0x40, 0x56, 0xFA, 0x0C, 0x09, 0x44,  // .D@V...D
                /* 20E8 */  0x74, 0x83, 0x68, 0x50, 0xC4, 0x38, 0x10, 0x4B,  // t.hP.8.K
                /* 20F0 */  0x04, 0x22, 0x20, 0x6B, 0xFB, 0x87, 0x09, 0xC8,  // ." k....
                /* 20F8 */  0x42, 0x41, 0x04, 0xE4, 0xC4, 0x40, 0x34, 0x3E,  // BA...@4>
                /* 2100 */  0x10, 0x0D, 0xF2, 0x9E, 0x39, 0x10, 0x06, 0xA2,  // ....9...
                /* 2108 */  0x83, 0x06, 0xF9, 0x86, 0x08, 0xC8, 0x01, 0x41,  // .......A
                /* 2110 */  0x04, 0xE4, 0xAC, 0x6F, 0x32, 0x01, 0x39, 0x38,  // ...o2.98
                /* 2118 */  0x88, 0x8E, 0x1D, 0xE4, 0x83, 0x12, 0x88, 0xE4,  // ........
                /* 2120 */  0x01, 0xD1, 0xC1, 0x80, 0x3C, 0xB8, 0x02, 0x11,  // ....<...
                /* 2128 */  0x95, 0x20, 0x3A, 0x66, 0x90, 0x17, 0x94, 0x80,  // . :f....
                /* 2130 */  0x2C, 0x18, 0x44, 0x40, 0x56, 0xFF, 0xDC, 0x0A,  // ,.D@V...
                /* 2138 */  0x44, 0xA2, 0x80, 0x08, 0xC8, 0xA2, 0xDE, 0x4C,  // D......L
                /* 2140 */  0x02, 0xB2, 0x42, 0x10, 0x01, 0x39, 0x2A, 0x10,  // ..B..9*.
                /* 2148 */  0xCD, 0x0D, 0x44, 0x13, 0xFC, 0xB3, 0x04, 0xE4,  // ..D.....
                /* 2150 */  0x38, 0x20, 0x3A, 0x3C, 0x10, 0xFD, 0x87, 0x07,  // 8 :<....
                /* 2158 */  0x0A, 0x22, 0x20, 0xA7, 0x7C, 0xB6, 0xE9, 0x20,  // ." .|.. 
                /* 2160 */  0x40, 0x40, 0x74, 0x38, 0x21, 0x05, 0x80, 0x58,  // @@t8!..X
                /* 2168 */  0x12, 0x10, 0x1D, 0x36, 0x48, 0x02, 0x20, 0xA6,  // ...6H. .
                /* 2170 */  0x0F, 0x44, 0x40, 0x16, 0xD7, 0x00, 0x88, 0x49,  // .D@....I
                /* 2178 */  0x05, 0x11, 0x90, 0x75, 0x57, 0x38, 0x3C, 0x50,  // ...uW8<P
                /* 2180 */  0x10, 0x1D, 0x4C, 0x48, 0x06, 0x20, 0xA6, 0x0D,  // ..LH. ..
                /* 2188 */  0x44, 0x07, 0x04, 0x02, 0x44, 0x13, 0x03, 0xD1,  // D...D...
                /* 2190 */  0x24, 0x1D, 0x0E, 0x0D, 0x14, 0x44, 0x40, 0xCE,  // $....D@.
                /* 2198 */  0x14, 0x02, 0x88, 0x25, 0x04, 0xD1, 0x41, 0x86,  // ...%..A.
                /* 21A0 */  0xA4, 0x00, 0x62, 0xD9, 0x41, 0x04, 0xE4, 0x14,  // ..b.A...
                /* 21A8 */  0x2D, 0x0E, 0x0D, 0x14, 0x44, 0x07, 0x02, 0x12,  // -...D...
                /* 21B0 */  0xE3, 0x40, 0x40, 0x41, 0x04, 0x64, 0x95, 0x35,  // .@@A.d.5
                /* 21B8 */  0x80, 0x98, 0x66, 0x10, 0x1D, 0x2E, 0x48, 0x0F,  // ..f...H.
                /* 21C0 */  0x20, 0x96, 0x09, 0x44, 0x40, 0x56, 0x17, 0x64,  //  ..D@V.d
                /* 21C8 */  0x70, 0x14, 0x44, 0x07, 0x08, 0x02, 0x44, 0xFE,  // p.D...D.
                /* 21D0 */  0xFF, 0x04, 0x2A, 0x02, 0xC4, 0x82, 0x81, 0x08,  // ..*.....
                /* 21D8 */  0xC8, 0x29, 0x81, 0x68, 0xC4, 0x24, 0x07, 0x0B,  // .).h.$..
                /* 21E0 */  0x0A, 0xA2, 0x03, 0x0B, 0x89, 0x02, 0xC4, 0x74,  // .......t
                /* 21E8 */  0x54, 0x01, 0x62, 0x3A, 0xB2, 0x00, 0x31, 0x55,  // T.b:..1U
                /* 21F0 */  0x20, 0x02, 0xB2, 0xAE, 0x30, 0x87, 0x03, 0x0A,  //  ...0...
                /* 21F8 */  0x22, 0x20, 0xA7, 0x06, 0xA2, 0x1A, 0xCA, 0x00,  // " ......
                /* 2200 */  0x31, 0x05, 0x6D, 0x80, 0x98, 0x1C, 0x10, 0x0D,  // 1.m.....
                /* 2208 */  0x9C, 0xC4, 0x01, 0x62, 0xE2, 0x40, 0x74, 0x50,  // ...b.@tP
                /* 2210 */  0x20, 0x79, 0x0E, 0x0A, 0x14, 0x44, 0x87, 0x2F,  //  y...D./
                /* 2218 */  0xD2, 0x07, 0x98, 0x82, 0x08, 0x98, 0x14, 0x3A,  // .......:
                /* 2220 */  0x04, 0x50, 0x10, 0x0D, 0x98, 0x24, 0x02, 0x62,  // .P...$.b
                /* 2228 */  0x4A, 0x41, 0x04, 0x64, 0xBD, 0x8F, 0x3B, 0x01,  // JA.d..;.
                /* 2230 */  0x59, 0x3D, 0x88, 0x80, 0xAC, 0xA6, 0x12, 0x30,  // Y=.....0
                /* 2238 */  0x05, 0x11, 0x90, 0xD5, 0x76, 0x02, 0x62, 0xDA,  // ....v.b.
                /* 2240 */  0x41, 0x74, 0x18, 0x21, 0xA5, 0x0E, 0x23, 0x14,  // At.!..#.
                /* 2248 */  0x44, 0x87, 0x19, 0x92, 0x0A, 0x88, 0x49, 0x04,  // D.....I.
                /* 2250 */  0xD1, 0x81, 0x80, 0x00, 0xD1, 0xEC, 0x40, 0x34,  // ......@4
                /* 2258 */  0x47, 0xAB, 0x03, 0x0B, 0x05, 0x11, 0x90, 0x43,  // G......C
                /* 2260 */  0xC5, 0x02, 0x62, 0x11, 0x41, 0x34, 0x78, 0x92,  // ..b.A4x.
                /* 2268 */  0x6B, 0xF0, 0x14, 0x44, 0x87, 0x0C, 0xD2, 0x0B,  // k..D....
                /* 2270 */  0x88, 0x05, 0x02, 0xD1, 0xC1, 0x88, 0x04, 0x3B,  // .......;
                /* 2278 */  0x94, 0x50, 0x10, 0x1D, 0x93, 0x08, 0x10, 0x15,  // .P......
                /* 2280 */  0x53, 0xEC, 0xB0, 0x44, 0x41, 0x04, 0xE4, 0xA8,  // S..DA...
                /* 2288 */  0x40, 0x34, 0x67, 0xB3, 0x43, 0x0C, 0x05, 0xD1,  // @4g.C...
                /* 2290 */  0x20, 0x48, 0xB4, 0x83, 0x07, 0x05, 0xD1, 0x80,  //  H......
                /* 2298 */  0x49, 0xB5, 0x03, 0x03, 0x05, 0xD1, 0x91, 0x8A,  // I.......
                /* 22A0 */  0x00, 0x51, 0x05, 0xD9, 0x0E, 0x03, 0xB4, 0x1B,  // .Q......
                /* 22A8 */  0x10, 0xD3, 0x03, 0x22, 0x20, 0x6B, 0x2A, 0x77,  // ..." k*w
                /* 22B0 */  0xF0, 0xA0, 0x20, 0x3A, 0x30, 0x10, 0x20, 0xF2,  // .. :0. .
                /* 22B8 */  0xFF, 0x07, 0x55, 0x3A, 0x20, 0x96, 0x08, 0x44,  // ..U: ..D
                /* 22C0 */  0x40, 0xCE, 0x07, 0x44, 0xF5, 0xB6, 0x3B, 0x04,  // @..D..;.
                /* 22C8 */  0x50, 0x10, 0x1D, 0x02, 0x48, 0xBC, 0x43, 0x00,  // P...H.C.
                /* 22D0 */  0x05, 0x11, 0x90, 0xA5, 0xE5, 0x03, 0x62, 0x3A,  // ......b:
                /* 22D8 */  0x41, 0x74, 0x58, 0x20, 0x40, 0x54, 0x42, 0x3F,  // AtX @TB?
                /* 22E0 */  0x20, 0x16, 0x07, 0x44, 0x40, 0xCE, 0x06, 0x44,  //  ..D@..D
                /* 22E8 */  0x75, 0x06, 0x3C, 0x08, 0x51, 0x10, 0x1D, 0x90,  // u.<.Q...
                /* 22F0 */  0x48, 0xC1, 0x03, 0x12, 0x05, 0xD1, 0xE1, 0x82,  // H.......
                /* 22F8 */  0x34, 0x3C, 0x08, 0x50, 0x10, 0x1D, 0x8A, 0x48,  // 4<.P...H
                /* 2300 */  0x44, 0x60, 0x0A, 0xA2, 0x03, 0x17, 0xA9, 0x08,  // D`......
                /* 2308 */  0xC4, 0x24, 0x81, 0xE8, 0x30, 0x40, 0x80, 0x68,  // .$..0@.h
                /* 2310 */  0x60, 0x20, 0x1A, 0x20, 0xE3, 0x41, 0x85, 0x82,  // ` . .A..
                /* 2318 */  0x68, 0x90, 0x24, 0x24, 0x10, 0x8B, 0x07, 0xA2,  // h.$$....
                /* 2320 */  0xC3, 0x16, 0x29, 0x79, 0xE0, 0xA1, 0x20, 0x02,  // ..)y.. .
                /* 2328 */  0xB2, 0x8A, 0x94, 0x83, 0xA0, 0x20, 0x3A, 0x58,  // ..... :X
                /* 2330 */  0x11, 0x20, 0x9A, 0x15, 0x88, 0xEA, 0x6E, 0x79,  // . ....ny
                /* 2338 */  0x48, 0xA1, 0x20, 0x02, 0xB2, 0x9E, 0x98, 0x87,  // H. .....
                /* 2340 */  0x0B, 0x0A, 0xA2, 0x03, 0x01, 0xA9, 0x79, 0xA0,  // ......y.
                /* 2348 */  0xA0, 0x20, 0x02, 0xB2, 0xE2, 0x9E, 0x40, 0x4C,  // . ....@L
                /* 2350 */  0x3F, 0x88, 0x80, 0xAC, 0x28, 0xE8, 0xE1, 0x85,  // ?...(...
                /* 2358 */  0x82, 0x08, 0xC8, 0x79, 0x81, 0x68, 0x7A, 0x20,  // ...y.hz 
                /* 2360 */  0x9A, 0xA6, 0xE8, 0xC0, 0x29, 0x88, 0x0E, 0x46,  // ....)..F
                /* 2368 */  0x24, 0xE9, 0xC0, 0x28, 0x88, 0x0E, 0x22, 0xA4,  // $..(..".
                /* 2370 */  0xE9, 0x41, 0x84, 0x82, 0xE8, 0xF0, 0x44, 0x80,  // .A....D.
                /* 2378 */  0x68, 0x62, 0x20, 0x9A, 0xB8, 0xEA, 0x61, 0x88,  // hb ...a.
                /* 2380 */  0x82, 0xE8, 0x10, 0x41, 0xB2, 0x1E, 0x22, 0x68,  // ...A.."h
                /* 2388 */  0xD7, 0xC3, 0x07, 0x2D, 0x3B, 0x38, 0x0A, 0x22,  // ...-;8."
                /* 2390 */  0x20, 0x87, 0x05, 0xA2, 0xD1, 0x81, 0x68, 0xF0,  //  .....h.
                /* 2398 */  0xB6, 0x40, 0xFE, 0xFF, 0x0F, 0x59, 0x71, 0x07,  // .@...Yq.
                /* 23A0 */  0x4D, 0xEB, 0x02, 0x31, 0x4D, 0x20, 0x02, 0xB2,  // M..1M ..
                /* 23A8 */  0xB2, 0xBE, 0x07, 0x05, 0x0A, 0x22, 0x20, 0xE7,  // ....." .
                /* 23B0 */  0x06, 0xA2, 0x2A, 0x9E, 0x99, 0x02, 0x26, 0x89,  // ..*...&.
                /* 23B8 */  0x0F, 0x00, 0x14, 0x44, 0x07, 0x1F, 0xD2, 0xF8,  // ...D....
                /* 23C0 */  0xD0, 0x46, 0x41, 0x74, 0x40, 0x20, 0x95, 0x0F,  // .FAt@ ..
                /* 23C8 */  0x08, 0x14, 0x44, 0x07, 0x04, 0x92, 0x19, 0x98,  // ..D.....
                /* 23D0 */  0x82, 0x08, 0xC8, 0xB2, 0x42, 0x1F, 0xD4, 0x28,  // ....B..(
                /* 23D8 */  0x88, 0x06, 0x4E, 0x80, 0x68, 0x78, 0x20, 0x9A,  // ..N.hx .
                /* 23E0 */  0xA3, 0xF4, 0xA1, 0x81, 0x82, 0xE8, 0xE0, 0x43,  // .......C
                /* 23E8 */  0x52, 0x1F, 0x7C, 0x28, 0x88, 0x0E, 0x50, 0x24,  // R.|(..P$
                /* 23F0 */  0x36, 0x10, 0x4B, 0x0E, 0xA2, 0x43, 0x10, 0xA9,  // 6.K..C..
                /* 23F8 */  0x7D, 0xE0, 0xA2, 0x20, 0x3A, 0xF4, 0x90, 0xDC,  // }.. :...
                /* 2400 */  0x87, 0x1E, 0x0A, 0xA2, 0x43, 0x07, 0xE9, 0x7D,  // ....C..}
                /* 2408 */  0xE8, 0xA0, 0x20, 0x3A, 0xF4, 0x90, 0xE2, 0x40,  // .. :...@
                /* 2410 */  0x4C, 0x2B, 0x88, 0x0E, 0x08, 0xA4, 0xF9, 0x01,  // L+......
                /* 2418 */  0x81, 0x82, 0xE8, 0x30, 0x44, 0xAA, 0x1F, 0x80,  // ...0D...
                /* 2420 */  0x28, 0x88, 0x80, 0x9C, 0xAA, 0x3B, 0x10, 0xCB,  // (....;..
                /* 2428 */  0x08, 0xA2, 0x83, 0x09, 0x29, 0x0F, 0xC4, 0x52,  // ....)..R
                /* 2430 */  0x83, 0x08, 0xC8, 0xC9, 0xDB, 0x1F, 0x7C, 0x68,  // ......|h
                /* 2438 */  0x7C, 0x20, 0xA6, 0x25, 0x3F, 0x10, 0x53, 0x06,  // | .%?.S.
                /* 2440 */  0xA2, 0x83, 0x18, 0xB9, 0xA9, 0x0A, 0xC8, 0xFF,  // ........
                /* 2448 */  0xB7, 0x20, 0x81, 0xAC, 0x59, 0x01, 0x10, 0x4B,  // . ..Y..K
                /* 2450 */  0x00, 0xA2, 0xC1, 0x10, 0x09, 0x40, 0x2C, 0x13,  // .....@,.
                /* 2458 */  0x88, 0x80, 0x9C, 0x4B, 0x03, 0x10, 0x0B, 0x09,  // ...K....
                /* 2460 */  0xA2, 0x03, 0x03, 0xF1, 0x00, 0xC4, 0x12, 0x83,  // ........
                /* 2468 */  0xE8, 0x30, 0x42, 0x4C, 0x00, 0x31, 0x09, 0x2A,  // .0BL.1.*
                /* 2470 */  0x80, 0x58, 0x1A, 0x10, 0x1D, 0xB2, 0x08, 0x10,  // .X......
                /* 2478 */  0x4D, 0xE6, 0x02, 0x88, 0xE5, 0x04, 0x11, 0x90,  // M.......
                /* 2480 */  0x35, 0xE8, 0x00, 0x62, 0x8A, 0x40, 0x04, 0xE4,  // 5..b.@..
                /* 2488 */  0x7C, 0x40, 0xE4, 0xFF, 0x4F, 0x30, 0x2D, 0x10,  // |@..O0-.
                /* 2490 */  0xD5, 0xEE, 0x03, 0x88, 0x25, 0x01, 0xD1, 0x21,  // ....%..!
                /* 2498 */  0x80, 0x18, 0x01, 0x62, 0xB1, 0x40, 0x74, 0xD8,  // ...b.@t.
                /* 24A0 */  0x23, 0x4A, 0x06, 0x45, 0x41, 0x74, 0x10, 0x23,  // #J.EAt.#
                /* 24A8 */  0x52, 0x80, 0x58, 0x70, 0x10, 0x1D, 0xD6, 0x88,  // R.Xp....
                /* 24B0 */  0x15, 0x60, 0x0A, 0xA2, 0x43, 0x0E, 0xF1, 0x02,  // .`..C...
                /* 24B8 */  0xC4, 0xA2, 0x82, 0x08, 0xC8, 0x91, 0xCD, 0x00,  // ........
                /* 24C0 */  0xB1, 0xFC, 0x20, 0x1A, 0x08, 0x51, 0x03, 0x4C,  // .. ..Q.L
                /* 24C8 */  0x41, 0x34, 0x10, 0xE2, 0x66, 0x20, 0x14, 0x44,  // A4..f .D
                /* 24D0 */  0x07, 0x22, 0x62, 0x07, 0x88, 0x65, 0x07, 0xD1,  // ."b..e..
                /* 24D8 */  0xC0, 0x89, 0x1E, 0x20, 0x16, 0x09, 0x44, 0x87,  // ... ..D.
                /* 24E0 */  0x38, 0xE2, 0x07, 0x88, 0x05, 0x04, 0xD1, 0xA1,  // 8.......
                /* 24E8 */  0x85, 0x18, 0x02, 0x62, 0x79, 0x41, 0x74, 0x88,  // ...byAt.
                /* 24F0 */  0x20, 0x8A, 0x80, 0x58, 0x7A, 0x10, 0x1D, 0x2E,  //  ..Xz...
                /* 24F8 */  0x88, 0x25, 0x20, 0x26, 0x09, 0x44, 0x03, 0x23,  // .% &.D.#
                /* 2500 */  0x40, 0x34, 0x29, 0x10, 0x4D, 0xAA, 0x09, 0x88,  // @4).M...
                /* 2508 */  0xE5, 0x06, 0x11, 0x90, 0xF3, 0x8B, 0x02, 0x62,  // .......b
                /* 2510 */  0x62, 0x4C, 0x0D, 0x8C, 0x82, 0xE8, 0xC0, 0x40,  // bL.....@
                /* 2518 */  0x80, 0x68, 0x46, 0x55, 0x87, 0x02, 0x0A, 0xA2,  // .hFU....
                /* 2520 */  0x43, 0x09, 0x91, 0x05, 0xC4, 0xE2, 0x83, 0xE8,  // C.......
                /* 2528 */  0x50, 0x42, 0x6C, 0x0D, 0x80, 0xEA, 0x02, 0x62,  // PBl....b
                /* 2530 */  0x82, 0x84, 0x01, 0x31, 0x79, 0x20, 0x1A, 0x28,  // ...1y .(
                /* 2538 */  0x01, 0xA2, 0xE1, 0x81, 0x68, 0x78, 0x65, 0x40,  // ....hxe@
                /* 2540 */  0x4C, 0x8A, 0x33, 0x20, 0x16, 0x0D, 0x44, 0x40,  // L.3 ..D@
                /* 2548 */  0x0E, 0x0A, 0x44, 0xE3, 0x5A, 0x03, 0xA6, 0x20,  // ..D.Z.. 
                /* 2550 */  0x02, 0xB2, 0x04, 0x71, 0x40, 0x4C, 0x0F, 0x88,  // ...q@L..
                /* 2558 */  0x0E, 0x2B, 0xC4, 0x1C, 0x10, 0x13, 0x07, 0xA2,  // .+......
                /* 2560 */  0x03, 0x09, 0x71, 0x07, 0xC4, 0x44, 0x83, 0x08,  // ..q..D..
                /* 2568 */  0x98, 0xC8, 0x03, 0x62, 0x82, 0x40, 0x74, 0xF8,  // ...b.@t.
                /* 2570 */  0x23, 0xFA, 0x80, 0xFC, 0xFF, 0x3F, 0x34, 0x09,  // #....?4.
                /* 2578 */  0x44, 0x07, 0x2B, 0xE2, 0x0F, 0x88, 0xC9, 0x05,  // D.+.....
                /* 2580 */  0x11, 0x90, 0x85, 0x1B, 0x04, 0x62, 0x31, 0x40,  // .....b1@
                /* 2588 */  0x74, 0xF8, 0x23, 0x0E, 0x81, 0x58, 0x32, 0x10,  // t.#..X2.
                /* 2590 */  0x0D, 0x8C, 0x48, 0x1C, 0x18, 0x05, 0xD1, 0x41,  // ..H....A
                /* 2598 */  0x81, 0x68, 0x04, 0x62, 0xAF, 0xE5, 0x40, 0x2C,  // .h.b..@,
                /* 25A0 */  0x10, 0x88, 0x0E, 0x44, 0x04, 0x88, 0x86, 0x34,  // ...D...4
                /* 25A8 */  0x39, 0x78, 0x0A, 0xA2, 0x41, 0x12, 0x95, 0x83,  // 9x..A...
                /* 25B0 */  0xA4, 0x20, 0x3A, 0x40, 0x10, 0x97, 0x87, 0x06,  // . :@....
                /* 25B8 */  0x0A, 0xA2, 0x83, 0x01, 0xB1, 0x79, 0x30, 0xA0,  // .....y0.
                /* 25C0 */  0x20, 0x3A, 0x04, 0x13, 0x9D, 0x40, 0x4C, 0x3F,  //  :...@L?
                /* 25C8 */  0x88, 0x0E, 0x3E, 0xC4, 0x27, 0x10, 0x13, 0x05,  // ..>.'...
                /* 25D0 */  0xA2, 0x83, 0x16, 0x11, 0x3A, 0x48, 0x0A, 0xA2,  // ....:H..
                /* 25D8 */  0x03, 0x0B, 0x51, 0x0A, 0xC4, 0x34, 0x83, 0xE8,  // ..Q..4..
                /* 25E0 */  0xC0, 0x42, 0x9C, 0x0E, 0x9E, 0x82, 0x08, 0x98,  // .B......
                /* 25E8 */  0x58, 0x05, 0xA6, 0x20, 0x02, 0x72, 0x5A, 0x20,  // X.. .rZ 
                /* 25F0 */  0x9A, 0x1D, 0x88, 0x26, 0xD1, 0x0A, 0xC4, 0x72,  // ...&...r
                /* 25F8 */  0x81, 0x68, 0xB0, 0x44, 0xEC, 0x21, 0x84, 0x82,  // .h.D.!..
                /* 2600 */  0x08, 0xC8, 0x31, 0xCD, 0x02, 0xB1, 0xD0, 0x20,  // ..1.... 
                /* 2608 */  0x3A, 0xE8, 0x10, 0xB9, 0x07, 0x09, 0x0A, 0xA2,  // :.......
                /* 2610 */  0x03, 0x30, 0x01, 0xA2, 0x71, 0x81, 0xE8, 0xB1,  // .0..q...
                /* 2618 */  0xF5, 0xE1, 0x84, 0xFA, 0x1D, 0x38, 0x05, 0xD1,  // .....8..
                /* 2620 */  0xC0, 0x09, 0x10, 0x4D, 0x68, 0x18, 0x98, 0x82,  // ...Mh...
                /* 2628 */  0x68, 0x50, 0x44, 0xF1, 0xA0, 0x28, 0x88, 0x80,  // hPD..(..
                /* 2630 */  0x9C, 0x5D, 0x32, 0x10, 0x13, 0x62, 0x79, 0xC0,  // .]2..by.
                /* 2638 */  0x54, 0x33, 0x10, 0x53, 0x05, 0xA2, 0xC3, 0x11,  // T3.S....
                /* 2640 */  0x11, 0x0D, 0xC4, 0x74, 0x82, 0xE8, 0xE0, 0x42,  // ...t...B
                /* 2648 */  0x80, 0xA8, 0x06, 0xD3, 0x07, 0x0E, 0xEA, 0x1A,  // ........
                /* 2650 */  0x88, 0x69, 0x02, 0xD1, 0x61, 0x8F, 0xD8, 0x06,  // .i..a...
                /* 2658 */  0xF2, 0xFF, 0xFF, 0xB0, 0x27, 0x10, 0x1D, 0x5E,  // ....'..^
                /* 2660 */  0x89, 0x6E, 0x20, 0xA6, 0x17, 0x44, 0x40, 0x56,  // .n ..D@V
                /* 2668 */  0x2E, 0x1C, 0x88, 0xE5, 0x00, 0xD1, 0xA0, 0x89,  // ........
                /* 2670 */  0xF2, 0x41, 0x53, 0x10, 0x1D, 0x04, 0x88, 0xF3,  // .AS.....
                /* 2678 */  0x83, 0x00, 0x05, 0xD1, 0x01, 0x88, 0x58, 0x07,  // ......X.
                /* 2680 */  0x62, 0xF2, 0x41, 0x74, 0x30, 0x25, 0xDA, 0x81,  // b.At0%..
                /* 2688 */  0x58, 0x16, 0x10, 0x01, 0x39, 0x8B, 0xF8, 0x03,  // X...9...
                /* 2690 */  0x04, 0x05, 0x11, 0x90, 0xB3, 0xA9, 0x3F, 0x28,  // ......?(
                /* 2698 */  0x50, 0x10, 0x0D, 0x96, 0xC8, 0x1F, 0x2C, 0x05,  // P.....,.
                /* 26A0 */  0xD1, 0x20, 0x48, 0x80, 0x23, 0x0A, 0x05, 0xE1,  // . H.#...
                /* 26A8 */  0x05, 0x40, 0x98, 0x9E, 0x0A, 0x87, 0x1D, 0x0A,  // .@......
                /* 26B0 */  0xC2, 0x33, 0x0C, 0x80, 0x96, 0x00, 0x61, 0x5A,  // .3....aZ
                /* 26B8 */  0x53, 0x80, 0xD0, 0x16, 0x20, 0x2C, 0x47, 0x8E,  // S... ,G.
                /* 26C0 */  0x01, 0xD3, 0x1E, 0x20, 0x34, 0x08, 0x08, 0xFB,  // ... 4...
                /* 26C8 */  0xFF, 0x03                                       // ..
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
                ElseIf (((Arg1 >= 0x62) && (Arg1 <= 0x6D)))
                {
                    Name (SMDR, Buffer (0x04){})
                    CreateWordField (SMDR, Zero, SMDS)
                    CreateDWordField (SMDR, Zero, SMDT)
                    CreateByteField (Arg2, Zero, SMDP)
                    CreateByteField (Arg2, One, SMDK)
                    CreateByteField (Arg2, 0x02, SMDL)
                    CreateByteField (Arg2, 0x03, SMDM)
                    CreateWordField (Arg2, 0x04, SMDN)
                    If ((Arg1 == 0x62))
                    {
                        Local0 = SMMH (SMDP, SMDK)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x63))
                    {
                        Local0 = SMMI (SMDP, SMDK)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x64))
                    {
                        Local0 = SMBB ()
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x65))
                    {
                        Local0 = SMM0 (SMDP, SMDK, SMDL)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x66))
                    {
                        Local0 = SMM1 (SMDP, SMDK)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x67))
                    {
                        Local0 = SMM2 (SMDP, SMDK, SMDL, SMDM)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x68))
                    {
                        Local0 = SMM3 (SMDP, SMDK, SMDL)
                        SMDS = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x69))
                    {
                        Local0 = SMM4 (SMDP, SMDK, SMDL, SMDN)
                        SMDT = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x6A))
                    {
                        Local0 = SMM5 (SMDP, SMDK, SMDL)
                        SMDT = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x6B))
                    {
                        CreateDWordField (Arg2, 0x03, SMDQ)
                        CreateField (Arg2, 0x38, (SMDQ * 0x08), SMDO)
                        Local0 = SMM6 (SMDP, SMDK, SMDL, SMDO)
                        SMDT = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
                    }
                    ElseIf ((Arg1 == 0x6C))
                    {
                        Local0 = SMM7 (SMDP, SMDK, SMDL)
                        Return (Local0)
                    }
                    ElseIf ((Arg1 == 0x6D))
                    {
                        CreateDWordField (Arg2, 0x03, SMDV)
                        CreateField (Arg2, 0x38, (SMDV * 0x08), SMDW)
                        Local0 = SMMU (SMDP, SMDK, SMDL, SMDW)
                        SMDT = Local0
                        Return (SMDR) /* \GSA1.WMBB.SMDR */
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
                ElseIf ((Arg1 == 0x09))
                {
                    Return (EZW2) /* \GSA1.EZW2 */
                }
                ElseIf (((Arg1 >= 0x0118) && (Arg1 <= 0x0121)))
                {
                    CreateDWordField (Arg2, Zero, EZVD)
                    CreateDWordField (Arg2, 0x04, EZVE)
                    CreateWordField (Arg2, 0x04, EZVL)
                    If ((Arg1 == 0x0118))
                    {
                        Return (EZV3 (EZVD))
                    }
                    ElseIf ((Arg1 == 0x0119))
                    {
                        EZV4 (EZVD, EZVE)
                    }
                    ElseIf ((Arg1 == 0x011A))
                    {
                        Return (EZV6 ())
                    }
                    ElseIf ((Arg1 == 0x011B))
                    {
                        Return (EZVF (EZVD, EZVE))
                    }
                    ElseIf ((Arg1 == 0x011C))
                    {
                        Return (EZVG (EZVD, EZVE))
                    }
                    ElseIf ((Arg1 == 0x011D))
                    {
                        Return (EZV0 (EZVD))
                    }
                    ElseIf ((Arg1 == 0x011E))
                    {
                        Return (EZVJ (EZVD, DerefOf (Arg2 [0x04])))
                    }
                    ElseIf ((Arg1 == 0x011F))
                    {
                        Name (B2F2, Buffer (0x3C){})
                        Local0 = EZVL /* \GSA1.WMBB.EZVL */
                        Local1 = Zero
                        While (((Local1 * 0x02) < Local0))
                        {
                            B2F2 [Local1] = DerefOf (Arg2 [(0x06 + (Local1 * 
                                0x02))])
                            Local1++
                        }

                        Local3 = ToString (B2F2, Local1)
                        Return (EZVK (EZVD, Local3))
                    }
                    ElseIf ((Arg1 == 0x0120))
                    {
                        Return (EZVH (EZVD))
                    }
                    ElseIf ((Arg1 == 0x0121))
                    {
                        Name (B1F1, Buffer (0x3C){})
                        Local0 = EZVL /* \GSA1.WMBB.EZVL */
                        Local1 = Zero
                        While (((Local1 * 0x02) < Local0))
                        {
                            B1F1 [Local1] = DerefOf (Arg2 [(0x06 + (Local1 * 
                                0x02))])
                            Local1++
                        }

                        Local3 = ToString (B1F1, Local1)
                        EZVI (EZVD, Local3)
                    }
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


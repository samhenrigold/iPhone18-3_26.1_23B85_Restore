double sub_10009C064(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  *&result = 136447490;
  *a1 = 136447490;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 2112;
  *(a1 + 26) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  return result;
}

uint64_t sub_10009C0A8(void *a1)
{
  if ([a1 virtualInterface])
  {
    v3 = socket(2, 2, 0);
    if ((v3 & 0x80000000) == 0)
    {
      LODWORD(v4) = v3;
      [a1 virtualInterface];
      v5 = NEVirtualInterfaceCopyName();
      v6 = v5;
      if (v5)
      {
        v7 = [v5 UTF8String];
        if (v7)
        {
          v28 = *v7;
          if (v28)
          {
            v29 = v7[1];
            if (v29)
            {
              v30 = v7[2];
              if (v30)
              {
                v31 = v7[3];
                if (v31)
                {
                  v32 = v7[4];
                  if (v32)
                  {
                    v33 = v7[5];
                    if (v33)
                    {
                      v34 = v7[6];
                      if (v34)
                      {
                        v35 = v7[7];
                        if (v35)
                        {
                          v36 = v7[8];
                          if (v36)
                          {
                            v37 = v7[9];
                            if (v37)
                            {
                              v38 = v7[10];
                              if (v38)
                              {
                                v39 = v7[11];
                                if (v39)
                                {
                                  v40 = v7[12];
                                  if (v40)
                                  {
                                    v41 = v7[13];
                                    if (v41)
                                    {
                                      v42 = v7[14];
                                      if (v42)
                                      {
                                        v43 = 0;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          LODWORD(v44) = 2;
          if (ioctl(v4, 0xC02069B4uLL, &v28) < 0)
          {
            v15 = __error();
            if (strerror_r(*v15, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              _NRLogWithArgs(qword_100229080, 17, "ioctl SIOCSQOSMARKINGMODE failed: [%d] %s");
            }

            goto LABEL_78;
          }

          v8 = [v6 UTF8String];
          if (v8)
          {
            v28 = *v8;
            if (v28)
            {
              v29 = v8[1];
              if (v29)
              {
                v30 = v8[2];
                if (v30)
                {
                  v31 = v8[3];
                  if (v31)
                  {
                    v32 = v8[4];
                    if (v32)
                    {
                      v33 = v8[5];
                      if (v33)
                      {
                        v34 = v8[6];
                        if (v34)
                        {
                          v35 = v8[7];
                          if (v35)
                          {
                            v36 = v8[8];
                            if (v36)
                            {
                              v37 = v8[9];
                              if (v37)
                              {
                                v38 = v8[10];
                                if (v38)
                                {
                                  v39 = v8[11];
                                  if (v39)
                                  {
                                    v40 = v8[12];
                                    if (v40)
                                    {
                                      v41 = v8[13];
                                      if (v41)
                                      {
                                        v42 = v8[14];
                                        if (v42)
                                        {
                                          v43 = 0;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            LODWORD(v44) = 1;
            if ((ioctl(v4, 0xC02069B5uLL, &v28) & 0x80000000) == 0)
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              v9 = 1;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229088 != -1)
                {
                  dispatch_once(&qword_100229088, &stru_1001FB1C0);
                }

                v10 = qword_100229080;
                _NRLogWithArgs(v10, 1, "%s%.30s:%-4d Successfully enabled QoS marking on interface %s", "", "-[NRLinkBluetooth setQosMarkingEnabled]", 2511, [v6 UTF8String]);
              }

              goto LABEL_79;
            }

            v16 = __error();
            if (strerror_r(*v16, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              _NRLogWithArgs(qword_100229080, 17, "ioctl SIOCSQOSMARKINGENABLED failed: [%d] %s");
            }

LABEL_78:
            v9 = 0;
LABEL_79:

            close(v4);
            return v9;
          }

          v23 = sub_10007CF34();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          v1 = "_strict_strlcpy";
          if (IsLevelEnabled)
          {
            v25 = sub_10007CF34();
            _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
          }

          v4 = _os_log_pack_size();
          v6 = &v28 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = __error();
          v27 = _os_log_pack_fill(v6, v4, *v26, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
          *v27 = 136446210;
          *(v27 + 4) = "_strict_strlcpy";
        }

        else
        {
          v18 = sub_10007CF34();
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            v20 = sub_10007CF34();
            _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
          }

          v4 = _os_log_pack_size();
          v6 = &v28 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = __error();
          v22 = _os_log_pack_fill(v6, v4, *v21, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
          *v22 = 136446210;
          *(v22 + 4) = "_strict_strlcpy";
        }

        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      else
      {
        v1 = &qword_100229000;
        if (qword_100229088 == -1)
        {
          goto LABEL_58;
        }
      }

      dispatch_once(&qword_100229088, &stru_1001FB1C0);
LABEL_58:
      if (_NRLogIsLevelEnabled())
      {
        if (v1[17] != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs(qword_100229080, 17, "Failed to copy virtual interface name");
      }

      goto LABEL_78;
    }

    v14 = *__error();
    if (strerror_r(v14, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 17, "Failed to create socket for setting QoS marking flags: [%d] %s", v14, __strerrbuf);
    }

    return 0;
  }

  else
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = [a1 copyDescription];
      _NRLogWithArgs(v12, 17, "%@: No virtualInterface to set QoS marking mode enabled", v13);

      return 0;
    }
  }

  return v9;
}

void sub_10009C854(uint64_t a1, unsigned int a2)
{
  sub_10009DFFC(a1, a2);
  if (!*(a1 + 1471))
  {
    if ((*(a1 + 262) & 1) == 0)
    {
      v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (*(a1 + 1079))
      {
        *(a1 + 262) = 1;
        ++*(a1 + 1095);
        if (gNRPacketLoggingEnabled == 1)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (IsLevelEnabled)
          {
            v8 = _NRCopyLogObjectForNRUUID();
            v9 = [a1 copyDescription];
            _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: source-suspend: LinkOutput", "", "NRLinkSuspendLinkOutputSource", 846, v9);

            v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }

        dispatch_suspend(*(a1 + v3[364]));
      }
    }

    if (*(a1 + 252) == 1)
    {
      v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (*(a1 + 463))
      {
        *(a1 + 252) = 0;
        ++*(a1 + 487);
        if (gNRPacketLoggingEnabled == 1)
        {
          v10 = _NRCopyLogObjectForNRUUID();
          v11 = _NRLogIsLevelEnabled();

          v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (v11)
          {
            v12 = _NRCopyLogObjectForNRUUID();
            v13 = [a1 copyDescription];
            _NRLogWithArgs(v12, 1, "%s%.30s:%-4d %@: source-resume: NexusInput", "", "NRLinkResumeNexusInputSource", 873, v13);

            v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }

        dispatch_resume(*(a1 + v4[494]));
      }
    }

    v5 = *(a1 + 1495);
    if (v5)
    {

      [v5 setReceiveWindowPacketCount:32];
    }
  }
}

void sub_10009CA80(uint64_t a1)
{
  if (*(a1 + 2023))
  {
    v2 = *(a1 + 298);
    v3 = *(a1 + 297);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v6, 0, "LinkStats: ------ %s datapath snapshot ------", "Rx(M)");
    }

    if (*(a1 + 297))
    {
      v7 = 0;
      v8 = v2 - (v2 / v3) * v3;
      do
      {
        v9 = (*(a1 + 2023) + 8 * v8);
        if ((v9 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v9, *(a1 + 32));
        *v9 = 0;
        v10 = *(a1 + 297);
        v8 = (v8 + 1) % v10;
        ++v7;
      }

      while (v7 < v10);
    }
  }

  if (*(a1 + 2071))
  {
    v11 = *(a1 + 304);
    v12 = *(a1 + 303);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v15, 0, "LinkStats: ------ %s datapath snapshot ------", "Tx(M)");
    }

    if (*(a1 + 303))
    {
      v16 = 0;
      v17 = v11 - (v11 / v12) * v12;
      do
      {
        v18 = (*(a1 + 2071) + 8 * v17);
        if ((v18 & 7) != 0)
        {
          break;
        }

        sub_10009D908(*v18, *(a1 + 32));
        *v18 = 0;
        v19 = *(a1 + 303);
        v17 = (v17 + 1) % v19;
        ++v16;
      }

      while (v16 < v19);
    }
  }

  if (*(a1 + 2039))
  {
    v20 = *(a1 + 300);
    v21 = *(a1 + 299);
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v24, 0, "LinkStats: ------ %s datapath snapshot ------", "Rx(U)");
    }

    if (*(a1 + 299))
    {
      v25 = 0;
      v26 = v20 - (v20 / v21) * v21;
      do
      {
        v27 = (*(a1 + 2039) + 8 * v26);
        if ((v27 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v27, *(a1 + 32));
        *v27 = 0;
        v28 = *(a1 + 299);
        v26 = (v26 + 1) % v28;
        ++v25;
      }

      while (v25 < v28);
    }
  }

  if (*(a1 + 2087))
  {
    v29 = *(a1 + 306);
    v30 = *(a1 + 305);
    v31 = _NRCopyLogObjectForNRUUID();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v33, 0, "LinkStats: ------ %s datapath snapshot ------", "Tx(U)");
    }

    if (*(a1 + 305))
    {
      v34 = 0;
      v35 = v29 - (v29 / v30) * v30;
      do
      {
        v36 = (*(a1 + 2087) + 8 * v35);
        if ((v36 & 7) != 0)
        {
          break;
        }

        sub_10009D908(*v36, *(a1 + 32));
        *v36 = 0;
        v37 = *(a1 + 305);
        v35 = (v35 + 1) % v37;
        ++v34;
      }

      while (v34 < v37);
    }
  }

  if (*(a1 + 2055))
  {
    v38 = *(a1 + 302);
    v39 = *(a1 + 301);
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      v42 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v42, 0, "LinkStats: ------ %s datapath snapshot ------", "Rx(D)");
    }

    if (*(a1 + 301))
    {
      v43 = 0;
      v44 = v38 - (v38 / v39) * v39;
      do
      {
        v45 = (*(a1 + 2055) + 8 * v44);
        if ((v45 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v45, *(a1 + 32));
        *v45 = 0;
        v46 = *(a1 + 301);
        v44 = (v44 + 1) % v46;
        ++v43;
      }

      while (v43 < v46);
    }
  }
}

void sub_10009CEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v115 = v3;
    if ((a1 & 2) != 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 0, "LinkStats: LTNStartOuterLoop");
      }
    }

    if ((a1 & 4) != 0)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v9, 0, "LinkStats: LTNStartInnerLoop");
      }
    }

    if ((a1 & 8) != 0)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v12, 0, "LinkStats: LTNReadAllCurLinkInputSlot");
      }
    }

    if ((a1 & 0x10) != 0)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v15, 0, "LinkStats: LTNGotNewSlot");
      }
    }

    if ((a1 & 0x20) != 0)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 0, "LinkStats: LTNReuseExistingSlot");
      }
    }

    if ((a1 & 0x40) != 0)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v21, 0, "LinkStats: LTNNoLinkInputSlot");
      }
    }

    if ((a1 & 0x80) != 0)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v24, 0, "LinkStats: LTNIncomingTLV1");
      }
    }

    if ((a1 & 0x100) != 0)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v27, 0, "LinkStats: LTNIncomingTLV2");
      }
    }

    if ((a1 & 0x200) != 0)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v30, 0, "LinkStats: LTNIncomingTLV3");
      }
    }

    if ((a1 & 0x400) != 0)
    {
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v33, 0, "LinkStats: LTNIncomingTLV4");
      }
    }

    if ((a1 & 0x800) != 0)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v36, 0, "LinkStats: LTNIncomingTLV5");
      }
    }

    if ((a1 & 0x1000) != 0)
    {
      v37 = _NRCopyLogObjectForNRUUID();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v39, 0, "LinkStats: LTNPlacingLinkReadBuffer");
      }
    }

    if ((a1 & 0x2000) != 0)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v42, 0, "LinkStats: LTNPlacingCurLinkInputSlot");
      }
    }

    if ((a1 & 0x4000) != 0)
    {
      v43 = _NRCopyLogObjectForNRUUID();
      v44 = _NRLogIsLevelEnabled();

      if (v44)
      {
        v45 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v45, 0, "LinkStats: LTNShrinkingIOVec");
      }
    }

    if ((a1 & 0x8000) != 0)
    {
      v46 = _NRCopyLogObjectForNRUUID();
      v47 = _NRLogIsLevelEnabled();

      if (v47)
      {
        v48 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v48, 0, "LinkStats: LTNNotShrinkingIOVec");
      }
    }

    if ((a1 & 0x10000) != 0)
    {
      v49 = _NRCopyLogObjectForNRUUID();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v51, 0, "LinkStats: LTNNoLookAheadSlots");
      }
    }

    if ((a1 & 0x20000) != 0)
    {
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v54, 0, "LinkStats: LTNPlacingLookAheadSlots");
      }
    }

    if ((a1 & 0x40000) != 0)
    {
      v55 = _NRCopyLogObjectForNRUUID();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        v57 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v57, 0, "LinkStats: LTNShrinkingLastIOVec");
      }
    }

    if ((a1 & 0x80000) != 0)
    {
      v58 = _NRCopyLogObjectForNRUUID();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v60 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v60, 0, "LinkStats: LTNNotShrinkingLastIOVec");
      }
    }

    if ((a1 & 0x100000) != 0)
    {
      v61 = _NRCopyLogObjectForNRUUID();
      v62 = _NRLogIsLevelEnabled();

      if (v62)
      {
        v63 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v63, 0, "LinkStats: LTNNotEnoughInputBytes");
      }
    }

    if ((a1 & 0x200000) != 0)
    {
      v64 = _NRCopyLogObjectForNRUUID();
      v65 = _NRLogIsLevelEnabled();

      if (v65)
      {
        v66 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v66, 0, "LinkStats: LTNCurInputSlotComplete");
      }
    }

    if ((a1 & 0x400000) != 0)
    {
      v67 = _NRCopyLogObjectForNRUUID();
      v68 = _NRLogIsLevelEnabled();

      if (v68)
      {
        v69 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v69, 0, "LinkStats: LTNCurInputSlotCompleteLRB");
      }
    }

    if ((a1 & 0x800000) != 0)
    {
      v70 = _NRCopyLogObjectForNRUUID();
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v72, 0, "LinkStats: LTNNoNexusOutputSlot");
      }
    }

    if ((a1 & 0x1000000) != 0)
    {
      v73 = _NRCopyLogObjectForNRUUID();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v75, 0, "LinkStats: LTNNoNexusOutputSlotAndFullLRB");
      }
    }

    if ((a1 & 0x2000000) != 0)
    {
      v76 = _NRCopyLogObjectForNRUUID();
      v77 = _NRLogIsLevelEnabled();

      if (v77)
      {
        v78 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v78, 0, "LinkStats: LTNNoNexusOutputSlotWithAllInLRB");
      }
    }

    if ((a1 & 0x4000000) != 0)
    {
      v79 = _NRCopyLogObjectForNRUUID();
      v80 = _NRLogIsLevelEnabled();

      if (v80)
      {
        v81 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v81, 0, "LinkStats: LTNCurInputSlotCompleteWithNoNexusOutputSlot");
      }
    }

    if ((a1 & 0x8000000) != 0)
    {
      v82 = _NRCopyLogObjectForNRUUID();
      v83 = _NRLogIsLevelEnabled();

      if (v83)
      {
        v84 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v84, 0, "LinkStats: LTNReinjectingPacketToNexus");
      }
    }

    if ((a1 & 0x10000000) != 0)
    {
      v85 = _NRCopyLogObjectForNRUUID();
      v86 = _NRLogIsLevelEnabled();

      if (v86)
      {
        v87 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v87, 0, "LinkStats: LTNMarkedWakePacketFlag");
      }
    }

    if ((a1 & 0x20000000) != 0)
    {
      v88 = _NRCopyLogObjectForNRUUID();
      v89 = _NRLogIsLevelEnabled();

      if (v89)
      {
        v90 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v90, 0, "LinkStats: LTNReinjectingIKEv2Packet");
      }
    }

    if ((a1 & 0x40000000) != 0)
    {
      v91 = _NRCopyLogObjectForNRUUID();
      v92 = _NRLogIsLevelEnabled();

      if (v92)
      {
        v93 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v93, 0, "LinkStats: LTNEndInnerLoop");
      }
    }

    if ((a1 & 0x80000000) != 0)
    {
      v94 = _NRCopyLogObjectForNRUUID();
      v95 = _NRLogIsLevelEnabled();

      if (v95)
      {
        v96 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v96, 0, "LinkStats: LTNMemmovingLRB");
      }
    }

    if ((a1 & 0x100000000) != 0)
    {
      v97 = _NRCopyLogObjectForNRUUID();
      v98 = _NRLogIsLevelEnabled();

      if (v98)
      {
        v99 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v99, 0, "LinkStats: LTNNotMemmovingLRBWithHandled");
      }
    }

    if ((a1 & 0x200000000) != 0)
    {
      v100 = _NRCopyLogObjectForNRUUID();
      v101 = _NRLogIsLevelEnabled();

      if (v101)
      {
        v102 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v102, 0, "LinkStats: LTNNotMemmovingLRBWithNoHandled");
      }
    }

    if ((a1 & 0x400000000) != 0)
    {
      v103 = _NRCopyLogObjectForNRUUID();
      v104 = _NRLogIsLevelEnabled();

      if (v104)
      {
        v105 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v105, 0, "LinkStats: LTNResettingLRB");
      }
    }

    if ((a1 & 0x800000000) != 0)
    {
      v106 = _NRCopyLogObjectForNRUUID();
      v107 = _NRLogIsLevelEnabled();

      if (v107)
      {
        v108 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v108, 0, "LinkStats: LTNLinkChannelSync");
      }
    }

    if ((a1 & 0x1000000000) != 0)
    {
      v109 = _NRCopyLogObjectForNRUUID();
      v110 = _NRLogIsLevelEnabled();

      if (v110)
      {
        v111 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v111, 0, "LinkStats: LTNNexusOutputSync");
      }
    }

    v112 = _NRCopyLogObjectForNRUUID();
    v113 = _NRLogIsLevelEnabled();

    v3 = v115;
    if (v113)
    {
      v114 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v114, 0, "LinkStats: ------------------------------");

      v3 = v115;
    }
  }
}

void sub_10009D908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v79 = v3;
    if ((a1 & 2) != 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 0, "LinkStats: NTLStartInnerLoop");
      }
    }

    if ((a1 & 4) != 0)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v9, 0, "LinkStats: NTLNoDatagramLinkInputSlot");
      }
    }

    if ((a1 & 8) != 0)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v12, 0, "LinkStats: NTLNoNexusInputSlotForDatagramLink");
      }
    }

    if ((a1 & 0x10) != 0)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v15, 0, "LinkStats: NTLWroteToDatagramLink");
      }
    }

    if ((a1 & 0x20) != 0)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 0, "LinkStats: NTLGotLinkOutputSlot");
      }
    }

    if ((a1 & 0x40) != 0)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v21, 0, "LinkStats: NTLReuseExistingSlot");
      }
    }

    if ((a1 & 0x80) != 0)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v24, 0, "LinkStats: NTLNoLinkOutputSlot");
      }
    }

    if ((a1 & 0x100) != 0)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v27, 0, "LinkStats: NTLWroteBytesFromLWB");
      }
    }

    if ((a1 & 0x200) != 0)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v30, 0, "LinkStats: NTLFilledLinkOutputWithLWB");
      }
    }

    if ((a1 & 0x400) != 0)
    {
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v33, 0, "LinkStats: NTLNilNexusInputRing");
      }
    }

    if ((a1 & 0x800) != 0)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v36, 0, "LinkStats: NTLNoNexusInput");
      }
    }

    if ((a1 & 0x1000) != 0)
    {
      v37 = _NRCopyLogObjectForNRUUID();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v39, 0, "LinkStats: NTLGotLookaheadOutputSlot");
      }
    }

    if ((a1 & 0x2000) != 0)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v42, 0, "LinkStats: NTLNotEnoughRoomInLinkOutputSlot");
      }
    }

    if ((a1 & 0x4000) != 0)
    {
      v43 = _NRCopyLogObjectForNRUUID();
      v44 = _NRLogIsLevelEnabled();

      if (v44)
      {
        v45 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v45, 0, "LinkStats: NTLWroteToLinkOutputSlot");
      }
    }

    if ((a1 & 0x8000) != 0)
    {
      v46 = _NRCopyLogObjectForNRUUID();
      v47 = _NRLogIsLevelEnabled();

      if (v47)
      {
        v48 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v48, 0, "LinkStats: NTLWroteToLookaheadOutputSlot");
      }
    }

    if ((a1 & 0x10000) != 0)
    {
      v49 = _NRCopyLogObjectForNRUUID();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v51, 0, "LinkStats: NTLWroteNexusPacket");
      }
    }

    if ((a1 & 0x20000) != 0)
    {
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v54, 0, "LinkStats: NTLWrotePartialBytesToLinkOutput");
      }
    }

    if ((a1 & 0x40000) != 0)
    {
      v55 = _NRCopyLogObjectForNRUUID();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        v57 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v57, 0, "LinkStats: NTLWroteAllBytesToLinkOutput");
      }
    }

    if ((a1 & 0x80000) != 0)
    {
      v58 = _NRCopyLogObjectForNRUUID();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v60 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v60, 0, "LinkStats: NTLMemmovingLWB");
      }
    }

    if ((a1 & 0x100000) != 0)
    {
      v61 = _NRCopyLogObjectForNRUUID();
      v62 = _NRLogIsLevelEnabled();

      if (v62)
      {
        v63 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v63, 0, "LinkStats: NTLResettingLWB");
      }
    }

    if ((a1 & 0x200000) != 0)
    {
      v64 = _NRCopyLogObjectForNRUUID();
      v65 = _NRLogIsLevelEnabled();

      if (v65)
      {
        v66 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v66, 0, "LinkStats: NTLLinkOutputSync");
      }
    }

    if ((a1 & 0x400000) != 0)
    {
      v67 = _NRCopyLogObjectForNRUUID();
      v68 = _NRLogIsLevelEnabled();

      if (v68)
      {
        v69 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v69, 0, "LinkStats: NTLLinkChannelSync");
      }
    }

    if ((a1 & 0x800000) != 0)
    {
      v70 = _NRCopyLogObjectForNRUUID();
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v72, 0, "LinkStats: NTLDatagramLinkChannelSync");
      }
    }

    if ((a1 & 0x1000000) != 0)
    {
      v73 = _NRCopyLogObjectForNRUUID();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v75, 0, "LinkStats: NTLNexusInputSync");
      }
    }

    v76 = _NRCopyLogObjectForNRUUID();
    v77 = _NRLogIsLevelEnabled();

    v3 = v79;
    if (v77)
    {
      v78 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v78, 0, "LinkStats: ------------------------------");

      v3 = v79;
    }
  }
}

void sub_10009DFFC(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 1471);
  if (!v3 || *(a1 + 16) == 255)
  {
    return;
  }

  if (a2 >= 0x41)
  {
    v4 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009E698;
    block[3] = &unk_1001FD3C8;
    block[4] = a1;
    dispatch_async(v4, block);
    return;
  }

  v5 = [v3 length];
  v44 = *(a1 + 1471);
  v6 = [v44 bytes];
  if (*(a1 + 1063))
  {
    if (*(a1 + 1047))
    {
      if (v5)
      {
        v7 = v6;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          *__dst = 0u;
          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            break;
          }

          v11 = next_slot;
          if (WORD1(v46) <= (v5 - v8))
          {
            v12 = WORD1(v46);
          }

          else
          {
            v12 = v5 - v8;
          }

          memcpy(__dst[0], &v7[v8], v12);
          WORD1(v46) = v12;
          v8 += v12;
          os_channel_set_slot_properties();
          v9 = v11;
          if (v8 >= v5)
          {
            goto LABEL_25;
          }
        }

        if (!v9)
        {
          goto LABEL_26;
        }

LABEL_25:
        os_channel_advance_slot();
      }

      else
      {
        v8 = 0;
      }

LABEL_26:
      os_channel_sync();
      if (v8 == v5)
      {
        if (gNRPacketLoggingEnabled)
        {
          v27 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v29 = _NRCopyLogObjectForNRUUID();
            v30 = [a1 copyDescription];
            _NRLogWithArgs(v29, 1, "%s%.30s:%-4d %@: Wrote %zu bytes to the channel", "", "[NRLinkBluetooth writeBytesToChannel:length:]", 7839, v30, v5);
          }
        }

        v8 = v5;
      }

      else if (gNRPacketLoggingEnabled)
      {
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = _NRCopyLogObjectForNRUUID();
          v34 = [a1 copyDescription];
          _NRLogWithArgs(v33, 1, "%s%.30s:%-4d %@: Wrote %zu bytes (but asked for %zu) to the channel", "", "[NRLinkBluetooth writeBytesToChannel:length:]", 7837, v34, v8, v5);
        }
      }

      goto LABEL_30;
    }

    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [a1 copyDescription];
      _NRLogWithArgs(v15, 17, "%@: Tried to write but _linkChannel is NULL", v16);
      goto LABEL_21;
    }
  }

  else
  {
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [a1 copyDescription];
      _NRLogWithArgs(v15, 17, "%@: Tried to write but _linkOutputRing is NULL", v16);
LABEL_21:
    }
  }

  v8 = 0;
LABEL_30:
  if (gNRPacketLoggingEnabled == 1)
  {
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = [a1 copyDescription];
      _NRLogWithArgs(v23, 1, "%s%.30s:%-4d %@: wrote %lld", "", "[NRLinkBluetooth sendDataWithCount:]", 7916, v24, v8);
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    [a1 cancelWithReason:@"Write error"];
  }

  else
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v25 = +[NSDate date];
      v26 = *(a1 + 1831);
      *(a1 + 1831) = v25;
    }

    *(a1 + 1527) += v8;
    if (v8 == v5)
    {
      v19 = *(a1 + 1471);
      *(a1 + 1471) = 0;

      sub_10009C854(a1);
    }

    else
    {
      if (v8)
      {
        [*(a1 + 1471) replaceBytesInRange:0 withBytes:v8 length:{0, 0}];
      }

      if (*(a1 + 262) == 1 && *(a1 + 1079))
      {
        *(a1 + 262) = 0;
        ++*(a1 + 1095);
        if (gNRPacketLoggingEnabled == 1)
        {
          v35 = _NRCopyLogObjectForNRUUID();
          v36 = _NRLogIsLevelEnabled();

          if (v36)
          {
            v37 = _NRCopyLogObjectForNRUUID();
            v38 = [a1 copyDescription];
            _NRLogWithArgs(v37, 1, "%s%.30s:%-4d %@: source-resume: LinkOutput", "", "NRLinkResumeLinkOutputSource", 854, v38);
          }
        }

        dispatch_resume(*(a1 + 1079));
      }

      if ((*(a1 + 252) & 1) == 0 && *(a1 + 463))
      {
        *(a1 + 252) = 1;
        ++*(a1 + 487);
        if (gNRPacketLoggingEnabled == 1)
        {
          v39 = _NRCopyLogObjectForNRUUID();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v41 = _NRCopyLogObjectForNRUUID();
            v42 = [a1 copyDescription];
            _NRLogWithArgs(v41, 1, "%s%.30s:%-4d %@: source-suspend: NexusInput", "", "NRLinkSuspendNexusInputSource", 863, v42);
          }
        }

        dispatch_suspend(*(a1 + 463));
      }

      v20 = *(a1 + 1495);
      if (v20)
      {
        [v20 setReceiveWindowPacketCount:0];
      }

      sub_10009DFFC(a1, a2 + 1);
    }
  }
}

void sub_10009E6A4(uint64_t a1)
{
  if ((*(a1 + 289) & 1) == 0 && *(a1 + 250) - 10 <= 2)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    if (!v2)
    {
      v16 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = sub_10007CF34();
        _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]", 9566);
      }

      v19 = _os_log_pack_size();
      v20 = &v24[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v22 = 136446210;
      *(v22 + 4) = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]";
      sub_10007CF34();
      _NRLogAbortWithPack();
    }

    v3 = v2;
    v4 = *(a1 + 250);
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = _NRLogIsLevelEnabled();

    if (v4 == 11)
    {
      if (v6)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [a1 copyDescription];
        _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Initiator querying IDS keys for pairing", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]", 9569, v8);
      }

      v9 = *(a1 + 32);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10009EB94;
      v26[3] = &unk_1001FB100;
      v10 = &v27;
      v26[4] = a1;
      v27 = v3;
      v11 = v3;
      sub_10016E0BC(NRDLocalDevice, v9, 4, v26);
    }

    else
    {
      if (v6)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        v13 = [a1 copyDescription];
        _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Querying for pairing keys for OOBK pairing", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]", 9633, v13);
      }

      v14 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10009F144;
      v24[3] = &unk_1001FB128;
      v10 = &v25;
      v24[4] = a1;
      v25 = v3;
      v15 = v3;
      sub_10016D738(NRDLocalDevice, v14, 1, 0, v24);
    }
  }
}

uint64_t sub_10009E9F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    sub_1000850B4(WeakRetained, 3);
    v2 = v12;
    if ((*(v12 + 289) & 1) == 0)
    {
      v3 = sub_100163A30(NRDLocalDevice, v12[4]);
      if (!v3)
      {
        v5 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = sub_10007CF34();
          _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setupIPsec]_block_invoke", 9943);
        }

        v8 = _os_log_pack_size();
        v9 = __error();
        v10 = _os_log_pack_fill(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v10 = 136446210;
        *(v10 + 4) = "[NRLinkBluetooth setupIPsec]_block_invoke";
        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      if ((v3[24] & 0x4010) == 0 && v3[8] <= 0x12u)
      {
        v4 = v3;
        sub_1000850B4(v12, 1);
        v3 = v4;
      }

      v2 = v12;
    }
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_10009EB94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v55 = a4;
  v12 = a5;
  v13 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v43 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v45 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke", 9580, v45);

    goto LABEL_31;
  }

  if (!a2)
  {
    v46 = sub_10007CF34();
    v47 = _NRLogIsLevelEnabled();

    if (!v47)
    {
      goto LABEL_32;
    }

    v21 = sub_10007CF34();
    _NRLogWithArgs(v21, 17, "%s called with null remotePublicIDSClassDSigningKey");
    goto LABEL_31;
  }

  if (!a3)
  {
    v48 = sub_10007CF34();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_32;
    }

    v21 = sub_10007CF34();
    _NRLogWithArgs(v21, 17, "%s called with null localPrivateIDSClassDSigningKey");
LABEL_31:

    goto LABEL_32;
  }

  if (v55)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: Initiator queried IDS keys for pairing", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke", 9587, v17);
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      objc_storeStrong((v18 + 1375), a4);
    }

    if (v12)
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        objc_storeStrong((v19 + 1383), a5);
      }
    }

    if (v13)
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        objc_storeStrong((v20 + 1391), a6);
      }
    }

    v21 = [[NEIKEv2AuthenticationProtocol alloc] initWithNonStandardDigitalSignature:2];
    if (qword_100229318 != -1)
    {
      dispatch_once(&qword_100229318, &stru_1001FC5B8);
    }

    v22 = qword_100229310;
    v23 = sub_1001472F0(1, v22, v21);

    [v23 setLocalPrivateKeyRef:a3];
    [v23 setRemotePublicKeyRef:a2];
    [*(a1 + 32) reportEvent:3011];
    v24 = nr_absolute_time();
    v25 = *(a1 + 32);
    if (v25 && ((v26 = *(v25 + 2007)) == 0 || (*(v26 + 120) = v24, (v25 = *(a1 + 32)) != 0)))
    {
      v27 = *(v25 + 2007);
      if (v27)
      {
        ++v27[14];
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_100146274(0);
    [v28 setMaximumPacketSize:2000];
    [v28 setHeaderOverhead:5];

    v29 = [NEIKEv2Session alloc];
    v30 = sub_100146C84(*(a1 + 40), 1, 0);
    v31 = [v29 initWithIKEConfig:v28 firstChildConfig:v30 sessionConfig:v23 queue:*(*(a1 + 32) + 8) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKEForPairingWithIDS" packetDelegate:*(a1 + 32)];
    v32 = *(a1 + 32);
    v33 = *(v32 + 1335);
    *(v32 + 1335) = v31;

    v34 = *(*(a1 + 32) + 1335);
    v35 = _NRCopyLogObjectForNRUUID();
    if (v34)
    {
      v36 = _NRLogIsLevelEnabled();

      if (v36)
      {
        v37 = _NRCopyLogObjectForNRUUID();
        v38 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v37, 0, "%s%.30s:%-4d %@: Created initiator IDS pairing IKE session", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke", 9625, v38);
      }

      sub_100083088(*(a1 + 32));
      v39 = _NRCopyLogObjectForNRUUID();
      v40 = _NRLogIsLevelEnabled();

      if (v40)
      {
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v41, 0, "%s%.30s:%-4d %@: Connecting initiator IDS pairing session", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke", 9629, v42);
      }

      [*(*(a1 + 32) + 1335) connect];
    }

    else
    {
      v52 = _NRLogIsLevelEnabled();

      if (v52)
      {
        v53 = _NRCopyLogObjectForNRUUID();
        v54 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v53, 17, "%@: Failed to create initiator IDS pairing IKE session", v54);
      }
    }

    goto LABEL_31;
  }

  v50 = sub_10007CF34();
  v51 = _NRLogIsLevelEnabled();

  if (v51)
  {
    v21 = sub_10007CF34();
    _NRLogWithArgs(v21, 17, "%s called with null localPublicClassDKeysEncryptedWithIDS");
    goto LABEL_31;
  }

LABEL_32:
}

void sub_10009F144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v59 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    LogString = _NRKeyCreateLogString();
    v58 = a3;
    v15 = v8;
    v16 = _NRKeyCreateLogString();
    v17 = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Queried for pairing keys for OOBK pairing D %@ C %@ A %@", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2", 9644, v13, LogString, v16, v17);

    v8 = v15;
    a3 = v58;
  }

  v18 = [*(a1 + 32) state];
  v19 = *(a1 + 32);
  if (v18 == 255)
  {
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_30;
    }

    v22 = _NRCopyLogObjectForNRUUID();
    v24 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2", 9647, v24);
  }

  else
  {
    if (v19)
    {
      objc_storeStrong((v19 + 1351), a2);
      v20 = *(a1 + 32);
      if (v20)
      {
        objc_storeStrong((v20 + 1359), a3);
        v21 = *(a1 + 32);
        if (v21)
        {
          objc_storeStrong((v21 + 1367), a4);
        }
      }
    }

    v22 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    if (qword_100229328 != -1)
    {
      dispatch_once(&qword_100229328, &stru_1001FC5D8);
    }

    v23 = qword_100229320;
    v24 = sub_1001472F0(1, v23, v22);

    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *(v25 + 176);
      if (v26)
      {
        v26 = v26[2];
      }

      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [v24 setSharedSecret:v27];

    v28 = [v24 sharedSecret];

    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = [v24 sharedSecret];
      v31 = _NRKeyCreateLogString();
      [v29 reportEvent:3013 details:v31];

      v32 = nr_absolute_time();
      v33 = *(a1 + 32);
      if (v33 && ((v34 = *(v33 + 2007)) == 0 || (*(v34 + 120) = v32, (v33 = *(a1 + 32)) != 0)))
      {
        v35 = *(v33 + 2007);
        if (v35)
        {
          ++v35[14];
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_100146274(0);
      [v36 setMaximumPacketSize:2000];
      [v36 setHeaderOverhead:5];

      v37 = [NEIKEv2Session alloc];
      v38 = sub_100146C84(*(a1 + 40), 1, 0);
      v39 = [v37 initWithIKEConfig:v36 firstChildConfig:v38 sessionConfig:v24 queue:*(*(a1 + 32) + 8) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKEForPairingWithOOBKey" packetDelegate:*(a1 + 32)];
      v40 = *(a1 + 32);
      v41 = *(v40 + 1335);
      *(v40 + 1335) = v39;

      v42 = *(*(a1 + 32) + 1335);
      v43 = _NRCopyLogObjectForNRUUID();
      if (v42)
      {
        v44 = _NRLogIsLevelEnabled();

        if (v44)
        {
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v45, 0, "%s%.30s:%-4d %@: Created initiator OOBK pairing IKE session", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2", 9684, v46);
        }

        sub_100083088(*(a1 + 32));
        v47 = _NRCopyLogObjectForNRUUID();
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v49 = _NRCopyLogObjectForNRUUID();
          v50 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v49, 0, "%s%.30s:%-4d %@: Connecting initiator OOBK pairing session", "", "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2", 9688, v50);
        }

        [*(*(a1 + 32) + 1335) connect];
      }

      else
      {
        v55 = _NRLogIsLevelEnabled();

        if (v55)
        {
          v56 = _NRCopyLogObjectForNRUUID();
          v57 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v56, 17, "%@: Failed to create initiator OOBK pairing IKE session", v57);
        }
      }
    }

    else
    {
      v53 = sub_10007CF34();
      v54 = _NRLogIsLevelEnabled();

      if (!v54)
      {
        goto LABEL_29;
      }

      v36 = sub_10007CF34();
      _NRLogWithArgs(v36, 17, "Missing out of band key for %@, %@", *(a1 + 40), *(a1 + 32));
    }
  }

LABEL_29:

LABEL_30:
}

uint64_t sub_10009F6F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_channel_attr_create();
  if (!v4)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = [a1 copyDescription];
      _NRLogWithArgs(v30, 17, "%@: os_channel_attr_create failed", v31);
LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  os_channel_attr_set();
  v68[0] = 0;
  v68[1] = 0;
  [v3 getUUIDBytes:v68];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = [a1 copyDescription];
      v36 = __error();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d %@: os_channel_create_extended for %@ failed (errno %d)\n", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]", 2238, v35, v3, *v36);
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v7 = extended;
  *(a1 + 439) = extended;
  if (!sub_1000A1674(a1, v5))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  os_channel_ring_id();
  v8 = os_channel_rx_ring();
  *(a1 + 447) = v8;
  if (!v8)
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusInputRing is NULL", v31);
    goto LABEL_13;
  }

  os_channel_ring_id();
  v9 = os_channel_tx_ring();
  *(a1 + 455) = v9;
  if (!v9)
  {
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusOutputRing is NULL", v31);
    goto LABEL_13;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v42 = _NRCopyLogObjectForNRUUID();
    v43 = _NRLogIsLevelEnabled();

    if (!v43)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: os_channel_get_fd failed", v31);
    goto LABEL_13;
  }

  v11 = fd;
  v12 = dispatch_group_create();
  if (!v12)
  {
    v44 = sub_10007CF34();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_10007CF34();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexusGroup) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]", 2274);
    }

    v47 = _os_log_pack_size();
    v48 = *__error();
    v49 = _os_log_pack_fill(block - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48, &_mh_execute_header, "%{public}s Assertion Failed: (nexusGroup) != ((void*)0)");
    goto LABEL_31;
  }

  v13 = v12;
  v14 = dispatch_source_create(&_dispatch_source_type_read, v11, 0, *(a1 + 8));
  v15 = *(a1 + 463);
  *(a1 + 463) = v14;

  v16 = *(a1 + 463);
  if (!v16)
  {
    v50 = sub_10007CF34();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      v52 = sub_10007CF34();
      _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusInputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]", 2277);
    }

    v53 = _os_log_pack_size();
    v54 = *__error();
    v49 = _os_log_pack_fill(block - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v54, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusInputSource) != ((void*)0)");
LABEL_31:
    *v49 = 136446210;
    *(v49 + 4) = "[NRLinkBluetooth setupNexusChannelBestEffort:]";
    goto LABEL_35;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AC29C;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_group_enter(v13);
  v17 = *(a1 + 463);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000AC44C;
  v65[3] = &unk_1001FD3C8;
  v18 = v13;
  v66 = v18;
  dispatch_source_set_cancel_handler(v17, v65);
  dispatch_activate(*(a1 + 463));
  v19 = dispatch_source_create(&_dispatch_source_type_write, v11, 0, *(a1 + 8));
  v20 = *(a1 + 471);
  *(a1 + 471) = v19;

  v21 = *(a1 + 471);
  if (!v21)
  {
    v55 = sub_10007CF34();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      v57 = sub_10007CF34();
      _NRLogWithArgs(v57, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusOutputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]", 2295);
    }

    v58 = _os_log_pack_size();
    v59 = __error();
    v60 = _os_log_pack_fill(block - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v58, *v59, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusOutputSource) != ((void*)0)");
    *v60 = 136446210;
    *(v60 + 4) = "[NRLinkBluetooth setupNexusChannelBestEffort:]";
LABEL_35:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000AC454;
  v64[3] = &unk_1001FD3C8;
  v64[4] = a1;
  dispatch_source_set_event_handler(v21, v64);
  dispatch_group_enter(v18);
  v22 = *(a1 + 471);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000AC5F8;
  v62[3] = &unk_1001FD3C8;
  v23 = v18;
  v63 = v23;
  dispatch_source_set_cancel_handler(v22, v62);
  v24 = 1;
  *(a1 + 253) = 1;
  v25 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC600;
  block[3] = &unk_1001FCDD8;
  block[4] = v7;
  dispatch_group_notify(v23, v25, block);
  v26 = *(a1 + 479);
  *(a1 + 479) = v23;
  v27 = v23;

LABEL_18:
  return v24;
}

uint64_t sub_10009FED4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_channel_attr_create();
  if (!v4)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = [a1 copyDescription];
      _NRLogWithArgs(v30, 17, "%@: os_channel_attr_create failed", v31);
LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  os_channel_attr_set();
  v68[0] = 0;
  v68[1] = 0;
  [v3 getUUIDBytes:v68];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = [a1 copyDescription];
      v36 = __error();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d %@: os_channel_create_extended for %@ failed (errno %d)\n", "", "[NRLinkBluetooth setupNexusChannelVoice:]", 2334, v35, v3, *v36);
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v7 = extended;
  *(a1 + 599) = extended;
  if (!sub_1000A1674(a1, v5))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  os_channel_ring_id();
  v8 = os_channel_rx_ring();
  *(a1 + 607) = v8;
  if (!v8)
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusVOInputRing is NULL", v31);
    goto LABEL_13;
  }

  os_channel_ring_id();
  v9 = os_channel_tx_ring();
  *(a1 + 615) = v9;
  if (!v9)
  {
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusVOOutputRing is NULL", v31);
    goto LABEL_13;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v42 = _NRCopyLogObjectForNRUUID();
    v43 = _NRLogIsLevelEnabled();

    if (!v43)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: os_channel_get_fd failed", v31);
    goto LABEL_13;
  }

  v11 = fd;
  v12 = dispatch_group_create();
  if (!v12)
  {
    v44 = sub_10007CF34();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_10007CF34();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexusGroup) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVoice:]", 2370);
    }

    v47 = _os_log_pack_size();
    v48 = *__error();
    v49 = _os_log_pack_fill(block - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48, &_mh_execute_header, "%{public}s Assertion Failed: (nexusGroup) != ((void*)0)");
    goto LABEL_31;
  }

  v13 = v12;
  v14 = dispatch_source_create(&_dispatch_source_type_read, v11, 0, *(a1 + 8));
  v15 = *(a1 + 623);
  *(a1 + 623) = v14;

  v16 = *(a1 + 623);
  if (!v16)
  {
    v50 = sub_10007CF34();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      v52 = sub_10007CF34();
      _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusVOInputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVoice:]", 2374);
    }

    v53 = _os_log_pack_size();
    v54 = *__error();
    v49 = _os_log_pack_fill(block - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v54, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusVOInputSource) != ((void*)0)");
LABEL_31:
    *v49 = 136446210;
    *(v49 + 4) = "[NRLinkBluetooth setupNexusChannelVoice:]";
    goto LABEL_35;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AAC6C;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_group_enter(v13);
  v17 = *(a1 + 623);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000AAE1C;
  v65[3] = &unk_1001FD3C8;
  v18 = v13;
  v66 = v18;
  dispatch_source_set_cancel_handler(v17, v65);
  dispatch_activate(*(a1 + 623));
  v19 = dispatch_source_create(&_dispatch_source_type_write, v11, 0, *(a1 + 8));
  v20 = *(a1 + 631);
  *(a1 + 631) = v19;

  v21 = *(a1 + 631);
  if (!v21)
  {
    v55 = sub_10007CF34();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      v57 = sub_10007CF34();
      _NRLogWithArgs(v57, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusVOOutputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVoice:]", 2392);
    }

    v58 = _os_log_pack_size();
    v59 = __error();
    v60 = _os_log_pack_fill(block - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v58, *v59, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusVOOutputSource) != ((void*)0)");
    *v60 = 136446210;
    *(v60 + 4) = "[NRLinkBluetooth setupNexusChannelVoice:]";
LABEL_35:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000AAE24;
  v64[3] = &unk_1001FD3C8;
  v64[4] = a1;
  dispatch_source_set_event_handler(v21, v64);
  dispatch_group_enter(v18);
  v22 = *(a1 + 631);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000AAFC8;
  v62[3] = &unk_1001FD3C8;
  v23 = v18;
  v63 = v23;
  dispatch_source_set_cancel_handler(v22, v62);
  v24 = 1;
  *(a1 + 255) = 1;
  v25 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAFD0;
  block[3] = &unk_1001FCDD8;
  block[4] = v7;
  dispatch_group_notify(v23, v25, block);
  v26 = *(a1 + 591);
  *(a1 + 591) = v23;
  v27 = v23;

LABEL_18:
  return v24;
}

uint64_t sub_1000A06B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_channel_attr_create();
  if (!v4)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = [a1 copyDescription];
      _NRLogWithArgs(v30, 17, "%@: os_channel_attr_create failed", v31);
LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  os_channel_attr_set();
  v68[0] = 0;
  v68[1] = 0;
  [v3 getUUIDBytes:v68];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = [a1 copyDescription];
      v36 = __error();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d %@: os_channel_create_extended for %@ failed (errno %d)\n", "", "[NRLinkBluetooth setupNexusChannelVideo:]", 2044, v35, v3, *v36);
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v7 = extended;
  *(a1 + 759) = extended;
  if (!sub_1000A1674(a1, v5))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  os_channel_ring_id();
  v8 = os_channel_rx_ring();
  *(a1 + 767) = v8;
  if (!v8)
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusVIInputRing is NULL", v31);
    goto LABEL_13;
  }

  os_channel_ring_id();
  v9 = os_channel_tx_ring();
  *(a1 + 775) = v9;
  if (!v9)
  {
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusVIOutputRing is NULL", v31);
    goto LABEL_13;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v42 = _NRCopyLogObjectForNRUUID();
    v43 = _NRLogIsLevelEnabled();

    if (!v43)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: os_channel_get_fd failed", v31);
    goto LABEL_13;
  }

  v11 = fd;
  v12 = dispatch_group_create();
  if (!v12)
  {
    v44 = sub_10007CF34();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_10007CF34();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexusGroup) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVideo:]", 2080);
    }

    v47 = _os_log_pack_size();
    v48 = *__error();
    v49 = _os_log_pack_fill(block - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48, &_mh_execute_header, "%{public}s Assertion Failed: (nexusGroup) != ((void*)0)");
    goto LABEL_31;
  }

  v13 = v12;
  v14 = dispatch_source_create(&_dispatch_source_type_read, v11, 0, *(a1 + 8));
  v15 = *(a1 + 783);
  *(a1 + 783) = v14;

  v16 = *(a1 + 783);
  if (!v16)
  {
    v50 = sub_10007CF34();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      v52 = sub_10007CF34();
      _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusVIInputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVideo:]", 2084);
    }

    v53 = _os_log_pack_size();
    v54 = *__error();
    v49 = _os_log_pack_fill(block - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v54, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusVIInputSource) != ((void*)0)");
LABEL_31:
    *v49 = 136446210;
    *(v49 + 4) = "[NRLinkBluetooth setupNexusChannelVideo:]";
    goto LABEL_35;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A28E4;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_group_enter(v13);
  v17 = *(a1 + 783);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000A2A94;
  v65[3] = &unk_1001FD3C8;
  v18 = v13;
  v66 = v18;
  dispatch_source_set_cancel_handler(v17, v65);
  dispatch_activate(*(a1 + 783));
  v19 = dispatch_source_create(&_dispatch_source_type_write, v11, 0, *(a1 + 8));
  v20 = *(a1 + 791);
  *(a1 + 791) = v19;

  v21 = *(a1 + 791);
  if (!v21)
  {
    v55 = sub_10007CF34();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      v57 = sub_10007CF34();
      _NRLogWithArgs(v57, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusVIOutputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelVideo:]", 2102);
    }

    v58 = _os_log_pack_size();
    v59 = __error();
    v60 = _os_log_pack_fill(block - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v58, *v59, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusVIOutputSource) != ((void*)0)");
    *v60 = 136446210;
    *(v60 + 4) = "[NRLinkBluetooth setupNexusChannelVideo:]";
LABEL_35:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000A2A9C;
  v64[3] = &unk_1001FD3C8;
  v64[4] = a1;
  dispatch_source_set_event_handler(v21, v64);
  dispatch_group_enter(v18);
  v22 = *(a1 + 791);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000A2C40;
  v62[3] = &unk_1001FD3C8;
  v23 = v18;
  v63 = v23;
  dispatch_source_set_cancel_handler(v22, v62);
  v24 = 1;
  *(a1 + 257) = 1;
  v25 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2C48;
  block[3] = &unk_1001FCDD8;
  block[4] = v7;
  dispatch_group_notify(v23, v25, block);
  v26 = *(a1 + 751);
  *(a1 + 751) = v23;
  v27 = v23;

LABEL_18:
  return v24;
}

uint64_t sub_1000A0E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_channel_attr_create();
  if (!v4)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = [a1 copyDescription];
      _NRLogWithArgs(v30, 17, "%@: os_channel_attr_create failed", v31);
LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  os_channel_attr_set();
  v68[0] = 0;
  v68[1] = 0;
  [v3 getUUIDBytes:v68];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = [a1 copyDescription];
      v36 = __error();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d %@: os_channel_create_extended for %@ failed (errno %d)\n", "", "[NRLinkBluetooth setupNexusChannelBackground:]", 2141, v35, v3, *v36);
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v7 = extended;
  *(a1 + 903) = extended;
  if (!sub_1000A1674(a1, v5))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  os_channel_ring_id();
  v8 = os_channel_rx_ring();
  *(a1 + 911) = v8;
  if (!v8)
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusBKInputRing is NULL", v31);
    goto LABEL_13;
  }

  os_channel_ring_id();
  v9 = os_channel_tx_ring();
  *(a1 + 919) = v9;
  if (!v9)
  {
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: _nexusBKOutputRing is NULL", v31);
    goto LABEL_13;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v42 = _NRCopyLogObjectForNRUUID();
    v43 = _NRLogIsLevelEnabled();

    if (!v43)
    {
      goto LABEL_17;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs(v30, 17, "%@: os_channel_get_fd failed", v31);
    goto LABEL_13;
  }

  v11 = fd;
  v12 = dispatch_group_create();
  if (!v12)
  {
    v44 = sub_10007CF34();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_10007CF34();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexusGroup) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBackground:]", 2177);
    }

    v47 = _os_log_pack_size();
    v48 = *__error();
    v49 = _os_log_pack_fill(block - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48, &_mh_execute_header, "%{public}s Assertion Failed: (nexusGroup) != ((void*)0)");
    goto LABEL_31;
  }

  v13 = v12;
  v14 = dispatch_source_create(&_dispatch_source_type_read, v11, 0, *(a1 + 8));
  v15 = *(a1 + 927);
  *(a1 + 927) = v14;

  v16 = *(a1 + 927);
  if (!v16)
  {
    v50 = sub_10007CF34();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      v52 = sub_10007CF34();
      _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusBKInputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBackground:]", 2181);
    }

    v53 = _os_log_pack_size();
    v54 = *__error();
    v49 = _os_log_pack_fill(block - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v54, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusBKInputSource) != ((void*)0)");
LABEL_31:
    *v49 = 136446210;
    *(v49 + 4) = "[NRLinkBluetooth setupNexusChannelBackground:]";
    goto LABEL_35;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A2578;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_group_enter(v13);
  v17 = *(a1 + 927);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000A2728;
  v65[3] = &unk_1001FD3C8;
  v18 = v13;
  v66 = v18;
  dispatch_source_set_cancel_handler(v17, v65);
  dispatch_activate(*(a1 + 927));
  v19 = dispatch_source_create(&_dispatch_source_type_write, v11, 0, *(a1 + 8));
  v20 = *(a1 + 935);
  *(a1 + 935) = v19;

  v21 = *(a1 + 935);
  if (!v21)
  {
    v55 = sub_10007CF34();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      v57 = sub_10007CF34();
      _NRLogWithArgs(v57, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusBKOutputSource) != ((void*)0)", "", "[NRLinkBluetooth setupNexusChannelBackground:]", 2199);
    }

    v58 = _os_log_pack_size();
    v59 = __error();
    v60 = _os_log_pack_fill(block - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v58, *v59, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusBKOutputSource) != ((void*)0)");
    *v60 = 136446210;
    *(v60 + 4) = "[NRLinkBluetooth setupNexusChannelBackground:]";
LABEL_35:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000A2730;
  v64[3] = &unk_1001FD3C8;
  v64[4] = a1;
  dispatch_source_set_event_handler(v21, v64);
  dispatch_group_enter(v18);
  v22 = *(a1 + 935);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000A28D4;
  v62[3] = &unk_1001FD3C8;
  v23 = v18;
  v63 = v23;
  dispatch_source_set_cancel_handler(v22, v62);
  v24 = 1;
  *(a1 + 259) = 1;
  v25 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A28DC;
  block[3] = &unk_1001FCDD8;
  block[4] = v7;
  dispatch_group_notify(v23, v25, block);
  v26 = *(a1 + 895);
  *(a1 + 895) = v23;
  v27 = v23;

LABEL_18:
  return v24;
}

uint64_t sub_1000A1674(void *a1, uint64_t a2)
{
  v3 = os_channel_attr_get();
  v4 = _NRCopyLogObjectForNRUUID();
  if (v3)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(TX_RINGS) returned %d", v7, v3);
LABEL_84:

      return 0;
    }

    return 0;
  }

  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [a1 copyDescription];
    _NRLogWithArgs(v9, 2, "%s%.30s:%-4d %@: Nexus Channel TX_RINGS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2002, v10, 0);
  }

  v11 = os_channel_attr_get();
  v12 = _NRCopyLogObjectForNRUUID();
  if (v11)
  {
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(RX_RINGS) returned %d", v7, v11);
      goto LABEL_84;
    }

    return 0;
  }

  v14 = _NRLogIsLevelEnabled();

  if (v14)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [a1 copyDescription];
    _NRLogWithArgs(v15, 2, "%s%.30s:%-4d %@: Nexus Channel RX_RINGS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2003, v16, 0);
  }

  v17 = os_channel_attr_get();
  v18 = _NRCopyLogObjectForNRUUID();
  if (v17)
  {
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(TX_SLOTS) returned %d", v7, v17);
      goto LABEL_84;
    }

    return 0;
  }

  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs(v21, 2, "%s%.30s:%-4d %@: Nexus Channel TX_SLOTS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2004, v22, 0);
  }

  v23 = os_channel_attr_get();
  v24 = _NRCopyLogObjectForNRUUID();
  if (v23)
  {
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(RX_SLOTS) returned %d", v7, v23);
      goto LABEL_84;
    }

    return 0;
  }

  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [a1 copyDescription];
    _NRLogWithArgs(v27, 2, "%s%.30s:%-4d %@: Nexus Channel RX_SLOTS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2005, v28, 0);
  }

  v29 = os_channel_attr_get();
  v30 = _NRCopyLogObjectForNRUUID();
  if (v29)
  {
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(SLOT_BUF_SIZE) returned %d", v7, v29);
      goto LABEL_84;
    }

    return 0;
  }

  v32 = _NRLogIsLevelEnabled();

  if (v32)
  {
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = [a1 copyDescription];
    _NRLogWithArgs(v33, 2, "%s%.30s:%-4d %@: Nexus Channel SLOT_BUF_SIZE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2006, v34, 0);
  }

  v35 = os_channel_attr_get();
  v36 = _NRCopyLogObjectForNRUUID();
  if (v35)
  {
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(SLOT_META_SIZE) returned %d", v7, v35);
      goto LABEL_84;
    }

    return 0;
  }

  v38 = _NRLogIsLevelEnabled();

  if (v38)
  {
    v39 = _NRCopyLogObjectForNRUUID();
    v40 = [a1 copyDescription];
    _NRLogWithArgs(v39, 2, "%s%.30s:%-4d %@: Nexus Channel SLOT_META_SIZE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2007, v40, 0);
  }

  v41 = os_channel_attr_get();
  v42 = _NRCopyLogObjectForNRUUID();
  if (v41)
  {
    v43 = _NRLogIsLevelEnabled();

    if (v43)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(EXCLUSIVE) returned %d", v7, v41);
      goto LABEL_84;
    }

    return 0;
  }

  v44 = _NRLogIsLevelEnabled();

  if (v44)
  {
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = [a1 copyDescription];
    _NRLogWithArgs(v45, 2, "%s%.30s:%-4d %@: Nexus Channel EXCLUSIVE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2008, v46, 0);
  }

  v47 = os_channel_attr_get();
  v48 = _NRCopyLogObjectForNRUUID();
  if (v47)
  {
    v49 = _NRLogIsLevelEnabled();

    if (v49)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NO_AUTO_SYNC) returned %d", v7, v47);
      goto LABEL_84;
    }

    return 0;
  }

  v50 = _NRLogIsLevelEnabled();

  if (v50)
  {
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = [a1 copyDescription];
    _NRLogWithArgs(v51, 2, "%s%.30s:%-4d %@: Nexus Channel NO_AUTO_SYNC = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2009, v52, 0);
  }

  v53 = os_channel_attr_get();
  v54 = _NRCopyLogObjectForNRUUID();
  if (v53)
  {
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(TX_LOWAT_UNIT) returned %d", v7, v53);
      goto LABEL_84;
    }

    return 0;
  }

  v56 = _NRLogIsLevelEnabled();

  if (v56)
  {
    v57 = _NRCopyLogObjectForNRUUID();
    v58 = [a1 copyDescription];
    _NRLogWithArgs(v57, 2, "%s%.30s:%-4d %@: Nexus Channel TX_LOWAT_UNIT = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2010, v58, 0);
  }

  v59 = os_channel_attr_get();
  v60 = _NRCopyLogObjectForNRUUID();
  if (v59)
  {
    v61 = _NRLogIsLevelEnabled();

    if (v61)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(TX_LOWAT_VALUE) returned %d", v7, v59);
      goto LABEL_84;
    }

    return 0;
  }

  v62 = _NRLogIsLevelEnabled();

  if (v62)
  {
    v63 = _NRCopyLogObjectForNRUUID();
    v64 = [a1 copyDescription];
    _NRLogWithArgs(v63, 2, "%s%.30s:%-4d %@: Nexus Channel TX_LOWAT_VALUE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2011, v64, 0);
  }

  v65 = os_channel_attr_get();
  v66 = _NRCopyLogObjectForNRUUID();
  if (v65)
  {
    v67 = _NRLogIsLevelEnabled();

    if (v67)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(RX_LOWAT_UNIT) returned %d", v7, v65);
      goto LABEL_84;
    }

    return 0;
  }

  v68 = _NRLogIsLevelEnabled();

  if (v68)
  {
    v69 = _NRCopyLogObjectForNRUUID();
    v70 = [a1 copyDescription];
    _NRLogWithArgs(v69, 2, "%s%.30s:%-4d %@: Nexus Channel RX_LOWAT_UNIT = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2012, v70, 0);
  }

  v71 = os_channel_attr_get();
  v72 = _NRCopyLogObjectForNRUUID();
  if (v71)
  {
    v73 = _NRLogIsLevelEnabled();

    if (v73)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(RX_LOWAT_VALUE) returned %d", v7, v71);
      goto LABEL_84;
    }

    return 0;
  }

  v74 = _NRLogIsLevelEnabled();

  if (v74)
  {
    v75 = _NRCopyLogObjectForNRUUID();
    v76 = [a1 copyDescription];
    _NRLogWithArgs(v75, 2, "%s%.30s:%-4d %@: Nexus Channel RX_LOWAT_VALUE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2013, v76, 0);
  }

  v77 = os_channel_attr_get();
  v78 = _NRCopyLogObjectForNRUUID();
  if (v77)
  {
    v79 = _NRLogIsLevelEnabled();

    if (v79)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NEXUS_TYPE) returned %d", v7, v77);
      goto LABEL_84;
    }

    return 0;
  }

  v80 = _NRLogIsLevelEnabled();

  if (v80)
  {
    v81 = _NRCopyLogObjectForNRUUID();
    v82 = [a1 copyDescription];
    _NRLogWithArgs(v81, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_TYPE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2014, v82, 0);
  }

  v83 = os_channel_attr_get();
  v84 = _NRCopyLogObjectForNRUUID();
  if (v83)
  {
    v85 = _NRLogIsLevelEnabled();

    if (v85)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NEXUS_EXTENSIONS) returned %d", v7, v83);
      goto LABEL_84;
    }

    return 0;
  }

  v86 = _NRLogIsLevelEnabled();

  if (v86)
  {
    v87 = _NRCopyLogObjectForNRUUID();
    v88 = [a1 copyDescription];
    _NRLogWithArgs(v87, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_EXTENSIONS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2015, v88, 0);
  }

  v89 = os_channel_attr_get();
  v90 = _NRCopyLogObjectForNRUUID();
  if (v89)
  {
    v91 = _NRLogIsLevelEnabled();

    if (v91)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NEXUS_MHINTS) returned %d", v7, v89);
      goto LABEL_84;
    }

    return 0;
  }

  v92 = _NRLogIsLevelEnabled();

  if (v92)
  {
    v93 = _NRCopyLogObjectForNRUUID();
    v94 = [a1 copyDescription];
    _NRLogWithArgs(v93, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_MHINTS = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2016, v94, 0);
  }

  v95 = os_channel_attr_get();
  v96 = _NRCopyLogObjectForNRUUID();
  if (v95)
  {
    v97 = _NRLogIsLevelEnabled();

    if (v97)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NEXUS_IFINDEX) returned %d", v7, v95);
      goto LABEL_84;
    }

    return 0;
  }

  v98 = _NRLogIsLevelEnabled();

  if (v98)
  {
    v99 = _NRCopyLogObjectForNRUUID();
    v100 = [a1 copyDescription];
    _NRLogWithArgs(v99, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_IFINDEX = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2017, v100, 0);
  }

  v101 = os_channel_attr_get();
  v102 = _NRCopyLogObjectForNRUUID();
  if (v101)
  {
    v103 = _NRLogIsLevelEnabled();

    if (v103)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: os_channel_attr_get(NEXUS_STATS_SIZE) returned %d", v7, v101);
      goto LABEL_84;
    }

    return 0;
  }

  v105 = _NRLogIsLevelEnabled();

  if (v105)
  {
    v106 = _NRCopyLogObjectForNRUUID();
    v107 = [a1 copyDescription];
    _NRLogWithArgs(v106, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_STATS_SIZE = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2018, v107, 0);
  }

  v108 = os_channel_attr_get();
  v109 = _NRCopyLogObjectForNRUUID();
  if (v108)
  {
    v110 = _NRLogIsLevelEnabled();

    if (v110)
    {
      v111 = _NRCopyLogObjectForNRUUID();
      v112 = [a1 copyDescription];
      _NRLogWithArgs(v111, 17, "%@: os_channel_attr_get(NEXUS_FLOWADV_MAX) returned %d", v112, v108);
    }

    return 0;
  }

  v113 = _NRLogIsLevelEnabled();

  if (v113)
  {
    v114 = _NRCopyLogObjectForNRUUID();
    v115 = [a1 copyDescription];
    _NRLogWithArgs(v114, 2, "%s%.30s:%-4d %@: Nexus Channel NEXUS_FLOWADV_MAX = %llu", "", "[NRLinkBluetooth validateChannelAttributes:]", 2019, v115, 0);
  }

  return 1;
}

void sub_1000A2578(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Nexus BK input available but cancelled", "", "[NRLinkBluetooth setupNexusChannelBackground:]_block_invoke", 2184, v7);
    }
  }

  else
  {
    ++*(v2 + 975);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Nexus BK input available", "", "[NRLinkBluetooth setupNexusChannelBackground:]_block_invoke", 2188, v11);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 903);

    sub_10007D9C4(v3, v4);
  }
}

void sub_1000A2730(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Nexus BK output available but cancelled", "", "[NRLinkBluetooth setupNexusChannelBackground:]_block_invoke", 2202, v6);
    }
  }

  else
  {
    ++*(v2 + 983);
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Nexus BK output available", "", "[NRLinkBluetooth setupNexusChannelBackground:]_block_invoke", 2206, v10);
      }
    }

    v3 = *(a1 + 32);

    sub_100097378(v3);
  }
}

void sub_1000A28E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Nexus VI input available but cancelled", "", "[NRLinkBluetooth setupNexusChannelVideo:]_block_invoke", 2087, v7);
    }
  }

  else
  {
    ++*(v2 + 831);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Nexus VI input available", "", "[NRLinkBluetooth setupNexusChannelVideo:]_block_invoke", 2091, v11);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 759);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000A2A9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Nexus VI output available but cancelled", "", "[NRLinkBluetooth setupNexusChannelVideo:]_block_invoke", 2105, v6);
    }
  }

  else
  {
    ++*(v2 + 839);
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Nexus VI output available", "", "[NRLinkBluetooth setupNexusChannelVideo:]_block_invoke", 2109, v10);
      }
    }

    v3 = *(a1 + 32);

    sub_1000A2C50(v3);
  }
}

void sub_1000A2C50(void *a1)
{
  v1 = a1;
  if (gNRPacketLoggingEnabled == 1)
  {
    v392 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v394 = _NRCopyLogObjectForNRUUID();
      v395 = [v1 copyDescription];
      _NRLogWithArgs(v394, 1, "%s%.30s:%-4d %@: UrgentLink:start LtN-U loop function", "", "NRLinkLinkToNexusLoopUrgent", 4875, v395);
    }
  }

  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    v3 = _NRCopyLogObjectForNRUUID();
    v4 = _NRLogIsLevelEnabled();

    if (!v4)
    {
      goto LABEL_465;
    }

    StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
    IOVecStringWithContents = [v1 copyDescription];
    _NRLogWithArgs(StringFromNRTLVType, 16, "%s%.30s:%-4d %@: LinkToNexusLoopUrgent but cancelled", "", "NRLinkLinkToNexusLoopUrgent", 4878, IOVecStringWithContents);
    goto LABEL_463;
  }

  if (!*(v1 + 1215))
  {
    v446 = _NRCopyLogObjectForNRUUID();
    v447 = _NRLogIsLevelEnabled();

    if (!v447)
    {
      goto LABEL_465;
    }

    StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
    IOVecStringWithContents = [v1 copyDescription];
    _NRLogWithArgs(StringFromNRTLVType, 17, "%@: Tried to linkToNexusLoopUrgent but _urgentLinkInputRing is NULL", IOVecStringWithContents);
    goto LABEL_463;
  }

  if ((v2 - 1) < 2)
  {
    v7 = *(v1 + 269);
    v8 = _NRCopyLogObjectForNRUUID();
    if (v7 == 1)
    {
      v9 = _NRLogIsLevelEnabled();

      if (!v9)
      {
        goto LABEL_465;
      }

      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v1 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 0, "%s%.30s:%-4d %@: Tried to linkToNexusLoopUrgent after receiving urgent prelude", "", "NRLinkLinkToNexusLoopUrgent", 4890, IOVecStringWithContents);
    }

    else
    {
      v330 = _NRLogIsLevelEnabled();

      if (!v330)
      {
        goto LABEL_465;
      }

      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v1 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 17, "%@: Tried to linkToNexusLoopUrgent but bad state", IOVecStringWithContents);
    }

    goto LABEL_463;
  }

  v606 = 0;
  v607 = 0;
  v604[2] = &v638;
  v605 = &v644 + 8;
  v608 = &v643 + 8;
  v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v623 = v1;
  while (2)
  {
    v13 = 0;
    LODWORD(v625) = 0;
    v621 = 0;
    v612 = 0uLL;
    v616 = 0;
    v634 = 0u;
    v635 = 0u;
    v632 = 0u;
    v633 = 0u;
    v630 = 0;
    v631 = 0;
    LODWORD(v619) = *(v1 + v10[625]);
    while (1)
    {
LABEL_15:
      v622 = 2031;
      *(v1 + 2031) = 4;
      if (v13 && v13 >= v625)
      {
        if (v13 != v625)
        {
          goto LABEL_502;
        }

        v14 = v622;
        *(v1 + v622) = 12;
      }

      else
      {
        v14 = v622;
        if (v13)
        {
          *(v1 + v622) = 36;
          if (!v616)
          {
            goto LABEL_374;
          }

          goto LABEL_27;
        }
      }

      next_slot = os_channel_get_next_slot();
      *(v1 + v14) = (*(v1 + v14) | 0x10);
      if (!next_slot)
      {
LABEL_374:
        if (*(v1 + 267) == 1 && *(v1 + 1231))
        {
          *(v1 + 267) = 0;
          ++*(v1 + 1247);
          if (gNRPacketLoggingEnabled == 1)
          {
            v313 = _NRCopyLogObjectForNRUUID();
            v314 = _NRLogIsLevelEnabled();

            if (v314)
            {
              v315 = _NRCopyLogObjectForNRUUID();
              v316 = [v1 copyDescription];
              _NRLogWithArgs(v315, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkInput", "", "NRLinkResumeUrgentLinkInputSource", 857, v316);
            }
          }

          dispatch_resume(*(v1 + 1231));
        }

        if ((*(v1 + 257) & 1) == 0 && *(v1 + 791))
        {
          *(v1 + 257) = 1;
          ++*(v1 + 807);
          if (gNRPacketLoggingEnabled == 1)
          {
            v317 = _NRCopyLogObjectForNRUUID();
            v318 = _NRLogIsLevelEnabled();

            if (v318)
            {
              v319 = _NRCopyLogObjectForNRUUID();
              v320 = [v1 copyDescription];
              _NRLogWithArgs(v319, 1, "%s%.30s:%-4d %@: source-suspend: NexusVIOutput", "", "NRLinkSuspendNexusVIOutputSource", 868, v320);
            }
          }

          dispatch_suspend(*(v1 + 791));
        }

        *(v1 + v622) = (*(v1 + v622) | 0x40);
        goto LABEL_402;
      }

      v616 = next_slot;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_offset = os_buflet_get_data_offset();
      LODWORD(v625) = os_buflet_get_data_length();
      if (v625 >= 0x10000)
      {
        v378 = sub_10007CF34();
        v379 = _NRLogIsLevelEnabled();

        if (v379)
        {
          v380 = sub_10007CF34();
          _NRLogWithArgs(v380, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: inputBufferLength <= 65535", "", "NRLinkLinkToNexusLoopUrgent", 4947);
        }

        goto LABEL_480;
      }

      v621 = object_address + data_offset;
      os_packet_get_flow_uuid();
      v13 = 0;
      if (*(v1 + 292) == 1)
      {
        *(v1 + 292) = 0;
        LODWORD(v619) = 1;
      }

      else
      {
        LODWORD(v619) = v619 | BYTE2(v630);
      }

LABEL_27:
      if ((*(v1 + 267) & 1) == 0 && *(v1 + 1231))
      {
        *(v1 + 267) = 1;
        ++*(v1 + 1247);
        if (gNRPacketLoggingEnabled == 1)
        {
          v219 = _NRCopyLogObjectForNRUUID();
          v220 = _NRLogIsLevelEnabled();

          if (v220)
          {
            v221 = _NRCopyLogObjectForNRUUID();
            v222 = [v1 copyDescription];
            _NRLogWithArgs(v221, 1, "%s%.30s:%-4d %@: source-suspend: UrgentLinkInput", "", "NRLinkSuspendUrgentLinkInputSource", 849, v222);
          }
        }

        dispatch_suspend(*(v1 + 1231));
      }

      v18 = *(v1 + v11[534]);
      v19 = *(v1 + v12[533]);
      if (v18 <= v19)
      {
        break;
      }

      v20 = (*(v1 + 1463))[v19];
      v21 = v621;
      if ((*(v1 + 1463))[v19])
      {
LABEL_37:
        v613 = v20;
        goto LABEL_44;
      }

      while (1)
      {
        v22 = _NRCopyLogObjectForNRUUID();
        v23 = _NRLogIsLevelEnabled();

        if (v23)
        {
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = [v1 copyDescription];
          _NRLogWithArgs(v24, 1, "%s%.30s:%-4d %@: Handling Pad0 in linkReadBuffer", "", "NRLinkLinkToNexusLoopUrgent", 4996, v25);
        }

        ++*(v1 + v12[533]);
        v18 = *(v1 + v11[534]);
        v19 = *(v1 + v12[533]);
        if (v18 <= v19)
        {
          break;
        }

        v20 = (*(v1 + 1463))[v19];
        if ((*(v1 + 1463))[v19])
        {
          goto LABEL_37;
        }
      }

      if (v18 != v19)
      {
        v514 = sub_10007CF34();
        v515 = _NRLogIsLevelEnabled();

        if (v515)
        {
          v516 = sub_10007CF34();
          _NRLogWithArgs(v516, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_filledInUrgentLinkReadBufferBytes == self->_handledUrgentLinkReadBufferBytes", "", "NRLinkLinkToNexusLoopUrgent", 5000);
        }

        v517 = _os_log_pack_size();
        v518 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v519 = *__error();
        v362 = _os_log_pack_fill(v518, v517, v519, &_mh_execute_header, "%{public}s Assertion Failed: self->_filledInUrgentLinkReadBufferBytes == self->_handledUrgentLinkReadBufferBytes");
        goto LABEL_488;
      }

      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = _NRCopyLogObjectForNRUUID();
        v55 = [v1 copyDescription];
        _NRLogWithArgs(v54, 1, "%s%.30s:%-4d %@: Ended linkReadBuffer on a Pad0 handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoopUrgent", 5002, v55, *(v1 + v12[533]), *(v1 + v11[534]));
      }
    }

    v21 = v621;
    while (!*(v21 + v13))
    {
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = _NRCopyLogObjectForNRUUID();
        v29 = [v1 copyDescription];
        _NRLogWithArgs(v28, 1, "%s%.30s:%-4d %@: Handling Pad0 in linkInputSlot alreadyRead=%u", "", "NRLinkLinkToNexusLoopUrgent", 5020, v29, v13);
      }

      v13 = (v13 + 1);
      if (v13 >= v625)
      {
        if (v13 == v625)
        {
          v240 = _NRCopyLogObjectForNRUUID();
          v241 = _NRLogIsLevelEnabled();

          if (v241)
          {
            v242 = _NRCopyLogObjectForNRUUID();
            v243 = [v1 copyDescription];
            _NRLogWithArgs(v242, 1, "%s%.30s:%-4d %@: Ended linkInputSlot on a Pad0 handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoopUrgent", 5026, v243, *(v1 + v12[533]), *(v1 + v11[534]));
          }

          goto LABEL_402;
        }

        v443 = sub_10007CF34();
        v444 = _NRLogIsLevelEnabled();

        if (v444)
        {
          v445 = sub_10007CF34();
          _NRLogWithArgs(v445, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength", "", "NRLinkLinkToNexusLoopUrgent", 5024);
        }

LABEL_504:
        v389 = _os_log_pack_size();
        v390 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v391 = *__error();
        v362 = _os_log_pack_fill(v390, v389, v391, &_mh_execute_header, "%{public}s Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength");
LABEL_488:
        *v362 = 136446210;
        v366 = "NRLinkLinkToNexusLoopUrgent";
        goto LABEL_489;
      }
    }

    v613 = *(v21 + v13);
    v19 = *(v1 + v12[533]);
    v18 = *(v1 + v11[534]);
LABEL_44:
    if (v18 <= v19 + 2)
    {
      if (v18 == v19 + 2)
      {
        v32 = (*(v1 + 1463))[v19 + 1];
        if (v13 >= v625)
        {
          v31 = 0;
          v33 = 0;
          v34 = 512;
        }

        else
        {
          v31 = *(v21 + v13);
          v33 = 1;
          v34 = 256;
        }
      }

      else
      {
        if (v18 == v19 + 1)
        {
          v49 = v13;
        }

        else
        {
          v49 = v13 + 1;
        }

        if (v49 + 2 >= v625)
        {
          v32 = 0;
          v31 = 0;
          v33 = 0;
          v34 = 2048;
        }

        else
        {
          v50 = bswap32(*(v21 + v49));
          v31 = BYTE2(v50);
          v32 = HIBYTE(v50);
          v33 = 1;
          v34 = 1024;
        }
      }
    }

    else
    {
      v30 = bswap32(*&(*(v1 + 1463))[v19 + 1]);
      v31 = BYTE2(v30);
      v32 = HIBYTE(v30);
      v33 = 1;
      v34 = 128;
    }

    v35 = *(v1 + v622) | v34;
    *(v1 + v622) = v35;
    v657 = 0u;
    v658 = 0u;
    v655 = 0u;
    v656 = 0u;
    v653 = 0u;
    v654 = 0u;
    v651 = 0u;
    v652 = 0u;
    v649 = 0u;
    v650 = 0u;
    v647 = 0u;
    v648 = 0u;
    v645 = 0u;
    v646 = 0u;
    v643 = 0u;
    v644 = 0u;
    v36 = v18 - v19;
    v610 = v19;
    v611 = v18;
    if (v18 <= v19)
    {
      v38 = 0;
      v40 = 0;
      v39 = v622;
    }

    else
    {
      *&v643 = &(*(v1 + 1463))[v19];
      v37 = v31 | (v32 << 8);
      if (v37 + 5 >= v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = (v37 + 5);
      }

      if (!v38)
      {
        v404 = sub_10007CF34();
        v405 = _NRLogIsLevelEnabled();

        if (v405)
        {
          v406 = sub_10007CF34();
          _NRLogWithArgs(v406, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lrbIOVecLen > 0; tlvLen=%u filledInLinkReadBufferBytes=%u handledLinkReadBufferBytes=%u", "", "NRLinkLinkToNexusLoopUrgent", 5108, v37, *(v1 + v11[534]), *(v1 + v12[533]));
        }

        v407 = _os_log_pack_size();
        v408 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v409 = __error();
        v410 = _os_log_pack_fill(v408, v407, *v409, &_mh_execute_header, "%{public}s Assertion Failed: lrbIOVecLen > 0; tlvLen=%u filledInLinkReadBufferBytes=%u handledLinkReadBufferBytes=%u");
        sub_100095124(v410, "NRLinkLinkToNexusLoopUrgent", v37, *(v1 + v11[534]), *(v1 + v12[533]));
        goto LABEL_571;
      }

      DWORD2(v643) = v38;
      v35 |= 0x1000uLL;
      v39 = v622;
      *(v1 + v622) = v35;
      v40 = 1;
    }

    v41 = v625;
    v42 = v625;
    if (v13 >= v625)
    {
      v48 = 0;
      v47 = 0;
      if (v33)
      {
        goto LABEL_94;
      }

      goto LABEL_100;
    }

    if (v33 && (v31 | (v32 << 8)) + 5 <= v38)
    {
      v48 = 0;
      goto LABEL_94;
    }

    v43 = &v643 + v40;
    *v43 = v21 + v13;
    v44 = v42 - v13;
    *(v43 + 2) = v44;
    v38 = (v38 + v44);
    *(v1 + v39) = (v35 | 0x2000);
    v45 = v40;
    if (v38 < 3)
    {
      v46 = 1;
    }

    else
    {
      v46 = v33;
    }

    if ((v46 & 1) == 0)
    {
      if (DWORD2(v643) >= 3)
      {
        v51 = *(v643 + 1);
LABEL_88:
        v56 = v51;
        v57 = v51 >> 8;
LABEL_89:
        v58 = bswap32(v56 | (v57 << 8));
        v31 = BYTE2(v58);
        v32 = HIBYTE(v58);
        goto LABEL_90;
      }

      if (DWORD2(v643) == 2)
      {
        if (v611 <= v610)
        {
          goto LABEL_572;
        }

        v56 = *(v643 + 1);
        v57 = *v644;
        goto LABEL_89;
      }

      if (DWORD2(v643) == 1)
      {
        if (DWORD2(v644) < 2)
        {
          v583 = sub_10007CF34();
          v584 = _NRLogIsLevelEnabled();

          if (v584)
          {
            v585 = sub_10007CF34();
            IOVecString = createIOVecString();
            _NRLogWithArgs(v585, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, IOVecString);
          }

          v587 = _os_log_pack_size();
          v588 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v589 = *__error();
          v543 = _os_log_pack_fill(v588, v587, v589, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 2; %@");
        }

        else
        {
          if (v611 > v610)
          {
            v51 = *v644;
            goto LABEL_88;
          }

          v544 = sub_10007CF34();
          v545 = _NRLogIsLevelEnabled();

          if (v545)
          {
            v546 = sub_10007CF34();
            v547 = createIOVecString();
            _NRLogWithArgs(v546, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v547);
          }

          v548 = _os_log_pack_size();
          v549 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v550 = *__error();
          v543 = _os_log_pack_fill(v549, v548, v550, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1; %@");
        }
      }

      else
      {
        v536 = sub_10007CF34();
        v537 = _NRLogIsLevelEnabled();

        if (v537)
        {
          v538 = sub_10007CF34();
          v539 = createIOVecString();
          _NRLogWithArgs(v538, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, v539);
        }

        v540 = _os_log_pack_size();
        v541 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v542 = *__error();
        v543 = _os_log_pack_fill(v541, v540, v542, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
      }

      v551 = v543;
      v552 = createIOVecString();
      *v551 = 136446466;
      *(v551 + 4) = "nrReadTLVLenHBOFromIOVec";
      *(v551 + 12) = 2112;
      *(v551 + 14) = v552;
      goto LABEL_501;
    }

    if (!v33)
    {
      v47 = 0;
      *(v1 + v39) = (v35 | 0xA000);
      v48 = 1;
      v40 = (v40 + 1);
      v13 = v41;
      goto LABEL_100;
    }

LABEL_90:
    v59 = (v31 | (v32 << 8)) + 5;
    if (v59 >= v38)
    {
      v35 = *(v1 + v39) | 0x8000;
      *(v1 + v39) = v35;
      v48 = 1;
      v13 = v41;
      v40 = (v40 + 1);
    }

    else
    {
      v60 = (v38 - v59);
      v35 = *(v1 + v39) | 0x4000;
      *(v1 + v39) = v35;
      v61 = &v643 + v40;
      v62 = *(v61 + 2) - v60;
      *(v61 + 2) = v62;
      if (!v62)
      {
        v520 = v38;
        v521 = sub_10007CF34();
        v522 = _NRLogIsLevelEnabled();

        if (v522)
        {
          v523 = sub_10007CF34();
          v524 = createIOVecString();
          _NRLogWithArgs(v523, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u", "", "NRLinkLinkToNexusLoopUrgent", 5147, v45, v60, v524, v520, v42);
        }

        v525 = _os_log_pack_size();
        v526 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v527 = __error();
        v528 = _os_log_pack_fill(v526, v525, *v527, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u");
        v529 = createIOVecString();
        sub_10009C064(v528, "NRLinkLinkToNexusLoopUrgent", v45, v60, v529, v520, v42);
        goto LABEL_571;
      }

      v13 = (v41 - v60);
      v48 = 1;
      v40 = (v40 + 1);
      v38 = (v31 | (v32 << 8)) + 5;
    }

LABEL_94:
    v63 = v13;
    if ((v613 - 100) >= 6 && (v613 - 2) >= 4)
    {
      v65 = v616;
      if (v613 == 1)
      {
        v64 = 255;
        goto LABEL_97;
      }
    }

    else
    {
      v64 = 2000;
      v65 = v616;
LABEL_97:
      v66 = v31 | (v32 << 8);
      if (v66 > v64)
      {
        StringFromNRTLVType = createStringFromNRTLVType();
        IOVecStringWithContents = createIOVecStringWithContents();
        sub_100080EB4(v1, @"Received invalid TLV len %u for %@ (max=%u) %@", v337, v338, v339, v340, v341, v342, v66);
        goto LABEL_463;
      }
    }

    if ((v31 | (v32 << 8)) + 5 <= v38)
    {
      v13 = v63;
      goto LABEL_183;
    }

    v47 = 1;
    v13 = v63;
LABEL_100:
    LODWORD(v618) = v47;
    v67 = v21;
    v68 = v32;
    v620 = v31;
    v69 = v38;
    v614 = v40;
    v628 = 0uLL;
    v629 = 0uLL;
    v626 = 0uLL;
    v627 = 0uLL;
    v65 = v616;
    v70 = os_channel_get_next_slot();
    if (v70)
    {
      v624 = v13;
      v71 = v70;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      v72 = os_buflet_get_object_address();
      v73 = os_buflet_get_data_offset();
      data_length = os_buflet_get_data_length();
      if (HIWORD(data_length))
      {
LABEL_474:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: inputBufferLength <= 65535", "", "NRLinkLinkToNexusLoopUrgent", 5188);
        }

LABEL_480:
        v359 = _os_log_pack_size();
        v360 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v361 = *__error();
        v362 = _os_log_pack_fill(v360, v359, v361, &_mh_execute_header, "%{public}s Assertion Failed: inputBufferLength <= 65535");
        goto LABEL_488;
      }

      v75 = data_length;
      os_packet_get_flow_uuid();
      if (*(v1 + 292) == 1)
      {
        *(v1 + 292) = 0;
        LODWORD(v619) = 1;
      }

      else
      {
        LODWORD(v619) = v619 | BYTE2(v630);
      }

      v13 = v624;
      v31 = v620;
      v32 = v68;
      v76 = v618;
      v77 = v614;
      v21 = v72 + v73;
      v78 = &v643 + v614;
      *v78 = v21;
      if (!v75)
      {
LABEL_481:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkInputBufferLength > 0", "", "NRLinkLinkToNexusLoopUrgent", 5200);
        }

        v363 = _os_log_pack_size();
        v364 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v365 = *__error();
        v362 = _os_log_pack_fill(v364, v363, v365, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkInputBufferLength > 0");
        goto LABEL_488;
      }

      *(v78 + 2) = v75;
      v79 = *(v623 + v622) | 0x20000;
      *(v623 + v622) = v79;
      v38 = v75 + v69;
      if (v38 < 3)
      {
        v80 = 1;
      }

      else
      {
        v80 = v76;
      }

      if (v80)
      {
        if (v76)
        {
          v81 = v616;
          v82 = v622;
          goto LABEL_135;
        }

        v85 = 0;
        v81 = v616;
        v82 = v622;
LABEL_137:
        v35 = v79 | 0x80000;
        v1 = v623;
        *(v623 + v82) = v35;
        v609 = v81;
        v21 = v621;
        v92 = v71;
LABEL_140:
        v97 = v77 + 2;
        v98 = &v605[16 * v77];
        while (2)
        {
          v614 = v97 - 1;
          if ((v85 & 1) != 0 && (v32 << 8) + v31 + 5 <= v38)
          {
            v616 = v81;
            v48 = 1;
            v40 = v614;
LABEL_182:
            v65 = v609;
            goto LABEL_183;
          }

          v99 = v85;
          v100 = v98;
          v617 = v32;
          v618 = v38;
          v620 = v31;
          v628 = 0u;
          v629 = 0u;
          v626 = 0u;
          v627 = 0u;
          v101 = os_channel_get_next_slot();
          if (!v101)
          {
            v40 = (v97 - 1);
            v35 = *(v1 + v82) | 0x10000;
            *(v1 + v82) = v35;
            if (v99)
            {
              v48 = 1;
              v616 = v92;
              LODWORD(v32) = v617;
              v38 = v618;
              LODWORD(v31) = v620;
              goto LABEL_182;
            }

            v616 = v92;
            LOWORD(v32) = v617;
            v38 = v618;
            LOWORD(v31) = v620;
LABEL_388:
            if (gNRPacketLoggingEnabled == 1)
            {
              v299 = v38;
              v300 = v31;
              v301 = v32;
              v302 = v40;
              v303 = _NRCopyLogObjectForNRUUID();
              v304 = _NRLogIsLevelEnabled();

              LOWORD(v40) = v302;
              if (v304)
              {
                v305 = v301;
                v306 = v300;
                v307 = v299;
                v308 = v306;
                v309 = v305;
                v310 = _NRCopyLogObjectForNRUUID();
                v311 = [v1 copyDescription];
                v312 = createStringFromNRTLVType();
                _NRLogWithArgs(v310, 1, "%s%.30s:%-4d %@: UrgentLink:LtN-U not enough input bytes from linkInputSlot %u to fit %@ tlvLen %u", "", "NRLinkLinkToNexusLoopUrgent", 5275, v311, v307, v312, v308 | (v309 << 8));

                LOWORD(v40) = v302;
              }
            }

            v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            if (*(v1 + 267) == 1 && *(v1 + 1231))
            {
              v245 = v40;
              *(v1 + 267) = 0;
              ++*(v1 + 1247);
              if (gNRPacketLoggingEnabled == 1)
              {
                v321 = v40;
                v322 = _NRCopyLogObjectForNRUUID();
                v323 = _NRLogIsLevelEnabled();

                v245 = v321;
                if (v323)
                {
                  v324 = _NRCopyLogObjectForNRUUID();
                  v325 = [v1 copyDescription];
                  _NRLogWithArgs(v324, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkInput", "", "NRLinkResumeUrgentLinkInputSource", 857, v325);

                  v245 = v321;
                }
              }

              dispatch_resume(*(v1 + 1231));
              LOWORD(v40) = v245;
            }

            if ((v611 > v610) < v40)
            {
              v246 = v40 - (v611 > v610);
              v247 = &v608[16 * (v611 > v610)];
              do
              {
                if (gNRPacketLoggingEnabled == 1)
                {
                  v249 = _NRCopyLogObjectForNRUUID();
                  v250 = _NRLogIsLevelEnabled();

                  if (v250)
                  {
                    v251 = _NRCopyLogObjectForNRUUID();
                    v252 = [v1 copyDescription];
                    _NRLogWithArgs(v251, 1, "%s%.30s:%-4d %@: partial TLV - consolidating %u bytes from linkInputSlot buf %p to linkReadBuffer filledIn=%u handled=%u", "", "NRLinkLinkToNexusLoopUrgent", 5282, v252, *v247, *(v247 - 1), *(v1 + 379), *(v1 + 383));
                  }
                }

                memcpy(&(*(v1 + 1463))[*(v1 + 379)], *(v247 - 1), *v247);
                v248 = *v247;
                v247 += 4;
                *(v1 + 379) += v248;
                --v246;
              }

              while (v246);
            }

            *(v1 + v622) = (*(v1 + v622) | 0x100000);
LABEL_401:
            *(&v612 + 1) = v616;
            goto LABEL_402;
          }

          v615 = v101;
          v616 = v92;
          v102 = v97;
          v621 = v21;
          v624 = v13;
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          v103 = os_buflet_get_object_address();
          v104 = os_buflet_get_data_offset();
          v105 = os_buflet_get_data_length();
          if (v105 >= 0x10000)
          {
            goto LABEL_474;
          }

          v106 = v105;
          os_packet_get_flow_uuid();
          if (*(v1 + 292) == 1)
          {
            *(v1 + 292) = 0;
            LODWORD(v619) = 1;
          }

          else
          {
            LODWORD(v619) = v619 | BYTE2(v630);
          }

          v32 = v617;
          v107 = v618;
          v31 = v620;
          v108 = v100;
          v21 = v103 + v104;
          *(v100 - 1) = v21;
          v13 = v624;
          if (!v106)
          {
            goto LABEL_481;
          }

          *v100 = v106;
          v82 = v622;
          v109 = *(v623 + v622);
          *(v623 + v622) = (v109 | 0x20000);
          v38 = v106 + v107;
          if (v99 & 1 | (v38 < 3))
          {
            v110 = v102;
            if (v99)
            {
              v81 = v616;
LABEL_171:
              v117 = (v32 << 8) + v31 + 5;
              v118 = *(v623 + v82);
              if (v117 <= v38)
              {
                v35 = v118 | 0x40000;
                *(v623 + v82) = v35;
                v93 = (v38 - v117);
                v119 = &v643 + v110 - 1;
                v120 = *(v119 + 2) - v93;
                *(v119 + 2) = v120;
                if (!v120)
                {
                  v1 = v38;
                  v94 = (v110 - 1);
                  goto LABEL_494;
                }

                v13 = v106 - v93;
                v632 = v626;
                v633 = v627;
                v634 = v628;
                v635 = v629;
                if (v110 == 16)
                {
                  v65 = v615;
                  LODWORD(v625) = v106;
                  v38 = (v32 << 8) + v31 + 5;
                  v1 = v623;
                  goto LABEL_190;
                }

                v85 = 1;
                v92 = v615;
                v609 = v615;
                LODWORD(v625) = v106;
                v38 = (v32 << 8) + v31 + 5;
                v1 = v623;
              }

              else
              {
                v35 = v118 | 0x80000;
                *(v623 + v82) = v35;
                if (v110 == 16)
                {
                  v124 = v117 > v38;
                  v117 = v38;
                  v1 = v623;
                  v13 = v624;
                  v21 = v621;
                  v65 = v609;
                  if (v124)
                  {
                    goto LABEL_491;
                  }

LABEL_190:
                  v617 = (v31 | (v32 << 8));
                  v40 = 16;
                  v121 = v31 | (v32 << 8);
LABEL_191:
                  v122 = v35 | 0x200000;
                  v123 = v65;
                  *(&v612 + 1) = v65;
                  goto LABEL_192;
                }

                v85 = 1;
                v1 = v623;
                v13 = v624;
                v21 = v621;
                v92 = v615;
              }
            }

            else
            {
              v35 = v109 | 0xA0000;
              v1 = v623;
              *(v623 + v82) = v35;
              v92 = v615;
              v81 = v616;
              if (v110 == 16)
              {
                goto LABEL_492;
              }

              v85 = 0;
              v21 = v621;
            }

            v97 = v110 + 1;
            v98 = (v108 + 4);
            continue;
          }

          break;
        }

        v110 = v102;
        if (DWORD2(v643) >= 3)
        {
          v111 = *(v643 + 1);
          v112 = HIBYTE(*(v643 + 1));
          v81 = v616;
LABEL_167:
          v114 = v111 | (v112 << 8);
          v115 = bswap32(v114);
          v31 = BYTE2(v115);
          v32 = HIBYTE(v115);
          if ((v613 - 100) >= 6 && (v613 - 2) >= 4)
          {
            if (v613 != 1)
            {
              goto LABEL_171;
            }

            v116 = 255;
          }

          else
          {
            v116 = 2000;
          }

          v90 = __rev16(v114);
          if (v90 > v116)
          {
            goto LABEL_461;
          }

          goto LABEL_171;
        }

        v81 = v616;
        if (DWORD2(v643) == 2)
        {
          v113 = v644;
          v111 = *(v643 + 1);
        }

        else
        {
          if (DWORD2(v643) != 1)
          {
            goto LABEL_507;
          }

          if (DWORD2(v644) > 1)
          {
            v111 = *v644;
            v112 = HIBYTE(*v644);
            goto LABEL_167;
          }

          if (v614 <= 1)
          {
            goto LABEL_531;
          }

          if (DWORD2(v644) != 1)
          {
            goto LABEL_534;
          }

          v113 = v645;
          v111 = *v644;
        }

        v112 = *v113;
        goto LABEL_167;
      }

      if (DWORD2(v643) > 2)
      {
        v83 = *(v643 + 1);
        v84 = HIBYTE(*(v643 + 1));
        v81 = v616;
        v82 = v622;
LABEL_131:
        v87 = v83 | (v84 << 8);
        v88 = bswap32(v87);
        v31 = BYTE2(v88);
        v32 = HIBYTE(v88);
        if ((v613 - 100) >= 6 && (v613 - 2) >= 4)
        {
          if (v613 == 1)
          {
            v89 = 255;
            goto LABEL_134;
          }
        }

        else
        {
          v89 = 2000;
LABEL_134:
          v90 = __rev16(v87);
          if (v90 > v89)
          {
LABEL_461:
            StringFromNRTLVType = createStringFromNRTLVType();
            IOVecStringWithContents = createIOVecStringWithContents();
            v1 = v623;
            sub_100080EB4(v623, @"LookAhead received invalid TLV len %u for %@ (max=%u) %@", v331, v332, v333, v334, v335, v336, v90);
            goto LABEL_463;
          }
        }

LABEL_135:
        v91 = (v31 | (v32 << 8)) + 5;
        v79 = *(v623 + v82);
        if (v91 > v38)
        {
          v85 = 1;
          v13 = v624;
          goto LABEL_137;
        }

        v35 = v79 | 0x40000;
        *(v623 + v82) = v35;
        v93 = (v38 - v91);
        v94 = v77;
        v95 = &v643 + v77;
        v96 = *(v95 + 2) - v93;
        *(v95 + 2) = v96;
        if (v96)
        {
          v13 = v75 - v93;
          v632 = v626;
          v633 = v627;
          v85 = 1;
          v634 = v628;
          v635 = v629;
          v38 = (v31 | (v32 << 8)) + 5;
          LODWORD(v625) = v75;
          v92 = v71;
          v609 = v71;
          v1 = v623;
          goto LABEL_140;
        }

        v1 = v38;
LABEL_494:
        v373 = sub_10007CF34();
        v374 = _NRLogIsLevelEnabled();

        if (v374)
        {
          v375 = sub_10007CF34();
          v376 = createIOVecString();
          v377 = v624;
          _NRLogWithArgs(v375, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk last ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u", "", "NRLinkLinkToNexusLoopUrgent", 5237, v94, v93, v376, v1, v624);
        }

        else
        {
          v377 = v624;
        }

        v381 = _os_log_pack_size();
        v382 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v383 = __error();
        v384 = _os_log_pack_fill(v382, v381, *v383, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk last ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u");
        v385 = createIOVecString();
        sub_10009C064(v384, "NRLinkLinkToNexusLoopUrgent", v94, v93, v385, v1, v377);

LABEL_501:
        sub_10007CF34();
        _NRLogAbortWithPack();
LABEL_502:
        v386 = sub_10007CF34();
        v387 = _NRLogIsLevelEnabled();

        if (v387)
        {
          v388 = sub_10007CF34();
          _NRLogWithArgs(v388, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength", "", "NRLinkLinkToNexusLoopUrgent", 4931);
        }

        goto LABEL_504;
      }

      v81 = v616;
      v82 = v622;
      if (DWORD2(v643) == 2)
      {
        if (!v614)
        {
          goto LABEL_572;
        }

        v86 = v644;
        v83 = *(v643 + 1);
        goto LABEL_130;
      }

      if (DWORD2(v643) == 1)
      {
        if (DWORD2(v644) > 1)
        {
          if (v614)
          {
            v83 = *v644;
            v84 = HIBYTE(*v644);
            goto LABEL_131;
          }

          v561 = sub_10007CF34();
          v562 = _NRLogIsLevelEnabled();

          if (v562)
          {
            v563 = sub_10007CF34();
            v564 = createIOVecString();
            _NRLogWithArgs(v563, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v564);
          }

          v565 = _os_log_pack_size();
          v566 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v567 = __error();
          v462 = _os_log_pack_fill(v566, v565, *v567, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1; %@");
          v463 = createIOVecString();
          *v462 = 136446466;
          *(v462 + 4) = "nrReadTLVLenHBOFromIOVec";
LABEL_538:
          *(v462 + 12) = 2112;
          *(v462 + 14) = v463;
          goto LABEL_490;
        }

        if (v614 < 2)
        {
LABEL_531:
          v448 = sub_10007CF34();
          v449 = _NRLogIsLevelEnabled();

          if (v449)
          {
            v450 = sub_10007CF34();
            v451 = createIOVecString();
            _NRLogWithArgs(v450, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, v451);
          }

          v452 = _os_log_pack_size();
          v453 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v454 = *__error();
          v403 = _os_log_pack_fill(v453, v452, v454, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 2; %@");
        }

        else
        {
          if (DWORD2(v644) == 1)
          {
            v86 = v645;
            v83 = *v644;
LABEL_130:
            v84 = *v86;
            goto LABEL_131;
          }

LABEL_534:
          v455 = sub_10007CF34();
          v456 = _NRLogIsLevelEnabled();

          if (v456)
          {
            v457 = sub_10007CF34();
            v458 = createIOVecString();
            _NRLogWithArgs(v457, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[1].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 275, v458);
          }

          v459 = _os_log_pack_size();
          v460 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v461 = *__error();
          v403 = _os_log_pack_fill(v460, v459, v461, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[1].len == 1; %@");
        }
      }

      else
      {
LABEL_507:
        v396 = sub_10007CF34();
        v397 = _NRLogIsLevelEnabled();

        if (v397)
        {
          v398 = sub_10007CF34();
          v399 = createIOVecString();
          _NRLogWithArgs(v398, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, v399);
        }

        v400 = _os_log_pack_size();
        v401 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v402 = *__error();
        v403 = _os_log_pack_fill(v401, v400, v402, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
      }

      v462 = v403;
      v463 = createIOVecString();
      *v462 = 136446466;
      *(v462 + 4) = "nrReadTLVLenHBOFromIOVec";
      goto LABEL_538;
    }

    v35 = *(v1 + v622) | 0x10000;
    *(v1 + v622) = v35;
    v40 = v614;
    v38 = v69;
    LODWORD(v31) = v620;
    LODWORD(v32) = v68;
    v21 = v67;
    if ((v618 & 1) == 0)
    {
      goto LABEL_388;
    }

LABEL_183:
    v117 = v38;
    v121 = v31 | (v32 << 8);
    v617 = (v31 | (v32 << 8));
    if (v617 + 5 > v38)
    {
      goto LABEL_388;
    }

    if (v48)
    {
      v82 = v622;
      goto LABEL_191;
    }

    v122 = v35 | 0x400000;
    v123 = v65;
    v82 = v622;
LABEL_192:
    v618 = v38;
    *(v1 + v82) = v122;
    *(v1 + 1551) += v117;
    v624 = v13;
    v616 = v123;
    v614 = v40;
    v620 = v121;
    if (v613 < 100)
    {
      if (!v40)
      {
        v417 = sub_10007CF34();
        v418 = _NRLogIsLevelEnabled();

        if (v418)
        {
          v419 = sub_10007CF34();
          _NRLogWithArgs(v419, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrChecksumIOVecInner", 143);
        }

        v420 = _os_log_pack_size();
        v421 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v422 = __error();
        v362 = _os_log_pack_fill(v421, v420, *v422, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 0");
        *v362 = 136446210;
        v366 = "nrChecksumIOVecInner";
        goto LABEL_489;
      }

      LODWORD(v609) = v40;
      v615 = v604;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = v121 + 3;
      v140 = v40;
      v141 = v608;
      while (1)
      {
        v142 = v139 - v136;
        if (v139 <= v136)
        {
          break;
        }

        if (*v141 >= v142)
        {
          v143 = v142;
        }

        else
        {
          v143 = *v141;
        }

        if (!v143)
        {
          v345 = sub_10007CF34();
          v346 = _NRLogIsLevelEnabled();

          v347 = "nrChecksumUpdate";
          if (v346)
          {
            v348 = sub_10007CF34();
            _NRLogWithArgs(v348, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);
          }

          v349 = _os_log_pack_size();
          v350 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v351 = *__error();
          v352 = _os_log_pack_fill(v350, v349, v351, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0");
          goto LABEL_472;
        }

        v1 = v604;
        v144 = *(v141 - 1);
        if ((v137 & 1) == 0 || (v604[1] = *(v141 - 1), LOWORD(v626) = *v144 << 8, v138 = os_inet_checksum(), v143 != 1))
        {
          v138 = os_inet_checksum();
        }

        if (v143)
        {
          v137 ^= 1u;
        }

        v136 += v143;
        if (v136 >= v139 && v143 < *v141)
        {
          goto LABEL_224;
        }

        ++v135;
        v141 += 4;
        if (v140 == v135)
        {
          v145 = v614;
          LOWORD(v135) = v614;
          goto LABEL_226;
        }
      }

      v143 = 0;
LABEL_224:
      v145 = v614;
LABEL_226:
      v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v136 == v139)
      {
        v146 = ~v138;
        v147 = (~v138 >> 8);
        v148 = &v643 + v135;
        v149 = *(v148 + 2);
        if (v149 < v143 + 2)
        {
          if (v149 < v143 + 1)
          {
            v467 = sub_10007CF34();
            v468 = _NRLogIsLevelEnabled();

            if (v468)
            {
              v469 = sub_10007CF34();
              v470 = createIOVecString();
              _NRLogWithArgs(v469, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, v470, v135, v143);
            }

            v471 = _os_log_pack_size();
            v472 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v473 = __error();
            v474 = _os_log_pack_fill(v472, v471, *v473, &_mh_execute_header, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
            v475 = createIOVecString();
          }

          else if (v135 + 1 >= v609)
          {
            v476 = sub_10007CF34();
            v477 = _NRLogIsLevelEnabled();

            if (v477)
            {
              v478 = sub_10007CF34();
              v479 = createIOVecString();
              _NRLogWithArgs(v478, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v479, v135, v143);
            }

            v480 = _os_log_pack_size();
            v481 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v482 = __error();
            v474 = _os_log_pack_fill(v481, v480, *v482, &_mh_execute_header, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
            v475 = createIOVecString();
          }

          else
          {
            v1 = (&v643 + v135 + 1);
            if (*(v1 + 2))
            {
              if (*(*v148 + v143) != v146 || **v1 != v147)
              {
                v491 = sub_10007CF34();
                v492 = _NRLogIsLevelEnabled();

                if (v492)
                {
                  v466 = sub_10007CF34();
                  _NRLogWithArgs(v466, 16, "%s%.30s:%-4d checksum failed disjoint IOVec received 0x%02x%02x != computed 0x%02x%02x", "");
LABEL_553:
                }

                goto LABEL_554;
              }

              goto LABEL_236;
            }

            v483 = sub_10007CF34();
            v484 = _NRLogIsLevelEnabled();

            if (v484)
            {
              v485 = sub_10007CF34();
              v486 = createIOVecString();
              _NRLogWithArgs(v485, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 193, v486, v135, v143);
            }

            v487 = _os_log_pack_size();
            v488 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v489 = __error();
            v474 = _os_log_pack_fill(v488, v487, *v489, &_mh_execute_header, "%{public}s Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
            v475 = createIOVecString();
          }

          v490 = v475;
          sub_10005015C(v474, "nrChecksumIOVecInner", v490, v135, v143);

          goto LABEL_490;
        }

        v150 = (*v148 + v143);
        if (*v150 != v146 || v150[1] != v147)
        {
          v464 = sub_10007CF34();
          v465 = _NRLogIsLevelEnabled();

          if (v465)
          {
            v466 = sub_10007CF34();
            _NRLogWithArgs(v466, 16, "%s%.30s:%-4d checksum failed same IOVec received 0x%02x%02x != computed 0x%02x%02x", "");
            goto LABEL_553;
          }

LABEL_554:
          v1 = v623;
          LOWORD(v13) = v624;
          goto LABEL_555;
        }

LABEL_236:
        v1 = v623;
        v13 = v624;
        goto LABEL_241;
      }

      v437 = sub_10007CF34();
      v438 = _NRLogIsLevelEnabled();

      v347 = "nrChecksumIOVecInner";
      if (v438)
      {
        v439 = sub_10007CF34();
        _NRLogWithArgs(v439, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);
      }

      v440 = _os_log_pack_size();
      v441 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v442 = *__error();
      v352 = _os_log_pack_fill(v441, v440, v442, &_mh_execute_header, "%{public}s Assertion Failed: computedBytes == writtenLength");
LABEL_472:
      *v352 = 136446210;
      *(v352 + 4) = v347;
      goto LABEL_490;
    }

    LOWORD(v626) = 0;
    if (!v40)
    {
      goto LABEL_513;
    }

    v615 = v604;
    v125 = 0;
    v126 = bswap32(v121);
    v127 = v40;
    v128 = v608;
    v609 = (v121 + 3);
    v129 = v121 + 3;
    v130 = (v613 >> 4) ^ HIWORD(v126);
    v131 = (16 * v613) ^ HIBYTE(v126);
    while (2)
    {
      v132 = *v128;
      if (v129)
      {
        if (v129 > v132)
        {
          v129 -= v132;
        }

        else
        {
          if (v129 < v132)
          {
            break;
          }

          v129 = 0;
        }

LABEL_196:
        v128 += 4;
        if (!--v127)
        {
          goto LABEL_238;
        }

        continue;
      }

      break;
    }

    v133 = v132 - v129;
    if (v133 >= 2 - v125)
    {
      v134 = (2 - v125);
    }

    else
    {
      v134 = v133;
    }

    memcpy(&v626 + v125, (*(v128 - 1) + v129), v134);
    v125 = (v134 + v125);
    if (v125 <= 1)
    {
      v129 = 0;
      v13 = v624;
      goto LABEL_196;
    }

    v13 = v624;
LABEL_238:
    if (v125 != 2)
    {
      v423 = sub_10007CF34();
      v424 = _NRLogIsLevelEnabled();

      v425 = v609;
      if (v424)
      {
        v426 = sub_10007CF34();
        v427 = createIOVecString();
        _NRLogWithArgs(v426, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v125, 2, v425, v427);
      }

      v428 = _os_log_pack_size();
      v429 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v430 = __error();
      v431 = _os_log_pack_fill(v429, v428, *v430, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
      v432 = createIOVecString();
      v433 = v431;
      v434 = v125;
      v435 = 2;
      v436 = v425;
      goto LABEL_522;
    }

    v145 = v614;
    v151 = v626 == (v130 | (v131 << 8));
    v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (!v151)
    {
LABEL_555:
      v493 = *(v1 + 2007);
      v494 = v620;
      if (v493)
      {
        v493[104] = 1;
      }

      v495 = _NRCopyLogObjectForNRUUID();
      v496 = _NRLogIsLevelEnabled();

      if (v496)
      {
        v622 = _NRCopyLogObjectForNRUUID();
        v497 = [v1 copyDescription];
        v498 = createStringFromNRTLVType();
        v625 = v494;
        v621 = *(v623 + 379);
        v499 = *(v623 + 383);
        v619 = createIOVecString();
        v624 = v13;
        v603 = v13;
        v1 = v623;
        v602 = v498;
        v500 = v498;
        v501 = v622;
        _NRLogWithArgs(v622, 17, "%@: Invalid checksum detected in urgent loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v497, v602, v494, v621, v499, v619, v618, v603, v616);
      }

      else
      {
        v625 = v494;
        v624 = v13;
      }

      StringFromNRTLVType = createStringFromNRTLVType();
      IOVecStringWithContents = createIOVecString();
      sub_100080EB4(v1, @"Invalid checksum detected in urgent loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v502, v503, v504, v505, v506, v507, StringFromNRTLVType);
      goto LABEL_463;
    }

LABEL_241:
    v628 = 0u;
    v629 = 0u;
    v626 = 0u;
    v627 = 0u;
    v152 = os_channel_get_next_slot();
    v621 = v21;
    if (!v152)
    {
      v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v156 = v610;
      v155 = v611;
      if (*(v1 + 257) == 1 && *(v1 + 791))
      {
        *(v1 + 257) = 0;
        ++*(v1 + 807);
        if (gNRPacketLoggingEnabled == 1)
        {
          v236 = _NRCopyLogObjectForNRUUID();
          v237 = _NRLogIsLevelEnabled();

          v145 = v614;
          if (v237)
          {
            v238 = _NRCopyLogObjectForNRUUID();
            v239 = [v1 copyDescription];
            _NRLogWithArgs(v238, 1, "%s%.30s:%-4d %@: source-resume: NexusVIOutput", "", "NRLinkResumeNexusVIOutputSource", 878, v239);

            v145 = v614;
          }
        }

        dispatch_resume(*(v1 + 791));
        v156 = v610;
        v155 = v611;
      }

      v157 = *(v1 + v622) | 0x800000;
      *(v1 + v622) = v157;
      if ((v155 > v156) < v145)
      {
        v158 = v155 > v156;
        v159 = v145;
        v160 = &v608[16 * v158];
        do
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v164 = _NRCopyLogObjectForNRUUID();
            v165 = _NRLogIsLevelEnabled();

            v145 = v614;
            if (v165)
            {
              v166 = _NRCopyLogObjectForNRUUID();
              v167 = [v1 copyDescription];
              _NRLogWithArgs(v166, 1, "%s%.30s:%-4d %@: UrgentLink:no nexusOutputSlot - consolidating %u bytes from linkInputSlot ioVecs[%u].buf=%p to linkReadBuffer filledIn=%u handled=%u", "", "NRLinkLinkToNexusLoopUrgent", 5347, v167, *v160, v158, *(v160 - 1), *(v1 + 379), *(v1 + 383));

              v145 = v614;
            }
          }

          v161 = *(v1 + 379);
          v162 = *v160;
          if ((v162 + v161) >= *(v1 + 319))
          {
            *(v1 + v622) = (*(v1 + v622) | 0x1000000);
            StringFromNRTLVType = createIOVecString();
            sub_100080EB4(v1, @"no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", v353, v354, v355, v356, v357, v358, StringFromNRTLVType);
            goto LABEL_464;
          }

          memcpy(&(*(v1 + 1463))[v161], *(v160 - 1), v162);
          v163 = *v160;
          v160 += 4;
          *(v1 + 379) += v163;
          ++v158;
        }

        while (v159 != v158);
        v157 = *(v1 + v622);
        v13 = v624;
        v156 = v610;
        v155 = v611;
      }

      if (v155 <= v156 || v145 != 1)
      {
        *(v1 + v622) = (v157 | 0x4000000);
        *(&v612 + 1) = v616;
        goto LABEL_15;
      }

      *(v1 + v622) = (v157 | 0x2000000);
      if (v13 && v625 > v13)
      {
        v244 = v625 - v13;
        if (gNRPacketLoggingEnabled == 1)
        {
          v326 = _NRCopyLogObjectForNRUUID();
          v327 = _NRLogIsLevelEnabled();

          if (v327)
          {
            v328 = _NRCopyLogObjectForNRUUID();
            v329 = [v1 copyDescription];
            _NRLogWithArgs(v328, 1, "%s%.30s:%-4d %@: UrgentLink:no nexusOutputSlot - tail consolidating %u bytes from linkInputSlot to linkReadBuffer filledIn=%u handled=%u and marking curLinkInputSlot=%p as completed", "", "NRLinkLinkToNexusLoopUrgent", 5381, v329, v244, *(v1 + 379), *(v1 + 383), v616);
          }
        }

        memcpy(&(*(v1 + 1463))[*(v1 + 379)], (v621 + v13), v244);
        *(v1 + 379) += v244;
        goto LABEL_401;
      }

LABEL_402:
      if (*(&v612 + 1))
      {
        v253 = *(v1 + v11[534]);
        v254 = *(v1 + v12[533]);
        if (v253 <= v254)
        {
          if (v254 != v253)
          {
            v508 = sub_10007CF34();
            v509 = _NRLogIsLevelEnabled();

            if (v509)
            {
              v510 = sub_10007CF34();
              _NRLogWithArgs(v510, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_handledUrgentLinkReadBufferBytes == self->_filledInUrgentLinkReadBufferBytes", "", "NRLinkLinkToNexusLoopUrgent", 5556);
            }

            v511 = _os_log_pack_size();
            v512 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v513 = *__error();
            v362 = _os_log_pack_fill(v512, v511, v513, &_mh_execute_header, "%{public}s Assertion Failed: self->_handledUrgentLinkReadBufferBytes == self->_filledInUrgentLinkReadBufferBytes");
            goto LABEL_488;
          }

          *(v1 + 2031) = (*(v1 + 2031) | 0x400000000);
          if (gNRPacketLoggingEnabled == 1)
          {
            v291 = _NRCopyLogObjectForNRUUID();
            v292 = _NRLogIsLevelEnabled();

            if (v292)
            {
              v293 = _NRCopyLogObjectForNRUUID();
              v294 = [v1 copyDescription];
              _NRLogWithArgs(v293, 1, "%s%.30s:%-4d %@: UrgentLink:resetting the linkReadBuffer (filledIn=%u)", "", "NRLinkLinkToNexusLoopUrgent", 5559, v294, *(v1 + v11[534]));
            }
          }

          *(v1 + v11[534]) = 0;
LABEL_410:
          *(v1 + v12[533]) = 0;
        }

        else
        {
          if (v254 > *(v1 + 327))
          {
            *(v1 + 2031) = (*(v1 + 2031) | 0x80000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v295 = _NRCopyLogObjectForNRUUID();
              v296 = _NRLogIsLevelEnabled();

              if (v296)
              {
                v297 = _NRCopyLogObjectForNRUUID();
                v298 = [v1 copyDescription];
                _NRLogWithArgs(v297, 1, "%s%.30s:%-4d %@: UrgentLink:memmoving the linkReadBuffer by handled=%u (filledIn=%u) thresh=%u", "", "NRLinkLinkToNexusLoopUrgent", 5537, v298, *(v1 + v12[533]), *(v1 + v11[534]), *(v1 + 327));
              }
            }

            v255 = *(v1 + v12[533]);
            memmove(*(v1 + 1463), &(*(v1 + 1463))[v255], (*(v1 + v11[534]) - v255));
            *(v1 + v11[534]) -= *(v1 + v12[533]);
            goto LABEL_410;
          }

          v262 = *(v1 + 2031);
          if (v254)
          {
            *(v1 + 2031) = (v262 | &_mh_execute_header);
            if (gNRPacketLoggingEnabled == 1)
            {
              v263 = _NRCopyLogObjectForNRUUID();
              v264 = _NRLogIsLevelEnabled();

              if (v264)
              {
                v265 = _NRCopyLogObjectForNRUUID();
                v266 = [v1 copyDescription];
                _NRLogWithArgs(v265, 1, "%s%.30s:%-4d %@: UrgentLink:not memmoving the linkReadBuffer thresh handled=%u filledIn=%u thresh=%u", "", "NRLinkLinkToNexusLoopUrgent", 5547, v266, *(v1 + v12[533]), *(v1 + v11[534]), *(v1 + 327));
                goto LABEL_433;
              }
            }
          }

          else
          {
            *(v1 + 2031) = (v262 | 0x200000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v267 = _NRCopyLogObjectForNRUUID();
              v268 = _NRLogIsLevelEnabled();

              if (v268)
              {
                v265 = _NRCopyLogObjectForNRUUID();
                v266 = [v1 copyDescription];
                _NRLogWithArgs(v265, 1, "%s%.30s:%-4d %@: UrgentLink:not memmoving the linkReadBuffer zero handled=%u filledIn=%u thresh=%u", "", "NRLinkLinkToNexusLoopUrgent", 5553, v266, *(v1 + v12[533]), *(v1 + v11[534]), *(v1 + 327));
LABEL_433:
              }
            }
          }
        }

        *(v1 + 2031) = (*(v1 + 2031) | 0x800000000);
        if (gNRPacketLoggingEnabled == 1)
        {
          v273 = _NRCopyLogObjectForNRUUID();
          v274 = _NRLogIsLevelEnabled();

          if (v274)
          {
            v275 = _NRCopyLogObjectForNRUUID();
            v276 = [v1 copyDescription];
            _NRLogWithArgs(v275, 1, "%s%.30s:%-4d %@: UrgentLink:advancing past linkInputSlot=%p and syncing urgent link input", "", "NRLinkLinkToNexusLoopUrgent", 5565, v276, *(&v612 + 1));
          }
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          v277 = +[NSDate date];
          v278 = *(v1 + 1855);
          *(v1 + 1855) = v277;
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*(v1 + 1599);
        if (gNRPacketLoggingEnabled == 1)
        {
          v279 = _NRCopyLogObjectForNRUUID();
          v280 = _NRLogIsLevelEnabled();

          if (v280)
          {
            v281 = _NRCopyLogObjectForNRUUID();
            v282 = [v1 copyDescription];
            _NRLogWithArgs(v281, 1, "%s%.30s:%-4d %@: UrgentLink:read from urgent pipe", "", "NRLinkLinkToNexusLoopUrgent", 5570, v282);
          }
        }
      }

      if (v612)
      {
        if (*(v1 + 775))
        {
          *(v1 + 2031) = (*(v1 + 2031) | 0x1000000000);
          if (gNRPacketLoggingEnabled == 1)
          {
            v283 = _NRCopyLogObjectForNRUUID();
            v284 = _NRLogIsLevelEnabled();

            if (v284)
            {
              v285 = _NRCopyLogObjectForNRUUID();
              v286 = [v1 copyDescription];
              _NRLogWithArgs(v285, 1, "%s%.30s:%-4d %@: UrgentLink:advancing past nexusVIOutputSlot=%p and syncing nexus VI output", "", "NRLinkLinkToNexusLoopUrgent", 5577, v286, v612);
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v287 = +[NSDate date];
            v288 = *(v1 + 1815);
            *(v1 + 1815) = v287;
          }

          os_channel_advance_slot();
          os_channel_sync();
          ++*(v1 + 855);
          if (gNRPacketLoggingEnabled == 1)
          {
            v289 = _NRCopyLogObjectForNRUUID();
            v290 = _NRLogIsLevelEnabled();

            if (v290)
            {
              v271 = _NRCopyLogObjectForNRUUID();
              v272 = [v1 copyDescription];
              _NRLogWithArgs(v271, 1, "%s%.30s:%-4d %@: UrgentLink:read from urgent pipe: %llu packets, %llu bytes", "", "NRLinkLinkToNexusLoopUrgent", 5582, v272, v607, v606);
LABEL_444:
            }
          }
        }

        else
        {
          v269 = _NRCopyLogObjectForNRUUID();
          v270 = _NRLogIsLevelEnabled();

          if (v270)
          {
            v271 = _NRCopyLogObjectForNRUUID();
            v272 = [v1 copyDescription];
            _NRLogWithArgs(v271, 17, "%@: Tried to sync nexus output but _nexusOutputRing is NULL", v272);
            goto LABEL_444;
          }
        }
      }

      if (*(v1 + 2031) && *(v1 + 2039))
      {
        *(v1 + 300) %= *(v1 + 299);
        v256 = *(v1 + 2039);
        v257 = (v256 + 8 * *(v1 + 300));
        if ((v257 + 1) <= v256 + 8 * *(v1 + 299))
        {
          if ((v257 & 7) == 0)
          {
            *v257 = *(v1 + 2031);
            ++*(v1 + 300);
            *(v1 + 2031) = 0;
          }
        }

        else
        {
          v258 = _NRCopyLogObjectForNRUUID();
          v259 = _NRLogIsLevelEnabled();

          if (v259)
          {
            v260 = _NRCopyLogObjectForNRUUID();
            v261 = [v1 copyDescription];
            _NRLogWithArgs(v260, 17, "%@: invalid index for link log list (curIdx: %u)", v261, *(v1 + 300));
          }
        }
      }

      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      *(v1 + 266) = v619 & 1;
      if (v612 != 0)
      {
        continue;
      }

      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_465;
      }

      v343 = _NRCopyLogObjectForNRUUID();
      v344 = _NRLogIsLevelEnabled();

      if (!v344)
      {
        goto LABEL_465;
      }

      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v1 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 1, "%s%.30s:%-4d %@: UrgentLink:out of LtN-U outer loop", "", "NRLinkLinkToNexusLoopUrgent", 5601, IOVecStringWithContents);
LABEL_463:

      goto LABEL_464;
    }

    break;
  }

  v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v611 > v610)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v223 = v152;
      v224 = _NRCopyLogObjectForNRUUID();
      v225 = _NRLogIsLevelEnabled();

      v152 = v223;
      v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v225)
      {
        v226 = _NRCopyLogObjectForNRUUID();
        v227 = [v1 copyDescription];
        _NRLogWithArgs(v226, 1, "%s%.30s:%-4d %@: UrgentLink:Advancing linkReadBuffer handled by %u handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoopUrgent", 5404, v227, DWORD2(v643), *(v1 + 383), *(v1 + 379));

        v152 = v223;
        v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }
    }

    *(v1 + 383) += DWORD2(v643);
    v13 = v624;
  }

  if (v613 > 99)
  {
    if (v613 <= 102)
    {
      if (v613 == 100)
      {
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP;
      }

      else if (v613 == 101)
      {
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ECT0;
      }

      else
      {
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP;
      }

LABEL_301:
      ++*(v1 + *v154);
      v183 = v152;
      if (*(v1 + 311))
      {
        *v627 = 503316480;
      }

      v184 = v620;
      v185 = nrTLVToPacket();
      if (v185)
      {
        v186 = v185;
        *(v1 + v622) = (*(v1 + v622) | 0x8000000);
        WORD1(v626) = *(v1 + 311) + v185;
        if (gNRPacketLoggingEnabled == 1)
        {
          ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
          v168 = v183;
          if (gNRPacketLoggingEnabled)
          {
            getESPSPIFromPacket();
            if (gNRPacketLoggingEnabled)
            {
              v228 = _NRCopyLogObjectForNRUUID();
              v229 = _NRLogIsLevelEnabled();

              v1 = v623;
              if (v229)
              {
                v230 = _NRCopyLogObjectForNRUUID();
                v231 = [v1 copyDescription];
                _NRLogWithArgs(v230, 1, "%s%.30s:%-4d %@: UrgentLink:Received ESP sequence number: %u", "", "NRLinkLinkToNexusLoopUrgent", 5463, v231, ESPSequenceNumberFromPacket);
              }
            }

            else
            {
              v1 = v623;
            }

            v13 = v624;
          }
        }

        else
        {
          ESPSequenceNumberFromPacket = 0;
          v168 = v183;
        }

        packet = os_channel_slot_get_packet();
        if (v619)
        {
          memset(v642, 0, sizeof(v642));
          v641 = 1;
          if (packet)
          {
            os_packet_set_flow_uuid();
            *(v1 + v622) = (*(v1 + v622) | 0x10000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v232 = _NRCopyLogObjectForNRUUID();
              v233 = _NRLogIsLevelEnabled();

              if (v233)
              {
                v234 = _NRCopyLogObjectForNRUUID();
                v235 = [v1 copyDescription];
                _NRLogWithArgs(v234, 1, "%s%.30s:%-4d %@: UrgentLink:Set waking metadata for packet w/ ESP sequence number: %u", "", "NRLinkLinkToNexusLoopUrgent", 5471, v235, ESPSequenceNumberFromPacket);
              }
            }
          }

          v189 = getESPSequenceNumberFromPacket();
          ESPSPIFromPacket = getESPSPIFromPacket();
          if (qword_100229268 != -1)
          {
            dispatch_once(&qword_100229268, &stru_1001FC3A0);
          }

          v191 = qword_100229260;
          v636 = _NSConcreteStackBlock;
          v637 = 3221225472;
          v638 = sub_1000922D0;
          v639 = &unk_1001FCDD8;
          v640 = __PAIR64__(v189, ESPSPIFromPacket);
          dispatch_async(v191, &v636);

          v13 = v624;
        }

        else if (packet)
        {
          os_packet_clear_flow_uuid();
        }

        os_channel_set_slot_properties();
        LODWORD(v619) = 0;
        ++*(v1 + 871);
        *(v1 + 887) += v186;
        v606 += v186;
        ++v607;
        goto LABEL_318;
      }

      v192 = _NRCopyLogObjectForNRUUID();
      v193 = _NRLogIsLevelEnabled();

      if (v193)
      {
        v194 = _NRCopyLogObjectForNRUUID();
        v195 = [v1 copyDescription];
        v196 = createStringFromNRTLVType();
        _NRLogWithArgs(v194, 17, "%@: failed to reinject %@ tlvLen=%u slotLen=%u", v195, v196, v184, WORD1(v626));

        v13 = v624;
      }

      v168 = v612;
      v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_319:
      *(v1 + v622) = (*(v1 + v622) | 0x40000000);
      if (*(v1 + 2031) && *(v1 + v153[530]))
      {
        *(v1 + 300) %= *(v1 + 299);
        v197 = *(v1 + v153[530]);
        v198 = (v197 + 8 * *(v1 + 300));
        if ((v198 + 1) <= v197 + 8 * *(v1 + 299))
        {
          if ((v198 & 7) == 0)
          {
            *v198 = *(v1 + 2031);
            ++*(v1 + 300);
            *(v1 + 2031) = 0;
          }
        }

        else
        {
          v199 = _NRCopyLogObjectForNRUUID();
          v200 = _NRLogIsLevelEnabled();

          if (v200)
          {
            v201 = _NRCopyLogObjectForNRUUID();
            v202 = [v1 copyDescription];
            _NRLogWithArgs(v201, 17, "%@: invalid index for link log list (curIdx: %u)", v202, *(v1 + 300));
          }
        }
      }

      *&v612 = v168;
      v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_15;
    }

    switch(v613)
    {
      case 'g':
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP_ECT0;
        goto LABEL_301;
      case 'h':
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC;
        goto LABEL_301;
      case 'i':
        v154 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
        goto LABEL_301;
    }

LABEL_278:
    v168 = v612;
    goto LABEL_319;
  }

  if (v613 <= 2)
  {
    if (v613 == 1)
    {
      v169 = _NRCopyLogObjectForNRUUID();
      v170 = _NRLogIsLevelEnabled();

      if (v170)
      {
        v171 = _NRCopyLogObjectForNRUUID();
        v172 = [v1 copyDescription];
        _NRLogWithArgs(v171, 1, "%s%.30s:%-4d %@: Handling PadN %u", "", "NRLinkLinkToNexusLoopUrgent", 5433, v172, v620);
      }

      v168 = v612;
LABEL_318:
      v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_319;
    }

    v154 = &OBJC_IVAR___NRLinkBluetooth__recvUncompressedIP;
    if (v613 == 2)
    {
      goto LABEL_301;
    }

    goto LABEL_278;
  }

  if (v613 == 3)
  {
    v154 = &OBJC_IVAR___NRLinkBluetooth__recvEncapsulated6LoWPAN;
    goto LABEL_301;
  }

  if (v613 == 4)
  {
    v173 = v620;
    if (!v620)
    {
      v204 = objc_alloc_init(NSData);
LABEL_329:
      v205 = v622;
      v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v619)
      {
        [v204 bytes];
        [v204 length];
        if (qword_100229268 != -1)
        {
          dispatch_once(&qword_100229268, &stru_1001FC3A0);
        }

        v206 = qword_100229260;
        v636 = _NSConcreteStackBlock;
        v637 = 3221225472;
        v638 = sub_1000922D0;
        v639 = &unk_1001FCDD8;
        v640 = 0;
        dispatch_async(v206, &v636);

        v153 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      *(v1 + v205) = (*(v1 + v205) | 0x20000000);
      sub_100094EDC(v1, v204);

      LODWORD(v619) = 0;
      v168 = v612;
      v13 = v624;
      goto LABEL_319;
    }

    v174 = malloc_type_malloc(v617, 0x87367FC4uLL);
    if (!v174)
    {
      v590 = sub_10007CF34();
      v591 = _NRLogIsLevelEnabled();

      v347 = "createNSDataFromTLVIOVec";
      if (v591)
      {
        v592 = sub_10007CF34();
        _NRLogWithArgs(v592, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createNSDataFromTLVIOVec", 423);
      }

      v593 = _os_log_pack_size();
      v594 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v595 = *__error();
      v352 = _os_log_pack_fill(v594, v593, v595, &_mh_execute_header, "%{public}s strict allocator failed");
      goto LABEL_472;
    }

    if (!v145)
    {
      goto LABEL_513;
    }

    v175 = v174;
    v176 = 0;
    v177 = v145;
    v178 = 3;
    v179 = v608;
    while (1)
    {
      v180 = *v179;
      if (!v178)
      {
        goto LABEL_291;
      }

      if (v178 <= v180)
      {
        break;
      }

      v178 -= v180;
LABEL_287:
      v179 += 4;
      if (!--v177)
      {
        goto LABEL_327;
      }
    }

    if (v178 < v180)
    {
LABEL_291:
      v181 = v180 - v178;
      if (v181 >= v173 - v176)
      {
        v182 = (v173 - v176);
      }

      else
      {
        v182 = v181;
      }

      memcpy(&v175[v176], (*(v179 - 1) + v178), v182);
      v176 = (v182 + v176);
      if (v176 >= v173)
      {
LABEL_327:
        if (v176 == v173)
        {
          v203 = [NSData alloc];
          v204 = [v203 initWithBytesNoCopy:v175 length:v617 freeWhenDone:1];
          v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          goto LABEL_329;
        }

        v553 = sub_10007CF34();
        v554 = _NRLogIsLevelEnabled();

        if (v554)
        {
          v555 = sub_10007CF34();
          v556 = createIOVecString();
          _NRLogWithArgs(v555, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v176, v173, 3, v556);
        }

        v557 = _os_log_pack_size();
        v558 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v559 = __error();
        v560 = _os_log_pack_fill(v558, v557, *v559, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
        v432 = createIOVecString();
        v433 = v560;
        v434 = v176;
        v435 = v173;
        v436 = 3;
LABEL_522:
        sub_100050120(v433, "nrWriteIOVecToBuffer", v434, v435, v436, v432);

        goto LABEL_490;
      }
    }

    v178 = 0;
    goto LABEL_287;
  }

  if (v613 != 5)
  {
    goto LABEL_278;
  }

  if (v145 == 1 && (DWORD2(v643) - 5) <= 0xFFFA)
  {
    sub_100096BD0(v1, (v643 + 3), (WORD4(v643) - 5));
    v168 = v612;
    goto LABEL_319;
  }

  v207 = v620;
  if (!v620)
  {
    v568 = sub_10007CF34();
    v569 = _NRLogIsLevelEnabled();

    if (v569)
    {
      v570 = sub_10007CF34();
      _NRLogWithArgs(v570, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", "", "NRLinkLinkToNexusLoopUrgent", 5517);
    }

    v571 = _os_log_pack_size();
    v572 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v573 = *__error();
    v362 = _os_log_pack_fill(v572, v571, v573, &_mh_execute_header, "%{public}s strict_malloc called with size 0");
    goto LABEL_488;
  }

  v208 = malloc_type_malloc(v617, 0x2EC54791uLL);
  if (!v208)
  {
    v596 = sub_10007CF34();
    v597 = _NRLogIsLevelEnabled();

    if (v597)
    {
      v598 = sub_10007CF34();
      _NRLogWithArgs(v598, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "NRLinkLinkToNexusLoopUrgent", 5517);
    }

    v599 = _os_log_pack_size();
    v600 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v601 = *__error();
    v362 = _os_log_pack_fill(v600, v599, v601, &_mh_execute_header, "%{public}s strict allocator failed");
    goto LABEL_488;
  }

  if (!v145)
  {
LABEL_513:
    v411 = sub_10007CF34();
    v412 = _NRLogIsLevelEnabled();

    if (v412)
    {
      v413 = sub_10007CF34();
      _NRLogWithArgs(v413, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrWriteIOVecToBuffer", 313);
    }

    v414 = _os_log_pack_size();
    v415 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v416 = __error();
    v362 = _os_log_pack_fill(v415, v414, *v416, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 0");
    *v362 = 136446210;
    v366 = "nrWriteIOVecToBuffer";
    goto LABEL_489;
  }

  v209 = v208;
  v210 = v145;
  v618 = v604;
  v211 = 0;
  v212 = v207;
  v213 = v210;
  v214 = 3;
  v215 = v608;
  while (1)
  {
    v216 = *v215;
    if (!v214)
    {
      break;
    }

    if (v214 <= v216)
    {
      if (v214 >= v216)
      {
        v214 = 0;
        goto LABEL_342;
      }

      break;
    }

    v214 -= v216;
LABEL_342:
    v215 += 4;
    if (!--v213)
    {
      goto LABEL_353;
    }
  }

  v217 = v216 - v214;
  if (v217 >= v207 - v211)
  {
    v218 = v207 - v211;
  }

  else
  {
    v218 = v217;
  }

  memcpy(&v209[v211], (*(v215 - 1) + v214), v218);
  v211 = (v218 + v211);
  if (v211 < v207)
  {
    v214 = 0;
    v13 = v624;
    goto LABEL_342;
  }

  v13 = v624;
LABEL_353:
  if (v211 == v207)
  {
    sub_100096BD0(v1, v209, v207);
    free(v209);
    v168 = v612;
    goto LABEL_318;
  }

  v574 = sub_10007CF34();
  v575 = _NRLogIsLevelEnabled();

  if (v575)
  {
    v576 = sub_10007CF34();
    v577 = createIOVecString();
    _NRLogWithArgs(v576, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v211, v212, 3, v577);
  }

  v578 = _os_log_pack_size();
  v579 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v580 = __error();
  v581 = _os_log_pack_fill(v579, v578, *v580, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
  v582 = createIOVecString();
  sub_100050120(v581, "nrWriteIOVecToBuffer", v211, v212, 3, v582);

LABEL_571:
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_572:
  v530 = sub_10007CF34();
  v531 = _NRLogIsLevelEnabled();

  if (v531)
  {
    v532 = sub_10007CF34();
    _NRLogWithArgs(v532, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", "", "nrReadTLVLenHBOFromIOVec", 265);
  }

  v533 = _os_log_pack_size();
  v534 = v604 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v535 = __error();
  v362 = _os_log_pack_fill(v534, v533, *v535, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1");
  *v362 = 136446210;
  v366 = "nrReadTLVLenHBOFromIOVec";
LABEL_489:
  *(v362 + 4) = v366;
LABEL_490:
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_491:
  v617 = v32;
  v620 = v31;
LABEL_492:
  StringFromNRTLVType = createIOVecStringWithContents();
  sub_100080EB4(v1, @"LtN not enough ioVecs %@ for %u", v367, v368, v369, v370, v371, v372, StringFromNRTLVType);
LABEL_464:

LABEL_465:
}

void sub_1000A7C10(void *a1, uint64_t a2)
{
  v313 = a2;
  v2 = a1;
  v3 = v2;
  if (v2[16] == 255)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v3 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: nexusToLinkLoopUrgent but cancelled", "", "NRLinkNexusToLinkLoopUrgent", 3511, v7);
      goto LABEL_14;
    }

    goto LABEL_275;
  }

  if (!*(v2 + 1199))
  {
    sub_10007D9C4(v2, v313);
    goto LABEL_275;
  }

  if (!*(v2 + 1223))
  {
    if ((v2[293] & 1) == 0)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v3 copyDescription];
        _NRLogWithArgs(v6, 17, "%@: Tried to nexusToLinkLoop but _urgentLinkOutputRing is NULL", v7);
        goto LABEL_14;
      }
    }

    goto LABEL_275;
  }

  v312 = *(v2 + 599);
  if (v312 == v313)
  {
    v308 = sub_100080F38;
    v303 = sub_1000813E8;
    if (gNRPacketLoggingEnabled != 1 || (v255 = _NRCopyLogObjectForNRUUID(), v256 = _NRLogIsLevelEnabled(), v255, v308 = sub_100080F38, v303 = sub_1000813E8, !v256))
    {
      v12 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
      v13 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
      v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
      v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
      goto LABEL_19;
    }

    v257 = _NRCopyLogObjectForNRUUID();
    v258 = [v3 copyDescription];
    _NRLogWithArgs(v257, 1, "%s%.30s:%-4d %@: UrgentLink:Serving voice channel", "", "NRLinkNexusToLinkLoopUrgent", 3542, v258);
    v12 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
    v13 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
    v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
    v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
    v308 = sub_100080F38;
    v259 = sub_1000813E8;
  }

  else
  {
    if (*(v2 + 759) != v313)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = _NRLogIsLevelEnabled();

      if (v5)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v3 copyDescription];
        _NRLogWithArgs(v6, 17, "%@: channel %p not eligible for urgent link", v7, v313);
        goto LABEL_14;
      }

      goto LABEL_275;
    }

    v308 = sub_100081064;
    v303 = sub_100081514;
    if (gNRPacketLoggingEnabled != 1 || (v270 = _NRCopyLogObjectForNRUUID(), v271 = _NRLogIsLevelEnabled(), v270, v308 = sub_100081064, v303 = sub_100081514, !v271))
    {
      v12 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
      v13 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
      v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
      v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
      goto LABEL_19;
    }

    v257 = _NRCopyLogObjectForNRUUID();
    v258 = [v3 copyDescription];
    _NRLogWithArgs(v257, 1, "%s%.30s:%-4d %@: UrgentLink:Serving video channel", "", "NRLinkNexusToLinkLoopUrgent", 3553, v258);
    v12 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
    v13 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
    v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
    v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
    v308 = sub_100081064;
    v259 = sub_100081514;
  }

  v303 = v259;

LABEL_19:
  v304 = 0;
  v16 = *(v3 + *v12);
  v301 = *v14;
  v17 = *(v3 + v301);
  v18 = *v13;
  v19 = v16;
  v297 = *(v3 + v18);
  v298 = v17;
  v299 = &v334 + 8;
  v300 = v18;
  v302 = *v15;
  v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v315 = v16;
LABEL_22:
  v21 = 0;
  v309 = 0;
  ESPSequenceNumberFromPacket = 0;
  v22 = 0;
  v316 = 0;
  v317 = 0;
  v23 = 0;
  v314 = 0;
  v24 = 0;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  v350 = 0;
  v351 = 0;
  v25 = *(v3 + 1039);
  packet = 0;
  v319 = v25;
  while (2)
  {
    v26 = v319;
    while (1)
    {
      *(v3 + 2079) = 2;
      v336 = 0u;
      v337 = 0u;
      v334 = 0u;
      v335 = 0u;
      v320 = v21;
      v321 = v24;
      if (!v19)
      {
        v27 = 0;
        if (v21)
        {
          goto LABEL_44;
        }

        goto LABEL_35;
      }

      v27 = v19;
      next_slot = os_channel_get_next_slot();
      if (!next_slot)
      {
        v21 = v320;
        v24 = v321;
        if (v320)
        {
          goto LABEL_44;
        }

        goto LABEL_35;
      }

      v21 = v320;
      if (v312 != v313)
      {
        v24 = v321;
LABEL_43:
        if (v320)
        {
          goto LABEL_44;
        }

        goto LABEL_35;
      }

      v24 = v321;
      if ((*(v3 + 265) & 1) == 0)
      {
        goto LABEL_43;
      }

      v29 = 0;
      if (v335)
      {
        v30 = 0;
        if (WORD1(v334))
        {
          v31 = next_slot;
          if (isPacketValidIPv6())
          {
            DSCPFromPacket = getDSCPFromPacket();
            v33 = DSCPFromPacket == 46;
            v34 = WORD1(v334) < 0x2A4u;
            v30 = v33 && v34;
            if (v33 && v34)
            {
              v29 = 46;
            }

            else
            {
              v29 = DSCPFromPacket;
            }
          }

          else
          {
            v29 = 0;
            v30 = 0;
          }

          next_slot = v31;
          v21 = v320;
          v24 = v321;
        }
      }

      else
      {
        v30 = 0;
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v307 = v29;
        v55 = next_slot;
        ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
        if (gNRPacketLoggingEnabled)
        {
          getESPSPIFromPacket();
        }

        next_slot = v55;
        v21 = v320;
        v24 = v321;
        v29 = v307;
        if (v30)
        {
LABEL_108:
          v307 = v29;
          v311 = next_slot;
          v328 = 0u;
          v329 = 0u;
          v326 = 0u;
          v327 = 0u;
          v70 = os_channel_get_next_slot();
          v71 = *(v3 + 264);
          v319 = v26;
          if (!v70)
          {
            v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            if (v71 && *(v3 + 1159))
            {
              *(v3 + 264) = 0;
              ++*(v3 + 1175);
              if (gNRPacketLoggingEnabled == 1)
              {
                v127 = _NRCopyLogObjectForNRUUID();
                v128 = _NRLogIsLevelEnabled();

                if (v128)
                {
                  v129 = _NRCopyLogObjectForNRUUID();
                  v130 = [v3 copyDescription];
                  _NRLogWithArgs(v129, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkOutput", "", "NRLinkResumeDatagramLinkOutputSource", 856, v130);
                }
              }

              dispatch_resume(*(v3 + 1159));
              v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            }

            v308(v3);
            *(v3 + 2079) |= 4uLL;
            LODWORD(v59) = 25;
            goto LABEL_134;
          }

          v72 = v70;
          if ((v71 & 1) == 0 && *(v3 + 1159))
          {
            v73 = v70;
            v74 = v23;
            *(v3 + 264) = 1;
            ++*(v3 + 1175);
            if (gNRPacketLoggingEnabled == 1)
            {
              v123 = _NRCopyLogObjectForNRUUID();
              v124 = _NRLogIsLevelEnabled();

              v74 = v23;
              if (v124)
              {
                v125 = _NRCopyLogObjectForNRUUID();
                v126 = [v3 copyDescription];
                _NRLogWithArgs(v125, 1, "%s%.30s:%-4d %@: source-suspend: DatagramLinkOutput", "", "NRLinkSuspendDatagramLinkOutputSource", 848, v126);

                v74 = v23;
              }
            }

            dispatch_suspend(*(v3 + 1159));
            v23 = v74;
            v72 = v73;
          }

          v75 = v72;
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          object_address = os_buflet_get_object_address();
          data_limit = os_buflet_get_data_limit();
          if (data_limit < 0x10000)
          {
            *&v322 = object_address;
            *(&v322 + 1) = data_limit;
            v78 = nrPacketToTLV();
            *(v3 + 1543) += v78;
            *(v3 + v301) += WORD1(v334);
            ++*(v3 + v300);
            *(v3 + 2079) |= 0x10uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v314 = v78;
              v119 = _NRCopyLogObjectForNRUUID();
              v120 = _NRLogIsLevelEnabled();

              if (v120)
              {
                v121 = _NRCopyLogObjectForNRUUID();
                v122 = [v3 copyDescription];
                _NRLogWithArgs(v121, 1, "%s%.30s:%-4d %@: wrote payload of length: %u, dscp: %u, uncompressedLen = %u", "", "NRLinkNexusToLinkLoopUrgent", 3688, v122, v314, v307, WORD1(v334));
              }
            }

            os_buflet_set_data_length();
            v351 = ++v319;
            os_packet_set_flow_uuid();
            v79 = os_packet_finalize();
            if (v79)
            {
              v262 = v79;
              v293 = sub_10007CF34();
              v294 = _NRLogIsLevelEnabled();

              if (v294)
              {
                v295 = sub_10007CF34();
                _NRLogWithArgs(v295, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoopUrgent", 3692, v262);
              }

              goto LABEL_314;
            }

            LODWORD(v59) = 24;
            v309 = v75;
            v314 = v311;
            v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_134:
            v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v21 = v320;
            v24 = v321;
            v19 = v27;
            goto LABEL_119;
          }

          v249 = sub_10007CF34();
          v250 = _NRLogIsLevelEnabled();

          if (v250)
          {
            v251 = sub_10007CF34();
            _NRLogWithArgs(v251, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: datagramBufferLength <= 65535", "", "NRLinkNexusToLinkLoopUrgent", 3667);
          }

          v252 = _os_log_pack_size();
          v253 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v254 = *__error();
          for (i = _os_log_pack_fill(v253, v252, v254, &_mh_execute_header, "%{public}s Assertion Failed: datagramBufferLength <= 65535"); ; i = _os_log_pack_fill(v232, v231, v233, &_mh_execute_header, "%{public}s Assertion Failed: curLinkOutputSlot == highestLinkOutputSlotWrittenTo"))
          {
LABEL_294:
            *i = 136446210;
            *(i + 4) = "NRLinkNexusToLinkLoopUrgent";
LABEL_295:
            sub_10007CF34();
            _NRLogAbortWithPack();
LABEL_296:
            v228 = sub_10007CF34();
            v229 = _NRLogIsLevelEnabled();

            if (v229)
            {
              v230 = sub_10007CF34();
              _NRLogWithArgs(v230, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkOutputSlot == highestLinkOutputSlotWrittenTo", "", "NRLinkNexusToLinkLoopUrgent", 3982);
            }

            v231 = _os_log_pack_size();
            v232 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v233 = *__error();
          }
        }
      }

      else
      {
        ESPSequenceNumberFromPacket = 0;
        if (v30)
        {
          goto LABEL_108;
        }
      }

      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v21)
      {
LABEL_44:
        *(v3 + 2079) |= 0x40uLL;
        if (!v24)
        {
          goto LABEL_180;
        }

        goto LABEL_45;
      }

LABEL_35:
      v35 = os_channel_get_next_slot();
      if (!v35)
      {
        v320 = 0;
LABEL_180:
        v19 = v27;
        if (*(v3 + 268) == 1 && *(v3 + 1239))
        {
          *(v3 + 268) = 0;
          ++*(v3 + 1255);
          if (gNRPacketLoggingEnabled == 1)
          {
            v190 = _NRCopyLogObjectForNRUUID();
            v191 = _NRLogIsLevelEnabled();

            if (v191)
            {
              v192 = _NRCopyLogObjectForNRUUID();
              v193 = [v3 copyDescription];
              _NRLogWithArgs(v192, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkOutput", "", "NRLinkResumeUrgentLinkOutputSource", 858, v193);
            }
          }

          dispatch_resume(*(v3 + 1239));
        }

        v319 = v26;
        v308(v3);
        *(v3 + 2079) |= 0x80uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v146 = _NRCopyLogObjectForNRUUID();
          v147 = _NRLogIsLevelEnabled();

          v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (v147)
          {
            v148 = _NRCopyLogObjectForNRUUID();
            v149 = [v3 copyDescription];
            _NRLogWithArgs(v148, 1, "%s%.30s:%-4d %@: no urgent link output slot", "", "NRLinkNexusToLinkLoopUrgent", 3730, v149);
          }

          v24 = 0;
        }

        else
        {
          v24 = 0;
          v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }

        LODWORD(v21) = v320;
        goto LABEL_187;
      }

      v36 = v23;
      *(v3 + 2079) |= 0x20uLL;
      v37 = v35;
      packet = os_channel_slot_get_packet();
      next_buflet = os_packet_get_next_buflet();
      v316 = os_buflet_get_object_address();
      v317 = next_buflet;
      v39 = os_buflet_get_data_limit();
      if (v39 >= 0x10000)
      {
        v201 = sub_10007CF34();
        v202 = _NRLogIsLevelEnabled();

        if (v202)
        {
          v203 = sub_10007CF34();
          _NRLogWithArgs(v203, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: outputBufferLength <= 65535", "", "NRLinkNexusToLinkLoopUrgent", 3718);
        }

LABEL_281:
        v204 = _os_log_pack_size();
        v205 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v206 = *__error();
        i = _os_log_pack_fill(v205, v204, v206, &_mh_execute_header, "%{public}s Assertion Failed: outputBufferLength <= 65535");
        goto LABEL_294;
      }

      v321 = v37;
      v23 = v36;
      if (v36 != v37)
      {
        ++v26;
      }

      v22 = v39;
      v21 = v320;
LABEL_45:
      if ((*(v3 + 268) & 1) == 0 && *(v3 + 1239))
      {
        *(v3 + 268) = 1;
        ++*(v3 + 1255);
        if (gNRPacketLoggingEnabled == 1)
        {
          v51 = _NRCopyLogObjectForNRUUID();
          v52 = _NRLogIsLevelEnabled();

          if (v52)
          {
            v53 = _NRCopyLogObjectForNRUUID();
            v54 = [v3 copyDescription];
            _NRLogWithArgs(v53, 1, "%s%.30s:%-4d %@: source-suspend: UrgentLinkOutput", "", "NRLinkSuspendUrgentLinkOutputSource", 850, v54);
          }
        }

        dispatch_suspend(*(v3 + 1239));
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v21 = v320;
      }

      v319 = v26;
      v40 = *(v3 + 351);
      v41 = *(v3 + v20[411]);
      if (v40 <= v41)
      {
        break;
      }

      v42 = v40 - v41;
      if (v42 >= (v22 - v21))
      {
        v43 = v22 - v21;
      }

      else
      {
        v43 = v42;
      }

      v44 = v21;
      memcpy(v316, (*(v3 + 1279) + v41), v43);
      *(v3 + v20[411]) += v43;
      *(v3 + 1559) += v43;
      ++*(v3 + 347);
      *(v3 + 2079) |= 0x100uLL;
      if (gNRPacketLoggingEnabled == 1)
      {
        v47 = _NRCopyLogObjectForNRUUID();
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v49 = _NRCopyLogObjectForNRUUID();
          v50 = [v3 copyDescription];
          _NRLogWithArgs(v49, 1, "%s%.30s:%-4d %@: wrote %u bytes from linkWriteBuffer to link, filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoopUrgent", 3768, v50, v43, *(v3 + 351), *(v3 + 355));
        }
      }

      v45 = v43 + v44;
      v19 = v315;
      if (v45 < v22)
      {
        v21 = v45;
        v24 = v321;
        v23 = v321;
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v320 = v21;
        if (v315)
        {
          goto LABEL_77;
        }

LABEL_234:
        if (*(v3 + 16) == 8)
        {
          v142 = _NRCopyLogObjectForNRUUID();
          v143 = _NRLogIsLevelEnabled();

          if (v143)
          {
            v144 = _NRCopyLogObjectForNRUUID();
            v145 = [v3 copyDescription];
            _NRLogWithArgs(v144, 17, "%@: Tried to nexusToLinkLoopUrgent but _nexusInputRing is NULL", v145);
          }

          v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          LODWORD(v21) = v320;
          v24 = v321;
        }

        else
        {
          *(v3 + 2079) |= 0x400uLL;
          v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }

LABEL_187:
        if (v23)
        {
          if (v24 != v23)
          {
            goto LABEL_296;
          }

          if (v21)
          {
            v87 = v21;
          }

          else
          {
            v87 = v22;
          }

          if (v21)
          {
            v131 = v22 == v21;
          }

          else
          {
            v131 = 1;
          }

          v132 = 0x40000;
          if (!v131)
          {
            v132 = 0x20000;
          }

          *(v3 + 2079) |= v132;
          if (gNRPacketLoggingEnabled == 1)
          {
            v160 = _NRCopyLogObjectForNRUUID();
            v161 = _NRLogIsLevelEnabled();

            if (v161)
            {
              v162 = _NRCopyLogObjectForNRUUID();
              v163 = [v3 copyDescription];
              _NRLogWithArgs(v162, 1, "%s%.30s:%-4d %@: UrgentLink:Sending ESP sequence number %u (4)", "", "NRLinkNexusToLinkLoopUrgent", 3997, v163, ESPSequenceNumberFromPacket);
            }
          }

          v351 = v319;
          os_buflet_set_data_length();
          os_packet_set_flow_uuid();
          v133 = os_packet_finalize();
          if (v133)
          {
            v272 = v133;
            v287 = sub_10007CF34();
            v288 = _NRLogIsLevelEnabled();

            if (v288)
            {
              v289 = sub_10007CF34();
              _NRLogWithArgs(v289, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoopUrgent", 4001, v272);
            }

            goto LABEL_320;
          }

          v134 = *(v3 + 351);
          v135 = *(v3 + 355);
          if (v134 <= v135)
          {
            if (v134 != v135)
            {
              v243 = sub_10007CF34();
              v244 = _NRLogIsLevelEnabled();

              if (v244)
              {
                v245 = sub_10007CF34();
                _NRLogWithArgs(v245, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_filledInUrgentLinkWriteBufferBytes == self->_handledUrgentLinkWriteBufferBytes", "", "NRLinkNexusToLinkLoopUrgent", 4016);
              }

              v246 = _os_log_pack_size();
              v247 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v248 = *__error();
              i = _os_log_pack_fill(v247, v246, v248, &_mh_execute_header, "%{public}s Assertion Failed: self->_filledInUrgentLinkWriteBufferBytes == self->_handledUrgentLinkWriteBufferBytes");
              goto LABEL_294;
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              if (v134)
              {
                *(v3 + 2079) |= 0x100000uLL;
                v186 = _NRCopyLogObjectForNRUUID();
                v187 = _NRLogIsLevelEnabled();

                if (v187)
                {
                  v188 = _NRCopyLogObjectForNRUUID();
                  v189 = [v3 copyDescription];
                  _NRLogWithArgs(v188, 1, "%s%.30s:%-4d %@: UrgentLink:resetting the linkWriteBuffer from filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoopUrgent", 4020, v189, *(v3 + 351), *(v3 + 355));
                }
              }
            }

            *(v3 + 351) = 0;
          }

          else
          {
            *(v3 + 2079) |= 0x80000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v182 = _NRCopyLogObjectForNRUUID();
              v183 = _NRLogIsLevelEnabled();

              if (v183)
              {
                v184 = _NRCopyLogObjectForNRUUID();
                v185 = [v3 copyDescription];
                _NRLogWithArgs(v184, 1, "%s%.30s:%-4d %@: UrgentLink:memmoving the linkWriteBuffer from filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoopUrgent", 4009, v185, *(v3 + 351), *(v3 + 355));
              }
            }

            memmove(*(v3 + 1279), (*(v3 + 1279) + *(v3 + 355)), (*(v3 + 351) - *(v3 + 355)));
            *(v3 + 351) -= *(v3 + 355);
          }

          *(v3 + 355) = 0;
          *(v3 + 2079) |= 0x200000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v164 = _NRCopyLogObjectForNRUUID();
            v165 = _NRLogIsLevelEnabled();

            if (v165)
            {
              v166 = _NRCopyLogObjectForNRUUID();
              v167 = [v3 copyDescription];
              _NRLogWithArgs(v166, 1, "%s%.30s:%-4d %@: UrgentLink:advancing past urgentLinkOutputSlot=%p and syncing urgent link output", "", "NRLinkNexusToLinkLoopUrgent", 4026, v167, v23);
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v168 = +[NSDate date];
            v169 = *(v3 + 1863);
            *(v3 + 1863) = v168;
          }

          os_channel_advance_slot();
          os_channel_sync();
          ++*(v3 + 1607);
          if (gNRPacketLoggingEnabled == 1)
          {
            v170 = _NRCopyLogObjectForNRUUID();
            v171 = _NRLogIsLevelEnabled();

            if (v171)
            {
              v172 = _NRCopyLogObjectForNRUUID();
              v173 = [v3 copyDescription];
              _NRLogWithArgs(v172, 1, "%s%.30s:%-4d %@: UrgentLink:Wrote to urgent pipe", "", "NRLinkNexusToLinkLoopUrgent", 4031, v173);
            }
          }
        }

        if (v309)
        {
          *(v3 + 2079) |= 0x800000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v150 = _NRCopyLogObjectForNRUUID();
            v151 = _NRLogIsLevelEnabled();

            if (v151)
            {
              v152 = _NRCopyLogObjectForNRUUID();
              v153 = [v3 copyDescription];
              _NRLogWithArgs(v152, 1, "%s%.30s:%-4d %@: DatagramLink:advancing past linkOutputSlot=%p and syncing datagram link output", "", "NRLinkNexusToLinkLoopUrgent", 4038, v153, v309);
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v154 = +[NSDate date];
            v155 = *(v3 + 1847);
            *(v3 + 1847) = v154;
          }

          os_channel_advance_slot();
          os_channel_sync();
          ++*(v3 + 1591);
        }

        if (v314)
        {
          if (v19)
          {
            *(v3 + 2079) |= 0x1000000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v174 = _NRCopyLogObjectForNRUUID();
              v175 = _NRLogIsLevelEnabled();

              if (v175)
              {
                v176 = _NRCopyLogObjectForNRUUID();
                v177 = [v3 copyDescription];
                _NRLogWithArgs(v176, 1, "%s%.30s:%-4d %@: UrgentLink:advancing past nexusInputSlot=%p and syncing nexus input", "", "NRLinkNexusToLinkLoopUrgent", 4048, v177, v314);
              }
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              v178 = +[NSDate date];
              v179 = *(v3 + 1807);
              *(v3 + 1807) = v178;
            }

            os_channel_advance_slot();
            os_channel_sync();
            ++*(v3 + v302);
            if (gNRPacketLoggingEnabled == 1)
            {
              v180 = _NRCopyLogObjectForNRUUID();
              v181 = _NRLogIsLevelEnabled();

              if (v181)
              {
                v158 = _NRCopyLogObjectForNRUUID();
                v159 = [v3 copyDescription];
                _NRLogWithArgs(v158, 1, "%s%.30s:%-4d %@: UrgentLink:Served %llu packets, %llu bytes", "", "NRLinkNexusToLinkLoopUrgent", 4054, v159, *(v3 + v300) - v297, *(v3 + v301) - v298);
                goto LABEL_256;
              }
            }
          }

          else
          {
            v156 = _NRCopyLogObjectForNRUUID();
            v157 = _NRLogIsLevelEnabled();

            if (v157)
            {
              v158 = _NRCopyLogObjectForNRUUID();
              v159 = [v3 copyDescription];
              _NRLogWithArgs(v158, 17, "%@: Tried to sync nexus input but _nexusInputRing is NULL", v159);
LABEL_256:
            }
          }
        }

        *(v3 + 1039) = v319;
        if (*(v3 + 2079) && *(v3 + v60[531]))
        {
          *(v3 + 306) %= *(v3 + 305);
          v136 = *(v3 + v60[531]);
          v137 = (v136 + 8 * *(v3 + 306));
          if ((v137 + 1) <= v136 + 8 * *(v3 + 305))
          {
            if ((v137 & 7) == 0)
            {
              *v137 = *(v3 + 2079);
              ++*(v3 + 306);
              *(v3 + 2079) = 0;
            }
          }

          else
          {
            v138 = _NRCopyLogObjectForNRUUID();
            v139 = _NRLogIsLevelEnabled();

            if (v139)
            {
              v140 = _NRCopyLogObjectForNRUUID();
              v141 = [v3 copyDescription];
              _NRLogWithArgs(v140, 17, "%@: invalid index for ntl log list (curIdx: %u)", v141, *(v3 + 306));
            }
          }
        }

        LODWORD(v59) = 0;
        if (v314)
        {
          v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          goto LABEL_21;
        }

        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (!v23 && !v309)
        {
          if (v304)
          {
            if (*(v3 + 256) == 1)
            {
              v87 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              if (*(v3 + 783))
              {
                *(v3 + 256) = 0;
                ++*(v3 + 799);
                if (gNRPacketLoggingEnabled == 1)
                {
                  goto LABEL_321;
                }

                goto LABEL_269;
              }
            }

            goto LABEL_270;
          }

          goto LABEL_274;
        }

LABEL_21:
        if (v59)
        {
          goto LABEL_275;
        }

        goto LABEL_22;
      }

      if (v45 != v22)
      {
        v194 = sub_10007CF34();
        v195 = _NRLogIsLevelEnabled();

        if (v195)
        {
          v196 = sub_10007CF34();
          _NRLogWithArgs(v196, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkOutputSlotPartialBytesAlreadyWritten == linkOutputBufferLength", "", "NRLinkNexusToLinkLoopUrgent", 3771);
        }

        v197 = _os_log_pack_size();
        v198 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v199 = *__error();
        i = _os_log_pack_fill(v198, v197, v199, &_mh_execute_header, "%{public}s Assertion Failed: curLinkOutputSlotPartialBytesAlreadyWritten == linkOutputBufferLength");
        goto LABEL_294;
      }

      os_buflet_set_data_length();
      v26 = v319;
      v351 = v319;
      os_packet_set_flow_uuid();
      v46 = os_packet_finalize();
      if (v46)
      {
        v262 = v46;
        v263 = sub_10007CF34();
        v264 = _NRLogIsLevelEnabled();

        if (v264)
        {
          v265 = sub_10007CF34();
          _NRLogWithArgs(v265, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoopUrgent", 3779, v262);
        }

LABEL_314:
        v266 = _os_log_pack_size();
        v267 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v268 = *__error();
        v269 = _os_log_pack_fill(v267, v266, v268, &_mh_execute_header, "%{public}s os_packet_finalize returned %d");
        *v269 = 136446466;
        *(v269 + 4) = "NRLinkNexusToLinkLoopUrgent";
        *(v269 + 12) = 1024;
        *(v269 + 14) = v262;
        goto LABEL_295;
      }

      v21 = 0;
      *(v3 + 2079) |= 0x200uLL;
      v24 = v321;
      v23 = v321;
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }

    v19 = v315;
    v24 = v321;
    v320 = v21;
    if (!v315)
    {
      goto LABEL_234;
    }

LABEL_77:
    v328 = 0u;
    v329 = 0u;
    v326 = 0u;
    v327 = 0u;
    v56 = os_channel_get_next_slot();
    if (!v56)
    {
      v303(v3);
      *(v3 + 2079) |= 0x800uLL;
      LODWORD(v59) = 25;
      v304 = 1;
      v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_118;
    }

    v306 = v56;
    v308(v3);
    if (gNRPacketLoggingEnabled == 1)
    {
      ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
      if (gNRPacketLoggingEnabled)
      {
        getESPSPIFromPacket();
        if (gNRPacketLoggingEnabled)
        {
          v107 = _NRCopyLogObjectForNRUUID();
          v108 = _NRLogIsLevelEnabled();

          if (v108)
          {
            v109 = _NRCopyLogObjectForNRUUID();
            v110 = [v3 copyDescription];
            _NRLogWithArgs(v109, 1, "%s%.30s:%-4d %@: UrgentLink:Sending ESP sequence number - to be sent on urgent pipe: %u (%u bytes)", "", "NRLinkNexusToLinkLoopUrgent", 3817, v110, ESPSequenceNumberFromPacket, WORD1(v326));
          }
        }

        v19 = v315;
      }
    }

    else
    {
      ESPSequenceNumberFromPacket = 0;
    }

    v311 = nrMaxTLVLengthForPacket();
    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    v344 = 0u;
    v345 = 0u;
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v338 = 0u;
    v339 = 0u;
    v336 = 0u;
    v337 = 0u;
    LODWORD(v307) = v22;
    v21 = v320;
    v334 = 0u;
    v335 = 0u;
    if (v22 <= v320)
    {
      v57 = 0;
      v58 = 0;
    }

    else
    {
      *&v334 = &v316[v320];
      v57 = v22 - v320;
      DWORD2(v334) = v57;
      v58 = 1;
    }

    if (v57 < v311)
    {
      v305 = v23;
      v61 = v58;
      v62 = &v299[16 * v58];
      do
      {
        v324 = 0u;
        v325 = 0u;
        v322 = 0u;
        v323 = 0u;
        if (!os_channel_get_next_slot())
        {
          break;
        }

        os_channel_slot_get_packet();
        os_packet_get_next_buflet();
        v63 = os_buflet_get_object_address();
        v64 = os_buflet_get_data_limit();
        if (v64 >= 0x10000)
        {
          v216 = sub_10007CF34();
          v217 = _NRLogIsLevelEnabled();

          if (v217)
          {
            v218 = sub_10007CF34();
            _NRLogWithArgs(v218, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkOutputBufferLength <= 65535", "", "NRLinkNexusToLinkLoopUrgent", 3846);
          }

          v219 = _os_log_pack_size();
          v220 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v221 = *__error();
          i = _os_log_pack_fill(v220, v219, v221, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkOutputBufferLength <= 65535");
          goto LABEL_294;
        }

        *(v62 - 1) = v63;
        if (!v64)
        {
          v222 = sub_10007CF34();
          v223 = _NRLogIsLevelEnabled();

          if (v223)
          {
            v224 = sub_10007CF34();
            _NRLogWithArgs(v224, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkOutputBufferLength > 0", "", "NRLinkNexusToLinkLoopUrgent", 3849);
          }

          v225 = _os_log_pack_size();
          v226 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v227 = *__error();
          i = _os_log_pack_fill(v226, v225, v227, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkOutputBufferLength > 0");
          goto LABEL_294;
        }

        *v62 = v64;
        *(v3 + 2079) |= 0x1000uLL;
        if (v61 == 15)
        {
          IOVecString = createIOVecString();
          sub_100080EB4(v3, @"NtL-U not enough ioVecs %@ for %u", v81, v82, v83, v84, v85, v86, IOVecString);

          LODWORD(v59) = 1;
          v19 = v315;
          v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v23 = v305;
          v22 = v307;
          goto LABEL_118;
        }

        ++v61;
        v57 += v64;
        v62 += 4;
      }

      while (v57 < v311);
      v19 = v315;
      v23 = v305;
      v21 = v320;
    }

    if (v57 < v311)
    {
      *(v3 + 2079) |= 0x2000uLL;
      v22 = v307;
      if (*(v3 + 268) != 1)
      {
        LODWORD(v59) = 25;
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v24 = v321;
        goto LABEL_119;
      }

      v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (!*(v3 + 1239))
      {
        LODWORD(v59) = 25;
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v24 = v321;
        goto LABEL_119;
      }

      *(v3 + 268) = 0;
      ++*(v3 + 1255);
      if (gNRPacketLoggingEnabled == 1)
      {
        v115 = _NRCopyLogObjectForNRUUID();
        v116 = _NRLogIsLevelEnabled();

        if (v116)
        {
          v117 = _NRCopyLogObjectForNRUUID();
          v118 = [v3 copyDescription];
          _NRLogWithArgs(v117, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkOutput", "", "NRLinkResumeUrgentLinkOutputSource", 858, v118);
        }
      }

      dispatch_resume(*(v3 + 1239));
      LODWORD(v59) = 25;
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_118:
      v21 = v320;
      v24 = v321;
      goto LABEL_119;
    }

    v22 = v307;
    if (!v334)
    {
      v234 = sub_10007CF34();
      v235 = _NRLogIsLevelEnabled();

      if (v235)
      {
        v236 = sub_10007CF34();
        v237 = createIOVecString();
        _NRLogWithArgs(v236, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].buf != ((void*)0); We have enough content but first ioVec is NULL: %@", "", "NRLinkNexusToLinkLoopUrgent", 3878, v237);
      }

      v238 = _os_log_pack_size();
      v239 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v240 = __error();
      v241 = _os_log_pack_fill(v239, v238, *v240, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].buf != ((void*)0); We have enough content but first ioVec is NULL: %@");
      v242 = createIOVecString();
      *v241 = 136446466;
      *(v241 + 4) = "NRLinkNexusToLinkLoopUrgent";
      *(v241 + 12) = 2112;
      *(v241 + 14) = v242;
      goto LABEL_295;
    }

    v65 = nrPacketToTLV();
    v66 = v65;
    v67 = *v334;
    if (v67 > 0x65)
    {
      v68 = v320;
      if (*v334 > 0x67u)
      {
        if (v67 == 104)
        {
          v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC;
        }

        else
        {
          if (v67 != 105)
          {
            goto LABEL_139;
          }

          v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
        }
      }

      else if (v67 == 102)
      {
        v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP;
      }

      else
      {
        if (v67 != 103)
        {
          goto LABEL_139;
        }

        v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP_ECT0;
      }

      goto LABEL_138;
    }

    v68 = v320;
    if (*v334 > 0x63u)
    {
      if (v67 == 100)
      {
        v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP;
      }

      else
      {
        if (v67 != 101)
        {
          goto LABEL_139;
        }

        v69 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ECT0;
      }

LABEL_138:
      ++*(v3 + *v69);
      goto LABEL_139;
    }

    v69 = &OBJC_IVAR___NRLinkBluetooth__sentUncompressedIP;
    if (v67 == 2)
    {
      goto LABEL_138;
    }

    if (v67 == 3)
    {
      v69 = &OBJC_IVAR___NRLinkBluetooth__sentEncapsulated6LoWPAN;
      goto LABEL_138;
    }

LABEL_139:
    *(v3 + 1559) += v65;
    v87 = (v22 - v68);
    if (v65 <= v87)
    {
      v21 = v68 + v65;
      goto LABEL_154;
    }

    *(v3 + 2079) |= 0x4000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v111 = _NRCopyLogObjectForNRUUID();
      v112 = _NRLogIsLevelEnabled();

      if (v112)
      {
        v113 = _NRCopyLogObjectForNRUUID();
        v114 = [v3 copyDescription];
        _NRLogWithArgs(v113, 1, "%s%.30s:%-4d %@: UrgentLink:Sending ESP sequence number %u (2)", "", "NRLinkNexusToLinkLoopUrgent", 3924, v114, ESPSequenceNumberFromPacket);
      }
    }

    v351 = v319;
    v88 = v319;
    os_buflet_set_data_length();
    os_packet_set_flow_uuid();
    v89 = os_packet_finalize();
    if (!v89)
    {
      while (1)
      {
        v90 = os_channel_get_next_slot();
        if (!v90)
        {
          v207 = sub_10007CF34();
          v208 = _NRLogIsLevelEnabled();

          if (v208)
          {
            v209 = sub_10007CF34();
            _NRLogWithArgs(v209, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (curLinkOutputSlot) != ((void*)0)", "", "NRLinkNexusToLinkLoopUrgent", 3936);
          }

          v210 = _os_log_pack_size();
          v211 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v212 = *__error();
          i = _os_log_pack_fill(v211, v210, v212, &_mh_execute_header, "%{public}s Assertion Failed: (curLinkOutputSlot) != ((void*)0)");
          goto LABEL_294;
        }

        if (v23 != v90)
        {
          ++v88;
        }

        v321 = v90;
        packet = os_channel_slot_get_packet();
        v91 = os_packet_get_next_buflet();
        v316 = os_buflet_get_object_address();
        v317 = v91;
        v92 = os_buflet_get_data_limit();
        if (v92 >= 0x10000)
        {
          v213 = sub_10007CF34();
          v214 = _NRLogIsLevelEnabled();

          if (v214)
          {
            v215 = sub_10007CF34();
            _NRLogWithArgs(v215, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: outputBufferLength <= 65535", "", "NRLinkNexusToLinkLoopUrgent", 3946);
          }

          goto LABEL_281;
        }

        v22 = v92;
        v93 = (v92 + v87);
        if (v93 >= v66)
        {
          break;
        }

        *(v3 + 2079) |= 0x8000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v95 = _NRCopyLogObjectForNRUUID();
          v96 = _NRLogIsLevelEnabled();

          if (v96)
          {
            v97 = _NRCopyLogObjectForNRUUID();
            v98 = [v3 copyDescription];
            _NRLogWithArgs(v97, 1, "%s%.30s:%-4d %@: UrgentLink:Sending ESP sequence number %u (3)", "", "NRLinkNexusToLinkLoopUrgent", 3959, v98, ESPSequenceNumberFromPacket);
          }
        }

        v351 = v88;
        os_buflet_set_data_length();
        os_packet_set_flow_uuid();
        v94 = os_packet_finalize();
        v87 = v93;
        if (v94)
        {
          v272 = v94;
          v273 = sub_10007CF34();
          v274 = _NRLogIsLevelEnabled();

          if (v274)
          {
            v275 = sub_10007CF34();
            _NRLogWithArgs(v275, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoopUrgent", 3966, v272);
          }

          goto LABEL_320;
        }
      }

      v319 = v88;
      v21 = v66 - v87;
      v19 = v315;
LABEL_154:
      v99 = v301;
      ++*(v3 + v300);
      *(v3 + v99) += WORD1(v326);
      *(v3 + 2079) |= 0x10000uLL;
      v59 = *(v3 + 2079);
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (!v59)
      {
        v24 = v321;
        v23 = v321;
        v314 = v306;
        v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        goto LABEL_119;
      }

      v60 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v59 = *(v3 + 2087);
      if (!v59)
      {
        goto LABEL_163;
      }

      *(v3 + 306) %= *(v3 + 305);
      v100 = *(v3 + 2087);
      v101 = (v100 + 8 * *(v3 + 306));
      if ((v101 + 1) <= v100 + 8 * *(v3 + 305))
      {
        LODWORD(v59) = 0;
        if ((v101 & 7) == 0)
        {
          *v101 = *(v3 + 2079);
          ++*(v3 + 306);
          *(v3 + 2079) = 0;
        }

LABEL_163:
        v24 = v321;
        v23 = v321;
        v314 = v306;
        goto LABEL_119;
      }

      v102 = v21;
      v103 = _NRCopyLogObjectForNRUUID();
      v104 = _NRLogIsLevelEnabled();

      if (v104)
      {
        v105 = _NRCopyLogObjectForNRUUID();
        v106 = [v3 copyDescription];
        _NRLogWithArgs(v105, 17, "%@: invalid index for ntl log list (curIdx: %u)", v106, *(v3 + 306));
      }

      LODWORD(v59) = 0;
      v24 = v321;
      v23 = v321;
      v314 = v306;
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v21 = v102;
LABEL_119:
      if (v59 && v59 != 24)
      {
        if (v59 == 25)
        {
          goto LABEL_187;
        }

        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  v272 = v89;
  v290 = sub_10007CF34();
  v291 = _NRLogIsLevelEnabled();

  if (v291)
  {
    v292 = sub_10007CF34();
    _NRLogWithArgs(v292, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoopUrgent", 3928, v272);
  }

LABEL_320:
  v3 = _os_log_pack_size();
  v276 = &v296 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = *__error();
  v278 = _os_log_pack_fill(v276, v3, v277, &_mh_execute_header, "%{public}s os_packet_finalize returned %d");
  *v278 = 136446466;
  *(v278 + 4) = "NRLinkNexusToLinkLoopUrgent";
  *(v278 + 12) = 1024;
  *(v278 + 14) = v272;
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_321:
  v279 = _NRCopyLogObjectForNRUUID();
  v280 = _NRLogIsLevelEnabled();

  if (v280)
  {
    v281 = _NRCopyLogObjectForNRUUID();
    v282 = [v3 copyDescription];
    _NRLogWithArgs(v281, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", "", "NRLinkResumeNexusVIInputSource", 877, v282);
  }

LABEL_269:
  dispatch_resume(*(v3 + *(v87 + 1996)));
LABEL_270:
  if (*(v3 + 254) == 1 && *(v3 + 623))
  {
    *(v3 + 254) = 0;
    ++*(v3 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v283 = _NRCopyLogObjectForNRUUID();
      v284 = _NRLogIsLevelEnabled();

      if (v284)
      {
        v285 = _NRCopyLogObjectForNRUUID();
        v286 = [v3 copyDescription];
        _NRLogWithArgs(v285, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", "", "NRLinkResumeNexusVOInputSource", 875, v286);
      }
    }

    dispatch_resume(*(v3 + 623));
  }

LABEL_274:
  if (gNRPacketLoggingEnabled == 1)
  {
    v260 = _NRCopyLogObjectForNRUUID();
    v261 = _NRLogIsLevelEnabled();

    if (v261)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v3 copyDescription];
      _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@: UrgentLink:out of NtL-U outer loop", "", "NRLinkNexusToLinkLoopUrgent", 4075, v7);
LABEL_14:
    }
  }

LABEL_275:
}

void sub_1000AAC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Nexus VO input available but cancelled", "", "[NRLinkBluetooth setupNexusChannelVoice:]_block_invoke", 2377, v7);
    }
  }

  else
  {
    ++*(v2 + 671);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Nexus VO input available", "", "[NRLinkBluetooth setupNexusChannelVoice:]_block_invoke", 2381, v11);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 599);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000AAE24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Nexus VO output available but cancelled", "", "[NRLinkBluetooth setupNexusChannelVoice:]_block_invoke", 2395, v6);
    }
  }

  else
  {
    ++*(v2 + 679);
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Nexus VO output available", "", "[NRLinkBluetooth setupNexusChannelVoice:]_block_invoke", 2399, v10);
      }
    }

    v3 = *(a1 + 32);

    sub_1000AAFD8(v3);
  }
}

void sub_1000AAFD8(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1[16];
  if (v3 == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v2 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: LinkToNexusLoop but cancelled", "", "NRLinkDatagramLinkToNexusLoop", 4699, v7);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!*(v1 + 1135))
  {
    if (v1[265] == 1)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v2 copyDescription];
        _NRLogWithArgs(v6, 17, "%@: Tried to linkToNexusLoop but _datagramLinkInputRing is NULL", v7);
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if ((v3 - 1) >= 2)
  {
    v103 = v119;
    v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0;
      v113 = 0;
      while (1)
      {
        v15 = v12[650];
        *&v2[v15] = 4;
        v111 = 0u;
        v110 = 0u;
        v109 = 0u;
        v108 = 0u;
        next_slot = os_channel_get_next_slot();
        if (!next_slot)
        {
          break;
        }

        v17 = next_slot;
        v18 = os_channel_get_next_slot();
        if (!v18)
        {
          if (v2[263] == 1 && *(v2 + 1151))
          {
            v2[263] = 0;
            ++*(v2 + 1167);
            if (gNRPacketLoggingEnabled == 1)
            {
              v88 = _NRCopyLogObjectForNRUUID();
              v89 = _NRLogIsLevelEnabled();

              if (v89)
              {
                v90 = _NRCopyLogObjectForNRUUID();
                v91 = [v2 copyDescription];
                _NRLogWithArgs(v90, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkInput", "", "NRLinkResumeDatagramLinkInputSource", 855, v91);
              }
            }

            dispatch_resume(*(v2 + 1151));
          }

          if ((v2[255] & 1) == 0 && *(v2 + 631))
          {
            v2[255] = 1;
            ++*(v2 + 647);
            if (gNRPacketLoggingEnabled == 1)
            {
              v92 = _NRCopyLogObjectForNRUUID();
              v93 = _NRLogIsLevelEnabled();

              if (v93)
              {
                v94 = _NRCopyLogObjectForNRUUID();
                v95 = [v2 copyDescription];
                _NRLogWithArgs(v94, 1, "%s%.30s:%-4d %@: source-suspend: NexusVOOutput", "", "NRLinkSuspendNexusVOOutputSource", 866, v95);
              }
            }

            dispatch_suspend(*(v2 + 631));
          }

          v63 = 64;
          goto LABEL_92;
        }

        v19 = v13;
        v20 = v12;
        v104 = v18;
        os_channel_slot_get_packet();
        os_packet_get_next_buflet();
        object_address = os_buflet_get_object_address();
        data_offset = os_buflet_get_data_offset();
        data_length = os_buflet_get_data_length();
        if (data_length >= 0x10000)
        {
          if (qword_100229088 != -1)
          {
            goto LABEL_121;
          }

          while (1)
          {
            if (_NRLogIsLevelEnabled())
            {
              v96 = sub_10007CF34();
              _NRLogWithArgs(v96, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: inputBufferLength <= 65535", "", "NRLinkDatagramLinkToNexusLoop", 4768);
            }

            v97 = _os_log_pack_size();
            v98 = &v101 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v99 = __error();
            v100 = _os_log_pack_fill(v98, v97, *v99, &_mh_execute_header, "%{public}s Assertion Failed: inputBufferLength <= 65535");
            *v100 = 136446210;
            *(v100 + 4) = "NRLinkDatagramLinkToNexusLoop";
            sub_10007CF34();
            _NRLogAbortWithPack();
LABEL_121:
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }
        }

        v24 = data_length;
        os_packet_get_flow_uuid();
        if ((v2[263] & 1) == 0 && *(v2 + 1151))
        {
          v2[263] = 1;
          ++*(v2 + 1167);
          if (gNRPacketLoggingEnabled == 1)
          {
            v44 = _NRCopyLogObjectForNRUUID();
            LODWORD(v102) = _NRLogIsLevelEnabled();

            if (v102)
            {
              v45 = _NRCopyLogObjectForNRUUID();
              v102 = [v2 copyDescription];
              _NRLogWithArgs(v45, 1, "%s%.30s:%-4d %@: source-suspend: DatagramLinkInput", "", "NRLinkSuspendDatagramLinkInputSource", 847, v102);
            }
          }

          dispatch_suspend(*(v2 + 1151));
        }

        if (v24 > WORD1(v108))
        {
          v12 = v20;
          v13 = v19;
          v14 = v104;
          goto LABEL_51;
        }

        v107 = 0;
        v105 = object_address + data_offset;
        v106 = v24;
        if (v24 < 3)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v46 = _NRCopyLogObjectForNRUUID();
            v47 = _NRLogIsLevelEnabled();

            v12 = v20;
            if (v47)
            {
              v48 = _NRCopyLogObjectForNRUUID();
              v49 = [v2 copyDescription];
              _NRLogWithArgs(v48, 1, "%s%.30s:%-4d %@: received unexpected packet length: %u", "", "NRLinkDatagramLinkToNexusLoop", 4838, v49, v106);
            }

            v17 = v19;
            goto LABEL_50;
          }
        }

        else
        {
          v25 = v24;
          v26 = bswap32(*(object_address + data_offset + 1)) >> 16;
          if (v26 + 5 == v24)
          {
            v27 = nrTLVToPacket();
            if (gNRPacketLoggingEnabled == 1)
            {
              v102 = _NRCopyLogObjectForNRUUID();
              LODWORD(v101) = _NRLogIsLevelEnabled();

              if (v101)
              {
                v102 = _NRCopyLogObjectForNRUUID();
                v101 = [v2 copyDescription];
                _NRLogWithArgs(v102, 1, "%s%.30s:%-4d %@: DatagramLink:read %u bytes from datagram link, uncompressedLen = %u", "", "NRLinkDatagramLinkToNexusLoop", 4801, v101, v24, v27);
              }
            }

            if (v27)
            {
              WORD1(v108) = v27;
              if (gNRPacketLoggingEnabled != 1)
              {
                ESPSequenceNumberFromPacket = 0;
                goto LABEL_33;
              }

              ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
              if (gNRPacketLoggingEnabled)
              {
                getESPSPIFromPacket();
                v54 = gNRPacketLoggingEnabled;
                *&v2[v15] |= 0x8000000uLL;
                if (v54)
                {
                  v55 = _NRCopyLogObjectForNRUUID();
                  v56 = _NRLogIsLevelEnabled();

                  if (v56)
                  {
                    v57 = _NRCopyLogObjectForNRUUID();
                    v58 = [v2 copyDescription];
                    _NRLogWithArgs(v57, 1, "%s%.30s:%-4d %@: DatagramLink:Received ESP sequence number: %u", "", "NRLinkDatagramLinkToNexusLoop", 4806, v58, ESPSequenceNumberFromPacket);
                  }
                }

                v12 = v20;
              }

              else
              {
LABEL_33:
                v12 = v20;
                *&v2[v15] |= 0x8000000uLL;
              }

              packet = os_channel_slot_get_packet();
              if ((v112 & 0x10000) != 0 || v2[292] == 1)
              {
                v2[292] = 0;
                memset(v123, 0, sizeof(v123));
                v122 = 1;
                if (packet)
                {
                  os_packet_set_flow_uuid();
                  *&v2[v15] |= 0x10000000uLL;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v59 = _NRCopyLogObjectForNRUUID();
                    v60 = _NRLogIsLevelEnabled();

                    if (v60)
                    {
                      v61 = _NRCopyLogObjectForNRUUID();
                      v62 = [v2 copyDescription];
                      _NRLogWithArgs(v61, 1, "%s%.30s:%-4d %@: DatagramLink:Set waking metadata for packet w/ ESP sequence number: %u", "", "NRLinkDatagramLinkToNexusLoop", 4818, v62, ESPSequenceNumberFromPacket);
                    }
                  }
                }

                v35 = getESPSequenceNumberFromPacket();
                ESPSPIFromPacket = getESPSPIFromPacket();
                if (qword_100229268 != -1)
                {
                  dispatch_once(&qword_100229268, &stru_1001FC3A0);
                }

                v37 = qword_100229260;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                v119[0] = sub_1000922D0;
                v119[1] = &unk_1001FCDD8;
                v120 = ESPSPIFromPacket;
                v121 = v35;
                dispatch_async(v37, block);

                v12 = v20;
              }

              else if (packet)
              {
                os_packet_clear_flow_uuid();
              }

              os_channel_set_slot_properties();
              *(v2 + 1535) += v25;
              *(v2 + 727) += v27;
              ++*(v2 + 711);
              goto LABEL_50;
            }

            v30 = _NRCopyLogObjectForNRUUID();
            v31 = _NRLogIsLevelEnabled();

            if (v31)
            {
              v32 = _NRCopyLogObjectForNRUUID();
              v33 = [v2 copyDescription];
              StringFromNRTLVType = createStringFromNRTLVType();
              _NRLogWithArgs(v32, 17, "%@: failed to reinject %@ tlvLen=%u slotLen=%u", v33, StringFromNRTLVType, v26, WORD1(v108));
            }

LABEL_41:
            v17 = v19;
            v12 = v20;
            goto LABEL_50;
          }

          if (gNRPacketLoggingEnabled != 1)
          {
            goto LABEL_41;
          }

          v50 = _NRCopyLogObjectForNRUUID();
          v51 = _NRLogIsLevelEnabled();

          if (v51)
          {
            v52 = _NRCopyLogObjectForNRUUID();
            v53 = [v2 copyDescription];
            _NRLogWithArgs(v52, 1, "%s%.30s:%-4d %@: DatagramLink:Ignoring truncated packet (%zu + %zu + %u + %zu != %u)", "", "NRLinkDatagramLinkToNexusLoop", 4793, v53, 1, 2, v26, 2, v106);
          }
        }

        v17 = v19;
        v12 = v20;
LABEL_50:
        v14 = v104;
        v13 = v17;
LABEL_51:
        if (*&v2[v12[650]] && *(v2 + 2055))
        {
          v2[302] = v2[302] % v2[301];
          v38 = *(v2 + 2055);
          v39 = (v38 + 8 * v2[302]);
          if ((v39 + 1) <= v38 + 8 * v2[301])
          {
            if ((v39 & 7) == 0)
            {
              *v39 = *&v2[v12[650]];
              ++v2[302];
              *&v2[v12[650]] = 0;
            }
          }

          else
          {
            v40 = _NRCopyLogObjectForNRUUID();
            v41 = _NRLogIsLevelEnabled();

            if (v41)
            {
              v42 = _NRCopyLogObjectForNRUUID();
              v43 = [v2 copyDescription];
              _NRLogWithArgs(v42, 17, "%@: invalid index for link log list (curIdx: %u)", v43, v2[302]);
            }
          }
        }
      }

      if ((v2[263] & 1) == 0 && *(v2 + 1151))
      {
        v2[263] = 1;
        ++*(v2 + 1167);
        if (gNRPacketLoggingEnabled == 1)
        {
          v80 = _NRCopyLogObjectForNRUUID();
          v81 = _NRLogIsLevelEnabled();

          if (v81)
          {
            v82 = _NRCopyLogObjectForNRUUID();
            v83 = [v2 copyDescription];
            _NRLogWithArgs(v82, 1, "%s%.30s:%-4d %@: source-suspend: DatagramLinkInput", "", "NRLinkSuspendDatagramLinkInputSource", 847, v83);
          }
        }

        dispatch_suspend(*(v2 + 1151));
      }

      if (v2[255] == 1 && *(v2 + 631))
      {
        v2[255] = 0;
        ++*(v2 + 647);
        if (gNRPacketLoggingEnabled == 1)
        {
          v84 = _NRCopyLogObjectForNRUUID();
          v85 = _NRLogIsLevelEnabled();

          if (v85)
          {
            v86 = _NRCopyLogObjectForNRUUID();
            v87 = [v2 copyDescription];
            _NRLogWithArgs(v86, 1, "%s%.30s:%-4d %@: source-resume: NexusVOOutput", "", "NRLinkResumeNexusVOOutputSource", 876, v87);
          }
        }

        dispatch_resume(*(v2 + 631));
      }

      v63 = 0x800000;
LABEL_92:
      *&v2[v15] |= v63;
      if (v14)
      {
        *&v2[v12[650]] |= 0x800000000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v70 = _NRCopyLogObjectForNRUUID();
          v71 = _NRLogIsLevelEnabled();

          if (v71)
          {
            v72 = _NRCopyLogObjectForNRUUID();
            v73 = [v2 copyDescription];
            _NRLogWithArgs(v72, 1, "%s%.30s:%-4d %@: DatagramLink:advancing past datagramLinkInputSlot=%p and syncing link input", "", "NRLinkDatagramLinkToNexusLoop", 4849, v73, v14);
          }
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          v74 = +[NSDate date];
          v75 = *(v2 + 1839);
          *(v2 + 1839) = v74;
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*(v2 + 1583);
      }

      if (v13)
      {
        *&v2[v12[650]] |= 0x1000000000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v76 = _NRCopyLogObjectForNRUUID();
          v77 = _NRLogIsLevelEnabled();

          if (v77)
          {
            v78 = _NRCopyLogObjectForNRUUID();
            v79 = [v2 copyDescription];
            _NRLogWithArgs(v78, 1, "%s%.30s:%-4d %@: DatagramLink:advancing past nexusOutputSlot=%p and syncing nexus output", "", "NRLinkDatagramLinkToNexusLoop", 4858, v79, v13);
          }
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*(v2 + 695);
      }

      if (*&v2[v12[650]] && *(v2 + 2055))
      {
        v2[302] = v2[302] % v2[301];
        v64 = *(v2 + 2055);
        v65 = (v64 + 8 * v2[302]);
        if ((v65 + 1) <= v64 + 8 * v2[301])
        {
          if ((v65 & 7) == 0)
          {
            *v65 = *&v2[v12[650]];
            ++v2[302];
            *&v2[v12[650]] = 0;
          }
        }

        else
        {
          v66 = _NRCopyLogObjectForNRUUID();
          v67 = _NRLogIsLevelEnabled();

          if (v67)
          {
            v68 = _NRCopyLogObjectForNRUUID();
            v69 = [v2 copyDescription];
            _NRLogWithArgs(v68, 17, "%@: invalid index for link log list (curIdx: %u)", v69, v2[302]);
          }
        }
      }

      if (!(v13 | v14))
      {
        goto LABEL_12;
      }
    }
  }

  v8 = _NRCopyLogObjectForNRUUID();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = [v2 copyDescription];
    _NRLogWithArgs(v6, 17, "%@: Tried to linkToNexusLoop but bad state", v7);
    goto LABEL_11;
  }

LABEL_12:
}

void sub_1000AC29C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Nexus input available but cancelled", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]_block_invoke", 2280, v7);
    }
  }

  else
  {
    ++*(v2 + 527);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Nexus input available", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]_block_invoke", 2284, v11);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 439);

    sub_10007D9C4(v3, v4);
  }
}

void sub_1000AC454(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Nexus output available but cancelled", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]_block_invoke", 2298, v6);
    }
  }

  else
  {
    ++*(v2 + 535);
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Nexus output available", "", "[NRLinkBluetooth setupNexusChannelBestEffort:]_block_invoke", 2302, v10);
      }
    }

    v3 = *(a1 + 32);

    sub_100097378(v3);
  }
}

id sub_1000AC608(void *a1, uint64_t a2, size_t a3, size_t *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = a1;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d invalid context", "", "NRLinkParserWriteOutputCallback", 3156);
    }

    goto LABEL_17;
  }

  if (v7[16] == 255)
  {
    goto LABEL_17;
  }

  if (v7[282] == 1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v13 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10007CF34();
        _NRLogWithArgs(v15, 1, "%s%.30s:%-4d writing data of len %zu bytes", "", "NRLinkParserWriteOutputCallback", 3166, a3);
      }
    }

    v8 = [[NSData alloc] initWithBytes:a2 length:a3];
    objc_initWeak(&location, v7);
    v9 = *(v7 + 407);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AC8D4;
    v16[3] = &unk_1001FB1E8;
    objc_copyWeak(v17, &location);
    v17[1] = a3;
    [v9 sendData:v8 withCompletion:v16];
    if (a4)
    {
      *a4 = a3;
    }

    *(v7 + 735) += a3;
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);

    goto LABEL_17;
  }

  v12 = [*(v7 + 1431) write:a2 maxLength:a3];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    *a4 = v12;
  }

  *(v7 + 735) += v12;
  v10 = [*(v7 + 1431) hasSpaceAvailable];
LABEL_18:

  return v10;
}

void sub_1000AC8B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AC8D4(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10007CF34();
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d completed writing data %u/%zu bytes", "", "NRLinkParserWriteOutputCallback_block_invoke", 3176, a3, *(a1 + 40));
      }
    }

    if (v11 && [v11 code])
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d l2CAP channel write error %@", "", "NRLinkParserWriteOutputCallback_block_invoke", 3178, v11);
      }
    }

    else if (a3)
    {
      v7 = *(v6 + 1415);
      if (v7)
      {
        (*(v7 + 16))(*(v7 + 24));
      }
    }
  }
}

uint64_t sub_1000ACA88(void *a1)
{
  isKindOfClass = a1;
  v2 = isKindOfClass;
  if (isKindOfClass)
  {
    val = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = val;
    if ((isKindOfClass & 1) != 0 && val[285] == 1)
    {
      val[286] = 0;
      if (val[287] == 1)
      {
        if (val[282] == 1)
        {
          sub_100090EA4(val);
        }

        else
        {
          sub_10008F50C(val, 2);
        }

        v2 = val;
      }
    }
  }

  return _objc_release_x1(isKindOfClass, v2);
}

uint64_t sub_1000AD65C(uint64_t a1)
{
  v2 = [*(a1 + 32) linkDelegate];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 40);
  v9 = v2;
  if (v3)
  {
    v4 = [v3 hostState];
    v5 = v4 == 1;
    v6 = *(a1 + 32);
    if (v6)
    {
      if (((v4 == 1) ^ *(v6 + 290)))
      {
LABEL_9:
        *(v6 + 290) = v5;
        v7 = *(a1 + 32);
        if (v7)
        {
          *(v7 + 291) = 1;
        }

        goto LABEL_11;
      }

LABEL_8:
      if (*(v6 + 291))
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v5 = 0;
      if (*(v6 + 290))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5 = 0;
  }

LABEL_11:
  if (objc_opt_respondsToSelector())
  {
    [v9 linkPeerIsAsleep:*(a1 + 32) isAsleep:v5];
  }

LABEL_13:

  return _objc_release_x3();
}

void sub_1000AE684(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1 || *(a1 + 1119) == v4)
  {
    goto LABEL_63;
  }

  if (*(a1 + 293))
  {
LABEL_4:
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [a1 copyDescription];
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Updating datagram pipe: %@ -> %@", "", "[NRLinkBluetooth updateDatagramPipe:]", 2911, v9, *(a1 + 1119), v5);
    }

    objc_storeStrong((a1 + 1119), a2);
    *(a1 + 265) = *(a1 + 1119) != 0;
    if (*(a1 + 293) == 1)
    {
      if (*(a1 + 265) == 1)
      {
        sub_100090BF4(a1, 0, &off_100209BC0);
      }

      else
      {
        sub_1000B1320(a1, &off_100209BC0);
      }
    }

    goto LABEL_63;
  }

  v10 = *(a1 + 1151);
  if (!v5)
  {
    if (v10)
    {
      if (*(a1 + 263) == 1)
      {
        *(a1 + 263) = 0;
        ++*(a1 + 1167);
        if (gNRPacketLoggingEnabled == 1)
        {
          v66 = _NRCopyLogObjectForNRUUID();
          v67 = _NRLogIsLevelEnabled();

          if (v67)
          {
            v68 = _NRCopyLogObjectForNRUUID();
            v69 = [a1 copyDescription];
            _NRLogWithArgs(v68, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkInput", "", "NRLinkResumeDatagramLinkInputSource", 855, v69);
          }
        }

        dispatch_resume(*(a1 + 1151));
        v10 = *(a1 + 1151);
      }

      dispatch_source_cancel(v10);
      v23 = *(a1 + 1151);
      *(a1 + 1151) = 0;
    }

    v24 = *(a1 + 1159);
    if (v24)
    {
      if (*(a1 + 264) == 1)
      {
        *(a1 + 264) = 0;
        ++*(a1 + 1175);
        if (gNRPacketLoggingEnabled == 1)
        {
          v70 = _NRCopyLogObjectForNRUUID();
          v71 = _NRLogIsLevelEnabled();

          if (v71)
          {
            v72 = _NRCopyLogObjectForNRUUID();
            v73 = [a1 copyDescription];
            _NRLogWithArgs(v72, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkOutput", "", "NRLinkResumeDatagramLinkOutputSource", 856, v73);
          }
        }

        dispatch_resume(*(a1 + 1159));
        v24 = *(a1 + 1159);
      }

      dispatch_source_cancel(v24);
      v25 = *(a1 + 1159);
      *(a1 + 1159) = 0;
    }

    if ((*(a1 + 255) & 1) == 0 && *(a1 + 631))
    {
      *(a1 + 255) = 1;
      ++*(a1 + 647);
      if (gNRPacketLoggingEnabled == 1)
      {
        v74 = _NRCopyLogObjectForNRUUID();
        v75 = _NRLogIsLevelEnabled();

        if (v75)
        {
          v76 = _NRCopyLogObjectForNRUUID();
          v77 = [a1 copyDescription];
          _NRLogWithArgs(v76, 1, "%s%.30s:%-4d %@: source-suspend: NexusVOOutput", "", "NRLinkSuspendNexusVOOutputSource", 866, v77);
        }
      }

      dispatch_suspend(*(a1 + 631));
    }

    if (*(a1 + 252) == 1 && *(a1 + 463))
    {
      *(a1 + 252) = 0;
      ++*(a1 + 487);
      if (gNRPacketLoggingEnabled == 1)
      {
        v78 = _NRCopyLogObjectForNRUUID();
        v79 = _NRLogIsLevelEnabled();

        if (v79)
        {
          v80 = _NRCopyLogObjectForNRUUID();
          v81 = [a1 copyDescription];
          _NRLogWithArgs(v80, 1, "%s%.30s:%-4d %@: source-resume: NexusInput", "", "NRLinkResumeNexusInputSource", 873, v81);
        }
      }

      dispatch_resume(*(a1 + 463));
    }

    if (*(a1 + 256) == 1 && *(a1 + 783))
    {
      *(a1 + 256) = 0;
      ++*(a1 + 799);
      if (gNRPacketLoggingEnabled == 1)
      {
        v82 = _NRCopyLogObjectForNRUUID();
        v83 = _NRLogIsLevelEnabled();

        if (v83)
        {
          v84 = _NRCopyLogObjectForNRUUID();
          v85 = [a1 copyDescription];
          _NRLogWithArgs(v84, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", "", "NRLinkResumeNexusVIInputSource", 877, v85);
        }
      }

      dispatch_resume(*(a1 + 783));
    }

    if (*(a1 + 258) == 1 && *(a1 + 927))
    {
      *(a1 + 258) = 0;
      ++*(a1 + 943);
      if (gNRPacketLoggingEnabled == 1)
      {
        v86 = _NRCopyLogObjectForNRUUID();
        v87 = _NRLogIsLevelEnabled();

        if (v87)
        {
          v88 = _NRCopyLogObjectForNRUUID();
          v89 = [a1 copyDescription];
          _NRLogWithArgs(v88, 1, "%s%.30s:%-4d %@: source-resume: NexusBKInput", "", "NRLinkResumeNexusBKInputSource", 879, v89);
        }
      }

      dispatch_resume(*(a1 + 927));
    }

    if (*(a1 + 254) == 1 && *(a1 + 623))
    {
      *(a1 + 254) = 0;
      ++*(a1 + 639);
      if (gNRPacketLoggingEnabled == 1)
      {
        v90 = _NRCopyLogObjectForNRUUID();
        v91 = _NRLogIsLevelEnabled();

        if (v91)
        {
          v92 = _NRCopyLogObjectForNRUUID();
          v93 = [a1 copyDescription];
          _NRLogWithArgs(v92, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", "", "NRLinkResumeNexusVOInputSource", 875, v93);
        }
      }

      dispatch_resume(*(a1 + 623));
    }

    *(a1 + 1127) = 0;
    *(a1 + 1143) = 0;
    *(a1 + 1135) = 0;
    *(a1 + 1167) = 0;
    *(a1 + 1175) = 0;
    v26 = *(a1 + 2055);
    if (v26)
    {
      free(v26);
      *(a1 + 2055) = 0;
    }

    goto LABEL_4;
  }

  if (v10)
  {
    if (*(a1 + 263) == 1)
    {
      *(a1 + 263) = 0;
      ++*(a1 + 1167);
      if (gNRPacketLoggingEnabled == 1)
      {
        v58 = _NRCopyLogObjectForNRUUID();
        v59 = _NRLogIsLevelEnabled();

        if (v59)
        {
          v60 = _NRCopyLogObjectForNRUUID();
          v61 = [a1 copyDescription];
          _NRLogWithArgs(v60, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkInput", "", "NRLinkResumeDatagramLinkInputSource", 855, v61);
        }
      }

      dispatch_resume(*(a1 + 1151));
      v10 = *(a1 + 1151);
    }

    dispatch_source_cancel(v10);
    v11 = *(a1 + 1151);
    *(a1 + 1151) = 0;
  }

  v12 = *(a1 + 1159);
  if (v12)
  {
    if (*(a1 + 264) == 1)
    {
      *(a1 + 264) = 0;
      ++*(a1 + 1175);
      if (gNRPacketLoggingEnabled == 1)
      {
        v62 = _NRCopyLogObjectForNRUUID();
        v63 = _NRLogIsLevelEnabled();

        if (v63)
        {
          v64 = _NRCopyLogObjectForNRUUID();
          v65 = [a1 copyDescription];
          _NRLogWithArgs(v64, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkOutput", "", "NRLinkResumeDatagramLinkOutputSource", 856, v65);
        }
      }

      dispatch_resume(*(a1 + 1159));
      v12 = *(a1 + 1159);
    }

    dispatch_source_cancel(v12);
    v13 = *(a1 + 1159);
    *(a1 + 1159) = 0;
  }

  *(a1 + 1127) = 0;
  *(a1 + 1143) = 0;
  *(a1 + 1135) = 0;
  v14 = [v5 channel];
  *(a1 + 1127) = v14;
  if (!v14)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = [a1 copyDescription];
      _NRLogWithArgs(v21, 17, "%@: _datagramLinkChannel is NULL", v22, v103);
      goto LABEL_62;
    }

LABEL_63:

    return;
  }

  v15 = os_channel_attr_create();
  if (!v15)
  {
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = [a1 copyDescription];
      _NRLogWithArgs(v21, 17, "%@: os_channel_attr_create failed", v22, v103);
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v16 = v15;
  attr = os_channel_read_attr();
  if (attr)
  {
    v18 = attr;
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = [a1 copyDescription];
      _NRLogWithArgs(v21, 17, "%@: os_channel_read_attr returned %d", v22, v18);
LABEL_62:

      goto LABEL_63;
    }

    goto LABEL_63;
  }

  v31 = sub_1000A1674(a1, v16);
  os_channel_attr_destroy();
  if (!v31)
  {
    goto LABEL_63;
  }

  os_channel_ring_id();
  v32 = os_channel_rx_ring();
  *(a1 + 1135) = v32;
  if (!v32)
  {
    v46 = _NRCopyLogObjectForNRUUID();
    v47 = _NRLogIsLevelEnabled();

    if (!v47)
    {
      goto LABEL_63;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs(v21, 17, "%@: _datagramLinkInputRing is NULL", v22, v103);
    goto LABEL_62;
  }

  os_channel_ring_id();
  v33 = os_channel_tx_ring();
  *(a1 + 1143) = v33;
  if (!v33)
  {
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_63;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs(v21, 17, "%@: _datagramLinkOutputRing is NULL", v22, v103);
    goto LABEL_62;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v50 = _NRCopyLogObjectForNRUUID();
    v51 = _NRLogIsLevelEnabled();

    if (!v51)
    {
      goto LABEL_63;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs(v21, 17, "%@: os_channel_get_fd failed", v22, v103);
    goto LABEL_62;
  }

  v35 = fd;
  v36 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 8));
  v37 = *(a1 + 1151);
  *(a1 + 1151) = v36;

  v38 = *(a1 + 1151);
  if (!v38)
  {
    v52 = _NRCopyLogObjectForNRUUID();
    v53 = _NRLogIsLevelEnabled();

    if (!v53)
    {
      goto LABEL_63;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs(v21, 17, "%@: _dDatagramLinkInputSource is NULL", v22, v103);
    goto LABEL_62;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B1C18;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v38, handler);
  v39 = *(a1 + 1151);
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = nullsub_9;
  v109[3] = &unk_1001FD3C8;
  v40 = v5;
  v110 = v40;
  dispatch_source_set_cancel_handler(v39, v109);
  dispatch_activate(*(a1 + 1151));
  v41 = dispatch_source_create(&_dispatch_source_type_write, v35, 0, *(a1 + 8));
  v42 = *(a1 + 1159);
  *(a1 + 1159) = v41;

  v43 = *(a1 + 1159);
  if (!v43)
  {
    v54 = _NRCopyLogObjectForNRUUID();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = _NRCopyLogObjectForNRUUID();
      v57 = [a1 copyDescription];
      _NRLogWithArgs(v56, 17, "%@: _dDatagramLinkOutputSource is NULL", v57);
    }

    goto LABEL_63;
  }

  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1000B1E24;
  v108[3] = &unk_1001FD3C8;
  v108[4] = a1;
  dispatch_source_set_event_handler(v43, v108);
  v44 = *(a1 + 1159);
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = nullsub_10;
  v106[3] = &unk_1001FD3C8;
  v107 = v40;
  dispatch_source_set_cancel_handler(v44, v106);
  *(a1 + 264) = 1;
  *(a1 + 301) = 10;
  if (!*(a1 + 301))
  {
LABEL_74:

    goto LABEL_4;
  }

  v45 = 8 * *(a1 + 301);
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, v45, 0xE17AD3EDuLL) && memptr)
  {
    *(a1 + 2055) = memptr;
    goto LABEL_74;
  }

  v94 = sub_10007CF34();
  v95 = _NRLogIsLevelEnabled();

  if (v95)
  {
    v96 = sub_10007CF34();
    _NRLogWithArgs(v96, 16, "%s%.30s:%-4d ABORTING: posix_memalign(..., %zu, %zu) failed", "", "[NRLinkBluetooth updateDatagramPipe:]", 2875, 8uLL, v45);
  }

  v97 = _os_log_pack_size();
  v98 = &v104 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __error();
  v100 = _os_log_pack_fill(v98, v97, *v99, &_mh_execute_header, "%{public}s posix_memalign(..., %zu, %zu) failed");
  *v100 = 136446722;
  *(v100 + 4) = "[NRLinkBluetooth updateDatagramPipe:]";
  *(v100 + 12) = 2048;
  *(v100 + 14) = 8;
  *(v100 + 22) = 2048;
  *(v100 + 24) = v45;
  sub_10007CF34();
  v101 = _NRLogAbortWithPack();
  sub_1000AF784(v101, v102);
}
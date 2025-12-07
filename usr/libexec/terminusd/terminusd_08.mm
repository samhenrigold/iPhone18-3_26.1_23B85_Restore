void sub_1000AF784(char *a1, char *a2)
{
  v3 = a2;
  v5 = a2;
  v6 = v5;
  if (!a1 || *(a1 + 1199) == v5)
  {
    goto LABEL_29;
  }

  if (!v5)
  {
    if ([a1 state] != 255)
    {
      v16 = *(a1 + 2007);
      if (v16)
      {
        ++v16[17];
      }
    }

    sub_1000B0908(a1);
    goto LABEL_21;
  }

  sub_1000B0908(a1);
  if ([v6 priority] != 2)
  {
    v21 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: invalid urgent pipe: %@", v24, v6);
LABEL_28:

    goto LABEL_29;
  }

  if (a1[293])
  {
    goto LABEL_6;
  }

  v25 = [v6 channel];
  *(a1 + 1207) = v25;
  if (!v25)
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: _urgentLinkChannel is NULL", v24);
    goto LABEL_28;
  }

  v26 = os_channel_attr_create();
  if (!v26)
  {
    v34 = _NRCopyLogObjectForNRUUID();
    v35 = _NRLogIsLevelEnabled();

    if (!v35)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: os_channel_attr_create failed", v24);
    goto LABEL_28;
  }

  v27 = v26;
  attr = os_channel_read_attr();
  if (attr)
  {
    v29 = attr;
    v30 = _NRCopyLogObjectForNRUUID();
    v31 = _NRLogIsLevelEnabled();

    if (!v31)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: os_channel_read_attr returned %d", v24, v29);
    goto LABEL_28;
  }

  v36 = sub_1000A1674(a1, v27);
  os_channel_attr_destroy();
  if (!v36)
  {
    goto LABEL_29;
  }

  os_channel_ring_id();
  v37 = os_channel_rx_ring();
  *(a1 + 1215) = v37;
  if (!v37)
  {
    v52 = _NRCopyLogObjectForNRUUID();
    v53 = _NRLogIsLevelEnabled();

    if (!v53)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: _urgentLinkInputRing is NULL", v24);
    goto LABEL_28;
  }

  os_channel_ring_id();
  v38 = os_channel_tx_ring();
  *(a1 + 1223) = v38;
  if (!v38)
  {
    v54 = _NRCopyLogObjectForNRUUID();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: _urgentLinkOutputRing is NULL", v24);
    goto LABEL_28;
  }

  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v56 = _NRCopyLogObjectForNRUUID();
    v57 = _NRLogIsLevelEnabled();

    if (!v57)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: os_channel_get_fd failed", v24);
    goto LABEL_28;
  }

  v40 = fd;
  v41 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 1));
  v42 = *(a1 + 1231);
  *(a1 + 1231) = v41;

  v43 = *(a1 + 1231);
  if (!v43)
  {
    v58 = _NRCopyLogObjectForNRUUID();
    v59 = _NRLogIsLevelEnabled();

    if (!v59)
    {
      goto LABEL_29;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [a1 copyDescription];
    _NRLogWithArgs(v23, 17, "%@: _dUrgentLinkInputSource is NULL", v24);
    goto LABEL_28;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B0D94;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v43, handler);
  v44 = *(a1 + 1231);
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = nullsub_7;
  v107[3] = &unk_1001FD3C8;
  v45 = v6;
  v108 = v45;
  dispatch_source_set_cancel_handler(v44, v107);
  dispatch_activate(*(a1 + 1231));
  v46 = dispatch_source_create(&_dispatch_source_type_write, v40, 0, *(a1 + 1));
  v47 = *(a1 + 1239);
  *(a1 + 1239) = v46;

  v48 = *(a1 + 1239);
  if (v48)
  {
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1000B0FEC;
    v106[3] = &unk_1001FD3C8;
    v106[4] = a1;
    dispatch_source_set_event_handler(v48, v106);
    v49 = *(a1 + 1239);
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = nullsub_8;
    v104[3] = &unk_1001FD3C8;
    v105 = v45;
    dispatch_source_set_cancel_handler(v49, v104);
    a1[268] = 1;
    v2 = 10;
    a1[299] = 10;
    v50 = a1[299];
    if (a1[299])
    {
      v7 = 8 * v50;
      memptr[0] = 0;
      if (malloc_type_posix_memalign(memptr, 8uLL, 8 * v50, 0x1C7F7A34uLL) || !memptr[0])
      {
        v76 = sub_10007CF34();
        v77 = _NRLogIsLevelEnabled();

        v3 = "[NRLinkBluetooth updateUrgentPipe:]";
        if (v77)
        {
          v78 = sub_10007CF34();
          _NRLogWithArgs(v78, 16, "%s%.30s:%-4d ABORTING: posix_memalign(..., %zu, %zu) failed", "", "[NRLinkBluetooth updateUrgentPipe:]", 2676, 8uLL, v7);
        }

        goto LABEL_79;
      }

      *(a1 + 2039) = memptr[0];
    }

    a1[305] = 10;
    v51 = a1[305];
    if (!a1[305])
    {
LABEL_53:

LABEL_6:
      v7 = *(a1 + 319);
      if (v7)
      {
        v8 = malloc_type_calloc(1uLL, *(a1 + 319), 0xA9D7CCE5uLL);
        if (!v8)
        {
          v85 = sub_10007CF34();
          v86 = _NRLogIsLevelEnabled();

          if (v86)
          {
            v87 = sub_10007CF34();
            _NRLogWithArgs(v87, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "[NRLinkBluetooth updateUrgentPipe:]", 2681, 1uLL, v7);
          }

LABEL_85:
          v6 = _os_log_pack_size();
          a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v91 = *__error();
          v83 = _os_log_pack_fill(a1, v6, v91, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
          *v83 = 136446722;
          *(v83 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
          *(v83 + 12) = 2048;
          v84 = 1;
          goto LABEL_86;
        }

        *(a1 + 1463) = v8;
        *(a1 + 383) = 0;
        *(a1 + 379) = 0;
        v7 = *(a1 + 335);
        if (v7)
        {
          v9 = malloc_type_calloc(1uLL, *(a1 + 335), 0x96B81A6BuLL);
          if (v9)
          {
            *(a1 + 1279) = v9;
            *(a1 + 351) = 0;
            *(a1 + 355) = 0;
            v10 = a1[248];
            v7 = a1;
            v11 = malloc_type_malloc(0x26uLL, 0xF891214AuLL);
            if (v11)
            {
              v2 = v11;
              *v11 = 0x53554E494D524554;
              v11[8] = 1;
              v11[9] = v10;
              *(v11 + 5) = 6144;
              v11[12] = 4;
              *(v11 + 13) = 4096;
              memptr[0] = 0;
              memptr[1] = 0;
              [*(v7 + 1503) getUUIDBytes:memptr];
              *(v2 + 15) = *memptr;
              *(v2 + 31) = 5;
              *(v2 + 32) = 512;
              *(v2 + 34) = sub_1000952E8(v7) << 8;
              *(v2 + 36) = ~os_inet_checksum();

              if (*(v7 + 335) > 0x25u)
              {
                v12 = *(v7 + 1279);
                v13 = *(v2 + 30);
                v14 = *(v2 + 16);
                *v12 = *v2;
                *(v12 + 16) = v14;
                *(v12 + 30) = v13;
                free(v2);
                *(v7 + 351) += 38;
                v2 = [[NSData alloc] initWithBytes:*(v7 + 1279) length:38];
                if (gNRPacketLoggingEnabled != 1)
                {
LABEL_13:
                  if (*(v7 + 293) == 1)
                  {
                    sub_10007D788(v7, v2, &off_100209BA8);
                  }

                  v15 = *(v7 + 8);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1000B11B4;
                  block[3] = &unk_1001FD060;
                  block[4] = v7;
                  v103 = v6;
                  dispatch_async(v15, block);

LABEL_21:
                  v17 = _NRCopyLogObjectForNRUUID();
                  v18 = _NRLogIsLevelEnabled();

                  if (v18)
                  {
                    v19 = _NRCopyLogObjectForNRUUID();
                    v20 = [a1 copyDescription];
                    _NRLogWithArgs(v19, 1, "%s%.30s:%-4d %@: Updating urgent pipe: %@ -> %@", "", "[NRLinkBluetooth updateUrgentPipe:]", 2744, v20, *(a1 + 1199), v6);
                  }

                  objc_storeStrong((a1 + 1199), v3);
                  if (!*(a1 + 1199) && a1[293] == 1)
                  {
                    sub_1000B1320(a1, &off_100209BA8);
                  }

                  goto LABEL_29;
                }

LABEL_72:
                v72 = _NRCopyLogObjectForNRUUID();
                v73 = _NRLogIsLevelEnabled();

                if (v73)
                {
                  v74 = _NRCopyLogObjectForNRUUID();
                  v75 = [v7 copyDescription];
                  _NRLogWithArgs(v74, 1, "%s%.30s:%-4d %@: UrgentLink:sending urgent prelude: %@", "", "[NRLinkBluetooth updateUrgentPipe:]", 2702, v75, v2);
                }

                goto LABEL_13;
              }

              v97 = sub_10007CF34();
              v98 = _NRLogIsLevelEnabled();

              if (v98)
              {
                v99 = sub_10007CF34();
                _NRLogWithArgs(v99, 16, "%s%.30s:%-4d ABORTING: well this is absurd & urgent %u", "", "[NRLinkBluetooth updateUrgentPipe:]", 2695, 38);
              }

              v6 = _os_log_pack_size();
              a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v100 = __error();
              v101 = _os_log_pack_fill(a1, v6, *v100, &_mh_execute_header, "%{public}s well this is absurd & urgent %u");
              *v101 = 136446466;
              *(v101 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
              *(v101 + 12) = 1024;
              *(v101 + 14) = 38;
            }

            else
            {
              v92 = sub_10007CF34();
              v93 = _NRLogIsLevelEnabled();

              v3 = "createPreludeBuffer";
              if (v93)
              {
                v94 = sub_10007CF34();
                _NRLogWithArgs(v94, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createPreludeBuffer", 7682);
              }

              v6 = _os_log_pack_size();
              a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v95 = __error();
              v96 = _os_log_pack_fill(a1, v6, *v95, &_mh_execute_header, "%{public}s strict allocator failed");
              *v96 = 136446210;
              *(v96 + 4) = "createPreludeBuffer";
            }

LABEL_71:
            sub_10007CF34();
            _NRLogAbortWithPack();
            goto LABEL_72;
          }

          v88 = sub_10007CF34();
          v89 = _NRLogIsLevelEnabled();

          if (v89)
          {
            v90 = sub_10007CF34();
            _NRLogWithArgs(v90, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "[NRLinkBluetooth updateUrgentPipe:]", 2685, 1uLL, v7);
          }

          goto LABEL_85;
        }

        v67 = sub_10007CF34();
        v68 = _NRLogIsLevelEnabled();

        if (v68)
        {
          v69 = sub_10007CF34();
          _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: strict_calloc called with size 0", "", "[NRLinkBluetooth updateUrgentPipe:]", 2685);
        }
      }

      else
      {
        v64 = sub_10007CF34();
        v65 = _NRLogIsLevelEnabled();

        if (v65)
        {
          v66 = sub_10007CF34();
          _NRLogWithArgs(v66, 16, "%s%.30s:%-4d ABORTING: strict_calloc called with size 0", "", "[NRLinkBluetooth updateUrgentPipe:]", 2681);
        }
      }

      v6 = _os_log_pack_size();
      a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = *__error();
      v71 = _os_log_pack_fill(a1, v6, v70, &_mh_execute_header, "%{public}s strict_calloc called with size 0");
      *v71 = 136446210;
      *(v71 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
      goto LABEL_71;
    }

    v7 = 8 * v51;
    memptr[0] = 0;
    if (!malloc_type_posix_memalign(memptr, 8uLL, 8 * v51, 0x14C33E92uLL) && memptr[0])
    {
      *(a1 + 2087) = memptr[0];
      goto LABEL_53;
    }

    v79 = sub_10007CF34();
    v80 = _NRLogIsLevelEnabled();

    if (v80)
    {
      v81 = sub_10007CF34();
      _NRLogWithArgs(v81, 16, "%s%.30s:%-4d ABORTING: posix_memalign(..., %zu, %zu) failed", "", "[NRLinkBluetooth updateUrgentPipe:]", 2678, 8uLL, v7);
    }

LABEL_79:
    v6 = _os_log_pack_size();
    a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = __error();
    v83 = _os_log_pack_fill(a1, v6, *v82, &_mh_execute_header, "%{public}s posix_memalign(..., %zu, %zu) failed");
    *v83 = 136446722;
    *(v83 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
    *(v83 + 12) = 2048;
    v84 = 8;
LABEL_86:
    *(v83 + 14) = v84;
    *(v83 + 22) = 2048;
    *(v83 + 24) = v7;
    goto LABEL_71;
  }

  v60 = _NRCopyLogObjectForNRUUID();
  v61 = _NRLogIsLevelEnabled();

  if (v61)
  {
    v62 = _NRCopyLogObjectForNRUUID();
    v63 = [a1 copyDescription];
    _NRLogWithArgs(v62, 17, "%@: _dUrgentLinkOutputSource is NULL", v63);
  }

LABEL_29:
}

void sub_1000B0908(uint64_t a1)
{
  v2 = *(a1 + 1231);
  if (v2)
  {
    if (*(a1 + 267) == 1)
    {
      *(a1 + 267) = 0;
      ++*(a1 + 1247);
      if (gNRPacketLoggingEnabled == 1)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v12 = _NRCopyLogObjectForNRUUID();
          v13 = [a1 copyDescription];
          _NRLogWithArgs(v12, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkInput", "", "NRLinkResumeUrgentLinkInputSource", 857, v13);
        }
      }

      dispatch_resume(*(a1 + 1231));
      v2 = *(a1 + 1231);
    }

    dispatch_source_cancel(v2);
    v3 = *(a1 + 1231);
    *(a1 + 1231) = 0;
  }

  v4 = *(a1 + 1239);
  if (v4)
  {
    if (*(a1 + 268) == 1)
    {
      *(a1 + 268) = 0;
      ++*(a1 + 1255);
      if (gNRPacketLoggingEnabled == 1)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = _NRLogIsLevelEnabled();

        if (v15)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          v17 = [a1 copyDescription];
          _NRLogWithArgs(v16, 1, "%s%.30s:%-4d %@: source-resume: UrgentLinkOutput", "", "NRLinkResumeUrgentLinkOutputSource", 858, v17);
        }
      }

      dispatch_resume(*(a1 + 1239));
      v4 = *(a1 + 1239);
    }

    dispatch_source_cancel(v4);
    v5 = *(a1 + 1239);
    *(a1 + 1239) = 0;
  }

  if (*(a1 + 256) == 1 && *(a1 + 783))
  {
    *(a1 + 256) = 0;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = _NRCopyLogObjectForNRUUID();
        v21 = [a1 copyDescription];
        _NRLogWithArgs(v20, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", "", "NRLinkResumeNexusVIInputSource", 877, v21);
      }
    }

    dispatch_resume(*(a1 + 783));
  }

  if (*(a1 + 254) == 1 && *(a1 + 623))
  {
    *(a1 + 254) = 0;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        v25 = [a1 copyDescription];
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", "", "NRLinkResumeNexusVOInputSource", 875, v25);
      }
    }

    dispatch_resume(*(a1 + 623));
  }

  *(a1 + 1207) = 0;
  *(a1 + 1223) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 269) = 0;
  *(a1 + 1247) = 0;
  *(a1 + 1255) = 0;
  v6 = *(a1 + 2039);
  if (v6)
  {
    free(v6);
    *(a1 + 2039) = 0;
  }

  v7 = *(a1 + 2087);
  if (v7)
  {
    free(v7);
    *(a1 + 2087) = 0;
  }

  v8 = *(a1 + 1463);
  if (v8)
  {
    free(v8);
    *(a1 + 1463) = 0;
  }

  *(a1 + 383) = 0;
  *(a1 + 379) = 0;
  v9 = *(a1 + 1279);
  if (v9)
  {
    free(v9);
    *(a1 + 1279) = 0;
  }

  *(a1 + 383) = 0;
  *(a1 + 351) = 0;
}

void sub_1000B0D94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d %@: Urgent link input available but cancelled", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke", 2631, v6);
    }
  }

  else
  {
    ++*(v2 + 1647);
    v3 = *(a1 + 32);
    if (v3[269])
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        v13 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v13)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          v15 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v14, 1, "%s%.30s:%-4d %@: Urgent link input available after prelude", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke", 2639, v15);

          v3 = *(a1 + 32);
        }
      }

      sub_1000A2C50(v3);
    }

    else
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Urgent link input available before prelude", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke", 2636, v10);
      }

      v11 = *(a1 + 32);

      sub_1000B15F0(v11, 1);
    }
  }
}

void sub_1000B0FEC(uint64_t a1)
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
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Urgent link output available but cancelled", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke_3", 2659, v7);
    }
  }

  else
  {
    ++*(v2 + 1655);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Urgent link output available", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke_3", 2663, v11);
      }
    }

    sub_1000A7C10(*(a1 + 32), *(*(a1 + 32) + 599));
    v3 = *(a1 + 32);
    v4 = *(v3 + 759);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000B11B4(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: NtL-U LOOP async start after async", "", "[NRLinkBluetooth updateUrgentPipe:]_block_invoke", 2710, v5);
  }

  sub_1000A7C10(*(a1 + 32), *(*(a1 + 32) + 759));
  objc_initWeak(&location, *(a1 + 32));
  v6 = dispatch_time(0x8000000000000000, 10000000000);
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1524;
  block[3] = &unk_1001FD0D8;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 40);
  dispatch_after(v6, v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_1000B1320(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:v18 forKeyedSubscript:@"channel-id"];
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKeyedSubscript:@"deactivate-datapath"];
  v5 = v4;
  v6 = *(a1 + 1399);
  if (v6 && [v6 direct])
  {
    [*(a1 + 1399) sendXPCCommDictionary:v5];
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v7 = qword_1002290B8;
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = *(v7 + 28);
      v11 = v5;
      v12 = [v10 objectForKeyedSubscript:v9];
      sub_100114680(v12, v11);
    }
  }

  v13 = [v18 integerValue];
  if (v13 == 3)
  {
    *(a1 + 296) = 0;
  }

  else if (v13 == 2)
  {
    *(a1 + 295) = 0;
  }

  else if (v13 == 1)
  {
    *(a1 + 294) = 0;
  }

  else
  {
    v14 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = [a1 copyDescription];
      _NRLogWithArgs(v16, 17, "%@: unsupported channel id %@", v17, v18);
    }
  }
}

void sub_1000B1524(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v4 = *(WeakRetained + 1199);
    v3 = v13;
    if (v4)
    {
      v5 = *(v13 + 1199);
      v6 = *(a1 + 32);

      v3 = v13;
      if (v5 == v6 && (*(v13 + 269) & 1) == 0)
      {
        v12 = *(v13 + 2007);
        if (v12)
        {
          *(v12 + 110) = 1;
        }

        sub_100080EB4(v13, @"Did not receive prelude after %ds on urgent pipe", v13, v7, v8, v9, v10, v11, 10);
        v3 = v13;
      }
    }
  }
}

void sub_1000B15F0(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  v4 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkInputRing;
  if (!a2)
  {
    v4 = &OBJC_IVAR___NRLinkBluetooth__linkInputRing;
  }

  v5 = &OBJC_IVAR___NRLinkBluetooth__linkChannel;
  if (a2)
  {
    v5 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkChannel;
  }

  if (!*&a1[*v4])
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v24 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    v12 = v11;
    v13 = "";
    if (a2)
    {
      v13 = "urgent ";
    }

    _NRLogWithArgs(v24, 17, "%@: Tried to read but %slinkInputRingToRead is NULL", v11, v13);
LABEL_22:

    return;
  }

  if (!*&a1[*v5])
  {
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      return;
    }

    v24 = _NRCopyLogObjectForNRUUID();
    v16 = [a1 copyDescription];
    v12 = v16;
    v17 = "";
    if (a2)
    {
      v17 = "urgent ";
    }

    _NRLogWithArgs(v24, 17, "%@: Tried to read but %slinkChannelToRead is NULL", v16, v17);
    goto LABEL_22;
  }

  if (a2)
  {
    i = 0;
    while (1)
    {
      next_slot = os_channel_get_next_slot();
      if (!next_slot)
      {
        break;
      }

      v8 = next_slot;
      sub_1000B18B4(a1, 0, 0, 1);
      if (a1[16] == 255)
      {
        goto LABEL_32;
      }

      i = v8;
      if (a1[269])
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    for (i = 0; ; i = v19)
    {
      v18 = os_channel_get_next_slot();
      if (!v18)
      {
        break;
      }

      v19 = v18;
      sub_1000B18B4(a1, 0, 0, 0);
      if (a1[16] == 255)
      {
LABEL_32:
        v20 = _NRCopyLogObjectForNRUUID();
        v21 = _NRLogIsLevelEnabled();

        if (v21)
        {
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = [a1 copyDescription];
          _NRLogWithArgs(v22, 16, "%s%.30s:%-4d %@: Tried to read but we are cancelled", "", "[NRLinkBluetooth readDataFromChannelWithIsUrgent:]", 7780, v23);
        }

        return;
      }
    }
  }

  if (i)
  {
LABEL_30:
    os_channel_advance_slot();
  }

  os_channel_sync();
}

void sub_1000B18B4(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  if (gNRPacketLoggingEnabled == 1)
  {
    v9 = a3;
    v10 = a2;
    v11 = +[NSDate date];
    v12 = *(a1 + 1823);
    *(a1 + 1823) = v11;

    a2 = v10;
    a3 = v9;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (!a2)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    if (a4)
    {
      *(a1 + 1551) += a3;
      if (gNRPacketLoggingEnabled != 1)
      {
        v6 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
        v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
LABEL_9:
        v8 = a3;
        memcpy((*(a1 + *v7) + *(a1 + *v6)), a2, a3);
        *(a1 + *v6) += v8;

        sub_100092390(a1, a4);
        return;
      }

      v19 = a2;
      v20 = a3;
      v21 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v6 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
      if (!IsLevelEnabled)
      {
        v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
        goto LABEL_27;
      }

      v23 = _NRCopyLogObjectForNRUUID();
      v24 = [a1 copyDescription];
      _NRLogWithArgs(v23, 1, "%s%.30s:%-4d %@: filling in urgentLinkReadBuffer by %u from %u to %u (handled %u)", "", "[NRLinkBluetooth readIncomingData:length:isUrgentLink:]", 7728, v24, v20, *(a1 + 379), (*(a1 + 379) + v20), *(a1 + 383));
      v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
    }

    else
    {
      *(a1 + 1519) += a3;
      if (gNRPacketLoggingEnabled != 1)
      {
        v6 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
        v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
        goto LABEL_9;
      }

      v19 = a2;
      v20 = a3;
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      v6 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
      if (!v26)
      {
        v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
        goto LABEL_27;
      }

      v23 = _NRCopyLogObjectForNRUUID();
      v24 = [a1 copyDescription];
      _NRLogWithArgs(v23, 1, "%s%.30s:%-4d %@: filling in linkReadBuffer by %u from %u to %u (handled %u)", "", "[NRLinkBluetooth readIncomingData:length:isUrgentLink:]", 7737, v24, v20, *(a1 + 371), (*(a1 + 371) + v20), *(a1 + 375));
      v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
    }

LABEL_27:
    a3 = v20;
    a2 = v19;
    goto LABEL_9;
  }

LABEL_13:
  v13 = _NRCopyLogObjectForNRUUID();
  v14 = _NRLogIsLevelEnabled();

  if (v14)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [a1 copyDescription];
    v17 = v16;
    v18 = "";
    if (a4)
    {
      v18 = "urgent ";
    }

    _NRLogWithArgs(v15, 17, "%@: %spipe received no data", v16, v18);
  }

  [a1 cancelWithReason:@"pipe received no data"];
}

void sub_1000B1C18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: Datagram link input available but cancelled", "", "[NRLinkBluetooth updateDatagramPipe:]_block_invoke", 2835, v6);
    goto LABEL_7;
  }

  ++*(v2 + 1631);
  v3 = *(a1 + 32);
  if (v3[16] - 1 <= 1)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = _NRLogIsLevelEnabled();

    if (!v5)
    {
      return;
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v13, 17, "%@: Datagram link input available before prelude", v6);
LABEL_7:

    return;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    v3 = *(a1 + 32);
    if (v10)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@: Datagram link input available after prelude", "", "[NRLinkBluetooth updateDatagramPipe:]_block_invoke", 2842, v12);

      v3 = *(a1 + 32);
    }
  }

  sub_1000AAFD8(v3);
}

void sub_1000B1E24(uint64_t a1)
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
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %@: Datagram link output available but cancelled", "", "[NRLinkBluetooth updateDatagramPipe:]_block_invoke_3", 2861, v7);
    }
  }

  else
  {
    ++*(v2 + 1639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Datagram link output available", "", "[NRLinkBluetooth updateDatagramPipe:]_block_invoke_3", 2865, v11);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 599);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000B487C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v6 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d %@: Link input available but cancelled", "", "[NRLinkBluetooth start]_block_invoke", 1357, v6);
    }
  }

  else
  {
    ++*(v2 + 1615);
    v3 = *(a1 + 32);
    if (v3[16] - 1 > 1)
    {
      if (gNRPacketLoggingEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        v12 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v12)
        {
          v13 = _NRCopyLogObjectForNRUUID();
          v14 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Link input available after prelude", "", "[NRLinkBluetooth start]_block_invoke", 1365, v14);

          v3 = *(a1 + 32);
        }
      }

      sub_100097378(v3);
    }

    else
    {
      if (gNRPacketLoggingEnabled)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v8)
        {
          v9 = _NRCopyLogObjectForNRUUID();
          v10 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Link input available before prelude", "", "[NRLinkBluetooth start]_block_invoke", 1362, v10);

          v3 = *(a1 + 32);
        }
      }

      sub_1000B15F0(v3, 0);
    }
  }
}

void sub_1000B4AD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v33 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v35 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v40, 16, "%s%.30s:%-4d %@: Link output available but cancelled", "", "[NRLinkBluetooth start]_block_invoke_3", 1383, v35);
    }
  }

  else
  {
    ++*(v2 + 1623);
    if (gNRPacketLoggingEnabled == 1)
    {
      v36 = _NRCopyLogObjectForNRUUID();
      v37 = _NRLogIsLevelEnabled();

      if (v37)
      {
        v38 = _NRCopyLogObjectForNRUUID();
        v39 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v38, 1, "%s%.30s:%-4d %@: Link output available", "", "[NRLinkBluetooth start]_block_invoke_3", 1387, v39);
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 1199);
    if (*(v3 + 270) <= 3u)
    {
      v5 = *(v3 + 270);
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == 0;
    }

    if (v6)
    {
      v7 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
    }

    else
    {
      v7 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
    }

    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 1;
    }

    if (v8)
    {
      v9 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
    }

    else
    {
      v9 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
    }

    if (v5)
    {
      v7 = v9;
    }

    sub_10007D9C4(v3, *(v3 + *v7));
    if (((v5 + 1) & 0xFC) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 + 1;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 1199);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == 0;
    }

    if (v13)
    {
      v14 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
    }

    else
    {
      v14 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
    }

    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 1;
    }

    if (v15)
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
    }

    else
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
    }

    if ((v10 & 1) == 0)
    {
      v16 = v14;
    }

    sub_10007D9C4(v11, *(v11 + *v16));
    if (!v4)
    {
      if (((v10 + 1) & 0xFC) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 + 1;
      }

      v18 = *(a1 + 32);
      v19 = *(v18 + 1199);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0;
      }

      if (v20)
      {
        v21 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
      }

      else
      {
        v21 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
      }

      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 1;
      }

      if (v22)
      {
        v23 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
      }

      else
      {
        v23 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
      }

      if ((v17 & 1) == 0)
      {
        v23 = v21;
      }

      sub_10007D9C4(v18, *(v18 + *v23));
      if (((v17 + 1) & 0xFC) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = v17 + 1;
      }

      v25 = *(a1 + 32);
      v26 = *(v25 + 1199);
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0;
      }

      if (v27)
      {
        v28 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
      }

      else
      {
        v28 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
      }

      if (v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24 == 1;
      }

      if (v29)
      {
        v30 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
      }

      else
      {
        v30 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
      }

      if (v24)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      sub_10007D9C4(v25, *(v25 + *v31));
    }

    ++*(*(a1 + 32) + 270);
    v32 = *(a1 + 32);
    if (*(v32 + 270) > 3u)
    {
      *(v32 + 270) = 0;
    }
  }
}

void sub_1000B4DE4(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: NtL LOOP async start after async", "", "[NRLinkBluetooth start]_block_invoke", 1476, v5);
  }

  sub_10007D9C4(*(a1 + 32), 0);
  objc_initWeak(&location, *(a1 + 32));
  v6 = dispatch_time(0x8000000000000000, 10000000000);
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4F34;
  block[3] = &unk_1001FC730;
  objc_copyWeak(&v9, &location);
  dispatch_after(v6, v7, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_1000B4F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v2 = [WeakRetained state] == 2;
    WeakRetained = v10;
    if (v2)
    {
      v9 = *(v10 + 2007);
      if (v9)
      {
        *(v9 + 109) = 1;
      }

      sub_100080EB4(v10, @"Did not receive prelude after %ds", v3, v4, v5, v6, v7, v8, 10);
      WeakRetained = v10;
    }
  }
}

char *sub_1000B6370(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!a1)
  {
    goto LABEL_58;
  }

  if (!v13)
  {
    v46 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_58;
    }

    v48 = sub_10007CF34();
    _NRLogWithArgs(v48, 17, "%s called with null queue");
LABEL_57:

    v43 = 0;
    goto LABEL_38;
  }

  dispatch_assert_queue_V2(v13);
  if (!v15)
  {
    v49 = sub_10007CF34();
    v50 = _NRLogIsLevelEnabled();

    if (!v50)
    {
      goto LABEL_58;
    }

    v48 = sub_10007CF34();
    _NRLogWithArgs(v48, 17, "%s called with null nrUUID");
    goto LABEL_57;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v51 = sub_10007CF34();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_58;
    }

    v48 = sub_10007CF34();
    _NRLogWithArgs(v48, 17, "called with all-zero nrUUID");
    goto LABEL_57;
  }

  if (!v18)
  {
    v53 = sub_10007CF34();
    v54 = _NRLogIsLevelEnabled();

    if (v54)
    {
      v48 = sub_10007CF34();
      _NRLogWithArgs(v48, 17, "%s called with null remoteDeviceName");
      goto LABEL_57;
    }

LABEL_58:
    v43 = 0;
    goto LABEL_38;
  }

  v68.receiver = a1;
  v68.super_class = NRLinkBluetooth;
  v19 = objc_msgSendSuper2(&v68, "initLinkWithQueue:linkDelegate:nrUUID:", v13, v14, v15);
  if (v19)
  {
    a1 = v19;
    v67 = v15;
    [v19 setType:1];
    [a1 setSubtype:120];
    objc_storeStrong((a1 + 399), a5);
    v20 = *(a1 + 399);
    v65 = v14;
    v66 = v13;
    v63 = v18;
    v64 = v16;
    if (v20)
    {
      v21 = [v16 peer];
      v22 = [v21 identifier];
      v23 = *(a1 + 391);
      *(a1 + 391) = v22;
    }

    else if (v17)
    {
      [a1 setSubtype:121];
      objc_storeStrong((a1 + 407), a6);
      *(a1 + 307) = [v17 PSM];
      v24 = *(a1 + 407);
      v25 = [v24 peer];
      v26 = [v25 identifier];
      v27 = *(a1 + 391);
      *(a1 + 391) = v26;

      a1[282] = [v17 isPacketBased];
    }

    v28 = v17;
    objc_storeStrong((a1 + 415), a7);
    v29 = objc_alloc_init(NRAnalyticsCmpnLinkBluetooth);
    v30 = *(a1 + 2007);
    *(a1 + 2007) = v29;

    v31 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 315) = 0xFFFF;
    v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
    *(a1 + 319) = *(a1 + 315);
    *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
    v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 331) = 0x4000;
    v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 335) = *(a1 + 331);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v32 = qword_1002290B8;
    if (v32)
    {
      v33 = v32[10];

      if (v33 == 1)
      {
        a1[293] = 1;
        *(a1 + 315) = 48;
        *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
        *(a1 + 319) = *(a1 + 315);
        *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
        *(a1 + 331) = 48;
        *(a1 + 335) = *(a1 + 331);
      }
    }

    v15 = v67;
    v34 = sub_100163A30(NRDLocalDevice, v67);
    if (!v34)
    {
      v58 = sub_10007CF34();
      v59 = _NRLogIsLevelEnabled();

      v18 = "[NRLinkBluetooth initLinkWithQueue:linkDelegate:nrUUID:pipe:l2CAPChannel:remoteDeviceName:]";
      if (v59)
      {
        v60 = sub_10007CF34();
        _NRLogWithArgs(v60, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth initLinkWithQueue:linkDelegate:nrUUID:pipe:l2CAPChannel:remoteDeviceName:]", 1099);
      }

      v13 = _os_log_pack_size();
      v15 = &v63 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v61 = __error();
      v62 = _os_log_pack_fill(v15, v13, *v61, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v62 = 136446210;
      *(v62 + 4) = "[NRLinkBluetooth initLinkWithQueue:linkDelegate:nrUUID:pipe:l2CAPChannel:remoteDeviceName:]";
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_65;
    }

    v31 = v34;
    v35 = *(v34 + 48);
    v36 = *(a1 + 2007);
    if (v36)
    {
      *(v36 + 16) = (v35 & 8) >> 3;
    }

    v14 = v65;
    v13 = v66;
    v16 = v64;
    v17 = v28;
    if ((v35 & 0x20) != 0)
    {
      LOBYTE(v38) = 1;
      v18 = v63;
      if ((v35 & 0x1000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = v63;
      v37 = (v35 & 0x10) != 0 || *(v34 + 16) > 0x12u;
      v38 = (v35 >> 14) & 1 | v37;
      if ((v35 & 0x1000) != 0)
      {
LABEL_26:
        if ((((v35 & 0x2000) != 0) & v38) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    if ((v35 & 8) == 0)
    {
      if ((v35 & 0x10) != 0)
      {
        v40 = 13;
      }

      else
      {
        if (*(v34 + 176))
        {
          if ((v35 & 0x20) != 0)
          {
            v39 = 12;
          }

          else
          {
            v39 = 10;
          }

          a1[248] = v39;
          if ((*(v34 + 48) & 8) != 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        if ((v35 & 0x20) == 0)
        {
          [a1 reportEvent:3017 detailsFormat:@"Local device without pairing keys %@", v34];
          if (qword_100229088 == -1)
          {
LABEL_41:
            if (_NRLogIsLevelEnabled())
            {
              v45 = sub_10007CF34();
              _NRLogWithArgs(v45, 17, "Local device without pairing keys %@", v31);
            }

            v43 = 0;
            goto LABEL_37;
          }

LABEL_65:
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
          goto LABEL_41;
        }

        v40 = 11;
      }

LABEL_34:
      a1[248] = v40;
      if ((*(v34 + 48) & 8) != 0)
      {
LABEL_36:
        sub_1000891A4(a1);
        v41 = [v15 UUIDString];
        [a1 reportEvent:3000 details:v41];

        v42 = [a1 linkDelegate];
        [v42 linkIsAvailable:a1];

        v43 = a1;
LABEL_37:

        goto LABEL_38;
      }

LABEL_35:
      sub_100168638(v34, a1 + 2095);
      sub_100167D5C(v31, a1 + 2111);
      sub_100172608(v31, a1 + 2127);
      sub_1001727AC(v31, a1 + 2143);
      goto LABEL_36;
    }

LABEL_32:
    v40 = 20;
    goto LABEL_34;
  }

  v55 = sub_10007CF34();
  v56 = _NRLogIsLevelEnabled();

  if (v56)
  {
    v57 = sub_10007CF34();
    _NRLogWithArgs(v57, 17, "[NRLink initLinkWithQueue:] failed");
  }

  a1 = 0;
  v43 = 0;
LABEL_38:

  return v43;
}

void sub_1000B6B70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 1295))
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 1295);
    *(a1 + 1295) = v4;

    if (!*(a1 + 1295))
    {
      v23 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_10007CF34();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.latencyContexts) != ((void*)0)", "", "[NRLinkBluetooth measureLatencyWithCompletion:]", 3043);
      }

      v26 = _os_log_pack_size();
      v27 = &block[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *__error();
      v22 = _os_log_pack_fill(v27, v26, v28, &_mh_execute_header, "%{public}s Assertion Failed: (self.latencyContexts) != ((void*)0)");
LABEL_13:
      *v22 = 136446210;
      *(v22 + 4) = "[NRLinkBluetooth measureLatencyWithCompletion:]";
      sub_10007CF34();
      _NRLogAbortWithPack();
    }
  }

  v6 = objc_alloc_init(NRDLatencyContext);
  if (!v6)
  {
    v16 = sub_10007CF34();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10007CF34();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (latencyContext) != ((void*)0)", "", "[NRLinkBluetooth measureLatencyWithCompletion:]", 3047);
    }

    v19 = _os_log_pack_size();
    v20 = &block[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill(v20, v19, v21, &_mh_execute_header, "%{public}s Assertion Failed: (latencyContext) != ((void*)0)");
    goto LABEL_13;
  }

  v8 = v6;
  objc_setProperty_nonatomic_copy(v6, v7, v3, 8);
  v9 = ++qword_100229068;
  v8->_sequenceNumber = qword_100229068;
  v10 = _NRCopyLogObjectForNRUUID();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [a1 copyDescription];
    _NRLogWithArgs(v12, 1, "%s%.30s:%-4d %@: Sending ping seq %llu", "", "[NRLinkBluetooth measureLatencyWithCompletion:]", 3054, v13, v8->_sequenceNumber);
  }

  v31 = 1;
  v32 = bswap64(v9);
  v8->_startTime = sub_100096D88(a1, &v31, 9u, 1);
  [*(a1 + 1295) addObject:v8];
  v14 = dispatch_time(0x8000000000000000, 10000000000);
  v15 = [a1 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B6F18;
  block[3] = &unk_1001FBAE8;
  block[4] = a1;
  block[5] = v9;
  dispatch_after(v14, v15, block);
}

void sub_1000B6F28(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to notify payloads", "", "[NRLinkBluetooth sendAlwaysOnWiFiUpdate]_block_invoke", 8311, v7);
    }

    else
    {
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to notify payloads", "", "[NRLinkBluetooth sendAlwaysOnWiFiUpdate]_block_invoke", 8313, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_1000B7058(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290A8;
  qword_1002290A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B709C(id a1)
{
  v10 = [[NSString alloc] initWithFormat:@"-%s", "676.40.5"];
  if (([(__CFString *)v10 isEqualToString:@"-"]& 1) != 0 || [(__CFString *)v10 isEqualToString:@"-$RC_ProjectSourceVersion"])
  {

    v10 = &stru_1001FDE68;
  }

  v1 = [NSString alloc];
  v2 = getpid();
  if (qword_100229218 != -1)
  {
    dispatch_once(&qword_100229218, &stru_1001FC300);
  }

  v3 = qword_100229210;
  if (qword_100229228 != -1)
  {
    dispatch_once(&qword_100229228, &stru_1001FC320);
  }

  v4 = qword_100229220;
  if (_NRIsAppleInternal())
  {
    v5 = " internal";
  }

  else
  {
    v5 = "";
  }

  v6 = _NRShouldDebugAutoRelease();
  v7 = " (NR_DEBUG_AUTORELEASE)";
  if (!v6)
  {
    v7 = "";
  }

  v8 = [v1 initWithFormat:@"terminusd%@ pid %d built on %s %s, iphoneOS %@ %@%s%s", v10, v2, "Oct 10 2025", "22:08:34", v3, v4, v5, v7];
  v9 = qword_100229098;
  qword_100229098 = v8;
}

id sub_1000B7248(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&unk_100229090);
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  v6 = v5;
  if (v3)
  {
    v7 = [v3 UUIDString];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&unk_100229090);
  if (v9)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d Successfully fetched '%@':%@", "", "terminusdSettingsGetValueForKey", 383, v4, v9);
    }
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d No value for '%@'", "", "terminusdSettingsGetValueForKey", 385, v4);
    }
  }

  return v9;
}

void sub_1000B7458(void *a1, void *a2, void *a3)
{
  v15 = a1;
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(&unk_100229090);
  v7 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v15;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v7 setObject:v6 forKeyedSubscript:v5];
    goto LABEL_9;
  }

  v8 = v15;
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [v8 UUIDString];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(NSMutableDictionary);
  }

  v12 = v11;
  [v11 setObject:v6 forKeyedSubscript:v5];
  v13 = [v15 UUIDString];
  [v7 setObject:v12 forKeyedSubscript:v13];

LABEL_9:
  v14 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v7, 1);
  os_unfair_lock_unlock(&unk_100229090);
  if (v14)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d Successfully wrote '%@':%@", "", "terminusdSettingsSetValueForKey", 323, v5, v6);
    }
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 17, "Failed to write '%@':%@", v5, v6);
    }
  }
}

void sub_1000B76C8(void *a1, void *a2)
{
  v13 = a1;
  v3 = a2;
  os_unfair_lock_lock(&unk_100229090);
  v4 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (v4)
  {
    if (v13)
    {
      v5 = [v13 UUIDString];
      v6 = [v4 objectForKeyedSubscript:v5];

      if (v6)
      {
        if (v3)
        {
          v7 = [v6 mutableCopy];
          [v7 removeObjectForKey:v3];
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 count];
        v9 = [v13 UUIDString];
        if (v8)
        {
          [v4 setObject:v7 forKeyedSubscript:v9];
        }

        else
        {
          [v4 removeObjectForKey:v9];
        }
      }
    }

    else
    {
      [v4 removeObjectForKey:v3];
    }

    v10 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v4, 1);
    os_unfair_lock_unlock(&unk_100229090);
    if (v10)
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290B0 != -1)
        {
          dispatch_once(&qword_1002290B0, &stru_1001FB278);
        }

        if (v3)
        {
          v11 = v3;
        }

        else
        {
          v11 = v13;
        }

        _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d Successfully removed value for '%@'", "", "terminusdSettingsRemoveValueForKey", 362, v11);
      }
    }

    else
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290B0 != -1)
        {
          dispatch_once(&qword_1002290B0, &stru_1001FB278);
        }

        if (v3)
        {
          v12 = v3;
        }

        else
        {
          v12 = v13;
        }

        _NRLogWithArgs(qword_1002290A8, 17, "Failed to write '%@'", v12);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&unk_100229090);
  }
}

id sub_1000B794C()
{
  v0 = _os_feature_enabled_impl();
  v1 = sub_1000B7248(0, @"companionAPLAllowed");
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & v0)
    {
      v0 = [v1 BOOLValue];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

BOOL sub_1000B79D8(uint64_t a1, uint64_t a2)
{
  if (!_NRIsAppleInternal())
  {
    return 1;
  }

  os_unfair_lock_lock(&unk_100229090);
  v2 = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"companionLinkEnabled"];
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) == 0 || [v4 intValue] != 2;
  }

  else
  {
    v5 = 1;
  }

  os_unfair_lock_unlock(&unk_100229090);

  return v5;
}

void sub_1000B7AA8(uint64_t a1)
{
  os_unfair_lock_lock(&unk_100229090);
  v2 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v18 = v2;
  v3 = [v2 objectForKeyedSubscript:@"companionLinkEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInt:a1];
  [v18 setObject:v5 forKeyedSubscript:@"companionLinkEnabled"];

  v6 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v18, 1);
  os_unfair_lock_unlock(&unk_100229090);
  v7 = sub_100003490();
  dispatch_async(v7, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v8 = qword_1002290B8;
  if (v8)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    if (sub_1000B79D8(v10, v11))
    {
      sub_1000BAAFC(v8);
    }

    else
    {
      sub_1000BBDC0(v8);
    }
  }

  v12 = [NSString alloc];
  v13 = *(&off_1001FB298 + a1);
  if (v4 >= 3)
  {
    v15 = v12;
    v14 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v4];
    v12 = v15;
  }

  else
  {
    v14 = *(&off_1001FB298 + v4);
  }

  v16 = " (WRITE FAILED)";
  if (v6)
  {
    v16 = "";
  }

  v17 = [v12 initWithFormat:@"Set companion link to %@ (previously was %@)%s", v13, v14, v16];

  sub_1000059A8(0, 9001, &stru_1001FDE68, v17);
}

void sub_1000B926C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a3;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    sub_1000059A8(0, a2, 0, v11);
  }
}

id sub_1000B9544()
{
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  v1 = qword_1002290E8;

  return v1;
}

void sub_1000B9598(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290E8;
  qword_1002290E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B98D8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, @"NRLinkDirector-AppVPN");

    v72 = objc_alloc_init(NSMutableArray);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = *(v1 + 224);
    v63 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v63)
    {
      v62 = *v97;
      v69 = v1;
      do
      {
        v3 = 0;
        do
        {
          if (*v97 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v3;
          v68 = *(*(&v96 + 1) + 8 * v3);
          v4 = [*(v1 + 224) objectForKeyedSubscript:?];
          v5 = sub_1000FE460(v4);

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v65 = v5;
          v71 = [v65 countByEnumeratingWithState:&v92 objects:v107 count:16];
          if (v71)
          {
            v70 = *v93;
            do
            {
              for (i = 0; i != v71; i = i + 1)
              {
                if (*v93 != v70)
                {
                  objc_enumerationMutation(v65);
                }

                v7 = *(*(&v92 + 1) + 8 * i);
                v73 = i;
                if (*(v1 + 336))
                {
                  v8 = [NEPolicyRouteRule routeRuleWithAction:6 forType:7];
                  [v8 setNetworkAgentUUID:v7];
                  [v72 addObject:v8];
                  v9 = sub_100163A30(NRDLocalDevice, v68);
                  v10 = v9;
                  if (v9)
                  {
                    v11 = *(v9 + 144);
                  }

                  else
                  {
                    v11 = 0;
                  }

                  v12 = v11;
                  v13 = [v12 proxyProviderCriteria];
                  v14 = [v13 excludeVPNClients];

                  if (v14)
                  {
                    v66 = v10;
                    v67 = v8;
                    v15 = [NEPolicyResult removeNetworkAgentUUID:v7];
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v74 = *(v1 + 336);
                    v16 = [v74 countByEnumeratingWithState:&v88 objects:v106 count:16];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = *v89;
                      do
                      {
                        for (j = 0; j != v17; j = j + 1)
                        {
                          if (*v89 != v18)
                          {
                            objc_enumerationMutation(v74);
                          }

                          v20 = *(*(&v88 + 1) + 8 * j);
                          v21 = [NEPolicy alloc];
                          v22 = +[NEPolicyCondition allInterfaces];
                          v105[0] = v22;
                          v23 = [NEPolicyCondition effectiveApplication:v20];
                          v105[1] = v23;
                          v24 = [NSArray arrayWithObjects:v105 count:2];
                          v25 = [v21 initWithOrder:5 result:v15 conditions:v24];

                          objc_opt_self();
                          if (qword_100229410 != -1)
                          {
                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                          }

                          v26 = qword_100229408;
                          v27 = sub_100159E00(v26, @"NRLinkDirector-AppVPN", v25);
                        }

                        v17 = [v74 countByEnumeratingWithState:&v88 objects:v106 count:16];
                      }

                      while (v17);
                    }

                    v1 = v69;
                    i = v73;
                    v10 = v66;
                    v8 = v67;
                  }
                }

                if (*(v1 + 320))
                {
                  v28 = [NEPolicyRouteRule routeRuleWithAction:6 forNetworkAgent:?];
                  [v28 setNetworkAgentUUID:v7];
                  v75 = v28;
                  [v72 addObject:v28];
                  v86 = 0u;
                  v87 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v29 = *(v1 + 328);
                  v30 = [v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v85;
                    do
                    {
                      for (k = 0; k != v31; k = k + 1)
                      {
                        if (*v85 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        v34 = [NEPolicyCondition effectiveApplication:*(*(&v84 + 1) + 8 * k)];
                        v35 = [NEPolicyResult removeNetworkAgentUUID:v7];
                        v36 = [NEPolicy alloc];
                        v37 = +[NEPolicyCondition allInterfaces];
                        v103[0] = v37;
                        v103[1] = v34;
                        v38 = [NSArray arrayWithObjects:v103 count:2];
                        v39 = [v36 initWithOrder:5 result:v35 conditions:v38];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v40 = qword_100229408;
                        v41 = sub_100159E00(v40, @"NRLinkDirector-AppVPN", v39);
                      }

                      v31 = [v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
                    }

                    while (v31);
                  }

                  v1 = v69;
                  i = v73;
                }
              }

              v71 = [v65 countByEnumeratingWithState:&v92 objects:v107 count:16];
            }

            while (v71);
          }

          v3 = v64 + 1;
        }

        while ((v64 + 1) != v63);
        v63 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v63);
    }

    if ([v72 count])
    {
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v42 = *(v1 + 224);
      v43 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v81;
        do
        {
          for (m = 0; m != v44; m = m + 1)
          {
            if (*v81 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [*(v1 + 224) objectForKeyedSubscript:*(*(&v80 + 1) + 8 * m)];
            sub_100114D18(v47, 1);
          }

          v44 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
        }

        while (v44);
      }

      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d adding VPN route-rule(s) %@", "", "[NRLinkDirector updateVPNPolicies]", 2899, v72);
      }

      v48 = [NEPolicy alloc];
      v49 = [NEPolicyResult routeRules:v72];
      v50 = +[NEPolicyCondition allInterfaces];
      v101 = v50;
      v51 = [NSArray arrayWithObjects:&v101 count:1];
      v52 = [v48 initWithOrder:5 result:v49 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v53 = qword_100229408;
      v54 = sub_100159E00(v53, @"NRLinkDirector-AppVPN", v52);
    }

    else
    {
      v78 = 0uLL;
      v79 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v52 = *(v1 + 224);
      v56 = [v52 countByEnumeratingWithState:&v76 objects:v100 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v77;
        do
        {
          for (n = 0; n != v57; n = n + 1)
          {
            if (*v77 != v58)
            {
              objc_enumerationMutation(v52);
            }

            v60 = [*(v1 + 224) objectForKeyedSubscript:*(*(&v76 + 1) + 8 * n)];
            sub_100114D18(v60, 0);
          }

          v57 = [v52 countByEnumeratingWithState:&v76 objects:v100 count:16];
        }

        while (v57);
      }
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v55 = qword_100229408;
    sub_10015A52C(v55);
  }
}

id sub_1000BA648(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v1 = qword_1002290B8;

  return v1;
}

void sub_1000BA6A0(id a1)
{
  v1 = sub_1000BA6F0([NRLinkDirector alloc]);
  v2 = qword_1002290B8;
  qword_1002290B8 = v1;

  objc_opt_self();
  byte_1002290C8 = 1;
}

_BYTE *sub_1000BA6F0(_BYTE *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v30.receiver = v1;
    v30.super_class = NRLinkDirector;
    v3 = objc_msgSendSuper2(&v30, "init");
    if (!v3)
    {
      v22 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v24 = sub_1000B9544();
        _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRLinkDirector initDirector]", 272);
      }

      v25 = _os_log_pack_size();
      v26 = __error();
      v27 = _os_log_pack_fill(v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s [super init] failed");
      *v27 = 136446210;
      *(v27 + 4) = "[NRLinkDirector initDirector]";
      sub_1000B9544();
      _NRLogAbortWithPack();
    }

    v4 = v3;
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v4[28];
    v4[28] = v5;

    v7 = objc_alloc_init(NSMutableSet);
    v8 = v4[29];
    v4[29] = v7;

    v9 = objc_alloc_init(NSMutableSet);
    v10 = v4[30];
    v4[30] = v9;

    v11 = objc_alloc_init(NSMutableSet);
    v12 = v4[31];
    v4[31] = v11;

    sub_1000059A8(0, 1000, 0, 0);
    *(v4 + 28) = -1;
    v13 = sub_100003490();
    v14 = v4[17];
    v4[17] = v13;

    v15 = v4[17];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000BA974;
    v28[3] = &unk_1001FB2D8;
    v16 = v4;
    v29 = v16;
    v17 = v15;
    v16[17] = ne_session_is_always_on_vpn_enabled();

    v18 = sub_100003490();
    dispatch_assert_queue_V2(v18);

    if (sub_1000B79D8(v19, v20))
    {
      sub_1000BAAFC(v16);
    }

    else
    {
      sub_1000BBDC0(v16);
    }

    v1 = v16;
  }

  return v1;
}

void sub_1000BA974(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v4 = a2 ? 1037 : 1038;
    sub_1000059A8(0, v4, 0, 0);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(v5 + 17) != a2)
      {
        *(v5 + 17) = a2;
        v6 = *(a1 + 32);
        if (v6)
        {
          v7 = sub_100003490();
          dispatch_assert_queue_V2(v7);

          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Restarting link director", "", "[NRLinkDirector restartDirector]", 342);
          }

          sub_1000BBDC0(v6);
          v8 = sub_100003490();
          dispatch_assert_queue_V2(v8);

          if (sub_1000B79D8(v9, v10))
          {

            sub_1000BAAFC(v6);
          }

          else
          {

            sub_1000BBDC0(v6);
          }
        }
      }
    }
  }
}

void sub_1000BAAFC(id *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 13) == 1)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d Skipping start as director is already enabled", "", "[NRLinkDirector startDirector]", 307);
    }

    return;
  }

  *(a1 + 13) = 1;
  sub_1000059A8(0, 1001, 0, 0);
  *(a1 + 10) = 0;
  if (_os_feature_enabled_impl())
  {
    *(a1 + 10) = 1;
    HIDWORD(qword_100228A78) = 64;
  }

  if (*(a1 + 17) == 1)
  {
    sub_1000059A8(0, 1032, 0, 0);
  }

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  val = a1;
  if (!_NRIsAppleInternal())
  {
    goto LABEL_53;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d starting test server", "", "[NRLinkDirector setupManagers]", 451);
  }

  v4 = [NRDTestServer alloc];
  v5 = a1[17];
  v6 = sub_10006D2A4(v4, v5);
  v7 = a1[26];
  a1[26] = v6;

  v8 = a1[26];
  if (!v8)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "[[NRDTestServer alloc] initTestServerWithQueue:] failed");
    }

    v8 = a1[26];
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  if (*(v8 + 8) != 1)
  {
    *(v8 + 8) = 1;
    sub_1000059A8(0, 9002, 0, 0);
    if (*(v8 + 3))
    {
      if (*(v8 + 4))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v9 = sub_10006E370(v8, 0);
      v10 = *(v8 + 3);
      *(v8 + 3) = v9;

      if (*(v8 + 4))
      {
LABEL_37:
        if (*(v8 + 5))
        {
          goto LABEL_42;
        }

LABEL_41:
        application_service_quic = nw_parameters_create_application_service_quic();
        v14 = nw_parameters_copy_default_protocol_stack(application_service_quic);
        nw_protocol_stack_iterate_application_protocols(v14, &stru_1001FACF0);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        nw_parameters_set_local_endpoint(application_service_quic, host_with_numeric_port);
        memset(out, 0, sizeof(out));
        uuid_generate(out);
        application_service = nw_endpoint_create_application_service();
        v17 = *(v8 + 2);
        v18 = nw_service_connector_create_with_endpoint();

        block.receiver = _NSConcreteStackBlock;
        block.super_class = 3221225472;
        v115 = sub_10006E45C;
        v116 = &unk_1001FACB0;
        v19 = v18;
        v117[0] = v19;
        v117[1] = v8;
        nw_service_connector_set_service_available_block();
        nw_service_connector_start();
        v20 = *(v8 + 5);
        *(v8 + 5) = v19;
        v21 = v19;

        goto LABEL_42;
      }
    }

    v11 = sub_10006E370(v8, 1);
    v12 = *(v8 + 4);
    *(v8 + 4) = v11;

    if (*(v8 + 5))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Already started. Ignoring", "", "[NRDTestServer start]", 252);
  }

LABEL_42:
  v22 = sub_1000B7248(0, @"FixedInterfacePeerIDSDeviceID");
  v23 = sub_1000B7248(0, @"FixedInterfaceName");
  v24 = sub_1000B7248(0, @"FixedInterfacePeerAddress");
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!v23 || !v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      a1 = val;
LABEL_53:
      if (*(a1 + 17) == 1)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Not initializing managers as AOVPN is configured", "", "[NRLinkDirector setupManagers]", 499);
        }

        goto LABEL_92;
      }

      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230)
      {
        v103 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_69;
        }

        v28 = sub_1000B9544();
        _NRLogWithArgs(v28, 0, "%s%.30s:%-4d Skipping initialization of NRLinkManagerBluetooth for unsupported device", "", "[NRLinkDirector setupManagers]", 508);
LABEL_68:

        a1 = val;
LABEL_69:
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v50 = qword_1002294C0;
        *out = _NSConcreteStackBlock;
        *&out[8] = 3221225472;
        *&v119 = sub_1000C8648;
        *(&v119 + 1) = &unk_1001FD3C8;
        *&v120 = a1;
        sub_1001816DC(v50, out);

        sub_1000C8520(val);
        if (!val[25])
        {
          v51 = [NROnDemandLinkSetupManager alloc];
          v52 = val[17];
          v53 = sub_10001A74C(&v51->super.isa, v52);
          v54 = val[25];
          val[25] = v53;

          v55 = val[25];
          if (v55)
          {
            if ((v55[8] & 1) == 0)
            {
              v55[8] = 1;
              v56 = v55 + 20;
              if (*(v55 + 5) == -1)
              {
                objc_initWeak(&location, v55);
                block.receiver = _NSConcreteStackBlock;
                block.super_class = 3221225472;
                v115 = sub_10001C0C4;
                v116 = &unk_1001FD278;
                objc_copyWeak(v117, &location);
                v57 = objc_retainBlock(&block);
                v58 = *(v55 + 4);
                v59 = notify_register_dispatch("com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State", v55 + 5, v58, v57);

                if (v59)
                {
                  *v56 = -1;
                  if (qword_100228EC8 != -1)
                  {
                    dispatch_once(&qword_100228EC8, &stru_1001FA448);
                  }

                  v60 = qword_100228EC0;
                  v61 = _NRLogIsLevelEnabled();

                  if (v61)
                  {
                    if (qword_100228EC8 != -1)
                    {
                      dispatch_once(&qword_100228EC8, &stru_1001FA448);
                    }

                    v62 = qword_100228EC0;
                    _NRLogWithArgs(v62, 17, "notify_register_check(%s) failed: %u", "com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State", v59);
                  }
                }

                else
                {
                  (v57[1].receiver)(v57, *v56);
                }

                objc_destroyWeak(v117);
                objc_destroyWeak(&location);
              }

              objc_initWeak(&location, v55);
              v63 = *(v55 + 4);
              block.receiver = _NSConcreteStackBlock;
              block.super_class = 3221225472;
              v115 = sub_10001A8F8;
              v116 = &unk_1001FC730;
              v64 = v63;
              objc_copyWeak(v117, &location);
              dispatch_async(v64, &block);

              objc_destroyWeak(v117);
              objc_destroyWeak(&location);
            }
          }
        }

        goto LABEL_92;
      }

      v27 = [NRLinkManagerBluetooth alloc];
      v28 = a1[17];
      v29 = a1;
      if (!v27)
      {
        goto LABEL_140;
      }

      if (v28)
      {
        dispatch_assert_queue_V2(v28);
        block.receiver = v27;
        block.super_class = NRLinkManagerBluetooth;
        v30 = objc_msgSendSuper2(&block, "initManagerWithQueue:managerDelegate:", v28, v29);
        v31 = v30;
        if (v30)
        {
          v30[37] = 1;
          v30[8] = 1;
          *(v30 + 3) = 1001;
          v32 = objc_alloc_init(NSMutableSet);
          v33 = *(v31 + 40);
          *(v31 + 40) = v32;

          [v31 reportEvent:2001];
          sub_10003192C(v31);
          [v31 reportEvent:2002];
          *(v31 + 12) = 1003;
          v34 = [[NSMutableDictionary alloc] initWithCapacity:3];
          v35 = *(v31 + 88);
          *(v31 + 88) = v34;

          v36 = [[NSMutableDictionary alloc] initWithCapacity:3];
          v37 = *(v31 + 96);
          *(v31 + 96) = v36;

          v38 = objc_alloc_init(NSMutableDictionary);
          v39 = *(v31 + 112);
          *(v31 + 112) = v38;

          v40 = objc_alloc_init(NSMutableDictionary);
          v41 = *(v31 + 120);
          *(v31 + 120) = v40;

          v42 = objc_alloc_init(NSMutableDictionary);
          v43 = *(v31 + 176);
          *(v31 + 176) = v42;

          objc_storeWeak((v31 + 128), v29);
          v44 = objc_alloc_init(NSMutableSet);
          v45 = *(v31 + 184);
          *(v31 + 184) = v44;

          v46 = objc_alloc_init(NSMutableDictionary);
          v47 = *(v31 + 192);
          *(v31 + 192) = v46;

          v27 = v31;
          v48 = v27;
        }

        else
        {
          v108 = sub_10002D6B4();
          v109 = _NRLogIsLevelEnabled();

          if (v109)
          {
            v110 = sub_10002D6B4();
            _NRLogWithArgs(v110, 17, "[NRLinkManager initManagerWithQueue:] failed");
          }

          v27 = 0;
          v48 = 0;
        }

        goto LABEL_67;
      }

      v105 = sub_10002D6B4();
      v106 = _NRLogIsLevelEnabled();

      if (v106)
      {
        v107 = sub_10002D6B4();
        _NRLogWithArgs(v107, 17, "%s called with null queue", "[NRLinkManagerBluetooth initManagerWithQueue:managerDelegate:bluetoothManagerDelegate:]");

        v48 = 0;
      }

      else
      {
LABEL_140:
        v48 = 0;
      }

LABEL_67:

      v49 = v29[5];
      v29[5] = v48;

      goto LABEL_68;
    }
  }

  *(val + 8) = 1;
  objc_storeStrong(val + 10, v24);
  objc_storeStrong(val + 9, v23);
  objc_storeStrong(val + 11, v22);
  v25 = sub_10016C8BC(NRDLocalDevice);
  if ([v25 count])
  {
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v26 = qword_1002294C0;
    block.receiver = _NSConcreteStackBlock;
    block.super_class = 3221225472;
    v115 = sub_1000C84A8;
    v116 = &unk_1001FD3C8;
    v117[0] = val;
    sub_1001816DC(v26, &block);

    sub_1000C8520(val);
  }

  else
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Fixed interface mode cannot be started as there are no enabled devices", "", "[NRLinkDirector setupManagers]", 477);
    }
  }

LABEL_92:
  if (_NRIsAppleInternal())
  {
    objc_initWeak(out, val);
    block.receiver = _NSConcreteStackBlock;
    block.super_class = 3221225472;
    v115 = sub_1000C8348;
    v116 = &unk_1001FB5D8;
    objc_copyWeak(v117, out);
    v65 = objc_retainBlock(&block);
    v66 = +[NSDistributedNotificationCenter defaultCenter];
    v67 = [v66 addObserverForName:@"NanoSettingsPerpetualMeadowStandaloneWifiPreferencesChangedNotification" object:0 queue:0 usingBlock:v65];
    v68 = val[37];
    val[37] = v67;

    v69 = +[NSDistributedNotificationCenter defaultCenter];
    v70 = [v69 addObserverForName:@"NanoSettingsPerpetualMeadowStandaloneCellularPreferencesChangedNotification" object:0 queue:0 usingBlock:v65];
    v71 = val[38];
    val[38] = v70;

    objc_destroyWeak(v117);
    objc_destroyWeak(out);
  }

  objc_opt_self();
  v72 = objc_opt_self();
  v73 = sub_100003490();
  dispatch_assert_queue_V2(v73);

  sub_1001619D8(v72);
  v74 = objc_alloc_init(NSMutableArray);
  *out = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v75 = qword_100229428;
  v76 = [v75 countByEnumeratingWithState:out objects:&block count:16];
  if (v76)
  {
    v77 = *v119;
    do
    {
      for (i = 0; i != v76; i = i + 1)
      {
        if (*v119 != v77)
        {
          objc_enumerationMutation(v75);
        }

        v79 = *(*&out[8] + 8 * i);
        v80 = [qword_100229428 objectForKeyedSubscript:v79];
        v81 = v80;
        if (v80 && (*(v80 + 48) & 1) != 0)
        {
          [v74 addObject:v79];
        }
      }

      v76 = [v75 countByEnumeratingWithState:out objects:&block count:16];
    }

    while (v76);
  }

  if (![v74 count])
  {
    goto LABEL_130;
  }

  v82 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  sub_10013E868(v82);
  v120 = 0u;
  v121 = 0u;
  *out = 0u;
  v119 = 0u;
  v83 = v74;
  v84 = [v83 countByEnumeratingWithState:out objects:&block count:16];
  if (!v84)
  {

    goto LABEL_129;
  }

  v112 = 0;
  v85 = *v119;
  do
  {
    for (j = 0; j != v84; j = j + 1)
    {
      if (*v119 != v85)
      {
        objc_enumerationMutation(v83);
      }

      v87 = sub_100163A30(NRDLocalDevice, *(*&out[8] + 8 * j));
      v88 = v87;
      if (v87 && (*(v87 + 48) & 1) != 0 && *(v87 + 32))
      {
        v89 = *(v87 + 144);
        if (!v89)
        {
          if (!v82)
          {
            goto LABEL_124;
          }

          v94 = *(v88 + 24);
          v95 = [v88 description];
          sub_1000059A8(v94, 5011, v95, 0);

          [v88 setOperationalProp:v82];
          goto LABEL_123;
        }

        v90 = [v89 allowedLinkTypes];
        v91 = [v82 allowedLinkTypes];
        v92 = [v90 isEqualToArray:v91];

        if (v92)
        {
          v93 = sub_1000B794C() ? [*(v88 + 144) usesTLS] : 0;
          [v82 setUsesTLS:v93];
          v96 = [v82 usesTLS];
          v97 = [*(v88 + 144) usesTLS];
          if (([*(v88 + 144) isEqual:v82] & 1) == 0)
          {
            sub_1001694E4(v88, 5012, @"old: %@ new: %@", v98, v99, v100, v101, v102, *(v88 + 144));
            [*(v88 + 144) mergeProperties:v82];
            *(v88 + 15) = 0;
            if (v96 != v97)
            {
              sub_100169594(v88);
            }

LABEL_123:
            v112 = 1;
          }
        }
      }

LABEL_124:
    }

    v84 = [v83 countByEnumeratingWithState:out objects:&block count:16];
  }

  while (v84);

  if (v112)
  {
    sub_1001629FC(NRDLocalDevice, 1);
  }

LABEL_129:

LABEL_130:
  sub_1000BC670(val);

  sub_1000059A8(0, 1002, 0, 0);
}

void sub_1000BBD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BBDC0(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 13))
  {
    *(a1 + 13) = 0;
    sub_1000059A8(0, 1003, 0, 0);
    *(a1 + 10) = 0;
    [*(a1 + 40) cancel];
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;

    v4 = *(a1 + 56);
    if (v4)
    {
      [v4 cancel];
      v5 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      [v6 cancel];
      v7 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 192);
    if (v8)
    {
      [v8 cancel];
      v9 = *(a1 + 192);
      *(a1 + 192) = 0;
    }

    v10 = *(a1 + 200);
    if (v10)
    {
      if ((*(v10 + 9) & 1) == 0)
      {
        *(v10 + 9) = 1;
        v11 = *(v10 + 48);
        if (v11)
        {
          [v11 invalidate];
          v12 = *(v10 + 48);
          *(v10 + 48) = 0;
        }

        sub_10001A1FC(v10);
        v10 = *(a1 + 200);
      }

      *(a1 + 200) = 0;
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      [v13 cancel];
      v14 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    sub_1000BC1B0(a1);
    sub_1000BC35C(a1);
    v15 = *(a1 + 216);
    if (v15)
    {
      sub_100185548(v15);
      v16 = *(a1 + 216);
      *(a1 + 216) = 0;
    }

    v17 = *(a1 + 96);
    if (v17)
    {
      sub_100073EC0(v17);
      v18 = *(a1 + 96);
      *(a1 + 96) = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = *(a1 + 224);
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
          sub_100113628(v24);
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [*(a1 + 224) removeAllObjects];
    sub_1000BC44C(a1);
    sub_1000BC590(a1);
    v25 = *(a1 + 288);
    if (v25)
    {
      dispatch_source_cancel(v25);
      v26 = *(a1 + 288);
      *(a1 + 288) = 0;
    }

    v27 = +[NSDistributedNotificationCenter defaultCenter];
    [v27 removeObserver:*(a1 + 296) name:@"NanoSettingsPerpetualMeadowStandaloneWifiPreferencesChangedNotification" object:0];

    v28 = +[NSDistributedNotificationCenter defaultCenter];
    [v28 removeObserver:*(a1 + 304) name:@"NanoSettingsPerpetualMeadowStandaloneCellularPreferencesChangedNotification" object:0];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v29 = qword_100229408;
    sub_10015A238(v29, @"NRLinkDirector-Drop");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    sub_10015A52C(v30);
  }

  else
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d Skipping cancel as director is already disabled", "", "[NRLinkDirector cancelDirector]", 352);
    }
  }
}

void sub_1000BC1B0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 176);
      *(a1 + 176) = 0;
    }

    if (*(a1 + 144))
    {
      nw_shoes_server_cancel();
      v4 = *(a1 + 144);
      *(a1 + 144) = 0;

      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d socksServer cancelled", "", "[NRLinkDirector cancelSocksServer]", 2049);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v5 = qword_100229408;
      sub_10015A238(v5, @"NRLinkDirector-skip-privacy-proxy");

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v6 = qword_100229408;
      sub_10015A52C(v6);
    }
  }
}

void sub_1000BC35C(uint64_t a1)
{
  if (*(a1 + 152))
  {
    nw_masque_server_cancel();
    v2 = *(a1 + 152);
    *(a1 + 152) = 0;

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d MASQUE server cancelled", "", "[NRLinkDirector cancelMASQUEProxyServer]", 2415);
    }
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
}

uint64_t sub_1000BC44C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 224);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
        v6 = sub_100114094(v9) + v6;

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000BC590(uint64_t result)
{
  if (*(result + 28) != -1)
  {
    v1 = result;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d unregistering thermal pressure level watcher", "", "[NRLinkDirector removeThermalStateWatcher]", 3233);
    }

    result = notify_cancel(*(v1 + 28));
    *(v1 + 28) = -1;
  }

  return result;
}

void sub_1000BC670(char *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[13])
  {
    if (a1[12] == 1)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d Ignoring enabled device check since director has pending companion APL update");
      }

      return;
    }

    v2 = sub_10016C8BC(NRDLocalDevice);
    val = a1;
    v3 = *(a1 + 25);
    if (v3)
    {
      v302 = sub_10001A324(*(a1 + 25));
      if ([v302 count])
      {
        v4 = sub_100003490();
        block = _NSConcreteStackBlock;
        v375 = 3221225472;
        v376 = sub_10001C338;
        v377 = &unk_1001FD3C8;
        v378 = v3;
        dispatch_async(v4, &block);
      }

      if ([v302 count])
      {
        v5 = [[NSMutableArray alloc] initWithArray:v2];
        [v5 removeObjectsInArray:v302];

        v2 = v5;
      }
    }

    else
    {
      v302 = 0;
    }

    _NRUpdateNRUUIDsEligibleForLogObjects();
    *location = 0u;
    v363 = 0u;
    v364 = 0u;
    v365 = 0u;
    obj = v2;
    v6 = [obj countByEnumeratingWithState:location objects:&block count:16];
    if (v6)
    {
      v7 = *v363;
LABEL_24:
      v8 = 0;
      while (1)
      {
        if (*v363 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = sub_100163A30(NRDLocalDevice, *(location[1] + v8));
        v10 = v9;
        if (!v9 || (*(v9 + 48) & 2) == 0)
        {
          goto LABEL_33;
        }

        v11 = *(v9 + 144);
        if ([v11 proxyCapability] == 2)
        {
        }

        else
        {
          v12 = v10[18];
          v13 = [v12 proxyCapability] == 1;

          if (!v13)
          {
            goto LABEL_33;
          }
        }

        v14 = v10[18];
        v15 = [v14 usesTLS];

        if (v15)
        {
          v16 = v10[18];
          v17 = [v16 proxyCapability];

          if (*(val + 43))
          {
            goto LABEL_81;
          }

          *&v358 = kSecAttrKeyType;
          *(&v358 + 1) = kSecAttrKeySizeInBits;
          *&v366 = kSecAttrKeyTypeECSECPrimeRandom;
          *(&v366 + 1) = &off_100209C08;
          v18 = [NSDictionary dictionaryWithObjects:&v366 forKeys:&v358 count:2];
          RandomKey = SecKeyCreateRandomKey(v18, 0);
          v20 = SecKeyCopyPublicKey(RandomKey);
          v21 = NRCreateLocalIdentity();
          v22 = *(val + 43);
          *(val + 43) = v21;

          v23 = *(val + 43);
          if (v23)
          {
            v24 = sec_identity_copy_ref(v23);
            if (v24)
            {
              if (v17 != 2)
              {
                goto LABEL_373;
              }

              objc_opt_self();
              if (qword_1002294C8 != -1)
              {
                dispatch_once(&qword_1002294C8, &stru_1001FD250);
              }

              v25 = qword_1002294C0;
              v26 = v25;
              if (v25)
              {
                dispatch_assert_queue_V2(v25[2]);
                if (qword_1002294D8 != -1)
                {
                  dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002294D8 != -1)
                  {
                    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                  }

                  _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Adding local identity %@", "", "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]", 382, @"local-identity");
                }

                *&v370 = kSecClass;
                *(&v370 + 1) = kSecAttrLabel;
                from = kSecClassIdentity;
                v353 = @"local-identity";
                v371 = __PAIR128__(kSecAttrAccessible, kSecAttrAccessGroup);
                v354 = @"com.apple.terminusd.local-identity";
                v355 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
                *&v372 = kSecValueRef;
                *(&v372 + 1) = kSecReturnPersistentRef;
                v356 = v24;
                v357 = &__kCFBooleanTrue;
                v27 = [NSDictionary dictionaryWithObjects:&from forKeys:&v370 count:6];
                result[0] = 0;
                v28 = SecItemAdd(v27, result);
                if (v28 == -25299 || !result[0])
                {
                  sub_100181D24(v26);
                  result[0] = 0;
                  v28 = SecItemAdd(v27, result);
                }

                if (v28)
                {
                  if (v28 == -25308)
                  {
                    if (qword_1002294D8 != -1)
                    {
                      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_1002294D8 != -1)
                      {
                        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                      }

                      _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to add local identity: keychain locked", "", "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]", 417);
                    }
                  }

                  else
                  {
                    if (qword_1002294D8 != -1)
                    {
                      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_1002294D8 != -1)
                      {
                        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                      }

                      _NRLogWithArgs(qword_1002294D0, 17, "Failed to add local identity: %d", v28);
                    }
                  }
                }

                else
                {
                  if (qword_1002294D8 != -1)
                  {
                    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002294D8 != -1)
                    {
                      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
                    }

                    _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully added local identity %@", "", "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]", 408, result[0]);
                  }

                  if (result[0])
                  {
                    v267 = CFGetTypeID(result[0]);
                    if (v267 == CFDataGetTypeID())
                    {
                      v268 = *(val + 15);
                      *(val + 15) = result[0];
                    }
                  }
                }
              }

              if (*(val + 15))
              {
                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  v269 = sub_1000B9544();
                  v300 = "";
                  _NRLogWithArgs(v269, 0, "%s%.30s:%-4d Successfully added identity to keychain %@");
                }

LABEL_373:
                v270 = SecKeyCopySubjectPublicKeyInfo();
                v271 = *(val + 13);
                *(val + 13) = v270;

                if ([*(val + 13) length])
                {
                  notify_post("com.apple.private.restrict-post.networkrelay.referencesChanged");
                  if (qword_1002290F0 != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002290F0 != -1)
                    {
                      dispatch_once(&qword_1002290F0, &stru_1001FB680);
                    }

                    v272 = qword_1002290E8;
                    v273 = *(val + 13);
                    v274 = v272;
                    LogString = _NRKeyCreateLogString();
                    v300 = "";
                    _NRLogWithArgs(v274, 0, "%s%.30s:%-4d generated local identity SPKI: %@");
                  }

                  goto LABEL_74;
                }

                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  v275 = sub_1000B9544();
                  _NRLogWithArgs(v275, 17, "SecKeyCopySubjectPublicKeyInfo failed");
                }
              }

              else
              {
                v276 = sub_1000B9544();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v278 = sub_1000B9544();
                  v300 = "";
                  _NRLogWithArgs(v278, 16, "%s%.30s:%-4d Failed to add identity to keychain %@");
                }
              }

LABEL_73:
              notify_post("com.apple.private.restrict-post.networkrelay.referencesChanged");
              sub_1000C826C(val);
LABEL_74:
              if (v20)
              {
                CFRelease(v20);
              }

              if (RandomKey)
              {
                CFRelease(RandomKey);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              goto LABEL_81;
            }

            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              _NRLogWithArgs(qword_1002290E8, 17, "sec_identity_copy_ref failed");
            }
          }

          else
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              _NRLogWithArgs(qword_1002290E8, 17, "Failed to create local identity");
            }
          }

          v24 = 0;
          goto LABEL_73;
        }

LABEL_33:

        if (v6 == ++v8)
        {
          v6 = [obj countByEnumeratingWithState:location objects:&block count:16];
          if (v6)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }

    sub_1000C826C(val);
LABEL_81:

    v29 = val;
    v30 = *(val + 5);
    if (v30)
    {
      sub_1000315B8(v30);
    }

    v31 = *(val + 6);
    if (v31)
    {
      sub_100180590(v31);
    }

    v32 = *(val + 7);
    if (v32)
    {
      sub_100122A9C(v32);
    }

    v33 = *(val + 8);
    if (v33)
    {
      v34 = *(v33 + 24);
      dispatch_assert_queue_V2(v34);

      v35 = v33;
      v36 = [*(v33 + 40) copy];
      v370 = 0u;
      v371 = 0u;
      v372 = 0u;
      v373 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v370 objects:&block count:16];
      if (v38)
      {
        v39 = *v371;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v371 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v370 + 1) + 8 * i);
            v42 = [v41 nrUUID];
            v43 = sub_100163A30(NRDLocalDevice, v42);

            if (!v43 || (v43[48] & 2) == 0)
            {
              [v41 cancelWithReason:{@"Device has been disabled %@", v43}];
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v370 objects:&block count:16];
        }

        while (v38);
      }

      v44 = [*(v35 + 88) allKeys];
      v369 = 0u;
      v368 = 0u;
      v367 = 0u;
      v366 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v366 objects:location count:16];
      if (v46)
      {
        v47 = *v367;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v367 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v366 + 1) + 8 * j);
            v50 = sub_100163A30(NRDLocalDevice, v49);
            v51 = v50;
            if (!v50 || (*(v50 + 48) & 2) == 0)
            {
              [*(v35 + 88) setObject:0 forKeyedSubscript:v49];
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v366 objects:location count:16];
        }

        while (v46);
      }

      v52 = sub_10016C8BC(NRDLocalDevice);
      v361 = 0u;
      v360 = 0u;
      v359 = 0u;
      v358 = 0u;
      v53 = v52;
      v313 = [v53 countByEnumeratingWithState:&v358 objects:&from count:16];
      if (v313)
      {
        v311 = *v359;
        while (2)
        {
          for (k = 0; k != v313; k = k + 1)
          {
            if (*v359 != v311)
            {
              objc_enumerationMutation(v53);
            }

            v55 = sub_100163A30(NRDLocalDevice, *(*(&v358 + 1) + 8 * k));
            v56 = v55;
            if (v55)
            {
              if ((*(v55 + 48) & 8) != 0)
              {
                v57 = *(v55 + 144);
                v58 = [v57 allowedLinkTypes];
                v59 = [v58 containsObject:&off_100209C20];

                if (v59)
                {

                  v61 = *(v35 + 24);
                  if (qword_1002292A0 != -1)
                  {
                    dispatch_once(&qword_1002292A0, &stru_1001FC470);
                  }

                  v62 = qword_1002292A8;
                  result[0] = _NSConcreteStackBlock;
                  result[1] = 3221225472;
                  result[2] = sub_1000E7304;
                  result[3] = &unk_1001FD088;
                  v343 = v61;
                  v344 = v53;
                  v345 = v35;
                  v60 = v61;
                  dispatch_async(v62, result);

                  goto LABEL_122;
                }
              }
            }
          }

          v313 = [v53 countByEnumeratingWithState:&v358 objects:&from count:16];
          if (v313)
          {
            continue;
          }

          break;
        }
      }

      v60 = *(v35 + 96);
      *(v35 + 96) = 0;
LABEL_122:

      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229120 != -1)
        {
          dispatch_once(&qword_100229120, &stru_1001FB968);
        }

        _NRLogWithArgs(qword_100229118, 1, "%s%.30s:%-4d Forcing interface availability event to check for new enabled devices", "", "[NRLinkManagerWired checkEnabledDevices]", 833);
      }

      sub_1000E710C(v35);

      v29 = val;
    }

    if (v29[17] == 1)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Not starting conductors as AOVPN is configured %@", "", "[NRLinkDirector checkEnabledDevices]", 840, obj);
      }

      v63 = objc_alloc_init(NSArray);

      obj = v63;
    }

    v64 = objc_alloc_init(NSMutableArray);
    v338 = 0u;
    v339 = 0u;
    v340 = 0u;
    v341 = 0u;
    v65 = *(v29 + 28);
    v66 = [v65 countByEnumeratingWithState:&v338 objects:v351 count:16];
    if (v66)
    {
      v67 = *v339;
      do
      {
        for (m = 0; m != v66; m = m + 1)
        {
          if (*v339 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v338 + 1) + 8 * m);
          if (([obj containsObject:v69] & 1) == 0)
          {
            [v64 addObject:v69];
          }
        }

        v66 = [v65 countByEnumeratingWithState:&v338 objects:v351 count:16];
      }

      while (v66);
    }

    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v314 = v64;
    v70 = [v314 countByEnumeratingWithState:&v334 objects:v350 count:16];
    if (v70)
    {
      v71 = *v335;
      do
      {
        for (n = 0; n != v70; n = n + 1)
        {
          if (*v335 != v71)
          {
            objc_enumerationMutation(v314);
          }

          v73 = *(*(&v334 + 1) + 8 * n);
          v74 = [*(val + 28) objectForKeyedSubscript:v73];
          sub_100113628(v74);

          [*(val + 28) setObject:0 forKeyedSubscript:v73];
        }

        v70 = [v314 countByEnumeratingWithState:&v334 objects:v350 count:16];
      }

      while (v70);
    }

    if ([obj count] && qword_1002290D0 != -1)
    {
      dispatch_once(&qword_1002290D0, &stru_1001FB348);
    }

    v332 = 0u;
    v333 = 0u;
    v330 = 0u;
    v331 = 0u;
    v308 = obj;
    v312 = [v308 countByEnumeratingWithState:&v330 objects:v349 count:16];
    if (v312)
    {
      v310 = *v331;
      do
      {
        v75 = 0;
        do
        {
          if (*v331 != v310)
          {
            v76 = v75;
            objc_enumerationMutation(v308);
            v75 = v76;
          }

          obja = v75;
          v77 = *(*(&v330 + 1) + 8 * v75);
          v78 = [*(val + 28) objectForKeyedSubscript:v77];
          v79 = v78 == 0;

          if (!v79)
          {
            v80 = [*(val + 28) objectForKeyedSubscript:v77];
            sub_1000F4104(v80);
            goto LABEL_244;
          }

          v80 = sub_100110920([NRDDeviceConductor alloc], v77, *(val + 17));
          v81 = [*(val + 29) copy];
          v328 = 0u;
          v329 = 0u;
          v326 = 0u;
          v327 = 0u;
          v82 = v81;
          v83 = [v82 countByEnumeratingWithState:&v326 objects:v348 count:16];
          if (!v83)
          {
            goto LABEL_176;
          }

          v84 = *v327;
          do
          {
            for (ii = 0; ii != v83; ii = ii + 1)
            {
              if (*v327 != v84)
              {
                objc_enumerationMutation(v82);
              }

              v86 = *(*(&v326 + 1) + 8 * ii);
              if (v86)
              {
                if (![*(v86 + 8) isEqual:v77])
                {
                  continue;
                }

                v87 = *(v86 + 16);
                goto LABEL_172;
              }

              if ([0 isEqual:v77])
              {
                v87 = 0;
LABEL_172:
                sub_1001143D0(v80, v87);
                [*(val + 29) removeObject:v86];
                v88 = [v86 description];
                sub_1000059A8(0, 1016, 0, v88);

                continue;
              }
            }

            v83 = [v82 countByEnumeratingWithState:&v326 objects:v348 count:16];
          }

          while (v83);
LABEL_176:

          v89 = [*(val + 30) copy];
          v324 = 0u;
          v325 = 0u;
          v322 = 0u;
          v323 = 0u;
          v90 = v89;
          v91 = [v90 countByEnumeratingWithState:&v322 objects:v347 count:16];
          if (v91)
          {
            v92 = *v323;
            do
            {
              for (jj = 0; jj != v91; jj = jj + 1)
              {
                if (*v323 != v92)
                {
                  objc_enumerationMutation(v90);
                }

                v94 = *(*(&v322 + 1) + 8 * jj);
                if (v94)
                {
                  v95 = v94[1];
                }

                else
                {
                  v95 = 0;
                }

                if ([v95 isEqual:v77])
                {
                  [*(val + 30) removeObject:v94];
                  v96 = [v94 description];
                  sub_1000059A8(0, 1023, 0, v96);

                  if (v94)
                  {
                    v97 = v94[2];
                  }

                  else
                  {
                    v97 = 0;
                  }

                  xpc_connection_cancel(v97);
                }
              }

              v91 = [v90 countByEnumeratingWithState:&v322 objects:v347 count:16];
            }

            while (v91);
          }

          if (!v80)
          {
            goto LABEL_243;
          }

          dispatch_assert_queue_V2(*(v80 + 136));
          if (*(v80 + 14) == 1)
          {
            v98 = _NRCopyLogObjectForNRUUID();
            v99 = _NRLogIsLevelEnabled();

            if (v99)
            {
              v100 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v100, 1, "%s%.30s:%-4d Skipping start as conductor is already enabled", "", "[NRDDeviceConductor startConductor]", 592);
              goto LABEL_242;
            }

            goto LABEL_243;
          }

          *(v80 + 14) = 1;
          v101 = [v80 description];
          sub_1000059A8(*(v80 + 96), 1501, 0, v101);

          sub_100111C10(v80);
          sub_100111330(v80);
          sub_10010E27C(v80);
          v102 = [NRDevicePreferencesManager alloc];
          v103 = *(v80 + 136);
          v104 = *(v80 + 96);
          v105 = v103;
          v106 = sub_100148B58(&v102->super.isa, v105, v104);
          v107 = *(v80 + 216);
          *(v80 + 216) = v106;

          sub_10010FE38(v80);
          v100 = sub_1000B7248(*(v80 + 96), @"WiFiEndpointAddressData");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v108 = +[NWAddressEndpoint endpointWithAddress:](NWAddressEndpoint, "endpointWithAddress:", [v100 bytes]);
            v109 = v108;
            if (*(v80 + 45) == 1)
            {
              objc_storeStrong((v80 + 168), v108);
              v110 = _NRCopyLogObjectForNRUUID();
              v111 = _NRLogIsLevelEnabled();

              if (v111)
              {
                v112 = *(v80 + 96);
                v113 = _NRCopyLogObjectForNRUUID();
                v300 = "";
                _NRLogWithArgs(v113, 1, "%s%.30s:%-4d Fetched last sent endpoint as %@");
              }
            }

            else
            {
              v114 = *(v80 + 136);
              block = _NSConcreteStackBlock;
              v375 = 3221225472;
              v376 = sub_10011207C;
              v377 = &unk_1001FD060;
              v378 = v80;
              v379 = v108;
              dispatch_async(v114, &block);
            }
          }

          v115 = *(v80 + 96);
          v309 = sub_1000B7248(v115, @"WiFiSignature");

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (*(v80 + 45) == 1)
            {
              objc_storeStrong((v80 + 176), v309);
            }

            else
            {
              v116 = *(v80 + 136);
              location[0] = _NSConcreteStackBlock;
              location[1] = 3221225472;
              *&v363 = sub_100112154;
              *(&v363 + 1) = &unk_1001FD060;
              *&v364 = v80;
              *(&v364 + 1) = v309;
              dispatch_async(v116, location);
            }
          }

          if (_NRIsAppleInternal())
          {
            v117 = sub_1000B7248(*(v80 + 96), @"DisableRangeExtension");
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v117 BOOLValue])
            {
              *(v80 + 23) = 1;
            }

            v118 = sub_1000B7248(*(v80 + 96), @"DisablePreferWiFi");
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v118 BOOLValue])
            {
              *(v80 + 24) = 1;
            }
          }

          sub_10010D154(v80);
          if (*(v80 + 56) == 1)
          {
            v119 = [NRQuickRelayAgent alloc];
            v120 = *(v80 + 96);
            v121 = *(v80 + 136);
            v122 = v120;
            v123 = sub_10003F294(&v119->super.isa, v122, v121, v80);
            v124 = *(v80 + 224);
            *(v80 + 224) = v123;

            v125 = *(v80 + 224);
            if (v125)
            {
              dispatch_assert_queue_V2(*(v125 + 48));
              if ((*(v125 + 14) & 1) == 0)
              {
                v126 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                v127 = *(v125 + 56);
                *(v125 + 56) = v126;

                v128 = *(v125 + 56);
                if (v128)
                {
                  if ([v128 registerNetworkAgent:v125])
                  {
                    v129 = [v125 agentUUID];
                    v130 = [NEPolicyResult netAgentUUID:v129];

                    v131 = *(v125 + 40);
                    v132 = nrCopyAccountIdentifierForNRUUID();
                    *(&v305 + 1) = [NEPolicyCondition accountIdentifier:v132];

                    v133 = +[NRQuickRelayAgent agentDomain];
                    v134 = +[NRQuickRelayAgent agentType];
                    *&v305 = [NEPolicyCondition requiredAgentDomain:v133 agentType:v134];

                    v135 = [NEPolicy alloc];
                    v370 = v305;
                    v136 = +[NEPolicyCondition allInterfaces];
                    *&v371 = v136;
                    v137 = [NSArray arrayWithObjects:&v370 count:3];
                    v304 = [v135 initWithOrder:10 result:v130 conditions:v137];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v138 = qword_100229408;
                    v139 = sub_100159E00(v138, *(v125 + 72), v304);

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v140 = qword_100229408;
                    sub_10015A52C(v140);

                    *(v125 + 14) = 1;
                    v141 = v130;
                    v142 = *(v125 + 40);
                    v143 = *(v125 + 80);
                    v144 = v142;
                    v145 = v141;
                    v303 = v144;
                    v146 = [v125 agentUUID];
                    v147 = [v146 UUIDString];
                    sub_1000059A8(v303, 17002, v143, v147);

                    sub_10003F8D8(v125);
LABEL_225:
                  }

                  else
                  {
                    v148 = _NRCopyLogObjectForNRUUID();
                    v149 = _NRLogIsLevelEnabled();

                    if (v149)
                    {
                      v145 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs(v145, 17, "Failed to register QuickRelay network agent");
                      goto LABEL_225;
                    }
                  }
                }
              }
            }
          }

          if (*(v80 + 55) == 1)
          {
            v150 = [NRBTLinkPreferencesAgent alloc];
            v151 = *(v80 + 96);
            v152 = *(v80 + 136);
            v153 = v151;
            v154 = sub_10007850C(&v150->super.isa, v153, v152, v80);
            v155 = *(v80 + 232);
            *(v80 + 232) = v154;

            v156 = *(v80 + 232);
            if (v156)
            {
              if ((*(v156 + 14) & 1) == 0)
              {
                v157 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                v158 = *(v156 + 56);
                *(v156 + 56) = v157;

                v162 = *(v156 + 56);
                if (!v162)
                {
                  sub_10013C2A8(@"NRBTLinkPreferenceAgent", @"RegisterAgent", @"Create Failed", 1, @"Failed to create BTLinkPreferences network agent", v159, v160, v161, v300);
                  v162 = *(v156 + 56);
                }

                if (([v162 registerNetworkAgent:v156] & 1) == 0)
                {
                  sub_10013C2A8(@"NRBTLinkPreferenceAgent", @"RegisterAgent", @"Register Failed", 1, @"Failed to register BTLinkPreferences network agent", v163, v164, v165, v300);
                }

                [v156 setActive:1];
                [*(v156 + 56) updateNetworkAgent:v156];
                v166 = [NEPolicyRouteRule routeRuleWithAction:5 forType:6];
                v167 = [v156 agentUUID];
                [v166 setNetworkAgentUUID:v167];

                *&v366 = v166;
                v168 = [NSArray arrayWithObjects:&v366 count:1];
                v307 = [NEPolicyResult routeRules:v168];

                v169 = +[NRBTLinkPreferencesAgent agentDomain];
                v170 = +[NRBTLinkPreferencesAgent agentType];
                v306 = [NEPolicyCondition requiredAgentDomain:v169 agentType:v170];

                v171 = [NEPolicy alloc];
                *&v370 = v306;
                v172 = +[NEPolicyCondition allInterfaces];
                *(&v370 + 1) = v172;
                v173 = [NSArray arrayWithObjects:&v370 count:2];
                v174 = [v171 initWithOrder:10 result:v307 conditions:v173];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v175 = qword_100229408;
                v176 = sub_100159E00(v175, *(v156 + 72), v174);

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v177 = qword_100229408;
                sub_10015A52C(v177);

                *(v156 + 14) = 1;
                v178 = *(v156 + 40);
                v179 = [v156 agentUUID];
                v180 = [v179 UUIDString];
                sub_1000059A8(v178, 18002, 0, v180);
              }
            }
          }

          sub_100104434(v80);
          if (*(v80 + 46) == 1 && sub_10013CA2C())
          {
            sub_1000059A8(*(v80 + 96), 1036, 0, 0);
          }

          v181 = *(v80 + 136);
          from = _NSConcreteStackBlock;
          v353 = 3221225472;
          v354 = sub_10011222C;
          v355 = &unk_1001FD3C8;
          v356 = v80;
          dispatch_async(v181, &from);

LABEL_242:
LABEL_243:
          [*(val + 28) setObject:v80 forKeyedSubscript:v77];
          sub_1000BF70C(val);

LABEL_244:
          v75 = obja + 1;
        }

        while (obja + 1 != v312);
        v312 = [v308 countByEnumeratingWithState:&v330 objects:v349 count:16];
      }

      while (v312);
    }

    if (![v308 count])
    {
      v200 = val;
      v201 = *(val + 27);
      if (v201)
      {
        sub_100185548(v201);
        v202 = *(val + 27);
        *(val + 27) = 0;

        v200 = val;
      }

      v203 = *(v200 + 96);
      if (v203)
      {
        sub_100073EC0(v203);
        v204 = *(val + 12);
        *(val + 12) = 0;

        v200 = val;
      }

      sub_1000BC1B0(v200);
      sub_1000BC35C(val);
      sub_1000C2248(val);
      sub_1000BC590(val);
      v205 = val;
      if (*(val + 39))
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v206 = *(val + 39);
          v207 = qword_1002290E8;
          _NRLogWithArgs(v207, 0, "%s%.30s:%-4d removing path evaluator for appVPN %@", "", "[NRLinkDirector removeVPNWatcher]", 2829, v206);
        }

        nw_path_evaluator_cancel();
        v208 = *(val + 39);
        *(val + 39) = 0;

        v205 = val;
      }

      v209 = *(v205 + 8);
      if (v209 != -1)
      {
        notify_cancel(v209);
        v205 = val;
        *(val + 8) = -1;
      }

      v210 = *(v205 + 41);
      *(v205 + 41) = 0;

      v211 = *(val + 42);
      *(val + 42) = 0;

      *location = 0u;
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v212 = *(val + 28);
      v213 = [v212 countByEnumeratingWithState:location objects:&block count:16];
      if (v213)
      {
        v214 = *v363;
        do
        {
          for (kk = 0; kk != v213; ++kk)
          {
            if (*v363 != v214)
            {
              objc_enumerationMutation(v212);
            }

            v216 = [*(val + 28) objectForKeyedSubscript:*(location[1] + kk)];
            sub_100114D18(v216, 0);
          }

          v213 = [v212 countByEnumeratingWithState:location objects:&block count:16];
        }

        while (v213);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v217 = qword_100229408;
      sub_10015A238(v217, @"NRLinkDirector-AppVPN");

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v218 = qword_100229408;
      sub_10015A52C(v218);

      v219 = *(val + 40);
      *(val + 40) = 0;

      val[19] = 0;
      v220 = *(val + 36);
      if (v220)
      {
        dispatch_source_cancel(v220);
        v221 = *(val + 36);
        *(val + 36) = 0;
      }

      objc_opt_self();
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v222 = qword_100228E80;
      v223 = v222;
      if (v222)
      {
        v224 = v222[2];
        if (v224)
        {
          [v224 cancel];
          v225 = *(v223 + 16);
          *(v223 + 16) = 0;

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v226 = qword_100229408;
          sub_10015A238(v226, @"NRIKEv2Listener");

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v227 = qword_100229408;
          sub_10015A52C(v227);
        }

        v228 = *(v223 + 24);
        *(v223 + 24) = 0;

        v229 = *(v223 + 32);
        *(v223 + 32) = 0;

        v365 = 0u;
        v364 = 0u;
        v363 = 0u;
        *location = 0u;
        v230 = *(v223 + 48);
        v231 = [v230 countByEnumeratingWithState:location objects:&block count:16];
        if (v231)
        {
          v232 = *v363;
          do
          {
            v233 = 0;
            do
            {
              if (*v363 != v232)
              {
                objc_enumerationMutation(v230);
              }

              v234 = [*(v223 + 48) objectForKeyedSubscript:*(location[1] + v233)];
              v235 = v234;
              if (v234)
              {
                v236 = *(v234 + 40);
              }

              else
              {
                v236 = 0;
              }

              (*(v236 + 16))(v236, 0, 0, 0);

              ++v233;
            }

            while (v231 != v233);
            v237 = [v230 countByEnumeratingWithState:location objects:&block count:16];
            v231 = v237;
          }

          while (v237);
        }

        v238 = *(v223 + 48);
        *(v223 + 48) = 0;

        sub_1000154E8(v223);
      }

      goto LABEL_400;
    }

    sub_1000BFA38(val);
    sub_1000C0360(val);
    sub_1000C0E80(val);
    v320 = 0u;
    v321 = 0u;
    v318 = 0u;
    v319 = 0u;
    v182 = *(val + 28);
    v183 = [v182 countByEnumeratingWithState:&v318 objects:v346 count:16];
    if (v183)
    {
      v184 = 0;
      v185 = 0;
      v186 = *v319;
      do
      {
        for (mm = 0; mm != v183; mm = mm + 1)
        {
          if (*v319 != v186)
          {
            objc_enumerationMutation(v182);
          }

          v188 = *(*(&v318 + 1) + 8 * mm);
          v189 = [*(val + 28) objectForKeyedSubscript:v188];
          if (v189)
          {
            v184 |= v189[9];
          }

          v190 = [*(val + 28) objectForKeyedSubscript:v188];
          if (v190)
          {
            v185 |= v190[8];
          }
        }

        v183 = [v182 countByEnumeratingWithState:&v318 objects:v346 count:16];
      }

      while (v183);

      if (v184)
      {
        v191 = val;
        if (!*(val + 27))
        {
          v192 = [NRPhoneCallRelayAgent alloc];
          v193 = *(val + 17);
          v194 = sub_1001857B8(&v192->super.isa, v193, val);
          v195 = *(val + 27);
          *(val + 27) = v194;

          v199 = *(val + 27);
          if (v199)
          {
            sub_100185A60(v199);
          }

          else
          {
            sub_10013C2A8(@"NRLinkDirector", @"PhoneCallRelayAgent is Nil", 0, 1, @"[[NRPhoneCallRelayAgent alloc] initWithQueue: delegate:]", v196, v197, v198, v300);
          }

LABEL_314:
          v191 = val;
          if (v185)
          {
            goto LABEL_315;
          }

          goto LABEL_321;
        }

        goto LABEL_320;
      }
    }

    else
    {

      v185 = 0;
    }

    v191 = val;
    v239 = *(val + 27);
    if (v239)
    {
      sub_100185548(v239);
      v240 = *(val + 27);
      *(val + 27) = 0;

      goto LABEL_314;
    }

LABEL_320:
    if (v185)
    {
LABEL_315:
      if (!*(v191 + 12))
      {
        v241 = objc_alloc_init(NRPreferWiFiAgent);
        v242 = *(val + 12);
        *(val + 12) = v241;

        v243 = *(val + 17);
        v244 = *(val + 12);
        v245 = v243;
        v246 = v245;
        if (!v244)
        {

          v297 = sub_1000B9544();
          v298 = _NRLogIsLevelEnabled();

          if (v298)
          {
            v299 = sub_1000B9544();
            _NRLogWithArgs(v299, 17, "Failed to register prefer Wi-Fi agent");
          }

          goto LABEL_401;
        }

        if ((*(v244 + 14) & 1) == 0)
        {
          objc_storeStrong(v244 + 5, v243);
          objc_initWeak(location, v244);
          v247 = dispatch_time(0x8000000000000000, 1000000000);
          v248 = v244[5];
          block = _NSConcreteStackBlock;
          v375 = 3221225472;
          v376 = sub_10007376C;
          v377 = &unk_1001FC730;
          v249 = v248;
          objc_copyWeak(&v378, location);
          dispatch_after(v247, v249, &block);

          objc_destroyWeak(&v378);
          objc_destroyWeak(location);
        }

        goto LABEL_323;
      }

      goto LABEL_324;
    }

LABEL_321:
    v250 = *(v191 + 12);
    if (v250)
    {
      sub_100073EC0(v250);
      v244 = *(val + 12);
      *(val + 12) = 0;
LABEL_323:

      v191 = val;
    }

LABEL_324:
    v252 = *(v191 + 7);
    v251 = (v191 + 28);
    if (v252 == -1)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d registering thermal pressure level watcher", "", "[NRLinkDirector setupThermalStateWatcher]", 3169);
      }

      objc_initWeak(&from, val);
      v253 = *(val + 17);
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      *&v363 = sub_1000C5518;
      *(&v363 + 1) = &unk_1001FD278;
      objc_copyWeak(&v364, &from);
      v254 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, v251, v253, location);

      if (v254 || *v251 == -1)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v255 = qword_1002290E8;
        v256 = _NRLogIsLevelEnabled();

        if (v256)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v257 = qword_1002290E8;
          _NRLogWithArgs(v257, 17, "notify_register_dispatch (status: %u, token: %d) failed", v254, *v251);
        }
      }

      else
      {
        v258 = *(val + 17);
        block = _NSConcreteStackBlock;
        v375 = 3221225472;
        v376 = sub_1000C55BC;
        v377 = &unk_1001FD3C8;
        v378 = val;
        dispatch_async(v258, &block);
      }

      objc_destroyWeak(&v364);
      objc_destroyWeak(&from);
    }

    if (sub_1000C1AE0())
    {
      v260 = sub_1000C1AE0();
      v261 = val;
      if (v260 && *(val + 8) == -1)
      {
        LODWORD(from) = -1;
        objc_initWeak(location, val);
        v262 = *(val + 17);
        block = _NSConcreteStackBlock;
        v375 = 3221225472;
        v376 = sub_1000C4EA4;
        v377 = &unk_1001FD278;
        objc_copyWeak(&v378, location);
        v263 = notify_register_dispatch("com.apple.neconfigurationchanged", &from, v262, &block);

        if (v263)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v264 = qword_1002290E8;
          v265 = _NRLogIsLevelEnabled();

          if (v265)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v266 = qword_1002290E8;
            _NRLogWithArgs(v266, 17, "notify_register_dispatch(%s, %d) failed: %u", "com.apple.neconfigurationchanged", from, v263);
          }
        }

        else
        {
          v279 = from;
          *(val + 8) = from;
          sub_1000C4F10(val, v279);
        }

        objc_destroyWeak(&v378);
        objc_destroyWeak(location);
        v261 = val;
      }

      if (*(v261 + 312))
      {
        sub_1000B98D8(v261);
      }

      else
      {
        v280 = nw_parameters_create();
        nw_parameters_set_account_id();
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        nw_path_evaluator_set_queue();
        objc_initWeak(&from, val);
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        *&v363 = sub_1000C49C4;
        *(&v363 + 1) = &unk_1001FB560;
        objc_copyWeak(&v364 + 1, &from);
        v282 = evaluator_for_endpoint;
        *&v364 = v282;
        v283 = objc_retainBlock(location);
        v284 = *(val + 17);
        nw_path_evaluator_set_update_handler();

        nw_path_evaluator_start();
        objc_storeStrong(val + 39, evaluator_for_endpoint);
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v285 = qword_1002290E8;
        v286 = _NRLogIsLevelEnabled();

        if (v286)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v287 = qword_1002290E8;
          v288 = *(val + 39);
          _NRLogWithArgs(v287, 0, "%s%.30s:%-4d registering path evaluator for appVPN %@", "", "[NRLinkDirector setupAppVPNWatcher]", 2816, v288);
        }

        v289 = *(val + 17);
        block = _NSConcreteStackBlock;
        v375 = 3221225472;
        v376 = sub_1000C4D28;
        v377 = &unk_1001FB588;
        v378 = val;
        v379 = v282;
        v380 = v283;
        v290 = v283;
        v291 = v282;
        dispatch_async(v289, &block);

        objc_destroyWeak(&v364 + 1);
        objc_destroyWeak(&from);
      }
    }

    v292 = val;
    if (!*(val + 36))
    {
      v293 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(val + 17));
      dispatch_source_set_timer(v293, 0, 0x29E8D60800uLL, 0x2FAF080uLL);
      objc_initWeak(location, val);
      block = _NSConcreteStackBlock;
      v375 = 3221225472;
      v376 = sub_1000C3F78;
      v377 = &unk_1001FD0D8;
      objc_copyWeak(&v379, location);
      v294 = v293;
      v378 = v294;
      dispatch_source_set_event_handler(v294, &block);
      dispatch_resume(v294);
      v295 = *(val + 36);
      *(val + 36) = v294;
      v296 = v294;

      objc_destroyWeak(&v379);
      objc_destroyWeak(location);
      v292 = val;
    }

    sub_1000C1C7C(v292, v259);
LABEL_400:
    sub_1000C2318(v308);
LABEL_401:

    return;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d Ignoring enabled device check since director is not enabled");
  }
}

void sub_1000BF6B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x620]);
  _Unwind_Resume(a1);
}

void sub_1000BF70C(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 224);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = 0;
    v25 = *v29;
    v24 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v7)];
        v9 = v3;
        if (v8 && _NRIsAppleInternal() && objc_opt_class() && objc_opt_class() && *(v8 + 49) == 1)
        {
          if (qword_100229150 != -1)
          {
            dispatch_once(&qword_100229150, &stru_1001FBB58);
          }

          v10 = sub_100163A30(NRDLocalDevice, *(v8 + 96));
          v11 = v10;
          if (v10)
          {
            v12 = *(v10 + 32);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          v14 = [v11 description];
          v15 = a1;
          v16 = v3;
          v17 = qword_100229148;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100114E3C;
          block[3] = &unk_1001FD088;
          v33 = v13;
          v34 = v8;
          v35 = v14;
          v18 = v14;
          v19 = v13;
          v20 = v17;
          v3 = v16;
          a1 = v15;
          v4 = v24;
          dispatch_group_async(v9, v20, block);

          v6 = 1;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v21 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      v5 = v21;
    }

    while (v21);

    if (v6)
    {
      objc_initWeak(block, a1);
      v22 = *(a1 + 136);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000C8148;
      v26[3] = &unk_1001FC730;
      v23 = v22;
      objc_copyWeak(&v27, block);
      dispatch_group_notify(v9, v23, v26);

      objc_destroyWeak(&v27);
      objc_destroyWeak(block);
    }
  }

  else
  {
  }
}

void sub_1000BFA38(char *a1)
{
  v60 = a1;
  if (a1)
  {
    v3 = sub_10016C8BC(NRDLocalDevice);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v61 = v3;
    v4 = [v61 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v4)
    {
      v5 = 0;
      v6 = *v67;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v67 != v6)
          {
            objc_enumerationMutation(v61);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v66 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            v9 = &qword_100229000;
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v6 = &qword_100229000;
            v30 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              v32 = qword_1002290E8;
              _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkDirector startSocksServerIfNeeded]", 1917);
            }

            v33 = _os_log_pack_size();
            v34 = &v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v35 = __error();
            v36 = _os_log_pack_fill(v34, v33, *v35, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
            *v36 = 136446210;
            *(v36 + 4) = "[NRLinkDirector startSocksServerIfNeeded]";
            sub_1000B9544();
            _NRLogAbortWithPack();
            goto LABEL_46;
          }

          v10 = *(v8 + 144);
          v1 = v10 == 0;

          if (v1)
          {
            v5 = 1;
          }

          else
          {
            v1 = v9[18].isa;
            if ([v1 proxyCapability] == 1)
            {
              v2 = v9[18].isa;
              v11 = [(objc_class *)v2 hasCompanionDatapath];

              v5 |= v11;
            }
          }
        }

        v4 = [v61 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }

      if (v5)
      {
        if (*(v60 + 18))
        {
          goto LABEL_28;
        }

        host = nw_endpoint_create_host("::", "62742");
        if (host)
        {
          v9 = nw_parameters_create();
          if (v9)
          {
            nw_parameters_set_local_address();
            nw_parameters_set_required_interface_subtype();
            nw_parameters_set_always_open_listener_socket();
            v12 = *(v60 + 17);
            v13 = nw_shoes_server_create();
            v15 = *(v60 + 18);
            v14 = v60 + 144;
            *(v60 + 18) = v13;

            if (*v14)
            {
              v65[1] = _NSConcreteStackBlock;
              v65[2] = 3221225472;
              v65[3] = sub_1000C7DE8;
              v65[4] = &unk_1001FCD58;
              v65[5] = v60;
              nw_socks5_server_set_state_changed_handler();
              nw_socks5_server_start();
              if (!*(v60 + 22))
              {
                v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v60 + 17));
                v17 = dispatch_time(0x8000000000000000, 21600000000000);
                dispatch_source_set_timer(v16, v17, 0x13A52453C000uLL, 0xEE6B280uLL);
                objc_initWeak(v65, v60);
                v62[0] = _NSConcreteStackBlock;
                v62[1] = 3221225472;
                v62[2] = sub_1000C8050;
                v62[3] = &unk_1001FD0D8;
                objc_copyWeak(&v64, v65);
                v18 = v16;
                v63 = v18;
                dispatch_source_set_event_handler(v18, v62);
                dispatch_activate(v18);
                v19 = *(v60 + 22);
                *(v60 + 22) = v18;
                v20 = v18;

                objc_destroyWeak(&v64);
                objc_destroyWeak(v65);
              }

              v60 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
              v1 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
              v21 = [NEPolicy alloc];
              v22 = [NEPolicyResult removeNetworkAgentDomain:v60 agentType:v1];
              v23 = +[NEPolicyCondition allInterfaces];
              v70[0] = v23;
              v24 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.companion_proxy"];
              v70[1] = v24;
              v25 = [NEPolicyCondition effectivePID:getpid()];
              v70[2] = v25;
              v26 = [NSArray arrayWithObjects:v70 count:3];
              v2 = [v21 initWithOrder:10 result:v22 conditions:v26];

              objc_opt_self();
              v6 = &qword_100229000;
              if (qword_100229410 == -1)
              {
                goto LABEL_23;
              }

              goto LABEL_47;
            }

            v51 = sub_1000B9544();
            v52 = _NRLogIsLevelEnabled();

            if (v52)
            {
              v53 = sub_1000B9544();
              _NRLogWithArgs(v53, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.socksServer) != ((void*)0)", "", "[NRLinkDirector startSocksServerIfNeeded]", 1952);
            }

            v54 = _os_log_pack_size();
            v55 = &v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v56 = __error();
            v57 = _os_log_pack_fill(v55, v54, *v56, &_mh_execute_header, "%{public}s Assertion Failed: (self.socksServer) != ((void*)0)");
            *v57 = 136446210;
            *(v57 + 4) = "[NRLinkDirector startSocksServerIfNeeded]";
            sub_1000B9544();
            _NRLogAbortWithPack();
          }

          else
          {
            v44 = sub_1000B9544();
            v45 = _NRLogIsLevelEnabled();

            if (v45)
            {
              v46 = sub_1000B9544();
              _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (socksParameters) != ((void*)0)", "", "[NRLinkDirector startSocksServerIfNeeded]", 1941);
            }

            v47 = _os_log_pack_size();
            v48 = &v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v49 = __error();
            v50 = _os_log_pack_fill(v48, v47, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (socksParameters) != ((void*)0)");
            *v50 = 136446210;
            *(v50 + 4) = "[NRLinkDirector startSocksServerIfNeeded]";
            sub_1000B9544();
            _NRLogAbortWithPack();
          }
        }

        else
        {
          v37 = sub_1000B9544();
          v38 = _NRLogIsLevelEnabled();

          if (v38)
          {
            v39 = sub_1000B9544();
            _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (socksEndpoint) != ((void*)0)", "", "[NRLinkDirector startSocksServerIfNeeded]", 1939);
          }

          v40 = _os_log_pack_size();
          v41 = &v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v42 = __error();
          v43 = _os_log_pack_fill(v41, v40, *v42, &_mh_execute_header, "%{public}s Assertion Failed: (socksEndpoint) != ((void*)0)");
          *v43 = 136446210;
          *(v43 + 4) = "[NRLinkDirector startSocksServerIfNeeded]";
          sub_1000B9544();
          _NRLogAbortWithPack();
        }

LABEL_46:
        __break(1u);
LABEL_47:
        dispatch_once(&qword_100229410, &stru_1001FCD98);
LABEL_23:
        v27 = qword_100229408;
        v28 = sub_100159E00(v27, @"NRLinkDirector-skip-privacy-proxy", v2);

        objc_opt_self();
        if (v6[130] != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v29 = qword_100229408;
        sub_10015A52C(v29);

        goto LABEL_28;
      }
    }

    else
    {
    }

    sub_1000BC1B0(v60);
LABEL_28:
  }
}

void sub_1000C0360(char *a1)
{
  v57 = a1;
  if (a1)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v58 = sub_10016C8BC(NRDLocalDevice);
    v2 = 0;
    v3 = [v58 countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v3)
    {
      v4 = *v72;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v72 != v4)
          {
            objc_enumerationMutation(v58);
          }

          v6 = sub_100163A30(NRDLocalDevice, *(*(&v71 + 1) + 8 * i));
          v7 = v6;
          if (!v6)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v14 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              v16 = qword_1002290E8;
              _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2180);
            }

            v17 = _os_log_pack_size();
            v18 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = __error();
            v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
            *v20 = 136446210;
            *(v20 + 4) = "[NRLinkDirector startMASQUEProxyServerIfNeeded]";
            sub_1000B9544();
            _NRLogAbortWithPack();
            goto LABEL_67;
          }

          v8 = *(v6 + 144);
          v9 = v8 == 0;

          if (v9)
          {
            v2 = 0;
          }

          else
          {
            v10 = v7[18];
            if ([v10 proxyCapability] == 1)
            {
              v11 = v7[18];
              v12 = [v11 usesTLS];

              v2 |= v12;
            }
          }
        }

        v3 = [v58 countByEnumeratingWithState:&v71 objects:v75 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    p_vtable = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      v13 = @"NO";
      if (v2)
      {
        v13 = @"YES";
      }

      _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d start MASQUE server : %@", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2192, v13);
    }

    if ((v2 & 1) == 0)
    {
      sub_1000BC35C(v57);
LABEL_32:

      return;
    }

    if (*(v57 + 19))
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d MASQUE server is already running", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2200);
      }

      goto LABEL_32;
    }

    if (*(v57 + 43))
    {
      host = nw_endpoint_create_host("::", "0");
      if (host)
      {
        v22 = nw_parameters_create();
        if (v22)
        {
          nw_parameters_set_local_address();
          nw_parameters_set_use_awdl();
          nw_parameters_set_no_proxy();
          nw_parameters_set_multipath_service(v22, nw_multipath_service_handover);
          options = nw_tls_create_options();
          v23 = nw_tls_copy_sec_protocol_options(options);
          sec_protocol_options_set_local_identity(v23, *(v57 + 43));
          v24 = *(v57 + 13);
          [v24 bytes];
          [*(v57 + 13) length];
          sec_protocol_options_add_server_raw_public_key_certificate();
          v25 = *(v57 + 17);
          v26 = nw_masque_server_create();
          v28 = *(v57 + 19);
          v27 = (v57 + 152);
          *(v57 + 19) = v26;

          v29 = *v27;
          if (*v27)
          {
            goto LABEL_52;
          }

          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Failed to create MASQUE server", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2233);
          }

          v29 = *(v57 + 19);
          if (v29)
          {
LABEL_52:
            objc_initWeak(&v70, v29);
            objc_initWeak(&v69, v57);
            v30 = *(v57 + 19);
            v66[1] = _NSConcreteStackBlock;
            v66[2] = 3221225472;
            v66[3] = sub_1000C6978;
            v66[4] = &unk_1001FB390;
            objc_copyWeak(&v67, &v69);
            objc_copyWeak(&v68, &v70);
            nw_masque_server_set_state_changed_handler();

            v31 = *(v57 + 19);
            v64[1] = _NSConcreteStackBlock;
            v64[2] = 3221225472;
            v64[3] = sub_1000C6C94;
            v64[4] = &unk_1001FB408;
            objc_copyWeak(&v65, &v69);
            objc_copyWeak(v66, &v70);
            nw_masque_server_set_outer_connection_handler();

            v32 = *(v57 + 19);
            v59 = _NSConcreteStackBlock;
            v60 = 3221225472;
            v61 = sub_1000C6DF0;
            v62 = &unk_1001FB430;
            objc_copyWeak(&v63, &v69);
            objc_copyWeak(v64, &v70);
            nw_masque_server_set_proxy_client_connection_event_handler();

            v33 = *(v57 + 19);
            nw_masque_server_start();

            objc_destroyWeak(v64);
            objc_destroyWeak(&v63);
            objc_destroyWeak(v66);
            objc_destroyWeak(&v65);
            objc_destroyWeak(&v68);
            objc_destroyWeak(&v67);
            objc_destroyWeak(&v69);
            objc_destroyWeak(&v70);

            goto LABEL_32;
          }

          v48 = sub_1000B9544();
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            v50 = sub_1000B9544();
            _NRLogWithArgs(v50, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.masqueServer) != ((void*)0)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2234);
          }

          v51 = _os_log_pack_size();
          v52 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v53 = __error();
          v54 = _os_log_pack_fill(v52, v51, *v53, &_mh_execute_header, "%{public}s Assertion Failed: (self.masqueServer) != ((void*)0)");
          *v54 = 136446210;
          *(v54 + 4) = "[NRLinkDirector startMASQUEProxyServerIfNeeded]";
          sub_1000B9544();
          _NRLogAbortWithPack();
        }

        else
        {
          v41 = sub_1000B9544();
          v42 = _NRLogIsLevelEnabled();

          if (v42)
          {
            v43 = sub_1000B9544();
            _NRLogWithArgs(v43, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (masqueParameters) != ((void*)0)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2212);
          }

          v44 = _os_log_pack_size();
          v45 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v46 = __error();
          v47 = _os_log_pack_fill(v45, v44, *v46, &_mh_execute_header, "%{public}s Assertion Failed: (masqueParameters) != ((void*)0)");
          *v47 = 136446210;
          *(v47 + 4) = "[NRLinkDirector startMASQUEProxyServerIfNeeded]";
          sub_1000B9544();
          _NRLogAbortWithPack();
        }
      }

      else
      {
        v34 = sub_1000B9544();
        v35 = _NRLogIsLevelEnabled();

        if (v35)
        {
          v36 = sub_1000B9544();
          _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (masqueEndpoint) != ((void*)0)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2210);
        }

        v37 = _os_log_pack_size();
        v38 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = __error();
        v40 = _os_log_pack_fill(v38, v37, *v39, &_mh_execute_header, "%{public}s Assertion Failed: (masqueEndpoint) != ((void*)0)");
        *v40 = 136446210;
        *(v40 + 4) = "[NRLinkDirector startMASQUEProxyServerIfNeeded]";
        sub_1000B9544();
        _NRLogAbortWithPack();
      }

LABEL_67:
      __break(1u);
    }

    else
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_32;
      }

      if (qword_1002290F0 == -1)
      {
        goto LABEL_57;
      }
    }

    dispatch_once(&qword_1002290F0, &stru_1001FB680);
LABEL_57:
    _NRLogWithArgs(p_vtable[29], 16, "%s%.30s:%-4d Failed to start MASQUE server without local identity", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]", 2205);
    goto LABEL_32;
  }
}

void sub_1000C0E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 176));
  objc_destroyWeak((v1 + 184));
  _Unwind_Resume(a1);
}

void sub_1000C0E80(char *a1)
{
  v57 = a1;
  if (a1)
  {
    v3 = sub_10016C8BC(NRDLocalDevice);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v5)
    {
      v6 = *v73;
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (*v73 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v72 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v22 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v24 = sub_1000B9544();
              _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2541);
            }

            v25 = _os_log_pack_size();
            v4 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = __error();
            v27 = _os_log_pack_fill(v4, v25, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
            *v27 = 136446210;
            *(v27 + 4) = "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]";
            sub_1000B9544();
            _NRLogAbortWithPack();
            goto LABEL_99;
          }

          v10 = *(v8 + 144);
          v11 = v10 == 0;

          if (!v11)
          {
            v1 = *(v9 + 144);
            if ([(objc_class *)v1 proxyCapability]== 1)
            {
              v12 = *(v9 + 144);
              v13 = [(objc_class *)v12 proxyProviderType]== 3;

              if (v13)
              {
                v14 = *(v9 + 144);
                v1 = [(objc_class *)v14 proxyProviderAuthMode];

                v9 = 1;
                goto LABEL_16;
              }
            }

            else
            {
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v5);
    }

    v1 = 0;
    v9 = 0;
LABEL_16:

    v5 = &qword_100229000;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    i = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      v15 = @"NO";
      if (v9)
      {
        v15 = @"YES";
      }

      _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d start http connect proxy server : %@", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2552, v15);
    }

    if ((v9 & 1) == 0)
    {
      sub_1000C2248(v57);
LABEL_84:

      return;
    }

    if (*(v57 + 20))
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d http connect proxy server is already running", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2560);
      }

      goto LABEL_84;
    }

    host = nw_endpoint_create_host("0.0.0.0", "0");
    if (!host)
    {
      v37 = sub_1000B9544();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = sub_1000B9544();
        _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (httpProxyServerEndpoint) != ((void*)0)", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2565);
      }

      v40 = _os_log_pack_size();
      v4 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v4, v40, *v41, &_mh_execute_header, "%{public}s Assertion Failed: (httpProxyServerEndpoint) != ((void*)0)");
      *v42 = 136446210;
      *(v42 + 4) = "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]";
      sub_1000B9544();
      _NRLogAbortWithPack();
      goto LABEL_99;
    }

    v69[0] = _NSConcreteStackBlock;
    v2 = 3221225472;
    v69[1] = 3221225472;
    v69[2] = sub_1000C58E0;
    v69[3] = &unk_1001FB4C0;
    v70 = &stru_1001FB498;
    v71 = v1;
    v69[4] = v57;
    v1 = objc_retainBlock(v69);
    v16 = _nw_parameters_configure_protocol_default_configuration;
    v9 = v16;
    if (v1)
    {
      if (v16)
      {
        if (_nw_parameters_configure_protocol_disable != v16)
        {
          v17 = nw_parameters_create();
          if (!v17)
          {
            if (qword_1002290F0 == -1)
            {
              goto LABEL_48;
            }

            goto LABEL_100;
          }

          if (_nw_parameters_configure_protocol_disable == v1)
          {
LABEL_44:
            options = nw_tcp_create_options();
            if (options)
            {
              if (nw_parameters_add_protocol_stack_member())
              {
                v21 = v17;
LABEL_73:

LABEL_74:
                while (1)
                {

LABEL_75:
                  v9 = nw_parameters_copy_default_protocol_stack(v21);
                  v28 = nw_http_messaging_create_options();
                  nw_protocol_stack_prepend_application_protocol(v9, v28);

                  nw_parameters_set_local_address();
                  nw_parameters_set_no_proxy();
                  nw_parameters_set_server_mode();
                  nw_parameters_set_attach_protocol_listener();
                  v29 = *(v57 + 17);
                  v30 = nw_http_proxy_server_create();
                  v32 = *(v57 + 20);
                  v31 = (v57 + 160);
                  *(v57 + 20) = v30;

                  v33 = *v31;
                  if (*v31)
                  {
                    break;
                  }

                  if (v5[30] != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (v5[30] != -1)
                    {
                      dispatch_once(&qword_1002290F0, &stru_1001FB680);
                    }

                    _NRLogWithArgs(i[29], 16, "%s%.30s:%-4d Failed to create http connect proxy server", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2614);
                  }

                  v33 = *(v57 + 20);
                  if (v33)
                  {
                    break;
                  }

                  v49 = sub_1000B9544();
                  v50 = _NRLogIsLevelEnabled();

                  if (v50)
                  {
                    v51 = sub_1000B9544();
                    _NRLogWithArgs(v51, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.httpConnectProxyServer) != ((void*)0)", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]", 2615);
                  }

                  v52 = _os_log_pack_size();
                  v4 = &v55 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                  v53 = __error();
                  v54 = _os_log_pack_fill(v4, v52, *v53, &_mh_execute_header, "%{public}s Assertion Failed: (self.httpConnectProxyServer) != ((void*)0)");
                  *v54 = 136446210;
                  *(v54 + 4) = "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]";
                  sub_1000B9544();
                  _NRLogAbortWithPack();
LABEL_99:
                  __break(1u);
LABEL_100:
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
LABEL_48:
                  if (_NRLogIsLevelEnabled())
                  {
                    if (v5[30] != -1)
                    {
                      dispatch_once(&qword_1002290F0, &stru_1001FB680);
                    }

                    _NRLogWithArgs(i[29], 17, "nw_parameters_create failed");
                  }

                  v17 = 0;
                  v21 = 0;
                }

                objc_initWeak(&v68, v33);
                objc_initWeak(&v67, v57);
                v34 = *(v57 + 20);
                v64[1] = _NSConcreteStackBlock;
                v64[2] = v2;
                v64[3] = sub_1000C5954;
                v64[4] = &unk_1001FB4E8;
                objc_copyWeak(&v65, &v67);
                objc_copyWeak(&v66, &v68);
                v64[5] = v57;
                nw_http_proxy_server_set_state_changed_handler();

                v35 = *(v57 + 20);
                v58 = _NSConcreteStackBlock;
                v59 = v2;
                v60 = sub_1000C5EF8;
                v61 = &unk_1001FB510;
                objc_copyWeak(&v63, &v67);
                objc_copyWeak(v64, &v68);
                v62 = v57;
                nw_http_proxy_server_set_outbound_connection_handler();

                v36 = *(v57 + 20);
                nw_http_proxy_server_start();

                objc_destroyWeak(v64);
                objc_destroyWeak(&v63);
                objc_destroyWeak(&v66);
                objc_destroyWeak(&v65);
                objc_destroyWeak(&v67);
                objc_destroyWeak(&v68);

                goto LABEL_84;
              }
            }

            else
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                _NRLogWithArgs(qword_1002290E8, 17, "nw_tcp_create_options failed");
              }
            }

            v21 = 0;
            goto LABEL_73;
          }

          v18 = nw_protocol_copy_swift_tls_record_definition();
          v19 = nw_protocol_create_options();

          if (v19)
          {
            if (nw_parameters_add_protocol_stack_member())
            {
              if (v9 != v1)
              {
                (*(v1 + 2))(v1, v19);
              }

              goto LABEL_44;
            }
          }

          else
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              _NRLogWithArgs(qword_1002290E8, 17, "nw_tls_create_options failed");
            }
          }

LABEL_65:
          v21 = 0;
          goto LABEL_74;
        }

        v47 = sub_1000B9544();
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v17 = sub_1000B9544();
          _NRLogWithArgs(v17, 17, "%s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable))", "nr_parameters_create_secure_tcp");
          goto LABEL_65;
        }
      }

      else
      {
        v45 = sub_1000B9544();
        v46 = _NRLogIsLevelEnabled();

        if (v46)
        {
          v17 = sub_1000B9544();
          _NRLogWithArgs(v17, 17, "%s called with null configure_tcp", "nr_parameters_create_secure_tcp");
          goto LABEL_65;
        }
      }
    }

    else
    {
      v43 = sub_1000B9544();
      v44 = _NRLogIsLevelEnabled();

      if (v44)
      {
        v17 = sub_1000B9544();
        _NRLogWithArgs(v17, 17, "%s called with null configure_tls", "nr_parameters_create_secure_tcp");
        goto LABEL_65;
      }
    }

    v21 = 0;
    goto LABEL_75;
  }
}

void sub_1000C1A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 136));
  objc_destroyWeak((v1 + 144));
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1AE0()
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v0 = sub_10016C8BC(NRDLocalDevice);
  v1 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v1)
  {
    v2 = *v15;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v15 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = sub_100163A30(NRDLocalDevice, *(*(&v14 + 1) + 8 * i));
        v5 = v4;
        if (v4)
        {
          v6 = *(v4 + 144);
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;
        v8 = [v7 proxyCapability];

        if (v8 == 2)
        {
          if (sub_100169428(v5) & 1) != 0 || (!v5 ? (v9 = 0) : (v9 = v5[18]), v10 = v9, [v10 proxyProviderCriteria], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "excludeVPNClients"), v11, v10, (v12))
          {

            v1 = 1;
            goto LABEL_20;
          }
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v1;
}

void sub_1000C1C7C(uint64_t a1, uint64_t a2)
{
  if (!_NRIsAppleInternal() || *(a1 + 368))
  {
    return;
  }

  v6 = _NRCopySerialQueueAttr();
  v7 = "flow-monitor-agent";
  v8 = dispatch_queue_create("flow-monitor-agent", v6);

  if (!v8)
  {
    v40 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v21 = "nr_dispatch_queue_create";
    if (IsLevelEnabled)
    {
      v42 = sub_1000B9544();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "flow-monitor-agent");
    }

    v14 = _os_log_pack_size();
    v15 = v45 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = __error();
    v44 = _os_log_pack_fill(v15, v14, *v43, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v44 = 136446466;
    *(v44 + 4) = "nr_dispatch_queue_create";
    *(v44 + 12) = 2080;
    *(v44 + 14) = "flow-monitor-agent";
    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_17;
  }

  v9 = *(a1 + 376);
  *(a1 + 376) = v8;

  v10 = *(a1 + 376);
  v11 = nw_agent_create();
  v12 = *(a1 + 368);
  *(a1 + 368) = v11;

  v13 = *(a1 + 136);
  v45[1] = _NSConcreteStackBlock;
  v45[2] = 3221225472;
  v45[3] = sub_1000C3B2C;
  v45[4] = &unk_1001FBE28;
  v45[0] = v13;
  v46 = v45[0];
  nw_agent_set_assert_handlers();
  nw_agent_change_state();
  v51[0] = 0;
  v51[1] = 0;
  nw_agent_get_uuid();
  v14 = [[NSUUID alloc] initWithUUIDBytes:v51];
  v15 = [NEPolicyRouteRule routeRuleWithAction:5 forType:6];
  [v15 setNetworkAgentUUID:v14];
  v16 = [NEPolicy alloc];
  v3 = &dispatch_group_enter_ptr;
  v50 = v15;
  v7 = &dispatch_group_enter_ptr;
  v17 = [NSArray arrayWithObjects:&v50 count:1];
  v18 = [NEPolicyResult routeRules:v17];
  v4 = &dispatch_group_enter_ptr;
  v19 = +[NEPolicyCondition allInterfaces];
  v49 = v19;
  v20 = [NSArray arrayWithObjects:&v49 count:1];
  v21 = [v16 initWithOrder:10 result:v18 conditions:v20];

  objc_opt_self();
  v2 = &qword_100229000;
  if (qword_100229410 != -1)
  {
LABEL_17:
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v22 = qword_100229408;
  v23 = sub_100159E00(v22, @"CompanionFlowMonitor", v21);

  if (_os_feature_enabled_impl())
  {
    v24 = v4[327];
    objc_opt_self();
    v25 = sub_100003490();
    dispatch_assert_queue_V2(v25);

    v47 = xmmword_100196400;
    v26 = [[NSData alloc] initWithBytes:&v47 length:16];
    v27 = sub_100167F00(NRDLocalDevice, v26, @"0");

    v28 = [v24 flowRemoteAddress:v27 prefix:64];

    v29 = [v4[327] flowIPProtocol:17];
    v30 = [NEPolicy alloc];
    v31 = [v3[328] removeNetworkAgentUUID:v14];
    v32 = [v4[327] allInterfaces];
    v48[0] = v32;
    v48[1] = v29;
    v33 = [v4[327] isSystemProxyConnection];
    v48[2] = v33;
    v48[3] = v28;
    v34 = [v7[494] arrayWithObjects:v48 count:4];
    v35 = [v30 initWithOrder:10 result:v31 conditions:v34];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v36 = v45[0];
    v37 = qword_100229408;
    v38 = sub_100159E00(v37, @"CompanionFlowMonitor", v35);

    v2 = &qword_100229000;
  }

  else
  {
    v35 = v21;
    v36 = v45[0];
  }

  objc_opt_self();
  if (v2[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v39 = qword_100229408;
  sub_10015A52C(v39);
}

uint64_t sub_1000C2248(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    nw_http_proxy_server_cancel();
    v3 = *(a1 + 160);
    *(a1 + 160) = 0;

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      return _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d http connect proxy server cancelled", "", "[NRLinkDirector cancelHTTPConnectProxyServer]", 2685);
    }
  }

  return result;
}

void sub_1000C2318(void *a1)
{
  v2 = a1;
  v3 = &qword_100229000;
  if ([v2 count])
  {
    sub_1000C2A1C();
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, @"NRLinkDirector-Drop-ASQUIC");
  }

  else
  {
    sub_1000C3294();
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    v6 = sub_10015A4BC(v5, @"NRLinkDirector-Drop-ASQUIC");

    if ((v6 & 1) == 0)
    {
      v47 = v2;
      objc_opt_self();
      v7 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
      objc_opt_self();
      v45 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
      v46 = v7;
      v57[0] = v7;
      v57[1] = v45;
      [NSArray arrayWithObjects:v57 count:2];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = v52 = 0u;
      v8 = [v48 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v50;
        do
        {
          v11 = 0;
          do
          {
            v12 = v3;
            if (*v50 != v10)
            {
              objc_enumerationMutation(v48);
            }

            v13 = *(*(&v49 + 1) + 8 * v11);
            v14 = [NEPolicy alloc];
            v1 = [NEPolicyResult dropWithFlags:4];
            v15 = +[NEPolicyCondition allInterfaces];
            v55[0] = v15;
            v55[1] = v13;
            v16 = [NSArray arrayWithObjects:v55 count:2];
            v17 = [v14 initWithOrder:5000 result:v1 conditions:v16];

            objc_opt_self();
            v3 = v12;
            if (v12[130] != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v18 = qword_100229408;
            v19 = sub_100159E00(v18, @"NRLinkDirector-Drop-ASQUIC", v17);

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v48 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v9);
      }

      v2 = v47;
    }
  }

  objc_opt_self();
  if (v3[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v20 = qword_100229408;
  v21 = sub_10015A4BC(v20, @"NRLinkDirector-Drop");

  if ((v21 & 1) == 0)
  {
    objc_opt_self();
    objc_opt_self();
    v22 = sub_100003490();
    dispatch_assert_queue_V2(v22);

    v53 = xmmword_100196400;
    v23 = [[NSData alloc] initWithBytes:&v53 length:16];
    v24 = sub_100167F00(NRDLocalDevice, v23, @"0");

    v25 = [NEPolicyCondition remoteAddress:v24 prefix:64];

    if (v25)
    {
      v26 = [NEPolicy alloc];
      v27 = [NEPolicyResult dropWithFlags:4];
      v54[0] = v25;
      v28 = +[NEPolicyCondition allInterfaces];
      v54[1] = v28;
      v29 = [NSArray arrayWithObjects:v54 count:2];
      v1 = [v26 initWithOrder:5000 result:v27 conditions:v29];

      if (v1)
      {
        objc_opt_self();
        if (v3[130] == -1)
        {
LABEL_25:
          v30 = qword_100229408;
          v31 = sub_100159E00(v30, @"NRLinkDirector-Drop", v1);

          goto LABEL_26;
        }

LABEL_36:
        dispatch_once(&qword_100229410, &stru_1001FCD98);
        goto LABEL_25;
      }

      v39 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v2 = "[NRLinkDirector updateDropPoliciesIfNeeded:]";
      if (IsLevelEnabled)
      {
        v41 = sub_1000B9544();
        _NRLogWithArgs(v41, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (policyDropPrefix) != ((void*)0)", "", "[NRLinkDirector updateDropPoliciesIfNeeded:]", 1006);
      }

      v42 = _os_log_pack_size();
      v25 = &v45 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = __error();
      v44 = _os_log_pack_fill(v25, v42, *v43, &_mh_execute_header, "%{public}s Assertion Failed: (policyDropPrefix) != ((void*)0)");
      *v44 = 136446210;
      *(v44 + 4) = "[NRLinkDirector updateDropPoliciesIfNeeded:]";
    }

    else
    {
      v33 = sub_1000B9544();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_1000B9544();
        _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (conditionPrefix) != ((void*)0)", "", "[NRLinkDirector updateDropPoliciesIfNeeded:]", 1001);
      }

      v36 = _os_log_pack_size();
      v25 = &v45 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      v38 = _os_log_pack_fill(v25, v36, *v37, &_mh_execute_header, "%{public}s Assertion Failed: (conditionPrefix) != ((void*)0)");
      *v38 = 136446210;
      *(v38 + 4) = "[NRLinkDirector updateDropPoliciesIfNeeded:]";
    }

    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_36;
  }

LABEL_26:
  objc_opt_self();
  if (v3[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v32 = qword_100229408;
  sub_10015A52C(v32);
}

void sub_1000C2A1C()
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v37 = xmmword_100196400;
    v6 = [[NSData alloc] initWithBytes:&v37 length:16];
    v7 = sub_100167F00(NRDLocalDevice, v6, @"0");

    [v4 setObject:@"PrivilegedTunnel" forKeyedSubscript:@"Level"];
    v8 = [v7 hostname];
    [v4 setObject:v8 forKeyedSubscript:@"Address"];

    [v4 setObject:&off_100209BF0 forKeyedSubscript:@"Prefix"];
    v1 = @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist";
    v9 = [[NSMutableArray alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist"];
    v2 = &qword_100229000;
    if (v9)
    {
      v0 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }

      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 17, "bad file format: %@", @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist");
      }
    }

    v0 = objc_alloc_init(NSMutableArray);
    if (v0)
    {
LABEL_12:
      v10 = sub_1000C3828(NRLinkDirector, v0);
      v1 = v10;
      if (v10)
      {
        v11 = v10;

        v0 = v11;
        if (([(__CFString *)v11 containsObject:v4]& 1) != 0)
        {
          goto LABEL_17;
        }
      }

      else if (([(__CFString *)v0 containsObject:v4]& 1) != 0)
      {
        goto LABEL_32;
      }

      [(__CFString *)v0 addObject:v4];
LABEL_17:
      v36 = 0;
      v12 = [NSPropertyListSerialization dataWithPropertyList:v0 format:200 options:0 error:&v36];
      v13 = v36;
      if (v13)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v14 = qword_1002290E8;
          v15 = [v13 localizedDescription];
          _NRLogWithArgs(v14, 17, "[NSPropertyListSerialization dataWithPropertyList: %@ format: options: error: %@]", v0, v15);
        }
      }

      else if ((sub_100003984(@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist", v12, 1) & 1) == 0)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d failed to write file %@\n", "", "[NRLinkDirector addTerminusPrefixDropPolicy]", 1777, @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist");
        }
      }

LABEL_32:
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_71;
    }

    v31 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v33 = sub_1000B9544();
      _NRLogWithArgs(v33, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (entryArray) != ((void*)0)", "", "[NRLinkDirector addTerminusPrefixDropPolicy]", 1752);
    }

    v4 = _os_log_pack_size();
    v7 = &v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = *__error();
    v30 = _os_log_pack_fill(v7, v4, v34, &_mh_execute_header, "%{public}s Assertion Failed: (entryArray) != ((void*)0)");
  }

  else
  {
    v26 = sub_1000B9544();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v28 = sub_1000B9544();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (entryDict) != ((void*)0)", "", "[NRLinkDirector addTerminusPrefixDropPolicy]", 1735);
    }

    v4 = _os_log_pack_size();
    v7 = &v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *__error();
    v30 = _os_log_pack_fill(v7, v4, v29, &_mh_execute_header, "%{public}s Assertion Failed: (entryDict) != ((void*)0)");
  }

  *v30 = 136446210;
  *(v30 + 4) = "[NRLinkDirector addTerminusPrefixDropPolicy]";
  sub_1000B9544();
  _NRLogAbortWithPack();
LABEL_71:
  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_33:
  v16 = qword_1002294C0;
  sub_1001816DC(v16, &stru_1001FB368);

  [@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist" UTF8String];
  v17 = ne_session_add_necp_drop_dest_from_path();
  v18 = v2[30];
  if (v17)
  {
    v19 = v17;
    if (v18 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v2[30] != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "ne_session_add_necp_drop_dest_from_path failed %d\n", v19);
    }

    v20 = _CFXPCCreateXPCObjectFromCFObject();
    if (v20)
    {
      v21 = ne_session_add_necp_drop_dest_from_dest_list();
      if (!v21)
      {
        if (v2[30] != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (v2[30] != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d ne_session_add_necp_drop_dest_from_dest_list: success", "", "[NRLinkDirector addTerminusPrefixDropPolicy]", 1797);
        }

        goto LABEL_56;
      }

      v19 = v21;
    }

    if (v2[30] != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v2[30] != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "ne_session_add_necp_drop_dest_from_dest_list failed %d\n", v19);
    }

    v22 = [[NSString alloc] initWithFormat:@"ne_session_add_necp_drop_dest_* failed with error %d", v19];
    sub_10013C2A8(@"addTerminusPrefixDropPolicy", v22, 0, 0, 0, v23, v24, v25, v35);

LABEL_56:
    goto LABEL_57;
  }

  if (v18 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (v2[30] != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d ne_session_add_necp_drop_dest_from_path: success", "", "[NRLinkDirector addTerminusPrefixDropPolicy]", 1806);
  }

LABEL_57:
}

void sub_1000C3294()
{
  v5 = objc_alloc_init(NSMutableDictionary);
  if (!v5)
  {
    v16 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_1000B9544();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (entryDict) != ((void*)0)", "", "[NRLinkDirector removeTerminusPrefixDropPolicy]", 1813);
    }

    v6 = _os_log_pack_size();
    v9 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v9, v6, *v19, &_mh_execute_header, "%{public}s Assertion Failed: (entryDict) != ((void*)0)");
    *v20 = 136446210;
    *(v20 + 4) = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
    goto LABEL_38;
  }

  v6 = v5;
  objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  v28 = xmmword_100196400;
  v8 = [[NSData alloc] initWithBytes:&v28 length:16];
  v9 = sub_100167F00(NRDLocalDevice, v8, @"0");

  [v6 setObject:@"PrivilegedTunnel" forKeyedSubscript:@"Level"];
  v10 = [v9 hostname];
  [v6 setObject:v10 forKeyedSubscript:@"Address"];

  [v6 setObject:&off_100209BF0 forKeyedSubscript:@"Prefix"];
  v2 = &dispatch_group_enter_ptr;
  v1 = @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist";
  v11 = [[NSMutableArray alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist"];
  if (v11)
  {
    v0 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v3 = &qword_100229000;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    v4 = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "bad file format: %@", @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist");
    }
  }

  v0 = objc_alloc_init(NSMutableArray);
  if (!v0)
  {
    v21 = sub_1000B9544();
    v22 = _NRLogIsLevelEnabled();

    v0 = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
    if (v22)
    {
      v23 = sub_1000B9544();
      _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (entryArray) != ((void*)0)", "", "[NRLinkDirector removeTerminusPrefixDropPolicy]", 1830);
    }

    v6 = _os_log_pack_size();
    v9 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v9, v6, *v24, &_mh_execute_header, "%{public}s Assertion Failed: (entryArray) != ((void*)0)");
    *v25 = 136446210;
    *(v25 + 4) = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
LABEL_38:
    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_39;
  }

LABEL_12:
  v12 = sub_1000C3828(NRLinkDirector, v0);
  v1 = v12;
  if (v12)
  {
    v13 = v12;

    v0 = v13;
    if (([v13 containsObject:v6] & 1) == 0)
    {
LABEL_17:
      v27 = 0;
      v2 = [NSPropertyListSerialization dataWithPropertyList:v0 format:200 options:0 error:&v27];
      v3 = v27;
      if (!v3)
      {
        if ((sub_100003984(@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist", v2, 1) & 1) == 0)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            _NRLogWithArgs(qword_1002290E8, 17, "failed to write file %@\n", @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist");
          }
        }

        goto LABEL_30;
      }

      v4 = &qword_100229000;
      if (qword_1002290F0 == -1)
      {
LABEL_19:
        if (_NRLogIsLevelEnabled())
        {
          if (v4[30] != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v14 = qword_1002290E8;
          v15 = [v3 localizedDescription];
          _NRLogWithArgs(v14, 17, "[NSPropertyListSerialization dataWithPropertyList: %@ format: options: error: %@] failed", v0, v15);
        }

LABEL_30:

        goto LABEL_31;
      }

LABEL_39:
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
      goto LABEL_19;
    }

LABEL_16:
    [v0 removeObject:v6];
    goto LABEL_17;
  }

  if ([v0 containsObject:v6])
  {
    goto LABEL_16;
  }

LABEL_31:
}

id sub_1000C3828(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {

    v23 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  v7 = 0;
  v8 = &dispatch_group_enter_ptr;
  v9 = @"Level";
  v10 = *v28;
  while (2)
  {
    v11 = 0;
    v26 = v6;
    do
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v19 = *(*(&v27 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
        v21 = [v20 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 unsignedIntValue];
          NEPolicyGetStringForLegacyNECPLevel();
          v12 = v10;
          v13 = v8;
          v14 = v4;
          v15 = v3;
          v17 = v16 = v9;
          v18 = [v20 mutableCopy];
          [v18 setObject:v17 forKeyedSubscript:v16];
          [v15 addObject:v18];

          v9 = v16;
          v3 = v15;
          v4 = v14;
          v8 = v13;
          v10 = v12;
          v6 = v26;
          v7 = 1;
        }

        else
        {
          [v3 addObject:v20];
        }

LABEL_7:
        goto LABEL_8;
      }

      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v20 = qword_1002290E8;
        v22 = objc_opt_class();
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d Array entry is %@, not NSDictionary", "", "+[NRLinkDirector convertDropDestArray:]", 1725, v22);
        goto LABEL_7;
      }

LABEL_8:
      v11 = v11 + 1;
    }

    while (v6 != v11);
    v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  if (v7)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:
  v24 = v23;

  return v24;
}

void sub_1000C3B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nw_agent_client_copy_parameters();
  pid = nw_parameters_get_pid();
  if (pid != getpid())
  {
    v9 = sub_10013CB6C(pid, 0);
    if ([v9 containsString:@"iperf3"] & 1) != 0 || (objc_msgSend(v9, "containsString:", @"terminus_test") & 1) != 0 || (objc_msgSend(v9, "containsString:", @"network_test"))
    {
      goto LABEL_12;
    }

    v10 = nw_agent_client_copy_path();
    v11 = v10;
    if (v10)
    {
      v12 = nw_path_copy_effective_local_endpoint(v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = nw_agent_client_copy_endpoint();
    v14 = v13;
    if (!v11 && !v12 && !v13)
    {
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    if (v13)
    {
      port = nw_endpoint_get_port(v13);
      if (port > 20998)
      {
        if ((port - 61314) < 2 || port == 20999)
        {
          goto LABEL_11;
        }

        v16 = 62742;
      }

      else if (port > 18998)
      {
        if (port == 18999)
        {
          goto LABEL_11;
        }

        v16 = 19999;
      }

      else
      {
        if (port == 853)
        {
          goto LABEL_11;
        }

        v16 = 17999;
      }

      if (port == v16)
      {
        goto LABEL_11;
      }
    }

    if (v12)
    {
      v17 = nw_endpoint_get_port(v12);
      if (v17 > 20998)
      {
        if ((v17 - 61314) < 2 || v17 == 20999)
        {
          goto LABEL_11;
        }

        v18 = 62742;
      }

      else if (v17 > 18998)
      {
        if (v17 == 18999)
        {
          goto LABEL_11;
        }

        v18 = 19999;
      }

      else
      {
        if (v17 == 853)
        {
          goto LABEL_11;
        }

        v18 = 17999;
      }

      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    if (v11 && (v19 = nw_path_copy_netagent_dictionary(), (xdict = v19) != 0))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C3EB4;
      applier[3] = &unk_1001FB600;
      applier[4] = &v28;
      xpc_dictionary_apply(v19, applier);
    }

    else
    {
      xdict = 0;
    }

    if ((v29[3] & 1) == 0)
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d unexpected flow by %@ - local: %@ remote: %@, path: %@", "", "[NRLinkDirector startFlowMonitor]_block_invoke", 3471, v9, v12, v14, v11);
      }

      v23 = *(a1 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C3F54;
      block[3] = &unk_1001FD3C8;
      v26 = v9;
      dispatch_async(v23, block);
    }

    _Block_object_dispose(&v28, 8);
    goto LABEL_11;
  }

LABEL_13:
}

uint64_t sub_1000C3EB4(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  if (strcmp(data + 16, "com.apple.networkrelay") || strcmp(data + 48, "ASListener") && strcmp(data + 48, "ASResolver"))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_1000C3F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 36) == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_1000C3FE8(0);
    WeakRetained = v3;
  }
}

void sub_1000C3FE8(void *a1)
{
  v1 = a1;
  if (qword_1002290D8 != -1)
  {
    dispatch_once(&qword_1002290D8, &stru_1001FB660);
  }

  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(dword_100228450, 3, 0, buffer, 136) != 136)
  {
    v7 = *__error();
    if (strerror_r(v7, v62, 0x80uLL))
    {
      v62[0] = 0;
    }

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d failed to fetch bsd info: [%d] %s", "", "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]", 3524, v7, v62);
    }

    goto LABEL_97;
  }

  if (!v64)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d no open files", "", "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]", 3529);
    }

    goto LABEL_97;
  }

  if (v64 >= 0x401)
  {
    v2 = [NSString alloc];
    v3 = [v2 initWithFormat:@"unexpected number of open files %u", v64];
    sub_10013C2A8(@"fdUsageMonitor", v3, 0, 0, 0, v4, v5, v6, v50);
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "%@", v3);
    }

    goto LABEL_96;
  }

  v8 = 8 * v64;
  v9 = malloc_type_malloc(8 * v64, 0x2D23D682uLL);
  if (!v9)
  {
    v42 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v44 = sub_1000B9544();
      _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]", 3542);
    }

    v45 = _os_log_pack_size();
    v46 = &v50 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = __error();
    v48 = _os_log_pack_fill(v46, v45, *v47, &_mh_execute_header, "%{public}s strict allocator failed");
    *v48 = 136446210;
    *(v48 + 4) = "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]";
    sub_1000B9544();
    v49 = _NRLogAbortWithPack();
    sub_1000C49A4(v49);
    return;
  }

  v10 = v9;
  v11 = proc_pidinfo(dword_100228450, 1, 0, v9, v8);
  if (v11 < 1 || (v11 & 7) != 0)
  {
    v19 = *__error();
    if (strerror_r(v19, v62, 0x80uLL))
    {
      v62[0] = 0;
    }

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d failed to fetch fd info: [%d] %s", "", "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]", 3545, v19, v62);
    }

    free(v10);
    goto LABEL_97;
  }

  v51 = v1;
  v12 = v11 >> 3;
  v13 = objc_alloc_init(NSCountedSet);
  v14 = 4;
  do
  {
    v15 = *&v10[v14];
    if (v15 <= 4)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = v13;
          v17 = @"SOCKET";
        }

        else
        {
          v16 = v13;
          if (v15 == 3)
          {
            v17 = @"PSHM";
          }

          else
          {
            v17 = @"PSEM";
          }
        }

        goto LABEL_54;
      }

      if (!v15)
      {
        v16 = v13;
        v17 = @"ATALK";
        goto LABEL_54;
      }

      if (v15 == 1)
      {
        v16 = v13;
        v17 = @"VNODE";
        goto LABEL_54;
      }
    }

    else if (v15 > 8)
    {
      switch(v15)
      {
        case 9:
          v16 = v13;
          v17 = @"NETPOLICY";
          goto LABEL_54;
        case 10:
          v16 = v13;
          v17 = @"CHANNEL";
          goto LABEL_54;
        case 11:
          v16 = v13;
          v17 = @"NEXUS";
          goto LABEL_54;
      }
    }

    else
    {
      switch(v15)
      {
        case 5:
          v16 = v13;
          v17 = @"KQUEUE";
          goto LABEL_54;
        case 6:
          v16 = v13;
          v17 = @"PIPE";
          goto LABEL_54;
        case 7:
          v16 = v13;
          v17 = @"FSEVENTS";
LABEL_54:
          [v16 addObject:v17];
          goto LABEL_55;
      }
    }

    v18 = [[NSString alloc] initWithFormat:@"%u", *&v10[v14]];
    [v13 addObject:v18];

LABEL_55:
    v14 += 8;
    --v12;
  }

  while (v12);
  free(v10);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v3 = v13;
  v20 = [v3 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    LODWORD(v22) = 0;
    v23 = *v57;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v3);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        v26 = [v3 countForObject:v25];
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d fd usage summary - %@ : %u", "", "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]", 3584, v25, v26);
        }

        if (v51)
        {
          v27 = [NSNumber numberWithUnsignedInt:v26];
          [v51 setObject:v27 forKeyedSubscript:v25];
        }

        if (v26 >= 0x101)
        {
          v28 = [[NSString alloc] initWithFormat:@"FD usage for type %@ exceeded threshold(%u)", v25, 256];
          sub_10013C2A8(@"fdUsageMonitor", v28, 0, 0, 0, v29, v30, v31, v50);
        }

        v22 = (v22 + v26);
      }

      v21 = [v3 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v1 = v51;
  if (v51)
  {
    v32 = [NSNumber numberWithUnsignedInt:v22];
    [v51 setObject:v32 forKeyedSubscript:@"Total"];
  }

  if (v22 >= 0x201)
  {
    v33 = [[NSMutableString alloc] initWithFormat:@"Total FD usage exceeded threshold(%u)", 512];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v34 = v3;
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v53;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [v33 appendFormat:@" %@:%u", *(*(&v52 + 1) + 8 * j), objc_msgSend(v34, "countForObject:", *(*(&v52 + 1) + 8 * j))];
        }

        v36 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v36);
    }

    sub_10013C2A8(@"fdUsageMonitor", v33, 0, 0, 0, v39, v40, v41, v50);
  }

LABEL_96:

LABEL_97:
}

void sub_1000C49C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[13] == 1 && *(WeakRetained + 39) == *(a1 + 32))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1000C4DAC;
    v29 = sub_1000C4DBC;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v6 = nw_path_copy_netagent_dictionary();
    v7 = v6;
    if (v6)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C4DC4;
      applier[3] = &unk_1001FB538;
      applier[4] = &v25;
      applier[5] = &v21;
      xpc_dictionary_apply(v6, applier);
    }

    v8 = *(v5 + 320);
    v9 = v26;
    if (v8 || v26[5])
    {
      v10 = *(v5 + 320);
      v11 = [v10 isEqual:v9[5]];

      if ((v11 & 1) == 0)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v12 = qword_1002290E8;
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v14 = qword_1002290E8;
          v15 = *(v5 + 320);
          _NRLogWithArgs(v14, 1, "%s%.30s:%-4d AppVPN agent %@", "", "[NRLinkDirector setupAppVPNWatcher]_block_invoke", 2803, v15);
        }

        objc_storeStrong((v5 + 320), v26[5]);
        sub_1000B98D8(v5);
      }
    }

    v16 = *(v22 + 24);
    if (v16 != *(v5 + 19))
    {
      *(v5 + 19) = v16;
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      v17 = qword_1002290E8;
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v19 = qword_1002290E8;
        _NRLogWithArgs(v19, 1, "%s%.30s:%-4d detected AppVPN active %d", "", "[NRLinkDirector setupAppVPNWatcher]_block_invoke", 2810, *(v5 + 19));
      }
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }
}

void sub_1000C4D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4D28(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 13) == 1 && *(v2 + 312) == a1[5])
  {
    v4 = nw_path_evaluator_copy_path();
    (*(a1[6] + 16))();
  }
}

uint64_t sub_1000C4DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C4DC4(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "NetworkExtension") && !strcmp(v6 + 48, "AppVPN"))
    {
      v7 = [[NSUUID alloc] initWithUUIDBytes:v6];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      result = 0;
      *(*(*(a1 + 40) + 8) + 24) = (v6[208] & 2) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1000C4EA4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 8) == a2)
  {
    v4 = WeakRetained;
    sub_1000C4F10(WeakRetained, a2);
    WeakRetained = v4;
  }
}

void sub_1000C4F10(id val, int a2)
{
  v4 = *(val + 9) + 1;
  *(val + 9) = v4;
  objc_initWeak(&location, val);
  v5 = +[NEConfigurationManager sharedManagerForAllUsers];
  v6 = *(val + 17);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C5024;
  v7[3] = &unk_1001FB5B0;
  objc_copyWeak(&v8, &location);
  v9 = a2;
  v10 = v4;
  [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_1000C5000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C5024(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained || *(WeakRetained + 13) != 1 || *(WeakRetained + 8) != *(a1 + 40) || *(a1 + 44) != *(WeakRetained + 9))
  {
    goto LABEL_59;
  }

  v42 = WeakRetained;
  if (!v6)
  {
    v9 = WeakRetained;
    v40 = *(WeakRetained + 42);
    v10 = *(v9 + 42);
    *(v9 + 42) = 0;

    v39 = *(v9 + 41);
    v11 = *(v9 + 41);
    *(v9 + 41) = 0;

    v43 = objc_alloc_init(NSMutableArray);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v49;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          v19 = [v18 appVPN];
          if (v19)
          {
            v20 = v19;
            v21 = [v18 appVPN];
            v22 = [v21 isEnabled];

            if (v22)
            {
              v23 = [v18 appVPN];
              v24 = [v23 copyAppRuleIDs];

              if ([v24 count])
              {
                [v43 addObjectsFromArray:v24];
              }
            }
          }

          v25 = [v18 copyProviderMachOUUIDs];
          if ([v25 count])
          {
            if (!v15)
            {
              v15 = objc_alloc_init(NSMutableSet);
            }

            [v15 addObjectsFromArray:v25];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(v42 + 42, v15);
    if ([v43 count])
    {
      v12 = objc_alloc_init(NSMutableSet);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v26 = v43;
      v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v45;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v45 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = sub_10013A6D4(*(*(&v44 + 1) + 8 * j));
            if ([v31 count])
            {
              [v12 addObjectsFromArray:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v28);
      }

      if ([v12 count])
      {
        objc_storeStrong(v42 + 41, v12);
        v32 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v34 = sub_1000B9544();
          _NRLogWithArgs(v34, 1, "%s%.30s:%-4d fetched app vpn UUIDs %@", "", "[NRLinkDirector processNEConfigurationChangeForNotifyToken:]_block_invoke", 2974, v42[41]);
        }
      }
    }

    v6 = 0;
    v5 = v41;
    if (v39 || (v12 = v42[41]) != 0)
    {
      v35 = [v42[41] isEqualToSet:v39];
      if (!v39)
      {
      }

      if ((v35 & 1) == 0)
      {
        sub_1000B98D8(v42);
      }
    }

    v36 = v42;
    if (v40 || (v12 = v42[42], v36 = v42, v12))
    {
      v37 = [v36[42] isEqualToSet:v40];
      v38 = v37;
      if (v40)
      {
        v36 = v42;
        if (!v37)
        {
          goto LABEL_56;
        }
      }

      else
      {

        v36 = v42;
        if ((v38 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    if (v36[42])
    {
LABEL_57:

LABEL_58:
      WeakRetained = v42;
      goto LABEL_59;
    }

LABEL_56:
    sub_1000B98D8(v42);
    goto LABEL_57;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  v8 = _NRLogIsLevelEnabled();
  WeakRetained = v42;
  if (v8)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 17, "error loading NE configuration: %@", v6);
    goto LABEL_58;
  }

LABEL_59:
}

void sub_1000C5518(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 7) == a2)
  {
    v4 = *(WeakRetained + 17);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C55BC;
    block[3] = &unk_1001FD3C8;
    block[4] = WeakRetained;
    v5 = WeakRetained;
    dispatch_async(v4, block);
    WeakRetained = v5;
  }
}

void sub_1000C55BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 13) == 1)
    {
      v3 = *(v1 + 28);
      if (v3 != -1)
      {
        state64 = 0;
        notify_get_state(v3, &state64);
        v4 = *(a1 + 32);
        if (v4)
        {
          *(v4 + 24) = state64;
          v5 = *(a1 + 32);
        }

        else
        {
          v5 = 0;
        }

        StringFromThermalPressureLevel = createStringFromThermalPressureLevel();
        sub_1000B926C(v5, 1049, @"%@", v7, v8, v9, v10, v11, StringFromThermalPressureLevel);

        v12 = *(a1 + 32);
        if (v12)
        {
          v13 = *(v12 + 224);
          if (v13)
          {
            v14 = v13;
            v15 = *(a1 + 32);
            v16 = v15 ? *(v15 + 224) : 0;
            v17 = [v16 count];

            if (v17)
            {
              v18 = *(a1 + 32);
              if (v18)
              {
                v19 = *(v18 + 40);
              }

              else
              {
                v19 = 0;
              }

              [v19 handleThermalStateUpdate];
              v20 = *(a1 + 32);
              if (v20)
              {
                v21 = *(v20 + 48);
              }

              else
              {
                v21 = 0;
              }

              [v21 handleThermalStateUpdate];
              v22 = *(a1 + 32);
              if (v22)
              {
                v23 = *(v22 + 56);
              }

              else
              {
                v23 = 0;
              }

              [v23 handleThermalStateUpdate];
              v24 = *(a1 + 32);
              if (v24)
              {
                v25 = *(v24 + 64);
              }

              else
              {
                v25 = 0;
              }

              [v25 handleThermalStateUpdate];
              if (_NRIsAppleInternal())
              {
                v26 = *(a1 + 32);
                if (v26)
                {
                  v27 = *(v26 + 192);
                }

                else
                {
                  v27 = 0;
                }

                [v27 handleThermalStateUpdate];
              }

              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v28 = *(a1 + 32);
              if (v28)
              {
                v28 = v28[28];
              }

              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v43;
                do
                {
                  for (i = 0; i != v31; i = i + 1)
                  {
                    if (*v43 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v35 = *(a1 + 32);
                    if (v35)
                    {
                      v36 = *(v35 + 224);
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v37 = [v36 objectForKeyedSubscript:*(*(&v42 + 1) + 8 * i)];
                    v38 = v37;
                    if (v37 && *(v37 + 14) == 1)
                    {
                      objc_opt_self();
                      if (qword_1002290C0 != -1)
                      {
                        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                      }

                      v39 = qword_1002290B8;
                      if (v39)
                      {
                        v34 = v39[6];

                        if (v34 > *(v38 + 84))
                        {
                          v40 = *(v38 + 648);
                          if (v40)
                          {
                            v40[4] |= 0x400u;
                          }

                          v41 = *(v38 + 640);
                          if (v41)
                          {
                            v41[4] |= 0x400u;
                          }
                        }
                      }

                      else
                      {
                        v34 = 0;
                      }

                      *(v38 + 84) = v34;
                      sub_1000F5768(v38, *(v38 + 160));
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
                }

                while (v31);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000C58E0(void *a1, nw_protocol_options_t options)
{
  v2 = nw_tls_copy_sec_protocol_options(options);
  sec_protocol_options_set_use_raw_external_pre_shared_keys();
  sec_protocol_options_set_external_pre_shared_key_selection_block();
}

void sub_1000C5954(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained || WeakRetained[13] != 1 || *(WeakRetained + 20) != v7)
  {
    goto LABEL_55;
  }

  if ((a2 - 1) <= 1)
  {
    v8 = v7;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      v9 = qword_1002290E8;
      port = nw_http_proxy_server_get_port();
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d http connect proxy server started %u port:%u", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]_block_invoke", 2630, a2, port);
    }

    WeakRetained[14] = 0;
    v7 = v8;
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    v11 = v7;
    sub_1000C2248(WeakRetained);
    if (v5 && nw_error_get_error_domain(v5) == nw_error_domain_posix && nw_error_get_error_code(v5) == 48)
    {
      v12 = WeakRetained[14];
      if (v12 <= 4)
      {
        WeakRetained[14] = v12 + 1;
        v13 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v15 = sub_1000B9544();
          _NRLogWithArgs(v15, 16, "%s%.30s:%-4d scheduling address in use retry %u", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]_block_invoke", 2639, WeakRetained[14]);
        }

        v16 = dispatch_time(0x8000000000000000, 200000000 * WeakRetained[14]);
        v17 = *(WeakRetained + 17);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C677C;
        block[3] = &unk_1001FD3C8;
        v47 = WeakRetained;
        dispatch_after(v16, v17, block);

        goto LABEL_27;
      }

      v38 = sub_1000B9544();
      v39 = _NRLogIsLevelEnabled();

      if (v39)
      {
        v40 = sub_1000B9544();
        _NRLogWithArgs(v40, 17, "failed to start proxy server after %u address in use retries", WeakRetained[14]);
      }
    }

    else
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 17, "failed to start proxy server with error %@", v5);
      }
    }

    WeakRetained[14] = 0;
LABEL_27:
    v7 = v11;
  }

LABEL_28:
  v41 = WeakRetained;
  v42 = v5;
  v43 = v7;
  v44 = *(a1 + 32);
  if (v44)
  {
    v18 = sub_100003490();
    dispatch_assert_queue_V2(v18);

    v19 = sub_10016C8BC(NRDLocalDevice);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v19;
    v20 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v48 + 1) + 8 * i);
          v25 = sub_100163B2C(NRDLocalDevice, v24, 0);
          v26 = v25;
          if (v25)
          {
            v27 = *(v25 + 144);
            if (v27)
            {
              v28 = v27;
              v29 = v26[18];
              if ([v29 proxyCapability] != 1)
              {

                goto LABEL_34;
              }

              v30 = v26[18];
              v31 = [v30 proxyProviderType];

              if (v31 == 3)
              {
                v32 = v24;
                v33 = sub_100003490();
                dispatch_assert_queue_V2(v33);

                if (v32)
                {
                  v34 = [*(v44 + 224) objectForKeyedSubscript:v32];
                  v35 = v34;
                  if (v34)
                  {
                    sub_1000F4104(v34);
                  }

                  goto LABEL_44;
                }

                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                v36 = qword_1002290E8;
                v37 = _NRLogIsLevelEnabled();

                if (v37)
                {
                  if (qword_1002290F0 != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  v35 = qword_1002290E8;
                  _NRLogWithArgs(v35, 17, "%s called with null nrUUID", "[NRLinkDirector updateDeviceMonitorConnectionsForNRUUID:]");
LABEL_44:
                }
              }
            }
          }

LABEL_34:
        }

        v21 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v21);
    }
  }

  v5 = v42;
  v7 = v43;
  WeakRetained = v41;
LABEL_55:
}

void sub_1000C5EF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Received new connection endpoint:%@ request:%@", "", "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]_block_invoke_3", 2665, v26, v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(WeakRetained + 13) == 1 && WeakRetained[20] == v13)
  {
    v25 = v13;
    v14 = nw_parameters_copy(v9);
    well_known = *(a1 + 32);
    v16 = v10;
    v17 = v16;
    v24 = v14;
    if (well_known)
    {
      if (v16)
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        nw_http_fields_access_value_by_name();
        well_known = nw_http_response_create_well_known();
        if ((v28[3] & 1) == 0)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v18 = qword_1002290E8;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v20 = qword_1002290E8;
            _NRLogWithArgs(v20, 16, "%s%.30s:%-4d Proxy Authorization failed", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]", 2467);
          }

          nw_http_response_set_status_code();
          nw_http_fields_append();
        }

        _Block_object_dispose(&v27, 8);
      }

      else
      {
        v21 = sub_1000B9544();
        v22 = _NRLogIsLevelEnabled();

        if (v22)
        {
          v23 = sub_1000B9544();
          _NRLogWithArgs(v23, 17, "%s called with null request", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]");
        }

        well_known = 0;
      }
    }

    (*(v11 + 2))(v11, 0, v24, well_known, 0);
    v13 = v25;
  }
}

void sub_1000C626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6288(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v19 = [NSString stringWithCString:a2 encoding:5];
    v4 = [v19 componentsSeparatedByString:@" "];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"Basic"];

    if (!v6)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Invalid Proxy-Authorization header: %s", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]_block_invoke", 2458, a2);
      }

      v11 = v4;
      goto LABEL_42;
    }

    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v7 dataUsingEncoding:4];

    v9 = [[NSData alloc] initWithBase64EncodedData:v8 options:0];
    v10 = [[NSString alloc] initWithData:v9 encoding:4];
    v11 = [v10 componentsSeparatedByString:@":"];

    if ([v11 count] != 2)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Bad format for username/password: %@", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]_block_invoke", 2455, v10);
      }

      goto LABEL_41;
    }

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v11 objectAtIndexedSubscript:1];
    v14 = v12;
    v15 = v13;
    objc_opt_self();
    if (qword_100229138)
    {
      v16 = [qword_100229138 objectForKeyedSubscript:v14];
      v17 = [v16 isEqual:v15];

      v18 = qword_1002290F0;
      if (v17)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d Authenticated using Basic authentication", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]_block_invoke", 2449);
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_40:

LABEL_41:
LABEL_42:

        return;
      }
    }

    else
    {

      v18 = qword_1002290F0;
    }

    if (v18 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Incorrect Proxy-Authorization for user: %@", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]_block_invoke", 2452, v14);
    }

    goto LABEL_40;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Did not find Proxy-Authorization header", "", "[NRLinkDirector handleHTTPConnectProxyAuthorization:]_block_invoke", 2461);
  }
}

void sub_1000C6784(id a1, OS_sec_protocol_metadata *a2, NSArray *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_12:

    v6[2](v6, 0);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *v20;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v20 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v19 + 1) + 8 * v11);
    v13 = [v12 external_identity];
    objc_opt_self();
    if (qword_100229140)
    {
      break;
    }

LABEL_6:
    if (v9 == ++v11)
    {
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  v14 = [qword_100229140 objectForKeyedSubscript:v13];

  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [SecExternalPreSharedKey alloc];
  v16 = [v12 external_identity];
  v17 = [v12 context];
  v18 = [v15 initWithExternalIdentity:v16 :v14 :v17];
  (v6)[2](v6, v18);

LABEL_13:
}

void sub_1000C6978(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || WeakRetained[13] != 1 || *(WeakRetained + 19) != v7)
  {
    goto LABEL_28;
  }

  if ((a2 - 1) > 1)
  {
    if (a2 != 3)
    {
      goto LABEL_28;
    }

    v9 = v7;
    sub_1000BC35C(WeakRetained);
    if (v5 && nw_error_get_error_domain(v5) == nw_error_domain_posix && nw_error_get_error_code(v5) == 48)
    {
      v10 = WeakRetained[14];
      if (v10 <= 4)
      {
        WeakRetained[14] = v10 + 1;
        v11 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v13 = sub_1000B9544();
          _NRLogWithArgs(v13, 16, "%s%.30s:%-4d scheduling address in use retry %u", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke", 2259, WeakRetained[14]);
        }

        v14 = dispatch_time(0x8000000000000000, 200000000 * WeakRetained[14]);
        v15 = *(WeakRetained + 17);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C7DE0;
        block[3] = &unk_1001FD3C8;
        v20 = WeakRetained;
        dispatch_after(v14, v15, block);

        goto LABEL_27;
      }

      v16 = sub_1000B9544();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = sub_1000B9544();
        _NRLogWithArgs(v18, 17, "failed to start proxy server after %u address in use retries", WeakRetained[14]);
      }
    }

    else
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 17, "failed to start proxy server with error %@", v5);
      }
    }

    WeakRetained[14] = 0;
LABEL_27:
    v7 = v9;
    goto LABEL_28;
  }

  v8 = v7;
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d MASQUE server started %u", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke", 2250, a2);
  }

  WeakRetained[14] = 0;
  v7 = v8;
LABEL_28:
}
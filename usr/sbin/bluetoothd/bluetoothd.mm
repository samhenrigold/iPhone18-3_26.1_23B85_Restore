void sub_1000031B0()
{
  pthread_mutex_lock(&stru_100B5AC18);
  v0 = pthread_self();
  pthread_getname_np(v0, &byte_100B5AC58, 0x40uLL);
  if (!byte_100B5AC58)
  {
    dispatch_queue_get_label(0);
    __strlcpy_chk();
    strtok(&byte_100B5AC58, "-");
  }

  if (!atomic_fetch_add_explicit(&dword_100B5AD64, 1u, memory_order_relaxed))
  {
    v1 = qword_100B5AD68;
    v2 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v1, v2, 0x2540BE400uLL, 0x3B9ACA00uLL);
    v3 = qword_100B5AD68;
    *dispatch_get_context(qword_100B5AD68) = 0;

    dispatch_resume(v3);
  }
}

uint64_t sub_1000032AC(const char *a1)
{
  v16 = 0;
  if (a1 && *a1 && *(a1 + 3) != -1)
  {
    strncpy(__dst, a1 + 17, 3uLL);
    __strcat_chk();
    sub_100304AF8("launching %s\n", __dst);
    sub_1001C5D20(__dst);
    v2 = *(a1 + 3);
    os_channel_ring_id();
    os_channel_rx_ring();
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(&eventlist, 0, sizeof(eventlist));
    if (kevent(v2, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 0xFFFF)
    {
LABEL_24:
      sub_100304AF8("%s: kevent error on sw_kq_read\n", "skywalk_read_loop");
    }

    else
    {
      while (1)
      {
        if ((byte_100B55A58 & 1) == 0)
        {
          sub_1000031B0();
        }

        if (!*a1)
        {
          break;
        }

        v3 = os_channel_available_slot_count();
        next_slot = os_channel_get_next_slot();
        if (v3 && next_slot)
        {
          v5 = 1;
          do
          {
            if ((byte_100B55A59 & 1) == 0)
            {
              if (byte_100B55A58)
              {
                sub_1000040DC(v12);
              }

              else
              {
                v9[0] = 0;
                v9[1] = 0;
                v6 = sub_100003560(*(a1 + 16), v12, WORD1(v11), v9);
                sub_10000394C(*(a1 + 16), v12, v6, v9);
              }
            }

            v7 = os_channel_get_next_slot();
            if (v5 >= v3)
            {
              break;
            }

            ++v5;
          }

          while (v7);
          if (os_channel_advance_slot())
          {
            sub_100304AF8("%s: failed to advance slot - %d\n");
            break;
          }

          if (os_channel_sync())
          {
            sub_100304AF8("%s: os_channel_sync rx failed - %d\n");
            break;
          }
        }

        if ((byte_100B55A58 & 1) == 0)
        {
          sub_10000C198();
        }

        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        memset(&eventlist, 0, sizeof(eventlist));
        if (kevent(v2, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 0xFFFF)
        {
          goto LABEL_24;
        }
      }

      sub_10000C198();
    }

    sub_100304AF8("exiting skywalk_read_loop for %s\n");
  }

  else
  {
    sub_100304AF8("%s: invalid input parameter\n");
  }

  return 0;
}

uint64_t sub_100003560(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  *a4 = mach_continuous_time();
  *(a4 + 8) = 0;
  v8 = sub_100003668(v7, a2, a3);
  if (a3 > v8)
  {
    v9 = v8;
    if (v8 + 8 == a3)
    {
      v10 = &a2[v8];
      v11 = *(v10 + 2);
      if (v11 < 0)
      {
        *(a4 + 8) = 1;
        if ((v11 & 0x40) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v10 + 2) & 0x40) == 0)
      {
LABEL_5:
        if ((v11 & 0x80) == 0 && (v11 & 0x20) != 0)
        {
          *(a4 + 9) = 1;
          *(a4 + 12) = *&a2[(v8 + 3)];
        }

        goto LABEL_11;
      }

      v12 = mach_continuous_time();
      *a4 = v12 - MillisecondsToUpTicks();
LABEL_11:
      sub_1000040DC(v10);
      return v9;
    }

    sub_100304AF8("%s: invalid packet length received\n", "pcie_transport_decode_hci_packet_attrs_from_footer");
  }

  return a3;
}

uint64_t sub_100003668(int a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a1 <= 4)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (a3 >= 3)
        {
          LOWORD(a3) = a2[2] + 3;
        }
      }

      else if (a1 == 4 && a3 >= 2)
      {
        LOWORD(a3) = a2[1] + 2;
      }

      return a3;
    }

    goto LABEL_12;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      if (a3)
      {
        LOWORD(a3) = *a2 + 1;
      }

      return a3;
    }

    if (a1 != 243)
    {
      return a3;
    }

    goto LABEL_12;
  }

  if (a1 != 5)
  {
LABEL_12:
    if (a3 >= 4)
    {
      v3 = *(a2 + 1);
LABEL_16:
      LOWORD(a3) = v3 + 4;
      return a3;
    }

    return a3;
  }

  if (a3 >= 4)
  {
    v3 = a2[2] | ((a2[3] & 0xF) << 8);
    goto LABEL_16;
  }

  return a3;
}

void sub_10000381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000394C(uint64_t a1, unsigned __int8 *a2, NSObject *a3, uint64_t a4)
{
  v5 = a3;
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = a4;
    byte_100B5FC50 = a1;
    if (a3)
    {
      __memmove_chk();
    }

    if (a1 == 7)
    {
      v8 = a2 + 1;
LABEL_14:
      sub_1000040DC(v8);
      v9 = sub_100004790();
      if (v9)
      {
        v11 = sub_10009B9DC(v9, v10);
        if (v11 != 8 && sub_10009B9DC(v11, v12) != 7)
        {
          return;
        }
      }

      if (a1 > 4)
      {
        if (a1 <= 6)
        {
          if (a1 != 5)
          {
LABEL_24:
            ++dword_100B5FC44;
            if (dword_100BCE0C0 == 2)
            {
              sub_1000B05A4(a2, v5, a1, v4);
              goto LABEL_57;
            }

            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding ACL packet State %d, Numbytes %d", dword_100BCE0C0, v5);
            v15 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_73;
          }

          if (dword_100BCE0C0 == 2)
          {
            sub_100258BA4(a2, v5, v4);
            goto LABEL_57;
          }

          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding SCO packet State %d, Numbytes %d", dword_100BCE0C0, v5);
          v18 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            return;
          }

LABEL_73:
          sub_10080F604();
          return;
        }

        if (a1 == 7)
        {
          if (*(v4 + 8) == 1)
          {
            v31 = 0;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            *__str = 0u;
            v26 = 0u;
            snprintf(__str, 0x64uLL, "BT Controller HCI_LMP wakeupCause (len=0x%x)", *a2);
            sub_100304AF8("OI_HCIIfc_DataReceived: %s", __str);
            sub_1001C499C(__str);
          }

          if (dword_100BCE0C0 == 2)
          {
            if (v5 - 1 == *a2)
            {
              if (off_100BCE0A8)
              {
                off_100BCE0A8(7);
              }

              goto LABEL_57;
            }

            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("OI_HCIIfc_DataReceived, Got incorrect packet on LMP channel: expected %d gotfirst 3 bytes %d %d %d", v5, *a2, a2[1], a2[2]);
            v23 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding ACI packet State %d, Numbytes %d", dword_100BCE0C0, v5);
            v19 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          sub_10080F604();
          return;
        }

        if (a1 != 243)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (a1 <= 2)
        {
          if (a1 == 1)
          {
            if (!sub_10000C240())
            {
              goto LABEL_56;
            }

            sub_10000AF54("OI_HCIIfc_DataReceived, invalid dataType %d, NumBytes %d", 1, v5);
            v13 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_56;
            }

LABEL_55:
            sub_10080F604();
LABEL_56:
            sub_1000D660C();
            goto LABEL_57;
          }

          if (a1 != 2)
          {
LABEL_53:
            if (!sub_10000C240())
            {
              goto LABEL_56;
            }

            sub_10000AF54("OI_HCIIfc_DataReceived, unknown dataType %d, state %d", a1, dword_100BCE0C0);
            v16 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          goto LABEL_24;
        }

        if (a1 != 3)
        {
          if (*(v4 + 8) == 1)
          {
            v31 = 0;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            *__str = 0u;
            v26 = 0u;
            snprintf(__str, 0x64uLL, "BT Controller HCI_EVENT wakeupCause (eventCode=0x%x paramLen=%d)", *a2, a2[1]);
            sub_100304AF8("OI_HCIIfc_DataReceived: %s", __str);
            sub_1001C499C(__str);
          }

          if (v5 < 3)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Short event, numBytes = %d", v5);
              v20 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }

          else
          {
            ++dword_100B5FC3C;
            if (off_100BCE0A8)
            {
              off_100BCE0A8(4);
              goto LABEL_57;
            }

            if (*a2 == 19)
            {
              sub_1000BB1A4(a2, v5, v4);
LABEL_98:
              sub_10000C1F8(v24);
              goto LABEL_57;
            }

            if (!off_100BCE138 || off_100BCE138(a2, v5, v4))
            {
              sub_1000047E8(a2, v5, v4);
              goto LABEL_98;
            }
          }

LABEL_57:
          if (byte_100B5FC55 != 1)
          {
            return;
          }

          if (a1 > 4)
          {
            if (a1 <= 6)
            {
              if (a1 == 5)
              {
                v17 = "OI_HCI_ISO_DATA_PACKET";
              }

              else
              {
                v17 = "OI_HCI_ACL_DATA_WITH_TS_PACKET";
              }

              goto LABEL_85;
            }

            if (a1 == 7)
            {
              v17 = "HCI_ACI_PACKET_TYPE";
              goto LABEL_85;
            }

            if (a1 == 243)
            {
              v17 = "OI_HCI_SCO_HDR_DATA_PACKET";
              goto LABEL_85;
            }
          }

          else
          {
            if (a1 > 2)
            {
              if (a1 == 3)
              {
                v17 = "OI_HCI_SCO_DATA_PACKET";
              }

              else
              {
                v17 = "OI_HCI_EVENT_PACKET";
              }

              goto LABEL_85;
            }

            if (a1 == 1)
            {
              v17 = "OI_HCI_COMMAND_PACKET";
              goto LABEL_85;
            }

            if (a1 == 2)
            {
              v17 = "OI_HCI_ACL_DATA_PACKET";
LABEL_85:
              if (sub_10000C240())
              {
                sub_10000AF54("OI_HCIIfc_DataReceived asserting wake force for %s", v17);
                v21 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = sub_10000C0FC();
                  *__str = 136446210;
                  *&__str[4] = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", __str, 0xCu);
                }
              }

              sub_1001BB918(v17);
              return;
            }
          }

          v17 = "OI_HCI_UNKNOWN_TYPE";
          goto LABEL_85;
        }
      }

      ++dword_100B5FC4C;
      if (dword_100BCE0C0 == 2)
      {
        sub_1002589A0(a2, v5, v4);
        goto LABEL_57;
      }

      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding SCO packet State %d, Numbytes %d", dword_100BCE0C0, v5);
      v14 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_73;
    }

LABEL_13:
    v8 = a2;
    goto LABEL_14;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding data Type %d, NumBytes %d", a1, v5);
    v5 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  if (a1 == 4 && a2 && *a2 == 16)
  {
    sub_1000C52F4(650);
    goto LABEL_13;
  }
}

void sub_1000040DC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  if (v3 == 3 && (byte_100B5C6E0 & 1) == 0)
  {
    if (v2 < 3)
    {
      return;
    }

    v7 = 0;
    v5 = 3;
    goto LABEL_46;
  }

  if (v3 == 243 && (byte_100B5C6E0 & 1) == 0)
  {
    if (v2 < 4)
    {
      return;
    }

    v7 = 0;
    v5 = 4;
    goto LABEL_46;
  }

  if (v3 != 5 || (byte_100B5C6E0 & 1) != 0)
  {
    v7 = 0;
    v8 = v3 == 2;
    if (v3 != 2 || (byte_100B5C6E1 & 1) != 0)
    {
LABEL_36:
      if (v8 && v5 >= 8 && (byte_100B5C6E7 & 1) == 0 && sub_1000B0514(v6, 2))
      {
        v7 = 8;
      }

      if (v4 == 4 && (byte_100B5C6E5 & 1) == 0 && sub_1000043B0(v6, v5) >= 1)
      {
        bzero(v12, 0x20006uLL);
        __memcpy_chk();
        v10 = sub_100004468(4, 0);
        sub_1000045A8(v12, v5, 0, v10);
        return;
      }

      goto LABEL_46;
    }

    if (v2 >= 0xB)
    {
      v8 = 1;
      if (sub_1000B0514(v1, 1))
      {
        v7 = 11;
        goto LABEL_36;
      }
    }

    if (v5 >= 0xAu && (v6[8] & 0xFC) == 0xA0)
    {
      v9 = v6[9];
      if (v9 == 17)
      {
        if (v5 == 11 && (v6[10] & 0xEF) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (v9 == 1 && (v5 & 0xFE) == 0x12 && !v6[11])
      {
LABEL_49:
        v7 = 8;
        goto LABEL_35;
      }
    }

    v7 = 0;
LABEL_35:
    v8 = 1;
    goto LABEL_36;
  }

  if (v2 < 0xD)
  {
    if (v2 >= 9)
    {
      if ((v1[1] & 0x40) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 8;
      }
    }
  }

  else
  {
    if ((v1[1] & 0x40) != 0)
    {
      v7 = 0;
      v5 = 12;
      goto LABEL_46;
    }

    v5 = 8;
  }

  v7 = 0;
LABEL_46:
  v11 = sub_100004468(v4, 0);

  sub_1000045A8(v6, v5, v7, v11);
}

uint64_t sub_1000043B0(void *a1, size_t __n)
{
  v2 = __n;
  v4 = memchr(a1, 3, __n);
  if (!v4)
  {
    return -1;
  }

  v5 = a1;
  while ((a1 - v4 + v2) < 8u)
  {
    if (!(a1 - v4 + v2))
    {
      v6 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v5 = v4 + 1;
    v6 = (a1 - v4 + v2 - 1);
LABEL_8:
    v4 = memchr(v5, 3, v6);
    if (!v4)
    {
      return -1;
    }
  }

  if (*v4 != 0xFD6F1617FD6F0303)
  {
    goto LABEL_7;
  }

  return (8 - (a1 - v4));
}

uint64_t sub_100004468(uint64_t result, int a2)
{
  if (!result && (a2 & 1) != 0)
  {
    return 255;
  }

  v2 = a2;
  if (result != 1)
  {
    v2 = 0;
  }

  if (v2)
  {
    return 0;
  }

  if (result == 1 && !a2)
  {
    return 1;
  }

  v3 = a2;
  if (result != 2)
  {
    v3 = 0;
  }

  if (v3)
  {
    return 2;
  }

  if (result == 2 && !a2)
  {
    return 3;
  }

  v4 = a2;
  if (result != 3)
  {
    v4 = 0;
  }

  if (v4)
  {
    return 8;
  }

  if (result == 3 && !a2)
  {
    return 9;
  }

  v5 = a2;
  if (result != 243)
  {
    v5 = 0;
  }

  if (v5)
  {
    return 24;
  }

  if (result == 243 && !a2)
  {
    return 25;
  }

  if (result == 4)
  {
    return 1;
  }

  v6 = a2;
  if (result != 5)
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  if (result == 5 && !a2)
  {
    return 13;
  }

  if (result <= 31)
  {
    if (result == 7)
    {
      return 10;
    }

    if (result == 8 && (a2 & 1) == 0)
    {
      return 11;
    }

    return 255;
  }

  if (result != 32 && result != 33 && result != 34)
  {
    return 255;
  }

  return result;
}

void sub_1000045A8(const void *a1, uint64_t a2, signed int a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_10000479C();
  if (dword_100B52010 == -1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = qword_100B5C828;
  if ((v9 & 1) != 0 || qword_100B5C828)
  {
    v11 = malloc_type_malloc((v7 + 13), 0x784918BEuLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc((v5 + 13), 0x545BA93uLL);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1000A5B88(v13, (v5 + 13), a1, v5, v4);
        v16 = sub_1000A5B88(v12, (v7 + 13), a1, v7, v4);
        if (v15 | v16)
        {
          v17 = v16;
          if (v10)
          {
            v18 = word_100B5C830;
            if (word_100B5C830 + v16 <= 0x800)
            {
              memcpy((qword_100B5C828 + word_100B5C830), v12, v16);
              word_100B5C830 = v18 + v17;
            }
          }

          if (v9)
          {
            if (qword_100B5C8A0 != -1)
            {
              sub_100812D28();
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_1000A5D64;
            block[3] = &unk_100AE5940;
            block[4] = v12;
            block[5] = v14;
            v21 = v17;
            v22 = v15;
            dispatch_async(qword_100B5C898, block);
            return;
          }
        }

        free(v12);
        v19 = v14;
      }

      else
      {
        v19 = v12;
      }

      free(v19);
    }
  }
}

uint64_t sub_10000479C()
{
  if (qword_100B5C8D8 && CFSetGetCount(qword_100B5C8D8) > 0)
  {
    return 1;
  }

  result = qword_100B5C8E0;
  if (qword_100B5C8E0)
  {
    return CFSetGetCount(qword_100B5C8E0) > 0;
  }

  return result;
}

void sub_1000047E8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v128 = 0;
  v129 = 0;
  if (a2 > 1)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 2063, "buf");
    }

    v128 = a1;
    LOWORD(v129) = a2;
    BYTE6(v129) = 1;
    WORD1(v129) = a2;
    v7 = *a1;
    WORD2(v129) = 2;
    v8 = a1[1];
    v9 = sub_100005FEC(v7);
    if (!v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 607, v7);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v16 = off_100B5FC68;
      if (off_100B5FC68)
      {
        v17 = 607;
        goto LABEL_18;
      }

      sub_1000C52F4(607);
LABEL_293:
      sub_1000C52F4(651);
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1909, "OI_STATUS _handle_ReturnLinkKeys(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_294:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1909, "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(linkKey))");
    }

    v14 = v9;
    if (a2 - 2 < v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("event data underrun, paramTotalLen: %d, bytesAvail: %d, eventId: %d", v8, a2 - 2, *v14);
        v15 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v16 = off_100B5FC68;
      if (off_100B5FC68)
      {
        v17 = 651;
LABEL_18:
        v16(v17, v7);
        return;
      }

      goto LABEL_293;
    }

    if (dword_100BCE0C0 <= 6)
    {
      if (((1 << dword_100BCE0C0) & 0x33) != 0)
      {
        if ((v7 > 0x15 || ((1 << v7) & 0x20C000) == 0) && v7 != 255)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Device initialization in progress, ignoring event %@", a1, a2);
            v19 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_4;
            }
          }

          return;
        }
      }

      else if (((1 << dword_100BCE0C0) & 0x48) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("HCI device initialation/reset failed, ignoring event %@", a1, a2);
          v20 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }

        return;
      }
    }

    if (!v9[1])
    {
      LOWORD(v130) = 0;
      WORD2(v133[0]) = 0;
      LODWORD(v133[0]) = 0;
      *&v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *buf = 0u;
      v136 = 0u;
      if (*(a3 + 8) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("_genericEventHandler: wakeupCause HCI_EVENT Packet from BT Controller (id=0x%02x paramLen=%d)\n", *v14, v8);
          v32 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v159 = 136446210;
            *&v159[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", v159, 0xCu);
          }
        }
      }

      v33 = sub_1000DBBBC(buf, v14, &v128, v8, &v130, v133);
      if (v33)
      {
        v34 = v33;
        sub_100257EDC(v14);
        v35 = *(v14 + 1);
        if (!v35 || *v35 != 115)
        {
          return;
        }

        *buf = v34;
      }

      else
      {
        sub_1000DC4E8(v14, v130, v133, 1);
      }

      v39 = *v14;
      v40 = *(a3 + 8);
      v41 = *a3;
      v42 = buf;
LABEL_191:
      sub_1000DC68C(v39, v42, v40, v41, v21, v10, v11, v12, v13);
      return;
    }

    v134 = 0;
    v21 = 0uLL;
    memset(v133, 0, sizeof(v133));
    if (*(a3 + 8) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("_specialEventHandler: wakeupCause HCI_EVENT Packet from BT Controller (id=0x%02x paramLen=%d)\n", *v14, v8);
        v22 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v23 = *(a3 + 8);
    v24 = *v14;
    if (v24 <= 0x18)
    {
      if (*v14 > 0xDu)
      {
        if (*v14 <= 0x12u)
        {
          if (v24 != 14)
          {
            if (v24 != 15)
            {
              return;
            }

            *buf = 0u;
            v136 = 0u;
            if (v8 != 4)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("handle_CommandStatus bad parm length: expected 4, got %d", v8);
                v63 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              goto LABEL_145;
            }

            v25 = WORD2(v129);
            if (WORD1(v129) > WORD2(v129))
            {
              if (BYTE6(v129) == 1)
              {
                ++WORD2(v129);
                v26 = sub_100022244(v128[v25]);
                v27 = WORD2(v129);
                if (WORD1(v129) <= WORD2(v129))
                {
                  v124 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                }

                else
                {
                  if (BYTE6(v129) == 1)
                  {
                    ++WORD2(v129);
                    byte_100BCE141 = v128[v27];
                    if (WORD1(v129) - (v27 + 1) <= 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1746, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                    }

                    v28 = v26;
                    v29 = *&v128[v27 + 1];
                    WORD2(v129) = v27 + 3;
                    if (sub_10002223C())
                    {
                      sub_100241B0C(v29, v28 == 712);
                    }

                    if (!v29)
                    {
                      goto LABEL_145;
                    }

                    v30 = v29 & 0xFC00;
                    if (dword_100BCE0C0 != 2 && !v28 && v30 != 64512)
                    {
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("HCI not initialized, ignoring event: %16@", v128, WORD1(v129));
                      v31 = sub_10000C050(0x2Eu);
                      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        return;
                      }

                      goto LABEL_178;
                    }

                    if (sub_1000DBBA8(&v128, v29, buf))
                    {
                      if (v28)
                      {
                        sub_10025734C(buf, v28);
                        goto LABEL_145;
                      }

                      v105 = sub_10001EE38(*&buf[6]);
                      if (v105)
                      {
                        if (v29 != 8205 && v29 != 8259 && v29 != 8325)
                        {
                          *&buf[8] = *(v105 + 10);
                          v106 = sub_10001EE74(buf, 0);
                          if (v106)
                          {
                            v107 = v106;
                            if (sub_10000C240())
                            {
                              sub_10000AF54("Unable to add opcode 0x%x to expected event queue with status %!", v29, v107);
                              v108 = sub_10000C050(0x2Eu);
                              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                              {
                                sub_10080F604();
                              }
                            }

                            if (off_100B5FC68)
                            {
                              off_100B5FC68(635, v29);
                              goto LABEL_145;
                            }

                            v126 = v29;
LABEL_318:
                            v127 = sub_10028A99C(v126);
                            sub_1001BAA68(635, v127);
                          }
                        }

                        goto LABEL_145;
                      }

                      if (!sub_10000C240())
                      {
                        goto LABEL_145;
                      }

                      sub_10000AF54("%! (%d)", 620, v29);
                      v112 = sub_10000C050(0x2Eu);
                      if (!os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_145;
                      }
                    }

                    else
                    {
                      if (sub_100022374(&v128, v29, buf) && !sub_10029F7C8(v29))
                      {
                        v110 = 769;
                        if (v30 == 64512 && off_100B5FC60)
                        {
                          if (off_100B5FC60(v28, v29, 255))
                          {
                            v110 = 0;
                          }

                          else
                          {
                            v110 = 769;
                          }
                        }

                        if (v28)
                        {
                          v111 = v28;
                        }

                        else
                        {
                          v111 = v110;
                        }

                        (v136)(v111, *(&v136 + 1), &v128);
                        goto LABEL_145;
                      }

                      if (v30 == 64512)
                      {
                        sub_1000A6224(v128, v129, v23);
                        goto LABEL_145;
                      }

                      if (!sub_10000C240() || (sub_10000AF54("Command Status, orphan event, opcode: %x, status %!", v29, v28), v109 = sub_10000C050(0x2Eu), !os_log_type_enabled(v109, OS_LOG_TYPE_ERROR)))
                      {
LABEL_145:
                        if (!byte_100BCE141)
                        {
                          return;
                        }

LABEL_290:
                        sub_1000228C0(sub_100022AA0, 0, 0);
                        return;
                      }
                    }

                    sub_1000E09C0();
                    goto LABEL_145;
                  }

                  v124 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1743, v124);
              }

              v123 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_307:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1739, v123);
            }

LABEL_305:
            v123 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_307;
          }

          *v159 = 0u;
          v160 = 0u;
          if (v8 <= 2)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("bad parm length: expected at least 3, got %d; eventId %d", v8, *v14);
              v54 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
LABEL_218:
                sub_1000E09C0();
                goto LABEL_289;
              }
            }

            goto LABEL_289;
          }

          if (WORD1(v129) - WORD2(v129) < v8)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("%! (%d)", 605, *v14);
              v79 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_218;
              }
            }

            goto LABEL_289;
          }

          v80 = WORD2(v129);
          if (WORD1(v129) <= WORD2(v129))
          {
            v125 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          }

          else
          {
            if (BYTE6(v129) == 1)
            {
              ++WORD2(v129);
              byte_100BCE141 = v128[v80];
              if (WORD1(v129) - (v80 + 1) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1591, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              v81 = *&v128[v80 + 1];
              WORD2(v129) = v80 + 3;
              if (!v81)
              {
                goto LABEL_289;
              }

              if (WORD1(v129) <= (v80 + 3))
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("handle_CommandComplete bad parm length: no status byte");
                  v88 = sub_10000C050(0x2Eu);
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_218;
                  }
                }

                goto LABEL_289;
              }

              WORD2(v129) = v80 + 4;
              v82 = sub_100022244(v128[(v80 + 3)]);
              if (sub_10002223C())
              {
                sub_100241B0C(v81, v82 == 712);
              }

              if (sub_100022374(&v128, v81, v159))
              {
                if (*&v159[4] == 1026)
                {
                  *buf = 0u;
                  v136 = 0u;
                  if ((sub_100258000(1, &v128, 1025, buf) & 1) == 0)
                  {
                    sub_100258000(15, &v128, 1025, buf);
                  }
                }

                (v160)(v82, *(&v160 + 1), &v128);
                goto LABEL_289;
              }

              if (sub_1000DBBA8(&v128, v81, v159))
              {
                if (v82)
                {
                  v104 = v82;
                }

                else
                {
                  v104 = 769;
                }

                sub_10025734C(v159, v104);
                goto LABEL_289;
              }

              if ((~v81 & 0xFC00) == 0)
              {
                sub_1000A6224(v128, v129, v23);
                goto LABEL_289;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("Command Complete, orphan event, opcode: %x, status %!\n", v81, v82);
                v113 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              v114 = sub_100004790();
              if (!v114 || sub_10009B9DC(v114, v115) != 7)
              {
                if (sub_10002223C())
                {
                  v149 = 0u;
                  v150 = 0u;
                  v147 = 0u;
                  v148 = 0u;
                  v145 = 0u;
                  v146 = 0u;
                  v143 = 0u;
                  v144 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v139 = 0u;
                  v140 = 0u;
                  v137 = 0u;
                  v138 = 0u;
                  *buf = 0u;
                  v136 = 0u;
                  if (sub_10000EFCC())
                  {
                    sub_100304ACC(buf, 256, "Bluetooth error - simulated { build=internal, reason=%d, description=%!, context=%d }", 635, 635, *v14);
                    sub_1001C4B04(buf);
                    if (!sub_10000C240())
                    {
                      goto LABEL_289;
                    }

                    sub_10000AF54("Bluetooth error - simulated { build=internal, reason=%d, description=%!, context=%d }", 635, 635, *v14);
                    v117 = sub_10000C050(0x2Eu);
                    if (!os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_289;
                    }
                  }

                  else
                  {
                    sub_100304ACC(buf, 256, "Bluetooth error - simulated { build=release, reason=%d, context=%d }", 635, *v14);
                    sub_1001C4B04(buf);
                    if (!sub_10000C240())
                    {
                      goto LABEL_289;
                    }

                    sub_10000AF54("Bluetooth error - simulated { build=release, reason=%d, context=%d }", 635, *v14);
                    v118 = sub_10000C050(0x2Eu);
                    if (!os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_289;
                    }
                  }

                  sub_1008149F0();
                  goto LABEL_289;
                }

                if (!off_100B5FC68)
                {
                  v126 = v81;
                  goto LABEL_318;
                }

                off_100B5FC68(635, v81);
LABEL_289:
                if (!byte_100BCE141)
                {
                  return;
                }

                goto LABEL_290;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("trace exit: handle_CommandComplete DEBUG events in halted mode");
              v116 = sub_10000C050(0x2Eu);
              if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                return;
              }

LABEL_278:
              sub_1000E09C0();
              return;
            }

            v125 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1588, v125);
        }

        if (v24 != 19)
        {
          if (v24 != 21)
          {
            return;
          }

          *&v159[4] = 0;
          *v159 = 0;
          memset(buf, 0, sizeof(buf));
          if (!v8)
          {
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("handle_ReturnLinkKeys bad parm length: expected at least 1, got %d", 0);
            v64 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_178;
          }

          v51 = WORD2(v129);
          if (WORD1(v129) <= WORD2(v129))
          {
            v120 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          }

          else
          {
            if (BYTE6(v129) == 1)
            {
              ++WORD2(v129);
              v52 = v128[v51];
              if (((22 * v52) | 1) == v8)
              {
                if (v128[v51])
                {
                  while (WORD1(v129) - WORD2(v129) > 5)
                  {
                    if (BYTE6(v129) != 1)
                    {
                      v119 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                      goto LABEL_297;
                    }

                    sub_1000075EC(v159, &v128[WORD2(v129)], 6uLL);
                    v53 = WORD2(v129);
                    WORD2(v129) += 6;
                    if (WORD1(v129) - WORD2(v129) <= 0xF)
                    {
                      goto LABEL_294;
                    }

                    *buf = *&v128[WORD2(v129)];
                    WORD2(v129) = v53 + 22;
                    nullsub_21();
                    if (!--v52)
                    {
                      return;
                    }
                  }

                  v119 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_297:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1908, v119);
                }

                return;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("handle_ReturnLinkKeys bad parm length: expected %d, got %d", (22 * v52) | 1, v8);
              v73 = sub_10000C050(0x2Eu);
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                return;
              }

LABEL_178:
              sub_1000E09C0();
              return;
            }

            v120 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1897, v120);
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Numcompleted packets should be handled by HCI flow");
        v57 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_178;
      }

      if (v24 != 2)
      {
        if (v24 != 3)
        {
          if (v24 != 5)
          {
            return;
          }

          v43 = *a3;
          LOWORD(v130) = 0;
          *&v159[4] = 0;
          *v159 = 0;
          *&v139 = 0;
          v137 = 0u;
          v138 = 0u;
          *buf = 0u;
          v136 = 0u;
          v44 = sub_1000DBBBC(buf, v14, &v128, v8, &v130, v159);
          if (v44)
          {
            v45 = v44;
            sub_100257EDC(v14);
            *buf = v45;
          }

          else
          {
            v65 = v130;
            sub_1000DC4E8(v14, v130, v159, 1);
            v66 = sub_100005FEC(6u);
            sub_1000DC4E8(v66, v65, v159, 1);
            if (!(*buf | v136))
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Status and Reason both SUCCESS for disconnect");
                v67 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              LODWORD(v136) = 105;
            }
          }

          v68 = *&buf[8];
          if (!*&buf[8])
          {
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Disconnect complete event for a connection we didn't know about %d\n", v130);
            v71 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_278;
          }

          v69 = *(*&buf[8] + 2);
          if (v69 > 3)
          {
            if (v69 == 4)
            {
LABEL_212:
              *(v68 + 124) = 7;
              v70 = *(v68 + 236);
              goto LABEL_214;
            }

            if (v69 == 5)
            {
              v70 = 0;
              LOBYTE(v69) = 7;
              goto LABEL_175;
            }
          }

          else
          {
            if (!*(*&buf[8] + 2))
            {
              *(*&buf[8] + 54) = 7;
              v70 = *(v68 + 148);
LABEL_214:
              sub_1000E4630(v68);
              sub_1000DC68C(5, buf, v23, v43, v87, v83, v84, v85, v86);
              if (!v70)
              {
                sub_1000E12C4(v68);
              }

              return;
            }

            if (v69 == 1)
            {
              v70 = 0;
LABEL_175:
              *(*&buf[8] + 56) = v69;
              goto LABEL_214;
            }
          }

          sub_1000D660C();
          goto LABEL_212;
        }

LABEL_85:
        v131 = 0;
        v132 = 0;
        v163 = 0;
        v161 = 0u;
        v162 = 0u;
        *v159 = 0u;
        v160 = 0u;
        v130 = 0;
        v46 = sub_1000DBBBC(v159, v14, &v128, v8, &v132 + 1, &v131);
        if (v46)
        {
          v47 = v46;
          sub_100257EDC(v14);
          *v159 = v47;
        }

        else
        {
          v60 = HIWORD(v132);
          v61 = 1;
          if (sub_1000DC4E8(v14, HIWORD(v132), &v131, 1))
          {
            if (v24 == 3)
            {
              v62 = 44;
            }

            else
            {
              v62 = 3;
            }

            v14 = sub_100005FEC(v62);
            v61 = sub_1000DC4E8(v14, v60, &v131, 1) == 0;
          }

          if (v24 == 3 && v61)
          {
            if (*v159)
            {
              if (!sub_1000DC4E8(v14, v60, &v131, 0))
              {
                return;
              }
            }

            else
            {
                ;
              }
            }
          }
        }

        v48 = DWORD2(v160);
        v49 = sub_1000E1FE8(&v131);
        v50 = v49;
        if (v48 > 0xEFu)
        {
          if (v48 - 240 > 1)
          {
LABEL_163:
            if (sub_10000C240())
            {
              sub_10000AF54("OI_HCIFlow_ConnectionComplete, unknown link type %d", v48);
              v72 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            goto LABEL_166;
          }
        }

        else
        {
          if (!v48)
          {
            goto LABEL_91;
          }

          if (v48 != 1)
          {
            if (v48 == 2)
            {
LABEL_91:
              v130 = 0;
              if (sub_1000E4F48(&v130))
              {
                  ;
                }
              }

LABEL_128:
              v59 = v130;
              goto LABEL_167;
            }

            goto LABEL_163;
          }
        }

        if (v49 && *v49 != -1)
        {
          v130 = 0;
          if (sub_10000C240())
          {
            sub_10000AF54("ConnectComplete RXed for existing remote device: %d - %d", HIWORD(v132), *v50);
            v58 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_128;
        }

LABEL_166:
        v130 = v50;
        v59 = v50;
LABEL_167:
        if (v59)
        {
          *&v159[8] = v59;
          if (*v159)
          {
LABEL_189:
            v42 = v159;
            goto LABEL_190;
          }

LABEL_187:
          v76 = HIWORD(v132);
          v77 = sub_1000ABB80(HIWORD(v132));
          if (v77)
          {
            v121 = v77;
            if (sub_10000C240())
            {
              sub_10000AF54("Duplicate LM handle 0x%x was already in use %:", v76, v121 + 3);
              v122 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            sub_1000C52F4(649);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1739, "OI_STATUS _handle_CommandStatus(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
            goto LABEL_305;
          }

          v78 = v130;
          *v130 = v76;
          sub_100259530(v78);
          goto LABEL_189;
        }

        if (*v159)
        {
          sub_10023C0C0(*v159, 0, &v131, v48, 0, v11, v12, v13);
          return;
        }

        if (v48 - 240 < 2 || v48 == 1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Connection Completed event - unknown ACL connection (%:)", &v131);
            v74 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v75 = sub_100255B2C(&v131, 2);
          v130 = v75;
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Connection Completed event - unknown SCO connection (%:)", &v131);
            v89 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v130 = sub_100255DF0(&v131);
          if (!v130)
          {
            goto LABEL_229;
          }

          v90 = sub_10023B994(v50);
          v75 = v130;
          if (!v90)
          {
            *(v130 + 6) = v50;
            goto LABEL_186;
          }
        }

        if (v75)
        {
LABEL_186:
          *&v159[8] = v75;
          goto LABEL_187;
        }

LABEL_229:
        v91 = 0;
        v158 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        *buf = 0u;
        if (v48 != 1 && v48 != 240)
        {
          v91 = v48 != 241;
        }

        buf[2] = v91;
        *buf = HIWORD(v132);
        if (sub_10000C240())
        {
          sub_10000AF54("HCI Connection Completed unable to allocate connection for %: disconnecting", &v131);
          v99 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v100 = sub_1000D6178(5u, v92, v93, v94, v95, v96, v97, v98, buf);
        v101 = sub_1000D6410(buf, v100);
        if (!v101)
        {
          return;
        }

        v102 = v101;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("OI_HCICMD_Disconnect failed: %!", v102, 20);
        v103 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_278;
      }

      v55 = v8;
      v56 = 0;
      goto LABEL_121;
    }

    if (*v14 <= 0x2Eu)
    {
      if (v24 != 25)
      {
        if (v24 != 34)
        {
          if (v24 != 44)
          {
            return;
          }

          goto LABEL_85;
        }

        v55 = v8;
        v56 = 1;
LABEL_121:
        sub_100257960(&v128, v55, v56);
        return;
      }
    }

    else
    {
      if (*v14 <= 0xFDu)
      {
        if (v24 != 47)
        {
          if (v24 == 62)
          {
            *buf = 0;
            if (sub_100006318(62, buf))
            {
              v36 = sub_1000DC660(*buf);
              if (v36)
              {
                v37 = v36;
                if (sub_10000C240())
                {
                  sub_10000AF54("%! (%d)", v37, 0);
                  v38 = sub_10000C050(0x2Eu);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }
              }
            }

            sub_10000636C(&v128, v14, v8, v23);
          }

          return;
        }

        v55 = v8;
        v56 = 2;
        goto LABEL_121;
      }

      if (v24 != 254)
      {
        sub_1000A6224(v128, v129, *(a3 + 8));
        return;
      }
    }

    *&v133[0] = &v128[WORD2(v129)];
    DWORD2(v133[0]) = v8;
    v42 = v133;
LABEL_190:
    v39 = v24;
    v40 = v23;
    v41 = 0;
    goto LABEL_191;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Short event, numBytes = %d", a2);
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      sub_1000E09C0();
    }
  }
}

unsigned __int8 *sub_100005FEC(unsigned int a1)
{
  if (a1 < 0x24)
  {
    v3 = a1 - 1;
    goto LABEL_12;
  }

  if (a1 < 0x37)
  {
    v3 = a1 - 9;
    goto LABEL_19;
  }

  if (a1 < 0x3A)
  {
    v3 = a1 - 10;
    goto LABEL_19;
  }

  if (a1 < 0x3F)
  {
    v3 = a1 - 11;
    goto LABEL_19;
  }

  if (a1 < 0x49)
  {
    v3 = a1 - 19;
    goto LABEL_19;
  }

  if (a1 < 0x58)
  {
    v3 = a1 - 33;
LABEL_19:
    result = &unk_100AE9390 + 24 * v3;
    if (*result == a1)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a1 <= 0x59)
  {
    v2 = -34;
  }

  else
  {
    v2 = 58;
  }

  v3 = v2 + a1;
LABEL_12:
  if (v3 <= 0x39u)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (sub_10000C240())
  {
    sub_10000AF54("Unrecognized Event (%d) index is %d\n", a1, v3);
    v5 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v5);
    }
  }

  return 0;
}

uint64_t sub_100006100(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  if (!a1 || !a2 || !a3)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid parameter pointer specified");
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_19:
    sub_10080F7A0();
    return 101;
  }

  if (*a1 != 1 || (a1[1] & 0xC0) != 0x40)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Cannot resolve a non-resolvable address.");
    v12 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_19;
  }

  if (qword_100B6B3F0 && word_100B6B3F8)
  {
    v6 = 0;
    v7 = 0;
    *a3 = 0;
    do
    {
      if (sub_100045978(a1, (qword_100B6B3F0 + v6 + 7)) && (*a3 & 1) == 0)
      {
        v8 = *(qword_100B6B3F0 + v6);
        v9 = *(qword_100B6B3F0 + v6 + 4);
        *(a2 + 6) = *(qword_100B6B3F0 + v6 + 6);
        *(a2 + 4) = v9;
        *a2 = v8;
        *a3 = 1;
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < word_100B6B3F8);
    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("No resolving cache defined.");
    v13 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (result)
    {
      v14 = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, " %{public}s", &v14, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006318(int a1, _DWORD *a2)
{
  if (!word_100B5FC70)
  {
    return 0;
  }

  v3 = 0;
  for (result = qword_100B5FC80; *(result + 8) != a1 && *(result + 9) != a1; result += 32)
  {
    if (++v3 >= word_100B5FC70)
    {
      return 0;
    }
  }

  *a2 = v3;
  return result;
}

void sub_10000636C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1797, "void LE_HCIEventHandler(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    goto LABEL_4;
  }

  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  if (v5 == v6)
  {
LABEL_4:
    if (sub_10000C240())
    {
      sub_10000AF54("Error, the LE command is %d bytes.", 0);
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1806, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v8 = a4;
  if (v5 <= v6)
  {
    v11 = 0;
    *(a1 + 15) = 1;
    v10 = v6;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v9 = *a1;
  v10 = v6 + 1;
  *(a1 + 6) = v6 + 1;
  v11 = *(v9 + v6);
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v11 - 1) > 0x7D || (v12 = byte_1008A49E0[v11], (v12 - 1) > 1))
  {
LABEL_40:
    if (*(a1 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Error retreiving the subevent code.");
        v26 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
LABEL_43:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      switch(v11)
      {
        case 1:
          sub_1002C44B8(a1, v8);
          return;
        case 2:
          sub_1002C49B0(a1, v8);
          return;
        case 3:
          sub_1002C4F8C(a1);
          return;
        case 4:
          sub_1002C5278(a1);
          return;
        case 5:
          sub_1002C54CC(a1);
          return;
        case 6:
          sub_1002C56CC(a1);
          return;
        case 7:
          sub_1002C5930(a1);
          return;
        case 10:
          v29 = 1;
          goto LABEL_76;
        case 12:
          sub_1002C5B10(a1);
          return;
        case 13:
          sub_100006A94(a1, v8);
          return;
        case 14:
          v30 = 1;
          goto LABEL_85;
        case 15:
          v28 = 1;
          goto LABEL_83;
        case 16:
          sub_1002C75B0(a1);
          return;
        case 18:
          sub_1002C5E88(a1);
          return;
        case 20:
          sub_1002C5CD8(a1);
          return;
        case 24:
          v27 = 1;
          goto LABEL_80;
        case 25:
          sub_1002C81CC(a1);
          return;
        case 26:
          sub_1002C892C(a1);
          return;
        case 27:
          sub_1002C8B54(a1);
          return;
        case 28:
          sub_1002C9208(a1);
          return;
        case 29:
          sub_1002C93B4(a1);
          return;
        case 30:
          sub_1002C9984(a1);
          return;
        case 33:
          sub_1002C7E54(a1);
          return;
        case 34:
          sub_1002C9B30(a1);
          return;
        case 35:
          sub_1002CCBE8(a1);
          return;
        case 36:
          v30 = 2;
LABEL_85:
          sub_1002C6898(v30, a1);
          break;
        case 37:
          v28 = 2;
LABEL_83:
          sub_1002C6F30(v28, a1, a3);
          break;
        case 38:
          v27 = 2;
LABEL_80:
          sub_1002C76B0(v27, a1);
          break;
        case 39:
          sub_1002CCF84(a1);
          break;
        case 40:
          sub_1002CD18C(a1);
          break;
        case 41:
          v29 = 2;
LABEL_76:
          sub_1002C6120(v29, a1, v8);
          break;
        case 43:
          sub_1002CD640(a1);
          break;
        case 44:
          sub_1002CA0EC(a1);
          break;
        case 45:
          sub_1002CA678(a1);
          break;
        case 46:
          sub_1002CA850(a1);
          break;
        case 47:
          sub_1002CA9C8(a1);
          break;
        case 48:
          sub_1002CB564(a1);
          break;
        case 49:
          sub_1002CBB64(a1);
          break;
        case 50:
          sub_1002CC4CC(a1);
          break;
        case 51:
          return;
        default:
          if (sub_10000C240())
          {
            sub_10000AF54("Unknown LE event code 0x%x", v11);
            v31 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_43;
            }
          }

          break;
      }
    }

    return;
  }

  v13 = &unk_1008A49C8 + 8 * v12;
  v14 = *v13;
  if (v14 + 2 > (a3 - 1))
  {
    v15 = 0;
LABEL_32:
    v24 = 0;
    goto LABEL_36;
  }

  if (v5 <= v6)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 99, "_Bool _leEventHandleValidate(uint8_t, OI_BYTE_STREAM *, uint8_t, OI_HCI_LM_HANDLE *)");
    v18 = 0;
  }

  else
  {
    v18 = v5 - v10;
  }

  if (v18 < v14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 99, "ByteStream_NumReadBytesAvail(*pBs) >= (hciLeEventLmHandleTable[idx].lmHandle_offset)");
  }

  v19 = *(a1 + 6) + v14;
  *(a1 + 6) = v19;
  if (*(a1 + 14) != 1)
  {
    v32 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_96;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 100, "_Bool _leEventHandleValidate(uint8_t, OI_BYTE_STREAM *, uint8_t, OI_HCI_LM_HANDLE *)");
    goto LABEL_95;
  }

  v20 = *(a1 + 5);
  if ((v20 - v19) <= 1)
  {
LABEL_95:
    v32 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_96:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 100, v32);
  }

  v15 = *(*a1 + v19);
  *(a1 + 6) = v19 + 2;
  if (v10 > v20)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 102, "(size_t)(pos) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v10;
  v21 = sub_1000ABB80(v15);
  if (!v21)
  {
    goto LABEL_32;
  }

  v22 = *(v13 + 1);
  if (v22 == 7)
  {
    v23 = sub_100255614(v21);
  }

  else
  {
    if (v22 != 4)
    {
      v24 = 1;
      goto LABEL_36;
    }

    v23 = sub_1000ABD24(v21);
  }

  v24 = v23;
LABEL_36:
  if (sub_10000C240())
  {
    sub_10000AF54("_leEventHandleValidate subcode (0x%02x) lmHandle: 0x%04x lMHandleTypes:%d validation result:%d ", v11, v15, *(v13 + 1), v24);
    v25 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v34 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v24)
  {
    goto LABEL_40;
  }

LABEL_17:
  if (sub_10000C240())
  {
    sub_10000AF54("LE_HCIEventHandler subcode (0x%02x) lmHandle: 0x%04x Invalid", v11, v15);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_10000C0FC();
      *buf = 136446210;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_100006A94(uint64_t *result, char a2)
{
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 425, "void _HCIEventHandler_ExtendedAdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v2 = 0;
    v64 = 0u;
    v65 = 0u;
    *ptr = 0u;
    v63 = 0u;
    v61 = 0u;
LABEL_4:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v2, 10);
    v6 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = *(result + 5);
  v5 = *(result + 6);
  v2 = v4 - v5;
  v64 = 0u;
  v65 = 0u;
  *ptr = 0u;
  v63 = 0u;
  v61 = 0u;
  if (v4 - v5 <= 9)
  {
    goto LABEL_4;
  }

  if (*(result + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 435, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(result + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of reports of the LE extended advertising report event");
    v46 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_6:
    sub_1000E09C0();
    return;
  }

  v7 = *result;
  *(result + 6) = v5 + 1;
  v8 = *(v7 + v5);
  BYTE1(ptr[1]) = a2;
  if (!v8)
  {
    return;
  }

  v9 = 0;
  while (1)
  {
    if (*(result + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 442, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(result + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 442, "void _HCIEventHandler_ExtendedAdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_73:
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the event type of the LE extended advertising report event");
      v47 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v10 = *(result + 6);
    if (*(result + 5) - v10 <= 1)
    {
      goto LABEL_73;
    }

    v11 = (*result + v10);
    v12 = *v11;
    LODWORD(v11) = v11[1];
    *(result + 6) = v10 + 2;
    v13 = v12 & 0x1F;
    WORD1(ptr[1]) = v12 & 0x1F;
    BYTE4(ptr[1]) = (v12 >> 5) & 3;
    BYTE14(v63) = v12 >> 7;
    BYTE13(v63) = v11 & 0x3F;
    BYTE12(v63) = (v11 & 0x40) != 0;
    HIBYTE(v63) = v11 >> 7;
    v14 = (v12 & 0x1F) - 16;
    if (v14 < 0xE && ((0x2C2Du >> v14) & 1) != 0)
    {
      v15 = byte_1008A4A5F[v14];
    }

    else
    {
      BYTE11(v63) = 1;
      v16 = sub_10000C240();
      if (v13)
      {
        if ((v13 & 4) != 0)
        {
          if (v16)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE & EXTENDED_ADVERTISING_EVENT_TYPE_DIRECTED_ADV");
            v23 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = sub_10000C0FC();
              *buf = 136446210;
              v67 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v15 = 1;
        }

        else
        {
          if (v16)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE");
            v19 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = sub_10000C0FC();
              *buf = 136446210;
              v67 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v15 = 0;
        }
      }

      else if ((v13 & 8) != 0)
      {
        if (v16)
        {
          sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_SCAN_RSP");
          v21 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_10000C0FC();
            *buf = 136446210;
            v67 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v15 = 4;
      }

      else
      {
        if (v16)
        {
          sub_10000AF54("legacy=false LE_ADVERTISING_TYPE_NON_CONNECTABLE_UNDIRECTED");
          v17 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = sub_10000C0FC();
            *buf = 136446210;
            v67 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v15 = 3;
      }
    }

    LOBYTE(v61) = v15 + 16 * BYTE13(v63) - 80;
    if (*(result + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 492, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(result + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 492, "void _HCIEventHandler_ExtendedAdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_77:
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the address type of the LE extended advertising report event");
      v48 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v25 = *(result + 5);
    v26 = *(result + 6);
    if (v25 <= v26)
    {
      goto LABEL_77;
    }

    v27 = *result;
    *(result + 6) = v26 + 1;
    BYTE1(v61) = *(v27 + v26);
    if ((v25 - (v26 + 1)) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 495, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v61 + 2, v27 + v26 + 1, 6uLL);
    v28 = *(result + 6);
    *(result + 6) = v28 + 6;
    if (*(result + 15))
    {
      break;
    }

    if (*(result + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 498, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v29 = *(result + 5);
    if (v29 <= (v28 + 6))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the primary PHY  of the LE extended advertising report event");
      v50 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v30 = *result;
    *(result + 6) = v28 + 7;
    BYTE5(ptr[1]) = *(v30 + (v28 + 6));
    LOBYTE(v64) = BYTE5(ptr[1]) >> 7;
    BYTE1(v64) = (BYTE5(ptr[1]) & 0x40) != 0;
    BYTE2(v64) = (BYTE5(ptr[1]) & 0x20) != 0;
    if (v29 <= (v28 + 7))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the secondary PHY of the LE extended advertising report event");
      v51 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(result + 6) = v28 + 8;
    BYTE6(ptr[1]) = *(v30 + (v28 + 7));
    if (v29 <= (v28 + 8))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event");
      v52 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(result + 6) = v28 + 9;
    HIBYTE(ptr[1]) = *(v30 + (v28 + 8));
    if (v29 <= (v28 + 9))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event");
      v53 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(result + 6) = v28 + 10;
    LOBYTE(v63) = *(v30 + (v28 + 9));
    if (v29 <= (v28 + 10))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event");
      v54 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(result + 6) = v28 + 11;
    LOBYTE(ptr[1]) = *(v30 + (v28 + 10));
    if ((v29 - (v28 + 11)) <= 1)
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the periodic advertising interval of the LE extended advertising report event");
      v55 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    WORD1(v63) = *(v30 + (v28 + 11));
    v31 = v28 + 13;
    *(result + 6) = v28 + 13;
    if (v29 <= (v28 + 13))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the direct address type of the LE extended advertising report event");
      v56 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v32 = v28 + 14;
    *(result + 6) = v32;
    BYTE4(v63) = *(v30 + v31);
    if ((v29 - v32) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 525, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v63 + 5, v30 + v32, 6uLL);
    v33 = *(result + 6);
    *(result + 6) = v33 + 6;
    if (*(result + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the direct address of the LE extended advertising report event");
      v57 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    if (*(result + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 528, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(result + 5) <= (v33 + 6))
    {
      *(result + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE extended advertising report event");
      v58 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v34 = *result;
    *(result + 6) = v33 + 7;
    v35 = (v33 + 6);
    v36 = *(v34 + v35);
    WORD4(v61) = *(v34 + v35);
    if (v36 >= 0xE6)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Too many data bytes in the LE extended advertising report event.");
      v59 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v37 = sub_100007618(v36, 0xA934A05EuLL);
    ptr[0] = v37;
    if (!v37)
    {
      goto LABEL_65;
    }

    v38 = WORD4(v61);
    if (!WORD4(v61))
    {
      goto LABEL_65;
    }

    if (*(result + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 540, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v39 = v37;
    v40 = *result;
    v41 = *(result + 6);
    if (*(result + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 540, "void _HCIEventHandler_ExtendedAdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
      v42 = 0;
    }

    else
    {
      v42 = *(result + 5) - v41;
    }

    if (v42 < WORD4(v61))
    {
      *(result + 15) = 1;
LABEL_114:
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE extended advertising report event");
      v60 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_116:
      sub_1000E09C0();
      return;
    }

    v43 = (v40 + v41);
    v44 = &v39[v38];
    do
    {
      v45 = *v43++;
      *v39++ = v45;
    }

    while (v39 < v44);
    *(result + 6) += WORD4(v61);
    if (*(result + 15))
    {
      goto LABEL_114;
    }

LABEL_65:
    if (BYTE1(v61) >= 2u)
    {
      BYTE1(v61) -= 2;
    }

    sub_100008150(&v61);
    sub_10000C1E8(ptr[0]);
    if (++v9 == v8)
    {
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the address of the LE advertising report event");
    v49 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }
  }
}

_BYTE *sub_1000075EC(_BYTE *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = (a3 + a2 - 1);
    v4 = 1;
    do
    {
      v5 = *v3--;
      *result++ = v5;
      v6 = v4++;
    }

    while (v6 < a3);
  }

  return result;
}

void *sub_100007618(size_t size, malloc_type_id_t type_id)
{
  v6 = qword_100B5B528;
  if (!qword_100B5B528)
  {
    sub_100304AF8("Attempt to call Malloc after Memory Manager was terminated", size, type_id, v2, v3);
    return 0;
  }

  if (HIDWORD(size))
  {
    return 0;
  }

  return malloc_type_zone_malloc(v6, size, type_id);
}

void sub_10000766C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_100007774(void *a1, int a2, int a3)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

uint64_t sub_1000078E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000C7698();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100007AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_100007AD0(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100007D74((a1 + 3), 24);
  return a1;
}

void sub_100007D4C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100007D74(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000766C(a1);
  return a1;
}

void sub_100007E08(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_100007E30(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_100007EE8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6EFE8 != -1)
  {
    sub_100843E7C();
  }

  return qword_100B6EFE0;
}

uint64_t *sub_100007F20(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1000080CC(a1, (v2 - *a2) >> 3);
  }

  return a1;
}

uint64_t sub_100007F88(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_100007FB8(a1);
  return a1;
}

void sub_100007FB8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E56C(v2);
    }
  }

  *(a1 + 8) = 1;
  sub_100008078(*a1);
}

void sub_10000801C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E5F0(v2);
    }
  }

  *(a1 + 8) = 0;
  sub_1000089A8(*a1);
}

void sub_100008078(pthread_mutex_t *a1)
{
  if (pthread_mutex_lock(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E49C();
    }
  }
}

void sub_1000080CC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100008108(a1, a2);
  }

  sub_1000C7698();
}

void sub_100008108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100008150(uint64_t result)
{
  v1 = qword_100B6B1E0;
  v2 = off_100B6B1D0;
  v4 = (result + 1);
  v3 = *(result + 1);
  memset(ptr, 0, 15);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(result + 4) == 0;
  }

  if (v5)
  {
    return;
  }

  if (!*(result + 58) && (*(result + 64) & 2) == 0)
  {
    goto LABEL_10;
  }

  v7 = *v4;
  if (v7 == 255)
  {
    *v4 = *(result + 51);
    *(result + 4) = *(result + 54);
LABEL_10:
    v8 = *v4;
    goto LABEL_11;
  }

  v8 = v7 - 2;
  *v4 = v8;
LABEL_11:
  if (v8 == 1 && (*(result + 2) & 0xC0) == 0x40)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    if (!sub_100006100((result + 1), v29, &v30) && v30 == 1)
    {
      *v4 = *v29;
      *(v4 + 3) = *&v29[3];
    }
  }

  v9 = *(result + 24);
  if (v9 <= 27)
  {
    if (v9 <= -40)
    {
      if (v9 >= 0xFFFFFFA1)
      {
        v10 = ((-40 - v9) / 5.0);
      }

      else
      {
        v10 = 10;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 11;
  }

  v11 = *(result + 44);
  if (v11 <= 3)
  {
    v12 = &xmmword_100B6B168 + v10;
    if (v11 == 1)
    {
      v13 = *v12;
    }

    else
    {
      v14 = v12[12];
      v12 += 12;
      v13 = v14;
    }

    if (v13 != -1)
    {
      *v12 = v13 + 1;
    }
  }

  v15 = *(result + 28);
  v16 = v15 < 3;
  if (v15 >= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packet status:%d", *(result + 28));
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
  }

  if (qword_100B6B208 && sub_10000C248(qword_100B6B208) && (v18 = sub_1000B47B8(qword_100B6B208), (ptr[0] = v18) != 0))
  {
    while (1)
    {
      v19 = sub_1000BC720(v18);
      if (*v4 == *(v19 + 1) && *(v4 + 3) == *(v19 + 4))
      {
        break;
      }

      sub_1000BC828(ptr);
      v18 = ptr[0];
      if (!ptr[0])
      {
        goto LABEL_42;
      }
    }

    v21 = v19;
    sub_1000BC77C(qword_100B6B208, ptr[0], 0);
    if (*(v21 + 28) != 1)
    {
      sub_1000D660C();
    }
  }

  else
  {
LABEL_42:
    if (*(result + 28) != 1)
    {
      v21 = 0;
      goto LABEL_50;
    }

    v21 = sub_100007618(0x50uLL, 0x101004026E51886uLL);
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *(v21 + 4) = 0u;
    v16 = 0;
    *(v21 + 2) = sub_100007618(0x672uLL, 0xCFEC402EuLL);
  }

  v22 = *(result + 8);
  if (v22 > 0x671 || (v23 = v21[4], v24 = v23 + v22, (v23 + v22) > 0x672u))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Total advertising data length %d is larger than max advertising length %d", v21[4] + *(result + 8), 1650);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
    goto LABEL_66;
  }

  memmove((*(v21 + 2) + v23), *(result + 16), v22);
  v25 = *(v21 + 2);
  memmove(v21, result, 0x50uLL);
  *(v21 + 2) = v25;
  v21[4] = v24;
  if (*(result + 28) == 1)
  {
    if (qword_100B6B208)
    {
      sub_1000B8B8C(qword_100B6B208, v21, 80);
    }

    return;
  }

LABEL_50:
  if (!v16)
  {
    goto LABEL_65;
  }

  if (!v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error : got a found event when scan is stopped");
      v28 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
        if (!v21)
        {
          return;
        }

        goto LABEL_66;
      }
    }

LABEL_65:
    if (!v21)
    {
      return;
    }

    goto LABEL_66;
  }

  if (v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = result;
  }

  v2(v26, v1);
  if (v21)
  {
LABEL_66:
    sub_10000C1E8(*(v21 + 2));
    sub_10000C1E8(v21);
  }
}

uint64_t *sub_10000856C(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000085C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1000085C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void (__cdecl ***sub_100008760(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100007D74((a1 + 1), 16);
  return a1;
}

void sub_1000088A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000088CC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000801C(a1);
  }

  return a1;
}

void *sub_100008904(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000C7698();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_1000089A8(pthread_mutex_t *a1)
{
  if (pthread_mutex_unlock(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E504();
    }
  }
}

double sub_1000089FC(uint64_t a1)
{
  *(a1 + 8) = 1;
  *a1 = &off_100B0A938;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 120) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 136) = &off_100AE0A78;
  *(a1 + 144) = 0;
  *(a1 + 152) = &off_100AE0A78;
  *(a1 + 222) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 213) = 0;
  *(a1 + 224) = &off_100AE0A78;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 272) = &off_100AE0A78;
  *(a1 + 280) = 0;
  *(a1 + 288) = &off_100AE0A78;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 307) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0;
  *(a1 + 409) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 367) = 0;
  *(a1 + 416) = a1 + 424;
  *&result = 0xFF00000000;
  *(a1 + 440) = 0xFF00000000;
  *(a1 + 448) = &off_100AE0A78;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a1 + 504;
  return result;
}

void sub_100008BB4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  bzero(v10, 0x1788uLL);
  if (off_100B663C8)
  {
    if (sub_100008D54(v4, v10, v5))
    {
      return;
    }

    if (v4 && *(v4 + 8) && *(v4 + 16))
    {
      if (byte_100B663D8 == 1 && (v10[16] & 1) == 0)
      {
        return;
      }

LABEL_16:
      off_100B663C8(v10, v3);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Response is empty.");
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 136446210;
        v9 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, " %{public}s", &v8, 0xCu);
      }
    }

    if (byte_100B663D8 != 1)
    {
      goto LABEL_16;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No callbacks defined.");
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100008D54(unsigned __int8 *a1, uint64_t a2, uint8x8_t a3)
{
  if (!a1 || (v4 = (a2 + 4096), v5 = *a1, *a2 = v5 & 0xF, *(a2 + 8) = a1 + 1, *(a2 + 2555) = a1[24], *(a2 + 5946) = v5 >> 4, *(a2 + 5968) = *(a1 + 13), *(a2 + 5970) = *(a1 + 7), *(a2 + 5974) = a1[43], *(a2 + 5981) = a1[44], a3.i32[0] = *(a1 + 45), v6 = vmovl_u8(a3).u64[0], v7 = vrev32_s16(v6), v7.i32[0] = v6.i32[0], *(a2 + 5982) = vuzp1_s8(v7, v6).u32[0], *(a2 + 5986) = *(a1 + 49), *(a2 + 2556) = a1[25], *(a2 + 5992) = a1 + 51, v8 = *(a1 + 4), *(a2 + 6022) = v8, !v8) || (v9 = *(a1 + 2)) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Response is empty.");
      v61 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v77 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  v10 = 0;
  v75 = 0;
  if (v8 >= 0x672)
  {
    v11 = 1650;
  }

  else
  {
    v11 = v8;
  }

  v73 = a2 + 6016;
  v72 = a2 + 5907;
  v71 = a2 + 5885;
  __dst = (a2 + 2521);
  while (2)
  {
    if (v8 <= v10)
    {
      goto LABEL_117;
    }

    v12 = *(v9 + v10);
    if (!*(v9 + v10))
    {
      goto LABEL_117;
    }

    v13 = v10 + 1;
    v14 = v12 - 1;
    if (v12 == 1 || v12 + (v10 + 1) > v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("parseADResponse Error [%@] Invalid advertising response data size (%u + %u)", v9, v8, v13, v12);
        v63 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_100815A90();
        }
      }

      v19 = 4059;
      goto LABEL_114;
    }

    v16 = v10 + 2;
    v17 = *(v9 + v13);
    v18 = v16 + v14;
    v19 = 0;
    switch(v17)
    {
      case 1:
        v19 = 0;
        *(a2 + 16) = *(v9 + v16);
        goto LABEL_73;
      case 2:
      case 3:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 20;
        v23 = (a2 + 2520);
        goto LABEL_30;
      case 4:
      case 5:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 20;
        v23 = (a2 + 2520);
        goto LABEL_64;
      case 6:
      case 7:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 20;
        v23 = (a2 + 2520);
        goto LABEL_62;
      case 8:
        if ((v12 - 1) < 0x1Fu)
        {
          v50 = (v12 - 1);
          v51 = 1;
          goto LABEL_78;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_PARTIAL_NAME)", v9, v8, (v12 - 1));
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_54;
          }
        }

        goto LABEL_72;
      case 9:
        if ((v12 - 1) < 0x1Fu)
        {
          v50 = (v12 - 1);
          v51 = 2;
LABEL_78:
          *(a2 + 2552) = v51;
          memmove(__dst, (v9 + v16), v50);
          v19 = 0;
          *(__dst + v50) = 0;
          goto LABEL_73;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_COMPLETE_NAME)", v9, v8, (v12 - 1));
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
LABEL_54:
            v44 = sub_10000C0FC();
            *buf = 136446466;
            v77 = v44;
            v78 = 1024;
            v79 = 0;
            v33 = v43;
            goto LABEL_55;
          }
        }

        goto LABEL_72;
      case 10:
        v19 = 0;
        *(a2 + 2553) = *(v9 + v16);
        *(a2 + 2554) = 1;
        goto LABEL_73;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 19:
      case 23:
      case 24:
      case 28:
      case 29:
      case 30:
      case 34:
      case 35:
      case 36:
      case 37:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
        goto LABEL_26;
      case 16:
        goto LABEL_73;
      case 18:
        v19 = 0;
        *(a2 + 2562) = *(v9 + v16);
        *(a2 + 2564) = *(v9 + v16 + 2);
        goto LABEL_73;
      case 20:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 2568;
        v23 = (a2 + 5068);
LABEL_30:
        v30 = 2;
        goto LABEL_65;
      case 21:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 2568;
        v23 = (a2 + 5068);
LABEL_62:
        v30 = 16;
        goto LABEL_65;
      case 22:
        v27 = (v9 + v16);
        v28 = (v12 - 1);
        v29 = 2;
        goto LABEL_57;
      case 25:
        v19 = 0;
        *(a2 + 2560) = *(v9 + v16);
        goto LABEL_73;
      case 26:
        v19 = 0;
        *(a2 + 2558) = *(v9 + v16);
        goto LABEL_73;
      case 27:
        if ((v12 - 1) == 7)
        {
          v34 = (v9 + v16);
          v35 = *v34;
          v36 = *(v34 + 2);
          *(v72 + 6) = *(v34 + 6);
          *(v72 + 4) = v36;
          *v72 = v35;
          v4[1810] = 1;
          if (sub_10000C240())
          {
            v37 = "Unknown";
            if (!v4[1817])
            {
              v37 = "Public";
            }

            v38 = "Random";
            if (v4[1817] != 1)
            {
              v38 = v37;
            }

            sub_10000AF54("AD Response Parsing: LE BT Device Address %: Type %s", v72, v38);
            v39 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = sub_10000C0FC();
              *buf = 136446210;
              v77 = v40;
              v41 = v39;
              v42 = OS_LOG_TYPE_DEFAULT;
LABEL_71:
              _os_log_impl(&_mh_execute_header, v41, v42, " %{public}s", buf, 0xCu);
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("AD Response Parsing: size of LE BT Address %u in advertisement is not compliant with specification.", v12);
          v48 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = sub_10000C0FC();
            *buf = 136446210;
            v77 = v49;
            v41 = v48;
            v42 = OS_LOG_TYPE_INFO;
            goto LABEL_71;
          }
        }

LABEL_72:
        v19 = 0;
LABEL_73:
        if (!v19)
        {
          v10 = v18;
          if (v18 < 0x672u)
          {
            continue;
          }
        }

        if (v19)
        {
          goto LABEL_114;
        }

LABEL_117:
        v19 = 0;
        *(a2 + 2557) = sub_100009A28(*(a2 + 16));
        return v19;
      case 31:
        v20 = v9 + v16;
        v21 = (v12 - 1);
        v22 = a2 + 2568;
        v23 = (a2 + 5068);
LABEL_64:
        v30 = 4;
LABEL_65:
        v45 = sub_1002D3E78(v20, v21, v30, v22, v23);
        goto LABEL_66;
      case 32:
        v27 = (v9 + v16);
        v28 = (v12 - 1);
        v29 = 4;
        goto LABEL_57;
      case 33:
        v27 = (v9 + v16);
        v28 = (v12 - 1);
        v29 = 16;
LABEL_57:
        v45 = sub_1000991E4(v27, v28, v29, a2);
LABEL_66:
        v19 = v45;
        goto LABEL_73;
      case 38:
        if ((v12 - 1) < 0x20u)
        {
          memmove((a2 + 5914), (v9 + v16), (v12 - 1));
          v19 = 0;
          v4[1849] = v14;
          goto LABEL_73;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid size %d for LE_ADV_RESPONSE_FORMAT_TDS)", (v12 - 1));
          v31 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = sub_10000C0FC();
            *buf = 136446466;
            v77 = v32;
            v78 = 1024;
            v79 = 0xFFFF;
            v33 = v31;
LABEL_55:
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        goto LABEL_72;
      case 46:
        if ((v12 - 1) != 6)
        {
          goto LABEL_72;
        }

        v19 = 0;
        v46 = (v9 + v16);
        v47 = *v46;
        *(v73 + 4) = *(v46 + 2);
        *v73 = v47;
        goto LABEL_73;
      default:
        if (v17 != 255)
        {
LABEL_26:
          sub_1000D660C();
          goto LABEL_72;
        }

        if ((v12 - 1) >= 0xFCu)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_MANUFACTURER", v9, v8, (v12 - 1));
            v65 = sub_10000C050(0x42u);
            v19 = 162;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_126;
            }

            goto LABEL_114;
          }

          goto LABEL_130;
        }

        if (v8 > (v10 + 3))
        {
          v24 = *(v9 + v16);
          if (v24 == 76)
          {
            v52 = v10 + 4;
            v53 = (v10 + 4);
            while (1)
            {
              if (v53 >= v18)
              {
                goto LABEL_103;
              }

              v54 = v52 + 1;
              v55 = *(v9 + v52);
              if ((v52 + 1) >= v18)
              {
                break;
              }

              v56 = v4[1809];
              if (v56 <= 0x13)
              {
                v4[1809] = v56 + 1;
                *(v71 + v56) = v55;
              }

              if (v55 == 18)
              {
                v4[1884] = 1;
              }

              if ((qword_100BCE1F0 & (1 << v55)) != 0)
              {
                v69 = v52;
                v57 = v52 + 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("found MFGR packet %d, holding power assertion", v55);
                  log = sub_10000C050(0x42u);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = sub_10000C0FC();
                    *buf = 136446210;
                    v77 = v58;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                  }
                }

                qword_100B6A5E0 = sub_1000B11F4();
                v54 = v57;
                v52 = v69;
                if (!dword_100B6A5D8)
                {
                  sub_1001BB790();
                  sub_10002195C(sub_1002D3FFC, 0, 10, &dword_100B6A5D8);
                  v52 = v69;
                  v54 = v57;
                }
              }

              if (v55 == 1)
              {
                v59 = 16;
              }

              else
              {
                v70 = v55;
                v60 = v52 + 2;
                if ((v52 + 2) >= v18)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("parseADResponse Error [%@] Invalid position %d for Apple type %d)", v9, v8, v60, v70);
                    v65 = sub_10000C050(0x42u);
                    v19 = 162;
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_126;
                    }

                    goto LABEL_114;
                  }

                  goto LABEL_130;
                }

                v59 = *(v9 + v54) & 0x1F;
                if (v59 == 31)
                {
                  LODWORD(v54) = v52 + 3;
                  v59 = *(v9 + (v52 + 2)) + 31;
                }

                else
                {
                  LODWORD(v54) = v52 + 2;
                }

                v55 = v70;
              }

              v52 = v54 + v59;
              v53 = (v54 + v59);
              if (v53 > v18)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("parseADResponse Error [%@] Invalid length %d for Apple type %d)", v9, v8, v59, v55);
                  v65 = sub_10000C050(0x42u);
                  v19 = 162;
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_114;
                }

LABEL_130:
                v19 = 162;
                goto LABEL_114;
              }

              v75 |= v55 == 2;
            }

            if ((v75 & 1) == 0)
            {
              v67 = v52 + 1;
              if (!sub_10000C240())
              {
                goto LABEL_130;
              }

              sub_10000AF54("parseADResponse Error [%@] Invalid position %d for Apple type %d)", v9, v8, v67, v55);
              v65 = sub_10000C050(0x42u);
              v19 = 162;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
LABEL_126:
                v66 = sub_10000C0FC();
                *buf = 136446466;
                v77 = v66;
                v78 = 1024;
                v79 = 162;
                _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }

LABEL_114:
              if (sub_10000C240())
              {
                sub_10000AF54("Failed to parse AD response with error %!", v19);
                v64 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              return v19;
            }

            v75 = 1;
          }

          else if (v24 == 196)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("AD Response parsing: Manufacturer Data vendor 0x%4x", 196);
              v25 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = sub_10000C0FC();
                *buf = 136446210;
                v77 = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }
        }

LABEL_103:
        memmove((a2 + 5633), (v9 + v16), v14);
        v19 = 0;
        v4[1788] = v14;
        goto LABEL_73;
    }
  }
}

BOOL sub_100009A28(int a1)
{
  if ((a1 & 0x1C) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid Dual mode support indication in AD flags 0x%x.", a1);
      v2 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v5 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }
  }

  return (~a1 & 0x18) == 0;
}

void sub_100009B00(unsigned __int8 *a1)
{
  if (qword_100BC7D28 != -1)
  {
    sub_1000E74E0();
  }

  v1 = 0;
  v2 = 0;
  operator new();
}

uint64_t sub_10000AB54(uint64_t a1, int a2)
{
  v3 = *(a1 + 2324);
  if (v3)
  {
    v4 = a2 + v3;
    v5 = __OFADD__(a2, v3);
    if (v4 != v4)
    {
      v5 = 1;
    }

    if (v3 > 0)
    {
      v6 = 127;
    }

    else
    {
      v6 = 0x80;
    }

    if (v5)
    {
      LOBYTE(v4) = v6;
    }

    if (v4 >= 19)
    {
      v7 = 19;
    }

    else
    {
      v7 = v4;
    }

    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109632;
      v10[1] = v3;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Applying RSSI offset of %d to %d, new rssi level is %d", v10, 0x14u);
    }
  }

  else
  {
    return a2;
  }

  return v7;
}

void sub_10000AC60(uint64_t a1, int a2)
{
  if (qword_100BC7AB8 != -1)
  {
    sub_10086A73C();
  }

  if (a2 == 27 || a2 == 127)
  {
    *(a1 + 216) = 383;
  }

  else
  {
    v4 = a2 - 126;
    if (a2 <= 20)
    {
      v4 = a2;
    }

    *(a1 + 216) = v4;
    *(a1 + 217) = a2 > 20;
    v5 = dword_100BC7AB0;
    if (dword_100BC7AB0)
    {
      v6 = v4;
      v7 = dword_100BC7AB0 + v4;
      if (v7 < 21)
      {
        if (v7 <= -128)
        {
          v9 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 67109888;
            v11 = a2;
            v12 = 1024;
            v13 = v6;
            v14 = 1024;
            v15 = v5;
            v16 = 1024;
            v17 = -127;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: RSSI original: %d converted: %d offset: %d adjusted to %d", &v10, 0x1Au);
          }

          LOBYTE(v7) = -127;
        }
      }

      else
      {
        v8 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 67109888;
          v11 = a2;
          v12 = 1024;
          v13 = v6;
          v14 = 1024;
          v15 = v5;
          v16 = 1024;
          v17 = 20;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: RSSI original: %d converted: %d offset: %d adjusted to %d", &v10, 0x1Au);
        }

        LOBYTE(v7) = 20;
      }

      *(a1 + 216) = v7;
    }
  }
}

uint64_t sub_10000AE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    *(a1 + 8) = v4;
    if (v4)
    {
      sub_10000C69C(v4);
    }

    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  return a1;
}

uint64_t sub_10000AE6C(uint64_t a1)
{
  if (sub_10000C5E0(a1 + 48) < 2)
  {
    return 0;
  }

  else
  {
    v2 = *sub_10000C5F8(a1 + 48);
    return (v2 | (*(sub_10000C5F8(a1 + 48) + 1) << 8));
  }
}

uint64_t sub_10000AEC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004973B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E428 != -1)
  {
    dispatch_once(&qword_100B6E428, block);
  }

  return byte_100B6E420;
}

uint64_t sub_10000AF54(char *a1, ...)
{
  va_start(va, a1);
  v3 = unk_100AEA838;
  bzero(&unk_100B6B978, 0x1000uLL);
  result = sub_10000AFD4(&v3, a1, va);
  if (result)
  {
    WORD2(v3) = 0;
    return sub_1003078F4(&v3, "Bad format string in debug output (error %d): %s", result, a1);
  }

  return result;
}

uint64_t sub_10000AFD4(uint64_t a1, unsigned __int8 *a2, const char **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    while (1)
    {
      if (!*(a1 + 2) || *(a1 + 2) - 1 <= *(a1 + 4))
      {
        if (*a1 != 1)
        {
          return 0;
        }

        if (!sub_1000D5E38(a1))
        {
          return 106;
        }

        v3 = *v4;
      }

      if (v3 == 37)
      {
        break;
      }

      v136 = *(a1 + 8);
      v137 = *(a1 + 4);
      *(a1 + 4) = v137 + 1;
      *(v136 + v137) = v3;
LABEL_299:
      v138 = *++v4;
      v3 = v138;
      if (!v138)
      {
        return 0;
      }
    }

    v6 = 0;
    v144 = 0;
    v143 = 0;
    v7 = 0;
    v8 = 1;
    v145 = 1;
    v146 = 0;
    while (1)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_299;
      }

      v10 = v4 + 1;
      v9 = v4[1];
      result = 115;
      if (v9 <= 0x6B)
      {
        v12 = v9 - 33;
        v13 = 1;
        v8 = 1;
        switch(v12)
        {
          case 0u:
            v14 = a3++;
            sub_1000CDD74(*v14);
            v16 = v15;
            goto LABEL_293;
          case 2u:
            sub_100062468(a1, "0x");
            goto LABEL_155;
          case 4u:
            v8 = 0;
            v77 = *(a1 + 8);
            v78 = *(a1 + 4);
            *(a1 + 4) = v78 + 1;
            *(v77 + v78) = 37;
            goto LABEL_295;
          case 9u:
            v68 = a3++;
            v69 = *v68;
            if (!*v68)
            {
              goto LABEL_171;
            }

            v148 = 0;
            v149 = 0;
            sub_10007A978(&v148, v69, 0);
            if (*v69)
            {
              v70 = 0;
              do
              {
                v71 = *(&v148 + v70);
                v151 = 0;
                v72 = -2;
                v73 = &v151;
                v150 = 0;
                do
                {
                  *--v73 = a0123456789abcd_0[v71 & 0xF];
                  v71 >>= 4;
                  v55 = __CFADD__(v72++, 1);
                }

                while (!v55);
                sub_100062468(a1, v73);
                ++v70;
              }

              while (v70 < *v69);
            }

            goto LABEL_258;
          case 0xAu:
            goto LABEL_296;
          case 0xCu:
            v145 = 0;
            goto LABEL_295;
          case 0xEu:
            v74 = a3++;
            v16 = *v74;
            if (*v74)
            {
              for (i = v16 + 1; ; ++i)
              {
                v76 = *(i - 1);
                if (v76 == 47 || v76 == 92)
                {
                  v16 = i;
                }

                else if (!*(i - 1))
                {
                  goto LABEL_293;
                }
              }
            }

            sub_100062468(a1, "(null)");
            v16 = 0;
            goto LABEL_293;
          case 0xFu:
            LOBYTE(v144) = (v7 < 1) | v144;
            if (v7 >= 1)
            {
              v7 *= 10;
            }

            goto LABEL_155;
          case 0x10u:
            v7 = (10 * v7) | 1;
            goto LABEL_295;
          case 0x11u:
            v67 = 2;
            goto LABEL_154;
          case 0x12u:
            v67 = 3;
            goto LABEL_154;
          case 0x13u:
            v67 = 4;
            goto LABEL_154;
          case 0x14u:
            v67 = 5;
            goto LABEL_154;
          case 0x15u:
            v67 = 6;
            goto LABEL_154;
          case 0x16u:
            v67 = 7;
            goto LABEL_154;
          case 0x17u:
            v67 = 8;
            goto LABEL_154;
          case 0x18u:
            v67 = 9;
LABEL_154:
            v7 = v67 + 10 * v7;
LABEL_155:
            v8 = 1;
            goto LABEL_295;
          case 0x19u:
            v93 = a3++;
            v94 = *v93;
            if (!*v93)
            {
              goto LABEL_171;
            }

            for (j = 0; j != 6; ++j)
            {
              if (j)
              {
                sub_100062468(a1, ":");
              }

              v96 = v94[j];
              LOBYTE(v149) = 0;
              v97 = -2;
              v98 = &v149;
              v148 = 0;
              do
              {
                *--v98 = a0123456789abcd_0[v96 & 0xF];
                v96 >>= 4;
                v55 = __CFADD__(v97++, 1);
              }

              while (!v55);
              sub_100062468(a1, v98);
            }

            goto LABEL_258;
          case 0x1Eu:
            v146 = 1;
            goto LABEL_295;
          case 0x1Fu:
            v60 = a3;
            v61 = *a3;
            a3 += 2;
            if (!v61)
            {
              goto LABEL_171;
            }

            v62 = *(v60 + 2);
            if (v62 > 0x8000)
            {
              return 101;
            }

            if (!v7)
            {
              v7 = 16;
            }

            if (!v62)
            {
              goto LABEL_258;
            }

            v63 = 0;
            while (v63 != 160)
            {
              v64 = v61[v63];
              LOBYTE(v149) = 0;
              v65 = -2;
              v66 = &v149;
              v148 = 0;
              do
              {
                *--v66 = a0123456789abcd_0[v64 & 0xF];
                v64 >>= 4;
                v55 = __CFADD__(v65++, 1);
              }

              while (!v55);
              sub_100062468(a1, v66);
              if (((v63 != v62 - 1) & v145) == 1)
              {
                sub_1000BE324(a1, 1);
              }

              if (++v63 == v62)
              {
                goto LABEL_250;
              }
            }

            sub_100062468(a1, " ...");
LABEL_250:
            v8 = 0;
            v13 = v6;
            goto LABEL_296;
          case 0x21u:
            v59 = a3++;
            if (*v59)
            {
              v16 = "TRUE";
            }

            else
            {
              v16 = "FALSE";
            }

            goto LABEL_293;
          case 0x32u:
            goto LABEL_19;
          case 0x33u:
            v81 = a3++;
            v82 = *v81;
            v148 = 0;
            if (!v82)
            {
              v82 = &v148;
              sub_100016250(&v148);
            }

            v83 = *v82;
            v84 = *(v82 + 2);
            v85 = ".";
            if (v84 < 0x64)
            {
              v85 = ".0";
            }

            if (v84 >= 0xA)
            {
              v86 = v85;
            }

            else
            {
              v86 = ".00";
            }

            sub_100095588(a1, v83 & 0x1FFF);
            sub_100062468(a1, v86);
            v87 = v84;
            v88 = a1;
            goto LABEL_238;
          case 0x3Au:
            v79 = a3++;
            v80 = *v79;
            if (v80 > 88)
            {
              if (v80 <= 102)
              {
                if (v80 > 98)
                {
                  if (v80 != 99)
                  {
                    if (v80 == 100)
                    {
LABEL_273:
                      v16 = "\x1B[1;30m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[0;36m";
                }

                else
                {
                  if (v80 != 89)
                  {
                    if (v80 == 98)
                    {
                      v16 = "\x1B[0;34m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[1;33m";
                }

                goto LABEL_293;
              }

              if (v80 > 108)
              {
                switch(v80)
                {
                  case 'm':
                    v16 = "\x1B[0;35m";
                    break;
                  case 'y':
                    v16 = "\x1B[0;33m";
                    break;
                  case 'r':
                    v16 = "\x1B[0;31m";
                    goto LABEL_293;
                  default:
                    goto LABEL_276;
                }

                goto LABEL_293;
              }

              if (v80 == 103)
              {
                v16 = "\x1B[0;32m";
                goto LABEL_293;
              }

              if (v80 != 108)
              {
                goto LABEL_276;
              }
            }

            else
            {
              if (v80 <= 70)
              {
                if (v80 > 66)
                {
                  if (v80 != 67)
                  {
                    if (v80 == 68)
                    {
                      goto LABEL_273;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[1;36m";
                }

                else
                {
                  if (v80 != 48)
                  {
                    if (v80 == 66)
                    {
                      v16 = "\x1B[1;34m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[0;30m";
                }

                goto LABEL_293;
              }

              if (v80 > 76)
              {
                switch(v80)
                {
                  case 'M':
                    v16 = "\x1B[1;35m";
                    break;
                  case 'R':
                    v16 = "\x1B[1;31m";
                    break;
                  case 'W':
                    v16 = "\x1B[1;37m";
                    goto LABEL_293;
                  default:
LABEL_276:
                    v16 = "\x1B[0;39;49m";
                    goto LABEL_293;
                }

                goto LABEL_293;
              }

              if (v80 == 71)
              {
                v16 = "\x1B[1;32m";
                goto LABEL_293;
              }

              if (v80 != 76)
              {
                goto LABEL_276;
              }
            }

            v16 = "\x1B[0;37m";
LABEL_293:
            sub_100062468(a1, v16);
            goto LABEL_294;
          case 0x3Du:
            v99 = a3++;
            if (*v99)
            {
              sub_100238128(a1, *v99, 0);
              goto LABEL_294;
            }

LABEL_171:
            v16 = "(null)";
            goto LABEL_293;
          case 0x40u:
            v89 = a3++;
            v90 = *v89;
            if ((v146 & 1) == 0)
            {
              if (v90)
              {
                sub_100307540(a1, v90);
                goto LABEL_267;
              }

LABEL_233:
              v128 = "(null)";
              goto LABEL_265;
            }

            v91 = a3++;
            if (!v90)
            {
              goto LABEL_233;
            }

            v92 = *v91;
            if (v92)
            {
              sub_10030761C(a1, v90, v92);
              goto LABEL_267;
            }

            v128 = "(empty)";
LABEL_265:
            v127 = a1;
            goto LABEL_266;
          case 0x41u:
            v56 = a3++;
            v57 = *v56;
            if (v146)
            {
              v58 = a3++;
              v7 = *v58;
              if (v7 > 32)
              {
                return result;
              }
            }

            else if (!v7)
            {
              v7 = 32;
              goto LABEL_252;
            }

            if (v7 < 1)
            {
              goto LABEL_267;
            }

LABEL_252:
            v134 = 0x80000000 >> (32 - v7);
            do
            {
              if ((v134 & v57) != 0)
              {
                v135 = "1";
              }

              else
              {
                v135 = "0";
              }

              sub_100062468(a1, v135);
              v55 = v134 >= 2;
              v134 >>= 1;
            }

            while (v55);
            v146 = 0;
            goto LABEL_258;
          case 0x42u:
            v8 = 0;
            v100 = a3++;
            LODWORD(v100) = *v100;
            v101 = *(a1 + 8);
            v102 = *(a1 + 4);
            *(a1 + 4) = v102 + 1;
            *(v101 + v102) = v100;
            goto LABEL_295;
          case 0x43u:
            v103 = a3++;
            v104 = *v103;
            v105 = "+";
            if ((v6 & 1) == 0)
            {
              v105 = 0;
            }

            if (v104 >= 0)
            {
              v106 = v105;
            }

            else
            {
              v106 = "-";
            }

            if (v104 >= 0)
            {
              v107 = v104;
            }

            else
            {
              v107 = -v104;
            }

            LOWORD(v7) = v7 - ((v104 < 0) | v6 & 1);
            v108 = v107;
            do
            {
              v7 = (v7 - 1);
              v109 = v7 >= 1 && v108 > 9;
              v108 /= 0xAu;
            }

            while (v109);
            if (v7 < 1)
            {
              goto LABEL_236;
            }

            if (v144)
            {
              sub_100062468(a1, v106);
              sub_100307498(a1, "000000000000000", v7);
            }

            else
            {
              sub_1000BE324(a1, v7);
LABEL_236:
              sub_100062468(a1, v106);
            }

            v88 = a1;
            v87 = v107;
LABEL_238:
            sub_100095588(v88, v87);
            goto LABEL_258;
          default:
            return result;
        }
      }

      if (v4[1] <= 0x74u)
      {
        if (v9 == 108)
        {
          v121 = v4[2] - 98;
          if (v121 > 0x16)
          {
            return result;
          }

          if (((1 << v121) & 0x4A0007) != 0)
          {
            v8 = 1;
            v13 = v6;
          }

          else
          {
            if (v4[2] != 108 || v4[3] != 117)
            {
              return result;
            }

            v8 = 1;
            v13 = v6;
            v143 = 1;
          }

          BYTE4(v144) = 1;
          goto LABEL_296;
        }

        if (v9 == 112)
        {
          v110 = a3++;
          v150 = *v110;
          v111 = *(a1 + 8);
          v112 = *(a1 + 4);
          *(a1 + 4) = v112 + 1;
          *(v111 + v112) = 48;
          v113 = *(a1 + 8);
          v114 = *(a1 + 4);
          *(a1 + 4) = v114 + 1;
          *(v113 + v114) = 120;
          v115 = 7;
          do
          {
            v116 = v115;
            v117 = *(&v150 + v115);
            LOBYTE(v149) = 0;
            v148 = 0;
            v118 = -2;
            v119 = &v149;
            do
            {
              *--v119 = a0123456789abcd_0[v117 & 0xF];
              v117 >>= 4;
              v55 = __CFADD__(v118++, 1);
            }

            while (!v55);
            sub_100062468(a1, v119);
            v115 = v116 - 1;
          }

          while (v116);
          goto LABEL_294;
        }

        if (v9 != 115)
        {
          return result;
        }

        if ((v144 & 0x100000000) != 0)
        {
LABEL_19:
          v17 = a3++;
          v18 = *v17;
          if (v146)
          {
            v19 = a3++;
            if (v18)
            {
              v20 = *v19;
              if (v20)
              {
                v21 = v20;
                v22 = a1;
LABEL_207:
                sub_100307828(v22, v18, v21);
LABEL_267:
                v146 = 0;
LABEL_294:
                v8 = 0;
                goto LABEL_295;
              }

              v127 = a1;
              v128 = "(empty)";
LABEL_266:
              sub_100062468(v127, v128);
              goto LABEL_267;
            }
          }

          else if (v18)
          {
            v22 = a1;
            v21 = 0xFFFF;
            goto LABEL_207;
          }

          v127 = a1;
          v128 = "(null)";
          goto LABEL_266;
        }

        v129 = a3++;
        v130 = *v129;
        if (v146)
        {
          v131 = a3++;
          if (v130)
          {
            v132 = *v131;
            if (v132)
            {
              sub_100307498(a1, v130, v132);
LABEL_282:
              v146 = 0;
              v8 = 0;
              BYTE4(v144) = 0;
LABEL_295:
              v13 = v6;
              goto LABEL_296;
            }

            v133 = a1;
            v130 = "(empty)";
LABEL_281:
            sub_100062468(v133, v130);
            goto LABEL_282;
          }
        }

        else if (v130)
        {
          v133 = a1;
          goto LABEL_281;
        }

        v133 = a1;
        v130 = "(null)";
        goto LABEL_281;
      }

      if (v9 == 117)
      {
        if ((v144 & 0x100000000) != 0 || (v143 & 1) == 0)
        {
          v124 = a3++;
          v123 = *v124;
        }

        else
        {
          v122 = a3++;
          v123 = *v122;
        }

        if (v7 >= 1)
        {
          v125 = v7;
          v126 = v123;
          do
          {
            --v125;
            v109 = v126 > 9;
            v126 /= 0xAuLL;
          }

          while (v109);
          if (v125 >= 1)
          {
            sub_1000BE324(a1, v125);
          }
        }

        sub_100095588(a1, v123);
        goto LABEL_294;
      }

      if (v9 == 120)
      {
        if (!v7)
        {
          v7 = 8;
        }

        v120 = a3++;
        sub_1000623D8(a1, *v120, v7);
        goto LABEL_294;
      }

      if (v9 != 126)
      {
        return result;
      }

      v23 = a3;
      v24 = *a3;
      a3 += 2;
      if (v24)
      {
        v25 = *(v23 + 2);
        if (v25 <= 3)
        {
          v26 = *(v24 + 2);
          if (v26)
          {
            if (!*v24)
            {
              sub_1000D660C();
              v26 = *(v24 + 2);
            }

            if (v26 <= 0)
            {
              sub_1000D660C();
              LOWORD(v26) = *(v24 + 4);
            }

            v27 = *v24;
            if (!*v24 || (v142 = v26, !v26))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_varstring.c", 388, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
            }

            v28 = 0;
            v29 = 0;
            v140 = v25;
            v141 = v26;
            while (v25 <= 1)
            {
              if (!v25)
              {
                sub_1000D660C();
                goto LABEL_70;
              }

              if (v142 <= v29)
              {
                sub_1000D660C();
              }

              v30 = v29 + 1;
              v28 = *(v27 + v29);
              if (v28 < 0xC0)
              {
                ++v29;
              }

              else
              {
                if (v28 <= 0xFC)
                {
                  v32 = 5;
                  for (k = 252; k >= v28; k = (2 * k) & 0xF8)
                  {
                    --v32;
                  }

                  v31 = ~k;
                }

                else
                {
                  v31 = -253;
                  v32 = 5;
                }

                if (v32 + v30 > v142)
                {
                  v139 = v30;
                  sub_1000D660C();
                  v30 = v139;
                }

                v28 &= v31;
                if (!v32)
                {
                  v29 = v30;
LABEL_59:
                  v25 = v140;
                  goto LABEL_70;
                }

                v44 = v32;
                v45 = v30;
                v25 = v140;
                do
                {
                  v46 = v45++;
                  v28 = *(v27 + v46) & 0x3F | (v28 << 6);
                  --v44;
                }

                while (v44);
                v29 = v30 + v32;
              }

LABEL_70:
              v42 = *(a1 + 2);
              if (v28 <= 0xFE)
              {
                if (!*(a1 + 2) || (v47 = *(a1 + 4), v42 - 1 <= v47))
                {
                  if (*a1 != 1 || !sub_1000D5E38(a1))
                  {
                    goto LABEL_250;
                  }

                  v47 = *(a1 + 4);
                }

                v48 = *(a1 + 8);
                *(a1 + 4) = v47 + 1;
                *(v48 + v47) = v28;
                goto LABEL_86;
              }

LABEL_77:
              v49 = v42 - 7;
              if (v42 < 7 || (v50 = *(a1 + 4), v49 <= v50))
              {
                if (*a1 != 1 || !sub_1000D5E38(a1))
                {
                  goto LABEL_250;
                }

                v50 = *(a1 + 4);
              }

              v51 = *(a1 + 8);
              *(a1 + 4) = v50 + 1;
              *(v51 + v50) = 92;
              LOBYTE(v149) = 0;
              v148 = 0;
              v52 = -6;
              v53 = v28;
              v54 = &v149;
              do
              {
                *--v54 = a0123456789abcd_0[v53 & 0xF];
                v53 >>= 4;
                v55 = __CFADD__(v52++, 1);
              }

              while (!v55);
              if (sub_100062468(a1, v54))
              {
                goto LABEL_250;
              }

LABEL_86:
              if (v29 == v141)
              {
                goto LABEL_250;
              }
            }

            if (v25 == 2)
            {
              v33 = v29 + 2;
              if (v33 > v142)
              {
                sub_1000D660C();
              }

              v39 = (v27 + v29);
              v40 = *v39;
              LODWORD(v39) = v39[1];
              v28 = v40 | (v39 << 8);
              if ((v39 & 0xFC) == 0xD8)
              {
                v41 = (v29 + 2);
                v29 = v41 + 2;
                if (v41 + 2 > v142)
                {
                  sub_1000D660C();
                }

                v38 = (v27 + v41);
                v37 = v38 + 1;
                goto LABEL_57;
              }
            }

            else
            {
              v33 = v29 + 2;
              if (v33 > v142)
              {
                sub_1000D660C();
              }

              v34 = (v27 + v29);
              v35 = v34[1];
              LODWORD(v34) = *v34;
              v28 = v35 | (v34 << 8);
              if ((v34 & 0xFC) == 0xD8)
              {
                v36 = (v29 + 2);
                v29 = v36 + 2;
                if (v36 + 2 > v142)
                {
                  sub_1000D660C();
                }

                v37 = (v27 + v36);
                v38 = v37 + 1;
LABEL_57:
                v28 = (*v38 | ((*v37 & 3) << 8) & 0x3FF | ((v28 & 0x3FF) << 10)) + 0x10000;
                v42 = *(a1 + 2);
                v25 = v140;
                goto LABEL_77;
              }
            }

            v29 = v33;
            goto LABEL_59;
          }
        }
      }

      else
      {
        sub_100062468(a1, "(null)");
      }

LABEL_258:
      v8 = 0;
      v13 = v6;
LABEL_296:
      v6 = v13;
      v4 = v10;
      if (v7 > 32)
      {
        return 115;
      }
    }
  }

  return 0;
}

uint64_t sub_10000C050(unsigned int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100190CA0;
  block[3] = &unk_100AE4B20;
  v5 = a1;
  if (qword_100B57C98 != -1)
  {
    dispatch_once(&qword_100B57C98, block);
  }

  if (a1 >= 0x5C)
  {
    v2 = 92;
  }

  else
  {
    v2 = a1;
  }

  return qword_100B57CA0[v2];
}

uint64_t sub_10000C108(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004977B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E448 != -1)
  {
    dispatch_once(&qword_100B6E448, block);
  }

  return byte_100B6E440;
}

uint64_t sub_10000C198()
{
  v0 = sub_100022228();
  result = pthread_mutex_unlock(&stru_100B5AC18);
  if (v0)
  {

    return sub_1000BB9C0();
  }

  return result;
}

uint64_t sub_10000C1F8(uint64_t result)
{
  if ((byte_100B6D188 & 1) == 0 && byte_100B6D190)
  {
    do
    {
      byte_100B6D190 = 0;
      result = sub_1000228CC(result);
    }

    while ((byte_100B6D190 & 1) != 0);
  }

  return result;
}

uint64_t sub_10000C250@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8))
  {
    v2 = result;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__p = 0u;
    v14 = 0u;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    v10 = 0u;
    sub_100007AD0(&v10);
    v3 = 0;
    v4 = v11;
    *(&v12[-1] + *(v11 - 24) + 8) = *(&v12[-1] + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(&v12[-1] + *(v4 - 24) + 8) |= 0x4000u;
    while (1)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v5 = *(v5 + 16);
      }

      if (v3 >= v5)
      {
        break;
      }

      if (v3)
      {
        LOBYTE(v26.__locale_) = 32;
        sub_100007774(&v11, &v26, 1);
      }

      v6 = v11;
      v7 = &v12[-1] + *(v11 - 24);
      if (*(v7 + 36) == -1)
      {
        std::ios_base::getloc((&v12[-1] + *(v11 - 24)));
        v8 = std::locale::use_facet(&v26, &std::ctype<char>::id);
        (v8->__vftable[2].~facet_0)(v8, 32);
        std::locale::~locale(&v26);
        v6 = v11;
      }

      *(v7 + 36) = 48;
      *(v12 + *(v6 - 24) + 8) = 2;
      std::ostream::operator<<();
      ++v3;
    }

    std::stringbuf::str();
    *&v11 = v9;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(v12);
    std::iostream::~basic_iostream();
    return std::ios::~ios();
  }

  else
  {
    a2[23] = 4;
    strcpy(a2, "NULL");
  }

  return result;
}

void sub_10000C59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000C5E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C5F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C60C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100499204;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4B8 != -1)
  {
    dispatch_once(&qword_100B6E4B8, block);
  }

  return byte_100B6E4B0;
}

void sub_10000C69C(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0, memory_order_relaxed) <= 0x3FFFFFFF && atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed) <= 0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10082928C(v1);
    }
  }
}

void *sub_10000C704(void *a1, const void *a2, size_t a3)
{
  v6 = operator new(a3 + 24);
  v6[2] = 1;
  *v6 = &off_100B0A918;
  *(v6 + 2) = a3;
  memcpy(v6 + 6, a2, a3);
  *a1 = &off_100AE0A78;
  a1[1] = v6;
  return a1;
}

uint64_t sub_10000C798(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D7C0 != -1)
  {
    sub_10082C164();
  }

  return qword_100B6D7B8;
}

uint64_t sub_10000C7D0(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D810 != -1)
  {
    sub_10082C1C8();
  }

  return qword_100B6D808;
}

void sub_10000C808(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result + 2, 0, memory_order_relaxed) <= 0x3FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      v3 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100829310(v3);
      }
    }

    else if (result && add_explicit == 1)
    {
      v2 = *(*result + 8);

      v2();
    }
  }
}

uint64_t *sub_10000C8B8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100018154(result, a4);
  }

  return result;
}

uint64_t *sub_10000C954(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000CD6C(result, a4);
  }

  return result;
}

uint64_t sub_10000C9B4(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007B2558(v5, (v5 + 8), v4 + 28, (v4 + 28));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10000CA3C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10000C9B4(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10000CA94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (v4 || (v5 = qword_100BCEA60, os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT)) && (v6 = 136446210, v7 = "fQueue", _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu), (v4 = *(a1 + 8)) != 0))
  {
    dispatch_async(v4, v3);
  }
}

uint64_t *sub_10000CB74(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10003B814(a1, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 2));
  }

  return a1;
}

uint64_t sub_10000CBF0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v7 = objc_retainBlock(*(a2 + 7));
  *(a1 + 64) = 0;
  *(a1 + 56) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_10000C954((a1 + 64), *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 5));
  sub_10000CB74((a1 + 88), a2 + 11);
  sub_10000CA3C((a1 + 112), (a2 + 7));
  v8 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_10000C8B8((a1 + 144), *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 5));
  return a1;
}

void sub_10000CCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000CEDC(v3 + 112, *(v3 + 120));
  v5 = *(v3 + 88);
  if (v5)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  sub_10000CFB0(va);

  _Unwind_Resume(a1);
}

void sub_10000CD14(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_10000CD6C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_10000CD14(a1, a2);
  }

  sub_1000C7698();
}

void sub_10000CDB8(void **a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100018404(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *a1;
    v15 = a1[1];
    v16 = *a1 + 20 * v8 - v15;
    if (*a1 != v15)
    {
      v17 = *a1 + 20 * v8 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[4];
        *v17 = v18;
        v17 += 20;
        v14 += 5;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  a1[1] = v7;
}

void sub_10000CEDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000CEDC(a1, *a2);
    sub_10000CEDC(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000CF30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 12);
        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000CFB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000181A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10000D004(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E368 != -1)
  {
    sub_100831300();
  }

  return byte_100B6E360;
}

__n128 sub_10000D03C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

void sub_10000D058(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_10000D124(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

BOOL sub_10000D1C8(uint64_t a1)
{
  if (*(a1 + 81) == 32)
  {
    v2 = *(a1 + 8);
    if (*(v2 + 1))
    {
      return 1;
    }

    if ([*(v2 + 112) count])
    {
      return 1;
    }

    v3 = *(a1 + 8);
    if (v3[11] != v3[12] || v3[2] != v3[1])
    {
      return 1;
    }

    v7 = v3 + 15;
    v6 = v3 + 16;
    return *v7 != *v6;
  }

  if (*(a1 + 80) == 1)
  {
    v5 = *(a1 + 8);
    v6 = (v5 + 8);
    v7 = (v5 + 16);
    return *v7 != *v6;
  }

  return 0;
}

void sub_10000D27C(dispatch_source_t *a1)
{
  global_queue = dispatch_get_global_queue(17, 0);
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  a1[2] = v3;
  dispatch_set_context(v3, a1);
  dispatch_source_set_event_handler_f(a1[2], sub_1000461FC);
  v4 = a1[2];
  v5 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v4, v5, 0x2540BE400uLL, 0x3B9ACA00uLL);
  v6 = a1[2];

  dispatch_resume(v6);
}

void sub_10000D334(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B6EFD8 != -1)
  {
    sub_100843DC8();
  }

  if (qword_100B6EFD0 == a1)
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843F58(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  dispatch_sync(*(a1 + 8), v3);
}

void sub_10000D3C4(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      sub_10000D5B4(v5);
    }

    (*(*a1 + 16))(a1, object);
    v6 = *(a1 + 32);
    if (v6)
    {

      sub_10000EE38(v6);
    }
  }

  else if (type == &_xpc_type_error)
  {
    v7 = qword_100BCE950;
    if (object == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v8 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v8 = *v8;
        }

        v9 = 136446210;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closed XPC connection to session %{public}s", &v9, 0xCu);
      }

      (*(*a1 + 24))(a1, 0);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820900(object);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100820890();
  }
}

void sub_10000D5B4(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  *(a1 + 24) = 0;
  *(a1 + 4) = 1;
  ++*(a1 + 8);
  if (!*(a1 + 16))
  {
    sub_10000D27C(a1);
  }

  os_unfair_lock_unlock(a1);
}

void sub_10000D614(char *a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "kCBMsgId");
  v5 = (*(*a1 + 32))(a1, int64);
  v7 = v6 & 1;
  v8 = qword_100BCE950;
  if (v7 | v5)
  {
    v9 = v5;
    v10 = v6;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(*a1 + 56))(a1, int64);
      v12 = a1 + 56;
      if (a1[79] < 0)
      {
        v12 = *v12;
      }

      v20 = 136446466;
      v21 = v11;
      v22 = 2082;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received XPC message %{public}s from session %{public}s", &v20, 0x16u);
    }

    sub_10000EC68(a1, xdict);
    if (*(a1 + 16) && ((v13 = *(a1 + 34), v13 == 10) || v13 == 5 || v13 == 4 && ((*(*a1 + 40))(a1, int64) & 1) != 0 || ((*(*a1 + 48))(a1, int64) & 1) != 0) || int64 <= 9 && ((1 << int64) & 0x396) != 0)
    {
      v14 = &a1[v10 >> 1];
      if (v7)
      {
        v9 = *(*v14 + v9);
      }

      v9(v14, xdict);
    }

    else
    {
      v15 = *(a1 + 16);
      v16 = qword_100BCE950;
      v17 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          sub_100849F0C(a1, v16);
        }

        reply = xpc_dictionary_create_reply(xdict);
        if (reply)
        {
          v19 = reply;
          xpc_dictionary_set_int64(reply, "kCBMsgArgResult", 12);
          xpc_connection_send_message(*(a1 + 2), v19);
          xpc_release(v19);
        }
      }

      else if (v17)
      {
        sub_100849F9C(v16);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100849FE0(int64, v8);
  }
}

void (*sub_10000D8F4(uint64_t a1, uint64_t a2))(uint64_t a1, void *a2)
{
  result = sub_100012A28;
  switch(a2)
  {
    case 1:
      return result;
    case 2:
      v3 = sub_100022B5C;
      goto LABEL_150;
    case 4:
      v3 = sub_100062B28;
      goto LABEL_150;
    case 8:
      v3 = sub_10064DE64;
      goto LABEL_150;
    case 10:
      v3 = sub_1006510B4;
      goto LABEL_150;
    case 11:
      v3 = sub_100651190;
      goto LABEL_150;
    case 12:
      v3 = sub_10065120C;
      goto LABEL_150;
    case 13:
      v3 = sub_1006512E0;
      goto LABEL_150;
    case 14:
      v3 = sub_10065152C;
      goto LABEL_150;
    case 15:
      v3 = sub_100651938;
      goto LABEL_150;
    case 16:
      v3 = sub_100651BA8;
      goto LABEL_150;
    case 17:
      v3 = sub_100651CD0;
      goto LABEL_150;
    case 21:
      v3 = sub_100651E80;
      goto LABEL_150;
    case 22:
      v3 = sub_100652068;
      goto LABEL_150;
    case 23:
      v3 = sub_100654960;
      goto LABEL_150;
    case 24:
      v3 = sub_100654C44;
      goto LABEL_150;
    case 29:
      v3 = sub_100665928;
      goto LABEL_150;
    case 30:
      v3 = sub_100665C94;
      goto LABEL_150;
    case 31:
      v3 = sub_100665DCC;
      goto LABEL_150;
    case 33:
      v3 = sub_100652164;
      goto LABEL_150;
    case 34:
      v3 = sub_10065220C;
      goto LABEL_150;
    case 36:
      v3 = sub_100652668;
      goto LABEL_150;
    case 37:
      v3 = sub_100652530;
      goto LABEL_150;
    case 38:
      v3 = sub_100652FFC;
      goto LABEL_150;
    case 39:
      v3 = sub_100653430;
      goto LABEL_150;
    case 40:
      v3 = sub_1006534C0;
      goto LABEL_150;
    case 41:
      v3 = sub_1006537E8;
      goto LABEL_150;
    case 42:
      v3 = sub_100653ADC;
      goto LABEL_150;
    case 43:
      v3 = sub_1006540BC;
      goto LABEL_150;
    case 44:
      v3 = sub_100654180;
      goto LABEL_150;
    case 45:
      v3 = sub_1006541FC;
      goto LABEL_150;
    case 46:
      v3 = sub_1006543CC;
      goto LABEL_150;
    case 47:
      v3 = sub_1006545CC;
      goto LABEL_150;
    case 48:
      v3 = sub_100654650;
      goto LABEL_150;
    case 49:
      v3 = sub_100654F1C;
      goto LABEL_150;
    case 50:
      v3 = sub_1006550B4;
      goto LABEL_150;
    case 51:
      v3 = sub_100655314;
      goto LABEL_150;
    case 52:
      v3 = sub_1006554C4;
      goto LABEL_150;
    case 66:
      v3 = sub_100654D60;
      goto LABEL_150;
    case 69:
      v3 = sub_10065568C;
      goto LABEL_150;
    case 70:
      v3 = sub_1006559F8;
      goto LABEL_150;
    case 71:
      v3 = sub_10003E488;
      goto LABEL_150;
    case 72:
      v3 = sub_10003EBD4;
      goto LABEL_150;
    case 73:
      v3 = sub_10009F630;
      goto LABEL_150;
    case 74:
      v3 = sub_100656F70;
      goto LABEL_150;
    case 75:
      v3 = sub_100655E9C;
      goto LABEL_150;
    case 76:
      v3 = sub_100656578;
      goto LABEL_150;
    case 77:
      v3 = sub_100063DA4;
      goto LABEL_150;
    case 78:
      v3 = sub_1000C154C;
      goto LABEL_150;
    case 79:
      v3 = sub_10065718C;
      goto LABEL_150;
    case 80:
      v3 = sub_100658E94;
      goto LABEL_150;
    case 81:
      v3 = sub_1006591F4;
      goto LABEL_150;
    case 82:
      v3 = sub_10065954C;
      goto LABEL_150;
    case 83:
      v3 = sub_100659B0C;
      goto LABEL_150;
    case 84:
      v3 = sub_1006622E8;
      goto LABEL_150;
    case 85:
      v3 = sub_100661D30;
      goto LABEL_150;
    case 86:
      v3 = sub_100661E70;
      goto LABEL_150;
    case 87:
      v3 = sub_100662970;
      goto LABEL_150;
    case 88:
      v3 = sub_1006611E8;
      goto LABEL_150;
    case 89:
      v3 = sub_100662F28;
      goto LABEL_150;
    case 90:
      v3 = sub_100657044;
      goto LABEL_150;
    case 100:
      v3 = sub_10009ECF0;
      goto LABEL_150;
    case 102:
      v3 = sub_100659C44;
      goto LABEL_150;
    case 103:
      v3 = sub_100659C84;
      goto LABEL_150;
    case 104:
      v3 = sub_100659CC4;
      goto LABEL_150;
    case 105:
      v3 = sub_100659D50;
      goto LABEL_150;
    case 106:
      v3 = sub_100659DDC;
      goto LABEL_150;
    case 107:
      v3 = sub_100659EBC;
      goto LABEL_150;
    case 108:
      v3 = sub_10065A12C;
      goto LABEL_150;
    case 109:
      v3 = sub_10065A2C0;
      goto LABEL_150;
    case 110:
      v3 = sub_10065A4A8;
      goto LABEL_150;
    case 111:
      v3 = sub_1000AE1E8;
      goto LABEL_150;
    case 112:
      v3 = sub_10065A6C4;
      goto LABEL_150;
    case 113:
      v3 = sub_10065A8F8;
      goto LABEL_150;
    case 114:
      v3 = sub_10065AD3C;
      goto LABEL_150;
    case 115:
      v3 = sub_10065B678;
      goto LABEL_150;
    case 116:
      v3 = sub_10065BE00;
      goto LABEL_150;
    case 118:
      v3 = sub_100655C14;
      goto LABEL_150;
    case 119:
      v3 = sub_10065C3D4;
      goto LABEL_150;
    case 120:
      v3 = sub_10065C588;
      goto LABEL_150;
    case 121:
      v3 = sub_10065C7E0;
      goto LABEL_150;
    case 122:
      v3 = sub_10065C964;
      goto LABEL_150;
    case 123:
      v3 = sub_10065D04C;
      goto LABEL_150;
    case 124:
      v3 = sub_10065CCD8;
      goto LABEL_150;
    case 125:
      v3 = sub_10065D5F8;
      goto LABEL_150;
    case 126:
      v3 = sub_10065D96C;
      goto LABEL_150;
    case 127:
      v3 = sub_10065E0B4;
      goto LABEL_150;
    case 128:
      v3 = sub_10065E52C;
      goto LABEL_150;
    case 129:
      v3 = sub_10065E9FC;
      goto LABEL_150;
    case 130:
      v3 = sub_10065EF84;
      goto LABEL_150;
    case 131:
      v3 = sub_10065F304;
      goto LABEL_150;
    case 132:
      v3 = sub_10065F634;
      goto LABEL_150;
    case 133:
      v3 = sub_10065F7A4;
      goto LABEL_150;
    case 134:
      v3 = sub_10065FB6C;
      goto LABEL_150;
    case 135:
      v3 = sub_1006600D4;
      goto LABEL_150;
    case 137:
      v3 = sub_100661F2C;
      goto LABEL_150;
    case 138:
      v3 = sub_1006620CC;
      goto LABEL_150;
    case 139:
      v3 = sub_1006621D0;
      goto LABEL_150;
    case 144:
      v3 = sub_10065A7A8;
      goto LABEL_150;
    case 147:
      v3 = sub_100661790;
      goto LABEL_150;
    case 148:
      v3 = sub_100661A60;
      goto LABEL_150;
    case 149:
      v3 = sub_100660430;
      goto LABEL_150;
    case 150:
      v3 = sub_100660AF4;
      goto LABEL_150;
    case 151:
      v3 = sub_100660E88;
      goto LABEL_150;
    case 152:
      v3 = sub_10066269C;
      goto LABEL_150;
    case 153:
      v3 = sub_1006627B0;
      goto LABEL_150;
    case 154:
      v3 = sub_100663008;
      goto LABEL_150;
    case 155:
      v3 = sub_100663E54;
      goto LABEL_150;
    case 156:
      v3 = sub_1006630F4;
      goto LABEL_150;
    case 158:
      v3 = sub_100663738;
      goto LABEL_150;
    case 160:
      v3 = sub_10066388C;
      goto LABEL_150;
    case 164:
      v3 = sub_100663B88;
      goto LABEL_150;
    case 166:
      v3 = sub_100663F08;
      goto LABEL_150;
    case 170:
      v3 = sub_100663CD0;
      goto LABEL_150;
    case 172:
      v3 = sub_100662A78;
      goto LABEL_150;
    case 173:
      v3 = sub_100662BB4;
      goto LABEL_150;
    case 174:
      v3 = sub_100664050;
      goto LABEL_150;
    case 179:
      v3 = sub_100664330;
      goto LABEL_150;
    case 180:
      v3 = sub_100664550;
      goto LABEL_150;
    case 181:
      v3 = sub_10066472C;
      goto LABEL_150;
    case 182:
      v3 = sub_100664AB4;
      goto LABEL_150;
    case 183:
      v3 = sub_100664F78;
      goto LABEL_150;
    case 184:
      v3 = sub_100665284;
      goto LABEL_150;
    case 185:
      v3 = sub_1006653AC;
      goto LABEL_150;
    case 186:
      v3 = sub_1006654C8;
      goto LABEL_150;
    case 187:
      v3 = sub_100665614;
      goto LABEL_150;
    case 188:
      v3 = sub_1006657D4;
      goto LABEL_150;
    case 194:
      v3 = sub_100665FDC;
      goto LABEL_150;
    case 195:
      v3 = sub_100666240;
      goto LABEL_150;
    case 197:
      v3 = sub_1006663B8;
      goto LABEL_150;
    case 198:
      v3 = sub_100666554;
      goto LABEL_150;
    case 199:
      v3 = sub_10066693C;
      goto LABEL_150;
    case 200:
      v3 = sub_100666B04;
      goto LABEL_150;
    case 203:
      v3 = sub_100666CCC;
      goto LABEL_150;
    case 204:
      v3 = sub_100666E10;
      goto LABEL_150;
    case 206:
      v3 = sub_10066704C;
      goto LABEL_150;
    case 207:
      v3 = sub_1006671A8;
      goto LABEL_150;
    case 213:
      v3 = sub_100667314;
      goto LABEL_150;
    case 214:
      v3 = sub_10066751C;
      goto LABEL_150;
    case 217:
      v3 = sub_10066780C;
      goto LABEL_150;
    case 218:
      v3 = sub_100667C88;
      goto LABEL_150;
    case 219:
      v3 = sub_10064DF4C;
      goto LABEL_150;
    case 220:
      v3 = sub_10064E074;
      goto LABEL_150;
    case 223:
      v3 = sub_1006624D4;
      goto LABEL_150;
    case 229:
      v3 = sub_100667EE4;
      goto LABEL_150;
    case 230:
      v3 = sub_100656C54;
      goto LABEL_150;
    case 231:
      v3 = sub_100667F4C;
      goto LABEL_150;
    case 232:
      v3 = sub_100656CD4;
      goto LABEL_150;
    case 256:
      v3 = sub_100668790;
LABEL_150:
      result = v3;
      break;
    default:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085654C();
      }

      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10000E92C()
{
  if (qword_100B6D800 != -1)
  {
    sub_10082C1B4();
  }

  (*(*qword_100B6D7F8 + 40))(qword_100B6D7F8);
  return qword_100B6D7F8;
}

uint64_t sub_10000E990(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  v2 = sub_100007F88(v18, a1 + 296);
  if ((byte_100B6D6C8 & 1) == 0)
  {
    byte_100B6D6C8 = 1;
    sub_10000801C(v2);
    if (qword_100B50AA0 != -1)
    {
      sub_100828C4C();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 8);
    v17 = 0;
    v16 = 0;
    sub_1003FDE90(a1, &v17 + 1, &v17, &v16);
    v5 = sub_10000C7D0(v3, v4);
    sub_1001C3A60(0, v16, *(v5 + 800));
    sub_1001C3A24(sub_1003FE3C8);
    if (*(a1 + 20) == -1)
    {
      v6 = *(a1 + 24);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1003FE43C;
      handler[3] = &unk_100AF0BA0;
      handler[4] = a1;
      notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", (a1 + 20), v6, handler);
    }

    if (*(a1 + 16) == -1)
    {
      v7 = *(a1 + 24);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1003FE464;
      v14[3] = &unk_100AF0BA0;
      v14[4] = a1;
      notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 16), v7, v14);
    }

    sub_100304C38(sub_1003FDABC);
    v13 = 0;
    sub_100007E30(v11, "Logging");
    sub_100007E30(__p, "EnableVerboseL2CAPDump");
    (*(*a1 + 72))(a1, v11, __p, &v13);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    sub_10029DCC0(v13);
    (**a1)(a1);
    (*(*a1 + 32))(a1);
  }

  return sub_1000088CC(v18);
}

void sub_10000EC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

void sub_10000EC68(char *a1, void *a2)
{
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 456))(v4);
  if (a2 && v5)
  {
    if (xpc_get_type(a2) == &_xpc_type_error)
    {
      v11 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10084A058(v11);
      }
    }

    else
    {
      v6 = xpc_copy_description(a2);
      int64 = xpc_dictionary_get_int64(a2, "kCBMsgId");
      v8 = qword_100BCEA78;
      if (os_log_type_enabled(qword_100BCEA78, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (*(*a1 + 56))(a1, int64);
        v10 = a1 + 56;
        if (a1[79] < 0)
        {
          v10 = *v10;
        }

        v12 = 136446978;
        v13 = v9;
        v14 = 2082;
        v15 = v10;
        v16 = 1024;
        count = xpc_dictionary_get_count(a2);
        v18 = 2080;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Msg:%{public}s, Session:%{public}s, Count:%d, xpc_copy_description(args): %s ", &v12, 0x26u);
      }

      free(v6);
    }
  }
}

void sub_10000EE38(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  *(a1 + 4) = 0;
  *(a1 + 24) = 0;

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10000EE80(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D860 != -1)
  {
    sub_10082C274();
  }

  return qword_100B6D858;
}

uint64_t sub_10000EEB8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t sub_10000EFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000F034(a1, a2) + 40);

  return v2();
}

uint64_t sub_10000F034(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D820 != -1)
  {
    sub_10082C238();
  }

  return qword_100B6D818;
}

void sub_10000F06C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_100011690(a1, a2))
  {
    v3 = *v2;
    v219 = v2;
    if (*v2 > 15)
    {
      if (v3 > 17)
      {
        if (v3 == 18)
        {
          v241[0] = @"Connected";
          v112 = [NSNumber numberWithBool:*(v2 + 4)];
          v242[0] = v112;
          v241[1] = @"StartTime";
          v113 = [NSNumber numberWithUnsignedLongLong:*(v2 + 8)];
          v242[1] = v113;
          v241[2] = @"StopTime";
          v114 = [NSNumber numberWithUnsignedLongLong:*(v2 + 16)];
          v242[2] = v114;
          v241[3] = @"Duration";
          v115 = [NSNumber numberWithUnsignedLongLong:*(v2 + 24)];
          v242[3] = v115;
          v241[4] = @"UpgradeCount";
          v116 = [NSNumber numberWithUnsignedInt:*(v2 + 32)];
          v242[4] = v116;
          v241[5] = @"UpgradeDuration";
          v117 = [NSNumber numberWithUnsignedLongLong:*(v2 + 40)];
          v242[5] = v117;
          v241[6] = @"TimeBetweenUpgrades";
          v118 = [NSNumber numberWithUnsignedLongLong:*(v2 + 48)];
          v242[6] = v118;
          v241[7] = @"RSSI";
          v119 = [NSNumber numberWithLongLong:*(v2 + 56)];
          v242[7] = v119;
          v120 = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:8];

          sub_10003BA40(a1, 124, v120);
          goto LABEL_53;
        }

        if (v3 == 24)
        {
          v24 = objc_alloc_init(NSMutableDictionary);
          v25 = [NSNumber numberWithUnsignedInt:*(v2 + 4)];
          [v24 setObject:v25 forKey:@"LEPhyType"];

          v26 = [NSNumber numberWithUnsignedInt:*(v2 + 20)];
          [v24 setObject:v26 forKey:@"LeCoexDenials"];

          v27 = [NSNumber numberWithUnsignedInt:*(v2 + 16)];
          [v24 setObject:v27 forKey:@"LeDurationInMs"];

          v28 = [NSNumber numberWithUnsignedInt:*(v2 + 8)];
          [v24 setObject:v28 forKey:@"CumulativeLeTxBytes"];

          v29 = [NSNumber numberWithUnsignedInt:*(v2 + 12)];
          [v24 setObject:v29 forKey:@"CumulativeLeRxBytes"];

          v30 = *(v2 + 24);
          v220 = *(v2 + 32);
          if (v30 != v220)
          {
            v31 = 0;
            v32 = 0;
            do
            {
              v33 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v34 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v35 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v36 = [NSNumber numberWithUnsignedInt:**(v30 + 8 * v32)];
              [v24 setObject:v33 forKey:v36];

              v37 = [NSNumber numberWithUnsignedInt:*(*(v30 + 8 * v32) + 4)];
              [v24 setObject:v34 forKey:v37];

              v38 = [NSNumber numberWithUnsignedInt:*(*(v30 + 8 * v32) + 8)];
              [v24 setObject:v35 forKey:v38];

              ++v32;
              v31 += 8;
            }

            while (v30 + v31 != v220);
          }

          v39 = *(v219 + 48);
          v221 = *(v219 + 56);
          if (v39 != v221)
          {
            v40 = 0;
            v41 = 0;
            do
            {
              v42 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v43 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v44 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v45 = [NSNumber numberWithUnsignedInt:**(v39 + 8 * v41)];
              [v24 setObject:v42 forKey:v45];

              v46 = [NSNumber numberWithUnsignedInt:*(*(v39 + 8 * v41) + 4)];
              [v24 setObject:v43 forKey:v46];

              v47 = [NSNumber numberWithUnsignedInt:*(*(v39 + 8 * v41) + 8)];
              [v24 setObject:v44 forKey:v47];

              ++v41;
              v40 += 8;
            }

            while (v39 + v40 != v221);
          }

          v48 = *(v219 + 144);
          v222 = *(v219 + 152);
          if (v48 != v222)
          {
            v49 = 0;
            v50 = 0;
            do
            {
              v51 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v52 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v53 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v54 = [NSNumber numberWithUnsignedInt:**(v48 + 8 * v50)];
              [v24 setObject:v51 forKey:v54];

              v55 = [NSNumber numberWithUnsignedInt:*(*(v48 + 8 * v50) + 4)];
              [v24 setObject:v52 forKey:v55];

              v56 = [NSNumber numberWithUnsignedInt:*(*(v48 + 8 * v50) + 8)];
              [v24 setObject:v53 forKey:v56];

              ++v50;
              v49 += 8;
            }

            while (v48 + v49 != v222);
          }

          v57 = *(v219 + 168);
          v223 = *(v219 + 176);
          if (v57 != v223)
          {
            v58 = 0;
            v59 = 0;
            do
            {
              v60 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v61 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v62 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v63 = [NSNumber numberWithUnsignedInt:**(v57 + 8 * v59)];
              [v24 setObject:v60 forKey:v63];

              v64 = [NSNumber numberWithUnsignedInt:*(*(v57 + 8 * v59) + 4)];
              [v24 setObject:v61 forKey:v64];

              v65 = [NSNumber numberWithUnsignedInt:*(*(v57 + 8 * v59) + 8)];
              [v24 setObject:v62 forKey:v65];

              ++v59;
              v58 += 8;
            }

            while (v57 + v58 != v223);
          }

          v66 = *(v219 + 72);
          v67 = *(v219 + 80);
          if (v66 != v67)
          {
            v68 = 0;
            v69 = 0;
            do
            {
              v70 = [NSString stringWithFormat:@"DisconnectDetailsLeCoexDenials_%02lu", v69];
              v71 = [NSNumber numberWithUnsignedInt:*(v66 + 4 * v69)];
              [v24 setObject:v70 forKey:v71];

              ++v69;
              v68 += 4;
            }

            while (v66 + v68 != v67);
          }

          v72 = *(v219 + 96);
          v73 = *(v219 + 104);
          if (v72 != v73)
          {
            v74 = 0;
            v75 = 0;
            do
            {
              v76 = [NSString stringWithFormat:@"DisconnectDetailsLeRSSI_%02lu", v75];
              v77 = [NSNumber numberWithUnsignedInt:*(v72 + 4 * v75)];
              [v24 setObject:v76 forKey:v77];

              ++v75;
              v74 += 4;
            }

            while (v72 + v74 != v73);
          }

          v78 = *(v219 + 192);
          v79 = *(v219 + 200);
          if (v78 != v79)
          {
            v80 = 0;
            do
            {
              v81 = [NSString stringWithFormat:@"DisconnectDetailsClCoexDenials_%02d", v80];
              v82 = [NSNumber numberWithUnsignedInt:*v78];
              [v24 setObject:v81 forKey:v82];

              v80 = (v80 + 1);
              ++v78;
            }

            while (v78 != v79);
          }

          v83 = *(v219 + 216);
          v84 = *(v219 + 224);
          if (v83 != v84)
          {
            v85 = 0;
            do
            {
              v86 = [NSString stringWithFormat:@"DisconnectDetailsClRssi_%02d", v85];
              v87 = [NSNumber numberWithUnsignedInt:*v83];
              [v24 setObject:v86 forKey:v87];

              v85 = (v85 + 1);
              ++v83;
            }

            while (v83 != v84);
          }

          sub_10003BA40(a1, 125, v24);

          goto LABEL_53;
        }
      }

      else
      {
        if (v3 == 16)
        {
          v245[0] = @"Reason";
          v100 = [NSNumber numberWithUnsignedLongLong:*(v2 + 8)];
          v246[0] = v100;
          v245[1] = @"Tech";
          v101 = [NSNumber numberWithUnsignedChar:*(v2 + 16)];
          v246[1] = v101;
          v245[2] = @"StartTime";
          v102 = [NSNumber numberWithUnsignedLongLong:*(v2 + 24)];
          v246[2] = v102;
          v245[3] = @"StopTime";
          v103 = [NSNumber numberWithUnsignedLongLong:*(v2 + 32)];
          v246[3] = v103;
          v245[4] = @"Duration";
          v104 = [NSNumber numberWithUnsignedLongLong:*(v2 + 40)];
          v246[4] = v104;
          v245[5] = @"AverageThroughput";
          v105 = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
          v246[5] = v105;
          v245[6] = @"PayloadSize";
          v106 = [NSNumber numberWithUnsignedLongLong:*(v2 + 56)];
          v246[6] = v106;
          v245[7] = @"UpgradeTime";
          v107 = [NSNumber numberWithUnsignedLongLong:*(v2 + 64)];
          v246[7] = v107;
          v108 = [NSDictionary dictionaryWithObjects:v246 forKeys:v245 count:8];

          sub_10003BA40(a1, 122, v108);
          goto LABEL_53;
        }

        if (v3 == 17)
        {
          v243[0] = @"Module";
          v11 = [NSNumber numberWithUnsignedInt:*(v2 + 4)];
          v244[0] = v11;
          v243[1] = @"Line";
          v12 = [NSNumber numberWithUnsignedInt:*(v2 + 8)];
          v244[1] = v12;
          v243[2] = @"Error";
          v13 = [NSNumber numberWithUnsignedInt:*(v2 + 12)];
          v244[2] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:3];

          sub_10003BA40(a1, 123, v14);
          goto LABEL_53;
        }
      }
    }

    else if (v3 > 13)
    {
      if (v3 == 14)
      {
        v251[0] = @"LastDisconnectedTime";
        v109 = [NSNumber numberWithUnsignedLongLong:*(v2 + 8)];
        v251[1] = @"Version";
        v252[0] = v109;
        v110 = [NSNumber numberWithUnsignedChar:*(v2 + 4)];
        v252[1] = v110;
        v111 = [NSDictionary dictionaryWithObjects:v252 forKeys:v251 count:2];

        sub_10003BA40(a1, 120, v111);
        goto LABEL_53;
      }

      if (v3 == 15)
      {
        v247[0] = @"Version";
        v15 = [NSNumber numberWithUnsignedChar:*(v2 + 4)];
        v248[0] = v15;
        v247[1] = @"Reason";
        v16 = [NSNumber numberWithUnsignedInt:*(v2 + 8)];
        v248[1] = v16;
        v247[2] = @"StartTime";
        v17 = [NSNumber numberWithUnsignedLongLong:*(v2 + 16)];
        v248[2] = v17;
        v247[3] = @"StopTime";
        v18 = [NSNumber numberWithUnsignedLongLong:*(v2 + 24)];
        v248[3] = v18;
        v247[4] = @"Duration";
        v19 = [NSNumber numberWithUnsignedLongLong:*(v2 + 32)];
        v248[4] = v19;
        v247[5] = @"UpgradeCount";
        v20 = [NSNumber numberWithUnsignedInt:*(v2 + 40)];
        v248[5] = v20;
        v247[6] = @"UpgradeDuration";
        v21 = [NSNumber numberWithUnsignedLongLong:*(v2 + 48)];
        v248[6] = v21;
        v247[7] = @"TimeBetweenUpgrades";
        v22 = [NSNumber numberWithUnsignedLongLong:*(v2 + 56)];
        v248[7] = v22;
        v23 = [NSDictionary dictionaryWithObjects:v248 forKeys:v247 count:8];

        sub_10003BA40(a1, 121, v23);
        goto LABEL_53;
      }
    }

    else
    {
      if (v3 == 4)
      {
        v249[0] = @"ActivityType";
        v88 = [NSNumber numberWithUnsignedChar:*(v2 + 36)];
        v250[0] = v88;
        v249[1] = @"AllowDups";
        v89 = [NSNumber numberWithBool:*(v2 + 34)];
        v250[1] = v89;
        v249[2] = @"AppExecutionState";
        v90 = [NSNumber numberWithUnsignedChar:*(v2 + 32)];
        v250[2] = v90;
        v249[3] = @"BundleIdentifier";
        v91 = (v2 + 8);
        if (*(v2 + 31) < 0)
        {
          v91 = *v91;
        }

        v92 = [NSString stringWithUTF8String:v91];
        v250[3] = v92;
        v249[4] = @"ExtensionPointTarget";
        v93 = (v2 + 40);
        if (*(v2 + 63) < 0)
        {
          v93 = *v93;
        }

        v94 = [NSString stringWithUTF8String:v93];
        v250[4] = v94;
        v249[5] = @"IsGeneralDiscoveryScan";
        v95 = [NSNumber numberWithBool:*(v2 + 33)];
        v250[5] = v95;
        v249[6] = @"ParentBundleIdentifier";
        v96 = (v2 + 64);
        if (*(v2 + 87) < 0)
        {
          v96 = *v96;
        }

        v97 = [NSString stringWithUTF8String:v96];
        v250[6] = v97;
        v249[7] = @"SupportBackground";
        v98 = [NSNumber numberWithBool:*(v2 + 35)];
        v250[7] = v98;
        v99 = [NSDictionary dictionaryWithObjects:v250 forKeys:v249 count:8];

        sub_10003BA40(a1, 114, v99);
        goto LABEL_53;
      }

      if (v3 == 13)
      {
        v239[0] = @"AvgRSSI";
        v4 = [NSNumber numberWithInt:*(v2 + 4)];
        v240[0] = v4;
        v239[1] = @"AvgPER";
        v5 = [NSNumber numberWithUnsignedInt:*(v2 + 8)];
        v240[1] = v5;
        v239[2] = @"RecentRSSI";
        v6 = [NSNumber numberWithInt:*(v2 + 12)];
        v240[2] = v6;
        v239[3] = @"RecentPER";
        v7 = [NSNumber numberWithUnsignedInt:*(v2 + 16)];
        v240[3] = v7;
        v239[4] = @"PID";
        v8 = [NSNumber numberWithUnsignedInt:*(v2 + 20)];
        v240[4] = v8;
        v239[5] = @"VID";
        v9 = [NSNumber numberWithUnsignedInt:*(v2 + 24)];
        v240[5] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:6];

        sub_10003BA40(a1, 106, v10);
LABEL_53:
        v2 = v219;
        v3 = *v219;
      }
    }

    if (v3 != 8 && v3 != 6)
    {
      return;
    }

    v224 = *(v2 + 40);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
    }

    v121 = off_100B508A8;
    sub_10004DFB4(__p, v224);
    v122 = sub_10074F2BC(v121, __p);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    v215 = sub_1007913E4(off_100B508C8, v224);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    v123 = sub_10078F7A8(off_100B508C8, v224);
    v211 = v123;
    if (v123 && [v123 length] >= 5)
    {
      v124 = v211;
      v125 = [v211 bytes];
      v212 = *v125;
      v209 = *(v125 + 1);
      v210 = *(v125 + 3);
    }

    else
    {
      v212 = 0;
      v209 = 0;
      v210 = 0;
    }

    v230 = 0;
    v231[0] = 0;
    v231[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    sub_100788FA0(off_100B508C8, v224, &v230);
    v126 = objc_alloc_init(NSMutableString);
    v127 = v230;
    if (v230 != v231)
    {
      do
      {
        if ([v126 length])
        {
          [v126 appendString:{@", "}];
        }

        v128 = [NSString alloc];
        v129 = v127 + 4;
        if (*(v127 + 55) < 0)
        {
          v129 = *v129;
        }

        v130 = [v128 initWithUTF8String:v129];
        [v126 appendString:v130];

        v131 = v127[1];
        if (v131)
        {
          do
          {
            v132 = v131;
            v131 = *v131;
          }

          while (v131);
        }

        else
        {
          do
          {
            v132 = v127[2];
            v133 = *v132 == v127;
            v127 = v132;
          }

          while (!v133);
        }

        v127 = v132;
      }

      while (v132 != v231);
    }

    v134 = sub_10000E92C();
    v135 = v219;
    if ((*(*v134 + 8))(v134))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
      }

      sub_10004FFDC(off_100B508C8, v224, __p);
      if (v233 >= 0)
      {
        v136 = SHIBYTE(v233);
      }

      else
      {
        v136 = *&__p[8];
      }

      if ((SHIBYTE(v233) & 0x8000000000000000) != 0)
      {
        operator delete(*__p);
        if (v136)
        {
          goto LABEL_87;
        }
      }

      else if (v136)
      {
LABEL_87:
        if (qword_100B508D0 != -1)
        {
          sub_10082CA78();
        }

        sub_10004FFDC(off_100B508C8, v224, __p);
        if (v233 >= 0)
        {
          v137 = __p;
        }

        else
        {
          v137 = *__p;
        }

        v214 = [NSString stringWithUTF8String:v137];
        v135 = v219;
        if (SHIBYTE(v233) < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_97;
      }

      v214 = @"NA";
      v135 = v219;
    }

    else
    {
      v214 = @"NA";
    }

LABEL_97:
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v219;
    }

    v207 = sub_100788D8C(off_100B508C8, v224);
    v217 = [NSString stringWithUTF8String:sub_10002A744(v207)];
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v219;
    }

    v138 = sub_100786C44(off_100B508C8, v224);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v219;
    }

    v139 = sub_100786D64(off_100B508C8, v224);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v219;
    }

    v140 = sub_100786DF8(off_100B508C8, v224);
    if (v139 <= v138)
    {
      v141 = 0.0;
    }

    else
    {
      v141 = v139 - v138;
    }

    if (v140 <= v138)
    {
      v142 = 0.0;
    }

    else
    {
      v142 = v140 - v138;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current <= v140)
    {
      v144 = 0.0;
    }

    else
    {
      v144 = Current - v140;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v219;
    }

    v145 = off_100B508A8;
    sub_10004DFB4(__p, v224);
    v146 = sub_10074F458(v145, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v219;
    }

    v147 = off_100B508A8;
    sub_10004DFB4(__p, v224);
    v148 = sub_10074F508(v147, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v219;
    }

    v149 = off_100B508A8;
    sub_10004DFB4(__p, v224);
    v150 = sub_10074F374(v149, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v219;
    }

    v151 = off_100B508A8;
    sub_10004DFB4(__p, v224);
    v152 = sub_1000501F8(v151, __p);
    if (*v135 == 8)
    {
      v237[0] = @"AppState";
      v201 = [NSNumber numberWithUnsignedChar:*(v135 + 32)];
      v238[0] = v201;
      v237[1] = @"ConnectionIntervalInSlots";
      v208 = [NSNumber numberWithUnsignedShort:v122];
      v238[1] = v208;
      v237[2] = @"ConnectionSetupDurationInSec";
      v199 = [NSNumber numberWithDouble:v142];
      v238[2] = v199;
      v237[3] = @"ConnectionDurationInSec";
      v153 = [NSNumber numberWithDouble:v144];
      v154 = &stru_100B0F9E0;
      if (v214)
      {
        v154 = v214;
      }

      v197 = v153;
      v238[3] = v153;
      v238[4] = v154;
      v237[4] = @"DeviceName";
      v237[5] = @"IsAppleDevice";
      v205 = [NSNumber numberWithBool:v215];
      v238[5] = v205;
      v237[6] = @"IsCentral";
      v195 = [NSNumber numberWithBool:v152 == 0];
      v238[6] = v195;
      v237[7] = @"MaxCE";
      v193 = [NSNumber numberWithUnsignedShort:v150];
      v238[7] = v193;
      v237[8] = @"PeripheralLatency";
      v203 = [NSNumber numberWithUnsignedShort:v146];
      v238[8] = v203;
      v237[9] = @"PID";
      v155 = [NSNumber numberWithUnsignedInt:v210];
      v238[9] = v155;
      v237[10] = @"Result";
      v156 = [NSNumber numberWithInt:*(v135 + 48)];
      v238[10] = v156;
      v237[11] = @"SessionID";
      v157 = (v135 + 8);
      if (*(v135 + 31) < 0)
      {
        v157 = *v157;
      }

      v158 = [NSString stringWithUTF8String:v157];
      v238[11] = v158;
      v237[12] = @"SupervisionTimeout";
      v159 = [NSNumber numberWithUnsignedShort:v148];
      v238[12] = v159;
      v238[13] = v126;
      v237[13] = @"Tags";
      v237[14] = @"UseCase";
      v238[14] = v217;
      v237[15] = @"VID";
      v160 = [NSNumber numberWithUnsignedShort:v209];
      v238[15] = v160;
      v237[16] = @"VendorIDSource";
      v161 = [NSNumber numberWithUnsignedChar:v212];
      v238[16] = v161;
      v237[17] = @"ConnectionScanCompleteDurationInSec";
      v162 = [NSNumber numberWithDouble:v141];
      v238[17] = v162;
      v213 = [NSDictionary dictionaryWithObjects:v238 forKeys:v237 count:18];

      v163 = CFAbsoluteTimeGetCurrent();
      v164 = v219;
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
        v164 = v219;
      }

      v165 = sub_100046458(off_100B508C8, *(v164 + 40), 0);
      v166 = sub_1007774DC(v165);
      v167 = @"isAppleDevice";
      if (!v215)
      {
        v167 = v217;
      }

      v168 = v167;
      *__p = 0;
      *&__p[8] = 0;
      sub_100007F88(__p, a1 + 176);
      v169 = [NSNumber numberWithDouble:v163 - v138];
      v170 = [NSMutableArray arrayWithObjects:v168, v169, 0];
      v171 = *(a1 + 328);
      *(a1 + 328) = v170;

      v172 = [*(a1 + 312) objectForKey:v166];
      v173 = v172 == 0;

      if (v173)
      {
        [*(a1 + 312) setObject:*(a1 + 328) forKeyedSubscript:v166];
      }

      if (v215)
      {
        if ((*(*a1 + 544))(a1, *(v219 + 40)))
        {
          ++*(a1 + 132);
        }
      }

      sub_10000801C(__p);
      sub_10003BA40(a1, 110, v213);
      sub_1000088CC(__p);
    }

    else
    {
      v235[0] = @"AppState";
      v202 = [NSNumber numberWithUnsignedChar:*(v135 + 32)];
      v236[0] = v202;
      v235[1] = @"ConnectionIntervalInSlots";
      v206 = [NSNumber numberWithUnsignedShort:v122];
      v236[1] = v206;
      v235[2] = @"ConnectionSetupDurationInSec";
      v174 = [NSNumber numberWithDouble:v142];
      v175 = &stru_100B0F9E0;
      if (v214)
      {
        v175 = v214;
      }

      v200 = v174;
      v236[2] = v174;
      v236[3] = v175;
      v235[3] = @"DeviceName";
      v235[4] = @"IsAppleDevice";
      v198 = [NSNumber numberWithBool:v215];
      v236[4] = v198;
      v235[5] = @"IsCentral";
      v216 = [NSNumber numberWithBool:v152 == 0];
      v236[5] = v216;
      v235[6] = @"MaxCE";
      v196 = [NSNumber numberWithUnsignedShort:v150];
      v236[6] = v196;
      v235[7] = @"PeripheralLatency";
      v194 = [NSNumber numberWithUnsignedShort:v146];
      v236[7] = v194;
      v235[8] = @"PID";
      v204 = [NSNumber numberWithUnsignedInt:v210];
      v236[8] = v204;
      v235[9] = @"Result";
      v176 = [NSNumber numberWithInt:*(v135 + 52)];
      v236[9] = v176;
      v235[10] = @"SessionID";
      v177 = (v135 + 8);
      v178 = (v135 + 8);
      if (*(v135 + 31) < 0)
      {
        v178 = *v177;
      }

      v179 = [NSString stringWithUTF8String:v178];
      v236[10] = v179;
      v235[11] = @"SupervisionTimeout";
      v180 = [NSNumber numberWithUnsignedShort:v148];
      v236[11] = v180;
      v236[12] = v126;
      v235[12] = @"Tags";
      v235[13] = @"UseCase";
      v236[13] = v217;
      v235[14] = @"VID";
      v181 = [NSNumber numberWithUnsignedShort:v209];
      v236[14] = v181;
      v235[15] = @"VendorIDSource";
      v182 = [NSNumber numberWithUnsignedChar:v212];
      v236[15] = v182;
      v235[16] = @"NumberOfPendingLEConnectionsForBundleID";
      v183 = [NSNumber numberWithUnsignedInt:*(v135 + 48)];
      v236[16] = v183;
      v235[17] = @"ConnectionScanCompleteDurationInSec";
      v184 = [NSNumber numberWithDouble:v141];
      v236[17] = v184;
      v213 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:18];

      if ((v207 & 0xFFFF0000) == 0x10000)
      {
        v187 = qword_100BCE8D8;
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 138412802;
          *&__p[4] = v217;
          *&__p[12] = 2048;
          *&__p[14] = v141;
          v233 = 2048;
          v234 = v142;
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "LE Connection Perf for %@ connection scan complete: %.3f (sec) connection set-up: %.3f (sec)", __p, 0x20u);
        }
      }

      v188 = *(v219 + 52);
      v189 = sub_100066098(v185, v186);
      v227[0] = _NSConcreteStackBlock;
      v227[1] = 3221225472;
      v227[2] = sub_1004403F4;
      v227[3] = &unk_100AF2A50;
      v227[4] = a1;
      v228 = v207;
      v229 = v188 != 0;
      sub_10000CA94(v189, v227);
      if (*(v219 + 52))
      {
        if (*(v219 + 31) < 0)
        {
          v177 = *v177;
        }

        v190 = [NSString stringWithFormat:@"VendorID=%d, ProductID=%d, Result=%d, SessionID=%s", v209, v210, *(v219 + 52), v177];
        if (qword_100B53FE8 != -1)
        {
          sub_10082CAA0();
        }

        v191 = qword_100B53FE0;
        sub_100007E30(__p, "LEConnectionsFailure");
        v192 = v190;
        sub_100007E30(v225, [v190 UTF8String]);
        sub_1005780BC(v191, __p, v225, 0.0);
        if (v226 < 0)
        {
          operator delete(v225[0]);
        }

        if (SHIBYTE(v233) < 0)
        {
          operator delete(*__p);
        }
      }

      sub_10003BA40(a1, 107, v213);
    }

    sub_10004B61C(&v230, v231[0]);
    return;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082C924();
  }
}

uint64_t sub_100011690(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F6D0 != -1)
  {
    sub_1008502CC();
  }

  return byte_100B6F6D8;
}

void sub_1000116C8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_100011794(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 64);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000117DC(void *a1, unint64_t a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 5));
  if (!a2)
  {
    goto LABEL_20;
  }

  v4 = a1[19];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = a1 + 19;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == a1 + 19 || v5[4] > a2 || (v9 = a1[15], v10 = a1 + 16, v9 == a1 + 16))
  {
LABEL_20:
    v12 = 0;
  }

  else
  {
    v11 = v5[5];
    while (1)
    {
      v12 = v9[7];
      if (v12)
      {
        if (sub_100011794(v9[7]) == v11)
        {
          break;
        }
      }

      v13 = v9[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v10)
      {
        goto LABEL_20;
      }
    }
  }

  sub_1000088CC(v17);
  return v12;
}

void sub_1000118E8(os_unfair_lock_s *a1, xpc_object_t object, const char *a3)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {

    sub_1000119E4(a1, object, a3);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100863DC8(a3, string, v9);
    }
  }

  else
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100863D50(a3, object, v7);
    }
  }
}

void sub_1000119E4(os_unfair_lock_s *a1, _xpc_connection_s *a2, const char *a3)
{
  os_unfair_lock_lock(a1);
  v6 = sub_100011BB4(a1, a2, a3);
  if (!strcmp(a3, "com.apple.server.bluetooth.le.att.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.le.pipe.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.general.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.classic.xpc"))
  {
    operator new();
  }

  ++*v6;

  os_unfair_lock_unlock(a1);
}

uint64_t *sub_100011BB4(uint64_t a1, xpc_connection_t connection, const char *a3)
{
  pid = xpc_connection_get_pid(connection);
  *&v18 = &pid;
  v6 = sub_100011F44(a1 + 8, &pid, &unk_1008A9BD0, &v18);
  if (v6[6])
  {
    return v6 + 5;
  }

  v7 = sub_10001201C(connection);
  v8 = [v7 cStringUsingEncoding:4];

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  *v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  sub_100008760(&v18);
  if (!v8)
  {
    v8 = "CoreBluetooth";
  }

  v9 = strlen(v8);
  v10 = sub_100007774(&v18, v8, v9);
  sub_100007774(v10, "-", 1);
  std::ostream::operator<<();
  v11 = *(a1 + 32);
  if (!strcmp(a3, "com.apple.server.bluetooth.le.att.xpc"))
  {
    v12 = 40;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.le.pipe.xpc"))
  {
    v12 = 48;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.general.xpc"))
  {
    v12 = 56;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.classic.xpc"))
  {
    v12 = 64;
LABEL_12:
    v11 = *(a1 + v12);
  }

  p_p = &__p;
  std::stringbuf::str();
  if (v17 < 0)
  {
    p_p = __p;
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6[6] = dispatch_queue_create_with_target_V2(p_p, v14, v11);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  return v6 + 5;
}

void sub_100011E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100011EDC(uint64_t a1)
{
  v1 = xpc_connection_copy_entitlement_value();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = xpc_get_type(v1) == &_xpc_type_BOOL && xpc_BOOL_get_value(v2);
  xpc_release(v2);
  return v3;
}

uint64_t *sub_100011F44(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

id sub_10001201C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v1 = SecTaskCreateWithAuditToken(0, &token);
  v2 = v1;
  if (v1)
  {
    *token.val = 0;
    v3 = SecTaskCopySigningIdentifier(v1, &token);
    v4 = v3;
    v5 = *token.val;
    if (*token.val)
    {
      v6 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to copy signing ID - using framework-provided bundle identifier!", buf, 2u);
        v5 = *token.val;
      }

      CFRelease(v5);
      if (v4)
      {
        v7 = 0;
        CFRelease(v4);
LABEL_14:
        CFRelease(v2);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v3;
      if (v3)
      {
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820984();
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008209C0();
  }

  v7 = 0;
LABEL_15:
  if (![v7 length])
  {
    v8 = [NSString stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v7 = v8;
  }

  return v7;
}

uint64_t sub_1000121D8(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, NSObject *a4)
{
  v5 = sub_100012460(a1, a2, a3, a4);
  *v5 = off_100B041A0;
  *(v5 + 144) = off_100B04378;
  *(v5 + 152) = off_100B044B8;
  *(v5 + 160) = &off_100B044F0;
  *(v5 + 168) = 0;
  *(a1 + 170) = sub_100011EDC(v5);
  *(a1 + 171) = sub_100011EDC(a1);
  *(a1 + 172) = 0;
  *(a1 + 174) = sub_100011EDC(a1);
  *(a1 + 175) = 0;
  *(a1 + 178) = 0;
  *(a1 + 182) = sub_100011EDC(a1);
  *(a1 + 183) = sub_100011EDC(a1);
  *(a1 + 184) = sub_100011EDC(a1);
  *(a1 + 185) = sub_100011EDC(a1);
  *(a1 + 186) = sub_100011EDC(a1);
  *(a1 + 187) = 0;
  *(a1 + 189) = sub_100011EDC(a1);
  *(a1 + 190) = sub_100011EDC(a1);
  *(a1 + 191) = sub_100011EDC(a1);
  *(a1 + 192) = sub_100011EDC(a1);
  v6 = sub_100011EDC(a1);
  *(a1 + 216) = 0;
  *(a1 + 193) = v6;
  *(a1 + 194) = 8;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  v7 = *(a1 + 80);
  if (v7 >= 1)
  {
    *(a1 + 170) = 257;
    *(a1 + 182) = 1;
    *(a1 + 184) = 257;
    *(a1 + 186) = 1;
    *(a1 + 189) = 1;
    *(a1 + 174) = 1;
  }

  if (v7 <= 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 200) = v8;
  if (*(a1 + 190) == 1)
  {
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Entitled Scan Client - Checked in", v11, 2u);
    }
  }

  return a1;
}

uint64_t sub_100012460(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, NSObject *a4)
{
  v5 = sub_1000124E8(a1, a2, a3, a4);
  *v5 = off_100AFF468;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100849EF8();
  }

  *(a1 + 140) = sub_10000EE78(off_100B512C0);
  return a1;
}

uint64_t sub_1000124E8(uint64_t a1, uint64_t a2, xpc_connection_t connection, NSObject *a4)
{
  *a1 = &off_100AEE4E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = connection;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 40) = xpc_connection_get_pid(connection);
  xpc_connection_set_context(*(a1 + 16), a1);
  xpc_connection_set_finalizer_f(*(a1 + 16), sub_10007A148);
  v5 = *(a1 + 16);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000D5AC;
  handler[3] = &unk_100AEB340;
  handler[4] = a1;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_set_target_queue(*(a1 + 16), *(a1 + 24));
  xpc_connection_resume(*(a1 + 16));
  euid = xpc_connection_get_euid(*(a1 + 16));
  *(a1 + 44) = euid;
  memset(uu, 0, sizeof(uu));
  if (mbr_uid_to_uuid(euid, uu))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 44);
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      *buf = 67240706;
      v22 = v16;
      v23 = 2082;
      v24 = v18;
      v25 = 1026;
      v26 = v19;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "mbr_uid_to_uuid for id %{public}d failed: %{public}s (%{public}d)", buf, 0x18u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[NSUUID alloc] initWithUUIDBytes:uu];
  }

  v9 = *(a1 + 48);
  *(a1 + 48) = v8;

  if (sub_100011EDC(a1))
  {
    v10 = 2;
  }

  else
  {
    if (!sub_100011EDC(a1))
    {
      goto LABEL_11;
    }

    v10 = 1;
  }

  *(a1 + 80) = v10;
LABEL_11:
  v11 = sub_10001201C(*(a1 + 16));
  v12 = *(a1 + 96);
  *(a1 + 96) = v11;

  if (([&off_100B34558 containsObject:*(a1 + 96)] & 1) == 0)
  {
    operator new();
  }

  *(a1 + 90) = sub_100011EDC(a1);
  *(a1 + 84) = sub_100011EDC(a1);
  *(a1 + 91) = sub_100011EDC(a1);
  *(a1 + 85) = sub_100011EDC(a1);
  if (_os_feature_enabled_impl())
  {
    *(a1 + 86) = sub_100011EDC(a1);
  }

  v13 = sub_100011EDC(a1) && *(a1 + 80) < 1;
  *(a1 + 87) = v13;
  if (_os_feature_enabled_impl())
  {
    v14 = sub_100011EDC(a1) && *(a1 + 80) < 1;
    *(a1 + 88) = v14;
  }

  return a1;
}

void sub_100012920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1000129AC(uint64_t a1, __int128 *a2, dispatch_object_t object)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  if (object)
  {
    dispatch_retain(object);
    *(a1 + 56) = object;
  }

  return a1;
}

void sub_100012A28(uint64_t a1, void *a2)
{
  v151 = 0;
  v152 = 0;
  v150 = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v149 = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v147 = 0;
  v101 = [NSArray arrayWithObjects:@"com.apple.identityservicesd", @"com.apple.nanoregistryd", @"nanoregistryd", @"com.apple.magicswitchd", @"com.apple.sharingd", @"com.apple.BTReporter", @"com.apple.coreBluetoothUtil", @"com.apple.terminusd", 0];
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgType") || !v5)
  {
    v102 = v5;
LABEL_130:
    if (!*(a1 + 128))
    {
      sub_100063710(a1, 2u);
    }

    goto LABEL_132;
  }

  v98 = v152;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 1;
  v140 = 0;
  v139 = 0;
  v100 = sub_100013C04(v150, "kCBInitOptionRestoreIdentifier");
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v99 = sub_100013C04(v150, "kCBCentralManagerOptionInitLeProfilesManagerWithOptions");
  sub_100013CA4(v150, 0, v12, v13, v14, v15, v16, v17, "kCBInitOptionShowPowerAlert");
  v18 = sub_10001201C(*(a1 + 16));
  v19 = *(a1 + 96);
  *(a1 + 96) = v18;

  v102 = *(a1 + 96);
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  sub_100008760(&v120);
  v20 = v102;
  v21 = [v102 UTF8String];
  v22 = v21;
  v23 = strlen(v21);
  sub_100007774(&v120, v22, v23);
  v24 = sub_100013C04(v150, "kCBMsgArgManagerCustomName");
  v25 = v24;
  if (v24 && [v24 length])
  {
    if ([v25 length] > 0xF)
    {
      v26 = 16;
    }

    else
    {
      v26 = [v25 length];
    }

    v27 = [v25 rangeOfComposedCharacterSequencesForRange:{0, v26}];
    v29 = [v25 substringWithRange:{v27, v28}];

    v30 = sub_100007774(&v120, "(", 1);
    v31 = v29;
    v32 = [v29 UTF8String];
    v33 = v32;
    v34 = strlen(v32);
    v35 = sub_100007774(v30, v33, v34);
    v25 = v29;
    sub_100007774(v35, ")", 1);
  }

  v36 = sub_100007774(&v120, "-", 1);
  if (v98)
  {
    v37 = "peripheral-";
  }

  else
  {
    v37 = "central-";
  }

  if (v98)
  {
    v38 = 11;
  }

  else
  {
    v38 = 8;
  }

  sub_100007774(v36, v37, v38);
  if (!v152 && v137)
  {
    v39 = [LSBundleRecord bundleRecordWithBundleIdentifier:*(a1 + 96) allowPlaceholder:1 error:0];
    v40 = [v39 infoDictionary];
    v41 = [v40 objectForKey:@"NSBluetoothForMediaDeviceDiscoveryOnly" ofClass:objc_opt_class()];
    v42 = v41 == 0;

    if (v42)
    {
      if (*(a1 + 87) == 1)
      {
        sub_100007774(&v120, "DAMDDExtension-", 15);
        *(a1 + 176) = 1;
      }
    }

    else
    {
      sub_100007774(&v120, "DAlimitedMedia-", 15);
      *(a1 + 175) = 1;
    }

    v43 = _os_feature_enabled_impl();
    if (v136)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v44 == 1)
    {
      v45 = [v39 infoDictionary];
      v46 = [v45 objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 containsObject:@"Bluetooth"])
      {
        sub_100007774(&v120, "DAPerAccessory-", 15);
        *(a1 + 177) = 1;
      }

      else if (*(a1 + 88) == 1)
      {
        sub_100007774(&v120, "DAPerAccessoryExtension-", 24);
        *(a1 + 178) = 1;
      }
    }
  }

  v47 = std::ostream::operator<<();
  sub_100007774(v47, "-", 1);
  std::ostream::operator<<();
  std::stringbuf::str();
  v48 = (a1 + 79);
  v49 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v49);
  }

  *v49 = *buf;
  *(a1 + 72) = *&buf[16];
  if (v135)
  {
    v50 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 96);
      *buf = 138412290;
      *&buf[4] = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Check if extension %@ is a actual extension", buf, 0xCu);
    }

    v52 = +[LSDatabaseContext sharedDatabaseContext];
    v119 = 0;
    v53 = [v52 startAccessingWithOptions:1 error:&v119];
    v54 = v119;
    if (v53)
    {
      memset(buf, 0, sizeof(buf));
      xpc_connection_get_audit_token();
      v118[0] = *buf;
      v118[1] = *&buf[16];
      v55 = [LSBundleRecord bundleRecordForAuditToken:v118 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v135 = 0;
      }
    }

    v56 = v135 != 0;
  }

  else
  {
    v56 = 0;
  }

  *(a1 + 181) = v56;
  v57 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v58 = (a1 + 56);
    if (*v48 < 0)
    {
      v58 = *v49;
    }

    v59 = *(a1 + 80);
    v60 = *(a1 + 186);
    v61 = *(a1 + 175);
    v62 = *(a1 + 177);
    *buf = 136447490;
    *&buf[4] = v58;
    *&buf[12] = 1024;
    *&buf[14] = v59;
    *&buf[18] = 1024;
    *&buf[20] = v60;
    *&buf[24] = 1024;
    *&buf[26] = v61;
    *&buf[30] = 1024;
    v156 = v62;
    v157 = 1024;
    v158 = v56;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Received XPC check-in from session %{public}s fAccessLevel %d fProgrammaticPairing %d fDeviceAccessForMediaSession %d fDeviceAccessPerAccessorySession %d isExtension %{BOOL}d", buf, 0x2Au);
  }

  v63 = *(a1 + 90);
  if (v63 == 1)
  {
    v64 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v65 = (a1 + 56);
      if (*v48 < 0)
      {
        v65 = *v49;
      }

      *buf = 136446466;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = v100;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "On-Demand-Install app XPC started: %{public}s, RI %@", buf, 0x16u);
    }

    v100 = 0;
  }

  if (*(a1 + 181) == 1)
  {
    v66 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v67 = (a1 + 56);
      if (*v48 < 0)
      {
        v67 = *v49;
      }

      *buf = 136446210;
      *&buf[4] = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Extensions cannot run backgrounded, cannot be restored %{public}s", buf, 0xCu);
    }

    v100 = 0;
    LOBYTE(v63) = 1;
  }

  if (v143)
  {
    if (*(a1 + 80) >= 1)
    {
      *(a1 + 172) = 1;
      v68 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v69 = (a1 + 56);
        if (*v48 < 0)
        {
          v69 = *v49;
        }

        *buf = 136446210;
        *&buf[4] = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Incoming ObjectDiscovery data  will be forwarded to session %{public}s", buf, 0xCu);
      }
    }
  }

  if (v144)
  {
    *(a1 + 168) = 1;
    v70 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v71 = (a1 + 56);
      if (*v48 < 0)
      {
        v71 = *v49;
      }

      *buf = 136446210;
      *&buf[4] = v71;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "System events will be forwarded to session %{public}s", buf, 0xCu);
    }
  }

  v72 = *(a1 + 80);
  if (v72 < 1 || !v142)
  {
LABEL_77:
    if (v72 < 1)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  *(a1 + 169) = 1;
  v73 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v74 = (a1 + 56);
    if (*v48 < 0)
    {
      v74 = *v49;
    }

    *buf = 136446210;
    *&buf[4] = v74;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Application activity events will be sent to session %{public}s", buf, 0xCu);
    v72 = *(a1 + 80);
    goto LABEL_77;
  }

LABEL_78:
  v75 = [v99 length];
  if (v75)
  {
    v77 = sub_100432610(v75, v76);
    v153 = @"collectForTypes";
    v154 = v99;
    v78 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
    (*(*v77 + 200))(v77, v78);
  }

LABEL_80:
  v79 = *(a1 + 80);
  if (v79 <= 0)
  {
    v139 = 0;
    v138 = 0;
  }

  *(a1 + 187) = 0;
  v80 = v140;
  if (v140)
  {
    if (v79 < 1)
    {
      v81 = qword_100BCE950;
      if (*(a1 + 186))
      {
        v82 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
        v83 = 0;
        if (v82)
        {
          v84 = (a1 + 56);
          if (*v48 < 0)
          {
            v84 = *v49;
          }

          *buf = 136446210;
          *&buf[4] = v84;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Access level is less than kXPCAccessLevelSystem for session %{public}s. Restricted state operation not allowed", buf, 0xCu);
          v83 = 0;
        }

        goto LABEL_95;
      }
    }

    else
    {
      v81 = qword_100BCE950;
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v85 = (a1 + 56);
      if (*v48 < 0)
      {
        v85 = *v49;
      }

      *buf = 134218242;
      *&buf[4] = v80;
      *&buf[12] = 2082;
      *&buf[14] = v85;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Setting fNeedsRestrictedState operation: %lld for session %{public}s", buf, 0x16u);
    }

    v83 = 1;
LABEL_95:
    *(a1 + 187) = v83;
  }

  *(a1 + 188) = 0;
  v86 = [v101 containsObject:v102];
  if (v86)
  {
    *(a1 + 187) = 257;
    v87 = qword_100BCE950;
    v86 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
    if (v86)
    {
      *buf = 138412290;
      *&buf[4] = v102;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%@ will get power state ON in Restricted mode", buf, 0xCu);
    }
  }

  if ((sub_100013E74(v86, *(a1 + 96)) & 1) != 0 || *(a1 + 80) >= 1)
  {
    *(a1 + 89) = 1;
    v88 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v89 = *(a1 + 96);
      *buf = 138412290;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Warning: Overriding TCC for bundleIdentifier %@", buf, 0xCu);
    }
  }

  else
  {
    *(a1 + 196) = sub_10037CEF8(v150, "kCBManagerPrivacySupported");
  }

  if (qword_100B512F8 != -1)
  {
    sub_1008565BC();
  }

  v90 = sub_100013F10(off_100B512F0, *(a1 + 96));
  if (*(a1 + 128))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008565E4();
    }
  }

  else if (v151 == 20161219)
  {
    memset(buf, 0, sizeof(buf));
    audit_token = xpc_connection_get_audit_token();
    v93 = sub_100007EE8(audit_token, v92);
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100013FF8;
    v105[3] = &unk_100B04578;
    v117 = v63;
    v110 = a1;
    v111 = v145;
    v112 = v139;
    v113 = v138;
    v114 = *buf;
    v115 = *&buf[16];
    v106 = v102;
    v116 = v98;
    v107 = v100;
    v108 = v148;
    v109 = v146;
    sub_10000D334(v93, v105);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856664();
  }

  v94 = _os_feature_enabled_impl();
  if (v94)
  {
    objc_storeStrong((a1 + 232), *(a1 + 96));
    if (*(a1 + 128))
    {
      if ((*(a1 + 176) & 1) != 0 || v136)
      {
        v94 = sub_10005F254(a1);
        if ((v94 & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_1008566EC();
          }

          v96 = 0;
          goto LABEL_127;
        }
      }
    }

    else
    {
      v94 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v94)
      {
        sub_10085675C();
      }
    }
  }

  if (*(a1 + 80) <= 0 && (*(a1 + 186) & 1) == 0)
  {
    v97 = sub_100007EE8(v94, v95);
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_100669F14;
    v103[3] = &unk_100AE15D8;
    v103[4] = a1;
    v104 = v90;
    sub_10000D334(v97, v103);
  }

  v96 = 1;
LABEL_127:

  if (SHIBYTE(v123) < 0)
  {
    operator delete(*(&v122 + 1));
  }

  std::locale::~locale(v121);
  std::ostream::~ostream();
  std::ios::~ios();

  if (v96)
  {
    goto LABEL_130;
  }

LABEL_132:

  _Block_object_dispose(v146, 8);
  _Block_object_dispose(v148, 8);
}
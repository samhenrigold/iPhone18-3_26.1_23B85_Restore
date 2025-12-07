uint64_t sub_1001B6DCC()
{
  pthread_mutex_lock(&stru_100B5AEB8);
  dword_100B5AEF8 = 0;
  sub_10000C198();
  pthread_cond_signal(&stru_100B5AE88);
  pthread_mutex_unlock(&stru_100B5AEB8);
  pthread_join(qword_100B5AE80[0], 0);
  sub_1000031B0();
  if (dword_100B5B220 >= 1)
  {
    v0 = 0;
    do
    {
      v1 = qword_100B5AE80[v0 + 16];
      free(v1[2]);
      free(v1);
      ++v0;
    }

    while (v0 < dword_100B5B220);
  }

  dword_100B5B220 = 0;
  v2 = qword_100B5B228;
  pthread_mutex_lock((qword_100B5B228 + 16));
  if (*(v2 + 12) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*v2 + 8 * v3);
      free(v4[2]);
      free(v4);
      ++v3;
    }

    while (v3 < *(v2 + 12));
  }

  free(*v2);
  pthread_mutex_unlock((v2 + 16));
  pthread_mutex_destroy((v2 + 16));
  free(v2);
  pthread_mutex_destroy(&stru_100B5AEB8);

  return pthread_cond_destroy(&stru_100B5AE88);
}

void sub_1001B6EF4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == -536870064)
  {
    v14 = "[bm3_usb][DeviceNotificationCB] -- kIOMessageDeviceSignaledWakeup -- HIDShim ";
  }

  else
  {
    if (a3 != -536870896)
    {
      return;
    }

    sub_100304AF8("[bm3_usb][DeviceNotificationCB] -- kIOMessageServiceIsTerminated -- HIDShim ", a2);
    sub_100304AF8("[bm3_usb][BTDeviceRemoved] called\n");
    if (qword_100B5AE70)
    {
      if (result)
      {
        sub_100304AF8("[bm3_usb] Bluetooth device removed: %s \n", *(result + 8));
      }

      pthread_mutex_lock(&xmmword_100B5ADD8);
      v4 = dword_100B5ADD0;
      if (dword_100B5ADD0 >= 1)
      {
        v5 = 0;
        v6 = &qword_100B5AD88;
        do
        {
          v7 = &xmmword_100B5AD78 + 8 * v5;
          if (*(v7 + 1) == result)
          {
            *(v7 + 1) = 0;
            v8 = v5 + 1;
            v9 = (v4 - 1);
            if (v5 + 1 < v4)
            {
              v10 = v9 - v5;
              v11 = v7 + 8;
              v12 = v6;
              do
              {
                v13 = *v12++;
                *v11++ = v13;
                --v10;
              }

              while (v10);
            }

            dword_100B5ADD0 = v9;
            v5 = v8;
            v4 = v9;
          }

          else
          {
            ++v5;
          }

          ++v6;
        }

        while (v5 < v4);
      }

      pthread_cond_signal(&xmmword_100B5AE18);
      pthread_mutex_unlock(&xmmword_100B5ADD8);
      sub_1001B706C(result);
      v14 = "[bm3_usb][BTDeviceRemoved] exited\n";
    }

    else
    {
      v14 = "[bm3_usb][BTDeviceRemoved] exited -- Already removed\n";
    }
  }

  sub_100304AF8(v14);
}

void sub_1001B706C(_DWORD *a1)
{
  sub_100304AF8("[bm3_usb][BTDeviceDestroy] called\n");
  if (a1 && *a1)
  {
    sub_1001B5B8C(a1);
    v2 = *(a1 + 19);
    if (v2)
    {
      free(v2[2]);
      free(v2);
    }

    v3 = *(a1 + 20);
    if (v3)
    {
      free(v3[2]);
      free(v3);
    }

    v4 = *(a1 + 21);
    if (v4)
    {
      free(v4[2]);
      free(v4);
    }

    for (i = 0; i != 8; i += 2)
    {
      v6 = &a1[i];
      v7 = *&a1[i + 44];
      if (v7)
      {
        sub_1001B3554(v7);
        *(v6 + 22) = 0;
      }

      v8 = *(v6 + 26);
      if (v8)
      {
        sub_1001B3554(v8);
        *(v6 + 26) = 0;
      }
    }

    free(*(a1 + 1));
    if (qword_100B5AE70 == a1)
    {
      sub_100304AF8("[bm3_usb][BTDeviceDestroy] active device\n");
      qword_100B5AE70 = 0;
    }

    free(a1);
  }

  sub_100304AF8("[bm3_usb][BTDeviceDestroy] exited\n");
}

uint64_t sub_1001B7178(uint64_t a1, uint64_t a2)
{
  if (a1 && (v3 = *(a1 + 40)) != 0 && *v3)
  {
    if (a2)
    {
      v4 = 100;
    }

    else
    {
      v4 = 0;
    }

    result = (*(*v3 + 624))();
    if (!result)
    {
      result = (*(**(a1 + 40) + 624))(*(a1 + 40), *(a1 + 121), v4);
      if (!result)
      {
        return (*(**(a1 + 40) + 624))(*(a1 + 40), *(a1 + 129), v4);
      }
    }
  }

  else
  {
    sub_100304AF8("[bm3_usb][BTDeviceSetPipeIdlePolicy] -- btdev or firstInterface is NULL\n", a2);
    return 3758097088;
  }

  return result;
}

uint64_t sub_1001B7218(uint64_t a1)
{
  v1 = (*(**(*a1 + 40) + 264))(*(*a1 + 40), *(*a1 + 105), *(a1 + 16), *(a1 + 12), sub_1001B72E0);
  if (v1)
  {
    sub_10024DC48(1205);
  }

  return v1;
}

uint64_t sub_1001B727C(uint64_t a1)
{
  v1 = (*(**(*a1 + 40) + 264))(*(*a1 + 40), *(*a1 + 121), *(a1 + 16), *(a1 + 12), sub_1001B7474);
  if (v1)
  {
    sub_10024DC48(1205);
  }

  return v1;
}

void sub_1001B72E0(uint64_t a1, int a2, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (*v3 && qword_100B5AE70 != 0)
    {
      if (a2)
      {
        if (a2 == -536870165)
        {
          v7 = *(v3 + 152);
          if (v7)
          {
            sub_1001B31F8(v7);
            *(v3 + 152) = 0;
          }

          return;
        }

        if (sub_10000C240())
        {
          v8 = "";
          if (a2 == -536870163)
          {
            v8 = "(kIOReturnNotResponding)";
          }

          sub_10000AF54("InterruptPipeReadCB failed with 0x%x %s", a2, v8);
          v9 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        *(a1 + 24) = a3;
        if (!a3 || !sub_1001B45F8(v3, 4, 2u, 0x101u, (v3 + 152), *(a1 + 16), a3))
        {
LABEL_22:
          if (dword_100B5AEF8)
          {
            *(a1 + 24) = 0;
            sub_1001B7218(a1);
          }

          return;
        }
      }

      v10 = *(v3 + 152);
      if (v10)
      {
        sub_1001B31F8(v10);
        *(v3 + 152) = 0;
      }

      if (*v3)
      {
        sub_1000031B0();
        sub_10024DBDC(1212);
        sub_10000C198();
        goto LABEL_22;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("InterruptPipeReadCB btdev->open is false");
        v11 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

void sub_1001B7474(uint64_t a1, int a2, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (*v3 && qword_100B5AE70 != 0)
    {
      if (a2)
      {
        if (a2 == -536870165)
        {
          v7 = *(v3 + 160);
          if (v7)
          {
            sub_1001B31F8(v7);
            *(v3 + 160) = 0;
          }

          return;
        }

        if (sub_10000C240())
        {
          v8 = "";
          if (a2 == -536870163)
          {
            v8 = "(kIOReturnNotResponding)";
          }

          sub_10000AF54("BulkPipeReadCB failed with 0x%x %s", a2, v8);
          v9 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        *(a1 + 24) = a3;
        if (!a3 || !sub_1001B45F8(v3, 2, 4u, 0xFFFFu, (v3 + 160), *(a1 + 16), a3))
        {
LABEL_22:
          if (dword_100B5AEF8)
          {
            *(a1 + 24) = 0;
            sub_1001B727C(a1);
          }

          return;
        }
      }

      v10 = *(v3 + 160);
      if (v10)
      {
        sub_1001B31F8(v10);
        *(v3 + 160) = 0;
      }

      if (*v3)
      {
        sub_1000031B0();
        sub_10024DBDC(1210);
        sub_10000C198();
        goto LABEL_22;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("BulkPipeReadCB btdev->open is false");
        v11 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

uint64_t sub_1001B7610()
{
  sub_100304AF8("[bm3_usb] Darwin USB Terminate...\n");
  sub_1001B5A4C();
  return 0;
}

char *sub_1001B7640(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  v6 = sub_1001B35A0(a1, a2, a4, a4);
  v7 = v6;
  if (v6 && sub_1001B47FC(v6, a3, a4) < a4)
  {
    sub_1001B31F8(v7);
    return 0;
  }

  return v7;
}

void sub_1001B76A8(uint64_t a1, int a2, const char *a3, const char *a4)
{
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_100304ACC(&v10, 250, "USB %s -- %s failed -- error (0x%x) -- exit(0) -- Restart bluetoothd", a3, a4, a2);
  sub_1001C4B04(&v10);
  if (**(a1 + 32))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Bluetooth error - simulated -- %s Error -- build=release, reason=%d", a4, 1205);
      v6 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v9 = sub_10000C0FC();
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s", buf, 0xCu);
      }
    }

    v7 = (*(**(a1 + 32) + 296))(*(a1 + 32), 0);
    sub_100304AF8("[bm3_usb] USBDeviceReEnumerate() returned 0x%0x", v7);
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    sub_100304ACC(&v10, 250, "USBDeviceReEnumerate() returned 0x%0x", v7);
    sub_1001C4B04(&v10);
  }

  exit(0);
}

uint64_t sub_1001B7814()
{
  if (qword_100B5AE70)
  {
    sub_1001B7178(qword_100B5AE70, 1);
  }

  return 0;
}

uint64_t sub_1001B7844()
{
  if (qword_100B5AE70)
  {
    sub_1001B7178(qword_100B5AE70, 0);
  }

  return 0;
}

uint64_t sub_1001B7874()
{
  byte_100B5AE78 = 0;
  if (!qword_100B5AE70)
  {
    return 113;
  }

  v0 = *(qword_100B5AE70 + 48);
  *(qword_100B5AE70 + 4106) = 0;
  if (!v0)
  {
    return 113;
  }

  (*(*v0 + 72))(v0);
  sub_100304AF8("[bm3_usb][OI_HciIfc_DisableSCO_USB] -- ISOC interface for SCO is closed\n");
  return 0;
}

void sub_1001B7900(char a1)
{
  if (!dword_100BCE26C)
  {
    sub_1000D660C();
  }

  *(qword_100B5B2B0 + 33) = a1;
}

uint64_t sub_1001B7940(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || !a4)
  {
    sub_1000D660C();
    return 101;
  }

  if (dword_100BCE26C)
  {
    return 140;
  }

  v9 = a6;
  v10 = a5;
  qword_100B5B2B0 = sub_1001BBBD8(0x28uLL, 0x10A0040B07E844BuLL);
  if (!qword_100B5B2B0)
  {
    return 106;
  }

  v19 = 0u;
  v20 = 0u;
  *(qword_100B5B2B0 + 32) = *sub_1003045A0(0xFu);
  v14 = *(sub_1003045A0(0xFu) + 10);
  v15 = qword_100B5B2B0;
  *(qword_100B5B2B0 + 38) = v14;
  sub_1003051D8(v15);
  v16 = qword_100B5B2B0;
  *(qword_100B5B2B0 + 34) = v10;
  *(v16 + 36) = v9;
  v7 = sub_1002EF24C(sub_1001B7B1C, off_100AE5218, v10, v9, (v16 + 32), &unk_1008A3400);
  if (v7)
  {
    goto LABEL_11;
  }

  *&v19 = &unk_100AE5240;
  WORD4(v19) = 4;
  *&v20 = *a1;
  WORD4(v20) = *(a1 + 8);
  byte_100B5B2B8 = 1;
  word_100B5B2BA = 1;
  dword_100B5B2C0 = *(qword_100B5B2B0 + 32);
  byte_100B5B2C8 = 1;
  word_100B5B2CA = 2;
  dword_100B5B2D0 = a3;
  v17 = sub_1002F7E1C(&v19, (qword_100B5B2B0 + 20));
  v18 = qword_100B5B2B0;
  if (v17)
  {
    v7 = v17;
    sub_1002EF558(*(qword_100B5B2B0 + 32));
LABEL_11:
    if (qword_100B5B2B0)
    {
      sub_10000C1E8(qword_100B5B2B0);
      qword_100B5B2B0 = 0;
    }

    return v7;
  }

  *(qword_100B5B2B0 + 24) = a4;
  if (a2)
  {
    *a2 = *(v18 + 20);
  }

  sub_100244814(0x200000);
  v7 = 0;
  dword_100BCE26C = 1;
  return v7;
}

uint64_t sub_1001B7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (qword_100B5B2B0)
  {
    v6 = *qword_100B5B2B0;
    if (*qword_100B5B2B0 && v6 != qword_100B5B2B0)
    {
      while (*(v6 - 3) != *a1 || *(v6 - 4) != *(a1 + 4))
      {
        v6 = *v6;
        if (v6)
        {
          v9 = v6 == qword_100B5B2B0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_15:
  v10 = sub_1001B7FC8(a1, a4);
  if (!v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate hfp device!", v17, v18, v19, v20);
      v13 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_1002EFBAC(sub_1001B7DD0, v4, 0);
  }

  v11 = v10;
  if (*(v10 + 34))
  {
LABEL_17:

    return sub_1002EFBAC(sub_1001B7DD0, v4, 0);
  }

  v14 = sub_1001B7D28(v4);
  if (v14)
  {
    *(v14 + 34) = 2;
  }

  *v11 = v4;
  v15 = *(a1 + 4);
  *(v11 + 7) = *a1;
  v16 = v11 + 14;
  v16[2] = v15;
  *(&v17 + 1) = v16;
  LODWORD(v17) = 0;
  WORD2(v17) = v4;
  return (*(qword_100B5B2B0 + 24))(&v17);
}

uint64_t sub_1001B7CA4()
{
  if (!dword_100BCE26C)
  {
    return 408;
  }

  if (*(qword_100B5B2B0 + 16))
  {
    return 141;
  }

  result = sub_1002EF558(*(qword_100B5B2B0 + 32));
  if (!result)
  {
    sub_1002F8018(*(qword_100B5B2B0 + 20));
    sub_1002448C8(0x200000);
    if (qword_100B5B2B0)
    {
      sub_10000C1E8(qword_100B5B2B0);
      qword_100B5B2B0 = 0;
    }

    result = 0;
    dword_100BCE26C = 0;
  }

  return result;
}

void *sub_1001B7D28(int a1)
{
  if (qword_100B5B2B0)
  {
    for (i = *qword_100B5B2B0; i && i != qword_100B5B2B0; i = *i)
    {
      if (*(i - 20) == a1)
      {
        return i - 5;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not find addr for device handle %d", a1);
    v4 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 0;
}

uint64_t sub_1001B7DD0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_1001B7D28(a1);
  if (v6)
  {
    if (a3)
    {
LABEL_3:
      if (sub_10000C240())
      {
        sub_10000AF54("RFCOMM connection failed %!\n", a3);
        v7 = sub_10000C050(0xFu);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *v6 = 0;
      v8 = sub_1001B7D28(a1);
      if (v8)
      {
        v9 = 0;
LABEL_15:
        *(v8 + 34) = v9;
        return sub_1001B80FC(*v6, a3, v4);
      }

      return sub_1001B80FC(*v6, a3, v4);
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  a3 = sub_100248374(off_100AE52F0, (v6 + 14));
  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DEVMGR_RegisterScoApplication failed %!\n", a3);
      v10 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  v8 = sub_1001B7D28(a1);
  if (v8)
  {
    v9 = 3;
    goto LABEL_15;
  }

  return sub_1001B80FC(*v6, a3, v4);
}

void *sub_1001B7F08(uint64_t a1)
{
  if (!qword_100B5B2B0 || ((v2 = *qword_100B5B2B0) != 0 ? (v3 = v2 == qword_100B5B2B0) : (v3 = 1), v3))
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find addr for device %:", a1);
      v6 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 0;
  }

  else
  {
    while (*(v2 - 3) != *a1 || *(v2 - 4) != *(a1 + 4))
    {
      v2 = *v2;
      if (v2)
      {
        v5 = v2 == qword_100B5B2B0;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        goto LABEL_15;
      }
    }

    return v2 - 5;
  }
}

_WORD *sub_1001B7FC8(int *a1, __int16 a2)
{
  if (*(qword_100B5B2B0 + 16) >= *(qword_100B5B2B0 + 38))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Maximum handsfree connection is %d, cannot create device", *(qword_100B5B2B0 + 38));
    v8 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_9:
    sub_10080F7A0();
    return 0;
  }

  v4 = sub_1001BBBD8(0x38uLL, 0x10A0040C964C9D0uLL);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Could not allocate hfp device\n");
    v9 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = *a1;
  v4[16] = *(a1 + 2);
  *(v4 + 7) = v6;
  *v4 = a2;
  *(v4 + 34) = 0;
  v7 = qword_100B5B2B0;
  ++*(qword_100B5B2B0 + 16);
  sub_1003051E0(v4 + 5, v7);
  return v5;
}

uint64_t sub_1001B80FC(int a1, int a2, __int16 a3)
{
  v5 = a1;
  v6 = sub_1001B7D28(a1);
  if (!v6)
  {
    sub_1000D660C();
  }

  v10 = 0u;
  v12 = 0;
  v11 = 0u;
  LODWORD(v10) = a2;
  WORD2(v10) = a3;
  v8[0] = 1;
  v9 = v6 + 28;
  v8[1] = v5;
  return (*(qword_100B5B2B0 + 24))(v8);
}

uint64_t sub_1001B8184(int a1)
{
  if (!dword_100BCE26C)
  {
    return 408;
  }

  v1 = sub_1001B7D28(a1);
  if (!v1)
  {
    sub_1000D660C();
  }

  v2 = *(v1 + 34);
  if ((v2 - 4) < 2)
  {
    return 116;
  }

  if (v2 != 3)
  {
    return 1802;
  }

  v4 = *v1;
  v5 = sub_1001B7D28(v4);
  if (!v5)
  {
    sub_1000D660C();
  }

  v6 = *(v5 + 34);
  v7 = v6 > 5;
  v8 = (1 << v6) & 0x31;
  if (!v7 && v8 != 0)
  {
    return 0;
  }

  v10 = sub_1001B7D28(v4);
  if (v10)
  {
    *(v10 + 34) = 4;
  }

  v11 = *v5;

  return sub_1001B84D0(v11);
}

uint64_t sub_1001B8260(int a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = sub_1001B7D28(a1);
  if (!v7)
  {
    sub_1000D660C();
  }

  if (!dword_100BCE26C)
  {
    return 408;
  }

  if (!a2)
  {
    sub_1000D660C();
    return 101;
  }

  if (*(v7 + 34) != 3)
  {
    return 408;
  }

  if (v7[2])
  {
    return 118;
  }

  result = sub_1002EF8B0(sub_1001B830C, *v7, a3, a4);
  if (!result)
  {
    v7[2] = a2;
  }

  return result;
}

uint64_t sub_1001B830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001B7D28(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v9 = v8[2];
  v8[2] = 0;

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1001B8380(int a1, int a2)
{
  v4 = sub_1001B7D28(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v5 = *(v4 + 34);
  v6 = sub_1001B7D28(a1);
  if (v6)
  {
    if (v5 == 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 34) = v7;
  }

  *(v4 + 1) = a2;
  v8 = *v4;

  return sub_1001B84D0(v8);
}

void sub_1001B83F4(int a1, uint64_t a2, __int16 a3)
{
  v5 = a1;
  v6 = sub_1001B7D28(a1);
  if (!v6)
  {
    sub_1000D660C();
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if ((*(v6 + 34) & 0xFE) == 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring received data while in state %s", "");
      v7 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    LODWORD(v8) = 6;
    *(&v8 + 1) = a2;
    LOWORD(v9) = a3;
    WORD2(v8) = v5;
    (*(qword_100B5B2B0 + 24))(&v8);
  }
}

uint64_t sub_1001B84D0(int a1)
{
  v2 = sub_1001B7D28(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v3 = *(v2 + 34);
  if (v3 == 5)
  {
    if (!*(v2 + 35))
    {
      v4 = 0;
      *(v2 + 34) = 0;
      goto LABEL_19;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  if (*(v2 + 35) == 3)
  {
    v4 = sub_100248688(v2[1]);
    if (!v4)
    {
      *(v2 + 35) = 4;
      goto LABEL_19;
    }

    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("ScoDisconnect failed - %!, forcing disconnect!\n", v4);
    v5 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_10080F7A0();
LABEL_17:
    sub_1001B8738(*v2);
    goto LABEL_19;
  }

  if (!*v2)
  {
    goto LABEL_18;
  }

  v4 = sub_1002EFF1C(*v2, 935);
  if (v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("RFCOMM_Disconnect failed - %!, forcing disconnect!\n", v4);
    v6 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_19:
  if (*(v2 + 35) || *(v2 + 34))
  {
    if (!*(v2 + 6))
    {
      v11[1] = v2;
      v11[0] = 2;
      v4 = sub_10002195C(sub_1001B87E8, v11, 100, v2 + 6);
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Register disconnect timeout handler failed %!\n", v4);
          v7 = sub_10000C050(0xFu);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {
    v8 = *(v2 + 6);
    if (v8)
    {
      sub_10002242C(v8);
      *(v2 + 6) = 0;
    }

    v9 = sub_1001B7D28(a1);
    if (v9)
    {
      *(v9 + 34) = 0;
    }

    sub_100248578(v2 + 28);
    LODWORD(v12[0]) = 2;
    *(&v12[0] + 1) = v2 + 28;
    DWORD2(v12[0]) = *(v2 + 1);
    WORD2(v12[0]) = *v2;
    (*(qword_100B5B2B0 + 24))(v12);
    sub_100305208(v2 + 5);
    sub_10000C1E8(v2);
    --*(qword_100B5B2B0 + 16);
  }

  return v4;
}

void *sub_1001B8738(int a1)
{
  v2 = sub_1001B7D28(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  result = sub_10023BD60(v2 + 28);
  if (result)
  {
    v4 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("ForceDisconnect failed - %!, assuming already disconnected\n", v4);
      v5 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    result = sub_1001B7D28(a1);
    if (result)
    {
      *(result + 34) = 0;
    }

    *(v2 + 35) = 0;
    *(v2 + 1) = 926;
  }

  return result;
}

uint64_t sub_1001B87E8(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = sub_1001B7D28(v1);
  if (!v2)
  {
    sub_1000D660C();
  }

  *(v2 + 6) = 0;
  sub_1001B8738(v1);

  return sub_1001B84D0(v1);
}

uint64_t sub_1001B8840(int a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001B7F08(a3);
  if (!v5)
  {
    sub_1000D660C();
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v5[1] = a2;
    v6 = 3;
  }

  *(v5 + 35) = v6;
  LODWORD(v8[0]) = 4;
  HIDWORD(v8[0]) = (v5 + 28) >> 32;
  DWORD2(v8[0]) = a1;
  WORD2(v8[0]) = *v5;
  result = (*(qword_100B5B2B0 + 24))(v8);
  if ((*(v5 + 34) & 0xFE) == 4)
  {
    return sub_1001B84D0(*v5);
  }

  return result;
}

uint64_t sub_1001B88F8(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (qword_100B5B2B0)
  {
    for (i = *qword_100B5B2B0; i && i != qword_100B5B2B0; i = *i)
    {
      if (*(i - 4) == a2)
      {
        v6 = (i - 5);
        if (a1)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not find device with sco handle");
    v5 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000D660C();
  v6 = 0;
  if (a1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("SCO disconnect failed %!", a1);
      v7 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
LABEL_17:
    *(v6 + 35) = 0;
  }

  LODWORD(v9[0]) = 5;
  HIDWORD(v9[0]) = (v6 + 14) >> 32;
  DWORD2(v9[0]) = a1;
  WORD2(v9[0]) = *v6;
  result = (*(qword_100B5B2B0 + 24))(v9);
  if ((v6[17] & 0xFE) == 4)
  {
    return sub_1001B84D0(*v6);
  }

  return result;
}

uint64_t sub_1001B8A48(uint64_t a1)
{
  v8 = sub_1001B7F08(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (*(v8 + 34) == 3 && (*a1 == *(v8 + 7) ? (v9 = *(a1 + 4) == *(v8 + 16)) : (v9 = 0), v9 && !*(v8 + 35)))
  {
    *(v8 + 35) = 1;
    LODWORD(v11[0]) = 3;
    *(&v11[0] + 1) = v8 + 28;
    WORD2(v11[0]) = *v8;
    return (*(qword_100B5B2B0 + 24))(v11);
  }

  else
  {

    return sub_100249720(a1, 0, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t sub_1001B8B1C(uint64_t result)
{
  v1 = xmmword_100B5B2D8 + 6;
  v2 = 5;
  while (*(v1 - 6) != 1 || (*v1 & 1) == 0)
  {
    v1 += 48;
    if (!--v2)
    {
      return result;
    }
  }

  if (*(v1 + 2) == result)
  {
    *(v1 - 6) = 0;
    *v1 = 0;
  }

  return result;
}

void sub_1001B8B70(uint64_t result, uint64_t a2)
{
  v3 = 0;
  while (LODWORD(xmmword_100B5B2D8[v3]) != 1)
  {
    v3 += 3;
    if (v3 == 15)
    {
      return;
    }
  }

  v4 = &xmmword_100B5B2D8[v3];
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not synchronize to periodic advertiser (%!)", a2);
      v5 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (off_100B5B3D8)
    {
      off_100B5B3D8(&xmmword_100B5B2D8[v3], a2);
    }

    sub_1001B8CDC(LODWORD(xmmword_100B5B2D8[v3 + 1]) | ((WORD2(xmmword_100B5B2D8[v3 + 1]) | (BYTE6(xmmword_100B5B2D8[v3 + 1]) << 16)) << 32), BYTE7(xmmword_100B5B2D8[v3 + 1]));
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    LODWORD(xmmword_100B5B2D8[v3]) = 0;
  }

  else
  {
    *v4 = 2;
    *(v4 + 2) = *result;
    *(v4 + 14) = *(result + 12);
    *(v4 + 37) = *(result + 15);
    ++byte_100B5B3D0;
    if (off_100B5B3D8)
    {
      off_100B5B3D8(&xmmword_100B5B2D8[v3], 0);
    }

    sub_1001B8CDC(LODWORD(xmmword_100B5B2D8[v3 + 1]) | ((WORD2(xmmword_100B5B2D8[v3 + 1]) | (BYTE6(xmmword_100B5B2D8[v3 + 1]) << 16)) << 32), BYTE7(xmmword_100B5B2D8[v3 + 1]));
  }

  qword_100B5B3F0 = 0;
  *&byte_100B5B3F8 = 0;
}

void sub_1001B8CDC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v18 = a1;
  v20 = BYTE6(a1);
  v19 = WORD2(a1);
  if (sub_10000C240())
  {
    sub_10000AF54("LE_RemoveDeviceFromPeriodicAdvList");
    v4 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2 <= 0xF)
  {
    if (*(&xmmword_100B5B400 + 1))
    {
      v5 = sub_100007618(0x10uLL, 0x10200405730B0C9uLL);
      if (v5)
      {
        v12 = v5;
        v13 = sub_100018960(222, sub_1001B993C, v6, v7, v8, v9, v10, v11, v3);
        if (v13)
        {
          v14 = v13;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not remove device from periodic advertising list (%!)", v14, &v18 + 1, a2);
            v15 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_10000C1E8(v12);
        }

        else
        {
          v16 = v18;
          v17 = v19;
          *(v12 + 6) = v20;
          *(v12 + 2) = v17;
          *v12 = v16;
          *(v12 + 7) = a2;
          *(v12 + 1) = 0;
          if (qword_100B5B418)
          {
            *(qword_100B5B418 + 8) = v12;
            qword_100B5B418 = v12;
          }

          if (!qword_100B5B410)
          {
            qword_100B5B410 = v12;
            qword_100B5B418 = v12;
          }
        }
      }
    }
  }
}

void sub_1001B8EC0()
{
  for (i = 0; i != 15; i += 3)
  {
    if (LODWORD(xmmword_100B5B2D8[i]) == 1)
    {
      v2 = sub_1001B8F98();
      if (v2)
      {
        v3 = v2;
        if (sub_10000C240())
        {
          sub_10000AF54("LE_PeriodicAdv_CreateSyncCancel failed with status %!", v3);
          v4 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No sync handle found in establishing state");
    v1 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001B8F98()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_PeriodicAdv_CreateSyncCancel");
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (LODWORD(xmmword_100B5B2D8[0]) == 1)
  {
LABEL_5:
    v7 = sub_100018960(219, sub_1001B9774, v0, v1, v2, v3, v4, v5, v14);
    if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not cancel periodic sync (%!)", v7);
        v8 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    v9 = -1;
    v10 = &dword_100B5B308;
    while (v9 != 3)
    {
      v11 = *v10;
      v10 += 12;
      ++v9;
      if (v11 == 1)
      {
        if (v9 < 4)
        {
          goto LABEL_5;
        }

        break;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("No Pending Sync to Cancel");
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 117;
  }

  return v7;
}

double sub_1001B913C(int a1)
{
  v1 = xmmword_100B5B2D8;
  v2 = 5;
  while (*(v1 + 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return result;
    }
  }

  if (off_100B5B3E0)
  {
    off_100B5B3E0(v1, 156);
  }

  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  *v1 = 0;
  return result;
}

__int128 *sub_1001B91A8(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = xmmword_100B5B2D8;
  v6 = 5;
  while (*(result + 2) != v4)
  {
    result += 3;
    if (!--v6)
    {
      return result;
    }
  }

  if (off_100B5B3E8)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    return off_100B5B3E8(result, &v7, a3);
  }

  return result;
}

void sub_1001B9218(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, char a5, int *a6, int a7, __int16 a8, char a9, char a10, char a11, char a12, char a13)
{
  if (sub_1000ABD24(a2))
  {
    v19 = a7;
    for (i = 0; i != 15; i += 3)
    {
      if (LODWORD(xmmword_100B5B2D8[i]) == 1)
      {
        v21 = &xmmword_100B5B2D8[i];
        if (BYTE6(xmmword_100B5B2D8[i]))
        {
          if (a1)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("LE_SyncTransferReceived with error (%!)", a1);
              v24 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            if (off_100B5B3D8)
            {
              off_100B5B3D8(v21, a1);
            }

            *v21 = 0;
          }

          else
          {
            v25 = &xmmword_100B5B2D8[i];
            *v25 = 2;
            *(v25 + 2) = a4;
            v26 = *a6;
            v27 = *(a6 + 2);
            *(v25 + 22) = *(a6 + 6);
            *(v25 + 10) = v27;
            *(v25 + 4) = v26;
            *(v25 + 23) = a5;
            *(v25 + 14) = a8;
            *(v25 + 15) = a3;
            *(v25 + 8) = v19;
            *(v25 + 36) = a9;
            *(v25 + 37) = a10;
            *(v25 + 38) = a11;
            *(v25 + 39) = a12;
            *(v25 + 40) = a13;
            v28 = off_100B5B3D8;
            if (off_100B5B3D8)
            {

              v28(v21, 0);
            }
          }

          return;
        }
      }
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("LE_SyncTransferReceived, no sync handle found");
    v22 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE_SyncTransferReceived, invalid connection handle: status %! ignoring", a1);
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_10080F604();
    }
  }
}

uint64_t sub_1001B9450()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_PreriodicAdv_TerminateAll");
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v7 = xmmword_100B5B2D8 + 2;
  v8 = 5;
  do
  {
    v9 = *(v7 - 1);
    if (v9 == 1)
    {
      if (!sub_100018960(219, sub_1001B9774, v0, v1, v2, v3, v4, v5, v14))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      v10 = sub_100018960(220, sub_1001B9650, v0, v1, v2, v3, v4, v5, *v7);
      *(v7 - 1) = 3;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (sub_10000C240())
    {
      v14 = *v7;
      sub_10000AF54("Unable to terminate all syncs. Failure with sync handle: %d (%!)");
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_10000C0FC();
        *buf = 136446466;
        v16 = v12;
        v17 = 1024;
        v18 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

LABEL_13:
    v7 += 24;
    --v8;
  }

  while (v8);
  return 0;
}

double sub_1001B9650(int a1)
{
  byte_100B5B420 = 0;
  v2 = xmmword_100B5B2D8;
  v3 = 5;
  while (*v2 != 3)
  {
    v2 += 3;
    if (!--v3)
    {
      return result;
    }
  }

  v4 = sub_10000C240();
  if (a1)
  {
    if (v4)
    {
      sub_10000AF54("Terminate sync command complete (FAIL)");
      v6 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (off_100B5B3E0)
    {
      off_100B5B3E0(v2, a1);
    }
  }

  else
  {
    if (v4)
    {
      sub_10000AF54("Terminate sync command complete (SUCCESS)");
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (off_100B5B3E0)
    {
      off_100B5B3E0(v2, 0);
    }

    result = 0.0;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    *v2 = 0;
    --byte_100B5B3D0;
  }

  return result;
}

double sub_1001B9774(int a1)
{
  if (a1)
  {
    v1 = 0;
    while (LODWORD(xmmword_100B5B2D8[v1]) != 1)
    {
      v1 += 3;
      if (v1 == 15)
      {
        return result;
      }
    }

    sub_1001B8CDC(*(&qword_100B5B3F0 + 2) | ((HIWORD(qword_100B5B3F0) | (byte_100B5B3F8 << 16)) << 32), BYTE1(qword_100B5B3F0));
    result = 0.0;
    xmmword_100B5B2E8 = 0u;
    unk_100B5B2F8 = 0u;
    xmmword_100B5B2D8[0] = 0u;
    LODWORD(xmmword_100B5B2D8[v1]) = 0;
    qword_100B5B3F0 = 0;
    *&byte_100B5B3F8 = 0;
  }

  return result;
}

void *sub_1001B97FC(unsigned int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_SetPeriodicAdvListSize");
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", &v4, 0xCu);
    }
  }

  LOWORD(xmmword_100B5B400) = a1;
  if (*(&xmmword_100B5B400 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B5B400 + 1));
  }

  result = sub_100007618(8 * a1, 0x100004000313F17uLL);
  *(&xmmword_100B5B400 + 1) = result;
  BYTE2(xmmword_100B5B400) = 0;
  qword_100B5B418 = 0;
  qword_100B5B410 = 0;
  return result;
}

double sub_1001B9904()
{
  if (*(&xmmword_100B5B400 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B5B400 + 1));
  }

  result = 0.0;
  xmmword_100B5B400 = 0u;
  *&qword_100B5B410 = 0u;
  return result;
}

void sub_1001B993C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("leRemoveFromPeriodicAdvListCb");
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error removing device from periodic advertiser list %!", a1);
      v3 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B5B410)
    {
      sub_1000D660C();
    }

    if (BYTE2(xmmword_100B5B400))
    {
      v4 = *(&xmmword_100B5B400 + 1);
      v5 = (BYTE2(xmmword_100B5B400) - 1);
      v6 = *(&xmmword_100B5B400 + 1);
      v7 = BYTE2(xmmword_100B5B400);
      while (*v6 != *qword_100B5B410)
      {
        --v5;
        ++v6;
        if (!--v7)
        {
          goto LABEL_18;
        }
      }

      --BYTE2(xmmword_100B5B400);
      v8 = BYTE2(xmmword_100B5B400);
      if (v5)
      {
        *v6 = *(*(&xmmword_100B5B400 + 1) + 8 * BYTE2(xmmword_100B5B400));
        v4 = *(&xmmword_100B5B400 + 1);
        v8 = BYTE2(xmmword_100B5B400);
      }

      *(v4 + 8 * v8) = 0;
    }
  }

LABEL_18:
  sub_1001B9AD0();
}

void sub_1001B9AD0()
{
  if (qword_100B5B410)
  {
    v0 = *(qword_100B5B410 + 8);
    sub_10000C1E8(qword_100B5B410);
    qword_100B5B410 = v0;
    if (!v0)
    {
      qword_100B5B418 = 0;
    }
  }

  else
  {

    sub_1000D660C();
  }
}

void sub_1001B9B2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100223E78(a1);

  sub_100224FE0(v6, a2, a4);
}

uint64_t sub_1001B9B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _WORD *a8, uint64_t a9)
{
  if (a1 && a5 && a6 && a8 && a9)
  {
    v17 = sub_1001BBBD8(0x120uLL, 0x10B00409F7A8307uLL);
    if (v17)
    {
      v18 = v17;
      v17[64] = 200;
      v17[38] = 200;
      v17[37] = *(sub_1003045A0(0x17u) + 8);
      *(v18 + 8) = 0;
      *(v18 + 40) = 0;
      *(v18 + 4) = 1;
      v19 = *(a1 + 4);
      *(v18 + 104) = *a1;
      *(v18 + 108) = v19;
      *(v18 + 276) = 1;
      *(v18 + 136) = a6;
      *(v18 + 56) = 0;
      *(v18 + 260) = -1;
      *(v18 + 152) = a5;
      *(v18 + 272) = a3;
      if (a3 || a7)
      {
        v20 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
        *(v18 + 64) = v20;
        if (!v20)
        {
          v23 = 106;
          goto LABEL_26;
        }

        if (a3 == 2)
        {
          v20[59] = 1;
        }

        if (!a7)
        {
          v23 = 1721;
          goto LABEL_26;
        }

        *(v18 + 144) = a7;
      }

      if (a4)
      {
        v21 = *(a4 + 8);
        if (v21 >= 5)
        {
          sub_1000D660C();
          v21 = *(a4 + 8);
        }

        memmove((v18 + 160), *a4, 24 * v21);
        v22 = *(a4 + 8);
      }

      else
      {
        v22 = 0;
      }

      *(v18 + 256) = v22;
      v23 = sub_10028F454(sub_1001B9D80, sub_1001B9E90, sub_1001B9EEC, a2, a1, &unk_100AE5308, v18, &unk_1008A3480);
      if (!v23)
      {
        sub_100223DE4(v18);
        *a8 = *(v18 + 280);
        ++dword_100BCE28C;
        return v23;
      }

LABEL_26:
      sub_100223F08(*(v18 + 280));
      return v23;
    }

    return 104;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

void sub_1001B9D80(uint64_t a1, unsigned int a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = sub_100223E78(a1);
  v8 = v7;
  if (a4 || !v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAPConnectCB failed with result %!", a4);
      v12 = sub_10000C050(0x17u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100810070(v12);
      }
    }
  }

  else
  {
    *(v7 + 69) = 2;
    v7[36] = a3;
    v7[38] = a3;
    v7[37] = a2;
    *(v7 + 1) = sub_1001BBBD8(a2, 0x2D93545DuLL);
    if (*(v8 + 272))
    {
      v9 = *(v8 + 144);
      v10 = *(v8 + 280);
      v11 = *(*(v8 + 64) + 59);

      v9(v10, v11);
      return;
    }

    a4 = sub_1002245E8(v8, 200);
  }

  if (a4)
  {
    sub_1002240F8(v8, a4);
  }
}

void sub_1001B9E90(int a1, uint64_t a2)
{
  v3 = sub_100223E78(a1);
  if (v3)
  {
    if (!a2)
    {
      if (*(v3 + 69) <= 3u)
      {
        a2 = 0;
      }

      else
      {
        a2 = 1709;
      }
    }

    sub_100223FA8(v3, a2);
  }
}

void sub_1001B9EEC(uint64_t a1, void *a2, size_t a3)
{
  v5 = sub_100223E78(a1);

  sub_100224890(v5, a2, a3);
}

uint64_t sub_1001B9F2C(unsigned __int8 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Beginning Bud Swap 2.0 procedure for %:", a1);
    v2 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v17 = 0;
  if (sub_10023DB58(a1, &v17))
  {
    goto LABEL_5;
  }

  v16 = 0;
  v15 = 0;
  if (sub_1001F46FC(a1, &v15))
  {
    v6 = sub_100308E80(a1);
    if (!v6)
    {
      sub_10029E7D4(v17, 0, 0, 1);
      if (sub_10000C240())
      {
        sub_10000AF54("Media CIDs are not connected, stalling all L2CAP queues for %:", a1);
        v8 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_21;
    }

    LODWORD(v7) = 0;
    goto LABEL_14;
  }

  LOWORD(v16) = v15;
  v6 = sub_100308E80(a1);
  v7 = 1;
  if (v6)
  {
LABEL_14:
    *(&v16 | (2 * v7)) = v6;
    v7 = (v7 + 1);
  }

  sub_10029E7D4(v17, &v16, v7, 1);
  if (sub_10000C240())
  {
    sub_10000AF54("%d excluded media CIDs are connected, stalling all non-media CID L2CAP queues for %:", v7, a1);
    v8 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v9 = sub_10000C0FC();
      *buf = 136446210;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_21:
  sub_10029F9F0(sub_1001BA2B0);
  v10 = sub_100255698(v17);
  if (!v10)
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't begin Bud Swap 2.0 procedure for %:, couldn't find the device", a1);
      v3 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1000D660C();
    return 120;
  }

  v11 = v10;
  if (sub_1002A18AC())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failure in sending LMP Halt command to chipset for lmHandle %d with BT address %:", v11, a1);
      v12 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v4 = 114;
    sub_10018AAAC(a1, 114);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Successfully sent LMP Halt command to chipset for lmHandle %d with BT address %:", v11, a1);
      v13 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10000C0FC();
        *buf = 136446210;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  return v4;
}

void sub_1001BA2B0(int a1, int a2)
{
  v4 = sub_1000ABB80(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000C240();
    if (a2)
    {
      if (v6)
      {
        sub_10000AF54("Chipset confirmed LMP Resume complete, sending SwapCompleteCfm Message to %:", v5 + 3);
        v7 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v17 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v8 = sub_10018ABE8(v5 + 48);
      if (v8)
      {
        v9 = v8;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_SendSwapCompleteCfmMsg failed due to %u", v9);
          v10 = sub_10000C050(0x59u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
LABEL_19:
            sub_10080F6C8();
          }
        }
      }
    }

    else
    {
      if (v6)
      {
        sub_10000AF54("Chipset confirmed LMP Halt complete, sending SwapImminentCfm Message to %:", v5 + 3);
        v12 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v17 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_10018AAAC(v5 + 48, 0);
      if (v13)
      {
        v14 = v13;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_SendSwapImminentCfmMsg failed due to %u", v14);
          v15 = sub_10000C050(0x59u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received LMP Halt Event but couldn't find a connection handle for lmhandle %d with lmpHaltStatus %d", a1, a2);
    v11 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1001BA4EC(int a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Chipset returned error from LMP Halt command: %d", a1);
      v2 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Chipset successfully received the LMP Halt command");
    v3 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_1001BA5F0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Buds have signaled Bud Swap 2.0 has completed on their side, beginning closing procedures for %:", a1);
    v2 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v10 = 0;
  if (sub_10023DB58(a1, &v10) || (sub_10029E7D4(v10, 0, 0, 0), v5 = sub_100255698(v10), !v5))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't complete Bud Swap 2.0 procedure for %:, couldn't find the device", a1);
      v3 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 120;
  }

  else
  {
    v6 = v5;
    if (sub_1002A18AC())
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failure in sending LMP Resume command to chipset for lmHandle %d with BT address %:", v6, a1);
        v7 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 114;
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Successfully sent LMP Resume command to chipset for lmHandle %d with BT address %:", v6, a1);
        v8 = sub_10000C050(0x59u);
        result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v9 = sub_10000C0FC();
          *buf = 136446210;
          v12 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BA814(int a1)
{
  result = sub_100084230();
  if (a1 == 162 && (result - 3000) <= 0x3E7)
  {
    sub_100304AF8("------------------------- Triggering BT FW logs capture ------------------------------\n");
    v3 = byte_100B5B53C;

    return sub_1001A63E4("FatalBTError", 1, v3, 0);
  }

  return result;
}

double sub_1001BA88C(uint64_t a1, const char *a2)
{
  sub_1000E771C(a1);
  sub_1001BA814(a1);
  sub_1001C3FC8();
  if (os_variant_has_internal_diagnostics())
  {
    v4 = _os_log_pack_size();
    v5 = &v21 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "Bluetooth fatal error - crashing { build=internal, reason=%d, description=%{public}s, context=%{public}s }");
    sub_1000CDD74(a1);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "?";
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "none";
    }

    sub_1001BAA40(v7, a1, v9, v10);
  }

  else
  {
    v11 = _os_log_pack_size();
    v12 = &v21 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "Bluetooth fatal error - crashing { build=release, reason=%d, context=%{public}s }");
    v15 = "none";
    if (a2)
    {
      v15 = a2;
    }

    *v14 = 67109378;
    *(v14 + 4) = a1;
    *(v14 + 8) = 2082;
    *(v14 + 10) = v15;
  }

  os_log_create("com.apple.bluetooth", "CBCrash");
  qword_100B55118 = os_log_pack_send_and_compose();
  v16 = abort_with_payload();
  return sub_1001BAA40(v16, v17, v18, v19);
}

double sub_1001BAA40(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2082;
  *(a1 + 10) = a3;
  *(a1 + 18) = 2082;
  *(a1 + 20) = a4;
  return result;
}

void sub_1001BAA68(uint64_t a1, const char *a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    sub_1001BA88C(a1, a2);
  }

  sub_1001BAAB8(a1, a2);
  sub_1001BAB28(a1, v4);
  _exit(1);
}

uint64_t sub_1001BAAB8(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    sub_100304AF8("Bluetooth error - restarting { build=internal, reason=%d, description=%!, context=%s }", a1, a1, a2);
  }

  else
  {
    sub_100304AF8("Bluetooth error - restarting { build=release, reason=%d, context=%s }");
  }

  return sub_1001C3FC8();
}

void sub_1001BAB28(uint64_t result, uint64_t a2)
{
  if ((result == 3703 || result == 3602) && sub_10009B9DC(result, a2) == 7 && sub_100084230() == 25)
  {
    if (sub_10022DE08())
    {
      sub_100304AF8("Error: Bluetooth FLR Transport hard reset failed");
    }

    sub_100304AF8("Bluetooth FLR Transport hard reset done");
  }
}

void sub_1001BAB98(uint64_t a1, uint64_t a2)
{
  sub_1001BAAB8(a1, a2);
  sub_1001BAB28(a1, v3);
  _exit(1);
}

uint64_t sub_1001BABC0(uint64_t a1)
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v2 = dword_100B5B42C;
    v3 = dword_100B5B42C;
    v4 = dword_100B5B428;
    while (v4)
    {
      if (v4 > v3)
      {
        v5 = v4 % v3;
        v4 = v3;
        v3 = v5;
      }

      v6 = v3;
      v3 = v4;
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        LODWORD(v3) = 1;
        break;
      }
    }

    v8 = dword_100B5B42C / v3;
    dword_100B5B428 /= v3;
    dword_100B5B42C /= v3;
    if ((v2 / v3) >> 1 >= 0x863)
    {
      sub_1000D660C();
      v8 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000000 * v8;
  }

  result = mach_continuous_time();
  v10 = result * dword_100B5B428 / dword_100B5B42C;
  *(a1 + 4) = v10 % 0x3E8;
  *a1 = v10 / 0x3E8;
  return result;
}

uint64_t sub_1001BACB0()
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v0 = dword_100B5B42C;
    v1 = dword_100B5B42C;
    v2 = dword_100B5B428;
    while (v2)
    {
      if (v2 > v1)
      {
        v3 = v2 % v1;
        v2 = v1;
        v1 = v3;
      }

      v4 = v1;
      v1 = v2;
      v5 = v4 == v2;
      v2 = v4;
      if (v5)
      {
        LODWORD(v1) = 1;
        break;
      }
    }

    v6 = dword_100B5B42C / v1;
    dword_100B5B428 /= v1;
    dword_100B5B42C /= v1;
    if (v0 / v1 >= 0x418937)
    {
      sub_1000D660C();
      v6 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000 * v6;
  }

  return mach_absolute_time() * dword_100B5B428 / dword_100B5B42C;
}

uint64_t sub_1001BAD68(_DWORD *a1)
{
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  v4 = 0;
  result = gettimeofday(&v5, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      v3 = 3600;
    }

    else
    {
      v3 = 0;
    }

    *a1 = v3 + 60 * v4;
  }

  return result;
}

uint64_t sub_1001BADC4(void *a1)
{
  v3 = 0;
  result = sub_1000D42DC(&v3 + 1, &v3);
  *a1 = __ROR8__(1000 * v3 + 1000000000 * SHIDWORD(v3), 32);
  return result;
}

uint64_t sub_1001BAE20(void *a1)
{
  result = mach_absolute_time();
  *a1 = __ROR8__(result, 32);
  return result;
}

double sub_1001BAE4C(mach_timebase_info *a1)
{
  info = 0;
  mach_timebase_info(&info);
  result = *&info;
  *a1 = info;
  return result;
}

double sub_1001BAE88(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, double a5, double a6, double a7)
{
  v7 = __ROR8__(a1, 32);
  v8 = __ROR8__(a2, 32);
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (v9)
  {
    LODWORD(a6) = *a3;
    LODWORD(a7) = a3[1];
    result = *&a6 / *&a7 * v10;
    *a4 = __ROR8__(result, 32);
  }

  return result;
}

uint64_t sub_1001BAEDC(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  dataOutMoved = 0;
  cryptorRef = 0;
  v10 = CCCryptorCreate(1u, 0, 0, key, keyLength, 0, &cryptorRef);
  if (v10)
  {
    printf("Could not create cryptor : %d\n", v10);
    return 1041;
  }

  else
  {
    v12 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &dataOutMoved);
    if (v12)
    {
      printf("Failed to encrypt : %d (need %d, got %zu)\n", v12, a6, dataOutMoved);
      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      if (dataOutMoved == a6)
      {
        return 0;
      }

      else
      {
        printf("Incorrect checksum size %ld, expecting %d\n", dataOutMoved, a6);
        return 1043;
      }
    }
  }
}

uint64_t sub_1001BAFD4(void *a1, size_t a2, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  v41[0] = 0;
  v41[1] = 0;
  v12 = a4 & 0xF;
  v40[0] = 0;
  v40[1] = 0;
  if (a4)
  {
    v13 = a4 & 0xF;
  }

  else
  {
    v13 = 16;
  }

  v39.i64[1] = 0;
  *(v39.i64 + 1) = 0;
  if (sub_1000456EC(a1, a2, v41, 0x10u, v40, 0x10u))
  {
    return 1045;
  }

  LOBYTE(v15) = 0;
  v16 = 15;
  do
  {
    v17 = *(v40 + v16);
    v39.i8[v16] = v15 | (2 * v17);
    v15 = v17 >> 7;
    --v16;
  }

  while (v16);
  v38 = 0uLL;
  v39.i8[0] = v15 | (2 * LOBYTE(v40[0]));
  if (SLOBYTE(v40[0]) < 0)
  {
    v18 = veorq_s8(v39, xmmword_1008A34D0);
  }

  else
  {
    v18 = v39;
  }

  v38 = v18;
  LOBYTE(v19) = 0;
  v20 = 15;
  do
  {
    v21 = v38.u8[v20];
    v39.i8[v20] = v19 | (2 * v21);
    v19 = v21 >> 7;
    --v20;
  }

  while (v20);
  v37 = 0uLL;
  v39.i8[0] = v19 | (2 * v38.i8[0]);
  __dst = a5;
  if (v38.i8[0] < 0)
  {
    v22 = veorq_s8(v39, xmmword_1008A34D0);
  }

  else
  {
    v22 = v39;
  }

  v37 = v22;
  v23 = a4 >> 4;
  if (v12)
  {
    ++v23;
  }

  if (a4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  v25 = malloc_type_calloc(v24, 0x10uLL, 0x2CD82863uLL);
  v26 = malloc_type_calloc(v24 + 1, 0x10uLL, 0x9505F202uLL);
  v27 = v26;
  if (v25 && v26)
  {
    memcpy(v25, a3, a4);
    v28 = (16 * v24 - 16) & 0xF0;
    v29 = &v25[v28];
    if (v13)
    {
      v29->i8[v13] |= 0x80u;
      v30 = &v37;
    }

    else
    {
      v30 = &v38;
    }

    v31 = 0;
    v32 = 0;
    *v29 = veorq_s8(*v29, *v30);
    v33 = v27 + 16;
    if ((v24 & 0xFE) != 0)
    {
      v24 = v24;
    }

    else
    {
      v24 = 1;
    }

    while (1)
    {
      v34 = v31;
      v35 = 16;
      do
      {
        v25[v34] ^= v27[v34];
        ++v34;
        --v35;
      }

      while (v35);
      if (sub_1000456EC(a1, a2, &v25[16 * v32], 0x10u, &v33[16 * v32], 0x10u))
      {
        break;
      }

      ++v32;
      v31 += 16;
      if (v32 == v24)
      {
        memcpy(__dst, &v33[v28], a6);
        free(v27);
        free(v25);
        return 0;
      }
    }

    free(v27);
    free(v25);
    return 1047;
  }

  else
  {
    sub_100304AF8("Could not allocate memory for the blocks");
    if (v25)
    {
      free(v25);
    }

    if (v27)
    {
      free(v27);
    }

    return 1046;
  }
}

uint64_t sub_1001BB2BC(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  memset(__src, 0, sizeof(__src));
  v17 = 128;
  v8 = ccec_cp_256();
  __chkstk_darwin(v8);
  v10 = (&v16 - v9);
  bzero(&v16 - v9, v9);
  __chkstk_darwin(v11);
  v13 = (&v16 - v12);
  bzero(&v16 - v12, v12);
  result = 101;
  if (a2 == 64 && a4 == 96)
  {
    *v13 = v8;
    if (ccec_make_pub())
    {
      sub_100304AF8("Failed to ccec_make_pub.\n");
      return 1048;
    }

    else
    {
      *v10 = v8;
      if (ccec_make_priv())
      {
        sub_100304AF8("Failed to ccec_make_priv.\n");
        return 1049;
      }

      else
      {
        v15 = ccecdh_compute_shared_secret();
        if (v15)
        {
          sub_100304AF8("Failed to ccecdh_compute_shared_secret (err=%d), outSize=%d.\n", v15, v17);
          return 1050;
        }

        else
        {
          memcpy(a5, __src, v17);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BB4B4(_OWORD *a1, _OWORD *a2)
{
  memset(v29, 0, sizeof(v29));
  if (byte_100BC9C08 == 1)
  {
    sub_100304AF8("USING DEBUG KEYS\n");
    v4 = 0;
    *a1 = xmmword_1008A3520;
    a1[1] = unk_1008A3530;
    v5 = a1 + 2;
    a1[2] = xmmword_1008A3540;
    a1[3] = unk_1008A3550;
    *a2 = xmmword_1008A3520;
    a2[1] = unk_1008A3530;
    a2[2] = xmmword_1008A3540;
    a2[3] = unk_1008A3550;
    v6 = a2 + 4;
    v7 = 31;
    a2[4] = xmmword_1008A3500;
    a2[5] = unk_1008A3510;
    do
    {
      v8 = *(a1 + v4);
      *(a1 + v4) = *(a1 + v7);
      *(a1 + v7) = v8;
      ++v4;
      --v7;
    }

    while (v4 != 16);
    v9 = 0;
    v10 = a1 + 63;
    do
    {
      v11 = *(v5 + v9);
      *(v5 + v9) = *v10;
      *v10-- = v11;
      ++v9;
    }

    while (v9 != 16);
    v12 = 0;
    v13 = 31;
    do
    {
      v14 = *(a2 + v12);
      *(a2 + v12) = *(a2 + v13);
      *(a2 + v13) = v14;
      ++v12;
      --v13;
    }

    while (v12 != 16);
    v15 = 0;
    v16 = a2 + 2;
    v17 = a2 + 63;
    do
    {
      v18 = *(v16 + v15);
      *(v16 + v15) = *v17;
      *v17-- = v18;
      ++v15;
    }

    while (v15 != 16);
    v19 = 0;
    v20 = a2 + 95;
    do
    {
      v21 = *(v6 + v19);
      *(v6 + v19) = *v20;
      *v20-- = v21;
      ++v19;
    }

    while (v19 != 16);
    return 0;
  }

  else
  {
    key = 0;
    v23 = ccec_cp_256();
    __chkstk_darwin(v23);
    bzero(&v27 - v24, v24);
    if (ccrng())
    {
      key = ccec_generate_key();
      if (key)
      {
        sub_100304AF8("Failed to ccec_generate_key.\n");
      }

      else
      {
        if ((((cczp_bitlen() + 7) >> 2) | 1) == 0x41)
        {
          ccec_x963_export();
          v25 = *(&v29[1] + 1);
          *a1 = *(v29 + 1);
          a1[1] = v25;
          v26 = *(&v29[3] + 1);
          a1[2] = *(&v29[2] + 1);
          a1[3] = v26;
          if (3 * ((cczp_bitlen() + 7) >> 3) == 96)
          {
            ccec_x963_export();
            memmove(a2, v29 + 1, 0x60uLL);
            return 0;
          }
        }

        sub_100304AF8("ccec_x963_export_size is %d.\n");
      }
    }

    else
    {
      sub_100304AF8("ccrng failed: %d\n");
    }

    return 1051;
  }
}

void sub_1001BB790()
{
  if (qword_100B5B560 != -1)
  {
    sub_100812AD0();
  }

  if (!atomic_fetch_add(&dword_100B5B444, 1u))
  {
    v0 = qword_100B5B438;

    dispatch_async(v0, &stru_100AE53C8);
  }
}

void sub_1001BB7F8(id a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"AssertName", @"com.apple.BTStack.ForceWake");
  IOPMAssertionDeclareSystemActivityWithProperties();
  CFRelease(Mutable);
}

void sub_1001BB87C()
{
  if (!atomic_load(&dword_100B5B444))
  {
    sub_1000D660C();
  }

  if (atomic_fetch_add(&dword_100B5B444, 0xFFFFFFFF) == 1)
  {
    v1 = qword_100B5B438;

    dispatch_async(v1, &stru_100AE5408);
  }
}

void sub_1001BB8E8(id a1)
{
  if (dword_100B5B448)
  {
    IOPMAssertionRelease(dword_100B5B448);
    dword_100B5B448 = 0;
  }
}

void sub_1001BB918(const char *a1)
{
  if (strlen(a1))
  {
    __strncpy_chk();
  }

  if (qword_100B5B568 != -1)
  {
    sub_100812AE4();
  }

  v1 = qword_100B5B570;

  dispatch_async(v1, &stru_100AE5448);
}

void sub_1001BB998(id a1)
{
  if (!dword_100B5B514)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"com.apple.BTStack.AbortSleep.%s", &xmmword_100B5B44C);
    CFDictionaryAddValue(Mutable, @"AssertName", v2);
    IOPMAssertionDeclareSystemActivityWithProperties();
    CFRelease(Mutable);
    CFRelease(v2);
  }
}

void sub_1001BBA60(uint64_t a1)
{
  if (qword_100B5B568 != -1)
  {
    sub_100812AE4();
  }

  v2 = qword_100B5B570;

  dispatch_async(v2, &stru_100AE5488);
}

void sub_1001BBAAC(id a1)
{
  if (dword_100B5B514)
  {
    IOPMAssertionRelease(dword_100B5B514);
    dword_100B5B514 = 0;
    xmmword_100B5B44C = 0u;
    unk_100B5B45C = 0u;
    xmmword_100B5B46C = 0u;
    unk_100B5B47C = 0u;
    xmmword_100B5B48C = 0u;
    unk_100B5B49C = 0u;
    xmmword_100B5B4AC = 0u;
    unk_100B5B4BC = 0u;
    xmmword_100B5B4CC = 0u;
    unk_100B5B4DC = 0u;
    xmmword_100B5B4EC = 0u;
    unk_100B5B4FC = 0u;
    qword_100B5B50C = 0;
  }
}

uint64_t sub_1001BBB30(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    v2 = 0x20000;
    if (v1)
    {
      v3 = *(v1 + 8);
      if (v3)
      {
        v2 = v3;
      }

      else
      {
        v2 = 0x20000;
      }
    }
  }

  else
  {
    v2 = 0x20000;
  }

  zone = malloc_create_zone(v2, 0);
  qword_100B5B528 = zone;
  if (!zone)
  {
    return 104;
  }

  malloc_set_zone_name(zone, "BTStack");
  return 0;
}

uint64_t sub_1001BBB94()
{
  malloc_destroy_zone(qword_100B5B528);
  qword_100B5B528 = 0;
  return 0;
}

void *sub_1001BBBD8(size_t size, malloc_type_id_t type_id)
{
  if (HIDWORD(size))
  {
    return 0;
  }

  else
  {
    return malloc_type_zone_calloc(qword_100B5B528, 1uLL, size, type_id);
  }
}

uint64_t sub_1001BBC00()
{
  bzero(__buf, 0x400uLL);
  v6 = 0;
  bzero(v7, 0x400uLL);
  sub_1000D42DC(&v6 + 1, &v6);
  result = open("/dev/uart.log", 0);
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (qword_100B5B978 != -1)
    {
      sub_100812B0C();
    }

    __strlcat_chk();
    __strlcat_chk();
    v2 = open(v7, 521, 420);
    if (v2 < 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
      dprintf(v2, "START DUMP : %d.%d\n", HIDWORD(v6), v6);
      v4 = read(v1, __buf, 0x400uLL);
      if (v4 >= 1)
      {
        for (i = v4; i > 0; i = read(v1, __buf, 0x400uLL))
        {
          write(v3, __buf, i);
        }
      }

      close(v1);
    }

    return close(v3);
  }

  return result;
}

uint64_t sub_1001BBD6C(uint64_t result, unsigned int a2)
{
  if (byte_100B5B53C == 1)
  {
    v13 = v2;
    v14 = v3;
    v5 = result;
    if (dword_100B5B530)
    {
      sub_10002242C(dword_100B5B530);
    }

    if (a2 >= 7)
    {
      v6 = v5[2] == 27 && v5[3] == 3;
      if (v6 && v5[6] == 255)
      {
        sub_100304AF8("Hardward Core dump complete, reporting to daemon");
        sub_100241A30(245);
      }
    }

    if (sub_10002195C(sub_1001BBF44, 0, 100, &dword_100B5B530))
    {
      sub_100304AF8("Could not register timeout for CoreDump abort.\n");
    }

    if ((byte_100B5B534 & 1) == 0)
    {
      byte_100B5B534 = 1;
      sub_100304AF8("Hardware Core dump starts\n");
    }

    ++dword_100B5B538;
    if ((byte_100B5B980 & 1) == 0)
    {
      v12 = 0;
      v11 = 0;
      sub_1000D42DC(&v12, &v11);
      v9 = v12;
      v10 = v11;
      v7 = gmtime(&v9);
      strftime(byte_100B5BA81, 0x3CuLL, "%Y_%m_%d_%H_%M_%S", v7);
      if (qword_100B5B978 != -1)
      {
        sub_100812B0C();
      }

      __sprintf_chk(byte_100B5B981, 0, 0x100uLL, "%s/bluetoothd-FWCOREDUMP_%s.log", byte_100B5B578, byte_100B5BA81);
      byte_100B5B980 = 1;
    }

    result = open(byte_100B5B981, 521, 420);
    if ((result & 0x80000000) == 0)
    {
      v8 = result;
      write(result, v5, a2);
      return close(v8);
    }
  }

  return result;
}

void sub_1001BBF44()
{
  sub_100304AF8("Hardward Core dump complete, reporting to daemon");

  sub_100241A30(245);
}

__n128 sub_1001BBFA0(__int128 *a1, __n128 *a2)
{
  xmmword_100B5B53D = *a1;
  result = *a2;
  xmmword_100B5B54D = *a2;
  return result;
}

uint64_t sub_1001BBFC4(const void *a1, int a2, uint64_t a3, int a4)
{
  result = 101;
  if (a2 == 16 && a4 == 7)
  {
    v8 = 0uLL;
    result = sub_1001BAEDC(&xmmword_100B5B54D, 0x10uLL, a1, 0x10u, &v8, 0x10u);
    if (!result)
    {
      if (*(&v8 + 7) == *(&xmmword_100B5B53D + 7) && HIBYTE(v8) == HIBYTE(xmmword_100B5B53D))
      {
        result = 0;
        *a3 = v8;
        *(a3 + 4) = WORD2(v8);
        *(a3 + 6) = BYTE6(v8);
      }

      else
      {
        return 131;
      }
    }
  }

  return result;
}

void sub_1001BC148(id a1)
{
  NSStartSearchPathEnumerationPrivate();
  NSGetNextSearchPathEnumeration();

  __strlcat_chk();
}

void sub_1001BC1BC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != 31)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicConnectionInd on psm %x, addr %:, cid %x", a1, a2, a3);
    v6 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v7 = sub_1000E1FE8(a2);
  if (v7)
  {
    v8 = v7;
    if (sub_1002B5C7C(v7) || sub_1002B5AD4(a2))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT session with this connection already exists, reject duplicate");
        v9 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v10 = sub_100290164(0, 0, 0, a3, 0, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_Accept rejection of duplicate connection failed with result %!", v11);
          v12 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    else
    {
      v13 = sub_1002B59BC(a2, 0);
      if (v13)
      {
        *(v13 + 8) = a3;
        *v13 = v8;
        if (qword_100B5BAC8)
        {
          qword_100B5BAC8((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("ATT failed to create session");
          v14 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1000D660C();
      }
    }
  }
}

uint64_t sub_1001BC414(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1002D3618(a1);
  v15 = v3;
  v16 = WORD2(v3);
  v4 = sub_1000E1FE8(&v15);
  if (!v4)
  {
    return 101;
  }

  v5 = sub_1002B5C7C(v4);
  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ATT_ClassicAccept can not find bearer");
      v9 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  v6 = v5;
  v7 = *(v5 + 8);
  if (!*(v5 + 8))
  {
    sub_1000D660C();
    v7 = *(v6 + 8);
  }

  v8 = sub_100290164(sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, v7, &xmmword_1008A3560, v2, &unk_100AE55C0);
  if (!v8 && (v2 & 1) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Accept error with %!", v8);
      v11 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v12 = sub_1002B55A8(v6);
  if (v12)
  {
    v13 = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to remove ATT session with %!", v13);
      v14 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v8;
}

void sub_1001BC5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicConnectCfm: cid %x inMTU %d outMTU %d result %!", a1, a2, a3, a4);
    v8 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v9 = sub_1002B5D28(a1);
  if (a2 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  if (v10 <= 0x30)
  {
    v11 = 48;
  }

  else
  {
    v11 = v10;
  }

  if (v9)
  {
    v12 = v9;
    v13 = v9[8];
    v14 = v9[9];
    v15 = v9[10];
    v16 = v9[11];
    v17 = v9[12];
    v18 = v9[13];
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT cfm result is %!", a4);
        v19 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v20 = sub_1002B55A8(v12);
      if (!v20)
      {
        goto LABEL_31;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v20);
        v21 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_30;
    }

    *buf = 0;
    a4 = sub_10028DAA8(a1, buf);
    if (a4)
    {
      if (!sub_10000C240())
      {
        goto LABEL_30;
      }

      sub_10000AF54("L2CAP get handle failed");
      v23 = sub_10000C050(0x5Cu);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (sub_1002B5934(v12, *buf, v11) == v12)
      {
        LODWORD(v20) = 1;
        goto LABEL_31;
      }

      if (!sub_10000C240() || (sub_10000AF54("ATT cfm failed to update session"), v24 = sub_10000C050(0x5Cu), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
      {
LABEL_30:
        LODWORD(v20) = 0;
LABEL_31:
        if (off_100B5BAD0)
        {
          off_100B5BAD0((v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8) | v18, a4);
        }

        if (v20)
        {
          sub_1002B5164();
          sub_1002B5178();
        }

        return;
      }
    }

    sub_1000E09C0();
    goto LABEL_30;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ATT cfm failed to find session");
    v22 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1001BC8DC(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicDisconnectCB: cid %x result %!", a1, a2);
    v4 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v5 = sub_1002B5D28(a1);
  if (v5)
  {
    v6 = v5;
    if (off_100B5BAD8)
    {
      off_100B5BAD8((v5[8] << 40) | (v5[9] << 32) | (v5[10] << 24) | (v5[11] << 16) | (v5[12] << 8) | v5[13], a2);
    }

    sub_1002B518C(*v6, a2);
    v7 = sub_1002B5CA4(*v6);
    if (v7)
    {
      v8 = v7;
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v8);
        v9 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("attClassicDisconnectCB received on cid %d, but no bearer was found", a1);
      v10 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
  }
}

void sub_1001BCAA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v7 = sub_10028DAA8(a1, &v10);
  if (v7)
  {
    v8 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("ATT recv data ind get connection handle failed with status %!", v8);
      v9 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    sub_1002B6D1C(v10, a2, a3, a4);
  }
}

uint64_t sub_1001BCB4C(unint64_t a1)
{
  v1 = sub_1002D3618(a1);
  LODWORD(v10) = v1;
  WORD2(v10) = WORD2(v1);
  if (sub_10000C240())
  {
    sub_10000AF54("BT_ATT_ClassicConnect addr=%: ", &v10);
    v2 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_10000C0FC();
      *buf = 136446210;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1002B5AD4(&v10))
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Classic Connect Att session with this connection already exists!!!");
    v4 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_7;
  }

  v7 = sub_1002B59BC(&v10, 1);
  if (!v7)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Classic Connect failed to allocate bearer");
    v9 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_7:
    sub_10080F604();
    return 101;
  }

  v5 = sub_10028F454(sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, 31, &v10, &xmmword_1008A3560, v7 + 8, &unk_100AE55C0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Connect error with %!", v5, v10);
      v8 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

uint64_t sub_1001BCD64(unint64_t a1)
{
  v1 = sub_1002D3618(a1);
  LODWORD(v11) = v1;
  WORD2(v11) = WORD2(v1);
  if (sub_10000C240())
  {
    sub_10000AF54("ATT ClassicDisconnect addr=%: ", &v11);
    v2 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_10000C0FC();
      *buf = 136446210;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v4 = sub_1000E1FE8(&v11);
  if (!v4)
  {
    return 101;
  }

  v5 = sub_1002B5C7C(v4);
  if (!v5)
  {
    return 101;
  }

  v6 = v5;
  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_1000D660C();
    v7 = *(v6 + 8);
  }

  v8 = sub_10029104C(v7, 436);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Disconnect error with %!", v8, v11);
      v9 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v8;
}

uint64_t sub_1001BCEBC(int a1, int a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("ATT Classic handle registration:  0x%x -> 0x%x", a1, a2);
    v4 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  byte_100B5BAA8 = 1;
  word_100B5BAAA = 2;
  dword_100B5BAB0 = a1;
  byte_100B5BAB8 = 1;
  word_100B5BABA = 2;
  dword_100B5BAC0 = a2;
  v7 = &unk_100AE55F0;
  LOWORD(v8) = 3;
  v9 = off_100B51FE8;
  LOWORD(v10) = word_100B51FF0;
  return sub_1002F7E1C(&v7, &v6);
}

__n128 sub_1001BD000(__n128 *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (qword_100B5BAC8)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100B5BAD0 == 0;
  }

  if (!v3 || off_100B5BAD8 != 0)
  {
    sub_1000D660C();
  }

  if (a1)
  {
    result = *a1;
    off_100B5BAD8 = a1[1].n128_u64[0];
    *&qword_100B5BAC8 = result;
  }

  return result;
}

void sub_1001BD060()
{
  qword_100B5BAC8 = 0;
  off_100B5BAD0 = 0;
  off_100B5BAD8 = 0;
}

uint64_t sub_1001BD074(uint64_t a1, _WORD *a2)
{
  v3[0] = xmmword_1008A3560;
  v3[1] = *algn_1008A3570;
  return sub_10028EA9C(31, v3, a1, sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, a2, &unk_100AE55C0);
}

uint64_t sub_1001BD0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0;
  result = sub_1002AD958(a1, &v11);
  if (!result)
  {
    v9 = sub_1002B5AD4(&v11);
    if (v9 || (v9 = sub_1002B59BC(&v11, 1)) != 0)
    {
      *(v9 + 16) = a1;
      sub_1001BC5BC(a1, a2, a3, a4);
      return 0;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_ATT_FastConnect_ClassicConnect error creating ATT signaling");
        v10 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 104;
    }
  }

  return result;
}

uint64_t sub_1001BD1BC(uint64_t a1, unsigned int a2)
{
  v9 = 0;
  v3 = sub_1000E1FE8(a1);
  v4 = v3;
  if (v3 && (v5 = sub_1002B5C7C(v3)) != 0)
  {
    v6 = sub_1002B5CA4(*v5);
    if (v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_ATT_ClassicFastDisconnectAtt destroy session error with %d", v6);
        v7 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    v6 = 101;
  }

  if (a2)
  {
    if (!sub_1000ABC7C(a2, &v9))
    {
      if (v9)
      {
        sub_10028E908(v9);
        if (v4)
        {
          sub_1000D27D8(v4);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1001BD290(uint64_t a1)
{
  bzero(&xmmword_100B5BAE0, 0xB68uLL);
  byte_100B5C620 = 1;
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = *a1;
  qword_100B5C638 = *(a1 + 16);
  xmmword_100B5C628 = v2;
  if (byte_100B5C640)
  {
    return 0;
  }

  v11 = &unk_100AE56A0;
  v12 = 3;
  v13 = off_100B51FF8;
  v14 = word_100B52000;
  v5 = sub_100296BCC(&word_100B5C642);
  if (v5)
  {
    v3 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP psm allocation failed!", v11, v12, v13, v14);
      v6 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_100812B34();
      }
    }
  }

  else
  {
    v7 = sub_1002967FC(word_100B5C642, sub_1001BF4CC);
    if (!v7)
    {
      byte_100B5C648 = 1;
      word_100B5C64A = 2;
      dword_100B5C650 = word_100B5C642;
      v3 = sub_1002F7E1C(&v11, algn_100B5C644);
      if (!v3)
      {
        byte_100B5C640 = 1;
        return v3;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_SDPDB_AddServiceRecord failed", v11, v12, v13, v14);
        v9 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }

      sub_1002969F8(word_100B5C642);
      goto LABEL_18;
    }

    v3 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Register failed", v11, v12, v13, v14);
      v8 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }
  }

LABEL_18:
  if (sub_10000C240())
  {
    sub_10000AF54("registerL2CAPListeners failed");
    v10 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }

  return v3;
}

uint64_t sub_1001BD4DC(uint64_t a1)
{
  v2 = &xmmword_100B5BAE0 + 1;
  v3 = 30;
  while (1)
  {
    v4 = *(v2 - 2);
    v5 = *(v2 - 1);
    if ((v5 | (v4 << 16)) == a1)
    {
      break;
    }

    v2 += 18;
    if (!--v3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Handle %x", a1);
        v6 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  v8 = sub_100192628(word_100B5C350, 30, *(v2 - 1));
  if (v8)
  {
    v9 = v8;
    v10 = sub_100191F30(v4, v5, v2, 2, 2);
    v16 = 0;
    v15 = 0;
    v11 = *(v10 + 1);
    LOWORD(v16) = *(v10 + 5);
    WORD1(v16) = v11;
    sub_10001FF10((v10 + 1), 2u);
    sub_10001F968(v10 + 16, &v16, 4uLL, 2u);
    sub_10001F968(v10 + 16, &v15, *(v10 + 64), 2u);
    *(v10 + 19) = v9;
    v7 = sub_1001921E0(v10, sub_1001BED08);
    if (!v7)
    {
      sub_1001BF6B4(2, a1);
      return v7;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendDisconnectReqPacket channel not found: addr=%: cid=%d sid=%d result=%d", v2, v5, v4, 0);
      v12 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    v7 = 406;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("sendDisconnectReqPacket failed");
    v13 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }

  return v7;
}

char *sub_1001BD714(int *a1, __int16 a2, uint64_t a3)
{
  v4 = 0;
  while (1)
  {
    result = &xmmword_100B5BAE0 + v4;
    if (!*(&xmmword_100B5BAE0 + v4 + 16))
    {
      break;
    }

    v4 += 72;
    if (v4 == 2160)
    {
      return 0;
    }
  }

  v6 = *a1;
  *(result + 4) = *(a1 + 2);
  *(result + 1) = v6;
  *(result + 1) = a2;
  *result = *(a3 + 8);
  *(result + 2) = *a3;
  *(result + 12) = *(a3 + 10);
  *(result + 16) = 0;
  *(result + 52) = *(a3 + 14);
  return result;
}

uint64_t sub_1001BD780(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  if (sub_10000C240())
  {
    sub_10000AF54("sendConnectReqPacket: addr=%: cid=%u sid=%u major=%u minor=%u result=%u", a1, a2, a3, a4, a5, 0);
    v12 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = sub_100192628(word_100B5C350, 30, a2);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100191F30(a3, a2, a1, 0, 12);
    if (!v15)
    {
      sub_1000D660C();
    }

    v20 = 0;
    v16 = *(v15 + 1);
    LOWORD(v20) = *(v15 + 5);
    WORD1(v20) = v16;
    *buf = a4;
    *&buf[2] = a5;
    v22 = *a6;
    sub_10001FF10((v15 + 1), 2u);
    sub_10001F968(v15 + 16, &v20, 4uLL, 2u);
    sub_10001F968(v15 + 16, buf, *(v15 + 64), 2u);
    *(v15 + 19) = v14;
    v17 = sub_1001921E0(v15, sub_1001BED08);
    if (!v17)
    {
      sub_1001BF6B4(0, a2 | (a3 << 16));
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendConnectReqPacket channel not found: addr=%: cid=%d sid=%d result=%d", a1, a2, a3, 0);
      v18 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    return 406;
  }

  return v17;
}

double sub_1001BD9B0(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4)
{
  if (a3 <= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Incoming message has invalid length %d", a3);
      v6 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    return result;
  }

  v54 = 0;
  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c", 662, "buf");
  }

  v10 = 0;
  v11 = a3 - 4;
  v12 = *a2;
  v13 = a2[1];
  do
  {
    if (__PAIR64__(*(&xmmword_100B5BAE0 + v10 + 2), *(&xmmword_100B5BAE0 + v10)) == __PAIR64__(a1, v13))
    {
      if (sub_1000ABC7C(a1, &v54) || !sub_1000B12AC(v54))
      {
        if (!sub_10000C240())
        {
          return result;
        }

        sub_10000AF54("Can't find channel %d", a1);
        v15 = sub_10000C050(0x52u);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          return result;
        }

        goto LABEL_15;
      }

      v16 = (&xmmword_100B5BAE0 + v10);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("BT_AAP_DISCONNECT_RSP from l2capRecvDataInd for cid=%d", a1);
            v30 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = sub_10000C0FC();
              *buf = 136446210;
              v56 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1001BF95C(a1 | (v13 << 16));
          if (a3 < 6)
          {
            v32 = 0;
          }

          else
          {
            v32 = a2[2];
          }

          sub_1001BFA00(v13, a1, v32);
          return result;
        }

        if (v12 == 4)
        {
          v24 = v16[1];
          if (__PAIR64__(v24, *v16) == __PAIR64__(a1, v13))
          {
            v25 = *(&xmmword_100B5BAE0 + v10 + 16);
            if (v25)
            {
              v26 = *(v25 + 32);
              if (v26)
              {
                v26(v24 | (v13 << 16), a2 + 2, v11, a4);
              }
            }
          }

          return result;
        }

LABEL_37:
        if (!sub_10000C240())
        {
          return result;
        }

        sub_10000AF54("Should not be here");
        v27 = sub_10000C050(0x52u);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          return result;
        }

LABEL_15:
        sub_10080F7A0();
        return result;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("l2capRecvDataInd: BT_AAP_DISCONNECT_REQ");
            v17 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = sub_10000C0FC();
              *buf = 136446210;
              v56 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v19 = sub_1000B12AC(v54);
          v20 = sub_1001C043C((v19 + 10), a1, v13);
          if (v20)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("sendDisconnectRspPacket failed");
              v21 = sub_10000C050(0x52u);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100812B34();
              }
            }
          }

          v22 = *(&xmmword_100B5BAE0 + v10 + 16);
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v23(a1 | (v13 << 16), v20);
            }
          }

          goto LABEL_81;
        }

        goto LABEL_37;
      }

      if (a3 < 6)
      {
        v33 = 4;
      }

      else
      {
        v28 = a2[2];
        if (a2[2])
        {
          v29 = 0;
LABEL_77:
          v50 = a1 | (v13 << 16);
          sub_1001BF95C(v50);
          v51 = *(&xmmword_100B5BAE0 + v10 + 16);
          if (v51)
          {
            v52 = *(v51 + 8);
            if (v52)
            {
              v53 = sub_1000B12AC(v54);
              v52(v53 + 10, v28, v50, *(&xmmword_100B5BAE0 + v10 + 44), *(&xmmword_100B5BAE0 + v10 + 48), *(&xmmword_100B5BAE0 + v10 + 50), &xmmword_100B5BAE0 + v10 + 52);
            }
          }

          if (v29)
          {
            return result;
          }

LABEL_81:
          *(v16 + 8) = 0;
          result = 0.0;
          *(v16 + 2) = 0u;
          *(v16 + 3) = 0u;
          *v16 = 0u;
          *(v16 + 1) = 0u;
          return result;
        }

        v33 = 6;
      }

      v34 = &xmmword_100B5BAE0 + v10;
      if (*(&xmmword_100B5BAE0 + v10 + 24) != 3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("l2capRecvDataInd: BT_AAP_CONNECT_RSP connection in unhandled state sid=%u cid=%u state=%u", v13, a1, v34[24]);
          v43 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        goto LABEL_76;
      }

      v34[24] = 4;
      *(v34 + 22) = *(sub_1000B12AC(v54) + 32) - 4;
      if (a3 <= 5)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c", 701, "void l2capRecvDataInd(OI_L2CAP_CID, uint8_t *, uint16_t, _Bool, OI_HCI_Packet_Attrs *)");
      }

      else if ((a3 - v33) > 1)
      {
        v35 = &xmmword_100B5BAE0 + v10;
        *(&xmmword_100B5BAE0 + v10 + 48) = a2[v33 / 2];
        v36 = v33 + 2;
        if ((a3 - v36) > 1)
        {
          *(v35 + 25) = *(a2 + v36);
          LODWORD(v36) = v33 + 4;
          if (a3 >= 18)
          {
            v37 = 18;
          }

          else
          {
            v37 = a3;
          }

          v38 = v35 + 52;
          v39 = (v37 - 10);
          v40 = &v35[v39 + 52];
          v41 = a3 - v36;
          LODWORD(v42) = v39;
LABEL_69:
          if (v41 >= v42 && v38 < v40)
          {
            v45 = a2 + v36;
            v46 = &xmmword_100B5BAE0 + v10 + v40 - v38 + 52;
            do
            {
              v47 = *v45++;
              *v38++ = v47;
            }

            while (v46 != v38);
          }

          if (sub_10000C240())
          {
            sub_10000AF54("l2capRecvDataInd: BT_AAP_CONNECT_RSP connection accepted sid=%u cid=%u", v13, a1);
            v48 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = sub_10000C0FC();
              *buf = 136446210;
              v56 = v49;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

LABEL_76:
          v28 = 0;
          v29 = 1;
          goto LABEL_77;
        }

LABEL_65:
        if (a3 >= 18)
        {
          v44 = 18;
        }

        else
        {
          v44 = a3;
        }

        v38 = &xmmword_100B5BAE0 + v10 + 52;
        v42 = (v44 - 10);
        v40 = &v38[v42];
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c", 704, "void l2capRecvDataInd(OI_L2CAP_CID, uint8_t *, uint16_t, _Bool, OI_HCI_Packet_Attrs *)");
        v41 = 0;
        goto LABEL_69;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c", 702, "void l2capRecvDataInd(OI_L2CAP_CID, uint8_t *, uint16_t, _Bool, OI_HCI_Packet_Attrs *)");
      LODWORD(v36) = v33;
      goto LABEL_65;
    }

    v10 += 72;
  }

  while (v10 != 2160);
  if (sub_10000C240())
  {
    sub_10000AF54("Incoming message to invalid cid/sid (%d/%d)", v13, a1);
    v14 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      sub_10080F7A0();
    }
  }

  return result;
}

uint64_t sub_1001BE058(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("BT_AAP_Client_Connect");
    v4 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v27) = 136446210;
      *(&v27 + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", &v27, 0xCu);
    }
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 30;
  v9 = &xmmword_100B5BAE0;
  do
  {
    if (*(v9 + 1) == *a1 && *(v9 + 4) == *(a1 + 4))
    {
      v11 = *(v9 + 24);
      if (v11 == 2)
      {
        return 0;
      }

      v12 = v11 > 2;
      if (*v9 == *(a2 + 8))
      {
        return 133;
      }

      v7 = *(v9 + 1);
      v5 |= v12;
      v6 = v9;
    }

    v9 = (v9 + 72);
    --v8;
  }

  while (v8);
  if (v6 || (v6 = sub_1001BD714(a1, v7, a2)) != 0)
  {
    if ((v5 & 1) == 0)
    {
      v17 = *(v6 + 21);
      v18 = sub_10000C240();
      if (v17)
      {
        if (v18)
        {
          sub_10000AF54("PSM is already available, connect L2CAP");
          v19 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10000C0FC();
            LODWORD(v27) = 136446210;
            *(&v27 + 4) = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", &v27, 0xCu);
          }
        }

        sub_1001BE48C(v6);
        return 0;
      }

      if (v18)
      {
        sub_10000AF54("AAP_CLIENT_Connect initiating SDP");
        v21 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_10000C0FC();
          LODWORD(v27) = 136446210;
          *(&v27 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", &v27, 0xCu);
        }
      }

      v23 = sub_1002F5AE8(sub_1001BE66C, sub_1001BE724, a1);
      if (!v23)
      {
        v6[24] = 1;
        *(&v27 + 1) = v6;
        *&v27 = 8;
        return sub_10002195C(sub_1001BE7C0, &v27, 30, v6 + 16);
      }

      v15 = v23;
      if (!sub_10000C240())
      {
        goto LABEL_38;
      }

      sub_10000AF54("Failed to connect SDP");
      v24 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

LABEL_37:
      sub_100812B34();
LABEL_38:
      *(v6 + 8) = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      return v15;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AAP_Client: L2CAP connected, beginning AAP connection");
      v13 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10000C0FC();
        LODWORD(v27) = 136446210;
        *(&v27 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", &v27, 0xCu);
      }
    }

    v6[24] = 3;
    v15 = sub_1001BD780(a1, v7, *(a2 + 8), *(a2 + 10), *(a2 + 12), (a2 + 14));
    if (v15)
    {
      if (!sub_10000C240())
      {
        goto LABEL_38;
      }

      sub_10000AF54("sendConnectReqPacket failed");
      v16 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed");
      v25 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return 104;
  }

  return v15;
}

void sub_1001BE48C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Connecting L2CAP for %:", a1 + 4);
    v2 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v3 = *(a1 + 42);
  if (*(a1 + 42))
  {
    *(a1 + 24) = 2;
    v4 = sub_100191DCC();
    v5 = sub_100191DF0();
    if (sub_10028F454(sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, v3, a1 + 4, v4, (a1 + 2), v5))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_L2CAP_Connect failed");
        v6 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }

      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP disconnected without a valid PSM");
      v7 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10002242C(*(a1 + 64));
    *(a1 + 24) = 0;
  }
}

uint64_t sub_1001BE66C(uint64_t result)
{
  v4 = unk_100AE5758;
  v3 = xmmword_1008A3600;
  if (!result)
  {
    v2[1] = &v4;
    v2[0] = 65542;
    v1[1] = &v3;
    v1[0] = 65542;
    result = sub_1002F69AC(sub_1001C05A0, v2, v1);
    if (result)
    {
      return sub_1002F61A8();
    }
  }

  return result;
}

void sub_1001BE724()
{
  v0 = &xmmword_100B5BAE0;
  v1 = 30;
  while (*(v0 + 24) != 1)
  {
    v0 = (v0 + 72);
    if (!--v1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No connection Entry for this SDP search resp");
        v2 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  sub_1001BE48C(v0);
}

void sub_1001BE7C0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Couldn't connect SDP for AAP!");
    v2 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1001BFA00(**(a1 + 8), *(*(a1 + 8) + 2), 3572);
}

uint64_t sub_1001BE834(int a1, char *a2, size_t a3)
{
  v6 = &word_100B5BB0C;
  v7 = 30;
  while (1)
  {
    v8 = *(v6 - 22);
    v9 = *(v6 - 21);
    if ((v9 | (v8 << 16)) == a1)
    {
      break;
    }

    v6 += 36;
    if (!--v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid handle %x", a1);
        v10 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  if (*v6 >= a3)
  {
    v13 = (v6 - 20);
    v14 = sub_100192628(word_100B5C350, 30, v9);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100191F30(v8, v9, v13, 4, a3);
      v21 = 0;
      v17 = *(v16 + 1);
      LOWORD(v21) = *(v16 + 5);
      WORD1(v21) = v17;
      sub_10001FF10((v16 + 1), 2u);
      sub_10001F968(v16 + 16, &v21, 4uLL, 0);
      sub_10001F968(v16 + 16, a2, a3, 0);
      *(v16 + 17) = a2;
      *(v16 + 19) = v15;
      v11 = sub_1001921E0(v16, sub_1001BED08);
      if (!v11)
      {
        return v11;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("sendDataPacket channel not found: addr=%: cid=%d sid=%d len=%d", v13, v9, v8, a3);
        v18 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100812BB0();
        }
      }

      v11 = 406;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("sendDataPacket failed");
      v19 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MTU=%d", *v6);
      v12 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100812CA8();
      }
    }

    return 142;
  }

  return v11;
}

uint64_t sub_1001BEAC8(int a1, char *a2, size_t a3)
{
  v6 = &xmmword_100B5BAE0;
  v7 = 30;
  while (1)
  {
    v8 = v6[1];
    if ((v8 | (*v6 << 16)) == a1)
    {
      break;
    }

    v6 += 36;
    if (!--v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid handle %x", a1);
        v9 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  if (v6[22] >= a3)
  {
    v12 = sub_100192628(word_100B5C350, 30, v8);
    if (v12)
    {
      v13 = v12;
      v14 = sub_100191F30(*v6, v6[1], v6 + 1, 4, a3);
      v17 = 0;
      v15 = *(v14 + 1);
      LOWORD(v17) = *(v14 + 5);
      WORD1(v17) = v15;
      sub_10001FF10((v14 + 1), 2u);
      sub_10001F968(v14 + 16, &v17, 4uLL, 0);
      sub_10001F968(v14 + 16, a2, a3, 0);
      *(v14 + 17) = a2;
      *(v14 + 19) = v13;
      return sub_10019205C(v14, sub_1001BED08);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_Client_SendUnstallableData channel not found: addr=%: cid=%d sid=%d len=%d", v6 + 2, v6[1], *v6, a3);
        v16 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100812BB0();
        }
      }

      return 406;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MTU=%d", v6[22]);
      v11 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100812CA8();
      }
    }

    return 142;
  }
}

void sub_1001BED08(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    sub_1000D660C();
  }

  v8 = v7[5];
  switch(v8)
  {
    case 2:
      if (sub_10000C240())
      {
        sub_10000AF54("l2capWriteCfm: BT_AAP_DISCONNECT_REQ");
        v12 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v16 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      break;
    case 3:
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_DISCONNECT_RSP from l2capWriteCfm for cid=%d, result=%d", a1, a4);
        v11 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v16 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1001BFA00(v7[1], *v7, a4);
      break;
    case 4:
      v9 = &xmmword_100B5BAE0;
      v10 = 30;
      while ((*(v9 + 1) | (*v9 << 16)) != *v7)
      {
        v9 = (v9 + 72);
        if (!--v10)
        {
          return;
        }
      }

      v13 = *(v9 + 2);
      if (v13)
      {
        v14 = *(v13 + 24);
        if (v14)
        {

          v14();
        }
      }

      break;
  }
}

uint64_t sub_1001BEF1C(uint64_t result, int a2, int a3)
{
  v3 = a3 | (a2 << 16);
  if (v3)
  {
    v4 = &xmmword_100B5BAE0;
    v5 = 30;
    while ((*(v4 + 1) | (*v4 << 16)) != v3)
    {
      v4 = (v4 + 72);
      if (!--v5)
      {
        return result;
      }
    }

    *(v4 + 22) = result;
  }

  return result;
}

uint64_t sub_1001BEF5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5)
{
  v8 = a2;
  v10 = 30;
  v11 = &xmmword_100B5BAE0 + 4;
  do
  {
    v12 = *v11 == *a1 && *(v11 + 2) == *(a1 + 4);
    if (v12 && *(v11 - 2) == *(a3 + 8))
    {
      return 133;
    }

    v11 += 72;
    --v10;
  }

  while (v10);
  v13 = sub_1001BD714(a1, 0, a3);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100191DCC();
    v16 = sub_100191DF0();
    v17 = v15[1];
    v26[0] = *v15;
    v26[1] = v17;
    v18 = sub_10028EA9C(v8, v26, a1, sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, a4, v16);
    if (v18)
    {
      v19 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_Client_FastConnect error creating AAP signaling");
        v20 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_13:
          sub_10080F7A0();
        }
      }
    }

    else
    {
      *&v26[0] = 0;
      v19 = sub_1000ABC7C(*a4, v26);
      if (v19 || !sub_1000B12AC(*&v26[0]))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Can't find channel %d", a4);
          v23 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v14[24] = 4;
        *(v14 + 22) = *(sub_1000B12AC(*&v26[0]) + 32) - 4;
        v24 = *a4;
        *(v14 + 1) = v24;
        v25 = *(a3 + 8);
        *v14 = v25;
        *a5 = v24 | (v25 << 16);
        return sub_100192470(word_100B5C350, 0x1Eu, *a4, 0);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed");
      v21 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return 104;
  }

  return v19;
}

double sub_1001BF1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  if (!a4)
  {
    v4 = sub_100192470(word_100B5C350, 0x1Eu, a1, 0);
    if (v4)
    {
      sub_10029104C(a1, 436);
    }
  }

  return sub_1001BFFC8(a1, v6, v5, v4);
}

void sub_1001BF238(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_10000C240())
  {
    sub_10000AF54("l2capDisconnectInd from aap_client cid=%d reason=%d", v3, a2);
    v4 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v6 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_10019252C(word_100B5C350, 30, v3);
  sub_1001C0304(v3, a2);
}

void sub_1001BF328(uint64_t a1, unsigned int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("BT_AAP_Client_cleanFastConnect cid=%d", a2);
    v4 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_10019252C(word_100B5C350, 30, a2);
  if (a2)
  {
    *buf = 0;
    if (!sub_1000ABC7C(a2, buf))
    {
      if (*buf)
      {
        sub_10028E908(*buf);
        v5 = sub_1000E1FE8(a1);
        if (v5)
        {
          sub_1000D27D8(v5);
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("BT_AAP_Client_cleanFastConnectAAP NULL Handle");
          v6 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  v7 = &xmmword_100B5BAE0 + 4;
  v8 = 30;
  do
  {
    if (*v7 == *a1 && *(v7 + 2) == *(a1 + 4))
    {
      *(v7 + 60) = 0;
      *(v7 + 28) = 0uLL;
      *(v7 + 44) = 0uLL;
      *(v7 - 4) = 0uLL;
      *(v7 + 12) = 0uLL;
    }

    v7 += 72;
    --v8;
  }

  while (v8);
}

uint64_t sub_1001BF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("l2capConnectInd (%:, %d)", a2, a3);
    v5 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v6 = &xmmword_100B5BAE0 + 4;
  v7 = 30;
  do
  {
    if (*v6 == *a2 && *(v6 + 2) == *(a2 + 4))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("l2capConnectInd already (%:, %d)", a2, a3);
        v16 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return sub_100290164(0, 0, 0, a3, 0, 0, 0);
    }

    v6 += 72;
    --v7;
  }

  while (v7);
  v9 = sub_1001BD714(a2, a3, &xmmword_100B5C628);
  if (!v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed");
      v17 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return sub_100290164(0, 0, 0, a3, 0, 0, 0);
  }

  v10 = v9;
  v9[24] = 2;
  v11 = sub_100191DCC();
  v12 = sub_100191DF0();
  result = sub_100290164(sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, a3, v11, 1, v12);
  v14 = *(v10 + 2);
  if (v14)
  {
    v15 = *v14;
    if (v15)
    {
      return v15(a2, a3);
    }
  }

  return result;
}

void sub_1001BF6B4(__int16 a1, uint64_t a2)
{
  v2 = a2;
  v9 = 0;
  v10[0] = 0;
  v3 = 30;
  for (i = &dword_100B5BB1C; (*(i - 29) | (*(i - 30) << 16)) != a2; i += 18)
  {
    if (!--v3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AAPConnectSetTimeout: No AAP connection associated with handle %d", v2);
        v5 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  LODWORD(v9) = a2;
  WORD2(v9) = a1;
  v10[1] = &v9;
  LOWORD(v10[0]) = 8;
  v6 = sub_1000228C0(sub_1001BF7F0, v10, i);
  if (v6)
  {
    v7 = v6;
    if (sub_10000C240())
    {
      sub_10000AF54("AAPConnectSetTimeout: Error registering timeout handler for handle %d status %d", v2, v7);
      v8 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_1000B7ADC(*i, 60))
  {
    sub_1001BF95C(v2);
  }
}

void sub_1001BF7F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = &xmmword_100B5BAE0;
  v5 = 30;
  while ((*(v4 + 1) | (*v4 << 16)) != v2)
  {
    v4 = (v4 + 72);
    if (!--v5)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AAP connection timeout for unknown handle %d", v2);
        v6 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
LABEL_6:
          sub_10080F7A0();
          return;
        }
      }

      return;
    }
  }

  *(v4 + 15) = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AAP connection timeout for cmd %d, handle %d", v3, v2);
    v7 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (v3 == 2)
  {
    sub_1001BFA00(*v4, *(v4 + 1), 3571);
  }

  else if (!v3)
  {
    if (*(v4 + 24) == 3)
    {
      sub_1001BD4DC(v2);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("False AAP connection timeout for handle %d state %d", v2, *(v4 + 24));
      v8 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1001BF95C(int a1)
{
  v2 = &dword_100B5BB1C;
  v3 = 30;
  do
  {
    if ((*(v2 - 29) | (*(v2 - 30) << 16)) == a1)
    {
      sub_10002242C(*v2);
      *v2 = 0;
      return;
    }

    v2 += 18;
    --v3;
  }

  while (v3);
  if (sub_10000C240())
  {
    sub_10000AF54("AAPConnectCancelTimeout: No AAP connection associated with handle %d", a1);
    v4 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1001BFA00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2 | (a1 << 16);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 114;
  }

  v8 = &xmmword_100B5BAE0;
  v9 = 30;
  do
  {
    if (*v8 == v5 && *(v8 + 1) == a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("disconnectRspCleanup result %d handle %d state %d", a3, v6, *(v8 + 24));
        v10 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_10000C0FC();
          *buf = 136446210;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v12 = *(v8 + 2);
      if (*(v8 + 24) == 4)
      {
        if (!v12)
        {
LABEL_17:
          *(v8 + 8) = 0;
          v8[2] = 0u;
          v8[3] = 0u;
          *v8 = 0u;
          v8[1] = 0u;
          goto LABEL_18;
        }

        v13 = *(v12 + 16);
        if (v13)
        {
          v13(v6, a3);
          goto LABEL_17;
        }
      }

      else if (!v12)
      {
        goto LABEL_17;
      }

      v14 = *(v12 + 8);
      if (v14)
      {
        v14(v8 + 4, v7, 0, 0, 0, 0, 0);
      }

      goto LABEL_17;
    }

LABEL_18:
    v8 = (v8 + 72);
    --v9;
  }

  while (v9);
  v15 = &qword_100B5BAF0;
  v16 = 30;
  while (!*v15 || *(v15 - 7) != a2)
  {
    v15 += 9;
    if (!--v16)
    {
      sub_1001BFC50();
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("scheduleIdleChannelCleanup from disconnectRspCleanup for cid=%d result=%d", a2, a3);
    v17 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10000C0FC();
      *buf = 136446210;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1001BFF40();
}

void sub_1001BFC50()
{
  if (sub_10000C240())
  {
    sub_10000AF54("idleChannelCleanupCB");
    v0 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  for (i = 0; i != 30; ++i)
  {
    v2 = &xmmword_100B5BAE0 + 24 * i;
    v3 = *(v2 + 1080);
    if (*(v2 + 1080))
    {
      v4 = (v2 + 2160);
      v5 = &_mh_execute_header.magic + 2;
      while (*(&xmmword_100B5BAE0 + v5) != v3)
      {
        v5 += 72;
        if (v5 == 2162)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Connection CID=%d is going down", *v4);
            v6 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = sub_10000C0FC();
              *buf = 136446210;
              v16 = v7;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v8 = *v4;
          if (*(v4 + 2) == 1)
          {
            v9 = sub_10029135C(v8);
          }

          else
          {
            v9 = sub_10029104C(v8, 436);
          }

          v12 = v9;
          sub_10019252C(word_100B5C350, 30, *v4);
          if (v12 && sub_10000C240())
          {
            sub_10000AF54("Failed to disconnect L2CAP Channel");
            v13 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = sub_10000C0FC();
              *buf = 136446466;
              v16 = v14;
              v17 = 1024;
              v18 = v12;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          goto LABEL_22;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Channel with CID=%d not idle, still have connection to %: sid=%d cid=%d", v4, &xmmword_100B5BAE0 + 72 * i + 4, *(&xmmword_100B5BAE0 + 36 * i), *(&xmmword_100B5BAE0 + 36 * i + 1));
        v10 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_10000C0FC();
          *buf = 136446210;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

LABEL_22:
    ;
  }
}

void sub_1001BFF40()
{
  if (sub_10002195C(sub_1001BFC50, 0, 50, 0) && sub_10000C240())
  {
    sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed ");
    v0 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }
}

double sub_1001BFFC8(unsigned int a1, int a2, int a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("genericL2CAPConnectCompleteCB cid=%x inmtu=%d outmtu=%d result=%d", a1, a2, a3, a4);
    v8 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v24 = 0;
  if (a4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("l2capConnectCompleteCb failed");
      v10 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }

    v11 = &byte_100B5BAF8;
    v12 = 30;
    while (1)
    {
      v13 = *(v11 - 1);
      if (v13)
      {
        if (*v11 != 4)
        {
          break;
        }
      }

      v11 += 72;
      if (!--v12)
      {
        return result;
      }
    }

    v22 = *(v13 + 8);
    v23 = v11 - 24;
    if (v22)
    {
      v22(v11 - 20, a4, 0, 0, 0, 0, 0);
    }

    *(v23 + 8) = 0;
    result = 0.0;
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    *v23 = 0u;
    *(v23 + 1) = 0u;
  }

  else
  {
    sub_1000ABC7C(a1, &v24);
    for (i = 0; i != 2160; i += 72)
    {
      v15 = &xmmword_100B5BAE0 + i;
      if (*(&xmmword_100B5BAE0 + i + 2) == a1 && v15[24] == 2)
      {
        sub_10002242C(*(&xmmword_100B5BAE0 + i + 64));
        v15[24] = 3;
        v16 = sub_1001BD780((&xmmword_100B5BAE0 + i + 4), *(v15 + 1), *(&xmmword_100B5BAE0 + i), *(&xmmword_100B5BAE0 + i + 48), *(&xmmword_100B5BAE0 + i + 50), (&xmmword_100B5BAE0 + i + 52));
        if (v16)
        {
          v17 = v16;
          if (sub_10000C240())
          {
            sub_10000AF54("sendConnectReqPacket failed");
            v18 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = sub_10000C0FC();
              *buf = 136446466;
              v26 = v19;
              v27 = 1024;
              v28 = v17;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          *(v15 + 8) = 0;
          *(v15 + 2) = 0u;
          *(v15 + 3) = 0u;
          *v15 = 0u;
          *(v15 + 1) = 0u;
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("scheduleIdleChannelCleanup at genericL2CAPConnectCompleteCB");
      v20 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_10000C0FC();
        *buf = 136446210;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1001BFF40();
  }

  return result;
}

void sub_1001C0304(int a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("genericL2CAPDisconnectInd cid=%d reason=%d", a1, a2);
    v4 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v5 = &xmmword_100B5BAE0;
  v6 = 30;
  do
  {
    v7 = *(v5 + 1);
    if (v7 == a1)
    {
      if (*(v5 + 15))
      {
        sub_1001BF95C(v7 | (*v5 << 16));
      }

      v8 = *(v5 + 2);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v9(a1 | (*v5 << 16), a2);
        }
      }

      *(v5 + 8) = 0;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
    }

    v5 = (v5 + 72);
    --v6;
  }

  while (v6);
}

uint64_t sub_1001C043C(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100192628(word_100B5C350, 30, a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100191F30(a3, a2, a1, 3, 2);
    v13 = 0;
    v12 = 0;
    v9 = *(v8 + 1);
    LOWORD(v13) = *(v8 + 5);
    WORD1(v13) = v9;
    sub_10001FF10((v8 + 1), 2u);
    sub_10001F968(v8 + 16, &v13, 4uLL, 2u);
    sub_10001F968(v8 + 16, &v12, *(v8 + 64), 2u);
    *(v8 + 19) = v7;
    return sub_1001921E0(v8, sub_1001BED08);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendDisconnectRspPacket channel not found: addr=%: cid=%d sid=%d result=%d", a1, a2, a3, 0);
      v11 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    return 406;
  }
}

void sub_1001C05A0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &word_100B5BB0A;
  v4 = 30;
  while (*(v3 - 18) != 1)
  {
    v3 += 36;
    if (!--v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No connection Entry for this SDP search resp");
        v5 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  if (!a3)
  {
    if (*a1 == 6 && *(a1 + 2))
    {
      v6 = *(a1 + 8);
      if (*v6 == 6)
      {
        if (!*(v6 + 2))
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

      if (*(v6 + 2) == 4)
      {
LABEL_27:
        v10 = *(v6 + 8);
        v11 = *(v10 + 8);
        v12 = 1;
        if (v11 == 4)
        {
LABEL_28:
          *v3 = *(*(*(v10 + 16 * v12 + 8) + 8) + 24);
          if (sub_10000C240())
          {
            sub_10000AF54("Got data PSM (0x%x)\n", *v3);
            v13 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = sub_10000C0FC();
              *buf = 136446210;
              v21 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (v11 == 4)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v15 = 40;
          while (1)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Unknown attribute");
              v16 = sub_10000C050(0x52u);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v18 = sub_10000C0FC();
                *buf = 136446466;
                v21 = v18;
                v22 = 1024;
                v23 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            if (v12 + 1 >= *(v6 + 2))
            {
              break;
            }

            v10 = *(v6 + 8);
            v17 = *(v10 + v15);
            v12 += 2;
            v15 += 32;
            if (v17 == 4)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_16;
      }

      if (!sub_10000C240() || (sub_10000AF54("SDP response is not a sequence or has wrong number of elements\n"), v19 = sub_10000C050(0x52u), !os_log_type_enabled(v19, OS_LOG_TYPE_ERROR)))
      {
LABEL_16:
        if (sub_10000C240())
        {
          sub_10000AF54("Didn't find what we were looking for, zap PSM's to prevent AAP connections when SDP disconnect completes");
          v8 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *v3 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_16;
      }

      sub_10000AF54("SDP search response has no responses, failing connection");
      v7 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    sub_10080F7A0();
    goto LABEL_16;
  }

LABEL_20:
  if (sub_1002F61A8())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP Disconnect failed, clearing PSM");
      v9 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *v3 = 0;
  }
}

FILE *sub_1001C092C(unsigned __int8 *a1, uint64_t a2)
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__filename = 0u;
  v9 = 0u;
  if (sub_1001C0A64(a1, __filename))
  {
    return 0;
  }

  result = fopen(__filename, "r");
  if (result)
  {
    v5 = result;
    sub_100304AF8("link key request: retrieving stored key for %:\n", a1);
    v6 = fread((a2 + 6), 1uLL, 0x10uLL, v5);
    fread((a2 + 24), 4uLL, 1uLL, v5);
    fclose(v5);
    if (v6 == 16)
    {
      v7 = *a1;
      *(a2 + 4) = *(a1 + 2);
      *a2 = v7;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001C0A64(unsigned __int8 *a1, char *a2)
{
  v4 = getenv("HOME");
  if (v4)
  {
    snprintf(a2, 0x1FFuLL, "%s/Library/Preferences/Bluetooth/%02X-%02X-%02X-%02X-%02X-%02X.key", v4, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
    result = 0;
    a2[511] = 0;
  }

  else
  {
    fwrite("GetFilenameFromAddress: $HOME not set\n", 0x26uLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001C0B0C(unsigned __int8 *a1, const void *a2, int a3)
{
  __ptr = a3;
  memset(__s, 0, sizeof(__s));
  memset(__p, 0, sizeof(__p));
  result = sub_1001C0A64(a1, __p);
  if (!result)
  {
    __strlcpy_chk();
    v6 = strrchr(__s, 47);
    if (v6)
    {
      *v6 = 0;
    }

    if (mkdir(__s, 0x1EDu))
    {
      if (*__error() != 17)
      {
        return fprintf(__stderrp, "OI_LinkKeyStorage_WriteKey: could not create directory %s\n", __s);
      }
    }

    else
    {
      sub_100304AF8("OI_LinkKeyStorage_WriteKey: created directory %s\n", __s);
    }

    result = remove(__p, v7);
    if (a2)
    {
      result = fopen(__p, "w");
      if (result)
      {
        v8 = result;
        sub_100304AF8("new link key created for %:\n", a1);
        fwrite(a2, 1uLL, 0x10uLL, v8);
        fwrite(&__ptr, 4uLL, 1uLL, v8);
        return fclose(v8);
      }
    }
  }

  return result;
}

unsigned __int16 *sub_1001C0CEC(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*v2 == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetContextByRfcommHandle - context not found");
        v3 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1001C0D7C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*(v2 + 194) == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("getContextByRfcommChannel - context not found");
        v3 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_1001C0E0C(int a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = qword_100B5C658[i];
    if (v2 && *(v2 + 194) == a1)
    {
      sub_10000C1E8(qword_100B5C658[i]);
      qword_100B5C658[i] = 0;
      return;
    }
  }

  sub_1000D660C();
}

unsigned __int16 *sub_1001C0E7C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*v2 == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetConnectionByCid - context not found");
        v3 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1001C0F0C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*(v2 + 196) == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetConnectionByPsm - context not found");
        v3 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_1001C0F9C(int a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = qword_100B5C658[i];
    if (v2 && *(v2 + 196) == a1)
    {
      sub_10000C1E8(qword_100B5C658[i]);
      qword_100B5C658[i] = 0;
      return;
    }
  }

  sub_1000D660C();
}

uint64_t sub_1001C100C(uint64_t a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = qword_100B5C658[i];
    if (!v2)
    {
      qword_100B5C658[i] = a1;
      *(a1 + 208) = i;
      return v2;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No more OBEX handles available!");
    v3 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 104;
}

uint64_t sub_1001C10A0(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  return qword_100B5C658[a1];
}

void sub_1001C10D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 40) = 0;
    sub_1000BB9CC(a2);
    if (a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OBEX server RFCOMM write error %! - disconnecting", a3);
        v5 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

LABEL_23:
      sub_1001C2120(a1, 0);
      return;
    }

    if (*(a1 + 32) == 2)
    {
      sub_1001C131C(a1);
    }

    v7 = *(a1 + 204);
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        *(a1 + 204) = 5;
        v8 = *(*(*(a1 + 168) + 16) + 24);
        goto LABEL_30;
      }

      if (v7 == 11)
      {
        if (*(a1 + 192) == 1)
        {

          goto LABEL_23;
        }

        *(a1 + 204) = 2;
        *(a1 + 201) = 0;
        v13 = *(*(*(a1 + 168) + 16) + 8);
        v14 = *(a1 + 208);

        v13(v14);
      }
    }

    else
    {
      if (v7 != 4)
      {
        if (v7 != 7)
        {
          return;
        }

        if ((*(a1 + 80) & 0xFE) == 0x48)
        {
          v8 = *(*(*(a1 + 168) + 16) + 16);
          v9 = *(a1 + 208);
          v10 = 1701;
LABEL_31:

          v8(v9, 0, v10);
          return;
        }

        *(a1 + 204) = 5;
        v8 = *(*(*(a1 + 168) + 16) + 16);
LABEL_30:
        v9 = *(a1 + 208);
        v10 = 0;
        goto LABEL_31;
      }

      v11 = *(a1 + 64);
      if (v11)
      {
        sub_10000C1E8(v11);
        *(a1 + 64) = 0;
      }

      *(a1 + 204) = 5;
      v12 = *(a1 + 176);
      if (v12)
      {
        sub_10002242C(v12);
        *(a1 + 176) = 0;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Write confirmation for bogus link %x %!", &link, a3);
    v6 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1001C131C(uint64_t a1)
{
  if (*(a1 + 32) != 2)
  {
    sub_1000D660C();
  }

  if (*(a1 + 31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 1200, "void HandleRequestPkt(OBEXSRV_CONNECTION *)");
    goto LABEL_233;
  }

  v2 = *(a1 + 26);
  v3 = *(a1 + 28);
  if (v2 <= v3)
  {
LABEL_233:
    v75 = "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= 1";
    goto LABEL_235;
  }

  if (*(a1 + 30) != 1)
  {
    v75 = "(connection->common.rcvPacket).__RWFlag == BYTESTREAM_READ";
LABEL_235:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 1200, v75);
  }

  v4 = *(a1 + 16);
  *(a1 + 28) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 1201, "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= (sizeof(uint16_t))");
  }

  v5 = *(v4 + v3);
  v6 = v3 + 3;
  *(a1 + 28) = v3 + 3;
  v7 = *(a1 + 204);
  if (v7 == 2 && (v5 & 0x7F) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received invalid command after OBEX disconnect. Terminating underlying transport.");
      v8 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1001C2120(a1, 0);
    return;
  }

  v9 = v5 | 0x80;
  v10 = 1717;
  if ((v5 | 0x80) > 132)
  {
    if ((v9 - 134) < 2)
    {
      sub_1001C250C(a1, 209);
      v10 = 1717;
      goto LABEL_35;
    }

    if (v9 != 133)
    {
      if (v9 == 255)
      {
        if ((v7 - 6) <= 3)
        {
          v13 = qword_1008A3618[v7 - 6];
          *(a1 + 204) = 5;
          (*(*(*(a1 + 168) + 16) + v13))(*(a1 + 208), 0, 1719);
        }

        if (*(a1 + 4) == 1)
        {
          sub_100302BB4(*(a1 + 112));
        }

        v10 = sub_1001C250C(a1, 160);
LABEL_159:
        *(a1 + 32) = 0;
        if (!v10)
        {
          return;
        }

        goto LABEL_160;
      }

      goto LABEL_35;
    }

    ptr = 0;
    v77 = 0;
    if (v7 != 5)
    {
      v10 = 1711;
      goto LABEL_151;
    }

    if (!*(*(*(a1 + 168) + 16) + 32))
    {
      goto LABEL_150;
    }

    if (v2 <= v6)
    {
      *(a1 + 31) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 902, "OI_STATUS SetPathCommand(OBEXSRV_CONNECTION *)");
    }

    else
    {
      *(a1 + 28) = v3 + 4;
      if (v2 > (v3 + 4))
      {
        v20 = *(v4 + (v3 + 3));
        *(a1 + 28) = v3 + 5;
        v21 = sub_100225EAC(&ptr, (a1 + 16));
        if (v21)
        {
LABEL_59:
          v10 = v21;
          goto LABEL_151;
        }

        if (*(a1 + 120) != 1)
        {
          goto LABEL_146;
        }

        v42 = sub_100225E80(&ptr, 203);
        if (!v42)
        {
          v10 = 1714;
          goto LABEL_151;
        }

        if (*(v42 + 2) == a1)
        {
LABEL_146:
          v43 = sub_100225E80(&ptr, 1);
          if (v43)
          {
            v45 = *(v43 + 4);
            v44 = v43 + 8;
            if (v45)
            {
              v46 = v44;
            }

            else
            {
              v46 = 0;
            }
          }

          else
          {
            v46 = 0;
          }

          if (v46 || (v20 & 2) != 0)
          {
            if ((v46 == 0) | v20 & 1)
            {
              v51 = 0;
            }

            else
            {
              v51 = v46;
            }

            *(a1 + 204) = 10;
            v21 = (*(*(*(a1 + 168) + 16) + 32))(*(a1 + 208), v51, v20 & 1, (v20 & 2) == 0);
            if (!v21)
            {
              goto LABEL_122;
            }

            goto LABEL_59;
          }

          v10 = 1736;
LABEL_151:
          if (sub_10000C240())
          {
            sub_10000AF54("SetPathCommand error %!", v10);
            v47 = sub_10000C050(0x18u);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          if (*(a1 + 204) == 10)
          {
            *(a1 + 204) = 5;
          }

          if (ptr)
          {
            sub_10000C1E8(ptr);
            ptr = 0;
          }

          goto LABEL_158;
        }

LABEL_150:
        v10 = 1715;
        goto LABEL_151;
      }
    }

    *(a1 + 31) = 1;
    v10 = 1721;
    goto LABEL_151;
  }

  if (v9 <= 129)
  {
    if (v9 != 128)
    {
      if (v9 == 129)
      {
        *(a1 + 204) = 11;
        v11 = sub_1001C250C(a1, 160);
        if (!v11)
        {
          *(a1 + 32) = 0;
          return;
        }

        v10 = v11;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_OBEXCOMMON_SendOk failed %!", v10);
          v12 = sub_10000C050(0x18u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1001C2120(a1, 0);
      }

      goto LABEL_35;
    }

    ptr = 0;
    v77 = 0;
    if (v7 != 11 && v7 != 2)
    {
      v10 = 1715;
      goto LABEL_127;
    }

    if (v2 <= v6)
    {
      v16 = 0;
      LOBYTE(v15) = 0;
      *(a1 + 31) = 1;
    }

    else
    {
      *(a1 + 28) = v3 + 4;
      v15 = *(v4 + (v3 + 3));
      v16 = v15 >> 4;
      if (v15 >> 4 == 1)
      {
        if (v2 <= (v3 + 4))
        {
          *(a1 + 31) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 603, "OI_STATUS ConnectCommand(OBEXSRV_CONNECTION *, uint8_t)");
        }

        else
        {
          *(a1 + 28) = v3 + 5;
          if (*(v4 + (v3 + 4)))
          {
            v10 = 1702;
            goto LABEL_127;
          }

          if ((v2 - (v3 + 5)) > 1)
          {
            v39 = __rev16(*(v4 + (v3 + 5)));
            *(a1 + 28) = v3 + 7;
            v40 = *(a1 + 4);
            if (v40)
            {
              if (v40 != 1)
              {
                v41 = *(a1 + 76);
LABEL_182:
                if (v41 <= 0xC7)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("OBEX Server connect - packet size too small %d", *(a1 + 76));
                    v52 = sub_10000C050(0x18u);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

                  v10 = 1736;
                  goto LABEL_127;
                }

                v53 = sub_100225EAC(&ptr, (a1 + 16));
                if (v53)
                {
                  v10 = v53;
                  if (!sub_10000C240())
                  {
                    goto LABEL_127;
                  }

                  sub_10000AF54("OI_OBEXCOMMON_ParseHeaderList failed!");
                  v54 = sub_10000C050(0x18u);
                  if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_220;
                }

                v55 = sub_100225E80(&ptr, 70);
                if (v55)
                {
                  v56 = (v55 + 8);
                }

                else
                {
                  v56 = 0;
                }

                v57 = sub_1001C21EC(a1, v56);
                if (v57)
                {
                  v10 = v57;
                  if (!sub_10000C240())
                  {
                    goto LABEL_127;
                  }

                  sub_10000AF54("No matching server target was found");
                  v58 = sub_10000C050(0x18u);
                  if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_220;
                }

                v59 = sub_100225E80(&ptr, 77);
                if (v59)
                {
                  v60 = v59;
                  if (!*(a1 + 64))
                  {
                    v61 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
                    *(a1 + 64) = v61;
                    if (!v61)
                    {
                      if (!sub_10000C240())
                      {
                        goto LABEL_227;
                      }

                      sub_10000AF54("OBEX server could not allocate authentication state");
                      v72 = sub_10000C050(0x18u);
                      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_227;
                      }

                      goto LABEL_226;
                    }
                  }

                  sub_10022394C(a1, v60);
                  v62 = 1;
                }

                else
                {
                  v62 = 0;
                }

                *(a1 + 200) = v62;
                v63 = *(*(a1 + 168) + 24);
                if (!v63)
                {
                  v68 = 0;
                  v67 = 0;
                  *(a1 + 56) = 0;
                  *(a1 + 199) = 0;
                  goto LABEL_214;
                }

                *(a1 + 56) = 1;
                *(a1 + 199) = 1;
                v64 = *(a1 + 64);
                if (v64)
                {
LABEL_207:
                  if (v63 == 2)
                  {
                    v64[59] = 1;
                  }

                  if (*(a1 + 193) >= 3u)
                  {
                    goto LABEL_212;
                  }

                  v65 = sub_100225E80(&ptr, 78);
                  if (!v65)
                  {
                    v70 = *(a1 + 199);
                    *(a1 + 204) = 3;
                    if (v70)
                    {
                      v10 = sub_1001C2ABC(*(a1 + 208), 1, 0);
                      if (!v10)
                      {
                        goto LABEL_159;
                      }

                      if (!sub_10000C240())
                      {
                        goto LABEL_127;
                      }

                      sub_10000AF54("OBEX server could not accept connection");
                      v71 = sub_10000C050(0x18u);
                      if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_127;
                      }

LABEL_220:
                      sub_10080F7A0();
                      goto LABEL_127;
                    }

                    v68 = 0;
                    v67 = 0;
LABEL_215:
                    ++*(a1 + 193);
                    v69 = sub_100225E80(&ptr, 76);
                    *(a1 + 201) = 1;
                    (**(*(a1 + 168) + 16))(*(a1 + 208), *(a1 + 200) | *(a1 + 199), v68, v67, v69);
                    v10 = 0;
LABEL_136:
                    if (ptr)
                    {
                      sub_10000C1E8(ptr);
                    }

                    goto LABEL_159;
                  }

                  sub_100223A20(a1, v65);
                  v66 = *(a1 + 64);
                  v67 = *(v66 + 58);
                  if (__PAIR64__(*(v66 + 59), v67) == 0x100000000)
                  {
LABEL_212:
                    sub_10022387C(a1);
                    v10 = 1735;
                    goto LABEL_127;
                  }

                  v74 = v66 + 38;
                  if (v67)
                  {
                    v68 = v74;
                  }

                  else
                  {
                    v68 = 0;
                  }

LABEL_214:
                  *(a1 + 204) = 3;
                  goto LABEL_215;
                }

                v64 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
                *(a1 + 64) = v64;
                if (v64)
                {
                  v63 = *(*(a1 + 168) + 24);
                  goto LABEL_207;
                }

                if (!sub_10000C240() || (sub_10000AF54("OBEX server could not allocate authentication state"), v73 = sub_10000C050(0x18u), !os_log_type_enabled(v73, OS_LOG_TYPE_ERROR)))
                {
LABEL_227:
                  v10 = 0;
LABEL_127:
                  if (sub_10000C240())
                  {
                    sub_10000AF54("ConnectCommand error %!", v10);
                    v34 = sub_10000C050(0x18u);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

                  v35 = sub_1001C2BB4(*(a1 + 208), 0, v10);
                  if (v35)
                  {
                    v36 = v35;
                    if (sub_10000C240())
                    {
                      sub_10000AF54("OBEX server failed to accept connection %!", v36);
                      v37 = sub_10000C050(0x18u);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                      {
                        sub_10080F7A0();
                      }
                    }
                  }

                  v38 = *(a1 + 64);
                  if (v38)
                  {
                    sub_10000C1E8(v38);
                    *(a1 + 64) = 0;
                  }

                  goto LABEL_136;
                }

LABEL_226:
                sub_10080F7A0();
                goto LABEL_227;
              }

              v41 = *(a1 + 76);
              if (v41 <= v39)
              {
                goto LABEL_182;
              }
            }

            *(a1 + 76) = v39;
            v41 = v39;
            goto LABEL_182;
          }
        }

        *(a1 + 31) = 1;
        v10 = 1707;
        goto LABEL_127;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OBEX Server connect - version mismatch %d.%d", v16, v15 & 0xF);
      v29 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = 1718;
    goto LABEL_127;
  }

  if (v9 == 130)
  {
    ptr = 0;
    v77 = 0;
    v10 = sub_100225EAC(&ptr, (a1 + 16));
    if (v10)
    {
LABEL_44:
      if (sub_10000C240())
      {
        sub_10000AF54("PutCommand error %!", v10);
        v17 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (ptr)
      {
        sub_10000C1E8(ptr);
        ptr = 0;
      }

      v18 = *(a1 + 204);
      if (v18 > 9 || ((1 << v18) & 0x320) == 0)
      {
        goto LABEL_158;
      }

      v19 = *(*(*(a1 + 168) + 16) + 24);
      if (!v19)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v24 = *(a1 + 204);
    if (v24 != 8)
    {
      if (v24 != 5)
      {
        v10 = 1711;
        goto LABEL_44;
      }

      if (*(a1 + 120) == 1)
      {
        v25 = sub_100225E80(&ptr, 203);
        if (!v25)
        {
          v10 = 1714;
          goto LABEL_44;
        }

        if (*(v25 + 2) != a1)
        {
LABEL_113:
          v10 = 1715;
          goto LABEL_44;
        }
      }

      *(a1 + 204) = 8;
    }

    v26 = *(*(*(a1 + 168) + 16) + 24);
    if (v26)
    {
      if ((v5 & 0x80u) == 0)
      {
        v27 = 1701;
      }

      else
      {
        v27 = 0;
      }

      v28 = v26(*(a1 + 208), &ptr, v27);
      if (!v28)
      {
        goto LABEL_122;
      }

LABEL_121:
      *(a1 + 204) = 5;
      v33 = sub_1001C2A0C(v28);
      sub_1001C250C(a1, v33);
LABEL_122:
      if (ptr)
      {
        sub_10000C1E8(ptr);
      }

      v10 = 0;
      goto LABEL_159;
    }

    goto LABEL_113;
  }

  if (v9 == 131)
  {
    ptr = 0;
    v77 = 0;
    if ((v7 - 6) >= 2)
    {
      if (v7 != 5)
      {
        v10 = 1711;
        goto LABEL_89;
      }

      *(a1 + 204) = 6;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if (!*(*(*(a1 + 168) + 16) + 16))
    {
      v10 = 1715;
      goto LABEL_89;
    }

    v22 = sub_100225EAC(&ptr, (a1 + 16));
    if (v22)
    {
      v10 = v22;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXCOMMON_ParseHeaderList failed %!", v10);
        v23 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
LABEL_66:
          sub_10080F7A0();
        }
      }

LABEL_89:
      if (sub_10000C240())
      {
        sub_10000AF54("OBEX get command error %!", v10);
        v30 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (ptr)
      {
        sub_10000C1E8(ptr);
        ptr = 0;
      }

      if ((*(a1 + 204) - 5) > 2)
      {
        goto LABEL_158;
      }

      v19 = *(*(*(a1 + 168) + 16) + 16);
      if (!v19)
      {
LABEL_53:
        *(a1 + 204) = 5;
LABEL_158:
        v48 = sub_1001C2A0C(v10);
        sub_1001C250C(a1, v48);
        goto LABEL_159;
      }

LABEL_52:
      v19(*(a1 + 208), 0, v10);
      goto LABEL_53;
    }

    if (sub_100225E80(&ptr, 152) && *(a1 + 4) != 1)
    {
      sub_1000D660C();
    }

    if (!v14)
    {
      if ((*(a1 + 80) & 0xFE) == 0x48)
      {
        v10 = sub_1001C2800(a1);
        if (v10)
        {
          goto LABEL_89;
        }

        goto LABEL_122;
      }

LABEL_117:
      if ((v5 & 0x80u) == 0)
      {
        v32 = 1752;
      }

      else
      {
        v32 = 1701;
      }

      v28 = (*(*(*(a1 + 168) + 16) + 16))(*(a1 + 208), &ptr, v32);
      if (!v28)
      {
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    if (!sub_100225E80(&ptr, 1) && !sub_100225E80(&ptr, 66))
    {
      v10 = 1714;
      goto LABEL_89;
    }

    if (*(a1 + 120) == 1)
    {
      v31 = sub_100225E80(&ptr, 203);
      if (v31)
      {
        if (*(v31 + 2) == a1)
        {
          goto LABEL_106;
        }

        v10 = 1715;
      }

      else
      {
        v10 = 1714;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("VerifyConnectionId failed %!", v10);
        v50 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }
      }

      goto LABEL_89;
    }

LABEL_106:
    if (sub_100225E80(&ptr, 151) && *(a1 + 4) != 1)
    {
      sub_1000D660C();
    }

    *(a1 + 80) = 0;
    goto LABEL_117;
  }

LABEL_35:
  *(a1 + 32) = 0;
LABEL_160:
  if (sub_10000C240())
  {
    sub_10000AF54("OBEX request error %!", v10);
    v49 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1001C2120(unsigned __int16 *a1, char a2)
{
  v4 = *(a1 + 1);
  if (v4 == 1)
  {
    v5 = sub_10029104C(*a1, 436);
  }

  else
  {
    if (v4)
    {
      v6 = 101;
      goto LABEL_9;
    }

    v5 = sub_1002EFF1C(*a1, 926);
  }

  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (sub_10000C240())
  {
    sub_10000AF54("DisconnectTransport failed with %! for transport %!", v6, *(a1 + 1));
    v7 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

LABEL_12:
  sub_1001C2348(a1);
LABEL_13:
  *(a1 + 51) = 0;
  return v6;
}

uint64_t sub_1001C21EC(uint64_t a1, const void **a2)
{
  *(a1 + 120) = a2 != 0;
  v4 = (a1 + 128);
  while (1)
  {
    v5 = *v4;
    if (a2)
    {
      break;
    }

    if (!*v4)
    {
      goto LABEL_11;
    }

LABEL_9:
    v4 = *(v4 + 4);
    if (!v4)
    {
      return 1715;
    }
  }

  v6 = *a2;
  if (v6 == v5)
  {
    if (!memcmp(a2[1], *(v4 + 1), v5))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v6 | v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  result = 0;
  *(a1 + 168) = v4;
  return result;
}

uint64_t sub_1001C2278(unsigned __int16 *a1)
{
  v2 = *(a1 + 1);
  if (v2 == 1)
  {
    v3 = sub_100307BF8(a1);
LABEL_5:
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = sub_1002EF65C(sub_1002265BC, *a1, *(a1 + 5));
    goto LABEL_5;
  }

  v4 = 101;
LABEL_8:
  if (sub_10000C240())
  {
    sub_10000AF54("ServerSendPacket failed with %! for transport type %d", v4, *(a1 + 1));
    v5 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000BB9CC(*(a1 + 5));
  *(a1 + 5) = 0;
  return v4;
}

void sub_1001C2348(uint64_t a1)
{
  v2 = *(a1 + 204);
  *(a1 + 204) = 0;
  *(a1 + 193) = 0;
  *(a1 + 198) = 0;
  v3 = *(a1 + 176);
  if (v3)
  {
    sub_10002242C(v3);
    *(a1 + 176) = 0;
  }

  if ((v2 - 6) <= 3)
  {
    (*(*(*(a1 + 168) + 16) + qword_1008A3618[v2 - 6]))(*(a1 + 208), 0, 1709);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_10000C1E8(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    sub_10000C1E8(v5);
    *(a1 + 8) = 0;
  }

  if (*(a1 + 201) == 1)
  {
    *(a1 + 201) = 0;
    v6 = *(*(*(a1 + 168) + 16) + 8);
    v7 = *(a1 + 208);

    v6(v7);
  }
}

void sub_1001C2418(uint64_t a1, void *a2, size_t a3)
{
  if (a1)
  {
    v4 = sub_100225B28(a1, a2, a3);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXCOMMON_ReassemblePacket failed %!", v5);
        v6 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
LABEL_5:
          sub_10080F7A0();
        }
      }
    }

    else if (*(a1 + 32) == 2 && !*(a1 + 40))
    {

      sub_1001C131C(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OBEX received data for unknown connection");
    v7 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1001C250C(unsigned __int16 *a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_100225AF4(a1, a2, v10);
  v3 = sub_100225400(a1, v10, &v7, 0, 0);
  if (!v3)
  {
    return sub_1001C2278(a1);
  }

  v4 = v3;
  if (sub_10000C240())
  {
    sub_10000AF54("Marshalling packet failed with %!", v4, v7, v8, v9);
    v5 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v4;
}

uint64_t sub_1001C25BC(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[a1];
  if (!v6)
  {
    return 101;
  }

  if (*(v6 + 204) != 6)
  {
    return 1711;
  }

  v14[0] = 0;
  v14[1] = 0;
  if (v3 == 1701)
  {
    v7 = -112;
  }

  else
  {
    if (v3)
    {
      v8 = 0;
LABEL_21:
      *(v6 + 204) = 5;
      v12 = sub_1001C2A0C(v3);
      sub_1001C250C(v6, v12);
      return v8;
    }

    *(v6 + 204) = 7;
    v7 = -96;
  }

  sub_100225AF4(v6, v7, v14);
  v9 = sub_100225400(v6, v14, 0, 0, a2);
  if (v9)
  {
    v8 = v9;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXCOMMON_MarshalPacket failed with status %!", v8);
      v10 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_21;
  }

  v8 = sub_1001C2278(v6);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_GetResponse failed %!", v8);
      v11 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v3 = v8;
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_1001C2744(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  v3 = sub_1001C2800(v2);
  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OBEX continue get command error %!", v3);
      v4 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v2 + 204) = 5;
    v5 = sub_1001C2A0C(v3);
    sub_1001C250C(v2, v5);
  }

  return v3;
}

uint64_t sub_1001C2800(unsigned __int16 *a1)
{
  v2 = sub_100225A60(a1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXCOMMON_MarshalBodySegment failed %!", v3);
      v4 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v3;
  }

  else
  {

    return sub_1001C2278(a1);
  }
}

uint64_t sub_1001C28A0(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[a1];
  if (!v6)
  {
    return 101;
  }

  if (*(v6 + 204) != 8)
  {
    return 1711;
  }

  v13[0] = 0;
  v13[1] = 0;
  if (v3 != 1750)
  {
    if (v3 == 1701)
    {
      v7 = 144;
      if (!a2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v3)
    {
      v8 = 0;
LABEL_22:
      *(v6 + 204) = 5;
      v11 = sub_1001C2A0C(v3);
      sub_1001C250C(v6, v11);
      return v8;
    }
  }

  *(v6 + 204) = 9;
  v7 = sub_1001C2A0C(v3);
  if (!a2)
  {
    *(v6 + 204) = 5;
LABEL_15:
    v9 = sub_1001C250C(v6, v7);
    goto LABEL_16;
  }

LABEL_13:
  sub_100225AF4(v6, v7, v13);
  v8 = sub_100225400(v6, v13, 0, 0, a2);
  if (v8)
  {
    goto LABEL_17;
  }

  v9 = sub_1001C2278(v6);
LABEL_16:
  v8 = v9;
  if (v9)
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_PutResponse failed %!", v8);
      v10 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v3 = v8;
    goto LABEL_22;
  }

  return v8;
}

uint64_t sub_1001C2A0C(int a1)
{
  switch(a1)
  {
    case 1707:
    case 1714:
    case 1718:
    case 1720:
    case 1721:
      result = 192;
      break;
    case 1708:
      result = 203;
      break;
    case 1709:
    case 1710:
    case 1712:
    case 1713:
    case 1716:
    case 1719:
    case 1722:
    case 1723:
    case 1725:
    case 1726:
    case 1727:
    case 1728:
    case 1729:
    case 1730:
    case 1731:
    case 1732:
    case 1733:
    case 1734:
    case 1737:
    case 1738:
    case 1739:
    case 1740:
    case 1744:
    case 1745:
    case 1748:
      goto LABEL_7;
    case 1711:
    case 1735:
      result = 195;
      break;
    case 1715:
      result = 211;
      break;
    case 1717:
    case 1743:
      result = 209;
      break;
    case 1724:
      result = 196;
      break;
    case 1736:
      result = 198;
      break;
    case 1741:
      result = 204;
      break;
    case 1742:
      result = 193;
      break;
    case 1746:
      result = 224;
      break;
    case 1747:
      result = 225;
      break;
    case 1749:
      result = 207;
      break;
    case 1750:
      result = 166;
      break;
    case 1751:
      result = 197;
      break;
    default:
      if (a1)
      {
LABEL_7:
        result = 208;
      }

      else
      {
        result = 160;
      }

      break;
  }

  return result;
}

uint64_t sub_1001C2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_100BCE290)
  {
    return 103;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[v5];
  if (!v6 || *(v6 + 204) != 3)
  {
    return 1745;
  }

  if ((v3 == 0) == v4)
  {

    return sub_1001C2BB4(v5, v4, v3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid combination of accept and status");
      v7 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }
}

uint64_t sub_1001C2BB4(unsigned int a1, int a2, int a3)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0;
  v22 = 0;
  v6 = qword_100B5C658[a1];
  if (a2)
  {
    if (*(v6 + 199) == 1)
    {
      *(v6 + 204) = 2;
      v7 = sub_1003045A0(0x18u);
      sub_100223BF4(*(v7 + 16), v6, &v23);
      v8 = -63;
      v9 = 1;
    }

    else
    {
      *(v6 + 204) = 4;
      if (*(v6 + 120) == 1)
      {
        LOBYTE(v23) = -53;
        DWORD2(v23) = v6;
        BYTE8(v24) = 74;
        v17 = *(v6 + 168);
        LOWORD(v25) = *v17;
        *(&v25 + 1) = *(v17 + 8);
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (*(v6 + 200) == 1)
      {
        sub_100223B08(v6, &v23 + 24 * v9);
        v8 = -96;
        v9 |= 1u;
      }

      else
      {
        v8 = -96;
      }
    }
  }

  else
  {
    *(v6 + 204) = 2;
    v8 = sub_1001C2A0C(a3);
    v9 = 0;
  }

  sub_100225AF4(v6, v8, &v21);
  if (HIBYTE(v22))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 534, "OI_STATUS AcceptConnect(OI_OBEXSRV_CONNECTION_HANDLE, _Bool, OI_STATUS)");
    goto LABEL_32;
  }

  v10 = WORD2(v22);
  if (WORD1(v22) <= WORD2(v22))
  {
LABEL_32:
    v18 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v22) != 2)
  {
    v18 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 534, v18);
  }

  ++WORD2(v22);
  *(v21 + v10) = 16;
  if (HIBYTE(v22))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 535, "OI_STATUS AcceptConnect(OI_OBEXSRV_CONNECTION_HANDLE, _Bool, OI_STATUS)");
    goto LABEL_36;
  }

  v11 = WORD2(v22);
  if (WORD1(v22) <= WORD2(v22))
  {
LABEL_36:
    v19 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_38;
  }

  if (BYTE6(v22) != 2)
  {
    v19 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 535, v19);
  }

  ++WORD2(v22);
  *(v21 + v11) = 0;
  if (HIBYTE(v22))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 536, "OI_STATUS AcceptConnect(OI_OBEXSRV_CONNECTION_HANDLE, _Bool, OI_STATUS)");
    goto LABEL_40;
  }

  if (WORD1(v22) - WORD2(v22) <= 1)
  {
LABEL_40:
    v20 = "ByteStream_NumReadBytesAvail(pkt) >= 2";
    goto LABEL_42;
  }

  if (BYTE6(v22) != 2)
  {
    v20 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 536, v20);
  }

  *(v21 + WORD2(v22) + 1) = *(v6 + 74);
  *(v21 + WORD2(v22)) = *(v6 + 75);
  WORD2(v22) += 2;
  v12 = sub_100225400(v6, &v21, &v23, v9, 0);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = sub_1001C2278(v6);
    if (!v13)
    {
      return v13;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("acceptConnect error %!", v13);
    v14 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(v6 + 204) = 2;
  v15 = *(v6 + 64);
  if (v15)
  {
    sub_10000C1E8(v15);
    *(v6 + 64) = 0;
  }

  return v13;
}

uint64_t sub_1001C2F44(uint64_t a1, const void *a2, unsigned int a3, char *a4, char a5)
{
  if (!dword_100BCE290)
  {
    return 103;
  }

  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v10 = qword_100B5C658[a1];
  v19 = v10;
  if (!v10 || *(v10 + 204) != 3 || (*(v10 + 199) & 1) == 0 && *(v10 + 200) != 1)
  {
    return 1745;
  }

  v20[0] = 0;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = &unk_1008A3610;
  }

  *(v10 + 57) = a5;
  v12 = sub_1002238A0(v10, a2, a3, v11);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (*(v10 + 199) != 1)
    {
      goto LABEL_27;
    }

    if (!sub_100223D04(v10))
    {
      *(v10 + 199) = 0;
      v20[1] = &v19;
      LOWORD(v20[0]) = 8;
      sub_1000228C0(sub_1001C3150, v20, 0);
      return 0;
    }

    if (*(v10 + 193) > 2u)
    {
      v13 = 1735;
    }

    else
    {
LABEL_27:
      v13 = sub_1001C2ABC(a1, 1, 0);
      if (!v13)
      {
        return v13;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_OBEXSRV_AuthenticationRsp error %!", v13, v19, v20[0]);
    v14 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v15 = sub_1001C2BB4(a1, 0, v13);
  if (v15)
  {
    v16 = v15;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_AuthenticationRsp: Failure to send error response %!", v16);
      v17 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  *(v10 + 204) = 2;
  sub_10022387C(v10);
  return v13;
}

uint64_t sub_1001C3150(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (*(v1 + 199) == 1)
  {
    sub_1000D660C();
  }

  *(v1 + 201) = 1;
  v2 = **(*(v1 + 168) + 16);
  v3 = *(v1 + 208);

  return v2(v3, 0, 0, 0, 0);
}

uint64_t sub_1001C31BC(unsigned int a1, int a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4 || *(v4 + 204) != 10)
  {
    return 1745;
  }

  *(v4 + 204) = 5;
  if (a2)
  {
    v5 = sub_1001C2A0C(a2);
    sub_1001C250C(v4, v5);
    return 0;
  }

  else
  {

    return sub_1001C250C(v4, 160);
  }
}

uint64_t sub_1001C3258(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  if (v2)
  {
    if (*(v2 + 204) >= 3u)
    {
      LOWORD(v2) = *(v2 + 76) - 6;
    }

    else
    {
      LOWORD(v2) = 0;
    }
  }

  return v2;
}

uint64_t sub_1001C32B4(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4)
  {
    return 1709;
  }

  result = 0;
  v6 = *(v4 + 104);
  *(a2 + 4) = *(v4 + 108);
  *a2 = v6;
  return result;
}

uint64_t sub_1001C3310(unsigned int a1, _DWORD *a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4)
  {
    return 1709;
  }

  result = 0;
  *a2 = *(v4 + 4);
  return result;
}

uint64_t sub_1001C3364(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  if (!v2)
  {
    return 101;
  }

  if (*(v2 + 204))
  {
    *(v2 + 198) = 1;

    return sub_1001C2120(v2, 1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service is registered but not connected!");
      v4 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1709;
  }
}

void sub_1001C341C(char a1, char a2, char a3, int a4, int a5, char a6, char a7, char a8, char a9, char a10)
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_1001C3518;
  v18[3] = &unk_100AE5768;
  v21 = a1;
  v22 = a2;
  v19 = a4;
  v20 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a3;
  dispatch_sync(qword_100B5C898, v18);
}

void sub_1001C3518(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  v3 = os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT);
  v4 = &unk_100B5C000;
  if (v3)
  {
    v5 = "disabled";
    if (byte_100B5C6E0)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    if (*(a1 + 40))
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    if (byte_100B5C6E1)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    if (*(a1 + 41))
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = *(a1 + 36);
    v11 = *(a1 + 32) / 1000000;
    if (byte_100B5C6E2)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    if (*(a1 + 42))
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    if (byte_100B5C6E3)
    {
      v14 = "enabled";
    }

    else
    {
      v14 = "disabled";
    }

    v15 = *(a1 + 45);
    if (*(a1 + 43))
    {
      v16 = "enabled";
    }

    else
    {
      v16 = "disabled";
    }

    if (byte_100B5C6E4)
    {
      v17 = "enabled";
    }

    else
    {
      v17 = "disabled";
    }

    if (*(a1 + 44))
    {
      v18 = "enabled";
    }

    else
    {
      v18 = "disabled";
    }

    v19 = *(a1 + 46);
    if (byte_100B5C6E5)
    {
      v20 = "enabled";
    }

    else
    {
      v20 = "disabled";
    }

    v24 = 136319490;
    if (v15)
    {
      v21 = "enabled";
    }

    else
    {
      v21 = "disabled";
    }

    v25 = v6;
    v26 = 2080;
    if (byte_100B5C6E6)
    {
      v22 = "enabled";
    }

    else
    {
      v22 = "disabled";
    }

    v27 = v7;
    if (v19)
    {
      v5 = "enabled";
    }

    v28 = 2080;
    v29 = v8;
    v30 = 2080;
    v31 = v9;
    v32 = 1024;
    v33 = dword_100B52008 / 1000000;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = dword_100B5200C;
    v38 = 1024;
    v39 = v10;
    v40 = 2080;
    v41 = v12;
    v42 = 2080;
    v43 = v13;
    v44 = 2080;
    v45 = v14;
    v46 = 2080;
    v47 = v16;
    v48 = 2080;
    v49 = v17;
    v50 = 2080;
    v51 = v18;
    v52 = 2080;
    v53 = v20;
    v54 = 2080;
    v55 = v21;
    v56 = 2080;
    v57 = v22;
    v58 = 2080;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Change HCI config settings to rawAudio:%s->%s HID:%s->%s fileSize:%dMB->%dMB #ofTraces:%d->%d liveHCI:%s->%s fileHCI:%s->%s audioTimeSync:%s->%s gEnableENPacketLogging:%s->%s hciLiteLogging:%s->%s", &v24, 0xA6u);
    v4 = &unk_100B5C000;
    v2 = qword_100B5C6D8;
  }

  byte_100B5C6E0 = *(a1 + 40);
  byte_100B5C6E1 = *(a1 + 41);
  byte_100B5C6E7 = *(a1 + 47);
  v23 = *(a1 + 36);
  dword_100B52008 = *(a1 + 32);
  dword_100B5200C = v23;
  byte_100B5C6E2 = *(a1 + 42);
  v4[1763] = *(a1 + 43);
  byte_100B5C6E4 = *(a1 + 44);
  byte_100B5C6E5 = *(a1 + 45);
  byte_100B5C6E6 = *(a1 + 46);
  sub_1001A7FE4(v2);
  if ((byte_100B5C6E2 & 1) == 0)
  {
    sub_1001C37FC();
  }
}

void sub_1001C37FC()
{
  if (qword_100B5C8D8 && CFSetGetCount(qword_100B5C8D8) >= 1)
  {
    v0 = qword_100B5C8D8;
    v1 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Terminate Live Logging - lockdown", buf, 2u);
    }

    if (&lockdown_copy_checkin_info)
    {
      CFSetApplyFunction(v0, j__lockdown_disconnect, 0);
    }

    qword_100B5C8D8 = 0;
    CFRelease(v0);
    if (off_100B5C6F0)
    {
      off_100B5C6F0(0);
    }
  }

  if (qword_100B5C8E0 && CFSetGetCount(qword_100B5C8E0) >= 1)
  {
    v2 = qword_100B5C8E0;
    v3 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminate Live Logging - XPC", v4, 2u);
    }

    CFSetApplyFunction(v2, j__xpc_release, 0);
    qword_100B5C8E0 = 0;
    CFRelease(v2);
    if (off_100B5C6F0)
    {
      off_100B5C6F0(0);
    }
  }
}

void sub_1001C3964(int a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109376;
    v3[1] = byte_100B5C6E8;
    v4 = 1024;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting skipAuth %d->%d", v3, 0xEu);
  }

  byte_100B5C6E8 = a1;
}

uint64_t sub_1001C3A60(uint64_t a1, char a2, int a3)
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1001C3B6C;
  v8[3] = &unk_100AE5788;
  v10 = a2;
  v8[4] = a1;
  v9 = a3;
  dispatch_sync(qword_100B5C898, v8);
  v6 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch for calendar changes", buf, 2u);
  }

  if (qword_100B5C8A8 != -1)
  {
    sub_100812D3C();
  }

  return 1;
}

void sub_1001C3B6C(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "[Full Logging]";
    v4 = *(a1 + 32);
    if (*(a1 + 44))
    {
      v3 = " [HCILite Logging]";
    }

    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136446723;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v3;
    WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v4;
    HIWORD(buf.__pn_.__r_.__value_.__r.__words[2]) = 2081;
    v32 = qword_100B5C700;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Init sniff%{public}s %s gLogPath:%{private}s", &buf, 0x20u);
    v2 = qword_100B5C6D8;
  }

  sub_1001A7FE4(v2);
  sub_1001A807C(*(a1 + 40));
  if (!qword_100B5C700)
  {
    byte_100B5C6E6 = *(a1 + 44);
  }

  started = sysdir_start_search_path_enumeration_private();
  sysdir_get_next_search_path_enumeration(started, byte_100B5C708);
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  if (qword_100B5C700)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    qword_100B5C700 = strdup(v6);
LABEL_10:
    sub_1001C3EE4();
    return;
  }

  if (mkdir(v16, 0x1EDu) && *__error() != 17)
  {
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812D64();
    }
  }

  else
  {
    if (!mkdir(byte_100B5C708, 0x1EDu) || *__error() == 17)
    {
      qword_100B5C700 = malloc_type_calloc(0x400uLL, 1uLL, 0xE565D158uLL);
      __strlcpy_chk();
      if (byte_100B5C6E6)
      {
        v7 = "/bluetoothd-hcilite-latest.pklg";
      }

      else
      {
        v7 = "/bluetoothd-hci-latest.pklg";
      }

      strlcat(qword_100B5C700, v7, 0x400uLL);
      v8 = byte_100B5C6E6;
      if (byte_100B5C6E6)
      {
        v9 = "bluetoothd-hci-";
      }

      else
      {
        v9 = "bluetoothd-hcilite-";
      }

      bzero(&buf, 0x400uLL);
      chdir(byte_100B5C708);
      v10 = opendir(byte_100B5C708);
      if (v10)
      {
        v11 = v10;
        v12 = readdir(v10);
        if (v12)
        {
          if (v8)
          {
            v13 = 15;
          }

          else
          {
            v13 = 19;
          }

          do
          {
            d_name = v12->d_name;
            if (!strncmp(v12->d_name, v9, v13))
            {
              snprintf(&buf, 0x400uLL, "%s/%s", byte_100B5C708, d_name);
              remove(&buf, v15);
            }

            v12 = readdir(v11);
          }

          while (v12);
        }

        closedir(v11);
      }

      else if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
      {
        sub_100812EA0();
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812E00();
    }
  }
}

void sub_1001C3EE4()
{
  if (&lockdown_copy_checkin_info)
  {
    if (qword_100B5C8A0 != -1)
    {
      sub_100812D28();
    }

    if (lockdown_checkin_xpc() && os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812EDC();
    }
  }

  if (!qword_100B5C8E8)
  {
    if (qword_100B5C8A0 != -1)
    {
      sub_100812F50();
    }

    qword_100B5C8E8 = xpc_connection_create_mach_service("com.apple.bluetooth.BTPacketLogger.ios", qword_100B5C898, 1uLL);
    xpc_connection_set_event_handler(qword_100B5C8E8, &stru_100AE59C0);
    xpc_connection_resume(qword_100B5C8E8);
  }
}

uint64_t sub_1001C3FC8()
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  dispatch_sync(qword_100B5C898, &stru_100AE57C8);
  return 1;
}

void sub_1001C400C(id a1)
{
  v1 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Terminate sniff", buf, 2u);
  }

  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
  }

  if (qword_100B5C700)
  {
    free(qword_100B5C700);
    qword_100B5C700 = 0;
  }

  sub_1001C37FC();
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sniff terminated", v3, 2u);
  }
}

void sub_1001C40E0(const char *a1)
{
  word_100B5C808 = 0;
  free(qword_100B5C810);
  if (a1)
  {
    v2 = strlen(a1);
    if (v2 <= 0x800)
    {
      if (v2)
      {
        v3 = 1;
        v4 = a1;
        do
        {
          v5 = *v4++;
          if (v5 == 10)
          {
            ++v3;
          }

          --v2;
        }

        while (v2);
        v6 = (13 * v3);
      }

      else
      {
        v6 = 13;
      }

      __lasts = 0;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEBUG))
      {
        sub_100812F78();
      }

      v7 = strdup(a1);
      v8 = strlen(a1);
      v9 = v8 + v6;
      qword_100B5C810 = malloc_type_malloc(v8 + v6, 0x14DDFFB0uLL);
      if (qword_100B5C810)
      {
        v10 = strtok_r(v7, "\n", &__lasts);
        if (v10)
        {
          v11 = v10;
          do
          {
            v12 = strlen(v11);
            sub_1000045A8(v11, v12, 0, 252);
            v13 = strlen(v11);
            word_100B5C808 += sub_1000A5B88((qword_100B5C810 + word_100B5C808), (v9 - word_100B5C808), v11, v13, 0xFCu);
            v11 = strtok_r(0, "\n", &__lasts);
          }

          while (v11);
        }

        free(v7);
        qword_100B5C810 = malloc_type_realloc(qword_100B5C810, word_100B5C808, 0x8779F170uLL);
      }

      else
      {
        free(v7);
      }
    }
  }
}

void sub_1001C429C(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 252);
}

uint64_t sub_1001C42E0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 1;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001C43AC;
  block[3] = &unk_100AE57F0;
  block[4] = &v3;
  dispatch_sync(qword_100B5C898, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1001C43AC(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start logging", buf, 2u);
  }

  qword_100B5C8D0 = sub_1001C5474();
  v3 = 1;
  byte_100B5C820 = 1;
  sub_1001C3EE4();
  if (byte_100B5C6E3 == 1)
  {
    if (dword_100B52010 != -1)
    {
      if (!stat(qword_100B5C700, &v5))
      {
LABEL_10:
        v3 = 1;
        goto LABEL_14;
      }

      close(dword_100B52010);
    }

    dword_100B52010 = open(qword_100B5C700, 521, 420);
    if (dword_100B52010 != -1)
    {
      if (!stat(qword_100B5C700, &v5))
      {
        qword_100B5C818 = v5.st_size;
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100813028();
    }

    v3 = 0;
  }

LABEL_14:
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t sub_1001C4500()
{
  LODWORD(result) = sub_10000479C();
  if (dword_100B52010 == -1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001C4528(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001C4600;
  block[3] = &unk_100AE5818;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v7;
  dispatch_sync(qword_100B5C898, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1001C4600(void *a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop logging", buf, 2u);
  }

  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *buf = 0u;
  v10 = 0u;
  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
    v8 = 0;
    sub_100016250(&v8);
    if (byte_100B5C6E6)
    {
      v3 = "%s/bluetoothd-hcilite-%d.pklg";
    }

    else
    {
      v3 = "%s/bluetoothd-hci-%d.pklg";
    }

    v4 = a1[5];
    if (!v4)
    {
      v4 = byte_100B5C708;
    }

    snprintf(buf, 0xFFuLL, v3, v4, v8);
    rename(qword_100B5C700, buf, v5);
    if (v6)
    {
      *(*(a1[4] + 8) + 24) = 0;
    }

    else
    {
      v7 = a1[6];
      if (v7)
      {
        strlcpy(v7, buf, 0xFFuLL);
      }
    }
  }

  sub_1001C37FC();
}

uint64_t sub_1001C4774(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1001C4840;
  v4[3] = &unk_100AE5840;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_100B5C898, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1001C4840(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop and rotate logging", v5, 2u);
  }

  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
    rename(qword_100B5C700, *(a1 + 40), v3);
    *(*(*(a1 + 32) + 8) + 24) = v4 == 0;
  }
}

void *sub_1001C48E8()
{
  sub_1000045A8("AP Sleep", 8, 0, 251);
  byte_100B5C820 = 0;
  if (qword_100B5C828)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received sleep with a sleep buffer already allocated");
      v0 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    free(qword_100B5C828);
    qword_100B5C828 = 0;
  }

  result = malloc_type_calloc(1uLL, 0x800uLL, 0xB0056149uLL);
  qword_100B5C828 = result;
  word_100B5C830 = 0;
  return result;
}

void sub_1001C499C(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 251);
}

void sub_1001C49E0(int a1)
{
  v2 = qword_100B5C828;
  if (a1 && qword_100B5C828)
  {
    v3 = CFDataCreate(kCFAllocatorDefault, qword_100B5C828, word_100B5C830);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"HCITrace", v3);
    CFRelease(v3);
    PLLogRegisteredEvent();
    CFRelease(Mutable);
    v2 = qword_100B5C828;
  }

  if (v2)
  {
    free(v2);
    qword_100B5C828 = 0;
    word_100B5C830 = 0;
  }

  qword_100B5C8D0 = sub_1001C5474();
  byte_100B5C820 = 1;
  if (a1)
  {
    v5 = "AP Wake - Bluetooth";
  }

  else
  {
    v5 = "AP Wake - Other";
  }

  if (a1)
  {
    v6 = 19;
  }

  else
  {
    v6 = 15;
  }

  sub_1000045A8(v5, v6, 0, 251);
}

void sub_1001C4B04(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 250);
}
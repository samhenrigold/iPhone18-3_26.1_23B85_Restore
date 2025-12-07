const char *sub_1000621D8(const char *result, uint64_t a2)
{
  v3 = *(*(*(result + 4) + 8) + 24);
  if (v3 >= 2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v4 = *(result + 10);
    if ((v4 + 32) <= 0x3F)
    {
      syslog(4, "CIapIncomingProcess::ProcessPacket: timeout processing lingo=%u cmdID=%02x\n", v4, *(result + 22));
      result = "Timedout waiting packet processing";
      a2 = 3131746989;

      return _WriteStackshotReport_stdc(result, a2);
    }

LABEL_8:
    __break(0x550Au);
    return _WriteStackshotReport_stdc(result, a2);
  }

  return result;
}

uint64_t sub_10006225C(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = *(result + 364);
  if (v5 < 2)
  {
    if ((v5 & 1) == 0)
    {
      return 6;
    }

    v6 = *(result + 312);
    if (v6 <= 1)
    {
      if ((v6 & 1) == 0)
      {
        v7 = *(result + 365);
        if (v7 <= 1)
        {
          if ((v7 & 1) == 0)
          {
            operator new();
          }

          return 6;
        }

        goto LABEL_11;
      }

      return 6;
    }
  }

LABEL_11:
  __break(0x550Au);
LABEL_12:
  __break(0x5516u);
  __break(0x5515u);
  return result;
}

uint64_t sub_1000623D0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_100061414(result, 0);
    v2 = result;
    if (result != -1)
    {
      return v2;
    }

    v3 = (*(v1 + 336) - *(v1 + 328)) >> 3;
    v2 = (-1431655765 * v3);
    if (v2 != -1)
    {
      sub_100062448((v1 + 328), (v2 + 1), v3);
      return v2;
    }
  }

  __break(0x5500u);
  return result;
}

unint64_t *sub_100062448@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if (!result || (a3 = result & 7, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    result[1] = a3;
    return result;
  }

  v4 = *result;
  v3 = result[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    return sub_1000633C0(result, v7);
  }

  if (!v6)
  {
    v8 = __CFADD__(v4, 24 * a2);
    if ((a2 * 24) >> 64 != (24 * a2) >> 63 || v8)
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    a3 = v4 + 24 * a2;
    while (v3 != a3)
    {
      if (v3 <= 0x17)
      {
        goto LABEL_19;
      }

      v3 -= 24;
      if ((result[1] & 7) != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  return result;
}

void sub_1000624DC(uint64_t a1, __darwin_time_t a2)
{
  v15 = a2;
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_45;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    sub_1000E1D34();
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_45;
  }

  if (*(v4 + 24))
  {
    v5 = *(a1 + 320);
    if (!v5)
    {
      goto LABEL_45;
    }

    if ((v5 & 7) != 0)
    {
      goto LABEL_45;
    }

    v6 = sub_100058EBC(v5, v4);
    v7 = *(a1 + 48);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_45;
    }

    if (sub_10005CBC4(v7))
    {
      syslog(4, "Dropping incoming packet because we are waiting for user auth...");
    }

    if ((v6 + 8) >= 0x10)
    {
      goto LABEL_46;
    }

    if (v6 == -2)
    {
      goto LABEL_40;
    }

    v8 = *(a1 + 48);
    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_45;
    }

    if (sub_10005CBC4(v8))
    {
      goto LABEL_40;
    }

    pthread_once(&stru_10012B6E8, sub_1000CA2C8);
    if (dword_10012B6D8[0])
    {
      *(a2 + 148) = sub_1000CA714();
    }

    v9 = sub_10006225C(a1, 0x500u, 8, &v15, 0);
    if (v9)
    {
      if (v9 == 6)
      {
        goto LABEL_40;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        __break(0x5518u);
        goto LABEL_45;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      sub_10005BB24(v10, 0);
      v11 = *(a1 + 320);
      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_45;
      }

      v12 = sub_100092790(v11, *(a1 + 48), 0);
      if (!v12)
      {
        goto LABEL_36;
      }

      if ((v12 & 7) != 0)
      {
        goto LABEL_45;
      }

      if (!v13)
      {
LABEL_36:
        sub_1000DDEEC(0, 4, "%s:%d NULL lingoGeneral\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 1219);
        goto LABEL_37;
      }

      if ((v13 & 7) == 0)
      {
        if (!sub_10007E6A8(v13, 2, 0, 0, 2, v15, 0xFFFFFFFFLL))
        {
          v15 = 0;
        }

LABEL_37:
        v14 = *(a1 + 48);
        if (v14 && (v14 & 7) == 0)
        {
          sub_10005BB6C(v14, 0);
LABEL_40:
          if (v15)
          {
            sub_1000B9034(v15);
          }

          return;
        }
      }

LABEL_45:
      __break(0x5516u);
LABEL_46:
      __break(0x550Au);
    }
  }

  else
  {
    syslog(4, "Dropping incoming packet because of invalid state");

    sub_1000B9034(a2);
  }
}

uint64_t sub_10006274C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    __break(0x550Au);
  }

  else
  {
    pthread_mutex_lock((result + 56));
    v5 = sub_1000623D0(v4);
    if (v5 != -1)
    {
      sub_100023B20((v4 + 328), v5);
      operator new();
    }

    pthread_mutex_unlock((v4 + 56));
    return v5;
  }

  return result;
}

uint64_t sub_10006286C(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  pthread_mutex_lock((result + 56));
  if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 336) - *(v3 + 328)) >> 3) <= a2)
  {
    sub_1000E1D34();
  }

  if (!*sub_100023B20((v3 + 328), a2))
  {
    sub_1000E1D34();
  }

  result = *sub_100023B20((v3 + 328), a2);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    sub_1000CB6B0(result, a3);

    return pthread_mutex_unlock((v3 + 56));
  }

  return result;
}

uint64_t sub_10006292C(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  pthread_mutex_lock((result + 56));
  if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 336) - *(v2 + 328)) >> 3) <= a2)
  {
    sub_1000E1D34();
  }

  if (!*sub_100023B20((v2 + 328), a2))
  {
    sub_1000E1D34();
  }

  result = *sub_100023B20((v2 + 328), a2);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    sub_1000CB6C8(result);

    return pthread_mutex_unlock((v2 + 56));
  }

  return result;
}

uint64_t sub_1000629DC(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  pthread_mutex_lock((result + 56));
  if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 336) - *(v2 + 328)) >> 3) <= a2)
  {
    sub_1000E1D34();
  }

  if (!*sub_100023B20((v2 + 328), a2))
  {
    sub_1000E1D34();
  }

  result = *sub_100023B20((v2 + 328), a2);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    sub_1000CB774(result);

    return pthread_mutex_unlock((v2 + 56));
  }

  return result;
}

uint64_t sub_100062A8C(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 56));
    if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 336) - *(v2 + 328)) >> 3) <= a2)
    {
      sub_1000E1D34();
    }

    if (!*sub_100023B20((v2 + 328), a2))
    {
      sub_1000E1D34();
    }

    v4 = *sub_100023B20((v2 + 328), a2);
    pthread_mutex_unlock((v2 + 56));
    return v4;
  }

  return result;
}

uint64_t sub_100062B24(uint64_t result)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = pthread_mutex_lock((result + 56));
  v2 = *(v1 + 312);
  if (v2 >= 2)
  {
LABEL_11:
    __break(0x550Au);
LABEL_12:
    __break(0x5516u);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 364);
    if (v3 <= 1)
    {
      if ((v3 & 1) == 0)
      {
        *(v1 + 364) = 1;
      }

      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_8:

  return pthread_mutex_unlock((v1 + 56));
}

void sub_100062B9C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  pthread_mutex_lock((result + 56));
  sub_1000DDEEC(0, 4, "%s:%d CIapIncomingProcess::StopProcessing\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 1474);
  v2 = *(result + 312);
  if (v2 >= 2)
  {
LABEL_10:
    __break(0x550Au);
    return;
  }

  if ((v2 & 1) == 0)
  {
    *(result + 312) = 1;
    *(result + 364) = 0;
    sub_1000DDEEC(0, 4, "%s:%d CIapIncomingProcess::StopProcessing mShuttingDown: %d, mStartQueueing: %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 1479, 1, 0);
  }

  pthread_mutex_unlock((result + 56));
}

uint64_t sub_100062C54(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 56));
    v2 = *(v1 + 312);
    if (v2 < 2)
    {
      pthread_mutex_unlock((v1 + 56));
      return v2 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_100062CA8(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, char a7)
{
  if (result && (result & 7) == 0)
  {
    v7 = *(result + 365);
    if (v7 < 2)
    {
      if (v7)
      {
        return 0;
      }

      v8 = *(result + 312);
      if (v8 <= 1)
      {
        if ((a2 & 8) != 0 || (v8 & 1) == 0)
        {
          operator new();
        }

        return 0;
      }
    }

    __break(0x550Au);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100062E00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      sub_1000DDEEC(0, 4, "%s:%d CIapIncomingProcess::DestroyProcess\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 1589);
      sub_100062B9C(v1);
      operator new();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100062EF4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapIncomingProcess::StartDestroyHandle\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 1641);
    operator new();
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10006300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_16:
    __break(0x550Au);
  }

  v7 = *(a1 + 8);
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 24));
  *(a1 + 16) = a4;
  *a1 = a2;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v19.__opaque[24] = v12;
  *&v19.__opaque[40] = v12;
  *&v19.__sig = v12;
  *&v19.__opaque[8] = v12;
  pthread_attr_init(&v19);
  v13 = pthread_attr_setinheritsched(&v19, 2);
  if (v13)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 213, v13);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  pthread_attr_getschedparam(&v19, &v18);
  v18.sched_priority = a6;
  v14 = pthread_attr_setschedparam(&v19, &v18);
  if (v14)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 222, v14);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v15 = pthread_create(&v17, &v19, sub_1000631C4, a1);
  v8 = v15 == 0;
  if (v15)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 236, v15);
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = 1;
    pthread_cond_wait((a1 + 88), (a1 + 24));
    pthread_detach(v17);
  }

  pthread_mutex_unlock((a1 + 24));
  return v8;
}

uint64_t sub_1000631C4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      sub_100063224(result);
      pthread_mutex_destroy((v1 + 24));
      operator delete();
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100063224(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      pthread_mutex_lock((result + 24));
      if (!*v1)
      {
        sub_10006071C(v1, *(v1 + 16));
      }

      *(v1 + 16) = 0;
      pthread_cond_broadcast((v1 + 88));
      pthread_mutex_unlock((v1 + 24));
      result = *v1;
      if (*v1)
      {
        if ((result & 7) == 0)
        {
          sub_10005D784(result);
          result = *v1;
          if (!*v1)
          {
LABEL_10:
            *(v1 + 8) = 0;
            return result;
          }

          if ((result & 7) == 0)
          {
            result = (*(*result + 8))(result);
            goto LABEL_10;
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000632D4(void **a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = *a1;
  if (!*a1 || (*a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  if (*v2)
  {
    sub_100063384(v2);
    v4 = *a1;
    if (!*a1 || (v4 & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      goto LABEL_17;
    }

    v5 = *v4;
    if (0xAAAAAAAAAAAAAAABLL * ((v4[2] - *v4) >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
LABEL_17:
      __break(0x550Cu);
      return;
    }

    operator delete(v5);
  }
}

uint64_t *sub_100063384(uint64_t *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
  }

  else
  {
    v1 = *result;
    v2 = result[1];
    while (v2 != v1)
    {
      if (v2 <= 0x17)
      {
        __break(0x5513u);
        return result;
      }

      v2 -= 24;
      if ((result[1] & 7) != 0)
      {
        goto LABEL_7;
      }
    }
  }

  result[1] = v1;
  return result;
}

void *sub_1000633C0(unint64_t *a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_16;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[0] = v6;
    v12[1] = v6;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (!__CFADD__(v7, a2))
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
        if (2 * v9 > v8)
        {
          v8 = 2 * v9;
        }

        if (v9 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v8;
        }

        sub_1000636EC(v12, v10, v7, a1);
        sub_100063568(v12, a2);
        sub_100063620(a1, v12);
        return sub_1000638D8(v12);
      }

LABEL_17:
      sub_1000E1E08();
    }

LABEL_16:
    __break(0x5500u);
    goto LABEL_17;
  }

  return sub_1000634E4(a1, a2);
}

uint64_t sub_1000634E4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 8);
    v3 = __CFADD__(v2, 24 * a2);
    if ((a2 * 24) >> 64 != (24 * a2) >> 63 || v3)
    {
      goto LABEL_17;
    }

    if (!a2)
    {
LABEL_15:
      *(result + 8) = v2;
      return result;
    }

    v4 = v2 + 24 * a2;
    v5 = *(result + 8) & 7;
    while (v2 && !v5)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = -1;
      if (v2 >= 0xFFFFFFFFFFFFFFE8)
      {
        goto LABEL_17;
      }

      v2 += 24;
      if (v2 == v4)
      {
        v2 = v4;
        goto LABEL_15;
      }
    }
  }

  __break(0x5516u);
LABEL_17:
  __break(0x5513u);
  return result;
}

uint64_t *sub_100063568(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      memset(v4, 170, sizeof(v4));
      result = sub_100063800(v4, result + 2, a2);
      v3 = v4[0];
      if (v4[0] == v4[1])
      {
LABEL_9:
        if (v4[2] && (v4[2] & 7) == 0)
        {
          *v4[2] = v3;
          return result;
        }
      }

      else
      {
        while (v2[4] && v3 && (v3 & 7) == 0)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = -1;
          if (v4[0] >= 0xFFFFFFFFFFFFFFE8)
          {
            goto LABEL_13;
          }

          v3 = v4[0] + 24;
          v4[0] = v3;
          if (v3 == v4[1])
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_13:
  __break(0x5513u);
  return result;
}

void sub_100063620(unint64_t *result, void *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2[1];
    v5 = result[1];
    v6 = v5 - *result;
    if (v6 > 0 != *result - v5 <= ~v4)
    {
      v7 = v4 - 8 * (v6 >> 3);
      sub_100063860(result, *result, v5, v7);
      a2[1] = v7;
      v8 = *result;
      result[1] = *result;
      *result = a2[1];
      a2[1] = v8;
      v9 = result[1];
      result[1] = a2[2];
      a2[2] = v9;
      v10 = result[2];
      result[2] = a2[3];
      a2[3] = v10;
      *a2 = a2[1];
      return;
    }
  }

  __break(0x5513u);
}

uint64_t sub_1000636EC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      *(result + 24) = 0;
      *(result + 32) = a4;
      if (a2)
      {
        sub_1000637AC(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if ((a3 * 24) >> 64 == (24 * a3) >> 63)
      {
        v4[1] = 24 * a3;
        v4[2] = 24 * a3;
        if (is_mul_ok(0, 0x18uLL))
        {
          v4[3] = 0;
          return v4;
        }
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000637AC(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1E24();
}

uint64_t *sub_100063800(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *a2;
    *result = *a2;
    v4 = __CFADD__(v3, 24 * a3);
    if ((a3 * 24) >> 64 == (24 * a3) >> 63 && !v4)
    {
      result[1] = v3 + 24 * a3;
      result[2] = a2;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

void sub_100063860(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4 & 7;
    v5 = a2;
    while (v5 && (a2 & 7) == 0 && a4 && !v4)
    {
      v6 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *a4 = v6;
      if (v5 > 0xFFFFFFFFFFFFFFE7 || a4 >= 0xFFFFFFFFFFFFFFE8)
      {
        goto LABEL_15;
      }

      v5 += 24;
      a4 += 24;
      if (v5 == a3)
      {
        while (a2)
        {
          if (a2 >= 0xFFFFFFFFFFFFFFE8)
          {
            goto LABEL_15;
          }

          a2 += 24;
          if (a2 == a3)
          {
            return;
          }
        }

        break;
      }
    }

    __break(0x5516u);
LABEL_15:
    __break(0x5513u);
  }
}

void *sub_1000638D8(void *result)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_8;
  }

  sub_100063958(result);
  result = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (v1[4])
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v1[3] - result) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator delete(result);
      return v1;
    }
  }

  else
  {
LABEL_8:
    __break(0x5516u);
  }

  __break(0x550Cu);
  return result;
}

void *sub_100063958(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    v1 = result[1];
    v2 = result[2];
    v3 = v2 & 7;
    while (v2 != v1)
    {
      if (!result[4])
      {
        goto LABEL_8;
      }

      if (v2 <= 0x17)
      {
        __break(0x5513u);
        return result;
      }

      v2 -= 24;
      result[2] = v2;
      if (v3)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_10006399C(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (sub_100064F7C(result, a2, 8), *v2 = off_100115BE8, pthread_mutex_init((v2 + 1208), 0), *(v2 + 1272) = 0, *(v2 + 1280) = 0, *(v2 + 1288) = 0, *(v2 + 1290) = 0, sub_100063A80(v2, 1, 1), (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (sub_10005B7F8(result, 8u, 0), (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (v4 = sub_10005B7AC(result, 8u, 0), (result = sub_100065198(v4)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 8, 108, a2);
    return v2;
  }

  return result;
}

uint64_t sub_100063A80(uint64_t result, int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_29:
    __break(0x5516u);
LABEL_30:
    __break(0x5513u);
    return result;
  }

  result = pthread_mutex_lock((result + 1208));
  if (*(v3 + 1272))
  {
    if (*(v3 + 1280))
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + 1280);
        if (__CFADD__(v8, v6))
        {
          goto LABEL_30;
        }

        if (v8)
        {
          v9 = ((v6 + v8) & 7) == 0;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          goto LABEL_29;
        }

        v10 = *(v8 + v6);
        if (v10)
        {
          if ((v10 & 7) == 0)
          {
            if (*(v10 + 23) < 0)
            {
              operator delete(*v10);
            }

            operator delete();
          }

          goto LABEL_29;
        }

        ++v7;
        v6 += 8;
        if (v7 >= *(v3 + 1272))
        {
          if (*(v3 + 1280))
          {
            operator delete[]();
          }

          *(v3 + 1280) = 0;
          break;
        }
      }
    }

    *(v3 + 1272) = 0;
    *(v3 + 1288) = 0;
    *(v3 + 1290) = 0;
  }

  if (a2)
  {
    *(v3 + 1192) = 0;
  }

  if (a3)
  {
    *(v3 + 1200) = 0;
  }

  return pthread_mutex_unlock((v3 + 1208));
}

uint64_t sub_100063BB4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006399C(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_100063BC8(uint64_t result)
{
  if (!result || (result & 7) != 0 || (*result = off_100115BE8, (v2 = sub_100065198(result)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 8, 0, *(result + 8));
    sub_100063A80(result, 1, 1);
    pthread_mutex_destroy((result + 1208));

    sub_10006522C(result, v3);
  }
}

void sub_100063C60(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100063BC8(result);
  }
}

uint64_t sub_100063C74(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100063BC8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_100063CBC(uint64_t a1, __darwin_time_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_10;
  }

  v4 = sub_100065198(a1);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (!sub_100094BFC(v4, *(a1 + 8)))
  {
    goto LABEL_10;
  }

  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_73;
  }

  v6 = sub_10005ACA0(v5);
  if (v6)
  {
    goto LABEL_10;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_73;
  }

  v7 = *(a2 + 126);
  if (v7 > 7)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(a2 + 128);
  if (!*(a2 + 128))
  {
    goto LABEL_10;
  }

  v10 = sub_100065198(v6);
  if (!v10 || (v10 & 7) != 0)
  {
LABEL_73:
    __break(0x5516u);
LABEL_74:
    __break(0x5507u);
    goto LABEL_75;
  }

  if (!sub_100058FB0(v10, *(a1 + 1192)))
  {
    goto LABEL_10;
  }

  v25 = 8;
  v24 = 0;
  if (v7 > 4)
  {
    if (v7 != 5)
    {
      if (v7 != 7)
      {
        goto LABEL_10;
      }

      v25 = 6;
      v14 = sub_10006733C(a1, *(a2 + 68), &v25, &v24, 0xFFFFLL);
      if (v9 > 0x81)
      {
        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = *(a1 + 1290);
        if (v15 < *(a1 + 1272) && !v14 && *v8 == v15)
        {
          pthread_mutex_lock((a1 + 1208));
          operator new();
        }

        if (v14 || *v8 == v15)
        {
          goto LABEL_10;
        }
      }

      v21 = *(a1 + 1203);
      if (v21 != 255)
      {
        *(a1 + 1203) = v21 + 1;
        sub_10006448C(a1, *(a1 + 1290));
        goto LABEL_10;
      }

      goto LABEL_74;
    }

    v25 = 4;
    v19 = sub_10006733C(a1, *(a2 + 68), &v25, &v24, 0xFFFFLL);
    if (v9 == 1 && !v19)
    {
      pthread_mutex_lock((a1 + 1208));
      *(a1 + 1272) = *v8;
      *(a1 + 1202) = 0;
      pthread_mutex_unlock((a1 + 1208));
      if (*(a1 + 1272))
      {
        pthread_mutex_lock((a1 + 1208));
        operator new[]();
      }

      sub_100063A80(a1, 0, 0);
      sub_1000645A4(a1, 0x10u);
      goto LABEL_10;
    }

    if (v9 != 1 && !v19)
    {
      goto LABEL_50;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v25 = 1;
    v11 = sub_10006733C(a1, *(a2 + 68), &v25, &v24, 0xFFFFLL);
    if (v9 == 1)
    {
      v12 = *v8;
      v13 = *(a1 + 1272);
      if (!v11 && v12 < v13)
      {
        pthread_mutex_lock((a1 + 1208));
        *(a1 + 1288) = *v8;
        *(a1 + 1200) = 0;
        pthread_mutex_unlock((a1 + 1208));
        if (!*(a1 + 1272))
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }

      if (v11 || v12 < v13)
      {
        goto LABEL_10;
      }
    }

    else if (v11)
    {
      goto LABEL_10;
    }

LABEL_62:
    v22 = *(a1 + 1200);
    if (v22 != 255)
    {
      *(a1 + 1200) = v22 + 1;
      sub_1000641A8(a1);
      goto LABEL_10;
    }

    goto LABEL_74;
  }

  if (v9 < 2)
  {
    goto LABEL_10;
  }

  if (v8 != -1)
  {
    v25 = v8[1];
    v16 = sub_10006733C(a1, *(a2 + 68), &v25, &v24, 0xFFFFLL);
    if (v9 == 2 && !*v8)
    {
      if (!v16 && v8[1] == 3)
      {
        pthread_mutex_lock((a1 + 1208));
        *(a1 + 1288) = *(a1 + 1289);
        *(a1 + 1201) = 0;
        pthread_mutex_unlock((a1 + 1208));
      }

      goto LABEL_10;
    }

    if (!v16)
    {
      v17 = v8[1];
      if (v17 <= 3)
      {
        if (v17 != 1)
        {
          if (v17 != 3)
          {
            goto LABEL_10;
          }

          v18 = *(a1 + 1201);
          if (v18 != 255)
          {
            *(a1 + 1201) = v18 + 1;
            sub_100064294(a1, *(a1 + 1289));
            goto LABEL_10;
          }

          goto LABEL_74;
        }

        goto LABEL_62;
      }

      if (v17 != 4)
      {
        if (v17 != 6)
        {
          goto LABEL_10;
        }

        v23 = *(a1 + 1203);
        if (v23 != 255)
        {
          *(a1 + 1203) = v23 + 1;
LABEL_26:
          sub_10006448C(a1, *(a1 + 1290));
          goto LABEL_10;
        }

        goto LABEL_74;
      }

LABEL_50:
      v20 = *(a1 + 1202);
      if (v20 != 255)
      {
        *(a1 + 1202) = v20 + 1;
        sub_1000643A0(a1);
        goto LABEL_10;
      }

      goto LABEL_74;
    }

LABEL_10:
    sub_1000B9034(a2);
    return;
  }

LABEL_75:
  __break(0x5513u);
}

uint64_t sub_1000641A8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v2 = *(result + 1192);
  if (v2 && *(result + 1200) <= 3u)
  {
    if ((v2 & 7) == 0)
    {
      v3 = (*(*v2 + 16))(*(result + 1192), 0);
      sub_1000B748C(v2, 0, 8, 1, v3, 0, 0);
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  if (*(result + 1200) >= 4u)
  {
    sub_100063A80(result, 0, 0);
    sub_1000645A4(v1, 0x10u);
  }

  return 2;
}

uint64_t sub_100064294(uint64_t result, unsigned int a2)
{
  v6 = a2;
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!*(result + 1192) || *(result + 1201) > 3u)
  {
    return 2;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    return result;
  }

  result = sub_100058FB0(result, *(v2 + 1192));
  if (result)
  {
    if (*(v2 + 1272) <= a2)
    {
      return 22;
    }

    v4 = *(v2 + 1192);
    if (v4)
    {
      if ((v4 & 7) == 0)
      {
        v5 = (*(*v4 + 16))(*(v2 + 1192), 0);
        sub_1000B748C(v4, 0, 8, 3, v5, &v6, 1);
      }
    }

    goto LABEL_15;
  }

  return 2;
}

uint64_t sub_1000643A0(uint64_t result)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v2 = *(result + 1192);
  if (v2 && *(result + 1202) <= 3u)
  {
    if ((v2 & 7) == 0)
    {
      v3 = (*(*v2 + 16))(*(result + 1192), 0);
      sub_1000B748C(v2, 0, 8, 4, v3, 0, 0);
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  if (*(result + 1202) >= 4u)
  {
    sub_100063A80(result, 0, 0);
    sub_1000645A4(v1, 0x10u);
  }

  return 2;
}

uint64_t sub_10006448C(uint64_t result, char a2)
{
  v5 = a2;
  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(result + 1192);
  if (v3 && *(result + 1203) <= 3u)
  {
    if ((v3 & 7) == 0)
    {
      v4 = (*(*v3 + 16))(*(result + 1192), 0);
      sub_1000B748C(v3, 0, 8, 6, v4, &v5, 1);
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  if (*(result + 1203) >= 4u)
  {
    sub_100063A80(result, 0, 0);
    sub_1000645A4(v2, 0x10u);
  }

  return 2;
}

uint64_t sub_1000645A4(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    goto LABEL_8;
  }

  v2[0] = 0xAAAAAAAAAAAAAAAALL;
  if (a2 < 0x20)
  {
    LODWORD(v2[0]) = a2;
    v2[1] = *(result + 1192);
    result = *(result + 8);
    if (result && (result & 7) == 0)
    {
      return sub_10005BCC8(result, 8uLL, 0, v2, 16);
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(0x550Au);
  return result;
}

uint64_t sub_100064618(uint64_t result, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_19;
  }

  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v8 = *(result + 1200);
      if (v8 != 255)
      {
        *(result + 1200) = v8 + 1;
        result = sub_1000641A8(result);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      v6 = *(result + 1201);
      if (v6 != 255)
      {
        *(result + 1201) = v6 + 1;
        result = sub_100064294(result, *(result + 1289));
LABEL_17:
        *a5 = result;
        return result;
      }

      goto LABEL_19;
    }

LABEL_12:
    sub_1000DDEEC(0, 4, "%s:%d Invalid command ID %hu received\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoAccessoryEQ.cpp", 424, a3);
    result = 22;
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    v9 = *(result + 1202);
    if (v9 != 255)
    {
      *(result + 1202) = v9 + 1;
      result = sub_1000643A0(result);
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (a3 != 6)
  {
    goto LABEL_12;
  }

  v7 = *(result + 1203);
  if (v7 != 255)
  {
    *(result + 1203) = v7 + 1;
    result = sub_10006448C(result, *(result + 1290));
    goto LABEL_17;
  }

LABEL_19:
  __break(0x5507u);
  return result;
}

uint64_t sub_100064724(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  v10 = 0;
  if (a2 <= 31)
  {
    if (a2 != 4)
    {
      if (a2 != 8 || *(result + 1192) != a4)
      {
        return v10;
      }

      sub_1000648F8(result);
      v5 = v4;
      v6 = 1;
      goto LABEL_20;
    }

    v8 = *(result + 1192);
    if (v8 && v8 != a4)
    {
      return v10;
    }

    *(result + 1192) = a4;
    if (a4)
    {
LABEL_19:
      sub_1000648F8(v4);
      v5 = v4;
      v6 = 0;
LABEL_20:
      sub_100063A80(v5, v6, 1);
      return v10;
    }

    __break(0x5518u);
    goto LABEL_38;
  }

  if (a2 != 32)
  {
    if (a2 != 64 || !*(result + 1192))
    {
      return v10;
    }

    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      if (sub_100058FB0(result, *(v4 + 1192)))
      {
        if (a3 == 4)
        {
          *(v4 + 1200) = 0;
          sub_1000648F8(v4);
          sub_1000643A0(v4);
        }

        return v10;
      }

      if (a3)
      {
        if (a3 == 0xFFFFFFFFLL)
        {
          sub_1000648F8(v4);
          sub_100063A80(v4, 0, 1);
          sub_1000645A4(v4, 0xDu);
        }

        return v10;
      }

      goto LABEL_19;
    }

    goto LABEL_38;
  }

  sub_10006770C(result, &v10);
  result = *(v4 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_38;
  }

  if (!sub_10005B890(result, 8u))
  {
    return v10;
  }

  v9 = sub_100067278();
  result = *(v4 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_38:
    __break(0x5516u);
    goto LABEL_39;
  }

  result = sub_10005B844(result, 8u);
  if (v9 >= result)
  {
    if (v9 - result < 0x1F4)
    {
      return v10;
    }

    result = *(v4 + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        sub_10005B7F8(result, 8u, 0);
        result = *(v4 + 8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            sub_10005B7AC(result, 8u, 0);
            return v10;
          }
        }
      }
    }

    goto LABEL_38;
  }

LABEL_39:
  __break(0x5515u);
  return result;
}

uint64_t sub_1000648F8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = -1;
      result = sub_10006733C(v1, 0xFFFFFFFFLL, &v3, &v2, 0xFFFFLL);
    }

    while (!result);
  }

  return result;
}

uint64_t sub_100064958(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
LABEL_14:
    __break(0x5518u);
    goto LABEL_15;
  }

  if ((a2 & 7) == 0)
  {
    v2 = result;
    result = sub_10005BD04(a2);
    if (result)
    {
      v3 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 8u);
        result = sub_1000653EC(8, v3);
        if (!result)
        {
          v6 = 22;
LABEL_13:
          sub_10005BB6C(v3, 8u);
          return v6;
        }

        v4 = result;
        if ((result & 7) == 0)
        {
          result = pthread_mutex_lock((result + 1208));
          if (v2)
          {
            v5 = *(v4 + 1288);
            if (v5 >= *(v4 + 1272))
            {
              v6 = 2;
            }

            else
            {
              v6 = 0;
              *v2 = v5;
            }

            pthread_mutex_unlock((v4 + 1208));
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }
    }
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_100064A30(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      v2 = result;
      result = sub_10005BD04(a2);
      if (result)
      {
        v3 = result;
        if ((result & 7) == 0)
        {
          sub_10005BB24(result, 8u);
          result = sub_1000653EC(8, v3);
          if (!result)
          {
            v4 = 2;
            goto LABEL_9;
          }

          if ((result & 7) == 0)
          {
            v4 = sub_100064294(result, v2);
LABEL_9:
            sub_10005BB6C(v3, 8u);
            return v4;
          }
        }
      }
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100064AD4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    *result = 0;
    if (a2)
    {
      if ((a2 & 7) == 0)
      {
        result = sub_10005BD04(a2);
        if (result)
        {
          v3 = result;
          if ((result & 7) == 0)
          {
            sub_10005BB24(result, 8u);
            result = sub_1000653EC(8, v3);
            if (!result)
            {
              v5 = 22;
LABEL_13:
              sub_10005BB6C(v3, 8u);
              return v5;
            }

            v4 = result;
            if ((result & 7) == 0)
            {
              pthread_mutex_lock((result + 1208));
              if (*(v4 + 1272))
              {
                v5 = 0;
                *v2 = *(v4 + 1272);
              }

              else
              {
                v5 = 2;
              }

              pthread_mutex_unlock((v4 + 1208));
              goto LABEL_13;
            }
          }
        }
      }
    }

    else
    {
      __break(0x5518u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100064BA8(uint64_t result, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    goto LABEL_37;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_38;
  }

  v6 = result;
  result = sub_10005BD04(a4);
  if (!result)
  {
    goto LABEL_38;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  sub_10005BB24(result, 8u);
  result = sub_1000653EC(8, v7);
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  if (!a2 || !a3 || (v8 = *a3, v8 < 2) || v8 == 255)
  {
LABEL_37:
    __break(0x5518u);
    goto LABEL_38;
  }

  v9 = result;
  if (!result)
  {
    v20 = 22;
LABEL_36:
    sub_10005BB6C(v7, 8u);
    return v20;
  }

  result = pthread_mutex_lock((result + 1208));
  if (*(v9 + 1272) <= v6)
  {
    goto LABEL_34;
  }

  v10 = *(v9 + 1280);
  if (!v10)
  {
    goto LABEL_34;
  }

  if (__CFADD__(v10, 8 * v6))
  {
LABEL_39:
    __break(0x5513u);
    goto LABEL_40;
  }

  v11 = (v10 + 8 * v6);
  if ((v11 & 7) != 0)
  {
    goto LABEL_38;
  }

  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_34;
  }

  if ((v12 & 7) != 0)
  {
LABEL_38:
    __break(0x5516u);
    goto LABEL_39;
  }

  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (*(v12 + 23))
    {
      goto LABEL_19;
    }

LABEL_34:
    v20 = 2;
LABEL_35:
    pthread_mutex_unlock((v9 + 1208));
    goto LABEL_36;
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_19:
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_40:
    __break(0x5500u);
    goto LABEL_41;
  }

  if (v15 < 0x100)
  {
    if (v15 <= *a3)
    {
      v16 = v15;
    }

    else
    {
      v16 = *a3;
    }

    *a3 = v16;
    v17 = *(v9 + 1280);
    if (__CFADD__(v17, 8 * v6))
    {
      goto LABEL_39;
    }

    if (v17)
    {
      v18 = (v17 + 8 * v6);
      if ((v18 & 7) == 0)
      {
        v19 = *v18;
        if (*v18)
        {
          if ((v19 & 7) == 0)
          {
            if (*(v19 + 23) < 0)
            {
              v19 = *v19;
            }

            memcpy(a2, v19, v16);
            sub_10006571C(v9, a2, v16);
            v20 = 0;
            goto LABEL_35;
          }
        }
      }
    }

    goto LABEL_38;
  }

LABEL_41:
  __break(0x5507u);
  return result;
}

uint64_t sub_100064D68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(result + 126);
  v9 = *(result + 68);
  if (!a4)
  {
    v10 = *(result + 8);
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_16;
    }

    result = sub_1000949E0(result, v10, 0);
    v5 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if ((v5 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    return result;
  }

  sub_10005BB24(v5, 8u);
  result = sub_1000653EC(8, v5);
  if (!result)
  {
LABEL_15:
    __break(0x5518u);
    goto LABEL_16;
  }

  v11 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v12 = sub_1000B6DB4(v5, v4, v7, 1u);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = sub_1000671A8(v11, v9, v8, 0, v6);
    if (!v13)
    {
      sub_10005B7F8(v5, 8u, 1);
      v14 = sub_100067278();
      sub_10005B7AC(v5, 8u, v14);
    }
  }

  sub_10005BB6C(v5, 8u);
  return v13;
}

uint64_t sub_100064E98(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 8;
    if (result != -1)
    {
      *(result + 1) = 0;
      return 0;
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_100064EC8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100064EDC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100064EF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 16);
  if ((result + 32) >= 0x40)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100064F18(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = *(result + 16);
    if ((result + 32) < 0x40)
    {
      return sub_10006519C(result);
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_100064F40(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100064F54(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100064F68(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

void sub_100064F7C(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_33;
  }

  *result = off_100115C98;
  *(result + 8) = a2;
  if ((a3 + 32) >= 0x40)
  {
    goto LABEL_34;
  }

  *(result + 16) = a3;
  *(result + 1176) = -1;
  *(result + 1180) = 0;
  *(result + 1184) = 0;
  v5 = pthread_mutex_init((result + 1112), 0);
  if ((result + 24) >= 0xFFFFFFFFFFFFFFC0)
  {
    goto LABEL_31;
  }

  if (a2)
  {
    v7 = sub_1000C4254(v5, v6);
    if (v7 && (v7 & 7) == 0)
    {
      if (!sub_100094BFC(v7, a2))
      {
        goto LABEL_17;
      }

      if ((a2 & 7) == 0)
      {
        if ((sub_10005ACA0(a2) & 1) == 0)
        {
          if (!sub_10005BC54(a2))
          {
            goto LABEL_30;
          }

          v8 = sub_10005BC54(a2);
          if (!v8 || (v8 & 7) != 0)
          {
            goto LABEL_33;
          }

          v5 = sub_1000BF998(v8 + 16, v9);
          v10 = *(result + 16);
          if ((v10 + 32) <= 0x3F)
          {
            HIDWORD(v12) = *(result + 16);
            LODWORD(v12) = HIDWORD(v12);
            v11 = v12 >> 1;
            if (v11 <= 7 && ((1 << v11) & 0xC3) != 0)
            {
              goto LABEL_17;
            }

            if (v10 > 0xE)
            {
LABEL_35:
              __break(0x5512u);
              return;
            }

            if (~qword_10012C6E8 >= 8 * v10)
            {
              v5 = qword_10012C6E8[v10];
              if (!v5)
              {
                qword_10012C6E8[v10] = a2;
                goto LABEL_17;
              }

LABEL_32:
              sub_1000E22D8(v5);
            }

LABEL_31:
            __break(0x5513u);
            goto LABEL_32;
          }

LABEL_34:
          __break(0x550Au);
          goto LABEL_35;
        }

        goto LABEL_17;
      }
    }

LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

LABEL_17:
  v13 = result + 88;
  bzero((result + 24), 0x440uLL);
  v15 = 0;
  v16 = 88;
  do
  {
    *(result + v16) = v15;
    *(result + 56) = result + v16;
    if ((result + v16) > 0xFFFFFFFFFFFFFFDFLL)
    {
      goto LABEL_31;
    }

    v15 = v13;
    v13 += 32;
    v16 += 32;
  }

  while (v16 != 1112);
  sub_1000651C8(*(result + 8), v14);
  if (v17)
  {
    v18 = v17;
    if ((v17 & 7) == 0)
    {
      v19 = (*(*result + 64))(result);
      v20 = sub_10006274C(v18, 1, a2, v19);
      *(result + 1176) = v20;
      if (v20 != -1)
      {
        sub_1000629DC(v18, v20);
        return;
      }

      __break(0x5518u);
LABEL_30:
      sub_1000E1D34();
    }

    goto LABEL_33;
  }
}

uint64_t sub_10006519C(uint64_t result)
{
  if ((result + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    HIDWORD(v1) = result;
    LODWORD(v1) = result;
    return ((v1 >> 1) < 8) & (0xC3u >> (v1 >> 1));
  }

  return result;
}

void sub_1000651C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = sub_1000C4254(result, a2);
    if (!v3 || (v3 & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      sub_1000950E0(v3, result);
      if (!v4)
      {
        sub_1000DDEEC(0, 4, "No IncomingProcessObject! handle=%hhx\n", result);
      }
    }
  }
}

void sub_10006522C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  *result = off_100115C98;
  sub_1000651C8(*(result + 8), a2);
  v4 = *(result + 1176);
  if (v3)
  {
    if (v4 != -1)
    {
      v5 = v3;
      if ((v3 & 7) != 0)
      {
        goto LABEL_25;
      }

      sub_1000629DC(v3, v4);
      sub_100060C50(v5, *(result + 1176));
    }
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d Cannot get IncomingProcess object, cannot DeleteTimer(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoBase.cpp", 394, v4);
  }

  *(result + 1176) = -1;
  v6 = *(result + 16);
  if ((v6 + 32) >= 0x40)
  {
LABEL_26:
    __break(0x550Au);
    goto LABEL_27;
  }

  HIDWORD(v8) = *(result + 16);
  LODWORD(v8) = HIDWORD(v8);
  v7 = v8 >> 1;
  v9 = v7 > 7;
  v10 = (1 << v7) & 0xC3;
  if (!v9 && v10 != 0)
  {
    goto LABEL_13;
  }

  if (v6 == 9)
  {
    v6 = 9;
    v13 = 72;
    goto LABEL_22;
  }

  if (v6 < 0xF)
  {
    v13 = 8 * v6;
    if (8 * v6 > ~qword_10012C6E8)
    {
      goto LABEL_27;
    }

    if (qword_10012C6E8[v6] == *(result + 8))
    {
LABEL_22:
      if (v13 <= ~qword_10012C6E8)
      {
        qword_10012C6E8[v6] = 0;
LABEL_13:
        v12 = *(result + 1184);
        if (!v12)
        {
LABEL_16:
          pthread_mutex_destroy((result + 1112));
          return;
        }

        if ((v12 & 7) == 0)
        {
          (*(*v12 + 8))(v12);
          *(result + 1184) = 0;
          goto LABEL_16;
        }

        goto LABEL_25;
      }

LABEL_27:
      __break(0x5513u);
      goto LABEL_28;
    }

    __break(0x5518u);
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

LABEL_28:
  __break(0x5512u);
}

void sub_1000653C4(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000653D8(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000653EC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  if ((result + 32) >= 0x40)
  {
    __break(0x550Au);
    goto LABEL_11;
  }

  if (result > 0xE)
  {
    return 0;
  }

  result = sub_1000C4254(result, a2);
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return result;
  }

  return sub_100092790(result, a2, v2);
}

uint64_t sub_100065468(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10006547C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = sub_1000388B8(result, a2);
    if (!result)
    {
LABEL_26:
      __break(0x5518u);
      goto LABEL_27;
    }

    if ((result & 7) != 0)
    {
      goto LABEL_27;
    }

    result = (*(*result + 528))(result);
    if ((v3 & 3) != 0)
    {
      goto LABEL_27;
    }

    *v3 = result;
  }

  if (!a2)
  {
    return 0;
  }

  result = sub_1000388B8(result, a2);
  if (!result)
  {
    goto LABEL_26;
  }

  v4 = result;
  if ((result & 7) == 0)
  {
    v5 = (*(*result + 384))(result);
    v7 = v5;
    result = (*(*v4 + 464))(v4);
    v6 = 0;
    if ((result & 1) == 0 && v5)
    {
      if ((v5 & 7) != 0)
      {
        goto LABEL_27;
      }

      result = (*(*v5 + 16))(v5);
      if (result)
      {
        result = (*(*v4 + 440))(v4);
        if (result)
        {
          v6 = 3;
        }

        else
        {
          result = (*(*v4 + 448))(v4);
          if (result)
          {
            v6 = 4;
          }

          else
          {
            result = (*(*v4 + 424))(v4);
            if (result)
            {
              v6 = 1;
            }

            else
            {
              result = (*(*v4 + 432))(v4);
              if (result)
              {
                v6 = 2;
              }

              else
              {
                v6 = 0;
              }
            }
          }
        }
      }

      else
      {
        v6 = 0;
      }
    }

    if ((a2 & 3) == 0)
    {
      *a2 = v6;
      sub_1000698F8(&v7);
      return 0;
    }
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000656D4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = qword_10012C6E0;
    if (!qword_10012C6E0)
    {
      sub_10001D2FC();
    }
  }

  return result;
}

uint64_t sub_10006571C(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return result;
  }

  if (!a2 || !a3)
  {
    __break(0x5518u);
LABEL_11:
    __break(0x5513u);
    goto LABEL_12;
  }

  do
  {
    LOWORD(a3) = a3 - 1;
    if (!a3)
    {
      break;
    }

    if (~a2 < a3)
    {
      goto LABEL_11;
    }

    v3 = *(a2 + a3);
    *(a2 + a3) = 0;
    if ((v3 & 0x80000000) == 0)
    {
      break;
    }
  }

  while (v3 - 192 > 0x37);
  return result;
}

uint64_t sub_100065778(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = a4;
  if (a3 < 0x20)
  {
    v8[0] = a3;
    v9 = a2;
    result = sub_1000C4254(result, a2);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v6 = sub_1000932FC(result, a2);
        v10 = v6;
        result = sub_1000C4254(v6, v7);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v11 = sub_100092B58(result, a2);
            result = *(v4 + 8);
            v12 = result;
            if (result)
            {
              if ((result & 7) == 0)
              {
                return sub_10005BCC8(result, 0, 0, v8, 48);
              }
            }
          }
        }
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x550Au);
  return result;
}

uint64_t sub_100065838(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (result = sub_1000656D4(result), (result & 7) != 0))
  {
    __break(0x5516u);
    __break(0x5513u);
    __break(0x5507u);
    __break(0x550Au);
    __break(0x5500u);
  }

  else
  {
    result = (*(*result + 88))(result);
    if (((7 * result) & 0xFFFFFFFF00000000) == 0)
    {
      operator new[]();
    }
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_100065B04(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v8 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_39;
  }

  v10 = *(a2 + 64);
  if ((v10 + 32) < 0x40)
  {
    result = sub_1000D6C34(*(a2 + 8), v10);
    if (result >= 0x10000)
    {
      goto LABEL_40;
    }

    v16 = result;
    result = sub_1000656D4(v8);
    if ((result & 7) != 0)
    {
      goto LABEL_39;
    }

    result = (*(*result + 112))(result, a5);
    v24 = result;
    if (!result || (result & 7) != 0)
    {
      goto LABEL_39;
    }

    v18 = result;
    result = (*(*result + 16))(result);
    if (!result)
    {
      goto LABEL_25;
    }

    if (!a5 || (a5 & 7) != 0)
    {
      goto LABEL_39;
    }

    if (!(*(*a5 + 232))(a5))
    {
      goto LABEL_25;
    }

    result = (*(*v18 + 24))(v18, a6);
    v19 = *(a2 + 64);
    if ((v19 + 32) >= 0x40)
    {
      goto LABEL_41;
    }

    if (result <= a7)
    {
LABEL_25:
      sub_100069960(&v24);
      return 4;
    }

    if (result - a7 >= a8)
    {
      v20 = a8;
    }

    else
    {
      v20 = result - a7;
    }

    if (v19 != 4)
    {
      v21 = 0;
      goto LABEL_31;
    }

    if (*(a2 + 126) == 42)
    {
      v21 = 0;
LABEL_31:
      if (v16 > v21)
      {
        v22 = v16 - v21;
        v23 = v22 / 4;
        if (v22 / 4 >= v20)
        {
          v23 = v20;
          goto LABEL_36;
        }

        if (!HIWORD(v23))
        {
LABEL_36:
          if (!((v21 + 4 * v23) >> 16))
          {
            operator new[]();
          }
        }

LABEL_40:
        __break(0x5507u);
        __break(0x5513u);
        goto LABEL_41;
      }

      __break(0x5518u);
LABEL_39:
      __break(0x5516u);
      goto LABEL_40;
    }

    if (a3 <= 3)
    {
      if (a3)
      {
        v21 = 5;
      }

      else
      {
        v21 = 9;
      }

      goto LABEL_31;
    }
  }

LABEL_41:
  __break(0x550Au);
  return result;
}

uint64_t *sub_100065EA8(uint64_t *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 + 0x2000000000000000) >> 62)
  {
    goto LABEL_8;
  }

  v2 = *result;
  if (4 * a2 > ~*result)
  {
    goto LABEL_8;
  }

  if (!v2 || (result = (v2 + 4 * a2), (result & 3) != 0))
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    __break(0x5513u);
  }

  return result;
}

uint64_t sub_100065EF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (a3 >= 4)
  {
    goto LABEL_27;
  }

  result = sub_10006617C(result, a3, a4);
  v18 = result;
  if (!result)
  {
LABEL_22:
    v16 = 4;
LABEL_23:
    sub_1000698F8(&v18);
    return v16;
  }

  v10 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (!(*(*result + 16))(result) || !(*(*v10 + 232))(v10))
  {
    goto LABEL_22;
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000656D4(v6);
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = (*(*result + 112))(result, v10);
  v17 = result;
  if (!result)
  {
LABEL_21:
    sub_100069960(&v17);
    goto LABEL_22;
  }

  v11 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (!(*(*result + 16))(result))
  {
    goto LABEL_21;
  }

  result = (*(*v11 + 40))(v11, a5, a6);
  if (!result)
  {
    goto LABEL_21;
  }

  v12 = result;
  if ((result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
    goto LABEL_27;
  }

  if (!(*(*result + 48))(result))
  {
    goto LABEL_21;
  }

  result = sub_100069960(&v17);
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_26;
  }

  v13 = *(a2 + 64);
  if ((v13 + 32) < 0x40)
  {
    v14 = *(a2 + 68);
    result = *(a2 + 136);
    if (!result)
    {
      v15 = 0;
      goto LABEL_25;
    }

    if ((result & 7) == 0)
    {
LABEL_25:
      v16 = sub_100066408(v6, v13, v14, v12, 0, 0, v15);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006617C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  if (a2 >= 4)
  {
LABEL_39:
    __break(0x550Au);
    return result;
  }

  if (a2 == 2)
  {
    result = *(result + 1184);
    if (!result)
    {
      sub_10002FA5C();
    }

    if ((result & 7) == 0)
    {
      v5 = *(*result + 448);

      return v5();
    }

    goto LABEL_38;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      if (a3)
      {
        goto LABEL_8;
      }

      result = sub_1000388B8(result, a2);
      if (result && (result & 7) == 0)
      {
        v8 = (*(*result + 504))(result);
        if ((v8 & 1) == 0)
        {
          result = sub_1000388B8(v8, v9);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_38;
          }

          v8 = (*(*result + 592))(result);
          if (v8)
          {
LABEL_8:
            result = *(v3 + 1184);
            if (!result)
            {
              sub_10002FA5C();
            }

            if ((result & 7) == 0)
            {
              v5 = *(*result + 456);

              return v5();
            }

            goto LABEL_38;
          }
        }

        result = sub_1000388B8(v8, v9);
        if (result && (result & 7) == 0)
        {
          v10 = *(*result + 384);

          return v10();
        }
      }

LABEL_38:
      __break(0x5516u);
      goto LABEL_39;
    }

    return 0;
  }

  result = sub_1000388B8(result, a2);
  if (!result)
  {
    goto LABEL_38;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  if ((*(*result + 464))(result))
  {
    return 0;
  }

  v7 = *(*v6 + 400);

  return v7(v6, a3);
}

uint64_t sub_100066408(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v14 = result;
  if (!result)
  {
    goto LABEL_23;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  if (!a7)
  {
    goto LABEL_23;
  }

  if ((a7 & 7) != 0)
  {
    goto LABEL_23;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  v9 = a2;
  v10 = *(a7 + 128);
  v11 = sub_100018DC0(result);
  result = sub_10007D6FC(*(v14 + 8));
  if (!v11)
  {
    goto LABEL_20;
  }

  if ((v9 + 32) <= 0x3F)
  {
    result = sub_1000D6C34(v11, v9);
    if (result >= 0x10000)
    {
      __break(0x5507u);
      __break(0x5513u);
      __break(0x5515u);
      goto LABEL_23;
    }

    if (a4)
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_23;
      }

      if (*(v10 + 24) == a4)
      {
LABEL_14:
        if ((a4 & 7) == 0)
        {
          result = (*(*a4 + 48))(a4);
          if (result > a6)
          {
            if (v9 != 4 || (v12 = *(a7 + 32)) != 0 && (v12 & 7) == 0)
            {
              operator new[]();
            }

            goto LABEL_23;
          }

LABEL_21:
          sub_1000E1D34();
        }

LABEL_23:
        __break(0x5516u);
        __break(0x5500u);
        goto LABEL_24;
      }
    }

LABEL_20:
    __break(0x5518u);
    goto LABEL_21;
  }

LABEL_24:
  __break(0x550Au);
  __break(0x5503u);
  return result;
}

unint64_t sub_100066C08(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

unint64_t sub_100066CD4(unint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 128);
  if (!v3)
  {
    __break(0x5518u);
    goto LABEL_11;
  }

  v4 = *(a2 + 16);
  if ((v4 + 32) > 0x3F)
  {
LABEL_12:
    __break(0x550Au);
    goto LABEL_13;
  }

  if ((v3 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  if (*(v3 + 4) < 0x10000u)
  {
    return sub_100066408(result, v4, *(v3 + 4), *(v3 + 24), *(v3 + 8), *(v3 + 12), a2);
  }

LABEL_13:
  __break(0x5507u);
  return result;
}

void sub_100066D40(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (!result)
  {
    goto LABEL_42;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_42;
  }

  v8 = sub_1000656D4(result);
  if ((v8 & 7) != 0)
  {
    goto LABEL_42;
  }

  v9 = (*(*v8 + 112))(v8, a2);
  v31 = v9;
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_42;
  }

  v11 = v9;
  v12 = (*(*v9 + 16))(v9);
  v13 = sub_1000656D4(result);
  if ((v13 & 7) != 0)
  {
    goto LABEL_42;
  }

  v14 = (*(*v13 + 88))(v13);
  if (a3 == -1)
  {
    goto LABEL_44;
  }

  v27 = a4 - 1;
  if (v27 >= 0x400)
  {
    goto LABEL_43;
  }

  v15 = v14;
  v16 = (a3 + 1);
  if (!v14)
  {
    sub_1000DDEEC(0, 4, "%s:%d formatCount is zero.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoBase.cpp", 1388);
    v18 = 0;
LABEL_37:
    if (v18 > (v27 >> 2))
    {
      sub_1000DDEEC(0, 4, "%s:%d format count too big! (%d > %d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoBase.cpp", 1394, v18, v27 >> 2);
    }

    if (v16 - a3 > 0xFF)
    {
      goto LABEL_43;
    }

    if (a5)
    {
      *a5 = v16 - a3;
      sub_100069960(&v31);
      return;
    }

LABEL_42:
    __break(0x5516u);
LABEL_43:
    __break(0x5507u);
    goto LABEL_44;
  }

  v17 = 0;
  v18 = 0;
  while (2)
  {
    v19 = sub_1000656D4(result);
    if ((v19 & 7) != 0)
    {
      goto LABEL_42;
    }

    v20 = (*(*v19 + 96))(v19, v17);
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30[0] = v21;
    v30[1] = v21;
    v22 = sub_1000656D4(result);
    if ((v22 & 7) != 0)
    {
      goto LABEL_42;
    }

    (*(*v22 + 104))(v30);
    v23 = 0;
    for (i = &word_1000EF05A; DWORD1(v30[0]) != *(i - 1); i += 2)
    {
      if (v23 > 6)
      {
        goto LABEL_34;
      }

LABEL_22:
      ++v23;
    }

    v25 = *i;
    if (v23 <= 6 && LODWORD(v30[0]) != v25)
    {
      goto LABEL_22;
    }

    if (LODWORD(v30[0]) != v25)
    {
      goto LABEL_34;
    }

    if (WORD1(v20))
    {
      goto LABEL_43;
    }

    if (!v16)
    {
      goto LABEL_42;
    }

    *v16 = bswap32(v20) >> 16;
    if (v16 > 0xFFFFFFFFFFFFFFFDLL)
    {
      break;
    }

    if (v12)
    {
      v26 = (*(*v11 + 24))(v11, v20);
      if (HIWORD(v26))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = 0;
    }

    v16[1] = bswap32(v26) >> 16;
    if ((v16 + 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (v18 == 255)
      {
        goto LABEL_43;
      }

      v16 += 2;
      ++v18;
LABEL_34:
      v17 = (v17 + 1);
      if (v17 != v15)
      {
        continue;
      }

      goto LABEL_37;
    }

    break;
  }

LABEL_44:
  __break(0x5513u);
}

uint64_t sub_100067088(uint64_t result, __darwin_time_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (v5 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v7 = a4;
  v13 = *(a2 + 126);
  v8 = *(a2 + 68);
  result = sub_1000671A8(result, *(a2 + 68), v13, a5, a3);
  if (result)
  {
    v9 = result;
    sub_1000B9034(a2);
    return v9;
  }

  v10 = *(a2 + 64);
  if (v10 + 32 < 0x40)
  {
    result = *(v5 + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = sub_10005B7F8(result, *(a2 + 64), 1);
        v11 = *(v5 + 8);
        if (v11)
        {
          if ((v11 & 7) == 0)
          {
            v12 = sub_100067278();
            sub_10005B7AC(v11, v10, v12);
            v9 = sub_1000B6DB4(*(v5 + 8), a2, v7, 1u);
            if (v9)
            {
              sub_10006733C(v5, v8, &v13, 0, 0xFFFFLL);
            }

            return v9;
          }
        }
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000671A8(uint64_t result, int a2, __int16 a3, uint64_t a4, int a5)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = pthread_mutex_lock((result + 1112));
  if ((v5 + 24) >= 0xFFFFFFFFFFFFFFE0)
  {
LABEL_11:
    __break(0x5513u);
    goto LABEL_12;
  }

  v10 = *(v5 + 56);
  if (!v10)
  {
    v11 = 16;
    goto LABEL_9;
  }

  if ((v10 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  *(v5 + 56) = *v10;
  *v10 = 0;
  *(v10 + 12) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  result = sub_100067460();
  if (!__CFADD__(result, a5))
  {
    *(v10 + 8) = result + a5;
    sub_100067524(v5, v10);
    v11 = 0;
LABEL_9:
    pthread_mutex_unlock((v5 + 1112));
    sub_1000675CC(v5, v12);
    return v11;
  }

LABEL_12:
  __break(0x5500u);
  return result;
}

__darwin_time_t sub_100067278()
{
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v5, 1u);
  v4 = 0;
  v5[0] = off_100113858;
  v3 = 0;
  result = sub_1000DDDDC(v5, &v3);
  v1 = 1000 * v3;
  if ((v3 * 1000) >> 64 == (1000 * v3) >> 63)
  {
    v2 = v1 + v4 / 1000000;
    if (!__OFADD__(v1, v4 / 1000000))
    {
      v5[0] = off_100113858;
      sub_1000DDCF4(v5);
      return v2;
    }
  }

  else
  {
    __break(0x550Cu);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10006733C(uint64_t result, uint64_t a2, _WORD *a3, void *a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    if ((result & 7) == 0)
    {
      v6 = a5;
      v9 = a2;
      result = pthread_mutex_lock((result + 1112));
      if (a3)
      {
        if ((a3 & 1) == 0)
        {
          result = sub_100067914(v5, v9, *a3, v6);
          if (!result)
          {
            pthread_mutex_unlock((v5 + 1112));
            return 2;
          }

          if ((result & 7) == 0)
          {
            v10 = *result;
            if (!*result)
            {
              __break(0x5518u);
              goto LABEL_20;
            }

            if (*a3 == -1)
            {
              if ((v10 & 7) != 0)
              {
                goto LABEL_20;
              }

              *a3 = *(v10 + 16);
              if (!a4)
              {
                goto LABEL_16;
              }
            }

            else if (!a4)
            {
LABEL_16:
              v11 = sub_10006784C(v5, v10);
              pthread_mutex_unlock((v5 + 1112));
              if (!v11)
              {
                sub_1000675CC(v5, v12);
              }

              return v11;
            }

            if (((v10 | a4) & 7) == 0)
            {
              *a4 = *(v10 + 24);
              v10 = *result;
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

void sub_10006743C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    abort();
  }

  __break(0x5516u);
}

__darwin_time_t sub_100067460()
{
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v5, 1u);
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = off_100113858;
  v3 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDDDC(v5, &v3);
  v1 = 1000 * v3;
  if ((v3 * 1000) >> 64 == (1000 * v3) >> 63)
  {
    v2 = v1 + v4 / 1000000;
    if (!__OFADD__(v1, v4 / 1000000))
    {
      v5[0] = off_100113858;
      sub_1000DDCF4(v5);
      return v2;
    }
  }

  else
  {
    __break(0x550Cu);
  }

  __break(0x5500u);
  return result;
}

__darwin_time_t sub_100067524(__darwin_time_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (a2)
      {
        result = sub_100067460();
        if ((a2 & 7) == 0)
        {
          v4 = v2 + 24;
          v5 = *(a2 + 8);
          v6 = v5 >= result;
          v7 = v5 - result;
          if (!v6)
          {
            v7 = 0;
          }

          *(v2 + 32) = result;
          while ((v4 & 7) == 0)
          {
            v8 = v4;
            v9 = *(v4 + 8);
            v6 = v9 >= result;
            v10 = v9 - result;
            if (v6)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            v4 = *v8;
            if (*v8)
            {
              if ((v4 & 7) != 0)
              {
                break;
              }

              v12 = *(v4 + 8);
              v6 = v12 >= result;
              v13 = v12 - result;
              if (!v6)
              {
                v13 = 0;
              }

              if (v7 < v11 || v7 > v13)
              {
                continue;
              }
            }

            *v8 = a2;
            *a2 = v4;
            return 0;
          }
        }
      }

      else
      {
        __break(0x5518u);
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000675CC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_28;
  }

  v3 = *(result + 8);
  if (!v3)
  {
    goto LABEL_27;
  }

  sub_1000651C8(*(result + 8), a2);
  if (v5)
  {
    sub_1000651C8(v3, v4);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_28;
    }

    sub_1000629DC(v6, *(result + 1176));
  }

  pthread_mutex_lock((result + 1112));
  v7 = *(result + 24);
  if (!v7)
  {
LABEL_25:
    pthread_mutex_unlock((result + 1112));
    return;
  }

  v8 = sub_100067460();
  if ((v7 & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
    goto LABEL_29;
  }

  v10 = *(v7 + 8);
  v11 = v10 - v8;
  if (v10 <= v8)
  {
    if (*(result + 1180) > 1u)
    {
LABEL_29:
      __break(0x550Au);
      return;
    }

    if (*(result + 1180))
    {
      goto LABEL_25;
    }

    sub_1000651C8(v3, v9);
    if (!v19)
    {
      goto LABEL_25;
    }

    sub_1000651C8(v3, v18);
    if (!v20 || (v20 & 7) != 0)
    {
      goto LABEL_28;
    }

    v21 = sub_100062A8C(v20, *(result + 1176));
    if (v21)
    {
      if ((v21 & 7) == 0)
      {
        sub_1000CB7F8(v21);
        goto LABEL_25;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(0x5518u);
    goto LABEL_28;
  }

  pthread_mutex_unlock((result + 1112));
  sub_1000651C8(v3, v12);
  if (v14)
  {
    sub_1000651C8(v3, v13);
    if (v15)
    {
      if ((v15 & 7) == 0)
      {
        sub_10006286C(v15, *(result + 1176), v11);
        sub_1000651C8(v3, v16);
        if (v17)
        {
          if ((v17 & 7) == 0)
          {
            sub_10006292C(v17, *(result + 1176));
            return;
          }
        }
      }
    }

    goto LABEL_28;
  }
}

void sub_10006770C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return;
  }

  pthread_mutex_lock((result + 1112));
  if (*(result + 24))
  {
    v4 = *(result + 24);
    while (1)
    {
      v5 = sub_100067460();
      if ((v4 & 7) != 0)
      {
        break;
      }

      v6 = *(v4 + 8);
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (v8 == 0 || !v7 || v8 < 1)
      {
        *(result + 1180) = 1;
        pthread_mutex_unlock((result + 1112));
        (*(*result + 104))(result, *(v4 + 12), *(v4 + 16), *(v4 + 24), a2);
        pthread_mutex_lock((result + 1112));
        *(result + 1180) = 0;
        sub_10006784C(result, v4);
        v4 = *(result + 24);
        if (v4)
        {
          continue;
        }
      }

      pthread_mutex_unlock((result + 1112));

      sub_1000675CC(result, v10);
      return;
    }

    goto LABEL_19;
  }

  pthread_mutex_unlock((result + 1112));
}

uint64_t sub_10006784C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (a2)
      {
        if ((a2 & 7) != 0)
        {
          goto LABEL_12;
        }

        result = sub_100067914(result, *(a2 + 12), *(a2 + 16), 0xFFFFu);
        if (!result)
        {
          sub_1000DDEEC(0, 4, "%s:%d NULL pPrevNode.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoBase.cpp", 1999);
          return 2;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_12;
        }

        if (*result == a2)
        {
          *result = *a2;
          if ((v2 + 24) < 0xFFFFFFFFFFFFFFE0)
          {
            result = 0;
            *a2 = *(v2 + 56);
            *(v2 + 56) = a2;
            return result;
          }

          goto LABEL_13;
        }
      }

      __break(0x5518u);
    }
  }

LABEL_12:
  __break(0x5516u);
LABEL_13:
  __break(0x5513u);
  return result;
}

uint64_t sub_100067914(uint64_t result, int a2, unsigned int a3, unsigned int a4)
{
  if (!result || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
  }

  else
  {
    v4 = result + 24;
    while (1)
    {
      result = v4;
      v4 = *v4;
      if (!v4)
      {
        return 0;
      }

      if ((v4 & 7) != 0)
      {
        goto LABEL_18;
      }

      if (a2 == -1 || *(v4 + 12) == a2)
      {
        v5 = a3 == 0xFFFF || *(v4 + 16) == a3;
        v6 = !v5;
        if (a3 <= a4 && !v6)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10006797C(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 1112));
    v4 = 0;
    v5 = v2 + 24;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if ((v5 & 7) != 0)
      {
        goto LABEL_11;
      }

      if (*(v5 + 16) == a2)
      {
        v6 = __CFADD__(v4, 1);
        v4 = (v4 + 1);
        if (v6)
        {
          __break(0x5500u);
          break;
        }
      }
    }

    pthread_mutex_unlock((v2 + 1112));
    return v4;
  }

  return result;
}

uint64_t sub_1000679FC(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_28:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 1112));
    v9 = (a2 & 7) != 0 || a2 == 0;
    v10 = v4 + 24;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if ((v10 & 7) != 0 || v9)
      {
        goto LABEL_28;
      }

      v11 = *(a2 + 16);
      if (v11 == *(v10 + 16) || v11 == 0xFFFF)
      {
        v13 = *(a2 + 12);
        if (v13 == *(v10 + 12) || v13 == -1)
        {
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v17 = v15;
          v18 = v15;
          v16 = *(v10 + 16);
          *(&v17 + 1) = *(v10 + 8);
          v18 = v16;
          *&v17 = 0;
          result = (a4 & 1) != 0 ? (*(*(v4 + (a4 >> 1)) + a3))(v4 + (a4 >> 1), &v17) : a3(v4 + (a4 >> 1), &v17);
          if (result)
          {
            break;
          }
        }
      }
    }

    return pthread_mutex_unlock((v4 + 1112));
  }

  return result;
}

uint64_t sub_100067B28(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

void sub_100067B40(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  v4 = *(result + 8);
  if (a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      sub_1000651C8(v4, a2);
      if (!v6)
      {
        goto LABEL_22;
      }

      v7 = v6;
      if ((v6 & 7) != 0)
      {
        goto LABEL_22;
      }

      sub_1000629DC(v6, *(result + 1176));
      sub_100060C50(v7, *(result + 1176));
      *(result + 1176) = -1;
    }

    *(result + 8) = a2;
    if (!a2)
    {
      return;
    }

    sub_1000651C8(a2, a2);
    if (!v8)
    {
      sub_1000DDEEC(0, 4, "%s:%d Cannot get IncomingProcess object, cannot RegisterTimer\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoBase.cpp", 2153);
      return;
    }

    v9 = v8;
    if ((v8 & 7) == 0)
    {
      v10 = (*(*result + 64))(result);
      v11 = sub_10006274C(v9, 1, a2, v10);
      *(result + 1176) = v11;
      if (v11 == -1)
      {
        __break(0x5518u);
      }

      else
      {
        sub_1000651C8(a2, v12);
        if (v13 && (v13 & 7) == 0)
        {
          sub_1000629DC(v13, *(result + 1176));
          return;
        }
      }
    }

LABEL_22:
    __break(0x5516u);
  }
}

BOOL sub_100067C84(_BOOL8 result, unsigned int a2)
{
  if (!a2)
  {
    return a2 != 0;
  }

  if (!__CFADD__(result, a2))
  {
    v2 = a2 + result - 1;
    do
    {
      v3 = v2;
      if (v2 <= result)
      {
        break;
      }

      --v2;
    }

    while ((*v3 & 0xC0) == 0x80);
    if (v3 >= result)
    {
      *v3 = 0;
    }

    return a2 != 0;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100067CD8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_35;
  }

  v4 = *(a2 + 64);
  if ((v4 + 32) >= 0x40)
  {
    goto LABEL_36;
  }

  v5 = 4;
  if (v4 == 4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  if (v6 != *(a2 + 128))
  {
    return v5;
  }

  v7 = *(a2 + 24);
  result = sub_1000388B8(result, a2);
  v8 = *(a2 + 64);
  if ((v8 + 32) >= 0x40)
  {
    goto LABEL_36;
  }

  if (v8 == 4)
  {
    if (!v7)
    {
      goto LABEL_35;
    }

    v9 = *v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = __CFADD__(v7, v10);
  v12 = &v7[v10];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_35;
    }

    v13 = *v12;
    if (v9 < 4)
    {
      v14 = bswap32(v13);
      if (v9)
      {
        if (v9 != 1)
        {
          return v5;
        }

        if (result && (result & 7) == 0)
        {
          result = (*(*result + 400))(result, v14);
          goto LABEL_27;
        }
      }

      else
      {
        result = *(v2 + 1184);
        if (!result)
        {
          sub_10002FA5C();
        }

        if ((result & 7) == 0)
        {
          result = (*(*result + 448))(result, v14);
LABEL_27:
          v15 = result;
          if (result)
          {
            if ((result & 7) == 0)
            {
              if ((*(*result + 16))(result))
              {
                if ((*(*v15 + 360))(v15))
                {
                  operator new();
                }

                v5 = 18;
              }

              (*(*v15 + 8))(v15);
              return v5;
            }

            goto LABEL_35;
          }

          return v5;
        }
      }

LABEL_35:
      __break(0x5516u);
    }

LABEL_36:
    __break(0x550Au);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_100067F34(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = *(result + 1184);
    if (!result)
    {
      sub_10002FA5C();
    }
  }

  return result;
}

uint64_t sub_100067F74(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_36;
  }

  v2 = *(a2 + 64);
  if ((v2 + 32) >= 0x40)
  {
    goto LABEL_37;
  }

  v3 = 4;
  if (v2 == 4)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  if (v4 != *(a2 + 128))
  {
    return v3;
  }

  v5 = *(a2 + 24);
  if (v2 == 4)
  {
    if (!v5)
    {
      goto LABEL_36;
    }

    v6 = *v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = __CFADD__(v5, v7);
  v9 = &v5[v7];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_36;
    }

    v10 = *v9;
    if (v6 < 4)
    {
      v11 = bswap32(v10);
      if (v6)
      {
        if (v6 != 1)
        {
          v12 = 0;
          goto LABEL_33;
        }

        result = sub_1000388B8(result, a2);
        if (result && (result & 7) == 0)
        {
          result = (*(*result + 400))(result, v11);
LABEL_26:
          v12 = result;
          if (!result)
          {
            goto LABEL_33;
          }

          if ((result & 7) == 0)
          {
            if ((*(*result + 16))(result))
            {
              if ((*(*v12 + 360))(v12))
              {
                v3 = 0;
              }

              else
              {
                v3 = 18;
              }

              goto LABEL_34;
            }

LABEL_33:
            v3 = 4;
LABEL_34:
            free(v12);
            return v3;
          }
        }
      }

      else
      {
        result = *(result + 1184);
        if (!result)
        {
          sub_10002FA5C();
        }

        if ((result & 7) == 0)
        {
          result = (*(*result + 448))(result, v11);
          goto LABEL_26;
        }
      }

LABEL_36:
      __break(0x5516u);
    }

LABEL_37:
    __break(0x550Au);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10006814C(unsigned int a1, unsigned int a2, int a3)
{
  v3 = a2 - a1;
  if (a2 < a1)
  {
    syslog(6, "%s: wrap detected on subtraction: %u - %u = %u", "CalcElapsedTimeInMs", a2, a1, a2 - a1);
    if ((v3 & 0x80000000) != 0)
    {
      if (a3)
      {
        syslog(6, "%s: out of range: %u - %u = %u, resetOnRange", "CalcElapsedTimeInMs", a2, a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1000681E4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (result = sub_1000C4254(result, a2)) == 0 || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000945E0(result, a2);
    if (result)
    {

      return sub_100094598(v3, result);
    }
  }

  return result;
}

uint64_t sub_10006825C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 256))(result);
    if (result)
    {
      if ((*(*v1 + 208))(v1))
      {
        return (*(*v1 + 208))(v1) == 3 && (*(*v1 + 280))(v1) == 1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_100068364(_BOOL8 result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if ((*(*result + 208))(result))
  {
    return (*(*v1 + 208))(v1) == 3 && (*(*v1 + 280))(v1) == 1;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_100068438(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      return sub_1000BA120(result, 0);
    }

    else
    {

      return sub_10000FE6C(v1);
    }
  }

  return result;
}

uint64_t sub_10006852C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      v3 = result;
      if (sub_1000BA0D4(result, 0))
      {
        return 1;
      }

      result = sub_1000BA120(v3, 0);
      if (result)
      {
        return 1;
      }
    }

    else
    {

      return sub_10000FE6C(v1);
    }
  }

  return result;
}

uint64_t sub_100068624(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      return sub_1000BA0D4(result, 1u);
    }

    else
    {

      return sub_10000FE6C(v1);
    }
  }

  return result;
}

uint64_t sub_100068718(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_100046A8C(a1, a2);
  if ((a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  v4 = result;
  if ((*(*a1 + 208))(a1) != 3)
  {
    result = (*(*a1 + 256))(a1);
    if (result)
    {
      if (v4 && (v4 & 7) == 0)
      {
        v6 = *(*v4 + 176);

        return v6(v4);
      }

LABEL_19:
      __break(0x5516u);
      return result;
    }

    return 0;
  }

  if (result)
  {
    v5 = (result & 7) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  return sub_1000BA0D4(result, 4u);
}

uint64_t sub_100068860(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      return sub_1000BA0D4(result, 3u);
    }

    else
    {
      v3 = *(*v1 + 256);

      return v3(v1);
    }
  }

  return result;
}

uint64_t sub_100068964(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      return sub_1000BA0D4(result, 5u);
    }

    else
    {

      return sub_10000FE6C(v1);
    }
  }

  return result;
}

uint64_t sub_100068A58(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    if ((*(*result + 208))(result) == 3)
    {
      if (result)
      {
        v2 = (result & 7) == 0;
      }

      else
      {
        v2 = 0;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      return sub_1000BA0D4(result, 6u);
    }

    else
    {

      return sub_10000FE6C(v1);
    }
  }

  return result;
}

uint64_t sub_100068B4C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_1000C4254(a1, a2);
  if ((a1 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000C9B60(a1, &v5 + 1, &v5);
    return v5 != 0xFF && HIBYTE(v5) != 255;
  }

  return result;
}

uint64_t sub_100068BB4(uint64_t result)
{
  if ((result + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    if (result > 0xE)
    {
      return 0;
    }

    if (~qword_10012C6E8 >= 8 * result)
    {
      result = qword_10012C6E8[result];
      if (result)
      {
        if ((result & 7) == 0)
        {
          return sub_100018DC0(result);
        }

        goto LABEL_10;
      }

      return 0;
    }
  }

  __break(0x5513u);
LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_100068C04(uint64_t result, uint64_t a2, unsigned int *a3, int *a4)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  if (!a3)
  {
    return 0;
  }

  if (a2 >= 4)
  {
LABEL_40:
    __break(0x550Au);
    return result;
  }

  switch(a2)
  {
    case 2:
      result = *(result + 1184);
      if (!result)
      {
        sub_10002FA5C();
      }

      if ((result & 7) != 0)
      {
        goto LABEL_39;
      }

      result = (*(*result + 448))(result, bswap32(*a3));
      if (!a4)
      {
        return result;
      }

      break;
    case 1:
      v7 = *a3;
      result = sub_1000388B8(result, a2);
      if (!result)
      {
        goto LABEL_39;
      }

      v8 = result;
      if ((result & 7) != 0)
      {
        goto LABEL_39;
      }

      if ((*(*result + 464))(result))
      {
        return 0;
      }

      result = (*(*v8 + 400))(v8, bswap32(v7));
      if (!a4)
      {
        return result;
      }

      break;
    case 0:
      v6 = *a3;
      if (*a3)
      {
        goto LABEL_9;
      }

      result = sub_1000388B8(result, a2);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_39;
      }

      v10 = (*(*result + 504))(result);
      if (v10)
      {
        goto LABEL_32;
      }

      result = sub_1000388B8(v10, v11);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_39;
      }

      v10 = (*(*result + 592))(result);
      if (v10)
      {
LABEL_9:
        result = *(v4 + 1184);
        if (!result)
        {
          sub_10002FA5C();
        }

        if ((result & 7) == 0)
        {
          result = (*(*result + 456))(result, bswap64(v6));
          if (!a4)
          {
            return result;
          }

          goto LABEL_35;
        }
      }

      else
      {
LABEL_32:
        result = sub_1000388B8(v10, v11);
        if (result && (result & 7) == 0)
        {
          result = (*(*result + 384))(result);
          if (!a4)
          {
            return result;
          }

LABEL_35:
          if ((a4 & 3) == 0)
          {
            v9 = 8;
            goto LABEL_37;
          }
        }
      }

LABEL_39:
      __break(0x5516u);
      goto LABEL_40;
    default:
      return 0;
  }

  if ((a4 & 3) != 0)
  {
    goto LABEL_39;
  }

  v9 = 4;
LABEL_37:
  *a4 = v9;
  return result;
}

uint64_t sub_100068E84(uint64_t result, uint64_t a2, unsigned int *a3, int *a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 4)
  {
LABEL_26:
    __break(0x550Au);
    return result;
  }

  if (a2 == 2)
  {
    result = bswap32(*a3);
    if (a4)
    {
      if ((a4 & 3) == 0)
      {
        v6 = 4;
        goto LABEL_19;
      }

      goto LABEL_25;
    }

    return result;
  }

  if (a2 == 1)
  {
    result = sub_1000388B8(result, a2);
    if (result && (result & 7) == 0)
    {
      result = (*(*result + 464))(result);
      if (result)
      {
        return -1;
      }

      v7 = bswap32(*a3);
      if (!a4)
      {
        return v7;
      }

      if ((a4 & 3) == 0)
      {
        *a4 = 4;
        return v7;
      }
    }

LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = bswap64(*a3);
  if (a4)
  {
    if ((a4 & 3) == 0)
    {
      v6 = 8;
LABEL_19:
      *a4 = v6;
      return result;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100068F88(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  if (!result || (v5 = result, (result & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v9 = -86;
  v8 = -21846;
  if ((a2 + 32) >= 0x40)
  {
LABEL_12:
    __break(0x550Au);
    goto LABEL_13;
  }

  v7 = a2;
  if (&v7 == -1)
  {
LABEL_13:
    __break(0x5500u);
    goto LABEL_14;
  }

  v8 = __rev16(a3);
  if (&v7 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = a5;
    result = sub_1000C4254(result, a2);
    if ((result & 7) == 0)
    {
      if (result)
      {
        result = sub_100092790(result, *(v5 + 8), 0);
        if (result)
        {
          if ((result & 7) == 0)
          {
            return sub_10007E6A8(result, 13, &v7, 4, 2, 0, a4);
          }
        }
      }
    }

    goto LABEL_11;
  }

LABEL_14:
  __break(0x5513u);
  return result;
}

uint64_t sub_100069050(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = a2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000388B8(result, a2);
  v8[0] = 0;
  if (v5 >= 0x20)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  v6 = result;
  v8[1] = v5;
  result = *(v3 + 8);
  if (!result)
  {
    goto LABEL_19;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v10 = sub_100018DC0(result);
  LOBYTE(v9) = a3;
  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BCC8(result, 2uLL, 0, v8, 24);
  if (v5 != 4)
  {
    if (v5 != 3)
    {
      return result;
    }

    v7 = (v6 & 7) == 0;
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v7)
    {
      return (*(*v6 + 656))(v6);
    }

LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_19;
  }

  result = (*(*v6 + 408))(v6);
  if (result <= 0x7CF)
  {
    v7 = 1;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000691A0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (sub_100069050(result, 3, 1), v2 = sub_100069050(v1, 3, 0), (result = sub_1000388B8(v2, v3)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 432))(result);
    if (result)
    {
      sub_100069050(v1, 8, 1);

      return sub_100069050(v1, 8, 0);
    }
  }

  return result;
}

uint64_t sub_100069268(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (sub_100069050(result, 4, 1), v2 = sub_100069050(v1, 4, 0), (result = sub_1000388B8(v2, v3)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 432))(result);
    if (result)
    {
      sub_100069050(v1, 8, 1);

      return sub_100069050(v1, 8, 0);
    }
  }

  return result;
}

uint64_t sub_100069330(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = result;
  if ((result & 7) != 0 || !a3 || (a3 & 7) != 0)
  {
    goto LABEL_11;
  }

  v9 = *(a3 + 64);
  if ((v9 + 32) >= 0x40)
  {
    goto LABEL_12;
  }

  result = sub_10005EEB8(result, a2, v9, *(a3 + 126), *(a3 + 68), a3, 5, 1);
  *v7 = off_100115D60;
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v15 = *(a3 + 64);
  if (v15 + 32 < 0x40)
  {
    result = sub_10005B694(a2, v15);
    *(v7 + 96) = result;
    if (a4 < 4)
    {
      *(v7 + 104) = a4;
      *(v7 + 112) = a5;
      *(v7 + 120) = a6;
      *(v7 + 124) = a7;
      *(v7 + 128) = 0;
      return v7;
    }
  }

LABEL_12:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006942C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000695A8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100069440(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000695A8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100069488(uint64_t result)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = *(result + 96);
  v3 = (result & 7) == 0 && result != 0;
  if (*(v1 + 128))
  {
    if (v3)
    {
      v4 = sub_100066CD4(result, v1);
      v5 = v4 == 6;
      if (!v4)
      {
        return v5;
      }

LABEL_16:
      if (v4 != 6)
      {
        result = *(v1 + 8);
        if (result && (result & 7) == 0)
        {
          result = sub_100018DC0(result);
          v7 = *(v1 + 16);
          if ((v7 + 32) <= 0x3F)
          {
            sub_1000B7768(result, 0, v7, v7 != 3, *(v1 + 24), v4, *(v1 + 20), 0);
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      return v5;
    }

LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  if (!v3)
  {
    goto LABEL_22;
  }

  v6 = *(v1 + 104);
  if (v6 <= 3)
  {
    v4 = sub_100065EF4(result, *(v1 + 32), v6, *(v1 + 112), *(v1 + 120), *(v1 + 124));
    v5 = 2 * (v4 == 6);
    if (!v4)
    {
      return v5;
    }

    goto LABEL_16;
  }

LABEL_23:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000695A8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  *result = off_100115D60;
  result = *(result + 128);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_100069634(result);
      operator delete();
    }

LABEL_9:
    __break(0x5516u);
    return result;
  }

  return sub_10005F054(v1);
}

void *sub_100069634(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = result[3];
      if (!result)
      {
        return v1;
      }

      if ((result & 7) == 0)
      {
        (*(*result + 8))(result);
        v1[3] = 0;
        return v1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

dispatch_semaphore_t sub_1000696A0(dispatch_semaphore_t result, uint64_t a2, uint64_t a3, objc_class *a4)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  if ((result & 7) != 0 || !a3 || (a3 & 7) != 0)
  {
    goto LABEL_10;
  }

  v6 = *(a3 + 64);
  if ((v6 + 32) >= 0x40)
  {
    goto LABEL_11;
  }

  result = sub_10005EEB8(result, a2, v6, *(a3 + 126), *(a3 + 68), a3, 5, 0);
  v4->isa = off_100115D88;
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v9 = *(a3 + 64);
  if (v9 + 32 < 0x40)
  {
    v4[12].isa = sub_10005B694(a2, v9);
    v4[14].isa = a4;
    return v4;
  }

LABEL_11:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006976C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10005F054(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100069780(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10005F054(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000697C8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v2 = *(result + 96);
  if (!v2 || (*(result + 96) & 7) != 0)
  {
    goto LABEL_22;
  }

  v4 = *(v2 + 1184);
  if (!v4)
  {
    sub_10002FA5C();
  }

  if ((v4 & 7) == 0 && (result = *(result + 96)) != 0 && (result & 7) == 0 && ((v5 = *(v1 + 112), (result = (*(*result + 48))(result)) != 0) ? (v6 = (result & 7) == 0) : (v6 = 0), v6 && (v7 = sub_100018DC0(result), result = (*(*v4 + 608))(v4, v5, v7), (v8 = *(v1 + 96)) != 0) && (v8 & 7) == 0))
  {
    v9 = *(v1 + 16);
    if ((v9 + 32) < 0x40)
    {
      sub_100068F88(*(v1 + 96), v9, *(v1 + 20), *(v1 + 24), result ^ 1);
      return 0;
    }
  }

  else
  {
LABEL_22:
    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

void *sub_1000698F8(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = *result;
      if (!*v1)
      {
        return v1;
      }

      if ((result & 7) == 0)
      {
        (*(*result + 8))(result);
        return v1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_100069960(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = *result;
      if (!*v1)
      {
        return v1;
      }

      if ((result & 7) == 0)
      {
        (*(*result + 8))(result);
        return v1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000699C8(uint64_t *a1)
{
  if (a1 && (a1 & 7) == 0 && ((v1 = *a1) != 0 ? (v2 = (*a1 & 7) == 0) : (v2 = 0), v2))
  {
    v3 = *v1;
    if (*v1)
    {
      for (i = *(v1 + 8); i != v3; i -= 4)
      {
        if (i <= 3)
        {
          __break(0x5513u);
          goto LABEL_17;
        }
      }

      *(v1 + 8) = v3;
      if ((*(v1 + 16) - v3) < 0)
      {
        goto LABEL_18;
      }

      operator delete(v3);
    }
  }

  else
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x550Cu);
  }
}

void sub_100069A30(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = (result + 1404);
  sub_100064F7C(result, a2, 10);
  *result = off_100115DC8;
  *(result + 1392) = 0;
  *(result + 1400) = 0;
  *v4 = xmmword_1000EF0A0;
  *(result + 1420) = xmmword_1000EF0B0;
  *(result + 1436) = -1;
  sub_100069BAC(v5, v6);
  pthread_mutex_init((result + 1200), 0);
  pthread_mutex_init((result + 1264), 0);
  pthread_mutex_init((result + 1328), 0);
  sub_1000651C8(a2, v7);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_17;
  }

  v9 = sub_10006274C(v8, 3000, a2, 10);
  *(result + 1432) = v9;
  if (v9 == -1)
  {
    goto LABEL_16;
  }

  sub_1000651C8(a2, v10);
  if (!v11)
  {
    goto LABEL_17;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_17;
  }

  sub_1000629DC(v11, *(result + 1432));
  sub_1000651C8(a2, v12);
  if (!v13 || (v13 & 7) != 0)
  {
    goto LABEL_17;
  }

  v14 = sub_10006274C(v13, 500, a2, 10);
  *(result + 1436) = v14;
  if (v14 == -1)
  {
LABEL_16:
    __break(0x5518u);
  }

  else
  {
    sub_1000651C8(a2, v15);
    if (v16)
    {
      if ((v16 & 7) == 0)
      {
        v17 = sub_1000629DC(v16, *(result + 1436));
        v18 = sub_100065198(v17);
        if (v18)
        {
          if ((v18 & 7) == 0)
          {
            sub_1000929D4(v18, 10, 108, a2);
            return;
          }
        }
      }
    }
  }

LABEL_17:
  __break(0x5516u);
}

void sub_100069BAC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  *(result + 1408) = xmmword_1000EF0C0;
  *(result + 1424) = 0;
  *(result + 1192) = 0;
  *(result + 1404) = 0;
  *(result + 1400) = 0;
  *(result + 1392) = 0;
  *(result + 1196) = 0;
  sub_1000651C8(*(result + 8), a2);
  if (!v4)
  {
    return;
  }

  if (*(result + 1432) != -1)
  {
    sub_1000651C8(*(result + 8), v3);
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_15;
    }

    sub_1000629DC(v5, *(result + 1432));
  }

  if (*(result + 1436) == -1)
  {
    return;
  }

  sub_1000651C8(*(result + 8), v3);
  if (!v6 || (v6 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    return;
  }

  v7 = *(result + 1436);

  sub_1000629DC(v6, v7);
}

void sub_100069C78(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100069A30(result, a2);
  }
}

void sub_100069C8C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  *result = off_100115DC8;
  pthread_mutex_lock((result + 1328));
  v2 = *(result + 1401);
  if (v2 < 2)
  {
    if ((v2 & 1) == 0)
    {
LABEL_8:
      pthread_mutex_unlock((result + 1328));
      sub_1000651C8(*(result + 8), v6);
      if (v7)
      {
        if ((v7 & 7) == 0)
        {
          sub_100060C50(v7, *(result + 1432));
          *(result + 1432) = -1;
          sub_1000651C8(*(result + 8), v8);
          if (v9)
          {
            if ((v9 & 7) == 0)
            {
              v10 = sub_100060C50(v9, *(result + 1436));
              *(result + 1436) = -1;
              v11 = sub_100065198(v10);
              if (v11)
              {
                if ((v11 & 7) == 0)
                {
                  sub_1000929D4(v11, 10, 0, *(result + 8));
                  pthread_mutex_destroy((result + 1328));
                  pthread_mutex_destroy((result + 1264));
                  pthread_mutex_destroy((result + 1200));
                  sub_10006522C(result, v12);
                  return;
                }
              }
            }
          }
        }
      }

      goto LABEL_15;
    }

    v13[0] = 2;
    v3 = *(result + 1392);
    v13[1] = 0;
    v13[2] = v3;
    v4 = *(result + 8);
    if (v4 && (v4 & 7) == 0)
    {
      sub_10005BCC8(v4, 0xAuLL, 0, v13, 24);
      sub_100069BAC(result, v5);
      goto LABEL_8;
    }

LABEL_15:
    __break(0x5516u);
  }

  __break(0x550Au);
}

void sub_100069DD0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100069C8C(result);
  }
}

uint64_t sub_100069DE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100069C8C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100069E2C(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*result + 248))(result);
  if (!result)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v3 = *(v2 + 40);
  if (!v3)
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_25;
    }

    result = sub_1000926CC(result, 10);
    v4 = result;
    if (!result)
    {
      return v4;
    }

    if ((result & 7) == 0)
    {
      result = (*(*result + 48))(result);
      if (result)
      {
        v3 = result;
        goto LABEL_16;
      }

      return 0;
    }

LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = sub_1000653EC(10, *(v2 + 40));
  v4 = result;
  if (!result)
  {
    return v4;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v3 & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_10005BB24(v3, 0xAu);
  if ((v4 & 7) != 0)
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 1400);
  if (v5 < 2)
  {
    v4 = (v5 & 1) != 0 && (~*(v4 + 1404) & 0x1C0) == 0;
    sub_10005BB6C(v3, 0xAu);
    return v4;
  }

LABEL_26:
  __break(0x550Au);
  return result;
}

uint64_t sub_100069F78(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result & 7;
    if ((result & 7) == 0)
    {
      if (a2 <= 22049)
      {
        if (a2 > 11999)
        {
          if (a2 == 12000)
          {
            v3 = 4;
            return (*(result + 1404) & v3) != 0;
          }

          if (a2 == 16000)
          {
            v3 = 8;
            return (*(result + 1404) & v3) != 0;
          }
        }

        else
        {
          if (a2 == 8000)
          {
            v3 = 1;
            return (*(result + 1404) & v3) != 0;
          }

          if (a2 == 11025)
          {
            v3 = 2;
            return (*(result + 1404) & v3) != 0;
          }
        }
      }

      else if (a2 <= 31999)
      {
        if (a2 == 22050)
        {
          v3 = 16;
          return (*(result + 1404) & v3) != 0;
        }

        if (a2 == 24000)
        {
          v3 = 32;
          return (*(result + 1404) & v3) != 0;
        }
      }

      else
      {
        switch(a2)
        {
          case 32000:
            v3 = 64;
            return (*(result + 1404) & v3) != 0;
          case 44100:
            v3 = 128;
            return (*(result + 1404) & v3) != 0;
          case 48000:
            v3 = 256;
            return (*(result + 1404) & v3) != 0;
        }
      }

      return v2;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006A070(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_70;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_70;
  }

  v4 = result;
  result = *(v3 + 40);
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_70;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_70;
  }

  v6 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v6);
  if (!result)
  {
    goto LABEL_22;
  }

  v7 = result;
  if ((result & 7) == 0)
  {
    if (sub_100069E2C(a2))
    {
      if (v4 > 22049)
      {
        if (v4 > 31999)
        {
          if (v4 == 32000 || v4 == 44100 || v4 == 48000)
          {
            goto LABEL_46;
          }

          goto LABEL_48;
        }

        v8 = 22050;
        if (v4 != 22050)
        {
          if (v4 == 22255)
          {
            v9 = (*(v7 + 1404) & 0x20) == 0;
            v8 = 24000;
            goto LABEL_40;
          }

          v8 = 24000;
          if (v4 == 24000)
          {
            v9 = (*(v7 + 1404) & 0x20) == 0;
LABEL_40:
            v10 = 48000;
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        v9 = (*(v7 + 1404) & 0x10) == 0;
LABEL_42:
        v10 = 44100;
LABEL_43:
        if (v9)
        {
          v4 = v10;
        }

        else
        {
          v4 = v8;
        }

        goto LABEL_46;
      }

      if (v4 <= 11126)
      {
        v8 = 8000;
        if (v4 != 8000)
        {
          v8 = 11025;
          if (v4 != 11025)
          {
            goto LABEL_48;
          }

          v9 = (*(v7 + 1404) & 2) == 0;
          goto LABEL_42;
        }

        v9 = (*(v7 + 1404) & 1) == 0;
      }

      else
      {
        if (v4 == 11127)
        {
          v9 = (*(v7 + 1404) & 4) == 0;
          v8 = 12000;
          goto LABEL_40;
        }

        v8 = 12000;
        if (v4 == 12000)
        {
          v9 = (*(v7 + 1404) & 4) == 0;
          goto LABEL_40;
        }

        v8 = 16000;
        if (v4 != 16000)
        {
LABEL_48:
          if (v4 > 0x1F40)
          {
            if (v4 > 0x2B11)
            {
              if (v4 > 0x2EE0)
              {
                if (v4 > 0x3E80)
                {
                  if (v4 > 0x5622)
                  {
                    if (v4 > 0x5DC0)
                    {
                      if (v4 >= 0x7D01)
                      {
                        if (v4 <= 0xAC44)
                        {
                          v4 = 44100;
                        }

                        else
                        {
                          v4 = 48000;
                        }
                      }

                      else
                      {
                        v4 = 32000;
                      }

                      goto LABEL_46;
                    }

LABEL_60:
                    v9 = (*(v7 + 1404) & 0x20) == 0;
                    v8 = 24000;
                    goto LABEL_36;
                  }

LABEL_59:
                  if ((*(v7 + 1404) & 0x10) != 0)
                  {
                    v4 = 22050;
                    goto LABEL_46;
                  }

                  goto LABEL_60;
                }

LABEL_58:
                if ((*(v7 + 1404) & 8) != 0)
                {
                  v4 = 16000;
                  goto LABEL_46;
                }

                goto LABEL_59;
              }

LABEL_55:
              if ((*(v7 + 1404) & 4) != 0)
              {
                v4 = 12000;
                goto LABEL_46;
              }

              goto LABEL_58;
            }
          }

          else if (*(v7 + 1404))
          {
            v4 = 8000;
            goto LABEL_46;
          }

          if ((*(v7 + 1404) & 2) != 0)
          {
            v4 = 11025;
            goto LABEL_46;
          }

          goto LABEL_55;
        }

        v9 = (*(v7 + 1404) & 8) == 0;
      }

LABEL_36:
      v10 = 32000;
      goto LABEL_43;
    }

LABEL_22:
    v4 = 0;
LABEL_46:
    sub_10005BB6C(v6, 0xAu);
    return v4;
  }

LABEL_70:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006A334(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v3 = result;
  result = *(v2 + 40);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v5);
  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  *(result + 1408) = v3;
  sub_10006A3FC(v5);
LABEL_15:

  return sub_10005BB6C(v5, 0xAu);
}

uint64_t sub_10006A3FC(uint64_t result)
{
  v1 = result;
  if (!result)
  {
    result = sub_100065198(0);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_13;
    }

    result = sub_100092814(result, 10);
    v1 = result;
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return result;
  }

  sub_10005BB24(v1, 0xAu);
  result = sub_1000653EC(10, v1);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_10006AA30(result, 0);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_9:

  return sub_10005BB6C(v1, 0xAu);
}

uint64_t sub_10006A49C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v3 = result;
  result = *(v2 + 40);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v5);
  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  *(result + 1416) = v3;
  sub_10006A3FC(v5);
LABEL_15:

  return sub_10005BB6C(v5, 0xAu);
}

uint64_t sub_10006A564(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v3 = result;
  result = *(v2 + 40);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v5);
  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  *(result + 1412) = v3;
  sub_10006A3FC(v5);
LABEL_15:

  return sub_10005BB6C(v5, 0xAu);
}

uint64_t sub_10006A62C(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  v1 = *(result + 32);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(v1 + 40);
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  v3 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v3);
  v4 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  if ((result & 7) == 0)
  {
    if (sub_100069F78(result, *(result + 1408)))
    {
      v4 = *(v4 + 1408);
    }

    else
    {
      v4 = 0;
    }

LABEL_18:
    sub_10005BB6C(v3, 0xAu);
    return v4;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006A864(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v1 = *(result + 32);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_19;
  }

  result = *(v1 + 40);
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v3 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v3);
  if (!result)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((result & 7) == 0)
  {
    v4 = *(result + 1196);
LABEL_17:
    sub_10005BB6C(v3, 0xAu);
    return v4;
  }

LABEL_19:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006A91C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 1392);
    if (v1)
    {
      v2 = (*(result + 1392) & 7) == 0;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v3 = (*(*v1 + 16))(*(result + 1392), 0);
      sub_1000B748C(v1, 0, 10, 2, v3, 0, 0);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006AA30(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 1) == 0 && *(a1 + 1408) == *(a1 + 1420) && *(a1 + 1416) == *(a1 + 1424) && *(a1 + 1412) == *(a1 + 1428))
  {
    return 0;
  }

  result = sub_100069F78(a1, *(a1 + 1408));
  if (!result)
  {
    return 45;
  }

  v10 = 0;
  v9 = bswap32(*(a1 + 1408));
  if (&v9 < 0xFFFFFFFFFFFFFFF8)
  {
    HIDWORD(v10) = bswap32(*(a1 + 1412));
    v6 = sub_1000388B8(result, v5);
    if (v6 && (v6 & 7) == 0)
    {
      if ((*(*v6 + 264))(v6))
      {
        LODWORD(v10) = bswap32(*(a1 + 1416));
      }

      v7 = *(a1 + 1392);
      if (v7)
      {
        if ((v7 & 7) == 0)
        {
          v8 = (*(*v7 + 16))(*(a1 + 1392), 0);
          sub_1000B748C(v7, 0, 10, 4, v8, &v9, 12);
        }
      }
    }

LABEL_19:
    __break(0x5516u);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10006AC5C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v1 = *(result + 32);
  if (!v1)
  {
    return result;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_19;
  }

  result = *(v1 + 40);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v3 = result;
  sub_10005BB24(result, 0xAu);
  result = sub_1000653EC(10, v3);
  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  *(result + 1420) = 0;
  *(result + 1424) = 0;
LABEL_15:

  return sub_10005BB6C(v3, 0xAu);
}

void sub_10006AD20(uint64_t a1, int a2)
{
  if (a2 <= 22049)
  {
    if (a2 <= 11024)
    {
      if (!a2)
      {
        goto LABEL_17;
      }

      if (a2 != 8000)
      {
        return;
      }

      a2 = dword_10012BCA8 + 1;
      if (dword_10012BCA8 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 11025:
        a2 = dword_10012BCA8 + 2;
        if (dword_10012BCA8 >= 0xFFFFFFFE)
        {
          goto LABEL_22;
        }

        break;
      case 12000:
        a2 = dword_10012BCA8 + 4;
        if (dword_10012BCA8 >= 0xFFFFFFFC)
        {
          goto LABEL_22;
        }

        break;
      case 16000:
        a2 = dword_10012BCA8 + 8;
        if (dword_10012BCA8 < 0xFFFFFFF8)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      default:
        return;
    }

    goto LABEL_17;
  }

  if (a2 > 31999)
  {
    switch(a2)
    {
      case 32000:
        a2 = dword_10012BCA8 + 64;
        if (dword_10012BCA8 >= 0xFFFFFFC0)
        {
          goto LABEL_22;
        }

        break;
      case 44100:
        a2 = dword_10012BCA8 + 128;
        if (dword_10012BCA8 >= 0xFFFFFF80)
        {
          do
          {
LABEL_22:
            __break(0x5500u);
LABEL_23:
            a2 = dword_10012BCA8 + 16;
          }

          while (dword_10012BCA8 >= 0xFFFFFFF0);
        }

        break;
      case 48000:
        a2 = dword_10012BCA8 + 256;
        if (dword_10012BCA8 < 0xFFFFFF00)
        {
          break;
        }

        goto LABEL_22;
      default:
        return;
    }

LABEL_17:
    dword_10012BCA8 = a2;
    return;
  }

  if (a2 == 22050)
  {
    goto LABEL_23;
  }

  if (a2 == 24000)
  {
    a2 = dword_10012BCA8 + 32;
    if (dword_10012BCA8 >= 0xFFFFFFE0)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }
}

void sub_10006AE70(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!*(a1 + 8))
  {
    return;
  }

  v4 = sub_100065198(a1);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!sub_100094BFC(v4, *(a1 + 8)))
  {
    return;
  }

  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_64;
  }

  v6 = sub_10005ACA0(v5);
  if ((v6 & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_64;
    }

    if ((a2 & 7) != 0)
    {
      goto LABEL_64;
    }

    v7 = *(a2 + 8);
    v8 = *(a2 + 126);
    v9 = sub_100065198(v6);
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_64;
    }

    if ((sub_100092B58(v9, v7) & 0x400) == 0 || v7 != *(a1 + 1392))
    {
      sub_1000B7854(a2, v7, 0, 10, 1, *(a2 + 68), 7, v8, 0, 255, 0, 0, 0, 0);
LABEL_18:
      sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
      return;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 128);
    if (v8 == 5)
    {
      v21 = 4;
      if (v11 && v12 == 4)
      {
        sub_10006B450(a1);
        v21 = 0;
      }

      sub_1000B7854(a2, v7, 0, 10, 1, *(a2 + 68), v21, 5u, 0, 255, 0, 0, 0, 0);
      goto LABEL_18;
    }

    if (v8 == 3)
    {
      sub_1000651C8(*(a1 + 8), v10);
      if (v16)
      {
        pthread_mutex_lock((a1 + 1200));
        sub_1000651C8(*(a1 + 8), v17);
        if (!v18 || (v18 & 7) != 0)
        {
          goto LABEL_64;
        }

        sub_1000629DC(v18, *(a1 + 1432));
        pthread_mutex_unlock((a1 + 1200));
      }

      if (!*(a1 + 1404) && (v12 - 12) <= 0xF3)
      {
        v22 = v12 & 3;
        if ((v12 & 3) == 0)
        {
          *&v23 = 0xAAAAAAAAAAAAAAAALL;
          *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *(v45 + 12) = v23;
          v44 = v23;
          v45[0] = v23;
          v42 = v23;
          v43 = v23;
          v40 = v23;
          v41 = v23;
          v38 = v23;
          v39 = v23;
          v36 = v23;
          v37 = v23;
          v34 = v23;
          v35 = v23;
          v32 = v23;
          v33 = v23;
          v31 = v23;
          do
          {
            if (!v11)
            {
              goto LABEL_64;
            }

            if (-&v31 >> 2 == v22)
            {
              goto LABEL_65;
            }

            *(&v31 + v22) = bswap32(*v11);
            if (v11 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_65;
            }

            v11 += 4;
            ++v22;
          }

          while (v12 >> 2 != v22);
          if (sub_10006B308(a1, &v31, (v12 >> 2)))
          {
            *(a1 + 1192) = 0;
            v31 = 1uLL;
            *&v32 = *(a1 + 1392);
            v24 = *(a1 + 8);
            if (v24 && (v24 & 7) == 0)
            {
              sub_10005BCC8(v24, 0xAuLL, 0, &v31, 24);
              goto LABEL_39;
            }

            goto LABEL_64;
          }
        }
      }

      v19 = *(a1 + 1192);
      if (v19 != 255)
      {
        v20 = v19 + 1;
        *(a1 + 1192) = v20;
        if ((v20 & 0xFC) != 0)
        {
          *(a1 + 1192) = 0;
          goto LABEL_39;
        }

        sub_1000B7854(a2, v7, 0, 10, 1, *(a2 + 68), 4, 3u, 0, 255, 0, 0, 0, 0);
        pthread_mutex_lock((a1 + 1200));
        sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
        sub_1000651C8(*(a1 + 8), v25);
        if (v27)
        {
          sub_1000651C8(*(a1 + 8), v26);
          if (!v28 || (v28 & 7) != 0)
          {
            goto LABEL_64;
          }

          sub_1000629DC(v28, *(a1 + 1432));
          if (!*(a1 + 1404))
          {
            sub_1000651C8(*(a1 + 8), v29);
            if (!v30 || (v30 & 7) != 0)
            {
              goto LABEL_64;
            }

            sub_10006292C(v30, *(a1 + 1432));
          }
        }

        pthread_mutex_unlock((a1 + 1200));
        return;
      }
    }

    else
    {
      if (v8)
      {
        sub_1000DDEEC(0, 4, "%s:%d unknown command.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDigitalAudio.cpp", 1149);
        sub_1000B7854(a2, v7, 0, 10, 1, *(a2 + 68), 4, v8, 0, 255, 0, 0, 0, 0);
        goto LABEL_18;
      }

      if (!v11 || v12 != 2 || *v11)
      {
LABEL_39:
        sub_1000B9034(a2);
        return;
      }

      if (v11 != -1)
      {
        if (*(v11 + 1) != 4)
        {
          goto LABEL_39;
        }

        sub_1000651C8(*(a1 + 8), v10);
        if (!v13)
        {
          goto LABEL_39;
        }

        pthread_mutex_lock((a1 + 1264));
        sub_1000651C8(*(a1 + 8), v14);
        if (v15 && (v15 & 7) == 0)
        {
          sub_1000629DC(v15, *(a1 + 1436));
          pthread_mutex_unlock((a1 + 1264));
          goto LABEL_39;
        }

LABEL_64:
        __break(0x5516u);
      }

LABEL_65:
      __break(0x5513u);
    }

    __break(0x5507u);
  }
}

uint64_t sub_10006B308(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
LABEL_41:
    __break(0x5516u);
LABEL_42:
    __break(0x5513u);
    return result;
  }

  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v6 = (a2 & 3) == 0 && a2 != 0;
    while (v3 <= ~a2)
    {
      if (!v6)
      {
        goto LABEL_41;
      }

      v7 = *(a2 + v3);
      v8 = v4 | 0x40;
      v9 = v4 | 0x80;
      v10 = v4 | 0x100;
      if (v7 != 48000)
      {
        v10 = v4;
      }

      if (v7 != 44100)
      {
        v9 = v10;
      }

      if (v7 != 32000)
      {
        v8 = v9;
      }

      v11 = v4 | 0x10;
      v12 = v4 | 0x20;
      if (v7 != 24000)
      {
        v12 = v4;
      }

      if (v7 != 22050)
      {
        v11 = v12;
      }

      if (v7 <= 31999)
      {
        v8 = v11;
      }

      v13 = v4 | 4;
      v14 = v4 | 8;
      if (v7 != 16000)
      {
        v14 = v4;
      }

      if (v7 != 12000)
      {
        v13 = v14;
      }

      v15 = v4 | 1;
      if (v7 == 11025)
      {
        v4 |= 2u;
      }

      if (v7 == 8000)
      {
        v4 = v15;
      }

      if (v7 > 11999)
      {
        v4 = v13;
      }

      if (v7 > 22049)
      {
        v4 = v8;
      }

      v3 += 4;
      if (4 * a3 == v3)
      {
        if ((~v4 & 0x1C0) != 0)
        {
          goto LABEL_39;
        }

        *(result + 1404) = v4;
        *(result + 1192) = 0;
        return 1;
      }
    }

    goto LABEL_42;
  }

LABEL_39:
  v16 = 0;
  *(result + 1404) = 0;
  return v16;
}

uint64_t sub_10006B450(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    __break(0x5500u);
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  v2 = 10;
  if (&v2 == -1)
  {
    goto LABEL_6;
  }

  v3 = 0x400000000000000;
  return 0;
}

uint64_t sub_10006B4F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_24:
    __break(0x5516u);
LABEL_25:
    __break(0x5507u);
    return result;
  }

  if (a2 != 32)
  {
    if (a2 != 8)
    {
      if (a2 == 4)
      {
        *(result + 1392) = a4;
        if (!a4)
        {
          sub_1000E1D34();
        }

        *(result + 1404) = 0;
        *(result + 1400) = 1;
        pthread_mutex_lock((result + 1328));
        *(v4 + 1401) = 1;
        pthread_mutex_unlock((v4 + 1328));
      }

      return 0;
    }

    *(result + 1400) = 0;
    if (*(result + 1392) != a4)
    {
      return 0;
    }

    pthread_mutex_lock((result + 1328));
    *(v4 + 1401) = 0;
    pthread_mutex_unlock((v4 + 1328));
    v9[0] = 2;
    v5 = *(v4 + 1392);
    v9[1] = 0;
    v9[2] = v5;
    result = *(v4 + 8);
    if (result && (result & 7) == 0)
    {
      sub_10005BCC8(result, 0xAuLL, 0, v9, 24);
      sub_100069BAC(v4, v6);
      return 0;
    }

    goto LABEL_24;
  }

  if (*(result + 1432) != a3)
  {
    if (*(result + 1436) == a3)
    {
      sub_10006AA30(result, 1);
    }

    else
    {
      sub_1000DDEEC(0, 4, "%s:%d unknown timer.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDigitalAudio.cpp", 1251);
    }

    return 0;
  }

  v7 = *(result + 1192);
  if (v7 == 255)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  *(result + 1192) = v8;
  if ((v8 & 0xFC) != 0)
  {
    *(result + 1192) = 0;
    return 0;
  }

  return sub_10006A91C(result);
}

uint64_t sub_10006B678(uint64_t result, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  if ((a3 & 7) == 0)
  {
    v5 = result;
    sub_10005BB24(a3, 0xAu);
    result = sub_1000653EC(10, a3);
    if (!result)
    {
      v6 = 22;
      goto LABEL_18;
    }

    if ((result & 7) == 0)
    {
      if (v5 != 64)
      {
        goto LABEL_17;
      }

      v6 = 0;
      if ((a2 + 1) > 7)
      {
LABEL_18:
        sub_10005BB6C(a3, 0xAu);
        return v6;
      }

      v7 = 1 << (a2 + 1);
      if ((v7 & 0x13) != 0)
      {
        v6 = 0;
        *(result + 1400) = 0;
        goto LABEL_18;
      }

      if ((v7 & 0xA0) == 0)
      {
        goto LABEL_18;
      }

      *(result + 1400) = 1;
      if (!*(result + 1404))
      {
        v6 = sub_10006A91C(result);
        goto LABEL_18;
      }

      if (a2 != 4)
      {
LABEL_17:
        v6 = 0;
        goto LABEL_18;
      }

      *(result + 1192) = 0;
      v9[0] = 1;
      v8 = *(result + 1392);
      v9[1] = 0;
      v9[2] = v8;
      result = *(result + 8);
      if (result && (result & 7) == 0)
      {
        sub_10005BCC8(result, 0xAuLL, 0, v9, 24);
        goto LABEL_17;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006B7B0(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 10;
    if (result != -1)
    {
      *(result + 1) = 0x400000000000000;
      return 0;
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5500u);
  return result;
}

void sub_10006B7E4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_88;
  }

  v4 = (result + 1780);
  sub_100064F7C(result, a2, 3);
  *result = off_100115E78;
  *(result + 1192) = 0;
  *(result + 1744) = -1;
  *(result + 1752) = -1;
  *(result + 1756) = 0;
  *(result + 1760) = 0u;
  *(result + 1776) = 1;
  *v4 = xmmword_1000EF110;
  *(result + 2757) = 1;
  *(result + 2760) = xmmword_1000EF120;
  *(result + 2784) = 0;
  *(result + 2792) = 0u;
  *(result + 2808) = 0u;
  *(result + 2824) = 0u;
  *(result + 2840) = 0u;
  *(result + 2872) = 0;
  *(result + 2856) = 0u;
  *(result + 2896) = 0;
  *(result + 2880) = 0u;
  if (dword_10012B490 == -1)
  {
    v7 = sub_10002BB1C(v5, v6);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_88;
    }

    v5 = (*(*v7 + 360))(v7, "SetDurationToZeroOnInvalid");
    dword_10012B490 = v5;
  }

  if (dword_10012B494 == -1)
  {
    v8 = sub_10002BB1C(v5, v6);
    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_88;
    }

    v5 = (*(*v8 + 360))(v8, "SetDurationToLargeOnInvalid");
    dword_10012B494 = v5;
  }

  if (dword_10012B498 == -1)
  {
    v9 = sub_10002BB1C(v5, v6);
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_88;
    }

    v5 = (*(*v9 + 360))(v9, "SetDurationTo5MinOnInvalid");
    dword_10012B498 = v5;
  }

  if (dword_10012B49C == -1)
  {
    v10 = sub_10002BB1C(v5, v6);
    if (!v10 || (v10 & 7) != 0)
    {
      goto LABEL_88;
    }

    v5 = (*(*v10 + 360))(v10, "SetDurationTo24HrsOnInvalid");
    dword_10012B49C = v5;
  }

  if (dword_10012B4A0 == -1)
  {
    v11 = sub_10002BB1C(v5, v6);
    if (!v11 || (v11 & 7) != 0)
    {
      goto LABEL_88;
    }

    v5 = (*(*v11 + 360))(v11, "SetDurationTo1HrOnInvalid");
    dword_10012B4A0 = v5;
  }

  v12 = sub_1000388B8(v5, v6);
  *(result + 1192) = v12;
  if (!v12)
  {
    sub_1000E1D34();
  }

  *(result + 1780) &= ~dword_10012B438;
  *(result + 2256) = 0u;
  *(result + 2272) = 0u;
  *(result + 2288) = 0;
  *(result + 2744) = -1;
  *(result + 2748) = 0;
  *(result + 2752) = 6;
  *(result + 1200) = 0;
  *(result + 2756) = 0;
  *(result + 1208) = 0;
  v14 = result + 1280;
  *(result + 1280) = 0;
  *(result + 1288) = result + 1216;
  *(result + 1296) = 1028;
  if ((result + 1280) < 0xFFFFFFFFFFFFFFE8)
  {
    *(result + 1304) = 1;
    *(result + 1312) = result + 1220;
    *(result + 1320) = 1028;
    if (v14 <= 0xFFFFFFFFFFFFFFCFLL)
    {
      *(result + 1328) = 2;
      *(result + 1336) = result + 1228;
      *(result + 1344) = 2056;
      if (v14 <= 0xFFFFFFFFFFFFFFB7)
      {
        *(result + 1352) = 3;
        *(result + 1360) = result + 1254;
        *(result + 1368) = 257;
        if (v14 <= 0xFFFFFFFFFFFFFF9FLL)
        {
          *(result + 1376) = 4;
          *(result + 1384) = result + 1245;
          *(result + 1392) = 514;
          if (v14 <= 0xFFFFFFFFFFFFFF87)
          {
            *(result + 1400) = 5;
            *(result + 1408) = result + 1247;
            *(result + 1416) = 514;
            if (v14 <= 0xFFFFFFFFFFFFFF6FLL)
            {
              *(result + 1424) = 6;
              *(result + 1432) = result + 1224;
              *(result + 1440) = 1028;
              if (v14 <= 0xFFFFFFFFFFFFFF57)
              {
                *(result + 1448) = 7;
                *(result + 1456) = result + 1255;
                *(result + 1464) = 257;
                if (v14 <= 0xFFFFFFFFFFFFFF3FLL)
                {
                  *(result + 1472) = 8;
                  *(result + 1480) = result + 1256;
                  *(result + 1488) = 257;
                  if (v14 <= 0xFFFFFFFFFFFFFF27)
                  {
                    *(result + 1496) = 9;
                    *(result + 1504) = result + 1236;
                    *(result + 1512) = 1542;
                    if (v14 <= 0xFFFFFFFFFFFFFF0FLL)
                    {
                      *(result + 1520) = 10;
                      *(result + 1528) = result + 1242;
                      *(result + 1536) = 771;
                      if (v14 <= 0xFFFFFFFFFFFFFEF7)
                      {
                        *(result + 1544) = 11;
                        *(result + 1552) = result + 1257;
                        *(result + 1560) = 257;
                        if (v14 <= 0xFFFFFFFFFFFFFEDFLL)
                        {
                          *(result + 1568) = 12;
                          *(result + 1576) = result + 1258;
                          *(result + 1584) = 257;
                          if (v14 <= 0xFFFFFFFFFFFFFEC7)
                          {
                            *(result + 1592) = 13;
                            *(result + 1600) = result + 1259;
                            *(result + 1608) = 257;
                            if (v14 <= 0xFFFFFFFFFFFFFEAFLL)
                            {
                              *(result + 1616) = 14;
                              *(result + 1624) = result + 1260;
                              *(result + 1632) = 257;
                              if (v14 <= 0xFFFFFFFFFFFFFE97)
                              {
                                *(result + 1640) = 15;
                                *(result + 1648) = result + 1252;
                                *(result + 1656) = 514;
                                if (v14 <= 0xFFFFFFFFFFFFFE7FLL)
                                {
                                  *(result + 1664) = 16;
                                  *(result + 1672) = result + 1249;
                                  *(result + 1680) = 771;
                                  if (v14 <= 0xFFFFFFFFFFFFFE67)
                                  {
                                    *(result + 1688) = 17;
                                    *(result + 1696) = result + 1264;
                                    *(result + 1704) = 1028;
                                    if (v14 <= 0xFFFFFFFFFFFFFE4FLL)
                                    {
                                      v15 = 0;
                                      *(result + 1712) = 18;
                                      *(result + 1728) = 1032;
                                      *(result + 1720) = result + 1268;
                                      *(result + 1268) = 0;
                                      *(result + 1800) = 0uLL;
                                      *(result + 1816) = 0uLL;
                                      *(result + 1832) = 0uLL;
                                      *(result + 1848) = 0uLL;
                                      *(result + 1864) = 0uLL;
                                      *(result + 1880) = 0uLL;
                                      *(result + 1896) = 0uLL;
                                      *(result + 1912) = 0uLL;
                                      *(result + 1928) = 0uLL;
                                      *(result + 1944) = 0uLL;
                                      *(result + 1960) = 0uLL;
                                      *(result + 1976) = 0uLL;
                                      *(result + 1992) = 0uLL;
                                      *(result + 2008) = 0uLL;
                                      *(result + 2024) = 0uLL;
                                      *(result + 2040) = 0uLL;
                                      *(result + 2056) = 0uLL;
                                      *(result + 2072) = 0uLL;
                                      *(result + 2088) = 0uLL;
                                      *(result + 2104) = 0uLL;
                                      *(result + 2120) = 0uLL;
                                      *(result + 2136) = 0uLL;
                                      *(result + 2152) = 0uLL;
                                      *(result + 2168) = 0uLL;
                                      *(result + 2184) = 0uLL;
                                      *(result + 2200) = 0uLL;
                                      *(result + 2216) = 0uLL;
                                      *(result + 2232) = 0uLL;
                                      *(result + 2248) = 0;
                                      while (v15 <= ~(result + 1800))
                                      {
                                        *(result + v15 + 1808) = 0;
                                        v15 += 24;
                                        if (v15 == 456)
                                        {
                                          sub_10006C29C(result, v13);
                                          v17 = result + 2296;
                                          *(result + 2296) = sub_10006C320;
                                          *(result + 2304) = 0;
                                          if ((result + 2296) > 0xFFFFFFFFFFFFFFEFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2312) = sub_10006C3D4;
                                          *(result + 2320) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFFDFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2328) = sub_10006C53C;
                                          *(result + 2336) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFFCFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2344) = sub_10006C8E8;
                                          *(result + 2352) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFFBFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2360) = sub_10006CA48;
                                          *(result + 2368) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFFAFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2376) = sub_10006CC34;
                                          *(result + 2384) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF9FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2392) = sub_10006CE7C;
                                          *(result + 2400) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF8FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2408) = sub_10006CF20;
                                          *(result + 2416) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF7FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2424) = sub_10006CFC8;
                                          *(result + 2432) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF6FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2440) = sub_10006D070;
                                          *(result + 2448) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF5FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2456) = sub_10006D1F8;
                                          *(result + 2464) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF4FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2472) = sub_10006D210;
                                          *(result + 2480) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF3FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2488) = sub_10006D2B8;
                                          *(result + 2496) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF2FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2504) = sub_10006D350;
                                          *(result + 2512) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF1FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2520) = sub_10006D3F4;
                                          *(result + 2528) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFF0FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2536) = sub_10006D49C;
                                          *(result + 2544) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFEFFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2552) = sub_10006D51C;
                                          *(result + 2560) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFEEFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2568) = sub_10006D73C;
                                          *(result + 2576) = 0;
                                          if (v17 > 0xFFFFFFFFFFFFFEDFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2584) = sub_10006D844;
                                          *(result + 2592) = 0;
                                          v18 = result + 2600;
                                          *(result + 2600) = sub_10006D98C;
                                          *(result + 2608) = 0;
                                          if ((result + 2600) > 0xFFFFFFFFFFFFFFEFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2616) = sub_10006DBFC;
                                          *(result + 2624) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFFDFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2632) = sub_10006DE00;
                                          *(result + 2640) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFFCFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2648) = sub_10006DF0C;
                                          *(result + 2656) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFFBFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2664) = sub_10006E018;
                                          *(result + 2672) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFFAFLL)
                                          {
                                            break;
                                          }

                                          *(result + 2680) = sub_10006E124;
                                          *(result + 2688) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFF9FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2696) = sub_10006E230;
                                          *(result + 2704) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFF8FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2712) = sub_10006E33C;
                                          *(result + 2720) = 0;
                                          if (v18 > 0xFFFFFFFFFFFFFF7FLL)
                                          {
                                            break;
                                          }

                                          *(result + 2728) = sub_10006E5C8;
                                          *(result + 2736) = 0;
                                          sub_1000651C8(a2, v16);
                                          if (v19 && (v19 & 7) == 0)
                                          {
                                            v20 = sub_10006274C(v19, 96, a2, 3);
                                            *(result + 2744) = v20;
                                            if (v20 == -1)
                                            {
                                              __break(0x5518u);
                                              break;
                                            }

                                            *(result + 2748) = 0;
                                            sub_1000651C8(a2, v21);
                                            if (v22)
                                            {
                                              if ((v22 & 7) == 0)
                                              {
                                                v23 = sub_1000629DC(v22, *(result + 2744));
                                                v24 = sub_100065198(v23);
                                                if (v24)
                                                {
                                                  if ((v24 & 7) == 0)
                                                  {
                                                    sub_1000929D4(v24, 3, 621, a2);
                                                    *(result + 1204) = 0;
                                                    *(result + 1200) = 0;
                                                    *(result + 2288) = 0;
                                                    v32[0] = 0xAAAAAAAAAAAAAAAALL;
                                                    v32[1] = 0xAAAAAAAAAAAAAAAALL;
                                                    sub_1000DDCB4(v32, 1u);
                                                    v32[0] = off_100113858;
                                                    v25 = sub_1000DDDDC(v32, (result + 2256));
                                                    v27 = sub_10004B1AC(v25, v26);
                                                    if (v27)
                                                    {
                                                      if ((v27 & 7) == 0)
                                                      {
                                                        v28 = (*(*v27 + 16))(v27, result);
                                                        v30 = sub_100045A94(v28, v29);
                                                        if (v30)
                                                        {
                                                          if ((v30 & 7) == 0)
                                                          {
                                                            (*(*v30 + 16))(v30, result);
                                                            v31 = *(result + 1192);
                                                            if (v31)
                                                            {
                                                              if ((v31 & 7) == 0)
                                                              {
                                                                (*(*v31 + 16))(v31, result);
                                                                v32[0] = off_100113858;
                                                                sub_1000DDCF4(v32);
                                                                return;
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

                                          goto LABEL_88;
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
          }
        }
      }
    }
  }

  __break(0x5513u);
LABEL_88:
  __break(0x5516u);
}

uint64_t sub_10006C29C(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100045A94(result, a2)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 136))(result);
    *(v2 + 1736) = result;
    if (result == 256)
    {
      *(v2 + 1736) = 0x1000000FFLL;
    }

    else
    {
      *(v2 + 1740) = 0;
    }
  }

  return result;
}

uint64_t sub_10006C320(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 408))(result);
  if (!a2)
  {
    goto LABEL_13;
  }

  v5 = *a2;
  v6 = &a2[v5 + 1];
  if (__CFADD__(a2 + 1, v5))
  {
LABEL_14:
    __break(0x5500u);
    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  *v6 = bswap32(result);
  if (v5 < 0xFC)
  {
    *a2 = v5 + 4;
    *(v2 + 2768) = result;
    return 0;
  }

LABEL_15:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006C3D4(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if ((*(*result + 464))(result))
  {
    goto LABEL_15;
  }

  result = *(v2 + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if (!(*(*result + 392))(result))
  {
LABEL_15:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *(v2 + 1192);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_25;
    }

    result = (*(*result + 376))(result);
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  v5 = *a2;
  v6 = &a2[v5 + 1];
  if (__CFADD__(a2 + 1, v5))
  {
LABEL_26:
    __break(0x5500u);
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  *v6 = bswap32(result);
  if (v5 >= 0xFC)
  {
LABEL_27:
    __break(0x5507u);
    goto LABEL_28;
  }

  *a2 = v5 + 4;
  v7 = *(v2 + 2757);
  if (v7 >= 2)
  {
LABEL_28:
    __break(0x550Au);
    return result;
  }

  v8 = (v7 & 1) != 0 || *(v2 + 2764) != result;
  *(v2 + 2757) = v8;
  *(v2 + 2764) = result;
  return 0;
}

uint64_t sub_10006C53C(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_48;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_48;
  }

  v3 = *(result + 2760);
  if (v3 >= 8)
  {
    goto LABEL_51;
  }

  if (!v3)
  {
    v8 = 0;
    v9 = 0xFFFF;
    LODWORD(v6) = -1;
LABEL_37:
    if (a2)
    {
      v15 = a2 + 1;
      v16 = *a2;
      v17 = &a2[v16 + 1];
      if (__CFADD__(a2 + 1, v16))
      {
        goto LABEL_49;
      }

      if (v17)
      {
        *v17 = bswap32(v6);
        if (v16 >= 0xFC)
        {
          goto LABEL_50;
        }

        v18 = v16 + 4;
        *a2 = v18;
        v19 = &v15[v18];
        if (__CFADD__(v15, v18))
        {
          goto LABEL_49;
        }

        if (v19)
        {
          *v19 = bswap32(v8) >> 16;
          if (v18 <= 0xFDu)
          {
            v20 = v18 + 2;
            *a2 = v20;
            v21 = __CFADD__(v15, v20);
            v22 = &v15[v20];
            if (!v21)
            {
              if (v22)
              {
                *v22 = bswap32(v9) >> 16;
                if (v20 <= 0xFDu)
                {
                  *a2 = v20 + 2;
                  return 0;
                }

                goto LABEL_50;
              }

              goto LABEL_48;
            }

LABEL_49:
            __break(0x5500u);
          }

LABEL_50:
          __break(0x5507u);
          goto LABEL_51;
        }
      }
    }

LABEL_48:
    __break(0x5516u);
    goto LABEL_49;
  }

  v5 = *(result + 2757);
  if (v5 > 1)
  {
    goto LABEL_51;
  }

  if (v5)
  {
    *(result + 2772) = -1;
  }

  v6 = *(result + 2764);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_48;
  }

  result = (*(*result + 400))(result, v6);
  v27 = result;
  if (!result)
  {
    goto LABEL_25;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_48;
  }

  if (!(*(*result + 16))(result))
  {
LABEL_25:
    v8 = 0;
    *(v2 + 2772) = -1;
    *(v2 + 1748) = -1;
    v9 = 0xFFFF;
LABEL_36:
    result = sub_1000698F8(&v27);
    goto LABEL_37;
  }

  v8 = *(v2 + 2772);
  if (v8 == -1)
  {
    v8 = (*(*v7 + 368))(v7);
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_28:
    v9 = 0xFFFF;
LABEL_35:
    *(v2 + 2772) = v8;
    goto LABEL_36;
  }

  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_15:
  result = (*(*v7 + 392))(v7, *(v2 + 2768));
  v9 = result;
  v10 = *(v2 + 1748);
  if (result == v10 || v10 == -1)
  {
LABEL_33:
    if (v9 == -1)
    {
      v9 = 0;
    }

    goto LABEL_35;
  }

  v12 = *(v2 + 1756);
  if (v12 <= 1)
  {
    if (v12)
    {
      v26[0] = 0xAAAAAAAAAAAAAAAALL;
      v26[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDCB4(v26, 0);
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26[0] = off_100115F28;
      v24 = 0xAAAAAAAAAAAAAAAALL;
      v23 = xmmword_1000EF130;
      sub_1000DDDDC(v26, &v24);
      v28 = *(v2 + 1760);
      v13 = sub_100073DB0(&v28, &v23);
      if (v24 >= *v13 && (v24 > *v13 || v25 > v13[1]))
      {
        *(v2 + 1756) = 0;
        *(v2 + 1760) = 0u;
        *(v2 + 1744) = v6;
        *(v2 + 1748) = v9;
        *(v2 + 1752) = v8;
      }

      else
      {
        v9 = *(v2 + 1748);
        LODWORD(v6) = *(v2 + 1744);
        v8 = *(v2 + 1752);
      }

      v26[0] = off_100115F28;
      v14 = v26;
    }

    else
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDCB4(&v28, 0);
      *&v28 = off_100115F28;
      sub_1000DDDDC(&v28, (v2 + 1760));
      *(v2 + 1756) = 1;
      v9 = *(v2 + 1748);
      LODWORD(v6) = *(v2 + 1744);
      v8 = *(v2 + 1752);
      *&v28 = off_100115F28;
      v14 = &v28;
    }

    sub_1000DDCF4(v14);
    goto LABEL_33;
  }

LABEL_51:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006C8E8(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = (*(*result + 416))(result);
  if (result >= 8)
  {
LABEL_23:
    __break(0x550Au);
    goto LABEL_24;
  }

  v5 = result;
  if ((result - 1) <= 1)
  {
    result = *(v2 + 1192);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_22;
    }

    result = (*(*result + 440))(result);
    if (result)
    {
      v5 = 3;
    }

    else
    {
      result = *(v2 + 1192);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_22;
      }

      result = (*(*result + 448))(result);
      if (result)
      {
        v5 = 4;
      }
    }
  }

  if (!a2)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  v6 = *a2;
  if (__CFADD__(a2 + 1, v6))
  {
LABEL_24:
    __break(0x5513u);
    goto LABEL_25;
  }

  a2[v6 + 1] = v5;
  if (v6 != 255)
  {
    *a2 = v6 + 1;
    *(v2 + 2760) = v5;
    return 0;
  }

LABEL_25:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006CA48(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_33;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_33;
  }

  v4 = sub_100045A94(result, a2);
  result = sub_100065198(v4);
  if (!result)
  {
    goto LABEL_33;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_33;
  }

  result = sub_1000945E0(result, *(v2 + 8));
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_33;
  }

  v5 = result;
  result = (*(*v4 + 120))(v4, result);
  if (!v5)
  {
    __break(0x5518u);
    goto LABEL_33;
  }

  v6 = result;
  v7 = sub_10007D6FC(*(v2 + 8));
  v8 = v7;
  result = sub_100065198(v7);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_33;
  }

  result = sub_1000933B0(result, v5);
  if (result == 56)
  {
    v9 = *(v2 + 2756);
    if (v9 > 1)
    {
      goto LABEL_36;
    }

    if (v8 & 0x800) == 0 && (v9)
    {
      return 2;
    }
  }

  v10 = *(v2 + 2756);
  if (v10 <= 1)
  {
    if (result != 56 && (v10 & 1) != 0)
    {
      result = *(v2 + 8);
      if (!result)
      {
        goto LABEL_33;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_33;
      }

      result = sub_10005BC54(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_33;
      }

      sub_1000C1FF4(result + 1008, 1);
    }

    if (v6)
    {
      result = 0;
    }

    else
    {
      v11 = (*(*v4 + 104))(v4, v5);
      sub_10006C29C(v2, v12);
      result = sub_100073130(v2, v11, 0);
    }

    if (a2)
    {
      v13 = a2 + 1;
      v14 = *a2;
      v15 = ~(a2 + 1);
      if (v15 >= v14)
      {
        v13[v14] = v6;
        if (v14 == 255)
        {
LABEL_35:
          __break(0x5507u);
          goto LABEL_36;
        }

        v16 = v14 + 1;
        v17 = (v14 + 1);
        *a2 = v16;
        if (v17 <= v15)
        {
          v13[v17] = result;
          if (v16 != 255)
          {
            result = 0;
            *a2 = v16 + 1;
            return result;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      __break(0x5513u);
      goto LABEL_35;
    }

LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

LABEL_36:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006CC34(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_100048620(result, a2);
  if (!result)
  {
    goto LABEL_25;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = (*(*result + 208))(result);
  v5 = *v3;
  if (v4)
  {
    if ((*(v5 + 216))(v3))
    {
      LOBYTE(v6) = 0;
      result = 0;
      v7 = 2;
    }

    else
    {
      result = (*(*v3 + 248))(v3);
      if (result > 3)
      {
LABEL_28:
        __break(0x550Au);
        goto LABEL_29;
      }

      if (result == 1)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 4;
      }

      else
      {
        LOBYTE(v6) = 0;
        if (result == 3)
        {
          result = 0;
          v7 = 5;
        }

        else
        {
          result = 0;
          v7 = 3;
        }
      }
    }

LABEL_19:
    if (a2)
    {
      v11 = a2 + 1;
      v12 = *a2;
      v13 = ~(a2 + 1);
      if (v13 >= v12)
      {
        v11[v12] = v7;
        if (v12 == 255)
        {
LABEL_27:
          __break(0x5507u);
          goto LABEL_28;
        }

        v14 = v12 + 1;
        *a2 = v14;
        if (v14 <= v13)
        {
          v11[v14] = v6;
          if (v14 != 255)
          {
            *a2 = v14 + 1;
            return result;
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      __break(0x5513u);
      goto LABEL_27;
    }

LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  v8 = (*(v5 + 232))(v3);
  result = (*(*v3 + 240))(v3);
  if (v8 > result)
  {
    LOBYTE(v6) = 0;
    result = 2;
    v7 = 1;
    goto LABEL_19;
  }

  v9 = 255 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_29:
    __break(0x550Cu);
    goto LABEL_30;
  }

  result = (*(*v3 + 240))(v3);
  if (result)
  {
    v10 = result;
    result = 0;
    v6 = v9 / v10;
    v7 = (v6 & 0xFC) > 0x4B;
    goto LABEL_19;
  }

LABEL_30:
  __break(0x5503u);
  return result;
}

uint64_t sub_10006CE7C(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 240))(result);
  if (!a2)
  {
    goto LABEL_13;
  }

  v4 = *a2;
  v5 = &a2[v4 + 1];
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_14:
    __break(0x5500u);
    goto LABEL_15;
  }

  if (!v5)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  *v5 = bswap32(result);
  if (v4 < 0xFC)
  {
    *a2 = v4 + 4;
    return 0;
  }

LABEL_15:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006CF20(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 152))(result);
  if (result >= 4)
  {
LABEL_14:
    __break(0x550Au);
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v4 = *a2;
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_15:
    __break(0x5513u);
    goto LABEL_16;
  }

  a2[v4 + 1] = result;
  if (v4 != 255)
  {
    *a2 = v4 + 1;
    return 0;
  }

LABEL_16:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006CFC8(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 136))(result);
  if (result >= 4)
  {
LABEL_14:
    __break(0x550Au);
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v4 = *a2;
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_15:
    __break(0x5513u);
    goto LABEL_16;
  }

  a2[v4 + 1] = result;
  if (v4 != 255)
  {
    *a2 = v4 + 1;
    return 0;
  }

LABEL_16:
  __break(0x5507u);
  return result;
}

tm *sub_10006D070(tm *result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v15.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15.tm_mon = v3;
  *&v15.tm_isdst = v3;
  *&v15.tm_sec = v3;
  v14 = time(0);
  result = localtime_r(&v14, &v15);
  if (!a2)
  {
    goto LABEL_25;
  }

  v4 = v15.tm_year + 1900;
  if (!__OFADD__(v15.tm_year, 1900))
  {
    if (v4 >= 0x10000)
    {
      goto LABEL_23;
    }

    v5 = (a2 + 1);
    v6 = *a2;
    v7 = &a2[v6 + 1];
    if (!__CFADD__(a2 + 1, v6))
    {
      if (!v7)
      {
LABEL_25:
        __break(0x5516u);
        goto LABEL_26;
      }

      *v7 = bswap32(v4) >> 16;
      if (v6 > 0xFD)
      {
        goto LABEL_23;
      }

      v8 = v6 + 2;
      *a2 = v8;
      v9 = v15.tm_mon + 1;
      if (!__OFADD__(v15.tm_mon, 1))
      {
        if (v9 <= 0xFF)
        {
          v10 = ~v5;
          if (v8 > ~v5)
          {
            goto LABEL_24;
          }

          *(v5 + v8) = v9;
          if (v8 != 0xFF)
          {
            *a2 = v8 + 1;
            if (v15.tm_mday <= 0xFFu)
            {
              v11 = (v8 + 1);
              if (v11 > v10)
              {
                goto LABEL_24;
              }

              *(v5 + v11) = v15.tm_mday;
              if (v8 != 0xFE)
              {
                v12 = v11 + 1;
                *a2 = v11 + 1;
                if (v15.tm_hour <= 0xFFu)
                {
                  v13 = (v11 + 1);
                  if (v12 > v10)
                  {
                    goto LABEL_24;
                  }

                  *(v5 + v13) = v15.tm_hour;
                  if (v12 != 0xFF)
                  {
                    *a2 = v13 + 1;
                    if (v15.tm_min <= 0xFFu)
                    {
                      if ((v13 + 1) <= v10)
                      {
                        *(v5 + (v13 + 1)) = v15.tm_min;
                        if ((v13 + 1) != 255)
                        {
                          *a2 = v13 + 2;
                          return 0;
                        }

                        goto LABEL_23;
                      }

LABEL_24:
                      __break(0x5513u);
                      goto LABEL_25;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_23:
        __break(0x5507u);
        goto LABEL_24;
      }
    }
  }

LABEL_26:
  __break(0x5500u);
  return result;
}
void sub_19B6F3854(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6F3854(a1, *a2);
    sub_19B6F3854(a1, a2[1]);
    sub_19B65568C((a2 + 4));

    operator delete(a2);
  }
}

void sub_19B6F38B4(uint64_t a1, const char *a2)
{
  sub_19B6F38EC(a1, a2);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6F38EC(uint64_t a1, const char *a2)
{
  *a1 = &unk_1F0E32D08;
  v3 = (a1 + 8);
  objc_msgSend_forget_(*(a1 + 16), a2, *(a1 + 8));

  objc_msgSend_invalidate(*v3, v4, v5);
  *v3 = 0;
  *(a1 + 16) = 0;
  return a1;
}

BOOL sub_19B6F395C()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B6F39A4();
  v1 = qword_1EAFE3B20 != 0;
  objc_msgSend_showCalibrationAlert(qword_1EAFE3B20, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_19B6F39A4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE39E8)
  {
    return;
  }

  qword_1EAFE39E8 = dlopen("/System/Library/PrivateFrameworks/CompassUI.framework/CompassUI", 1);
  if (qword_1EAFE39E8)
  {
    qword_1EAFE3B20 = NSClassFromString(&cfstr_Cuicalibration.isa);
    if (!qword_1EAFE3B20)
    {
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
      }

      v0 = qword_1ED71C7E0;
      if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "Could not load CUICalibrationClass from CompassUI framework", buf, 2u);
      }

      v1 = sub_19B420058();
      if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D0 != -1)
        {
          dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
        }

        LOWORD(v6[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "Could not load CUICalibrationClass from CompassUI framework", v6, 2, v6[0]);
LABEL_25:
        v5 = v2;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLClientLoadCompassUIIfNecessary(void)", "CoreLocation: %s\n", v2);
        if (v5 != buf)
        {
          free(v5);
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
    }

    v3 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unable to load CompassUI framework", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E29CC0);
      }

      LOWORD(v6[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "Unable to load CompassUI framework", v6, 2, v6[0]);
      goto LABEL_25;
    }
  }
}

void sub_19B6F3C6C()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B6F39A4();
  objc_msgSend_dismissCalibrationAlert(qword_1EAFE3B20, v1, v2);

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B6F3CB4()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

BOOL sub_19B6F404C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 35)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 19083328;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 33);
    *(a2 + 33) = v6 | (v5 << 8);
    *a4 = 35;
  }

  return a3 > 34;
}

BOOL sub_19B6F40F8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 35)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 35 && v5[3] == 1)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      v6 = a4 + 33;
      *(a1 + 40) = *(v5 + 29);
      if (a4 < -32)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F41EC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 41)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 49);
    if (*(a1 + 50))
    {
      v7 |= 2u;
    }

    *a2 = 36253760;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 38) = v7;
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 39);
    *(a2 + 39) = v6 | (v5 << 8);
    *a4 = 41;
  }

  return a3 > 40;
}

BOOL sub_19B6F42C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 41)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 41 && v5[3] == 2)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = v5[37];
      v6 = v5[38];
      v7 = a4 + 39;
      *(a1 + 49) = v6 & 1;
      *(a1 + 50) = (v6 & 2) != 0;
      if (a4 < -38)
      {
        v12 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *v5++;
          v9 = (v9 + v11) % 0xFF;
          v8 = (v9 + v8) % 0xFF;
          --v10;
        }

        while (v10);
        v12 = v9 | (v8 << 8);
      }

      v14 = *(v7 + a2);
      *(a1 + 16) = v14;
      return v14 == v12;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F43D8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 19)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 101920832;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 17);
    *(a2 + 17) = v6 | (v5 << 8);
    *a4 = 19;
  }

  return a3 > 18;
}

BOOL sub_19B6F446C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 19)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 19 && v5[3] == 6)
    {
      *(a1 + 8) = *(v5 + 5);
      v6 = a4 + 17;
      *(a1 + 20) = *(v5 + 13);
      if (a4 < -16)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4548(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 40)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 203960384;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    *(a2 + 17) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 28);
    *(a2 + 25) = *(a1 + 32);
    *(a2 + 29) = *(a1 + 36);
    *(a2 + 33) = *(a1 + 40);
    *(a2 + 37) = *(a1 + 44);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 38);
    *(a2 + 38) = v6 | (v5 << 8);
    *a4 = 40;
  }

  return a3 > 39;
}

BOOL sub_19B6F460C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 40)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 40 && v5[3] == 12)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 20) = *(v5 + 13);
      *(a1 + 24) = *(v5 + 17);
      *(a1 + 28) = *(v5 + 21);
      *(a1 + 32) = *(v5 + 25);
      *(a1 + 36) = *(v5 + 29);
      *(a1 + 40) = *(v5 + 33);
      *(a1 + 44) = v5[37];
      v6 = a4 + 38;
      if (a4 < -37)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4718(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 20)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 303312960;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 20);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 18);
    *(a2 + 18) = v6 | (v5 << 8);
    *a4 = 20;
  }

  return a3 > 19;
}

BOOL sub_19B6F47AC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 20)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 20 && v5[3] == 18)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 20) = *(v5 + 13);
      v6 = a4 + 18;
      if (a4 < -17)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4888(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 35)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 52637760;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 33);
    *(a2 + 33) = v6 | (v5 << 8);
    *a4 = 35;
  }

  return a3 > 34;
}

BOOL sub_19B6F4934(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 35)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 35 && v5[3] == 3)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      v6 = a4 + 33;
      *(a1 + 40) = *(v5 + 29);
      if (a4 < -32)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4A28(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 72)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 71839808;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 41) = *(a1 + 52);
    *(a2 + 45) = *(a1 + 56);
    *(a2 + 49) = *(a1 + 60);
    *(a2 + 53) = *(a1 + 64);
    *(a2 + 57) = *(a1 + 68);
    *(a2 + 58) = *(a1 + 72);
    *(a2 + 62) = *(a1 + 76);
    *(a2 + 66) = *(a1 + 80);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 70);
    *(a2 + 70) = v6 | (v5 << 8);
    *a4 = 72;
  }

  return a3 > 71;
}

BOOL sub_19B6F4B24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 72)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 72 && v5[3] == 4)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = *(v5 + 37);
      *(a1 + 52) = *(v5 + 41);
      *(a1 + 56) = *(v5 + 45);
      *(a1 + 60) = *(v5 + 49);
      *(a1 + 64) = *(v5 + 53);
      *(a1 + 68) = v5[57];
      *(a1 + 72) = *(v5 + 58);
      *(a1 + 76) = *(v5 + 62);
      v6 = a4 + 70;
      *(a1 + 80) = *(v5 + 66);
      if (a4 < -69)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4C68(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 24)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 186134592;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 22);
    *(a2 + 22) = v6 | (v5 << 8);
    *a4 = 24;
  }

  return a3 > 23;
}

BOOL sub_19B6F4D04(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 24)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 24 && v5[3] == 11)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = v5[21];
      v6 = a4 + 22;
      if (a4 < -21)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F4DE8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 102)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 90583104;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    *(a2 + 29) = *(a1 + 40);
    *(a2 + 33) = *(a1 + 44);
    *(a2 + 37) = *(a1 + 48);
    *(a2 + 41) = *(a1 + 52);
    *(a2 + 45) = *(a1 + 56);
    *(a2 + 49) = *(a1 + 60);
    *(a2 + 53) = *(a1 + 64);
    *(a2 + 57) = *(a1 + 68);
    *(a2 + 61) = *(a1 + 72);
    *(a2 + 65) = *(a1 + 76);
    *(a2 + 69) = *(a1 + 80);
    *(a2 + 73) = *(a1 + 84);
    *(a2 + 74) = *(a1 + 88);
    *(a2 + 78) = *(a1 + 92);
    *(a2 + 82) = *(a1 + 96);
    *(a2 + 86) = *(a1 + 100);
    *(a2 + 90) = *(a1 + 104);
    *(a2 + 94) = *(a1 + 108);
    *(a2 + 98) = *(a1 + 112);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 100);
    *(a2 + 100) = v6 | (v5 << 8);
    *a4 = 102;
  }

  return a3 > 101;
}

BOOL sub_19B6F4F24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 102)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 102 && v5[3] == 5)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      *(a1 + 36) = *(v5 + 25);
      *(a1 + 40) = *(v5 + 29);
      *(a1 + 44) = *(v5 + 33);
      *(a1 + 48) = *(v5 + 37);
      *(a1 + 52) = *(v5 + 41);
      *(a1 + 56) = *(v5 + 45);
      *(a1 + 60) = *(v5 + 49);
      *(a1 + 64) = *(v5 + 53);
      *(a1 + 68) = *(v5 + 57);
      *(a1 + 72) = *(v5 + 61);
      *(a1 + 76) = *(v5 + 65);
      *(a1 + 80) = *(v5 + 69);
      *(a1 + 84) = v5[73];
      *(a1 + 88) = *(v5 + 74);
      *(a1 + 92) = *(v5 + 78);
      *(a1 + 96) = *(v5 + 82);
      *(a1 + 100) = *(v5 + 86);
      *(a1 + 104) = *(v5 + 90);
      *(a1 + 108) = *(v5 + 94);
      *(a1 + 112) = *(v5 + 49);
      v6 = a4 + 100;
      if (a4 < -99)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL sub_19B6F50A8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 31)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    *a2 = 270479424;
    *(a2 + 4) = 0;
    *(a2 + 5) = *(a1 + 8);
    *(a2 + 13) = *(a1 + 24);
    *(a2 + 21) = *(a1 + 32);
    *(a2 + 25) = *(a1 + 36);
    do
    {
      v6 = (v6 + *(a2 + v4)) % 0xFFu;
      v5 = (v6 + v5) % 0xFFu;
      ++v4;
    }

    while (v4 != 29);
    *(a2 + 29) = v6 | (v5 << 8);
    *a4 = 31;
  }

  return a3 > 30;
}

BOOL sub_19B6F514C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a3 - a4 >= 31)
  {
    v5 = (a2 + a4);
    if (*v5 == 64 && v5[1] <= 0x30u && v5[2] == 31 && v5[3] == 16)
    {
      *(a1 + 8) = *(v5 + 5);
      *(a1 + 24) = *(v5 + 13);
      *(a1 + 32) = *(v5 + 21);
      v6 = a4 + 29;
      *(a1 + 36) = *(v5 + 25);
      if (a4 < -28)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *v5++;
          v8 = (v8 + v10) % 0xFF;
          v7 = (v8 + v7) % 0xFF;
          --v9;
        }

        while (v9);
        v11 = v8 | (v7 << 8);
      }

      v13 = *(v6 + a2);
      *(a1 + 16) = v13;
      return v13 == v11;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

std::string *sub_19B6F5238(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Accelerometer,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F52D8(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Gyro,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 44), *(a1 + 48), *(a1 + 49), *(a1 + 50));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F5390(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroTemperature,temperature,%f", *(a1 + 8), *(a1 + 20));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F5418(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroBias,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,variance.x,%20.20f,variance.y,%20.20f,variance.z,%20.20f,doingBiasEstimation,%d", *(a1 + 8), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F54D0(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,GyroDt,dt,%20.20f", *(a1 + 8), *(a1 + 20));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F5558(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Magnetometer,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F55F8(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,Compass,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F56E8(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,CompassAlignment,compassJustAlignedToStableField,%d,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F5778(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,DeviceMotion,q.x,%20.20f,q.y,%20.20f,q.z,%20.20f,q.w,%20.20f,userAccel.x,%20.20f,userAccel.y,%20.20f,userAccel.z,%20.20f,rotationRate.x,%20.20f,rotationRate.y,%20.20f,rotationRate.z,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,magneticFieldCalibrationLevel,%d,heading,%.3f,trueheading,%.3f,accuracy,%.3f,variant,%d,mode,%d,clientID,%#02x,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,courseCorrection,%d,visualLocalizationCorrection,%d,initialized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,course,%d,gmm,%d,north,%d,visualLocalization,%d,timestamp,%20.20f", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 84), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), (v3 >> 4) & 1, (v3 >> 3) & 1, (v3 >> 2) & 1, (v3 >> 5) & 1, (v3 >> 6) & 1, (v3 >> 8) & 1, (v3 >> 1) & 1, v3 & 1, (v3 >> 10) & 1, (v3 >> 9) & 1, (v3 >> 11) & 1, (v3 >> 12) & 1, (v3 >> 13) & 1, (v3 >> 14) & 1, *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

std::string *sub_19B6F58F4(uint64_t a1, std::string *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "STATUS,SENSOR,Time,%.3lf,Type,PressureFiltered,pressure,%20.20f,temperature,%20.20f,timestamp,%20.20lf", *(a1 + 8), *(a1 + 32), *(a1 + 36), *(a1 + 24));
  return sub_19B43212C(a2, __str);
}

void sub_19B6F5BB4(_Unwind_Exception *a1)
{
  v5 = *(v3 + 904);
  *(v3 + 904) = 0;
  if (v5)
  {
    *(v5 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v6 = *(v1 + 37760);
  *(v1 + 37760) = 0;
  if (v6)
  {
    *(v6 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((v1 + 37744), 0);
  v7 = *(v1 + v2);
  *(v1 + v2) = 0;
  if (v7)
  {
    v8 = *(v7 + 96);
    if (v8)
    {
      *(v8 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  sub_19B69ACA4((v1 + 27784));
  sub_19B69AD20(v1 + 24);
  _Unwind_Resume(a1);
}

void sub_19B6F5C84(uint64_t a1, unsigned int a2)
{
  sub_19B68F590(a1, a2);
  if (!*(a1 + 37736) || (*(a1 + 17) & 1) == 0)
  {

    sub_19B6F5E40(a1);
  }
}

uint64_t sub_19B6F5CE0(uint64_t a1)
{
  v2 = (a1 + 36864);
  v3 = *(a1 + 37736);
  v2[109] = 0;
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v4 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  v5 = v2[112];
  v2[112] = 0;
  if (v5)
  {
    *(v5 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v6 = v2[113];
  v2[113] = 0;
  if (v6)
  {
    *(v6 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((a1 + 37744), 0);
  v7 = v2[113];
  v2[113] = 0;
  if (v7)
  {
    *(v7 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  v8 = v2[112];
  v2[112] = 0;
  if (v8)
  {
    *(v8 + 7576) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  sub_19B6F68C8((a1 + 37744), 0);
  v9 = v2[109];
  v2[109] = 0;
  if (v9)
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      *(v10 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  sub_19B69ACA4((a1 + 27784));
  sub_19B69AD20(a1 + 24);
  return a1;
}

void sub_19B6F5E40(uint64_t a1)
{
  v2 = (a1 + 36864);
  v3 = *(a1 + 37736);
  v2[109] = 0;
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v4 + 10912) = 0u;
    }

    MEMORY[0x19EAE76F0]();
  }

  if (*(a1 + 16) == 1)
  {
    v5 = v2[112];
    v2[112] = 0;
    if (v5)
    {
      *(v5 + 7576) = 0u;
      MEMORY[0x19EAE76F0]();
    }

    sub_19B6F68C8((a1 + 37744), 0);
    operator new();
  }

  v6 = v2[113];
  v2[113] = 0;
  if (v6)
  {
    *(v6 + 5928) = 0u;
    MEMORY[0x19EAE76F0]();
  }

  operator new();
}

void sub_19B6F64B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3 + 36864;
  if (*(a3 + 37760))
  {
    v5 = a1;
    sub_19B711744(*(a3 + 37736), *(a3 + 37752), *(a3 + 37753), a1, a2);
    if (*(v3 + 888) == 1)
    {
      v6 = *(v3 + 880);

      sub_19B664EF4(v6, v5, a2);
    }
  }
}

void sub_19B6F653C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 37736;
  v7 = (a1 + 16082);
  if (sub_19B691794(a1, a3))
  {
    sub_19B710758(*v6, a3);
  }

  if (*v7 == 1)
  {
    if (*(*v6 + 112) == 2)
    {
      v8 = 2500000;
    }

    else
    {
      v8 = 5000000;
    }
  }

  else
  {
    v8 = 7500000;
  }

  if (sub_19B691AC8(a1, a2, a3, v8))
  {
    if (*v7 == 1)
    {
      sub_19B71095C(*v6, a3);
    }

    else if (*(v6 + 16) == 1)
    {
      v9 = *(v6 + 8);
      if (v9)
      {
        sub_19B66510C(v9, a3);
      }
    }
  }

  if (v7[4] == 1 && *v7 == 1)
  {
    v10 = *v6;

    sub_19B710B60(v10, a3);
  }
}

void sub_19B6F6664(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29CE0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240704;
    v19 = a2;
    v20 = 1026;
    v21 = a3;
    v22 = 2050;
    v23 = a4;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[HeadTrackingService] JBLMs, %{public}d, limitMs, %{public}d, timestampUs, %{public}llu", buf, 0x18u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29CE0);
    }

    v13[0] = 67240704;
    v13[1] = a2;
    v14 = 1026;
    v15 = a3;
    v16 = 2050;
    v17 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[HeadTrackingService] JBLMs, %{public}d, limitMs, %{public}d, timestampUs, %{public}llu", v13, 24);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingService::feedJBLChangedEventAndThreshold(uint16_t, uint16_t, uint64_t)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (*(a1 + 16))
  {
    v12 = *(a1 + 37736);
    if (v12)
    {
      sub_19B710D64(v12, a2 > a3, a4);
    }
  }
}

os_log_t sub_19B6F6898()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t *sub_19B6F68C8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 0;
    *(v2 + 10912) = 0u;
    while (1)
    {
      v4 = *(v2 + v3 + 10904);
      *(v2 + v3 + 10904) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == -24)
      {

        JUMPOUT(0x19EAE76F0);
      }
    }
  }

  return result;
}

uint64_t sub_19B6F69DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0E2B0A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_19B6F6A10(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E345D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B6F6B88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6F6BB8(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFitnessMachineInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B6F6DE0(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMFitnessMachine client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      v10 = qword_1EAFE2830;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "CMFitnessMachine client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFitnessMachineInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B6F716C(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = @"CMFitnessMachineDataRecord";
  v4[0] = v2;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B6F3270();
}

void sub_19B6F7250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F727C(uint64_t a1, CLConnectionMessage **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage"))
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      v11 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMErrorMessage");
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Error feeding fitness machine data, %@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
        }

        v15 = qword_1EAFE2830;
        LODWORD(v21) = 138412290;
        *(&v21 + 4) = objc_msgSend_objectForKeyedSubscript_(v10, v14, @"CMErrorMessage");
        LODWORD(v20) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 16, "Error feeding fitness machine data, %@", &v21, v20, v21);
LABEL_24:
        v19 = v16;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFitnessMachineInternal _feedFitnessMachineData:]_block_invoke", "CoreLocation: %s\n", v16);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
    }

    v17 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Error feeding fitness machine data", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B0A8);
      }

      LOWORD(v21) = 0;
      LODWORD(v20) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 16, "Error feeding fitness machine data", &v21, v20, v21);
      goto LABEL_24;
    }
  }
}

int64_t sub_19B6F776C(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D570 = result;
  return result;
}

os_log_t sub_19B6F77A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void sub_19B6F7A90(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_delegate(*(a1 + 32), a2, a3);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_delegateQueue(v3, v6, v7);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6F7B40;
      block[3] = &unk_1E7535040;
      block[4] = v3;
      block[5] = a2;
      block[6] = a3;
      dispatch_async(v8, block);
    }
  }
}

uint64_t sub_19B6F7B40(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel_eventUpdateForDevice_event_, v5);
}

void sub_19B6F7CFC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    *(a4 + 8) = *(a3 + 40) * 0.0174532924;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v5 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
    {
      v6 = *(a4 + 8) * 57.2957802;
      *buf = 134217984;
      v14 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Received geomagnetic model, declination [deg],%f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v8 = *(a4 + 8) * 57.2957802;
      v11 = 134217984;
      v12 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 1, "Received geomagnetic model, declination [deg],%f", COERCE_DOUBLE(&v11));
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLInertialOdometryNotifier::GeomagneticModelClient::onGeomagneticModelNotification(int, const CLGeomagneticModelProvider_Type::Notification &, const CLGeomagneticModelProvider_Type::NotificationData &, void *)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

uint64_t sub_19B6F7F00()
{
  if (qword_1ED71D588 != -1)
  {
    dispatch_once(&qword_1ED71D588, &unk_1F0E29D40);
  }

  return qword_1ED71D580;
}

BOOL sub_19B6F7F48()
{
  v7 = *MEMORY[0x1E69E9840];
  result = +[CMOdometryManager isAvailable]_0();
  if (result)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v1 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "Creating InertialOdometry notifier", buf, 2u);
    }

    v2 = sub_19B420058();
    if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v5[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Creating InertialOdometry notifier", v5, 2);
      v4 = v3;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static CLInertialOdometryNotifier *CLInertialOdometryNotifier::instance()_block_invoke", "CoreLocation: %s\n", v3);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    operator new();
  }

  return result;
}

void sub_19B6F8254(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v21, 0xB0C40BC2CC919, a3, a4, a5, a6, a7, a8);
  sub_19B42C54C(v20, 0);
  v24 = *v22;
  *v22 = 0;
  if (v24)
  {
    sub_19B6F94A0(v24);
  }

  v18[4] = &unk_1F0E3B758;
  v25 = v18[6];
  if (v25)
  {
    sub_19B41FFEC(v25);
  }

  sub_19B674784(v18);
  MEMORY[0x19EAE76F0](v18, v19);
  _Unwind_Resume(a1);
}

void sub_19B6F8310(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v7 = qword_1EAFE2A90;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLInertialOdometryNotifier::CLInertialOdometryNotifier()_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void *sub_19B6F8508(uint64_t a1)
{
  *a1 = &unk_1F0E3B0D8;
  *(a1 + 32) = &unk_1F0E3B128;
  dispatch_release(*(a1 + 88));
  *(a1 + 88) = 0;
  sub_19B42C54C((a1 + 80), 0);
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    sub_19B6F94A0(v2);
  }

  *(a1 + 32) = &unk_1F0E3B758;
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B674784(a1);
}

void sub_19B6F85D4(uint64_t a1)
{
  sub_19B6F8508(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F860C(uint64_t a1)
{
  sub_19B6F8508(a1 - 32);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F8648(uint64_t *a1, int a2, double *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v3 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", &buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      LOWORD(v32) = 0;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 17, "Unrecognized notification", &v32, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLInertialOdometryNotifier::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v5);
      if (v6 != &buf)
      {
        free(v6);
      }
    }
  }

  else if (sub_19B77C96C((a1 + 4)))
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v9 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Minimum inertial odometry update interval changed to %{public}f", &buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v12 = *a3;
      v32 = 134349056;
      v33 = v12;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Minimum inertial odometry update interval changed to %{public}f", &v32, 12);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLInertialOdometryNotifier::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
      if (v14 != &buf)
      {
        free(v14);
      }
    }

    v15 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_19B4238F4(a1[5], v16);
    v17 = *a3;
    v18 = a1[11];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v35 = sub_19B6F9330;
    v36 = &unk_1E7535180;
    v37 = a1;
    v38 = v17;
    dispatch_async(v18, &buf);
    v19 = *a3;
    v20 = a1[9];
    sub_19B421798();
    if (v19 <= 0.0)
    {
      *(v20 + 8) = 0;
      if (*(v20 + 16))
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
        }

        v26 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "Unregistering for geomagnetic model updates", &buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
          }

          LOWORD(v32) = 0;
          LODWORD(v31) = 2;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 1, "Unregistering for geomagnetic model updates", &v32, v31);
          v30 = v29;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLInertialOdometryNotifier::GeomagneticModelClient::unregisterForGeomagneticModelNotification()", "CoreLocation: %s\n", v29);
          if (v30 != &buf)
          {
            free(v30);
          }
        }

        objc_msgSend_unregister_forNotification_(*(*(v20 + 16) + 16), v28, *(*(v20 + 16) + 8), 0);
      }
    }

    else
    {
      if (!*(v20 + 16))
      {
        sub_19B43DA50();
      }

      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
      }

      v21 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "Registering for geomagnetic model updates", &buf, 2u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
        }

        LOWORD(v32) = 0;
        LODWORD(v31) = 2;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 1, "Registering for geomagnetic model updates", &v32, v31);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLInertialOdometryNotifier::GeomagneticModelClient::registerForGeomagneticModelNotification()", "CoreLocation: %s\n", v24);
        if (v25 != &buf)
        {
          free(v25);
        }
      }

      objc_msgSend_register_forNotification_registrationInfo_(*(*(v20 + 16) + 16), v23, *(*(v20 + 16) + 8), 0, 0);
    }
  }
}

void sub_19B6F8D40(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v11 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v6 = *(a2 + 1);
    v9[0] = 67240192;
    v9[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "pong,%{public}u", v9, 8);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLInertialOdometryNotifier::visitPong(const CMInertialOdometryReport::Pong *)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B6F8F10(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
  }

  v4 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 56);
    v7 = mach_absolute_time();
    v8 = sub_19B41E070(v7);
    v9 = *(a2 + 9);
    v10 = *(a2 + 13);
    v11 = *(a2 + 17);
    v12 = *(a2 + 21);
    v13 = *(a2 + 25);
    v14 = *(a2 + 29);
    v15 = *(a2 + 33);
    v16 = *(a2 + 41);
    v17 = *(a2 + 49);
    v18 = *(a2 + 57);
    v19 = *(a2 + 65);
    v20 = *(a2 + 73);
    v21 = *(a2 + 101);
    *buf = 134352896;
    *&buf[4] = v5;
    *&buf[12] = 2050;
    *&buf[14] = v6;
    *&buf[22] = 2050;
    *&buf[24] = v8;
    *v78 = 2050;
    *&v78[2] = v9;
    *&v78[10] = 2050;
    *&v78[12] = v10;
    *&v78[20] = 2050;
    *&v78[22] = v11;
    *&v78[30] = 2050;
    *&v78[32] = v12;
    *v79 = 2050;
    *&v79[2] = v13;
    *&v79[10] = 2050;
    *&v79[12] = v14;
    *&v79[20] = 2050;
    *&v79[22] = v15;
    *&v79[30] = 2050;
    v80 = v16;
    v81 = 2050;
    v82 = v17;
    v83 = 2050;
    v84 = v18;
    v85 = 2050;
    v86 = v19;
    v87 = 2050;
    v88 = v20;
    v89 = 1026;
    v90 = v21;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,aopTimestamp,%{public}llu,reportTimestamp,%{public}f,machTimeNow,%{public}f,posX,%{public}f,posY,%{public}f,posZ,%{public}f,dvCumsumX,%{public}f,dvCumsumY,%{public}f,dvCumsumZ,%{public}f,tsPosRollover,%{public}llu,tsVelRollover,%{public}llu,tsDeltaPosXUnavailable,%{public}llu,tsDeltaPosYUnavailable,%{public}llu,tsDeltaPosZUnavailable,%{public}llu,tsDMReinit,%{public}llu,displacingState,%{public}u", buf, 0x9Eu);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28680);
    }

    v23 = qword_1EAFE2A90;
    v24 = *(a2 + 1);
    v25 = *(a1 + 56);
    v26 = mach_absolute_time();
    v27 = sub_19B41E070(v26);
    v28 = *(a2 + 9);
    v29 = *(a2 + 13);
    v30 = *(a2 + 17);
    v31 = *(a2 + 21);
    v32 = *(a2 + 25);
    v33 = *(a2 + 29);
    v34 = *(a2 + 33);
    v35 = *(a2 + 41);
    v36 = *(a2 + 49);
    v37 = *(a2 + 57);
    v38 = *(a2 + 65);
    v39 = *(a2 + 73);
    v40 = *(a2 + 101);
    v45 = 134352896;
    v46 = v24;
    v47 = 2050;
    v48 = v25;
    v49 = 2050;
    v50 = v27;
    v51 = 2050;
    v52 = v28;
    v53 = 2050;
    v54 = v29;
    v55 = 2050;
    v56 = v30;
    v57 = 2050;
    v58 = v31;
    v59 = 2050;
    v60 = v32;
    v61 = 2050;
    v62 = v33;
    v63 = 2050;
    v64 = v34;
    v65 = 2050;
    v66 = v35;
    v67 = 2050;
    v68 = v36;
    v69 = 2050;
    v70 = v37;
    v71 = 2050;
    v72 = v38;
    v73 = 2050;
    v74 = v39;
    v75 = 1026;
    v76 = v40;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v23, 2, "Report,aopTimestamp,%{public}llu,reportTimestamp,%{public}f,machTimeNow,%{public}f,posX,%{public}f,posY,%{public}f,posZ,%{public}f,dvCumsumX,%{public}f,dvCumsumY,%{public}f,dvCumsumZ,%{public}f,tsPosRollover,%{public}llu,tsVelRollover,%{public}llu,tsDeltaPosXUnavailable,%{public}llu,tsDeltaPosYUnavailable,%{public}llu,tsDeltaPosZUnavailable,%{public}llu,tsDMReinit,%{public}llu,displacingState,%{public}u", &v45, 158);
    v42 = v41;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLInertialOdometryNotifier::visitInertialOdometry(const CMInertialOdometryReport::InertialOdometry *)", "CoreLocation: %s\n", v41);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  *buf = *(a1 + 56);
  *&buf[8] = *(a2 + 1);
  *&buf[16] = *(a2 + 9);
  *v78 = *(a2 + 25);
  *&v78[8] = *(a2 + 33);
  *&v78[24] = *(a2 + 49);
  *v79 = *(a2 + 65);
  *&v79[16] = *(a2 + 81);
  v43 = *(a2 + 97) - *(*(a1 + 72) + 8);
  *&v80 = v43;
  BYTE4(v80) = *(a2 + 101);
  return sub_19B41DF08(a1, 0, buf, 112);
}

void sub_19B6F9330(uint64_t a1, const char *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"CMInertialOdometryUpdateInterval";
  v10[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(a1 + 40));
  v9[1] = @"CMPedestrianFenceClientIdentifier";
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v3, v4);
  v10[1] = objc_msgSend_processName(v5, v6, v7);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v10, v9, 2);
  sub_19B6F9514();
}

void sub_19B6F9444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6F9470()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B6F94A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B6F9588(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6F95E4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6F95E4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6F963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B6F96F4(void *a1)
{
  *a1 = &unk_1F0E32308;
  sub_19B6F97B0(a1, 0, 0);
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    MEMORY[0x19EAE76F0](v2, 0x1000C401A3E59F5);
  }

  return sub_19B674784(a1);
}

void sub_19B6F9778(void *a1)
{
  sub_19B6F96F4(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F97B0(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v5 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v28 = a3;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "CMCallHandednessService Spectators, %zd", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v25 = 134217984;
      v26 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "CMCallHandednessService Spectators, %zd", &v25);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    if (a3 == 1)
    {
      if (sub_19B4249E4())
      {
        *(a1 + 48) = 0;
        operator new();
      }

      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v18 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "#Warning No accelerometer; not starting CMCallHandedness detection!", buf, 2u);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
        }

        LOWORD(v25) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 0, "#Warning No accelerometer; not starting CMCallHandedness detection!", &v25, 2);
        v21 = v20;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessService::startDetection()", "CoreLocation: %s\n", v20);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v22 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v28 = 1;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "CMCallHandednessService started, %zd", buf, 0xCu);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
        }

        v25 = 134217984;
        v26 = 1;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "CMCallHandednessService started, %zd", &v25);
        v14 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v24);
        goto LABEL_66;
      }
    }

    else if (a3)
    {
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v15 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "CMCallHandednessService expects only 1 client", buf, 2u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
        }

        LOWORD(v25) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 16, "CMCallHandednessService expects only 1 client", &v25, 2);
        v14 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v17);
        goto LABEL_66;
      }
    }

    else
    {
      if (*(a1 + 40))
      {
        v9 = sub_19B4249E4();
        sub_19B426A14(v9, 0, *(a1 + 40));
        v10 = *(a1 + 40);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        *(a1 + 40) = 0;
      }

      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v11 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v28 = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "CMCallHandednessService stopped, %zd", buf, 0xCu);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
        }

        v25 = 134217984;
        v26 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "CMCallHandednessService stopped, %zd", &v25);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMCallHandednessService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v13);
LABEL_66:
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }
}

uint64_t sub_19B6FA184(float32x2_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[2].i32[0];
  v5 = *a1;
  v14 = a1[1];
  v15 = v4;
  result = sub_19B72A4D4(*(a2 + 32), &v14, v5);
  if (result)
  {
    v7 = result == *(a2 + 48);
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
    }

    v9 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "Sending CMCallHandedness notification.", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E28B40);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Sending CMCallHandedness notification.", v13, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CMCallHandednessService::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *buf = v8;
    v17 = *a1;
    result = sub_19B4455DC(a2, 0, buf, 16);
    *(a2 + 48) = v8;
  }

  return result;
}

os_log_t sub_19B6FA398()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

CLLocationInternalClient_CoreMotion *sub_19B6FA3C8()
{
  result = objc_alloc_init(CLLocationInternalClient_CoreMotion);
  qword_1ED71D598 = result;
  return result;
}

void sub_19B6FA3F0()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_ERROR, "#Spi, Interrupted", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi, Interrupted", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion connection]_block_invoke", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

uint64_t sub_19B6FA58C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v2 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi, Invalidated", buf, 2u);
  }

  v3 = sub_19B420058();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi, Invalidated", v8, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion connection]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);

  *(*(a1 + 32) + 8) = 0;
  return objc_sync_exit(v6);
}

void sub_19B6FA778(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with synchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v7 = 138412290;
    v8 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi, Error with synchronous proxy, error: %@", &v7, 12);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion synchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B6FA990(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with asynchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v7 = 138412290;
    v8 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi, Error with asynchronous proxy, error: %@", &v7, 12);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion asynchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B6FAC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FAD34(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FAE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FAFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FB1A4(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B6FB37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FB3A4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_19B6FB4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB4C8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B6FB5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB5D0(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B6FB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB6B4(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B6FB7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB7C0(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 40) = a3;
      return *(*(result[4] + 8) + 40);
    }
  }

  return result;
}

void sub_19B6FB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB8A8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B6FB978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FB990(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B6FBBE0(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, Couldn't set location default!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, Couldn't set location default!", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setLocationDefaultForKey:value:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6FBE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FBEA8(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v6 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Spi, getLocationDefaultForKey, , error:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void *sub_19B6FC14C(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      v4 = result;
      v5 = objc_alloc(MEMORY[0x1E695DFE8]);
      result = objc_msgSend_initWithName_(v5, v6, a3);
      *(*(v4[4] + 8) + 40) = result;
    }
  }

  return result;
}

void sub_19B6FC1E0(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, setPrivateMode failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, setPrivateMode failed", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setPrivateMode:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6FC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FC440(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B6FC500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FC598(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetLocationServicesEnabled failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, CLInternalSetLocationServicesEnabled failed", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setLocationServicesEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6FC7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FC800(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3 == 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FC90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FC924(void *result, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setAuthorizationPromptMapDisplayEnabled:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B6FCB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FCBAC(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FCD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FCD48(void *result, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v5 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLSetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }

    result = objc_msgSend_copy(a2, v6, v7);
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B6FCFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FCFFC(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v7 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLGetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = a2;
    }
  }

  result = objc_msgSend_copy(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B6FD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FD2B0(uint64_t a1, uint64_t a2, double a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v7 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalChangeClientAuthorizationTime failed", "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

void sub_19B6FD52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FD544(void *result, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v6, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v5 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalTriggerExpiredAuthorizationPurge failed", "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v6, 0x1Cu);
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B6FD730(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetGestureServiceEnabled failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, CLInternalSetGestureServiceEnabled failed", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setGestureServiceEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6FD980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FD998(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_19B6FDA98(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FDB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6FDB98(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FDE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

_BYTE **sub_19B6FDE74(_BYTE **result, void *a2, char a3)
{
  v3 = result;
  if (a2)
  {
    result = a2;
    *(*(v3[5] + 1) + 40) = result;
  }

  else
  {
    *result[6] = a3;
    *(*(result[4] + 1) + 24) = 1;
  }

  return result;
}

void sub_19B6FE0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6FE908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FE920(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B6FEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FEB0C(void *a1, void *a2, char a3)
{
  result = a2;
  *(*(a1[4] + 8) + 40) = result;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_19B6FECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FED00(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FEEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FEECC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B6FF088(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B6FF234(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B6FF36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6FF384(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, result[5], 156);
    *(*(v3[4] + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FF4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B6FF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = *(a1 + 40);
    result = *a3;
    v5 = *(a3 + 16);
    *v3 = *a3;
    v3[1] = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B6FF8B8(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi,RouteHintError,Couldn't set map-matching route hint!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi,RouteHintError,Couldn't set map-matching route hint!", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setMapMatchingRouteHint:count:routingType:stepType:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6FFC3C(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v2 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setTrackRunHint:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B700030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70004C(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "#Spi,getAccessoryTypeBitSet,failed", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryTypeBitSet]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    a3 = -1;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

void sub_19B700468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B700484(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "#Spi,getAccessoryPASCDTransmissionState,failed", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryPASCDTransmissionState]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    a3 = 4;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

void sub_19B7008D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7008FC(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v3 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "#Spi,getOdometryBatchedLocations,returned with error", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      LOWORD(v18) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "#Spi,getOdometryBatchedLocations,returned with error", &v18, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v9 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v21 = objc_msgSend_count(a3, v10, v11);
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v15 = qword_1ED71C7E0;
      v18 = 134349056;
      v19 = objc_msgSend_count(a3, v13, v14);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 2, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", &v18, 12);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    *(*(*(a1 + 32) + 8) + 40) = a3;
  }
}

void sub_19B700E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7010C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7011B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7011C8(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 48);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v8, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v6 = qword_1ED71C7E0;
    if (os_signpost_enabled(qword_1ED71C7E0))
    {
      v7 = *(a1 + 48);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v7;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Getting status bar enabled for entity class failed", "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v8, 0x1Cu);
    }
  }

  else
  {
    **(a1 + 40) = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_19B701420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701438(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B701558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B701574(uint64_t a1, const char *a2, void *a3)
{
  if (a2)
  {
    a3 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, a3);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B701674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B70168C(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, result[5], 320);
    *(*(v3[4] + 8) + 24) = 1;
  }

  return result;
}

void sub_19B7017C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7018F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7019D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B701AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701AC4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B701BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B701F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B701F54(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

uint64_t sub_19B701F90(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

void sub_19B702094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B7020AC(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 48);
  **(result + 40) = a3;
  *v4 = a4;
  *(*(*(result + 32) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B702178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B70228C(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B702398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B7023B0(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B7024C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B7024E0(void *result, void *a2, int a3, int a4)
{
  v6 = result;
  if (a2)
  {
    result = a2;
    *(*(v6[4] + 8) + 40) = result;
  }

  v7 = v6[5];
  if (v7)
  {
    *v7 = a3;
  }

  v8 = v6[6];
  if (v8)
  {
    *v8 = a4;
  }

  return result;
}

void sub_19B7025E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B7026EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702704(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B702828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702840(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B702980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B70299C(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B702AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B702AE4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B702C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B702FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B702FD8(uint64_t result, double a2, double a3, uint64_t a4, char a5)
{
  *(*(*(result + 32) + 8) + 24) = a5;
  v5 = *(result + 40);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_19B703178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B703190(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 24) = a3;
    return CFRetain(*(*(result[4] + 8) + 24));
  }

  return result;
}

void sub_19B7032A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70383C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703854(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B70394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v4 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "#Spi, TimeSyncWithReplyBlock failed", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 17, "#Spi, TimeSyncWithReplyBlock failed", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion timeSyncMachTimeStamp:oscarTimeStamp:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    **(a1 + 40) = a3;
    **(a1 + 48) = a4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_19B703BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B703DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703DE4(uint64_t result, uint64_t a2, double a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703EEC(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B703FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B703FF4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t CLCopyAppsUsingLocation()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyAppsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyAppsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyAppsUsingLocation(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLCopyActiveClientsUsingLocation()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyActiveClientsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActiveClientsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  active = objc_msgSend_copyActiveClientsUsingLocation(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return active;
}

uint64_t CLCopyInternalState()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyInternalState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyInternalState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyInternalState(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

void CLSetLocationDefault(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLSetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = a1;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  objc_msgSend_setLocationDefaultForKey_value_(v8, v9, a1, a2);
  os_activity_scope_leave(&v10);
}

uint64_t CLCopyZaxisStats()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyZaxisStats", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyZaxisStats, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyZaxisStats(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLCopyTechnologiesInUse()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyTechnologiesInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyTechnologiesInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyTechnologiesInUse(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

id CLCopyGnssBandsInUse()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyGnssBandsInUse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyGnssBandsInUse, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyGnssBandsInUse(v4, v5, v6);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = 0;
      v11 = Count & 0x7FFFFFFF;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v14 = valuePtr & 0xF00;
        v15 = (v14 - 256) >> 8;
        v16 = v15 > 7;
        v17 = (1 << v15) & 0x8B;
        if (v16 || v17 == 0)
        {
          if ((valuePtr & 0xF00) != 0)
          {
            if (qword_1ED71C7D0 != -1)
            {
              dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
            }

            v22 = qword_1ED71C7E0;
            if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67240192;
              *&buf[4] = v14;
              _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Invalid bandUse,%{public}d", buf, 8u);
            }

            v23 = sub_19B420058();
            if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7D0 != -1)
              {
                dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
              }

              v30[0] = 67240192;
              v30[1] = v14;
              LODWORD(v27) = 8;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 16, "Invalid bandUse,%{public}d", v30, v27);
              v25 = v24;
              sub_19B6BB7CC("Generic", 1, 0, 0, "CFArrayRef CLCopyGnssBandsInUse(void)", "CoreLocation: %s\n", v24);
              if (v25 != buf)
              {
                free(v25);
              }
            }
          }

          goto LABEL_21;
        }

        memset(buf, 0, 32);
        *&buf[24] = valuePtr & 0xF00;
        switch(valuePtr)
        {
          case 4u:
            *buf = 4;
            v19 = xmmword_19B7BCCA0;
            break;
          case 2u:
            *buf = 2;
            v19 = xmmword_19B7BCC90;
            break;
          case 1u:
            *buf = 1;
            v19 = xmmword_19B7BCCB0;
            break;
          default:
            memset(&buf[8], 0, 20);
            goto LABEL_20;
        }

        *&buf[8] = v19;
LABEL_20:
        v20 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v13, buf, "{CLGnssBandInfo=iddi}");
        objc_msgSend_addObject_(v8, v21, v20);
LABEL_21:
        ++v10;
      }

      while (v11 != v10);
    }

    CFRelease(v7);
  }

  os_activity_scope_leave(&state);
  return v8;
}

uint64_t CLGetLocationDefault(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  LocationDefaultForKey = objc_msgSend_getLocationDefaultForKey_(v6, v7, a1);
  os_activity_scope_leave(&v10);
  return LocationDefaultForKey;
}

uint64_t sub_19B704E68()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyActivityAlarms", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActivityAlarms, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyActivityAlarms(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLGetPipelinedCache()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetPipelinedCaches", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetPipelinedCaches, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  PipelinedCache = objc_msgSend_getPipelinedCache(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return PipelinedCache;
}

uint64_t CLGetMotionSensorLogs()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  MotionSensorLogs = objc_msgSend_getMotionSensorLogs(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return MotionSensorLogs;
}

uint64_t CLGetAccessoryMotionSensorLogs()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetAccessoryMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetAccessoryMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  AccessoryMotionSensorLogs = objc_msgSend_getAccessoryMotionSensorLogs(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return AccessoryMotionSensorLogs;
}

uint64_t CLApplyArchivedAuthorizationDecisions(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLApplyArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLApplyArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  v8 = objc_msgSend_applyArchivedAuthorizationDecisions_(v6, v7, a1);
  os_activity_scope_leave(&v10);
  return v8;
}

uint64_t CLGetArchivedAuthorizationDecisions(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGetArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  ArchivedAuthorizationDecisionsWithError = objc_msgSend_getArchivedAuthorizationDecisionsWithError_(v6, v7, a1);
  os_activity_scope_leave(&v10);
  return ArchivedAuthorizationDecisionsWithError;
}

uint64_t CLStartStopAdvertisingBeacon(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLStartStopAdvertisingBeacon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2113;
    v20 = a1;
    v21 = 2114;
    v22 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLStartStopAdvertisingBeacon, event:%{public, location:escape_only}s, region:%{private, location:escape_only}@, power:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  started = objc_msgSend_startStopAdvertisingBeacon_power_(v8, v9, a1, a2);
  os_activity_scope_leave(&v12);
  return started;
}

uint64_t CLPingDaemon()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLPingDaemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPingDaemon, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_pingDaemon(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

void CLPassKitNotifyPayment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLPassKitNotifyPassUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPassKitNotifyPassUsage, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  objc_msgSend_notifyPassKitPayment_transaction_info_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v12);
}

void CLWeatherNotifyForecast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B41C000, "CL: CLWeatherNotifyForecastUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    v54 = 2082;
    v55 = "";
    v56 = 2082;
    v57 = "activity";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLWeatherNotifyForecastUsage, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  v9 = MEMORY[0x1E695DEC8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v17 = objc_msgSend_arrayWithObjects_(v9, v16, v10, v11, v12, v13, v14, v15, 0);
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v20 = objc_msgSend_initWithDictionary_copyItems_(v18, v19, a1, 1);
  v39 = a5;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v21, &v46, v52, 16);
  if (v24)
  {
    obj = a1;
    v41 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v42, v51, 16);
        if (!v27)
        {
          goto LABEL_18;
        }

        v28 = 0;
        v29 = *v43;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(v17);
            }

            objc_msgSend_objectForKeyedSubscript_(v20, v22, v26);
            v28 |= objc_opt_isKindOfClass();
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v42, v51, 16);
        }

        while (v27);
        if ((v28 & 1) == 0)
        {
LABEL_18:
          objc_msgSend_removeObjectForKey_(v20, v22, v26);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v46, v52, 16);
    }

    while (v24);
  }

  v31 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v22, v23);
  objc_msgSend_coordinate(v39, v32, v33);
  v35 = v34;
  objc_msgSend_coordinate(v39, v36, v37);
  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v31, v38, v20, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v35);

  os_activity_scope_leave(&state);
}

uint64_t CLGetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLGetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v6, &v14);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  TemporaryAuthorizationStatusForBundleId_orBundlePath_error = objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_error_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v14);
  return TemporaryAuthorizationStatusForBundleId_orBundlePath_error;
}

uint64_t CLSetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLSetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v6, &v14);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v8, v9);
  v12 = objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_(v10, v11, a1, a2, a3);
  os_activity_scope_leave(&v14);
  return v12;
}

uint64_t sub_19B706118(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_setGestureServiceEnabled_, a1);
}

uint64_t sub_19B706158(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGestureServiceEnabled_, a1);
}

uint64_t CLInternalPerformMigration()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLInternalPerformMigration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalPerformMigration, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_performMigration(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLGetStatusBarIconState()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLGetStatusBarIconState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetStatusBarIconState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  StatusBarIconState = objc_msgSend_getStatusBarIconState(v4, v5, v6);
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = StatusBarIconState;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "CLStatusBarIconState received an icon stateu of %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v14[0] = 67109120;
    v14[1] = StatusBarIconState;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 0, "CLStatusBarIconState received an icon stateu of %d", v14);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLStatusBarIconState CLGetStatusBarIconState()", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  os_activity_scope_leave(&state);
  return StatusBarIconState;
}

void CLSetMapMatchingRouteHint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B41C000, "CL: CLSetMapMatchingRouteHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v9 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    v27 = 2082;
    v28 = "activity";
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetMapMatchingRouteHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v10 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v26 = a4;
    *&v26[8] = 1024;
    *&v26[10] = a1;
    v27 = 1024;
    LODWORD(v28) = a2;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d,stepType,%d", buf, 0x18u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v19 = 134218496;
    v20 = a4;
    v21 = 1024;
    v22 = a1;
    v23 = 1024;
    v24 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d,stepType,%d", &v19, 24, LODWORD(state.opaque[0]));
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetMapMatchingRouteHint(CLClientLocationRouteHintType, CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v12, v13);
  objc_msgSend_setMapMatchingRouteHint_count_routingType_stepType_(v16, v17, a3, a4, a1, a2);
  os_activity_scope_leave(&state);
}

void CLSetRouteHintsForMapMatching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B41C000, "CL: CLSetRouteHintsForMapMatching", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v7 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v22 = 0;
    *&v22[4] = 2082;
    *&v22[6] = "";
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetRouteHintsForMapMatching, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v8 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *v22 = a3;
    *&v22[8] = 1024;
    *&v22[10] = a1;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", buf, 0x12u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v17 = 134218240;
    v18 = a3;
    v19 = 1024;
    v20 = a1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", &v17, 18);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetRouteHintsForMapMatching(CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v10, v11);
  objc_msgSend_setMapMatchingRouteHint_count_routingType_stepType_(v14, v15, a2, a3, a1, a1);
  os_activity_scope_leave(&state);
}

void CLSetTrackRunHint(uint64_t *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLSetTrackRunHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    v27 = 2082;
    v28 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetTrackRunHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }
  }

  v4 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    *buf = 134349569;
    *v26 = v5;
    *&v26[8] = 1025;
    *&v26[10] = v6;
    v27 = 1025;
    LODWORD(v28) = v7;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", buf, 0x18u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v11 = *a1;
    v12 = *(a1 + 2);
    v13 = *(a1 + 3);
    v19 = 134349569;
    v20 = v11;
    v21 = 1025;
    v22 = v12;
    v23 = 1025;
    v24 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 0, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", &v19, 24);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSetTrackRunHint(CLTrackRunHint *)", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v9, v10);
  objc_msgSend_setTrackRunHint_(v16, v17, a1);
  os_activity_scope_leave(&state);
}

uint64_t CLGetAccessoryTypeBitSet()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryTypeBitSet", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "CLGetAccessoryTypeBitSet", v10, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "int32_t CLGetAccessoryTypeBitSet()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  return objc_msgSend_getAccessoryTypeBitSet(v6, v7, v8);
}

uint64_t CLGetAccessoryPASCDTransmissionState()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryPASCDTransmissionState", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 2, "CLGetAccessoryPASCDTransmissionState", v10, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLClientPASCDTransmissionState CLGetAccessoryPASCDTransmissionState()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  return objc_msgSend_getAccessoryPASCDTransmissionState(v6, v7, v8);
}

uint64_t sub_19B707210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGyroCalibrationDatabaseBiasFit_atTemperature_, a1);
}

uint64_t sub_19B707260(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_insertGyroCalibrationDatabaseBiasEstimateIfValid_temperature_variance_timestamp_, v4);
}

uint64_t sub_19B7072F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_gyroCalibrationDatabaseWipe, v4);
}

uint64_t sub_19B707320(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getGyroCalibrationDatabaseNumTemperatures_, a1);
}

uint64_t sub_19B707360(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_configure_, a1);
}

uint64_t CLGetOdometryBatchedLocations()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v0 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "CLGetOdometryBatchedLocations", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E0, 0, "CLGetOdometryBatchedLocations", v10, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "NSDictionary *CLGetOdometryBatchedLocations()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  return objc_msgSend_getOdometryBatchedLocations(v6, v7, v8);
}

uint64_t CLGetControlPlaneStatusReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = _os_activity_create(&dword_19B41C000, "CL: CLGetControlPlaneStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v17 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = "activity";
    v31 = 1026;
    v32 = a1;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetControlPlaneStatusReport, event:%{public, location:escape_only}s, clear:%{public}d}", buf, 0x22u);
  }

  v20 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v18, v19);
  ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status = objc_msgSend_getControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status_(v20, v21, a1, a2, a3, a4, a5, a6, a7, a8);
  os_activity_scope_leave(&state);
  return ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status;
}

uint64_t CLGetEmergencyLocationSettingsVersionInfo(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLGetEmergencyLocationSettingsVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetEmergencyLocationSettingsVersion, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  EmergencyLocationSettingsCompatibilityVersion_andContentVersion = objc_msgSend_getEmergencyLocationSettingsCompatibilityVersion_andContentVersion_(v8, v9, a1, a2);
  os_activity_scope_leave(&v12);
  return EmergencyLocationSettingsCompatibilityVersion_andContentVersion;
}

uint64_t CLDeleteCurrentEmergencyLocationAsset()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLDeleteCurrentEmergencyLocationAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDeleteCurrentEmergencyLocationAsset, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_deleteCurrentEmergencyLocationAsset(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLCopyNearbyAssetSettings()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLCopyNearbyAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  v7 = objc_msgSend_copyNearbyAssetSettings(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return v7;
}

uint64_t CLCopyNearbyAssetSettingsOfAccessoryFile(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLCopyNearbyAssetSettingsOfAccessoryFile", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v2, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettingsOfAccessoryFile, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a1)
  {
    v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
    a1 = objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_(v6, v7, a1);
  }

  os_activity_scope_leave(&v9);
  return a1;
}

uint64_t CLCopyRoutineAssetSettings(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B41C000, "CL: CLCopyRoutineAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyRoutineAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v6, v7);
  v10 = objc_msgSend_copyRoutineAssetSettingsWithCompatibilityVersion_contentVersion_(v8, v9, a1, a2);
  os_activity_scope_leave(&v12);
  return v10;
}

uint64_t CLShouldDisplayEEDUI()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B41C000, "CL: CLShouldDisplayEEDUI", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v0, &v9);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v1 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLShouldDisplayEEDUI, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v2, v3);
  shouldDisplayEEDUI = objc_msgSend_shouldDisplayEEDUI(v4, v5, v6);
  os_activity_scope_leave(&v9);
  return shouldDisplayEEDUI;
}

uint64_t CLGetEEDCloakingKey(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getEEDCloakingKey_, a1);
}

uint64_t CLGetEEDEmergencyContactNames(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_getEEDEmergencyContactNames_, a1);
}

uint64_t CLInternalSetPinnedLocationAuthorization(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLInternalSetPinnedLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetPinnedLocationAuthorization, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  v8 = objc_msgSend_setPinnedLocationAuthorization_(v6, v7, a1);
  os_activity_scope_leave(&v10);
  return v8;
}

uint64_t CLInternalGetPinnedLocationAuthorizationState(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLInternalGetPinnedLocationAuthorizationState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v2, &v10);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPinnedLocationAuthorizationState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, v4, v5);
  PinnedLocationAuthorizationState = objc_msgSend_getPinnedLocationAuthorizationState_(v6, v7, a1);
  os_activity_scope_leave(&v10);
  return PinnedLocationAuthorizationState;
}

uint64_t sub_19B708260(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_gyroCalibrationDatabaseSupportsMiniCalibration_, a1);
}

os_log_t sub_19B7082A0()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

void *sub_19B7082D0(void *a1)
{
  *a1 = &unk_1F0E33DF0;
  sub_19B43B734(a1, 0, 0);
  v2 = a1[5];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

uint64_t sub_19B708344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IOHIDEventGetType();
  if (result == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    result = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65289 && result == 1)
    {
      v7 = IOHIDEventGetIntegerValue() == 0;
      TimeStamp = IOHIDEventGetTimeStamp();
      sub_19B41E070(TimeStamp);
      v9 = v7;
      return sub_19B41DF08(a1, 0, &v9, 1);
    }
  }

  return result;
}

void sub_19B708E28(void *a1)
{
  sub_19B7082D0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B708E64()
{
  if (qword_1ED71D5A8 != -1)
  {
    dispatch_once(&qword_1ED71D5A8, &unk_1F0E29DC0);
  }

  return qword_1ED71D5A0;
}

void sub_19B708EAC()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 0;
  v3 = sub_19B438CCC(v1, "EnableMagnetometerCoexistenceCompensation", &v23, 0xFFFFFFFFLL);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  if ((v3 & 1) == 0)
  {
    v23 = 1;
  }

  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) != 1)
  {
    sub_19B5DEA54();
  }

  v4 = sub_19B65EF28();
  if (v4)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_53;
    }

    Length = CFDataGetLength(v4);
    BytePtr = CFDataGetBytePtr(v4);
    if (BytePtr)
    {
      if (Length >= 2)
      {
        v7 = *BytePtr;
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
        }

        v8 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          v29[0] = 2048;
          *&v29[1] = Length;
          _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "cpas version is %u, length is %ld bytes", buf, 0x12u);
        }

        v9 = sub_19B420058();
        if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || (*(v9 + 152) & 1) != 0)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
          }

          v24 = 67109376;
          v25 = v7;
          v26 = 2048;
          v27 = Length;
          LODWORD(v22) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "cpas version is %u, length is %ld bytes", &v24, v22);
          v11 = v10;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v10);
          if (v11 != buf)
          {
            free(v11);
          }
        }

        if (v7 == 5 && Length == 76)
        {
          operator new();
        }

        if (v7 == 6 && Length == 76)
        {
          operator new();
        }

        if (v7 == 10 && Length == 76)
        {
          operator new();
        }

        if (v7 == 11 && Length == 28)
        {
          operator new();
        }

        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
        }

        v19 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          v29[0] = 2048;
          *&v29[1] = Length;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "Warning: cpas data was found but did not match any versions. version (%u) length (%ld)", buf, 0x12u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
          }

          v24 = 67109376;
          v25 = v7;
          v26 = 2048;
          v27 = Length;
          LODWORD(v22) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Warning: cpas data was found but did not match any versions. version (%u) length (%ld)", &v24, v22);
          v15 = v21;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v21);
LABEL_51:
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
      }

      v16 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL", buf, 2u);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
        }

        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning CPAS data is NULL", &v24, 2);
        v15 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v18);
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
    }

    v12 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data response was invaild.", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28960);
      }

      LOWORD(v24) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning CPAS data response was invaild.", &v24, 2);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometerCoexistenceNotifier::create()", "CoreLocation: %s\n", v14);
      goto LABEL_51;
    }
  }

LABEL_53:
  if (!qword_1ED71D5A0)
  {
    operator new();
  }
}

void sub_19B7098A0(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x19EAE76F0](v3, v2);
  _Unwind_Resume(a1);
}

void sub_19B709920(void *a1)
{
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B709958(float *a1, float *__src)
{
  if (a1[2])
  {
    v4 = 0;
    while (a1[v4 + 5] == __src[v4 + 1] && a1[v4 + 6] == __src[v4 + 2] && a1[v4 + 7] == __src[v4 + 3] && a1[v4 + 8] == __src[v4 + 4] && a1[v4 + 9] == __src[v4 + 5] && a1[v4 + 10] == __src[v4 + 6])
    {
      v4 += 6;
      if (v4 == 48)
      {
        v5 = 0;
        while (a1[v5 + 53] == __src[v5 + 49])
        {
          if (++v5 == 7)
          {
            if (a1[60] == __src[56])
            {
              v17 = 0;
              v18 = a1 + 61;
              v19 = __src + 57;
LABEL_19:
              v20 = 0;
              while (*(v18 + v20) == *(v19 + v20))
              {
                if (++v20 == 18)
                {
                  ++v17;
                  v19 = (v19 + 18);
                  v18 = (v18 + 18);
                  if (v17 != 3)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_17;
                }
              }
            }

            goto LABEL_14;
          }
        }

        break;
      }
    }

LABEL_14:
    if ((a1[2] & 2) != 0)
    {
      v6 = a1[3];
      v7 = sub_19B709B5C((a1 + 4), v6).f32[0];
      v9 = v8;
      v11 = v10;
      v12 = sub_19B709B5C(__src, v6).f32[0];
      v13 = *a1;
      v21[0] = v12 - v7;
      v21[1] = v14 - v9;
      v21[2] = v15 - v11;
      (*(*v13 + 32))(v13, v21);
    }
  }

  else
  {
    (*(**a1 + 24))();
  }

LABEL_17:
  *(a1 + 8) |= 1u;
  memcpy(a1 + 4, __src, 0x11AuLL);
  return sub_19B709CB8(a1);
}

float32x2_t sub_19B709B5C(uint64_t a1, float a2)
{
  v2 = 0;
  v3 = *(a1 + 224);
  while (1)
  {
    v4 = *(a1 + 196 + 4 * v2);
    if ((v3 + v4) > a2)
    {
      break;
    }

    if (++v2 == 6)
    {
      v4 = *(a1 + 220);
      break;
    }
  }

  v5 = ((a2 - v4) / (v3 + v3)) + 0.5;
  if (v5 <= 0.0)
  {
    v10 = a1 + 24 * v2;
    v11 = *(v10 + 4);
    v12 = *(v10 + 16);
  }

  else
  {
    if (v5 < 1.0)
    {
      v6 = a1 + 24 * v2;
      v7 = vdup_n_s32(0x3C8EFA35u);
      v8 = vmul_f32(vadd_f32(vmul_n_f32(*(v6 + 4), a2), *(v6 + 16)), v7);
      return vadd_f32(v8, vmul_n_f32(vsub_f32(vmul_f32(vadd_f32(vmul_n_f32(*(v6 + 28), a2), *(v6 + 40)), v7), v8), v5 * (v5 * ((v5 * -2.0) + 3.0))));
    }

    v13 = a1 + 24 * v2;
    v11 = *(v13 + 28);
    v12 = *(v13 + 40);
  }

  return vmul_f32(vadd_f32(vmul_n_f32(v11, a2), v12), vdup_n_s32(0x3C8EFA35u));
}

uint64_t sub_19B709CB8(uint64_t result)
{
  if (*(result + 8) & 2) != 0 && (*(result + 8))
  {
    v1 = result;
    v2 = *(result + 12);
    v5.n128_u64[0] = sub_19B709B5C(result + 16, v2);
    v10[0] = v5.n128_u32[0];
    v10[1] = v4;
    v10[2] = v3;
    v5.n128_f32[0] = (v2 + -2.0) * 0.25;
    if (v5.n128_f32[0] >= 0.0)
    {
      v6 = v5.n128_f32[0];
      if (v5.n128_f32[0] < 0x11)
      {
        *&v7 = v6;
        v8 = v5.n128_f32[0] - v6;
        v9 = &v1[v6];
        LOBYTE(v7) = v9[244];
        LOBYTE(v3) = v9[245];
        v5.n128_f32[0] = v7 + (v8 * (v3 - v7));
        goto LABEL_9;
      }

      v5.n128_u8[0] = v1[261];
    }

    else
    {
      v5.n128_u8[0] = v1[244];
    }

    v5.n128_f32[0] = v5.n128_u32[0];
LABEL_9:
    v5.n128_f32[0] = v5.n128_f32[0] * 0.00017453;
    return (*(**v1 + 16))(*v1, v10, v2 < 20.0, v5);
  }

  return result;
}

uint64_t sub_19B709DB0(uint64_t a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 3.4028e38)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29DE0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v12 = 0x47EFFFFFE0000000;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: temperature != 3.40282347e+38F, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMNonlinearTemperatureFit.cpp, line 83,temperature,%f.", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29DE0);
      }

      v9 = 134217984;
      v10 = 0x47EFFFFFE0000000;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: temperature != 3.40282347e+38F, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMNonlinearTemperatureFit.cpp, line 83,temperature,%f.", COERCE_DOUBLE(&v9));
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMNonlinearTemperatureFit::feedGyroTemperature(float)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  *(a1 + 8) |= 2u;
  *(a1 + 12) = a2;
  return sub_19B709CB8(a1);
}

int64x2_t *sub_19B70A498(int64x2_t *a1, __int8 a2)
{
  a1->i32[0] = 0;
  a1->i64[1] = 0xBFF0000000000000;
  a1[1] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[2].i8[0] = a2;
  a1[2].i64[1] = 0;
  sub_19B5D5B20(a1[3].i64);
  a1[375].i64[1] = 0x7FF8000000000000;
  a1[376].i64[0] = 0x7FF8000000000000;
  a1[376].i8[8] = 0;
  if (a1[2].i8[0] == 1)
  {
    operator new();
  }

  a1[373].i64[1] = sub_19B70A5DC;
  a1[374].i64[0] = a1;
  return a1;
}

void sub_19B70A56C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x19EAE76F0](v4, 0x10E0C408232E938);
  *(v1 + 5976) = 0u;
  sub_19B6F68C8(v2, 0);
  _Unwind_Resume(a1);
}

double sub_19B70A5B4(int a1, unint64_t a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    *a3 = a1;
  }

  result = a2 * 0.000001;
  *(a3 + 8) = result;
  return result;
}

void sub_19B70A5DC(int a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a3 + 32) == 1)
  {
    sub_19B664EF4(*(a3 + 5), a1, a2);
  }

  v6 = *a3;
  if (a1)
  {
    if (v6 == 1)
    {
      *a3 = 3;
      *(a3 + 1) = a2 * 0.000001;
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v7 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v14 = a2 * 0.000001;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Walking. time %f\n", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
        }

        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMAccessoryActivity] Walking. time %f\n");
LABEL_28:
        v12 = v9;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryActivity::stepDetectorCallback(BOOL, uint64_t)", "CoreLocation: %s\n", v9);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }

  else if (v6 == 3)
  {
    *a3 = 1;
    *(a3 + 1) = a2 * 0.000001;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v10 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = a2 * 0.000001;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Not walking. time %f\n", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMAccessoryActivity] Not walking. time %f\n");
      goto LABEL_28;
    }
  }
}

void sub_19B70A928(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6024))
  {
    v29 = *(a2 + 8);
    v30 = *(a2 + 16);
    v6.f32[0] = sub_19B447000((a2 + 32));
    v8 = v7 + *(a2 + 28);
    v6.i32[1] = v9;
    v31 = vadd_f32(*(a2 + 20), v6);
    v32 = v8;
    v33 = xmmword_19B7BCD20;
    v34 = vdup_n_s32(0x3A03126Fu);
    v35 = 0xBF80000000000000;
    v36 = *(a2 + 32);
    v10 = sub_19B5D6F10(a1 + 48, &v29, *a2);
    v12 = v11;
    *(a1 + 6008) = v10;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v13 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v42 = v10;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] Start impulse start %f, end, %f.\n", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v37 = 134218240;
      v38 = v10;
      v39 = 2048;
      v40 = v12;
      LODWORD(v28) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMAccessoryActivity] Start impulse start %f, end, %f.\n", COERCE_DOUBLE(&v37), v28);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryActivity::feedImuSampleToStep(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = *(a1 + 6008);
    *(a1 + 6008) = 0x7FF8000000000000;
    *(a1 + 6016) = 0x7FF8000000000000;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v18 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v42 = v17;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMAccessoryActivity] End impulse start %f, end, %f.\n", buf, 0x16u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v37 = 134218240;
      v38 = v17;
      v39 = 2048;
      v40 = v12;
      LODWORD(v28) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMAccessoryActivity] End impulse start %f, end, %f.\n", COERCE_DOUBLE(&v37), v28);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryActivity::feedImuSampleToStep(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    *(a1 + 16) = v17;
    *(a1 + 24) = v12;
    v22 = *(a1 + 40);
    if (v22)
    {
      sub_19B667230(v22, a2);
    }

    v23 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v23;
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
    }

    v24 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CMAccessoryActivity] headsetOrientation is not set. Do nothing.", buf, 2u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29E00);
      }

      v29.i16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMAccessoryActivity] headsetOrientation is not set. Do nothing.", &v29, 2);
      v27 = v26;
      sub_19B6BB7CC("Generic", 1, 0, 2, "AccessoryActivity::ActivityPacket CMAccessoryActivity::feedIMUData(const AccessoryActivity::ImuData *const)", "CoreLocation: %s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    *a3 = 0;
    *(a3 + 8) = xmmword_19B7BCD10;
    *(a3 + 24) = 0x7FF8000000000000;
  }
}

os_log_t sub_19B70AED0()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B70AF00(_BYTE *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    if (*a1)
    {
      v5 = "open";
    }

    else
    {
      v5 = "closed";
    }

    *buf = 136315138;
    v18 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Cover %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
    }

    if (*a1)
    {
      v7 = "open";
    }

    else
    {
      v7 = "closed";
    }

    v15 = 136315138;
    v16 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Cover %s", &v15);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass::onCoverState(const BOOL *, void *)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (*a1 == 1)
  {
    if (*(a2 + 56))
    {
      if (*(a2 + 48) == 1)
      {
        *(a2 + 28) = 0;
        (*(*a2 + 56))(a2);
        objc_msgSend_unregister_forNotification_(*(*(a2 + 40) + 16), v10, *(*(a2 + 40) + 8), 0);
        *(a2 + 64) = 1;
        v11 = *(a2 + 56);
        Current = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v11, Current + 3.0);
      }
    }

    *(a2 + 72) = CFAbsoluteTimeGetCurrent();
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B70BAAC;
    block[3] = &unk_1E75327D8;
    block[4] = a2;
    dispatch_async(global_queue, block);
  }
}

void sub_19B70B1E0(uint64_t a1, const char *a2, __int128 *a3, uint64_t a4)
{
  sub_19B6780D4(a1, a2, a3);
  v7 = *a2;
  v8 = a3[1];
  v16 = *a3;
  v17 = v8;
  v9 = a3[3];
  v18 = a3[2];
  v19 = v9;
  if (!v7)
  {
    v10 = sub_19B420D84();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v11[2] = sub_19B70BA68;
    v11[3] = &unk_1E7534F88;
    v11[4] = a4;
    sub_19B420C9C(v10, v11);
  }
}

void *sub_19B70B29C(uint64_t a1)
{
  *a1 = &unk_1F0E31818;
  if (*(a1 + 88))
  {
    CFRunLoopTimerInvalidate(*(a1 + 56));
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
    if (qword_1EAFE3A80 != -1)
    {
      dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
    }

    sub_19B426A14(qword_1EAFE3AA0, 0, *(a1 + 88));
    v2 = *(a1 + 88);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 88) = 0;
  }

  if (*(a1 + 96))
  {
    v3 = sub_19B4498B4();
    sub_19B426A14(v3, 0, *(a1 + 96));
    v4 = *(a1 + 96);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 112))
  {
    v5 = sub_19B677074();
    sub_19B426A14(v5, 4, *(a1 + 112));
    v6 = *(a1 + 112);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return sub_19B674784(a1);
}

void sub_19B70B46C(uint64_t a1)
{
  sub_19B70B29C(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B70B4A4(uint64_t a1, int a2, double *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (!a2)
  {
    v5 = *a3;
    if (*a3 <= 0.0)
    {
      *(a1 + 28) = 0;
      (*(*a1 + 56))(a1, v5);
      objc_msgSend_unregister_forNotification_(*(*(a1 + 40) + 16), v7, *(*(a1 + 40) + 8), 0);
      *(a1 + 48) = 0;
    }

    else
    {
      if (qword_1EAFE3A80 != -1)
      {
        dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
      }

      if (!*(a1 + 88))
      {
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v6 = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B70B7B8, &context);
        *(a1 + 56) = v6;
        if (v6)
        {
          sub_19B420D84();
          CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 56), *MEMORY[0x1E695E8D0]);
        }

        else
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
          }

          v8 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Could not create timer", buf, 2u);
          }

          v9 = sub_19B420058();
          if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
            }

            v12 = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Could not create timer", &v12, 2);
            v11 = v10;
            sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLCompass::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v10);
            if (v11 != buf)
            {
              free(v11);
            }
          }
        }

        if (qword_1EAFE3A80 != -1)
        {
          dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
        }

        *(a1 + 72) = (*(*qword_1EAFE3AA0 + 56))(qword_1EAFE3AA0);
      }

      *(a1 + 48) = 1;
      if ((*(a1 + 64) & 1) == 0)
      {
        sub_19B70B7F0(a1);
      }
    }

    return *(a1 + 32);
  }

  return result;
}

uint64_t sub_19B70B7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    result = sub_19B70B7F0(a2);
  }

  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_19B70B7F0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 83) == 1)
  {
    v2 = *(a1 + 84);
  }

  else
  {
    v2 = *(a1 + 72) > 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 72) < 432000.0;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 83);
    *buf = 67109376;
    v15 = v2 & 1;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Cover attached,%d,forced,%d", buf, 0xEu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E286A0);
    }

    v7 = *(a1 + 83);
    v11[0] = 67109376;
    v11[1] = v2 & 1;
    v12 = 1024;
    v13 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Cover attached,%d,forced,%d", v11, 14);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass::startCompass()", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  objc_msgSend_register_forNotification_registrationInfo_(*(*(a1 + 40) + 16), v6, *(*(a1 + 40) + 8), 0, 0);
  return (*(*a1 + 48))(a1, v2 & 1);
}

uint64_t sub_19B70BA68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 96) > 0.0)
  {
    v2[28] = 1;
  }

  return (*(*v2 + 72))(v2, a1 + 40);
}

uint64_t sub_19B70BAAC()
{
  if (qword_1EAFE3A80 != -1)
  {
    dispatch_once(&qword_1EAFE3A80, &unk_1F0E29DA0);
  }

  v0 = *(*qword_1EAFE3AA0 + 48);

  return v0();
}

uint64_t sub_19B70C16C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_walking(*(a1 + 32), a2, a3))
  {
    v6 = *(a1 + 40);
    v7 = objc_msgSend_endDate(*(a1 + 32), v4, v5);
    started = objc_msgSend_startDate(*(a1 + 32), v8, v9);
    objc_msgSend_timeIntervalSinceDate_(v7, v11, started);
    v13 = v12;
    objc_msgSend_trueWalkInBout(v6, v14, v15);
    v19 = v13 + v18;

    return objc_msgSend_setTrueWalkInBout_(v6, v16, v17, v19);
  }

  else
  {
    v21 = objc_msgSend_running(*(a1 + 32), v4, v5);
    v24 = *(a1 + 40);
    if (v21)
    {
      v25 = objc_msgSend_endDate(*(a1 + 32), v22, v23);
      v28 = objc_msgSend_startDate(*(a1 + 32), v26, v27);
      objc_msgSend_timeIntervalSinceDate_(v25, v29, v28);
      v31 = v30;
      objc_msgSend_trueRunInBout(v24, v32, v33);
      v37 = v31 + v36;
      v38 = v24;
    }

    else
    {
      objc_msgSend_setTrueWalkInBout_(*(a1 + 40), v22, v23, 0.0);
      v38 = *(a1 + 40);
      v37 = 0.0;
    }

    return objc_msgSend_setTrueRunInBout_(v38, v34, v35, v37);
  }
}

uint64_t sub_19B70C26C(uint64_t a1, const char *a2, uint64_t a3)
{
  Object = objc_msgSend_lastObject(*(a1 + 32), a2, a3);
  result = objc_msgSend_isSameStateAs_(Object, v5, *(a1 + 40));
  if (result)
  {
    result = objc_msgSend_isTimeFromActivity_toActivity_withinLimitForAttribute_(CMMotionActivityFiltering, v7, Object, *(a1 + 40), *(a1 + 64));
    if (result)
    {
      v10 = objc_msgSend_endDate(*(a1 + 40), v8, v9);
      objc_msgSend_timeIntervalSinceReferenceDate(v10, v11, v12);
      objc_msgSend_setEndTime_(Object, v13, v14);
      (*(*(a1 + 56) + 16))();
      if ((objc_msgSend_walking(*(a1 + 40), v15, v16) & 1) == 0 && !objc_msgSend_running(*(a1 + 40), v17, v18))
      {
        return 1;
      }

      objc_msgSend_trueRunInBout(*(a1 + 48), v17, v18);
      v20 = v19;
      objc_msgSend_trueWalkInBout(*(a1 + 48), v21, v22);
      v24 = v23;
      objc_msgSend_trueRunInBout(*(a1 + 48), v25, v26);
      v28 = v20 / (v24 + v27);
      objc_msgSend_trueWalkInBout(*(a1 + 48), v29, v30);
      v32 = v31;
      objc_msgSend_trueRunInBout(*(a1 + 48), v33, v34);
      if (v28 <= dbl_19B7BCD50[v32 + v37 >= 3600.0])
      {
        v38 = objc_msgSend_motionActivity(Object, v35, v36);
        if (v28 >= 0.1)
        {
          *v38 = 8;
          v40 = 1;
          goto LABEL_11;
        }

        v40 = 0;
        v41 = 4;
      }

      else
      {
        v38 = objc_msgSend_motionActivity(Object, v35, v36);
        v40 = 0;
        v41 = 8;
      }

      *v38 = v41;
LABEL_11:
      objc_msgSend_setIsRunWalk_(Object, v39, v40);
      return 1;
    }
  }

  return result;
}

void *sub_19B70C470(void *a1)
{
  *a1 = &unk_1F0E32888;
  sub_19B70C518(a1, 0, 0);
  v2 = a1[5];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B70C4E0(void *a1)
{
  sub_19B70C470(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B70C518(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      v7 = sub_19B42CAAC();
      sub_19B42C428(v7);
    }

    if (a3)
    {
      v5 = sub_19B44FEF4;
      v6 = a1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    sub_19B42D100(v4, v5, v6);
  }
}

void sub_19B70C69C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B70C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B70C7F8(uint64_t a1, CLConnectionMessage **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage"))
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
      v6 = MEMORY[0x1E696ABC0];
      v9 = objc_msgSend_integerValue(v5, v7, v8);
      v11 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v10, @"CMErrorDomain", v9, 0);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v12 = qword_1EAFE2A70;
      if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v11;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Failed with error %{public}@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A68 != -1)
        {
          dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
        }

        LODWORD(v18) = 138543362;
        *(&v18 + 4) = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A70, 16, "Failed with error %{public}@", &v18, 12, v18);
LABEL_23:
        v17 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMContextConfigurationManager connect]_block_invoke", "CoreLocation: %s\n", v14);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v15 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Failed with unknown internal error.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      LOWORD(v18) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A70, 16, "Failed with unknown internal error.", &v18, 2, v18);
      goto LABEL_23;
    }
  }
}

void sub_19B70CB00(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v6 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v22 = objc_msgSend_UTF8String(v5, v7, v8);
      v23 = 1026;
      v24 = getpid();
      v25 = 2050;
      v26 = Weak;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v12 = qword_1EAFE2A70;
      v15 = 136446722;
      v16 = objc_msgSend_UTF8String(v5, v10, v11);
      v17 = 1026;
      v18 = getpid();
      v19 = 2050;
      v20 = Weak;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 1, "Client connection interrupt, %{public}s, %{public}d, %{public}p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager connect]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B70D098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B70D0C4(uint64_t a1, CLConnectionMessage **a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*a2 || (Dictionary = CLConnectionMessage::getDictionary(*a2)) == 0)
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v19 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "Unable to parse response.", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      LOWORD(v43) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A70, 16, "Unable to parse response.", &v43, 2);
      v23 = v22;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v24 = *(a1 + 32);
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v21, @"CMErrorDomain", 103, 0);
    v18 = *(v24 + 16);
    return v18();
  }

  v5 = Dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
  if (v6)
  {
    v8 = v6;
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v9 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Error in writeContextConfiguration: %@", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v43 = 138412290;
      v44 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A70, 0, "Error in writeContextConfiguration: %@", &v43, 12);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_msgSend_intValue(v8, v11, v12);
    objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"CMErrorDomain", v16, 0);
LABEL_17:
    v18 = *(*(a1 + 32) + 16);
    return v18();
  }

  if (!objc_msgSend_objectForKeyedSubscript_(v5, v7, @"CMReturnCode"))
  {
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v27 = qword_1EAFE2A70;
    if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_msgSend_description(v5, v28, v29);
      *buf = 136446210;
      v46 = objc_msgSend_UTF8String(v30, v31, v32);
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "Unable to parse message (%{public}s) for query response", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A68 != -1)
      {
        dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
      }

      v37 = qword_1EAFE2A70;
      v38 = objc_msgSend_description(v5, v35, v36);
      v43 = 136446210;
      v44 = objc_msgSend_UTF8String(v38, v39, v40);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v37, 0, "Unable to parse message (%{public}s) for query response", &v43, 12);
      v42 = v41;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]_block_invoke", "CoreLocation: %s\n", v41);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v34, @"CMErrorDomain", 103, 0);
    goto LABEL_17;
  }

  v26 = *(*(a1 + 32) + 16);

  return v26();
}

os_log_t sub_19B70D680()
{
  result = os_log_create("com.apple.locationd.Motion", "ContextConfiguration");
  qword_1EAFE2A70 = result;
  return result;
}

void sub_19B70E0EC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EUserInteractedWithDevice]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

void sub_19B70E368(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::ESrcMoved]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

void sub_19B70E5E4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EAuxHasBeenStatic]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

void sub_19B70E860(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EStandToSit]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

void sub_19B70EADC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EJBLBackBelowLimit]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

void sub_19B70ED58(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 16082) == 1)
    {
      sub_19B6915DC(v2);
      if ((*(a1 + 112) | 2) == 3)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v3[552] = 0;
          v3[682] = 0;
          v3[812] = 0;
          v3[942] = 0;
          v3[1502] = 0;
          v3[1632] = 0;
          v3[1762] = 0;
          v3[1458] = 0;
          v3[1892] = 0;
        }

        else
        {
          v4 = *(a1 + 40);
          if (v4)
          {
            sub_19B5D6EB0(v4);
          }
        }

        v5 = *(a1 + 96);
        if (v5 && *(a1 + 108) != 4)
        {
          sub_19B79A0E8(v5, 4, buf);
        }

        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 112) = 0;
      *(a1 + 88) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_19B7127D0(*(a1 + 108));
        *buf = 136315138;
        v16 = v7;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v9 = off_1EAFE29A0;
        v10 = sub_19B7127D0(*(a1 + 108));
        v13 = 136315138;
        v14 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMHeadTrackingController] FSM state: tracking re-enabled from route %s", &v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::enable(const T *) [T = CMHeadTrackingController::EDetectedFace]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

double sub_19B70EFD4(uint64_t a1, void *a2, double result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 24);
    if ((*(v4 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v4);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 112) - 1;
        if (v7 > 3)
        {
          v8 = "kUnknown";
        }

        else
        {
          v8 = off_1E7535660[v7];
        }

        *buf = 136315138;
        v26 = *&v8;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v10 = *(a1 + 112) - 1;
        if (v10 > 3)
        {
          v11 = "kUnknown";
        }

        else
        {
          v11 = off_1E7535660[v10];
        }

        v23 = 136315138;
        v24 = *&v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", &v23);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EWalking]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v14 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v15 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v26 = v15;
          _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v16 = sub_19B420058();
        if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v17 = (*a2 - *(a1 + 56)) * 0.000001;
          v23 = 134217984;
          v24 = v17;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between stand and disable: %f seconds", COERCE_DOUBLE(&v23));
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EWalking]", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        v20 = (*a2 - *(a1 + 56)) * 0.000001;
        v22 = *(a1 + 264);
        v21 = *(a1 + 272);
        if (v21 <= v20)
        {
          v21 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v22 >= v20)
        {
          v22 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v22;
        *(a1 + 272) = v21;
        result = v20 + *(a1 + 280);
        *(a1 + 280) = result;
        ++*(a1 + 288);
      }
    }
  }

  return result;
}

double sub_19B70F41C(uint64_t a1, void *a2, double result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 24);
    if ((*(v4 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v4);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 112) - 1;
        if (v7 > 3)
        {
          v8 = "kUnknown";
        }

        else
        {
          v8 = off_1E7535660[v7];
        }

        *buf = 136315138;
        v26 = *&v8;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v10 = *(a1 + 112) - 1;
        if (v10 > 3)
        {
          v11 = "kUnknown";
        }

        else
        {
          v11 = off_1E7535660[v10];
        }

        v23 = 136315138;
        v24 = *&v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", &v23);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EJBLExceededLimit]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v14 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v15 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v26 = v15;
          _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v16 = sub_19B420058();
        if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v17 = (*a2 - *(a1 + 56)) * 0.000001;
          v23 = 134217984;
          v24 = v17;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between stand and disable: %f seconds", COERCE_DOUBLE(&v23));
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EJBLExceededLimit]", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        v20 = (*a2 - *(a1 + 56)) * 0.000001;
        v22 = *(a1 + 264);
        v21 = *(a1 + 272);
        if (v21 <= v20)
        {
          v21 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v22 >= v20)
        {
          v22 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v22;
        *(a1 + 272) = v21;
        result = v20 + *(a1 + 280);
        *(a1 + 280) = result;
        ++*(a1 + 288);
      }
    }
  }

  return result;
}

double sub_19B70F864(uint64_t a1, void *a2, double result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 24);
    if ((*(v4 + 16082) & 1) == 0 && (*(a1 + 89) != 1 || (*(a1 + 112) | 2) != 3))
    {
      sub_19B69141C(v4);
      *(a1 + 108) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v6 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 112) - 1;
        if (v7 > 3)
        {
          v8 = "kUnknown";
        }

        else
        {
          v8 = off_1E7535660[v7];
        }

        *buf = 136315138;
        v26 = *&v8;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v10 = *(a1 + 112) - 1;
        if (v10 > 3)
        {
          v11 = "kUnknown";
        }

        else
        {
          v11 = off_1E7535660[v10];
        }

        v23 = 136315138;
        v24 = *&v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] FSM state: tracking disabled from route %s", &v23);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EInVehicle]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if (*(a1 + 56) && *(a1 + 112) == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v14 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v15 = (*a2 - *(a1 + 56)) * 0.000001;
          *buf = 134217984;
          v26 = v15;
          _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and disable: %f seconds", buf, 0xCu);
        }

        v16 = sub_19B420058();
        if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v17 = (*a2 - *(a1 + 56)) * 0.000001;
          v23 = 134217984;
          v24 = v17;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between stand and disable: %f seconds", COERCE_DOUBLE(&v23));
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::disable(const T *) [T = CMHeadTrackingController::EInVehicle]", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        v20 = (*a2 - *(a1 + 56)) * 0.000001;
        v22 = *(a1 + 264);
        v21 = *(a1 + 272);
        if (v21 <= v20)
        {
          v21 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        if (v22 >= v20)
        {
          v22 = (*a2 - *(a1 + 56)) * 0.000001;
        }

        *(a1 + 264) = v22;
        *(a1 + 272) = v21;
        result = v20 + *(a1 + 280);
        *(a1 + 280) = result;
        ++*(a1 + 288);
      }
    }
  }

  return result;
}

uint64_t sub_19B70FCAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = &unk_1F0E37F50;
  *(result + 8) = 9;
  *(result + 16) = 512;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 90) = 1;
  *(result + 96) = a5;
  *(result + 104) = a6;
  *(result + 108) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = xmmword_19B7B7510;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = xmmword_19B7B7510;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = xmmword_19B7B7510;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = xmmword_19B7B7510;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 272) = xmmword_19B7BCD90;
  *(result + 288) = 0;
  *(result + 296) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 304) = xmmword_19B7BCD90;
  *(result + 320) = 0;
  *(result + 328) = 0x7FEFFFFFFFFFFFFFLL;
  *(result + 336) = xmmword_19B7BCD90;
  *(result + 352) = 0;
  *(result + 360) = 0x7FF8000000000000;
  *(result + 368) = 0x404E000000000000;
  *(result + 376) = xmmword_19B7BCDA0;
  if (a5)
  {
    if (a6)
    {
      *(a5 + 10912) = sub_19B70FD9C;
      *(a5 + 10920) = result;
    }
  }

  return result;
}

void sub_19B70FD9C(int a1, unint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      return;
    }

    *(a3 + 73) = 0;
    *(a3 + 56) = a2;
    *(a3 + 64) = 0;
    sub_19B69AAAC(*(a3 + 24), a2);
    v6 = (a3 + 120);
    v5 = *(a3 + 120);
    ++*(a3 + 132);
    if (!v5)
    {
      return;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v8 = (a2 - *v6) * 0.000001;
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between sitting and standing: %f seconds", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v10 = (a2 - *v6) * 0.000001;
      *v35 = 134217984;
      *&v35[4] = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between sitting and standing: %f seconds", COERCE_DOUBLE(v35));
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = 256;
    v14 = 248;
    v15 = 240;
    v16 = 232;
    goto LABEL_50;
  }

  v17 = *(a3 + 24);
  if (*(v17 + 16082))
  {
    if (*(a3 + 112) != 2 || *(a3 + 88) == 1)
    {
      *(a3 + 108) = 4;
      *(a3 + 64) = a2;
      *buf = a2;
      sub_19B79A0E8(a3, 7, buf);
    }
  }

  else
  {
    if (*(a3 + 73) == 1)
    {
      sub_19B690B4C(v17, 1);
    }

    v20 = *(a3 + 56);
    if (v20)
    {
      v21 = a2 - v20;
      if (a2 > v20 && v21 <= 0x3D08FF)
      {
        *(a3 + 80) = a2;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v22 = off_1EAFE29A0;
        v23 = v21;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          *&buf[4] = (v23 * 0.000001);
          v37 = 2050;
          v38 = 0x4010000000000000;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Back to back sit-stand transitions. dt, %{public}.3f, windowSize, %{public}.3f", buf, 0x16u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          *v35 = 134349312;
          *&v35[4] = (v23 * 0.000001);
          *&v35[12] = 2050;
          *&v35[14] = 0x4010000000000000;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Back to back sit-stand transitions. dt, %{public}.3f, windowSize, %{public}.3f", v35, 22, *v35, *&v35[8]);
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }
    }
  }

  v6 = (a3 + 56);
  v25 = *(a3 + 56);
  ++*(a3 + 128);
  *(a3 + 120) = a2;
  if (v25)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v26 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v27 = (a2 - *v6) * 0.000001;
      *buf = 134217984;
      *&buf[4] = v27;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between standing and sitting: %f seconds", buf, 0xCu);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v29 = (a2 - *v6) * 0.000001;
      *v35 = 134217984;
      *&v35[4] = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between standing and sitting: %f seconds", COERCE_DOUBLE(v35));
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::sitStandDetectorCallback(TransitionState, uint64_t)", "CoreLocation: %s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v13 = 224;
    v14 = 216;
    v15 = 208;
    v16 = 200;
LABEL_50:
    v32 = (a2 - *v6) * 0.000001;
    v33 = *(a3 + v15);
    if (v33 <= v32)
    {
      v33 = (a2 - *v6) * 0.000001;
    }

    *(a3 + v15) = v33;
    v34 = *(a3 + v16);
    if (v34 >= v32)
    {
      v34 = v32;
    }

    *(a3 + v16) = v34;
    *(a3 + v14) = v32 + *(a3 + v14);
    ++*(a3 + v13);
  }
}

void sub_19B710554(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 112) != 2 || *(result + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received user interacted with device event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v8 = 134217984;
      v9 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMHeadTrackingController] Received user interacted with device event. timestampUs, %llu", &v8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedUserInteractedWithDeviceEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(result + 108) = 1;
    *buf = a2;
    sub_19B79A0E8(result, 2, buf);
  }
}

void sub_19B710758(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 112) != 2 || *(result + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received srcMoved event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v8 = 134217984;
      v9 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMHeadTrackingController] Received srcMoved event. timestampUs, %llu", &v8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedSrcMovedEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(result + 108) = 2;
    *buf = a2;
    sub_19B79A0E8(result, 3, buf);
  }
}

void sub_19B71095C(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 112) != 2 || *(result + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received auxHasBeenStatic event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v8 = 134217984;
      v9 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMHeadTrackingController] Received auxHasBeenStatic event. timestampUs, %llu", &v8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedAuxHasBeenStaticEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(result + 108) = 3;
    *buf = a2;
    sub_19B79A0E8(result, 4, buf);
  }
}

void sub_19B710B60(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 112) != 2 || *(result + 88) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received DetectedFace event. timestampUs, %llu", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v8 = 134217984;
      v9 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMHeadTrackingController] Received DetectedFace event. timestampUs, %llu", &v8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedDetectedFaceEvent(uint64_t)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(result + 108) = 6;
    *buf = a2;
    sub_19B79A0E8(result, 10, buf);
  }
}

void sub_19B710D64(uint64_t a1, int a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(*(a1 + 24) + 16082) & 1) == 0)
    {
      *(a1 + 112) = 2;
      *buf = a3;
      sub_19B79A0E8(a1, 5, buf);
      v15 = a3;
      v16 = *(a1 + 360);
      if (v16 <= a3)
      {
        if (v15 - v16 > 18000.0)
        {
          *(a1 + 360) = v15;
          v16 = a3;
        }

        v17 = *(a1 + 368);
        v18 = v16 + v17;
        if (v18 >= v15)
        {
          v23 = *(a1 + 376) + 1;
        }

        else
        {
          v19 = *(a1 + 376);
          v20 = *(a1 + 384);
          v21 = *(a1 + 388);
          do
          {
            v22 = v18;
            if (v19 < v20)
            {
              v20 = v19;
            }

            if (v19 > v21)
            {
              v21 = v19;
            }

            v18 = v17 + v18;
            v19 = 0;
          }

          while (v18 < v15);
          *(a1 + 384) = v20;
          *(a1 + 388) = v21;
          v23 = 1;
          *(a1 + 360) = v22;
        }

        *(a1 + 376) = v23;
        ++*(a1 + 380);
      }

      goto LABEL_69;
    }

    if (*(a1 + 88) == 1)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL back over limit while waiting to re-enable.", buf, 2u);
      }

      v6 = sub_19B420058();
      if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
      {
        goto LABEL_69;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      LOWORD(v27) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] JBL back over limit while waiting to re-enable.", &v27, 2, v27);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v24 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL back over limit received while already not tracking.", buf, 2u);
      }

      v25 = sub_19B420058();
      if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
      {
        goto LABEL_69;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      LOWORD(v27) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] JBL back over limit received while already not tracking.", &v27, 2, v27);
    }

    v26 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedBTJitterBufferLatencyEvent(BOOL, uint64_t)", "CoreLocation: %s\n", v7);
    if (v26 != buf)
    {
      free(v26);
    }

LABEL_69:
    *(a1 + 88) = 0;
    return;
  }

  if (*(*(a1 + 24) + 16082) && *(a1 + 112) == 2)
  {
    if (*(a1 + 90) != 1)
    {
      *(a1 + 108) = 5;
      *buf = a3;
      sub_19B79A0E8(a1, 9, buf);
      return;
    }

    *(a1 + 88) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] JBL went under limit, transition to waiting to re-enable.", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] JBL went under limit, transition to waiting to re-enable.");
LABEL_40:
      v14 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedBTJitterBufferLatencyEvent(BOOL, uint64_t)", "CoreLocation: %s\n", v10);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v11 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 24) + 16082) ^ 1;
      *buf = 67109376;
      *&buf[4] = 0;
      v29 = 1024;
      v30 = v12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[CMHeadTrackingController] Received JBL event but taking no action. exceededThreshold,%d isTrackingEnabled,%d", buf, 0xEu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMHeadTrackingController] Received JBL event but taking no action. exceededThreshold,%d isTrackingEnabled,%d", &v27);
      goto LABEL_40;
    }
  }
}

void sub_19B7113D0(uint64_t a1, int *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    return;
  }

  v3 = *a2;
  v4 = 1;
  if (*a2 > 51)
  {
    if (v3 != 52 && v3 != 56)
    {
LABEL_8:
      v4 = 0;
    }
  }

  else
  {
    if (!v3)
    {
      v7 = qword_1EAFE2998;
      goto LABEL_27;
    }

    if (v3 != 5)
    {
      goto LABEL_8;
    }
  }

  v5 = (v3 & 0xFFFFFFFE) == 10;
  v6 = v4 ^ 1;
  v7 = qword_1EAFE2998;
  if (v5)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0 && a2[1] > 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Received high / medium confidence in-vehicle event", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Received high / medium confidence in-vehicle event", v16, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedVehicleState(const CLMotionActivity &)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(a1 + 112) = 4;
    *buf = 0;
    sub_19B79A0E8(a1, 8, buf);
    return;
  }

LABEL_27:
  if (v7 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
  }

  v12 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Received not in-vehicle event", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v16[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Received not in-vehicle event", v16, 2);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedVehicleState(const CLMotionActivity &)", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }
}

void sub_19B711744(uint64_t a1, int a2, int a3, int a4, unint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a2)
    {
      v10 = *(a1 + 80);
      if (v10)
      {
        v11 = v10 + 3000000 > a5;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v18 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = ((a5 - *(a1 + 80)) * 0.000001);
          *buf = 134349056;
          *&buf[4] = v19;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Discount walk detection after a back to back SS transition. dt, %{public}.3f", buf, 0xCu);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
        {
          goto LABEL_36;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v21 = ((a5 - *(a1 + 80)) * 0.000001);
        v81 = 134349056;
        *v82 = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Discount walk detection after a back to back SS transition. dt, %{public}.3f", &v81, 12);
LABEL_34:
        v22 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v17);
        if (v22 != buf)
        {
          free(v22);
        }

        goto LABEL_36;
      }

      v12 = *(a1 + 56);
      if (v12 && v12 + 3000000 > a5)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v13 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v14 = ((a5 - *(a1 + 56)) * 0.000001);
          *buf = 134349056;
          *&buf[4] = v14;
          _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Discount walk detection right after sit->stand transition. dt, %{public}.3f", buf, 0xCu);
        }

        v15 = sub_19B420058();
        if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
        {
          goto LABEL_36;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v16 = ((a5 - *(a1 + 56)) * 0.000001);
        v81 = 134349056;
        *v82 = v16;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Discount walk detection right after sit->stand transition. dt, %{public}.3f", &v81, 12);
        goto LABEL_34;
      }
    }

    ++*(a1 + 72);
LABEL_36:
    sub_19B69A8E4(*(a1 + 24), a5);
    goto LABEL_37;
  }

  if (*(a1 + 72))
  {
    --*(a1 + 72);
  }

LABEL_37:
  v23 = *(a1 + 24);
  if (*(v23 + 16) == 1)
  {
    *(v23 + 37696) = a4;
  }

  if (a2 && (*(a1 + 73) & 1) == 0 && *(a1 + 64))
  {
    v24 = *(a1 + 96);
    if ((a4 & 1) == 0 && *(v24 + 10816) != 1)
    {
      goto LABEL_82;
    }

    sub_19B79A0E8(v24, 4, buf);
    *(a1 + 73) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v25 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Likely false re-enable via Stand->Sit detected. Reset SS FSM.", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      LOWORD(v81) = 0;
      LODWORD(v80) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Likely false re-enable via Stand->Sit detected. Reset SS FSM.", &v81, v80);
      v28 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }

  if (a4)
  {
    v29 = *(a1 + 24);
    if ((*(v29 + 16082) & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_67;
      }

      v30 = sub_19B7397C0(v29 + 5232, a5);
      v31 = sub_19B739E38(*(a1 + 24) + 5232, a5);
      v32 = 3.0;
      if (!*(a1 + 40))
      {
        v32 = 5.0;
      }

      if (v30 > v32 && *&v31 < v32)
      {
LABEL_67:
        if (a2 && *(a1 + 72) <= 1u)
        {
          v71 = *(a1 + 56);
          if (!v71)
          {
            goto LABEL_82;
          }

          v72 = a5 - v71;
          if (a5 <= v71)
          {
            goto LABEL_82;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v73 = off_1EAFE29A0;
          v74 = v72;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = (v74 * 0.000001);
            _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Sit->Stand %.2f seconds before walking detection", buf, 0xCu);
          }

          v75 = sub_19B420058();
          if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
            }

            v81 = 134217984;
            *v82 = (v74 * 0.000001);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Sit->Stand %.2f seconds before walking detection", COERCE_DOUBLE(&v81));
            v77 = v76;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::updateDistractedViewingState(BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v76);
            if (v77 != buf)
            {
              free(v77);
            }
          }

          if (v72 - 9000000 < 0xFFFFFFFFFF953041)
          {
            goto LABEL_82;
          }

          *(a1 + 112) = 3;
          *(a1 + 64) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v78 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = a5;
            _os_log_impl(&dword_19B41C000, v78, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Distracted viewing from sit->stand + walking event. timestampUs, %llu", buf, 0xCu);
          }

          v79 = sub_19B420058();
          if (*(v79 + 160) <= 1 && *(v79 + 164) <= 1 && *(v79 + 168) <= 1 && !*(v79 + 152))
          {
LABEL_81:
            *buf = a5;
            sub_19B79A0E8(a1, 1, buf);
            goto LABEL_82;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v81 = 134217984;
          *v82 = a5;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Distracted viewing from sit->stand + walking event. timestampUs, %llu", &v81);
        }

        else
        {
          *(a1 + 112) = 1;
          *(a1 + 64) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v34 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 72);
            *buf = 67109376;
            *&buf[4] = v35;
            *&buf[8] = 2048;
            *&buf[10] = a5;
            _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Distracted viewing from walking event. numWalking, %d, timestampUs, %llu", buf, 0x12u);
          }

          v36 = sub_19B420058();
          if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
          {
            goto LABEL_81;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v37 = *(a1 + 72);
          v81 = 67109376;
          *v82 = v37;
          *&v82[4] = 2048;
          *&v82[6] = a5;
          LODWORD(v80) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Distracted viewing from walking event. numWalking, %d, timestampUs, %llu", &v81, v80);
        }

        v39 = v38;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedDistractedViewingEvent(TrackingDisableRoute, uint64_t)", "CoreLocation: %s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }

        goto LABEL_81;
      }
    }
  }

LABEL_82:
  if (*(a1 + 48) != a4)
  {
    v40 = sub_19B7397C0(*(a1 + 24) + 5232, a5);
    v41 = sub_19B739E38(*(a1 + 24) + 5232, a5);
    v42 = *&v41;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v43 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 32))
      {
        v44 = "WalkDetector";
      }

      else
      {
        v44 = "StepDetector";
      }

      if (*(a1 + 48))
      {
        v45 = "Walking";
      }

      else
      {
        v45 = "No Walking";
      }

      if (a4)
      {
        v46 = "Walking";
      }

      else
      {
        v46 = "No Walking";
      }

      *buf = 136316162;
      *&buf[4] = v44;
      *&buf[12] = 2082;
      *&buf[14] = v45;
      v90 = 2082;
      v91 = v46;
      v92 = 2050;
      v93 = v40;
      v94 = 2050;
      v95 = v42;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Via %s: Walk Detection changed : From %{public}s -> %{public}s, srcStaticFor, %{public}.2f secs, timeSinceLastSrcFrozen, %{public}.2f secs", buf, 0x34u);
    }

    v47 = sub_19B420058();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      if (*(a1 + 32))
      {
        v48 = "WalkDetector";
      }

      else
      {
        v48 = "StepDetector";
      }

      if (*(a1 + 48))
      {
        v49 = "Walking";
      }

      else
      {
        v49 = "No Walking";
      }

      if (a4)
      {
        v50 = "Walking";
      }

      else
      {
        v50 = "No Walking";
      }

      v81 = 136316162;
      *v82 = v48;
      *&v82[8] = 2082;
      *&v82[10] = v49;
      v83 = 2082;
      v84 = v50;
      v85 = 2050;
      v86 = v40;
      v87 = 2050;
      v88 = v42;
      LODWORD(v80) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMHeadTrackingController] Via %s: Walk Detection changed : From %{public}s -> %{public}s, srcStaticFor, %{public}.2f secs, timeSinceLastSrcFrozen, %{public}.2f secs", &v81, v80);
      v52 = v51;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v51);
      if (v52 != buf)
      {
        free(v52);
      }
    }
  }

  if (a4 && (*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 120))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v53 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v54 = (a5 - *(a1 + 120)) * 0.000001;
        *buf = 134217984;
        *&buf[4] = v54;
        _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between sit and walking: %f seconds", buf, 0xCu);
      }

      v55 = sub_19B420058();
      if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v56 = (a5 - *(a1 + 120)) * 0.000001;
        v81 = 134217984;
        *v82 = v56;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between sit and walking: %f seconds", COERCE_DOUBLE(&v81));
        v58 = v57;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v57);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      v59 = (a5 - *(a1 + 120)) * 0.000001;
      v61 = *(a1 + 168);
      v60 = *(a1 + 176);
      if (v60 <= v59)
      {
        v60 = (a5 - *(a1 + 120)) * 0.000001;
      }

      if (v61 >= v59)
      {
        v61 = (a5 - *(a1 + 120)) * 0.000001;
      }

      *(a1 + 168) = v61;
      *(a1 + 176) = v60;
      *(a1 + 184) = v59 + *(a1 + 184);
      ++*(a1 + 192);
    }

    if (*(a1 + 56))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v62 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v63 = (a5 - *(a1 + 56)) * 0.000001;
        *buf = 134217984;
        *&buf[4] = v63;
        _os_log_impl(&dword_19B41C000, v62, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and walking: %f seconds", buf, 0xCu);
      }

      v64 = sub_19B420058();
      if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v65 = (a5 - *(a1 + 56)) * 0.000001;
        v81 = 134217984;
        *v82 = v65;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMHeadTrackingController] Time between stand and walking: %f seconds", COERCE_DOUBLE(&v81));
        v67 = v66;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v66);
        if (v67 != buf)
        {
          free(v67);
        }
      }

      v68 = (a5 - *(a1 + 56)) * 0.000001;
      v70 = *(a1 + 136);
      v69 = *(a1 + 144);
      if (v69 <= v68)
      {
        v69 = (a5 - *(a1 + 56)) * 0.000001;
      }

      if (v70 >= v68)
      {
        v70 = (a5 - *(a1 + 56)) * 0.000001;
      }

      *(a1 + 136) = v70;
      *(a1 + 144) = v69;
      *(a1 + 152) = v68 + *(a1 + 152);
      ++*(a1 + 160);
    }
  }

  *(a1 + 48) = a4;
}
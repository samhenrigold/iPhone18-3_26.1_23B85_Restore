void sub_2394CF410(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  if (*(a1 + 528) == 4)
  {
    if (a2 != 219 && a2 != 50)
    {
      goto LABEL_7;
    }

    v8 = sub_239493738(*(a1 + 88));
    v9 = *(v8 + 8);
    v14 = *v8;
    LODWORD(v15) = v9;
    sub_2394CE170(a1, 2);
    *(a1 + 533) = 1;
    v10 = sub_2394E06B0();
    if (((*v10)[4])(v10, a1 + 216))
    {
      *(a1 + 533) = 0;
      sub_2394CE170(a1, 1);
      if (!*(a1 + 534) || sub_2394CF600(a1, &v18))
      {
LABEL_7:
        LODWORD(v14) = 1;
        v15 = "core_dev_operational_discovery";
        v16 = a2;
        v17 = 3;
        sub_23948BD20(&v14);
        LODWORD(v14) = 1;
        v15 = "core_dev_case_session";
        v16 = a2;
        v17 = 3;
        sub_23948BD20(&v14);
        sub_2394CEF6C(a1, a2, a3, a4, 0);
        return;
      }

      sub_2394CE170(a1, 6);
      v12 = v18;
      v13 = sub_2393E9304(&v14);
      sub_2394D00D4(a1, a2, a3, (v12 + v13 / 0x3E8 + 1));
    }
  }

  else
  {
    v11 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "OnSessionEstablishmentError was called while we were not connecting", &v14, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "OnSessionEstablishmentError was called while we were not connecting");
    }
  }
}

unint64_t sub_2394CF600(uint64_t a1, _WORD *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 534))
  {
    sub_239536ACC();
  }

  v3 = *(*(a1 + 40) + 88);
  if (v3 && *(v3 + 24))
  {
    sub_2394CE170(a1, 1);
    v5 = *(a1 + 535);
    if (!*(a1 + 535))
    {
      sub_239536A34();
    }

    v6 = v5 - 1;
    if ((v5 - 1) >= 5)
    {
      v6 = 5;
    }

    v7 = 1000 << v6;
    if (*(a1 + 530))
    {
      if (v7 <= *(a1 + 530))
      {
        v7 = *(a1 + 530);
      }

      *(a1 + 530) = 0;
    }

    if ((v5 & 1) == 0)
    {
      sub_239476008(buf);
      v24 = sub_239476060();
      v25 = v8;
      if (buf[0] == 1)
      {
        v9 = sub_238DD173C(buf, v8);
      }

      else
      {
        v9 = &v24;
      }

      v7 += sub_2393E93E8(v9);
    }

    *a2 = v7 / 0x3E8;
    v12 = *(*(*(a1 + 40) + 88) + 24);
    v13 = (*(*v12 + 40))(v12, v7, sub_2394D0254, a1);
    v10 = v13;
    v11 = HIDWORD(v13);
    v14 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 535);
      v16 = *(a1 + 534);
      v17 = *a2;
      v18 = sub_2393C9138();
      *buf = 67109890;
      v27 = v15;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "OperationalSessionSetup:attempts done: %u, attempts left: %u, retry delay %us, status %s", buf, 0x1Eu);
    }

    if (sub_2393D5398(2u))
    {
      v19 = *(a1 + 535);
      v20 = *(a1 + 534);
      v21 = *a2;
      v22 = sub_2393C9138();
      sub_2393D5320(34, 2, "OperationalSessionSetup:attempts done: %u, attempts left: %u, retry delay %us, status %s", v19, v20, v21, v22);
    }
  }

  else
  {
    v10 = 3;
    LODWORD(v11) = 733;
  }

  return v10 | (v11 << 32);
}

void sub_2394CF874(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 528) == 4)
  {
    v8 = 1;
    v9 = "core_dev_operational_discovery";
    v10 = 0;
    v11 = 3;
    sub_23948BD20(&v8);
    v8 = 1;
    v9 = "core_dev_case_session";
    v10 = 0;
    v11 = 3;
    sub_23948BD20(&v8);
    if (sub_239495C6C((a1 + 144), a2))
    {
      sub_2394CE170(a1, 5);
      v4 = a1;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = "src/app/OperationalSessionSetup.cpp";
      v4 = a1;
      v5 = 0x20800000003;
    }

    sub_2394CEF6C(v4, v5, v6, 1, 0);
  }

  else
  {
    v7 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "OnSessionEstablished was called while we were not connecting", &v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "OnSessionEstablished was called while we were not connecting");
    }
  }
}

uint64_t sub_2394CF9AC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBD970;
  *(a1 + 8) = &unk_284BBD9C8;
  v2 = (a1 + 224);
  if (*(a1 + 224) && *(a1 + 232))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 104);
      v5 = *(a1 + 96);
      *buf = 67109632;
      *v14 = v4;
      *&v14[4] = 1024;
      *&v14[6] = HIDWORD(v5);
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: Cancelling incomplete address resolution as device is being deleted.", buf, 0x14u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "OperationalSessionSetup[%u:%08X%08X]: Cancelling incomplete address resolution as device is being deleted.", *(a1 + 104), HIDWORD(*(a1 + 96)), *(a1 + 96));
    }

    v6 = sub_2394E06B0();
    if (((*v6)[5])(v6, a1 + 216, 1))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315138;
        *v14 = v7;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Lookup cancel failed: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v8 = sub_2393C9138();
        sub_2393D5320(34, 1, "Lookup cancel failed: %s", v8);
      }
    }
  }

  if (*(a1 + 88))
  {
    (*(**(a1 + 80) + 8))(*(a1 + 80));
  }

  v9 = *(*(a1 + 40) + 88);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      (*(*v10 + 72))(v10, sub_2394D0254, a1);
    }
  }

  sub_2394CEF6C(a1, 0x23800000074uLL, "src/app/OperationalSessionSetup.cpp", 1, 1);
  v11 = *(a1 + 560);
  if (v11)
  {
    *(a1 + 560) = 0;
    v11(a1 + 544);
  }

  sub_238EA9350(v2);
  sub_2394D0350((a1 + 184));
  sub_239495880(a1 + 144);
  return a1;
}

void sub_2394CFC9C(uint64_t a1)
{
  sub_2394CF9AC(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CFCD4(uint64_t a1)
{
  sub_2394CF9AC(a1 - 8);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394CFD10(void *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(result + 529) & 1) == 0)
  {
    v1 = result;
    if (*(result + 528) != 1)
    {
      sub_239536B64();
    }

    *(result + 529) = 1;
    sub_2394CE170(result, 2);
    result = sub_2394CE6E8(v1);
    v3 = result;
    if (result)
    {
      v4 = v2;
      v5 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v8 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to look up peer address: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v6 = sub_2393C9138();
        sub_2393D5320(34, 1, "Failed to look up peer address: %s", v6);
      }

      return sub_2394CEF6C(v1, v3, v4, 1, 0);
    }
  }

  return result;
}

void *sub_2394CFE64(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 96);
    *buf = 67109890;
    v18 = v8;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = HIDWORD(v9);
    HIWORD(v19) = 1024;
    v20 = v9;
    v21 = 2080;
    v22 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "OperationalSessionSetup[%u:%08X%08X]: operational discovery failed: %s", buf, 0x1Eu);
  }

  if (sub_2393D5398(1u))
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 96);
    v12 = sub_2393C9138();
    sub_2393D5320(34, 1, "OperationalSessionSetup[%u:%08X%08X]: operational discovery failed: %s", v10, HIDWORD(v11), v11, v12);
  }

  if (*(a1 + 528) == 2)
  {
    v13 = *(a1 + 536);
    if (*(a1 + 536))
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = v13;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Retrying operational DNS-SD discovery. Attempts remaining: %u", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(34, 2, "Retrying operational DNS-SD discovery. Attempts remaining: %u", *(a1 + 536));
      }

      v14 = *(a1 + 534);
      if (v14 != 255)
      {
        *(a1 + 534) = v14 + 1;
      }

      v15 = *(a1 + 535);
      if (*(a1 + 535))
      {
        LOBYTE(v15) = v15 - 1;
        *(a1 + 535) = v15;
        v15 = v15;
      }

      *buf = 2;
      v19 = "core_dev_operational_discovery_attempt_ctr";
      v20 = v15;
      LOBYTE(v21) = 2;
      sub_23948BD20(buf);
      if (!sub_2394CE6E8(a1))
      {
        return sub_2394D00D4(a1, a3, a4, 60);
      }
    }
  }

  *buf = 1;
  v19 = "core_dev_operational_discovery";
  v20 = a3;
  LOBYTE(v21) = 3;
  sub_23948BD20(buf);
  return sub_2394CEF6C(a1, a3, a4, 1, 0);
}

uint64_t sub_2394D00D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v4 = result + 544;
  if (*(result + 544) != result + 544)
  {
    v5 = result;
    v6 = *(result + 552);
    v19[0] = *(result + 544);
    v19[1] = v6;
    *v6 = v19;
    v7 = v19[0];
    *(v19[0] + 8) = v19;
    *(result + 552) = v4;
    *(result + 544) = v4;
    if (v7 != v19)
    {
      v8 = a4;
      do
      {
        v16 = &v16;
        v17 = &v16;
        v18 = 0;
        v11 = *(v7 + 16);
        if (v11)
        {
          *(v7 + 16) = 0;
          v11(v7);
          v12 = *(v7 + 16);
          if (v12)
          {
            *(v7 + 16) = 0;
            v12(v7);
          }
        }

        v13 = v17;
        *(v7 + 8) = v17;
        *(v7 + 16) = sub_2394D0334;
        *v13 = v7;
        v17 = v7;
        *v7 = &v16;
        result = (*(v7 + 32))(*(v7 + 24), v5 + 96, a2, a3, v8);
        if (v16 != &v16)
        {
          result = sub_2394D02C0(v5, v7);
        }

        v14 = v18;
        if (v18)
        {
          v18 = 0;
          result = v14(&v16);
        }

        v7 = v19[0];
      }

      while (v19[0] != v19);
    }

    v15 = v20;
    if (v20)
    {
      v20 = 0;
      return v15(v19, a2, a3, a4);
    }
  }

  return result;
}

_BYTE *sub_2394D021C(_BYTE *result, int a2)
{
  if (a2)
  {
    v2 = a2 - (result[528] != 1);
    if (result[534] < v2)
    {
      result[534] = v2;
    }

    if (result[536] < v2)
    {
      result[536] = v2;
    }
  }

  return result;
}

void *sub_2394D0254(uint64_t a1, uint64_t a2)
{
  sub_2394CE170(a2, 2);
  result = sub_2394CE6E8(a2);
  if (result)
  {

    return sub_2394CEF6C(a2, result, v4, 1, 0);
  }

  return result;
}

uint64_t sub_2394D02C0(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[2];
  if (v4)
  {
    a2[2] = 0;
    result = v4(a2);
    v5 = a2[2];
    if (v5)
    {
      a2[2] = 0;
      result = v5(a2);
    }
  }

  a2[2] = sub_2394D0334;
  v6 = *(v3 + 552);
  a2[1] = v6;
  *v6 = a2;
  *(v3 + 552) = a2;
  *a2 = v3 + 544;
  return result;
}

void *sub_2394D0334(void *result)
{
  v1 = result[1];
  *(*result + 8) = v1;
  *v1 = *result;
  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

void *sub_2394D0350(void *a1)
{
  v2 = *a1;
  if (*a1 != a1)
  {
    do
    {
      v3 = *v2;
      *v2 = v2;
      v2[1] = v2;
      v2[2] = 0;
      v2 = v3;
    }

    while (v3 != a1);
  }

  *a1 = a1;
  a1[1] = a1;
  v4 = a1[2];
  if (v4)
  {
    a1[2] = 0;
    v4(a1);
  }

  return a1;
}

uint64_t sub_2394D03B0(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  v7 = result;
  if (a2)
  {
    v8 = a2[2];
    if (v8)
    {
      a2[2] = 0;
      result = v8(a2);
    }

    v6[2] = sub_2394D04B4;
    *v6 = v7;
    v9 = *(v7 + 8);
    v6[1] = v9;
    *v9 = v6;
    *(v7 + 8) = v6;
  }

  if (a3)
  {
    v10 = a3[2];
    if (v10)
    {
      a3[2] = 0;
      result = v10(a3);
    }

    a3[2] = sub_2394D04F8;
    *a3 = v7;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (!v6)
    {
      v6 = a3;
    }

    a3[1] = *(v11 + 8);
    **(v7 + 8) = a3;
    *(v7 + 8) = a3;
  }

  if (a4)
  {
    v12 = a4[2];
    if (v12)
    {
      a4[2] = 0;
      result = v12(a4);
    }

    a4[2] = sub_2394D053C;
    *a4 = v7;
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }

    a4[1] = *(v13 + 8);
    **(v7 + 8) = a4;
    *(v7 + 8) = a4;
  }

  return result;
}

uint64_t sub_2394D04B4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

uint64_t sub_2394D04F8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

uint64_t sub_2394D053C(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

BOOL sub_2394D0580(void *a1, void *a2, void *a3, void *a4)
{
  v4 = *a1;
  if (*a1 != a1)
  {
    v5 = v4[1];
    if (v4[2] == sub_2394D04B4)
    {
      *a2 = v4;
      v6 = *v4;
    }

    else
    {
      *a2 = 0;
      v6 = v4;
    }

    if (v6[1] == v5 && v6[2] == sub_2394D04F8)
    {
      *a3 = v6;
      v6 = *v6;
    }

    else
    {
      *a3 = 0;
    }

    if (v6[1] != v5 || v6[2] != sub_2394D053C)
    {
      v6 = 0;
    }

    *a4 = v6;
  }

  return v4 != a1;
}

uint64_t sub_2394D0624(float *a1, __int16 a2)
{
  v6 = a2;
  if ((*(*a1 + 32))(a1))
  {
    v3 = 0x1B00000000;
    v4 = 47;
  }

  else
  {
    sub_2394D088C(a1 + 2, &v6, &v6);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394D06AC(void *a1, __int16 a2)
{
  v6 = a2;
  if ((*(*a1 + 32))(a1))
  {
    sub_2394D0D08(a1 + 1, &v6);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x2200000000;
    v4 = 16;
  }

  return v4 | v3;
}

uint64_t sub_2394D076C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    v5 = a1[3];
    v6 = *(v5 + 16);
    result = sub_2394D0DF8(a1 + 1, v5);
    *(a2 + 2) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void *sub_2394D07E4(void *a1)
{
  *a1 = &unk_284BBDA40;
  sub_2394C763C((a1 + 1));
  return a1;
}

void sub_2394D0828(void *a1)
{
  *a1 = &unk_284BBDA40;
  sub_2394C763C((a1 + 1));

  JUMPOUT(0x23EE77B60);
}

uint64_t **sub_2394D088C(float *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *(a1 + 1);
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_2394D0AAC(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2394D0B9C(result, prime);
    }
  }
}

void sub_2394D0B9C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_238EAEDBC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_2394D0D08(void *a1, unsigned __int16 *a2)
{
  result = sub_2394D0D40(a1, a2);
  if (result)
  {
    sub_2394D0DF8(a1, result);
    return 1;
  }

  return result;
}

uint64_t ***sub_2394D0D40(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394D0DF8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2394D0E3C(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_2394D0E3C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

unint64_t sub_2394D0F78(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (sub_2393BC2A0(a2, a2))
  {
    v9 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 112);
      if (sub_2394703E0(a2))
      {
        v11 = 105;
      }

      else
      {
        v11 = 114;
      }

      *buf = 67109376;
      *v61 = v10;
      *&v61[4] = 1024;
      *&v61[6] = v11;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Dropping Timed Request on group exchange %u%c", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v12 = *(a2 + 112);
      v13 = sub_2394703E0(a2);
      v14 = 114;
      if (v13)
      {
        v14 = 105;
      }

      sub_2393D5320(13, 1, "Dropping Timed Request on group exchange %u%c", v12, v14);
    }

LABEL_11:
    LODWORD(v15) = 0;
LABEL_12:
    v16 = 0;
    return v16 | (v15 << 32);
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 2)
    {
      v17 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      v18 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a2 + 112);
        *buf = 67110144;
        *v61 = HIDWORD(v17);
        if (sub_2394703E0(a2))
        {
          v20 = 105;
        }

        else
        {
          v20 = 114;
        }

        *&v61[4] = 1024;
        *&v61[6] = v17;
        *v62 = 2048;
        *&v62[2] = a1;
        v63 = 1024;
        v64 = v19;
        v65 = 1024;
        v66 = v20;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "Timed following action arrived at 0x%08X%08X: handler %p exchange %u%c", buf, 0x24u);
      }

      if (sub_2393D5398(3u))
      {
        v21 = *(a2 + 112);
        v22 = sub_2394703E0(a2);
        v23 = 114;
        if (v22)
        {
          v23 = 105;
        }

        sub_2393D5320(13, 3, "Timed following action arrived at 0x%08X%08X: handler %p exchange %u%c", HIDWORD(v17), v17, a1, v21, v23);
      }

      if (*(a1 + 24) < v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = *(a2 + 112);
          v25 = sub_2394703E0(a2);
          *buf = 134218496;
          *v61 = a1;
          if (v25)
          {
            v26 = 105;
          }

          else
          {
            v26 = 114;
          }

          *&v61[8] = 1024;
          *v62 = v24;
          *&v62[4] = 1024;
          *&v62[6] = v26;
          _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Timeout expired: handler %p exchange %u%c", buf, 0x18u);
        }

        if (sub_2393D5398(1u))
        {
          v27 = *(a2 + 112);
          v28 = sub_2394703E0(a2);
          v29 = 114;
          if (v28)
          {
            v29 = 105;
          }

          sub_2393D5320(13, 1, "Timeout expired: handler %p exchange %u%c", a1, v27, v29);
        }

        v30 = 148;
LABEL_61:
        v44 = sub_2394DEE10(v30, a2, 0);
        v16 = v44;
        v15 = HIDWORD(v44);
        return v16 | (v15 << 32);
      }

      if (!*(a3 + 2))
      {
        v46 = *(a3 + 3);
        v47 = *a3;
        if (v46 == 1 && v47 == 8)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v48 = *(a2 + 112);
            v49 = sub_2394703E0(a2);
            *buf = 134218496;
            *v61 = a1;
            if (v49)
            {
              v50 = 105;
            }

            else
            {
              v50 = 114;
            }

            *&v61[8] = 1024;
            *v62 = v48;
            *&v62[4] = 1024;
            *&v62[6] = v50;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "Handing timed invoke to IM engine: handler %p exchange %u%c", buf, 0x18u);
          }

          if (sub_2393D5398(3u))
          {
            v51 = *(a2 + 112);
            v52 = sub_2394703E0(a2);
            v53 = 114;
            if (v52)
            {
              v53 = 105;
            }

            sub_2393D5320(13, 3, "Handing timed invoke to IM engine: handler %p exchange %u%c", a1, v51, v53);
          }

          (*(**(a1 + 16) + 16))(*(a1 + 16), a1, a2, a3, a4);
          goto LABEL_11;
        }

        if (v46 == 1 && v47 == 6)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v54 = *(a2 + 112);
            v55 = sub_2394703E0(a2);
            *buf = 134218496;
            *v61 = a1;
            if (v55)
            {
              v56 = 105;
            }

            else
            {
              v56 = 114;
            }

            *&v61[8] = 1024;
            *v62 = v54;
            *&v62[4] = 1024;
            *&v62[6] = v56;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "Handing timed write to IM engine: handler %p exchange %u%c", buf, 0x18u);
          }

          if (sub_2393D5398(3u))
          {
            v57 = *(a2 + 112);
            v58 = sub_2394703E0(a2);
            v59 = 114;
            if (v58)
            {
              v59 = 105;
            }

            sub_2393D5320(13, 3, "Handing timed write to IM engine: handler %p exchange %u%c", a1, v57, v59);
          }

          (*(**(a1 + 16) + 24))(*(a1 + 16), a1, a2, a3, a4);
          goto LABEL_11;
        }
      }
    }

    else
    {
      v18 = sub_2393D9044(0xDu);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a2 + 112);
      v39 = sub_2394703E0(a2);
      *buf = 134218496;
      *v61 = a1;
      if (v39)
      {
        v40 = 105;
      }

      else
      {
        v40 = 114;
      }

      *&v61[8] = 1024;
      *v62 = v38;
      *&v62[4] = 1024;
      *&v62[6] = v40;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Unexpected unknown message in tiemd interaction: handler %p exchange %u%c", buf, 0x18u);
    }

    if (sub_2393D5398(1u))
    {
      v41 = *(a2 + 112);
      v42 = sub_2394703E0(a2);
      v43 = 114;
      if (v42)
      {
        v43 = 105;
      }

      sub_2393D5320(13, 1, "Unexpected unknown message in tiemd interaction: handler %p exchange %u%c", a1, v41, v43);
    }

    v30 = 128;
    goto LABEL_61;
  }

  if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 10)
  {
    sub_239536BFC();
  }

  *(a1 + 8) = 1;
  v31 = sub_2394D16D4(a1, a2, v8, a4);
  v16 = v31;
  v15 = HIDWORD(v31);
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a2 + 112);
    *buf = 134218496;
    *v61 = a1;
    if (sub_2394703E0(a2))
    {
      v34 = 105;
    }

    else
    {
      v34 = 114;
    }

    *&v61[8] = 1024;
    *v62 = v33;
    *&v62[4] = 1024;
    *&v62[6] = v34;
    _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Failed to parse Timed Request action: handler %p exchange %u%c", buf, 0x18u);
  }

  if (sub_2393D5398(1u))
  {
    v35 = *(a2 + 112);
    v36 = sub_2394703E0(a2);
    v37 = 114;
    if (v36)
    {
      v37 = 105;
    }

    sub_2393D5320(13, 1, "Failed to parse Timed Request action: handler %p exchange %u%c", a1, v35, v37);
  }

  sub_2394DEE10(0x80u, a2, 0);
  return v16 | (v15 << 32);
}

unint64_t sub_2394D16D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v33);
  v34 = 0;
  sub_238DD2F90(v33, a4);
  sub_2393DD178(v32);
  v7 = sub_2393DD0A8(v32, v33);
  if (v7)
  {
    goto LABEL_17;
  }

  v31 = 0;
  v7 = sub_2393DB984(v32, &v31);
  if (v7)
  {
    goto LABEL_17;
  }

  v7 = sub_2393DD104(v32);
  if (v7)
  {
    goto LABEL_17;
  }

  v8 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v31;
    v10 = *(a2 + 112);
    v11 = sub_2394703E0(a2);
    buf = __PAIR64__(v9, 67109888);
    v36 = 2048;
    if (v11)
    {
      v12 = 105;
    }

    else
    {
      v12 = 114;
    }

    *v37 = a1;
    *&v37[8] = 1024;
    *&v37[10] = v10;
    v38 = 1024;
    v39 = v12;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Got Timed Request with timeout %u: handler %p exchange %u%c", &buf, 0x1Eu);
  }

  if (sub_2393D5398(3u))
  {
    v14 = v31;
    v15 = *(a2 + 112);
    v16 = sub_2394703E0(a2);
    v17 = 114;
    if (v16)
    {
      v17 = 105;
    }

    sub_2393D5320(13, 3, "Got Timed Request with timeout %u: handler %p exchange %u%c", v14, a1, v15, v17);
  }

  v18 = v31;
  sub_238EA6DC0(a2, &buf, v13);
  v19 = sub_239495550(buf, 2000, 0);
  v20 = v19 <= v18 ? v18 : v19;
  sub_239470470(a2, v20);
  (*(*buf + 32))(buf);
  v7 = sub_2394DEE10(0, a2, 1);
  if (v7)
  {
LABEL_17:
    v21 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 8) = 2;
    v23 = (*(*off_27DF765E8 + 2))(off_27DF765E8) + v18;
    *(a1 + 24) = v23;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v24 = *(a2 + 112);
      v25 = sub_2394703E0(a2);
      LODWORD(buf) = 67110144;
      HIDWORD(buf) = HIDWORD(v23);
      if (v25)
      {
        v26 = 105;
      }

      else
      {
        v26 = 114;
      }

      v36 = 1024;
      *v37 = v23;
      *&v37[4] = 2048;
      *&v37[6] = a1;
      v38 = 1024;
      v39 = v24;
      v40 = 1024;
      v41 = v26;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Timed Request time limit 0x%08X%08X: handler %p exchange %u%c", &buf, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      v27 = *(a1 + 24);
      v28 = *(a2 + 112);
      v29 = sub_2394703E0(a2);
      v30 = 114;
      if (v29)
      {
        v30 = 105;
      }

      sub_2393D5320(13, 3, "Timed Request time limit 0x%08X%08X: handler %p exchange %u%c", HIDWORD(v27), v27, a1, v28, v30);
    }

    v21 = 0;
    LODWORD(v7) = 0;
  }

  if (v34)
  {
    sub_2393D96C8(v34);
  }

  return v7 | v21;
}

unint64_t sub_2394D1A74(uint64_t a1, unsigned int a2)
{
  sub_2393D9C18(0x19uLL, 0x26u, &v12);
  if (v12)
  {
    sub_2393C7B90(v9);
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = &unk_284BB83A8;
    v11 = 0;
    sub_238EA16C4(v10, &v12, 0);
    sub_2393C7BF0(v9, v10, 0xFFFFFFFF);
    sub_2393DB79C(&v8);
    v4 = sub_2393DD7B8(&v8, v9);
    if (!v4)
    {
      sub_2393DDB84(&v8, a2);
      v4 = v8;
      if (!v8)
      {
        v4 = sub_238DD2EFC(v9, &v12);
        if (!v4)
        {
          v7 = 1;
          v4 = sub_239470478(a1, 0x10000u, 10, &v12, &v7);
        }
      }
    }

    v5 = HIDWORD(v4);
    sub_2393B8400(v10);
    if (v12)
    {
      sub_2393D96C8(v12);
    }
  }

  else
  {
    LODWORD(v4) = 11;
    LODWORD(v5) = 40;
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2394D1BD0(uint64_t a1)
{
  sub_2394D1C40(a1, 5);
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

void sub_2394D1C40(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v6 = 10;
    v7 = 2080;
    v8 = sub_2394D2ACC(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "WriteClient moving to [%10.10s]", buf, 0x12u);
  }

  if (sub_2393D5398(3u))
  {
    v4 = sub_2394D2ACC(a1);
    sub_2393D5320(13, 3, "WriteClient moving to [%10.10s]", v4);
  }
}

unint64_t sub_2394D1D28(uint64_t a1, void *a2)
{
  sub_2393C5AAC(v16);
  v17 = 0;
  sub_2393C5AAC(v14);
  sub_2393DD178(v13);
  sub_2393DD178(v12);
  sub_238DD2F90(v16, a2);
  v4 = sub_2393DD0A8(v13, v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = sub_2393DD1DC(v13, v12);
  v4 = v6;
  if (v6 == 33)
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    if (v6)
    {
LABEL_2:
      v5 = v4 & 0xFFFFFFFF00000000;
      goto LABEL_5;
    }

    sub_2393DD1C8(v12, v14);
    LODWORD(v4) = 36;
    while (1)
    {
      v8 = sub_2393C6B34(v14);
      if (v8)
      {
        break;
      }

      if (v15 != 256)
      {
        v5 = 0x4700000000;
        goto LABEL_5;
      }

      sub_2393DD178(v11);
      v8 = sub_2393DD7F4(v11, v14);
      if (!v8)
      {
        v8 = sub_2394D1E90(a1, v11);
        if (!v8)
        {
          continue;
        }
      }

      v5 = v8 & 0xFFFFFFFF00000000;
LABEL_20:
      LODWORD(v4) = v8;
      goto LABEL_5;
    }

    if (v8 == 33)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v5 = v9 & 0xFFFFFFFF00000000;
      goto LABEL_20;
    }

    v10 = sub_2393DD104(v13);
    LODWORD(v4) = v10;
    v5 = v10 & 0xFFFFFFFF00000000;
  }

LABEL_5:
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  return v4 | v5;
}

unint64_t sub_2394D1E90(uint64_t a1, int *a2)
{
  sub_2393DD178(v13);
  v11 = 0;
  v12 = 0;
  sub_2393DD178(v10);
  v7 = 0;
  v8 = 0;
  v9[12] = 0;
  memset(v9, 0, 11);
  v4 = sub_2393DB6C8(a2, v13);
  if (!v4)
  {
    v4 = sub_2393DAC08(v13, &v7, 0);
    if (!v4)
    {
      v4 = sub_2393DB490(a2, v10);
      if (!v4)
      {
        v4 = sub_2393DD458(v10, &v11);
        if (!v4)
        {
          v6 = *(a1 + 40);
          if (v6)
          {
            (*(*v6 + 16))(v6, a1, &v7, v11 | (v12 << 16));
          }
        }
      }
    }
  }

  return v4;
}

unint64_t sub_2394D1F98(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2393DA93C((a1 + 184));
  v6 = *(a1 + 184);
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = v4;
  if (*(a2 + 16) == 1)
  {
    v8 = sub_238DE3698(a2 + 16, v5);
    sub_2393DA83C(v7, *v8);
    *(a1 + 306) = 1;
  }

  v6 = *v7;
  if (*v7)
  {
LABEL_5:
    v9 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = sub_2393DA7FC(v7);
    v12 = v11;
    v13 = *a2;
    if (v13 != 0xFFFF)
    {
      sub_2393DAEE8(v11, v13);
    }

    v14 = sub_2393DAF28(v12, *(a2 + 1));
    sub_2393DAF68(v14, *(a2 + 2));
    v15 = *(a2 + 14);
    if (v15 >= 2)
    {
      if (v15 != 4)
      {
        v9 = 0x7600000000;
        LODWORD(v6) = 108;
        return v9 | v6;
      }

      LOBYTE(v17) = 0;
      v18 = 0;
      sub_2393DAFA8(v12, &v17);
    }

    v16 = sub_2393DA87C(v12);
    v9 = v16 & 0xFFFFFFFF00000000;
    if (v16)
    {
      LODWORD(v6) = v16;
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (!v16)
    {
      v9 = 0;
    }
  }

  return v9 | v6;
}

unint64_t sub_2394D20BC(uint64_t a1)
{
  v2 = sub_2393DA98C(a1 + 184);
  v3 = sub_2393DA87C(v2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394D1C40(a1, 1);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2394D2134(uint64_t a1, int a2)
{
  v15 = 0;
  if (*(a1 + 48) != 1)
  {
    v8 = 3;
    v7 = 142;
    return v8 | (v7 << 32);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(v3 + 60) == 21169)
    {
      v4 = *(v3 + 52);
      v5 = v4 >= 7;
      v6 = v4 - 7;
      if (v5)
      {
        *(v3 + 52) = v6;
        *(v3 + 40) += 7;
        v11 = sub_2393DA87C(a1 + 184);
        v8 = v11;
        if (v11)
        {
          v7 = HIDWORD(v11);
        }

        else
        {
          v12 = sub_2393DD394((a1 + 152), a2);
          v13 = sub_2393DD3D4(v12);
          if (v13 || (v13 = sub_238DD2EFC(a1 + 56, &v15), v13))
          {
            v7 = HIDWORD(v13);
            v8 = v13;
          }

          else
          {
            v14 = *(a1 + 296);
            if (!v14)
            {
              v7 = 0;
              v8 = 0;
              *(a1 + 296) = v15;
              return v8 | (v7 << 32);
            }

            sub_2393D982C(v14, &v15);
            v8 = 0;
            v7 = 0;
          }
        }
      }

      else
      {
        v7 = 176;
        v8 = 11;
      }

      goto LABEL_10;
    }

    v7 = 175;
  }

  else
  {
    v7 = 145;
  }

  v8 = 3;
LABEL_10:
  if (v15)
  {
    sub_2393D96C8(v15);
  }

  return v8 | (v7 << 32);
}

unint64_t sub_2394D2294(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return 0;
  }

  else
  {
    return sub_2394D22C8(a1);
  }
}

unint64_t sub_2394D22C8(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (v2 = sub_2394D2134(a1, 1), v2))
  {
    v3 = HIDWORD(v2);
  }

  else if (*(a1 + 288) == 1 && *(a1 + 296))
  {
    v3 = 175;
    LODWORD(v2) = 11;
  }

  else
  {
    sub_2393D9C18(0x4AAuLL, 0x26u, &v9);
    if (v9)
    {
      if (sub_2393D980C(v9) < 0x4AB)
      {
        v4 = 23;
      }

      else
      {
        v4 = (sub_2393D980C(v9) - 1171);
      }

      sub_238EA16C4(a1 + 120, &v9, 0);
      sub_2393C7BF0(a1 + 56, a1 + 120, 0xFFFFFFFF);
      v6 = sub_2393C7D60(a1 + 56, v4);
      v5 = v6;
      if (v6)
      {
        v3 = HIDWORD(v6);
      }

      else
      {
        v7 = sub_2393DD7B8(a1 + 152, a1 + 56);
        if (v7)
        {
          v3 = HIDWORD(v7);
          v5 = v7;
        }

        else
        {
          sub_2393DAE68((a1 + 152), *(a1 + 292));
          sub_2393DC99C((a1 + 152), *(a1 + 288));
          v5 = *(a1 + 152);
          if (v5 || (sub_2393DDBE0((a1 + 152)), (v5 = *(a1 + 152)) != 0))
          {
            v3 = *(a1 + 156);
          }

          else if (*(a1 + 168))
          {
            v5 = 0;
            v3 = 0;
          }

          else
          {
            v3 = 210;
            v5 = 3;
          }
        }
      }

      if (v9)
      {
        sub_2393D96C8(v9);
      }
    }

    else
    {
      v5 = 11;
      v3 = 178;
    }

    LODWORD(v2) = v5;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_2394D247C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C5AAC(v10);
  sub_2393C5BDC(v10, a3);
  v6 = sub_2394D1F98(a1, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v9)
  {
    v7 = 0xE000000000;
    LODWORD(v6) = 3;
    return v7 | v6;
  }

  v6 = sub_2393C8964(v9, 2uLL, v10);
  if (v6)
  {
LABEL_2:
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2394D20BC(a1);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}

unint64_t sub_2394D2538(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v15);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v17 = v6[2];
  v18 = v7;
  v15 = v9;
  v16 = v8;
  result = sub_2394D247C(a1, a2, a3);
  if (result == 25 || result == 11)
  {
    v11 = *(a1 + 200);
    v12 = v15;
    v13 = v16;
    v14 = v18;
    v11[2] = v17;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    result = sub_2394D22C8(a1);
    if (!result)
    {
      return sub_2394D247C(a1, a2, a3);
    }
  }

  return result;
}

unint64_t sub_2394D25E4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  if (*(a1 + 48) != 1)
  {
    v8 = sub_2394D22C8(a1);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  if (*(a2 + 14) || sub_2393C5C40(a3) != 22)
  {
    v8 = sub_2394D2538(a1, a2, a3);
    goto LABEL_14;
  }

  sub_2393C5AAC(v22);
  sub_2393C5AAC(v21);
  v20 = 0;
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = a2[6];
  v17 = *(a2 + 14);
  v18 = *(a2 + 16);
  if (v18 == 1)
  {
    v19 = *(a2 + 5);
  }

  if (a4 != 1 && HIDWORD(v14) == 31)
  {
    sub_2393C5BDC(v22, a3);
    sub_2393C67F8(v22, v21);
    LOBYTE(v13[0]) = 0;
    v8 = sub_2394D27BC(a1, &v14, v21, v13, &v20);
    if (!v8)
    {
      if (LOBYTE(v13[0]) != 1)
      {
        v10 = 0;
        LODWORD(v8) = 0;
        return v8 | v10;
      }

      v8 = sub_2394D22C8(a1);
      if (!v8)
      {
        v9 = v20;
        goto LABEL_18;
      }
    }

LABEL_14:
    v10 = v8 & 0xFFFFFFFF00000000;
    return v8 | v10;
  }

  v13[0] = 0;
  v13[1] = 0;
  v8 = sub_238EFAB4C(a1, &v14, v13);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
LABEL_18:
  v17 = 4;
  sub_2393C5BDC(v22, a3);
  sub_2393C67F8(v22, v21);
  v12 = 0;
  while (1)
  {
    v8 = sub_2393C6B34(v21);
    if (v8)
    {
      break;
    }

    if (v9 < ++v12)
    {
      v8 = sub_2394D2538(a1, &v14, v21);
      if (v8)
      {
        goto LABEL_14;
      }
    }
  }

  v10 = v8 & 0xFFFFFFFF00000000;
  if (v8 == 33)
  {
    v10 = 0;
    LODWORD(v8) = 0;
  }

  return v8 | v10;
}

unint64_t sub_2394D27BC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v21);
    for (i = 0; ; i = *a5 + 1)
    {
      *a5 = i;
      result = sub_2393C6B34(a3);
      if (result)
      {
        break;
      }

      v12 = v10[2];
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v23 = v12[2];
      v24 = v13;
      v21 = v15;
      v22 = v14;
      result = sub_2393C8964(v12, 0x100uLL, a3);
      if (result == 11 || result == 25)
      {
        v17 = v10[2];
        v18 = v21;
        v19 = v22;
        v20 = v24;
        v17[2] = v23;
        v17[3] = v20;
        *v17 = v18;
        v17[1] = v19;
        sub_2393D06DC(v10);
        *a4 = 1;
        return sub_2394D2A18(a1);
      }

      if (result)
      {
        return result;
      }
    }

    if (result != 33)
    {
      return result;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2394D28A4(uint64_t a1, unsigned __int16 *a2)
{
  sub_2393C7B90(&v16);
  v4 = *(a1 + 200);
  v5 = v4[3];
  v7 = *v4;
  v6 = v4[1];
  v18 = v4[2];
  v19 = v5;
  v16 = v7;
  v17 = v6;
  v8 = sub_2394D295C(a1, a2);
  if ((v8 == 25 || v8 == 11) && ((v9 = *(a1 + 200), v10 = v16, v11 = v17, v12 = v19, v9[2] = v18, v9[3] = v12, *v9 = v10, v9[1] = v11, sub_2393D06DC((a1 + 184)), v13 = sub_2394D22C8(a1), v13) || (v13 = sub_2394D295C(a1, a2), v13)))
  {
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v14 = 0;
    LODWORD(v13) = 0;
  }

  return v13 | v14;
}

unint64_t sub_2394D295C(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2393C7D60(a1 + 56, 2u);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sub_2394D1F98(a1, a2);
  if (v4)
  {
    goto LABEL_3;
  }

  v7 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v7)
  {
    v5 = 0x16800000000;
    LODWORD(v4) = 3;
    return v5 | v4;
  }

  v8 = 0;
  v4 = sub_2393C8CE0(v7, 2uLL, 22, &v8);
  if (v4)
  {
LABEL_3:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v8 == 21)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = 3;
    }

    if (v8 == 21)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x16D00000000;
    }
  }

  return v5 | v4;
}

unint64_t sub_2394D2A18(uint64_t a1)
{
  v2 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v2)
  {
    v6 = 0x17500000000;
LABEL_7:
    LODWORD(v7) = 3;
    return v6 & 0xFFFFFFFF00000000 | v7;
  }

  if (*(v2 + 60) != 21169)
  {
    v6 = 0xAF00000000;
    goto LABEL_7;
  }

  v3 = *(v2 + 52);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (v4)
  {
    *(v2 + 52) = v5;
    *(v2 + 40) += 2;
    v7 = sub_2393C8DE0(v2, 21);
    if (!v7)
    {
      v7 = sub_2394D20BC(a1);
    }

    v6 = v7;
  }

  else
  {
    v6 = 0xB000000000;
    LODWORD(v7) = 11;
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

const char *sub_2394D2ACC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 5)
  {
    return "N/A";
  }

  else
  {
    return off_278A83108[v1];
  }
}

uint64_t sub_2394D2AF4(uint64_t a1, uint64_t *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    v7 = 458;
    LODWORD(v6) = 3;
    goto LABEL_13;
  }

  v6 = sub_2394D2134(a1, 0);
  if (v6)
  {
LABEL_3:
    v7 = HIDWORD(v6);
    if (!v6)
    {
      v8 = *a2;
      if ((*(**a2 + 16))(*a2) == 3 || (*(*v8 + 16))(v8) == 4)
      {
        v9 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Closing on group Communication ", buf, 2u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(13, 3, "Closing on group Communication ");
        }

        sub_2394D1BD0(a1);
      }

      LODWORD(v6) = 0;
      return v6 | (v7 << 32);
    }

LABEL_13:
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Write client failed to SendWriteRequest: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2393C9138();
      sub_2393D5320(13, 1, "Write client failed to SendWriteRequest: %s", v11);
    }

    return v6 | (v7 << 32);
  }

  v13 = sub_239471E34(*(a1 + 8), a2, a1, 1);
  if (!v13)
  {
    v7 = 466;
    LODWORD(v6) = 11;
    goto LABEL_13;
  }

  v14 = v13;
  sub_238EF9EEC(a1 + 16);
  *(a1 + 32) = v14;
  v14[5] = a1 + 16;
  v16 = sub_2393B59AC(a1 + 16, v15);
  if (!sub_2393BC2A0(v16, v17) || (*(a1 + 306) & 1) == 0)
  {
    v19 = sub_2393B59AC(a1 + 16, v18);
    if (a3)
    {
      sub_239470470(v19, a3);
    }

    else
    {
      sub_239470428(v19, 2000);
    }

    if (*(a1 + 288) == 1)
    {
      v21 = *(a1 + 32);
      v22 = sub_238EAB248((a1 + 288), v20);
      v6 = sub_2394D1A74(v21, *v22);
      if (!v6)
      {
        sub_2394D1C40(a1, 2);
      }
    }

    else
    {
      v6 = sub_2394D2DF8(a1);
    }

    goto LABEL_3;
  }

  return 0x1D70000002ALL;
}

unint64_t sub_2394D2DF8(uint64_t a1)
{
  sub_2393D9EB8((a1 + 296), &v13);
  v3 = sub_2393B59AC(a1 + 16, v2);
  v5 = sub_2393BC2A0(v3, v4);
  if (*(a1 + 296) && v5)
  {
    v7 = 0x21500000000;
    v8 = 3;
  }

  else
  {
    v9 = sub_2393B59AC(a1 + 16, v6);
    v12 = 1;
    v10 = sub_239470478(v9, 0x10000u, 6, &v13, &v12);
    v8 = v10;
    if (v10)
    {
      v7 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394D1C40(a1, 3);
      v8 = 0;
      v7 = 0;
    }
  }

  if (v13)
  {
    sub_2393D96C8(v13);
  }

  return v7 | v8;
}

unint64_t sub_2394D2EC8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (*(a1 + 48) == 3 && !*(a1 + 296))
  {
    sub_2394D1C40(a1, 4);
  }

  if (*(a1 + 32) != a2)
  {
    v8 = 0;
    LODWORD(v9) = 3;
    v10 = 561;
LABEL_6:
    v11 = "src/app/WriteClient.cpp";
    goto LABEL_7;
  }

  if (*(a1 + 48) == 2)
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 577;
    v11 = "src/app/WriteClient.cpp";
    if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 1)
    {
      goto LABEL_7;
    }

    v24 = 0;
    v25 = 0;
    v15 = sub_2394DEFB4(a4, &v24);
    v8 = v15 != 0;
    if (!v15)
    {
      v9 = v24;
      if (v24)
      {
        v11 = v25;
        goto LABEL_35;
      }

      v15 = sub_2394D2DF8(a1);
    }

    v9 = v15;
    v11 = v16;
LABEL_35:
    v10 = HIDWORD(v9);
    goto LABEL_7;
  }

  if (*(a3 + 2))
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 604;
    goto LABEL_6;
  }

  v17 = *(a3 + 3);
  v18 = *a3;
  if (v17 != 1 || v18 != 7)
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 604;
    v11 = "src/app/WriteClient.cpp";
    if (v17 != 1 || v18 != 1)
    {
      goto LABEL_7;
    }

    v24 = 0;
    v25 = 0;
    v21 = sub_2394DEFB4(a4, &v24);
    if (!v21)
    {
      LODWORD(v21) = v24;
      if (v24)
      {
        v10 = HIDWORD(v24);
        v11 = v25;
      }

      else
      {
        LODWORD(v21) = 42;
        v10 = 600;
      }

      goto LABEL_40;
    }

    v11 = v22;
LABEL_39:
    v10 = HIDWORD(v21);
LABEL_40:
    LODWORD(v9) = v21;
    goto LABEL_7;
  }

  v19 = sub_2394D1D28(a1, a4);
  v11 = v20;
  v10 = HIDWORD(v19);
  LODWORD(v9) = v19;
  if (v19)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 296))
  {
    v21 = sub_2394D2DF8(a1);
    v11 = v23;
    v8 = 0;
    goto LABEL_39;
  }

  v8 = 0;
LABEL_7:
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    (*(*v12 + 24))(v12, a1, v9 | (v10 << 32), v11);
  }

  if (v8)
  {
    sub_2394DEE10(0x80u, a2, 0);
  }

  if (*(a1 + 48) != 3)
  {
    sub_2394D1BD0(a1);
  }

  return v9 | (v10 << 32);
}

uint64_t sub_2394D3134(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive write response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    v8 = sub_2394703E0(a2);
    v9 = 114;
    if (v8)
    {
      v9 = 105;
    }

    sub_2393D5320(13, 1, "Time out! failed to receive write response from Exchange: %u%c", v7, v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(*v10 + 24))(v10, a1, 0x27D00000032, "src/app/WriteClient.cpp");
  }

  return sub_2394D1BD0(a1);
}

void sub_2394D3294(void *a1)
{
  sub_2394D32CC(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394D32CC(void *a1)
{
  *a1 = &unk_284BBDB18;
  sub_23947632C("src/app/WriteClient.h", 147);
  v2 = a1[37];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[37] = 0;
  v3 = a1[35];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[35] = 0;
  sub_2393B8400(a1 + 15);
  a1[2] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 2));
  return a1;
}

double sub_2394D3368(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBDB80;
  *(a1 + 8) = &unk_284BBDBB8;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = a1 + 56;
  *(a1 + 72) = a1 + 56;
  *(a1 + 96) = 1;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_2394D33D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 112) = a2;
  }

  else
  {
    v2 = 0x13400000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394D340C(uint64_t a1)
{
  v3[0] = 0;
  (*(*a1 + 32))(a1, v3);
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  return sub_2393D6A10((a1 + 56), a1 + 40, sub_2394D61EC);
}

uint64_t sub_2394D3480(uint64_t a1, int *a2, unsigned __int16 *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*a3 == *(v4 + 6) && *(a3 + 1) == *v4)
      {
        v8 = sub_2394C9128(*(a1 + 104));
        v9 = *v4;
        v18[0] = *(v4 + 6);
        v19 = v9;
        v11 = *sub_238DE3698(v4 + 4, v10);
        v20 = v8;
        v21 = -1;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v13 = sub_2394C40A8(&v20, v18) >> 32;
        v15 = (v12 & 0x100000000) == 0 || v11 != v13;
        sub_2393D6E84(&v24);
        v6 |= v15;
        v7 = 1;
      }

      v4 = *(v4 + 2);
    }

    while (v4);
    v16 = v7 & (v6 ^ 1);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_2394D3580(uint64_t a1, int *a2, uint64_t a3, char *a4, BOOL *a5)
{
  v175 = *MEMORY[0x277D85DE8];
  v127 = a3;
  sub_2393C7B90(&v123);
  v8 = *(a2 + 2);
  v9 = v8[3];
  v11 = *v8;
  v10 = v8[1];
  v125 = v8[2];
  v126 = v9;
  v123 = v11;
  v124 = v10;
  v12 = sub_2393DD418(a2);
  v13 = v12;
  v14 = *a2;
  if (*a2)
  {
    v15 = 0;
    v16 = a2[1];
    v17 = 1;
LABEL_4:
    v20 = 1;
    goto LABEL_5;
  }

  v18 = v12[2];
  v15 = *(v18 + 44);
  v17 = 1;
  v19 = sub_2393C7D60(v18, 1u);
  v16 = HIDWORD(v19);
  v14 = v19;
  if (v19)
  {
    goto LABEL_4;
  }

  *v122 = 0;
  *&v122[4] = 0;
  v122[2] = 0;
  log = sub_2393D9044(0xDu);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v33 = *(v127 + 16);
    v34 = *(v127 + 24);
    buf = __PAIR64__(HIDWORD(v34), 67109888);
    v146 = 1024;
    v147 = v34;
    v148 = 1024;
    v149 = HIDWORD(v33);
    v150 = 1024;
    v151 = v33;
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "Building Reports for ReadHandler with LastReportGeneration = 0x%08X%08X DirtyGeneration = 0x%08X%08X", &buf, 0x1Au);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "Building Reports for ReadHandler with LastReportGeneration = 0x%08X%08X DirtyGeneration = 0x%08X%08X", HIDWORD(*(v127 + 24)), *(v127 + 24), HIDWORD(*(v127 + 16)), *(v127 + 16));
  }

  if ((*(v127 + 168) & 1) == 0)
  {
    sub_2393BB654(v127);
  }

  v35 = sub_2394C9128(*(a1 + 104));
  v36 = v127;
  v37 = (v127 + 64);
  sub_2394E08B4(&buf, v35, v127 + 64);
  v155 = v37;
  v38 = *(v36 + 64);
  v157 = *(v36 + 80);
  v156 = v38;
  if (!sub_2394E0EF8(&buf, v122, 0))
  {
LABEL_103:
    v20 = 0;
    goto LABEL_104;
  }

  v108 = a1;
  v109 = a4;
  v110 = v15;
  while ((*(v127 + 168) & 2) != 0)
  {
    v39 = *(v127 + 128);
    *v162 = *v122;
    *v163 = *&v122[8];
    v163[4] = 0;
    if ((sub_2394D3480(a1, v39, v162) & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_76:
    v69 = *(v155 + 4);
    v156 = *v155;
    LODWORD(v157) = v69;
    if ((sub_2394E0EF8(&buf, v122, 0) & 1) == 0)
    {
      goto LABEL_103;
    }
  }

  LOBYTE(v134[0]) = 0;
  *v162 = v122;
  *v163 = &v127;
  *&v163[8] = v134;
  sub_2393D6A10((a1 + 56), v162, sub_2394D6290);
  if ((v134[0] & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_42:
  sub_2393C7B90(&v118);
  v40 = v13[2];
  v41 = v40[3];
  v43 = *v40;
  v42 = v40[1];
  v120 = v40[2];
  v121 = v41;
  v118 = v43;
  v119 = v42;
  *v116 = *v122;
  *&v116[8] = *&v122[8];
  v117 = 0;
  v44 = *(v127 + 156);
  v45 = (*(v127 + 168) >> 3) & 1;
  v47 = sub_2393BB864(v127, v46);
  if ((*(*v47 + 80))(v47))
  {
    v48 = v45 | 2;
  }

  else
  {
    v48 = v45;
  }

  v49 = sub_2394C9128(*(a1 + 104));
  v51 = sub_2393BB864(v127, v50);
  (*(*v51 + 64))(v113);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v162 = 67109376;
    *&v162[4] = *&v116[4];
    *v163 = 1024;
    *&v163[2] = *&v116[8];
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "<RE:Run> Cluster %x, Attribute %x is dirty", v162, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "<RE:Run> Cluster %x, Attribute %x is dirty", *&v116[4], *&v116[8]);
  }

  v52 = sub_2394DF150();
  (*(*v52 + 16))(v52, 0, 0, v116);
  v140 = 0;
  v144 = v48;
  v141 = v113;
  v142 = *v116;
  v143 = *&v116[8];
  v135 = v49;
  v136 = -1;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v53 = sub_2394C40A8(&v135, v116);
  if ((v54 & 0x100000000) != 0)
  {
    v55 = HIDWORD(v53);
  }

  else
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v162 = 0;
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Read request on unknown cluster - no data version available", v162, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(13, 1, "Read request on unknown cluster - no data version available");
    }

    LODWORD(v55) = 0;
  }

  sub_2393C7B90(v134);
  v56 = v13[2];
  v57 = v56[2];
  v58 = v56[3];
  v59 = v56[1];
  v134[0] = *v56;
  v134[1] = v59;
  v134[2] = v57;
  v134[3] = v58;
  v114 = 0uLL;
  v115 = 0;
  *v162 = v13;
  *v163 = v113[0];
  *&v163[16] = v113[1];
  v164 = *v116;
  v166 = *&v116[4];
  v165 = 0;
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v170 = v55;
  v171 = 0;
  v172 = v48 & 1;
  v173 = -65536;
  v174 = v44 & 0xFFFFFF;
  v128 = v49;
  v129 = -1;
  v130 = -1;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  v60 = sub_2394C417C(&v128, v116);
  v62 = v61;
  sub_2394D5E38(v113, v116, 1u, v158);
  if (v158[16] == 1)
  {
    v114 = *v158;
    v115 = 0;
LABEL_65:
    a4 = v109;
    v15 = v110;
    goto LABEL_66;
  }

  if ((v62 & 1) == 0)
  {
    v63 = sub_2394C425C(v49, v116, 134);
LABEL_64:
    LOBYTE(v114) = v63;
    *(&v114 + 1) = 0;
    v115 = 1;
    goto LABEL_65;
  }

  if ((v60 & 0x1F0000000000) == 0)
  {
    v63 = -113;
    goto LABEL_64;
  }

  sub_2394D5E38(v113, v116, (v60 >> 40) & 0x1F, v160);
  if (v161 == 1)
  {
    v114 = *v160;
    v115 = 0;
    v15 = v110;
  }

  else
  {
    v15 = v110;
    if (sub_2394C3920(v143))
    {
      sub_2394C394C(v49, &v142, v162, &v114);
    }

    else
    {
      (*(*v49 + 112))(&v114, v49, &v140, v162);
    }
  }

  a4 = v109;
LABEL_66:
  if (sub_2394C3F10(&v114))
  {
    v64 = HIWORD(v44);
    v65 = sub_2394DF150();
    (*(*v65 + 16))(v65, 0, 1, v116);
  }

  else
  {
    LOWORD(v44) = v174;
    LOBYTE(v64) = BYTE2(v174);
    if ((sub_2394C3F4C(&v114) & 1) == 0)
    {
      *v158 = &v159;
      *&v158[8] = xmmword_2395D7C00;
      v159 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v66 = sub_2394C3F74(&v114, v158);
        *v160 = 136315138;
        *&v160[4] = v66;
        _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Failed to read attribute: %s", v160, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v67 = sub_2394C3F74(&v114, v158);
        sub_2393D5320(13, 1, "Failed to read attribute: %s", v67);
      }
    }
  }

  sub_2393D6E84(&v133);
  sub_2393D6E84(&v139);
  a1 = v108;
  if (sub_2394C3F10(&v114))
  {
LABEL_74:
    if (v14)
    {
      goto LABEL_105;
    }

    goto LABEL_75;
  }

  v70 = sub_2394C3E2C(&v114);
  v14 = v70;
  v16 = HIDWORD(v70);
  if ((v64 & 1) != 0 && sub_2394C3F4C(&v114))
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *v162 = 67109888;
      *&v162[4] = HIWORD(*&v116[4]);
      *v163 = 1024;
      *&v163[2] = *&v116[4];
      *&v163[6] = 1024;
      *&v163[8] = HIWORD(*&v116[8]);
      *&v163[12] = 1024;
      *&v163[14] = *&v116[8];
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "List does not fit in packet, chunk between list items for clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X", v162, 0x1Au);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "List does not fit in packet, chunk between list items for clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X", HIWORD(*&v116[4]), *&v116[4], HIWORD(*&v116[8]), *&v116[8]);
    }

    v71 = v127;
    *(v127 + 156) = v44;
    *(v71 + 158) = v64;
    goto LABEL_74;
  }

  v72 = v13[2];
  v73 = v118;
  v74 = v119;
  v75 = v121;
  v72[2] = v120;
  v72[3] = v75;
  *v72 = v73;
  v72[1] = v74;
  sub_2393D06DC(v13);
  v76 = v127;
  *(v127 + 156) = -1;
  *(v76 + 158) = 0;
  if (sub_2394C3F4C(&v114))
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v77 = HIWORD(*&v116[4]);
      v78 = *&v116[4];
      v79 = HIWORD(*&v116[8]);
      v80 = *&v116[8];
      v81 = sub_2393C9138();
      *v162 = 67110146;
      *&v162[4] = v77;
      *v163 = 1024;
      *&v163[2] = v78;
      *&v163[6] = 1024;
      *&v163[8] = v79;
      v15 = v110;
      *&v163[12] = 1024;
      *&v163[14] = v80;
      a4 = v109;
      *&v163[18] = 2080;
      *&v163[20] = v81;
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "Next attribute value does not fit in packet, roll back on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X, err = %s", v162, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      v82 = HIWORD(*&v116[4]);
      v83 = *&v116[4];
      v84 = HIWORD(*&v116[8]);
      v85 = *&v116[8];
      v86 = sub_2393C9138();
      v106 = v85;
      a4 = v109;
      v105 = v84;
      v15 = v110;
      sub_2393D5320(13, 3, "Next attribute value does not fit in packet, roll back on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X, err = %s", v82, v83, v105, v106, v86);
    }

    goto LABEL_74;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v87 = HIWORD(*&v116[4]);
    v88 = *&v116[4];
    v89 = HIWORD(*&v116[8]);
    v90 = *&v116[8];
    v91 = sub_2393C9138();
    *v162 = 67110146;
    *&v162[4] = v87;
    *v163 = 1024;
    *&v163[2] = v88;
    *&v163[6] = 1024;
    *&v163[8] = v89;
    *&v163[12] = 1024;
    *&v163[14] = v90;
    v15 = v110;
    *&v163[18] = 2080;
    *&v163[20] = v91;
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Fail to retrieve data, roll back and encode status on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04Xerr = %s", v162, 0x24u);
  }

  if (sub_2393D5398(1u))
  {
    v92 = HIWORD(*&v116[4]);
    v93 = *&v116[4];
    v94 = HIWORD(*&v116[8]);
    v95 = *&v116[8];
    v96 = sub_2393C9138();
    v107 = v95;
    v15 = v110;
    sub_2393D5320(13, 1, "Fail to retrieve data, roll back and encode status on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04Xerr = %s", v92, v93, v94, v107, v96);
  }

  v97 = sub_2394C3EB0(&v114);
  v162[0] = v97;
  *&v162[1] = 0;
  if (v97 <= 1u && ((v97 >> 8) & 0x100) != 0)
  {
    *&v162[1] = v97 >> 8;
  }

  v98 = sub_2393DB5A0(v13, v116, v162);
  v14 = v98;
  v16 = HIDWORD(v98);
  if (!v98)
  {
LABEL_75:
    v14 = 0;
    v68 = v127;
    *(v127 + 156) = -1;
    *(v68 + 158) = 0;
    goto LABEL_76;
  }

  v101 = v13[2];
  v102 = v118;
  v103 = v119;
  v104 = v121;
  v101[2] = v120;
  v101[3] = v104;
  *v101 = v102;
  v101[1] = v103;
  sub_2393D06DC(v13);
LABEL_105:
  v20 = 1;
LABEL_104:
  v99 = v155;
  v100 = v156;
  *(v155 + 4) = v157;
  *v99 = v100;
  sub_2393D6E84(&v154);
  sub_2393D6E84(&v153);
  sub_2393D6E84(&v152);
  v17 = 0;
LABEL_5:
  v21 = *(v13[2] + 44);
  if (a5)
  {
    *a5 = v21 != v15;
  }

  if (v14 == 11 || v14 == 25)
  {
    v23 = v17;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    if (v14)
    {
      if (a4)
      {
        goto LABEL_16;
      }

      return v14 | (v16 << 32);
    }
  }

  else
  {
    v25 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_INFO, "<RE:Run> We cannot put more chunks into this report. Enable chunking.", &buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "<RE:Run> We cannot put more chunks into this report. Enable chunking.");
    }
  }

  v26 = v13[2];
  if (*(v26 + 60) == 21169)
  {
    v27 = *(v26 + 52);
    if (v27)
    {
      *(v26 + 52) = v27 - 1;
      ++*(v26 + 40);
    }
  }

  v28 = sub_2393DA87C(v13);
  if (v28)
  {
    sub_239536C9C();
  }

  v16 = HIDWORD(v28);
  if (v21 == v15)
  {
    v29 = *(a2 + 2);
    v30 = v123;
    v31 = v124;
    v32 = v126;
    v29[2] = v125;
    v29[3] = v32;
    *v29 = v30;
    v29[1] = v31;
    sub_2393D06DC(a2);
  }

  v14 = 0;
  if (a4)
  {
LABEL_16:
    *a4 = v20;
  }

  return v14 | (v16 << 32);
}

unint64_t sub_2394D4248(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4)
{
  v4 = *(a4 + 120);
  if (v4)
  {
    v8 = 0;
    while (1)
    {
      if (*(v4 + 4) == 0xFFFF)
      {
        goto LABEL_6;
      }

      v9 = *v4;
      if (*v4 == -1)
      {
        goto LABEL_6;
      }

      v10 = v4[1];
      if (v10 == -1)
      {
        goto LABEL_6;
      }

      v28 = a3;
      v34[0] = *(v4 + 4);
      v35 = v9;
      v36 = v10;
      memset(v33, 0, 3);
      v11 = sub_2393BB864(a4, a2);
      (*(*v11 + 64))(&v29);
      v12 = sub_2394C9128(*(a1 + 104));
      v40 = v35;
      v41 = v34[0];
      v42 = 4;
      v43 = v36;
      v44 = 1;
      v13 = sub_23949D748();
      v14 = sub_23949CFB0(v13, &v29, &v40, 1u);
      v38 = v14;
      v39 = v15;
      if (!sub_2394D5F14(v34, &v38, v33))
      {
        break;
      }

      v16 = v27;
LABEL_18:
      if (LOBYTE(v33[0]))
      {
        v19 = a2[1];
        v29 = *a2;
        v30 = v19;
        v20 = a2[3];
        v31 = a2[2];
        v32 = v20;
        v21 = v33[0] | (LOBYTE(v33[1]) << 16);
        v27 = v16 & 0xFFFFFFFFFF000000 | v21;
        result = sub_2393DC77C(a2, v34, v16 & 0xFF000000 | v21);
        if (result)
        {
          v25 = v30;
          *a2 = v29;
          a2[1] = v25;
          v26 = v32;
          a2[2] = v31;
          a2[3] = v26;
          return result;
        }

        v8 = HIDWORD(result);
        a3 = v28;
        *v28 = 1;
      }

      else
      {
        a3 = v28;
      }

LABEL_6:
      v4 = *(v4 + 2);
      if (!v4)
      {
        return v8 << 32;
      }
    }

    v16 = v27;
    if (v14)
    {
      goto LABEL_11;
    }

    if ((*(*v12 + 56))(v12, v34, &v37))
    {
      LOBYTE(v18) = sub_2394C425C(v12, v34, 199);
    }

    else
    {
      v18 = sub_2394C425C(v12, v34, 0);
      if (!v18)
      {
        v23 = sub_23949D748();
        v14 = sub_23949CFB0(v23, &v29, &v40, v37);
        v38 = v14;
        v39 = v24;
        if (sub_2394D5F14(v34, &v38, v33))
        {
          LODWORD(v14) = 0;
          v17 = 0;
          goto LABEL_16;
        }

        v16 = v27;
        if (v14)
        {
LABEL_11:
          v17 = v14 & 0xFFFFFFFF00000000;
          goto LABEL_17;
        }

        LOBYTE(v18) = 0;
      }
    }

    LODWORD(v14) = 0;
    v17 = 0;
    LOBYTE(v33[0]) = v18;
    *(v33 + 1) = 0;
LABEL_16:
    v16 = v27;
LABEL_17:
    if (v14)
    {
      return v17 | v14;
    }

    goto LABEL_18;
  }

  v8 = 0;
  return v8 << 32;
}

unint64_t sub_2394D4504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, _BYTE *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0;
  sub_2393C7B90(&v41);
  v12 = *(a2 + 16);
  v13 = v12[3];
  v15 = *v12;
  v14 = v12[1];
  v43 = v12[2];
  v44 = v13;
  v41 = v15;
  v42 = v14;
  if (!*(a3 + 120))
  {
    goto LABEL_9;
  }

  v16 = *(a1 + 112);
  if (!v16 || *(v16 + 24) == 3)
  {
    v17 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "EventManagement has not yet initialized", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(13, 1, "EventManagement has not yet initialized");
    }

    goto LABEL_9;
  }

  if (sub_2393BB20C(a3, v16))
  {
LABEL_9:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v26 = sub_2393DD354(a2);
  v19 = *a2;
  if (*a2)
  {
    v20 = 0;
    v18 = *(a2 + 4);
    goto LABEL_10;
  }

  v27 = v26;
  v28 = v26[2];
  if (!v28)
  {
    v20 = 0;
    v19 = 3;
    v18 = 656;
    goto LABEL_10;
  }

  v29 = sub_2393C7D60(v28, 1u);
  v19 = v29;
  if (v29)
  {
    v20 = 0;
    v18 = HIDWORD(v29);
    goto LABEL_10;
  }

  v30 = sub_2394D4248(a1, *(v27 + 16), &v45, a3);
  if (v30)
  {
    goto LABEL_27;
  }

  v32 = *(a1 + 112);
  v33 = *(v27 + 16);
  v34 = *(a3 + 120);
  v35 = sub_2393BB864(a3, v31);
  (*(*v35 + 64))(buf);
  v30 = sub_2393B7E3C(v32, v33, v34, (a3 + 48), &v46, buf);
  if (v30 <= 0x22 && ((1 << v30) & 0x600000001) != 0)
  {
    v20 = 0;
  }

  else
  {
    if (v30 != 25 && v30 != 11)
    {
LABEL_27:
      v20 = 0;
      v18 = HIDWORD(v30);
      v19 = v30;
      goto LABEL_10;
    }

    if (!v46)
    {
      if ((a4 & 1) == 0)
      {
        ++*(a3 + 48);
      }

      v40 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_INFO, "<RE:Run> first cluster event is too big so that it fails to fit in the packet!", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(13, 3, "<RE:Run> first cluster event is too big so that it fails to fit in the packet!");
      }
    }

    v20 = 1;
  }

  v36 = *(v27 + 16);
  if (*(v36 + 60) == 21169)
  {
    v37 = *(v36 + 52);
    if (v37)
    {
      *(v36 + 52) = v37 - 1;
      ++*(v36 + 40);
      v38 = sub_2393DA87C(v27);
      v18 = HIDWORD(v38);
      v19 = v38;
      if (!v38)
      {
        v39 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v46;
          _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_INFO, "Fetched %u events", buf, 8u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(13, 3, "Fetched %u events", v46);
        }
      }
    }

    else
    {
      v19 = 11;
      v18 = 176;
    }
  }

  else
  {
    v19 = 3;
    v18 = 175;
  }

LABEL_10:
  if (a6)
  {
    *a6 = v45 | (v46 != 0);
  }

  if (v19 <= 0x19 && ((1 << v19) & 0x2000801) != 0 && (v45 & 1) == 0 && !v46)
  {
    v21 = *(a2 + 16);
    v22 = v41;
    v23 = v42;
    v24 = v44;
    v21[2] = v43;
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    sub_2393D06DC(a2);
    v18 = 0;
    v19 = 0;
  }

  if (a5)
  {
    *a5 = v20;
  }

  return v19 | (v18 << 32);
}

uint64_t sub_2394D495C(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v32);
  v37[1] = 0;
  v37[2] = 0;
  v37[0] = &unk_284BB83A8;
  v38 = 0;
  sub_2394D60C8(&v31);
  v30 = 0;
  if (!a2)
  {
    v8 = 754;
    v9 = 47;
LABEL_20:
    sub_2393B8A0C(a2, 0);
    v13 = v9;
    goto LABEL_21;
  }

  if (!sub_2393BB864(a2, v4))
  {
    v8 = 755;
LABEL_8:
    v9 = 3;
    goto LABEL_20;
  }

  v6 = sub_2393BB8B0(a2, v5);
  sub_2393D9C18(v6, 0x26u, buf);
  v30 = *buf;
  if (!*buf)
  {
    v8 = 760;
LABEL_10:
    v9 = 11;
    goto LABEL_20;
  }

  if (sub_2393D980C(*buf) <= v6)
  {
    v7 = 16;
  }

  else
  {
    v7 = (sub_2393D980C(v30) - v6) + 16;
  }

  sub_238EA16C4(v37, &v30, 0);
  sub_2393C7BF0(v32, v37, 0xFFFFFFFF);
  sub_2393C7D60(v32, v7);
  v10 = sub_2393DD7B8(&v31, v32);
  if (v10)
  {
    v11 = 0;
    LOBYTE(v12) = 0;
    v8 = HIDWORD(v10);
    goto LABEL_19;
  }

  if (*(a2 + 169) == 1)
  {
    sub_2393DA83C(&v31, *(a2 + 8));
  }

  v10 = sub_2393C7D60(v32, 9u);
  if (v10 || (v29 = 0, v28 = 0, v10 = sub_2394D3580(a1, &v31, a2, &v29 + 1, &v28 + 1), v10))
  {
    v11 = 0;
    LOBYTE(v12) = 0;
    v8 = HIDWORD(v10);
    goto LABEL_19;
  }

  if (v36 != 21169)
  {
    v11 = 0;
    LOBYTE(v12) = 0;
    LODWORD(v10) = 3;
    v8 = 175;
    goto LABEL_19;
  }

  if (v35 < 3)
  {
    v11 = 0;
    LOBYTE(v12) = 0;
    LODWORD(v10) = 11;
    v8 = 176;
    goto LABEL_19;
  }

  v35 -= 3;
  v33 += 3;
  v10 = sub_2394D4504(a1, &v31, a2, SHIBYTE(v28), &v29, &v28);
  if (v10)
  {
    v11 = 0;
    LOBYTE(v12) = 0;
    v15 = HIDWORD(v10);
LABEL_30:
    v8 = v15;
    goto LABEL_19;
  }

  v12 = HIBYTE(v29) | v29;
  if ((v28 & 0x100) == 0 && (v28 & 1) == 0 && ((v12 ^ 1) & 1) == 0)
  {
    v16 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "No data actually encoded but hasMoreChunks flag is set, close read handler! (attribute too big?)", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(13, 1, "No data actually encoded but hasMoreChunks flag is set, close read handler! (attribute too big?)");
    }

    v10 = sub_2393B9BE0(a2, 137);
    v15 = HIDWORD(v10);
    v11 = v10 == 0;
    goto LABEL_30;
  }

  LODWORD(v10) = v31;
  if (v31)
  {
    v11 = 0;
    v8 = HIDWORD(v31);
    goto LABEL_19;
  }

  if (v36 != 21169)
  {
    v8 = 175;
    goto LABEL_8;
  }

  if (v35 < 6)
  {
    v8 = 176;
    goto LABEL_10;
  }

  v35 -= 6;
  v33 += 6;
  v17 = HIBYTE(v29) | v29;
  if (v12)
  {
    sub_2393DD394(&v31, 1);
  }

  else if (!*(a2 + 169))
  {
    sub_2393DC674(&v31, 1);
  }

  sub_2393DD3D4(&v31);
  if (v31)
  {
    sub_239536D34();
  }

  v10 = sub_238DD2EFC(v32, &v30);
  if (!v10)
  {
    v18 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "<RE> Sending report (payload has %u bytes)...", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "<RE> Sending report (payload has %u bytes)...", v34);
    }

    ++*(a1 + 20);
    v19 = sub_2393BA1EC(a2, &v30, v12 & 1);
    v20 = v19;
    if (v19)
    {
      --*(a1 + 20);
    }

    v27 = HIDWORD(v19);
    if (v19)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "<RE> Error sending out report data with %s!", buf, 0xCu);
      }

      v9 = v20;
      if (sub_2393D5398(1u))
      {
        v22 = sub_2393C9138();
        sub_2393D5320(13, 1, "<RE> Error sending out report data with %s!", v22);
      }

      v8 = v27;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 20);
      v24 = *(a1 + 24);
      v25 = "no more messages";
      if (v17)
      {
        v25 = "more messages";
      }

      *buf = 67109634;
      *&buf[4] = v23;
      *&buf[8] = 1024;
      *&buf[10] = v24;
      v40 = 2080;
      v41 = v25;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "<RE> ReportsInFlight = %u with readHandler %u, RE has %s", buf, 0x18u);
    }

    if (sub_2393D5398(3u))
    {
      v26 = "no more messages";
      LOBYTE(v12) = v17;
      if (v17)
      {
        v26 = "more messages";
      }

      sub_2393D5320(13, 3, "<RE> ReportsInFlight = %u with readHandler %u, RE has %s", *(a1 + 20), *(a1 + 24), v26);
      v11 = 0;
    }

    else
    {
      v11 = 0;
      LOBYTE(v12) = v17;
    }

    v8 = v27;
    goto LABEL_74;
  }

  v11 = 0;
  v8 = HIDWORD(v10);
LABEL_19:
  v9 = v10;
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_74:
  v9 = 0;
  if (!((*(a2 + 169) != 0) | v12 & 1) || v11)
  {
    goto LABEL_20;
  }

  v13 = 0;
LABEL_21:
  if (v30)
  {
    sub_2393D96C8(v30);
  }

  sub_2393B8400(v37);
  return v13 | (v8 << 32);
}

unint64_t sub_2394D4FF4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  ++*(a1 + 20);
  result = sub_2393BA1EC(a2, a3, a4);
  if (result)
  {
    --*(a1 + 20);
  }

  return result;
}

uint64_t sub_2394D504C(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 1592);
  if (*(a1 + 20) > 3u || v3 == 0)
  {
    v5 = *(a1 + 24);
LABEL_16:
    if (v3 <= v5)
    {
      *(a1 + 24) = 0;
    }

    v14 = 1;
    v15 = &v14;
    result = sub_2393D6A10((v2 + 1608), &v15, sub_2394D6304);
    if (v14 == 1)
    {
      v12 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "All ReadHandler-s are clean, clear GlobalDirtySet", v13, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(13, 3, "All ReadHandler-s are clean, clear GlobalDirtySet");
      }

      return sub_2393D6A10((a1 + 56), a1 + 40, sub_2394D61EC);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = 1;
    while (1)
    {
      v7 = sub_2394C8378(*(a1 + 104), v5 % *(*(a1 + 104) + 1592));
      if (!v7)
      {
        sub_239536DCC();
      }

      if ((v8 = v7, v7[166] == 1) && (!v7[169] || (v7[168] & 2) != 0) || sub_2394D52E4(*(*(a1 + 104) + 1416), v7))
      {
        *(a1 + 32) = v8;
        result = sub_2394D495C(a1, v8);
        *(a1 + 32) = 0;
        if (result)
        {
          break;
        }
      }

      v10 = *(a1 + 20);
      v5 = *(a1 + 24) + 1;
      *(a1 + 24) = v5;
      if (v10 <= 3)
      {
        v11 = v6++;
        if (v3 > v11)
        {
          continue;
        }
      }

      v2 = *(a1 + 104);
      v3 = *(v2 + 1592);
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2394D51F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    LODWORD(v1) = 0;
    v2 = 0;
    return v2 | v1;
  }

  v4 = *(*(a1 + 104) + 88);
  if (!v4)
  {
    v2 = 0x37A00000000;
LABEL_11:
    LODWORD(v1) = 3;
    return v2 | v1;
  }

  v5 = *(v4 + 88);
  if (!v5)
  {
    v2 = 0x37F00000000;
    goto LABEL_11;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    v2 = 0x38400000000;
    goto LABEL_11;
  }

  v1 = (*(*v6 + 80))(v6, sub_2394D5040, a1);
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v1) = 0;
    v2 = 0;
    *(a1 + 16) = 1;
  }

  return v2 | v1;
}

uint64_t sub_2394D52E4(uint64_t a1, uint64_t a2)
{
  v5 = (*(**(a1 + 72) + 40))(*(a1 + 72));
  v6 = 0;
  v7[0] = &v6;
  v7[1] = a2;
  sub_2393D6A10((a1 + 32), v7, sub_2394D61C4);
  result = v6;
  if (v6)
  {
    return sub_2394D6160(v6, &v5);
  }

  return result;
}

BOOL sub_2394D5370(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = a1;
  return sub_2393D6A10((a1 + 56), v3, sub_2394D6330) == 1;
}

uint64_t sub_2394D53B4(uint64_t a1)
{
  v2 = 0;
  v3[0] = a1;
  v3[1] = &v2;
  sub_2393D6A10((a1 + 56), v3, sub_2394D63C4);
  return v2;
}

uint64_t sub_2394D53FC(uint64_t a1)
{
  v4[0] = a1;
  sub_2393D6A10((a1 + 56), v4, sub_2394D640C);
  v3 = 0;
  v4[0] = a1;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 56), v4, sub_2394D63C4);
  return v3;
}

uint64_t sub_2394D5470(uint64_t a1)
{
  v4[0] = a1;
  sub_2393D6A10((a1 + 56), v4, sub_2394D64D4);
  v3 = 0;
  v4[0] = a1;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 56), v4, sub_2394D63C4);
  return v3;
}

uint64_t sub_2394D54E4(unint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v11 = a1;
  if (sub_2393D6A10(a1 + 7, &v10, sub_2394D6330) == 1 || (v10 = a2, v11 = a1, sub_2393D6A10(a1 + 7, &v10, sub_2394D6330) == 1))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Cannot merge the new path into any existing path, create one.", &v10, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "Cannot merge the new path into any existing path, create one.");
    }

    v8 = sub_2394D567C(a1 + 5);
    if (v8)
    {
      v4 = 0;
      v5 = 0;
      v9 = *(a2 + 8);
      *v8 = *a2;
      v8[2] = v9;
      *(v8 + 2) = 0;
      *(v8 + 2) = a1[12];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "mGlobalDirtySet pool full, cannot handle more entries!", &v10, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(13, 1, "mGlobalDirtySet pool full, cannot handle more entries!");
      }

      v5 = 0x44800000000;
      v4 = 11;
    }
  }

  return v5 | v4;
}

_DWORD *sub_2394D567C(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = -1;
    v2[2] = -1;
    *(v2 + 2) = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_2394D5708(unint64_t *a1, uint64_t a2)
{
  v5 = a1[12];
  v4 = a1[13];
  a1[12] = v5 + 1;
  v12 = 0;
  v11 = sub_2394C9128(v4);
  v6 = a1[13];
  v13[0] = &v11;
  v13[1] = a2;
  v13[2] = &v12;
  sub_2393D6A10((v6 + 1608), v13, sub_2394D6598);
  if (v12 == 1)
  {
    v7 = sub_2394D54E4(a1, a2);
    v8 = v7 & 0xFFFFFFFF00000000;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

void sub_2394D57C0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 20);
  if (v2 == 4)
  {
    sub_2394D51F8(a1);
    v2 = *(a1 + 20);
  }

  else if (!v2)
  {
    sub_239536E64();
  }

  v3 = v2 - 1;
  *(a1 + 20) = v2 - 1;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v6 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "<RE> OnReportConfirm: NumReports = %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "<RE> OnReportConfirm: NumReports = %u", *(a1 + 20));
  }
}

uint64_t sub_2394D58B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v4 = a2;
  return sub_2393D6A10((v2 + 1608), &v4, sub_2394D661C);
}

unint64_t sub_2394D58F8(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v4 = *(a1 + 104);
  *buf = &v7;
  sub_2393D6A10((v4 + 1608), buf, sub_2394D661C);
  if ((a2 - v7) < 0x201)
  {
    return 0;
  }

  v5 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = 512;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "<RE> Buffer overfilled CHIP_CONFIG_EVENT_LOGGING_BYTE_THRESHOLD %d, schedule engine run", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "<RE> Buffer overfilled CHIP_CONFIG_EVENT_LOGGING_BYTE_THRESHOLD %d, schedule engine run", 512);
  }

  return sub_2394D51F8(a1);
}

unint64_t sub_2394D5A18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 104);
  if (!*(v3 + 1480))
  {
    return 0;
  }

  v11 = 0;
  *buf = a2;
  v13 = &v11;
  sub_2393D6A10((v3 + 1608), buf, sub_2394D6644);
  if (v11 == 1)
  {
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Urgent event will be sent once reporting is not blocked by the min interval", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "Urgent event will be sent once reporting is not blocked by the min interval");
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = sub_2394D58F8(a1, a3);
    v8 = v10 & 0xFFFFFFFF00000000;
    v7 = v10;
  }

  return v8 | v7;
}

uint64_t sub_2394D5B24(uint64_t a1, char *a2)
{
  v3 = *(a1 + 104);
  v4 = *a2;
  if (*a2)
  {
    v6[1] = a2[1];
  }

  v6[0] = v4;
  sub_2393D6A10((v3 + 1608), v6, sub_2394D66E0);
  return sub_2394D504C(a1);
}

void sub_2394D5B90(unint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (sub_2394D5708(a1, a2))
  {
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Failed to set path dirty: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v3 = sub_2393C9138();
      sub_2393D5320(13, 1, "Failed to set path dirty: %s", v3);
    }
  }
}

void *sub_2394D5C88(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBDB80;
  a1[1] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 5, a2);
  return a1;
}

void sub_2394D5CF0(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBDB80;
  a1[1] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 5, a2);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394D5D78(void *a1, uint64_t a2)
{
  *(a1 - 1) = &unk_284BBDB80;
  *a1 = &unk_284BBDBB8;
  return sub_2394786E4(a1 + 4, a2);
}

void sub_2394D5DB8(void *a1, uint64_t a2)
{
  *(a1 - 1) = &unk_284BBDB80;
  *a1 = &unk_284BBDBB8;
  sub_2394786E4(a1 + 4, a2);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394D5E38@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 2);
  v13 = *(a2 + 1);
  v14 = *a2;
  v15 = 1;
  v16 = v8;
  v17 = 1;
  v9 = sub_23949D748();
  result = sub_23949CFB0(v9, a1, &v13, a3);
  switch(result)
  {
    case 0xA8:
      if (*(a2 + 2) != 1)
      {
        v12 = 1437;
        goto LABEL_11;
      }

LABEL_8:
      *a4 = 0;
      *(a4 + 8) = 0;
      goto LABEL_12;
    case 0xA5:
      if ((a2[1] & 1) == 0)
      {
        v12 = 1406;
LABEL_11:
        *a4 = v12;
        *(a4 + 4) = 87;
        *(a4 + 8) = "src/app/reporting/Engine.cpp";
        goto LABEL_12;
      }

      goto LABEL_8;
    case 0:
      *a4 = 0;
      *(a4 + 16) = 0;
      return result;
  }

  *a4 = result;
  *(a4 + 8) = v11;
LABEL_12:
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_2394D5F14(unsigned __int16 *a1, int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*a2 != 168 && v6 != 165)
  {
    return 0;
  }

  v7 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *a1;
    v9 = HIWORD(*(a1 + 1));
    v10 = *(a1 + 1);
    v11 = HIWORD(*(a1 + 2));
    v12 = *(a1 + 2);
    v13 = "ARL";
    *buf = 67110402;
    if (v6 == 165)
    {
      v13 = "ACL";
    }

    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 2080;
    v28 = v13;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Access to event (%u, 0x%04X_%04X, 0x%04X_%04X) denied by %s", buf, 0x2Au);
  }

  if (sub_2393D5398(3u))
  {
    if (*a2 == 165)
    {
      v14 = "ACL";
    }

    else
    {
      v14 = "ARL";
    }

    sub_2393D5320(35, 3, "Access to event (%u, 0x%04X_%04X, 0x%04X_%04X) denied by %s", *a1, HIWORD(*(a1 + 1)), *(a1 + 1), HIWORD(*(a1 + 2)), *(a1 + 2), v14);
  }

  if (*a2 == 165)
  {
    v15 = 126;
  }

  else
  {
    v15 = -99;
  }

  *a3 = v15;
  *(a3 + 1) = 0;
  return 1;
}

uint64_t sub_2394D60C8(uint64_t a1)
{
  sub_2393DB79C(a1);
  sub_2393DB79C(v2 + 32);
  sub_2393DB79C(a1 + 64);
  sub_2393DB79C(a1 + 96);
  sub_2393DB79C(a1 + 128);
  sub_2393DB79C(a1 + 160);
  sub_2393DB79C(a1 + 192);
  sub_2393DB79C(a1 + 224);
  sub_2393DB79C(a1 + 256);
  sub_2393DB79C(a1 + 288);
  sub_2393DB79C(a1 + 320);
  sub_2393DB79C(a1 + 352);
  sub_2393DB79C(a1 + 384);
  sub_2393DB79C(a1 + 416);
  sub_2393DB79C(a1 + 448);
  return a1;
}

uint64_t sub_2394D6160(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 166) != 1)
  {
    return 0;
  }

  if (*a2 < *(a1 + 24))
  {
    v3 = *(a1 + 40);
    return v3 & 1;
  }

  if (*(v2 + 16) <= *(v2 + 24) && (*(v2 + 168) & 0x10) == 0 && *a2 < *(a1 + 32))
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      return v3 & 1;
    }
  }

  return 1;
}

uint64_t sub_2394D61C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  **a1 = a2;
  return 1;
}

void sub_2394D6208(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394D6290(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v3 != 0xFFFF && v3 != **a1)
  {
    return 0;
  }

  if (*a2 != -1 && *a2 != *(v2 + 4))
  {
    return 0;
  }

  v6 = *(a2 + 4);
  v7 = *(v2 + 8);
  v8 = v6 == -1 || v6 == v7;
  if (!v8 || *(a2 + 16) <= *(*a1[1] + 24))
  {
    return 0;
  }

  v9 = a1[2];
  result = 1;
  *v9 = 1;
  return result;
}

uint64_t sub_2394D6304(_BYTE **a1, uint64_t a2)
{
  if (*(a2 + 16) <= *(a2 + 24) && (*(a2 + 168) & 0x10) == 0)
  {
    return 0;
  }

  **a1 = 0;
  return 1;
}

BOOL sub_2394D6330(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (sub_2394CB810(a2, *a1))
  {
    *(a2 + 16) = *(v4 + 96);
  }

  else
  {
    result = sub_2394CB810(*a1, a2);
    if (!result)
    {
      return result;
    }

    *(a2 + 16) = *(v4 + 96);
    *(a2 + 8) = *(*a1 + 8);
    *a2 = **a1;
    *(a2 + 10) = *(*a1 + 10);
    *(a2 + 4) = *(*a1 + 4);
  }

  return 1;
}

uint64_t sub_2394D63C4(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    sub_2394D6208(*a1 + 40, a2);
    **(a1 + 8) = 1;
  }

  return 0;
}

uint64_t sub_2394D640C(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  if (*a2 != -1 && *(a2 + 16))
  {
    v2 = *a1;
    v5 = &v4;
    sub_2393D6A10((v2 + 56), &v5, sub_2394D646C);
  }

  return 0;
}

uint64_t sub_2394D646C(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (v2 != a2 && *(a2 + 8) == *(v2 + 8) && *a2 == *v2)
  {
    v3 = *(a2 + 16);
    if (v3 > *(v2 + 16))
    {
      *(v2 + 16) = v3;
      v2 = **a1;
    }

    *(v2 + 4) = -1;
    *(v2 + 10) = -1;
    *(a2 + 16) = 0;
  }

  return 0;
}

uint64_t sub_2394D64D4(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  if (*(a2 + 8) != -1 && *(a2 + 16))
  {
    v2 = *a1;
    v5 = &v4;
    sub_2393D6A10((v2 + 56), &v5, sub_2394D6534);
  }

  return 0;
}

uint64_t sub_2394D6534(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (v2 != a2 && *(a2 + 8) == *(v2 + 8))
  {
    v3 = *(a2 + 16);
    if (v3 > *(v2 + 16))
    {
      *(v2 + 16) = v3;
      v2 = **a1;
    }

    *v2 = -1;
    v4 = **a1;
    *(v4 + 4) = -1;
    *(v4 + 10) = -1;
    *(a2 + 16) = 0;
  }

  return 0;
}

uint64_t sub_2394D6598(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 166) - 1 <= 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      while (!sub_2393C07A0(v3, *(a1 + 8)))
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          return 0;
        }
      }

      sub_2393BB67C(a2, **a1, *(a1 + 8));
      **(a1 + 16) = 1;
    }
  }

  return 0;
}

uint64_t sub_2394D661C(unsigned int **a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    v2 = *(a2 + 152);
    if (v2 < **a1)
    {
      **a1 = v2;
    }
  }

  return 0;
}

uint64_t sub_2394D6644(unsigned __int16 **a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    v2 = *(a2 + 120);
    if (v2)
    {
      v3 = *a1;
      while (1)
      {
        v4 = *(v2 + 8);
        if ((v4 == 0xFFFF || v4 == **a1) && (*v2 == -1 || *v2 == *(v3 + 4)))
        {
          v7 = *(v2 + 4);
          v8 = v7 == -1 || v7 == *(v3 + 8);
          if (v8 && *(v2 + 10) == 1)
          {
            break;
          }
        }

        v2 = *(v2 + 16);
        if (!v2)
        {
          return 0;
        }
      }

      *a1[1] = 1;
      sub_2393BB8A4(a2);
    }
  }

  return 0;
}

uint64_t sub_2394D66E0(_BYTE *a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    if (*a1 != 1 || ((isa_low = LOBYTE(sub_238DE36D8(a1, a2)->super.isa), (v5 = sub_2393BB864(a2, v4)) == 0) ? (v6 = 0) : (v6 = *(v5 + 24)), isa_low == v6))
    {
      sub_2393BB8A4(a2);
    }
  }

  return 0;
}

unint64_t sub_2394D674C()
{
  v0 = sub_2394C7C20() + 1296;

  return sub_2394D51F8(v0);
}

double sub_2394D6778(uint64_t result, uint64_t a2)
{
  v2 = 0.0;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 40) = result + 32;
  *(result + 48) = result + 32;
  *(result + 72) = a2;
  *result = &unk_284BBDC40;
  *(result + 8) = &unk_284BBDCC8;
  if (!a2)
  {
    sub_239536EFC();
  }

  return v2;
}

void sub_2394D67F8(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  *buf = &v8;
  v10 = a2;
  sub_2393D6A10((a1 + 32), buf, sub_2394D61C4);
  if (v8)
  {
    sub_239536F94();
  }

  v8 = (*(**(a1 + 72) + 40))(*(a1 + 72));
  *buf = a1;
  v3 = sub_2394D6968((a1 + 16), &v7, buf, &v8);
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v3[3];
    v6 = v3[4];
    *buf = 67109888;
    *&buf[4] = HIDWORD(v5);
    LOWORD(v10) = 1024;
    *(&v10 + 2) = v5;
    HIWORD(v10) = 1024;
    v11 = HIDWORD(v6);
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Registered a ReadHandler that will schedule a report between system Timestamp: 0x%08X%08X and system Timestamp 0x%08X%08X.", buf, 0x1Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "Registered a ReadHandler that will schedule a report between system Timestamp: 0x%08X%08X and system Timestamp 0x%08X%08X.", HIDWORD(v3[3]), v3[3], HIDWORD(v3[4]), v3[4]);
  }
}

void *sub_2394D6968(unint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v8 = sub_2393D52C4(0x30uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394D71CC(v8, *a2, *a3, a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_2394D6A14(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = a2;
  result = sub_2393D6A10((a1 + 32), v6, sub_2394D61C4);
  v4 = v5;
  if (v5)
  {
    v6[0] = (*(**(a1 + 72) + 40))(*(a1 + 72));
    (*(*a1 + 112))(a1, &v5, v4, v6);
    return (*(*a1 + 96))(a1, v5, v4, v6);
  }

  return result;
}

uint64_t sub_2394D6B00(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = a2;
  result = sub_2393D6A10((a1 + 32), v10, sub_2394D61C4);
  v5 = v9;
  if (v9)
  {
    v6 = (*(**(a1 + 72) + 40))(*(a1 + 72));
    v10[0] = v6;
    v7 = *(v5 + 40);
    *(v5 + 40) = v7 & 0xFD;
    v8 = v6 + 1000 * *(a2 + 162);
    *(v5 + 24) = v6 + 1000 * *(a2 + 160);
    *(v5 + 32) = v8;
    *(v5 + 40) = v7 & 0xFC;
    (*(*a1 + 112))(a1, &v9, v5, v10);
    return (*(*a1 + 96))(a1, v9, v5, v10);
  }

  return result;
}

void sub_2394D6C24(uint64_t a1, uint64_t a2)
{
  sub_2394D6C8C(a1, a2);
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    sub_2394D6D0C(a1 + 16, v4);
  }
}

uint64_t sub_2394D6C8C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  result = sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    return (*(**(a1 + 72) + 24))(*(a1 + 72));
  }

  return result;
}

void sub_2394D6D0C(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

unint64_t sub_2394D6DBC(uint64_t a1, int a2, uint64_t a3)
{
  (*(**(a1 + 72) + 24))(*(a1 + 72), a3);
  if (a2)
  {
    v6 = (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    (*(*a3 + 16))(a3);
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_2394D6EDC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    return (*(**(a1 + 72) + 32))(*(a1 + 72));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394D6F64(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t *a4)
{
  v8 = *(a3 + 8);
  v14 = 0;
  v15[0] = &v14;
  v15[1] = v8;
  sub_2393D6A10((a1 + 32), v15, sub_2394D61C4);
  if (!v14)
  {
    return 0x9B0000002FLL;
  }

  if (sub_2394D6160(a3, a4))
  {
    v9 = 0;
  }

  else
  {
    v11 = sub_2394D703C(a1, *(a3 + 8));
    v12 = *a4;
    if (v11 && (v13 = *(a3 + 24), v13 > v12))
    {
      v9 = v13 - v12;
    }

    else
    {
      v9 = *(a3 + 32) - v12;
    }
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t sub_2394D703C(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 166) != 1)
  {
    return 0;
  }

  if (!*(a2 + 169))
  {
    return 1;
  }

  v2 = *(a2 + 168);
  if ((v2 & 2) != 0)
  {
    return 1;
  }

  v3 = (v2 >> 4) & 1;
  if (*(a2 + 16) <= *(a2 + 24))
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_2394D7088(void *a1)
{
  sub_2394D7104(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394D70C8(uint64_t a1)
{
  sub_2394D7104((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394D7104(void *a1)
{
  *a1 = &unk_284BBDC40;
  a1[1] = &unk_284BBDCC8;
  v4 = a1;
  sub_2393D6A10(a1 + 4, &v4, sub_2394D7284);
  *a1 = &unk_284BBDD78;
  a1[1] = &unk_284BBDDC0;
  sub_239475668(a1 + 2, v2);
  return a1;
}

uint64_t sub_2394D71CC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  *result = &unk_284BBDE00;
  *(result + 16) = a3;
  *(result + 40) = 0;
  if (!a2)
  {
    sub_2395370C4();
  }

  if (!a3)
  {
    sub_23953702C();
  }

  *(result + 8) = a2;
  v4 = *(a2 + 162);
  *(result + 24) = *a4 + 1000 * *(a2 + 160);
  *(result + 32) = *a4 + 1000 * v4;
  return result;
}

uint64_t sub_2394D72C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_284BBDE50;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_284BAA120;
  *(a1 + 24) = a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = 16842752;
  *(a1 + 52) = 0;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1;
  *(a1 + 144) = sub_2394D7438;
  *(a1 + 152) = a1 + 152;
  *(a1 + 160) = a1 + 152;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1;
  *(a1 + 184) = sub_2394D7540;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = &unk_284BBBF18;
  *(a1 + 232) = 0;
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 312) = 0;
  *(a1 + 321) = 1;
  *(a1 + 323) = 0;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 328) = 0;
  sub_23947632C("src/app/ReadClient.cpp", 53);
  *(a1 + 8) = a3;
  *(a1 + 80) = a5;
  *(a1 + 200) = a2;
  if (a5 == 1)
  {
    sub_2394CB0E4(a2, a1);
  }

  return a1;
}

void sub_2394D7438(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    sub_23953715C();
  }

  v6 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "HandleDeviceConnected", v9, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "HandleDeviceConnected");
  }

  sub_239495C6C((a1 + 208), a3);
  *(a1 + 8) = a2;
  (*(**(a1 + 40) + 120))(*(a1 + 40), a3, a1 + 208);
  v8 = sub_2394D8640(a1, a1 + 208);
  if (v8)
  {
    sub_2394D7E80(a1, v8, v7, 1);
  }
}

void sub_2394D7540(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_2395371F4();
  }

  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to establish CASE for re-subscription with error '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v6 = sub_2393C9138();
    sub_2393D5320(13, 1, "Failed to establish CASE for re-subscription with error '%s'", v6);
  }

  if (*(a2 + 34) == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = *sub_238EAF004((a2 + 34), v7);
      *buf = 67109120;
      LODWORD(v12) = v8;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Will delay resubscription by %u ms due to BUSY response", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v9 = sub_238EAF004((a2 + 34), v5);
      sub_2393D5320(13, 3, "Will delay resubscription by %u ms due to BUSY response", *v9);
    }
  }

  if (*(a2 + 34) == 1)
  {
    v10 = *sub_238EAF004((a2 + 34), v5);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 106) = v10;
  sub_2394D7E80(a1, *(a2 + 16), *(a2 + 24), 1);
}

void sub_2394D76F8(uint64_t a1)
{
  *(a1 + 49) = 0;
  *(a1 + 51) = 1;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 105) = 0;
  sub_2394D7718(a1, 0);
}

void sub_2394D7718(_BYTE *a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  a1[48] = a2;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 4)
    {
      v5 = "N/A";
    }

    else
    {
      v5 = off_278A83138[a2];
    }

    *buf = 136315906;
    v9 = "MoveToState";
    v10 = 2048;
    v11 = a1;
    v12 = 1040;
    v13 = 10;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%s ReadClient[%p]: Moving to [%10.10s]", buf, 0x26u);
  }

  if (sub_2393D5398(3u))
  {
    v6 = a1[48];
    if (v6 > 4)
    {
      v7 = "N/A";
    }

    else
    {
      v7 = off_278A83138[v6];
    }

    sub_2393D5320(13, 3, "%s ReadClient[%p]: Moving to [%10.10s]", "MoveToState", a1, v7);
  }
}

double sub_2394D7864(uint64_t a1)
{
  v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  (*(*v2 + 72))(v2, sub_2394DA91C, a1);
  v3 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  (*(*v3 + 72))(v3, sub_2394D7D00, a1);
  *(a1 + 105) = 0;
  if (*(a1 + 264) || *(a1 + 248) || *(a1 + 280))
  {
    (*(**(a1 + 40) + 88))(*(a1 + 40), a1 + 208);
    result = 0.0;
    *(a1 + 248) = 0u;
    v5 = a1 + 248;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  return result;
}

uint64_t sub_2394D7968()
{
  v0 = *(**(*(*(sub_2394C7C20() + 11) + 88) + 24) + 72);

  return v0();
}

uint64_t sub_2394D79DC(uint64_t a1)
{
  v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  result = (*(*v2 + 72))(v2, sub_2394D7D00, a1);
  *(a1 + 105) = 0;
  return result;
}

uint64_t sub_2394D7A48(uint64_t a1)
{
  *a1 = &unk_284BBDE50;
  sub_23947632C("src/app/ReadClient.cpp", 101);
  if (*(a1 + 80) == 1)
  {
    sub_2394D7864(a1);
    v2 = *(a1 + 200);
    if (v2)
    {
      sub_2394CB3D8(v2, a1);
    }
  }

  sub_239495880(a1 + 208);
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 168) = 0;
    v3(a1 + 152);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 128) = 0;
    v4(a1 + 112);
  }

  *(a1 + 16) = &unk_284BAA120;
  sub_238EF9EEC(a1 + 16);
  return a1;
}

void sub_2394D7B14(uint64_t a1)
{
  sub_2394D7A48(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394D7B4C(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2 > 0xE)
  {
    v3 = 5538000;
  }

  else
  {
    v3 = 10000 * sub_2393D64AC(v2);
    if (!v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = 30 * v3 / 0x64u + sub_2393F56E0() % (v3 - 30 * v3 / 0x64u);
LABEL_6:
  if (v4 <= *(a1 + 106))
  {
    return *(a1 + 106);
  }

  else
  {
    return v4;
  }
}

unint64_t sub_2394D7BD8(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4)
{
  if (a1[48])
  {
    v4 = 0x9600000000;
    LODWORD(v5) = 3;
  }

  else
  {
    v6 = a4;
    v7 = a2;
    if (a4)
    {
      if (*a3)
      {
        v4 = 0x9B00000000;
        LODWORD(v5) = 47;
        return v5 | v4;
      }

      v12 = a1 + 232;
      v13 = a1[232];
      a1[104] = a4;
      if (v13 == 1)
      {
        v14 = sub_238DE36B8(v12, a2);
        v15 = sub_239495304(*v14);
        sub_239493108(v15);
      }
    }

    else
    {
      if (*a3)
      {
        v9 = sub_238EA9094(a3, a2);
        sub_239495C6C(a1 + 26, v9);
      }

      a1[104] = v6;
    }

    v10 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    v5 = (*(*v10 + 40))(v10, v7, sub_2394D7D00, a1);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = 0;
      a1[105] = 1;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394D7D00(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    sub_23953728C();
  }

  *(a2 + 105) = 0;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 104);
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "OnResubscribeTimerCallback: ForceCASE = %d", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "OnResubscribeTimerCallback: ForceCASE = %d", *(a2 + 104));
  }

  v6 = *(a2 + 232);
  ++*(a2 + 328);
  if (v6 == 1 && (v7 = sub_238DE36B8((a2 + 232), v5), v8 = sub_239495304(*v7), ((*(*v8 + 40))(v8) & 1) != 0))
  {
    result = sub_2394D8640(a2, a2 + 208);
    v11 = result;
    if (!result)
    {
      return result;
    }

    v12 = v10;
    v13 = 1;
  }

  else
  {
    result = sub_2394DABEC(a2);
    if (!result)
    {
      return result;
    }

    v13 = *(a2 + 104) ^ 1;
    v11 = 0x57500000003;
    v12 = "src/app/ReadClient.cpp";
  }

  return sub_2394D7E80(a2, v11, v12, v13 & 1);
}

void sub_2394D7E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (!*(a1 + 80))
  {
    if (a2)
    {
      (*(**(a1 + 40) + 72))(*(a1 + 40), a2, a3, a4);
    }

    goto LABEL_21;
  }

  v7 = a4;
  if (*(a1 + 48) - 1 <= 1)
  {
    v11 = 1;
    v12 = "core_dev_subscription_setup";
    v13 = a2;
    v14 = 3;
    sub_23948BD20(&v11);
  }

  *(a1 + 49) = 0;
  *(a1 + 51) = 1;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 105) = 0;
  sub_2394D7718(a1, 0);
  if (!v5)
  {
LABEL_20:
    sub_2394D7864(a1);
LABEL_21:
    sub_238EF9EEC(a1 + 16);
    (*(**(a1 + 40) + 80))(*(a1 + 40), a1);
    return;
  }

  if (!v7 || !*(a1 + 256) && !*(a1 + 272))
  {
LABEL_19:
    (*(**(a1 + 40) + 72))(*(a1 + 40), v5, v4);
    goto LABEL_20;
  }

  v8 = (*(**(a1 + 40) + 64))(*(a1 + 40), a1, v5, v4);
  if (!v8)
  {
    return;
  }

  if (v8 != 22)
  {
    v4 = v9;
    v5 = v8;
    goto LABEL_19;
  }

  if (v5 != 22)
  {
    sub_239537324();
  }

  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "ICD device is inactive mark subscription as InactiveICDSubscription", &v11, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "ICD device is inactive mark subscription as InactiveICDSubscription");
  }

  sub_2394D7718(a1, 4u);
}

const char *sub_2394D80A0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 4)
  {
    return "N/A";
  }

  else
  {
    return off_278A83138[v1];
  }
}

unint64_t sub_2394D80C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    v2 = sub_2394D8640(a1, a2);
  }

  else
  {
    if (*(a1 + 80))
    {
      v3 = 0x11400000000;
      LODWORD(v2) = 47;
      return v2 | v3;
    }

    v2 = sub_2394D8118(a1, a2);
  }

  v3 = v2 & 0xFFFFFFFF00000000;
  return v2 | v3;
}

unint64_t sub_2394D8118(uint64_t a1, uint64_t a2)
{
  v66[5] = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "SendReadRequest";
    v56 = 2048;
    *v57 = a1;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%s ReadClient[%p]: Sending Read Request", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "%s ReadClient[%p]: Sending Read Request", "SendReadRequest", a1);
  }

  if (*(a1 + 48))
  {
    return 0x11D00000003;
  }

  sub_238DB9BD8(&v53, *(a2 + 56), *(a2 + 64));
  sub_2394DB5F0(v52, *(a2 + 40), *(a2 + 48));
  sub_2394DB5F0(v51, *(a2 + 72), *(a2 + 80));
  v50 = 0;
  sub_2393DB79C(buf);
  sub_2393DB79C(&v58);
  sub_2393DB79C(&v59);
  sub_2393DB79C(&v60);
  sub_2393DB79C(&v61);
  sub_2393DB79C(&v62);
  sub_2393DB79C(&v63);
  sub_2393DB79C(&v64);
  sub_2393DB79C(&v65);
  sub_2393DB79C(v66);
  sub_2393C7B90(v47);
  v48[1] = 0;
  v48[2] = 0;
  v48[0] = &unk_284BB83A8;
  v49 = 0;
  sub_2394D86E0(v47);
  v6 = sub_2393DD7B8(buf, v47);
  if (v6)
  {
    goto LABEL_14;
  }

  if (v54)
  {
    v7 = sub_2393DD294(buf);
    v6 = *buf;
    if (*buf)
    {
      goto LABEL_14;
    }

    v6 = sub_2394D8780(*buf, v7, &v53);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  if (v52[1])
  {
    v8 = sub_2393DD314(buf);
    v6 = *buf;
    if (*buf)
    {
      goto LABEL_14;
    }

    v6 = sub_2394D8858(*buf, v8, v52);
    if (v6)
    {
      goto LABEL_14;
    }

    LOBYTE(v42) = 0;
    v6 = sub_2394D8930(a1, a2, &v42);
    if (v6)
    {
      goto LABEL_14;
    }

    if (v42 == 1)
    {
      v12 = sub_2393DD354(buf);
      v6 = *buf;
      if (*buf)
      {
        goto LABEL_14;
      }

      v13 = sub_239289A18(&v42, v11);
      v6 = sub_2393DC3F4(v12, *v13);
      if (v6)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = *sub_2393DD394(buf, *(a2 + 113));
  if (v6)
  {
    goto LABEL_14;
  }

  v46 = 0;
  sub_2393C7B90(&v42);
  v14 = *(*&v57[2] + 48);
  v16 = **&v57[2];
  v15 = *(*&v57[2] + 16);
  v44 = *(*&v57[2] + 32);
  v45 = v14;
  v42 = v16;
  v43 = v15;
  v17 = sub_2393DD2D4(buf);
  v6 = *buf;
  if (*buf)
  {
    goto LABEL_14;
  }

  if (v54)
  {
    v6 = sub_2394D8A00(a1, v17, &v53, v51, &v46);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  v18 = v17[2];
  if (*(v18 + 60) != 21169)
  {
    v6 = 0xAF00000000;
    v9 = 3;
    goto LABEL_15;
  }

  v19 = *(v18 + 52);
  v20 = v19 >= 5;
  v21 = v19 - 5;
  if (!v20)
  {
    v6 = 0xB000000000;
LABEL_30:
    v9 = 11;
    goto LABEL_15;
  }

  *(v18 + 52) = v21;
  *(v18 + 40) += 5;
  if (v46 == 1)
  {
    v6 = sub_2393DA87C(v17);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = *&v57[2];
    v23 = v42;
    v24 = v43;
    v25 = v45;
    *(*&v57[2] + 32) = v44;
    v22[3] = v25;
    *v22 = v23;
    v22[1] = v24;
    sub_2393D06DC(buf);
  }

  v6 = sub_2393DD3D4(buf);
  if (!v6)
  {
    v6 = sub_238DD2EFC(v47, &v50);
    if (!v6)
    {
      if (*(a2 + 24) != 1)
      {
        v6 = 0x15D00000000;
        v9 = 119;
        goto LABEL_15;
      }

      v27 = *(a1 + 8);
      sub_238EA903C(a2, v26, &v40);
      v29 = sub_238DE36B8(&v40, v28);
      v30 = sub_239471E34(v27, v29, a1, 1);
      if (v40 == 1)
      {
        (*(*v41 + 32))(v41);
      }

      if (!v30)
      {
        v6 = 0x16000000000;
        goto LABEL_30;
      }

      sub_238EF9EEC(a1 + 16);
      *(a1 + 32) = v30;
      v30[5] = a1 + 16;
      v31 = *(a2 + 104);
      v33 = sub_2393B59AC(a1 + 16, v32);
      if (v31)
      {
        sub_239470470(v33, *(a2 + 104));
      }

      else
      {
        sub_239470428(v33, 2000);
      }

      v35 = sub_2393B59AC(a1 + 16, v34);
      v40 = 1;
      v6 = sub_239470478(v35, 0x10000u, 2, &v50, &v40);
      if (!v6)
      {
        v37 = sub_238DE36B8((a2 + 24), v36);
        v38 = sub_239495304(*v37);
        *(a1 + 64) = (*(*v38 + 48))(v38);
        *(a1 + 72) = v39;
        sub_2394D7718(a1, 1u);
        v6 = 0;
        v9 = 0;
        goto LABEL_15;
      }
    }
  }

LABEL_14:
  v9 = v6;
LABEL_15:
  v10 = v6 & 0xFFFFFFFF00000000;
  sub_2393B8400(v48);
  if (v50)
  {
    sub_2393D96C8(v50);
  }

  return v9 | v10;
}

uint64_t sub_2394D8640(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 108) <= *(a2 + 110))
  {
    v4 = sub_2394DACC0(a1, a2);
    v5 = v4;
    v3 = HIDWORD(v4);
    if (v4)
    {
      v7 = 1;
      v8 = "core_dev_subscription_setup";
      v9 = v4;
      v10 = 3;
      sub_23948BD20(&v7);
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 47;
    v3 = 1166;
  }

  return v2 | (v3 << 32);
}

void sub_2394D86E0(uint64_t a1)
{
  sub_2393D9C18(0x4AAuLL, 0x26u, &v3);
  if (v3)
  {
    if (sub_2393D980C(v3) < 0x4AB)
    {
      v2 = 21;
    }

    else
    {
      v2 = (sub_2393D980C(v3) - 1173);
    }

    sub_238EA16C4(a1 + 64, &v3, 0);
    sub_2393C7BF0(a1, a1 + 64, 0xFFFFFFFF);
    sub_2393C7D60(a1, v2);
    if (v3)
    {
      sub_2393D96C8(v3);
    }
  }
}

unint64_t sub_2394D8780(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = *a3;
    v6 = 12 * v4;
    LODWORD(v7) = 181;
    while (*(v5 + 10) == -1 || *(v5 + 4) != -1)
    {
      v8 = sub_2393DB400(a2);
      if (*a2)
      {
        v11 = *a2 & 0xFFFFFFFF00000000;
        v7 = *a2;
        return v11 | v7;
      }

      v9 = sub_2393DB028(v8, v5);
      if (v9)
      {
        v11 = v9 & 0xFFFFFFFF00000000;
        LODWORD(v7) = v9;
        return v11 | v7;
      }

      v5 += 12;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v11 = 0x18800000000;
  }

  else
  {
LABEL_8:
    v10 = sub_2393DA87C(a2);
    LODWORD(v7) = v10;
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  return v11 | v7;
}

unint64_t sub_2394D8858(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = *a3;
    v6 = 12 * v4;
    LODWORD(v7) = 182;
    while (*v5 != -1 || v5[1] == -1)
    {
      v8 = sub_2393DB400(a2);
      if (*a2)
      {
        v11 = *a2 & 0xFFFFFFFF00000000;
        v7 = *a2;
        return v11 | v7;
      }

      v9 = sub_2393DC6B4(v8, v5);
      if (v9)
      {
        v11 = v9 & 0xFFFFFFFF00000000;
        LODWORD(v7) = v9;
        return v11 | v7;
      }

      v5 += 3;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v11 = 0x17A00000000;
  }

  else
  {
LABEL_8:
    v10 = sub_2393DA87C(a2);
    LODWORD(v7) = v10;
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  return v11 | v7;
}

unint64_t sub_2394D8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 88) == 1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    *a3 = 1;
    v6 = *(a2 + 96);
  }

  else
  {
    v5 = (*(**(a1 + 40) + 104))(*(a1 + 40), a3);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if (*a3 != 1)
    {
      v4 = 0;
      LODWORD(v5) = 0;
      return v5 | v4;
    }

    v8 = sub_239289A18(a3, v7);
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = *v8 + 1;
    *a3 = 1;
  }

  *(a3 + 8) = v6;
  return v5 | v4;
}

unint64_t sub_2394D8A00(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, _BYTE *a5)
{
  v9 = (*(**(a1 + 40) + 96))(*(a1 + 40), a2, a3, a5);
  if (v9 || (*a5 & 1) == 0 && (v9 = sub_2394D8AA0(v9, a2, a3, a4, a5), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_2394D8AA0(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, _BYTE *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4[1];
  if (!v6)
  {
    v11 = 0;
    v10 = 0;
LABEL_25:
    v31 = 0;
LABEL_26:
    v32 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = a4[1];
      *buf = 134218752;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v10;
      LOWORD(v40) = 2048;
      *(&v40 + 2) = v31;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "%lu data version filters provided, %lu not relevant, %lu encoded, %lu skipped due to lack of space", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "%lu data version filters provided, %lu not relevant, %lu encoded, %lu skipped due to lack of space", a4[1], v11, v10, v31);
    }

    v30 = 0;
    v14 = 0;
    return v14 | v30;
  }

  v10 = 0;
  v11 = 0;
  v12 = *a4;
  v13 = *a4 + 16 * v6;
  v14 = 47;
  while (1)
  {
    v15 = *(v12 + 12);
    if (v15 == 0xFFFF || *v12 == -1 || *(v12 + 4) != 1)
    {
      v30 = 0x19D00000000;
      return v14 | v30;
    }

    v16 = a3[1];
    if (v16)
    {
      break;
    }

LABEL_18:
    ++v11;
LABEL_19:
    v12 += 16;
    if (v12 == v13)
    {
      goto LABEL_25;
    }
  }

  v17 = 12 * v16;
  v18 = *a3 + 8;
  v19 = v18;
  while (1)
  {
    v21 = *v19;
    v19 += 6;
    v20 = v21;
    if (v21 == 0xFFFF || v20 == v15)
    {
      v23 = *(v18 - 8);
      if (v23 == -1 || v23 == *v12)
      {
        break;
      }
    }

    v18 = v19;
    v17 -= 12;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  sub_2393C7B90(buf);
  v25 = a2[2];
  v26 = v25[3];
  v28 = *v25;
  v27 = v25[1];
  v40 = v25[2];
  v41 = v26;
  *buf = v28;
  *&buf[16] = v27;
  v29 = sub_2393DBCB0(a2, v12);
  if (!v29)
  {
    ++v10;
    *a5 = 1;
    goto LABEL_19;
  }

  if (v29 == 25 || v29 == 11)
  {
    v35 = a2[2];
    v36 = *buf;
    v37 = *&buf[16];
    v38 = v41;
    v35[2] = v40;
    v35[3] = v38;
    *v35 = v36;
    v35[1] = v37;
    sub_2393D06DC(a2);
    v31 = a4[1] - ((v12 - *a4) >> 4);
    goto LABEL_26;
  }

  v30 = v29 & 0xFFFFFFFF00000000;
  v14 = v29;
  return v14 | v30;
}

void sub_2394D8D08(uint64_t a1)
{
  if (!sub_2394CB44C(*(a1 + 200), a1))
  {
    sub_2395373BC();
  }

  if (*(a1 + 256) || *(a1 + 272))
  {
    if (*(a1 + 48) == 4)
    {

      sub_2394D8DEC(a1, 0x1F100000032, "src/app/ReadClient.cpp");
    }

    else if (*(a1 + 105))
    {

      sub_2394D8E90(a1, "check-in message");
    }

    else
    {

      sub_2394D7E80(a1, 0x1FD00000032, "src/app/ReadClient.cpp", 1);
    }
  }
}

uint64_t sub_2394D8DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 232);
  v6 = (a1 + 232);
  if (v7 == 1)
  {
    v8 = sub_238DE36B8(v6, a2);
    v9 = *(sub_239495304(*v8) + 136);
    v10 = *(*(*(a1 + 200) + 88) + 88);
    v12 = &v13;
    v13 = v9;
    v14[0] = a1 + 64;
    v14[1] = &v12;
    sub_2393D6A10((v10 + 128), v14, sub_2394DB610);
  }

  return sub_2394D7E80(a1, a2, a3, 1);
}

uint64_t sub_2394D8E90(unsigned __int8 *a1, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[105];
  if (v2 == 1)
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v10 = a1;
      v11 = 2080;
      v12 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "ReadClient[%p] triggering resubscribe, reason: %s", buf, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "ReadClient[%p] triggering resubscribe, reason: %s", a1, a2);
    }

    v6 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    v7 = (*(*v6 + 72))(v6, sub_2394D7D00, a1);
    a1[105] = 0;
    sub_2394D7D00(v7, a1);
  }

  return v2;
}

void sub_2394D8FD0(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!sub_2394CB44C(*(a1 + 200), a1))
  {
    sub_239537454();
  }

  *(a1 + 336) = a2 == 1;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 == 1)
    {
      v5 = "a";
    }

    else
    {
      v5 = "not a";
    }

    *buf = 136315138;
    v8 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Peer is now %s LIT ICD.", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    if (*(a1 + 336))
    {
      v6 = "a";
    }

    else
    {
      v6 = "not a";
    }

    sub_2393D5320(13, 2, "Peer is now %s LIT ICD.", v6);
  }

  if ((*(a1 + 336) & 1) == 0 && *(a1 + 48) == 4)
  {
    sub_2394D8DEC(a1, 0x21200000032, "src/app/ReadClient.cpp");
  }
}

uint64_t sub_2394D9118(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if ((*(a1 + 48) | 4) == 4)
  {
    v6 = 0x80;
    v7 = 539;
    v8 = 3;
LABEL_5:
    v9 = "src/app/ReadClient.cpp";
LABEL_6:
    sub_2394DEE10(v6, a2, 0);
    goto LABEL_7;
  }

  if (*(a3 + 2))
  {
    v6 = 0x80;
    v7 = 562;
    v8 = 42;
    goto LABEL_5;
  }

  v13 = *(a3 + 3);
  v14 = *a3;
  if (v13 == 1 && v14 == 5)
  {
    v15 = sub_2394D9384(a1, a4);
    v9 = v16;
    v7 = HIDWORD(v15);
  }

  else if (v13 == 1 && v14 == 4)
  {
    v17 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "SubscribeResponse is received", &v21, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "SubscribeResponse is received");
    }

    v8 = 3;
    if (*(a1 + 32) != a2)
    {
      v6 = 0x80;
      v7 = 548;
      goto LABEL_5;
    }

    v18 = sub_2394D9680(a1, a4);
    v9 = v19;
    LODWORD(v21) = 1;
    v22 = "core_dev_subscription_setup";
    v7 = HIDWORD(v18);
    v23 = v18;
    v24 = 3;
    sub_23948BD20(&v21);
    LODWORD(v15) = v18;
  }

  else
  {
    v6 = 0x80;
    v7 = 562;
    v9 = "src/app/ReadClient.cpp";
    v8 = 42;
    if (v13 != 1 || v14 != 1)
    {
      goto LABEL_6;
    }

    if (*(a1 + 32) != a2)
    {
      v6 = 0x80;
      v7 = 554;
      v8 = 3;
      goto LABEL_6;
    }

    v21 = 0;
    v22 = 0;
    v15 = sub_2394DEFB4(a4, &v21);
    if (v15)
    {
      v9 = v20;
      v7 = HIDWORD(v15);
    }

    else
    {
      LODWORD(v15) = v21;
      if (v21)
      {
        v7 = HIDWORD(v21);
        v9 = v22;
      }

      else
      {
        LODWORD(v15) = 42;
        v7 = 558;
      }
    }
  }

  if (v15)
  {
    if (v15 == 107)
    {
      v6 = 125;
    }

    else
    {
      v6 = 0x80;
    }

    v8 = v15;
    goto LABEL_6;
  }

  if (*(a1 + 80) == 1)
  {
    v10 = 0;
    return v10 | (v7 << 32);
  }

  v8 = 0;
  v10 = 0;
  if (*(a1 + 52))
  {
    return v10 | (v7 << 32);
  }

LABEL_7:
  sub_2394D7E80(a1, v8 | (v7 << 32), v9, 1);
  v10 = v8;
  return v10 | (v7 << 32);
}

unint64_t sub_2394D9384(uint64_t a1, void *a2)
{
  sub_2393DD178(v20);
  v19 = 1;
  v18 = 0;
  sub_2393DD178(v17);
  sub_2393DD178(v16);
  sub_2393C5AAC(v14);
  v15 = 0;
  sub_238DD2F90(v14, a2);
  v4 = sub_2393DD0A8(v20, v14);
  v5 = v4;
  if (v4)
  {
    v6 = HIDWORD(v4);
    goto LABEL_32;
  }

  v7 = sub_2393DC51C(v20, &v19);
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }

    v19 = 0;
  }

  v7 = sub_2393DA7E0(v20, &v18);
  if (v7 == 33)
  {
    if (*(a1 + 80) == 1)
    {
      v5 = 47;
      v6 = 660;
      goto LABEL_32;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_30;
    }

    if (*(a1 + 80) != 1)
    {
      v5 = 47;
      v6 = 646;
      goto LABEL_32;
    }

    if (*(a1 + 51) == 1)
    {
      *(a1 + 60) = v18;
    }

    else if (*(a1 + 60) != v18)
    {
      v5 = 107;
      v6 = 653;
      goto LABEL_32;
    }
  }

  v7 = sub_2393DD284(v20, (a1 + 52));
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }

    *(a1 + 52) = 0;
  }

  v7 = sub_2393DC8EC(v20, v17);
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_2393C5AAC(v13);
    sub_2393DD1C8(v17, v13);
    v7 = sub_2394D99F8(a1, v13);
    if (v7)
    {
      goto LABEL_30;
    }
  }

  v7 = sub_2393DCCFC(v20, v16);
  if (v7)
  {
    if (v7 == 33)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_2393C5AAC(v13);
    sub_2393DD1C8(v16, v13);
    v7 = sub_2394D9C58(a1, v13);
    if (!v7)
    {
LABEL_24:
      if (*(a1 + 49) == 1 && (*(a1 + 52) & 1) == 0)
      {
        (*(**(a1 + 40) + 32))(*(a1 + 40));
        *(a1 + 49) = 0;
      }

      v7 = sub_2393DD104(v20);
      v6 = HIDWORD(v7);
      goto LABEL_31;
    }
  }

LABEL_30:
  v6 = HIDWORD(v7);
LABEL_31:
  v5 = v7;
LABEL_32:
  if (*(a1 + 80) == 1)
  {
    v8 = *(a1 + 48);
    if (v8 == 3)
    {
      if (v5)
      {
        goto LABEL_44;
      }

      (*(**(a1 + 40) + 16))(*(a1 + 40), a1);
      v9 = sub_2394DA288(a1);
      v6 = HIDWORD(v9);
      v5 = v9;
    }

    else if (v8 == 1)
    {
      sub_2394D7718(a1, 2u);
    }
  }

  if ((v19 & 1) == 0 && !v5)
  {
    if (*(a1 + 48) == 3)
    {
      v10 = *(a1 + 52);
    }

    else
    {
      v10 = 1;
    }

    v11 = sub_2394DEE10(0, *(a1 + 32), v10 & 1);
    v6 = HIDWORD(v11);
    v5 = v11;
  }

LABEL_44:
  *(a1 + 51) = 0;
  if (v15)
  {
    sub_2393D96C8(v15);
  }

  return v5 | (v6 << 32);
}

unint64_t sub_2394D9680(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v16);
  v17 = 0;
  sub_238DD2F90(v16, a2);
  sub_2393DD178(v15);
  v4 = sub_2393DD0A8(v15, v16);
  if (v4)
  {
LABEL_2:
    v5 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_16;
  }

  v14 = 0;
  if (sub_2393DA7E0(v15, &v14))
  {
    v5 = 0x45500000000;
    LODWORD(v4) = 47;
  }

  else if (*(a1 + 60) == v14 && *(a1 + 80) == 1)
  {
    v4 = sub_2393DAA4C(v15, (a1 + 56));
    if (v4)
    {
      goto LABEL_2;
    }

    v6 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - *(a1 + 344);
    v7 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 60);
      v9 = *(a1 + 54);
      v10 = *(a1 + 56);
      v11 = *(a1 + 72);
      v12 = *(a1 + 64);
      *buf = 67110656;
      v19 = v6;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = HIDWORD(v12);
      v30 = 1024;
      v31 = v12;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Subscription established in %ums with SubscriptionID = 0x%08x MinInterval = %us MaxInterval = %us Peer = %02x:%08X%08X", buf, 0x2Cu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "Subscription established in %ums with SubscriptionID = 0x%08x MinInterval = %us MaxInterval = %us Peer = %02x:%08X%08X", v6, *(a1 + 60), *(a1 + 54), *(a1 + 56), *(a1 + 72), HIDWORD(*(a1 + 64)), *(a1 + 64));
    }

    v4 = sub_2393DD104(v15);
    if (v4)
    {
      goto LABEL_2;
    }

    sub_2394D7718(a1, 3u);
    (*(**(a1 + 40) + 56))(*(a1 + 40), v14);
    *(a1 + 328) = 0;
    v4 = sub_2394DA288(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v5 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    v5 = 0x45600000000;
    LODWORD(v4) = 107;
  }

LABEL_16:
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  return v4 | v5;
}

void sub_2394D9930(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2393BC49C(a1 + 16, a2);
  v6 = sub_2393B59AC(a1 + 16, v5);
  sub_238EA6DC0(v6, &v13, v7);
  sub_239495C6C((a1 + 208), &v13);
  (*(*v13 + 32))(v13);
  v8 = sub_2394D9384(a1, a3);
  v10 = v8;
  if (v8)
  {
    v11 = v9;
    if (v8 == 107)
    {
      v12 = 125;
    }

    else
    {
      v12 = 128;
    }

    sub_2394DEE10(v12, *(a1 + 32), 0);
    sub_2394D7E80(a1, v10, v11, 1);
  }
}

unint64_t sub_2394D99F8(uint64_t a1, uint64_t a2)
{
  result = sub_2393C6B34(a2);
  if (!result)
  {
    while (1)
    {
      sub_2393C5AAC(v25);
      sub_2393DD178(v24);
      sub_2393DD178(v23);
      v17[0] = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v21 = 3;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = 0;
      v15 = 0;
      v16 = 0;
      v5 = *(a2 + 48);
      v13[2] = *(a2 + 32);
      v13[3] = v5;
      v14 = *(a2 + 64);
      v6 = *(a2 + 16);
      v13[0] = *a2;
      v13[1] = v6;
      result = sub_2393DD7F4(v24, v13);
      if (result)
      {
        return result;
      }

      v7 = sub_2393DB490(v24, v23);
      if (v7 == 33)
      {
        break;
      }

      if (!v7)
      {
        v22 = *(a1 + 88);
        result = sub_2393DC15C(v23, v17);
        if (result)
        {
          return result;
        }

        *(a1 + 88) = v22;
        result = sub_2393DBF28(v23, v25);
        if (result)
        {
          return result;
        }

        v8 = v20 + 1;
        *(a1 + 296) = 1;
        *(a1 + 304) = v8;
        if ((*(a1 + 49) & 1) == 0)
        {
          (*(**(a1 + 40) + 24))(*(a1 + 40));
          *(a1 + 49) = 1;
        }

        v9 = *(**(a1 + 40) + 40);
LABEL_21:
        v9();
      }

      result = sub_2393C6B34(a2);
      if (result)
      {
        goto LABEL_2;
      }
    }

    sub_2393DD178(v12);
    sub_2393DD178(v11);
    sub_2393DD178(v10);
    result = sub_2393DB43C(v24, v12);
    if (result)
    {
      return result;
    }

    result = sub_2393DB6C8(v12, v11);
    if (result)
    {
      return result;
    }

    result = sub_2393DC470(v11, v17);
    if (result)
    {
      return result;
    }

    result = sub_2393DB490(v12, v10);
    if (result)
    {
      return result;
    }

    result = sub_2393DD458(v10, &v15);
    if (result)
    {
      return result;
    }

    if ((*(a1 + 49) & 1) == 0)
    {
      (*(**(a1 + 40) + 24))(*(a1 + 40));
      *(a1 + 49) = 1;
    }

    v9 = *(**(a1 + 40) + 40);
    goto LABEL_21;
  }

LABEL_2:
  if (result == 33)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2394D9C58(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = sub_2393C6B34(a2);
  if (!v4)
  {
    v5 = 0x30C000000B5;
    v6 = "src/app/ReadClient.cpp";
    while (1)
    {
      sub_2393C5AAC(v43);
      sub_2393DD178(v42);
      sub_2393DD178(v41);
      sub_2393DD178(v40);
      sub_2393DD178(v39);
      v34 = 0;
      v35 = 0;
      v37 = 0;
      memset(v36, 0, 11);
      v32 = 0;
      v33 = 0;
      v7 = *(a2 + 48);
      v30[2] = *(a2 + 32);
      v30[3] = v7;
      v31 = *(a2 + 64);
      v8 = *(a2 + 16);
      v30[0] = *a2;
      v30[1] = v8;
      v9 = sub_2393DD7F4(v42, v30);
      if (v9)
      {
        return v9;
      }

      v10 = sub_2393DB43C(v42, v40);
      if (v10 == 33)
      {
        break;
      }

      if (!v10)
      {
        sub_2393DD178(v52);
        v9 = sub_2393DB6C8(v40, v39);
        if (v9)
        {
          return v9;
        }

        if (sub_2393DAC08(v39, &v34, 1))
        {
          v11 = 0x30C000000B5;
        }

        else
        {
          v11 = 0;
        }

        if ((v11 & 0xB5) != 0)
        {
          return v11;
        }

        if (!sub_2394DA694(&v34))
        {
          v24 = sub_2393D9044(0xDu);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            buf = 67110144;
            *v45 = v34;
            *&v45[4] = 1024;
            *&v45[6] = HIWORD(v36[0]);
            v46 = 1024;
            v47 = LOWORD(v36[0]);
            v48 = 1024;
            v49 = HIWORD(v36[1]);
            v50 = 1024;
            v51 = LOWORD(v36[1]);
            _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Skipping AttributeStatusIB with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ", &buf, 0x20u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(13, 1, "Skipping AttributeStatusIB with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ");
          }

          goto LABEL_57;
        }

        v9 = sub_2393DB490(v40, v52);
        if (v9)
        {
          return v9;
        }

        v9 = sub_2393DD458(v52, &v32);
        if (v9)
        {
          return v9;
        }

        if ((*(a1 + 49) & 1) == 0)
        {
          (*(**(a1 + 40) + 24))(*(a1 + 40));
          *(a1 + 49) = 1;
        }

        v12 = *(**(a1 + 40) + 48);
        goto LABEL_56;
      }

LABEL_57:
      v4 = sub_2393C6B34(a2);
      if (v4)
      {
        goto LABEL_2;
      }
    }

    v9 = sub_2393DB490(v42, v41);
    if (v9)
    {
      return v9;
    }

    v9 = sub_2393DA78C(v41, v39);
    if (v9)
    {
      return v9;
    }

    if (sub_2393DAC08(v39, &v34, 1))
    {
      return v5;
    }

    if (!sub_2394DA694(&v34))
    {
      v25 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v52[0] = 67110144;
        v52[1] = v34;
        v53 = 1024;
        v54 = HIWORD(v36[0]);
        v55 = 1024;
        v56 = LOWORD(v36[0]);
        v57 = 1024;
        v58 = HIWORD(v36[1]);
        v59 = 1024;
        v60 = LOWORD(v36[1]);
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Skipping AttributeDataIB  with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ", v52, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(13, 1, "Skipping AttributeDataIB  with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ");
      }

      goto LABEL_57;
    }

    v29 = 0;
    v9 = sub_2393DA7E0(v41, &v29);
    if (v9)
    {
      return v9;
    }

    v37 = 1;
    v38 = v29;
    if (*(a1 + 280) && *(a1 + 288))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280);
        if (*(v15 + v13 + 12) == v34 && *(v15 + v13) == v36[0])
        {
          v16 = v15 + v13;
          v17 = v37;
          *(v16 + 4) = v37;
          if (v17 == 1)
          {
            *(v16 + 8) = v38;
          }
        }

        ++v14;
        v13 += 16;
      }

      while (v14 < *(a1 + 288));
    }

    v9 = sub_2393DA7F0(v41, v43);
    if (v9)
    {
      return v9;
    }

    if (!BYTE2(v36[2]))
    {
      BYTE2(v36[2]) = sub_2393C5C40(v43) == 22;
    }

    if (!v34 && v36[0] == 70 && v36[1] == 8)
    {
      v28 = 0;
      sub_2393C5AAC(v52);
      v19 = sub_2393C5BDC(v18, v43);
      if (sub_2394DA598(v19, v52, &v28))
      {
        v20 = v6;
        v21 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = sub_2393C9138();
          buf = 136315138;
          *v45 = v22;
          _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to get ICD state from attribute data with error'%s'", &buf, 0xCu);
        }

        v6 = v20;
        if (sub_2393D5398(1u))
        {
          v23 = sub_2393C9138();
          sub_2393D5320(13, 1, "Failed to get ICD state from attribute data with error'%s'", v23);
        }
      }

      else
      {
        v26 = sub_2394C7C20();
        sub_2394CB080(v26, *(a1 + 64), *(a1 + 72), v28);
      }
    }

    if ((*(a1 + 49) & 1) == 0)
    {
      (*(**(a1 + 40) + 24))(*(a1 + 40));
      *(a1 + 49) = 1;
    }

    v12 = *(**(a1 + 40) + 48);
LABEL_56:
    v12();
    goto LABEL_57;
  }

LABEL_2:
  if (v4 == 33)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2394DA288(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 3)
  {
    return 0x3C900000003;
  }

  v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  (*(*v2 + 72))(v2, sub_2394DA91C, a1);
  result = sub_2394DA7E0(a1, &v11);
  if (!result)
  {
    v4 = sub_2393D9044(0xDu);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v6 = v11;
    if (v5)
    {
      v7 = *(a1 + 60);
      v8 = *(a1 + 72);
      v9 = *(a1 + 64);
      *buf = 134219008;
      v13 = v11;
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = HIDWORD(v9);
      v20 = 1024;
      v21 = v9;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Refresh LivenessCheckTime for %lu milliseconds with SubscriptionId = 0x%08x Peer = %02x:%08X%08X", buf, 0x24u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "Refresh LivenessCheckTime for %lu milliseconds with SubscriptionId = 0x%08x Peer = %02x:%08X%08X", v6, *(a1 + 60), *(a1 + 72), HIDWORD(*(a1 + 64)), *(a1 + 64));
    }

    v10 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    return (*(*v10 + 40))(v10, v6, sub_2394DA91C, a1);
  }

  return result;
}

void sub_2394DA468(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive report data from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    v8 = sub_2394703E0(a2);
    v9 = 114;
    if (v8)
    {
      v9 = 105;
    }

    sub_2393D5320(13, 1, "Time out! failed to receive report data from Exchange: %u%c", v7, v9);
  }

  sub_2394D7E80(a1, 0x2E900000032, "src/app/ReadClient.cpp", 1);
}

unint64_t sub_2394DA598(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = 0;
  result = sub_238EFF894(a2, &v5);
  if (!result)
  {
    if (v5 > 1u)
    {
      return 0x2FC0000002FLL;
    }

    else
    {
      *a3 = v5;
    }
  }

  return result;
}

uint64_t sub_2394DA5F8(uint64_t a1, int *a2, _WORD *a3)
{
  if (sub_2393DAC08(a2, a3, 1))
  {
    return 0x30C000000B5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394DA638(uint64_t result)
{
  if ((*(result + 49) & 1) == 0)
  {
    v1 = result;
    result = (*(**(result + 40) + 24))(*(result + 40));
    *(v1 + 49) = 1;
  }

  return result;
}

BOOL sub_2394DA694(__int16 *a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v1 = *(a1 + 1);
  if (v1 >= 0xFFF50000)
  {
    return 0;
  }

  if (v1 < 0x8000 || (v2 = 0, v1 >= 0x10000) && (v1 + 1024) <= 0x3FEu)
  {
    v3 = *(a1 + 2);
    return v3 < 0xFFF50000 && v3 < 0x5000u || v3 < 0x10000 && v3 - 61440 < 0xFFF;
  }

  return v2;
}

uint64_t sub_2394DA718(uint64_t result, unsigned __int16 *a2)
{
  if (*(result + 288))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(result + 280);
      if (__PAIR64__(*(v4 + v2), *(v4 + v2 + 12)) == __PAIR64__(*(a2 + 1), *a2))
      {
        v5 = v4 + v2;
        v6 = *(a2 + 16);
        *(v5 + 4) = v6;
        if (v6 == 1)
        {
          *(v5 + 8) = *(a2 + 5);
        }
      }

      ++v3;
      v2 += 16;
    }

    while (v3 < *(result + 288));
  }

  return result;
}

void sub_2394DA784(uint64_t a1, int a2)
{
  *(a1 + 332) = a2;
  v4 = sub_2394DA288(a1);
  if (v4)
  {

    sub_2394D7E80(a1, v4, v3, 1);
  }
}

uint64_t sub_2394DA7E0(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 332);
  if (v3)
  {
    goto LABEL_4;
  }

  v5 = (a1 + 232);
  if (*(a1 + 232) == 1)
  {
    v6 = sub_238DE36B8((a1 + 232), a2);
    v7 = (*(**v6 + 88))(*v6);
    v9 = sub_238DE36B8(v5, v8);
    v10 = (*(**v9 + 120))(*v9, 0, 1);
    v12 = *v7;
    v11 = *(v7 + 4);
    v13 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v3 = v10 + sub_239476070(v11, v12, v13, *(v7 + 8), 0) + 1000 * *(a1 + 56) + 2000;
LABEL_4:
    result = 0;
    *a2 = v3;
    return result;
  }

  return 0x3E300000003;
}

uint64_t sub_2394DA91C(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!sub_2394CB44C(*(a2 + 200), a2))
  {
    sub_2395374EC();
  }

  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a2 + 60);
    v5 = *(a2 + 72);
    v6 = *(a2 + 64);
    *buf = 67109888;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = HIDWORD(v6);
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Subscription Liveness timeout with SubscriptionID = 0x%08x, Peer = %02x:%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(13, 1, "Subscription Liveness timeout with SubscriptionID = 0x%08x, Peer = %02x:%08X%08X", *(a2 + 60), *(a2 + 72), HIDWORD(*(a2 + 64)), *(a2 + 64));
  }

  v7 = 0x41400000032;
  if (*(a2 + 336) == 1 && *(a2 + 323))
  {
    v7 = 0x42700000016;
  }

  return sub_2394D8DEC(a2, v7, "src/app/ReadClient.cpp");
}

uint64_t sub_2394DAA64(uint64_t a1, uint64_t a2)
{
  *(a1 + 106) = 0;
  sub_2394DAAC0(a1 + 208, a2);
  v3 = sub_2394D8640(a1, a1 + 208);
  if (v3)
  {
    sub_2394D7864(a1);
  }

  return v3;
}

uint64_t sub_2394DAAC0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 112) = *(a2 + 112);
    sub_239495AE0(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    v4 = *(a2 + 88);
    *(a1 + 88) = v4;
    if (v4 == 1)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 108) = *(a2 + 108);
    *(a1 + 110) = *(a2 + 110);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    *(a1 + 114) = *(a2 + 114);
    *(a1 + 115) = *(a2 + 115);
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
  }

  return a1;
}

uint64_t sub_2394DAB84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 72) = *(a2 + 8);
  *(a1 + 64) = v4;
  sub_2394DAAC0(a1 + 208, a3);
  v5 = sub_2394DABEC(a1);
  if (v5)
  {
    sub_2394D7864(a1);
  }

  return v5;
}

uint64_t sub_2394DABEC(uint64_t a1)
{
  v2 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Trying to establish a CASE session for subscription", v7, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "Trying to establish a CASE session for subscription");
  }

  v3 = *(sub_2394C7C20() + 211);
  if (v3)
  {
    sub_2394C4C84(v3, (a1 + 64), (a1 + 112), a1 + 152, 1, 0, 0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0x5CA00000000;
    v5 = 3;
  }

  return v5 | v4;
}

unint64_t sub_2394DACC0(uint64_t a1, uint64_t a2)
{
  v77[5] = *MEMORY[0x277D85DE8];
  *buf = 0;
  v67 = "core_dev_subscription_setup";
  BYTE4(v68) = 0;
  sub_23948BD20(buf);
  *(a1 + 344) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  if (*(a1 + 48))
  {
    return 0x4A000000003;
  }

  if (a1 + 208 != a2)
  {
    sub_239495AE0(a1 + 208, a2);
  }

  *(a1 + 336) = *(a2 + 114);
  v5 = *(a2 + 115);
  *(a1 + 323) = v5;
  if (v5 == 1)
  {
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *buf = 67109632;
      *&buf[4] = HIDWORD(v7);
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v7;
      HIWORD(v67) = 1024;
      LODWORD(v68) = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "ICD Check-In token has been registered in peer device <%08X%08X, %d>", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "ICD Check-In token has been registered in peer device <%08X%08X, %d>", HIDWORD(*(a1 + 64)), *(a1 + 64), *(a1 + 72));
    }
  }

  *(a1 + 54) = *(a2 + 108);
  sub_238DB9BD8(&v64, *(a2 + 56), *(a2 + 64));
  sub_2394DB5F0(v63, *(a2 + 40), *(a2 + 48));
  sub_2394DB5F0(v62, *(a2 + 72), *(a2 + 80));
  v61 = 0;
  sub_2393C7B90(v58);
  v59[1] = 0;
  v59[2] = 0;
  v59[0] = &unk_284BB83A8;
  v60 = 0;
  sub_2393DB79C(buf);
  sub_2393DB79C(&v69);
  sub_2393DB79C(&v70);
  sub_2393DB79C(&v71);
  sub_2393DB79C(&v72);
  sub_2393DB79C(&v73);
  sub_2393DB79C(&v74);
  sub_2393DB79C(&v75);
  sub_2393DB79C(&v76);
  sub_2393DB79C(v77);
  sub_2394D86E0(v58);
  v9 = sub_2393DD7B8(buf, v58);
  if (!v9)
  {
    v10 = sub_2393DAE68(buf, *(a2 + 112));
    v11 = sub_2393DB890(v10, *(a2 + 108));
    sub_2393DAEE8(v11, *(a2 + 110));
    if (!v65 || (v12 = sub_2393DDA44(buf), v9 = *v12, !*v12) && (v9 = sub_2394D8780(v12, v12, &v64), !v9))
    {
      if (!v63[1] || (v13 = sub_2393DDAC4(buf), v9 = *v13, !*v13) && (v9 = sub_2394D8858(v13, v13, v63), !v9) && (LOBYTE(v53) = 0, v9 = sub_2394D8930(a1, a2, &v53), !v9) && (v53 != 1 || (v14 = sub_2393DDB04(buf), v9 = *buf, !*buf) && (v16 = v14, v17 = sub_239289A18(&v53, v15), v9 = sub_2393DC3F4(v16, *v17), !v9)))
      {
        v9 = *sub_2393DDB44(buf, *(a2 + 113));
        if (!v9)
        {
          v57 = 0;
          sub_2393C7B90(&v53);
          v20 = v68[3];
          v22 = *v68;
          v21 = v68[1];
          v55 = v68[2];
          v56 = v20;
          v53 = v22;
          v54 = v21;
          v23 = sub_2393DDA84(buf);
          v9 = *buf;
          if (!*buf)
          {
            v24 = v23;
            if (!v65 || (v9 = sub_2394D8A00(a1, v23, &v64, v62, &v57), !v9))
            {
              v25 = *(v24 + 16);
              if (*(v25 + 60) != 21169)
              {
                v18 = 0xAF00000000;
                LODWORD(v9) = 3;
                goto LABEL_24;
              }

              v26 = *(v25 + 52);
              v27 = v26 >= 5;
              v28 = v26 - 5;
              if (!v27)
              {
                v18 = 0xB000000000;
                LODWORD(v9) = 11;
                goto LABEL_24;
              }

              *(v25 + 52) = v28;
              *(v25 + 40) += 5;
              if (v57 != 1)
              {
                v29 = v68;
                v30 = v53;
                v31 = v54;
                v32 = v56;
                v68[2] = v55;
                v29[3] = v32;
                *v29 = v30;
                v29[1] = v31;
                sub_2393D06DC(buf);
LABEL_39:
                v9 = sub_2393DD3D4(buf);
                if (!v9)
                {
                  v9 = sub_238DD2EFC(v58, &v61);
                  if (!v9)
                  {
                    if (*(a2 + 24) != 1)
                    {
                      v18 = 0x4F400000000;
                      LODWORD(v9) = 119;
                      goto LABEL_24;
                    }

                    v34 = *(a1 + 8);
                    sub_238EA903C(a2, v33, &v51);
                    v36 = sub_238DE36B8(&v51, v35);
                    v38 = sub_239471E34(v34, v36, a1, 1);
                    if (v51 == 1)
                    {
                      (*(*v52 + 32))(v52);
                    }

                    if (!v38)
                    {
                      v43 = sub_238DE36B8((a2 + 24), v37);
                      v44 = sub_239495304(*v43);
                      v45 = (*(*v44 + 40))(v44);
                      if (v45)
                      {
                        LODWORD(v9) = 11;
                      }

                      else
                      {
                        LODWORD(v9) = 3;
                      }

                      v18 = 0x4FF00000000;
                      if (v45)
                      {
                        v18 = 0x4FB00000000;
                      }

                      goto LABEL_24;
                    }

                    sub_238EF9EEC(a1 + 16);
                    *(a1 + 32) = v38;
                    v38[5] = a1 + 16;
                    v39 = *(a2 + 104);
                    v41 = sub_2393B59AC(a1 + 16, v40);
                    if (v39)
                    {
                      sub_239470470(v41, *(a2 + 104));
                    }

                    else
                    {
                      sub_239470428(v41, 2000);
                    }

                    v46 = sub_2393B59AC(a1 + 16, v42);
                    v51 = 1;
                    v9 = sub_239470478(v46, 0x10000u, 3, &v61, &v51);
                    if (!v9)
                    {
                      v48 = sub_238DE36B8((a2 + 24), v47);
                      v49 = sub_239495304(*v48);
                      *(a1 + 64) = (*(*v49 + 48))(v49);
                      *(a1 + 72) = v50;
                      sub_2394D7718(a1, 1u);
                      LODWORD(v9) = 0;
                      v18 = 0;
                      goto LABEL_24;
                    }
                  }
                }

                goto LABEL_23;
              }

              v9 = sub_2393DA87C(v24);
              if (!v9)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }
  }

LABEL_23:
  v18 = v9;
LABEL_24:
  v19 = v18 & 0xFFFFFFFF00000000;
  sub_2393B8400(v59);
  if (v61)
  {
    sub_2393D96C8(v61);
  }

  return v19 | v9;
}

unint64_t sub_2394DB314(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
  {
    v3 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "ICD device is inactive, skipping scheduling resubscribe within DefaultResubscribePolicy", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "ICD device is inactive, skipping scheduling resubscribe within DefaultResubscribePolicy");
    }

    LODWORD(v4) = 1308;
    v5 = 22;
  }

  else if (*(a1 + 48))
  {
    LODWORD(v4) = 1311;
    v5 = 3;
  }

  else
  {
    v7 = sub_2394D7B4C(a1);
    v8 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 64);
      v11 = *(a1 + 328);
      *buf = 67110402;
      v21 = v9;
      v22 = 1024;
      v23 = HIDWORD(v10);
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v7;
      v30 = 2080;
      v31 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Will try to resubscribe to %02x:%08X%08X at retry index %u after %ums due to error %s", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 64);
      v14 = *(a1 + 328);
      v15 = sub_2393C9138();
      sub_2393D5320(13, 2, "Will try to resubscribe to %02x:%08X%08X at retry index %u after %ums due to error %s", v12, HIDWORD(v13), v13, v14, v7, v15);
    }

    v18[0] = 0;
    v16 = sub_2394D7BD8(a1, v7, v18, a2 == 50);
    v5 = v16;
    v4 = HIDWORD(v16);
    if (v18[0] == 1)
    {
      (*(*v19 + 32))(v19);
    }
  }

  return v5 | (v4 << 32);
}

uint64_t sub_2394DB584@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 80) == 1 && *(result + 48) == 3)
  {
    result = sub_2394DA7E0(result, &v4);
    if (result)
    {
      v3 = 0;
    }

    else
    {
      *(a2 + 4) = v4;
      v3 = 1;
    }

    *a2 = v3;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_2394DB5F0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23953208C();
    }
  }

  return result;
}

uint64_t sub_2394DB610(void ***a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4 && *(a2 + 57) == 2 && **a1[1] >= *(a2 + 136))
  {
    sub_239493108(a2);
  }

  return 0;
}

double sub_2394DB6A8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1;
  *(a1 + 96) = sub_2394DB6E8;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1;
  *(a1 + 136) = sub_2394DB870;
  return result;
}

void **sub_2394DB6E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a1;
  v5 = sub_2394C7C20();
  sub_2394CCABC(v5);
  if (sub_2394CA004(v5, *(a1 + 8)))
  {
    v11 = v5[177];
    v6 = sub_2394DBC04(v5 + 199, v5, &v11);
    if (v6)
    {
      sub_2393B87B8(v6, a3, a1);
      *(a1 + 16) = 0;
      sub_2394CCAD0(v5);
      v7 = *(sub_2394C7C20() + 212);
      if (v7)
      {
        (*(*v7 + 24))(v7, a1);
      }
    }

    else
    {
      v9 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "no resource for ReadHandler creation", &v11, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(35, 2, "no resource for ReadHandler creation");
      }
    }
  }

  else
  {
    v8 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "no resource for subscription resumption", &v11, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "no resource for subscription resumption");
    }
  }

  return sub_2394DBCA0(&v12);
}

void **sub_2394DB870(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v2 = sub_2394C7C20();
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to establish CASE for subscription-resumption with error '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v4 = sub_2393C9138();
    sub_2393D5320(13, 1, "Failed to establish CASE for subscription-resumption with error '%s'", v4);
  }

  sub_2394CCABC(v2);
  v5 = v2[212];
  if (v5)
  {
    if (*(a1 + 4) > 0xAu)
    {
      (*(*v5 + 32))(v2[212], *a1, *(a1 + 8), *(a1 + 3));
      sub_2394CCAD0(v2);
    }

    else
    {
      v6 = sub_2394C7C20();
      sub_2394C8B00(v6);
      ++*(a1 + 4);
      (*(*v5 + 24))(v5, a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to get subscription resumption storage", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(13, 1, "Failed to get subscription resumption storage");
    }
  }

  return sub_2394DBCA0(&v8);
}

uint64_t sub_2394DBA78(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = *a3;
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 3) = *(a3 + 3);
  *(a1 + 10) = *(a3 + 10);
  *(a1 + 11) = *(a3 + 11);
  *(a1 + 24) = *(a3 + 24);
  *(a1 + 4) = *(a3 + 4);
  v6 = a3[5];
  if (v6)
  {
    sub_2393C56C0(a1 + 4, 12 * v6);
    if (!a1[4])
    {
      v19 = 0x3E00000000;
      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
    a1[5] = v6;
    do
    {
      v9 = (a3[4] + v7);
      v10 = a1[4] + v7;
      v11 = *v9;
      *(v10 + 8) = *(v9 + 2);
      *v10 = v11;
      ++v8;
      v7 += 12;
    }

    while (v8 < a1[5]);
  }

  v12 = a3[7];
  if (v12)
  {
    sub_2393C56C0(a1 + 6, 12 * v12);
    if (a1[6])
    {
      v13 = 0;
      v14 = 0;
      a1[7] = v12;
      do
      {
        v15 = (a3[6] + v13);
        v16 = a1[6] + v13;
        v17 = *v15;
        *(v16 + 8) = *(v15 + 2);
        *v16 = v17;
        ++v14;
        v13 += 12;
      }

      while (v14 < a1[7]);
      goto LABEL_9;
    }

    v19 = 0x4A00000000;
LABEL_12:
    v20 = 11;
    return v20 | v19;
  }

LABEL_9:
  v18 = *(a1 + 8);
  v22 = *a1;
  v23 = v18;
  sub_2394C49D8(a2, &v22, a1 + 8, (a1 + 13), 1, 0, 0);
  v19 = 0;
  v20 = 0;
  return v20 | v19;
}

void *sub_2394DBC04(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2393D52C4(0xD8uLL);
  v7 = v6;
  if (v6)
  {
    sub_2393B87B4(v6, a2 + 40, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void **sub_2394DBCA0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[15];
    if (v3)
    {
      v2[15] = 0;
      v3(v2 + 13);
    }

    v4 = v2[10];
    if (v4)
    {
      v2[10] = 0;
      v4(v2 + 8);
    }

    v5 = v2[6];
    if (v5)
    {
      j__free(v5);
      v2[6] = 0;
    }

    v6 = v2[4];
    if (v6)
    {
      j__free(v6);
      v2[4] = 0;
    }

    j__free(v2);
  }

  return a1;
}

uint64_t sub_2394DBD1C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBDEB8;
  *(a1 + 8) = a2;
  sub_2393DB79C(a1 + 16);
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  sub_2393DB79C(a1 + 176);
  sub_2393DB79C(a1 + 208);
  sub_2393DB79C(a1 + 240);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 304;
  *(a1 + 312) = a1 + 304;
  sub_2393C7B90(a1 + 320);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = &unk_284BB83A8;
  *(a1 + 408) = 0;
  sub_2393C7B90(a1 + 416);
  *(a1 + 480) = 1;
  *(a1 + 488) = &unk_284BBDF68;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 518) = 0;
  *(a1 + 508) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = a1 + 488;
  *(a1 + 528) = 0;
  *(a1 + 530) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 546) = 0;
  return a1;
}

uint64_t sub_2394DBE48(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2394DBD1C(a1, a3);
  if (*a2)
  {
    *(a1 + 480) = (*(**a2 + 48))(*a2);
    *(a1 + 520) = *a2;
  }

  v5 = a2[1];
  if (v5)
  {
    sub_2394DBEC0(a1, v5);
  }

  return a1;
}

uint64_t sub_2394DBEC0(uint64_t result, uint64_t a2)
{
  if (*(result + 544))
  {
    sub_239537584();
  }

  *(result + 536) = a2;
  return result;
}

void *sub_2394DBEE0(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBDEB8;
  sub_2394DBF34(a1, a2);
  sub_2393B8400(a1 + 48);
  sub_239493D14((a1 + 38), v3);
  return a1;
}

uint64_t sub_2394DBF34(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 304;
  result = *(a1 + 312);
  if (result == v3)
  {
    goto LABEL_6;
  }

  do
  {
    *(result + 16) = 0;
    result = *(result + 8);
  }

  while (result != v3);
  while (1)
  {
    result = *(a1 + 312);
LABEL_6:
    if (result == v3)
    {
      break;
    }

    sub_23948BDE8(result, a2);
  }

  return result;
}

void sub_2394DBF8C(void *a1, uint64_t a2)
{
  sub_2394DBEE0(a1, a2);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394DBFC4(uint64_t a1)
{
  if (!*(a1 + 536) || (*(a1 + 549) & 1) != 0)
  {
    v2 = 0x4100000000;
    LODWORD(v3) = 3;
    return v2 | v3;
  }

  if (*(a1 + 550))
  {
LABEL_18:
    LODWORD(v3) = 0;
    v2 = 0;
    return v2 | v3;
  }

  sub_2394C57B0(a1 + 320);
  v4 = (*(**(a1 + 536) + 72))(*(a1 + 536));
  sub_2393D9C18(v4, 0x26u, &v8);
  if (!v8)
  {
    v2 = 0x4900000000;
    LODWORD(v3) = 11;
    return v2 | v3;
  }

  if (sub_2393D980C(v8) <= v4)
  {
    v5 = 16;
  }

  else
  {
    v5 = sub_2393D980C(v8) - v4 + 16;
  }

  sub_238EA16C4(a1 + 384, &v8, 0);
  sub_2393C7BF0(a1 + 320, a1 + 384, 0xFFFFFFFF);
  v3 = sub_2393DCD60(a1 + 16, a1 + 320);
  if (v3)
  {
    goto LABEL_14;
  }

  if (*(a1 + 551) == 1)
  {
    v3 = sub_2393DCEBC(a1 + 16);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  v3 = sub_2393C7D60(*(a1 + 32), v5);
  if (v3)
  {
    goto LABEL_14;
  }

  sub_2393DAE68((a1 + 16), 0);
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
    sub_2393DCDBC((a1 + 16), 1);
    v3 = *(a1 + 16);
    if (v3)
    {
LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }

    *(a1 + 550) = 1;
    sub_2394DC184(a1, 1);
  }

LABEL_15:
  v2 = v3 & 0xFFFFFFFF00000000;
  if (v8)
  {
    sub_2393D96C8(v8);
  }

  if (v6)
  {
    goto LABEL_18;
  }

  return v2 | v3;
}

void sub_2394DC184(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 544) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v6 = 10;
    v7 = 2080;
    v8 = sub_2394DE6E0(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Command handler moving to [%10.10s]", buf, 0x12u);
  }

  if (sub_2393D5398(3u))
  {
    v4 = sub_2394DE6E0(a1);
    sub_2393D5320(13, 3, "Command handler moving to [%10.10s]", v4);
  }
}

uint64_t sub_2394DC26C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (*(a1 + 544))
  {
    sub_2395375E4();
  }

  sub_2394DBEC0(a1, a2);
  sub_2394C4564(v9, a1);
  v7 = sub_2394DC2F0(a1, a3, a4);
  *(a1 + 553) = 1;
  sub_2394C4510(v9);
  sub_238EA9350(v9);
  return v7;
}

uint64_t sub_2394DC2F0(uint64_t a1, void *a2, int a3)
{
  sub_2393C5AAC(v17);
  v18 = 0;
  sub_2393DD178(v16);
  sub_2393DD178(v15);
  sub_238DD2F90(v17, a2);
  if (sub_2393DD0A8(v16, v17))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 536);
  if (!v6)
  {
    sub_239537644();
  }

  (*(*v6 + 40))(v14);
  if (LOBYTE(v14[0]) == 1)
  {
    *(a1 + 549) = v14[0];
  }

  if (sub_2393DA994(v16, (a1 + 547)) || sub_2393DC8DC(v16, (a1 + 548)) || sub_2393DC8EC(v16, v15))
  {
LABEL_8:
    v7 = 0x80;
    goto LABEL_9;
  }

  if (*(a1 + 548) == a3)
  {
    v14[2] = v16[2];
    v14[3] = v16[3];
    v14[4] = v16[4];
    v14[0] = v16[0];
    v14[1] = v16[1];
    if (sub_2394DC8B4(a1, v14))
    {
      goto LABEL_8;
    }

    sub_2393C5AAC(v12);
    sub_2393DD1C8(v15, v12);
    v11 = 0;
    if (sub_2393C78C8(v12, &v11, 0))
    {
      goto LABEL_8;
    }

    if (v11 >= 2)
    {
      *(a1 + 551) = 1;
    }

    while (1)
    {
      v9 = sub_2393C6B34(v12);
      if (v9)
      {
        break;
      }

      if (v13 != 256)
      {
        goto LABEL_8;
      }

      sub_2393DD178(v14);
      if (sub_2393DD7F4(v14, v12))
      {
        goto LABEL_8;
      }

      if (*(a1 + 549) == 1)
      {
        v10 = sub_2394DCAF8(a1, v14);
      }

      else
      {
        v10 = sub_2394DD2B8(a1, v14);
      }

      v7 = v10;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    if (v9 != 33)
    {
      goto LABEL_8;
    }

    if (sub_2393DD104(v16))
    {
      v7 = 0x80;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = -55;
  }

LABEL_9:
  if (v18)
  {
    sub_2393D96C8(v18);
  }

  return v7;
}

unint64_t sub_2394DC4E0(uint64_t a1, __int16 *a2, int a3, uint64_t a4)
{
  v20 = *a2;
  v6 = *(a2 + 2);
  v21 = *(a2 + 1);
  v22 = a3;
  v17 = *a2;
  v18 = v6;
  v19 = 0;
  v7 = *(a1 + 546);
  *(a1 + 546) = 1;
  v8 = sub_2394DC648(a1, &v20, &v17);
  *(a1 + 546) = v7;
  if (!v8)
  {
    if (*(a1 + 544) != 3 || (v10 = *(a1 + 128)) == 0)
    {
      v9 = 0x9300000000;
      LODWORD(v8) = 3;
      return v8 | v9;
    }

    v11 = (*(*a1 + 96))(a1);
    if (v11 && *(v11 + 88) == 1)
    {
      sub_238EA6DC0(v11, &v15, v12);
      v13 = v15[24];
      (*(*v15 + 32))(v15);
    }

    else
    {
      v13 = 0;
    }

    v15 = v10;
    v16 = v13;
    v8 = (*(*a4 + 16))(a4, &v15, 1);
    if (!v8)
    {
      v8 = sub_2394DC700(a1, 0);
    }
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394DC648(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  (*(**(a1 + 520) + 16))(v7);
  if (v8 == 1)
  {
    return sub_2394DE210(a1, v7, a2, *(a3 + 12));
  }

  else
  {
    return 0x28400000003;
  }
}

uint64_t sub_2394DC6E4(uint64_t a1)
{
  if (*(a1 + 544) == 3)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2394DC700(uint64_t a1, int a2)
{
  if (*(a1 + 544) == 3)
  {
    if (a2 && (v3 = sub_2393C8DE0(*(a1 + 128), *(a1 + 288)), v3) || *(a1 + 530) == 1 && (v3 = sub_2393DB974(a1 + 112, *(a1 + 528)), v3) || (v3 = sub_2393DA87C(a1 + 112), v3) || (v3 = sub_2393DA87C(a1 + 80), v3))
    {
      v4 = v3 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394DC184(a1, 4);
      LODWORD(v3) = 0;
      v4 = 0;
    }
  }

  else
  {
    v4 = 0x2BE00000000;
    LODWORD(v3) = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394DC7B4(uint64_t a1, __int16 *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 536);
  if (v4)
  {
    if (*(a1 + 549))
    {
      v6 = 0;
      v4 = 0;
    }

    else
    {
      *(a1 + 552) = 0;
      v10 = sub_2394DC4E0(a1, a2, a3, a4);
      if (v10)
      {
        if (!sub_2394DE448(a1) && v10 == 11 && *(a1 + 544) == 4)
        {
          v10 = sub_2394DE354(a1);
          if (!v10)
          {
            v10 = sub_2394DC4E0(a1, a2, a3, a4);
            if (v10)
            {
              sub_2394DE448(a1);
            }
          }
        }

        v4 = v10 & 0xFFFFFFFF00000000;
      }

      else
      {
        v4 = 0;
        LODWORD(v10) = 0;
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v4 | v6;
}

unint64_t sub_2394DC8B4(uint64_t a1, int *a2)
{
  v24 = 0;
  sub_2393DD178(v23);
  v4 = sub_2393DC8EC(a2, v23);
  v5 = v4;
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393C5AAC(v21);
    sub_2393DD1C8(v23, v21);
    v7 = sub_2393C78C8(v21, &v24, 0);
    if (v7)
    {
LABEL_4:
      v6 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = v24;
      if (*(a1 + 549) == 1)
      {
        if (v24 == 1)
        {
          v6 = 0;
        }

        else
        {
          v6 = 0xC900000000;
        }

        if (v24 == 1)
        {
          LODWORD(v7) = 0;
        }

        else
        {
          LODWORD(v7) = 47;
        }
      }

      else if (v24 <= *(a1 + 480))
      {
        LODWORD(v7) = 47;
        while (1)
        {
          v9 = sub_2393C6B34(v21);
          if (v9)
          {
            break;
          }

          if (v22 != 256)
          {
            v6 = 0xD700000000;
            goto LABEL_36;
          }

          sub_2393DD178(v20);
          v9 = sub_2393DD7F4(v20, v21);
          if (v9)
          {
            goto LABEL_26;
          }

          sub_2393DD178(v19);
          LOWORD(v17) = 0;
          v18 = 0;
          v10 = sub_2393DB6C8(v20, v19);
          if (v10 || (v10 = sub_2393DB9A4(v19, &v17), v10))
          {
            v7 = v10;
            goto LABEL_4;
          }

          LOBYTE(v15) = 0;
          v16 = 0;
          v14 = 0;
          v9 = sub_2393DAA4C(v20, &v14);
          if (v9)
          {
            if (v9 != 33)
            {
              goto LABEL_26;
            }

            if (v8 > 1)
            {
              v6 = 0xE900000000;
              goto LABEL_36;
            }
          }

          else
          {
            v15 = v14;
            v16 = 1;
          }

          v9 = (*(**(a1 + 520) + 32))(*(a1 + 520), &v17, &v15);
          if (v9)
          {
LABEL_26:
            v6 = v9 & 0xFFFFFFFF00000000;
LABEL_33:
            LODWORD(v7) = v9;
            goto LABEL_36;
          }
        }

        if (v9 == 33)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          v6 = v11 & 0xFFFFFFFF00000000;
          goto LABEL_33;
        }

        v12 = sub_2393DD104(a2);
        LODWORD(v7) = v12;
        v6 = v12 & 0xFFFFFFFF00000000;
      }

      else
      {
        v6 = 0xD000000000;
        LODWORD(v7) = 47;
      }
    }

LABEL_36:
    v5 = v7;
  }

  return v5 | v6;
}

uint64_t sub_2394DCAF8(uint64_t a1, int *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v40);
  sub_2393C5AAC(v38);
  v37 = 0;
  v36 = -65536;
  v4 = sub_2394B4FC8();
  if (sub_2393DB6C8(a2, v40) || sub_2393DBA04(v40, &v37 + 1, &v37))
  {
    return 128;
  }

  v6 = *(a1 + 536);
  if (!v6)
  {
    sub_2395376DC();
  }

  (*(*v6 + 40))(buf);
  isa_low = LOWORD(sub_238E0A934(buf, v7)->super.isa);
  v9 = (*(*a1 + 48))(a1);
  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *&buf[4] = isa_low;
    *&buf[8] = 1024;
    *&buf[10] = HIWORD(HIDWORD(v37));
    *&buf[14] = 1024;
    LODWORD(v42) = WORD2(v37);
    WORD2(v42) = 1024;
    *(&v42 + 6) = WORD1(v37);
    WORD5(v42) = 1024;
    HIDWORD(v42) = v37;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Received group command for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "Received group command for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", isa_low, HIWORD(HIDWORD(v37)), WORD2(v37), WORD1(v37), v37);
  }

  v11 = sub_2393DB910(a2, v38);
  if (v11)
  {
    if (v11 != 33)
    {
      return 1;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *&buf[4] = isa_low;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(HIDWORD(v37));
      *&buf[14] = 1024;
      LODWORD(v42) = WORD2(v37);
      WORD2(v42) = 1024;
      *(&v42 + 6) = WORD1(v37);
      WORD5(v42) = 1024;
      HIDWORD(v42) = v37;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Received command without data for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "Received command without data for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", isa_low, HIWORD(HIDWORD(v37)), WORD2(v37), WORD1(v37), v37);
    }

    sub_2393C5ADC(v38, &unk_2395D7DA0, 2uLL);
    if (sub_2393C6B34(v38))
    {
      return 128;
    }
  }

  v12 = (*(*v4 + 120))(v4, v9, 0);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  if ((*(*v12 + 24))(v12, &v36))
  {
    v30 = isa_low;
    do
    {
      if (isa_low == v36)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67110144;
          *&buf[4] = HIWORD(v36);
          *&buf[8] = 1024;
          *&buf[10] = HIWORD(HIDWORD(v37));
          *&buf[14] = 1024;
          LODWORD(v42) = WORD2(v37);
          WORD2(v42) = 1024;
          *(&v42 + 6) = WORD1(v37);
          WORD5(v42) = 1024;
          HIDWORD(v42) = v37;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Processing group command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(13, 3, "Processing group command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", HIWORD(v36), HIWORD(HIDWORD(v37)), WORD2(v37), WORD1(v37), v37);
        }

        LOWORD(v34) = HIWORD(v36);
        HIDWORD(v34) = HIDWORD(v37);
        v35 = v37;
        (*(*a1 + 88))(buf, a1);
        LODWORD(v31[0]) = 0;
        v33 = 0;
        v31[2] = v34;
        v32 = v35;
        v31[1] = buf;
        v14 = (*(*a1 + 72))(a1);
        v33 = v33 & 0xFFFFFFFE | v14;
        if (!(*(**(a1 + 8) + 24))(*(a1 + 8), v31))
        {
          v15 = sub_2394DF150();
          (*(*a1 + 88))(buf, a1);
          if ((*(*v15 + 24))(v15, &v34, buf))
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v16 = HIWORD(v36);
              v17 = HIWORD(HIDWORD(v37));
              v18 = WORD2(v37);
              v19 = WORD1(v37);
              v20 = v37;
              v21 = sub_2393C9138();
              *buf = 67110402;
              *&buf[4] = v16;
              *&buf[8] = 1024;
              *&buf[10] = v17;
              *&buf[14] = 1024;
              LODWORD(v42) = v18;
              WORD2(v42) = 1024;
              *(&v42 + 6) = v19;
              isa_low = v30;
              WORD5(v42) = 1024;
              HIDWORD(v42) = v20;
              LOWORD(v43) = 2080;
              *(&v43 + 2) = v21;
              _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error when calling PreCommandReceived for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X : %s", buf, 0x2Au);
            }

            if (sub_2393D5398(1u))
            {
              v22 = HIWORD(v36);
              v23 = HIWORD(HIDWORD(v37));
              v24 = WORD2(v37);
              v25 = WORD1(v37);
              v26 = v37;
              v27 = sub_2393C9138();
              v29 = v24;
              isa_low = v30;
              sub_2393D5320(13, 1, "Error when calling PreCommandReceived for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X : %s", v22, v23, v29, v25, v26, v27);
            }
          }

          else
          {
            *buf = v38[0];
            v42 = v38[1];
            v45 = v39;
            v43 = v38[2];
            v44 = v38[3];
            (*(**(a1 + 8) + 32))(*(a1 + 8), a1, &v34, buf);
            v28 = sub_2394DF150();
            (*(*a1 + 88))(v31, a1);
            (*(*v28 + 32))(v28, &v34, v31);
          }
        }
      }
    }

    while (((*(*v13 + 24))(v13, &v36) & 1) != 0);
  }

  (*(*v13 + 32))(v13);
  return 0;
}

uint64_t sub_2394DD2B8(void **a1, int *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v19);
  *v18 = 0;
  *&v18[4] = 0;
  sub_2393C5AAC(v17);
  if (!sub_2393DB6C8(a2, v19) && !sub_2393DB9A4(v19, v18))
  {
    ((*a1)[11])(&buf, a1);
    v12 = 0;
    v15 = *&v18[8];
    p_buf = &buf;
    v14 = *v18;
    v16 = ((*a1)[9])(a1);
    v5 = (*(*a1[1] + 24))(a1[1], &v12);
    if (v5)
    {
      v20 = v5;
      v21 = 0;
      v6 = ((*a1)[2])(a1, v18, &v20, 0);
    }

    else
    {
      v7 = sub_2393DB910(a2, v17);
      if (v7 == 33)
      {
        v8 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67110144;
          HIDWORD(buf) = *v18;
          v23 = 1024;
          v24 = HIWORD(*&v18[4]);
          v25 = 1024;
          v26 = *&v18[4];
          v27 = 1024;
          v28 = HIWORD(*&v18[8]);
          v29 = 1024;
          v30 = *&v18[8];
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Received command without data for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", &buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(13, 3, "Received command without data for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", *v18, HIWORD(*&v18[4]), *&v18[4], HIWORD(*&v18[8]), *&v18[8]);
        }

        sub_2393C5ADC(v17, &unk_2395D7DA0, 2uLL);
        v7 = sub_2393C6B34(v17);
      }

      if (!v7)
      {
        v9 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67110144;
          HIDWORD(buf) = *v18;
          v23 = 1024;
          v24 = HIWORD(*&v18[4]);
          v25 = 1024;
          v26 = *&v18[4];
          v27 = 1024;
          v28 = HIWORD(*&v18[8]);
          v29 = 1024;
          v30 = *&v18[8];
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", &buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(13, 3, "Received command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", *v18, HIWORD(*&v18[4]), *&v18[4], HIWORD(*&v18[8]), *&v18[8]);
        }

        v10 = sub_2394DF150();
        ((*a1)[11])(&buf, a1);
        if (!(*(*v10 + 24))(v10, v18, &buf))
        {
          (*(*a1[1] + 32))(a1[1], a1, v18, v17);
          v11 = sub_2394DF150();
          ((*a1)[11])(&buf, a1);
          (*(*v11 + 32))(v11, v18, &buf);
          return 0;
        }
      }

      LOWORD(buf) = 133;
      BYTE2(buf) = 0;
      v6 = ((*a1)[2])(a1, v18, &buf, 0);
    }

    return v6 != 0;
  }

  return 128;
}

uint64_t sub_2394DD74C(uint64_t a1)
{
  *(a1 + 547) = 0;
  *(a1 + 536) = 0;
  sub_2394DC184(a1, 6);
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_239537774((a1 + 296), v2);
  }

  sub_2394DBF34(a1, 0);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

void **sub_2394DD7E4(uint64_t a1, void **a2)
{
  v2 = a1 + 304;
  v3 = a1 + 304;
  do
  {
    v3 = *(v3 + 8);
  }

  while (v3 != a2 && v3 != v2);
  if (v3 == v2)
  {
    sub_23953780C();
  }

  return sub_23948BDE8(a2, a2);
}

void **sub_2394DD844(uint64_t a1, void **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 296) - 1;
  *(a1 + 296) = v4;
  v5 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v9) = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Decreasing reference count for CommandHandlerImpl, remaining %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "Decreasing reference count for CommandHandlerImpl, remaining %u", *(a1 + 296));
  }

  result = sub_2394DD7E4(a1, a2);
  if (!*(a1 + 296))
  {
    if (*(a1 + 536))
    {
      if ((*(a1 + 549) & 1) == 0 && sub_2394DE5BC(a1, 0))
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = sub_2393C9138();
          *buf = 136315138;
          v9 = v7;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to finalize command response: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(13, 1, "Failed to finalize command response: %s");
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Skipping command response: response sender is null", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(13, 2, "Skipping command response: response sender is null");
      }
    }

    return sub_2394DD74C(a1);
  }

  return result;
}

unint64_t sub_2394DDA48(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 536);
  if (v3)
  {
    if (*(a1 + 549))
    {
      LODWORD(v5) = 0;
      v3 = 0;
    }

    else
    {
      v5 = sub_2394DDAFC(a1, a2);
      if (!v5)
      {
        v7 = sub_2393DB75C((a1 + 176));
        v5 = *(a1 + 176);
        if (!v5)
        {
          sub_2393DD518(v7, a3);
          v5 = *v7;
          if (!*v7)
          {
            v5 = sub_2394DDC54(a1);
          }
        }
      }

      v3 = v5 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v3 | v5;
}

unint64_t sub_2394DDAFC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2394DBFC4(a1);
  if (!v4)
  {
    v7 = *(a1 + 544);
    if (v7 != 1)
    {
      if (v7 != 4)
      {
        v6 = 0x2D600000000;
        goto LABEL_11;
      }

      v5 = sub_2394DE400(a1);
    }

    (*(**(a1 + 520) + 16))(&v12, v5);
    if (v15 == 1)
    {
      *(a1 + 528) = v13;
      *(a1 + 530) = v14;
      sub_2394DC184(a1, 2);
      v8 = sub_2393DB564((a1 + 48));
      v4 = *(a1 + 48);
      if (!v4)
      {
        v10 = sub_2393DCBD0(v8);
        v4 = *v10;
        if (!*v10)
        {
          v11 = sub_2393DB71C(v10);
          v4 = *v10;
          if (!*v10)
          {
            v4 = sub_2393DBC00(v11, a2);
            if (!v4)
            {
              sub_2394DC184(a1, 3);
              LODWORD(v4) = 0;
              v6 = 0;
              return v6 | v4;
            }
          }
        }
      }

      goto LABEL_2;
    }

    v6 = 0x2DD00000000;
LABEL_11:
    LODWORD(v4) = 3;
    return v6 | v4;
  }

LABEL_2:
  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

unint64_t sub_2394DDC54(uint64_t a1)
{
  if (*(a1 + 544) == 3)
  {
    if (*(a1 + 530) == 1 && (v2 = sub_2393DB974(a1 + 176, *(a1 + 528)), v2) || (v2 = sub_2393DA87C(a1 + 176), v2) || (v2 = sub_2393DA87C(a1 + 80), v2))
    {
      v3 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394DC184(a1, 4);
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x2EF00000000;
    LODWORD(v2) = 3;
  }

  return v3 | v2;
}

unint64_t sub_2394DDCF4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  *(a1 + 552) = 0;
  v6 = sub_2394DDA48(a1, a2, a3);
  if (v6)
  {
    if (!sub_2394DE448(a1) && v6 == 11 && *(a1 + 544) == 4)
    {
      v6 = sub_2394DE354(a1);
      if (!v6)
      {
        v6 = sub_2394DDA48(a1, a2, a3);
        if (v6)
        {
          sub_2394DE448(a1);
        }
      }
    }

    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v7;
}

void sub_2394DDDC0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = (*(*a1 + 16))(a1);
  if (v1)
  {
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Failed to add command status: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v3 = sub_2393C9138();
      sub_2393D5320(13, 1, "Failed to add command status: %s", v3);
    }

    if (v1 != 11)
    {
      sub_2395378A4();
    }
  }
}

unint64_t sub_2394DDEE4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, const char *a4)
{
  *(&v51[1] + 6) = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (!*a3)
  {
    v21 = 0;
    *buf = 0;
    buf[2] = 0;
LABEL_17:
    v31 = *(a3 + 1);
    if ((v31 & 0x100) != 0)
    {
      buf[0] = v21;
      *&buf[1] = v31;
    }

    return sub_2394DDCF4(a1, a2, buf);
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = "no additional context";
  }

  if (v7 == 1 && (v9 = *(a3 + 1), (v9 & 0x100) != 0))
  {
    v22 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *a2;
      v24 = HIWORD(*(a2 + 1));
      v25 = *(a2 + 1);
      v26 = v8;
      v27 = HIWORD(*(a2 + 2));
      v34 = *(a2 + 2);
      *buf = 67111170;
      v37 = v23;
      v38 = 1024;
      v39 = v24;
      v40 = 1024;
      v41 = v25;
      v42 = 1024;
      v43 = v27;
      v44 = 1024;
      v45 = v34;
      v46 = 1024;
      v47 = 1;
      v48 = 2080;
      v49 = sub_2393DDC88(1);
      v50 = 1024;
      LODWORD(v51[0]) = v9;
      WORD2(v51[0]) = 2080;
      *(v51 + 6) = v26;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) ClusterSpecificCode=%u (%s)", buf, 0x40u);
    }

    if (sub_2393D5398(1u))
    {
      v35 = *a2;
      v28 = HIWORD(*(a2 + 1));
      v29 = *(a2 + 1);
      v30 = HIWORD(*(a2 + 2));
      sub_2393DDC88(*a3);
      sub_2393D5320(13, 1, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) ClusterSpecificCode=%u (%s)", v35, v28, v29, v30);
    }
  }

  else
  {
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = HIWORD(*(a2 + 1));
      v13 = *(a2 + 1);
      v33 = a1;
      v14 = v8;
      v15 = HIWORD(*(a2 + 2));
      v16 = *(a2 + 2);
      *buf = 67110914;
      v37 = v11;
      v38 = 1024;
      v39 = v12;
      v40 = 1024;
      v41 = v13;
      v42 = 1024;
      v43 = v15;
      v17 = v14;
      a1 = v33;
      v44 = 1024;
      v45 = v16;
      v46 = 1024;
      v47 = v7;
      v48 = 2080;
      v49 = sub_2393DDC88(v7);
      v50 = 2080;
      v51[0] = v17;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) (%s)", buf, 0x3Au);
    }

    if (sub_2393D5398(1u))
    {
      v18 = *a2;
      v19 = HIWORD(*(a2 + 1));
      v20 = *(a2 + 1);
      sub_2393DDC88(*a3);
      sub_2393D5320(13, 1, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) (%s)", v18, v19, v20);
    }
  }

  buf[0] = *a3;
  v21 = buf[0];
  *&buf[1] = 0;
  if (buf[0] <= 1u)
  {
    goto LABEL_17;
  }

  return sub_2394DDCF4(a1, a2, buf);
}
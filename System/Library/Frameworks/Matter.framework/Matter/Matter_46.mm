unint64_t sub_2394DE210(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v8 = sub_2394DBFC4(a1);
  if (!v8)
  {
    if ((*(a1 + 546) & 1) != 0 || *(a1 + 544) != 4 || (v8 = sub_2394DE354(a1), !v8))
    {
      sub_2394DE400(a1);
      v11 = *(a1 + 544);
      if (v11 != 4 && v11 != 1)
      {
        v9 = 0x2A000000000;
        LODWORD(v8) = 3;
        return v9 | v8;
      }

      v13 = *(a2 + 12);
      *(a1 + 530) = *(a2 + 14);
      *(a1 + 528) = v13;
      sub_2394DC184(a1, 2);
      v14 = sub_2393DB564((a1 + 48));
      v8 = *(a1 + 48);
      if (!v8)
      {
        v15 = sub_2393DB4E4(v14);
        v8 = *v15;
        if (!*v15)
        {
          v16 = sub_2393DB93C(v15);
          v8 = *v15;
          if (!*v15)
          {
            v8 = sub_2393DBC00(v16, a3);
            if (!v8)
            {
              if (!a4 || (v8 = sub_2393C8CE0(v15[2], 1uLL, 21, (a1 + 288)), !v8))
              {
                sub_2394DC184(a1, 3);
                LODWORD(v8) = 0;
                v9 = 0;
                return v9 | v8;
              }
            }
          }
        }
      }
    }
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394DE354(uint64_t a1)
{
  v2 = sub_2394DE5BC(a1, 1);
  if (!v2)
  {
    if (*(a1 + 550) == 1)
    {
      sub_2395379D4();
    }

    v2 = sub_2394DBFC4(a1);
    if (!v2)
    {
      v4 = 0;
      return v2 & 0xFFFFFFFF00000000 | v4;
    }

    v3 = *(a1 + 536);
    if (!v3)
    {
      sub_23953793C();
    }

    (*(*v3 + 64))(v3);
  }

  v4 = v2;
  return v2 & 0xFFFFFFFF00000000 | v4;
}

__n128 sub_2394DE400(uint64_t a1)
{
  v1 = *(a1 + 544);
  v2 = v1 == 4 || v1 == 1;
  if (v2 && !*(a1 + 48) && !*(a1 + 16))
  {
    v3 = *(a1 + 32);
    result = v3[2];
    v5 = v3[3];
    v7 = *v3;
    v6 = v3[1];
    *(a1 + 448) = result;
    *(a1 + 464) = v5;
    *(a1 + 416) = v7;
    *(a1 + 432) = v6;
    *(a1 + 545) = v1;
    *(a1 + 552) = 1;
  }

  return result;
}

uint64_t sub_2394DE448(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v13 = v1;
    v14 = v2;
    if ((*(a1 + 544) & 0xFE) == 2)
    {
      v4 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Rolling back response", v12, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(13, 3, "Rolling back response");
      }

      sub_2393D06DC((a1 + 48));
      v5 = *(a1 + 32);
      v6 = *(a1 + 416);
      v7 = *(a1 + 432);
      v8 = *(a1 + 464);
      v5[2] = *(a1 + 448);
      v5[3] = v8;
      *v5 = v6;
      v5[1] = v7;
      sub_2393D06DC((a1 + 16));
      sub_2394DC184(a1, *(a1 + 545));
      v9 = 0;
      v10 = 0;
      *(a1 + 552) = 0;
    }

    else
    {
      v9 = 0x30A00000000;
      v10 = 3;
    }
  }

  else
  {
    v9 = 0x30900000000;
    v10 = 3;
  }

  return v10 | v9;
}

uint64_t sub_2394DE55C(uint64_t a1)
{
  if (*(a1 + 553) == 1)
  {
    sub_239537B04();
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    sub_239537A6C();
  }

  v2 = *(*v1 + 32);

  return v2();
}

unint64_t sub_2394DE5BC(uint64_t a1, int a2)
{
  v10 = 0;
  if (*(a1 + 544) == 4)
  {
    v4 = sub_2393DCC6C(a1 + 48);
    v5 = v4;
    if (v4)
    {
      v6 = HIDWORD(v4);
    }

    else if (a2 && (sub_2393DCE0C(a1 + 16, 1), (v5 = *(a1 + 16)) != 0))
    {
      v6 = *(a1 + 20);
    }

    else
    {
      v7 = sub_2393DCF10(a1 + 16);
      if (v7 || (v7 = sub_238DD2EFC(a1 + 320, &v10), v7))
      {
        v6 = HIDWORD(v7);
        v5 = v7;
      }

      else
      {
        v9 = *(a1 + 536);
        if (!v9)
        {
          sub_239537B9C();
        }

        (*(*v9 + 56))(v9, &v10);
        v5 = 0;
        v6 = 0;
        *(a1 + 550) = 0;
        *(a1 + 552) = 0;
      }
    }

    if (v10)
    {
      sub_2393D96C8(v10);
    }
  }

  else
  {
    v5 = 3;
    v6 = 829;
  }

  return v5 | (v6 << 32);
}

const char *sub_2394DE6E0(uint64_t a1)
{
  v1 = *(a1 + 544);
  if (v1 > 6)
  {
    return "N/A";
  }

  else
  {
    return off_278A83160[v1];
  }
}

uint64_t sub_2394DE708(uint64_t a1)
{
  result = *(a1 + 536);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t sub_2394DE738(uint64_t a1)
{
  if (*(a1 + 553) == 1)
  {
    sub_239537CCC();
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    sub_239537C34();
  }

  v2 = *(*v1 + 24);

  return v2();
}

uint64_t sub_2394DE7A0(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 56))(a1);
  if (result)
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Adding response failed: %s. Returning failure instead.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v6 = sub_2393C9138();
      sub_2393D5320(13, 1, "Adding response failed: %s. Returning failure instead.", v6);
    }

    *buf = 1;
    buf[2] = 0;
    return (*(*a1 + 24))(a1, a2, buf, 0);
  }

  return result;
}

uint64_t sub_2394DE908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 536);
  if (!v3)
  {
    sub_239537D64();
  }

  v4 = *(*v3 + 16);

  return v4();
}

uint64_t sub_2394DE950(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = 1;
  v4 = a3 << 8;
  return (*(*a1 + 16))(a1, a2, &v4, 0);
}

uint64_t sub_2394DE9A8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = 1;
  v4 = (a3 << 8) | 1;
  return (*(*a1 + 16))(a1, a2, &v4, 0);
}

uint64_t sub_2394DEA14@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = (result + 16);
    while (*v4 != *a2 || *(v4 + 1) != *(a2 + 1) || *(v4 + 2) != *(a2 + 2))
    {
      v4 += 8;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    *a3 = *v4;
    v5 = 1;
  }

  else
  {
LABEL_7:
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_2394DEA78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    *a2 = *(result + 16);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_2394DEA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = 0x5900000000;
    v4 = 11;
  }

  else
  {
    v4 = 0;
    *&v6 = *a2;
    DWORD2(v6) = *(a2 + 8);
    WORD6(v6) = *a3;
    BYTE14(v6) = *(a3 + 2);
    *(a1 + 8) = 1;
    *(a1 + 16) = v6;
  }

  return v4 | v3;
}

uint64_t *sub_2394DEB0C(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    do
    {
      v2 = *(v1 + 16);
      *(v1 + 16) = 0;
      v1 = v2;
    }

    while (v2);
  }

  *result = 0;
  return result;
}

uint64_t sub_2394DEB2C(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      while (!sub_2393C4AC8(v4, a2))
      {
        v4 = *(v4 + 16);
        if (!v4)
        {
          v5 = *a1;
          goto LABEL_8;
        }
      }

      v8 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Duplicate command handler registration failed", v10, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(35, 1, "Duplicate command handler registration failed");
      }

      v6 = 0x3900000000;
      v7 = 3;
    }

    else
    {
      v5 = 0;
LABEL_8:
      v6 = 0;
      v7 = 0;
      *(a2 + 16) = v5;
      *a1 = a2;
    }
  }

  else
  {
    v6 = 0x3200000000;
    v7 = 47;
  }

  return v7 | v6;
}

MTRScenesManagementClusterRemoveSceneParams *sub_2394DEC34(MTRScenesManagementClusterRemoveSceneParams *result, uint64_t a2)
{
  isa = result->super.isa;
  if (result->super.isa)
  {
    v3 = a2;
    v4 = result;
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = isa;
        result = (isa + 8);
        v7 = *(isa + 8);
        isa = *(isa + 2);
        if (v7 == 1)
        {
          result = sub_238E0A934(result, a2);
          if (LOWORD(result->super.isa) == v3)
          {
            break;
          }
        }

        v5 = v6;
        if (!isa)
        {
          return result;
        }
      }

      v8 = (v5 + 16);
      if (!v5)
      {
        v8 = v4;
      }

      v8->super.isa = *(v6 + 2);
      *(v6 + 2) = 0;
    }

    while (isa);
  }

  return result;
}

uint64_t sub_2394DECC4(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *a1;
    if (*a1)
    {
      if (sub_2393C4AC8(*a1, a2))
      {
        v5 = 0;
LABEL_10:
        v6 = 0;
        v7 = 0;
        if (v5)
        {
          v10 = (v5 + 16);
        }

        else
        {
          v10 = a1;
        }

        *v10 = *(v3 + 16);
        *(v3 + 16) = 0;
      }

      else
      {
        v7 = 16;
        v8 = v3;
        while (1)
        {
          v3 = *(v8 + 16);
          if (!v3)
          {
            break;
          }

          v9 = sub_2393C4AC8(*(v8 + 16), a2);
          v5 = v8;
          v8 = v3;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        v6 = 0x7C00000000;
      }
    }

    else
    {
      v6 = 0x7C00000000;
      v7 = 16;
    }
  }

  else
  {
    v6 = 0x6400000000;
    v7 = 47;
  }

  return v7 | v6;
}

uint64_t sub_2394DEDA4(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = a2;
    do
    {
      if ((*(v3 + 8) != 1 || LOWORD(sub_238E0A934((v3 + 8), a2)->super.isa) == v5) && *(v3 + 12) == a3)
      {
        break;
      }

      v3 = *(v3 + 16);
    }

    while (v3);
  }

  return v3;
}

unint64_t sub_2394DEE10(unsigned int a1, uint64_t a2, __int16 a3)
{
  if (!a2)
  {
    return 0x1C00000003;
  }

  sub_2393D9C18(0x4AAuLL, 0x26u, &v16);
  if (v16)
  {
    sub_2393C7B90(v13);
    v14[1] = 0;
    v14[2] = 0;
    v14[0] = &unk_284BB83A8;
    v15 = 0;
    sub_238EA16C4(v14, &v16, 0);
    sub_2393C7BF0(v13, v14, 0xFFFFFFFF);
    sub_2393DB79C(&v12);
    v6 = sub_2393DD7B8(&v12, v13);
    v7 = v6;
    if (v6)
    {
      v8 = HIDWORD(v6);
    }

    else
    {
      sub_2393DD71C(&v12, a1);
      v7 = v12;
      if (v12)
      {
        v8 = HIDWORD(v12);
      }

      else
      {
        v10 = sub_238DD2EFC(v13, &v16);
        if (v10 || (sub_239470428(a2, 2000), v11 = a3, v10 = sub_239470478(a2, 0x10000u, 1, &v16, &v11), v10))
        {
          v8 = HIDWORD(v10);
          v7 = v10;
        }

        else
        {
          v7 = 0;
          v8 = 0;
        }
      }
    }

    sub_2393B8400(v14);
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }

  else
  {
    v7 = 11;
    v8 = 30;
  }

  return v7 | (v8 << 32);
}

unint64_t sub_2394DEFB4(void *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v17);
  sub_2393C5AAC(v15);
  v16 = 0;
  sub_238DD2F90(v15, a1);
  v4 = sub_2393DD0A8(v17, v15);
  if (v4)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v14 = 0;
  v4 = sub_2393DD6D8(v17, &v13);
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13;
    v7 = sub_2393DDC88(v13);
    buf[0] = 67109378;
    buf[1] = v6;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received status response, status is 0x%02x (%s)", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = v13;
    v9 = sub_2393DDC88(v13);
    sub_2393D5320(35, 2, "Received status response, status is 0x%02x (%s)", v8, v9);
  }

  v4 = sub_2393DD104(v17);
  if (v4)
  {
LABEL_8:
    v10 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v4) = 0;
    v10 = 0;
    *a2 = sub_2393DD584(&v13);
    a2[1] = v12;
  }

  if (v16)
  {
    sub_2393D96C8(v16);
  }

  return v10 | v4;
}

uint64_t sub_2394DF15C(uint64_t a1)
{
  v1 = qword_27DF77520;
  qword_27DF77520 = a1;
  return v1;
}

uint64_t sub_2394DF178(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = 0;
  *(a1 + 304) = a2;
  v5 = *a3;
  *(a1 + 296) = *(a3 + 2);
  *(a1 + 280) = v5;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  do
  {
    v6 = &v13[v4];
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 16) = 1;
    *(v6 + 9) = 5540;
    *(v6 + 5) = 0;
    *(v6 + 3) = 0;
    result = sub_239476060();
    *(v6 + 4) = result;
    *(v6 + 20) = v8;
    *(v6 + 22) = 0;
    *(v6 + 46) = 0;
    v4 += 3;
  }

  while (v4 != 15);
  v9 = 0;
  LOWORD(v14) = 0;
  do
  {
    v10 = a1 + v9 * 16;
    *(v10 + 32) = v13[v9];
    v11 = DWORD1(v13[v9 + 1]);
    *(v10 + 48) = v13[v9 + 1];
    *(v10 + 52) = v11;
    v12 = *&v13[v9 + 2];
    *(v10 + 56) = *(&v13[v9 + 1] + 1);
    *(v10 + 64) = v12;
    *(v10 + 71) = *(&v13[v9 + 2] + 7);
    v9 += 3;
  }

  while (v9 != 15);
  *(a1 + 272) = v14;
  return result;
}

void sub_2394DF288(uint64_t a1, __int128 *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v23 = a1 + 280;
  v24 = a2;
  sub_23948BC28(__str);
  *__str = *(a2 + 5);
  v4 = sub_2394BA084(a2);
  v5 = sub_2394DF48C(a1 + 32, a2, v4);
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v7 = *(a1 + 280);
  v6 = *(a1 + 288);
  v8 = sub_2393D9044(0x22u);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *buf = 136316418;
      v11 = __str;
      v12 = 1024;
      v13 = v4;
      v14 = 1024;
      v15 = HIDWORD(v6);
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = HIDWORD(v7);
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: new best score: %u (for %08X%08X-%08X%08X)", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "%s: new best score: %u (for %08X%08X-%08X%08X)", __str);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 136316418;
      v11 = __str;
      v12 = 1024;
      v13 = v4;
      v14 = 1024;
      v15 = HIDWORD(v6);
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = HIDWORD(v7);
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: score has not improved: %u (for %08X%08X-%08X%08X)", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "%s: score has not improved: %u (for %08X%08X-%08X%08X)", __str);
    }
  }
}

uint64_t sub_2394DF48C(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v21 = *a2;
  v6 = *(a2 + 5);
  v22 = *(a2 + 4);
  v23 = v6;
  v24 = *(a2 + 3);
  if (!sub_2393CFBB4(&v21))
  {
    v23 = 0;
    v7 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Lookup clearing interface for non LL address", v20, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "Lookup clearing interface for non LL address");
    }
  }

  v8 = 0;
  v9 = a1;
  while (v8 < *(a1 + 240))
  {
    if (sub_2394BF148(v9, &v21))
    {
      return 0;
    }

    v20[0] = *(v9 + 20);
    if (sub_2394BA084(v9) < a3)
    {
      break;
    }

    ++v8;
    v9 += 48;
    if (v8 == 5)
    {
      return 0;
    }
  }

  v11 = *(a1 + 240);
  if (v11 > v8)
  {
    v12 = v11 - 1;
    v13 = a1 + 48 * *(a1 + 240) + 20;
    do
    {
      if (v11 <= 4)
      {
        v14 = (a1 + 48 * v12);
        v15 = *v14;
        *(v13 - 4) = *(v14 + 4);
        *(v13 - 20) = v15;
        *v13 = *(v14 + 5);
        *(v13 + 4) = *(v14 + 3);
        v16 = *(v14 + 4);
        *(v13 + 19) = *(v14 + 39);
        *(v13 + 12) = v16;
      }

      --v11;
      --v12;
      v13 -= 48;
    }

    while (v8 < v11);
    LODWORD(v11) = *(a1 + 240);
  }

  if (v11 < 5)
  {
    *(a1 + 240) = v11 + 1;
  }

  v17 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v17;
  *(v9 + 20) = *(a2 + 5);
  *(v9 + 24) = *(a2 + 3);
  v18 = *(a2 + 4);
  *(v9 + 39) = *(a2 + 39);
  *v9 = v21;
  v19 = v23;
  *(v9 + 16) = v22;
  *(v9 + 20) = v19;
  *(v9 + 24) = v24;
  *(v9 + 32) = v18;
  return 1;
}

uint64_t sub_2394DF680(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(a1 + 304);
  v5 = *(a1 + 296);
  if (v4 < v5)
  {
    return (v5 - v4);
  }

  if (*(a1 + 272) > *(a1 + 273))
  {
    return 0;
  }

  v5 = *(a1 + 300);
  if (v4 < v5)
  {
    return (v5 - v4);
  }

  v9 = v2;
  v10 = v3;
  v7 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Unexpected timeout: lookup should have been cleaned already.", v8, 2u);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393D5320(34, 1, "Unexpected timeout: lookup should have been cleaned already.");
    return 0;
  }

  return result;
}

void sub_2394DF74C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2 - *(a1 + 304);
  v6 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 280);
    v7 = *(a1 + 288);
    *buf = 67110144;
    *&buf[4] = HIDWORD(v7);
    *&buf[8] = 1024;
    *&buf[10] = v7;
    *&buf[14] = 1024;
    v12 = HIDWORD(v8);
    *v13 = 1024;
    *&v13[2] = v8;
    *&v13[6] = 2048;
    *&v13[8] = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Checking node lookup status for %08X%08X-%08X%08X after %lu ms", buf, 0x24u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "Checking node lookup status for %08X%08X-%08X%08X after %lu ms", HIDWORD(*(a1 + 288)), *(a1 + 288), HIDWORD(*(a1 + 280)), *(a1 + 280), v5);
  }

  if (v5 >= *(a1 + 296))
  {
    if (*(a1 + 272) > *(a1 + 273))
    {
      sub_2394E0860(a1 + 32, buf);
      *(a3 + 48) = 2;
      *a3 = *buf;
      v9 = *v13;
      *(a3 + 16) = v12;
      *(a3 + 20) = v9;
      v10 = *&v13[12];
      *(a3 + 24) = *&v13[4];
      *(a3 + 32) = v10;
      *(a3 + 39) = *&v13[19];
      return;
    }

    if (v5 >= *(a1 + 300))
    {
      *(a3 + 48) = 1;
      *a3 = 0x7C00000032;
      *(a3 + 8) = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
      return;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Keeping DNSSD lookup active", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "Keeping DNSSD lookup active");
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 48) = 0;
}

unint64_t sub_2394DF950(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *buf = a2;
  sub_23948BBAC(buf);
  if (*(a1 + 16))
  {
    v6 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    sub_2394DF178(a3, v6, a2);
    v7 = sub_2394BA124();
    v8 = (*(*v7 + 48))(v7, a2);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_23948BD9C((a1 + 32), (a3 + 8));
      sub_2394DFB20(a1);
      v10 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a2;
        v11 = *(a2 + 1);
        v13 = HIDWORD(*a2);
        *buf = 67109888;
        *&buf[4] = HIDWORD(v11);
        v16 = 1024;
        v17 = v11;
        v18 = 1024;
        v19 = v13;
        v20 = 1024;
        v21 = v12;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Lookup started for %08X%08X-%08X%08X", buf, 0x1Au);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(34, 2, "Lookup started for %08X%08X-%08X%08X", HIDWORD(*(a2 + 1)), *(a2 + 1), HIDWORD(*a2), *a2);
      }

      LODWORD(v8) = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = 0xCD00000000;
    LODWORD(v8) = 3;
  }

  return v9 | v8;
}

void sub_2394DFB20(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 16) + 72))(*(a1 + 16), sub_2394E06A8, a1);
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v3 = (a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != a1 + 32)
  {
    v5 = v2;
    LODWORD(v6) = -1;
    do
    {
      if (v4)
      {
        v7 = v4 - 8;
      }

      else
      {
        v7 = 0;
      }

      v8 = sub_2394DF680(v7, v5);
      if (v8 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    if (v6 != -1)
    {
      v10 = (*(**(a1 + 16) + 40))(*(a1 + 16), v6, sub_2394E06A8, a1);
      if (v10)
      {
        v11 = v9;
        v12 = sub_2393D9044(0x22u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = sub_2393C9138();
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Timer schedule error %s assumed permanent", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v14 = sub_2393C9138();
          sub_2393D5320(34, 1, "Timer schedule error %s assumed permanent", v14);
        }

        v15 = *(a1 + 40);
        while (v15 != v3)
        {
          v16 = v15 - 1;
          if (!v15)
          {
            v16 = 0;
          }

          *buf = *(v16 + 35);
          v17 = v16[3];
          sub_23948BDE8(v15, v13);
          v15 = *(a1 + 40);
          v18 = sub_2394BA124();
          (*(*v18 + 56))(v18, buf);
          (*(*v17 + 24))(v17, buf, v10, v11);
        }
      }
    }
  }
}

uint64_t sub_2394DFDAC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a1 + 32;
  do
  {
    v3 = *(v3 + 8);
  }

  while (v3 != a2 + 8 && v3 != v2);
  if (v3 == v2)
  {
    if (*(a2 + 272) <= *(a2 + 273))
    {
      v5 = 0xDB00000000;
      v6 = 216;
    }

    else
    {
      v7 = *(a2 + 24);
      v11 = *(a2 + 280);
      sub_2394E0860(a2 + 32, v10);
      v9[1] = &v11;
      v9[0] = 2;
      v9[2] = v10;
      sub_23948BC28(v9);
      (*(*v7 + 16))(v7, &v11, v10);
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0xDA00000000;
    v6 = 3;
  }

  return v6 | v5;
}

uint64_t sub_2394DFEA8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0xE900000000;
    v6 = 47;
  }

  else
  {
    sub_23948BDE8((a2 + 8), a2);
    v9 = sub_2394BA124();
    (*(*v9 + 56))(v9, a2 + 280);
    sub_2394DFB20(a1);
    v11[0] = a2 + 280;
    v11[1] = 0xF000000074;
    v11[2] = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
    sub_23948BCA4(v11);
    if (!a3)
    {
      (*(**(a2 + 24) + 24))(*(a2 + 24), a2 + 280, 0xF400000074, "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp");
    }

    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_2394DFFBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  v3 = sub_2394BA124();
  (*(*v3 + 40))(v3, a1 + 8);
  return 0;
}

uint64_t sub_2394E0014(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v2 = result;
    v3 = (result + 32);
    for (i = *(result + 40); i != v3; i = *(v2 + 40))
    {
      v5 = i - 1;
      if (!i)
      {
        v5 = 0;
      }

      v10 = *(v5 + 35);
      v6 = v5[3];
      sub_23948BDE8(i, a2);
      v9[0] = &v10;
      v9[1] = 0x11700000073;
      v9[2] = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
      sub_23948BCA4(v9);
      v7 = sub_2394BA124();
      (*(*v7 + 56))(v7, &v10);
      (*(*v6 + 24))(v6, &v10, 0x11D00000073, "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp");
    }

    sub_2394DFB20(v2);
    *(v2 + 16) = 0;
    v8 = sub_2394BA124();
    return (*(*v8 + 40))(v8, 0);
  }

  return result;
}

void sub_2394E0160(uint64_t a1, int *a2)
{
  v3 = a1 + 32;
  v4 = *(a1 + 40);
  if (v4 != a1 + 32)
  {
    v6 = a2 + 4;
    do
    {
      v24 = v4;
      v7 = *(v4 + 8);
      if (v4)
      {
        v8 = v4 - 8;
      }

      else
      {
        v8 = 0;
      }

      if (*(v8 + 280) == *(a2 + 21) && *(v4 + 280) == *(a2 + 22))
      {
        v15 = 0uLL;
        v16 = 1;
        v17 = 5540;
        v18 = 0;
        v19 = 0;
        v20 = sub_239476060();
        v21 = v9;
        v22 = 0;
        v23 = 0;
        v17 = *(a2 + 48);
        v18 = *a2;
        v10 = sub_2394E02B8(a2);
        v20 = v10;
        v21 = v11;
        HIBYTE(v22) = *(a2 + 139);
        LOBYTE(v22) = *(a2 + 140);
        if (*(a2 + 142) == 1)
        {
          v23 = *(a2 + 141);
        }

        if (*(a2 + 1))
        {
          v12 = 0;
          v13 = v6;
          do
          {
            v14 = *v13++;
            v15 = v14;
            sub_2394DF288(v8, &v15);
            ++v12;
          }

          while (v12 < *(a2 + 1));
        }

        sub_2394E030C(v10, &v24);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  sub_2394DFB20(a1);
}

unint64_t sub_2394E02B8(uint64_t a1)
{
  v2 = sub_239476060();
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if ((v3 & 0x100000000) == 0)
  {
    LODWORD(v3) = v2;
  }

  if ((v4 & 0x100000000) == 0)
  {
    v4 = HIDWORD(v2);
  }

  return v3 | (v4 << 32);
}

void sub_2394E030C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = *a2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  sub_2394DF74C(v3, v4, &v18);
  v6 = v20;
  if (v20)
  {
    v7 = *a2;
    v8 = *a2 - 8;
    if (!*a2)
    {
      v8 = 0;
    }

    v17 = *(v8 + 280);
    v9 = *(v8 + 24);
    sub_23948BDE8(v7, v5);
    v10 = sub_2394BA124();
    (*(*v10 + 56))(v10, &v17);
    if (v6 == 2)
    {
      v15 = &v17;
      v14 = 1;
      v16 = &v18;
      sub_23948BC28(&v14);
      (*(*v9 + 16))(v9, &v17, &v18);
    }

    else if (v6 == 1)
    {
      v11 = v18;
      v12 = v19;
      v14 = &v17;
      v15 = v18;
      v16 = v19;
      sub_23948BCA4(&v14);
      (*(*v9 + 24))(v9, &v17, v11, v12);
    }

    else
    {
      v13 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Unexpected lookup state (not success or fail).", &v14, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(34, 1, "Unexpected lookup state (not success or fail).");
      }
    }
  }
}

uint64_t sub_2394E052C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 40);
  while (v3 != v2)
  {
    v5 = v3;
    v3 = *(v3 + 8);
    sub_2394E030C(a1, &v5);
  }

  return sub_2394DFB20(a1);
}

void sub_2394E0594(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 32;
  v6 = *(a1 + 40);
  if (v6 != v5)
  {
    do
    {
      v10 = *(v6 + 8);
      v11 = v6 - 8;
      if (!v6)
      {
        v11 = 0;
      }

      if (*(v11 + 280) == *a2 && *(v6 + 280) == a2[1])
      {
        v12 = *(v6 + 16);
        sub_23948BDE8(v6, a2);
        v13 = sub_2394BA124();
        (*(*v13 + 56))(v13, a2);
        (*(*v12 + 24))(v12, a2, a3, a4);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  sub_2394DFB20(a1);
}

void sub_2394E06BC(void *a1, uint64_t a2)
{
  *a1 = off_284BBE078;
  a1[1] = off_284BBE0D0;
  sub_239493D14((a1 + 4), a2);

  nullsub_56();
}

void sub_2394E0734(void *a1, uint64_t a2)
{
  sub_2394E06BC(a1, a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394E076C(void *a1, uint64_t a2)
{
  *(a1 - 1) = off_284BBE078;
  *a1 = off_284BBE0D0;
  sub_239493D14((a1 + 3), a2);

  nullsub_56();
}

void sub_2394E07DC(void *a1, uint64_t a2)
{
  *(a1 - 1) = off_284BBE078;
  *a1 = off_284BBE0D0;
  sub_239493D14((a1 + 3), a2);
  nullsub_56();

  JUMPOUT(0x23EE77B60);
}

__n128 sub_2394E0860@<Q0>(uint64_t result@<X0>, uint64_t a3@<X8>)
{
  v3 = *(result + 241);
  if (*(result + 240) <= v3)
  {
    sub_239537DFC();
  }

  *(result + 241) = v3 + 1;
  v4 = result + 48 * v3;
  v5 = *v4;
  *a3 = *v4;
  v6 = *(v4 + 20);
  *(a3 + 16) = *(v4 + 16);
  *(a3 + 20) = v6;
  v7 = *(v4 + 32);
  *(a3 + 24) = *(v4 + 24);
  *(a3 + 32) = v7;
  *(a3 + 39) = *(v4 + 39);
  return v5;
}

void *sub_2394E08B4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = -1;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = -1;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = -1;
  return result;
}

uint64_t sub_2394E08D8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if (*(v4 + 12) != -1)
    {
      v5 = sub_2394E09C0(a1, a2);
      v4 = *(a1 + 8);
      if ((v5 & 0x100000000) != 0)
      {
        break;
      }
    }

    if (*(v4 + 8) != -1 && (v6 = sub_2394E0C18(a1), (v6 & 0x100000000) != 0))
    {
      *(*(a1 + 8) + 12) = v6;
      *(*(a1 + 8) + 16) = -1;
    }

    else
    {
      v7 = sub_2394E0DBC(a1);
      if ((v7 & 0x10000) == 0)
      {
        return 0;
      }

      *(*(a1 + 8) + 8) = v7;
      *(*(a1 + 8) + 12) = -1;
    }
  }

  *(v4 + 16) = v5;
  v9 = *(a1 + 8);
  v10 = *v9;
  v11 = *(*v9 + 8) == -1 || *v10 == -1 || v10[1] == -1;
  v9[10] = v11;
  return 1;
}

uint64_t sub_2394E09C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 16) == -1)
  {
    *(a1 + 104) = -1;
  }

  else if (*(a1 + 104) != -1)
  {
    goto LABEL_10;
  }

  sub_2394C440C(*a1, v4 + 8, &v23);
  *(a1 + 80) = v23;
  sub_2393D6EB4((a1 + 96), v24);
  sub_2393D6E84(v24);
  v4 = *(a1 + 8);
  if (*(v4 + 16) != -1)
  {
    *(a1 + 104) = 0;
    if (*(a1 + 88))
    {
      v5 = 0;
      do
      {
        v6 = sub_2394E0F94((a1 + 80), v5);
        v4 = *(a1 + 8);
        if (*v6 == *(v4 + 16))
        {
          break;
        }

        v5 = *(a1 + 104) + 1;
        *(a1 + 104) = v5;
      }

      while (v5 < *(a1 + 88));
    }
  }

LABEL_10:
  if (*(v4 + 16) == -1)
  {
    v12 = *(*v4 + 4);
    if (v12 == -1)
    {
      v7 = 0;
      goto LABEL_12;
    }

    *&v23 = *a1;
    WORD4(v23) = -1;
    HIDWORD(v23) = -1;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    v13 = *(v4 + 8);
    v14 = *(v4 + 12);
    v19 = v13;
    v21 = v14;
    v22 = v12;
    v20 = 0;
    v15 = sub_2394C417C(&v23, &v19);
    if (v16)
    {
      if (a2)
      {
        *a2 = v15;
        *(a2 + 8) = 1;
      }
    }

    else
    {
      v17 = **(a1 + 8);
      if (*(v17 + 8) == -1 || *v17 == -1 || (v9 = *(v17 + 4), v9 == -1))
      {
        v11 = 0;
        LOBYTE(v9) = 0;
        v10 = 0;
        goto LABEL_34;
      }

      if (!a2 || *(a2 + 8) != 1)
      {
LABEL_25:
        v10 = v9 & 0xFFFFFF00;
        v11 = 0x100000000;
LABEL_34:
        sub_2393D6E84(&v25);
        return v11 | v10 | v9;
      }

      *(a2 + 8) = 0;
    }

    v9 = *(**(a1 + 8) + 4);
    goto LABEL_25;
  }

  v7 = *(a1 + 104) + 1;
LABEL_12:
  *(a1 + 104) = v7;
  if (*(*v4 + 4) == -1 && v7 < *(a1 + 88))
  {
    if (a2)
    {
      v8 = sub_2394E0F94((a1 + 80), v7);
      if (*(a2 + 8) == 1)
      {
        *(a2 + 8) = 0;
      }

      *a2 = *v8;
      *(a2 + 8) = 1;
      v7 = *(a1 + 104);
    }

    v9 = *sub_2394E0F94((a1 + 80), v7);
    v10 = v9 & 0xFFFFFF00;
    v11 = 0x100000000;
  }

  else
  {
    v11 = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
  }

  return v11 | v10 | v9;
}

uint64_t sub_2394E0C18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 3) == -1)
  {
    *(a1 + 72) = -1;
  }

  else if (*(a1 + 72) != -1)
  {
    goto LABEL_10;
  }

  sub_2394C4398(*a1, *(v2 + 4), &v12);
  *(a1 + 48) = v12;
  sub_2393D6EB4((a1 + 64), &v13);
  sub_2393D6E84(&v13);
  v2 = *(a1 + 8);
  if (*(v2 + 3) != -1)
  {
    *(a1 + 72) = 0;
    if (*(a1 + 56))
    {
      v3 = 0;
      do
      {
        v4 = sub_2394E0FBC((a1 + 48), v3);
        v2 = *(a1 + 8);
        if (*v4 == *(v2 + 3))
        {
          break;
        }

        v3 = *(a1 + 72) + 1;
        *(a1 + 72) = v3;
      }

      while (v3 < *(a1 + 56));
    }
  }

LABEL_10:
  if (*(v2 + 3) == -1)
  {
    v9 = *v2;
    v6 = **v2;
    if (v6 != -1)
    {
      if (*(v9 + 4) == -1 || v9[1] == -1)
      {
        v8 = *(a1 + 56);
        if (!v8)
        {
LABEL_24:
          LOBYTE(v6) = 0;
          v7 = 0;
          return v8 | v7 | v6;
        }

        v10 = *(a1 + 48);
        v8 *= 12;
        while (*v10 != v6)
        {
          v10 += 3;
          v8 -= 12;
          if (!v8)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_19;
    }

    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 72) + 1;
  }

  *(a1 + 72) = v5;
  if (**v2 == -1 && v5 < *(a1 + 56))
  {
    v6 = *sub_2394E0FBC((a1 + 48), v5);
LABEL_19:
    v7 = v6 & 0xFFFFFF00;
    v8 = 0x100000000;
    return v8 | v7 | v6;
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = 0;
  return v8 | v7 | v6;
}

uint64_t sub_2394E0DBC(uint64_t a1)
{
  if (*(a1 + 40) == -1)
  {
    sub_2394C4324(*a1, &v10);
    *(a1 + 16) = v10;
    sub_2393D6EB4((a1 + 32), &v11);
    sub_2393D6E84(&v11);
    v2 = *(a1 + 8);
    if (v2[4] != -1)
    {
      *(a1 + 40) = 0;
      if (*(a1 + 24))
      {
        v4 = 0;
        do
        {
          v5 = sub_2392CB9E0((a1 + 16), v4);
          v2 = *(a1 + 8);
          if (*v5 == v2[4])
          {
            break;
          }

          v4 = *(a1 + 40) + 1;
          *(a1 + 40) = v4;
        }

        while (v4 < *(a1 + 24));
      }
    }
  }

  else
  {
    v2 = *(a1 + 8);
  }

  if (v2[4] == -1)
  {
    v6 = *(*v2 + 8);
    if (v6 != 0xFFFF)
    {
      goto LABEL_16;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40) + 1;
  }

  *(a1 + 40) = v3;
  if (*(*v2 + 8) != -1 || v3 >= *(a1 + 24))
  {
    LOBYTE(v6) = 0;
    v7 = 0;
    v8 = 0;
    return v8 | v7 | v6;
  }

  LOWORD(v6) = *sub_2392CB9E0((a1 + 16), v3);
LABEL_16:
  v7 = v6 & 0xFF00;
  v8 = 0x10000;
  return v8 | v7 | v6;
}

uint64_t sub_2394E0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!**(a1 + 8))
  {
    return 0;
  }

  while (1)
  {
    v6 = sub_2394E08D8(a1, a3);
    v7 = *(a1 + 8);
    if (v6)
    {
      break;
    }

    *v7 = *(*v7 + 16);
    v8 = *(a1 + 8);
    *(v8 + 8) = -1;
    *(v8 + 10) = 0;
    *(v8 + 12) = -1;
    if (!**(a1 + 8))
    {
      return 0;
    }
  }

  v10 = *(v7 + 8);
  *(a2 + 8) = *(v7 + 16);
  *a2 = v10;
  return 1;
}

unint64_t sub_2394E0F94(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239537E94();
  }

  return *a1 + 8 * a2;
}

unint64_t sub_2394E0FBC(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239537E94();
  }

  return *a1 + 12 * a2;
}

const char *sub_2394E0FE8(unint64_t a1)
{
  if (a1 || WORD1(a1) > 4u)
  {
    return "----";
  }

  else
  {
    return off_278A833E8[(a1 >> 16) & 7];
  }
}

const char *sub_2394E101C(unint64_t a1, int a2)
{
  if (a1 || WORD1(a1) > 4u)
  {
    return "----";
  }

  v2 = (a1 >> 16) & 7;
  v3 = qword_2395D7F30[v2];
  v4 = *(&off_278A83410 + v2) + 8;
  v5 = 16 * v3;
  result = "----";
  while (*(v4 - 8) != a2)
  {
    v4 += 16;
    v5 -= 16;
    if (!v5)
    {
      return result;
    }
  }

  return *v4;
}

unint64_t sub_2394E108C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a1 + 24) = a2;
    v2 = sub_2394721B4(a2, 0, 0, a1);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (!v2)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x2D00000000;
    v4 = 3;
  }

  return v3 | v4;
}

uint64_t sub_2394E10F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23947225C(result, 0, 0);
    result = sub_2394731C8(*(a1 + 24), a1 + 8);
    *(a1 + 24) = 0;
  }

  return result;
}

unint64_t sub_2394E1134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(a3 + 264) - 1) >= 2 && (v3 = sub_2394E1180(a1, a2, a3), v3))
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2394E1180(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v4 = sub_239471E34(*(a1 + 24), a2, a1 + 8, 1);
  if (!v4)
  {
    LODWORD(v7) = 11;
    v8 = 193;
LABEL_10:
    *(a3 + 264) = 0;
    v9 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to send message counter synchronization request with error:%s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2393C9138();
      sub_2393D5320(11, 1, "Failed to send message counter synchronization request with error:%s", v11);
    }

    goto LABEL_14;
  }

  v5 = v4;
  sub_2393D9C18(0x18uLL, 0x26u, buf);
  v6 = *buf;
  v14 = *buf;
  if (!*buf)
  {
    LODWORD(v7) = 11;
    v8 = 196;
LABEL_9:
    sub_239470A14(v5);
    goto LABEL_10;
  }

  v7 = sub_2393F888C(*(*buf + 8), 8uLL);
  if (!v7)
  {
    sub_2393D97A0(v6, 8uLL, 0);
    sub_2393E99A4(buf, *(v6 + 8));
    sub_2394E1CAC(a3 + 264, *buf);
    v13 = 3;
    sub_239470470(v5, 500);
    v7 = sub_239470478(v5, 0, 0, &v14, &v13);
  }

  v8 = HIDWORD(v7);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_14:
  if (v14)
  {
    sub_2393D96C8(v14);
  }

  return v7 | (v8 << 32);
}

unint64_t sub_2394E138C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, __int128 *a5, void **a6)
{
  v9 = sub_2394E141C(a1, a2, a5, a6);
  if (v9 || (v9 = (*(*a1 + 40))(a1, a3, a4), v9))
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

unint64_t sub_2394E141C(uint64_t a1, _BYTE *a2, __int128 *a3, void **a4)
{
  v7 = sub_2394BED64(a2, a4);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = (a1 + 64);
    v11 = 5920;
    do
    {
      if (!*v10)
      {
        v8 = 0;
        v9 = 0;
        v13 = *a3;
        *(v10 - 4) = *(a3 + 4);
        *(v10 - 2) = v13;
        *(v10 - 3) = *(a3 + 5);
        *(v10 - 1) = *(a3 + 3);
        *v10 = *a4;
        *a4 = 0;
        return v9 | v8;
      }

      v10 += 5;
      v11 -= 40;
    }

    while (v11);
    v12 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MCSP ReceiveTable Already Full", v15, 2u);
    }

    if (sub_2393D5398(1u))
    {
      v8 = 11;
      sub_2393D5320(11, 1, "MCSP ReceiveTable Already Full");
      v9 = 0x8E00000000;
    }

    else
    {
      v9 = 0x8E00000000;
      v8 = 11;
    }
  }

  return v9 | v8;
}

unint64_t sub_2394E1570(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!*(a3 + 2))
  {
    v6 = *a3;
    if (*(a3 + 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      v5 = sub_2394E15DC(a1, a2, a4);
    }

    else
    {
      if (*(a3 + 3))
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == 1;
      }

      if (!v8)
      {
        goto LABEL_2;
      }

      v5 = sub_2394E17A4(a1, a2, a4);
    }

    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

LABEL_2:
  v4 = 0;
  LODWORD(v5) = 0;
  return v5 | v4;
}

unint64_t sub_2394E15DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*a3 + 8);
  v5 = *(*a3 + 24);
  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Received MsgCounterSyncReq request", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Received MsgCounterSyncReq request");
  }

  if (v4)
  {
    if (v5 == 8)
    {
      v7 = sub_2393E99A4(buf, v4);
      v8 = sub_2394E1CDC(v7, a2);
      v9 = v8;
      v10 = HIDWORD(v8);
      if (!v8)
      {
        return v9 | (v10 << 32);
      }
    }

    else
    {
      v10 = 260;
      v9 = 24;
    }
  }

  else
  {
    v10 = 259;
    v9 = 13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_2393C9138();
    *buf = 136315138;
    v15 = v11;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to handle MsgCounterSyncReq message with error:%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v12 = sub_2393C9138();
    sub_2393D5320(11, 1, "Failed to handle MsgCounterSyncReq message with error:%s", v12);
  }

  return v9 | (v10 << 32);
}

unint64_t sub_2394E17A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 8);
  v7 = *(*a3 + 24);
  v8 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Received MsgCounterSyncResp response", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Received MsgCounterSyncResp response");
  }

  if ((*(a2 + 88) & 1) == 0)
  {
    sub_239537F2C();
  }

  if (*(*a3 + 24) != 12)
  {
    v14 = 288;
LABEL_15:
    v13 = 24;
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = 290;
    v13 = 13;
    goto LABEL_16;
  }

  if (v7 != 12)
  {
    v14 = 291;
    goto LABEL_15;
  }

  v10 = *v6;
  if (*v6)
  {
    sub_238EA6DC0(a2, buf, v9);
    v11 = sub_239495304(*buf);
    sub_2393E99A4(&v20, (v6 + 1));
    v12 = sub_2394E1DC0(v11 + 264, v10, v20);
    v13 = v12;
    v14 = HIDWORD(v12);
    (*(**buf + 32))(*buf);
    if (!v13)
    {
      sub_238EA6DC0(a2, buf, v15);
      v16 = sub_239495304(*buf);
      sub_2394E1B30(a1, *(v16 + 72));
      (*(**buf + 32))(*buf);
      return v13 | (v14 << 32);
    }
  }

  else
  {
    v14 = 294;
    v13 = 174;
  }

LABEL_16:
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to handle MsgCounterSyncResp message with error:%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v18 = sub_2393C9138();
    sub_2393D5320(11, 1, "Failed to handle MsgCounterSyncResp message with error:%s", v18);
  }

  return v13 | (v14 << 32);
}

void sub_2394E1A58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1)
  {
    sub_238EA6DC0(a2, &v4, a2);
    *(sub_239495304(v4) + 264) = 0;
    (*(*v4 + 32))(v4);
  }

  else
  {
    v2 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "MCSP Timeout! On a already released session.", v3, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "MCSP Timeout! On a already released session.");
    }
  }
}

void sub_2394E1B30(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 88);
  v4 = (a1 + 64);
  v5 = 5920;
  do
  {
    v6 = *v4;
    if (!*v4)
    {
      goto LABEL_14;
    }

    v11 = 0;
    v12[0] = 0;
    v12[16] = 0;
    v12[32] = 0;
    v13 = 0;
    v14 = 0;
    v10 = 0;
    if (sub_2394BE79C(&v11, *(v6 + 8), *(v6 + 24), &v10))
    {
      v8 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "MessageCounterManager::ProcessPendingMessages: Failed to decode PacketHeader", v9, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "MessageCounterManager::ProcessPendingMessages: Failed to decode PacketHeader");
      }
    }

    else
    {
      if (v12[0] != 1 || *sub_238DE36B8(v12, v7) != a2)
      {
        goto LABEL_14;
      }

      (*(*v3 + 16))(v3, v4 - 4, v4, 0);
    }

    if (*v4)
    {
      sub_2393D96C8(*v4);
    }

    *v4 = 0;
LABEL_14:
    v4 += 5;
    v5 -= 40;
  }

  while (v5);
}

uint64_t sub_2394E1CAC(uint64_t result, void *a2)
{
  if (*result)
  {
    sub_239537FC4();
  }

  *result = 1;
  *(result + 8) = 0;
  *(result + 8) = *a2;
  return result;
}

uint64_t sub_2394E1CDC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 88) & 1) == 0)
  {
    sub_23953805C();
  }

  v2 = 0xF60000002DLL;
  sub_238EA6DC0(a2, &v5, a2);
  v3 = v5;
  if ((*(*v5 + 16))(v5) != 3 && (*(*v3 + 16))(v3) != 4)
  {
    v2 = 0xEC0000002FLL;
  }

  (*(*v5 + 32))(v5);
  return v2;
}

uint64_t sub_2394E1DC0(uint64_t a1, int a2, void *a3)
{
  if (*a1 == 1)
  {
    if (*(a1 + 8) == *a3)
    {
      v10 = v3;
      v11 = v4;
      *a1 = 2;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = a2;
      v8 = a1 + 16;
      v9 = 0;
      sub_2393F030C(&v8, 0x20uLL);
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = 0x4E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x4A00000000;
    v6 = 3;
  }

  return v6 | v5;
}

void sub_2394E1E64(void *a1)
{
  sub_2394E1F24(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394E1EA4(uint64_t a1)
{
  sub_2394E1F24((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2394E1EE8(uint64_t a1)
{
  sub_2394E1F24((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E1F24(void *a1)
{
  *a1 = &unk_284BBE148;
  a1[1] = &unk_284BBE1A0;
  a1[2] = &unk_284BBE1F0;
  for (i = 743; i != 3; i -= 5)
  {
    v3 = a1[i];
    if (v3)
    {
      sub_2393D96C8(v3);
    }

    a1[i] = 0;
  }

  return a1;
}

void *sub_2394E1FC4(void *a1)
{
  *a1 = &unk_284BBE278;
  a1[32] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 32));
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;
  return a1;
}

uint64_t sub_2394E2040(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (a3)
    {
      if (*(a1 + 272))
      {
        v6 = 0x2000000000;
        v7 = 3;
      }

      else
      {
        *(a1 + 288) = a2;
        sub_238EF9EEC(a1 + 256);
        v6 = 0;
        v7 = 0;
        *(a1 + 272) = a3;
        *(a3 + 40) = a1 + 256;
        *(a1 + 280) = a4;
        *(a1 + 248) = 0;
      }
    }

    else
    {
      v6 = 0x1F00000000;
      v7 = 47;
    }
  }

  else
  {
    v6 = 0x1E00000000;
    v7 = 47;
  }

  return v7 | v6;
}

void sub_2394E20F0(uint64_t a1)
{
  if (*(a1 + 249) == 1)
  {
    v2 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "ProcessOutputEvents: we are already in the middle of processing events, so nothing to do here; when we unwind to the processing loop the events will get processed.", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(12, 3, "ProcessOutputEvents: we are already in the middle of processing events, so nothing to do here; when we unwind to the processing loop the events will get processed.");
    }

    return;
  }

  *(a1 + 249) = 1;
  *v5 = 0;
  v6 = 0;
  LOWORD(v7) = 95;
  sub_2394E6828((a1 + 8), v5);
  while (*v5 == 1)
  {
    v1 = v1 & 0xFFFF000000000000 | v7 | (v8 << 32);
    if (sub_2394E22A0(a1, v1, &v6))
    {
      goto LABEL_17;
    }

    if (!v7 && v8 == 64)
    {
LABEL_15:
      *(a1 + 248) = 1;
      goto LABEL_17;
    }

LABEL_14:
    sub_2394E6828((a1 + 8), v5);
  }

  if (*v5)
  {
    if (*v5 == 10)
    {
      goto LABEL_15;
    }

    (*(*a1 + 64))(a1, v5);
    goto LABEL_14;
  }

  v4 = *(a1 + 248);
  *(a1 + 249) = 0;
  if ((v4 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  (*(*a1 + 72))(a1);
LABEL_18:
  if (v6)
  {
    sub_2393D96C8(v6);
  }
}

unint64_t sub_2394E22A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0x7700000003;
  }

  v5 = a2;
  v6 = a2 != 0;
  v7 = BYTE4(a2);
  if (BYTE4(a2) != 64)
  {
    v6 = 1;
  }

  v9 = v6;
  sub_239470470(v3, *(a1 + 280));
  return sub_239470478(v3, v5, v7, a3, &v9);
}

unint64_t sub_2394E2328(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 272);
  if (!v4)
  {
    v6 = 0x8C00000000;
    goto LABEL_5;
  }

  if (v4 != a2)
  {
    v6 = 0x8E00000000;
LABEL_5:
    v7 = 3;
    return v7 | v6;
  }

  v17 = *a4;
  *a4 = 0;
  v10 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v11 = sub_2394E783C(a1 + 8, a3, &v17, v10);
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  v6 = v11 & 0xFFFFFFFF00000000;
  v17 = 0;
  v7 = v11;
  if (v11)
  {
    v12 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "OnMessageReceived: Failed to handle message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = sub_2393C9138();
      sub_2393D5320(12, 1, "OnMessageReceived: Failed to handle message: %s", v14);
    }

    v15 = sub_2394E8DC4(v11);
    sub_2394E7778(a1 + 8, v15);
  }

  else if (*(a3 + 4) || *(a3 + 6) != 2 || *a3 != 20)
  {
    *(a2 + 8) |= 0x40u;
  }

  sub_2394E20F0(a1);
  return v7 | v6;
}

uint64_t sub_2394E2524(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
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
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "OnResponseTimeout, ec: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    v7 = *(a2 + 112);
    v8 = sub_2394703E0(a2);
    v9 = 114;
    if (v8)
    {
      v9 = 105;
    }

    sub_2393D5320(12, 3, "OnResponseTimeout, ec: %u%c", v7, v9);
  }

  return (*(*a1 + 72))(a1);
}

unint64_t sub_2394E2660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7)
{
  v7 = a6;
  v9 = a4;
  v12 = sub_2394E2040(a1, a2, a3, a7);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = sub_2394E6B90(a1 + 8, v9, a5, v7, a7);
    v13 = v12 & 0xFFFFFFFF00000000;
    if (!v12)
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }
  }

  return v13 | v12;
}

void sub_2394E26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a2 & 0xFFFC) == 8)
  {
    v5 = a2;
    v6 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = sub_2394E8A98(v5);
      v12 = 2080;
      v13 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "NotifyEventHandled : Event %s Error %s", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v7 = sub_2394E8A98(v5);
      v8 = sub_2393C9138();
      sub_2393D5320(12, 2, "NotifyEventHandled : Event %s Error %s", v7, v8);
    }

    *(a1 + 248) = 1;
  }

  else if (a3)
  {
    v9 = sub_2394E8DC4(a3);
    sub_2394E7778(a1 + 8, v9);
  }

  sub_2394E20F0(a1);
}

void *sub_2394E2848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (HIDWORD(v4))
  {
    if (v5)
    {
      v6 = 19;
    }

    else
    {
      v6 = 18;
    }

    v7 = 1;
  }

  else
  {
    v8 = HIDWORD(v5);
    v7 = HIDWORD(v5) != 0;
    v9 = v5 == 0;
    v10 = v5 != 0;
    if (v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (v4)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    if (v8)
    {
      v6 |= 0x10u;
    }
  }

  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 9) & 0xF);
  sub_2393D5D3C(a2, v6);
  sub_2393D5D60(a2, *(a1 + 12), 2);
  v12 = *(a1 + 16);
  if (!v12)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      goto LABEL_24;
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_22:
    v13 = v13;
    v14 = a2;
    v15 = 4;
    goto LABEL_23;
  }

  if (!v7)
  {
    sub_2393D5D60(a2, v12, 4);
    v13 = *(a1 + 24);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_2393D5D60(a2, v12, 8);
  v13 = *(a1 + 24);
  if (v13)
  {
LABEL_20:
    v14 = a2;
    v15 = 8;
LABEL_23:
    sub_2393D5D60(v14, v13, v15);
  }

LABEL_24:
  sub_2393D5D60(a2, *(a1 + 40), 2);
  v16 = *(a1 + 32);
  if (v16)
  {
    sub_2393D5CDC(a2, v16, *(a1 + 40));
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    sub_2393D5CDC(a2, v17, *(a1 + 56));
  }

  return a2;
}

unint64_t sub_2394E2998(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v16 = v4;
  v17 = v4;
  v19 = 0;
  v20 = 0;
  v18 = v5;
  if (!v4)
  {
    v18 = 0;
  }

  v22 = 0;
  sub_2393D5964(&v16, &v22);
  sub_2393D5964(&v16, (a1 + 10));
  sub_2393D5A0C(&v16, (a1 + 12));
  v6 = v19;
  if (v19)
  {
    goto LABEL_4;
  }

  v9 = v22;
  v10 = v22 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 9) = v10;
  *(a1 + 8) = v9 & 0xF0;
  if ((*(a1 + 10) & 2) != 0)
  {
    if ((*(a1 + 10) & 0x10) != 0)
    {
      sub_2393D5AC4(&v16, (a1 + 16));
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v16, &v21);
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }

      *(a1 + 16) = v21;
    }
  }

  *(a1 + 24) = 0;
  if (*(a1 + 10))
  {
    if ((*(a1 + 10) & 0x10) != 0)
    {
      sub_2393D5AC4(&v16, (a1 + 24));
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v16, &v21);
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }

      *(a1 + 24) = v21;
    }
  }

  sub_2393D5A0C(&v16, (a1 + 40));
  v6 = v19;
  if (v19)
  {
LABEL_4:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  v11 = *(a1 + 40);
  v12 = v18;
  if (v18 >= v11)
  {
    v13 = v17 - v16;
    *(a1 + 32) = v4 + v17 - v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (v12 > v11)
    {
      v14 = v11 + v13;
      *(a1 + 48) = v4 + v14;
      *(a1 + 56) = (*(*a2 + 24) - v14);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    LODWORD(v6) = 0;
    v7 = 0;
    *(a1 + 64) = *a2;
    *a2 = 0;
  }

  else
  {
    v7 = 0x8A00000000;
    LODWORD(v6) = 13;
  }

  return v7 | v6;
}

void sub_2394E2BC0(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0xFFuLL, "%.*s", *(a1 + 40), *(a1 + 32));
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  if (a2 == 4)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ReceiveInit", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(38, 4, "ReceiveInit");
    }
  }

  else if (a2 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "SendInit", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(38, 4, "SendInit");
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 9) | *(a1 + 8);
    *buf = 67109120;
    LODWORD(v13[0]) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Proposed Transfer Control: 0x%X", *(a1 + 9) | *(a1 + 8));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 10);
    *buf = 67109120;
    LODWORD(v13[0]) = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Range Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Range Control: 0x%X", *(a1 + 10));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 12);
    *buf = 67109120;
    LODWORD(v13[0]) = v8;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Max Block Size: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Proposed Max Block Size: %u", *(a1 + 12));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 16);
    *buf = 67109376;
    LODWORD(v13[0]) = HIDWORD(v9);
    WORD2(v13[0]) = 1024;
    *(v13 + 6) = v9;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Start Offset: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Start Offset: 0x%08X%08X", HIDWORD(*(a1 + 16)), *(a1 + 16));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 24);
    *buf = 67109376;
    LODWORD(v13[0]) = HIDWORD(v10);
    WORD2(v13[0]) = 1024;
    *(v13 + 6) = v10;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Max Length: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Proposed Max Length: 0x%08X%08X", HIDWORD(*(a1 + 24)), *(a1 + 24));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 67109120;
    LODWORD(v13[0]) = v11;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  File Designator Length: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  File Designator Length: %u", *(a1 + 40));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13[0] = __str;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  File Designator: %s", buf, 0xCu);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  File Designator: %s", __str);
  }
}

uint64_t sub_2394E3048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 != *(a2 + 56))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (v5 != *(a2 + 40))
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    v6 = 1;
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v6 = memcmp(*(a1 + 32), *(a2 + 32), v5) == 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = memcmp(*(a1 + 48), *(a2 + 48), v2) == 0;
LABEL_8:
  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 12) == *(a2 + 12)) & v6 & v7;
  }

  return 0;
}

void *sub_2394E3138(uint64_t a1, void *a2)
{
  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 9) & 0xF);
  sub_2393D5D60(a2, *(a1 + 10), 2);
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2393D5CDC(a2, v4, *(a1 + 24));
  }

  return a2;
}

unint64_t sub_2394E319C(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v12 = v4;
  v13 = v4;
  v15 = 0;
  v16 = 0;
  v14 = v5;
  if (!v4)
  {
    v14 = 0;
  }

  sub_2393D5964(&v12, &v17);
  sub_2393D5A0C(&v12, (a1 + 10));
  v6 = v15;
  if (v15)
  {
    v7 = v15 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = v17;
    *(a1 + 9) = v17 & 0xF;
    *(a1 + 8) = v8 & 0xF0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v9 = v14;
    if (v14)
    {
      *(a1 + 16) = v4 + v13 - v12;
      *(a1 + 24) = v9;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    v6 = 0;
    v7 = 0;
    *(a1 + 32) = *a2;
    *a2 = 0;
  }

  return v7 | v6;
}

void sub_2394E32CC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "SendAccept", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "SendAccept");
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9) | *(a1 + 8);
    *buf = 67109120;
    v6 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Transfer Control: 0x%X", *(a1 + 9) | *(a1 + 8));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 10);
    *buf = 67109120;
    v6 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Max Block Size: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Max Block Size: %u", *(a1 + 10));
  }
}

uint64_t sub_2394E3478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 16), *(a2 + 16), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a1 + 10) == *(a2 + 10)) & v5;
  }

  else
  {
    return 0;
  }
}

void *sub_2394E3514(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (HIDWORD(v4))
  {
    if (v5)
    {
      v6 = 19;
    }

    else
    {
      v6 = 18;
    }

    v7 = 1;
  }

  else
  {
    v8 = HIDWORD(v5);
    v7 = HIDWORD(v5) != 0;
    v9 = v5 == 0;
    v10 = v5 != 0;
    if (v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (v4)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    if (v8)
    {
      v6 |= 0x10u;
    }
  }

  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 10) & 0xF);
  sub_2393D5D3C(a2, v6);
  sub_2393D5D60(a2, *(a1 + 12), 2);
  v12 = *(a1 + 16);
  if (!v12)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      goto LABEL_24;
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_22:
    v13 = v13;
    v14 = a2;
    v15 = 4;
    goto LABEL_23;
  }

  if (!v7)
  {
    sub_2393D5D60(a2, v12, 4);
    v13 = *(a1 + 24);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_2393D5D60(a2, v12, 8);
  v13 = *(a1 + 24);
  if (v13)
  {
LABEL_20:
    v14 = a2;
    v15 = 8;
LABEL_23:
    sub_2393D5D60(v14, v13, v15);
  }

LABEL_24:
  v16 = *(a1 + 32);
  if (v16)
  {
    sub_2393D5CDC(a2, v16, *(a1 + 40));
  }

  return a2;
}

unint64_t sub_2394E3640(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v13 = v4;
  v14 = v4;
  v16 = 0;
  v17 = 0;
  v15 = v5;
  if (!v4)
  {
    v15 = 0;
  }

  sub_2393D5964(&v13, &v19);
  sub_2393D5964(&v13, (a1 + 9));
  sub_2393D5A0C(&v13, (a1 + 12));
  v6 = v16;
  if (v16)
  {
    goto LABEL_4;
  }

  v9 = v19;
  v10 = v19 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 10) = v10;
  *(a1 + 8) = v9 & 0xF0;
  if ((*(a1 + 9) & 2) != 0)
  {
    if ((*(a1 + 9) & 0x10) != 0)
    {
      sub_2393D5AC4(&v13, (a1 + 16));
      v6 = v16;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v13, &v18);
      v6 = v16;
      if (v16)
      {
        goto LABEL_4;
      }

      *(a1 + 16) = v18;
    }
  }

  *(a1 + 24) = 0;
  if (*(a1 + 9))
  {
    if ((*(a1 + 9) & 0x10) != 0)
    {
      sub_2393D5AC4(&v13, (a1 + 24));
      v6 = v16;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_2393D5A68(&v13, &v18);
      v6 = v16;
      if (!v16)
      {
        *(a1 + 24) = v18;
        goto LABEL_8;
      }
    }

LABEL_4:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

LABEL_8:
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = v15;
  if (v15)
  {
    *(a1 + 32) = v4 + v14 - v13;
    *(a1 + 40) = v11;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_2393D96C8(v12);
  }

  LODWORD(v6) = 0;
  v7 = 0;
  *(a1 + 48) = *a2;
  *a2 = 0;
  return v7 | v6;
}

void sub_2394E3810(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "ReceiveAccept", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "ReceiveAccept");
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 10) | *(a1 + 8);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Transfer Control: 0x%X", *(a1 + 10) | *(a1 + 8));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 9);
    *buf = 67109120;
    v8 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Range Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Range Control: 0x%X", *(a1 + 9));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 12);
    *buf = 67109120;
    v8 = v5;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Max Block Size: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Max Block Size: %u", *(a1 + 12));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 24);
    *buf = 67109376;
    v8 = HIDWORD(v6);
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Length: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Length: 0x%08X%08X", HIDWORD(*(a1 + 24)), *(a1 + 24));
  }
}

uint64_t sub_2394E3AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 32), *(a2 + 32), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 10) == *(a2 + 10) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 12) == *(a2 + 12))
  {
    return (*(a1 + 24) == *(a2 + 24)) & v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394E3B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v4[0] = *(*a2 + 8);
  v4[1] = v4[0];
  v6 = 0;
  v7 = 0;
  v5 = v2;
  if (!v4[0])
  {
    v5 = 0;
  }

  sub_2393D5A68(v4, (a1 + 8));
  return v6;
}

void sub_2394E3C30(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  switch(a2)
  {
    case 20:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockAckEOF", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(38, 4, "BlockAckEOF");
      }

      break;
    case 19:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockAck", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(38, 4, "BlockAck");
      }

      break;
    case 16:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockQuery", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(38, 4, "BlockQuery");
      }

      break;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 67109120;
    v8 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Block Counter: %u", *(a1 + 8));
  }
}

void *sub_2394E3E1C(uint64_t a1, void *a2)
{
  sub_2393D5D60(a2, *(a1 + 8), 4);
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2393D5CDC(a2, v4, *(a1 + 24));
  }

  return a2;
}

unint64_t sub_2394E3E68(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v11 = v4;
  v12 = v4;
  v14 = 0;
  v15 = 0;
  v13 = v5;
  if (!v4)
  {
    v13 = 0;
  }

  sub_2393D5A68(&v11, (a1 + 8));
  v6 = v14;
  if (v14)
  {
    v7 = v14 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v8 = v13;
    if (v13)
    {
      *(a1 + 16) = v4 + v12 - v11;
      *(a1 + 24) = v8;
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    v6 = 0;
    v7 = 0;
    *(a1 + 32) = *a2;
    *a2 = 0;
  }

  return v7 | v6;
}

void sub_2394E3F74(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  if (a2 == 18)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockEOF", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(38, 4, "BlockEOF");
    }
  }

  else if (a2 == 17)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Block", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(38, 4, "Block");
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 67109120;
    v9 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Block Counter: %u", *(a1 + 8));
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 24);
    *buf = 67109120;
    v9 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Data Length: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Data Length: %u", *(a1 + 24));
  }
}

uint64_t sub_2394E4174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 16), *(a2 + 16), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  return (*(a1 + 8) == *(a2 + 8)) & v5;
}

void *sub_2394E41E8(uint64_t a1, void *a2)
{
  sub_2393D5D60(a2, *(a1 + 8), 4);
  sub_2393D5D60(a2, *(a1 + 16), 8);
  return a2;
}

uint64_t sub_2394E4230(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 24);
  v5[0] = *(*a2 + 8);
  v5[1] = v5[0];
  v7 = 0;
  v8 = 0;
  v6 = v3;
  if (!v5[0])
  {
    v6 = 0;
  }

  sub_2393D5A68(v5, (a1 + 8));
  sub_2393D5AC4(v5, (a1 + 16));
  return v7;
}

void sub_2394E4310(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "BlockQueryWithSkip", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "BlockQueryWithSkip");
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    *buf = 67109120;
    v6 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Block Counter: %u", *(a1 + 8));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    *buf = 67109376;
    v6 = HIDWORD(v4);
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Bytes To Skip: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(38, 4, "  Bytes To Skip: 0x%08X%08X", HIDWORD(*(a1 + 16)), *(a1 + 16));
  }
}

void *sub_2394E44B8(void *a1)
{
  *a1 = &unk_284BBE2F0;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;
  return a1;
}

void sub_2394E4508(void *a1)
{
  *a1 = &unk_284BBE2F0;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E4578(void *a1)
{
  *a1 = &unk_284BBE358;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;
  return a1;
}

void sub_2394E45C8(void *a1)
{
  *a1 = &unk_284BBE358;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E4638(void *a1)
{
  *a1 = &unk_284BBE3B0;
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;
  return a1;
}

void sub_2394E4688(void *a1)
{
  *a1 = &unk_284BBE3B0;
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E46F8(void *a1)
{
  *a1 = &unk_284BBE460;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;
  return a1;
}

void sub_2394E4748(void *a1)
{
  *a1 = &unk_284BBE460;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x23EE77B60);
}

void sub_2394E47CC(uint64_t a1, unsigned __int16 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 43);
  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = sub_2394E8A90(a2, v4);
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Got an event %s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    v6 = sub_2394E8A90(a2, *a2);
    sub_2393D5320(12, 3, "Got an event %s", v6);
  }

  v7 = *a2;
  if (v7 <= 4)
  {
    if (*a2 > 2u)
    {
      if (v7 == 3)
      {
        return;
      }

      if (v7 != 4)
      {
        goto LABEL_52;
      }

      v10 = sub_2394E522C(a1, a2);
    }

    else
    {
      if (v7 == 1)
      {
        if (sub_2394E52CC(a1, a2))
        {
          v12 = sub_2393D9044(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = sub_2393C9138();
            *buf = 136315650;
            v23 = v13;
            v24 = 2080;
            v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
            v26 = 1024;
            v27 = 76;
            _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            v14 = sub_2393C9138();
            sub_2393D5320(0, 1, "%s at %s:%d", v14, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 76);
          }
        }

        if (!a2[8] && a2[9] == 2 && *(a2 + 20) == 20 && sub_2394E508C(a1, 0, 0))
        {
          v15 = sub_2393D9044(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = sub_2393C9138();
            *buf = 136315650;
            v23 = v16;
            v24 = 2080;
            v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
            v26 = 1024;
            v27 = 80;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            goto LABEL_41;
          }
        }

        return;
      }

      if (v7 != 2)
      {
        goto LABEL_52;
      }

      v10 = sub_2394E4FF4(a1);
    }

    sub_2394E4DF0(a1, v10, v11);
    return;
  }

  if (*a2 < 9u)
  {
    return;
  }

  if (v7 == 9)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v19 = a2[8];
      *buf = 67109120;
      LODWORD(v23) = v19;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Got StatusReport %x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(12, 1, "Got StatusReport %x", a2[8]);
    }

    if (sub_2394E508C(a1, 0x40000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp"))
    {
      v20 = sub_2393D9044(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_2393C9138();
        *buf = 136315650;
        v23 = v21;
        v24 = 2080;
        v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v26 = 1024;
        v27 = 64;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d");
      }
    }

    return;
  }

  if (v7 == 10)
  {
    if (sub_2394E508C(a1, 0x43000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp"))
    {
      v17 = sub_2393D9044(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_2393C9138();
        *buf = 136315650;
        v23 = v18;
        v24 = 2080;
        v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v26 = 1024;
        v27 = 67;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_41;
      }
    }

    return;
  }

  if (v7 != 11)
  {
LABEL_52:
    sub_238EAC830();
  }

  if (sub_2394E508C(a1, 0x4600000032, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp"))
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315650;
      v23 = v9;
      v24 = 2080;
      v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
      v26 = 1024;
      v27 = 70;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
LABEL_41:
      sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d");
    }
  }
}

void sub_2394E4DF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = sub_2393C9138();
      v13 = 2080;
      v14 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
      v15 = 1024;
      v16 = 175;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v6 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v6, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 175);
    }

    v7 = sub_2394E8DC4(v3);
    if (sub_2394E7778(result + 16, v7))
    {
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_2393C9138();
        *buf = 136315650;
        v12 = v9;
        v13 = 2080;
        v14 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v15 = 1024;
        v16 = 176;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v10 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v10, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 176);
      }
    }
  }
}

unint64_t sub_2394E4FF4(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 146);
  if (*(a1 + 368))
  {
    v2 = sub_2394E5A98(a1 + 280, a1 + 16);
    if (!v2)
    {
      v2 = (*(**(a1 + 368) + 16))(*(a1 + 368), a1 + 280);
    }

    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v3 = 0x9300000000;
    LODWORD(v2) = 3;
  }

  return v3 | v2;
}

uint64_t sub_2394E508C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 155);
  v6 = *(a1 + 368);
  if (v6)
  {
    if ((*(*v6 + 24))(v6, a1 + 280, a2, a3))
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = sub_2393C9138();
        v14 = 2080;
        v15 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v16 = 1024;
        v17 = 158;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v8 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v8, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 158);
      }
    }

    sub_2394E5634(a1);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0x9C00000000;
    v9 = 3;
  }

  return v10 | v9;
}

uint64_t sub_2394E522C(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 165);
  if (!*(a1 + 368))
  {
    return 0xA600000003;
  }

  sub_238DB6950(v5, *(a2 + 16), *(a2 + 24));
  return (*(**(a1 + 368) + 32))(*(a1 + 368), a1 + 280, v5);
}

unint64_t sub_2394E52CC(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 125);
  v4 = *(a1 + 256);
  if (!v4)
  {
    return 0x7F00000003;
  }

  if (*(a2 + 16) | *(a2 + 18))
  {
    v5 = *(a2 + 20);
  }

  else
  {
    v5 = *(a2 + 20);
    if (v5 == 64)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v6 = 1;
LABEL_8:
  v10 = v6;
  v7 = sub_239470478(v4, *(a2 + 16), v5, (a2 + 8), &v10);
  if (v7)
  {
    sub_2394E508C(a1, v7, v8);
  }

  return v7;
}

unint64_t sub_2394E5390(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 101);
  if (a2)
  {
    if (*(a3 + 4))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a3 + 6) == 2;
    }

    if (!v9 || *a3 != 1)
    {
      goto LABEL_9;
    }

    sub_238EA6DC0(a2, buf, v8);
    v14 = *(*buf + 24);
    (*(**buf + 32))(*buf);
    sub_238EA6DC0(a2, buf, v15);
    v16 = (*(**buf + 48))(*buf);
    (*(**buf + 32))(*buf);
    if (!v14)
    {
      v12 = 47;
      LODWORD(v13) = 110;
      return v12 | (v13 << 32);
    }

    if (!v16)
    {
      v12 = 47;
      LODWORD(v13) = 111;
      return v12 | (v13 << 32);
    }

    *(a1 + 336) = v14;
    *(a1 + 344) = v16;
    v17 = sub_2394E95B8(a1, *(a1 + 360), 0, 16, 1024, 300000, 50);
    v12 = v17;
    if (v17)
    {
      v13 = HIDWORD(v17);
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315650;
        *&buf[4] = v19;
        v23 = 2080;
        v24 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v25 = 1024;
        v26 = 117;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v20 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v20, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 117);
      }
    }

    else
    {
LABEL_9:
      v11 = sub_2394E8F64(a1, a2, a3, a4);
      v12 = v11;
      v13 = HIDWORD(v11);
    }
  }

  else
  {
    v12 = 3;
    LODWORD(v13) = 103;
  }

  return v12 | (v13 << 32);
}

double sub_2394E5634(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 181);
  sub_2394E8E70(a1);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 352) = 1;
    sub_239470A14(v2);
    *(a1 + 352) = 0;
    *(a1 + 256) = 0;
  }

  return sub_2394E5CE8(a1 + 280);
}

void sub_2394E569C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 360) + 80))(*(a1 + 360), sub_2394E5A70, a1);
  if ((*(a1 + 352) & 1) == 0)
  {
    *(a1 + 256) = 0;
    if (sub_2394E508C(a1, 0xD5000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp"))
    {
      v2 = sub_2393D9044(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v5 = sub_2393C9138();
        v6 = 2080;
        v7 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v8 = 1024;
        v9 = 213;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v3 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v3, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 213);
      }
    }
  }
}

BOOL sub_2394E581C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  if (!v2 || *(v2 + 88) != 1)
  {
    return 0;
  }

  v3 = a2;
  sub_238EA6DC0(v2, &v6, a2);
  v4 = v6[24] == v3;
  (*(*v6 + 32))();
  return v4;
}

void *sub_2394E58A4(void *a1)
{
  *a1 = &unk_284BBE510;
  a1[1] = &unk_284BBE570;
  sub_2394E5634(a1);

  return sub_2394E8DFC(a1);
}

void sub_2394E5918(void *a1)
{
  sub_2394E58A4(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E5960(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = &unk_284BBE510;
  *a1 = &unk_284BBE570;
  sub_2394E5634((a1 - 1));

  return sub_2394E8DFC(v1);
}

void sub_2394E59D4(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = &unk_284BBE510;
  *a1 = &unk_284BBE570;
  sub_2394E5634((a1 - 1));
  sub_2394E8DFC(v1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394E5A98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v2 = 0x1F00000000;
      v3 = 3;
    }

    else
    {
      v4 = *(a2 + 88);
      if (v4 > 0x20)
      {
        v2 = 0x2400000000;
        v3 = 30;
      }

      else
      {
        v5 = *(a2 + 80);
        *(a1 + 48) = a2;
        *(a1 + 8) = v4;
        memcpy((a1 + 9), v5, v4);
        v2 = 0;
        v3 = 0;
      }
    }
  }

  else
  {
    v2 = 0x1E00000000;
    v3 = 47;
  }

  return v3 | v2;
}

unint64_t sub_2394E5B2C(uint64_t a1)
{
  v2 = sub_2394E5BA8(a1);
  if (!v2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v4 = 0x2F00000000;
      LODWORD(v2) = 3;
      return v4 | v2;
    }

    v9 = 0;
    v10 = 0;
    v6[0] = 16;
    v7 = *(v3 + 32);
    v8 = *(v3 + 16);
    v2 = sub_2394E6BDC(v3, v6);
  }

  v4 = v2 & 0xFFFFFFFF00000000;
  return v4 | v2;
}

uint64_t sub_2394E5BA8(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferProxyDiagnosticLog.cpp", 89);
  if (*(a1 + 56))
  {
    v2 = *(a1 + 64);
    v3 = v2 == 0;
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x5B00000000;
    }

    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = 0x5A00000000;
    v5 = 3;
  }

  return v5 | v4;
}

unint64_t sub_2394E5C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_2394E5BA8(a1);
  if (!v5)
  {
    if (!*(a1 + 48))
    {
      v7 = 0x3D00000000;
      LODWORD(v5) = 3;
      return v7 | v5;
    }

    v6 = sub_2394E8DC4(v3);
    v5 = sub_2394E7778(*(a1 + 48), v6);
  }

  v7 = v5 & 0xFFFFFFFF00000000;
  return v7 | v5;
}

unint64_t sub_2394E5C94(uint64_t a1)
{
  v2 = sub_2394E5BA8(a1);
  if (!v2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v4 = 0x4600000000;
      LODWORD(v2) = 3;
      return v4 | v2;
    }

    v2 = sub_2394E75C8(v3);
  }

  v4 = v2 & 0xFFFFFFFF00000000;
  return v4 | v2;
}

double sub_2394E5CE8(uint64_t a1)
{
  if (!sub_2394E5BA8(a1))
  {
    if (*(a1 + 48))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

unint64_t sub_2394E5D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0x1A00000000;
LABEL_6:
    v5 = 47;
    return v5 | v4;
  }

  if (!a3)
  {
    v4 = 0x1B00000000;
    goto LABEL_6;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v3 = sub_2394721B4(a3, 0x20000, 1u, a1);
  v4 = v3 & 0xFFFFFFFF00000000;
  v5 = v3;
  return v5 | v4;
}

uint64_t sub_2394E5DE4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[3];
  v10 = a1[1];
  v11 = v4;
  v9 = a1 + 4;
  v5 = sub_2394E6290(a1 + 5, &v11, &v9, &v10);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *a3 = v5;
  }

  else
  {
    v6 = 0x2600000000;
    v7 = 11;
  }

  return v7 | v6;
}

void *sub_2394E5E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v4 = a1;
  v5 = a3;
  return sub_2394E6290((a1 + 8), &v6, &v4, &v5);
}

void sub_2394E5EA8(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = (result + 8);
  if (*(result + 8))
  {
    v2 = *(result + 16);
    if (v2)
    {
      if (sub_23947225C(v2, 0x20000, 1u))
      {
        v3 = sub_2393D9044(0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v6 = sub_2393C9138();
          v7 = 2080;
          v8 = "src/protocols/bdx/BdxTransferServer.cpp";
          v9 = 1024;
          v10 = 55;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          v4 = sub_2393C9138();
          sub_2393D5320(0, 1, "%s at %s:%d", v4, "src/protocols/bdx/BdxTransferServer.cpp", 55);
        }
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }
}

void sub_2394E5FF8(void *a1)
{
  sub_2394E6030(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E6030(void *a1)
{
  *a1 = &unk_284BBE650;
  sub_2394E5EA8(a1);
  a1[4] = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 7, (a1 + 5), sub_2394E6198);
  sub_2394E6264(a1 + 5, v2);
  return a1;
}

void *sub_2394E60B8(void *a1)
{
  *a1 = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394E6198);
  sub_2394E6264(a1 + 1, v2);
  return a1;
}

void sub_2394E6118(void *a1)
{
  *a1 = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394E6198);
  sub_2394E6264(a1 + 1, v2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394E61B4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_2395380F4();
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

void *sub_2394E6264(void *result, uint64_t a2)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_2395381A4(result);
    }
  }

  return result;
}

void *sub_2394E6290(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2393D52C4(0x180uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394E633C(v8, *a2, *a3, *a4);
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

uint64_t sub_2394E633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284BBE6F8;
  *(a1 + 8) = &unk_284BBE758;
  sub_2394E6448(a1 + 16);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 500;
  *a1 = &unk_284BBE510;
  *(a1 + 8) = &unk_284BBE570;
  *(a1 + 280) = &unk_284BBE5D8;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a4;
  *(a1 + 368) = a2;
  *(a1 + 376) = a3;
  return a1;
}

double sub_2394E6448(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  *(a1 + 9) = 0;
  *(a1 + 40) = 0;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 114) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 172) = 0xFFFFFFFF00000000;
  *(a1 + 180) = 0;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 232) = 1;
  *(a1 + 4) = 0;
  return result;
}

void sub_2394E64BC(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2393D96C8(v6);
  }

  *(a2 + 16) = 95;
  *(a2 + 8) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 28) = a3;
    *(a1 + 232) = 0;
  }

  if (*(a1 + 233) != 1 || a3 - *(a1 + 28) < *(a1 + 54))
  {
    v7 = *a1;
    if (v7 > 4)
    {
      if (*a1 <= 7u)
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            v17 = *(a1 + 23);
            *a2 = 6;
            v18 = *(a2 + 8);
            if (v18)
            {
              sub_2393D96C8(v18);
            }

            *(a2 + 8) = 0;
            *(a2 + 16) = v17;
            goto LABEL_44;
          }

          if (v7 != 7)
          {
            goto LABEL_32;
          }
        }

LABEL_27:
        *a2 = v7;
LABEL_33:
        v16 = *(a2 + 8);
        if (v16)
        {
          sub_2393D96C8(v16);
        }

        *(a2 + 8) = 0;
        *(a2 + 16) = 95;
LABEL_44:
        if (!*a2 && *(a1 + 2) == 8)
        {
          v20 = a1[24];
          *a2 = 10;
          v21 = *(a2 + 8);
          if (v21)
          {
            sub_2393D96C8(v21);
          }

          *(a2 + 8) = 0;
          *(a2 + 16) = v20;
        }

        *a1 = 0;
        return;
      }

      if (v7 == 8)
      {
        goto LABEL_27;
      }

      if (v7 == 9 || v7 == 10)
      {
        v11 = a1[24];
        *a2 = v7;
        v12 = *(a2 + 8);
        if (v12)
        {
          sub_2393D96C8(v12);
        }

        *(a2 + 8) = 0;
        *(a2 + 16) = v11;
        goto LABEL_44;
      }

LABEL_32:
      *a2 = 0;
      goto LABEL_33;
    }

    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v13 = *(a1 + 44) | (a1[90] << 32);
        v14 = *(a1 + 5);
        *(a1 + 5) = 0;
        *a2 = 1;
        v15 = *(a2 + 8);
        if (v15)
        {
          sub_2393D96C8(v15);
        }

        *(a2 + 8) = v14;
        *(a2 + 16) = v13;
        *(a2 + 20) = BYTE4(v13);
        *(a1 + 28) = a3;
        goto LABEL_44;
      }

      goto LABEL_32;
    }

    switch(v7)
    {
      case 2u:
        v22 = *(a1 + 28);
        v23 = *(a1 + 36);
        v24 = *(a1 + 44);
        v25 = *(a1 + 13);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 2;
        break;
      case 3u:
        v22 = *(a1 + 7);
        v23 = *(a1 + 8);
        *&v24 = *(a1 + 18);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 3;
        break;
      case 4u:
        v22 = *(a1 + 76);
        *&v23 = *(a1 + 21);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 4;
        break;
      default:
        goto LABEL_32;
    }

    *a2 = v9;
    v19 = *(a2 + 8);
    if (v19)
    {
      sub_2393D96C8(v19);
    }

    *(a2 + 8) = v8;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
    *(a2 + 48) = v24;
    *(a2 + 64) = v25;
    goto LABEL_44;
  }

  *a2 = 11;
  v10 = *(a2 + 8);
  if (v10)
  {
    sub_2393D96C8(v10);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 95;
  *(a1 + 2) = 8;
  *(a1 + 233) = 0;
}

uint64_t sub_2394E6764@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_2394E6774@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = *a2;
  *a2 = 0;
  *(a3 + 16) = result;
  *(a3 + 20) = BYTE4(result);
  return result;
}

__n128 sub_2394E6798@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = *a2;
  *a2 = 0;
  v3 = *(a1 + 16);
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 64) = *(a1 + 48);
  return result;
}

__n128 sub_2394E67C8@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 16) = *a1;
  *(a3 + 32) = v4;
  *(a3 + 48) = *(a1 + 32);
  *a3 = 3;
  *(a3 + 8) = *a2;
  *a2 = 0;
  return result;
}

uint64_t sub_2394E67F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 6;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_2394E6800@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  a3->n128_u16[0] = 4;
  a3->n128_u64[1] = *a2;
  *a2 = 0;
  result = *a1;
  a3[1] = *a1;
  a3[2].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

void sub_2394E6828(unsigned __int16 *a1, uint64_t a2)
{
  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);

  sub_2394E64BC(a1, a2, v4);
}

unint64_t sub_2394E6898(uint64_t a1, char a2, char *a3, int a4)
{
  if (*(a1 + 2))
  {
    return 0x9000000003;
  }

  *(a1 + 3) = a2;
  *(a1 + 216) = a4;
  *(a1 + 4) = *a3;
  v6 = *(a3 + 1);
  *(a1 + 6) = v6;
  v7 = *(a3 + 1);
  *(a1 + 16) = v7;
  v8 = *(a3 + 2);
  *(a1 + 24) = v8;
  v16 = &unk_284BBE2F0;
  v17 = *a3;
  v18 = 0;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = *(a3 + 3);
  v23 = *(a3 + 16);
  v9 = *(a3 + 6);
  v24 = *(a3 + 5);
  v25 = v9;
  v26 = 0;
  v10 = sub_2394E6A4C(&v16, (a1 + 40));
  v11 = v10;
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (*(a1 + 3) == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    v14 = sub_2393D9044(0x26u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v15, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(38, 4, "Sending BDX Message");
    }

    sub_2394E2BC0(&v16, v13);
    v12 = 0;
    v11 = 0;
    *(a1 + 2) = 2;
    *(a1 + 233) = 1;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v13;
  }

  v16 = &unk_284BBE2F0;
  if (v26)
  {
    sub_2393D96C8(v26);
  }

  return v11 | v12;
}

unint64_t sub_2394E6A4C(uint64_t a1, _WORD **a2)
{
  v4 = (*(*a1 + 16))(a1);
  sub_2393D9C18(v4 + 16, 0x26u, &v13);
  v5 = *(v13 + 8);
  v6 = v5 + *(v13 + 24);
  v7 = sub_2393D980C(v13);
  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v14 = v6;
  v15 = v8;
  v16 = 0;
  if (!v5)
  {
    v15 = 0;
  }

  v17 = v13;
  if (v13)
  {
    (*(*a1 + 8))(a1, &v14);
    sub_2393D9FF8(&v14, &v17, &v13);
    if (*a2)
    {
      sub_2393D96C8(*a2);
    }

    v9 = v13;
    *a2 = v13;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 41;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 11;
    }

    if (v17)
    {
      sub_2393D96C8(v17);
    }
  }

  else
  {
    v10 = 35;
    v11 = 11;
  }

  return v11 | (v10 << 32);
}

uint64_t sub_2394E6B90(uint64_t a1, char a2, char a3, __int16 a4, int a5)
{
  if (*(a1 + 2))
  {
    v5 = 0xBB00000000;
    v6 = 3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    *(a1 + 3) = a2;
    *(a1 + 216) = a5;
    *(a1 + 4) = a3;
    *(a1 + 6) = a4;
    *(a1 + 2) = 1;
  }

  return v6 | v5;
}

unint64_t sub_2394E6BDC(uint64_t a1, char *a2)
{
  if (*(a1 + 2) != 3)
  {
    v3 = 0xCE00000000;
    goto LABEL_5;
  }

  if (!*a1)
  {
    if ((*a2 & *(a1 + 56)) == 0)
    {
      v3 = 0xD300000000;
      goto LABEL_11;
    }

    v6 = *(a2 + 1);
    if (v6 > *(a1 + 58))
    {
      v3 = 0xD400000000;
LABEL_11:
      LODWORD(v4) = 47;
      return v4 | v3;
    }

    *(a1 + 32) = v6;
    if (*(a1 + 3) == 1)
    {
      *(a1 + 16) = *(a2 + 1);
      v7 = *(a2 + 2);
      *(a1 + 24) = v7;
      v14 = &unk_284BBE3B0;
      v16 = 0;
      v15 = *a2;
      LOBYTE(v17) = *(a1 + 9);
      v18 = *(a2 + 1);
      v19 = *(a2 + 1);
      v20 = v7;
      v8 = *(a2 + 4);
      v21 = *(a2 + 3);
      v22 = v8;
      v23 = 0;
      v4 = sub_2394E6A4C(&v14, (a1 + 40));
      v9 = 0;
      if (!v4)
      {
        v10 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(38, 4, "Sending BDX Message");
        }

        v9 = 5;
        sub_2394E3810(&v14);
      }

      v14 = &unk_284BBE3B0;
      if (v23)
      {
        sub_2393D96C8(v23);
      }

      if (v4)
      {
LABEL_22:
        v3 = v4 & 0xFFFFFFFF00000000;
        return v4 | v3;
      }
    }

    else
    {
      v14 = &unk_284BBE358;
      v15 = *a2;
      v16 = *(a1 + 9);
      v17 = *(a2 + 1);
      v11 = *(a2 + 4);
      v19 = *(a2 + 3);
      v20 = v11;
      v21 = 0;
      v4 = sub_2394E6A4C(&v14, (a1 + 40));
      if (v4)
      {
        v9 = 0;
      }

      else
      {
        v12 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(38, 4, "Sending BDX Message");
        }

        v9 = 2;
        sub_2394E32CC(&v14);
      }

      v14 = &unk_284BBE358;
      if (v21)
      {
        sub_2393D96C8(v21);
      }

      if (v4)
      {
        goto LABEL_22;
      }
    }

    *(a1 + 2) = 4;
    if (*(a1 + 3) == 1)
    {
      if (*(a1 + 8) != 32)
      {
        goto LABEL_37;
      }
    }

    else if (*(a1 + 3) || *(a1 + 8) != 16)
    {
      goto LABEL_37;
    }

    *(a1 + 233) = 1;
LABEL_37:
    v3 = 0;
    LODWORD(v4) = 0;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v9;
    return v4 | v3;
  }

  v3 = 0xCF00000000;
LABEL_5:
  LODWORD(v4) = 3;
  return v4 | v3;
}

uint64_t sub_2394E6F08(uint64_t a1, __int16 a2)
{
  if (*(a1 + 2) == 3)
  {
    if (*a1)
    {
      v3 = 0x11000000000;
      v4 = 3;
    }

    else
    {
      sub_2394E6F88(a1, a2);
      v3 = 0;
      v4 = 0;
      *(a1 + 2) = 7;
    }
  }

  else
  {
    v3 = 0x10F00000000;
    v4 = 3;
  }

  return v4 | v3;
}

void sub_2394E6F88(uint64_t a1, __int16 a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = a2;
  sub_23946FC6C(v18, 1, 0x20000, a2);
  v3 = sub_23946FEFC(v18);
  sub_2393D9C18(v3 + 16, 0x26u, buf);
  v4 = *(*buf + 8);
  v5 = v4 + *(*buf + 24);
  v6 = sub_2393D980C(*buf);
  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v14 = v5;
  v15 = v7;
  v16 = 0;
  if (!v4)
  {
    v15 = 0;
  }

  v17 = *buf;
  if (*buf)
  {
    sub_23946FE8C(v18, &v14);
    sub_2393D9FF8(&v14, &v17, buf);
    v8 = *(a1 + 40);
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    v9 = *buf;
    *(a1 + 40) = *buf;
    if (v9)
    {
      *a1 = 1;
      *(a1 + 176) = 0;
      *(a1 + 180) = 64;
    }

    else
    {
      v10 = sub_2393D9044(0xCu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_2393C9138();
        *buf = 136315394;
        *&buf[4] = "PrepareStatusReport";
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: error preparing message: %s", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v12 = sub_2393C9138();
        sub_2393D5320(12, 1, "%s: error preparing message: %s", "PrepareStatusReport", v12);
      }

      *a1 = 10;
    }

    v13 = v17;
    *(a1 + 2) = 8;
    *(a1 + 233) = 0;
    if (v13)
    {
      sub_2393D96C8(v13);
    }
  }

  else
  {
    *a1 = 10;
    *(a1 + 2) = 8;
    *(a1 + 233) = 0;
  }

  if (v19)
  {
    sub_2393D96C8(v19);
  }
}

unint64_t sub_2394E7198(uint64_t a1)
{
  if (*(a1 + 2) == 4)
  {
    v11 = v1;
    v12 = v2;
    if (*(a1 + 3))
    {
      v4 = 0x11D00000000;
LABEL_9:
      v5 = 3;
      return v4 | v5;
    }

    if (*a1)
    {
      v4 = 0x11E00000000;
      goto LABEL_9;
    }

    if (*(a1 + 233))
    {
      v4 = 0x11F00000000;
      goto LABEL_9;
    }

    v9 = &unk_284BBE408;
    v10 = *(a1 + 212);
    v7 = sub_2394E6A4C(&v9, (a1 + 40));
    if (v7)
    {
      v4 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v7) = 0;
      v4 = 0;
      *(a1 + 233) = 1;
      v8 = *(a1 + 212);
      *(a1 + 208) = v8;
      *(a1 + 212) = v8 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = 16;
    }

    v5 = v7;
  }

  else
  {
    v4 = 0x11C00000000;
    v5 = 3;
  }

  return v4 | v5;
}

unint64_t sub_2394E72AC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 2) == 4)
  {
    v13 = v2;
    v14 = v3;
    if (*(a1 + 3))
    {
      v5 = 0x13300000000;
LABEL_9:
      v6 = 3;
      return v5 | v6;
    }

    if (*a1)
    {
      v5 = 0x13400000000;
      goto LABEL_9;
    }

    if (*(a1 + 233))
    {
      v5 = 0x13500000000;
      goto LABEL_9;
    }

    v10 = &unk_284BBE4B8;
    v11 = *(a1 + 212);
    v12 = *a2;
    v8 = sub_2394E6A4C(&v10, (a1 + 40));
    if (v8)
    {
      v5 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v8) = 0;
      v5 = 0;
      *(a1 + 233) = 1;
      v9 = *(a1 + 212);
      *(a1 + 208) = v9;
      *(a1 + 212) = v9 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = 21;
    }

    v6 = v8;
  }

  else
  {
    v5 = 0x13200000000;
    v6 = 3;
  }

  return v5 | v6;
}

unint64_t sub_2394E73C8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 2) != 4)
  {
    v3 = 0x14700000000;
    goto LABEL_7;
  }

  if (*(a1 + 3) != 1)
  {
    v3 = 0x14800000000;
    goto LABEL_7;
  }

  if (*a1)
  {
    v3 = 0x14900000000;
LABEL_7:
    v4 = 3;
    return v3 | v4;
  }

  if (*(a1 + 233))
  {
    v3 = 0x14A00000000;
    goto LABEL_7;
  }

  v7 = *a2;
  if (*a2 && (v8 = a2[1], v8 <= *(a1 + 32)))
  {
    v15 = &unk_284BBE460;
    v18 = v8;
    v19 = 0;
    v16 = *(a1 + 204);
    v17 = v7;
    v9 = sub_2394E6A4C(&v15, (a1 + 40));
    v10 = v9;
    if (v9)
    {
      v3 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (*(a2 + 16))
      {
        v11 = 18;
      }

      else
      {
        v11 = 17;
      }

      if (*(a2 + 16) == 1)
      {
        v12 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v14, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(38, 4, "Sending BDX Message");
        }

        sub_2394E3F74(&v15, 18);
        *(a1 + 2) = 5;
      }

      v10 = 0;
      v3 = 0;
      *(a1 + 233) = 1;
      v13 = *(a1 + 204);
      *(a1 + 200) = v13;
      *(a1 + 204) = v13 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = v11;
    }

    v15 = &unk_284BBE460;
    if (v19)
    {
      sub_2393D96C8(v19);
    }

    v4 = v10;
  }

  else
  {
    v3 = 0x14D00000000;
    v4 = 47;
  }

  return v3 | v4;
}

unint64_t sub_2394E75C8(uint64_t a1)
{
  if (!*(a1 + 3))
  {
    v16 = v1;
    v17 = v2;
    v6 = *(a1 + 2);
    if ((v6 | 2) != 6)
    {
      v3 = 0x16D00000000;
      goto LABEL_7;
    }

    if (*a1)
    {
      v3 = 0x16E00000000;
LABEL_7:
      v4 = 3;
      return v3 | v4;
    }

    v14 = &unk_284BBE408;
    v15 = *(a1 + 200);
    if (v6 == 6)
    {
      v7 = 20;
    }

    else
    {
      v7 = 19;
    }

    v8 = sub_2394E6A4C(&v14, (a1 + 40));
    if (v8)
    {
      v3 = v8 & 0xFFFFFFFF00000000;
LABEL_24:
      v4 = v8;
      return v3 | v4;
    }

    v9 = *(a1 + 2);
    if (v9 == 6)
    {
      v11 = sub_2393D9044(0x26u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(38, 4, "Sending BDX Message");
      }

      sub_2394E3C30(&v14, v7);
      v10 = 0;
      *(a1 + 2) = 7;
    }

    else
    {
      if (v9 != 4 || *(a1 + 8) != 16)
      {
        goto LABEL_23;
      }

      *(a1 + 208) = v15 + 1;
      v10 = 1;
    }

    *(a1 + 233) = v10;
LABEL_23:
    LODWORD(v8) = 0;
    v3 = 0;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v7;
    goto LABEL_24;
  }

  v3 = 0x16B00000000;
  v4 = 3;
  return v3 | v4;
}

uint64_t sub_2394E7778(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 2);
  v3 = v2 > 8;
  v4 = (1 << v2) & 0x181;
  if (v3 || v4 == 0)
  {
    sub_2394E6F88(a1, a2);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0x19300000000;
    v7 = 3;
  }

  return v7 | v6;
}

void sub_2394E77D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 9) = 0;
  *(a1 + 6) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 1;
}

unint64_t sub_2394E783C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*a3)
  {
    v4 = 0x1B600000000;
    LODWORD(v5) = 47;
    return v4 | v5;
  }

  if (*(a2 + 4))
  {
    v4 = 0x1C400000000;
    LODWORD(v5) = 42;
    return v4 | v5;
  }

  if (*(a2 + 6) == 2)
  {
    v10 = *a3;
    *a3 = 0;
    v5 = sub_2394E7954(a1, a2, &v10);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    if (!v5)
    {
      *(a1 + 224) = a4;
LABEL_16:
      LODWORD(v5) = 0;
      v4 = 0;
      return v4 | v5;
    }

LABEL_15:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v4 | v5;
  }

  v4 = 0x1C400000000;
  LODWORD(v5) = 42;
  if (!*(a2 + 6) && *a2 == 64)
  {
    v9 = *a3;
    *a3 = 0;
    v5 = sub_2394E7CA0(a1, a2, &v9);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return v4 | v5;
}

uint64_t sub_2394E7954(_WORD *a1, unsigned __int8 *a2, void *a3)
{
  if (!*a3)
  {
    v4 = 0x1CD00000000;
    v5 = 47;
    return v5 | v4;
  }

  if (!*a1)
  {
    v7 = *a2;
    v4 = 0x1FA00000000;
    v5 = 42;
    if (*a2 <= 0x10u)
    {
      if (*a2 <= 3u)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            return v5 | v4;
          }

          v9 = sub_2393D9044(0x26u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
          }

          if (sub_2393D5398(4u))
          {
            sub_2393D5320(38, 4, "Handling received BDX Message");
          }

          v20 = *a3;
          *a3 = 0;
          sub_2394E7F4C(a1, &v20);
          v8 = v20;
          if (!v20)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if (v7 != 4)
      {
        if (v7 == 5)
        {
          v12 = sub_2393D9044(0x26u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
          }

          if (sub_2393D5398(4u))
          {
            sub_2393D5320(38, 4, "Handling received BDX Message");
          }

          v19 = *a3;
          *a3 = 0;
          sub_2394E80CC(a1, &v19);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 16)
          {
            return v5 | v4;
          }

          v18 = *a3;
          *a3 = 0;
          sub_2394E825C(a1, &v18);
          v8 = v18;
          if (!v18)
          {
LABEL_36:
            v4 = 0;
            v5 = 0;
            return v5 | v4;
          }
        }

LABEL_35:
        sub_2393D96C8(v8);
        goto LABEL_36;
      }

      v10 = sub_2393D9044(0x26u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(38, 4, "Handling received BDX Message");
      }

      v21 = *a3;
      *a3 = 0;
      sub_2394E7D94(a1, v7, &v21);
      v8 = v21;
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (*a2 <= 0x12u)
    {
      if (v7 == 17)
      {
        v16 = *a3;
        *a3 = 0;
        sub_2394E8460(a1, &v16);
        v8 = v16;
        if (!v16)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 != 18)
        {
          return v5 | v4;
        }

        v15 = *a3;
        *a3 = 0;
        sub_2394E8600(a1, &v15);
        v8 = v15;
        if (!v15)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case 0x13:
          v14 = *a3;
          *a3 = 0;
          sub_2394E8790(a1, &v14);
          v8 = v14;
          if (!v14)
          {
            goto LABEL_36;
          }

          break;
        case 0x14:
          v13 = *a3;
          *a3 = 0;
          sub_2394E8894(a1, &v13);
          v8 = v13;
          if (!v13)
          {
            goto LABEL_36;
          }

          break;
        case 0x15:
          v17 = *a3;
          *a3 = 0;
          sub_2394E8358(a1, &v17);
          v8 = v17;
          if (!v17)
          {
            goto LABEL_36;
          }

          break;
        default:
          return v5 | v4;
      }
    }

    goto LABEL_35;
  }

  v4 = 0x1CE00000000;
  v5 = 3;
  return v5 | v4;
}

unint64_t sub_2394E7CA0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3)
  {
    return 0x2090000002FLL;
  }

  *(a1 + 2) = 8;
  *(a1 + 233) = 0;
  sub_23946FC58(v9);
  v8 = *a3;
  *a3 = 0;
  v5 = sub_23946FCAC(v9, &v8);
  if (v8)
  {
    sub_2393D96C8(v8);
  }

  v8 = 0;
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else if (v10 == 0x20000)
  {
    v6 = 0;
    LODWORD(v5) = 0;
    *(a1 + 48) = v11;
    *a1 = 9;
  }

  else
  {
    v6 = 0x21000000000;
    LODWORD(v5) = 42;
  }

  if (v12)
  {
    sub_2393D96C8(v12);
  }

  return v5 | v6;
}

void sub_2394E7D94(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(a1 + 2) != 1)
  {
LABEL_4:

    sub_2394E6F88(a1, 24);
    return;
  }

  v5 = a2;
  if (*(a1 + 3) == 1)
  {
    if (a2 != 4)
    {
      goto LABEL_4;
    }
  }

  else if (a2 != 1)
  {
    goto LABEL_4;
  }

  v14 = &unk_284BBE2F0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2393D9BEC(*a3, a2);
  v13 = *a3;
  v6 = sub_2394E2998(&v14, &v13);
  if (v13)
  {
    sub_2393D96C8(v13);
  }

  v13 = 0;
  if (v6)
  {
    sub_2394E6F88(a1, 22);
  }

  else
  {
    sub_2394E89A0(a1, &v15);
    *(a1 + 9) = 0;
    v7 = v17;
    v8 = *(a1 + 6);
    if (v17 < v8)
    {
      LOWORD(v8) = v17;
    }

    *(a1 + 32) = v8;
    v9 = v18;
    v10 = v19;
    *(a1 + 16) = v18;
    *(a1 + 24) = v10;
    *(a1 + 56) = v15;
    *(a1 + 58) = v7;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v20;
    *(a1 + 88) = v21;
    v11 = v23;
    *(a1 + 96) = v22;
    *(a1 + 104) = v11;
    v12 = *(a1 + 40);
    if (v12)
    {
      sub_2393D96C8(v12);
    }

    *(a1 + 40) = *a3;
    *a3 = 0;
    *a1 = 2;
    *(a1 + 2) = 3;
    sub_2394E2BC0(&v14, v5);
  }

  v14 = &unk_284BBE2F0;
  if (v24)
  {
    sub_2393D96C8(v24);
  }
}

void sub_2394E7F4C(uint64_t a1, void **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 2)
  {
    v9 = &unk_284BBE358;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    sub_2393D9BEC(*a2, a2);
    v8 = *a2;
    v4 = sub_2394E319C(&v9, &v8);
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    v8 = 0;
    if (v4)
    {
      sub_2394E6F88(a1, 22);
    }

    else if (!sub_2394E89F8(a1, &v10))
    {
      v5 = HIWORD(v10);
      *(a1 + 32) = HIWORD(v10);
      *(a1 + 112) = *(a1 + 8);
      *(a1 + 114) = v5;
      *(a1 + 120) = *(a1 + 16);
      v6 = v12;
      *(a1 + 136) = v11;
      *(a1 + 144) = v6;
      v7 = *(a1 + 40);
      if (v7)
      {
        sub_2393D96C8(v7);
      }

      *(a1 + 40) = *a2;
      *a2 = 0;
      *a1 = 3;
      *(a1 + 233) = *(a1 + 8) == 32;
      *(a1 + 2) = 4;
      sub_2394E32CC(&v9);
    }

    v9 = &unk_284BBE358;
    if (v13)
    {
      sub_2393D96C8(v13);
    }
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E80CC(uint64_t a1, void **a2)
{
  if (*(a1 + 3) || *(a1 + 2) != 2)
  {

    sub_2394E6F88(a1, 24);
  }

  else
  {
    v10 = &unk_284BBE3B0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_2393D9BEC(*a2, a2);
    v9 = *a2;
    v4 = sub_2394E3640(&v10, &v9);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    v9 = 0;
    if (v4)
    {
      sub_2394E6F88(a1, 22);
    }

    else if (!sub_2394E89F8(a1, &v11))
    {
      v5 = v13;
      *(a1 + 32) = v13;
      v6 = v14;
      *(a1 + 16) = v14;
      *(a1 + 112) = *(a1 + 8);
      *(a1 + 114) = v5;
      *(a1 + 120) = v6;
      v7 = *(&v15 + 1);
      *(a1 + 136) = v15;
      *(a1 + 144) = v7;
      v8 = *(a1 + 40);
      if (v8)
      {
        sub_2393D96C8(v8);
      }

      *(a1 + 40) = *a2;
      *a2 = 0;
      *a1 = 3;
      *(a1 + 233) = *(a1 + 8) == 16;
      *(a1 + 2) = 4;
      sub_2394E3810(&v10);
    }

    v10 = &unk_284BBE3B0;
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }
}

void sub_2394E825C(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v9 = 0;
    v7 = *a2;
    v8 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v8, &v7);
    if (v7)
    {
      sub_2393D96C8(v7);
    }

    v7 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      v6 = v9;
      if (v9 == *(a1 + 204))
      {
        *a1 = 5;
        *(a1 + 233) = 0;
        *(a1 + 208) = v6;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8358(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v7 = *a2;
    v8 = &unk_284BBE4B8;
    *a2 = 0;
    v3 = sub_2394E4230(&v8, &v7);
    if (v7)
    {
      sub_2393D96C8(v7);
    }

    v7 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      v6 = v9;
      if (v9 == *(a1 + 204))
      {
        *a1 = 6;
        *(a1 + 233) = 0;
        *(a1 + 208) = v6;
        *(a1 + 184) = v10;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8460(uint64_t a1, void **a2)
{
  if (!*(a1 + 3) && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v12 = &unk_284BBE460;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_2393D9BEC(*a2, a2);
    v11 = *a2;
    v4 = sub_2394E3E68(&v12, &v11);
    if (v11)
    {
      sub_2393D96C8(v11);
    }

    v11 = 0;
    if (v4)
    {
      goto LABEL_7;
    }

    v7 = v13;
    if (v13 != *(a1 + 208))
    {
      v5 = a1;
      v6 = 23;
      goto LABEL_8;
    }

    v8 = v15;
    if (!v15 || v15 > *(a1 + 32))
    {
LABEL_7:
      v5 = a1;
      v6 = 22;
    }

    else
    {
      v9 = *(a1 + 24);
      if (!v9 || *(a1 + 192) + v15 <= v9)
      {
        *(a1 + 152) = v14;
        *(a1 + 160) = v8;
        *(a1 + 168) = 0;
        *(a1 + 172) = v7;
        v10 = *(a1 + 40);
        if (v10)
        {
          sub_2393D96C8(v10);
          v8 = v15;
          v7 = v13;
        }

        *(a1 + 40) = *a2;
        *a2 = 0;
        *a1 = 4;
        *(a1 + 192) += v8;
        *(a1 + 200) = v7;
        *(a1 + 233) = 0;
        goto LABEL_9;
      }

      v5 = a1;
      v6 = 20;
    }

LABEL_8:
    sub_2394E6F88(v5, v6);
LABEL_9:
    v12 = &unk_284BBE460;
    if (v16)
    {
      sub_2393D96C8(v16);
    }

    return;
  }

  sub_2394E6F88(a1, 24);
}

void sub_2394E8600(uint64_t a1, void **a2)
{
  if (!*(a1 + 3) && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v11 = &unk_284BBE460;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_2393D9BEC(*a2, a2);
    v10 = *a2;
    v4 = sub_2394E3E68(&v11, &v10);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    v10 = 0;
    if (!v4)
    {
      v7 = v12;
      if (v12 != *(a1 + 208))
      {
        v5 = a1;
        v6 = 23;
        goto LABEL_17;
      }

      v8 = v14;
      if (v14 <= *(a1 + 32))
      {
        *(a1 + 152) = v13;
        *(a1 + 160) = v8;
        *(a1 + 168) = 1;
        *(a1 + 172) = v7;
        v9 = *(a1 + 40);
        if (v9)
        {
          sub_2393D96C8(v9);
          v8 = v14;
          v7 = v12;
        }

        *(a1 + 40) = *a2;
        *a2 = 0;
        *a1 = 4;
        *(a1 + 192) += v8;
        *(a1 + 200) = v7;
        *(a1 + 233) = 0;
        *(a1 + 2) = 6;
        sub_2394E3F74(&v11, 18);
        goto LABEL_18;
      }
    }

    v5 = a1;
    v6 = 22;
LABEL_17:
    sub_2394E6F88(v5, v6);
LABEL_18:
    v11 = &unk_284BBE460;
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    return;
  }

  sub_2394E6F88(a1, 24);
}

void sub_2394E8790(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v8 = 0;
    v6 = *a2;
    v7 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v7, &v6);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    v6 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      if (v8 == *(a1 + 200))
      {
        *a1 = 7;
        *(a1 + 233) = *(a1 + 8) == 32;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8894(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 5 && (*(a1 + 233) & 1) != 0)
  {
    v8 = 0;
    v6 = *a2;
    v7 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v7, &v6);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    v6 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      if (v8 == *(a1 + 200))
      {
        *a1 = 8;
        *(a1 + 233) = 0;
        *(a1 + 2) = 7;
        sub_2394E3C30(&v7, 20);
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E89A0(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 0x30) == 0 || (v2 = (*(a1 + 4) & *a2), (*(a1 + 4) & *a2) == 0))
  {
    sub_2394E6F88(a1, 80);
    return;
  }

  if ((v2 & 0xFFFFFFBF) == 0)
  {
    v3 = 64;
LABEL_11:
    *(a1 + 8) = v3;
    return;
  }

  if ((v2 & 0xFFFFFFDF) == 0)
  {
    v3 = 32;
    goto LABEL_11;
  }

  if ((v2 & 0xFFFFFFEF) == 0)
  {
    v3 = 16;
    goto LABEL_11;
  }
}

uint64_t sub_2394E89F8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 0xFFFFFFBF) != 0)
  {
    if ((v2 & 0xFFFFFFDF) != 0)
    {
      if ((v2 & 0xFFFFFFEF) != 0)
      {
        sub_2394E6F88(a1, 22);
        v3 = 0x34E00000000;
LABEL_11:
        v5 = 172;
        return v3 | v5;
      }

      v4 = 16;
    }

    else
    {
      v4 = 32;
    }
  }

  else
  {
    v4 = 64;
  }

  if ((*(a1 + 4) & v4) == 0)
  {
    sub_2394E6F88(a1, 80);
    v3 = 0x35900000000;
    goto LABEL_11;
  }

  v5 = 0;
  v3 = 0;
  *(a1 + 8) = v4;
  return v3 | v5;
}

const char *sub_2394E8A98(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "Unknown";
  }

  else
  {
    return off_278A83438[a1];
  }
}

__n128 sub_2394E8ABC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 8) = 0;
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v3;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t sub_2394E8ADC(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14[0] = a1;
  v14[1] = a2;
  if (a2 < 0x18)
  {
    v6 = 0x2B00000000;
    v7 = 30;
    return v7 | v6;
  }

  if (*a1 != 980968546 || *(a1 + 4) != 12079)
  {
    v6 = 0x2C00000000;
    v7 = 223;
    return v7 | v6;
  }

  if (sub_2393D6044(a1 + 6, 0x10uLL, v15, 8) != 8)
  {
    v6 = 0x3100000000;
LABEL_14:
    v7 = 71;
    return v7 | v6;
  }

  v10 = bswap64(v15[0]);
  *a3 = v10;
  if (v10 - 1 > 0xFFFFFFEFFFFFFFFELL)
  {
    v6 = 0x3400000000;
    goto LABEL_14;
  }

  if (*(a1 + 22) == 47)
  {
    v11 = sub_2394E8C30(v14, 0x17uLL);
    v6 = 0;
    v7 = 0;
    *a4 = v11;
    a4[1] = v12;
  }

  else
  {
    v6 = 0x3500000000;
    v7 = 224;
  }

  return v7 | v6;
}

uint64_t sub_2394E8C30(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    sub_23952F9F8();
  }

  sub_238DB9BD8(&v4, *a1 + a2, v2 - a2);
  return v4;
}

unint64_t sub_2394E8C70(unint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x3E0000001ELL;
  }

  v17[0] = bswap64(a1);
  v7 = sub_2393D5E58(v17, 8, v16, 0x10uLL, 1u);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = *a4;
    v12 = *(a4 + 8);
    bzero(*a4, v12);
    v13 = v11;
    v14 = v12 - 1;
    v15 = 0;
    if (!v11)
    {
      v14 = 0;
    }

    sub_2393D5CDC(&v13, "bdx://", 6uLL);
    sub_2393D5CDC(&v13, v16, 0x10uLL);
    sub_2393D5C64(&v13, "/");
    sub_2393D5CDC(&v13, a2, a3);
    if (v14 >= v15)
    {
      sub_2393F6D60(a4, v15);
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v9 = 0x5100000000;
      v8 = 25;
    }
  }

  return v8 | v9;
}

uint64_t sub_2394E8DC4(int a1)
{
  if (a1 == 166)
  {
    v1 = 81;
  }

  else
  {
    v1 = 95;
  }

  if (a1 == 108)
  {
    v2 = 80;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 47)
  {
    v3 = 22;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 3)
  {
    return 24;
  }

  else
  {
    return v3;
  }
}

void *sub_2394E8DFC(void *a1)
{
  *a1 = &unk_284BBE6F8;
  a1[1] = &unk_284BBE758;
  sub_2394E8E70(a1);
  v2 = a1[7];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[7] = 0;
  return a1;
}

uint64_t sub_2394E8E70(uint64_t a1)
{
  sub_2394E77D8(a1 + 16);
  v2 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Stop polling for messages", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(12, 2, "Stop polling for messages");
  }

  result = *(a1 + 264);
  if (result)
  {
    result = (*(*result + 72))(result, sub_2394E8F54, a1);
    *(a1 + 264) = 0;
  }

  return result;
}

void sub_2394E8F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2394E92DC(a2);
  }
}

unint64_t sub_2394E8F64(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _WORD **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 256))
  {
    *(a1 + 256) = a2;
  }

  v7 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v9 = HIWORD(*(a3 + 1));
    v10 = *(a3 + 1);
    *buf = 136315906;
    v18 = "OnMessageReceived";
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "%s: message 0x%x protocol (%u, %u)", buf, 0x1Eu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(12, 3, "%s: message 0x%x protocol (%u, %u)", "OnMessageReceived", *a3, *(a3 + 1), HIWORD(*(a3 + 1)));
  }

  v16 = *a4;
  *a4 = 0;
  v11 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v12 = sub_2394E783C(a1 + 16, a3, &v16, v11);
  if (v16)
  {
    sub_2393D96C8(v16);
  }

  v16 = 0;
  if (v12)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v18 = v13;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "failed to handle message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = sub_2393C9138();
      sub_2393D5320(12, 1, "failed to handle message: %s", v14);
    }
  }

  *(*(a1 + 256) + 8) |= 0x40u;
  return v12;
}

void sub_2394E91A0(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    *buf = 136315650;
    v11 = "OnResponseTimeout";
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s, ec: %u%c", buf, 0x18u);
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

    sub_2393D5320(12, 1, "%s, ec: %u%c", "OnResponseTimeout", v7, v9);
  }

  *(a1 + 256) = 0;
  sub_2394E77D8(a1 + 16);
}

void sub_2394E92DC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  v7 = 95;
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  sub_2394E64BC((a1 + 16), &v5, v2);
  (*(*a1 + 72))(a1, &v5);
  v3 = *(a1 + 264);
  if (v3)
  {
    (*(*v3 + 40))(v3, *(a1 + 272), sub_2394E8F54, a1);
  }

  else
  {
    v4 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "PollForOutput";
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s mSystemLayer is null", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(12, 1, "%s mSystemLayer is null", "PollForOutput");
    }
  }

  if (v6)
  {
    sub_2393D96C8(v6);
  }
}

void sub_2394E9478(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(*v1 + 40);

    v2();
  }

  else
  {
    v3 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = "ScheduleImmediatePoll";
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%s mSystemLayer is null", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(12, 1, "%s mSystemLayer is null", "ScheduleImmediatePoll");
    }
  }
}

unint64_t sub_2394E95B8(uint64_t a1, uint64_t a2, char a3, char a4, __int16 a5, int a6, int a7)
{
  if (a2)
  {
    *(a1 + 272) = a7;
    *(a1 + 264) = a2;
    v8 = sub_2394E6B90(a1 + 16, a3, a4, a5, a6);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = sub_2393D9044(0xCu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Start polling for messages", v12, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(12, 2, "Start polling for messages");
      }

      (*(**(a1 + 264) + 40))(*(a1 + 264), *(a1 + 272), sub_2394E8F54, a1);
      LODWORD(v8) = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = 0x6C00000000;
    LODWORD(v8) = 47;
  }

  return v9 | v8;
}

unint64_t sub_2394E96E4(uint64_t a1, uint64_t a2, char a3, char *a4, int a5, int a6)
{
  if (a2)
  {
    *(a1 + 272) = a6;
    *(a1 + 264) = a2;
    v7 = sub_2394E6898(a1 + 16, a3, a4, a5);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(**(a1 + 264) + 40))(*(a1 + 264), *(a1 + 272), sub_2394E8F54, a1);
      LODWORD(v7) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0x7B00000000;
    LODWORD(v7) = 47;
  }

  return v8 | v7;
}

void sub_2394E97A0(void *result, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    return;
  }

  v3 = (*(*result + 24))(result);
  v5 = sub_2393AB8BC(a2, v4);
  v6 = 0;
  v7 = v5 + 98;
  while (1)
  {
    v8 = v3 + v6;
    if (*(v3 + v6 + 98))
    {
      v9 = (v8 + 8);
      if (*(v8 + 8))
      {
        if (sub_2393CF944((v8 + 16), &xmmword_27DF7BD44))
        {
          sub_23948CC1C(buf, v8 + 16, *v9);
          sub_23948CC1C(&v57, (v5 + 2), v5[1]);
          if (!strcmp((v3 + v6 + 98), v7) && *(v8 + 96) == *(v5 + 48))
          {
            if (*&v61[4] > 5uLL || v58 >= 6)
            {
              sub_239538258();
            }

            if (*&v61[4] == v58)
            {
              break;
            }
          }
        }
      }
    }

LABEL_26:
    v6 += 424;
    if (v6 == 4240)
    {
      v17 = v7;
      v18 = 4240;
      do
      {
        if (!*(v3 + 98) || !*(v3 + 8) || !sub_2393CF944((v3 + 16), &xmmword_27DF7BD44))
        {
          *v3 = *v5;
          v20 = *(v5 + 1);
          *(v3 + 24) = *(v5 + 3);
          *(v3 + 8) = v20;
          v21 = *(v5 + 5);
          v22 = *(v5 + 7);
          v23 = *(v5 + 9);
          *(v3 + 88) = *(v5 + 11);
          *(v3 + 72) = v23;
          *(v3 + 56) = v22;
          *(v3 + 40) = v21;
          v24 = *(v5 + 13);
          v25 = *(v5 + 15);
          v26 = *(v5 + 17);
          *(v3 + 147) = *(v5 + 147);
          *(v3 + 136) = v26;
          *(v3 + 120) = v25;
          *(v3 + 104) = v24;
          v27 = (v3 + 168);
          v28 = v5 + 21;
          v29 = *(v5 + 21);
          v30 = *(v5 + 23);
          v31 = *(v5 + 25);
          *(v3 + 216) = *(v5 + 27);
          *(v3 + 200) = v31;
          *(v3 + 184) = v30;
          *(v3 + 168) = v29;
          v32 = *(v5 + 29);
          v33 = *(v5 + 31);
          v34 = *(v5 + 35);
          *(v3 + 264) = *(v5 + 33);
          *(v3 + 280) = v34;
          *(v3 + 248) = v33;
          *(v3 + 232) = v32;
          goto LABEL_37;
        }

        v3 += 424;
        v18 -= 424;
      }

      while (v18);
      v19 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v61 = v17;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to add discovered node with hostname %s- Insufficient space", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(34, 1, "Failed to add discovered node with hostname %s- Insufficient space", v17);
      }

      return;
    }
  }

  v55 = v7;
  if (!*&v61[4])
  {
    v11 = 0;
    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v58;
    if (!v58)
    {
      goto LABEL_22;
    }

    v13 = 0;
    while (((1 << v13) & *&v11) != 0)
    {
LABEL_18:
      if (++v13 >= v12)
      {
        goto LABEL_22;
      }
    }

    v14 = sub_2394E9D38(buf, v10);
    v15 = sub_2394E9D38(&v57, v13);
    if (!sub_2393CF8F8(v14, v15))
    {
      v12 = v58;
      goto LABEL_18;
    }

    if (v13 >= 5)
    {
      abort();
    }

    *&v11 |= 1 << v13;
LABEL_22:
    ++v10;
  }

  while (v10 < *&v61[4]);
LABEL_25:
  v59 = v11;
  v16 = sub_2394E9D60(&v59, 0, 5uLL);
  v7 = v55;
  if (v16 != v58)
  {
    goto LABEL_26;
  }

  *v8 = *v5;
  v42 = *(v5 + 3);
  *v9 = *(v5 + 1);
  *(v8 + 24) = v42;
  v43 = *(v5 + 5);
  v44 = *(v5 + 7);
  v45 = *(v5 + 11);
  *(v8 + 72) = *(v5 + 9);
  *(v8 + 88) = v45;
  *(v8 + 40) = v43;
  *(v8 + 56) = v44;
  v46 = *(v5 + 13);
  v47 = *(v5 + 15);
  v48 = *(v5 + 17);
  *(v8 + 147) = *(v5 + 147);
  *(v8 + 120) = v47;
  *(v8 + 136) = v48;
  *(v8 + 104) = v46;
  v27 = (v8 + 168);
  v28 = v5 + 21;
  v49 = *(v5 + 21);
  v50 = *(v5 + 23);
  v51 = *(v5 + 25);
  *(v8 + 216) = *(v5 + 27);
  *(v8 + 200) = v51;
  *(v8 + 184) = v50;
  *(v8 + 168) = v49;
  v52 = *(v5 + 29);
  v53 = *(v5 + 31);
  v54 = *(v5 + 35);
  *(v8 + 264) = *(v5 + 33);
  *(v8 + 280) = v54;
  *(v8 + 248) = v53;
  *(v8 + 232) = v52;
LABEL_37:
  v35 = v28[8];
  v36 = v28[9];
  v37 = v28[11];
  v27[10] = v28[10];
  v27[11] = v37;
  v27[8] = v35;
  v27[9] = v36;
  v38 = v28[12];
  v39 = v28[13];
  v40 = v28[14];
  *(v27 + 235) = *(v28 + 235);
  v27[13] = v39;
  v27[14] = v40;
  v27[12] = v38;
  v41 = result[1];
  if (v41)
  {
    (*(*v41 + 16))(v41, v5);
  }
}

uint64_t sub_2394E9BEC(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);
  for (i = 0; i != 4240; i += 424)
  {
    v3 = v1 + i;
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 144) = 0;
    *(v3 + 148) = 0;
    *(v3 + 152) = 0;
    *(v3 + 156) = 0;
    *(v3 + 160) = 0;
    *(v3 + 162) = 0;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 127) = 0u;
    sub_2394BD44C(v1 + i);
    *(v3 + 168) = 0u;
    v4 = (v1 + i + 168);
    *(v4 + 235) = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
  }

  return 0;
}

uint64_t sub_2394E9CB4(uint64_t a1, unsigned int a2)
{
  v3 = (*(*a1 + 24))(a1);
  if (a2 > 9)
  {
    return 0;
  }

  v4 = v3 + 424 * a2;
  if (!*(v4 + 98) || !*(v4 + 8))
  {
    return 0;
  }

  if (sub_2393CF944((v4 + 16), &xmmword_27DF7BD44))
  {
    return v4;
  }

  return 0;
}

unint64_t sub_2394E9D38(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239538398();
  }

  return *a1 + 16 * a2;
}

uint64_t sub_2394E9D60(int8x8_t *a1, unsigned int a2, unint64_t a3)
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

uint64_t sub_2394E9E04(uint64_t a1)
{
  *&v7[311] = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBE810;
  v2 = (a1 + 712);
  *(a1 + 744) = 0;
  bzero((a1 + 8), 0x2BAuLL);
  v3 = 0;
  *(a1 + 728) = 0;
  *v2 = 0u;
  *(a1 + 736) = &unk_284BBE888;
  *(a1 + 752) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 760) = &unk_284BBBF18;
  *(a1 + 784) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  do
  {
    v4 = a1 + v3;
    *(v4 + 1376) = 0;
    *(v4 + 1384) = 0;
    *(v4 + 1392) = 0;
    *(v4 + 1400) = 0;
    v3 += 32;
  }

  while (v3 != 320);
  *(a1 + 1864) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0;
  *(a1 + 1872) = 0xFFFF0000FFFFLL;
  *(a1 + 1880) = -1;
  *(a1 + 1882) = 0u;
  *(a1 + 1898) = 514;
  *(a1 + 1900) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1908) = 257;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 0;
  *(a1 + 1932) = 0;
  *(a1 + 1940) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 2872) = 0;
  *(a1 + 3774) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1952) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  bzero(v6, 0x2B8uLL);
  (*(*a1 + 16))(a1, v6);
  if (v6[384] == 1)
  {
    sub_2393F9144(v7, 16);
  }

  return a1;
}

uint64_t sub_2394EA004(uint64_t a1)
{
  *a1 = &unk_284BBE810;
  v2 = *(a1 + 1992);
  if (v2)
  {
    j__free(v2);
    *(a1 + 1992) = 0;
  }

  v3 = *(a1 + 1976);
  if (v3)
  {
    j__free(v3);
    *(a1 + 1976) = 0;
  }

  v4 = *(a1 + 1840);
  if (v4)
  {
    j__free(v4);
    *(a1 + 1840) = 0;
  }

  *(a1 + 736) = &unk_284BBE888;
  sub_239495880(a1 + 760);
  if (*(a1 + 392) == 1)
  {
    sub_2393F9144(a1 + 393, 16);
  }

  return a1;
}

void *sub_2394EA0B4(void *a1)
{
  *a1 = &unk_284BBE888;
  sub_239495880((a1 + 3));
  return a1;
}

void sub_2394EA0FC(uint64_t a1)
{
  sub_2394EA004(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EA13C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Checking ICD registration parameters", v8, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Checking ICD registration parameters");
  }

  if ((*(a2 + 632) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD symmetric key!", v8, 2u);
    }

    v6 = 0x3600000000;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Missing ICD symmetric key!");
    }

    goto LABEL_31;
  }

  v8[0] = *(a2 + 632);
  v9 = *(a2 + 640);
  if (*(sub_238DE36B8(v8, v4) + 1) != 16)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Invalid ICD symmetric key length!", v8, 2u);
    }

    v6 = 0x3B00000000;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Invalid ICD symmetric key length!");
    }

    goto LABEL_31;
  }

  if ((*(a2 + 600) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD check-in node id!", v8, 2u);
    }

    v6 = 0x4000000000;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Missing ICD check-in node id!");
    }

    goto LABEL_31;
  }

  if ((*(a2 + 616) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD monitored subject!", v8, 2u);
    }

    v6 = 0x4500000000;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Missing ICD monitored subject!");
    }

    goto LABEL_31;
  }

  if ((*(a2 + 656) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD Client Type!", v8, 2u);
    }

    v6 = 0x4A00000000;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Missing ICD Client Type!");
    }

LABEL_31:
    v5 = 47;
    return v6 | v5;
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

uint64_t sub_2394EA3D0(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = a1 + 8;
  if (a1 + 8 == a2)
  {
    goto LABEL_160;
  }

  v5 = (a1 + 264);
  sub_2394EB1E4(a1 + 8, a2);
  sub_2394EB684(v2);
  if (*(a2 + 248) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 256);
    v7 = sub_238DE36B8(buf, v6);
    v8 = *(v7 + 1);
    if (v8 >= 0xFF)
    {
      v9 = sub_2393D9044(9u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Thread operational data set is too large", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Thread operational data set is too large");
      }

      v10 = 47;
      LODWORD(v11) = 98;
      return v10 | (v11 << 32);
    }

    memmove((a1 + 912), *v7, v8);
    v12 = sub_2393D9044(9u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Setting thread operational dataset from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting thread operational dataset from parameters");
    }

    sub_238DB6950(buf, a1 + 912, v8);
    *(a1 + 256) = 1;
    *v5 = *buf;
    *(a1 + 602) = 1;
  }

  if (*(a2 + 176) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 184);
    v103 = *(a2 + 200);
    v13 = sub_2394EB70C(buf, v6);
    v14 = *(v13 + 1);
    if (v14 > 0x20 || (v15 = *(v13 + 3), v15 >= 0x41))
    {
      v38 = sub_2393D9044(9u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_ERROR, "Wifi credentials are too large", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Wifi credentials are too large");
      }

      v10 = 47;
      LODWORD(v11) = 112;
      return v10 | (v11 << 32);
    }

    v16 = *(v13 + 2);
    memmove((a1 + 816), *v13, v14);
    memmove((a1 + 848), v16, v15);
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting wifi credentials from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting wifi credentials from parameters");
    }

    sub_238DB6950(buf, a1 + 816, v14);
    sub_238DB6950(__dst, a1 + 848, v15);
    v18 = *buf;
    v19 = *__dst;
    *(a1 + 184) = 1;
    *(a1 + 192) = v18;
    *(a1 + 208) = v19;
    *(a1 + 600) = 1;
  }

  if (*(a2 + 216) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 224);
    v20 = sub_238DE36B8(buf, v6);
    v21 = *v20;
    v22 = *(v20 + 1);
    *buf = a1 + 1166;
    *&buf[8] = 2;
    if (v22 > 2)
    {
      v94 = sub_2393D9044(9u);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        *__dst = 67109120;
        *&__dst[4] = v22;
        _os_log_impl(&dword_238DAE000, v94, OS_LOG_TYPE_ERROR, "Country code is too large: %u", __dst, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Country code is too large: %u", v22);
      }

      v10 = 47;
      LODWORD(v11) = 132;
      return v10 | (v11 << 32);
    }

    memmove((a1 + 1166), v21, v22);
    sub_2393F6D60(buf, v22);
    sub_238DB9BD8(__dst, *buf, *&buf[8]);
    *(a1 + 224) = 1;
    *(a1 + 232) = *__dst;
  }

  v23 = *(a2 + 152);
  v24 = sub_2393D9044(9u);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23 == 1)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting attestation nonce from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting attestation nonce from parameters");
    }

    buf[0] = *(a2 + 152);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 160);
    }

    if (*(sub_238DE36B8(buf, v26) + 1) != 32)
    {
      v10 = 47;
      LODWORD(v11) = 140;
      return v10 | (v11 << 32);
    }

    buf[0] = *(a2 + 152);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 160);
    }

    v29 = *sub_238DE36B8(buf, v27);
    __dst[0] = *(a2 + 152);
    if (__dst[0] == 1)
    {
      *&__dst[8] = *(a2 + 160);
    }

    v30 = sub_238DE36B8(__dst, v28);
    memmove((a1 + 2008), v29, *(v30 + 1));
  }

  else
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting attestation nonce to random value", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting attestation nonce to random value");
    }

    sub_2393F888C((a1 + 2008), 0x20uLL);
  }

  sub_238DB6950(buf, a1 + 2008, 32);
  *(a1 + 160) = 1;
  *(a1 + 168) = *buf;
  v31 = *(a2 + 128);
  v32 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v31 == 1)
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting CSR nonce from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting CSR nonce from parameters");
    }

    buf[0] = *(a2 + 128);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 136);
    }

    if (*(sub_238DE36B8(buf, v33) + 1) != 32)
    {
      v10 = 47;
      LODWORD(v11) = 153;
      return v10 | (v11 << 32);
    }

    buf[0] = *(a2 + 128);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 136);
    }

    v36 = *sub_238DE36B8(buf, v34);
    __dst[0] = *(a2 + 128);
    if (__dst[0] == 1)
    {
      *&__dst[8] = *(a2 + 136);
    }

    v37 = sub_238DE36B8(__dst, v35);
    memmove((a1 + 2040), v36, *(v37 + 1));
  }

  else
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting CSR nonce to random value", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting CSR nonce to random value");
    }

    sub_2393F888C((a1 + 2040), 0x20uLL);
  }

  v39 = sub_238DB6950(buf, a1 + 2040, 32);
  *(a1 + 136) = 1;
  *(a1 + 144) = *buf;
  if (*(a2 + 40) == 1)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting DST offsets from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting DST offsets from parameters");
    }

    buf[0] = *(a2 + 40);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 48);
    }

    v41 = sub_2394EB70C(buf, v40);
    v43 = *(v41 + 1);
    if (v43 >= 0xA)
    {
      v44 = 10;
    }

    else
    {
      v44 = *(v41 + 1);
    }

    if (v43)
    {
      v45 = 0;
      v46 = (a1 + 1376);
      do
      {
        buf[0] = *(a2 + 40);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 48);
        }

        v47 = sub_2394EB70C(buf, v42);
        v48 = sub_2394EB72C(v47, v45);
        v49 = v48[1];
        *v46 = *v48;
        v46[1] = v49;
        v46 += 2;
        ++v45;
      }

      while (v44 != v45);
    }

    v39 = sub_2394DB5F0(buf, a1 + 1376, v44);
    *(a1 + 48) = 1;
    *(a1 + 56) = *buf;
  }

  if (*(a2 + 16) == 1)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting Time Zone from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Setting Time Zone from parameters");
    }

    buf[0] = *(a2 + 16);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 24);
    }

    v51 = sub_2394EB70C(buf, v50);
    v53 = *(v51 + 1);
    if (v53 >= 2)
    {
      v54 = 2;
    }

    else
    {
      v54 = *(v51 + 1);
    }

    if (v53)
    {
      v55 = 0;
      v56 = a1 + 1248;
      v57 = (a1 + 1192);
      do
      {
        buf[0] = *(a2 + 16);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 24);
        }

        v58 = sub_2394EB70C(buf, v52);
        v59 = sub_2394EB754(v58, v55);
        *(v57 - 24) = *v59;
        v61 = *(v59 + 16);
        *(v57 - 8) = v61;
        if (v61 == 1)
        {
          *v57 = *(v59 + 24);
        }

        buf[0] = *(a2 + 16);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 24);
        }

        v62 = sub_2394EB70C(buf, v60);
        if (*(sub_2394EB754(v62, v55) + 16) != 1)
        {
          goto LABEL_109;
        }

        __dst[0] = *(a2 + 16);
        if (__dst[0] == 1)
        {
          *&__dst[8] = *(a2 + 24);
        }

        v63 = sub_2394EB70C(__dst, v52);
        v64 = sub_2394EB754(v63, v55);
        if (*(sub_239289A18((v64 + 16), v65) + 1) <= 0x40uLL)
        {
          sub_23948CC1C(__dst, v56, 64);
          buf[0] = *(a2 + 16);
          if (buf[0] == 1)
          {
            *&buf[8] = *(a2 + 24);
          }

          v67 = sub_2394EB70C(buf, v66);
          v68 = sub_2394EB754(v67, v55);
          v70 = sub_239289A18((v68 + 16), v69);
          v71 = *(v70 + 1);
          v72 = *&__dst[8];
          if (*&__dst[8] >= v71)
          {
            memmove(*__dst, *v70, v71);
            sub_2393F6D60(__dst, v71);
            v72 = *&__dst[8];
          }

          sub_238DB9BD8(buf, *__dst, v72);
          *(v57 - 8) = 1;
          *v57 = *buf;
        }

        else
        {
LABEL_109:
          *(v57 - 8) = 0;
        }

        ++v55;
        v56 += 2;
        v57 = (v57 + 40);
      }

      while (v54 != v55);
    }

    v39 = sub_2394DB5F0(buf, a1 + 1168, v54);
    *(a1 + 24) = 1;
    *(a1 + 32) = *buf;
  }

  if (*(a2 + 64) != 1)
  {
    goto LABEL_133;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Setting Default NTP from parameters", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Setting Default NTP from parameters");
  }

  buf[0] = *(a2 + 64);
  if (buf[0] == 1)
  {
    *&buf[8] = *(a2 + 72);
    *&v103 = *(a2 + 88);
  }

  v39 = sub_238DE36B8(buf, v73);
  if (v39[16] != 1)
  {
LABEL_133:
    if (*(a2 + 668) && *(a2 + 632) == 1)
    {
      v80 = sub_2394EA13C(v39, a2);
      v10 = v80;
      v11 = HIDWORD(v80);
      if (v80)
      {
        return v10 | (v11 << 32);
      }

      buf[0] = *(a2 + 632);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 640);
      }

      v83 = *sub_238DE36B8(buf, v81);
      __dst[0] = *(a2 + 632);
      if (__dst[0] == 1)
      {
        *&__dst[8] = *(a2 + 640);
      }

      v84 = sub_238DE36B8(__dst, v82);
      memmove((a1 + 1824), v83, *(v84 + 1));
      *(a1 + 640) = 1;
      *(a1 + 648) = a1 + 1824;
      *(a1 + 656) = 16;
      buf[0] = *(a2 + 600);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 608);
      }

      v87 = *sub_238DE36B8(buf, v85);
      *(a1 + 608) = 1;
      *(a1 + 616) = v87;
      buf[0] = *(a2 + 616);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 624);
      }

      v89 = *sub_238DE36B8(buf, v86);
      *(a1 + 624) = 1;
      *(a1 + 632) = v89;
      buf[0] = *(a2 + 656);
      if (buf[0] == 1)
      {
        buf[1] = *(a2 + 657);
      }

      v90 = *sub_23949B670(buf, v88);
      *(a1 + 664) = 1;
      *(a1 + 665) = v90;
    }

    else
    {
      v10 = 47;
      LODWORD(v11) = 98;
    }

    v91 = *(a2 + 680);
    v92 = (a1 + 1840);
    if (v91)
    {
      v93 = *(a2 + 672);
      if (*(a1 + 1848) == v91)
      {
        memmove(*v92, *(a2 + 672), 12 * v91);
      }

      else
      {
        v97 = *(a1 + 1840);
        *(a1 + 1840) = 0u;
        v98 = *sub_2394EB780(a1 + 1840, v91);
        if (v98)
        {
          memcpy(*v92, v93, 12 * v91);
        }

        else
        {
          v10 = 11;
          LODWORD(v11) = 239;
        }

        if (v97)
        {
          j__free(v97);
        }

        if (!v98)
        {
          return v10 | (v11 << 32);
        }
      }

      sub_238DB9BD8(buf, *(a1 + 1840), *(a1 + 1848));
      sub_238DB9BD8(buf, *buf, *&buf[8]);
      LODWORD(v11) = 0;
      v10 = 0;
      v5[26] = *buf;
      return v10 | (v11 << 32);
    }

    *(a1 + 1848) = 0;
    v95 = *(a1 + 1840);
    if (v95)
    {
      j__free(v95);
      LODWORD(v11) = 0;
      v10 = 0;
      *v92 = 0;
      return v10 | (v11 << 32);
    }

LABEL_160:
    LODWORD(v11) = 0;
    v10 = 0;
    return v10 | (v11 << 32);
  }

  __dst[0] = *(a2 + 64);
  if (__dst[0] == 1)
  {
    *&__dst[8] = *(a2 + 72);
    v105 = *(a2 + 88);
  }

  v39 = sub_238DE36B8(__dst, v74);
  if (v39[16])
  {
    if (*(v39 + 1) > 0x80uLL)
    {
      goto LABEL_133;
    }

    sub_23948CC1C(__dst, a1 + 1696, 128);
    buf[0] = *(a2 + 64);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 72);
      *&v103 = *(a2 + 88);
    }

    v76 = sub_238DE36B8(buf, v75);
    if (v76[16])
    {
      v78 = *(v76 + 1);
      if (*&__dst[8] >= v78)
      {
        memmove(*__dst, *v76, v78);
        sub_2393F6D60(__dst, v78);
      }

      buf[0] = *(a2 + 64);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 72);
        *&v103 = *(a2 + 88);
      }

      v79 = sub_238DE36B8(buf, v77);
      if (v79[16])
      {
        v39 = sub_238DB9BD8(&v101, a1 + 1696, *(v79 + 1));
        *(a1 + 72) = 1;
        *(a1 + 80) = v101;
        *(a1 + 96) = 1;
        goto LABEL_133;
      }
    }
  }

  v99 = sub_2394EDF14();
  return sub_2394EB1E4(v99, v100);
}

uint64_t sub_2394EB1E4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    *(a1 + 2) = *(a2 + 1);
  }

  v5 = a2[4];
  *(a1 + 4) = v5;
  if (v5 == 1)
  {
    *(a1 + 6) = *(a2 + 3);
  }

  v6 = a2[8];
  *(a1 + 8) = v6;
  if (v6 == 1)
  {
    *(a1 + 9) = a2[9];
  }

  v7 = a2[16];
  *(a1 + 16) = v7;
  if (v7 == 1)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v8 = a2[40];
  *(a1 + 40) = v8;
  if (v8 == 1)
  {
    *(a1 + 48) = *(a2 + 3);
  }

  v9 = a2[64];
  *(a1 + 64) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v10;
  }

  v11 = a2[96];
  *(a1 + 96) = v11;
  if (v11 == 1)
  {
    v12 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v12;
  }

  v13 = a2[128];
  *(a1 + 128) = v13;
  if (v13 == 1)
  {
    *(a1 + 136) = *(a2 + 136);
  }

  v14 = a2[152];
  *(a1 + 152) = v14;
  if (v14 == 1)
  {
    *(a1 + 160) = *(a2 + 10);
  }

  v15 = a2[176];
  *(a1 + 176) = v15;
  if (v15 == 1)
  {
    v16 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v16;
  }

  v17 = a2[216];
  *(a1 + 216) = v17;
  if (v17 == 1)
  {
    *(a1 + 224) = *(a2 + 14);
  }

  v18 = a2[240];
  *(a1 + 240) = v18;
  if (v18 == 1)
  {
    *(a1 + 242) = *(a2 + 242);
  }

  v19 = a2[248];
  *(a1 + 248) = v19;
  if (v19 == 1)
  {
    *(a1 + 256) = *(a2 + 16);
  }

  v20 = a2[272];
  *(a1 + 272) = v20;
  if (v20 == 1)
  {
    v21 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v21;
  }

  v22 = a2[312];
  *(a1 + 312) = v22;
  if (v22 == 1)
  {
    *(a1 + 320) = *(a2 + 20);
  }

  v23 = a2[336];
  *(a1 + 336) = v23;
  if (v23 == 1)
  {
    *(a1 + 344) = *(a2 + 344);
  }

  v24 = a2[360];
  *(a1 + 360) = v24;
  if (v24 == 1)
  {
    *(a1 + 368) = *(a2 + 23);
  }

  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  v25 = a2[384];
  *(a1 + 384) = v25;
  if (v25 == 1)
  {
    *(a1 + 385) = *(a2 + 385);
  }

  v26 = a2[408];
  *(a1 + 408) = v26;
  if (v26 == 1)
  {
    *(a1 + 416) = *(a2 + 52);
  }

  v27 = a2[424];
  *(a1 + 424) = v27;
  if (v27 == 1)
  {
    *(a1 + 432) = *(a2 + 27);
  }

  v28 = a2[448];
  *(a1 + 448) = v28;
  if (v28 == 1)
  {
    *(a1 + 456) = *(a2 + 456);
  }

  v29 = a2[472];
  *(a1 + 472) = v29;
  if (v29 == 1)
  {
    *(a1 + 480) = *(a2 + 30);
  }

  v30 = a2[496];
  *(a1 + 496) = v30;
  if (v30 == 1)
  {
    *(a1 + 504) = *(a2 + 504);
  }

  v31 = a2[520];
  *(a1 + 520) = v31;
  if (v31 == 1)
  {
    *(a1 + 528) = *(a2 + 66);
  }

  v32 = a2[536];
  *(a1 + 536) = v32;
  if (v32 == 1)
  {
    *(a1 + 538) = *(a2 + 269);
  }

  v33 = a2[540];
  *(a1 + 540) = v33;
  if (v33 == 1)
  {
    *(a1 + 542) = *(a2 + 271);
  }

  v34 = a2[544];
  *(a1 + 544) = v34;
  if (v34 == 1)
  {
    *(a1 + 545) = a2[545];
  }

  v35 = a2[546];
  *(a1 + 546) = v35;
  if (v35 == 1)
  {
    *(a1 + 547) = a2[547];
  }

  v36 = a2[548];
  *(a1 + 548) = v36;
  if (v36 == 1)
  {
    *(a1 + 549) = a2[549];
  }

  *(a1 + 552) = *(a2 + 552);
  v37 = a2[568];
  *(a1 + 568) = v37;
  if (v37 == 1)
  {
    *(a1 + 569) = a2[569];
  }

  v38 = a2[570];
  *(a1 + 570) = v38;
  if (v38 == 1)
  {
    *(a1 + 572) = *(a2 + 286);
  }

  v39 = a2[574];
  *(a1 + 574) = v39;
  if (v39 == 1)
  {
    *(a1 + 575) = a2[575];
  }

  v40 = a2[576];
  *(a1 + 576) = v40;
  if (v40 == 1)
  {
    *(a1 + 577) = a2[577];
  }

  *(a1 + 584) = *(a2 + 73);
  v41 = a2[592];
  *(a1 + 592) = v41;
  if (v41 == 1)
  {
    *(a1 + 593) = a2[593];
  }

  v42 = a2[594];
  *(a1 + 594) = v42;
  if (v42 == 1)
  {
    *(a1 + 595) = a2[595];
  }

  v43 = a2[596];
  *(a1 + 596) = v43;
  if (v43 == 1)
  {
    *(a1 + 597) = a2[597];
  }

  v44 = a2[600];
  *(a1 + 600) = v44;
  if (v44 == 1)
  {
    *(a1 + 608) = *(a2 + 76);
  }

  v45 = a2[616];
  *(a1 + 616) = v45;
  if (v45 == 1)
  {
    *(a1 + 624) = *(a2 + 78);
  }

  v46 = a2[632];
  *(a1 + 632) = v46;
  if (v46 == 1)
  {
    *(a1 + 640) = *(a2 + 40);
  }

  v47 = a2[656];
  *(a1 + 656) = v47;
  if (v47 == 1)
  {
    *(a1 + 657) = a2[657];
  }

  v48 = a2[660];
  *(a1 + 660) = v48;
  if (v48 == 1)
  {
    *(a1 + 664) = *(a2 + 166);
  }

  v49 = *(a2 + 668);
  *(a1 + 684) = *(a2 + 171);
  *(a1 + 668) = v49;
  v50 = a2[688];
  *(a1 + 688) = v50;
  if (v50 == 1)
  {
    *(a1 + 689) = a2[689];
  }

  return a1;
}

double sub_2394EB684(uint64_t a1)
{
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  *(a1 + 384) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 632) = 0;
  result = 0.0;
  *(a1 + 672) = 0u;
  return result;
}

_BYTE *sub_2394EB70C(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 8;
}

unint64_t sub_2394EB72C(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + 32 * a2;
}

unint64_t sub_2394EB754(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + 40 * a2;
}

uint64_t sub_2394EB780(uint64_t a1, uint64_t a2)
{
  v4 = 12 * a2;
  sub_2393C56C0(a1, 12 * a2);
  v5 = *a1;
  if (a2 && v5)
  {
    memset(v5, 255, v4);
    v5 = *a1;
  }

  if (v5)
  {
    *(a1 + 8) = a2;
  }

  return a1;
}

uint64_t sub_2394EB7EC(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  v5 = sub_2394EB9C0(a1, a2, a3);
  v6 = *a3;
  v7 = sub_2393D9044(9u);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315650;
      v11 = sub_2394F2C88(v4);
      v12 = 2080;
      v13 = sub_2393C9138();
      v14 = 2080;
      v15 = sub_2394F2C88(v5);
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Going from commissioning step '%s' with lastErr = '%s' -> '%s'", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(v4);
      sub_2393C9138();
      sub_2394F2C88(v5);
      sub_2393D5320(9, 2, "Going from commissioning step '%s' with lastErr = '%s' -> '%s'");
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v11 = sub_2394F2C88(v4);
      v12 = 2080;
      v13 = sub_2394F2C88(v5);
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Commissioning stage next step: '%s' -> '%s'", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(v4);
      sub_2394F2C88(v5);
      sub_2393D5320(9, 2, "Commissioning stage next step: '%s' -> '%s'");
    }
  }

  return v5;
}

uint64_t sub_2394EB9C0(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 40;
  if ((*(a1 + 705) & 1) != 0 || *a3)
  {
    return v3;
  }

  while (2)
  {
    v3 = 2;
    switch(a2)
    {
      case 1:
        return v3;
      case 2:
        if (!*(a1 + 1888))
        {
          return 3;
        }

        result = sub_2394EB7EC(a1, 19, a3);
        break;
      case 3:
        return 4;
      case 4:
        return 39;
      case 5:
        a2 = 6;
        if (*(a1 + 1905) == 1)
        {
          a2 = 6;
          v3 = 6;
          if (*(a1 + 24))
          {
            return v3;
          }
        }

        continue;
      case 6:
        a2 = 7;
        if (*(a1 + 1968) == 1)
        {
          a2 = 7;
          v3 = 7;
          if (*(a1 + 48))
          {
            return v3;
          }
        }

        continue;
      case 7:
        a2 = 8;
        if (*(a1 + 1906) == 1)
        {
          a2 = 8;
          v3 = 8;
          if (*(a1 + 72))
          {
            return v3;
          }
        }

        continue;
      case 8:
        return 9;
      case 9:
        return 10;
      case 10:
        return 11;
      case 11:
        return 12;
      case 12:
        return 13;
      case 13:
      case 14:
        return 15;
      case 15:
        return 16;
      case 16:
        return 17;
      case 17:
        return 18;
      case 18:
        return 19;
      case 19:
        a2 = 20;
        if (*(a1 + 1907) == 1)
        {
          a2 = 20;
          v3 = 20;
          if (*(a1 + 104))
          {
            return v3;
          }
        }

        continue;
      case 20:
        a2 = 22;
        if (*(a1 + 1969) != 1)
        {
          continue;
        }

        if (*(a1 + 608) == 1)
        {
          v3 = 21;
          if (*(a1 + 624) == 1)
          {
            if (*(a1 + 640))
            {
              return 22;
            }

            else
            {
              return 21;
            }
          }
        }

        else
        {
          return 21;
        }

        return v3;
      case 21:
        return 22;
      case 22:
        if (*(a1 + 1856) != 1)
        {
          goto LABEL_62;
        }

        if (sub_2394EC1A4(a1, a2))
        {
          return 34;
        }

        else
        {
          v13 = sub_2393D9044(9u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "No NetworkScan enabled or WiFi/Thread endpoint not specified, skipping ScanNetworks", &v14, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9, 2, "No NetworkScan enabled or WiFi/Thread endpoint not specified, skipping ScanNetworks");
          }

          return sub_2394EBE74(a1, 0, a3);
        }

      case 23:
        return 25;
      case 24:
        return 26;
      case 25:
        return 27;
      case 26:
        return 28;
      case 27:
        LOBYTE(v14) = *(a1 + 604);
        if (v14 & 1) != 0 && (BYTE1(v14) = *(a1 + 605), (sub_238DE36D8(&v14, a2)->super.isa))
        {
          sub_2394EC240(a1, a2);
          return 40;
        }

        else
        {
          sub_2394EC240(a1, a2);
          return 29;
        }

      case 28:
LABEL_62:
        sub_2394EC240(a1, a2);
        LOBYTE(v14) = *(a1 + 604);
        v3 = 29;
        if (v14 != 1)
        {
          return v3;
        }

        BYTE1(v14) = *(a1 + 605);
        v10 = (sub_238DE36D8(&v14, v12)->super.isa & 1) == 0;
        v11 = 40;
        goto LABEL_64;
      case 29:
        (*(**(a1 + 720) + 48))(&v14);
        if (v14)
        {
          (*(*v15 + 32))(v15);
          (*(**(a1 + 720) + 48))(&v14);
          v8 = sub_238DE36B8(&v14, v7);
          v9 = *(sub_239495304(*v8) + 112);
          if (v14 == 1)
          {
            (*(*v15 + 32))(v15);
          }

          v3 = 30;
          if (v9 == 5)
          {
            v10 = *(a1 + 1900) == 0;
            v11 = 41;
LABEL_64:
            if (!v10)
            {
              return v11;
            }
          }
        }

        else
        {
          return 30;
        }

        return v3;
      case 30:
        return 33;
      case 31:
        return 32;
      case 32:
      case 41:
        return 40;
      case 33:
        return 31;
      case 34:
        return 35;
      case 35:
      case 37:
      case 38:

        return sub_2394EBE74(a1, 0, a3);
      case 36:
        if (*(a1 + 1872))
        {
          return 38;
        }

        else
        {
          return 37;
        }

      case 39:
        if (*(a1 + 1904))
        {
          return 5;
        }

        else
        {
          return 9;
        }

      default:
        return 0;
    }

    return result;
  }
}

uint64_t sub_2394EBE74(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_2394EC11C(a1, a2))
  {
    if (*(a1 + 1872))
    {
      v5 = 24;
    }

    else
    {
      v5 = 23;
    }

    if (*(a1 + 1872))
    {
      v6 = 23;
    }

    else
    {
      v6 = 24;
    }

    if (*(a1 + 704) == 1)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else if (*(a1 + 184) != 1 || *(a1 + 1872) == -1)
  {
    if (*(a1 + 256) != 1 || *(a1 + 1876) == -1)
    {
      v8 = sub_2393D9044(9u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Required network information not provided in commissioning parameters", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Required network information not provided in commissioning parameters");
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 184))
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        if (*(a1 + 256))
        {
          v10 = "yes";
        }

        else
        {
          v10 = "no";
        }

        *buf = 136315394;
        v19 = v9;
        v20 = 2080;
        v21 = v10;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Parameters supplied: wifi (%s) thread (%s)", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        if (*(a1 + 184))
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        if (*(a1 + 256))
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        sub_2393D5320(9, 1, "Parameters supplied: wifi (%s) thread (%s)", v11, v12);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 1872) == -1)
        {
          v13 = "no";
        }

        else
        {
          v13 = "yes";
        }

        if (*(a1 + 1876) == -1)
        {
          v14 = "no";
        }

        else
        {
          v14 = "yes";
        }

        *buf = 136315394;
        v19 = v13;
        v20 = 2080;
        v21 = v14;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Device supports: wifi (%s) thread(%s)", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        if (*(a1 + 1872) == -1)
        {
          v15 = "no";
        }

        else
        {
          v15 = "yes";
        }

        if (*(a1 + 1876) == -1)
        {
          v16 = "no";
        }

        else
        {
          v16 = "yes";
        }

        sub_2393D5320(9, 1, "Device supports: wifi (%s) thread(%s)", v15, v16);
      }

      *a3 = 0x1300000002FLL;
      a3[1] = "src/controller/AutoCommissioner.cpp";
      return 40;
    }

    else
    {
      return 24;
    }
  }

  else
  {
    return 23;
  }
}

BOOL sub_2394EC11C(uint64_t a1, uint64_t a2)
{
  v4[0] = *(a1 + 556);
  if (v4[0] == 1 && (v4[1] = *(a1 + 557), (sub_238DE36D8(v4, a2)->super.isa & 1) != 0) && *(a1 + 184) == 1 && *(a1 + 1872) != -1 && *(a1 + 256) == 1)
  {
    return *(a1 + 1876) != -1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394EC1A4(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 600);
  if (v5[0])
  {
    v5[1] = *(a1 + 601);
    if ((sub_238DE36D8(v5, a2)->super.isa & 1) != 0 && *(a1 + 1872) != -1)
    {
      return 1;
    }
  }

  v4[0] = *(a1 + 602);
  if (v4[0] == 1 && (v4[1] = *(a1 + 603), (sub_238DE36D8(v4, a2)->super.isa & 1) != 0))
  {
    return *(a1 + 1876) != -1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394EC240(_BOOL8 result, uint64_t a2)
{
  if (*(result + 12) == 1)
  {
    v15 = v2;
    v16 = v3;
    v4 = result;
    v5 = *(result + 720);
    if (v5)
    {
      v6 = *(result + 712);
      v7 = *(v6 + 4368);
      v11[0] = 1;
      v12 = *(result + 14);
      isa_low = LOWORD(sub_238E0A934(v11, a2)->super.isa);
      sub_2394EC31C(v4, *(v4 + 720), 3, v9);
      v13[0] = v9[0];
      if (v9[0] == 1)
      {
        v14 = v10;
      }

      return sub_239500688(v6, v5, v7, isa_low, v13, sub_2394EC510, sub_2394EC5DC, 1);
    }
  }

  return result;
}
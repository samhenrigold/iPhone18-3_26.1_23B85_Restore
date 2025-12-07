void sub_1001F09E0(uint64_t result, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed with status %!", result);
      v4 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a2)
  {
    v6 = *a3 + *(a3 + 12);

    a2(0, v6);
  }
}

unsigned __int8 *sub_1001F0A90(uint64_t a1, unsigned __int8 **a2, _WORD *a3, int a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return v4;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 18);
  v8 = (v6 + v7);
  if (*v4)
  {
    v9 = v4 > v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v13 = *(a1 + 8);
  v14 = sub_1001F16B8(v13, *(a1 + 16));
  if (v14 != 1)
  {
    if (*v13 != 68)
    {
      if (v4 >= v8)
      {
        return 0;
      }

      v22 = v6 + v7 - v4;
      v8 = v4;
      while (*v8 - 48 <= 9)
      {
        ++v8;
        if (!--v22)
        {
          v8 = (v6 + v7);
          break;
        }
      }
    }

    v17 = v8;
    if (v8 != v4)
    {
      goto LABEL_40;
    }

    return 0;
  }

  v15 = *(v5 + 21);
  if (v4 >= v8)
  {
    v17 = v4;
    if (*(v5 + 21))
    {
      goto LABEL_44;
    }

LABEL_40:
    if (a4)
    {
      *v17 = 0;
    }

    *a2 = v17 + 1;
    if (a3)
    {
      *a3 = v17 - v4;
    }

    return v4;
  }

  v16 = 0;
  v17 = (v6 + v7);
  v18 = v6 + v7 - v4;
  v19 = v4;
  do
  {
    if (*v19 == 34)
    {
      v15 ^= 1u;
      *(v5 + 21) = v15;
    }

    if ((v15 & 1) == 0)
    {
      v20 = *v19;
      if (v20 > 0x2B)
      {
        if (v20 == 44)
        {
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        else if (v20 == 59)
        {
          goto LABEL_27;
        }
      }

      else if (v20 == 40)
      {
        ++v16;
      }

      else if (v20 == 41)
      {
        v21 = __OFSUB__(v16--, 1);
        if (v16 < 0 != v21)
        {
LABEL_27:
          v17 = v19;
          goto LABEL_40;
        }
      }
    }

    ++v19;
    --v18;
  }

  while (v18);
  if ((v15 & 1) == 0 && !v16)
  {
    goto LABEL_40;
  }

LABEL_44:
  if (sub_10000C240())
  {
    sub_10000AF54("Unexpected end of parameter!\n");
    v23 = sub_10000C050(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v4 = 0;
  *a2 = v8;
  return v4;
}

uint64_t sub_1001F0C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v38 = 0;
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 20) == 5)
  {
    *(a1 + 18) = 0;
  }

  v6 = sub_1001F110C(a1, a2, v3, &v38);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v37 = v3;
  while (1)
  {
    v8 = *(a1 + 20);
    if (v8 != 3)
    {
      if (v8 == 1)
      {
        if (v6 != 65)
        {
          if (v6 == 84)
          {
            if ((*(a1 + 21) & 1) == 0)
            {
              *(a1 + 20) = 3;
            }
          }

          else if ((*(a1 + 21) & 1) == 0)
          {
            *(a1 + 18) = 0;
          }
        }
      }

      else if (!*(a1 + 20) && v6 == 65 && (*(a1 + 21) & 1) == 0)
      {
        *(a1 + 20) = 1;
      }

      goto LABEL_76;
    }

    if (v6 != 13 || (*(a1 + 21) & 1) != 0)
    {
      break;
    }

    *(a1 + 20) = 5;
    v11 = *(a1 + 18);
    if (!*(a1 + 18))
    {
      goto LABEL_75;
    }

    v12 = 0;
    v13 = *(a1 + 8);
    v39 = 0;
    while (1)
    {
      v14 = *(v13 + v12);
      v15 = v14 > 0x3F;
      v16 = (1 << v14) & 0xA800000000000000;
      if (!v15 && v16 != 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LOWORD(v12) = v11;
        break;
      }
    }

    v18 = 0;
    v19 = 0;
    v20 = v12;
    while (1)
    {
      memset(buf, 0, sizeof(buf));
      v42 = a1;
      *buf = 2;
      v21 = v20 >= v19 ? v20 - v19 : 0;
      if (sub_1001F16B8((v13 + v19), v21) == 1)
      {
        break;
      }

      v27 = *(v13 + v19);
      if (v27 == 38)
      {
        v22 = 2;
        goto LABEL_58;
      }

      if (v27 != 59)
      {
        if (v27 == 83 && (v28 = v18 + 1, v18 + 1 < v11))
        {
          v22 = 1;
          do
          {
            if (*(v13 + v28) - 48 > 9)
            {
              break;
            }

            v28 = v18 + ++v22;
          }

          while (v28 < v11);
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_58;
      }

      ++v19;
LABEL_70:
      v18 = v19;
      if (v19 >= v11)
      {
        goto LABEL_75;
      }
    }

    v22 = 0;
    if (v18 < v11)
    {
      v23 = v18;
      do
      {
        v24 = *(v13 + v23);
        v15 = v24 > 0x3F;
        v25 = (1 << v24) & 0xA800000000000000;
        if (!v15 && v25 != 0)
        {
          break;
        }

        v23 = v18 + ++v22;
      }

      while (v23 < v11);
    }

LABEL_58:
    v29 = sub_100007618(v22 + 1, 0x7D15F29AuLL);
    *&buf[8] = v29;
    if (v29)
    {
      *&buf[16] = v22;
      memmove(v29, (v13 + v19), v22);
      *(*&buf[8] + v22) = 0;
      v30 = v22 + v19;
      v31 = (v22 + v19);
      if (v31 < v11)
      {
        v32 = *(v13 + (v22 + v19));
        if (v32 == 61)
        {
          v33 = v31 + 1;
          if (v33 < v11 && *(v13 + v33) == 63)
          {
            *buf = 0;
            v30 += 2;
          }

          else
          {
LABEL_66:
            ++v30;
          }
        }

        else if (v32 == 63)
        {
          *buf = 1;
          goto LABEL_66;
        }
      }

      *&buf[24] = v13 + v30;
      v40 = *&buf[24];
        ;
      }

      v19 = v40 - v13;
      (*a1)(buf);
      sub_10000C1E8(*&buf[8]);
      *&buf[16] = 0;
      goto LABEL_70;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Parse command failed - %!, continuing", 106);
      v34 = sub_10000C050(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = sub_10000C0FC();
        *buf = 136446466;
        *&buf[4] = v35;
        *&buf[12] = 1024;
        *&buf[14] = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

LABEL_75:
    *(a1 + 18) = 0;
    v3 = v37;
LABEL_76:
    v6 = sub_1001F110C(a1, a2, v3, &v38);
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v9 = *(a1 + 18);
  if (v9 < *(a1 + 16))
  {
    v10 = *(a1 + 8);
    *(a1 + 18) = v9 + 1;
    *(v10 + v9) = v6;
    goto LABEL_76;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Receive error - %!\n", 104);
    v36 = sub_10000C050(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(a1 + 18) = 0;
  return 104;
}

uint64_t sub_1001F110C(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v5 = *a4;
  if (v5 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a4;
  }

  while (1)
  {
    if (v6 == v5)
    {
      return 0x7FFFFFFFLL;
    }

    if (*(a2 + v5) != 32)
    {
      break;
    }

    *a4 = ++v5;
    if (*(a1 + 21))
    {
      return 32;
    }
  }

  *a4 = v5 + 1;
  result = *(a2 + v5);
  if (result == 34)
  {
    v8 = *(a1 + 21);
    if (*(a1 + 20) == 3)
    {
      *(a1 + 21) = v8 ^ 1;
      if (!v8)
      {
        return 34;
      }
    }

    else if (v8)
    {
      return 34;
    }
  }

  else if (*(a1 + 21))
  {
    return result;
  }

  if ((result - 97) >= 0x1A)
  {
    return result;
  }

  else
  {
    return (result - 32);
  }
}

uint64_t sub_1001F11B4(void (**a1)(void **), uint64_t a2, unsigned int a3)
{
  v31 = 0;
  if (*(a1 + 20) == 5)
  {
    *(a1 + 18) = 0;
  }

  v6 = sub_1001F110C(a1, a2, a3, &v31);
  if (v6 != 0x7FFFFFFF)
  {
    v8 = v6;
    while (2)
    {
      for (i = *(a1 + 20); i == 3; i = 0)
      {
        if (v8 == 13)
        {
          v10 = *(a1 + 9);
          if ((*(a1 + 21) & 1) == 0)
          {
            if (*(a1 + 9))
            {
              *(a1 + 20) = 4;
              goto LABEL_44;
            }

LABEL_35:
            *(a1 + 20) = 2;
            goto LABEL_44;
          }
        }

        else
        {
          v10 = *(a1 + 9);
        }

        if (v10 < *(a1 + 8))
        {
          v15 = a1[1];
          *(a1 + 9) = v10 + 1;
          *(v15 + v10) = v8;
          goto LABEL_44;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Receive overflow - discarding (buf length %d)\n", *(a1 + 9));
          v11 = sub_10000C050(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = sub_10000C0FC();
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v12;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        *(a1 + 18) = 0;
      }

      if (i != 4)
      {
        if (i != 2)
        {
          if (i || v8 != 13 || (*(a1 + 21) & 1) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        if (v8 != 10)
        {
          if (v8 != 13 && (*(a1 + 21) & 1) == 0)
          {
            *(a1 + 20) = 0;
          }

          goto LABEL_44;
        }

        if (*(a1 + 21))
        {
          goto LABEL_44;
        }

LABEL_43:
        *(a1 + 20) = 3;
        goto LABEL_44;
      }

      if (v8 != 10)
      {
        if (v8 == 13)
        {
          v13 = *(a1 + 9);
          if ((*(a1 + 21) & 1) == 0)
          {
            if (v13 < *(a1 + 8))
            {
              v14 = a1[1];
              *(a1 + 9) = v13 + 1;
              *(v14 + v13) = 13;
LABEL_44:
              v8 = sub_1001F110C(a1, a2, a3, &v31);
              if (v8 != 0x7FFFFFFF)
              {
                continue;
              }

              return 0;
            }

            goto LABEL_68;
          }
        }

        else
        {
          LODWORD(v13) = *(a1 + 9);
        }

LABEL_41:
        if (v13 + 2 <= *(a1 + 8))
        {
          v16 = a1[1];
          *(a1 + 9) = v13 + 1;
          *(v16 + v13) = 13;
          v17 = a1[1];
          v18 = *(a1 + 9);
          *(a1 + 9) = v18 + 1;
          *(v17 + v18) = v8;
          goto LABEL_43;
        }

LABEL_68:
        if (sub_10000C240())
        {
          sub_10000AF54("Receive error - %!\n", 104);
          v30 = sub_10000C050(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *(a1 + 18) = 0;
        return 104;
      }

      break;
    }

    v13 = *(a1 + 9);
    if (*(a1 + 21))
    {
      goto LABEL_41;
    }

    *(a1 + 20) = 5;
    if (v13)
    {
      v19 = 0;
      v20 = a1[1];
      memset(buf + 4, 0, 20);
      buf[4] = a1;
      LODWORD(buf[0]) = 3;
      while (1)
      {
        v21 = v20[v19];
        if (v21 == 58 || v21 == 61)
        {
          break;
        }

        if (v13 == ++v19)
        {
          LOWORD(v19) = v13;
          break;
        }
      }

      if (sub_1001F16B8(v20, v19) == 1)
      {
        v22 = 0;
        while (1)
        {
          v23 = v20[v22];
          if (v23 == 58 || v23 == 61)
          {
            break;
          }

          if (v13 == ++v22)
          {
            goto LABEL_60;
          }
        }

        v24 = v13 == v22;
        LOWORD(v13) = v22;
        if (!v24)
        {
          goto LABEL_61;
        }

LABEL_60:
        v25 = 134;
        goto LABEL_64;
      }

LABEL_61:
      v26 = sub_100007618(v13 + 1, 0x24D26E4CuLL);
      buf[1] = v26;
      if (!v26)
      {
        v25 = 106;
LABEL_64:
        if (sub_10000C240())
        {
          sub_10000AF54("Parse response failed - %!, continuing", v25);
          v28 = sub_10000C050(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = sub_10000C0FC();
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v29;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        goto LABEL_67;
      }

      v27 = v26;
      LOWORD(buf[2]) = v13;
      memmove(v26, v20, v13);
      v27[v13] = 0;
      buf[3] = &v20[(v13 + 1)];
      (*a1)(buf);
      sub_10000C1E8(buf[1]);
    }

LABEL_67:
    *(a1 + 18) = 0;
    goto LABEL_44;
  }

  return 0;
}

void sub_1001F1660(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a1)
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000D660C();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 18) = 0;
}

uint64_t sub_1001F16B8(unsigned __int8 *__s1, unsigned int a2)
{
  if (!qword_100B5CD28)
  {
    return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
  }

  v4 = *qword_100B5CD28;
  if (!*qword_100B5CD28)
  {
    return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
  }

  for (i = (qword_100B5CD28 + 16); ; i += 2)
  {
    v6 = *(i - 8);
    if (v6 <= a2 && !memcmp(__s1, v4, v6))
    {
      break;
    }

    v7 = *i;
    v4 = v7;
    if (!v7)
    {
      return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
    }
  }

  return *(i - 1);
}

uint64_t sub_1001F1758(int a1, uint64_t *a2)
{
  if (!dword_100BCE234)
  {
    qword_100B5CD40 = sub_1001BBBD8(8uLL, 0x100004000313F17uLL);
    if (!qword_100B5CD40)
    {
      return 106;
    }
  }

  v7 = 4;
  v8 = 0;
  v9 = 0;
  v6 = &unk_100AE6450;
  v8 = *a2;
  LOWORD(v9) = *(a2 + 4);
  if (a1)
  {
    byte_100B5CD30 = 1;
    word_100B5CD32 = 2;
    dword_100B5CD38 = a1;
  }

  else
  {
    LOWORD(v7) = 3;
  }

  v4 = sub_1002F7E1C(&v6, (qword_100B5CD40 + 4));
  if (v4)
  {
    *(qword_100B5CD40 + 4) = 0;
    sub_1001F1864();
  }

  else
  {
    sub_100244814(0x80000);
    dword_100BCE234 |= 1u;
  }

  return v4;
}

void sub_1001F1864()
{
  if (!*qword_100B5CD40 && !*(qword_100B5CD40 + 4))
  {
    sub_10000C1E8(qword_100B5CD40);
    qword_100B5CD40 = 0;
    dword_100BCE234 = 0;
  }
}

uint64_t sub_1001F18AC()
{
  if ((dword_100BCE234 & 1) == 0)
  {
    return 103;
  }

  sub_1002F8018(*(qword_100B5CD40 + 4));
  sub_1002448C8(0x80000);
  *(qword_100B5CD40 + 4) = 0;
  dword_100BCE234 &= 2u;
  sub_1001F1864();
  return 0;
}

uint64_t sub_1001F1914(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (dword_100BCE238)
  {
LABEL_2:
    v17 = qword_100B5CD48;
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        break;
      }

      if (*(v17 + 80) == a1)
      {
        return 119;
      }
    }

    v21 = a7;
    v22 = sub_1001BBBD8(0x58uLL, 0x10A0040A89A59B5uLL);
    if (v22)
    {
      v23 = a8;
      v18 = 0;
      v24 = *qword_100B5CD48;
      *qword_100B5CD48 = v22;
      v22[40] = a1;
      *v22 = v24;
      *(v22 + 1) = a2;
      *(v22 + 2) = a3;
      *(v22 + 3) = a4;
      *(v22 + 4) = a5;
      *(v22 + 5) = a6;
      *(v22 + 6) = v21;
      *(v22 + 7) = v23;
      *(v22 + 8) = a9;
      *(v22 + 9) = a10;
      return v18;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory space trying to allocate profile.");
      v25 = sub_10000C050(2u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  v19 = a7;
  qword_100B5CD48 = sub_1001BBBD8(0x10uLL, 0x20040A4A59CD2uLL);
  if (!qword_100B5CD48)
  {
    return 104;
  }

  v20 = sub_1002967FC(23, sub_1001F328C);
  if (!v20)
  {
    v20 = sub_1002967FC(27, sub_1001F3558);
    if (!v20)
    {
      dword_100BCE238 = 1;
      a7 = v19;
      goto LABEL_2;
    }
  }

  v18 = v20;
  if (qword_100B5CD48)
  {
    sub_10000C1E8(qword_100B5CD48);
    qword_100B5CD48 = 0;
  }

  return v18;
}

uint64_t sub_1001F1AD4(int a1)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v1 = qword_100B5CD48;
  do
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      return 120;
    }
  }

  while (*(v1 + 40) != a1);
  *v2 = *v1;
  sub_10000C1E8(v1);
  if (*qword_100B5CD48)
  {
    return 0;
  }

  if (!dword_100BCE238)
  {
    return 408;
  }

  result = sub_1002969F8(23);
  if (!result)
  {
    result = sub_1002969F8(27);
    if (!result)
    {
      while (1)
      {
        v4 = qword_100B5CD48;
        if (!*(qword_100B5CD48 + 8))
        {
          break;
        }

        sub_1001F21B8(*(qword_100B5CD48 + 8));
      }

      while (1)
      {
        v5 = *v4;
        if (!*v4)
        {
          break;
        }

        *v4 = *v5;
        sub_10000C1E8(v5);
        v4 = qword_100B5CD48;
      }

      sub_10000C1E8(v4);
      result = 0;
      qword_100B5CD48 = 0;
      dword_100BCE238 = 0;
    }
  }

  return result;
}

uint64_t sub_1001F1BBC(int *a1, int a2, uint64_t a3, char a4)
{
  v16 = 0;
  if (!dword_100BCE238)
  {
    return 408;
  }

  v15[0] = 0;
  v7 = qword_100B5CD48;
  do
  {
    v7 = *v7;
    if (!v7)
    {
      return 120;
    }
  }

  while (*(v7 + 80) != a2);
  v8 = qword_100B5CD48 + 8;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (*a1 == *(v8 + 8) && *(a1 + 2) == *(v8 + 12))
    {
      ++*(v8 + 14);
      *(v7 + 82) = *(v8 + 24);
      v15[1] = (v7 + 80);
      LOWORD(v15[0]) = 2;
      sub_1000228C0(sub_1001F1D9C, v15, 0);
      return 0;
    }
  }

  v10 = sub_1001F1EA8(&v16);
  if (!v10)
  {
    v10 = sub_10028F454(sub_1001F1F54, sub_1001F2088, sub_1001F2118, 23, a1, a3, v16 + 12, &unk_1008A36C0);
    if (v10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("L2CAP connection failed %!", v10, v15[0]);
        v11 = sub_10000C050(2u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1001F21B8(v16);
    }

    else
    {
      v12 = v16;
      *(v7 + 82) = *(v16 + 12);
      v13 = *a1;
      *(v12 + 6) = *(a1 + 2);
      *(v12 + 2) = v13;
      *(v12 + 7) = 1;
      *(v12 + 17) = 0;
      *(v12 + 18) = a4;
    }
  }

  return v10;
}

void sub_1001F1D9C(uint64_t a1)
{
  v7 = 0;
  v1 = **(a1 + 8);
  v2 = qword_100B5CD48;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 80) == v1)
    {
      v3 = sub_1001F30E4(&v7, *(v2 + 82));
      if (v3)
      {
        v4 = v3;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v4, *(v2 + 82));
          v5 = sub_10000C050(2u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        (*(v2 + 16))(v7 + 8, *(v7 + 28), *(v7 + 26), 0);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", 120, v1);
    v6 = sub_10000C050(2u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F1EA8(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = sub_1001BBBD8(0x88uLL, 0x10300408C479AEAuLL);
  if (v2)
  {
    v3 = v2;
    result = 0;
    v5 = qword_100B5CD48;
    *v3 = *(qword_100B5CD48 + 8);
    *(v5 + 8) = v3;
    *a1 = v3;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory trying to allocate new AVCTP connetion record");
      v6 = sub_10000C050(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

void sub_1001F1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  if (!sub_1001F30E4(&v14, a1))
  {
    v7 = v14;
    v12 = *(v14 + 8);
    v13 = *(v14 + 12);
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("L2CAP Connection failed: %!", a4);
        v8 = sub_10000C050(2u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v9 = v14;
      if (*(v14 + 80))
      {
        sub_10029104C(*(v14 + 80), 436);
        v9 = v14;
      }

      sub_1001F21B8(v9);
    }

    else
    {
      *(v14 + 26) = a3;
      *(v7 + 28) = a2;
      *(v7 + 16) = 1;
      if ((*(v7 + 17) & 1) == 0 && *(v7 + 18) == 1)
      {
        sub_1001F226C(&v12, 4366);
      }
    }

    v10 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v11 = *v10;
        *(v10 + 41) = 0;
        (v10[2])(&v12, a2, a3, a4);
        v10 = v11;
      }

      while (v11);
    }
  }
}

void sub_1001F2088(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (!sub_1001F30E4(&v8, a1))
  {
    v3 = v8;
    *(v8 + 28) = 0;
    *(v3 + 24) = 0;
    if (!*(v3 + 80))
    {
      v6 = *(v3 + 8);
      v7 = *(v3 + 12);
      sub_1001F21B8(v3);
      v4 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v5 = *v4;
          (v4[3])(&v6, a2);
          v4 = v5;
        }

        while (v5);
      }
    }
  }
}

void sub_1001F2118(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  if (a3)
  {
    v3 = a3;
    if (!sub_1001F30E4(&v6, a1))
    {
      sub_1001F375C((v6 + 24), v6 + 8, a2, v3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Zero length packet received");
    v5 = sub_10000C050(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1001F21B8(void *a1)
{
  v1 = (qword_100B5CD48 + 8);
  while (1)
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (v1 == a1)
    {
      *v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        sub_10000C1E8(v3);
        v1[4] = 0;
      }

      sub_10000C1E8(v1);
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to free AVCTP connection");
    v4 = sub_10000C050(2u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F226C(uint64_t a1, int a2)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v2 = qword_100B5CD48;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 120;
    }
  }

  while (*(v2 + 80) != a2);
  v3 = qword_100B5CD48 + 8;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (*a1 == *(v3 + 8) && *(a1 + 4) == *(v3 + 12))
    {
      if (*(v3 + 80))
      {
        return 133;
      }

      break;
    }
  }

  v5 = sub_10028F454(sub_1001F23A8, sub_1001F24D0, sub_1001F25A8, 27, a1, &unk_100AE64E0, (v3 + 80), &unk_1008A36C0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP connection failed %!", v5);
      v6 = sub_10000C050(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v5;
}

void sub_1001F23A8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v15 = 0;
  if (!sub_1001F30E4(&v15, a1))
  {
    v7 = v15;
    v13 = *(v15 + 8);
    v14 = *(v15 + 12);
    if (a4)
    {
      *(v15 + 80) = 0;
    }

    else
    {
      *(v15 + 82) = a3;
      *(v7 + 84) = a2;
      *(v7 + 128) = 1;
    }

    v8 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      v9 = a3 - 3;
      do
      {
        v10 = *v8;
        (v8[6])(&v13, a2, v9, a4);
        v8 = v10;
      }

      while (v10);
      v7 = v15;
    }

    if (*(v7 + 16) == 1 && !*(v7 + 24))
    {
      if (*(v7 + 80))
      {
        sub_10029104C(*(v7 + 80), 436);
        v7 = v15;
      }

      v13 = *(v7 + 8);
      v14 = *(v7 + 12);
      sub_1001F21B8(v7);
      v11 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v12 = *v11;
          (v11[3])(&v13, a4);
          v11 = v12;
        }

        while (v12);
      }
    }
  }
}

void sub_1001F24D0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (!sub_1001F30E4(&v10, a1))
  {
    v3 = v10;
    *(v10 + 84) = 0;
    *(v3 + 80) = 0;
    v4 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v5 = *v4;
        (v4[7])(&v8, a2);
        v4 = v5;
      }

      while (v5);
      v3 = v10;
    }

    if (*(v3 + 16) == 1 && !*(v3 + 24))
    {
      v8 = *(v3 + 8);
      v9 = *(v3 + 12);
      sub_1001F21B8(v3);
      v6 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v7 = *v6;
          (v6[3])(&v8, a2);
          v6 = v7;
        }

        while (v7);
      }
    }
  }
}

void sub_1001F25A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  if (a3)
  {
    v3 = a3;
    if (!sub_1001F30E4(&v6, a1))
    {
      sub_1001F375C((v6 + 80), v6 + 8, a2, v3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Zero length packet received");
    v5 = sub_10000C050(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F2648(uint64_t a1, uint64_t a2, char a3)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v3 = a2;
  v4 = qword_100B5CD48 + 8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a1 == *(v4 + 8) && *(a1 + 4) == *(v4 + 12))
    {
      *(v4 + 18) = a3;
      v6 = sub_100290164(sub_1001F1F54, sub_1001F2088, sub_1001F2118, *(v4 + 24), 0, a2, &unk_1008A36C0);
      v7 = v6;
      if (!v6 && (v3 & 1) != 0)
      {
        return 0;
      }

      if (v6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_Accept failed %!", v7);
          v9 = sub_10000C050(2u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1001F21B8(v4);
      return v7;
    }
  }

  if (sub_10000C240())
  {
    v7 = 120;
    sub_10000AF54("Could not find connection %!", 120);
    v8 = sub_10000C050(2u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return v7;
    }

    sub_1000E09C0();
  }

  return 120;
}

uint64_t sub_1001F27C4(uint64_t a1)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v1 = qword_100B5CD48 + 8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 120;
    }
  }

  while (*a1 != *(v1 + 8) || *(a1 + 4) != *(v1 + 12));
  v3 = *(v1 + 14);
  if (!*(v1 + 14))
  {
    return 120;
  }

  if (v3 != 1)
  {
LABEL_15:
    result = 0;
    *(v1 + 14) = v3 - 1;
    return result;
  }

  if (!*(v1 + 80) || (result = sub_10029104C(*(v1 + 80), 436), !result))
  {
    result = sub_10029104C(*(v1 + 24), 436);
    if (!result)
    {
      LOWORD(v3) = *(v1 + 14);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1001F2878(uint64_t a1, int a2, unsigned int a3, int a4, char *a5, signed int a6)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v6 = a3;
  v7 = 101;
  if (a3 <= 0xF && (a4 - 3) >= 0xFFFFFFFE)
  {
    v11 = a2;
    v12 = qword_100B5CD48;
    do
    {
      v12 = *v12;
      if (!v12)
      {
        return 121;
      }
    }

    while (*(v12 + 80) != a2);
    v13 = qword_100B5CD48 + 8;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        return 120;
      }
    }

    while (*a1 != *(v13 + 8) || *(a1 + 4) != *(v13 + 12));
    if (*(v13 + 16) == 1)
    {
      if (*(v13 + 56))
      {
        return 410;
      }

      v16 = a6 + 3;
      v17 = *(v13 + 26);
      if (a6 + 3 <= v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      v19 = v17 - v18;
      if ((v17 - v18) > a6)
      {
        v19 = a6;
      }

      *(v13 + 66) = v19;
      v20 = sub_1000B914C(2u);
      if (v20)
      {
        v21 = v20;
        v22 = sub_100007618(v18, 0x26767032uLL);
        if (v22)
        {
          if (v16 <= v17)
          {
            *v22 = (16 * v6) | (2 * (a4 != 1));
            v30 = 2;
            v31 = 1;
            v23 = v21;
          }

          else
          {
            v23 = v21;
            v24 = 0;
            if (a6)
            {
              LOWORD(v25) = a6;
              do
              {
                if (v24)
                {
                  v26 = -1;
                }

                else
                {
                  v26 = -4;
                }

                v27 = *(v13 + 26) + v26;
                v28 = v25 >= v27;
                v25 = v25 - v27;
                v29 = v25 != 0 && v28;
                if (!v28)
                {
                  LOWORD(v25) = 0;
                }

                ++v24;
              }

              while (v29);
            }

            *v22 = (16 * v6) | (2 * (a4 != 1)) | 4;
            v22[1] = v24;
            v30 = 3;
            v31 = 2;
          }

          v22[v30] = v11;
          v22[v31] = HIBYTE(v11);
          v32 = v22;
          v33 = sub_10001F968(v23, v22, v18, 1u);
          if (v33 || (v33 = sub_10001F968(v23, a5, *(v13 + 66), 2u), v33))
          {
            v7 = v33;
          }

          else
          {
            v7 = sub_1000B7EDC(sub_1001F2AF8, *(v13 + 24), 0, v23, 0);
            if (!v7)
            {
              *(v13 + 70) = v11;
              *(v13 + 68) = v6;
              *(v13 + 69) = a4;
              *(v13 + 56) = a5;
              *(v13 + 64) = a6;
              return v7;
            }
          }

          sub_10000C1E8(v32);
        }

        else
        {
          v7 = 106;
          v23 = v21;
        }

        sub_10000C1E8(v23);
      }

      else
      {
        return 106;
      }
    }

    else
    {
      return 122;
    }
  }

  return v7;
}

void sub_1001F2AF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v9 = 0;
  sub_1000BB9CC(a2);
  if (sub_1001F30E4(&v9, v5))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find connection\n");
      v6 = sub_10000C050(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = qword_100B5CD48;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (*(v7 + 80) == *(v9 + 70))
      {
        v8 = *(v7 + 40);
        goto LABEL_10;
      }
    }

    v8 = 0;
LABEL_10:
    sub_1001F406C((v9 + 24), v8, v9 + 8, a4);
  }
}

uint64_t sub_1001F2BC0(uint64_t a1, int a2, unsigned int a3, int a4, char *a5, signed int a6)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v6 = a3;
  v7 = 101;
  if (a3 <= 0xF && (a4 - 3) >= 0xFFFFFFFE)
  {
    v11 = a2;
    v12 = qword_100B5CD48;
    do
    {
      v12 = *v12;
      if (!v12)
      {
        return 121;
      }
    }

    while (*(v12 + 80) != a2);
    v13 = qword_100B5CD48 + 8;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        return 120;
      }
    }

    while (*a1 != *(v13 + 8) || *(a1 + 4) != *(v13 + 12));
    if (!*(v13 + 80))
    {
      return 121;
    }

    if (*(v13 + 112))
    {
      return 410;
    }

    v16 = a6 + 3;
    v17 = *(v13 + 82);
    if (a6 + 3 <= v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = v17 - v18;
    if ((v17 - v18) > a6)
    {
      v19 = a6;
    }

    *(v13 + 122) = v19;
    v20 = sub_1000B914C(2u);
    if (v20)
    {
      v21 = v20;
      v22 = sub_100007618(v18, 0x2AADEB69uLL);
      if (v22)
      {
        if (v16 <= v17)
        {
          *v22 = (16 * v6) | (2 * (a4 != 1));
          v30 = 2;
          v31 = 1;
          v23 = v21;
        }

        else
        {
          v23 = v21;
          v24 = 0;
          if (a6)
          {
            LOWORD(v25) = a6;
            do
            {
              if (v24)
              {
                v26 = -1;
              }

              else
              {
                v26 = -4;
              }

              v27 = *(v13 + 82) + v26;
              v28 = v25 >= v27;
              v25 = v25 - v27;
              v29 = v25 != 0 && v28;
              if (!v28)
              {
                LOWORD(v25) = 0;
              }

              ++v24;
            }

            while (v29);
          }

          *v22 = (16 * v6) | (2 * (a4 != 1)) | 4;
          v22[1] = v24;
          v30 = 3;
          v31 = 2;
        }

        v22[v30] = v11;
        v22[v31] = HIBYTE(v11);
        v32 = v22;
        v33 = sub_10001F968(v23, v22, v18, 1u);
        if (v33 || (v33 = sub_10001F968(v23, a5, *(v13 + 122), 2u), v33))
        {
          v7 = v33;
        }

        else
        {
          v7 = sub_1000B7EDC(sub_1001F2E34, *(v13 + 80), 0, v23, 0);
          if (!v7)
          {
            *(v13 + 126) = v11;
            *(v13 + 124) = v6;
            *(v13 + 125) = a4;
            *(v13 + 112) = a5;
            *(v13 + 120) = a6;
            return v7;
          }
        }

        sub_10000C1E8(v32);
      }

      else
      {
        v7 = 106;
        v23 = v21;
      }

      sub_10000C1E8(v23);
    }

    else
    {
      return 106;
    }
  }

  return v7;
}

void sub_1001F2E34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v9 = 0;
  sub_1000BB9CC(a2);
  if (sub_1001F30E4(&v9, v5))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find connection\n");
      v6 = sub_10000C050(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = qword_100B5CD48;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (*(v7 + 80) == *(v9 + 126))
      {
        v8 = *(v7 + 72);
        goto LABEL_10;
      }
    }

    v8 = 0;
LABEL_10:
    sub_1001F406C((v9 + 80), v8, v9 + 8, a4);
  }
}

uint64_t sub_1001F2EFC(uint64_t a1, _OWORD *a2, uint64_t a3, __int16 *a4)
{
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = sub_10028EA9C(23, v16, a1, sub_1001F1F54, sub_1001F2088, sub_1001F2118, a4, &unk_1008A36C0);
  if (v7)
  {
    v8 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVCTP_createAVRCPChannels error creating A2DP signaling");
      v9 = sub_10000C050(2u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *&v16[0] = 0;
    v10 = qword_100B5CD48;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (*(v10 + 80) == 4366)
      {
        if (sub_1001F1EA8(v16))
        {
          return 2902;
        }

        v8 = 0;
        v12 = *&v16[0];
        v13 = *(a1 + 4);
        *(*&v16[0] + 8) = *a1;
        *(v12 + 12) = v13;
        v14 = *a4;
        *(v12 + 24) = *a4;
        *(v12 + 14) = 1;
        *(v12 + 56) = 0;
        *(v12 + 64) = 0;
        *(v12 + 72) = 0;
        *(v12 + 16) = 1;
        *(v10 + 82) = v14;
        return v8;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", 120, 4366);
      v11 = sub_10000C050(2u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 114;
  }

  return v8;
}

uint64_t sub_1001F3098(uint64_t a1, __int16 a2, __int16 a3)
{
  v7 = 0;
  result = sub_1001F30E4(&v7, a1);
  if (!result)
  {
    v6 = v7;
    *(v7 + 26) = a3;
    *(v6 + 28) = a2;
  }

  return result;
}

uint64_t sub_1001F30E4(uint64_t *a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (qword_100B5CD48)
  {
    v4 = qword_100B5CD48 + 8;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(v4 + 24) == a2 || *(v4 + 80) == a2)
      {
        result = 0;
        *a1 = v4;
        return result;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received AVCTP message after profile has been unregistered");
    v6 = sub_10000C050(2u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 120;
}

uint64_t sub_1001F3190(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v8 = 0;
  v9 = 0;
  v5 = sub_1000E1FE8(a1);
  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVCTP_cleanFastConnectAVRCP NULL Handle");
      v6 = sub_10000C050(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (!sub_1001F30E4(&v8, a2) && v8)
  {
    sub_1001F21B8(v8);
  }

  if (a3)
  {
    if (!sub_1000ABC7C(a3, &v9))
    {
      if (v9)
      {
        sub_10028E908(v9);
        if (v5)
        {
          sub_1000D27D8(v5);
        }
      }
    }
  }

  if (a2)
  {
    if (!sub_1000ABC7C(a2, &v9))
    {
      if (v9)
      {
        sub_10028E908(v9);
        if (v5)
        {
          sub_1000D27D8(v5);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F328C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v26 = 0;
  v5 = qword_100B5CD48 + 8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      LOBYTE(v10) = 0;
      goto LABEL_23;
    }
  }

  while (*a2 != *(v5 + 8) || *(a2 + 4) != *(v5 + 12));
  v26 = v5;
  v7 = *(v5 + 16);
  v8 = sub_10000C240();
  if (v7 == 1)
  {
    if (v8)
    {
      sub_10000AF54("AVCTP connection already in progress with %:", a2);
      v9 = sub_10000C050(2u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v5) = 0;
    LOBYTE(v10) = 1;
  }

  else
  {
    if (v8)
    {
      sub_10000AF54("Rejecting previous pending attempt for incoming AVCTP connection");
      v11 = sub_10000C050(2u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (*(v5 + 17) == 1)
    {
      sub_100290164(0, 0, 0, *(v5 + 24), 0, 0, 0);
    }

    else
    {
      sub_10029104C(*(v5 + 24), 436);
    }

    sub_1001F21B8(v5);
    v10 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v12 = *v10;
        *(v10 + 82) = 0;
        v10 = v12;
      }

      while (v12);
    }

    LOBYTE(v5) = 1;
  }

LABEL_23:
  if (!*qword_100B5CD48)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No AVCTP profiles registered");
      v22 = sub_10000C050(2u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_31;
  }

  if ((v10 & 1) != 0 || (result = sub_1001F1EA8(&v26), result))
  {
LABEL_31:
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting incoming AVCTP connection request");
      v23 = sub_10000C050(2u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v3;
    v21 = 0;
    v16 = 0;
    return sub_100290164(v17, v18, v19, v20, 0, v21, v16);
  }

  v14 = v26;
  v15 = *(a2 + 4);
  *(v26 + 8) = *a2;
  *(v14 + 12) = v15;
  *(v14 + 24) = v3;
  *(v14 + 14) = 16777217;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  if (v5)
  {
    v16 = &unk_1008A36C0;
    v17 = sub_1001F1F54;
    v18 = sub_1001F2088;
    v19 = sub_1001F2118;
    v20 = v3;
    v21 = 1;
    return sub_100290164(v17, v18, v19, v20, 0, v21, v16);
  }

  v24 = *qword_100B5CD48;
  if (*qword_100B5CD48)
  {
    do
    {
      v25 = *v24;
      result = (v24[1])(a2);
      v24 = v25;
    }

    while (v25);
  }

  return result;
}

void sub_1001F3558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = qword_100B5CD48 + 8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a2 == *(v4 + 8) && *(a2 + 4) == *(v4 + 12))
    {
      v6 = *(v4 + 18);
      goto LABEL_13;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Avctp Signalling channel does not exist, reject connection");
    v7 = sub_10000C050(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v6 = 0;
LABEL_13:
  if (*qword_100B5CD48)
  {
    if (v6)
    {
      v8 = sub_100290164(sub_1001F23A8, sub_1001F24D0, sub_1001F25A8, v3, &unk_100AE64E0, 1, &unk_1008A36C0);
      if (v8)
      {
        v9 = v8;
        if (sub_10000C240())
        {
          sub_10000AF54("Browsing rejected due to error %!", v9);
          v10 = sub_10000C050(2u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10080FEE0();
          }
        }
      }

      else
      {
        *(v4 + 80) = v3;
        *(v4 + 128) = 1;
      }

      return;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No AVCTP profiles registered");
    v11 = sub_10000C050(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Rejecting incoming AVCTP connection request for browsing channel");
    v12 = sub_10000C050(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_100290164(0, 0, 0, v3, 0, 0, 0);
}

void sub_1001F375C(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a3)
  {
    v63 = "buf";
    goto LABEL_127;
  }

  if (!a4)
  {
    v63 = "(length) > 0";
LABEL_127:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avctp/avctp.c", 318, v63);
  }

  v8 = *a3;
  v9 = (v8 >> 2) & 3;
  v10 = 1;
  if ((v8 & 2) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    if (a4 == 1)
    {
      if (*(a1 + 23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avctp/avctp.c", 337, "void L2CAPRecvCB(AVCTP_DATA_CHANNEL *, OI_BD_ADDR *, uint8_t *, uint16_t)");
LABEL_30:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid packet received");
          v19 = sub_10000C050(2u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

LABEL_39:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid number of expected packets (0)");
        v23 = sub_10000C050(2u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }
      }

      return;
    }

    v14 = a3[1];
    *(a1 + 23) = v14;
    if (!v14)
    {
      goto LABEL_39;
    }

    v10 = 2;
LABEL_14:
    if ((a4 - v10) <= 1)
    {
      goto LABEL_30;
    }

    v12 = __rev16(*&a3[v10]);
    v13 = qword_100B5CD48;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (*(v13 + 80) == v12)
      {
        goto LABEL_18;
      }
    }

    if ((*a3 & 2) != 0)
    {
      return;
    }

    v24 = sub_100007618(3uLL, 0x4B27CB5DuLL);
    if (v24)
    {
      v25 = a3[2];
      v26 = *a3;
      *v24 = *a3;
      v24[2] = v25;
      *v24 = v26 | 3;
      v27 = *a1;

      sub_10028E1F0(sub_1001F4064, v27, 0, v24, 3uLL);
      return;
    }

    if (!sub_10000C240() || (sub_10000AF54("Out of memory\n"), v54 = sub_10000C050(2u), !os_log_type_enabled(v54, OS_LOG_TYPE_ERROR)))
    {
LABEL_94:
      sub_10029104C(*a1, 436);
      return;
    }

LABEL_93:
    sub_1000E09C0();
    goto LABEL_94;
  }

  LOWORD(v12) = 0;
  v13 = 0;
LABEL_18:
  v15 = v8 >> 4;
  if (((v8 >> 2) & 3) <= 1)
  {
    if (v9)
    {
      a1[23] = v12;
      if (*(a1 + 1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected start packet. Discarding previous buffer.\n");
          v28 = sub_10000C050(2u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v29 = *(a1 + 1);
        if (v29)
        {
          sub_10000C1E8(v29);
          *(a1 + 1) = 0;
        }
      }

      v30 = a1[2];
      v31 = *(a1 + 23);
      *(a1 + 4) = v31 * v30;
      v32 = sub_100007618(v31 * v30, 0x1FB342A7uLL);
      *(a1 + 1) = v32;
      if (!v32)
      {
        if (!sub_10000C240())
        {
          goto LABEL_94;
        }

        sub_10000AF54("Out of memory. Terminating connection.");
        v46 = sub_10000C050(2u);
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      *(a1 + 22) = v15;
      *(a1 + 24) = 1;
      if (a4 < 4 || (v33 = a4 - 4, v34 = *(a1 + 4), v35 = v34 >= v33, v36 = v34 - v33, !v35))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Copy would overflow recv buffer! Discarding data.");
          v37 = sub_10000C050(2u);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

      *(a1 + 4) = v36;
      memmove(v32, a3 + 4, v33);
      a1[10] = v33;
      if (*(a1 + 1))
      {
        return;
      }

LABEL_102:
      sub_1000D660C();
      return;
    }

    if (*(a1 + 1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Discarding previous incomplete packet.");
        v16 = sub_10000C050(2u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v17 = *(a1 + 1);
      if (v17)
      {
        sub_10000C1E8(v17);
        *(a1 + 1) = 0;
      }
    }

    if (a1[24])
    {
      v18 = *(v13 + 64);
      if (v18)
      {
        if (a4 >= 3)
        {
          v18(a2, v8 >> 4, v11, v8 & 1, a3 + 3, (a4 - 3));
          goto LABEL_101;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid Data Length");
          v56 = sub_10000C050(2u);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_100;
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("No browsing callback defined !");
        v55 = sub_10000C050(2u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
LABEL_100:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      if (a4 >= 3)
      {
        (*(v13 + 32))(a2, v8 >> 4, v11, v8 & 1, a3 + 3, (a4 - 3));
        goto LABEL_101;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Data Length");
        v53 = sub_10000C050(2u);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (!*(a1 + 1))
    {
      return;
    }

    goto LABEL_102;
  }

  if (v9 == 2)
  {
    v20 = *(a1 + 1);
    if (!v20)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected continue packet. Discarding data.");
        v45 = sub_10000C050(2u);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }
      }

      return;
    }

    v21 = *(a1 + 24) + 1;
    *(a1 + 24) = v21;
    if (*(a1 + 23) == v21)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Too many continue packets. Discarding data.");
        v22 = sub_10000C050(2u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_119:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      if (*(a1 + 22) == v15)
      {
        v48 = a4 - 1;
        v49 = *(a1 + 4);
        v35 = v49 >= v48;
        v50 = v49 - v48;
        if (v35)
        {
          *(a1 + 4) = v50;
          memmove((v20 + a1[10]), a3 + 1, v48);
          a1[10] += v48;
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Copy would overflow recv buffer! Discarding data.");
          v51 = sub_10000C050(2u);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Received CONTINUE fragment with mismatched transaction number. Discarding data.");
        v58 = sub_10000C050(2u);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }
      }
    }

LABEL_122:
    v62 = *(a1 + 1);
    if (v62)
    {
      sub_10000C1E8(v62);
      *(a1 + 1) = 0;
    }

    return;
  }

  v38 = *(a1 + 1);
  if (!v38)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unexpected END fragment. Discarding data.");
      v47 = sub_10000C050(2u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  v39 = *(a1 + 24) + 1;
  *(a1 + 24) = v39;
  if (*(a1 + 23) != v39)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Wrong number of fragments. Discarding data.");
      v52 = sub_10000C050(2u);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  if (*(a1 + 22) != v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received END fragment with mismatched transaction number. Discarding data.");
      v57 = sub_10000C050(2u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  v40 = qword_100B5CD48;
  do
  {
    v40 = *v40;
    if (!v40)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Profile %d not found\n", a1[23]);
        v59 = sub_10000C050(2u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }
      }

      goto LABEL_122;
    }
  }

  while (*(v40 + 80) != a1[23]);
  v41 = a4 - 1;
  v42 = *(a1 + 4);
  v35 = v42 >= v41;
  v43 = v42 - v41;
  if (v35)
  {
    *(a1 + 4) = v43;
    memmove((v38 + a1[10]), a3 + 1, v41);
    if (a1[24])
    {
      v60 = *(v40 + 64);
      if (!v60)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No browsing callback defined !");
          v61 = sub_10000C050(2u);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_119;
          }
        }

        goto LABEL_122;
      }
    }

    else
    {
      v60 = *(v40 + 32);
    }

    v60(a2, v8 >> 4, v11, v8 & 1, *(a1 + 1), (a4 + a1[10] - 1));
    goto LABEL_122;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Copy would overflow recv buffer! Discarding data.");
    v44 = sub_10000C050(2u);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
LABEL_84:
      sub_1000E09C0();
    }
  }
}

void sub_1001F406C(unsigned __int16 *a1, void (*a2)(uint64_t, void, void, void, void *, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a4)
  {
    v8 = a1[20];
    v9 = a1[21];
    v4 = (v8 - v9);
    if (v8 != v9)
    {
      v10 = a1[1];
      if (v10 <= (v8 - v9))
      {
        v11 = v10 - 1;
      }

      else
      {
        v11 = v8 - v9;
      }

      v12 = sub_1000B914C(2u);
      if (v12)
      {
        v13 = v12;
        v14 = sub_100007618(1uLL, 0x649002DAuLL);
        if (v14)
        {
          if (v10 <= v4)
          {
            v15 = 8;
          }

          else
          {
            v15 = 12;
          }

          *v14 = v15 | (16 * *(a1 + 44)) | (2 * (*(a1 + 45) != 1));
          v16 = sub_10001F968(v13, v14, 1uLL, 1u);
          if (!v16)
          {
            v16 = sub_10001F968(v13, (*(a1 + 4) + a1[21]), v11, 2u);
            if (!v16)
            {
              v17 = *(a1 + 48) ? sub_1001F2E34 : sub_1001F2AF8;
              v16 = sub_1000B7EDC(v17, *a1, 0, v13, 0);
              if (!v16)
              {
                a1[21] += v11;
                return;
              }
            }
          }

          v4 = v16;
        }

        else
        {
          v4 = 106;
        }

        sub_1000BB9CC(v13);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not allocate mbuf\n");
          v18 = sub_10000C050(2u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v4 = 106;
      }
    }
  }

  v19 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (a2)
  {
    a2(a3, a1[23], *(a1 + 44), *(a1 + 45), v19, a1[20], v4);
  }

  else
  {
    if (v19)
    {
      sub_10000C1E8(v19);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not find profile %d\n", a1[23]);
      v20 = sub_10000C050(2u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_1001F4290(void ***a1, unsigned int a2)
{
  v3 = *a1;
  if (v3)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v4 = v3 + 1;
    v5 = a2;
    do
    {
      v6 = *(v4 - 8);
      v7 = v6 > 8;
      v8 = (1 << v6) & 0x10E;
      if (v7 || v8 == 0)
      {
        if (*v4)
        {
          sub_10000C1E8(*v4);
          *v4 = 0;
        }
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    v3 = *a1;
    if (*a1)
    {
LABEL_13:
      sub_10000C1E8(v3);
      *a1 = 0;
    }
  }
}

uint64_t sub_1001F4328(uint64_t a1, unsigned int a2, void ***a3, _BYTE *a4)
{
  *a4 = 0;
  v8 = sub_100007618(16 * a2, 0x105204037B82EA9uLL);
  *a3 = v8;
  if (v8)
  {
    if (a2)
    {
      v9 = 0;
      v10 = 16 * a2;
      do
      {
        v11 = *a3;
        ++*a4;
        LOBYTE(v11[v9 / 8]) = *a1;
        *&v11[v9 / 8] = *a1;
        if (*(a1 + 3))
        {
          v12 = sub_100007618(*(a1 + 3), 0x590214E2uLL);
          v11[v9 / 8 + 1] = v12;
          if (!v12)
          {
            goto LABEL_9;
          }

          memmove(v12, *(a1 + 8), *(a1 + 3));
        }

        a1 += 16;
        v9 += 16;
      }

      while (v10 != v9);
    }

    return 0;
  }

  else
  {
LABEL_9:
    sub_1001F4290(a3, *a4);
    *a4 = 0;
    return 106;
  }
}

uint64_t sub_1001F4410()
{
  if (qword_100B5CD50)
  {
    return *(qword_100B5CD50 + 102);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F4454(int a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16); !i[19] || i[19] != a1; i += 32)
  {
    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *i;
  return result;
}

uint64_t sub_1001F44B4(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16) + 28; ; i += 64)
  {
    if (*(i + 10))
    {
      if (*i == *a1 && *(i + 4) == *(a1 + 4))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *(i + 10);
  return result;
}

uint64_t sub_1001F4528(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16) + 28; ; i += 64)
  {
    if (*(i + 10))
    {
      if (*i == *a1 && *(i + 4) == *(a1 + 4))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *(i - 28);
  return result;
}

uint64_t sub_1001F45A0(int a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (a1)
  {
    v2 = *(*(qword_100B5CD50 + 16) + ((a1 - 1) << 6) + 38);
    if (v2)
    {
      result = 0;
      *a2 = v2;
      return result;
    }

    if (!sub_10000C240())
    {
      return 120;
    }

    sub_10000AF54("CID from A2DP Handle not found");
    v5 = sub_10000C050(3u);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return 120;
    }
  }

  else
  {
    if (!sub_10000C240())
    {
      return 120;
    }

    sub_10000AF54("A2DP handle was 0");
    v4 = sub_10000C050(3u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 120;
    }
  }

  sub_1000E09C0();
  return 120;
}

uint64_t sub_1001F4688(__int16 a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v2 = *(qword_100B5CD50 + 8);
  if (!v2)
  {
    return 120;
  }

  v3 = *(v2 + 144 * (a1 - 1) + 135);
  if (v3 == 255)
  {
    return 120;
  }

  v4 = *(qword_100B5CD50 + 16);
  if (!v4)
  {
    return 120;
  }

  result = 0;
  *a2 = *(v4 + (v3 << 6));
  return result;
}

uint64_t sub_1001F46FC(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v5 = 0;
  result = sub_1001F4528(a1, &v5);
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MediaCID from BT Address was not found");
      v4 = sub_10000C050(3u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 120;
  }

  else
  {
    *a2 = *(*(qword_100B5CD50 + 8) + 144 * (v5 - 1) + 128);
  }

  return result;
}

uint64_t sub_1001F47C0(int a1)
{
  if (!dword_100BCE23C)
  {
    return 0;
  }

  if (!qword_100B5CD50)
  {
    goto LABEL_10;
  }

  v1 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    goto LABEL_10;
  }

  v2 = *(qword_100B5CD50 + 16);
  v3 = 16320;
  while (*(v2 + 38) != a1)
  {
    v2 += 64;
    v3 -= 64;
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  if (!v3)
  {
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("No signal");
      v4 = sub_10000C050(3u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1001F4880(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Register(c=0x%x,sendRsp=%B,pSignalingChannel=0x%x,pMediaChannel=0x%x)", a1, a2, a3, a4);
    v8 = sub_10000C050(3u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_59:
    sub_1000D660C();
    return 101;
  }

  v13 = sub_1003045A0(3u);
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = v13;
  qword_100B5CD50 = sub_1001BBBD8(0x68uLL, 0x1060040B82124B5uLL);
  if (!qword_100B5CD50)
  {
    return 106;
  }

  v15 = sub_1001BBBD8(40 * *v14, 0x10200409C40F318uLL);
  v16 = qword_100B5CD50;
  *qword_100B5CD50 = v15;
  if (!v15)
  {
    goto LABEL_81;
  }

  if (*v14)
  {
    v17 = 0;
    do
    {
      sub_1001F57F4(v15);
      v15[25] = 0;
      v15 += 40;
      ++v17;
    }

    while (v17 < *v14);
  }

  v18 = sub_1001BBBD8(144 * v14[1], 0x10F2040AB53EE5BuLL);
  v16 = qword_100B5CD50;
  *(qword_100B5CD50 + 8) = v18;
  if (!v18)
  {
    goto LABEL_81;
  }

  if (v14[1])
  {
    v19 = 0;
    v20 = v18 + 137;
    do
    {
      *(v20 - 5) = 0;
      *(v20 - 137) = 0;
      *(v20 - 9) = 0;
      sub_1001C3A30(0);
      *v20 = -1;
      *(v20 - 1) = -65281;
      ++v19;
      v20 += 144;
    }

    while (v19 < v14[1]);
  }

  v21 = sub_1001BBBD8(v14[2] << 6, 0x10300403BACA1B3uLL);
  v16 = qword_100B5CD50;
  *(qword_100B5CD50 + 16) = v21;
  if (!v21)
  {
LABEL_81:
    if (*(v16 + 8))
    {
      sub_10000C1E8(*(v16 + 8));
      v16 = qword_100B5CD50;
      *(qword_100B5CD50 + 8) = 0;
    }

    if (*v16)
    {
      sub_10000C1E8(*v16);
      v16 = qword_100B5CD50;
      *qword_100B5CD50 = 0;
    }

    sub_10000C1E8(v16);
    qword_100B5CD50 = 0;
    return 106;
  }

  *(v16 + 96) = *v14;
  *(v16 + 97) = *(v14 + 1);
  *(v16 + 100) = 1;
  dword_100BCE23C = 1;
  if (!a1)
  {
    goto LABEL_59;
  }

LABEL_6:
  if (!*a1)
  {
    sub_1000D660C();
    if (!*a1)
    {
      return 101;
    }
  }

  if (!a1[1])
  {
    sub_1000D660C();
    if (!a1[1])
    {
      return 101;
    }
  }

  if (!a1[2])
  {
    sub_1000D660C();
    if (!a1[2])
    {
      return 101;
    }
  }

  if (!a1[3])
  {
    sub_1000D660C();
    if (!a1[3])
    {
      return 101;
    }
  }

  if (!a1[4])
  {
    sub_1000D660C();
    if (!a1[4])
    {
      return 101;
    }
  }

  if (!a1[5])
  {
    sub_1000D660C();
    if (!a1[5])
    {
      return 101;
    }
  }

  if (!a1[6])
  {
    sub_1000D660C();
    if (!a1[6])
    {
      return 101;
    }
  }

  if (!a1[7])
  {
    sub_1000D660C();
    if (!a1[7])
    {
      return 101;
    }
  }

  if (!a1[8])
  {
    sub_1000D660C();
    if (!a1[8])
    {
      return 101;
    }
  }

  if (!a1[9])
  {
    sub_1000D660C();
    if (!a1[9])
    {
      return 101;
    }
  }

  if (!a1[10])
  {
    sub_1000D660C();
    if (!a1[10])
    {
      return 101;
    }
  }

  if (!a1[11])
  {
    sub_1000D660C();
    if (!a1[11])
    {
      return 101;
    }
  }

  if (!a1[12])
  {
    sub_1000D660C();
    if (!a1[12])
    {
      return 101;
    }
  }

  if (!a1[13])
  {
    sub_1000D660C();
    if (!a1[13])
    {
      return 101;
    }
  }

  if (!a1[16])
  {
    sub_1000D660C();
    if (!a1[16])
    {
      return 101;
    }
  }

  if (!a1[21])
  {
    sub_1000D660C();
    if (!a1[21])
    {
      return 101;
    }
  }

  if (!a1[22])
  {
    sub_1000D660C();
    if (!a1[22])
    {
      return 101;
    }
  }

  if (!a1[23])
  {
    sub_1000D660C();
    if (!a1[23])
    {
      return 101;
    }
  }

  if (!a1[24])
  {
    sub_1000D660C();
    if (!a1[24])
    {
      return 101;
    }
  }

  v9 = qword_100B5CD50;
  *(qword_100B5CD50 + 24) = a1;
  *(v9 + 103) = a2;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_69;
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = 0;
    v12 = a3[1];
    *(v9 + 32) = *a3;
    *(v9 + 48) = v12;
LABEL_69:
    v10 = 1;
    goto LABEL_71;
  }

  v11 = 101;
LABEL_71:
  if (a4)
  {
    if (!*a4)
    {
      v11 = 101;
LABEL_78:
      sub_1001F52E8();
      return v11;
    }

    v23 = *(a4 + 16);
    *(v9 + 64) = *a4;
    *(v9 + 80) = v23;
  }

  if (!v10)
  {
    goto LABEL_78;
  }

  v11 = sub_1002967FC(25, sub_1001F4D28);
  if (v11)
  {
    goto LABEL_78;
  }

  return v11;
}

void sub_1001F4D28(uint64_t a1, int *a2, uint64_t a3)
{
  v34 = 0;
  v6 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  ++*(v6 + 101);
  if (!sub_1001F44B4(a2, &v34))
  {
    v10 = *(v6 + 97);
    if (!*(v6 + 97))
    {
LABEL_16:
      if (sub_10000C240())
      {
        sub_10000AF54("Rejecting connect request %!", 2901);
        v13 = sub_10000C050(3u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v14 = sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, a3, qword_100B5CD50 + 32, 0, &unk_100AE6500);
      if (!v14)
      {
        return;
      }

      v15 = v14;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("OI_L2CAP_Accept (reject) failed %!", v15);
      v16 = sub_10000C050(3u);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_22:
      sub_1000E09C0();
      return;
    }

    v11 = *(v6 + 8) + 128;
    while (1)
    {
      v12 = *(v11 + 7);
      if (v12 != 255 && *(v11 + 6) == 2 && *(*(v6 + 16) + (v12 << 6) + 38) == v34)
      {
        break;
      }

      v11 += 144;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    if (*v11)
    {
      if (!sub_10000C240() || (sub_10000AF54("Invalid ConnectInd Received: (mediaCID != 0)"), v29 = sub_10000C050(3u), !os_log_type_enabled(v29, OS_LOG_TYPE_ERROR)))
      {
LABEL_55:
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Unknown Connect Indication Received. cid=%d psm=%d addr=%:", a3, a1, a2);
        v33 = sub_10000C050(3u);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      *v11 = a3;
      sub_1001C3A30(a3);
      v30 = sub_100290164(sub_1001FF38C, sub_1001FF59C, sub_1001FF7A0, a3, qword_100B5CD50 + 64, 1, &unk_100AE6500);
      if (!v30)
      {

        sub_10028D5C0(a3, sub_100200410);
        return;
      }

      v31 = v30;
      if (!sub_10000C240())
      {
        goto LABEL_55;
      }

      sub_10000AF54("OI_L2CAP_Accept failed! cid=%d error = %!", a3, v31);
      v32 = sub_10000C050(3u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    sub_1000E09C0();
    goto LABEL_55;
  }

  if (*(v6 + 98))
  {
    v7 = 0;
    v8 = (*(v6 + 16) + 52);
    while (*(v8 - 7))
    {
      ++v7;
      v8 += 16;
      if (*(v6 + 98) == v7)
      {
        goto LABEL_6;
      }
    }

    *(v8 - 26) = v7 + 1;
    v17 = *a2;
    *(v8 - 10) = *(a2 + 2);
    *(v8 - 6) = v17;
    *(v8 - 7) = a3;
    *(v8 - 8) = -1;
    *v8 = -1;
    v18 = sub_100290FA4(a3, sub_100200534);
    if (v18)
    {
      v19 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("AVDTP disconnect complete not registered with %!", v19);
        v20 = sub_10000C050(3u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_CONNECT_IND(addr=%:) cid %d", a2, a3);
      v21 = sub_10000C050(3u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10000C0FC();
        *buf = 136446210;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (dword_100BCE23C)
    {
      v23 = *(qword_100B5CD50 + 98);
      if (*(qword_100B5CD50 + 98))
      {
        v24 = *(qword_100B5CD50 + 16);
        while (!v24[19] || v24[19] != a3)
        {
          v24 += 32;
          if (!--v23)
          {
            goto LABEL_38;
          }
        }

        v28 = *v24;
        goto LABEL_44;
      }

LABEL_38:
      v26 = 120;
    }

    else
    {
      v26 = 408;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v26);
      v27 = sub_10000C050(3u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v28 = 0;
LABEL_44:
    (**(qword_100B5CD50 + 24))(a2, v28);
    return;
  }

LABEL_6:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP signaling channel allocation failed, rejecting");
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, a3, qword_100B5CD50 + 32, 0, &unk_100AE6500);
}

uint64_t sub_1001F52E8()
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v0 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 16))
  {
    sub_10000C1E8(*(qword_100B5CD50 + 16));
    v0 = qword_100B5CD50;
    *(qword_100B5CD50 + 16) = 0;
  }

  if (v0[1])
  {
    sub_10000C1E8(v0[1]);
    v0 = qword_100B5CD50;
    *(qword_100B5CD50 + 8) = 0;
  }

  if (*v0)
  {
    sub_10000C1E8(*v0);
    v0 = qword_100B5CD50;
    *qword_100B5CD50 = 0;
  }

  sub_10000C1E8(v0);
  result = 0;
  qword_100B5CD50 = 0;
  dword_100BCE23C = 0;
  return result;
}

uint64_t sub_1001F537C()
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Deregister");
    v0 = sub_10000C050(3u);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, " %{public}s", &v6, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v1 = *(qword_100B5CD50 + 96);
  if (*(qword_100B5CD50 + 96))
  {
    v2 = (*qword_100B5CD50 + 25);
    while (1)
    {
      v3 = *v2;
      v2 += 40;
      if (v3)
      {
        return 145;
      }

      if (!--v1)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v4 = sub_1002969F8(25);
    LODWORD(result) = sub_1001F52E8();
    if (v4)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_1001F5498(int a1, int a2, uint64_t a3, int a4, int a5, _BYTE *a6)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_RegisterMultipoint(mediaType=%d,count=%d,endpointType=%d,caps=0x%x,numCaps=%d)", a1, a5, a2, a3, a4);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v29 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (a6 && a3 && a4)
  {
    v13 = qword_100B5CD50;
    v14 = *(qword_100B5CD50 + 100);
    if (v14 == 63 || v14 == 0)
    {
      LOBYTE(v14) = 1;
      *(qword_100B5CD50 + 100) = 1;
    }

    v16 = 0;
    v17 = *(v13 + 96);
    v18 = *v13 + 25;
    v19 = *v13 + 30;
    result = 104;
    while (!v17)
    {
LABEL_24:
      LOBYTE(v14) = v14 + 1;
      *(v13 + 100) = v14;
      if (v16++ >= 0xFE)
      {
        return result;
      }
    }

    v21 = v18;
    v22 = v17;
    v23 = 10200;
    while (1)
    {
      v24 = *v21;
      v21 += 40;
      if (v24 == v14)
      {
        break;
      }

      v23 -= 40;
      if (!--v22)
      {
        goto LABEL_21;
      }
    }

    if (v23)
    {
      goto LABEL_24;
    }

LABEL_21:
    v25 = 0;
    v26 = v19;
    while (*(v26 - 5))
    {
      ++v25;
      v26 += 40;
      if (v25 >= v17)
      {
        goto LABEL_24;
      }
    }

    if (*(v26 - 22))
    {
      sub_1000D660C();
    }

    if (*(v26 - 14))
    {
      sub_1000D660C();
    }

    result = 0;
    *(v26 - 5) = v14;
    *(v26 - 2) = 0;
    v26[2] = 0;
    *(v26 - 6) = -1;
    *(v26 - 4) = a1;
    *(v26 - 3) = a2;
    *(v26 - 30) = a3;
    *v26 = a4;
    *(v26 - 2) = a5;
    *a6 = *(qword_100B5CD50 + 100);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_1001F56BC(int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_DeregisterEndpoint(seid=%d)", a1);
    v2 = sub_10000C050(3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v3 = *(qword_100B5CD50 + 96);
  if (!*(qword_100B5CD50 + 96))
  {
    return 120;
  }

  v4 = *qword_100B5CD50;
  v5 = 10200;
  while (*(v4 + 25) != a1)
  {
    v4 += 40;
    v5 -= 40;
    if (!--v3)
    {
      return 120;
    }
  }

  if (!v5)
  {
    return 120;
  }

  sub_1001F57F4(v4);
  sub_1001F57F4(v4);
  result = 0;
  *(v4 + 25) = 0;
  return result;
}

void sub_1001F57F4(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("ResetEndpoint %lx", a1);
    v2 = sub_10000C050(3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v4 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 29) = 0;
  sub_1001F4290((a1 + 8), *(a1 + 31));
  *(a1 + 31) = 0;
  sub_1001F4290((a1 + 16), *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 24) = -1;
}

uint64_t sub_1001F58E4(void *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v4 = a1;
  v5 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  if (!dword_100BCE23C)
  {
    v7 = 408;
    goto LABEL_8;
  }

  v6 = *(v5 + 98);
  if (!*(v5 + 98))
  {
LABEL_6:
    v7 = 120;
LABEL_8:
    sub_1001F6860(a1);
    v23 = 0;
    v22 = 0;
    goto LABEL_9;
  }

  v7 = a4;
  v9 = *(v5 + 16) + 28;
  while (*(v9 + 10) != a1)
  {
    v9 += 64;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v20 = *v9;
  v23 = *(v9 + 4);
  v22 = v20;
  if (a4)
  {
    sub_1001F6860(a1);
  }

  else
  {
    v21 = sub_1001F47C0(a1);
    if (!v21)
    {
      sub_1000D660C();
    }

    v7 = 0;
    *(v21 + 34) = a3;
  }

LABEL_9:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CONNECT_CFM(addr=%:,result=%!)", &v22, v7);
    v10 = sub_10000C050(3u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10000C0FC();
      *buf = 136446210;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    v16 = 408;
LABEL_22:
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v7);
      v17 = sub_10000C050(3u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v18 = 0;
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v16;
    }

    v12 = qword_100B5CD50;
    return (*(*(v12 + 24) + 8))(&v22, v18, v7);
  }

  v12 = qword_100B5CD50;
  v13 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
LABEL_20:
    v16 = 120;
    goto LABEL_22;
  }

  v14 = *(qword_100B5CD50 + 16);
  while (!v14[19] || v14[19] != v4)
  {
    v14 += 32;
    if (!--v13)
    {
      goto LABEL_20;
    }
  }

  v18 = *v14;
  return (*(*(v12 + 24) + 8))(&v22, v18, v7);
}

void sub_1001F5B1C(void *a1, uint64_t a2)
{
  if (!dword_100BCE23C)
  {
    return;
  }

  v4 = *(qword_100B5CD50 + 8);
  v21 = 0;
  v20 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("Signaling channel disconnected (CID %d) %!", a1, a2);
    v5 = sub_10000C050(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v6 = sub_1001F47C0(a1);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100B5CD50;
    v9 = *(qword_100B5CD50 + 97);
    if (*(qword_100B5CD50 + 97))
    {
      do
      {
        if (*(v8 + 16) + (*(v4 + 135) << 6) == v7)
        {
          if (*(v4 + 128))
          {
            v10 = sub_10029104C(*(v4 + 128), 436);
            if (!v10)
            {
              sub_1001F9250(v4, 7);
              return;
            }

            v11 = v10;
            if (sub_10000C240())
            {
              sub_10000AF54("L2CAP_Disconnect: (CID %d) %!", *(v4 + 128), v11);
              v12 = sub_10000C050(3u);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = sub_10000C0FC();
                *buf = 136446210;
                v23 = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            sub_1001FF59C(*(v4 + 128), a2);
          }

          sub_1001F8264(v4);
          v8 = qword_100B5CD50;
        }

        v4 += 144;
        --v9;
      }

      while (v9);
    }

    v20 = *(v7 + 28);
    v21 = *(v7 + 32);
  }

  if (!dword_100BCE23C)
  {
    v17 = 408;
LABEL_27:
    if (sub_10000C240())
    {
      sub_10000AF54("Signaling disconnect error %!", v17);
      v18 = sub_10000C050(3u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v14 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
LABEL_25:
    v17 = 120;
    goto LABEL_27;
  }

  v15 = *(qword_100B5CD50 + 16);
  while (!v15[19] || v15[19] != a1)
  {
    v15 += 32;
    if (!--v14)
    {
      goto LABEL_25;
    }
  }

  v19 = *v15;
  sub_1001F6860(a1);
  (*(*(qword_100B5CD50 + 24) + 16))(&v20, v19, a2);
}

void sub_1001F5DE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packet length!");
      v10 = sub_10000C050(3u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    return;
  }

  sub_1000D660C();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = *a2 & 0xC;
  if ((*a2 & 0xC) != 0)
  {
    v7 = sub_1001F47C0(a1);
    if (v7)
    {
      v8 = v7;
      if (v6 == 4)
      {
        if (v3 <= 2)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Invalid packet length!");
          v9 = sub_10000C050(3u);
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (*(v7 + 16))
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Unexpected START fragment! - discarding previous packet");
          v18 = sub_10000C050(3u);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        v21 = a2[1];
        if (a2[1])
        {
          *(v7 + 42) = v21;
          v22 = v3 - 1;
          v23 = sub_1001BBBD8((v3 - 1) * v21, 0xBDC97ABBuLL);
          *(v8 + 16) = v23;
          *(v8 + 48) = (v3 - 1) * *(v8 + 42);
          *(v8 + 36) = 0;
          *(v8 + 56) = v3 - 1;
          if (v23)
          {
            *(v8 + 43) = *a2 & 0xF0;
            *v23 = *a2;
            *(*(v8 + 16) + 1) = a2[2];
            memmove((*(v8 + 16) + 2), a2 + 3, v3 - 3);
            *(v8 + 48) -= v22;
            *(v8 + 36) += v22;
            --*(v8 + 42);
            return;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Could not allocate reassembly buffer!");
            v27 = sub_10000C050(3u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_100200DB8(a1, a2[2], *a2 >> 4, 129);
          goto LABEL_56;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid number of packets (0)!");
          v26 = sub_10000C050(3u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
LABEL_50:
            sub_1000E09C0();
          }
        }
      }

      else
      {
        v12 = *(v7 + 16);
        if (!v12)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Unexpected packet fragment!");
          v19 = sub_10000C050(3u);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if ((*a2 & 0xF0) != *(v7 + 43))
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Invalid transaction number in fragment");
          v20 = sub_10000C050(3u);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        v13 = v3 - 1;
        v14 = *(v7 + 48) - v13;
        *(v7 + 48) = v14;
        if (v14 < 0)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Buffer overflow !");
          v24 = sub_10000C050(3u);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        memmove((v12 + *(v7 + 36)), a2 + 1, v13);
        v15 = *(v8 + 36) + v13;
        *(v8 + 36) = v15;
        v16 = *(v8 + 42) - 1;
        *(v8 + 42) = v16;
        if (v6 != 12)
        {
          if (v13 == *(v8 + 56))
          {
            return;
          }

          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("CONTINUE fragment has invalid packet length");
          v25 = sub_10000C050(3u);
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (v16)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Incorrect number of packet fragments - dropping packet!");
          v17 = sub_10000C050(3u);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        sub_1001FA434(a1, *(v8 + 16), v15);
      }

LABEL_56:
      v28 = *(v8 + 16);
      if (v28)
      {
        sub_10000C1E8(v28);
        *(v8 + 16) = 0;
      }

      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Packet received on invalid CID");
      v11 = sub_10000C050(3u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        sub_1000E09C0();
      }
    }
  }

  else
  {

    sub_1001FA434(a1, a2, v3);
  }
}

uint64_t sub_1001F629C(int *a1)
{
  v10 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Connect(addr=%:)", a1);
    v2 = sub_10000C050(3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (!sub_1001F44B4(a1, &v10))
  {
    return 126;
  }

  result = sub_10028F454(sub_1001F58E4, sub_1001F5B1C, sub_1001F5DE4, 25, a1, qword_100B5CD50 + 32, &v10, &unk_100AE6500);
  if (!result)
  {
    v4 = qword_100B5CD50;
    ++*(qword_100B5CD50 + 101);
    v5 = *(v4 + 98);
    if (*(v4 + 98))
    {
      v6 = 0;
      v7 = v10;
      for (i = (*(v4 + 16) + 52); *(i - 7); i += 16)
      {
        if (v5 == ++v6)
        {
          return 0;
        }
      }

      result = 0;
      *(i - 26) = v6 + 1;
      v9 = *a1;
      *(i - 10) = *(a1 + 2);
      *(i - 6) = v9;
      *(i - 7) = v7;
      *(i - 8) = -1;
      *i = -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F6464(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Accept(a2dpHandle=%d,accept=%B)", a1, a2);
    v4 = sub_10000C050(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0;
  if (sub_1001F45A0(a1, buf))
  {
    return 408;
  }

  v6 = *buf;
  v5 = sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, *buf, qword_100B5CD50 + 32, a2, &unk_100AE6500);
  if (!v5 && (a2 & 1) != 0)
  {
    return 0;
  }

  sub_1001F6860(v6);
  return v5;
}

void *sub_1001F65C4(void *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  ++*(v7 + 101);
  v8 = sub_1001F47C0(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v23 = 0;
  v22 = 0;
  *(v8 + 34) = a3;
  if (sub_10000C240())
  {
    sub_10000AF54("ConnectCfmAcp: %!", a4);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return sub_1001F6860(a1);
  }

  v10 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return sub_1001F6860(a1);
  }

  for (i = *(qword_100B5CD50 + 16) + 28; *(i + 10) != a1; i += 64)
  {
    if (!--v10)
    {
      return sub_1001F6860(a1);
    }
  }

  v13 = *i;
  v23 = *(i + 4);
  v22 = v13;
  if (a4)
  {
    sub_1001F6860(a1);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CONNECT_CFM(addr=%:,result=%!)", &v22, a4);
    v14 = sub_10000C050(3u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_10000C0FC();
      *buf = 136446210;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    v16 = *(qword_100B5CD50 + 98);
    if (*(qword_100B5CD50 + 98))
    {
      v17 = *(qword_100B5CD50 + 16);
      while (!v17[19] || v17[19] != a1)
      {
        v17 += 32;
        if (!--v16)
        {
          goto LABEL_25;
        }
      }

      v19 = 0;
      v21 = *v17;
      return (*(*(qword_100B5CD50 + 24) + 8))(&v22, v21, v19);
    }

LABEL_25:
    v19 = 120;
  }

  else
  {
    v19 = 408;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v19);
    v20 = sub_10000C050(3u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v21 = 0;
  return (*(*(qword_100B5CD50 + 24) + 8))(&v22, v21, v19);
}

void *sub_1001F6860(void *result)
{
  if (dword_100BCE23C)
  {
    result = sub_1001F47C0(result);
    if (result)
    {
      v1 = result;
      result = result[1];
      if (result)
      {
        do
        {
          v2 = result[1];
          sub_1000BB9CC(result);
          result = v2;
        }

        while (v2);
      }

      v1[1] = 0;
      *(v1 + 40) = 0;
      *(v1 + 19) = 0;
    }
  }

  return result;
}

uint64_t sub_1001F68C0(int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Disconnect(a2dpHandle=%d)", a1);
    v2 = sub_10000C050(3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0;
  if (sub_1001F45A0(a1, buf))
  {
    return 122;
  }

  else
  {
    return sub_10029104C(*buf, 436);
  }
}

uint64_t sub_1001F69AC(int a1, _BYTE *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Discover(a2dpHandle=%d)", a1);
    v4 = sub_10000C050(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v16 = 0;
  v5 = sub_1001F45A0(a1, &v16);
  if (v5)
  {
    v6 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Discover_Req\n\tTransaction=%d\n\tRSP=0x.4x\n", v6);
      v7 = sub_10000C050(3u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_10000C0FC();
        *buf = 136446210;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = v16;
    v10 = sub_1001F47C0(v16);
    v11 = sub_1001F6BC0(v10);
    v12 = v11;
    if (a2)
    {
      *a2 = v11;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Discover_Req\n\tTransaction=%d\n\tRSP=0x0000\n", v12);
      v13 = sub_10000C050(3u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10000C0FC();
        *buf = 136446210;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_100201224(v9, v12);
  }

  return v6;
}

uint64_t sub_1001F6BC0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 46) + 1;
    *(a1 + 46) = v1;
    return v1 & 0xF;
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Signal was NULL");
      v3 = sub_10000C050(3u);
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001F6C3C(int a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetCap(a2dp handle=%d,seid=%d)", a1, v4);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  *buf = 0;
  result = sub_1001F45A0(a1, buf);
  if (!result)
  {
    v8 = *buf;
    v9 = sub_1001F47C0(*buf);
    v10 = sub_1001F6BC0(v9);
    if (a3)
    {
      *a3 = v10;
    }

    *(qword_100B5CD50 + 99) = v4;
    return sub_100200B48(v8, 2, v10, v4);
  }

  return result;
}

uint64_t sub_1001F6D74(int a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetAllCaps(a2dpHandle=%d:,seid=%d)", a1, v4);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v14 = 0;
  v7 = sub_1001F45A0(a1, &v14);
  if (!v7)
  {
    v8 = v14;
    v9 = sub_1001F47C0(v14);
    v10 = sub_1001F6BC0(v9);
    if (a3)
    {
      *a3 = v10;
    }

    *(qword_100B5CD50 + 99) = v4;
    v7 = sub_100200B48(v8, 12, v10, v4);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetAllCaps returning %d", v7);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10000C0FC();
      *buf = 136446210;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v7;
}

uint64_t sub_1001F6F28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, _WORD *a7)
{
  v9 = a5;
  v11 = a3;
  v12 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_SetConfig(a2dpHandle=%d,remoteSEID=%d,localSEID=%d,caps=0x%x,numCaps=%d)", a1, v12, v11, a4, v9);
    v14 = sub_10000C050(3u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v40 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v38 = 0;
  v15 = sub_1001F45A0(a1, &v38);
  if (!v15)
  {
    if (!*(qword_100B5CD50 + 96))
    {
      return 120;
    }

    v16 = 0;
    v17 = *qword_100B5CD50;
    v18 = 255;
    while (*(v17 + v16 + 25) != v11)
    {
      v16 += 40;
      --v18;
      if (40 * *(qword_100B5CD50 + 96) == v16)
      {
        return 120;
      }
    }

    if (!v18)
    {
      return 120;
    }

    if (*(v17 + v16 + 16))
    {
      sub_1000D660C();
      if (*(v17 + v16 + 16))
      {
        return 118;
      }
    }

    v37 = (v17 + v16 + 16);
    if (sub_10000C240())
    {
      sub_10000AF54("In SetConfig, allocating endpoint");
      v20 = sub_10000C050(3u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_10000C0FC();
        *buf = 136446210;
        v40 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v22 = sub_1001F7280(v12);
    if (!v22)
    {
      return 2902;
    }

    v23 = v38;
    v24 = qword_100B5CD50;
    if (qword_100B5CD50)
    {
      v25 = v22;
      if (*(qword_100B5CD50 + 98))
      {
        v26 = 0;
        v27 = (*(qword_100B5CD50 + 16) + 38);
        while (1)
        {
          v28 = *v27;
          v27 += 32;
          if (v28 == v38)
          {
            break;
          }

          if (*(qword_100B5CD50 + 98) == ++v26)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        LOBYTE(v26) = -1;
      }
    }

    else
    {
      LOBYTE(v26) = -1;
      v25 = v22;
    }

    *(v25 + 135) = v26;
    v29 = *(v24 + 96);
    if (*(v24 + 96))
    {
      v30 = 0;
      v31 = (*v24 + 25);
      while (1)
      {
        v32 = *v31;
        v31 += 40;
        if (v32 == v11)
        {
          break;
        }

        if (v29 == ++v30)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      LOBYTE(v30) = -1;
    }

    *(v25 + 136) = v30;
    *a7 = sub_1001F73E4(v25);
    v33 = sub_1001F47C0(v23);
    v34 = sub_1001F6BC0(v33);
    v35 = v34;
    if (a6)
    {
      *a6 = v34;
    }

    v36 = sub_1001F4328(a4, v9, v37, (v17 + v16 + 32));
    if (v36)
    {
      v15 = v36;
    }

    else
    {
      v15 = sub_100201FC0(v23, v35, v12, v11, *v37, v9);
      if (!v15)
      {
LABEL_41:
        *(v25 + 133) = v35;
        return v15;
      }
    }

    sub_1001F4290(v37, v9);
    *(v25 + 132) = 0;
    *v25 = 0;
    *(v25 + 128) = 0;
    sub_1001C3A30(0);
    *(v25 + 134) = -256;
    LOBYTE(v35) = -1;
    goto LABEL_41;
  }

  return v15;
}

uint64_t sub_1001F7280(int a1)
{
  if (*(qword_100B5CD50 + 97))
  {
    v2 = 0;
    v3 = *(qword_100B5CD50 + 8);
    while (*(v3 + 132))
    {
      ++v2;
      v3 += 144;
      if (v2 >= *(qword_100B5CD50 + 97))
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Allocating endpoint at index: %d for seid: %d", v2, a1);
      v5 = sub_10000C050(3u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v8 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(v3 + 132) = a1;
    *(v3 + 128) = 0;
    *v3 = 0;
    *(v3 + 137) = -1;
    *(v3 + 133) = -65281;
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Did not allocate endpoint");
      v4 = sub_10000C050(3u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1001F73E4(uint64_t a1)
{
  if (*(qword_100B5CD50 + 97))
  {
    v2 = 0;
    v3 = *(qword_100B5CD50 + 8) - 144;
    while (1)
    {
      v3 += 144;
      if (v3 == a1)
      {
        break;
      }

      if (*(qword_100B5CD50 + 97) == ++v2)
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("In GetHandleFromRemote, found handle for seid: %d, returning %d", *(a1 + 132), v2 + 1);
      v6 = sub_10000C050(3u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v9 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return (v2 + 1);
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("In GetHandleFromRemote, couldn't find handle");
      v4 = sub_10000C050(3u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }
}

uint64_t sub_1001F7534(int a1, _BYTE *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Open(handle=%d)", a1);
    v4 = sub_10000C050(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = (v5 + 144 * (a1 - 1));
  if (!v6[134])
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_Open called on handle %d when it's in idle state. Aborting.", a1);
      v10 = sub_10000C050(3u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  v7 = *(v5 + 144 * (a1 - 1) + 135);
  if (v7 == 255)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(qword_100B5CD50 + 16) + (v7 << 6);
  }

  v11 = sub_1001F6BC0(v8);
  v12 = v11;
  if (a2)
  {
    *a2 = v11;
  }

  result = sub_100200B48(*(v8 + 38), 6, v11, v6[132]);
  if (!result)
  {
    v6[133] = v12;
  }

  return result;
}

uint64_t sub_1001F76F0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_OpenRsp(transaction=%d,handle=%d,error=%d)", v5, a2, v3);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) > (a2 - 1))
  {
    v7 = *(qword_100B5CD50 + 8);
    if (v7)
    {
      v8 = *(v7 + 144 * (a2 - 1) + 135);
      if (v8 != 255)
      {
        v9 = *(qword_100B5CD50 + 16);
        if (v9)
        {
          return sub_100200DB8(*(v9 + (v8 << 6) + 38), 6u, v5, v3);
        }
      }
    }
  }

  return 120;
}

uint64_t sub_1001F7840(_WORD *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Start(handles=0x%x,num=%x)", a1, v4);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v29 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    v7 = sub_100007618(v4, 0xD978BE6AuLL);
    if (!v7)
    {
      return 106;
    }

    v8 = v7;
    if (*(qword_100B5CD50 + 97) > (*a1 - 1))
    {
      v9 = *(qword_100B5CD50 + 8);
      if (v9)
      {
        v10 = *(v9 + 144 * (*a1 - 1) + 135);
        if (v10 != 255)
        {
          v11 = *(qword_100B5CD50 + 16);
          if (v11)
          {
            v12 = v11 + (v10 << 6);
            v13 = *(v12 + 38);
            v14 = sub_1001F6BC0(v12);
            v15 = v14;
            if (a3)
            {
              *a3 = v14;
            }

            if (!v4)
            {
LABEL_27:
              v26 = sub_10020106C(v13, 7, v15, v8, v4);
LABEL_30:
              sub_10000C1E8(v8);
              return v26;
            }

            v16 = 0;
            v17 = qword_100B5CD50;
            while (1)
            {
              v18 = v16;
              v19 = a1[v16] - 1;
              if (*(v17 + 97) <= v19)
              {
                break;
              }

              v20 = *(v17 + 8);
              if (!v20)
              {
                break;
              }

              v21 = (v20 + 144 * v19);
              if (v21[134] != 3)
              {
                v26 = 408;
                goto LABEL_30;
              }

              v22 = v21[132];
              if (!v22)
              {
                sub_1000D660C();
                v17 = qword_100B5CD50;
                v22 = v21[132];
              }

              *(v8 + v18) = v22;
              v21[133] = v15;
              if (v18)
              {
                if (*(v17 + 97) <= (a1[v18] - 1) || (v23 = *(v17 + 8)) == 0 || (v24 = *(v23 + 144 * (a1[v18] - 1) + 135), v24 == 255))
                {
                  v25 = 0;
                }

                else
                {
                  v25 = *(v17 + 16) + (v24 << 6);
                }

                if (v25 != v12)
                {
                  v26 = 101;
                  goto LABEL_30;
                }
              }

              v16 = v18 + 1;
              if (v4 <= (v18 + 1))
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    v26 = 120;
    goto LABEL_30;
  }

  return 408;
}

uint64_t sub_1001F7ABC(uint64_t a1, __int16 *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_StartRsp(transaction=%d,handles=0x%x,numHandles=%d,errorHandle=%d,error=%d)", a1, a2, a3, a4, a5);
    v10 = sub_10000C050(3u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v11 = *(qword_100B5CD50 + 97);
  if (v11 <= (*a2 - 1))
  {
    return 120;
  }

  v12 = *(qword_100B5CD50 + 8);
  if (!v12)
  {
    return 120;
  }

  v13 = *(v12 + 144 * (*a2 - 1) + 135);
  if (v13 == 255)
  {
    return 120;
  }

  v14 = *(qword_100B5CD50 + 16);
  if (!v14)
  {
    return 120;
  }

  if (a5)
  {
    if (v11 > (a4 - 1))
    {
      v15 = *(v12 + 144 * (a4 - 1) + 136);
      if (v15 != 255)
      {
        if (*qword_100B5CD50)
        {
          v16 = *(*qword_100B5CD50 + 40 * v15 + 25);
          return sub_1001F7CCC(*(v14 + (v13 << 6) + 38), a1, a2, a3, v16, a5);
        }
      }
    }

LABEL_21:
    v16 = 0;
    return sub_1001F7CCC(*(v14 + (v13 << 6) + 38), a1, a2, a3, v16, a5);
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v18 = a3;
  v19 = a2;
  while (1)
  {
    v20 = *v19++;
    v21 = v20 - 1;
    if (v11 <= (v20 - 1))
    {
      break;
    }

    if (*(v12 + 144 * v21 + 134) - 3 >= 2)
    {
      goto LABEL_24;
    }

    if (!--v18)
    {
      goto LABEL_21;
    }
  }

  sub_1000D660C();
  if (MEMORY[0x86] == 3)
  {
    return 101;
  }

LABEL_24:
  sub_1000D660C();
  return 101;
}

uint64_t sub_1001F7CCC(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v9 = sub_10020115C(a1, 7u, a2, a5, a6);
  v10 = v9;
  if (!v6 && !v9)
  {
    sub_100200704(a3, v7, 4);
  }

  return v10;
}

uint64_t sub_1001F7D30(int a1, unsigned __int8 *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Close(handle=%d)", a1);
    v4 = sub_10000C050(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = (v5 + 144 * (a1 - 1));
  if (v6[134] - 3 > 1)
  {
    return 408;
  }

  v7 = v6[135];
  if (v7 == 255)
  {
    return 408;
  }

  v8 = *(qword_100B5CD50 + 16);
  if (!v8)
  {
    return 408;
  }

  v9 = v8 + (v7 << 6);
  v10 = *(v9 + 46) + 1;
  *(v9 + 46) = v10;
  v11 = v10 & 0xF;
  if (a2)
  {
    *a2 = v11;
  }

  result = sub_100200B48(*(v9 + 38), 8, v10 & 0xF, v6[132]);
  if (!result)
  {
    v6[133] = v11;
  }

  return result;
}

uint64_t sub_1001F7EA8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CloseRsp(transaction=%d,handle=%d)", v5, a2);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) > (a2 - 1))
  {
    v7 = *(qword_100B5CD50 + 8);
    if (v7)
    {
      v8 = *(v7 + 144 * (a2 - 1) + 135);
      if (v8 != 255)
      {
        v9 = *(qword_100B5CD50 + 16);
        if (v9)
        {
          return sub_100200DB8(*(v9 + (v8 << 6) + 38), 8u, v5, v3);
        }
      }
    }
  }

  return 120;
}

uint64_t sub_1001F7FF4(uint64_t a1, int a2)
{
  v3 = a1;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_AbortRsp(transaction=%d,handle=%d)", v3, a2);
    v4 = sub_10000C050(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a2 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = v5 + 144 * (a2 - 1);
  v7 = *(v6 + 135);
  if (v7 == 255)
  {
    return 120;
  }

  v8 = *(qword_100B5CD50 + 16);
  if (!v8)
  {
    return 120;
  }

  result = sub_100200DB8(*(v8 + (v7 << 6) + 38), 0xAu, v3, 0);
  if (!result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Abort_Rsp\n\tTransaction=%d\n\tErrorCode=0x%.2x\n\tStreamHandles=%d\n", v3, 0, a2);
      v10 = sub_10000C050(3u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_10000C0FC();
        *buf = 136446210;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    result = sub_10029104C(*(v6 + 128), 436);
    if (result)
    {
      if (*(v6 + 128))
      {
        v12 = result;
        if (sub_10000C240())
        {
          sub_10000AF54("Error disconnecting media transport - %!", v12);
          v13 = sub_10000C050(3u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        *(v6 + 128) = 0;
        sub_1001C3A30(0);
      }

      sub_1001F8264(v6);
      LOBYTE(v16) = v3;
      v17 = v6;
      v15 = &v16;
      LOWORD(v14) = 16;
      return sub_1000228C0(sub_1001F849C, &v14, v6);
    }
  }

  return result;
}

void sub_1001F8264(unsigned int *a1)
{
  if (!a1 || *(a1 + 136) == 255)
  {
    v2 = 0;
  }

  else
  {
    v2 = *qword_100B5CD50 + 40 * *(a1 + 136);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ResetRemote %lx", a1);
    v3 = sub_10000C050(3u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v4 = *a1;
  if (v4)
  {
    sub_100304F30(v4);
    *a1 = 0;
  }

  sub_1001F9250(a1, 0);
  *(a1 + 132) = 0;
  sub_10029104C(*(a1 + 64), 436);
  if (v2)
  {
    v5 = *(v2 + 29);
    if ((v5 & 0x3F) != 0)
    {
      *(v2 + 29) = v5 - 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Endpoint Remotes: %d", *(v2 + 29));
        v6 = sub_10000C050(3u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_10000C0FC();
          *buf = 136446210;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v9 = (v2 + 24);
      v8 = *(v2 + 24);
      v10 = *(qword_100B5CD50 + 8);
      if ((v10 + 144 * v8) != a1)
      {
        v11 = *(qword_100B5CD50 + 97);
        if (v8 < v11)
        {
          do
          {
            v12 = v10 + 144 * v8;
            v13 = *(v12 + 137);
            v9 = (v12 + 137);
            v8 = v13;
          }

          while ((v10 + 144 * v13) != a1 && v8 < v11);
        }
      }

      if (v8 != 255)
      {
        *v9 = *(v10 + 144 * v8 + 137);
      }

      *(a1 + 135) = -1;
      *(a1 + 137) = -1;
      v5 = *(v2 + 29);
    }

    if ((v5 & 0x3F) == 0)
    {
      sub_1001F57F4(v2);
    }
  }
}

uint64_t sub_1001F849C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 1);
  if (sub_10000C240())
  {
    v4 = sub_1001F73E4(v3);
    sub_10000AF54("AVDTP_ABORT_CFM(transaction=%d,handle=%d,error=%d)", v2, v4, 0);
    v5 = sub_10000C050(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *v3 = 0;
  v6 = *(*(qword_100B5CD50 + 24) + 176);
  v7 = sub_1001F73E4(v3);
  return v6(v2, v7, 0);
}

uint64_t sub_1001F85A8(__int16 *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Suspend(handles=0x%x,numHandles=%d)", a1, v4);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v29 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    if (!*(*(qword_100B5CD50 + 24) + 120))
    {
      sub_1000D660C();
      if (!*(*(qword_100B5CD50 + 24) + 120))
      {
        return 101;
      }
    }

    v7 = v4;
    v8 = sub_100007618(v4, 0x5EE8C3F6uLL);
    if (!v8)
    {
      return 106;
    }

    v9 = v8;
    if (*(qword_100B5CD50 + 97) > (*a1 - 1))
    {
      v10 = *(qword_100B5CD50 + 8);
      if (v10)
      {
        v11 = *(v10 + 144 * (*a1 - 1) + 135);
        if (v11 != 255)
        {
          v12 = *(qword_100B5CD50 + 16);
          if (v12)
          {
            v13 = v12 + (v11 << 6);
            v14 = *(v13 + 46) + 1;
            *(v13 + 46) = v14;
            v15 = v14 & 0xF;
            if (a3)
            {
              *a3 = v14 & 0xF;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("AVDT_Suspend_Req\n\tTransaction=%d\n\tRSP=0x0000\n", v15);
              v16 = sub_10000C050(3u);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = sub_10000C0FC();
                *buf = 136446210;
                v29 = v17;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if (!v4)
            {
LABEL_29:
              v26 = sub_10020106C(*(v13 + 38), 9, v15, v9, v4);
LABEL_32:
              sub_10000C1E8(v9);
              return v26;
            }

            v18 = v9;
            while (1)
            {
              v19 = *a1++;
              v20 = v19 - 1;
              if (*(qword_100B5CD50 + 97) <= (v19 - 1))
              {
                break;
              }

              v21 = *(qword_100B5CD50 + 8);
              if (!v21)
              {
                break;
              }

              v22 = v21 + 144 * v20;
              if (*(v22 + 134) != 4)
              {
                v26 = 408;
                goto LABEL_32;
              }

              v23 = *(v22 + 135);
              if (v23 == 255)
              {
                v24 = 0;
              }

              else
              {
                v24 = *(qword_100B5CD50 + 16) + (v23 << 6);
              }

              if (v13 != v24)
              {
                v26 = 101;
                goto LABEL_32;
              }

              v25 = *(v22 + 132);
              if (!v25)
              {
                sub_1000D660C();
                v25 = *(v22 + 132);
              }

              *v18++ = v25;
              *(v22 + 133) = v15;
              sub_10029F2B4(*(v22 + 128));
              if (!--v7)
              {
                goto LABEL_29;
              }
            }
          }
        }
      }
    }

    v26 = 120;
    goto LABEL_32;
  }

  return 408;
}

uint64_t sub_1001F889C(uint64_t a1, __int16 *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v7 = *(qword_100B5CD50 + 97);
  if (v7 <= (*a2 - 1))
  {
    return 120;
  }

  v8 = *(qword_100B5CD50 + 8);
  if (!v8)
  {
    return 120;
  }

  v9 = *(v8 + 144 * (*a2 - 1) + 135);
  if (v9 == 255)
  {
    return 120;
  }

  v10 = *(qword_100B5CD50 + 16);
  if (!v10)
  {
    return 120;
  }

  if (a5)
  {
    if (v7 > (a4 - 1))
    {
      v13 = *(v8 + 144 * (a4 - 1) + 136);
      if (v13 != 255)
      {
        if (*qword_100B5CD50)
        {
          v14 = *(*qword_100B5CD50 + 40 * v13 + 25);
LABEL_19:
          v20 = *(v10 + (v9 << 6) + 38);

          return sub_1001F8A58(v20, a1, a2, a3, v14, a5);
        }
      }
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v16 = a3;
  v17 = a2;
  while (1)
  {
    v18 = *v17++;
    v19 = v18 - 1;
    if (v7 <= (v18 - 1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_AVDTP_SuspendRsp remote nil");
        v21 = sub_10000C050(3u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }
      }

      return 101;
    }

    if (*(v8 + 144 * v19 + 134) != 4)
    {
      break;
    }

    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_AVDTP_SuspendRsp after stopped, check race transaction");
    v22 = sub_10000C050(3u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      sub_1000E09C0();
    }
  }

  return 101;
}

uint64_t sub_1001F8A58(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a2;
  v11 = a1;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDT_Suspend_Rsp\n\tTransaction=%d\n\tErrorCode=0x%.2x\n", v10, v6);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = sub_10020115C(v11, 9u, v10, v7, v6);
  v14 = v13;
  if (!v6 && !v13)
  {
    sub_100200704(a3, v8, 3);
  }

  return v14;
}

uint64_t sub_1001F8B80(__int16 *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Transition(handles=0x%x, numHandles=%d", a1, v4);
    v6 = sub_10000C050(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (!*(*(qword_100B5CD50 + 24) + 128))
  {
    sub_1000D660C();
    if (!*(*(qword_100B5CD50 + 24) + 128))
    {
      return 101;
    }
  }

  v7 = v4;
  v8 = sub_1001BBBD8(v4, 0xCC40B7FEuLL);
  v9 = v8;
  if (*(qword_100B5CD50 + 97) <= (*a1 - 1) || (v10 = *(qword_100B5CD50 + 8)) == 0 || (v11 = *(v10 + 144 * (*a1 - 1) + 135), v11 == 255) || (v12 = *(qword_100B5CD50 + 16)) == 0)
  {
    v24 = 120;
    if (!v8)
    {
      return v24;
    }

LABEL_28:
    sub_10000C1E8(v9);
    return v24;
  }

  v13 = v12 + (v11 << 6);
  v14 = *(v13 + 46) + 1;
  *(v13 + 46) = v14;
  v15 = v14 & 0xF;
  if (a3)
  {
    *a3 = v14 & 0xF;
  }

  if (v4)
  {
    v16 = v8;
    do
    {
      v17 = *a1++;
      v18 = v17 - 1;
      if (*(qword_100B5CD50 + 97) <= (v17 - 1))
      {
        break;
      }

      v19 = *(qword_100B5CD50 + 8);
      if (!v19)
      {
        break;
      }

      v20 = v19 + 144 * v18;
      if (*(v20 + 134) != 4)
      {
        break;
      }

      v21 = *(v20 + 135);
      v22 = v21 == 255 ? 0 : *(qword_100B5CD50 + 16) + (v21 << 6);
      if (v13 != v22)
      {
        break;
      }

      v23 = *(v20 + 132);
      if (!v23)
      {
        sub_1000D660C();
        v23 = *(v20 + 132);
      }

      *v16++ = v23;
      *(v20 + 133) = v15;
      sub_10029F2B4(*(v20 + 128));
      --v7;
    }

    while (v7);
  }

  v24 = sub_10020106C(*(v13 + 38), 254, v15, v9, v4);
  if (v9)
  {
    goto LABEL_28;
  }

  return v24;
}

uint64_t sub_1001F8DF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4, void ***a5, unsigned __int8 *a6)
{
  v8 = a4;
  v10 = a2;
  v12 = a4 + a2;
  *a6 = a4 + a2;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v14 = (a3 + 16 * i);
      v15 = *v14;
      if (v15 == 4 || v15 == 7)
      {
        *a6 = --v12;
      }

      else
      {
        v17 = a2;
        v18 = a1;
        if (a2)
        {
          do
          {
            v19 = *v18;
            v18 += 16;
            if (*v14 == v19)
            {
              *a6 = --v12;
            }

            --v17;
          }

          while (v17);
        }
      }
    }
  }

  v20 = sub_1001BBBD8(16 * v12, 0x105204037B82EA9uLL);
  *a5 = v20;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = *a6;
  if (!(v21 | v8 | v10))
  {
    return 0;
  }

  v22 = v10 != 0;
  v23 = v8 != 0;
  while (1)
  {
    if (v22)
    {
      LOBYTE(v10) = v10 - 1;
      v24 = &a1[16 * v10];
      goto LABEL_19;
    }

    if (!v23)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Mis-Count of merged caps: %d", *a6);
        v38 = sub_10000C050(3u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }
      }

      goto LABEL_54;
    }

    LOBYTE(v8) = v8 - 1;
    v24 = (a3 + 16 * v8);
    v31 = *v24;
    if (v31 == 4 || v31 == 7)
    {
      LOBYTE(v10) = 0;
      goto LABEL_36;
    }

    v33 = *a6;
    if (v21 >= v33)
    {
      break;
    }

    v34 = &(*a5)[2 * v21];
    v35 = v33 - v21;
    do
    {
      v36 = *v34;
      v34 += 2;
      if (v31 == v36)
      {
        v24 = 0;
      }

      --v35;
    }

    while (v35);
LABEL_19:
    if (v24)
    {
      break;
    }

LABEL_36:
    v23 = v8 != 0;
    v22 = v10 != 0;
    if (!v21 && !v8 && !v10)
    {
      return 0;
    }
  }

  if (v21 > 0)
  {
    v25 = &(*a5)[2 * --v21];
    *v25 = *v24;
    v26 = *v24;
    v27 = v26 > 8;
    v28 = (1 << v26) & 0x10E;
    if (v27 || v28 == 0)
    {
      if (v24[3])
      {
        v30 = sub_100007618(v24[3], 0xF330D2A9uLL);
        v25[1] = v30;
        if (!v30)
        {
          goto LABEL_54;
        }

        memmove(v30, *(v24 + 1), v24[3]);
      }

      else
      {
        v25[1] = 0;
      }
    }

    goto LABEL_36;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Mis-Count of merged caps: %d", *a6);
    v39 = sub_10000C050(3u);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_53:
      sub_1000E09C0();
    }
  }

LABEL_54:
  sub_1001F4290(a5, *a6);
  *a5 = 0;
  *a6 = 0;
  return 106;
}

uint64_t sub_1001F90AC(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v4 = a1 - 1;
  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = v5 + 144 * (a1 - 1);
  v10 = *(v9 + 136) == 255 ? 0 : *qword_100B5CD50 + 40 * *(v9 + 136);
  v12 = *(v9 + 135);
  if (v12 == 255)
  {
    return 120;
  }

  result = 120;
  if (v10)
  {
    v13 = *(qword_100B5CD50 + 16);
    if (v13)
    {
      v14 = v13 + (v12 << 6);
      if (a4)
      {
        sub_1001F4290((v10 + 16), *(v10 + 32));
        *(v10 + 32) = 0;
        *(v9 + 132) = 0;
        *v9 = 0;
        *(v9 + 128) = 0;
        sub_1001C3A30(0);
        *(v9 + 137) = -1;
        *(v9 + 133) = -65281;
        v15 = *(v14 + 38);

        return sub_100202160(v15, 3, v8, v7, v6);
      }

      else
      {
        result = sub_100202160(*(v14 + 38), 3, a2, a3, 0);
        if (!result)
        {
          sub_1001F9250(v9, 1);
          sub_1001F4290((v10 + 8), *(v10 + 31));
          result = 0;
          v16 = *(v10 + 16);
          *(v10 + 31) = *(v10 + 32);
          *(v10 + 8) = v16;
          *(v10 + 16) = 0;
          ++*(v10 + 29);
          *(v10 + 32) = 0;
          *(v9 + 137) = *(v10 + 24);
          *(v10 + 24) = v4;
        }
      }
    }
  }

  return result;
}

void sub_1001F9250(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_10000C240())
  {
    v4 = sub_1001F73E4(a1);
    v5 = sub_100200790(*(a1 + 134));
    v6 = sub_100200790(v2);
    sub_10000AF54("State transition Handle %d: %s -> %s", v4, v5, v6);
    v7 = sub_10000C050(3u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = *(a1 + 134);
  if (v2 == 4)
  {
    if (v8 != 4)
    {
      v9 = *(a1 + 128);
      v10 = 12;
      v11 = 70;
LABEL_9:
      sub_10029ED68(v9, v10, v11);
    }
  }

  else if (v8 == 4)
  {
    v9 = *(a1 + 128);
    v10 = 9;
    v11 = -1;
    goto LABEL_9;
  }

  *(a1 + 134) = v2;
}

uint64_t sub_1001F9384(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v4 = *(qword_100B5CD50 + 8);
  if (!v4)
  {
    return 120;
  }

  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = (v4 + 144 * (a1 - 1));
  v9 = v8[136] == 255 ? 0 : *qword_100B5CD50 + 40 * v8[136];
  v10 = v8[135];
  if (v10 == 255)
  {
    return 120;
  }

  result = 120;
  if (v9)
  {
    v12 = *(qword_100B5CD50 + 16);
    if (v12)
    {
      if (v8[134] == 3)
      {
        if (a4)
        {
          v14 = *(v9 + 32);
          v13 = (v9 + 32);
          sub_1001F4290(v13 - 2, v14);
          v15 = v13;
        }

        else
        {
          sub_1001F4290((v9 + 8), *(v9 + 31));
          v15 = (v9 + 32);
          v16 = *(v9 + 32);
          *(v9 + 8) = *(v9 + 16);
          *(v9 + 31) = v16;
          *(v9 + 16) = 0;
        }

        *v15 = 0;
        v17 = *(v12 + (v10 << 6) + 38);

        return sub_100202160(v17, 5, v7, v6, v5);
      }

      return 408;
    }
  }

  return result;
}

uint64_t sub_1001F94C8(__int16 a1, unsigned int a2, const void *a3, unsigned int a4, int a5)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = v5 + 144 * (a1 - 1);
  v7 = *(v6 + 135);
  if (v7 == 255)
  {
    return 120;
  }

  v8 = *(qword_100B5CD50 + 16);
  if (!v8)
  {
    return 120;
  }

  v9 = *(v6 + 134);
  v10 = v9 > 6;
  v11 = (1 << v9) & 0x61;
  if (!v10 && v11 != 0)
  {
    return 408;
  }

  return sub_100202230(*(v8 + (v7 << 6) + 38), a2, a3, a4, a5);
}

uint64_t sub_1001F9554(int a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = *(v5 + 144 * (a1 - 1) + 135);
  if (v6 == 255)
  {
    return 120;
  }

  v7 = *(qword_100B5CD50 + 16);
  if (!v7)
  {
    return 120;
  }

  result = sub_1002023C4(*(v7 + (v6 << 6) + 38), a2, a3, a4);
  if (!result)
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("AVDTP_DelayReport_Rsp: Transaction=%d, ErrorCode=0x%x,StreamHandles=%d", a2, a4, a1);
      v11 = sub_10000C050(3u);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136446210;
        v13 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001F969C(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  return !sub_1001F44B4(a1, &v3) && !sub_10028DAA8(v3, &v2) && *(v2 + 227) != 0;
}

uint64_t sub_1001F96F4(__int16 a1, uint64_t a2)
{
  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 0;
  }

  v2 = *(qword_100B5CD50 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 144 * (a1 - 1);
  if (*(v3 + 134) != 4)
  {
    return 408;
  }

  result = sub_10001FF10(v3 + 16, 3u);
  if (!result)
  {
    result = sub_10001F968((v3 + 16), a2, 0xCuLL, 2u);
    if (!result)
    {
      if (!*(a2 + 12) || (result = sub_10001F968((v3 + 16), (a2 + 12), 1uLL, 2u), !result))
      {
        result = sub_10001F968((v3 + 16), *(a2 + 24), *(a2 + 16), 2u);
        if (!result)
        {
          result = sub_1000B7EDC(sub_1001F97E8, *(v3 + 128), 0, v3 + 16, 1);
          if (!result)
          {
            *(v3 + 24) = v3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1001F97F0(uint64_t result)
{
  if (*(qword_100B5CD50 + 97) > (result - 1))
  {
    v1 = *(qword_100B5CD50 + 8);
    if (v1)
    {
      sub_10029E6A0(*(v1 + 144 * (result - 1) + 128));
    }
  }
}

uint64_t sub_1001F9828(__int16 a1)
{
  if (*(qword_100B5CD50 + 97) > (a1 - 1) && (v1 = *(qword_100B5CD50 + 8)) != 0)
  {
    v2 = sub_10029DF2C(*(v1 + 144 * (a1 - 1) + 128));
    if (v2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FreeHeadOfList Failed Status %d", v2);
        v3 = sub_10000C050(3u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid AVDTP Handle");
      v4 = sub_10000C050(3u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 2903;
  }

  return v2;
}

uint64_t sub_1001F9914(uint64_t *a1, void ***a2, unsigned __int8 *a3)
{
  *a2 = 0;
  *a3 = 0;
  v75 = 0;
  v76 = 0;
  v4 = *(a1 + 6);
  if (sub_10000C240())
  {
    sub_10000AF54("ParseCaps");
    v5 = sub_10000C050(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v74 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*(a1 + 15))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v10 = *(a1 + 5);
    v11 = *(a1 + 6);
    if (v10 <= v11)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    v12 = 0;
    v7 = 0;
    while (1)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3478, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v13 = *a1;
      v14 = v11 + 1;
      *(a1 + 6) = v14;
      v6 = *(v13 + v11);
      if (v10 <= v14)
      {
        *(a1 + 15) = 1;
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3480, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
        v16 = 0;
      }

      else
      {
        v15 = v11 + 2;
        *(a1 + 6) = v15;
        v12 = *(v13 + v14);
        v16 = v10 - v15;
      }

      if (v16 >= v12)
      {
        *(a1 + 6) += v12;
      }

      else
      {
        *(a1 + 15) = 1;
      }

      v17 = 1;
      if (!v12 && v6 <= 8 && ((1 << v6) & 0x107) != 0)
      {
        v18 = *(&v75 + v6);
        *(&v75 + v6) = v18 + 1;
        v17 = v18 == 0;
      }

      v7 += v17;
      if (*(a1 + 15))
      {
        break;
      }

      v10 = *(a1 + 5);
      v11 = *(a1 + 6);
      if (v10 <= v11)
      {
        goto LABEL_25;
      }
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3477, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
  if (*(a1 + 15))
  {
    v8 = 0;
    v9 = a2;
    goto LABEL_135;
  }

LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("ParseCaps - got count %d", v7);
    v19 = sub_10000C050(3u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = sub_10000C0FC();
      *buf = 136446210;
      v74 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!v7 || (v21 = sub_1001BBBD8(16 * v7, 0x105204037B82EA9uLL), (*a2 = v21) != 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("numCaps = %d", v7);
      v22 = sub_10000C050(3u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10000C0FC();
        *buf = 136446210;
        v74 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v4 > *(a1 + 5))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3507, "(size_t)(pos) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v4;
    v24 = 1;
    if (v7)
    {
      v25 = 0;
      v8 = 0;
      v9 = a2;
      while (1)
      {
        if (*(a1 + 15))
        {
          goto LABEL_135;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3513, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v26 = *v9;
        v27 = *(a1 + 5);
        v28 = *(a1 + 6);
        if (v27 <= v28)
        {
          break;
        }

        v29 = *a1;
        *(a1 + 6) = v28 + 1;
        v6 = *(v29 + v28);
        if (v27 <= v28 + 1)
        {
          goto LABEL_42;
        }

        v30 = *a1;
        *(a1 + 6) = v28 + 2;
        v31 = *(v30 + v28 + 1);
LABEL_43:
        if (sub_10000C240())
        {
          sub_10000AF54("got capability %d", v6);
          v32 = sub_10000C050(3u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = sub_10000C0FC();
            *buf = 136446210;
            v74 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v34 = &v26[2 * v25];
        *v34 = v6;
        if (v6 > 4)
        {
          if (v6 <= 6)
          {
            if (v6 == 5)
            {
              if (v31 != 1)
              {
                goto LABEL_131;
              }
            }

            else if (!v31)
            {
              goto LABEL_131;
            }

            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3586, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3586, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
              goto LABEL_87;
            }

            v46 = *(a1 + 6);
            if (*(a1 + 5) <= v46)
            {
LABEL_87:
              *(a1 + 15) = 1;
            }

            else
            {
              v47 = *a1;
              *(a1 + 6) = v46 + 1;
              *(v34 + 1) = *(v47 + v46);
            }

            LOBYTE(v31) = v31 - 1;
LABEL_89:
            if (v31)
            {
              *(v34 + 3) = v31;
              v48 = sub_100007618(v31, 0x15CFA6CDuLL);
              v34[1] = v48;
              if (!v48)
              {
                goto LABEL_130;
              }

              if (*(a1 + 14) != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3596, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v49 = v48;
              v50 = *a1;
              v51 = *(a1 + 6);
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3596, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
                v52 = 0;
              }

              else
              {
                v52 = *(a1 + 5) - v51;
              }

              if (v52 >= v31)
              {
                v53 = (v50 + v51);
                v54 = &v49[v31];
                do
                {
                  v55 = *v53++;
                  *v49++ = v55;
                }

                while (v49 < v54);
                *(a1 + 6) += v31;
                v9 = a2;
              }

              else
              {
                *(a1 + 15) = 1;
                v9 = a2;
              }
            }

            goto LABEL_123;
          }

          if (v6 != 7)
          {
            if (v6 != 8)
            {
              goto LABEL_89;
            }

LABEL_57:
            if (v31)
            {
              goto LABEL_131;
            }

            v35 = *(&v75 + v6) - 1;
            *(&v75 + v6) = v35;
            v25 -= v35 != 0;
            goto LABEL_123;
          }

LABEL_59:
          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3540, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3540, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
            goto LABEL_72;
          }

          v36 = *(a1 + 6);
          if (*(a1 + 5) <= v36)
          {
LABEL_72:
            *(a1 + 15) = 1;
          }

          else
          {
            v37 = *a1;
            *(a1 + 6) = v36 + 1;
            *(v34 + 1) = *(v37 + v36);
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3541, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3541, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
            goto LABEL_78;
          }

          v38 = *(a1 + 6);
          if (*(a1 + 5) <= v38)
          {
LABEL_78:
            *(a1 + 15) = 1;
          }

          else
          {
            v39 = *a1;
            *(a1 + 6) = v38 + 1;
            *(v34 + 2) = *(v39 + v38);
          }

          *(v34 + 3) = v31 - 2;
          if (v31 < 2)
          {
LABEL_131:
            v24 = 0;
            v65 = 24;
            goto LABEL_134;
          }

          if (v31 != 2)
          {
            v40 = sub_100007618((v31 - 2), 0xDAA1D221uLL);
            v34[1] = v40;
            if (!v40)
            {
              goto LABEL_130;
            }

            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3552, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v41 = v40;
            v70 = *a1;
            v42 = *(a1 + 6);
            v43 = *(v34 + 3);
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3552, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
              v44 = 0;
            }

            else
            {
              v44 = *(a1 + 5) - v42;
            }

            v45 = *(v34 + 3);
            if (v44 >= v45)
            {
              if (v43)
              {
                v56 = (v70 + v42);
                v57 = &v41[v43];
                do
                {
                  v58 = *v56++;
                  *v41++ = v58;
                }

                while (v41 < v57);
                LOWORD(v45) = *(v34 + 3);
              }

              *(a1 + 6) += v45;
              goto LABEL_123;
            }

            goto LABEL_122;
          }

          v34[1] = 0;
          goto LABEL_123;
        }

        if (v6 - 1 < 2)
        {
          goto LABEL_57;
        }

        if (v6 != 3)
        {
          if (v6 != 4)
          {
            goto LABEL_89;
          }

          goto LABEL_59;
        }

        if (v31 != 3)
        {
          goto LABEL_131;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3564, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3564, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
        }

        else
        {
          v59 = *(a1 + 6);
          if (*(a1 + 5) > v59)
          {
            v60 = *a1;
            *(a1 + 6) = v59 + 1;
            *(v34 + 1) = *(v60 + v59);
            goto LABEL_111;
          }
        }

        *(a1 + 15) = 1;
LABEL_111:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3565, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3565, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
LABEL_116:
          *(a1 + 15) = 1;
          goto LABEL_117;
        }

        v61 = *(a1 + 6);
        if (*(a1 + 5) <= v61)
        {
          goto LABEL_116;
        }

        v62 = *a1;
        *(a1 + 6) = v61 + 1;
        *(v34 + 2) = *(v62 + v61);
LABEL_117:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3566, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3566, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
LABEL_122:
          *(a1 + 15) = 1;
          goto LABEL_123;
        }

        v63 = *(a1 + 6);
        if (*(a1 + 5) <= v63)
        {
          goto LABEL_122;
        }

        v64 = *a1;
        *(a1 + 6) = v63 + 1;
        *(v34 + 3) = *(v64 + v63);
LABEL_123:
        ++v8;
        if (++v25 >= v7)
        {
          v65 = 0;
          v24 = 1;
          goto LABEL_134;
        }
      }

      *(a1 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3514, "uint8_t ParseCaps(OI_BYTE_STREAM *, OI_AVDTP_CAP **, uint8_t *)");
LABEL_42:
      v31 = 0;
      *(a1 + 15) = 1;
      goto LABEL_43;
    }

    v7 = 0;
    v8 = 0;
    v65 = 0;
    goto LABEL_133;
  }

  if (!sub_10000C240())
  {
    v8 = 0;
    v24 = 0;
    v65 = 129;
LABEL_133:
    v9 = a2;
    goto LABEL_134;
  }

  sub_10000AF54("ParseCaps: Could not allocate memory for %d capabilities", v7);
  v66 = sub_10000C050(3u);
  v9 = a2;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    sub_1000E09C0();
  }

  v8 = 0;
LABEL_130:
  v24 = 0;
  v65 = 129;
LABEL_134:
  if (*(a1 + 15))
  {
LABEL_135:
    if (sub_10000C240())
    {
      sub_10000AF54("ParseCaps: length error");
      v67 = sub_10000C050(3u);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v65 = 17;
    goto LABEL_139;
  }

  if (v24)
  {
    v65 = 0;
    *a3 = v7;
    return v65;
  }

LABEL_139:
  if (sub_10000C240())
  {
    sub_10000AF54("Caps not parsed correctly - good: %d error: 0x%2x", v8, v65);
    v68 = sub_10000C050(3u);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1001F4290(v9, v8);
  return v65;
}

void sub_1001FA434(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v22 = 0;
  if (!a2)
  {
    v21 = "data";
    goto LABEL_47;
  }

  if (!a3)
  {
    v21 = "(dataLen) > 0";
LABEL_47:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5009, v21);
  }

  v23 = a2;
  v24 = a3;
  v27 = 1;
  v25 = a3;
  v4 = *a2;
  v5 = v4 >> 4;
  if (a3 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error parsing AVDTP Signal header");
      v6 = sub_10000C050(3u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_7;
  }

  v26 = 2;
  v22 = a2[1];
  v7 = v4 & 3;
  if ((v4 & 3) != 0)
  {
    sub_100200AEC(a1, v4 >> 4);
  }

  if (sub_10000C240())
  {
    v8 = sub_100304858(&v22, 1);
    sub_10000AF54("AVDTP receive %s msgType:%d transaction:%d)\n", v8, v7, v5);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10000C0FC();
      *buf = 136446210;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v11 = sub_1001FA874;
  switch(v22)
  {
    case 1u:
      goto LABEL_37;
    case 2u:
      v12 = sub_1001FAE2C;
      goto LABEL_36;
    case 3u:
      v12 = sub_1001FB334;
      goto LABEL_36;
    case 4u:
      v12 = sub_1001FBA54;
      goto LABEL_36;
    case 5u:
      v12 = sub_1001FBE64;
      goto LABEL_36;
    case 6u:
      v12 = sub_1001FC3C8;
      goto LABEL_36;
    case 7u:
      v12 = sub_1001FC910;
      goto LABEL_36;
    case 8u:
      v12 = sub_1001FCE3C;
      goto LABEL_36;
    case 9u:
      v12 = sub_1001FD340;
      goto LABEL_36;
    case 0xAu:
      v12 = sub_1001FD9A4;
      goto LABEL_36;
    case 0xBu:
      v12 = sub_1001FDED4;
      goto LABEL_36;
    case 0xCu:
      v12 = sub_1001FE69C;
      goto LABEL_36;
    case 0xDu:
      v12 = sub_1001FE308;
      goto LABEL_36;
    default:
      if (v22 != 254)
      {
        if (v22 == 255)
        {
          if (v7)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Got general reject message");
              v13 = sub_10000C050(3u);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = sub_10000C0FC();
                *buf = 136446210;
                v29 = v14;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            return;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Unrecognized command %d!", v22);
            v20 = sub_10000C050(3u);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
LABEL_31:
              sub_1000E09C0();
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Unrecognized command %d!", v22);
          v15 = sub_10000C050(3u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }
        }

LABEL_7:
        sub_100200FD8(a1, v5, v22);
        return;
      }

      v12 = sub_1001FD854;
LABEL_36:
      v11 = v12;
LABEL_37:
      v16 = v11(a1, &v23, v5, v7);
      if (v16)
      {
        v17 = v16;
        if (sub_10000C240())
        {
          v18 = sub_100304858(&v22, 1);
          sub_10000AF54("Error on receipt (%s) - %d", v18, v17);
          v19 = sub_10000C050(3u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      return;
  }
}

uint64_t sub_1001FA874(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received DISCOVER - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v45 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v10 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v11 = *(qword_100B5CD50 + 16);
    while (!v11[19] || v11[19] != v7)
    {
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }

    v13 = *v11;
    if (!a4)
    {
LABEL_27:
      v14 = *qword_100B5CD50;
      v15 = sub_100007618(4 * *(qword_100B5CD50 + 96), 0x100004052888210uLL);
      v16 = v15;
      if (v15)
      {
        v17 = *(qword_100B5CD50 + 96);
        if (*(qword_100B5CD50 + 96))
        {
          v18 = 0;
          v19 = (v14 + 29);
          do
          {
            v20 = *(v19 - 4);
            if (v20)
            {
              v21 = &v15[4 * v18];
              *v21 = *(v19 - 3);
              v21[2] = v20;
              v21[3] = *v19 >= *(v19 - 1);
              ++v18;
            }

            v19 += 40;
            --v17;
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        LODWORD(a2) = 0;
      }

      else
      {
        v18 = 0;
        LODWORD(a2) = 129;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Returning %d endpoints", v18);
        v39 = sub_10000C050(3u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = sub_10000C0FC();
          *buf = 136446210;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002012AC(v7, a3, v16, v18, a2);
      if (v16)
      {
        v41 = v16;
LABEL_64:
        sub_10000C1E8(v41);
        return a2;
      }

      return a2;
    }
  }

  else
  {
LABEL_17:
    sub_1000D660C();
    v13 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  if (a4 == 3)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3403, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3403, "uint8_t AVDTPRecv_Discover(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    }

    else
    {
      v36 = *(a2 + 12);
      if (*(a2 + 10) > v36)
      {
        v37 = *a2;
        *(a2 + 12) = v36 + 1;
        v38 = *(v37 + v36);
        if (v38)
        {
          LOBYTE(a2) = v38;
        }

        else
        {
          LOBYTE(a2) = 24;
        }

        goto LABEL_56;
      }
    }

    *(a2 + 15) = 1;
    LOBYTE(a2) = 17;
LABEL_56:
    (*(*(qword_100B5CD50 + 24) + 24))(a3, v13, 0, 0, a2);
    return a2;
  }

  if (a4 != 2)
  {
LABEL_22:
    LOBYTE(a2) = 0;
    return a2;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3357, "uint8_t AVDTPRecv_Discover(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    goto LABEL_22;
  }

  v22 = *(a2 + 10) - *(a2 + 12);
  v23 = (v22 + ((v22 & 0x8000) >> 15)) >> 1;
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = sub_100007618(4 * ((v22 + ((v22 & 0x8000) >> 15)) >> 1), 0x100004052888210uLL);
  if (v24)
  {
    v25 = v24;
    v26 = v23;
    v27 = v24 + 1;
    do
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3375, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3375, "uint8_t AVDTPRecv_Discover(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
LABEL_71:
        *(a2 + 15) = 1;
        a2 = 17;
        goto LABEL_72;
      }

      v28 = *(a2 + 10);
      v29 = *(a2 + 12);
      if (v28 <= v29)
      {
        goto LABEL_71;
      }

      v30 = *a2;
      *(a2 + 12) = v29 + 1;
      v31 = *(v30 + v29);
      v27[1] = v31 >> 2;
      v27[2] = (v31 & 2) != 0;
      if (v28 <= v29 + 1)
      {
        goto LABEL_71;
      }

      *(a2 + 12) = v29 + 2;
      v32 = *(v30 + v29 + 1);
      *(v27 - 1) = v32 & 0xF0;
      *v27 = (v32 & 8) != 0;
      if (sub_10000C240())
      {
        v33 = "SNK";
        if (!*v27)
        {
          v33 = "SRC";
        }

        sub_10000AF54("seid %2d - inUse %B - mediaType %d - dir %s", v27[1], v27[2], *(v27 - 1), v33);
        v34 = sub_10000C050(3u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = sub_10000C0FC();
          *buf = 136446210;
          v45 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v27 += 4;
      --v26;
    }

    while (v26);
    if (*(a2 + 15))
    {
      a2 = 17;
    }

    else
    {
      a2 = 0;
    }

LABEL_72:
    (*(*(qword_100B5CD50 + 24) + 24))(a3, v13, v25, v23, a2);
    v41 = v25;
    goto LABEL_64;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Error - out of memory");
    v43 = sub_10000C050(3u);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  LOBYTE(a2) = -127;
  return a2;
}

uint64_t sub_1001FAE2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a2)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received GET CAPS - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C && (v10 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v11 = *(qword_100B5CD50 + 16);
    while (!v11[19] || v11[19] != v7)
    {
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }

    v13 = *v11;
    if (!a4)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_17:
    sub_1000D660C();
    v13 = 0;
    if (!a4)
    {
LABEL_25:
      if (*(v6 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3672, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(v6 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3672, "uint8_t AVDTPRecv_GetCaps(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
LABEL_40:
        *(v6 + 15) = 1;
        LODWORD(v6) = 17;
LABEL_41:
        sub_100201DC8(v7, 2u, a3, 0, 0, v6);
        return v6;
      }

      v18 = *(v6 + 12);
      if (*(v6 + 10) <= v18)
      {
        goto LABEL_40;
      }

      v19 = *v6;
      *(v6 + 12) = v18 + 1;
      v20 = *(v19 + v18) >> 2;
      v21 = *(qword_100B5CD50 + 96);
      if (!*(qword_100B5CD50 + 96))
      {
        goto LABEL_51;
      }

      v22 = (*qword_100B5CD50 + 31);
      v23 = 255;
      while (*(v22 - 6) != v20)
      {
        v22 += 40;
        --v23;
        if (!--v21)
        {
          goto LABEL_51;
        }
      }

      if (!v23)
      {
LABEL_51:
        if (sub_10000C240())
        {
          sub_10000AF54("Get caps received for unknown seid %d", v20);
          v29 = sub_10000C050(3u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        LODWORD(v6) = 18;
        goto LABEL_41;
      }

      if (*(v22 - 4) || !*(v22 - 23) || *(v22 - 3) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Returning Capabilities");
          v24 = sub_10000C050(3u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(v22 - 1))
        {
          v26 = 0;
          v27 = 0;
          do
          {
            sub_1001FEC48(v7, *(v22 - 31) + v26);
            ++v27;
            v28 = *(v22 - 1);
            v26 += 16;
          }

          while (v27 < v28);
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v32 = *(v22 - 31);
        v33 = v7;
        v34 = a3;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("2-Play Source: Returning Config as Caps");
          v30 = sub_10000C050(3u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v32 = *(v22 - 23);
        LODWORD(v28) = *v22;
        v33 = v7;
        v34 = a3;
      }

      sub_100201DC8(v33, 2u, v34, v32, v28, 0);
LABEL_64:
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  if (a4 == 3)
  {
    if (*(v6 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3655, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(v6 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3655, "uint8_t AVDTPRecv_GetCaps(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    }

    else
    {
      v15 = *(v6 + 12);
      if (*(v6 + 10) > v15)
      {
        v16 = *v6;
        *(v6 + 12) = v15 + 1;
        v17 = *(v16 + v15);
        if (v17)
        {
          LOBYTE(v6) = v17;
        }

        else
        {
          LOBYTE(v6) = 24;
        }

        goto LABEL_33;
      }
    }

    *(v6 + 15) = 1;
    LOBYTE(v6) = 17;
LABEL_33:
    (*(*(qword_100B5CD50 + 24) + 32))(a3, v13, *(qword_100B5CD50 + 99), 0, 0, v6);
    return v6;
  }

  if (a4 != 2)
  {
    goto LABEL_64;
  }

  *buf = 0;
  v36 = 0;
  v6 = sub_1001F9914(v6, buf, &v36);
  v14 = v36;
  (*(*(qword_100B5CD50 + 24) + 32))(a3, v13, *(qword_100B5CD50 + 99), *buf, v36, v6);
  sub_1001F4290(buf, v14);
  return v6;
}

uint64_t sub_1001FB334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received SET CONFIG - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v60 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v10 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v11 = *(qword_100B5CD50 + 16);
    while (!v11[19] || v11[19] != v7)
    {
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }

    v14 = *v11;
    if (!a4)
    {
LABEL_36:
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3804, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3804, "uint8_t AVDTPRecv_SetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
        v24 = *(a2 + 14);
        *(a2 + 15) = 1;
        if (v24 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3805, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }
      }

      else
      {
        v26 = *(a2 + 12);
        if (*(a2 + 10) > v26)
        {
          v27 = *a2;
          *(a2 + 12) = v26 + 1;
          v28 = *(v27 + v26) >> 2;
          if (*(a2 + 10) > (v26 + 1))
          {
            v29 = *a2;
            *(a2 + 12) = v26 + 2;
            v30 = *(v29 + v26 + 1) >> 2;
            goto LABEL_50;
          }

LABEL_49:
          v30 = 0;
          *(a2 + 15) = 1;
LABEL_50:
          v58 = 0;
          v57 = 0;
          v36 = sub_1001F9914(a2, &v58, &v57);
          if (v36)
          {
            if (v36 == 17)
            {
              v20 = 35;
            }

            else
            {
              v20 = v36;
            }

            goto LABEL_64;
          }

          v37 = *(qword_100B5CD50 + 96);
          if (!*(qword_100B5CD50 + 96))
          {
            goto LABEL_63;
          }

          v38 = (*qword_100B5CD50 + 32);
          v39 = 255;
          while (*(v38 - 7) != v28)
          {
            v38 += 40;
            --v39;
            if (!--v37)
            {
              goto LABEL_63;
            }
          }

          if (v39)
          {
            if (*(v38 - 3) >= *(v38 - 4))
            {
              v20 = 19;
            }

            else
            {
              if (*(v38 - 2))
              {
                goto LABEL_62;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("In Recv_SetConfig, allocating endpoint");
                v43 = sub_10000C050(3u);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = sub_10000C0FC();
                  *buf = 136446210;
                  v60 = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              v45 = sub_1001F7280(v30);
              if (!v45)
              {
LABEL_62:
                v20 = 129;
              }

              else
              {
                v46 = v45;
                v47 = qword_100B5CD50;
                if (qword_100B5CD50 && *(qword_100B5CD50 + 98))
                {
                  v48 = 0;
                  v49 = (*(qword_100B5CD50 + 16) + 38);
                  while (1)
                  {
                    v50 = *v49;
                    v49 += 32;
                    if (v50 == v7)
                    {
                      break;
                    }

                    if (*(qword_100B5CD50 + 98) == ++v48)
                    {
                      goto LABEL_90;
                    }
                  }

                  *(v45 + 135) = v48;
                  if (v48 != 0xFF)
                  {
                    v51 = *(v47 + 96);
                    if (*(v47 + 96))
                    {
                      v52 = 0;
                      v53 = (*v47 + 25);
                      while (1)
                      {
                        v54 = *v53;
                        v53 += 40;
                        if (v54 == v28)
                        {
                          break;
                        }

                        if (v51 == ++v52)
                        {
                          goto LABEL_97;
                        }
                      }
                    }

                    else
                    {
LABEL_97:
                      LOBYTE(v52) = -1;
                    }

                    *(v45 + 136) = v52;
                    *(v38 - 2) = v58;
                    *v38 = v57;
                    v55 = sub_1001F73E4(v45);
                    (*(*(qword_100B5CD50 + 24) + 40))(a3, v14, v28, v30, v55, v58, v57);
                    return 0;
                  }
                }

                else
                {
LABEL_90:
                  *(v45 + 135) = -1;
                }

                *(v45 + 132) = 0;
                *v45 = 0;
                *(v45 + 128) = 0;
                sub_1001C3A30(0);
                *(v46 + 137) = -1;
                *(v46 + 133) = -65281;
                v20 = 128;
              }
            }
          }

          else
          {
LABEL_63:
            v20 = 18;
          }

LABEL_64:
          sub_1001F4290(&v58, v57);
          sub_100202160(v7, 3, a3, 0, v20);
          return v20;
        }

        *(a2 + 15) = 1;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3805, "uint8_t AVDTPRecv_SetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
      v28 = 0;
      goto LABEL_49;
    }
  }

  else
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", 0);
      v13 = sub_10000C050(3u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v14 = 0;
    if (!a4)
    {
      goto LABEL_36;
    }
  }

  if (a4 == 3)
  {
    v22 = sub_1002007B4(a3, v7);
    if (!v22)
    {
      v25 = 0;
      v20 = 1;
LABEL_74:
      v40 = qword_100B5CD50;
      if (*(qword_100B5CD50 + 97) > (v22 - 1))
      {
        v41 = *(qword_100B5CD50 + 8);
        if (v41)
        {
          if (*(v41 + 144 * (v22 - 1) + 136) != 255 && *qword_100B5CD50)
          {
            v42 = *qword_100B5CD50 + 40 * *(v41 + 144 * (v22 - 1) + 136);
            sub_1001F4290((v42 + 16), *(v42 + 32));
            *(v42 + 32) = 0;
            v40 = qword_100B5CD50;
          }
        }
      }

      (*(*(v40 + 24) + 48))(a3, v22, v25, v20);
      return v20;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3777, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3777, "uint8_t AVDTPRecv_SetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
      v23 = *(a2 + 14);
      *(a2 + 15) = 1;
      if (v23 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3778, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v31 = *(a2 + 12);
      if (*(a2 + 10) > v31)
      {
        v32 = *a2;
        *(a2 + 12) = v31 + 1;
        if (*(a2 + 10) > (v31 + 1))
        {
          v33 = *(v32 + v31);
          v34 = *a2;
          *(a2 + 12) = v31 + 2;
          v35 = *(v34 + v31 + 1);
LABEL_68:
          if (v35)
          {
            v25 = v33;
          }

          else
          {
            v25 = 0;
          }

          if (v35)
          {
            v20 = v35;
          }

          else
          {
            v20 = 24;
          }

          goto LABEL_74;
        }

LABEL_67:
        v33 = 0;
        *(a2 + 15) = 1;
        v35 = 17;
        goto LABEL_68;
      }

      *(a2 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3778, "uint8_t AVDTPRecv_SetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    goto LABEL_67;
  }

  if (a4 != 2)
  {
    return 0;
  }

  v15 = sub_1002007B4(a3, v7);
  v16 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 97) > (v15 - 1) && (v17 = *(qword_100B5CD50 + 8)) != 0 && (v18 = v17 + 144 * (v15 - 1), *(v18 + 136) != 255) && *qword_100B5CD50)
  {
    v19 = *qword_100B5CD50 + 40 * *(v18 + 136);
    sub_1001F9250(v18, 1);
    sub_1001F4290((v19 + 8), *(v19 + 31));
    v20 = 0;
    v21 = *(v19 + 16);
    *(v19 + 31) = *(v19 + 32);
    *(v19 + 8) = v21;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    ++*(v19 + 29);
    *(v18 + 137) = *(v19 + 24);
    *(v19 + 24) = v15 - 1;
    v16 = qword_100B5CD50;
  }

  else
  {
    v20 = 1;
  }

  (*(*(v16 + 24) + 48))(a3, v15, 0, v20);
  return v20;
}

uint64_t sub_1001FBA54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  v35 = 0;
  v34 = 0;
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received GET CONFIG - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_9:
      if (a4 != 3)
      {
        if (a4 == 2)
        {
          v10 = sub_1002007B4(a3, v7);
          if (v10)
          {
            a2 = sub_1001F9914(a2, &v35, &v34);
            v11 = v35;
            v12 = v34;
          }

          else
          {
            v12 = 0;
            v11 = 0;
            a2 = 18;
          }

          (*(*(qword_100B5CD50 + 24) + 56))(a3, v10, v11, v12, a2);
          sub_1001F4290(&v35, v12);
        }

        else
        {
          LOBYTE(a2) = 0;
        }

        return a2;
      }

      v13 = sub_1002007B4(a3, v7);
      if (v13)
      {
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4055, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a2 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4055, "uint8_t AVDTPRecv_GetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
        }

        else
        {
          v30 = *(a2 + 12);
          if (*(a2 + 10) > v30)
          {
            v31 = *a2;
            *(a2 + 12) = v30 + 1;
            v32 = *(v31 + v30);
            if (v32)
            {
              LOBYTE(a2) = v32;
            }

            else
            {
              LOBYTE(a2) = 24;
            }

            goto LABEL_44;
          }
        }

        *(a2 + 15) = 1;
        LOBYTE(a2) = 17;
      }

      else
      {
        LOBYTE(a2) = 1;
      }

LABEL_44:
      (*(*(qword_100B5CD50 + 24) + 56))(a3, v13, 0, 0, a2);
      return a2;
    }
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4070, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4070, "uint8_t AVDTPRecv_GetConfig(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
  }

  else
  {
    v14 = *(a2 + 12);
    if (*(a2 + 10) > v14)
    {
      v15 = *a2;
      *(a2 + 12) = v14 + 1;
      v16 = *(v15 + v14) >> 2;
      v17 = *(qword_100B5CD50 + 96);
      if (!*(qword_100B5CD50 + 96))
      {
        goto LABEL_48;
      }

      v18 = *qword_100B5CD50;
      v19 = 10200;
      while (*(v18 + 25) != v16)
      {
        v18 += 40;
        v19 -= 40;
        if (!--v17)
        {
          goto LABEL_48;
        }
      }

      if (v19)
      {
        LODWORD(a2) = 0;
        v20 = 1;
      }

      else
      {
LABEL_48:
        v18 = 0;
        v20 = 0;
        LODWORD(a2) = 18;
      }

      goto LABEL_32;
    }
  }

  v16 = 0;
  v18 = 0;
  v20 = 0;
  *(a2 + 15) = 1;
  LODWORD(a2) = 17;
LABEL_32:
  if (sub_10000C240())
  {
    v21 = sub_10020093C(v16, v7);
    v22 = sub_1001F73E4(v21);
    sub_10000AF54("AVDT_GetConfiguration_Rsp\n\tTransaction=%d\n\tStreamHandle=%d\n\tError=0x%.2x\n\tConfigParams=\n", a3, v22, a2);
    v23 = sub_10000C050(3u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_10000C0FC();
      *buf = 136446210;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v20)
  {
    v25 = *(v18 + 8);
    v26 = *(v18 + 31);
    v27 = v7;
    v28 = a3;
    v29 = 0;
  }

  else
  {
    v27 = v7;
    v28 = a3;
    v25 = 0;
    v26 = 0;
    v29 = a2;
  }

  sub_100201DC8(v27, 4u, v28, v25, v26, v29);
  return a2;
}

uint64_t sub_1001FBE64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v48 = 0;
  v47 = 0;
  if (!dword_100BCE23C)
  {
    return 49;
  }

  v7 = a1;
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received RECONFIGURE - %s", v8);
    v10 = sub_10000C050(3u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v50 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v11 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v12 = (*(qword_100B5CD50 + 16) + 38);
    while (1)
    {
      v13 = *v12;
      v12 += 32;
      if (v13 == v7)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    sub_1000D660C();
  }

  if (!a4)
  {
    if (!*(*(qword_100B5CD50 + 24) + 136))
    {
      v9 = 25;
      goto LABEL_76;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3970, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3970, "uint8_t AVDTPRecv_Reconfigure(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    }

    else
    {
      v33 = *(a2 + 12);
      if (*(a2 + 10) > v33)
      {
        v34 = *a2;
        *(a2 + 12) = v33 + 1;
        v35 = *(v34 + v33) >> 2;
        goto LABEL_48;
      }
    }

    v35 = 0;
    *(a2 + 15) = 1;
LABEL_48:
    v9 = sub_1001F9914(a2, &v48, &v47);
    if (!v9)
    {
      v36 = sub_10020093C(v35, v7);
      if (v36 && (v37 = v36, *(v36 + 136) != 255) && *qword_100B5CD50)
      {
        v38 = *qword_100B5CD50 + 40 * *(v36 + 136);
        if (*(v36 + 134) == 3)
        {
          if (!*(v38 + 16))
          {
            v39 = v48;
            v40 = v47;
            if (!sub_1001F8DF0(v48, v47, *(v38 + 8), *(v38 + 31), (v38 + 16), (v38 + 32)))
            {
              v45 = *(*(qword_100B5CD50 + 24) + 136);
              v46 = sub_1001F73E4(v37);
              v45(a3, v46, v39, v40);
              v9 = 0;
              goto LABEL_77;
            }
          }

          v9 = 129;
        }

        else
        {
          v9 = 49;
        }

        sub_1001F4290((v38 + 16), *(v38 + 32));
        *(v38 + 32) = 0;
      }

      else
      {
        v9 = 20;
      }
    }

LABEL_76:
    sub_100202160(v7, 5, a3, 0, v9);
    LODWORD(v40) = v47;
LABEL_77:
    sub_1001F4290(&v48, v40);
    return v9;
  }

  if (a4 != 3)
  {
    if (a4 != 2)
    {
      return 0;
    }

    v14 = sub_1002007B4(a3, v7);
    v15 = v14;
    v16 = qword_100B5CD50;
    if (v14)
    {
      if (*(qword_100B5CD50 + 97) > (v14 - 1) && (v17 = *(qword_100B5CD50 + 8)) != 0 && (v18 = *(v17 + 144 * (v14 - 1) + 136), v18 != 255) && *qword_100B5CD50)
      {
        v19 = *qword_100B5CD50 + 40 * v18;
        sub_1001F4290((v19 + 8), *(v19 + 31));
        v9 = 0;
        v20 = *(v19 + 16);
        *(v19 + 31) = *(v19 + 32);
        *(v19 + 8) = v20;
        *(v19 + 16) = 0;
        *(v19 + 32) = 0;
        v16 = qword_100B5CD50;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    v24 = *(*(v16 + 24) + 144);
    if (v24)
    {
      v25 = a3;
      v26 = v15;
      v27 = 0;
LABEL_73:
      v24(v25, v26, v27, v9);
      return v9;
    }

    return v9;
  }

  v21 = sub_1002007B4(a3, v7);
  if (!v21)
  {
    v23 = 0;
    v9 = 1;
    goto LABEL_66;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3939, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3939, "uint8_t AVDTPRecv_Reconfigure(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    v22 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v22 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3940, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_58;
  }

  v28 = *(a2 + 12);
  if (*(a2 + 10) <= v28)
  {
    *(a2 + 15) = 1;
LABEL_58:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3940, "uint8_t AVDTPRecv_Reconfigure(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    goto LABEL_59;
  }

  v29 = *a2;
  *(a2 + 12) = v28 + 1;
  if (*(a2 + 10) <= (v28 + 1))
  {
LABEL_59:
    v30 = 0;
    *(a2 + 15) = 1;
    v32 = 17;
    goto LABEL_60;
  }

  v30 = *(v29 + v28);
  v31 = *a2;
  *(a2 + 12) = v28 + 2;
  v32 = *(v31 + v28 + 1);
LABEL_60:
  if (v32)
  {
    v9 = v32;
  }

  else
  {
    v9 = 24;
  }

  if (v32)
  {
    v23 = v30;
  }

  else
  {
    v23 = 0;
  }

LABEL_66:
  v41 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 97) > (v21 - 1))
  {
    v42 = *(qword_100B5CD50 + 8);
    if (v42)
    {
      if (*(v42 + 144 * (v21 - 1) + 136) != 255 && *qword_100B5CD50)
      {
        v43 = *qword_100B5CD50 + 40 * *(v42 + 144 * (v21 - 1) + 136);
        sub_1001F4290((v43 + 16), *(v43 + 32));
        *(v43 + 32) = 0;
        v41 = qword_100B5CD50;
      }
    }
  }

  v24 = *(*(v41 + 24) + 144);
  if (v24)
  {
    v25 = a3;
    v26 = v21;
    v27 = v23;
    goto LABEL_73;
  }

  return v9;
}

uint64_t sub_1001FC3C8(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received OPEN - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v39 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_9:
      if (a4 != 3)
      {
        if (a4 == 2)
        {
          v10 = sub_1002007B4(a3, a1);
          v11 = v10;
          v12 = qword_100B5CD50;
          if (!v10)
          {
            v23 = 1;
            goto LABEL_43;
          }

          if (*(qword_100B5CD50 + 97) <= (v10 - 1) || (v13 = *(qword_100B5CD50 + 8)) == 0)
          {
            v23 = 18;
            goto LABEL_43;
          }

          v14 = v13 + 144 * (v10 - 1);
          if (sub_10000C240())
          {
            v15 = sub_1001F73E4(v14);
            sub_10000AF54("CreateMediaTransport(%d)\n", v15);
            v16 = sub_10000C050(3u);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = sub_10000C0FC();
              *buf = 136446210;
              v39 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v18 = *(v14 + 135);
          v12 = qword_100B5CD50;
          if (v18 == 255 || (v19 = *(qword_100B5CD50 + 16)) == 0)
          {
LABEL_24:
            v23 = 129;
LABEL_43:
            (*(*(v12 + 24) + 64))(a3, v11, 0, v23);
            return v23;
          }

          v20 = v19 + (v18 << 6);
          if (sub_10000C240())
          {
            sub_10000AF54("Opening media channel to %:\n", v20 + 28);
            v21 = sub_10000C050(3u);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = sub_10000C0FC();
              *buf = 136446210;
              v39 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (sub_10028F454(sub_1001FF38C, sub_1001FF59C, sub_1001FF7A0, 25, v20 + 28, qword_100B5CD50 + 64, (v14 + 128), &unk_100AE6500))
          {
            v12 = qword_100B5CD50;
            goto LABEL_24;
          }

          sub_10028D5C0(*(v14 + 128), sub_100200410);
          *(v14 + 133) = a3;
          sub_1001F9250(v14, 2);
        }

        return 0;
      }

      v24 = sub_1002007B4(a3, a1);
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4147, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v11 = v24;
      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4147, "uint8_t AVDTPRecv_Open(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
      }

      else
      {
        v25 = *(a2 + 6);
        if (*(a2 + 5) > v25)
        {
          v26 = *a2;
          *(a2 + 6) = v25 + 1;
          v27 = *(v26 + v25);
LABEL_37:
          if (!v27)
          {
            v27 = 24;
          }

          if (v11)
          {
            v23 = v27;
          }

          else
          {
            v23 = 1;
          }

          v12 = qword_100B5CD50;
          goto LABEL_43;
        }
      }

      *(a2 + 15) = 1;
      v27 = 17;
      goto LABEL_37;
    }
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4166, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4166, "uint8_t AVDTPRecv_Open(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
  }

  else
  {
    v28 = *(a2 + 6);
    if (*(a2 + 5) > v28)
    {
      v29 = *a2;
      *(a2 + 6) = v28 + 1;
      v30 = sub_10020093C(*(v29 + v28) >> 2, a1);
      v31 = v30;
      if (v30 && *(v30 + 134) == 1)
      {
        sub_1001F9250(v30, 2);
        v32 = *(*(qword_100B5CD50 + 24) + 72);
        v33 = sub_1001F73E4(v31);
        v32(a3, v33);
        v23 = 0;
        if (*(qword_100B5CD50 + 103) != 1)
        {
          return v23;
        }
      }

      else
      {
        v23 = 49;
      }

      goto LABEL_50;
    }
  }

  v31 = 0;
  *(a2 + 15) = 1;
  v23 = 17;
LABEL_50:
  if (sub_10000C240())
  {
    v34 = sub_1001F73E4(v31);
    sub_10000AF54("AVDT_Open_Rsp\n\tTransaction=%d\n\tStreamHandle=%d\n\tError=0x%.2x\n", a3, v34, v23);
    v35 = sub_10000C050(3u);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = sub_10000C0FC();
      *buf = 136446210;
      v39 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100200DB8(a1, 6u, a3, v23);
  return v23;
}

uint64_t sub_1001FC910(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  memset(v36, 0, 124);
  if (sub_10000C240())
  {
    v8 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received START - %s", v8);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v35 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  v33 = 0;
  if (a4)
  {
    if (a4 != 3)
    {
      LOBYTE(v10) = 0;
      if (a4 == 2)
      {
        sub_1002009D0(a3, a1, v36, &v33);
        v11 = v33;
        if (v33)
        {
          sub_100200704(v36, v33, 4);
          v10 = 0;
        }

        else
        {
          v10 = 1;
        }

        (*(*(qword_100B5CD50 + 24) + 104))(a3, v36, v11, 0, v10);
      }

      return v10;
    }

    sub_1002009D0(a3, a1, v36, &v33);
    v12 = v33;
    if (v33)
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4233, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4233, "uint8_t AVDTPRecv_Start(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
        v13 = *(a2 + 14);
        *(a2 + 15) = 1;
        if (v13 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4234, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_55;
      }

      v22 = *(a2 + 6);
      if (*(a2 + 5) <= v22)
      {
        *(a2 + 15) = 1;
LABEL_55:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4234, "uint8_t AVDTPRecv_Start(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
        v16 = 0;
        goto LABEL_56;
      }

      v23 = *a2;
      *(a2 + 6) = v22 + 1;
      v16 = *(v23 + v22) >> 2;
      if (*(a2 + 5) <= (v22 + 1))
      {
LABEL_56:
        *(a2 + 15) = 1;
LABEL_57:
        v10 = 24;
        goto LABEL_58;
      }

      v24 = *a2;
      *(a2 + 6) = v22 + 2;
      if (*(v24 + v22 + 1) == 255)
      {
        v10 = 255;
        goto LABEL_58;
      }

      if (!*(v24 + v22 + 1))
      {
        goto LABEL_57;
      }

      v10 = 253;
    }

    else
    {
      v16 = 0;
      v10 = 1;
    }

LABEL_58:
    v30 = *(*(qword_100B5CD50 + 24) + 104);
    v31 = sub_100200A38(v16, a1);
    v30(a3, v36, v12, v31, v10);
    return v10;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4263, "uint8_t AVDTPRecv_Start(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
    v14 = 0;
LABEL_21:
    v15 = 0;
    LOBYTE(v10) = 24;
    goto LABEL_25;
  }

  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  v14 = v17 - v18;
  if ((v17 - v18) > 0x3Eu)
  {
    v15 = 0;
    LOBYTE(v10) = -127;
    goto LABEL_25;
  }

  if (*(a2 + 5) == v18)
  {
    goto LABEL_21;
  }

  if (v17 == v18)
  {
    v14 = 0;
    v15 = 0;
    LOBYTE(v10) = 0;
    goto LABEL_25;
  }

  v25 = 0;
  LOBYTE(v10) = 0;
  v15 = 0;
  while (1)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4271, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      break;
    }

    v26 = *(a2 + 6);
    if (*(a2 + 5) <= v26)
    {
      goto LABEL_62;
    }

    v27 = *a2;
    *(a2 + 6) = v26 + 1;
    v28 = *(v27 + v26) >> 2;
    v29 = sub_10020093C(v28, a1);
    *(v36 + v25) = sub_1001F73E4(v29);
    if (!v29)
    {
      LOBYTE(v10) = 18;
LABEL_51:
      v14 = ++v25;
      v15 = v28;
      goto LABEL_52;
    }

    if (*(v29 + 134) != 3)
    {
      LOBYTE(v10) = 49;
      goto LABEL_51;
    }

    ++v25;
LABEL_52:
    if (v25 >= v14)
    {
      goto LABEL_25;
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4271, "uint8_t AVDTPRecv_Start(OI_L2CAP_CID, OI_BYTE_STREAM *, uint8_t, uint8_t)");
LABEL_62:
  *(a2 + 15) = 1;
  LOBYTE(v10) = 17;
  v14 = v25;
LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDT_Start_Ind\n\tTransaction=%d\n\tStreamHandles=", a3);
    v19 = sub_10000C050(3u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = sub_10000C0FC();
      *buf = 136446210;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v21 = qword_100B5CD50;
  if ((*(qword_100B5CD50 + 103) & 1) != 0 || v10)
  {
    sub_1001F7CCC(a1, a3, v36, v14, v15, v10);
    if (!v10)
    {
      v21 = qword_100B5CD50;
      goto LABEL_32;
    }
  }

  else
  {
LABEL_32:
    (*(*(v21 + 24) + 96))(a3, v36, v14);
    LOBYTE(v10) = 0;
  }

  return v10;
}
uint64_t sub_100255544(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          v1 = 0;
          return v1 & 1;
        }
      }

      v1 = *(a1 + 304);
    }
  }

  return v1 & 1;
}

uint64_t sub_10025557C(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 153);
    }
  }

  return v1;
}

BOOL sub_1002555B4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC00; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

BOOL sub_1002555E4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC10; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

BOOL sub_100255614(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC28; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t sub_100255698(unsigned __int16 *a1)
{
  v1 = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (v1 != a1 || *(v1 + 54) == 7)
    {
      v1 = *(v1 + 5);
      if (!v1)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v1 = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (v1 != a1)
      {
        v1 = *(v1 + 5);
        if (!v1)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v1 = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (v1 != a1)
        {
          v1 = *(v1 + 5);
          if (!v1)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v1 = qword_100B5FC20;
        if (qword_100B5FC20)
        {
          while (v1 != a1)
          {
            v1 = *(v1 + 5);
            if (!v1)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v1 = qword_100B5FC00;
          if (!qword_100B5FC00)
          {
            return 0;
          }

          while (v1 != a1)
          {
            v1 = *(v1 + 5);
            if (!v1)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return *v1;
}

__int128 *sub_100255740(int a1)
{
  result = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (*(result + 54) == 7 || *(result + 1) != a1)
    {
      result = *(result + 5);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (*(result + 1) != a1)
      {
        result = *(result + 5);
        if (!result)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      result = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (*(result + 1) != a1)
        {
          result = *(result + 5);
          if (!result)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        result = qword_100B5FC20;
        if (qword_100B5FC20)
        {
          while (*(result + 1) != a1)
          {
            result = *(result + 5);
            if (!result)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          result = qword_100B5FC00;
          if (qword_100B5FC00)
          {
            while (*(result + 1) != a1)
            {
              result = *(result + 5);
              if (!result)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:
            result = &xmmword_100B5F8D8;
            if (DWORD1(xmmword_100B5F8D8) != a1)
            {
              if (DWORD1(xmmword_100B5FA50) == a1)
              {
                return &xmmword_100B5FA50;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10025581C(int a1, int a2)
{
  for (result = qword_100B5FC00; result; result = *(result + 40))
  {
    if (*(result + 56) != 7 && *(result + 58) == a1 && *(result + 59) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_10025585C(uint64_t a1)
{
  v1 = sub_1000E1FE8(a1);

  return sub_100255698(v1);
}

uint64_t sub_100255884(unint64_t a1)
{
  v1 = sub_10009A66C(a1);
  v3 = v1;
  v5 = BYTE6(v1);
  v4 = WORD2(v1);
  return sub_1000E5EA8(&v3);
}

uint64_t sub_1002558C0(_DWORD *a1)
{
  v1 = qword_100B5FBF0;
  if (!qword_100B5FBF0)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (*(v1 + 124) != 7)
    {
      if (*(v1 + 55) == 1 && *(v1 + 56) == *a1 && *(v1 + 59) == *(a1 + 3))
      {
        break;
      }

      if (*(v1 + 48) == *a1 && *(v1 + 51) == *(a1 + 3))
      {
        break;
      }
    }

    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v1 + 4);
}

uint64_t sub_100255934(uint64_t a1)
{
  result = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (*(result + 54) == 7 || *(result + 48) != *a1 || *(result + 52) != *(a1 + 4))
    {
      result = *(result + 40);
      if (!result)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (1)
      {
        if (*(result + 124) != 7)
        {
          if (*(result + 55) == 1 && *(result + 57) == *a1 && *(result + 61) == *(a1 + 4))
          {
            break;
          }

          if (*(result + 49) == *a1 && *(result + 53) == *(a1 + 4))
          {
            break;
          }
        }

        result = *(result + 40);
        if (!result)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      for (result = qword_100B5FBE0; result; result = *(result + 40))
      {
        v6 = *(result + 48);
        if (v6 && *(v6 + 54) != 7)
        {
          v7 = *(v6 + 48);
          v8 = *(v6 + 52);
          if (v7 == *a1 && v8 == *(a1 + 4))
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100255A20(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (v2 != a1 || *(v2 + 124) == 7)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      v3 = 48;
      if (*(v2 + 55))
      {
        v3 = 56;
      }

      return v2 + v3;
    }
  }

  return v1;
}

uint64_t sub_100255A78(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1 || *(v2 + 54) == 7)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return v2 + 48;
    }
  }

  return v1;
}

__int16 *sub_100255ABC(uint64_t a1)
{
  v1 = qword_100B5FBE0;
  if (qword_100B5FBE0)
  {
    do
    {
      if (*v1 == -1)
      {
        v3 = *(v1 + 6);
        if (v3)
        {
          v4 = *(v3 + 48);
          v5 = *(v3 + 52);
          if (v4 == *a1 && v5 == *(a1 + 4))
          {
            return v1;
          }
        }

        else
        {
          sub_1000D660C();
        }
      }

      v1 = *(v1 + 5);
    }

    while (v1);
  }

  return v1;
}

uint64_t sub_100255B2C(int *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Allocating ACL connection for %: at state:%d while numAclConnections is %d", a1, a2, dword_100B5FBC8);
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v5 = dword_100B5FBC8;
  if (v5 == *sub_1003045A0(0x28u))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Max ACL connections reached - refusing to allocate acl connection record");
      v6 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    if (sub_10000EFCC())
    {
      sub_10023B3C0();
    }

    sub_1000D660C();
    return 0;
  }

  v7 = sub_1001BBBD8(0x178uLL, 0x10F20400F36A590uLL);
  if (!v7)
  {
LABEL_20:
    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory - unable to allocate acl connection record");
      v15 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 0;
  }

  v8 = v7;
  v9 = *a1;
  v7[26] = *(a1 + 2);
  *(v7 + 12) = v9;
  *(v7 + 54) = a2;
  v7[69] = *(qword_100BCDFC8 + 10) & 6 | 1;
  *(v7 + 144) = -1;
  *(v7 + 152) = 0;
  v7[70] = 32000;
  *(v7 + 2) = 0;
  *v7 = -1;
  v10 = dword_100B52360++;
  *(v7 + 1) = v10;
  v7[10] = -1;
  *(v7 + 256) = *(sub_1003045A0(0x28u) + 10) != 0;
  *(v8 + 153) = 0;
  *(v8 + 324) = 0;
  v11 = &qword_100B5FBD0;
  v12 = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    do
    {
      v13 = v12;
      v12 = *(v12 + 40);
    }

    while (v12);
    v11 = (v13 + 40);
  }

  *v11 = v8;
  ++dword_100B5FBC8;
  if (sub_10029F1F0(v8))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Fail to allocate L2CAP resources for new ACL connection");
      v14 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000E1F34(v8);
    sub_10000C1E8(v8);
    goto LABEL_20;
  }

  return v8;
}

char *sub_100255DF0(uint64_t a1)
{
  v2 = dword_100B5FBD8;
  if (v2 == *(sub_1003045A0(0x28u) + 1))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max SCO connections reached - refusing to allocate sco connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  v4 = sub_1001BBBD8(0x40uLL, 0x1020040F38FB7CEuLL);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate sco connection record");
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  v5 = v4;
  *(v4 + 6) = sub_1000E1FE8(a1);
  *(v5 + 57) = 255;
  v5[59] = 0;
  v5[2] = 1;
  *v5 = -1;
  v6 = dword_100B52360++;
  *(v5 + 1) = v6;
  v7 = &qword_100B5FBE0;
  v8 = qword_100B5FBE0;
  if (qword_100B5FBE0)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 40);
    }

    while (v8);
    v7 = (v9 + 40);
  }

  *v7 = v5;
  ++dword_100B5FBD8;
  return v5;
}

void *sub_100255F4C(int *a1)
{
  v2 = dword_100B5FBE8;
  if (v2 == *(sub_1003045A0(0x28u) + 2))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE connections reached - refusing to allocate LE connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v4 = sub_1001BBBD8(0x178uLL, 0x10A004068D5B6DEuLL);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE connection record");
    v9 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_10:
    sub_10080F7A0();
    return 0;
  }

  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  *(v4 + 54) = *(a1 + 6);
  *(v4 + 26) = v7;
  *(v4 + 12) = v6;
  *(v4 + 2) = 4;
  v8 = dword_100B52360++;
  *(v4 + 1) = v8;
  if (sub_10029F1F0(v4))
  {
    sub_10000C1E8(v5);
    return 0;
  }

  v11 = &qword_100B5FBF0;
  v12 = qword_100B5FBF0;
  if (qword_100B5FBF0)
  {
    do
    {
      v13 = v12;
      v12 = *(v12 + 40);
    }

    while (v12);
    v11 = (v13 + 40);
  }

  *v11 = v5;
  ++dword_100B5FBE8;
  return v5;
}

_BYTE *sub_1002560B4(__int16 a1)
{
  v2 = dword_100B5FBF8;
  if (v2 == *(sub_1003045A0(0x28u) + 3))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE CIS connections reached - refusing to allocate LE CIS connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x88uLL, 0x1030040A3D87AC2uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE CIS connection record");
    v9 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 5;
  v5 = dword_100B52360++;
  *(result + 1) = v5;
  *result = a1;
  v6 = &qword_100B5FC00;
  v7 = qword_100B5FC00;
  if (qword_100B5FC00)
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 40);
    }

    while (v7);
    v6 = (v8 + 40);
  }

  *v6 = result;
  ++dword_100B5FBF8;
  return result;
}

_BYTE *sub_1002561EC(__int16 a1)
{
  v2 = dword_100B5FC08;
  if (v2 == *(sub_1003045A0(0x28u) + 4))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE BIS connections reached - refusing to allocate LE BIS connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x60uLL, 0x10100400D7E9A58uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE BIS connection record");
    v9 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 6;
  v5 = dword_100B52360++;
  *(result + 1) = v5;
  *result = a1;
  v6 = &qword_100B5FC10;
  v7 = qword_100B5FC10;
  if (qword_100B5FC10)
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 40);
    }

    while (v7);
    v6 = (v8 + 40);
  }

  *v6 = result;
  ++dword_100B5FC08;
  return result;
}

_BYTE *sub_100256324(__int16 a1)
{
  v2 = dword_100B5FC30;
  if (v2 == *(sub_1003045A0(0x28u) + 4))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE BIS sync connections reached - refusing to allocate LE BIS sync connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x60uLL, 0x109004076BC9979uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE BIS sync connection record");
    v9 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 7;
  v5 = dword_100B52360++;
  *(result + 1) = v5;
  *result = a1;
  v6 = &qword_100B5FC28;
  v7 = qword_100B5FC28;
  if (qword_100B5FC28)
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 40);
    }

    while (v7);
    v6 = (v8 + 40);
  }

  *v6 = result;
  ++dword_100B5FC30;
  return result;
}

void *sub_10025645C(uint64_t a1)
{
  v2 = dword_100B5FC18;
  if (v2 == *(sub_1003045A0(0x28u) + 5))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max OTHER connections reached - refusing to allocate new OTHER connection record");
    v3 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v4 = sub_1001BBBD8(0x48uLL, 0x10200405CCC4D54uLL);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate OTHER connection record");
    v7 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_10:
    sub_10080F7A0();
    return 0;
  }

  v5 = v4;
  *(v4 + 2) = 8;
  *(v4 + 6) = a1;
  v6 = dword_100B52360++;
  *(v4 + 1) = v6;
  if (sub_10029F1F0(v4))
  {
    sub_10000C1E8(v5);
    return 0;
  }

  v9 = &qword_100B5FC20;
  v10 = qword_100B5FC20;
  if (qword_100B5FC20)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 40);
    }

    while (v10);
    v9 = (v11 + 40);
  }

  *v9 = v5;
  ++dword_100B5FC18;
  return v5;
}

uint64_t sub_1002565B0(uint64_t a1)
{
  v1 = qword_100B5FC00;
  if (!qword_100B5FC00)
  {
    return 0;
  }

  while (v1 != a1)
  {
    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0;
    }
  }

  return *(v1 + 48);
}

uint64_t sub_1002565E8()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000C08D0(&v2))
  {
    if (*(v2 + 124) != 7)
    {
      v0 = v0 + *(v2 + 127);
    }
  }

  return v0;
}

uint64_t sub_100256648()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000BBFD4(&v2))
  {
    if (*(v2 + 248))
    {
      v0 = (v0 + 1);
    }

    else
    {
      v0 = v0;
    }
  }

  return v0;
}

BOOL sub_1002566A0(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FC00;
    if (qword_100B5FC00)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FC00;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

BOOL sub_100256714(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FC10;
    if (qword_100B5FC10)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FC10;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

uint64_t sub_100256788(uint64_t a1)
{
  if (a1 && (v1 = qword_100B5FBD0) != 0)
  {
    while (v1 != a1)
    {
      v1 = *(v1 + 40);
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  else
  {
LABEL_5:
    v2 = 0;
    if (a1)
    {
      v3 = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (v3 != a1)
        {
          v3 = *(v3 + 40);
          if (!v3)
          {
            return 0;
          }
        }

        return 3;
      }
    }
  }

  return v2;
}

const char *sub_1002567E8(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return (&off_100AE8208)[a1];
  }
}

const char *sub_10025680C(unsigned int a1)
{
  if (a1 > 7)
  {
    return "NA";
  }

  else
  {
    return (&off_100AE8248)[a1];
  }
}

void sub_100256830(unsigned __int16 *a1, float a2)
{
  *v18 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  LOWORD(a2) = a1[40];
  gcvt((LODWORD(a2) * 1.25), 7, v18);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v17 = *a1;
  v16 = a1[41];
  v5 = a1[42];
  v6 = a1[44];
  v7 = a1[43];
  v8 = sub_100304C0C(*(a1 + 70));
  v9 = *(a1 + 124);
  v10 = *(a1 + 168);
  if (v10 > 3)
  {
    v11 = "unknown";
  }

  else
  {
    v11 = (&off_100AE8288)[v10];
  }

  v12 = sub_10025680C(*(a1 + 33));
  v13 = sub_1002567E8(v9);
  v14 = "Random";
  if (v4)
  {
    v15 = "Random";
  }

  else
  {
    v15 = "Public";
  }

  if (!v3)
  {
    v14 = "Public";
  }

  sub_100304B24("Le topology - {adv-addr: %:-%s, resolved-addr: %:-%s, lmhandle: 0x%2x, interval: %s ms, latency: %d, lsto: %d, minCE: %d, maxCE: %d, role: %s, state: %s, ready-state: %s, enc-state: %s, phyStatsEnabled: %d}", a1 + 49, v14, a1 + 57, v15, v17, v18, v16, v5, v6, v7, v8, v13, v12, v11, *(a1 + 30));
}

void sub_1002569A0(unsigned __int16 *a1)
{
  v2 = a1 + 24;
  v3 = sub_1002567E8(*(a1 + 54));
  *v10 = 0;
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  LOWORD(v4) = a1[68];
  gcvt((v4 * 0.625), 7, v10);
  v5 = *a1;
  v6 = *(a1 + 37);
  v7 = sub_100304C0C(*(a1 + 144));
  v8 = sub_100304BE8(*(a1 + 152));
  v9 = sub_100304B50(*(a1 + 153));
  sub_100304B24("ACL topology - {bd-addr: %:, lmhandle: 0x%2x, reference: %d, role: %s, state: %s, lk-mode: %s, enc-state: %s, lsto: %d, interval: %s ms, phyStatsEnabled: %d}", v2, v5, v6, v7, v3, v8, v9, (5 * a1[70]) >> 3, v10, *(a1 + 30));
}

void sub_100256AA4(unsigned __int16 *result)
{
  v1 = *(result + 6);
  v2 = qword_100B5FBD0;
  if (v1)
  {
    v3 = qword_100B5FBD0 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    v5 = *result;
    v6 = *v1;
    v7 = *(result + 57);
    v8 = sub_100304B74(*(result + 58));
    sub_100304B24("Voice topology - {voicehandle: 0x%3x, lmhandle: 0x%2x, airMode: %d, lk-type: %s, phyStatsEnabled: %d}", v5, v6, v7, v8, *(result + 30));
  }
}

void sub_100256B30()
{
  if (dword_100B5FBE8)
  {
      ;
    }
  }
}

void sub_100256B80()
{
  v0 = dword_100B5FBD8;
  if (dword_100B5FBC8 | dword_100B5FBD8)
  {
    if (dword_100B5FBC8)
    {
        ;
      }

      v0 = dword_100B5FBD8;
    }

    if (v0)
    {
        ;
      }
    }
  }
}

void sub_100256C10()
{
  if (dword_100B5FBC8)
  {
    v0 = 0;
  }

  else
  {
    v0 = dword_100B5FBD8 == 0;
  }

  if (!v0 || dword_100B5FBE8 != 0 || dword_100B5FBF8 != 0)
  {
    if (dword_100B5FBC8)
    {
        ;
      }
    }

    if (dword_100B5FBD8)
    {
        ;
      }
    }

    if (dword_100B5FBE8)
    {
        ;
      }
    }

    if (dword_100B5FBF8)
    {
      for (i = 0; sub_1002566A0(&i); sub_100304B24("Le CIS topology - {cisHandle: 0x%2x, leAclHandle: 0x%2x, isoInterval: %d}", *i, v4, i[64]))
      {
        v4 = *(i + 6);
        if (v4)
        {
          LODWORD(v4) = *v4;
        }
      }
    }
  }
}

void sub_100256D50(int a1, uint64_t a2)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        ++dword_100B5FC48;
        sub_100258440(a2);
        goto LABEL_20;
      }

      if (a1 == 4)
      {
        if (!sub_10000C240())
        {
          goto LABEL_17;
        }

        sub_10000AF54("OI_HCIIfc_SendCompleted, invalid sendType %d", 4);
        v5 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

LABEL_16:
        sub_1000E09C0();
LABEL_17:
        sub_1000D660C();
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 1)
      {
        ++dword_100B5FC38;
        sub_1002552E4(a2);
        goto LABEL_20;
      }

      if (a1 == 2)
      {
        ++dword_100B5FC40;
        sub_1002582B4(a2);
LABEL_20:
        sub_10000C1F8(v3);
        return;
      }
    }

    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("OI_HCIIfc_SendCompleted, unknown sendType %d", a1);
    v6 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_SendCompleted, HCI not initialized - ignoring event");
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

char *sub_100256ED8(_BYTE *a1)
{
  if (a1)
  {
    *a1 = 5;
  }

  return &byte_100B5FC50;
}

void sub_100256EF0(int a1)
{
  v2 = sub_10000C240();
  if (v2)
  {
    v3 = 78;
    if (a1)
    {
      v3 = 89;
    }

    sub_10000AF54("OI_HCIIfc_SetDataReceivedAssertionRequired %c", v3);
    v4 = sub_10000C050(0x2Eu);
    v2 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      *buf = 136446210;
      v6 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (byte_100B5FC55 != a1)
  {
    byte_100B5FC55 = a1;
    if ((a1 & 1) == 0)
    {
      sub_1001BBA60(v2);
    }
  }
}

void sub_100256FE0(uint64_t a1, uint64_t a2)
{
  memset(v27, 0, sizeof(v27));
  v4 = *(a2 + 4);
  v5 = v4 >> 10;
  v6 = *(a2 + 8);
  v7 = sub_10028A99C(v4);
  v8 = "error";
  v9 = *(a2 + 4);
  if (a1 == 621)
  {
    v8 = "timedout";
  }

  if (v5 < 0x3F)
  {
    sub_100304ACC(v27, 256, "HCI expected event %d with opcode %s (0x%x) %s, reason is %!", v6, v7, v9, v8, a1);
  }

  else
  {
    sub_100304ACC(v27, 256, "HCI expected event %d with opcode %s (0x%x) %s, reason is %!. subopcode: 0x%02x -- subopcode2: 0x%02x", v6, v7, v9, v8, a1, *(a2 + 10), *(a2 + 11));
  }

  if (sub_10000C240())
  {
    sub_10000AF54(v27);
    v10 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  if (a1 == 634)
  {
    if (!sub_100018C6C())
    {
      goto LABEL_20;
    }

LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Controller core dump is in progress, don't trigger expected event timeouts");
      v11 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  sub_1001C4B04(v27);
  if (sub_100018C6C())
  {
    goto LABEL_13;
  }

  if (a1 == 621)
  {
    if (off_100B5FC58)
    {
      off_100B5FC58(621);
    }

    else
    {
      sub_1000D660C();
    }
  }

LABEL_20:
  v12 = *(a2 + 8);
  switch(v12)
  {
    case 0xEu:
      v21 = 0;
      *&v22 = &v21;
      WORD4(v22) = 1;
      HIWORD(v22) = 1;
      *(&v22 + 10) = 65537;
      (*(a2 + 16))(a1, *(a2 + 24), &v22);
      return;
    case 0x3Eu:
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      if (sub_100005FEC(0x3Eu))
      {
        sub_100257520(a1, a2, &v22);
        sub_1002CD87C(v22, DWORD2(v22), v23);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to find event descriptor for %x", 62);
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_34:
          sub_1000E09C0();
        }
      }

      break;
    case 0xFu:
      sub_10025734C(a2, a1);
      return;
    default:
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = sub_100005FEC(v12);
      if (v13)
      {
        sub_100257644(a1, a2, v13, &v22);
        sub_1000DC68C(v12, &v22, 0, 0, v18, v14, v15, v16, v17);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to find event descriptor for %x", v12);
        v20 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      break;
  }
}

void sub_10025734C(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = sub_10001EE38(*(a1 + 6));
  if (!v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_10000AF54("%! (%d)", 620, *(a1 + 6), v15, v16, v17, v18, v19);
    v6 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = v4[20];
  if (v5 == 62)
  {
    if (sub_100005FEC(0x3Eu))
    {
      sub_100257520(a2, a1, &v15);
      sub_1002CD87C(v15, DWORD2(v15), v16);
      return;
    }

    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_10000AF54("%! (%d)", 620, 62, v15, v16, v17, v18, v19);
    v13 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = sub_100005FEC(v4[20]);
  if (v7)
  {
    sub_100257644(a2, a1, v7, &v15);
    sub_1000DC68C(v5, &v15, 0, 0, v12, v8, v9, v10, v11);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", 620, v5, v15, v16, v17, v18, v19);
    v14 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }

LABEL_16:
  sub_1000D660C();
}

void sub_100257520(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = *(a2 + 4);
  *(a3 + 8) = a1;
  v3 = *(a2 + 4);
  v4 = (v3 - 8294);
  if (v4 <= 0x22)
  {
    if (((1 << (v3 - 102)) & 0x7C) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << (v3 - 102)) & 0x401000001) != 0)
    {
LABEL_10:
      *(a3 + 16) = *(a2 + 16);
      return;
    }

    if (v4 == 31)
    {
      goto LABEL_9;
    }
  }

  v5 = v3 - 13;
  if ((v3 - 8205) <= 0x37)
  {
    if (((1 << v5) & 0x1240) == 0)
    {
      if (((1 << v5) & 0xC0000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      *(a3 + 16) = a2 + 16;
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (v3 == 8292)
  {
    goto LABEL_9;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Unknown expected param type.");
    v6 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100257644(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a4;
  bzero(a4, 8 * a3[4]);
  if (a3[4])
  {
    v8 = 0;
    v9 = (a2 + 16);
    v10 = v4;
    while (1)
    {
      v11 = *(*(a3 + 1) + v8);
      v12 = v11 - 99;
      if ((v11 - 99) > 0x10)
      {
        goto LABEL_12;
      }

      if (((1 << v12) & 0x290D) == 0)
      {
        break;
      }

LABEL_5:
      *v10 = &unk_1008A4460;
LABEL_31:
      ++v8;
      ++v10;
      if (v8 >= a3[4])
      {
        goto LABEL_32;
      }
    }

    if (((1 << v12) & 0xA0) != 0)
    {
      v13 = a3[17];
      if (v13 == 7)
      {
        v14 = sub_100255ABC(v9);
        if (v14)
        {
          if (*(*(v14 + 48) + 54) == 7)
          {
            v14 = *(v14 + 48);
          }

          if (v14)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v14 = sub_1000E1FE8(v9);
          if (v14)
          {
            goto LABEL_30;
          }
        }

        if (sub_10000C240())
        {
          v24 = a1;
          sub_10000AF54("No connection record found for %:", v9);
          v18 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = sub_10000C0FC();
            *buf = 136446466;
            v26 = v20;
            v27 = 1024;
            v28 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }

          v14 = 0;
          a1 = v24;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 6)
        {
          v14 = sub_1000ABB80(*v9);
LABEL_30:
          *v10 = v14;
          goto LABEL_31;
        }

        if (sub_10000C240())
        {
          v15 = v4;
          v16 = a1;
          sub_10000AF54("Unable to recover handle from failed status event - no event context");
          v17 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = sub_10000C0FC();
            *buf = 136446466;
            v26 = v19;
            v27 = 1024;
            v28 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }

          v14 = 0;
          a1 = v16;
          v4 = v15;
          goto LABEL_30;
        }
      }

      v14 = 0;
      goto LABEL_30;
    }

    if (v11 == 115)
    {
      *v10 = a1;
      goto LABEL_31;
    }

LABEL_12:
    if (v11 != 97)
    {
      goto LABEL_31;
    }

    if (a3[17] == 7)
    {
      *v10 = v9;
      goto LABEL_31;
    }

    goto LABEL_5;
  }

LABEL_32:
  v21 = *a3;
  if (v21 == 44)
  {
    v22 = 2;
    v23 = 3;
    goto LABEL_37;
  }

  if (v21 == 20 && sub_1000B8B5C(v4[1]))
  {
    v22 = *(v4[1] + 152) & 0x7F;
    v23 = 2;
LABEL_37:
    LODWORD(v4[v23]) = v22;
  }
}

void sub_100257960(uint64_t *a1, int a2, int a3)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("handle_InquiryResult bad parm length: expected %d, got %d", 1, 0);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_10:
    sub_1000E09C0();
    return;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1177, "OI_STATUS _handle_InquiryResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, INQ_TYPE, _Bool)");
    goto LABEL_67;
  }

  v4 = *(a1 + 6);
  if (*(a1 + 5) <= v4)
  {
LABEL_67:
    v29 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_69;
  }

  if (*(a1 + 14) != 1)
  {
    v29 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1177, v29);
  }

  v7 = *a1;
  *(a1 + 6) = v4 + 1;
  v8 = *(v7 + v4);
  if (a3 == 2)
  {
    if (v8 != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("handle_InquiryResult misinterpreted spec: expected 1 resp, got %d", v8);
        v26 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return;
    }

    v9 = 255;
  }

  else
  {
    v9 = (14 * v8) | 1;
    if (a3 == 1 && 15 * v8 + 1 == a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("handle_InquiryResult misinterpreted spec: expected %d, got %d", (14 * v8) | 1, a2);
        v11 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v12 = 1;
      if (v8)
      {
        goto LABEL_20;
      }

      return;
    }
  }

  if (v9 != a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("handle_InquiryResult bad parm length: expected %d, got %d", v9, a2);
    v25 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (v8)
  {
LABEL_20:
    if (a3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    while (!*(a1 + 15))
    {
      v14 = *(a1 + 6);
      if (*(a1 + 5) - v14 <= 5)
      {
        goto LABEL_62;
      }

      if (*(a1 + 14) != 1)
      {
        v28 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_63;
      }

      sub_1000075EC(&v30, *a1 + v14, 6uLL);
      v15 = *(a1 + 6);
      *(a1 + 6) = v15 + 6;
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1213, "OI_STATUS _handle_InquiryResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, INQ_TYPE, _Bool)");
LABEL_58:
        v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_59:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1213, v27);
      }

      v16 = *(a1 + 5);
      if (v16 <= (v15 + 6))
      {
        goto LABEL_58;
      }

      if (*(a1 + 14) != 1)
      {
        v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_59;
      }

      v17 = *a1;
      *(a1 + 6) = v15 + 7;
      BYTE6(v30) = *(v17 + (v15 + 6));
      if (v16 <= (v15 + 7))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1214, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v18 = v15 + 8;
      *(a1 + 6) = v15 + 8;
      HIBYTE(v30) = *(v17 + (v15 + 7));
      if (v13)
      {
        if (v16 <= v18)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1219, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v19 = v15 + 9;
        *(a1 + 6) = v19;
        v20 = *(v17 + v18);
      }

      else
      {
        v20 = 0;
        v19 = v15 + 8;
      }

      BYTE4(v31) = v20;
      if ((v16 - v19) <= 2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1221, "ByteStream_NumReadBytesAvail(*pBs) >= 3");
      }

      LODWORD(v31) = *(v17 + v19) | (*(v17 + v19 + 2) << 16);
      *(a1 + 6) = v19 + 3;
      if ((v16 - (v19 + 3)) < 2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1222, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      HIWORD(v31) = *(v17 + (v19 + 3));
      v21 = v19 + 5;
      *(a1 + 6) = v19 + 5;
      v32 = 0;
      BYTE5(v31) = 0;
      if (a3)
      {
        if (v16 <= v21)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1226, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v22 = v19 + 6;
        *(a1 + 6) = v22;
        BYTE5(v31) = *(v17 + v21);
        if (a3 == 2)
        {
          if (v16 - 240 > 0x11)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Extended Inquiry Result bad parm length: maximum expected %d, got %d", 257, v16);
              v23 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v24 = sub_10000C0FC();
                *buf = 136446466;
                v34 = v24;
                v35 = 1024;
                v36 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }
          }

          else
          {
            v32 = v17 + v22;
          }
        }
      }

      sub_1002425A8(&v30);
      if (!--v8)
      {
        return;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1212, "OI_STATUS _handle_InquiryResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, INQ_TYPE, _Bool)");
LABEL_62:
    v28 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_63:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1212, v28);
  }
}

void sub_100257EDC(unsigned __int8 *a1)
{
  if (a1[16] != 3)
  {
    v7 = v1;
    v8 = v2;
    v6 = 0;
    if (sub_100006318(*a1, &v6))
    {
      v3 = sub_1000DC660(v6);
      if (v3)
      {
        v4 = v3;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v4, 0);
          v5 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }
}

void sub_100257F78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t sub_100257F98()
{
  word_100B5FC70 = 0;
  dword_100B5FC74 = 0;
  byte_100B5FC78 = 0;
  qword_100B5FC80 = sub_1001BBBD8(32 * *(qword_100BCE0B8 + 2), 0x10820404E0D2EE7uLL);
  if (qword_100B5FC80)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

uint64_t sub_100258004(int a1, int *a2)
{
  v2 = *a2;
  if (v2 + 1 >= word_100B5FC70)
  {
    return 0;
  }

  v3 = v2 + 1;
  for (i = qword_100B5FC80 + 32 * v2 + 32; *(i + 8) != a1 && *(i + 9) != a1; i += 32)
  {
    if (++v3 >= word_100B5FC70)
    {
      return 0;
    }
  }

  *a2 = v3;
  return i;
}

void sub_10025806C()
{
  for (i = word_100B5FC70; word_100B5FC70; i = word_100B5FC70)
  {
    word_100B5FC70 = i - 1;
    sub_100256FE0(129, qword_100B5FC80 + 32 * (i - 1));
  }

  byte_100B5FC78 = 0;
}

void sub_1002580D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100256FE0(621, v1);
  v2 = *(v1 + 8);
  if (v2 == 15)
  {
    if (byte_100BCE141)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 == 14 && byte_100BCE141 == 0)
  {
LABEL_9:
    byte_100BCE141 = 1;

    sub_1000228C0(sub_100022AA0, 0, 0);
  }
}

void sub_10025818C(uint64_t result, __int16 a2, __int16 a3, uint64_t a4)
{
  if (byte_100BCE1B0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to add external transport - too many alreay registered.");
      v4 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }
  }

  else
  {
    word_100BCE1A0 = a2;
    word_100BCE1A2 = a2;
    word_100BCE1A4 = a3;
    byte_100BCE1A6 = 1;
    byte_100BCE1A7 = result;
    qword_100BCE1A8 = a4;
    byte_100BCE1B8 = 1;
    byte_100BCE1B0 = 1;
  }
}

void sub_10025822C()
{
  WORD3(xmmword_100BCE158[0]) = 1;
  if (WORD5(xmmword_100BCE158[0]) > 2u)
  {
    v0 = BYTE14(xmmword_100BCE158[0]);
  }

  else
  {
    v0 = 0;
  }

  byte_100BCE1B9 = v0;
}

void sub_10025825C()
{
  WORD3(xmmword_100BCE158[0]) = 0;
  if (WORD5(xmmword_100BCE158[0]))
  {
    v0 = BYTE14(xmmword_100BCE158[0]);
  }

  else
  {
    v0 = 0;
  }

  byte_100BCE1B9 = v0;
}

void sub_1002582B4(uint64_t a1)
{
  if (dword_100BCE0C0 == 2)
  {
    if (BYTE14(xmmword_100BCE158[0]) == 1 && (sub_1000D660C(), (BYTE14(xmmword_100BCE158[0]) & 1) != 0) && sub_10000C240() && (sub_10000AF54("%! (%d)", 614, 0), v2 = sub_10000C050(0x2Eu), os_log_type_enabled(v2, OS_LOG_TYPE_ERROR)))
    {
      sub_100814B70();
      if (a1)
      {
        goto LABEL_7;
      }
    }

    else if (a1)
    {
LABEL_7:
      if (sub_10000C240())
      {
        sub_10000AF54("ACL transmit error (%!)", a1);
        v3 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }
    }

    BYTE14(xmmword_100BCE158[0]) = 1;
    v4 = WORD5(xmmword_100BCE158[0]) != 0;
    if (WORD3(xmmword_100BCE158[0]))
    {
      v4 = WORD5(xmmword_100BCE158[0]) > 2u;
    }

    byte_100BCE1B9 = v4;
    if (v4)
    {
      (*(qword_100BCE0C8 + 16))(0, 1);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("HCI not initialized, ignoring AclPacketSent event");
    v5 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

void sub_100258440(uint64_t a1)
{
  if (dword_100BCE0C0 == 2)
  {
    if (byte_100BCE176 == 1 && (sub_1000D660C(), (byte_100BCE176 & 1) != 0) && sub_10000C240() && (sub_10000AF54("%! (%d)", 614, 0), v2 = sub_10000C050(0x2Eu), os_log_type_enabled(v2, OS_LOG_TYPE_ERROR)))
    {
      sub_100814B70();
      if (a1)
      {
LABEL_7:
        if (sub_10000C240())
        {
          sub_10000AF54("SCO transmit error (%!)", a1);
          v3 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_100814758();
          }
        }
      }
    }

    else if (a1)
    {
      goto LABEL_7;
    }

    byte_100BCE176 = 1;
    sub_100249E00();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("HCI not initialized, ignoring ScoPacketSent event");
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

void sub_100258588(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result[2] & 1) == 0 && result[1])
  {
    v12 = result[1];
    v9 = sub_100018960(95, 0, a3, a4, a5, a6, a7, a8, *result);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_HostNumberOfCompletedPackets failed: %!", v10, v12);
        v11 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100814CFC();
        }
      }
    }

    else
    {
      result[1] = 0;
    }
  }
}

uint64_t sub_100258628(uint64_t a1)
{
  v2 = a1 & 0xFFF;
  v3 = sub_1000ABB80(v2);
  if (v3)
  {
    v4 = v3;
    result = *(v3 + 2);
    if (!result)
    {
      return result;
    }

    if (result == 4)
    {
      if ((~a1 & 0x3000) != 0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if (!sub_10000C240())
    {
      return 4;
    }

    sub_10000AF54("lmHandle 0x%04X found as connectionHandle 0x%08X of non ACL/LE kind????\n", v2, v4);
    v7 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

LABEL_18:
    sub_100814BF4();
    return 4;
  }

  if (!off_100BCE0B0)
  {
    if (!sub_10000C240())
    {
      return 4;
    }

    sub_10000AF54("No stack handle found for lmHandle 0x%04X, falling back to KIND_UNKNOWN\n", v2);
    v8 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

    goto LABEL_18;
  }

  result = off_100BCE0B0(a1);
  if ((~a1 & 0x3000) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (result == 1)
  {
    return v6;
  }

  return result;
}

void sub_100258754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = dword_100BCE0C0 == 2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIIfc_ScoPacketReceived, HCI not initialized - discarding data, status %!", 408);
      v5 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  v9 = a1;
  v10 = off_100BCE0A8;
  if (off_100BCE0A8)
  {

    v10(3, a1, a2, a3, a4);
    return;
  }

  if (*(qword_100BCE0B8 + 8) == 1)
  {
    ++HIWORD(dword_100B5FC9E);
    LOWORD(dword_100B5FC9E) = a1 & 0xFFF;
  }

  v11 = sub_1000ABB80(a1 & 0xFFF);
  if (v11 && ((v12 = v11, *(v11 + 2) == 1) || (sub_1000D660C(), *(v12 + 2) == 1)))
  {
    if (!*(v12 + 56))
    {
      v22 = *(v12 + 48);
      if (v22)
      {
        if (*(v22 + 54) != 6)
        {
          sub_10024A0CC(v12, a3, a2, (v9 >> 12) & 3, a4);
          goto LABEL_24;
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Received SCO data for disconnecting handle %d, discarding packet. Status %!", v9 & 0xFFF, 408);
      v20 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received SCO data for unknown handle %d, discarding packet. Status %!", v9 & 0xFFF, 414);
    v21 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (*(qword_100BCE0B8 + 8) == 1)
  {
    sub_100258588(&dword_100B5FC9E, v13, v14, v15, v16, v17, v18, v19);
  }
}

void sub_1002589A0(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 2)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 847, "buf");
    }

    v7 = *a1;
    v8 = byte_100B5FC90;
    if (byte_100B5FC90)
    {
      if (a2 == 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 857, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v9 = a1[1];
      v10 = 4;
    }

    else
    {
      v9 = *(a1 + 2);
      v10 = 3;
    }

    if (*(a3 + 8))
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = v9;
      *__str = 0u;
      v16 = 0u;
      snprintf(__str, 0x64uLL, "BT Controller HCI_SCO wakeupCause (handle=0x%04X dataLen=%d)", v7, v9);
      sub_100304AF8("OI_HCIFlow_ScoPacketReceived: %s", __str);
      sub_1001C499C(__str);
      v8 = byte_100B5FC90;
    }

    else
    {
      v11 = v9;
    }

    if (v8)
    {
      v12 = -4;
    }

    else
    {
      v12 = -3;
    }

    v13 = v12 + a2;
    if (v13 == v11)
    {
      sub_100258754(v7, v9, a1 + v10, a3);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Potentially malicious packet received (actually %d bytes, but claims it is %d bytes), ignoring packet", v13, v11);
      v14 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Short SCO packet received (%d bytes), ignoring packet. Status %!", a2, 131);
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_100258BA4(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 3)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 894, "buf");
    }

    v6 = *(a1 + 1);
    v7 = a2 - 4;
    if (a2 - 4 == v6)
    {
      v8 = *a1;
      v9 = off_100BCE0A8;
      if (off_100BCE0A8)
      {
        v11 = *a1;
        v12 = *(a1 + 1);

        v9(5, v11, v12, a1 + 4, a3);
      }

      else
      {
        v14 = sub_1000ABB80(v8 & 0xFFF);
        if (*(v14 + 2) - 5 <= 1)
        {

          sub_10017FEA0(v14, a1 + 4, v6, (v8 >> 12) & 3, (v8 >> 14) & 1);
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Potentially malicious packet received (actually %d bytes, but claims it is %d bytes), ignoring packet", v7, v6);
      v13 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Short ISO packet received (%d bytes), ignoring packet. Status %!", a2, 131);
    v4 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_100258D30(_WORD *a1, uint64_t a2, unsigned int a3)
{
  if (sub_1000ABD24(a1))
  {
    v6 = *a1 | 0x3000;

    return sub_10001FD90(2, v6, a2, a3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE connection handle is no longer valid. Dropping LEA data.");
      v8 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 601;
  }
}

uint64_t sub_100258DE0(__int16 *a1, char *a2, size_t a3, char a4)
{
  if (!sub_1000C0E08(a1))
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    sub_10000AF54("SCO connection handle is no longer valid. Dropping SCO data.");
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 601;
    }

    goto LABEL_9;
  }

  if (DWORD2(xmmword_100BCE2E0))
  {
    v8 = dword_100BCE0C0 == 2;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 103;
  }

  if (byte_100BCE176 != 1)
  {
    return 613;
  }

  if (!a1 || *(a1 + 2) != 1)
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    v9 = 601;
    sub_10000AF54("0x%x is not SCO connection handle, retval %!", a1, 601);
    v13 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return v9;
    }

    goto LABEL_9;
  }

  if (*(a1 + 56))
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    v9 = 601;
    sub_10000AF54("SCO connection %d is disconnected, retval %!", *a1, 601);
    v12 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return v9;
    }

LABEL_9:
    sub_10080F604();
    return 601;
  }

  if (!off_100BCE0A8)
  {
    memset(v21, 0, sizeof(v21));
    sub_10001FF10(v21, 1u);
    sub_10001F968(v21, a2, a3, 2u);
    if (byte_100B5FC90 == 1)
    {
      v15 = *a1;
      v16 = 243;
LABEL_39:
      v9 = sub_10001FD90(v16, v15, v21, a3);
      goto LABEL_40;
    }

    if (a3 < 0x100)
    {
      v15 = *a1;
      v16 = 3;
      goto LABEL_39;
    }

    if (a3 >> 1 != 180)
    {
      sub_1000D660C();
    }

    v17 = sub_10001FD90(3, *a1 | 0x4000u, v21, a3 >> 1);
    if (v17 == 625)
    {
      v18 = sub_10001FD90(3, *a1, v21, a3 >> 1);
      if (v18 == 625)
      {
        goto LABEL_43;
      }

      v9 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_Send failed to write second SCO data chunk");
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v9 = v17;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_Send failed to write first SCO data chunk");
        v20 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          sub_100814758();
        }
      }
    }

LABEL_40:
    if (v9 != 625)
    {
      if (v9)
      {
        goto LABEL_25;
      }

LABEL_42:
      byte_100BCE176 = 0;
      return v9;
    }

LABEL_43:
    if (a4)
    {
      return 625;
    }

    v9 = sub_1000228C0(sub_100258440, 0, 0);
    if (v9)
    {
      return v9;
    }

    goto LABEL_42;
  }

  v9 = 629;
LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCI_Send failed to write SCO data");
    v14 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100814758();
    }
  }

  return v9;
}

uint64_t sub_100259154(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = dword_100BCE0C0 == 2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 103;
  }

  if (byte_100BCE196 != 1 || word_100BCE192 == 0)
  {
    return 613;
  }

  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 1448, "connectionHandle");
  }

  v11 = *(a2 + 4);
  v12 = 96;
  if (*(a1 + 2) != 5)
  {
    v12 = 0;
  }

  v13 = *(a1 + v12);
  if (v13 >= 0x1000)
  {
    sub_1000D660C();
  }

  v14 = v13 | 0x4000;
  if (!a4)
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4096;
  }

  if (a3)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = 12288;
  }

  if (v11 >= word_100BCE194)
  {
    v17 = word_100BCE194;
  }

  else
  {
    v17 = v11;
  }

  if (v11 <= word_100BCE194)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  result = sub_10001FD90(5, v18 | v14, a2, v17);
  if (result != 625)
  {
    if (result)
    {
      return result;
    }

    byte_100BCE196 = 0;
  }

  --word_100BCE192;
  ++*(a1 + 16);
  ++WORD1(xmmword_100BCE158[0]);
  sub_10017FDE8(a1, a2);
  return 0;
}

uint64_t sub_1002592C4(int a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    a2 = 0;
  }

  if (!a1)
  {
    a3 = 0;
  }

  qword_100BCE148 = a2;
  off_100BCE150 = a3;
  return 0;
}

uint64_t sub_1002592E8(_WORD *a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  *a1 = word_100BCE174;
  return result;
}

uint64_t sub_10025932C(__int16 a1, __int16 a2)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v2 = dword_100BCE0C0 == 2;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 103;
  }

  result = 0;
  word_100BCE174 = a1;
  word_100BCE170 = a2;
  return result;
}

uint64_t sub_100259374(char a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  byte_100B5FC90 = a1;
  return result;
}

uint64_t sub_1002593B4(_WORD *a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  *a1 = WORD6(xmmword_100BCE158[0]);
  return result;
}

uint64_t sub_100259404()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v0 = dword_100BCE0C0 == 2;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    return word_100BCE170;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("OI_HCIAPI_GetTotalNumScoBuffers - not initialized");
    v2 = sub_10000C050(0x2Eu);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100814AEC();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100259498()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v0 = dword_100BCE0C0 == 2;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    v2 = byte_100BCE176;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIAPI_ReadyToTransmitSco - not initialized");
      v1 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    v2 = 0;
  }

  return v2 & 1;
}

__int128 *sub_100259530(__int128 *result)
{
  *(result + 8) = 0;
  v1 = *result;
  v2 = &xmmword_100B5F8D8;
  if (v1 == xmmword_100B5F8D8)
  {
    v3 = 1794;
    do
    {
      v4 = v3;
      result = sub_1000ABB80(v3);
      v3 = v4 + 2;
    }

    while (result);
  }

  else
  {
    v2 = &xmmword_100B5FA50;
    if (v1 != xmmword_100B5FA50)
    {
      return result;
    }

    v5 = 1795;
    do
    {
      v4 = v5;
      result = sub_1000ABB80(v5);
      v5 = v4 + 2;
    }

    while (result);
  }

  *v2 = v4;
  return result;
}

__int128 *sub_1002595BC(unsigned int a1, __int16 a2, __int16 a3, __int16 a4, int a5, int a6, int a7, int a8, char a9)
{
  word_100B5FC96 = 0;
  dword_100B5FC92 = 0;
  dword_100B5FC9E = 0;
  word_100B5FCA2 = 0;
  dword_100B5FC98 = 0;
  word_100B5FC9C = 0;
  xmmword_100BCE158[0] = 0u;
  *algn_100BCE168 = 0u;
  unk_100BCE178 = 0u;
  unk_100BCE188 = 0u;
  unk_100BCE198 = 0u;
  *&qword_100BCE1A8 = 0u;
  v17 = (sub_10022DE54() - 4);
  if (a1 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  WORD6(xmmword_100BCE158[0]) = v18;
  word_100BCE174 = a2;
  word_100BCE184 = a3;
  word_100BCE194 = a4;
  WORD4(xmmword_100BCE158[0]) = a5;
  word_100BCE170 = a6;
  word_100BCE180 = a7;
  word_100BCE190 = a8;
  WORD5(xmmword_100BCE158[0]) = a5;
  word_100BCE182 = a7;
  word_100BCE192 = a8;
  WORD3(xmmword_100BCE158[0]) = 0;
  LOBYTE(xmmword_100BCE158[0]) = a9;
  if (a9)
  {
    BYTE14(xmmword_100BCE158[0]) = 1;
    byte_100BCE176 = 1;
    byte_100BCE186 = 1;
    byte_100BCE196 = a8 != 0;
    v19 = a5 != 0;
    v20 = a5 != 0;
  }

  else
  {
    v19 = a5 != 0;
    BYTE14(xmmword_100BCE158[0]) = a5 != 0;
    byte_100BCE176 = a6 != 0;
    v20 = a7 != 0;
    byte_100BCE186 = a7 != 0;
    byte_100BCE196 = a8 != 0;
  }

  byte_100BCE1B9 = v19;
  byte_100BCE1BA = v20;
  byte_100BCE1B8 = 0;
  byte_100BCE1B0 = 0;
  sub_1000E70E4();
  v21 = 1794;
  do
  {
    v22 = v21;
    v23 = sub_1000ABB80(v21);
    v21 = v22 + 2;
  }

  while (v23);
  LOWORD(xmmword_100B5F8D8) = v22;
  v24 = 1795;
  do
  {
    v25 = v24;
    result = sub_1000ABB80(v24);
    v24 = v25 + 2;
  }

  while (result);
  LOWORD(xmmword_100B5FA50) = v25;
  return result;
}

void sub_100259794()
{
  v28 = 0;
  while (sub_1000E4F48(&v28))
  {
    v3 = v28;
    if (*v28 == -1)
    {
      sub_10023C0C0(129, v28, *(v28 + 6) + 48, 0, 0, v0, v1, v2);
    }

    else
    {
      *(v28 + 56) = 1;
      sub_1000DD268(0, v3, 129);
    }

    if (!sub_1000C0E08(v28))
    {
      v28 = 0;
    }
  }

  v28 = 0;
  if (sub_1000BBFD4(&v28))
  {
    while (1)
    {
      v7 = v28;
      v8 = *(v28 + 54);
      if ((v8 - 1) < 2)
      {
        break;
      }

      if (v8 != 7)
      {
        *(v28 + 54) = 7;
        v9 = *(v7 + 37);
        sub_1000E4630(v7);
        sub_1000DD268(0, v28, 129);
        if (!v9)
        {
          sub_1000E4FBC(v28, 129);
          sub_1000E53AC(v28, 129);
          sub_1000E12C4(v28);
        }

        goto LABEL_14;
      }

LABEL_15:
      if (!sub_1000BBFD4(&v28))
      {
        goto LABEL_16;
      }
    }

    sub_10023C0C0(129, v28, (v28 + 24), 1, 0, v4, v5, v6);
LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

LABEL_16:
  v28 = 0;
  if (sub_1000C08D0(&v28))
  {
    while (1)
    {
      v10 = v28;
      v11 = *(v28 + 124);
      if ((v11 - 1) < 2)
      {
        break;
      }

      if (v11 != 7)
      {
        *(v28 + 124) = 7;
        v13 = *(v10 + 59);
        sub_1000E4630(v10);
        sub_1002C29BC(0, v28, 129, 0, 0);
        if (!v13)
        {
          sub_1000E4FBC(v28, 129);
          sub_1000E53AC(v28, 129);
          sub_1000E12C4(v28);
        }

        goto LABEL_25;
      }

LABEL_26:
      if (!sub_1000C08D0(&v28))
      {
        goto LABEL_27;
      }
    }

    if (*(v28 + 55))
    {
      v12 = v28 + 28;
    }

    else
    {
      v12 = 0;
    }

    sub_1002C1EE8(129, 0, 0, v28 + 48, v12, 0, 0, 0, 0, 0xFFFF, 0);
LABEL_25:
    v28 = 0;
    goto LABEL_26;
  }

LABEL_27:
  v28 = 0;
  if (sub_1002566A0(&v28))
  {
    while (1)
    {
      v14 = v28;
      v15 = *(v28 + 56);
      if ((v15 - 1) < 2)
      {
        break;
      }

      if (v15 != 7)
      {
        *(v28 + 56) = 7;
        sub_100218B20(0, v14, 129);
        goto LABEL_32;
      }

LABEL_33:
      if (!sub_1002566A0(&v28))
      {
        goto LABEL_34;
      }
    }

    v27 = 0;
    memset(v26, 0, sizeof(v26));
    LOWORD(v26[0]) = *v28;
    sub_1002189A0(129, v26);
LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

LABEL_34:
  v28 = 0;
  while (sub_100256714(&v28))
  {
    v16 = *(v28 + 48);
    if (*(v28 + 48))
    {
      v17 = v16 == 6;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!*(v28 + 49))
      {
        sub_100184150(0, 22);
        goto LABEL_49;
      }

      if (*(v28 + 49) == 1)
      {
        sub_100183C9C(129, 0, 22);
LABEL_49:
        v28 = 0;
      }
    }

    else if (v16 == 1)
    {
      if (!*(v28 + 49))
      {
        v23 = 0u;
        v24 = 0u;
        sub_100183E2C(129, 0, &v23);
        goto LABEL_49;
      }

      if (*(v28 + 49) == 1)
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        sub_10018396C(129, 0, &v23);
        goto LABEL_49;
      }
    }
  }

  WORD5(xmmword_100BCE158[0]) = WORD4(xmmword_100BCE158[0]);
  word_100BCE182 = word_100BCE180;
  WORD1(xmmword_100BCE158[0]) = 0;
  if (xmmword_100BCE158[0])
  {
    v18 = 1;
    v19 = 1;
    v20 = 1;
  }

  else
  {
    v18 = WORD4(xmmword_100BCE158[0]) != 0;
    v19 = word_100BCE170 != 0;
    v20 = word_100BCE180 != 0;
  }

  BYTE14(xmmword_100BCE158[0]) = v18;
  byte_100BCE176 = v19;
  byte_100BCE186 = v20;
  WORD3(xmmword_100BCE158[0]) = 0;
  if (WORD4(xmmword_100BCE158[0]))
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  byte_100BCE1B9 = v21;
  if (LOBYTE(xmmword_100BCE158[0]))
  {
    if ((v21 & 1) == 0)
    {
LABEL_63:
      v22 = sub_1002565E8() != 0;
      goto LABEL_64;
    }
  }

  else if (!v20 || !word_100BCE180)
  {
    goto LABEL_63;
  }

  v22 = 1;
LABEL_64:
  byte_100BCE1BA = v22;
  byte_100BCE1B8 = byte_100BCE1B0 != 0;
  sub_1000E70E4();
}

void sub_100259B94()
{
  sub_100304AF8("HciFlow - txFlowControl\n");
  sub_100304AF8("   gAssertOnControllerFlowPRoblems  = %d\n", byte_100B5FCA4);
  sub_100304AF8("   MaxAclDataPacketSize\t\t\t= %d\n", WORD6(xmmword_100BCE158[0]));
  sub_100304AF8("   MaxScoDataPacketSize\t\t\t= %d\n", word_100BCE174);
  sub_100304AF8("   MaxLeDataPacketSize\t\t\t= %d\n", word_100BCE184);
  if (LOBYTE(xmmword_100BCE158[0]))
  {
    v0 = "TRUE";
  }

  else
  {
    v0 = "FALSE";
  }

  sub_100304AF8("   sharedACLandLEbuffers     \t= %s\n", v0);
  sub_100304AF8("   totalNumOutstandingTransmits\t= %d\n", WORD1(xmmword_100BCE158[0]));
  sub_100304AF8("   totalNumAclSlots\t\t\t\t= %d\n", WORD4(xmmword_100BCE158[0]));
  sub_100304AF8("   totalNumScoSlots\t\t\t\t= %d\n", word_100BCE170);
  sub_100304AF8("   totalNumLeSlots\t\t\t\t= %d\n", word_100BCE180);
  sub_100304AF8("   curNumAclSlotsAvail\t\t\t= %d\n", WORD5(xmmword_100BCE158[0]));
  sub_100304AF8("   curNumLeSlotsAvail\t\t\t= %d\n", word_100BCE182);
  if (BYTE14(xmmword_100BCE158[0]))
  {
    v1 = "TRUE";
  }

  else
  {
    v1 = "FALSE";
  }

  sub_100304AF8("   aclTransportReady\t\t\t\t= %s\n", v1);
  if (byte_100BCE176)
  {
    v2 = "TRUE";
  }

  else
  {
    v2 = "FALSE";
  }

  sub_100304AF8("   scoTransportReady\t\t\t\t= %s\n", v2);
  if (byte_100BCE186)
  {
    v3 = "TRUE";
  }

  else
  {
    v3 = "FALSE";
  }

  sub_100304AF8("   leTransportReady\t\t\t\t= %s\n", v3);
  sub_100304AF8("   needScoBuffers\t\t\t\t= %d\n", WORD3(xmmword_100BCE158[0]));
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitLe  = %d\n", byte_100BCE1BA);
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitAcl  = %d\n", byte_100BCE1B9);
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitOther  = %d\n", byte_100BCE1B8);
  sub_100256C10();
  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 7) == 1)
  {
    sub_100304AF8("HciFlow - aclRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC92);
    if (word_100B5FC96)
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v4);
    sub_100304AF8("   numOutstandingReceives = %d\n");
  }

  else
  {
    sub_100304AF8("HciFlow - aclRxFlowControl not enabled\n");
  }

  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 8) == 1)
  {
    sub_100304AF8("HciFlow - scoRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC9E);
    if (word_100B5FCA2)
    {
      v5 = "TRUE";
    }

    else
    {
      v5 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v5);
    sub_100304AF8("   numOutstandingReceives = %d\n");
  }

  else
  {
    sub_100304AF8("HciFlow - scoRxFlowControl not enabled\n");
  }

  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 9) == 1)
  {
    sub_100304AF8("HciFlow - leRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC98);
    if (word_100B5FC9C)
    {
      v6 = "TRUE";
    }

    else
    {
      v6 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v6);
    sub_100304AF8("   numOutstandingReceives = %d\n", HIWORD(dword_100B5FC98));
  }

  else
  {

    sub_100304AF8("HciFlow - leRxFlowControl not enabled\n");
  }
}

uint64_t sub_100259F1C()
{
  if (byte_100B5FCB8)
  {
    return 0;
  }

  v1 = dword_100B5FCD0;
  if (dword_100B5FCD0)
  {
    goto LABEL_4;
  }

  notification = 0;
  v3 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v3);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v6 = IOServiceNameMatching("AppleBTHci");
  v7 = IOServiceAddMatchingNotification(v3, "IOServiceFirstMatch", v6, sub_10025B084, Current, &notification);
  if (v7)
  {
    v0 = v7;
    if (qword_100B5FCC0 != -1)
    {
      sub_100814F18();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100814F40();
    }
  }

  else
  {
    v9 = IOIteratorNext(notification);
    for (dword_100B5FCD4 = v9; !v9; dword_100B5FCD4 = v9)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100814FB4();
      }

      v10 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Couldn't find %s service, waiting for first match\n", buf, 0xCu);
      }

      CFRunLoopRun();
      v9 = IOIteratorNext(notification);
    }

    v0 = IOServiceOpen(v9, mach_task_self_, 0, &dword_100B5FCD0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100814FDC();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815004();
      }
    }
  }

  CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(v3);
  IOObjectRelease(notification);
  if (qword_100B5FCC0 != -1)
  {
    sub_100815078();
  }

  v11 = qword_100B5FCC8;
  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "AppleBTHci";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Service %s connected!\n", buf, 0xCu);
  }

  if (!v0)
  {
    v1 = dword_100B5FCD0;
LABEL_4:
    v2 = IOConnectCallMethod(v1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v0 = v2;
      if (qword_100B5FCC0 != -1)
      {
        sub_10081513C();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815164();
      }
    }

    else
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008151DC();
      }

      v8 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applebt_hci_open: Service %s opened!\n", buf, 0xCu);
      }

      v0 = 0;
      byte_100B5FCB8 = 1;
    }

    return v0;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_1008150A0();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_1008150C8();
  }

  return v0;
}

const char *sub_10025A388(int a1)
{
  if (a1 <= -536870186)
  {
    if (a1 > -536870196)
    {
      switch(a1)
      {
        case -536870195:
          return "kIOReturnNotOpen";
        case -536870194:
          return "kIOReturnNotReadable";
        case -536870193:
          return "kIOReturnNotWritable";
      }
    }

    else
    {
      switch(a1)
      {
        case -536870211:
          return "kIOReturnNoMemory";
        case -536870206:
          return "kIOReturnBadArgument";
        case -536870198:
          return "kIOReturnIOError";
      }
    }
  }

  else if (a1 <= -536870166)
  {
    switch(a1)
    {
      case -536870185:
        return "kIOReturnOffline";
      case -536870181:
        return "kIOReturnNoSpace";
      case -536870167:
        return "kIOReturnDeviceError";
    }
  }

  else if (a1 < 0)
  {
    if (a1 == -536870165)
    {
      return "kIOReturnAborted";
    }

    if (a1 == -536870160)
    {
      return "kIOReturnNotFound";
    }
  }

  else
  {
    if (!a1)
    {
      return "kIOReturnSuccess";
    }

    if (a1 == 5)
    {
      return "KERN_FAILURE";
    }
  }

  return "UNKNOWN";
}

uint64_t sub_10025A550()
{
  if (byte_100B5FCB8)
  {
    byte_100B5FCB8 = 0;
    v0 = IOConnectCallMethod(dword_100B5FCD0, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815254();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815268();
      }
    }

    IOServiceClose(dword_100B5FCD0);
    dword_100B5FCD0 = 0;
    IOObjectRelease(dword_100B5FCD4);
    dword_100B5FCD4 = 0;
    if (qword_100B5FCC0 != -1)
    {
      sub_1008152E0();
    }

    v1 = qword_100B5FCC8;
    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v4 = "AppleBTHci";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_close: Service %s closed and disconnected!\n", buf, 0xCu);
    }
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_100815204();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100815218();
    }

    return 5;
  }

  return v0;
}

uint64_t sub_10025A78C()
{
  if (byte_100B5FCB8)
  {
    v0 = IOConnectCallMethod(dword_100B5FCD0, 4u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815358();
      }

      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      sub_10081536C();
    }

    if (qword_100B5FCC0 != -1)
    {
      sub_1008153E4();
    }

LABEL_9:
    v1 = qword_100B5FCC8;
    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_transport_reset: HCI Transport was reset!\n", buf, 2u);
    }

    return v0;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_100815308();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_10081531C();
  }

  return 5;
}

uint64_t sub_10025A95C(uint64_t a1, unsigned __int8 *inputStruct)
{
  if (byte_100B5FCB8)
  {
    v3 = a1;
    v34 = 0;
    memset(outputStruct, 0, sizeof(outputStruct));
    v26 = 8 * a1;
    v4 = IOConnectCallMethod(dword_100B5FCD0, 2u, 0, 0, inputStruct, 16 * a1, 0, 0, outputStruct, &v26);
    if (v4)
    {
      v5 = v4;
      if (qword_100B5FCC0 != -1)
      {
        sub_10081545C();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815484();
      }

      return v5;
    }

    if (v3 < 1)
    {
      return 0;
    }

    v5 = 0;
    v7 = v3;
    v8 = inputStruct + 1;
    for (i = outputStruct + 4; ; i += 8)
    {
      v10 = *(i - 1);
      if (v10)
      {
        break;
      }

LABEL_30:
      v8 += 16;
      if (!--v7)
      {
        return v5;
      }
    }

    if (v10 == -536870181)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008154FC();
      }

      v18 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v8 - 1);
        v20 = *i;
        v21 = *v8;
        *buf = 67109632;
        v28 = v19;
        v29 = 1024;
        v30 = v20;
        v31 = 1024;
        LODWORD(v32) = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "applebt_hci_write: write to discardable pipe %d failed with no space, written %d out of %d packets\n", buf, 0x14u);
      }

      goto LABEL_30;
    }

    if (v10 == -536870198)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815524();
      }

      v11 = qword_100B5FCC8;
      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v12 = *(v8 - 1);
      v13 = *i;
      v14 = *v8;
      *buf = 67109632;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      LODWORD(v32) = v14;
      v15 = v11;
      v16 = "applebt_hci_write: write to non-discardable pipe %d failed with no space, written %d out of %d packets\n";
      v17 = 20;
    }

    else
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_10081554C();
      }

      v22 = qword_100B5FCC8;
      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v23 = *(v8 - 1);
      v24 = *(i - 1);
      v25 = sub_10025A388(v24);
      *buf = 67109634;
      v28 = v23;
      v29 = 1024;
      v30 = v24;
      v31 = 2080;
      v32 = v25;
      v15 = v22;
      v16 = "applebt_hci_write: write to pipe %d failed with (0x%08X, %s)\n";
      v17 = 24;
    }

    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
LABEL_29:
    v5 = 5;
    goto LABEL_30;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_10081540C();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_100815420();
  }

  return 5;
}

uint64_t sub_10025ADA4(uint64_t a1, void *inputStruct, void *outputStruct)
{
  if (byte_100B5FCB8)
  {
    v11 = 8 * a1;
    v5 = 16 * a1;
    while (1)
    {
      v6 = IOConnectCallMethod(dword_100B5FCD0, 3u, 0, 0, inputStruct, v5, 0, 0, outputStruct, &v11);
      if (v6 != -536870165)
      {
        break;
      }

      if (qword_100B5FCC0 != -1)
      {
        sub_1008155C4();
      }

      v7 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "applebt_hci_read: method kAppleBTHciRead was aborted by signal! Read again\n", buf, 2u);
      }
    }

    v8 = v6;
    if (v6)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008155EC();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815614();
      }
    }
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_100815574();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100815588();
    }

    return 5;
  }

  return v8;
}

CFTypeRef sub_10025AFBC()
{
  v1 = dword_100B5FCD4;
  if (dword_100B5FCD4)
  {

    return IORegistryEntrySearchCFProperty(v1, "IODeviceTree", @"pipes", kCFAllocatorDefault, 1u);
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_10081568C();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008156A0();
    }

    return 0;
  }
}

void sub_10025B084(__CFRunLoop *a1)
{
  if (qword_100B5FCC0 != -1)
  {
    sub_1008156DC();
  }

  v2 = qword_100B5FCC8;
  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceFoundCB: releasing waiting thread\n", v3, 2u);
  }

  CFRunLoopStop(a1);
}

uint64_t sub_10025B1FC()
{
  memcpy(&word_100B5FCD8, &unk_1008A4488, 0x124uLL);
  off_100B5FE00 = 0;
  byte_100B5FE08 = 0;
  return 0;
}

uint64_t sub_10025B23C(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v11 = "cmdPacket";
    goto LABEL_150;
  }

  if (!a2)
  {
    v11 = "(cmdPacketLen) > 0";
LABEL_150:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 203, v11);
  }

  if (a2 <= 2)
  {
    sub_1000D660C();
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 210, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (a2 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 211, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v4 = *(a1 + 3);
  if (a2 - 4 != v4)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = *(a1 + 1);
  if (v5 <= 0xC2B)
  {
    if (*(a1 + 1) > 0xC1Du)
    {
      if (*(a1 + 1) > 0xC23u)
      {
        switch(v5)
        {
          case 0xC24u:
            if (v4 <= 2)
            {
              sub_1000D660C();
            }

            if (a2 <= 6)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 326, "ByteStream_NumReadBytesAvail(bs) >= 3");
            }

            result = 0;
            v8 = &byte_100B5FDF1;
            dword_100B5FDF4 = *(a1 + 4) | (*(a1 + 6) << 16);
            goto LABEL_135;
          case 0xC26u:
            if (v4 <= 1)
            {
              sub_1000D660C();
            }

            if (a2 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 270, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            result = 0;
            word_100B5FCDA = *(a1 + 4);
            return result;
          case 0xC2Au:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 275, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCEB = *(a1 + 4);
            return result;
        }
      }

      else
      {
        switch(v5)
        {
          case 0xC1Eu:
            if (v4 <= 3)
            {
              sub_1000D660C();
            }

            if (a2 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 254, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            word_100B5FCE2 = *(a1 + 4);
            if (a2 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 255, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            result = 0;
            word_100B5FCE4 = *(a1 + 6);
            return result;
          case 0xC20u:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 260, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCE9 = *(a1 + 4);
            return result;
          case 0xC22u:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 265, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCEA = *(a1 + 4);
            return result;
        }
      }
    }

    else if (*(a1 + 1) > 0xC17u)
    {
      switch(v5)
      {
        case 0xC18u:
          if (v4 <= 1)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 238, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCDC = *(a1 + 4);
          return result;
        case 0xC1Au:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 243, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCE8 = *(a1 + 4);
          return result;
        case 0xC1Cu:
          if (v4 <= 3)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 248, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          word_100B5FCDE = *(a1 + 4);
          if (a2 <= 7)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 249, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCE0 = *(a1 + 6);
          return result;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x80Fu:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 228, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          word_100B5FCE6 = *(a1 + 4);
          return result;
        case 0xC0Au:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 320, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          v7 = *(a1 + 4);
          v8 = &byte_100B5FDF8;
LABEL_134:
          v8[1] = v7;
LABEL_135:
          *v8 = 1;
          return result;
        case 0xC16u:
          if (v4 <= 1)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 233, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCD8 = *(a1 + 4);
          return result;
      }
    }

LABEL_144:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIParmCache, unknown opcode 0x%x", v5);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 105;
  }

  if (*(a1 + 1) <= 0xC44u)
  {
    if (*(a1 + 1) > 0xC3Du)
    {
      switch(v5)
      {
        case 0xC3Eu:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 295, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEF = *(a1 + 4);
          return result;
        case 0xC3Fu:
          if (v4 <= 9)
          {
            sub_1000D660C();
          }

          if (a2 - 14 >= 0xFFFFFFF6)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 223, "ByteStream_NumReadBytesAvail(bs) >= (sizeof(parmCache.channelClassification))");
          }

          result = 0;
          v9 = *(a1 + 4);
          word_100B5FCFC = *(a1 + 12);
          qword_100B5FCF4 = v9;
          return result;
        case 0xC43u:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 300, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCF0 = *(a1 + 4);
          return result;
      }
    }

    else
    {
      switch(v5)
      {
        case 0xC2Cu:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 280, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEC = *(a1 + 4);
          return result;
        case 0xC2Fu:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 285, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCED = *(a1 + 4);
          return result;
        case 0xC3Cu:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 290, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEE = *(a1 + 4);
          return result;
      }
    }

    goto LABEL_144;
  }

  if (*(a1 + 1) <= 0xC51u)
  {
    switch(v5)
    {
      case 0xC45u:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 305, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF1 = *(a1 + 4);
        return result;
      case 0xC47u:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 310, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF2 = *(a1 + 4);
        return result;
      case 0xC49u:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 315, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF3 = *(a1 + 4);
        return result;
    }

    goto LABEL_144;
  }

  if (*(a1 + 1) > 0xC58u)
  {
    if (v5 != 3161)
    {
      if (v5 == 3163)
      {
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 343, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCFF = *(a1 + 4);
        return result;
      }

      goto LABEL_144;
    }

    if (!*(a1 + 3))
    {
      sub_1000D660C();
    }

    if (a2 <= 4)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 337, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    result = 0;
    v7 = *(a1 + 4);
    v8 = &byte_100B5FDFA;
    goto LABEL_134;
  }

  if (v5 != 3154)
  {
    if (v5 == 3158)
    {
      if (!*(a1 + 3))
      {
        sub_1000D660C();
      }

      if (a2 <= 4)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 332, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      result = 0;
      byte_100B5FCFE = *(a1 + 4);
      return result;
    }

    goto LABEL_144;
  }

  if (v4 <= 0xF0)
  {
    sub_1000D660C();
  }

  if (a2 - 245 >= 0xFFFFFF0F)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 348, "ByteStream_NumReadBytesAvail(bs) >= (sizeof(parmCache.extendedInqResponse))");
  }

  memmove(&byte_100B5FD00, (a1 + 4), 0xF1uLL);
  return 0;
}

uint64_t sub_10025BAE0(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  off_100B5FE00 = a1;
  byte_100B5FE08 = 1;
  sub_10030423C(off_100AE8868);
  return 0;
}

void sub_10025BB2C(uint64_t result)
{
  if (byte_100B5FE08 == 1)
  {
    sub_1003044D0(off_100AE8868, result);
  }
}

uint64_t sub_10025BB50()
{
  byte_100B5FE08 = 0;
  v0 = off_100B5FE00;
  off_100B5FE00 = 0;
  if (v0)
  {
    return v0();
  }

  return result;
}

void sub_10025BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDF1)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(81, sub_10025CDDC, a3, a4, a5, a6, a7, a8, dword_100B5FDF4);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteClassofDevice failed %!", v10);
        v11 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDF8)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(59, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FDF9);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WritePINType failed %!", v10);
        v11 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(67, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCD8);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteConnectionAcceptTimeout failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(69, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDC);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageTimeout failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(71, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCE8);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteScanEnable failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v11 = word_100B5FCE0;
  v8 = sub_100018960(73, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanActivity failed %!", v9, v11);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v11 = word_100B5FCE4;
  v8 = sub_100018960(75, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCE2);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanActivity failed %!", v9, v11);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(77, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCE9);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAuthenticationEnable failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(79, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEA);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteEncryptionMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(83, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDA);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteVoiceSetting failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(87, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEB);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteNumBroadcastRetransmissions failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(89, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEC);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteHoldModeActivity failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(92, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCED);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteSCOFlowControlEnable failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(102, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanPeriodMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(104, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEF);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(107, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF0);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanType failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(109, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF1);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(111, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF2);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanType failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(113, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF3);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAfhChannelAssessmentMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(51, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCE6);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteDefaultLinkPolicySettings failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(105, sub_10025CDDC, a3, a4, a5, a6, a7, a8, &qword_100B5FCF4);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SetAfhHostChannelClassification failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(118, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCFE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteSimplePairingMode failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(124, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCFF);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteDefaultErroneousDataReporting failed %!", v9);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(115, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FD00);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteExtendedInquiryResponse failed %!", v9, &unk_100B5FD01);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDFA)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(121, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FDFB);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteInquiryResponseTxPowerLevel failed %!", v10);
        v11 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025CDDC(uint64_t a1)
{
  if (byte_100B5FE08)
  {
    if (a1 == 628)
    {
LABEL_19:
      sub_1003043EC(off_100AE8868);
      return;
    }

    if (a1 == 717)
    {
      if (!sub_10000C240())
      {
        goto LABEL_19;
      }

      sub_10000AF54("Unsupported command %!, ignoring error", 717);
      v2 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    if ((a1 - 701) <= 0x44)
    {
      if (!sub_10000C240())
      {
        goto LABEL_19;
      }

      sub_10000AF54("Assuming unsupported command %!, ignoring error", a1);
      v4 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

LABEL_6:
      sub_10080F7A0();
      goto LABEL_19;
    }

    if (!a1)
    {
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("commonRestoreCb %!", a1);
      v5 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1003044D0(off_100AE8868, a1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Orphaned parm chache callback");
    v3 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10025CF64(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %d, Byte 0x%x, hlCb 0x%x", result, 0, a2);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 73, "void _BCM_U8EventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_14:
    v9 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v9 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 73, v9);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_10025D074(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 90, "void _BCM_U8_U8EventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if (v8 > v9)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          *(a3 + 6) = v9 + 1;
          if (v8 <= v9 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 91, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v10 + v9);
          *(a3 + 6) = v9 + 2;
          v6 = *(v10 + v9 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 90, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d,  Byte 0x%x, Byte1 0x%x, hlCb 0x%x", result, 0, 0, a2);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10025D1B4(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 129, "void _BCM_U16_U8EventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if ((v8 - v9) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          v11 = (*a3 + v9);
          v12 = *v11;
          v13 = v11[1];
          *(a3 + 6) = v9 + 2;
          if (v8 <= (v9 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 130, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = v12 | (v13 << 8);
          *(a3 + 6) = v9 + 3;
          v6 = *(v10 + (v9 + 2));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 129, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d, ConnectionHandle 0x%x, Byte 0x%x, hlCb 0x%x", result, 0, 0, a2);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10025D308(uint64_t result, uint64_t (*a2)(uint64_t, void, void, uint64_t, void), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 147, "void _BCM_ProfilingStatsEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v10 = *(a3 + 5);
      v11 = *(a3 + 6);
      if (v10 - v11 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v12 = *a3;
          v9 = *(*a3 + v11);
          *(a3 + 6) = v11 + 2;
          if (v10 - (v11 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 148, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v8 = *(v12 + (v11 + 2));
          *(a3 + 6) = v11 + 4;
          if (v10 - (v11 + 4) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 149, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v13 = (v12 + (v11 + 4));
          v14 = *v13;
          v15 = v13[1];
          *(a3 + 6) = v11 + 6;
          if (v10 - (v11 + 6) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 150, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v6 = v14 | (v15 << 8);
          v7 = *(v12 + (v11 + 6));
          *(a3 + 6) = v11 + 8;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 147, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!, transmitting %d, receiving %d, sleep %d, others %d", result, 0, 0, 0, 0);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v9, v8, v6, v7);
  }
}

void sub_10025D4E0(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 343, "void _BCM_ProprietaryLocalFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 12);
  if (*(a3 + 10) - v7 <= 3)
  {
LABEL_14:
    v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 343, v8);
  }

  v6 = *(*a3 + v7);
  *(a3 + 12) = v7 + 4;
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_10025D5F0(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 361, "void _BCM_ProprietaryRemoteFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if (v8 - v9 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          v11 = (*a3 + v9);
          v12 = *v11;
          v13 = v11[1];
          *(a3 + 6) = v9 + 2;
          if (v8 - (v9 + 2) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 362, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v7 = v12 | (v13 << 8);
          v6 = *(v10 + (v9 + 2));
          *(a3 + 6) = v9 + 6;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 361, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10025D748(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 379, "void _BCM_EpaGpioReadStatusEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v9 = *(a3 + 5);
      v10 = *(a3 + 6);
      if (v9 > v10)
      {
        if (*(a3 + 14) == 1)
        {
          v11 = *a3;
          *(a3 + 6) = v10 + 1;
          if (v9 <= v10 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 380, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v11 + v10);
          *(a3 + 6) = v10 + 2;
          if (v9 <= v10 + 2)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 381, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v11 + v10 + 1);
          *(a3 + 6) = v10 + 3;
          v6 = *(v11 + v10 + 2);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 379, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v8, v7, v6);
  }
}

void sub_10025D8B8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 398, "void _BCM_AdvBufConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 398, v10);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", result), v9 = sub_10000C050(0x54u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(result, v6);
  }
}

void sub_10025DA18(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    v7 = 255;
    v8 = 255;
    v9 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 421, "void _BCM_AdvBufExtFilterConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_21;
  }

  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  if (v10 <= v11)
  {
LABEL_21:
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 421, v14);
  }

  v12 = *a3;
  *(a3 + 6) = v11 + 1;
  if (v10 <= v11 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 422, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v6 = *(v12 + v11);
  *(a3 + 6) = v11 + 2;
  if (v10 <= v11 + 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 423, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = *(v12 + v11 + 1);
  *(a3 + 6) = v11 + 3;
  if (v10 <= v11 + 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 424, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = *(v12 + v11 + 2);
  *(a3 + 6) = v11 + 4;
  v9 = *(v12 + v11 + 3);
  if (v6 == 13)
  {
LABEL_15:
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!sub_10000C240())
  {
    goto LABEL_15;
  }

  sub_10000AF54("SubOpcode Incorrect %!", result);
  v13 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(result, v6, v7, v8, v9);
  }
}

void sub_10025DC24(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 447, "void _BCM_AdvBufReadCommandEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_21;
  }

  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  if (v10 <= v11)
  {
LABEL_21:
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 447, v14);
  }

  v12 = *a3;
  *(a3 + 6) = v11 + 1;
  if (v10 <= (v11 + 1))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 448, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v9 = *(v12 + v11);
  *(a3 + 6) = v11 + 2;
  if (v10 <= (v11 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 449, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v6 = *(v12 + v11 + 1);
  *(a3 + 6) = v11 + 3;
  if ((v10 - (v11 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 450, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v7 = *(v12 + v11 + 2);
  v8 = *(v12 + v11 + 3);
  *(a3 + 6) = v11 + 5;
  if (v9 == 2)
  {
LABEL_15:
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!sub_10000C240())
  {
    goto LABEL_15;
  }

  sub_10000AF54("SubOpcode Incorrect %!", result);
  v13 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(result, v9, v6, v7, v8);
  }
}

void sub_10025DE34(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("status %!", result), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

void sub_10025DEC0(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("status %!", result), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

void sub_10025DF4C(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("status %!", result), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

void sub_10025DFD8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 591, "void _BCM_MatchBufferConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 591, v10);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", result), v9 = sub_10000C050(0x54u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(result, v6);
  }
}

void sub_10025E138(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 255;
    goto LABEL_11;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 612, "void _BCM_MatchBufferReadEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_19;
  }

  v8 = *(a3 + 5);
  v9 = *(a3 + 6);
  if (v8 <= v9)
  {
LABEL_19:
    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a3 + 14) != 1)
  {
    v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 612, v12);
  }

  v10 = *a3;
  *(a3 + 6) = v9 + 1;
  if (v8 <= v9 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 613, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = *(v10 + v9);
  *(a3 + 6) = v9 + 2;
  v6 = *(v10 + v9 + 1);
  if (v7 == 6)
  {
LABEL_13:
    if (!a2)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (!sub_10000C240())
  {
    goto LABEL_13;
  }

  sub_10000AF54("SubOpcode Incorrect %!", result);
  v11 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_14:
    a2(result, v7, v6);
  }
}

void sub_10025E2D4(uint64_t result, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 633, "void _BCM_ReadConnEventCntEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 12);
  if (*(a3 + 10) - v7 <= 1)
  {
LABEL_14:
    v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 633, v8);
  }

  v6 = *(*a3 + v7);
  *(a3 + 12) = v7 + 2;
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_10025E3E8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 255;
    goto LABEL_12;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 652, "void _BCM_SCOBufferSizeControlEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_20;
  }

  v9 = *(a3 + 5);
  v10 = *(a3 + 6);
  if (v9 <= v10)
  {
LABEL_20:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_22;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 652, v16);
  }

  v11 = *a3;
  *(a3 + 6) = v10 + 1;
  if ((v9 - (v10 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 653, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = *(v11 + v10);
  v12 = (v11 + v10 + 1);
  v13 = *v12;
  v14 = v12[1];
  *(a3 + 6) = v10 + 3;
  if (v9 <= (v10 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 654, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v6 = v13 | (v14 << 8);
  *(a3 + 6) = v10 + 4;
  v7 = *(v11 + (v10 + 3));
  if (!v8)
  {
LABEL_14:
    if (!a2)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (!sub_10000C240())
  {
    goto LABEL_14;
  }

  sub_10000AF54("SubOpcode Incorrect %!", result);
  v15 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_15:
    a2(result, v8, v6, v7);
  }
}

void sub_10025E5C8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t *, uint64_t *, int), uint64_t *a3)
{
  BYTE4(v26) = 0;
  LODWORD(v26) = 0;
  BYTE4(v25) = 0;
  LODWORD(v25) = 0;
  BYTE4(v24) = 0;
  LODWORD(v24) = 0;
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 681, "void _BCM_GetEssentialPowerDatabaseEntriesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v12 = *(a3 + 5);
      v13 = *(a3 + 6);
      if (v12 > v13)
      {
        if (*(a3 + 14) == 1)
        {
          v14 = *a3;
          *(a3 + 6) = v13 + 1;
          if (v12 <= (v13 + 1))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 682, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v10 = *(v14 + v13);
          *(a3 + 6) = v13 + 2;
          if (v12 <= (v13 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 683, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v9 = *(v14 + v13 + 1);
          *(a3 + 6) = v13 + 3;
          if (v12 <= (v13 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 684, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v14 + v13 + 2);
          v15 = v13 + 4;
          *(a3 + 6) = v13 + 4;
          v7 = *(v14 + v13 + 3);
          if ((v10 - 1) > 1u)
          {
            v6 = 0;
            if (!a2)
            {
              return;
            }
          }

          else
          {
            if ((v12 - v15) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 686, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v16 = (v14 + v15);
            v17 = *v16;
            BYTE4(v26) = *(v16 + 4);
            LODWORD(v26) = v17;
            *(a3 + 6) = v13 + 9;
            if ((v12 - (v13 + 9)) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 687, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v18 = (v14 + (v13 + 9));
            v19 = *v18;
            BYTE4(v25) = *(v18 + 4);
            LODWORD(v25) = v19;
            *(a3 + 6) = v13 + 14;
            if ((v12 - (v13 + 14)) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 688, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v20 = (v14 + (v13 + 14));
            v21 = *v20;
            BYTE4(v24) = *(v20 + 4);
            LODWORD(v24) = v21;
            *(a3 + 6) = v13 + 19;
            if (v10 == 2)
            {
              if (v12 <= (v13 + 19))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 690, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              *(a3 + 6) = v13 + 20;
              v6 = *(v14 + (v13 + 19));
              v10 = 2;
              if (a2)
              {
                goto LABEL_6;
              }

              return;
            }

            v6 = 0;
            v10 = 1;
            if (!a2)
            {
              return;
            }
          }

LABEL_6:
          LOBYTE(v23) = v6;
          a2(result, v10, v9, v8, v7, &v26, &v25, &v24, v23);
          return;
        }

        v22 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_29:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 681, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_29;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result, v24, v25, v26);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a2)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10025E8BC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, void, int), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 719, "void _BCM_HRBReadEnhancedTransmitPowerLevelEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if ((v17 - v18) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 2;
          if (v17 <= (v18 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 720, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v18 + 3;
          if (v17 <= (v18 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 721, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v19 + (v18 + 2));
          *(a3 + 6) = v18 + 4;
          if (v17 <= (v18 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 722, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v19 + (v18 + 3));
          *(a3 + 6) = v18 + 5;
          if (v17 <= (v18 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 723, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v19 + (v18 + 4));
          *(a3 + 6) = v18 + 6;
          if (v17 <= (v18 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 724, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v9 = *(v19 + (v18 + 5));
          *(a3 + 6) = v18 + 7;
          if (v17 <= (v18 + 7))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 725, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v10 = *(v19 + (v18 + 6));
          *(a3 + 6) = v18 + 8;
          if (v17 <= (v18 + 8))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 726, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v11 = *(v19 + (v18 + 7));
          *(a3 + 6) = v18 + 9;
          if (v17 <= (v18 + 9))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 727, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          result = *(v19 + (v18 + 8));
          *(a3 + 6) = v18 + 10;
          if (v17 <= (v18 + 10))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 728, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v12 = *(v19 + (v18 + 9));
          *(a3 + 6) = v18 + 11;
          if (v17 <= (v18 + 11))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 729, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v13 = *(v19 + (v18 + 10));
          *(a3 + 6) = v18 + 12;
          v14 = *(v19 + (v18 + 11));
          if (a2)
          {
            goto LABEL_6;
          }

          return result;
        }

        v20 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 719, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_27;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("status %!", a1), v6 = sub_10000C050(0x54u), result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    HIBYTE(v21) = v14;
    BYTE2(v21) = v13;
    BYTE1(v21) = v12;
    LOBYTE(v21) = result;
    return a2(a1, v16, v15, v7, v8, v9, v10, v11, v21);
  }

  return result;
}

void sub_10025EC14(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 749, "void _BCM_HRBReadAFHChannelMapEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 6);
      v9 = *(a3 + 5);
      if (v9 - v8 > 9)
      {
        v10 = *a3;
        *(a3 + 6) = v8 + 10;
        if (v9 - (v8 + 10) <= 0x9F)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 751, "ByteStream_NumReadBytesAvail(*pBs) >= (80 * sizeof(uint16_t))");
        }

        v7 = v10 + v8;
        v6 = v10 + (v8 + 10);
        *(a3 + 6) = v8 + 170;
        if (a2)
        {
          goto LABEL_6;
        }

        return;
      }
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 749, "ByteStream_NumReadBytesAvail(*pBs) >= (10)");
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

uint64_t sub_10025ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return (a2 & 0x3FFu) <= 0x32 && ((1 << a2) & 0x7000000000001) != 0 || (a2 & 0x3FF) == 0x247;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("status %!, opcode 0x%x, subOpcode %x, myopcode %x", a1, a2, a3, a2 & 0x3FF);
    v7 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

void sub_10025EE04(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 868, "void _BCM_CreateMultiAdvInstParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_14:
    v9 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v9 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 868, v9);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_10025EF10(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 903, "void _BCM_SensorTrackCommandEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if (v8 > v9)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          *(a3 + 6) = v9 + 1;
          if (v8 <= v9 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 904, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v10 + v9);
          *(a3 + 6) = v9 + 2;
          v6 = *(v10 + v9 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 903, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10025F04C(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("status %!", result), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

void sub_10025F0D8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 938, "void _BCM_ReadLocalControllerCachedInfoEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v10 = *(a3 + 5);
      v11 = *(a3 + 6);
      if (v10 > v11)
      {
        if (*(a3 + 14) == 1)
        {
          v12 = *a3;
          *(a3 + 6) = v11 + 1;
          v6 = *(v12 + v11);
          if ((v10 - (v11 + 1)) <= 1)
          {
            *(a3 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 940, "void _BCM_ReadLocalControllerCachedInfoEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
            v7 = 0;
            v14 = 0;
          }

          else
          {
            v13 = v11 + 3;
            v7 = *(v12 + v11 + 1);
            *(a3 + 6) = v13;
            v14 = (v10 - v13);
          }

          if (v14 != v7)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 941, "length == remaining");
          }

          v8 = *a3 + *(a3 + 6);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 938, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v6, v7, v8);
  }
}

uint64_t sub_10025F270(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), uint64_t *a3)
{
  v3 = a2;
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1019, "void _BCM_LowPowerCoreStatsEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v35 = *(a3 + 5);
      v36 = *(a3 + 6);
      if (v35 - v36 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v37 = *a3;
          v33 = *(*a3 + v36);
          *(a3 + 6) = v36 + 4;
          if (v35 - (v36 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1020, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v32 = *(v37 + (v36 + 4));
          *(a3 + 6) = v36 + 8;
          if (v35 - (v36 + 8) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1021, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v31 = *(v37 + (v36 + 8));
          *(a3 + 6) = v36 + 12;
          if (v35 - (v36 + 12) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1022, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v57 = *(v37 + (v36 + 12));
          *(a3 + 6) = v36 + 16;
          if (v35 - (v36 + 16) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1023, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v9 = *(v37 + (v36 + 16));
          *(a3 + 6) = v36 + 20;
          if (v35 - (v36 + 20) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1024, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v10 = *(v37 + (v36 + 20));
          *(a3 + 6) = v36 + 24;
          if (v35 - (v36 + 24) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1025, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v11 = *(v37 + (v36 + 24));
          *(a3 + 6) = v36 + 28;
          if (v35 - (v36 + 28) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1026, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v56 = *(v37 + (v36 + 28));
          *(a3 + 6) = v36 + 32;
          if (v35 - (v36 + 32) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1027, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v55 = *(v37 + (v36 + 32));
          *(a3 + 6) = v36 + 36;
          if (v35 - (v36 + 36) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1028, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v38 = *(v37 + (v36 + 36));
          *(a3 + 6) = v36 + 40;
          v39 = v35 - (v36 + 40);
          v74 = v38;
          if ((v39 & 0x1FFFE) != 0)
          {
            if (v39 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1032, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v40 = *(v37 + (v36 + 40));
            *(a3 + 6) = v36 + 44;
            if (v35 - (v36 + 44) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1033, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v41 = *(v37 + (v36 + 44));
            *(a3 + 6) = v36 + 48;
            if (v35 - (v36 + 48) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1034, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v42 = *(v37 + (v36 + 48));
            *(a3 + 6) = v36 + 52;
            if (v35 - (v36 + 52) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1035, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v43 = *(v37 + (v36 + 52));
            *(a3 + 6) = v36 + 56;
            if (v35 - (v36 + 56) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1036, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v44 = *(v37 + (v36 + 56));
            *(a3 + 6) = v36 + 60;
            if (v35 - (v36 + 60) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1037, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v45 = *(v37 + (v36 + 60));
            *(a3 + 6) = v36 + 64;
            if (v35 - (v36 + 64) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1038, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v46 = *(v37 + (v36 + 64));
            *(a3 + 6) = v36 + 68;
            if (v35 - (v36 + 68) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1039, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v47 = *(v37 + (v36 + 68));
            *(a3 + 6) = v36 + 72;
            if (v35 - (v36 + 72) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1040, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v48 = *(v37 + (v36 + 72));
            *(a3 + 6) = v36 + 76;
            if (v35 - (v36 + 76) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1042, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v49 = *(v37 + (v36 + 76));
            *(a3 + 6) = v36 + 80;
            if (v35 - (v36 + 80) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1043, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v50 = *(v37 + (v36 + 80));
            *(a3 + 6) = v36 + 84;
            if (v35 - (v36 + 84) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1044, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v51 = *(v37 + (v36 + 84));
            *(a3 + 6) = v36 + 88;
            if (v35 - (v36 + 88) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1045, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v52 = *(v37 + (v36 + 88));
            *(a3 + 6) = v36 + 92;
            if (v35 - (v36 + 92) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1046, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v53 = *(v37 + (v36 + 92));
            *(a3 + 6) = v36 + 96;
            if (v35 - (v36 + 96) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1047, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v73) = *(v37 + (v36 + 96));
            *(a3 + 6) = v36 + 100;
            if (v35 - (v36 + 100) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1048, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v73) = *(v37 + (v36 + 100));
            *(a3 + 6) = v36 + 104;
            if (v35 - (v36 + 104) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1049, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v72) = *(v37 + (v36 + 104));
            *(a3 + 6) = v36 + 108;
            if (v35 - (v36 + 108) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1050, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v72) = *(v37 + (v36 + 108));
            *(a3 + 6) = v36 + 112;
            if (v35 - (v36 + 112) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1051, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v71) = *(v37 + (v36 + 112));
            *(a3 + 6) = v36 + 116;
            if (v35 - (v36 + 116) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1052, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v71) = *(v37 + (v36 + 116));
            *(a3 + 6) = v36 + 120;
            if (v35 - (v36 + 120) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1053, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v70) = *(v37 + (v36 + 120));
            *(a3 + 6) = v36 + 124;
            if (v35 - (v36 + 124) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1054, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v70) = *(v37 + (v36 + 124));
            *(a3 + 6) = v36 + 128;
            if (v35 - (v36 + 128) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1055, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v69) = *(v37 + (v36 + 128));
            *(a3 + 6) = v36 + 132;
            if (v35 - (v36 + 132) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1056, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v69) = *(v37 + (v36 + 132));
            *(a3 + 6) = v36 + 136;
            if (v35 - (v36 + 136) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1057, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v68) = *(v37 + (v36 + 136));
            *(a3 + 6) = v36 + 140;
            if (v35 - (v36 + 140) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1058, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v68) = *(v37 + (v36 + 140));
            *(a3 + 6) = v36 + 144;
            if (v35 - (v36 + 144) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1059, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v67) = *(v37 + (v36 + 144));
            *(a3 + 6) = v36 + 148;
            if (v35 - (v36 + 148) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1060, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v67) = *(v37 + (v36 + 148));
            *(a3 + 6) = v36 + 152;
            if (v35 - (v36 + 152) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1061, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v66 = *(v37 + (v36 + 152));
            *(a3 + 6) = v36 + 156;
            if (v35 - (v36 + 156) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1062, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v65 = __PAIR64__(v52, v53);
            v14 = *(v37 + (v36 + 156));
            *(a3 + 6) = v36 + 160;
            if (v35 - (v36 + 160) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1063, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v64) = v51;
            result = *(v37 + (v36 + 160));
            *(a3 + 6) = v36 + 164;
            if (v35 - (v36 + 164) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1064, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v15 = *(v37 + (v36 + 164));
            *(a3 + 6) = v36 + 168;
            if (v35 - (v36 + 168) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1065, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v63) = v50;
            LODWORD(v64) = v49;
            v16 = *(v37 + (v36 + 168));
            *(a3 + 6) = v36 + 172;
            if (v35 - (v36 + 172) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1066, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v17 = *(v37 + (v36 + 172));
            *(a3 + 6) = v36 + 174;
            if (v35 - (v36 + 174) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1067, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            HIDWORD(v62) = v48;
            LODWORD(v63) = v47;
            v18 = *(v37 + (v36 + 174));
            *(a3 + 6) = v36 + 176;
            if (v35 - (v36 + 176) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1068, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v19 = *(v37 + (v36 + 176));
            *(a3 + 6) = v36 + 178;
            if (v35 - (v36 + 178) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1069, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            HIDWORD(v61) = v46;
            LODWORD(v62) = v45;
            v20 = *(v37 + (v36 + 178));
            *(a3 + 6) = v36 + 180;
            if (v35 - (v36 + 180) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1070, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v61) = v44;
            v21 = *(v37 + (v36 + 180));
            *(a3 + 6) = v36 + 184;
            if (v35 - (v36 + 184) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1071, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v22 = *(v37 + (v36 + 184));
            *(a3 + 6) = v36 + 188;
            if (v35 - (v36 + 188) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1072, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v60 = __PAIR64__(v42, v43);
            v23 = *(v37 + (v36 + 188));
            *(a3 + 6) = v36 + 190;
            if (v35 - (v36 + 190) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1073, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v24 = *(v37 + (v36 + 190));
            *(a3 + 6) = v36 + 192;
            if (v35 - (v36 + 192) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1074, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v58 = v41;
            v59 = v40;
            v25 = *(v37 + (v36 + 192));
            *(a3 + 6) = v36 + 194;
            if (v35 - (v36 + 194) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1075, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v26 = *(v37 + (v36 + 194));
            *(a3 + 6) = v36 + 196;
            if (v35 - (v36 + 196) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1076, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v27 = *(v37 + (v36 + 196));
            *(a3 + 6) = v36 + 200;
            if (v35 - (v36 + 200) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1077, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v28 = *(v37 + (v36 + 200));
            *(a3 + 6) = v36 + 204;
            if (v35 - (v36 + 204) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1078, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v29 = *(v37 + (v36 + 204));
            *(a3 + 6) = v36 + 208;
            if (v35 - (v36 + 208) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1079, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v30 = *(v37 + (v36 + 208));
            *(a3 + 6) = v36 + 212;
          }

          else
          {
            v59 = 0;
            v58 = 0;
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v73 = 0;
            v72 = 0;
            v71 = 0;
            v70 = 0;
            v69 = 0;
            v68 = 0;
            v67 = 0;
            v66 = 0;
            v14 = 0;
            result = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
          }

          v12 = v56;
          v8 = v57;
          v13 = v55;
          if (v3)
          {
            return v3(a1, v33, v32, v31, v8, v9, v10, v11, __PAIR64__(v13, v12), __PAIR64__(v59, v74), __PAIR64__(HIDWORD(v60), v58), __PAIR64__(v61, v60), __PAIR64__(HIDWORD(v61), v62), __PAIR64__(HIDWORD(v62), v63), __PAIR64__(HIDWORD(v63), v64), __PAIR64__(HIDWORD(v65), HIDWORD(v64)), __PAIR64__(HIDWORD(v73), v65), __PAIR64__(HIDWORD(v72), v73), __PAIR64__(HIDWORD(v71), v72), __PAIR64__(HIDWORD(v70), v71), __PAIR64__(HIDWORD(v69), v70), __PAIR64__(HIDWORD(v68), v69), __PAIR64__(HIDWORD(v67), v68), __PAIR64__(v66, v67), __PAIR64__(result, v14), __PAIR64__(v16, v15), __PAIR64__(v18, v17), __PAIR64__(v20, v19), __PAIR64__(v22, v21), __PAIR64__(v24, v23), __PAIR64__(v26, v25), __PAIR64__(v28, v27), __PAIR64__(v30, v29));
          }

          return result;
        }

        v54 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_76:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1019, v54);
      }
    }

    v54 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_76;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("EnhancedProfilingStats VSC failed with status %!", a1), v7 = sub_10000C050(0x54u), result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v74 = 0;
    v59 = 0;
    v58 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v14 = 0;
    result = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v74 = 0;
    v59 = 0;
    v58 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v14 = 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v3 = a2;
  if (a2)
  {
    return v3(a1, v33, v32, v31, v8, v9, v10, v11, __PAIR64__(v13, v12), __PAIR64__(v59, v74), __PAIR64__(HIDWORD(v60), v58), __PAIR64__(v61, v60), __PAIR64__(HIDWORD(v61), v62), __PAIR64__(HIDWORD(v62), v63), __PAIR64__(HIDWORD(v63), v64), __PAIR64__(HIDWORD(v65), HIDWORD(v64)), __PAIR64__(HIDWORD(v73), v65), __PAIR64__(HIDWORD(v72), v73), __PAIR64__(HIDWORD(v71), v72), __PAIR64__(HIDWORD(v70), v71), __PAIR64__(HIDWORD(v69), v70), __PAIR64__(HIDWORD(v68), v69), __PAIR64__(HIDWORD(v67), v68), __PAIR64__(v66, v67), __PAIR64__(result, v14), __PAIR64__(v16, v15), __PAIR64__(v18, v17), __PAIR64__(v20, v19), __PAIR64__(v22, v21), __PAIR64__(v24, v23), __PAIR64__(v26, v25), __PAIR64__(v28, v27), __PAIR64__(v30, v29));
  }

  return result;
}

void sub_100260224(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, void), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1098, "void _BCM_AddToFilterAcceptListWithOptionsPollStatsParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if ((v8 - v9) > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          v7 = *(*a3 + v9);
          *(a3 + 6) = v9 + 4;
          if (v8 <= (v9 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1099, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v9 + 5;
          v6 = *(v10 + (v9 + 4));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1098, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6, 0);
  }
}

void sub_100260370(uint64_t result, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t *a3)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_17;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1119, "void _BCM_SPMICoexDebugCountersParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
LABEL_27:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_28:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1119, v16);
  }

  v6 = *(a3 + 5);
  v7 = *(a3 + 6);
  v8 = v6 - 1;
  v9 = &v18 + 1;
  v10 = 10;
  do
  {
    if (v6 <= v7)
    {
      goto LABEL_27;
    }

    if (*(a3 + 14) != 1)
    {
      v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      goto LABEL_28;
    }

    v11 = *a3;
    *(a3 + 6) = v7 + 1;
    *(v9 - 2) = *(v11 + v7);
    if (v6 <= (v7 + 1))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1120, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    v12 = v7 + 2;
    *(a3 + 6) = v12;
    *(v9 - 1) = *(v11 + v7 + 1);
    if (v8 <= v12)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1121, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    *v9 = *(v11 + v12);
    v9 += 2;
    v7 += 4;
    *(a3 + 6) = v7;
    --v10;
  }

  while (v10);
  v13 = &v20 + 5;
  v14 = 10;
  do
  {
    if (v6 <= v7)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1125, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    *(a3 + 6) = v7 + 1;
    *(v13 - 2) = *(v11 + v7);
    if (v6 <= (v7 + 1))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1126, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    v15 = v7 + 2;
    *(a3 + 6) = v15;
    *(v13 - 1) = *(v11 + v7 + 1);
    if (v8 <= v15)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1127, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    *v13 = *(v11 + v15);
    v13 += 2;
    v7 += 4;
    *(a3 + 6) = v7;
    --v14;
  }

  while (v14);
LABEL_17:
  if (a2)
  {
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[0] = v18;
    v17[1] = v19;
    a2(result, v17);
  }
}

void sub_1002605D4(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1144, "void _BCM_Load_MSFFile_EventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_14:
    v9 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v9 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1144, v9);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_1002606E0(uint64_t result, uint64_t (*a2)(void, void))
{
  if (result)
  {
    v4 = off_100B5FE10;
    if (sub_10000C240() && (sub_10000AF54("status %!, hlCb 0x%x, pCallbackFunc %x", result, a2, off_100B5FE10), v5 = sub_10000C050(0x54u), os_log_type_enabled(v5, OS_LOG_TYPE_ERROR)))
    {
      sub_10080F604();
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    v4(result, 0);
    a2 = 0;
  }

  off_100B5FE10 = a2;
}

uint64_t sub_100260788(int a1, int a2, void (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2762, "OI_STATUS _BCM_OlympicRSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 1;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2763, "OI_STATUS _BCM_OlympicRSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = a1;
            *(v15 + WORD2(v16) + 1) = BYTE1(a1);
            *(v15 + WORD2(v16) + 2) = BYTE2(a1);
            *(v15 + WORD2(v16) + 3) = HIBYTE(a1);
            v11 = WORD2(v16) + 4;
            WORD2(v16) += 4;
            if (HIBYTE(v16))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2764, "OI_STATUS _BCM_OlympicRSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v16) - v11 > 3)
            {
              if (BYTE6(v16) == 2)
              {
                *(v15 + v11) = a2;
                *(v15 + WORD2(v16) + 1) = BYTE1(a2);
                *(v15 + WORD2(v16) + 2) = BYTE2(a2);
                *(v15 + WORD2(v16) + 3) = HIBYTE(a2);
                WORD2(v16) += 4;
                return sub_100020078(226, v15, BYTE4(v16), a3, sub_100022AD0, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2764, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2763, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2762, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100260A20(char a1, _BYTE *a2, void (*a3)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2778, "OI_STATUS _BCM_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 7;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v10 = WORD2(v21);
        v11 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2779, "OI_STATUS _BCM_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v21) > v11)
        {
          if (BYTE6(v21) == 2)
          {
            WORD2(v21) = v10 + 5;
            *(v20 + v11) = a1;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2780, "OI_STATUS _BCM_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v21) - WORD2(v21) > 2)
            {
              if (BYTE6(v21) == 2)
              {
                v12 = v20 + WORD2(v21);
                *(v12 + 2) = 0;
                *v12 = 0;
                v13 = WORD2(v21) + 3;
                WORD2(v21) += 3;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2781, "OI_STATUS _BCM_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v21) - v13 > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + v13) = *a2;
                    *(v20 + WORD2(v21) + 1) = a2[1];
                    v14 = WORD2(v21) + 2;
                    WORD2(v21) += 2;
                    if (HIBYTE(v21))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2782, "OI_STATUS _BCM_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v21) - v14 > 1)
                    {
                      if (BYTE6(v21) == 2)
                      {
                        *(v20 + v14) = 0;
                        WORD2(v21) += 2;
                        return sub_100020078(226, v20, BYTE4(v21), a3, sub_100022AD0, v7, v8, v9);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2782, v19);
                    }

                    v19 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
                    goto LABEL_38;
                  }

                  v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2781, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_34;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2780, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_30;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2779, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2778, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100260D58(char a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2797, "OI_STATUS _BCM_OlympicReadProfilingStats(_Bool, BT_VSC_PROFILING_STATS_CB)");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        *(v12 + WORD2(v13)) = 13;
        *(v12 + WORD2(v13) + 1) = 0;
        *(v12 + WORD2(v13) + 3) = 0;
        v8 = WORD2(v13);
        v9 = WORD2(v13) + 4;
        WORD2(v13) += 4;
        if (HIBYTE(v13))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2798, "OI_STATUS _BCM_OlympicReadProfilingStats(_Bool, BT_VSC_PROFILING_STATS_CB)");
        }

        else if (WORD1(v13) > v9)
        {
          if (BYTE6(v13) == 2)
          {
            WORD2(v13) = v8 + 5;
            *(v12 + v9) = a1;
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_10025D308, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2798, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2797, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100260EE4(char a1, _BYTE *a2, void (*a3)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2858, "OI_STATUS _BCM_OlympicSetCountryBasedPower(uint8_t, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v17) - WORD2(v17) > 3)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = 18;
        *(v16 + WORD2(v17) + 1) = 0;
        *(v16 + WORD2(v17) + 3) = 0;
        v10 = WORD2(v17) + 4;
        WORD2(v17) += 4;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2859, "OI_STATUS _BCM_OlympicSetCountryBasedPower(uint8_t, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v17) - v10 > 1)
        {
          if (BYTE6(v17) == 2)
          {
            *(v16 + v10) = *a2;
            *(v16 + WORD2(v17) + 1) = a2[1];
            v11 = WORD2(v17);
            v12 = WORD2(v17) + 2;
            WORD2(v17) += 2;
            if (HIBYTE(v17))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2860, "OI_STATUS _BCM_OlympicSetCountryBasedPower(uint8_t, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v17) > v12)
            {
              if (BYTE6(v17) == 2)
              {
                WORD2(v17) = v11 + 3;
                *(v16 + v12) = a1;
                return sub_100020078(226, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2860, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2859, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2858, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100261114(_BYTE *a1, void (*a2)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2877, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
    }

    else if (WORD1(v25) - WORD2(v25) > 3)
    {
      if (BYTE6(v25) == 2)
      {
        *(v24 + WORD2(v25)) = 21;
        *(v24 + WORD2(v25) + 1) = 0;
        *(v24 + WORD2(v25) + 3) = 0;
        v8 = WORD2(v25) + 4;
        WORD2(v25) += 4;
        if (HIBYTE(v25))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2878, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
        }

        else if (WORD1(v25) - v8 > 1)
        {
          if (BYTE6(v25) == 2)
          {
            *(v24 + v8) = *a1;
            *(v24 + WORD2(v25) + 1) = a1[1];
            v9 = WORD2(v25);
            v10 = WORD2(v25) + 2;
            WORD2(v25) += 2;
            if (HIBYTE(v25))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2879, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
            }

            else if (WORD1(v25) > v10)
            {
              if (BYTE6(v25) == 2)
              {
                v11 = a1[2];
                WORD2(v25) = v9 + 3;
                *(v24 + v10) = v11;
                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2880, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                }

                else
                {
                  v12 = WORD2(v25);
                  if (WORD1(v25) > WORD2(v25))
                  {
                    if (BYTE6(v25) == 2)
                    {
                      v13 = a1[3];
                      ++WORD2(v25);
                      *(v24 + v12) = v13;
                      if (HIBYTE(v25))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2881, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                      }

                      else
                      {
                        v14 = WORD2(v25);
                        if (WORD1(v25) > WORD2(v25))
                        {
                          if (BYTE6(v25) == 2)
                          {
                            v15 = a1[4];
                            ++WORD2(v25);
                            *(v24 + v14) = v15;
                            if (HIBYTE(v25))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2882, "OI_STATUS _BCM_OlympicAntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                            }

                            else
                            {
                              v16 = WORD2(v25);
                              if (WORD1(v25) > WORD2(v25))
                              {
                                if (BYTE6(v25) == 2)
                                {
                                  v17 = a1[5];
                                  ++WORD2(v25);
                                  *(v24 + v16) = v17;
                                  return sub_100020078(226, v24, BYTE4(v25), a2, sub_100083FE4, v5, v6, v7);
                                }

                                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2882, v23);
                              }
                            }

                            v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_45;
                          }

                          v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2881, v22);
                        }
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_41;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2880, v21);
                  }
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_37;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2879, v20);
            }

            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_33;
          }

          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2878, v19);
        }

        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_29;
      }

      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2877, v18);
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1002614B0(char a1, char a2, char a3, void (*a4)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3101, "OI_STATUS _BCM_SetCellularTxAntenna(uint8_t, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v12) = a1;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3102, "OI_STATUS _BCM_SetCellularTxAntenna(uint8_t, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v22) - WORD2(v22) > 2)
          {
            if (BYTE6(v22) == 2)
            {
              v13 = v21 + WORD2(v22);
              *(v13 + 2) = 0;
              *v13 = 0;
              v14 = WORD2(v22);
              v15 = WORD2(v22) + 3;
              WORD2(v22) += 3;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3103, "OI_STATUS _BCM_SetCellularTxAntenna(uint8_t, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v22) > v15)
              {
                if (BYTE6(v22) == 2)
                {
                  WORD2(v22) = v14 + 4;
                  *(v21 + v15) = a2;
                  if (HIBYTE(v22))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3104, "OI_STATUS _BCM_SetCellularTxAntenna(uint8_t, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v16 = WORD2(v22);
                    if (WORD1(v22) > WORD2(v22))
                    {
                      if (BYTE6(v22) == 2)
                      {
                        ++WORD2(v22);
                        *(v21 + v16) = a3;
                        return sub_100020078(383, v21, BYTE4(v22), a4, sub_100022AD0, v9, v10, v11);
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3104, v20);
                    }
                  }

                  v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3103, v19);
              }

              v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3102, v18);
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_23;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3101, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100261710(_WORD *a1, const void *a2, unsigned int a3, void (*a4)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3467, "OI_STATUS _BCM_LEMetaMonitorRssi(OI_HCI_CONNECTION_HANDLE, int8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v9) = 11;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3468, "OI_STATUS _BCM_LEMetaMonitorRssi(OI_HCI_CONNECTION_HANDLE, int8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v10 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v10) = 1;
                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3469, "OI_STATUS _BCM_LEMetaMonitorRssi(OI_HCI_CONNECTION_HANDLE, int8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v25) - WORD2(v25) > 1)
                {
                  if (BYTE6(v25) == 2)
                  {
                    *(v24 + WORD2(v25)) = *a1;
                    v11 = WORD2(v25);
                    v12 = WORD2(v25) + 2;
                    WORD2(v25) += 2;
                    if (HIBYTE(v25))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3470, "OI_STATUS _BCM_LEMetaMonitorRssi(OI_HCI_CONNECTION_HANDLE, int8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v25) > v12)
                    {
                      if (BYTE6(v25) == 2)
                      {
                        WORD2(v25) = v11 + 3;
                        *(v24 + v12) = 5;
                        v13 = v24;
                        v14 = WORD2(v25);
                        if (HIBYTE(v25))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3471, "OI_STATUS _BCM_LEMetaMonitorRssi(OI_HCI_CONNECTION_HANDLE, int8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                          v15 = 0;
                        }

                        else
                        {
                          v15 = WORD1(v25) - WORD2(v25);
                        }

                        if (v15 < a3)
                        {
                          v23 = "ByteStream_NumReadBytesAvail(bs) >= (rssiLen)";
                        }

                        else
                        {
                          if (BYTE6(v25) == 2)
                          {
                            memmove((v13 + v14), a2, a3);
                            WORD2(v25) += a3;
                            return sub_100020078(233, v24, BYTE4(v25), a4, sub_100022AD0, v16, v17, v18);
                          }

                          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3471, v23);
                      }

                      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3470, v22);
                    }

                    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_36;
                  }

                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3469, v21);
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_32;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3468, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3467, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_100261A28(_WORD *a1, uint64_t a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3713, "OI_STATUS _BCM_LEWriteRemotePublicAddress(OI_HCI_CONNECTION_HANDLE, OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = *a1;
        v7 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3714, "OI_STATUS _BCM_LEWriteRemotePublicAddress(OI_HCI_CONNECTION_HANDLE, OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) - v7 > 5)
        {
          if (BYTE6(v14) == 2)
          {
            sub_1000075EC((v13 + v7), a2, 6uLL);
            WORD2(v14) += 6;
            return sub_100020078(386, v13, BYTE4(v14), a3, sub_100022AD0, v8, v9, v10);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3714, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3713, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100261BB4(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v11))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4127, "OI_STATUS _BCM_GetPowerConsumption(BT_VSC_GET_POWER_CONSUME_CB)");
    goto LABEL_13;
  }

  v6 = WORD2(v11);
  if (WORD1(v11) <= WORD2(v11))
  {
LABEL_13:
    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  if (BYTE6(v11) != 2)
  {
    v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4127, v8);
  }

  ++WORD2(v11);
  *(v10 + v6) = -16;
  if (HIBYTE(v11))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4128, "OI_STATUS _BCM_GetPowerConsumption(BT_VSC_GET_POWER_CONSUME_CB)");
    goto LABEL_17;
  }

  v7 = WORD2(v11);
  if (WORD1(v11) <= WORD2(v11))
  {
LABEL_17:
    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  if (BYTE6(v11) != 2)
  {
    v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4128, v9);
  }

  ++WORD2(v11);
  *(v10 + v7) = 3;
  if (off_100B5FE10)
  {
    sub_1000D660C();
  }

  return sub_100020078(0, v10, BYTE4(v11), a1, sub_1002606E0, v3, v4, v5);
}

uint64_t sub_100261D18(char a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4144, "OI_STATUS _BCM_WriteCellularTxState(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        *(v12 + WORD2(v13)) = 0;
        v8 = WORD2(v13);
        v9 = WORD2(v13) + 4;
        WORD2(v13) += 4;
        if (HIBYTE(v13))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4145, "OI_STATUS _BCM_WriteCellularTxState(_Bool, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v13) > v9)
        {
          if (BYTE6(v13) == 2)
          {
            WORD2(v13) = v8 + 5;
            *(v12 + v9) = a1;
            return sub_100020078(383, v12, BYTE4(v13), a2, sub_100022AD0, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4145, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4144, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100261E70(char a1, _WORD *a2, void (*a3)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4159, "OI_STATUS _BCM_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v7 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v7) = a1;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4160, "OI_STATUS _BCM_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v17) - WORD2(v17) > 1)
          {
            if (BYTE6(v17) == 2)
            {
              *(v16 + WORD2(v17)) = 2;
              WORD2(v17) += 2;
              if (sub_100084230() <= 8)
              {
                v12 = 126;
                v11 = BYTE4(v17);
                return sub_100020078(v12, v16, v11, a3, sub_100022AD0, v8, v9, v10);
              }

              if (HIBYTE(v17))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4163, "OI_STATUS _BCM_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v17) - WORD2(v17) > 1)
              {
                if (BYTE6(v17) == 2)
                {
                  *(v16 + WORD2(v17)) = *a2;
                  v11 = BYTE4(v17) + 2;
                  WORD2(v17) += 2;
                  v12 = 258;
                  return sub_100020078(v12, v16, v11, a3, sub_100022AD0, v8, v9, v10);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4163, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_27;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4160, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4159, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100262098(unsigned int a1, void (*a2)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  v8 = 0x20000u >> (8 * a1);
  if (a1 <= 2)
  {
    v9 = 0x101u >> (8 * a1);
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  if (a1 <= 2)
  {
    v10 = 0x100u >> (8 * a1);
  }

  else
  {
    v10 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4217, "OI_STATUS _BCM_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v11 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v11) = v10;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4218, "OI_STATUS _BCM_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v12 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v12) = v8;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4219, "OI_STATUS _BCM_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v13 = WORD2(v22);
                  if (WORD1(v22) > WORD2(v22))
                  {
                    if (BYTE6(v22) == 2)
                    {
                      ++WORD2(v22);
                      *(v21 + v13) = v9;
                      if (HIBYTE(v22))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4220, "OI_STATUS _BCM_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v14 = WORD2(v22);
                        if (WORD1(v22) > WORD2(v22))
                        {
                          if (BYTE6(v22) == 2)
                          {
                            ++WORD2(v22);
                            *(v21 + v14) = 0;
                            if (HIBYTE(v22))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4221, "OI_STATUS _BCM_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v15 = WORD2(v22);
                              if (WORD1(v22) > WORD2(v22))
                              {
                                if (BYTE6(v22) == 2)
                                {
                                  ++WORD2(v22);
                                  *(v21 + v15) = 0;
                                  return sub_100020078(28, v21, BYTE4(v22), a2, sub_100022AD0, v5, v6, v7);
                                }

                                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4221, v20);
                              }
                            }

                            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4220, v19);
                        }
                      }

                      v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4219, v18);
                  }
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4218, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4217, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10026237C(const void *a1, unsigned int a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4235, "OI_STATUS _BCM_WritePCMConfig(uint8_t *, uint32_t, BT_VSC_COMPLETE_CB)");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(97, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4235, v13);
  }

  return result;
}

uint64_t sub_100262484(_WORD *a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4249, "OI_STATUS _BCM_ReadRawRSSI(OI_HCI_CONNECTION_HANDLE, BT_VSC_READ_RAW_RSSI_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 2;
        return sub_100020078(72, v9, BYTE4(v10), a2, sub_10025D1B4, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4249, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026257C(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4263, "OI_STATUS _BCM_ConfigTpc(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(393, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4263, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100262654(int a1, unsigned int a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  v7 = 1;
  __src = 1;
  if (a1 == 1)
  {
    v8 = 2;
  }

  else
  {
    if (a1)
    {
      goto LABEL_6;
    }

    v7 = 0;
    v8 = 1;
  }

  BYTE2(__src) = v7;
  HIBYTE(__src) = v8;
LABEL_6:
  if (result)
  {
    return result;
  }

  v9 = v17;
  v10 = WORD2(v18);
  if (HIBYTE(v18))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4299, "OI_STATUS _BCM_WriteI2sPcmConfig(VSCI2SSamplingRate, uint32_t, BT_VSC_COMPLETE_CB)");
    v11 = 0;
  }

  else
  {
    v11 = WORD1(v18) - WORD2(v18);
  }

  if (v11 < a2)
  {
    v15 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    goto LABEL_16;
  }

  if (BYTE6(v18) != 2)
  {
    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4299, v15);
  }

  memmove((v9 + v10), &__src, a2);
  WORD2(v18) += a2;
  return sub_100020078(109, v17, BYTE4(v18), a3, sub_100022AD0, v12, v13, v14);
}

uint64_t sub_100262780(_BYTE *a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4315, "OI_STATUS _BCM_WriteDynRouteChange(OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = 0;
        *(v14 + WORD2(v15) + 1) = 1;
        v8 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4316, "OI_STATUS _BCM_WriteDynRouteChange(OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) - v8 > 1)
        {
          if (BYTE6(v15) == 2)
          {
            *(v14 + v8) = *a1;
            *(v14 + WORD2(v15) + 1) = a1[1];
            v9 = WORD2(v15) + 2;
            WORD2(v15) += 2;
            if (HIBYTE(v15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4317, "OI_STATUS _BCM_WriteDynRouteChange(OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v15) - v9 > 2)
            {
              if (BYTE6(v15) == 2)
              {
                v10 = v14 + v9;
                *(v10 + 2) = 0;
                *v10 = 0;
                WORD2(v15) += 3;
                return sub_100020078(131, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4317, v13);
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4316, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4315, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100262990(const void *a1, unsigned int a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4332, "OI_STATUS _BCM_WriteEnableWCI2(uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(270, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4332, v13);
  }

  return result;
}

uint64_t sub_100262A98(const void *a1, unsigned int a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4346, "OI_STATUS _BCM_FactoryCalSetTxPower(uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(277, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4346, v13);
  }

  return result;
}

uint64_t sub_100262BA0(const void *a1, unsigned int a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4360, "OI_STATUS _BCM_WriteTriggerWCI2(uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(269, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4360, v13);
  }

  return result;
}

uint64_t sub_100262CA8(_BYTE *a1, _WORD *a2, int a3, void (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4374, "OI_STATUS _BCM_WriteLTELinkQualityMode(OI_HCI_CONNECTION_HANDLE, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v21) - WORD2(v21) > 1)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = *a2;
        v9 = WORD2(v21) + 2;
        WORD2(v21) += 2;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4375, "OI_STATUS _BCM_WriteLTELinkQualityMode(OI_HCI_CONNECTION_HANDLE, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v21) - v9 > 1)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v9) = *a1;
            *(v20 + WORD2(v21) + 1) = a1[1];
            v10 = WORD2(v21) + 2;
            WORD2(v21) += 2;
            v11 = v20;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4376, "OI_STATUS _BCM_WriteLTELinkQualityMode(OI_HCI_CONNECTION_HANDLE, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
              v12 = 0;
            }

            else
            {
              v12 = WORD1(v21) - v10;
            }

            v13 = a3 - 4;
            if (v12 < v13)
            {
              v19 = "ByteStream_NumReadBytesAvail(bs) >= ((length - 4))";
            }

            else
            {
              if (BYTE6(v21) == 2)
              {
                memmove((v11 + v10), a2 + 2, v13);
                WORD2(v21) += v13;
                return sub_100020078(268, v20, BYTE4(v21), a4, sub_100022AD0, v14, v15, v16);
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4376, v19);
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4375, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_22;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4374, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
    goto LABEL_18;
  }

  return result;
}
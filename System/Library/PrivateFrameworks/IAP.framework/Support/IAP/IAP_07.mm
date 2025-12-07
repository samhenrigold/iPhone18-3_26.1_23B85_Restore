uint64_t sub_10006D1F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 4;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006D210(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10004B1AC(result, a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = (*(*result + 392))(result);
  if (result >= 0x100)
  {
LABEL_11:
    __break(0x5507u);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = *a2;
  if (!__CFADD__(a2 + 1, v3))
  {
    a2[v3 + 1] = result;
    if (v3 != 255)
    {
      *a2 = v3 + 1;
      return 0;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x5513u);
  return result;
}

uint64_t sub_10006D2B8(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0 || (result = sub_10004B1AC(result, a2)) == 0 || (result & 7) != 0 || (result = (*(*result + 168))(result), !a2))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  v3 = *a2;
  if (__CFADD__(a2 + 1, v3))
  {
LABEL_10:
    __break(0x5513u);
    goto LABEL_11;
  }

  a2[v3 + 1] = result;
  if (v3 != 255)
  {
    *a2 = v3 + 1;
    return 0;
  }

LABEL_11:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D350(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 1192)) != 0 ? (v2 = (result & 7) == 0) : (v2 = 0), !v2 || (result = (*(*result + 264))(result), !a2)))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  v4 = *a2;
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_13:
    __break(0x5513u);
    goto LABEL_14;
  }

  a2[v4 + 1] = result;
  if (v4 != 255)
  {
    *a2 = v4 + 1;
    return 0;
  }

LABEL_14:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D3F4(uint64_t result, _BYTE *a2)
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

  result = (*(*result + 184))(result);
  if (result >= 0x100)
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

uint64_t sub_10006D49C(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v2 = *(result + 2768);
  if (v2 >> 19 >= 0x7D)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = v2 / 0x3E8;
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_12:
    __break(0x5516u);
LABEL_13:
    __break(0x5507u);
    goto LABEL_14;
  }

  v4 = *a2;
  v5 = &a2[v4 + 1];
  if (!__CFADD__(a2 + 1, v4))
  {
    if (v5)
    {
      *v5 = bswap32(v3) >> 16;
      if (v4 <= 0xFD)
      {
        *a2 = v4 + 2;
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(0x5500u);
  return result;
}

uint64_t sub_10006D51C(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_1000945E0(result, *(v2 + 8));
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  v5 = result;
  result = sub_100045A94(result, v4);
  if (!result)
  {
    goto LABEL_35;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  v7 = (*(*result + 120))(result, v5);
  v8 = sub_10007D6FC(*(v2 + 8));
  v9 = v8;
  result = sub_100065198(v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_1000933B0(result, v5);
  if (result == 56)
  {
    v10 = *(v2 + 2756);
    if (v10 > 1)
    {
      goto LABEL_38;
    }

    if (v9 & 0x800) == 0 && (v10)
    {
      return 2;
    }
  }

  v11 = *(v2 + 2756);
  if (v11 <= 1)
  {
    if (result != 56 && (v11 & 1) != 0)
    {
      result = *(v2 + 8);
      if (!result)
      {
        goto LABEL_35;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_35;
      }

      result = sub_10005BC54(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_35;
      }

      sub_1000C1FF4(result + 1008, 1);
    }

    if (v7)
    {
      v12 = 0;
      result = 0;
    }

    else
    {
      v13 = (*(*v6 + 104))(v6, v5);
      v12 = sub_100073130(v2, v13, 1);
      result = sub_100073130(v2, v13, 0);
    }

    if (a2)
    {
      v14 = a2 + 1;
      v15 = *a2;
      v16 = ~(a2 + 1);
      if (v16 >= v15)
      {
        v14[v15] = v7;
        if (v15 == 255)
        {
          goto LABEL_37;
        }

        v17 = v15 + 1;
        v18 = (v15 + 1);
        *a2 = v17;
        if (v18 <= v16)
        {
          v14[v18] = result;
          if (v17 != 0xFF)
          {
            v19 = v18 + 1;
            v20 = (v18 + 1);
            *a2 = v19;
            if (v20 <= v16)
            {
              v14[v20] = v12;
              if (v19 != 255)
              {
                result = 0;
                *a2 = v19 + 1;
                return result;
              }

              goto LABEL_37;
            }

            goto LABEL_36;
          }

LABEL_37:
          __break(0x5507u);
          goto LABEL_38;
        }
      }

LABEL_36:
      __break(0x5513u);
      goto LABEL_37;
    }

LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

LABEL_38:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006D73C(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if ((*(*result + 464))(result))
  {
    result = 0;
  }

  else
  {
    result = *(v2 + 1192);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_19;
    }

    result = (*(*result + 392))(result);
    if (result)
    {
      result = sub_1000732B0(v2);
    }
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v5 = *a2;
  v6 = &a2[v5 + 1];
  if (__CFADD__(a2 + 1, v5))
  {
LABEL_20:
    __break(0x5500u);
    goto LABEL_21;
  }

  if (!v6)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  *v6 = bswap32(result);
  if (v5 < 0xFC)
  {
    *a2 = v5 + 4;
    return 0;
  }

LABEL_21:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D844(uint64_t result, unsigned __int8 *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  if ((result + 1280) >= 0xFFFFFFFFFFFFFE50)
  {
LABEL_30:
    __break(0x5513u);
    goto LABEL_31;
  }

  v2 = *(result + 1720);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *v2;
  v4 = __CFADD__(v2, 4);
  v5 = (v2 + 1);
  if (v4)
  {
    goto LABEL_28;
  }

  v6 = *v5;
  v7 = *(result + 2760);
  if (v7 < 8)
  {
    if (v7)
    {
      result = *(result + 1192);
      if (!result)
      {
        goto LABEL_27;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_27;
      }

      v9 = bswap32(v3);
      result = (*(*result + 392))(result);
      v10 = v9 != result;
      if (!a2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      result = 0;
      if (!a2)
      {
        goto LABEL_27;
      }
    }

    v12 = a2 + 1;
    v11 = *a2;
    v13 = &a2[v11 + 1];
    if (!__CFADD__(a2 + 1, v11))
    {
      if (!v13)
      {
        goto LABEL_27;
      }

      *v13 = bswap32(result);
      if (v11 >= 0xFC)
      {
LABEL_29:
        __break(0x5507u);
        goto LABEL_30;
      }

      v14 = v11 + 4;
      *a2 = v14;
      v4 = __CFADD__(v12, v14);
      v15 = &v12[v14];
      v16 = v4;
      if (v10)
      {
        if (!v16)
        {
          if (v15)
          {
            v6 ^= 0x400u;
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }

      else if (!v16)
      {
        if (v15)
        {
LABEL_25:
          *v15 = v6;
          if (v14 <= 0xFBu)
          {
            *a2 = v14 + 4;
            return 0;
          }

          goto LABEL_29;
        }

LABEL_27:
        __break(0x5516u);
      }
    }

LABEL_28:
    __break(0x5500u);
    goto LABEL_29;
  }

LABEL_31:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006D98C(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_41;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  result = *(result + 1192);
  v4 = result && (result & 7) == 0;
  v5 = !v4 || a2 == 0;
  if (v5 || (a2 & 7) != 0)
  {
    goto LABEL_41;
  }

  result = (*(*result + 400))(result, *a2);
  v19 = result;
  if (!result)
  {
    goto LABEL_20;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  if (!(*(*result + 16))(result))
  {
LABEL_20:
    v10 = 2;
LABEL_40:
    sub_1000698F8(&v19);
    return v10;
  }

  v8 = (*(*v7 + 128))(v7);
  v9 = (*(*v7 + 368))(v7);
  if (v8 == -1)
  {
    if (dword_10012B490)
    {
      v8 = 0;
    }

    else if (dword_10012B494)
    {
      v8 = 0x7FFFFFFF;
    }

    else if (dword_10012B498)
    {
      v8 = 300000;
    }

    else if (dword_10012B49C)
    {
      v8 = 86400000;
    }

    else if (dword_10012B4A0)
    {
      v8 = 3600000;
    }

    else
    {
      v8 = -1;
    }
  }

  result = sub_1000732B0(v2);
  v11 = a2 + 7;
  v12 = *(a2 + 6);
  v13 = (a2 + v12 + 7);
  if (__CFADD__(a2 + 7, v12))
  {
    goto LABEL_42;
  }

  if (!v13)
  {
    goto LABEL_41;
  }

  *v13 = bswap32(result);
  if (v12 >= 0xFC)
  {
    goto LABEL_43;
  }

  v14 = v12 + 4;
  *(a2 + 6) = v14;
  v15 = &v11[v14];
  if (__CFADD__(v11, v14))
  {
LABEL_42:
    __break(0x5500u);
    goto LABEL_43;
  }

  if (!v15)
  {
LABEL_41:
    __break(0x5516u);
    goto LABEL_42;
  }

  *v15 = bswap32(v8);
  if (v14 > 0xFBu)
  {
    goto LABEL_43;
  }

  v16 = v14 + 4;
  *(a2 + 6) = v16;
  v17 = __CFADD__(v11, v16);
  v18 = &v11[v16];
  if (v17)
  {
    goto LABEL_42;
  }

  if (!v18)
  {
    goto LABEL_41;
  }

  *v18 = bswap32(v9) >> 16;
  if (v16 <= 0xFDu)
  {
    v10 = 0;
    *(a2 + 6) = v16 + 2;
    goto LABEL_40;
  }

LABEL_43:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006DBFC(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_30;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_30;
  }

  result = (*(*result + 400))(result, *a2);
  v12 = result;
  if (!result)
  {
    goto LABEL_24;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (!(*(*result + 16))(result) || (*(*v6 + 368))(v6) <= *(a2 + 2))
  {
LABEL_24:
    v10 = 4;
    goto LABEL_25;
  }

  result = (*(*v6 + 376))(v6);
  v7 = a2 + 7;
  v8 = *(a2 + 6);
  v9 = (a2 + v8 + 7);
  if (__CFADD__(a2 + 7, v8))
  {
LABEL_31:
    __break(0x5500u);
    goto LABEL_32;
  }

  if (!v9)
  {
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  *v9 = bswap32(result);
  if (v8 >= 0xFC)
  {
LABEL_32:
    __break(0x5507u);
    goto LABEL_33;
  }

  *(a2 + 6) = v8 + 4;
  result = (*(*v6 + 384))(v6, *(a2 + 2), a2 + 10);
  if ((*(a2 + 63) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 6))
    {
      goto LABEL_23;
    }
  }

  else if (*(a2 + 63))
  {
LABEL_23:
    v10 = 0;
LABEL_25:
    sub_1000698F8(&v12);
    return v10;
  }

  v11 = *(a2 + 6);
  if (v11 >= 0x21)
  {
LABEL_33:
    __break(0x5512u);
    goto LABEL_34;
  }

  if (!__CFADD__(v7, v11))
  {
    v10 = 0;
    v7[v11] = 0;
    *(a2 + 6) = v11 + 1;
    goto LABEL_25;
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

uint64_t sub_10006DE00(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 48))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006DF0C(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 40))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E018(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 56))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E124(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 32))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E230(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 64))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E33C(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_34;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_34;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_34;
  }

  v5 = (*(*result + 376))(result);
  result = *(v2 + 1192);
  if (!result)
  {
    goto LABEL_34;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_34;
  }

  v6 = (*(*result + 392))(result);
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_34;
  }

  result = (*(*result + 400))(result, *a2);
  v16 = result;
  if (!result)
  {
LABEL_28:
    v15 = 2;
    goto LABEL_29;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
LABEL_34:
    __break(0x5516u);
    goto LABEL_35;
  }

  result = (*(*result + 16))(result);
  if (!result)
  {
    goto LABEL_28;
  }

  v8 = *a2;
  if (*a2 >= v6)
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 6);
  if (v9 == 255)
  {
    goto LABEL_37;
  }

  v10 = v9 + 1;
  *(a2 + 6) = v9 + 1;
  if (v9 >= 0x21)
  {
    goto LABEL_35;
  }

  v11 = a2 + 7;
  v12 = ~(a2 + 7);
  if (v12 < v9)
  {
LABEL_36:
    __break(0x5513u);
    goto LABEL_37;
  }

  v11[v9] = 0;
  v13 = v9 + 2;
  *(a2 + 6) = v9 + 2;
  if (v9 == 32)
  {
LABEL_35:
    __break(0x5512u);
    goto LABEL_36;
  }

  if (v12 < v10)
  {
    goto LABEL_36;
  }

  v11[v10] = 0;
  v14 = v9 + 3;
  *(a2 + 6) = v9 + 3;
  if (v9 > 0x1E)
  {
    goto LABEL_35;
  }

  if (v12 < v13)
  {
    goto LABEL_36;
  }

  v11[v13] = 0;
  if (v5 != v8)
  {
    goto LABEL_31;
  }

  result = (*(*v7 + 256))(v7);
  if (result)
  {
    (*(*v7 + 96))(v7, a2 + 10);
    v15 = 0;
LABEL_29:
    sub_1000698F8(&v16);
    return v15;
  }

  v14 = *(a2 + 6);
  if (v14 != 255)
  {
LABEL_31:
    *(a2 + 6) = v14 + 1;
    if (v14 <= 0x20)
    {
      if (v12 >= v14)
      {
        v15 = 0;
        v11[v14] = 0;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006E5C8(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = *(result + 1192);
  v4 = result && (result & 7) == 0;
  v5 = !v4 || a2 == 0;
  if (v5 || (a2 & 7) != 0)
  {
    goto LABEL_21;
  }

  result = (*(*result + 400))(result, *a2);
  v10 = result;
  if (!result)
  {
    goto LABEL_19;
  }

  v7 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      sub_100066D40(v2, v7, a2 + 7, 0x21u, a2 + 6);
      v9 = v8;
      if (v8 < 0x20)
      {
LABEL_20:
        sub_1000698F8(&v10);
        return v9;
      }

      __break(0x550Au);
    }

LABEL_19:
    v9 = 4;
    goto LABEL_20;
  }

LABEL_21:
  __break(0x5516u);
  return result;
}

void sub_10006E6D4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10006B7E4(result, a2);
  }
}

void sub_10006E6E8(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (*result = off_100115E78, (v3 = sub_10004B1AC(result, a2)) == 0) || (v3 & 7) != 0 || (v4 = (*(*v3 + 24))(v3, result), (v6 = sub_100045A94(v4, v5)) == 0) || (v6 & 7) != 0 || ((*(*v6 + 24))(v6, result), (v7 = *(result + 1192)) == 0) || (v7 & 7) != 0 || ((*(*v7 + 24))(v7, result), sub_1000651C8(*(result + 8), v8), !v9) || (v9 & 7) != 0 || (sub_1000629DC(v9, *(result + 2744)), sub_1000651C8(*(result + 8), v10), !v11) || (v11 & 7) != 0 || (v12 = sub_100060C50(v11, *(result + 2744)), *(result + 2744) = -1, (v13 = sub_100065198(v12)) == 0) || (v13 & 7) != 0)
  {
LABEL_32:
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v13, 3, 0, *(result + 8));
    v15 = 0;
    *(result + 2216) = 0u;
    *(result + 2232) = 0u;
    *(result + 2184) = 0u;
    *(result + 2200) = 0u;
    *(result + 2152) = 0u;
    *(result + 2168) = 0u;
    *(result + 2120) = 0u;
    *(result + 2136) = 0u;
    *(result + 2088) = 0u;
    *(result + 2104) = 0u;
    *(result + 2056) = 0u;
    *(result + 2072) = 0u;
    *(result + 2024) = 0u;
    *(result + 2040) = 0u;
    *(result + 1992) = 0u;
    *(result + 2008) = 0u;
    *(result + 1960) = 0u;
    *(result + 1976) = 0u;
    *(result + 1928) = 0u;
    *(result + 1944) = 0u;
    *(result + 1896) = 0u;
    *(result + 1912) = 0u;
    *(result + 1864) = 0u;
    *(result + 1880) = 0u;
    *(result + 1832) = 0u;
    *(result + 1848) = 0u;
    *(result + 1800) = 0u;
    *(result + 1816) = 0u;
    *(result + 2248) = 0;
    do
    {
      if (v15 > ~(result + 1800))
      {
        __break(0x5513u);
        goto LABEL_32;
      }

      *(result + v15 + 1808) = 0;
      v15 += 24;
    }

    while (v15 != 456);
    if (*(result + 2903) < 0)
    {
      operator delete(*(result + 2880));
    }

    if (*(result + 2879) < 0)
    {
      operator delete(*(result + 2856));
    }

    if (*(result + 2855) < 0)
    {
      operator delete(*(result + 2832));
    }

    if (*(result + 2831) < 0)
    {
      operator delete(*(result + 2808));
    }

    if (*(result + 2807) < 0)
    {
      operator delete(*(result + 2784));
    }

    sub_10006522C(result, v14);
  }
}

void sub_10006E90C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10006E6E8(result, a2);
  }
}

uint64_t sub_10006E920(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    sub_10006E6E8(result, a2);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006E968(__n128 *a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_159;
  }

  if (a1->n128_u64[1])
  {
    v4 = sub_100065198(a1);
    if (!v4 || (v4 & 7) != 0)
    {
      goto LABEL_159;
    }

    if (sub_100094BFC(v4, a1->n128_i64[1]))
    {
      v5 = a1->n128_i64[1];
      if (!v5 || (v5 & 7) != 0)
      {
        goto LABEL_159;
      }

      if (sub_10005ACA0(v5))
      {
        return 89;
      }

      if (!a2 || (a2 & 7) != 0)
      {
        goto LABEL_159;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 126);
      v10 = *(a2 + 128);
      v11 = *(a2 + 24);
      memset(v68, 170, 21);
      if (!v8)
      {
        sub_1000E1D34();
      }

      if (v10 && !v11)
      {
LABEL_163:
        sub_1000E1D34();
      }

      if (a1[171].n128_u8[12] >= 2u)
      {
        goto LABEL_161;
      }

      if (!a1[171].n128_u8[12])
      {
        v12 = a1[172].n128_u32[0];
        if (v12 > 0xF)
        {
          goto LABEL_161;
        }

        if (v12 == 6)
        {
          a1[171].n128_u8[12] = 1;
          sub_1000651C8(a1->n128_i64[1], v6);
          if (v14)
          {
            sub_1000651C8(a1->n128_i64[1], v13);
            if (!v15 || (v15 & 7) != 0)
            {
              goto LABEL_159;
            }

            sub_10006292C(v15, a1[171].n128_u32[2]);
          }
        }
      }

      if (sub_1000D6C34(v8, 3) >= 0x10000)
      {
LABEL_162:
        __break(0x5507u);
        goto LABEL_163;
      }

      switch(v9)
      {
        case 1u:
        case 3u:
        case 4u:
        case 6u:
          LODWORD(v64) = -1431655766;
          v17 = a1[74].n128_u64[1];
          if (!v17)
          {
            goto LABEL_159;
          }

          if ((v17 & 7) != 0)
          {
            goto LABEL_159;
          }

          v18 = (*(*v17 + 240))(v17);
          v19 = a1[74].n128_u64[1];
          if (!v19 || (v19 & 7) != 0)
          {
            goto LABEL_159;
          }

          v20 = (*(*v19 + 544))(v19);
          if (v9 == 1 && !v10)
          {
            LODWORD(v64) = bswap32(v18);
            v21 = *(a2 + 68);
            v22 = 4;
            v23 = &v64;
            v24 = a2;
            v25 = v8;
            v26 = 2;
LABEL_35:
            v27 = 4;
LABEL_36:
            sub_1000B7DB4(v24, v25, 0, 3, v26, v21, v23, v27);
            goto LABEL_118;
          }

          if (v9 != 3 || v10 != 5)
          {
            if (v9 != 4 || v10)
            {
              v22 = 4;
              if (v9 == 6 && v10 == 4)
              {
                if (!v11)
                {
                  goto LABEL_159;
                }

                if (bswap32(*v11) < v20)
                {
                  v66 = 0uLL;
                  v67 = 0;
                  v63 = a1[74].n128_u64[1];
                  if (!v63 || (v63 & 7) != 0)
                  {
                    goto LABEL_159;
                  }

                  (*(*v63 + 552))(v63);
                  if ((SHIBYTE(v67) & 0x80000000) == 0)
                  {
                    operator new[]();
                  }

                  operator delete(0);
                }

                v22 = 2;
              }

              goto LABEL_118;
            }

            LODWORD(v64) = bswap32(v20);
            v21 = *(a2 + 68);
            v22 = 4;
            v23 = &v64;
            v24 = a2;
            v25 = v8;
            v26 = 5;
            goto LABEL_35;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          v28 = bswap32(*v11);
          if (v28 >= v20)
          {
LABEL_117:
            v22 = 4;
LABEL_118:
            if (*(a2 + 126) != v9)
            {
LABEL_121:
              v60 = a1->n128_i64[1];
              if (v60 && *(a2 + 8))
              {
                return sub_1000B6DB4(v60, a2, 0, 1u);
              }

              v61 = *(a2 + 8);
              if (v61 && (v61 & 7) == 0)
              {
                v62 = (*(*v61 + 200))(v61);
                if ((*(a2 + 64) + 32) < 0x40)
                {
                  sub_1000DDEEC(0, 4, "%s:%d handle=%hhx devPort=%s lingo=%d cmd=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDisplayRemote.cpp", 904, v60, v62, *(a2 + 64), *(a2 + 126));
                  v60 = a1->n128_i64[1];
                  return sub_1000B6DB4(v60, a2, 0, 1u);
                }

                goto LABEL_161;
              }

LABEL_159:
              __break(0x5516u);
            }

            if (v22 <= 0x1F)
            {
              sub_1000B7854(a2, v8, 0, 3, 0, *(a2 + 68), v22, v9, 0, 255, 0, 0, 0, 0);
              goto LABEL_121;
            }

LABEL_161:
            __break(0x550Au);
            goto LABEL_162;
          }

          if (v28 == v18)
          {
            goto LABEL_158;
          }

          if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_165;
          }

          sub_10006F618(a1, v28, v11[4], v8);
          goto LABEL_158;
        case 8u:
          if (v10 != 4)
          {
            goto LABEL_117;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          v40 = bswap32(*v11);
          a1[172].n128_u8[4] = 1;
          sub_10006F784(a1, v8, v40);
          a1[172].n128_u8[4] = 0;
          v22 = 4 * (v41 != 0);
          goto LABEL_118;
        case 0xAu:
          if (v10)
          {
            goto LABEL_117;
          }

          LODWORD(v66) = -1431655766;
          sub_10006F8F0(a1, ~a1[75].n128_u32[2] & 0x7FFFF, 0);
          v32 = a1[75].n128_u32[3];
          LODWORD(v66) = bswap32(v32);
          v22 = 4;
          sub_1000B7DB4(a2, v8, 0, 3, 11, *(a2 + 68), &v66, 4);
          a1[75].n128_u32[3] &= ~v32;
          goto LABEL_118;
        case 0xCu:
          if (v10 != 1)
          {
            goto LABEL_117;
          }

          a1[172].n128_u8[4] = 1;
          v22 = sub_10006FE00(a1, a2);
          a1[172].n128_u8[4] = 0;
          goto LABEL_118;
        case 0xEu:
          if (v10 < 2)
          {
            goto LABEL_117;
          }

          v29 = sub_100070108(a1, a2, v16);
          goto LABEL_83;
        case 0xFu:
          if (v10)
          {
            goto LABEL_117;
          }

          *(&v66 + 5) = 0xAAAAAAAAAAAAAAAALL;
          v65 = 0;
          *&v66 = 0xAAAAAAAAAAAAAAAALL;
          v42 = sub_10006547C(&v65 + 4, &v65);
          if (v42 > 0x1F)
          {
            goto LABEL_161;
          }

          if (v42)
          {
            __break(0x5518u);
            goto LABEL_161;
          }

          if (v65 > 7)
          {
            goto LABEL_161;
          }

          LOBYTE(v66) = v65;
          if (!v65)
          {
            v44 = -1;
            v49 = -1;
            v46 = -1;
LABEL_155:
            *(&v66 + 1) = bswap32(v44);
            *(&v66 + 5) = bswap32(v49);
            if (&v66 >= 0xFFFFFFFFFFFFFFF7)
            {
LABEL_164:
              __break(0x5500u);
LABEL_165:
              __break(0x5513u);
              JUMPOUT(0x10006F590);
            }

            *(&v66 + 9) = bswap32(v46);
            v34 = *(a2 + 68);
            v36 = &v66;
            v37 = a2;
            v38 = v8;
            v39 = 16;
            v35 = 13;
LABEL_157:
            sub_1000B7DB4(v37, v38, 0, 3, v39, v34, v36, v35);
LABEL_158:
            v22 = 0;
            goto LABEL_118;
          }

          v43 = a1[74].n128_u64[1];
          if (!v43)
          {
            goto LABEL_159;
          }

          if ((v43 & 7) != 0)
          {
            goto LABEL_159;
          }

          v44 = (*(*v43 + 376))(v43);
          v45 = a1[74].n128_u64[1];
          if (!v45)
          {
            goto LABEL_159;
          }

          if ((v45 & 7) != 0)
          {
            goto LABEL_159;
          }

          v46 = (*(*v45 + 408))(v45);
          v64 = 0xAAAAAAAAAAAAAAAALL;
          v47 = a1[74].n128_u64[1];
          if (!v47 || (v47 & 7) != 0)
          {
            goto LABEL_159;
          }

          v48 = (*(*v47 + 384))(v47);
          v64 = v48;
          if (!v48)
          {
            goto LABEL_139;
          }

          if ((v48 & 7) != 0)
          {
            goto LABEL_159;
          }

          if ((*(*v48 + 16))(v48))
          {
            if (!v64 || (v64 & 7) != 0)
            {
              goto LABEL_159;
            }

            v49 = (*(*v64 + 128))();
            if (v49 != -1)
            {
              goto LABEL_154;
            }
          }

          else
          {
LABEL_139:
            LODWORD(v65) = 0;
            v44 = -1;
          }

          if (dword_10012B490)
          {
            v49 = 0;
          }

          else if (dword_10012B494)
          {
            v49 = 0x7FFFFFFF;
          }

          else if (dword_10012B498)
          {
            v49 = 300000;
          }

          else if (dword_10012B49C)
          {
            v49 = 86400000;
          }

          else if (dword_10012B4A0)
          {
            v49 = 3600000;
          }

          else
          {
            v49 = -1;
          }

LABEL_154:
          sub_1000698F8(&v64);
          goto LABEL_155;
        case 0x11u:
          if (v10 != 4)
          {
            goto LABEL_117;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          v29 = sub_100070770(a1, bswap32(*v11));
LABEL_83:
          v22 = v29;
          goto LABEL_118;
        case 0x12u:
          if (v10 != 7)
          {
            goto LABEL_117;
          }

          v29 = sub_100070B60(a1, a2);
          if (*(a2 + 8))
          {
            goto LABEL_83;
          }

          sub_1000B9034(a2);
          return 2;
        case 0x14u:
          if (v10)
          {
            goto LABEL_117;
          }

          LODWORD(v66) = -1431655766;
          v33 = a1[74].n128_u64[1];
          if (!v33 || (v33 & 7) != 0)
          {
            goto LABEL_159;
          }

          LODWORD(v66) = bswap32((*(*v33 + 392))(v33));
          v21 = *(a2 + 68);
          v22 = 4;
          v23 = &v66;
          v24 = a2;
          v25 = v8;
          v26 = 21;
          goto LABEL_35;
        case 0x16u:
          if (v10)
          {
            goto LABEL_117;
          }

          v29 = sub_100065838(a1, a2);
          goto LABEL_83;
        case 0x18u:
          if (v10 != 10)
          {
            goto LABEL_117;
          }

          v30 = a1[74].n128_u64[1];
          if (!v30 || (v30 & 7) != 0)
          {
            goto LABEL_159;
          }

          if ((*(*v30 + 464))(v30))
          {
            goto LABEL_117;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          if (v11 > 0xFFFFFFFFFFFFFFF9)
          {
            goto LABEL_164;
          }

          v31 = sub_100066C08(a1, a2, 1u);
          if (v31 > 0x1F)
          {
            goto LABEL_161;
          }

          v22 = v31;
          result = 2;
          if (v22 && v22 != 6)
          {
            goto LABEL_118;
          }

          return result;
        case 0x1Au:
          if (v10)
          {
            goto LABEL_117;
          }

          LOBYTE(v68[0]) = 0;
          v22 = sub_10006CC34(a1, v68);
          if (v22)
          {
            goto LABEL_118;
          }

          v21 = *(a2 + 68);
          v27 = LOBYTE(v68[0]);
          v23 = (v68 + 1);
          v24 = a2;
          v25 = v8;
          v26 = 27;
          goto LABEL_36;
        case 0x1Cu:
          if (v10)
          {
            goto LABEL_117;
          }

          LOBYTE(v68[0]) = 0;
          sub_10006D350(a1, v68);
          v34 = *(a2 + 68);
          v35 = LOBYTE(v68[0]);
          v36 = v68 + 1;
          v37 = a2;
          v38 = v8;
          v39 = 29;
          goto LABEL_157;
        case 0x1Eu:
          if (v10 != 2)
          {
            goto LABEL_117;
          }

          if (v11 == -1)
          {
            goto LABEL_165;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          sub_1000712C0(a1, *v11, v11[1], v8);
          goto LABEL_158;
        case 0x1Fu:
          if (v10 != 10)
          {
            goto LABEL_117;
          }

          v50 = a1[74].n128_u64[1];
          if (!v50 || (v50 & 7) != 0)
          {
            goto LABEL_159;
          }

          if ((*(*v50 + 464))(v50))
          {
            goto LABEL_117;
          }

          if (!v11)
          {
            goto LABEL_159;
          }

          v51 = *v11;
          if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_164;
          }

          v52 = *(v11 + 2);
          if (v11 >= 0xFFFFFFFFFFFFFFFALL)
          {
            goto LABEL_164;
          }

          v53 = *(v11 + 3);
          if (v11 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_164;
          }

          v54 = *(v11 + 4);
          *&v66 = 0xAAAAAAAAAAAAAAAALL;
          v55 = a1[74].n128_u64[1];
          if (!v55 || (v55 & 7) != 0)
          {
            goto LABEL_159;
          }

          v56 = bswap32(v51);
          v57 = bswap32(v52) >> 16;
          v58 = bswap32(v53) >> 16;
          v59 = __rev16(v54);
          *&v66 = (*(*v55 + 400))(v55, v56);
          v22 = sub_100065B04(a1, a2, 1u, v56, v66, v57, v58, v59);
          sub_1000698F8(&v66);
          goto LABEL_118;
        case 0x21u:
          v29 = sub_100067CD8(a1, a2);
          goto LABEL_83;
        case 0x22u:
          v29 = sub_100067F74(a1, a2);
          goto LABEL_83;
        default:
          v22 = 4;
          sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoDisplayRemote::ProcessCmd invalid cmd: 0x%08X !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDisplayRemote.cpp", 877, v9);
          goto LABEL_118;
      }
    }
  }

  return 89;
}

uint64_t sub_10006F618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if ((*(*result + 544))(result) <= a2)
  {
    return 4;
  }

  result = *(v4 + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = (*(*result + 240))(result);
  if (!a3)
  {
    if ((v4 + 1800) >= 0xFFFFFFFFFFFFFF70)
    {
      goto LABEL_26;
    }

    *&v9 = 0;
    *(v4 + 1952) = v9;
    *(v4 + 1944) = 0;
LABEL_20:
    if (result == a2)
    {
      return 0;
    }

    result = *(v4 + 1192);
    if (result && (result & 7) == 0)
    {
      (*(*result + 232))(result, a2);
      return 0;
    }

    goto LABEL_25;
  }

  if (!a4)
  {
    goto LABEL_20;
  }

  if ((v4 + 1800) >= 0xFFFFFFFFFFFFFF70)
  {
LABEL_26:
    __break(0x5513u);
    goto LABEL_27;
  }

  if (*(v4 + 1944) <= 1u)
  {
    if (!*(v4 + 1944))
    {
      *(v4 + 1952) = a4;
      *(v4 + 1960) = result;
      *(v4 + 1964) = 0;
      *(v4 + 1944) = 1;
    }

    goto LABEL_20;
  }

LABEL_27:
  __break(0x550Au);
  return result;
}

void sub_10006F784(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_29;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v6 = sub_10007D6FC(*(result + 8));
  v7 = v6;
  v8 = sub_100065198(v6);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_29;
  }

  v9 = sub_1000933B0(v8, a2);
  if (v9 == 56)
  {
    v11 = *(result + 2756);
    if (v11 >= 2)
    {
      goto LABEL_30;
    }

    v12 = !(((v7 & 0x800) == 0) & ((a3 & 0x10010) != 0) & v11);
  }

  else
  {
    v12 = 1;
  }

  if (a3 >> 19 || !a2 || !v12)
  {
    return;
  }

  *(result + 1208) = a3;
  *(result + 1212) = a3;
  v13 = *(result + 2756);
  if (v13 > 1)
  {
LABEL_30:
    __break(0x550Au);
    return;
  }

  if (a3 & 0x10010) != 0 && v9 != 56 && (v13)
  {
    v14 = *(result + 8);
    if (v14)
    {
      if ((v14 & 7) == 0)
      {
        v15 = sub_10005BC54(v14);
        if (v15)
        {
          if ((v15 & 7) == 0)
          {
            sub_1000C1FF4(v15 + 1008, 1);
            goto LABEL_22;
          }
        }
      }
    }

LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  if (!a3)
  {
    return;
  }

LABEL_22:
  v16 = *(result + 2748);
  if (v16 > 1)
  {
    goto LABEL_30;
  }

  if ((v16 & 1) == 0)
  {
    *(result + 2748) = 1;
    sub_1000651C8(*(result + 8), v10);
    if (v18)
    {
      sub_1000651C8(*(result + 8), v17);
      if (v19 && (v19 & 7) == 0)
      {
        sub_10006292C(v19, *(result + 2744));
        return;
      }

      goto LABEL_29;
    }
  }
}

uint64_t sub_10006F8F0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    goto LABEL_74;
  }

  v3 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_74;
  }

  v4 = *(a1 + 1200);
  if (v4 >= 2)
  {
    goto LABEL_72;
  }

  v5 = a2;
  v35 = *(a1 + 1212);
  if ((v4 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_15;
  }

  pthread_mutex_lock(&stru_10012B440);
  v6 = dword_10012B438;
  v7 = *(v3 + 1784);
  *(v3 + 1784) = 0;
  v8 = *(v3 + 2760);
  if (v8 > 7)
  {
LABEL_72:
    __break(0x550Au);
LABEL_73:
    __break(0x5513u);
    goto LABEL_74;
  }

  v9 = ~v6 & 8;
  if ((v5 & 0x28007) == 0)
  {
    v9 = 0;
  }

  v10 = v9 | v5;
  if (!v8)
  {
    v10 &= 0xFFFD7FF8;
  }

  v11 = *(v3 + 1780);
  v12 = v11 & v10 | v7;
  if ((*(v3 + 1208) & 0x10010) != 0 && *(v3 + 1788) != *(v3 + 1792))
  {
    v12 |= v5 & 0x10010;
  }

  *(v3 + 1792) = *(v3 + 1788);
  v5 = BYTE2(v12) & ~v6 & 2 | ((v12 << 29) >> 31) & ~v6 & 0xB | (v12 >> 15) & ~v6 & 1 | v12;
  *(v3 + 1780) = v11 & ~(v5 & v6);
  a1 = pthread_mutex_unlock(&stru_10012B440);
LABEL_15:
  *(v3 + 2757) = 0;
  if ((v7 & 2) == 0)
  {
    goto LABEL_22;
  }

  *(v3 + 2757) = 1;
  v13 = sub_1000D5ED0(a1, a2);
  if (!v13 || (v13 & 7) != 0)
  {
LABEL_74:
    __break(0x5516u);
  }

  if ((*(*v13 + 112))(v13))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v37 = v14;
    *&v37[16] = v14;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    memset(&__p, 0, sizeof(__p));
    memset(&v36[1], 170, 20);
    v36[0] = 0;
    sub_10006C3D4(v3, v36);
    if (*(v3 + 2764) != -1)
    {
      *v37 = *(v3 + 2764);
      sub_10006E018(v3, v37);
      std::string::operator=((v3 + 2832), &__p);
      sub_10006DE00(v3, v37);
      std::string::operator=((v3 + 2784), &__p);
      sub_10006E124(v3, v37);
      std::string::operator=((v3 + 2856), &__p);
      sub_10006DF0C(v3, v37);
      std::string::operator=((v3 + 2808), &__p);
      sub_10006E230(v3, v37);
      std::string::operator=((v3 + 2880), &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v5)
      {
        goto LABEL_23;
      }

      goto LABEL_66;
    }
  }

LABEL_22:
  if (v5)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v33 = 0;
    memset(v37, 170, 21);
    v17 = 2296;
    while (1)
    {
      if ((v5 & (1 << v16)) == 0 && (v15 != 24 || (v5 & 0x20000) == 0))
      {
        goto LABEL_58;
      }

      if (v17 - 2296 > ~(v3 + 2296))
      {
        goto LABEL_73;
      }

      v18 = *(v3 + v17);
      v19 = *(v3 + v17 + 8);
      v37[1] = v16;
      v37[0] = 1;
      if (v15 != 216)
      {
        break;
      }

      HIDWORD(v20) = -1775253149 * *(v3 + 1204);
      LODWORD(v20) = HIDWORD(v20);
      if ((v20 >> 1) < 0x1B4E81C || a3 == 0)
      {
        break;
      }

      v22 = *(v3 + 1200);
      if (v22 > 1)
      {
        goto LABEL_72;
      }

      if ((v22 & 1) == 0)
      {
        break;
      }

LABEL_62:
      ++v16;
      v15 += 24;
      v17 += 16;
      if (v15 == 456)
      {
        goto LABEL_66;
      }
    }

    v23 = (v3 + (v19 >> 1));
    if (v19)
    {
      v18 = *(*v23 + v18);
    }

    v24 = v18(v23, v37);
    if (v24 > 0x1F)
    {
      goto LABEL_72;
    }

    if (v24)
    {
LABEL_58:
      if (v15 == 24)
      {
        v31 = *(v3 + 2757);
        if (v31 > 1)
        {
          goto LABEL_72;
        }

        if (!(((v7 & 0x20002) != 0) | v31 & 1))
        {
          v5 &= ~0x20000u;
        }
      }

      goto LABEL_62;
    }

    if (v15 > ~(v3 + 1280))
    {
      goto LABEL_73;
    }

    v25 = v3 + v15;
    v26 = *(v3 + v15 + 1296);
    if (v37[0] - 1 != v26)
    {
      __break(0x5518u);
      goto LABEL_72;
    }

    if ((v33 & (v15 == 408)) != 0)
    {
      if (&v37[1] == -1)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (&v37[1] == -1)
      {
        goto LABEL_73;
      }

      if (!memcmp(*(v25 + 1288), &v37[2], *(v3 + v15 + 1296)))
      {
        v28 = v35;
LABEL_51:
        if (((1 << v16) & v7) == 0 || v15 == 72)
        {
          v30 = 0;
        }

        else
        {
          v30 = 1 << v16;
        }

        v35 = v28 | v30;
        goto LABEL_58;
      }

      v33 |= v15 == 24;
    }

    memcpy(*(v25 + 1288), &v37[2], v26);
    if ((v5 & (1 << v16)) != 0)
    {
      v27 = 1 << v16;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27 | v35;
    goto LABEL_51;
  }

LABEL_66:
  if (!v35)
  {
    return 0;
  }

  if (a3)
  {
    return sub_100072BB4(v3, v35);
  }

  result = 0;
  *(v3 + 1212) |= v35;
  return result;
}

uint64_t sub_10006FE00(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 24);
  memset(v24, 170, 21);
  if (!v5 || v4 != 1)
  {
LABEL_38:
    __break(0x5518u);
LABEL_39:
    sub_1000E1D34();
  }

  if (!*(a2 + 8))
  {
    goto LABEL_39;
  }

  v6 = *v5;
  if (v6 > 0x11)
  {
    return 4;
  }

  v7 = *(result + 1208);
  if ((v7 & 0x8005) == 0 && (v6 == 15 || v6 == 2))
  {
    v8 = *(result + 2296);
    v9 = *(result + 2304);
    memset(v23, 170, sizeof(v23));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 1;
    v10 = (result + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    result = v8(v10, &v21);
    v7 = *(v2 + 1208);
  }

  if ((v7 & 0x20006) == 0 && (v6 == 17 || v6 == 2))
  {
    if ((v2 + 2296) >= 0xFFFFFFFFFFFFFFF0)
    {
      goto LABEL_41;
    }

    v11 = *(v2 + 2312);
    v12 = *(v2 + 2320);
    memset(v23, 170, sizeof(v23));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 257;
    v13 = (v2 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    result = v11(v13, &v21);
    v7 = *(v2 + 1208);
  }

  if (v6 != 2 || (v7 & 0x20006) != 0)
  {
    goto LABEL_30;
  }

  if ((v2 + 2296) > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_41:
    __break(0x5513u);
LABEL_42:
    __break(0x550Au);
    return result;
  }

  v14 = *(v2 + 2344);
  v15 = *(v2 + 2352);
  memset(v23, 170, sizeof(v23));
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 769;
  v16 = (v2 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  result = v14(v16, &v21);
LABEL_30:
  if (__CFADD__(v2 + 2296, 16 * v6))
  {
    goto LABEL_41;
  }

  v17 = v2 + 2296 + 16 * v6;
  v18 = *v17;
  v19 = *(v17 + 8);
  BYTE1(v24[0]) = v6;
  LOBYTE(v24[0]) = 1;
  v20 = (v2 + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  result = v18(v20, v24);
  if (result > 0x1F)
  {
    goto LABEL_42;
  }

  if (result)
  {
    return result;
  }

  if (LOBYTE(v24[0]) - 2 > 0x11)
  {
    goto LABEL_38;
  }

  sub_1000B7DB4(a2, *(a2 + 8), 0, 3, 13, *(a2 + 68), v24 + 1, LOBYTE(v24[0]));
  return 0;
}

uint64_t sub_100070108(__n128 *a1, uint64_t a2, __n128 a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
LABEL_104:
    __break(0x5516u);
    goto LABEL_105;
  }

  v4 = *(a2 + 24);
  if (!v4 || (v5 = *(a2 + 128), v24 = v5 != 0, v6 = v5 - 1, v6 == 0 || !v24))
  {
    __break(0x5518u);
LABEL_103:
    sub_1000E1D34();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_103;
  }

  if (v4 == -1)
  {
LABEL_105:
    __break(0x5513u);
LABEL_106:
    __break(0x5507u);
LABEL_107:
    __break(0x550Au);
    JUMPOUT(0x10007072CLL);
  }

  result = 4;
  v9 = (v4 + 1);
  switch(*v4)
  {
    case 0:
      if (v6 == 4)
      {
        goto LABEL_28;
      }

      return result;
    case 1:
      if (v6 == 4)
      {
        v18 = bswap32(*v9);

        return sub_100070770(a1, v18);
      }

      return result;
    case 2:
      if (v6 == 2)
      {
        v17 = bswap32(*v9) >> 16;

        return sub_100071CB0(a1, v17);
      }

      return result;
    case 3:
      if (v6 == 1)
      {
        v16 = *v9;

        return sub_100071FAC(a1, v16);
      }

      return result;
    case 4:
      if (v6 != 3)
      {
        return result;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_104;
      }

      v10 = (*(*v7 + 224))(*(a2 + 8));
      if (v10)
      {
        return 4;
      }

      v28 = a1[171].n128_u8[12];
      if (v28 > 1)
      {
        goto LABEL_107;
      }

      if (v28)
      {
        goto LABEL_86;
      }

      v29 = sub_10004B1AC(v10, v11);
      if (!v29 || (v29 & 7) != 0)
      {
        goto LABEL_104;
      }

      (*(*v29 + 448))(v29);
      a1[143].n128_u8[0] = 1;
LABEL_86:
      v36[0] = 0xAAAAAAAAAAAAAAAALL;
      v36[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDCB4(v36, 1u);
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36[0] = off_100113858;
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDDDC(v36, &v35);
      v37 = v35;
      v30 = sub_100073CD8(&v37, a1[141].n128_u64);
      if (*v30 < 1 || *v30 == 1 && v30[1] < 1)
      {
        goto LABEL_98;
      }

      v31 = sub_1000DDDDC(v36, &v35);
      v33 = a1[143].n128_u8[0];
      if (v33 > 1)
      {
        goto LABEL_107;
      }

      if ((v33 & 1) == 0)
      {
        v37 = v35;
        v31 = sub_100073CD8(&v37, a1[142].n128_u64);
        if (*v31 < 1 || *v31 == 1 && v31[1] < 1)
        {
          goto LABEL_97;
        }
      }

      v34 = sub_10004B1AC(v31, v32);
      if (!v34 || (v34 & 7) != 0)
      {
        goto LABEL_104;
      }

      (*(*v34 + 448))(v34);
      sub_1000DDDDC(v36, &a1[141]);
LABEL_97:
      a1[143].n128_u8[0] = 1;
LABEL_98:
      if (v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_105;
      }

      sub_100072224(a1, *v9, v4[2], v4[3], v7);
      v36[0] = off_100113858;
      sub_1000DDCF4(v36);
      return 0;
    case 6:
      if (v6 != 5)
      {
        return result;
      }

      if (v9 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_105;
      }

      v12 = bswap32(*v9);
      v13 = v4[5];

      return sub_10006F618(a1, v12, v13, v7);
    case 7:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v19 = v4[1];
      v20 = v4[2];

      return sub_100072438(a1, v19, v20, v7, a3);
    case 8:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v21 = v4[1];
      v22 = v4[2];

      return sub_10007256C(a1, v21, v22, v7, a3);
    case 9:
      if (v6 != 6)
      {
        return result;
      }

      if (v9 > 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_105;
      }

      v23 = ((bswap32(*v9) >> 16) - 2000);
      v24 = v4[6] >= 0x3Cu || v4[5] >= 0x18u;
      if (v24 || v4[4] - 1 >= 0x1F || v4[3] - 1 >= 0xC || v23 >= 0x64)
      {
        return 4;
      }

      else
      {
        return 0;
      }

    case 0xB:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      sub_10007269C(a1, *v9, 0, v7);
      return 0;
    case 0xD:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      sub_1000712C0(a1, v4[1], v4[2], v7);
      return 0;
    case 0xE:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v14 = v4[1];
      v15 = v4[2];

      return sub_1000727A0(a1, v14, v15, v7);
    case 0xF:
      if (v6 != 2)
      {
        return result;
      }

      if (bswap32(*v9) >> 16 > 0x41)
      {
        goto LABEL_106;
      }

LABEL_28:
      sub_100071C48(a1);
      return 0;
    case 0x10:
      if (v6 != 4)
      {
        return result;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_104;
      }

      if ((*(*v7 + 224))(*(a2 + 8)))
      {
        return 4;
      }

      if (v4 == -2 || (v4 + 4) < 2)
      {
        goto LABEL_105;
      }

      sub_100072914(a1, *v9, v4[2], v4[3], v4[4], v7);
      return 0;
    default:
      return result;
  }
}

uint64_t sub_100070770(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_60;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v5 = (*(*result + 392))(result);
  v6 = v5;
  result = sub_10004B1AC(v5, v7);
  if (!result)
  {
    goto LABEL_60;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  (*(*result + 448))(result);
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v8 = (*(*result + 512))(result);
  result = *(v2 + 1192);
  v10 = (result & 7) == 0 && result != 0;
  if (v8)
  {
    if (v10)
    {
      (*(*result + 664))(result, a2, 0);
LABEL_21:
      sub_1000691A0(v2);
      return 0;
    }

    goto LABEL_60;
  }

  if (!v10)
  {
    goto LABEL_60;
  }

  if (!(*(*result + 592))(result))
  {
    result = *(v2 + 1192);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v13 = (*(*result + 376))(result);
        result = *(v2 + 1192);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v14 = (*(*result + 392))(result);
            result = *(v2 + 1192);
            if (result)
            {
              if ((result & 7) == 0)
              {
                (*(*result + 672))(result, a2);
                result = *(v2 + 1192);
                if (result)
                {
                  if ((result & 7) == 0)
                  {
                    if ((*(*result + 608))(result))
                    {
                      if (v14 < 3)
                      {
                        goto LABEL_21;
                      }

LABEL_51:
                      v16 = v14 - 1;
                      if (!a2 || v13 != v16)
                      {
                        if (v13 >= a2)
                        {
                          if (v13 >= v16)
                          {
                            goto LABEL_21;
                          }
                        }

                        else if (v13 || v16 != a2)
                        {
                          goto LABEL_21;
                        }
                      }

                      sub_100069268(v2);
                      return 0;
                    }

                    result = *(v2 + 1192);
                    if (result && (result & 7) == 0)
                    {
                      v15 = (*(*result + 616))(result);
                      if (v14 < 3 || (v15 & 1) == 0)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_51;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_60:
    __break(0x5516u);
    return result;
  }

  if (v6 <= a2)
  {
    return 2;
  }

  result = *(v2 + 1192);
  if (!result)
  {
    goto LABEL_60;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  result = (*(*result + 672))(result, a2);
  v11 = *(v2 + 1192);
  if (!v11)
  {
    goto LABEL_60;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_60;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v12 = sub_1000945E0(result, *(v2 + 8));
  if ((*(*v11 + 304))(v11, a2, 0, 0, 0, v12, 0xFFFFFFFFLL, 1))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100070B60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_54;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_54;
  }

  if (!a2)
  {
    goto LABEL_54;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_54;
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 24);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__n = v6;
  v22 = v6;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  memset(&__p, 0, sizeof(__p));
  v7 = *(a1 + 1192);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_54;
  }

  result = (*(*v7 + 392))(v7);
  if (!v5)
  {
    goto LABEL_52;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_53;
  }

  if (v4 != 7)
  {
LABEL_52:
    __break(0x5518u);
LABEL_53:
    sub_1000E1D34();
  }

  v10 = *v5;
  if (v10 > 8)
  {
    goto LABEL_41;
  }

  if (__CFADD__(a1 + 2600, 16 * v10))
  {
    __break(0x5513u);
LABEL_57:
    __break(0x5507u);
LABEL_58:
    __break(0x550Au);
    return result;
  }

  if (v5 == -1 || (v11 = a1 + 2600 + 16 * v10, v13 = *v11, v12 = *(v11 + 8), v14 = bswap32(*(v5 + 1)), LODWORD(__n[0]) = v14, v5 >= 0xFFFFFFFFFFFFFFFBLL))
  {
LABEL_55:
    __break(0x5500u);
  }

  WORD2(__n[0]) = bswap32(*(v5 + 5)) >> 16;
  HIBYTE(__n[0]) = v10;
  BYTE6(__n[0]) = 1;
  v15 = sub_1000D5ED0(result, v9);
  if (!v15 || (v15 & 7) != 0)
  {
LABEL_54:
    __break(0x5516u);
    goto LABEL_55;
  }

  if (!(*(*v15 + 112))(v15) || *(a1 + 2764) != v14)
  {
    goto LABEL_36;
  }

  if (v10 <= 3)
  {
    if (v10 == 2)
    {
      v16 = (a1 + 2784);
      v17 = *(a1 + 2807);
      if (v17 < 0)
      {
        v17 = *(a1 + 2792);
      }
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_36;
      }

      v16 = (a1 + 2808);
      v17 = *(a1 + 2831);
      if (v17 < 0)
      {
        v17 = *(a1 + 2816);
      }
    }
  }

  else
  {
    switch(v10)
    {
      case 4:
        v16 = (a1 + 2832);
        v17 = *(a1 + 2855);
        if (v17 < 0)
        {
          v17 = *(a1 + 2840);
        }

        break;
      case 5:
        v16 = (a1 + 2856);
        v17 = *(a1 + 2879);
        if (v17 < 0)
        {
          v17 = *(a1 + 2864);
        }

        break;
      case 6:
        v16 = (a1 + 2880);
        v17 = *(a1 + 2903);
        if (v17 < 0)
        {
          v17 = *(a1 + 2888);
        }

        break;
      default:
LABEL_36:
        v18 = *(a1 + 1192);
        if (v18 && (v18 & 7) == 0)
        {
          if (v14 < (*(*v18 + 392))(v18))
          {
            v19 = (a1 + (v12 >> 1));
            if (v12)
            {
              v13 = *(*v19 + v13);
            }

            result = v13(v19, __n);
            if (result > 0x1F)
            {
              goto LABEL_58;
            }

            v20 = result;
            if (result)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }

LABEL_41:
          v20 = 4;
          goto LABEL_42;
        }

        goto LABEL_54;
    }
  }

  if (!v17)
  {
    goto LABEL_36;
  }

  std::string::operator=(&__p, v16);
LABEL_48:
  if (*(a2 + 8))
  {
    result = sub_1000D6C34(*(a2 + 8), 3);
    if (!WORD1(result))
    {
      operator new[]();
    }

    goto LABEL_57;
  }

  v20 = 2;
LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t sub_1000712C0(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = (*(*result + 264))(result);
  if (!a3)
  {
    if ((v4 + 1800) < 0xFFFFFFFFFFFFFEC8)
    {
      *&v9 = 0;
      *(v4 + 2120) = v9;
      *(v4 + 2112) = 0;
      goto LABEL_16;
    }

LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  if ((v4 + 1800) >= 0xFFFFFFFFFFFFFEC8)
  {
    goto LABEL_22;
  }

  if (*(v4 + 2112) <= 1u)
  {
    if (!*(v4 + 2112))
    {
      *(v4 + 2120) = a4;
      *(v4 + 2128) = result;
      *(v4 + 2132) = 0;
      *(v4 + 2112) = 1;
    }

LABEL_16:
    if ((a2 != 0) != result)
    {
      result = *(v4 + 1192);
      if (!result || (result & 7) != 0)
      {
LABEL_21:
        __break(0x5516u);
        goto LABEL_22;
      }

      (*(*result + 256))(result, a2 != 0);
    }

    return 0;
  }

LABEL_23:
  __break(0x550Au);
  return result;
}

void sub_100071400(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_79;
  }

  if (a2 > 31)
  {
    if (a2 == 32)
    {
      if (*(result + 1200) <= 1u)
      {
        v17 = *(result + 1208);
        if (*(result + 1200))
        {
          if ((-858993459 * *(result + 1204)) <= 0x33333333)
          {
            sub_10006F8F0(result, *(result + 1208), 1);
          }

          else if ((v17 & 0x10010) != 0 && (*(result + 1788) != *(result + 1792) || (*(result + 1780) & 0x10010) != 0))
          {
            sub_100071A70(result);
          }
        }

        else
        {
          *(result + 1204) = 0;
          sub_10006F8F0(result, 0x7FFFFLL, 1);
          *(result + 1212) = 0;
          *(result + 1200) = 1;
        }

        v30 = *(result + 1204);
        v31 = __CFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_81;
        }

        *(result + 1204) = v32;
        if ((*(result + 1780) & v17) == 0)
        {
          *(result + 2748) = 0;
          return;
        }

LABEL_70:
        *(result + 2748) = 1;
        sub_1000651C8(*(result + 8), a2);
        if (v34)
        {
          sub_1000651C8(*(result + 8), v33);
          if (v35 && (v35 & 7) == 0)
          {
            sub_10006292C(v35, *(result + 2744));
            return;
          }

          goto LABEL_79;
        }

        return;
      }

LABEL_80:
      __break(0x550Au);
      goto LABEL_81;
    }

    if (a2 != 64)
    {
      if (a2 != 512)
      {
        return;
      }

      v12 = *(result + 1788);
      v13 = v12 + 1;
      if (v12 == -1)
      {
LABEL_81:
        __break(0x5500u);
        return;
      }

      v14 = *(result + 1208);
      *(result + 1788) = v13;
      v15 = *(result + 2748);
      if (v15 <= 1)
      {
        if ((v15 & 1) != 0 || (v14 & 0x10010) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      goto LABEL_80;
    }

    if ((a3 + 8) > 0xF)
    {
      goto LABEL_80;
    }

    if (a3 < 0xFFFFFFFE)
    {
      if (a3)
      {
        if (a3 == 6)
        {
          v36[0] = 0xAAAAAAAAAAAAAAAALL;
          v36[1] = 0xAAAAAAAAAAAAAAAALL;
          sub_1000DDCB4(v36, 1u);
          v36[0] = off_100113858;
          sub_1000DDDDC(v36, (result + 2272));
          v36[0] = off_100113858;
          sub_1000DDCF4(v36);
        }
      }

      else
      {
        *(result + 2288) = 0;
        *(result + 2756) = 0;
      }

      return;
    }

LABEL_61:
    v28 = *(result + 8);
    if (v28)
    {
      if ((v28 & 7) == 0)
      {
        v29 = sub_10005BC54(v28);
        if (v29)
        {
          if ((v29 & 7) == 0)
          {
            sub_1000C1FF4(v29 + 1008, 0);
            return;
          }
        }
      }
    }

    goto LABEL_79;
  }

  switch(a2)
  {
    case 1:
      if ((a3 - 7) >= 2 && a3 != 5)
      {
        if (a3 != 6)
        {
          return;
        }

        *(result + 2752) = 6;
        v16 = *(result + 2748);
        if (v16 <= 1)
        {
          if (v16)
          {
            return;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      *(result + 2752) = a3;
      *(result + 2748) = 0;
      sub_1000651C8(*(result + 8), a2);
      if (v26)
      {
        sub_1000651C8(*(result + 8), v25);
        if (!v27 || (v27 & 7) != 0)
        {
          goto LABEL_79;
        }

        sub_1000629DC(v27, *(result + 2744));
      }

      *(result + 2288) = 0;
      *(result + 2756) = 0;
      goto LABEL_61;
    case 4:
      if (!a4)
      {
        sub_1000E1D34();
      }

      *(result + 1208) = 0;
      *(result + 1788) = 0;
      *(result + 2288) = 0;
      v18 = sub_100065198(result);
      if (v18 && (v18 & 7) == 0)
      {
        v19 = sub_1000932FC(v18, a4);
        *(result + 2756) = 0;
        v20 = v19 - 15;
        v21 = *(result + 8);
        if ((v21 & 7) == 0 && v21 != 0)
        {
          v24 = sub_10005BC54(v21);
          if (v24)
          {
            if ((v24 & 7) == 0)
            {
              sub_1000C1FF4(v24 + 1008, v20 < 2);
              *(result + 1204) = 0;
              return;
            }
          }
        }
      }

      goto LABEL_79;
    case 8:
      if (!a4)
      {
        sub_1000E1D34();
      }

      *(result + 2748) = 0;
      sub_1000651C8(*(result + 8), a2);
      if (!v8)
      {
LABEL_12:
        sub_1000717D4(result, a4, v7);
        *(result + 1208) = 0;
        *(result + 2288) = 0;
        *(result + 2756) = 0;
        v10 = *(result + 8);
        if (v10)
        {
          if ((v10 & 7) == 0)
          {
            v11 = sub_10005BC54(v10);
            if (v11)
            {
              if ((v11 & 7) == 0)
              {
                sub_1000C1FF4(v11 + 1008, 0);
                *(result + 1788) = 0;
                return;
              }
            }
          }
        }

        goto LABEL_79;
      }

      sub_1000651C8(*(result + 8), v6);
      if (v9 && (v9 & 7) == 0)
      {
        sub_1000629DC(v9, *(result + 2744));
        goto LABEL_12;
      }

LABEL_79:
      __break(0x5516u);
      goto LABEL_80;
  }
}

uint64_t sub_1000717D4(uint64_t result, unint64_t a2, __n128 a3)
{
  if (!result)
  {
    goto LABEL_53;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_53;
  }

  if (!a2)
  {
    return 22;
  }

  v5 = 0;
  for (i = (result + 1800); ; i += 24)
  {
    if (*(i + 1) != a2)
    {
      goto LABEL_46;
    }

    v7 = *i;
    if (v7 >= 2)
    {
      goto LABEL_52;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v5 <= 9)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          result = sub_100072438(v3, *(i + 4), 0, a2, a3);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        if (v5 == 8)
        {
          result = sub_10007256C(v3, *(i + 4), 0, a2, a3);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v5 == 4)
        {
          result = sub_100046A8C(result, a2);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_53;
          }

          result = (*(*result + 48))(result);
          if (!result)
          {
LABEL_45:
            *i = 0;
            goto LABEL_46;
          }

          if (*(i + 4) >= 0x100u || *(i + 5) > 0xFFu)
          {
            goto LABEL_54;
          }

          result = sub_100072224(v3, *(i + 4), *(i + 5), 0, a2);
          goto LABEL_46;
        }

        if (v5 == 6)
        {
          result = sub_10006F618(v3, *(i + 4), 0, a2);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }
      }

LABEL_43:
      result = sub_100072B3C(v3, v5, a3);
      if (result)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (v5 <= 12)
    {
      if (v5 == 10)
      {
        goto LABEL_46;
      }

      if (v5 == 11)
      {
        result = sub_10007269C(v3, i[16], 0, a2);
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v5 == 13)
    {
      result = sub_1000712C0(v3, *(i + 4) != 0, 0, a2);
      goto LABEL_46;
    }

    if (v5 == 14)
    {
      break;
    }

    if (v5 != 16)
    {
      goto LABEL_43;
    }

    result = sub_100046A8C(result, a2);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_53;
    }

    result = (*(*result + 48))(result);
    if (!result)
    {
      goto LABEL_45;
    }

    if (*(i + 4) > 0xFFu || *(i + 5) > 0xFFu)
    {
      goto LABEL_54;
    }

    result = sub_100072914(v3, *(i + 4), 0, *(i + 5), 0, a2);
LABEL_46:
    if (i >= 0xFFFFFFFFFFFFFFE8)
    {
      goto LABEL_51;
    }

    if (++v5 == 19)
    {
      return 0;
    }
  }

  v8 = *(i + 4);
  if (v8 > 0xFF)
  {
    goto LABEL_52;
  }

  result = sub_1000727A0(v3, v8, 0, a2);
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_50:
  __break(0x5518u);
LABEL_51:
  __break(0x5513u);
LABEL_52:
  __break(0x550Au);
LABEL_53:
  __break(0x5516u);
LABEL_54:
  __break(0x5507u);
  return result;
}

uint64_t sub_100071A70(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_21;
  }

  v2 = 0;
  memset(v19, 170, 21);
  v3 = ~(a1 + 2296);
  *(a1 + 1792) = *(a1 + 1788);
  v17 = a1 + 1280;
  v18 = ~(a1 + 1280);
  v4 = 4;
  v5 = 1;
  do
  {
    if (v3 < 16 * v4)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = v4;
    v8 = a1 + 2296 + 16 * v4;
    v9 = *v8;
    v10 = *(v8 + 8);
    BYTE1(v19[0]) = v7;
    LOBYTE(v19[0]) = 1;
    v11 = (a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v12 = v9(v11, v19);
    if (v12 > 0x1F)
    {
      goto LABEL_20;
    }

    if (!v12)
    {
      if (24 * v7 > v18)
      {
        goto LABEL_19;
      }

      v13 = v17 + 24 * v7;
      v14 = *(v13 + 16);
      if (LOBYTE(v19[0]) - 1 != v14)
      {
        __break(0x5518u);
LABEL_19:
        __break(0x5513u);
LABEL_20:
        __break(0x550Au);
LABEL_21:
        __break(0x5516u);
      }

      if ((v19 + 1) == -1)
      {
        goto LABEL_19;
      }

      v15 = *(v13 + 8);
      if (memcmp(v15, v19 + 2, *(v13 + 16)))
      {
        memcpy(v15, v19 + 2, v14);
        v2 |= 1 << v7;
      }
    }

    v5 = 0;
    v4 = 16;
  }

  while ((v6 & 1) != 0);
  if (v2)
  {
    return sub_100072E58(a1, v2);
  }

  else
  {
    return 0;
  }
}

void *sub_100071C48(void *result)
{
  if (result && (result & 7) == 0 && ((result = result[149]) != 0 ? (v1 = (result & 7) == 0) : (v1 = 0), v1))
  {
    (*(*result + 344))(result);
    return 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100071CB0(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_36;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v12 = 0;
  result = sub_10006547C(&v12 + 4, &v12);
  if (result >= 0x20)
  {
    goto LABEL_37;
  }

  if (result)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  if (v12 > 7)
  {
LABEL_37:
    __break(0x550Au);
    goto LABEL_38;
  }

  if (!v12)
  {
    return 0;
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = (*(*result + 384))(result);
  v11 = result;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  v5 = result;
  if (((*(*result + 16))(result) & 1) == 0)
  {
LABEL_35:
    sub_1000E1D34();
  }

  v6 = (*(*v5 + 368))(v5);
  if (v6)
  {
    if (v6 > a2)
    {
      result = *(v2 + 1192);
      if (!result)
      {
        goto LABEL_36;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_36;
      }

      (*(*result + 408))(result);
      result = v11;
      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_36;
      }

      v7 = (*(*v11 + 392))();
      if (v7 != a2)
      {
        result = sub_10004B1AC(v7, v8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(*result + 448))(result);
            result = v11;
            if ((v11 & 7) == 0)
            {
              v9 = (*(*v11 + 376))();
              result = *(v2 + 1192);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  if (v9 >= 0xFFFFFC18)
                  {
LABEL_38:
                    __break(0x5500u);
                    return result;
                  }

                  (*(*result + 344))(result, v9 + 1000);
                  v10[0] = 0xAAAAAAAAAAAAAAAALL;
                  v10[1] = 0xAAAAAAAAAAAAAAAALL;
                  sub_1000DDCB4(v10, 0);
                  v10[0] = off_100115F28;
                  sub_1000DDDDC(v10, (v2 + 1760));
                  *(v2 + 1756) = 1;
                  v10[0] = off_100115F28;
                  sub_1000DDCF4(v10);
                  goto LABEL_30;
                }
              }
            }
          }
        }

LABEL_36:
        __break(0x5516u);
        goto LABEL_37;
      }
    }

LABEL_30:
    sub_1000698F8(&v11);
    return 0;
  }

  sub_1000698F8(&v11);
  return 2;
}

uint64_t sub_100071FAC(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  if (a2 >= 8)
  {
    goto LABEL_40;
  }

  if (a2 > 5)
  {
    return 4;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  v4 = (*(*result + 416))(result);
  v6 = v4;
  if (a2 > 2)
  {
    result = sub_10004B1AC(v4, v5);
    if (result && (result & 7) == 0)
    {
      result = (*(*result + 448))(result);
      if (v6 <= 3)
      {
        if (v6)
        {
          if (a2 == 4)
          {
            v7 = v2;
            v8 = 21;
          }

          else
          {
            if (a2 != 3)
            {
              sub_100069050(v2, 20, 0);
              v7 = v2;
              v8 = 21;
              goto LABEL_36;
            }

            v7 = v2;
            v8 = 20;
          }

          v9 = 1;
LABEL_37:
          sub_100069050(v7, v8, v9);
          return 0;
        }

        return 0;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      result = sub_10004B1AC(v4, v5);
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 448))(result);
        if (v6 <= 3)
        {
          if (v6 != 1)
          {
            sub_100069050(v2, 8, 1);
            v7 = v2;
            v8 = 8;
LABEL_36:
            v9 = 0;
            goto LABEL_37;
          }

          return 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      result = sub_10004B1AC(v4, v5);
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 448))(result);
        if (v6 <= 3)
        {
          if (v6 == 1)
          {
            sub_100069050(v2, 9, 1);
            v7 = v2;
            v8 = 9;
            goto LABEL_36;
          }

          return 0;
        }

        goto LABEL_40;
      }
    }

LABEL_39:
    __break(0x5516u);
    goto LABEL_40;
  }

  result = sub_10004B1AC(v4, v5);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  result = (*(*result + 448))(result);
  if (v6 <= 3)
  {
    if (v6)
    {
      sub_100069050(v2, 7, 1);
      v7 = v2;
      v8 = 7;
      goto LABEL_36;
    }

    return 0;
  }

LABEL_40:
  __break(0x550Au);
  return result;
}

uint64_t sub_100072224(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  v9 = a2;
  result = sub_100045A94(result, a2);
  if (!result)
  {
    goto LABEL_26;
  }

  v10 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  v11 = (*(*result + 104))(result, a5);
  v12 = (*(*v10 + 120))(v10, a5);
  v13 = v12;
  result = sub_100065198(v12);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = sub_1000933B0(result, a5);
  if (result == 56)
  {
    goto LABEL_13;
  }

  result = *(v5 + 8);
  if (!result || (result & 7) != 0 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
    goto LABEL_27;
  }

  result = sub_1000C1FF4(result + 1008, 1);
LABEL_13:
  if (a4)
  {
    result = sub_100073130(v5, v11, 0);
    if (a5)
    {
      if ((v5 + 1800) < 0xFFFFFFFFFFFFFFA0)
      {
        if (*(v5 + 1896) <= 1u)
        {
          if (!*(v5 + 1896))
          {
            *(v5 + 1904) = a5;
            *(v5 + 1912) = v13;
            *(v5 + 1916) = result;
            *(v5 + 1896) = 1;
          }

          goto LABEL_21;
        }

LABEL_28:
        __break(0x550Au);
        return result;
      }

LABEL_27:
      __break(0x5513u);
      goto LABEL_28;
    }
  }

  else
  {
    if ((v5 + 1800) >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_27;
    }

    *&v15 = 0;
    *(v5 + 1904) = v15;
    *(v5 + 1896) = 0;
  }

LABEL_21:
  if ((v9 != 0) != v13)
  {
    (*(*v10 + 112))(v10, a5);
  }

  if (!v9)
  {
    sub_10006C29C(v5, v14);
    v16 = sub_1000731DC(v5, a3, 0);
    (*(*v10 + 96))(v10, a5, v16);
  }

  return 0;
}

uint64_t sub_100072438(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (a2 >= 4)
  {
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    return 4;
  }

  if (!a3)
  {
    if ((result + 1800) < 0xFFFFFFFFFFFFFF58)
    {
      a5.n128_u64[0] = 0;
      *(result + 1976) = a5;
      *(result + 1968) = 0;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  result = (*(*result + 152))(result, a5);
  if (result > 3)
  {
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  if ((v5 + 1800) < 0xFFFFFFFFFFFFFF58)
  {
    if (*(v5 + 1968) <= 1u)
    {
      if (!*(v5 + 1968))
      {
        *(v5 + 1976) = a4;
        *(v5 + 1984) = result;
        *(v5 + 1988) = 0;
        *(v5 + 1968) = 1;
      }

LABEL_17:
      result = *(v5 + 1192);
      if (result && (result & 7) == 0)
      {
        (*(*result + 144))(result, a2);
        return 0;
      }

      goto LABEL_20;
    }

LABEL_21:
    __break(0x550Au);
  }

LABEL_22:
  __break(0x5513u);
  return result;
}

__n128 *sub_10007256C(__n128 *result, uint64_t a2, int a3, unint64_t a4, __n128 a5)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (a2 >= 4)
  {
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    return 4;
  }

  if (!a3)
  {
    if (&result[112].n128_u64[1] < 0xFFFFFFFFFFFFFF40)
    {
      a5.n128_u64[0] = 0;
      result[125] = a5;
      result[124].n128_u8[8] = 0;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = result[74].n128_u64[1];
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  result = (*(result->n128_u64[0] + 136))(result, a5);
  if (result > 3)
  {
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  if (&v5[112].n128_u64[1] < 0xFFFFFFFFFFFFFF40)
  {
    if (v5[124].n128_u8[8] <= 1u)
    {
      if (!v5[124].n128_u8[8])
      {
        v5[125].n128_u64[0] = a4;
        v5[125].n128_u32[2] = result;
        v5[125].n128_u32[3] = 0;
        v5[124].n128_u8[8] = 1;
      }

LABEL_17:
      result = v5[74].n128_u64[1];
      if (result && (result & 7) == 0)
      {
        (*(result->n128_u64[0] + 128))(result, a2);
        return 0;
      }

      goto LABEL_20;
    }

LABEL_21:
    __break(0x550Au);
  }

LABEL_22:
  __break(0x5513u);
  return result;
}

uint64_t sub_10007269C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (v4 = result, (result & 7) != 0) || (result = sub_10004B1AC(result, a2)) == 0 || (v7 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  result = (*(*result + 392))(result);
  if (a4)
  {
    if ((v4 + 1800) < 0xFFFFFFFFFFFFFEF8)
    {
      if (*(v4 + 2064) <= 1u)
      {
        if (!*(v4 + 2064))
        {
          *(v4 + 2072) = a4;
          *(v4 + 2080) = result;
          *(v4 + 2084) = 0;
          *(v4 + 2064) = 1;
        }

        goto LABEL_10;
      }

LABEL_15:
      __break(0x550Au);
      return result;
    }

LABEL_14:
    __break(0x5513u);
    goto LABEL_15;
  }

LABEL_10:
  if (result != a2)
  {
    (*(*v7 + 384))(v7, a2);
  }

  return 0;
}

uint64_t sub_1000727A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v5 = a2;
  if (a2 >= 0x100)
  {
    goto LABEL_26;
  }

  if ((a2 - 253) > 0xFFFFFF06)
  {
    return 4;
  }

  if (a2 + 3) <= 6u && ((0x63u >> (a2 + 3)))
  {
    v5 = dword_1000EF17C[(a2 + 3)];
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = (*(*result + 184))(result);
  if (!a3)
  {
    if ((v4 + 1800) >= 0xFFFFFFFFFFFFFEB0)
    {
      goto LABEL_27;
    }

    *&v8 = 0;
    *(v4 + 2144) = v8;
    *(v4 + 2136) = 0;
    if (result > 0xFF)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (result == v5)
    {
      return 0;
    }

    result = *(v4 + 1192);
    if (result && (result & 7) == 0)
    {
      (*(*result + 176))(result, v5);
      return 0;
    }

    goto LABEL_25;
  }

  if (result > 0xFF)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_20;
  }

  if ((v4 + 1800) < 0xFFFFFFFFFFFFFEB0)
  {
    if (*(v4 + 2136) <= 1u)
    {
      if (!*(v4 + 2136))
      {
        *(v4 + 2144) = a4;
        *(v4 + 2152) = result;
        *(v4 + 2156) = 0;
        *(v4 + 2136) = 1;
      }

      goto LABEL_20;
    }

LABEL_26:
    __break(0x550Au);
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

uint64_t sub_100072914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_29;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v11 = a2;
  result = sub_100045A94(result, a2);
  if (!result)
  {
    goto LABEL_29;
  }

  v12 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v13 = (*(*result + 104))(result, a6);
  v14 = (*(*v12 + 120))(v12, a6);
  v15 = v14;
  result = sub_100065198(v14);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_1000933B0(result, a6);
  if (result == 56)
  {
    goto LABEL_13;
  }

  result = *(v6 + 8);
  if (!result || (result & 7) != 0 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  result = sub_1000C1FF4(result + 1008, 1);
LABEL_13:
  if (a5)
  {
    result = sub_100073130(v6, v13, 0);
    if (a6)
    {
      if ((v6 + 1800) < 0xFFFFFFFFFFFFFE80)
      {
        if (*(v6 + 2184) <= 1u)
        {
          if (!*(v6 + 2184))
          {
            *(v6 + 2192) = a6;
            *(v6 + 2200) = v15;
            *(v6 + 2204) = result;
            *(v6 + 2184) = 1;
          }

          goto LABEL_21;
        }

LABEL_31:
        __break(0x550Au);
        return result;
      }

LABEL_30:
      __break(0x5513u);
      goto LABEL_31;
    }
  }

  else
  {
    if ((v6 + 1800) >= 0xFFFFFFFFFFFFFE80)
    {
      goto LABEL_30;
    }

    *&v16 = 0;
    *(v6 + 2192) = v16;
    *(v6 + 2184) = 0;
  }

LABEL_21:
  if ((v11 != 0) != v15)
  {
    (*(*v12 + 112))(v12, a6);
  }

  if (!v11)
  {
    if (a3)
    {
      v17 = a3;
      v18 = 0;
    }

    else
    {
      v17 = a4;
      v18 = 1;
    }

    v19 = sub_1000731DC(v6, v17, v18);
    (*(*v12 + 96))(v12, a6, v19);
  }

  return 0;
}

uint64_t sub_100072B3C(uint64_t result, int a2, __n128 a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  if (a2 > 18)
  {
    return 22;
  }

  if (a2 < 0x14)
  {
    v3 = result + 1800;
    if (!__CFADD__(result + 1800, 24 * a2))
    {
      a3.n128_u64[0] = 0;
      result = 0;
      v4 = v3 + 24 * a2;
      *(v4 + 8) = a3;
      *v4 = 0;
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(0x5512u);
LABEL_12:
  __break(0x5513u);
  return result;
}

uint64_t sub_100072BB4(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = sub_100065198(a1);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = sub_1000945E0(v4, *(a1 + 8));
  v6 = 0;
  v7 = 0;
  do
  {
    result = 0;
    if (v5)
    {
      v9 = 1 << v7;
      if (((1 << v7) & a2) != 0)
      {
        if ((*(a1 + 1208) & v9) != 0)
        {
          memset(v13, 170, 21);
          BYTE1(v13[0]) = v7;
          if ((v13 + 1) == -1 || v6 > ~(a1 + 1280))
          {
LABEL_20:
            __break(0x5513u);
            __break(0x550Au);
          }

          v10 = *(a1 + v6 + 1297);
          memcpy(v13 + 2, *(a1 + v6 + 1288), *(a1 + v6 + 1297));
          if (v10 == 255)
          {
LABEL_19:
            __break(0x5507u);
            goto LABEL_20;
          }

          LOBYTE(v13[0]) = v10 + 1;
          if ((v5 & 7) == 0)
          {
            v11 = (*(*v5 + 16))(v5, 0);
            sub_1000B748C(v5, 0, 3, 9, v11, v13 + 1, LOBYTE(v13[0]));
          }

LABEL_18:
          __break(0x5516u);
          goto LABEL_19;
        }

        result = 0;
        *(a1 + 1212) |= v9;
      }
    }

    v6 += 24;
  }

  while (v7++ < 0x12);
  return result;
}

uint64_t sub_100072E58(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0 || (v4 = sub_100065198(a1)) == 0 || (v4 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  result = sub_1000945E0(v4, *(a1 + 8));
  if (result)
  {
    v6 = result;
    result = 0;
    v7 = 4;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = 1 << v7;
      if (((1 << v7) & a2) != 0)
      {
        if ((*(a1 + 1208) & v10) != 0)
        {
          memset(v14, 170, 21);
          BYTE1(v14[0]) = v7;
          if ((v14 + 1) != -1 && 24 * v7 <= ~(a1 + 1280))
          {
            v11 = a1 + 1280 + 24 * v7;
            v12 = *(v11 + 16);
            memcpy(v14 + 2, *(v11 + 8), *(v11 + 16));
            if (v12 != 255)
            {
              LOBYTE(v14[0]) = v12 + 1;
              if ((v6 & 7) == 0)
              {
                v13 = (*(*v6 + 16))(v6, 0);
                sub_1000B748C(v6, 0, 3, 9, v13, v14 + 1, LOBYTE(v14[0]));
              }

              goto LABEL_17;
            }

LABEL_19:
            __break(0x5507u);
            __break(0x550Au);
          }

LABEL_18:
          __break(0x5513u);
          goto LABEL_19;
        }

        *(a1 + 1212) |= v10;
      }

      v8 = 0;
      v7 = 16;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

uint64_t sub_100073100(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115F28;
    return sub_1000DDCF4(result);
  }

  return result;
}

uint64_t sub_100073130(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
LABEL_18:
    __break(0x5507u);
    goto LABEL_19;
  }

  v5 = a2;
  result = sub_10006C29C(result, a2);
  v6 = *(v3 + 1736);
  if (v6 == 255 || a3 != 0)
  {
    v8 = *(v3 + 1740);
    v9 = v5 >= v8;
    v6 = v5 - v8;
    if (v6 == 0 || !v9)
    {
LABEL_15:
      if (v5 < 0x100)
      {
        return v5;
      }

      goto LABEL_18;
    }

    v5 = v6;
    if (v6 < 0x100)
    {
      return v5;
    }

    __break(0x5518u);
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (((255 * v5) & 0xFFFFFFFF00000000) != 0)
  {
LABEL_19:
    __break(0x550Cu);
    goto LABEL_20;
  }

  if (!__CFADD__(255 * v5, v6 >> 1))
  {
    v5 = (255 * v5 + (v6 >> 1)) / v6;
    goto LABEL_15;
  }

LABEL_20:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000731DC(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = a2;
  result = sub_10006C29C(result, a2);
  v7 = *(v3 + 1736);
  if (v7 != 255 && a3 == 0)
  {
    v11 = v5 * v7;
    if ((v11 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_19:
      __break(0x550Cu);
      goto LABEL_20;
    }

    v12 = __CFADD__(v11, 127);
    v13 = v11 + 127;
    if (v12)
    {
LABEL_20:
      __break(0x5500u);
      return result;
    }

    v10 = v13 / 0xFF;
  }

  else
  {
    v9 = *(v3 + 1740);
    if (v9 > v5)
    {
      v9 = 0;
    }

    v10 = v9 + v5;
  }

  result = sub_100045A94(result, v6);
  if (!result || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  LODWORD(result) = (*(*result + 136))(result);
  if (v10 >= result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1000732B0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_42;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_42;
  }

  result = (*(*result + 400))(result);
  v2 = result;
  v19 = result;
  if (!result)
  {
LABEL_41:
    sub_1000698F8(&v19);
    return v2;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_42;
  }

  if (!(*(*result + 16))(result))
  {
    v2 = 0;
    goto LABEL_41;
  }

  v3 = (*(*v2 + 264))(v2);
  v4 = (*(*v2 + 368))(v2);
  v5 = (*(*v2 + 232))(v2);
  v6 = (*(*v2 + 256))(v2);
  v7 = (*(*v2 + 272))(v2);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v8 = (*(*v2 + 224))(v2, &v18);
  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = v3 | 2;
  if (!v4)
  {
    v9 = v3;
  }

  if (v5)
  {
    v9 |= 4u;
  }

  if (v6)
  {
    v9 |= 8u;
  }

  if (v7)
  {
    v9 |= 0x10u;
  }

  if (v8)
  {
    v10 = v9 | 0x20;
  }

  else
  {
    v10 = v9;
  }

  (*(*v2 + 72))(v2, &__p);
  v11 = HIBYTE(v17);
  if (v17 < 0)
  {
    v11 = v16;
  }

  if (v11)
  {
    v10 |= 0x40u;
  }

  v12 = (*(*v2 + 288))(v2);
  if (!v12)
  {
    goto LABEL_33;
  }

  result = sub_100046A8C(v12, v13);
  if (result && (result & 7) == 0)
  {
    if ((*(*result + 176))(result))
    {
      v14 = 384;
    }

    else
    {
      v14 = 128;
    }

    v10 |= v14;
LABEL_33:
    if ((*(*v2 + 360))(v2))
    {
      v10 |= 0x2000u;
    }

    if ((*(*v2 + 280))(v2))
    {
      v2 = v10 | 0x4000;
    }

    else
    {
      v2 = v10;
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_41;
  }

LABEL_42:
  __break(0x5516u);
  return result;
}

uint64_t sub_100073670(uint64_t result, uint64_t a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v2 = result;
  result = sub_100046A8C(result, a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = (*(*result + 144))(result);
  *v2 = 3;
  if (v2 == -1)
  {
LABEL_11:
    __break(0x5500u);
    return result;
  }

  v3 = 0x100000000000000;
  if (result)
  {
    v3 = 0x500000000000000;
  }

  *(v2 + 1) = v3;
  return 0;
}

void sub_100073704(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_49;
  }

  v3 = *(result + 1776);
  if (v3 >= 2)
  {
    goto LABEL_48;
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  pthread_mutex_lock(&stru_10012B440);
  v5 = 0;
  if (a2 <= 0x80000)
  {
    switch(a2)
    {
      case 327689:
        v5 = 4096;
        break;
      case 327706:
        v5 = 2048;
        break;
      case 458753:
        v6 = *(result + 1788);
        v7 = __CFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
LABEL_50:
          __break(0x5500u);
LABEL_51:
          __break(0x5513u);
          JUMPOUT(0x1000739D4);
        }

        *(result + 1788) = v8;
        v5 = 65552;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 524289:
      case 524290:
      case 524305:
        v5 = 256;
        break;
      case 524291:
        *(result + 1784) |= 0x40000u;
        if ((result + 1280) < 0xFFFFFFFFFFFFFE50)
        {
          goto LABEL_32;
        }

        goto LABEL_51;
      case 524292:
      case 524304:
        *(result + 1784) |= 0x40000u;
        if ((result + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

LABEL_32:
        v13 = *(result + 1720);
        v7 = __CFADD__(v13, 4);
        v14 = (v13 + 4);
        if (v7)
        {
          goto LABEL_50;
        }

        *v14 ^= 0x80000000;
        v5 = 128;
        break;
      case 524293:
        v5 = 0x4000;
        break;
      case 524294:
        v5 = 64;
        break;
      case 524295:
        v5 = 0x2000;
        break;
      case 524296:
      case 524303:
      case 524306:
      case 524310:
        break;
      case 524297:
        v5 = 32769;
        break;
      case 524298:
      case 524311:
        v5 = 131074;
        *(result + 1784) |= 2u;
        break;
      case 524299:
        *(result + 1784) |= 0x40000u;
        if ((result + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

        v11 = *(result + 1720);
        v7 = __CFADD__(v11, 4);
        v12 = (v11 + 4);
        if (v7)
        {
          goto LABEL_50;
        }

        *v12 ^= 0x2000000u;
        v5 = 2;
        break;
      case 524300:
      case 524308:
        v5 = 4;
        break;
      case 524301:
        *(result + 1784) |= 8u;
        v5 = 8;
        break;
      case 524302:
        *(result + 1784) |= 0x20002u;
        goto LABEL_25;
      case 524307:
      case 524309:
LABEL_25:
        v5 = 0x20000;
        break;
      case 524312:
        *(result + 1784) |= 0x40002u;
        if ((result + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

        v9 = *(result + 1720);
        v10 = (v9 + 4);
        if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_50;
        }

        v5 = 0;
        *v10 ^= 0x400u;
        break;
      default:
        if (a2 == 1048579)
        {
          v5 = 32;
        }

        else
        {
          v5 = 0;
        }

        break;
    }
  }

  dword_10012B438 |= v5;
  *(result + 1780) |= v5;
  pthread_mutex_unlock(&stru_10012B440);
  v16 = *(result + 2748);
  if (v16 > 1)
  {
LABEL_48:
    __break(0x550Au);
LABEL_49:
    __break(0x5516u);
    goto LABEL_50;
  }

  if (v16)
  {
    return;
  }

  if ((*(result + 1780) & *(result + 1208)) == 0)
  {
    return;
  }

  *(result + 2748) = 1;
  sub_1000651C8(*(result + 8), v15);
  if (!v18)
  {
    return;
  }

  sub_1000651C8(*(result + 8), v17);
  if (!v19 || (v19 & 7) != 0)
  {
    goto LABEL_49;
  }

  v20 = *(result + 2744);

  sub_10006292C(v19, v20);
}

uint64_t sub_100073A34(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 40))(result, a2, a3, 0, 0);
  }

  __break(0x5516u);
  return result;
}

void sub_100073A70(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  pthread_mutex_lock(&stru_10012B440);
  v4 = a2 >> 1 == 524291;
  dword_10012B438 |= 32 * v4;
  *(result + 1780) |= 32 * v4;
  pthread_mutex_unlock(&stru_10012B440);
  v6 = *(result + 2748);
  if (v6 >= 2)
  {
LABEL_14:
    __break(0x550Au);
    return;
  }

  if (v6)
  {
    return;
  }

  if ((*(result + 1780) & *(result + 1208)) == 0)
  {
    return;
  }

  *(result + 2748) = 1;
  sub_1000651C8(*(result + 8), v5);
  if (!v8)
  {
    return;
  }

  sub_1000651C8(*(result + 8), v7);
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v10 = *(result + 2744);

  sub_10006292C(v9, v10);
}

void sub_100073B60(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v4[0] = v3;
    v4[1] = v3;
    v5 = 0xAAAAAAAAAAAAAAAALL;
    memset(&__p, 0, sizeof(__p));
    if (*(a1 + 2764) != -1)
    {
      LODWORD(v4[0]) = *(a1 + 2764);
      sub_10006E018(a1, v4);
      std::string::operator=((a1 + 2832), &__p);
      sub_10006DE00(a1, v4);
      std::string::operator=((a1 + 2784), &__p);
      sub_10006E124(a1, v4);
      std::string::operator=((a1 + 2856), &__p);
      sub_10006DF0C(a1, v4);
      std::string::operator=((a1 + 2808), &__p);
      sub_10006E230(a1, v4);
      std::string::operator=((a1 + 2880), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_100073C78(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (*(result + 1208) = 0, *(result + 2748) = 0, sub_1000651C8(a2, a2), !v3) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = *(result + 2744);

    sub_1000629DC(v3, v4);
  }
}

void *sub_100073CD8(void *result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *result - *a2;
    if (!__OFSUB__(*result, *a2))
    {
      *result = v2;
      v3 = result[1];
      v4 = a2[1];
      v5 = __OFSUB__(v3, v4);
      v6 = v3 - v4;
      if (!v5)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
LABEL_8:
          result[1] = v6;
          return result;
        }

        while (1)
        {
          v5 = __OFSUB__(v2--, 1);
          if (v5)
          {
            break;
          }

          *result = v2;
          v6 += 1000000000;
          if (v6 - 1000000000 >= -1000000000)
          {
            goto LABEL_8;
          }
        }

        result[1] = v6;
      }
    }

    __break(0x5515u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100073D4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100115F28;
    sub_1000DDCF4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void *sub_100073DB0(void *result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *result + *a2;
    if (!__OFADD__(*result, *a2))
    {
      *result = v2;
      v3 = result[1];
      v4 = a2[1];
      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (!v5)
      {
        if (v6 <= 999999999)
        {
LABEL_8:
          result[1] = v6;
          return result;
        }

        while (!__OFADD__(v2, 1))
        {
          *result = v2 + 1;
          v6 -= 1000000000;
          ++v2;
          if (v6 + 1000000000 <= 1999999999)
          {
            goto LABEL_8;
          }
        }

        result[1] = v6;
      }
    }

    __break(0x5500u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100073E38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_8;
    }

    result = (*(*result + 272))(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          *(v2 + 57) = 1;
          return result;
        }

LABEL_8:
        __break(0x5516u);
      }
    }
  }

  return result;
}

uint64_t sub_100073EB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_8;
    }

    result = (*(*result + 272))(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          *(v2 + 57) = 0;
          return result;
        }

LABEL_8:
        __break(0x5516u);
      }
    }
  }

  return result;
}

void sub_100073F2C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_44;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_44;
  }

  sub_100064F7C(result, a2, 0);
  *result = off_100115F80;
  *(result + 1208) = 0u;
  *(result + 1200) = result + 1208;
  *(result + 1524) = 2;
  sub_10008C130(result + 1992);
  *(result + 2212) = 0;
  *(result + 2232) = result + 2232;
  *(result + 2240) = result + 2232;
  *(result + 2248) = 0;
  *(result + 2320) = 0u;
  *(result + 2336) = 0u;
  *(result + 2352) = 0u;
  *(result + 2372) = 0;
  *(result + 2384) = 0u;
  *(result + 2376) = result + 2384;
  v4 = sub_1000CB970((result + 2256));
  *(result + 1520) = 0;
  v6 = sub_10002BB1C(v4, v5);
  if (!v6)
  {
    goto LABEL_44;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_44;
  }

  v7 = (*(*v6 + 360))(v6, "_IapAllowNonClassZeroForVPort");
  *(result + 2368) = v7;
  v9 = sub_10002BB1C(v7, v8);
  if (!v9)
  {
    goto LABEL_44;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_44;
  }

  *(result + 2369) = (*(*v9 + 360))(v9, "_IapAllowFakeAuthV1ForVPort");
  *(result + 2204) = 0;
  *(result + 2208) = -1;
  *(result + 2200) = 0;
  *(result + 2214) = 0;
  *(result + 1272) = 0;
  if (!a2)
  {
    goto LABEL_44;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_44;
  }

  v10 = sub_100018DC0(a2);
  *(result + 1408) = 0u;
  *(result + 1424) = 0u;
  *(result + 1440) = 0;
  pthread_mutex_init((result + 1280), 0);
  pthread_mutex_init((result + 1344), 0);
  v11 = pthread_mutex_init((result + 1448), 0);
  v12 = sub_100065198(v11);
  if (!v12)
  {
    goto LABEL_44;
  }

  if ((v12 & 7) != 0)
  {
    goto LABEL_44;
  }

  v13 = sub_1000929D4(v12, 0, 19885, a2);
  v14 = sub_100065198(v13);
  if (!v14 || (v14 & 7) != 0)
  {
    goto LABEL_44;
  }

  *(result + 1516) = dword_10012CE80;
  if (v10)
  {
    if ((v10 & 7) != 0)
    {
      goto LABEL_44;
    }

    if ((*(*v10 + 272))(v10))
    {
      *(result + 1516) &= *(v10 + 204);
    }
  }

  sub_1000651C8(a2, v15);
  if (!v16)
  {
    goto LABEL_44;
  }

  v17 = v16;
  if ((v16 & 7) != 0)
  {
    goto LABEL_44;
  }

  v18 = sub_10006274C(v16, 5000, a2, 0);
  *(result + 1980) = v18;
  if (v18 == -1)
  {
    __break(0x5518u);
    goto LABEL_44;
  }

  sub_1000629DC(v17, v18);
  sub_1000743E4(result, 0);
  *(result + 1272) = 0;
  sub_100074588(result);
  sub_100074630(result, 0, 1, 1);
  *&v19 = 0;
  *(result + 1536) = 0x6400000019;
  *(result + 1544) = v19;
  *(result + 1560) = *(result + 8);
  *(result + 1584) = 0;
  *(result + 1528) = 0;
  *(result + 1532) = 0;
  *(result + 1512) = 0;
  *(result + 1192) = 0;
  v20 = sub_10007478C(result + 1992);
  if (*(result + 2343) < 0)
  {
    v22 = *(result + 2320);
    if (!v22)
    {
      goto LABEL_44;
    }

    *v22 = 0;
    *(result + 2328) = 0;
  }

  else
  {
    *(result + 2320) = 0;
    *(result + 2343) = 0;
  }

  if (*(result + 2367) < 0)
  {
    v23 = *(result + 2344);
    if (!v23)
    {
      goto LABEL_44;
    }

    *v23 = 0;
    *(result + 2352) = 0;
  }

  else
  {
    *(result + 2344) = 0;
    *(result + 2367) = 0;
  }

  v24 = *(result + 8);
  if (v24)
  {
    if ((v24 & 7) == 0)
    {
      *(v24 + 1992) = 0;
      v25 = sub_100052234(v20, v21);
      if (v25)
      {
        if ((v25 & 7) == 0)
        {
          v26 = (*(*v25 + 16))(v25, result);
          v28 = sub_100048620(v26, v27);
          if (v28)
          {
            if ((v28 & 7) == 0)
            {
              v29 = (*(*v28 + 16))(v28, result);
              v31 = sub_10004B1AC(v29, v30);
              if (v31)
              {
                if ((v31 & 7) == 0)
                {
                  v32 = (*(*v31 + 16))(v31, result);
                  v34 = sub_10004AB10(v32, v33);
                  if (v34)
                  {
                    if ((v34 & 7) == 0)
                    {
                      v35 = (*(*v34 + 16))(v34, result);
                      v37 = sub_1000D5ED0(v35, v36);
                      if (v37)
                      {
                        if ((v37 & 7) == 0)
                        {
                          v38 = (*(*v37 + 16))(v37, result);
                          v40 = sub_10002DDA4(v38, v39);
                          if (v40)
                          {
                            if ((v40 & 7) == 0)
                            {
                              (*(*v40 + 16))(v40, result);
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
      }
    }
  }

LABEL_44:
  __break(0x5516u);
}

void sub_1000743E4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    v3 = a2;
    *(result + 1968) = 0;
    *(result + 1976) = 0;
    *(result + 1978) = 0;
    *(result + 1984) = 0;
    sub_1000651C8(*(result + 8), a2);
    if (v4)
    {
      if ((v4 & 7) != 0)
      {
        goto LABEL_27;
      }

      sub_1000629DC(v4, *(result + 1980));
    }

    v5 = 0;
    *(result + 1662) = -1;
    *(result + 1664) = -1;
    do
    {
      if (v5 > ~(result + 1666))
      {
        __break(0x5513u);
        goto LABEL_27;
      }

      *(result + v5 + 1666) = -1;
      v5 += 2;
    }

    while (v5 != 30);
    *(result + 1656) = -1;
    *(result + 1660) = -1;
    *(result + 1592) = 0;
    *(result + 1696) = 0;
    *(result + 1760) = 0;
    *(result + 1824) = 0;
    *(result + 1888) = 0;
    *(result + 1952) = &_mh_execute_header;
    *(result + 1964) = 0;
    *(result + 1960) = 0;
    v6 = *(result + 8);
    if (v6)
    {
      if ((v6 & 7) == 0)
      {
        sub_10005BF5C(v6, (result + 1592));
        v7 = *(result + 8);
        if (v7)
        {
          if ((v7 & 7) == 0)
          {
            v8 = sub_100018DC0(v7);
            if (!v8)
            {
              return;
            }

            v9 = v8;
            if ((v8 & 7) == 0)
            {
              (*(*v8 + 144))(v8, 1024);
              if (!v3)
              {
                return;
              }

              v10 = *(result + 8);
              if (v10)
              {
                if ((v10 & 7) == 0)
                {
                  v11 = sub_10005BDFC(v10);
                  if (v11 != v11)
                  {
                    goto LABEL_28;
                  }

                  if (v11 == -1)
                  {
                    v12 = 16;
                  }

                  else
                  {
                    v12 = v11;
                  }

                  sub_100065778(result, v9, 7u, v12);
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  __break(0x5516u);
LABEL_28:
  __break(0x550Au);
}

void sub_100074588(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 1200);
    v5 = v2;
    v3 = result + 1208;
    if (v2 == result + 1208)
    {
LABEL_10:
      sub_100007DB0(result + 1200);
      return;
    }

    while (v2 && (v2 & 7) == 0)
    {
      v4 = *(v2 + 40);
      if (v4)
      {
        if ((v4 & 7) == 0)
        {
          sub_100089F40(v4);
          operator delete();
        }

        break;
      }

      sub_100007D44(&v5);
      v2 = v5;
      if (v5 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  __break(0x5516u);
}

void sub_100074630(uint64_t result, void *a2, int a3, int a4)
{
  if (result && (result & 7) == 0)
  {
    pthread_mutex_lock((result + 1448));
    if (*(result + 1408) && a3)
    {
      *(result + 1440) = 0;
      *(result + 1408) = 0u;
      *(result + 1424) = 0u;
    }

    pthread_mutex_unlock((result + 1448));
    v12 = 20;
      ;
    }

    v12 = 23;
    do
    {
      v8 = sub_10006733C(result, 0xFFFFFFFFLL, &v12, 0, 0xFFFFLL);
    }

    while (!v8);
    if (!a2)
    {
      goto LABEL_19;
    }

    v9 = sub_100065198(v8);
    if (v9)
    {
      if ((v9 & 7) == 0)
      {
        v10 = sub_100058EBC(v9, a2);
        if (v10 == -2)
        {
          *(result + 1416) = -2;
LABEL_19:
          sub_100074AEC(result, 0, 0);
          return;
        }

        if (!a4)
        {
          goto LABEL_19;
        }

        v11 = sub_100065198(v10);
        if (v11 && (v11 & 7) == 0)
        {
          sub_100058CA0(v11, a2, 0);
          goto LABEL_19;
        }
      }
    }
  }

  __break(0x5516u);
}

uint64_t sub_100074750(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 1533) = 0;
    *(result + 1536) = 0x6400000019;
    *(result + 1544) = a2;
    *(result + 1552) = 0;
    *(result + 1560) = *(result + 8);
    *(result + 1584) = 0;
  }

  return result;
}

uint64_t sub_10007478C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10008C6A8(result);
    result = sub_10008C80C(v1);
    v2 = *(v1 + 168);
    if (*(v1 + 176) >= v2)
    {
      *(v1 + 176) = v2;
      *(v1 + 192) = xmmword_1000EF1C0;
      *(v1 + 64) = 0;
      *(v1 + 120) = 0;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

void sub_1000747F4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100073F2C(result, a2);
  }
}

void sub_100074808(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (*result = off_100115F80, (v3 = sub_100052234(result, a2)) == 0) || (v3 & 7) != 0 || (v4 = (*(*v3 + 24))(v3, result), (v6 = sub_100048620(v4, v5)) == 0) || (v6 & 7) != 0 || (v7 = (*(*v6 + 24))(v6, result), (v9 = sub_10004B1AC(v7, v8)) == 0) || (v9 & 7) != 0 || (v10 = (*(*v9 + 24))(v9, result), (v12 = sub_10004AB10(v10, v11)) == 0) || (v12 & 7) != 0 || (v13 = (*(*v12 + 24))(v12, result), (v15 = sub_1000D5ED0(v13, v14)) == 0) || (v15 & 7) != 0 || (v16 = (*(*v15 + 24))(v15, result), (v18 = sub_10002DDA4(v16, v17)) == 0) || (v18 & 7) != 0 || (v19 = (*(*v18 + 24))(v18, result), (v20 = sub_100065198(v19)) == 0) || (v20 & 7) != 0 || (sub_1000929D4(v20, 0, 0, *(result + 8)), sub_100074AEC(result, 0, 1), sub_100074C54(result, 0xFFFFLL), pthread_mutex_destroy((result + 1448)), pthread_mutex_destroy((result + 1344)), pthread_mutex_destroy((result + 1280)), sub_1000651C8(*(result + 8), v21), !v22) || (v23 = v22, (v22 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000629DC(v22, *(result + 1980));
    sub_100060C50(v23, *(result + 1980));
    *(result + 1980) = -1;
    sub_100074630(result, 0, 1, 1);
    *(result + 1528) = 0;
    *(result + 1532) = 0;
    pthread_mutex_destroy((result + 2256));
    sub_1000089F8(result + 2376);
    if (*(result + 2367) < 0)
    {
      operator delete(*(result + 2344));
    }

    if (*(result + 2343) < 0)
    {
      operator delete(*(result + 2320));
    }

    sub_1000187F0((result + 2232));
    v25 = result + 2160;
    sub_10008E050(&v25);
    sub_1000089F8(result + 2128);
    sub_1000089F8(result + 2088);
    v25 = result + 2064;
    sub_100007F60(&v25);
    v25 = result + 2016;
    sub_100007F60(&v25);
    v25 = result + 1992;
    sub_100007F60(&v25);
    sub_1000089F8(result + 1200);
    sub_10006522C(result, v24);
  }
}

void sub_100074AEC(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_42;
  }

  v6 = pthread_mutex_lock((result + 2256));
  while (*(result + 2248))
  {
    v9 = *(result + 2240);
    if (v9)
    {
      v10 = (*(result + 2240) & 7) == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_42;
    }

    v11 = *(v9 + 16);
    if (a2)
    {
      v12 = sub_100065198(v6);
      if (!v12 || (v12 & 7) != 0)
      {
        goto LABEL_42;
      }

      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_42;
      }

      v14 = *(v11 + 16);
      if ((v14 & 7) != 0)
      {
        goto LABEL_42;
      }

      v15 = sub_1000949E0(v12, v14, 0);
      v16 = sub_100065198(v15);
      if (!v16)
      {
        goto LABEL_42;
      }

      if ((v16 & 7) != 0)
      {
        goto LABEL_42;
      }

      v17 = *(v11 + 16);
      if ((v17 & 7) != 0)
      {
        goto LABEL_42;
      }

      v18 = sub_1000933B0(v16, v17);
      if (v15)
      {
        if (v18 == 56 || v18 == 19)
        {
          if ((v15 & 7) != 0)
          {
            goto LABEL_42;
          }

          if ((sub_10005BF90(v15) & 1) == 0)
          {
            sub_10008505C(v15, 2);
          }
        }
      }

      v20 = *(v11 + 16);
      if (!v20 || (v20 & 7) != 0)
      {
        goto LABEL_42;
      }

      sub_1000BA010(v20, 0);
    }

    sub_10008D204(result, v11, v7, v8, a3);
  }

  pthread_mutex_unlock((result + 2256));
  if (a3)
  {
    v21 = *(result + 8);
    if (v21 && (v21 & 7) == 0)
    {

      sub_10005B0F0(v21);
      return;
    }

LABEL_42:
    __break(0x5516u);
  }
}

uint64_t sub_100074C54(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    do
    {
      v9 = -1;
      v10 = 0;
      result = sub_10006733C(v2, 0xFFFFFFFFLL, &v9, &v10, a2);
      v4 = result;
      if (!result)
      {
        result = v10;
        if (v10)
        {
          v5 = v9 - 93;
          v6 = v5 > 0x19;
          v7 = (1 << v5) & 0x3000001;
          if (!v6 && v7 != 0)
          {
            operator delete[]();
          }
        }
      }
    }

    while (!v4);
  }

  return result;
}

void sub_100074D20(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100074808(result, a2);
  }
}

uint64_t sub_100074D34(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    sub_100074808(result, a2);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100074D7C(uint64_t result, unsigned __int8 a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = a2 >> 4;
  if (v2 == 2)
  {
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v3 = 1;
      goto LABEL_11;
    }

LABEL_15:
    __break(0x5516u);
    return result;
  }

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v3 = 0;
LABEL_11:

  return sub_100094CA0(result, v3);
}

void sub_100074DFC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_192;
  }

  v4 = *(a2 + 128);
  if (!*(a2 + 128))
  {
    return;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_192;
  }

  v6 = *v5;
  if (v6 >= 0x20)
  {
    goto LABEL_193;
  }

  v7 = *(a2 + 8);
  v8 = sub_100065198(result);
  if (!v8)
  {
    goto LABEL_192;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_192;
  }

  v9 = sub_100092B58(v8, v7);
  v10 = sub_100065198(v9);
  if (!v10)
  {
    goto LABEL_192;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_192;
  }

  v11 = sub_1000933B0(v10, v7);
  v12 = v11;
  v13 = sub_100065198(v11);
  if (!v13 || (v13 & 7) != 0)
  {
    goto LABEL_192;
  }

  v14 = sub_1000592F0(v13, v7);
  v91 = -21846;
  v15 = *(result + 1588);
  v83 = __CFADD__(v15, 1);
  v16 = v15 + 1;
  if (v83)
  {
LABEL_194:
    __break(0x5500u);
    goto LABEL_195;
  }

  v17 = v14;
  *(result + 1588) = v16;
  pthread_mutex_lock((result + 1280));
  if (sub_10006825C(v7))
  {
    v91 = 112;
    sub_10006733C(result, 0xFFFFFFFFLL, &v91, 0, 0xFFFFLL);
  }

  v91 = 115;
  sub_10006733C(result, 0xFFFFFFFFLL, &v91, 0, 0xFFFFLL);
  pthread_mutex_unlock((result + 1280));
  *(result + 2200) = 0;
  sub_10007478C(result + 1992);
  sub_1000743E4(result, 1);
  *(result + 1272) = 0;
  sub_100074588(result);
  v18 = *(result + 8);
  if (!v18)
  {
    goto LABEL_192;
  }

  if ((v18 & 7) != 0)
  {
    goto LABEL_192;
  }

  v19 = sub_10005BD80(v18);
  v21 = sub_1000CC7A0(v19, v20);
  if (!v21)
  {
    goto LABEL_192;
  }

  v22 = v21;
  if ((v21 & 7) != 0)
  {
    goto LABEL_192;
  }

  v23 = sub_1000CE018(*(result + 8));
  (*(*v22 + 136))(v22, v23);
  v91 = 116;
  sub_10006733C(result, 0xFFFFFFFFLL, &v91, 0, 0xFFFFLL);
  sub_100075A08(result);
  v91 = 0;
  sub_10006733C(result, 0xFFFFFFFFLL, &v91, 0, 0xFFFFLL);
  v24 = sub_100075A48(result, 0, 0);
  v25 = sub_100065198(v24);
  if (!v25 || (v25 & 7) != 0)
  {
    goto LABEL_192;
  }

  sub_100059100(v25, v7);
  sub_100074630(result, *(a2 + 8), 1, 1);
  *(result + 1416) = -1;
  sub_100075B90(result, v7, -1);
  v27 = sub_10007692C(result, v26, 1);
  if (v17)
  {
    v28 = sub_100065198(v27);
    if (!v28)
    {
      goto LABEL_192;
    }

    if ((v28 & 7) != 0)
    {
      goto LABEL_192;
    }

    v29 = sub_100092B58(v28, v17);
    v30 = sub_100065198(v29);
    if (!v30)
    {
      goto LABEL_192;
    }

    if ((v30 & 7) != 0)
    {
      goto LABEL_192;
    }

    v31 = sub_100092C44(v30, v17);
    v32 = sub_100065198(v31);
    if (!v32 || (v32 & 7) != 0)
    {
      goto LABEL_192;
    }

    sub_100059100(v32, v17);
    v27 = sub_1000769C0(result, *(result + 8), -1);
    if (v29)
    {
      LOWORD(v87) = 120;
      sub_10006733C(result, 0xFFFFFFFFLL, &v87, 0, 0xFFFFLL);
      v27 = sub_100076A8C(result, *(result + 8), v17, v29);
    }
  }

  v33 = sub_100065198(v27);
  if (!v33 || (v33 & 7) != 0)
  {
LABEL_192:
    __break(0x5516u);
    goto LABEL_193;
  }

  sub_100093338(v33, v7, 1);
  if (sub_100068364(v7))
  {
    v34 = 5;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(result + 2368);
  if (v35 > 1)
  {
    goto LABEL_193;
  }

  v36 = (1 << v6);
  if ((v35 & 1) == 0)
  {
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_192;
    }

    if ((*(*v7 + 272))(v7))
    {
      if ((v6 | 2) != 2)
      {
        v55 = *(result + 8);
        if (!v55 || (v55 & 7) != 0)
        {
          goto LABEL_192;
        }

        if ((sub_10005BFD0(v55) & 1) == 0)
        {
          if (!v56 || (v56 & 7) != 0)
          {
            goto LABEL_192;
          }

          v57 = *(result + 8);
          v58 = (*(*v56 + 392))(v56);
          sub_100076B84(1, v57, v7, v58, 0);
        }

        sub_100076C34(*(result + 8), v7, 0);
        return;
      }

      v6 = 0;
      v36 = 1;
    }
  }

  v37 = *(result + 2212);
  if (v37 > 1)
  {
    goto LABEL_193;
  }

  if ((v37 & 1) == 0)
  {
    v38 = *(result + 8);
    if (!v38 || (v38 & 7) != 0)
    {
      goto LABEL_192;
    }

    if (sub_10005BDFC(v38) == 10)
    {
      goto LABEL_49;
    }

    v40 = *(result + 2368);
    if (v40 > 1)
    {
      goto LABEL_193;
    }

    if ((v40 & 1) == 0)
    {
      v41 = *(result + 8);
      if (!v41 || (v41 & 7) != 0)
      {
        goto LABEL_192;
      }

      if (sub_10005BCA0(v41) && (v6 | 2) != 2)
      {
        v70 = *(result + 8);
        if (!v70 || (v70 & 7) != 0)
        {
          goto LABEL_192;
        }

        if (sub_10005BDFC(v70) <= 31)
        {
          v71 = *(result + 8);
          if (!v71 || (v71 & 7) != 0)
          {
            goto LABEL_192;
          }

          if ((sub_10005BDFC(v71) & 0x80000000) == 0)
          {
            v72 = *(result + 8);
            if (!v72 || (v72 & 7) != 0)
            {
              goto LABEL_192;
            }

            v73 = sub_10005BDFC(v72);
            if (v73 > 0x1F)
            {
LABEL_195:
              __break(0x5514u);
              goto LABEL_196;
            }

            if (((1 << v73) & 0xC1) != 0)
            {
LABEL_49:
              sub_100076E70(result, v39, 1);
            }
          }
        }
      }
    }
  }

  v90 = 0;
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_192;
  }

  v42 = 1;
  if (((*(*v7 + 224))(v7) & 1) == 0 && v6 <= v34 && (*(result + 1516) & v36) != 0)
  {
    if (sub_100076EE4(result, v7, v36, &v90))
    {
      *&v43 = 0xAAAAAAAAAAAAAAAALL;
      *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v88 = v43;
      v89 = v43;
      v87 = v43;
      v44 = ~v36 | 0x2010;
      if (v12 != 1)
      {
        v44 = -1;
      }

      sub_10007702C(result, v7, v44 & v9);
      v45 = v36 | 1;
      v46 = sub_100068364(v7);
      if (!v46)
      {
        goto LABEL_106;
      }

      v47 = *(result + 2368);
      if (v47 <= 1)
      {
        if ((v47 & 1) != 0 || (v46 = (*(*v7 + 272))(v7), (v46 & 1) == 0))
        {
          v45 = v36 | 5;
          if (v6 == 4)
          {
            v48 = sub_100065198(v46);
            if (!v48 || (v48 & 7) != 0)
            {
              goto LABEL_192;
            }

            v46 = sub_1000928E0(v48, 3u);
            if (v46)
            {
              v49 = v46 == v7;
            }

            else
            {
              v49 = 1;
            }

            if (v49)
            {
              v45 = v36 | 0xD;
            }

            else
            {
              v45 = v45;
            }

            if (v49)
            {
              v36 = v36 | 0xC;
            }

            else
            {
              v36 = v36 | 4;
            }
          }

          else
          {
            v36 = v36 | 4;
          }
        }

LABEL_106:
        v59 = sub_100065198(v46);
        if (!v59 || (v59 & 7) != 0)
        {
          goto LABEL_192;
        }

        v60 = (*(*v59 + 144))(v59, *(result + 8), v36);
        if (v60 != v36)
        {
          sub_1000DDEEC(0, 4, "%s:%d setActiveLingoMaskReturn != lingoMask\n");
          return;
        }

        v61 = sub_100065198(v60);
        if (!v61 || (v61 & 7) != 0)
        {
          goto LABEL_192;
        }

        if ((*(*v61 + 160))(v61, *(result + 8), v45) != v45)
        {
          sub_1000DDEEC(0, 4, "%s:%d setAllowedLingoMaskReturn != lingoAllow\n");
          return;
        }

        v62 = *(result + 8);
        if (!v62)
        {
          goto LABEL_192;
        }

        if ((v62 & 7) != 0)
        {
          goto LABEL_192;
        }

        v63 = sub_10005BB24(v62, v6);
        v64 = sub_100065198(v63);
        if (!v64 || (v64 & 7) != 0)
        {
          goto LABEL_192;
        }

        v65 = sub_100092790(v64, *(result + 8), v6);
        if (!v65)
        {
          __break(0x5518u);
          goto LABEL_192;
        }

        v66 = v65;
        if (v6 <= 2)
        {
          v42 = 0;
          v67 = 2;
          v68 = 1;
          v69 = 0;
          if (v6 == 1)
          {
            v68 = 0;
            v67 = 4;
            v42 = 1;
            v69 = 4;
          }

LABEL_141:
          v74 = sub_100065198(v65);
          if (v74 && (v74 & 7) == 0)
          {
            sub_100092EE8(v74, v7, v69);
            if (!qword_10012C6E0)
            {
LABEL_146:
              if ((v66 & 7) == 0)
              {
                (*(*v66 + 80))(v66, 4, 0, v7);
                pthread_mutex_lock((result + 1280));
                v75 = *(result + 8);
                if (v75)
                {
                  if ((v75 & 7) == 0)
                  {
                    v76 = sub_10005BDFC(v75);
                    *(result + 1533) = 0;
                    *(result + 1536) = 0x6400000019;
                    *(result + 1544) = v7;
                    *(result + 1552) = 0;
                    *(result + 1560) = *(result + 8);
                    *(result + 1584) = 0;
                    if (v76 != v76)
                    {
                      goto LABEL_193;
                    }

                    v77 = v76;
                    if (v76 == -1)
                    {
                      v78 = 16;
                    }

                    else
                    {
                      v78 = v76;
                    }

                    if (sub_10006825C(v7) && (v77 == 100 || v77 == -1))
                    {
                      *(result + 1533) = 1;
                      if (sub_1000671A8(result, -1, 115, 0, 2000))
                      {
                        sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1138);
                      }
                    }

                    LODWORD(v87) = 1;
                    DWORD1(v87) = v78;
                    *(&v87 + 1) = v7;
                    LODWORD(v88) = 0;
                    DWORD1(v88) = v36;
                    v80 = *(result + 8);
                    *(&v88 + 1) = v80;
                    v81 = *(result + 1533);
                    if (v81 > 1)
                    {
                      goto LABEL_193;
                    }

                    if (v81)
                    {
                      *(result + 1536) = 0x6400000001;
                      *(result + 1544) = v7;
                      *(result + 1552) = 0;
                      *(result + 1556) = v36;
                      *(result + 1560) = v80;
                    }

                    else
                    {
                      sub_100077384(result, 0, 0, &v87, 48);
                    }

                    v82 = *(result + 1528);
                    if (v82 > 7)
                    {
                      goto LABEL_193;
                    }

                    v83 = v67 < v82 || v82 >= 4;
                    if (v83)
                    {
                      v84 = v68;
                    }

                    else
                    {
                      v84 = 1;
                    }

                    if (v84 == 1)
                    {
                      if (v82 <= 3)
                      {
                        *(result + 1528) = v67;
                        v82 = v67;
                      }

                      if (v42)
                      {
                        if (v82 == 4)
                        {
                          *(result + 1532) = 1;
                        }

                        if (v77 > 15 || v77 == -1)
                        {
                          *(result + 1584) = 1;
                        }

                        else if ((v77 & 0x80000000) == 0 && ((1 << v77) & 0xE400) != 0)
                        {
                          sub_100076E70(result, v79, 1);
                        }

                        LODWORD(v87) = 17;
                        DWORD1(v87) = v78;
                        sub_100077384(result, 0, 0, &v87, 48);
                      }

                      else if (v68)
                      {
                        v85 = *(result + 1588) > 0xCu ? 1 : 800;
                        if (sub_1000671A8(result, -1, 113, 0, v85))
                        {
                          sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1236);
                        }
                      }
                    }

                    v86 = *(result + 8);
                    if (v86 && (v86 & 7) == 0)
                    {
                      sub_10005BB6C(v86, v6);
                      pthread_mutex_unlock((result + 1280));
                      return;
                    }
                  }
                }
              }

              goto LABEL_192;
            }

            if ((qword_10012C6E0 & 7) == 0)
            {
              (*(*qword_10012C6E0 + 8))();
              qword_10012C6E0 = 0;
              goto LABEL_146;
            }
          }

          goto LABEL_192;
        }

        if (v6 != 3)
        {
          if (v6 == 4)
          {
            v65 = sub_10007717C(result, 1u);
          }

          else if (v4 >= 4)
          {
            if (v5 >= 0xFFFFFFFFFFFFFFFDLL)
            {
LABEL_196:
              __break(0x5513u);
              return;
            }

            v68 = 0;
            v69 = 4 * (v5[3] & 1);
            goto LABEL_140;
          }
        }

        v68 = 0;
        v69 = 0;
LABEL_140:
        v67 = 4;
        goto LABEL_141;
      }

LABEL_193:
      __break(0x550Au);
      goto LABEL_194;
    }

    LOBYTE(v42) = 0;
  }

  sub_100076C34(*(result + 8), v7, v9);
  if (v90)
  {
    v50 = sub_100068BB4(v6);
    sub_10008DD60(1, v7, v50);
    return;
  }

  *(result + 2372) = 0;
  *&v89 = 0xAAAAAAAAAAAAAAAALL;
  *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v87) = 5;
  if (v42)
  {
    if ((v6 > 0xE || (*(result + 1516) & v36) != 0) && !(*(*v7 + 224))(v7))
    {
      goto LABEL_90;
    }

    v51 = 4;
  }

  else
  {
    v51 = 6;
  }

  LODWORD(v87) = v51;
LABEL_90:
  v52 = *(result + 8);
  if (!v52 || (v52 & 7) != 0)
  {
    goto LABEL_192;
  }

  v53 = sub_10005BDFC(v52);
  if (v53 != v53)
  {
    goto LABEL_193;
  }

  if (v53 == -1)
  {
    v54 = 16;
  }

  else
  {
    v54 = v53;
  }

  DWORD1(v87) = v54;
  *(&v87 + 1) = v7;
  LODWORD(v88) = 0;
  DWORD1(v88) = v36;
  *(&v88 + 1) = *(result + 8);
  sub_100077384(result, 0, 0, &v87, 48);
  sub_1000DDEEC(0, 4, "%s:%d Unsupported Lingo received retVal=%xh\n");
}

void sub_100075A08(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(a1 + 2201);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return;
  }

  if (v1)
  {
    *(a1 + 2201) = 0;
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &stru_100116090);
  }
}

uint64_t sub_100075A48(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  v7 = sub_10005BC54(result);
  result = *(v3 + 8);
  if (!result)
  {
    goto LABEL_22;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = sub_100018DC0(result);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_22;
  }

  v8 = result;
  result = sub_1000C05AC(v7 + 624, a2, 0);
  if (!v8 || (a3 & 1) != 0)
  {
    return result;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_22;
  }

  result = (*(*v8 + 272))(v8);
  if (!result)
  {
    return result;
  }

  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    return result;
  }

  return sub_1000B9F4C(result, a2);
}

uint64_t sub_100075B90(uint64_t a1, void *a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_237;
  }

  v4 = a2;
  if (!a2)
  {
    sub_1000E1D34();
  }

  v6 = sub_100065198(a1);
  if (!v6)
  {
    goto LABEL_237;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_237;
  }

  v7 = sub_1000932FC(v6, v4);
  v8 = v7;
  v9 = sub_100065198(v7);
  if (!v9)
  {
    goto LABEL_237;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_237;
  }

  v84 = sub_100092B58(v9, v4);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v87 = v10;
  v88 = v10;
  v86 = v10;
  v11 = *(a1 + 8);
  if (!v11)
  {
    goto LABEL_237;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_237;
  }

  v12 = sub_10005BC54(v11);
  v13 = sub_100067278();
  v14 = *(a1 + 8);
  if (!v14 || (v14 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = sub_10005BDFC(v14);
  LODWORD(v86) = 25;
  if (v15 != v15)
  {
    goto LABEL_238;
  }

  v17 = v15;
  v18 = v15 == -1 ? 16 : v15;
  DWORD1(v86) = v18;
  *(&v86 + 1) = v4;
  *&v87 = __PAIR64__(v84, v8);
  *(&v87 + 1) = *(a1 + 8);
  v19 = *(a1 + 1416);
  if (((v19 + 8) | (a3 + 8)) > 0xF)
  {
    goto LABEL_238;
  }

  if (v19 != a3)
  {
    *(a1 + 1447) = 0;
  }

  if (a3 && v19 > 0xFFFFFFFD)
  {
LABEL_21:
    v20 = 7;
    goto LABEL_120;
  }

  *(a1 + 1416) = a3;
  if (a3 <= 2)
  {
    if (!a3)
    {
      if (v19 - 6 <= 0xFFFFFFFC)
      {
        pthread_mutex_lock((a1 + 1448));
        v28 = *(a1 + 1408);
        if (v28)
        {
          if ((v28 & 3) == 0)
          {
            sub_100059F4C(v28);
            operator delete();
          }

          goto LABEL_237;
        }

        v15 = pthread_mutex_unlock((a1 + 1448));
        v22 = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v20 = 0;
        a3 = 0;
        *(a1 + 1438) = 0;
        *(a1 + 1424) = 0;
        *(a1 + 1442) = 0;
        goto LABEL_173;
      }

      a3 = 0;
      goto LABEL_21;
    }

    if (a3 == 2)
    {
      v22 = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v20 = 7;
      goto LABEL_173;
    }

    goto LABEL_43;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 == 6)
      {
        LODWORD(v86) = 12;
        v21 = sub_100065198(v15);
        if (!v21 || (v21 & 7) != 0)
        {
          goto LABEL_237;
        }

        v15 = sub_100092F68(v21, v4);
        v22 = 0;
        LOBYTE(v23) = (~v15 & 0xC) == 0;
        v24 = 1;
        *(a1 + 1532) = 1;
        v20 = 6;
        goto LABEL_173;
      }

LABEL_43:
      v20 = 7;
      if ((a3 - 3) > 2)
      {
        goto LABEL_120;
      }

      v23 = 0;
      a3 = 5;
      goto LABEL_112;
    }

    v27 = *(a1 + 1447);
    if (v27 > 1)
    {
      goto LABEL_238;
    }

    if (v27)
    {
      v20 = 7;
    }

    else
    {
      LODWORD(v86) = 11;
      v20 = 4;
    }

    v85 = 0x7FFFFFFF;
    v30 = *(a1 + 1408);
    if (v30)
    {
      if ((v30 & 3) != 0)
      {
        goto LABEL_237;
      }

      v30 = sub_10005A2E0(v30, &v85);
    }

    v31 = *(a1 + 2212);
    if (v31 > 1)
    {
      goto LABEL_238;
    }

    if (v31)
    {
      goto LABEL_69;
    }

    v32 = sub_100065198(v30);
    if (!v32 || (v32 & 7) != 0)
    {
      goto LABEL_237;
    }

    v33 = sub_1000932FC(v32, v4);
    if (!sub_100078FD4(v33, v84))
    {
      goto LABEL_69;
    }

    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_238;
    }

    if (v85)
    {
      v34 = *(a1 + 8);
      if (!v34 || (v34 & 7) != 0)
      {
        goto LABEL_237;
      }

      if (sub_10005BCA0(v34))
      {
        v35 = *(a1 + 2368);
        if (v35 > 1)
        {
          goto LABEL_238;
        }

        if (v35)
        {
          v36 = 58561;
        }

        else
        {
          if ((v85 & 0x80000000) != 0)
          {
            goto LABEL_238;
          }

          if (v85)
          {
            v36 = 0;
          }

          else
          {
            v36 = 58561;
          }
        }
      }

      else
      {
        v36 = 58368;
      }
    }

    else
    {
LABEL_69:
      v36 = 0;
    }

    v37 = *(a1 + 8);
    if (!v37 || (v37 & 7) != 0)
    {
      goto LABEL_237;
    }

    result = sub_10005BDFC(v37);
    if (result > 31)
    {
      goto LABEL_80;
    }

    v40 = *(a1 + 8);
    if (!v40 || (v40 & 7) != 0)
    {
      goto LABEL_237;
    }

    result = sub_10005BDFC(v40);
    if ((result & 0x80000000) != 0)
    {
LABEL_80:
      v42 = 0;
    }

    else
    {
      v41 = *(a1 + 8);
      if (!v41 || (v41 & 7) != 0)
      {
        goto LABEL_237;
      }

      result = sub_10005BDFC(v41);
      if (result > 0x1F)
      {
        __break(0x5514u);
        return result;
      }

      v42 = 1 << result;
    }

    if ((v42 & v36) != 0)
    {
      result = sub_100076E70(a1, v39, 1);
    }

    v43 = sub_100046A8C(result, v39);
    if (!v43 || (v43 & 7) != 0)
    {
      goto LABEL_237;
    }

    v15 = (*(*v43 + 176))(v43);
    if (v15)
    {
      v44 = sub_100065198(v15);
      if (!v44 || (v44 & 7) != 0)
      {
        goto LABEL_237;
      }

      v15 = sub_1000932FC(v44, v4);
      if (v15 != 3)
      {
        v45 = v15;
        if (v15 != 15 && v15 != 70)
        {
          v46 = sub_100065198(v15);
          if (!v46 || (v46 & 7) != 0)
          {
            goto LABEL_237;
          }

          v47 = sub_1000933B0(v46, v4);
          if (v47 != 56)
          {
            goto LABEL_99;
          }

          v48 = sub_100065198(v47);
          if (!v48 || (v48 & 7) != 0)
          {
            goto LABEL_237;
          }

          if (sub_1000933B0(v48, v4) == 56 && (*(a1 + 2197) & 0x401) == 0)
          {
LABEL_99:
            if (!v12 || (v12 & 7) != 0)
            {
              goto LABEL_237;
            }

            sub_1000BF8B8(v12 + 16, 1, 0);
          }

          if (!v12 || (v12 & 7) != 0)
          {
            goto LABEL_237;
          }

          v15 = sub_1000BF4B0(v12 + 16, 1);
          if (v45 == 16)
          {
            v15 = sub_1000BF518(v12 + 16, 1, 1);
          }
        }
      }
    }

    if ((*(a1 + 1273) & 0x10) != 0)
    {
      if (!v12)
      {
        goto LABEL_237;
      }

      if ((v12 & 7) != 0)
      {
        goto LABEL_237;
      }

      v49 = *(v12 + 872);
      if (!v49 || (v49 & 7) != 0)
      {
        goto LABEL_237;
      }

      v15 = sub_10007D8C0(*(a1 + 8), *(v49 + 16) != 0);
    }

    v23 = 0;
    a3 = 4;
LABEL_112:
    v50 = *(a1 + 1420);
    v51 = v13 >= v50;
    v52 = v13 - v50;
    if (!v51)
    {
      goto LABEL_239;
    }

    if (*(a1 + 1438) <= *(a1 + 1439) && v52 < *(a1 + 1424))
    {
      v22 = 0;
      if (v23)
      {
        v20 = 3;
      }

      v24 = v23;
      goto LABEL_173;
    }

    goto LABEL_119;
  }

  v25 = *(a1 + 1438);
  if (v25 == 255)
  {
LABEL_240:
    __break(0x5507u);
    goto LABEL_241;
  }

  v26 = v25 + 1;
  *(a1 + 1438) = v26;
  if (*(a1 + 1439) >= v26)
  {
    if (!*(a1 + 1424))
    {
      *(a1 + 1420) = v13;
      if (*(a1 + 1440) == 1)
      {
        v29 = 34000;
      }

      else
      {
        v29 = 270000;
      }

      *(a1 + 1424) = v29;
    }

    *(a1 + 1443) = 0;
    *(a1 + 1445) = 0;
    v23 = 1;
    v20 = 7;
    a3 = 3;
    goto LABEL_112;
  }

  v20 = 7;
LABEL_119:
  a3 = -2;
LABEL_120:
  v53 = sub_100046A8C(v15, v16);
  if (!v53 || (v53 & 7) != 0)
  {
    goto LABEL_237;
  }

  if ((*(*v53 + 176))(v53))
  {
    if (!v12 || (v12 & 7) != 0)
    {
      goto LABEL_237;
    }

    sub_1000BF4B0(v12 + 16, 0);
  }

  pthread_mutex_lock((a1 + 1448));
  v54 = *(a1 + 1408);
  if (v54)
  {
    if ((v54 & 3) == 0)
    {
      sub_100059F4C(v54);
      operator delete();
    }

    goto LABEL_237;
  }

  pthread_mutex_unlock((a1 + 1448));
  sub_100075A48(a1, 0, 0);
  if (!v12)
  {
    goto LABEL_237;
  }

  if ((v12 & 7) != 0)
  {
    goto LABEL_237;
  }

  v55 = sub_1000C05AC(v12 + 720, 0, 0);
  v57 = sub_10004B1AC(v55, v56);
  if (!v57 || (v57 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v57 + 744))(v57);
  if (v15)
  {
    goto LABEL_134;
  }

  v59 = sub_10004B1AC(v15, v58);
  if (!v59 || (v59 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v59 + 752))(v59);
  if (!v15)
  {
    goto LABEL_141;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v4 + 208))(v4);
  if (v15 == 1)
  {
LABEL_134:
    LOBYTE(v23) = 0;
    if (v19 == 6)
    {
      a3 = 6;
      v24 = 1;
      v22 = 2;
    }

    else
    {
      LODWORD(v86) = 12;
      v20 = 6;
      v24 = 1;
      v22 = 2;
      a3 = 6;
    }
  }

  else
  {
LABEL_141:
    if (a3 == -2)
    {
      v61 = -2;
    }

    else
    {
      v61 = -1;
    }

    if (v19 + 2 <= 8 && (v24 = 1, ((1 << (v19 + 2)) & 0x103) != 0))
    {
      LOBYTE(v23) = 0;
    }

    else
    {
      if (a3 == -2)
      {
        *(a1 + 1420) = v13;
        v85 = 0;
        v62 = IapAuthRandomNumber();
        if (v85)
        {
LABEL_241:
          syslog(3, "%s:%d IapAuthRandomNumber returned %d, abort");
LABEL_242:
          sub_1000E1DF4();
        }

        *(a1 + 1424) = v62 % 0x1D4C0 + 180000;
        v63 = *(a1 + 2368);
        if (v63 > 1)
        {
          goto LABEL_238;
        }

        if ((v63 & 1) == 0)
        {
          if ((v4 & 7) != 0)
          {
            goto LABEL_237;
          }

          if ((*(*v4 + 272))(v4))
          {
            v64 = *(a1 + 8);
            if (!v64 || (v64 & 7) != 0)
            {
              goto LABEL_237;
            }

            if ((sub_10005BFD0(v64) & 1) == 0)
            {
              if (!v65 || (v65 & 7) != 0)
              {
                goto LABEL_237;
              }

              v66 = *(a1 + 8);
              v67 = (*(*v65 + 392))(v65);
              sub_100076B84(1, v66, v4, v67, 0);
            }
          }
        }
      }

      v68 = sub_10007692C(a1, v60, 1);
      if (*(a1 + 1512) > 1u)
      {
        goto LABEL_238;
      }

      if (!*(a1 + 1512) || *(a1 + 1515) >= 0x40u)
      {
        v69 = *(a1 + 1528);
        if (v69 > 7)
        {
          goto LABEL_238;
        }

        if (v69 == 5 || v69 == 3)
        {
          *(a1 + 1528) = 4;
          v70 = *(a1 + 1532);
          if (v70 > 1)
          {
            goto LABEL_238;
          }

          if ((v70 & 1) == 0)
          {
            LODWORD(v86) = 17;
            v68 = sub_100077384(a1, 0, 0, &v86, 48);
            *(a1 + 1532) = 1;
          }
        }
      }

      LODWORD(v86) = 13;
      v71 = sub_100065198(v68);
      if (!v71 || (v71 & 7) != 0)
      {
        goto LABEL_237;
      }

      v15 = sub_100093438(v71, v4);
      LOBYTE(v23) = 0;
      v20 = -1;
      v24 = 1;
    }

    v22 = 2;
    a3 = v61;
  }

LABEL_173:
  *(a1 + 1416) = a3;
  v72 = sub_100065198(v15);
  if (!v72 || (v72 & 7) != 0)
  {
    goto LABEL_237;
  }

  v73 = sub_100058CA0(v72, v4, a3);
  if (v24)
  {
    v74 = sub_100065198(v73);
    if (!v74 || (v74 & 7) != 0)
    {
      goto LABEL_237;
    }

    sub_100092FE4(v74, v4, 0, v23);
  }

  if (v20 != 7)
  {
    v75 = sub_100065198(v73);
    if (!v75 || (v75 & 7) != 0)
    {
      goto LABEL_237;
    }

    (*(*v75 + 176))(v75, 64, v20, v4, *(a1 + 8), 0);
    if ((v84 & 0x400) != 0)
    {
      sub_10006B678(64, v20, *(a1 + 8));
    }
  }

  if (v86 > 0x1F)
  {
    goto LABEL_238;
  }

  if (v86 != 25)
  {
    sub_100077384(a1, 0, 0, &v86, 48);
    pthread_mutex_lock((a1 + 1448));
    *(a1 + 1447) = 1;
    if (v86 <= 0x1F)
    {
      if (v86 != 11)
      {
        goto LABEL_194;
      }

      v76 = *(a1 + 1528);
      if (v76 > 7)
      {
        goto LABEL_238;
      }

      if (v76 > 3 || (v77 = *(a1 + 1440), !*(a1 + 1440)))
      {
LABEL_194:
        pthread_mutex_unlock((a1 + 1448));
        goto LABEL_195;
      }

      if (v77 != 2)
      {
        if (v77 != 1)
        {
          syslog(3, "CIapLingoGeneral::SetAuthenticationPhase invalid authen major version: %d\n");
          goto LABEL_242;
        }

        goto LABEL_221;
      }

      v78 = *(a1 + 1408);
      if (!v78)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::SetAuthenticationPhase m_PortAuthenState.pAuthenCert==NULL\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9504);
        v22 = 2;
        goto LABEL_215;
      }

      v85 = 0x7FFFFFFF;
      if ((v78 & 3) != 0)
      {
        goto LABEL_237;
      }

      v79 = sub_10005A2E0(v78, &v85);
      v22 = v79;
      v80 = v85;
      if (v79)
      {
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_238;
        }
      }

      else
      {
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_238;
        }

        if (v85 <= 0xA)
        {
LABEL_219:
          if (v80 <= 0xA && ((1 << v80) & 0x671) != 0)
          {
LABEL_221:
            pthread_mutex_unlock((a1 + 1448));
            *(a1 + 1528) = 5;
            goto LABEL_222;
          }

          if (v17 < 0x20 && ((1 << v17) & 0xE400) != 0)
          {
            if ((v4 & 7) == 0)
            {
              v81 = (*(*v4 + 224))(v4);
              if ((v81 & 1) == 0)
              {
                v82 = sub_100065198(v81);
                if (!v82 || (v82 & 7) != 0)
                {
                  goto LABEL_237;
                }

                if (sub_1000933B0(v82, v4) != 56)
                {
                  sub_100076E70(a1, v83, 1);
                }
              }

              goto LABEL_215;
            }

LABEL_237:
            __break(0x5516u);
            goto LABEL_238;
          }

LABEL_215:
          pthread_mutex_unlock((a1 + 1448));
          *(a1 + 1528) = 4;
          *(a1 + 1532) = 1;
LABEL_222:
          LODWORD(v86) = 17;
          sub_100077384(a1, 0, 0, &v86, 48);
LABEL_195:
          if (a3 == -2)
          {
            LOWORD(v85) = 20;
              ;
            }

            LOWORD(v85) = 23;
              ;
            }

            LODWORD(v86) = 4;
            sub_100077384(a1, 0, 0, &v86, 48);
            if ((v4 & 7) != 0)
            {
              goto LABEL_237;
            }

            if ((*(*v4 + 272))(v4))
            {
              v4 = *(v4 + 40);
              if (!v4 || (v4 & 7) != 0)
              {
                goto LABEL_237;
              }
            }

            (*(*v4 + 112))(v4);
          }

          goto LABEL_205;
        }
      }

      sub_1000DDEEC(0, 4, "%s:%d Status = %u, certClass = %x.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9456, v79, v85);
      v80 = v85;
      if ((v85 & 0x80000000) == 0)
      {
        goto LABEL_219;
      }
    }

LABEL_238:
    __break(0x550Au);
LABEL_239:
    __break(0x5515u);
    goto LABEL_240;
  }

LABEL_205:
  if (v19 == 6 && a3 != 6)
  {
    sub_100074AEC(a1, 0, 0);
  }

  return v22;
}

uint64_t sub_10007692C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (v3 = result, (result & 7) == 0) && ((result = *(result + 8)) != 0 ? (v4 = (result & 7) == 0) : (v4 = 0), v4 && (result = sub_10005BC54(result)) != 0 && (v6 = result, (result & 7) == 0) && ((result = sub_1000BA7B4(result, a3), (v7 = *(v6 + 488)) != 0) ? (v8 = (*(v6 + 488) & 7) == 0) : (v8 = 0), v8)))
  {
    *(v3 + 2203) = *(v7 + 16) != 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000769C0(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return 0;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v6 = sub_10005BB24(result, 0);
  result = sub_100065198(v6);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_100092790(result, v5, 0);
  v7 = result != 0;
  if (!result)
  {
LABEL_13:
    sub_10005BB6C(v5, 0);
    return v7;
  }

  if ((result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
  }

  else if ((a3 + 8) < 0x10)
  {
    *(result + 1416) = a3;
    goto LABEL_13;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_100076A8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_17;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ((result & 7) != 0 || (v8 = sub_10005BB24(result, 0), (result = sub_100065198(v8)) == 0) || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    return result;
  }

  result = sub_100092790(result, v7, 0);
  if (result)
  {
    v9 = result;
    if ((result & 7) == 0)
    {
      LODWORD(result) = a4 & 0xFFFF8000;
      if ((a4 & 0xFFFF8000) == 0)
      {
        v10 = 120;
        sub_10006733C(v9, 0xFFFFFFFFLL, &v10, 0, 0xFFFFLL);
        sub_10007702C(v9, a3, a4);
        return sub_10005BB6C(v7, 0);
      }

LABEL_17:
      sub_1000E23C4(result);
    }

    goto LABEL_18;
  }

  return sub_10005BB6C(v7, 0);
}

uint64_t sub_100076B84(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if (a2)
  {
    if ((a2 & 7) != 0 || (sub_10005BFB8(a2, result), (result = sub_10005BC54(a2)) == 0) || (result & 7) != 0)
    {
      __break(0x5516u);
      return result;
    }

    sub_1000BD2E0(result + 112, 0);
  }

  if (v8)
  {
    v9 = 21;
  }

  else
  {
    v9 = 22;
  }

  return sub_10008DEC4(v9, a2, a3, a4);
}

uint64_t sub_100076C34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  result = sub_100065198(a1);
  v7 = result;
  if (v5)
  {
    goto LABEL_5;
  }

  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = sub_1000949E0(result, a2, 0);
  v5 = result;
  if (result)
  {
LABEL_5:
    if ((v5 & 7) == 0)
    {
      sub_10005BB24(v5, 0);
      result = sub_1000653EC(0, v5);
      if (result)
      {
        v8 = result;
        if ((result & 7) != 0)
        {
          goto LABEL_20;
        }

        sub_10007702C(result, a2, a3);
        sub_100075B90(v8, a2, -1);
      }

      else
      {
        sub_1000DDEEC(0, 4, "%s:%d Cannot get GeneralLingo object pointer. Cannot SetPortIdentifyFail. handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9671, v5);
      }

      result = sub_10005BB6C(v5, 0);
      v9 = 0;
      v10 = (v7 & 7) != 0;
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_20:
    __break(0x5516u);
    return result;
  }

  v10 = 0;
  v9 = 1;
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_20;
  }

  sub_100092EE8(v7, a2, 0);
  sub_100093438(v7, a2);
  sub_100092FE4(v7, a2, 0, 0);
  v11 = *v7;
  if (v9)
  {
    (*(v11 + 16))(v7, a2, 1);
    v12 = *(*v7 + 32);
    v13 = v7;
    v14 = a2;
  }

  else
  {
    (*(v11 + 144))(v7, v5, 1);
    v12 = *(*v7 + 160);
    v13 = v7;
    v14 = v5;
  }

  return v12(v13, v14, 1);
}

uint64_t sub_100076E70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 8)) != 0 ? (v3 = (result & 7) == 0) : (v3 = 0), !v3 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  result = sub_1000BD2E0(result + 112, a3);
  if (result > 0x1F)
  {
LABEL_13:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100076EE4(uint64_t result, uint64_t a2, int a3, _DWORD *a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_28;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        if (((1 << v8) & a3) != 0)
        {
          result = sub_100065198(result);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_29;
          }

          result = sub_1000928E0(result, v8);
          if (result)
          {
            if (result != a2)
            {
              result = *(v4 + 8);
              if (!result)
              {
                goto LABEL_29;
              }

              if ((result & 7) != 0)
              {
                goto LABEL_29;
              }

              v10 = sub_10005BB24(result, v8);
              result = sub_100065198(v10);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_29;
              }

              result = sub_1000926CC(result, v8);
              if (!result)
              {
                __break(0x5518u);
LABEL_28:
                sub_1000E1D34();
              }

              if ((result & 7) != 0)
              {
                goto LABEL_29;
              }

              v11 = (*(*result + 96))(result);
              result = *(v4 + 8);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_29;
              }

              if (v11)
              {
                v12 = 0;
              }

              else
              {
                v12 = 1 << v8;
              }

              v9 |= v12;
              result = sub_10005BB6C(result, v8);
            }
          }
        }

        v8 = (v8 + 1);
      }

      while (v8 != 15);
      if (!a4)
      {
        return v9 == 0;
      }

      if ((a4 & 3) == 0)
      {
        *a4 = v9;
        return v9 == 0;
      }
    }
  }

LABEL_29:
  __break(0x5516u);
  return result;
}

void sub_10007702C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
  }

  else
  {
    v4 = a3;
    if ((a3 & 0xFFFF8000) != 0)
    {
      sub_1000E23C4(a3 & 0xFFFF8000);
    }

    if (a3)
    {
      if (*(result + 8))
      {
        v6 = 1;
        while (1)
        {
          if ((v4 >> v6))
          {
            v7 = *(result + 8);
            if (v7)
            {
              v8 = (*(result + 8) & 7) == 0;
            }

            else
            {
              v8 = 0;
            }

            if (!v8)
            {
              goto LABEL_28;
            }

            v9 = sub_10005BB24(v7, v6);
            v10 = sub_100065198(v9);
            if (!v10 || (v10 & 7) != 0)
            {
              goto LABEL_28;
            }

            v11 = sub_100092790(v10, *(result + 8), v6);
            if (v11)
            {
              if ((v11 & 7) != 0)
              {
                goto LABEL_28;
              }

              (*(*v11 + 80))(v11, 8, 0, a2);
            }

            v12 = *(result + 8);
            if (!v12 || (v12 & 7) != 0)
            {
              goto LABEL_28;
            }

            sub_10005BB6C(v12, v6);
          }

          if (++v6 == 15)
          {
            goto LABEL_24;
          }
        }
      }

      sub_1000DDEEC(0, 4, "%s:%d null handle, lingoesToDetachMask=%xh", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9825, a3);
    }

LABEL_24:

    sub_100085118(result, a2, 0xAu, v4);
  }
}

uint64_t sub_10007717C(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_51;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  v4 = sub_100081574(result);
  v5 = v4;
  result = sub_100065198(v4);
  if (!result)
  {
    goto LABEL_51;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_51;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  v7 = sub_100018DC0(result);
  v8 = sub_100092B58(v6, v7);
  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_51;
  }

  result = sub_10005BDFC(result);
  if (a2 >= 8)
  {
    goto LABEL_52;
  }

  if (v5 == a2)
  {
    return 0;
  }

  if (a2 > 3)
  {
    return 1;
  }

  v9 = result;
  if (a2 == 1 && (v8 & 0x10) == 0 || (a2 & 6) == 2 && (v8 & 0x2000) == 0)
  {
    return 16;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_51;
  }

  v10 = sub_100018DC0(result);
  result = sub_10006825C(v10);
  if (result)
  {
    if (v9 == v9)
    {
      result = 17;
      if (v9 == -1 || v9 == 100)
      {
        return result;
      }

      goto LABEL_26;
    }

LABEL_52:
    __break(0x550Au);
    return result;
  }

LABEL_26:
  if ((v5 - 2) >= 2)
  {
    if (v5)
    {
      sub_100097394(*(v2 + 8), 1);
      goto LABEL_36;
    }
  }

  else
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_51;
    }

    result = sub_100092790(result, *(v2 + 8), 0xDu);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v12 = sub_100095860(result, v11);
        goto LABEL_36;
      }

LABEL_51:
      __break(0x5516u);
      goto LABEL_52;
    }

    sub_1000DDEEC(0, 4, "%s:%d NULL pLingoPushUI\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 19678);
  }

  v12 = 22;
LABEL_36:
  if (a2 - 2 >= 2)
  {
    if (!a2)
    {
      return 0;
    }

    if ((v8 & 0x10) != 0)
    {
      sub_1000976B8(*(v2 + 8));
    }

    goto LABEL_49;
  }

  if ((v8 & 0x2000) != 0)
  {
    result = sub_100065198(v12);
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = sub_100092790(result, *(v2 + 8), 0xDu);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if (a2 == 3)
            {
              v13 = 2;
            }

            else
            {
              v13 = 1;
            }

            sub_100095A24(result, v13);
            goto LABEL_49;
          }
        }
      }
    }

    goto LABEL_51;
  }

LABEL_49:
  if (!v12)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_100077384(uint64_t result, unint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_31;
  }

  if (a2 || a3)
  {
    goto LABEL_25;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_30;
  }

  result = sub_10005BCA0(result);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_30;
  }

  v10 = *a4;
  if (*a4 > 0x1F)
  {
LABEL_31:
    __break(0x550Au);
    return result;
  }

  if (v10 - 2 >= 5)
  {
    if (v10 == 17)
    {
      result = *(v5 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_30;
      }

      result = sub_10005BFD0(result);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    result = *(v5 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_30;
    }

    if ((sub_10005BFD0(result) & 1) == 0)
    {
      result = *(v5 + 8);
      if (!result)
      {
        goto LABEL_30;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_30;
      }

      result = sub_10005B04C(result);
      if (!result)
      {
        goto LABEL_30;
      }

      v11 = result;
      if ((result & 7) != 0)
      {
        goto LABEL_30;
      }

      v12 = *(v5 + 8);
      v13 = (*(*result + 392))(result);
      sub_100076B84(1, v12, v11, v13, 0);
    }
  }

LABEL_25:
  result = *(v5 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  return sub_10005BCC8(result, a2, a3, a4, a5);
}

void sub_100077528(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_373;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_373;
  }

  if (!a2)
  {
    goto LABEL_373;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_373;
  }

  v4 = *(a2 + 8);
  v5 = sub_100065198(result);
  if (!v5)
  {
    goto LABEL_373;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_373;
  }

  v6 = sub_100092B58(v5, v4);
  v183 = v6;
  v7 = sub_100065198(v6);
  if (!v7)
  {
    goto LABEL_373;
  }

  if ((v7 & 7) != 0)
  {
    goto LABEL_373;
  }

  v8 = sub_1000933B0(v7, v4);
  v180 = v8;
  v9 = sub_100065198(v8);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_373;
  }

  v10 = sub_1000592F0(v9, v4);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v196 = v11;
  v197 = v11;
  v195 = v11;
  v194 = -21846;
  v193 = 0;
  v12 = *(result + 1588);
  v13 = __CFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_375;
  }

  v15 = v10;
  *(result + 1588) = v14;
  v16 = *(result + 8);
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_373;
  }

  AccessoryID = sub_10005BDFC(v16);
  if (AccessoryID != AccessoryID)
  {
    goto LABEL_374;
  }

  v17 = AccessoryID;
  if (AccessoryID != -1)
  {
    goto LABEL_16;
  }

  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_373;
  }

  if ((*(*v4 + 224))(v4))
  {
    goto LABEL_24;
  }

  (*(*v4 + 56))(v4);
  if (!IOAccessoryManagerGetServiceWithPrimaryPort())
  {
    goto LABEL_24;
  }

  AccessoryID = IOAccessoryManagerGetAccessoryID();
  if (AccessoryID != AccessoryID)
  {
    goto LABEL_374;
  }

  v17 = AccessoryID;
  if (AccessoryID < 0x10 || AccessoryID == 100)
  {
LABEL_16:
    LODWORD(v195) = 1;
    v18 = v17;
  }

  else
  {
LABEL_24:
    LODWORD(v195) = 1;
    v18 = 16;
    AccessoryID = -1;
  }

  DWORD1(v195) = v18;
  *(&v195 + 1) = v4;
  *&v196 = 0;
  *(&v196 + 1) = *(result + 8);
  pthread_mutex_lock((result + 1280));
  v194 = 112;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  v194 = 113;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  v194 = 115;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  pthread_mutex_unlock((result + 1280));
  v194 = 20;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  v194 = 23;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  v194 = 116;
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  sub_100075A08(result);
  v194 = 0;
  v19 = sub_10006733C(result, 0xFFFFFFFFLL, &v194, 0, 0xFFFFLL);
  v21 = sub_1000CC7A0(v19, v20);
  if (!v21)
  {
    goto LABEL_373;
  }

  v22 = v21;
  if ((v21 & 7) != 0)
  {
    goto LABEL_373;
  }

  v23 = sub_1000CE018(*(result + 8));
  v24 = (*(*v22 + 136))(v22, v23);
  v25 = sub_100065198(v24);
  if (!v25 || (v25 & 7) != 0)
  {
    goto LABEL_373;
  }

  v26 = sub_100059100(v25, v4);
  if (v15)
  {
    v27 = sub_100065198(v26);
    if (!v27)
    {
      goto LABEL_373;
    }

    if ((v27 & 7) != 0)
    {
      goto LABEL_373;
    }

    v28 = sub_100092B58(v27, v15);
    v29 = sub_100065198(v28);
    if (!v29)
    {
      goto LABEL_373;
    }

    if ((v29 & 7) != 0)
    {
      goto LABEL_373;
    }

    v30 = sub_100059100(v29, v15);
    v31 = sub_100065198(v30);
    if (!v31)
    {
      goto LABEL_373;
    }

    if ((v31 & 7) != 0)
    {
      goto LABEL_373;
    }

    sub_100092C44(v31, v15);
    v32 = sub_1000769C0(result, *(result + 8), -1);
    v33 = sub_100065198(v32);
    if (!v33 || (v33 & 7) != 0)
    {
      goto LABEL_373;
    }

    sub_100058CA0(v33, v15, -1);
    if (v28)
    {
      LOWORD(v192) = 120;
      sub_10006733C(result, 0xFFFFFFFFLL, &v192, 0, 0xFFFFLL);
      sub_100076A8C(result, *(result + 8), v15, v28);
    }
  }

  v34 = *(result + 2212);
  if (v34 > 1)
  {
    goto LABEL_374;
  }

  if ((v34 & 1) == 0)
  {
    v35 = *(result + 8);
    if (!v35 || (v35 & 7) != 0)
    {
      goto LABEL_373;
    }

    if (sub_10005BDFC(v35) == 10)
    {
      sub_100076E70(result, v36, 1);
    }
  }

  v37 = sub_100075A48(result, 0, 0);
  v39 = *(a2 + 128);
  v188 = v39 == 12;
  if (v39 == 12)
  {
    v40 = *(a2 + 24);
    if (v40 < 0xFFFFFFFFFFFFFFF8)
    {
      v41 = v40[2];
      v45 = bswap32(v41);
      v42 = (!v41 || v45 >= 0x200) && (v45 & 0xF000) != 53248;
      if (!v40)
      {
        goto LABEL_373;
      }

      LODWORD(v43) = bswap32(*v40);
      v47 = v40[1];
      v48 = (v43 & 0x40) == 0 || v42;
      if (v48)
      {
        goto LABEL_61;
      }

      v37 = sub_10002BB1C(v37, v38);
      if (!v37)
      {
        goto LABEL_63;
      }

      if ((v37 & 7) != 0)
      {
        goto LABEL_373;
      }

      v37 = (*(*v37 + 344))(v37);
      if (v37)
      {
LABEL_61:
        v49 = 0;
        if (!v4)
        {
          goto LABEL_373;
        }
      }

      else
      {
LABEL_63:
        v49 = 1;
        if (!v4)
        {
          goto LABEL_373;
        }
      }

      if ((v4 & 7) != 0)
      {
        goto LABEL_373;
      }

      if ((v43 & 0x40) != 0)
      {
        v50 = *(v4 + 40);
        if (!v50 || (v50 & 7) != 0)
        {
          goto LABEL_373;
        }

        v37 = (*(*v50 + 208))(v50);
        if (v37)
        {
          v49 = 1;
        }
      }

      if (v41 == 1174405120)
      {
        v51 = sub_100065198(v37);
        if (!v51 || (v51 & 7) != 0)
        {
          goto LABEL_373;
        }

        if ((dword_10012CE80 & 0x200) != 0)
        {
          LODWORD(v43) = v43 & 1;
        }
      }

      v52 = bswap32(v47);
      v189 = sub_100074D7C(result, v52);
      v53 = *(result + 2368);
      if (v53 > 1)
      {
        goto LABEL_374;
      }

      v187 = v45 & 0xFFFFFF00;
      if (v53)
      {
        v185 = 0;
        goto LABEL_90;
      }

      v54 = (*(*v4 + 272))(v4);
      v55 = 0;
      if ((v45 & 0xFFFFFF00) != 0x200 && v54)
      {
        if (v41 | v47 | v43 & 0xFFFFFFFA)
        {
          v56 = *(result + 8);
          if (!v56 || (v56 & 7) != 0)
          {
            goto LABEL_373;
          }

          if ((sub_10005BFD0(v56) & 1) == 0)
          {
            if (!v57 || (v57 & 7) != 0)
            {
              goto LABEL_373;
            }

            v58 = *(result + 8);
            v59 = (*(*v57 + 392))(v57);
            sub_100076B84(1, v58, v4, v59, 0);
          }

          sub_100076C34(*(result + 8), v4, 0);
          v185 = 0;
          v49 = 1;
LABEL_90:
          v190 = v52 & 3;
          v60 = sub_100068364(v4);
          if (v60)
          {
            v61 = 30658;
          }

          else
          {
            v61 = 32766;
          }

          if (v189)
          {
            if (v189 == v4)
            {
LABEL_98:
              v178 = 0;
              v49 = 1;
LABEL_102:
              v181 = 1;
              v177 = 1;
              v179 = v52;
              goto LABEL_103;
            }

            if (v187 != 512 || v190 != 2)
            {
              if (v190 | v45)
              {
                goto LABEL_98;
              }

              v136 = sub_100065198(v60);
              if (!v136)
              {
                goto LABEL_373;
              }

              if ((v136 & 7) != 0)
              {
                goto LABEL_373;
              }

              v137 = sub_100058EBC(v136, v189);
              v138 = v137;
              v139 = sub_100065198(v137);
              if (!v139 || (v139 & 7) != 0)
              {
                goto LABEL_373;
              }

              v140 = sub_1000592F0(v139, v189);
              if (v140 != v4)
              {
                goto LABEL_271;
              }

              if ((v138 + 8) > 0xF)
              {
                goto LABEL_374;
              }

              if (v138 == 6)
              {
                v141 = sub_100065198(v140);
                if (!v141 || (v141 & 7) != 0)
                {
                  goto LABEL_373;
                }

                v142 = sub_1000593E8(v141, v189);
                v143 = v142;
                if (v43)
                {
                  v144 = *(result + 1516);
                  v145 = sub_100065198(v142);
                  if (!v145 || (v145 & 7) != 0)
                  {
                    goto LABEL_373;
                  }

                  v61 = v144 & ~v143;
                  v45 = sub_1000932FC(v145, v189);
                  v181 = 1;
                  v178 = 1;
                }

                else
                {
                  v174 = sub_100078C34(v189, 1);
                  if (v174)
                  {
                    v175 = sub_100065198(v174);
                    if (!v175 || (v175 & 7) != 0)
                    {
                      goto LABEL_373;
                    }

                    sub_100059100(v175, v189);
                    sub_100078E94(result, *(result + 8), v189, 0);
                    v45 = 0;
                    v178 = 0;
                    v179 = 0;
                    v181 = 1;
                    LODWORD(v43) = 1;
                    goto LABEL_279;
                  }

                  v181 = 1;
                  v45 = 0;
                  v178 = 0;
                  LODWORD(v43) = 0;
                }
              }

              else
              {
LABEL_271:
                v45 = 0;
                v178 = 0;
                v143 = 0;
                if (v140)
                {
                  v146 = v140 == v4;
                }

                else
                {
                  v146 = 1;
                }

                v147 = !v146;
                v181 = v147;
                v49 = 1;
              }

              v179 = v52;
LABEL_279:
              v177 = v143 == 0;
LABEL_103:
              *(result + 2200) = 0;
              sub_10007478C(result + 1992);
              sub_1000743E4(result, 1);
              *(result + 1272) = 0;
              sub_100074588(result);
              v62 = *(result + 8);
              if (v62)
              {
                if ((v62 & 7) == 0)
                {
                  v63 = sub_10005BD80(v62);
                  v64 = sub_100065198(v63);
                  if (v64)
                  {
                    if ((v64 & 7) == 0)
                    {
                      v65 = sub_100093438(v64, v4);
                      v66 = sub_100065198(v65);
                      if (v66)
                      {
                        if ((v66 & 7) == 0)
                        {
                          sub_100092FE4(v66, v4, 0, 0);
                          pthread_mutex_lock((result + 1448));
                          v67 = *(result + 1408);
                          if (v67)
                          {
                            if ((v67 & 3) == 0)
                            {
                              sub_100059F4C(v67);
                              operator delete();
                            }

                            goto LABEL_373;
                          }

                          v68 = pthread_mutex_unlock((result + 1448));
                          *&v196 = __PAIR64__(v43, v45);
                          v69 = *(result + 1512);
                          if (v69 > 1)
                          {
                            goto LABEL_374;
                          }

                          if (v69)
                          {
                            v70 = *(result + 1515);
                            if (v70 == 255)
                            {
LABEL_376:
                              __break(0x5507u);
                              return;
                            }

                            *(result + 1515) = v70 + 1;
                          }

                          else if (v45 == 134 || v45 == 131)
                          {
                            *(result + 1512) = 1;
                          }

                          v71 = sub_100065198(v68);
                          if (v71)
                          {
                            if ((v71 & 7) == 0)
                            {
                              sub_100093338(v71, v4, 19);
                              v72 = sub_100076EE4(result, v4, v43, &v193);
                              v176 = v72;
                              v73 = sub_100065198(v72);
                              if (v73)
                              {
                                if ((v73 & 7) == 0)
                                {
                                  v74 = sub_100058A3C(v73, v4, v45);
                                  v182 = v74;
                                  if (v45 == 474)
                                  {
                                    v75 = sub_100065198(v74);
                                    if (!v75 || (v75 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    if ((dword_10012CE80 & 0x200) == 0)
                                    {
                                      v49 = 1;
                                    }
                                  }

                                  if ((v43 & 1) == 0)
                                  {
                                    sub_1000DDEEC(0, 4, "%s:%d General lingo missing from mask.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1772);
                                  }

                                  v76 = v52 & 0xC;
                                  v77 = (*(*v4 + 224))(v4);
                                  if (v77)
                                  {
                                    v49 |= (v43 & 0xFFFF8DE2 | v76) != 0;
                                  }

                                  v79 = !(v43 & 1);
                                  v80 = v49 & 1;
                                  v81 = v52 & 3;
                                  v82 = v179 > 0xFF || v190 == 3;
                                  if (v82)
                                  {
                                    v79 = 1;
                                  }

                                  v83 = v79 | (v43 >> 14) & 1 | v80;
                                  if (v193)
                                  {
                                    v84 = 1;
                                  }

                                  else
                                  {
                                    v84 = v83;
                                  }

                                  if (*(result + 2372))
                                  {
                                    if ((v52 & 3) != 0)
                                    {
                                      goto LABEL_143;
                                    }
                                  }

                                  else
                                  {
                                    *(result + 2372) = v193;
                                    if ((v52 & 3) != 0)
                                    {
LABEL_143:
                                      if (!v45)
                                      {
                                        LOBYTE(v84) = 1;
                                      }

                                      if ((v43 & 2) == 0)
                                      {
                                        goto LABEL_154;
                                      }

                                      goto LABEL_149;
                                    }
                                  }

                                  sub_100074630(result, v4, 1, 1);
                                  LOBYTE(v84) = (v84 | v43 & v61) != 0;
                                  if ((v43 & 2) == 0)
                                  {
                                    goto LABEL_154;
                                  }

LABEL_149:
                                  v85 = sub_100046A8C(v77, v78);
                                  if (!v85)
                                  {
                                    goto LABEL_373;
                                  }

                                  v86 = v85;
                                  if ((v85 & 7) != 0)
                                  {
                                    goto LABEL_373;
                                  }

                                  v87 = (*(*v85 + 200))(v85);
                                  v88 = (*(*v4 + 240))(v4);
                                  v77 = (*(*v86 + 184))(v86);
                                  if ((v77 & 1) == 0)
                                  {
                                    LOBYTE(v84) = v87 & v88 ^ 1 | v84;
                                  }

                                  v81 = v190;
LABEL_154:
                                  v89 = v182;
                                  v90 = v187;
                                  if ((v43 & 0x400) != 0)
                                  {
                                    v77 = (*(*v4 + 248))(v4);
                                    LOBYTE(v84) = v77 ^ 1 | v84;
                                  }

                                  v91 = !v177;
                                  if (v81 == 2)
                                  {
                                    v91 = 1;
                                  }

                                  if ((v91 & 1) == 0)
                                  {
                                    v93 = (v43 & 0x17C2) != 0 || v76 > 4;
                                    LOBYTE(v84) = (v187 == 512 || v93) | v84;
                                  }

                                  if (v182 && (v84 & 1) == 0 && ((v176 ^ 1) & 1) == 0 && (v43 & *(result + 1516) & v182) == v43)
                                  {
                                    *(result + 2372) = 0;
                                    v94 = v183;
                                    if (v180 == 56 || v180 == 19)
                                    {
                                      v94 = (~v43 | 0x2010) & v183;
                                    }

                                    sub_10007702C(result, v4, v94);
                                    if (!v81 && !v189)
                                    {
                                      v95 = sub_10007692C(result, v96, 1);
                                    }

                                    v97 = sub_100065198(v95);
                                    if (!v97 || (v97 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    v98 = sub_100058A0C(v97, v45, (result + 1440), (result + 1441));
                                    if (v98)
                                    {
                                      sub_1000E22F0(v98);
                                    }

                                    v99 = *(result + 1440);
                                    if (v99 == 1)
                                    {
                                      v100 = 70;
                                      v101 = 4;
                                      v102 = 7500;
                                      v103 = 1000;
                                    }

                                    else if (v99 == 2)
                                    {
                                      v100 = 255;
                                      v101 = 3;
                                      v102 = 75000;
                                      v103 = 15000;
                                    }

                                    else
                                    {
                                      v103 = 0;
                                      v102 = 0;
                                      v101 = 0;
                                      v100 = 0;
                                    }

                                    *(result + 1428) = v103;
                                    *(result + 1432) = v102;
                                    *(result + 1439) = v101;
                                    *(result + 1436) = v100;
                                    v109 = sub_100065198(v98);
                                    if (!v109)
                                    {
                                      goto LABEL_373;
                                    }

                                    if ((v109 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    sub_100093264(v109, v4, v45);
                                    v111 = sub_100065198(v110);
                                    if (!v111)
                                    {
                                      goto LABEL_373;
                                    }

                                    if ((v111 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    sub_100092EE8(v111, v4, v179);
                                    v113 = sub_100065198(v112);
                                    if (!v113)
                                    {
                                      goto LABEL_373;
                                    }

                                    if ((v113 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    sub_100092FE4(v113, v4, 0, v76 == 12);
                                    v115 = sub_100065198(v114);
                                    if (!v115 || (v115 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    v43 &= 0x7FFFu;
                                    v116 = (*(*v115 + 144))(v115, *(result + 8), v43);
                                    v117 = v116;
                                    if (v116 != v43)
                                    {
                                      sub_1000DDEEC(0, 4, "%s:%d Failed SetActiveLingoMask mask=%xh return=%xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1973, v43, v116);
                                    }

                                    v118 = sub_100065198(v116);
                                    if (!v118 || (v118 & 7) != 0)
                                    {
                                      goto LABEL_373;
                                    }

                                    v119 = (*(*v118 + 160))(v118, *(result + 8), v43);
                                    v120 = v119;
                                    if (v119 != v43)
                                    {
                                      sub_1000DDEEC(0, 4, "%s:%d Failed SetAllowedLingoMask mask=%xh return=%xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1984, v43, v119);
                                    }

                                    v121 = qword_10012C6E0;
                                    if (qword_10012C6E0)
                                    {
                                      if ((qword_10012C6E0 & 7) != 0)
                                      {
                                        goto LABEL_373;
                                      }

                                      v121 = (*(*qword_10012C6E0 + 8))();
                                      qword_10012C6E0 = 0;
                                    }

                                    for (i = 0; i != 15; ++i)
                                    {
                                      if ((v43 >> i))
                                      {
                                        v123 = *(result + 8);
                                        if (v123)
                                        {
                                          v124 = (*(result + 8) & 7) == 0;
                                        }

                                        else
                                        {
                                          v124 = 0;
                                        }

                                        if (!v124)
                                        {
                                          goto LABEL_373;
                                        }

                                        v125 = sub_10005BB24(v123, i);
                                        v126 = sub_100065198(v125);
                                        if (!v126 || (v126 & 7) != 0)
                                        {
                                          goto LABEL_373;
                                        }

                                        v127 = sub_100092790(v126, *(result + 8), i);
                                        if (v127)
                                        {
                                          if ((v127 & 7) != 0)
                                          {
                                            goto LABEL_373;
                                          }

                                          (*(*v127 + 80))(v127, 4, 0, v4);
                                        }

                                        else
                                        {
                                          sub_1000DDEEC(0, 4, "%s:%d No lingo object! lingo=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 2012, i);
                                        }

                                        v128 = *(result + 8);
                                        if (!v128 || (v128 & 7) != 0)
                                        {
                                          goto LABEL_373;
                                        }

                                        v121 = sub_10005BB6C(v128, i);
                                      }
                                    }

                                    if (v45 == 3)
                                    {
                                      v46 = 4;
                                      LODWORD(v195) = 4;
                                      if (v117 == v43)
                                      {
                                        v82 = v120 == v43;
                                        v90 = v187;
                                        v89 = v182;
                                        if (v82)
                                        {
                                          v184 = v187 != 512;
                                          v186 = v178 ^ 1;
                                          v45 = 3;
                                          v46 = 2;
                                          v44 = 3;
                                          goto LABEL_288;
                                        }

LABEL_285:
                                        v184 = v90 != 512;
                                        v186 = v178 ^ 1;
                                        if (v89)
                                        {
                                          v44 = v45;
                                        }

                                        else
                                        {
                                          v44 = 0;
                                        }

                                        goto LABEL_288;
                                      }
                                    }

                                    else
                                    {
                                      if (v178)
                                      {
                                        v129 = sub_100065198(v121);
                                        if (!v129 || (v129 & 7) != 0)
                                        {
                                          goto LABEL_373;
                                        }

                                        sub_100059168(v129, v189, v4);
                                        if (!v130)
                                        {
                                          v131 = sub_100065198(v130);
                                          if (!v131)
                                          {
                                            goto LABEL_373;
                                          }

                                          if ((v131 & 7) != 0)
                                          {
                                            goto LABEL_373;
                                          }

                                          v132 = sub_1000932FC(v131, v189);
                                          v133 = v132;
                                          v134 = sub_100065198(v132);
                                          if (!v134 || (v134 & 7) != 0)
                                          {
                                            goto LABEL_373;
                                          }

                                          sub_100093264(v134, v4, v133);
                                        }
                                      }

                                      v46 = 4;
                                      if (v117 == v43)
                                      {
                                        v82 = v120 == v43;
                                        v90 = v187;
                                        v89 = v182;
                                        if (v82)
                                        {
                                          v46 = 0;
                                          v184 = v187 != 512;
                                          v135 = 1;
                                          v44 = v45;
                                          v186 = v178 ^ 1;
                                          v188 = 1;
                                          goto LABEL_289;
                                        }

                                        goto LABEL_285;
                                      }
                                    }

LABEL_197:
                                    v90 = v187;
                                    v89 = v182;
                                    goto LABEL_285;
                                  }

                                  if (v84)
                                  {
                                    v104 = v193;
                                    if (v193)
                                    {
                                      *(result + 2372) = v193;
                                      goto LABEL_187;
                                    }

                                    v104 = *(result + 2372);
                                    if (v104)
                                    {
                                      v193 = *(result + 2372);
LABEL_187:
                                      v105 = 0;
                                      LODWORD(v106) = -1;
                                      do
                                      {
                                        if ((v104 >> v105))
                                        {
                                          v106 = v105;
                                        }

                                        else
                                        {
                                          v106 = v106;
                                        }

                                        ++v105;
                                      }

                                      while (v105 != 15);
                                      v107 = sub_100068BB4(v106);
                                      sub_10008DD60(1, v4, v107);
                                      v46 = 20;
                                      goto LABEL_284;
                                    }
                                  }

                                  v108 = sub_100065198(v77);
                                  if (!v108 || (v108 & 7) != 0)
                                  {
                                    goto LABEL_373;
                                  }

                                  sub_100059100(v108, v4);
                                  sub_10007702C(result, v4, v183);
                                  if ((*(*v4 + 224))(v4))
                                  {
                                    LODWORD(v195) = 4;
                                    v46 = 2;
                                    v45 = -1;
                                    goto LABEL_197;
                                  }

                                  v90 = v187;
                                  v89 = v182;
                                  if (v176)
                                  {
                                    LODWORD(v195) = 5;
                                    if ((v43 & 0x7FFF) != 0)
                                    {
                                      LODWORD(v43) = *(result + 1516) & v43 & 0x7FFF;
                                      if (!v43)
                                      {
                                        LODWORD(v196) = 100;
                                        LODWORD(v195) = 4;
                                        goto LABEL_283;
                                      }

                                      LODWORD(v195) = 3;
                                      if (v45 != 70)
                                      {
                                        goto LABEL_283;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v43) = 0;
                                    }

                                    LODWORD(v196) = 100;
                                  }

                                  else
                                  {
                                    LODWORD(v195) = 6;
                                  }

LABEL_283:
                                  v46 = 2;
LABEL_284:
                                  v45 = -1;
                                  goto LABEL_285;
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

LABEL_373:
              __break(0x5516u);
              goto LABEL_374;
            }
          }

          else if ((*(*v4 + 224))(v4))
          {
            v178 = 0;
            v49 |= (v41 != 0) ^ (v187 == 512);
            goto LABEL_102;
          }

          v178 = 0;
          goto LABEL_102;
        }

        v55 = 1;
      }

      v185 = v55;
      goto LABEL_90;
    }

LABEL_375:
    __break(0x5500u);
    goto LABEL_376;
  }

  LODWORD(v43) = 0;
  v190 = 0;
  v189 = 0;
  v44 = 0;
  v185 = 0;
  v186 = 1;
  v45 = -1;
  v46 = 4;
  v181 = 1;
  v184 = 1;
LABEL_288:
  sub_100074630(result, v4, 1, 1);
  sub_10007692C(result, v148, 1);
  v135 = 0;
LABEL_289:
  sub_1000B7854(a2, v4, 0, 0, 2, *(a2 + 68), v46, 0x13u, 0, 255, 0, 0, 0, 0);
  sub_1000B6DB4(*(result + 8), a2, 0, 1u);
  pthread_mutex_lock((result + 1280));
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_373;
  }

  if ((*(*v4 + 224))(v4))
  {
    v149 = 15;
  }

  else
  {
    v149 = AccessoryID;
  }

  *(result + 1533) = 0;
  *(result + 1536) = 0x6400000019;
  *(result + 1544) = v4;
  *(result + 1552) = 0;
  *(result + 1560) = *(result + 8);
  *(result + 1584) = 0;
  if (v149 == -1)
  {
    v150 = 16;
  }

  else
  {
    v150 = v149;
  }

  DWORD1(v195) = v150;
  v151 = sub_10006825C(v4);
  if (v151 && (v149 == 100 || v149 == -1))
  {
    *(result + 1533) = 1;
    v151 = sub_1000671A8(result, -1, 115, 0, 2000);
    if (v151)
    {
      sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 2188);
    }
  }

  if (v188)
  {
    v152 = *(result + 1533);
    if (v152 > 1)
    {
      goto LABEL_374;
    }

    if (v152)
    {
      if (v195 > 0x1F)
      {
        goto LABEL_374;
      }

      *(result + 1536) = v195;
      *(result + 1540) = 100;
      *(result + 1544) = *(&v195 + 1);
      *(result + 1552) = v196;
    }

    else if (v181)
    {
      v151 = sub_100077384(result, 0, 0, &v195, 48);
    }
  }

  if (!v135)
  {
    v166 = pthread_mutex_unlock((result + 1280));
    v167 = sub_100065198(v166);
    if (v167 && (v167 & 7) == 0)
    {
      sub_100093264(v167, v4, v44);
      sub_100076C34(*(result + 8), v4, 0);
      return;
    }

    goto LABEL_373;
  }

  if (v189)
  {
    v153 = sub_100065198(v151);
    if (!v153 || (v153 & 7) != 0)
    {
      goto LABEL_373;
    }

    v154 = sub_1000949E0(v153, v189, 0);
    if (v154)
    {
      v155 = v154;
      v156 = sub_100065198(v154);
      if (!v156)
      {
        goto LABEL_373;
      }

      if ((v156 & 7) != 0)
      {
        goto LABEL_373;
      }

      v157 = sub_10009467C(v156, *(result + 8), v155);
      v158 = sub_100065198(v157);
      if (!v158 || (v158 & 7) != 0)
      {
        goto LABEL_373;
      }

      v154 = sub_10009467C(v158, v155, *(result + 8));
    }

    if (v190 == 2)
    {
      v159 = sub_100065198(v154);
      if (v159 && (v159 & 7) == 0)
      {
        sub_100059364(v159, v4, v189);
        goto LABEL_323;
      }

      goto LABEL_373;
    }
  }

LABEL_323:
  v160 = *(result + 1528);
  if (v160 > 7)
  {
    goto LABEL_374;
  }

  if (((v160 > 3) & ~v185) != 0)
  {
    goto LABEL_358;
  }

  v161 = v45 | v43 & 0xFFFFFFFA;
  if (!v161)
  {
    v165 = 0;
    v164 = 2;
    goto LABEL_336;
  }

  v162 = sub_100078F78(result, v45);
  v163 = *(result + 1528);
  if (v163 > 7)
  {
LABEL_374:
    __break(0x550Au);
    goto LABEL_375;
  }

  if (v162)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  if (v164 < v163)
  {
    goto LABEL_358;
  }

  v165 = v162 ^ 1;
LABEL_336:
  v194 = 113;
  v192 = 0xAAAAAAAAAAAAAAAALL;
  if (v149 > 15 || v149 == -1)
  {
    if (v149 == 100 || v149 == -1)
    {
      *(result + 1584) = 1;
    }

LABEL_348:
    *(result + 1528) = v164;
    if (!v161)
    {
      if (*(result + 1588) > 0xCu)
      {
        v172 = 1;
      }

      else
      {
        v172 = 800;
      }

      sub_1000671A8(result, -1, v194, 0, v172);
      goto LABEL_358;
    }

    goto LABEL_349;
  }

  if (!v161 || v149 < 0 || ((1 << v149) & 0xE400) == 0)
  {
    goto LABEL_348;
  }

  v168 = sub_100078FD4(v45, v43);
  if (v184)
  {
    v169 = v168;
    if (((*(*v4 + 224))(v4) & 1) == 0)
    {
      sub_100076E70(result, v170, v169);
    }
  }

  *(result + 1528) = v164;
LABEL_349:
  sub_10006733C(result, 0xFFFFFFFFLL, &v194, &v192, 0xFFFFLL);
  if (v165)
  {
    v171 = *(result + 1528);
    if (v171 <= 7)
    {
      if (v171 == 4)
      {
        *(result + 1532) = 1;
      }

      LODWORD(v195) = 17;
      DWORD1(v195) = v150;
      sub_100077384(result, 0, 0, &v195, 48);
      goto LABEL_358;
    }

    goto LABEL_374;
  }

LABEL_358:
  pthread_mutex_unlock((result + 1280));
  if (v190 == 2)
  {
    sub_100079038(result, v4);
  }

  else
  {
    if (v186)
    {
      if (v190 == 1)
      {
        v173 = 2;
      }

      else
      {
        v173 = -1;
      }

      sub_100075B90(result, v4, v173);
    }

    else
    {
      *(result + 1440) = 0;
      sub_100075B90(result, v4, 0);
      sub_100075B90(result, v4, 3);
      sub_100075B90(result, v4, 4);
      sub_1000671A8(result, -1, 120, 0, 500);
    }

    sub_100079318(result);
  }
}
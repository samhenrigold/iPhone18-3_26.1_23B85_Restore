uint64_t sub_1000BE524(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    return !(*(*result + 80))(result, 0) || (*(*v1 + 96))(v1, 8) == 0;
  }

  return result;
}

uint64_t sub_1000BE5C0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 80))(result, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BE5F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BE630(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v10 = v7;
            }

            else
            {
              v10 = v8;
            }

            v11 = sub_10004B1AC(v8, v9);
            v13 = sub_100068718(v10, v12);
            if (!v13)
            {
              return 0;
            }

            result = sub_100046A8C(v13, v14);
            if (result)
            {
              if ((result & 7) == 0)
              {
                result = (*(*result + 176))(result);
                if (!result)
                {
                  return 0;
                }

                if (a2)
                {
                  v16 = a3;
                  v15 = 4;
                  sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 2358, a2, v16);
                  return v15;
                }

                if (v11 && (v11 & 7) == 0)
                {
                  (*(*v11 + 256))(v11, v10, a3);
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BE77C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = a2;
  sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_16;
  }

  v7 = sub_10005AC88(v6);
  v9 = sub_10004B1AC(v7, v8);
  if (v2)
  {
    goto LABEL_17;
  }

  if (!v9 || (v9 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  v10 = *(*v9 + 264);

  return v10();
}

uint64_t sub_1000BE848(uint64_t result, int a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_83;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_83;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_83;
  }

  v7 = sub_100018DC0(result);
  result = v3[2];
  if (!result || (result & 7) != 0)
  {
    goto LABEL_83;
  }

  v8 = sub_10005AC88(result);
  if (!v7)
  {
    v7 = v8;
  }

  v10 = sub_10004B1AC(v8, v9);
  v12 = sub_100068718(v7, v11);
  if (!v12)
  {
    return 0;
  }

  result = sub_100046A8C(v12, v13);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_83;
  }

  result = (*(*result + 176))(result);
  if (!result)
  {
    return 0;
  }

  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (v10 && (v10 & 7) == 0)
        {
          (*(*v10 + 488))(v10, v7, a3);
          return 0;
        }
      }

      else if (a2 == 3)
      {
        if (v10 && (v10 & 7) == 0)
        {
          (*(*v10 + 472))(v10, v7, a3);
          return 0;
        }
      }

      else if (v10 && (v10 & 7) == 0)
      {
        (*(*v10 + 520))(v10, v7, a3);
        return 0;
      }

      goto LABEL_83;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (v10 && (v10 & 7) == 0)
        {
          (*(*v10 + 504))(v10, v7, a3);
          return 0;
        }

        goto LABEL_83;
      }

LABEL_68:
      v14 = 4;
      sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 2471, a2, a3);
      return v14;
    }

    if (v10 && (v10 & 7) == 0)
    {
      (*(*v10 + 256))(v10, v7, a3 != 0);
      return 0;
    }

    goto LABEL_83;
  }

  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 == 9)
      {
        return 0;
      }

      if (a2 == 8)
      {
        sub_1000BED84(v3, v7, a3);
        return 0;
      }

      goto LABEL_68;
    }

    if (v10 && (v10 & 7) == 0)
    {
      (*(*v10 + 552))(v10, v7, a3);
      return 0;
    }

LABEL_83:
    __break(0x5516u);
    goto LABEL_84;
  }

  if (a2 == 5)
  {
    if (!v10 || (v10 & 7) != 0)
    {
      goto LABEL_83;
    }

    (*(*v10 + 536))(v10, v7, a3);
    result = (*(*v3 + 128))(v3, 6);
    v14 = 0;
    if (!a3 || !result)
    {
      return v14;
    }

    v19 = v3[7];
    if (v19 >= 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_84;
    }

    if (((v19 + 120) & 7) != 0)
    {
      goto LABEL_83;
    }

    v20 = *(v19 + 120);
    if (!v20 || (v20 & 7) != 0)
    {
      goto LABEL_83;
    }

    v21 = *(v20 + 8);
    if (v21 >= 2)
    {
      goto LABEL_85;
    }

    if (v21)
    {
      LOBYTE(v22) = 1;
    }

    else
    {
      if (v19 > 0xFFFFFFFFFFFFFF6FLL)
      {
        goto LABEL_84;
      }

      v25 = (v19 + 144);
      if ((v25 & 7) != 0)
      {
        goto LABEL_83;
      }

      v26 = *v25;
      if (!v26 || (v26 & 7) != 0)
      {
        goto LABEL_83;
      }

      v22 = *(v26 + 8);
      if (v22 > 1)
      {
        goto LABEL_85;
      }
    }

    sub_1000BEE6C(v3, 0, v22 & 1);
    return 0;
  }

  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_83;
  }

  (*(*v10 + 568))(v10, v7, a3);
  result = (*(*v3 + 128))(v3, 5);
  v14 = 0;
  if (!a3 || !result)
  {
    return v14;
  }

  v15 = v3[7];
  if (v15 > 0xFFFFFFFFFFFFFF87)
  {
    goto LABEL_84;
  }

  if (((v15 + 120) & 7) != 0)
  {
    goto LABEL_83;
  }

  v16 = *(v15 + 120);
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_83;
  }

  v17 = *(v16 + 8);
  if (v17 > 1)
  {
    goto LABEL_85;
  }

  if (v17)
  {
    LOBYTE(v18) = 1;
    goto LABEL_74;
  }

  if (v15 > 0xFFFFFFFFFFFFFF6FLL)
  {
LABEL_84:
    __break(0x5513u);
    goto LABEL_85;
  }

  v23 = (v15 + 144);
  if ((v23 & 7) != 0)
  {
    goto LABEL_83;
  }

  v24 = *v23;
  if (!v24 || (v24 & 7) != 0)
  {
    goto LABEL_83;
  }

  v18 = *(v24 + 8);
  if (v18 <= 1)
  {
LABEL_74:
    sub_1000BEEDC(v3, 0, v18 & 1);
    return 0;
  }

LABEL_85:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000BED84(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_100068718(a2, a2);
  if (!result)
  {
    return result;
  }

  result = sub_100046A8C(result, v5);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = (*(*result + 176))(result);
  if (!result)
  {
    return result;
  }

  result = sub_10004B1AC(result, v6);
  if (!a2 || !result)
  {
    __break(0x5518u);
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  if (a3 > 3)
  {
LABEL_17:
    __break(0x550Au);
    return result;
  }

  v7 = *(*result + 584);

  return v7();
}

uint64_t sub_1000BEE6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 2 || (result = (*(*result + 88))(result, 6, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BEEDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 2 || (result = (*(*result + 88))(result, 5, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BEF4C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_66;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_66;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_66;
  }

  v8 = sub_10005AC88(v7);
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = sub_10004B1AC(v8, v9);
  if (v2 > 4)
  {
    if (v2 > 7)
    {
      if ((v2 - 8) > 1)
      {
        goto LABEL_67;
      }

      if (v11 && (v11 & 7) == 0)
      {
        v12 = *(*v11 + 592);

        return v12();
      }
    }

    else if (v2 == 5)
    {
      if (v11 && (v11 & 7) == 0)
      {
        v12 = *(*v11 + 544);

        return v12();
      }
    }

    else if (v2 == 6)
    {
      if (v11 && (v11 & 7) == 0)
      {
        v12 = *(*v11 + 576);

        return v12();
      }
    }

    else if (v11 && (v11 & 7) == 0)
    {
      v12 = *(*v11 + 560);

      return v12();
    }

    goto LABEL_66;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_67;
      }

      if (v11 && (v11 & 7) == 0)
      {
        v12 = *(*v11 + 512);

        return v12();
      }
    }

    else if (v11 && (v11 & 7) == 0)
    {
      return (*(*v11 + 264))(v11, v10);
    }

    goto LABEL_66;
  }

  if (v2 == 2)
  {
    if (v11 && (v11 & 7) == 0)
    {
      v12 = *(*v11 + 496);

      return v12();
    }

    goto LABEL_66;
  }

  if (v2 == 3)
  {
    if (v11 && (v11 & 7) == 0)
    {
      v12 = *(*v11 + 480);

      return v12();
    }

    goto LABEL_66;
  }

  if (!v11 || (v11 & 7) != 0)
  {
LABEL_66:
    __break(0x5516u);
LABEL_67:
    sub_1000E260C(v2);
  }

  v12 = *(*v11 + 528);

  return v12();
}

uint64_t sub_1000BF328(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF360(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF398(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF3D0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 4);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF408(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 5);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF440(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 6);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF478(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 96))(result, 7);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BF4B0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = (*(*result + 72))(result, 0, a2, 0, 1);
  if (result > 0x1F)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000BF518(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  LODWORD(v4) = a2;
  if (a2 >= 4)
  {
LABEL_21:
    __break(0x550Au);
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    return 4;
  }

  result = sub_100025E90(result, a2);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_20;
  }

  if ((result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  v7 = (*(*result + 96))(result);
  if (((v4 == 1) & v7) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v4;
  }

  result = (*(*v3 + 88))(v3, 8, v4, a3, 0);
  v5 = result;
  if (!v7)
  {
LABEL_17:
    if (v5 <= 0x1F)
    {
      return v5;
    }

    goto LABEL_21;
  }

  v8 = v3[7];
  if (v8 < 0xFFFFFFFFFFFFFF28)
  {
    v9 = (v8 + 216);
    if ((v9 & 7) == 0)
    {
      v10 = *v9;
      if (v10)
      {
        if ((v10 & 7) == 0)
        {
          *(v10 + 8) = 0;
          result = (*(*v3 + 88))(v3, 9, v4, 1, 0);
          goto LABEL_17;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000BF678(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_10004B1AC(result, a2)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  (*(*result + 600))(result, 0, 1);
  (*(*v2 + 88))(v2, 9, 2, 1, 0);
  result = (*(*v2 + 88))(v2, 8, 2, 0, 1);
  if (result >= 0x20)
  {
LABEL_8:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000BF768(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 2 || (result = (*(*result + 88))(result, 1, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BF7D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 4 || (result = (*(*result + 88))(result, 2, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BF848(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 2 || (result = (*(*result + 88))(result, 3, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BF8B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 8 || (result = (*(*result + 88))(result, 4, a2, a3, 1), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BF928(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_6;
  }

  if (a2 >= 2 || (result = (*(*result + 88))(result, 7, a2, a3, 0), result > 0x1F))
  {
    __break(0x550Au);
LABEL_6:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BF998(uint64_t result, uint64_t a2)
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

  v3 = *(result + 56);
  if (v3 >= 0xFFFFFFFFFFFFFF40)
  {
    goto LABEL_34;
  }

  v4 = (v3 + 192);
  if ((v4 & 7) != 0)
  {
    goto LABEL_33;
  }

  v5 = *v4;
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_33;
  }

  v7 = *(v5 + 8);
  if (v7 < 2)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    result = sub_100025E90(result, a2);
    if (!result)
    {
      __break(0x5518u);
      goto LABEL_33;
    }

    if ((result & 7) != 0)
    {
LABEL_33:
      __break(0x5516u);
      goto LABEL_34;
    }

    result = (*(*result + 96))(result);
    if (result)
    {
      (*(*v2 + 24))(v2, 9, 1, 0);
      result = (*(*v2 + 24))(v2, 8, 0, 0);
      v8 = *(v2 + 56);
      if (v8 <= 0xFFFFFFFFFFFFFF3FLL)
      {
        if (((v8 + 192) & 7) != 0)
        {
          goto LABEL_33;
        }

        v9 = *(v8 + 192);
        if (!v9 || (v9 & 7) != 0)
        {
          goto LABEL_33;
        }

        if (v8 <= 0xFFFFFFFFFFFFFF27)
        {
          v10 = (v8 + 216);
          if ((v10 & 7) == 0)
          {
            v11 = *v10;
            if (v11)
            {
              if ((v11 & 7) == 0)
              {
                *(v11 + 12) = *(v9 + 12);
                *(v9 + 8) = 0;
                return 0;
              }
            }
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v12 = *(v2 + 56);
      if (v12 <= 0xFFFFFFFFFFFFFF3FLL)
      {
        if (((v12 + 192) & 7) == 0)
        {
          v13 = *(v12 + 192);
          if (v13)
          {
            if ((v13 & 7) == 0 && ((v12 - 48) & 7) == 0)
            {
              *(v12 + 208) = *(v13 + 12);
              *(v13 + 8) = 0;
              v14 = (v12 + 200);
              if ((v14 & 7) == 0)
              {
                *v14 = 1;
                *(v2 + 36) = 1;
                (*(*v2 + 40))(v2, 0);
                return 0;
              }
            }
          }
        }

        goto LABEL_33;
      }
    }

LABEL_34:
    __break(0x5513u);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000BFB94(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  v1 = *(result + 56);
  if (v1 >= 0xFFFFFFFFFFFFFF28)
  {
LABEL_18:
    __break(0x5513u);
    goto LABEL_19;
  }

  if (((v1 + 216) & 7) != 0 || ((v2 = *(v1 + 216)) != 0 ? (v3 = (*(v1 + 216) & 7) == 0) : (v3 = 0), !v3))
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  v4 = *(v2 + 8);
  if (v4 < 2)
  {
    if (v4)
    {
      if (((v1 - 64) & 7) != 0)
      {
        goto LABEL_17;
      }

      if (((v1 - 48) & 7) != 0)
      {
        goto LABEL_17;
      }

      *(v1 + 208) = *(v2 + 12);
      *(v2 + 8) = 0;
      v5 = (v1 + 200);
      if ((v5 & 7) != 0)
      {
        goto LABEL_17;
      }

      *v5 = 1;
      *(result + 36) = 1;
      (*(*result + 40))(result, 0);
    }

    return 0;
  }

LABEL_19:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000BFC70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 3u, 0, 2u, 0, 0, &stru_10012C790, &unk_10012B674, 3u), *result = off_100117340, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CCD0;
    *(v3 + 8) = 0;
    if (v3 < 0xFFFFFFFFFFFFFFE8)
    {
      *(v3 + 24) = &qword_10012CCE0;
      *(v3 + 32) = 0;
      if (v3 <= 0xFFFFFFFFFFFFFFCFLL)
      {
        *(v3 + 48) = &qword_10012CCD0;
        *(v3 + 56) = 0;
        return result;
      }
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1000BFD44(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BFD8C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BFDA4(uint64_t result, int a2)
{
  if (result && (result & 7) == 0)
  {
    if (a2 == 2)
    {
      result = *(result + 8);
      if (result && (result & 7) == 0)
      {
        v3 = 17;

        return sub_1000BBC00(result, 0, v3);
      }
    }

    else if (a2 == 1)
    {
      result = *(result + 8);
      if (result && (result & 7) == 0)
      {
        v3 = 16;

        return sub_1000BBC00(result, 0, v3);
      }
    }

    else
    {
      if (a2)
      {
        sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3144, a2);
        return 0;
      }

      result = *(result + 8);
      if (result && (result & 7) == 0)
      {
        v3 = 15;

        return sub_1000BBC00(result, 0, v3);
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BFE88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = a2;
    result = sub_10004B1AC(result, a2);
    if (v4 == 2)
    {
      if (result && (result & 7) == 0)
      {
        (*(*result + 240))(result, a3);
        return 0;
      }
    }

    else
    {
      if (v4 != 1)
      {
        v6 = a3;
        v5 = 4;
        sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3178, v4, v6);
        return v5;
      }

      if (result && (result & 7) == 0)
      {
        (*(*result + 224))(result, a3);
        return 0;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BFF7C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = a2;
  v3 = sub_10004B1AC(a1, a2);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      goto LABEL_16;
    }

    if (v3 && (v3 & 7) == 0)
    {
      v4 = *(*v3 + 232);

      return v4();
    }

LABEL_15:
    __break(0x5516u);
LABEL_16:
    sub_1000E260C(v2);
  }

  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_15;
  }

  v4 = *(*v3 + 248);

  return v4();
}

uint64_t sub_1000C004C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = a2;
    result = sub_10004B1AC(result, a2);
    if (v4 == 2)
    {
      if (result && (result & 7) == 0)
      {
        (*(*result + 240))(result, a3 != 0);
        return 0;
      }
    }

    else if (v4 == 1)
    {
      if (result && (result & 7) == 0)
      {
        (*(*result + 224))(result, a3 != 0);
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        v6 = a3;
        v5 = 4;
        sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3248, v4, v6);
        return v5;
      }

      if (result && (result & 7) == 0)
      {
        (*(*result + 208))(result, a3);
        return 0;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C0184(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v3 = sub_10004B1AC(a1, a2);
  if (v2 == 2)
  {
    if (v3 && (v3 & 7) == 0)
    {
      return (*(*v3 + 248))(v3);
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
    if (v3 && (v3 & 7) == 0)
    {
      return (*(*v3 + 232))(v3);
    }

    goto LABEL_17;
  }

  if (v2)
  {
    goto LABEL_18;
  }

  if (!v3 || (v3 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  v4 = *(*v3 + 216);

  return v4();
}

uint64_t sub_1000C0280(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 5u, 0, 0, 0, 0, &stru_10012C910, &unk_10012CE54, 1u), *result = off_100117410, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CDB0;
    byte_10012CDB8 = 0;
    dword_10012CDBC = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C0330(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C0378(unint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3444, a2);
    return 0;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {

    return sub_1000BBC00(result, 0, 0x13u);
  }

  return result;
}

uint64_t sub_1000C03FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C0414(uint64_t result, int a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (a2)
    {
      v3 = 4;
      sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3490, a2, a3);
      return v3;
    }

    v4 = *(result + 56);
    if (v4 && (v4 & 7) == 0)
    {
      v3 = 0;
      *(v4 + 16) = a3;
      return v3;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000C0498(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    sub_1000E260C(a2);
  }

  return *(v2 + 16) != 0;
}

uint64_t sub_1000C04E0(uint64_t result, int a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (a2)
    {
      v3 = 4;
      sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3549, a2, a3);
      return v3;
    }

    v4 = *(result + 56);
    if (v4 && (v4 & 7) == 0)
    {
      v3 = 0;
      *(v4 + 16) = a3;
      return v3;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000C0564(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    sub_1000E260C(a2);
  }

  return *(v2 + 16) != 0;
}

uint64_t sub_1000C05AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 72))(result, 0, a2, a3, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C05F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 8u, 0, 0, 0, 0, &stru_10012C970, &unk_10012CE58, 1u), *result = off_1001174E0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CDC0;
    byte_10012CDC8 = 0;
    dword_10012CDCC = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C06A0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C06E8(unint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3700, a2);
    return 0;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {

    return sub_1000BBC00(result, 0, 0x19u);
  }

  return result;
}

uint64_t sub_1000C076C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C0784(uint64_t result, int a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (a2)
    {
      v3 = 4;
      sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3746, a2, a3);
      return v3;
    }

    v4 = *(result + 56);
    if (v4 && (v4 & 7) == 0)
    {
      v3 = 0;
      *(v4 + 16) = a3;
      return v3;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000C0808(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    sub_1000E260C(a2);
  }

  return *(v2 + 16) != 0;
}

uint64_t sub_1000C0850(uint64_t result, int a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (a2)
    {
      v3 = 4;
      sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3805, a2, a3);
      return v3;
    }

    v4 = *(result + 56);
    if (v4 && (v4 & 7) == 0)
    {
      v3 = 0;
      *(v4 + 16) = a3;
      return v3;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C08D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    sub_1000E260C(a2);
  }

  return *(v2 + 16);
}

uint64_t sub_1000C0914(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 4u, 1u, 1u, 0, 0, 0, &unk_10012CE5C, 1u), *result = off_1001175B0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C09AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C09F4(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = sub_10005AC88(result);
  if (v5)
  {
    result = v5;
  }

  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 3955, a2);
    return 0;
  }

  if (result)
  {
    if ((result & 7) != 0)
    {
LABEL_23:
      __break(0x5516u);
      return result;
    }

    if (!(*(*result + 232))(result))
    {
      return 0;
    }
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  return sub_1000BBC00(result, 0, 0x12u);
}

BOOL sub_1000C0B10(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C0B44(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v7 = sub_100018DC0(result);
  result = *(v3 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v8 = sub_10005AC88(result);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (a2)
  {
    v13 = a3;
    v11 = 4;
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4023, a2, v13);
    return v11;
  }

  result = sub_100048620(v8, v9);
  if (result && (v12 = result, (result & 7) == 0))
  {
    result = (*(*result + 152))(result, v10);
    if (a3)
    {
      if (result <= 3)
      {
        if (result == 2)
        {
          (*(*v12 + 144))(v12, v10, 3);
        }

        return 0;
      }
    }

    else if (result <= 3)
    {
      if (result == 3)
      {
        (*(*v12 + 144))(v12, v10, 2);
      }

      return 0;
    }
  }

  else
  {
LABEL_26:
    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000C0CBC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_18;
  }

  v10 = v8;
  v11 = sub_100048620(v8, v9);
  if (!v11 || (v11 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  return (*(*v11 + 152))(v11, v12) == 3;
}

uint64_t sub_1000C0D7C(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v7 = sub_100018DC0(result);
  result = *(v3 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v8 = sub_10005AC88(result);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (a2)
  {
    v13 = a3;
    v11 = 4;
    sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4109, a2, v13);
    return v11;
  }

  result = sub_100048620(v8, v9);
  if (result && (v12 = result, (result & 7) == 0))
  {
    result = (*(*result + 152))(result, v10);
    if (a3)
    {
      if (result < 4)
      {
        if (result == 2)
        {
          (*(*v12 + 144))(v12, v10, 3);
        }

        return 0;
      }
    }

    else if (result <= 3)
    {
      if (result == 3)
      {
        (*(*v12 + 144))(v12, v10, 2);
      }

      return 0;
    }
  }

  else
  {
LABEL_26:
    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000C0EF4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_18;
  }

  v10 = v8;
  v11 = sub_100048620(v8, v9);
  if (!v11 || (v11 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  return (*(*v11 + 152))(v11, v12) == 3;
}

uint64_t sub_1000C0FB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 6u, 1u, 1u, 0, 0, 0, &unk_10012CE60, 1u), *result = off_100117680, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C104C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C1094(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = sub_10005AC88(result);
  if (v5)
  {
    result = v5;
  }

  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4263, a2);
    return 0;
  }

  if (result)
  {
    if ((result & 7) != 0)
    {
LABEL_23:
      __break(0x5516u);
      return result;
    }

    if (!(*(*result + 232))(result))
    {
      return 0;
    }
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  return sub_1000BBC00(result, 0, 0x16u);
}

BOOL sub_1000C11B0(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C11E4(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v10 = v7;
            }

            else
            {
              v10 = v8;
            }

            if (a2)
            {
              v12 = a3;
              v11 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4312, a2, v12);
              return v11;
            }

            result = sub_100048620(v8, v9);
            if (result && (result & 7) == 0)
            {
              (*(*result + 192))(result, v10, a3);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C12DC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = a2;
  sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_16;
  }

  v7 = sub_10005AC88(v6);
  if (v2)
  {
    goto LABEL_17;
  }

  v9 = sub_100048620(v7, v8);
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  v10 = *(*v9 + 200);

  return v10();
}

uint64_t sub_1000C13A0(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v10 = v7;
            }

            else
            {
              v10 = v8;
            }

            if (a2)
            {
              v12 = a3;
              v11 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4377, a2, v12);
              return v11;
            }

            result = sub_100048620(v8, v9);
            if (result && (result & 7) == 0)
            {
              (*(*result + 192))(result, v10, a3 != 0);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C149C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_18;
  }

  v10 = v8;
  v11 = sub_100048620(v8, v9);
  if (!v11 || (v11 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  return (*(*v11 + 200))(v11, v12);
}

uint64_t sub_1000C1554(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 7u, 2u, 2u, 0, 0, &stru_10012CA90, &unk_10012CE64, 1u), *result = off_100117750, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CDF0;
    byte_10012CDF8 = 0;
    dword_10012CDFC = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C1604(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C164C(unint64_t result, int a2)
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

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v6 = sub_10005AC88(result);
  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4534, a2);
    return 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  if (!sub_100068860(v6))
  {
    return 0;
  }

  result = *(v2 + 8);
  if (result && (result & 7) == 0)
  {

    return sub_1000BBC00(result, 0, 0x14u);
  }

  else
  {
LABEL_21:
    __break(0x5516u);
  }

  return result;
}

BOOL sub_1000C1740(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C1774(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      if (a2)
      {
        v5 = 4;
        sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4583, a2, a3);
        return v5;
      }

      v6 = *(result + 8);
      if (v6)
      {
        if ((v6 & 7) == 0)
        {
          result = sub_1000BF8B8(v6 + 16, 4, a3);
          v7 = *(v3 + 8);
          if (v7)
          {
            if ((v7 & 7) == 0)
            {
              sub_1000BF518(v7 + 16, 2, a3);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000C182C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  if (!v3 || (v3 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
LABEL_12:
    sub_1000E260C(a2);
  }

  if ((*(*(v3 + 16) + 96))() == 4)
  {
    v4 = *(a1 + 8);
    if (v4 && (v4 & 7) == 0)
    {
      return (*(*(v4 + 16) + 96))() == 2;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000C18F0(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      if (a2)
      {
        v5 = 4;
        sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4648, a2, a3);
        return v5;
      }

      v6 = *(result + 8);
      if (v6)
      {
        if ((v6 & 7) == 0)
        {
          result = sub_1000BF8B8(v6 + 16, 4, a3 != 0);
          v7 = *(v3 + 8);
          if (v7)
          {
            if ((v7 & 7) == 0)
            {
              sub_1000BF518(v7 + 16, 2, a3 != 0);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000C19B0(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 8);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    sub_1000E260C(a2);
  }

  return (*(*(v2 + 16) + 96))() == 4;
}

uint64_t sub_1000C1A20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 0xAu, 1u, 1u, 0, 0, 0, &unk_10012CE6C, 1u), *result = off_100117820, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C1AB8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C1B00(unint64_t result, int a2)
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

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v6 = sub_10005AC88(result);
  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4800, a2);
    return 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  if (!sub_10006852C(v6))
  {
    return 0;
  }

  result = *(v2 + 8);
  if (result && (result & 7) == 0)
  {

    return sub_1000BBC00(result, 0, 0);
  }

  else
  {
LABEL_21:
    __break(0x5516u);
  }

  return result;
}

BOOL sub_1000C1BF4(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C1C28(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (!v7)
            {
              v7 = v8;
            }

            if (a2)
            {
              v13 = a3;
              v10 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4850, a2, v13);
              return v10;
            }

            result = sub_100045A94(v8, v9);
            if (result)
            {
              v11 = result;
              if ((result & 7) == 0)
              {
                v12 = sub_1000CE018(*(v3 + 16));
                (*(*v11 + 144))(v11, v7, a3, v12);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C1D34(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_18;
  }

  LODWORD(v2) = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_18;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_19;
  }

  v10 = v8;
  v11 = sub_100045A94(v8, v9);
  if (!v11 || (v2 = v11, (v11 & 7) != 0))
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    sub_1000E260C(v2);
  }

  if (!v6)
  {
    v6 = v10;
  }

  v12 = sub_1000CE018(*(a1 + 16));
  v13 = *(*v2 + 152);

  return v13(v2, v6, v12);
}

uint64_t sub_1000C1E10(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (!v7)
            {
              v7 = v8;
            }

            if (a2)
            {
              v13 = a3;
              v10 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 4917, a2, v13);
              return v10;
            }

            result = sub_100045A94(v8, v9);
            if (result)
            {
              v11 = result;
              if ((result & 7) == 0)
              {
                v12 = sub_1000CE018(*(v3 + 16));
                (*(*v11 + 144))(v11, v7, a3 != 0, v12);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C1F24(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  LODWORD(v2) = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_16;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_17;
  }

  v10 = v8;
  v11 = sub_100045A94(v8, v9);
  if (!v11 || (v2 = v11, (v11 & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  if (!v6)
  {
    v6 = v10;
  }

  v12 = sub_1000CE018(*(a1 + 16));
  return (*(*v2 + 152))(v2, v6, v12);
}

uint64_t sub_1000C1FF4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 72))(result, 0, a2, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2038(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 0xBu, 1u, 1u, 0, 0, 0, &unk_10012CE70, 1u), *result = off_1001178F0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C20D0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C2118(unint64_t result, int a2)
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

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  v6 = sub_10005AC88(result);
  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 5073, a2);
    return 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  if (!sub_10006852C(v6))
  {
    return 0;
  }

  result = *(v2 + 8);
  if (result && (result & 7) == 0)
  {

    return sub_1000BBC00(result, 0, 0);
  }

  else
  {
LABEL_21:
    __break(0x5516u);
  }

  return result;
}

BOOL sub_1000C220C(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2240(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v10 = v7;
            }

            else
            {
              v10 = v8;
            }

            if (a2)
            {
              v12 = a3;
              v11 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 5122, a2, v12);
              return v11;
            }

            result = sub_100045A94(v8, v9);
            if (result && (result & 7) == 0)
            {
              (*(*result + 160))(result, a3, v10);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2338(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = a2;
  sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_16;
  }

  v7 = sub_10005AC88(v6);
  if (v2)
  {
    goto LABEL_17;
  }

  v9 = sub_100045A94(v7, v8);
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  v10 = *(*v9 + 168);

  return v10();
}

uint64_t sub_1000C23FC(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v10 = v7;
            }

            else
            {
              v10 = v8;
            }

            if (a2)
            {
              v12 = a3;
              v11 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 5187, a2, v12);
              return v11;
            }

            result = sub_100045A94(v8, v9);
            if (result && (result & 7) == 0)
            {
              (*(*result + 160))(result, a3 != 0, v10);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C24F8(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = sub_10005AC88(v7);
  if (v2)
  {
    goto LABEL_18;
  }

  v10 = v8;
  v11 = sub_100045A94(v8, v9);
  if (!v11 || (v11 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  return (*(*v11 + 168))(v11, v12);
}

uint64_t sub_1000C25B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 0xCu, 1u, 1u, 0, 0, 0, &unk_10012CE74, 1u), *result = off_1001179C0, *(result + 92) = 0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CE30;
    byte_10012CE38 = 0;
    dword_10012CE3C = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C265C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000C26A4(unint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    syslog(4, "Unknown id(%d)\n", a2);
    return 0;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {

    return sub_1000BBC00(result, 0, 0x1Fu);
  }

  return result;
}

BOOL sub_1000C2714(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2748(uint64_t result, uint64_t a2, int a3)
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

  if (a2)
  {
    v5 = 4;
    syslog(4, "Unknown id(%d) value=%d\n", a2, a3);
    return v5;
  }

  v6 = *(result + 93);
  if (v6 < 2)
  {
    if ((v6 & 1) == 0)
    {
LABEL_18:
      v7 = *(v3 + 56);
      if (v7 && (v7 & 7) == 0)
      {
        v5 = 0;
        *(v7 + 16) = a3;
        return v5;
      }

      goto LABEL_22;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    result = sub_100048620(result, a2);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_22;
    }

    result = (*(*result + 208))(result);
    if (result)
    {
      result = sub_10004B1AC(result, a2);
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 456))(result);
LABEL_17:
        *(v3 + 92) = a3;
        goto LABEL_18;
      }
    }

    else
    {
LABEL_14:
      result = sub_10004B1AC(result, a2);
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 464))(result);
        goto LABEL_17;
      }
    }

LABEL_22:
    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000C2890(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (a2)
    {
      syslog(4, "Unknown or invalid id(%d)\n", a2);
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    v2 = *(result + 92);
    if (v2 < 2)
    {
      return v2 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000C28F4(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 136))(result, a2, a3 != 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2930(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 112))(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C2978(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 93) = a4;
    return (*(*result + 72))(result, 0, a2, a3, 0);
  }

  return result;
}

void sub_1000C29C4(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000C29D8(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000C29EC(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = *(result + 56);
  if (__CFADD__(v5, 24 * a2))
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5 + 24 * a2;
  if ((v6 & 7) != 0)
  {
    goto LABEL_18;
  }

  v7 = *v6;
  if (!*v6)
  {
    return result;
  }

  if ((v7 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v8 = *(v7 + 8);
  if (v8 >= 2)
  {
    goto LABEL_20;
  }

  if ((v8 & 1) == 0)
  {
    return result;
  }

  v9 = *(v6 + 10);
  if (v9 > 1)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  if (v9)
  {
    *(v7 + 8) = 0;
    *(v6 + 16) = *(v7 + 12);
    *(v6 + 8) = 1;
    *(result + 36) = 1;
    if (a4)
    {
      result = (*(*result + 152))(result);
      if (result)
      {
        v10 = *(*v4 + 40);

        return v10(v4, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000C2B04(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  if (*(result + 88) <= a2)
  {
    goto LABEL_30;
  }

  v4 = *(result + 80);
  if (__CFADD__(v4, 4 * a2))
  {
    goto LABEL_32;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = (v4 + 4 * a2);
  if ((v5 & 3) != 0)
  {
    goto LABEL_31;
  }

  v6 = *v5;
  if ((v6 + 4) > 7)
  {
    goto LABEL_33;
  }

  if (v6)
  {
LABEL_30:
    __break(0x5518u);
    goto LABEL_31;
  }

  v7 = a2;
  v8 = *(result + 56);
  if (__CFADD__(v8, 24 * a2))
  {
    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8 + 24 * a2;
  if ((v9 & 7) != 0)
  {
    goto LABEL_31;
  }

  v10 = *(v9 + 10);
  if (v10 > 1)
  {
    goto LABEL_33;
  }

  v11 = 24 * a2;
  if (v10)
  {
    result = (*(*result + 152))(result);
    v12 = v2[7];
    v13 = ~v12;
    if ((result & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v11 > v13)
    {
      goto LABEL_32;
    }

    if (v12)
    {
      v14 = v12 + 24 * v7;
      if ((v14 & 7) == 0)
      {
        v15 = *(v14 + 11);
        if (v15 > 1)
        {
          goto LABEL_33;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }

LABEL_31:
    __break(0x5516u);
    goto LABEL_32;
  }

LABEL_20:
  result = (*(*v2 + 120))(v2, a2);
  v12 = v2[7];
  v13 = ~v12;
  if (v11 > ~v12)
  {
    goto LABEL_32;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

  v16 = v12 + 24 * v7;
  if ((v16 & 7) != 0)
  {
    goto LABEL_31;
  }

  *(v16 + 16) = result;
  v17 = *(v16 + 10);
  if (v17 <= 1)
  {
    if ((v17 & 1) == 0)
    {
      *(v16 + 10) = 1;
    }

LABEL_26:
    if (v11 <= v13)
    {
      if (v12)
      {
        v18 = v12 + 24 * v7;
        if ((v18 & 7) == 0)
        {
          return *(v18 + 16) != 0;
        }
      }

      goto LABEL_31;
    }

LABEL_32:
    __break(0x5513u);
  }

LABEL_33:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C2CB4(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (!result)
  {
    goto LABEL_32;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_32;
  }

  v6 = *(result + 24);
  if (v6 >= 0x10)
  {
    goto LABEL_33;
  }

  if (v6 != 2)
  {
    result = (*(*result + 128))(result, a2);
    if (!result)
    {
      return 4;
    }
  }

  v11 = *(v5 + 80);
  if (!__CFADD__(v11, 4 * a2))
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = (v11 + 4 * a2);
    if ((v12 & 3) != 0)
    {
      goto LABEL_32;
    }

    v13 = *v12;
    if ((v13 + 4) > 7)
    {
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      __break(0x5518u);
      goto LABEL_32;
    }

    v14 = *(v5 + 56);
    if (!__CFADD__(v14, 24 * a2))
    {
      if (v14)
      {
        v15 = v14 + 24 * a2;
        if ((v15 & 7) == 0)
        {
          *(v15 + 16) = a3;
          *(v15 + 8) = 1;
          *(v5 + 36) = 1;
          v16 = *(v15 + 10);
          if (v16 > 1)
          {
            goto LABEL_33;
          }

          if ((v16 & 1) == 0)
          {
            *(v15 + 10) = 1;
          }

          if (!a4)
          {
            goto LABEL_29;
          }

          if (a5)
          {
            goto LABEL_29;
          }

          v17 = *v15;
          if (!v17)
          {
            goto LABEL_29;
          }

          if ((v17 & 7) == 0)
          {
            if (*(v17 + 8) <= 1u)
            {
              if (*(v17 + 8))
              {
LABEL_29:
                (*(*v5 + 40))(v5, 0);
                return 0;
              }

              *(v17 + 8) = 1;
              result = (*(*v5 + 120))(v5, a2);
              v18 = *(v5 + 56);
              if (__CFADD__(v18, 24 * a2))
              {
                goto LABEL_34;
              }

              if (v18)
              {
                v19 = (v18 + 24 * a2);
                if ((v19 & 7) == 0)
                {
                  v20 = *v19;
                  if (v20)
                  {
                    if ((v20 & 7) == 0)
                    {
                      *(v20 + 12) = result;
                      goto LABEL_29;
                    }
                  }
                }
              }

              goto LABEL_32;
            }

LABEL_33:
            __break(0x550Au);
            goto LABEL_34;
          }
        }
      }

LABEL_32:
      __break(0x5516u);
      goto LABEL_33;
    }
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000C2EA0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  if (*(result + 88) <= a2)
  {
    goto LABEL_30;
  }

  v4 = *(result + 80);
  if (__CFADD__(v4, 4 * a2))
  {
    goto LABEL_32;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = (v4 + 4 * a2);
  if ((v5 & 3) != 0)
  {
    goto LABEL_31;
  }

  v6 = *v5;
  if ((v6 + 4) > 7)
  {
    goto LABEL_33;
  }

  if (v6 != 1)
  {
LABEL_30:
    __break(0x5518u);
    goto LABEL_31;
  }

  v7 = a2;
  v8 = *(result + 56);
  if (__CFADD__(v8, 24 * a2))
  {
    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8 + 24 * a2;
  if ((v9 & 7) != 0)
  {
    goto LABEL_31;
  }

  v10 = *(v9 + 10);
  if (v10 > 1)
  {
    goto LABEL_33;
  }

  v11 = 24 * a2;
  if (v10)
  {
    result = (*(*result + 152))(result);
    v12 = v2[7];
    v13 = ~v12;
    if ((result & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v11 > v13)
    {
      goto LABEL_32;
    }

    if (v12)
    {
      v14 = v12 + 24 * v7;
      if ((v14 & 7) == 0)
      {
        v15 = *(v14 + 11);
        if (v15 > 1)
        {
          goto LABEL_33;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }

LABEL_31:
    __break(0x5516u);
    goto LABEL_32;
  }

LABEL_20:
  result = (*(*v2 + 120))(v2, a2);
  v12 = v2[7];
  v13 = ~v12;
  if (v11 > ~v12)
  {
    goto LABEL_32;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

  v16 = v12 + 24 * v7;
  if ((v16 & 7) != 0)
  {
    goto LABEL_31;
  }

  *(v16 + 16) = result;
  v17 = *(v16 + 10);
  if (v17 <= 1)
  {
    if ((v17 & 1) == 0)
    {
      *(v16 + 10) = 1;
    }

LABEL_26:
    if (v11 <= v13)
    {
      if (v12)
      {
        v18 = v12 + 24 * v7;
        if ((v18 & 7) == 0)
        {
          return *(v18 + 16);
        }
      }

      goto LABEL_31;
    }

LABEL_32:
    __break(0x5513u);
  }

LABEL_33:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C304C(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!result || (v6 = result, (result & 7) != 0))
  {
LABEL_28:
    __break(0x5516u);
LABEL_29:
    v12 = (*(*v6 + 80))(v6, v5, a3, a4);
    v11 = 0;
    if (!v4)
    {
      return v12 & 1;
    }

LABEL_30:
    *v4 = v11 & 1;
    return v12 & 1;
  }

  v7 = *(result + 28);
  if (v7 <= 3)
  {
    v4 = a3;
    v5 = a2;
    if (v7 != 1)
    {
      goto LABEL_29;
    }

    if (!*(result + 40))
    {
      sub_1000E1D34();
    }

    result = *(result + 48);
    if (result)
    {
      v8 = a4;
      pthread_mutex_lock(result);
      v9 = *(v6 + 40);
      if (v9)
      {
        if ((v9 & 7) == 0)
        {
          v10 = *(v6 + 40);
          if (v10)
          {
            if ((v10 & 7) == 0)
            {
              v11 = 0;
              v12 = v8 ^ 1;
              while (1)
              {
                v9 = *(v9 + 8);
                if (v9 == v10)
                {
                  break;
                }

                if (v9)
                {
                  v13 = (v9 & 7) == 0;
                }

                else
                {
                  v13 = 0;
                }

                if (v13)
                {
                  v14 = *(v9 + 16);
                  if (v14 && (*(v9 + 16) & 7) == 0)
                  {
                    v16 = (*(*v14 + 80))(*(v9 + 16), v5);
                    if (v16 == v8)
                    {
                      v12 = v16;
                    }

                    else
                    {
                      v11 |= v14 != v6;
                    }

                    v10 = *(v6 + 40);
                    if (v10)
                    {
                      if ((v10 & 7) == 0)
                      {
                        continue;
                      }
                    }
                  }
                }

                goto LABEL_28;
              }

              pthread_mutex_unlock(*(v6 + 48));
              if (!v4)
              {
                return v12 & 1;
              }

              goto LABEL_30;
            }
          }
        }
      }

      goto LABEL_28;
    }

    __break(0x5518u);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000C31D4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v2 = *(result + 28);
  if (v2 < 4)
  {
    if (v2 != 2)
    {
      return 1;
    }

    result = *(result + 64);
    if (!result)
    {
      return 1;
    }

    if ((result & 7) == 0)
    {
      pthread_mutex_lock(result);
      v3 = sub_1000C3270(v1) ? sub_1000C32E4(v1) : 0;
      result = *(v1 + 64);
      if (result)
      {
        if ((result & 7) == 0)
        {
          pthread_mutex_unlock(result);
          return v3;
        }
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(0x550Au);
  return result;
}

BOOL sub_1000C3270(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v1 = *(result + 28);
  if (v1 >= 4)
  {
    goto LABEL_13;
  }

  if (v1 != 2)
  {
    return 1;
  }

  v2 = *(result + 64);
  if (!v2)
  {
    return 1;
  }

  if ((v2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v3 = *(v2 + 88);
  if (*(v2 + 64) != *(result + 16))
  {
    v4 = 0;
    return v3 <= v4;
  }

  v4 = *(result + 37);
  if (v4 <= 1)
  {
    return v3 <= v4;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C32E4(uint64_t result)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(result + 28);
  if (v2 < 4)
  {
    if (v2 != 2)
    {
      return 1;
    }

    v3 = *(result + 64);
    if (!v3)
    {
      return 1;
    }

    v5 = (result + 16);
    v4 = *(result + 16);
    if (!v4)
    {
      goto LABEL_16;
    }

    if ((v3 & 7) != 0)
    {
      goto LABEL_19;
    }

    if (*(v3 + 64) == v4)
    {
      goto LABEL_16;
    }

    v6 = *(result + 37);
    if (v6 <= 1)
    {
      if ((v6 & 1) == 0)
      {
        result = sub_1000219A8(v3 + 72, (result + 16));
        *(v1 + 37) = 1;
      }

      *(v1 + 36) = 1;
      v3 = *(v1 + 64);
      if (v3 && (v3 & 7) == 0)
      {
        if (!*(v3 + 64))
        {
          *(v3 + 64) = *v5;
        }

LABEL_16:
        if ((v3 & 7) == 0)
        {
          return *(v3 + 64) == *v5;
        }
      }

LABEL_19:
      __break(0x5516u);
    }
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000C33C0(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v1 = *(result + 28);
  if (v1 < 4)
  {
    if (v1 != 2)
    {
      return 1;
    }

    v2 = *(result + 64);
    if (!v2)
    {
      return 1;
    }

    if ((v2 & 7) == 0)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        return v3 == *(result + 16);
      }

      return 1;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C3418(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v2 = *(result + 28);
  if (v2 < 4)
  {
    if (v2 != 2)
    {
      return 1;
    }

    result = *(result + 64);
    if (!result)
    {
      return 1;
    }

    if ((result & 7) == 0)
    {
      pthread_mutex_lock(result);
      v3 = sub_1000C3270(v1);
      result = *(v1 + 64);
      if (result)
      {
        if ((result & 7) == 0)
        {
          pthread_mutex_unlock(result);
          return v3;
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C34A0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v2 = *(result + 28);
  if (v2 < 4)
  {
    if (v2 != 2)
    {
      return 1;
    }

    result = *(result + 64);
    if (!result)
    {
      return 1;
    }

    if ((result & 7) == 0)
    {
      pthread_mutex_lock(result);
      v3 = sub_1000C32E4(v1);
      result = *(v1 + 64);
      if (result)
      {
        if ((result & 7) == 0)
        {
          pthread_mutex_unlock(result);
          return v3;
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C3528(uint64_t result)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  v2 = *(result + 28);
  if (v2 >= 4)
  {
    goto LABEL_28;
  }

  if (v2 != 2)
  {
    return result;
  }

  result = *(result + 64);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  result = pthread_mutex_lock(result);
  v3 = *(v1 + 37);
  if (v3 > 1)
  {
LABEL_28:
    __break(0x550Au);
    return result;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(v1 + 64);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_27:
    __break(0x5516u);
    goto LABEL_28;
  }

  sub_10005F290(v4 + 72, (v1 + 16));
  *(v1 + 37) = 0;
LABEL_12:
  *(v1 + 36) = 0;
  result = *(v1 + 64);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  v5 = *(result + 64);
  if (!v5 || v5 != *(v1 + 16))
  {

    return pthread_mutex_unlock(result);
  }

  *(result + 64) = 0;
  v6 = *(result + 88);
  result = pthread_mutex_unlock(result);
  if (!v6)
  {
    return result;
  }

  result = sub_1000C4254(result, v7);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  if (*(v1 + 24) > 0xFu)
  {
    goto LABEL_28;
  }

  v8 = *(*result + 48);

  return v8();
}

uint64_t sub_1000C366C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 88);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C3684(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (*(result + 88) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(result + 80);
  if (__CFADD__(v2, 4 * a2))
  {
    goto LABEL_11;
  }

  if (!v2 || (v3 = (v2 + 4 * a2), (v3 & 3) != 0))
  {
LABEL_10:
    __break(0x5516u);
LABEL_11:
    __break(0x5513u);
    goto LABEL_12;
  }

  result = *v3;
  if ((result + 4) >= 8)
  {
LABEL_12:
    __break(0x550Au);
  }

  return result;
}

pthread_mutex_t *sub_1000C36E0(pthread_mutex_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_destroy(result);
    sub_1000187F0(v1[1].__opaque);
    return v1;
  }

  return result;
}

uint64_t sub_1000C3724(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator delete();
  }

  __break(0x5516u);
  return result;
}

void *sub_1000C3748(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = 0;
      *result = off_100117D10;
      do
      {
        v3 = &v1[v2];
        v4 = &v1[v2 + 10];
        v3[9] = 0;
        v3[10] = v4;
        v3[11] = v4;
        v3[12] = 0;
        result = pthread_mutex_init(&v1[v2 + 1], 0);
        v2 += 12;
      }

      while (v2 != 168);
      v5 = 0;
      while (v5 <= ~(v1 + 197))
      {
        v1[v5 / 8 + 197] = 0;
        if (v5 > ~(v1 + 169))
        {
          break;
        }

        v1[v5 / 8 + 169] = 0;
        if (v5 > ~(v1 + 183))
        {
          break;
        }

        v1[v5 / 8 + 183] = 0;
        v5 += 8;
        if (v5 == 112)
        {
          return v1;
        }
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000C381C(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000C3878(result);
  }
}

uint64_t sub_1000C3830(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000C3878(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000C3878(void *a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
  }

  else
  {
    v2 = 0;
    *a1 = off_100117D10;
    v3 = a1 + 197;
    v4 = ~(a1 + 197);
    v5 = a1 + 169;
    v6 = ~(a1 + 169);
    v7 = a1 + 183;
    v8 = ~(a1 + 183);
    while (1)
    {
      v9 = 8 * v2;
      if (8 * v2 > v4)
      {
        break;
      }

      v10 = v3[v2];
      if (v10)
      {
        v11 = *(v10 - 8);
        if (!v11)
        {
LABEL_10:
          operator delete[]();
        }

        v12 = -16 * v11;
        while ((v10 & 7) == 0)
        {
          v12 += 16;
          if (!v12)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_25;
      }

      if (v9 > v6)
      {
        break;
      }

      v13 = v5[v2];
      if (v13)
      {
        if ((v13 & 7) != 0)
        {
          goto LABEL_25;
        }

        sub_1000187F0(v13);
        v14 = v5[v2];
        if (v14)
        {
          if ((v14 & 7) == 0)
          {
            sub_1000187F0(v5[v2]);
            operator delete();
          }

          goto LABEL_25;
        }

        v5[v2] = 0;
      }

      if (v9 > v8)
      {
        break;
      }

      v15 = v7[v2];
      if (v15)
      {
        pthread_mutex_destroy(v15);
        free(v7[v2]);
        v7[v2] = 0;
      }

      if (++v2 == 14)
      {
        for (i = 157; i != -11; i -= 12)
        {
          sub_1000C36E0(&a1[i]);
        }

        return;
      }
    }
  }

  __break(0x5513u);
}

uint64_t sub_1000C39E8(uint64_t a1, uint64_t a2)
{
  result = sub_1000C4254(a1, a2);
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(*result + 48);

    return v3();
  }

  return result;
}

uint64_t sub_1000C3A5C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C3AD4()
{
  qword_10012C788 = 0;
  qword_10012C780 = 0;
  qword_10012C778 = &qword_10012C780;
  __cxa_atexit(sub_1000BA510, &qword_10012C778, &_mh_execute_header);
  qword_10012C7D0 = 0;
  qword_10012C7D8 = &qword_10012C7D8;
  qword_10012C7E0 = &qword_10012C7D8;
  unk_10012C7E8 = 0;
  pthread_mutex_init(&stru_10012C790, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C790, &_mh_execute_header);
  qword_10012C830 = 0;
  qword_10012C838 = &qword_10012C838;
  qword_10012C840 = &qword_10012C838;
  unk_10012C848 = 0;
  pthread_mutex_init(&stru_10012C7F0, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C7F0, &_mh_execute_header);
  qword_10012C890 = 0;
  qword_10012C898 = &qword_10012C898;
  qword_10012C8A0 = &qword_10012C898;
  unk_10012C8A8 = 0;
  pthread_mutex_init(&stru_10012C850, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C850, &_mh_execute_header);
  qword_10012C8F0 = 0;
  qword_10012C8F8 = &qword_10012C8F8;
  qword_10012C900 = &qword_10012C8F8;
  unk_10012C908 = 0;
  pthread_mutex_init(&stru_10012C8B0, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C8B0, &_mh_execute_header);
  qword_10012C950 = 0;
  qword_10012C958 = &qword_10012C958;
  qword_10012C960 = &qword_10012C958;
  unk_10012C968 = 0;
  pthread_mutex_init(&stru_10012C910, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C910, &_mh_execute_header);
  qword_10012C9B0 = 0;
  qword_10012C9B8 = &qword_10012C9B8;
  qword_10012C9C0 = &qword_10012C9B8;
  unk_10012C9C8 = 0;
  pthread_mutex_init(&stru_10012C970, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C970, &_mh_execute_header);
  qword_10012CA10 = 0;
  qword_10012CA18 = &qword_10012CA18;
  qword_10012CA20 = &qword_10012CA18;
  unk_10012CA28 = 0;
  pthread_mutex_init(&stru_10012C9D0, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012C9D0, &_mh_execute_header);
  qword_10012CA70 = 0;
  qword_10012CA78 = &qword_10012CA78;
  qword_10012CA80 = &qword_10012CA78;
  unk_10012CA88 = 0;
  pthread_mutex_init(&stru_10012CA30, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CA30, &_mh_execute_header);
  qword_10012CAD0 = 0;
  qword_10012CAD8 = &qword_10012CAD8;
  qword_10012CAE0 = &qword_10012CAD8;
  unk_10012CAE8 = 0;
  pthread_mutex_init(&stru_10012CA90, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CA90, &_mh_execute_header);
  qword_10012CB30 = 0;
  qword_10012CB38 = &qword_10012CB38;
  qword_10012CB40 = &qword_10012CB38;
  unk_10012CB48 = 0;
  pthread_mutex_init(&stru_10012CAF0, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CAF0, &_mh_execute_header);
  qword_10012CB90 = 0;
  qword_10012CB98 = &qword_10012CB98;
  qword_10012CBA0 = &qword_10012CB98;
  unk_10012CBA8 = 0;
  pthread_mutex_init(&stru_10012CB50, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CB50, &_mh_execute_header);
  qword_10012CBF0 = 0;
  qword_10012CBF8 = &qword_10012CBF8;
  qword_10012CC00 = &qword_10012CBF8;
  unk_10012CC08 = 0;
  pthread_mutex_init(&stru_10012CBB0, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CBB0, &_mh_execute_header);
  qword_10012CC50 = 0;
  qword_10012CC58 = &qword_10012CC58;
  qword_10012CC60 = &qword_10012CC58;
  unk_10012CC68 = 0;
  pthread_mutex_init(&stru_10012CC10, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CC10, &_mh_execute_header);
  qword_10012CCB0 = 0;
  qword_10012CCB8 = &qword_10012CCB8;
  qword_10012CCC0 = &qword_10012CCB8;
  unk_10012CCC8 = 0;
  pthread_mutex_init(&stru_10012CC70, 0);
  __cxa_atexit(sub_1000BA524, &stru_10012CC70, &_mh_execute_header);
  qword_10012CCD0 = off_100117CE0;
  byte_10012CCD8 = 0;
  qword_10012CCE0 = off_100117CE0;
  byte_10012CCE8 = 0;
  qword_10012CCF0 = off_100117CE0;
  byte_10012CCF8 = 0;
  __cxa_atexit(sub_1000BA538, &qword_10012CCD0, &_mh_execute_header);
  qword_10012CD00 = off_100117CE0;
  byte_10012CD08 = 0;
  qword_10012CD10 = off_100117CE0;
  byte_10012CD18 = 0;
  qword_10012CD20 = off_100117CE0;
  byte_10012CD28 = 0;
  qword_10012CD30 = off_100117CE0;
  byte_10012CD38 = 0;
  qword_10012CD40 = off_100117CE0;
  byte_10012CD48 = 0;
  qword_10012CD50 = off_100117CE0;
  byte_10012CD58 = 0;
  qword_10012CD60 = off_100117CE0;
  byte_10012CD68 = 0;
  qword_10012CD70 = off_100117CE0;
  byte_10012CD78 = 0;
  qword_10012CD80 = off_100117CE0;
  byte_10012CD88 = 0;
  __cxa_atexit(sub_1000BA54C, &qword_10012CD00, &_mh_execute_header);
  qword_10012CD90 = off_100117CE0;
  byte_10012CD98 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CD90, &_mh_execute_header);
  qword_10012CDA0 = off_100117CE0;
  byte_10012CDA8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDA0, &_mh_execute_header);
  qword_10012CDB0 = off_100117CE0;
  byte_10012CDB8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDB0, &_mh_execute_header);
  qword_10012CDC0 = off_100117CE0;
  byte_10012CDC8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDC0, &_mh_execute_header);
  qword_10012CDD0 = off_100117CE0;
  byte_10012CDD8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDD0, &_mh_execute_header);
  qword_10012CDE0 = off_100117CE0;
  byte_10012CDE8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDE0, &_mh_execute_header);
  qword_10012CDF0 = off_100117CE0;
  byte_10012CDF8 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CDF0, &_mh_execute_header);
  qword_10012CE00 = off_100117CE0;
  byte_10012CE08 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CE00, &_mh_execute_header);
  qword_10012CE10 = off_100117CE0;
  byte_10012CE18 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CE10, &_mh_execute_header);
  qword_10012CE20 = off_100117CE0;
  byte_10012CE28 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CE20, &_mh_execute_header);
  qword_10012CE30 = off_100117CE0;
  byte_10012CE38 = 0;
  __cxa_atexit(sub_1000BA560, &qword_10012CE30, &_mh_execute_header);
  qword_10012CE40 = off_100117CE0;
  byte_10012CE48 = 0;

  return __cxa_atexit(sub_1000BA560, &qword_10012CE40, &_mh_execute_header);
}

uint64_t sub_1000C4254(uint64_t a1, uint64_t a2)
{
  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  return qword_10012C490;
}

uint64_t sub_1000C42D0(uint64_t result)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  v2 = sub_100092584(result);
  sub_1000588E8(v2);
  *v1 = off_100117DA0;
  *(v1 + 176) = off_100117EB8;
  *(v1 + 184) = off_100117F18;
  *(v1 + 192) = off_100117F70;
  *(v1 + 200) = 0;
  *(v1 + 272) = v1 + 272;
  *(v1 + 280) = v1 + 272;
  *(v1 + 288) = 0;
  *(v1 + 432) = 0;
  *(v1 + 448) = 0;
  result = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  *(v1 + 296) = result;
  if (!result)
  {
    goto LABEL_24;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000C46E0;
  handler[3] = &unk_100117F88;
  handler[4] = v1;
  dispatch_source_set_event_handler(result, handler);
  result = *(v1 + 296);
  if (!result)
  {
    goto LABEL_24;
  }

  dispatch_source_set_timer(result, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  result = *(v1 + 296);
  if (!result)
  {
    goto LABEL_24;
  }

  dispatch_resume(result);
  *(v1 + 440) = dispatch_semaphore_create(0);
  sub_1000CB970((v1 + 208));
  pthread_mutex_init((v1 + 304), 0);
  pthread_mutex_init((v1 + 456), 0);
  v3 = pthread_mutex_init((v1 + 368), 0);
  dword_10012B680 = 1;
  dword_10012B684 = 1;
  result = sub_100048620(v3, v4);
  if (!result || (result & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
LABEL_24:
    __break(0x5510u);
    goto LABEL_25;
  }

  *(v1 + 204) = (*(*result + 208))(result);
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v20, 1u);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = off_100113858;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDDDC(v20, &v18);
  v6 = 1000 * v18;
  if ((v18 * 1000) >> 64 != (1000 * v18) >> 63)
  {
LABEL_25:
    __break(0x550Cu);
    goto LABEL_26;
  }

  v7 = __OFADD__(v6, v19 / 1000000);
  v8 = v6 + v19 / 1000000;
  if (!v7)
  {
    *(v1 + 520) = v8;
    *(v1 + 528) = v8;
    result = sub_100046A8C(result, v5);
    if (result && (result & 7) == 0)
    {
      v9 = (*(*result + 40))(result);
      v11 = v9;
      if (!v9)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapProtocolMgr::CIapProtocolMgr: ERROR: Lingo mask = 0 !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapProtocolMgr.cpp", 265);
      }

      dword_10012CE80 = v11;
      result = sub_10004B1AC(v9, v10);
      if (result)
      {
        if ((result & 7) == 0)
        {
          v12 = (*(*result + 16))(result, v1 + 176);
          result = sub_100048620(v12, v13);
          if (result)
          {
            if ((result & 7) == 0)
            {
              v14 = (*(*result + 88))(result, v1 + 184);
              result = sub_100046A8C(v14, v15);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v16 = (*(*result + 16))(result, v1 + 192);
                  *(v1 + 201) = 0;
                  result = sub_10002BB1C(v16, v17);
                  if (result)
                  {
                    if ((result & 7) == 0)
                    {
                      byte_10012C760 = (*(*result + 360))(result, "_IapAllowAsyncProcessLargeDataForAll");
                      v20[0] = off_100113858;
                      sub_1000DDCF4(v20);
                      return v1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000C46E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = pthread_mutex_lock((v1 + 208));
  if (((v1 + 272) & 7) != 0)
  {
    goto LABEL_23;
  }

  v3 = *(v1 + 288);
  if (v3)
  {
    if (!v3)
    {
LABEL_24:
      __break(0x5515u);
      return result;
    }

    v4 = *(v1 + 280);
    if (v4)
    {
      v5 = (*(v1 + 280) & 7) == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = v4[2];
      result = sub_100021528(v1 + 272, v4);
      if (v6 && (v6 & 7) == 0)
      {
        if (*(v6 + 2))
        {
          pthread_mutex_lock(&stru_10012B758);
          if (sub_1000D6B98(*(v6 + 2)))
          {
            (*(*v1 + 48))(v1, *v6, *(v6 + 1), *(v6 + 2), 0);
          }

          pthread_mutex_unlock(&stru_10012B758);
        }

        else
        {
          (*(*v1 + 48))(v1, *v6, *(v6 + 1), 0, 0);
        }

        operator delete();
      }
    }

LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  return pthread_mutex_unlock((v1 + 208));
}

uint64_t sub_1000C4840(uint64_t result)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  *result = off_100117DA0;
  *(result + 176) = off_100117EB8;
  *(result + 184) = off_100117F18;
  *(result + 192) = off_100117F70;
  result = *(result + 296);
  if (!result)
  {
LABEL_27:
    __break(0x5510u);
    return result;
  }

  dispatch_release(result);
  result = pthread_mutex_lock(&v1[26]);
  while (v1[36].isa)
  {
    isa = v1[35].isa;
    if (!isa || (v1[35].isa & 7) != 0)
    {
      goto LABEL_26;
    }

    v4 = isa[2];
    result = sub_100021528(&v1[34], isa);
    if (v4)
    {
      if ((v4 & 7) == 0)
      {
        operator delete();
      }

      goto LABEL_26;
    }
  }

  v5 = pthread_mutex_unlock(&v1[26]);
  result = sub_100048620(v5, v6);
  if (!result || (result & 7) != 0 || (v7 = (*(*result + 96))(result, v1 + 23), (result = sub_100046A8C(v7, v8)) == 0) || (result & 7) != 0 || (v9 = (*(*result + 24))(result, v1 + 24), (result = sub_10004B1AC(v9, v10)) == 0) || (result & 7) != 0 || (v11 = (*(*result + 24))(result, v1 + 22), (result = sub_1000388B8(v11, v12)) == 0) || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
    goto LABEL_27;
  }

  (*(*result + 24))(result, v1 + 22);
  sub_100094164(v1);
  pthread_mutex_destroy(&v1[57]);
  pthread_mutex_destroy(&v1[38]);
  pthread_mutex_destroy(&v1[46]);
  pthread_mutex_destroy(&v1[26]);
  result = v1[55].isa;
  if (!result)
  {
    goto LABEL_27;
  }

  dispatch_release(result);
  sub_1000187F0(&v1[34].isa);
  v13 = sub_1000588E8(v1);

  return sub_100092604(v13);
}

NSObject *sub_1000C4AA8(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000C4840(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000C4ABC(uint64_t a1)
{
  result = (a1 - 176);
  if ((result & 7) == 0)
  {
    return sub_1000C4840(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000C4AD0(uint64_t a1)
{
  result = (a1 - 184);
  if ((result & 7) == 0)
  {
    return sub_1000C4840(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000C4AE4(uint64_t a1)
{
  result = (a1 - 192);
  if ((result & 7) == 0)
  {
    return sub_1000C4840(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000C4AF8(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000C4840(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C4B58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    v4 = *(*a2 + 32);

    return v4(a2, a3);
  }

  return result;
}

uint64_t sub_1000C4BBC(unsigned int *result, __darwin_time_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_122;
  }

  if (!a2)
  {
    return 12;
  }

  v4 = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8[0])
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_122;
    }

    v6 = *(a2 + 8);
    sub_1000C538C(v6);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_122;
    }

    v4 = (*(*v6 + 208))(v6);
    if (v4 >= 5)
    {
      goto LABEL_125;
    }

    if (~qword_10012C4A0 < 8 * v4)
    {
      goto LABEL_126;
    }

    v4 = qword_10012C4A0[v4];
    if (v4)
    {
      v7 = (v4 & 7) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_122;
    }

    v8 = *(v4 + 76);
    if (v8 >= 8)
    {
      goto LABEL_124;
    }

    if (v8 >= 4)
    {
LABEL_125:
      __break(0x5512u);
      goto LABEL_126;
    }

    if (~dword_10012B6D8 < 4 * v8)
    {
LABEL_126:
      __break(0x5513u);
LABEL_127:
      __break(0x550Cu);
      goto LABEL_128;
    }

    if (dword_10012B6D8[v8])
    {
      v4 = (*(*v4 + 104))(v4, *(a2 + 128), 0, 0);
    }
  }

  v4 = sub_10002BB1C(v4, v5);
  if (!v4 || (v4 & 7) != 0 || (a2 & 7) != 0)
  {
    goto LABEL_122;
  }

  if ((*(a2 + 64) + 32) >= 0x40)
  {
    goto LABEL_124;
  }

  (*(*v4 + 280))(v4);
  pthread_mutex_lock((result + 92));
  v36 = 0;
  v9 = *(a2 + 8);
  v4 = (*(*a2 + 40))(a2);
  if (v4)
  {
    v4 = (*(*a2 + 40))(a2);
    if (v4 == 1)
    {
      LODWORD(v10) = 36;
    }

    else
    {
      LODWORD(v10) = 2;
    }

    if (v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    LODWORD(v10) = 0;
    if (v9)
    {
LABEL_29:
      if ((v9 & 7) != 0)
      {
        goto LABEL_122;
      }

      v4 = (*(*v9 + 208))(v9);
      v11 = v4 == 0;
      goto LABEL_34;
    }
  }

  v11 = 0;
LABEL_34:
  v12 = *(result + 432);
  if (v12 >= 2)
  {
    goto LABEL_124;
  }

  if ((v11 & v12) != 0)
  {
    v10 = 16;
  }

  else
  {
    v10 = v10;
  }

  if (v9)
  {
    if ((v9 & 7) != 0)
    {
      goto LABEL_122;
    }

    v13 = *(v9 + 72);
    if (v13 >= 2)
    {
      goto LABEL_124;
    }

    if (v13)
    {
LABEL_42:
      v10 = 89;
LABEL_44:
      sub_1000B9034(a2);
LABEL_45:
      pthread_mutex_unlock((result + 92));
      return v10;
    }
  }

  if (v10)
  {
    goto LABEL_44;
  }

  v4 = (*(*result + 248))(result, a2, &v36);
  v10 = v4;
  if (v4)
  {
    v4 = sub_100094BFC(result, v4);
    if (v4)
    {
      if ((v10 & 7) != 0)
      {
        goto LABEL_122;
      }

      v4 = sub_10005ACA0(v10);
      if (v4)
      {
        goto LABEL_42;
      }
    }
  }

  v14 = *(a2 + 64);
  if ((v14 + 32) >= 0x40)
  {
    goto LABEL_124;
  }

  if (!v9)
  {
    __break(0x5518u);
    goto LABEL_121;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_122;
  }

  v15 = *(a2 + 126);
  v16 = *(v9 + 32);
  if (v16)
  {
    if ((v16 & 7) != 0)
    {
      goto LABEL_122;
    }

    v17 = *(v16 + 58);
    if (v17 > 1)
    {
      goto LABEL_124;
    }

    v18 = *(v16 + 57);
    if (v18 > 1)
    {
      goto LABEL_124;
    }

    v19 = v18 == 0;
  }

  else
  {
    v17 = 0;
    v19 = 1;
  }

  if ((v15 > 0x38 || ((1 << v15) & 0x100000000080002) == 0 || v14) && (*(*v9 + 208))(v9) && ((sub_1000D6BF8(v9) | v17) & 1) == 0)
  {
    sub_100078C34(v9, 0);
    sub_1000B9034(a2);
    if (!v10)
    {
      goto LABEL_45;
    }

    if ((v10 & 7) == 0)
    {
      if (!sub_100018DC0(v10) && *(v9 + 32))
      {
        sub_100093710(result, v9, v10);
      }

      goto LABEL_98;
    }

    goto LABEL_122;
  }

  sub_1000D6BE0(v9, 1);
  if (v19)
  {
    sub_100073E38(v9);
  }

  v4 = (*(*v9 + 256))(v9);
  if (!v10 || !v4 || !*(v9 + 32))
  {
LABEL_85:
    if (v14 > 14)
    {
LABEL_96:
      if (*(result + 200) <= 1u)
      {
        sub_1000DDEEC(0, 4, "Not init(%d) or invalid lingo (%d). Cannot process packet!\n", *(result + 200), v14);
        sub_1000B9034(a2);
        goto LABEL_98;
      }

      goto LABEL_124;
    }

    v26 = *(result + 200);
    if (v26 <= 1)
    {
      if ((v26 & 1) != 0 || (v4 = (*(*v9 + 224))(v9), v4))
      {
        if (!v10)
        {
          goto LABEL_45;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_122;
        }

        if (!sub_100018DC0(v10) && *(v9 + 32))
        {
          sub_100093710(result, v9, v10);
          sub_1000950E0(result, v10);
          if (!v29)
          {
            goto LABEL_123;
          }

          v28 = v29;
          v4 = (*(*result + 240))(result, v10, 0);
          if (!v4)
          {
            sub_1000B9034(a2);
            v10 = 89;
            goto LABEL_45;
          }

          v30 = *(v9 + 32);
          if (!v30 || (v30 & 7) != 0)
          {
            goto LABEL_122;
          }

          v31 = *(v30 + 52);
          if (v31 == v31 && v36 <= 1u)
          {
            if ((v36 & 1) != 0 && v31 != -1 && v31 != 100)
            {
              if ((v28 & 7) != 0)
              {
                goto LABEL_122;
              }

              v4 = sub_100062CA8(v28, 128, v31, 0, 0, 1u, 0);
            }

            if ((v28 & 7) != 0)
            {
              goto LABEL_122;
            }

            v32 = result[51];
            if (v32 <= 3)
            {
              sub_100062CA8(v28, 0, v32, 0, 0, 1u, 0);
LABEL_94:
              if ((v28 & 7) == 0)
              {
                sub_1000624DC(v28, a2);
LABEL_98:
                v10 = 0;
                goto LABEL_45;
              }

LABEL_122:
              __break(0x5516u);
LABEL_123:
              sub_1000E1D34();
            }
          }

          goto LABEL_124;
        }

        sub_1000950E0(result, v10);
        if (v27)
        {
          v28 = v27;
          goto LABEL_94;
        }

LABEL_121:
        sub_1000E1D34();
      }

      goto LABEL_96;
    }

LABEL_124:
    __break(0x550Au);
    goto LABEL_125;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_122;
  }

  v20 = sub_10005BDFC(v10);
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  v35[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v35, 1u);
  v34 = 0;
  v35[0] = off_100113858;
  v33 = 0;
  v4 = sub_1000DDDDC(v35, &v33);
  v21 = 1000 * v33;
  if ((v33 * 1000) >> 64 != (1000 * v33) >> 63)
  {
    goto LABEL_127;
  }

  v22 = v21 + v34 / 1000000;
  if (__OFADD__(v21, v34 / 1000000))
  {
LABEL_128:
    __break(0x5500u);
    goto LABEL_129;
  }

  v23 = *(v9 + 32);
  if (!v23 || (v23 & 7) != 0)
  {
    goto LABEL_122;
  }

  if (v20 != v20)
  {
    goto LABEL_124;
  }

  v24 = *(v23 + 80);
  if (v20 != 100 && v20 != -1 || (v4 = (*(*v9 + 208))(v9), v4))
  {
LABEL_84:
    v35[0] = off_100113858;
    v4 = sub_1000DDCF4(v35);
    goto LABEL_85;
  }

  if (v22 >= v24)
  {
    if (v22 - v24 >= 0x7D0)
    {
      v25 = *(v9 + 32);
      if (!v25 || (v25 & 7) != 0)
      {
        goto LABEL_122;
      }

      *(v25 + 80) = v22;
      (*(*v9 + 104))(v9);
    }

    goto LABEL_84;
  }

LABEL_129:
  __break(0x5515u);
  return v4;
}

uint64_t sub_1000C538C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
LABEL_18:
      __break(0x5516u);
      return result;
    }

    result = (*(*result + 208))(result);
    if (result >= 5)
    {
      goto LABEL_16;
    }

    if (~qword_10012C4A0 < 8 * result)
    {
      goto LABEL_17;
    }

    if (!qword_10012C4A0[result])
    {
      pthread_mutex_lock(&stru_10012B688);
      result = (*(*v1 + 208))(v1);
      if (result <= 4)
      {
        if (~qword_10012C4A0 >= 8 * result)
        {
          if (qword_10012C4A0[result])
          {
LABEL_12:
            pthread_mutex_unlock(&stru_10012B688);
            goto LABEL_13;
          }

          sub_1000CA360(v1, 0, 0);
          v3 = v2;
          result = (*(*v1 + 208))(v1);
          if (result <= 4)
          {
            if (~qword_10012C4A0 >= 8 * result)
            {
              qword_10012C4A0[result] = v3;
              goto LABEL_12;
            }

            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }

LABEL_16:
      __break(0x5512u);
      goto LABEL_17;
    }
  }

LABEL_13:

  return pthread_once(&stru_10012B6C8, sub_1000CA218);
}

uint64_t sub_1000C54F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __darwin_time_t a5)
{
  if (!result)
  {
    goto LABEL_67;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_67;
  }

  v6 = a5;
  if (!a5)
  {
    v6 = sub_100067278();
  }

  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_69;
  }

  if (dword_10012B6DC)
  {
    sub_1000C538C(a4);
    result = qword_10012C4C8;
    if (!qword_10012C4C8 || (qword_10012C4C8 & 7) != 0)
    {
      goto LABEL_67;
    }

    v10 = *(qword_10012C4C8 + 76);
    if (v10 >= 8)
    {
      goto LABEL_68;
    }

    if (v10 >= 4)
    {
LABEL_70:
      __break(0x5512u);
      return result;
    }

    if (~dword_10012B6D8 < 4 * v10)
    {
LABEL_69:
      __break(0x5513u);
      goto LABEL_70;
    }

    if (dword_10012B6D8[v10])
    {
      result = (*(*qword_10012C4C8 + 104))();
    }
  }

  if ((a2 & 0x20CC) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a4 != 0) & (a2 >> 10);
  }

  if ((~a2 & 0x2400) == 0)
  {
    __break(0x5518u);
    goto LABEL_67;
  }

  if (a4)
  {
    if ((a4 & 7) != 0)
    {
      goto LABEL_67;
    }

    v12 = *(a4 + 32);
    v13 = v11 ^ 1;
    if (!v12)
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 0;
      if (!v12)
      {
        v16 = 1;
        v15 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      result = (*(*a4 + 272))(a4);
      if (result)
      {
        v14 = *(a4 + 190);
        if (v14 >= 2)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    v17 = *(a4 + 32);
    if (!v17 || (v17 & 7) != 0)
    {
      goto LABEL_67;
    }

    v18 = *(v17 + 56);
    if (v18 > 1)
    {
      goto LABEL_68;
    }

    v16 = 0;
    v15 = v11 & ((a2 & 8) == 0) & v18;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 1;
  }

LABEL_34:
  v19 = 0;
  if ((a2 & 8) != 0 && !a3)
  {
    v20 = *(v5 + 432);
    if (v20 >= 2)
    {
      goto LABEL_68;
    }

    if (v16 & 1 | ((v20 & 1) == 0))
    {
      v19 = 0;
      goto LABEL_44;
    }

    if (a4)
    {
      if ((a4 & 7) == 0)
      {
        v21 = *(a4 + 32);
        if (v21)
        {
          if ((v21 & 7) == 0)
          {
            v19 = *(v21 + 64) == 0;
            goto LABEL_44;
          }
        }
      }
    }

LABEL_67:
    __break(0x5516u);
    goto LABEL_68;
  }

LABEL_44:
  result = sub_1000C5898(a2, a3);
  if (((v14 | v15 | v11 & v16) & 1) != 0 || v19)
  {
    goto LABEL_54;
  }

  if (*(v5 + 200) > 1u)
  {
LABEL_68:
    __break(0x550Au);
    goto LABEL_69;
  }

  if (*(v5 + 200))
  {
    if ((a2 & 0x100) != 0)
    {
      *(v5 + 204) = a3;
    }

    v22 = *v5;
    if (v11)
    {
      v23 = *(v22 + 176);

      return v23(v5, a2, a3, a4, 0, v6);
    }

    else
    {
      v24 = *(v22 + 192);

      return v24(v5, a2, a3, v6);
    }
  }

LABEL_54:
  if ((a2 & 0x400) != 0 && a3)
  {
    result = sub_1000C5A84(a3);
  }

  if ((a2 & 0x2000) != 0 && a3)
  {

    return sub_1000C5B0C(a3);
  }

  return result;
}

uint64_t sub_1000C5898(uint64_t result, uint64_t a2)
{
  if ((result & 0x18D) == 0)
  {
    result = sub_10002BB1C(result, a2);
    if (result && (result & 7) == 0)
    {
      v2 = *(*result + 296);

      return v2();
    }

    goto LABEL_20;
  }

  if (result <= 7)
  {
    if (result == 1 || result == 4)
    {
LABEL_14:
      result = sub_10002BB1C(result, a2);
      if (result && (result & 7) == 0)
      {
        v2 = *(*result + 288);

        return v2();
      }

LABEL_20:
      __break(0x5516u);
    }
  }

  else if (result == 256 || result == 128 || result == 8)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000C5A84(uint64_t result)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v1 = *(result + 40);
      if (!v1)
      {
        goto LABEL_6;
      }

      result = *result;
      if (result < 8)
      {
        v1();
LABEL_6:

        operator delete();
      }
    }

    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000C5B0C(uint64_t result)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v1 = *(result + 24);
      if (!v1)
      {
        goto LABEL_6;
      }

      result = *result;
      if ((result + 32) < 0x40)
      {
        v1();
LABEL_6:

        operator delete();
      }
    }

    __break(0x550Au);
  }

  return result;
}

void sub_1000C5B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  v7 = a6;
  v11 = a2;
  v12 = a3 != 100;
  if (a5)
  {
    sub_1000C5898(a2, a3);
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = -1431655766;
  v19 = v13;
  v15[0] = v11;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  LOBYTE(v19) = 0;
  DWORD1(v19) = 0;
  DWORD2(v19) = v7;
  if ((v11 & 0x4080) == 0)
  {
    goto LABEL_15;
  }

  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_25;
  }

  sub_1000C5D60(qword_10012C490, v11, a4);
  if (a5)
  {
    goto LABEL_15;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_25;
  }

  if (((*(*a4 + 272))(a4) & 1) != 0 || (sub_1000C5E88(result, sub_1000C5FE4, v15, a4, (v11 & 0x4000) == 0), !DWORD1(v19)))
  {
LABEL_15:
    LOBYTE(v19) = 1;
    sub_1000C5FE4(a4, v15);
    v14 = v12 & (v11 >> 7) ^ 1;
    if ((v11 & 4) != 0)
    {
      LOBYTE(v14) = 0;
    }

    if ((v14 & 1) == 0 && !DWORD1(v19))
    {
      if (qword_10012C498 != -1)
      {
        sub_1000E264C();
      }

      if (qword_10012C490 && (qword_10012C490 & 7) == 0)
      {
        sub_1000C686C(qword_10012C490, v11, a3, a4, 0x64u);
        return;
      }

LABEL_25:
      __break(0x5516u);
    }
  }
}

uint64_t sub_1000C5D60(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_23:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 208));
    v6 = *(v3 + 280);
    if (v6 != (v3 + 272))
    {
      while (1)
      {
        if (!v6 || (v6 & 7) != 0)
        {
          goto LABEL_23;
        }

        v7 = v6[2];
        if (!a3)
        {
          break;
        }

        if (!v7 || (v7 & 7) != 0)
        {
          goto LABEL_23;
        }

        if (*(v7 + 16) == a3)
        {
          v8 = 1;
          goto LABEL_12;
        }

LABEL_16:
        v6 = v6[1];
        if (v6 == (v3 + 272))
        {
          goto LABEL_17;
        }
      }

      v8 = (v6[2] & 7) == 0;
LABEL_12:
      if (!v7 || !v8)
      {
        goto LABEL_23;
      }

      if (*v7 == a2)
      {
        sub_100021528(v3 + 272, v6);
        operator delete();
      }

      goto LABEL_16;
    }

LABEL_17:
    if (!*(v3 + 288))
    {
      v9 = *(v3 + 296);
      if (v9)
      {
        dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }

    return pthread_mutex_unlock((v3 + 208));
  }

  return result;
}

uint64_t sub_1000C5E88(uint64_t result, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, char a5)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  if (!a2)
  {
    __break(0x5518u);
LABEL_29:
    __break(0x5516u);
    return result;
  }

  v9 = sub_10000C0EC();
  result = pthread_mutex_lock(&stru_10012B758);
  if (*(v9 + 16))
  {
    for (i = *(v9 + 8); i != v9; i = *(i + 8))
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_13;
      }

      if (!i)
      {
        goto LABEL_29;
      }

      if ((i & 7) != 0)
      {
        goto LABEL_29;
      }

      result = *(i + 16);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_29;
      }

      result = (*(*result + 272))(result);
      if ((result & 1) == 0)
      {
LABEL_13:
        if (!a4)
        {
          v11 = (i & 7) == 0;
LABEL_21:
          if (!i || !v11)
          {
            goto LABEL_29;
          }

          result = a2(*(i + 16), a3);
          continue;
        }

        if (!i)
        {
          goto LABEL_29;
        }

        if ((i & 7) != 0)
        {
          goto LABEL_29;
        }

        result = *(i + 16);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_29;
        }

        result = (*(*result + 96))(result, a4);
        if (result)
        {
          v11 = 1;
          goto LABEL_21;
        }
      }
    }
  }

  return pthread_mutex_unlock(&stru_10012B758);
}

void sub_1000C5FE4(uint64_t result, unsigned int *a2)
{
  lpsrc = result;
  if (!a2)
  {
LABEL_180:
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_181;
  }

  v3 = result;
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v5 == 100)
  {
    v6 = (*a2 >> 7) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (v5 == 100)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*a2 >> 7) & 1;
  }

  v8 = (*a2 & 0x20CC) == 0;
  if ((v4 & 0x400) != 0 && result != 0)
  {
    v8 = 0;
  }

  if (*(a2 + 2) == result)
  {
    v10 = 1;
  }

  else
  {
    v10 = (*a2 >> 7) & 1;
  }

  if (v10 != 1 || (*a2 & 0x2400) == 9216)
  {
    __break(0x5518u);
    goto LABEL_180;
  }

  v41 = v6;
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_181;
    }

    v12 = *(result + 32);
    if (v12 == 0 || v8 || !(*(*result + 272))(result))
    {
      v42 = 0;
      if (!v12)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v42 = *(v3 + 190);
      if (v42 >= 2)
      {
        goto LABEL_182;
      }

      if (!v12)
      {
LABEL_37:
        v14 = *(v3 + 32);
        if (!v14 || (v14 & 7) != 0)
        {
          goto LABEL_181;
        }

        v15 = *(v14 + 40);
        if (v15)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }
    }

    if ((v4 & 0x80) != 0)
    {
      if (qword_10012C498 != -1)
      {
        sub_1000E2638();
      }

      if (!qword_10012C490)
      {
        goto LABEL_181;
      }

      if ((qword_10012C490 & 7) != 0)
      {
        goto LABEL_181;
      }

      sub_1000C5D60(qword_10012C490, v4, v3);
      v13 = *(v3 + 32);
      if (!v13 || (v13 & 7) != 0)
      {
        goto LABEL_181;
      }

      *(v13 + 52) = v5;
    }

    goto LABEL_37;
  }

  v42 = 0;
LABEL_42:
  v16 = *(a2 + 32);
  if (v16 > 1)
  {
    goto LABEL_182;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_181;
  }

  v17 = (*(*qword_10012C490 + 256))();
  if (!v17)
  {
LABEL_59:
    v20 = 0;
    v19 = 0;
    v15 = 0;
    v22 = 0;
    v21 = v7 | ((v4 & 4) >> 2);
    goto LABEL_60;
  }

  v15 = v17;
LABEL_50:
  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_181;
  }

  sub_1000950E0(qword_10012C490, v15);
  v19 = v18;
  v20 = v18 != 0;
  v21 = v7 | ((v4 & 4) >> 2);
  v22 = 1;
  if (v18 && v7 & 1 | ((v4 & 4) != 0))
  {
    if ((v18 & 7) != 0)
    {
      goto LABEL_181;
    }

    if (sub_100062C54(v18))
    {
      return;
    }

    v21 = 1;
    v20 = 1;
  }

LABEL_60:
  if ((v4 & 8) != 0 && !v5 && (v42 & 1) == 0)
  {
    if ((v3 & 7) != 0)
    {
      goto LABEL_181;
    }

    if (!v3)
    {
      goto LABEL_181;
    }

    v23 = *(v3 + 32);
    if (!v23 || (v23 & 7) != 0)
    {
      goto LABEL_181;
    }

    v24 = *(v23 + 64);
    if (v24)
    {
      *(v23 + 59) = 1;
      if (!*(v23 + 40))
      {
        v24(&lpsrc);
        v3 = lpsrc;
      }
    }
  }

  if (v3)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  if (v25 != 1)
  {
    if ((v4 & 8) != 0 && v3)
    {
      if ((v3 & 7) == 0)
      {
        v34 = *(v3 + 32);
        if (!v34)
        {
          return;
        }

        if ((v34 & 7) == 0)
        {
          *(v34 + 58) = 0;
          return;
        }
      }

      goto LABEL_181;
    }

    if ((v15 != 0) | v41 & 1 || (v4 & 8) != 0)
    {
      return;
    }

    v39 = *(a2 + 32);
    if (v39 <= 1)
    {
      if ((v39 & 1) == 0)
      {
        return;
      }

      if (v3)
      {
        if ((v3 & 7) != 0)
        {
          goto LABEL_181;
        }

        v40 = (*(*v3 + 200))(v3);
      }

      else
      {
        v40 = "Unknown";
      }

      sub_1000DDEEC(0, 4, "No Handle for event! class=%xh(%s) type=%lxh port=%hhx(%s)\n", v4, "", v5, v3, v40);
      return;
    }

    goto LABEL_182;
  }

  v26 = a2[9];
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_183:
    __break(0x5500u);
    goto LABEL_184;
  }

  a2[9] = v28;
  if ((v4 & 0x80) != 0)
  {
    if ((v15 & 7) != 0)
    {
      goto LABEL_181;
    }

    if (sub_10005BE20(v15) != -1 && sub_10005BDFC(v15) == v5)
    {
      return;
    }

    sub_10005AC48(v15, v5);
  }

  if (v21)
  {
    if (!lpsrc || (lpsrc & 7) != 0)
    {
      goto LABEL_181;
    }

    if (*(lpsrc + 4))
    {
      if (qword_10012C498 != -1)
      {
        sub_1000E264C();
      }

      if (!qword_10012C490)
      {
        goto LABEL_181;
      }

      if ((qword_10012C490 & 7) != 0)
      {
        goto LABEL_181;
      }

      sub_100093710(qword_10012C490, lpsrc, v15);
      if (!lpsrc)
      {
        goto LABEL_181;
      }

      if ((lpsrc & 7) != 0)
      {
        goto LABEL_181;
      }

      v29 = *(lpsrc + 4);
      if (!v29 || (v29 & 7) != 0)
      {
        goto LABEL_181;
      }

      v30 = *(v29 + 57);
      if (v30 > 1)
      {
        goto LABEL_182;
      }

      if ((v30 & 1) == 0)
      {
        sub_100073E38(lpsrc);
      }
    }
  }

  if (v7)
  {
    if ((v15 & 7) != 0)
    {
      goto LABEL_181;
    }

    if ((v20 & sub_10005BF90(v15)) == 1)
    {
      if (sub_10005BFD0(v15))
      {
        if (!lpsrc || (lpsrc & 7) != 0)
        {
          goto LABEL_181;
        }

        if ((*(*lpsrc + 272))())
        {
          v31 = lpsrc;
          if (!lpsrc)
          {
            goto LABEL_181;
          }

          if ((lpsrc & 7) != 0)
          {
            goto LABEL_181;
          }

          if (!v32 || (v32 & 7) != 0)
          {
            goto LABEL_181;
          }

          v33 = (*(*v32 + 392))(v32);
          sub_100076B84(0, v15, v31, v33, 0);
        }
      }

      if ((v19 & 7) == 0)
      {
        sub_100062CA8(v19, 8, 1, lpsrc, 0, 2u, 0);
        if (qword_10012C498 != -1)
        {
          sub_1000E264C();
        }

        if (qword_10012C490 && (qword_10012C490 & 7) == 0)
        {
          sub_1000C686C(qword_10012C490, v4, v5, lpsrc, 0x64u);
          sub_10009346C(lpsrc, 0, 0);
          if (qword_10012C498 != -1)
          {
            sub_1000E264C();
          }

          if (qword_10012C490 && (qword_10012C490 & 7) == 0)
          {
            sub_1000C6940(qword_10012C490, lpsrc, 0xC8u);
            goto LABEL_169;
          }
        }
      }

      goto LABEL_181;
    }
  }

  if (!v20)
  {
    goto LABEL_169;
  }

  if ((v4 & 8) != 0)
  {
    if ((v19 & 7) != 0)
    {
      goto LABEL_181;
    }

    sub_100062B9C(v19);
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_184:
    __break(0x5513u);
    goto LABEL_185;
  }

  if (dword_10012B6DC)
  {
    sub_1000C538C(lpsrc);
    if (a2[10])
    {
      v35 = sub_100067278();
      if (!qword_10012C4D0 || (qword_10012C4D0 & 7) != 0)
      {
        goto LABEL_181;
      }

      if (v35 < a2[10])
      {
LABEL_185:
        __break(0x5515u);
        goto LABEL_186;
      }

      v36 = *(qword_10012C4D0 + 76);
      if (v36 >= 8)
      {
        goto LABEL_182;
      }

      if (v36 >= 4)
      {
LABEL_186:
        __break(0x5512u);
        return;
      }

      if (~dword_10012B6D8 < 4 * v36)
      {
        goto LABEL_184;
      }

      if (dword_10012B6D8[v36])
      {
        (*(*qword_10012C4D0 + 104))();
      }
    }
  }

  if ((v19 & 7) != 0)
  {
LABEL_181:
    __break(0x5516u);
    goto LABEL_182;
  }

  if ((v4 & 8) != 0)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  if (sub_100062CA8(v19, v4, v5, lpsrc, a2[10], v37, 0))
  {
    if ((v21 & 1) == 0)
    {
      return;
    }

    if (qword_10012C498 != -1)
    {
      sub_1000E264C();
    }

    if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
    {
      goto LABEL_181;
    }

    v38 = *(qword_10012C490 + 204);
    if (v38 <= 3)
    {
      sub_100062CA8(v19, 0, v38, 0, 0, 1u, 0);
      goto LABEL_169;
    }

LABEL_182:
    __break(0x550Au);
    goto LABEL_183;
  }

  if ((v4 & 0x400) != 0 && v5)
  {
    sub_1000C5A84(v5);
  }

  if ((v4 & 0x2000) != 0 && v5)
  {
    sub_1000C5B0C(v5);
  }

  if (!(v42 & 1 | ((v21 & 1) == 0)))
  {
    if (qword_10012C498 != -1)
    {
      sub_1000E264C();
    }

    if (qword_10012C490 && (qword_10012C490 & 7) == 0)
    {
      sub_1000C686C(qword_10012C490, v4, v5, lpsrc, 0x64u);
      goto LABEL_169;
    }

    goto LABEL_181;
  }

LABEL_169:
  if (!v19 && ((v42 | v21 ^ 1) & 1) == 0)
  {
    if (qword_10012C498 != -1)
    {
      sub_1000E264C();
    }

    if (qword_10012C490 && (qword_10012C490 & 7) == 0)
    {
      sub_1000C686C(qword_10012C490, v4, v5, lpsrc, 0x64u);
      return;
    }

    goto LABEL_181;
  }
}

void sub_1000C686C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a1 && (a1 & 7) == 0)
  {
    pthread_mutex_lock((a1 + 208));
    operator new();
  }

  __break(0x5516u);
  __break(0x5510u);
}

void sub_1000C6940(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!(*(*a2 + 208))(a2) || (*(*a2 + 272))(a2))
  {
    v6 = a2[4];
    if (v6)
    {
      if ((v6 & 7) == 0)
      {
        v7 = *(v6 + 72);
        if (v7)
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 0x40000000;
          v10[2] = sub_1000C9D98;
          v10[3] = &unk_100117FA8;
          v10[4] = a1;
          v10[5] = a2;
          dispatch_source_set_event_handler(v7, v10);
          v8 = *(v6 + 72);
          if (v8)
          {
            v9 = dispatch_time(0, 1000000 * a3);
            dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
            return;
          }
        }

LABEL_14:
        __break(0x5510u);
        return;
      }

LABEL_13:
      __break(0x5516u);
      goto LABEL_14;
    }
  }
}

void sub_1000C6A90(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_75;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_76;
  }

  if (!dword_10012B6DC)
  {
    goto LABEL_14;
  }

  sub_1000C538C(a4);
  if (!a6)
  {
    goto LABEL_14;
  }

  v12 = sub_100067278();
  if (!qword_10012C4D8 || (qword_10012C4D8 & 7) != 0)
  {
    goto LABEL_75;
  }

  if (v12 < a6)
  {
LABEL_77:
    __break(0x5515u);
    goto LABEL_78;
  }

  v13 = *(qword_10012C4D8 + 76);
  if (v13 >= 8)
  {
LABEL_78:
    __break(0x550Au);
    goto LABEL_79;
  }

  if (v13 >= 4)
  {
LABEL_79:
    __break(0x5512u);
    return;
  }

  if (~dword_10012B6D8 < 4 * v13)
  {
LABEL_76:
    __break(0x5513u);
    goto LABEL_77;
  }

  if (dword_10012B6D8[v13])
  {
    (*(*qword_10012C4D8 + 104))();
  }

LABEL_14:
  if ((~a2 & 0x2400) == 0 || !a5)
  {
    __break(0x5518u);
    goto LABEL_75;
  }

  if ((a5 & 7) != 0)
  {
LABEL_75:
    __break(0x5516u);
    goto LABEL_76;
  }

  v14 = a2 & 4;
  v15 = sub_100018DC0(a5);
  if (!a4 || v15)
  {
    goto LABEL_26;
  }

  if ((a2 & 4) == 0)
  {
    if (((a3 != 100) & (a2 >> 7)) != 0)
    {
      if ((a4 & 7) != 0)
      {
        goto LABEL_75;
      }

      if ((*(*a4 + 272))(a4))
      {
        sub_10005AF40(a5, v16);
        if (!v16 || (v16 & 7) != 0)
        {
          goto LABEL_75;
        }

        (*(*v16 + 400))(v16, a5);
      }

      goto LABEL_33;
    }

LABEL_26:
    v17 = !((a3 != 100) & (a2 >> 7));
    if ((a2 & 0x104) != 0)
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_75;
  }

  if (*(a4 + 32))
  {
    sub_100093710(a1, a4, a5);
  }

LABEL_33:
  if (!(*(*a1 + 240))(a1, a5, 0))
  {
    return;
  }

LABEL_34:
  v18 = a2 & 0x35CC;
  if ((a2 & 8) == 0)
  {
    v14 = a2 & 0xC;
LABEL_41:
    v19 = (v18 & 0x18C) != 0;
    if (!v14)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v19 = 1;
  sub_10005C038(a5, 1);
  if (a4)
  {
    if ((a4 & 7) != 0)
    {
      goto LABEL_75;
    }

    if ((*(*a4 + 208))(a4) == 1 && (sub_1000D6BF8(a4) & 1) == 0)
    {
      v18 = a2 & 0x35C4;
      goto LABEL_41;
    }
  }

LABEL_42:
  sub_100059454(a1, v18, a3, a4);
LABEL_43:
  if ((a2 & 0x180) != 0 || a4)
  {
    v20 = sub_100092B58(a1, a4) | v19;
    if (v20)
    {
      if ((v18 & 4) != 0)
      {
        v21 = sub_100092B58(a1, a4);
      }

      else if ((v18 & 8) != 0)
      {
        v20 = sub_100092C08(a1, a4) | 1;
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0;
      do
      {
        sub_1000C7DAC(a5, v22, v18, a3, a4, v20, v21);
        v22 = (v22 + 1);
      }

      while (v22 != 15);
    }

    if ((a2 & 8) != 0 && a4)
    {
      if (!a3)
      {
        sub_100073EB4(a4);
      }

      if ((a4 & 7) == 0)
      {
        sub_1000D6BE0(a4, 0);
        sub_100092C44(a1, a4);
        v23 = *(a4 + 32);
        if (!v23)
        {
          goto LABEL_61;
        }

        if ((v23 & 7) == 0)
        {
          *(v23 + 58) = 0;
LABEL_61:
          sub_1000941DC(a1, a5);
          v24 = sub_100094828(a1);
          if (v24)
          {
            goto LABEL_65;
          }

          v26 = sub_1000388B8(v24, v25);
          if (v26 && (v26 & 7) == 0)
          {
            (*(*v26 + 640))(v26);
            goto LABEL_65;
          }

          goto LABEL_75;
        }
      }

      goto LABEL_75;
    }
  }

LABEL_65:
  if ((a2 & 0x1000) == 0)
  {
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    sub_1000C5A84(a3);
    if ((a2 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_71;
  }

  sub_1000941DC(a1, a5);
  if ((a2 & 0x400) != 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  if ((a2 & 0x2000) == 0)
  {
    return;
  }

LABEL_71:

  sub_1000C5B0C(a3);
}

uint64_t sub_1000C6F54(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!result)
  {
    goto LABEL_101;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_101;
  }

  v8 = a3 == 5 || (a3 - 7) < 2;
  v9 = (a2 & 1) != 0 && v8;
  v40 = a3;
  v42 = -1431655766;
  v39[1] = -1431655766;
  v39[0] = a2;
  v41 = a4;
  if ((a2 & 1) == 0)
  {
    v12 = 0;
LABEL_28:
    v11 = 0;
    goto LABEL_30;
  }

  v10 = dword_10012B680;
  if ((dword_10012B680 + 8) > 0xF)
  {
LABEL_102:
    __break(0x550Au);
    goto LABEL_103;
  }

  v11 = 0;
  v12 = (a3 - 1) < 4;
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = 1;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_30;
      }

      *(result + 432) = 1;
      v16 = 2;
    }
  }

  else if (a3 == 5)
  {
    v16 = 3;
  }

  else
  {
    if (a3 != 6)
    {
      goto LABEL_30;
    }

    *(result + 432) = 0;
    v38[0] = 0xAAAAAAAAAAAAAAAALL;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_1000DDCB4(v38, 1u);
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v38[0] = off_100113858;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_1000DDDDC(v38, &v36);
    v13 = 1000 * v36;
    if ((v36 * 1000) >> 64 != (1000 * v36) >> 63)
    {
LABEL_104:
      __break(0x550Cu);
      goto LABEL_105;
    }

    v14 = __OFADD__(v13, v37 / 1000000);
    v15 = v13 + v37 / 1000000;
    if (v14)
    {
LABEL_105:
      __break(0x5500u);
      return result;
    }

    *(v4 + 528) = v15;
    v38[0] = off_100113858;
    result = sub_1000DDCF4(v38);
    v10 = dword_10012B680;
    if ((dword_10012B680 + 8) > 0xF)
    {
      goto LABEL_102;
    }

    v16 = 4;
  }

  if (v16 == v10)
  {
    goto LABEL_28;
  }

  dword_10012B684 = v10;
  dword_10012B680 = v16;
  v11 = 1;
LABEL_30:
  if (byte_10012CE84 > 1u)
  {
    goto LABEL_102;
  }

  if ((a2 & 1) == 0 || (v12 & byte_10012CE84 & 1) == 0)
  {
    pthread_mutex_lock((v4 + 456));
    v17 = v9 ? (v4 + 448) : 0;
    v18 = !v9;
    sub_100094920(v4, sub_1000C7574, v39, v17);
    v19 = *(v4 + 448);
    result = pthread_mutex_unlock((v4 + 456));
    v20 = v19 ? v18 : 1;
    if ((v20 & 1) == 0)
    {
      result = *(v4 + 440);
      if (!result)
      {
LABEL_103:
        __break(0x5510u);
        goto LABEL_104;
      }

      result = dispatch_semaphore_wait(result, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (v11)
  {
    v21 = dword_10012B684;
    if ((dword_10012B684 + 8) > 0xF)
    {
      goto LABEL_102;
    }

    result = sub_100059454(v4, a2, a3, 0);
    if ((dword_10012B680 + 8) > 0xF)
    {
      goto LABEL_102;
    }

    dword_10012B684 = dword_10012B680;
    if ((dword_10012B680 - 1) <= 1)
    {
      usleep(0x186A0u);
    }

    v22 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    for (i = *(v22 + 8); i != v22; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_101;
      }

      result = *(i + 16);
      if (!result || (*(i + 16) & 7) != 0)
      {
        goto LABEL_101;
      }

      if (*(result + 32))
      {
        result = (*(*result + 232))(result);
        if (result)
        {
          result = sub_100092CAC(v4, *(i + 16));
        }
      }
    }

    if ((dword_10012B680 + 8) >= 0x10)
    {
      goto LABEL_102;
    }

    if ((v21 - 1) > 1 || dword_10012B680 != 4)
    {
LABEL_97:
      result = pthread_mutex_unlock(&stru_10012B758);
      goto LABEL_98;
    }

    v26 = sub_100048620(result, v23);
    result = sub_100046A8C(v26, v27);
    if (result)
    {
      v28 = result;
      if ((result & 7) == 0)
      {
        v29 = (*(*result + 160))(result);
        result = (*(*v28 + 168))(v28);
        v31 = (v26 & 7) == 0 && v26 != 0;
        v32 = *(v22 + 8);
        if (v32 != v22)
        {
          v33 = v29 | result;
          while (v32 && (v32 & 7) == 0)
          {
            result = *(v32 + 16);
            if (!result || (*(v32 + 16) & 7) != 0)
            {
              break;
            }

            if (*(result + 32))
            {
              result = (*(*result + 232))(result);
              if (result)
              {
                if (!v31)
                {
                  goto LABEL_101;
                }

                if ((*(*v26 + 152))(v26, *(v32 + 16)) != 1 && (*(*v26 + 200))(v26, *(v32 + 16)))
                {
                  if (!v33)
                  {
                    goto LABEL_89;
                  }

                  result = *(v32 + 16);
                  if (!result || (result & 7) != 0)
                  {
                    goto LABEL_101;
                  }

                  if ((*(*result + 264))(result))
                  {
LABEL_89:
                    (*(*v26 + 192))(v26, *(v32 + 16), 0);
                    (*(*v26 + 144))(v26, *(v32 + 16), 1);
                    sub_1000C6940(v4, *(v32 + 16), 0xC8u);
                  }
                }
              }
            }

            result = *(v32 + 16);
            if (!result || (result & 7) != 0)
            {
              goto LABEL_101;
            }

            result = (*(*result + 208))(result);
            if (!result)
            {
              result = *(v32 + 16);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_101;
              }

              v35 = (*(*result + 288))(result);
              result = (*(*v4 + 48))(v4, 128, v35, *(v32 + 16), 0);
            }

            v32 = *(v32 + 8);
            if (v32 == v22)
            {
              goto LABEL_97;
            }
          }

          goto LABEL_101;
        }

        goto LABEL_97;
      }
    }

LABEL_101:
    __break(0x5516u);
    goto LABEL_102;
  }

LABEL_98:
  if ((a2 & 0x400) != 0)
  {
    return sub_1000C5A84(a3);
  }

  return result;
}

void sub_1000C7574(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_64;
  }

  v5 = a2;
  if (!a2)
  {
    goto LABEL_64;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_66;
  }

  v4 = result;
  v2 = *a2;
  v3 = *(a2 + 8);
  v8 = v3 != 5 && (v3 - 7) >= 2;
  v9 = !v8;
  if (v2)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  if (!sub_1000C78B4(result) && v7 & 1 | v2 & (v3 == 6))
  {
    if (sub_1000C78B4(v4) & 1) != 0 || ((v7 ^ 1))
    {
      return;
    }

    if (qword_10012C498 != -1)
    {
      sub_1000E2638();
    }

    if (qword_10012C490 && (qword_10012C490 & 7) == 0)
    {
      v10 = *(qword_10012C490 + 448);
      v8 = v10 != 0;
      v11 = v10 - 1;
      if (v8)
      {
        *(qword_10012C490 + 448) = v11;
        return;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v6 = &unk_10012C000;
  if (qword_10012C498 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
    {
      goto LABEL_66;
    }

    sub_1000950E0(qword_10012C490, v4);
    if (v12)
    {
      break;
    }

LABEL_64:
    __break(0x5518u);
LABEL_65:
    sub_1000E2638();
  }

  v13 = v12;
  if ((v2 & 0x400) != 0)
  {
    operator new();
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_67;
  }

  if (dword_10012B6DC)
  {
    if ((v4 & 7) != 0)
    {
      goto LABEL_66;
    }

    v14 = sub_100018DC0(v4);
    sub_1000C538C(v14);
    if (*(v5 + 16))
    {
      v15 = sub_100067278();
      if (!qword_10012C4D0 || (qword_10012C4D0 & 7) != 0)
      {
        goto LABEL_66;
      }

      if (v15 < *(v5 + 16))
      {
        goto LABEL_68;
      }

      v16 = *(qword_10012C4D0 + 76);
      if (v16 >= 8)
      {
        goto LABEL_69;
      }

      if (v16 >= 4)
      {
        goto LABEL_70;
      }

      if (~dword_10012B6D8 < 4 * v16)
      {
        goto LABEL_67;
      }

      if (dword_10012B6D8[v16])
      {
        (*(*qword_10012C4D0 + 104))();
      }
    }
  }

  if ((v13 & 7) != 0)
  {
    goto LABEL_66;
  }

  if (v7)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if ((sub_100062CA8(v13, v2, v3, 0, *(v5 + 16), v17, 0) & 1) == 0)
  {
    if (!v7)
    {
LABEL_59:
      if ((v2 & 0x400) != 0)
      {

        sub_1000C5A84(v3);
      }

      return;
    }

    if (v6[147] != -1)
    {
      sub_1000E2638();
    }

    if (qword_10012C490 && (qword_10012C490 & 7) == 0)
    {
      sub_1000DDEEC(0, 4, "%s:%d Couldn't queue event to connection=%hhxh, decrement count(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapProtocolMgr.cpp", 1714, v4, *(qword_10012C490 + 448));
      if (v6[147] != -1)
      {
        sub_1000E2638();
      }

      if (qword_10012C490 && (qword_10012C490 & 7) == 0)
      {
        v18 = *(qword_10012C490 + 448);
        v8 = v18 != 0;
        v19 = v18 - 1;
        if (!v8)
        {
          goto LABEL_68;
        }

        *(qword_10012C490 + 448) = v19;
        goto LABEL_59;
      }
    }

LABEL_66:
    __break(0x5516u);
LABEL_67:
    __break(0x5513u);
LABEL_68:
    __break(0x5515u);
LABEL_69:
    __break(0x550Au);
LABEL_70:
    __break(0x5512u);
  }
}

uint64_t sub_1000C78B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      if (sub_10005BCA0(result))
      {
        return 0;
      }

      if (!sub_100018DC0(v1))
      {
        return 1;
      }

      result = sub_100018DC0(v1);
      if (result && (result & 7) == 0)
      {
        return (*(*result + 224))(result) ^ 1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000C7948(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (!result || (result & 7) != 0 || !a4 || (a4 & 7) != 0)
  {
    goto LABEL_82;
  }

  v10 = sub_100018DC0(a4);
  v11 = sub_10005AC88(a4);
  v26 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_83;
  }

  if (dword_10012B6DC)
  {
    sub_1000C538C(v12);
    if (a5)
    {
      v13 = sub_100067278();
      if (!qword_10012C4D8 || (qword_10012C4D8 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (v13 < a5)
      {
LABEL_84:
        __break(0x5515u);
        goto LABEL_85;
      }

      v14 = *(qword_10012C4D8 + 76);
      if (v14 >= 8)
      {
LABEL_85:
        __break(0x550Au);
        goto LABEL_86;
      }

      if (v14 >= 4)
      {
LABEL_86:
        __break(0x5512u);
        goto LABEL_87;
      }

      if (~dword_10012B6D8 < 4 * v14)
      {
        goto LABEL_83;
      }

      if (dword_10012B6D8[v14])
      {
        (*(*qword_10012C4D8 + 104))();
      }
    }
  }

  if (a2)
  {
    v16 = a3 == 5 || (a3 - 7) < 2;
    if ((a2 & (a3 == 8)) != 0)
    {
      sub_10005C038(a4, 1);
    }

    if (qword_10012C498 != -1)
    {
      sub_1000E2638();
    }

    if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
    {
      goto LABEL_82;
    }

    if (!(*(*qword_10012C490 + 240))(qword_10012C490, a4, 0))
    {
      return;
    }

    if (a3 == 8 && v10)
    {
      if (qword_10012C498 != -1)
      {
        sub_1000E2638();
      }

      if (!qword_10012C490 || (qword_10012C490 & 7) != 0 || (v10 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (sub_1000D6BF8(v10))
      {
        v17 = *(v10 + 32);
        if (v17)
        {
          if ((v17 & 7) != 0)
          {
            goto LABEL_82;
          }

          *(v17 + 58) = 0;
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  if (!v12)
  {
    v18 = v16;
    sub_1000DDEEC(0, 4, "%s:%d Unexpected pPort==NULL! class=%xh type=%lxh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapProtocolMgr.cpp", 1838, a2, a3);
    goto LABEL_56;
  }

  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_82;
  }

  v18 = v16;
  v19 = sub_100092B58(qword_10012C490, v12);
  v20 = v19;
  if (a2 & (a3 == 8) | ((a2 & 0x100) >> 8) & 1)
  {
    v20 = v19 | 1;
  }

  else if (!v19)
  {
    goto LABEL_56;
  }

  v21 = 0;
  do
  {
    sub_1000C7DAC(a4, v21, a2, a3, v12, v20, v20);
    v21 = (v21 + 1);
  }

  while (v21 != 15);
LABEL_56:
  if ((a3 - 7) > 1)
  {
    goto LABEL_60;
  }

  sub_1000950E0(result, a4);
  if (!v22 || (v22 & 7) != 0)
  {
LABEL_82:
    __break(0x5516u);
LABEL_83:
    __break(0x5513u);
    goto LABEL_84;
  }

  sub_100062CA8(v22, 0, a4, v26, 0, 1u, 0);
LABEL_60:
  if (!v18)
  {
    goto LABEL_70;
  }

  pthread_mutex_lock((result + 456));
  if (qword_10012C498 != -1)
  {
    sub_1000E2638();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_82;
  }

  if (!*(qword_10012C490 + 448))
  {
    sub_1000E1D34();
  }

  if (!qword_10012C490 || (qword_10012C490 & 7) != 0)
  {
    goto LABEL_82;
  }

  v23 = *(qword_10012C490 + 448);
  v24 = v23 - 1;
  if (!v23)
  {
    goto LABEL_84;
  }

  *(qword_10012C490 + 448) = v24;
  pthread_mutex_unlock((result + 456));
  if (!v24)
  {
    if (qword_10012C498 != -1)
    {
      sub_1000E2638();
    }

    if (qword_10012C490 && (qword_10012C490 & 7) == 0)
    {
      v25 = *(qword_10012C490 + 440);
      if (v25)
      {
        dispatch_semaphore_signal(v25);
        if ((a2 & 0x400) == 0)
        {
          return;
        }

        goto LABEL_78;
      }

LABEL_87:
      __break(0x5510u);
      return;
    }

    goto LABEL_82;
  }

LABEL_70:
  if ((a2 & 0x400) == 0)
  {
    return;
  }

LABEL_78:

  sub_1000C5A84(a3);
}

uint64_t sub_1000C7D80(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      return sub_1000D6BF8(a2);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000C7DAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_35;
  }

  v12 = a2;
  if (a2 >= 0)
  {
    v13 = 1 << a2;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & a6) != 0)
  {
    if (result)
    {
      v10 = a7;
      v7 = a5;
      v8 = a4;
      v9 = a3;
      v11 = &unk_10012C000;
      if (qword_10012C498 == -1)
      {
LABEL_8:
        if (qword_10012C490 && (qword_10012C490 & 7) == 0)
        {
          if ((sub_100092A88(qword_10012C490, v12, result) & v9) == 0 || (v9 & 8) != 0 && (v13 & v10) == 0)
          {
            return;
          }

          if ((result & 7) == 0)
          {
            sub_10005BB24(result, v12);
            if (v11[147] != -1)
            {
              sub_1000E2638();
            }

            if (qword_10012C490 && (qword_10012C490 & 7) == 0)
            {
              v15 = sub_100092790(qword_10012C490, result, v12);
              if (!v15)
              {
                sub_1000DDEEC(0, 4, "%s:%d No Lingo Object! Cannot process event!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapProtocolMgr.cpp", 1996);
                goto LABEL_28;
              }

              v16 = v15;
              if (v11[147] != -1)
              {
                sub_1000E2638();
              }

              if (qword_10012C490 && (qword_10012C490 & 7) == 0)
              {
                sub_1000950E0(qword_10012C490, result);
                if (!v17)
                {
                  sub_1000E1D34();
                }

                if ((v16 & 7) == 0)
                {
                  (*(*v16 + 80))(v16, v9, v8, v7);
LABEL_28:

                  sub_10005BB6C(result, v12);
                  return;
                }
              }
            }
          }
        }

        __break(0x5516u);
LABEL_35:
        __break(0x550Au);
        return;
      }
    }

    else
    {
      __break(0x5518u);
    }

    sub_1000E2638();
    goto LABEL_8;
  }
}

uint64_t sub_1000C7FA0(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2 || !a3)
  {
    __break(0x5518u);
    goto LABEL_11;
  }

  if ((dword_10012B680 + 8) > 0xF)
  {
    goto LABEL_12;
  }

  if ((a2 & 3) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  *a2 = dword_10012B680;
  if ((dword_10012B684 + 8) <= 0xF)
  {
    if ((a3 & 3) == 0)
    {
      *a3 = dword_10012B684;
      return result;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C8004(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_1000388B8(result, a2)) == 0 || (result & 7) != 0)
  {
LABEL_24:
    __break(0x5516u);
  }

  else
  {
    (*(*result + 16))(result, v2 + 176);
    dword_10012B680 = 4;
    dword_10012B684 = 4;
    v3 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    for (i = *(v3 + 8); i != v3; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_24;
      }

      result = *(i + 16);
      if (!result || (*(i + 16) & 7) != 0)
      {
        goto LABEL_24;
      }

      if (*(result + 32))
      {
        result = (*(*result + 232))(result);
        if (result)
        {
          sub_100092CAC(v2, *(i + 16));
          result = *(i + 16);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_24;
          }

          result = (*(*result + 208))(result);
          if (!result)
          {
            result = *(i + 16);
            if (!result || (result & 7) != 0)
            {
              goto LABEL_24;
            }

            v6 = (*(*result + 288))(result);
            result = (*(*v2 + 48))(v2, 128, v6, *(i + 16), 0);
          }
        }
      }
    }

    result = pthread_mutex_unlock(&stru_10012B758);
    v2[200] = 1;
  }

  return result;
}

uint64_t sub_1000C81CC(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v6 = 0;
      if ((sub_100058C08(result) & 1) == 0)
      {
        v6 = 10;
      }

      v5 = &v6;
      result = sub_100094920(v2, sub_1000C826C, &v5, 0);
      if (!a2)
      {
        v4 = v6;
        return v4 == 0;
      }

      if ((a2 & 3) == 0)
      {
        v4 = v6;
        *a2 = v6;
        return v4 == 0;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C826C(uint64_t result, unsigned int **a2)
{
  if (result && a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_25;
    }

    v2 = result;
    v3 = *a2;
    if (*a2)
    {
      if ((v3 & 3) != 0)
      {
        goto LABEL_25;
      }

      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    if (qword_10012C498 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(0x5518u);
  }

  sub_1000E2638();
LABEL_9:
  result = qword_10012C490;
  if (!qword_10012C490)
  {
    goto LABEL_25;
  }

  if ((qword_10012C490 & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_100095310(qword_10012C490, v2);
  if (!result)
  {
    goto LABEL_25;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_1000B6EDC(result);
  if ((v2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v5 = 0;
  if (result > v4)
  {
    v4 = result;
  }

  do
  {
    result = sub_10005B8E8(v2, v5);
    if (result > v4)
    {
      v4 = result;
    }

    v5 = (v5 + 1);
  }

  while (v5 != 15);
  if (v3)
  {
    if ((v3 & 3) == 0)
    {
      *v3 = v4;
      return result;
    }

LABEL_25:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000C8358(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  if ((dword_10012B680 + 8) >= 0x10)
  {
LABEL_10:
    __break(0x550Au);
    return result;
  }

  if (dword_10012B680 == 4)
  {
    (*(*result + 72))(result);
  }

  v2 = *(*v1 + 80);

  return v2(v1);
}

uint64_t sub_1000C840C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 48))(result, 1, 5, 0, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000C8468(uint64_t a1)
{
  result = a1 - 184;
  if ((result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 48))(result, 1, 5, 0, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000C84C4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    byte_10012CE84 = 1;
    (*(*result + 48))(result, 1, 8, 0, 0);
    byte_10012CE84 = 0;
    return 1;
  }

  return result;
}

uint64_t sub_1000C8558(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 48))(result, 1, 6, 0, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000C85B4(uint64_t a1)
{
  result = a1 - 184;
  if ((result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 48))(result, 1, 6, 0, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000C8610(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock(&stru_10012B758);
    sub_1000C8698(a2);
    sub_1000935E8(v2, a2);
    sub_1000588F4(v2, a2);
    sub_1000BBD70(a2);

    return pthread_mutex_unlock(&stru_10012B758);
  }

  return result;
}

void sub_1000C8698(uint64_t a1)
{
  v5 = a1;
  sub_10000C0EC();
  pthread_mutex_lock(&stru_10012B758);
  if (qword_10012CEC0)
  {
    v1 = (qword_10012CEC0 & 7) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && ((sub_1000219A8(qword_10012CEC0, &v5), v2 = CFNotificationCenterGetDarwinNotifyCenter(), CFNotificationCenterPostNotification(v2, @"IAPDTransportListChangedNotification", 0, 0, 1u), qword_10012CEC0) ? (v3 = (qword_10012CEC0 & 7) == 0) : (v3 = 0), v3))
  {
    if (*(qword_10012CEC0 + 16) == 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"IAPDTransportListItemAddedNotification", 0, 0, 1u);
    }

    pthread_mutex_unlock(&stru_10012B758);
  }

  else
  {
    __break(0x5516u);
  }
}

uint64_t sub_1000C8764(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock(&stru_10012B758);
    sub_1000C87F8(v2, a2);
    sub_1000589A8(v2, a2);
    sub_100093650(v2, a2);
    sub_1000BBEE0(a2);
    sub_1000C88F0(a2);

    return pthread_mutex_unlock(&stru_10012B758);
  }

  return result;
}

uint64_t sub_1000C87F8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_21:
    __break(0x5516u);
    return result;
  }

  result = pthread_mutex_lock((result + 208));
  v4 = *(v2 + 280);
  if (v4 != (v2 + 272))
  {
    while (v4 && (v4 & 7) == 0)
    {
      v5 = v4[2];
      if (!v5 || (v4[2] & 7) != 0)
      {
        break;
      }

      if (*(v5 + 16) == a2)
      {
        sub_100021528(v2 + 272, v4);
        operator delete();
      }

      v4 = v4[1];
      if (v4 == (v2 + 272))
      {
        goto LABEL_15;
      }
    }

    goto LABEL_21;
  }

LABEL_15:
  if (!*(v2 + 288))
  {
    v7 = *(v2 + 296);
    if (v7)
    {
      dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  return pthread_mutex_unlock((v2 + 208));
}

void sub_1000C88F0(uint64_t a1)
{
  v5 = a1;
  sub_10000C0EC();
  pthread_mutex_lock(&stru_10012B758);
  if (qword_10012CEC0)
  {
    v1 = (qword_10012CEC0 & 7) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && ((sub_1000297C4(qword_10012CEC0, &v5), v2 = CFNotificationCenterGetDarwinNotifyCenter(), CFNotificationCenterPostNotification(v2, @"IAPDTransportListChangedNotification", 0, 0, 1u), qword_10012CEC0) ? (v3 = (qword_10012CEC0 & 7) == 0) : (v3 = 0), v3))
  {
    if (!*(qword_10012CEC0 + 16))
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"IAPDEmptyTransportListNotification", 0, 0, 1u);
    }

    pthread_mutex_unlock(&stru_10012B758);
  }

  else
  {
    __break(0x5516u);
  }
}

uint64_t sub_1000C89B0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 48))(result, 256, 1, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C89F4(uint64_t a1, uint64_t a2)
{
  result = a1 - 184;
  if ((result & 7) == 0)
  {
    return (*(*result + 48))(result, 256, 1, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C8A38(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 48))(result, 256, 0, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C8A7C(uint64_t a1, uint64_t a2)
{
  result = a1 - 184;
  if ((result & 7) == 0)
  {
    return (*(*result + 48))(result, 256, 0, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C8AC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 224))(result, a2, a3, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C8AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a1 - 176;
  if ((result & 7) == 0)
  {
    return (*(*result + 224))(result, a2, a3, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C8B38(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  switch(a2)
  {
    case 327707:
      if (a5 == 1)
      {
        if (!a4)
        {
LABEL_19:
          __break(0x5516u);
          return result;
        }

        v5 = *(*result + 48);

        return v5();
      }

LABEL_18:
      __break(0x5518u);
      goto LABEL_19;
    case 524301:
      if (!a4 || !a5)
      {
        return (*(*result + 128))(result, 4);
      }

      goto LABEL_18;
    case 524310:
      if (!a4 || !a5)
      {
        return (*(*result + 128))(result, 4);
      }

      goto LABEL_18;
  }

  return result;
}

uint64_t sub_1000C8C98(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    return result;
  }

  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      return sub_1000D6BE0(a2, 1);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000C8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    if ((a3 + 32) < 0x40)
    {
      v6 = -1;
      goto LABEL_12;
    }

    goto LABEL_34;
  }

  if (!sub_100094BFC(a1, a2))
  {
LABEL_7:
    if ((a3 + 32) <= 0x3F)
    {
      if ((a2 & 7) == 0)
      {
LABEL_9:
        v6 = sub_10005ACA0(a2);
LABEL_12:
        sub_1000DDEEC(0, 4, "GetNewLingoObject could not get lingo object for lingoType=%xh, handle=%hhx, connection shuttingDown: %d\n", a3, a2, v6);
        return 0;
      }

      goto LABEL_33;
    }

LABEL_34:
    __break(0x550Au);
    JUMPOUT(0x1000C9044);
  }

  if ((a2 & 7) != 0)
  {
LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

  if (sub_10005ACA0(a2))
  {
    goto LABEL_7;
  }

  if ((a3 + 32) >= 0x40)
  {
    goto LABEL_34;
  }

  switch(a3)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      v9 = sub_100097500(a2);
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    case 5:
      operator new();
    case 6:
      operator new();
    case 8:
      operator new();
    case 9:
      v9 = sub_1000AEF58(a2);
      if (!v9)
      {
        goto LABEL_9;
      }

LABEL_31:
      v7 = v9;
      if ((v9 & 7) != 0)
      {
        goto LABEL_33;
      }

      sub_100093A7C(a1, a3, v9, a2);
      break;
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      operator new();
    default:
      goto LABEL_9;
  }

  return v7;
}

uint64_t sub_1000C9080(uint64_t result, uint64_t a2, uint64_t a3)
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

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if ((a3 + 32) > 0x3F)
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  sub_10005BB24(a2, a3);
  v6 = sub_100092790(v3, a2, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(*v3 + 232))(v3, a2, a3);
    if (!v7)
    {
      sub_1000DDEEC(0, 4, "Couldn't get lingo(%d) object! handle=%hhx\n", a3, a2);
    }
  }

  sub_10005BB6C(a2, a3);
  return v7;
}

uint64_t sub_1000C916C(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_30;
  }

  if ((a2 & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    return result;
  }

  v5 = sub_100018DC0(a2);
  v6 = a3;
  if (!v5)
  {
    v6 = a3;
    if ((sub_10005ACF4(a2) & 1) == 0)
    {
      if (a3)
      {
        sub_1000DDEEC(0, 4, "Null Port! Setting activeMask to NONE. handle=%hhx reqLingoes=%xh\n", a2, a3);
      }

      v6 = 0;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = "Couldn't get lingo(%d) object! handle=%hhx port=%s\n";
  do
  {
    v11 = 1 << v8;
    if (((1 << v8) & v6) != 0)
    {
      result = (*(*v3 + 240))(v3, a2, v8);
      if (result)
      {
        v7 = v7 | v11;
      }

      else
      {
        if (v5)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_30;
          }

          v15 = (*(*v5 + 200))(v5);
        }

        else
        {
          v15 = "";
        }

        sub_1000DDEEC(0, 4, v10, v8, a2, v15);
        v9 = 0;
      }
    }

    else if (v8 && (sub_10005ACF4(a2) & 1) == 0)
    {
      v12 = v9;
      v13 = v10;
      v14 = sub_100092C08(v3, v5);
      sub_10005BB24(a2, v8);
      if ((v14 & v11) == 0 && sub_100092790(v3, a2, v8))
      {
        sub_100093B68(v3, v8, a2);
      }

      sub_10005BB6C(a2, v8);
      v10 = v13;
      v9 = v12;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 15);
  sub_100092B18(v3, v5, v7);
  v16 = sub_100092B58(v3, v5);
  v17 = sub_100092C08(v3, v5);
  sub_10005BE8C(a2, v17 | v16);
  if ((v9 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "Failed creating all lingo objects requested=%xh mask=%xh successMask=%xh!\n", a3, v6, v7);
  }

  return v7;
}

uint64_t sub_1000C93D0(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = sub_100018DC0(a2);

    return sub_100092B58(v2, v3);
  }

  return result;
}

uint64_t sub_1000C942C(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_30;
  }

  if ((a2 & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    return result;
  }

  v5 = sub_100018DC0(a2);
  v6 = a3;
  if (!v5)
  {
    v6 = a3;
    if ((sub_10005ACF4(a2) & 1) == 0)
    {
      if (a3)
      {
        sub_1000DDEEC(0, 4, "Null Port! Setting allowedMask to NONE. handle=%hhx reqLingoes=%xh\n", a2, a3);
      }

      v6 = 0;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = "Couldn't get lingo(%d) object! handle=%hhx port=%s\n";
  do
  {
    v11 = 1 << v8;
    if (((1 << v8) & v6) != 0)
    {
      result = (*(*v3 + 240))(v3, a2, v8);
      if (result)
      {
        v7 = v7 | v11;
      }

      else
      {
        if (v5)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_30;
          }

          v15 = (*(*v5 + 200))(v5);
        }

        else
        {
          v15 = "";
        }

        sub_1000DDEEC(0, 4, v10, v8, a2, v15);
        v9 = 0;
      }
    }

    else if (v8 && (sub_10005ACF4(a2) & 1) == 0)
    {
      v12 = v9;
      v13 = v10;
      v14 = sub_100092B58(v3, v5);
      sub_10005BB24(a2, v8);
      if ((v14 & v11) == 0 && sub_100092790(v3, a2, v8))
      {
        sub_100093B68(v3, v8, a2);
      }

      sub_10005BB6C(a2, v8);
      v10 = v13;
      v9 = v12;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 15);
  sub_100092BC8(v3, v5, v7);
  v16 = sub_100092B58(v3, v5);
  v17 = sub_100092C08(v3, v5);
  sub_10005BE8C(a2, v17 | v16);
  if ((v9 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "Failed creating all lingo objects requested=%xh mask=%xh success%xh!\n", a3, v6, v7);
  }

  return v7;
}

uint64_t sub_1000C9690(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = sub_100018DC0(a2);

    return sub_100092C08(v2, v3);
  }

  return result;
}

uint64_t sub_1000C96EC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v6 = (*(*result + 152))(result);
    return (*(*v3 + 144))(v3, a2, v6 | a3) & a3;
  }

  return result;
}

uint64_t sub_1000C9788(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v6 = (*(*result + 168))(result);
    return (*(*v3 + 160))(v3, a2, v6 | a3) & a3;
  }

  return result;
}

void sub_1000C9824(uint64_t result, uint64_t a2, char *a3)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_27;
  }

  v5 = *(a2 + 8);
  pthread_mutex_lock((result + 304));
  v6 = sub_1000949E0(result, v5, 0);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_27;
    }

    if (!sub_10000FE6C(v5) || (v9 = sub_100094FC4(result, v5)) == 0)
    {
      v7 = sub_100094794(result);
      v8 = 1;
LABEL_18:
      if (!v7)
      {
        goto LABEL_24;
      }

      if ((v7 & 7) == 0)
      {
        if (sub_10005AB58(v7))
        {
          goto LABEL_24;
        }

        if ((v5 & 7) == 0)
        {
          if (sub_10000FE6C(v5))
          {
            sub_1000953E8(result, v7, 1, *(v5 + 40));
          }

          goto LABEL_24;
        }
      }

LABEL_27:
      __break(0x5516u);
      return;
    }

    v7 = v9;
    if ((v9 & 7) != 0)
    {
      goto LABEL_27;
    }

    if (sub_100018DC0(v9) != v5 && *(v5 + 32))
    {
      v10 = sub_100018DC0(v7);
      sub_1000937F8(result, v10, v7);
      sub_100093710(result, v5, v7);
    }
  }

  v8 = 0;
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_24:
  pthread_mutex_unlock((result + 304));
  if (a3)
  {
    *a3 = v8;
  }
}

uint64_t sub_1000C9984(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  v6 = a3;
  v8 = a3 != 100;
  v9 = a3 == 1;
  pthread_mutex_lock((result + 304));
  if ((a2 & 0x18C) == 0)
  {
    if ((a2 & 0x241) == 0)
    {
LABEL_23:
      v10 = 0;
      goto LABEL_38;
    }

    __break(0x5518u);
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    result = sub_100094A60(v4, 0);
    if (result || (result = sub_100094A60(v4, 1u)) != 0)
    {
      v10 = result;
      a4 = 0;
      goto LABEL_33;
    }

    v11 = v4;
    v12 = 0;
    goto LABEL_17;
  }

  result = sub_1000949E0(v4, a4, 0);
  if (result)
  {
    v10 = result;
    if ((a2 & 0x180) == 0)
    {
LABEL_25:
      if ((a4 & 7) != 0)
      {
        goto LABEL_40;
      }

      result = sub_10000FE6C(a4);
      if (result)
      {
        goto LABEL_27;
      }

LABEL_38:
      pthread_mutex_unlock((v4 + 304));
      return v10;
    }

    goto LABEL_27;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!sub_10000FE6C(a4))
  {
    goto LABEL_18;
  }

  v11 = v4;
  v12 = a4;
LABEL_17:
  result = sub_100094EBC(v11, v12);
  v10 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_18:
  if ((v9 & (a2 >> 8) | v8 & (a2 >> 7) | ((a2 & 4) >> 2)) != 1)
  {
    goto LABEL_23;
  }

  result = sub_100094794(v4);
  v10 = result;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((a2 & 0x180) == 0)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  if (a4)
  {
LABEL_27:
    if ((a4 & 7) != 0)
    {
      goto LABEL_40;
    }

    if ((a2 & 0x80) != 0)
    {
      v13 = *(a4 + 32);
      if (v13)
      {
        if ((v13 & 7) != 0)
        {
          goto LABEL_40;
        }

        *(v13 + 52) = v6;
      }
    }

    a4 = *(a4 + 40);
  }

LABEL_33:
  if ((v10 & 7) == 0)
  {
    if (!sub_10005AB58(v10) || a4 && sub_10005AC88(v10) != a4)
    {
      sub_1000953E8(v4, v10, 1, a4);
    }

    goto LABEL_38;
  }

LABEL_40:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000C9B60(uint64_t result, _BYTE *a2, char *a3)
{
  if (!a2 || (*a2 = -1, !a3))
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  *a3 = -1;
  if ((result + 32) >= 0x40)
  {
LABEL_20:
    __break(0x550Au);
    JUMPOUT(0x1000C9CCCLL);
  }

  switch(result)
  {
    case 0:
      *a2 = 1;
      v4 = 9;
      goto LABEL_18;
    case 1:
    case 10:
    case 12:
      *a2 = 1;
      v4 = 2;
      goto LABEL_18;
    case 2:
    case 11:
      *a2 = 1;
      v4 = 3;
      goto LABEL_18;
    case 3:
      *a2 = 1;
      v4 = 5;
      goto LABEL_18;
    case 4:
      *a2 = 1;
      result = dword_10012B4A4;
      if (dword_10012B4A4 != -1)
      {
        goto LABEL_15;
      }

      v5 = sub_10002BB1C(0xFFFFFFFFLL, a2);
      if (!v5 || (v5 & 7) != 0)
      {
        goto LABEL_19;
      }

      result = (*(*v5 + 360))(v5, off_10012B4A8);
      dword_10012B4A4 = result;
LABEL_15:
      if (result)
      {
        v4 = 12;
      }

      else
      {
        v4 = 14;
      }

LABEL_18:
      *a3 = v4;
      return result;
    case 5:
    case 9:
      v4 = 1;
      *a2 = 1;
      goto LABEL_18;
    case 6:
    case 8:
    case 13:
    case 14:
      v4 = 0;
      *a2 = 1;
      goto LABEL_18;
    default:
      return result;
  }
}
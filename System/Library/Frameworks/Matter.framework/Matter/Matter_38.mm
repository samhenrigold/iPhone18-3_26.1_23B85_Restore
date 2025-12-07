unint64_t *sub_239468BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = sub_239468C30(a1, v3, a2);
    v5 = v4;
    if (v4)
    {
      sub_239455868(v4);
    }
  }

  else
  {
    v7 = 0;
    if (sub_239466D8C(&v7, a1, a2))
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t *sub_239468C30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!sub_239431484(a2))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a2, v6);
    if (sub_239468CB8(a1, a3, v7))
    {
      break;
    }

    if (++v6 >= sub_239431484(a2))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_239468CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_239462B78(a3, a2);
  if (!v5)
  {
    return 1;
  }

  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    return 0;
  }

  *(a1 + 76) = v5;
  *(a1 + 80) = a2;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

uint64_t sub_239468D28(uint64_t a1)
{
  if (*(a1 + 56) < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(*(a1 + 32) + 16);
  do
  {
    v5 = sub_239457528(*(a1 + 64), v2);
    v6 = v5;
    if ((*(*(a1 + 32) + 8) & 0x10) == 0 && (*(v5 + 49) & 2) != 0)
    {
      *(a1 + 72) = v2;
      *(a1 + 76) = 34;
      *(a1 + 80) = v5;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_25;
      }

      if (!result)
      {
        break;
      }
    }

    if (v2)
    {
      v8 = sub_239462B20(v6);
      if (!v8)
      {
        *(a1 + 72) = v2;
        *(a1 + 76) = 24;
        *(a1 + 80) = v6;
        result = (*(a1 + 48))(v8, a1);
        if (result >= 2)
        {
          goto LABEL_25;
        }

        if (!result)
        {
          break;
        }
      }
    }

    if (*(*(a1 + 32) + 16) >= 1 && sub_2394622C4(v6, v4, v2 != 0) != 1)
    {
      *(a1 + 72) = v2;
      *(a1 + 76) = 26;
      *(a1 + 80) = v6;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_25;
      }

      if (!result)
      {
        break;
      }
    }

    if (v2 >= 2 && (*(v6 + 48) & 0x20) == 0)
    {
      v9 = *(v6 + 40);
      if (v9 != -1 && v9 + 1 < v3)
      {
        *(a1 + 72) = v2;
        *(a1 + 76) = 25;
        *(a1 + 80) = v6;
        result = (*(a1 + 48))(0, a1);
        if (result >= 2)
        {
LABEL_25:
          abort();
        }

        if (!result)
        {
          break;
        }
      }
    }

    result = 1;
    v3 += ((*(v6 + 48) >> 5) & 1) == 0;
    ++v2;
  }

  while (v2 < *(a1 + 56));
  return result;
}

uint64_t sub_239468ED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 8);
  if (*(v2 + 88))
  {
    *(a1 + 80) = v3;
    *(a1 + 72) = 0x4100000000;
    result = (*(a1 + 48))(0, a1);
    if (result >= 2)
    {
      goto LABEL_21;
    }

    if (!result)
    {
      return result;
    }
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = sub_239431484(v5);
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = sub_239457528(*(v2 + 40), i);
        v10 = strlen(v9);
        if (sub_239464470(v3, v9, v10, *(v2 + 48), 0) > 0)
        {
          goto LABEL_11;
        }
      }

      *(a1 + 80) = *(a1 + 8);
      *(a1 + 72) = 0x3E00000000;
      result = (*(a1 + 48))(0, a1);
      if (result >= 2)
      {
        goto LABEL_21;
      }

      if (!result)
      {
        return result;
      }
    }
  }

LABEL_11:
  v11 = *(v2 + 56);
  if (v11 && sub_2394646F4(v3, v11, *(v2 + 64), 0) <= 0)
  {
    *(a1 + 80) = *(a1 + 8);
    *(a1 + 72) = 0x3F00000000;
    result = (*(a1 + 48))(0, a1);
    if (result >= 2)
    {
      goto LABEL_21;
    }

    if (!result)
    {
      return result;
    }
  }

  v12 = *(v2 + 72);
  if (v12 && sub_239464780(v3, v12, *(v2 + 80), 0) <= 0)
  {
    *(a1 + 80) = *(a1 + 8);
    *(a1 + 72) = 0x4000000000;
    result = (*(a1 + 48))(0, a1);
    if (result < 2)
    {
      if (!result)
      {
        return result;
      }

      return 1;
    }

LABEL_21:
    abort();
  }

  return 1;
}

BOOL sub_239469074(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if ((v1 & 4) == 0)
  {
    return 1;
  }

  if ((v1 & 8) == 0)
  {
    v4 = 0;
LABEL_6:
    v6 = 0;
    v7 = 0;
    v8 = v4 + 1;
    v9 = v4;
    while (1)
    {
      *(a1 + 72) = v6;
      v10 = sub_239457528(*(a1 + 64), v6);
      *(a1 + 80) = v10;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      if (!sub_239469ED4(a1, &v33, &v35, &v34, *(a1 + 24)))
      {
        v11 = sub_239465C18(v10);
        v12 = sub_239466C34(a1, v11);
        v13 = v33;
        if (v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = v33 == 0;
        }

        if (!v14)
        {
          goto LABEL_15;
        }

        v15 = v12;
        sub_239469ED4(a1, &v33, &v35, &v34, v12);
        sub_239457574(v15, sub_23946A46C, sub_23946D6D0);
      }

      v13 = v33;
      if (!v33)
      {
        *(a1 + 76) = 3;
        v22 = (*(a1 + 48))(0, a1);
        if (v22 >= 2)
        {
          goto LABEL_56;
        }

        v23 = v22;
        sub_23946D6D0(0);
        *(a1 + 88) = 0;
        if (!v23)
        {
          return v7;
        }

        goto LABEL_51;
      }

LABEL_15:
      v16 = v35;
      *(a1 + 104) = v34;
      *(a1 + 88) = v13;
      *(a1 + 96) = v16;
      v17 = *(a1 + 72);
      v18 = sub_239431484(*(a1 + 64));
      v19 = *(a1 + 96);
      if (v19)
      {
        goto LABEL_59;
      }

      v20 = v18 - 1;
      v21 = *(a1 + 64);
      if (v17 >= v20)
      {
        v19 = sub_239457528(v21, v20);
        v24 = sub_239468CB8(a1, v19, v19);
        if (!v24)
        {
          *(a1 + 76) = 33;
          v25 = (*(a1 + 48))(v24, a1);
          if (v25 >= 2)
          {
            goto LABEL_56;
          }

          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v19 = sub_239457528(v21, v17 + 1);
      }

      if (v19)
      {
LABEL_59:
        if ((v19[6] & 2) != 0 && (*(v19 + 52) & 2) == 0)
        {
          *(a1 + 76) = 35;
          v26 = (*(a1 + 48))(0, a1);
          if (v26 >= 2)
          {
            goto LABEL_56;
          }

          if (!v26)
          {
            goto LABEL_53;
          }
        }

        if ((*(a1 + 104) & 0x80) == 0)
        {
          *(a1 + 76) = 44;
          v27 = (*(a1 + 48))(0, a1);
          if (v27 >= 2)
          {
            goto LABEL_56;
          }

          if (!v27)
          {
            goto LABEL_53;
          }
        }

        if ((*(v13 + 48) & 2) != 0)
        {
          *(a1 + 76) = 41;
          v28 = (*(a1 + 48))(0, a1);
          if (v28 >= 2)
          {
            goto LABEL_56;
          }

          if (!v28)
          {
            goto LABEL_53;
          }
        }

        if ((*(a1 + 104) & 0x40) == 0 && !sub_23946A32C(a1, v13, 1))
        {
          goto LABEL_53;
        }

        v29 = sub_239465F28(v19);
        if (!v29)
        {
          *(a1 + 76) = 6;
          v30 = (*(a1 + 48))(0, a1);
LABEL_41:
          if (v30 >= 2)
          {
            goto LABEL_56;
          }

          if (!v30)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

        if (sub_23946D760(v13, v29) <= 0)
        {
          *(a1 + 76) = 8;
          v30 = (*(a1 + 48))(0, a1);
          goto LABEL_41;
        }
      }

LABEL_43:
      if ((*(*(a1 + 32) + 8) & 0x10) == 0 && (*(v13 + 29) & 2) != 0)
      {
        *(a1 + 76) = 36;
        v31 = (*(a1 + 48))(0, a1);
        if (v31 >= 2)
        {
          goto LABEL_56;
        }

        if (!v31)
        {
          goto LABEL_53;
        }
      }

      v35 = 0;
      if (sub_23946D964(v13, &v35, v10))
      {
        *(a1 + 76) = 23;
        v32 = (*(a1 + 48))(0, a1);
        if (v32 >= 2)
        {
LABEL_56:
          abort();
        }

        if (!v32)
        {
LABEL_53:
          sub_23946D6D0(v13);
          *(a1 + 88) = 0;
          return v7;
        }
      }

      sub_23946D6D0(v13);
      *(a1 + 88) = 0;
LABEL_51:
      v7 = v6++ >= v9;
      if (v8 == v6)
      {
        return v7;
      }
    }
  }

  v5 = sub_239431484(*(a1 + 64));
  v4 = v5 - 1;
  if (v5 >= 1)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_239469428(uint64_t a1)
{
  v2 = sub_239431484(*(a1 + 64));
  LODWORD(v3) = v2 - 1;
  *(a1 + 72) = v2 - 1;
  v4 = sub_239457528(*(a1 + 64), v2 - 1);
  if (sub_239468CB8(a1, v4, v4))
  {
    v5 = v4;
    goto LABEL_10;
  }

  if ((*(*(a1 + 32) + 10) & 8) != 0)
  {
    v5 = v4;
    goto LABEL_19;
  }

  if (v2 > 1)
  {
    LODWORD(v3) = v2 - 2;
    *(a1 + 72) = v2 - 2;
    v5 = sub_239457528(*(a1 + 64), (v2 - 2));
    while (1)
    {
LABEL_10:
      if ((v3 & 0x80000000) != 0)
      {
        return 1;
      }

      *(a1 + 72) = v3;
      if (v5 != v4 || (*(*(a1 + 32) + 9) & 0x40) != 0)
      {
        v7 = sub_239465F28(v4);
        if (v7)
        {
          if (sub_23946BE04(v5, v7) > 0)
          {
            goto LABEL_19;
          }

          *(a1 + 76) = 7;
          *(a1 + 80) = v5;
          result = (*(a1 + 48))(0, a1);
        }

        else
        {
          *(a1 + 76) = 6;
          *(a1 + 80) = v4;
          result = (*(a1 + 48))(0, a1);
        }

        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_19:
      v8 = *(a1 + 32);
      v9 = v8[1];
      if ((v9 & 0x200000) != 0)
      {
        goto LABEL_41;
      }

      if ((v9 & 2) != 0)
      {
        v10 = *v8;
      }

      else
      {
        v10 = time(0);
      }

      v11 = sub_239467C44(v5);
      v18 = 0;
      v12 = sub_2393FF034(v11, &v18);
      if (v12)
      {
        if (v18 <= v10)
        {
          goto LABEL_29;
        }

        *(a1 + 76) = 9;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(0, a1);
      }

      else
      {
        *(a1 + 76) = 13;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(v12, a1);
      }

      if (result >= 2)
      {
        goto LABEL_9;
      }

      if (!result)
      {
        return result;
      }

LABEL_29:
      v13 = sub_239467CD8(v5);
      v18 = 0;
      v14 = sub_2393FF034(v13, &v18);
      if (v14)
      {
        v15 = v18 <= v10;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if (!v14)
      {
        *(a1 + 76) = 14;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(v14, a1);
        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

      if (v16)
      {
        *(a1 + 76) = 10;
        *(a1 + 80) = v5;
        result = (*(a1 + 48))(0, a1);
        if (result >= 2)
        {
          goto LABEL_9;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_41:
      *(a1 + 80) = v5;
      result = (*(a1 + 48))(1, a1);
      if (result >= 2)
      {
        goto LABEL_9;
      }

      if (!result)
      {
        return result;
      }

      v17 = __OFSUB__(v3, 1);
      v3 = (v3 - 1);
      if (((v3 & 0x80000000) != 0) == v17)
      {
        v4 = v5;
        v5 = sub_239457528(*(a1 + 64), v3);
      }
    }
  }

  *(a1 + 76) = 21;
  *(a1 + 80) = v4;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_9:
    abort();
  }

  return result;
}

uint64_t sub_2394696BC(uint64_t a1)
{
  v2 = sub_239431484(*(a1 + 64));
  v3 = v2;
  if (v2 <= 0)
  {
    sub_239457528(*(a1 + 64), 0);
    return 1;
  }

  v4 = 0;
  v5 = (v2 - 1);
  do
  {
    v6 = sub_239457528(*(a1 + 64), v5);
    v7 = v6;
    if (!v5 || (v6[6] & 0x20) == 0)
    {
      v8 = sub_239431484(*(a1 + 64));
      if (v3 < v8)
      {
        LODWORD(v9) = v8;
        do
        {
          v9 = (v9 - 1);
          v10 = sub_239457528(*(a1 + 64), v9)[12];
          if (v10)
          {
            v11 = sub_239460F40(v7, v10);
            if (v11)
            {
              if (v11 == 17)
              {
LABEL_27:
                result = 0;
                *(a1 + 76) = 17;
                return result;
              }

              *(a1 + 72) = v5;
              *(a1 + 76) = v11;
              *(a1 + 80) = v7;
              result = (*(a1 + 48))(0, a1);
              if (result >= 2)
              {
                goto LABEL_29;
              }

              if (!result)
              {
                return result;
              }
            }

            v4 = 1;
          }
        }

        while (v9 > v3);
      }
    }

    v3 = v5;
  }

  while (v5-- > 0);
  v14 = sub_239457528(*(a1 + 64), 0);
  if (!v4)
  {
    return 1;
  }

  v15 = v14;
  if (v14[11])
  {
    return 1;
  }

  v16 = sub_239465D34(v14);
  v17 = -1;
  do
  {
    v18 = sub_23946B424(v16, 0xDu, v17);
    if (v18 == -1)
    {
      return 1;
    }

    v17 = v18;
    v19 = sub_23946B39C(v16, v18);
    v20 = sub_23946B390(v19);
    v23 = 0;
    v21 = sub_2393FE214(&v23, v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v22 = sub_239464360(v23, v21);
    sub_239450144(v23);
  }

  while (!v22);
  *(a1 + 72) = 0x43FFFFFFFFLL;
  *(a1 + 80) = v15;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_29:
    abort();
  }

  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_239469890(uint64_t a1)
{
  v4 = 0;
  v2 = sub_239459BD0(*(a1 + 64), *(*(a1 + 32) + 32), *(*(a1 + 32) + 8), &v4);
  if (!v2)
  {
    return 1;
  }

  *(a1 + 80) = v4;
  *(a1 + 76) = v2;
  if (v2 == 17)
  {
    return 0;
  }

  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

uint64_t sub_239469918(int *a1)
{
  v2 = time(0);
  v6 = 0;
  v3 = sub_2393FF034(a1, &v6);
  if (v6 > v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239469974(int *a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2393FF034(a1, &v6);
  if (v6 > a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394699C0(int *a1, time_t *a2)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = time(0);
  }

  v7 = 0;
  v4 = sub_2393FF034(a1, &v7);
  if (v7 > v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_239469A28(void *a1, uint64_t a2)
{
  v4 = time(0);

  return sub_2393FEBB8(a1, v4, 0, a2);
}

void *sub_239469A84(void *a1, uint64_t a2, uint64_t a3, time_t *a4)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = time(0);
  }

  return sub_2393FEBB8(a1, v7, a2, a3);
}

unint64_t *sub_239469B30(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_239466020(result);
  }

  return result;
}

uint64_t sub_239469B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = sub_239462934(a2);
  if (v4)
  {
    v5 = sub_2393FFBEC(v4);
    result = sub_239469BE4(a1, v5);
    if (result)
    {
      v7 = *(a1 + 32);
      if (!*(v7 + 16))
      {
        *(v7 + 16) = a2;
      }

      return 1;
    }
  }

  else
  {
    sub_2394170F4(11, 0, 130, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1485);
    return 0;
  }

  return result;
}

uint64_t sub_239469BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (sub_239467F1C(a2))
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 20))
    {
      *(v4 + 20) = a2;
    }

    return 1;
  }

  else
  {
    sub_2394170F4(11, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1507);
    return 0;
  }
}

void sub_239469C64(void *a1)
{
  if (a1)
  {
    sub_239469CA4(a1);

    sub_239450144(a1);
  }
}

double sub_239469CA4(uint64_t a1)
{
  sub_23941F114(&unk_27DF770D0, a1, (a1 + 112));
  sub_23946A4AC(*(a1 + 32));
  sub_239457574(*(a1 + 64), sub_23946A478, sub_23946EDF8);
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_239469D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239469CA4(a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2393F7EB0((a1 + 112));
  if (a2)
  {
    v8 = sub_23946A484();
    *(a1 + 32) = v8;
    if (v8)
    {
      *(a1 + 48) = *(a2 + 224);
      if (sub_23946A54C(v8, *(a2 + 216)))
      {
        v9 = *(a1 + 32);
        v10 = sub_23946ACBC("default");
        if (sub_23946A54C(v9, v10))
        {
          v12 = *(a2 + 224);
          if (!v12)
          {
            v12 = nullsub_849;
          }

          *(a1 + 48) = v12;
          return result;
        }
      }
    }
  }

  else
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", 1540);
  }

  sub_23941F114(&unk_27DF770D0, a1, (a1 + 112));
  v13 = *(a1 + 32);
  if (v13)
  {
    sub_23946A4AC(v13);
  }

  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void *sub_239469E50(uint64_t a1, const char *a2)
{
  result = sub_23946ACBC(a2);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return sub_23946A54C(v5, v4);
  }

  return result;
}

void sub_239469EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    sub_23946A4AC(v4);
  }

  *(a1 + 32) = a2;
}

BOOL sub_239469ED4(uint64_t a1, void ***a2, unint64_t **a3, int *a4, unint64_t *a5)
{
  v10 = *a4;
  v11 = *(a1 + 80);
  if (!sub_239431484(a5))
  {
    return v10 > 447;
  }

  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = 0;
  v12 = 0;
  v49 = 0;
  v52 = v11;
  do
  {
    v13 = sub_239457528(a5, v12);
    if ((v13[6] & 0x62) != 0)
    {
      goto LABEL_64;
    }

    v14 = v13;
    v15 = sub_239465C18(v11);
    v16 = sub_239467D34(v14);
    if (sub_239465AD0(v15, v16))
    {
      goto LABEL_64;
    }

    if ((*(v14 + 28) & 0x200) != 0)
    {
      v17 = 32;
    }

    else
    {
      v17 = 288;
    }

    if (sub_23946A32C(a1, v14, 0))
    {
      v18 = v17 | 0x40;
    }

    else
    {
      v18 = v17;
    }

    v19 = sub_239467D34(v14);
    v20 = *(a1 + 72);
    if (sub_239431484(*(a1 + 64)) - 1 != v20)
    {
      ++v20;
    }

    v21 = sub_239457528(*(a1 + 64), v20);
    if (sub_239462A34(v21, *(v14 + 32)))
    {
      LODWORD(v20) = v20 + 1;
      if (v20 >= sub_239431484(*(a1 + 64)))
      {
        goto LABEL_64;
      }

      v20 = v20;
      while (1)
      {
        v21 = sub_239457528(*(a1 + 64), v20);
        v22 = sub_239465D34(v21);
        if (!sub_239465AD0(v22, v19) && !sub_239462A34(v21, *(v14 + 32)))
        {
          break;
        }

        if (++v20 >= sub_239431484(*(a1 + 64)))
        {
          goto LABEL_64;
        }
      }

      v50 = v10;
      v23 = 12;
    }

    else
    {
      v50 = v10;
      v23 = 28;
    }

    v24 = v23 | v18;
    v25 = *(v14 + 48);
    v51 = v24;
    if ((v25 & 0x10) != 0)
    {
      goto LABEL_62;
    }

    if ((*(v11 + 48) & 0x10) != 0)
    {
      if ((v25 & 4) != 0)
      {
        goto LABEL_62;
      }
    }

    else if ((v25 & 8) != 0)
    {
      goto LABEL_62;
    }

    if (!sub_239431484(*(v11 + 80)))
    {
LABEL_59:
      v39 = *(v14 + 40);
      if (!v39 || !*v39)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v26 = 0;
    while (1)
    {
      v27 = sub_239457528(*(v11 + 80), v26);
      if (!v27[1] || !v27[2])
      {
        goto LABEL_58;
      }

      v28 = *(v14 + 40);
      if (!v28)
      {
        goto LABEL_61;
      }

      v29 = *v27;
      v30 = *v28;
      if (!*v27 || v30 == 0)
      {
        goto LABEL_61;
      }

      if (*v29 != 1)
      {
        break;
      }

      v47 = *(v29 + 16);
      if (!v47)
      {
        goto LABEL_58;
      }

      if (*v30 == 1)
      {
        v32 = *(v30 + 16);
        if (v32 && !sub_239465AD0(v47, v32))
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      v29 = *v28;
LABEL_53:
      v36 = *(v29 + 8);
      if (sub_239431484(v36))
      {
        v37 = 0;
        do
        {
          v38 = sub_239457528(v36, v37);
          if (*v38 == 4 && !sub_239465AD0(v47, v38[1]))
          {
            goto LABEL_61;
          }
        }

        while (++v37 < sub_239431484(v36));
      }

LABEL_58:
      ++v26;
      v11 = v52;
      if (v26 >= sub_239431484(*(v52 + 80)))
      {
        goto LABEL_59;
      }
    }

    if (*v30 == 1)
    {
      v47 = *(v30 + 16);
      if (!v47)
      {
        goto LABEL_58;
      }

      goto LABEL_53;
    }

    if (!sub_239431484(*(v29 + 8)))
    {
      goto LABEL_58;
    }

    v48 = 0;
    while (1)
    {
      v33 = sub_239457528(*(v29 + 8), v48);
      if (sub_239431484(*(v30 + 8)))
      {
        break;
      }

LABEL_50:
      if (++v48 >= sub_239431484(*(v29 + 8)))
      {
        goto LABEL_58;
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = sub_239457528(*(v30 + 8), v34);
      if (!sub_23945FF5C(v33, v35))
      {
        break;
      }

      if (++v34 >= sub_239431484(*(v30 + 8)))
      {
        goto LABEL_50;
      }
    }

LABEL_61:
    v51 |= 0x80u;
LABEL_62:
    v10 = v50;
    if (v51 >= v50)
    {
      if (v51 == v50 && v49)
      {
        v53 = 0;
        v40 = sub_239465C18(v49);
        v41 = sub_239465C18(v14);
        v11 = v52;
        if (sub_2393FEEB4(&v53 + 1, &v53, v40, v41) && (SHIDWORD(v53) > 0 || v53 >= 1))
        {
          v10 = v51;
          v49 = v14;
          v46 = v21;
        }
      }

      else
      {
        v10 = v51;
        v49 = v14;
        v46 = v21;
        v11 = v52;
      }
    }

    else
    {
      v11 = v52;
    }

LABEL_64:
    ++v12;
  }

  while (v12 < sub_239431484(a5));
  if (v49)
  {
    if (*v43)
    {
      sub_23946D6D0(*v43);
    }

    *v43 = v49;
    *v44 = v46;
    *v45 = v10;
    sub_239455868(v49);
  }

  return v10 > 447;
}

uint64_t sub_23946A32C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  if ((v4 & 0x200000) != 0)
  {
    return 1;
  }

  if (a3)
  {
    *(a1 + 88) = a2;
    v4 = v3[1];
  }

  if ((v4 & 2) != 0)
  {
    v8 = *v3;
  }

  else
  {
    v8 = time(0);
  }

  v9 = sub_239465C18(a2);
  v14 = 0;
  if (sub_2393FF034(v9, &v14))
  {
    if (v14 <= v8)
    {
      goto LABEL_15;
    }

    if (!a3)
    {
      return 0;
    }

    v10 = 11;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v10 = 15;
  }

  *(a1 + 76) = v10;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    goto LABEL_30;
  }

  if (!result)
  {
    return result;
  }

LABEL_15:
  if (!sub_2394673B4(a2))
  {
    goto LABEL_18;
  }

  v12 = sub_2394673B4(a2);
  v14 = 0;
  if (!sub_2393FF034(v12, &v14))
  {
    if (a3)
    {
      v13 = 16;
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 > v8)
  {
LABEL_18:
    if (!a3)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (!a3)
  {
    return 0;
  }

  v13 = 12;
LABEL_24:
  *(a1 + 76) = v13;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
LABEL_30:
    abort();
  }

  if (!result)
  {
    return result;
  }

LABEL_26:
  *(a1 + 88) = 0;
  return 1;
}

void *sub_23946A484()
{
  result = sub_2394500B0(0x60uLL);
  if (result)
  {
    *(result + 6) = -1;
  }

  return result;
}

void sub_23946A4AC(uint64_t a1)
{
  if (a1)
  {
    sub_239457574(*(a1 + 32), sub_23946AD6C, sub_2393FDCD8);
    sub_239457574(*(a1 + 40), sub_23946AD78, sub_23946A548);
    sub_239450144(*(a1 + 56));
    sub_239450144(*(a1 + 72));

    sub_239450144(a1);
  }
}

uint64_t sub_23946A554(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  v6 = *(a2 + 16);
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 16) == 0;
  }

  v8 = !v7;
  if (v6 && (v8 & 1) == 0)
  {
    *(a1 + 16) = v6;
  }

  v9 = *(a2 + 20);
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a1 + 20) == 0;
  }

  v11 = !v10;
  if (v9 && (v11 & 1) == 0)
  {
    *(a1 + 20) = v9;
  }

  v12 = *(a2 + 24);
  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 24) == -1;
  }

  v14 = !v13;
  if (v12 != -1 && (v14 & 1) == 0)
  {
    *(a1 + 24) = v12;
  }

  v15 = *(a1 + 8);
  if ((v15 & 2) == 0)
  {
    *a1 = *a2;
  }

  *(a1 + 8) = *(a2 + 8) | v15;
  v16 = *(a2 + 32);
  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 32) == 0;
  }

  v18 = !v17;
  if (!v16 || (v18 & 1) != 0 || (result = sub_23946A8A0(a1, v16), result))
  {
    v20 = *(a1 + 40);
    if (a3)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == 0;
    }

    v22 = !v21;
    if (*(a2 + 40))
    {
      if ((v22 & 1) == 0)
      {
        sub_239457574(v20, sub_23946AD78, sub_23946A548);
        *(a1 + 40) = 0;
        v23 = *(a2 + 40);
        if (v23)
        {
          result = sub_239457C24(v23, sub_23946AD84, sub_23945030C, sub_23946AD78, sub_23946A548);
          *(a1 + 40) = result;
          if (!result)
          {
            return result;
          }

          *(a1 + 48) = *(a2 + 48);
        }
      }
    }

    v24 = *(a2 + 56);
    v25 = a3 || *(a1 + 56) == 0;
    v26 = !v25;
    if (!v24 || v26 || (result = sub_23946AAE4(a1, v24, *(a2 + 64)), result))
    {
      v27 = *(a2 + 72);
      if (a3)
      {
        v28 = 1;
      }

      else
      {
        v28 = *(a1 + 72) == 0;
      }

      v29 = !v28;
      if (!v27 || (v29 & 1) != 0)
      {
        goto LABEL_71;
      }

      v30 = *(a2 + 80);
      if (v30 == 16 || v30 == 4)
      {
        result = sub_23946AB58((a1 + 72), (a1 + 80), v27, v30);
        if (result)
        {
LABEL_71:
          v31 = *(a2 + 88);
          result = 1;
LABEL_75:
          *(a1 + 88) = v31;
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v31 = 1;
      goto LABEL_75;
    }
  }

  return result;
}

uint64_t sub_23946A790(uint64_t a1, int a2)
{
  if (sub_239462934(a2))
  {
    *(a1 + 16) = a2;
    return 1;
  }

  else
  {
    sub_2394170F4(20, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vpm.c", 273);
    return 0;
  }
}

uint64_t sub_23946A7EC(uint64_t a1, int a2)
{
  if (sub_239467F1C(a2))
  {
    *(a1 + 20) = a2;
    return 1;
  }

  else
  {
    sub_2394170F4(11, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vpm.c", 282);
    return 0;
  }
}

void *sub_23946A848(void *result, uint64_t a2)
{
  v2 = result[1] | 2;
  *result = a2;
  result[1] = v2;
  return result;
}

unint64_t *sub_23946A858(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  result = sub_2394574D8();
  *(a1 + 32) = result;
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  return result;
}

BOOL sub_23946A8A0(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    sub_239457574(*(result + 32), sub_23946AD6C, sub_2393FDCD8);
    if (a2)
    {
      v4 = sub_239457C24(a2, sub_23946AD90, sub_239450894, sub_23946AD6C, sub_2393FDCD8);
      *(v3 + 32) = v4;
      return v4 != 0;
    }

    else
    {
      *(v3 + 32) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23946A958(uint64_t a1, _BYTE *__s, size_t __n)
{
  v4 = sub_23946A99C(a1, 0, __s, __n);
  result = 1;
  if (!v4)
  {
    *(a1 + 88) = 1;
    return 0;
  }

  return result;
}

uint64_t sub_23946A99C(uint64_t a1, int a2, _BYTE *__s, size_t __n)
{
  result = 0;
  if (__s && __n)
  {
    if (memchr(__s, 0, __n))
    {
      return 0;
    }

    if (!a2)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        sub_239457574(v9, sub_23946AD78, sub_23946A548);
        *(a1 + 40) = 0;
      }
    }

    result = sub_23945071C(__s, __n);
    if (result)
    {
      v10 = result;
      v11 = *(a1 + 40);
      if (v11 || (v11 = sub_2394574D8(), (*(a1 + 40) = v11) != 0))
      {
        if (sub_2394579D0(v11, v10))
        {
          return 1;
        }

        sub_239450144(v10);
        if (!sub_239431484(*(a1 + 40)))
        {
          sub_2393FFA58(*(a1 + 40));
          result = 0;
          *(a1 + 40) = 0;
          return result;
        }
      }

      else
      {
        sub_239450144(v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_23946AA98(uint64_t a1, _BYTE *__s, size_t __n)
{
  v4 = 1;
  if (!sub_23946A99C(a1, 1, __s, __n))
  {
    *(a1 + 88) = 1;
    return 0;
  }

  return v4;
}

uint64_t sub_23946AAE4(uint64_t a1, void *__s, size_t __n)
{
  if ((!__n || !memchr(__s, 0, __n)) && sub_23946AB58((a1 + 56), (a1 + 64), __s, __n))
  {
    return 1;
  }

  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_23946AB58(void **a1, unint64_t *a2, const void *a3, unint64_t a4)
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      result = sub_239450350(a3, a4);
      if (result)
      {
        v8 = result;
        if (*a1)
        {
          sub_239450144(*a1);
        }

        *a1 = v8;
        if (a2)
        {
          *a2 = a4;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23946ABC4(uint64_t a1, const void *a2, unint64_t a3)
{
  if ((a3 == 16 || a3 == 4) && sub_23946AB58((a1 + 72), (a1 + 80), a2, a3))
  {
    return 1;
  }

  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_23946AC20(uint64_t a1, char *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_239464824(&v4, a2);
  if (result)
  {
    if ((result == 16 || result == 4) && sub_23946AB58((a1 + 72), (a1 + 80), &v4, result))
    {
      return 1;
    }

    else
    {
      result = 0;
      *(a1 + 88) = 1;
    }
  }

  return result;
}

void *sub_23946ACBC(const char *a1)
{
  if (!strcmp(a1, "default"))
  {
    return &unk_2395D1420;
  }

  if (!strcmp(a1, "pkcs7") || !strcmp(a1, "smime_sign"))
  {
    return &unk_2395D1480;
  }

  if (!strcmp(a1, "ssl_client"))
  {
    return &unk_2395D14E0;
  }

  if (!strcmp(a1, "ssl_server"))
  {
    return &unk_2395D1540;
  }

  return 0;
}

uint64_t sub_23946AD9C(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 < 2)
    {
      v2 = result;
      result = **result;
      if (a2)
      {
        if (result || (**v2 = sub_239402EE8(), (result = **v2) != 0))
        {

          return sub_2393FCD8C(result, 1uLL);
        }
      }

      else
      {
        sub_239402ECC(result);
        **v2 = 0;
        return 1;
      }
    }

    else
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509cset.c", 72);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946AE44(void *a1, unint64_t *a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23946AE60(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(*result + 24) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(*v3 + 24));
        *(*v3 + 24) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

uint64_t sub_23946AEC8(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(*result + 32) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(*v3 + 32));
        *(*v3 + 32) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

uint64_t sub_23946AF30(uint64_t a1)
{
  sub_239457A78(*(*a1 + 40), sub_23946B198);
  sub_23940327C(*a1 + 56);
  return 1;
}

uint64_t sub_23946AF88(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 8) != a2)
    {
      v2 = sub_2393FF9A4(a2);
      if (v2)
      {
        sub_2393FEBA0(*(v3 + 8));
        *(v3 + 8) = v2;
      }
    }

    return v2 != 0;
  }

  return result;
}

BOOL sub_23946AFE4(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 4) | 0x100) != 0x102)
  {
    sub_2394170F4(12, 0, 191, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509cset.c", 221);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (*a1 != a2)
  {
    v3 = sub_2393FC990();
    if (v3)
    {
      sub_239402ECC(*a1);
      *a1 = v3;
    }
  }

  return v3 != 0;
}

uint64_t sub_23946B070(unint64_t **a1, void **a2)
{
  sub_23940327C((*a1 + 7));
  v4 = *a1;

  return sub_23946D688(v4, a2);
}

uint64_t sub_23946B0C0(void *a1, unint64_t *a2)
{
  v4 = sub_23946BC28(a2);
  v5 = sub_23946BC28(a2);
  v6 = v5;
  if (v4 && v5)
  {
    sub_23946BC1C(a1[1]);
    a1[1] = v4;
    sub_23946BC1C(*(*a1 + 8));
    *(*a1 + 8) = v6;
    return 1;
  }

  else
  {
    sub_23946BC1C(v4);
    sub_23946BC1C(v6);
    return 0;
  }
}

uint64_t sub_23946B148(uint64_t a1, char *a2, size_t a3)
{
  result = sub_2393FF8AC(*(a1 + 16), a2, a3);
  if (result)
  {
    *(*(a1 + 16) + 16) &= 0xFFFFFFFFFFFFFFF0;
    *(*(a1 + 16) + 16) |= 8uLL;
    return 1;
  }

  return result;
}

uint64_t sub_23946B198(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23946B1C8(unint64_t **a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_239450F00(a2);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_23946B238(a1, v7, a3, v4);
}

uint64_t sub_23946B238(unint64_t **a1, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0xFFFFFFFFLL;
  v8 = sub_23946B300(a1, a2, -1);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = sub_23946B39C(a1, v8);
    if (v9)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    v15 = 0;
    v11 = sub_2393FE214(&v15, v10);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }

    v7 = v11;
    v12 = v11;
    v14[0] = v15;
    v14[1] = v11;
    if (!sub_2394077E8(v14))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      if (v7 < a4 && sub_239407AC8(v14, a3, v12))
      {
        a3[v12] = 0;
        goto LABEL_8;
      }
    }

    v7 = 0xFFFFFFFFLL;
LABEL_8:
    sub_239450144(v15);
  }

  return v7;
}

uint64_t sub_23946B300(unint64_t **a1, uint64_t a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v5 = *a1;
    v6 = sub_239431484(*a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(v5, i);
      v3 = (v3 + 1);
      if (!sub_239450998(*v9, a2))
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_23946B390(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

unint64_t *sub_23946B39C(uint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(*a1) <= a2)
  {
    return 0;
  }

  v4 = *a1;

  return sub_239457528(v4, a2);
}

uint64_t *sub_23946B400(uint64_t *result)
{
  if (result)
  {
    return sub_239431484(*result);
  }

  return result;
}

uint64_t sub_23946B424(unint64_t **a1, unsigned int a2, int a3)
{
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 4294967294;
  }

  return sub_23946B300(a1, v5, a3);
}

uint64_t sub_23946B480(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (sub_239431484(*a1) <= a2)
    {
      return 0;
    }

    else
    {
      v5 = a2;
      v6 = *a1;
      v2 = sub_239457700(*a1, a2);
      v7 = sub_239431484(v6);
      *(a1 + 8) = 1;
      if (v7 != a2)
      {
        v8 = v7;
        if (a2)
        {
          v9 = *(sub_239457528(v6, a2 - 1) + 4) + 1;
        }

        else
        {
          v9 = *(v2 + 16);
        }

        if (v9 < *(sub_239457528(v6, v5) + 4) && v8 > v5)
        {
          do
          {
            v12 = sub_239457528(v6, v5);
            --*(v12 + 4);
            ++v5;
          }

          while (v8 != v5);
        }
      }
    }
  }

  return v2;
}

unint64_t *sub_23946B570(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  result = sub_23946B5D4(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, v8, v7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

void **sub_23946B5D4(void ***a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  if (a1 && (v10 = *a1) != 0 || (v10 = sub_23946DE08()) != 0)
  {
    if (sub_23946BA00(v10, a2) && sub_23946BA6C(v10, a3, a4, a5))
    {
      if (a1 && !*a1)
      {
        *a1 = v10;
      }
    }

    else
    {
      if (!a1 || v10 != *a1)
      {
        sub_23946DE14(v10);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t sub_23946B688(uint64_t result, unint64_t *a2, int a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *result;
  v9 = sub_239431484(*result);
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (a3 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = a4 == 0;
  *(v7 + 8) = 1;
  if (a4 == -1)
  {
    if (v11)
    {
      v13 = sub_239457528(v8, v11 - 1);
      v12 = 0;
      goto LABEL_13;
    }

    v14 = 0;
    v12 = 1;
  }

  else
  {
    if (v11 < v9)
    {
      v13 = sub_239457528(v8, v11);
LABEL_13:
      v14 = *(v13 + 4);
      goto LABEL_18;
    }

    if (v11)
    {
      v14 = *(sub_239457528(v8, v11 - 1) + 4) + 1;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_18:
  result = sub_23946DE20(a2);
  if (result)
  {
    v15 = result;
    *(result + 16) = v14;
    if (sub_23945761C(v8, result, v11))
    {
      if (v12)
      {
        v16 = sub_239431484(v8);
        if (v11 + 1 < v16)
        {
          v17 = v11 + 1;
          v18 = ~v11 + v16;
          do
          {
            v19 = sub_239457528(v8, v17);
            ++*(v19 + 4);
            ++v17;
            --v18;
          }

          while (v18);
        }
      }

      return 1;
    }

    else
    {
      sub_23946DE14(v15);
      return 0;
    }
  }

  return result;
}

unint64_t *sub_23946B7EC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6, int a7)
{
  result = sub_23946B850(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, a6, a7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

void **sub_23946B850(void ***a1, unsigned int a2, int a3, char *a4, size_t a5)
{
  v9 = sub_239450F00(a2);
  if (v9)
  {

    return sub_23946B5D4(a1, v9, a3, a4, a5);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 324);
    return 0;
  }
}

unint64_t *sub_23946B8E0(uint64_t a1, const char *a2, uint64_t a3, char *a4, size_t a5, int a6, int a7)
{
  result = sub_23946B944(0, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_23946B688(a1, result, a6, a7);
    sub_23946DE14(v11);
    return v12;
  }

  return result;
}

void **sub_23946B944(void ***a1, const char *a2, int a3, char *a4, size_t a5)
{
  v9 = sub_239450E0C(a2, 0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_23946B5D4(a1, v9, a3, a4, a5);
    sub_2393FDCD8(v10);
    return v11;
  }

  else
  {
    sub_2394170F4(11, 0, 111, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 309);
    sub_2394171A0(2u, v13, v14, v15, v16, v17, v18, v19, "name=");
    return 0;
  }
}

BOOL sub_23946BA00(void ***a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_2393FDCD8(*a1);
    v4 = sub_239450894(a2);
    *a1 = v4;
    return v4 != 0;
  }

  else
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509name.c", 364);
    return 0;
  }
}

uint64_t sub_23946BA6C(uint64_t result, int a2, char *__s, size_t __n)
{
  if (result)
  {
    v4 = __n;
    v7 = result;
    if (__s || !__n)
    {
      if (a2 >= 1 && (a2 & 0x1000) != 0)
      {
        v8 = sub_2394509E8(*result);
        return sub_2393FE810((v7 + 8), __s, v4, a2, v8) != 0;
      }

      else
      {
        if ((__n & 0x8000000000000000) != 0)
        {
          v4 = strlen(__s);
        }

        result = sub_2393FF8AC(*(v7 + 8), __s, v4);
        if (result)
        {
          if (a2 != -1)
          {
            *(*(v7 + 8) + 4) = a2;
          }

          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946BB28(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509rset.c", 70);
    return 0;
  }

  v4 = *(*a1 + 24);

  return sub_2393FCD8C(v4, 0);
}

uint64_t sub_23946BB80(void *a1, unint64_t *a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 32), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23946BB9C(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946E800(*a1 + 40, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23946BBB8(uint64_t a1, unint64_t *a2)
{
  result = sub_23946BC28(a2);
  if (result)
  {
    v4 = result;
    sub_23946BC1C(*(a1 + 8));
    *(a1 + 8) = v4;
    return 1;
  }

  return result;
}

uint64_t sub_23946BC38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    if (a3 == -1)
    {
      sub_2393FDCD8(*result);
      *v6 = a2;
      v8 = *(v6 + 8);
      if (v8)
      {
        sub_2394030C4(v8);
        *(v6 + 8) = 0;
      }

      return 1;
    }

    if (*(result + 8) || (result = sub_2394030B8(), (*(v6 + 8) = result) != 0))
    {
      sub_2393FDCD8(*v6);
      *v6 = a2;
      if (a3)
      {
        sub_2393FF118(*(v6 + 8), a3, a4);
      }

      return 1;
    }
  }

  return result;
}

int *sub_23946BCD4(int *result, int *a2, int **a3, void *a4)
{
  if (result)
  {
    *result = *a4;
  }

  if (a2)
  {
    result = a4[1];
    if (result)
    {
      v6 = *result;
      result = sub_2393FF0B4(result);
    }

    else
    {
      v6 = -1;
    }

    *a2 = v6;
    if (a3)
    {
      *a3 = result;
    }
  }

  return result;
}

uint64_t sub_23946BD34(uint64_t a1, unsigned int *a2)
{
  if ((sub_23942E7AC(a2) & 2) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 5;
  }

  v5 = sub_2393FFBE4(a2);
  v6 = sub_239450F00(v5);

  return sub_23946BC38(a1, v6, v4, 0);
}

uint64_t sub_23946BDA0(uint64_t *a1, uint64_t *a2)
{
  result = sub_239450998(*a1, *a2);
  if (!result)
  {
    v5 = a1[1];
    v6 = a2[1];
    if (v5 | v6)
    {

      return sub_2393FF264(v5, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946BE04(uint64_t a1, uint64_t a2)
{
  if (sub_23946BDA0(*(a1 + 8), *(*a1 + 16)))
  {
    sub_2394170F4(11, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_all.c", 75);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;

    return sub_2394583A8(byte_278A82C40, v5, v6, v7, a2);
  }
}

uint64_t sub_23946BEA8(unint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C((*a1 + 10));
  v7 = *a1;
  v6 = a1[1];
  v8 = (*a1)[2];
  v9 = a1[2];

  return sub_23945814C(byte_278A82C40, v8, v6, v9, v7, a2, a3);
}

uint64_t sub_23946BF10(unint64_t **a1, uint64_t *a2)
{
  sub_23940327C((*a1 + 10));
  v5 = *a1;
  v4 = a1[1];
  v6 = (*a1)[2];
  v7 = a1[2];

  return sub_239458228(byte_278A82C40, v6, v4, v7, v5, a2);
}

uint64_t sub_23946BF68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C(*a1);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;

  return sub_23945814C(byte_278A82860, v6, 0, v7, v8, a2, a3);
}

uint64_t sub_23946BFCC(uint64_t *a1, uint64_t *a2)
{
  sub_23940327C(*a1);
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;

  return sub_239458228(byte_278A82860, v4, 0, v5, v6, a2);
}

uint64_t sub_23946C020(unint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_23940327C((*a1 + 7));
  v7 = *a1;
  v6 = a1[1];
  v8 = (*a1)[1];
  v9 = a1[2];

  return sub_23945814C(byte_278A82490, v8, v6, v9, v7, a2, a3);
}

uint64_t sub_23946C088(unint64_t **a1, uint64_t *a2)
{
  sub_23940327C((*a1 + 7));
  v5 = *a1;
  v4 = a1[1];
  v6 = (*a1)[1];
  v7 = a1[2];

  return sub_239458228(byte_278A82490, v6, v4, v7, v5, a2);
}

void *sub_23946C1BC(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C204(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C204(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23946EEB4(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C274(uint64_t a1, unint64_t **a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C2BC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C2BC(uint64_t a1, unint64_t **a2)
{
  v6 = 0;
  v3 = sub_23946F1CC(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C324(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C36C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C36C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23945621C(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C3DC(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C424(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C424(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v3 = sub_239456290(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C48C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C4D4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C4D4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239456134(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C544(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C58C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C58C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2394561A8(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946C5F4(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C63C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C63C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418A78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C6AC(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C6F4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C6F4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418B00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

uint64_t *sub_23946C75C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C7A4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t *sub_23946C7A4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239414CE0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C814(uint64_t a1, uint64_t **a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C85C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C85C(uint64_t a1, uint64_t **a2)
{
  v6 = 0;
  v3 = sub_239414D54(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946C8C4(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C90C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C90C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418B78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946C97C(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946C9C4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946C9C4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418C00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946CA2C(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CA74(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CA74(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239415AF4(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CAE4(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CB2C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CB2C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v3 = sub_239415BA4(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946CB94(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CBDC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CBDC(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418C78(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CC4C(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CC94(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CC94(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239418D00(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

int *sub_23946CCFC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = sub_239465F50(a1);
  if (result)
  {
    v8 = *result;
    v9 = *(result + 1);

    return sub_239430E60(v9, v8, a3, a4, a2);
  }

  return result;
}

uint64_t sub_23946CD70(unint64_t **a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v7 = sub_23946F1CC(a1, &v10);
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = sub_239430E60(v10, v7, a3, a4, a2);
  sub_239450144(v10);
  return v8;
}

void **sub_23946CE44(uint64_t a1, void ***a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CE8C(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

void **sub_23946CE8C(uint64_t a1, void ***a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_23946EC4C(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946CEFC(uint64_t a1, unint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CF44(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946CF44(uint64_t a1, unint64_t *a2)
{
  v6 = 0;
  v3 = sub_23946EC58(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void **sub_23946CFAC(uint64_t a1, void ***a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946CFF4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

void **sub_23946CFF4(uint64_t a1, void ***a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239452DCC(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D064(uint64_t a1, unint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D0AC(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D0AC(uint64_t a1, unint64_t *a2)
{
  v6 = 0;
  v3 = sub_239452DD8(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

unint64_t *sub_23946D114(uint64_t a1, uint64_t a2)
{
  result = sub_239452E98(a2);
  if (result)
  {
    v4 = result;
    v5 = sub_23946D064(a1, result);
    sub_239452DF0(v4);
    return v5;
  }

  return result;
}

void *sub_23946D160(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D1A8(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D1A8(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_2394186C0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D218(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D260(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D260(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239459638(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946D2C8(uint64_t a1, uint64_t *a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D310(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D310(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_239418988(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

void *sub_23946D380(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_23946D3C8(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_23946D3C8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_2394189FC(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

unint64_t *sub_23946D430(uint64_t a1, uint64_t a2)
{
  result = sub_239452E98(a2);
  if (result)
  {
    v4 = result;
    v5 = sub_23946D0AC(a1, result);
    sub_239452DF0(v4);
    return v5;
  }

  return result;
}

void *sub_23946D47C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239403CE4(a1, &v7, &v6, 0x19000uLL))
  {
    return 0;
  }

  v5 = v7;
  v3 = sub_2394126B0(a2, &v5, v6);
  sub_239450144(v7);
  return v3;
}

uint64_t sub_23946D4EC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = sub_239412724(a2, &v6);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = sub_2394037E0(a1, v6, v3);
  sub_239450144(v6);
  return v4;
}

void *sub_23946D594(unsigned int a1, int a2, uint64_t a3)
{
  v5 = sub_239450F00(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_239402AC0(byte_278A822F0);
  v8 = sub_2394030B8();
  v9 = v8;
  if (!v7 || !v8 || (*v7 = v6, !sub_2394579D0(*(v7 + 1), v8)))
  {
    sub_2394026C0(v7, byte_278A822F0);
    sub_2394030C4(v9);
    return 0;
  }

  sub_2393FF118(v9, a2, a3);
  return v7;
}

unint64_t *sub_23946D6EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 40);
  if (result || (result = sub_239457478(sub_23946D74C), (*(v3 + 40) = result) != 0))
  {
    result = sub_2394579D0(result, a2);
    if (result)
    {
      sub_23940327C(v3 + 56);
      return 1;
    }
  }

  return result;
}

uint64_t sub_23946D760(uint64_t a1, uint64_t a2)
{
  if (sub_23946BDA0(*(a1 + 8), *(*a1 + 8)))
  {
    sub_2394170F4(11, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_crl.c", 319);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;

    return sub_2394583A8(byte_278A82490, v5, v6, v7, a2);
  }
}

uint64_t sub_23946D7F0(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a3;
  sub_239457D1C(&stru_27DF771B0);
  v8 = sub_239457980(*(*a1 + 40));
  sub_239457D5C(&stru_27DF771B0);
  if (!v8)
  {
    sub_239457D3C(&stru_27DF771B0);
    if (!sub_239457980(*(*a1 + 40)))
    {
      sub_239457A78(*(*a1 + 40), sub_23946DD80);
    }

    sub_239457D5C(&stru_27DF771B0);
  }

  memset(&v14[1], 0, 24);
  v13 = 0;
  result = sub_23945784C(*(*a1 + 40), &v13, v14, sub_23946DD80);
  if (result)
  {
    for (i = v13; ; i = ++v13)
    {
      if (i >= sub_239431484(*(*a1 + 40)))
      {
        return 0;
      }

      v11 = sub_239457528(*(*a1 + 40), v13);
      if (sub_2393FC994(*v11, a3))
      {
        return 0;
      }

      if (!a4)
      {
        break;
      }

      v12 = sub_239467D34(a1);
      if (!sub_239465AD0(a4, v12))
      {
        break;
      }
    }

    if (a2)
    {
      *a2 = v11;
    }

    return 1;
  }

  return result;
}

uint64_t sub_23946D964(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = sub_239465D40(a3);
  v7 = sub_239465C18(a3);

  return sub_23946D7F0(a1, a2, v6, v7);
}

uint64_t sub_23946D9C8(int a1, uint64_t a2)
{
  if (*a2)
  {
    if (a1 == 5)
    {
      v2 = *(*a2 + 40);
      if (v2)
      {
        sub_239457C08(v2, sub_23946D74C);
      }
    }
  }

  return 1;
}

uint64_t sub_23946DA10(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (result != 5)
  {
    if (result == 3)
    {
      sub_23945C474(*(v2 + 32));
      sub_23945F0C8(*(v2 + 40));
    }

    else if (result == 1)
    {
      *(v2 + 36) = 0;
      *(v2 + 28) = 0;
      *(v2 + 44) = 0;
      return result;
    }

    return 1;
  }

  v3 = *v2;
  v4 = **v2;
  if (!v4)
  {
LABEL_12:
    if (v3[6])
    {
      v6 = 139;
      v7 = 183;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v5 = sub_2393FD028(v4);
  if (v5 >= 2)
  {
    v6 = 140;
    v7 = 176;
LABEL_14:
    sub_2394170F4(11, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_crl.c", v7);
    return 0;
  }

  if (!v5)
  {
    v3 = *v2;
    goto LABEL_12;
  }

LABEL_17:
  v8 = sub_2394316DC();
  result = sub_23946CDF0(v2, v8, v2 + 52, 0);
  if (result)
  {
    v31 = 0;
    v9 = sub_2394660C8(v2, 770, &v31, 0);
    *(v2 + 40) = v9;
    if (!v9)
    {
      if (v31 != -1)
      {
        return 0;
      }

LABEL_38:
      v16 = sub_2394660C8(v2, 90, &v31, 0);
      *(v2 + 32) = v16;
      if (v16 || v31 == -1)
      {
        v17 = *(*v2 + 48);
        if (sub_239431484(v17))
        {
          v18 = 0;
          while (1)
          {
            v19 = sub_239457528(v17, v18);
            v20 = sub_239431484(v19);
            v21 = sub_2394509E8(v20);
            if (sub_239468174(v19) && v21 != 90 && v21 != 770)
            {
              break;
            }

            if (++v18 >= sub_239431484(v17))
            {
              goto LABEL_48;
            }
          }

          *(v2 + 28) |= 0x200u;
        }

LABEL_48:
        v22 = sub_239465D34(v2);
        if (sub_239431484(v22))
        {
          v23 = 0;
          while (1)
          {
            v24 = sub_239457528(v22, v23);
            v32 = 0;
            v25 = sub_2394661E4(v24, 141, &v32, 0);
            v26 = v25;
            if (!v25 && v32 != -1)
            {
              break;
            }

            if (v25)
            {
              *(v24 + 6) = sub_2393FD07C(v25);
              sub_239402ECC(v26);
            }

            else
            {
              *(v24 + 6) = -1;
            }

            v27 = v24[2];
            if (sub_239431484(v27))
            {
              v28 = 0;
              while (1)
              {
                v29 = sub_239457528(v27, v28);
                if (sub_239468174(v29))
                {
                  break;
                }

                if (++v28 >= sub_239431484(v27))
                {
                  goto LABEL_61;
                }
              }

              *(v2 + 28) |= 0x200u;
            }

LABEL_61:
            ++v23;
            v30 = sub_239431484(v22);
            result = 1;
            if (v23 >= v30)
            {
              return result;
            }
          }

          *(v2 + 28) |= 0x80u;
        }

        return 1;
      }

      return 0;
    }

    v10 = *(v2 + 48);
    v11 = v10 | 1;
    *(v2 + 48) = v10 | 1;
    if (*(v9 + 2) < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = v10 | 5;
      *(v2 + 48) = v10 | 5;
      v12 = 1;
    }

    if (*(v9 + 3) >= 1)
    {
      ++v12;
      v11 |= 8u;
      *(v2 + 48) = v11;
    }

    v13 = *(v9 + 7);
    if (v13 > 0)
    {
      v11 |= 0x10u;
      ++v12;
    }

    if (v12 > 1)
    {
      v11 |= 2u;
    }

    if (v13 > 0 || v12 >= 2)
    {
      *(v2 + 48) = v11;
    }

    if (*(v9 + 6) >= 1)
    {
      v11 |= 0x20u;
      *(v2 + 48) = v11;
    }

    if (v9[2])
    {
      *(v2 + 48) = v11 | 0x40;
    }

    v14 = *v9;
    v15 = sub_239467D34(v2);
    result = sub_23945F414(v14, v15);
    if (result)
    {
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_23946DD80(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_23946DE70(void ***a1, unint64_t *a2)
{
  result = sub_2393FC5C8(byte_278A82740, a2);
  if (result)
  {
    v4 = result;
    sub_2394026C0(*a1, byte_278A82740);
    *a1 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_23946DEBC(unint64_t *a1, void *a2, void *a3)
{
  if (sub_2394018FC(a1, 0, byte_278A82740) < 1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(a1[2] + 8);
  }

  if (a3)
  {
    *a3 = *a1[2];
  }

  return 1;
}

uint64_t sub_23946DF30(uint64_t *a1)
{
  result = sub_23945004C(0x28uLL);
  if (result)
  {
    v3 = result;
    v4 = sub_2394574D8();
    *v3 = v4;
    if (v4)
    {
      v5 = sub_239405E68();
      *(v3 + 16) = v5;
      if (v5)
      {
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        result = 1;
        *(v3 + 8) = 1;
        *a1 = v3;
        return result;
      }

      if (*v3)
      {
        sub_2393FFA58(*v3);
      }
    }

    sub_239450144(v3);
    return 0;
  }

  return result;
}

void sub_23946DFA8(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_2393FFA58(*(v2 + 16));
      sub_239457574(*v2, sub_23946E410, sub_23946DE14);
      v3 = *(v2 + 24);
      if (v3)
      {
        sub_239450144(v3);
      }

      sub_239450144(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_23946E020(uint64_t *a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v16 = 0;
  v17 = v7;
  if (a3 >= 0x100000)
  {
    a3 = 0x100000;
  }

  result = sub_239400E0C(&v16, &v17, a3, byte_278A82710, 0xFFFFFFFF, 0, a5, 0);
  if (result >= 1)
  {
    v9 = v16;
    if (*a1)
    {
      sub_23946DFA8(a1);
    }

    v15 = 0;
    if (sub_23946DF30(&v15))
    {
      v10 = v15;
      if (sub_239405F30(*(v15 + 16), v17 - v7))
      {
        if (v17 != v7)
        {
          memcpy(*(*(v10 + 16) + 8), v7, v17 - v7);
        }

        if (sub_239431484(v9))
        {
          v11 = 0;
          while (1)
          {
            v12 = sub_239457528(v9, v11);
            if (sub_239431484(v12))
            {
              break;
            }

LABEL_16:
            if (++v11 >= sub_239431484(v9))
            {
              goto LABEL_17;
            }
          }

          v13 = 0;
          while (1)
          {
            v14 = sub_239457528(v12, v13);
            *(v14 + 4) = v11;
            if (!sub_2394579D0(*v10, v14))
            {
              break;
            }

            sub_23945754C(v12, v13++, 0);
            if (v13 >= sub_239431484(v12))
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_17:
          if (sub_23946E41C(v10))
          {
            sub_239457574(v9, sub_23946E7C4, sub_23946E6EC);
            *(v10 + 8) = 0;
            *a1 = v10;
            *a2 = v17;
            return 1;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    sub_2394026C0(v10, byte_278A82740);
    sub_239457574(v9, sub_23946E7C4, sub_23946E6F0);
    sub_2394170F4(11, 0, 12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_name.c", 252);
    return 0;
  }

  return result;
}

uint64_t sub_23946E228(uint64_t *a1, void **a2)
{
  v3 = *a1;
  if (*(*a1 + 8))
  {
    v15 = 0;
    v4 = sub_2394574D8();
    if (!v4)
    {
      goto LABEL_20;
    }

    if (sub_239431484(*v3))
    {
      v5 = 0;
      v6 = 0;
      v7 = -1;
      do
      {
        v8 = sub_239457528(*v3, v5);
        if (*(v8 + 4) != v7)
        {
          v9 = sub_2394574D8();
          if (!v9)
          {
            goto LABEL_20;
          }

          v6 = v9;
          if (!sub_2394579D0(v4, v9))
          {
            sub_2393FFA58(v6);
            goto LABEL_20;
          }

          v7 = *(v8 + 4);
        }

        if (!sub_2394579D0(v6, v8))
        {
          goto LABEL_20;
        }

        ++v5;
      }

      while (v5 < sub_239431484(*v3));
    }

    v14 = v4;
    v10 = sub_2394019E8(&v14, 0, byte_278A82710, 0xFFFFFFFFLL, 0);
    if (v10 >= 1 && sub_239405F30(*(v3 + 16), v10) && (v15 = *(*(v3 + 16) + 8), sub_2394019E8(&v14, &v15, byte_278A82710, 0xFFFFFFFFLL, 0) > 0))
    {
      sub_239457574(v4, sub_23946E7C4, sub_23946E6EC);
      *(v3 + 8) = 0;
      if (sub_23946E41C(v3))
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_20:
      sub_239457574(v4, sub_23946E7C4, sub_23946E6EC);
    }

    return 0xFFFFFFFFLL;
  }

LABEL_15:
  v11 = *(v3 + 16);
  v12 = *v11;
  if (a2)
  {
    if (v12 << 32)
    {
      memcpy(*a2, v11[1], v12);
    }

    *a2 = *a2 + v12;
  }

  return v12;
}

uint64_t sub_23946E41C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_239450144(v2);
    *(a1 + 24) = 0;
  }

  if (sub_239431484(*a1))
  {
    v3 = sub_2394574D8();
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      if (sub_239431484(*a1))
      {
        v5 = 0;
        v6 = 0;
        v7 = -1;
        v32 = v4;
        do
        {
          v8 = sub_239457528(*a1, v5);
          if (*(v8 + 4) != v7)
          {
            v9 = sub_2394574D8();
            if (!v9)
            {
              goto LABEL_45;
            }

            v6 = v9;
            if (!sub_2394579D0(v4, v9))
            {
              sub_2393FFA58(v6);
              goto LABEL_45;
            }

            v7 = *(v8 + 4);
          }

          v10 = sub_239402AC0(byte_278A82670);
          if (!v10)
          {
            goto LABEL_45;
          }

          v11 = v10;
          *v10 = sub_239450894(*v8);
          v12 = *(v11 + 8);
          v13 = v8[1];
          if ((sub_2394004D8(*(v13 + 4)) & 0x2956) != 0)
          {
            *(v12 + 4) = 12;
            v14 = sub_2393FE214((v12 + 8), v13);
            *v12 = v14;
            if (v14 == -1)
            {
              goto LABEL_43;
            }

            v33 = v7;
            if (v14 < 1)
            {
LABEL_25:
              v23 = *(v12 + 8);
              LODWORD(v24) = v23;
              v4 = v32;
            }

            else
            {
              v15 = *(v12 + 8);
              v16 = v14;
              v17 = v14 + 1;
              v18 = v14;
              v19 = v15;
              while (sub_23945046C(*v19))
              {
                ++v19;
                --v18;
                if (--v17 <= 1)
                {
                  goto LABEL_25;
                }
              }

              v20 = &v15[v16 - 1];
              while (1)
              {
                v21 = *v20--;
                if (!sub_23945046C(v21))
                {
                  break;
                }

                v22 = __OFSUB__(v18--, 1);
                if ((v18 < 0) ^ v22 | (v18 == 0))
                {
                  goto LABEL_25;
                }
              }

              v25 = 0;
              v24 = *(v12 + 8);
              v4 = v32;
              do
              {
                if (sub_23945046C(*v19))
                {
                  *v24 = 32;
                  do
                  {
                    v26 = *++v19;
                    ++v25;
                  }

                  while (sub_23945046C(v26));
                }

                else
                {
                  v27 = *v19++;
                  *v24 = sub_239450458(v27);
                  ++v25;
                }

                ++v24;
              }

              while (v25 < v18);
              v23 = *(v12 + 8);
            }

            *v12 = v24 - v23;
            v7 = v33;
          }

          else if (!sub_2393FF854(v12, v13))
          {
            goto LABEL_43;
          }

          if (!sub_2394579D0(v6, v11))
          {
LABEL_43:
            sub_2394026C0(v11, byte_278A82670);
            goto LABEL_45;
          }

          ++v5;
        }

        while (v5 < sub_239431484(*a1));
      }

      v29 = sub_23946E714(v4, 0);
      if ((v29 & 0x80000000) != 0 || (*(a1 + 32) = v29, v30 = sub_23945004C(v29), (v34 = v30) == 0))
      {
LABEL_45:
        v28 = 0;
      }

      else
      {
        *(a1 + 24) = v30;
        sub_23946E714(v4, &v34);
        v28 = 1;
      }

      sub_239457574(v4, sub_23946E7C4, sub_23946E6F0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    return 1;
  }

  return v28;
}

uint64_t sub_23946E714(unint64_t *a1, void **a2)
{
  v8 = 0;
  if (!sub_239431484(a1))
  {
    return 0;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  while (1)
  {
    v8 = sub_239457528(a1, v4);
    v6 = sub_2394019E8(&v8, a2, byte_278A826C0, 0xFFFFFFFFLL, 0);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v5 = (v6 + v5);
    if (++v4 >= sub_239431484(a1))
    {
      return v5;
    }
  }

  return v6;
}

uint64_t sub_23946E800(uint64_t result, uint64_t a2)
{
  v8 = 0;
  if (result)
  {
    v3 = result;
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (sub_2394065F4(v6, 0) && sub_239418328(v6, a2) && sub_2394066A4(v6, &v8, &v7) && (v7 & 0x8000000000000000) == 0)
    {
      v5 = v8;
      v4 = sub_2394004F8(0, &v5, v7, byte_278A827B0);
      if (v4 && v5 == (v8 + v7))
      {
        sub_239450144(v8);
        sub_2394026C0(*v3, byte_278A827B0);
        *v3 = v4;
        return 1;
      }

      sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 141);
    }

    else
    {
      sub_239406688(v6);
      sub_2394170F4(11, 0, 126, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 134);
      v4 = 0;
    }

    sub_2394026C0(v4, byte_278A827B0);
    sub_239450144(v8);
    return 0;
  }

  return result;
}

uint64_t sub_23946E93C(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (!result)
    {
      sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 162);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946E984(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2394178A4(*(a1 + 16));
  }

  else
  {
    sub_2394170F4(11, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_pubkey.c", 162);
  }

  return v1;
}

uint64_t sub_23946E9E0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  result = sub_23946BC38(*a1, a2, a3, a4);
  if (result)
  {
    sub_2393FFA9C(a1[1], a5, a6);
    *(a1[1] + 16) &= 0xFFFFFFFFFFFFFFF0;
    *(a1[1] + 16) |= 8uLL;
    sub_23946EA58(a1);
    return 1;
  }

  return result;
}

void sub_23946EA58(uint64_t a1)
{
  sub_239417838(*(a1 + 16));
  *(a1 + 16) = 0;
  v5 = 0;
  v2 = sub_2394018FC(a1, &v5, byte_278A827B0);
  if ((v2 & 0x80000000) == 0)
  {
    *&v4 = v5;
    *(&v4 + 1) = v2;
    v3 = sub_239418130(&v4);
    if (!v3 || *(&v4 + 1))
    {
      sub_239417838(v3);
    }

    else
    {
      *(a1 + 16) = v3;
    }
  }

  sub_239450144(v5);
  sub_239416A38();
}

uint64_t sub_23946EAE0(void *a1, void *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    *a1 = **a5;
  }

  if (a2)
  {
    *a2 = *(*(a5 + 8) + 8);
    *a3 = **(a5 + 8);
  }

  if (a4)
  {
    *a4 = *a5;
  }

  return 1;
}

uint64_t sub_23946EB20(int a1, uint64_t *a2)
{
  v3 = *a2;
  if (a1 == 5)
  {
    sub_23946EA58(v3);
  }

  else if (a1 == 3)
  {
    sub_239417838(*(v3 + 16));
  }

  return 1;
}

BOOL sub_23946EBD0(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 5)
  {
    if ((sub_2393FD028(*(v2 + 24)) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_req.c", 90);
      return 0;
    }
  }

  else if (a1 == 1)
  {
    v3 = sub_2394574D8();
    *(v2 + 48) = v3;
    return v3 != 0;
  }

  return 1;
}

uint64_t *sub_23946ED3C()
{
  v0 = sub_23946EDA8();
  if (v0)
  {
    *v0 = sub_239402AC0(byte_278A82C40);
    v0[1] = sub_23946BC10();
    v1 = sub_239402F28();
    v0[2] = v1;
    if (!*v0 || !v0[1] || !v1)
    {
      sub_23946EDF8(v0);
      return 0;
    }
  }

  return v0;
}

void *sub_23946EDA8()
{
  v0 = sub_2394500B0(0x158uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 6) = 1;
    v0[5] = -1;
    sub_2393F7EB0(v0 + 4);
    sub_239457CF8((v1 + 18));
  }

  return v1;
}

void sub_23946EDF8(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 24)))
  {
    sub_23941F114(&unk_27DF77278, a1, (a1 + 32));
    sub_2394026C0(*a1, byte_278A82C40);
    sub_23946BC1C(*(a1 + 8));
    sub_239402ECC(*(a1 + 16));
    sub_239402ECC(*(a1 + 64));
    sub_23945C474(*(a1 + 72));
    sub_23945F098(*(a1 + 80));
    sub_23945FF40(*(a1 + 88));
    sub_239460F34(*(a1 + 96));
    sub_23946F880(*(a1 + 136));
    j__pthread_rwlock_destroy((a1 + 144));

    sub_239450144(a1);
  }
}

uint64_t sub_23946EEB4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_2394170F4(12, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 238);
    v5 = 0;
    if (!a1)
    {
      return v5;
    }

    goto LABEL_5;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_23946EF4C(&v7, 0);
  if (v5)
  {
    *a2 = v7;
  }

  if (a1)
  {
LABEL_5:
    sub_23946EDF8(*a1);
    *a1 = v5;
  }

  return v5;
}

uint64_t sub_23946EF4C(__int128 *a1, uint64_t a2)
{
  v24 = 0uLL;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_239407F5C(a1, &v24, 536870928) || *(&v24 + 1) >> 30 || !sub_23940801C(&v24, &v22, 536870928) || !sub_23940801C(&v24, &v20, 536870928))
  {
    v5 = 153;
LABEL_15:
    sub_2394170F4(12, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", v5);
    return 0;
  }

  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (!sub_239407F2C(&v24, &v18, &v17, &v16, 0, &v15) || v17 != 3 || v15 || !sub_239407718(&v18, v16) || *(&v24 + 1))
  {
    v5 = 171;
    goto LABEL_15;
  }

  v3 = sub_23946EDA8();
  v4 = v3;
  if (v3)
  {
    v14 = v22;
    if (sub_239400E0C(v3, &v14, v23, byte_278A82C40, 0xFFFFFFFF, 0, 0, a2) < 1)
    {
      goto LABEL_13;
    }

    if (v14 != v22 + v23)
    {
      goto LABEL_13;
    }

    v14 = v20;
    v7 = sub_23946BBF8(0, &v14, v21);
    *(v4 + 8) = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    if (v14 != v20 + v21)
    {
      goto LABEL_13;
    }

    v14 = v18;
    v8 = sub_2393FC15C(0, &v14, v19);
    *(v4 + 16) = v8;
    if (!v8 || v14 != v18 + v19)
    {
      goto LABEL_13;
    }

    v9 = *v4;
    v10 = **v4;
    if (v10)
    {
      v11 = sub_2393FD028(v10);
      if (v11 >= 3)
      {
        v12 = 140;
        v13 = 210;
LABEL_35:
        sub_2394170F4(11, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", v13);
LABEL_13:
        sub_23946EDF8(v4);
        return 0;
      }

      if (v11)
      {
        if (v11 == 2)
        {
          return v4;
        }

        v9 = *v4;
        goto LABEL_33;
      }

      v9 = *v4;
    }

    if (v9[7] || v9[8])
    {
      v12 = 139;
      v13 = 218;
      goto LABEL_35;
    }

LABEL_33:
    if (!v9[9])
    {
      return v4;
    }

    v12 = 139;
    v13 = 224;
    goto LABEL_35;
  }

  return v4;
}

uint64_t sub_23946F1CC(unint64_t **a1, void **a2)
{
  if (a1)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    if (sub_2394065F4(v13, 0x40uLL))
    {
      if (sub_239406A10(v13, v12, 0x20000010u))
      {
        v11 = 0;
        v4 = sub_2394018FC(*a1, 0, byte_278A82C40);
        if ((v4 & 0x80000000) == 0)
        {
          v5 = v4;
          if (sub_239406C9C(v12, &v11, v4))
          {
            if (sub_2394018FC(*a1, &v11, byte_278A82C40) == v5)
            {
              v6 = sub_23946BC04(a1[1], 0);
              if ((v6 & 0x80000000) == 0)
              {
                v7 = v6;
                if (sub_239406C9C(v12, &v11, v6))
                {
                  if (sub_23946BC04(a1[1], &v11) == v7)
                  {
                    v8 = sub_239402F1C(a1[2], 0);
                    if ((v8 & 0x80000000) == 0)
                    {
                      v9 = v8;
                      if (sub_239406C9C(v12, &v11, v8))
                      {
                        if (sub_239402F1C(a1[2], &v11) == v9)
                        {
                          return sub_23940603C(v13, a2);
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

    sub_239406688(v13);
  }

  else
  {
    sub_2394170F4(12, 0, 155, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 261);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_23946F340(unint64_t **a1)
{
  v5 = 0;
  v1 = sub_23946F1CC(a1, &v5);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = v5;
  v2 = sub_23946EEB4(0, &v4, v1);
  sub_239450144(v5);
  return v2;
}

uint64_t sub_23946F3A4(uint64_t a1)
{
  *&v3 = sub_2393FFBF4(a1);
  *(&v3 + 1) = sub_239412CF0(a1);
  result = sub_23946EF4C(&v3, a1);
  if (!result || *(&v3 + 1))
  {
    sub_23946EDF8(result);
    return 0;
  }

  return result;
}

uint64_t sub_23946F428(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v12 = *a2;
  v6 = a1 && *a1;
  v7 = sub_23946EEB4(a1, &v12, a3);
  v8 = v7;
  if (v7)
  {
    v9 = v12;
    v10 = *a2 - v12 + a3;
    if (v10 < 1)
    {
LABEL_9:
      *a2 = v9;
      return v8;
    }

    if (sub_23946F85C((v7 + 136), &v12, v10))
    {
      v9 = v12;
      goto LABEL_9;
    }

    if (v6)
    {
      return 0;
    }

    sub_23946EDF8(v8);
    if (!a1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      *a1 = 0;
    }
  }

  return v8;
}

uint64_t sub_23946F4F8(unint64_t **a1, void **a2)
{
  if (a2 && !*a2)
  {
    v5 = sub_23946F5C0(a1, 0);
    v6 = v5;
    if (v5 >= 1)
    {
      v7 = sub_23945004C(v5);
      v8 = v7;
      *a2 = v7;
      if (v7)
      {
        v6 = sub_23946F5C0(a1, &v8);
        if (v6 <= 0)
        {
          sub_239450144(*a2);
          *a2 = 0;
        }
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v6;
  }

  else
  {

    return sub_23946F5C0(a1, a2);
  }
}

uint64_t sub_23946F5C0(unint64_t **a1, void **a2)
{
  if (a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_23946F1CC(a1, a2);
  v6 = v5;
  if (a1)
  {
    if (v5 >= 1)
    {
      v7 = a1[17];
      if (v7)
      {
        v8 = sub_23946F868(v7, a2);
        if ((v8 & 0x80000000) != 0)
        {
          if (v4)
          {
            *a2 = v4;
          }

          return v8;
        }

        else
        {
          return (v8 + v6);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_23946F644(unint64_t **a1, void **a2)
{
  sub_23940327C((*a1 + 10));
  v4 = *a1;

  return sub_2394018FC(v4, a2, byte_278A82C40);
}

uint64_t sub_23946F6A4(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_23946BC28(a2);
  v5 = sub_23946BC28(a2);
  v6 = v5;
  if (v4 && v5)
  {
    sub_23946BC1C(a1[1]);
    a1[1] = v4;
    sub_23946BC1C(*(*a1 + 16));
    *(*a1 + 16) = v6;
    return 1;
  }

  else
  {
    sub_23946BC1C(v4);
    sub_23946BC1C(v6);
    return 0;
  }
}

void *sub_23946F72C(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    *result = *(a3 + 16);
  }

  if (a2)
  {
    *a2 = *(a3 + 8);
  }

  return result;
}

BOOL sub_23946F748(uint64_t **a1)
{
  v2 = sub_23946ED3C();
  *a1 = v2;
  return v2 != 0;
}

uint64_t sub_23946F7A4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 < 0)
  {
    sub_2394170F4(12, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x_x509.c", 315);
    return 0;
  }

  else
  {
    *&v9 = *a2;
    *(&v9 + 1) = a3;
    if (a5 && !sub_239408024(&v9, 536870928))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = sub_23946EF4C(&v9, 0);
      if (result)
      {
        v8 = result;
        *a2 = v9;
        sub_23946EDF8(*a1);
        *a1 = v8;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23946F88C(uint64_t a1, char *__s, size_t __n)
{
  if (__s)
  {
    if (a1)
    {
      v6 = *(a1 + 136);
      if (v6 || (result = sub_239402AC0(byte_278A82D20), v6 = result, (*(a1 + 136) = result) != 0))
      {
        result = *(v6 + 16);
        if (result || (result = sub_239402F48(), (*(v6 + 16) = result) != 0))
        {

          return sub_2393FF8AC(result, __s, __n);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          sub_239402ECC(v9);
          *(*(a1 + 136) + 16) = 0;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_23946F94C(uint64_t a1, char *__s, size_t __n)
{
  if (__s)
  {
    if (a1)
    {
      v6 = *(a1 + 136);
      if (v6 || (result = sub_239402AC0(byte_278A82D20), v6 = result, (*(a1 + 136) = result) != 0))
      {
        result = *(v6 + 24);
        if (result || (result = sub_239402EC4(), (*(v6 + 24) = result) != 0))
        {

          return sub_2393FF8AC(result, __s, __n);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          sub_239402ECC(v9);
          *(*(a1 + 136) + 24) = 0;
        }
      }
    }

    return 1;
  }

  return result;
}

int *sub_23946FA0C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  result = *(v2 + 16);
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    goto LABEL_6;
  }

  v4 = *result;
LABEL_7:
  *a2 = v4;
LABEL_8:
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

int *sub_23946FA44(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  result = *(v2 + 24);
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    goto LABEL_6;
  }

  v4 = *result;
LABEL_7:
  *a2 = v4;
LABEL_8:
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t sub_23946FA7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_239450894(a2);
  if (v3)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      v4 = sub_239402AC0(byte_278A82D20);
      *(a1 + 136) = v4;
    }

    v5 = *v4;
    if (*v4 || (v5 = sub_2394574D8(), (*v4 = v5) != 0))
    {
      if (sub_2394579D0(v5, v3))
      {
        return 1;
      }
    }
  }

  sub_2393FDCD8(v3);
  return 0;
}

uint64_t sub_23946FB04(uint64_t a1, uint64_t a2)
{
  v3 = sub_239450894(a2);
  if (v3)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      v4 = sub_239402AC0(byte_278A82D20);
      *(a1 + 136) = v4;
    }

    v5 = *(v4 + 1);
    if (v5 || (v5 = sub_2394574D8(), (*(v4 + 1) = v5) != 0))
    {
      if (sub_2394579D0(v5, v3))
      {
        return 1;
      }
    }
  }

  sub_2393FDCD8(v3);
  return 0;
}

void sub_23946FB8C(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    if (*v1)
    {
      sub_239457574(*v1, sub_23946FC4C, sub_2393FDCD8);
      **(a1 + 136) = 0;
    }
  }
}

void sub_23946FBEC(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      sub_239457574(v3, sub_23946FC4C, sub_2393FDCD8);
      *(*(a1 + 136) + 8) = 0;
    }
  }
}

uint64_t sub_23946FC58(uint64_t result)
{
  *(result + 10) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_23946FC6C(uint64_t result, __int16 a2, int a3, __int16 a4)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 6) = a4;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_23946FC88(uint64_t result, __int16 a2, int a3, __int16 a4, void *a5)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 6) = a4;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 16) = *a5;
  *a5 = 0;
  return result;
}

uint64_t sub_23946FCAC(uint64_t a1, uint64_t *a2)
{
  v29 = 0;
  v2 = *a2;
  if (!*a2)
  {
    return 0x360000002FLL;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  v24 = v5;
  v25 = v5;
  v27 = 0;
  v28 = 0;
  v26 = v6;
  if (!v5)
  {
    v26 = 0;
  }

  v23 = 0;
  sub_2393D5A0C(&v24, &v29);
  sub_2393D5A68(&v24, &v23);
  sub_2393D5A0C(&v24, (a1 + 6));
  v7 = v27;
  if (!v27)
  {
    HIDWORD(v10) = v23;
    LODWORD(v10) = v23;
    *(a1 + 2) = v10 >> 16;
    *a1 = v29;
    v11 = *(*a2 + 24);
    if (v11 <= v25 - v24)
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        sub_2393D96C8(v16);
      }

      LODWORD(v7) = 0;
      v8 = 0;
      *(a1 + 16) = 0;
      return v8 | v7;
    }

    sub_2393D9E54((*(*a2 + 8) + v25 - v24), v11 - (v25 - v24), 0, 0, v19);
    v12 = *(a1 + 16);
    if (v12)
    {
      sub_2393D96C8(v12);
    }

    v13 = v19[0];
    *(a1 + 16) = v19[0];
    if (!v13)
    {
      v8 = 0x4800000000;
      LODWORD(v7) = 11;
      return v8 | v7;
    }

    if (*a1 != 8 || *(a1 + 6) != 4)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      return v8 | v7;
    }

    v14 = *(v13 + 8);
    v15 = *(v13 + 24);
    v19[0] = v14;
    v19[1] = v14;
    v21 = 0;
    v22 = 0;
    v20 = v15;
    if (!v14)
    {
      v20 = 0;
    }

    v18 = 0;
    sub_2393D5A0C(v19, &v18);
    v7 = v21;
    if (!v21)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      v17 = v18;
      *(a1 + 10) = 1;
      *(a1 + 8) = v17;
      return v8 | v7;
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
  return v8 | v7;
}

void *sub_23946FE8C(unsigned __int16 *a1, void *a2)
{
  v4 = sub_2393D5D60(a2, *a1, 2);
  v5 = sub_2393D5D60(v4, a1[2] | (a1[1] << 16), 4);
  sub_2393D5D60(v5, a1[3], 2);
  v6 = *(a1 + 2);
  if (v6)
  {
    sub_2393D5CDC(a2, *(v6 + 8), *(v6 + 24));
  }

  return a2;
}

uint64_t sub_23946FEFC(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  sub_23946FE8C(a1, v2);
  return v3;
}

void sub_23946FF2C(unsigned __int16 a1@<W0>, uint64_t *a2@<X8>)
{
  sub_2393D9C18(2uLL, 0, &v26);
  if (v26)
  {
    v4 = *(v26 + 1);
    *buf = v4 + *(v26 + 3);
    v23 = sub_2393D980C(v26);
    v24 = 0;
    if (!v4)
    {
      v23 = 0;
    }

    v25 = v26;
    v26 = 0;
    sub_2393D5D60(buf, a1, 2);
    sub_2393D9FF8(buf, &v25, &v12);
    if (v26)
    {
      sub_2393D96C8(v26);
    }

    v5 = v12;
    v26 = v12;
    if (v12)
    {
      v26 = 0;
      v16 = 8;
      v17 = 0;
      v18 = 4;
      v21 = v12;
      v20 = 1;
      v19 = a1;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_23946FE8C(&v16, &v12);
      sub_2393D9C18(v14, 0x26u, &v12);
      if (v26)
      {
        sub_2393D96C8(v26);
      }

      v26 = v12;
      if (v12)
      {
        v6 = *(v12 + 8);
        v7 = v6 + *(v12 + 24);
        v8 = sub_2393D980C(v12);
        v12 = v7;
        v13 = v8;
        v14 = 0;
        if (!v6)
        {
          v13 = 0;
        }

        v15 = v26;
        v26 = 0;
        sub_23946FE8C(&v16, &v12);
        sub_2393D9FF8(&v12, &v15, a2);
        if (v15)
        {
          sub_2393D96C8(v15);
        }
      }

      else
      {
        v11 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", &v12, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(11, 1, "Failed to allocate status report message");
        }

        *a2 = v26;
        v26 = 0;
      }

      sub_2393D96C8(v5);
    }

    else
    {
      v10 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to finalize protocol data for busy status report", &v12, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "Failed to finalize protocol data for busy status report");
      }

      *a2 = v26;
      v26 = 0;
    }

    if (v25)
    {
      sub_2393D96C8(v25);
    }

    if (v26)
    {
      sub_2393D96C8(v26);
    }
  }

  else
  {
    v9 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to allocate protocol data for busy status report", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "Failed to allocate protocol data for busy status report");
    }

    *a2 = v26;
  }
}

uint64_t sub_239470208(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 0xFFE0FFFFFFFFuLL >> a3;
  if (a3 > 0x33)
  {
    LOBYTE(v3) = 1;
  }

  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

unint64_t sub_239470294(unint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  if (a3 && (a1 == sub_2393D948C(51, "src/messaging/ErrorCategory.cpp", 0x3Cu) || v3 == sub_2393D948C(49, "src/messaging/ErrorCategory.cpp", 0x3Cu)))
  {
    v3 = 0;
    LODWORD(v4) = 0;
  }

  return v3 | (v4 << 32);
}

BOOL sub_239470318(unsigned int a1)
{
  result = 1;
  if ((a1 > 0x2D || ((1 << a1) & 0x200000000810) == 0) && a1 != 195)
  {
    return a1 == sub_2393D948C(65, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(51, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(49, "src/messaging/ErrorCategory.cpp", 0x51u) || a1 == sub_2393D948C(32, "src/messaging/ErrorCategory.cpp", 0x51u);
  }

  return result;
}

uint64_t sub_2394703F8(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 8) = *(result + 8) & 0xF7FD | v3 | v2;
  return result;
}

uint64_t sub_239470428(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *sub_238DE36B8((a1 + 88), a2);
  result = sub_239495550(v4, v2, (*(a1 + 8) & 0x400) == 0);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_239470478(uint64_t a1, unsigned int a2, int a3, uint64_t *a4, _WORD *a5)
{
  sub_23947632C("src/messaging/ExchangeContext.cpp", 93);
  v10 = a2;
  v11 = a3 == 16 && a2 == 0;
  if (*(a1 + 48))
  {
    if (*(a1 + 88) == 1)
    {
      v12 = (a1 + 28);
      if (!*(a1 + 28))
      {
        sub_23953261C();
      }

      sub_2393E9648((a1 + 28));
      sub_238EA6DC0(a1, buf, v13);
      v15 = (*(**buf + 72))(*buf) && (*a5 & 2) == 0 && !sub_2393BC2A0(a1, v14);
      (*(**buf + 32))(*buf);
      if ((*a5 & 1) == 0 || sub_2393BC2A0(a1, v18))
      {
        goto LABEL_15;
      }

      v26 = *(a1 + 8);
      if ((v26 & 2) != 0)
      {
        v16 = 0x7A00000000;
        v20 = 3;
      }

      else
      {
        *(a1 + 8) = v26 | 0x802;
        if (!*(a1 + 32))
        {
LABEL_15:
          v19 = 0;
LABEL_16:
          if (!sub_2393BC2A0(a1, v18) || (*(a1 + 8) & 1) != 0)
          {
            if (*(a1 + 88))
            {
              sub_238EA6DC0(a1, buf, v18);
              v21 = (a1 + 8);
              v22 = sub_2394719C0(*(a1 + 56), *(*(a1 + 48) + 88), buf, *(a1 + 112), *(a1 + 8) & 1, a1 + 8, v15, v10, a3, a4);
              v20 = v22;
              v16 = v22 & 0xFFFFFFFF00000000;
              if (v22)
              {
                if (v19)
                {
                  v23 = *(*(*(a1 + 48) + 88) + 24);
                  if (v23)
                  {
                    (*(*v23 + 72))(v23, sub_2394710BC, a1);
                  }

                  *v21 &= 0xF7FDu;
                }

                if ((*(**buf + 16))(*buf) == 2 && *(sub_239495304(*buf) + 57) == 2)
                {
                  v24 = sub_239495304(*buf);
                  sub_239493108(v24);
                }
              }

              else if (!v11)
              {
                v28 = *v21;
                *v21 &= ~0x40u;
                if ((v28 & 0x82) == 0)
                {
                  sub_239470A14(a1);
                }
              }

              (*(**buf + 32))(*buf);
            }

            else
            {
              v25 = sub_2393D9044(5u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "WARNING: We shouldn't be sending a message on an exchange that has no attached session...", buf, 2u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(5, 1, "WARNING: We shouldn't be sending a message on an exchange that has no attached session...");
              }

              v16 = 0x9E00000000;
              v20 = 119;
            }
          }

          else
          {
            v16 = 0x9000000000;
            v20 = 172;
          }

          goto LABEL_42;
        }

        v27 = sub_23947083C(a1);
        v20 = v27;
        if (!v27)
        {
          v19 = 1;
          goto LABEL_16;
        }

        v16 = v27 & 0xFFFFFFFF00000000;
        *(a1 + 8) &= 0xF7FDu;
      }

LABEL_42:
      sub_2393E960C(v12, v18);
      v17 = v20;
      return v17 | v16;
    }

    v16 = 0x6300000000;
    v17 = 2;
  }

  else
  {
    v16 = 0x6200000000;
    v17 = 172;
  }

  return v17 | v16;
}

uint64_t sub_23947083C(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 88) + 24);
  if (v2)
  {
    return (*(*v2 + 40))(v2, *(a1 + 32), sub_2394710BC);
  }

  else
  {
    return 0x1B3000000ACLL;
  }
}

uint64_t sub_2394708B4(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 88) + 24);
  if (result)
  {
    return (*(*result + 72))(result, sub_2394710BC, a1);
  }

  return result;
}

void sub_239470900(uint64_t result)
{
  if ((*(result + 8) & 0xC2) == 0)
  {
    sub_239470A14(result);
  }
}

uint64_t sub_239470918(uint64_t result, int a2)
{
  v3 = (result + 8);
  v2 = *(result + 8);
  if ((v2 & 0x80) == 0)
  {
    v5 = result;
    *(result + 8) = v2 | 0x80;
    v6 = *(result + 40);
    if (v6)
    {
      (*(*v6 + 32))(v6, v5);
    }

    *(v5 + 40) = 0;
    result = sub_23947398C(v3);
    if (a2)
    {
      result = sub_23947554C(*(v5 + 48) + 96, v3);
    }

    if ((*v3 & 2) != 0)
    {
      result = *(*(*(v5 + 48) + 88) + 24);
      if (result)
      {
        v7 = *(*result + 72);

        return v7();
      }
    }
  }

  return result;
}

void sub_239470A14(uint64_t a1)
{
  if (!*(a1 + 48) || (v1 = (a1 + 28), !*(a1 + 28)))
  {
    sub_2395326B4();
  }

  sub_239470918(a1, 0);

  sub_2393E960C(v1, v2);
}

void sub_239470A64(uint64_t a1)
{
  if (!*(a1 + 48) || (v1 = (a1 + 28), !*(a1 + 28)))
  {
    sub_23953274C();
  }

  sub_239470918(a1, 1);

  sub_2393E960C(v1, v2);
}

uint64_t sub_239470AC4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  sub_239473948(a1 + 8);
  *a1 = &unk_284BBAF90;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  v14 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = sub_239470C68(a7, a6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = a1;
  *(a1 + 64) = &unk_284BBB040;
  if (*(a1 + 48))
  {
    sub_2395327E4(a1);
  }

  *(a1 + 48) = a2;
  *(a1 + 112) = a3;
  sub_239495C6C((a1 + 64), a4);
  v15 = *(a1 + 8);
  if (a5)
  {
    v16 = v15 | 1;
    if ((a7 & 1) == 0)
    {
      *v14 = a6;
      v17 = v16 & 0xFEBF | 0x40;
      goto LABEL_10;
    }
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      v17 = v15 & 0xFEFE;
      goto LABEL_9;
    }

    v16 = v15 & 0xFFFE;
  }

  v17 = v16 | 0x100;
LABEL_9:
  *v14 = a6;
LABEL_10:
  *(a1 + 8) = v17 & 0xFFEF;
  if ((*(**a4 + 72))())
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFB | v18;
  v19 = sub_2393DA0AC();
  v20 = *(v19 + 4) + 1;
  *(v19 + 4) = v20;
  if (*(sub_2393DA0B8() + 4) < v20)
  {
    *(sub_2393DA0B8() + 4) = v20;
  }

  return a1;
}

uint64_t *sub_239470C68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return sub_239471530(a1, a2);
  }

  if (a2)
  {
    return (*(*a2 + 40))(a2);
  }

  return sub_2392159DC(a1, 0);
}

uint64_t sub_239470CA4(uint64_t a1)
{
  *a1 = &unk_284BBAF90;
  if (!*(a1 + 48) || *(a1 + 28))
  {
    sub_23953291C(a1);
  }

  if ((*(a1 + 8) & 0x80) == 0)
  {
    sub_239532880(a1);
  }

  sub_239470918(a1, 0);
  *(a1 + 48) = 0;
  v2 = sub_2393DA0AC();
  --*(v2 + 4);
  sub_239495784(a1 + 64, v3);
  return a1;
}

void sub_239470D3C(uint64_t a1)
{
  sub_239470CA4(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239470D74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 112) == *(a4 + 2))
  {
    v6 = *(a1 + 88);
    v5 = (a1 + 88);
    if (v6 != 1 || *sub_238DE36B8(v5, a2) != *a2)
    {
      goto LABEL_4;
    }

    v11 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    if (*(a3 + 44))
    {
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else if (((v11 ^ (*(a3 + 46) != 0)) & 1) == 0)
    {
LABEL_12:
      v9 = *(a4 + 8) ^ *(a1 + 8);
      return v9 & 1;
    }

LABEL_4:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  LOBYTE(v9) = 0;
  return v9 & 1;
}

void sub_239470E48(int *result)
{
  v1 = result + 2;
  v2 = *(result + 4);
  if ((v2 & 0x200) == 0)
  {
    if ((v2 & 0x80) != 0)
    {
      v7 = *(result + 6) + 96;

      sub_23947554C(v7, v1);
    }

    else
    {
      sub_2393E9648(result + 7);
      v4 = *(result + 4);
      if ((v4 & 0x40) != 0)
      {
        sub_239470918(result, 1);
      }

      else
      {
        if ((v4 & 2) != 0)
        {
          v5 = *(*(*(result + 6) + 88) + 24);
          if (v5)
          {
            (*(*v5 + 72))(v5, sub_2394710BC, result);
          }

          sub_239470F3C(result, 0);
        }

        sub_239470A64(result);
      }

      sub_2393E960C(result + 7, v6);
    }
  }
}

void sub_239470F3C(uint64_t a1, int a2)
{
  v4 = *(a1 + 8) & 0x800;
  *(a1 + 8) &= 0xF7FDu;
  sub_2393E9648((a1 + 28));
  if (*(a1 + 88) == 1 && v4 != 0)
  {
    v7 = sub_238DE36B8((a1 + 88), v5);
    if ((*(**v7 + 16))(*v7) == 2)
    {
      v9 = sub_238DE36B8((a1 + 88), v8);
      if (*(sub_239495304(*v9) + 57) == 2)
      {
        v10 = sub_238DE36B8((a1 + 88), v8);
        v11 = sub_239495304(*v10);
        sub_239493108(v11);
      }
    }

    v12 = sub_238DE36B8((a1 + 88), v8);
    v13 = *v12 + 8;
    v14 = *(*v12 + 16);
    if (v14 != v13)
    {
      do
      {
        v15 = *(v14 + 8);
        if (v14)
        {
          v16 = v14 - 8;
        }

        else
        {
          v16 = 0;
        }

        (*(*v16 + 32))(v16);
        v14 = v15;
      }

      while (v15 != v13);
    }
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(*v17 + 24))(v17, a1);
  }

  if (a2 && (*(a1 + 8) & 0xC2) == 0)
  {
    sub_239470A14(a1);
  }

  sub_2393E960C((a1 + 28), v5);
}

void sub_2394710BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_239470F3C(a2, 1);
  }
}

unint64_t sub_2394710D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  sub_2393E9648((a1 + 28));
  if (*(a3 + 2) | *(a3 + 3))
  {
    v11 = 0;
  }

  else
  {
    v11 = *a3 == 16;
  }

  v12 = sub_238DE36B8((a1 + 88), v10);
  if ((*(**v12 + 72))(*v12))
  {
    if ((*(**(a1 + 56) + 32))(*(a1 + 56)))
    {
      if ((a4 & 1) == 0 && (a3[8] & 2) != 0 && a3[12] == 1)
      {
        v14 = sub_238DE3698(a3 + 12, v13);
        sub_239473DD8(a1 + 8, *v14);
      }

      if ((a3[8] & 4) != 0)
      {
        sub_239473F20(a1 + 8, a2, a4);
      }
    }

    if ((*(a1 + 8) & 0x10) != 0 && !*(a1 + 40))
    {
      v31 = sub_23947398C(a1 + 8);
      v23 = v31;
      if (v31)
      {
        v22 = HIDWORD(v31);
        goto LABEL_37;
      }
    }

    if (((v11 | a4) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v23 = 0;
    v22 = 0;
    goto LABEL_38;
  }

  if (a4)
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = sub_238DE36B8((a1 + 88), v13);
  v16 = (*(**v15 + 72))(*v15);
  v17 = *(a1 + 8);
  if (!v16)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 8) & 0x100) != 0)
  {
LABEL_36:
    v22 = 0;
    v23 = 0;
    goto LABEL_37;
  }

  if ((v17 & 8) == 0)
  {
LABEL_18:
    *(a1 + 8) = v17 | 0x400;
    if ((*(**(a1 + 56) + 24))(*(a1 + 56), *(a3 + 1), *a3))
    {
      v18 = *(a1 + 8);
      if ((v18 & 2) != 0)
      {
        v19 = *(*(*(a1 + 48) + 88) + 24);
        if (v19)
        {
          (*(*v19 + 72))(v19, sub_2394710BC, a1);
          v18 = *(a1 + 8);
        }

        *(a1 + 8) = v18 & 0xF7FD;
      }

      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = (*(*v20 + 16))(v20, a1, a3, a5);
        v22 = HIDWORD(v21);
        v23 = v21;
        goto LABEL_37;
      }
    }

    v24 = *(a3 + 1);
    v25 = *a3;
    v26 = sub_2393D9044(5u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 112);
      if (*(a1 + 8))
      {
        v28 = 105;
      }

      else
      {
        v28 = 114;
      }

      *buf = 67110400;
      v34 = v25;
      v35 = 1024;
      v36 = v24;
      v37 = 1024;
      v38 = HIWORD(v24);
      v39 = 1024;
      v40 = a2;
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v28;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Dropping unexpected message of type 0x%x with protocolId (%u, %u) and MessageCounter:%u on exchange %u%c", buf, 0x26u);
    }

    if (sub_2393D5398(1u))
    {
      v29 = 105;
      if ((*(a1 + 8) & 1) == 0)
      {
        v29 = 114;
      }

      sub_2393D5320(5, 1, "Dropping unexpected message of type 0x%x with protocolId (%u, %u) and MessageCounter:%u on exchange %u%c", v25, v24, HIWORD(v24), a2, *(a1 + 112), v29);
    }

    goto LABEL_36;
  }

  v32 = sub_2393D9044(5u);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Dropping message without piggyback ack when we are waiting for an ack.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(5, 1, "Dropping message without piggyback ack when we are waiting for an ack.");
  }

  v23 = 3;
  v22 = 587;
LABEL_37:
  if ((v11 | a4))
  {
LABEL_38:
    if (*(a1 + 40))
    {
      goto LABEL_41;
    }
  }

  if ((*(a1 + 8) & 0xC2) == 0)
  {
    sub_239470A14(a1);
  }

LABEL_41:
  sub_2393E960C((a1 + 28), v13);
  return v23 | (v22 << 32);
}

uint64_t *sub_239471530(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27DF77360, memory_order_acquire) & 1) == 0)
  {
    sub_2395329B8();
  }

  return &qword_27DF77358;
}

void sub_239471568(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 88);
  if (*(a1 + 88) == 1 && (v4 = sub_238DE36B8((a1 + 88), a2), (*(**v4 + 16))(*v4) == 2))
  {
    if (*v2 == 1)
    {
      v13 = *sub_238DE36B8(v2, v5);
      (*(*v13 + 24))(v13);
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v12[0] = v6;
    *(a1 + 8) |= 0x200u;
    v8 = *(*(a1 + 48) + 88);
    v9 = sub_238DE36B8(v2, v5);
    sub_239497630(v8, *(*v9 + 24));
    v11 = sub_238EA9094(v12, v10);
    sub_239471718((v2 - 24), v11);
    *(a1 + 8) &= ~0x200u;
    if (v12[0] == 1)
    {
      (*(*v13 + 32))(v13);
    }
  }

  else
  {
    v7 = sub_2393D9044(5u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "AbortAllOtherCommunicationOnFabric called when we don't have a PASE/CASE session", v12, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(5, 1, "AbortAllOtherCommunicationOnFabric called when we don't have a PASE/CASE session");
    }
  }
}

void *sub_239471718(uint64_t a1, uint64_t *a2)
{
  if (*(sub_239495304(*a2) + 56) != 4)
  {
    sub_239532A20();
  }

  return sub_239495C1C(a1, a2);
}

uint64_t sub_23947176C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_23947179C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_2394717CC(uint64_t a1, void (***a2)(void))
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

void sub_23947187C(uint64_t a1, uint64_t a2)
{
  sub_239495784(a1, a2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394718B4(void **a1, uint64_t a2)
{
  sub_239495804(a1, a2);
  v3 = *(*a1[5] + 24);

  return v3();
}

uint64_t sub_23947190C(void **a1, uint64_t *a2)
{
  result = (*(*a1[5] + 16))(a1[5]);
  if (!result)
  {
    sub_239495804(a1, v5);

    return sub_239495C6C(a1, a2);
  }

  return result;
}

uint64_t sub_2394719C0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, unsigned __int8 a9, uint64_t *a10)
{
  if (!(*(*a1 + 24))(a1, a8, a9))
  {
    return 0x290000002FLL;
  }

  v33 = 0;
  v30 = a4;
  v31 = a8;
  v29[0] = a9;
  v18 = a5 | (16 * (a8 != 0));
  v32 = v18;
  v19 = (*(**a3 + 72))();
  if (!v19)
  {
    goto LABEL_7;
  }

  if ((*a6 & 0x20) != 0)
  {
    *a6 &= ~0x10u;
    v20 = *(a6 + 16);
    v33 = 1;
    v34 = v20;
    v18 |= 2u;
    v32 = v18;
  }

  v19 = (*(*a1 + 32))(a1);
  if (v19 && (*a6 & 4) != 0 && (v19 = sub_239473960(a6)) != 0 && a7)
  {
    v24 = sub_239473960(a6);
    v32 = v18 | 4;
    v28 = 0;
    v21 = sub_23947478C(v24, a6, &v28);
    if (!v21)
    {
      v25 = v28;
      v21 = sub_2394963B0(a2, a3, v29, a10, (v28 + 8));
      if (v21 || (v26 = sub_239496E3C(a2, a3, (v25 + 8)), v21 = sub_2394753D8(v26, v27, a4, a5), v21))
      {
        v22 = v21 & 0xFFFFFFFF00000000;
        if (v25)
        {
          sub_23947539C(v24, v25);
        }

        return v21 | v22;
      }

      sub_2394749AC(v24, v25);
      goto LABEL_18;
    }
  }

  else
  {
LABEL_7:
    v21 = sub_239471C04(v19, a2, a3, v29, a10);
    if (!v21)
    {
LABEL_18:
      v22 = 0;
      LODWORD(v21) = 0;
      return v21 | v22;
    }
  }

  v22 = v21 & 0xFFFFFFFF00000000;
  return v21 | v22;
}

unint64_t sub_239471C04(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, uint64_t *a5)
{
  a4[8] &= ~4u;
  v12 = 0;
  v7 = sub_2394963B0(a2, a3, a4, a5, &v12);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_239496E3C(a2, a3, &v12);
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if (v10)
    {
      v9 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v12)
  {
    sub_2393D96C8(v12);
  }

  return v9 | v8;
}

uint64_t sub_239471CB4(uint64_t a1)
{
  *a1 = &unk_284BBB0F8;
  *(a1 + 8) = &unk_284BBB130;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 56) = a1 + 48;
  *(a1 + 64) = a1 + 48;
  sub_2394742E0(a1 + 96, a1 + 32);
  for (i = 184; i != 312; i += 16)
  {
    *(a1 + i) = -1;
  }

  *(a1 + 20) = 0;
  return a1;
}

uint64_t sub_239471D60(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 20))
  {
    return 0x3F00000003;
  }

  *(a1 + 88) = a2;
  *(a1 + 16) = sub_2393F5718();
  *(a1 + 18) = 0;
  for (i = 192; i != 320; i += 16)
  {
    *(a1 + i) = 0;
  }

  a2[29] = a1;
  a2[30] = a1 + 8;
  sub_23942E728(a1 + 96, a2[3]);
  result = 0;
  *(a1 + 20) = 1;
  return result;
}

uint64_t sub_239471DEC(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = result;
    result = sub_239474334(result + 96);
    v2 = *(v1 + 88);
    if (v2)
    {
      *(v2 + 232) = 0;
      *(v1 + 88) = 0;
    }

    *(v1 + 20) = 0;
  }

  return result;
}

void *sub_239471E34(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v15 = a4;
  if ((*(**a2 + 40))())
  {
    *buf = a1;
    v6 = *(a1 + 16);
    *(a1 + 16) = v6 + 1;
    v14 = v6;
    return sub_239471FE0((a1 + 32), buf, &v14, a2, &v15, &v16);
  }

  else
  {
    v8 = (*(**a2 + 48))();
    v10 = v9;
    v11 = sub_2393D9044(5u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_239495678(*a2);
      *buf = 67109888;
      *&buf[4] = v12;
      v18 = 1024;
      v19 = HIDWORD(v8);
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "NewContext failed: session %u to <%08X%08X, %d> is inactive", buf, 0x1Au);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_239495678(*a2);
      sub_2393D5320(5, 1, "NewContext failed: session %u to <%08X%08X, %d> is inactive", v13, HIDWORD(v8), v8, v10);
    }

    return 0;
  }
}

void *sub_239471FE0(unint64_t *a1, uint64_t *a2, __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6)
{
  v12 = sub_2393D52C4(0x78uLL);
  v13 = v12;
  if (v12)
  {
    sub_239470CA0(v12, *a2, *a3, a4, *a5, *a6, 0);
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v13;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_2394720B8(uint64_t a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a1 + 184);
  v6 = 128;
  do
  {
    if (*(v5 + 1))
    {
      if (*v5 == a2 && __PAIR64__(v5[2], v5[1]) == __PAIR64__(a3, HIWORD(a2)))
      {
        v10 = 0;
        v11 = 0;
        *(v5 + 1) = a4;
        return v11 | v10;
      }
    }

    else if (!v4)
    {
      v4 = v5;
    }

    v5 += 8;
    v6 -= 16;
  }

  while (v6);
  if (v4)
  {
    *(v4 + 1) = a4;
    *v4 = a2;
    v4[2] = a3;
    v7 = sub_2393DA0AC();
    v8 = *(v7 + 5) + 1;
    *(v7 + 5) = v8;
    if (*(sub_2393DA0B8() + 5) >= v8)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v9 = sub_2393DA0B8();
      v10 = 0;
      v11 = 0;
      *(v9 + 5) = v8;
    }
  }

  else
  {
    v10 = 0xA200000000;
    v11 = 6;
  }

  return v11 | v10;
}

uint64_t sub_2394721C8(uint64_t a1, int a2, unsigned __int16 a3)
{
  v3 = (a1 + 192);
  v4 = 128;
  do
  {
    if (*v3 && *(v3 - 4) == a2 && __PAIR64__(*(v3 - 2), *(v3 - 3)) == __PAIR64__(a3, HIWORD(a2)))
    {
      *v3 = 0;
      v5 = sub_2393DA0AC();
      result = 0;
      --*(v5 + 5);
      return result;
    }

    v3 += 2;
    v4 -= 16;
  }

  while (v4);
  return 0xB900000007;
}

void sub_239472264(unint64_t *a1, unsigned int *a2, unsigned __int8 *a3, uint64_t *a4, int a5, uint64_t a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v87 = sub_2394E0FE8(*(a3 + 1));
  v86 = sub_2394E101C(*(a3 + 1), *a3);
  v88 = a5;
  if (*(a2 + 24) == 1)
  {
    v11 = sub_238DE36B8(a2 + 24, v10);
  }

  else
  {
    if ((*(**a4 + 16))() != 2)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v11 = (sub_239495304(*a4) + 64);
  }

  v13 = *v11;
LABEL_7:
  __str[0] = 0;
  if (a3[12] == 1)
  {
    v14 = sub_238DE3698(a3 + 12, v12);
    snprintf(__str, 0x14uLL, " (Ack:%u)", *v14);
  }

  if ((*(**a4 + 16))() != 2)
  {
    goto LABEL_13;
  }

  v15 = *(a1[11] + 32);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_239495304(*a4);
  v17 = sub_2394A7FC0(v15, *(v16 + 24));
  if (v17)
  {
    LODWORD(v15) = *(v17 + 16);
  }

  else
  {
LABEL_13:
    LODWORD(v15) = 0;
  }

LABEL_14:
  snprintf(v107, 8uLL, "%04X:%02X", *(a3 + 3), *a3);
  v18 = *(*a4 + 24);
  v19 = (*(**a4 + 48))() >> 32;
  v20 = (*(**a4 + 48))();
  snprintf(v106, 0x37uLL, "from %u:%08X%08X [%04X] to %08X%08X", v18, v19, v20, v15, HIDWORD(v13), v13);
  v21 = sub_2393D9044(5u);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[8])
    {
      v22 = 114;
    }

    else
    {
      v22 = 105;
    }

    v83 = v22;
    v84 = *(a3 + 1);
    v23 = sub_239495678(*a4);
    v24 = *a2;
    v25 = sub_23949571C(a4);
    v26 = a1;
    v27 = *(*a6 + 16);
    v28 = sub_2394BE648(a2);
    v29 = a2;
    v30 = *(a2 + 22) | *(a2 + 46);
    LODWORD(buf) = 67111682;
    v31 = v27 + v28 + sub_2394BE684(a3);
    a1 = v26;
    v61 = v30 == 0;
    a2 = v29;
    DWORD1(buf) = v84;
    v32 = !v61;
    WORD4(buf) = 1024;
    *(&buf + 10) = v83;
    HIWORD(buf) = 1024;
    *v96 = v23;
    *&v96[4] = 1024;
    *&v96[6] = v24;
    *&v96[10] = 2080;
    *&v96[12] = __str;
    *&v96[20] = 2080;
    *&v96[22] = v25;
    *&v96[30] = 2080;
    v97 = v106;
    v98 = 2080;
    v99 = v107;
    v100 = 2080;
    v101 = v87;
    v102 = 2080;
    v103 = v86;
    v104 = 1024;
    v105 = v31 + 16 * v32;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, ">>> [E:%u%c S:%u M:%u%s] (%s) Msg RX %s --- Type %s (%s:%s) (B:%u)", &buf, 0x5Cu);
  }

  if (sub_2393D5398(2u))
  {
    v85 = *(a3 + 1);
    v33 = v21;
    v34 = a1;
    v35 = a3[8];
    v36 = sub_239495678(*a4);
    v37 = a2;
    v38 = *a2;
    v39 = sub_23949571C(a4);
    v40 = *(*a6 + 16);
    v41 = v40 + sub_2394BE648(v37);
    v42 = (*(v37 + 22) | *(v37 + 46)) != 0;
    v43 = v41 + sub_2394BE684(a3) + 16 * v42;
    v61 = (v35 & 1) == 0;
    a1 = v34;
    v21 = v33;
    v82 = v38;
    a2 = v37;
    if (v61)
    {
      v44 = 105;
    }

    else
    {
      v44 = 114;
    }

    sub_2393D5320(5, 2, ">>> [E:%u%c S:%u M:%u%s] (%s) Msg RX %s --- Type %s (%s:%s) (B:%u)", v85, v44, v36, v82, __str, v39, v106, v107, v87, v86, v43);
  }

  v94 = v88 == 0;
  if (*(a2 + 46) == 1)
  {
    v45 = *(a2 + 40);
    v46 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v45 == 1)
    {
      if (v46)
      {
        isa_low = LOWORD(sub_238E0A934(a2 + 40, v47)->super.isa);
        v50 = LOWORD(sub_238E0A934(a2 + 40, v49)->super.isa);
        LODWORD(buf) = 67109376;
        DWORD1(buf) = isa_low;
        WORD4(buf) = 1024;
        *(&buf + 10) = v50;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Received Groupcast Message with GroupId 0x%04X (%d)", &buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        sub_238E0A934(a2 + 40, v51);
        sub_238E0A934(a2 + 40, v52);
        sub_2393D5320(5, 2, "Received Groupcast Message with GroupId 0x%04X (%d)");
      }
    }

    else
    {
      if (v46)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Received Groupcast Message without GroupId", &buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(5, 2, "Received Groupcast Message without GroupId");
      }
    }
  }

  else
  {
    LOBYTE(v93) = 0;
    *&buf = a4;
    *(&buf + 1) = a2;
    *v96 = a3;
    *&v96[8] = &v94;
    *&v96[16] = a6;
    *&v96[24] = &v93;
    sub_2393D6A10(a1 + 6, &buf, sub_239473674);
    if (v93)
    {
      return;
    }
  }

  if (((*(**a4 + 40))() & 1) == 0)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Dropping message on inactive session that does not match an existing exchange", &buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      v62 = "Dropping message on inactive session that does not match an existing exchange";
      v63 = 2;
LABEL_59:
      sub_2393D5320(5, v63, v62, v81);
      return;
    }

    return;
  }

  v53 = v94;
  if ((v94 & 1) != 0 || (a3[8] & 1) == 0)
  {
    if ((a3[8] & 4) != 0)
    {
LABEL_105:
      sub_239472E20(a1, a2, a3, a4, v53, a6);
      return;
    }

    if (*(a3 + 2) || *(a3 + 3) || *a3 != 16)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v64 = sub_2393C9138();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v64;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v81 = sub_2393C9138();
        v62 = "OnMessageReceived failed, err = %s";
LABEL_97:
        v63 = 1;
        goto LABEL_59;
      }
    }

    return;
  }

  v54 = 0;
  v55 = 0;
  do
  {
    v56 = &a1[v54];
    v57 = a1[v54 + 24];
    if (v57)
    {
      v59 = *(v56 + 46);
      v58 = v56 + 23;
      v60 = HIWORD(v59);
      v61 = *(a3 + 2) == v59 && *(a3 + 3) == v60;
      if (v61)
      {
        if (WORD2(a1[v54 + 23]) == *a3)
        {
          v55 = &a1[v54 + 23];
          goto LABEL_69;
        }

        if (WORD2(a1[v54 + 23]) == 0xFFFF)
        {
          v55 = v58;
        }
      }
    }

    v54 += 2;
  }

  while (v54 != 16);
  if (!v55)
  {
    goto LABEL_105;
  }

  v57 = v55[1];
LABEL_69:
  v93 = 0;
  if ((*(*v57 + 16))(v57, a3, a4, &v93))
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v65 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v65;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v66 = sub_2393C9138();
      sub_2393D5320(5, 1, "OnMessageReceived failed, err = %s", v66);
    }

LABEL_104:
    v53 = v94;
    goto LABEL_105;
  }

  *&buf = a1;
  v92 = *(a3 + 1);
  v91 = 0;
  v67 = sub_239471FE0(a1 + 4, &buf, &v92, a4, &v91, &v93);
  if (!v67)
  {
    if (v93)
    {
      (*(*v55[1] + 32))(v55[1]);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v78 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v78;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_96;
    }

    return;
  }

  v68 = v67;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v69 = *(v68 + 112);
    v70 = sub_2394703E0(v68);
    v71 = *(v68 + 40);
    LODWORD(buf) = 67109632;
    if (v70)
    {
      v72 = 105;
    }

    else
    {
      v72 = 114;
    }

    DWORD1(buf) = v69;
    WORD4(buf) = 1024;
    *(&buf + 10) = v72;
    HIWORD(buf) = 2048;
    *v96 = v71;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Handling via exchange: %u%c, Delegate: %p", &buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v73 = *(v68 + 112);
    v74 = sub_2394703E0(v68);
    v75 = 114;
    if (v74)
    {
      v75 = 105;
    }

    sub_2393D5320(5, 3, "Handling via exchange: %u%c, Delegate: %p", v73, v75, *(v68 + 40));
  }

  v76 = (*(**(v68 + 56) + 16))(*(v68 + 56));
  if (!*(a2 + 22))
  {
    if (v76 == (*(a2 + 46) != 0))
    {
      goto LABEL_86;
    }

LABEL_99:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v79 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v79;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v80 = sub_2393C9138();
      sub_2393D5320(5, 1, "OnMessageReceived failed, err = %s", v80);
    }

    sub_239470A14(v68);
    goto LABEL_104;
  }

  if ((v76 & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_86:
  if (sub_2394710D0(v68, *a2, a3, v94, a6))
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v77 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v77;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
LABEL_96:
      v81 = sub_2393C9138();
      v62 = "OnMessageReceived failed, err = %s";
      goto LABEL_97;
    }
  }
}

void sub_239472E20(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(**a4 + 72))())
  {
    v12 = *(a3 + 8);
    if ((v12 & 4) != 0)
    {
      *buf = a1;
      v27 = *(a3 + 2);
      v26 = (v12 & 1) == 0;
      v25 = 0;
      v24 = 1;
      v13 = sub_239473100((a1 + 32), buf, &v27, a4, &v26, &v25, &v24);
      v14 = sub_2393D9044(5u);
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = v13[56];
          if (sub_2394703E0(v13))
          {
            v17 = 105;
          }

          else
          {
            v17 = 114;
          }

          *buf = 67109376;
          *&buf[4] = v16;
          *&buf[8] = 1024;
          *&buf[10] = v17;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Generating StandaloneAck via exchange: %u%c", buf, 0xEu);
        }

        if (sub_2393D5398(3u))
        {
          v18 = v13[56];
          v19 = sub_2394703E0(v13);
          v20 = 114;
          if (v19)
          {
            v20 = 105;
          }

          sub_2393D5320(5, 3, "Generating StandaloneAck via exchange: %u%c", v18, v20);
        }

        if (sub_2394710D0(v13, *a2, a3, a5, a6))
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v21 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
LABEL_21:
            v23 = sub_2393C9138();
            sub_2393D5320(5, 1, "OnMessageReceived failed, err = %s", v23);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v22 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "OnMessageReceived failed, err = %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          goto LABEL_21;
        }
      }
    }
  }
}

void *sub_239473100(unint64_t *a1, uint64_t *a2, __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7)
{
  v13 = sub_2393D52C4(0x78uLL);
  v14 = v13;
  if (v13)
  {
    sub_239470CA0(v13, *a2, *a3, a4, *a5, 0, *a7);
    v15 = sub_2393D52C4(0x18uLL);
    if (v15)
    {
      *v15 = v14;
      v15[1] = a1 + 2;
      v15[2] = 0;
      v16 = a1[4];
      v15[2] = v16;
      *(v16 + 8) = v15;
      a1[4] = v15;
      v17 = a1[1];
      v18 = *a1 + 1;
      *a1 = v18;
      if (v18 > v17)
      {
        a1[1] = v18;
      }
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t sub_2394731C8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_2393D6A10((a1 + 48), &v4, sub_2394737D8);
}

uint64_t sub_239473208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a4;
  v6[1] = a5;
  v7[0] = a3;
  v7[1] = a2;
  v7[2] = v6;
  return sub_2393D6A10((a1 + 48), v7, sub_239473814);
}

uint64_t sub_239473250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a4;
  v6[1] = a5;
  v7[0] = a3;
  v7[1] = a2;
  v7[2] = v6;
  return sub_2393D6A10((a1 + 40), v7, sub_239473814);
}

uint64_t sub_239473298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5 = 0;
  v7[0] = a2;
  v7[1] = v6;
  v7[2] = &v5;
  sub_2393D6A10((a1 + 48), v7, sub_2394738D4);
  return v5;
}

uint64_t sub_2394732EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5 = 0;
  v7[0] = a2;
  v7[1] = v6;
  v7[2] = &v5;
  sub_2393D6A10((a1 + 40), v7, sub_2394738D4);
  return v5;
}

void *sub_239473340(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB0F8;
  a1[1] = &unk_284BBB130;
  sub_239474308((a1 + 12), a2);
  sub_239473540(a1 + 4, v3);
  return a1;
}

void sub_2394733B0(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB0F8;
  a1[1] = &unk_284BBB130;
  sub_239474308((a1 + 12), a2);
  sub_239473540(a1 + 4, v3);

  JUMPOUT(0x23EE77B60);
}

void *sub_239473440(void *a1, uint64_t a2)
{
  *(a1 - 1) = &unk_284BBB0F8;
  *a1 = &unk_284BBB130;
  sub_239474308((a1 + 11), a2);

  return sub_239473540(a1 + 3, v3);
}

void sub_2394734B4(void *a1, uint64_t a2)
{
  *(a1 - 1) = &unk_284BBB0F8;
  *a1 = &unk_284BBB130;
  sub_239474308((a1 + 11), a2);
  sub_239473540(a1 + 3, v3);

  JUMPOUT(0x23EE77B60);
}

void *sub_239473540(void *result, uint64_t a2)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_239532B50(result);
    }
  }

  return result;
}

uint64_t sub_23947356C(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    *buf = 134217984;
    v6 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "HeapObjectPool: %lu allocated", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(27, 1, "HeapObjectPool: %lu allocated", *a1);
  }

  return sub_2393D6A10(a1 + 2, buf, sub_239473654);
}

uint64_t sub_239473674(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  result = sub_239470D74(a2, *a1, *(a1 + 8), *(a1 + 16));
  if (result)
  {
    v5 = sub_2393D9044(5u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a2 + 112);
      v7 = sub_2394703E0(a2);
      v8 = *(a2 + 40);
      *buf = 67109632;
      if (v7)
      {
        v9 = 105;
      }

      else
      {
        v9 = 114;
      }

      v14 = v6;
      v15 = 1024;
      v16 = v9;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Found matching exchange: %u%c, Delegate: %p", buf, 0x18u);
    }

    if (sub_2393D5398(3u))
    {
      v10 = *(a2 + 112);
      v11 = sub_2394703E0(a2);
      v12 = 114;
      if (v11)
      {
        v12 = 105;
      }

      sub_2393D5320(5, 3, "Found matching exchange: %u%c, Delegate: %p", v10, v12, *(a2 + 40));
    }

    sub_2394710D0(a2, **(a1 + 8), *(a1 + 16), **(a1 + 24), *(a1 + 32));
    result = 1;
    **(a1 + 40) = 1;
  }

  return result;
}

uint64_t sub_2394737D8(void **a1, uint64_t a2)
{
  if (*(a2 + 40) == **a1)
  {
    *(a2 + 40) = 0;
    sub_239470A14(a2);
  }

  return 0;
}

uint64_t sub_239473814(uint64_t **a1, _BYTE *a2)
{
  if (a2[88] == 1)
  {
    v9[5] = v2;
    v9[6] = v3;
    sub_238EA6DC0(a2, v9, a2);
    v6 = v9[0];
    v7 = **a1;
    (*(*v9[0] + 32))(v9[0]);
    if (v6 == v7)
    {
      (*(*a2 + 40))(a2, a1[1], *a1[2], a1[2][1]);
    }
  }

  return 0;
}

uint64_t sub_2394738D4(uint64_t a1, _BYTE *a2)
{
  if (a2[88] == 1)
  {
    (*(*a2 + 48))(a2, *a1, **(a1 + 8), *(*(a1 + 8) + 8));
    **(a1 + 16) = 1;
  }

  return 0;
}

uint64_t sub_239473948(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

_WORD *sub_23947396C(_WORD *result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *result = *result & 0xFFF7 | v2;
  return result;
}

unint64_t sub_23947398C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0x10) != 0)
  {
    v2 = sub_239473AEC(a1);
    v1 = HIDWORD(v2);
    if (v2)
    {
      return v2 | (v1 << 32);
    }

    v5 = sub_2393D9044(5u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 104);
      *buf = 67109632;
      v15 = v6;
      if (sub_2394703E0(a1 - 8))
      {
        v8 = 105;
      }

      else
      {
        v8 = 114;
      }

      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Flushed pending ack for MessageCounter:%u on exchange %u%c", buf, 0x14u);
    }

    if (sub_2393D5398(3u))
    {
      v9 = a1 - 8;
      v10 = *(a1 + 104);
      v11 = *(a1 + 16);
      v12 = sub_2394703E0(v9);
      v13 = 114;
      if (v12)
      {
        v13 = 105;
      }

      sub_2393D5320(5, 3, "Flushed pending ack for MessageCounter:%u on exchange %u%c", v11, v10, v13);
    }
  }

  else
  {
    LODWORD(v1) = 0;
  }

  LODWORD(v2) = 0;
  return v2 | (v1 << 32);
}

unint64_t sub_239473AEC(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_2393D9C18(0x10uLL, 0x26u, &v27);
  if (v27)
  {
    v2 = a1 - 8;
    *buf = 2;
    v3 = sub_239470478(a1 - 8, 0, 16, &v27, buf);
    if (sub_239470318(v3))
    {
      v4 = sub_2393D9044(5u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sub_2393C9138();
        v6 = *(a1 + 16);
        v7 = *(a1 + 104);
        v8 = sub_2394703E0(a1 - 8);
        *buf = 136315906;
        *v29 = v5;
        if (v8)
        {
          v9 = 105;
        }

        else
        {
          v9 = 114;
        }

        *&v29[8] = 1024;
        *v30 = v6;
        *&v30[4] = 1024;
        v31[0] = v7;
        LOWORD(v31[1]) = 1024;
        *(&v31[1] + 2) = v9;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Non-crit err %s sending solitary ack for MessageCounter:%u on exchange %u%c", buf, 0x1Eu);
      }

      if (sub_2393D5398(1u))
      {
        v10 = sub_2393C9138();
        v11 = *(a1 + 104);
        v12 = *(a1 + 16);
        v13 = sub_2394703E0(v2);
        v14 = 114;
        if (v13)
        {
          v14 = 105;
        }

        sub_2393D5320(5, 1, "Non-crit err %s sending solitary ack for MessageCounter:%u on exchange %u%c", v10, v12, v11, v14);
      }

      LODWORD(v3) = 0;
      v15 = 0;
    }

    else
    {
      if (v3)
      {
        v16 = sub_2393D9044(5u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 16);
          v18 = *(a1 + 104);
          if (sub_2394703E0(a1 - 8))
          {
            v19 = 105;
          }

          else
          {
            v19 = 114;
          }

          v20 = sub_2393C9138();
          *buf = 67109890;
          *v29 = v17;
          *&v29[4] = 1024;
          *&v29[6] = v18;
          *v30 = 1024;
          *&v30[2] = v19;
          LOWORD(v31[0]) = 2080;
          *(v31 + 2) = v20;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to send Solitary ack for MessageCounter:%u on exchange %u%c:%s", buf, 0x1Eu);
        }

        if (sub_2393D5398(1u))
        {
          v21 = *(a1 + 104);
          v22 = *(a1 + 16);
          v23 = sub_2394703E0(a1 - 8);
          v24 = sub_2393C9138();
          v25 = 114;
          if (v23)
          {
            v25 = 105;
          }

          sub_2393D5320(5, 1, "Failed to send Solitary ack for MessageCounter:%u on exchange %u%c:%s", v22, v21, v25, v24);
        }
      }

      v15 = HIDWORD(v3);
    }

    if (v27)
    {
      sub_2393D96C8(v27);
    }
  }

  else
  {
    LODWORD(v3) = 11;
    v15 = 182;
  }

  return v3 | (v15 << 32);
}

void sub_239473DD8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (sub_239474F50(*(a1 + 40) + 96, a1, a2))
  {
    *a1 &= ~0x800u;
  }

  else
  {
    v4 = sub_2393D9044(5u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 104);
      *buf = 67109632;
      v12 = v2;
      if (sub_2394703E0(a1 - 8))
      {
        v6 = 105;
      }

      else
      {
        v6 = 114;
      }

      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "CHIP MessageCounter:%u not in RetransTable on exchange %u%c", buf, 0x14u);
    }

    if (sub_2393D5398(3u))
    {
      v7 = a1 - 8;
      v8 = *(a1 + 104);
      v9 = sub_2394703E0(v7);
      v10 = 114;
      if (v9)
      {
        v10 = 105;
      }

      sub_2393D5320(5, 3, "CHIP MessageCounter:%u not in RetransTable on exchange %u%c", v2, v8, v10);
    }
  }
}

unint64_t sub_239473F20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_239473F6C(a1, a2, a3);
  sub_239474644((*(a1 + 40) + 96));
  return v4;
}

unint64_t sub_239473F6C(__int16 *a1, int a2, char a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    v5 = *a1;
    if ((*a1 & 0x10) != 0)
    {
      v6 = sub_2393D9044(5u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 4);
        v8 = a1[52];
        *buf = 67109632;
        v27 = v7;
        if (sub_2394703E0((a1 - 4)))
        {
          v9 = 105;
        }

        else
        {
          v9 = 114;
        }

        v28 = 1024;
        v29 = v8;
        v30 = 1024;
        v31 = v9;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Pending ack queue full; forcing tx of solitary ack for MessageCounter:%u on exchange %u%c", buf, 0x14u);
      }

      if (sub_2393D5398(3u))
      {
        v10 = a1[52];
        v11 = *(a1 + 4);
        v12 = sub_2394703E0((a1 - 4));
        v13 = 114;
        if (v12)
        {
          v13 = 105;
        }

        sub_2393D5320(5, 3, "Pending ack queue full; forcing tx of solitary ack for MessageCounter:%u on exchange %u%c", v11, v10, v13);
      }

      v14 = sub_239473AEC(a1);
      if (v14)
      {
        v15 = HIDWORD(v14);
        return v14 | (v15 << 32);
      }

      v5 = *a1;
    }

    *(a1 + 4) = a2;
    *a1 = v5 | 0x30;
    v24 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    LODWORD(v15) = 0;
    LODWORD(v14) = 0;
    *(a1 + 1) = v24 + 200;
    return v14 | (v15 << 32);
  }

  v16 = sub_2393D9044(5u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = a1[52];
    *buf = 67109632;
    v27 = a2;
    if (sub_2394703E0((a1 - 4)))
    {
      v18 = 105;
    }

    else
    {
      v18 = 114;
    }

    v28 = 1024;
    v29 = v17;
    v30 = 1024;
    v31 = v18;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Forcing tx of solitary ack for duplicate MessageCounter:%u on exchange %u%c", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v19 = a1[52];
    v20 = sub_2394703E0((a1 - 4));
    v21 = 114;
    if (v20)
    {
      v21 = 105;
    }

    sub_2393D5320(5, 3, "Forcing tx of solitary ack for duplicate MessageCounter:%u on exchange %u%c", a2, v19, v21);
  }

  v22 = *a1;
  v23 = *(a1 + 4);
  *(a1 + 4) = a2;
  *a1 = v22 | 0x30;
  v14 = sub_239473AEC(a1);
  v15 = HIDWORD(v14);
  if ((v22 & 0x10) == 0 || v23 == a2)
  {
    if ((v22 & 0x20) != 0)
    {
      *(a1 + 4) = v23;
    }
  }

  else
  {
    *(a1 + 4) = v23;
    *a1 |= 0x30u;
  }

  return v14 | (v15 << 32);
}

uint64_t sub_239474224(uint64_t result, int a2)
{
  *(result + 16) = a2;
  *result |= 0x30u;
  return result;
}

uint64_t sub_239474238(uint64_t a1, uint64_t a2)
{
  v3 = sub_239473958(a2);
  *a1 = v3;
  sub_2393E9648((v3 + 28));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_23947396C((*a1 + 8), 1);
  return a1;
}

void *sub_23947428C(void *a1)
{
  sub_23947396C((*a1 + 8), 0);
  v3 = a1[1];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[1] = 0;
  sub_2393E960C((*a1 + 28), v2);
  return a1;
}

double sub_2394742E0(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = a1 + 32;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_239474334(uint64_t a1)
{
  (*(**(a1 + 8) + 72))(*(a1 + 8), sub_2394745FC, a1);
  v3 = a1;
  result = sub_2393D6A10((a1 + 32), &v3, sub_239475694);
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2394743F8(uint64_t result, uint64_t a2, uint64_t *a3, int *a4)
{
  if (*(result + 80))
  {
    v7 = result;
    result = (*(**a3 + 16))();
    if (result == 2)
    {
      result = sub_239495304(*a3);
      if (*(result + 57) == 2)
      {
        v8 = result;
        v9 = sub_239495E1C(a2 + 8);
        v10 = *(*a3 + 24);
        v13 = *(v8 + 72);
        v14 = v10;
        v11 = *a4;
        v15 = 0;
        v16 = v11;
        v17 = v9;
        v18 = 0;
        LOBYTE(v19) = 0;
        v20 = 0;
        if (v11 == 2)
        {
          v12 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - *(a2 + 32);
          v20 = 1;
          v19 = v12;
        }

        else if (v11 == 1)
        {
          v18 = *(a2 + 24) | 0x100;
        }

        return (*(**(v7 + 80) + 16))(*(v7 + 80), &v13);
      }
    }
  }

  return result;
}

uint64_t sub_239474554(uint64_t *a1)
{
  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v5 = &v4;
  v2 = *a1;
  v6[0] = &v5;
  sub_2393D6A10((v2 + 16), v6, sub_2394756B8);
  v6[0] = &v4;
  v6[1] = a1;
  return sub_2393D6A10(a1 + 4, v6, sub_239475700);
}

uint64_t sub_2394745FC(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    sub_239532C94();
  }

  sub_239474554(a2);

  return sub_239474644(a2);
}

uint64_t sub_239474644(uint64_t *a1)
{
  v6 = -1;
  v7 = &v6;
  v2 = *a1;
  v8 = &v7;
  sub_2393D6A10((v2 + 16), &v8, sub_239475E8C);
  v8 = &v6;
  sub_2393D6A10(a1 + 4, &v8, sub_239475EB8);
  result = (*(*a1[1] + 72))(a1[1], sub_2394745FC, a1);
  if (v6 != -1)
  {
    v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v5 = v6 - v4;
    if (v6 < v4)
    {
      v5 = 0;
    }

    result = (*(*a1[1] + 40))(a1[1], v5, sub_2394745FC, a1);
    if (result)
    {
      sub_239532D2C();
    }
  }

  return result;
}

uint64_t sub_23947478C(uint64_t a1, _WORD *a2, uint64_t *a3)
{
  v10 = a2;
  if ((*a2 & 8) != 0)
  {
    v5 = 0x10000000000;
    v6 = 3;
  }

  else
  {
    v4 = sub_23947486C((a1 + 16), &v10);
    *a3 = v4;
    if (v4)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v7 = sub_2393D9044(5u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "mRetransTable Already Full", v9, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(5, 1, "mRetransTable Already Full");
      }

      v5 = 0x10600000000;
      v6 = 100;
    }
  }

  return v6 | v5;
}

void *sub_23947486C(unint64_t *a1, uint64_t *a2)
{
  v4 = sub_2393D52C4(0x28uLL);
  v5 = v4;
  if (v4)
  {
    sub_239474238(v4, *a2);
    v6 = sub_2393D52C4(0x18uLL);
    if (v6)
    {
      *v6 = v5;
      v6[1] = a1 + 2;
      v6[2] = 0;
      v7 = a1[4];
      v6[2] = v7;
      *(v7 + 8) = v6;
      a1[4] = v6;
      v8 = a1[1];
      v9 = *a1 + 1;
      *a1 = v9;
      if (v9 > v8)
      {
        a1[1] = v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_239474900(unsigned int a1, unsigned int a2, char a3)
{
  if (a2 >= 2)
  {
    if (a2 >= 5)
    {
      v4 = 5;
    }

    else
    {
      v4 = a2;
    }

    v5 = v4 - 1;
    LODWORD(v6) = 1;
    LODWORD(v7) = 1;
    do
    {
      v6 = (16 * v6);
      v7 = (10 * v7);
      --v5;
    }

    while (v5);
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = sub_2393F5750() | 0x400;
    return dword_27DF7C050 + ((((1127 * a1) >> 10) * v6 / v7 * v8) >> 10);
  }

  v7 = 1;
  v6 = 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 1279;
  return dword_27DF7C050 + ((((1127 * a1) >> 10) * v6 / v7 * v8) >> 10);
}

uint64_t sub_2394749AC(uint64_t *a1, uint64_t *a2)
{
  sub_239474A64(a1, a2);
  a2[4] = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  sub_238EA6DC0(*a2, &v7, v4);
  v6 = 0;
  sub_2394743F8(a1, a2, &v7, &v6);
  (*(*v7 + 32))(v7);
  return sub_239474644(a1);
}

uint64_t sub_239474A64(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  sub_238EA6DC0(*a2, &v44, a2);
  v3 = *v44;
  if ((*(*a2 + 8) & 0x400) != 0)
  {
    v4 = *((*(v3 + 88))() + 4);
  }

  else
  {
    v4 = (*(v3 + 96))();
  }

  v5 = sub_239474900(v4, *(a2 + 24), 0);
  *(a2 + 16) = (*(*off_27DF765E8 + 2))(off_27DF765E8) + v5;
  v6 = (*(*v44 + 88))(v44);
  v7 = *v6;
  v8 = *(v6 + 4);
  v43 = *(v6 + 8);
  v9 = sub_239495E1C(a2 + 8);
  v10 = v44[24];
  if ((*(*v44 + 16))(v44) == 2)
  {
    v11 = sub_239495304(v44);
    v12 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - v11[17];
    v42 = v12 < *((*(*v11 + 88))(v11) + 8);
    v13 = *(sub_239495304(v44) + 72);
  }

  else if ((*(*v44 + 16))(v44) == 1)
  {
    v14 = sub_2394953AC(v44);
    v15 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - v14[13];
    v16 = v15 >= *((*(*v14 + 88))(v14) + 8);
    v13 = 0;
    v17 = !v16;
    v42 = v17;
  }

  else
  {
    v42 = 0;
    v13 = 0;
  }

  v18 = sub_2393D9044(5u);
  v41 = HIDWORD(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a2 + 24) + 1;
    v39 = v5;
    v40 = v7;
    v20 = v9;
    v21 = *(*a2 + 112);
    v22 = v13;
    v23 = v8;
    v24 = v10;
    if (sub_2394703E0(*a2))
    {
      v25 = 105;
    }

    else
    {
      v25 = 114;
    }

    v26 = sub_239495678(v44);
    v27 = sub_23949571C(&v44);
    *buf = 67112450;
    v28 = "Idle";
    if (v42)
    {
      v28 = "Active";
    }

    v46 = v19;
    v47 = 1024;
    v48 = v21;
    v29 = v20;
    v5 = v39;
    v7 = v40;
    v49 = 1024;
    v50 = v25;
    v10 = v24;
    v8 = v23;
    LODWORD(v13) = v22;
    v51 = 1024;
    v52 = v26;
    v53 = 1024;
    v9 = v29;
    v54 = v29;
    v55 = 2080;
    v56 = v27;
    v57 = 1024;
    v58 = v10;
    v59 = 1024;
    v60 = v41;
    v61 = 1024;
    v62 = v13;
    v63 = 1024;
    v64 = v39;
    v65 = 2080;
    v66 = v28;
    v67 = 1024;
    v68 = v40;
    v69 = 1024;
    v70 = v8;
    v71 = 1024;
    v72 = v43;
    _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "??%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X scheduled for %ums from now [State:%s II:%u AI:%u AT:%u]", buf, 0x5Eu);
  }

  if (sub_2393D5398(2u))
  {
    v30 = *(a2 + 24) + 1;
    v31 = *(*a2 + 112);
    v32 = sub_2394703E0(*a2);
    v33 = sub_239495678(v44);
    v34 = sub_23949571C(&v44);
    v35 = "Idle";
    if (v42)
    {
      v35 = "Active";
    }

    v38 = v35;
    v36 = 114;
    if (v32)
    {
      v36 = 105;
    }

    sub_2393D5320(5, 2, "??%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X scheduled for %ums from now [State:%s II:%u AI:%u AT:%u]", v30, v31, v36, v33, v9, v34, v10, v41, v13, v5, v38, v7, v8, v43);
  }

  return (*(*v44 + 32))(v44);
}

uint64_t sub_239474F50(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v4 = 0;
  v6 = a2;
  v7[0] = &v6;
  v7[1] = &v5;
  v7[2] = a1;
  v7[3] = &v4;
  sub_2393D6A10((a1 + 32), v7, sub_239475C34);
  return v4;
}

uint64_t sub_239474FAC(uint64_t *a1, uint64_t **a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if ((*a2)[11])
  {
    v5 = *(*(v4 + 48) + 88);
    sub_238EA6DC0(v4, buf, a2);
    v6 = sub_239496E3C(v5, buf, a2 + 1);
    v8 = v7;
    (*(**buf + 32))(*buf);
    v9 = *(*a2 + 56);
    v10 = sub_2394703E0(*a2);
    v11 = sub_2394753D8(v6, v8, v9, v10);
    v12 = HIDWORD(v11);
    v13 = v11;
    if (v11)
    {
      v14 = sub_2393D9044(5u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_2393C9138();
        v16 = sub_239495E1C((a2 + 1));
        v17 = *(*a2 + 56);
        v18 = sub_2394703E0(*a2);
        v19 = *(a2 + 24);
        *buf = 136316162;
        if (v18)
        {
          v20 = 105;
        }

        else
        {
          v20 = 114;
        }

        *&buf[4] = v15;
        v42 = 1024;
        v43 = v16;
        v44 = 1024;
        v45 = v17;
        v46 = 1024;
        v47 = v20;
        v48 = 1024;
        v49 = v19;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Crit-err %s when sending CHIP MessageCounter:%u on exchange %u%c, send tries: %d", buf, 0x24u);
      }

      if (sub_2393D5398(1u))
      {
        v21 = sub_2393C9138();
        v22 = sub_239495E1C((a2 + 1));
        v23 = *(*a2 + 56);
        v24 = sub_2394703E0(*a2);
        v25 = 114;
        if (v24)
        {
          v25 = 105;
        }

        sub_2393D5320(5, 1, "Crit-err %s when sending CHIP MessageCounter:%u on exchange %u%c, send tries: %d", v21, v22, v23, v25, *(a2 + 24));
      }

      sub_239475590((a1 + 2), a2);
      sub_239474644(a1);
    }

    else
    {
      sub_239474A64(v11, a2);
      sub_238EA6DC0(*a2, buf, v38);
      v40 = 1;
      sub_2394743F8(a1, a2, buf, &v40);
      (*(**buf + 32))(*buf);
    }
  }

  else
  {
    v26 = sub_2393D9044(5u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = sub_2393C9138();
      v28 = sub_239495E1C((a2 + 1));
      v29 = *(*a2 + 56);
      v30 = sub_2394703E0(*a2);
      v31 = *(a2 + 24);
      *buf = 136316162;
      if (v30)
      {
        v32 = 105;
      }

      else
      {
        v32 = 114;
      }

      *&buf[4] = v27;
      v42 = 1024;
      v43 = v28;
      v44 = 1024;
      v45 = v29;
      v46 = 1024;
      v47 = v32;
      v48 = 1024;
      v49 = v31;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Crit-err %s when sending CHIP MessageCounter:%u on exchange %u%c, send tries: %d", buf, 0x24u);
    }

    if (sub_2393D5398(1u))
    {
      v33 = sub_2393C9138();
      v34 = sub_239495E1C((a2 + 1));
      v35 = *(*a2 + 56);
      v36 = sub_2394703E0(*a2);
      v37 = 114;
      if (v36)
      {
        v37 = 105;
      }

      sub_2393D5320(5, 1, "Crit-err %s when sending CHIP MessageCounter:%u on exchange %u%c, send tries: %d", v33, v34, v35, v37, *(a2 + 24));
    }

    sub_239475590((a1 + 2), a2);
    sub_239474644(a1);
    v13 = 3;
    v12 = 377;
  }

  return v13 | (v12 << 32);
}

uint64_t sub_23947539C(uint64_t *a1, void *a2)
{
  sub_239475590((a1 + 2), a2);

  return sub_239474644(a1);
}

unint64_t sub_2394753D8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a1;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 == sub_2393D948C(55, "src/messaging/ReliableMessageMgr.cpp", 0x202u))
  {
    v7 = sub_2393D9044(5u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = sub_2393C9138();
      if (a4)
      {
        v8 = 105;
      }

      else
      {
        v8 = 114;
      }

      v15 = 1024;
      v16 = a3;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Ignoring transient send error: %s on exchange %u%c", buf, 0x18u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = sub_2393C9138();
      v10 = 114;
      if (a4)
      {
        v10 = 105;
      }

      sub_2393D5320(5, 1, "Ignoring transient send error: %s on exchange %u%c", v9, a3, v10);
    }

    LODWORD(v6) = 0;
    v11 = 0;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFF00000000;
  }

  return v11 | v6;
}

uint64_t sub_23947554C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4[0] = &v3;
  v4[1] = a1;
  return sub_2393D6A10((a1 + 32), v4, sub_239475E34);
}

void sub_239475590(uint64_t a1, void *a2)
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
    v6 = sub_23947428C(a2);
    j__free(v6);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v7 = v5[2];
      *(v5[1] + 16) = v7;
      *(v7 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

int *sub_23947562C(int *result, uint64_t a2)
{
  if (*result == 1)
  {
    result = sub_239475ED8(result, a2);
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  dword_27DF7C050 = v2;
  return result;
}

void *sub_239475668(void *result, uint64_t a2)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_239532DC4(result);
    }
  }

  return result;
}

uint64_t sub_2394756B8(void ***a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x10) != 0 && ***a1 >= *(a2 + 16))
  {
    sub_239473AEC(a2 + 8);
  }

  return 0;
}

uint64_t sub_239475700(void **a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (**a1 >= *(a2 + 16))
  {
    v3 = a2 + 8;
    if (!*(a2 + 8))
    {
      sub_239532E60();
    }

    v4 = a1[1];
    sub_238EA6DC0(*a2, &v51, a2);
    v5 = *(a2 + 24);
    v6 = sub_239495E1C(v3);
    v7 = *(v51 + 24);
    if ((*(*v51 + 16))(v51) == 2)
    {
      v8 = *(sub_239495304(v51) + 72);
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 4)
    {
      v9 = *a2;
      sub_2393E9648((*a2 + 28));
      v10 = sub_2393D9044(5u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v7;
        v12 = v6;
        v13 = v4;
        v14 = *(*a2 + 112);
        if (sub_2394703E0(*a2))
        {
          v15 = 105;
        }

        else
        {
          v15 = 114;
        }

        v16 = sub_239495678(v51);
        v17 = sub_23949571C(&v51);
        *buf = 67111426;
        v53 = 5;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v14;
        v4 = v13;
        v6 = v12;
        v7 = v11;
        HIWORD(v54) = 1024;
        v55 = v15;
        v56 = 1024;
        v57 = v16;
        v58 = 1024;
        v59 = v6;
        v60 = 2080;
        v61 = v17;
        v62 = 1024;
        v63 = v11;
        v64 = 1024;
        v65 = HIDWORD(v8);
        v66 = 1024;
        v67 = v8;
        v68 = 1024;
        v69 = 4;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "<<%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X failure (max retries:%d)", buf, 0x42u);
      }

      if (sub_2393D5398(1u))
      {
        v18 = *(*a2 + 112);
        v19 = sub_2394703E0(*a2);
        v20 = sub_239495678(v51);
        v49 = sub_23949571C(&v51);
        v21 = 114;
        if (v19)
        {
          v21 = 105;
        }

        sub_2393D5320(5, 1, "<<%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X failure (max retries:%d)", 5, v18, v21, v20, v6, v49, v7, HIDWORD(v8), v8, 4);
      }

      *buf = 3;
      sub_2394743F8(v4, a2, &v51, buf);
      if ((sub_2394703EC(v9) & 1) == 0)
      {
        if ((*(*v51 + 16))(v51) == 2 && *(sub_239495304(v51) + 57) == 2)
        {
          v22 = sub_239495304(v51);
          sub_239493108(v22);
        }

        v23 = v51 + 8;
        v24 = *(v51 + 16);
        if (v24 != v51 + 8)
        {
          do
          {
            v25 = *(v24 + 8);
            if (v24)
            {
              v26 = v24 - 8;
            }

            else
            {
              v26 = 0;
            }

            (*(*v26 + 32))(v26);
            v24 = v25;
          }

          while (v25 != v23);
        }
      }

      sub_239475590((v4 + 2), a2);
      sub_2393E960C((v9 + 28), v27);
    }

    else
    {
      v28 = *(a2 + 24) + 1;
      *(a2 + 24) = v28;
      v29 = sub_2393D9044(5u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
        v31 = *(*a2 + 112);
        v32 = v7;
        v33 = v6;
        v34 = v4;
        if (sub_2394703E0(*a2))
        {
          v35 = 105;
        }

        else
        {
          v35 = 114;
        }

        v36 = sub_239495678(v51);
        v37 = sub_23949571C(&v51);
        *buf = 67111170;
        v53 = v30;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v31;
        HIWORD(v54) = 1024;
        v55 = v35;
        v4 = v34;
        v6 = v33;
        v7 = v32;
        v56 = 1024;
        v57 = v36;
        v58 = 1024;
        v59 = v6;
        v60 = 2080;
        v61 = v37;
        v62 = 1024;
        v63 = v32;
        v64 = 1024;
        v65 = HIDWORD(v8);
        v66 = 1024;
        v67 = v8;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_DEFAULT, "<<%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X", buf, 0x3Cu);
      }

      if (sub_2393D5398(2u))
      {
        v38 = *(a2 + 24);
        v39 = v7;
        v40 = v6;
        v41 = v4;
        v42 = *(*a2 + 112);
        v43 = sub_2394703E0(*a2);
        v44 = sub_239495678(v51);
        v50 = sub_23949571C(&v51);
        v45 = 114;
        if (v43)
        {
          v45 = 105;
        }

        v48 = v42;
        v4 = v41;
        sub_2393D5320(5, 2, "<<%d [E:%u%c S:%u M:%u] (%s) Msg Retransmission to %u:%08X%08X", v38, v48, v45, v44, v40, v50, v39, HIDWORD(v8), v8);
      }

      v46 = *(a2 + 24);
      *buf = 2;
      v54 = "core_dev_rmp_retry_count";
      v55 = v46;
      LOBYTE(v56) = 2;
      sub_23948BD20(buf);
      sub_239474FAC(v4, a2);
    }

    (*(*v51 + 32))(v51);
  }

  return 0;
}

uint64_t sub_239475C34(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*a2 + 8 != **a1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (sub_239495E1C((a2 + 1)) != **(a1 + 8))
  {
    return 0;
  }

  sub_238EA6DC0(*a2, &v20, v5);
  *buf = 2;
  sub_2394743F8(v4, a2, &v20, buf);
  sub_239475590((v4 + 2), a2);
  sub_239474644(v4);
  v6 = sub_2393D9044(5u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = **(a1 + 8);
    v8 = *(sub_239473958(**a1) + 112);
    v9 = sub_239473958(**a1);
    v10 = sub_2394703E0(v9);
    *buf = 67109632;
    v22 = v7;
    if (v10)
    {
      v11 = 105;
    }

    else
    {
      v11 = 114;
    }

    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Rxd Ack; Removing MessageCounter:%u from Retrans Table on exchange %u%c", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v12 = **(a1 + 8);
    v13 = *(sub_239473958(**a1) + 112);
    v14 = sub_239473958(**a1);
    v15 = sub_2394703E0(v14);
    v16 = 114;
    if (v15)
    {
      v16 = 105;
    }

    sub_2393D5320(5, 3, "Rxd Ack; Removing MessageCounter:%u from Retrans Table on exchange %u%c", v12, v13, v16);
  }

  v17 = *(a1 + 24);
  v18 = 1;
  *v17 = 1;
  (*(*v20 + 32))(v20);
  return v18;
}

uint64_t sub_239475E34(void **a1, void *a2)
{
  if (*a2 + 8 != **a1)
  {
    return 0;
  }

  v3 = a1[1];
  sub_239475590((v3 + 2), a2);
  sub_239474644(v3);
  return 1;
}

uint64_t sub_239475E8C(unint64_t ***a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x10) != 0)
  {
    v2 = **a1;
    v3 = *(a2 + 16);
    if (v3 < *v2)
    {
      *v2 = v3;
    }
  }

  return 0;
}

uint64_t sub_239475EB8(unint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < **a1)
  {
    **a1 = v2;
  }

  return 0;
}

_BYTE *sub_239475ED8(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952ECB0();
  }

  return a1 + 4;
}

BOOL sub_239475EF8(_BYTE *a1, uint64_t a2)
{
  if (byte_27DF78C14 != 1)
  {
    goto LABEL_4;
  }

  v3 = qword_27DF78C08;
  v4 = HIDWORD(qword_27DF78C08);
  v5 = dword_27DF78C10;
  if (qword_27DF78C08 == 0x12C000001F4)
  {
    if (dword_27DF78C10 == 4000)
    {
LABEL_4:
      v6 = 0;
      v5 = 0;
      goto LABEL_7;
    }

    v4 = 300;
  }

  v6 = 1;
LABEL_7:
  if (*a1)
  {
    v7 = sub_238DD173C(a1, a2);
    v9 = *(v7 + 2);
    qword_27DF78C08 = *v7;
    v8 = qword_27DF78C08;
    byte_27DF78C14 = 1;
    dword_27DF78C10 = v9;
    v9 = v9;
    v2 = HIDWORD(qword_27DF78C08);
    if (qword_27DF78C08 == 500 && v2 == 300)
    {
      if (v9 == 4000)
      {
        v10 = 0;
        v8 = 500;
        goto LABEL_15;
      }

      LODWORD(v2) = 300;
    }

    v10 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
    qword_27DF78C08 = 0;
    byte_27DF78C14 = 0;
    dword_27DF78C10 = 0;
  }

LABEL_15:
  v13 = v3 != v8 || v4 != v2 || v5 != v9;
  if (!v6)
  {
    v13 = 0;
  }

  return v6 != v10 || v13;
}

void sub_239476008(uint64_t a1@<X8>)
{
  if (byte_27DF78C14 != 1)
  {
    goto LABEL_4;
  }

  v1 = qword_27DF78C08;
  v2 = HIDWORD(qword_27DF78C08);
  v3 = dword_27DF78C10;
  if (qword_27DF78C08 == 0x12C000001F4)
  {
    if (dword_27DF78C10 == 4000)
    {
LABEL_4:
      *a1 = 0;
      return;
    }

    v2 = 300;
  }

  *a1 = 1;
  *(a1 + 4) = v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t sub_239476070(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v9 = 0;
  v10 = 0;
  v11 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - a3;
  v12 = a4;
  do
  {
    if (v11 + v10 >= v12)
    {
      v13 = a2;
    }

    else
    {
      v13 = a1;
    }

    if (!a5)
    {
      v13 = a1;
    }

    v14 = v9;
    v10 += sub_239474900(v13, v9++, 1);
  }

  while (v14 < 4);
  return v10;
}

uint64_t sub_239476134(uint64_t a1, uint64_t a2)
{
  result = qword_27DF78C18;
  if (!qword_27DF78C18)
  {
    sub_239532EF8();
  }

  return result;
}

uint64_t sub_239476154(uint64_t result)
{
  if (result)
  {
    qword_27DF78C18 = result;
  }

  return result;
}

uint64_t sub_239476164(uint64_t a1, uint64_t a2)
{
  result = qword_27DF78C20;
  if (!qword_27DF78C20)
  {
    sub_239532FB8();
  }

  return result;
}

uint64_t sub_239476184(uint64_t result)
{
  if (result)
  {
    qword_27DF78C20 = result;
  }

  return result;
}

unint64_t sub_239476194()
{
  v3 = 0;
  v0 = sub_2393F888C(&v3, 4uLL);
  if (v0)
  {
    v1 = v0 & 0xFFFFFFFF00000000;
  }

  else
  {
    srand(v3);
    LODWORD(v0) = 0;
    v1 = 0;
  }

  return v1 | v0;
}

BOOL sub_2394761F4(char *a1, size_t a2, int a3, uint64_t a4)
{
  v4 = a3 & 0xFF000700;
  if ((a3 & 0xFF000700) == 0x200)
  {
    v5 = "Not service provisioned";
    if (a3 != 514)
    {
      v5 = 0;
    }

    if (a3 == 513)
    {
      v6 = "Config not found";
    }

    else
    {
      v6 = v5;
    }

    sub_2393C9264(a1, a2, "Device Layer", a3, a4, v6);
  }

  return v4 == 512;
}

const char *sub_23947625C(_DWORD *a1)
{
  if (sub_2393CFBB4(a1))
  {
    return "IPv6 link-local address";
  }

  if (sub_2393CFBA0(a1))
  {
    return "IPv6 unique local address";
  }

  if (sub_2393CFB8C(a1))
  {
    return "IPv6 global unicast address";
  }

  return "IPv6 address";
}

uint64_t *sub_2394762D4()
{
  result = qword_27DF7C058;
  if (!qword_27DF7C058)
  {
    if (atomic_load_explicit(byte_27DF78C28, memory_order_acquire))
    {
      return &qword_27DF78C30;
    }

    else
    {
      v3[1] = v0;
      v3[2] = v1;
      sub_239533078(v3);
      return v3[0];
    }
  }

  return result;
}

BOOL sub_23947632C(const char *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (qword_27DF7BD08 != -1)
  {
    sub_23953312C();
  }

  result = sub_239479F74(&byte_27DF7BCA8);
  if (!result)
  {
    v5 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = "(null)";
      }

      *buf = 136315394;
      v9 = v6;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Chip stack locking error at '%s:%d'. Code is unsafe/racy", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      if (a1)
      {
        v7 = a1;
      }

      else
      {
        v7 = "(null)";
      }

      sub_2393D5320(31, 1, "Chip stack locking error at '%s:%d'. Code is unsafe/racy", v7, a2);
    }

    sub_238EAC830();
  }

  return result;
}

dispatch_once_t *sub_239476450(uint64_t a1, uint64_t a2)
{
  result = qword_27DF79690;
  if (!qword_27DF79690)
  {
    return sub_239476C3C(0, a2);
  }

  return result;
}

uint64_t sub_239476464(uint64_t result)
{
  if (result)
  {
    qword_27DF79690 = result;
  }

  return result;
}

uint64_t sub_239476474(uint64_t a1)
{
  v2 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Initializing BLE Manager", v5, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "Initializing BLE Manager");
  }

  v3 = sub_239476328();
  return sub_2393CC8B0(a1 + 8, a1 + 88, a1 + 64, a1, v3);
}

uint64_t sub_239476518(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8))
  {
    sub_2394867DC(a1 + 64, a2, a3);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x3C00000000;
    v4 = 3;
  }

  return v4 | v3;
}

uint64_t sub_239476564(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_239486AC0();
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = 0x4300000000;
    v2 = 3;
  }

  return v2 | v1;
}

uint64_t sub_2394765B0()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_IsAdvertisingEnabled";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_IsAdvertisingEnabled");
  }

  return 0;
}

uint64_t sub_23947667C()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_SetAdvertisingEnabled";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_SetAdvertisingEnabled");
  }

  return 0x510000006CLL;
}

uint64_t sub_239476754()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_SetAdvertisingMode";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_SetAdvertisingMode");
  }

  return 0x570000006CLL;
}

uint64_t sub_23947682C()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_IsAdvertising";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_IsAdvertising");
  }

  return 0;
}

uint64_t sub_2394768F8()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_GetDeviceName";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_GetDeviceName");
  }

  return 0x630000006CLL;
}

uint64_t sub_2394769D0()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_SetDeviceName";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_SetDeviceName");
  }

  return 0x690000006CLL;
}

uint64_t sub_239476AA8()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v3 = "_NumConnections";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_NumConnections");
  }

  return 0;
}

void sub_239476B74()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v2 = "_OnPlatformEvent";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "%s", "_OnPlatformEvent");
  }
}

dispatch_once_t *sub_239476C3C(uint64_t a1, uint64_t a2)
{
  if (qword_27DF796A0 != -1)
  {
    sub_23953314C(a1);
  }

  return &qword_27DF79698;
}

void sub_239476C9C()
{
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "InitiateFactoryReset not implemented", v1, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(31, 1, "InitiateFactoryReset not implemented");
  }
}

uint64_t sub_239476F40(uint64_t a1, void *a2)
{
  if (a2[1] == 6)
  {
    v18 = v2;
    v19 = v3;
    v5 = *a2;
    *(v5 + 4) = 0;
    *v5 = 0;
    v6 = sub_239476450(a1, a2);
    if ((*(*v6 + 8))(v6, *a2))
    {
      v7 = 0x19C00000000;
      v8 = 216;
    }

    else
    {
      v9 = sub_2393D9044(0x1Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Using WiFi MAC for hostname", v17, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(31, 3, "Using WiFi MAC for hostname");
      }

      sub_238DB8498(a2, 6uLL, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v18);
      v8 = 0;
      v7 = 0;
    }
  }

  else
  {
    v7 = 0x18800000000;
    v8 = 47;
  }

  return v7 | v8;
}
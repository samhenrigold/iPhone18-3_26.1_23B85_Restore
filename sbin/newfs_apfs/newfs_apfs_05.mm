uint64_t sub_10003F5A4(uint64_t *a1, unsigned int a2, int a3, int a4, uint64_t a5, void *a6)
{
  if (sub_100036630(a1) == 13)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  if (v12)
  {
    v13 = v12[49];
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *a6 = 0;
  v14 = 22;
  if (a2 >> 30 && (a2 & 0x8000000) == 0 && (a4 == 1073741826 || a4 == -2147483646))
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = 1073741826;
    v14 = sub_100038AF0(v13[49], a2 & 0xFFFF0000, 0, &xmmword_10006A8D8, v20, v12, a5, &v22);
    if (!v14)
    {
      v23[1] = 0;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23[0] = sub_10003DE40;
      v23[2] = 0x20000000BLL;
      v15 = 0x80000000;
      if (a4 >= 0)
      {
        v15 = 0x40000000;
      }

      v14 = sub_100026978(a1, v15 | a4 & 0xFFFF0000, 0, 0x10u, 16, v23, a5, &v21);
      if (v14)
      {
        sub_100039E90(v22, a5);
        sub_100037058(v22);
      }

      else
      {
        v16 = v21;
        *(v22[47] + 40) = a4;
        v17 = sub_100038018(v16);
        v18 = v22;
        *(v22[47] + 48) = v17;
        sub_10003D180(v18, a5, 0);
        sub_100037058(v21);
        v14 = 0;
        if (v22)
        {
          *a6 = v22;
        }
      }
    }
  }

  return v14;
}

uint64_t sub_10003F794(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (sub_100036630(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  if (v8)
  {
    v9 = v8[49];
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10004D1DC(v9, a3))
  {
    return 22;
  }

  v10 = sub_10003A1E8(v9[49], 0x40000000uLL, a2, &xmmword_10006A8D8, 0, v8, 0, a3, &v20);
  if (!v10)
  {
    if (v8)
    {
      v11 = sub_100038018(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100036628(v20);
    v13 = sub_10003835C(v20);
    v14 = sub_100038018(v20);
    if (a4)
    {
      v15 = sub_10000FC30(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = sub_10000FC54(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (sub_100036630(a1) == 13)
      {
        v16 = (a1 + 4040);
      }

      else
      {
        v16 = (*(a1 + 384) + 212);
      }

      v17 = sub_100038018(v20);
      v18 = sub_100036628(v20);
      sub_100012178("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", "omap_destroy", 522, v16, v17, v18, v10);
    }

    sub_100037058(v20);
  }

  return v10;
}

uint64_t sub_10003F944(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100036630(a1);
  v9 = 0;
  v10 = a1;
  if (a1 && v8 == 13)
  {
    v10 = *(a1 + 392);
    if (*(a1 + 504))
    {
      v9 = *(a1 + 504);
    }

    else
    {
      v9 = a1;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if (v9)
    {
      pthread_mutex_lock((v9 + 1152));
      v12 = (v9 + 3632);
      v13 = 128;
      v14 = v9;
    }

    else
    {
      pthread_mutex_lock((v10 + 672));
      v12 = (v10 + 736);
      v13 = 160;
      v14 = v10;
    }

    v15 = *v12;
    *a4 = *v12;
    v16 = *(*(v14 + 376) + v13);
    if (v15)
    {
      sub_10003C894(v15);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = sub_10003BC6C(*a4, a2, a3);
      if (v17)
      {
        v11 = v17;
        sub_100037058(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = sub_10003A1E8(*(v10 + 392), a2 | 0x40000000u, v16, &xmmword_10006A8D8, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 1152);
        }

        else
        {
          v19 = (v10 + 672);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 3632);
      if (!v9)
      {
        v21 = (v10 + 736);
      }

      *v21 = v20;
      sub_10003C894(v20);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_100038018(*a4) != v16)
    {
      v22 = sub_100038018(*a4);
      if (v9)
      {
        *(*(v9 + 376) + 128) = v22;
        sub_100019634(v9, a3);
        goto LABEL_26;
      }

      *(*(v10 + 376) + 160) = v22;
      sub_10003D180(a1, a3, 0);
LABEL_30:
      v11 = 0;
      v19 = (v10 + 672);
      goto LABEL_31;
    }

LABEL_25:
    if (v9)
    {
LABEL_26:
      v11 = 0;
      v19 = (v9 + 1152);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = sub_10003BC6C(a1, 0, a3);
  if (!v11)
  {
    a2 |= 2u;
    goto LABEL_9;
  }

  return v11;
}

uint64_t sub_10003FB1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100036630(a1);
  v21 = 0uLL;
  if (a4 == 2)
  {
    if (v8 == 13)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 8) = v9;
  }

  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  sub_10003BBDC(a3, 1);
  v10 = sub_100038364(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (sub_100038364(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v23 = 0u;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v22 = sub_10003DE9C;
      DWORD2(v23) = 19;
      if (v16 != 2)
      {
        sub_10003C190(a3, 1);
        v18 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          v17 = v21;
          v13 = 22;
          if (!v21)
          {
            return v13;
          }

          goto LABEL_39;
        }

        v13 = 22;
        goto LABEL_35;
      }

      v13 = sub_100026D00(a1, v16 & 0xFFFF0000, v15, 0, 0, &v22, 0, &v21);
      sub_10003C190(a3, 1);
      if (v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_10003C190(a3, 1);
    }

    if ((sub_100036628(a3) & 0x80000000) == 0)
    {
      v18 = *(&v21 + 1);
      v17 = v21;
      if (v21 != 0)
      {
        if (!*(&v21 + 1))
        {
          if (!v21)
          {
            return 0;
          }

          goto LABEL_38;
        }

        goto LABEL_34;
      }

      sub_10003CD64(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = sub_10003D308(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        v13 = 0;
        goto LABEL_32;
      }

      v19 = sub_10003D294(a3);
    }

    v13 = v19;
LABEL_32:
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_36;
    }

    if (v13)
    {
LABEL_35:
      sub_100037058(v18);
LABEL_36:
      v17 = v21;
      if (!v21)
      {
        return v13;
      }

      if (v13)
      {
LABEL_39:
        sub_100037058(v17);
        return v13;
      }

LABEL_38:
      v13 = sub_100027D0C(a1, a2, v17, a4);
      v17 = v21;
      goto LABEL_39;
    }

LABEL_34:
    v13 = sub_100027D0C(a1, a2, v18, a4);
    v18 = *(&v21 + 1);
    goto LABEL_35;
  }

  v12 = sub_10003DED0(a1, a3, 0, 0, &v21 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  v13 = v12;
  sub_10003C190(a3, 1);
  return v13;
}

uint64_t sub_10003FD94(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v14 = sub_100036630(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = a1[49];
    }
  }

  v22[0] = a2;
  v22[1] = a3;
  v21[0] = __PAIR64__(a5, a6);
  v21[1] = a4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 22;
  if (sub_10004D1DC(v15, a7) && a2 && a3 && a5)
  {
    v17 = sub_100003530(v15[47], 0, a4, (a5 + *(v15[47] + 36) - 1) / *(v15[47] + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = sub_10003F944(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      sub_10003BBDC(v20, 2);
      v16 = sub_10003DED0(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          LODWORD(v21[0]) = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = sub_10001D908(v19, 0, v22, 16, v21, 0x10u, a7);
        sub_100037058(v19);
      }

      sub_10003C190(v20, 2);
      sub_100037058(v20);
    }
  }

  return v16;
}

uint64_t sub_10003FF18(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v14 = sub_100036630(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = a1[49];
    }
  }

  *&v33 = a2;
  *(&v33 + 1) = a3;
  v31[0] = a6;
  v31[1] = a5;
  v32 = a4;
  memset(v30, 170, sizeof(v30));
  v16 = 22;
  if (sub_10004D1DC(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = sub_10003F944(a1, 1, a7, &v30[2]);
        if (!v16)
        {
          sub_10003BBDC(v30[2], 2);
          v16 = sub_10003DED0(a1, v30[2], 1, a7, &v30[1]);
          v17 = v30[2];
          if (v16)
          {
LABEL_42:
            sub_10003C190(v17, 2);
            sub_100037058(v30[2]);
            return v16;
          }

          v18 = *(v30[2] + 376);
          v19 = *(v18 + 64);
          if ((*(v30[2] + 384) & 2) != 0 && *(v30[2] + 488) == v19)
          {
            v19 = *(v30[2] + 480);
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_21;
            }

            v29 = v33;
            v27 = 0xAAAAAAAAAAAAAAAALL;
            v28 = 0xAAAAAAAAAAAAAAAALL;
            v30[0] = 0x1000000010;
            v21 = sub_100025428(v30[1], 0, &v29, v30 + 1, 16, &v27, v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                v29 = v33;
                v27 = 0xAAAAAAAAAAAAAAAALL;
                v28 = 0xAAAAAAAAAAAAAAAALL;
                v30[0] = 0x1000000010;
                if (!sub_100025428(v30[1], 0, &v29, v30 + 1, 16, &v27, v30, 2, 0, 0) && v29 == v33)
                {
                  goto LABEL_24;
                }
              }

LABEL_21:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_25;
            }

            if (a6)
            {
LABEL_24:
              *(&v33 + 1) = a7;
              v16 = sub_10001D908(v30[1], 0, &v33, 16, v31, 0x10u, a7);
              v22 = 1;
LABEL_25:
              if (v20 && !v16)
              {
                if (a3 == a7)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                if (v23)
                {
                  v16 = 0;
                }

                else
                {
                  *(&v33 + 1) = a3;
                  v16 = sub_100025094(v30[1], 0, &v33, 0x10u, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v33 + 1) = a7;
                    sub_100025094(v30[1], 0, &v33, 0x10u, a7);
LABEL_41:
                    sub_100037058(v30[1]);
                    v17 = v30[2];
                    goto LABEL_42;
                  }
                }
              }

              v25 = !v20;
              if (v16)
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_41;
              }

              v21 = sub_10004A66C(a1, 64, a4, (a5 + *(v15[47] + 36) - 1) / *(v15[47] + 36), a7);
LABEL_40:
              v16 = v21;
              goto LABEL_41;
            }
          }

          sub_100037058(v30[1]);
          sub_10003C190(v30[2], 2);
          sub_100037058(v30[2]);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10004022C(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = sub_10003F944(a1, 0, 0, &v32);
  if (!v14)
  {
    sub_10003BBDC(v32, 1);
    if (*(*(v32 + 376) + 88) > a2)
    {
      sub_10003C190(v32, 1);
      v14 = 2;
LABEL_33:
      sub_100037058(v32);
      return v14;
    }

    v15 = sub_10003DED0(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      sub_10003C190(v32, 1);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = sub_100025428(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = *(v32 + 376);
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = sub_100025428(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      sub_100037058(v31);
      sub_10003C190(v32, 1);
      if (v17)
      {
        sub_1000405F0(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(*(v32 + 376) + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (*(v32 + 424))
      {
        sub_1000404A4(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_1000404A4(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = -86;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      sub_100028538(*(v4 + 424), &v13);
      v7 = v13;
      result = sub_10003835C(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = sub_100025428(*(v4 + 424), 0, &v14, &__tp, 8, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return sub_10001D908(*(v4 + 424), 0, &v14, 8, &v11, 9u, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000405F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_100036630(a1) != 13)
  {
    v3 = 0;
  }

  sub_10003BBDC(a2, 2);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      sub_10002822C(*(a2 + 424), 0, 0);
      sub_100037058(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3640);
    if (v4)
    {
      sub_100037058(v4);
      *(v3 + 3640) = 0;
    }
  }

  return sub_10003C190(a2, 2);
}

uint64_t sub_1000406AC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v16 = 0;
  v17 = 0;
  memset(v15, 170, sizeof(v15));
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10003F944(a1, 0, 0, &v17);
  if (v6)
  {
    v7 = v6;
    if (sub_100036630(a1) == 13)
    {
      sub_100012178("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4040), v7);
    }

    else
    {
      sub_100012178("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), v7);
    }

    return v7;
  }

  v8 = v17[47];
  sub_10003BBDC(v17, 1);
  if ((*(v8 + 32) & 1) == 0)
  {
    v9 = *(v8 + 56);
    if (v9)
    {
      v10 = *(v8 + 44);
      v19 = 0u;
      v20 = 0u;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v18 = sub_10003DE9C;
      DWORD2(v19) = 19;
      if (v10 == 2)
      {
        v7 = sub_100026D00(a1, v10 & 0xFFFF0000, v9, 0, 0, &v18, 0, &v16);
        if (!v7)
        {
          v14 = a2;
          do
          {
            v15[0] = 0x800000010;
            v11 = sub_100025428(v16, 0, &v14, v15 + 1, 8, &v15[1], v15, 4, 0, 0);
            if (v11)
            {
              v12 = 1;
            }

            else
            {
              v12 = (v15[1] & 1) == 0;
            }
          }

          while (!v12);
          v7 = v11;
          if (!v11)
          {
            *a3 = v14;
            goto LABEL_20;
          }

          if (v11 != 2)
          {
            sub_100036630(a1);
            sub_100012178("%s:%d: %s error searching snapshot tree: %d\n");
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v7 = 22;
      }

      sub_100036630(a1);
      sub_100012178("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_20;
    }
  }

LABEL_16:
  v7 = 2;
LABEL_20:
  if (v16)
  {
    sub_100037058(v16);
  }

  sub_10003C190(v17, 1);
  sub_100037058(v17);
  return v7;
}

uint64_t sub_100040940(void *a1, void *a2, unint64_t a3)
{
  if (sub_100036630(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *v6[6].__opaque;
    result = sub_10003BC6C(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = v6 + 18;
  }

  else
  {
    result = sub_10003BC6C(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
  }

  pthread_mutex_lock(v9);
  v10 = sub_100038018(a2);
  v11 = sub_100036628(a2);
  if (!sub_10003BC6C(a2, (v11 >> 29) & 2, a3) && sub_100038018(a2) != v10)
  {
    v13 = sub_100038018(a2);
    if (v6)
    {
      *(*&v6[5].__opaque[48] + 128) = v13;
      sub_100019634(v6, a3);
      goto LABEL_12;
    }

    *(v7[47] + 160) = v13;
    sub_10003D180(a1, a3, 0);
LABEL_16:
    v12 = (v7 + 84);
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = v6 + 18;
LABEL_17:
  pthread_mutex_unlock(v12);
  return 0;
}

uint64_t sub_100040A58(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *a3;
  v4 = *(*a3 + 16);
  if (!v4)
  {
    return 22;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    return 22;
  }

  v6 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v7 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v4;
  v10 = *(v3 + 48);
  *(a1 + 96) = v10;
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12;
  *(a1 + 120) = v10;
  *(a1 + 152) = *(v3 + 104);
  v13 = *(v3 + 120);
  *(a1 + 144) = v6;
  *(a1 + 148) = v13;
  v14 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v15 = *(v3 + 112);
  *(a1 + 160) = v15;
  *(a1 + 164) = v5;
  *(a1 + 264) = v14;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v16 = 8 * v15 + 2520;
  *(a1 + 328) = v16;
  v17 = ((2 * v15 + 6) & 0xFFFFFFF8) + v16;
  *(a1 + 332) = v17;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v18 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v18 + 7) & 0x1FFFFFFF8;
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + a1 + 8);
    v22 = xmmword_10006A910;
    v23 = xmmword_10006A920;
    v24 = xmmword_10006A780;
    v25 = xmmword_10006A790;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v20, v25));
      v29 = vaddq_s64(v25, v26);
      if (vuzp1_s8(vuzp1_s16(v28, *v20.i8), *v20.i8).u8[0])
      {
        *(v21 - 4) = v29.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v20), *&v20).i8[1])
      {
        *(v21 - 3) = v29.i16[4];
      }

      v30 = vaddq_s64(v24, v26);
      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))), *&v20).i8[2])
      {
        *(v21 - 2) = v30.i16[0];
        *(v21 - 1) = v30.i16[4];
      }

      v31 = vaddq_s64(v23, v26);
      v32 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i32[1])
      {
        *v21 = v31.i16[0];
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i8[5])
      {
        v21[1] = v31.i16[4];
      }

      v33 = vaddq_s64(v22, v26);
      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22)))).i8[6])
      {
        v21[2] = v33.i16[0];
        v21[3] = v33.i16[4];
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v21 += 8;
      v22 = vaddq_s64(v22, v27);
      v19 -= 8;
    }

    while (v19);
  }

  *(a1 + v17 + 2 * v18) = -1;
  v35 = v17 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v35;
  if (v9)
  {
    v8 = v9;
  }

  v36 = (v35 + 8 * v8);
  *(a1 + 128) = v36;
  if (v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v11;
  }

  if (8 * v37 + v36 <= a2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100040CDC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v4;
  v82 = v4;
  v79 = v4;
  v80 = v4;
  v77 = v4;
  v78 = v4;
  v75 = v4;
  v76 = v4;
  v73 = v4;
  v74 = v4;
  v71 = v4;
  v72 = v4;
  v70 = v4;
  v5 = *(v2 + 32);
  v6 = *(v3 + 376);
  v7 = *(v6 + 36);
  if (*(v3 + 624))
  {
    if (v5 == v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v6 + 40) || v5 != v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v13 = 2520;
    }

    else
    {
      v13 = 336;
    }

    v14 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 <= v13)
    {
      v8 = v13;
    }

    else
    {
      v8 = *(v2 + 340);
    }

    if (v14 >= v13)
    {
      v9 = *(v2 + 336) == 0;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *(a1 + 48);
  v17 = sub_10000E084(v5, *(v2 + 48), *(v6 + 180), &v70);
  if (v17)
  {
    return v17;
  }

  if (v8 < v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (*(v2 + 36) != v75)
  {
    ++v18;
  }

  if (*(v2 + 40) != DWORD2(v75))
  {
    ++v18;
  }

  if (*(v2 + 44) != v76)
  {
    ++v18;
  }

  v19 = *(v2 + 48);
  if (*(v2 + 56) == *(&v71 + 1))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = *(v2 + 64);
  v22 = *(v2 + 68);
  if (v21 != v72)
  {
    ++v20;
  }

  if (v22 != DWORD2(v72) && *(&v72 + 1) + v22 != 1)
  {
    ++v20;
  }

  if (*(v2 + 104) == *(&v73 + 1))
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  v25 = *(v2 + 112);
  v26 = *(v2 + 116);
  if (v25 != v74)
  {
    ++v24;
  }

  if (v26 != DWORD2(v74) && *(&v74 + 1) + v26 != 1)
  {
    ++v24;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v76 + 1))
  {
    ++v24;
  }

  v28 = *(v2 + 160);
  if (v28 != v77)
  {
    ++v24;
  }

  v29 = *(v2 + 164) & 0x7FFFFFFF;
  if (v29 > 0xFFFE)
  {
    ++v24;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v24;
  }

  if (v29 / v28 < 4)
  {
    ++v24;
  }

  if (*(v2 + 224) != v79)
  {
    ++v24;
  }

  if (*(v2 + 264) != DWORD2(v79))
  {
    ++v24;
  }

  if (*(v2 + 304) != v80)
  {
    ++v24;
  }

  v30 = *(v2 + 324);
  if (v30 < v8)
  {
    ++v24;
  }

  v31 = *(v2 + 328);
  if (v30 + 8 * v28 > v31)
  {
    ++v24;
  }

  v32 = *(v2 + 332);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v24;
  }

  v33 = *(v2 + 80);
  if (v32 + 2 * ((v29 + 3) & 0xFFFFFFFC) > v33)
  {
    ++v24;
  }

  v34 = *(v2 + 128);
  if (v22)
  {
    v21 = *(v2 + 68);
  }

  if (v33 + 8 * v21 <= v34)
  {
    v35 = v24;
  }

  else
  {
    v35 = v24 + 1;
  }

  if (v26)
  {
    v25 = *(v2 + 116);
  }

  if (v34 + 8 * v25 > *(a1 + 48))
  {
    ++v35;
  }

  if (*(v2 + 72) > v19)
  {
    ++v35;
  }

  v36 = *(v2 + 240);
  if (v36 < v19)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 1;
  }

  if (v36 && !*(v2 + 248))
  {
    ++v37;
  }

  v38 = *(v2 + 256);
  if (v38 <= sub_100038020(a1))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 + 1;
  }

  v40 = *(v2 + 96);
  v41 = *(v2 + 120);
  v42 = *(v2 + 280);
  if (v40)
  {
    if (v41 > v40)
    {
      ++v39;
    }

    if (v42 < v40)
    {
      v43 = v39;
    }

    else
    {
      v43 = v39 + 1;
    }

    if (v42 && !*(v2 + 288))
    {
      ++v43;
    }

    v44 = *(v2 + 296);
    v45 = v44 > sub_100038020(a1);
  }

  else
  {
    if (v41)
    {
      ++v39;
    }

    if (v42)
    {
      v46 = v39 + 1;
    }

    else
    {
      v46 = v39;
    }

    if (*(v2 + 288))
    {
      v43 = v46 + 1;
    }

    else
    {
      v43 = v46;
    }

    v45 = *(v2 + 296) != 0;
  }

  v47 = v43 + v45;
  v48 = *(v2 + 320);
  v49 = *(v2 + 164) & 0x7FFFFFFF;
  if (v48 != 0xFFFF && v49 <= v48)
  {
    ++v47;
  }

  v51 = *(v2 + 322);
  if (v51 != 0xFFFF && v49 <= v51)
  {
    ++v47;
  }

  if (!(v47 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v53 = *(v2 + 80);
    v54 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v55 = *(v2 + 48);
    *(a1 + 896) = v2 + v53;
    *(a1 + 904) = v2 + v54;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v55 >> 5;
    *(a1 + 1528) = *(v2 + 96) >> 5;
    if (*(v3 + 625) == 1)
    {
      *(a1 + 1536) = 0;
    }

    else if (*(v3 + 628) == 1)
    {
      *(a1 + 1536) = 32;
    }

    else
    {
      LODWORD(v70) = 0;
      sub_100050A98(*(v3 + 384));
      if ((v70 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v56 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v56)
        {
          *(a1 + 1520) = v56;
        }

        if (*(a1 + 1528) > v56)
        {
          *(a1 + 1528) = v56;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_100038020(a1);
    }

    v58 = 0;
    v59 = a1 + 1496;
    *(a1 + 920) = v57;
    v60 = 1;
    do
    {
      v61 = v60;
      v62 = v2 + 48 + 48 * v58;
      v65 = *(v62 + 8);
      v64 = (v62 + 8);
      v63 = v65;
      if (v65)
      {
        v66 = sub_1000122F4(v63, 4uLL, 0x100004052888210uLL);
        *(v59 + 8 * v58) = v66;
        if (v66 && *v64)
        {
          v67 = 0;
          do
          {
            v68 = *(v59 + 8 * v58) + 4 * v67;
            *v68 = *(v2 + 36) & 0xFFFFFF | (*(v68 + 3) << 24);
            *(*(v59 + 8 * v58) + 4 * v67++ + 3) = 3;
          }

          while (v67 < *v64);
        }
      }

      else
      {
        *(v59 + 8 * v58) = 0;
      }

      v60 = 0;
      v58 = 1;
    }

    while ((v61 & 1) != 0);
    v12 = sub_100011924((a1 + 384));
    if (v12)
    {
      goto LABEL_164;
    }

    v12 = sub_100011924((a1 + 448));
    if (!v12)
    {
      v12 = sub_100011924((a1 + 512));
      if (!v12)
      {
        v12 = sub_100011924((a1 + 576));
        if (!v12)
        {
          v12 = sub_100011924((a1 + 640));
          if (!v12)
          {
            v12 = sub_100011924((a1 + 704));
            if (!v12)
            {
              v12 = sub_10001193C((a1 + 768));
              if (!v12)
              {
LABEL_164:
                *(a1 + 1592) = sub_1000122F4(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v12;
              }

              j__pthread_mutex_destroy((a1 + 704));
            }

            j__pthread_mutex_destroy((a1 + 640));
          }

          j__pthread_mutex_destroy((a1 + 576));
        }

        j__pthread_mutex_destroy((a1 + 512));
      }

      j__pthread_mutex_destroy((a1 + 448));
    }

    j__pthread_mutex_destroy((a1 + 384));
    goto LABEL_164;
  }

  v11 = v3;
LABEL_10:
  v12 = sub_1000033FC(v11);
  if (!v12)
  {
    goto LABEL_130;
  }

  return v12;
}

uint64_t sub_100041340(uint64_t a1)
{
  sub_1000123F8(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  sub_1000123F8(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    sub_1000123F8(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    sub_1000123F8(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    sub_1000123F8(v4, 16 * *(a1 + 1538));
  }

  sub_100030854(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    sub_10002A174(v5);
    sub_1000123F8(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    sub_10002A174(v6);
    sub_1000123F8(*(a1 + 1584), 1368);
  }

  j__pthread_mutex_destroy((a1 + 384));
  j__pthread_mutex_destroy((a1 + 448));
  j__pthread_mutex_destroy((a1 + 512));
  j__pthread_mutex_destroy((a1 + 576));
  j__pthread_mutex_destroy((a1 + 640));
  j__pthread_mutex_destroy((a1 + 704));
  sub_100011944((a1 + 768));
  return 0;
}

uint64_t sub_100041434(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_10003835C(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = *a2;
  v10 = *(a2 + 3);
  if (v5 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(v4 + 32) != v10)
  {
    v8 = v11;
  }

  v12 = v9 + 48 * *(a2 + 2);
  v13 = v10 == *(v12 + 68) - 1 ? *(v12 + 64) - *(v9 + 44) * v10 : *(v9 + 44);
  if (*(v4 + 36) == v13)
  {
LABEL_11:
    if (!v8)
    {
      return 0;
    }
  }

  return sub_1000033FC(v6);
}

uint64_t sub_100041510(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_10003835C(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 3);
    if (v5 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (*(v4 + 32) != v10)
    {
      v8 = v11;
    }

    v12 = v9 + 48 * *(a2 + 2);
    if (v10 == *(v12 + 64) - 1)
    {
      if (*(v4 + 36) != *(v12 + 56) - *(v9 + 40) * v10)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 36) != *(v9 + 40))
    {
      goto LABEL_12;
    }
  }

  if (!v8)
  {
    return 0;
  }

LABEL_12:

  return sub_1000033FC(v6);
}

uint64_t sub_1000415FC(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = *(a1 + 384);
  memset(v102, 170, sizeof(v102));
  v96 = 0;
  v97 = a3;
  v95 = 0;
  *a5 = 0;
  v103 = 0;
  v99 = 0;
  v98 = 0;
  v100 = 64;
  v101 = sub_100012434(0x400uLL, 0x1000040451B5BE8uLL);
  if (v101)
  {
    if (!a3)
    {
      v98 = *(a2 + 16);
      v99 = 1;
    }

    LODWORD(v102[2]) = 0;
    v102[1] = a2;
    v11 = sub_10003839C(*(a1 + 392), 0x80000000, 0, &xmmword_10006A930, &v102[1], *(a2 + 136), a4, &v103);
    if (v11 || (sub_10003D180(v103, a4, 0), v12 = *&v103[5].__opaque[48], *a5 = *&v103[1].__opaque[40], v13 = *(a1 + 376), v102[0] = *(v13 + 104), v11 = sub_100011508(a1, sub_100042104, &v97, (v13 + 112), v102, 0), v11) || (v14 = *(a1 + 376), *(v14 + 104) = v102[0], v102[0] = *(v14 + 108), v11 = sub_100011508(a1, sub_100042104, &v97, (v14 + 120), v102, 0), v11) || (*(*(a1 + 376) + 108) = v102[0], v102[0] = *(v12 + 164), v11 = sub_100011508(a1, sub_100042104, &v97, (v12 + 168), v102, 0), v11) || (*(v12 + 164) = v102[0], v102[0] = *(v12 + 152), v11 = sub_100011508(a1, sub_100042104, &v97, (v12 + 176), v102, 1), v11))
    {
      v15 = v11;
    }

    else
    {
      v94 = v12;
      *(v12 + 152) = v102[0];
      if (v97 && *(v97 + 16) && HIDWORD(v100))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(v97 + 16))(*v97, *&v101[v18], *&v101[v18 + 8]);
          if (v20)
          {
            return v20;
          }

          ++v19;
          v18 += 16;
        }

        while (v19 < HIDWORD(v100));
      }

      v21 = sub_100012434(v94[8], 0xE4C85275uLL);
      v22 = sub_100012434(v94[8], 0xA9487841uLL);
      v15 = 12;
      v89 = v22;
      v86 = sub_100012434(v94[8], 0x7D523A3FuLL);
      if (v86 && v22 && v21)
      {
        bzero(v21, v94[8]);
        v25 = v94;
        if (v94[40])
        {
          v26 = 0;
          while (1)
          {
            v27 = v25;
            p_sig = &v103->__sig;
            *(*&v103[13].__opaque[32] + 8 * v26) = a4;
            v29 = sub_10004227C(a1, p_sig, a4, &v96, &v95);
            if (v29)
            {
              v15 = v29;
              sub_100012178("%s:%d: %s failed to allocate bitmap block from IP bitmap pool: %d\n");
              goto LABEL_97;
            }

            *(*&v103[13].__opaque[40] + 2 * v26) = v95;
            v30 = sub_100050A5C(v10);
            if (v30)
            {
              break;
            }

            ++v26;
            v25 = v27;
            if (v26 >= v27[40])
            {
              goto LABEL_34;
            }
          }

          v15 = v30;
        }

        else
        {
LABEL_34:
          v31 = 0;
          v32 = v25 + 12;
          v33 = v86;
          v84 = v21;
          v34 = 0xFFFFFFFFLL;
          v35 = 1;
          v81 = v25 + 12;
          do
          {
            v82 = v35;
            v36 = &v32[12 * v31];
            if (v36[4])
            {
              v37 = 0;
              v87 = v31;
              v85 = v36;
              do
              {
                if (v36[5])
                {
                  v38 = v25[11];
                  if (v37 / v38 != v34)
                  {
                    if (v34 == -1)
                    {
                      v41 = v37 / v38;
                    }

                    else
                    {
                      v39 = v25;
                      sub_10003D4D4(a1, v33, v25[8], v23, v24);
                      v40 = sub_100050A5C(v10);
                      if (v40)
                      {
                        v15 = v40;
                        sub_100012178("%s:%d: %s failed to write cab %d: %d\n");
                        goto LABEL_95;
                      }

                      v41 = v37 / v39[11];
                      LODWORD(v31) = v87;
                    }

                    v34 = v41;
                    v44 = sub_100042380(a1, v103, v31, v41, v33, a4);
                    if (v44)
                    {
                      v76 = v44;
                      sub_100012178("%s:%d: %s failed to initialize cab %d: %d\n", "spaceman_create", 1042, (*(a1 + 384) + 212), v34, v44);
                      v15 = v76;
                      goto LABEL_95;
                    }

                    v38 = v94[11];
                    LODWORD(v31) = v87;
                  }

                  v92 = v34;
                  v90 = v37 - v38 * v34;
                  ++*(v33 + 36);
                  v42 = &v103->__sig;
                  v43 = (v86 + 5);
                }

                else
                {
                  v92 = v34;
                  v42 = &v103->__sig;
                  v43 = *(&v103[14].__sig + v31);
                  v90 = v37;
                }

                v45 = sub_100042454(a1, v42, v31, v37, v89, a4, &v102[3]);
                if (v45)
                {
                  v15 = v45;
                  sub_100012178("%s:%d: %s failed to initialize cib %d: %d\n");
                  goto LABEL_95;
                }

                *(v43 + 8 * v90) = v102[3];
                sub_10003D4D4(a1, v89, v94[8], v46, v47);
                v48 = sub_100050A5C(v10);
                if (v48)
                {
                  v15 = v48;
                  sub_100012178("%s:%d: %s failed to write cib %d: %d\n");
                  goto LABEL_95;
                }

                ++v37;
                v36 = v85;
                v33 = v86;
                v34 = v92;
                v25 = v94;
                v31 = v87;
              }

              while (v37 < v85[4]);
            }

            v21 = v84;
            if (v36[5])
            {
              sub_10003D4D4(a1, v33, v25[8], v23, v24);
              v49 = sub_100050A5C(v10);
              v25 = v94;
              if (v49)
              {
                v15 = v49;
                sub_100012178("%s:%d: %s failed to write cab %d: %d\n");
                goto LABEL_97;
              }
            }

            v35 = 0;
            v31 = 1;
            v32 = v81;
          }

          while ((v82 & 1) != 0);
          if (a3)
          {
            v91 = 0;
            v15 = 0;
            v50 = 1;
            v51 = v81;
            do
            {
              if (!v15)
              {
                v52 = 0;
                v53 = &v51[12 * v91];
                v54 = -1;
                v83 = v50;
                while (2)
                {
                  if (v52 >= v53[4])
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v88 = v52;
                    if (v53[5])
                    {
                      v55 = v94[11];
                      if (v52 / v55 != v54)
                      {
                        v93 = v52 / v55;
                        v56 = sub_100050964(v10);
                        if (v56 || (v56 = sub_100003490(v86, v94[8], v57, v58), v56))
                        {
                          v15 = v56;
                          sub_100012178("%s:%d: %s failed to read cab %d: %d\n");
                          goto LABEL_95;
                        }

                        v54 = v93;
                      }

                      v80 = v54;
                    }

                    else
                    {
                      v80 = v54;
                    }

                    v59 = sub_100050964(*(a1 + 384));
                    if (v59 || (v59 = sub_100003490(v89, v94[8], v60, v61), v59))
                    {
                      v15 = v59;
                      sub_100012178("%s:%d: %s failed to read cib %d: %d\n", "spaceman_create", 1110, (*(a1 + 384) + 212), v88, v59);
LABEL_84:
                      v51 = v81;
                      v50 = v83;
                    }

                    else
                    {
                      v64 = 0;
                      while (v64 < *(v89 + 36))
                      {
                        v65 = v89 + 40 + 32 * v64;
                        v66 = (*(a3 + 24))(*a3, v91, *(v65 + 8) / (8 * v94[8]) * v94[8], v94[8], v84);
                        if (v66)
                        {
                          goto LABEL_83;
                        }

                        if (!(v88 | v64))
                        {
                          sub_10001C18C(v84, 0, 1);
                        }

                        v67 = *(v65 + 16) & 0xFFFFF;
                        if (v67)
                        {
                          v68 = 0;
                          v69 = *(v65 + 20);
                          v70 = *(v53 + 3);
                          v71 = v84;
                          do
                          {
                            v72 = *v71++;
                            v73 = vcnt_s8(v72);
                            v73.i16[0] = vaddlv_u8(v73);
                            v69 -= v73.i32[0];
                            v70 -= v73.u32[0];
                            *(v53 + 3) = v70;
                            v68 += 64;
                          }

                          while (v68 < v67);
                          *(v65 + 20) = v69;
                        }

                        if (!*(v65 + 24))
                        {
                          v74 = sub_1000425C0(a1, v103, a4, &v102[3]);
                          if (v74)
                          {
                            v15 = v74;
                            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_create", 1136, (*(a1 + 384) + 212), v74);
                            goto LABEL_84;
                          }

                          *(v65 + 24) = v102[3];
                        }

                        v66 = sub_100050A5C(v10);
                        ++v64;
                        if (v66)
                        {
LABEL_83:
                          v15 = v66;
                          goto LABEL_84;
                        }
                      }

                      sub_10003D4D4(a1, v89, v94[8], v62, v63);
                      v15 = sub_100050A5C(v10);
                      v52 = v88 + 1;
                      v51 = v81;
                      v50 = v83;
                      v54 = v80;
                      if (!v15)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }

              v75 = v50 & (*(a2 + 48) != 0);
              v91 = 1;
              v50 = 0;
            }

            while ((v75 & 1) != 0);
            v21 = v84;
            if (v15)
            {
              goto LABEL_97;
            }
          }

          v77 = sub_100042948(a1, v103, v10, 0, 1uLL, a4);
          if (v77 || (*(*(a1 + 376) + 65) & 1) != 0 && (v77 = sub_100042948(a1, v103, v10, 0, 1uLL, a4), v77))
          {
            v15 = v77;
          }

          else if (HIDWORD(v100))
          {
            v78 = 0;
            v79 = 0;
            while (1)
            {
              v15 = sub_100042948(a1, v103, v10, *&v101[v78], *&v101[v78 + 8], a4);
              if (v15)
              {
                break;
              }

              ++v79;
              v78 += 16;
              v21 = v84;
              if (v79 >= HIDWORD(v100))
              {
                goto LABEL_97;
              }
            }
          }

          else
          {
            v15 = 0;
          }

LABEL_95:
          v21 = v84;
        }
      }

LABEL_97:
      if (v86)
      {
        sub_1000123F8(v86, v94[8]);
      }

      if (v89)
      {
        sub_1000123F8(v89, v94[8]);
      }

      if (v21)
      {
        sub_1000123F8(v21, v94[8]);
      }
    }

    if (v101)
    {
      sub_1000123F8(v101, 16 * v100);
    }
  }

  else
  {
    v15 = 12;
  }

  v16 = &v103->__sig;
  if (v15 && v103)
  {
    sub_100039E90(&v103->__sig, a4);
LABEL_18:
    *a5 = 0;
    return v15;
  }

  if (!v103)
  {
    goto LABEL_18;
  }

  *a5 = *&v103[1].__opaque[40];
  sub_100037058(v16);
  return v15;
}

uint64_t sub_100042104(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v7 = a3;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (*a2)
  {
    result = (*(*a2 + 8))(**a2, a3, &v23, a5);
    if (result)
    {
      return result;
    }

    if (a5)
    {
      v7 = *a5;
    }
  }

  else
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    v23 = v10;
    if (v11 - v10 < a3)
    {
      return 28;
    }

    if (a5)
    {
      *a5 = a3;
      v10 = *(a2 + 16);
    }

    *(a2 + 16) = v10 + a3;
  }

  v12 = v23;
  *a4 = v23;
  v13 = *(a2 + 28);
  if (v13)
  {
    v14 = *(a2 + 32);
    v15 = v13 - 1;
    v16 = (v14 + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (v12 == v17 + v18)
    {
      result = 0;
      *(v14 + 16 * v15 + 8) = v17 + v7;
      return result;
    }
  }

  v19 = *(a2 + 24);
  if (v13 >= v19)
  {
    v21 = sub_100012434(16 * (v19 + 64), 0x1000040451B5BE8uLL);
    if (!v21)
    {
      return 12;
    }

    v20 = v21;
    memcpy(v21, *(a2 + 32), 16 * *(a2 + 24));
    bzero(&v20[16 * *(a2 + 24)], 0x400uLL);
    sub_1000123F8(*(a2 + 32), 16 * *(a2 + 24));
    *(a2 + 32) = v20;
    v13 = *(a2 + 28);
    *(a2 + 24) += 64;
    v12 = v23;
  }

  else
  {
    v20 = *(a2 + 32);
  }

  result = 0;
  v22 = &v20[16 * v13];
  *v22 = v12;
  v22[1] = v7;
  *(a2 + 28) = v13 + 1;
  return result;
}

uint64_t sub_10004227C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return sub_1000033FC(a1);
  }

  else
  {
    if (*(v5 + 322) == v6)
    {
      *(v5 + 322) = -1;
    }

    v10 = *(a2 + 888);
    *(v5 + 320) = *(v10 + 2 * v6);
    *(v10 + 2 * v6) = -1;
    sub_10003D180(a2, a3, 0);
    *a5 = v6;

    return sub_100042DE8(a1, v5, v6, a4);
  }
}

uint64_t sub_100042380(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_1000425C0(a1, a2, a6, &v17);
  v14 = v13;
  if (v13)
  {
    sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cab", 769, (a1[48] + 212), v13);
  }

  else
  {
    v15 = v17;
    *(*(a2 + 8 * a3 + 896) + 8 * a4) = v17;
    bzero(a5, *(v12 + 32));
    *(a5 + 24) = 1073741830;
    *(a5 + 8) = v15;
    *(a5 + 16) = a6;
    *(a5 + 32) = a4;
  }

  return v14;
}

uint64_t sub_100042454(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t *a7)
{
  v13 = *(a2 + 376);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_1000425C0(a1, a2, a6, &v27);
  v15 = v14;
  if (v14)
  {
    sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cib", 801, (a1[48] + 212), v14);
    return v15;
  }

  v16 = v27;
  *a7 = v27;
  bzero(a5, v13[8]);
  *(a5 + 24) = 1073741831;
  *(a5 + 8) = v16;
  *(a5 + 16) = a6;
  *(a5 + 32) = a4;
  v17 = &v13[12 * a3];
  if (v17[16] - 1 != a4)
  {
    LODWORD(v18) = v13[10];
LABEL_7:
    *(a5 + 36) = v18;
    if (!v18)
    {
      return v15;
    }

    goto LABEL_8;
  }

  v18 = v13[10];
  v19 = *(v17 + 7) % v18;
  if (!v19)
  {
    goto LABEL_7;
  }

  *(a5 + 36) = v19;
  LODWORD(v18) = v19;
LABEL_8:
  v20 = v13[9];
  v21 = v13[10] * a4;
  v18 = v18;
  v22 = v21 * v20;
  v23 = ~v21 + *(v17 + 7);
  v24 = (a5 + 64);
  do
  {
    *(v24 - 3) = a6;
    *(v24 - 2) = v22;
    LODWORD(v25) = v20;
    if (!v23)
    {
      v25 = *(v17 + 6) % v20;
      if (!v25)
      {
        LODWORD(v25) = v20;
      }
    }

    *(v24 - 2) = v25;
    *(v24 - 1) = v25 & 0xFFFFF;
    *v24 = 0;
    v24 += 4;
    v22 += v20;
    --v23;
    --v18;
  }

  while (v18);
  return v15;
}

uint64_t sub_1000425C0(uint64_t *a1, pthread_mutex_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v43 = 0;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10004D1DC(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v34 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v37 = v5;
  v38 = v6;
  v35 = v8;
  v36 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v42 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_34:
      if (sub_10004350C(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      sub_100012178("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (v6[48] + 212));
      v31 = 28;
      goto LABEL_38;
    }

    v13 = v11 / v9;
    v40 = v10;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v35;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = v7;
    v17 = sub_100042DE8(v6, v7, v15, &v44);
    if (v17 || (v17 = sub_10003A1E8(v6[49], 1073741825, v44, &xmmword_10006A960, 0, 0, 0, a3, &v46), v17))
    {
      v31 = v17;
      pthread_mutex_unlock(v5 + 7);
      return v31;
    }

    v18 = v11;
    v19 = v11 % v9;
    v20 = *(v46 + 56);
    if (sub_10001C25C(0, v20, v19, v14 - v19, &v45))
    {
      break;
    }

    v26 = v9 - v19 + v18;
    v7 = v16;
    if (v26 >= (*(v16 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 = v26;
    }

    v5 = v37;
    v6 = v38;
LABEL_32:
    sub_100037058(v46);
    v10 = v40 + 1;
    if (v42)
    {
      v31 = 0;
LABEL_38:
      pthread_mutex_unlock(v5 + 7);
      *v34 = v42;
      return v31;
    }
  }

  v21 = v45;
  v22 = v45 + v13 * v9;
  v23 = *(v16 + 152);
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v22)
  {
    v31 = 22;
    goto LABEL_42;
  }

  v24 = v18;
  v7 = v16;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = *(v16 + 176) + v22;
    v42 = v25;
LABEL_24:
    sub_10001C098(v20, v21, 1, v25);
    v5 = v37;
    v28 = a3;
    if (*(*&v37[13].__opaque[32] + 8 * v13) != a3)
    {
      v41 = 0;
      v29 = sub_10004227C(v38, v37, a3, &v43, &v41);
      if (v29 || (v29 = sub_10004C4C8(v38, v37, v15, a3), v29))
      {
        v31 = v29;
        v32 = v37 + 7;
        goto LABEL_43;
      }

      v44 = v43;
      *(*&v37[13].__opaque[40] + 2 * v13) = v41;
      *(*&v37[13].__opaque[32] + 8 * v13) = a3;
      v7 = v16;
      v28 = a3;
    }

    v6 = v38;
    sub_10003D180(v46, v28, v44);
    v30 = v24 - v19 + v45;
    if (v30 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v30 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v37[14].__opaque[8] = v11;
    v9 = v36;
    goto LABEL_32;
  }

  v27 = sub_100010BAC(v38, *(v16 + 176), v22, &v42, 0);
  if (!v27)
  {
    v21 = v45;
    v7 = v16;
    goto LABEL_24;
  }

  v31 = v27;
LABEL_42:
  v32 = v37 + 7;
LABEL_43:
  pthread_mutex_unlock(v32);
  sub_100037058(v46);
  return v31;
}

uint64_t sub_100042948(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  v8 = v7 > a4;
  v9 = v7 - a4;
  if (!v8 || v9 < a5)
  {
    return 22;
  }

  v12 = a5;
  v13 = a4;
  if (*(v6 + 68))
  {
    v16 = sub_100012434(*(v6 + 32), 0xBBCB36uLL);
    if (!v16)
    {
      return 12;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100012434(*(v6 + 32), 0x40CDA009uLL);
  if (!v17)
  {
    return 12;
  }

  v18 = v17;
  v19 = sub_100012434(*(v6 + 32), 0xFCE2FE6EuLL);
  if (!v19)
  {
    v11 = 12;
    v20 = v18;
    goto LABEL_51;
  }

  v20 = v19;
  v45 = v16;
  if (v12 < 1)
  {
    v11 = 0;
    goto LABEL_48;
  }

  v49 = v18 + 10;
  v46 = -1;
  v44 = v18;
  while (1)
  {
    v21 = v13 / *(v6 + 36);
    v22 = v21 / *(v6 + 40);
    if (*(v6 + 68))
    {
      break;
    }

LABEL_20:
    v28 = sub_100050964(a3);
    if (v28 || (v28 = sub_100003490(v18, *(v6 + 32), v29, v30), v28))
    {
      v42 = v28;
      sub_100012178("%s:%d: %s failed to read cib %d: %d\n", "spaceman_allocated", 1280, (a1[48] + 212), v22, v28);
      v11 = v42;
      goto LABEL_48;
    }

    if (v12 < 1)
    {
LABEL_36:
      v35 = 0;
    }

    else
    {
      v33 = v21 % *(v6 + 40);
      while (v33 < v18[9])
      {
        v34 = &v49[8 * v33];
        if (*(v34 + 3))
        {
          v35 = 1;
          if (sub_100050964(a3))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v50 = 0xAAAAAAAAAAAAAAAALL;
          v36 = sub_1000425C0(a1, a2, a6, &v50);
          if (v36)
          {
            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_allocated", 1291, (a1[48] + 212), v36);
            break;
          }

          *(v34 + 3) = v50;
          bzero(v20, *(v6 + 32));
        }

        v37 = *(v6 + 36);
        v38 = v13 % v37;
        v39 = v37 - (v13 % v37);
        if (v12 >= v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = v12;
        }

        sub_10001C098(v20, v38, v40, v39);
        sub_10004C308(a2, v20, v13 / *(v6 + 36));
        v34[5] -= v40;
        *(v6 + 72) -= v40;
        if (sub_100050A5C(a3))
        {
          v35 = 1;
          goto LABEL_40;
        }

        ++v33;
        v13 += v40;
        v8 = v12 <= v40;
        v12 -= v40;
        if (v8)
        {
          goto LABEL_36;
        }
      }

      v35 = 1;
    }

LABEL_40:
    sub_10003D4D4(a1, v18, *(v6 + 32), v31, v32);
    v41 = sub_100050A5C(a3);
    v11 = v41;
    if (!v35 || v41)
    {
      goto LABEL_48;
    }
  }

  v23 = v22 / *(v6 + 44);
  v24 = v46;
  if (v23 == v46)
  {
LABEL_19:
    v46 = v24;
    goto LABEL_20;
  }

  v25 = sub_100050964(a3);
  if (!v25)
  {
    v25 = sub_100003490(v45, *(v6 + 32), v26, v27);
    if (!v25)
    {
      v24 = v23;
      v18 = v44;
      goto LABEL_19;
    }
  }

  v11 = v25;
  v18 = v44;
  sub_100012178("%s:%d: %s failed to read cab %d: %d\n", "spaceman_allocated", 1264, (a1[48] + 212), v23, v25);
LABEL_48:
  if (v45)
  {
    sub_1000123F8(v45, *(v6 + 32));
  }

  sub_1000123F8(v18, *(v6 + 32));
LABEL_51:
  sub_1000123F8(v20, *(v6 + 32));
  return v11;
}

uint64_t sub_100042D38(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_100003530(a1[47], *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return sub_100010C80(a1, a3, a4, 0);
  }

  return result;
}

uint64_t sub_100042DAC(void *a1, uint64_t a2)
{
  v3 = a2;
  if (!a2 && !sub_100042E24(a1, &v3))
  {
    sub_100037058(v3);
  }

  return 0;
}

uint64_t sub_100042DE8(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return sub_100010BAC(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t sub_100042E24(void *a1, uint64_t *a2)
{
  v3 = a1[51];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = sub_10003A1E8(a1[49], 0x80000000uLL, *(a1[47] + 152), &xmmword_10006A930, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[51] = *a2;
LABEL_2:
    sub_10003C894(v3);
    return 0;
  }

  return result;
}

uint64_t sub_100042EA8(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v10 = a2;
  v11 = a1;
  if (sub_100036630(a1) == 13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *(v12 + 392);
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_100042E24(v11, &v24);
  if (v13)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
LABEL_10:
      *a4 = 0;
    }
  }

  else
  {
    v15 = *&v24[5].__opaque[48];
    pthread_mutex_lock(v24 + 9);
    if (v12)
    {
      v16 = v24;
      v17 = *(v12 + 376);
      v19 = *(v17 + 72);
      v18 = *(v17 + 80);
      v20 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      if (v18 >= v20)
      {
        v21 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      }

      else
      {
        v21 = v18;
      }

      if (v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = *(v15 + 96) + *(v15 + 48);
      v16 = v24;
    }

    v23 = sub_100042FE4(v16, v12, v10, a6);
    pthread_mutex_unlock(v24 + 9);
    sub_100037058(v24);
    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v23;
    }

    a4 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  return v13;
}

unint64_t sub_100042FE4(void *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    sub_100042DAC(0, a1);
    v8 = a1[47];
  }

  if (a2)
  {
    v9 = *(a2 + 408);
    v10 = *(a2 + 376);
    v12 = v10[10];
    v11 = v10[11];
    v13 = v10[9];
    v14 = v12 - (v11 + v9);
    if (v12 < v11 + v9)
    {
      v14 = 0;
    }

    if (v13 - v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 - v11;
    }

    if (v12 <= v11 + v9)
    {
      v16 = v13 - v11;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 >= v9;
    v18 = v16 - v9;
    if (!v17)
    {
      v18 = 0;
    }

    if (v13 <= v11)
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  v19 = v8[30] + v8[9] + a1[123] + v8[15] + v8[35] + a1[124];
  v21 = v8[23];
  v20 = v8[24];
  v17 = v21 >= v20;
  v22 = v21 - v20;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a1[105] + a1[104];
  v25 = a1[108];
  v17 = v24 >= v25;
  v26 = v24 - v25;
  if (!v17)
  {
    v26 = 0;
  }

  v27 = v26 + v23;
  v17 = v19 >= v27;
  v28 = v19 - v27;
  if (!v17)
  {
    v28 = 0;
  }

  if (!a1[202])
  {
    v41 = v28 + v18;
    if (!a2)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v29 = a1[204];
  v17 = v26 >= v29;
  v30 = v26 - v29;
  if (!v17)
  {
    v30 = 0;
  }

  v31 = a1[203];
  v32 = a1[205];
  v17 = v31 >= v32;
  v33 = v31 - v32;
  if (!v17)
  {
    v33 = 0;
  }

  v17 = v33 >= v29;
  v34 = v33 - v29;
  if (!v17)
  {
    v34 = 0;
  }

  v35 = a1[206];
  v36 = a1[207];
  v17 = v35 >= v36;
  v37 = v35 - v36;
  if (!v17)
  {
    v37 = 0;
  }

  v17 = v37 >= v30;
  v38 = v37 - v30;
  if (!v17)
  {
    v38 = 0;
  }

  v39 = v38 + v34;
  v17 = v28 >= v39;
  v40 = v28 - v39;
  if (!v17)
  {
    v40 = 0;
  }

  v41 = v38 + v18 + v40;
  if (a2)
  {
LABEL_39:
    if (v41 < v14)
    {
      v14 = v41;
    }

    if (*(*(a2 + 376) + 80))
    {
      v41 = v14;
    }
  }

LABEL_43:
  v42 = v7[9] - v24 + v7[15];
  if (a4)
  {
    *a4 = v42 < v41;
  }

  if (v42 >= v41)
  {
    return v41;
  }

  else
  {
    return v42;
  }
}

uint64_t sub_100043184(void *a1, int64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5, unint64_t *a6, unint64_t *a7, BOOL *a8, void *a9, unint64_t *a10, BOOL *a11)
{
  v17 = a1;
  if (sub_100036630(a1) == 13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v17 = *(v18 + 392);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    return 22;
  }

  v19 = sub_100042E24(v17, &v31);
  if (!v19)
  {
    pthread_mutex_lock(v31 + 9);
    v20 = sub_100042FE4(v31, v18, 0, a8);
    add_explicit = atomic_fetch_add_explicit(a5, a2, memory_order_relaxed);
    v22 = a3 + a2 + add_explicit;
    v23 = v22 > v20;
    v24 = v22 - v20;
    if (v23)
    {
      atomic_fetch_add_explicit(a5, -a2, memory_order_relaxed);
      v25 = v24 <= add_explicit;
      v19 = 28;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
    }

    *a6 = v24;
    *a11 = v25;
    *a7 = v20;
    v26 = v31;
    v27 = *&v31[5].__opaque[48];
    *a9 = v27[35] + v27[30];
    v28 = v27[32];
    *a10 = v28;
    v29 = v27[37];
    if (v29)
    {
      if (v28 >= v29)
      {
        v28 = v29;
      }

      *a10 = v28;
    }

    pthread_mutex_unlock(v26 + 9);
    sub_100037058(v31);
  }

  return v19;
}

uint64_t sub_1000432DC(void *a1, void *a2, unint64_t a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v6;
  v11[3] = v6;
  v11[0] = v6;
  v11[1] = v6;
  if (sub_100042E24(a1, &v12))
  {
    return 0;
  }

  v8 = *&v12[5].__opaque[48];
  sub_100043414(a1, v11, 0, 0);
  pthread_mutex_lock(v12 + 7);
  sub_10004350C(a1, v12, 0, 1, v11, a3);
  pthread_mutex_unlock(v12 + 7);
  pthread_mutex_lock(v12 + 8);
  v9 = sub_10004350C(a1, v12, 2, 1, v11, a3);
  v7 = sub_10004350C(a1, v12, 1, 1, v11, a3) + v9;
  *a2 = *(v8 + 240) + *(v8 + 280);
  pthread_mutex_unlock(v12 + 8);
  sub_100043D24(a1, v11);
  sub_100037058(v12);
  return v7;
}

uint64_t sub_100043414(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = sub_100050A98(*(result + 384));
    if (result)
    {
      if (!a4)
      {
        return result;
      }
    }

    else if ((a4 & 1) == 0)
    {
      return result;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    tv_nsec = __tp.tv_nsec;
    *a2 = __tp.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v9 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 16) = v9;
    *(a2 + 24) = v9;
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = 30;
    }

    *(a2 + 60) = v10;
    *(a2 + 62) = 1;
    *(a2 + 63) = a4 & 1;
  }

  return result;
}

uint64_t sub_10004350C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v66 = 0;
  memset(v65, 170, sizeof(v65));
  v53 = v7;
  v52 = *(v7 + 36);
  v62 = a3;
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v51 = (a2 + 1542);
  if (a3)
  {
    v9 = (a2 + 1540);
  }

  else
  {
    v9 = (a2 + 1542);
  }

  if (a3)
  {
    v10 = 1560;
  }

  else
  {
    v10 = 1552;
  }

  if (a3)
  {
    v11 = 1568;
  }

  else
  {
    v11 = 1569;
  }

  v12 = *(a2 + v8);
  if (*(a2 + v8))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (a2 + 512);
    v58 = (a2 + 448);
    do
    {
      if ((a4 & 2) == 0)
      {
        v13 = 16;
      }

      v17 = *(a2 + v10);
      *(a2 + v11) = 1;
      if (v62)
      {
        pthread_mutex_unlock(v16);
        v18 = v16;
      }

      else
      {
        v18 = v58;
        pthread_mutex_unlock(v58);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_10006A7A0;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = v62;
  if (!sub_10004464C(a1, a2, v62, 0, 0, &v66) && v66)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v64 = 8;
    v20 = sub_100025198(v66, 0, v65, &__rqtp, &v65[2], &v64);
    v21 = v65[0];
    if (v62 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    if (v20)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        sub_10004C6B4(a1, a2, v19, v6, a6);
      }

      else
      {
        sub_10005090C(*(a1 + 384));
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10004C3F0(a1, v6);
      }

      sub_100037058(v66);
      return v14;
    }

    v23 = 0;
    v54 = v53 + 40 * v62;
    v59 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && sub_10003BC6C(a2, 0, a6))
      {
        goto LABEL_29;
      }

      if (v64)
      {
        v24 = v65[2];
      }

      else
      {
        v65[2] = 1;
        v24 = 1;
      }

      v25 = v65[0];
      if (v65[0] <= a6)
      {
        if (v65[0] > v21)
        {
          *(v54 + 216) = v65[0];
          if ((a4 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(a1 + 632) == 1)
        {
          v26 = *(a1 + 376);
          if (v25 >= *(v26 + 1408))
          {
            if (*(a2 + 928 + 8 * v19) < a6)
            {
              *(a2 + 928 + 8 * v19) = a6;
              sub_1000120D8("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v19, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v59 && v25 != a6)
          {
            sub_10004DADC(a1, 208);
            --v59;
            v25 = v65[0];
            v27 = *(a2 + 920);
          }

          if (v25 > v27)
          {
            goto LABEL_29;
          }
        }

        if (v19)
        {
          if (sub_100044158(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = sub_100042D38(a1, a2, v65[1], v65[2]);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_10004C570(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (sub_100011490(a1))
            {
              sub_100012178("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), v62, v65[1], v24, v29);
            }

            goto LABEL_80;
          }

          if (v24 >= (4 * v52))
          {
            v24 = (4 * v52);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (v62 - 1)) += v24;
          sub_10004C570(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
          v30 = v65[1];
          v31 = *(a2 + 1544);
          if (v31)
          {
            v32 = *(a2 + 1540);
            *(a2 + 1540) = v32 + 1;
            v33 = *(a2 + 1560) + v24;
            *(a2 + 1560) = v33;
            v34 = *(*(a2 + 376) + 36);
            v35 = v31 + 16 * v32;
            *(v35 + 256) = v30;
            *(v35 + 264) = v24;
            if (v32 > 0xEE || v33 >= (4 * v34))
            {
              sub_10004C6B4(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          sub_100050900(*(a1 + 384));
          sub_10004CA58(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          sub_10004C570(a1, a2, 0, v24);
          v29 = sub_10004C630(a1, a2, v65[1], v24, 0);
          if (v29)
          {
            goto LABEL_59;
          }

          v36 = v65[1];
          v37 = *(a2 + 1544);
          if (v37)
          {
            v38 = *(a2 + 1542);
            *(a2 + 1542) = v38 + 1;
            *(a2 + 1552) += v24;
            v39 = (v37 + 16 * v38);
            *v39 = v36;
            v39[1] = v24;
            if ((v38 + 1) >= 0x10u)
            {
              v40 = v21;
              pthread_mutex_unlock((a2 + 448));
              v41 = *v51;
              sub_10004C3F0(a1, v6);
              if (v41)
              {
                v42 = 0;
                v43 = 16 * v41;
                do
                {
                  sub_100050900(*(a1 + 384));
                  v42 += 16;
                }

                while (v43 != v42);
                sub_10005090C(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v44 = 0;
                do
                {
                  sub_10004C818(a1, a2, *(*(a2 + 1544) + v44), *(*(a2 + 1544) + v44 + 8), a6);
                  v44 += 16;
                }

                while (v43 != v44);
              }

              else
              {
                sub_10005090C(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v19 = v62;
              v21 = v40;
            }

            goto LABEL_80;
          }

          sub_100050900(*(a1 + 384));
          sub_10004C818(a1, a2, v36, v24, a6);
        }

        sub_10004C3F0(a1, v6);
      }

      else
      {
        sub_100012178("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v65[0], v65[1], v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          sub_10004C570(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_10004C570(a1, a2, 0, v24);
        }
      }

LABEL_80:
      if (v6 && *(v6 + 62) == 1)
      {
        v45.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v45.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v45);
      }

      v46 = sub_1000250D4(v66, 0, 0, 0, 0, 0, a6);
      if (v46)
      {
        sub_100012178("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), v62, v65[1], v65[2], v46);
      }

      v47 = v65[2] - v24;
      if (v65[2] != v24)
      {
        v65[1] += v24;
        v65[2] -= v24;
        v64 = 8 * (v47 != 1);
        v48 = sub_10001D908(v66, 0, v65, 16, &v65[2], v64, a6);
        if (v48)
        {
          sub_100012178("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), v62, v65[1], v65[2], v48);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v64 = 8;
      v49 = sub_100025198(v66, 0, v65, &__rqtp, &v65[2], &v64);
      v23 = 1;
      if (v49)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  if (v6 && *(v6 + 62) == 1)
  {
    v22 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v22;
  }

  return v14;
}

uint64_t sub_100043D24(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
  tv_sec = v8.tv_sec;
  tv_nsec = v8.tv_nsec;
  *a2 = v8.tv_sec;
  tv_nsec /= 1000;
  *(a2 + 8) = tv_nsec;
  *(a2 + 32) = 1000000 * tv_sec + tv_nsec;
  *(a2 + 62) = 0;
  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  atomic_fetch_add_explicit((*(a1 + 384) + 152), -v6, memory_order_relaxed);
  return 1;
}

void sub_100043DE4(uint64_t *a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!sub_100042E24(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_100043414(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (sub_100044158(a1, v13, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v7 = v13;
      if (v5 - v6[27] <= LOWORD(v13[24].__sig))
      {
        break;
      }

      if (!sub_10004350C(a1, v13, 0, 0, &v10, v5))
      {
        v7 = v13;
        break;
      }
    }

    pthread_mutex_unlock(v7 + 7);
    pthread_mutex_lock(v13 + 8);
    v8 = v13;
    if (v6[30] > *&v13[23].__opaque[40])
    {
      while (1)
      {
        v8 = v13;
        if (v6[30] <= *&v13[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_10004350C(a1, v13, 1, 1, &v10, v5))
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v6[35] > *&v8[23].__opaque[48])
    {
        ;
      }
    }

    if (v6[30] > v6[9])
    {
        ;
      }
    }

    if (v6[35] > v6[15])
    {
        ;
      }
    }

    if (sub_100044158(a1, v13, 1, 0))
    {
        ;
      }
    }

    if (sub_100044158(a1, v13, 2, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v9 = v6[37];
    }

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_10004350C(a1, v13, 2, 0, &v10, v5));
    sub_100043D24(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    sub_100037058(v13);
  }
}

BOOL sub_100044158(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!sub_10004464C(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = sub_100046750(a2, v5, v9, v4);
    sub_100037058(v9);
  }

  return v7;
}

BOOL sub_1000441D8(uint64_t *a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100042E24(a1, &v14))
  {
    return 0;
  }

  v3 = *&v14[5].__opaque[48];
  pthread_mutex_lock(v14 + 9);
  v4 = v3[9];
  v5 = *&v14[23].__opaque[40] >> (v4 - v14[13].__sig < v3[6] >> 5);
  v6 = v3[30];
  v7 = v3[15];
  v8 = *&v14[23].__opaque[48] >> (v7 - *v14[13].__opaque < v3[12] >> 5);
  v9 = v3[35];
  pthread_mutex_unlock(v14 + 9);
  v12 = v9 > v7 || v9 > v8 || v6 > v4 || v6 > v5;
  if (v12 || sub_100044158(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!sub_100044158(a1, v14, 1, 0))
    {
      v2 = sub_100044158(a1, v14, 2, 0);
    }
  }

  sub_100037058(v14);
  return v2;
}

uint64_t sub_10004430C(void *a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100042E24(a1, &v5);
  if (!result)
  {
    v4 = v5;
    *(v5 + 920) = a2;
    return sub_100037058(v4);
  }

  return result;
}

uint64_t sub_100044354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = sub_10004464C(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10004464C(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10004464C(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = sub_10003D294(a3);
    v11 = v15;
    if (v15 || (v12 = v24) == 0)
    {
      if (v15 || (v13 = v25) == 0)
      {
        if (!v15)
        {
          v14 = v23;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_32;
    }

    v16 = *(v24[49] + 32);
    if (v16 <= v8[112])
    {
      v17 = 0;
    }

    else if (*(a3 + 976))
    {
      v17 = 1;
    }

    else
    {
      sub_100012178("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (a1[48] + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = sub_10003D308(a3);
    v11 = v10;
    if (v10 || (v12 = v24) == 0)
    {
      if (v10 || (v13 = v25) == 0)
      {
        if (v10)
        {
          goto LABEL_50;
        }

        v14 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v12 = v24;
  if (v24)
  {
LABEL_28:
    v11 = sub_100027D0C(a1, a2, v12, a4);
    goto LABEL_29;
  }

  v11 = 0;
LABEL_29:
  if (!v11)
  {
    v13 = v25;
    if (v25)
    {
      if (a4 != 1)
      {
LABEL_38:
        v11 = sub_100027D0C(a1, a2, v13, a4);
        goto LABEL_39;
      }

LABEL_32:
      v18 = *(v13[49] + 32);
      if (v18 <= v8[132])
      {
        v19 = 0;
      }

      else if (*(a3 + 977))
      {
        v19 = 1;
      }

      else
      {
        sub_100012178("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (a1[48] + 212), v18, v8[132], *(a2 + 16));
        v19 = 1;
        v13 = v25;
      }

      *(a3 + 977) = v19;
      goto LABEL_38;
    }
  }

LABEL_39:
  if (!v11)
  {
    v14 = v23;
    if (v23)
    {
      if (a4 != 1)
      {
LABEL_48:
        v9 = sub_100027D0C(a1, a2, v14, a4);
LABEL_49:
        v11 = v9;
        goto LABEL_50;
      }

LABEL_42:
      v20 = *(v14[49] + 32);
      if (v20 <= v8[152])
      {
        v21 = 0;
      }

      else if (*(a3 + 978))
      {
        v21 = 1;
      }

      else
      {
        sub_100012178("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (a1[48] + 212), v20, v8[152], *(a2 + 16));
        v21 = 1;
        v14 = v23;
      }

      *(a3 + 978) = v21;
      goto LABEL_48;
    }
  }

LABEL_50:
  if (v24)
  {
    sub_100037058(v24);
  }

  if (v25)
  {
    sub_100037058(v25);
  }

  if (v23)
  {
    sub_100037058(v23);
  }

  return v11;
}

uint64_t sub_10004464C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (a3 > 2)
  {
    return 22;
  }

  v10 = *(a2 + 376);
  v11 = a2 + 952;
  v12 = *(a2 + 952 + 8 * a3);
  *a6 = v12;
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = a3;
  v14 = v10 + 40 * a3;
  v17 = *(v14 + 208);
  v16 = (v14 + 208);
  v15 = v17;
  if (v17)
  {
    result = sub_100026FF8(a1, 0x80000000, v15, 0, 0, 0, 9, sub_100046494, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      *(v11 + 8 * v13) = *a6;
LABEL_4:
      sub_10003C894(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = sub_10003BC6C(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = sub_100026C78(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, sub_100046494, a4, a6);
  if (!result)
  {
    *v16 = sub_100038018(*a6);
    sub_10003D180(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100044798(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v8 = a1;
  memset(v234, 0, 64);
  v233 = 0;
  v232 = 0;
  memset(v238, 0, 128);
  v231 = 0xAAAAAAAAAAAAAAAALL;
  v230 = 0xAAAAAAAAAAAAAAAALL;
  v219 = 0;
  pthread_mutex_lock((a1 + 864));
  if ((a2 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v229 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v10;
  v221 = v10;
  v222 = v10;
  v223 = v10;
  v224 = v10;
  v225 = v10;
  v226 = v10;
  v227 = v10;
  v228 = 0xAAAAAAAAAAAAAAAALL;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v9 = sub_100042E24(v8, &v229);
  if (v9)
  {
    goto LABEL_360;
  }

  v11 = *&v229[5].__opaque[48];
  v183 = a2 & 0x30;
  if ((a2 & 0x40) != 0)
  {
    v12 = 4;
  }

  else if ((a2 & 0x20) != 0)
  {
    v12 = 8;
  }

  else if (a4 == sub_100045EA0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11[10];
  }

  v13 = sub_100012434(16 * v11[10], 0x1000040F7F8B94BuLL);
  v14 = sub_100012434(8 * v11[10], 0x100004000313F17uLL);
  v15 = v14;
  v9 = 12;
  if (!v13 || !v14)
  {
    goto LABEL_355;
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_lock(v229 + 6);
  }

  __base = v13;
  if (a3)
  {
    if ((a2 & 0x6C) != 0x40)
    {
      v9 = 22;
      goto LABEL_344;
    }

    v214 = 0;
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v214 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v214 = (a2 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v169 = v16;
  v9 = 0;
  v172 = 0;
  v179 = 0;
  v17 = 0;
  if ((a2 & 0x20) != 0)
  {
    v18 = &v219;
  }

  else
  {
    v18 = 0;
  }

  v173 = v18;
  v174 = v11 + 12;
  v186 = a2 & 0xFE;
  v176 = v13 + 8;
  v184 = v13 - 16;
  v202 = a2;
  v210 = a4;
  v201 = v15;
  v187 = v8;
  v196 = v11;
  while (1)
  {
    if (a2)
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      LODWORD(v228) = sub_100030B28(v229, v214);
    }

    v219 = a3;
    v175 = sub_10002C494(*&v229[24].__opaque[8 * v214 + 32], v173);
    v19 = v219;
    v20 = v11[9];
    if ((a2 & 0x40) == 0)
    {
      v19 = v219 / v20 * v20;
      v219 = v19;
    }

    v170 = v19;
    v21 = &v174[12 * v214];
    v177 = -1;
    v22 = v19 / v20 / v11[10];
    v23 = v17;
    v180 = v21;
LABEL_33:
    v178 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if (a2)
    {
      if (v228)
      {
        qsort(&v220, 8uLL, 0x10uLL, sub_100046114);
        if (v228)
        {
          if (DWORD2(v227))
          {
            v151 = v23;
            v152 = 6;
            v154 = &v227;
            v153 = &v227 + 2;
            while (1)
            {
              LOBYTE(v237) = 0;
              v155 = sub_100030B84(v229, v214, *v154, &v237);
              if (v155)
              {
                sub_100012178("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v154, *v153, v155);
              }

              v156 = v228;
              if (v237 == 1)
              {
                v156 = v228 - 1;
                LODWORD(v228) = v228 - 1;
              }

              v9 = 0;
              a4 = v210;
              v23 = v151;
              if (!v156 || v152 == -1)
              {
                break;
              }

              v154 = (&v220 + v152);
              v153 = (v154 | 8);
              --v152;
              if (!*(v154 + 8))
              {
                v9 = 0;
                a4 = v210;
                v23 = v151;
                break;
              }
            }
          }
        }
      }
    }

    if (v175)
    {
      if (v170)
      {
        v157 = 0;
        v158 = v214;
      }

      else
      {
        v158 = v214;
        v157 = v178 == v174[12 * v214 + 4];
      }

      sub_10002C540(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
    }

    v17 = v23;
    a3 = 0;
    if (++v214 == v169)
    {
      v161 = 0;
      goto LABEL_335;
    }
  }

  v182 = v12;
  v24 = v219;
  v25 = v11[9];
  v26 = v11[10];
  if (!v183)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      sub_1000120D8("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, v180[4]);
      pthread_mutex_unlock((v8 + 864));
      v160 = 0;
      v161 = 0;
      v9 = 16;
      v11 = v196;
      a4 = v210;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  v215 = v26;
  v217 = v25;
  pthread_mutex_lock(&v229[v214 + 10]);
  v27 = v180[5];
  v185 = v22;
  if (v27)
  {
    v212 = v24;
    v28 = v9;
    v29 = v22 / v196[11];
    if (v29 == v177 && v23)
    {
      sub_10003BBDC(v233, 1);
      v29 = v177;
    }

    else
    {
      v31 = *(*(&v229[14].__sig + v214) + 8 * v29);
      if (v233)
      {
        sub_100037058(v233);
        v233 = 0;
      }

      v230 = v196;
      v231 = __PAIR64__(v29, v214);
      v32 = sub_10003A1E8(*(v8 + 392), 0x140000004, v31, &xmmword_10006A940, &v230, 0, 0, 0, &v233);
      if (v32)
      {
        v168 = v32;
        sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v29, v31, v32);
        v161 = 0;
        if (v175)
        {
          LOBYTE(v160) = 1;
          v11 = v196;
          a4 = v210;
          v9 = v168;
          goto LABEL_330;
        }

        v11 = v196;
        a4 = v210;
        v9 = v168;
        goto LABEL_333;
      }

      v28 = 0;
      v23 = *(v233 + 56);
      v177 = v29;
    }

    pthread_mutex_unlock(&v229[v214 + 10]);
    v30 = (v23 + 8 * (v22 - v196[11] * v29) + 40);
    v179 = 1;
    v9 = v28;
    v24 = v212;
  }

  else
  {
    v30 = (*(&v229[14].__sig + v214) + 8 * v22);
  }

  if (v232)
  {
    sub_10003BBDC(v232, 1);
  }

  else
  {
    v33 = v23;
    v34 = *v30;
    v230 = v196;
    v231 = __PAIR64__(v22, v214);
    v35 = sub_10003A1E8(*(v8 + 392), 0x140000004, v34, &xmmword_10006A950, &v230, 0, 0, 0, &v232);
    if (v35)
    {
      v167 = v35;
      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v22, v34, v35);
      v161 = 0;
      v9 = v167;
      LOBYTE(a2) = v202;
      v11 = v196;
      a4 = v210;
      v15 = v201;
      v160 = v27 == 0;
      goto LABEL_329;
    }

    LOBYTE(a2) = v202;
    v15 = v201;
    v23 = v33;
    v9 = 0;
  }

  v36 = *(v232 + 56);
  if (v210 == sub_100045EA0)
  {
    sub_100043414(v8, v234, 125, 0);
    if (v27)
    {
      goto LABEL_53;
    }
  }

  else if (v27)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v229[v214 + 10]);
LABEL_53:
  if (v233)
  {
    sub_10003C190(v233, 1);
    v179 = 0;
  }

  v37 = v24 / v217 - v215 * v22;
  v38 = v24 % v217;
  v11 = v196;
  bzero(v15, 8 * v196[10]);
  LODWORD(v39) = *(v36 + 36) - v37;
  v12 = v182;
  if (v182 >= v39)
  {
    v39 = v39;
  }

  else
  {
    v39 = v182;
  }

  __nel = v39;
  v188 = v37;
  if (v39)
  {
    v40 = 0;
    v41 = v196[9];
    v42 = v176;
    do
    {
      *(v42 - 2) = v37;
      *v42 = *(v36 + 40 + 32 * v37 + 24);
      v42 += 2;
      if (v40)
      {
        v43 = 0;
      }

      else
      {
        v43 = v38;
      }

      v219 += v41 - v43;
      ++v40;
      LODWORD(v37) = v37 + 1;
    }

    while (v40 < __nel);
    if ((a2 & 0x40) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((a2 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  qsort(__base, __nel, 0x10uLL, sub_10004603C);
LABEL_66:
  v181 = v36;
  v44 = __nel;
  if (!__nel)
  {
    v204 = 0;
    a4 = v210;
LABEL_230:
    v22 = v178;
    goto LABEL_283;
  }

  v171 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v176;
  v193 = v37;
  do
  {
    v48 = v45;
    v49 = *v47;
    if (*v47)
    {
      v50 = sub_10003A1E8(*(v8 + 392), 0x140000080, v49, &xmmword_10006A960, 0, 0, 0, 0, &v238[v46]);
      v44 = __nel;
      if (v50)
      {
        v51 = v50;
        if (v50 != 45 && v50 != 16)
        {
          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v178, *(v47 - 2), v49, v50);
          v160 = 0;
          v161 = 1;
          v9 = v51;
          LOBYTE(a2) = v202;
          goto LABEL_328;
        }

        v238[v46] = 0;
      }

      ++v46;
      LOBYTE(a2) = v202;
      v15 = v201;
      if (v46 == 16)
      {
        break;
      }
    }

    v45 = v48 + 1;
    v47 += 2;
  }

  while (v48 + 1 < v44);
  v53 = 0;
  v204 = 0;
  v194 = v48 + 1;
  v54 = 0;
  v200 = v181 + 40;
  v55 = v196;
  while (1)
  {
    v197 = v53;
    v56 = &__base[16 * v53];
    v57 = *(v56 + 1);
    v58 = v55;
    v192 = v55[10];
    v59 = *v56;
    v60 = &v238[v54];
    v199 = v57;
    if (v57)
    {
      if (*v60)
      {
        v61 = sub_10003C714(*v60);
        if (v61)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = sub_10003A1E8(*(v8 + 392), 0x140000000, v57, &xmmword_10006A960, 0, 0, 0, 0, &v238[v54]);
        if (v61)
        {
LABEL_325:
          v159 = v61;
          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v178, *v56, v199, v61);
          if (*v60)
          {
            sub_100037058(*v60);
            *v60 = 0;
          }

          v160 = 0;
          v161 = 1;
          a4 = v210;
          v11 = v58;
          v9 = v159;
          goto LABEL_329;
        }
      }

      v213 = *(*v60 + 56);
      v62 = *v56;
    }

    else
    {
      v213 = 0;
      v62 = *v56;
    }

    if ((a2 & 0x40) != 0 && v62)
    {
      *&v15[8 * v62] = *&v15[8 * v62 - 8];
      *&v15[8 * *v56 - 8] = 0;
      v62 = *v56;
    }

    v63 = 0;
    v191 = v59;
    v207 = &v15[8 * v62];
    v211 = v200 + 32 * v59;
    v64 = *(v211 + 16);
    v236 = 0;
    v205 = v229;
    v65 = v186;
    if (*&v229[23].__opaque[8 * v214 + 16])
    {
      v65 = a2;
    }

    v216 = v65;
    if ((v65 & 0x40) != 0)
    {
      v63 = *v207;
    }

    v190 = *&v229[23].__opaque[8 * v214 + 16];
    v195 = &v238[v54];
    v198 = v54;
    v66 = *&v64 & 0xFFFFFLL;
    v237 = 0xAAAAAAAAAAAAAAAALL;
    if ((v64 & 0xFFFFFu) <= v38)
    {
      LODWORD(v68) = 0;
      v218 = 0;
      v67 = 0;
      v71 = v213;
LABEL_144:
      LODWORD(v37) = v193;
      v54 = v198;
      if ((v216 & 0x40) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v67 = 0;
    v218 = 0;
    v68 = 0;
    v209 = &v229[24].__opaque[32];
    v69 = 1;
    v70 = v38;
    v71 = v213;
    while (1)
    {
      if (!v71)
      {
        v236 = v66;
        v237 = v70;
        v72 = v66;
        v73 = v70;
        goto LABEL_102;
      }

      if (!sub_10001C25C(0, v71, v70, v66 - v70, &v237))
      {
        break;
      }

      if (sub_10001C25C(1, v71, v237, v66 - v237, &v236))
      {
        v72 = v236;
      }

      else
      {
        v236 = v66;
        v72 = v66;
      }

      v73 = v237;
LABEL_102:
      v70 = v72;
      v74 = 100 * (v69 / 0x64) - 1;
      v75 = v72 - v73;
      if (v72 - v73 > v68)
      {
        v68 = v72 - v73;
      }

      if ((v216 & 0x40) != 0)
      {
        if (v63 && v73)
        {
          v76 = *(v211 + 8) - v63;
          sub_10002A8DC(*&v209[8 * v214], 0, v76, v63);
          if (v210)
          {
            v77 = (v210)(a5, v76, v63);
            if (BYTE6(v234[7]) == 1)
            {
              v78.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v78.i64[1] = v63;
              *&v234[5] = vaddq_s64(*&v234[5], v78);
            }
          }

          else
          {
            v77 = 0;
          }

          v71 = v213;
          v74 = 100 * (v69 / 0x64) - 1;
          v63 = 0;
          if (v218)
          {
            v81 = 1;
          }

          else
          {
            v81 = v77 == 0;
          }

          if (v81)
          {
            v82 = v218;
          }

          else
          {
            v82 = v77;
          }

          v218 = v82;
          v72 = v236;
        }

        if (v72 != v66)
        {
          v208 = v74;
          v79 = *(v211 + 8) - v63;
          v80 = v63 + v75;
LABEL_127:
          sub_10002A8DC(*&v209[8 * v214], 0, v79 + v73, v80);
          if (v210)
          {
            v83 = (v210)(a5, v79 + v73, v80);
            if (BYTE6(v234[7]) == 1)
            {
              v84 = 1;
              v85.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v85.i64[1] = v80;
              *&v234[5] = vaddq_s64(*&v234[5], v85);
            }

            else
            {
              v84 = 0;
            }
          }

          else
          {
            v83 = 0;
            v84 = BYTE6(v234[7]);
          }

          v71 = v213;
          v63 = 0;
          if (v218)
          {
            v86 = 1;
          }

          else
          {
            v86 = v83 == 0;
          }

          if (v86)
          {
            v87 = v218;
          }

          else
          {
            v87 = v83;
          }

          v218 = v87;
          if ((v84 & 1) != 0 && v208 == v67)
          {
            sub_10004C3F0(*(v205->__sig + 392), v234);
            v63 = 0;
          }

          goto LABEL_141;
        }

        v63 += v75;
      }

      else if (v73)
      {
        if (v72 != v66)
        {
          v208 = 100 * (v69 / 0x64) - 1;
          v79 = *(v211 + 8) - v63;
          v80 = v75 + v63;
          goto LABEL_127;
        }

        *(v207 + 1) = v75;
      }

      else
      {
        *v207 = v72;
      }

LABEL_141:
      ++v69;
      ++v67;
      if (v70 >= v66)
      {
        goto LABEL_144;
      }
    }

    if ((v216 & 0x40) == 0 || !v63 || v67)
    {
      goto LABEL_144;
    }

    v95 = *(v211 + 8) - v63;
    sub_10002A8DC(*&v209[8 * v214], 0, v95, v63);
    if (v210)
    {
      v96 = (v210)(a5, v95, v63);
      LODWORD(v37) = v193;
      v54 = v198;
      if (BYTE6(v234[7]) == 1)
      {
        v97.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v97.i64[1] = v63;
        *&v234[5] = vaddq_s64(*&v234[5], v97);
      }
    }

    else
    {
      v96 = 0;
      LODWORD(v37) = v193;
      v54 = v198;
    }

    v67 = 0;
    v63 = 0;
    if (v218)
    {
      v125 = 1;
    }

    else
    {
      v125 = v96 == 0;
    }

    if (v125)
    {
      v126 = v218;
    }

    else
    {
      v126 = v96;
    }

    v218 = v126;
LABEL_145:
    *v207 = v63;
LABEL_146:
    v9 = v218;
    if ((v216 & 1) == 0)
    {
      goto LABEL_186;
    }

    v88 = v191 + v192 * v185;
    v89 = *(v190 + 4 * v88);
    v90 = v89 & 0xFF000000 | v68 & 0xFFFFFF;
    *(v190 + 4 * v88) = v90;
    if (v71)
    {
      v91 = v89 & 0xFE000000 | v68 & 0xFFFFFF;
      v92 = v90 | 0x1000000;
      if (*v71)
      {
        v92 = v91;
      }

      *(v190 + 4 * v88) = v92;
      v93 = v190;
      if (v66 < 0x40 || (v71[(v66 >> 6) - 1] & 0x8000000000000000) != 0)
      {
        v94 = v92 & 0xFDFFFFFF;
        goto LABEL_161;
      }
    }

    else
    {
      v92 = v90 | 0x1000000;
      v93 = v190;
    }

    v94 = v92 | 0x2000000;
LABEL_161:
    *(v93 + 4 * v88) = v94;
    if (!v228)
    {
      goto LABEL_186;
    }

    v98 = *(v211 + 20) & 0xFFFFF;
    if (v98 == *(*&v205[5].__opaque[48] + 36))
    {
      v235 = 0;
      v99 = sub_100030B84(v205, v214, v88, &v235);
      if (v99)
      {
        v100 = *v205->__opaque;
        if (v100)
        {
          v101 = (v100 + 4040);
        }

        else
        {
          v101 = (*(*(v205->__sig + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v101, v88, v99);
      }

      if (v235 == 1)
      {
        LODWORD(v228) = v228 - 1;
      }

      goto LABEL_186;
    }

    if (!v67 || v98 < 4)
    {
      goto LABEL_186;
    }

    v102 = v98 / v67;
    v103 = &v220 + HIDWORD(v228);
    v104 = v94 & 0xC000000;
    v105 = v94 & 0xFFFFFC;
    v106 = v102 > *(v103 + 2) && v104 == 0;
    if (!v106 || v105 == 0)
    {
      goto LABEL_186;
    }

    v108 = 0;
    *(v103 + 2) = v102;
    *v103 = v88;
    v109 = -7;
    v110 = DWORD2(v220);
    v111 = &v221 + 2;
    while (2)
    {
      v113 = *v111;
      v111 += 4;
      v112 = v113;
      if (v113 >= v110)
      {
LABEL_179:
        v121 = __CFADD__(v109++, 1);
        if (v121)
        {
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v112)
    {
      v108 = v109 + 8;
      v110 = v112;
      goto LABEL_179;
    }

    v108 = v109 + 8;
LABEL_224:
    HIDWORD(v228) = v108;
LABEL_186:
    v114 = v204;
    if (v204)
    {
      v115 = 1;
    }

    else
    {
      v115 = v218 == 0;
    }

    if (!v115)
    {
      v114 = v218;
    }

    LOBYTE(a2) = v202;
    if ((v202 & 0x40) != 0)
    {
      if (v114)
      {
        break;
      }
    }

    v204 = v114;
    v8 = v187;
    v55 = v196;
    v15 = v201;
    if (!v199)
    {
      v116 = __nel;
      v124 = v197;
      goto LABEL_213;
    }

    sub_100037058(*v195);
    *v195 = 0;
    v116 = __nel;
    if (v194 >= __nel)
    {
      goto LABEL_208;
    }

    v117 = &v184[16 * v194];
    v118 = v194;
    v119 = v194 + 1;
    do
    {
      v120 = *(v117 + 3);
      v117 += 16;
      ++v118;
      if (v120)
      {
        v121 = 1;
      }

      else
      {
        v121 = v119 >= __nel;
      }

      ++v119;
    }

    while (!v121);
    v194 = v118;
    if (!v120)
    {
LABEL_208:
      v124 = v197;
      goto LABEL_212;
    }

    v122 = sub_10003A1E8(*(v187 + 392), 0x140000080, v120, &xmmword_10006A960, 0, 0, 0, 0, v195);
    if (v122 == 45 || v122 == 16)
    {
      v9 = 0;
      *v195 = 0;
      goto LABEL_211;
    }

    v9 = v122;
    if (v122)
    {
      sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v187 + 384) + 212), v178, *v117, v120, v122);
      v160 = 0;
      v161 = 1;
      a4 = v210;
      v11 = v196;
      goto LABEL_329;
    }

LABEL_211:
    v116 = __nel;
    v55 = v196;
    v124 = v197;
LABEL_212:
    v54 = (v54 + 1) & 0xF;
LABEL_213:
    v38 = 0;
    v53 = v124 + 1;
    if (v53 >= v116)
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
      while (1)
      {
        v130 = (v127 + v188);
        v131 = v200 + 32 * v130;
        v132 = &v201[8 * v130];
        if ((v202 & 0x40) != 0)
        {
          if (*v132)
          {
            v129 = *(v131 + 8) - *v132 + (*(v131 + 16) & 0xFFFFF);
            v116 = __nel;
            v128 = *v132;
          }

          goto LABEL_270;
        }

        v133 = *v132;
        if (v133)
        {
          break;
        }

        v136 = v9;
LABEL_252:
        v140 = *(v132 + 1);
        LODWORD(v37) = v193;
        if (v140)
        {
          v141 = *(v131 + 8) + (*(v131 + 16) & 0xFFFFF) - v140;
          if (v128)
          {
            if (v128 + v129 == v141)
            {
              v9 = 0;
              v140 += v128;
              v141 = v129;
              goto LABEL_258;
            }

            sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
            if (v210)
            {
              v9 = (v210)(a5, v129, v128);
              if (BYTE6(v234[7]) == 1)
              {
                v143.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v143.i64[1] = v128;
                *&v234[5] = vaddq_s64(*&v234[5], v143);
              }
            }

            else
            {
              v9 = 0;
            }

            v142 = v204;
            v116 = __nel;
          }

          else
          {
            v9 = 0;
LABEL_258:
            v142 = v204;
          }

          if (v142)
          {
            v144 = 1;
          }

          else
          {
            v144 = v9 == 0;
          }

          if (!v144)
          {
            v142 = v9;
          }

          v204 = v142;
          v129 = v141;
          v128 = v140;
          goto LABEL_270;
        }

        v9 = v136;
LABEL_270:
        if (++v127 >= v116)
        {
          a4 = v210;
          v12 = v182;
          if (!v128)
          {
            v11 = v196;
            v23 = v171;
            goto LABEL_230;
          }

          sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
          v22 = v178;
          if (v210)
          {
            v9 = (v210)(a5, v129, v128);
            if (BYTE6(v234[7]) == 1)
            {
              v145.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v145.i64[1] = v128;
              *&v234[5] = vaddq_s64(*&v234[5], v145);
            }
          }

          else
          {
            v9 = 0;
          }

          v11 = v196;
          v23 = v171;
          v146 = v204;
          if (v204)
          {
            v147 = 1;
          }

          else
          {
            v147 = v9 == 0;
          }

          if (!v147)
          {
            v146 = v9;
          }

          v204 = v146;
LABEL_283:
          if (a4 == sub_100045EA0)
          {
            sub_100046054(v8);
          }

          sub_10003C190(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_100043D24(v8, v234))
            {
              if (v12 <= 1)
              {
                v12 = 1;
              }

              else
              {
                v12 >>= 1;
              }

              v148 = 1;
            }

            else
            {
              v149 = v11[10];
              v150 = 4 * v12;
              if (v149 < 4 * v12)
              {
                v150 = v11[10];
              }

              if (v149 >= v12 + 1)
              {
                v149 = v12 + 1;
              }

              if (v172)
              {
                v12 = v149;
              }

              else
              {
                v12 = v150;
              }

              v148 = v172;
            }

            v172 = v148;
          }

          if (*(v181 + 36) == v37)
          {
            sub_100037058(v232);
            v232 = 0;
            v22 = (v22 + 1);
          }

          v21 = &v174[12 * v214];
          if (v204)
          {
            v160 = 0;
            v161 = 0;
            v9 = v204;
            goto LABEL_329;
          }

          goto LABEL_33;
        }
      }

      v134 = *(v131 + 8);
      if (v128)
      {
        if (v128 + v129 == v134)
        {
          v135 = 0;
          v133 += v128;
          v134 = v129;
          goto LABEL_240;
        }

        sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
        if (v210)
        {
          v135 = (v210)(a5, v129, v128);
          if (BYTE6(v234[7]) == 1)
          {
            v138.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v138.i64[1] = v128;
            *&v234[5] = vaddq_s64(*&v234[5], v138);
          }
        }

        else
        {
          v135 = 0;
        }

        v137 = v204;
        v116 = __nel;
      }

      else
      {
        v135 = 0;
LABEL_240:
        v137 = v204;
      }

      if (v137)
      {
        v139 = 1;
      }

      else
      {
        v139 = v135 == 0;
      }

      v136 = v135;
      if (!v139)
      {
        v137 = v135;
      }

      v204 = v137;
      v129 = v134;
      v128 = v133;
      goto LABEL_252;
    }
  }

  v160 = 0;
  v161 = 1;
  v8 = v187;
LABEL_328:
  v11 = v196;
  a4 = v210;
  v15 = v201;
LABEL_329:
  if (v9 != 0 && v175)
  {
LABEL_330:
    sub_10002C540(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
    if (v160)
    {
      v162 = v214;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v160)
  {
    goto LABEL_335;
  }

LABEL_333:
  v162 = v214;
LABEL_334:
  pthread_mutex_unlock(&v229[v162 + 10]);
LABEL_335:
  if (v233 && (v179 & 1) != 0)
  {
    sub_10003C190(v233, 1);
  }

  v163 = v161 ^ 1;
  if (!v232)
  {
    v163 = 1;
  }

  if ((v163 & 1) == 0)
  {
    sub_100043D24(v8, v234);
    if (a4 == sub_100045EA0)
    {
      sub_100046054(v8);
    }

    sub_10003C190(v232, 1);
  }

LABEL_344:
  if (v233)
  {
    sub_100037058(v233);
  }

  if (v232)
  {
    sub_100037058(v232);
  }

  for (i = 0; i != 16; ++i)
  {
    v165 = v238[i];
    if (v165)
    {
      sub_10003C714(v165);
      sub_100037058(v238[i]);
    }
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_unlock(v229 + 6);
  }

  v13 = __base;
LABEL_355:
  if (v15)
  {
    sub_1000123F8(v15, 8 * v11[10]);
  }

  if (v13)
  {
    sub_1000123F8(v13, 16 * v11[10]);
  }

  sub_100037058(v229);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}

uint64_t sub_100045EA0(void *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (sub_100042E24(a1, &v14) || (v13 = sub_100042D38(a1, v14, a2, a3), sub_100037058(v14), !v13))
  {
    a1[120] += a3;
    if (a3 < 2)
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = v6 + 1;
        if (v7 < 4)
        {
          break;
        }

        v7 >>= 2;
      }

      while (v6++ < 4);
    }

    ++a1[v8 + 121];
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    sub_100050900(a1[48]);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (sub_100011490(a1))
  {
    sub_100012178("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_10004603C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100046054(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  sub_10005090C(*(a1 + 384));
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100046114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10004612C(uint64_t a1, int a2, unsigned int a3, char a4)
{
  sub_100050A98(*(a1 + 384));
  v7 = 0;
  if (a3)
  {
    if (a2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a1 + 944) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v7 = sub_100044798(a1, v8 | a3, 0, 0, a1);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    sub_100012088("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v7;
}

uint64_t sub_100046494(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 < v9;
        v7 = v8 > v9;
        if (v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_1000464F0(uint64_t *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  memset(v23, 170, sizeof(v23));
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = -1431655766;
  v22 = -1431655766;
  v14 = sub_10004464C(a1, a2, a3, 0, 0, &v23[3]);
  if (v14)
  {
    v15 = v14;
    sub_100012178("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (a1[48] + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > sub_100038020(a2))
    {
LABEL_23:
      v15 = 0;
    }

    else
    {
      v17 = a5 + a4;
      do
      {
        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v18 = sub_100025428(v23[3], 0, v23, &v22, 16, &v23[2], &v21, 1, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
            goto LABEL_27;
          }
        }

        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v19 = sub_100025428(v23[3], 0, v23, &v22, 16, &v23[2], &v21, 4, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
LABEL_27:
            v15 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v16;
      }

      while (v16 <= sub_100038020(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      sub_100012178("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (a1[48] + 212), v15);
    }

LABEL_24:
    sub_100037058(v23[3]);
  }

  return v15;
}

BOOL sub_100046750(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 56);
  v5 = *(*(a1 + 376) + 40 * a2 + 224);
  if (a4)
  {
    v6 = *(*(a3 + 392) + 32);
    if (v5 >= 2)
    {
      return v6 > v5 >> 1;
    }

    if (v6 <= 1)
    {
      v9 = v4[25] + v4[23] + v4[27];
      v10 = v9 >= sub_10003835C(a3) >> 1;
      return !v10;
    }

    return 1;
  }

  if (v5 >= 2)
  {
    return *(*(a3 + 392) + 32) > (3 * v5) >> 2;
  }

  if (*(*(a3 + 392) + 32) > 1uLL)
  {
    return 1;
  }

  v11 = v4[25] + v4[23] + v4[27];
  v10 = v11 >= sub_10003835C(a3) >> 2;
  return !v10;
}

uint64_t sub_100046824(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 376);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(v6 + 152);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v6 + 176);
    v9 = v8 + v7;
    v10 = __OFSUB__(a3, v8);
    v11 = a3 - v8;
    if (v11 < 0 != v10 || v9 <= a3)
    {
      return 22;
    }

    v13 = 0;
LABEL_12:
    *a4 = v11;
    return v13;
  }

  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v17 = sub_100026C78(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, sub_10001074C, 0, (a2 + 1512));
  if (v17)
  {
    return v17;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v18;
  v32[1] = v18;
  v32[2] = v18;
  v32[3] = v18;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v17 = sub_100010858(a1, *(*(a2 + 376) + 176), &v34);
  if (v17)
  {
    return v17;
  }

  v31 = 0;
  sub_100025EF0(v32, v34, 0, 0, &v31, 8, 8, &v29, 0x10u);
  v13 = v20;
  if (!sub_100025F1C(v32))
  {
    while (1)
    {
      v27 = v29;
      v28[0] = v31;
      v28[1] = v30;
      v22 = sub_10001D908(*v15, 0, &v27, 8, v28, 0x10u, 0);
      if (v22)
      {
        break;
      }

      v21 = sub_100025F38(v32);
      if (v21)
      {
        v13 = v21;
        v23 = (a1[48] + 212);
        v24 = strerror(v21);
        sub_100012178("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v23, v24, v13);
        goto LABEL_26;
      }

      if (sub_100025F1C(v32))
      {
        sub_100037058(v34);
        goto LABEL_8;
      }
    }

    v13 = v22;
LABEL_26:
    sub_100037058(v34);
    return v13;
  }

  sub_100037058(v34);
  if (!v13)
  {
LABEL_8:
    *&v32[0] = a3;
    LODWORD(v29) = 8;
    LODWORD(v28[0]) = 16;
    v13 = sub_100025428(*v15, 0, v32, &v29, 8, &v25, v28, 1, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v32[0] >= v26)
    {
      return 2;
    }

    v13 = 0;
    v11 = v25 + a3 - *&v32[0];
    goto LABEL_12;
  }

  return v13;
}

void *sub_100046A8C(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = sub_1000122F4(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t sub_100046AE4(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, int64_t *a6)
{
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v137 = v11;
  v138 = v11;
  v136 = v11;
  v153 = 0;
  v134 = 0;
  v12 = 0;
  v13 = a1;
  if (sub_100036630(a1) == 13)
  {
    v13 = *(a1 + 49);
    v12 = a1;
  }

  BYTE8(v150) = a6 != 0;
  BYTE9(v150) = 1;
  if (a6)
  {
    v14 = a2 | 0x1000;
  }

  else
  {
    v14 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v149) = v14;
  LODWORD(v150) = 0;
  v15 = *(v13 + 47);
  v16 = *(v15 + 1240);
  v17 = a3;
  v142.i64[0] = a3;
  *&v144 = v16;
  v18 = *(v15 + 1248);
  *(&v144 + 1) = v18 + v16;
  if (!v18)
  {
    v144 = 0uLL;
  }

  DWORD1(v150) = 0;
  v19 = *(v13 + 128);
  v20 = v19 + *(v13 + 127);
  *&v143 = *(v13 + 127);
  *(&v143 + 1) = v20;
  if ((v13[634] & 1) != 0 || !v19)
  {
    v143 = 0uLL;
    if ((v14 & 0x80) == 0)
    {
LABEL_11:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v14 |= 0x8100u;
  DWORD2(v149) = v14;
  if ((v14 & 0x200) == 0)
  {
LABEL_12:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v14 |= 0x102u;
  DWORD2(v149) = v14;
  *a5 = *(v13 + 129);
  if ((v14 & 0x400) != 0)
  {
LABEL_13:
    v14 |= 0x100u;
    DWORD2(v149) = v14;
  }

LABEL_14:
  if (v13[637] == 1)
  {
    v14 |= 0x900u;
    DWORD2(v149) = v14;
  }

  if ((v14 & 2) != 0)
  {
    v14 &= ~0x40u;
    DWORD2(v149) = v14;
    v124 = *a5;
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v124 = 0;
    if ((v14 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v150) = 1;
      v21 = *a5;
      goto LABEL_25;
    }
  }

  v21 = 3;
LABEL_25:
  v129 = v21;
  *a5 = 0;
  if ((v14 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v22 = 22;
    if (!sub_10004D1DC(v13, a4) || a3 < 1)
    {
      return v22;
    }
  }

  v152 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v135[0] = v23;
  v135[1] = v23;
  v135[2] = v23;
  v135[3] = v23;
  v22 = sub_100042E24(v13, &v152);
  if (v22)
  {
    return v22;
  }

  v24 = v152;
  v123 = v152[47];
  v25 = v152[199];
  if (v25)
  {
    v26 = v142.i64[0];
    v27.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v27.i64[1] = v142.i64[0];
    *v25 = vaddq_s64(*v25, v27);
    if (BYTE11(v150) == 1)
    {
      ++v25[1].i64[0];
      goto LABEL_34;
    }

    if (v26 > 2)
    {
      if (v26 == 4)
      {
        v28 = 7;
      }

      else
      {
        if (v26 != 3)
        {
LABEL_34:
          if (v26 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v28 = 6;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v29 = 2;
LABEL_48:
        ++v25[v29].i64[0];
        goto LABEL_49;
      }

      if (v26 != 2)
      {
        goto LABEL_34;
      }

      v28 = 5;
    }

    ++v25->i64[v28];
LABEL_46:
    if (BYTE8(v150))
    {
      goto LABEL_49;
    }

    v29 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v30 = DWORD2(v149);
  if ((WORD4(v149) & 0x200) != 0)
  {
    v31 = *(v123 + 48 * DWORD1(v150) + 48);
    *&v143 = *(&v143 + 1);
    *(&v143 + 1) = v31;
  }

  if ((BYTE8(v150) & 1) == 0 && v142.i64[0] >= *(v123 + 96) + *(v123 + 48))
  {
    v22 = 28;
LABEL_281:
    v106 = v152;
    v107 = v152[199];
    if (v107)
    {
      ++*(v107 + 72);
    }

    sub_100037058(v106);
    return v22;
  }

  if ((BYTE8(v149) & 2) != 0 && v124 >= *(v123 + 48))
  {
    v30 = DWORD2(v149) & 0xFFFFFFFD;
    DWORD2(v149) &= ~2u;
  }

  if ((v30 & 0x1A) == 2)
  {
    v30 |= 8u;
    DWORD2(v149) = v30;
  }

  v22 = sub_100047FA4(v24, v30, &v153, &v134, (*(*(v13 + 47) + 48) >> 1) & 1);
  if (v22)
  {
    goto LABEL_281;
  }

  pthread_mutex_lock(v152 + 6);
  if (BYTE11(v150) & 1) != 0 || (BYTE9(v149))
  {
    BYTE9(v150) = 0;
  }

  v122 = v12;
  v118 = a5;
  if (!v152[187])
  {
    DWORD2(v149) |= 0x100u;
  }

  v32 = 0;
  v121 = a1 + 4040;
  v33 = v123 + 48;
  v119 = 2;
  v120 = 0;
LABEL_65:
  v126 = v134;
  v34 = v120;
  while (2)
  {
    v35 = v17;
    v120 = v34;
    v130 = v32;
    while (1)
    {
      do
      {
        while (1)
        {
          v32 = v130;
          v36 = v35;
          if (v126 > v130)
          {
            goto LABEL_77;
          }

          if (BYTE9(v150) == 1)
          {
            BYTE9(v150) = 0;
            if (!v143)
            {
              v32 = 0;
              goto LABEL_77;
            }
          }

          else if (!v143)
          {
            goto LABEL_279;
          }

          if ((BYTE9(v149) & 2) == 0)
          {
            v37 = sub_100036630(a1);
            v38 = a1 + 4040;
            if (v37 != 13)
            {
              v38 = (*(a1 + 48) + 212);
            }

            sub_100012088("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v38);
            v13[634] = 1;
            *(v13 + 131) = 0;
          }

          v32 = 0;
          v143 = 0uLL;
LABEL_77:
          v39 = *(&v153 + v32);
          HIDWORD(v149) = v39;
          v130 = v32 + 1;
          BYTE12(v150) = 0;
          v41 = v39 == DWORD1(v150) && *(&v143 + 1) != 0;
          BYTE10(v150) = v41;
          v142 = v35;
          if ((v14 & 4) != 0)
          {
            v42 = v35;
            goto LABEL_85;
          }

          v46 = DWORD2(v149);
          v47 = v152;
          if (BYTE8(v149))
          {
            v49 = &v152[v39];
            if ((BYTE8(v149) & 0x40) != 0)
            {
              v51 = v49[106];
              v42 = v35;
              if (v51 >= v35)
              {
                goto LABEL_85;
              }

              sub_100036630(a1);
              sub_100012178("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v50 = v49[104] - v49[106];
              v42 = v35;
              if (v50 >= v35)
              {
                goto LABEL_85;
              }

              sub_100036630(a1);
              sub_100012178("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_279:
            v22 = 28;
            goto LABEL_280;
          }

          if ((DWORD2(v149) & 0x30000) == 0)
          {
            sub_100042DAC(v13, v152);
            v47 = v152;
            LODWORD(v39) = HIDWORD(v149);
            v46 = DWORD2(v149);
          }

          v48 = sub_10004807C(v13, v122, v47, v39, v46, v142.i64, a4);
          if (v48 != 7)
          {
            break;
          }

          if (v126 <= v130)
          {
            BYTE9(v150) = 0;
          }
        }

        v22 = v48;
        if (v48)
        {
          goto LABEL_280;
        }

        LODWORD(v39) = HIDWORD(v149);
        v42 = v142.i64[0];
LABEL_85:
        v43 = 0;
        v127 = v152[13 * v39 + 139] & BYTE11(v150);
        if ((v127 & 1) == 0 && (v42 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          v43 = v42 - 1;
          v44 = &v152[17 * v39 + 153];
          if (LOBYTE(v44[4 * v43 + 3]) == 1 && (BYTE9(v149) & 1) == 0)
          {
            BYTE12(v150) = 1;
            v45 = v44[4 * v43];
LABEL_98:
            *(&v146 + 1) = v45;
            goto LABEL_113;
          }
        }

        if (((v152[13 * v39 + 139] & BYTE11(v150)) & (v129 < 3)) == 1)
        {
          v45 = sub_100030018(v152, v39, v129);
          goto LABEL_98;
        }

        if (v39 || (BYTE8(v149) & 2) == 0)
        {
          if ((WORD4(v149) & 0x800) == 0)
          {
            v45 = v152[v39 + 125];
            goto LABEL_98;
          }

          v45 = 0;
          *(&v146 + 1) = 0;
        }

        else
        {
          v45 = v124;
          v142.i64[1] = v124;
          *(&v146 + 1) = v124;
        }

        DWORD2(v149) |= 0x4000u;
LABEL_113:
        if (BYTE12(v150))
        {
          v52 = v152;
          v53 = HIDWORD(v149);
          if ((BYTE9(v149) & 1) != 0 || v142.i64[0] <= (*(v152[HIDWORD(v149) + 187] + 4 * (v45 / *(v123 + 36))) & 0xFFFFFFu))
          {
            v54 = 1;
          }

          else
          {
            v54 = 0;
            BYTE12(v150) = 0;
          }
        }

        else
        {
          v54 = 0;
          v52 = v152;
          v53 = HIDWORD(v149);
        }

        BYTE14(v150) = 0;
        v145 = 0uLL;
        v147 = 0uLL;
        *(&v148 + 1) = 0;
        *&v149 = 0;
        v55 = v52[v53 + 197];
        v56 = BYTE11(v150);
        v125 = v43;
        if (!v55 || (BYTE11(v150) & 1) != 0 || (v54 & 1) != 0)
        {
          goto LABEL_145;
        }

        if ((WORD4(v149) & 0x8400) != 0)
        {
          goto LABEL_146;
        }

        v145 = vextq_s8(v142, v142, 8uLL);
        BYTE14(v150) = 1;
        if (BYTE9(v150))
        {
          v57 = DWORD2(v149) | 0x2000u;
        }

        else
        {
          v57 = DWORD2(v149) & 0xFFFF5BFF;
        }

        DWORD2(v149) = v57;
        v58 = sub_10002C780(v55, v57, v145.i64, &v145.u64[1]);
      }

      while (v58 == 28);
      v59 = v145.u64[1];
      v60 = v145.i64[0];
      if (v145.i64[1] && !v145.i64[0])
      {
        v145 = 0uLL;
        v59 = 0;
      }

      v53 = HIDWORD(v149);
      if (v119 == HIDWORD(v149))
      {
        v61 = 0;
      }

      else
      {
        v61 = 3;
      }

      if (v58 != 3)
      {
        v61 = v58;
      }

      if (v61 == 3)
      {
        *&v85 = 0xAAAAAAAAAAAAAAAALL;
        *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v132 = v85;
        v133 = v85;
        v131 = v85;
        *&v131 = v152[HIDWORD(v149) + 197];
        *(&v131 + 1) = v142.i64[0];
        *&v132 = v59;
        *(&v132 + 1) = sub_10002C758(SWORD4(v149), v142.u64[0], v59);
        *&v133 = 0;
        *(&v133 + 1) = DWORD2(v149);
        v86 = v152;
        v87 = &v152[HIDWORD(v149)];
        v88 = v87 + 102;
        v89 = v87[102];
        if ((v89 & 0x10) != 0)
        {
          v90 = v87[102];
          do
          {
            *v88 = v90 | 0x20;
            sub_100011950(v86 + 16, v86 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v86 = v152;
            v91 = &v152[HIDWORD(v149)];
            v88 = v91 + 102;
            v90 = v91[102];
          }

          while ((v90 & 0x10) != 0);
          *v88 = v90 | 0x10;
          if ((v89 & 0x10) == 0 || *(v91[197] + 128) < *(&v132 + 1))
          {
            goto LABEL_245;
          }

          v22 = 0;
        }

        else
        {
          *v88 = v89 | 0x10;
LABEL_245:
          pthread_mutex_unlock(v86 + 6);
          v119 = HIDWORD(v149);
          if (HIDWORD(v149) == 1)
          {
            v92 = 42;
          }

          else
          {
            v92 = 38;
          }

          v93 = sub_100044798(v13, v92, 0, sub_1000483D0, &v131);
          pthread_mutex_lock(v152 + 6);
          if (v93 == 34 || v93 == 37)
          {
            v95 = 0;
          }

          else
          {
            v95 = v93;
          }

          if (v93 == HIDWORD(v133))
          {
            v22 = v95;
          }

          else
          {
            v22 = v93;
          }
        }

        v17 = a3;
        v145 = 0uLL;
        v96 = v152;
        v97 = HIDWORD(v149);
        v98 = v152[HIDWORD(v149) + 102];
        if ((v98 & 0x20) != 0)
        {
          j__pthread_cond_broadcast(v152 + 16);
          v96 = v152;
          v97 = HIDWORD(v149);
          v98 = v152[HIDWORD(v149) + 102];
        }

        v96[v97 + 102] = v98 & 0xFFFFFFFFFFFFFFCFLL;
        if (v22)
        {
LABEL_280:
          pthread_mutex_unlock(v152 + 6);
          goto LABEL_281;
        }

        goto LABEL_65;
      }

      v36 = v35;
      if (!v61 && v59 && v60)
      {
        *(&v148 + 1) = v60;
        *&v149 = v59;
        if (BYTE10(v150) != 1)
        {
          goto LABEL_143;
        }

        v22 = 0;
        if ((BYTE9(v149) & 2) == 0 && v60 < *(&v143 + 1))
        {
          if ((v59 + v60) < v143)
          {
LABEL_143:
            v22 = 0;
            goto LABEL_207;
          }

          v77 = sub_100036630(a1);
          v78 = a1 + 4040;
          if (v77 != 13)
          {
            v78 = (*(a1 + 48) + 212);
          }

          sub_100012088("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v78);
          v22 = 0;
          v13[634] = 1;
          *(v13 + 131) = 0;
        }

        goto LABEL_207;
      }

      DWORD2(v149) |= 0x100u;
      v56 = BYTE11(v150);
LABEL_145:
      if ((v56 & 1) == 0)
      {
LABEL_146:
        if ((BYTE12(v150) & 1) == 0 && v152[v53 + 187] && (BYTE9(v149) & 1) == 0)
        {
          *&v136 = *(&v146 + 1);
          *(&v136 + 1) = v142.i64[0];
          LOBYTE(v137) = BYTE9(v150);
          BYTE8(v138) = BYTE8(v150) ^ 1;
          *(&v137 + 1) = 0;
          *&v138 = 0;
          if (BYTE10(v150) == 1)
          {
            *(&v137 + 1) = v143;
            *&v138 = *(&v143 + 1) - v143;
          }

          sub_100048448(v152, v53, &v136, &v139);
          if (v62)
          {
            v63 = v62;
            BYTE9(v150) = 0;
            if (v62 != 28)
            {
              if (sub_100036630(a1) == 13)
              {
                sub_100012178("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v121, v63);
              }

              else
              {
                sub_100012178("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v63);
              }
            }
          }

          else
          {
            BYTE13(v150) = 1;
            BYTE9(v150) = v140;
            *(&v146 + 1) = v139;
            if (BYTE8(v150) == 1)
            {
              v142.i64[0] = *(&v139 + 1);
            }
          }

          v36 = a3;
          if ((BYTE9(v150) & 1) == 0 && BYTE10(v150) == 1)
          {
            if ((BYTE9(v149) & 2) == 0)
            {
              v13[634] = 1;
              *(v13 + 131) = 0;
            }

            v143 = 0uLL;
          }
        }

        goto LABEL_167;
      }

      do
      {
LABEL_167:
        v64 = HIDWORD(v149);
        if (HIDWORD(v149) == v150 && *(&v146 + 1) >= v144 && *(&v146 + 1) < *(&v144 + 1))
        {
          *(&v146 + 1) = *(&v144 + 1);
          if ((BYTE14(v150) & 1) == 0 && HIDWORD(v149) == DWORD1(v150) && *(&v144 + 1) >= v143 && *(&v144 + 1) < *(&v143 + 1))
          {
            *(&v146 + 1) = *(&v143 + 1);
          }
        }

        if ((BYTE14(v150) & 1) == 0 && HIDWORD(v149) == DWORD1(v150) && *(&v146 + 1) >= v143 && *(&v146 + 1) < *(&v143 + 1))
        {
          *(&v146 + 1) = *(&v143 + 1);
          if (HIDWORD(v149) == v150 && *(&v143 + 1) >= v144 && *(&v143 + 1) < *(&v144 + 1))
          {
            *(&v146 + 1) = *(&v144 + 1);
          }
        }

        v65 = v152[HIDWORD(v149) + 197];
        if (v65)
        {
          if (BYTE14(v150))
          {
            v66 = &v146 + 1;
          }

          else
          {
            v66 = 0;
          }

          HIBYTE(v150) = sub_10002C494(v65, v66);
          LOBYTE(v151) = 0;
          v64 = HIDWORD(v149);
        }

        else
        {
          HIBYTE(v150) = 0;
        }

        v67 = *(&v146 + 1);
        if (*(&v146 + 1) >= *(v33 + 48 * v64))
        {
          v67 = 0;
          *(&v146 + 1) = 0;
        }

        *&v146 = v67;
        v68 = sub_10004884C(a1, v13, v152, &v139);
      }

      while (v68 == 3);
      v22 = v68;
      if ((v151 & 0x100) != 0)
      {
        if (!HIBYTE(v150))
        {
          goto LABEL_207;
        }

        v69 = BYTE14(v150) == 1 ? *(v152[47] + 48 * HIDWORD(v149) + 48) : 0;
        v71 = v152[HIDWORD(v149) + 197];
        v72 = 1;
      }

      else
      {
        if (!HIBYTE(v150))
        {
          goto LABEL_207;
        }

        if (BYTE14(v150) == 1)
        {
          v69 = v146;
          if (!v68 && v146 > *(&v146 + 1))
          {
            v70 = *(&v147 + 1) || !v149 ? v148 + *(&v147 + 1) + v147 : *(&v148 + 1) + v149;
            if (v146 <= v70)
            {
              v69 = v70;
            }
          }
        }

        else
        {
          v69 = 0;
        }

        v71 = v152[HIDWORD(v149) + 197];
        v72 = 0;
      }

      sub_10002C540(v71, v69, v72);
      HIBYTE(v150) = 0;
LABEL_207:
      v35 = v36;
      v73 = v32;
      v74 = *(&v147 + 1);
      if (*(&v147 + 1))
      {
        if (v22)
        {
          goto LABEL_275;
        }

        v79 = v147 + v148;
        goto LABEL_226;
      }

      v74 = v149;
      if (v22 || v149)
      {
        break;
      }

      if (BYTE1(v151) != 1)
      {
        v74 = 0;
        v79 = 0;
        goto LABEL_226;
      }

      if ((v14 & 4) == 0)
      {
        pthread_mutex_unlock(v152 + 6);
        pthread_mutex_lock(v152 + 8);
        sub_100043414(v13, v135, 0, 0);
        v75 = sub_10004350C(v13, v152, (HIDWORD(v149) + 1), 1, v135, a4);
        v76 = v130;
        if (v75)
        {
          v76 = v73;
        }

        v130 = v76;
        sub_100043D24(v13, v135);
        pthread_mutex_unlock(v152 + 8);
        pthread_mutex_lock(v152 + 6);
      }
    }

    if (v149)
    {
      v79 = *(&v148 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (v22)
    {
      goto LABEL_275;
    }

LABEL_226:
    v80 = sub_100042D38(v13, v152, v79, v74);
    if (v80)
    {
      v103 = v80;
      if (sub_100011490(*(*a1 + 392)))
      {
        v104 = sub_100036630(a1);
        v105 = a1 + 4040;
        if (v104 != 13)
        {
          v105 = (*(a1 + 48) + 212);
        }

        sub_100012178("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v105, v79, v74, v103);
      }

      v22 = sub_1000033FC(v13);
LABEL_275:
      pthread_mutex_unlock(v152 + 6);
      v99 = v118;
      v100 = a6;
      if (v22)
      {
        goto LABEL_281;
      }

      goto LABEL_306;
    }

    v81 = v79 + v74;
    if (v79 + v74 >= *(v33 + 48 * HIDWORD(v149)))
    {
      v81 = 0;
    }

    *&v146 = v81;
    if ((v14 & 4) == 0 && v74 >= 1)
    {
      if (v13[627])
      {
        v22 = 30;
        goto LABEL_280;
      }

      v82 = sub_10003BC6C(v152, 0, a4);
      if (v82)
      {
        v22 = v82;
        goto LABEL_280;
      }

      v22 = sub_10004988C(v13, v122, v152, v79, v74, a4, 0, SDWORD2(v149));
      sub_10002BEC0(v152[HIDWORD(v149) + 197], v79, v74);
      if (v22)
      {
        v83 = sub_100036630(a1);
        v84 = a1 + 4040;
        if (v83 != 13)
        {
          v84 = (*(a1 + 48) + 212);
        }

        sub_100012178("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v84, v79, v74, v22);
        if (BYTE14(v150) != 1)
        {
          goto LABEL_280;
        }

        sub_10002A1D4(v152[HIDWORD(v149) + 197]);
        v34 = 1;
        v32 = v73;
        v17 = a3;
        if (v120)
        {
          goto LABEL_280;
        }

        continue;
      }
    }

    break;
  }

  v99 = v118;
  *v118 = v79;
  v100 = a6;
  if (a6)
  {
    *a6 = v74;
  }

  v101 = v152;
  v102 = v152[199];
  if (v102)
  {
    v102[10] += v74;
    if (v74 < a3)
    {
      ++v102[11];
    }

    if (BYTE12(v150))
    {
      ++v102[3];
      goto LABEL_286;
    }

LABEL_290:
    if ((WORD4(v149) & 0x200) != 0)
    {
      v111 = *(v13 + 127);
      if (HIDWORD(v149) || v146 < v111 || v146 >= *(v13 + 128) + v111)
      {
        *(v13 + 129) = v111;
      }

      else
      {
        *(v13 + 129) = v146;
      }
    }

    else
    {
      v110 = HIDWORD(v149);
      if ((WORD4(v149) & 0x142) == 0 || HIDWORD(v149))
      {
        v112 = v146;
        v101[HIDWORD(v149) + 125] = v146;
        if (BYTE9(v150) == 1 && sub_1000311F8(v101, v110, v112, 5))
        {
          *&v136 = v146;
          *(&v136 + 1) = 1;
          LOBYTE(v137) = 1;
          BYTE8(v138) = 1;
          *(&v137 + 1) = 0;
          *&v138 = 0;
          sub_100048448(v152, HIDWORD(v149), &v136, &v139);
          if (v113)
          {
            if (v113 != 28)
            {
              sub_100036630(a1);
              sub_100012178("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
            }
          }

          else if (*(&v139 + 1) >= 1)
          {
            v152[HIDWORD(v149) + 125] = v139;
          }
        }
      }

      else if (v127)
      {
        sub_10002FF54(v101, 0, v129, v146);
      }
    }
  }

  else
  {
    if ((BYTE12(v150) & 1) == 0)
    {
      goto LABEL_290;
    }

LABEL_286:
    if ((*(v101[HIDWORD(v149) + 187] + 4 * (v101[17 * HIDWORD(v149) + 153 + 4 * v125] / *(v123 + 36))) & 0xFFFFFFu) <= v125)
    {
      v109 = sub_100030D28(v13, v101, HIDWORD(v149), v125);
      if (v109)
      {
        if (v109 != 28)
        {
          sub_100036630(a1);
          sub_100012178("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
        }
      }
    }
  }

  pthread_mutex_unlock(v152 + 6);
LABEL_306:
  sub_100037058(v152);
  if ((BYTE8(v149) & 4) != 0)
  {
    return 0;
  }

  v22 = 0;
  if ((WORD4(v149) & 0x200) != 0)
  {
    return v22;
  }

  v114 = *(v13 + 128);
  if (!v114)
  {
    return v22;
  }

  v115 = *(v13 + 127);
  if (*v99 >= v115 && *v99 < v115 + v114)
  {
    return 0;
  }

  if (v13[634] == 1)
  {
    v116 = &v142;
    if (v100)
    {
      v116 = v100;
    }

    v117 = *(v13 + 131) + v116->i64[0];
    *(v13 + 131) = v117;
    if (v117 >= 0x401)
    {
      if (sub_100036630(a1) != 13)
      {
        v121 = (*(a1 + 48) + 212);
      }

      sub_100012088("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v121);
      v22 = 0;
      v13[634] = 0;
      return v22;
    }

    return 0;
  }

  if (!v100 || 10000 * *v100 >= v142.i64[0] || *v100 * *(*(v13 + 47) + 36) >= 0x40000)
  {
    return 0;
  }

  if (sub_100036630(a1) != 13)
  {
    v121 = (*(a1 + 48) + 212);
  }

  sub_100012088("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v121, v142.i64[0], *v100);
  v22 = 0;
  v13[634] = 1;
  *(v13 + 131) = 0;
  return v22;
}

uint64_t sub_100047FA4(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
{
  if ((~a2 & 0x38) == 0)
  {
    panic("Absurd combination of allocation flags for spaceman %llx", a1);
  }

  if (*(*(a1 + 376) + 96))
  {
    v5 = a2 & 0x20;
    v6 = (a2 >> 3) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      *a3 = &_mh_execute_header;
      goto LABEL_11;
    }

    *a3 = 1;
    v5 |= a5;
LABEL_11:
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_14;
  }

  if ((a2 & 0x10) == 0)
  {
    *a3 = 0;
    v7 = 1;
LABEL_14:
    result = 0;
    *a4 = v7;
    return result;
  }

  return 22;
}

uint64_t sub_10004807C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, unint64_t a7)
{
  v55 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[2] = v14;
  v59[3] = v14;
  v59[0] = v14;
  v59[1] = v14;
  v58 = a3 + 832;
  v15 = v13 + 48 * a4;
  v56 = a4 + 1;
  v53 = v13 + 40 * (a4 + 1);
  v54 = a3 + 984;
  v16 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v17 = *(a2 + 408);
      v18 = *(a2 + 376);
      v20 = v18[10];
      v19 = v18[11];
      v21 = v18[9];
      if (v20 >= v19 + v17)
      {
        v22 = v20 - (v19 + v17);
      }

      else
      {
        v22 = 0;
      }

      if (v21 - v19 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - v19;
      }

      if (v20 <= v19 + v17)
      {
        v24 = v21 - v19;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 >= v17;
      v26 = v24 - v17;
      if (!v25)
      {
        v26 = 0;
      }

      if (v21 <= v19)
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v22 = 0;
    }

    v27 = *(a3 + 376);
    v28 = v27[30] + v27[9] + *(a3 + 984) + v27[15] + v27[35] + *(a3 + 992);
    v30 = v27[23];
    v29 = v27[24];
    v25 = v30 >= v29;
    v31 = v30 - v29;
    if (!v25)
    {
      v31 = 0;
    }

    v32 = *(a3 + 840) + *(a3 + 832);
    v33 = *(a3 + 864);
    v25 = v32 >= v33;
    v34 = v32 - v33;
    if (!v25)
    {
      v34 = 0;
    }

    v35 = v34 + v31;
    v25 = v28 >= v35;
    v36 = v28 - v35;
    if (!v25)
    {
      v36 = 0;
    }

    if (*(a3 + 1616))
    {
      v37 = *(a3 + 1632);
      v25 = v34 >= v37;
      v38 = v34 - v37;
      if (!v25)
      {
        v38 = 0;
      }

      v39 = *(a3 + 1624);
      v40 = *(a3 + 1640);
      v25 = v39 >= v40;
      v41 = v39 - v40;
      if (!v25)
      {
        v41 = 0;
      }

      v25 = v41 >= v37;
      v42 = v41 - v37;
      if (!v25)
      {
        v42 = 0;
      }

      v43 = *(a3 + 1648);
      v44 = *(a3 + 1656);
      v25 = v43 >= v44;
      v45 = v43 - v44;
      if (!v25)
      {
        v45 = 0;
      }

      v25 = v45 >= v38;
      v46 = v45 - v38;
      if (!v25)
      {
        v46 = 0;
      }

      v25 = v36 >= v46 + v42;
      v47 = v36 - (v46 + v42);
      if (!v25)
      {
        v47 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v46 = v42;
      }

      v48 = v46 + v26 + v47;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v50 = *a6;
LABEL_54:
        v22 = v50;
        if (v50 <= v48)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v48;
        v22 = v48;
        if (v48 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v48 = v36 + v26;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v48 >= v22)
    {
      v49 = v22;
    }

    else
    {
      v49 = v48;
    }

    if (*(*(a2 + 376) + 80))
    {
      v48 = v49;
    }

    pthread_mutex_unlock((a3 + 576));
    v50 = *a6;
    if (!*(*(a2 + 376) + 80) || v50 <= v22)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v22;
    if (v22 < 1)
    {
      return 69;
    }

    if (v22 > v48)
    {
      goto LABEL_56;
    }

LABEL_57:
    v51 = *(v15 + 72) - *(v58 + 8 * a4);
    if (v22 > v51)
    {
      break;
    }

LABEL_65:
    if (v22 <= v51)
    {
      return 0;
    }
  }

  if (v16)
  {
    v51 += *(v53 + 200) + *(v54 + 8 * a4);
    if (v22 <= v51)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v51;
  if (v51 > 0 && v16)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_100043414(a1, v59, 0, 0);
    v16 = sub_10004350C(a1, a3, v56, 1, v59, a7) != 0;
    sub_100043D24(a1, v59);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v51 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v22 = v55;
      *a6 = v55;
    }

    else
    {
      v22 = *a6;
    }

    goto LABEL_65;
  }

  if (v51 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000483D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = *(a1 + 44);
  if (!result)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      *(a1 + 32) = a2;
      v5 = a2;
    }

    if (*(a1 + 24) <= a3)
    {
      result = 37;
    }

    else
    {
      v6 = *(*(*(*a1 + 8) + 376) + 36);
      result = sub_10002A2E8(*a1, (a2 - v5 / v6 * v6) / v6);
      if (!result)
      {
        return result;
      }

      result = 34;
    }

    *(a1 + 44) = result;
  }

  return result;
}

double sub_100048448(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
{
  v56 = 0;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v60[0] = *a3;
  v60[1] = v6;
  v8 = *(a1 + 376);
  v9 = *(a3 + 16);
  v49 = *(a3 + 40);
  v10 = *a3 / *(v8 + 36);
  v11 = v10;
  v60[2] = v7;
  v12 = a1 + 1496;
  v13 = a2;
  v14 = *(a1 + 1496 + 8 * a2) + 4 * v10;
  v54 = *(a3 + 8);
  *&v15 = 0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  v55 = v8;
  v16 = v8 + 48 * a2;
  v50 = v14;
  v51 = v10;
  do
  {
    if (!v9)
    {
      v28 = 1;
      v29 = v50;
      goto LABEL_24;
    }

    v17 = *(a1 + 376);
    if ((*(v14 + 3) & 0xC) == 0)
    {
      v18 = v17 + 48 * v13;
      v19 = *(v18 + 56);
      if (v19 <= v11)
      {
        goto LABEL_18;
      }

      v20 = *(a3 + 32);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = *(v17 + 36);
      v22 = v21;
      if (v19 - 1 == v11)
      {
        v22 = *(v18 + 48) % v21;
      }

      if (!sub_100011DE8(v11 * v21, v22, *(a3 + 24), v20, 0))
      {
LABEL_18:
        if (v11 == v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          *&v60[0] = v11 * *(v55 + 36);
        }

        v51 = v11;
        goto LABEL_23;
      }

      v17 = *(a1 + 376);
    }

    v23 = v17 + 48 * v13;
    v24 = *(v23 + 56);
    if (v24 > v11)
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        v26 = *(v17 + 36);
        v27 = v26;
        if (v24 - 1 == v11)
        {
          v27 = *(v23 + 48) % v26;
        }

        v56 |= sub_100011DE8(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
      }
    }

    v11 = (v11 + 1) % *(v16 + 56);
    v14 = *(v12 + 8 * v13) + 4 * v11;
  }

  while (v11 != v10);
  if ((v56 & 1) == 0)
  {
    return *&v15;
  }

  v28 = 1;
LABEL_23:
  v29 = v14;
LABEL_24:
  v30 = v54;
  if (v54 < 2)
  {
    goto LABEL_53;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v54 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_53;
  }

  if (v51 < *(v16 + 56) - 1 && (v31 & 0x2000000) != 0 && *(v12 + 8 * v13) + 4 * v51 != -4)
  {
    v32 = *(*(v12 + 8 * v13) + 4 * v51 + 4);
    if ((v32 & 0x1000000) != 0 && ((v32 & 0xC000000) == 0 || (v9 & 1) == 0))
    {
      v40 = v32 & 0xFFFFFF;
      v36 = v49;
      if (v49)
      {
        v35 = a4;
        v33 = v55;
        if (v54 <= v40 + v29)
        {
          goto LABEL_54;
        }

        v34 = *(v55 + 36);
        goto LABEL_33;
      }

      if (v29 <= v40)
      {
        v29 = v40;
      }

      else
      {
        v29 = v29;
      }

      if (v54 >= v29)
      {
        v30 = v29;
      }

LABEL_53:
      v35 = a4;
      v33 = v55;
      goto LABEL_54;
    }
  }

  v33 = v55;
  v34 = *(v55 + 36);
  v35 = a4;
  v36 = v49;
  if (!v49)
  {
LABEL_37:
    *&v60[0] = v51 * v34;
    sub_10004CAF4(a1, a2, 0, v60, v35);
    v38 = *(v35 + 1);
    if (v38 < v54)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (!v38 || v39)
    {
      v15 = *(v35 + 24);
      *v35 = v15;
      *(v35 + 2) = *(v35 + 5);
      *(v35 + 3) = 0;
      *(v35 + 4) = 0;
      *(v35 + 5) = 0;
    }

    return *&v15;
  }

LABEL_33:
  if (v34 >= 0xFFFFFF)
  {
    v37 = 0xFFFFFFLL;
  }

  else
  {
    v37 = v34;
  }

  if (v54 <= v37)
  {
    goto LABEL_37;
  }

LABEL_54:
  v41 = *&v60[0];
  *v35 = *&v60[0];
  *(v35 + 1) = v30;
  *(v35 + 16) = v9;
  if (v28)
  {
    v42 = *(a1 + 376);
    v43 = v42 + 48 * v13;
    v44 = *(v43 + 56);
    if (v44 > v10)
    {
      v45 = *(a3 + 32);
      if (v45)
      {
        v46 = *(v42 + 36);
        v47 = v10 * v46;
        if (v44 - 1 == v10)
        {
          v46 = *(v43 + 48) % v46;
        }

        if (sub_100011DE8(v47, v46, *(a3 + 24), v45, 0))
        {
          *(v35 + 16) = 0;
        }
      }
    }
  }

  if (v41 % *(v33 + 36))
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    sub_10004CAF4(a1, a2, 3uLL, v60, &v57);
    if (*(&v57 + 1) >= v30)
    {
      *&v15 = v57;
      *(v35 + 24) = v57;
      *(v35 + 5) = v58;
    }

    else
    {
      v15 = *v35;
      *(v35 + 24) = *v35;
      *(v35 + 5) = *(v35 + 2);
      *(v35 + 3) = v41 / *(v33 + 36) * *(v33 + 36);
    }
  }

  return *&v15;
}

uint64_t sub_10004884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v116 = 0;
  memset(v115, 170, sizeof(v115));
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a4 + 172);
  v109 = v10;
  do
  {
    v13 = *(a4 + 112) / v10[9] / v10[10];
    v103 = v8;
    if (v11[12 * v12 + 5])
    {
      v14 = v10[11];
      v15 = v13 / v14;
      v16 = v118;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v118)
        {
          sub_100037058(v118);
          v10 = v109;
          v118 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v115[1] = v10;
        v115[2] = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = sub_10003A1E8(*(a2 + 392), 0x40000000, v19, &xmmword_10006A940, &v115[1], 0, 0, 0, &v118);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v118;
        LODWORD(v12) = *(a4 + 172);
        v99 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v10 = v20;
      }

      v18 = (*(v16 + 56) + 8 * (v13 - v14 * v15) + 40);
      LODWORD(v13) = v17;
      v8 = v103;
    }

    else
    {
      v18 = (*(v98 + 8 * v12) + 8 * v13);
    }

    v22 = *v18;
    v115[1] = v10;
    v115[2] = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = sub_10003A1E8(*(a2 + 392), 0x40000000, v22, &xmmword_10006A950, &v115[1], 0, 0, 0, &v117);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = *(v117 + 56);
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v8 == v11[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v93 = 0;
      goto LABEL_276;
    }

    v110 = v5 + 40;
    v101 = *(v117 + 56);
    v7 = v7;
    v111 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v94 = *(a4 + 40);
          *(a4 + 185) = v94;
          if ((v94 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v93 = 3;
          goto LABEL_276;
        }
      }

      v32 = v110 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = sub_100036630(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        sub_100012178("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v109[9]);
        v29 = v109;
        if (v29[9] + v29[9] * v34 >= *&v11[12 * *(a4 + 172)])
        {
          v9 = 0;
        }

        else
        {
          v9 = v109[9] + v109[9] * v34;
        }

        v28 = v111;
LABEL_105:
        *(a4 + 112) = v9;
        goto LABEL_106;
      }

      v36 = *(a4 + 172);
      if (v8 == v11[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      v112 = v6;
      v46 = 0;
      if (v36 == v45)
      {
        v52 = *(a4 + 64);
        if (v52 > v33 && v52 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
            if (v52 - v33 < v38)
            {
              v38 = v52 - v33;
            }
          }
        }
      }

      v47 = *(a4 + 112);
      v48 = v47 - v33;
      if (v36 == v41)
      {
        v49 = *(a4 + 88);
        if (v49 > v33 && v49 < v38 + v33)
        {
          if (v49 - v33 > v48)
          {
            v48 = v49 - v33;
          }

          v47 = v48 + v33;
          *(a4 + 112) = v48 + v33;
          if (v48 > 0)
          {
            v9 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v53 = *(a4 + 72);
        if (v53 > v33 && v53 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            v46 = 1;
          }

          else
          {
            if (v53 - v33 > v48)
            {
              v48 = v53 - v33;
            }

            v47 = v48 + v33;
            *(a4 + 112) = v48 + v33;
            if (v48 > 0)
            {
              v9 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v50 = *(v32 + 20) & 0xFFFFF;
        if (!v9 || v50 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v9 > v50)
        {
          if (v50)
          {
            if (v7 >= v30 - 1 || (v51 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v51 + v50)))
            {
              v9 = 0;
            }

            else
            {
              v9 = 0;
              if (v51 < (*(v32 + 48) & 0xFFFFFu))
              {
                v46 = 1;
              }
            }
          }

          else
          {
            v9 = 0;
            v46 = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v48 + v33 && *(a4 + 88) >= v38 + v33)
      {
        v46 = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v36 != v45 || v46)
        {
          goto LABEL_85;
        }

        if (*(a4 + 64) <= v48 + v33)
        {
          v46 = *(a4 + 72) >= v38 + v33;
LABEL_85:
          if (!*(a4 + 184))
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        v46 = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

LABEL_86:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        v46 = 2;
      }

LABEL_88:
      v54 = *(v32 + 24);
      if (!v54 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v55) = *(a4 + 190);
LABEL_96:
        v56 = v47 + v38 - v48;
        *(a4 + 112) = v56;
        v11 = v104;
        v28 = v111;
        v6 = v112;
        if (v36 == v41 && v56 >= *(a4 + 80) && v56 < *(a4 + 88) || (v55 & 1) == 0 && v36 == *(a4 + 180) && v56 >= *(a4 + 64) && v56 < *(a4 + 72))
        {
          v56 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v56;
        }

        v9 = 0;
        if (v56 < *&v104[12 * v36])
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (!v46)
      {
        if (*(a4 + 185) != 1)
        {
          v57 = 1;
          goto LABEL_111;
        }

        v46 = sub_1000311F8(a3, v36, v33, *(a4 + 48));
        v29 = v109;
      }

      v55 = *(a4 + 190);
      if (v46 > v55)
      {
        v47 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_96;
      }

      v54 = *(v32 + 24);
      v57 = v46 == 0;
LABEL_111:
      v113 = (v112 + 1);
      v116 = 0;
      if (v54)
      {
        v58 = sub_10003A1E8(*(a2 + 392), 0x40000000, v54, &xmmword_10006A960, 0, 0, 0, 0, &v116);
        if (v58)
        {
          v93 = v58;
          goto LABEL_274;
        }
      }

      if (v9)
      {
        v59 = v38;
        if (v57)
        {
          if (*(a4 + 48) - v9 >= v38)
          {
            v59 = v38;
          }

          else
          {
            v59 = *(a4 + 48) - v9;
          }
        }

        if (!v116 || !sub_10001C25C(1, *(v116 + 56), 0, v59, (a4 + 128)))
        {
          v6 = v113;
          if (v57)
          {
            v63 = *(a4 + 48);
            if (v63 == v59 + v9)
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              *(a4 + 160) = v63;
              v11 = v104;
              if (v116)
              {
                sub_100037058(v116);
              }

              v9 = 0;
              v93 = 0;
              v116 = 0;
              v5 = v101;
              v8 = v103;
              goto LABEL_276;
            }
          }

          v11 = v104;
          if (*(a4 + 190) == 1)
          {
            v64 = *(a4 + 191);
          }

          else
          {
            v64 = 0;
          }

          v65 = v59 + v9;
          sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v64 & 1, *(a4 + 112) - v9, v59 + v9);
          if (*(a4 + 184) == 1 && v65 > *(a4 + 160))
          {
            if (v57 || !sub_100031394(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), v115, &v114))
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              v66 = *(a4 + 48);
              if (v65 < v66)
              {
                v66 = v59 + v9;
              }

LABEL_145:
              *(a4 + 160) = v66;
            }

            else
            {
              v66 = v114;
              if (v114 >= *(a4 + 48))
              {
                v66 = *(a4 + 48);
              }

              v114 = v66;
              if (v66 > *(a4 + 160))
              {
                *(a4 + 152) = v115[0];
                goto LABEL_145;
              }
            }
          }

          v67 = *(a4 + 112) + v59;
          *(a4 + 112) = v67;
          v68 = *(a4 + 172);
          v5 = v101;
          v8 = v103;
          if (v68 == *(a4 + 176) && v67 >= *(a4 + 80) && v67 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v68 == *(a4 + 180) && v67 >= *(a4 + 64) && v67 < *(a4 + 72))
          {
            v65 = 0;
            v67 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v67;
          }

          v9 = v65;
          if (v67 >= *&v104[12 * v68])
          {
            v9 = 0;
            *(a4 + 112) = 0;
          }

          if (v116)
          {
            sub_100037058(v116);
          }

          v116 = 0;
          if (v9)
          {
            goto LABEL_262;
          }

          v28 = v111;
          v29 = v109;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v9 = 0;
            v93 = 0;
            goto LABEL_276;
          }

          goto LABEL_106;
        }

        v5 = v101;
        if (*(a4 + 184) != 1)
        {
          goto LABEL_168;
        }

        v60 = *(a4 + 128) + v9;
        if (v60 <= *(a4 + 160))
        {
          goto LABEL_168;
        }

        if (!v57)
        {
          if (sub_100031394(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v61 = *(a4 + 48);
            if (v114 < v61)
            {
              v61 = v114;
            }

            v114 = v61;
            v62 = *(a4 + 160);
            if (v61 > v62)
            {
              *(a4 + 152) = v115[0];
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v116)
                {
                  sub_100037058(v116);
                }

                v9 = 0;
                v93 = 0;
                v116 = 0;
LABEL_274:
                v8 = v103;
                goto LABEL_275;
              }

LABEL_168:
              if (*(a4 + 190) == 1)
              {
                v69 = *(a4 + 191);
              }

              else
              {
                v69 = 0;
              }

              sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v69 & 1, *(a4 + 112) - v9, *(a4 + 128) + v9);
              v70 = *(a4 + 128);
              *(a4 + 112) += v70 - v48;
              v48 = v70;
              goto LABEL_172;
            }

LABEL_166:
            if (v62)
            {
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          v60 = *(a4 + 128) + v9;
        }

        v62 = *(a4 + 48);
        if (v60 < v62)
        {
          v62 = v60;
        }

        *(a4 + 152) = *(a4 + 112) - v9;
        *(a4 + 160) = v62;
        goto LABEL_166;
      }

LABEL_172:
      if (!v116)
      {
        break;
      }

      if (*(v107 + 8 * *(a4 + 172)))
      {
        if (v38 > v48)
        {
          v71 = 0;
          v72 = 0;
          v73 = v48;
          while (1)
          {
            sub_10001C57C(*(v116 + 56), v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
            v74 = *(a4 + 136);
            if (!v74)
            {
              goto LABEL_212;
            }

            if (v74 <= v71)
            {
              break;
            }

            if ((*(a4 + 169) & 4) != 0)
            {
              if (v71)
              {
                break;
              }

              v75 = *(a4 + 48);
            }

            else
            {
              v75 = *(a4 + 48);
              if (v71 >= v75)
              {
                break;
              }
            }

            v72 = *(a4 + 128);
            if (v75 >= v74)
            {
              v71 = *(a4 + 136);
            }

            else
            {
              v71 = v75;
            }

            if (!v57)
            {
              goto LABEL_192;
            }

LABEL_183:
            v76 = *(a4 + 48);
            if (v71 >= v76 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
            {
              *(a4 + 128) = v72;
              *(a4 + 136) = v71;
              goto LABEL_214;
            }

LABEL_192:
            if (*(a4 + 190) == 1)
            {
              v77 = *(a4 + 191);
            }

            else
            {
              v77 = 0;
            }

            sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v77 & 1, *(a4 + 112) - v48 + *(a4 + 128), v74);
            v73 = *(a4 + 136) + *(a4 + 128);
            if (v73 >= v38)
            {
              goto LABEL_212;
            }
          }

          if (!v57)
          {
            goto LABEL_192;
          }

          goto LABEL_183;
        }

        v72 = 0;
        v71 = 0;
LABEL_212:
        *(a4 + 128) = v72;
        *(a4 + 136) = v71;
        if (v57)
        {
          v76 = *(a4 + 48);
LABEL_214:
          if (v71 >= v76)
          {
            v9 = 0;
            v93 = 0;
            *(a4 + 112) += v38 - v48;
            v5 = v101;
            goto LABEL_274;
          }

          v82 = 0;
          v5 = v101;
        }

        else
        {
          v82 = 0;
          v5 = v101;
        }
      }

      else
      {
        if (sub_10001C368(*(v116 + 56), *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
        {
          v9 = 0;
          v93 = 0;
          goto LABEL_274;
        }

        v82 = 0;
      }

LABEL_219:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_228;
      }

      v9 = *(a4 + 136);
      if (v9 > *(a4 + 160))
      {
        v84 = *(a4 + 112);
        v85 = *(a4 + 128);
        if (!v57)
        {
          if (sub_100031394(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115[0];
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          v84 = *(a4 + 112);
          v85 = *(a4 + 128);
          v9 = *(a4 + 136);
        }

        v86 = v84 - v48 + v85;
LABEL_227:
        *(a4 + 152) = v86;
        *(a4 + 160) = v9;
LABEL_228:
        v9 = *(a4 + 136);
      }

      v8 = v103;
      if (v9 && *(a4 + 128) + v9 == v38)
      {
        goto LABEL_243;
      }

      if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
      {
        v9 = 0;
        v93 = 0;
        *(a4 + 112) += v38 - v48;
LABEL_275:
        v11 = v104;
        v6 = v113;
        goto LABEL_276;
      }

      v9 = v82;
      if (!v82)
      {
        v87 = *(a4 + 48);
        v88 = v38 - v87;
        if (v38 < v87)
        {
          v88 = 0;
          v87 = v38;
        }

        if (sub_10001C2E0(*(v116 + 56), v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
        {
          if (*(a4 + 190) == 1)
          {
            v90 = *(a4 + 191);
          }

          else
          {
            v90 = 0;
          }

          v9 = v38 + ~v89;
          sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v90 & 1, v89 - v48 + *(a4 + 112) + 1, v9);
        }

        else
        {
          v9 = 0;
        }
      }

LABEL_243:
      *(a4 + 136) = 0;
      v91 = *(a4 + 112) + v38 - v48;
      *(a4 + 112) = v91;
      v92 = *(a4 + 172);
      v11 = v104;
      v6 = v113;
      if (v92 == *(a4 + 176) && v91 >= *(a4 + 80) && v91 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v92 == *(a4 + 180) && v91 >= *(a4 + 64) && v91 < *(a4 + 72))
      {
        v9 = 0;
        v91 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v91;
      }

      if (v91 >= *&v104[12 * v92])
      {
        v9 = 0;
        *(a4 + 112) = 0;
      }

      if (v116)
      {
        sub_100037058(v116);
      }

      v116 = 0;
      if (!v113)
      {
        goto LABEL_262;
      }

      v28 = v111;
      v29 = v109;
      if ((*(a4 + 190) & 1) == 0 || v9)
      {
        goto LABEL_107;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (!sub_10002A2E8(*(v107 + 8 * *(a4 + 172)), v113))
        {
          v9 = 0;
LABEL_262:
          v28 = v111;
          v29 = v109;
          goto LABEL_107;
        }

        v96 = *(a4 + 104);
        if (v96 > *(a4 + 160))
        {
          *(a4 + 152) = *(a4 + 96);
          *(a4 + 160) = v96;
        }

        v9 = 0;
        v93 = 0;
        *(a4 + 192) = 1;
LABEL_276:
        if (*(a4 + 136))
        {
          goto LABEL_302;
        }

        goto LABEL_277;
      }

LABEL_106:
      v9 = 0;
LABEL_107:
      if (++v7 >= v30)
      {
        v93 = 0;
        LODWORD(v7) = v30;
        goto LABEL_276;
      }
    }

    v78 = *(a4 + 48);
    v79 = v78 <= v38 - v48;
    if (v78 >= v38 - v48)
    {
      v80 = v38 - v48;
    }

    else
    {
      v80 = *(a4 + 48);
    }

    *(a4 + 128) = v48;
    *(a4 + 136) = v80;
    v81 = v78 <= v38 - v48 && v57;
    if (v79)
    {
      v82 = v38 - v48;
    }

    else
    {
      v82 = 0;
    }

    if (!v81)
    {
      if (*(a4 + 190) == 1)
      {
        v83 = *(a4 + 191);
      }

      else
      {
        v83 = 0;
      }

      sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v83 & 1, *(a4 + 112), v80);
      goto LABEL_219;
    }

    v9 = 0;
    v93 = 0;
    v8 = v103;
    v11 = v104;
    v6 = v113;
    if (v80)
    {
      break;
    }

LABEL_277:
    v95 = *(a4 + 160);
    if (v95 == *(a4 + 48))
    {
      break;
    }

    if (v9 || !v95)
    {
      if (v93)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v93)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    sub_100037058(v117);
    v117 = 0;
    ++v8;
    v12 = *(a4 + 172);
    v10 = v109;
  }

  while (v8 <= v11[12 * v12 + 4]);
LABEL_302:
  *(a4 + 193) = v8 == v11[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v118)
  {
    sub_100037058(v118);
    v118 = 0;
  }

  if (v117)
  {
    sub_100037058(v117);
    v117 = 0;
  }

  if (v116)
  {
    sub_100037058(v116);
  }

  return v93;
}

uint64_t sub_10004988C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v115 = 0;
  v119 = 0;
  v117 = 0;
  v12 = *(a3 + 376);
  v139 = 0;
  v140 = 0;
  v138 = 0;
  memset(v137, 170, sizeof(v137));
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v114 = v13;
  v112 = (v13 + 505);
  v113 = (a2 + 505);
  v116 = a8 & 0x10001;
  v118 = -1;
  v132 = a4;
  v125 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v135 = v12[17];
    if (v135)
    {
      v16 = v15 / v12[11];
      if (v16 != v118 || v115 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v140)
        {
          sub_100037058(v140);
          v140 = 0;
        }

        v137[1] = v12;
        LODWORD(v137[2]) = 0;
        HIDWORD(v137[2]) = v16;
        v119 = v18;
        v19 = sub_10003A1E8(a1[49], 1073741829, v18, &xmmword_10006A940, &v137[1], 0, 0, v8, &v140);
        if (v19)
        {
          v107 = v19;
          sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v119, v19);
          v108 = 1;
          goto LABEL_156;
        }

        v115 = *(v140 + 56);
        v118 = v16;
      }

      else
      {
        sub_10003BBDC(v140, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (sub_100038020(v140) == v8)
      {
        v22 = v119;
        v23 = v118;
      }

      else
      {
        v24 = sub_1000425C0(a1, v11, v8, v137);
        if (v24)
        {
          v107 = v24;
          if (sub_100011490(a1))
          {
            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v107);
          }

          v108 = 1;
          v117 = 1;
          goto LABEL_157;
        }

        v22 = v137[0];
        v23 = v118;
        *(*(v11 + 896) + 8 * v118) = v137[0];
        sub_10003D180(v140, v8, v22);
        v25 = sub_10004CD70(a1, v11, v119, v8);
        if (v25)
        {
          v107 = v25;
          sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v119, v25);
          v108 = 1;
          v117 = 1;
          goto LABEL_157;
        }
      }

      v21 = v115 + 40;
      v26 = *(v125 + 40);
      LODWORD(v15) = v15 - *(v125 + 44) * v23;
      v137[1] = v125;
      LODWORD(v137[2]) = 0;
      HIDWORD(v137[2]) = v14 / v26;
      v117 = 1;
      v119 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v137[1] = v20;
      LODWORD(v137[2]) = 0;
      HIDWORD(v137[2]) = v15;
      if (!v21)
      {
        v107 = 22;
        v108 = 1;
        goto LABEL_156;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = sub_10003A1E8(a1[49], 1073741829, v27, &xmmword_10006A950, &v137[1], 0, 0, v8, &v139);
    if (v28)
    {
      v107 = v28;
      if (v118 == -1)
      {
        v106 = 0;
      }

      else
      {
        v106 = *(v125 + 44) * v118;
      }

      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v106 + v15, v27, v28);
      v108 = 1;
      goto LABEL_153;
    }

    v126 = *(v139 + 56);
    if (sub_100038020(v139) == v8)
    {
      v123 = v27;
      v29 = v125;
      v30 = v132;
      goto LABEL_29;
    }

    v31 = sub_1000425C0(a1, v11, v8, v137);
    if (v31)
    {
      v107 = v31;
      sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_150;
    }

    v123 = v137[0];
    *(v21 + 8 * v15) = v137[0];
    if (v140)
    {
      sub_10003D180(v140, v8, v119);
    }

    sub_10003D180(v139, v8, v123);
    v32 = sub_10004CD70(a1, v11, v27, v8);
    v29 = v125;
    v30 = v132;
    if (v32)
    {
      break;
    }

LABEL_29:
    if (!v135)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v140)
    {
      sub_10003C190(v140, 2);
      v117 = 0;
    }

    v133 = v14 % *(v29 + 40);
    v127 = v126 + 40;
    v33 = v126 + 40 + 32 * v133;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v107 = sub_1000033FC(a1);
        v108 = 0;
      }

      else
      {
        v108 = 0;
        v107 = 22;
      }

      goto LABEL_157;
    }

    while (1)
    {
LABEL_35:
      if (v35)
      {
        v36 = sub_10003A1E8(a1[49], 1073741825, v35, &xmmword_10006A960, 0, 0, 0, v8, &v138);
        if (v36)
        {
          v105 = v36;
          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_144;
        }

        v37 = *(v138 + 56);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v29 + 36);
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v136 = v40;
      v129 = a5;
      if (v35 && *v33 == a6)
      {
        v128 = v35;
        goto LABEL_50;
      }

      v41 = sub_1000425C0(a1, v11, a6, v137);
      if (v41)
      {
        v104 = v41;
        sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v108 = 0;
        v107 = v104;
        goto LABEL_157;
      }

      *v33 = a6;
      v42 = v137[0];
      *v34 = v137[0];
      v128 = v42;
      if (v35)
      {
        sub_10003D180(v138, a6, v42);
        v43 = sub_10004CD70(a1, v11, v35, a6);
        if (v43)
        {
          v105 = v43;
          sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_144:
          v108 = 0;
          v107 = v105;
          goto LABEL_157;
        }
      }

      else
      {
        v44 = sub_100038AF0(a1[49], 0x40000000, v42, &xmmword_10006A960, 0, 0, a6, &v138);
        if (v44)
        {
          v107 = v44;
          sub_100012178("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v128, v44);
          v108 = 0;
          goto LABEL_157;
        }

        v37 = *(v138 + 56);
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = sub_10001C584(v37, 0, v39, v136 + v39);
        v47 = v46;
        if (v46)
        {
          sub_100012178("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v30, a5, v46);
        }

        v48 = a1[47];
        v49 = *(v48 + 1248);
        v50 = v127 + 32 * v133;
        if (v49)
        {
          v51 = *(v48 + 1240);
          v141 = 0xAAAAAAAAAAAAAAAALL;
          v52 = sub_100011DE8(v30, v136, v51, v49, &v141);
          v53 = v52;
          if (v52)
          {
            v52 = sub_10001C584(v37, 0, v141 - *(v50 + 8), v141 + v52 - *(v50 + 8));
          }

          v54 = v10;
          v55 = v47 - v52;
        }

        else
        {
          v54 = v10;
          v53 = 0;
          v55 = v47;
        }

        sub_10001C18C(v37, v39, v136);
        sub_10004C308(a3, v37, v30 / *(v45 + 36));
        *(v50 + 20) += v136 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v136 - v53 - v55;
        a5 = v129;
        v8 = a6;
        v59 = v133;
        v10 = v54;
        v11 = a3;
        if (a8)
        {
          v76 = *(a3 + 984);
          v64 = v76 >= v136;
          v77 = v76 - v136;
          if (!v64)
          {
            v77 = 0;
          }

          *(a3 + 984) = v77;
        }

LABEL_128:
        pthread_mutex_unlock((v11 + 576));
        v79 = 0;
        v107 = 0;
        v78 = 1;
        goto LABEL_129;
      }

      v56 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v56 >= v136)
      {
        v57 = v136;
      }

      else
      {
        v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (sub_10001BFA8(v37, v39, v57, v56))
      {
        sub_10001C098(v37, v39, v57, v58);
        v59 = v133;
        sub_10004C308(v11, v37, v133 + *(v45 + 40) * *(v126 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (!v64)
          {
            v75 = 0;
          }

          v120 = v75;
        }

        else
        {
          v70 = 0;
          v120 = 0;
        }

        v80 = a2;
        *(v33 + 20) -= v57;
        *(v45 + 72) = v60 - v57;
        v8 = a6;
        if (a8)
        {
          v82 = *(v11 + 848);
          if (*(v11 + 832) < v82)
          {
            panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
          }

          if ((a8 & 0x40) != 0)
          {
            if (v82 < v57)
            {
              panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v57);
            }

            *(v11 + 848) = v82 - v57;
            *(v11 + 832) -= v57;
            v80 = a2;
          }

          else
          {
            v83 = *(v11 + 832);
            if (v83 - v82 >= v57)
            {
              v82 = v83 - v57;
            }

            else if (sub_100036630(v114) == 13)
            {
              sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v112, *(v11 + 832) - v82, v82, v57);
            }

            else
            {
              sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v114 + 384) + 212), *(v11 + 832) - v82, v82, v57);
            }

            v80 = a2;
            *(v11 + 832) = v82;
          }

          v59 = v133;
          if (v80)
          {
            v84 = v80[51];
            v64 = v84 >= v57;
            v85 = v84 - v57;
            if (!v64)
            {
              v86 = sub_100036630(v80);
              v87 = v113;
              if (v86 != 13)
              {
                v87 = (a2[48] + 212);
              }

              sub_100012178("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v57);
              v80 = a2;
              v85 = 0;
            }

            v80[51] = v85;
            goto LABEL_102;
          }

          v81 = 0;
        }

        else
        {
          if (!a2)
          {
            v81 = 0;
LABEL_119:
            if (*(v11 + 1616))
            {
              v98 = v57 - v81;
              if ((a8 & 0x10000) != 0)
              {
                v101 = *(v11 + 1640);
                if (v98 <= v70)
                {
                  v102 = v101 + v98;
                }

                else
                {
                  v102 = v101 + v70;
                }

                *(v11 + 1640) = v102;
              }

              else
              {
                v99 = v98 > v120;
                v100 = v98 - v120;
                if (v99)
                {
                  *(v11 + 1656) += v100;
                }
              }
            }

            goto LABEL_128;
          }

LABEL_102:
          v88 = v80[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v57 >= v91)
          {
            v81 = v91;
          }

          else
          {
            v81 = v57;
          }

          v92 = v90 + v57;
          *(v88 + 88) = v92;
          *(v45 + 192) += v81;
          if (v89)
          {
            v64 = v89 >= v92;
            v93 = v89 - v92;
            if (!v64)
            {
              v93 = 0;
            }

            v94 = v80[52];
            if (v93 >= v80[51])
            {
              v93 = v80[51];
            }

            v95 = *(v11 + 864);
            v80[52] = v93;
            *(v11 + 864) = v93 - v94 + v95;
          }

          sub_100019634(v80, a6);
        }

        if (v116 == 65537)
        {
          v96 = *(v11 + 1632);
          v64 = v96 >= v57;
          v97 = v96 - v57;
          if (!v64)
          {
            v97 = 0;
          }

          *(v11 + 1632) = v97;
        }

        goto LABEL_119;
      }

      v78 = 0;
      v107 = 22;
      v79 = 1;
      v8 = a6;
      v59 = v133;
LABEL_129:
      sub_10003D180(v11, v8, 0);
      sub_10003D180(v139, v8, v123);
      sub_10003D180(v138, v8, v128);
      sub_100037058(v138);
      v138 = 0;
      v30 += v136;
      v10 += v136;
      a5 -= v136;
      if (!v78 || a5 < 1 || v59 >= (*(v126 + 36) - 1))
      {
        break;
      }

      v133 = v59 + 1;
      v33 = v127 + 32 * (v59 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v125;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    v132 = v30;
    sub_10003C190(v139, 2);
    sub_100037058(v139);
    v139 = 0;
    if (a5 < 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v79;
    }

    v12 = v125;
    if (v103)
    {
      v108 = 1;
      goto LABEL_157;
    }
  }

  v107 = v32;
  sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_150:
  v108 = 0;
LABEL_153:
  if (!v135)
  {
LABEL_156:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_157:
  if (v140 && (v117 & 1) != 0)
  {
    sub_10003C190(v140, 2);
  }

  if (v139)
  {
    v109 = v108;
  }

  else
  {
    v109 = 1;
  }

  if ((v109 & 1) == 0)
  {
    sub_10003C190(v139, 2);
  }

  if (v140)
  {
    sub_100037058(v140);
  }

  if (v139)
  {
    sub_100037058(v139);
  }

  if (v138)
  {
    sub_100037058(v138);
  }

  if (a7 == 1)
  {
    if (v107)
    {
      if (a5)
      {
        v110 = *(v11 + 984);
        if (v110)
        {
          *(v11 + 984) = v110 - a5;
        }
      }
    }
  }

  return v107;
}
uint64_t sub_10000E694(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    sub_100037058(v2);
  }

  j__pthread_mutex_destroy((a1 + 864));
  j__pthread_mutex_destroy((a1 + 672));
  j__pthread_mutex_destroy((a1 + 1120));
  j__pthread_mutex_destroy((a1 + 752));
  j__pthread_mutex_destroy((a1 + 504));
  sub_100011944((a1 + 568));
  return 0;
}

uint64_t sub_10000E700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v6 = sub_100042E24(a1, &v46);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 400);
    if (!v8 || !*(v8 + 76))
    {
      LODWORD(v9) = 739;
      sub_100012178("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v7 = sub_100044354(a1, a2, v46, a3);
  sub_100037058(v46);
  if (v7)
  {
    v10 = *(a1 + 400);
    if (!v10 || !*(v10 + 76))
    {
      LODWORD(v9) = 746;
      sub_100012178("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v13 = *(a1 + 376);
  v14 = *(v13 + 160);
  if (v14 && !*(a1 + 744))
  {
    v17 = sub_10003A1E8(*(a1 + 392), 0x40000000uLL, v14, &xmmword_10006A8D8, 0, 0, 0, 0, &v44);
    if (v17)
    {
      v7 = v17;
      v18 = *(a1 + 400);
      if (!v18 || !*(v18 + 76))
      {
        LODWORD(v9) = 756;
        sub_100012178("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = sub_10003FB1C(a1, a2, v44, a3);
    sub_100037058(v44);
    if (v7)
    {
      v20 = *(a1 + 400);
      if (!v20 || !*(v20 + 76))
      {
        LODWORD(v9) = 762;
        sub_100012178("%s:%d: %s omap checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v13 = *(a1 + 376);
  }

  if (*(v13 + 168))
  {
    v15 = sub_10000EDC8(a1, &v45);
    if (v15)
    {
      v7 = v15;
      v16 = *(a1 + 400);
      if (!v16 || !*(v16 + 76))
      {
        LODWORD(v9) = 775;
        sub_100012178("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = sub_10000EE4C(a1, a2, v45, a3);
    sub_100037058(v45);
    if (v7)
    {
      v19 = *(a1 + 400);
      if (!v19 || !*(v19 + 76))
      {
        LODWORD(v9) = 782;
        sub_100012178("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v13 = *(a1 + 376);
  }

  if (*(v13 + 180))
  {
    for (i = 0; i < *(v13 + 180); ++i)
    {
      v22 = *(v13 + 8 * i + 184);
      if (v22)
      {
        v23 = sub_10003A1E8(*(a1 + 392), 0, v22, &xmmword_10006A8A8, 0, 0, 0, 0, &v43);
        if (v23)
        {
          v7 = v23;
          v29 = *(a1 + 400);
          if (v29 && *(v29 + 76))
          {
            return v7;
          }

          v30 = "<UNKNOWN>";
          if (a3 == 2)
          {
            v30 = "FIXUP";
          }

          if (a3 == 1)
          {
            v30 = "START";
          }

          v37 = v30;
          v38 = v23;
          v35 = i;
          v36 = v22;
          v34 = *(a1 + 384) + 212;
          v9 = 796;
          v28 = "%s:%d: %s failed to get fs[%d] oid %lld for checkpoint %s traverse: %d\n";
LABEL_58:
          sub_100012178(v28, "nx_checkpoint_traverse", v9, v34, v35, v36, v37, v38, v39);
LABEL_9:
          v11 = *(a1 + 400);
          if (v11)
          {
LABEL_10:
            *(v11 + 76) = v9;
            ++*(v11 + 80);
          }

          return v7;
        }

        v7 = sub_10002E140(a1, a2, v43, a3);
        sub_100037058(v43);
        if (v7)
        {
          v31 = *(a1 + 400);
          if (!v31 || !*(v31 + 76))
          {
            LODWORD(v9) = 802;
            sub_100012178("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n");
            goto LABEL_9;
          }

          return v7;
        }

        v13 = *(a1 + 376);
      }
    }
  }

  if (!*(v13 + 1344) || !sub_100038364(*(v13 + 176)))
  {
    return 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  v40 = 0;
  v24 = sub_100038E6C(*(*(a1 + 376) + 176), &v40, v42);
  HIDWORD(v42[0]) = 255;
  if (v24 || (v24 = sub_10003A1E8(*(a1 + 392), v40, *(*(a1 + 376) + 1344), v42, 0, 0, 0, 0, &v41), v24))
  {
    v7 = v24;
    v25 = *(a1 + 400);
    if (!v25 || !*(v25 + 76))
    {
      v26 = *(a1 + 376);
      v27 = "<UNKNOWN>";
      if (a3 == 2)
      {
        v27 = "FIXUP";
      }

      if (a3 == 1)
      {
        v27 = "START";
      }

      v38 = v27;
      v39 = v24;
      v36 = *(v26 + 176);
      v37 = 255;
      v34 = *(a1 + 384) + 212;
      v35 = *(v26 + 1344);
      v9 = 823;
      v28 = "%s:%d: %s unable to get test object 0x%llx of type 0x%x/0x%x for checkpoint %s traverse: %d\n";
      goto LABEL_58;
    }
  }

  else
  {
    v7 = sub_10003D394(a1, a2, v41, a3);
    sub_100037058(v41);
    if (v7)
    {
      v32 = *(a1 + 400);
      if (!v32 || !*(v32 + 76))
      {
        v33 = "<UNKNOWN>";
        if (a3 == 2)
        {
          v33 = "FIXUP";
        }

        if (a3 == 1)
        {
          v33 = "START";
        }

        LODWORD(v9) = 829;
        sub_100012178("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", "nx_checkpoint_traverse", 829, (*(a1 + 384) + 212), v33, *(*(a1 + 376) + 1344), *(*(a1 + 376) + 176), 255, v7);
        v11 = *(a1 + 400);
        if (v11)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_10000EDC8(void *a1, uint64_t *a2)
{
  v3 = a1[53];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = sub_10003A1E8(a1[49], 0x80000000, *(a1[47] + 168), &xmmword_10006A7C0, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    sub_10003C894(v3);
    return 0;
  }

  return result;
}

uint64_t sub_10000EE4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 376);
  v36 = 0;
  if (a4 == 2)
  {
    v7 = sub_10003D308(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      return v8;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = sub_10003D294(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v6 + 88) && sub_100038364(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v9 = sub_10000F5D0(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v36, &v37);
      if (v9)
      {
        v8 = v9;
        v10 = a1[50];
        if (!v10 || !*(v10 + 76))
        {
          sub_100012178("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v9);
        }
      }

      else
      {
        if (v36)
        {
          v32 = v36;
        }

        else
        {
          v32 = a1;
        }

        v8 = sub_10003D394(v32, a2, v37, a4);
        sub_100037058(v37);
      }

      if (v36)
      {
        sub_100037058(v36);
        v36 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return v8;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return v8;
  }

  v12 = *(v6 + 68);
  do
  {
    v13 = sub_10003A1E8(a1[49], 0x80000000uLL, v11, &xmmword_10006A7D0, 0, 0, 0, 0, &v38);
    if (v13)
    {
      v8 = v13;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        sub_100012178("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v11, v13);
      }

      return v8;
    }

    v14 = v38[47];
    v34 = v12;
    if (a4 == 2)
    {
      v15 = sub_10003D308(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = sub_10003D294(v38);
LABEL_23:
      v8 = v15;
      goto LABEL_25;
    }

    v8 = 0;
LABEL_25:
    v35 = *(v14 + 32);
    if (v8)
    {
      goto LABEL_56;
    }

    v16 = *(v14 + 52);
    if (v16 == -1)
    {
      goto LABEL_56;
    }

    v17 = v14 + 64;
    v18 = -1;
    while (1)
    {
      v19 = v17 + 40 * v16;
      v20 = *v19;
      if (*v19 != -1 && v20 > *(v14 + 44))
      {
        break;
      }

      v21 = *(v19 + 8);
      if (v21 != *(v6 + 72) || *(v19 + 24) != *(v6 + 88))
      {
        if (v18 == -1 || (v22 = v17 + 40 * v18, v21 != *(v22 + 8)) || *(v19 + 24) != *(v22 + 24))
        {
          v8 = 0;
          if ((*(v19 + 4) & 0x10) != 0 || (*(v19 + 4) & 6) == 2)
          {
            goto LABEL_49;
          }

          if (sub_100038364(v21))
          {
            v23 = sub_10000F5D0(a1, *(v19 + 8), *(v19 + 12), *(v19 + 16), *(v19 + 24), &v36, &v37);
            if (v23)
            {
              v8 = v23;
              v24 = a1[50];
              if (!v24 || !*(v24 + 76))
              {
                sub_100012178("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v19 + 24), v23);
              }
            }

            else
            {
              if (v36)
              {
                v25 = v36;
              }

              else
              {
                v25 = a1;
              }

              v8 = sub_10003D394(v25, a2, v37, a4);
              sub_100037058(v37);
            }

            if (v36)
            {
              sub_100037058(v36);
              v36 = 0;
            }

            goto LABEL_49;
          }
        }
      }

      v8 = 0;
LABEL_49:
      if (!v8)
      {
        v18 = v16;
        v16 = v20;
        if (v20 != -1)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v26 = a1[50];
    if (!v26 || !*(v26 + 76))
    {
      sub_100012178("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v16, v20);
    }

    sub_100037058(v38);
    v8 = sub_1000033FC(a1);
LABEL_56:
    v27 = *(v6 + 68);
    if (v27)
    {
      v11 = v35;
      v12 = (v34 - 1);
      if (v35 && v34 == 1)
      {
        v28 = a1[50];
        if (!v28 || !*(v28 + 76))
        {
          sub_100012178("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), v27);
        }

        v8 = sub_1000033FC(a1);
        v12 = 0;
      }

      else if (!v35 && v34 != 1)
      {
        v29 = a1[50];
        if (!v29 || !*(v29 + 76))
        {
          sub_100012128("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *(v6 + 68), v34 - 1);
        }
      }
    }

    else
    {
      v12 = v34;
      v11 = v35;
    }

    sub_100037058(v38);
  }

  while (!v8 && v11);
  return v8;
}

uint64_t sub_10000F2F8(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t sub_10000F31C(void *a1)
{
  v2 = a1[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 108);
  v6 = (sub_10003835C(a1) & 0xFFFFFFFCLL) - 112;
  if (v3 < v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 >= v5)
  {
    v8 = v3 >= v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v2 + 68);
  if (v9 == 1)
  {
    v10 = *(v2 + 48) == *(v2 + 56);
  }

  else
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (*(v2 + 48))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 56) == 0;
  }

  if (!v10 || v8)
  {
LABEL_19:
    result = sub_1000033FC(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_20:
  a1[47] = v2;
  v13 = sub_10003835C(a1);
  result = 0;
  a1[48] = v2 + v13 - *(v2 + 108);
  return result;
}

uint64_t sub_10000F3F8(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 64) / 0x28;
  *(a1 + 44) = v2;
  *(a1 + 52) = -1;
  *(a1 + 60) = 0;
  v3 = (v2 - 1);
  if (v3)
  {
    v4 = vdupq_n_s64(v3 - 1);
    v5 = (v3 + 3) & 0x1FFFFFFFCLL;
    v6 = xmmword_10006A780;
    v7 = xmmword_10006A790;
    v8 = (a1 + 104);
    v9 = vdupq_n_s64(1uLL);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v7));
      v12 = vaddq_s64(v7, v9);
      if (vuzp1_s16(v11, *v4.i8).u8[0])
      {
        *(v8 - 10) = v12.i32[0];
      }

      if (vuzp1_s16(v11, *&v4).i8[2])
      {
        *v8 = v12.i32[2];
      }

      v13 = vaddq_s64(v6, v9);
      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v6))).i32[1])
      {
        v8[10] = v13.i32[0];
        v8[20] = v13.i32[2];
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 += 40;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  *(a1 + 40 * v3 + 64) = -1;
  return 0;
}

uint64_t sub_10000F4EC(void *a1)
{
  v2 = a1[7];
  v3 = v2[11];
  v4 = v3 > ((sub_10003835C(a1) - 64) / 0x28);
  v6 = v2[11];
  v5 = v2[12];
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v5 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[13];
  v10 = v2[14];
  if (v9 != -1 && v9 >= v6)
  {
    ++v8;
  }

  if (v10 != -1 && v10 >= v6)
  {
    ++v8;
  }

  v13 = v2[15];
  if (v13 != -1 && v13 >= v6)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v8;
  }

  if (v5 == 1)
  {
    v16 = v9 == v10;
  }

  else
  {
    if (v5)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v16 = v9 == -1 && v10 == -1;
  }

  if (!v16 || v15 != 0)
  {
LABEL_36:
    result = sub_1000033FC(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  result = 0;
  a1[47] = v2;
  return result;
}

uint64_t sub_10000F5D0(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, uint64_t **a6, uint64_t *a7)
{
  v11 = a2;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a7 = 0;
  *a6 = 0;
  if (a4)
  {
    v14 = sub_10003A1E8(a1[49], 0, a4, &xmmword_10006A8A8, 0, 0, 0, 0, &v24);
    if (v14)
    {
      v15 = v14;
      sub_100012178("%s:%d: %s unable to get fs object 0x%llx: %d\n", "nx_reaper_obj_get", 1038, (a1[48] + 212), a4, v14);
      return v15;
    }

    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  *a6 = v17;
  if ((v11 & 0x4000FFFF) == 0x4000000B)
  {
    v18 = (v17 ? v17 : a1);
    if (!sub_10003F944(v18, 0, 0, a7))
    {
      return 0;
    }
  }

  v19 = sub_100038E6C(v11, &v23, &v21);
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    LODWORD(v22) = a3;
    v16 = sub_10003A1E8(a1[49], v23, a5, &v21, 0, v24, 0, 0, a7);
    if (!v16)
    {
      return v16;
    }
  }

  sub_100012178("%s:%d: %s unable to get object 0x%llx: %d\n", "nx_reaper_obj_get", 1059, (a1[48] + 212), a5, v16);
  if (v24)
  {
    sub_100037058(v24);
  }

  *a7 = 0;
  *a6 = 0;
  return v16;
}

uint64_t sub_10000F78C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, void *a8)
{
  v14 = a2;
  v42 = 0;
  memset(v43, 170, sizeof(v43));
  v16 = sub_10000EDC8(a1, &v43[2]);
  if (v16)
  {
    return v16;
  }

  v17 = *(v43[2] + 376);
  v16 = sub_100039ABC(v14, &v42);
  if (v16)
  {
LABEL_3:
    sub_100012178("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_ext", 1255, (a1[48] + 212), v14, v16);
LABEL_14:
    sub_100037058(v43[2]);
    return v16;
  }

  if (!*(v42 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  sub_10003BBDC(v43[2], 2);
  v18 = sub_10003BC6C(v43[2], 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    sub_10003C190(v43[2], 2);
    goto LABEL_14;
  }

  v19 = a1[49];
  if (*(v17 + 48) == 0)
  {
    v20 = sub_100038AF0(v19, 0x80000000, 0, &xmmword_10006A7D0, 0, 0, a6, &v43[1]);
    if (v20)
    {
      v16 = v20;
      sub_100012178("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_13;
    }

    v23 = sub_100038018(v43[1]);
    *(v17 + 48) = v23;
    *(v17 + 56) = v23;
    v24 = (v17 + 68);
    goto LABEL_17;
  }

  v21 = sub_10003A1E8(v19, 2147483649, *(v17 + 56), &xmmword_10006A7D0, 0, 0, 0, a6, &v43[1]);
  if (v21)
  {
    v16 = v21;
    sub_100012178("%s:%d: %s failed to get reap list tail: %d\n");
    goto LABEL_13;
  }

  v24 = (v17 + 68);
  if (!*(v17 + 68) && *(v17 + 48) == *(v17 + 56))
  {
LABEL_17:
    *v24 = 1;
    sub_10003D180(v43[2], a6, 0);
  }

  v25 = *(v43[1] + 376);
  if (v25[12] > (v25[11] - 2))
  {
    v26 = sub_100038AF0(a1[49], 0x80000000, 0, &xmmword_10006A7D0, 0, 0, a6, v43);
    if (v26)
    {
      v16 = v26;
      sub_10003C190(v43[2], 2);
      sub_100037058(v43[1]);
      goto LABEL_14;
    }

    v27 = sub_100038018(v43[0]);
    *(*(v43[1] + 376) + 32) = v27;
    *(v17 + 56) = sub_100038018(v43[0]);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    sub_10003D180(v43[2], a6, 0);
    sub_100037058(v43[1]);
    v43[1] = v43[0];
    v25 = *(v43[0] + 376);
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    sub_100012178("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (a1[48] + 212));
    sub_10003C190(v43[2], 2);
    sub_100037058(v43[1]);
    sub_100037058(v43[2]);
    v41 = a1;
    return sub_1000033FC(v41);
  }

  v31 = v25 + 16;
  v32 = &v25[10 * v30 + 16];
  v33 = *v32;
  v25[15] = *v32;
  v34 = v25[14];
  if (v34 != -1)
  {
    v31[10 * v34] = v30;
  }

  if (v25[13] == -1)
  {
    v25[13] = v30;
  }

  v25[14] = v30;
  v35 = v25[12];
  v25[12] = v35 + 1;
  if ((a7 & 2) != 0)
  {
    v36 = 21;
  }

  else
  {
    v36 = 5;
  }

  *v32 = -1;
  *(v32 + 4) = v36;
  *(v32 + 8) = v14;
  *(v32 + 12) = a3;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = a6;
  if (v33 == -1)
  {
    sub_100012178("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1356, (a1[48] + 212));
    sub_10003C190(v43[2], 2);
    sub_100037058(v43[1]);
    sub_100037058(v43[2]);
    v41 = a1;
    return sub_1000033FC(v41);
  }

  v37 = &v31[10 * v33];
  v38 = *v37;
  *v32 = v33;
  v25[14] = v33;
  v25[15] = v38;
  v25[12] = v35 + 2;
  if ((a7 & 2) != 0)
  {
    v39 = 19;
  }

  else
  {
    v39 = 3;
  }

  if (a7)
  {
    v39 |= 0xCu;
  }

  *v37 = -1;
  v37[1] = v39;
  v37[2] = v14;
  v37[3] = a3;
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  *(v37 + 4) = v29;
  sub_10003D180(v43[1], a6, 0);
  sub_10003C190(v43[2], 2);
  sub_100037058(v43[1]);
  sub_100037058(v43[2]);
  if (!a8)
  {
    return 0;
  }

  v40 = v29;
  v16 = 0;
  *a8 = v40;
  return v16;
}

uint64_t sub_10000FC54(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v12 = a2;
  v40 = 0;
  memset(v41, 170, sizeof(v41));
  v14 = sub_10000EDC8(a1, &v41[2]);
  if (v14)
  {
    return v14;
  }

  v15 = *(v41[2] + 376);
  v14 = sub_100039ABC(v12, &v40);
  if (v14)
  {
LABEL_3:
    sub_100012178("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_sub_object", 1442, (a1[48] + 212), v12, v14);
LABEL_4:
    sub_100037058(v41[2]);
    return v14;
  }

  if (!*(v40 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  sub_10003BBDC(v41[2], 2);
  v17 = sub_10003BC6C(v41[2], 0, a6);
  if (v17)
  {
    v14 = v17;
    sub_10003C190(v41[2], 2);
    goto LABEL_4;
  }

  v18 = *(v15 + 48);
  if (!v18 && !*(v15 + 56))
  {
    v21 = sub_100038AF0(a1[49], 0x80000000, 0, &xmmword_10006A7D0, 0, 0, a6, &v41[1]);
    if (v21)
    {
      v14 = v21;
      sub_100012178("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_14;
    }

    v22 = sub_100038018(v41[1]);
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    v20 = (v15 + 68);
    goto LABEL_21;
  }

  v19 = sub_10003A1E8(a1[49], 2147483649, v18, &xmmword_10006A7D0, 0, 0, 0, a6, &v41[1]);
  if (v19)
  {
    v14 = v19;
    sub_100012178("%s:%d: %s failed to get reap list head: %d\n");
LABEL_14:
    sub_100012178("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_add_sub_object", 1478, (a1[48] + 212), v14);
    sub_10003C190(v41[2], 2);
    sub_100037058(v41[2]);
    return v14;
  }

  v20 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v20 = 1;
    sub_10003D180(v41[2], a6, 0);
  }

  v23 = *(v41[1] + 376);
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = sub_100038AF0(a1[49], 0x80000000, 0, &xmmword_10006A7D0, 0, 0, a6, v41);
    if (v24)
    {
      v14 = v24;
      sub_10003C190(v41[2], 2);
      sub_100037058(v41[1]);
      goto LABEL_4;
    }

    v25 = v41[0];
    *(*(v41[0] + 376) + 32) = *(v15 + 48);
    *(v15 + 48) = sub_100038018(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    sub_10003D180(v41[2], a6, 0);
    sub_100037058(v41[1]);
    v41[1] = v41[0];
    v23 = *(v41[0] + 376);
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      sub_100012178("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (a1[48] + 212));
      sub_10003C190(v41[2], 2);
      sub_100037058(v41[1]);
      sub_100037058(v41[2]);
      v39 = a1;
      return sub_1000033FC(v39);
    }

    v28 = &v23[10 * v27];
    v31 = v28[16];
    v29 = v28 + 16;
    v30 = v31;
    v23[15] = v31;
    v32 = v23[14];
    *v29 = v23[13];
    v23[13] = v27;
    if (v32 == -1)
    {
      v23[14] = v27;
    }

    ++v23[12];
    if ((a7 & 2) != 0)
    {
      v33 = 29;
    }

    else
    {
      v33 = 13;
    }

    v29[1] = v33;
    v29[2] = v12;
    v29[3] = a3;
    *(v29 + 2) = a4;
    *(v29 + 3) = a5;
    *(v29 + 4) = a6;
    v27 = v30;
  }

  if (v27 == -1)
  {
    sub_100012178("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1542, (a1[48] + 212));
    sub_10003C190(v41[2], 2);
    sub_100037058(v41[1]);
    sub_100037058(v41[2]);
    v39 = a1;
    return sub_1000033FC(v39);
  }

  v34 = &v23[10 * v27];
  v36 = v34[16];
  v35 = v34 + 16;
  v23[15] = v36;
  v37 = v23[14];
  *v35 = v23[13];
  v23[13] = v27;
  if (v37 == -1)
  {
    v23[14] = v27;
  }

  ++v23[12];
  if ((a7 & 2) != 0)
  {
    v38 = 21;
  }

  else
  {
    v38 = 5;
  }

  v35[1] = v38;
  v35[2] = v12;
  v35[3] = a3;
  *(v35 + 2) = a4;
  *(v35 + 3) = a5;
  *(v35 + 4) = a6;
  sub_10003D180(v41[1], a6, 0);
  sub_10003C190(v41[2], 2);
  sub_100037058(v41[1]);
  sub_100037058(v41[2]);
  return 0;
}

void sub_100010110(uint64_t *a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10000EDC8(a1, &v6))
  {
    v2 = v6[47];
    sub_10003BBDC(v6, 2);
    if (!*(v2 + 88))
    {
      v3 = *(v2 + 48);
      if (!v3 || sub_10003A1E8(a1[49], 0x80000000uLL, v3, &xmmword_10006A7D0, 0, 0, 0, 0, &v5))
      {
        goto LABEL_4;
      }

      v4 = v5[47];
      if (!*(v4 + 48) && !*(v4 + 32))
      {
        sub_100037058(v5);
        goto LABEL_4;
      }

      sub_100037058(v5);
    }

    sub_10003C190(v6, 2);
    sub_1000101F8(a1);
    sub_10003BBDC(v6, 2);
LABEL_4:
    sub_10003C190(v6, 2);
    sub_100037058(v6);
  }
}

uint64_t sub_1000101F8(uint64_t *a1)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10000EDC8(a1, &v20);
  if (result)
  {
    return result;
  }

  v3 = v20[47];
  sub_10003BBDC(v20, 2);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    sub_10003C190(v20, 2);
    sub_100037058(v20);
    sub_100012088("%s:%d: reaper thread is exiting, returning EBUSY\n", "nx_reaper", 1698);
    return 16;
  }

  v5 = 0;
  *(v20 + 98) = 1;
  while (1)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    sub_10003C190(v4, 2);
    v19 = 0;
    v6 = sub_10004E8AC(a1, &v19);
    sub_10003BBDC(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    v7 = sub_10003BC6C(v20, 0, v19);
    v4 = v20;
    if (v7)
    {
      v6 = v7;
      v13 = 0;
      goto LABEL_39;
    }

    if (*(v3 + 88))
    {
      goto LABEL_13;
    }

    if (*(v20 + 99))
    {
      goto LABEL_44;
    }

    v8 = sub_1000116E8(a1, v20, v19);
    if (v8)
    {
      break;
    }

    v4 = v20;
    if (!*(v3 + 88))
    {
LABEL_44:
      v13 = 0;
      v6 = 0;
      goto LABEL_39;
    }

LABEL_13:
    sub_10003C190(v4, 2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    v9 = sub_100039ABC(*(v3 + 72), &v18);
    if (v9)
    {
      goto LABEL_15;
    }

    if (!*(v18 + 24))
    {
      v9 = 22;
LABEL_15:
      sub_100012178("%s:%d: %s object type 0x%x not reapable?: %d\n", "nx_reaper", 1739, (a1[48] + 212), *(v3 + 72), v9);
      v5 = 1;
LABEL_16:
      sub_10003BBDC(v20, 2);
LABEL_17:
      if ((*(v3 + 104) & 2) != 0)
      {
        *(v3 + 40) = *(v3 + 96);
      }

      *(v3 + 64) &= ~2u;
      *(v3 + 88) = 0;
      goto LABEL_20;
    }

    v10 = sub_10000F5D0(a1, *(v3 + 72), *(v3 + 76), *(v3 + 80), *(v3 + 88), &v16, &v17);
    if (v10)
    {
      v11 = v10;
      sub_100012178("%s:%d: %s unable to get object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1744, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v10);
    }

    else
    {
      if ((*(v3 + 64) & 2) == 0)
      {
        bzero(v20[48], *(v3 + 108));
      }

      v12 = (*(v18 + 24))(v17, (*(v3 + 104) >> 3) & 3, v20[48], *(v3 + 108), v19);
      v11 = v12;
      if (v12 && v12 != 36)
      {
        sub_100012178("%s:%d: %s error reaping object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1758, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v12);
      }

      sub_100037058(v17);
      if (v16)
      {
        sub_100037058(v16);
        v16 = 0;
      }
    }

    sub_10003BBDC(v20, 2);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    sub_10003D180(v20, v19, 0);
    sub_10003C190(v20, 2);
    sub_100042EA8(a1, 0, &v15, &v14, 0, 0);
    v6 = sub_10004E8BC(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    sub_10003BBDC(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    if (*(v20 + 99))
    {
      v6 = 0;
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    }
  }

  v6 = v8;
  v13 = 0;
  v4 = v20;
LABEL_39:
  *(v4 + 98) = 0;
  sub_10003C190(v4, 2);
  sub_100037058(v20);
  if ((v13 & 1) == 0)
  {
    sub_10004E8BC(a1, v19, 0);
  }

  if (v6 | v5)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

void sub_1000105D8(void *a1)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10000EDC8(a1, &v4))
  {
    sub_10003BBDC(v4, 2);
    v2 = v4;
    ++*(v4 + 99);
    sub_10003C190(v2, 2);
    v3 = a1[53];
    if (v3)
    {
      sub_100037058(v3);
      a1[53] = 0;
    }

    sub_100037058(v4);
  }
}

uint64_t sub_100010650(uint64_t *a1, unint64_t a2)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_10000EDC8(a1, &v8);
  if (!v4)
  {
    v5 = v8[7];
    sub_10003BBDC(v8, 2);
    v6 = *(v5 + 32);
    if (a2 == -1)
    {
      a2 = v6 - 1;
    }

    if (a2 >= v6)
    {
      sub_100012178("%s:%d: %s invalid reap_id (%llu), must be smaller than nr_next_reap_id (%llu)\n", "nx_reaper_wait", 1987, (a1[48] + 212), a2, v6);
      v4 = 22;
    }

    else
    {
      while (*(v5 + 40) < a2)
      {
        sub_10003C190(v8, 2);
        v4 = sub_1000101F8(a1);
        sub_10003BBDC(v8, 2);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v4 = 0;
    }

LABEL_10:
    sub_10003C190(v8, 2);
    sub_100037058(v8);
  }

  return v4;
}

uint64_t sub_10001074C(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100010780(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_100026FF8(a1, 0x88000000uLL, *a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, sub_10001074C, 0, &v9);
  if (!v5)
  {
    v5 = sub_100028138(v9, 0x40000000uLL, 0, a3, &v8);
    if (!v5)
    {
      sub_10002822C(v9, a3, &v7);
      *a2 = sub_100038018(v8);
    }

    if (v9)
    {
      sub_100037058(v9);
    }

    if (v8)
    {
      sub_100037058(v8);
    }
  }

  return v5;
}

uint64_t sub_100010858(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = a1 + 54;
  for (i = 54; i != 58; ++i)
  {
    v8 = a1[i];
    if (v8 && sub_100038018(a1[i]) == a2)
    {
      sub_10003C894(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  sub_10003BBDC(a1, 2);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = &a1[v9];
    v12 = v11[54];
    if (v12)
    {
      if (sub_100038018(v11[54]) == a2)
      {
        sub_10003C894(v12);
        *a3 = v12;
        sub_10003C190(a1, 2);
        return 0;
      }
    }

    else if (v10 == -1)
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 4);
  if (a2 < 0)
  {
    v14 = sub_100026FF8(a1, 2281701376, a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, sub_10001074C, 0, a3);
  }

  else
  {
    v14 = sub_100026FF8(a1, 0x40000000, a2, 0, 0, 0, 10, sub_10001074C, 0, a3);
    if (!v14 && v10 != -1)
    {
      v13 = *a3;
      v6[v10] = *a3;
      sub_10003C894(v13);
      v14 = 0;
    }
  }

  sub_10003C190(a1, 2);
  return v14;
}

uint64_t sub_1000109F8(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v5;
  v14[3] = v5;
  v14[0] = v5;
  v14[1] = v5;
  v6 = sub_100010858(a1, a2, &v19);
  if (!v6)
  {
    v18 = 0;
    sub_100025EF0(v14, v19, 0, 0, &v18, 8, 8, &v16, 0x10u);
    v6 = v7;
    if (!v7)
    {
      v9 = 0;
      while (!sub_100025F1C(v14))
      {
        if (v18 == v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_1000033FC(a1);
        }

        if (sub_100003530(a1[47], 0, v16, v17, 0))
        {
          v6 = sub_1000033FC(a1);
        }

        v10 = v17;
        if (v17 > a3 - v9)
        {
          v6 = sub_1000033FC(a1);
          v10 = v17;
        }

        if (v6)
        {
          goto LABEL_3;
        }

        v9 += v10;
        v11 = sub_100025F38(v14);
        if (v11)
        {
          v6 = v11;
          v12 = (a1[48] + 212);
          v13 = strerror(v11);
          sub_100012178("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_fragmented_sanity_check", 2351, v12, v13, v6);
          goto LABEL_3;
        }
      }

      if (a3 == v9)
      {
        v6 = 0;
      }

      else
      {
        v6 = sub_1000033FC(a1);
      }
    }

LABEL_3:
    sub_100037058(v19);
  }

  return v6;
}

uint64_t sub_100010BAC(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_100010858(a1, a2, &v16);
  if (!v8)
  {
    v15 = a3;
    v11 = 16;
    v12 = 8;
    v8 = sub_100025428(v16, 0, &v15, &v12, 8, &v13, &v11, 1, 0, 0);
    if (!v8)
    {
      v9 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        v8 = 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        v8 = 0;
        if (a5)
        {
          *a5 = v9;
        }
      }
    }

    sub_100037058(v16);
  }

  return v8;
}

uint64_t sub_100010C80(void *a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a1[60];
  if (!v8)
  {
    v15 = a2;
    v12 = 8;
    v11 = 16;
    LODWORD(result) = sub_100025428(a1[58], 0, &v15, &v12, 8, &v13, &v11, 1, 0, 0);
    if (result || (v10 = v15, a2 - v15 >= v14))
    {
      if (result == 2)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a3 < 2 || result)
      {
        return result;
      }

      v15 = a2;
      v11 = 16;
      v12 = 8;
      LODWORD(result) = sub_100025428(a1[58], 0, &v15, &v12, 8, &v13, &v11, 4, 0, 0);
      if (result || (v10 = v15, v15 - a2 >= a3))
      {
        if (result == 2)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }
    }

    if (a4)
    {
      *a4 = v10;
    }

    return 17;
  }

  if (sub_100011DE8(a1[59], v8, a2, a3, a4))
  {
    return 17;
  }

  if (!a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 17;
  }

  return 0;
}

uint64_t sub_100010DCC(uint64_t *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (a4)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[0] = v6;
    v15[1] = v6;
    v15[2] = v6;
    v15[3] = v6;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v7 = sub_100010858(a1, a2, &v20);
    if (v7)
    {
      return v7;
    }

    v8 = sub_100027078(v20, 0, 0, sub_100011028, 0, 0);
    if (!v8)
    {
      v19 = 0;
      sub_100025EF0(v15, v20, 0, 0, &v19, 8, 8, &v17, 0x10u);
      v7 = v11;
      if (sub_100025F1C(v15))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v8 = sub_100010F44(a1, v17, v18, 0);
        if (v8)
        {
          break;
        }

        v12 = sub_100025F38(v15);
        if (v12)
        {
          v7 = v12;
          v13 = (a1[48] + 212);
          v14 = strerror(v12);
          sub_100012178("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_range_add", 2587, v13, v14, v7);
          goto LABEL_9;
        }

        if (sub_100025F1C(v15))
        {
          v7 = 0;
          goto LABEL_9;
        }
      }
    }

    v7 = v8;
LABEL_9:
    sub_100037058(v20);
    return v7;
  }

  v9 = a3 & 0x7FFFFFFF;

  return sub_100010F44(a1, a2, v9, a5);
}

uint64_t sub_100010F44(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (sub_100003530(a1[47], 0, a2, a3, a4))
  {
    return 22;
  }

  if (a1[58])
  {
    result = sub_100010C80(a1, a2, a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_100026C78(a1, 0x88000000uLL, 0, 10, 0, 8u, 16, sub_10001074C, 0, a1 + 58);
  if (!result)
  {
LABEL_5:
    v8[1] = a3;
    v9 = a2;
    v8[0] = a2;
    return sub_10001D908(a1[58], 0, &v9, 8, v8, 0x10u, 0);
  }

  return result;
}

uint64_t sub_100011028(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = sub_100038018(a1);
  v4 = (sub_10003835C(a1) + *(v2[47] + 36) - 1) / *(v2[47] + 36);

  return sub_100010F44(v2, v3, v4, 0);
}

const char *sub_100011098(const char *result)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  *(result + 59) = 0;
  *(result + 60) = 0;
  v1 = *(result + 58);
  if (v1)
  {
    v2 = result;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[2] = v3;
    v7[3] = v3;
    v7[0] = v3;
    v7[1] = v3;
    v9[1] = 0;
    v11 = 0;
    sub_100025EF0(v7, v1, 0, 0, &v11, 8, 8, &v10, 0x10u);
    result = sub_100025F1C(v7);
    if (!result)
    {
      v4 = 0;
      while (1)
      {
        v5 = v10;
        if (v10)
        {
          v6 = *(&v10 + 1);
          if (*(&v10 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v6 = *(&v10 + 1) - 1;
          *&v10 = 1;
          *(&v10 + 1) = v6;
          v5 = 1;
          if (v6)
          {
LABEL_9:
            if (v9[1] && v9[0] + v9[1] == v5)
            {
              v9[1] += v6;
              if (sub_1000231A4(*(v2 + 58), 0, v9, 8, v9, 0x10u, 0))
              {
                return sub_100012178("%s:%d: %s error updating metadata ranges tree: %d\n");
              }

              if (sub_100025094(*(v2 + 58), 0, &v10, 8u, 0))
              {
                return sub_100012178("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
              }
            }

            else
            {
              ++v4;
              *v9 = v10;
            }
          }
        }

        sub_100025F38(v7);
        result = sub_100025F1C(v7);
        if (result)
        {
          if (v4 == 1)
          {
            *(v2 + 472) = *v9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001124C(uint64_t *a1, unint64_t a2, void *a3)
{
  v3 = a1[47];
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return sub_100010BAC(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t sub_100011290(uint64_t *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v4 = a1[47];
  v5 = *(v4 + 108);
  v6 = (v5 & 0x7FFFFFFF) - a2;
  if ((v5 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v10 = *(v4 + 120);
  if (v5 < 0)
  {
    return sub_100010BAC(a1, v10, a2, a3, a4);
  }

  *a3 = v10 + a2;
  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t sub_1000112DC(uint64_t *a1)
{
  if (*(a1[47] + 1256))
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v2 = sub_10004E8AC(a1, &v10);
    if (v2)
    {
      return v2;
    }

    v4 = sub_10000E3C4(a1, 0x40000000u, *(a1[47] + 1256), 1, 1, &v9);
    if (v4)
    {
      v3 = v4;
      sub_100012178("%s:%d: %s failed to get mapping tree, error: %d\n", "nx_unblock_physical_range", 2929, (a1[48] + 212), v4);
      goto LABEL_12;
    }

    v3 = sub_10002822C(v9, v10, &v8);
    sub_100037058(v9);
    if (v3)
    {
      sub_100012178("%s:%d: %s failed to delete mapping, error: %d\n");
      goto LABEL_12;
    }

    *(a1[47] + 1256) = 0;
    v2 = sub_10004E8BC(a1, v10, 0);
    if (v2)
    {
      return v2;
    }
  }

  v10 = 0;
  v3 = sub_10004E8AC(a1, &v10);
  if (v3)
  {
    return v3;
  }

  v5 = sub_10004C1DC(a1, v10);
  if (!v5)
  {
    return sub_10004E8BC(a1, v10, 0);
  }

  v3 = v5;
  sub_100012178("%s:%d: %s spaceman_unset_block_out_range failed with error %u\n");
LABEL_12:
  v6 = sub_10004E8BC(a1, v10, 0);
  if (v6)
  {
    sub_100012178("%s:%d: %s tx_leave failed with error: %d\n", "nx_unblock_physical_range", 2973, (a1[48] + 212), v6);
  }

  return v3;
}

uint64_t sub_100011490(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = sub_100031B28();
  if ((v2 - *(a1 + 1056)) >= 0x3B9ACA01)
  {
    v3 = 0;
    *(a1 + 1056) = v2;
LABEL_6:
    *(a1 + 1064) = v3 + 1;
    return 1;
  }

  v3 = *(a1 + 1064);
  if (v3 <= 0xF)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_100011508(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, int64_t, unint64_t *, int64_t *), uint64_t a3, unint64_t *a4, int64_t *a5, int a6)
{
  v12 = *a5;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  v13 = a2(a1, a3, v12, &v26, &v27);
  if (v13)
  {
    return v13;
  }

  if (v27 >= v12)
  {
    v14 = 0;
    *a4 = v26;
    return v14;
  }

  v13 = sub_100026C78(a1, 0x88000000uLL, 2, 10, 0, 8u, 16, sub_10001074C, 0, &v25);
  if (v13)
  {
    return v13;
  }

  v22 = v26;
  v23 = v27;
  v24 = 0;
  v15 = sub_10001D908(v25, 0, &v24, 8, &v22, 0x10u, 0);
  if (!v15)
  {
    v18 = v27;
    v19 = v12 - v27;
    if (v19 < 1)
    {
LABEL_15:
      v21 = 0x80000000;
      if (a6)
      {
        v21 = 0x8000000000000000;
      }

      *a5 |= v21;
      v14 = 0;
      *a4 = sub_100038018(v25) | 0x8000000000000000;
      v16 = v25;
      if (v25)
      {
        goto LABEL_18;
      }

      return v14;
    }

    while (1)
    {
      v15 = a2(a1, a3, v19, &v26, &v27);
      if (v15)
      {
        break;
      }

      v22 = v26;
      v23 = v27;
      v24 = v18;
      v15 = sub_10001D908(v25, 0, &v24, 8, &v22, 0x10u, 0);
      if (v15)
      {
        break;
      }

      v18 += v27;
      v20 = v19 <= v27;
      v19 -= v27;
      if (v20)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = v15;
  if (v25)
  {
    sub_10002822C(v25, 0, 0);
    v16 = v25;
LABEL_18:
    sub_100037058(v16);
  }

  return v14;
}

uint64_t sub_1000116E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10003A1E8(*(a1 + 392), 0x80000001uLL, v5, &xmmword_10006A7D0, 0, 0, 0, a3, &v20);
  if (v8)
  {
    v9 = v8;
    sub_100012178("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_next_record", 1597, (*(a1 + 384) + 212), v8);
    return v9;
  }

  v10 = v20;
  if (*(v4 + 88))
  {
LABEL_21:
    sub_100037058(v10);
    return 0;
  }

  v11 = v20[47];
  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 52);
      if (v12 == -1)
      {
        break;
      }

      v13 = v11 + 64 + 40 * v12;
      *(v4 + 104) = *(v13 + 4);
      *(v4 + 72) = *(v13 + 8);
      *(v4 + 80) = *(v13 + 16);
      *(v4 + 96) = *(v13 + 32);
      sub_10003D180(a2, a3, 0);
      v14 = *v13;
      if (*(v11 + 52) == *(v11 + 56))
      {
        *(v11 + 56) = v14;
      }

      *v13 = *(v11 + 60);
      *(v13 + 4) = 0;
      *(v11 + 60) = v12;
      --*(v11 + 48);
      *(v11 + 52) = v14;
      sub_10003D180(v20, a3, 0);
      if (*(v4 + 88))
      {
        goto LABEL_20;
      }
    }

    v15 = *(v11 + 32);
    if (!v15)
    {
      if (!*(v4 + 68) && *(v4 + 48) == *(v4 + 56))
      {
        *(v4 + 68) = 1;
        sub_10003D180(a2, a3, 0);
      }

LABEL_20:
      v10 = v20;
      goto LABEL_21;
    }

    v16 = sub_10003A1E8(*(a1 + 392), 0x80000000uLL, v15, &xmmword_10006A7D0, 0, 0, 0, a3, &v19);
    if (v16)
    {
      break;
    }

    *(v4 + 48) = *(v11 + 32);
    v17 = *(v4 + 68);
    if (v17)
    {
      *(v4 + 68) = v17 - 1;
    }

    sub_10003D180(a2, a3, 0);
    sub_100039E98(v20);
    sub_100037058(v20);
    v10 = v19;
    v19 = 0;
    v20 = v10;
    v11 = v10[47];
    if (*(v4 + 88))
    {
      goto LABEL_21;
    }
  }

  v9 = v16;
  sub_100037058(v20);
  return v9;
}

pthread_cond_t *sub_100011944(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t sub_100011950(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v14.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

uint64_t sub_100011A74(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == 17 && a5 == 17)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == 25 && a5 == 25)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_100011B90(const char *a1)
{
  if (strnlen(a1, 2uLL) > 1)
  {
    return -1;
  }

  v3 = *a1;
  switch(*a1)
  {
    case 'S':
      return 448;
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'f':
    case 'g':
    case 'j':
    case 'l':
    case 'm':
    case 'q':
    case 't':
    case 'w':
      return -1;
    case 'a':
      return 128;
    case 'b':
      return 16;
    case 'c':
      return 768;
    case 'd':
      return 64;
    case 'e':
      return 576;
    case 'h':
      return 320;
    case 'i':
      return 32;
    case 'k':
      return 384;
    case 'n':
      return 512;
    case 'o':
      return 704;
    case 'p':
      return 192;
    case 'r':
      return 4;
    case 's':
      return 1;
    case 'u':
      return 2;
    case 'v':
      return 8;
    case 'x':
      return 256;
    default:
      if (v3 == 48)
      {
        result = 0;
      }

      else
      {
        if (v3 != 68)
        {
          return -1;
        }

        result = 640;
      }

      break;
  }

  return result;
}

uint64_t sub_100011D34(unsigned int a1)
{
  if (a1 >> 12 == 7)
  {
    return 0;
  }

  else
  {
    return word_10006A7E8[(a1 >> 12) ^ 8];
  }
}

void *sub_100011D5C(unsigned int a1, unsigned int *a2)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 <= a1);
  v5 = v4 >> 1;
  v6 = sub_100012434(8 * (v4 >> 1), 0x2004093837F09uLL);
  v7 = v6;
  if (v6)
  {
    v8 = v5 - 1;
    bzero(v6, 8 * v8 + 8);
    *a2 = v8;
  }

  return v7;
}

unint64_t sub_100011DE8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

char *sub_100011E2C(unint64_t a1, int a2, int a3)
{
  v5 = a1;
  strcpy(v15, " kMGT");
  v16[0] = &unk_100052CF5;
  v16[1] = &unk_100052CF5;
  v16[2] = " (";
  v16[3] = ")";
  if (a1 < 0x400)
  {
    v9 = a2 != 0;
    if (!a2)
    {
      __strlcpy_chk();
      return byte_100070568;
    }

    goto LABEL_18;
  }

  v6 = 0;
  do
  {
    v7 = v5;
    v5 >>= 10;
    if (v7 < 0x100000)
    {
      break;
    }
  }

  while (v6++ < 4);
  v9 = a2 != 0;
  v10 = v7 & 0x3FF;
  if (!v10)
  {
LABEL_18:
    if (v9 || !a3)
    {
      snprintf(byte_100070568, 0x20uLL, "%s%llu %cB%s");
    }

    else
    {
      snprintf(byte_100070568, 0x20uLL, "%s%llu%-*.*s %cB%s", " (", v5);
    }

    return byte_100070568;
  }

  v11 = 512;
  if (a3 == 2)
  {
    v11 = 5120;
  }

  if (a3 == 1)
  {
    v11 = 51200;
  }

  snprintf(byte_100070588, 8uLL, "%03llu", (v11 + 1000 * v10) >> 10);
  if (!a3)
  {
    v12 = strlen(byte_100070588) - 1;
    if (byte_100070588[v12] == 48)
    {
      byte_100070588[v12] = 0;
    }

    v13 = strlen(byte_100070588);
    if (byte_100070588[v13 - 1] == 48)
    {
      byte_100070588[v13 - 1] = 0;
    }
  }

  snprintf(byte_100070568, 0x20uLL, "%s%llu.%.*s %cB%s", v16[2 * (a2 == 0)]);
  return byte_100070568;
}

const char *sub_100012088(const char *result, ...)
{
  va_start(va, result);
  if (dword_100070004 >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_1000120D8(const char *result, ...)
{
  va_start(va, result);
  if (dword_100070004 >= 4)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_100012128(const char *result, ...)
{
  va_start(va, result);
  if (dword_100070004 >= 3)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_100012178(const char *result, ...)
{
  va_start(va, result);
  if (dword_100070004 >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

uint64_t sub_1000121C8(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (dword_100070004 >= 1)
  {
    return vfprintf(__stderrp, a2, va);
  }

  return result;
}

void *sub_100012214(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_100070028;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&unk_100070008 + ((a2 << 63 >> 63) & 0x78) + 8);
LABEL_5:
    v3 = v2;
    v4 = 3442331901;
    goto LABEL_7;
  }

  v3 = size;
  v4 = 889960617;
LABEL_7:
  result = malloc_type_calloc(1uLL, v3, v4);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, v2, memory_order_relaxed);
  }

  return result;
}

void *sub_1000122A0(unsigned int a1)
{
  v1 = *(&unk_100070008 + 3 * a1 + 1);
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, v1, memory_order_relaxed);
  }

  return result;
}

void *sub_1000122F4(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void sub_100012330(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_100070028;
  }

  else
  {
    v3 = a2;
    if (a2 != 4096)
    {
      if (!a1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (!a1)
    {
      return;
    }

    v4 = (&unk_100070008 + ((a3 << 63 >> 63) & 0x78) + 8);
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&qword_100070160, -v3, memory_order_relaxed);
}

void sub_1000123AC(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(&unk_100070008 + 3 * a2 + 1);
    free(a1);
    atomic_fetch_add_explicit(&qword_100070160, -v2, memory_order_relaxed);
  }
}

void sub_1000123F8(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&qword_100070160, -a2, memory_order_relaxed);
  }
}

void *sub_100012434(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, a1, memory_order_relaxed);
  }

  return result;
}

void *sub_100012468(void *a1, uint64_t a2, size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_realloc(a1, size, type_id);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, size - a2, memory_order_relaxed);
  }

  return result;
}

void *sub_1000124AC(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100070160, a2 * a1, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000124F0(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100012524(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t sub_10001262C(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t (*sub_100012668(unsigned __int16 a1))()
{
  v1 = sub_100046494;
  if (a1 <= 0x1Eu)
  {
    if (a1 <= 0xDu)
    {
      switch(a1)
      {
        case 9u:
          return v1;
        case 0xAu:
          return sub_10001074C;
        case 0xBu:
          return sub_10003DE40;
      }

      return 0;
    }

    if (a1 - 14 >= 3)
    {
      if (a1 == 19)
      {
        return sub_10003DE9C;
      }

      return 0;
    }

    return sub_100013DC0;
  }

  if (a1 <= 0x21u)
  {
    switch(a1)
    {
      case 0x1Fu:
        return sub_1000030E0;
      case 0x20u:
        return sub_100000B28;
      case 0x21u:
        return sub_1000197E4;
    }

    return 0;
  }

  if (a1 > 0x23u)
  {
    if (a1 != 36)
    {
      if (a1 == 255)
      {
        return off_100070098[0];
      }

      return 0;
    }

    return sub_100013DC0;
  }

  if (a1 == 34)
  {
    return sub_1000124F0;
  }

  else
  {
    return sub_10000151C;
  }
}

void sub_1000127AC(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    switch(*a2)
    {
      case 1u:
        sub_1000123F8(*(a2 + 9), *(a2 + 32));
        goto LABEL_21;
      case 2u:
        v4 = a2;
        v3 = 40;
        goto LABEL_27;
      case 3u:
        if ((*(a2 + 48) & 0xF000) == 0xA000)
        {
          v5 = *(a2 + 44);
          if (v5)
          {
            sub_1000123F8(v5, *(a2 + 90));
            *(a2 + 44) = 0;
          }
        }

        sub_1000501C0((a2 + 408));
        if ((a2[117] & 0x10) != 0)
        {
          j__pthread_rwlock_destroy((a2 + 448));
          j__pthread_rwlock_destroy((a2 + 120));
          *(a2 + 14) &= ~0x100000000000uLL;
        }

        sub_1000123AC(a2, 2u);
        return;
      case 4u:
      case 5u:
      case 7u:
      case 0xBu:
        goto LABEL_3;
      case 6u:
      case 0xCu:
        v4 = a2;
        v3 = 24;
        goto LABEL_27;
      case 8u:
        v4 = a2;
        v3 = 56;
        goto LABEL_27;
      case 9u:
        sub_1000501C0((a2 + 32));
        sub_1000123F8(*(a2 + 8), *(a2 + 31));
        goto LABEL_26;
      case 0xAu:
      case 0x12u:
        sub_1000501C0((a2 + 64));
        v4 = a2;
        v3 = 96;
        goto LABEL_27;
      case 0xDu:
        v6 = a2[16];
        if (v6 == 2)
        {
          goto LABEL_20;
        }

        if (v6 != 1)
        {
          return;
        }

LABEL_3:
        v3 = *(a2 + 1);
        v4 = a2;
LABEL_27:

        sub_1000123F8(v4, v3);
        break;
      case 0x10u:
LABEL_20:
        sub_1000501C0((a2 + 56));
LABEL_21:
        v4 = a2;
        v3 = 80;
        goto LABEL_27;
      case 0x11u:
        v4 = a2;
        v3 = 32;
        goto LABEL_27;
      case 0x13u:
        sub_1000501C0((a2 + 48));
LABEL_26:
        v4 = a2;
        v3 = 72;
        goto LABEL_27;
      default:
        sub_100012178("%s:%d: *** Can't release unknown obj type %d\n", "jobj_release", 2834, *a2);
        return;
    }
  }
}

uint64_t sub_1000129C0(uint64_t result, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a2;
  v10 = v8 << 60;
  v11 = (v8 & 0xF0) == 0;
  v12 = 0xE000000000000000;
  if (v11)
  {
    v12 = v10;
  }

  *a3 = v12 & 0xF000000000000000 | *(a2 + 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v9 >= 0x10)
  {
    if ((*(*(result + 376) + 57) & 2) == 0)
    {
      v13 = sub_10000E064(*(result + 392));
      result = sub_1000121C8(v13, "%s:%d: %s ***: expanded obj type %d (obj_id %llu) found on unsupported volume\n", "make_jkey_from_jobj", 1209, (v7 + 4040), *a2, *(a2 + 1));
      *a4 = 0;
      return result;
    }

    if ((v9 & 0xFC) == 0x10)
    {
      *(a3 + 8) = v9;
    }

    else
    {
      v14 = sub_10000E064(*(result + 392));
      result = sub_1000121C8(v14, "%s:%d: %s Cannot make large jkey from unknown type %d (obj_id %llu)\n", "make_large_jkey_header_from_jobj", 1186, (v7 + 4040), *a2, *(a2 + 1));
      v9 = *a2;
    }
  }

  switch(v9)
  {
    case 4u:
      v20 = *(a2 + 10);
      *(a3 + 8) = v20;
      result = memcpy((a3 + 10), a2 + 24, v20);
      v21 = *(a2 + 10);
      goto LABEL_23;
    case 5u:
    case 8u:
      *(a3 + 8) = *(a2 + 2);
      v15 = 16;
      goto LABEL_26;
    case 9u:
      v17 = *(a2 + 31);
      if ((*(*(v7 + 376) + 56) & 9) != 0)
      {
        *(a3 + 8) = *(a2 + 31) & 0x3FF | (*(a2 + 14) << 10);
        v18 = 12;
        v19 = 12;
      }

      else
      {
        *(a3 + 8) = v17;
        v18 = 10;
        v19 = 10;
      }

      result = memcpy((a3 + v18), *(a2 + 8), v17);
      v15 = v19 + *(a2 + 31);
      goto LABEL_26;
    case 0xAu:
      v15 = 96;
      goto LABEL_26;
    case 0xBu:
      v22 = *(a2 + 12);
      *(a3 + 8) = v22;
      result = memcpy((a3 + 10), a2 + 26, v22);
      v21 = *(a2 + 12);
LABEL_23:
      v15 = v21 + 10;
      goto LABEL_26;
    case 0xDu:
      *a4 = 16;
      *(a3 + 8) = __ROR8__(*(a2 + 2), 8);
      return result;
    case 0xEu:
      *a4 = 0;
      v16 = sub_10000E064(*(v7 + 392));
      return sub_1000121C8(v16, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", "make_jkey_from_jobj", 1324, (v7 + 4040));
    case 0x10u:
    case 0x13u:
      *(a3 + 12) = *(a2 + 1);
      v15 = 28;
      goto LABEL_26;
    case 0x11u:
      *(a3 + 12) = *(a2 + 2);
      v15 = 20;
      goto LABEL_26;
    case 0x12u:
      v15 = 12;
      goto LABEL_26;
    default:
      v15 = 8;
LABEL_26:
      *a4 = v15;
      break;
  }

  return result;
}

uint64_t sub_100012C6C(uint64_t a1, unsigned __int16 *__src, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int a6)
{
  v8 = *(__src + 1);
  v9 = *__src;
  v10 = v9 << 60;
  if ((v9 & 0xF0) != 0)
  {
    v10 = 0xE000000000000000;
  }

  *a3 = v10 & 0xF000000000000000 | v8 & 0xFFFFFFFFFFFFFFFLL;
  v11 = *a4;
  if ((v11 - 4096) < 0xFFFFF001)
  {
    return 22;
  }

  v45[7] = v6;
  v45[8] = v7;
  if (v9 >= 0x10u)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      sub_100012178("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "jobj_to_key_val", 1512, (a1 + 4040), v9);
      return 22;
    }

    if (v11 <= 0xB)
    {
      v19 = sub_10000E064(*(a1 + 392));
      sub_1000121C8(v19, "%s:%d: %s large key size (%u) on record (%llu) is too small\n");
      return 22;
    }

    *(a3 + 8) = v9;
    if (v9 <= 0x11u)
    {
      if (v9 != 16)
      {
        result = 0;
        v20 = *(__src + 3);
        *(a3 + 12) = *(__src + 2);
        *a5 = v20;
        v21 = 20;
LABEL_40:
        *a4 = v21;
        return result;
      }

      v40 = __src[28];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4);
      *(a5 + 8) = *(__src + 5);
      *(a5 + 16) = *(__src + 12);
      *(a5 + 20) = *(__src + 13);
      if (v40 && sub_10005021C(__src + 28, (a5 + 24), a6 - 24))
      {
        sub_100012178("%s:%d: %s failed to serialize purgeable %llu into jval of size %u\n");
        return 7;
      }

LABEL_55:
      result = 0;
      v21 = 28;
      goto LABEL_40;
    }

    if (v9 == 18)
    {
      v41 = __src[32];
      *(a5 + 24) = *(__src + 2);
      *a5 = *(__src + 3);
      *(a5 + 8) = *(__src + 4);
      *(a5 + 16) = *(__src + 5);
      *(a5 + 32) = *(__src + 7);
      *(a5 + 40) = *(__src + 6);
      *(a5 + 48) = *(__src + 23);
      if (v41 && sub_10005021C(__src + 32, (a5 + 52), a6 - 52))
      {
        sub_100012178("%s:%d: %s failed to serialize dir-stats %lld into jval of size %u\n");
        return 7;
      }
    }

    else if (v9 == 19)
    {
      v22 = __src[24];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4) & 0xFFFFFFFFFFFFFFLL | (*(__src + 10) << 56);
      if (!v22 || !sub_10005021C(__src + 24, (a5 + 8), a6 - 8))
      {
        goto LABEL_55;
      }

      sub_100012178("%s:%d: %s failed to serialize clone mapping <%llu/%llu> into jval of size %u\n");
      return 7;
    }

    result = 0;
    v21 = 12;
    goto LABEL_40;
  }

  switch(v9)
  {
    case 1:
      *a5 = *(__src + 1);
      *(a5 + 16) = *(__src + 2);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      v18 = __src[32];
      *(a5 + 48) = v18;
      strlcpy((a5 + 50), *(__src + 9), v18);
      goto LABEL_37;
    case 2:
      v45[0] = __src;
      v32 = *(__src + 1);
      v33 = *(__src + 3);
      *a5 = *(__src + 2) & 0xFFFFFFFFFFFFFFFLL | (v32 << 60);
      *(a5 + 8) = v33;
      v34 = *(__src + 8);
      *(a5 + 16) = v34;
      if (v34 < 0 && v32 == 1)
      {
        sub_100012088("%s:%d: inserting bad phy ext @ %p : kind %d refcnt %d\n", "jobj_to_key_val", 1538, v45, 1, v34);
        panic("bad pext.\n");
      }

      goto LABEL_37;
    case 3:
      *a4 = 8;
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      *(a5 + 16) = *(__src + 4);
      *(a5 + 24) = *(__src + 5);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      *(a5 + 56) = *(__src + 18);
      *(a5 + 48) = *(__src + 8);
      *(a5 + 60) = *(__src + 19);
      *(a5 + 64) = *(__src + 20);
      *(a5 + 68) = *(__src + 21);
      *(a5 + 72) = *(__src + 22);
      *(a5 + 76) = *(__src + 23);
      *(a5 + 80) = __src[48];
      *(a5 + 82) = __src[49];
      *(a5 + 84) = *(__src + 13);
      if (!__src[204])
      {
        return 0;
      }

      result = sub_10005021C(__src + 204, (a5 + 92), a6 - 92);
      if (!result)
      {
        return result;
      }

      sub_100012088("%s:%d: %s failed to serialize ino %lld into jval of size %u\n");
      return 7;
    case 4:
      v28 = __src[10];
      *(a3 + 8) = v28;
      if (v28 + 10 > v11)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 24, v28);
      *a4 = *(a3 + 8) + 10;
      *a5 = *(__src + 4);
      v29 = __src[11];
      *(a5 + 2) = v29;
      memcpy((a5 + 4), __src + __src[10] + 24, v29);
      return 0;
    case 5:
      v24 = *(__src + 3);
      *(a3 + 8) = *(__src + 2);
      *a4 = 16;
      *a5 = v24;
      v25 = __src[16];
      *(a5 + 8) = v25;
      strlcpy((a5 + 10), __src + 34, v25);
      return 0;
    case 6:
      result = 0;
      *a5 = *(__src + 4);
      goto LABEL_39;
    case 7:
      *a4 = 8;
      sub_100013490(__src, a5);
      return 0;
    case 8:
      v30 = *(__src + 2);
      *(a3 + 8) = v30;
      *a4 = 16;
      v31 = *(__src + 5);
      if (HIBYTE(v31))
      {
        sub_100012088("%s:%d: %s File extent too large (%llu > %llu): laddr %llu, paddr %llu\n", "jobj_to_key_val", 1573, (a1 + 4040), v31, 0xFFFFFFFFFFFFFFLL, v30, *(__src + 3));
        return 22;
      }

      v42 = *(__src + 4);
      if (v42 == -1)
      {
        panic("fext %lld (pos %lld len %lld flags %x can not have crypto-id -1\n", v8, v30, *(__src + 5), *(__src + 48));
      }

      result = 0;
      v43 = *(__src + 3);
      *a5 = v31 & 0xFFFFFFFFFFFFFFLL | (*(__src + 48) << 56);
      *(a5 + 8) = v43;
      *(a5 + 16) = v42;
      return result;
    case 9:
      v37 = __src[31];
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        if (v37 + 12 > v11)
        {
          return 7;
        }

        *(a3 + 8) = v37 & 0x3FF | (*(__src + 14) << 10);
        v38 = 12;
        v39 = 12;
      }

      else
      {
        if (v37 + 10 > v11)
        {
          return 7;
        }

        *(a3 + 8) = v37;
        v38 = 10;
        v39 = 10;
      }

      strlcpy((a3 + v38), *(__src + 8), v37);
      *a4 = v39 + __src[31];
      *(a5 + 16) = __src[30];
      v44 = __src[16];
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      if (!v44)
      {
        return 0;
      }

      result = sub_10005021C(__src + 16, (a5 + 18), a6 - 18);
      if (result)
      {
        sub_100012088("%s:%d: failed to serialize drec %lld/%s into jval of size %u\n", "jobj_to_key_val", 1682, *(__src + 1), *(__src + 8), a6);
        return 0;
      }

      return result;
    case 10:
      result = 0;
      *a5 = *(__src + 12);
      *(a5 + 16) = vextq_s8(*(__src + 3), *(__src + 3), 8uLL);
      goto LABEL_39;
    case 11:
      v36 = __src[12];
      *(a3 + 8) = v36;
      if (v36 + 10 > v11)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 26, v36);
      result = 0;
      v23 = *(a3 + 8) + 10;
      goto LABEL_48;
    case 12:
      result = 0;
      v23 = 8;
LABEL_48:
      *a4 = v23;
      *a5 = *(__src + 2);
      return result;
    case 13:
      v26 = *(__src + 16);
      if (v26 == 2)
      {
        if (__src[28] && sub_10005021C(__src + 28, (a5 + 26), a6 - 26))
        {
          sub_100012088("%s:%d: %s failed to serialize file info with obj_id <%lld> into jval of size <%u>\n");
          return 7;
        }

        *(a5 + 24) = __src[24];
        *a5 = *(__src + 3);
        *(a5 + 8) = *(__src + 4);
        *(a5 + 16) = *(__src + 5);
      }

      else
      {
        if (v26 != 1)
        {
          return 22;
        }

        v27 = *(__src + 26);
        if (v27 + 3 > a6)
        {
          return 7;
        }

        *(a5 + 2) = v27;
        *a5 = __src[12];
        memcpy((a5 + 3), __src + 27, v27);
      }

      result = 0;
      *(a3 + 8) = __ROR8__(*(__src + 2), 8);
      v21 = 16;
      goto LABEL_40;
    case 14:
      *a4 = 0;
      v35 = sub_10000E064(*(a1 + 392));
      sub_1000121C8(v35, "%s:%d: %s ***: expanded type seen on in-memory obj!\n");
      return 22;
    default:
LABEL_37:
      result = 0;
LABEL_39:
      v21 = 8;
      goto LABEL_40;
  }
}

void *sub_100013490(_DWORD *__src, _DWORD *a2)
{
  v2 = *(__src + 10);
  *a2 = __src[4];
  v3 = a2 + 1;
  if (v2 == 6)
  {
    v4 = HIBYTE(*(__src + 19)) + *(__src + 19);
  }

  else
  {
    v4 = *(__src + 19);
  }

  return memcpy(v3, __src + 5, v4 + 20);
}

uint64_t sub_1000134C4(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 8;
    switch(*a2)
    {
      case 1u:
      case 2u:
      case 3u:
      case 6u:
      case 7u:
      case 0xAu:
      case 0xCu:
        return result;
      case 4u:
        v5 = *(a2 + 10);
        goto LABEL_12;
      case 5u:
      case 8u:
      case 0xDu:
        return 16;
      case 9u:
        v5 = *(a2 + 31);
        if ((*(*(a1 + 376) + 56) & 9) == 0)
        {
          goto LABEL_12;
        }

        result = v5 + 12;
        break;
      case 0xBu:
        v5 = *(a2 + 12);
LABEL_12:
        result = v5 + 10;
        break;
      case 0xEu:
        v6 = sub_10000E064(*(a1 + 392));
        sub_1000121C8(v6, "%s:%d: %s ***: expanded type seen on in-memory obj!\n");
        return 0;
      case 0x10u:
      case 0x13u:
        result = 28;
        break;
      case 0x11u:
        result = 20;
        break;
      case 0x12u:
        result = 12;
        break;
      default:
        sub_100012178("%s:%d: ***: unknown obj type %d\n", "key_size_for_jobj", 1931, *a2);
        return 0;
    }
  }

  else
  {
    v3 = sub_10000E064(*(a1 + 392));
    sub_1000121C8(v3, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n");
    return 0;
  }

  return result;
}

uint64_t sub_10001365C(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 20;
    switch(*a2)
    {
      case 1:
        return a2[32] + 50;
      case 2:
        return result;
      case 3:
        if (a2[204])
        {
          return sub_100050208(a2 + 204) + 92;
        }

        else
        {
          return 92;
        }

      case 4:
        return a2[11] + 4;
      case 5:
        return a2[16] + 10;
      case 6:
        return 4;
      case 7:
        if (a2[10] == 6)
        {
          v7 = HIBYTE(a2[19]) + a2[19];
        }

        else
        {
          v7 = a2[19];
        }

        return v7 + 24;
      case 8:
        return 24;
      case 9:
        if (a2[16])
        {
          return sub_100050208(a2 + 16) + 18;
        }

        else
        {
          return 18;
        }

      case 0xA:
        return 32;
      case 0xB:
      case 0xC:
      case 0x11:
        return 8;
      case 0xD:
        v6 = *(a2 + 2);
        if (v6 == 2)
        {
          if (a2[28])
          {
            return sub_100050208(a2 + 28) + 26;
          }

          else
          {
            return 26;
          }
        }

        if (v6 == 1)
        {
          return *(a2 + 26) + 3;
        }

        sub_100012178("%s:%d: Unknown subtype %d for file info object %lld\n");
        break;
      case 0xE:
        sub_100012178("%s:%d: %s ***: expanded type seen on in-memory obj\n");
        return 0;
      case 0x10:
        if (!a2[28])
        {
          return 24;
        }

        v7 = sub_100050208(a2 + 28);
        return v7 + 24;
      case 0x12:
        if (a2[32])
        {
          return sub_100050208(a2 + 32) + 52;
        }

        else
        {
          return 52;
        }

      case 0x13:
        if (a2[24])
        {
          return sub_100050208(a2 + 24) + 8;
        }

        else
        {
          return 8;
        }

      default:
        sub_100012178("%s:%d: ***: unknown obj type %d\n");
        return 0;
    }
  }

  else
  {
    v4 = sub_10000E064(*(a1 + 392));
    sub_1000121C8(v4, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n", "val_size_for_jobj", 1945, (a1 + 4040), *a2);
  }

  return 0;
}

uint64_t sub_10001390C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  result = 22;
  if (a2 && a3 >= 8)
  {
    switch(*a2 >> 60)
    {
      case 1:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 50;
        if (a5 >= 0x32)
        {
          v9 = a4[24];
          goto LABEL_53;
        }

        break;
      case 2:
        if (!a4 || a5 >= 0x14)
        {
          goto LABEL_4;
        }

        break;
      case 3:
        if (!a4 || a5 >= 0x5C)
        {
          goto LABEL_4;
        }

        break;
      case 4:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 4;
          if (a5 >= 4)
          {
            v9 = a4[1];
            goto LABEL_53;
          }
        }

        break;
      case 5:
        if (a3 >= 0x10)
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 10;
          if (a5 >= 0xA)
          {
            v9 = a4[4];
            goto LABEL_53;
          }
        }

        break;
      case 6:
        if (!a4 || a5 >= 4)
        {
          goto LABEL_4;
        }

        break;
      case 7:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 24;
        if (a5 >= 0x18)
        {
          v9 = a4[2] == 6 ? HIBYTE(a4[11]) + a4[11] : a4[11];
LABEL_53:
          if (v8 >= v9)
          {
            goto LABEL_4;
          }
        }

        break;
      case 8:
        if (a3 >= 0x10 && (!a4 || a5 >= 0x18))
        {
          goto LABEL_4;
        }

        break;
      case 9:
        if ((*(*(a1 + 376) + 56) & 9) != 0)
        {
          v10 = a3 - 12;
          if (a3 < 0xC)
          {
            return result;
          }

          v11 = *(a2 + 8) & 0x3FF;
        }

        else
        {
          v10 = a3 - 10;
          if (a3 < 0xA)
          {
            return result;
          }

          v11 = *(a2 + 8);
        }

        if (v10 >= v11 && (!a4 || a5 >= 0x12))
        {
          goto LABEL_4;
        }

        break;
      case 0xALL:
        if (!a4 || a5 >= 0x20)
        {
          goto LABEL_4;
        }

        break;
      case 0xBLL:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          goto LABEL_38;
        }

        break;
      case 0xCLL:
LABEL_38:
        if (!a4 || a5 >= 8)
        {
          goto LABEL_4;
        }

        break;
      case 0xDLL:
        if (a3 >= 0x10)
        {
          if (*(a2 + 15) == 1)
          {
            if (!a4 || *(a4 + 2) + 3 <= a5)
            {
              goto LABEL_4;
            }
          }

          else if (!a4 || a5 >= 0x1A)
          {
            goto LABEL_4;
          }
        }

        break;
      case 0xELL:
        if (a3 > 0xB)
        {

          result = sub_100013B90(a1, a2, a3, a4, a5);
        }

        else
        {
          sub_100012178("%s:%d: %s key size (%zu) on expanded record (%llu) is too small\n", "jobj_validate_key_val", 2403, (a1 + 4040), a3, *a2 & 0xFFFFFFFFFFFFFFFLL);
          result = 22;
        }

        break;
      default:
LABEL_4:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_100013B90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((*(*(a1 + 376) + 57) & 2) == 0)
  {
    sub_100012178("%s:%d: %s ***: expanded obj type found on unsupported volume\n", a2, a3, a4, a5);
    return 22;
  }

  v7 = *(a2 + 8);
  if (v7 > 0x11)
  {
    if (v7 == 18)
    {
      v5 = 0;
      if (a4 && a5 <= 0x33)
      {
        sub_100012178("%s:%d: %s value size (%zu) on dir stats (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

    if (v7 == 19)
    {
      if (a3 <= 0x1B)
      {
        sub_100012178("%s:%d: %s key size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      v5 = 0;
      if (a4 && a5 <= 7)
      {
        sub_100012178("%s:%d: %s value size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

LABEL_14:
    v5 = 0;
    if (a4 && a5 <= 3)
    {
      sub_100012178("%s:%d: %s value size (%zu) on unknown record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 == 16)
  {
    if (a3 <= 0x1B)
    {
      sub_100012178("%s:%d: %s key size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    v5 = 0;
    if (a4 && a5 <= 0x17)
    {
      sub_100012178("%s:%d: %s value size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 != 17)
  {
    goto LABEL_14;
  }

  if (a3 <= 0x13)
  {
    sub_100012178("%s:%d: %s key size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  v5 = 0;
  if (a4 && a5 <= 7)
  {
    sub_100012178("%s:%d: %s value size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  return v5;
}

uint64_t sub_100013DC0(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int a5, int *a6)
{
  v6 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    v11 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v12 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v11 < v12)
    {
LABEL_4:
      v13 = -1;
LABEL_12:
      v6 = 0;
      *a6 = v13;
      return v6;
    }

    if (v11 > v12)
    {
LABEL_6:
      v13 = 1;
      goto LABEL_12;
    }

    v14 = *a2 >> 60;
    v15 = *a4 >> 60;
    if (!v14)
    {
      goto LABEL_8;
    }

    if (!v15)
    {
      goto LABEL_6;
    }

    if (v14 < v15)
    {
      goto LABEL_4;
    }

    if (v14 > v15)
    {
      goto LABEL_6;
    }

    if (v14 != 14)
    {
LABEL_22:
      if (sub_100036630(a1) != 13)
      {
        return 22;
      }

      if (sub_10001390C(a1, a2, a3, 0, 0))
      {
        return 22;
      }

      v13 = sub_10001390C(a1, a4, a5, 0, 0);
      if (v13)
      {
        return 22;
      }

      if (v14 <= 10)
      {
        if (v14 > 7)
        {
          if (v14 == 8)
          {
            v39 = a2[1];
            v40 = a4[1];
            if (v39 != -1)
            {
              if (v40 == -1)
              {
                goto LABEL_6;
              }

              v25 = v39 > v40;
              if (v39 < v40)
              {
                goto LABEL_4;
              }

              goto LABEL_83;
            }

            v16 = v40 == -1;
            goto LABEL_9;
          }

          if (v14 != 9)
          {
            goto LABEL_12;
          }

          if ((*(*(a1 + 376) + 56) & 9) != 0)
          {
            v29 = *(a2 + 2);
            v30 = *(a4 + 2);
            if (v29 >> 10 < v30 >> 10)
            {
              goto LABEL_4;
            }

            if (v29 >> 10 > v30 >> 10)
            {
              goto LABEL_6;
            }

            v31 = a2 + 12;
            v32 = a4 + 12;
            v33 = v29 & 0x3FF;
            v34 = v30 & 0x3FF;
LABEL_52:
            v13 = sub_1000182F0(v31, v32, v33, v34);
            goto LABEL_12;
          }
        }

        else if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_12;
          }

          v26 = a2[1];
          v15 = a4[1];
          if (v26)
          {
            if (!v15)
            {
              goto LABEL_6;
            }

            v27 = v26 >= v15;
            v28 = v26 > v15;
LABEL_72:
            if (v27)
            {
              v13 = v28;
            }

            else
            {
              v13 = -1;
            }

            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v14 > 15)
        {
          switch(v14)
          {
            case 0x10:
              v41 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v41)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                if (v41 < v15)
                {
                  goto LABEL_4;
                }

                if (v41 != v15)
                {
                  v25 = v41 > v15;
                  goto LABEL_83;
                }

                v42 = *(a2 + 20);
                v15 = *(a4 + 20);
                if (v42)
                {
                  if (v15)
                  {
                    if (v42 >= v15)
                    {
                      v13 = v42 != v15;
                      goto LABEL_12;
                    }

                    goto LABEL_4;
                  }

                  goto LABEL_6;
                }
              }

              break;
            case 0x11:
              v43 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v43)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                v27 = v43 >= v15;
                v44 = v43 == v15;
                goto LABEL_69;
              }

              break;
            case 0x13:
              v21 = *(a2 + 12);
              v22 = *(a4 + 12);
              if (v21 < v22)
              {
                goto LABEL_4;
              }

              if (v21 > v22)
              {
                goto LABEL_6;
              }

              v23 = *(a2 + 20);
              v24 = *(a4 + 20);
              v25 = v23 > v24;
              if (v23 < v24)
              {
                goto LABEL_4;
              }

LABEL_83:
              v13 = v25;
              goto LABEL_12;
            default:
              goto LABEL_12;
          }

LABEL_8:
          v16 = v15 == 0;
          goto LABEL_9;
        }

        if (v14 != 11)
        {
          if (v14 != 13)
          {
            goto LABEL_12;
          }

          v35 = a2[1];
          v36 = HIBYTE(v35);
          v37 = a4[1];
          v38 = HIBYTE(v37);
          if (HIBYTE(v35))
          {
            if (!v38)
            {
              goto LABEL_6;
            }

            if (v36 != v38)
            {
              if (v36 < v38)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              goto LABEL_12;
            }

            v45 = v35 & 0xFFFFFFFFFFFFFFLL;
            v46 = v37 & 0xFFFFFFFFFFFFFFLL;
            if (v45 != 0xFFFFFFFFFFFFFFLL)
            {
              if (v46 == 0xFFFFFFFFFFFFFFLL)
              {
                goto LABEL_6;
              }

              v27 = v45 >= v46;
              v44 = v45 == v46;
LABEL_69:
              v28 = !v44;
              goto LABEL_72;
            }

            v16 = v46 == 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v38 == 0;
          }

LABEL_9:
          if (v16)
          {
            v13 = 0;
          }

          else
          {
            v13 = -1;
          }

          goto LABEL_12;
        }
      }

      v33 = *(a2 + 4);
      v34 = *(a4 + 4);
      v31 = a2 + 10;
      v32 = a4 + 10;
      goto LABEL_52;
    }

    v6 = 22;
    if (a3 >= 0xC && a5 >= 0xC)
    {
      LODWORD(v14) = *(a2 + 8);
      v20 = *(a4 + 8);
      if (v14 < v20)
      {
        goto LABEL_4;
      }

      if (v14 > v20)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  return v6;
}

uint64_t sub_1000140F8(uint64_t a1, atomic_ullong *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v10 = sub_10001365C(a1, a3);
  v11 = sub_1000134C4(a1, a3);
  v38 = v11;
  v12 = 22;
  if (!v10 || !v11)
  {
    return v12;
  }

  v31 = a4;
  if ((v11 & 7) != 0)
  {
    v13 = (v11 & 0x1FFF8) + 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + v10;
  __chkstk_darwin(v11);
  v17 = (&v31 - v16);
  if (v15)
  {
    memset(&v31 - v16, 170, v15);
  }

  if (v14 >= 0x251)
  {
    v17 = sub_100012434(v13 + v10, 0x12B82EDCuLL);
    if (!v17)
    {
      return 12;
    }
  }

  v18 = sub_100012C6C(a1, a3, v17, &v38, v17 + v13, v10);
  if (v18)
  {
    goto LABEL_11;
  }

  if (a5 <= 2)
  {
    if (a5 == 1)
    {
      v18 = sub_10001D908(a2, *(a1 + 440), v17, v38, (v17 + v13), v10, v31);
LABEL_11:
      v12 = v18;
      goto LABEL_12;
    }

    if (a5 == 2)
    {
      if (*a3 == 3)
      {
        v19 = (a3 + 320);
      }

      else
      {
        v19 = 0;
      }

      v20 = v31;
      v21 = sub_100022C68(a2, *(a1 + 440), v17, v38, v17 + v13, v10, v31, v19);
      if (v21 == 28)
      {
        v21 = sub_10001D908(a2, *(a1 + 440), v17, v38, (v17 + v13), v10, v20);
      }

LABEL_27:
      v12 = v21;
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      goto LABEL_12;
    }

    v21 = sub_100025094(a2, *(a1 + 440), v17, v38, v31);
    goto LABEL_27;
  }

  v37 = 0;
  v36 = 0u;
  v35 = 0u;
  memset(&v34[2], 0, 32);
  v34[0] = a1;
  v34[1] = v31;
  v23 = *a3;
  if (v23 == 18 || v23 == 10)
  {
    HIDWORD(v37) = *(a3 + 22);
    *(&v36 + 1) = *(a3 + 6);
  }

  v12 = sub_1000231AC(a2, *(a1 + 440), v17, v38, v17 + v13, v10, 1, v31, sub_10001532C, v34);
  v24 = *a3;
  if (v24 <= 9)
  {
    if (v24 == 2)
    {
      *(a3 + 8) = v34[2];
    }

    else if (v24 == 6 || v24 == 7)
    {
      *(a3 + 4) = v34[2];
    }

    goto LABEL_12;
  }

  switch(v24)
  {
    case 0xAu:
      goto LABEL_40;
    case 0xDu:
      if (a3[16] == 2)
      {
        *(a3 + 3) = v34[2];
      }

      break;
    case 0x12u:
LABEL_40:
      v25 = *(a3 + 22);
      if ((v25 & 8) != 0)
      {
        *(a3 + 24) = *&v34[3];
        v30 = *(&v36 + 1);
        *(a3 + 5) = v34[5];
        *(a3 + 6) = v30;
        *(a3 + 23) = v37;
        sub_10005029C(a3 + 32, 1, 0, &v35, 8uLL);
        sub_10005029C(a3 + 32, 3, 0, &v35 + 8, 8uLL);
        v28 = (a3 + 64);
        v29 = &v36;
      }

      else
      {
        if ((v25 & 0x200) != 0)
        {
          *(a3 + 6) = *(&v36 + 1);
          *(a3 + 23) = v37;
        }

        if ((v37 & 0x80000000000) == 0)
        {
          goto LABEL_53;
        }

        v32 = 0xAAAAAAAAAAAAAAAALL;
        __dst = 0xAAAAAAAAAAAAAAAALL;
        if (sub_100050564(a3 + 32, 3, 0, &__dst, 8uLL))
        {
          __dst = 0;
        }

        v26 = sub_100050564(a3 + 32, 4, 0, &v32, 8uLL);
        v27 = v32;
        if (v26)
        {
          v27 = 0;
        }

        v32 = v27 - v36;
        __dst -= *(&v35 + 1);
        *(a3 + 23) |= 8u;
        sub_10005029C(a3 + 32, 3, 0, &__dst, 8uLL);
        if (!v32)
        {
          goto LABEL_53;
        }

        *(a3 + 23) |= 0x800u;
        v28 = (a3 + 64);
        v29 = &v32;
      }

      sub_10005029C(v28, 4, 0, v29, 8uLL);
LABEL_53:
      *(a3 + 7) = v34[2];
      *(a3 + 22) = HIDWORD(v37);
      break;
  }

LABEL_12:
  if (v14 >= 0x251)
  {
    sub_1000123F8(v17, v13 + v10);
  }

  return v12;
}

uint64_t sub_100014578(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, size_t a5, uint64_t a6, unsigned int a7, int a8, int a9, int a10, int a11, uint64_t a12, int a13, void *a14, unint64_t a15, int a16, int a17)
{
  v23 = a2;
  v24 = a14;
  v25 = a11;
  v27 = a16;
  v26 = a17;
  v69 = 0;
  v67 = a17;
  v68 = -1431655766;
  *a14 = 0;
  if (v27)
  {
    v28 = a2;
    if (a3)
    {
      v29 = *(a3 + 8);
    }

    else
    {
      v29 = 1;
    }

LABEL_10:
    v33 = a1;
    v34 = a5;
    v35 = v29;
    result = sub_100018AAC(a1, 1, __s, v34, v26, v29, a6, &v69);
    v68 = result;
    if (result)
    {
      return result;
    }

    v60 = v35;
    v36 = sub_1000122A0(2u);
    if (!v36)
    {
      sub_1000127AC(0, v69);
      return 12;
    }

    v37 = v36;
    v58 = v25;
    v59 = v24;
    v38 = a15;
    v39 = sub_100031B28();
    *(v69 + 3) = v39;
    v40 = sub_100011D34(a7);
    v41 = v69;
    *(v69 + 30) = v40;
    v42 = sub_10001689C(v33, v28, v41, v38);
    v68 = v42;
    if (v42)
    {
      v43 = strerror(v42);
      v44 = sub_100012178("%s:%d: %s %s: could not insert dir rec for obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13474, (v33 + 4040), v43, *(v69 + 1), __s);
      sub_1000127AC(v44, v69);
      sub_1000123AC(v37, 2u);
      return 22;
    }

    *v37 = 42467587;
    *(v37 + 1) = a6;
    *(v37 + 2) = v60;
    *(v37 + 6) = v39;
    *(v37 + 7) = v39;
    *(v37 + 4) = v39;
    *(v37 + 5) = v39;
    *(v37 + 3) = a6;
    *(v37 + 48) = a7;
    v37[22] = a8;
    v37[23] = a9;
    v37[20] = 1;
    v37[21] = a10;
    if ((a7 & 0xF000) != 0x4000)
    {
      v37[18] = 1;
    }

    sub_100011930((v37 + 112));
    sub_100011930((v37 + 30));
    *(v37 + 14) |= 0x100000000000uLL;
    v45 = 48;
    if ((a7 & 0xF000) != 0x8000)
    {
      v45 = 0;
    }

    sub_10004FDE8((v37 + 102), v45 + *(v69 + 31));
    sub_10005029C(v37 + 204, 4, 2, *(v69 + 8), *(v69 + 31));
    v46 = v59;
    if ((v37[24] & 0xB000 | 0x4000) == 0x6000)
    {
      if ((*(*(v33 + 376) + 57) & 2) != 0)
      {
        v37[26] = v58;
      }

      else
      {
        v68 = sub_10005029C(v37 + 204, 14, 34, &a11, 4uLL);
        if (v68)
        {
          v47 = sub_100012178("%s:%d: %s *** failed to set rdev as an extended field of ino %lld (ret %d)\n");
          goto LABEL_56;
        }
      }
    }

    if (a3)
    {
      *(v37 + 8) = *(a3 + 64) & 0x20400002;
      if ((*(a3 + 64) & 2) != 0)
      {
        __dst = 0xAAAAAAAAAAAAAAAALL;
        if (sub_100050564((a3 + 408), 10, 0, &__dst, 8uLL))
        {
          if (sub_100011490(*(v33 + 392)))
          {
            sub_100012178("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "fs_obj_create_name_checked", 13549, (v33 + 4040), *(a3 + 8));
          }
        }

        else
        {
          sub_10005029C(v37 + 204, 10, 34, &__dst, 8uLL);
        }
      }

      if ((v37[24] & 0xF000) == 0x8000 && (*(a3 + 67) & 2) != 0)
      {
        *(v37 + 8) |= 0x100000uLL;
        __dst = sub_100001804(a3);
        sub_10005029C(v37 + 204, 15, 2, &__dst, 8uLL);
      }
    }

    v51 = a13;
    v52 = a12;
    v53 = *(v37 + 48);
    if ((v53 & 0xF000) == 0x4000)
    {
      sub_100018D90(v33, v37);
      v53 = *(v37 + 48);
    }

    *(v37 + 14) |= 0x200000000uLL;
    *(v37 + 8) |= v52 | 0x8000;
    v37[19] = v51;
    if ((v53 & 0xF000) == 0x8000 && sub_10002E290(v33) == 3)
    {
      LODWORD(__dst) = -1431655766;
      if (sub_100019764(v33, v37, &__dst))
      {
        if (__dst == 6)
        {
          panic("assertion failed: %s", "ino_poison_vnode(apfs, inode)");
        }
      }
    }

    v54 = sub_10001689C(v33, v28, v37, v38);
    v68 = v54;
    if (v54)
    {
      v55 = strerror(v54);
      sub_100012178("%s:%d: %s %s: could not insert inode obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13609, (v33 + 4040), v55, *(v37 + 1), *(v69 + 8));
      v56 = v69;
      v69[1] = 3;
      v47 = sub_100016BEC(v33, v28, v56, v38);
      v46 = v59;
      if (v47)
      {
        strerror(v47);
        v47 = sub_100012178("%s:%d: %s %s: could not remove dir rec for obj-id %lld (name: %s)\n");
      }
    }

    else
    {
      v46 = v59;
      if (!a3 || v28 == 4 && v60 == 2)
      {
        goto LABEL_57;
      }

      v57 = sub_100031B28();
      *(a3 + 40) = v57;
      *(a3 + 48) = v57;
      *(a3 + 112) |= 0x40000uLL;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 1;
      sub_100031680(v33, a3, &v62, v38);
      if ((v37[24] & 0xF000) == 0x4000)
      {
        sub_100018CDC(v33, a3);
      }

      ++*(a3 + 72);
      ++*(a3 + 80);
      *(a3 + 1) = 2;
      v54 = sub_10001689C(v33, v28, a3, v38);
      v68 = v54;
      if (!v54)
      {
        goto LABEL_57;
      }

      v47 = sub_100012178("%s:%d: %s failed to update parent ino %lld nchildren field on create of %s (err %d)\n");
    }

LABEL_56:
    sub_1000127AC(v47, v37);
    v37 = 0;
LABEL_57:
    sub_1000127AC(v54, v69);
    *v46 = v37;
    return v68;
  }

  if (!a5)
  {
    v30 = a1;
    a5 = strlen(__s);
    a1 = v30;
  }

  if (a5 > 0x2FD)
  {
    return 63;
  }

  v61 = a1;
  v31 = sub_100018DF0(__s, a5, 1u, 0, &v68);
  if (v31 > 0xFF)
  {
    return 63;
  }

  if (!v31 && v68)
  {
    return 22;
  }

  v28 = v23;
  if (a3)
  {
    v48 = *(a3 + 8);
  }

  else
  {
    v48 = 1;
  }

  if (a3)
  {
    v49 = (a3 + 336);
  }

  else
  {
    v49 = 0;
  }

  v50 = v48;
  result = sub_10001911C(v61, v48, __s, a5, v49, &v67, 0);
  v68 = result;
  if (!result)
  {
    sub_1000127AC(result, v69);
    return 17;
  }

  if (result == 2)
  {
    v26 = v67;
    a1 = v61;
    v29 = v50;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100014C9C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v9 = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1664));
        if (*(a1 + 440) == a4 && (v22 = *(a1 + 3616)) != 0)
        {
          sub_10003C894(*(a1 + 3616));
          if (a3 && (v23 = sub_10003BC6C(v22, 0, a3), v23))
          {
            v9 = v23;
            sub_100037058(v22);
          }

          else
          {
            v9 = 0;
            *a5 = v22;
          }
        }

        else
        {
          v9 = sub_10002E638(a1, 0, a4, a3, a5);
          if (!v9)
          {
            if (*(a1 + 440) == a4)
            {
              v25 = *a5;
              sub_10003C894(v25);
              v9 = 0;
              *(a1 + 3616) = v25;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        v21 = (a1 + 1664);
        goto LABEL_110;
      }

      if (a2 != 8)
      {
        return v9;
      }

      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3576)) == 0)
      {
        v9 = sub_10002E518(a1, a4, a3, a5);
        if (!v9)
        {
          v27 = *(a1 + 440);
          v28 = v27 && *(a1 + 504) == 0;
          if (!v28 && v27 == a4)
          {
            v29 = *a5;
            sub_10003C894(v29);
            v9 = 0;
            *(a1 + 3576) = v29;
          }
        }

        return v9;
      }

      sub_10003C894(*(a1 + 3576));
      if (!a3)
      {
LABEL_72:
        v9 = 0;
        *a5 = v14;
        return v9;
      }

LABEL_51:
      v24 = sub_10003BC6C(v14, 0, a3);
      if (v24)
      {
        v9 = v24;
        sub_100037058(v14);
        return v9;
      }

      goto LABEL_72;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1600));
        v12 = *(a1 + 3608);
        if (v12)
        {
          sub_10003C894(v12);
          if (a3)
          {
            v9 = sub_10003BC6C(*(a1 + 3608), 2, a3);
            v13 = *(a1 + 3608);
            if (v9)
            {
              sub_100037058(v13);
LABEL_109:
              v21 = (a1 + 1600);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1048) = sub_100038018(v13);
          }

          v9 = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_109;
        }

        v34 = *(a1 + 384);
        if (!v34)
        {
          v34 = *(a1 + 376);
        }

        v35 = *(v34 + 1044);
        v36 = *(v34 + 1048);
        v46 = 0u;
        v47 = 0u;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v45 = sub_100000B28;
        DWORD2(v46) = 32;
        if (v35 == 2)
        {
          v37 = sub_100026D00(a1, v35 & 0xFFFF0000, v36, a4, a3 != 0, &v45, a3, a5);
          v38 = v37;
          if (a3 && !v37)
          {
            v9 = 0;
            *(*(a1 + 376) + 1048) = sub_100038018(*a5);
            goto LABEL_109;
          }

          if (!v37)
          {
            v9 = 0;
            goto LABEL_109;
          }

          v36 = *(v34 + 1048);
        }

        else
        {
          v38 = 22;
        }

        v43 = strerror(v38);
        sub_100012178("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3946, (a1 + 4040), v36, a3, v38, v43);
        v9 = v38;
        goto LABEL_109;
      }

      return 45;
    }

    v20 = *(a1 + 376);
    if ((*(v20 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v26 = *(v20 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1536));
    v31 = *(a1 + 3600);
    if (v31)
    {
      if ((v26 & 0xC0000000) != 0)
      {
        if ((v26 & 0xC0000000) == 0x40000000)
        {
          v32 = *(a1 + 448);
          if (v32)
          {
            v33 = *(a1 + 376);
            goto LABEL_98;
          }

LABEL_93:
          sub_10003C894(v31);
          if (a3)
          {
            v9 = sub_10003BC6C(*(a1 + 3600), 2, a3);
            v39 = *(a1 + 3600);
            if (v9)
            {
              sub_100037058(v39);
LABEL_105:
              v21 = (a1 + 1536);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1032) = sub_100038018(v39);
          }

          v9 = 0;
          *a5 = *(a1 + 3600);
          goto LABEL_105;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_93;
      }
    }

    v32 = *(a1 + 448);
    v33 = *(a1 + 376);
    if (!v32)
    {
      v32 = *(v33 + 1032);
    }

LABEL_98:
    v40 = *(v33 + 1040);
    *&v46 = 0;
    v47 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v45 = sub_1000030E0;
    *(&v46 + 1) = 0x20000001FLL;
    if (v40 == 2)
    {
      v41 = sub_100026D00(a1, v40 & 0xFFFF0000, v32, a4, a3 != 0, &v45, a3, a5);
      v9 = v41;
      if (a3 && !v41)
      {
        *(*(a1 + 376) + 1032) = sub_100038018(*a5);
        goto LABEL_105;
      }

      if (!v41)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v9 = 22;
    }

    v42 = strerror(v9);
    sub_100012178("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3898, (a1 + 4040), v32, a3, v9, v42);
    goto LABEL_105;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1472));
      v9 = sub_10002E570(a1, a3, a5);
      if (!v9)
      {
        *(*(a1 + 376) + 152) = sub_100038018(*a5);
      }

      v21 = (a1 + 1472);
      goto LABEL_110;
    }

    v14 = *(a1 + 3584);
    if (v14)
    {
      sub_10003C894(*(a1 + 3584));
      if (!a3)
      {
        goto LABEL_72;
      }

      v15 = sub_10003BC6C(v14, 0, a3);
      if (!v15)
      {
        goto LABEL_72;
      }

      v9 = v15;
      sub_100037058(v14);
LABEL_28:
      v14 = *(a1 + 3568);
      if (*(a1 + 440) != a4 || v14 == 0)
      {
        v9 = sub_10002E504(a1, a4, a3, a5);
        if (!v9)
        {
          v17 = *(a1 + 440);
          v18 = v17 && *(a1 + 504) == 0;
          if (!v18 && v17 == a4)
          {
            v19 = *a5;
            sub_10003C894(v19);
            v9 = 0;
            *(a1 + 3568) = v19;
          }
        }

        return v9;
      }

      sub_10003C894(*(a1 + 3568));
      if (!a3)
      {
        if (v9)
        {
          return v9;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1408));
    v10 = *(a1 + 3592);
    if (!v10)
    {
      v9 = sub_10002E52C(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!v9)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = sub_100038018(*a5);
        }

        v30 = *a5;
        *(a1 + 3592) = *a5;
        sub_10003C894(v30);
        v9 = 0;
      }

      goto LABEL_86;
    }

    sub_10003C894(v10);
    if (a3)
    {
      v9 = sub_10003BC6C(*(a1 + 3592), 2, a3);
      v11 = *(a1 + 3592);
      if (v9)
      {
        sub_100037058(v11);
LABEL_86:
        v21 = (a1 + 1408);
LABEL_110:
        pthread_mutex_unlock(v21);
        return v9;
      }

      *(*(a1 + 376) + 144) = sub_100038018(v11);
    }

    v9 = 0;
    *a5 = *(a1 + 3592);
    goto LABEL_86;
  }

  return v9;
}

uint64_t sub_10001532C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9)
{
  v14 = sub_100017CAC(*a9, a1);
  if (a6 < a8 && v14 != 18)
  {
    return 22;
  }

  v16 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a1 >> 60;
  if (v17 <= 8)
  {
    switch(v17)
    {
      case 2uLL:
        result = 0;
        *(a9 + 4) = *(a5 + 4);
        *(a5 + 4) += a7[4];
        return result;
      case 6uLL:
        *(a9 + 4) = *a5;
        v64 = *a5 + *a7;
        v65 = v64 << 31 >> 31;
        if (v65 == v64 && (v65 & 0x8000000000000000) == 0)
        {
          result = 0;
          *a5 = v65;
          return result;
        }

        v66 = sub_10000E064(*(*a9 + 392));
        sub_1000121C8(v66, "%s:%d: %s dstream id %llu refcnt %u (delta: %d) would overflow\n");
        return 0;
      case 7uLL:
        v31 = *a5;
        *(a9 + 4) = *a5;
        v32 = v31 + *a7;
        *a5 = v32;
        if (v32 < 0)
        {
          panic("can't have a negative refcnt on crypto state %llu refcnt %d\n", v16, v32);
        }

        return 0;
    }

    goto LABEL_49;
  }

  if (*a1 >> 60 <= 0xC)
  {
    if (v17 != 9)
    {
      if (v17 == 10)
      {
        v18 = *(a9 + 21);
        if ((v18 & 2) != 0)
        {
          if ((v18 & 4) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = *a9;
          v20 = *a5;
          v21 = *a7;
          v22 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v23 = (*a7 >> 63) + 1;
          }

          else
          {
            v23 = *a7 >> 63;
          }

          v24 = v23 << 63 >> 63;
          if (v24 != v23 || v24 < 0)
          {
            if (sub_100011490(*(v19 + 392)))
            {
              sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v19 + 4040), "num children", "dir-stats", v16, "num children", v20, v21);
            }

            v22 = v20;
          }

          *a5 = v22;
          v25 = *a9;
          v26 = a5[1];
          v27 = *(a7 + 1);
          v28 = v26 + v27;
          if (__CFADD__(v26, v27))
          {
            v29 = (v27 >> 63) + 1;
          }

          else
          {
            v29 = v27 >> 63;
          }

          v30 = v29 << 63 >> 63;
          if (v30 != v29 || v30 < 0)
          {
            if (sub_100011490(*(v25 + 392)))
            {
              sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v25 + 4040), "total size", "dir-stats", v16, "total size", v26, v27);
            }

            v28 = v26;
          }

          a5[1] = v28;
          v18 = *(a9 + 21);
          if ((v18 & 4) != 0)
          {
LABEL_26:
            a5[2] = *(a7 + 2);
            if (*(a9 + 21))
            {
              goto LABEL_85;
            }

            goto LABEL_82;
          }
        }

        if (v18)
        {
LABEL_85:
          if ((*(a9 + 84) & 8) != 0)
          {
            a9[3] = *a5;
            a9[4] = a5[1];
          }

          result = 0;
          a9[2] = a5[2];
          return result;
        }

LABEL_82:
        v63 = *(a7 + 3);
        if (v63 <= 1)
        {
          v63 = 1;
        }

        a5[3] += v63;
        goto LABEL_85;
      }

      goto LABEL_49;
    }

    a5[1] = *(a7 + 1);
    if (*(a7 + 8))
    {
      result = 0;
      *(a5 + 8) = *(a7 + 8);
      return result;
    }

    return 0;
  }

  if (v17 != 13)
  {
    if (v17 == 14)
    {
      v33 = *(a1 + 8);
      if (v33 != 19)
      {
        if (v33 != 18)
        {
          sub_100012178("%s:%d: don't know how to merge refcounts on objects of expanded type %d\n");
          return 22;
        }

        v34 = *(a9 + 21);
        *(a9 + 21) = 0;
        if ((v34 & 0x800000) != 0)
        {
          result = 0;
          v72 = a7[12];
          a5[3] = *(a7 + 3);
          *(a5 + 12) = v72 | 0x80;
          a5[4] = *(a7 + 4);
          return result;
        }

        v35 = *(a5 + 12);
        v36 = (v34 & 0x4000) == 0;
        if ((v35 & 0x20) == 0)
        {
          v36 = 1;
        }

        v37 = 1;
        if (((v34 >> 8) & ((a5[6] & 0x10u) >> 4) & 1) == 0)
        {
          v38 = (v34 >> 12) & 1;
          if ((v35 & 0x20) != 0)
          {
            LOBYTE(v38) = (v34 & 0x60) == 32;
          }

          if (v36)
          {
            v37 = v38;
          }

          else
          {
            v37 = 1;
          }
        }

        v173 = a5[4];
        v39 = a6 - 52;
        v40 = a5[2];
        v172 = a5[1];
        if ((v35 & 8) != 0)
        {
          v178[0] = 0;
          LODWORD(v176) = 0;
          v174 = 0;
          if (!sub_10004FFE0(a5 + 26, v39, 3, 0, v178, &v176) && v176 == 8)
          {
            v174 = *v178[0];
          }

          v41 = *(a5 + 12);
        }

        else
        {
          v174 = 0;
          v41 = *(a5 + 12);
        }

        if ((v41 & 0x800) != 0)
        {
          v178[0] = 0;
          LODWORD(v176) = 0;
          v74 = sub_10004FFE0(a5 + 26, v39, 4, 0, v178, &v176);
          v73 = 0;
          if (!v74 && v176 == 8)
          {
            v73 = *v178[0];
          }

          v41 = *(a5 + 12);
        }

        else
        {
          v73 = 0;
        }

        if ((v34 & 2) == 0 && (v41 & 0x200) != 0)
        {
          result = 0;
          a9[2] = *a1 & 0xFFFFFFFFFFFFFFFLL;
          v75 = *(a9 + 21) | 0x400000;
          goto LABEL_300;
        }

        v169 = v73;
        if (v41 >= 0x1000)
        {
          v41 |= 0x100u;
          *(a5 + 12) = v41;
        }

        if (a5[4] == (*a1 & 0xFFFFFFFFFFFFFFFLL))
        {
          *(a5 + 12) = v41 | 0x400;
          a5[4] = 0;
        }

        v171 = (v34 >> 1) & 1;
        if (!(v171 | v37 & 1))
        {
          v170 = v40;
          v165 = a8;
          v168 = v39;
          v76 = *a9;
          v77 = *a1;
          v78 = *a5;
          v79 = *a7;
          v80 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v81 = (*a7 >> 63) + 1;
          }

          else
          {
            v81 = *a7 >> 63;
          }

          v82 = v81 << 63 >> 63;
          if (v82 != v81 || v82 < 0)
          {
            if (sub_100011490(*(v76 + 392)))
            {
              sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v76 + 4040), "descendants", "exp-dir-stats", v77 & 0xFFFFFFFFFFFFFFFLL, "descendants", v78, v79);
            }

            v80 = v78;
          }

          *a5 = v80;
          v83 = *a9;
          v84 = *a1;
          v85 = a5[1];
          v86 = *(a7 + 1);
          v87 = v85 + v86;
          if (__CFADD__(v85, v86))
          {
            v88 = (v86 >> 63) + 1;
          }

          else
          {
            v88 = v86 >> 63;
          }

          v89 = v88 << 63 >> 63;
          if (v89 != v88 || v89 < 0)
          {
            if (sub_100011490(*(v83 + 392)))
            {
              sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v83 + 4040), "physical size", "exp-dir-stats", v84 & 0xFFFFFFFFFFFFFFFLL, "physical size", v85, v86);
            }

            v87 = v85;
          }

          v166 = v165 - 52;
          a5[1] = v87;
          v90 = *(a5 + 12);
          if (v90)
          {
            v91 = *a9;
            v92 = *a1;
            v93 = a5[2];
            v94 = *(a7 + 2);
            v95 = v93 + v94;
            if (__CFADD__(v93, v94))
            {
              v96 = (v94 >> 63) + 1;
            }

            else
            {
              v96 = v94 >> 63;
            }

            v97 = v96 << 63 >> 63;
            if (v97 != v96 || v97 < 0)
            {
              if (sub_100011490(*(v91 + 392)))
              {
                sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v91 + 4040), "resource fork size", "exp-dir-stats", v92 & 0xFFFFFFFFFFFFFFFLL, "resource fork size", v93, v94);
              }

              v95 = v93;
            }

            a5[2] = v95;
            v90 = *(a5 + 12);
          }

          v39 = v168;
          v40 = v170;
          if ((v90 & 4) != 0 && (a7[12] & 4) != 0)
          {
            v98 = *a9;
            v99 = *a1;
            v178[0] = 0;
            v176 = 0;
            v177 = 0;
            v100 = sub_10004FFE0(a5 + 26, v168, 1, 0, v178, &v177);
            v101 = 0;
            if (!v100)
            {
              v162 = v99;
              if (v177 == 8)
              {
                v177 = 0;
                if (!sub_10004FFE0(a7 + 26, v166, 1, 0, &v176, &v177) && v177 == 8 && (v102 = *v176) != 0)
                {
                  v159 = *v178[0];
                  v101 = *v178[0] + v102;
                  if (__CFADD__(*v178[0], v102))
                  {
                    v103 = (v102 >> 63) + 1;
                  }

                  else
                  {
                    v103 = v102 >> 63;
                  }

                  v104 = v103 << 63 >> 63;
                  if (v104 != v103 || v104 < 0)
                  {
                    if (sub_100011490(*(v98 + 392)))
                    {
                      sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v98 + 4040), "clone size", "exp-dir-stats", v162 & 0xFFFFFFFFFFFFFFFLL, "clone size", v159, v102);
                    }

                    v101 = v159;
                    v39 = v168;
                    v40 = v170;
                  }
                }

                else
                {
                  v101 = *v178[0];
                }
              }
            }

            v178[0] = v101;
            v112 = sub_100050084(a5 + 26, v39, 1, v178, 8);
            if (v112)
            {
              v113 = v112;
              if (sub_100011490(*(*a9 + 392)))
              {
                v114 = *a9 + 4040;
                v115 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v116 = strerror(v113);
                v156 = v114;
                v40 = v170;
                sub_100012178("%s:%d: %s could not update clone size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3060, v156, v115, v116, v113);
              }
            }

            v90 = *(a5 + 12);
          }

          if ((v90 & 8) != 0 && (a7[12] & 8) != 0)
          {
            v117 = *a9;
            v163 = *a1;
            v178[0] = 0;
            v176 = 0;
            v177 = 0;
            v118 = 0;
            if (!sub_10004FFE0(a5 + 26, v39, 3, 0, v178, &v177) && v177 == 8)
            {
              v160 = v117;
              v177 = 0;
              if (!sub_10004FFE0(a7 + 26, v166, 3, 0, &v176, &v177) && v177 == 8 && (v119 = *v176) != 0)
              {
                v158 = *v178[0];
                v118 = *v178[0] + v119;
                if (__CFADD__(*v178[0], v119))
                {
                  v120 = (v119 >> 63) + 1;
                }

                else
                {
                  v120 = v119 >> 63;
                }

                v121 = v120 << 63 >> 63;
                if (v121 != v120 || v121 < 0)
                {
                  if (sub_100011490(*(v160 + 392)))
                  {
                    sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v160 + 4040), "purgeable size", "exp-dir-stats", v163 & 0xFFFFFFFFFFFFFFFLL, "purgeable size", v158, v119);
                  }

                  v39 = v168;
                  v40 = v170;
                }
              }

              else
              {
                v118 = *v178[0];
              }
            }

            v178[0] = v118;
            v122 = sub_100050084(a5 + 26, v39, 3, v178, 8);
            if (v122)
            {
              v123 = v122;
              if (sub_100011490(*(*a9 + 392)))
              {
                v124 = *a9 + 4040;
                v125 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v126 = strerror(v123);
                v157 = v124;
                v40 = v170;
                sub_100012178("%s:%d: %s could not update purgeable size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3073, v157, v125, v126, v123);
              }
            }

            v90 = *(a5 + 12);
          }

          if ((v90 & 0x800) != 0 && (*(a7 + 49) & 8) != 0)
          {
            v127 = *a9;
            v164 = *a1;
            v178[0] = 0;
            v176 = 0;
            v177 = 0;
            v128 = 0;
            if (!sub_10004FFE0(a5 + 26, v39, 4, 0, v178, &v177) && v177 == 8)
            {
              v161 = v127;
              v177 = 0;
              if (!sub_10004FFE0(a7 + 26, v166, 4, 0, &v176, &v177) && v177 == 8 && (v129 = *v176) != 0)
              {
                v167 = *v178[0];
                v128 = *v178[0] + v129;
                if (__CFADD__(*v178[0], v129))
                {
                  v130 = (v129 >> 63) + 1;
                }

                else
                {
                  v130 = v129 >> 63;
                }

                v131 = v130 << 63 >> 63;
                if (v131 != v130 || v131 < 0)
                {
                  if (sub_100011490(*(v161 + 392)))
                  {
                    sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v161 + 4040), "purgeable rsrc size", "exp-dir-stats", v164 & 0xFFFFFFFFFFFFFFFLL, "purgeable rsrc size", v167, v129);
                  }

                  v39 = v168;
                  v40 = v170;
                }
              }

              else
              {
                v128 = *v178[0];
              }
            }

            v178[0] = v128;
            v132 = sub_100050084(a5 + 26, v39, 4, v178, 8);
            if (v132)
            {
              v133 = v132;
              if (sub_100011490(*(**a9 + 392)))
              {
                v134 = sub_100036630(*a9);
                v135 = *a9;
                if (v134 == 13)
                {
                  v136 = (v135 + 4040);
                }

                else
                {
                  v136 = (*(v135 + 384) + 212);
                }

                v137 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v138 = strerror(v133);
                sub_100012178("%s:%d: %s could not update purgeable rsrc size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3087, v136, v137, v138, v133);
                v40 = v170;
              }
            }
          }
        }

        if ((v34 & 0x8000) != 0)
        {
          *(a5 + 12) |= 2u;
        }

        if ((v34 & 4) != 0)
        {
          a5[4] = *(a7 + 4);
        }

        v139 = *(a5 + 12);
        if ((v139 & 8) != 0)
        {
          if ((v34 & 0x400) != 0 && (v35 & 0x40) == 0)
          {
            v140 = v139 | 0x40;
            v141 = 1024;
LABEL_234:
            *(a5 + 12) = v140;
            *(a9 + 21) |= v141;
            goto LABEL_235;
          }

          if ((v34 & 0x800) != 0 && (v35 & 0x40) != 0)
          {
            v140 = v139 & 0xFFFFFFBF;
            v141 = 2048;
            goto LABEL_234;
          }
        }

LABEL_235:
        if ((v34 & 1) == 0)
        {
          v142 = *(a7 + 5);
          if (v142 <= 1)
          {
            v142 = 1;
          }

          a5[5] += v142;
          v143 = v171;
          if ((v35 & 0x40) == 0)
          {
            v143 = 1;
          }

          if ((v143 & 1) == 0)
          {
            *(a5 + 12) &= ~0x40u;
            *(a9 + 21) |= 0x800u;
          }
        }

        if ((v34 & 8) == 0)
        {
          if ((v34 & 0x200) != 0)
          {
            a9[9] = a5[5];
            *(a9 + 20) = *(a5 + 12);
          }

          v144 = *(a9 + 21);
          if ((v35 & 0x20) == 0 && (v144 & 0x800) != 0)
          {
            a9[7] = v172 - v174;
            if ((*(a5 + 49) & 8) != 0)
            {
              a9[8] = v40 - v169;
            }
          }

LABEL_266:
          a9[2] = a5[4];
          if ((v34 & 0xA0) != 0 || (v34 & 0x100) != 0 || (v35 & 0x20) == 0 || (v178[0] = 0, LODWORD(v176) = 0, sub_10004FFE0(a5 + 26, v39, 2, 0, v178, &v176)) || v176 != 8 || !*v178[0])
          {
            if ((v34 & 0x2000) != 0 && (v35 & 0x40) != 0 && (v144 & 0xC00) == 0)
            {
              a9[2] = 0;
            }
          }

          else
          {
            a9[2] = *v178[0];
            *(a9 + 21) |= 0x100000u;
          }

          if ((v34 & 0x10) != 0)
          {
            v153 = *(a5 + 12);
            a5[3] = 0;
            *(a5 + 12) = v153 & 0xFFFFFF6F | 0x10;
            v178[0] = 0;
            sub_100050084(a5 + 26, v39, 2, v178, 8);
            *(a5 + 12) &= 0xFFFFFBDF;
            a9[2] = v173;
            if ((v34 & 0x80) == 0)
            {
LABEL_279:
              if ((v34 & 0x10000) == 0)
              {
LABEL_280:
                if ((v34 & 0x20000) == 0)
                {
                  if ((v34 & 0x200000) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_290;
                }

                v154 = a5[6] & 0xFFFFFEFF;
LABEL_289:
                *(a5 + 12) = v154;
                if ((v34 & 0x200000) == 0)
                {
LABEL_282:
                  if ((v34 & 0x40000) == 0)
                  {
LABEL_283:
                    if ((v34 & 0x80000) == 0)
                    {
LABEL_293:
                      if ((v34 & 0x100000) == 0 || (v35 & 0x10) != 0)
                      {
                        if (!(v34 & 0x100000 | v35 & 0x10))
                        {
                          if ((v35 & 0x20) == 0)
                          {
                            return 0;
                          }

                          result = 0;
                          v75 = *(a9 + 21) | 0x40;
LABEL_300:
                          *(a9 + 21) = v75;
                          return result;
                        }
                      }

                      else
                      {
                        if (sub_100011490(*(*a9 + 392)))
                        {
                          sub_100012178("%s:%d: %s fixing DIR_STATS_IS_SHADOW flag for dir-stats %llu\n", "exp_dir_stats_refcnt_merge", 3253, (*a9 + 4040), *a1 & 0xFFFFFFFFFFFFFFFLL);
                        }

                        *(a5 + 12) |= 0x110u;
                      }

                      result = 0;
                      v75 = *(a9 + 21) | 0x20;
                      goto LABEL_300;
                    }

                    v152 = a5[6] & 0xFFFFFDFF;
LABEL_292:
                    *(a5 + 12) = v152;
                    goto LABEL_293;
                  }

LABEL_291:
                  v152 = *(a5 + 12) | 0x200;
                  goto LABEL_292;
                }

LABEL_290:
                v155 = *(a5 + 12);
                a5[3] = 0;
                *(a5 + 12) = v155 & 0xFFFFFE4F | 0x100;
                if ((v34 & 0x40000) == 0)
                {
                  goto LABEL_283;
                }

                goto LABEL_291;
              }

LABEL_287:
              v154 = *(a5 + 12) | 0x100;
              goto LABEL_289;
            }
          }

          else if ((v34 & 0x80) == 0)
          {
            goto LABEL_279;
          }

          v178[0] = 0;
          sub_100050084(a5 + 26, v39, 2, v178, 8);
          *(a5 + 12) &= ~0x20u;
          if ((v34 & 0x10000) == 0)
          {
            goto LABEL_280;
          }

          goto LABEL_287;
        }

        a9[3] = *a5;
        a9[4] = a5[1];
        a9[5] = a5[2];
        v145 = *(a5 + 12);
        if ((v145 & 4) != 0)
        {
          v178[0] = 0;
          LODWORD(v176) = 0;
          v146 = sub_10004FFE0(a5 + 26, v39, 1, 0, v178, &v176);
          v147 = 0;
          if (!v146 && v176 == 8)
          {
            v147 = *v178[0];
          }

          a9[6] = v147;
          v145 = *(a5 + 12);
          if ((v145 & 8) == 0)
          {
LABEL_251:
            if ((v145 & 0x800) == 0)
            {
LABEL_265:
              a9[9] = a5[5];
              *(a9 + 20) = *(a5 + 12);
              v144 = *(a9 + 21);
              goto LABEL_266;
            }

LABEL_261:
            v178[0] = 0;
            LODWORD(v176) = 0;
            v150 = sub_10004FFE0(a5 + 26, v39, 4, 0, v178, &v176);
            v151 = 0;
            if (!v150 && v176 == 8)
            {
              v151 = *v178[0];
            }

            a9[8] = v151;
            goto LABEL_265;
          }
        }

        else if ((v145 & 8) == 0)
        {
          goto LABEL_251;
        }

        v178[0] = 0;
        LODWORD(v176) = 0;
        v148 = sub_10004FFE0(a5 + 26, v39, 3, 0, v178, &v176);
        v149 = 0;
        if (!v148 && v176 == 8)
        {
          v149 = *v178[0];
        }

        a9[7] = v149;
        if ((a5[6] & 0x800) == 0)
        {
          goto LABEL_265;
        }

        goto LABEL_261;
      }

      *a5 |= *(a7 + 7) << 56;
      v67 = (a5 + 1);
      v68 = a6 - 8;
      v69 = a8 - 8;
      v178[0] = 0;
      v177 = 0;
      if (!sub_10004FFE0(a7 + 4, v69, 2, 0, v178, &v177) && v177 == 8)
      {
        v70 = *v178[0];
        v176 = v70;
        if (v70)
        {
          v178[0] = 0;
          v177 = 0;
          if (!sub_10004FFE0(v67, a6 - 8, 2, 0, v178, &v177) && v177 == 8 && *v178[0])
          {
            if (*v178[0] == v70)
            {
              goto LABEL_165;
            }

            v71 = sub_100050084(v67, a6 - 8, 2, &v176, 8);
            if (!v71)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v71 = 22;
          }

          v175 = sub_10000E064(*(*a9 + 392));
          v105 = (*a9 + 4040);
          v106 = *(a1 + 12);
          v107 = *(a1 + 20);
          v108 = strerror(v71);
          sub_1000121C8(v175, "%s:%d: %s clone mapping <%llu, %llu>: failed to update dir-stats key: %s (%d)\n", "jobj_refcnt_merge", 3426, v105, v106, v107, v108, v71);
        }
      }

LABEL_165:
      v178[0] = 0;
      v177 = 0;
      if (sub_10004FFE0(a7 + 4, v69, 1, 0, v178, &v177))
      {
        return 0;
      }

      if (v177 != 8)
      {
        return 0;
      }

      v109 = *v178[0];
      v176 = v109;
      if (!v109)
      {
        return 0;
      }

      v178[0] = 0;
      v177 = 0;
      if (!sub_10004FFE0(v67, v68, 1, 0, v178, &v177) && v177 == 8 && *v178[0])
      {
        if (*v178[0] == v109)
        {
          return 0;
        }

        result = sub_100050084(v67, v68, 1, &v176, 8);
        v110 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v110 = 22;
      }

      v111 = sub_10000E064(*(*a9 + 392));
      strerror(v110);
      sub_1000121C8(v111, "%s:%d: %s clone mapping <%llu, %llu>: failed to update attribution tag: %s (%d)\n", "jobj_refcnt_merge");
      return 0;
    }

LABEL_49:
    sub_100012178("%s:%d: don't know how to merge refcounts on objects of type %d\n");
    return 22;
  }

  v42 = a1[1];
  if (HIBYTE(v42) != 2)
  {
    sub_100012178("%s:%d: don't know how to merge refcounts on objects of file info type %llu\n");
    return 22;
  }

  v43 = v42 & 0xFFFFFFFFFFFFFFLL;
  v44 = *(a5 + 12);
  if (v44 >= 2)
  {
    *(a5 + 12) = v44 | 1;
  }

  a9[2] = *a5;
  v45 = *a9;
  v46 = a5[1];
  v47 = *(a7 + 1);
  v48 = v46 + v47;
  if (__CFADD__(v46, v47))
  {
    v49 = (v47 >> 63) + 1;
  }

  else
  {
    v49 = v47 >> 63;
  }

  v50 = v49 << 63 >> 63;
  if (v50 != v49 || v50 < 0)
  {
    if (sub_100011490(*(v45 + 392)))
    {
      sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v45 + 4040), "physical size", "attr tag", v43, "physical size", v46, v47);
    }

    v48 = v46;
  }

  a5[1] = v48;
  v51 = *a9;
  v52 = a5[2];
  v53 = *(a7 + 2);
  v54 = v52 + v53;
  if (__CFADD__(v52, v53))
  {
    v55 = (v53 >> 63) + 1;
  }

  else
  {
    v55 = v53 >> 63;
  }

  v56 = v55 << 63 >> 63;
  if (v56 != v55 || v56 < 0)
  {
    if (sub_100011490(*(v51 + 392)))
    {
      sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v51 + 4040), "full clone size", "attr tag", v43, "full clone size", v52, v53);
    }

    v54 = v52;
  }

  a5[2] = v54;
  v57 = *a9;
  v58 = *a5;
  v59 = *a7;
  v60 = *a5 + v59;
  if (__CFADD__(*a5, v59))
  {
    v61 = (v59 >> 63) + 1;
  }

  else
  {
    v61 = v59 >> 63;
  }

  v62 = v61 << 63 >> 63;
  if (v62 != v61 || v62 < 0)
  {
    if (sub_100011490(*(v57 + 392)))
    {
      sub_100012178("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v57 + 4040), "total_count", "attr tag", v43, "total_count", v58, v59);
    }

    v60 = v58;
  }

  result = 0;
  *a5 = v60;
  return result;
}

uint64_t sub_1000166F8(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      sub_100012178("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "match_jobj_expanded_type_to_tree_type", 4205, (a1 + 4040), a2);
      return 0;
    }

    if ((a2 & 0xFC) == 0x10)
    {
      if (sub_10002E408(a1))
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    sub_100012128("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", "match_jobj_expanded_type_to_tree_type", 4226, (a1 + 4040), a2);
    return 1;
  }

  v4 = 3;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return v4;
    }

    if (a2 == 2)
    {
      return 2;
    }

    return a3;
  }

  if (a2 - 6 < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 8)
  {
    if (a2 == 11)
    {
      return v4;
    }

    return a3;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
LABEL_18:
    if (a3 == 100)
    {
      return 1;
    }

    if (a3 == 101)
    {
      if ((*(*(a1 + 376) + 57) & 1) == 0)
      {
        panic("Requested forced secondary_fs_root but the tree is missing\n");
      }
    }

    else
    {
      if ((sub_10002E408(a1) & 1) == 0)
      {
        return a3;
      }

      if (a3 != 1)
      {
        panic("type = %u, req_tree != fs_root\n", a2);
      }
    }

    return 8;
  }

  if (a3 != 1)
  {
    panic("sealed, fext, req_tree != fs_root");
  }

  return 5;
}

uint64_t sub_10001689C(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v7 = sub_1000166F8(a1, *a3, a2);
  if (v7 != 5)
  {
    v10 = v7;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0;
    v9 = sub_100014C9C(a1, v7, a4, *(a1 + 440), &v16);
    if (v9)
    {
      return v9;
    }

    v11 = a3[1];
    if ((v11 - 1) >= 2)
    {
      if (v11 != 4)
      {
        sub_100012178("%s:%d: %s X %d\n", "insert_jobj", 4331, (a1 + 4040), v11);
        v9 = 22;
LABEL_13:
        sub_100037058(v16);
        return v9;
      }

      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = sub_100016A40(a1, a3, v10, &v15, "addition");
    if (v13 || (v13 = sub_1000140F8(a1, v16, a3, a4, v12), v13))
    {
      v9 = v13;
    }

    else
    {
      sub_100016AE8(a1, v10, v16, a3, a4, v12);
      v9 = 0;
      if (*a3 == 3)
      {
        *(a3 + 14) &= 0xFFFFFFFFFBFBFFFFLL;
      }
    }

    goto LABEL_13;
  }

  v8 = sub_100003198(a1, a4, a3);
  v9 = v8;
  if (v8)
  {
    sub_100012178("%s:%d: %s failed to insert fext in fext_tree: %d\n", "insert_jobj", 4293, (a1 + 4040), v8);
  }

  return v9;
}

uint64_t sub_100016A40(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const char *a5)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  v6 = *(a2 + 8);
  if ((~v6 & 0xFFFFFFFFFFF0000) != 0 && (v5 & 0xFFFFFFFFFFF0000) != 0xFFFFFFFFFFF0000)
  {
    return 0;
  }

  v8 = *(a1 + 1108);
  if (v8)
  {
    return 0;
  }

  if (a3 == 1 && *(a1 + 3584))
  {
    sub_100012178("%s:%d: %s Preventing %s of objects to synthetic folder (id %lld, parent %lld)\n", "prevent_synthetic_object_operation", 4171, (a1 + 4040), a5, v6, v5);
    return 45;
  }

  return v8;
}

void sub_100016AE8(uint64_t result, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 8) == 2)
  {
    v15[7] = v6;
    v15[8] = v7;
    if (!*(result + 1108) && a2 == 1)
    {
      if (*(result + 3584))
      {
        v15[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100014C9C(result, 4, a5, *(result + 440), v15))
        {
          if (v15[0] != a3)
          {
            v13 = sub_1000140F8(result, v15[0], a4, a5, a6);
            if (v13)
            {
              v14 = v13;
              if (sub_100011490(*(result + 392)))
              {
                sub_100012178("%s:%d: %s Shadow create_or_modify_jobj(jobj %p id %lld xid %lld op %d) failed with error %d\n", "duplicate_jobj_op_to_shadow_fs_root", 4191, (result + 4040), a4, *(a4 + 8), a5, a6, v14);
              }
            }
          }

          sub_100037058(v15[0]);
        }
      }
    }
  }
}

uint64_t sub_100016BEC(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v7 = sub_1000166F8(a1, *a3, a2);
  if (v7 == 5)
  {
    v8 = sub_100003214(a1, a4, *(a3 + 1), *(a3 + 2));
    v9 = v8;
    if (v8)
    {
      sub_100012178("%s:%d: %s fext_tree_remove returned %d\n", "remove_jobj", 4462, (a1 + 4040), v8);
    }
  }

  else
  {
    v10 = v7;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0;
    v9 = sub_100014C9C(a1, v7, a4, *(a1 + 440), &v14);
    if (!v9)
    {
      v11 = sub_100016A40(a1, a3, v10, &v13, "removal");
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = sub_1000140F8(a1, v14, a3, a4, 4);
        if (!v9)
        {
          sub_100016AE8(a1, v10, v14, a3, a4, 4);
        }
      }

      sub_100037058(v14);
    }
  }

  return v9;
}

char *sub_100016D1C(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  if (sub_10001390C(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v12 = *a2 >> 60;
  LODWORD(v13) = 40;
  switch(v12)
  {
    case 1:
      if (!a4)
      {
        return 0;
      }

      v14 = a4[24] + 80;
      goto LABEL_32;
    case 2:
      goto LABEL_36;
    case 3:
      LODWORD(v13) = 648;
      goto LABEL_36;
    case 4:
      if (!a4)
      {
        return 0;
      }

      v14 = *(a2 + 4) + a4[1] + 24;
      goto LABEL_32;
    case 5:
      if (!a4)
      {
        return 0;
      }

      v16 = a4[4];
      goto LABEL_19;
    case 6:
    case 12:
      LODWORD(v13) = 24;
      goto LABEL_36;
    case 7:
      if (!a4)
      {
        return 0;
      }

      if (a4[2] == 6)
      {
        v16 = HIBYTE(a4[11]) + a4[11];
      }

      else
      {
        v16 = a4[11];
      }

LABEL_19:
      v14 = v16 + 40;
      goto LABEL_32;
    case 8:
      LODWORD(v13) = 56;
      goto LABEL_36;
    case 9:
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        LODWORD(v13) = (a2[1] & 0x3FF) + 72;
        goto LABEL_36;
      }

      v14 = *(a2 + 4) + 72;
LABEL_32:
      LODWORD(v13) = v14;
      if (v14 >> 16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14 == 0;
      }

      if (!v19)
      {
        goto LABEL_36;
      }

      return 0;
    case 10:
      LODWORD(v13) = 96;
      goto LABEL_36;
    case 11:
      v14 = *(a2 + 4) + 32;
      goto LABEL_32;
    case 13:
      if (!a4)
      {
        return 0;
      }

      v15 = *(a2 + 15);
      if (v15 == 2)
      {
        LODWORD(v13) = 80;
      }

      else
      {
        if (v15 != 1)
        {
          return 0;
        }

        LODWORD(v13) = *(a4 + 2) + 32;
      }

      goto LABEL_36;
    case 14:
      v17 = *(a2 + 2);
      if ((a2[1] & 0xFC) != 0x10)
      {
        v18 = sub_10000E064(*(a1 + 392));
        sub_1000121C8(v18, "%s:%d: %s *** unknown expanded obj type %hhu\n", "jobj_size_for_large_key_val", 2464, (a1 + 4040), v17);
        return 0;
      }

      v13 = (0x48006000200050uLL >> (16 * (v17 & 0xFu))) & 0x78;
LABEL_36:
      if (v12 == 14)
      {
        LODWORD(v20) = *(a2 + 8);
        if (v20 <= 0xF)
        {
          sub_100012178("%s:%d: unknown expanded type (%hhu) on record (%u)\n");
          return 0;
        }
      }

      else
      {
        v20 = *a2 >> 60;
      }

      switch(v20)
      {
        case 1:
          v10 = sub_1000122F4(1uLL, 0x50uLL, 0x10100406569770FuLL);
          if (!v10)
          {
            return v10;
          }

          v27 = sub_1000122F4(1uLL, v13 - 80, 0xDA2D0A4CuLL);
          *(v10 + 9) = v27;
          if (v27)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 80;
          goto LABEL_66;
        case 2:
          v21 = 0x10000407607B2BCLL;
          v22 = 40;
          goto LABEL_71;
        case 3:
          v30 = sub_1000122A0(2u);
          goto LABEL_72;
        case 4:
          v24 = v13;
          v25 = -753538664;
          goto LABEL_59;
        case 5:
          v24 = v13;
          v25 = -2067986874;
          goto LABEL_59;
        case 6:
          v26 = 887226456;
          goto LABEL_51;
        case 7:
          v24 = v13;
          v25 = -1260340143;
          goto LABEL_59;
        case 8:
          v21 = 0x1000040C6EC63FFLL;
          v22 = 56;
          goto LABEL_71;
        case 9:
          v10 = sub_1000122F4(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v10)
          {
            return v10;
          }

          v32 = sub_100012434(v13 - 72, 0xEA9F5E2EuLL);
          *(v10 + 8) = v32;
          if (v32)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 72;
LABEL_66:
          sub_1000123F8(v28, v29);
          return 0;
        case 10:
        case 18:
          v21 = 0x10A004019B037CALL;
          v22 = 96;
          goto LABEL_71;
        case 11:
          v24 = v13;
          v25 = 173046394;
          goto LABEL_59;
        case 12:
          v26 = -753538664;
LABEL_51:
          v21 = v26 | 0x100004000000000;
          v22 = 24;
          goto LABEL_71;
        case 13:
          v23 = HIBYTE(a2[1]);
          if (v23 == 2)
          {
            v31 = 1202085462;
LABEL_70:
            v21 = v31 | 0x10A004000000000;
            v22 = 80;
LABEL_71:
            v30 = sub_1000122F4(1uLL, v22, v21);
          }

          else
          {
            if (v23 != 1)
            {
              sub_100012178("%s:%d: *** Unknown file info type %llu\n");
              return 0;
            }

            v24 = v13;
            v25 = 130634920;
LABEL_59:
            v30 = sub_100012434(v24, v25 | 0x100004000000000);
          }

LABEL_72:
          v10 = v30;
          if (!v30)
          {
            return v10;
          }

LABEL_73:
          v33 = *a2;
          v34 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          *(v10 + 1) = v34;
          v33 >>= 60;
          *v10 = v33;
          *(v10 + 1) = 1;
          v10[1] = v13;
          switch(v33)
          {
            case 1:
              *(v10 + 1) = *a4;
              *(v10 + 2) = *(a4 + 1);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              v35 = a4[24];
              v10[32] = v35;
              v36 = *(v10 + 9);
              v37 = a4 + 25;
              goto LABEL_78;
            case 2:
              v47 = *(a4 + 1);
              v48 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              *(v10 + 1) = *a4 >> 60;
              *(v10 + 8) = *(a4 + 4);
              *(v10 + 2) = v48;
              *(v10 + 3) = v47;
              return v10;
            case 3:
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              *(v10 + 4) = *(a4 + 2);
              *(v10 + 5) = *(a4 + 3);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              *(v10 + 18) = *(a4 + 14);
              *(v10 + 8) = *(a4 + 6);
              *(v10 + 19) = *(a4 + 15);
              *(v10 + 20) = *(a4 + 16);
              *(v10 + 21) = *(a4 + 17);
              *(v10 + 22) = *(a4 + 18);
              *(v10 + 23) = *(a4 + 19);
              v10[48] = a4[40];
              v10[49] = a4[41];
              *(v10 + 13) = *(a4 + 42);
              if (a5 < 0x5D)
              {
                return v10;
              }

              if (sub_10004FE74(v10 + 204, a4 + 46, a5 - 92))
              {
                sub_100012088("%s:%d: failed to init extended fields on inode %lld from blob (xfret %d).\n");
                return v10;
              }

              v57 = v10[204];
              if (!v10[204])
              {
                return v10;
              }

              v58 = 0;
              v59 = (*(v10 + 52) + 2);
              break;
            case 4:
              v45 = *(a2 + 4);
              v10[10] = v45;
              strlcpy(v10 + 24, a2 + 10, v45);
              *(v10 + 4) = *a4;
              v42 = a4[1];
              v10[11] = v42;
              v43 = v10 + v10[10] + 24;
              v44 = a4 + 2;
              goto LABEL_98;
            case 5:
              v39 = *a4;
              *(v10 + 2) = a2[1];
              *(v10 + 3) = v39;
              v35 = a4[4];
              v10[16] = v35;
              v36 = (v10 + 17);
              v37 = a4 + 5;
LABEL_78:
              strlcpy(v36, v37, v35);
              return v10;
            case 6:
              *(v10 + 4) = *a4;
              return v10;
            case 7:
              *(v10 + 4) = *a4;
              LODWORD(v50) = a4[11];
              v52 = a4[2];
              v51 = a4 + 2;
              if (v52 == 6)
              {
                v50 = (v50 >> 8) + v50;
              }

              else
              {
                v50 = v50;
              }

              v43 = (v10 + 10);
              v42 = v50 + 20;
              v44 = v51;
              goto LABEL_98;
            case 8:
              *(v10 + 2) = a2[1];
              v46 = *a4;
              *(v10 + 5) = *a4 & 0xFFFFFFFFFFFFFFLL;
              *(v10 + 12) = *(a4 + 4);
              *(v10 + 48) = HIBYTE(v46);
              return v10;
            case 9:
              if ((*(*(a1 + 376) + 56) & 9) != 0)
              {
                v53 = *(a2 + 2);
                *(v10 + 14) = v53 >> 10;
                v54 = v53 & 0x3FF;
                v55 = 12;
              }

              else
              {
                *(v10 + 14) = 0;
                v54 = *(a2 + 4);
                v55 = 10;
              }

              v10[31] = v54;
              strlcpy(*(v10 + 8), a2 + v55, v54);
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              v10[30] = a4[8];
              if (a5 < 0x13)
              {
                sub_10004FDE8((v10 + 16), 0);
              }

              else if (sub_10004FE74(v10 + 16, a4 + 9, a5 - 18))
              {
                sub_100012088("%s:%d: failed to init extended fields on drec %lld from blob.\n");
              }

              return v10;
            case 10:
              *(v10 + 12) = *a4;
              *(v10 + 3) = vextq_s8(*(a4 + 1), *(a4 + 1), 8uLL);
              return v10;
            case 11:
              v38 = *(a2 + 4);
              v10[12] = v38;
              strlcpy(v10 + 26, a2 + 10, v38);
              goto LABEL_76;
            case 12:
LABEL_76:
              *(v10 + 2) = *a4;
              return v10;
            case 13:
              v40 = a2[1];
              *(v10 + 16) = HIBYTE(v40);
              *(&v41 + 1) = a2[1];
              *&v41 = v40;
              *(v10 + 2) = v41 >> 56;
              if (HIBYTE(v40) == 2)
              {
                *(v10 + 3) = *a4;
                *(v10 + 4) = *(a4 + 1);
                *(v10 + 5) = *(a4 + 2);
                v10[24] = a4[12];
                if (a5 < 0x1B)
                {
                  sub_100012178("%s:%d: %s s_hash <%llu> finfo attribution tag value <%zu> is less than sizeof(j_file_attribution_tag_val_t) <%lu\n");
                  return v10;
                }

                v56 = sub_10004FE74(v10 + 28, a4 + 13, a5 - 26);
                if (v56)
                {
                  strerror(v56);
                  sub_100012088("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n");
                  return v10;
                }

                v61 = v10[28];
                if (v10[28])
                {
                  v62 = 0;
                  for (i = (*(v10 + 8) + 2); ; i += 2)
                  {
                    v64 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v62 += (v64 + 7) & 0x1FFF8;
                    if (!--v61)
                    {
                      return v10;
                    }
                  }

                  if (v64 > 0)
                  {
                    v65 = *(v10 + 9) + (v62 + v64);
                    goto LABEL_126;
                  }

                  sub_100012178("%s:%d: %s size (%d) of FILE_INFO_TAG_EXT_TYPE_SIGNING_ID in attribution tag record with s_hash <%llu> <= 0 \n");
                }
              }

              else if (HIBYTE(v40) == 1)
              {
                v10[12] = *a4;
                v42 = *(a4 + 2);
                *(v10 + 26) = v42;
                v43 = v10 + 27;
                v44 = (a4 + 3);
LABEL_98:
                memcpy(v43, v44, v42);
              }

              return v10;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_93;
              }

              if (sub_1000177C8(a1, v10, a2, a4, a5))
              {
                return v10;
              }

              v34 = *(v10 + 1);
LABEL_93:
              v49 = sub_100012178("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", "key_val_to_jobj", 4935, (a1 + 4040), v34);
              sub_1000127AC(v49, v10);
              return 0;
            default:
              return v10;
          }

          break;
        case 16:
          v31 = -624060581;
          goto LABEL_70;
        case 17:
          v21 = 0x100004089CA3EB1;
          v22 = 32;
          goto LABEL_71;
        case 19:
          v21 = 0x10A0040D41B49CCLL;
          v22 = 72;
          goto LABEL_71;
        default:
          sub_100012178("%s:%d: *** Can't allocate unknown obj type %d\n");
          return 0;
      }

      break;
    default:
      sub_100012178("%s:%d: *** unknown obj type %d\n");
      return 0;
  }

  while (1)
  {
    v60 = *v59;
    if (*(v59 - 2) != 4)
    {
      v60 = (v60 + 7) & 0x1FFF8;
      goto LABEL_116;
    }

    if (*v59)
    {
      break;
    }

LABEL_116:
    v59 += 2;
    v58 += v60;
    if (!--v57)
    {
      return v10;
    }
  }

  v65 = *(v10 + 53) + (v58 + v60);
LABEL_126:
  *(v65 - 1) = 0;
  return v10;
}

uint64_t sub_1000177C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5 <= 0xF)
  {
    sub_100012178("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", "large_key_val_to_jobj", 4506, (a1 + 4040), *(a3 + 8), *a3 >> 60);
    return 0;
  }

  v6 = a2;
  *a2 = v5;
  if (v5 <= 17)
  {
    if (v5 != 16)
    {
      v7 = *a4;
      *(a2 + 16) = *(a3 + 12);
      *(a2 + 24) = v7;
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4;
    *(a2 + 40) = a4[1];
    *(a2 + 48) = *(a4 + 4);
    *(a2 + 52) = *(a4 + 5);
    if (a5 >= 0x19)
    {
      if (sub_10004FE74((a2 + 56), a4 + 12, a5 - 24))
      {
        sub_100012178("%s:%d: %s failed to init extended fields on purgeable %llu from blob\n");
      }

      return v6;
    }

    v8 = a2 + 56;
LABEL_20:
    sub_10004FDE8(v8, 0);
    return v6;
  }

  if (v5 == 18)
  {
    *(a2 + 16) = a4[3];
    *(a2 + 24) = *a4;
    *(a2 + 32) = a4[1];
    *(a2 + 40) = a4[2];
    *(a2 + 56) = a4[4];
    *(a2 + 48) = a4[5];
    *(a2 + 92) = *(a4 + 12);
    if (a5 < 0x35)
    {
      v8 = a2 + 64;
      goto LABEL_20;
    }

    if (sub_10004FE74((a2 + 64), a4 + 26, a5 - 52))
    {
      sub_100012178("%s:%d: %s failed to init extended fields on dir-stats %llu from blob\n");
    }
  }

  else
  {
    if (v5 != 19)
    {
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4 & 0xFFFFFFFFFFFFFFLL;
    *(a2 + 40) = *(a4 + 7);
    if (a5 < 9)
    {
      v8 = a2 + 48;
      goto LABEL_20;
    }

    if (sub_10004FE74((a2 + 48), a4 + 4, a5 - 8))
    {
      sub_100012178("%s:%d: %s failed to init extended fields on clone mapping <%llu/%llu> from blob\n");
    }
  }

  return v6;
}

uint64_t sub_1000179F0(uint64_t a1, int a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, char **a6)
{
  v11 = sub_1000166F8(a1, *a4, a2);
  v12 = sub_1000122A0(3u);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v18 = 832;
  v19 = 3808;
  sub_1000129C0(a1, a4, v12, &v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_100014C9C(a1, v11, 0, a5, &v17);
  if (v14)
  {
    v15 = v14;
LABEL_6:
    sub_1000123AC(v13, 3u);
    return v15;
  }

  v15 = sub_100025428(v17, a5, v13, &v18, 832, v13 + 832, &v19, 0, 0, a3);
  sub_100037058(v17);
  if (v15)
  {
    goto LABEL_6;
  }

  *a6 = sub_100016D1C(a1, v13, v18, v13 + 416, v19);
  sub_1000123AC(v13, 3u);
  if (*a6)
  {
    return 0;
  }

  else
  {
    return sub_1000033FC(*(a1 + 392));
  }
}

uint64_t sub_100017B50(uint64_t a1, unsigned int a2)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2;
  *(a1 + 92) = a2;
  v5 = sub_1000122F4(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 88) = v6;
    v7 = sub_1000122F4(v6, 8uLL, 0x100004000313F17uLL);
    *(a1 + 72) = v7;
    if (v7)
    {
      v8 = sub_1000122F4(*(a1 + 88), 8uLL, 0x100004000313F17uLL);
      *(a1 + 80) = v8;
      if (v8)
      {
        sub_100011924((a1 + 8));
        return 0;
      }

      sub_1000123F8(*a1, 16 * v4);
      v10 = *(a1 + 72);
      v11 = 8 * *(a1 + 88);
    }

    else
    {
      v10 = *a1;
      v11 = 16 * v4;
    }

    sub_1000123F8(v10, v11);
  }

  return 12;
}

uint64_t sub_100017C48(uint64_t a1)
{
  sub_1000123F8(*a1, 16 * *(a1 + 92));
  sub_1000123F8(*(a1 + 72), 8 * *(a1 + 88));
  sub_1000123F8(*(a1 + 80), 8 * *(a1 + 88));

  return j__pthread_mutex_destroy((a1 + 8));
}

uint64_t sub_100017CAC(uint64_t a1, uint64_t a2)
{
  v2 = *a2 >> 60;
  if (v2 == 14)
  {
    if (!a1 || (*(*(a1 + 376) + 57) & 2) != 0)
    {
      LODWORD(v2) = *(a2 + 8);
    }

    else
    {
      v4 = sub_10000E064(*(a1 + 392));
      sub_1000121C8(v4, "%s:%d: %s expanded record found on unsupported volume\n", "jobj_type_from_possibly_large_key", 6667, (a1 + 4040));
      LOBYTE(v2) = 15;
    }
  }

  return v2;
}

uint64_t sub_100017D34(uint64_t a1, int a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(__int128 *, uint64_t), uint64_t a7, _OWORD *a8, unsigned int a9)
{
  v16 = sub_1000166F8(a1, *a5, a2);
  if (v16 == 5)
  {
    v17 = *(a5 + 2);
    if (v17 == -1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a5 + 2);
    }

    if (v17 == -1 && a9 == 4)
    {
      v20 = a9 & 0xFFFF0000;
    }

    else
    {
      v20 = a9;
    }

    return sub_100003294(a1, a3, a4, *(a5 + 1), v18, a8, v20, a6, a7);
  }

  v22 = v16;
  v23 = sub_1000122A0(3u);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v41 = 832;
  v39 = a6;
  if (!*(a5 + 1) && !*a5)
  {
    if ((a9 & 0x10000) == 0 && a5[1])
    {
      goto LABEL_16;
    }

LABEL_20:
    v25 = 1;
    goto LABEL_21;
  }

  if ((a9 & 0x10000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v25 = 0;
LABEL_21:
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v27;
  v43 = v27;
  v42[0] = v27;
  v42[1] = v27;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  if ((a9 & 0x20000) != 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = 1;
  }

  v38 = v28;
  sub_1000129C0(a1, a5, v23, &v41);
  if (v22 == 1)
  {
    v29 = *(a5 + 1);
    if ((~v29 & 0xFFFFFFFFFFF0000) == 0 || v29 == 2)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }
  }

  v31 = sub_100014C9C(a1, v22, a3, a4, &v40);
  if (v31)
  {
    v26 = v31;
    goto LABEL_38;
  }

  sub_100025DA4(v42, v40, a4, a9, v24, v41, 832, v24 + 104, 0xEE0u, a8);
  if ((v32 & 0xFFFFFFFD) != 0)
  {
    v26 = v32;
    goto LABEL_37;
  }

  if (sub_100025F1C(v42))
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v33 = v25 | ((a9 & 0x20000) >> 17);
  while (1)
  {
    if (v33)
    {
      if ((v38 & 1) == 0)
      {
        if (*a5)
        {
          v34 = *a5;
          if (v34 != sub_100017CAC(a1, v24))
          {
            goto LABEL_54;
          }
        }
      }
    }

    else if ((*v24 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 1) || *a5 && sub_100017CAC(a1, v24) != *a5)
    {
      goto LABEL_36;
    }

    v35 = sub_100016D1C(a1, v24, v43, v24 + 416, DWORD1(v43));
    if (!v35)
    {
      break;
    }

    v36 = v35;
    v26 = v39(v35, a7);
    sub_1000127AC(v26, v36);
    if (v26)
    {
      goto LABEL_37;
    }

LABEL_54:
    v37 = sub_100025F38(v42);
    if ((a9 & 0x40000) == 0)
    {
      v26 = v37;
      if (v37)
      {
        goto LABEL_37;
      }
    }

    if (sub_100025F1C(v42))
    {
      goto LABEL_36;
    }
  }

  if ((a9 & 0x40000) != 0)
  {
    goto LABEL_54;
  }

  v26 = 12;
LABEL_37:
  sub_100037058(v40);
LABEL_38:
  sub_1000123AC(v24, 3u);
  return v26;
}

uint64_t sub_100017FF4(uint64_t a1, int a2, unint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, __int128 *a9, int a10)
{
  v27[0] = a1;
  v27[1] = a6;
  v14 = *a4;
  v15 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v27[2] = a7;
  v27[3] = v15;
  v16 = v14 >> 60;
  if (v14 >> 60 == 14)
  {
    LODWORD(v16) = *(a4 + 8);
  }

  v28 = 0xAAAAAAAAAA0000AALL;
  LOBYTE(v28) = v16;
  *v26 = 0xAAAAAAAAAAAAAAAALL;
  if (a8)
  {
    *a8 = 0;
  }

  if (v15 || v16)
  {
    if ((a10 & 0x20000) != 0)
    {
      BYTE2(v28) = 1;
    }
  }

  else
  {
    BYTE1(v28) = 1;
  }

  if ((~v14 & 0xFFFFFFFFFFF0000) == 0 || v15 == 2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  if (a2 == 1)
  {
    a2 = v18;
  }

  result = sub_100014C9C(a1, a2, a3, *(a1 + 440), v26);
  if (!result)
  {
    if ((a10 & 0x4000) != 0)
    {
      v20 = sub_1000122A0(3u);
      if (!v20)
      {
        return 12;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 440);
    v22 = a10 & 0x7000;
    switch(v22)
    {
      case 0x4000:
        v23 = sub_100025FC8(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_1000181DC, v27, v20, v20 + 832);
        break;
      case 0x2000:
        v23 = sub_1000261C0(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_1000181DC, v27);
        break;
      case 0x1000:
        v23 = sub_100026624(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_1000181DC, v27);
        break;
      default:
        v24 = 22;
        if ((a10 & 0x4000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
    }

    v24 = v23;
    if ((a10 & 0x4000) == 0)
    {
LABEL_30:
      sub_100037058(*v26);
      if (v24 == 2 || v24 == 0x80000000)
      {
        result = 0;
      }

      else
      {
        result = v24;
      }

      if (a8)
      {
        *a8 = result == 0;
      }

      return result;
    }

LABEL_29:
    sub_1000123AC(v20, 3u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1000181DC(void *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  result = sub_10001390C(*a5, a1, a2, a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a5 + 33) != 1)
  {
    if ((*(a5 + 34) & 1) == 0)
    {
      if ((*a1 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 24) || *(a5 + 32) && sub_100017CAC(*a5, a1) != *(a5 + 32))
      {
        return 0x80000000;
      }

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*(a5 + 34))
  {
LABEL_6:
    if (*(a5 + 32) && sub_100017CAC(*a5, a1) != *(a5 + 32))
    {
      return 0;
    }
  }

LABEL_12:
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);

  return v12(a1, v8, a3, v9, v11);
}

uint64_t sub_1000182F0(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - 2;
  if (v4 < 2)
  {
LABEL_11:
    if (a3 < a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (a3 == a4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      v6 = *a1;
      v7 = v6 - *a2;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a2;
      if (v6)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  return v7;
}

uint64_t sub_10001835C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v12 = sub_10002E290(a1);
  if (v12 <= 1)
  {
    if (!v12)
    {
      *a5 = 0;
      goto LABEL_4;
    }

    v16 = *(a1 + 504);
    if (!v16)
    {
      v16 = a1;
    }

    if ((*(*(v16 + 376) + 264) & 9) != 0)
    {
      panic("assertion failed: %s", "fs_is_content_protected(apfs)");
    }

    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    v17 = sub_1000122F4(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
    if (v17)
    {
      v18 = v17;
      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        panic("invalid crypto id");
      }

      v19 = sub_100012434(0xD0uLL, 0x1000040B4E0BC51uLL);
      if (v19)
      {
        v20 = v19;
        add_explicit = *a5;
        if (!*a5)
        {
          add_explicit = atomic_fetch_add_explicit((*(a1 + 376) + 176), 1uLL, memory_order_relaxed);
          *a5 = add_explicit;
        }

        *v18 = add_explicit;
        *v19 = 2621703;
        v19[1] = *a5;
        *(v19 + 4) = 1;
        if (sub_10002F1C4())
        {
          v14 = 1;
        }

        else
        {
          sub_10002F1A0(a1, v18, v20);
          *(v20 + 2) += *(v20 + 38);
          v22 = sub_10001689C(a1, 1, v20, a4);
          if (v22)
          {
            v14 = v22;
            *a5 = 0;
          }

          else
          {
            v23 = sub_10002EE7C(a1, 1, v18);
            if (!v23)
            {
              sub_1000123F8(v20, 208);
              if (*a5)
              {
                return 0;
              }

LABEL_4:
              v13 = *(a1 + 504);
              if (!v13)
              {
                v13 = a1;
              }

              if ((*(*(v13 + 376) + 264) & 9) == 0)
              {
                panic("assertion failed: %s", "!((err == 0) && (*crypto_id == 0) && fs_is_content_protected(apfs))");
              }

              return 0;
            }

            v14 = v23;
            sub_100012178("%s:%d: %s crypto_obj_insert of new crypto_id %lld should not have failed (ret %d)\n", "icp_new_crypto", 8016, (a1 + 4040), *a5, v23);
            *(v20 + 1) = 3;
            sub_100016BEC(a1, 1, v20, a4);
          }
        }

        sub_10002EB60(a1, 1, v18);
        sub_1000123F8(v20, 208);
        return v14;
      }

      sub_1000123F8(v18, 96);
    }

    return 12;
  }

  if (v12 != 2)
  {
    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    if ((v9 & 2) != 0 || v10 <= 6 && ((1 << v10) & 0x46) != 0 || (v15 = sub_10002F1DC(a1, 4u), v10 == 4) && v15)
    {
      if (!a6)
      {
        panic("assertion failed: %s", "ino");
      }

      panic("assertion failed: %s", "ino_has_vnode(ino)");
    }
  }

  v14 = 0;
  *a5 = 4;
  return v14;
}

uint64_t sub_100018718(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    panic("assertion failed: %s", "xid");
  }

  if ((sub_10002E290(a1) | 2) != 3)
  {
    return 0;
  }

  return sub_10001BD50(a1, a2, a3);
}

uint64_t sub_1000187B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14 = a5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  v9 = *(a2 + 76);
  if ((*(a2 + 64) & 8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_10001835C(a1, v9, v10, a6, &v14, a2);
  if (!v11)
  {
    v12 = v14;
    *(a4 + 16) = v14;
    if (sub_10002E290(a1) == 1)
    {
      sub_10002F0D8(a1, 1, v12);
    }
  }

  return v11;
}

uint64_t sub_100018854(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = v8;
  __src[1] = v8;
  v21 = 0;
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    add_explicit = 0;
    v11 = 0;
    v12 = 0;
    v13 = 22;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 376);
  if ((*(v9 + 57) & 2) == 0 || (~*(a2 + 84) & 0x40000020) != 0)
  {
    add_explicit = *(a2 + 8);
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((v9 + 176), 1uLL, memory_order_relaxed);
  }

  v14 = sub_1000187B4(a1, a2, a3, __src, add_explicit, a3);
  if (v14)
  {
    v13 = v14;
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = sub_10005029C((a2 + 408), 8, 32, __src, 0x28uLL);
  if (v15)
  {
    sub_100012178("%s:%d: %s *** failed to set dstream as an extended field of ino %lld (ret %d)\n", "fs_create_dstream", 10892, (a1 + 4040), *(a2 + 8), v15);
    v12 = 0;
    v11 = 1;
    v13 = 12;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v20 = -1431655766;
  v17 = sub_100050654((a2 + 408), 8, 0, &v21, &v20);
  if (v17 || v20 != 40)
  {
    sub_100012178("%s:%d: %s *** failed to fetch the dstream pointer for %lld (ret %d)\n", "fs_create_dstream", 10899, (a1 + 4040), *(a2 + 8), v17);
    v21 = 0;
    v11 = 1;
    v13 = 2;
  }

  else
  {
    v19[1] = *(a2 + 24);
    v19[0] = 1573126;
    v11 = 1;
    v19[2] = 1;
    v18 = sub_10001689C(a1, 1, v19, a3);
    v13 = v18;
    if (v18)
    {
      sub_100012178("%s:%d: %s failed to insert new dstream_id %llu (ret %d)", "fs_create_dstream", 10916, (a1 + 4040), *(a2 + 24), v18);
      v21 = 0;
    }
  }

  v12 = 1;
  if (a4)
  {
LABEL_13:
    *a4 = v13;
  }

LABEL_14:
  if (v13)
  {
    if (v11)
    {
      sub_100018718(a1, add_explicit, a3);
    }

    if (v12)
    {
      sub_1000506E0((a2 + 408), 8);
    }
  }

  return v21;
}

uint64_t sub_100018AAC(uint64_t a1, char a2, char *__s, size_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a8)
  {
    v12 = a4;
    *a8 = 0;
    if (a4)
    {
      if (__s[a4 - 1])
      {
        v12 = a4 + 1;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = strlen(__s) + 1;
    }

    if (v12 != 1)
    {
LABEL_8:
      if (v12 > 0x2FE)
      {
        return 7;
      }

      v17 = sub_1000122F4(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
      if (v17)
      {
        v18 = v17;
        v19 = sub_100012434(v12, 0x47093A9uLL);
        *(v18 + 8) = v19;
        if (v19)
        {
          *v18 = 9;
          *(v18 + 1) = a2;
          *(v18 + 1) = v12 + 72;
          *(v18 + 1) = a6;
          memcpy(v19, __s, v12 - 1);
          *(*(v18 + 8) + v12 - 1) = 0;
          *(v18 + 31) = v12;
          v20 = *(*(a1 + 376) + 56);
          if (v20)
          {
            if (a5 == -1)
            {
              v22 = (v20 >> 3) & 1;
              goto LABEL_25;
            }
          }

          else if (a5 == -1 || (v20 & 8) == 0)
          {
            if ((v20 & 8) == 0)
            {
              v18[14] = 0;
LABEL_21:
              *(v18 + 30) = 0;
              *(v18 + 2) = a7;
              *(v18 + 3) = 0;
              sub_10004FDE8((v18 + 8), 0);
              v16 = 0;
              *a8 = v18;
              return v16;
            }

            v22 = 1;
LABEL_25:
            v24 = -1;
            v23 = sub_100002214(*(v18 + 8), v12 - 1, v22, sub_100018C9C, &v24);
            if (v23)
            {
              v16 = v23;
              sub_1000123F8(*(v18 + 8), *(v18 + 31));
              sub_1000123F8(v18, 72);
              return v16;
            }

            v18[14] = v24 & 0x3FFFFF;
            goto LABEL_21;
          }

          v18[14] = a5;
          goto LABEL_21;
        }

        sub_1000123F8(v18, 72);
      }

      return 12;
    }
  }

  return 22;
}

uint64_t sub_100018C9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_100070150(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018CDC(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  v3 = *(a1 + 376);
  if ((*(v3 + 57) & 2) != 0)
  {
    result = 0;
    ++*(a2 + 104);
  }

  else if ((*(v3 + 48) & 2) != 0)
  {
    result = sub_100050564((a2 + 408), 17, 0, &__dst, 8uLL);
    if (!result)
    {
      ++__dst;
      return sub_10005029C((a2 + 408), 17, 0, &__dst, 8uLL);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100018D90(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v2 = *(a1 + 376);
  if ((*(v2 + 57) & 2) != 0)
  {
    result = 0;
    *(a2 + 104) = 0;
  }

  else if ((*(v2 + 48) & 2) != 0)
  {
    return sub_10005029C((a2 + 408), 17, 0, &__src, 8uLL);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100018DF0(uint64_t a1, unint64_t a2, unsigned __int8 a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  v11 = 0;
  v18 = -1431655766;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = a2 - v11;
  if (a2 > v11)
  {
    v13 = (a1 + v11);
    while (1)
    {
      v14 = sub_100018F5C(v13, v12, &v18);
      v15 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v10 = 0;
        if (!a5)
        {
          return v10;
        }

        v16 = 92;
        goto LABEL_29;
      }

      if (!v18)
      {
        break;
      }

      if (a4 && v18 >= 0x80)
      {
        *a4 = 1;
      }

      if (v15 >= 0x2000)
      {
        if ((a3 & 2) != 0 && ((v15 & 0x7FFFFFFE) == 0x200E || v15 - 8234 < 6 || v15 - 8298 < 6 || (~v15 & 0xFFFE) == 0 || v15 == 65279 || v15 - 64976 <= 0x1F))
        {
          v10 = 0;
          if (!a5)
          {
            return v10;
          }

          v16 = 1;
LABEL_29:
          *a5 = v16;
          return v10;
        }

        v10 += a3 & ((v15 & 0xFFFF0000) != 0);
      }

      v11 += v14;
      ++v10;
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_6:
      v13 = (a1 + v11);
      v12 = -1;
    }
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_29;
  }

  return v10;
}

uint64_t sub_100018F5C(char *a1, uint64_t a2, int *a3)
{
  *a3 = -1;
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if (a2 == -1)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v6 = 1;
LABEL_10:
    *a3 = v5;
    return v6;
  }

  if ((v5 - 194) <= 0x1D)
  {
    if (v4 != 1)
    {
      v7 = a1[1];
      if ((v7 & 0xC0) == 0x80)
      {
        v8 = v7 & 0x3F | ((v5 & 0x1F) << 6);
        v6 = 2;
        v5 = v8;
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v5 & 0xF0) == 0xE0)
  {
    if (v4 < 3)
    {
      return 0;
    }

    if (v5 == 224)
    {
      if (a1[1] - 192 < 0xFFFFFFE0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if ((v5 - 225) > 0xB)
    {
      if (v5 == 237)
      {
        if (a1[1] > -97)
        {
          return 0;
        }

        goto LABEL_38;
      }
    }

    else if ((a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

    if ((~v5 & 0xEE) == 0 && (a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

LABEL_38:
    v11 = a1[2];
    if ((v11 & 0xC0) == 0x80)
    {
      v5 = ((v5 & 0xF) << 12) | ((a1[1] & 0x3F) << 6) | v11 & 0x3F;
      v6 = 3;
      goto LABEL_10;
    }

    return 0;
  }

  v6 = 0;
  if (v4 >= 4 && (v5 - 245) >= 0xFFFFFFFB)
  {
    if (v5 == 240)
    {
      v10 = a1[1];
      if ((v10 - 192) < 0xFFFFFFD0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v10) = a1[1];
      if ((v5 - 241) > 2)
      {
        if (v10 > -113)
        {
          return 0;
        }
      }

      else if ((v10 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v12 = a1[2];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = a1[3];
      if ((v13 & 0xC0) == 0x80)
      {
        v5 = ((v5 & 7) << 18) | ((v10 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
        v6 = 4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10001911C(uint64_t a1, uint64_t a2, char *__s, size_t a4, uint64_t *a5, int *a6, void *a7)
{
  v35 = 0;
  v13 = *(*(a1 + 376) + 56);
  if ((v13 & 9) == 0)
  {
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    v14 = sub_100018AAC(a1, 0, __s, a4, -1, a2, 0, v29);
    if (!v14)
    {
      v14 = sub_1000179F0(a1, 1, a5, v29[0], *(a1 + 440), &v35);
      sub_1000127AC(v14, v29[0]);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    if (__s[a4 - 1])
    {
      ++a4;
      goto LABEL_10;
    }
  }

  else
  {
    a4 = strlen(__s) + 1;
  }

  if (a4 == 1)
  {
    v15 = 0;
    v14 = 22;
    goto LABEL_19;
  }

LABEL_10:
  if (a4 > 0x2FE)
  {
    v15 = 0;
    v14 = 7;
    goto LABEL_19;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29[0] = 4718601;
  v30 = 0u;
  v29[1] = a2;
  DWORD2(v32) = 0;
  v16 = a4 - 1;
  v34 = -1;
  v17 = sub_100002214(__s, a4 - 1, (v13 >> 3) & 1, sub_100018C9C, &v34);
  if (v17)
  {
    v14 = v17;
    if (v17 == 92)
    {
      v23 = __s;
      v24 = v16;
      v18 = sub_100017D34(a1, 1, 0, *(a1 + 440), v29, sub_1000193FC, &v23, a5, 4u);
      if (v18 == -1)
      {
        v14 = 0;
        if (*(&v24 + 1))
        {
          v35 = *(&v24 + 1);
        }
      }

      else if (v18)
      {
        v14 = v18;
      }

      else
      {
        v14 = 2;
      }

      v15 = -1;
      goto LABEL_19;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = v34 & 0x3FFFFF;
  DWORD1(v24) = -1431655766;
  v26 = a1;
  v28 = -1431655766;
  v23 = __s;
  LODWORD(v24) = v34 & 0x3FFFFF;
  *(&v24 + 1) = v16;
  v25 = 0;
  v27 = a7 != 0;
  v21 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
  v22 = v34 << 10;
  v20 = sub_100017FF4(a1, 1, 0, &v21, 12, sub_100019520, &v23, 0, a5, 4100);
  if (v20 == -1)
  {
    v14 = 0;
    if (v25)
    {
      v35 = v25;
    }
  }

  else if (v20)
  {
    v14 = v20;
  }

  else
  {
    v14 = 2;
  }

LABEL_19:
  if (a7 && !v14)
  {
    *a7 = v35;
  }

  if (a6 && (v14 | 2) == 2)
  {
    *a6 = v15;
  }

  return v14;
}

uint64_t sub_1000193FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 + 1 != *(a1 + 62) || memcmp(*(a1 + 64), *a2, v2))
  {
    return 0;
  }

  v7 = sub_1000122F4(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
  *(a2 + 16) = v7;
  if (!v7)
  {
    return 12;
  }

  v8 = sub_100012434(*(a1 + 62), 0x76690F2EuLL);
  v9 = *(a2 + 16);
  *(v9 + 8) = v8;
  if (!v8)
  {
    sub_1000123F8(v9, 72);
    return 12;
  }

  *v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  *(v9 + 8) = *(a1 + 64);
  v9[2] = v11;
  v9[3] = v12;
  v9[1] = v10;
  memcpy(*(*(a2 + 16) + 64), *(a1 + 64), *(a1 + 62));
  v13 = sub_1000500F8(*(a2 + 16) + 32, (a1 + 32));
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v13;
  sub_1000123F8(*(*(a2 + 16) + 64), *(a1 + 62));
  sub_1000123F8(*(a2 + 16), 72);
  *(a2 + 16) = 0;
  return v5;
}

uint64_t sub_100019520(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  v17 = 0;
  v5 = *(a1 + 8);
  v6 = *(a5 + 8);
  if (v5 >> 10 < v6)
  {
    return 0;
  }

  if (v5 >> 10 != v6)
  {
    return 2;
  }

  v12 = *(a1 + 8) & 0x3FF;
  v13 = *(a5 + 16);
  v14 = *a5;
  if (v13 == (v5 & 0x3FF) && !strncmp((a1 + 12), *a5, v5 & 0x3FF))
  {
    v17 = 1;
  }

  else if (sub_100002BC0((a1 + 12), (v12 - 1), v14, v13, (*(*(*(a5 + 32) + 376) + 56) >> 3) & 1, &v17) || (v17 & 1) == 0)
  {
    return 0;
  }

  if (*(a5 + 40) && (v16 = sub_100016D1C(*(a5 + 32), a1, a2, a3, a4), (*(a5 + 24) = v16) == 0))
  {
    return 12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100019634(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 484) & 4) != 0)
  {
    v4 = *(a1 + 376);
    if ((*(v4 + 264) & 4) == 0)
    {
      atomic_fetch_or_explicit((v4 + 264), 4uLL, memory_order_relaxed);
    }

    pthread_mutex_lock((a1 + 1280));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1280));
  }

  *(*(a1 + 376) + 1056) = a2;
  v5 = sub_10002E64C(a1);
  v6 = *(a1 + 376);
  if (v5)
  {
    *(v6 + 1064) |= 0x10u;
  }

  *(v6 + 1120) = a2;

  sub_10003D180(a1, a2, 0);
}

uint64_t sub_1000196D8(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    return 0;
  }

  if (sub_10002E290(a1) != 3 || (*(a2 + 64) & 8) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 76) & 0x1F;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return (v4 == 4) & ~sub_10002F1DC(a1, 4u);
  }
}

uint64_t sub_100019764(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (sub_1000196D8(a1, a2))
  {
    *a3 = 5;
    return 1;
  }

  else
  {
    v6 = *(a2 + 76);

    return sub_1000197C0(v6, a3);
  }
}

uint64_t sub_1000197C0(char a1, unsigned int *a2)
{
  v2 = a1 & 0x1F;
  if (v2 > 7 || v2 == 5)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t sub_1000197E4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = *a2 > *a4;
  if (*a2 < *a4)
  {
    v6 = -1;
  }

  *a6 = v6;
  return 0;
}

unint64_t sub_100019804(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v4))
  {
    v5 = qword_10006A828[v4];
    v6 = qword_10006A850[v4];
  }

  else
  {
    v6 = 100;
    if (((a4 > 4) & ((*(*(a1 + 376) + 48) & 2) >> 1)) != 0)
    {
      v6 = 80;
    }

    v5 = 3;
  }

  return 3 * a3 * v5 + a4 + v6;
}

unint64_t sub_100019874(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 == 6)
  {
    return 0;
  }

  if (a2 == 2 || a2 == 4)
  {
    v4 = *(a1 + 392);
    if (!*(v4 + 648))
    {
      return 0;
    }

    v5 = 17920;
  }

  else
  {
    v4 = *(a1 + 392);
    v5 = 25600;
  }

  if (*(v4 + 640) == 1)
  {
    v6 = *(v4 + 656) == 0;
    v7 = 4000;
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 4000;
  }

  if (a3 / 0x64 < v7)
  {
    v7 = a3 / 0x64;
  }

  if (v7 <= 0x64)
  {
    return 100;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100019908(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  v2 = 1000000 * v5.tv_sec + SLODWORD(v5.tv_nsec) / 1000;
  atomic_fetch_add_explicit((a1 + 3816), 1u, memory_order_relaxed);
  v3 = v2 - *(a1 + 3808);
  if (*(a1 + 3816) >= 17)
  {
    if (v3 < 0xF4240)
    {
      result = 0;
      *(a1 + 3808) = v2;
      return result;
    }

    goto LABEL_5;
  }

  if (v3 > 0xF423F)
  {
LABEL_5:
    *(a1 + 3808) = v2;
    result = 1;
    *(a1 + 3816) = 1;
    return result;
  }

  return 1;
}

uint64_t sub_1000199CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6)
{
  v9 = a3;
  v10 = a2;
  v12 = (*(a1 + 392) + 488);
  v13 = *(a1 + 376);
  v14 = *(v13 + 72);
  if (v14 && v14 == *(v13 + 80))
  {
    v12 = (a1 + 424);
  }

  memset(v57, 170, sizeof(v57));
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55 = -86;
  v54 = -86;
  v15 = sub_100019804(a1, a2, a3, a4);
  sub_100042EA8(a1, 0, &v57[3], 0, 0, 0);
  v16 = sub_100019874(a1, v10, v57[3]);
  pthread_mutex_lock((*(a1 + 392) + 504));
  v17 = sub_100043184(a1, v15, v16, 0, v12, &v57[2], &v57[1], &v55, v57, &v56, &v54);
  v50 = a4;
  if (v17 != 28)
  {
    v25 = v17;
    v47 = a5;
    v51 = 0;
    v52 = 0;
    v22 = 0;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v18 = *a6;
  if (*a6 && v54 != 1)
  {
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v25 = 28;
    goto LABEL_32;
  }

  v47 = a5;
  v48 = v9;
  v43 = v10;
  v45 = a6;
  v19 = v12;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v51 = 0;
  v52 = v18 != 0;
  if (v18)
  {
    v23 = 10000000;
  }

  else
  {
    v23 = 250000000;
  }

  while (1)
  {
    if (v55 != 1 || v18 || v57[0] < v57[2])
    {
      goto LABEL_21;
    }

    if (v20)
    {
      break;
    }

    if (v51 <= 31)
    {
      goto LABEL_16;
    }

LABEL_21:
    if (v54 != 1)
    {
      v25 = 28;
      goto LABEL_31;
    }

    v25 = 28;
    if (*(a1 + 1124) <= v52 || ((v18 != 0) & v21) != 0)
    {
      goto LABEL_31;
    }

    v58[0].tv_sec = 0;
    v58[0].tv_nsec = v23;
    ++v22;
    v26 = *(a1 + 392);
    *(v26 + 496) += v15;
    v27 = sub_100011950((v26 + 568), (v26 + 504), 8, "blocks_in_txn", v58);
    *(*(a1 + 392) + 496) -= v15;
    v21 |= v27 == 35;
LABEL_25:
    v28 = sub_100043184(a1, v15, v16, 0, v19, &v57[2], &v57[1], &v55, v57, &v56, &v54);
    if (v28 != 28)
    {
      v25 = v28;
      goto LABEL_31;
    }
  }

  if (v56 > v20 || v51 >= 32)
  {
    goto LABEL_21;
  }

LABEL_16:
  ++v51;
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v53 = 0;
  v24 = sub_10004E8AC(*(a1 + 392), &v53);
  if (!v24)
  {
    if (!v20)
    {
      v20 = v53;
    }

    sub_1000432DC(*(a1 + 392), v57, v53);
    sub_10004E8BC(*(a1 + 392), v53, 4);
    pthread_mutex_lock((*(a1 + 392) + 504));
    goto LABEL_25;
  }

  v25 = v24;
  pthread_mutex_lock((*(a1 + 392) + 504));
LABEL_31:
  v12 = v19;
  a6 = v45;
  v10 = v43;
  v9 = v48;
  if (v25)
  {
LABEL_32:
    *a6 = 0;
    if (sub_100019908(a1) || v10 == 2 && v15 <= 0x31 && *(a1 + 3820) <= 9)
    {
      if (v25 == 28)
      {
        v29.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v29.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        v58[0] = v29;
        v58[1] = v29;
        __strlcpy_chk();
        v30 = sub_10001A258(v10);
        v44 = v57[1];
        v46 = v30;
        v41 = *(a1 + 3800);
        v42 = *v12;
        v40 = v57[2];
        v49 = v9;
        v31 = v57[0];
        v32 = v55;
        v33 = v54;
        v34 = *(a1 + 1124);
        v35 = sub_100042DAC(*(a1 + 392), 0);
        sub_100012088("%s:%d: %s %s: ENOSPC: ttype %s (r %lld d %lld tx %d) blocks %lld free %lld txn %lld # %d th %lld rr %lld sh %lld fq %lld lim %d %d freeup %d wait %d er %d\n", "fs_tx_enter_internal", 28354, (a1 + 4040), v58, v46, v49, v50, v52, v15, v44, v42, v34, v16, v41, v40, v31, v32, v33, v51, v22, v35);
        if (v10 == 2 && v15 <= 0x31)
        {
          ++*(a1 + 3820);
        }
      }

      else
      {
        sub_100012178("%s:%d: %s failed to compare currently available space: error %d\n", "fs_tx_enter_internal", 28340, (a1 + 4040), v25);
      }
    }

    pthread_mutex_unlock((*(a1 + 392) + 504));
    return v25;
  }

LABEL_37:
  atomic_fetch_add_explicit((a1 + 1124), 1u, memory_order_relaxed);
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v36 = *(a1 + 392);
  if (v47)
  {
    v37 = sub_10004E8B4(v36, a6);
    if (v37)
    {
      v25 = v37;
      sub_100012178("%s:%d: %s tx_enter_frozen() failed: %d\n");
LABEL_52:
      pthread_mutex_lock((*(a1 + 392) + 504));
      atomic_fetch_add_explicit(v12, -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
      pthread_mutex_unlock((*(a1 + 392) + 504));
      *a6 = 0;
      return v25;
    }
  }

  else
  {
    v38 = sub_10004E8AC(v36, a6);
    if (v38)
    {
      v25 = v38;
      sub_100012178("%s:%d: %s tx_enter() failed: %d\n");
      goto LABEL_52;
    }
  }

  if (*(a1 + 3820))
  {
    *(a1 + 3820) = 0;
  }

  v25 = sub_10003BC6C(a1, 0, *a6);
  if (v25)
  {
    sub_10004E8BC(*(a1 + 392), *a6, 0);
    goto LABEL_52;
  }

  return v25;
}

uint64_t sub_100019FC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = a2;
  v12 = *(a1 + 392);
  v13 = (v12 + 488);
  v14 = *(a1 + 376);
  v15 = *(v14 + 72);
  if (v15 && v15 == *(v14 + 80))
  {
    v13 = (a1 + 424);
  }

  pthread_mutex_lock((v12 + 504));
  atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
  v16 = sub_100019804(a1, v10, a3, a4);
  v17 = v16;
  add_explicit = atomic_fetch_add_explicit(v13, -v16, memory_order_relaxed);
  v19 = add_explicit - v16;
  if ((add_explicit - v16) < 0)
  {
    sub_100012178("%s:%d: %s old reserve was %lld, num_blocks %lld. blocks_in_txn_counter %lld num_active_txns=%d\n", "fs_tx_leave_ext", 28485, (a1 + 4040), add_explicit, v16, *v13, *(a1 + 1124));
  }

  *(*(a1 + 376) + 256) = sub_100031B28();
  sub_100019634(a1, a5);
  v20 = *(a1 + 392);
  if (*(v20 + 496))
  {
    j__pthread_cond_broadcast((v20 + 568));
    v20 = *(a1 + 392);
  }

  pthread_mutex_unlock((v20 + 504));
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  sub_100042EA8(a1, 0, &v33, &v32, 0, 0);
  if (add_explicit)
  {
    v21 = (*(*(a1 + 376) + 48) & 2) == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && v33 >= 0xA01 && add_explicit + 4000 >= v32)
  {
    v6 |= 4u;
  }

  v22 = *(a1 + 392);
  v23 = v33 / 0x64;
  if (*(v22 + 640) == 1)
  {
    v21 = *(v22 + 656) == 0;
    v24 = 4000;
    if (v21)
    {
      v24 = 25600;
    }
  }

  else
  {
    v24 = 4000;
  }

  if (v23 >= v24)
  {
    v23 = v24;
  }

  if (v23 <= 0x64)
  {
    v23 = 100;
  }

  v25 = v23 + v19;
  v26 = v32;
  v27 = *(a1 + 3824);
  if (v25 >= v32)
  {
    *(a1 + 3824) = v27 + 1;
    if (v27 <= 99)
    {
      v28 = sub_10001A258(v10);
      sub_1000120D8("%s:%d: %s gettin' low on space: ttype %s num_blocks %lld blocks_in_txn %lld free_blocks %lld xid %lld\n", "fs_tx_leave_ext", 28516, (a1 + 4040), v28, v17, v19, v26, a5);
    }
  }

  else if (v27 >= 100)
  {
    *(a1 + 3824) = 0;
  }

  if (!a5)
  {
    return 0;
  }

  ++*(a1 + 432);
  v29 = sub_10004E8BC(*(a1 + 392), a5, v6);
  v30 = v29;
  if (v29)
  {
    sub_100012178("%s:%d: %s tx_leave failed: %d\n", "fs_tx_leave_ext", 28531, (a1 + 4040), v29);
  }

  return v30;
}

const char *sub_10001A258(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "UNKNOWN TXN TYPE";
  }

  else
  {
    return off_10006C688[a1 - 1];
  }
}

uint64_t sub_10001A280(int a1, int a2)
{
  v2 = 0;
  if (a2 != -1 && a2 <= 1)
  {
    v2 = 0;
    if (a1 == 1)
    {
      if (a2)
      {
        v2 = 1;
        sub_100012178("%s:%d: Volume role %d is not allowed at fs index %d\n", "apfs_is_volume_fsindex_allowed", 30994, 1, a2);
      }
    }
  }

  return v2;
}

uint64_t sub_10001A2F0(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 == 576)
  {
    if ((a5 & 1) == 0)
    {
      sub_100012178("%s:%d: Volume role 0x%x is not allowed for an unencrypted volume\n");
      return 1;
    }
  }

  else if (a3 == 768)
  {
    sub_100012178("%s:%d: Volume role 0x%x is not supported", a2);
    return 45;
  }

  if (a2 != a3)
  {
    if (a2 <= 319)
    {
      if (a2 <= 127)
      {
        if (a2 != 4 && a2 != 16)
        {
          goto LABEL_7;
        }
      }

      else if (a2 != 128 && a2 != 192)
      {
        if (a2 == 256)
        {
          sub_100012178("%s:%d: cannot change role of xART volume\n");
          return 1;
        }

        goto LABEL_7;
      }
    }

    else if (a2 > 575)
    {
      if (a2 != 576 && a2 != 704 && a2 != 768)
      {
        goto LABEL_7;
      }
    }

    else if (a2 != 320)
    {
      if (a2 == 384)
      {
        sub_100012178("%s:%d: cannot change role of Backup volume\n");
        return 1;
      }

      if (a2 == 448)
      {
        sub_100012178("%s:%d: cannot change role of SideCar volume\n");
        return 1;
      }

      goto LABEL_7;
    }

    sub_100012178("%s:%d: cannot change role of system-unique volume\n");
    return 1;
  }

LABEL_7:
  if (a3)
  {
    if (sub_10001A280(a3, a4))
    {
      return 1;
    }

    v10 = a3 == 704;
    if (a3 <= 191)
    {
      if (((a3 - 1) > 0x3F || ((1 << (a3 - 1)) & 0x800000008000800BLL) == 0) && a3 != 128)
      {
        goto LABEL_104;
      }

      goto LABEL_27;
    }

    if (a3 <= 511)
    {
      if (a3 != 192 && a3 != 256 && a3 != 320)
      {
        goto LABEL_104;
      }
    }

    else if (a3 > 639)
    {
      if (a3 != 640 && a3 != 704)
      {
        goto LABEL_104;
      }
    }

    else if (a3 != 512 && a3 != 576)
    {
LABEL_104:
      sub_100012178("%s:%d: Volume role 0x%x is not supported in container\n", v9);
      return 45;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_27:
  v11 = a1[47];
  if (!*(v11 + 180))
  {
    return 0;
  }

  v23 = v10;
  v12 = 0;
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v13;
  *&out[16] = v13;
  while (1)
  {
    v24 = 0;
    v14 = *(v11 + 8 * v12 + 184);
    if (v14)
    {
      break;
    }

LABEL_72:
    ++v12;
    v11 = a1[47];
    if (v12 >= *(v11 + 180))
    {
      return 0;
    }
  }

  v15 = sub_10003A1E8(a1[49], 0, v14, &xmmword_10006A8A8, 0, 0, 0, 0, &v24);
  v8 = v15;
  if (v15)
  {
    v21 = (a1[48] + 212);
    v22 = strerror(v15);
    sub_100012178("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_role_allowed", 31214, v21, v14, v22);
    return v8;
  }

  v16 = 1;
  if (a3 > 191)
  {
    if (a3 > 511)
    {
      if (a3 == 512)
      {
        v17 = v24;
        v18 = *(*(v24 + 47) + 964);
        if (v18 == 512)
        {
          goto LABEL_66;
        }

        if (v23)
        {
          goto LABEL_47;
        }

        goto LABEL_79;
      }

      if (a3 != 640)
      {
        if (a3 == 704)
        {
          v18 = *(*(v24 + 47) + 964);
LABEL_47:
          if (v18 == 704)
          {
            goto LABEL_66;
          }

          v8 = 0;
        }

        goto LABEL_67;
      }

      if (*(*(v24 + 47) + 964) != 640)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (a3 == 192)
      {
        v17 = v24;
        if (*(*(v24 + 47) + 964) == 192)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      if (a3 != 256)
      {
        v17 = v24;
        if (*(*(v24 + 47) + 964) == 320)
        {
          goto LABEL_66;
        }

LABEL_79:
        sub_100037058(v17);
        goto LABEL_72;
      }

      if (*(*(v24 + 47) + 964) != 256)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    uuid_unparse((a1[47] + 72), out);
    sub_100012178("%s:%d: %s Volume role 0x%x already exists in container uuid %s\n", "apfs_is_volume_role_allowed", 31236, v24 + 4040, a3, out);
    v16 = 0;
    v8 = 17;
LABEL_67:
    if (a3 > 255)
    {
      if (a3 == 256 || a3 == 640 || a3 == 704)
      {
        goto LABEL_70;
      }
    }

    else if (a3 <= 0x20 && ((1 << a3) & 0x100010110) != 0)
    {
      goto LABEL_70;
    }

    v19 = v24;
LABEL_71:
    sub_100037058(v19);
    if ((v16 & 1) == 0)
    {
      return v8;
    }

    goto LABEL_72;
  }

  if (a3 > 15)
  {
    if (a3 == 16)
    {
      if (*(*(v24 + 47) + 964) == 16)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (a3 == 32)
    {
      if (*(*(v24 + 47) + 964) != 32)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    if (a3 != 128)
    {
      goto LABEL_67;
    }

    v17 = v24;
    if (*(*(v24 + 47) + 964) == 128)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 == 1)
  {
    v17 = v24;
    if (*(*(v24 + 47) + 964) == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 != 4)
  {
    goto LABEL_67;
  }

  if (*(*(v24 + 47) + 964) == 4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v8 = 0;
LABEL_70:
  v19 = v24;
  if (!a5)
  {
    goto LABEL_71;
  }

  sub_100012178("%s:%d: %s Encrypted volume is not allowed with special role = 0X%x\n", "apfs_is_volume_role_allowed", 31240, v24 + 4040, a3);
  sub_100037058(v24);
  return 1;
}

uint64_t sub_10001A8AC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v132 = 0xAAAAAAAAAAAAAAAALL;
  *v133 = 0;
  v130 = 0;
  v131 = 0xAAAAAAAAAAAAAAAALL;
  memset(uu, 170, sizeof(uu));
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  uuid_clear(uu);
  *a5 = 0;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1[47] + 36);
    if (strnlen((a2 + 56), 0x100uLL) > 0xFF)
    {
      return 63;
    }

    if (!sub_100018DF0(a2 + 56, 0, 0, 0, 0))
    {
      return 92;
    }

    v120 = a4;
    v29 = *(a2 + 32);
    v24 = *(a2 + 36);
    v28 = *(a2 + 40);
    v27 = *(a2 + 44);
    v26 = *(a2 + 492);
    v36 = *(a2 + 16);
    v37 = *(a2 + 24);
    if (v36 % v11)
    {
      v38 = v36 / v11 + 1;
    }

    else
    {
      v38 = v36 / v11;
    }

    v39 = v37 / v11;
    if (v37 % v11)
    {
      ++v39;
    }

    v121 = v39;
    v122 = v38;
    v25 = *(a2 + 48);
    v40 = *(a2 + 52);
    v13 = v40 & 1;
    v23 = vand_s8(vshl_u16(vdup_n_s16(v40), 0xFFFEFFF7FFFAFFFCLL), 0x3000100010003);
    v15 = *(a2 + 444);
    v16 = *(a2 + 448);
    v124 = (v40 >> 7) & 1;
    v17 = (v40 >> 8) & 1;
    v19 = (a3 >> 5) & 1;
    v21 = (a3 >> 8) & 1;
    v18 = (v40 >> 10) & 1;
    v119 = a3;
    v20 = (a3 & 0x880) == 2176;
    v22 = (a3 & 0x880) == 128;
    v41 = (v25 == 1) << 6;
    if (!v25)
    {
      v41 = 1;
    }

    if (*(a2 + 54))
    {
      v42 = 1;
    }

    else
    {
      v42 = v25 == -1;
    }

    if (v42)
    {
      v14 = *(a2 + 54);
    }

    else
    {
      v14 = v41;
    }

    if (v14 == 64 || v14 == 1)
    {
      a1 = v10;
      if (*(a2 + 452) > 0)
      {
        return 45;
      }
    }

    else
    {
      a1 = v10;
    }
  }

  else
  {
    v119 = a3;
    v120 = a4;
    v121 = 0;
    v122 = 0;
    v13 = 0;
    v14 = 0;
    v124 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0x8000000000000;
    v24 = 2;
    v25 = -1;
    v26 = 1073741826;
    v27 = 1073741826;
    v28 = 1073741826;
    v29 = 1073741826;
  }

  v123 = v23;
  v117 = v17;
  v118 = v18;
  v115 = v19;
  v116 = v29;
  v113 = v20;
  v114 = v21;
  v111 = v15;
  v112 = v22;
  v110 = v16;
  v109 = a5;
  v30 = v26;
  v31 = (v13 | v23.u8[4]) != 0;
  v32 = sub_10001A2F0(a1, 0, v14, v25, v31);
  v33 = a1;
  v12 = v32;
  if (v32)
  {
    return v12;
  }

  v34 = v33;
  if (v24 != 2)
  {
    sub_100012128("%s:%d: %s fs tree type 0x%x invalid, using virtual btree instead\n", "apfs_newfs", 31801, (v33[48] + 212), v24);
  }

  if (v28 != 1073741826)
  {
    sub_100012128("%s:%d: %s extentref tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31805, (*(v34 + 384) + 212), v28);
  }

  if (v27 != 1073741826)
  {
    sub_100012128("%s:%d: %s snapmeta tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31809, (*(v34 + 384) + 212), v27);
  }

  v35 = v123.i8[0];
  if (v124 && v30 != 1073741826)
  {
    sub_100012128("%s:%d: %s fext tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31814, (*(v34 + 384) + 212), v30);
    v35 = v123.i8[0];
    v30 = 1073741826;
  }

  if (v31 & *(v34 + 629))
  {
    return 1;
  }

  if (v35)
  {
    return 22;
  }

  if (v14 == 704 && (!v122 || v122 != v121))
  {
    sub_100012178("%s:%d: %s bad overprovisioning volume configuration: reserve %lld quota %lld\n", "apfs_newfs", 31844, (*(v34 + 384) + 212), v122, v121);
    return 22;
  }

  v44 = *(v34 + 376);
  if (v25 == -1)
  {
    if (v14 == 64)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v14 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    if (v47 == -1)
    {
      v45 = *(v44 + 180);
      if (v45 < 3)
      {
        v25 = 2;
      }

      else
      {
        v48 = (v44 + 200);
        v49 = 2;
        while (*v48++)
        {
          if (v45 == ++v49)
          {
            v25 = *(v44 + 180);
            goto LABEL_63;
          }
        }

        v25 = v49;
LABEL_63:
        if ((v25 & 0x80000000) != 0)
        {
LABEL_66:
          if (v47 != -1)
          {
            v25 = v47;
            goto LABEL_68;
          }

          if (!v45)
          {
            v25 = 0;
            goto LABEL_117;
          }

          v54 = 0;
          while (*(v44 + 184 + 8 * v54))
          {
            if (v45 == ++v54)
            {
              v25 = v45;
              goto LABEL_45;
            }
          }

          v25 = v54;
          goto LABEL_45;
        }
      }
    }

    else
    {
      LODWORD(v45) = *(v44 + 180);
      v25 = v47;
    }

    if (v25 < v45 && !*(v44 + 8 * v25 + 184))
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_45:
  if ((v25 & 0x80000000) != 0)
  {
LABEL_117:
    sub_100012178("%s:%d: %s no space for a new file system (slot %d, max %d)\n", "apfs_newfs", 31879, (*(v34 + 384) + 212), v25, *(v44 + 180));
    return 34;
  }

  LODWORD(v45) = *(v44 + 180);
LABEL_68:
  if (v25 >= v45)
  {
    goto LABEL_117;
  }

  if (*(v44 + 8 * v25 + 184))
  {
    sub_100012178("%s:%d: %s existing file system (slot %d)\n", "apfs_newfs", 31882, (*(v34 + 384) + 212), v25);
    return 16;
  }

  v51 = v25;
  v52 = sub_10004E8AC(v34, &v130);
  v53 = v34;
  if (v52)
  {
    v12 = v52;
    sub_100012178("%s:%d: %s tx_enter() failed: %d\n", "apfs_newfs", 31888, (v53[48] + 212), v52);
    return v12;
  }

  v55 = sub_100038AF0(*(v34 + 392), 0, 0, &xmmword_10006A8A8, 0, 0, v130, v133);
  if (v55)
  {
    v12 = v55;
    sub_100012178("%s:%d: %s failed to create fs: %d\n");
LABEL_80:
    sub_100012178("%s:%d: %s fs creation failed: %d ... cleaning up...\n", "apfs_newfs", 32403, (v53[48] + 212), v12);
    v131 = 0;
    if (*v133)
    {
      if (v127)
      {
        v56 = sub_10002822C(v127, v130, &v131);
        if (v56)
        {
          sub_100012178("%s:%d: %s failed to delete fs root tree after fs creation failed: %d\n", "apfs_newfs", 32415, (*v133 + 4040), v56);
        }

        sub_100037058(v127);
      }

      if (v128)
      {
        v57 = sub_10002822C(v128, v130, &v131);
        if (v57)
        {
          sub_100012178("%s:%d: %s failed to delete fs snap metadata tree after fs creation failed: %d\n", "apfs_newfs", 32431, (*v133 + 4040), v57);
        }

        sub_100037058(v128);
      }

      if (v129)
      {
        v58 = sub_10002822C(v129, v130, &v131);
        if (v58)
        {
          sub_100012178("%s:%d: %s failed to delete fs extentref tree after fs creation failed: %d\n", "apfs_newfs", 32438, (*v133 + 4040), v58);
        }

        sub_100037058(v129);
      }

      if (v126)
      {
        v59 = sub_1000019C8(*v133, v30, 5, v130, v126, &v131);
        if (v59)
        {
          sub_100012178("%s:%d: %s failed to delete fs fext tree after fs creation failed: %d\n", "apfs_newfs", 32446, (*v133 + 4040), v59);
        }
      }

      if (v125)
      {
        v60 = sub_10002822C(v125, v130, &v131);
        if (v60)
        {
          sub_100012178("%s:%d: %s failed to delete fs clonegroup tree after fs creation failed: %d\n", "apfs_newfs", 32461, (*v133 + 4040), v60);
        }

        sub_100037058(v125);
      }

      v61 = *v133;
      v62 = *(*(*v133 + 376) + 128);
      if (v62)
      {
        v63 = sub_10003F794(*v133, v62, v130, &v131);
        v61 = *v133;
        if (v63)
        {
          sub_100012178("%s:%d: %s failed to destroy omap after fs creation failed: %d\n", "apfs_newfs", 32469, (*v133 + 4040), v63);
          v61 = *v133;
        }
      }

      if (*(v61 + 3592))
      {
        sub_100037058(*(v61 + 3592));
        v61 = *v133;
      }

      if (*(v61 + 3568))
      {
        sub_100037058(*(v61 + 3568));
        v61 = *v133;
      }

      sub_1000127AC(v61, *(v61 + 488));
      sub_1000127AC(v64, *(*v133 + 496));
    }

    if (v130)
    {
      sub_10004E8BC(v53, v130, 0);
      v130 = 0;
    }

    if (v131)
    {
      v65 = sub_100010650(v53, v131);
      if (v65)
      {
        sub_100012178("%s:%d: %s failed to wait on reaper: %d\n", "apfs_newfs", 32494, (v53[48] + 212), v65);
      }
    }

    if (*v133)
    {
      v66 = sub_10004E8AC(v53, &v130);
      if (v66)
      {
        sub_100012178("%s:%d: %s Couldn't reopen transaction to clean up: %d\n", "apfs_newfs", 32502, (v53[48] + 212), v66);
      }

      else
      {
        sub_10004BFAC(v53, *v133, v130);
        sub_100039E90(*v133, v130);
        sub_10004E8BC(v53, v130, 0);
        v130 = 0;
      }

      sub_100037058(*v133);
    }

    return v12;
  }

  v108 = v34;
  v68 = !v31;
  v69 = *v133;
  if (!v120)
  {
    v68 = 1;
  }

  if ((v68 & 1) == 0)
  {
    *(*v133 + 1144) = v120;
  }

  *(*(v69 + 376) + 36) = v25;
  sub_10002D9EC(v69);
  v70 = *(*v133 + 376);
  *(v70 + 964) = v14;
  uuid_copy((v70 + 1008), uu);
  v71 = *v133;
  *(*v133 + 3928) = 0;
  *(v71 + 3941) = (v119 & 8) != 0;
  sub_100004AE8(*(v71 + 376), (a2 + 456), v130);
  v53 = v34;
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy((*(*v133 + 376) + 240), a2);
    v75 = *v133;
    v76 = *(*v133 + 376);
    if (!strncmp((v76 + 240), "apfsuuid", 8uLL))
    {
      *(v76 + 255) = v51;
      v76 = *(v75 + 376);
    }

    v77 = sub_10001BB4C(v34, (v76 + 240));
    if (v77)
    {
      v12 = v77;
      *&out[29] = 0xAAAAAAAAAAAAAAAALL;
      *&v78 = 0xAAAAAAAAAAAAAAAALL;
      *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *out = v78;
      *&out[16] = v78;
      uuid_unparse(a2, out);
      v53 = v108;
      sub_100012178("%s:%d: %s UUID %s is not allowed, error %d\n");
      goto LABEL_80;
    }
  }

  else
  {
    if (v14 == 768)
    {
      sub_100012178("%s:%d: %s this volume requires valid UUID option specified\n", "apfs_newfs", 31926, (*(v34 + 384) + 212));
      v12 = 0;
      goto LABEL_80;
    }

    uuid_generate((*(*v133 + 376) + 240));
  }

  v72 = *v133;
  v73 = *(*v133 + 376);
  *(v73 + 176) = 16;
  *(v73 + 960) = 3;
  *(v73 + 966) = 0;
  if (v117)
  {
    *(v73 + 40) |= 0x10uLL;
  }

  if (v123.u8[6] == 1)
  {
    v74 = v123.u8[6];
  }

  else
  {
    if (v123.u8[6] != 2)
    {
      goto LABEL_142;
    }

    v74 = 8;
  }

  *(v73 + 56) |= v74;
LABEL_142:
  if (v124)
  {
    *(v73 + 56) |= 0x20uLL;
  }

  if (v118)
  {
    *(v73 + 56) |= 0x80uLL;
    sub_100012088("%s:%d: %s allocated unwritten file extents are now supported\n", "apfs_newfs", 31997, (v72 + 4040));
    v72 = *v133;
    v73 = *(*v133 + 376);
  }

  *(v73 + 40) |= 2uLL;
  v12 = sub_10004BB80(v34, v72, v122, v121, v130);
  if (v12)
  {
    sub_100012178("%s:%d: %s Could not set fs bounds for guarantee %lld and quota %lld: %d\n");
LABEL_162:
    v53 = v108;
    goto LABEL_80;
  }

  if (v31)
  {
    sub_10002EBDC(*v133, 1);
    v79 = sub_10002F1C4();
    if (v79)
    {
      v12 = v79;
      sub_100012178("%s:%d: %s unable to create/store metadata crypto (%d)\n");
      goto LABEL_162;
    }
  }

  else
  {
    sub_100012088("%s:%d: %s FS will NOT be encrypted.\n", "apfs_newfs", 32033, (*v133 + 4040));
    *(*(*v133 + 376) + 264) |= 1uLL;
    sub_10002F1C4();
    sub_10002F1CC(*v133 + 536);
  }

  v80 = *v133;
  v81 = *(*v133 + 376);
  *(v81 + 116) = 0x4000000200000002;
  *(v81 + 124) = 1073741826;
  *(v81 + 1104) = 2;
  v82 = sub_10003F5A4(v80, 0x40000000u, 0, v116, v130, &v132);
  if (v82)
  {
    v12 = v82;
    sub_100012178("%s:%d: %s fs omap initialization failed: %d\n");
    goto LABEL_162;
  }

  v83 = sub_100038018(v132);
  *(*(*v133 + 376) + 128) = v83;
  sub_100037058(v132);
  v136 = xmmword_10006C5E8;
  v137 = unk_10006C5F8;
  v138 = xmmword_10006C608;
  v139 = unk_10006C618;
  v134 = off_10006C5C8;
  v135 = unk_10006C5D8;
  if (v124)
  {
    v12 = sub_1000012EC(*v133, *(a2 + 488), v130, 0);
    v53 = v108;
    if (v12)
    {
      goto LABEL_80;
    }

    HIDWORD(v135) = sub_100000FC8(*(a2 + 488));
    DWORD2(v135) = *(a2 + 488);
    DWORD1(v135) |= 0x180u;
  }

  if (*(*(*v133 + 376) + 116) != 2)
  {
    v12 = 22;
    goto LABEL_161;
  }

  v84 = sub_100026978(*v133, *(*(*v133 + 376) + 116) & 0xFFFF0000, 0, 0, 0, &v134, v130, &v127);
  if (v84)
  {
    v12 = v84;
LABEL_161:
    sub_100012178("%s:%d: %s fs root tree creation failed: %d\n");
    goto LABEL_162;
  }

  v85 = sub_100038018(v127);
  v86 = *v133;
  v87 = *(*v133 + 376);
  *(v87 + 136) = v85;
  if (v115)
  {
    *(v87 + 56) |= 0x200uLL;
    sub_100012088("%s:%d: %s expanded records are now supported\n", "apfs_newfs", 32150, (v86 + 4040));
    v86 = *v133;
    if (v113)
    {
      *(*(*v133 + 376) + 48) |= 4uLL;
      sub_100012088("%s:%d: %s clone mapping is enabled for this volume\n", "apfs_newfs", 32154, (v86 + 4040));
      v86 = *v133;
    }
  }

  if (v114)
  {
    *(*(v86 + 376) + 48) |= 8uLL;
    sub_100012088("%s:%d: %s attribution tags are supported on this volume\n", "apfs_newfs", 32160, (v86 + 4040));
    v86 = *v133;
  }

  v88 = *(*(v86 + 376) + 120);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_100013DC0;
  *&out[16] = 0x420000000FLL;
  if (v88 != 2)
  {
    v12 = 22;
    goto LABEL_172;
  }

  v89 = sub_100026978(v86, v88 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v130, &v129);
  if (v89)
  {
    v12 = v89;
LABEL_172:
    sub_100012178("%s:%d: %s fs extentref tree creation failed: %d\n");
    goto LABEL_162;
  }

  v90 = sub_100038018(v129);
  v91 = *v133;
  v92 = *(*v133 + 376);
  *(v92 + 144) = v90;
  v93 = *(v92 + 124);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_100013DC0;
  *&out[16] = 0x4200000010;
  if (v93 != 2)
  {
    v12 = 22;
    goto LABEL_177;
  }

  v94 = sub_100026978(v91, v93 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v130, &v128);
  if (v94)
  {
    v12 = v94;
LABEL_177:
    sub_100012178("%s:%d: %s fs snapshot metadata tree creation failed: %d\n");
    goto LABEL_162;
  }

  v95 = sub_100038018(v128);
  v96 = *v133;
  *(*(*v133 + 376) + 152) = v95;
  if (v124)
  {
    v97 = sub_100001854(v96, v30, 5, v130, &v126);
    if (v97)
    {
      v12 = v97;
      sub_100012178("%s:%d: %s fs fext tree creation failed: %d\n");
      goto LABEL_162;
    }

    v96 = *v133;
    *(*(*v133 + 376) + 1032) = v126;
  }

  if ((v115 & v112) == 1)
  {
    memset(&out[32], 0, 64);
    *out = off_10006C628;
    *&out[16] = unk_10006C638;
    v98 = sub_100026978(v96, 0, 0, 0, 0, out, v130, &v125);
    if (v98)
    {
      v12 = v98;
      v99 = (*v133 + 4040);
      v100 = strerror(v98);
      sub_100012178("%s:%d: %s clonegroup tree creation failed: %s\n", "apfs_newfs", 32235, v99, v100);
      goto LABEL_162;
    }

    v101 = sub_100038018(v125);
    v102 = *v133;
    v103 = *(*v133 + 376);
    *(v103 + 1112) = v101;
    *(v103 + 1108) |= 1u;
    *(v103 + 1136) = 1024;
    *(v103 + 48) |= 4uLL;
    sub_100012088("%s:%d: %s clonegroups enabled for this volume\n", "apfs_newfs", 32244, (v102 + 4040));
    v96 = *v133;
  }

  v104 = sub_100014578(v96, 1, 0, "root", 0, 2, 0x41EDu, v111, v110, 0, -1, 0, 0, v96 + 61, v130, 0, -1);
  if (v104)
  {
    v12 = v104;
    sub_100012178("%s:%d: %s fs root dir creation failed: %d\n");
    goto LABEL_162;
  }

  __strlcpy_chk();
  v12 = sub_100014578(*v133, 1, 0, "private-dir", 0, 3, 0x41A4u, 0, 0, 0, -1, 0, 0, (*v133 + 496), v130, 0, -1);
  if (v12)
  {
    sub_100012178("%s:%d: %s fs private dir creation failed: %d\n");
    goto LABEL_162;
  }

  *(*(v108 + 376) + 8 * v51 + 184) = sub_100038018(*v133);
  v105 = *(*v133 + 376);
  v105[140] = v130;
  v105[141] = (v105[7] >> 9) & 1 | 0xC;
  v106 = sub_100031B28();
  v107 = *v133;
  *(*(*v133 + 376) + 256) = v106;
  sub_100019634(v107, v130);
  sub_100037058(v128);
  sub_100037058(v129);
  sub_100037058(v127);
  if (v125)
  {
    sub_100037058(v125);
  }

  *(v108 + 656) += (*(*(*v133 + 376) + 48) >> 1) & 1;
  sub_10004E8BC(v108, v130, 5);
  v12 = 0;
  *v109 = *v133;
  return v12;
}
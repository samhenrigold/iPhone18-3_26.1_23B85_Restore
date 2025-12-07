uint64_t sub_10004A66C(char *a1, uint64_t a2, unint64_t a3, int64_t a4, unint64_t a5)
{
  v8 = a2;
  v25 = 0;
  if (sub_100036630(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  v12 = sub_10004D1DC(v10, a5);
  v13 = 22;
  if (a4 >= 1 && v12)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v13 = sub_100042E24(v10, &v26);
    if (!v13)
    {
      v14 = v26;
      v15 = *(v26 + 1592);
      if (v15)
      {
        v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v16.i64[1] = a4;
        v15[6] = vaddq_s64(v15[6], v16);
      }

      v17 = sub_100042D38(v10, v14, a3, a4);
      if (v17)
      {
        v18 = v17;
        if (sub_100011490(*(*a1 + 392)))
        {
          if (sub_100036630(a1) == 13)
          {
            v19 = a1 + 4040;
          }

          else
          {
            v19 = (*(a1 + 48) + 212);
          }

          sub_100012178("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v19, a3, a4, v18);
        }

        v13 = 22;
        goto LABEL_20;
      }

      v13 = sub_10003BC6C(v26, 0, a5);
      if (!v13)
      {
        if (v10[629] == 1)
        {
          v20 = sub_10004A91C(v10, a3, a4, &v25);
          if (v20 | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock((v26 + 384));
          v13 = sub_10004A9A4(v10, v26, a3, a4, a5);
          sub_10005090C(*(v10 + 48));
          if (!v13)
          {
            if (v11)
            {
              sub_10004AAA0(v11, v26, a4, a5);
            }

            v24 = v26;
            if (*(v26 + 1616))
            {
              sub_10004ABE8(v26, v8, a4);
              v24 = v26;
            }

            sub_10003D180(v24, a5, 0);
          }

          v23 = (v26 + 384);
        }

        else
        {
          pthread_mutex_lock((v26 + 512));
          v13 = sub_10004ACF0(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock((v26 + 384));
            if (v11)
            {
              sub_10004AAA0(v11, v26, a4, a5);
            }

            v22 = v26;
            if (*(v26 + 1616))
            {
              sub_10004ABE8(v26, v8, a4);
              v22 = v26;
            }

            sub_10003D180(v22, a5, 0);
            pthread_mutex_unlock((v26 + 384));
          }

          v23 = (v26 + 512);
        }

        pthread_mutex_unlock(v23);
      }

LABEL_20:
      sub_100037058(v26);
    }
  }

  return v13;
}

uint64_t sub_10004A91C(uint64_t *a1, unint64_t a2, unint64_t a3, _BOOL4 *a4)
{
  v8 = a1[52];
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_10004B0C8(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t sub_10004A9A4(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!sub_10004D1DC(a1, a5))
  {
    return 22;
  }

  v10 = sub_100042D38(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    if (sub_100011490(a1))
    {
      sub_100012178("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v11);
    }

    return 22;
  }

  sub_100050900(a1[48]);

  return sub_10004CA58(a1, a2, a3, a4, 0, a5);
}

void sub_10004AAA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = sub_100038018(a1);
    sub_100012178("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4040), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      sub_100012178("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4040), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  sub_100019634(a1, a4);
}

uint64_t sub_10004ABE8(uint64_t result, int a2, unint64_t a3)
{
  if (!*(result + 1616))
  {
    return result;
  }

  v5 = result;
  if ((a2 & 0x30000) == 0)
  {
    sub_100042DAC(0, result);
  }

  pthread_mutex_lock((v5 + 576));
  if ((a2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = (v5 + 1640);
    v7 = *(v5 + 1640);
  }

  else
  {
    v6 = (v5 + 1656);
    v7 = *(v5 + 1656);
  }

  if (v7 < a3)
  {
    a3 -= v7;
    *v6 = 0;
LABEL_11:
    if (a3)
    {
      v8 = *(v5 + 1624);
      v9 = *(v5 + 1616);
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        *(v5 + 1624) = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = *(v5 + 1640);
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            *(v5 + 1640) = v17;
          }

          else
          {
            *(v5 + 1640) = 0;
          }
        }

        else
        {
          v14 = *(v5 + 1656);
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            *(v5 + 1656) = v15;
          }

          else
          {
            *(v5 + 1656) = 0;
          }
        }
      }
    }

    goto LABEL_25;
  }

  *v6 = v7 - a3;
LABEL_25:

  return pthread_mutex_unlock((v5 + 576));
}

uint64_t sub_10004ACF0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v33, 170, 24);
  v13 = sub_10004464C(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v32 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v30 = 8;
    v31 = 16;
    v14 = sub_100025428(v36, 0, &v34, &v31, 16, v35, &v30, 1, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v30)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100012178("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (a1[48] + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v33[0] = v34;
    v16 = v15 + a5;
    *&v33[1] = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v33[0];
      v30 = 8;
      v31 = 16;
      v17 = sub_100025428(v36, 0, &v34, &v31, 16, v35, &v30, 4, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v30 = 8 * (v16 != 1);
        v13 = sub_10001D908(v36, 0, v33, 16, &v33[1], v30, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          sub_10003D180(a2, a6, 0);
          if (v32)
          {
            v26 = sub_100025094(v36, 0, &v32, 0x10u, a6);
            if (v26)
            {
              sub_100012178("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (a1[48] + 212), v26);
            }
          }

          if (sub_100046750(a2, a3, v36, 0))
          {
            *&v27 = 0xAAAAAAAAAAAAAAAALL;
            *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[2] = v27;
            v29[3] = v27;
            v29[0] = v27;
            v29[1] = v27;
            sub_100043414(a1, v29, 0, 0);
              ;
            }

            sub_100043D24(a1, v29);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v30)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v33[0] + 1);
          if (*(&v34 + 1) <= v16 + *(&v33[0] + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v33[0] + 1))
            {
              v20 = v18 + *(&v34 + 1);
              sub_100012178("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (a1[48] + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                *&v33[1] = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              *&v33[1] = v16;
            }

            v32 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      sub_100037058(v36);
      return v13;
    }

LABEL_13:
    *&v33[0] = a6;
    *(&v33[0] + 1) = a4;
    v16 = a5;
    *&v33[1] = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10004B0C8(uint64_t *a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, _BOOL4 *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    sub_100012178("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (a1[48] + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  if (a5 <= 0)
  {
    v16 = 0;
    v15 = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!v15 && v16)
      {
        v56 = 0;
        v15 = sub_1000464F0(a1, v11, 1u, v9, v8, &v56);
        if (((v15 == 0) & v56) != 0)
        {
          v16 = 0;
        }
      }
    }

LABEL_62:
    if (v15)
    {
      sub_100012088("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (a1[48] + 212), v9, v8, v15);
    }

    goto LABEL_64;
  }

  v16 = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        sub_100037058(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = sub_10003A1E8(a1[49], 0x40000000, v26, &xmmword_10006A940, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = *(v61 + 56) + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (a1[48] + 212), v24, v26, v27);
      v15 = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      v15 = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = sub_10003A1E8(a1[49], 0x40000000, v29, &xmmword_10006A950, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      v15 = v30;
      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (a1[48] + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    v15 = 0;
LABEL_46:
    sub_100037058(v60);
    v60 = 0;
    if (!v15)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = *(v60 + 56);
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      v15 = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = sub_10003A1E8(a1[49], 0x40000000, v34, &xmmword_10006A960, 0, 0, 0, 0, &v59);
    if (v35)
    {
      v15 = v35;
      sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (a1[48] + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = *(v59 + 56);
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      v42 = sub_10001BFA8(v36, v38, v40, v39);
      v43 = a3 & 2 | v42;
      v16 = v42 == 0;
      sub_100037058(v59);
      v59 = 0;
      if (!v43)
      {
        v15 = 0;
        v16 = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += sub_10001C584(v36, 0, v38, v40 + v38);
      sub_100037058(v59);
      v59 = 0;
    }

    else
    {
      v16 = sub_10001BEB4(v36, v38, v40);
      sub_100037058(v59);
      v59 = 0;
      if (!v16)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    v16 = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  v16 = 0;
LABEL_52:
  v15 = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    sub_100037058(v61);
  }

  if (v60)
  {
    sub_100037058(v60);
  }

  if (v59)
  {
    sub_100037058(v59);
  }

  *v7 = v16;
  return v15;
}

uint64_t sub_10004B638(void *a1, unsigned int a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v9 = a1;
  v33 = a3;
  if (sub_100036630(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = sub_100042E24(v9, &v32);
  if (!v11)
  {
    v11 = sub_100047FA4(v32, a2, &v34, &v31, (*(v9[47] + 48) >> 1) & 1);
    v12 = v32;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = &v34;
      do
      {
        if (!v13)
        {
          pthread_mutex_unlock(v32 + 6);
          v11 = 28;
          goto LABEL_34;
        }

        v16 = *v15;
        if (!v14)
        {
          sub_100042DAC(0, v32);
        }

        v17 = sub_10004807C(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v11 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v32 + 6);
      }

      else
      {
        pthread_mutex_lock(v32 + 9);
        v18 = v32;
        v19 = v33;
        v20 = &v32->__sig + v16;
        v20[104] += v33;
        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v21 = v10[51] + v19;
          v10[51] = v21;
          v22 = v10[47];
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *(v22 + 88);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              v26 = 0;
            }

            if (v26 < v21)
            {
              v21 = v26;
            }

            v27 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v21;
            *&v18[13].__opaque[24] = v27 + v21;
          }
        }

        if (v16 == 1)
        {
          v28 = 16;
        }

        else
        {
          v28 = 8;
        }

        v29 = v28 | a2 & 0x40;
        *a5 = v29;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v29 | v14;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v32 + 6);
        v11 = 0;
      }

LABEL_34:
      v12 = v32;
    }

    sub_100037058(v12);
  }

  return v11;
}

uint64_t sub_10004B89C(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (sub_100036630(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_100042E24(v7, &v29);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v29 + 384));
    pthread_mutex_lock((v29 + 576));
    if (*(v29 + 832 + 8 * v9) < *(v29 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, *(v29 + 832), *(v29 + 848));
    }

    v11 = v29;
    v12 = *(v29 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v12 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v29 + 848 + 8 * v9), a3);
      }

      *(v29 + 848 + 8 * v9) = v12 - a3;
      *(v11 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_35:
        v20 = v29;
        if ((a2 & 0x10000) == 0)
        {
LABEL_42:
          pthread_mutex_unlock((v20 + 576));
          pthread_mutex_unlock((v29 + 384));
          sub_100037058(v29);
          return v8;
        }

LABEL_36:
        v25 = *(v20 + 1632);
        v22 = v25 >= a3;
        v26 = v25 - a3;
        if (v22)
        {
          *(v20 + 1632) = v26;
        }

        else
        {
          if (sub_100036630(a1) == 13)
          {
            v27 = (a1 + 4040);
          }

          else
          {
            v27 = (*(a1 + 384) + 212);
          }

          sub_100012178("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v27, *(v29 + 1632), a3);
          v20 = v29;
          *(v29 + 1632) = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v13 = *(v29 + 832 + 8 * v9);
      if (v13 - v12 >= a3)
      {
        *(v29 + 832 + 8 * v9) = v13 - a3;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (sub_100036630(a1) == 13)
        {
          v14 = (a1 + 4040);
        }

        else
        {
          v14 = (*(a1 + 384) + 212);
        }

        sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v14, *(v29 + 8 * v9 + 832) - v12, v12, a3);
        *(v29 + 8 * v9 + 832) = v12;
        if (!v6)
        {
          goto LABEL_35;
        }
      }
    }

    v15 = v6[51];
    v16 = v15 - a3;
    if (v15 < a3)
    {
      if (sub_100036630(a1) == 13)
      {
        v17 = (a1 + 4040);
      }

      else
      {
        v17 = (*(a1 + 384) + 212);
      }

      sub_100012178("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v17, v6[51], a3);
      v16 = 0;
    }

    v6[51] = v16;
    v18 = v6[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = *(v18 + 88);
      v22 = v19 >= v21;
      v23 = v19 - v21;
      if (!v22)
      {
        v23 = 0;
      }

      if (v23 < v16)
      {
        v16 = v23;
      }

      v24 = *(v29 + 864) - v6[52];
      v6[52] = v16;
      *(v20 + 864) = v24 + v16;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  return v8;
}

uint64_t sub_10004BB80(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v10 = sub_100042E24(a1, &v63);
  if (!v10)
  {
    v11 = *&v63[5].__opaque[48];
    v10 = sub_10003BC6C(v63, 0, a5);
    if (!v10)
    {
      pthread_mutex_lock(v63 + 8);
      pthread_mutex_lock(v63 + 6);
      pthread_mutex_lock(v63 + 9);
      v14 = *(a2 + 376);
      v15 = *(v14 + 72);
      v16 = a3 - v15;
      if ((a3 - v15) < 0 && v11[23] < v15 - a3)
      {
        v12 = sub_1000033FC(a1);
LABEL_54:
        pthread_mutex_unlock(v63 + 9);
        pthread_mutex_unlock(v63 + 6);
        pthread_mutex_unlock(v63 + 8);
        sub_100037058(v63);
        return v12;
      }

      if (a4 && a3 > a4)
      {
        sub_100012178("%s:%d: %s Quota %llu is smaller than reserve %llu\n");
LABEL_11:
        v12 = 22;
        goto LABEL_54;
      }

      if (a4)
      {
        v17 = *(a2 + 408) + *(v14 + 88);
        if (v17 > a4)
        {
          sub_100012178("%s:%d: %s Quota %llu is smaller than what's currently allocated and reserved %llu\n", "spaceman_fs_bounds_set", 9281, (a2 + 4040), a4, v17);
          v12 = 69;
          goto LABEL_54;
        }
      }

      if (v16 < 1)
      {
        if (v16 < 0)
        {
          v59 = *&v63[25].__opaque[8];
          if (v59)
          {
            v60 = v15 - *(v14 + 88);
            if (v60 >= 1)
            {
              v61 = *&v63[25].__opaque[16];
              if (v61 < v59)
              {
                if (v60 >= v15 - a3)
                {
                  v60 = v15 - a3;
                }

                v62 = v61 + v60;
                if (v62 >= v59)
                {
                  v62 = *&v63[25].__opaque[8];
                }

                *&v63[25].__opaque[16] = v62;
              }
            }
          }
        }
      }

      else
      {
        sub_100042DAC(a1, v63);
        v18 = *&v63[5].__opaque[48];
        v19 = v18[30] + v18[9] + *&v63[15].__opaque[16] + v18[15] + v18[35] + *&v63[15].__opaque[24];
        v21 = v18[23];
        v20 = v18[24];
        v22 = v21 >= v20;
        v23 = v21 - v20;
        if (!v22)
        {
          v23 = 0;
        }

        v24 = *v63[13].__opaque + v63[13].__sig;
        v25 = *&v63[13].__opaque[24];
        v22 = v24 >= v25;
        v26 = v24 - v25;
        if (!v22)
        {
          v26 = 0;
        }

        v27 = v26 + v23;
        v22 = v19 >= v27;
        v28 = v19 - v27;
        if (v22)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v63[25].__opaque[8];
        if (v30)
        {
          v31 = *&v63[25].__opaque[24];
          v22 = v26 >= v31;
          v32 = v26 - v31;
          if (!v22)
          {
            v32 = 0;
          }

          v33 = *&v63[25].__opaque[16];
          v34 = *&v63[25].__opaque[32];
          v22 = v33 >= v34;
          v35 = v33 - v34;
          if (!v22)
          {
            v35 = 0;
          }

          v22 = v35 >= v31;
          v36 = v35 - v31;
          if (!v22)
          {
            v36 = 0;
          }

          v37 = *&v63[25].__opaque[40];
          v38 = *&v63[25].__opaque[48];
          v22 = v37 >= v38;
          v39 = v37 - v38;
          if (!v22)
          {
            v39 = 0;
          }

          v22 = v39 >= v32;
          v40 = v39 - v32;
          if (!v22)
          {
            v40 = 0;
          }

          v41 = v40 + v36;
          v22 = v29 >= v41;
          v42 = v29 - v41;
          if (!v22)
          {
            v42 = 0;
          }

          v29 = v42 + v40;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        if (v16 > v29)
        {
          goto LABEL_53;
        }

        v56 = v11[12] + v11[6];
        v57 = 50;
        if (v56 >> 2 > 0x4FA)
        {
          v57 = v56 / 0x64;
        }

        if (v11[23] + v16 > v56 - v57)
        {
          sub_100012178("%s:%d: %s %llu blocks are already reserved in container, Cannot reserve more than %llu blocks in the container\n");
          goto LABEL_11;
        }

        if (v30)
        {
          v58 = v16 - v42;
          if (v16 > v42)
          {
            if (v58 > v40)
            {
LABEL_53:
              v12 = 28;
              goto LABEL_54;
            }

            *&v63[25].__opaque[48] += v58;
          }
        }
      }

      v43 = v11[23] + v16;
      v44 = *(a2 + 376);
      v45 = v44[11];
      if (v44[9] >= v45)
      {
        v46 = v44[11];
      }

      else
      {
        v46 = v44[9];
      }

      if (v45 >= a3)
      {
        v47 = a3;
      }

      else
      {
        v47 = v44[11];
      }

      v48 = v11[24] + v47;
      v44[9] = a3;
      v11[23] = v43;
      v11[24] = v48;
      v49 = v48 - v46;
      if (v48 < v46)
      {
        sub_100012178("%s:%d: %s sm_fs_reserve_alloc_count underflow, sm_fs_reserve_alloc_count %lld, new fs_reserve_block_count %lld, old fs_reserve_block_count %lld alloc_count %lld\n", "spaceman_fs_bounds_set", 9375, (a2 + 4040), v48, a3, v15, v45);
        v49 = 0;
        v44 = *(a2 + 376);
      }

      v11[24] = v49;
      v44[10] = a4;
      sub_10003D180(v63, a5, 0);
      sub_100019634(a2, a5);
      v12 = 0;
      v50 = *(a2 + 376);
      v51 = *(v50 + 72);
      v52 = *(v50 + 88);
      v22 = v51 >= v52;
      v53 = v51 - v52;
      if (!v22)
      {
        v53 = 0;
      }

      v54 = *(a2 + 416);
      if (v53 >= *(a2 + 408))
      {
        v53 = *(a2 + 408);
      }

      v55 = v63;
      *(a2 + 416) = v53;
      *&v55[13].__opaque[24] += v53 - v54;
      goto LABEL_54;
    }
  }

  return v10;
}

uint64_t sub_10004BFAC(void *a1, uint64_t a2, unint64_t a3)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100042E24(a1, &v27);
  if (!result)
  {
    v6 = *&v27[5].__opaque[48];
    result = sub_10003BC6C(v27, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v27 + 6);
      pthread_mutex_lock(v27 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4040), v10, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else if (v8)
      {
        goto LABEL_8;
      }

      if (!v7[10])
      {
        v19 = v27;
LABEL_25:
        pthread_mutex_unlock(v19 + 9);
        pthread_mutex_unlock(v27 + 6);
        sub_100037058(v27);
        return 0;
      }

LABEL_8:
      if (v9 >= v8)
      {
        v9 = v8;
      }

      v11 = *(v6 + 184);
      if (v11 < v8)
      {
        v12 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4040), v12, v8, *(v6 + 184));
        v11 = *(v6 + 184);
        v8 = v11;
      }

      *(v6 + 184) = v11 - v8;
      v13 = *(v6 + 192);
      if (v13 < v9)
      {
        v14 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4040), v14, v9, *(v6 + 192));
        v13 = *(v6 + 192);
        v9 = v13;
      }

      *(v6 + 192) = v13 - v9;
      v15 = v27;
      v16 = *&v27[25].__opaque[8];
      if (v16)
      {
        if (v8 > v9)
        {
          v17 = *&v27[25].__opaque[16];
          if (v17 < v16)
          {
            if (v8 - v9 + v17 < v16)
            {
              v16 = v8 - v9 + v17;
            }

            *&v27[25].__opaque[16] = v16;
          }
        }
      }

      v18 = *(a2 + 376);
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      sub_10003D180(v15, a3, 0);
      sub_100019634(a2, a3);
      v19 = v27;
      v20 = *(a2 + 376);
      v21 = *(v20 + 72);
      v22 = *(v20 + 88);
      v23 = v21 >= v22;
      v24 = v21 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      v25 = *(a2 + 416);
      if (v24 >= *(a2 + 408))
      {
        v24 = *(a2 + 408);
      }

      v26 = *&v27[13].__opaque[24];
      *(a2 + 416) = v24;
      *&v19[13].__opaque[24] = v24 - v25 + v26;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_10004C1DC(uint64_t *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_100042E24(a1, &v10);
  if (!v5)
  {
    v6 = *(v10 + 376);
    v5 = sub_10003BC6C(v10, 0, a2);
    v7 = v10;
    if (!v5)
    {
      pthread_mutex_lock((v10 + 512));
      pthread_mutex_lock((v10 + 384));
      v5 = sub_10004B0C8(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock((v10 + 576));
      *(v6 + 72) += v9;
      pthread_mutex_unlock((v10 + 576));
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock((v10 + 384));
      pthread_mutex_unlock((v10 + 512));
      sub_10003D180(v10, a2, 0);
      v7 = v10;
    }

    sub_100037058(v7);
  }

  return v5;
}

BOOL sub_10004C308(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = sub_10001C574(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_10004C3F0(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_10004C4C8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    sub_10003D180(a2, a4, 0);
    return 0;
  }

  return sub_1000033FC(a1);
}

uint64_t sub_10004C570(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    v11 = result;
    result = sub_100011490(result);
    if (result)
    {
      result = sub_100012178("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(v11 + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_10004C630(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100046824(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_10004C6B4(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10004C3F0(v9, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      sub_100050900(v9[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  sub_10005090C(v9[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v15 = 384;
  }

  else
  {
    v15 = 448;
  }

  result = pthread_mutex_lock((a2 + v15));
  if (v11 < v10)
  {
    v16 = 16 * v11;
    v17 = v12 - v11;
    do
    {
      v18 = (*(a2 + 1544) + v16);
      v19 = *v18;
      v20 = v18[1];
      if (a3)
      {
        result = sub_10004CA58(v9, a2, v19, v20, 1, a5);
      }

      else
      {
        result = sub_10004C818(v9, a2, v19, v20, a5);
      }

      v16 += 16;
      --v17;
    }

    while (v17);
  }

  if (a3)
  {
    result = pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }

  return result;
}

const char *sub_10004C818(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v25 = 0;
  result = sub_10004D1DC(a1, a5);
  if (result)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_10004C630(a1, a2, a3, a4, &v26);
    if (result)
    {
      if (result == 22)
      {
        return sub_100012178("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        return sub_100012178("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v26;
        v21 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          result = sub_100042DE8(a1, v10, v17, &v24);
          if (result)
          {
            break;
          }

          result = sub_10003A1E8(a1[49], 1073741825, v24, &xmmword_10006A960, 0, 0, 0, a5, &v25);
          if (result)
          {
            break;
          }

          v18 = *(v25 + 56);
          v19 = v26 % v14;
          if (a4 >= (v14 - v26 % v14))
          {
            v20 = v14 - v26 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v23 = 0;
            v22 = 0;
            if (sub_10004227C(a1, a2, a5, &v23, &v22) || sub_10004C4C8(a1, a2, v17, a5))
            {
              return sub_100037058(v25);
            }

            v24 = v23;
            *(a2[110] + 2 * v16) = v22;
            *(a2[109] + 8 * v16) = a5;
          }

          sub_10001C18C(v18, v19, v20);
          sub_10003D180(v25, a5, v24);
          result = sub_100037058(v25);
          v15 = v26 + v20;
          v26 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v21;
        }

        while (!v13);
      }
    }
  }

  return result;
}

uint64_t sub_10004CA58(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6)
{
  if (a4)
  {
    sub_10002FEB4(a1, a2, a3);
  }

  v12 = sub_10004988C(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    sub_10002A8DC(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t sub_10004CAF4(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = sub_100011DE8(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = sub_100011DE8(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
}

uint64_t sub_10004CD70(uint64_t *a1, pthread_mutex_t *a2, unint64_t a3, unint64_t a4)
{
  v8 = 22;
  if (sub_10004D1DC(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = sub_100046824(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10004ACF0(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t sub_10004CE18(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = sub_1000122F4(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    v9 = sub_100011924(v7);
    if (!v9)
    {
      v11 = sub_10001193C((v8 + 256));
      if (v11)
      {
        v10 = v11;
        j__pthread_mutex_destroy(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (v9 = sub_10004CF34(v8, v6), !v9))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = v9;
LABEL_7:
    sub_1000123F8(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t sub_10004CF34(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = sub_1000122F4(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = sub_100012434(v3, 0x256D25E1uLL);
    v7[8] = sub_100012434(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      sub_1000123F8(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      sub_1000123F8(v14, v3);
    }

    sub_1000123F8(v15, 120);
  }

  return 12;
}

void sub_10004D040(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    sub_100012178("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(a1 + 384) + 212), *(v6 + 16));
    v7 = a2[18];
    v8 = a2[15];
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    a2[15] = v7;
    a2[18] = 0;
  }

  v9 = a2[16];
  if (v9)
  {
    sub_100012178("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(a1 + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
    v10 = a2[16];
    if (v10)
    {
      *a2[15] = v10;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v11 = a2[14];
  if (v11)
  {
    v12 = a2 + 15;
    do
    {
      v14 = *v11;
      v13 = v11[1];
      v15 = (*v11 + 8);
      if (!*v11)
      {
        v15 = v12;
      }

      *v15 = v13;
      *v13 = v14;
      v16 = v11[7];
      if (v16)
      {
        sub_1000123F8(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        sub_1000123F8(v17, a3);
      }

      sub_1000123F8(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void sub_10004D190(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_10004D040(a1, a2, a3);
  j__pthread_mutex_destroy(a2);
  sub_100011944((a2 + 256));

  sub_1000123F8(a2, 304);
}

BOOL sub_10004D1DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t sub_10004D220(uint64_t *a1, int a2)
{
  v4 = a1[50];
  v5 = *(a1[47] + 36);
  v6 = sub_1000122F4(1uLL, v5, 0x7BA1CA01uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v8 = *(v4 + 96);
    while (1)
    {
      v12 = -1;
      v9 = sub_10001124C(a1, v8, &v12);
      if (v9)
      {
        break;
      }

      v9 = sub_100050A5C(a1[48]);
      if (v9)
      {
        break;
      }

      v8 = (*(v4 + 96) + 1) % *(v4 + 88);
      *(v4 + 96) = v8;
      if (!--a2)
      {
        goto LABEL_7;
      }
    }

    v10 = v9;
    sub_100012178("%s:%d: %s failed to zero checkpoint descriptor block %d @ %lld: %d\n", "tx_checkpoint_desc_zero", 392, (a1[48] + 212), *(v4 + 96), v12, v9);
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  sub_1000123F8(v7, v5);
  return v10;
}

uint64_t sub_10004D34C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 400);
  while (1)
  {
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = v9;
    if (v8 > v9)
    {
      v10 = *(v7 + 88) + v9;
    }

    v11 = *(v7 + 100);
    v12 = *(v7 + 108);
    v13 = v12;
    if (v11 > v12)
    {
      v13 = *(v7 + 92) + v12;
    }

    v14 = v10 - v8;
    v15 = v13 - v11;
    v16 = *(a2 + 48) + a3;
    if (v16 <= v15 && !(v6 & 1 | (*(a2 + 40) + 1 > v14)))
    {
      return 0;
    }

    if ((v6 & 1) != 0 || !*(v7 + 128))
    {
      break;
    }

    sub_10004D470(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    sub_100012178("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t sub_10004D470(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = sub_1000508F4(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v21.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          sub_10004430C(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          j__pthread_cond_broadcast((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_10004D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = sub_10004D34C(a1, a2, v5);
  if (!v7)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v10 = *(a3 + 56);
      v8.i64[0] = *(a3 + 36);
      v10[3] = v8.i64[0];
      v11 = *(a2 + 16);
      v10[1] = *(a3 + 112);
      v10[2] = v11;
      sub_10003D4A0(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t sub_10004D6CC(uint64_t *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    sub_10003D4D4(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = sub_100050A5C(a1[48]);
    if (v12)
    {
      v13 = v12;
      if (!v8[19])
      {
        sub_100012178("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v13;
    }

    v14 = (*(a2 + 40) + v8[24]) % v8[22];
    v40 = -1;
    v15 = sub_10001124C(a1, v14, &v40);
    if (v15)
    {
      v13 = v15;
      if (!v8[19])
      {
        sub_100012178("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v13;
    }

    bzero(*(a2 + 64), v9);
    v16 = *(a2 + 64);
    *(v16 + 24) = 1073741836;
    v17 = *(a2 + 16);
    *(v16 + 8) = v40;
    *(v16 + 16) = v17;
    ++*(a2 + 40);
  }

  v18 = (*(a2 + 48) + v8[25]) % v8[23];
  v39 = -1;
  v19 = sub_100011290(a1, v18, &v39, &v38);
  if (v19)
  {
    v13 = v19;
    if (!v8[19])
    {
      sub_100012178("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
    }
  }

  else
  {
    v20 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v36 = *(a3 + 64);
    *(a3 + 128) = v39;
    v37 = v20;
    if (v20 < 1)
    {
LABEL_27:
      if (v36 == *(a3 + 56))
      {
        v26 = 0;
      }

      else
      {
        v26 = v36;
      }

      *(a3 + 64) = 0;
      v27 = a1[49];
      v28 = *(*(v27 + 872) + 104);
      *(v27 + 872) = v28;
      if (!v28)
      {
        *(v27 + 880) = v27 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v29 = *(a2 + 64);
      v30 = *(v29 + 36);
      v31 = v29 + 40 * v30;
      *(v31 + 40) = *(a3 + 36);
      *(v31 + 48) = *(a3 + 48);
      v32 = *(a3 + 8);
      if (v32)
      {
        v32 = sub_100038018(v32);
        v29 = *(a2 + 64);
        v30 = *(v29 + 36);
      }

      v33 = (v29 + 40 * v30);
      v34 = *(a3 + 112);
      v33[7] = v32;
      v33[8] = v34;
      v33[9] = *(a3 + 128);
      *(v29 + 36) = v30 + 1;
      *(a2 + 48) += v37;
      if (v26)
      {
        sub_10003518C(v26, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v22 = v36;
      v23 = v37;
      while (1)
      {
        v24 = v38 >= v23 ? v23 : v38;
        v25 = sub_100050A5C(a1[48]);
        if (v25)
        {
          break;
        }

        v23 -= v24;
        if (!v23)
        {
          goto LABEL_27;
        }

        v18 = v18 + v24 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v18 + v24);
        v25 = sub_100011290(a1, v18, &v39, &v38);
        if (v25)
        {
          break;
        }

        v22 += v24 * v9;
        if (v23 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 = v25;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        sub_100012178("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v13;
}

uint64_t sub_10004DADC(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = sub_10004D470(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

const char *sub_10004DB80(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  *(v2 + 72) |= 1u;
  pthread_mutex_unlock(v2);
  while (1)
  {
    result = sub_10004DD70(a1, 8);
    if (result != 16)
    {
      break;
    }

    sub_100012088("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (result)
  {
    result = sub_100012178("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), result);
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v4 = sub_10004D470(a1, 16, 0);
      if (v4)
      {
        sub_100012178("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v4);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v7 = *(a1 + 376);
        if (*(v7 + 140))
        {
          if (*(v7 + 148))
          {
            *(v7 + 1264) |= 2uLL;
          }
        }
      }

      sub_10003D4A0(a1, v5, v6);
      v8 = sub_100050A5C(*(a1 + 384));
      if (v8)
      {
        sub_100012178("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v8);
      }

      v9 = sub_10004D470(a1, 16, 0);
      if (v9)
      {
        sub_100012178("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v9);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t sub_10004DD70(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        j__pthread_cond_broadcast((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_67;
        }
      }

      sub_100011950((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_67;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_67:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = sub_10004D470(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_67;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    v12 = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = v12;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 2, 1);
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFC | ((a2 & 1) << 17) | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v13 = sub_10004E6D4(v7, 2, 4);
        v14 = v13;
        if (v13 > 0xF4240)
        {
          sub_100012128("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v13);
        }

        *(v5 + 248) = (*(v5 + 248) + v14) >> 1;
      }

      v2 = sub_10004E7C0(a1);
      if (!v2)
      {
        v15 = *(v5 + 72);
        if ((v15 & 0x40) != 0)
        {
          *(v5 + 72) = v15 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_69:
            pthread_mutex_unlock(v5);
            return 35;
          }

          j__pthread_cond_broadcast((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v16 = 126;
      }

      else
      {
        v16 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v16) == 0)
        {
          break;
        }

        if (!v2)
        {
          sub_100011950((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v17 = *(v5 + 72);
        if (a2 & 8) == 0 && (v17)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v17 & 4) == 0)
        {
          goto LABEL_69;
        }
      }

      while (!*(v5 + 76));
      v18 = **(*(v5 + 136) + 8);
      if (!v18 || (v2 = *(v18 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_67;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_10004E124(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_37:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_15:
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v15 = 0;
    tv_sec = __tp.tv_sec;
    v32 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_69;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_20:
          v17 = *(v9 + 24);
          v15 = "nx_tx_wait_closing";
          if ((v17 & 2) == 0)
          {
            if ((v17 & 4) != 0)
            {
              v18 = **(*(v7 + 136) + 8);
              if (!v18 || (v15 = "nx_tx_wait_closed_prev_flushing", (*(v18 + 24) & 0x30) == 0))
              {
                v15 = "nx_tx_wait_closed";
              }
            }

            else if ((v17 & 0x18) != 0)
            {
              v15 = "nx_tx_wait_flush";
            }

            else
            {
              v15 = v16;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v34 = 0;
          if (!v9)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v15)
              {
                v10 = v34;
                if (v34)
                {
                  if (strcmp(v15, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v26 = 1000000 * (__tp.tv_sec - tv_sec) - v32 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v26;
                    if (v26 > 0xF4240 && sub_100011490(a1))
                    {
                      sub_100012128("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v26, *(v9 + 16), v15);
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v34;
              }

LABEL_84:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                sub_100043DE4(a1, v9);
              }

              return 0;
            }

LABEL_82:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v24 = *(v9 + 24);
            if ((v24 & 1) == 0)
            {
              break;
            }

            do
            {
              sub_100012088("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              sub_100011950((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_58:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_40;
              }

LABEL_42:
              v19 = *(v7 + 112);
            }

            while (!v19);
            *(v7 + 144) = v19;
            v21 = *v19;
            v20 = v19[1];
            v22 = (v21 + 8);
            if (!v21)
            {
              v22 = (v7 + 120);
            }

            *v22 = v20;
            *v20 = v21;
            v23 = *(v7 + 64);
            *(v7 + 64) = v23 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v23;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            sub_10003D4A0(a1, v13, v14);
            v25 = sub_100050A5C(*(a1 + 384));
            if (v25)
            {
              v3 = v25;
              sub_100012178("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v25);
              v9 = *(v7 + 144);
LABEL_52:
              sub_100012178("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_58;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
            if (v24)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v24, 1, 0);
            }
          }

          else if (v3)
          {
            goto LABEL_52;
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          j__pthread_cond_broadcast((v7 + 256));
          v3 = 0;
          v34 = 1;
          goto LABEL_58;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_69:
          v27 = **(*(v7 + 136) + 8);
          if (v27)
          {
            if (*(v27 + 24) & 0x30)
            {
              v29 = 0;
            }

            else
            {
              v27 = *(v7 + 144);
              v29 = v9 == 0;
            }

            if (!v29)
            {
              v9 = v27;
              goto LABEL_78;
            }
          }

          else if (v9)
          {
LABEL_78:
            v30 = *(v9 + 52);
            if (v30)
            {
              v3 = v30;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_82;
          }

          v3 = 5;
          goto LABEL_82;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v16 = "nx_tx_wait_frozen";
      }

      else
      {
        v16 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v15 = v16;
LABEL_36:
      sub_100011950((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_37;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_84;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_10004E6D4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & a2) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v4, a3, a2);
    }
  }

  if (a3)
  {
    v5 = *(a1 + 24);
    if ((v5 & a3) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v5, a3, a2);
    }
  }

  *(a1 + 24) = *(a1 + 24) & ~a2 | a3;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v6 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  result = v6 - *(a1 + 72);
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_10004E7C0(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    sub_100011950((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = sub_10004EBF0(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_10004EBF0(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    j__pthread_cond_broadcast((v2 + 256));
  }

  return v6;
}

uint64_t sub_10004E8BC(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if ((*(v8 + 24) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((a3 & 4) != 0)
    {
      v9 = 0;
      ++*(v7 + 176);
    }

    else
    {
      v9 = *(v8 + 32) <= 0x186A0u && !sub_100037850(*(a1 + 392)) && !sub_1000441D8(a1);
    }

    if ((*(v7 + 72) & 0x40) != 0)
    {
      if (!v9)
      {
        *(v8 + 24) |= 0x100000u;
      }
    }

    else
    {
      v10 = *(v8 + 24);
      if ((v10 & 0x100000) != 0)
      {
        v10 &= ~0x100000u;
        *(v8 + 24) = v10;
      }

      else if (v9)
      {
        goto LABEL_21;
      }

      if ((v10 & 1) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      if ((v10 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      *(v8 + 24) = v10 & 0xFFFFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

LABEL_21:
    if ((~a3 & 5) != 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_23:
        if ((a3 & 0x20) == 0)
        {
LABEL_25:
          v11 = *(v8 + 28) - 1;
          *(v8 + 28) = v11;
          if (!v11 && (v12 = *(v8 + 24), (v12 & 2) != 0))
          {
            if ((v12 & 4) != 0)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 4, 2);
            }

            *(v8 + 24) = v12 & 0xFFFFFFF9 | 4;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            v16 = v15 - *(v8 + 72);
            *(v8 + 72) = v15;
            if (v16 > 0xF4240)
            {
              sub_100012128("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v16);
            }

            *(v7 + 248) = (*(v7 + 248) + v16) >> 1;
            v3 = sub_10004E7C0(a1);
            if ((a3 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v3 = 0;
            if ((a3 & 1) == 0)
            {
LABEL_37:
              pthread_mutex_unlock(v7);
              return v3;
            }
          }

          if ((a3 & 4) != 0)
          {
            v13 = 127;
          }

          else
          {
            v13 = 63;
          }

          do
          {
            if (*(v8 + 16) != a2 || (*(v8 + 24) & v13) == 0)
            {
              break;
            }

            if (!v3)
            {
              sub_100011950((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
            }
          }

          while (!*(v7 + 76));
          v3 = *(v8 + 52);
          goto LABEL_37;
        }

LABEL_24:
        *(v8 + 24) |= 0x80000u;
        goto LABEL_25;
      }
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 30;
}

uint64_t sub_10004EBF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v91 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 4) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    if ((v7 & 8) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    *(a2 + 24) = v7 & 0xFFFFFFF3 | 8;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      sub_100012128("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_100035BD4(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        sub_100012178("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_23;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      if ((v20 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v91 = -1;
      v35 = sub_10001124C(a1, *(*(a1 + 376) + 128), &v91);
      if (v35)
      {
        v12 = v35;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v35);
        }

        v13 = 890;
        goto LABEL_23;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v50 = *(a2 + 64);
      *(v50 + 24) = 1073741836;
      *(v50 + 8) = v91;
      *(v50 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = sub_10000E700(a1, a2, 1);
      if (v12)
      {
        goto LABEL_24;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v52 = sub_10004D5F8(a1, a2, i);
          if (v52)
          {
            v12 = v52;
            if (!*(v4 + 76))
            {
              sub_100012178("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v52);
            }

            v13 = 918;
LABEL_23:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_24:
            sub_100036E50(v5);
            v14 = *(v5 + 872);
            if (v14)
            {
              v15 = (v5 + 872);
              do
              {
                v16 = v14[13];
                *v15 = v16;
                if (!v16)
                {
                  *(v5 + 880) = v15;
                }

                v14[13] = 3735928559;
                v14[8] = 0;
                sub_10003D2CC(v14);
                sub_100037058(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                sub_10003D2CC(j);
              }
            }

            v18 = *(v4 + 72);
            if ((v18 & 0x40) != 0)
            {
              *(v4 + 72) = v18 & 0xFFFFFFBF;
            }

            v19 = *(a2 + 24);
            if ((v19 & 8) == 0)
            {
              panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            if (v19)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_66;
          }

          sub_10003C8DC(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            sub_100012128("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v53 = *(v4 + 96);
      *(a2 + 112) = -1;
      v54 = (*(a2 + 40) + v53) % *(v4 + 88);
      v55 = sub_10001124C(a1, v54, (a2 + 112));
      if (v55)
      {
        v12 = v55;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v54, v55);
        }

        v13 = 939;
        goto LABEL_23;
      }

      ++*(a2 + 40);
      v65 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v65)
      {
        sub_100012178("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v65);
      }

      v66 = *(a1 + 376);
      *(v66 + 88) = *(v5 + 400);
      *(v66 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v66, *(v66 + 36));
      v69 = *(a2 + 16);
      v70 = *(a2 + 56);
      *(v70 + 16) = v69;
      v71 = *(v4 + 96);
      *(v70 + 136) = v71;
      v72 = *(v4 + 100);
      *(v70 + 144) = v72;
      v73 = *(a2 + 40);
      *(v70 + 140) = v73;
      v74 = *(a2 + 48);
      *(v70 + 148) = v74;
      v75 = v73 + v71;
      v77 = *(v4 + 88);
      v76 = *(v4 + 92);
      v78 = v75 % v77;
      v79 = (v74 + v72) % v76;
      if (!*(v4 + 76))
      {
        if (v73 > v77 >> 2)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v69, v73, v77 >> 2);
          v74 = *(a2 + 48);
          v76 = *(v4 + 92);
        }

        if (v74 > v76 >> 2)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v74, v76 >> 2);
          v74 = *(a2 + 48);
        }

        v80 = *(v5 + 928) - 1;
        if (v74 != v80)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v74, v80);
        }
      }

      v81 = *(a2 + 56);
      *(v81 + 128) = v78;
      *(v81 + 132) = v79;
      sub_10003D4D4(a1, v81, *(*(a1 + 376) + 36), v67, v68);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v82 = *(a2 + 24);
      if ((v82 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      if ((v82 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      *(a2 + 24) = v82 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v83 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v83 - *(a2 + 72);
      *(a2 + 72) = v83;
      if (v22 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    if (v23)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v24 = *(v4 + 136);
    *(a2 + 8) = v24;
    *v24 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  j__pthread_cond_broadcast((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = sub_1000374A4(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    sub_100036E50(v5);
    sub_10004D470(a1, 0, 0);
    j__pthread_cond_broadcast((v4 + 256));
    v12 = 0;
    *(a2 + 52) = 0;
    return v12;
  }

  v12 = v26;
  if (v26)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      sub_100012178("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_65;
  }

  while (1)
  {
    v32 = *(v5 + 872);
    if (!v32)
    {
      v33 = *(a2 + 64);
      if (*(v33 + 8))
      {
        *(v33 + 32) |= 1u;
        sub_10003D4D4(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = sub_100050A5C(*(a1 + 384));
        if (v34)
        {
          v12 = v34;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            sub_100012178("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_65;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v36 = *(a2 + 40);
      v37 = *(a2 + 56);
      v38 = *(a2 + 48);
      v39 = v37[37];
      if (v36 != v37[35] || v38 != v39)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v36, v38, v37[35], v39);
      }

      v41 = *(a1 + 376);
      v41[34] = v37[34];
      v41[35] = v36;
      v41[36] = v37[36];
      v41[37] = v38;
      v42 = *(a2 + 24);
      if ((v42 & 0x10) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      if ((v42 & 0x20) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      *(a2 + 24) = v42 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v43 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v44 = v43 - *(a2 + 72);
      *(a2 + 72) = v43;
      if (v44 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v44);
      }

      *(a2 + 104) = v44;
      j__pthread_cond_broadcast((v4 + 256));
      v45 = sub_10004D470(a1, 0, 1);
      if (v45)
      {
        v12 = v45;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v45);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v46 = *(a2 + 24);
        if ((v46 & 0x20) == 0)
        {
          panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        if ((v46 & 0x10) != 0)
        {
          panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        *(a2 + 24) = v46 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v47 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v48 = v47 - *(a2 + 72);
        *(a2 + 72) = v47;
        v49 = v48 + *(a2 + 104);
        goto LABEL_123;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      v56 = sub_100050A5C(*(a1 + 384));
      if (v56)
      {
        v12 = v56;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v57 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v60 = sub_100050A5C(*(a1 + 384)), !v60))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v61 = sub_10004E6D4(a2, 32, 64);
          v62 = v61;
          if (v61 > 0xF4240)
          {
            sub_100012128("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v61);
          }

          *(a2 + 104) += v62;
          v63 = *(a2 + 24);
          if ((v63 & 0x20000) == 0)
          {
            goto LABEL_159;
          }

          ++*(v4 + 184);
          if ((v63 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v64 = sub_10004D470(a1, (v63 >> 14) & 0x10, 0);
          if (!v64)
          {
LABEL_159:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v84 = *(a2 + 56);
            v85 = *(v84 + 128);
            v86 = *(a1 + 376);
            *(v86 + 128) = v85;
            *(v4 + 96) = v85;
            v87 = *(v84 + 132);
            *(v86 + 132) = v87;
            *(v4 + 100) = v87;
            *(v86 + 16) = *(v84 + 16);
            v88 = *(v4 + 152);
            *(v4 + 152) = v88 + 1;
            if (v88)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v88 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && sub_100011490(a1))
              {
                v89 = *(v4 + 160);
                if (v89 <= 1)
                {
                  v90 = 1;
                }

                else
                {
                  v90 = *(v4 + 160);
                }

                sub_100012088("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v89, *(v4 + 168) / v90, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), *(v4 + 232), *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            j__pthread_cond_broadcast((v4 + 256));
            return 0;
          }

          v12 = v64;
          if (!*(v4 + 76))
          {
            sub_100012178("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v64);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v58 = a2;
          v59 = 64;
          goto LABEL_122;
        }

        v12 = v60;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v60);
        }

        pthread_mutex_lock(v4);
        v57 = 1249;
      }

      *(v4 + 76) = v57;
      ++*(v4 + 80);
      --*(a2 + 40);
      v58 = a2;
      v59 = 32;
LABEL_122:
      v49 = *(a2 + 104) + sub_10004E6D4(v58, v59, 16);
LABEL_123:
      *(a2 + 104) = v49;
      goto LABEL_66;
    }

    v31 = sub_10004D6CC(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    sub_10003D2CC(v32);
    sub_100037058(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    sub_100012178("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_65:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_66:
  j__pthread_cond_broadcast((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

uint64_t sub_10004FDE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = sub_100012434(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = sub_100012434((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t sub_10004FE74(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 2 * v6;
  *(a1 + 1) = sub_100012434(4 * v6, 0x100004052888210uLL);
  v14 = sub_100012434(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    sub_1000123F8(v15, 4 * v16);
    sub_1000123F8(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = a2 + 2;
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t sub_10004FFE0(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a2 < 4)
  {
    return 28;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v8 + 4 * v7 + 4 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    v9 = 0;
    v10 = &a1[2 * v7 + 2];
    for (i = a1 + 3; ; i += 2)
    {
      v12 = *i;
      if (v9 + v12 > v8)
      {
        break;
      }

      if (*(i - 2) == a3)
      {
        if (a4)
        {
          *a4 = *(i - 1);
        }

        if (a6)
        {
          *a6 = v12;
        }

        result = 0;
        *a5 = v10 + v9;
        return result;
      }

      v9 += (v12 + 7) & 0x1FFF8;
      if (!--v7)
      {
        return 2;
      }
    }

    return 22;
  }

  return 2;
}

uint64_t sub_100050084(unsigned __int16 *a1, unint64_t a2, int a3, const void *a4, int a5)
{
  v9 = -1431655766;
  __dst = 0;
  result = sub_10004FFE0(a1, a2, a3, 0, &__dst, &v9);
  if (!result)
  {
    if (v9 == a5)
    {
      memcpy(__dst, a4, a5);
      return 0;
    }

    else
    {
      return 34;
    }
  }

  return result;
}

uint64_t sub_1000500F8(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 2))
  {
    v4 = sub_100012434(a2[3], 0x3B1F33ADuLL);
    if (!v4)
    {
      return 12;
    }

    v5 = v4;
    memcpy(v4, *(a2 + 2), a2[3]);
  }

  else
  {
    v5 = 0;
  }

  if (!*(a2 + 1))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = sub_100012434(4 * a2[1], 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *(a2 + 1), 4 * *a2);
LABEL_9:
    result = 0;
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    return result;
  }

  sub_1000123F8(v5, a2[3]);
  return 12;
}

uint64_t sub_1000501C0(uint64_t a1)
{
  sub_1000123F8(*(a1 + 8), 4 * *(a1 + 2));
  sub_1000123F8(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t sub_10005021C(unsigned __int16 *a1, _WORD *a2, unint64_t a3)
{
  v3 = *a1;
  if (a1[2] + 4 * v3 + 4 > a3)
  {
    return 28;
  }

  *a2 = v3;
  a2[1] = a1[2];
  v6 = a2 + 2;
  memcpy(a2 + 2, *(a1 + 1), 4 * *a1);
  memcpy(&v6[2 * *a1], *(a1 + 2), a1[2]);
  return 0;
}

uint64_t sub_10005029C(unsigned __int16 *a1, int a2, char a3, void *__src, size_t __n)
{
  v8 = a2;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a1;
    v14 = v10 - 1;
    v15 = (*(a1 + 1) + 2);
    v16 = 2;
    while (*(v15 - 2) != a2)
    {
      v17 = *v15;
      v15 += 2;
      v12 += (v17 + 7) & 0x1FFF8;
      ++v11;
      v16 += 4;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    v18 = *(a1 + 2);
    *(v15 - 1) = a3;
    if (v18)
    {
      v19 = (v18 + v12);
      v20 = *v15;
      if (v20 == __n)
      {
        goto LABEL_22;
      }

      v21 = (v20 + 7) & 0x1FFF8;
      v22 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 - v21;
      if (v22 < v21)
      {
        if (v14 > v11)
        {
          memmove((v18 + v12 + v22), (v18 + v12 + v21), a1[3] - (v12 + v21));
        }

        v24 = a1[2] - (v21 - v22);
LABEL_32:
        a1[2] = v24;
LABEL_33:
        *(*(a1 + 1) + v16) = __n;
        if (!v19)
        {
          return 22;
        }

        goto LABEL_22;
      }

      if (v22 <= v21)
      {
        goto LABEL_33;
      }

      v33 = v12;
      v34 = a1[2];
      if (v23 + v34 <= a1[3])
      {
LABEL_29:
        if (v14 > v11)
        {
          memmove(&v19[v22], &v19[v21], v34 - (v21 + v33));
          LOWORD(v34) = a1[2];
        }

        v24 = v34 + v23;
        goto LABEL_32;
      }

      if (!sub_100050500(a1, __n))
      {
        v19 = (*(a1 + 2) + v33);
        LODWORD(v34) = a1[2];
        v14 = *a1 - 1;
        goto LABEL_29;
      }

      return 28;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  v25 = a1[1];
  if (v10 >= v25)
  {
    v26 = v25 + 4;
    v27 = sub_100012468(*(a1 + 1), 4 * v25, (4 * (v25 + 4)), 0x100004052888210uLL);
    if (!v27)
    {
      return 28;
    }

    *(a1 + 1) = v27;
    a1[1] = v26;
  }

  v28 = a1[2];
  v29 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v29 + v28 > a1[3])
  {
    if (sub_100050500(a1, __n))
    {
      return 28;
    }

    v28 = a1[2];
  }

  v31 = *(a1 + 2);
  v32 = *(a1 + 1) + 4 * v13;
  *v32 = v8;
  *(v32 + 1) = a3;
  *(v32 + 2) = __n;
  ++*a1;
  v19 = (v31 + v28);
  a1[2] = v28 + v29;
  if (!(v31 + v28))
  {
    return 22;
  }

LABEL_22:
  memcpy(v19, __src, __n);
  if ((__n & 7) != 0)
  {
    bzero(&v19[__n], 8 - (__n & 7));
  }

  return 0;
}

uint64_t sub_100050500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 6);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3;
  v5 = sub_100012468(*(a1 + 16), v3, v4, 0x669DD06FuLL);
  if (!v5)
  {
    return 28;
  }

  v6 = v5;
  result = 0;
  *(a1 + 16) = v6;
  *(a1 + 6) = v4;
  return result;
}

uint64_t sub_100050564(unsigned __int16 *a1, int a2, _DWORD *a3, char *__dst, size_t __n)
{
  if (!*a1)
  {
    return 2;
  }

  v9 = 0;
  v10 = 0;
  v11 = (*(a1 + 1) + 2);
  while (*(v11 - 2) != a2)
  {
    v12 = *v11;
    v11 += 2;
    v10 += (v12 + 7) & 0x1FFF8;
    v9 += 4;
    if (4 * *a1 == v9)
    {
      return 2;
    }
  }

  v14 = (*(a1 + 2) + v10);
  v15 = *v11;
  if (v15 >= __n)
  {
    memcpy(__dst, v14, __n);
  }

  else
  {
    memcpy(__dst, v14, v15);
    v16 = *(*(a1 + 1) + v9 + 2);
    bzero(&__dst[v16], __n - v16);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v9 + 1);
  }

  return result;
}

uint64_t sub_100050654(unsigned __int16 *a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (!*a1)
  {
    return 2;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 1);
  while (*(v7 + v5) != a2)
  {
    v6 += (*(v7 + v5 + 2) + 7) & 0x1FFF8;
    v5 += 4;
    if (4 * *a1 == v5)
    {
      return 2;
    }
  }

  *a4 = *(a1 + 2) + v6;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v5 + 1);
  }

  v8 = 0;
  if (a5)
  {
    *a5 = *(*(a1 + 1) + v5 + 2);
  }

  return v8;
}

uint64_t sub_1000506E0(unsigned __int16 *a1, int a2)
{
  if (!*a1)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  v5 = 1;
  for (i = 2; *(v4 + i - 2) != a2; i += 4)
  {
    v3 += (*(v4 + i) + 7) & 0x1FFF8;
    if (++v5 - *a1 == 1)
    {
      return 2;
    }
  }

  v8 = (*(v4 + i) + 7) & 0x1FFF8;
  memmove((*(a1 + 2) + v3), (*(a1 + 2) + v3 + v8), (a1[3] - v3 - v8));
  a1[2] -= v8;
  memmove((*(a1 + 1) + i - 2), (*(a1 + 1) + i + 2), 4 * (*a1 - v5));
  result = 0;
  --*a1;
  return result;
}

uint64_t sub_1000507D4(int a1)
{
  v7 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v2;
  *v6.st_qspare = v2;
  v6.st_birthtimespec = v2;
  *&v6.st_size = v2;
  v6.st_mtimespec = v2;
  v6.st_ctimespec = v2;
  *&v6.st_uid = v2;
  v6.st_atimespec = v2;
  *&v6.st_dev = v2;
  memset(&__b, 170, sizeof(__b));
  if (!ioctl(a1, 0x40046418uLL, &v7))
  {
    return v7;
  }

  if (!fstatfs(a1, &__b))
  {
    return __b.f_bsize;
  }

  if (!fstat(a1, &v6))
  {
    return v6.st_blksize;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_100012178("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v4);
  return 512;
}

uint64_t sub_100050974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t sub_1000509EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return sub_100050974(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t sub_100050A44(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_100050A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_100050AA4(uint64_t a1, uint64_t a2)
{
  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100050AE0(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_100050B24(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    sub_100012178("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_1000519D8(a1, a2, a3, a4, a5, a7);
  }

  else
  {

    return sub_100051768(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100050C00(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v5 = aio_return(v3), v5 == -1))
  {
    v4 = *__error();
  }

  else if (v5 >= *(a2 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v4;
    v6(a2);
  }

  return v4;
}

uint64_t sub_100050C8C(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    sub_100012178("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_100051AC0(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t sub_100050D30(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_100051900(a1, *(a1 + 40), v5, v4, *(a1 + 48));
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v9 = ioctl(*a1, 0x80186416uLL, &v10, 0, 0, 2);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0, v10, v11);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050E2C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = sub_100050EEC(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t sub_100050EEC(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      sub_100012178("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_100050FD0(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    sub_1000123F8(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_100051900(a1, *(a1 + 40), v5, v4, *(a1 + 48));
  v7 = v6;
  if (v6)
  {
    sub_100012178("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_100050EEC(a1);
    v7 = v8;
    if (v8)
    {
      sub_100012178("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    sub_1000123F8(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  sub_1000123F8(a1, v3 + 216);
  return v7;
}

uint64_t sub_100051134(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t sub_100051180(uint64_t a1)
{
  v20 = -1431655766;
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v2;
  *v16.st_qspare = v2;
  v16.st_birthtimespec = v2;
  *&v16.st_size = v2;
  v16.st_mtimespec = v2;
  v16.st_ctimespec = v2;
  *&v16.st_uid = v2;
  v16.st_atimespec = v2;
  *&v16.st_dev = v2;
  if (fstat(*a1, &v16))
  {
    v3 = __error();
    v4 = *v3;
    sub_100012178("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v3, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = off_1000700A0;
    v5 = sub_1000507D4(*a1);
    *(a1 + 80) = v5;
    *(a1 + 84) = v5;
    v6 = *a1;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v7;
    *v21.st_qspare = v7;
    v21.st_birthtimespec = v7;
    *&v21.st_size = v7;
    v21.st_mtimespec = v7;
    v21.st_ctimespec = v7;
    *&v21.st_uid = v7;
    v21.st_atimespec = v7;
    *&v21.st_dev = v7;
    if (ioctl(v6, 0x40086419uLL, &v22))
    {
      if (fstat(v6, &v21))
      {
        v8 = __error();
        v9 = strerror(*v8);
        sub_100012178("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v9);
        v10 = 0;
      }

      else
      {
        st_size = v21.st_size;
        v10 = st_size / sub_1000507D4(v6);
      }
    }

    else
    {
      v10 = v22;
    }

    *(a1 + 112) = v10;
    sub_10002F608(*a1, &v20, &v19, &v18, &v17);
    v12 = v19;
    *(a1 + 88) = v20;
    *(a1 + 92) = v12;
    v13 = v17;
    *(a1 + 96) = v18;
    *(a1 + 100) = v13;
    *(a1 + 64) = v16.st_mode;
    *(a1 + 104) = 0;
    v14 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v4 = 0;
    *(a1 + 192) = sub_1000122F4(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v4;
}

uint64_t sub_100051344(char *a1, int a2, int **a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = sub_1000122F4(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v34.st_blksize = v11;
    *v34.st_qspare = v11;
    v34.st_birthtimespec = v11;
    *&v34.st_size = v11;
    v34.st_mtimespec = v11;
    v34.st_ctimespec = v11;
    *&v34.st_uid = v11;
    v34.st_atimespec = v11;
    *&v34.st_dev = v11;
    v9[17] = 0;
    if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
    {
      v14 = sub_10002F9FC(a1, 0);
      if (v14)
      {
        v15 = v14;
        v10[2] = -1;
        v16 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v16;
        if (v16 < 0)
        {
          v24 = __error();
          v13 = *v24;
          v25 = strerror(*v24);
          sub_100012178("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v25);
        }

        else
        {
          v17 = open(v15, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v17;
          if ((v17 & 0x80000000) == 0)
          {
LABEL_30:
            v30 = sub_100051180(v10);
            if (v30)
            {
              v13 = v30;
              free(v15);
LABEL_38:
              sub_1000123F8(v10, v8 + 216);
              return v13;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v15);
LABEL_39:
            v13 = 0;
            *a3 = v10;
            return v13;
          }

          v18 = __error();
          v13 = *v18;
          v19 = strerror(*v18);
          sub_100012178("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v15, v19);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v20 = open(a1, a2);
        *v10 = v20;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        v21 = 30;
        while (*__error() == 16 && v21 != 0)
        {
          sub_100012178("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v21, v7);
          sleep(1u);
          v23 = open(a1, a2);
          *v10 = v23;
          --v21;
          if ((v23 & 0x80000000) == 0)
          {
            v15 = 0;
            goto LABEL_30;
          }
        }

        v15 = 0;
        v13 = *__error();
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      memset(v36, 170, sizeof(v36));
      memset(__str, 170, sizeof(__str));
      snprintf(__b, 0x400uLL, "%s/apfs", a1);
      snprintf(__str, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v36, 0x400uLL, "%s/nx", a1);
      v12 = open(__b, a2);
      v10[1] = v12;
      if (v12 < 0)
      {
        v13 = *__error();
      }

      else
      {
        v13 = 0;
      }

      v26 = open(__str, a2);
      v10[2] = v26;
      if (v26 < 0)
      {
        v13 = *__error();
      }

      v27 = open(v36, a2);
      v28 = v27;
      *v10 = v27;
      v29 = v10[1];
      if ((v29 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v27 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v13)
      {
        v13 = *__error();
        v28 = *v10;
        v29 = v10[1];
      }

      v31 = v10[2];
      v32 = strerror(v13);
      sub_100012178("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __b, v29, __str, v31, v36, v28, v13, v32, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v15 = 0;
    }

    free(v15);
    if (v13)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t sub_100051768(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100051878(a1, a2, a3);
  if (!v10)
  {
    v11 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v11) && ((a2 * v11) & 0x8000000000000000) == 0 && is_mul_ok(a3, v11))
    {
      v13 = a3 * v11;
      if (!a5 || (v14 = *(a1 + 4), v14 < 0))
      {
        v14 = *a1;
      }

      v15 = pread(v14, a4, a3 * v11, a2 * v11);
      if (v15 < 0)
      {
        v16 = __error();
        v10 = *v16;
        sub_100012178("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v16, (a1 + 212));
      }

      else if (v15 == v13)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      sub_100012178("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return v10;
}

uint64_t sub_100051878(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = sub_100051900(a1, v8, v7, v6, *(a1 + 48));
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100051900(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
{
  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6 || v7 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v10) && (v11 = a2 * v10, ((a2 * v10) & 0x8000000000000000) == 0) && is_mul_ok(a3, v10))
  {
    v12 = a3 * v10;
    if (!a5 || (v13 = *(a1 + 4), v13 < 0))
    {
      v13 = *a1;
    }

    v14 = pwrite(v13, __buf, v12, v11);
    if (v14 < 0)
    {
      return *__error();
    }

    else if (v14 == v12)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    sub_100012178("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_1000519D8(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100051878(a1, a2, a3);
  if (!v12)
  {
    *(a6 + 8) = 0u;
    v14 = (a6 + 8);
    *(a6 + 88) = a5;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    v15 = a1[21];
    *(a6 + 16) = v15 * a2;
    *(a6 + 24) = a4;
    *(a6 + 32) = v15 * a3;
    if (!a5 || (v16 = a1[1], v16 < 0))
    {
      v16 = *a1;
    }

    v14->aio_fildes = v16;
    if (!aio_read(v14))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v12 = 16;
    }

    else
    {
      v12 = *__error();
      if (!v12)
      {
        return v12;
      }
    }
  }

  v13 = *a6;
  if (*a6)
  {
    *(a6 + 96) = v12;
    v13(a6);
  }

  return v12;
}

uint64_t sub_100051AC0(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
{
  v8 = __buf;
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 24);
  if (*(a1 + 60))
  {
    if (!v12)
    {
      v13 = *(a1 + 84);
      v14 = v13 <= 0x100000 ? 0x100000 / v13 : 1;
      *(a1 + 32) = v14;
      v16 = sub_100012434(v14 * v13, 0x835B50A5uLL);
      *(a1 + 24) = v16;
      *(a1 + 36) = 0;
      if (!v16)
      {
        return 12;
      }
    }
  }

  else if (!v12)
  {

    return sub_100051900(a1, a2, a3, __buf, a5);
  }

  if (!v9)
  {
    return 0;
  }

  v17 = *(a1 + 36);
  while (1)
  {
    while (1)
    {
      v18 = v9 <= *(a1 + 32) - v17 ? v9 : *(a1 + 32) - v17;
      if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || v10 != *(a1 + 40) + v17)
      {
        break;
      }

      if (*(a1 + 48) != a5 || v18 == 0)
      {
        break;
      }

      memcpy((*(a1 + 24) + *(a1 + 84) * v17), v8, *(a1 + 84) * v18);
      v17 = *(a1 + 36) + v18;
      *(a1 + 36) = v17;
      v10 += v18;
      v9 -= v18;
      v8 += *(a1 + 84) * v18;
      if (!v9)
      {
        return 0;
      }
    }

    if (v17)
    {
      result = sub_100051900(a1, *(a1 + 40), v17, *(a1 + 24), *(a1 + 48));
      if (result)
      {
        break;
      }
    }

    v17 = 0;
    *(a1 + 36) = 0;
    *(a1 + 40) = v10;
    *(a1 + 48) = a5;
    *(a1 + 56) = a6;
  }

  return result;
}

void sub_100051C60(io_registry_entry_t a1, char *a2)
{
  memset(name, 0, 128);
  memset(className, 0, sizeof(className));
  IORegistryEntryGetName(a1, name);
  IOObjectGetClass(a1, className);
  warnx("%sName:[%s] Class:[%s]", a2, name, className);
  properties = 0xAAAAAAAAAAAAAAAALL;
  if (IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0))
  {
    warnx("%s Err: unable to fetch properties\n", a2);
  }

  else
  {
    CFDictionaryApplyFunction(properties, sub_100051D7C, a2);
    CFRelease(properties);
  }
}

void sub_100051D7C(const __CFString *a1, const __CFString *a2, const char *a3)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, sizeof(__str));
  v6 = CFGetTypeID(a2);
  if (v6 == CFStringGetTypeID())
  {
    sub_100004AB4(a2, __str);
  }

  else if (v6 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    v7 = valuePtr;
    v8 = sub_100011E2C(valuePtr, 0, 0);
    snprintf(__str, 0x100uLL, "%llu%s", v7, v8);
  }

  else if (v6 == CFBooleanGetTypeID())
  {
    CFBooleanGetValue(a2);
    __strlcpy_chk();
  }

  else
  {
    v9 = CFCopyTypeIDDescription(v6);
    sub_100004AB4(v9, __str);
    __strlcat_chk();
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    CStringPtr = __b;
    sub_100004AB4(a1, __b);
  }

  warnx("%s > %s : %s", a3, CStringPtr, __str);
}
uint64_t sub_10000DA40(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v10 = a1 + 872;
  if (!a5 || !*a5)
  {
    sub_10000D018(a1, a4, a3);
  }

  result = sub_10000D284(a1, a2, a3, a4, v10);
  if (!result)
  {
    if (*(v10 + 4 * *(a1 + 969)))
    {
      v12 = (*(a1 + 80) + 24 * *(v10 + 4 * *(a1 + 969)));
      if ((*v12 & 0xFFFFFFFFFFFFFLL) != a3)
      {
        sub_1000A3F60();
      }

      if ((v12[1] & 0xFFFFFFFFFFFFFLL) != a4)
      {
        sub_1000A3F8C();
      }

      return 17;
    }

    else
    {

      return sub_10000D73C(a1, a3, a4, a5, v10);
    }
  }

  return result;
}

uint64_t sub_10000DB50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v4 = a1 + 970;
  result = sub_10000D284(a1, 0, a2, a3, a1 + 970);
  if (!result)
  {
    if (*(v4 + 4 * *(a1 + 1067)))
    {
      sub_10000DC64(a1, v4);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10000DBCC(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = *(result + 80);
    v3 = *(v2 + 24 * a2 + 8) & 0xFFFFFFFFFFFFFLL;
    if (*result && v3 >= *(*(*(result + 8) + 376) + 48 * *(result + 88) + 48))
    {
      sub_1000A3FB8();
    }

    v4 = *(result + 96);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (!v5)
    {
      sub_1000A3FE4();
    }

    --*(result + 94);
    *(result + 96) = v6;
    *(v2 + 24 * a2) = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_10000DC64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2 >= 2)
  {
    sub_1000A3E2C();
  }

  v4 = *(a2 + 97);
  v5 = v4;
  v6 = (a2 + 4 * v4);
  v7 = *(result + 80);
  v8 = v7 + 24 * *v6;
  v9 = v8 + 4 * v2;
  v10 = *(v9 + 18);
  v11 = v5 - 1;
  if (v5 < 1)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (a2 + 4 * v11);
    v13 = *v12;
    v14 = ((*(v12 + 3) + 1 + (((*(v12 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v15 = 8 * (v2 != 0);
  v16 = *(v9 + 16);
  v17 = result + 2 * v2;
  if (!v10)
  {
    if (v5)
    {
      v36 = (v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16);
    }

    else
    {
      v36 = (v17 + 104);
    }

    *v36 = v16;
    *(a2 + 97) = v11;
    if ((v11 & 0x80) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  v18 = *(v8 + 8 * (v2 != 0));
  v19 = v7 + 24 * v10 + 4 * v2;
  v22 = *(v19 + 16);
  v21 = (v19 + 16);
  v20 = v22;
  if (v22)
  {
    *(v6 + 3) = 1;
    v23 = v5 + 1;
    *(a2 + 97) = v5 + 1;
    v24 = a2 + 4 * (v5 + 1);
    *v24 = v10;
    *(v24 + 3) = 0;
    v25 = v10;
    do
    {
      v11 = v23;
      v26 = v25;
      v25 = v20;
      *(a2 + 4 * v23++ + 3) = -1;
      v27 = a2 + 4 * v23;
      *v27 = v25;
      *(v27 + 3) = 0;
      v28 = v7 + 24 * v25 + 4 * v2;
      v30 = *(v28 + 16);
      v29 = (v28 + 16);
      v20 = v30;
    }

    while (v30);
    v31 = v25;
    v32 = v7 + 24 * v25;
    v33 = v32 + 4 * v2;
    *(v7 + 24 * v26 + 4 * v2 + 16) = *(v33 + 18);
    *(v33 + 18) = v10;
    *v29 = v16;
    *(v32 + v15 + 7) = HIBYTE(v18);
    v34 = v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16;
    if (v5)
    {
      v35 = v34;
    }

    else
    {
      v35 = (v17 + 104);
    }

    *v35 = v31;
    *(v6 + 3) = 1;
    *v6 = v31;
    *(a2 + 97) = v11;
    if ((v11 & 0x80) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  *v21 = v16;
  v37 = (v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16);
  if (!v5)
  {
    v37 = (v17 + 104);
  }

  *v37 = v10;
  *(v7 + 24 * v10 + v15 + 7) = HIBYTE(v18);
  *(v6 + 3) = 1;
  *v6 = v10;
  v11 = v5;
  if ((v5 & 0x80) == 0)
  {
LABEL_22:
    v53 = result;
    v54 = (v17 + 104);
    do
    {
      v38 = (a2 + 4 * v11);
      v39 = *(v38 + 3);
      if (!*(v38 + 3))
      {
        sub_1000A40EC();
      }

      v40 = *v38;
      v41 = *(result + 80);
      v42 = v41 + 24 * v40;
      v43 = *(v42 + 8 * (v2 != 0));
      v44 = HIBYTE(v43);
      v45 = (HIBYTE(v43) - v39);
      if (v45 < 0)
      {
        v45 = -v45;
      }

      if (v45 > 1)
      {
        v46 = v54;
        if (v11)
        {
          v46 = (v41 + 24 * *(a2 + 4 * (v11 - 1)) + 4 * v2 + 2 * ((*(a2 + 4 * (v11 - 1) + 3) + 1 + (((*(a2 + 4 * (v11 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        v47 = -v39;
        v48 = *(v41 + 24 * v40 + 4 * v2 + 2 * ((v47 + 1 + (((v47 + 1) & 0x8000u) >> 15)) >> 1) + 16);
        v49 = v41 + 24 * v48;
        v50 = HIBYTE(*(v49 + 8 * (v2 != 0)));
        if (v50 == v39)
        {
          sub_10000FB30(result, v2, -v39, v40, v48, v46);
          result = v53;
        }

        else
        {
          result = sub_10000FA14(result, v2, v39, v40, v46);
          v51 = HIBYTE(*(v42 + 8 * (v2 != 0)));
          if (!v50)
          {
            if (v51 != v47)
            {
              sub_1000A4068();
            }

            if (*(v49 + v15 + 7) != v39)
            {
              sub_1000A4094();
            }

            return result;
          }

          if (v51)
          {
            sub_1000A4010();
          }

          result = v53;
          if (*(v49 + v15 + 7))
          {
            sub_1000A403C();
          }
        }
      }

      else
      {
        *(v42 + 8 * (v2 != 0)) = v43 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v43) - v39) << 56);
        if (!v44)
        {
          return result;
        }

        if (v44 != v39)
        {
          sub_1000A40C0();
        }
      }

      v52 = v11--;
    }

    while (v52 > 0);
  }

  return result;
}

void sub_10000DFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F938(a1, a2, 1);
  if (v4 == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (v4)
  {
    log_err("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", "spaceman_fxc_update_smallest_with_successor", 1520, (*(*a1 + 384) + 212), *(a1 + 88), v4);
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }
}

uint64_t spaceman_free_extent_cache_remove(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  if (!a3)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) == 0)
  {
    v6 = (a1 + 1068);
    v35 = 0;
    v7 = sub_10000D284(a1, 0, a2, a3, a1 + 1068);
    if (v7)
    {
LABEL_8:
      v8 = v7;
LABEL_9:
      log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_remove", 2076, (*(*a1 + 384) + 212), *(a1 + 88), v8);
      spaceman_free_extent_cache_reset(a1);
      goto LABEL_10;
    }

    v10 = (a1 + 1166);
    v11 = a3 + a2;
    v12 = 4 * *(a1 + 1165);
    v13 = *(v6 + v12);
    if (*(v6 + v12))
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v20;
    *(a1 + 1262) = *(a1 + 1164);
    v21 = *(a1 + 1084);
    *v10 = *v6;
    *(a1 + 1182) = v21;
    v22 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v22;
    v23 = sub_10000F938(a1, a1 + 1166, -1);
    if (v23 == 2)
    {
      goto LABEL_44;
    }

    v8 = v23;
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = (*(a1 + 80) + 24 * *(v10 + 2 * *(a1 + 1263)));
    v25 = v24[1] & 0xFFFFFFFFFFFFFLL;
    v26 = v25 + (*v24 & 0xFFFFFFFFFFFFFLL);
    if (v26 <= a2)
    {
      goto LABEL_44;
    }

    v7 = sub_10000D3BC(a1, *v24 & 0xFFFFFFFFFFFFFLL, v25, a2 - (*v24 & 0xFFFFFFFFFFFFFLL), *(v10 + 2 * *(a1 + 1263)));
    if (v7)
    {
      goto LABEL_8;
    }

    v27 = v26 - v11;
    if (v26 <= v11)
    {
LABEL_44:
      v32 = sub_10000F938(a1, a1 + 1068, 1);
      if (v32 != 2)
      {
        v8 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        v13 = *(v6 + 2 * *(a1 + 1165));
LABEL_20:
        v14 = (*(a1 + 80) + 24 * v13);
        v15 = *v14;
        v16 = *v14 & 0xFFFFFFFFFFFFFLL;
        v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
        v18 = v17 + v16;
        if (v11 >= v17 + v16)
        {
          while (1)
          {
            sub_10000DC64(a1, a1 + 1068);
            v28 = sub_10000D284(a1, 1u, v16, v17, a1 + 1068);
            if (v28)
            {
              v33 = v28;
              log_err("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", "spaceman_free_extent_cache_remove", 2016, (*(*a1 + 384) + 212), *(a1 + 88), v28);
              v8 = v33;
              goto LABEL_9;
            }

            if (v16 == *(a1 + 112))
            {
              if (v17 != *(a1 + 120))
              {
                sub_1000A4118();
              }

              v29 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v29;
              *(a1 + 1262) = *(a1 + 1164);
              v30 = *(a1 + 1084);
              *v10 = *v6;
              *(a1 + 1182) = v30;
              v31 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v31;
              sub_10000DFE0(a1, a1 + 1166);
            }

            sub_10000DC64(a1, a1 + 1068);
            sub_10000DBCC(a1, v13);
            if (v17 == *(a1 + 128))
            {
              sub_10000E560(a1);
            }

            v8 = sub_10000D284(a1, 0, v16, v17, a1 + 1068);
            if (!v8)
            {
              v8 = sub_10000F938(a1, a1 + 1068, 1);
            }

            if (v8)
            {
              break;
            }

            v13 = *(v6 + 2 * *(a1 + 1165));
            v14 = (*(a1 + 80) + 24 * *(v6 + 2 * *(a1 + 1165)));
            v15 = *v14;
            v16 = *v14 & 0xFFFFFFFFFFFFFLL;
            v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
            v18 = v17 + v16;
            if (v11 < v17 + v16)
            {
              goto LABEL_21;
            }
          }

          if (v8 == 2)
          {
            goto LABEL_48;
          }

          log_err("%s:%d: %s dev %d Failed to get next extent: %d\n", "spaceman_free_extent_cache_remove", 2047, (*(*a1 + 384) + 212), *(a1 + 88), v8);
          goto LABEL_9;
        }

LABEL_21:
        if (v11 > v16)
        {
          if (v16 == *(a1 + 112))
          {
            *(a1 + 112) = v11;
          }

          *v14 = v15 & 0xFFF0000000000000 | v11 & 0xFFFFFFFFFFFFFLL;
          v19 = sub_10000D3BC(a1, v11, v17, v18 - v11, v13);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_10;
          }

          log_err("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", "spaceman_free_extent_cache_remove", 2070, (*(*a1 + 384) + 212), *(a1 + 88), v19);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v35 = 0;
      if (sub_10000DA40(a1, 0, v11, v26 - v11, &v35))
      {
LABEL_32:
        sub_10000D23C(a1, v11, v26 - v11);
        goto LABEL_48;
      }

      if (sub_10000DA40(a1, 1u, v11, v26 - v11, &v35))
      {
        if (!sub_10000DB50(a1, v11, v26 - v11))
        {
          sub_10000DBCC(a1, v35);
        }

        goto LABEL_32;
      }

      v34 = *(a1 + 120);
      if (v27 < v34 || v27 == v34 && v11 > *(a1 + 112))
      {
        *(a1 + 112) = v11;
        *(a1 + 120) = v27;
      }

      if (v27 > *(a1 + 128))
      {
        v8 = 0;
        *(a1 + 128) = v27;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v8;
      }
    }

LABEL_48:
    v8 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_10000E560(uint64_t a1)
{
  v2 = a1 + 676;
  result = sub_10000E5C8(a1, a1 + 676, 1u);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = *(*(a1 + 80) + 24 * *(v2 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v4;
  return result;
}

uint64_t sub_10000E5C8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v5 = *(a1 + 2 * a3 + 104);
  *a2 = v5;
  if (v5)
  {
    if (a3 >= 2)
    {
      sub_1000A3E2C();
    }

    *(a2 + 2) = *(*(a1 + 80) + 24 * v5 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v6 = *(a2 + 97);
    if (!*(a2 + 4 * v6))
    {
      break;
    }

    result = sub_10000F83C(a1, a2, 1);
    if (result)
    {
      return result;
    }
  }

  v8 = v6 - 1;
  *(a2 + 97) = v8;
  return (v8 >> 6) & 2;
}

BOOL spaceman_free_extent_cache_bitmap_scan_begin(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v4 = *(a1 + 280);
  v5 = (v4 & 6) == 0;
  if ((v4 & 6) == 0)
  {
    *(a1 + 280) = v4 | 4;
    v6 = *(a1 + 288);
    if (v6)
    {
      if (a2)
      {
LABEL_9:
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      *(a1 + 288) = 1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    *(a1 + 280) = v4 | 0xC;
LABEL_12:
    if (!*a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (*a1)
  {
LABEL_13:
    pthread_mutex_unlock((a1 + 16));
    return v5;
  }

  return 0;
}

uint64_t spaceman_free_extent_cache_bitmap_scan_finished(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*result)
  {
    result = pthread_mutex_lock((result + 16));
  }

  v7 = *(v5 + 280);
  if ((v7 & 6) != 0)
  {
    if (a3)
    {
      *(v5 + 184) = *(v5 + 136);
      *(v5 + 200) = *(v5 + 152);
      *(v5 + 216) = *(v5 + 168);
      *(v5 + 280) = v7 & 0xFFFFFFFFFFFFFFF3;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      goto LABEL_19;
    }

    if (*(*(v6 + 376) + 48 * *(v5 + 88) + 48) > a2 && ((v8 = *(v5 + 288), (v7 & 8) != 0) || v8 <= a2))
    {
      v9 = 0;
      if (v8 < a2)
      {
        *(v5 + 288) = a2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFFF3;
    v12 = (v5 + 136);
    v11 = *(v5 + 136);
    *(v5 + 280) = v10;
    if (v11)
    {
      v13 = *(v5 + 184) + v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 152);
      v16 = *(v5 + 192) + *(v5 + 144);
      *(v5 + 184) = v13;
      *(v5 + 192) = v16;
      if (v14 < v15)
      {
        *(v5 + 200) = v15;
      }

      v17 = *(v5 + 176);
      if (*(v5 + 224) < v17)
      {
        *(v5 + 224) = v17;
      }

      result = sub_10000E8EC(v5 + 184, *(v5 + 160), *(v5 + 168));
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      *v12 = 0u;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *v12 = 0u;
    if (v9)
    {
LABEL_19:
      v18 = *(v5 + 336) + 1;
      *(v5 + 328) = 0;
      *(v5 + 336) = v18;
      *(v5 + 232) = *(v5 + 184);
      *(v5 + 248) = *(v5 + 200);
      *(v5 + 264) = *(v5 + 216);
      *(v5 + 184) = 0u;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 288) = 0;
      v19 = *(v5 + 280);
      if ((v19 & 1) == 0)
      {
        *(v5 + 280) = v19 | 1;
      }
    }
  }

LABEL_21:
  if (*v5)
  {

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t sub_10000E8EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (v3 <= a2)
    {
      v4 = *(result + 32);
    }

    else
    {
      v4 = v3 - a2 + *(result + 32);
      *(result + 24) = a2;
      *(result + 32) = v4;
      v3 = a2;
    }

    v5 = v4 + v3;
    if (a3 + a2 > v5)
    {
      *(result + 32) = v4 + a3 + a2 - v5;
    }
  }

  else
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

unint64_t spaceman_free_extent_cache_search_better_length(__int16 a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0x1000) == 0)
  {
    return a2;
  }

  if (a3 <= 1)
  {
    return a3 + 1;
  }

  if (a3 + (a3 >> 1) >= a2)
  {
    return a2;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

uint64_t spaceman_free_extent_cache_search(uint64_t a1, uint64_t a2, int64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 6;
  }

  ++*(a1 + 344);
  if (!v5)
  {
    ++*(a1 + 352);
    return 22;
  }

  v10 = *(*a1 + 376);
  v11 = *(v10 + 1248);
  if (v11 && !*(a1 + 88))
  {
    v13 = *(v10 + 1240);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v75 = 0;
  v76[0] = 0;
  v71 = 0;
  v72 = 0;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 280) & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 16));
    }

    return 6;
  }

  v15 = (a1 + 1068);
  v73 = 0;
  v74 = 0;
  v69 = 0;
  v70 = 0;
  v16 = sub_10000D284(a1, 1u, v4, v5, a1 + 1068);
  if (!v16)
  {
    if (*(v15 + 2 * *(a1 + 1165)))
    {
      v17 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
      v74 = *v17 & 0xFFFFFFFFFFFFFLL;
      v18 = v17[1] & 0xFFFFFFFFFFFFFLL;
      v70 = v18;
      if (v74 != v4)
      {
        sub_1000A4144();
      }

      if (v18 != v5)
      {
        sub_1000A4170();
      }

      v19 = v4;
      v20 = v5;
      if (v12 && (spaceman_clip_extent(v4, v5, v13, v11, a2, v4, &v74, &v70), v20 = v70, v19 = v74, !v70))
      {
        v22 = 0;
      }

      else
      {
        v21 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v19, v20, a2, v4, &v73, &v69);
        v19 = v74;
        v22 = v70;
        if (v21)
        {
          v75 = v74;
          v71 = v70;
          v19 = v73;
          v74 = v73;
          v22 = v69;
          v70 = v69;
        }
      }

      v76[0] = v19;
      v72 = v22;
      if (v22 == v5)
      {
        goto LABEL_22;
      }
    }

    v27 = v12;
    v28 = v13;
    v29 = (a1 + 1166);
    v30 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v30;
    *(a1 + 1262) = *(a1 + 1164);
    v31 = *(a1 + 1084);
    *(a1 + 1166) = *v15;
    *(a1 + 1182) = v31;
    v32 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v32;
    v68 = v27;
    v16 = sub_10000F098(a1, a1 + 1166, v27, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x301u);
    if (!v16)
    {
      v33 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v33;
      *(a1 + 1262) = *(a1 + 1164);
      v34 = *(a1 + 1084);
      *v29 = *v15;
      *(a1 + 1182) = v34;
      v35 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v35;
      v16 = sub_10000F098(a1, a1 + 1166, v68, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x502u);
      if (!v16)
      {
        v67 = v28;
        v39 = v71;
        if (v72 >= v5)
        {
          v41 = v71;
          v39 = v72;
          v40 = v68;
        }

        else
        {
          v40 = v68;
          if (v71 <= v72)
          {
            v41 = v71;
            v39 = v72;
          }

          else
          {
            v41 = 0;
            v42 = v75;
            v75 = 0;
            v76[0] = v42;
            v71 = 0;
            v72 = v39;
            a2 = a2 & 0xFFFFDFFF;
          }
        }

        if (v39 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_22;
        }

        if (v4 <= v76[0])
        {
          v45 = v76[0] - v4;
        }

        else
        {
          if (v4 - v76[0] < v39)
          {
            goto LABEL_22;
          }

          v45 = v4 - (v39 + v76[0]);
        }

        if (!v45)
        {
          goto LABEL_22;
        }

        v61 = v41;
        v64 = v76[0];
        v65 = v39;
        v66 = v45;
        v16 = sub_10000D284(a1, 0, v4, v5, a1 + 1068);
        if (!v16)
        {
          if (*(v15 + 2 * *(a1 + 1165)))
          {
            v46 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
            v47 = *v46 & 0xFFFFFFFFFFFFFLL;
            v74 = v47;
            v48 = v46[1];
            v49 = v48 & 0xFFFFFFFFFFFFFLL;
            v70 = v48 & 0xFFFFFFFFFFFFFLL;
            if (v40)
            {
              spaceman_clip_extent(v47, v48 & 0xFFFFFFFFFFFFFLL, v67, v11, a2, v4, &v74, &v70);
              v49 = v70;
              v47 = v74;
            }

            if (v49)
            {
              v50 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v47, v49, a2, v4, &v73, &v69);
              v47 = v74;
              v51 = v70;
              if (v50)
              {
                v52 = v61;
                v59 = v74;
                v62 = v70;
                if (sub_10000F374(v4, v5, v75, v52, v74, v70, a2))
                {
                  v75 = v59;
                  v71 = v62;
                }

                v47 = v73;
                v74 = v73;
                v51 = v69;
                v70 = v69;
              }
            }

            else
            {
              v51 = 0;
            }

            v60 = v47;
            v63 = v51;
            if (sub_10000F374(v4, v5, v64, v65, v47, v51, a2))
            {
              v76[0] = v60;
              v72 = v63;
              goto LABEL_22;
            }
          }

          v53 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v53;
          *(a1 + 1262) = *(a1 + 1164);
          v54 = *(a1 + 1084);
          *v29 = *v15;
          *(a1 + 1182) = v54;
          v55 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v55;
          v16 = sub_10000F098(a1, a1 + 1166, v40, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1802u);
          if (!v16)
          {
            v56 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v56;
            *(a1 + 1262) = *(a1 + 1164);
            v57 = *(a1 + 1084);
            *v29 = *v15;
            *(a1 + 1182) = v57;
            v58 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v58;
            v16 = sub_10000F098(a1, a1 + 1166, v68, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1801u);
            if (!v16)
            {
LABEL_22:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 16));
              }

              v23 = v72;
              if (!v72 && v71)
              {
                v76[0] = v75;
                v23 = v71;
              }

              v24 = v23 - v5;
              if (v23 > v5)
              {
                v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v25.i64[1] = v23 - v5;
                *(a1 + 360) = vaddq_s64(*(a1 + 360), v25);
                if (v24 == 1)
                {
                  result = 0;
                  v26 = 400;
                }

                else if (v24 >= 8)
                {
                  result = 0;
                  v43 = v24 >= 0x10;
                  v26 = 376;
                  if (!v43)
                  {
                    v26 = 384;
                  }
                }

                else
                {
                  result = 0;
                  v26 = 392;
                }

                goto LABEL_57;
              }

              if (v23 >= v5)
              {
                result = 0;
                v26 = 408;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = 28;
                }

                if (sub_10000F520(a1, a2, v5, v23))
                {
                  result = 3;
                }

                else
                {
                  result = v38;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v76[0] = 0;
LABEL_80:
                  v44 = 424;
                  goto LABEL_58;
                }

                if (!v23)
                {
                  v5 = 0;
                  if (result)
                  {
                    result = result;
                  }

                  else
                  {
                    result = 28;
                  }

                  goto LABEL_80;
                }

                v26 = 416;
              }

              v5 = v23;
LABEL_57:
              ++*(a1 + v26);
              v44 = 352;
LABEL_58:
              ++*(a1 + v44);
              *a3 = v76[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  v37 = "main";
  if (v36 == 1)
  {
    v37 = "tier2";
  }

  log_err("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", "spaceman_free_extent_cache_search", 3031, (*(*a1 + 384) + 212), v36, v37, v16);
  spaceman_free_extent_cache_reset(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 3;
}

uint64_t sub_10000F098(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v17 = a6;
  v19 = a2;
  v20 = a1;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  v15 = sub_10000F938(a1, a2, v21);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v36 = a5;
    v23 = 0;
    v39 = v21;
    v41 = v17;
    v37 = v20;
    v38 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v24 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v25 = *v24 & 0xFFFFFFFFFFFFFLL;
      v47 = v25;
      v26 = v24[1] & 0xFFFFFFFFFFFFFLL;
      v45 = v26;
      if (a3)
      {
        spaceman_clip_extent(v25, v26, a4, v36, v17, a7, &v47, &v45);
        v27 = v45;
        if (!v45)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v26;
        if (!v26)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v23 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v28 = spaceman_clip_extent_to_zones(*v20, *(v20 + 8), *(v20 + 88), v47, v27, v17, a7, &v46, &v44);
      v29 = v47;
      v30 = v45;
      if (v28)
      {
        if (sub_10000F374(a7, a8, *a12, *a13, v47, v45, v17))
        {
          *a12 = v29;
          *a13 = v30;
        }

        v29 = v46;
        v47 = v46;
        v30 = v44;
        v45 = v44;
      }

      v31 = *a11;
      if (sub_10000F374(a7, a8, *a10, *a11, v29, v30, v41))
      {
        *a10 = v29;
        *a11 = v30;
        v31 = v30;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v32 = v26 == a8 && v30 == v26;
      v33 = v32;
      if ((*&v33 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v31 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v26 < a8 && v26 <= v31)
      {
        return v15;
      }

      v17 = v41;
      v20 = v37;
      v19 = v38;
      if ((a14 & 0x1000) != 0)
      {
        if (v23 > 0x7E)
        {
          return v15;
        }

        v35 = v29 - a7;
        if (v29 < a7)
        {
          if (a7 - v29 >= v30)
          {
            v35 = a7 - (v29 + v30);
          }

          else
          {
            v35 = 0;
          }
        }

        if (v35 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = sub_10000F938(v20, v19, v39);
      ++v23;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL sub_10000F374(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 < a2)
  {
    if (a6 <= a4)
    {
      if (a6 != a4 || (a7 & 0x4000) == 0)
      {
        return 0;
      }

      if (a1 <= a3)
      {
        v9 = a3 - a1;
      }

      else
      {
        v9 = a1 - a3 >= a6 ? a1 - (a3 + a6) : 0;
      }

      if (a1 <= a5)
      {
        v12 = a5 - a1;
      }

      else
      {
        v12 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
      }

      if (v12 >= v9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a4 != a2)
  {
    v10 = a4 - a2;
    if (a4 > a2)
    {
      v11 = a6 - a2;
      if (a6 >= a2)
      {
        if (a6 == a2 || v10 <= 0xF && v11 > v10)
        {
          return 1;
        }

        if ((a7 & 0x4000) != 0)
        {
          if (a1 <= a3)
          {
            v14 = a3 - a1;
          }

          else if (a1 - a3 >= a4)
          {
            v14 = a1 - (a3 + a4);
          }

          else
          {
            v14 = 0;
          }

          if (a1 <= a5)
          {
            v15 = a5 - a1;
          }

          else if (a1 - a5 >= a6)
          {
            v15 = a1 - (a5 + a6);
          }

          else
          {
            v15 = 0;
          }

          return v11 >= 0x10 && v15 < v14;
        }

        if (v11 < v10 && v11 > 0xF)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a6 < a4 || a6 != a4 && (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v8 = a3 - a1;
  }

  else
  {
    v8 = a1 - a3 >= a4 ? a1 - (a3 + a4) : 0;
  }

  if (a1 <= a5)
  {
    v13 = a5 - a1;
  }

  else
  {
    v13 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
  }

  if (v13 >= v8)
  {
    return 0;
  }

  result = 1;
  if (a6 != a4 && a6 - a4 <= 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10000F520(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
{
  v8 = a3;
  if ((a2 & 0x1000) != 0)
  {
    if (a4 > 1)
    {
      v8 = a4 + (a4 >> 1);
      if (v8 >= a3)
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a4 + 1;
    }
  }

  v42 = v8;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  if (*(a1 + 152) > v9)
  {
    v9 = *(a1 + 152);
  }

  v12 = *(a1 + 168);
  if (v10)
  {
    v14 = v10 - v11;
    v13 = v10 <= v11;
    v15 = v12 + v11;
    if (v10 < v11)
    {
      v11 = *(a1 + 208);
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 216) + v16;
    if (v15 > v17 + v11)
    {
      v12 = v15 - v11;
    }

    else
    {
      v12 = v17;
    }
  }

  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v21 = *(a1 + 184);
  v20 = *(a1 + 192);
  v23 = *(a1 + 248);
  v22 = *(a1 + 256);
  if (v9 <= v23)
  {
    v24 = *(a1 + 248);
  }

  else
  {
    v24 = v9;
  }

  v25 = calc_overlap_range(v22, *(a1 + 264), v11, v12, 0);
  v26 = *(a1 + 96);
  v27 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 72);
  if (v26 == v27)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_52:
    *(a1 + 440) = 0;
    result = 1;
    v29 = 448;
    goto LABEL_53;
  }

  v30 = v20 + v19;
  if (!v26 && v27 && v30 + *(a1 + 240))
  {
    v41 = 456;
    goto LABEL_51;
  }

  if ((a2 & 0x1000) == 0 || a4 <= (3 * a3) >> 2)
  {
    if (v24 >= v42)
    {
      v41 = 464;
      goto LABEL_51;
    }

    if (v24 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v24;
    }

    if (v42 <= *(a1 + 240) + v30 + v31 + v31 * (v18 + v21 + *(a1 + 232)))
    {
      v32 = *(a1 + 94);
      v33 = *(a1 + 88) >> 8;
      v34 = v33 - 1;
      v35 = v33 - v32;
      if (v35 <= 4)
      {
        LODWORD(v36) = v35 + 4;
      }

      else
      {
        LODWORD(v36) = 8;
      }

      v36 = v36;
      if (v34 <= v32)
      {
        v36 = 4;
      }

      v37 = (64 - v42) >> 4;
      if (v42 >= 0x40)
      {
        v37 = 0;
      }

      v38 = v36 + v37 + (*(a1 + 440) >> 14);
      if (v34 / 10 <= v32)
      {
        v39 = *(a1 + 128);
        if (v39 < *(a1 + 328))
        {
          v40 = *(a1 + 176);
          if (v40 <= *(a1 + 224))
          {
            v40 = *(a1 + 224);
          }

          if (v40 >= *(a1 + 248) && v39 - *(a1 + 120) < 4)
          {
            v38 = 1;
          }
        }
      }

      if (v30 > (v12 - v25 + *(a1 + 264)) / v38)
      {
        v41 = 472;
LABEL_51:
        ++*(a1 + v41);
        goto LABEL_52;
      }
    }
  }

LABEL_21:
  result = 0;
  ++*(a1 + 440);
  v29 = 432;
LABEL_53:
  ++*(a1 + v29);
  return result;
}

uint64_t sub_10000F7A8(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *a2 = v4;
  if (v4)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v4 + 7);
  }

  while (1)
  {
    v5 = *(a2 + 97);
    if (!*(a2 + 4 * v5))
    {
      break;
    }

    result = sub_10000F83C(a1, a2, -1);
    if (result)
    {
      return result;
    }
  }

  v7 = v5 - 1;
  *(a2 + 97) = v7;
  return (v7 >> 6) & 2;
}

uint64_t sub_10000F83C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a2 + 97);
  v4 = (a2 + 4 * *(a2 + 97));
  *(v4 + 3) = a3;
  if (v3 < 23)
  {
    v7 = v3 + 1;
    *(a2 + 97) = v3 + 1;
    v8 = *(a1 + 80);
    v9 = *v4;
    v10 = *(a2 + 96);
    v11 = *(v8 + 24 * v9 + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16);
    v12 = a2 + 4 * v7;
    *v12 = v11;
    *(v12 + 3) = 0;
    if (v11)
    {
      if (v10 >= 2)
      {
        sub_1000A3E2C();
      }

      v13 = *(v8 + 24 * v11 + 8 * (v10 != 0) + 7);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *(v12 + 2) = v13;
  }

  else
  {
    v5 = "length";
    if (!*(a2 + 96))
    {
      v5 = "paddr";
    }

    log_err("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", "spaceman_fxtp_add_child", 752, (*(*a1 + 384) + 212), *(a1 + 88), v5, v3);
    return 84;
  }

  return result;
}

uint64_t sub_10000F938(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = -a3;
  v5 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v5) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v6 = a1;
    while (1)
    {
      result = sub_10000F83C(a1, a2, a3);
      if (result)
      {
        break;
      }

      v8 = *(v3 + 97);
      if (!*(v3 + 4 * v8))
      {
        v13 = v8 - 1;
        *(v3 + 97) = v13;
        v11 = (v3 + 4 * v13 + 3);
        goto LABEL_12;
      }

      a1 = v6;
      a2 = v3;
      a3 = v4;
    }
  }

  else
  {
    LODWORD(v5) = v5;
    do
    {
      v9 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v9)
      {
        return 2;
      }

      v10 = a2 + 4 * v5;
      v12 = *(v10 + 3);
      v11 = (v10 + 3);
    }

    while (v12 != v4);
    *(a2 + 97) = v5;
LABEL_12:
    result = 0;
    *v11 = 0;
  }

  return result;
}

uint64_t sub_10000FA14(uint64_t result, unsigned int a2, int a3, unsigned int a4, _WORD *a5)
{
  if (!a4)
  {
    sub_1000A41C8();
  }

  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 16;
  v7 = ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v8 = *(v6 + 2 * v7);
  if (!*(v6 + 2 * v7))
  {
    sub_1000A419C();
  }

  v9 = v5 + 24 * *(v6 + 2 * v7) + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 2 * v7) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v8;
  if (a2 >= 2)
  {
    sub_1000A3E2C();
  }

  v10 = v5 + 24 * v8;
  if (*(v10 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v13 = *(v10 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v5 + 24 * a4;
    v12 = *(v11 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v11 + 8 * (a2 != 0)) = v12 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v13 = *(v10 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v11 + 8 * (a2 != 0)) = v12 | 0xFF00000000000000;
      v13 = *(v10 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v10 + 8 * (a2 != 0)) = v13;
  return result;
}

uint64_t sub_10000FB30(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  if (!a4)
  {
    sub_1000A4278();
  }

  if (!a5)
  {
    sub_1000A424C();
  }

  v6 = -a3;
  v7 = *(a1 + 80);
  v8 = v7 + 24 * a5 + 4 * a2 + 16;
  v9 = ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v10 = *(v8 + 2 * v9);
  if (!*(v8 + 2 * v9))
  {
    sub_1000A4220();
  }

  v11 = v7 + 24 * *(v8 + 2 * v9) + 4 * a2 + 16;
  v12 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v13 = v12 >> 1;
  v14 = (v12 >> 1);
  result = *(v11 + 2 * v14);
  *(v8 + 2 * v9) = result;
  *(v11 + 2 * v14) = a5;
  *(v7 + 24 * a4 + 4 * a2 + 2 * v13 + 16) = *(v11 + 2 * v9);
  *(v11 + 2 * v9) = a4;
  *a6 = v10;
  if (a2 >= 2)
  {
    sub_1000A3E2C();
  }

  v16 = v7 + 24 * v10;
  v17 = 8 * (a2 != 0);
  v18 = HIBYTE(*(v16 + v17));
  if (v18 == a3)
  {
    *(v7 + 24 * a4 + v17 + 7) = v6;
    v19 = v7 + 24 * a5;
LABEL_9:
    *(v19 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    goto LABEL_12;
  }

  if (!v18)
  {
    *(v7 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v19 = v7 + 24 * a5;
    goto LABEL_9;
  }

  if (v18 != v6)
  {
    sub_1000A41F4();
  }

  *(v7 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  *(v7 + 24 * a5 + v17 + 7) = a3;
LABEL_12:
  *(v16 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

uint64_t xf_init(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = _apfs_malloc_typed(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = _apfs_malloc_typed((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t xf_init_with_blob(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
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
  *(a1 + 1) = _apfs_malloc_typed(4 * v6, 0x100004052888210uLL);
  v14 = _apfs_malloc_typed(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    _apfs_free(v15, 4 * v16);
    _apfs_free(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = a2 + 2;
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t xf_get_from_blob(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
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

uint64_t xf_set_in_blob(unsigned __int16 *a1, unint64_t a2, int a3, const void *a4, int a5)
{
  v9 = 0;
  __dst = 0;
  result = xf_get_from_blob(a1, a2, a3, 0, &__dst, &v9);
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

uint64_t xf_deep_copy(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 2))
  {
    v4 = _apfs_malloc_typed(a2[3], 0x3B1F33ADuLL);
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

  v6 = _apfs_malloc_typed(4 * a2[1], 0x100004052888210uLL);
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

  _apfs_free(v5, a2[3]);
  return 12;
}

uint64_t xf_release(uint64_t a1)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t xf_serialize(unsigned __int16 *a1, _WORD *a2, unint64_t a3)
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

uint64_t xf_set(unsigned __int16 *a1, int a2, char a3, void *__src, size_t __n)
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

      if (!sub_1000103A0(a1, __n))
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
    v27 = _apfs_realloc_typed(*(a1 + 1), 4 * v25, (4 * (v25 + 4)), 0x100004052888210uLL);
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
    if (sub_1000103A0(a1, __n))
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

uint64_t sub_1000103A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 6);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3;
  v5 = _apfs_realloc_typed(*(a1 + 16), v3, v4, 0x669DD06FuLL);
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

uint64_t xf_get(unsigned __int16 *a1, int a2, _DWORD *a3, char *__dst, size_t __n)
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

uint64_t xf_get_ptr_and_size(unsigned __int16 *a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
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

uint64_t xf_remove(unsigned __int16 *a1, int a2)
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

uint64_t tx_mgr_init(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = _apfs_calloc_typed(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
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
    inited = new_lock(v7);
    if (!inited)
    {
      v11 = new_cv((v8 + 256));
      if (v11)
      {
        v10 = v11;
        free_lock(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (inited = tx_mgr_init_tx(v8, v6), !inited))
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

    v10 = inited;
LABEL_7:
    _apfs_free(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t tx_mgr_init_tx(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = _apfs_calloc_typed(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = _apfs_malloc_typed(v3, 0x256D25E1uLL);
    v7[8] = _apfs_malloc_typed(v3, 0x60A3118CuLL);
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
      _apfs_free(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      _apfs_free(v14, v3);
    }

    _apfs_free(v15, 120);
  }

  return 12;
}

void tx_mgr_free_tx(uint64_t result, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    log_err("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(result + 384) + 212), *(v6 + 16));
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
    log_err("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(result + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
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
        _apfs_free(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        _apfs_free(v17, a3);
      }

      _apfs_free(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void tx_mgr_destroy(uint64_t a1, pthread_mutex_t *a2, unsigned int a3)
{
  tx_mgr_free_tx(a1, a2, a3);
  free_lock(a2);
  free_cv(&a2[4]);

  _apfs_free(a2, 304);
}

BOOL xid_is_current_tx(uint64_t a1, uint64_t a2)
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

uint64_t tx_checkpoint_desc_zero(void *a1, int a2)
{
  v4 = a1[50];
  v5 = *(a1[47] + 36);
  v6 = _apfs_calloc_typed(1uLL, v5, 0x7BA1CA01uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v12 = 0;
  if (a2)
  {
    v8 = *(v4 + 96);
    while (1)
    {
      v12 = -1;
      v9 = nx_checkpoint_desc_block_address(a1, v8, &v12);
      if (v9)
      {
        break;
      }

      v9 = dev_write(a1[48]);
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
    log_err("%s:%d: %s failed to zero checkpoint descriptor block %d @ %lld: %d\n", "tx_checkpoint_desc_zero", 392, (a1[48] + 212), *(v4 + 96), v12, v9);
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  _apfs_free(v7, v5);
  return v10;
}

uint64_t tx_checkpoint_space_check(uint64_t a1, uint64_t a2, int a3)
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

    sub_100010CC8(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    log_err("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t sub_100010CC8(uint64_t a1, char a2, int a3)
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

  v7 = dev_barrier(*(a1 + 384));
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
          v21.tv_sec = 0;
          v21.tv_nsec = 0;
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

          spaceman_tx_complete(a1, v14);
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
          cv_wakeup((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t tx_checkpoint_write_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = tx_checkpoint_space_check(a1, a2, v5);
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
      obj_checksum_set(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t tx_checkpoint_write(void *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v41 = 0;
  v39 = 0;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    obj_checksum_set_phys(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = dev_write(a1[48]);
    if (v12)
    {
      v13 = v12;
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v13;
    }

    v14 = (*(a2 + 40) + v8[24]) % v8[22];
    v41 = -1;
    v15 = nx_checkpoint_desc_block_address(a1, v14, &v41);
    if (v15)
    {
      v13 = v15;
      if (!v8[19])
      {
        log_err("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v13;
    }

    bzero(*(a2 + 64), v9);
    v16 = *(a2 + 64);
    *(v16 + 24) = 1073741836;
    v17 = *(a2 + 16);
    *(v16 + 8) = v41;
    *(v16 + 16) = v17;
    ++*(a2 + 40);
  }

  v18 = (*(a2 + 48) + v8[25]) % v8[23];
  v40 = -1;
  v19 = nx_checkpoint_data_block_address(a1, v18, &v40, &v39);
  if (v19)
  {
    v13 = v19;
    if (!v8[19])
    {
      log_err("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
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

    v38 = *(a3 + 64);
    *(a3 + 128) = v40;
    v37 = v20;
    if (v20 < 1)
    {
LABEL_27:
      if (v38 == *(a3 + 56))
      {
        v26 = 0;
      }

      else
      {
        v26 = v38;
      }

      *(a3 + 64) = 0;
      v27 = a1[49];
      v28 = *(v27 + 872);
      if (v28 != a3)
      {
        sub_1000A42A4();
      }

      v29 = *(v28 + 104);
      *(v27 + 872) = v29;
      if (!v29)
      {
        *(v27 + 880) = v27 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v30 = *(a2 + 64);
      v31 = *(v30 + 36);
      v32 = v30 + 40 * v31;
      *(v32 + 40) = *(a3 + 36);
      *(v32 + 48) = *(a3 + 48);
      v33 = *(a3 + 8);
      if (v33)
      {
        v33 = obj_oid(v33);
        v30 = *(a2 + 64);
        v31 = *(v30 + 36);
      }

      v34 = (v30 + 40 * v31);
      v35 = *(a3 + 112);
      v34[7] = v33;
      v34[8] = v35;
      v34[9] = *(a3 + 128);
      *(v30 + 36) = v31 + 1;
      *(a2 + 48) += v37;
      if (v26)
      {
        fs_obj_zfree_oc(v26, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v22 = v38;
      v23 = v37;
      while (1)
      {
        v24 = v39 >= v23 ? v23 : v39;
        v25 = dev_write(a1[48]);
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
        v25 = nx_checkpoint_data_block_address(a1, v18, &v40, &v39);
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
        log_err("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v13;
}

uint64_t tx_barrier(uint64_t a1, char a2)
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
  v8 = sub_100010CC8(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

void tx_unmount(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  v3 = *(v2 + 72);
  if (v3)
  {
    sub_1000A42D0();
  }

  *(v2 + 72) = v3 | 1;
  pthread_mutex_unlock(v2);
  while (1)
  {
    v4 = tx_finish(a1, 8);
    if (v4 != 16)
    {
      break;
    }

    log_debug("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (v4)
  {
    log_err("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), v4);
    if (*(a1 + 629))
    {
      return;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v5 = sub_100010CC8(a1, 16, 0);
      if (v5)
      {
        log_err("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v5);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v8 = *(a1 + 376);
        if (*(v8 + 140))
        {
          if (*(v8 + 148))
          {
            *(v8 + 1264) |= 2uLL;
          }
        }
      }

      obj_checksum_set(a1, v6, v7);
      v9 = dev_write(*(a1 + 384));
      if (v9)
      {
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v9);
      }

      v10 = sub_100010CC8(a1, 16, 0);
      if (v10)
      {
        log_err("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v10);
      }
    }
  }

  pthread_mutex_unlock(v2);
}

uint64_t tx_finish(uint64_t a1, __int16 a2)
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
        cv_wakeup((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_66;
        }
      }

      cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
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

          goto LABEL_66;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_66:
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
          v2 = sub_100010CC8(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_66;
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
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        sub_1000A42FC();
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFEDFFFC | ((a2 & 1) << 17) & 0xFFEFFFFC | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
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
        v12 = sub_100011F08(v7, 2, 4);
        v13 = v12;
        if (v12 > 0xF4240)
        {
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v12);
        }

        *(v5 + 248) = (*(v5 + 248) + v13) >> 1;
      }

      v2 = sub_100011FB4(a1);
      if (!v2)
      {
        v14 = *(v5 + 72);
        if ((v14 & 0x40) != 0)
        {
          *(v5 + 72) = v14 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_68:
            pthread_mutex_unlock(v5);
            return 35;
          }

          cv_wakeup((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v15 = 126;
      }

      else
      {
        v15 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v15) == 0)
        {
          break;
        }

        if (!v2)
        {
          cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v16 = *(v5 + 72);
        if (a2 & 8) == 0 && (v16)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v16 & 4) == 0)
        {
          goto LABEL_68;
        }
      }

      while (!*(v5 + 76));
      v17 = **(*(v5 + 136) + 8);
      if (!v17 || (v2 = *(v17 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_66;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_10001196C(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_38:
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

    goto LABEL_16;
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
LABEL_16:
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
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
          goto LABEL_70;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_21:
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

          goto LABEL_37;
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
            goto LABEL_43;
          }

LABEL_41:
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
                    __tp.tv_sec = 0;
                    __tp.tv_nsec = 0;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v26 = 1000000 * (__tp.tv_sec - tv_sec) - v32 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v26;
                    if (v26 > 0xF4240 && nx_ratelimit_log_allowed(a1))
                    {
                      log_warn("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v26, *(v9 + 16), v15);
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

LABEL_85:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                spaceman_manage_free_queues(a1, v9);
              }

              return 0;
            }

LABEL_83:
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
              log_debug("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              cv_wait((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_59:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_41;
              }

LABEL_43:
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
            obj_checksum_set(a1, v13, v14);
            v25 = dev_write(*(a1 + 384));
            if (v25)
            {
              v3 = v25;
              log_err("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v25);
              v9 = *(v7 + 144);
LABEL_53:
              log_err("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_59;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
          }

          else if (v3)
          {
            goto LABEL_53;
          }

          if (v24)
          {
            sub_1000A42FC();
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          cv_wakeup((v7 + 256));
          v3 = 0;
          v34 = 1;
          goto LABEL_59;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_70:
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
              goto LABEL_79;
            }
          }

          else if (v9)
          {
LABEL_79:
            v30 = *(v9 + 52);
            if (v30)
            {
              v3 = v30;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_83;
          }

          v3 = 5;
          goto LABEL_83;
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
        goto LABEL_21;
      }

      v15 = v16;
LABEL_37:
      cv_wait((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_38;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    if ((*(v9 + 24) & 0xF) == 0)
    {
      sub_1000A4328();
    }

    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_85;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_100011F08(uint64_t a1, int a2, int a3)
{
  if (a2 && (*(a1 + 24) & a2) == 0)
  {
    sub_1000A4354();
  }

  v4 = *(a1 + 24);
  if (a3 && (v4 & a3) != 0)
  {
    sub_1000A42FC();
  }

  *(a1 + 24) = v4 & ~a2 | a3;
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
  v5 = 1000000 * v7.tv_sec + SLODWORD(v7.tv_nsec) / 1000;
  result = v5 - *(a1 + 72);
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_100011FB4(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    cv_wait((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
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

  if ((v5 & 0x14) == 0 || (v6 = sub_1000123C0(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_1000123C0(a1, v7);
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
    cv_wakeup((v2 + 256));
  }

  return v6;
}

uint64_t tx_leave(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if (*(v8 + 16) != a2)
    {
      sub_1000A4380();
    }

    v9 = *(v8 + 24);
    if ((v9 & 3) == 0)
    {
      sub_1000A4404();
    }

    if ((a3 & 5) == 1)
    {
      sub_1000A43D8();
    }

    if (v9)
    {
      if ((a3 & 4) != 0)
      {
        v10 = 0;
        ++*(v7 + 176);
      }

      else
      {
        v10 = *(v8 + 32) <= 0x186A0u && !obj_cache_tx_start_closing(*(a1 + 392)) && !spaceman_tx_start_closing(a1);
      }

      if ((*(v7 + 72) & 0x40) != 0)
      {
        if (!v10)
        {
          *(v8 + 24) |= 0x100000u;
        }
      }

      else
      {
        v11 = *(v8 + 24);
        if ((v11 & 0x100000) != 0)
        {
          v11 &= ~0x100000u;
          *(v8 + 24) = v11;
        }

        else if (v10)
        {
          goto LABEL_22;
        }

        if ((v11 & 1) == 0)
        {
          sub_1000A4354();
        }

        if ((v11 & 2) != 0)
        {
          sub_1000A42FC();
        }

        *(v8 + 24) = v11 & 0xFFEFFFFC | 2;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      }
    }

LABEL_22:
    if ((a3 & 5) == 5)
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_24:
        if ((a3 & 0x20) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((a3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
LABEL_26:
      v12 = *(v8 + 28);
      if (!v12)
      {
        sub_1000A43AC();
      }

      v13 = v12 - 1;
      *(v8 + 28) = v13;
      if (!v13 && (v14 = *(v8 + 24), (v14 & 2) != 0))
      {
        if ((v14 & 4) != 0)
        {
          sub_1000A42FC();
        }

        *(v8 + 24) = v14 & 0xFFFFFFF9 | 4;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v17 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v18 = v17 - *(v8 + 72);
        *(v8 + 72) = v17;
        if (v18 > 0xF4240)
        {
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v18);
        }

        *(v7 + 248) = (*(v7 + 248) + v18) >> 1;
        v3 = sub_100011FB4(a1);
        if ((a3 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v3 = 0;
        if ((a3 & 1) == 0)
        {
LABEL_39:
          pthread_mutex_unlock(v7);
          return v3;
        }
      }

      if ((a3 & 4) != 0)
      {
        v15 = 127;
      }

      else
      {
        v15 = 63;
      }

      do
      {
        if (*(v8 + 16) != a2 || (*(v8 + 24) & v15) == 0)
        {
          break;
        }

        if (!v3)
        {
          cv_wait((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
        }
      }

      while (!*(v7 + 76));
      v3 = *(v8 + 52);
      goto LABEL_39;
    }

LABEL_25:
    *(v8 + 24) |= 0x80000u;
    goto LABEL_26;
  }

  return 30;
}

uint64_t sub_1000123C0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v95 = 0;
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
      sub_1000A4354();
    }

    if ((v7 & 8) != 0)
    {
      sub_1000A42FC();
    }

    *(a2 + 24) = v7 & 0xFFFFFFE3 | 8;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      log_warn("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = obj_cache_flush_prepare(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        log_err("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_21;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        sub_1000A4354();
      }

      if ((v20 & 0x10) != 0)
      {
        sub_1000A42FC();
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v95 = -1;
      v35 = nx_checkpoint_desc_block_address(a1, *(*(a1 + 376) + 128), &v95);
      if (v35)
      {
        v12 = v35;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v35);
        }

        v13 = 890;
        goto LABEL_21;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v49 = *(a2 + 64);
      *(v49 + 24) = 1073741836;
      *(v49 + 8) = v95;
      *(v49 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = nx_checkpoint_traverse(a1, a2, 1);
      if (v12)
      {
        goto LABEL_22;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v51 = tx_checkpoint_write_prepare(a1, a2, i);
          if (v51)
          {
            v12 = v51;
            if (!*(v4 + 76))
            {
              log_err("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v51);
            }

            v13 = 918;
LABEL_21:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_22:
            obj_cache_flush_unprepare(v5);
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
                obj_checkpoint_done(v14);
                obj_release(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                obj_checkpoint_done(j);
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
              sub_1000A4354();
            }

            if (v19)
            {
              sub_1000A42FC();
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0;
            __tp.tv_nsec = 0;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_58;
          }

          obj_retain_ephemeral_no_ref(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            log_warn("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v52 = *(v4 + 96);
      *(a2 + 112) = -1;
      v53 = (*(a2 + 40) + v52) % *(v4 + 88);
      v54 = nx_checkpoint_desc_block_address(a1, v53, (a2 + 112));
      if (v54)
      {
        v12 = v54;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v53, v54);
        }

        v13 = 939;
        goto LABEL_21;
      }

      ++*(a2 + 40);
      v64 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v64)
      {
        log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v64);
      }

      v65 = *(a1 + 376);
      *(v65 + 88) = *(v5 + 400);
      *(v65 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v65, *(v65 + 36));
      v68 = *(a2 + 16);
      v69 = *(a2 + 56);
      *(v69 + 16) = v68;
      v70 = *(v4 + 96);
      *(v69 + 136) = v70;
      v71 = *(v4 + 100);
      *(v69 + 144) = v71;
      v72 = *(a2 + 40);
      *(v69 + 140) = v72;
      v73 = *(a2 + 48);
      *(v69 + 148) = v73;
      v74 = *(v4 + 88);
      v75 = *(v4 + 92);
      v76 = (v72 + v70) % v74;
      if (!*(v4 + 76))
      {
        if (v72 <= v74 >> 2)
        {
          v78 = *(v4 + 92);
          v77 = v73;
        }

        else
        {
          log_err("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v68, v72, v74 >> 2);
          v77 = *(a2 + 48);
          v78 = *(v4 + 92);
        }

        if (v77 > v78 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v77, v78 >> 2);
          v77 = *(a2 + 48);
        }

        v86 = *(v5 + 928) - 1;
        if (v77 != v86)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v77, v86);
        }
      }

      v87 = *(a2 + 56);
      v88 = *(v87 + 136);
      v89 = v76;
      if (v76 <= v88)
      {
        v89 = *(v4 + 88) + v76;
      }

      if (*(a2 + 40) != v89 - v88)
      {
        sub_1000A4430();
      }

      v90 = (v73 + v71) % v75;
      v91 = *(v87 + 144);
      v92 = v90;
      if (v90 <= v91)
      {
        v92 = *(v4 + 92) + v90;
      }

      if (*(a2 + 48) != v92 - v91)
      {
        sub_1000A445C();
      }

      *(v87 + 128) = v76;
      *(v87 + 132) = v90;
      obj_checksum_set_phys(a1, v87, *(*(a1 + 376) + 36), v66, v67);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v93 = *(a2 + 24);
      if ((v93 & 8) == 0)
      {
        sub_1000A4354();
      }

      if ((v93 & 0x10) != 0)
      {
        sub_1000A42FC();
      }

      *(a2 + 24) = v93 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v94 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v94 - *(a2 + 72);
      *(a2 + 72) = v94;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      sub_1000A4354();
    }

    if (v23)
    {
      sub_1000A42FC();
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
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
  cv_wakeup((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = obj_cache_flush_write(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    obj_cache_flush_unprepare(v5);
    sub_100010CC8(a1, 0, 0);
    cv_wakeup((v4 + 256));
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
      log_err("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_57;
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
        obj_checksum_set_phys(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = dev_write(*(a1 + 384));
        if (v34)
        {
          v12 = v34;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_57;
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
        sub_1000A4354();
      }

      if ((v42 & 0x20) != 0)
      {
        sub_1000A42FC();
      }

      *(a2 + 24) = v42 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v43 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v44 = v43 - *(a2 + 72);
      *(a2 + 72) = v43;
      if (v44 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v44);
      }

      *(a2 + 104) = v44;
      cv_wakeup((v4 + 256));
      v45 = sub_100010CC8(a1, 0, 1);
      if (v45)
      {
        v12 = v45;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v45);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v46 = *(a2 + 24);
        if ((v46 & 0x20) == 0)
        {
          sub_1000A4354();
        }

        if ((v46 & 0x10) != 0)
        {
          sub_1000A42FC();
        }

        *(a2 + 24) = v46 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v47 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v48 = v47 - *(a2 + 72);
        *(a2 + 72) = v47;
        *(a2 + 104) += v48;
        cv_wakeup((v4 + 256));
        *(a2 + 52) = v12;
        return v12;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      v55 = dev_write(*(a1 + 384));
      if (v55)
      {
        v12 = v55;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v56 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v59 = dev_write(*(a1 + 384)), !v59))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v60 = sub_100011F08(a2, 32, 64);
          v61 = v60;
          if (v60 > 0xF4240)
          {
            log_warn("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v60);
          }

          *(a2 + 104) += v61;
          v62 = *(a2 + 24);
          if ((v62 & 0x20000) == 0)
          {
            goto LABEL_136;
          }

          ++*(v4 + 184);
          if ((v62 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v63 = sub_100010CC8(a1, (v62 >> 14) & 0x10, 0);
          if (!v63)
          {
LABEL_136:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v79 = *(a2 + 56);
            v80 = *(v79 + 128);
            v81 = *(a1 + 376);
            *(v81 + 128) = v80;
            *(v4 + 96) = v80;
            v82 = *(v79 + 132);
            *(v81 + 132) = v82;
            *(v4 + 100) = v82;
            *(v81 + 16) = *(v79 + 16);
            v83 = *(v4 + 152);
            *(v4 + 152) = v83 + 1;
            if (v83)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v83 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && nx_ratelimit_log_allowed(a1))
              {
                v84 = *(v4 + 160);
                if (v84 <= 1)
                {
                  v85 = 1;
                }

                else
                {
                  v85 = *(v4 + 160);
                }

                log_debug("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v84, *(v4 + 168) / v85, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), *(v4 + 232), *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            cv_wakeup((v4 + 256));
            return 0;
          }

          v12 = v63;
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v63);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v57 = a2;
          v58 = 64;
LABEL_110:
          *(a2 + 104) += sub_100011F08(v57, v58, 16);
          goto LABEL_58;
        }

        v12 = v59;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v59);
        }

        pthread_mutex_lock(v4);
        v56 = 1249;
      }

      *(v4 + 76) = v56;
      ++*(v4 + 80);
      --*(a2 + 40);
      v57 = a2;
      v58 = 32;
      goto LABEL_110;
    }

    v31 = tx_checkpoint_write(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    obj_checkpoint_done(v32);
    obj_release(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    log_err("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_57:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_58:
  cv_wakeup((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

uint64_t sub_100013480(uint64_t a1, unsigned int a2, _DWORD *a3)
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

  if (*(v3 + 136) != a2)
  {
    sub_1000A4488();
  }

  v6 = a2;
  v7 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v8 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  *(a1 + 64) = v9;
  *(a1 + 68) = v10;
  *(a1 + 72) = v4;
  v11 = *(v3 + 48);
  *(a1 + 96) = v11;
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  *(a1 + 112) = v12;
  *(a1 + 116) = v13;
  *(a1 + 120) = v11;
  *(a1 + 152) = *(v3 + 104);
  v14 = *(v3 + 120);
  *(a1 + 144) = v7;
  *(a1 + 148) = v14;
  v15 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v16 = *(v3 + 112);
  *(a1 + 160) = v16;
  *(a1 + 164) = v5;
  *(a1 + 264) = v15;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v17 = 8 * v16 + 2520;
  *(a1 + 328) = v17;
  v18 = ((2 * v16 + 6) & 0xFFFFFFF8) + v17;
  *(a1 + 332) = v18;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v19 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v19 = 0;
  }

  else
  {
    v20 = (v19 + 7) & 0x1FFFFFFF8;
    v21 = vdupq_n_s64(v19 - 1);
    v22 = (v18 + a1 + 8);
    v23 = xmmword_1000AAE00;
    v24 = xmmword_1000AAE10;
    v25 = xmmword_1000AAE20;
    v26 = xmmword_1000AAE30;
    v27 = vdupq_n_s64(1uLL);
    v28 = vdupq_n_s64(8uLL);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v21, v26));
      v30 = vaddq_s64(v26, v27);
      if (vuzp1_s8(vuzp1_s16(v29, *v21.i8), *v21.i8).u8[0])
      {
        *(v22 - 4) = v30.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v21), *&v21).i8[1])
      {
        *(v22 - 3) = v30.i16[4];
      }

      v31 = vaddq_s64(v25, v27);
      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v25))), *&v21).i8[2])
      {
        *(v22 - 2) = v31.i16[0];
        *(v22 - 1) = v31.i16[4];
      }

      v32 = vaddq_s64(v24, v27);
      v33 = vmovn_s64(vcgeq_u64(v21, v24));
      if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i32[1])
      {
        *v22 = v32.i16[0];
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i8[5])
      {
        v22[1] = v32.i16[4];
      }

      v34 = vaddq_s64(v23, v27);
      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v23)))).i8[6])
      {
        v22[2] = v34.i16[0];
        v22[3] = v34.i16[4];
      }

      v24 = vaddq_s64(v24, v28);
      v25 = vaddq_s64(v25, v28);
      v26 = vaddq_s64(v26, v28);
      v22 += 8;
      v23 = vaddq_s64(v23, v28);
      v20 -= 8;
    }

    while (v20);
  }

  *(a1 + v18 + 2 * v19) = -1;
  v36 = v18 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v36;
  if (v10)
  {
    v9 = v10;
  }

  v37 = (v36 + 8 * v9);
  *(a1 + 128) = v37;
  if (v13)
  {
    v38 = v13;
  }

  else
  {
    v38 = v12;
  }

  if (8 * v38 + v37 <= v6)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100013728(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v4 = *(v2 + 32);
  v5 = *(v3 + 376);
  v6 = *(v5 + 36);
  if (*(v3 + 624))
  {
    if (v4 == v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v5 + 40) || v4 != v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v12 = 2520;
    }

    else
    {
      v12 = 336;
    }

    v13 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 <= v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = *(v2 + 340);
    }

    if (v13 >= v12)
    {
      v8 = *(v2 + 336) == 0;
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *(a1 + 48);
  v16 = nx_calculate_metadata_parameters(v4, *(v2 + 48), *(v5 + 180), &v69);
  if (v16)
  {
    return v16;
  }

  if (v7 < v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  if (*(v2 + 36) != v74)
  {
    ++v17;
  }

  if (*(v2 + 40) != DWORD2(v74))
  {
    ++v17;
  }

  if (*(v2 + 44) != v75)
  {
    ++v17;
  }

  v18 = *(v2 + 48);
  if (*(v2 + 56) == *(&v70 + 1))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v20 = *(v2 + 64);
  v21 = *(v2 + 68);
  if (v20 != v71)
  {
    ++v19;
  }

  if (v21 != DWORD2(v71) && *(&v71 + 1) + v21 != 1)
  {
    ++v19;
  }

  if (*(v2 + 104) == *(&v72 + 1))
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  if (v24 != v73)
  {
    ++v23;
  }

  if (v25 != DWORD2(v73) && *(&v73 + 1) + v25 != 1)
  {
    ++v23;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v75 + 1))
  {
    ++v23;
  }

  v27 = *(v2 + 160);
  if (v27 != v76)
  {
    ++v23;
  }

  v28 = *(v2 + 164) & 0x7FFFFFFF;
  if (v28 > 0xFFFE)
  {
    ++v23;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v23;
  }

  if (v28 / v27 < 4)
  {
    ++v23;
  }

  if (*(v2 + 224) != v78)
  {
    ++v23;
  }

  if (*(v2 + 264) != DWORD2(v78))
  {
    ++v23;
  }

  if (*(v2 + 304) != v79)
  {
    ++v23;
  }

  v29 = *(v2 + 324);
  if (v29 < v7)
  {
    ++v23;
  }

  v30 = *(v2 + 328);
  if (v29 + 8 * v27 > v30)
  {
    ++v23;
  }

  v31 = *(v2 + 332);
  if (v30 + 2 * ((v27 + 3) & 0xFFFFFFFC) > v31)
  {
    ++v23;
  }

  v32 = *(v2 + 80);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v23;
  }

  v33 = *(v2 + 128);
  if (v21)
  {
    v20 = *(v2 + 68);
  }

  if (v32 + 8 * v20 <= v33)
  {
    v34 = v23;
  }

  else
  {
    v34 = v23 + 1;
  }

  if (v25)
  {
    v24 = *(v2 + 116);
  }

  if (v33 + 8 * v24 > *(a1 + 48))
  {
    ++v34;
  }

  if (*(v2 + 72) > v18)
  {
    ++v34;
  }

  v35 = *(v2 + 240);
  if (v35 < v18)
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 + 1;
  }

  if (v35 && !*(v2 + 248))
  {
    ++v36;
  }

  v37 = *(v2 + 256);
  if (v37 <= obj_xid(a1))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = *(v2 + 96);
  v40 = *(v2 + 120);
  v41 = *(v2 + 280);
  if (v39)
  {
    if (v40 > v39)
    {
      ++v38;
    }

    if (v41 < v39)
    {
      v42 = v38;
    }

    else
    {
      v42 = v38 + 1;
    }

    if (v41 && !*(v2 + 288))
    {
      ++v42;
    }

    v43 = *(v2 + 296);
    v44 = v43 > obj_xid(a1);
  }

  else
  {
    if (v40)
    {
      ++v38;
    }

    if (v41)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v38;
    }

    if (*(v2 + 288))
    {
      v42 = v45 + 1;
    }

    else
    {
      v42 = v45;
    }

    v44 = *(v2 + 296) != 0;
  }

  v46 = v42 + v44;
  v47 = *(v2 + 320);
  v48 = *(v2 + 164) & 0x7FFFFFFF;
  if (v47 != 0xFFFF && v48 <= v47)
  {
    ++v46;
  }

  v50 = *(v2 + 322);
  if (v50 != 0xFFFF && v48 <= v50)
  {
    ++v46;
  }

  if (!(v46 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v52 = *(v2 + 80);
    v53 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v54 = *(v2 + 48);
    *(a1 + 896) = v2 + v52;
    *(a1 + 904) = v2 + v53;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v54 >> 5;
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
      LODWORD(v69) = 0;
      dev_features(*(v3 + 384));
      if ((v69 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v55 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v55)
        {
          *(a1 + 1520) = v55;
        }

        if (*(a1 + 1528) > v55)
        {
          *(a1 + 1528) = v55;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = obj_xid(a1);
    }

    v57 = 0;
    v58 = a1 + 1496;
    *(a1 + 920) = v56;
    v59 = 1;
    do
    {
      v60 = v59;
      v61 = v2 + 48 + 48 * v57;
      v64 = *(v61 + 8);
      v63 = (v61 + 8);
      v62 = v64;
      if (v64)
      {
        v65 = _apfs_calloc_typed(v62, 4uLL, 0x100004052888210uLL);
        *(v58 + 8 * v57) = v65;
        if (v65 && *v63)
        {
          v66 = 0;
          do
          {
            v67 = *(v58 + 8 * v57) + 4 * v66;
            *v67 = *(v2 + 36) & 0xFFFFFF | (*(v67 + 3) << 24);
            *(*(v58 + 8 * v57) + 4 * v66++ + 3) = 3;
          }

          while (v66 < *v63);
        }
      }

      else
      {
        *(v58 + 8 * v57) = 0;
      }

      v59 = 0;
      v57 = 1;
    }

    while ((v60 & 1) != 0);
    v11 = new_lock((a1 + 384));
    if (v11)
    {
      goto LABEL_164;
    }

    v11 = new_lock((a1 + 448));
    if (!v11)
    {
      v11 = new_lock((a1 + 512));
      if (!v11)
      {
        v11 = new_lock((a1 + 576));
        if (!v11)
        {
          v11 = new_lock((a1 + 640));
          if (!v11)
          {
            v11 = new_lock((a1 + 704));
            if (!v11)
            {
              v11 = new_cv((a1 + 768));
              if (!v11)
              {
LABEL_164:
                *(a1 + 1592) = _apfs_calloc_typed(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v11;
              }

              free_lock((a1 + 704));
            }

            free_lock((a1 + 640));
          }

          free_lock((a1 + 576));
        }

        free_lock((a1 + 512));
      }

      free_lock((a1 + 448));
    }

    free_lock((a1 + 384));
    goto LABEL_164;
  }

  v10 = v3;
LABEL_10:
  v11 = nx_corruption_detected_int(v10);
  if (!v11)
  {
    goto LABEL_130;
  }

  return v11;
}

uint64_t sub_100013D8C(uint64_t a1)
{
  _apfs_free(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  _apfs_free(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    _apfs_free(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    _apfs_free(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    _apfs_free(v4, 16 * *(a1 + 1538));
  }

  spaceman_datazone_destroy(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    spaceman_free_extent_cache_destroy(v5);
    _apfs_free(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    spaceman_free_extent_cache_destroy(v6);
    _apfs_free(*(a1 + 1584), 1368);
  }

  free_lock((a1 + 384));
  free_lock((a1 + 448));
  free_lock((a1 + 512));
  free_lock((a1 + 576));
  free_lock((a1 + 640));
  free_lock((a1 + 704));
  free_cv((a1 + 768));
  return 0;
}

uint64_t sub_100013E80(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
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

  return nx_corruption_detected_int(v6);
}

uint64_t sub_100013F5C(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
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

  return nx_corruption_detected_int(v6);
}

uint64_t spaceman_create(pthread_mutex_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = a1[48];
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v96 = 0;
  v97 = a3;
  v95 = 0;
  *a5 = 0;
  v106 = 0;
  v99 = 0;
  v98 = 0;
  v100 = 64;
  v101 = _apfs_malloc_typed(0x400uLL, 0x1000040451B5BE8uLL);
  if (v101)
  {
    if (!a3)
    {
      v98 = *(a2 + 16);
      v99 = 1;
    }

    LODWORD(v104) = 0;
    v103 = a2;
    bootstrap = obj_create_bootstrap(a1[49], 0x80000000, 0, &sm_desc, &v103, *(a2 + 136), a4, &v106);
    if (bootstrap || (obj_dirty(v106, a4, 0), v12 = *&v106[5].__opaque[48], *a5 = *&v106[1].__opaque[40], v13 = a1[47], v102 = *&v13[1].__opaque[32], bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v97, &v13[1].__opaque[40], &v102, 0), bootstrap) || (v14 = a1[47], *&v14[1].__opaque[32] = v102, v102 = *&v14[1].__opaque[36], bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v97, &v14[1].__opaque[48], &v102, 0), bootstrap) || (*&a1[47][1].__opaque[36] = v102, v102 = *(v12 + 164), bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v97, (v12 + 168), &v102, 0), bootstrap) || (*(v12 + 164) = v102, v102 = *(v12 + 152), bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v97, (v12 + 176), &v102, 1), bootstrap))
    {
      v15 = bootstrap;
    }

    else
    {
      v94 = v12;
      *(v12 + 152) = v102;
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

      v21 = _apfs_malloc_typed(v94[8], 0xE4C85275uLL);
      v22 = _apfs_malloc_typed(v94[8], 0xA9487841uLL);
      v15 = 12;
      v89 = v22;
      v86 = _apfs_malloc_typed(v94[8], 0x7D523A3FuLL);
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
            p_sig = &v106->__sig;
            *(*&v106[13].__opaque[32] + 8 * v26) = a4;
            v29 = sub_100014CC0(a1, p_sig, a4, &v96, &v95);
            if (v29)
            {
              v15 = v29;
              log_err("%s:%d: %s failed to allocate bitmap block from IP bitmap pool: %d\n");
              goto LABEL_97;
            }

            *(*&v106[13].__opaque[40] + 2 * v26) = v95;
            v30 = dev_write(v10);
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
                      obj_checksum_set_phys(a1, v33, v25[8], v23, v24);
                      v40 = dev_write(v10);
                      if (v40)
                      {
                        v15 = v40;
                        log_err("%s:%d: %s failed to write cab %d: %d\n");
                        goto LABEL_95;
                      }

                      v41 = v37 / v39[11];
                      LODWORD(v31) = v87;
                    }

                    v34 = v41;
                    v44 = sub_100014DC4(a1, v106, v31, v41, v33, a4);
                    if (v44)
                    {
                      v76 = v44;
                      log_err("%s:%d: %s failed to initialize cab %d: %d\n", "spaceman_create", 1042, &a1[48][3].__opaque[12], v34, v44);
                      v15 = v76;
                      goto LABEL_95;
                    }

                    v38 = v94[11];
                    LODWORD(v31) = v87;
                  }

                  v92 = v34;
                  v90 = v37 - v38 * v34;
                  ++*(v33 + 36);
                  v42 = &v106->__sig;
                  v43 = (v86 + 5);
                }

                else
                {
                  v92 = v34;
                  v42 = &v106->__sig;
                  v43 = *(&v106[14].__sig + v31);
                  v90 = v37;
                }

                v45 = sub_100014E94(a1, v42, v31, v37, v89, a4, &v105);
                if (v45)
                {
                  v15 = v45;
                  log_err("%s:%d: %s failed to initialize cib %d: %d\n");
                  goto LABEL_95;
                }

                *(v43 + 8 * v90) = v105;
                obj_checksum_set_phys(a1, v89, v94[8], v46, v47);
                v48 = dev_write(v10);
                if (v48)
                {
                  v15 = v48;
                  log_err("%s:%d: %s failed to write cib %d: %d\n");
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
              obj_checksum_set_phys(a1, v33, v25[8], v23, v24);
              v49 = dev_write(v10);
              v25 = v94;
              if (v49)
              {
                v15 = v49;
                log_err("%s:%d: %s failed to write cab %d: %d\n");
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
                        v56 = dev_read(v10);
                        if (v56 || (v56 = obj_checksum_verify_phys(v86, v94[8], v57, v58), v56))
                        {
                          v15 = v56;
                          log_err("%s:%d: %s failed to read cab %d: %d\n");
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

                    v59 = dev_read(a1[48]);
                    if (v59 || (v59 = obj_checksum_verify_phys(v89, v94[8], v60, v61), v59))
                    {
                      v15 = v59;
                      log_err("%s:%d: %s failed to read cib %d: %d\n", "spaceman_create", 1110, &a1[48][3].__opaque[12], v88, v59);
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
                          bitmap_clear_range(v84, 0, 1);
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
                          v74 = sub_100014FFC(a1, v106, a4, &v105);
                          if (v74)
                          {
                            v15 = v74;
                            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_create", 1136, &a1[48][3].__opaque[12], v74);
                            goto LABEL_84;
                          }

                          *(v65 + 24) = v105;
                        }

                        v66 = dev_write(v10);
                        ++v64;
                        if (v66)
                        {
LABEL_83:
                          v15 = v66;
                          goto LABEL_84;
                        }
                      }

                      obj_checksum_set_phys(a1, v89, v94[8], v62, v63);
                      v15 = dev_write(v10);
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

          v77 = sub_10001536C(a1, v106, v10, 0, 1uLL, a4);
          if (v77 || (a1[47][1].__sig & 0x100) != 0 && (v77 = sub_10001536C(a1, v106, v10, 0, 1uLL, a4), v77))
          {
            v15 = v77;
          }

          else if (HIDWORD(v100))
          {
            v78 = 0;
            v79 = 0;
            while (1)
            {
              v15 = sub_10001536C(a1, v106, v10, *&v101[v78], *&v101[v78 + 8], a4);
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
        _apfs_free(v86, v94[8]);
      }

      if (v89)
      {
        _apfs_free(v89, v94[8]);
      }

      if (v21)
      {
        _apfs_free(v21, v94[8]);
      }
    }

    if (v101)
    {
      _apfs_free(v101, 16 * v100);
    }
  }

  else
  {
    v15 = 12;
  }

  v16 = &v106->__sig;
  if (v15 && v106)
  {
    obj_delete_and_free(&v106->__sig, a4);
LABEL_18:
    *a5 = 0;
    return v15;
  }

  if (!v106)
  {
    goto LABEL_18;
  }

  *a5 = *&v106[1].__opaque[40];
  obj_release(v16);
  return v15;
}

uint64_t sub_100014B4C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v7 = a3;
  v23 = 0;
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
    v21 = _apfs_malloc_typed(16 * (v19 + 64), 0x1000040451B5BE8uLL);
    if (!v21)
    {
      return 12;
    }

    v20 = v21;
    memcpy(v21, *(a2 + 32), 16 * *(a2 + 24));
    bzero(&v20[16 * *(a2 + 24)], 0x400uLL);
    _apfs_free(*(a2 + 32), 16 * *(a2 + 24));
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
  *(v22 + 1) = v7;
  *(a2 + 28) = v13 + 1;
  return result;
}

uint64_t sub_100014CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return nx_corruption_detected_int(a1);
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
    obj_dirty(a2, a3, 0);
    *a5 = v6;

    return spaceman_ip_bm_block_address(a1, v5, v6, a4);
  }
}

uint64_t sub_100014DC4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v17 = 0;
  v13 = sub_100014FFC(a1, a2, a6, &v17);
  v14 = v13;
  if (v13)
  {
    log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cab", 769, (*(a1 + 384) + 212), v13);
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

uint64_t sub_100014E94(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6, void *a7)
{
  v13 = *(a2 + 376);
  v27 = 0;
  v14 = sub_100014FFC(a1, a2, a6, &v27);
  v15 = v14;
  if (v14)
  {
    log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cib", 801, (*(a1 + 384) + 212), v14);
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

uint64_t sub_100014FFC(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, unint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  if (!xid_is_current_tx(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v30 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v33 = v5;
  v34 = v6;
  v31 = v8;
  v32 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v37 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_35:
      if (sub_100015F48(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      log_err("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (*(v6 + 384) + 212));
      v27 = 28;
      goto LABEL_39;
    }

    v13 = v11 / v9;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v31;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = spaceman_ip_bm_block_address(v6, v7, v15, &v39);
    if (v16 || (v16 = obj_get(*(v6 + 392), 1073741825, v39, &sm_bm_desc, 0, 0, 0, a3, &v41), v16))
    {
      v27 = v16;
      pthread_mutex_unlock(v5 + 7);
      return v27;
    }

    v17 = v11 % v9;
    v18 = v41[7];
    if (bitmap_range_find_first(0, v18, v11 % v9, v14 - v11 % v9, &v40))
    {
      break;
    }

    if (v9 + v13 * v9 >= (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 += v9 - v17;
    }

    v5 = v33;
LABEL_33:
    obj_release(v41);
    ++v10;
    v6 = v34;
    if (v37)
    {
      v27 = 0;
LABEL_39:
      pthread_mutex_unlock(v5 + 7);
      *v30 = v37;
      return v27;
    }
  }

  v19 = v40;
  v20 = v40 + v13 * v9;
  v21 = *(v7 + 152);
  if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) <= v20)
  {
    v27 = 22;
    goto LABEL_43;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = *(v7 + 176) + v20;
    v37 = v22;
LABEL_24:
    if (!bitmap_range_is_clear(v18, v19, 1, v22))
    {
      sub_1000A44B4();
    }

    bitmap_set_range(v18, v40, 1, v24);
    v5 = v33;
    if (*(*&v33[13].__opaque[32] + 8 * v13) != a3)
    {
      v36 = 0;
      v25 = sub_100014CC0(v34, v33, a3, &v38, &v36);
      if (v25 || (v25 = sub_10001F150(v34, v33, v15, a3), v25))
      {
        v27 = v25;
        v28 = v33 + 7;
        goto LABEL_44;
      }

      v39 = v38;
      *(*&v33[13].__opaque[40] + 2 * v13) = v36;
      *(*&v33[13].__opaque[32] + 8 * v13) = a3;
      v9 = v32;
    }

    obj_dirty(v41, a3, v39);
    v26 = v11 - v17 + v40;
    if (v26 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v26 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v33[14].__opaque[8] = v11;
    goto LABEL_33;
  }

  v23 = nx_metadata_fragmented_block_address_lookup(v34, *(v7 + 176), v20, &v37, 0);
  if (!v23)
  {
    v19 = v40;
    goto LABEL_24;
  }

  v27 = v23;
LABEL_43:
  v28 = v33 + 7;
LABEL_44:
  pthread_mutex_unlock(v28);
  obj_release(v41);
  return v27;
}

uint64_t sub_10001536C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
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
    v15 = _apfs_malloc_typed(*(v6 + 32), 0xBBCB36uLL);
    if (!v15)
    {
      return 12;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = _apfs_malloc_typed(*(v6 + 32), 0x40CDA009uLL);
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  v18 = _apfs_malloc_typed(*(v6 + 32), 0xFCE2FE6EuLL);
  if (!v18)
  {
    v11 = 12;
    v19 = v17;
    goto LABEL_53;
  }

  v19 = v18;
  v46 = v15;
  if (v12 < 1)
  {
    v11 = 0;
    goto LABEL_50;
  }

  v50 = v17 + 10;
  v47 = -1;
  v45 = v17;
  while (1)
  {
    v20 = v13 / *(v6 + 36);
    v21 = v20 / *(v6 + 40);
    if (*(v6 + 68))
    {
      break;
    }

LABEL_20:
    v27 = dev_read(a3);
    if (v27 || (v27 = obj_checksum_verify_phys(v17, *(v6 + 32), v28, v29), v27))
    {
      v43 = v27;
      log_err("%s:%d: %s failed to read cib %d: %d\n", "spaceman_allocated", 1280, (*(a1 + 384) + 212), v21, v27);
      v11 = v43;
      goto LABEL_50;
    }

    if (v12 < 1)
    {
      v34 = 0;
    }

    else
    {
      v32 = v20 % *(v6 + 40);
      while (v32 < v17[9])
      {
        v33 = &v50[8 * v32];
        if (*(v33 + 3))
        {
          v34 = 1;
          if (dev_read(a3))
          {
            goto LABEL_42;
          }
        }

        else
        {
          v52 = 0;
          v35 = sub_100014FFC(a1, a2, a6, &v52);
          if (v35)
          {
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_allocated", 1291, (*(a1 + 384) + 212), v35);
            break;
          }

          *(v33 + 3) = v52;
          bzero(v19, *(v6 + 32));
        }

        v36 = *(v6 + 36);
        v37 = v13 % v36;
        v38 = v36 - (v13 % v36);
        if (v12 >= v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = v12;
        }

        v40 = v37;
        if (!bitmap_range_is_clear(v19, v37, v39, v38))
        {
          sub_1000A44E0();
        }

        bitmap_set_range(v19, v40, v39, v41);
        sub_10001EF94(a2, v19, v13 / *(v6 + 36));
        v33[5] -= v39;
        *(v6 + 72) -= v39;
        if (dev_write(a3))
        {
          v34 = 1;
          goto LABEL_42;
        }

        ++v32;
        v13 += v39;
        v8 = v12 <= v39;
        v12 -= v39;
        if (v8)
        {
          v34 = 0;
          goto LABEL_42;
        }
      }

      v34 = 1;
    }

LABEL_42:
    obj_checksum_set_phys(a1, v17, *(v6 + 32), v30, v31);
    v42 = dev_write(a3);
    v11 = v42;
    if (!v34 || v42)
    {
      goto LABEL_50;
    }
  }

  v22 = v21 / *(v6 + 44);
  v23 = v47;
  if (v22 == v47)
  {
LABEL_19:
    v47 = v23;
    goto LABEL_20;
  }

  v24 = dev_read(a3);
  if (!v24)
  {
    v24 = obj_checksum_verify_phys(v46, *(v6 + 32), v25, v26);
    if (!v24)
    {
      v23 = v22;
      v17 = v45;
      goto LABEL_19;
    }
  }

  v11 = v24;
  v17 = v45;
  log_err("%s:%d: %s failed to read cab %d: %d\n", "spaceman_allocated", 1264, (*(a1 + 384) + 212), v22, v24);
LABEL_50:
  if (v46)
  {
    _apfs_free(v46, *(v6 + 32));
  }

  _apfs_free(v17, *(v6 + 32));
LABEL_53:
  _apfs_free(v19, *(v6 + 32));
  return v11;
}

uint64_t spaceman_extent_check(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = nx_superblock_sanity_check_extent(a1[47], *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return nx_metadata_range_overlap_check(a1, a3, a4, 0);
  }

  return result;
}

uint64_t spaceman_entitled_reserve_active(void *a1, void *a2)
{
  v3 = a2;
  if (!a2 && !spaceman_get(a1, &v3))
  {
    obj_release(v3);
  }

  return 0;
}

uint64_t spaceman_ip_bm_block_address(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t spaceman_get(void *a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000A450C();
  }

  v4 = a1[51];
  *a2 = v4;
  if (v4)
  {
    goto LABEL_3;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 152), &sm_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v4 = *a2;
    a1[51] = *a2;
LABEL_3:
    obj_retain(v4);
    return 0;
  }

  return result;
}

uint64_t spaceman_currently_available_space(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v10 = a2;
  v11 = a1;
  if (obj_type(a1) == 13)
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

  v24 = 0;
  v13 = spaceman_get(v11, &v24);
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

    v23 = sub_100015A30(v16, v12, v10, a6);
    pthread_mutex_unlock(v24 + 9);
    obj_release(v24);
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

unint64_t sub_100015A30(void *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    spaceman_entitled_reserve_active(0, a1);
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

uint64_t spaceman_compare_currently_available_space(void *a1, int64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5, unint64_t *a6, unint64_t *a7, BOOL *a8, void *a9, unint64_t *a10, BOOL *a11)
{
  v17 = a1;
  if (obj_type(a1) == 13)
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

  v31 = 0;
  if (!a5)
  {
    return 22;
  }

  v19 = spaceman_get(v17, &v31);
  if (!v19)
  {
    pthread_mutex_lock(v31 + 9);
    v20 = sub_100015A30(v31, v18, 0, a8);
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
    obj_release(v31);
  }

  return v19;
}

uint64_t spaceman_free_up_some_blocks(void *a1, void *a2, uint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v6 = 0;
  if (!spaceman_get(a1, &v11))
  {
    v7 = *&v11[5].__opaque[48];
    sub_100015E54(a1, v10, 0, 0);
    pthread_mutex_lock(v11 + 7);
    sub_100015F48(a1, v11, 0, 1, v10, a3);
    pthread_mutex_unlock(v11 + 7);
    pthread_mutex_lock(v11 + 8);
    v8 = sub_100015F48(a1, v11, 2, 1, v10, a3);
    v6 = sub_100015F48(a1, v11, 1, 1, v10, a3) + v8;
    *a2 = *(v7 + 240) + *(v7 + 280);
    pthread_mutex_unlock(v11 + 8);
    sub_100016780(a1, v10);
    obj_release(v11);
  }

  return v6;
}

uint64_t sub_100015E54(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = dev_features(*(result + 384));
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

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
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

uint64_t sub_100015F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v54 = v7;
  v53 = *(v7 + 36);
  v62 = a3;
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v52 = (a2 + 1542);
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
    v59 = (a2 + 448);
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
        v18 = v59;
        pthread_mutex_unlock(v59);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_1000AAE40;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (!spaceman_fq_tree_get(a1, a2, v62, 0, 0, &v69) && v69)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v65 = 8;
    v19 = bt_lookup_first(v69, 0, &v66, &__rqtp, &v68, &v65);
    v20 = v66;
    if (v62 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    v21 = a6;
    if (v19)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        sub_10001F338(a1, a2, v62, v6, v21);
        if (!v62)
        {
LABEL_95:
          obj_release(v69);
          return v14;
        }
      }

      else
      {
        dev_unmap_flush(*(a1 + 384));
        if (v62)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10001F07C(a1, v6);
        if (!v62)
        {
          goto LABEL_95;
        }
      }

      if (*(a2 + 8 * (v62 - 1) + 984))
      {
        sub_1000A4538();
      }

      goto LABEL_95;
    }

    v23 = 0;
    v55 = v54 + 40 * v62;
    v60 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && obj_modify(a2, 0, v21))
      {
        goto LABEL_29;
      }

      if (v65)
      {
        v24 = v68;
      }

      else
      {
        v68 = 1;
        v24 = 1;
      }

      v25 = v66;
      if (v66 <= v21)
      {
        if (v66 > v20)
        {
          *(v55 + 216) = v66;
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
            if (*(a2 + 928 + 8 * v62) < v21)
            {
              *(a2 + 928 + 8 * v62) = v21;
              log_info("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v62, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v60 && v25 != v21)
          {
            tx_barrier(a1, 208);
            --v60;
            v25 = v66;
            v27 = *(a2 + 920);
          }

          if (v25 > v27)
          {
            goto LABEL_29;
          }
        }

        if (v62)
        {
          if (spaceman_fq_over_threshold(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = spaceman_extent_check(a1, a2, v67, v68);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_10001F1F8(a1, a2, v62, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_60:
            if (nx_ratelimit_log_allowed(a1))
            {
              log_err("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), v62, v67, v24, v29);
            }

            goto LABEL_81;
          }

          if (v24 >= (4 * v53))
          {
            v24 = (4 * v53);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (v62 - 1)) += v24;
          sub_10001F1F8(a1, a2, v62, v24);
          pthread_mutex_unlock((a2 + 576));
          v30 = v67;
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
              sub_10001F338(a1, a2, v62, v6, v21);
            }

            goto LABEL_81;
          }

          dev_unmap(*(a1 + 384));
          sub_10001F6F0(a1, a2, v30, v24, 1, v21);
        }

        else
        {
          sub_10001F1F8(a1, a2, 0, v24);
          v29 = sub_10001F2B8(a1, a2, v67, v24, 0);
          if (v29)
          {
            goto LABEL_60;
          }

          v36 = v67;
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
              v51 = v20;
              pthread_mutex_unlock((a2 + 448));
              v40 = *v52;
              sub_10001F07C(a1, v6);
              if (v40)
              {
                v41 = 0;
                v42 = 16 * v40;
                do
                {
                  dev_unmap(*(a1 + 384));
                  v41 += 16;
                }

                while (v42 != v41);
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v43 = 0;
                v44 = a6;
                do
                {
                  sub_10001F49C(a1, a2, *(*(a2 + 1544) + v43), *(*(a2 + 1544) + v43 + 8), a6);
                  v43 += 16;
                }

                while (v42 != v43);
              }

              else
              {
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v44 = a6;
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v21 = v44;
              v20 = v51;
            }

            goto LABEL_81;
          }

          dev_unmap(*(a1 + 384));
          sub_10001F49C(a1, a2, v36, v24, v21);
        }

        sub_10001F07C(a1, v6);
      }

      else
      {
        log_err("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v62, v66, v67, v24, v21);
        if (v62)
        {
          pthread_mutex_lock((a2 + 576));
          sub_10001F1F8(a1, a2, v62, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_10001F1F8(a1, a2, 0, v24);
        }
      }

LABEL_81:
      if (v6 && *(v6 + 62) == 1)
      {
        v45.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v45.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v45);
      }

      v46 = bt_remove_first(v69, 0, 0, 0, 0, 0, v21);
      if (v46)
      {
        log_err("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), v62, v67, v68, v46);
      }

      v47 = v68 - v24;
      if (v68 != v24)
      {
        v67 += v24;
        v68 -= v24;
        v65 = 8 * (v47 != 1);
        v48 = bt_insert(v69, 0, &v66, 16, &v68, v65, v21);
        if (v48)
        {
          log_err("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), v62, v67, v68, v48);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v65 = 8;
      v49 = bt_lookup_first(v69, 0, &v66, &__rqtp, &v68, &v65);
      v23 = 1;
      if (v49)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  if (v6 && *(v6 + 62) == 1)
  {
    v22 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v22;
  }

  return v14;
}

uint64_t sub_100016780(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0;
  v8.tv_nsec = 0;
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

void spaceman_manage_free_queues(pthread_mutex_t **a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v4 = *(a2 + 16);
  if (!spaceman_get(a1, &v12))
  {
    v5 = *&v12[5].__opaque[48];
    sub_100015E54(a1, &v9, 0, 1);
    pthread_mutex_lock(v12 + 7);
    if (spaceman_fq_over_threshold(a1, &v12->__sig, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v6 = v12;
      if (v4 - v5[27] <= LOWORD(v12[24].__sig))
      {
        break;
      }

      if (!sub_100015F48(a1, v12, 0, 0, &v9, v4))
      {
        v6 = v12;
        break;
      }
    }

    pthread_mutex_unlock(v6 + 7);
    pthread_mutex_lock(v12 + 8);
    v7 = v12;
    if (v5[30] > *&v12[23].__opaque[40])
    {
      while (1)
      {
        v7 = v12;
        if (v5[30] <= *&v12[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_100015F48(a1, v12, 1, 1, &v9, v4))
        {
          v7 = v12;
          break;
        }
      }
    }

    if (v5[35] > *&v7[23].__opaque[48])
    {
        ;
      }
    }

    if (v5[30] > v5[9])
    {
        ;
      }
    }

    if (v5[35] > v5[15])
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, &v12->__sig, 1, 0))
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, &v12->__sig, 2, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v8 = v5[37];
    }

    while (v8 && v4 - v8 > LOWORD(v12[24].__sig) && sub_100015F48(a1, v12, 2, 0, &v9, v4));
    sub_100016780(a1, &v9);
    *(a2 + 88) = *(v11 + 8);
    *(a2 + 80) = *&v11[0] - v10;
    pthread_mutex_unlock(v12 + 8);
    obj_release(v12);
  }
}

BOOL spaceman_fq_over_threshold(pthread_mutex_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v9 = 0;
  v7 = 0;
  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = spaceman_fq_tree_over_threshold(a2, v5, v9, v4);
    obj_release(v9);
  }

  return v7;
}

BOOL spaceman_tx_start_closing(pthread_mutex_t **a1)
{
  v14 = 0;
  if (spaceman_get(a1, &v14))
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
  if (v12 || spaceman_fq_over_threshold(a1, &v14->__sig, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!spaceman_fq_over_threshold(a1, &v14->__sig, 1, 0))
    {
      v2 = spaceman_fq_over_threshold(a1, &v14->__sig, 2, 0);
    }
  }

  obj_release(v14);
  return v2;
}

void spaceman_tx_complete(void *a1, uint64_t a2)
{
  v4 = 0;
  if (!spaceman_get(a1, &v4))
  {
    v3 = v4;
    v4[115] = a2;
    obj_release(v3);
  }
}

uint64_t spaceman_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = spaceman_fq_tree_get(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = obj_checkpoint_start(a3);
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
      log_err("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (*(a1 + 384) + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = obj_checkpoint_known(a3);
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
    v11 = btree_checkpoint_traverse(a1, a2, v12, a4);
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
        v11 = btree_checkpoint_traverse(a1, a2, v13, a4);
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
        log_err("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (*(a1 + 384) + 212), v18, v8[132], *(a2 + 16));
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
        v9 = btree_checkpoint_traverse(a1, a2, v14, a4);
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
        log_err("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (*(a1 + 384) + 212), v20, v8[152], *(a2 + 16));
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
    obj_release(v24);
  }

  if (v25)
  {
    obj_release(v25);
  }

  if (v23)
  {
    obj_release(v23);
  }

  return v11;
}

uint64_t spaceman_fq_tree_get(pthread_mutex_t **a1, uint64_t *a2, unsigned int a3, unint64_t a4, int a5, uint64_t *a6)
{
  if (a3 > 2)
  {
    return 22;
  }

  v10 = a2[47];
  v11 = a2 + 119;
  v12 = a2[a3 + 119];
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
    result = btree_get(a1, 0x80000000, v15, 0, 0, 0, 9, spaceman_free_queue_key_cmp, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      v11[v13] = *a6;
LABEL_4:
      obj_retain(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = obj_modify(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = btree_create(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, spaceman_free_queue_key_cmp, a4, a6);
  if (!result)
  {
    *v16 = obj_oid(*a6);
    obj_dirty(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t spaceman_iterate_free_extents_internal(uint64_t a1, int a2, unint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  LODWORD(v7) = a2;
  v8 = a1;
  memset(v228, 0, 64);
  v227 = 0;
  v226 = 0;
  memset(v232, 0, 128);
  v213 = 0;
  pthread_mutex_lock((a1 + 864));
  v9 = v7 & 0x30;
  if ((v7 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v225 = 0;
  v224 = 0;
  v223 = 0;
  __base = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v10 = spaceman_get(v8, &v223);
  if (v10)
  {
    goto LABEL_359;
  }

  v197 = *&v223[5].__opaque[48];
  v206 = a4;
  if ((v7 & 0x40) != 0)
  {
    v11 = 4;
  }

  else if ((v7 & 0x20) != 0)
  {
    v11 = 8;
  }

  else if (a4 == sub_100018900)
  {
    v11 = 1;
  }

  else
  {
    v11 = v197[10];
  }

  v179 = v11;
  v12 = _apfs_malloc_typed(16 * v197[10], 0x1000040F7F8B94BuLL);
  v13 = _apfs_malloc_typed(8 * v197[10], 0x100004000313F17uLL);
  v14 = v13;
  v10 = 12;
  if (!v12 || !v13)
  {
    goto LABEL_354;
  }

  if ((v7 & 2) == 0)
  {
    pthread_mutex_lock(v223 + 6);
  }

  if (a3)
  {
    if ((v7 & 0x6C) != 0x40)
    {
      v10 = 22;
      goto LABEL_344;
    }

    v15 = 0;
  }

  else
  {
    if ((v7 & 4) != 0)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v15 = (v7 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v165 = v16;
  v10 = 0;
  v168 = 0;
  v175 = 0;
  v17 = 0;
  if ((v7 & 0x20) != 0)
  {
    v18 = &v213;
  }

  else
  {
    v18 = 0;
  }

  v170 = v18;
  v171 = v197 + 12;
  v183 = v7 & 0xFE;
  v173 = v12 + 8;
  v178 = v12 - 16;
  v193 = v14;
  v184 = v8;
  v187 = v7;
  v186 = v12;
  v172 = v7 & 0x30;
  while (1)
  {
    if (v7)
    {
      v222 = 0;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      __base = 0u;
      v215 = 0u;
      LODWORD(v222) = spaceman_get_number_of_disabled_allocation_zones(v223, v15);
    }

    v213 = a3;
    v169 = spaceman_free_extent_cache_bitmap_scan_begin(*&v223[24].__opaque[8 * v15 + 32], v170);
    v19 = v213;
    v20 = v197[9];
    if ((v7 & 0x40) == 0)
    {
      v19 = v213 / v20 * v20;
      v213 = v19;
    }

    v166 = v19;
    v21 = &v171[12 * v15];
    v174 = -1;
    v22 = v19 / v20 / v197[10];
    v209 = v15;
    v23 = v17;
    v176 = v21;
LABEL_33:
    v181 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if ((v7 & 1) != 0 && v222)
    {
      v17 = v23;
      qsort(&__base, 8uLL, 0x10uLL, sub_100018B5C);
      if (v222 && DWORD2(v221))
      {
        v150 = 6;
        v152 = &v221;
        v151 = &v221 + 2;
        while (1)
        {
          LOBYTE(v231) = 0;
          v153 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v223, v209, *v152, &v231);
          if (v153)
          {
            log_err("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v152, *v151, v153);
          }

          v154 = v222;
          if (v231 == 1)
          {
            v154 = v222 - 1;
            LODWORD(v222) = v222 - 1;
          }

          v10 = 0;
          v15 = v209;
          if (!v154 || v150 == -1)
          {
            break;
          }

          v152 = (&__base + v150);
          v151 = (v152 | 8);
          --v150;
          if (!*(v152 + 8))
          {
            v10 = 0;
            v15 = v209;
            break;
          }
        }
      }
    }

    else
    {
      v17 = v23;
    }

    if (v169)
    {
      if (v166)
      {
        v155 = 0;
      }

      else
      {
        v155 = v181 == v171[12 * v15 + 4];
      }

      spaceman_free_extent_cache_bitmap_scan_finished(*&v223[24].__opaque[8 * v15 + 32], v213, v155);
    }

    a3 = 0;
    if (++v15 == v165)
    {
      v157 = 0;
      goto LABEL_335;
    }
  }

  v211 = v213;
  v25 = v197[9];
  v24 = v197[10];
  if (!v9)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v15, v181, v176[4]);
      pthread_mutex_unlock((v8 + 864));
      v156 = 0;
      v157 = 0;
      v10 = 16;
      v12 = v186;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  pthread_mutex_lock(&v223[v15 + 10]);
  v26 = v176[5];
  if (v26)
  {
    v27 = v10;
    v28 = v181 / v197[11];
    if (v28 == v174 && v23)
    {
      obj_lock(v227, 1u);
      v28 = v174;
    }

    else
    {
      v30 = *(*(&v223[14].__sig + v209) + 8 * v28);
      if (v227)
      {
        obj_release(v227);
        v227 = 0;
      }

      v224 = v197;
      v225 = __PAIR64__(v28, v209);
      v31 = obj_get(*(v8 + 392), 0x140000004, v30, &sm_cab_desc, &v224, 0, 0, 0, &v227);
      if (v31)
      {
        v164 = v31;
        log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v28, v30, v31);
        v157 = 0;
        if (v169)
        {
          LOBYTE(v156) = 1;
          v12 = v186;
          v10 = v164;
          goto LABEL_330;
        }

        v12 = v186;
        v10 = v164;
        goto LABEL_333;
      }

      v27 = 0;
      v23 = v227[7];
      v174 = v28;
    }

    pthread_mutex_unlock(&v223[v209 + 10]);
    v29 = (v23 + 8 * (v181 - v197[11] * v28) + 40);
    v175 = 1;
    v10 = v27;
  }

  else
  {
    v29 = (*(&v223[14].__sig + v15) + 8 * v181);
  }

  v177 = v23;
  if (v226)
  {
    obj_lock(v226, 1u);
    v32 = v181;
  }

  else
  {
    v33 = *v29;
    v224 = v197;
    v225 = __PAIR64__(v181, v209);
    v32 = v181;
    v34 = obj_get(*(v8 + 392), 0x140000004, v33, &sm_cib_desc, &v224, 0, 0, 0, &v226);
    if (v34)
    {
      v163 = v34;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v181, v33, v34);
      v157 = 0;
      v10 = v163;
      v12 = v186;
      v14 = v193;
      v156 = v26 == 0;
      goto LABEL_329;
    }

    v10 = 0;
    v14 = v193;
  }

  v180 = v226[7];
  if (v206 == sub_100018900)
  {
    sub_100015E54(v8, v228, 125, 0);
    if (v26)
    {
      goto LABEL_53;
    }
  }

  else if (v26)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v223[v209 + 10]);
LABEL_53:
  if (v227)
  {
    obj_unlock(v227, 1u);
    v175 = 0;
  }

  v35 = v211 / v25 - v24 * v32;
  bzero(v14, 8 * v197[10]);
  v36 = *(v180 + 36);
  v185 = v35;
  if (v179 >= v36 - v35)
  {
    v37 = v36 - v35;
  }

  else
  {
    v37 = v179;
  }

  v38 = v197[10];
  if (v36 > v38)
  {
    sub_1000A4640();
  }

  if (v37 > v38)
  {
    sub_1000A4614();
  }

  v39 = v211 % v25;
  __nel = v37;
  if (v37)
  {
    v40 = 0;
    v41 = v197[9];
    v42 = v173;
    v12 = v186;
    v43 = v35;
    v23 = v177;
    do
    {
      *(v42 - 2) = v43;
      *v42 = *(v180 + 40 + 32 * v43 + 24);
      v42 += 2;
      if (v40)
      {
        v44 = 0;
      }

      else
      {
        v44 = v39;
      }

      v213 += v41 - v44;
      ++v40;
      ++v43;
    }

    while (v40 < __nel);
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v12 = v186;
    v43 = v35;
    v23 = v177;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_68;
    }
  }

  qsort(v12, __nel, 0x10uLL, sub_100018A90);
LABEL_68:
  v45 = __nel;
  if (!__nel)
  {
    v124 = 0;
    v125 = v206;
    v9 = v172;
    goto LABEL_281;
  }

  v167 = v43;
  v46 = 0;
  v47 = 0;
  v48 = v173;
  while (1)
  {
    v49 = v46;
    v50 = *v48;
    if (*v48)
    {
      break;
    }

LABEL_79:
    v46 = v49 + 1;
    v48 += 2;
    if (v49 + 1 >= v45)
    {
LABEL_80:
      v54 = 0;
      v55 = 0;
      v195 = 0;
      v182 = v49 + 1;
      v192 = v180 + 40;
      v12 = v186;
      while (1)
      {
        v191 = v54;
        v56 = &v12[16 * v54];
        v190 = v197[10];
        v57 = *v56;
        v58 = &v232[v195];
        v196 = v58;
        v194 = *(v56 + 1);
        if (!v194)
        {
          break;
        }

        if (*v58)
        {
          v59 = obj_async_wait(*v58);
        }

        else
        {
          v59 = obj_get(*(v8 + 392), 0x140000000, v194, &sm_bm_desc, 0, 0, 0, 0, &v232[v195]);
        }

        v10 = v59;
        if (v59)
        {
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v181, *v56, v194, v59);
          if (!*v196)
          {
            goto LABEL_327;
          }

          obj_release(*v196);
          v156 = 0;
          *v196 = 0;
LABEL_328:
          v157 = 1;
          goto LABEL_329;
        }

        v208 = *(*v196 + 56);
        v60 = *v56;
        if ((v7 & 0x40) != 0)
        {
          goto LABEL_89;
        }

LABEL_91:
        v61 = 0;
        v189 = v57;
        v203 = &v14[8 * v60];
        v207 = v192 + 32 * v57;
        v62 = *(v207 + 16);
        v230 = 0;
        v200 = v223;
        v63 = v183;
        if (*&v223[23].__opaque[8 * v209 + 16])
        {
          v63 = v7;
        }

        v210 = v63;
        if ((v63 & 0x40) != 0)
        {
          v61 = *v203;
        }

        v188 = *&v223[23].__opaque[8 * v209 + 16];
        v198 = v55;
        v64 = *&v62 & 0xFFFFFLL;
        v231 = 0;
        if ((v62 & 0xFFFFFu) <= v39)
        {
          LODWORD(v66) = 0;
          v212 = 0;
          v65 = 0;
          v69 = v208;
LABEL_146:
          v8 = v184;
          v55 = v198;
          if ((v210 & 0x40) != 0)
          {
            goto LABEL_147;
          }

          goto LABEL_148;
        }

        v65 = 0;
        v212 = 0;
        v66 = 0;
        v205 = &v223[24].__opaque[32];
        v67 = 1;
        v68 = v39;
        v69 = v208;
        while (1)
        {
          if (!v69)
          {
            v230 = v64;
            v231 = v68;
            v70 = v64;
            v71 = v68;
            goto LABEL_104;
          }

          if (!bitmap_range_find_first(0, v69, v68, v64 - v68, &v231))
          {
            break;
          }

          if (bitmap_range_find_first(1, v69, v231, v64 - v231, &v230))
          {
            v70 = v230;
          }

          else
          {
            v230 = v64;
            v70 = v64;
          }

          v71 = v231;
LABEL_104:
          v68 = v70;
          v72 = 100 * (v67 / 0x64) - 1;
          v73 = v70 - v71;
          if (v70 - v71 > v66)
          {
            v66 = v70 - v71;
          }

          if ((v210 & 0x40) != 0)
          {
            if (v61 && v71)
            {
              v74 = *(v207 + 8) - v61;
              spaceman_free_extent_cache_insert(*&v205[8 * v209], 0, v74, v61);
              if (v206)
              {
                v75 = (v206)(a5, v74, v61);
                if (BYTE6(v228[7]) == 1)
                {
                  v76.i64[0] = vdupq_n_s64(1uLL).u64[0];
                  v76.i64[1] = v61;
                  *&v228[5] = vaddq_s64(*&v228[5], v76);
                }
              }

              else
              {
                v75 = 0;
              }

              v69 = v208;
              v72 = 100 * (v67 / 0x64) - 1;
              v61 = 0;
              if (v212)
              {
                v79 = 1;
              }

              else
              {
                v79 = v75 == 0;
              }

              if (v79)
              {
                v80 = v212;
              }

              else
              {
                v80 = v75;
              }

              v212 = v80;
              v70 = v230;
            }

            if (v70 != v64)
            {
              v204 = v72;
              v77 = *(v207 + 8) - v61;
              v78 = v61 + v73;
LABEL_129:
              spaceman_free_extent_cache_insert(*&v205[8 * v209], 0, v77 + v71, v78);
              if (v206)
              {
                v81 = (v206)(a5, v77 + v71, v78);
                if (BYTE6(v228[7]) == 1)
                {
                  v82 = 1;
                  v83.i64[0] = vdupq_n_s64(1uLL).u64[0];
                  v83.i64[1] = v78;
                  *&v228[5] = vaddq_s64(*&v228[5], v83);
                }

                else
                {
                  v82 = 0;
                }
              }

              else
              {
                v81 = 0;
                v82 = BYTE6(v228[7]);
              }

              v69 = v208;
              v61 = 0;
              if (v212)
              {
                v84 = 1;
              }

              else
              {
                v84 = v81 == 0;
              }

              if (v84)
              {
                v85 = v212;
              }

              else
              {
                v85 = v81;
              }

              v212 = v85;
              if ((v82 & 1) != 0 && v204 == v65)
              {
                sub_10001F07C(*(v200->__sig + 392), v228);
                v61 = 0;
              }

              goto LABEL_143;
            }

            v61 += v73;
          }

          else if (v71)
          {
            if (v70 != v64)
            {
              v204 = 100 * (v67 / 0x64) - 1;
              v77 = *(v207 + 8) - v61;
              v78 = v73 + v61;
              goto LABEL_129;
            }

            *(v203 + 1) = v73;
          }

          else
          {
            *v203 = v70;
          }

LABEL_143:
          ++v67;
          ++v65;
          if (v68 >= v64)
          {
            goto LABEL_146;
          }
        }

        if ((v210 & 0x40) == 0 || !v61 || v65)
        {
          goto LABEL_146;
        }

        v93 = *(v207 + 8) - v61;
        spaceman_free_extent_cache_insert(*&v205[8 * v209], 0, v93, v61);
        if (v206)
        {
          v94 = (v206)(a5, v93, v61);
          v8 = v184;
          v55 = v198;
          if (BYTE6(v228[7]) == 1)
          {
            v95.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v95.i64[1] = v61;
            *&v228[5] = vaddq_s64(*&v228[5], v95);
          }
        }

        else
        {
          v94 = 0;
          v8 = v184;
          v55 = v198;
        }

        v65 = 0;
        v61 = 0;
        if (v212)
        {
          v122 = 1;
        }

        else
        {
          v122 = v94 == 0;
        }

        if (v122)
        {
          v123 = v212;
        }

        else
        {
          v123 = v94;
        }

        v212 = v123;
LABEL_147:
        *v203 = v61;
LABEL_148:
        v10 = v212;
        if ((v210 & 1) == 0)
        {
          goto LABEL_188;
        }

        v86 = v189 + v190 * v181;
        v87 = *(v188 + 4 * v86);
        v88 = v87 & 0xFF000000 | v66 & 0xFFFFFF;
        *(v188 + 4 * v86) = v88;
        if (v69)
        {
          v89 = v87 & 0xFE000000 | v66 & 0xFFFFFF;
          v90 = v88 | 0x1000000;
          if (*v69)
          {
            v90 = v89;
          }

          *(v188 + 4 * v86) = v90;
          v91 = v188;
          if (v64 < 0x40 || (v69[(v64 >> 6) - 1] & 0x8000000000000000) != 0)
          {
            v92 = v90 & 0xFDFFFFFF;
            goto LABEL_163;
          }
        }

        else
        {
          v90 = v88 | 0x1000000;
          v91 = v188;
        }

        v92 = v90 | 0x2000000;
LABEL_163:
        *(v91 + 4 * v86) = v92;
        if (!v222)
        {
          goto LABEL_188;
        }

        v96 = *(v207 + 20) & 0xFFFFF;
        if (v96 == *(*&v200[5].__opaque[48] + 36))
        {
          v229 = 0;
          v97 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v200, v209, v86, &v229);
          if (v97)
          {
            v98 = *v200->__opaque;
            if (v98)
            {
              v99 = (v98 + 4048);
            }

            else
            {
              v99 = (*(*(v200->__sig + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v99, v86, v97);
          }

          if (v229 == 1)
          {
            LODWORD(v222) = v222 - 1;
          }

          goto LABEL_188;
        }

        if (!v65 || v96 < 4)
        {
          goto LABEL_188;
        }

        v100 = v96 / v65;
        v101 = &__base + HIDWORD(v222);
        v102 = v92 & 0xC000000;
        v103 = v92 & 0xFFFFFC;
        v104 = v100 > *(v101 + 2) && v102 == 0;
        if (!v104 || v103 == 0)
        {
          goto LABEL_188;
        }

        v106 = 0;
        *(v101 + 2) = v100;
        *v101 = v86;
        v107 = -7;
        v108 = DWORD2(__base);
        v109 = &v215 + 2;
        while (2)
        {
          v111 = *v109;
          v109 += 4;
          v110 = v111;
          if (v111 >= v108)
          {
LABEL_181:
            v118 = __CFADD__(v107++, 1);
            if (v118)
            {
              goto LABEL_227;
            }

            continue;
          }

          break;
        }

        if (v110)
        {
          v106 = v107 + 8;
          v108 = v110;
          goto LABEL_181;
        }

        v106 = v107 + 8;
LABEL_227:
        HIDWORD(v222) = v106;
LABEL_188:
        if (v55)
        {
          v112 = 1;
        }

        else
        {
          v112 = v212 == 0;
        }

        if (!v112)
        {
          v55 = v212;
        }

        LOBYTE(v7) = v187;
        if ((v187 & 0x40) != 0 && v55)
        {
          v156 = 0;
          v157 = 1;
          goto LABEL_324;
        }

        v12 = v186;
        v14 = v193;
        if (v194)
        {
          obj_release(*v196);
          *v196 = 0;
          v113 = __nel;
          v114 = v182;
          if (v182 < __nel)
          {
            v115 = &v178[16 * v182];
            v113 = __nel;
            v116 = v182 + 1;
            do
            {
              v117 = *(v115 + 3);
              if ((v187 & 0x40) == 0 && !v117)
              {
                sub_1000A4564();
              }

              v115 += 16;
              ++v114;
              if (v117)
              {
                v118 = 1;
              }

              else
              {
                v118 = v116 >= __nel;
              }

              ++v116;
            }

            while (!v118);
            v182 = v114;
            if (v117)
            {
              v119 = obj_get(*(v8 + 392), 0x140000080, v117, &sm_bm_desc, 0, 0, 0, 0, v196);
              if (v119 == 45 || v119 == 16)
              {
                v10 = 0;
                *v196 = 0;
                goto LABEL_214;
              }

              v10 = v119;
              if (!v119)
              {
LABEL_214:
                v113 = __nel;
                goto LABEL_215;
              }

              log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v8 + 384) + 212), v181, *v115, v117, v119);
LABEL_327:
              v156 = 0;
              goto LABEL_328;
            }
          }

LABEL_215:
          v121 = v191;
          v195 = (v195 + 1) & 0xF;
        }

        else
        {
          v113 = __nel;
          v121 = v191;
        }

        v39 = 0;
        v54 = v121 + 1;
        if (v54 >= v113)
        {
          v199 = v55;
          v126 = 0;
          v127 = 0;
          v128 = 0;
          v129 = (v113 - 1);
          while (1)
          {
            v130 = (v126 + v185);
            v131 = v192 + 32 * v130;
            v132 = &v193[8 * v130];
            if ((v7 & 0x40) != 0)
            {
              if (*v132)
              {
                if (v129 != v126)
                {
                  sub_1000A4590();
                }

                if (v128)
                {
                  sub_1000A45BC();
                }

                if (v127)
                {
                  sub_1000A45E8();
                }

                v128 = *(v131 + 8) - *v132 + (*(v131 + 16) & 0xFFFFF);
                v113 = __nel;
                v127 = *v132;
              }

              goto LABEL_268;
            }

            v133 = v10;
            v134 = *v132;
            if (v134)
            {
              break;
            }

LABEL_253:
            v139 = *(v132 + 1);
            if (v139)
            {
              v140 = *(v131 + 8) + (*(v131 + 16) & 0xFFFFF) - v139;
              if (v127)
              {
                if (v127 + v128 == v140)
                {
                  v10 = 0;
                  v139 += v127;
                  v140 = v128;
LABEL_262:
                  v113 = __nel;
                  v142 = v199;
                  if (v199)
                  {
                    v143 = 1;
                  }

                  else
                  {
                    v143 = v10 == 0;
                  }

                  if (!v143)
                  {
                    v142 = v10;
                  }

                  v199 = v142;
                  v128 = v140;
                  v127 = v139;
                  goto LABEL_268;
                }

                spaceman_free_extent_cache_insert(*&v223[24].__opaque[8 * v209 + 32], 0, v128, v127);
                if (v206)
                {
                  v10 = (v206)(a5, v128, v127);
                  if (BYTE6(v228[7]) == 1)
                  {
                    v141.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v141.i64[1] = v127;
                    *&v228[5] = vaddq_s64(*&v228[5], v141);
                  }

                  goto LABEL_262;
                }
              }

              v10 = 0;
              goto LABEL_262;
            }

            v10 = v133;
            v113 = __nel;
LABEL_268:
            if (++v126 >= v113)
            {
              if (v127)
              {
                spaceman_free_extent_cache_insert(*&v223[24].__opaque[8 * v209 + 32], 0, v128, v127);
                v125 = v206;
                v9 = v172;
                v43 = v167;
                if (v206)
                {
                  v10 = (v206)(a5, v128, v127);
                  if (BYTE6(v228[7]) == 1)
                  {
                    v144.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v144.i64[1] = v127;
                    *&v228[5] = vaddq_s64(*&v228[5], v144);
                  }
                }

                else
                {
                  v10 = 0;
                }

                v12 = v186;
                v23 = v177;
                if (v199)
                {
                  v145 = 1;
                }

                else
                {
                  v145 = v10 == 0;
                }

                if (v145)
                {
                  v124 = v199;
                }

                else
                {
                  v124 = v10;
                }
              }

              else
              {
                v125 = v206;
                v12 = v186;
                v9 = v172;
                v23 = v177;
                v43 = v167;
                v124 = v199;
              }

LABEL_281:
              if (v125 == sub_100018900)
              {
                sub_100018AA8(v8);
              }

              obj_unlock(v226, 1u);
              v15 = v209;
              if (BYTE6(v228[7]) == 1)
              {
                if (sub_100016780(v8, v228))
                {
                  v146 = v179 >> 1;
                  if (v179 <= 1)
                  {
                    v146 = 1;
                  }

                  v179 = v146;
                  v147 = 1;
                }

                else
                {
                  v148 = v197[10];
                  v149 = 4 * v179;
                  if (v148 < 4 * v179)
                  {
                    v149 = v197[10];
                  }

                  if (v148 >= v179 + 1)
                  {
                    v148 = v179 + 1;
                  }

                  if (!v168)
                  {
                    v148 = v149;
                  }

                  v179 = v148;
                  v147 = v168;
                }

                v168 = v147;
              }

              if (*(v180 + 36) == v43)
              {
                obj_release(v226);
                v226 = 0;
                v181 = (v181 + 1);
              }

              v21 = v176;
              v22 = v181;
              if (v124)
              {
                v156 = 0;
                v157 = 0;
                v10 = v124;
                goto LABEL_329;
              }

              goto LABEL_33;
            }
          }

          v7 = *(v131 + 8);
          if (v127)
          {
            if (v127 + v128 == v7)
            {
              v135 = 0;
              v134 += v127;
              v7 = v128;
LABEL_247:
              v137 = v199;
              if (v199)
              {
                v138 = 1;
              }

              else
              {
                v138 = v135 == 0;
              }

              v133 = v135;
              if (!v138)
              {
                v137 = v135;
              }

              v199 = v137;
              v128 = v7;
              v127 = v134;
              LOBYTE(v7) = v187;
              goto LABEL_253;
            }

            spaceman_free_extent_cache_insert(*&v223[24].__opaque[8 * v209 + 32], 0, v128, v127);
            if (v206)
            {
              v135 = (v206)(a5, v128, v127);
              if (BYTE6(v228[7]) == 1)
              {
                v136.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v136.i64[1] = v127;
                *&v228[5] = vaddq_s64(*&v228[5], v136);
              }

              goto LABEL_247;
            }
          }

          v135 = 0;
          goto LABEL_247;
        }
      }

      v208 = 0;
      v60 = *v56;
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_91;
      }

LABEL_89:
      if (v60)
      {
        *&v14[8 * v60] = *&v14[8 * v60 - 8];
        *&v14[8 * *v56 - 8] = 0;
        v60 = *v56;
      }

      goto LABEL_91;
    }
  }

  v51 = obj_get(*(v8 + 392), 0x140000080, v50, &sm_bm_desc, 0, 0, 0, 0, &v232[v47]);
  v45 = __nel;
  if (!v51)
  {
LABEL_78:
    ++v47;
    v14 = v193;
    if (v47 == 16)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v52 = v51;
  if (v51 == 45 || v51 == 16)
  {
    v232[v47] = 0;
    goto LABEL_78;
  }

  log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v181, *(v48 - 2), v50, v51);
  v156 = 0;
  v157 = 1;
  v10 = v52;
LABEL_324:
  v12 = v186;
  v14 = v193;
LABEL_329:
  if (v10 != 0 && v169)
  {
LABEL_330:
    spaceman_free_extent_cache_bitmap_scan_finished(*&v223[24].__opaque[8 * v209 + 32], v213, 0);
    if (v156)
    {
      v158 = v209;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v156)
  {
    goto LABEL_335;
  }

LABEL_333:
  v158 = v209;
LABEL_334:
  pthread_mutex_unlock(&v223[v158 + 10]);
LABEL_335:
  if (v227 && (v175 & 1) != 0)
  {
    obj_unlock(v227, 1u);
  }

  v159 = v157 ^ 1;
  if (!v226)
  {
    v159 = 1;
  }

  if ((v159 & 1) == 0)
  {
    sub_100016780(v8, v228);
    if (v206 == sub_100018900)
    {
      sub_100018AA8(v8);
    }

    obj_unlock(v226, 1u);
  }

LABEL_344:
  if (v227)
  {
    obj_release(v227);
  }

  if (v226)
  {
    obj_release(v226);
  }

  for (i = 0; i != 16; ++i)
  {
    v161 = v232[i];
    if (v161)
    {
      obj_async_wait(v161);
      obj_release(v232[i]);
    }
  }

  if ((v7 & 2) == 0)
  {
    pthread_mutex_unlock(v223 + 6);
  }

LABEL_354:
  if (v14)
  {
    _apfs_free(v14, 8 * v197[10]);
  }

  if (v12)
  {
    _apfs_free(v12, 16 * v197[10]);
  }

  obj_release(v223);
LABEL_359:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v10;
}

uint64_t sub_100018900(void *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (spaceman_get(a1, &v14) || (v13 = spaceman_extent_check(a1, v14, a2, a3), obj_release(v14), !v13))
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
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (nx_ratelimit_log_allowed(a1))
  {
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_100018A90(uint64_t a1, uint64_t a2)
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

uint64_t sub_100018AA8(uint64_t a1)
{
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100018B5C(uint64_t a1, uint64_t a2)
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

uint64_t spaceman_scan_free_blocks(uint64_t a1, int a2, unsigned int a3, char a4)
{
  dev_features(*(a1 + 384));
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

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a1 + 944) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v7 = spaceman_iterate_free_extents_internal(a1, v8 | a3, 0, 0, a1);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v7;
}

uint64_t spaceman_free_queue_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t spaceman_fq_tree_find_overlap(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = 0;
  v14 = spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v25);
  if (v14)
  {
    v15 = v14;
    log_err("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (*(a1 + 384) + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > obj_xid(a2))
    {
LABEL_23:
      v15 = 0;
    }

    else
    {
      v17 = a5 + a4;
      do
      {
        v21 = 0x1000000008;
        v22 = v16;
        v23 = a4;
        v18 = bt_lookup_variant(v25, 0, &v22, &v21 + 1, 16, &v24, &v21, 1, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v24 = 1;
          }

          if (v16 == v22 && v24 + v23 > a4 && v17 > v23)
          {
            goto LABEL_27;
          }
        }

        v21 = 0x1000000008;
        v22 = v16;
        v23 = a4;
        v19 = bt_lookup_variant(v25, 0, &v22, &v21 + 1, 16, &v24, &v21, 4, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v24 = 1;
          }

          if (v16 == v22 && v24 + v23 > a4 && v17 > v23)
          {
LABEL_27:
            v15 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v16;
      }

      while (v16 <= obj_xid(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      log_err("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (*(a1 + 384) + 212), v15);
    }

LABEL_24:
    obj_release(v25);
  }

  return v15;
}

BOOL spaceman_fq_tree_over_threshold(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
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
      v10 = v9 >= obj_size_phys(a3) >> 1;
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
  v10 = v11 >= obj_size_phys(a3) >> 2;
  return !v10;
}

uint64_t spaceman_ip_block_index(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 376);
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

  v24 = 0;
  v25 = 0;
  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v17 = btree_create(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, extent_list_key_cmp, 0, (a2 + 1512));
  if (v17)
  {
    return v17;
  }

  v33 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v28 = 0;
  v29 = 0;
  v17 = nx_metadata_fragmented_extent_list_tree_get(a1, *(*(a2 + 376) + 176), &v33);
  if (v17)
  {
    return v17;
  }

  v30 = 0;
  bt_iterator_init(v31, v33, 0, 0, &v30, 8, 8, &v28, 0x10u);
  v13 = v19;
  if (!bt_iterator_ended(v31))
  {
    while (1)
    {
      v26 = v28;
      v27[0] = v30;
      v27[1] = v29;
      v21 = bt_insert(*v15, 0, &v26, 8, v27, 0x10u, 0);
      if (v21)
      {
        break;
      }

      v20 = bt_iterator_next(v31);
      if (v20)
      {
        v13 = v20;
        v22 = (*(a1 + 384) + 212);
        v23 = strerror(v20);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v22, v23, v13);
        goto LABEL_26;
      }

      if (bt_iterator_ended(v31))
      {
        obj_release(v33);
        goto LABEL_8;
      }
    }

    v13 = v21;
LABEL_26:
    obj_release(v33);
    return v13;
  }

  obj_release(v33);
  if (!v13)
  {
LABEL_8:
    *&v31[0] = a3;
    LODWORD(v28) = 8;
    LODWORD(v27[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v31, &v28, 8, &v24, v27, 1, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v31[0] >= v25)
    {
      return 2;
    }

    v13 = 0;
    v11 = v24 + a3 - *&v31[0];
    goto LABEL_12;
  }

  return v13;
}
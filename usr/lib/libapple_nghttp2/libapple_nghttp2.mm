uint64_t nghttp2_session_client_new2(uint64_t *a1, int64x2_t *a2, uint64_t a3, __int128 *a4)
{
  v7 = 0;
  result = session_new(&v7, a2, a3, 0, a4, 0);
  if (!result)
  {
    v6 = v7;
    *(v7 + 2592) = 1;
    *a1 = v6;
  }

  return result;
}

uint64_t session_new(uint64_t *a1, int64x2_t *a2, uint64_t a3, int a4, __int128 *a5, uint64_t (**a6)(uint64_t, uint64_t, void))
{
  v53 = 0;
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = &mem_default;
  }

  v12 = v11[3](1, 2760, *v11);
  *a1 = v12;
  if (!v12)
  {
    return 4294966395;
  }

  v13 = *v11;
  v14 = *(v11 + 1);
  *(v12 + 2392) = v11[4];
  *(v12 + 2360) = v13;
  *(v12 + 2376) = v14;
  v15 = *a1;
  v16 = (*a1 + 2360);
  *(*a1 + 2620) = xmmword_298402650;
  *(v15 + 2636) = 0xFFFF;
  *(v15 + 2724) = 0;
  *(v15 + 2612) = 0x7FFFFFFF7FFFFFFFLL;
  *(v15 + 2712) = -1;
  *(v15 + 2720) = 1;
  *(v15 + 2722) = -1;
  *(v15 + 2416) = xmmword_298402660;
  *(v15 + 2432) = xmmword_298402670;
  *(v15 + 2448) = xmmword_298402660;
  *(v15 + 2464) = xmmword_298402670;
  if (a4)
  {
    *(v15 + 2723) = 1;
  }

  *(v15 + 2644) = 0x100001000;
  *(v15 + 2656) = 0x40000000FFFFLL;
  *(v15 + 2664) = -1;
  *(v15 + 2672) = xmmword_298402680;
  *(v15 + 2688) = 0x40000000FFFFLL;
  *(v15 + 2696) = -1;
  *(v15 + 2704) = -1;
  *(v15 + 2512) = 200;
  *(v15 + 2652) = 100;
  *(v15 + 2552) = 1000;
  *(v15 + 2560) = xmmword_298402690;
  *(v15 + 2576) = 8;
  if (a5)
  {
    v17 = *(a5 + 18);
    if ((v17 & 1) != 0 && *(a5 + 22))
    {
      *(v15 + 2708) |= 1u;
    }

    if ((v17 & 2) != 0)
    {
      *(v15 + 2652) = *(a5 + 19);
      if ((v17 & 0x10) == 0)
      {
LABEL_13:
        if ((v17 & 4) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        if (*(a5 + 23))
        {
          *(v15 + 2708) |= 2u;
        }

LABEL_21:
        if ((v17 & 8) != 0 && *(a5 + 24))
        {
          *(v15 + 2708) |= 4u;
        }

        if ((v17 & 0x20) != 0)
        {
          v21 = *(a5 + 136);
          *(v15 + 2726) = *(a5 + 120);
          *(v15 + 2742) = v21;
          v17 = *(a5 + 18);
          if ((v17 & 0x80) == 0)
          {
LABEL_26:
            if ((v17 & 0x40) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }
        }

        else if ((v17 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        *(*a1 + 2716) = *(a5 + 21);
        if ((v17 & 0x40) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        if (*(a5 + 25))
        {
          *(*a1 + 2708) |= 8u;
        }

LABEL_32:
        if ((v17 & 0x100) != 0)
        {
          *(*a1 + 2560) = *(a5 + 4);
        }

        if ((v17 & 0x200) != 0)
        {
          v19 = *(a5 + 5);
          if ((v17 & 0x800) == 0)
          {
LABEL_39:
            if ((v17 & 0x1000) != 0)
            {
              v22 = *(a5 + 7);
              if (v22)
              {
                *(*a1 + 2568) = v22;
              }
            }

            if ((v17 & 0x4000) != 0 && *(a5 + 29))
            {
              *(*a1 + 2708) |= 0x40u;
            }

            if ((v17 & 0x8000) != 0)
            {
              v23 = *a1;
              v24 = *a5;
              *(v23 + 2432) = *a5;
              *(v23 + 2416) = v24;
              *(v23 + 2440) = 0;
              if ((v17 & 0x10000) == 0)
              {
LABEL_47:
                if ((v17 & 0x20000) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_52;
              }
            }

            else if ((v17 & 0x10000) == 0)
            {
              goto LABEL_47;
            }

            *(*a1 + 2576) = *(a5 + 8);
            if ((v17 & 0x20000) == 0)
            {
LABEL_48:
              if ((v17 & 0x80000000) == 0)
              {
LABEL_49:
                v20 = *a1;
                goto LABEL_55;
              }

LABEL_53:
              v27 = *(a5 + 27);
              v20 = *a1;
              if (v27)
              {
                *(v20 + 2708) |= 0x80u;
              }

              goto LABEL_55;
            }

LABEL_52:
            v25 = *a1;
            v26 = a5[1];
            *(v25 + 2464) = v26;
            *(v25 + 2448) = v26;
            *(v25 + 2472) = 0;
            if ((v17 & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v19 = 4096;
          if ((v17 & 0x800) == 0)
          {
            goto LABEL_39;
          }
        }

        *(*a1 + 2552) = *(a5 + 6);
        goto LABEL_39;
      }
    }

    else if ((v17 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    *(v15 + 2512) = *(a5 + 20);
    if ((v17 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v19 = 4096;
  v20 = v15;
LABEL_55:
  *(v20 + 808) = v16;
  *(v20 + 836) = 0;
  *(v20 + 824) = 4096;
  v28 = (*(v15 + 2368))(1024, *(v15 + 2360));
  *(v20 + 776) = v28;
  if (!v28)
  {
    v18 = 4294966395;
LABEL_69:
    (*(v15 + 2376))(*a1, *(v15 + 2360));
    return v18;
  }

  *(v20 + 784) = 127;
  *(v20 + 792) = 0u;
  *(v20 + 816) = 0;
  *(v20 + 832) = 0;
  bzero((v20 + 840), 0x400uLL);
  v29 = 0;
  if (v19 <= 0xFFF)
  {
    *(v20 + 824) = v19;
    v29 = 1;
  }

  *(v20 + 1880) = v29;
  *(v20 + 1864) = v19;
  *(v20 + 1872) = 0xFFFFFFFFLL;
  v18 = nghttp2_hd_inflate_init(*a1 + 1888, v16);
  if (v18)
  {
LABEL_68:
    hd_context_free((*a1 + 776));
    goto LABEL_69;
  }

  v30 = *a1;
  v31 = *(*a1 + 2560) + 16393;
  if (v31 < 0x400A)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31 / 0x400A;
  }

  if (!v32)
  {
    v18 = 4294966795;
    goto LABEL_67;
  }

  v54 = 0;
  v33 = buf_chain_new(&v54, 16394, v16);
  if (v33)
  {
    v18 = v33;
    v30 = *a1;
LABEL_67:
    nghttp2_hd_inflate_free(v30[118].i64);
    goto LABEL_68;
  }

  v30[31].i64[0] = 10;
  v35 = v54;
  v30[27].i64[1] = v54;
  v30[28].i64[0] = v35;
  v30[28].i64[1] = v16;
  *(v35 + 24) = vaddq_s64(*(v35 + 24), vdupq_n_s64(0xAuLL));
  v30[29].i64[0] = 16394;
  v30[29].i64[1] = v32;
  v30[30] = vdupq_n_s64(1uLL);
  v36 = a2[14].i64[0];
  if (v36)
  {
    v36(&v53, 4);
    LODWORD(v36) = v53;
  }

  else
  {
    v53 = 0;
  }

  v37 = *a1;
  v37->i64[0] = 0;
  v37->i64[1] = v16;
  v37[1].i32[0] = v36;
  v37[1].i64[1] = 0;
  v37[2].i64[0] = 0;
  active_outbound_item_reset((*a1 + 432), v16);
  v38 = *a1;
  v39 = *a2;
  v40 = a2[1];
  v38[135] = a2[2];
  v38[134] = v40;
  v38[133] = v39;
  v41 = a2[3];
  v42 = a2[4];
  v43 = a2[5];
  v38[139] = a2[6];
  v38[138] = v43;
  v38[137] = v42;
  v38[136] = v41;
  v44 = a2[7];
  v45 = a2[8];
  v46 = a2[9];
  v38[143] = a2[10];
  v38[142] = v46;
  v38[141] = v45;
  v38[140] = v44;
  v47 = a2[11];
  v48 = a2[12];
  v49 = a2[13];
  v38[147].i64[0] = a2[14].i64[0];
  v38[146] = v49;
  v38[145] = v48;
  v38[144] = v47;
  *(*a1 + 2400) = a3;
  session_inbound_frame_reset(*a1);
  v50 = *a1;
  if (a4)
  {
    if ((*(v50 + 2708) & 2) != 0)
    {
      *(v50 + 736) = 1;
    }

    else
    {
      *(v50 + 736) = 0;
      *(v50 + 720) = 24;
    }
  }

  else
  {
    *(v50 + 736) = 1;
    *(v50 + 504) = 3;
    nghttp2_bufs_add(v50 + 440, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n", 0x18uLL);
  }

  for (i = 0; i != 320; i += 40)
  {
    v52 = (*a1 + i);
    v52[14] = 0;
    v52[15] = v16;
    v52[16] = 0;
    v52[17] = 0;
    v52[18] = stream_less;
  }

  return 0;
}

uint64_t buf_chain_new(void *a1, uint64_t a2, void *a3)
{
  v6 = (a3[1])(48, *a3);
  *a1 = v6;
  if (v6)
  {
    *v6 = 0;
    v7 = *a1;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0u;
    *(v7 + 8) = 0u;
    if (!a2)
    {
      return 0;
    }

    v8 = (a3[4])(0, a2, *a3);
    if (v8)
    {
      v9 = v8;
      result = 0;
      v11 = *(v7 + 8);
      v12 = v9 + *(v7 + 32) - v11;
      *(v7 + 24) = v9 + *(v7 + 24) - v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v9 + *(v7 + 40) - v11;
      *(v7 + 8) = v9;
      *(v7 + 16) = v9 + a2;
      return result;
    }

    (a3[2])(*a1, *a3);
  }

  return 4294966395;
}

uint64_t nghttp2_hd_inflate_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 60) = 0;
  *(a1 + 48) = 4096;
  v3 = (*(a2 + 8))(1024, *a2);
  *a1 = v3;
  if (!v3)
  {
    return 4294966395;
  }

  result = 0;
  *(a1 + 200) = xmmword_298402620;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 127;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 224) = 0x100000000;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 233) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t active_outbound_item_reset(uint64_t *a1, uint64_t *a2)
{
  nghttp2_outbound_item_free(*a1, a2);
  result = (a2[2])(*a1, *a2);
  *a1 = 0;
  v5 = a1 + 1;
  v6 = a1[7];
  v7 = v6;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v8 = v5[1];
    v5[5] = v8;
    v9 = v8 + a1[8];
    v5[3] = v9;
    v5[4] = v9;
    if (!--v7)
    {
      v10 = *v5;
      *v5 = 0;
      if (v10)
      {
        do
        {
          v11 = a1[3];
          v12 = *v10;
          (v11[2])(v10[1], *v11);
          v10[1] = 0;
          result = (v11[2])(v10, *v11);
          v10 = v12;
        }

        while (v12);
        v6 = a1[7];
      }

      a1[6] = v6;
      break;
    }
  }

  a1[2] = a1[1];
  *(a1 + 18) = 0;
  return result;
}

double session_inbound_frame_reset(uint64_t a1)
{
  v2 = *(a1 + 524);
  if (*(a1 + 524) > 4u)
  {
    if (*(a1 + 524) > 6u)
    {
      if (v2 != 7)
      {
        if (v2 == 8)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    else if (v2 != 5)
    {
      if (v2 == 6)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v3 = *(a1 + 536);
LABEL_16:
    (*(a1 + 2376))(v3, *(a1 + 2360));
    goto LABEL_17;
  }

  if (*(a1 + 524) <= 1u)
  {
    if (!*(a1 + 524))
    {
      goto LABEL_17;
    }

    v3 = *(a1 + 552);
    goto LABEL_16;
  }

  if ((v2 - 2) < 2)
  {
    goto LABEL_17;
  }

  if (v2 == 4)
  {
    (*(a1 + 2376))(*(a1 + 536), *(a1 + 2360));
    (*(a1 + 2376))(*(a1 + 608), *(a1 + 2360));
    *(a1 + 608) = 0;
    *(a1 + 704) = 0u;
    goto LABEL_17;
  }

LABEL_18:
  if ((*(a1 + (v2 >> 3) + 2726) >> (v2 & 7)))
  {
    goto LABEL_17;
  }

  if (v2 == 12)
  {
    if ((*(a1 + 2716) & 2) != 0)
    {
      v6 = *(a1 + 528);
      if (v6)
      {
        v3 = *(v6 + 8);
        goto LABEL_16;
      }
    }
  }

  else if (v2 == 10 && (*(a1 + 2716) & 1) != 0)
  {
    v5 = *(a1 + 528);
    if (v5)
    {
      v3 = *v5;
      goto LABEL_16;
    }
  }

LABEL_17:
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 736) = 2;
  *(a1 + 640) = a1 + 740;
  *(a1 + 632) = a1 + 740;
  *(a1 + 616) = a1 + 740;
  *(a1 + 624) = a1 + 772;
  *(a1 + 648) = a1 + 749;
  (*(a1 + 2376))(*(a1 + 656), *(a1 + 2360));
  result = 0.0;
  *(a1 + 720) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  return result;
}

uint64_t nghttp2_outbound_item_free(uint64_t result, uint64_t *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + 12);
  if (v3 > 4)
  {
    if (*(result + 12) > 6u)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (v3 != 5)
    {
      if (v3 == 6)
      {
        return result;
      }

      goto LABEL_17;
    }

LABEL_14:
    v4 = (result + 24);
    goto LABEL_25;
  }

  if (*(result + 12) <= 1u)
  {
    if (!*(result + 12))
    {
      return result;
    }

    v4 = (result + 40);
    goto LABEL_25;
  }

  if (v3 - 2 < 2)
  {
    return result;
  }

  if (v3 == 4)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (!*(result + 96))
  {
    return result;
  }

  if (v3 == 16 || v3 == 12)
  {
    v5 = *(result + 16);
    if (!v5)
    {
      return result;
    }

    v4 = (v5 + 8);
    goto LABEL_25;
  }

  if (v3 != 10)
  {
    __assert_rtn("nghttp2_outbound_item_free", "nghttp2_outbound_item.c", 122, "0");
  }

  v4 = *(result + 16);
  if (v4)
  {
LABEL_25:
    v6 = *v4;
    v7 = a2[2];
    v8 = *a2;

    return v7(v6, v8);
  }

  return result;
}

uint64_t nghttp2_bufs_add(uint64_t a1, char *__src, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  do
  {
    while (1)
    {
      v6 = *(a1 + 8);
      v7 = *(v6 + 32);
      v8 = *(v6 + 16) - v7;
      if (v8)
      {
        break;
      }

      result = bufs_alloc_chain(a1);
      if (result)
      {
        return result;
      }
    }

    if (v8 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *(v6 + 16) - v7;
    }

    memcpy(*(v6 + 32), __src, v10);
    *(v6 + 32) = v7 + v10;
    __src += v10;
    v3 -= v10;
  }

  while (v3);
  return 0;
}

uint64_t nghttp2_session_add_settings(uint64_t a1, char a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 2722);
  if (a2)
  {
    if (!a4)
    {
      if (*(a1 + 2544) >= *(a1 + 2552))
      {
        return 4294966392;
      }

      goto LABEL_14;
    }

    return 4294966795;
  }

  if (!nghttp2_iv_check(a3, a4))
  {
    return 4294966795;
  }

  if (!v4)
  {
LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  v9 = a3 + 1;
  v10 = v4;
  do
  {
    if (*(v9 - 1) == 9)
    {
      if (v8 == 255)
      {
        v8 = *v9;
      }

      else if (*v9 != v8)
      {
        return 4294966795;
      }
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  v11 = 0;
LABEL_15:
  v13 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v13)
  {
    return 4294966395;
  }

  v14 = v13;
  if (v11)
  {
    v15 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v17 = 0;
    goto LABEL_30;
  }

  if ((v4 - 1) > 0x1FFFFFFFFFFFFFFELL)
  {
    goto LABEL_47;
  }

  v19 = (*(a1 + 2368))(8 * v4, *(a1 + 2360));
  if (!v19)
  {
    goto LABEL_47;
  }

  v15 = v19;
  memcpy(v19, a3, 8 * v4);
  if (a2)
  {
    goto LABEL_24;
  }

LABEL_18:
  v16 = (*(a1 + 2368))(24, *(a1 + 2360));
  if (!v16)
  {
LABEL_46:
    (*(a1 + 2376))(v15, *(a1 + 2360));
LABEL_47:
    (*(a1 + 2376))(v14, *(a1 + 2360));
    return 4294966395;
  }

  v17 = v16;
  if ((v11 & 1) == 0)
  {
    if ((v4 - 1) <= 0x1FFFFFFFFFFFFFFELL)
    {
      v20 = (*(a1 + 2368))();
      if (v20)
      {
        v18 = v20;
        memcpy(v20, a3, 8 * v4);
        goto LABEL_29;
      }
    }

    v17[1] = 0;
    (*(a1 + 2376))(v17, *(a1 + 2360));
    goto LABEL_46;
  }

  v18 = 0;
LABEL_29:
  v17[1] = v18;
  v17[2] = v4;
  *v17 = 0;
LABEL_30:
  *(v14 + 137) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 96) = 0u;
  *v14 = 6 * v4;
  *(v14 + 12) = 4;
  *(v14 + 13) = a2;
  *(v14 + 8) = 0;
  *(v14 + 14) = 0;
  *(v14 + 16) = v4;
  *(v14 + 24) = v15;
  v21 = nghttp2_session_add_item(a1, v14);
  if (v21)
  {
    v12 = v21;
    if (v21 >= -900)
    {
      __assert_rtn("nghttp2_session_add_settings", "nghttp2_session.c", 7221, "nghttp2_is_fatal(rv)");
    }

    if (v17)
    {
      (*(a1 + 2376))(v17[1], *(a1 + 2360));
      (*(a1 + 2376))(v17, *(a1 + 2360));
    }

    (*(a1 + 2376))(*(v14 + 24), *(a1 + 2360));
    (*(a1 + 2376))(v14, *(a1 + 2360));
  }

  else
  {
    if (a2)
    {
      ++*(a1 + 2544);
    }

    else
    {
      v22 = (a1 + 2408);
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
      *v23 = v17;
    }

    if ((v11 & 1) == 0)
    {
      v24 = &a3[2 * v4];
      v25 = v24;
      v26 = v4;
      while (*(v25 - 2) != 3)
      {
        v25 -= 2;
        if (!--v26)
        {
          goto LABEL_51;
        }
      }

      *(a1 + 2712) = *(v25 - 1);
LABEL_51:
      v28 = &a3[2 * v4];
      v29 = v4;
      do
      {
        if (*(v28 - 2) == 2)
        {
          *(a1 + 2720) = *(v28 - 1);
          break;
        }

        v28 -= 2;
        --v29;
      }

      while (v29);
      while (*(v24 - 2) != 8)
      {
        v24 -= 2;
        if (!--v4)
        {
          goto LABEL_60;
        }
      }

      *(a1 + 2721) = *(v24 - 1);
    }

LABEL_60:
    v12 = 0;
    if (v8 == 255)
    {
      v30 = 0;
    }

    else
    {
      v30 = v8;
    }

    *(a1 + 2722) = v30;
  }

  return v12;
}

uint64_t nghttp2_nv_array_copy(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = (a2 + 32);
    v9 = a3;
    do
    {
      if ((*v8 & 2) == 0)
      {
        v7 += *(v8 - 2) + 1;
      }

      if ((*v8 & 4) == 0)
      {
        v7 += *(v8 - 1) + 1;
      }

      v8 += 40;
      --v9;
    }

    while (v9);
    v10 = (*(a4 + 8))(v7 + 40 * a3, *a4);
    *a1 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = (v10 + 40 * a3);
      while (1)
      {
        v14 = a2 + 40 * v12;
        v15 = *(v14 + 32);
        *(v11 + 32) = v15;
        if ((v15 & 2) != 0)
        {
          *v11 = *v14;
          *(v11 + 16) = *(v14 + 16);
          if ((v15 & 4) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = *(v14 + 16);
          if (v16)
          {
            memcpy(v13, *v14, v16);
            v17 = *(v14 + 16);
          }

          else
          {
            v17 = 0;
          }

          *v11 = v13;
          *(v11 + 16) = v17;
          v13[v17] = 0;
          v18 = *(v11 + 16);
          if (v18)
          {
            v19 = *v11;
            do
            {
              *v19 = DOWNCASE_TBL[*v19];
              ++v19;
              --v18;
            }

            while (v18);
          }

          v13 += *(v14 + 16) + 1;
          if ((*(v14 + 32) & 4) == 0)
          {
LABEL_20:
            v20 = *(v14 + 24);
            if (v20)
            {
              memcpy(v13, *(v14 + 8), v20);
              v21 = *(v14 + 24);
            }

            else
            {
              v21 = 0;
            }

            *(v11 + 8) = v13;
            *(v11 + 24) = v21;
            v13[v21] = 0;
            v13 += *(v14 + 24) + 1;
            goto LABEL_24;
          }
        }

        *(v11 + 8) = *(v14 + 8);
        *(v11 + 24) = *(v14 + 24);
LABEL_24:
        v11 += 40;
        if (++v12 == a3)
        {
          return 0;
        }
      }
    }

    return 4294966395;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t submit_request_shared(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 2723))
  {
    return 4294966791;
  }

  v8 = !a4 || !*(a4 + 16);
  return submit_headers_shared_nva(a1, v8, -1, a2, a3, a4, a5);
}

uint64_t nghttp2_submit_request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v9 = 0;
  v10 = 0uLL;
  if (a5)
  {
    LODWORD(v9) = 1;
    v10 = *a5;
    v7 = &v9;
  }

  else
  {
    v7 = 0;
  }

  return submit_request_shared(a1, a3, a4, v7, a6);
}

uint64_t submit_headers_shared_nva(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  LODWORD(v10) = a3;
  v22 = 0;
  v13 = nghttp2_nv_array_copy(&v22, a4, a5, a1 + 2360);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = v22;
  v15 = (*(a1 + 2368))(160, *(a1 + 2360));
  v16 = v15;
  if (!v15)
  {
    v18 = 4294966395;
LABEL_15:
    (*(a1 + 2376))(v14, *(a1 + 2360));
    (*(a1 + 2376))(v16, *(a1 + 2360));
    return v18;
  }

  *(v15 + 96) = 0u;
  *(v15 + 137) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  if (a6 && *(a6 + 2))
  {
    v17 = *a6;
    *(v15 + 112) = *(a6 + 2);
    *(v15 + 96) = v17;
  }

  *(v15 + 120) = a7;
  if (v10 == -1)
  {
    v10 = *(a1 + 2592);
    if ((v10 & 0x80000000) != 0)
    {
      v18 = 4294966787;
      goto LABEL_15;
    }

    v19 = 0;
    *(a1 + 2592) = v10 + 2;
    v18 = v10;
  }

  else
  {
    v18 = 0;
    v19 = 3;
  }

  *v15 = 0;
  *(v15 + 12) = 1;
  *(v15 + 13) = a2 & 0x21 | 4;
  *(v15 + 8) = v10;
  *(v15 + 14) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = v14;
  *(v15 + 48) = a5;
  *(v15 + 56) = v19;
  *(v15 + 24) = 0x1000000000;
  *(v15 + 32) = 0;
  v20 = nghttp2_session_add_item(a1, v15);
  if (v20)
  {
    v14 = *(v16 + 40);
    v18 = v20;
    goto LABEL_15;
  }

  return v18;
}

uint64_t session_after_frame_sent1(uint64_t a1)
{
  v2 = *(a1 + 432);
  v3 = *(v2 + 12);
  if (v3 == 5 || v3 == 1)
  {
    v5 = **(a1 + 448);
    if (v5 && *(v5 + 32) != *(v5 + 24))
    {
      return 0;
    }
  }

  else if (!*(v2 + 12))
  {
    v6 = nghttp2_map_find(a1, *(v2 + 8));
    if (!v6 || (v7 = v6, v8 = *(v6 + 116), (v8 & 2) != 0) || *v6 == 5)
    {
      *(a1 + 2620) -= *v2;
      goto LABEL_14;
    }

    *(a1 + 2620) -= *v2;
    *(v6 + 84) -= *v2;
    if (!*(v2 + 121))
    {
LABEL_14:
      v9 = *(a1 + 2192);
      if (v9)
      {
        if (v9(a1, v2, *(a1 + 2400)))
        {
          return 4294966394;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    *(v6 + 64) = 0;
    *(v6 + 116) = v8 & 0xF1;
    if (*(v6 + 118))
    {
      session_ob_data_remove(a1, v6);
    }

    v14 = *(a1 + 2192);
    if (!v14 || !v14(a1, v2, *(a1 + 2400)))
    {
      if ((*(v2 + 13) & 1) == 0)
      {
        return 0;
      }

      v15 = *(v7 + 117);
      *(v7 + 117) = v15 | 2;
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      result = nghttp2_session_close_stream(a1, *(v7 + 80), 0);
      goto LABEL_47;
    }

    return 4294966394;
  }

  v11 = *(a1 + 2192);
  if (v11)
  {
    if (v11(a1, *(a1 + 432), *(a1 + 2400)))
    {
      return 4294966394;
    }

    v3 = *(v2 + 12);
  }

  result = 0;
  if (v3 > 6)
  {
    if (v3 == 7)
    {
      if ((*(v2 + 96) & 2) != 0)
      {
        return 0;
      }

      *(a1 + 2724) |= (2 * (*(v2 + 96) & 1)) | 4;
      result = session_close_stream_on_goaway(a1, *(v2 + 16), 1);
LABEL_47:
      if (result < -900)
      {
        return result;
      }

      return 0;
    }

    if (v3 != 8)
    {
      return result;
    }

    v12 = *(v2 + 8);
    if (v12)
    {
      result = nghttp2_map_find(a1, v12);
      if (!result)
      {
        return result;
      }

      if ((*(result + 116) & 2) != 0)
      {
        return 0;
      }

      if (*result == 5)
      {
        return 0;
      }

      *(result + 119) = 0;
      if (*(result + 117))
      {
        return 0;
      }

      if ((*(a1 + 2708) & 1) == 0)
      {
        LODWORD(result) = nghttp2_session_update_recv_stream_window_size(a1, result, 0, 1);
        goto LABEL_26;
      }

      v20 = *(result + 80);
      v16 = *(result + 100);
      v17 = (result + 92);
      v18 = (result + 88);
      v19 = a1;
    }

    else
    {
      *(a1 + 2725) = 0;
      if ((*(a1 + 2708) & 1) == 0)
      {
        LODWORD(result) = nghttp2_session_update_recv_connection_window_size(a1, 0);
        goto LABEL_26;
      }

      v16 = *(a1 + 2636);
      v17 = (a1 + 2628);
      v18 = (a1 + 2624);
      v19 = a1;
      v20 = 0;
    }

    LODWORD(result) = session_update_consumed_size(v19, v17, v18, 0, v20, 0, v16);
LABEL_26:
    if (result <= -901)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  if (v3 != 1)
  {
    if (v3 != 3)
    {
      return result;
    }

    LODWORD(result) = nghttp2_session_close_stream(a1, *(v2 + 8), *(v2 + 16));
    goto LABEL_26;
  }

  result = nghttp2_map_find(a1, *(v2 + 8));
  if (!result)
  {
    return result;
  }

  if ((*(result + 116) & 2) != 0 || *result == 5)
  {
    return 0;
  }

  v13 = *(v2 + 56);
  if (v13 <= 1)
  {
    if (!v13)
    {
      v21 = 1;
LABEL_67:
      *result = v21;
      goto LABEL_68;
    }

    if (v13 != 1)
    {
LABEL_63:
      __assert_rtn("session_after_frame_sent1", "nghttp2_session.c", 2651, "0");
    }

LABEL_66:
    v21 = 2;
    goto LABEL_67;
  }

  if (v13 == 2)
  {
    *(result + 116) &= 0xFCu;
    ++*(a1 + 2488);
    goto LABEL_66;
  }

  if (v13 != 3)
  {
    goto LABEL_63;
  }

LABEL_68:
  v22 = *(result + 117);
  if (*(v2 + 13))
  {
    v22 |= 2u;
    *(result + 117) = v22;
  }

  if ((~v22 & 3) != 0 || (result = nghttp2_session_close_stream(a1, *(result + 80), 0), result >= -900))
  {
    if (!*(v2 + 112))
    {
      return 0;
    }

    result = nghttp2_submit_data_shared(a1, 1, *(v2 + 8), (v2 + 96));
    goto LABEL_47;
  }

  return result;
}

uint64_t nghttp2_map_find(uint64_t *a1, int a2)
{
  if (!a1[3])
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = (-297201227 * (*(a1 + 4) + a2)) >> -v2;
  v4 = *a1;
  result = *(*a1 + 16 * v3 + 8);
  if (result)
  {
    v6 = ~(-1 << v2);
    v7 = -1;
    while (*(v4 + 16 * v3 + 4) != a2)
    {
      v3 = (v3 + 1) & v6;
      v8 = (v4 + 16 * v3);
      result = *(v8 + 1);
      if (!result)
      {
        break;
      }

      if (++v7 >= *v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t nghttp2_session_mem_send_internal(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = (a1 + 48);
  v7 = (a1 + 56);
  v8 = (a1 + 72);
  v150 = (a1 + 104);
  v151 = (a1 + 96);
  v149 = a1 + 112;
  v152 = (a1 + 128);
  v153 = (a1 + 80);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = *(a1 + 504);
          if (v9 > 1)
          {
            break;
          }

          if (v9)
          {
            if (v9 == 1)
            {
              v10 = *(a1 + 448);
              v11 = *(v10 + 24);
              if (v11 != *(v10 + 32))
              {
                goto LABEL_343;
              }

              if (!a3)
              {
                LODWORD(result) = session_after_frame_sent1(a1);
                if ((result & 0x80000000) != 0)
                {
                  if (result >= 0xFFFFFC7C)
                  {
                    __assert_rtn("nghttp2_session_mem_send_internal", "nghttp2_session.c", 3027, "nghttp2_is_fatal(rv)");
                  }

                  return result;
                }
              }

              session_after_frame_sent2(a1);
            }
          }

          else
          {
            v13 = *(a1 + 40);
            if (v13)
            {
              v14 = *(v13 + 144);
              *(a1 + 40) = v14;
              *(v13 + 144) = 0;
              v15 = v6;
              v16 = v7;
              if (!v14)
              {
                goto LABEL_15;
              }
            }

            else
            {
              v13 = *(a1 + 64);
              if (v13)
              {
                v37 = *(v13 + 144);
                *(a1 + 64) = v37;
                *(v13 + 144) = 0;
                v15 = v8;
                v16 = v153;
                if (v37)
                {
                  goto LABEL_16;
                }

LABEL_15:
                *v15 = 0;
                goto LABEL_16;
              }

              if (*(a1 + 2488) >= *(a1 + 2652) || (v13 = *(a1 + 88)) == 0)
              {
                if (*(a1 + 2620) < 1)
                {
                  return 0;
                }

                v48 = v152;
                v49 = 8;
                while (1)
                {
                  if (*v48)
                  {
                    v50 = **(v48 - 2);
                    if (v50)
                    {
                      break;
                    }
                  }

                  v48 += 5;
                  if (!--v49)
                  {
                    return 0;
                  }
                }

                v13 = *(v50 + 56);
                if (!v13)
                {
                  return 0;
                }

                goto LABEL_17;
              }

              v47 = *(v13 + 144);
              *(a1 + 88) = v47;
              *(v13 + 144) = 0;
              v16 = v150;
              v15 = v151;
              if (!v47)
              {
                goto LABEL_15;
              }
            }

LABEL_16:
            --*v16;
            *(v13 + 152) = 0;
LABEL_17:
            v17 = *(v13 + 12);
            if (v17 > 4)
            {
              if (*(v13 + 12) <= 6u)
              {
                if (v17 == 5)
                {
                  v62 = nghttp2_map_find(a1, *(v13 + 8));
                  if (!v62 || (*(v62 + 116) & 2) != 0)
                  {
                    v64 = 0;
                  }

                  else if (*v62 == 5)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = v62;
                  }

                  if (!*(a1 + 2723))
                  {
LABEL_135:
                    v55 = 4294966791;
                    goto LABEL_283;
                  }

                  if (!v64)
                  {
                    goto LABEL_132;
                  }

                  if (session_is_closing(a1, v63))
                  {
                    goto LABEL_256;
                  }

                  if ((*(v64 + 117) & 2) != 0)
                  {
LABEL_273:
                    v55 = 4294966784;
                    goto LABEL_283;
                  }

                  if (!*(a1 + 2648))
                  {
                    v55 = 4294966768;
                    goto LABEL_283;
                  }

                  if (*v64 == 3)
                  {
                    goto LABEL_141;
                  }

                  if ((*(a1 + 2724) & 8) != 0)
                  {
                    goto LABEL_245;
                  }

                  v65 = *(v13 + 32);
                  v66 = 12 * v65 + 12;
                  if (v65)
                  {
                    v67 = (*(v13 + 24) + 24);
                    do
                    {
                      v66 += *(v67 - 1) + *v67;
                      v67 += 5;
                      --v65;
                    }

                    while (v65);
                  }

                  if (v66 > *(a1 + 2560))
                  {
                    goto LABEL_282;
                  }

                  v68 = nghttp2_frame_pack_push_promise(a1 + 440, v13, a1 + 776);
                  if (!v68)
                  {
                    v68 = session_headers_add_pad(a1, v13);
                    if (!v68)
                    {
                      v69 = *(v13 + 40);
                      if (*(a1 + 2596) + 2 > v69)
                      {
                        __assert_rtn("session_prep_frame", "nghttp2_session.c", 2219, "session->last_sent_stream_id + 2 <= frame->push_promise.promised_stream_id");
                      }

                      goto LABEL_308;
                    }
                  }

LABEL_314:
                  v55 = v68;
                  goto LABEL_162;
                }

                if (v17 == 6)
                {
                  if (*(v13 + 13))
                  {
                    v44 = *(a1 + 2544);
                    if (!v44)
                    {
                      __assert_rtn("session_prep_frame", "nghttp2_session.c", 2226, "session->obq_flood_counter_ > 0");
                    }

                    *(a1 + 2544) = v44 - 1;
                  }

                  if ((*(a1 + 2724) & 1) == 0)
                  {
                    v19 = *(a1 + 440);
                    if (v19 != *(a1 + 448))
                    {
                      __assert_rtn("nghttp2_frame_pack_ping", "nghttp2_frame.c", 600, "bufs->head == bufs->cur");
                    }

                    if (v19[2] - v19[4] <= 7uLL)
                    {
                      __assert_rtn("nghttp2_frame_pack_ping", "nghttp2_frame.c", 604, "nghttp2_buf_avail(buf) >= 8");
                    }

                    v45 = v19[3];
                    v19[3] = v45 - 9;
                    *(v45 - 9) = bswap32(*v13) >> 8;
                    *(v45 - 6) = *(v13 + 12);
                    *(v45 - 5) = *(v13 + 13);
                    *(v45 - 4) = bswap32(*(v13 + 8));
                    v46 = v19[4];
                    *v46 = *(v13 + 16);
                    v27 = (v46 + 1);
                    goto LABEL_147;
                  }

LABEL_256:
                  v55 = 4294966766;
                  goto LABEL_283;
                }
              }

              else
              {
                switch(v17)
                {
                  case 7u:
                    v58 = *(a1 + 440);
                    if (v58 != *(a1 + 448))
                    {
                      __assert_rtn("nghttp2_frame_pack_goaway", "nghttp2_frame.c", 623, "bufs->head == bufs->cur");
                    }

                    v59 = *(v58 + 24);
                    *(v58 + 24) = v59 - 9;
                    *(v59 - 9) = bswap32(*v13) >> 8;
                    *(v59 - 6) = *(v13 + 12);
                    *(v59 - 5) = *(v13 + 13);
                    *(v59 - 4) = bswap32(*(v13 + 8));
                    **(v58 + 32) = bswap32(*(v13 + 16));
                    v60 = *(v58 + 32);
                    *(v58 + 32) = v60 + 4;
                    *(v60 + 4) = bswap32(*(v13 + 20));
                    *(v58 + 32) += 4;
                    v61 = nghttp2_bufs_add(a1 + 440, *(v13 + 24), *(v13 + 32));
                    if (v61 == -502)
                    {
                      goto LABEL_282;
                    }

                    v55 = v61;
                    if (!v61)
                    {
                      *(a1 + 2612) = *(v13 + 16);
                      goto LABEL_148;
                    }

                    goto LABEL_162;
                  case 8u:
                    v33 = *(v13 + 8);
                    if (session_is_closing(a1, a2))
                    {
                      goto LABEL_256;
                    }

                    if (!v33)
                    {
                      goto LABEL_53;
                    }

                    v34 = nghttp2_map_find(a1, v33);
                    if (!v34 || (*(v34 + 116) & 2) != 0)
                    {
                      goto LABEL_132;
                    }

                    v35 = *v34;
                    if (*v34 == 3)
                    {
                      goto LABEL_141;
                    }

                    if (v35 == 5)
                    {
                      goto LABEL_132;
                    }

                    if (v35 != 4 || (v36 = *(v34 + 80)) == 0 || (((*(a1 + 2723) == 0) ^ v36) & 1) != 0)
                    {
LABEL_53:
                      v19 = *(a1 + 440);
                      if (v19 != *(a1 + 448))
                      {
                        __assert_rtn("nghttp2_frame_pack_window_update", "nghttp2_frame.c", 695, "bufs->head == bufs->cur");
                      }

                      if (v19[2] - v19[4] <= 3uLL)
                      {
                        __assert_rtn("nghttp2_frame_pack_window_update", "nghttp2_frame.c", 699, "nghttp2_buf_avail(buf) >= 4");
                      }

                      goto LABEL_138;
                    }

LABEL_272:
                    v55 = 4294966782;
                    goto LABEL_283;
                  case 9u:
                    __assert_rtn("session_prep_frame", "nghttp2_session.c", 2254, "0");
                }
              }

LABEL_167:
              if (*(v13 + 96))
              {
                if (v17 == 16)
                {
                  if (session_is_closing(a1, a2))
                  {
                    goto LABEL_256;
                  }

                  v94 = *(v13 + 16);
                  v95 = nghttp2_map_find(a1, *v94);
                  if (!v95 || (*(v95 + 116) & 2) != 0)
                  {
LABEL_198:
                    v96 = *(a1 + 440);
                    if (v96[2] - v96[4] < (*(v94 + 16) + 4))
                    {
                      __assert_rtn("nghttp2_frame_pack_priority_update", "nghttp2_frame.c", 904, "nghttp2_buf_avail(buf) >= 4 + priority_update->field_value_len");
                    }

                    v97 = v96[3];
                    v96[3] = v97 - 9;
                    *(v97 - 9) = bswap32(*v13) >> 8;
                    *(v97 - 6) = *(v13 + 12);
                    *(v97 - 5) = *(v13 + 13);
                    *(v97 - 4) = bswap32(*(v13 + 8));
                    *v96[4] = bswap32(*v94);
                    v96[4] += 4;
                    if (nghttp2_bufs_add(a1 + 440, *(v94 + 8), *(v94 + 16)))
                    {
                      __assert_rtn("nghttp2_frame_pack_priority_update", "nghttp2_frame.c", 916, "rv == 0");
                    }

                    goto LABEL_148;
                  }

                  if (*v95 == 3)
                  {
                    goto LABEL_141;
                  }

                  if (*v95 == 5 || (*(v95 + 117) & 1) == 0)
                  {
                    goto LABEL_198;
                  }

                  goto LABEL_272;
                }

                if (v17 != 12)
                {
                  if (v17 != 10)
                  {
                    __assert_rtn("session_prep_frame", "nghttp2_session.c", 2307, "0");
                  }

                  v82 = *(v13 + 8);
                  if (!session_is_closing(a1, a2))
                  {
                    if (!v82)
                    {
                      goto LABEL_177;
                    }

                    v83 = nghttp2_map_find(a1, v82);
                    if (!v83 || (*(v83 + 116) & 2) != 0)
                    {
                      goto LABEL_132;
                    }

                    if (*v83 != 3)
                    {
                      if (*v83 != 5)
                      {
LABEL_177:
                        v84 = *(v13 + 16);
                        v85 = *(a1 + 440);
                        if (v85[2] - v85[4] < (*(v84 + 8) + *(v84 + 24) + 2))
                        {
                          __assert_rtn("nghttp2_frame_pack_altsvc", "nghttp2_frame.c", 728, "nghttp2_buf_avail(buf) >= 2 + altsvc->origin_len + altsvc->field_value_len");
                        }

                        v86 = v85[3];
                        v85[3] = v86 - 9;
                        *(v86 - 9) = bswap32(*v13) >> 8;
                        *(v86 - 6) = *(v13 + 12);
                        *(v86 - 5) = *(v13 + 13);
                        *(v86 - 4) = bswap32(*(v13 + 8));
                        *v85[4] = bswap32(*(v84 + 8)) >> 16;
                        v85[4] += 2;
                        if (nghttp2_bufs_add(a1 + 440, *v84, *(v84 + 8)))
                        {
                          __assert_rtn("nghttp2_frame_pack_altsvc", "nghttp2_frame.c", 739, "rv == 0");
                        }

                        if (nghttp2_bufs_add(a1 + 440, *(v84 + 16), *(v84 + 24)))
                        {
                          __assert_rtn("nghttp2_frame_pack_altsvc", "nghttp2_frame.c", 743, "rv == 0");
                        }

                        goto LABEL_148;
                      }

                      goto LABEL_132;
                    }

LABEL_141:
                    v55 = 4294966785;
                    goto LABEL_283;
                  }

                  goto LABEL_256;
                }

                if (session_is_closing(a1, a2))
                {
                  goto LABEL_256;
                }

                v145 = v8;
                v92 = *(a1 + 440);
                v93 = *v13;
                if (v92[2] - v92[4] >= *v13)
                {
                  v142 = v6;
                  v144 = v4;
                  v110 = *(v13 + 16);
                  v111 = v92[3];
                  v92[3] = v111 - 9;
                  *(v111 - 9) = bswap32(v93) >> 8;
                  *(v111 - 6) = *(v13 + 12);
                  *(v111 - 5) = *(v13 + 13);
                  *(v111 - 4) = bswap32(*(v13 + 8));
                  v112 = v92[4];
                  if (*v110)
                  {
                    v113 = 0;
                    v114 = 0;
                    do
                    {
                      v115 = v110[1] + v113;
                      *v112 = bswap32(*(v115 + 8)) >> 16;
                      v116 = v92[4];
                      v112 = (v116 + 2);
                      v92[4] = v116 + 2;
                      v117 = *(v115 + 8);
                      if (v117)
                      {
                        memcpy((v116 + 2), *v115, *(v115 + 8));
                        v112 = (v112 + v117);
                      }

                      v92[4] = v112;
                      ++v114;
                      v113 += 16;
                    }

                    while (v114 < *v110);
                  }

                  v118 = v112 - v92[3];
                  v6 = v142;
                  v4 = v144;
                  v8 = v145;
                  if (v118 != (*v13 + 9))
                  {
                    __assert_rtn("nghttp2_frame_pack_origin", "nghttp2_frame.c", 814, "nghttp2_buf_len(buf) == NGHTTP2_FRAME_HDLEN + frame->hd.length");
                  }

                  goto LABEL_148;
                }

                v55 = 4294966774;
                v8 = v145;
              }

              else
              {
                if (session_is_closing(a1, a2))
                {
                  goto LABEL_256;
                }

                v87 = *(a1 + 2312);
                if (!v87)
                {
                  v87 = *(a1 + 2304);
                  if (!v87)
                  {
                    __assert_rtn("session_pack_extension", "nghttp2_session.c", 1938, "session->callbacks.pack_extension_callback2 || session->callbacks.pack_extension_callback");
                  }
                }

                v88 = *(a1 + 440);
                v89 = v88[4];
                if ((v88[2] - v89) >= 0x4000)
                {
                  v90 = 0x4000;
                }

                else
                {
                  v90 = v88[2] - v89;
                }

                v91 = v87(a1);
                if (v91 == -535)
                {
                  v55 = 4294966761;
                }

                else
                {
                  if (v91 <= v90)
                  {
                    *v13 = v91;
                    v119 = v88[3];
                    v120 = v88[4];
                    if (v119 != v120)
                    {
                      __assert_rtn("session_pack_extension", "nghttp2_session.c", 1962, "buf->pos == buf->last");
                    }

                    v88[3] = v119 - 9;
                    v88[4] = v120 + v91;
                    *(v119 - 9) = bswap32(v91) >> 8;
                    *(v119 - 6) = *(v13 + 12);
                    *(v119 - 5) = *(v13 + 13);
                    *(v119 - 4) = bswap32(*(v13 + 8));
                    goto LABEL_148;
                  }

                  v55 = 4294966394;
                }
              }

LABEL_283:
              v57 = *(v13 + 12);
              if (!*(v13 + 12))
              {
                goto LABEL_294;
              }

LABEL_284:
              v125 = *(a1 + 2200);
              if (v125 && v55 >= 0xFFFFFC7D && v57 != 8)
              {
                if (v125(a1, v13, v55, *(a1 + 2400)))
                {
                  nghttp2_outbound_item_free(v13, (a1 + 2360));
                  (*(a1 + 2376))(v13, *(a1 + 2360));
                  return -902;
                }

                v57 = *(v13 + 12);
              }

              if (v57 == 5)
              {
                v126 = *(v13 + 40);
                v127 = 2;
                if (!v126)
                {
                  goto LABEL_294;
                }
              }

              else
              {
                if (v57 != 1 || *(v13 + 56))
                {
LABEL_294:
                  v128 = 0;
                  goto LABEL_295;
                }

                v126 = *(v13 + 8);
                if (*(v13 + 132))
                {
                  v127 = *(v13 + 128);
                  if (!v126)
                  {
                    goto LABEL_294;
                  }
                }

                else
                {
                  v127 = 7;
                  if (!v126)
                  {
                    goto LABEL_294;
                  }
                }
              }

              v128 = nghttp2_session_close_stream(a1, v126, v127);
LABEL_295:
              nghttp2_outbound_item_free(v13, (a1 + 2360));
              (*(a1 + 2376))(v13, *(a1 + 2360));
              active_outbound_item_reset((a1 + 432), (a1 + 2360));
              if (v128 <= -901)
              {
                return v128;
              }

              if (v55 == -523)
              {
                LODWORD(v55) = session_terminate_session(a1, *(a1 + 2604), 2, 0);
              }

              if (v55 <= -901)
              {
                return v55;
              }
            }

            else
            {
              if (*(v13 + 12) > 1u)
              {
                switch(v17)
                {
                  case 2u:
                    if (!session_is_closing(a1, a2))
                    {
                      v19 = *(a1 + 440);
                      if (v19 != *(a1 + 448))
                      {
                        __assert_rtn("nghttp2_frame_pack_priority", "nghttp2_frame.c", 436, "bufs->head == bufs->cur");
                      }

                      if (v19[2] - v19[4] <= 4uLL)
                      {
                        __assert_rtn("nghttp2_frame_pack_priority", "nghttp2_frame.c", 440, "nghttp2_buf_avail(buf) >= NGHTTP2_PRIORITY_SPECLEN");
                      }

                      v73 = v19[3];
                      v19[3] = v73 - 9;
                      *(v73 - 9) = bswap32(*v13) >> 8;
                      *(v73 - 6) = *(v13 + 12);
                      *(v73 - 5) = *(v13 + 13);
                      *(v73 - 4) = bswap32(*(v13 + 8));
                      v74 = v19[4];
                      v75 = bswap32(*(v13 + 16));
                      *v74 = v75;
                      if (*(v13 + 24))
                      {
                        *v74 = v75 | 0x80;
                      }

                      *(v74 + 4) = *(v13 + 20) - 1;
                      v27 = v19[4] + 5;
                      goto LABEL_147;
                    }

                    v57 = 2;
                    break;
                  case 3u:
                    if (!session_is_closing(a1, a2))
                    {
                      v19 = *(a1 + 440);
                      if (v19 != *(a1 + 448))
                      {
                        __assert_rtn("nghttp2_frame_pack_rst_stream", "nghttp2_frame.c", 460, "bufs->head == bufs->cur");
                      }

                      if (v19[2] - v19[4] <= 3uLL)
                      {
                        __assert_rtn("nghttp2_frame_pack_rst_stream", "nghttp2_frame.c", 464, "nghttp2_buf_avail(buf) >= 4");
                      }

LABEL_138:
                      v70 = v19[3];
                      v19[3] = v70 - 9;
                      *(v70 - 9) = bswap32(*v13) >> 8;
                      *(v70 - 6) = *(v13 + 12);
                      *(v70 - 5) = *(v13 + 13);
                      *(v70 - 4) = bswap32(*(v13 + 8));
                      *v19[4] = bswap32(*(v13 + 16));
                      v27 = v19[4] + 4;
LABEL_147:
                      v19[4] = v27;
                      goto LABEL_148;
                    }

                    v57 = 3;
                    break;
                  case 4u:
                    if (*(v13 + 13))
                    {
                      v18 = *(a1 + 2544);
                      if (!v18)
                      {
                        __assert_rtn("session_prep_frame", "nghttp2_session.c", 2168, "session->obq_flood_counter_ > 0");
                      }

                      *(a1 + 2544) = v18 - 1;
                      if (session_is_closing(a1, a2))
                      {
                        goto LABEL_256;
                      }
                    }

                    v19 = *(a1 + 440);
                    if (v19 != *(a1 + 448))
                    {
                      __assert_rtn("nghttp2_frame_pack_settings", "nghttp2_frame.c", 482, "bufs->head == bufs->cur");
                    }

                    v20 = *v13;
                    if (v19[2] - v19[4] >= *v13)
                    {
                      v21 = v19[3];
                      v19[3] = v21 - 9;
                      *(v21 - 9) = bswap32(v20) >> 8;
                      *(v21 - 6) = *(v13 + 12);
                      *(v21 - 5) = *(v13 + 13);
                      *(v21 - 4) = bswap32(*(v13 + 8));
                      v22 = v19[4];
                      v23 = *(v13 + 16);
                      if (v23)
                      {
                        v24 = (*(v13 + 24) + 4);
                        v25 = *(v13 + 16);
                        do
                        {
                          *v22 = bswap32(*(v24 - 2)) >> 16;
                          v26 = *v24;
                          v24 += 2;
                          *(v22 + 2) = bswap32(v26);
                          v22 += 6;
                          --v25;
                        }

                        while (v25);
                        v22 = v19[4];
                      }

                      v27 = v22 + 6 * v23;
                      goto LABEL_147;
                    }

LABEL_282:
                    v55 = 4294966774;
                    goto LABEL_283;
                  default:
                    goto LABEL_167;
                }

                v55 = 4294966766;
                goto LABEL_284;
              }

              if (*(v13 + 12))
              {
                v38 = *(v13 + 8);
                if (*(v13 + 56))
                {
                  v39 = nghttp2_map_find(a1, v38);
                  if (!v39 || (v41 = v39, (*(v39 + 116) & 2) != 0) || (v42 = *v39, *v39 == 5))
                  {
                    *(v13 + 56) = 3;
LABEL_132:
                    v55 = 4294966786;
                    goto LABEL_283;
                  }

                  if (v42 == 4)
                  {
                    if (session_is_closing(a1, v40))
                    {
                      goto LABEL_256;
                    }

                    if ((*(v41 + 117) & 2) != 0)
                    {
                      goto LABEL_273;
                    }

                    if (!*(a1 + 2723))
                    {
                      goto LABEL_135;
                    }

                    if ((*(a1 + 2724) & 8) != 0)
                    {
                      goto LABEL_245;
                    }

                    *(v13 + 56) = 2;
                    v43 = *(v13 + 120);
                    if (v43)
                    {
                      *(v41 + 56) = v43;
                    }
                  }

                  else if (session_is_closing(a1, v40) || (*(v41 + 117) & 2) != 0 || !*(a1 + 2723) && (~*(a1 + 2708) & 0x84) != 0 || ((*(v41 + 80) != 0) & ((*(a1 + 2723) == 0) ^ *(v41 + 80) ^ 1)) != 0 || v42 != 1)
                  {
                    *(v13 + 56) = 3;
                    if (session_is_closing(a1, v109))
                    {
                      goto LABEL_256;
                    }

                    if ((*(v41 + 117) & 2) != 0)
                    {
                      goto LABEL_273;
                    }

                    if (*v41 != 2)
                    {
                      if (*v41 == 3)
                      {
                        goto LABEL_141;
                      }

                      v121 = *(v41 + 80);
                      if (!v121 || (((*(a1 + 2723) == 0) ^ v121) & 1) != 0)
                      {
                        goto LABEL_272;
                      }
                    }
                  }

                  else
                  {
                    *(v13 + 56) = 1;
                  }
                }

                else
                {
                  v71 = nghttp2_session_open_stream(a1, v38, 0, *(v13 + 120));
                  if (!v71)
                  {
                    v55 = 4294966395;
                    goto LABEL_283;
                  }

                  if (*(v13 + 132))
                  {
                    goto LABEL_141;
                  }

                  if ((*(a1 + 2724) & 8) != 0 || (v108 = v71, session_is_closing(a1, v72)))
                  {
LABEL_245:
                    v55 = 4294966780;
                    goto LABEL_283;
                  }

                  if ((*(a1 + 2708) & 4) == 0)
                  {
                    nghttp2_http_record_request_method(v108, v13);
                  }
                }

                v122 = *(v13 + 48);
                v123 = 12 * v122 + 12;
                if (v122)
                {
                  v124 = (*(v13 + 40) + 24);
                  do
                  {
                    v123 += *(v124 - 1) + *v124;
                    v124 += 5;
                    --v122;
                  }

                  while (v122);
                }

                if ((v123 + 5) > *(a1 + 2560))
                {
                  goto LABEL_282;
                }

                v68 = nghttp2_frame_pack_headers((a1 + 440), v13, a1 + 776);
                if (v68)
                {
                  goto LABEL_314;
                }

                v68 = session_headers_add_pad(a1, v13);
                if (v68)
                {
                  goto LABEL_314;
                }

                if (!*(v13 + 56))
                {
                  v69 = *(v13 + 8);
                  if (*(a1 + 2596) >= v69)
                  {
                    __assert_rtn("session_prep_frame", "nghttp2_session.c", 2140, "session->last_sent_stream_id < frame->hd.stream_id");
                  }

LABEL_308:
                  *(a1 + 2596) = v69;
                }

LABEL_148:
                *(a1 + 432) = v13;
                *(a1 + 448) = *(a1 + 440);
                if (*(v13 + 12))
                {
                  v76 = *(a1 + 2184);
                  if (v76)
                  {
                    v77 = v76(a1, v13, *(a1 + 2400));
                    if (v77)
                    {
                      if (v77 != -535)
                      {
                        return -902;
                      }

                      v78 = *(a1 + 2200);
                      if (v78)
                      {
                        if (v78(a1, v13, 4294966761, *(a1 + 2400)))
                        {
                          return -902;
                        }
                      }

                      v79 = *(v13 + 12);
                      if (v79 == 5)
                      {
                        v80 = 2;
                        v81 = 40;
                      }

                      else
                      {
                        if (v79 != 1 || *(v13 + 56))
                        {
                          goto LABEL_205;
                        }

                        v80 = 7;
                        v81 = 8;
                      }

                      v98 = *(v13 + v81);
                      if (!v98)
                      {
                        goto LABEL_205;
                      }

                      LODWORD(result) = nghttp2_session_close_stream(a1, v98, v80);
                      goto LABEL_204;
                    }
                  }

LABEL_160:
                  *(a1 + 504) = 1;
                }

                else
                {
                  if (!*(v13 + 122))
                  {
                    goto LABEL_160;
                  }

                  *(a1 + 504) = 2;
                }
              }

              else
              {
                v51 = v8;
                v52 = *(v13 + 8);
                v53 = nghttp2_map_find(a1, v52);
                if (!v53 || (v54 = v53, (*(v53 + 116) & 2) != 0) || *v53 == 5)
                {
                  v55 = 4294966786;
                  goto LABEL_94;
                }

                if (*(v53 + 64) != v13)
                {
                  __assert_rtn("session_prep_frame", "nghttp2_session.c", 1994, "stream->item == item");
                }

                v55 = nghttp2_session_predicate_data_send(a1, v53);
                if (v55)
                {
LABEL_94:
                  v56 = nghttp2_map_find(a1, v52);
                  if (!v56)
                  {
                    v8 = v51;
                    goto LABEL_162;
                  }

                  v54 = v56;
                  *(v56 + 64) = 0;
                  *(v56 + 116) &= 0xF3u;
                  v8 = v51;
                  if (*(v56 + 118))
                  {
                    goto LABEL_96;
                  }

LABEL_162:
                  if (v55 != -508)
                  {
                    if (v55 == -526)
                    {
                      return 0;
                    }

                    if ((v55 & 0x80000000) == 0)
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_283;
                  }
                }

                else
                {
                  v99 = *(a1 + 2620);
                  if (*(v54 + 84) >= v99)
                  {
                    v100 = *(a1 + 2620);
                  }

                  else
                  {
                    v100 = *(v54 + 84);
                  }

                  if (v100 >= *(a1 + 2660))
                  {
                    v100 = *(a1 + 2660);
                  }

                  if (v100 > 0)
                  {
                    if (v100 >= 0x4000)
                    {
                      v101 = 0x4000;
                    }

                    else
                    {
                      v101 = v100;
                    }

                    v102 = *(a1 + 448);
                    if (*(a1 + 440) != v102)
                    {
                      __assert_rtn("nghttp2_session_pack_data", "nghttp2_session.c", 7282, "bufs->head == bufs->cur");
                    }

                    v103 = *(a1 + 2280);
                    if (v103 || (v103 = *(a1 + 2272)) != 0)
                    {
                      v104 = v103(a1, 0, *(v54 + 80));
                      v105 = *(v54 + 84);
                      if (v104 < v105)
                      {
                        v105 = v104;
                      }

                      if (v105 >= *(a1 + 2620))
                      {
                        v105 = *(a1 + 2620);
                      }

                      if (v105 >= *(a1 + 2660))
                      {
                        v105 = *(a1 + 2660);
                      }

                      if (v105 >= 1)
                      {
                        v146 = v101;
                        v101 = v105;
                        if (v102[2] - v102[4] < v105)
                        {
                          if (*(a1 + 496) > (v105 + 10) || (v155 = 0, v143 = v105 + 10, buf_chain_new(&v155, v143, *(a1 + 456))))
                          {
                            v101 = v146;
                          }

                          else
                          {
                            nghttp2_bufs_free((a1 + 440));
                            v102 = v155;
                            *(a1 + 440) = v155;
                            *(a1 + 448) = v102;
                            v139 = *(a1 + 496);
                            v140 = v102[4];
                            v102[3] += v139;
                            v102[4] = v140 + v139;
                            *(a1 + 464) = v143;
                            *(a1 + 480) = 1;
                          }
                        }

                        goto LABEL_231;
                      }

LABEL_336:
                      v55 = 4294966394;
LABEL_337:
                      v8 = v51;
                    }

                    else
                    {
LABEL_231:
                      if (v102[2] - v102[4] < v101)
                      {
                        __assert_rtn("nghttp2_session_pack_data", "nghttp2_session.c", 7334, "nghttp2_buf_avail(buf) >= datamax");
                      }

                      v154 = 0;
                      if ((*(v13 + 96) - 1) >= 2)
                      {
                        __assert_rtn("nghttp2_session_pack_data", "nghttp2_session.c", 7351, "0");
                      }

                      v106 = (*(v13 + 112))(a1, *(v13 + 8), v102[3], v101, &v154, v13 + 104, *(a1 + 2400));
                      if (v106 + 526 > 0x12 || ((1 << (v106 + 14)) & 0x40021) == 0)
                      {
                        v129 = v101;
                        v55 = 4294966394;
                        if ((v106 & 0x8000000000000000) != 0 || v129 < v106)
                        {
                          goto LABEL_337;
                        }

                        v130 = v102[3];
                        v102[3] = v130 - 9;
                        v102[4] = v130 + v106;
                        *(v13 + 13) = 0;
                        v131 = v154;
                        if (v154)
                        {
                          *(v13 + 121) = 1;
                          if (v131 & 2) == 0 && (*(v13 + 120))
                          {
                            *(v13 + 13) = 1;
                          }
                        }

                        if ((v131 & 4) != 0)
                        {
                          if (!*(a1 + 2296))
                          {
                            goto LABEL_336;
                          }

                          *(v13 + 122) = 1;
                        }

                        *v13 = v106;
                        *(v13 + 16) = 0;
                        if (v129 >= v106 + 256)
                        {
                          v132 = v106 + 256;
                        }

                        else
                        {
                          v132 = v129;
                        }

                        v147 = v106;
                        v133 = session_call_select_padding(a1, v13, v132);
                        v55 = v133;
                        if (v133 >= -900)
                        {
                          *(v13 + 16) = v133 - v147;
                          v134 = v102[3];
                          *v134 = bswap32(*v13) >> 8;
                          *(v134 + 3) = *(v13 + 12);
                          *(v134 + 4) = *(v13 + 13);
                          *(v134 + 5) = bswap32(*(v13 + 8));
                          nghttp2_frame_add_pad((a1 + 440), v13, *(v13 + 16), *(v13 + 122));
                          v135 = **(v54 + 64);
                          *(v54 + 72) = v135;
                          v8 = v51;
                          if (*(a1 + 2723))
                          {
                            v136 = *(v54 + 120);
                            if ((v136 & 0x7Fu) >= 8)
                            {
                              __assert_rtn("session_sched_reschedule_stream", "nghttp2_session.c", 997, "urgency < NGHTTP2_EXTPRI_URGENCY_LEVELS");
                            }

                            if ((*(v54 + 120) & 0x80) != 0)
                            {
                              v137 = v136 & 0x7F;
                              v138 = v149 + 40 * (*(v54 + 120) & 0x7F);
                              if (*(v138 + 16) != 1)
                              {
                                v148 = (v149 + 40 * v137);
                                nghttp2_pq_remove(v138, (v54 + 8));
                                *(v54 + 32) += v135;
                                if (nghttp2_pq_push(v148, (v54 + 8)))
                                {
                                  __assert_rtn("session_sched_reschedule_stream", "nghttp2_session.c", 1011, "0 == rv");
                                }
                              }
                            }
                          }

                          if (*v13 || (~v154 & 3) != 0)
                          {
                            goto LABEL_148;
                          }

                          v55 = 4294966761;
                          goto LABEL_337;
                        }
                      }

                      else
                      {
                        v55 = v106;
                      }

                      if (v55 <= -509)
                      {
                        v8 = v51;
                        if (v55 == -521)
                        {
                          *(v54 + 64) = 0;
                          *(v54 + 116) &= 0xF3u;
                          if (*(v54 + 118))
                          {
                            session_ob_data_remove(a1, v54);
                          }

                          v68 = nghttp2_session_add_rst_stream_continue(a1, *(v13 + 8), 2, 1);
                          if (v68 > -901)
                          {
                            v55 = 4294966775;
                            goto LABEL_283;
                          }

                          goto LABEL_314;
                        }

                        if (v55 == -526)
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v8 = v51;
                        if (!v55)
                        {
                          goto LABEL_148;
                        }

                        if (v55 == -508)
                        {
                          session_defer_stream_item(a1, v54, 8);
                          *(a1 + 432) = 0;
                          goto LABEL_205;
                        }
                      }
                    }

                    *(v54 + 64) = 0;
                    *(v54 + 116) &= 0xF3u;
                    if (!*(v54 + 118))
                    {
                      goto LABEL_162;
                    }

LABEL_96:
                    session_ob_data_remove(a1, v54);
                    goto LABEL_162;
                  }

                  if (v99 <= 0)
                  {
                    __assert_rtn("session_prep_frame", "nghttp2_session.c", 2016, "session->remote_window_size > 0");
                  }

                  session_defer_stream_item(a1, v54, 4);
                  *(a1 + 432) = 0;
                  active_outbound_item_reset((a1 + 432), (a1 + 2360));
                  v8 = v51;
                }
              }
            }
          }
        }

        if (v9 == 2)
        {
          break;
        }

        if (v9 == 3)
        {
          v10 = *(a1 + 448);
          v11 = *(v10 + 24);
          if (v11 != *(v10 + 32))
          {
LABEL_343:
            *v4 = v11;
            v141 = *(v10 + 32);
            result = v141 - *(v10 + 24);
            *(v10 + 24) = v141;
            return result;
          }

          goto LABEL_205;
        }
      }

      v28 = *(a1 + 432);
      v29 = nghttp2_map_find(a1, *(v28 + 8));
      if (!v29)
      {
        goto LABEL_205;
      }

      v30 = v29;
      if ((*(v29 + 116) & 2) != 0 || *v29 == 5)
      {
        goto LABEL_205;
      }

      v31 = (*(a1 + 2296))(a1, v28, *(*(a1 + 448) + 24), *v28 - *(v28 + 16), v28 + 104, *(a1 + 2400));
      v32 = v31;
      if (v31 > -505)
      {
        break;
      }

      if (v31 == -526)
      {
        goto LABEL_128;
      }

      if (v31 != -521)
      {
        return -902;
      }

      *(v30 + 64) = 0;
      *(v30 + 116) &= 0xF3u;
      if (*(v30 + 118))
      {
        session_ob_data_remove(a1, v30);
      }

      LODWORD(result) = nghttp2_session_add_rst_stream_continue(a1, *(v28 + 8), 2, 1);
LABEL_204:
      if (result <= -901)
      {
        return result;
      }

LABEL_205:
      active_outbound_item_reset((a1 + 432), (a1 + 2360));
    }

    if (v31)
    {
      break;
    }

LABEL_128:
    LODWORD(result) = session_after_frame_sent1(a1);
    if ((result & 0x80000000) != 0)
    {
      if (result >= 0xFFFFFC7C)
      {
        __assert_rtn("nghttp2_session_mem_send_internal", "nghttp2_session.c", 3090, "nghttp2_is_fatal(rv)");
      }

      return result;
    }

    session_after_frame_sent2(a1);
    if (v32 == -526)
    {
      return 0;
    }
  }

  if (v31 != -504)
  {
    return -902;
  }

  return 0;
}

uint64_t nghttp2_session_add_item(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = nghttp2_map_find(a1, v4);
  if (!v5 || (*(v5 + 116) & 2) != 0)
  {
    v6 = 0;
  }

  else if (*v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a2 + 12);
  if (v7 > 3)
  {
    if (*(a2 + 12) > 5u)
    {
      if (v7 != 6)
      {
        if (v7 == 8)
        {
          if (v6)
          {
            v9 = (v6 + 119);
          }

          else
          {
            if (v4)
            {
              goto LABEL_38;
            }

            v9 = a1 + 2725;
          }

          *v9 = 1;
        }

LABEL_38:
        result = 0;
        v16 = a1 + 8;
        v17 = a1[9];
        v18 = a1[10];
        if (v17)
        {
          v16 = (v17 + 144);
        }

        *v16 = a2;
        a1[9] = a2;
        a1[10] = v18 + 1;
LABEL_41:
        *(a2 + 152) = 1;
        return result;
      }
    }

    else if (v7 != 4)
    {
      if (v7 == 5)
      {
        if (v6)
        {
          if (!nghttp2_session_open_stream(a1, *(a2 + 40), 4, *(a2 + 120)))
          {
            return 4294966395;
          }

          goto LABEL_38;
        }

        return 4294966786;
      }

      goto LABEL_38;
    }

    result = 0;
    v10 = a1 + 5;
    v11 = a1[6];
    v12 = a1[7];
    if (v11)
    {
      v10 = (v11 + 144);
    }

    *v10 = a2;
    a1[6] = a2;
    a1[7] = v12 + 1;
    goto LABEL_41;
  }

  if (*(a2 + 12))
  {
    if (v7 == 1)
    {
      if (!*(a2 + 56) || v6 && *v6 == 4)
      {
        result = 0;
        v13 = a1 + 11;
        v14 = a1[12];
        v15 = a1[13];
        if (v14)
        {
          v13 = (v14 + 144);
        }

        *v13 = a2;
        a1[12] = a2;
        a1[13] = v15 + 1;
        goto LABEL_41;
      }
    }

    else if (v7 == 3 && v6)
    {
      *v6 = 3;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    return 4294966786;
  }

  if (*(v6 + 64))
  {
    return 4294966767;
  }

  if ((*(v6 + 116) & 0xC) != 0)
  {
    __assert_rtn("nghttp2_stream_attach_item", "nghttp2_stream.c", 76, "(stream->flags & NGHTTP2_STREAM_FLAG_DEFERRED_ALL) == 0");
  }

  *(v6 + 64) = a2;
  result = session_ob_data_push(a1, v6);
  if (result)
  {
    *(v6 + 64) = 0;
    *(v6 + 116) &= 0xF3u;
  }

  return result;
}

uint64_t nghttp2_iv_check(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  for (i = (a1 + 4); ; i += 2)
  {
    v3 = *(i - 1);
    if (v3 <= 4)
    {
      break;
    }

    if (v3 == 5)
    {
      if ((*i - 0x1000000) < 0xFF004000)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == 8)
      {
        goto LABEL_13;
      }

      if (v3 == 9 && *i > 1u)
      {
        return 0;
      }
    }

LABEL_16:
    if (!--a2)
    {
      return 1;
    }
  }

  if (v3 == 2)
  {
LABEL_13:
    if (*i >= 2u)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v3 != 4 || (*i & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  return 0;
}

uint64_t nghttp2_submit_window_update(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    result = nghttp2_adjust_local_window_size(a1 + 659, a1 + 656, a1 + 658, &v10);
    if (result)
    {
      return result;
    }

    v8 = v10;
    if (v10 > 0)
    {
      v9 = a1 + 657;
      goto LABEL_12;
    }

    return 0;
  }

  result = nghttp2_map_find(a1, a3);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ((*(result + 116) & 2) != 0 || *result == 5)
  {
    return 0;
  }

  result = nghttp2_adjust_local_window_size((result + 100), (result + 88), (result + 96), &v10);
  if (result)
  {
    return result;
  }

  v8 = v10;
  if (v10 <= 0)
  {
    return 0;
  }

  v9 = (v7 + 92);
LABEL_12:
  *v9 = (*v9 - v8) & ~((*v9 - v8) >> 31);

  return nghttp2_session_add_window_update(a1, v4, v8);
}

uint64_t nghttp2_session_add_window_update(uint64_t a1, int a2, int a3)
{
  v6 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v6)
  {
    return 4294966395;
  }

  v7 = v6;
  *(v6 + 137) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 96) = 0u;
  *v6 = 4;
  *(v6 + 12) = 8;
  *(v6 + 8) = a2;
  *(v6 + 14) = 0;
  *(v6 + 16) = a3;
  *(v6 + 20) = 0;
  v8 = nghttp2_session_add_item(a1, v6);
  if (v8)
  {
    (*(a1 + 2376))(v7, *(a1 + 2360));
  }

  return v8;
}

uint64_t nghttp2_adjust_local_window_size(int *a1, int *a2, int *a3, int *a4)
{
  v5 = *a4;
  if (*a4 < 1)
  {
    v8 = *a1 + v5;
    if (v8 >= 0 && *a2 >= (0x80000000 - v5) && *a3 <= v5 + 0x7FFFFFFF)
    {
      result = 0;
      *a1 = v8;
      *a2 += *a4;
      *a3 -= *a4;
      *a4 = 0;
      return result;
    }

    return 4294966772;
  }

  v6 = (*a2 & ~(*a2 >> 31)) - v5;
  if (v6 >= 0)
  {
    result = 0;
    *a2 = v6;
    return result;
  }

  v9 = *a1;
  if (*a1 > v6 + 0x7FFFFFFF)
  {
    return 4294966772;
  }

  result = 0;
  *a1 = v9 - v6;
  if (*a3 >= -v6)
  {
    v10 = -v6;
  }

  else
  {
    v10 = *a3;
  }

  *a3 -= v10;
  *a2 = (*a2 & (*a2 >> 31)) + v10;
  *a4 -= v10;
  return result;
}

uint64_t nghttp2_session_mem_send2(uint64_t a1, void *a2)
{
  *a2 = 0;
  v3 = nghttp2_session_mem_send_internal(a1, a2, 1);
  if (v3 >= 1)
  {
    if (*(a1 + 432))
    {
      v4 = session_after_frame_sent1(a1);
      if ((v4 & 0x80000000) != 0)
      {
        if (v4 >= 0xFFFFFC7C)
        {
          __assert_rtn("nghttp2_session_mem_send2", "nghttp2_session.c", 3150, "nghttp2_is_fatal(rv)");
        }

        return v4;
      }
    }
  }

  return v3;
}

uint64_t nghttp2_session_get_stream_user_data(uint64_t *a1, int a2)
{
  result = nghttp2_map_find(a1, a2);
  if (result)
  {
    if ((*(result + 116) & 2) != 0 || *result == 5)
    {
      return 0;
    }

    else
    {
      return *(result + 56);
    }
  }

  return result;
}

int64_t nghttp2_session_mem_recv2(uint64_t a1, char *__src, size_t a3)
{
  v3 = a3;
  v4 = __src;
  if (!__src)
  {
    if (a3)
    {
      __assert_rtn("nghttp2_session_mem_recv2", "nghttp2_session.c", 5374, "inlen == 0");
    }

    v4 = &unk_298406F58;
  }

  if ((*(a1 + 2724) & 2) != 0)
  {
    return v3;
  }

  if (*(a1 + 24) == *(a1 + 2528) + *(a1 + 2520) && (*(a1 + 2724) & 0xC) != 0)
  {
    return v3;
  }

  v7 = (a1 + 512);
  v8 = &v4[a3];
  v420 = 0;
  v421 = 0;
  v414 = (a1 + 704);
  v415 = a1 + 656;
  v412 = a1 + 2726;
  v413 = (a1 + 528);
  v409 = a1 + 576;
  v410 = (a1 + 536);
  v411 = (a1 + 2056);
  v9 = v4;
  while (2)
  {
    v10 = *(a1 + 736);
    switch(v10)
    {
      case 0:
        v86 = *(a1 + 720);
        if (v3 >= v86)
        {
          v87 = *(a1 + 720);
        }

        else
        {
          v87 = v3;
        }

        if (!memcmp(&aPriHttp20Sm[-v86 + 24], v9, v87))
        {
          *(a1 + 720) = v86 - v87;
          v9 += v87;
          if (v86 > v3)
          {
            goto LABEL_778;
          }

          session_inbound_frame_reset(a1);
          v41 = 0;
          *(a1 + 736) = 1;
          goto LABEL_843;
        }

        return -903;
      case 1:
        v82 = *(a1 + 648);
        v83 = *(a1 + 640);
        if (v8 - v9 >= (v82 - v83))
        {
          v84 = v82 - v83;
        }

        else
        {
          v84 = v8 - v9;
        }

        if (v84)
        {
          memcpy(*(a1 + 640), v9, v84);
          v83 += v84;
          v82 = *(a1 + 648);
        }

        *(a1 + 640) = v83;
        v9 += v84;
        if (v82 != v83)
        {
          return v9 - v4;
        }

        v85 = *(a1 + 632);
        if (*(v85 + 3) != 4 || (*(v85 + 4) & 1) != 0)
        {
          updated = session_call_error_callback(a1, 4294966760, "Remote peer returned unexpected data while we expected SETTINGS frame.  Perhaps, peer does not support HTTP/2 properly.");
          if (updated <= -901)
          {
            return updated;
          }

          v396 = *(a1 + 2604);
          v397 = "SETTINGS expected";
          goto LABEL_962;
        }

        *(a1 + 736) = 2;
LABEL_154:
        if (v8 - v9 >= (v82 - v83))
        {
          v88 = v82 - v83;
        }

        else
        {
          v88 = v8 - v9;
        }

        if (v88)
        {
          memcpy(v83, v9, v88);
          v83 += v88;
          v82 = *(a1 + 648);
        }

        *(a1 + 640) = v83;
        v9 += v88;
        if (v82 != v83)
        {
          return v9 - v4;
        }

        v89 = *(a1 + 632);
        v90 = bswap32(*v89);
        v91 = v90 >> 8;
        *(a1 + 512) = v91;
        v92 = *(v89 + 3);
        *(a1 + 524) = v92;
        v93 = *(v89 + 4);
        *(a1 + 525) = v93;
        v94 = *(v89 + 5) & 0xFFFFFF7F;
        v95 = bswap32(v94);
        *(a1 + 520) = v95;
        *(a1 + 526) = 0;
        *(a1 + 720) = v91;
        if (v91 > *(a1 + 2692))
        {
          v396 = *(a1 + 2604);
          v397 = "too large frame size";
          v390 = a1;
          v391 = 6;
          goto LABEL_963;
        }

        if (v92 <= 4)
        {
          if (v92 > 1)
          {
            if (v92 == 2)
            {
              *(a1 + 525) = 0;
              if (v91 == 5)
              {
                updated = session_update_glitch_ratelim(a1);
                if (updated)
                {
                  return updated;
                }

                if (*(a1 + 736) == 15)
                {
                  return v3;
                }

                v41 = 0;
                *(a1 + 736) = 3;
                v277 = *(a1 + 616);
                *(a1 + 640) = v277;
                *(a1 + 632) = v277;
                v127 = v277 + 5;
                goto LABEL_559;
              }

              goto LABEL_821;
            }

            if (v92 != 3)
            {
              v96 = v93 & 1;
              *(a1 + 525) = v93 & 1;
              v97 = v90 / 0x600;
              if (!(-6 * (v90 / 0x600) + v91))
              {
                if (!v96)
                {
                  if (*(a1 + 2544) >= *(a1 + 2552))
                  {
                    return -904;
                  }

                  *(a1 + 736) = 8;
                  if (v90 >= 0x100)
                  {
                    v98 = v97 + 1;
                    *(a1 + 712) = v98;
                    if (*(a1 + 2568) >= v97)
                    {
                      v99 = (*(a1 + 2368))(8 * v98, *(a1 + 2360));
                      *(a1 + 608) = v99;
                      if (!v99)
                      {
                        return -901;
                      }

                      v41 = 0;
                      *(v99 + 8 * *(a1 + 712) - 8) = 0xFFFFFFFF00000001;
                      v100 = *(a1 + 616);
                      *(a1 + 640) = v100;
                      *(a1 + 632) = v100;
                      *(a1 + 648) = v100 + 6;
                      v101 = *(a1 + 736);
                      if (v101 <= 0xF && ((1 << v101) & 0xC0E0) != 0)
                      {
                        goto LABEL_843;
                      }

                      goto LABEL_856;
                    }

                    v396 = *(a1 + 2604);
                    v397 = "SETTINGS: too many setting entries";
                    v390 = a1;
                    v391 = 11;
LABEL_963:
                    v392 = session_terminate_session(v390, v396, v391, v397);
                    v393 = v392;
                    v394 = v392 <= -901;
LABEL_964:
                    if (v394)
                    {
                      return v393;
                    }

                    return v3;
                  }

                  goto LABEL_665;
                }

                if (v90 < 0x100)
                {
                  *(a1 + 736) = 8;
LABEL_665:
                  v315 = *(a1 + 616);
                  *(a1 + 648) = v315;
                  *(a1 + 640) = v315;
                  *(a1 + 632) = v315;
LABEL_666:
                  v41 = 1;
                  goto LABEL_856;
                }
              }

              goto LABEL_821;
            }

            goto LABEL_206;
          }

          if (v92)
          {
            *(a1 + 525) = v93 & 0x2D;
            if ((v93 & 8) == 0)
            {
              if ((v93 & 0x20) != 0)
              {
                if (v91 >= 5)
                {
                  v41 = 0;
                  *(a1 + 736) = 3;
                  v314 = *(a1 + 616);
                  *(a1 + 640) = v314;
                  *(a1 + 632) = v314;
                  v127 = v314 + 5;
                  goto LABEL_559;
                }

                goto LABEL_821;
              }

              v232 = *(a1 + 2288);
              if (v232 && v232(a1, v7, *(a1 + 2400)))
              {
                return -902;
              }

LABEL_584:
              updated = session_process_headers_frame(a1);
              if (updated <= -901)
              {
                return updated;
              }

              if (*(a1 + 736) == 15)
              {
                return v3;
              }

              if (updated == -103)
              {
                updated = session_update_glitch_ratelim(a1);
                if (updated)
                {
                  return updated;
                }

                if (*(a1 + 736) == 15)
                {
                  return v3;
                }

                goto LABEL_758;
              }

              if (updated == -521)
              {
                v287 = *(a1 + 520);
                goto LABEL_757;
              }

              goto LABEL_759;
            }

            if (v90 > 0xFF)
            {
              goto LABEL_606;
            }

            v396 = *(a1 + 2604);
            v397 = "HEADERS: insufficient padding space";
            goto LABEL_962;
          }

          *(a1 + 525) = v93 & 9;
          if (!v94)
          {
            v301 = 1;
            v302 = "DATA: stream_id == 0";
            goto LABEL_833;
          }

          v275 = (*(a1 + 2723) == 0) ^ v95;
          if (v275)
          {
            v276 = *(a1 + 2600);
          }

          else
          {
            v276 = *(a1 + 2596);
          }

          if (v276 < v95)
          {
            v301 = 1;
            v302 = "DATA: stream in idle";
            goto LABEL_833;
          }

          v304 = nghttp2_map_find(a1, v95);
          if (!v304 || (*(v304 + 116) & 2) != 0 || (v305 = *v304, *v304 == 5))
          {
            v306 = nghttp2_map_find(a1, v95);
            if (!v306 || (*(v306 + 117) & 1) == 0)
            {
              goto LABEL_633;
            }

            v301 = 5;
            v302 = "DATA: stream closed";
LABEL_833:
            v372 = session_terminate_session(a1, *(a1 + 2604), v301, v302);
            if (v372 <= -901)
            {
              v307 = v372;
            }

            else
            {
              v307 = -104;
            }

            goto LABEL_836;
          }

          if (*(v304 + 117))
          {
            v301 = 5;
            v302 = "DATA: stream in half-closed(remote)";
            goto LABEL_833;
          }

          if (v275)
          {
            if (v305 != 3)
            {
              if (v305 == 4)
              {
                v301 = 1;
                v302 = "DATA: stream in reserved";
                goto LABEL_833;
              }

              goto LABEL_884;
            }
          }

          else if (v305 != 3)
          {
            if (v305 != 2)
            {
              v301 = 1;
              v302 = "DATA: stream not opened";
              goto LABEL_833;
            }

LABEL_884:
            v307 = 0;
            goto LABEL_836;
          }

LABEL_633:
          v307 = -104;
LABEL_836:
          if (*(a1 + 736) == 15)
          {
            return v3;
          }

          if (v307 == -104)
          {
            updated = session_update_glitch_ratelim(a1);
            if (updated)
            {
              return updated;
            }

            if (*(a1 + 736) == 15)
            {
              return v3;
            }

LABEL_840:
            v265 = 14;
            goto LABEL_841;
          }

          if (v307 <= -901)
          {
            return v307;
          }

          if ((*(a1 + 525) & 8) == 0)
          {
            v41 = 1;
            v299 = 13;
            if (!*(a1 + 720) && (*(a1 + 525) & 1) == 0)
            {
              updated = session_update_glitch_ratelim(a1);
              if (updated)
              {
                return updated;
              }

              if (*(a1 + 736) == 15)
              {
                return v3;
              }

              v299 = 13;
            }

            goto LABEL_855;
          }

          if (*v7)
          {
            v373 = *(a1 + 616);
            *(a1 + 640) = v373;
            *(a1 + 632) = v373;
            *(a1 + 648) = v373 + 1;
            v41 = 1;
            v299 = 12;
            goto LABEL_855;
          }

          v396 = *(a1 + 2604);
          v397 = "DATA: insufficient padding space";
          goto LABEL_962;
        }

        if (v92 <= 6)
        {
          if (v92 == 5)
          {
            *(a1 + 525) = v93 & 0xC;
            if ((v93 & 8) == 0)
            {
              if (v90 > 0x3FF)
              {
                goto LABEL_207;
              }

              goto LABEL_821;
            }

            if (v90 > 0xFF)
            {
LABEL_606:
              v41 = 0;
              v298 = *(a1 + 616);
              *(a1 + 640) = v298;
              *(a1 + 632) = v298;
              *(a1 + 648) = v298 + 1;
              v299 = 3;
LABEL_855:
              *(a1 + 736) = v299;
              goto LABEL_856;
            }

            v396 = *(a1 + 2604);
            v397 = "PUSH_PROMISE: insufficient padding space";
LABEL_962:
            v390 = a1;
            v391 = 1;
            goto LABEL_963;
          }

          *(a1 + 525) = v93 & 1;
          if (v91 != 8)
          {
            goto LABEL_821;
          }
        }

        else
        {
          if (v92 != 7)
          {
            if (v92 == 8)
            {
LABEL_206:
              *(a1 + 525) = 0;
              if (v91 == 4)
              {
LABEL_207:
                v41 = 0;
                *(a1 + 736) = 3;
                v126 = *(a1 + 616);
                *(a1 + 640) = v126;
                *(a1 + 632) = v126;
                v127 = v126 + 4;
LABEL_559:
                *(a1 + 648) = v127;
LABEL_856:
                v374 = *(a1 + 2288);
                if (!v374 || !v374(a1, v7, *(a1 + 2400)))
                {
                  goto LABEL_843;
                }

                return -902;
              }

LABEL_821:
              v265 = 7;
              goto LABEL_841;
            }

            if (v92 == 9)
            {
              v396 = *(a1 + 2604);
              v397 = "CONTINUATION: unexpected";
              goto LABEL_962;
            }

            if ((*(v412 + (v92 >> 3)) >> (v92 & 7)))
            {
              if (*(a1 + 2320))
              {
                v41 = 1;
                v299 = 18;
                goto LABEL_855;
              }

LABEL_645:
              updated = session_update_glitch_ratelim(a1);
              if (!updated)
              {
                if (*(a1 + 736) != 15)
                {
                  goto LABEL_870;
                }

                return v3;
              }

              return updated;
            }

            if (v92 != 16)
            {
              if (v92 == 12)
              {
                if ((*(a1 + 2716) & 2) != 0)
                {
                  *(a1 + 528) = v409;
                  if (!*(a1 + 2723) && !v94 && v93 < 0x10)
                  {
                    *(a1 + 525) = 0;
                    if (v90 >= 0x100)
                    {
                      v380 = (*(a1 + 2368))();
                      *(a1 + 696) = v380;
                      if (!v380)
                      {
                        return -901;
                      }

                      v381 = *(a1 + 720);
                      *(a1 + 664) = v380;
                      *(a1 + 688) = v380;
                      *(a1 + 680) = v380;
                      *(a1 + 672) = v380;
                      *(a1 + 656) = v380;
                      v41 = 0;
                      if (v381)
                      {
                        *(a1 + 664) = v380 + v381;
                      }
                    }

                    else
                    {
                      v41 = 1;
                    }

                    v299 = 17;
                    goto LABEL_855;
                  }
                }
              }

              else
              {
                if (v92 != 10)
                {
                  goto LABEL_645;
                }

                if (*(a1 + 2716))
                {
                  *(a1 + 525) = 0;
                  *(a1 + 528) = v409;
                  if (!*(a1 + 2723))
                  {
                    if (v90 <= 0x1FF)
                    {
                      goto LABEL_821;
                    }

                    *(a1 + 736) = 3;
                    v308 = *(a1 + 616);
                    *(a1 + 640) = v308;
                    *(a1 + 632) = v308;
                    v309 = v308 + 2;
                    goto LABEL_804;
                  }
                }
              }

LABEL_870:
              v265 = 6;
              goto LABEL_841;
            }

            if ((*(a1 + 2716) & 4) == 0)
            {
              goto LABEL_870;
            }

            *(a1 + 525) = 0;
            *(a1 + 528) = v409;
            if (!*(a1 + 2723))
            {
              v396 = *(a1 + 2604);
              v397 = "PRIORITY_UPDATE is received from server";
              goto LABEL_962;
            }

            if (v90 <= 0x3FF)
            {
              goto LABEL_821;
            }

            updated = session_update_glitch_ratelim(a1);
            if (updated)
            {
              return updated;
            }

            if (*(a1 + 736) == 15)
            {
              return v3;
            }

            v364 = *(a1 + 720);
            if (v364 >= 0x21)
            {
              goto LABEL_870;
            }

            *(a1 + 736) = 3;
            v365 = *(a1 + 616);
            *(a1 + 640) = v365;
            *(a1 + 632) = v365;
            v309 = v365 + v364;
LABEL_804:
            *(a1 + 648) = v309;
            goto LABEL_666;
          }

          *(a1 + 525) = 0;
          if (v90 <= 0x7FF)
          {
            goto LABEL_821;
          }
        }

        v41 = 0;
        *(a1 + 736) = 3;
        v278 = *(a1 + 616);
        *(a1 + 640) = v278;
        *(a1 + 632) = v278;
        v127 = v278 + 8;
        goto LABEL_559;
      case 2:
        v82 = *(a1 + 648);
        v83 = *(a1 + 640);
        goto LABEL_154;
      case 3:
        v102 = *(a1 + 648);
        v103 = *(a1 + 640);
        if (v8 - v9 >= (v102 - v103))
        {
          v104 = v102 - v103;
        }

        else
        {
          v104 = v8 - v9;
        }

        if (v104)
        {
          memcpy(*(a1 + 640), v9, v104);
          v103 += v104;
          v102 = *(a1 + 648);
        }

        *(a1 + 640) = v103;
        v9 += v104;
        v105 = *(a1 + 720) - v104;
        *(a1 + 720) = v105;
        if (v102 != v103)
        {
          return v9 - v4;
        }

        v106 = *(a1 + 524);
        if (v106 > 5)
        {
          if (*(a1 + 524) > 7u)
          {
            if (v106 != 8)
            {
              if (v106 == 10)
              {
                if (v105 >= bswap32(**(a1 + 632)) >> 16)
                {
                  if (*v7 >= 3uLL)
                  {
                    v296 = (*(a1 + 2368))(*v7 - 2, *(a1 + 2360));
                    *(a1 + 696) = v296;
                    if (!v296)
                    {
                      return -901;
                    }

                    v297 = *(a1 + 512);
                    *(a1 + 664) = v296;
                    *(a1 + 688) = v296;
                    *(a1 + 680) = v296;
                    *(a1 + 672) = v296;
                    *(a1 + 656) = v296;
                    if (v297)
                    {
                      *(a1 + 664) = v296 + v297;
                    }
                  }

                  v265 = 16;
                  goto LABEL_841;
                }

                goto LABEL_821;
              }

              if (v106 != 16)
              {
                goto LABEL_777;
              }

              v107 = *(a1 + 632);
              v108 = v102 - v107;
              if (v108 <= 3)
              {
                __assert_rtn("nghttp2_frame_unpack_priority_update_payload", "nghttp2_frame.c", 924, "payloadlen >= 4");
              }

              v109 = *(a1 + 528);
              v111 = *v107;
              v110 = v107 + 1;
              *v109 = bswap32(v111 & 0xFFFFFF7F);
              v112 = v108 - 4;
              if (!v112)
              {
                v110 = 0;
              }

              *(v109 + 8) = v110;
              *(v109 + 16) = v112;
              if (!*(a1 + 2723))
              {
                __assert_rtn("nghttp2_session_on_priority_update_received", "nghttp2_session.c", 4823, "session->server");
              }

              v113 = v8;
              v114 = "PRIORITY_UPDATE: stream_id == 0";
              if (*(a1 + 520))
              {
LABEL_190:
                updated = session_handle_invalid_connection(a1, v7, 4294966791, v114);
                v8 = v113;
                if (updated > -901)
                {
                  goto LABEL_777;
                }

                return updated;
              }

              v327 = *(a1 + 528);
              v422 = 3;
              v328 = *v327;
              if (v328 && (v328 & 1) == 0)
              {
                v114 = "PRIORITY_UPDATE: prioritizing idle push is not allowed";
                if (*(a1 + 2596) < v328)
                {
                  goto LABEL_190;
                }

                goto LABEL_890;
              }

              v361 = nghttp2_map_find(a1, *v327);
              if (v361)
              {
                v362 = v361;
                if ((*(v361 + 116) & 0x20) != 0)
                {
                  goto LABEL_890;
                }
              }

              else
              {
                if (!v328)
                {
                  goto LABEL_890;
                }

                v367 = (v328 & 1) != 0 ? *(a1 + 2600) : *(a1 + 2596);
                if (v367 >= v328)
                {
                  goto LABEL_890;
                }

                v114 = "PRIORITY_UPDATE: max concurrent streams exceeded";
                if (*(a1 + 2496) + *(a1 + 2528) >= *(a1 + 2684))
                {
                  goto LABEL_190;
                }

                v362 = nghttp2_session_open_stream(a1, v328, 5, 0);
                if (!v362)
                {
                  return -901;
                }
              }

              if (!nghttp2_http_parse_priority(&v422, *(v327 + 1), *(v327 + 2)))
              {
                if (session_update_stream_priority(a1, v362, ((BYTE4(v422) & 1) << 7) | v422) >= -900)
                {
                  v8 = v113;
                  v363 = *(a1 + 2160);
                  if (!v363)
                  {
                    goto LABEL_777;
                  }

                  goto LABEL_891;
                }

                return -901;
              }

LABEL_890:
              v363 = *(a1 + 2160);
              v8 = v113;
              if (!v363)
              {
                goto LABEL_777;
              }

LABEL_891:
              if (!v363(a1, v7, *(a1 + 2400)))
              {
                goto LABEL_777;
              }

              return -902;
            }

            v290 = **(a1 + 632) & 0xFFFFFF7F;
            v291 = bswap32(v290);
            *(a1 + 528) = v291;
            v292 = *(a1 + 520);
            if (v292)
            {
              v293 = v8;
              v294 = *(a1 + 2723);
              if ((*(a1 + 2723) == 0) == (*(a1 + 520) & 1))
              {
                v295 = *(a1 + 2596);
              }

              else
              {
                v295 = *(a1 + 2600);
              }

              v322 = a1;
              if (v295 < v292)
              {
                v323 = v7;
                v324 = 4294966791;
                v325 = "WINDOW_UPDATE to idle stream";
                goto LABEL_806;
              }

              v343 = nghttp2_map_find(a1, v292);
              if (!v343)
              {
                goto LABEL_807;
              }

              v344 = *(v343 + 116);
              if ((v344 & 2) != 0 || *v343 == 5)
              {
                goto LABEL_807;
              }

              if (*v343 == 4)
              {
                v345 = *(v343 + 80);
                if (!v345 || (((v294 == 0) ^ v345) & 1) != 0)
                {
                  v322 = a1;
                  v323 = v7;
                  v324 = 4294966791;
                  v325 = "WINDOW_UPADATE to reserved stream";
LABEL_806:
                  updated = session_handle_invalid_connection(v322, v323, v324, v325);
                  if (updated <= -901)
                  {
                    return updated;
                  }

                  goto LABEL_807;
                }
              }

              if (v290)
              {
                v346 = *(v343 + 84);
                if ((v291 ^ 0x7FFFFFFF) < v346)
                {
                  v322 = a1;
                  v323 = v7;
                  v324 = 4294966772;
                  v325 = "WINDOW_UPDATE: window size overflow";
                  goto LABEL_806;
                }

                v382 = v346 + v291;
                *(v343 + 84) = v382;
                if (v382 >= 1)
                {
                  if (*(v343 + 64))
                  {
                    if ((v344 & 4) != 0)
                    {
                      updated = session_resume_deferred_stream_item(a1, v343, 4);
                      if (updated < -900)
                      {
                        return updated;
                      }
                    }
                  }
                }

LABEL_812:
                v366 = *(a1 + 2160);
                if (v366 && v366(a1, v7, *(a1 + 2400)))
                {
                  return -902;
                }

LABEL_807:
                if (*(a1 + 736) != 15)
                {
                  session_inbound_frame_reset(a1);
                  v41 = 0;
                  v8 = v293;
                  goto LABEL_843;
                }

                return v3;
              }
            }

            else
            {
              v293 = v8;
              if (v290)
              {
                v321 = *(a1 + 2620);
                if ((v291 ^ 0x7FFFFFFF) < v321)
                {
                  v322 = a1;
                  v323 = v7;
                  v324 = 4294966772;
                  v325 = 0;
                  goto LABEL_806;
                }

                *(a1 + 2620) = v321 + v291;
                goto LABEL_812;
              }
            }

            v322 = a1;
            v323 = v7;
            v324 = 4294966791;
            v325 = "WINDOW_UPDATE: window_size_increment == 0";
            goto LABEL_806;
          }

          if (v106 != 6)
          {
            if (v106 != 7)
            {
              goto LABEL_777;
            }

            v263 = *v7 - 8;
            if (*v7 != 8)
            {
              v264 = (*(a1 + 2368))(*v7 - 8, *(a1 + 2360));
              *(a1 + 696) = v264;
              if (!v264)
              {
                return -901;
              }

              *(a1 + 688) = v264;
              *(a1 + 680) = v264;
              *(a1 + 672) = v264;
              *(a1 + 656) = v264;
              *(a1 + 664) = v264 + v263;
            }

            v265 = 9;
            goto LABEL_841;
          }

          *(a1 + 528) = **(a1 + 632);
          if (*(a1 + 520))
          {
            v236 = a1;
            v237 = v7;
            v238 = "PING: stream_id != 0";
LABEL_726:
            updated = session_handle_invalid_connection(v236, v237, 4294966791, v238);
            goto LABEL_775;
          }

          if ((*(a1 + 2708) & 8) != 0 || (*(a1 + 525) & 1) != 0 || session_is_closing(a1, __src) || (updated = nghttp2_session_add_ping(a1, 1, v413)) == 0)
          {
            v326 = *(a1 + 2160);
            if (v326 && v326(a1, v7, *(a1 + 2400)))
            {
              return -902;
            }

            goto LABEL_776;
          }

LABEL_775:
          if (updated <= -901)
          {
            return updated;
          }

          goto LABEL_776;
        }

        if (*(a1 + 524) <= 2u)
        {
          if (v106 != 1)
          {
            goto LABEL_777;
          }

          if (*(a1 + 728))
          {
            goto LABEL_584;
          }

          v282 = *(a1 + 525);
          if ((v282 & 8) == 0)
          {
            goto LABEL_584;
          }

          v283 = 5;
          if ((*(a1 + 525) & 0x20) == 0)
          {
            v283 = 0;
          }

          v284 = **(a1 + 632);
          if (v105 < v284 || (v285 = v284 + 1, *(a1 + 728) = v285, v285 + v283 > v105 + 1))
          {
            v396 = *(a1 + 2604);
            v397 = "HEADERS: invalid padding";
            goto LABEL_962;
          }

          *v413 = v285;
          if ((v282 & 0x20) == 0)
          {
            v286 = *(a1 + 616);
            *(a1 + 648) = v286;
            *(a1 + 640) = v286;
            *(a1 + 632) = v286;
            goto LABEL_584;
          }

          if (v105 < v283)
          {
            goto LABEL_821;
          }

          v41 = 0;
          *(a1 + 736) = 3;
          v375 = *(a1 + 616);
          *(a1 + 640) = v375;
          *(a1 + 632) = v375;
          v350 = v375 + v283;
LABEL_764:
          *(a1 + 648) = v350;
          goto LABEL_843;
        }

        if (v106 == 3)
        {
          *(a1 + 528) = bswap32(**(a1 + 632));
          v288 = *(a1 + 520);
          if (!v288)
          {
            v236 = a1;
            v237 = v7;
            v238 = "RST_STREAM: stream_id == 0";
            goto LABEL_726;
          }

          if ((*(a1 + 2723) == 0) == (*(a1 + 520) & 1))
          {
            v289 = *(a1 + 2596);
          }

          else
          {
            v289 = *(a1 + 2600);
          }

          v236 = a1;
          if (v289 < v288)
          {
            v237 = v7;
            v238 = "RST_STREAM: stream in idle";
            goto LABEL_726;
          }

          v339 = nghttp2_map_find(a1, v288);
          if (v339 && (*(v339 + 116) & 2) == 0 && *v339 != 5)
          {
            *(v339 + 117) |= 1u;
          }

          v340 = *(a1 + 2160);
          if (v340 && v340(a1, v7, *(a1 + 2400)))
          {
            return -902;
          }

          updated = nghttp2_session_close_stream(a1, *(a1 + 520), *(a1 + 528));
          if (updated < -900)
          {
            return updated;
          }

          if (*(a1 + 2723) && (*(a1 + 2724) & 0x10) == 0)
          {
            v341 = nghttp2_time_now_sec();
            nghttp2_ratelim_update((a1 + 2416), v341);
            v342 = *(a1 + 2432);
            if (v342)
            {
              *(a1 + 2432) = v342 - 1;
              goto LABEL_776;
            }

            updated = nghttp2_session_add_goaway(a1, *(a1 + 2600), 2, 0, 0, 0);
            goto LABEL_775;
          }

LABEL_776:
          if (*(a1 + 736) != 15)
          {
            goto LABEL_777;
          }

          return v3;
        }

        if (v106 != 5)
        {
          goto LABEL_777;
        }

        if (*(a1 + 728))
        {
          v262 = *(a1 + 632);
        }

        else
        {
          v262 = *(a1 + 632);
          if ((*(a1 + 525) & 8) != 0)
          {
            v359 = *v262;
            if (v105 < v359 || (*(a1 + 728) = v359 + 1, v359 + 5 > v105 + 1))
            {
              v396 = *(a1 + 2604);
              v397 = "PUSH_PROMISE: invalid padding";
              goto LABEL_962;
            }

            v41 = 0;
            *(a1 + 528) = v359 + 1;
            *(a1 + 736) = 3;
            v360 = *(a1 + 616);
            *(a1 + 640) = v360;
            *(a1 + 632) = v360;
            v350 = v360 + 4;
            goto LABEL_764;
          }
        }

        v316 = *v262 & 0xFFFFFF7F;
        v317 = bswap32(v316);
        *(a1 + 552) = v317;
        *v410 = 0;
        v410[1] = 0;
        __src = *(a1 + 520);
        if (!__src)
        {
          v318 = a1;
          v319 = v7;
          v320 = "PUSH_PROMISE: stream_id == 0";
          goto LABEL_751;
        }

        if (*(a1 + 2723) || !*(a1 + 2680))
        {
          v318 = a1;
          v319 = v7;
          v320 = "PUSH_PROMISE: push disabled";
          goto LABEL_751;
        }

        if ((__src & 1) == 0)
        {
          v318 = a1;
          v319 = v7;
          v320 = "PUSH_PROMISE: invalid stream_id";
          goto LABEL_751;
        }

        if ((*(a1 + 2724) & 5) != 0)
        {
LABEL_752:
          updated = -103;
          goto LABEL_753;
        }

        if ((v316 != 0) == (v317 & 1) || *(a1 + 2600) >= v317)
        {
          v318 = a1;
          v319 = v7;
          v320 = "PUSH_PROMISE: invalid promised_stream_id";
LABEL_751:
          updated = session_handle_invalid_connection(v318, v319, 4294966791, v320);
          if (updated <= -901)
          {
            return updated;
          }

          goto LABEL_752;
        }

        if (*(a1 + 2596) < __src)
        {
          v368 = a1;
          v369 = v7;
          v370 = 4294966791;
          v371 = "PUSH_PROMISE: stream in idle";
          goto LABEL_830;
        }

        *(a1 + 2600) = v317;
        stream = nghttp2_session_get_stream(a1, __src);
        if (stream && *stream != 3 && *(a1 + 2720) && *(a1 + 2504) < *(a1 + 2512))
        {
          if (*(stream + 117))
          {
            v368 = a1;
            v369 = v7;
            v370 = 4294966786;
            v371 = "PUSH_PROMISE: stream closed";
LABEL_830:
            updated = session_handle_invalid_connection(v368, v369, v370, v371);
            if (updated <= -901)
            {
              return updated;
            }

            goto LABEL_947;
          }

          if (!nghttp2_session_open_stream(a1, v317, 4, 0))
          {
            return -901;
          }

          *(a1 + 2604) = *(a1 + 2600);
          v388 = *(a1 + 2216);
          if (!v388)
          {
            updated = 0;
            goto LABEL_753;
          }

          v389 = v388(a1, v7, *(a1 + 2400));
          if (v389)
          {
            updated = -902;
          }

          else
          {
            updated = 0;
          }

          if (v389 == -521)
          {
            updated = -521;
            goto LABEL_753;
          }
        }

        else
        {
          updated = session_handle_invalid_stream2(a1, v317, 0, 4294967189);
          if (!updated)
          {
LABEL_947:
            updated = -103;
            goto LABEL_753;
          }
        }

        if (updated <= -901)
        {
          return updated;
        }

LABEL_753:
        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        if (updated != -103)
        {
          if (updated == -521)
          {
            v287 = *(a1 + 552);
LABEL_757:
            updated = session_handle_invalid_stream2(a1, v287, 0, 4294966762);
            if (updated <= -901)
            {
              return updated;
            }

            goto LABEL_758;
          }

LABEL_759:
          v265 = 4;
LABEL_841:
          *(a1 + 736) = v265;
          goto LABEL_842;
        }

LABEL_758:
        *(a1 + 736) = 5;
        goto LABEL_842;
      case 4:
      case 5:
        v11 = v3;
        v12 = *(a1 + 720);
        if (v8 - v9 >= v12)
        {
          v13 = *(a1 + 720);
        }

        else
        {
          v13 = v8 - v9;
        }

        v14 = v12 - v13;
        v15 = *(a1 + 728);
        v16 = *(a1 + 525);
        if (v15)
        {
          v17 = v15 - ((v16 >> 3) & 1);
        }

        else
        {
          v17 = 0;
        }

        v18 = v12 - v17;
        if (v13 < v17 - v14)
        {
          v18 = -1;
        }

        if (v17 <= v14)
        {
          v18 = v13;
        }

        if (v18 == -1)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        v419 = (v12 - v19 == v17) & (v16 >> 2);
        if (v19 <= 0 && ((v19 == 0) & v419) == 0)
        {
          v9 += v13;
          *(a1 + 720) = v14;
          v3 = v11;
          if (v14)
          {
            goto LABEL_778;
          }

          goto LABEL_200;
        }

        v422 = 0;
        v423 = 0;
        v424 = 0;
        v21 = nghttp2_map_find(a1, *(a1 + 520));
        if (!v21 || (*(v21 + 116) & 2) != 0)
        {
          v22 = 0;
        }

        else if (*v21 == 5)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        v128 = *(a1 + 524);
        v407 = v8;
        v408 = v11;
        v406 = v4;
        v416 = v7;
        if (v128 == 5)
        {
          v129 = nghttp2_map_find(a1, *(a1 + 552));
          if (!v129 || (*(v129 + 116) & 2) != 0)
          {
LABEL_220:
            v418 = 0;
LABEL_221:
            v404 = 0;
            goto LABEL_222;
          }

          v404 = 0;
          if (*v129 == 5)
          {
            v130 = 0;
          }

          else
          {
            v130 = v129;
          }

          v418 = v130;
        }

        else
        {
          if (!v22)
          {
            goto LABEL_220;
          }

          v418 = v22;
          if (v128 != 1)
          {
            goto LABEL_221;
          }

          v131 = *(a1 + 568);
          if (*(a1 + 2723))
          {
            v132 = v131 == 3;
          }

          else
          {
            if (v131 != 3)
            {
              goto LABEL_221;
            }

            v132 = ((*(v22 + 112) >> 14) & 1) == 0;
          }

          v404 = v132;
        }

LABEL_222:
        v133 = 0;
        v134 = v9;
        while (2)
        {
          v425 = 0;
          v135 = nghttp2_hd_inflate_hd_nv(a1 + 1888, &v422, &v425, v134, v19, v419);
          v136 = v135;
          if (v135 < -900)
          {
            return v136;
          }

          if ((v135 & 0x8000000000000000) != 0)
          {
            v266 = *(a1 + 736) != 4 || v418 == 0;
            if (v266 || *v418 == 3 || (updated = nghttp2_session_add_rst_stream_continue(a1, *(v418 + 80), 9, 1), updated >= -900))
            {
              updated = session_terminate_session(a1, *(a1 + 2604), 9, 0);
              if (updated > -901)
              {
                updated = -523;
LABEL_561:
                v7 = v416;
                v8 = v407;
                goto LABEL_865;
              }
            }

            return updated;
          }

          v133 += v135;
          v137 = v425;
          if (v10 != 4 || (v425 & 2) == 0 || !v418)
          {
            goto LABEL_455;
          }

          if ((*(a1 + 2708) & 4) != 0)
          {
            goto LABEL_450;
          }

          v405 = v13;
          v138 = v422;
          v139 = *(v422 + 16);
          v140 = *(v422 + 24);
          v141 = v418;
          if (!v140)
          {
            goto LABEL_304;
          }

          v142 = *v139;
          v143 = *(v422 + 16);
          v144 = *(v422 + 24);
          if (v142 != 58)
          {
            goto LABEL_233;
          }

          v144 = v140 - 1;
          if (v140 == 1)
          {
            goto LABEL_863;
          }

          v143 = (v139 + 1);
          do
          {
LABEL_233:
            if (!VALID_HD_NAME_CHARS[*v143])
            {
              if (*v139 != 58)
              {
                v149 = 0;
                while (v139[v149] - 91 < 0xFFFFFFE6)
                {
                  if (v140 == ++v149)
                  {
                    goto LABEL_304;
                  }
                }
              }

              goto LABEL_863;
            }

            ++v143;
            --v144;
          }

          while (v144);
          v145 = v424;
          if (v424 > 4)
          {
            if (v424 == 5)
            {
              v146 = v423;
              v158 = *(v423 + 24);
              if (!v158)
              {
                goto LABEL_303;
              }

              v159 = *(v423 + 16);
              if ((*v159 & 0xDFu) - 65 > 0x19)
              {
                goto LABEL_303;
              }

              v160 = v158 - 1;
              if (!v160)
              {
                goto LABEL_301;
              }

              v161 = v159 + 1;
              while (1)
              {
                v162 = *v161;
                if (v162 - 48 >= 0xA && (v162 & 0xFFFFFFDF) - 65 >= 0x1A)
                {
                  v211 = v162 > 0x2E;
                  v164 = (1 << v162) & 0x680000000000;
                  if (v211 || v164 == 0)
                  {
                    break;
                  }
                }

                ++v161;
                if (!--v160)
                {
                  goto LABEL_301;
                }
              }
            }

            else if (v424 == 37)
            {
LABEL_262:
              if (*(a1 + 2723) || *(a1 + 524) == 5)
              {
                v146 = v423;
                v156 = *(v423 + 24);
                if (!v156)
                {
                  goto LABEL_301;
                }

                v157 = *(v423 + 16);
                while (VALID_AUTHORITY_CHARS[*v157])
                {
                  ++v157;
                  if (!--v156)
                  {
                    goto LABEL_301;
                  }
                }
              }

              else
              {
                v146 = v423;
                v166 = *(v423 + 16);
                __src = *(v423 + 24);
                if ((*(v418 + 116) & 0x40) == 0)
                {
                  goto LABEL_286;
                }

                if (!__src)
                {
                  goto LABEL_301;
                }

                while (VALID_HD_VALUE_CHARS[*v166])
                {
                  ++v166;
                  if (!--__src)
                  {
                    goto LABEL_301;
                  }
                }
              }
            }

            else
            {
              if (v424 == 66)
              {
                v150 = *(v418 + 116);
                v146 = v423;
                if ((v150 & 0x40) != 0)
                {
                  v151 = *(v423 + 24);
                  if (!v151)
                  {
                    goto LABEL_303;
                  }

                  v152 = *(v423 + 16);
                  while (1)
                  {
                    v154 = *v152++;
                    v153 = v154;
                    if (v154 != 32 && v153 != 9)
                    {
                      break;
                    }

                    if (!--v151)
                    {
                      goto LABEL_303;
                    }
                  }
                }
              }

              else
              {
LABEL_284:
                v150 = *(v418 + 116);
                v146 = v423;
              }

              v166 = *(v146 + 16);
              __src = *(v146 + 24);
              if ((v150 & 0x40) == 0)
              {
LABEL_286:
                v399 = *v139;
                v400 = v146;
                v401 = *(v422 + 24);
                v402 = *(v422 + 16);
                v167 = v422;
                v168 = nghttp2_check_header_value_rfc9113(v166, __src);
                v138 = v167;
                LODWORD(v140) = v401;
                v139 = v402;
                v146 = v400;
                v142 = v399;
                if (!v168)
                {
                  goto LABEL_303;
                }

                goto LABEL_301;
              }

              if (!__src)
              {
                goto LABEL_301;
              }

              while (VALID_HD_VALUE_CHARS[*v166])
              {
                ++v166;
                if (!--__src)
                {
                  goto LABEL_301;
                }
              }
            }

LABEL_303:
            v141 = v418;
            if (v142 == 58)
            {
              goto LABEL_863;
            }

LABEL_304:
            *(v141 + 112) |= 0x40u;
            v173 = *(a1 + 2248);
            if (v173)
            {
              v174 = v423;
              v175 = v138;
              updated = v173(a1, v416, v138, v423, BYTE4(v424), *(a1 + 2400));
              if (updated)
              {
LABEL_670:
                if (updated == -526)
                {
                  v7 = v416;
                  v8 = v407;
                  v13 = v405;
                  goto LABEL_865;
                }

                v7 = v416;
                v8 = v407;
                if (updated == -521)
                {
                  updated = session_call_error_callback(a1, 4294966765, "Invalid HTTP header field was received: frame type: %u, stream: %d, name: [%.*s], value: [%.*s]", *(a1 + 524), *(a1 + 520), *(v175 + 24), *(v175 + 16), *(v174 + 24), *(v174 + 16));
                  if (updated >= -900)
                  {
                    updated = session_handle_invalid_stream2(a1, *(v418 + 80), v416, 4294966765);
                    v13 = v405;
                    if (updated > -901)
                    {
                      updated = -521;
                      goto LABEL_865;
                    }
                  }

                  return updated;
                }

                LODWORD(v136) = -902;
                return v136;
              }

LABEL_309:
              v139 = *(v175 + 16);
              v140 = *(v175 + 24);
            }

            else
            {
              v176 = *(a1 + 2240);
              v174 = v423;
              if (v176)
              {
                v175 = v138;
                updated = v176(a1, v416, v139);
                if (updated)
                {
                  goto LABEL_670;
                }

                goto LABEL_309;
              }
            }

            v177 = session_call_error_callback(a1, 4294966765, "Ignoring received invalid HTTP header field: frame type: %u, stream: %d, name: [%.*s], value: [%.*s]", *(a1 + 524), *(a1 + 520), v140, v139, *(v174 + 24), *(v174 + 16));
            v13 = v405;
            if (v177 > -901)
            {
              goto LABEL_455;
            }

            LODWORD(v136) = v177;
            return v136;
          }

          if (!v424)
          {
            goto LABEL_262;
          }

          if (v424 == 1)
          {
            v146 = v423;
            v169 = *(v423 + 24);
            if (v169)
            {
              v170 = *(v423 + 16);
              while (VALID_METHOD_CHARS[*v170])
              {
                ++v170;
                if (!--v169)
                {
                  goto LABEL_301;
                }
              }
            }

            goto LABEL_303;
          }

          if (v424 != 3)
          {
            goto LABEL_284;
          }

          v146 = v423;
          v147 = *(v423 + 24);
          if (v147)
          {
            v148 = *(v423 + 16);
            while (VALID_PATH_CHARS[*v148])
            {
              ++v148;
              if (!--v147)
              {
                goto LABEL_301;
              }
            }

            goto LABEL_303;
          }

LABEL_301:
          if (!*(a1 + 2723))
          {
            v172 = v418;
            if (*(a1 + 524) == 5)
            {
              v171 = 1;
              goto LABEL_314;
            }

            if (v142 != 58 || !v404 && (*(v418 + 112) & 0x40) == 0)
            {
              v185 = (v145 - 27);
              if (v185 > 0x26)
              {
                goto LABEL_406;
              }

              if (v145 != 27)
              {
                if (v185 == 34)
                {
                  if (*(v146 + 24) == 8)
                  {
                    v186 = 0;
                    while (1)
                    {
                      v187 = aTrailers[v186];
                      v188 = *(*(v146 + 16) + v186);
                      if ((v187 - 65) < 0x1A)
                      {
                        v187 |= 0x20u;
                      }

                      if ((v188 - 65) < 0x1A)
                      {
                        v188 |= 0x20u;
                      }

                      if (v187 != v188)
                      {
                        break;
                      }

                      if (++v186 == 8)
                      {
                        goto LABEL_464;
                      }
                    }
                  }

                  goto LABEL_863;
                }

                if (((1 << (v145 - 27)) & 0x6820000000) != 0)
                {
                  goto LABEL_863;
                }

LABEL_406:
                if (v145 == 7)
                {
                  v206 = *(v418 + 112);
                  if ((v206 & 0x20) == 0)
                  {
                    v207 = *(v146 + 24);
                    if (v207)
                    {
                      *(v418 + 112) = v206 | 0x20;
                      if (v207 == 3)
                      {
                        v208 = 0;
                        v209 = 0;
                        do
                        {
                          v210 = *(*(v146 + 16) + v208);
                          v211 = (v210 - 58) >= 0xFFFFFFF6 && v209 <= 0xCCCCCCCCCCCCCCCLL;
                          v212 = 10 * v209;
                          v213 = v210 & 0xF;
                          if (!v211 || v212 > (v213 ^ 0x7FFFFFFFFFFFFFFFLL))
                          {
                            *(v418 + 108) = -1;
                            goto LABEL_863;
                          }

                          v209 = v212 + v213;
                          ++v208;
                        }

                        while (v208 != 3);
                        *(v418 + 108) = v209;
                        if (v209 != 101 && v209 != 0xFFFF)
                        {
                          goto LABEL_464;
                        }
                      }
                    }
                  }

                  goto LABEL_863;
                }

                if (v142 == 58)
                {
                  goto LABEL_863;
                }

LABEL_464:
                v13 = v405;
                if (*v139 != 58)
                {
                  *(v418 + 112) |= 0x40u;
                }

                goto LABEL_450;
              }

              v204 = *(v418 + 108);
              if (v204 == 204)
              {
                if (*(v418 + 16) == -1 && *(v146 + 24) == 1)
                {
                  v205 = **(v146 + 16);
                  if ((v205 - 65) < 0x1A)
                  {
                    v205 |= 0x20u;
                  }

                  if (v205 == 48)
                  {
                    *(v418 + 16) = 0;
                    v13 = v405;
                    goto LABEL_455;
                  }
                }
              }

              else
              {
                if ((v204 - 100) < 0x64)
                {
                  goto LABEL_863;
                }

                v13 = v405;
                if ((v204 - 200) <= 0x63 && (*(v418 + 112) & 0x80) != 0)
                {
                  goto LABEL_455;
                }

                if (*(v418 + 16) == -1)
                {
                  v226 = v140;
                  v227 = v139;
                  v228 = parse_uint(*(v146 + 16), *(v146 + 24));
                  v139 = v227;
                  LODWORD(v140) = v226;
                  *(v418 + 16) = v228;
                  if (v228 != -1)
                  {
                    goto LABEL_464;
                  }
                }
              }
            }

            goto LABEL_863;
          }

          v171 = *(a1 + 2721) == 0;
          v172 = v418;
LABEL_314:
          if (v142 == 58 && (v404 || (*(v172 + 112) & 0x40) != 0))
          {
            goto LABEL_863;
          }

          if (v145 > 36)
          {
            if (v145 <= 61)
            {
              switch(v145)
              {
                case '%':
                  v195 = *(v172 + 112);
                  if ((v195 & 0x10) == 0 && *(v146 + 24))
                  {
                    v184 = v195 | 0x10;
                    goto LABEL_446;
                  }

                  break;
                case '=':
                  if (*(v146 + 24) == 8)
                  {
                    v189 = 0;
                    while (1)
                    {
                      v190 = aTrailers[v189];
                      v191 = *(*(v146 + 16) + v189);
                      if ((v190 - 65) < 0x1A)
                      {
                        v190 |= 0x20u;
                      }

                      if ((v191 - 65) < 0x1A)
                      {
                        v191 |= 0x20u;
                      }

                      if (v190 != v191)
                      {
                        break;
                      }

                      if (++v189 == 8)
                      {
                        goto LABEL_447;
                      }
                    }
                  }

                  break;
                case '8':
                  goto LABEL_863;
                default:
                  goto LABEL_467;
              }
            }

            else
            {
              if (v145 != 66)
              {
                if (v145 == 67)
                {
                  if (v404 || (*(v172 + 80) & 1) == 0 || (*(v172 + 114) & 2) != 0)
                  {
                    goto LABEL_447;
                  }

                  v181 = v138;
                  v182 = *(v172 + 121);
                  v426 = v182 & 0x7F;
                  v427 = v182 >> 7;
                  v183 = v172;
                  if (nghttp2_http_parse_priority(&v426, *(v146 + 16), *(v146 + 24)))
                  {
                    v184 = *(v183 + 112) & 0xFFFCFFFF | 0x20000;
                  }

                  else
                  {
                    *(v183 + 121) = v426 | (v427 << 7);
                    v184 = *(v183 + 112) | 0x10000;
                  }

                  v172 = v183;
                  v138 = v181;
LABEL_446:
                  *(v172 + 112) = v184;
                  goto LABEL_447;
                }

                if ((v145 - 62) < 4)
                {
                  goto LABEL_863;
                }

LABEL_467:
                if (v142 == 58)
                {
                  goto LABEL_863;
                }

                goto LABEL_447;
              }

              if (!v171)
              {
                v198 = *(v172 + 112);
                if ((v198 & 0x8000) == 0)
                {
                  if (*(v146 + 24))
                  {
                    v184 = v198 | 0x8000;
                    goto LABEL_446;
                  }
                }
              }
            }

            goto LABEL_863;
          }

          if (v145 <= 2)
          {
            if (!v145)
            {
              v199 = *(v172 + 112);
              if ((v199 & 1) == 0 && *(v146 + 24))
              {
                v184 = v199 | 1;
                goto LABEL_446;
              }

              goto LABEL_863;
            }

            if (v145 != 1)
            {
              goto LABEL_467;
            }

            v192 = *(v172 + 112);
            if ((v192 & 4) == 0)
            {
              v193 = *(v146 + 24);
              if (v193)
              {
                *(v172 + 112) = v192 | 4;
                if (v193 == 7)
                {
                  v216 = *(v146 + 16);
                  v217 = *(v216 + 6);
                  if (v217 == 83)
                  {
                    v229 = *v216;
                    v230 = *(v216 + 3);
                    if (v229 != 1230262351 || v230 != 1397641033)
                    {
                      goto LABEL_447;
                    }

                    v194 = 516;
                  }

                  else
                  {
                    if (v217 != 84)
                    {
                      goto LABEL_447;
                    }

                    v218 = *v216;
                    v219 = *(v216 + 3);
                    if (v218 != 1313754947 || v219 != 1413694798)
                    {
                      goto LABEL_447;
                    }

                    if ((*(v172 + 80) & 1) == 0)
                    {
                      goto LABEL_863;
                    }

                    v194 = 132;
                  }
                }

                else
                {
                  if (v193 != 4 || **(v146 + 16) != 1145128264)
                  {
                    goto LABEL_447;
                  }

                  v194 = 260;
                }

                goto LABEL_445;
              }
            }

LABEL_863:
            updated = session_call_error_callback(a1, 4294966765, "Invalid HTTP header field was received: frame type: %u, stream: %d, name: [%.*s], value: [%.*s]", *(a1 + 524), *(a1 + 520), v140, v139, *(v423 + 24), *(v423 + 16));
            if (updated > -901)
            {
              updated = session_terminate_session(a1, *(a1 + 2604), 1, 0);
              v7 = v416;
              v8 = v407;
              v13 = v405;
              if (updated > -901)
              {
                goto LABEL_865;
              }
            }

            return updated;
          }

          if (v145 == 3)
          {
            v192 = *(v172 + 112);
            if ((v192 & 2) != 0)
            {
              goto LABEL_863;
            }

            v196 = *(v146 + 24);
            if (!v196)
            {
              goto LABEL_863;
            }

            *(v172 + 112) = v192 | 2;
            v197 = **(v146 + 16);
            if (v197 == 47)
            {
              v194 = 2050;
            }

            else
            {
              if (v196 != 1 || v197 != 42)
              {
                goto LABEL_447;
              }

              v194 = 4098;
            }

LABEL_445:
            v184 = v192 | v194;
            goto LABEL_446;
          }

          if (v145 == 5)
          {
            v192 = *(v172 + 112);
            if ((v192 & 8) == 0)
            {
              v200 = *(v146 + 24);
              if (v200)
              {
                *(v172 + 112) = v192 | 8;
                if (v200 == 5)
                {
                  v221 = 0;
                  while (1)
                  {
                    v222 = aHttps[v221];
                    v223 = *(*(v146 + 16) + v221);
                    if ((v222 - 65) < 0x1A)
                    {
                      v222 |= 0x20u;
                    }

                    if ((v223 - 65) < 0x1A)
                    {
                      v223 |= 0x20u;
                    }

                    if (v222 != v223)
                    {
                      break;
                    }

                    if (++v221 == 5)
                    {
LABEL_444:
                      v194 = 8200;
                      goto LABEL_445;
                    }
                  }
                }

                else if (v200 == 4)
                {
                  v201 = 0;
                  while (1)
                  {
                    v202 = aHttp[v201];
                    v203 = *(*(v146 + 16) + v201);
                    if ((v202 - 65) < 0x1A)
                    {
                      v202 |= 0x20u;
                    }

                    if ((v203 - 65) < 0x1A)
                    {
                      v203 |= 0x20u;
                    }

                    if (v202 != v203)
                    {
                      break;
                    }

                    if (++v201 == 4)
                    {
                      goto LABEL_444;
                    }
                  }
                }

                goto LABEL_447;
              }
            }

            goto LABEL_863;
          }

          if (v145 != 27)
          {
            goto LABEL_467;
          }

          if (*(v172 + 16) != -1)
          {
            goto LABEL_863;
          }

          v178 = v138;
          v179 = v140;
          v403 = v139;
          v180 = parse_uint(*(v146 + 16), *(v146 + 24));
          v139 = v403;
          LODWORD(v140) = v179;
          v138 = v178;
          *(v418 + 16) = v180;
          v172 = v418;
          if (v180 == -1)
          {
            goto LABEL_863;
          }

LABEL_447:
          if (**(v138 + 16) != 58)
          {
            *(v172 + 112) |= 0x40u;
          }

          v13 = v405;
LABEL_450:
          v224 = *(a1 + 2232);
          if (v224)
          {
            updated = v224(a1, v416, v422, v423, BYTE4(v424), *(a1 + 2400));
            if (updated)
            {
              goto LABEL_619;
            }

LABEL_455:
            if (v137)
            {
              nghttp2_rcbuf_decref(*(a1 + 2064));
              nghttp2_rcbuf_decref(*(a1 + 2056));
              updated = 0;
              *v411 = 0;
              v411[1] = 0;
              *(a1 + 2116) = 1;
              v7 = v416;
              v8 = v407;
              goto LABEL_865;
            }

            v134 += v136;
            v19 -= v136;
            if (!v19 && (v137 & 2) == 0)
            {
              updated = 0;
              goto LABEL_561;
            }

            continue;
          }

          break;
        }

        v225 = *(a1 + 2224);
        if (!v225)
        {
          goto LABEL_455;
        }

        updated = v225(a1, v416, *(v422 + 16), *(v422 + 24), *(v423 + 16), *(v423 + 24), BYTE4(v424), *(a1 + 2400));
        if (!updated)
        {
          goto LABEL_455;
        }

LABEL_619:
        if (updated == -526)
        {
          goto LABEL_561;
        }

        v7 = v416;
        v8 = v407;
        if (updated != -521)
        {
          return -902;
        }

LABEL_865:
        v10 = *(a1 + 736);
        if (v10 == 15)
        {
          return v408;
        }

        if (updated == -521)
        {
          *(a1 + 720) -= v133;
          v377 = 520;
          if (*(a1 + 524) == 5)
          {
            v377 = 552;
          }

          updated = nghttp2_session_add_rst_stream_continue(a1, *(a1 + v377), 2, 1);
          if (updated > -901)
          {
            v9 += v133;
            *(a1 + 736) = 5;
            v41 = 1;
            v3 = v408;
            v4 = v406;
            goto LABEL_843;
          }

          return updated;
        }

        if (updated == -526)
        {
          *(a1 + 720) -= v133;
          return &v9[v133] - v406;
        }

        v9 += v13;
        v376 = *(a1 + 720);
        *(a1 + 720) = v376 - v13;
        if (updated != -523)
        {
          v3 = v408;
          v4 = v406;
          if (v376 != v13)
          {
            goto LABEL_778;
          }

LABEL_200:
          v123 = *(a1 + 525);
          if ((v123 & 4) == 0)
          {
            v124 = *(a1 + 616);
            *(a1 + 640) = v124;
            *(a1 + 632) = v124;
            *(a1 + 648) = v124 + 9;
            *(a1 + 728) = 0;
            v41 = 0;
            if (v10 == 4)
            {
              v125 = 10;
            }

            else
            {
              v125 = 11;
            }

            *(a1 + 736) = v125;
            goto LABEL_843;
          }

          if (v10 != 4)
          {
            goto LABEL_927;
          }

          v258 = nghttp2_map_find(a1, *(a1 + 520));
          if (!v258)
          {
            goto LABEL_926;
          }

          v259 = v258;
          if ((*(v258 + 116) & 2) != 0 || *v258 == 3 || *v258 == 5)
          {
            goto LABEL_926;
          }

          if ((*(a1 + 2708) & 4) != 0)
          {
            goto LABEL_913;
          }

          v260 = *(a1 + 524);
          if (v260 == 5)
          {
            v261 = nghttp2_map_find(a1, *(a1 + 552));
            if (!v261 || (*(v261 + 116) & 2) != 0 || *v261 == 5 || !nghttp2_http_on_request_headers(v261, v7))
            {
              goto LABEL_913;
            }

LABEL_911:
            updated = session_terminate_session(a1, *(a1 + 2604), 1, 0);
LABEL_925:
            if (updated > -901)
            {
              goto LABEL_926;
            }

            return updated;
          }

          if (v260 != 1)
          {
            __assert_rtn("session_after_header_block_received", "nghttp2_session.c", 3743, "frame->hd.type == NGHTTP2_HEADERS");
          }

          v378 = *(a1 + 568);
          if ((v378 - 1) >= 2)
          {
            if (v378 != 3)
            {
              if (v378)
              {
                __assert_rtn("session_after_header_block_received", "nghttp2_session.c", 3761, "0");
              }

              v379 = nghttp2_http_on_request_headers(v258, v7);
LABEL_910:
              if (v379)
              {
                goto LABEL_911;
              }

              if (*(a1 + 525))
              {
                if ((*(v259 + 113) & 0x40) != 0)
                {
                  goto LABEL_911;
                }

                v386 = *(v259 + 16);
                if (v386 != -1 && v386 != *(v259 + 24))
                {
                  goto LABEL_911;
                }
              }

LABEL_913:
              v383 = *(a1 + 2160);
              if (!v383 || !v383(a1, v7, *(a1 + 2400)))
              {
                if (*(a1 + 524) == 1)
                {
                  if (*(a1 + 2723))
                  {
                    if (*(a1 + 2708) & 4) == 0 && !*(a1 + 568) && (*(v259 + 116) & 0x20) == 0 && (*(v259 + 114))
                    {
                      v384 = session_update_stream_priority(a1, v259, *(v259 + 121));
                      if (v384)
                      {
                        if (v384 >= -900)
                        {
                          __assert_rtn("session_end_stream_headers_received", "nghttp2_session.c", 3703, "nghttp2_is_fatal(rv)");
                        }

                        return -901;
                      }
                    }
                  }

                  if (*(a1 + 525))
                  {
                    v385 = *(v259 + 117);
                    *(v259 + 117) = v385 | 1;
                    if ((v385 & 2) != 0)
                    {
                      updated = nghttp2_session_close_stream(a1, *(v259 + 80), 0);
                      goto LABEL_925;
                    }
                  }
                }

LABEL_926:
                if (*(a1 + 736) == 15)
                {
                  return v3;
                }

LABEL_927:
                session_inbound_frame_reset(a1);
                v41 = 0;
                *(a1 + 2584) = 0;
                goto LABEL_843;
              }

              return -902;
            }

            if ((*(v258 + 113) & 0x40) == 0)
            {
              v379 = (v123 & 1) - 1;
              goto LABEL_910;
            }

            if (*(a1 + 2723))
            {
              __assert_rtn("session_after_header_block_received", "nghttp2_session.c", 3754, "!session->server");
            }
          }

          v379 = nghttp2_http_on_response_headers(v258);
          goto LABEL_910;
        }

        v3 = v408;
        v4 = v406;
        if (v376 != v13)
        {
          goto LABEL_870;
        }

LABEL_777:
        session_inbound_frame_reset(a1);
LABEL_778:
        v41 = 0;
LABEL_843:
        if (v41 || v9 != v8)
        {
          continue;
        }

        return v3;
      case 6:
        v46 = v8 - v9;
        v47 = *(a1 + 720);
        if (v8 - v9 >= v47)
        {
          v48 = *(a1 + 720);
        }

        else
        {
          v48 = v8 - v9;
        }

        *(a1 + 720) = v47 - v48;
        v9 += v48;
        if (v47 > v46)
        {
          goto LABEL_778;
        }

        v49 = *(a1 + 524);
        v211 = v49 > 9;
        v50 = (1 << v49) & 0x222;
        if (!v211 && v50 != 0)
        {
          *(a1 + 1948) = 1;
        }

        goto LABEL_777;
      case 7:
        updated = session_terminate_session(a1, *(a1 + 2604), 6, 0);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) != 15)
        {
          __assert_rtn("nghttp2_session_mem_recv2", "nghttp2_session.c", 6438, "iframe->state == NGHTTP2_IB_IGN_ALL");
        }

        return v3;
      case 8:
        v69 = *(a1 + 648);
        v70 = *(a1 + 640);
        if (v8 - v9 >= (v69 - v70))
        {
          v71 = v69 - v70;
        }

        else
        {
          v71 = v8 - v9;
        }

        if (v71)
        {
          memcpy(*(a1 + 640), v9, v71);
          v72 = *(a1 + 648);
          *(a1 + 640) = v70 + v71;
          *(a1 + 720) -= v71;
          v9 += v71;
          if (v72 != v70 + v71)
          {
            goto LABEL_778;
          }

          v73 = *(a1 + 632);
          v74 = *v73;
          v75 = __rev16(v74);
          v76 = bswap32(*(v73 + 1));
          if ((v75 - 1) >= 6 && (v75 - 8) >= 2)
          {
            v347 = *(a1 + 608);
            v348 = *(a1 + 704);
            *(a1 + 704) = v348 + 1;
            *(v347 + 8 * v348) = v75 | (v76 << 32);
          }

          else
          {
            v77 = *(a1 + 704);
            v78 = *(a1 + 608);
            v79 = 0;
            if (!v77)
            {
              goto LABEL_615;
            }

            v80 = *(a1 + 608);
            while (1)
            {
              v81 = *v80;
              v80 += 2;
              if (v81 == v75)
              {
                break;
              }

              if (v77 == ++v79)
              {
                v79 = *(a1 + 704);
                goto LABEL_615;
              }
            }

            *(v78 + 8 * v79) = v75 | (v76 << 32);
            if (v79 == *v414)
            {
              v78 = *(a1 + 608);
LABEL_615:
              *v414 = v79 + 1;
              *(v78 + 8 * v79) = v75 | (v76 << 32);
            }

            if (v74 == 256)
            {
              v303 = *(a1 + 608) + 8 * *(a1 + 712);
              if (v76 < *(v303 - 4))
              {
                *(v303 - 4) = v76;
              }
            }
          }

          v248 = *(a1 + 720);
          goto LABEL_762;
        }

        *(a1 + 640) = v70;
        v248 = *(a1 + 720);
        *(a1 + 720) = v248;
        if (v69 != v70)
        {
          goto LABEL_778;
        }

LABEL_762:
        if (!v248)
        {
          v351 = *(a1 + 712);
          v352 = *(a1 + 608);
          if (v351)
          {
            v353 = *(v352 + 8 * v351 - 8);
            if (HIDWORD(v353) != -1)
            {
              v354 = *v414;
              if (!*v414)
              {
LABEL_993:
                __assert_rtn("session_process_settings_frame", "nghttp2_session.c", 4510, "i < iframe->niv");
              }

              v355 = 0;
              v356 = *(a1 + 608);
              while (1)
              {
                v357 = *v356;
                v356 += 2;
                if (v357 == 1)
                {
                  break;
                }

                if (v354 == ++v355)
                {
                  goto LABEL_993;
                }
              }

              if (HIDWORD(v353) != *(v352 + 8 * v355 + 4))
              {
                *(a1 + 704) = v354 + 1;
                *(v352 + 8 * v354) = *(v352 + 8 * v355);
                v352 = *(a1 + 608);
                *(v352 + 8 * v355) = v353;
              }
            }
          }

          v358 = *(a1 + 704);
          *(a1 + 536) = v352;
          *(a1 + 528) = v358;
          *(a1 + 608) = 0;
          *v414 = 0;
          v414[1] = 0;
          updated = nghttp2_session_on_settings_received(a1, v7, 0);
          goto LABEL_775;
        }

        v41 = 0;
        v349 = *(a1 + 616);
        *(a1 + 640) = v349;
        *(a1 + 632) = v349;
        v350 = v349 + 6;
        goto LABEL_764;
      case 9:
        v63 = *(a1 + 720);
        if (v8 - v9 >= v63)
        {
          v64 = *(a1 + 720);
        }

        else
        {
          v64 = v8 - v9;
        }

        if (v64)
        {
          v65 = *(a1 + 680);
          memcpy(v65, v9, v64);
          *(a1 + 680) = &v65[v64];
          v63 = *(a1 + 720) - v64;
          *(a1 + 720) = v63;
          v9 += v64;
        }

        if (v63)
        {
          if (*(a1 + 664) == *(a1 + 680))
          {
            __assert_rtn("nghttp2_session_mem_recv2", "nghttp2_session.c", 6492, "nghttp2_buf_avail(&iframe->lbuf) > 0");
          }

          goto LABEL_778;
        }

        v233 = *(a1 + 632);
        v234 = *(a1 + 672);
        v235 = *(a1 + 680) - v234;
        *(a1 + 528) = bswap32(*v233 & 0xFFFFFF7F);
        *(a1 + 532) = bswap32(v233[1]);
        *(a1 + 536) = v234;
        *(a1 + 544) = v235;
        *(v415 + 32) = 0;
        *v415 = 0u;
        *(v415 + 16) = 0u;
        if (*(a1 + 520))
        {
          v236 = a1;
          v237 = v7;
          v238 = "GOAWAY: stream_id != 0";
          goto LABEL_726;
        }

        v279 = *v413;
        if (*v413 >= 1 && (((*(a1 + 2723) == 0) ^ v279) & 1) != 0 || *(a1 + 2616) < v279)
        {
          v236 = a1;
          v237 = v7;
          v238 = "GOAWAY: invalid last_stream_id";
          goto LABEL_726;
        }

        *(a1 + 2724) |= 8u;
        *(a1 + 2616) = v279;
        v313 = *(a1 + 2160);
        if (v313)
        {
          if (v313(a1, v7, *(a1 + 2400)))
          {
            return -902;
          }

          v279 = *v413;
        }

        updated = session_close_stream_on_goaway(a1, v279, 0);
        goto LABEL_775;
      case 10:
      case 11:
        v23 = *(a1 + 2584) + 1;
        *(a1 + 2584) = v23;
        if (v23 > *(a1 + 2576))
        {
          return -905;
        }

        v24 = *(a1 + 648);
        v25 = *(a1 + 640);
        if (v8 - v9 >= (v24 - v25))
        {
          v26 = v24 - v25;
        }

        else
        {
          v26 = v8 - v9;
        }

        if (v26)
        {
          memcpy(*(a1 + 640), v9, v26);
          v25 += v26;
          v24 = *(a1 + 648);
        }

        *(a1 + 640) = v25;
        v9 += v26;
        if (v24 != v25)
        {
          return v9 - v4;
        }

        v27 = *(a1 + 632);
        v28 = bswap32(*v27) >> 8;
        v420 = v28;
        BYTE4(v421) = *(v27 + 3);
        v29 = BYTE4(v421);
        v30 = *(v27 + 4);
        *(&v421 + 5) = v30;
        v31 = bswap32(*(v27 + 5) & 0xFFFFFF7F);
        LODWORD(v421) = v31;
        *(a1 + 720) = v28;
        if (v29 != 9 || v31 != *(a1 + 520))
        {
          v396 = *(a1 + 2604);
          v397 = "unexpected non-CONTINUATION frame or stream_id is invalid";
          goto LABEL_962;
        }

        *(a1 + 525) |= v30 & 4;
        *(a1 + 512) += v28;
        if (*(a1 + 736) == 10)
        {
          *(a1 + 736) = 4;
          v32 = *(a1 + 2288);
          if (v32 && v32(a1, &v420, *(a1 + 2400)))
          {
            return -902;
          }

LABEL_842:
          v41 = 1;
          goto LABEL_843;
        }

        goto LABEL_758;
      case 12:
        v58 = *(a1 + 648);
        v59 = *(a1 + 640);
        if (v8 - v9 >= (v58 - v59))
        {
          v60 = v58 - v59;
        }

        else
        {
          v60 = v8 - v9;
        }

        if (v60)
        {
          memcpy(*(a1 + 640), v9, v60);
          v59 += v60;
          v58 = *(a1 + 648);
        }

        *(a1 + 640) = v59;
        v9 += v60;
        *(a1 + 720) -= v60;
        if (v58 != v59)
        {
          return v9 - v4;
        }

        updated = nghttp2_session_update_recv_connection_window_size(a1, v60);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        updated = nghttp2_session_consume(a1, *(a1 + 520), v60);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        v61 = nghttp2_map_find(a1, *(a1 + 520));
        if (!v61)
        {
          goto LABEL_651;
        }

        __src = v61;
        if ((v61[116] & 2) != 0 || *v61 == 5)
        {
          goto LABEL_651;
        }

        if (*(a1 + 720))
        {
          v62 = 1;
        }

        else
        {
          v62 = (*(a1 + 525) & 1) == 0;
        }

        updated = nghttp2_session_update_recv_stream_window_size(a1, v61, v60, v62);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

LABEL_651:
        v310 = **(a1 + 632);
        v311 = *(a1 + 720);
        if (v311 >= v310)
        {
          v312 = v310 + 1;
          *(a1 + 728) = v312;
          *(a1 + 528) = v312;
          if (!v311 && (*(a1 + 525) & 1) == 0)
          {
            updated = session_update_glitch_ratelim(a1);
            if (updated)
            {
              return updated;
            }

            if (*(a1 + 736) == 15)
            {
              return v3;
            }
          }

          v265 = 13;
          goto LABEL_841;
        }

        v396 = *(a1 + 2604);
        v397 = "DATA: invalid padding";
        goto LABEL_962;
      case 13:
        v52 = nghttp2_map_find(a1, *(a1 + 520));
        if (!v52)
        {
          goto LABEL_840;
        }

        v53 = v52;
        if ((*(v52 + 116) & 2) != 0 || *v52 == 5)
        {
          goto LABEL_840;
        }

        v54 = *(a1 + 720);
        if (v8 - v9 >= v54)
        {
          v55 = *(a1 + 720);
        }

        else
        {
          v55 = v8 - v9;
        }

        v56 = v54 - v55;
        *(a1 + 720) = v54 - v55;
        if (!v55)
        {
          goto LABEL_718;
        }

        updated = nghttp2_session_update_recv_connection_window_size(a1, v55);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        if (*(a1 + 720))
        {
          v57 = 1;
        }

        else
        {
          v57 = (*(a1 + 525) & 1) == 0;
        }

        updated = nghttp2_session_update_recv_stream_window_size(a1, v53, v55, v57);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        v408 = v3;
        v329 = *(a1 + 728);
        v330 = v8;
        if (v329)
        {
          v329 -= (*(a1 + 525) >> 3) & 1;
        }

        v331 = *(a1 + 720);
        v332 = v55 - (v329 - v331);
        if (v55 < v329 - v331)
        {
          v332 = -1;
        }

        if (v329 <= v331)
        {
          v333 = v55;
        }

        else
        {
          v333 = v332;
        }

        if (v333 == -1)
        {
          v334 = 0;
        }

        else
        {
          v334 = v333;
        }

        if ((v55 - v334) < 1)
        {
          goto LABEL_709;
        }

        updated = nghttp2_session_consume(a1, *(a1 + 520), v55 - v334);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v408;
        }

LABEL_709:
        if (v334 < 1)
        {
          goto LABEL_717;
        }

        if ((*(a1 + 2708) & 4) != 0 || (v335 = *(v53 + 24) + v334, *(v53 + 24) = v335, (*(v53 + 113) & 0x40) == 0) && ((v336 = *(v53 + 16), v336 == -1) || v335 <= v336))
        {
          v337 = *(a1 + 2176);
          if (v337)
          {
            v338 = v337(a1, *(a1 + 525), *(a1 + 520), v9, v334, *(a1 + 2400));
            if (v338 == -526)
            {
              return &v9[v55] - v4;
            }

            if (v338 < -900)
            {
              return -902;
            }
          }

LABEL_717:
          v56 = *(a1 + 720);
          v8 = v330;
          v3 = v408;
LABEL_718:
          if (!v56)
          {
            updated = nghttp2_session_on_data_received(a1, v7);
            if (updated <= -901)
            {
              return updated;
            }

            if (*(a1 + 736) == 15)
            {
              return v3;
            }

            session_inbound_frame_reset(a1);
          }

          v41 = 0;
          v9 += v55;
          goto LABEL_843;
        }

        v398 = session_terminate_session(a1, *(a1 + 2604), 1, 0);
        v393 = v398;
        v394 = v398 <= -901;
        v3 = v408;
        goto LABEL_964;
      case 14:
        v42 = *(a1 + 720);
        if (v8 - v9 >= v42)
        {
          v43 = *(a1 + 720);
        }

        else
        {
          v43 = v8 - v9;
        }

        v44 = v42 - v43;
        *(a1 + 720) = v42 - v43;
        if (!v43)
        {
          goto LABEL_73;
        }

        updated = nghttp2_session_update_recv_connection_window_size(a1, v43);
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

        if ((*(a1 + 2708) & 1) == 0)
        {
          goto LABEL_72;
        }

        updated = session_update_consumed_size(a1, (a1 + 2628), (a1 + 2624), *(a1 + 2725), 0, v43, *(a1 + 2636));
        if (updated <= -901)
        {
          return updated;
        }

        if (*(a1 + 736) == 15)
        {
          return v3;
        }

LABEL_72:
        v44 = *(a1 + 720);
LABEL_73:
        v9 += v43;
        if (!v44)
        {
          goto LABEL_777;
        }

        goto LABEL_778;
      case 15:
        return v3;
      case 16:
        v66 = *(a1 + 720);
        if (v8 - v9 >= v66)
        {
          v67 = *(a1 + 720);
        }

        else
        {
          v67 = v8 - v9;
        }

        if (v67)
        {
          v68 = *(a1 + 680);
          memcpy(v68, v9, v67);
          *(a1 + 680) = &v68[v67];
          v66 = *(a1 + 720) - v67;
          *(a1 + 720) = v66;
          v9 += v67;
        }

        if (v66)
        {
          if (*(a1 + 664) == *(a1 + 680))
          {
            __assert_rtn("nghttp2_session_mem_recv2", "nghttp2_session.c", 6868, "nghttp2_buf_avail(&iframe->lbuf) > 0");
          }

          goto LABEL_778;
        }

        v239 = bswap32(**(a1 + 632)) >> 16;
        v240 = *(a1 + 672);
        v241 = *(a1 + 680);
        v242 = *(a1 + 528);
        *v242 = v240;
        v242[1] = v239;
        v242[2] = v240 + v239;
        v242[3] = v241 - (v240 + v239);
        *v415 = 0u;
        *(v415 + 16) = 0u;
        *(v415 + 32) = 0;
        v243 = *(a1 + 528);
        v244 = *(a1 + 520);
        v245 = *(v243 + 8);
        if (v244)
        {
          if (v245)
          {
            goto LABEL_571;
          }

          v246 = nghttp2_map_find(a1, v244);
          if (!v246 || (*(v246 + 116) & 2) != 0)
          {
            goto LABEL_777;
          }

          if (*v246 == 3 || *v246 == 5)
          {
            goto LABEL_777;
          }
        }

        else if (!v245)
        {
          goto LABEL_571;
        }

        if (*(v243 + 24))
        {
          v280 = *(a1 + 2160);
          if (!v280 || !v280(a1, v7, *(a1 + 2400)))
          {
            goto LABEL_777;
          }

          return -902;
        }

LABEL_571:
        v281 = *(a1 + 2168);
        if (!v281 || !v281(a1, v7, 4294966791, *(a1 + 2400)))
        {
          goto LABEL_777;
        }

        return -902;
      case 17:
        v115 = v7;
        v116 = v4;
        v117 = v3;
        v118 = v8;
        v119 = *(a1 + 720);
        if (v8 - v9 >= v119)
        {
          v120 = *(a1 + 720);
        }

        else
        {
          v120 = v8 - v9;
        }

        v121 = *(a1 + 680);
        if (v120)
        {
          memcpy(*(a1 + 680), v9, v120);
          v122 = (v121 + v120);
          *(a1 + 680) = v121 + v120;
          v119 = *(a1 + 720) - v120;
          *(a1 + 720) = v119;
          v9 += v120;
          if (v119)
          {
LABEL_197:
            if (*(a1 + 664) == v122)
            {
              __assert_rtn("nghttp2_session_mem_recv2", "nghttp2_session.c", 6897, "nghttp2_buf_avail(&iframe->lbuf) > 0");
            }

            v41 = 0;
            v8 = v118;
            v3 = v117;
            v4 = v116;
            v7 = v115;
            goto LABEL_843;
          }
        }

        else
        {
          v122 = *(a1 + 680);
          if (v119)
          {
            goto LABEL_197;
          }
        }

        v417 = v115;
        v249 = 0;
        v250 = *(a1 + 672);
        v251 = *(a1 + 528);
        v252 = v121 + v120;
        v253 = v250;
        v8 = v118;
        while (1)
        {
          v254 = v252 - v253;
          do
          {
            if (v253 == v122)
            {
              if (v249)
              {
                v267 = *(a1 + 528);
                v268 = (*(a1 + 2368))(v119 + 16 * v249, *(a1 + 2360));
                if (v268)
                {
                  v269 = v268;
                  *v267 = v249;
                  v267[1] = v268;
                  v270 = (v268 + 16 * v249);
                  while (v250 != v122)
                  {
                    v272 = *v250++;
                    v271 = v272;
                    if (v272)
                    {
                      v273 = __rev16(v271);
                      *v269 = v270;
                      v269[1] = v273;
                      v269 += 2;
                      memcpy(v270, v250, v273);
                      v274 = &v270[v273];
                      *v274 = 0;
                      v270 = v274 + 1;
                      v250 = (v250 + v273);
                    }
                  }

                  goto LABEL_608;
                }

                return -901;
              }

              *v251 = 0;
              v251[1] = 0;
LABEL_608:
              v300 = *(a1 + 2160);
              v8 = v118;
              if (!v300 || !v300(a1, v417, *(a1 + 2400)))
              {
LABEL_610:
                if (*(a1 + 736) != 15)
                {
                  session_inbound_frame_reset(a1);
                  v41 = 0;
                  v3 = v117;
                  v4 = v116;
                  v7 = v417;
                  goto LABEL_843;
                }

                return v117;
              }

              return -902;
            }

            v211 = v254 < 2;
            v254 -= 2;
            if (v211)
            {
              goto LABEL_610;
            }

            v256 = *v253++;
            v255 = v256;
          }

          while (!v256);
          v257 = __rev16(v255);
          if (v122 - v253 < v257)
          {
            goto LABEL_610;
          }

          v253 = (v253 + v257);
          v119 += v257 + 1;
          ++v249;
        }

      case 18:
        v33 = *(a1 + 720);
        if (v8 - v9 >= v33)
        {
          v34 = *(a1 + 720);
        }

        else
        {
          v34 = v8 - v9;
        }

        v35 = v33 - v34;
        *(a1 + 720) = v33 - v34;
        v36 = &v9[v34];
        if (!v34)
        {
          goto LABEL_55;
        }

        v37 = *(a1 + 2328);
        if (!v37)
        {
          goto LABEL_55;
        }

        v38 = v37(a1, v7, v9);
        if (v38 == -535)
        {
          *(a1 + 736) = 6;
          v41 = 1;
        }

        else
        {
          if (v38)
          {
            return -902;
          }

          v35 = *(a1 + 720);
LABEL_55:
          if (!v35)
          {
            v422 = 0;
            v39 = (*(a1 + 2320))(a1, &v422, v7, *(a1 + 2400));
            if (v39 != -535)
            {
              if (v39)
              {
                return -902;
              }

              *(a1 + 528) = v422;
              v40 = *(a1 + 2160);
              if (v40)
              {
                if (v40(a1, v7, *(a1 + 2400)))
                {
                  return -902;
                }
              }
            }

            session_inbound_frame_reset(a1);
          }

          v41 = 0;
        }

        v9 = v36;
        goto LABEL_843;
      default:
        goto LABEL_778;
    }
  }
}

uint64_t nghttp2_session_consume_stream(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 4294966795;
  }

  if ((*(a1 + 2708) & 1) == 0)
  {
    return 4294966777;
  }

  result = nghttp2_map_find(a1, a2);
  if (result)
  {
    if ((*(result + 116) & 2) != 0 || *result == 5)
    {
      return 0;
    }

    else
    {
      LODWORD(result) = session_update_consumed_size(a1, (result + 92), (result + 88), *(result + 119), *(result + 80), a3, *(result + 100));
      if (result <= -901)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t session_update_consumed_size(uint64_t a1, int *a2, int *a3, int a4, int a5, uint64_t a6, int a7)
{
  v8 = *a2;
  if (0x7FFFFFFF - a6 >= v8)
  {
    v12 = v8 + a6;
    *a2 = v12;
    if (!a4 && (v12 >= *a3 ? (v14 = *a3) : (v14 = v12), v14 >= 1 ? (v15 = a7 / 2 <= v14) : (v15 = 0), v15))
    {
      result = nghttp2_session_add_window_update(a1, a5, v14);
      if (!result)
      {
        *a3 -= v14;
        *a2 -= v14;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = *(a1 + 2604);

    return session_terminate_session(a1, v9, 3, 0);
  }

  return result;
}

uint64_t nghttp2_session_get_stream_remote_window_size(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 84) & ~(*(v2 + 84) >> 31);
  }
}

uint64_t nghttp2_session_send(void *a1)
{
  v8 = 0;
  while (1)
  {
    v2 = nghttp2_session_mem_send_internal(a1, &v8, 0);
    if (v2 <= 0)
    {
      break;
    }

    v3 = a1[267];
    if (!v3)
    {
      v3 = a1[266];
    }

    v4 = v3(a1, v8, v2, 0, a1[300]);
    if (v4 < 0)
    {
      if (v4 != -504)
      {
        return 4294966394;
      }

      v5 = a1[56];
      v6 = *(v5 + 24) - v2;
      v2 = 0;
      *(v5 + 24) = v6;
      return v2;
    }

    *(a1[56] + 24) += v4 - v2;
  }

  return v2;
}

uint64_t nghttp2_submit_data_shared(uint64_t a1, char a2, int a3, __int128 *a4)
{
  if (!a3)
  {
    return 4294966795;
  }

  v8 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v8)
  {
    return 4294966395;
  }

  v9 = v8;
  *(v8 + 137) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 96) = 0u;
  v10 = *a4;
  *(v8 + 112) = *(a4 + 2);
  *(v8 + 96) = v10;
  *(v8 + 120) = a2 & 1;
  *v8 = 0;
  *(v8 + 12) = 0;
  *(v8 + 8) = a3;
  *(v8 + 14) = 0;
  *(v8 + 16) = 0;
  v11 = nghttp2_session_add_item(a1, v8);
  if (v11)
  {
    (*(a1 + 2376))(v9, *(a1 + 2360));
  }

  return v11;
}

uint64_t nghttp2_session_update_recv_connection_window_size(uint64_t a1, int a2)
{
  v3 = *(a1 + 2636);
  v4 = *(a1 + 2624);
  if (v4 <= v3 - a2 && v4 <= (a2 ^ 0x7FFFFFFF))
  {
    v8 = v4 + a2;
    *(a1 + 2624) = v4 + a2;
    if (*(a1 + 2708))
    {
      return 0;
    }

    else
    {
      result = 0;
      if (!*(a1 + 2725))
      {
        v9 = v3 / 2;
        if (v8 >= 1 && v9 <= v8)
        {
          result = nghttp2_session_add_window_update(a1, 0, v8);
          if (!result)
          {
            *(a1 + 2624) = 0;
          }
        }
      }
    }
  }

  else
  {
    v6 = *(a1 + 2604);

    return session_terminate_session(a1, v6, 3, 0);
  }

  return result;
}

uint64_t nghttp2_session_update_recv_stream_window_size(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = *(a2 + 100);
  v6 = *(a2 + 88);
  if (v6 <= v5 - a3 && v6 <= (a3 ^ 0x7FFFFFFF))
  {
    v11 = v6 + a3;
    *(a2 + 88) = v11;
    if (!a4 || (*(a1 + 2708) & 1) != 0)
    {
      return 0;
    }

    v12 = 0;
    if (!*(a2 + 119))
    {
      v13 = v5 / 2;
      if (v11 >= 1 && v13 <= v11)
      {
        v12 = nghttp2_session_add_window_update(a1, *(a2 + 80), v11);
        if (!v12)
        {
          *(a2 + 88) = 0;
        }
      }
    }

    return v12;
  }

  else
  {
    v8 = *(a1 + 2604);

    return session_terminate_session(a1, v8, 3, 0);
  }
}

uint64_t nghttp2_session_on_data_received(uint64_t a1, uint64_t a2)
{
  result = nghttp2_map_find(a1, *(a2 + 8));
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ((*(result + 116) & 2) != 0)
  {
    return 0;
  }

  if (*result == 3 || *result == 5)
  {
    return 0;
  }

  if (*(a1 + 2708) & 4) == 0 && (*(a2 + 13))
  {
    if ((*(result + 113) & 0x40) != 0 || (v9 = *(result + 16), v9 != -1) && v9 != *(result + 24))
    {
      v10 = *(a1 + 2604);

      return session_terminate_session(a1, v10, 1, 0);
    }
  }

  v7 = *(a1 + 2160);
  if (v7 && v7(a1, a2, *(a1 + 2400)))
  {
    return 4294966394;
  }

  if ((*(a2 + 13) & 1) == 0)
  {
    return 0;
  }

  v8 = *(v5 + 117);
  *(v5 + 117) = v8 | 1;
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  result = nghttp2_session_close_stream(a1, *(v5 + 80), 0);
  if (result >= -900)
  {
    return 0;
  }

  return result;
}

uint64_t nghttp2_session_consume_connection(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2708) & 1) == 0)
  {
    return 4294966777;
  }

  LODWORD(result) = session_update_consumed_size(a1, (a1 + 2628), (a1 + 2624), *(a1 + 2725), 0, a2, *(a1 + 2636));
  if (result <= -901)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t nghttp2_session_set_stream_user_data(uint64_t a1, int a2, uint64_t a3)
{
  v6 = nghttp2_map_find(a1, a2);
  if (v6 && (*(v6 + 116) & 2) == 0 && *v6 != 5)
  {
    v10 = (v6 + 56);
LABEL_14:
    result = 0;
    *v10 = a3;
    return result;
  }

  result = 4294966795;
  if ((a2 & 1) != 0 && !*(a1 + 2723))
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      if (*(v8 + 12) != 1)
      {
        __assert_rtn("nghttp2_session_set_stream_user_data", "nghttp2_session.c", 7458, "frame->hd.type == NGHTTP2_HEADERS");
      }

      if (*(v8 + 8) <= a2 && *(a1 + 2592) > a2)
      {
        while (1)
        {
          v9 = *(v8 + 8);
          if (v9 >= a2)
          {
            break;
          }

          v8 = *(v8 + 144);
          if (!v8)
          {
            return 4294966795;
          }
        }

        if (v9 > a2)
        {
          return 4294966795;
        }

        v10 = (v8 + 120);
        goto LABEL_14;
      }
    }
  }

  return result;
}

void nghttp2_frame_add_pad(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v5 = *a1;
    v6 = a3 - 1;
    if (*(*a1 + 16) - *(*a1 + 32) < (a3 - 1))
    {
      __assert_rtn("nghttp2_frame_add_pad", "nghttp2_frame.c", 1214, "nghttp2_buf_avail(buf) >= padlen - 1");
    }

    v8 = *(v5 + 24);
    *(v8 - 1) = *v8;
    *(v8 + 7) = *(v8 + 8);
    v9 = *(v5 + 24);
    *(v5 + 24) = v9 - 1;
    *(v9 + 3) |= 8u;
    **(v5 + 24) = bswap32((bswap32(**(v5 + 24)) + (a3 << 8)) & 0xFFFFFF00 | HIBYTE(**(v5 + 24)));
    if (!a4)
    {
      *(*(v5 + 24) + 9) = v6;
      bzero(*(v5 + 32), a3 - 1);
      *(v5 + 32) += v6;
    }

    *a2 += a3;
    *(a2 + 13) |= 8u;
  }
}

uint64_t nghttp2_pq_remove(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(*result + 8 * *a2) != a2)
  {
    __assert_rtn("nghttp2_pq_remove", "nghttp2_pq.c", 134, "pq->q[item->index] == item");
  }

  v4 = result;
  v5 = *(result + 16);
  if (!v3)
  {
    if (!v5)
    {
      return result;
    }

    *v2 = v2[v5 - 1];
    ***result = 0;
    *(result + 16) = v5 - 1;
    v7 = 0;
    goto LABEL_10;
  }

  v6 = v5 - 1;
  if (v3 == v6)
  {
    *(result + 16) = v3;
    return result;
  }

  v2[v3] = v2[v6];
  v9 = *result;
  **(*result + 8 * v3) = v3;
  *(result + 16) = v6;
  v10 = (*(result + 32))(a2, v9[*a2]);
  v7 = *a2;
  if (v10)
  {
    result = v4;
LABEL_10:

    return bubble_down(result, v7);
  }

  return bubble_up(v4, v7);
}

uint64_t session_after_frame_sent2(uint64_t result)
{
  v1 = result;
  v2 = *(result + 432);
  v3 = *(v2 + 12);
  if (*(v2 + 12))
  {
    if (v3 == 5 || v3 == 1)
    {
      v5 = **(result + 448);
      if (v5)
      {
        if (*(v5 + 32) != *(v5 + 24))
        {
          *(result + 448) = v5;
          return result;
        }
      }
    }
  }

  else if (!*(v2 + 121))
  {
    *(v2 + 122) = 0;
    v6 = nghttp2_map_find(result, *(v2 + 8));
    if (!v6 || (*(v6 + 116) & 2) != 0)
    {
      v7 = 0;
    }

    else if (*v6 == 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (nghttp2_session_predicate_data_send(v1, v7))
    {
      if (v7)
      {
        *(v7 + 64) = 0;
        *(v7 + 116) &= 0xF3u;
        if (*(v7 + 118))
        {
          session_ob_data_remove(v1, v7);
        }
      }
    }

    else
    {
      *(v1 + 432) = 0;
    }
  }

  return active_outbound_item_reset((v1 + 432), (v1 + 2360));
}

uint64_t nghttp2_pq_push(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  if (v5 > v4)
  {
    v6 = *a1;
LABEL_9:
    *(v6 + 8 * v4) = a2;
    *a2 = v4;
    a1[2] = v4 + 1;
    bubble_up(a1, v4);
    return 0;
  }

  if (2 * v5 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2 * v5;
  }

  if (((v5 >> 60) & 7) == 0)
  {
    v6 = (*(a1[1] + 32))(*a1, 8 * v7, *a1[1]);
    if (v6)
    {
      a1[3] = v7;
      *a1 = v6;
      v4 = a1[2];
      goto LABEL_9;
    }
  }

  return 4294966395;
}

uint64_t session_ob_data_push(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 118))
  {
    __assert_rtn("session_ob_data_push", "nghttp2_session.c", 866, "stream->queued == 0");
  }

  v3 = *(a2 + 120);
  if ((v3 & 0x7Fu) >= 8)
  {
    __assert_rtn("session_ob_data_push", "nghttp2_session.c", 871, "urgency < NGHTTP2_EXTPRI_URGENCY_LEVELS");
  }

  v4 = a1 + 40 * (*(a2 + 120) & 0x7F);
  v5 = *(v4 + 128);
  if (v5)
  {
    v5 = *(**(v4 + 112) + 24);
  }

  *(a2 + 32) = v5;
  if (v3 < 0)
  {
    *(a2 + 32) = *(a2 + 72) + v5;
  }

  result = nghttp2_pq_push((v4 + 112), (a2 + 8));
  if (!result)
  {
    *(a2 + 118) = 1;
  }

  return result;
}

uint64_t bubble_up(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2 - 1;
      v5 = (v2 - 1) >> 1;
      result = (*(v3 + 32))(*(*v3 + 8 * v2), *(*v3 + 8 * v5));
      if (!result)
      {
        break;
      }

      v6 = *(*v3 + 8 * v5);
      v7 = *(*v3 + 8 * v2);
      *(*v3 + 8 * v5) = v7;
      *v7 = v5;
      *(*v3 + 8 * v2) = v6;
      *v6 = v2;
      v2 = (v2 - 1) >> 1;
    }

    while (v4 > 1);
  }

  return result;
}

uint64_t session_call_select_padding(void *a1, uint64_t *a2, unint64_t a3)
{
  result = *a2;
  if (*a2 < a3)
  {
    v6 = a1[283];
    if (v6 || (v6 = a1[282]) != 0)
    {
      if (result + 256 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = result + 256;
      }

      result = v6(a1, a2, v7, a1[300]);
      if (result < *a2 || result > v7)
      {
        return -902;
      }
    }
  }

  return result;
}

uint64_t nghttp2_submit_data(uint64_t a1, char a2, int a3, __int128 *a4)
{
  if (!a4)
  {
    __assert_rtn("nghttp2_submit_data", "nghttp2_submit.c", 793, "data_prd");
  }

  v5 = 1;
  v6 = *a4;
  return nghttp2_submit_data_shared(a1, a2, a3, &v5);
}

uint64_t nghttp2_session_predicate_data_send(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294966786;
  }

  if (session_is_closing(a1, a2))
  {
    return 4294966766;
  }

  if ((*(a2 + 117) & 2) != 0)
  {
    return 4294966784;
  }

  v5 = *(a2 + 80);
  if (v5 && (((*(a1 + 2723) == 0) ^ v5) & 1) == 0)
  {
    if (*a2 == 4)
    {
      v7 = -514;
    }

    else
    {
      v7 = 0;
    }

    if (*a2 == 3)
    {
      return 4294966785;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (*a2 == 3)
    {
      v6 = -511;
    }

    else
    {
      v6 = -514;
    }

    if (*a2 == 2)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

BOOL session_is_closing(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2724))
  {
    return 1;
  }

  if ((*(a1 + 2724) & 2) == 0 && (*(a1 + 24) != *(a1 + 2528) + *(a1 + 2520) || (*(a1 + 2724) & 0xC) == 0))
  {
    return 0;
  }

  return !nghttp2_session_want_write(a1);
}

uint64_t session_ob_data_remove(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 118) != 1)
  {
    __assert_rtn("session_ob_data_remove", "nghttp2_session.c", 894, "stream->queued == 1");
  }

  if ((*(a2 + 120) & 0x7Fu) >= 8)
  {
    __assert_rtn("session_ob_data_remove", "nghttp2_session.c", 898, "urgency < NGHTTP2_EXTPRI_URGENCY_LEVELS");
  }

  result = nghttp2_pq_remove(a1 + 40 * (*(a2 + 120) & 0x7F) + 112, (a2 + 8));
  *(a2 + 118) = 0;
  return result;
}

uint64_t hd_inflate_read_len(uint64_t a1, _DWORD *a2, char *a3, char *a4, char a5, unint64_t a6)
{
  v6 = *(a1 + 184);
  v7 = *(a1 + 216);
  *(a1 + 216) = 0;
  *a2 = 0;
  v8 = a3;
  if (!v6)
  {
    v6 = ~(-1 << a5);
    v13 = v6 & *a3;
    if (v13 == v6)
    {
      v8 = a3 + 1;
      if (a3 + 1 != a4)
      {
        goto LABEL_2;
      }

      v12 = 1;
    }

    else
    {
      v12 = 1;
      *a2 = 1;
      v6 = v13;
    }

LABEL_17:
    if (v6 <= a6)
    {
      *(a1 + 184) = v6;
      return v12;
    }

    return -523;
  }

LABEL_2:
  if (v8 != a4)
  {
    v9 = -7 * v8 + v7 - a4 + 8 * a4;
    while (v7 <= 0x1F)
    {
      v10 = *v8 & 0x7F;
      if (0xFFFFFFFF >> v7 < v10)
      {
        break;
      }

      v11 = v10 << v7;
      if (__CFADD__(v11, v6))
      {
        break;
      }

      v6 += v11;
      if ((*v8 & 0x80000000) == 0)
      {
        *(a1 + 216) = v7;
        *a2 = 1;
        a4 = v8 + 1;
        goto LABEL_11;
      }

      ++v8;
      v7 += 7;
      if (v8 == a4)
      {
        v7 = v9;
        goto LABEL_10;
      }
    }

    return -523;
  }

LABEL_10:
  *(a1 + 216) = v7;
LABEL_11:
  v12 = a4 - a3;
  if (a4 - a3 != -1)
  {
    goto LABEL_17;
  }

  return -523;
}

uint64_t nghttp2_hd_deflate_hd_bufs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x29EDCA608];
  if (*(a1 + 60))
  {
    return 4294966773;
  }

  v8 = a1;
  if (*(a1 + 1104))
  {
    v9 = *(a1 + 1096);
    *(a1 + 1104) = 0;
    *(a1 + 1096) = 0xFFFFFFFFLL;
    v10 = *(a1 + 48);
    if (v10 > v9)
    {
      result = emit_table_size(a2, v9);
      if (result)
      {
LABEL_8:
        *(v8 + 60) = 1;
        return result;
      }

      v10 = *(v8 + 48);
    }

    result = emit_table_size(a2, v10);
    if (result)
    {
      goto LABEL_8;
    }
  }

  if (!a4)
  {
    return 0;
  }

  v11 = 0;
  v59 = a2;
  v60 = v8 + 64;
  v56 = v8;
  v57 = a3;
  v58 = a4;
  do
  {
    v62 = v11;
    v12 = a3 + 40 * v11;
    v13 = *(v8 + 32);
    v14 = *v12;
    v15 = *(v12 + 16);
    v16 = lookup_token(*v12, v15);
    v17 = v16;
    v18 = v16;
    v61 = v13;
    if (v16 == -1)
    {
      v19 = -2128831035;
      if (!v15)
      {
        goto LABEL_22;
      }

      v20 = v14;
      v21 = v15;
      do
      {
        v22 = *v20++;
        v19 = 16777619 * (v19 ^ v22);
        --v21;
      }

      while (v21);
    }

    else if (v16 > 0x3C)
    {
      v19 = 0;
    }

    else
    {
      v19 = static_table[32 * v16 + 31];
    }

    if (v16 == 22 || v16 == 31 && *(v12 + 24) < 0x14uLL)
    {
LABEL_26:
      v23 = 2;
      goto LABEL_27;
    }

LABEL_22:
    if (*(v12 + 32))
    {
      goto LABEL_26;
    }

    v23 = v16 <= 0x36 && ((1 << v16) & 0x40218208100008) != 0 || v15 + *(v12 + 24) + 32 > (3 * *(v8 + 48)) >> 2;
LABEL_27:
    v24 = *(v60 + 8 * (v19 & 0x7F));
    if (!v24)
    {
      if (v16 <= 0x3C)
      {
LABEL_49:
        if (v23 == 2)
        {
          v29 = v59;
          v30 = v18;
          v31 = v12;
          v32 = 2;
          goto LABEL_73;
        }

        v33 = &static_table[32 * v18 + 16];
        v34 = -1;
        while (v33[14] == v18)
        {
          if (*v33 == *(v12 + 24) && !memcmp(*(v33 - 1), *(v12 + 8), *v33))
          {
            v48 = v18 + v34 + 1;
            goto LABEL_82;
          }

          ++v34;
          v33 += 32;
          if (v18 + v34 >= 60)
          {
            break;
          }
        }
      }

      else
      {
LABEL_53:
        v18 = -1;
      }

LABEL_59:
      v35 = v61;
      if (v23)
      {
LABEL_71:
        if (v18 == -1)
        {
          result = nghttp2_bufs_addb(v59, (0x100040u >> (8 * v23)) & 0xF0);
          if (result)
          {
            goto LABEL_8;
          }

          result = emit_string(v59, *v12, *(v12 + 16));
          if (result)
          {
            goto LABEL_8;
          }

          result = emit_string(v59, *(v12 + 8), *(v12 + 24));
LABEL_77:
          a3 = v57;
          v47 = v58;
          goto LABEL_78;
        }

        v29 = v59;
        v30 = v18;
        v31 = v12;
        v32 = v23;
LABEL_73:
        result = emit_indname_block(v29, v30, v31, v32);
        goto LABEL_77;
      }

      __src = 0;
      v65 = 0;
      v66 = 0;
      if (v18 == -1)
      {
        v38 = (*(v61 + 8))(v15 + 41, *v61);
        if (!v38)
        {
          goto LABEL_98;
        }

        v36 = v38;
        __src = v38;
        *v38 = *v61;
        v39 = (v38 + 40);
        *(v38 + 8) = *(v61 + 16);
        *(v38 + 16) = v38 + 40;
        *(v38 + 32) = 1;
        *(v38 + 24) = v15;
        if (v15)
        {
          memcpy((v38 + 40), v14, v15);
          v39 += v15;
        }

        *v39 = 0;
        v35 = v61;
      }

      else
      {
        nghttp2_hd_table_get(v63, v8, v18);
        v36 = v63[0];
        __src = v63[0];
        v37 = *(v63[0] + 32);
        if (v37 != -1)
        {
          *(v63[0] + 32) = v37 + 1;
        }
      }

      v40 = *(v12 + 8);
      v41 = *(v12 + 24);
      v42 = (*(v35 + 8))(v41 + 41, *v35);
      if (v42)
      {
        v43 = v42;
        v65 = v42;
        *v42 = *v35;
        v44 = *(v35 + 16);
        v45 = (v42 + 40);
        *(v42 + 8) = v44;
        *(v42 + 16) = v42 + 40;
        *(v42 + 32) = 1;
        *(v42 + 24) = v41;
        if (v41)
        {
          memcpy((v42 + 40), v40, v41);
          v45 += v41;
        }

        *v45 = 0;
        LODWORD(v66) = v17;
        v8 = v56;
        v46 = add_hd_table_incremental(v56, &__src, v60, v19);
        nghttp2_rcbuf_decref(v43);
        nghttp2_rcbuf_decref(v36);
        if (v46)
        {
          result = 4294966773;
          goto LABEL_8;
        }

        goto LABEL_71;
      }

      nghttp2_rcbuf_decref(v36);
      v8 = v56;
LABEL_98:
      result = 4294966395;
      goto LABEL_8;
    }

    v25 = 0;
    while (1)
    {
      if (v24[4] != v17 || v17 == -1 && (v24[19] != v19 || *(*v24 + 24) != v15 || memcmp(*(*v24 + 16), v14, v15)))
      {
        v26 = v25;
        goto LABEL_43;
      }

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (v23 == 2 && !v25)
      {
        v26 = v24;
LABEL_48:
        v8 = v56;
        if (v17 < 0x3D)
        {
          goto LABEL_49;
        }

        if (v26)
        {
          v18 = (*(v56 + 56) + ~v26[18] + 61);
          goto LABEL_59;
        }

        goto LABEL_53;
      }

      v27 = *(v24 + 1);
      v28 = *(v27 + 24);
      if (v28 == *(v12 + 24) && !memcmp(*(v27 + 16), *(v12 + 8), v28))
      {
        break;
      }

LABEL_43:
      v24 = *(v24 + 8);
      v25 = v26;
      if (!v24)
      {
        goto LABEL_48;
      }
    }

    v8 = v56;
    v48 = (*(v56 + 56) + ~v24[18] + 61);
LABEL_82:
    a3 = v57;
    v47 = v58;
    if ((v48 + 1) > 0x7E)
    {
      v50 = v48 - 126;
      if (v50 < 0x80)
      {
        LOBYTE(__src) = -1;
        v49 = 2;
        v54 = &__src + 1;
      }

      else
      {
        v51 = 0;
        v52 = v50;
        do
        {
          v53 = v52 >> 14;
          v52 >>= 7;
          ++v51;
        }

        while (v53);
        if (v51 > 0xE)
        {
          result = 4294966773;
          goto LABEL_78;
        }

        LOBYTE(__src) = -1;
        v54 = &__src + 1;
        do
        {
          *v54++ = v50 | 0x80;
          v55 = v50 >> 14;
          v50 >>= 7;
        }

        while (v55);
        v49 = v51 + 2;
      }

      *v54 = v50;
    }

    else
    {
      LOBYTE(__src) = (v48 + 1) | 0x80;
      v49 = 1;
    }

    result = nghttp2_bufs_add(v59, &__src, v49);
LABEL_78:
    if (result)
    {
      goto LABEL_8;
    }

    v11 = v62 + 1;
  }

  while (v62 + 1 != v47);
  return 0;
}

unsigned int **nghttp2_hd_table_get(unsigned int **result, void *a2, unint64_t a3)
{
  if (a2[3] + 61 <= a3)
  {
    __assert_rtn("nghttp2_hd_table_get", "nghttp2_hd.c", 1314, "INDEX_RANGE_VALID(context, idx)");
  }

  v3 = result;
  if (a3 < 0x3D)
  {
    v4 = &static_table[32 * a3];
    *result = v4;
    result[1] = v4 + 10;
    result[2] = 0;
    *(result + 4) = v4[30];
  }

  else
  {
    result = hd_ringbuf_get(a2, a3 - 61);
    *v3 = *result;
    v3[2] = result[2];
  }

  return result;
}

uint64_t session_process_headers_frame(uint64_t a1)
{
  if ((*(a1 + 525) & 0x20) != 0)
  {
    v4 = *(a1 + 632);
    v5 = *v4;
    v3 = bswap32(*v4 & 0xFFFFFF7F);
    LODWORD(v4) = *(v4 + 4) + 1;
    *(a1 + 536) = v3;
    *(a1 + 540) = v4;
    v2 = (v5 >> 7) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
    v3 = 0;
    *(a1 + 536) = 0x1000000000;
  }

  *(a1 + 544) = v2;
  *(a1 + 552) = 0u;
  v6 = *(a1 + 520);
  v7 = nghttp2_map_find(a1, *(a1 + 520));
  if (v7 && (*(v7 + 116) & 2) == 0)
  {
    v8 = *v7;
    if (*v7 == 1)
    {
      if (v6)
      {
        if ((*(a1 + 2723) == 0) == (v6 & 1))
        {
          *(a1 + 568) = 1;
          if (*v7 != 1)
          {
            __assert_rtn("nghttp2_session_on_response_headers_received", "nghttp2_session.c", 3890, "stream->state == NGHTTP2_STREAM_OPENING && nghttp2_session_is_my_stream_id(session, frame->hd.stream_id)");
          }

          if ((*(v7 + 117) & 1) == 0)
          {
            *v7 = 2;
            goto LABEL_70;
          }

          goto LABEL_49;
        }

        *(a1 + 568) = 3;
LABEL_35:
        if ((*(v7 + 117) & 1) == 0)
        {
          v15 = *v7;
          if (((*(a1 + 2723) == 0) ^ v6))
          {
            if (v15 == 3)
            {
              return 4294967193;
            }
          }

          else if (v15 != 2)
          {
            return 4294967193;
          }

          goto LABEL_70;
        }

LABEL_49:
        v10 = "HEADERS: stream closed";
        v16 = a1 + 512;
        v17 = a1;
        v18 = 4294966786;
LABEL_57:
        v20 = session_handle_invalid_connection(v17, v16, v18, v10);
        goto LABEL_58;
      }

      *(a1 + 568) = 3;
    }

    else
    {
      if (v8 == 4)
      {
        *(a1 + 568) = 2;
        if (*v7 != 4)
        {
          __assert_rtn("nghttp2_session_on_push_response_headers_received", "nghttp2_session.c", 3919, "stream->state == NGHTTP2_STREAM_RESERVED");
        }

        if (!v6)
        {
          v10 = "push response HEADERS: stream_id == 0";
          goto LABEL_56;
        }

        if (*(a1 + 2723))
        {
          v10 = "HEADERS: no HEADERS allowed from client in reserved state";
          goto LABEL_56;
        }

        v19 = *(a1 + 2496);
        if (v19 >= *(a1 + 2684))
        {
          v10 = "push response HEADERS: max concurrent streams exceeded";
          goto LABEL_56;
        }

        if ((*(a1 + 2724) & 5) != 0)
        {
          return 4294967193;
        }

        if (v19 >= *(a1 + 2712))
        {
          goto LABEL_78;
        }

        *v7 = 2;
        *(v7 + 116) &= ~1u;
        v22 = *(v7 + 80);
        if (!v22 || (v22 & 1) == 0)
        {
          --*(a1 + 2504);
        }

        *(a1 + 2496) = v19 + 1;
LABEL_70:
        v23 = *(a1 + 2216);
        if (!v23)
        {
          return 0;
        }

        v24 = v23(a1, a1 + 512, *(a1 + 2400));
        if (v24)
        {
          v25 = -902;
        }

        else
        {
          v25 = 0;
        }

        if (v24 == -521)
        {
          return 4294966775;
        }

        else
        {
          return v25;
        }
      }

      if (v8 == 5)
      {
        goto LABEL_9;
      }

      *(a1 + 568) = 3;
      if (v6)
      {
        goto LABEL_35;
      }
    }

    v10 = "HEADERS: stream_id == 0";
    goto LABEL_56;
  }

LABEL_9:
  *(a1 + 568) = 0;
  if (!v6)
  {
    v10 = "request HEADERS: stream_id == 0";
    goto LABEL_56;
  }

  if (!*(a1 + 2723) && (~*(a1 + 2708) & 0x84) != 0)
  {
    if (v6)
    {
      v14 = *(a1 + 2596);
    }

    else
    {
      v14 = *(a1 + 2600);
    }

    if (v14 < v6)
    {
      v10 = "request HEADERS: client received request";
      goto LABEL_56;
    }

    return 4294967193;
  }

  if ((*(a1 + 2723) == 0) == (v6 & 1))
  {
    v10 = "request HEADERS: invalid stream_id";
    goto LABEL_56;
  }

  if (*(a1 + 2600) < v6)
  {
    *(a1 + 2600) = v6;
    v9 = *(a1 + 2496);
    if (v9 >= *(a1 + 2684))
    {
      v10 = "request HEADERS: max concurrent streams exceeded";
      goto LABEL_56;
    }

    if ((*(a1 + 2724) & 5) == 0)
    {
      if (v3 == v6)
      {
        v10 = "request HEADERS: depend on itself";
LABEL_56:
        v16 = a1 + 512;
        v17 = a1;
        v18 = 4294966791;
        goto LABEL_57;
      }

      if (v9 < *(a1 + 2712))
      {
        if (!nghttp2_session_open_stream(a1, v6, 1, 0))
        {
          return 4294966395;
        }

        *(a1 + 2604) = *(a1 + 2600);
        goto LABEL_70;
      }

LABEL_78:
      v20 = session_handle_invalid_stream2(a1, v6, a1 + 512, 4294966763);
LABEL_58:
      if (v20 <= -901)
      {
        return v20;
      }

      else
      {
        return 4294967193;
      }
    }

    return 4294967193;
  }

  v11 = nghttp2_map_find(a1, v6);
  if (!v11)
  {
    return 4294967193;
  }

  v12 = 4294967193;
  if (*(v11 + 117))
  {
    v13 = session_handle_invalid_connection(a1, a1 + 512, 4294966786, "HEADERS: stream closed");
    if (v13 <= -901)
    {
      return v13;
    }

    else
    {
      return 4294967193;
    }
  }

  return v12;
}

uint64_t nghttp2_rcbuf_decref(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 32);
    if (v2 != -1)
    {
      if (v2 <= 0)
      {
        __assert_rtn("nghttp2_rcbuf_decref", "nghttp2_rcbuf.c", 88, "rcbuf->ref > 0");
      }

      v3 = v2 - 1;
      *(result + 32) = v3;
      if (!v3)
      {
        v4 = *(result + 8);

        return v4();
      }
    }
  }

  return result;
}

size_t nghttp2_hd_inflate_hd_nv(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v46 = 0;
  if (*(a1 + 60))
  {
    return -523;
  }

  v13 = *(a1 + 32);
  nghttp2_rcbuf_decref(*(a1 + 176));
  nghttp2_rcbuf_decref(*(a1 + 168));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v14 = a4;
  *a3 = 0;
  if (a5)
  {
    v14 = &a4[a5];
    v15 = a4;
    do
    {
      LOBYTE(v16) = 0;
      v17 = *(a1 + 228);
      if (v17 > 5)
      {
        if (v17 >= 9)
        {
          if (v17 <= 9)
          {
            *(a1 + 232) = *v15 >> 7;
            *(a1 + 228) = 10;
            *(a1 + 184) = 0;
            *(a1 + 216) = 0;
LABEL_37:
            v46 = 0;
            v24 = hd_inflate_read_len(a1, &v46, v15, v14, 7, 0x10000uLL);
            v6 = v24;
            if (v24 < 0)
            {
              goto LABEL_96;
            }

            v15 += v24;
            if (!v46)
            {
              goto LABEL_94;
            }

            if (*(a1 + 232))
            {
              *(a1 + 64) = 0x4000;
              v25 = (2 * *(a1 + 184)) | 1;
              v26 = 11;
            }

            else
            {
              v25 = *(a1 + 184) + 1;
              v26 = 12;
            }

            *(a1 + 228) = v26;
            v33 = nghttp2_rcbuf_new((a1 + 160), v25, v13);
            if (v33)
            {
              goto LABEL_104;
            }

            v34 = *(a1 + 160);
            v35 = *(v34 + 16);
            v36 = *(v34 + 24);
            *(a1 + 136) = v35;
            *(a1 + 144) = v35;
            *(a1 + 120) = v35;
            *(a1 + 128) = v35;
            *(a1 + 112) = v35;
            if (v36)
            {
              *(a1 + 120) = v35 + v36;
            }

            LOBYTE(v16) = 1;
            continue;
          }

          switch(v17)
          {
            case 10:
              goto LABEL_37;
            case 11:
              huff = hd_inflate_read_huff(a1, a1 + 112, v15, v14);
              v6 = huff;
              if (huff < 0)
              {
                goto LABEL_96;
              }

              v15 += huff;
              if (*(a1 + 184))
              {
                goto LABEL_94;
              }

              **(a1 + 136) = 0;
LABEL_100:
              *(*(a1 + 160) + 24) = *(a1 + 136) - *(a1 + 128);
              if (*(a1 + 224) == 2)
              {
                hd_inflate_commit_newname(a1, a2);
              }

              else
              {
                hd_inflate_commit_indname(a1, a2);
              }

              if (v33)
              {
LABEL_104:
                v6 = v33;
                goto LABEL_96;
              }

LABEL_105:
              *(a1 + 228) = 2;
              *a3 |= 2u;
              return v15 - a4;
            case 12:
              v42 = *(a1 + 184);
              if (v14 - v15 >= v42)
              {
                v6 = *(a1 + 184);
              }

              else
              {
                v6 = v14 - v15;
              }

              v43 = *(a1 + 136);
              if (!v6 || (memcpy(*(a1 + 136), v15, v6), v43 += v6, *(a1 + 136) = v43, v42 = *(a1 + 184), *(a1 + 184) = v42 - v6, (v6 & 0x8000000000000000) == 0))
              {
                v15 += v6;
                if (v42 == v6)
                {
                  *v43 = 0;
                  goto LABEL_100;
                }

LABEL_94:
                if (a6)
                {
                  goto LABEL_95;
                }

                return v15 - a4;
              }

LABEL_96:
              *(a1 + 60) = 1;
              return v6;
          }
        }

        else
        {
          if (v17 == 6)
          {
            goto LABEL_24;
          }

          if (v17 == 7)
          {
            v32 = hd_inflate_read_huff(a1, a1 + 72, v15, v14);
            v6 = v32;
            if (v32 < 0)
            {
              goto LABEL_96;
            }

            v15 += v32;
            v16 = *(a1 + 184);
            if (v16)
            {
              goto LABEL_94;
            }

            **(a1 + 96) = 0;
          }

          else
          {
            v19 = *(a1 + 184);
            if (v14 - v15 >= v19)
            {
              v6 = *(a1 + 184);
            }

            else
            {
              v6 = v14 - v15;
            }

            v20 = *(a1 + 96);
            if (v6)
            {
              memcpy(*(a1 + 96), v15, v6);
              v20 += v6;
              *(a1 + 96) = v20;
              v19 = *(a1 + 184);
              *(a1 + 184) = v19 - v6;
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }
            }

            v15 += v6;
            if (v19 != v6)
            {
              goto LABEL_94;
            }

            LOBYTE(v16) = 0;
            *v20 = 0;
          }

          *(*(a1 + 152) + 24) = *(a1 + 96) - *(a1 + 88);
          *(a1 + 228) = 9;
        }
      }

      else
      {
        if (v17 <= 2)
        {
          if ((v17 - 1) >= 2)
          {
            if (v17)
            {
              continue;
            }

            if ((*v15 & 0xE0) != 0x20)
            {
              goto LABEL_95;
            }

LABEL_35:
            *(a1 + 224) = 0x300000001;
          }

          else
          {
            v18 = *v15;
            if ((v18 & 0xE0) == 0x20)
            {
              if (v17 == 2)
              {
                goto LABEL_95;
              }

              goto LABEL_35;
            }

            if ((v18 & 0x80) != 0)
            {
              *(a1 + 224) = 0x400000001;
            }

            else
            {
              if (!*v15 || v18 == 16)
              {
                v27 = 1;
                v28 = 0x500000002;
              }

              else
              {
                v27 = 1;
                v28 = 0x500000002;
                if (v18 != 64)
                {
                  v27 = 0;
                  v28 = 0x400000003;
                }
              }

              *(a1 + 224) = v28;
              *(a1 + 233) = (*v15 & 0x40) != 0;
              *(a1 + 234) = (*v15 & 0xF0) == 16;
              v15 += v27;
            }
          }

          LOBYTE(v16) = 0;
          *(a1 + 184) = 0;
          *(a1 + 216) = 0;
          continue;
        }

        if (v17 == 3)
        {
          v46 = 0;
          if (*(a1 + 208) >= *(a1 + 200))
          {
            v29 = *(a1 + 200);
          }

          else
          {
            v29 = *(a1 + 208);
          }

          v30 = hd_inflate_read_len(a1, &v46, v15, v14, 5, v29);
          v6 = v30;
          if (v30 < 0)
          {
            goto LABEL_96;
          }

          v15 += v30;
          if (!v46)
          {
            goto LABEL_94;
          }

          *(a1 + 208) = 0xFFFFFFFFLL;
          *(a1 + 48) = *(a1 + 184);
          hd_context_shrink_table_size(a1, 0);
          LOBYTE(v16) = 0;
          *(a1 + 228) = 1;
        }

        else
        {
          if (v17 != 4)
          {
            *(a1 + 232) = *v15 >> 7;
            *(a1 + 228) = 6;
            *(a1 + 184) = 0;
            *(a1 + 216) = 0;
LABEL_24:
            v46 = 0;
            v21 = hd_inflate_read_len(a1, &v46, v15, v14, 7, 0x10000uLL);
            v6 = v21;
            if (v21 < 0)
            {
              goto LABEL_96;
            }

            v15 += v21;
            if (!v46)
            {
              goto LABEL_94;
            }

            if (*(a1 + 232))
            {
              *(a1 + 64) = 0x4000;
              v22 = (2 * *(a1 + 184)) | 1;
              v23 = 7;
            }

            else
            {
              v22 = *(a1 + 184) + 1;
              v23 = 8;
            }

            *(a1 + 228) = v23;
            v33 = nghttp2_rcbuf_new((a1 + 152), v22, v13);
            if (v33)
            {
              goto LABEL_104;
            }

            v16 = *(a1 + 152);
            v37 = *(v16 + 16);
            v38 = *(v16 + 24);
            *(a1 + 96) = v37;
            *(a1 + 104) = v37;
            *(a1 + 80) = v37;
            *(a1 + 88) = v37;
            *(a1 + 72) = v37;
            LOBYTE(v16) = 0;
            if (v38)
            {
              *(a1 + 80) = v37 + v38;
            }

            continue;
          }

          if (*(a1 + 224) == 1)
          {
            v31 = 7;
          }

          else if (*(a1 + 233))
          {
            v31 = 6;
          }

          else
          {
            v31 = 4;
          }

          v46 = 0;
          v39 = hd_inflate_read_len(a1, &v46, v15, v14, v31, *(a1 + 24) + 61);
          v6 = v39;
          if (v39 < 0)
          {
            goto LABEL_96;
          }

          v15 += v39;
          if (!v46)
          {
            goto LABEL_94;
          }

          v40 = *(a1 + 184);
          if (!v40)
          {
            goto LABEL_95;
          }

          v41 = *(a1 + 224);
          *(a1 + 192) = v40 - 1;
          if (v41 == 1)
          {
            v47 = 0uLL;
            v48 = 0;
            nghttp2_hd_table_get(&v47, a1, v40 - 1);
            *a2 = v47;
            *(a2 + 16) = v48;
            goto LABEL_105;
          }

          LOBYTE(v16) = 0;
          *(a1 + 228) = 9;
        }
      }
    }

    while (v15 != v14 || (v16 & 1) != 0);
  }

  if (a6)
  {
    if ((*(a1 + 228) - 1) > 1)
    {
LABEL_95:
      v6 = -523;
      goto LABEL_96;
    }

    *a3 |= 1u;
  }

  return v14 - a4;
}

uint64_t nghttp2_rcbuf_new(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8))(a2 + 40, *a3);
  if (!v6)
  {
    return 4294966395;
  }

  v7 = v6;
  result = 0;
  *a1 = v7;
  *v7 = *a3;
  *(*a1 + 8) = *(a3 + 16);
  *(*a1 + 16) = v7 + 5;
  v9 = *a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = 1;
  return result;
}

uint64_t hd_inflate_read_huff(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  v5 = *(a1 + 184);
  if (a4 - a3 < v5)
  {
    v6 = a4;
  }

  else
  {
    v6 = &a3[v5];
  }

  v7 = *(a1 + 64);
  for (i = v6 - a3; a3 != v6; v7 = v7)
  {
    v10 = *a3++;
    v9 = v10;
    v11 = (&huff_decode_table + 64 * (v7 & 0x1FF) + ((v10 >> 2) & 0x3C));
    v12 = *v11;
    if (v12 < 0)
    {
      v13 = *(v11 + 2);
      v14 = *(a2 + 24);
      *(a2 + 24) = v14 + 1;
      *v14 = v13;
    }

    v15 = (&huff_decode_table + 64 * (v12 & 0x1FF) + 4 * (v9 & 0xF));
    v7 = *v15;
    if (v7 < 0)
    {
      v16 = *(v15 + 2);
      v17 = *(a2 + 24);
      *(a2 + 24) = v17 + 1;
      *v17 = v16;
    }
  }

  v18 = (v7 & 0x4000) == 0 && v4 >= v5;
  *(a1 + 64) = v7;
  v19 = -523;
  if (!v18)
  {
    v19 = i;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    if (v7 == 256)
    {
      return -523;
    }

    else
    {
      *(a1 + 184) -= v19;
    }
  }

  return v19;
}

double hd_inflate_commit_indname(uint64_t a1, uint64_t a2)
{
  nghttp2_hd_table_get(&v8, a1, *(a1 + 192));
  BYTE4(v9) = *(a1 + 234) != 0;
  v4 = v8;
  v5 = *(v8 + 32);
  if (v5 != -1)
  {
    *(v8 + 32) = v5 + 1;
  }

  v6 = *(a1 + 160);
  *(&v8 + 1) = v6;
  if (*(a1 + 233) && add_hd_table_incremental(a1, &v8, 0, 0))
  {
    nghttp2_rcbuf_decref(v4);
  }

  else
  {
    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a1 + 168) = v4;
    *(a1 + 176) = v6;
    *(a1 + 160) = 0;
  }

  return result;
}

uint64_t nghttp2_session_open_stream(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  v8 = nghttp2_map_find(a1, a2);
  v9 = *(a1 + 2708) & 0x40;
  if (v8)
  {
    v10 = v8;
    if (*v8 != 5)
    {
      __assert_rtn("nghttp2_session_open_stream", "nghttp2_session.c", 1239, "stream->state == NGHTTP2_STREAM_IDLE");
    }

    if (a3 == 5)
    {
      __assert_rtn("nghttp2_session_open_stream", "nghttp2_session.c", 1240, "initial_state != NGHTTP2_STREAM_IDLE");
    }

    --*(a1 + 2528);
    *(v8 + 116) = v9 | (a3 == 4);
    *v8 = a3;
    *(v8 + 56) = a4;
    goto LABEL_5;
  }

  v11 = (*(a1 + 2368))(128, *(a1 + 2360));
  v10 = v11;
  if (!v11)
  {
    return v10;
  }

  v12 = *(a1 + 2656);
  v13 = *(a1 + 2688);
  *(v11 + 116) = v9 | (a3 == 4);
  *v11 = a3;
  *(v11 + 117) = 0;
  *(v11 + 56) = a4;
  *(v11 + 64) = 0;
  *(v11 + 80) = v6;
  *(v11 + 84) = v12;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 100) = v13;
  *(v11 + 112) = 0;
  *(v11 + 16) = xmmword_298402640;
  *(v11 + 108) = -1;
  *(v11 + 118) = 0;
  *(v11 + 104) = 0;
  *(v11 + 72) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 121) = 3;
  *(v11 + 120) = 3;
  v14 = *(a1 + 2480);
  *(a1 + 2480) = v14 + 1;
  v15 = *(a1 + 32);
  v16 = 8 * *(a1 + 24) + 8;
  *(v11 + 40) = v14;
  *(v11 + 48) = 0;
  if (v16 > (7 << v15))
  {
    if (v15)
    {
      if (v15 > 0x1F)
      {
        goto LABEL_24;
      }

      v17 = v15 + 1;
      v18 = a1;
    }

    else
    {
      v18 = a1;
      v17 = 4;
    }

    if (!map_resize(v18, v17))
    {
      goto LABEL_23;
    }

LABEL_24:
    (*(a1 + 2376))(v10, *(a1 + 2360));
    return 0;
  }

LABEL_23:
  if (map_insert(a1, v6, v10))
  {
    goto LABEL_24;
  }

LABEL_5:
  if (a3 == 5)
  {
    ++*(a1 + 2528);
  }

  else if (a3 == 4)
  {
    if (v6 && (((*(a1 + 2723) == 0) ^ v6) & 1) == 0)
    {
      *(v10 + 117) |= 1u;
    }

    else
    {
      *(v10 + 117) |= 2u;
      ++*(a1 + 2504);
    }
  }

  else if (v6 && (((*(a1 + 2723) == 0) ^ v6) & 1) == 0)
  {
    ++*(a1 + 2488);
  }

  else
  {
    ++*(a1 + 2496);
  }

  return v10;
}

uint64_t nghttp2_http_record_request_method(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 == 1)
  {
    v3 = 48;
    v4 = 40;
  }

  else
  {
    if (v2 != 5)
    {
      return result;
    }

    v3 = 32;
    v4 = 24;
  }

  v5 = *(a2 + v3);
  if (v5)
  {
    for (i = *(a2 + v4); ; i += 5)
    {
      if (i[2] == 7)
      {
        v7 = *i;
        if (*(*i + 6) == 100)
        {
          v8 = *v7;
          v9 = *(v7 + 2);
          if (v8 == 1952804154 && v9 == 28520)
          {
            break;
          }
        }
      }

      if (!--v5)
      {
        return result;
      }
    }

    v11 = i[3];
    if (v11 == 4)
    {
      if (*i[1] != 1145128264)
      {
        return result;
      }

      v16 = 256;
    }

    else
    {
      if (v11 != 7)
      {
        return result;
      }

      v12 = i[1];
      v13 = *v12;
      v14 = *(v12 + 3);
      if (v13 != 1313754947 || v14 != 1413694798)
      {
        return result;
      }

      v16 = 128;
    }

    *(result + 112) |= v16;
  }

  return result;
}

uint64_t add_hd_table_incremental(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  v8 = *(*a2 + 24) + *(a2[1] + 24) + 32;
  v9 = a1[4];
  v10 = a1[5] + v8;
  v11 = a1[6];
  while (v10 > v11)
  {
    v12 = a1[3];
    if (!v12)
    {
      break;
    }

    v13 = hd_ringbuf_get(a1, v12 - 1);
    v14 = v13[1];
    a1[5] = a1[5] - (*(*v13 + 24) + *(v14 + 24)) - 32;
    v15 = a1[3];
    if (!v15)
    {
      __assert_rtn("hd_ringbuf_pop_back", "nghttp2_hd.c", 682, "ringbuf->len > 0");
    }

    a1[3] = v15 - 1;
    if (a3)
    {
      v16 = (a3 + 8 * (*(v13 + 19) & 0x7F));
      v17 = *v16;
      if (*v16)
      {
        if (v17 == v13)
        {
LABEL_11:
          *v16 = v13[8];
          v13[8] = 0;
          v14 = v13[1];
        }

        else
        {
          while (1)
          {
            v18 = v17;
            v17 = v17[8];
            if (!v17)
            {
              break;
            }

            if (v17 == v13)
            {
              v16 = (v18 + 8);
              goto LABEL_11;
            }
          }
        }
      }
    }

    nghttp2_rcbuf_decref(v14);
    nghttp2_rcbuf_decref(*v13);
    (v9[2])(v13, *v9);
    v11 = a1[6];
    v10 = a1[5] + v8;
  }

  if (v8 > v11)
  {
    return 0;
  }

  v20 = (v9[1])(80, *v9);
  if (!v20)
  {
    return 4294966395;
  }

  v21 = v20;
  v22 = *a2;
  *(v20 + 16) = a2[2];
  *v20 = v22;
  v23 = a2[1];
  v24 = *(*a2 + 24);
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  *(v20 + 24) = *(*a2 + 16);
  *(v20 + 32) = v26;
  *(v20 + 40) = v24;
  *(v20 + 48) = v25;
  *(v20 + 56) = *(a2 + 20);
  *(v20 + 64) = 0;
  *(v20 + 76) = 0;
  v27 = *(*v20 + 32);
  if (v27 != -1)
  {
    *(*v20 + 32) = v27 + 1;
  }

  v28 = *(v20 + 8);
  v29 = *(v28 + 32);
  if (v29 != -1)
  {
    *(v28 + 32) = v29 + 1;
  }

  v30 = a1[3] + 1;
  v31 = a1[1];
  if (v31 + 1 < v30)
  {
    v32 = 1;
    do
    {
      v33 = v32;
      v32 *= 2;
    }

    while (v33 < v30);
    v34 = (v9[1])(8 * v33, *v9);
    if (v34)
    {
      v35 = v34;
      if (a1[3])
      {
        v36 = 0;
        do
        {
          *(v35 + 8 * v36) = hd_ringbuf_get(a1, v36);
          ++v36;
        }

        while (v36 < a1[3]);
      }

      (v9[2])(*a1, *v9);
      v31 = v33 - 1;
      *a1 = v35;
      a1[1] = v33 - 1;
      v30 = a1[3] + 1;
      v37 = -1;
      goto LABEL_29;
    }

    nghttp2_rcbuf_decref(*(v21 + 8));
    nghttp2_rcbuf_decref(*v21);
    (v9[2])(v21, *v9);
    return 4294966395;
  }

  v35 = *a1;
  v37 = a1[2] - 1;
LABEL_29:
  *(v35 + 8 * (v37 & v31)) = v21;
  a1[2] = v37;
  a1[3] = v30;
  v38 = *(a1 + 14);
  *(a1 + 14) = v38 + 1;
  *(v21 + 72) = v38;
  *(v21 + 76) = a4;
  if (a3)
  {
    v39 = *(a3 + 8 * (a4 & 0x7F));
    if (v39)
    {
      *(v21 + 64) = v39;
    }

    *(a3 + 8 * (a4 & 0x7F)) = v21;
  }

  result = 0;
  a1[5] += v8;
  return result;
}
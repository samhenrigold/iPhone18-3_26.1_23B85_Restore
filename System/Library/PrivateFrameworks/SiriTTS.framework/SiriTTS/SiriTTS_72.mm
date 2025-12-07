uint64_t iso_parse_fdp_bas(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t *a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, uint64_t a10, int a11)
{
  v19 = heap_Alloc(*(a1 + 24), 96800);
  if (!v19)
  {
    v22 = 0;
    goto LABEL_7;
  }

  v20 = v19;
  v21 = *(a3 + 8);
  if (*(a2 + 68))
  {
    ++v21;
  }

  if (v21 < 2049)
  {
    v42 = v21;
    v45 = 0;
    v48[1] = 4000;
    v47 = 0;
    v48[0] = v19 + 32800;
    bzero((v19 + 32800), 0x7D00uLL);
    v25 = *(a1 + 176);
    v26 = *(a1 + 208);
    v43[12] = *(a1 + 192);
    v43[13] = v26;
    v27 = *(a1 + 112);
    v28 = *(a1 + 144);
    v29 = *(a1 + 160);
    v43[8] = *(a1 + 128);
    v43[9] = v28;
    v43[10] = v29;
    v43[11] = v25;
    v30 = *(a1 + 48);
    v31 = *(a1 + 80);
    v32 = *(a1 + 96);
    v43[4] = *(a1 + 64);
    v43[5] = v31;
    v33 = *(a1 + 40);
    v44 = *(a1 + 224);
    v43[6] = v32;
    v43[7] = v27;
    v34 = *(a1 + 16);
    v43[0] = *a1;
    v43[1] = v34;
    v43[2] = *(a1 + 32);
    v43[3] = v30;
    v23 = look_up_dictionary(a1, a3, a2, 0x14u, SF_symbol_file, v48, v33, v43, a7, a8, a9, a10, a11, &v45);
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    if (v45 != 1)
    {
      log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52001, 0);
      box_hash_free(v48, *(a1 + 24));
      v22 = parser_result_create(2, 0, *(a1 + 24));
      goto LABEL_24;
    }

    v36 = forward_dp(v42, v35, v48, v20 + 2050, v20, a4, *(a1 + 24));
    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[FDP] Dumping LATTICE (RESULT OF FORWARD DP)");
      v23 = lattice_word_print_all(*(a1 + 32), *(a1 + 216), *(a1 + 224), (v20 + 2050), v42, 1);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    if (!v36 || (v46 = v20 + 8100, LODWORD(v47) = 4000, bzero(v20 + 8100, 0x7D00uLL), !backward_as(v36, *(a2 + 8), v42, a2, v20, a3, SF_symbol_file, &v46, v41, *(a1 + 24))))
    {
      box_hash_free(v48, *(a1 + 24));
      v22 = parser_result_create(2, 0, *(a1 + 24));
      lattice_word_free_all(v20 + 2050, v42, *(a1 + 24));
      goto LABEL_24;
    }

    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[A*] RESULT OF BACKWARD A Star");
      v23 = log_intermediate_tree(*(a1 + 32), *(a1 + 216), *(a1 + 224), a2, &v46, v42, a1);
      if ((v23 & 0x80000000) != 0)
      {
LABEL_25:
        v22 = 0;
        goto LABEL_8;
      }
    }

    lattice_word_free_all(v20 + 2050, v42, *(a1 + 24));
    if (*(a2 + 48) == 1)
    {
      v37 = *(a1 + 24);
      v38 = 1;
    }

    else
    {
      v40 = *(a2 + 24);
      switch(v40)
      {
        case 3:
          v39 = parse_cyk_as_step(a2, &v46, v42, *(a1 + 56), a1 + 64, a1 + 104, a1 + 144, *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 2:
          v39 = parse_cyk_as(a2, &v46, v42, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 1:
          v39 = parse_cyk(a2, &v46, v42, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
      }

      v37 = *(a1 + 24);
      v38 = 2;
    }

    v39 = parser_result_create(v38, 0, v37);
LABEL_21:
    v22 = v39;
    cyk_hash_free(&v46, *(a1 + 24));
    box_hash_free(v48, *(a1 + 24));
LABEL_24:
    heap_Free(*(a1 + 24), v20);
    goto LABEL_8;
  }

  log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52000, "%s%d", "maxlength", 2048);
  v22 = parser_result_create(2, 0, *(a1 + 24));
  heap_Free(*(a1 + 24), v20);
LABEL_7:
  v23 = 0;
LABEL_8:
  *a6 = v22;
  return v23;
}

uint64_t tree_append(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return a2;
  }

  v2 = result;
  do
  {
    v3 = v2;
    v2 = *(v2 + 16);
  }

  while (v2);
  *(v3 + 16) = a2;
  return result;
}

uint64_t *info_copy_sjis(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = heap_Calloc(a2, 1, 24);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v10 = v4;
        if (v9)
        {
          v7 = v4;
        }

        v11 = strlen(*v3);
        v12 = heap_Alloc(a2, (v11 + 1));
        *v4 = v12;
        if (!v12)
        {
          break;
        }

        strcpy(v12, *v3);
        v13 = mbs_len_bytes(*(v3 + 8)) + 1;
        v14 = heap_Alloc(a2, v13);
        if (!v14 || mbs2sjis(*(v3 + 8), 0, *(*(v3 + 8) + 8), v14, v13) == -1)
        {
          goto LABEL_23;
        }

        v10[1] = v14;
        if ((v9 & 1) == 0)
        {
          v6[2] = v10;
        }

        v3 = *(v3 + 16);
        if (!v3)
        {
          v10[2] = 0;
          return v7;
        }

        v8 = 1;
        v4 = heap_Calloc(a2, 1, 24);
        v9 = 0;
        v5 = v4 == 0;
        v6 = v10;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      v14 = 0;
LABEL_23:
      v4 = v10;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
LABEL_15:
      v14 = 0;
      if (v8)
      {
LABEL_16:
        WordInfo_free(v7, a2);
      }
    }

    if (!v5)
    {
      heap_Free(a2, *v4);
      heap_Free(a2, v4);
    }

    heap_Free(a2, v14);
  }

  return 0;
}

uint64_t *WordInfo_free(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    heap_Free(a2, v3[1]);
    WordInfo_free(v3[2], a2);

    return heap_Free(a2, v3);
  }

  return result;
}

void *tree_duplicate(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = heap_Alloc(a4, 64);
  if (v8)
  {
    v9 = v8;
    if (get_name_of_symbol(SF_symbol_file, a3, *a1, v8))
    {
      v10 = *(a1 + 8);
      switch(v10)
      {
        case 0:
          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            break;
          }

          v17 = info_copy_sjis(a1[6], a4);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = a1[3];
          if (v19 && *(a2 + 12) == 1)
          {
            v20 = attribute_copy_all(v19, a4);
            if (!v20)
            {
              WordInfo_free(v18, a4);
              break;
            }
          }

          else
          {
            v20 = 0;
          }

          v12 = jp_tree_create(*a1, v9, 0, v20, 0, v18, a4);
          if (!v12)
          {
            WordInfo_free(v18, a4);
          }

          goto LABEL_42;
        case 1:
          v12 = tree_duplicate(a1[6], a2, a3, a4);
          if (!v12 || *v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v15 = a1[3];
          if (v15 && *(a2 + 12) == 1)
          {
            v16 = attribute_copy_all(v15, a4);
            if (!v16)
            {
              break;
            }
          }

          else
          {
            v16 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v16, v12, 0, a4);
          if (v23)
          {
            goto LABEL_36;
          }

          jpe_FreeTree(v12, a4);
          break;
        case 2:
          v11 = tree_duplicate(a1[5], a2, a3, a4);
          if (v11)
          {
            v12 = v11;
            v13 = v11;
            do
            {
              v14 = v13;
              v13 = *(v13 + 16);
            }

            while (v13);
            *(v14 + 16) = tree_duplicate(a1[6], a2, a3, a4);
          }

          else
          {
            v12 = tree_duplicate(a1[6], a2, a3, a4);
            if (!v12)
            {
LABEL_42:
              heap_Free(a4, v9);
              return v12;
            }
          }

          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v21 = a1[3];
          if (v21 && *(a2 + 12) == 1)
          {
            v22 = attribute_copy_all(v21, a4);
            if (!v22)
            {
              break;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v22, v12, 0, a4);
LABEL_36:
          v12 = v23;
          goto LABEL_42;
      }
    }

    v12 = 0;
    goto LABEL_42;
  }

  return 0;
}

void *jp_tree_create(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = heap_Calloc(a7, 1, 48);
  v15 = v14;
  if (v14)
  {
    *v14 = a1;
    v16 = strlen(a2);
    v17 = heap_Alloc(a7, (v16 + 1));
    v15[1] = v17;
    if (v17)
    {
      strcpy(v17, a2);
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = a5;
      v15[5] = a6;
    }

    else
    {
      heap_Free(a7, v15);
      return 0;
    }
  }

  return v15;
}

uint64_t jpe_FreeTree(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      if (v4)
      {
        jpe_FreeTree(v4, a2);
      }

      else
      {
        v5 = v3[5];
        if (v5)
        {
          WordInfo_free(v5, a2);
        }
      }

      v6 = v3[2];
      jpe_FreeTreeOne(v3, a2);
      v3 = v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t jpe_FreeTreeOne(uint64_t a1, void *a2)
{
  if (a1)
  {
    heap_Free(a2, *(a1 + 8));
    attribute_free_all(*(a1 + 24), a2);
    heap_Free(a2, a1);
  }

  return 1;
}

uint64_t *free_information(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    mbs_free(v3[1], a2);
    heap_Free(a2, v3[1]);
    free_information(v3[2], a2);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t create_info(int a1, const char *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = heap_Calloc(a3, 1, 32);
  if (v5)
  {
    v6 = heap_Calloc(a3, 1, 16);
    *(v5 + 8) = v6;
    if (v6)
    {
      v7 = v6;
      v8 = strlen(a2);
      if ((mbs_create(v7, v8, a2, a3) & 0x80000000) == 0)
      {
        __strcpy_chk();
        v9 = strlen(__s);
        v10 = heap_Alloc(a3, (v9 + 1));
        *v5 = v10;
        if (v10)
        {
          strcpy(v10, __s);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          return v5;
        }

        mbs_free(*(v5 + 8), a3);
      }

      heap_Free(a3, *(v5 + 8));
    }

    heap_Free(a3, v5);
    return 0;
  }

  return v5;
}

void *word_data_free_all(uint64_t **a1, void *a2)
{
  v4 = *a1;
  v5 = (*a1)[3];
  if (v5)
  {
    do
    {
      v6 = v5[3];
      free_information(v5, a2);
      v5 = v6;
    }

    while (v6);
  }

  free_information(v4, a2);
  attribute_free_all(a1[2], a2);

  return heap_Free(a2, a1);
}

uint64_t BSCompareUniToTts(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t XLIT_chUnicodeWideToSJIS(unsigned int a1, char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  if (a1 - 65534 < 2 || a1 == 65279)
  {
    return 0;
  }

  if (a1 <= 0x7E)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 - 1025 <= 0x50)
  {
    *a2 = -124;
    if (a1 == 1025)
    {
      v8 = 70;
    }

    else
    {
      if (a1 <= 0x415)
      {
        v13 = 48;
      }

      else
      {
        v13 = 49;
      }

      v14 = v13 + a1;
      if (a1 > 0x42F)
      {
        v14 += 15;
      }

      v15 = a1 > 0x435;
      if (a1 > 0x43D)
      {
        ++v15;
      }

      v8 = v15 + v14;
    }

    a2[1] = v8;
    return 2;
  }

  if (a1 - 913 <= 0x38)
  {
    if (a1 > 0x3A1)
    {
      v9 = -32755;
    }

    else
    {
      v9 = -32754;
    }

    v10 = v9 + a1;
    if (a1 > 0x3A9)
    {
      ++v10;
    }

    v11 = v10 - (a1 > 0x3C1);
    goto LABEL_21;
  }

  if ((a1 + 159) <= 0x3Eu)
  {
    *a2 = a1 + 64;
    return 1;
  }

  if ((a1 + 255) > 0x5Du)
  {
    if (a1 - 12353 <= 0x52)
    {
      a2[1] = a1 + 94;
      v18 = -126;
LABEL_46:
      *a2 = v18;
      return 2;
    }

    if (a1 - 12449 <= 0x55)
    {
      if (a1 >> 5 <= 0x186)
      {
        v19 = -97;
      }

      else
      {
        v19 = -96;
      }

      a2[1] = v19 + a1;
      v18 = -125;
      goto LABEL_46;
    }

    if ((a1 - 19968) <= 0x51A5u)
    {
      v20 = jpj_UniToCTts(a1);
      if (v20 != 0x1FFF)
      {
        LOWORD(v12) = __rev16(jpj_CTtsToTts(v20));
        goto LABEL_22;
      }

      v21 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
      if (v21)
      {
        v11 = BSUniToTts[((v21 - BSUniToTts) >> 1) + 147];
LABEL_21:
        v12 = bswap32(v11) >> 16;
LABEL_22:
        *a2 = v12;
        return 2;
      }

      return 0;
    }

    if (a1 > 65503)
    {
      if (a1 > 65505)
      {
        if (a1 == 65506)
        {
          v12 = 33226;
        }

        else
        {
          if (a1 != 65509)
          {
LABEL_101:
            v24 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
            if (v24)
            {
              v11 = BSUniToTts[((v24 - BSUniToTts) >> 1) + 147];
              goto LABEL_21;
            }

            if (a4 && *(a4 + 2))
            {
              if (v27 == *(a4 + 2))
              {
                v25 = 1;
LABEL_144:
                v11 = *(a4 + 2 * v25 - 2);
                goto LABEL_21;
              }

              v26 = 1;
              while (1)
              {
                v26 += 2;
                v25 = v26;
                if (!*(a4 + 2 * v26))
                {
                  break;
                }

                if (v27 == *(a4 + 2 * v26))
                {
                  goto LABEL_144;
                }
              }
            }

            return 0;
          }

          v12 = 33167;
        }
      }

      else if (a1 == 65504)
      {
        v12 = 33169;
      }

      else
      {
        v12 = 33170;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x2500u:
          v12 = 33951;
          break;
        case 0x2501u:
          v12 = 33962;
          break;
        case 0x2502u:
          v12 = 33952;
          break;
        case 0x2503u:
          v12 = 33963;
          break;
        case 0x2504u:
        case 0x2505u:
        case 0x2506u:
        case 0x2507u:
        case 0x2508u:
        case 0x2509u:
        case 0x250Au:
        case 0x250Bu:
        case 0x250Du:
        case 0x250Eu:
        case 0x2511u:
        case 0x2512u:
        case 0x2515u:
        case 0x2516u:
        case 0x2519u:
        case 0x251Au:
        case 0x251Eu:
        case 0x251Fu:
        case 0x2521u:
        case 0x2522u:
        case 0x2526u:
        case 0x2527u:
        case 0x2529u:
        case 0x252Au:
        case 0x252Du:
        case 0x252Eu:
        case 0x2531u:
        case 0x2532u:
        case 0x2535u:
        case 0x2536u:
        case 0x2539u:
        case 0x253Au:
        case 0x253Du:
        case 0x253Eu:
        case 0x2540u:
        case 0x2541u:
        case 0x2543u:
        case 0x2544u:
        case 0x2545u:
        case 0x2546u:
        case 0x2547u:
        case 0x2548u:
        case 0x2549u:
        case 0x254Au:
          goto LABEL_101;
        case 0x250Cu:
          v12 = 33953;
          break;
        case 0x250Fu:
          v12 = 33964;
          break;
        case 0x2510u:
          v12 = 33954;
          break;
        case 0x2513u:
          v12 = 33965;
          break;
        case 0x2514u:
          v12 = 33956;
          break;
        case 0x2517u:
          v12 = 33967;
          break;
        case 0x2518u:
          v12 = 33955;
          break;
        case 0x251Bu:
          v12 = 33966;
          break;
        case 0x251Cu:
          v12 = 33957;
          break;
        case 0x251Du:
          v12 = 33978;
          break;
        case 0x2520u:
          v12 = 33973;
          break;
        case 0x2523u:
          v12 = 33968;
          break;
        case 0x2524u:
          v12 = 33959;
          break;
        case 0x2525u:
          v12 = 33980;
          break;
        case 0x2528u:
          v12 = 33975;
          break;
        case 0x252Bu:
          v12 = 33970;
          break;
        case 0x252Cu:
          v12 = 33958;
          break;
        case 0x252Fu:
          v12 = 33974;
          break;
        case 0x2530u:
          v12 = 33979;
          break;
        case 0x2533u:
          v12 = 33969;
          break;
        case 0x2534u:
          v12 = 33960;
          break;
        case 0x2537u:
          v12 = 33976;
          break;
        case 0x2538u:
          v12 = 33981;
          break;
        case 0x253Bu:
          v12 = 33971;
          break;
        case 0x253Cu:
          v12 = 33961;
          break;
        case 0x253Fu:
          v12 = 33977;
          break;
        case 0x2542u:
          v12 = 33982;
          break;
        case 0x254Bu:
          v12 = 33972;
          break;
        default:
          if (a1 != 8741)
          {
            goto LABEL_101;
          }

          v12 = 33121;
          break;
      }
    }

    LOWORD(v12) = __rev16(v12);
    goto LABEL_22;
  }

  if (a1 > 0x5Au)
  {
    if (a1 > 0x5Cu)
    {
      if (a1 == 93)
      {
        v16 = -127;
        v17 = 112;
        goto LABEL_92;
      }

      if (a1 == 94)
      {
        v16 = -127;
        v17 = 96;
        goto LABEL_92;
      }
    }

    else
    {
      if (a1 == 91)
      {
        v16 = -127;
        v17 = 111;
        goto LABEL_92;
      }

      if (a1 == 92)
      {
        v16 = -127;
        v17 = 98;
LABEL_92:
        a2[1] = v17;
        *a2 = v16;
        return 2;
      }
    }

LABEL_88:
    if (a1 <= 0xFF3A)
    {
      v23 = 63;
    }

    else
    {
      v23 = 64;
    }

    v17 = v23 + a1;
    v16 = -126;
    goto LABEL_92;
  }

  v5 = 0;
  v16 = -127;
  v17 = 73;
  switch(a1)
  {
    case 1:
      goto LABEL_92;
    case 2:
    case 7:
      return v5;
    case 3:
      v17 = -108;
      goto LABEL_92;
    case 4:
      v17 = -112;
      goto LABEL_92;
    case 5:
      v17 = -109;
      goto LABEL_92;
    case 6:
      v17 = -107;
      goto LABEL_92;
    case 8:
      v17 = 105;
      goto LABEL_92;
    case 9:
      v17 = 106;
      goto LABEL_92;
    case 10:
      v17 = -106;
      goto LABEL_92;
    case 11:
      v17 = 123;
      goto LABEL_92;
    case 12:
      v17 = 67;
      goto LABEL_92;
    case 13:
      v17 = 124;
      goto LABEL_92;
    case 14:
      v17 = 68;
      goto LABEL_92;
    case 15:
      v17 = 94;
      goto LABEL_92;
    case 26:
      v17 = 70;
      goto LABEL_92;
    case 27:
      v17 = 71;
      goto LABEL_92;
    case 28:
      v17 = -125;
      goto LABEL_92;
    case 29:
      v17 = -127;
      goto LABEL_92;
    case 30:
      v17 = -124;
      goto LABEL_92;
    case 31:
      v17 = 72;
      goto LABEL_92;
    case 32:
      v17 = -105;
      goto LABEL_92;
    case 59:
      v17 = 109;
      goto LABEL_92;
    case 60:
      v17 = 95;
      goto LABEL_92;
    case 61:
      v17 = 110;
      goto LABEL_92;
    case 62:
      v17 = 79;
      goto LABEL_92;
    case 63:
      v17 = 81;
      goto LABEL_92;
    case 64:
      v17 = 77;
      goto LABEL_92;
    default:
      goto LABEL_88;
  }

  return v5;
}

uint64_t jpj_UniToCTts(__int16 a1)
{
  if ((a1 - 19968) > 0x51A5u)
  {
    return 0x1FFFLL;
  }

  v1 = (&CUni2CTts + 2 * CUni2CTtsindex[(a1 - 19968) >> 6]);
  LOWORD(v2) = a1 & 0x3F;
  if ((a1 & 0x3F) == 0)
  {
    return *v1 >> 3;
  }

  do
  {
    v3 = *v1 & 7;
    if ((*v1 & 7) != 0)
    {
      ++v1;
    }

    else
    {
      v3 = v1[1];
      v1 += 2;
    }

    v2 = (v2 - v3);
  }

  while (v2 > 0);
  if (v2)
  {
    return 0x1FFFLL;
  }

  else
  {
    return *v1 >> 3;
  }
}

uint64_t jpj_CTtsToTts(unsigned int a1)
{
  if (a1)
  {
    v1 = a1 + 43;
    if (a1 <= 0xB95)
    {
      v1 = a1;
    }

    v2 = v1 + 1409;
    v3 = v2 / 0xBCu;
    LOBYTE(v2) = v2 % 0xBCu;
    v4 = v2 + 64;
    v5 = (v2 + 64);
    v6 = v2 + 65;
    if (v5 <= 0x7E)
    {
      v6 = v4;
    }

    v7 = v3 - 127;
    v8 = (v3 - 127);
    v9 = v3 - 63;
    if (v8 <= 0x9F)
    {
      v9 = v7;
    }

    return (v6 | (v9 << 8));
  }

  else
  {
    return -32425;
  }
}

const char *marker_getMarkerArgStr(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "__not_defined__";
  }

  else
  {
    return off_1E81ACE30[a1];
  }
}

uint64_t marker_tag2string(int a1, const char **a2, _DWORD *a3)
{
  v3 = 0;
  v4 = "MARKER_PHONEME";
  do
  {
    v5 = *(v4 + 12);
    if (v5 != a1)
    {
      ++v3;
    }

    v4 = &markerTable[56 * v3];
    if (*v4)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  if (v5 == a1)
  {
    result = 0;
    v8 = v4 + 7;
    v7 = *(v4 + 13);
  }

  else
  {
    v7 = 0;
    v8 = "";
    result = 20;
  }

  *a2 = v8;
  *a3 = v7;
  return result;
}

BOOL marker_hasNonConstCharPtrArg(int a1)
{
  v1 = &dword_1C37F8EE4;
  v2 = 56;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1 == 3;
}

BOOL marker_hasCharPtrArg(int a1)
{
  v1 = &dword_1C37F8EE4;
  v2 = 56;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return (*v1 - 3) < 2;
}

const char *marker_getString(int a1)
{
  result = "MARKER_PHONEME";
  v3 = 56;
  while (*(result + 12) != a1)
  {
    result += 56;
    if (!--v3)
    {
      return "MARKER_UNDEF";
    }
  }

  return result;
}

uint64_t marker_serialize_tostring(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v32 = "UNKNOWN";
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (a4)
  {
    v8 = (a3 + 24);
    v23 = (a3 + 36);
    v9 = (a3 + 32);
    v10 = (a3 + 40);
    v11 = (a3 + 48);
    v12 = (a3 + 56);
    v13 = *(a3 + 20);
    v14 = (a3 + 28);
  }

  else
  {
    v13 = *a3;
    v15 = *(a3 + 4);
    v16 = *(a3 + 12);
    HIDWORD(v28) = *(a3 + 8);
    v29 = v15;
    v27 = *(a3 + 16);
    LODWORD(v28) = v16;
    v17 = *(a3 + 24);
    v10 = &v26;
    v23 = &v27;
    v9 = &v28;
    v11 = &v25;
    v12 = &v24;
    v25 = 0;
    v26 = v17;
    v5 = &v30;
    v14 = &v28 + 1;
    v8 = &v29;
  }

  v31 = 0;
  marker_tag2string(v13, &v32, &v31);
  LH_utoa(*v8, v33, 0xAu);
  a1(a2, v33);
  a1(a2, " ");
  LH_utoa(*v14, v33, 0xAu);
  a1(a2, v33);
  if (a4)
  {
    a1(a2, " ");
    v18 = *v5 ? "INT" : "EXT";
    a1(a2, v18);
    a1(a2, " ");
    LH_utoa(*v12, v33, 0xAu);
    a1(a2, v33);
    if (*v12)
    {
      v19 = *v11;
      a1(a2, " [");
      if (v19)
      {
        v20 = strlen(v19);
        LH_utoa(v20, v33, 0xAu);
        a1(a2, v33);
        a1(a2, " ");
        a1(a2, v19);
      }

      a1(a2, "]");
    }
  }

  a1(a2, " ");
  a1(a2, v32);
  if ((v31 - 3) <= 1)
  {
    v21 = *v10;
    a1(a2, " (");
    if (!v21)
    {
      v21 = "";
    }

    goto LABEL_18;
  }

  if ((v31 - 1) <= 1)
  {
    v21 = v33;
    LH_utoa(*v10, v33, 0xAu);
    a1(a2, " (");
LABEL_18:
    a1(a2, v21);
    a1(a2, ")");
  }

  a1(a2, " ");
  LH_utoa(*v9, v33, 0xAu);
  a1(a2, v33);
  a1(a2, " ");
  LH_utoa(*v23, v33, 0xAu);
  return a1(a2, v33);
}

uint64_t marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a3)
  {
    if (!marker_hasNonConstCharPtrArg(*a1))
    {
      return 1;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (result)
    {
      if (v8)
      {
        result = strcpy(result, *(a1 + 24));
      }

      else
      {
        *result = 0;
      }

      *(a3 + 24) = result;
      return 1;
    }
  }

  return result;
}

int *marker_freeParts(int *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*result);
    if (result)
    {
      v4 = *(v3 + 3);
      if (v4)
      {
        result = heap_Free(a2, v4);
        *(v3 + 3) = 0;
      }
    }
  }

  return result;
}

uint64_t compare_3(int *a1, int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v6 = *a2;
  if (*a1 == 0x4000)
  {
    if (v6 != 0x4000)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = a1[4];
    v8 = a2[4];
    if (v7 | v8)
    {
      return (v8 - v7);
    }

    v6 = 0x4000;
  }

  else if (v6 == 0x4000)
  {
    return 1;
  }

  v9 = 255;
  v10 = 5;
  v11 = 255;
  v12 = &word_1C37F9B2C;
  do
  {
    v13 = *(v12 - 1);
    if (v13 == *a1)
    {
      v11 = *v12;
    }

    if (v13 == v6)
    {
      v9 = *v12;
    }

    v12 += 4;
    --v10;
  }

  while (v10);
  if (v9 != 255 && v11 != 255)
  {
    v4 = (v11 - v9);
    if (v11 != v9)
    {
      return v4;
    }
  }

  v14 = a1[1];
  v15 = a2[1];
  if (v14 < v15)
  {
    return 0xFFFFFFFFLL;
  }

  if (v14 > v15)
  {
    return 1;
  }

  v16 = a1[2];
  v17 = a2[2];
  if (v16 <= v17)
  {
    return v17 > v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t marker_logOutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v11 = 0;
  if ((marker_tag2string(*a5, &v12, &v11) & 0x80000000) != 0 || !v12)
  {
    return log_OutText(a1, a2, a3, 0, "%s MARKER_%d : posCur %d, lenCur %d", a4);
  }

  if ((v11 - 3) <= 1 && *(a5 + 24))
  {
    return log_OutText(a1, a2, a3, 0, "%s MARKER_%s [%s] : posCur %u, lenCur %u", a4);
  }

  if (v11 == 1)
  {
    return log_OutText(a1, a2, a3, 0, "%s MARKER_%s [%u] : posCur %u, lenCur %u", a4);
  }

  if (v11 == 2)
  {
    return log_OutText(a1, a2, a3, 0, "%s MARKER_%s [%c] : posCur %u, lenCur %u", a4);
  }

  return log_OutText(a1, a2, a3, 0, "%s MARKER_%s [] : posCur %u, lenCur %u", a4);
}

uint64_t ppint_marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (!a1 || !a3)
  {
    return result;
  }

  if (marker_hasNonConstCharPtrArg(*(a1 + 20)))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (!result)
    {
      return result;
    }

    if (v8)
    {
      result = strcpy(result, *(a1 + 40));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 40) = result;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = strlen(v9);
    result = heap_Alloc(a2, (v10 + 1));
    if (!result)
    {
      return result;
    }

    if (v10)
    {
      result = strcpy(result, *(a1 + 48));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 48) = result;
  }

  return 1;
}

void *ppint_marker_freeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*(result + 5));
    if (result)
    {
      v4 = v3[5];
      if (v4)
      {
        result = heap_Free(a2, v4);
        v3[5] = 0;
      }
    }

    v5 = v3[6];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[6] = 0;
    }
  }

  return result;
}

uint64_t ttteg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2288001025;
  }

  result = 0;
  *a2 = &ITtteg;
  return result;
}

uint64_t ttteg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2288001031;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    if ((InitRsrcFunction(a3, a4, &v25) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v25 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[15] = safeh_GetNullHandle();
        *(v11 + 128) = v12;
        Object = objc_GetObject(*(v25 + 48), "SYNTHSTREAM", &v23);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        *(v11 + 40) = *(v23 + 8);
        Object = sub_ObjOpen(a3, a4, (v11 + 16));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        v14 = *(v25 + 8);
        *v21 = xmmword_1C37F9B50;
        *&v21[16] = 0;
        if (!vector_ObjOpen(v14, v21, 1, (v11 + 24)))
        {
          v11 = 0;
LABEL_36:
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 269;
          return v5;
        }

        if ((paramc_ParamGetStr(*(v25 + 40), "rulesetsfrommarkup", &v24) & 0x80000000) != 0)
        {
          *(v11 + 32) = 0;
          Object = paramc_ParamSetStr(*(v25 + 40), "rulesetsfrommarkup", "0");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_20:
          v16 = *(v25 + 40);
          *v21 = v11;
          *&v21[8] = xmmword_1F42D5DF8;
          Object = paramc_ListenerAdd(v16, "rulesetsfrommarkup", v21);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

          *(v11 + 112) = 0;
          if ((paramc_ParamGetStr(*(v25 + 40), "clcpppipelinemode", &v22) & 0x80000000) == 0 && v22 && *v22)
          {
            *(v11 + 112) = 1;
          }

          else if (!*(v11 + 112))
          {
            *v21 = 0;
            Object = nuance_pcre_ObjOpen(a3, a4, v11 + 120);
            if ((Object & 0x80000000) != 0)
            {
              goto LABEL_37;
            }

            if (paramc_ParamGetUInt(*(v25 + 40), "retttmaxpcreframeblocks", v21) < 0)
            {
              v17 = 10;
            }

            else
            {
              v17 = *v21;
            }

            UInt = paramc_ParamGetUInt(*(v25 + 40), "retttnumframesinblock", v21);
            v19 = *v21;
            if (UInt < 0)
            {
              v19 = 10;
            }

            nuance_pcre_Init(*(v11 + 120), *(v11 + 128), v17, v19);
            goto LABEL_35;
          }

          Object = esc_seq_init(a3, a4, (v11 + 120));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_35:
          Object = paramc_ParamSetInt(*(v25 + 40), "enablerett", 1);
          if ((Object & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_37:
          v5 = Object;
          ttteg_pObjClose(v11);
          return v5;
        }

        if (v24)
        {
          v15 = *v24;
          if (!*v24)
          {
LABEL_19:
            *(v11 + 32) = v15;
            goto LABEL_20;
          }

          if (!LH_stricmp(v24, "true"))
          {
            v15 = 1;
            goto LABEL_19;
          }

          if (*v24 == 49)
          {
            v15 = v24[1] == 0;
            goto LABEL_19;
          }
        }

        v15 = 0;
        goto LABEL_19;
      }

      return 2288001034;
    }
  }

  return v5;
}

uint64_t ttteg_ObjClose(void *a1, uint64_t a2)
{
  v2 = a2;
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      if ((InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) == 0)
      {
        Size = vector_GetSize(a1[3]);
        if (Size)
        {
          v6 = Size - 1;
          do
          {
            if (!vector_GetElemAt(a1[3], v6, &v7))
            {
              break;
            }

            ruleset_UnloadRules(v7);
            ruleset_ObjClose(v7);
            vector_Remove(a1[3], v6--);
          }

          while (v6 != -1);
        }
      }
    }

    ttteg_ProcessEnd(a1, v2);
    return ttteg_pObjClose(a1);
  }

  return result;
}

uint64_t ttteg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = ttteg_ResourceTypes_SZ_RETTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t ttteg_ResourceLoad(void *a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v36[128] = *MEMORY[0x1E69E9840];
  v34 = 0;
  *v35 = 0;
  v7 = 2288001031;
  v33 = 0;
  v32 = 0;
  if (!a3 || !a7)
  {
    return v7;
  }

  if (a4)
  {
    v14 = a6 != 0;
    if (!a5 && a6)
    {
      return v7;
    }
  }

  else
  {
    if (!a5 || !a6)
    {
      return v7;
    }

    v14 = 1;
  }

  Str = safeh_HandleCheck(a1, a2, 269, 136);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  *a7 = 0;
  *(a7 + 8) = 0;
  if ((InitRsrcFunction(*a1, a1[1], v35) & 0x80000000) != 0)
  {
    return v7;
  }

  if (a4)
  {
    if (*a4)
    {
      v36[0] = 0;
      if (vector_GetElemAt(a1[3], 0, v36))
      {
        v16 = 0;
        while (!*(v36[0] + 44))
        {
          if (*(v36[0] + 24))
          {
            Name = ruleset_GetName(v36[0]);
            if (!strcmp(Name, a4))
            {
              return 2288001048;
            }

            if (*(v36[0] + 32))
            {
              AbsName = ruleset_GetAbsName(v36[0]);
LABEL_18:
              if (!strcmp(AbsName, a4))
              {
                return 2288001048;
              }
            }
          }

          if (!vector_GetElemAt(a1[3], ++v16, v36))
          {
            goto LABEL_25;
          }
        }

        AbsName = ruleset_GetName(v36[0]);
        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v19 = !v14;
  if (!a5)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v33 = a5;
    v32 = a6;
LABEL_36:
    v22 = ruleset_ObjOpen(*a1, a1[1], a1[15], a1[16], a1[2], v25);
    if ((v22 & 0x80000000) == 0)
    {
      Rules = ruleset_LoadRules(v25, a4, 0, a3, v33, v32);
      if ((Rules & 0x80000000) == 0)
      {
        if (vector_Add(a1[3], v25) == 1)
        {
          *a7 = v26;
          *(a7 + 8) = 300;
          goto LABEL_45;
        }

        Rules = 2288001034;
      }

      ruleset_ObjClose(v25);
      goto LABEL_45;
    }

LABEL_41:
    Rules = v22;
    goto LABEL_45;
  }

  *v24 = 0;
  bzero(v36, 0x400uLL);
  Rules = brk_DataOpenEx(*(*v35 + 24), a4, 1, &v34);
  if (strstr(a3, ";loader=broker") && (Rules & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(*v35 + 40), "langcode", v24);
    if ((Str & 0x80000000) == 0)
    {
      v21 = brokeraux_ComposeBrokerString(*v35, a4, 0, 1, *v24, 0, 0, v36, 0x400uLL);
      if (v21 < 0)
      {
        Rules = v21 | 0x88602000;
        goto LABEL_45;
      }

      Rules = brk_DataOpenEx(*(*v35 + 24), v36, 0, &v34);
      goto LABEL_34;
    }

    return Str;
  }

LABEL_34:
  if ((Rules & 0x80000000) == 0)
  {
    v22 = brk_DataMapEx(*(*v35 + 24), v34, 0, &v32, &v33);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_45:
  if (v33)
  {
    brk_DataUnmap(*(*v35 + 24), v34, v33);
    v33 = 0;
  }

  if (v34)
  {
    brk_DataClose(*(*v35 + 24), v34);
  }

  return Rules;
}

uint64_t ttteg_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = safeh_HandleCheck(a3, a4, 300, 8);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2288002061;
  if (!vector_GetElemAt(*(a1 + 24), 0, &v11))
  {
    return v8;
  }

  v9 = 0;
  while (*(v11 + 80) != a3)
  {
    if (!vector_GetElemAt(*(a1 + 24), ++v9, &v11))
    {
      return v8;
    }
  }

  v7 = ruleset_UnloadRules(v11);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = ruleset_ObjClose(v11);
  if ((v8 & 0x80000000) == 0)
  {
    vector_Remove(*(a1 + 24), v9);
  }

  return v8;
}

uint64_t ttteg_ProcessStart(_WORD **a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  v6 = a2;
  v15 = 0;
  v14 = 0;
  Int = 2288001031;
  if ((safeh_HandleCheck(a1, a2, 269, 136) & 0x80000000) != 0)
  {
    return 2288001032;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v15) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[10] = a3;
    a1[11] = a4;
    do
    {
      v10 = (*(a1[5] + 8))(a3, a4, 134, ttteg_ProcessStart_szInput[v9], 0, 0, a1 + 12);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[12] = 0;
    }

    Int = paramc_ParamGetInt(*(v15 + 40), "enablerett", &v14);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (v14 == 1)
    {
      v12 = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 0, a1 + 6);
      if ((v12 & 0x80000000) != 0)
      {
        Int = v12;
LABEL_17:
        ttteg_ProcessEnd(a1, v6);
        return Int;
      }

      Int = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 1, a1 + 8);
      if ((Int & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[6] = 0;
      a1[8] = 0;
    }
  }

  return Int;
}

uint64_t ttteg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v52 = 0;
  __src = 0;
  v51 = 0;
  __s = 0;
  v49 = 0;
  v46 = 0;
  __n = 0;
  v45 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v52) & 0x80000000) == 0)
  {
    Int = paramc_ParamGetInt(*(v52 + 40), "enablerett", &v45);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (!*(a1 + 48))
    {
      Str = 0;
LABEL_56:
      v15 = 1;
      goto LABEL_57;
    }

    Str = 0;
    v15 = 1;
    if (!*(a1 + 64) || !v45)
    {
      goto LABEL_57;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 40) + 144))(*(a1 + 48), *(a1 + 56), &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v15 = *(a1 + 112) | __n;
      if (!v15)
      {
        Str = 0;
LABEL_57:
        *a5 = v15;
        return Str;
      }

      v7 = (*(*(a1 + 40) + 88))(*(a1 + 48), *(a1 + 56), &__src, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        if (log_HasTraceTuningDataSubscriber(*(v52 + 32)))
        {
          log_OutTraceTuningData(*(v52 + 32), 4, "%s%s", v16, v17, v18, v19, v20, "BEG");
          log_OutTraceTuningDataBinary(*(v52 + 32), 5, "", "text/plain;charset=utf-8", __src, HIDWORD(__n));
        }

        v21 = heap_Alloc(*(v52 + 8), (HIDWORD(__n) + 1));
        __s = v21;
        if (!v21)
        {
          return 2288001034;
        }

        if (__src)
        {
          memcpy(v21, __src, HIDWORD(__n));
          v21 = __s;
        }

        v21[HIDWORD(__n)] = 0;
        Int = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), HIDWORD(__n));
        if ((Int & 0x80000000) == 0)
        {
          __src = 0;
          Str = paramc_ParamGetStr(*(v52 + 40), "langcode", &v51);
          if ((Str & 0x80000000) == 0)
          {
            log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
            Size = vector_GetSize(*(a1 + 24));
            v23 = 0;
            if (Size)
            {
              v24 = Size - 1;
              while (1)
              {
                v46 = 0;
                if (vector_GetElemAt(*(a1 + 24), v24, &v46))
                {
                  if (*(v46 + 11))
                  {
                    if (ruleset_GetEnabledForLng(v46, v51))
                    {
                      v25 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v46, v25, &__s);
                      v23 = v25;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }
                }

                if (--v24 == -1)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
LABEL_27:
              v26 = *(a1 + 96);
              if (v26)
              {
                v9 = strlen(__s);
                if (v9)
                {
                  (*(*(a1 + 40) + 176))(v26, *(a1 + 104), __s);
                }
              }

              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%u %s%s", v9, v10, v11, v12, v13, "END");
              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%s %s%s", v27, v28, v29, v30, v31, "BEG");
              v46 = 0;
              v32 = vector_GetSize(*(a1 + 24));
              if (v32)
              {
                v38 = v32 - 1;
                do
                {
                  v46 = 0;
                  if (vector_GetElemAt(*(a1 + 24), v38, &v46))
                  {
                    if (!*(v46 + 11) && ruleset_GetEnabledForLng(v46, v51))
                    {
                      v39 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v46, v39, &__s);
                      v23 = v39;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }

                  --v38;
                }

                while (v38 != -1);
              }

              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%u %s%s", v33, v34, v35, v36, v37, "END");
              if ((Str & 0x80000000) == 0)
              {
                if (__s)
                {
                  v40 = strlen(__s);
                  if (v40)
                  {
                    v41 = (*(*(a1 + 40) + 112))(*(a1 + 64), *(a1 + 72), &v49, v40);
                    if ((v41 & 0x80000000) == 0)
                    {
                      memcpy(v49, __s, v40);
                      _NashvilleFEModule_ReportModifiedText(v52, v49, v40);
                      log_OutTraceTuningDataBinary(*(v52 + 32), 6, "", "text/plain;charset=utf-8", v49, v40);
                      v41 = (*(*(a1 + 40) + 120))(*(a1 + 64), *(a1 + 72), v40);
                    }

                    Str = v41;
                  }
                }
              }

              v25 = v23;
            }

            goto LABEL_47;
          }

LABEL_46:
          v25 = 0;
LABEL_47:
          log_OutTraceTuningData(*(v52 + 32), 4, "%s%s %s%u", v9, v10, v11, v12, v13, "END");
          if (v25)
          {
            heap_Free(*(v52 + 8), v25);
          }

          if (__s)
          {
            heap_Free(*(v52 + 8), __s);
          }

          if (!*(a1 + 112))
          {
            v42 = (*(*(a1 + 40) + 72))(*(a1 + 64), *(a1 + 72));
            if (v42 >= 0)
            {
              Str = Str;
            }

            else
            {
              Str = v42;
            }

            *(a1 + 64) = safeh_GetNullHandle();
            *(a1 + 72) = v43;
          }

          goto LABEL_56;
        }

LABEL_45:
        Str = Int;
        goto LABEL_46;
      }
    }

    return v7;
  }

  return 2288001031;
}

uint64_t ttteg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v5))
    {
      v6 = (*(a1[5] + 72))(a1[12], a1[13]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[6], a1[7], v8, v9))
    {
      v10 = (*(a1[5] + 72))(a1[6], a1[7]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[6] = safeh_GetNullHandle();
    a1[7] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[8], a1[9], v12, v13))
    {
      v14 = (*(a1[5] + 72))(a1[8], a1[9]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[8] = safeh_GetNullHandle();
    a1[9] = v15;
  }

  return v3;
}

uint64_t ttteg_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "rulesetsfrommarkup"))
  {
    if (a3)
    {
      v5 = *a3;
      if (!*a3)
      {
LABEL_9:
        *(a1 + 32) = v5;
        return 0;
      }

      if (!LH_stricmp(a3, "true"))
      {
        v5 = 1;
        goto LABEL_9;
      }

      if (*a3 == 49)
      {
        v5 = a3[1] == 0;
        goto LABEL_9;
      }
    }

    v5 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t ttteg_pObjClose(_WORD **a1)
{
  v1 = 2288001031;
  v9 = 0;
  if (a1 && (InitRsrcFunction(*a1, a1[1], &v9) & 0x80000000) == 0)
  {
    v3 = *(v9 + 40);
    v7 = a1;
    v8 = xmmword_1F42D5DF8;
    paramc_ListenerRemove(v3, "rulesetsfrommarkup", &v7);
    if (a1[5])
    {
      objc_ReleaseObject(*(v9 + 48), "SYNTHSTREAM");
    }

    v4 = a1[2];
    if (v4)
    {
      sub_ObjClose(v4);
    }

    if (*(a1 + 28))
    {
      esc_seq_deinit(*a1, a1[1], a1[15], a1[16]);
    }

    else
    {
      nuance_pcre_DeInit(a1[15], a1[16]);
      nuance_pcre_ObjClose(a1[15], a1[16]);
    }

    v5 = a1[3];
    if (v5)
    {
      vector_ObjClose(v5);
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t ruleset_ReadBinaryRules(_WORD **a1, uint64_t a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  *v48 = 0;
  v49 = 0;
  v3 = 2288001031;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  *v44 = 0;
  v41 = 0;
  v42 = 0;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, a1[1], &v49) & 0x80000000) != 0)
  {
    return v3;
  }

  v7 = ssftriff_reader_ObjOpenEx(*a1, a1[1], 4, a1[3], a2, a3, "USRT", 1031, v48);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  LODWORD(v8) = 0;
  v9 = 2288001028;
  do
  {
    v10 = ssftriff_reader_OpenChunk(*v48, &v46, &v45, v44);
    if (v10 < 0)
    {
      break;
    }

    if (v46 ^ 0x474E414C | v47)
    {
      if (v46 ^ 0x45505954 | v47)
      {
        if (v46 ^ 0x52455652 | v47)
        {
          if (v46 ^ 0x454C5552 | v47)
          {
            log_OutText(*(v49 + 32), "RETTT", 4, 0, "ruleset_ReadBinaryRules unknown chunk type: '%s'", &v46);
          }

          else
          {
            if (!v8)
            {
              _Gryphon_ReportMissingPCREVersion();
              v10 = v9;
              break;
            }

            v18 = v9;
            v19 = *v44;
            v20 = **v44;
            *v44 += 4;
            v21 = *(v19 + 4);
            *v44 = v19 + 8;
            v45 -= 8;
            v22 = heap_Calloc(*(v49 + 8), v20, 8);
            v10 = PCRE_SerializeAndDecodeBatch(a1[13], a1[14], *v44, v20, v22);
            if (v10 < 0)
            {
              break;
            }

            v23 = *v44 + v21;
            *v44 += v21;
            v24 = v45 - v21;
            v45 -= v21;
            if ((v21 & 3) != 0)
            {
              v25 = 4 - (v21 & 3);
              *v44 = v23 + v25;
              v45 = v24 - v25;
            }

            if (v20)
            {
              v26 = v22;
              while (1)
              {
                *__s = 0;
                StringZ = ssftriff_reader_ReadStringZ(*v48, *v44, v45, 0, 0, __s);
                if ((StringZ & 0x1FFF) != 9)
                {
                  v10 = StringZ;
                  goto LABEL_49;
                }

                v28 = heap_Alloc(*(v49 + 8), (*__s + 1));
                if (!v28)
                {
                  v10 = -2006966262;
                  goto LABEL_49;
                }

                v29 = v28;
                *v28 = 0;
                v10 = ssftriff_reader_ReadStringZ(*v48, *v44, v45, 0, v28, __s);
                if (v10 < 0)
                {
                  heap_Free(*(v49 + 8), v29);
                  goto LABEL_49;
                }

                v30 = *v44 + *__s;
                v43 = v29;
                *v44 = v30;
                v31 = v45 - *__s;
                v45 -= *__s;
                if ((__s[0] & 3) != 0)
                {
                  v32 = 4 - (__s[0] & 3);
                  *v44 = v30 + v32;
                  v45 = v31 - v32;
                }

                PCRE_AttachPattern(a1[13], a1[14], *v26, &v41);
                if (!vector_Add(a1[10], &v41))
                {
                  break;
                }

                PCRE_FreePattern(v41, v42);
                heap_Free(*(v49 + 8), v29);
                ++v26;
                if (!--v20)
                {
                  goto LABEL_49;
                }
              }

              log_OutPublic(*(v49 + 32), "RETTT", 11023, 0);
              v10 = -2006966266;
            }

LABEL_49:
            heap_Free(*(v49 + 8), v22);
            v9 = v18;
          }
        }

        else
        {
          *__s = 0;
          LOWORD(v40) = 0;
          v16 = *v44;
          v8 = **v44;
          *v44 += 2;
          v17 = **v44;
          *v44 = v16 + 4;
          PCRE_Version(a1[13], a1[14], __s, &v40);
          _Gryphon_ReportPCREVersion(v8, *__s, v17, v40);
          if (v8 != *__s)
          {
            v10 = v9;
          }
        }
      }

      else
      {
        __s[0] = 0;
        v40 = 1024;
        v13 = ssftriff_reader_ReadStringZ(*v48, *v44, v45, 0, __s, &v40);
        if (v13 < 0 || !v45)
        {
          goto LABEL_23;
        }

        v40 = 1024;
        v10 = -2006966265;
        if (!a1[8])
        {
          v14 = strlen(__s);
          v15 = heap_Alloc(*(v49 + 8), (v14 + 1));
          a1[8] = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          strcpy(v15, __s);
LABEL_23:
          v10 = v13;
        }
      }
    }

    else
    {
      __s[0] = 0;
      v40 = 1024;
      v10 = ssftriff_reader_ReadStringZ(*v48, *v44, v45, 0, __s, &v40);
      if ((v10 & 0x80000000) == 0 && v45)
      {
        v40 = 1024;
        if (!ruleset_IsLng(a1, __s))
        {
          v11 = *(v49 + 32);
          v12 = 11022;
          goto LABEL_41;
        }

        if (a1[7])
        {
          v11 = *(v49 + 32);
          v12 = 11021;
LABEL_41:
          log_OutPublic(v11, "RETTT", v12, 0);
          v10 = -2006966265;
          goto LABEL_50;
        }

        v33 = strlen(__s);
        v34 = heap_Alloc(*(v49 + 8), (v33 + 1));
        a1[7] = v34;
        if (!v34)
        {
LABEL_44:
          v10 = -2006966262;
          goto LABEL_50;
        }

        strcpy(v34, __s);
      }
    }

LABEL_50:
    v35 = ssftriff_reader_CloseChunk(*v48);
    if (v35 < 0 && v10 > -1)
    {
      v10 = v35;
    }
  }

  while ((v10 & 0x80000000) == 0);
  if ((v10 & 0x1FFF) == 0x14)
  {
    v3 = 0;
  }

  else
  {
    v3 = v10;
  }

  if (*v48)
  {
    v37 = ssftriff_reader_ObjClose(*v48);
    if (v37 >= 0 || v3 <= -1)
    {
      return v3;
    }

    else
    {
      return v37;
    }
  }

  return v3;
}

uint64_t rule_Compile(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  *(a5 + 16) = 1;
  *a6 = PCRE_CompilePatternWithOptions(a1, a2, a4, a5, v21, 256, &v20 + 4, &v20);
  a6[1] = v12;
  PCRE_Adapter2PCREOptions(a1, v10, a5);
  if (*a6)
  {
    return v20;
  }

  v13 = 2288001024;
  log_OutPublic(*(a3 + 32), "RETTT", 11006, "%s%s%s%s%s%d", "regularExpression", a4, "message", v21, "characterPosition", HIDWORD(v20));
  log_OutTraceTuningData(*(a3 + 32), 2, "%s%s %s%s %s%d %s%s %s%d %s%s %s%u", v14, v15, v16, v17, v18, "END");
  return v13;
}

BOOL ruleset_IsLng(void *a1, char *__s)
{
  v6 = 0;
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  return PCRE_Exec(a1[13], a1[14], a1[19], a1[20], __s, v4, 0, 0, 0, &v6) >= 0;
}

uint64_t ruleset_ScanRuleLine(uint64_t a1, const char *a2, const char **a3, uint64_t a4, void *a5)
{
  v5 = 2288001031;
  if (!a2 || !a3 || !a5)
  {
    return v5;
  }

  *a3 = 0;
  *a5 = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  log_OutText(*(a1 + 32), "RETTT", 5, 0, "ruleset_ScanRuleLine: '%s'", a2);
  for (i = a2 + 1; ; ++i)
  {
    v12 = *(i - 1);
    if (v12 != 9 && v12 != 32)
    {
      break;
    }
  }

  if (!*(i - 1))
  {
    v13 = *(a1 + 32);
LABEL_48:
    log_OutPublic(v13, "RETTT", 11026, "%s%s");
    return v5;
  }

  if (v12 == 92 || (v12 - 48) <= 9)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11015, 0, v33);
    return v5;
  }

  *a3 = i;
  v15 = *i;
  v16 = *i == 0;
  if (*i && v15 != v12)
  {
    do
    {
      if (v15 == 92 && i[1])
      {
        ++i;
      }

      v17 = *++i;
      v15 = v17;
      v16 = v17 == 0;
      if (v17)
      {
        v18 = v15 == v12;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
  }

  if (v16)
  {
LABEL_26:
    v13 = *(a1 + 32);
    goto LABEL_48;
  }

  *i = 0;
  for (j = (i + 4); ; ++j)
  {
    v20 = *(j - 3);
    if (v20 > 0x6C)
    {
      switch(v20)
      {
        case 'm':
          *(a4 + 4) = 1;
          continue;
        case 's':
          *(a4 + 8) = 1;
          continue;
        case 'x':
          *(a4 + 12) = 1;
          continue;
      }

      goto LABEL_43;
    }

    if (*(j - 3) <= 0x1Fu)
    {
      if (v20 == 9)
      {
        continue;
      }

      if (!*(j - 3))
      {
        break;
      }

      goto LABEL_43;
    }

    if (v20 == 32)
    {
      continue;
    }

    if (v20 == 105)
    {
      *a4 = 1;
      continue;
    }

    if (v20 == 45)
    {
      break;
    }

LABEL_43:
    log_OutPublic(*(a1 + 32), "RETTT", 11016, "%s%c", "option", *(j - 3));
  }

  if (v20 <= 0x1Fu)
  {
    v13 = *(a1 + 32);
    goto LABEL_48;
  }

  if (*(j - 2) != 45 || *(j - 1) != 62)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11011, "%s%s");
    return v5;
  }

  while (1)
  {
    v22 = *j;
    if (v22 != 9 && v22 != 32)
    {
      break;
    }

    ++j;
  }

  if (!*j)
  {
    v13 = *(a1 + 32);
    goto LABEL_48;
  }

  if (v22 == 34)
  {
    v23 = j + 1;
  }

  else
  {
    v23 = j;
  }

  if (v22 == 34)
  {
    v24 = 34;
  }

  else
  {
    v24 = 32;
  }

  *a5 = v23;
  v25 = *v23;
  v26 = *v23 == 0;
  if (*v23)
  {
    v27 = v24 == v25;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    do
    {
      if (v25 == 92 && v23[1])
      {
        ++v23;
      }

      v29 = *++v23;
      v28 = v29;
      LOBYTE(v25) = v29;
      v26 = v29 == 0;
      if (v29)
      {
        v30 = v24 == v28;
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
  }

  if (v22 != 34 && v26)
  {
    goto LABEL_89;
  }

  if (v26)
  {
    goto LABEL_26;
  }

  *v23 = 0;
  v31 = v23 + 1;
  while (2)
  {
    v32 = *v31;
    if (v32 <= 0x1F)
    {
      if (v32 != 9)
      {
        if (!*v31)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      goto LABEL_84;
    }

    if (v32 == 32)
    {
LABEL_84:
      ++v31;
      continue;
    }

    break;
  }

  if (v32 == 35)
  {
    goto LABEL_89;
  }

LABEL_88:
  log_OutPublic(*(a1 + 32), "RETTT", 11018, "%s%s", "trailingString", v31);
LABEL_89:
  log_OutText(*(a1 + 32), "RETTT", 5, 0, "ruleset_ScanRuleLine:  re = '%s'; tgt = '%s'");
  return 0;
}

uint64_t ruleset_ReadHeader(void *a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  *&v46[1023] = *MEMORY[0x1E69E9840];
  *v44 = 0;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, a1[1], v44) & 0x80000000) != 0)
  {
    return 2288001031;
  }

  if ((ruleset_ReadDataLine(a1, *v44, a2, a3, a4, &__s) & 0x80000000) != 0)
  {
LABEL_8:
    v11 = 11020;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = ruleset_IsSectionHeader(&__s, "header");
    v9 = ruleset_ReadDataLine(a1, *v44, a2, a3, a4, &__s);
    v10 = v9;
    if (v8)
    {
      break;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (ruleset_IsSectionHeader(&__s, 0))
  {
    goto LABEL_14;
  }

  v20 = "RETTT";
  while (2)
  {
    v21 = *v44;
    p_s = &__s;
    log_OutText(*(*v44 + 32), v20, 4, 0, "ruleset_ScanHeaderLine: '%s'", &__s);
    for (i = v46; ; ++i)
    {
      v24 = *p_s;
      if (v24 != 9 && v24 != 32)
      {
        break;
      }

      ++p_s;
    }

    v25 = p_s;
    if (!*p_s)
    {
      v26 = *(v21 + 32);
      v27 = "ruleset_ScanHeaderLine: Blank line";
LABEL_49:
      log_OutPublic(v26, v20, 11026, "%s%s", "message", v27);
      goto LABEL_50;
    }

    while (1)
    {
      if (!v24)
      {
LABEL_41:
        v26 = *(v21 + 32);
        v27 = "ruleset_ScanHeaderLine: Missing separator";
        goto LABEL_49;
      }

      if (v24 == 32)
      {
        break;
      }

      if (v24 == 61)
      {
        *v25 = 0;
        v29 = v25 + 1;
LABEL_45:
        while (1)
        {
          v31 = *v29;
          if (v31 != 9 && v31 != 32)
          {
            break;
          }

          ++v29;
        }

        if (!*v29)
        {
          v26 = *(v21 + 32);
          v27 = "ruleset_ScanHeaderLine: Missing value";
          goto LABEL_49;
        }

        for (j = strlen(v29); ; v29[j] = 0)
        {
          v33 = v29[--j];
          if (v33 != 32 && v33 != 9)
          {
            break;
          }
        }

        log_OutText(*(v21 + 32), v20, 5, 0, "ruleset_ScanHeaderLine:  key = '%s'; val = '%s'", p_s, v29);
        v35 = LH_stricmp(p_s, "language");
        if (v35 || !ruleset_IsLng(a1, v29))
        {
LABEL_65:
          v38 = v20;
          if (!LH_stricmp(p_s, "type"))
          {
            if (a1[8])
            {
              goto LABEL_78;
            }

            v39 = strlen(v29);
            v40 = heap_Calloc(*(*v44 + 8), (v39 + 1), 1);
            a1[8] = v40;
            if (!v40)
            {
              goto LABEL_76;
            }

            if (v39)
            {
              for (k = 0; k != v39; ++k)
              {
                *(a1[8] + k) = ssft_tolower(v29[k]);
              }
            }
          }

          v20 = v38;
          if (LH_stricmp(p_s, "type_out"))
          {
            goto LABEL_50;
          }

          if (!a1[9])
          {
            v42 = strlen(v29);
            v43 = heap_Calloc(*(*v44 + 8), (v42 + 1), 1);
            a1[9] = v43;
            if (v43)
            {
              strcpy(v43, v29);
              goto LABEL_50;
            }

            goto LABEL_76;
          }
        }

        else
        {
          if (!a1[7])
          {
            v36 = strlen(v29);
            v37 = heap_Alloc(*(*v44 + 8), (v36 + 1));
            a1[7] = v37;
            if (v37)
            {
              strcpy(v37, v29);
              goto LABEL_65;
            }

LABEL_76:
            v10 = 2288001034;
            goto LABEL_20;
          }

          log_OutPublic(*(*v44 + 32), "RETTT", 11021, 0);
        }

LABEL_78:
        v10 = 2288001031;
        goto LABEL_20;
      }

      v28 = *++v25;
      LOBYTE(v24) = v28;
      ++i;
    }

    *v25 = 0;
    while (1)
    {
      v30 = *i;
      if (v30 > 0x1F)
      {
        break;
      }

      if (v30 != 9)
      {
        if (!*i)
        {
          goto LABEL_41;
        }

        goto LABEL_75;
      }

LABEL_39:
      ++i;
    }

    if (v30 == 32)
    {
      goto LABEL_39;
    }

    if (v30 == 61)
    {
      v29 = (i + 1);
      goto LABEL_45;
    }

LABEL_75:
    log_OutPublic(*(v21 + 32), v20, 11011, "%s%s", "separator", i);
LABEL_50:
    v10 = ruleset_ReadDataLine(a1, *v44, a2, a3, a4, &__s);
    if ((v10 & 0x80000000) == 0)
    {
      if (ruleset_IsSectionHeader(&__s, 0))
      {
LABEL_14:
        v13 = strlen(&__s);
        v14 = (*a2)--;
        v15 = (*a3)++;
        v16 = *(v14 - 2);
        v17 = v16 == 13;
        if (v16 == 13)
        {
          v18 = v15 + 2;
        }

        else
        {
          v18 = v15 + 1;
        }

        v19 = -2;
        if (!v17)
        {
          v19 = -1;
        }

        *a2 = v14 + v19 - v13;
        *a3 = v18 + v13;
        --*a4;
        break;
      }

      continue;
    }

    break;
  }

LABEL_20:
  if (!a1[7])
  {
    v11 = 11022;
LABEL_9:
    log_OutPublic(*(*v44 + 32), "RETTT", v11, 0);
    return 2288001031;
  }

  return v10;
}

uint64_t ruleset_ReadDataLine(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4, _DWORD *a5, char *__s)
{
  ++*a5;
  for (result = ruleset_ReadLine(a2, a3, a4, __s); (result & 0x80000000) == 0; result = ruleset_ReadLine(a2, a3, a4, __s))
  {
    v17 = 0;
    v13 = strlen(__s);
    v14 = PCRE_Exec(a1[13], a1[14], a1[15], a1[16], __s, v13, 0, 0, 0, &v17);
    result = v17;
    if ((v17 & 0x80000000) != 0)
    {
      break;
    }

    if (v14 < 0)
    {
      v15 = strlen(__s);
      v16 = PCRE_Exec(a1[13], a1[14], a1[17], a1[18], __s, v15, 0, 0, 0, &v17);
      result = v17;
      if ((v17 & 0x80000000) != 0)
      {
        return result;
      }

      if (v16 < 0)
      {
        return 0;
      }
    }

    ++*a5;
  }

  return result;
}

void *ruleset_IsSectionHeader(unsigned __int8 *a1, char *__s)
{
  v3 = *a1;
  if (v3 == 239)
  {
    if (a1[1] != 187)
    {
      v3 = 239;
      goto LABEL_9;
    }

    v4 = 3;
    if (a1[2] != 191)
    {
      v4 = 0;
    }

    a1 += v4;
    v3 = *a1;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_9:
  v5 = (a1 + 1);
  while (v3 == 9 || v3 == 32)
  {
    v6 = *v5++;
    v3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (v3 != 91)
  {
    return 0;
  }

  while (1)
  {
    LODWORD(v7) = *v5;
    if (v7 != 9 && v7 != 32)
    {
      break;
    }

    ++v5;
  }

  if (*v5)
  {
    if (!__s)
    {
      while (1)
      {
        result = memchr("\t ]", v7, 4uLL);
        if (result)
        {
          break;
        }

        v11 = *++v5;
        LOBYTE(v7) = v11;
        if (!v11)
        {
          return result;
        }
      }

      goto LABEL_24;
    }
  }

  else if (!__s)
  {
    return 0;
  }

  v7 = strlen(__s);
  if (strncmp(__s, v5, v7))
  {
    return 0;
  }

  v5 += v7;
  LOBYTE(v7) = *v5;
LABEL_24:
  if (!v7)
  {
    return 0;
  }

  v8 = (v5 + 1);
  do
  {
    if (v7 != 9 && v7 != 32)
    {
      break;
    }

    v9 = *v8++;
    LOBYTE(v7) = v9;
  }

  while (v9);
  return (v7 == 93);
}

uint64_t ruleset_ReadRules(void *a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  *v32 = 0;
  v33 = 0;
  v4 = 2288001031;
  v34 = 0;
  if (!a1)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ((InitRsrcFunction(*a1, a1[1], v32) & 0x80000000) != 0)
  {
    return v4;
  }

  if ((ruleset_ReadDataLine(a1, *v32, a2, a3, a4, __s) & 0x80000000) == 0)
  {
      ;
    }
  }

  DataLine = ruleset_ReadDataLine(a1, *v32, a2, a3, a4, __s);
  if ((DataLine & 0x80000000) != 0)
  {
    if ((DataLine & 0x1FFF) == 0x17)
    {
      return 0;
    }

    else
    {
      return DataLine;
    }
  }

  v4 = 0;
  while (1)
  {
    while (1)
    {
      log_OutTraceTuningData(*(*v32 + 32), 2, "%s%s %s%s %s%d", v10, v11, v12, v13, v14, "BEG");
      v15 = ruleset_ScanRuleLine(*v32, __s, &v36, v37, &v35);
      PCRE_Adapter2PCREOptions(a1[13], a1[14], v37);
      if ((v15 & 0x80000000) == 0)
      {
        break;
      }

      log_OutTraceTuningData(*(*v32 + 32), 2, "%s%s %s%s %s%u", v16, v17, v18, v19, v20, "END");
LABEL_19:
      if (v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v15;
      }

      if ((ruleset_ReadDataLine(a1, *v32, a2, a3, a4, __s) & 0x80000000) != 0)
      {
        return v4;
      }
    }

    v21 = rule_Compile(a1[13], a1[14], *v32, v36, v37, &v33);
    if ((v21 & 0x80000000) != 0)
    {
      v15 = v21;
      _Gryphon_ReportInvalidRule(v36);
      goto LABEL_19;
    }

    v22 = vector_Add(a1[10], &v33);
    v23 = *(*v32 + 32);
    if (!v22)
    {
      break;
    }

    vector_GetSize(a1[10]);
    log_OutTraceTuningData(v23, 2, "%s%s %s%s %s%d %s%s %s%d %s%u", v24, v25, v26, v27, v28, "END");
    if (v33)
    {
      PCRE_FreePattern(v33, v34);
    }

    v29 = ruleset_ReadDataLine(a1, *v32, a2, a3, a4, __s);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }
  }

  log_OutPublic(*(*v32 + 32), "RETTT", 11023, 0);
  PCRE_FreePattern(v33, v34);
  v29 = -2006966266;
LABEL_28:
  if ((v29 & 0x1FFF) == 0x17)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  if (!v4)
  {
    return v30;
  }

  return v4;
}

uint64_t ruleset_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v23 = 0;
  v6 = 2288001031;
  if (a6 && (InitRsrcFunction(a1, a2, &v24) & 0x80000000) == 0)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 160) = 0;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 80) = 0u;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a5;
    *(a6 + 40) = 1;
    v13 = v24[1];
    v21 = xmmword_1F42D5E08;
    v22 = off_1F42D5E18;
    if (vector_ObjOpen(v13, &v21, 8, (a6 + 80)))
    {
      LODWORD(v21) = PCRE_Adapter_Create(1, a6 + 104, a1, a2);
      if ((v21 & 0x80000000) == 0)
      {
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(a3, a4, NullHandle, v15))
        {
          *(a6 + 88) = *(a6 + 104);
        }

        else
        {
          *(a6 + 88) = a3;
          *(a6 + 96) = a4;
        }

        paramc_ParamGetUInt(v24[5], "retttmaxpcreframeblocks", &v23);
        paramc_ParamGetUInt(v24[5], "retttnumframesinblock", &v23);
        LODWORD(v21) = PCRE_ObjOpen(*(a6 + 104), *(a6 + 112), 0);
        if ((v21 & 0x80000000) == 0)
        {
          v16 = (a6 + 128);
          v17 = "^\\s*#.*$";
          v18 = 3;
          while (1)
          {
            *(v16 - 1) = PCRE_CompilePattern(*(a6 + 104), *(a6 + 112), v17, 0, 0, 0, &v21);
            *v16 = v19;
            v6 = v21;
            if ((v21 & 0x80000000) != 0)
            {
              break;
            }

            v17 += 128;
            v16 += 2;
            if (!--v18)
            {
              return v6;
            }
          }
        }
      }

      vector_ObjClose(*(a6 + 80));
      *(a6 + 80) = 0;
      PCRE_ObjClose(*(a6 + 104), *(a6 + 112));
      return v21;
    }

    else
    {
      log_OutPublic(v24[4], "RETTT", 11002, 0);
      return 2288001034;
    }
  }

  return v6;
}

uint64_t rule_CopyParts(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (!*result)
    {
      return 0;
    }

    result = 0;
    if (a3 && *(v3 + 16))
    {
      if ((PCRE_CopyPattern(v4, *(v3 + 8), a3, &v9) & 0x80000000) == 0)
      {
        v7 = strlen(*(v3 + 16));
        v8 = heap_Alloc(a2, (v7 + 1));
        a3[2] = v8;
        if (v8)
        {
          strcpy(v8, *(v3 + 16));
          return 1;
        }

        PCRE_FreePattern(*a3, a3[1]);
      }

      return 0;
    }
  }

  return result;
}

void *rule_FreeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = PCRE_FreePattern(result, v3[1]);
      *v3 = 0;
    }

    v4 = v3[2];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[2] = 0;
    }
  }

  return result;
}

uint64_t ruleset_ObjClose(uint64_t a1)
{
  v1 = 2288001031;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    if (*(a1 + 24))
    {
      ruleset_UnloadRules(a1);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      vector_ObjClose(v3);
      *(a1 + 80) = 0;
    }

    for (i = 0; i != 48; i += 16)
    {
      PCRE_FreePattern(*(a1 + i + 120), *(a1 + i + 128));
    }

    PCRE_ObjClose(*(a1 + 104), *(a1 + 112));
    v1 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0;
  }

  return v1;
}

uint64_t ruleset_UnloadRules(uint64_t a1)
{
  v1 = 2288001031;
  v24 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v24) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(v24 + 32), 3, "%s%s %s%s", v3, v4, v5, v6, v7, "BEG");
    v25 = 0;
    if (*(a1 + 24) && (InitRsrcFunction(*a1, *(a1 + 8), &v25) & 0x80000000) == 0)
    {
      if (vector_Clear(*(a1 + 80)))
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          heap_Free(*(v24 + 8), v18);
          *(a1 + 32) = 0;
        }

        v19 = *(a1 + 56);
        if (v19)
        {
          heap_Free(*(v24 + 8), v19);
          *(a1 + 56) = 0;
        }

        v20 = *(a1 + 64);
        if (v20)
        {
          heap_Free(*(v24 + 8), v20);
          *(a1 + 64) = 0;
        }

        v21 = *(a1 + 72);
        if (v21)
        {
          heap_Free(*(v24 + 8), v21);
          *(a1 + 72) = 0;
        }

        log_OutTraceTuningData(*(v24 + 32), 3, "%s%s %s%u", v13, v14, v15, v16, v17, "END");
        v22 = *(a1 + 24);
        if (v22)
        {
          heap_Free(*(v24 + 8), v22);
          v1 = 0;
          *(a1 + 24) = 0;
          return v1;
        }

        return 0;
      }

      log_OutPublic(*(v25 + 32), "RETTT", 11024, 0);
    }

    log_OutTraceTuningData(*(v24 + 32), 3, "%s%s %s%u", v8, v9, v10, v11, v12, "END");
    return 0;
  }

  return v1;
}

uint64_t ruleset_GetName(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t ruleset_GetAbsName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

BOOL ruleset_GetEnabledForLng(_BOOL8 result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (!*(result + 40))
    {
      return 0;
    }

    result = 0;
    if (a2 && *(v2 + 56))
    {
      __strcpy_chk();
      if (!LH_stricmp("*", *(v2 + 56)))
      {
        return 1;
      }

      v3 = *(v2 + 56);
      if (*v3)
      {
        v4 = 0;
        v5 = 1;
        do
        {
          v3[v4] = __tolower(v3[v4]);
          v4 = v5;
          v3 = *(v2 + 56);
          v6 = strlen(v3) > v5++;
        }

        while (v6);
      }

      if (v9[0])
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9[v7] = __tolower(v9[v7]);
          v7 = v8;
          v6 = strlen(v9) > v8++;
        }

        while (v6);
        v3 = *(v2 + 56);
      }

      if (strstr(v3, v9))
      {
        return 1;
      }

      if (v9[0] == *v3 && v9[1] == v3[1])
      {
        return v3[2] == 42;
      }

      return 0;
    }
  }

  return result;
}

uint64_t ruleset_LoadRules(_WORD **a1, const char *a2, const char *a3, const char *a4, uint64_t a5, int a6)
{
  v34 = a5;
  v33 = a6;
  v6 = 2288001031;
  v32 = 0;
  v31 = 0;
  if (a1 && a5 && a6)
  {
    if (a1[3])
    {
      return 2288001041;
    }

    v13 = a2;
    a1[4] = 0;
    if (!a2 || !*a2)
    {
      v13 = "in-memory RETT";
    }

    if ((InitRsrcFunction(*a1, a1[1], &v32) & 0x80000000) == 0)
    {
      v14 = strlen(v13);
      v15 = heap_Alloc(v32[1], (v14 + 1));
      a1[3] = v15;
      if (v15)
      {
        strcpy(v15, v13);
        if ((paramc_ParamGetStr(v32[5], "__NUAN_alternative_esc_seq__", &v31) & 0x80000000) == 0 && v31 && !strcmp("__NUAN_alternative_esc_seq__", a1[3]))
        {
          *(a1 + 11) = 1;
        }

        if (!a3)
        {
          goto LABEL_19;
        }

        v21 = strlen(a3);
        v22 = heap_Alloc(v32[1], (v21 + 1));
        a1[4] = v22;
        if (v22)
        {
          strcpy(v22, a3);
LABEL_19:
          log_OutTraceTuningData(v32[4], 1, "%s%s %s%s %s%s", v16, v17, v18, v19, v20, "BEG");
          if (!strcmp(a4, "application/x-vocalizer-rettt+bin") || !strcmp(a4, "application/x-vocalizer-rettt+bin;loader=broker"))
          {
            BinaryRules = ruleset_ReadBinaryRules(a1, a5, a6);
          }

          else
          {
            v30 = 0;
            BinaryRules = ruleset_ReadHeader(a1, &v34, &v33, &v30);
            if ((BinaryRules & 0x80000000) == 0)
            {
              BinaryRules = ruleset_ReadRules(a1, &v34, &v33, &v30);
            }
          }

          v6 = BinaryRules;
          v29 = v32[4];
          if ((v6 & 0x80000000) != 0)
          {
            log_OutTraceTuningData(v29, 1, "%s%s %s%u", v24, v25, v26, v27, v28, "END");
            ruleset_UnloadRules(a1);
          }

          else
          {
            log_OutTraceTuningData(v29, 1, "%s%s %s%s %s%s %s%s %s%u", v24, v25, v26, v27, v28, "END");
          }

          return v6;
        }

        log_OutPublic(v32[4], "RETTT", 11002, 0);
        ruleset_UnloadRules(a1);
      }

      else
      {
        log_OutPublic(v32[4], "RETTT", 11002, 0);
      }

      return 2288001034;
    }
  }

  return v6;
}

uint64_t ruleset_Rewrite(uint64_t *a1, const char *a2, uint64_t *a3)
{
  v56 = 0;
  v54 = 0;
  v3 = 2288001031;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, a1[1], &v56);
  if ((inited & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1[3])
  {
    return 2288001041;
  }

  v8 = inited;
  v9 = strlen(a2);
  v10 = heap_Alloc(*(v56 + 8), (v9 + 1));
  __s = v10;
  if (!v10)
  {
    log_OutPublic(*(v56 + 32), "RETTT", 11002, 0);
    return 2288001034;
  }

  strcpy(v10, a2);
  v11 = a1[8];
  if (!v11 || (v12 = __s, v57 = 0, v13 = strlen(__s), esc_seq_tn_strncmp(*a1, a1[1], a1[11], a1[12], __s, v13, &v57)) && !strcmp(v11, "normal"))
  {
    v15 = 0;
  }

  else
  {
    do
    {
      v14 = strlen(v12);
      v58 = esc_seq_tn_seq(*a1, a1[1], a1[11], a1[12], v12, v14);
      v15 = v58 == 0;
      if (!v58)
      {
        break;
      }

      IsMatchingEscTn = ruleset_IsMatchingEscTn(a1, v11, &v58);
      v12 = ++v58;
    }

    while (!IsMatchingEscTn);
  }

  if (log_HasTraceTuningDataSubscriber(*(v56 + 32)))
  {
    v22 = *(v56 + 32);
    if (a1[8])
    {
      log_OutTraceTuningData(v22, 8, "%s%s %s%s %s%s %s%s", v17, v18, v19, v20, v21, "BEG");
    }

    else
    {
      log_OutTraceTuningData(v22, 8, "%s%s %s%s %s%s", v17, v18, v19, v20, v21, "BEG");
    }
  }

  if (v15)
  {
    goto LABEL_37;
  }

  Size = vector_GetSize(a1[10]);
  if (!a1[8])
  {
    v29 = vector_GetSize(a1[10]);
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v28 = 0;
      while (1)
      {
        v32 = v28;
        v28 = __s;
        __s = v32;
        ElemAt = vector_GetElemAt(a1[10], v31, &v54);
        v39 = *(v56 + 32);
        if (!ElemAt)
        {
          break;
        }

        log_OutTraceTuningData(v39, 9, "%s%s %s%d %s%s", v33, v34, v35, v36, v37, "BEG");
        v8 = sub_GsubCompiledRe(a1[2], *v54, *(v54 + 8), *(v54 + 16), v28, &__s);
        log_OutTraceTuningData(*(v56 + 32), 9, "%s%s %s%u %s%s", v40, v41, v42, v43, v44, "END");
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (v30 == ++v31)
        {
          goto LABEL_38;
        }
      }

      log_OutPublic(v39, "RETTT", 11025, 0);
      v3 = 2288001030;
      if (!v28)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v24 = Size;
  if (Size)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = __s;
      __s = v26;
      if (v26)
      {
        heap_Free(*(v56 + 8), v26);
        __s = 0;
      }

      ruleset_RewriteTnRegions(a1, v25++, 0, v27, &__s);
      v26 = v27;
    }

    while (v24 != v25);
    if (v27)
    {
      heap_Free(*(v56 + 8), v27);
    }
  }

  v28 = __s;
  __s = 0;
  ruleset_RewriteTnRegions(a1, 0, 1, v28, &__s);
  if (v28)
  {
    heap_Free(*(v56 + 8), v28);
LABEL_37:
    v28 = 0;
  }

LABEL_38:
  if (__s)
  {
    v50 = strlen(__s) + 1;
    v51 = *(v56 + 8);
    if (*a3)
    {
      v52 = heap_Realloc(v51, *a3, v50);
      if (v52)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v52 = heap_Alloc(v51, v50);
      if (v52)
      {
LABEL_41:
        *a3 = v52;
        strcpy(v52, __s);
        if (strcmp(a2, *a3))
        {
          log_OutEvent(*(v56 + 32), 29, "%s%s", "RULSET_NAME", a1[3]);
        }

LABEL_43:
        v3 = v8;
        if (!v28)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  log_OutPublic(*(v56 + 32), "RETTT", 11002, 0);
  v3 = 2288001034;
  if (v28)
  {
LABEL_47:
    heap_Free(*(v56 + 8), v28);
  }

LABEL_48:
  if (__s)
  {
    heap_Free(*(v56 + 8), __s);
  }

  log_OutTraceTuningData(*(v56 + 32), 8, "%s%s %s%u %s%s", v45, v46, v47, v48, v49, "END");
  return v3;
}

uint64_t ruleset_RewriteTnRegions(uint64_t result, unsigned int a2, int a3, const char *a4, const char **a5)
{
  __s2 = 0;
  v84 = 0;
  v82 = 0;
  if (a4)
  {
    if (a5)
    {
      if (!*a5)
      {
        v9 = result;
        result = InitRsrcFunction(*result, *(result + 8), &v84);
        if ((result & 0x80000000) == 0)
        {
          if (v9[3])
          {
            if (a3 || vector_GetElemAt(v9[10], a2, &v82))
            {
              if (log_HasTraceTuningDataSubscriber(*(v84 + 32)))
              {
                v15 = *(v84 + 32);
                if (a3)
                {
                  log_OutTraceTuningData(v15, 16, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
                }

                else
                {
                  log_OutTraceTuningData(v15, 9, "%s%s %s%d %s%s", v10, v11, v12, v13, v14, "BEG");
                }
              }

              v16 = strlen(a4);
              v17 = heap_Alloc(*(v84 + 8), (v16 + 1));
              *a5 = v17;
              if (v17)
              {
                *v17 = 0;
                v18 = strlen(a4);
                if (v18 >= 1)
                {
                  v19 = 0;
                  v20 = &a4[v18];
                  if (a3)
                  {
                    v21 = 18;
                  }

                  else
                  {
                    v21 = 11;
                  }

                  v80 = v21;
                  v22 = a4;
                  v81 = &a4[v18];
                  do
                  {
                    v23 = strlen(v22 + 1);
                    v24 = esc_seq_tn_seq(*v9, v9[1], v9[11], v9[12], v22 + 1, v23);
                    if (v24)
                    {
                      v25 = v24;
                    }

                    else
                    {
                      v25 = v20;
                    }

                    v26 = v25 - v22;
                    v27 = heap_Alloc(*(v84 + 8), (v25 - v22 + 1));
                    if (!v27)
                    {
                      break;
                    }

                    v28 = v27;
                    memcpy(v27, v22, v26);
                    v28[v26] = 0;
                    v29 = v9[8];
                    v86 = v28;
                    v85 = 0;
                    v30 = strlen(v28);
                    if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v28, v30, &v85))
                    {
                      IsMatchingEscTn = strcmp(v29, "normal") == 0;
                    }

                    else
                    {
                      IsMatchingEscTn = ruleset_IsMatchingEscTn(v9, v29, &v86);
                      if (a3 && IsMatchingEscTn)
                      {
                        v32 = v86;
                        IsMatchingEscTn = 1;
                        goto LABEL_37;
                      }
                    }

                    v32 = v28;
                    if (!a3 && IsMatchingEscTn)
                    {
                      v33 = ruleset_stristr(v28, v9[8]);
                      if (v33)
                      {
                        v34 = strchr(v33, 92);
                        if (v34)
                        {
                          v19 = (v34 + 1 - v28);
                        }

                        else
                        {
                          v19 = 0;
                        }

                        v35 = 0;
                        if (v34)
                        {
                          v32 = v34 + 1;
                        }

                        else
                        {
                          v32 = v28;
                        }
                      }

                      else
                      {
                        v35 = 0;
                        v32 = v28;
                      }

                      goto LABEL_49;
                    }

LABEL_37:
                    v35 = 1;
                    if (a3)
                    {
                      if (IsMatchingEscTn)
                      {
                        v36 = v9[9];
                        if (v36)
                        {
                          if (*v36)
                          {
                            v79 = v19;
                            LOWORD(v86) = 0;
                            v37 = strlen(v28);
                            if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v28, v37, &v86))
                            {
                              v38 = strlen(v32);
                              v39 = heap_Realloc(*(v84 + 8), v32, (v38 + 13));
                              if (!v39)
                              {
                                goto LABEL_76;
                              }

                              v32 = v39;
                              v40 = strlen(v39);
                              memmove(v32 + 12, v32, v40 + 1);
                              *v32 = 1853119515;
                              *(v32 + 4) = 0x5C6C616D726F6E3DLL;
                            }

                            else
                            {
                              v41 = strlen(v9[9]);
                              v42 = strlen(v28);
                              v43 = heap_Realloc(*(v84 + 8), v28, (v41 + v42 + 1));
                              if (!v43)
                              {
                                goto LABEL_76;
                              }

                              v32 = v43;
                              v44 = ruleset_stristr(v43, v9[8]);
                              v45 = strchr(v44, 92);
                              if (v45)
                              {
                                v46 = v45;
                                v47 = strlen(v45);
                                memmove(&v44[v41], v46, v47 + 1);
                                memcpy(v44, v9[9], v41);
                              }
                            }

                            v35 = 1;
                            v28 = v32;
                            v19 = v79;
                          }
                        }
                      }
                    }

LABEL_49:
                    if (log_HasTraceTuningDataSubscriber(*(v84 + 32)))
                    {
                      v53 = *(v84 + 32);
                      if (a3)
                      {
                        log_OutTraceTuningData(v53, 18, "%s%s %s%d %s%d", v48, v49, v50, v51, v52, "FOCUS");
                      }

                      else
                      {
                        log_OutTraceTuningData(v53, 10, "%s%s %s%s %s%d %s%d", v48, v49, v50, v51, v52, "BEG");
                      }
                    }

                    if (v35)
                    {
                      v54 = strlen(v32);
                      v55 = heap_Alloc(*(v84 + 8), (v54 + 1));
                      __s2 = v55;
                      if (!v55)
                      {
                        goto LABEL_76;
                      }

                      v56 = v19;
                      strcpy(v55, v32);
                      v57 = 0;
                    }

                    else
                    {
                      if ((sub_GsubCompiledRe(v9[2], *v82, *(v82 + 8), *(v82 + 16), v32, &__s2) & 0x80000000) != 0 || (v58 = strlen(__s2), (v59 = heap_Alloc(*(v84 + 8), (v19 + v58 + 1))) == 0))
                      {
LABEL_76:
                        heap_Free(*(v84 + 8), v28);
                        break;
                      }

                      v57 = v59;
                      v60 = strncpy(v59, v22, v19);
                      v56 = v19;
                      v60[v19] = 0;
                      strcat(v60, __s2);
                    }

                    heap_Free(*(v84 + 8), v28);
                    v61 = *(v84 + 8);
                    v62 = *a5;
                    v63 = strlen(*a5);
                    if (v57)
                    {
                      v64 = strlen(v57);
                      v65 = heap_Realloc(v61, v62, (v63 + v64 + 1));
                      *a5 = v65;
                      if (!v65)
                      {
                        break;
                      }

                      v66 = v57;
                    }

                    else
                    {
                      v67 = strlen(__s2);
                      v65 = heap_Realloc(v61, v62, (v63 + v67 + 1));
                      *a5 = v65;
                      if (!v65)
                      {
                        break;
                      }

                      v66 = __s2;
                    }

                    strcat(v65, v66);
                    v19 = v56;
                    if (log_HasTraceTuningDataSubscriber(*(v84 + 32)))
                    {
                      log_OutTraceTuningData(*(v84 + 32), v80, "%s%s", v68, v69, v70, v71, v72, "APPEND");
                    }

                    if (__s2)
                    {
                      heap_Free(*(v84 + 8), __s2);
                      __s2 = 0;
                    }

                    if (v57)
                    {
                      heap_Free(*(v84 + 8), v57);
                    }

                    if (!a3)
                    {
                      log_OutTraceTuningData(*(v84 + 32), 10, "%s%s %s%s", v68, v69, v70, v71, v72, "END");
                    }

                    v22 = v25;
                    v20 = v81;
                  }

                  while (v25 < v81);
                }
              }

              result = log_HasTraceTuningDataSubscriber(*(v84 + 32));
              if (result)
              {
                if (a3)
                {
                  v78 = 16;
                }

                else
                {
                  v78 = 9;
                }

                return log_OutTraceTuningData(*(v84 + 32), v78, "%s%s %s%u %s%s", v73, v74, v75, v76, v77, "END");
              }
            }

            else
            {
              return log_OutPublic(*(v84 + 32), "RETTT", 11025, 0);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ruleset_ReadLine(uint64_t a1, uint64_t *a2, unsigned int *a3, char *__s)
{
  v6 = 0;
  v7 = *a3;
  v8 = *a2;
  if (*a3 >= 0x3FF)
  {
    v9 = 1023;
  }

  else
  {
    v9 = v7;
  }

  v10 = v7 - v9;
  while (v9 != v6)
  {
    v11 = *(v8 + v6);
    v12 = v6 + 1;
    __s[v6++] = v11;
    if (v11 == 10)
    {
      LODWORD(v9) = v12;
      v10 = v7 - v12;
      v13 = v8 + v12;
      goto LABEL_9;
    }
  }

  LODWORD(v9) = v9;
  v13 = v8 + v6;
LABEL_9:
  __s[v9] = 0;
  *a3 = v10;
  *a2 = v13;
  if (__s && v9)
  {
    v14 = strlen(__s);
    if (!v14)
    {
      return 0;
    }

    v15 = v14 - 1;
    if (v10 && __s[v15] != 10)
    {
      v16 = 2288001024;
      log_OutPublic(*(a1 + 32), "RETTT", 11008, "%s%u%s%s", "maximumCharacters", 1023, "line", __s);
      return v16;
    }

    if (__s[v15] == 10)
    {
      __s[v15] = 0;
    }

    if (v14 != 1 && __s[v14 - 2] == 13)
    {
      v16 = 0;
      __s[v14 - 2] = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (v10)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11010, 0);
    return 2288001028;
  }

  else
  {
    return 2288001047;
  }

  return v16;
}

uint64_t ruleset_IsMatchingEscTn(uint64_t *a1, const char *a2, char **a3)
{
  v6 = *a3;
  v13 = 0;
  v7 = strlen(v6);
  if (esc_seq_tn_strncmp(*a1, a1[1], a1[11], a1[12], v6, v7, &v13))
  {
    return 0;
  }

  v8 = &v6[v13];
  if (*v8 != 61)
  {
    return 0;
  }

  v9 = (v8 + 1);
  v10 = strlen(a2);
  if (LH_strnicmp(v9, a2, v10))
  {
    return 0;
  }

  v11 = strlen(a2);
  if (*(v9 + v11) != 92)
  {
    return 0;
  }

  *a3 = (v9 + v11 + 1);
  return 1;
}

char *ruleset_stristr(char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    if (*a1 && (v5 = *__s) != 0 && (v6 = strlen(__s), v7 = __tolower(v5), (v8 = *a1) != 0))
    {
      v9 = v6;
      v10 = v7;
      while (__tolower(v8) != v10 || LH_strnicmp(a1, __s, v9))
      {
        v11 = *++a1;
        v8 = v11;
        if (!v11)
        {
          return 0;
        }
      }

      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2147491847;
  v14 = 0;
  v13 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v14) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(v14[1], 32);
    if (!v7)
    {
      log_OutPublic(v14[4], "RETTT", 11002, 0);
      return 2147491850;
    }

    v8 = v7;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *v7 = a1;
    *(v7 + 8) = a2;
    v9 = PCRE_Adapter_Create(1, v7 + 16, a1, a2);
    v10 = v14;
    if ((v9 & 0x80000000) != 0)
    {
      v3 = v9;
    }

    else
    {
      paramc_ParamGetUInt(v14[5], "retttmaxpcreframeblocks", &v13);
      paramc_ParamGetUInt(v14[5], "retttnumframesinblock", &v13);
      v11 = PCRE_ObjOpen(*(v8 + 16), *(v8 + 24), 0);
      if ((v11 & 0x80000000) == 0)
      {
        v3 = 0;
        *a3 = v8;
        return v3;
      }

      v3 = v11;
      v10 = v14;
    }

    heap_Free(v10[1], v8);
  }

  return v3;
}

uint64_t sub_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = PCRE_ObjClose(*(a1 + 16), *(a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      heap_Free(*(v5 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_Substitute(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, const char *a5, int a6, const char **a7)
{
  v104 = *MEMORY[0x1E69E9840];
  v7 = 2147491847;
  v100 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a7)
        {
          v97 = 0;
          v98 = 0;
          v99 = 0;
          inited = InitRsrcFunction(*a1, *(a1 + 8), &v100);
          if ((inited & 0x80000000) == 0)
          {
            v13 = strlen(a5);
            if ((v13 & 0x80000000) != 0)
            {
              log_OutPublic(*(v100 + 4), "RETTT", 11004, "%s%u", "bufferBytes", v13);
              return 2147491849;
            }

            else
            {
              v14 = v100;
              v15 = *(v100 + 1);
              v16 = *(v100 + 4);
              v96[0] = v15;
              v96[1] = v16;
              v98 = v13;
              v92 = a1;
              v93 = v13;
              v17 = *a7;
              if (*a7)
              {
                v91 = a4;
                v90 = a6;
                LODWORD(v99) = strlen(v17);
                v97 = v17;
                v89 = a7;
                *a7 = 0;
                goto LABEL_12;
              }

              LODWORD(v99) = 128;
              v23 = heap_Alloc(v15, 128);
              v97 = v23;
              if (v23)
              {
                v91 = a4;
                v90 = a6;
                v89 = a7;
                bzero(v23, v99);
                v14 = v100;
LABEL_12:
                v82 = 0;
                log_OutTraceTuningData(v14[4], 12, "%s%s", v18, v19, v20, v21, v22, "BEG");
                HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v100 + 4));
                v30 = v93;
                if (!v93 && HasTraceTuningDataSubscriber)
                {
                  log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%d", v25, v26, v27, v28, v29, "BEG");
                  v83 = "END";
                  v84 = 0;
                  v82 = "NOMATCH";
                  log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%s", v31, v32, v33, v34, v35, "RES");
                }

                v36 = 0;
                v37 = -1;
                v38 = -1;
                while (v36 < v30)
                {
                  v83 = "IDXBEG";
                  v84 = v36;
                  log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%d", v25, v26, v27, v28, v29, "BEG");
                  v39 = PCRE_Exec(*(v92 + 16), *(v92 + 24), a2, a3, a5, v30, v36, &v102, 0x1Eu, &inited);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_64;
                  }

                  v45 = v39;
                  if ((v39 & 0x80000000) != 0)
                  {
                    v70 = PCRE_ErrorToLhError(*(v92 + 16), *(v92 + 24), v39);
                    inited = v70;
                    v76 = *(v100 + 4);
                    v85 = "RETC";
                    v86 = v70;
                    v83 = "END";
                    v84 = 0;
                    v82 = "NOMATCH";
                    v77 = "RES";
LABEL_51:
                    log_OutTraceTuningData(v76, 13, "%s%s %s%s %s%u", v71, v72, v73, v74, v75, v77);
                    break;
                  }

                  if (v102 == v38 && v103 == v37)
                  {
                    log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%s", v40, v41, v42, v43, v44, "RES");
                    v83 = "IDXBEG";
                    v84 = (v36 + 1);
                    log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%d", v46, v47, v48, v49, v50, "BEG");
                    v51 = a5[v36];
                    if ((~v51 & 0xC0) != 0)
                    {
                      v52 = 0;
                    }

                    else
                    {
                      v52 = pcre_sub_utf8_table4[v51 & 0x3F];
                    }

                    v53 = PCRE_Exec(*(v92 + 16), *(v92 + 24), a2, a3, a5, v93, (v52 + v36 + 1), &v102, 0x1Eu, &inited);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_64;
                    }

                    v45 = v53;
                    if ((v53 & 0x80000000) != 0)
                    {
                      v78 = PCRE_ErrorToLhError(*(v92 + 16), *(v92 + 24), v53);
                      inited = v78;
                      v76 = *(v100 + 4);
                      v85 = "RETC";
                      v86 = v78;
                      v83 = "RES";
                      v84 = "NOMATCH";
                      v82 = 0;
                      v77 = "END";
                      goto LABEL_51;
                    }
                  }

                  if (log_HasTraceTuningDataSubscriber(*(v100 + 4)))
                  {
                    if (v45)
                    {
                      v59 = 0;
                      do
                      {
                        log_OutTraceTuningData(*(v100 + 4), 14, "%s%d %s%d %s%d", v54, v55, v56, v57, v58, "$");
                        v59 += 2;
                      }

                      while ((v59 | 1u) < 2 * v45);
                    }

                    else
                    {
                      log_OutTraceTuningData(*(v100 + 4), 13, "%s%d %s%s", v54, v55, v56, v57, v58, "IDXBEG");
                    }

                    if (v45)
                    {
                      v60 = v102;
                    }

                    else
                    {
                      v60 = 0;
                    }

                    if (v45)
                    {
                      v61 = v103;
                    }

                    else
                    {
                      v61 = 0;
                    }

                    v87 = "IDXEND";
                    v88 = v61;
                    v85 = "IDXBEG";
                    v86 = v60;
                    v83 = "RES";
                    v84 = "MATCH";
                    v82 = 0;
                    log_OutTraceTuningData(*(v100 + 4), 13, "%s%s %s%s %s%d %s%d", v54, v55, v56, v57, v58, "END");
                  }

                  v62 = HIDWORD(v98);
                  inited = sub_Append(v96, &a5[v36], v102 - v36);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_64;
                  }

                  v63 = log_HasTraceTuningDataSubscriber(*(v100 + 4));
                  v69 = HIDWORD(v98);
                  if (v63)
                  {
                    v82 = (HIDWORD(v98) - v62);
                    v83 = &v97[v62];
                    log_OutTraceTuningData(*(v100 + 4), 15, "%s%.*s", v64, v65, v66, v67, v68, "APPEND");
                    v69 = HIDWORD(v98);
                    LODWORD(v62) = HIDWORD(v98);
                  }

                  inited = sub_AppendSubstitute(v96, v91, a5, &v102, v45);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_64;
                  }

                  _Gryphon_TrackSubstitution(v100, v103 - v102, v69, HIDWORD(v98) - v69);
                  if (log_HasTraceTuningDataSubscriber(*(v100 + 4)))
                  {
                    v82 = (HIDWORD(v98) - v62);
                    v83 = &v97[v62];
                    log_OutTraceTuningData(*(v100 + 4), 15, "%s%.*s", v25, v26, v27, v28, v29, "APPEND");
                  }

                  v30 = v93;
                  v38 = v102;
                  v37 = v103;
                  v36 = v103;
                  if (!v90)
                  {
                    goto LABEL_53;
                  }
                }

                v37 = v36;
LABEL_53:
                v79 = inited;
                if (inited >> 20 == 2213)
                {
                  if ((inited & 0x1FFF) == 0xA)
                  {
                    log_OutPublic(*(v100 + 4), "RETTT", 11002, 0, v81, v82, v83, v84, v85, v86, v87, v88);
                  }

                  else
                  {
                    if ((inited & 0x1FFF) == 0x14)
                    {
                      inited = 0;
LABEL_61:
                      inited = sub_Append(v96, &a5[v37], (v93 - v37 + 1));
                      if ((inited & 0x80000000) != 0)
                      {
LABEL_64:
                        *v89 = v97;
                        log_OutTraceTuningData(*(v100 + 4), 12, "%s%s %s%u %s%s", v40, v41, v42, v43, v44, "END");
                        return inited;
                      }

LABEL_62:
                      if (log_HasTraceTuningDataSubscriber(*(v100 + 4)))
                      {
                        log_OutTraceTuningData(*(v100 + 4), 15, "%s%.*s", v40, v41, v42, v43, v44, "APPEND");
                      }

                      goto LABEL_64;
                    }

                    log_OutPublic(*(v100 + 4), "RETTT", 11027, "%s%x");
                  }

                  v79 = inited;
                }

                if ((v79 & 0x80000000) != 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              log_OutPublic(*(v100 + 4), "RETTT", 11002, 0);
              return 2147491850;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_Append(uint64_t a1, void *__src, size_t __n)
{
  if (a1 && __src)
  {
    v5 = __n;
    if (__n)
    {
      v6 = *(a1 + 28);
      v7 = v6 + __n;
      if (v6 <= (__n ^ 0x7FFFFFFF) && (v7 < 0xF4240 || v7 <= 2 * *(a1 + 24)))
      {
        if (*(a1 + 32) >= v7)
        {
          v13 = *(a1 + 16);
LABEL_21:
          memcpy((v13 + v6), __src, v5);
          v8 = 0;
          *(a1 + 28) += v5;
          return v8;
        }

        if (v7 <= 0x7FFFFF7F)
        {
          v9 = (v7 & 0x7FFFFF80) + 128;
        }

        else
        {
          v9 = 0x7FFFFFFFLL;
        }

        v10 = *(a1 + 16);
        v11 = *a1;
        if (v10)
        {
          v12 = heap_Realloc(v11, v10, v9);
          if (v12)
          {
            v13 = v12;
            bzero((v12 + *(a1 + 32) + 1), (v9 + ~*(a1 + 32)));
LABEL_20:
            *(a1 + 16) = v13;
            *(a1 + 32) = v9;
            v6 = *(a1 + 28);
            goto LABEL_21;
          }
        }

        else
        {
          v13 = heap_Calloc(v11, v9, 1);
          if (v13)
          {
            goto LABEL_20;
          }
        }

        log_OutPublic(*(a1 + 8), "RETTT", 11002, 0);
        return 2147491850;
      }

      log_OutPublic(*(a1 + 8), "RETTT", 11001, "%s%u", "bufferLimitBytes", v7);
      return 2147491849;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11000, 0);
    }
  }

  return v8;
}

uint64_t sub_AppendSubstitute(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t a5)
{
  if (a1 && a2 && a4)
  {
    v8 = a5;
    _Gryphon_ReportSubstitution(a4[1] - *a4, (a3 + *a4), a2);
    v10 = strlen(a2);
    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = &a2[v11];
        v13 = *v12;
        if (v13 == 36)
        {
          break;
        }

        if (v13 == 92)
        {
          __src = 0;
          v14 = v12[1];
          if (v14 <= 0x61)
          {
            if (v14 - 48 < 8)
            {
              v15 = (v12 + 2);
              v16 = v12 + 4;
              v17 = 1;
              LOBYTE(v14) = v14 - 48;
              while (1)
              {
                v18 = *v15;
                if ((*v15 & 0xF8) != 0x30)
                {
                  goto LABEL_15;
                }

                ++v15;
                LOBYTE(v14) = v18 + 8 * v14 - 48;
                if (v17++ >= 2)
                {
                  goto LABEL_14;
                }
              }
            }

            if (v14 == 97)
            {
              LODWORD(v15) = v12 + 2;
              LOBYTE(v14) = 7;
              goto LABEL_15;
            }

            goto LABEL_69;
          }

          if (v12[1] > 0x71u)
          {
            if (v12[1] > 0x75u)
            {
              if (v14 == 118)
              {
                LODWORD(v15) = v12 + 2;
                LOBYTE(v14) = 11;
                goto LABEL_15;
              }

              if (v14 == 120)
              {
                v14 = 0;
                v15 = (v12 + 2);
                v16 = v12 + 4;
                v28 = 1;
                do
                {
                  v29 = v28;
                  v30 = *v15;
                  if (v30 - 48 >= 0xA)
                  {
                    if (v30 - 65 > 0x25 || ((1 << (v30 - 65)) & 0x3F0000003FLL) == 0)
                    {
                      goto LABEL_15;
                    }

                    v32 = 16 * v14 + v30;
                    v33 = v32 - 87;
                    v14 = v32 - 55;
                    if (v30 > 0x60)
                    {
                      v14 = v33;
                    }
                  }

                  else
                  {
                    v14 = (v30 - 48) | (16 * v14);
                  }

                  v28 = 0;
                  ++v15;
                }

                while ((v29 & 1) != 0);
LABEL_14:
                LODWORD(v15) = v16;
                goto LABEL_15;
              }

              goto LABEL_69;
            }

            if (v14 == 114)
            {
              LODWORD(v15) = v12 + 2;
              LOBYTE(v14) = 13;
              goto LABEL_15;
            }

            if (v14 != 116)
            {
LABEL_69:
              LODWORD(v15) = v12 + 2;
              goto LABEL_15;
            }

            LODWORD(v15) = v12 + 2;
            LOBYTE(v14) = 9;
          }

          else if (v12[1] > 0x65u)
          {
            if (v14 == 102)
            {
              LODWORD(v15) = v12 + 2;
              LOBYTE(v14) = 12;
              goto LABEL_15;
            }

            if (v14 != 110)
            {
              goto LABEL_69;
            }

            LODWORD(v15) = v12 + 2;
            LOBYTE(v14) = 10;
          }

          else
          {
            if (v14 == 98)
            {
              LODWORD(v15) = v12 + 2;
              LOBYTE(v14) = 8;
              goto LABEL_15;
            }

            if (v14 != 101)
            {
              goto LABEL_69;
            }

            LODWORD(v15) = v12 + 2;
            LOBYTE(v14) = 27;
          }

LABEL_15:
          LOBYTE(__src) = v14;
          v20 = sub_Append(a1, &__src, 1uLL);
          if ((v20 & 0x80000000) != 0)
          {
            return v20;
          }

          LODWORD(v15) = v15 - a2;
          goto LABEL_41;
        }

        v20 = sub_Append(a1, v12, 1uLL);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        LODWORD(v15) = v11 + 1;
LABEL_41:
        v11 = v15;
        if (v15 >= v10)
        {
          return 0;
        }
      }

      v15 = v11 + 1;
      v21 = a2[v15];
      v22 = v21 - 58;
      if ((v21 - 58) <= 0xF5u)
      {
        if (v21 != 123)
        {
          v27 = a1;
          v26 = 1;
LABEL_40:
          v20 = sub_Append(v27, v12, v26);
          if ((v20 & 0x80000000) != 0)
          {
            return v20;
          }

          goto LABEL_41;
        }

        LODWORD(v15) = v11 + 2;
        v21 = a2[v11 + 2];
      }

      if ((v21 - 48) > 9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v23 = 10 * v23 + (v21 - 48);
          LODWORD(v15) = v15 + 1;
          v21 = a2[v15];
        }

        while ((v21 - 48) < 0xA);
      }

      if (v22 <= 0xF5u)
      {
        if (v21 != 125)
        {
          goto LABEL_41;
        }

        LODWORD(v15) = v15 + 1;
      }

      if (v23 >= v8)
      {
        goto LABEL_41;
      }

      v24 = a4[2 * v23];
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v25 = a4[2 * v23 + 1];
      if (v25 < 0)
      {
        goto LABEL_41;
      }

      v26 = (v25 - v24);
      v12 = (a3 + v24);
      v27 = a1;
      goto LABEL_40;
    }

    return 0;
  }

  else
  {
    v34 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11003, 0, a5);
    }
  }

  return v34;
}

uint64_t PCRE_V10_Adapter_Init(void *a1)
{
  a1[2] = PCRE_V10_ObjOpen;
  a1[3] = PCRE_V10_ObjClose;
  a1[4] = PCRE_V10_ErrorToLhError;
  a1[5] = PCRE_V10_CompilePattern;
  a1[11] = PCRE_V10_Exec;
  a1[8] = PCRE_V10_SerializeAndEncode;
  a1[9] = PCRE_V10_SerializeAndEncodeBatch;
  a1[6] = PCRE_V10_SerializeAndDecode;
  a1[7] = PCRE_V10_SerializeAndDecodeBatch;
  a1[10] = PCRE_V10_SerializeFree;
  a1[12] = &PCRE_V10_OPTIONS_MAP;
  a1[13] = PCRE_V10_GetVersion;
  return 0;
}

uint64_t PCRE_V10_ObjOpen(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 2320506890;
  v6 = heap_Alloc(*(a3 + 8), 32);
  if (v6)
  {
    v7 = v6;
    v8 = pcre2_general_context_create_8(loc_PCRE_V10_private_malloc, loc_PCRE_V10_private_free, *(a3 + 8));
    if (v8)
    {
      v9 = v8;
      pcre2_compile_context_create_8(v8);
      v11 = v10;
      pcre2_match_context_create_8(v9);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v5 = 0;
        *v7 = a3;
        v7[1] = v9;
        v7[2] = v11;
        v7[3] = v12;
        *a1 = v7;
      }
    }
  }

  return v5;
}

uint64_t PCRE_V10_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2320506886;
  }

  v2 = a1[3];
  if (v2)
  {
    pcre2_general_context_free_8(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    pcre2_general_context_free_8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    pcre2_general_context_free_8(v4);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t PCRE_V10_ErrorToLhError(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    return 0;
  }

  result = 2320506887;
  if (a1 <= -38)
  {
    if (a1 > -49)
    {
      switch(a1)
      {
        case -48:
          return 2320506890;
        case -47:
          return 2320514656;
        case -44:
          return 2320514660;
      }

      return 2320514663;
    }

    if (a1 == -55)
    {
      return 2320514663;
    }

    if (a1 == -51)
    {
      return 2320507149;
    }

    if (a1 != -49)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 > -32)
  {
    if (a1 <= -3)
    {
      if (a1 == -31)
      {
        return 2320514662;
      }

      if (a1 == -29)
      {
        return result;
      }

      return 2320514663;
    }

    if (a1 == -2)
    {
      return 2320514658;
    }

    if (a1 != -1)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 == -37)
  {
    return 2320514657;
  }

  if (a1 != -34)
  {
    return 2320514663;
  }

  return result;
}

uint64_t PCRE_V10_CompilePattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v9 = pcre2_compile_8(a2);
  if (!v9)
  {
    pcre2_get_error_message_8(0, a4, a5);
  }

  if (a6)
  {
    *a6 = 0;
  }

  return v9;
}

uint64_t PCRE_V10_Exec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, int a8, int *a9)
{
  v12 = pcre2_match_data_create_from_pattern_8(a2, *(a1 + 8));
  if (v12)
  {
    matched = pcre2_match_8(a2);
    v14 = matched;
    if ((matched & 0x80000000) == 0)
    {
      if (a8 / 3 >= matched)
      {
        v15 = matched;
      }

      else
      {
        v15 = (a8 / 3);
      }

      ovector_pointer_8 = pcre2_get_ovector_pointer_8(v12);
      if (v15 >= 1)
      {
        do
        {
          v17 = *ovector_pointer_8++;
          *a7++ = vmovn_s64(v17);
          --v15;
        }

        while (v15);
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = -1974460406;
    *a9 = -1974460406;
    v14 = 0xFFFFFFFFLL;
  }

  pcre2_match_data_free_8(v12);
  *a9 = v18;
  return v14;
}

uint64_t PCRE_V10_SerializeAndEncode(uint64_t a1, size_t *a2, _DWORD *a3, uint64_t *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v11[0] = a2;
  v6 = pcre2_serialize_encode_8(v11, 1, &v10, &v9, *(a1 + 8));
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v10;
    *a3 = v9;
    *a4 = v7;
  }

  return PCRE_V10_ErrorToLhError(v6);
}

uint64_t PCRE_V10_SerializeAndEncodeBatch(uint64_t a1, size_t **a2, uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  v10 = 0;
  v11 = 0;
  v7 = pcre2_serialize_encode_8(a2, a3, &v11, &v10, *(a1 + 8));
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v11;
    *a4 = v10;
    *a5 = v8;
  }

  return PCRE_V10_ErrorToLhError(v7);
}

uint64_t PCRE_V10_SerializeAndDecode(uint64_t a1, _DWORD *a2, void *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = pcre2_serialize_decode_8(v6, 1u, a2, *(a1 + 8));
  result = PCRE_V10_ErrorToLhError(v4);
  *a3 = v6[0];
  return result;
}

uint64_t PCRE_V10_SerializeAndDecodeBatch(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4)
{
  if (pcre2_serialize_decode_8(a4, a3, a2, *(a1 + 8)) == a3)
  {
    return 0;
  }

  else
  {
    return 2320514662;
  }
}

_WORD *PCRE_V10_GetVersion(_WORD *result, _WORD *a2)
{
  *result = 10;
  *a2 = 32;
  return result;
}

uint64_t PCRE_V10_Adapter_Pattern_Init(void *a1)
{
  a1[2] = PCRE_V10_FreePattern;
  a1[3] = PCRE_V10_GetPatternSize;
  a1[4] = PCRE_V10_CopyPattern;
  return 0;
}

uint64_t PCRE_V10_GetPatternSize(uint64_t a1, uint64_t *a2)
{
  v2 = pcre2_pattern_info_8(a1, 0x16u, a2);

  return PCRE_V10_ErrorToLhError(v2);
}

uint64_t PCRE_Adapter_Create(int a1, uint64_t a2, _WORD *a3, int a4)
{
  v11 = 0;
  inited = InitRsrcFunction(a3, a4, &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = 2320506890;
  v8 = heap_Alloc(*(v11 + 8), 112);
  if (v8)
  {
    v9 = v8;
    if (a1 == 1)
    {
      v7 = PCRE_V10_Adapter_Init(v8);
    }

    else
    {
      v7 = 2320506898;
    }

    *v9 = v11;
    v9[1] = 0;
    *a2 = v9;
    *(a2 + 8) = 56664;
  }

  return v7;
}

uint64_t PCRE_ObjOpen(uint64_t *a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v6 = a1[2];
    v7 = *a1;

    return v6(a1 + 1, a3, v7);
  }

  return result;
}

uint64_t PCRE_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v4 = (*(a1 + 24))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
    return v4;
  }

  return result;
}

uint64_t PCRE_ErrorToLhError(uint64_t a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 32);

    return v6(a3);
  }

  return result;
}

void *PCRE_CompilePattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  return PCRE_CompilePatternWithOptions(a1, a2, a3, v8, a4, a5, a6, a7);
}

void *PCRE_CompilePatternWithOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v15 = safeh_HandleCheck(a1, a2, 56664, 112);
  if (v15 < 0)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  do
  {
    v18 = *(a4 + v16);
    if (v18)
    {
      v18 = *(*(a1 + 96) + v16);
    }

    v17 = v18 | v17;
    v16 += 4;
  }

  while (v16 != 20);
  v19 = heap_Alloc(*(*a1 + 8), 40);
  v20 = v19;
  if (!v19)
  {
LABEL_12:
    v15 = -1974460406;
    goto LABEL_13;
  }

  PCRE_V10_Adapter_Pattern_Init(v19);
  v21 = (*(a1 + 40))(*(a1 + 8), a3, v17, a5, a6, a7);
  if (!v21)
  {
    v20 = 0;
    goto LABEL_12;
  }

  *v20 = *a1;
  v20[1] = v21;
LABEL_13:
  *a8 = v15;
  return v20;
}

uint64_t PCRE_FreePattern(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v3 & 0x80000000) == 0)
  {
    (*(a1 + 16))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
  }

  return v3;
}

uint64_t PCRE_CopyPattern(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v8 = 2320506890;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    v11 = *(a1 + 8);
    *v10 = *a1;
    v12 = (*(a1 + 32))(v11);
    v10[1] = v12;
    if (v12)
    {
      *a3 = v10;
      *(a3 + 8) = 56665;
LABEL_5:
      v8 = v7;
    }
  }

  *a4 = v8;
  return v8;
}

uint64_t PCRE_Exec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, _DWORD *a10)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  return PCRE_ExecWithOptions(a1, a2, a3, a4, a5, a6, a7, v11, a8, a9, a10);
}

uint64_t PCRE_ExecWithOptions(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, _DWORD *a11)
{
  v18 = safeh_HandleCheck(a1, a2, 56664, 112);
  if (v18 < 0 || (v18 = safeh_HandleCheck(a3, a4, 56665, 0), v18 < 0))
  {
    *a11 = v18;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(a8 + v19);
      if (v21)
      {
        v21 = *(a1[12] + v19);
      }

      v20 = v21 | v20;
      v19 += 4;
    }

    while (v19 != 20);
    v22 = a1[11];
    v23 = a1[1];
    v24 = *(a3 + 8);

    return v22(v23, v24, a5, a6, a7, v20, a9, a10, a11);
  }
}

uint64_t PCRE_Adapter2PCREOptions(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 56664, 112) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(result) = 0;
  do
  {
    v7 = *(a3 + v5);
    if (v7)
    {
      v7 = *(*(a1 + 96) + v5);
    }

    result = v7 | result;
    v5 += 4;
  }

  while (v5 != 20);
  return result;
}

uint64_t PCRE_Version(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((v7 & 0x80000000) == 0)
  {
    (*(a1 + 104))(a3, a4);
  }

  return v7;
}

uint64_t PCRE_AttachPattern(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2320506890;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    if (a3)
    {
      *v10 = *a1;
      v10[1] = a3;
      *a4 = v10;
      a4[1] = 56665;
      return v7;
    }
  }

  return v8;
}

uint64_t PCRE_SerializeAndDecodeBatch(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = safeh_HandleCheck(a1, a2, 56664, 112);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 8);

    return v10(v11, a3, a4, a5);
  }

  return result;
}

uint64_t luattt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2711625729;
  }

  result = 0;
  *a2 = &ILuattt;
  return result;
}

uint64_t luattt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2711625735;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v20 = 0;
    v21 = 0;
    if ((InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v21 + 8), 1, 144);
      if (v10)
      {
        v11 = v10;
        v10[2] = 0;
        v12 = v10 + 2;
        *v10 = a3;
        v10[1] = a4;
        v10[8] = 0;
        v13 = v10 + 8;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) == 0)
        {
          v11[9] = *(v20 + 8);
          v15 = *(v21 + 8);
          v18 = xmmword_1C37F9E10;
          v19 = 0;
          if (!vector_ObjOpen(v15, &v18, 1, v13))
          {
            v11 = 0;
            goto LABEL_14;
          }

          Allocator = ooc_utils_createAllocator((v11 + 3), *v11, v11[1]);
          Object = LH_ERROR_to_VERROR(Allocator);
          if ((Object & 0x80000000) == 0)
          {
            v5 = 2711626240;
            if ((luavmldoutil_initialize_lua_vm_from_buffer(*v11, v11[1], (v11 + 3), "TTT_rewrite_process", luattt_log_callback, v12, "TTT_script_set = {}\n\n-- Load a resource\n-- argument: the resource name\n-- return: the identifier\nfunction TTT_resource_load(name)\n    local id = 0\n    for _, info in ipairs(TTT_script_set) do\n        if id < info.id then\n            id = info.id\n        end\n    end\n    id = id + 1\n    local info = {}\n    info.id = id\n    info.func = _G[name]\n    table.insert(TTT_script_set, 1, info)\n    return tostring(id)\nend\n\n-- Unload a resource\n-- argument: the identifier\n-- return: the identifier or an empty string if not present\nfunction TTT_resource_unload(id_str)\n    local id = tonumber(id_str)\n    for pos, info in ipairs(TTT_script_set) do\n        if info.id == id then\n            table.remove(TTT_script_set, pos)\n            return id_str\n        end\n    end\n    return \nend\n\n-- Call the rewrite process of all resources\n-- argument: input text\n-- return: output text\nfunction TTT_rewrite_process(text)\n    local buffer = text\n    for _, info in ipairs(TTT_script_set) do\n        buffer = info.func(buffer)\n    end\n    return buffer\nend\n", 1042) & 0x80000000) != 0 || !*v12)
            {
              goto LABEL_12;
            }

LABEL_14:
            v5 = 0;
            *a5 = v11;
            *(a5 + 2) = 1077;
            return v5;
          }
        }

        v5 = Object;
LABEL_12:
        luattt_pObjClose(v11);
        return v5;
      }

      return 2711625738;
    }
  }

  return v5;
}

uint64_t luattt_ObjClose(void *a1, uint64_t a2)
{
  v2 = a2;
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = luattt_UnloadAllScripts(a1);
    if ((result & 0x80000000) == 0)
    {
      luattt_ProcessEnd(a1, v2);

      return luattt_pObjClose(a1);
    }
  }

  return result;
}

uint64_t luattt_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {

    return luattt_UnloadAllScripts(a1);
  }

  return result;
}

uint64_t luattt_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = &luattt_ResourceTypes_SZ_LUATTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t luattt_ResourceLoad(uint64_t a1, int a2, char *a3, const char *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v7 = 2711625735;
  v28 = 0;
  if (a3 && a7)
  {
    v9 = a6;
    v10 = a5;
    if (a4)
    {
      v14 = a6 != 0;
      if (!a5 && a6)
      {
        return v7;
      }
    }

    else
    {
      if (!a5 || !a6)
      {
        return v7;
      }

      v14 = 1;
    }

    v15 = safeh_HandleCheck(a1, a2, 1077, 144);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v26 = 0;
    v27 = 0;
    *a7 = 0;
    *(a7 + 8) = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v31) & 0x80000000) == 0)
    {
      v32 = 0;
      if (a4 && *a4 && vector_GetElemAt(*(a1 + 64), 0, &v32))
      {
        v16 = 1;
        do
        {
          v17 = *(v32 + 8);
          if (v17)
          {
            if (!strcmp(v17, a4))
            {
              return 2711625752;
            }
          }
        }

        while (vector_GetElemAt(*(a1 + 64), v16++, &v32));
      }

      v19 = !v14;
      if (!v10)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = luattt_DataOpen(v31, a4, &v30, a3, &v29, &v28);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v10 = v29;
        v9 = v28;
      }

      else
      {
        v29 = v10;
        v28 = v9;
      }

      ScriptFromBuffer = LuaVMLDO_LoadScriptFromBuffer(*(a1 + 16), v10, v9);
      v20 = LH_ERROR_to_VERROR(ScriptFromBuffer);
      if ((v20 & 0x80000000) == 0)
      {
        v22 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_load", "TTT_script", 4u, &v26);
        v23 = LH_ERROR_to_VERROR(v22);
        v24 = v23;
        if ((v23 & 0x80000000) != 0)
        {
          v7 = v23;
        }

        else
        {
          v27 = a4;
          log_OutText(*(v31 + 32), "LUATTT", 5, 0, "Loaded resource %s", &v26);
          if (vector_Add(*(a1 + 64), &v26) == 1)
          {
            v7 = v24;
          }

          else
          {
            v7 = 2711625738;
          }

          *a7 = v27;
          *(a7 + 8) = 1108;
        }

        goto LABEL_34;
      }

LABEL_32:
      v7 = v20;
LABEL_34:
      if (v29)
      {
        brk_DataUnmap(*(v31 + 24), v30, v29);
        v29 = 0;
      }

      if (v30)
      {
        brk_DataClose(*(v31 + 24), v30);
      }
    }
  }

  return v7;
}

uint64_t luattt_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v12 = 0;
  v13 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2711626765;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) != 0)
  {
    return 2711625735;
  }

  v7 = safeh_HandleCheck(a3, a4, 1108, 16);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (vector_GetElemAt(*(a1 + 64), 0, &v12))
  {
    v9 = 0;
    while (*(v12 + 1) != a3)
    {
      if (!vector_GetElemAt(*(a1 + 64), ++v9, &v12))
      {
        return v8;
      }
    }

    v11 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v12, 4u, v12);
    v8 = LH_ERROR_to_VERROR(v11);
    if ((v8 & 0x80000000) == 0)
    {
      log_OutText(*(v13 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v12);
      vector_Remove(*(a1 + 64), v9);
    }
  }

  return v8;
}

uint64_t luattt_ProcessStart(_WORD **a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  v6 = a2;
  v14 = 0;
  v8 = 2711625735;
  if ((safeh_HandleCheck(a1, a2, 1077, 144) & 0x80000000) != 0)
  {
    return 2711625736;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v14) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[14] = a3;
    a1[15] = a4;
    do
    {
      v10 = (*(a1[9] + 8))(a3, a4, 538, luattt_ProcessStart_szInput[v9], 0, 0, a1 + 16);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[16] = 0;
    }

    v12 = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 0, a1 + 10);
    if ((v12 & 0x80000000) != 0)
    {
      v8 = v12;
LABEL_14:
      luattt_ProcessEnd(a1, v6);
      return v8;
    }

    v8 = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 1, a1 + 12);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }
  }

  return v8;
}

uint64_t luattt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) == 0)
  {
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v22) & 0x80000000) != 0)
    {
      return 2711625735;
    }

    if (!*(a1 + 80) || !*(a1 + 96))
    {
      v15 = 0;
LABEL_24:
      v8 = 1;
LABEL_25:
      *a5 = v8;
      return v15;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 72) + 144))(*(a1 + 80), *(a1 + 88), &v18 + 4, &v18);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v18;
      if (!v18)
      {
        v15 = 0;
        goto LABEL_25;
      }

      v7 = (*(*(a1 + 72) + 88))(*(a1 + 80), *(a1 + 88), &v21, &v18 + 4);
      if ((v7 & 0x80000000) == 0)
      {
        __s = v21;
        v9 = HIDWORD(v18);
        if (vector_GetSize(*(a1 + 64)))
        {
          v10 = LuaVMLDO_RunFunctionReturningPointerToString(*(a1 + 16), "TTT_rewrite_process", v21, &__s);
          v11 = LH_ERROR_to_VERROR(v10);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_17;
          }

          v9 = strlen(__s);
        }

        if (!v9 || (v11 = (*(*(a1 + 72) + 112))(*(a1 + 96), *(a1 + 104), &v19, v9), (v11 & 0x80000000) == 0) && (memcpy(v19, __s, v9), v11 = (*(*(a1 + 72) + 120))(*(a1 + 96), *(a1 + 104), v9), (v11 & 0x80000000) == 0))
        {
          v12 = (*(*(a1 + 72) + 96))(*(a1 + 80), *(a1 + 88), HIDWORD(v18));
          if ((v12 & 0x80000000) != 0 || !vector_GetSize(*(a1 + 64)))
          {
LABEL_18:
            v14 = (*(*(a1 + 72) + 72))(*(a1 + 96), *(a1 + 104));
            if (v14 >= 0)
            {
              v15 = v12;
            }

            else
            {
              v15 = v14;
            }

            *(a1 + 96) = safeh_GetNullHandle();
            *(a1 + 104) = v16;
            goto LABEL_24;
          }

          v13 = LuaVMLDO_ReleasePointerToString(*(a1 + 16));
          v11 = LH_ERROR_to_VERROR(v13);
        }

LABEL_17:
        v12 = v11;
        goto LABEL_18;
      }
    }
  }

  return v7;
}

uint64_t luattt_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[16], a1[17], NullHandle, v5))
    {
      v6 = (*(a1[9] + 72))(a1[16], a1[17]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[16] = safeh_GetNullHandle();
    a1[17] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[10], a1[11], v8, v9))
    {
      v10 = (*(a1[9] + 72))(a1[10], a1[11]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[10] = safeh_GetNullHandle();
    a1[11] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], v12, v13))
    {
      v14 = (*(a1[9] + 72))(a1[12], a1[13]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v15;
  }

  return v3;
}

uint64_t luattt_pObjClose(uint64_t a1)
{
  v1 = 2711625735;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 72))
    {
      objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    }

    if (*(a1 + 16))
    {
      luavmldoutil_destroy_lua_vm(a1 + 24, (a1 + 16));
    }

    kaldi::nnet1::Component::IsUpdatable((a1 + 24));
    v3 = *(a1 + 64);
    if (v3)
    {
      vector_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t luattt_UnloadAllScripts(uint64_t a1)
{
  i = 2711625735;
  v9 = 0;
  v10 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v10);
    if ((inited & 0x80000000) == 0)
    {
      v4 = inited;
      Size = vector_GetSize(*(a1 + 64));
      if (Size)
      {
        v6 = Size - 1;
        for (i = v4; vector_GetElemAt(*(a1 + 64), v6, &v9); --v6)
        {
          v7 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v9, 4u, v9);
          i = LH_ERROR_to_VERROR(v7);
          if ((i & 0x80000000) != 0)
          {
            break;
          }

          log_OutText(*(v10 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v9);
          vector_Remove(*(a1 + 64), v6);
          if (!v6)
          {
            break;
          }
        }
      }

      else
      {
        return v4;
      }
    }
  }

  return i;
}

uint64_t luattt_DataOpen(uint64_t a1, const char *a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  *v16 = 0;
  bzero(v17, 0x400uLL);
  v12 = brk_DataOpenEx(*(a1 + 24), a2, 1, a3);
  if (strstr(a4, ";loader=broker") && (v12 & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "langcode", v16);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v14 = brokeraux_ComposeBrokerString(a1, a2, 0, 1, *v16, 0, 0, v17, 0x400uLL);
    if (v14 < 0)
    {
      return v14 | 0xA1A02000;
    }

    v12 = brk_DataOpenEx(*(a1 + 24), v17, 0, a3);
  }

  if ((v12 & 0x80000000) == 0)
  {
    return brk_DataMapEx(*(a1 + 24), *a3, 0, a6, a5);
  }

  return v12;
}

uint64_t araparser_loc_getStandardizeRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v16 = 0;
  v15 = -1;
  v5 = (*(*(*(a1 + 24) + 24) + 96))(*(*(a1 + 24) + 8), *(*(a1 + 24) + 16), "fecfg", a2, &v16, &v15, &__c);
  if ((v5 & 0x80000000) == 0 && v15)
  {
    v6 = *v16;
    v7 = strchr(*v16, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      for (i = 0; ; ++i)
      {
        v9 = strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = strlen(v6);
        v12 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v11 + 1));
        if (!v12)
        {
          break;
        }

        v13 = v12;
        strcpy(v12, v6);
        if (i == 1)
        {
          *(a3 + 8) = v13;
        }

        else if (i)
        {
          heap_Free(*(*(a1 + 16) + 8), v13);
        }

        else
        {
          *a3 = v13;
          *(a3 + 16) = strlen(v13);
        }

        v6 = v10 + 1;
        if (!v10)
        {
          return v5;
        }
      }

      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0);
      return 2356158474;
    }
  }

  return v5;
}

uint64_t fe_ara_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  PosparserIGTreesAndDict = 2356158471;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  if (!a5)
  {
    return PosparserIGTreesAndDict;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v31 + 48), "SYNTHSTREAM", &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v31 + 48), "FE_DEPES", &v28);
  v11 = *(v31 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v23 = "SYNTHSTREAM";
LABEL_17:
    objc_ReleaseObject(v11, v23);
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v29);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(*(v31 + 48), "SYNTHSTREAM");
    v11 = *(v31 + 48);
    v23 = "FE_DEPES";
    goto LABEL_17;
  }

  v13 = heap_Calloc(*(v31 + 8), 952, 1);
  if (!v13)
  {
    log_OutPublic(*(v31 + 32), "FE_ARAPARSER", 54000, 0);
    objc_ReleaseObject(*(v31 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v31 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(v31 + 48), "FE_DEPES");
    return 2356158474;
  }

  inited = posparser_Open(v31, (v13 + 24));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v13 + 56) = 0;
  *(v13 + 48) = 0;
  inited = paramc_ParamGetStr(*(v31 + 40), "langcode", &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  __strcpy_chk();
  *(*(v13 + 24) + 243) = 7565168;
  v14 = v31;
  *(v13 + 8) = a4;
  *(v13 + 16) = v14;
  *v13 = a3;
  *(v13 + 32) = *(v30 + 8);
  v15 = v29;
  v16 = *(v13 + 24);
  *(v16 + 24) = *(v29 + 8);
  *(v16 + 8) = *(v15 + 16);
  v17 = v28;
  v18 = *(v13 + 24);
  *(v18 + 56) = *(v28 + 8);
  *(v18 + 40) = *(v17 + 16);
  *a5 = v13;
  *(a5 + 8) = 85954;
  v19 = *(v13 + 24);
  PosparserIGTreesAndDict = getPosparserIGTreesAndDict(*(v13 + 16), *v13, *(v13 + 8), *(v19 + 8), *(v19 + 16), *(v19 + 24), (v19 + 232), (v19 + 216), (v19 + 224), (v19 + 236), v19 + 240, (v13 + 40));
  if ((PosparserIGTreesAndDict & 0x80000000) != 0)
  {
LABEL_21:
    fe_ara_parser_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return PosparserIGTreesAndDict;
  }

  if (!*(v13 + 40))
  {
    return PosparserIGTreesAndDict;
  }

  v20 = *(v31 + 8);
  v21 = *(v13 + 24);
  v25[0] = xmmword_1F42D5E98;
  v25[1] = *off_1F42D5EA8;
  v26 = off_1F42D5EB8;
  v22 = ssftmap_ObjOpen(v20, 0, v25, (v21 + 256));
  if ((v22 & 0x80000000) != 0)
  {
    PosparserIGTreesAndDict = v22;
    goto LABEL_21;
  }

  PosparserIGTreesAndDict = posparser_getPosMap(*(v13 + 24));
  if ((PosparserIGTreesAndDict & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return PosparserIGTreesAndDict;
}

uint64_t fe_ara_parser_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (a1)
  {
    if (*(a1 + 40) && (ssftmap_ObjClose(*(*(a1 + 24) + 256)) & 0x80000000) == 0)
    {
      v4 = *(a1 + 24);
      if (*(v4 + 232) == 1)
      {
        freePosparserIGTrees(*(a1 + 16), (v4 + 216), (v4 + 224));
      }
    }

    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    posparser_Close(*(a1 + 24));
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_ara_parser_ObjReopen(uint64_t a1, int a2)
{
  v7 = 0;
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (a1)
  {
    if (*(a1 + 40) != 1 || (result = ssftmap_Clear(*(*(a1 + 24) + 256)), (result & 0x80000000) == 0) && (result = posparser_getPosMap(*(a1 + 24)), (result & 0x80000000) == 0) && ((v4 = *(a1 + 24), *(v4 + 232) != 1) || (result = freePosparserIGTrees(*(a1 + 16), (v4 + 216), (v4 + 224)), (result & 0x80000000) == 0)))
    {
      result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v7);
      if ((result & 0x80000000) == 0)
      {
        __strcpy_chk();
        *(*(a1 + 24) + 243) = 7565168;
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
        v6[58] = 0;
        v6 += 58;
        return getPosparserIGTreesAndDict(v5, *a1, *(a1 + 8), *(v6 - 28), *(v6 - 27), *(v6 - 26), v6, v6 - 2, v6 - 1, v6 + 1, (v6 + 2), (a1 + 40));
      }
    }
  }

  return result;
}

uint64_t fe_ara_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = 2356158472;
  *&__c[1] = -1;
  v8 = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((v8 & 0x80000000) != 0)
  {
    return v7;
  }

  if (!*(a1 + 40))
  {
    return v8;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  StandardizeRule = posparser_ProcessStart(*(a1 + 24));
  if ((StandardizeRule & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  *&__c[1] = -1;
  v8 = (*(*(*(a1 + 24) + 24) + 96))(*(*(a1 + 24) + 8), *(*(a1 + 24) + 16), "fecfg", "araparsernumstandardize", &__c[3], &__c[1], __c);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!*&__c[1])
  {
    v13 = *(a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = **&__c[3];
  v11 = strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
    v10 = **&__c[3];
  }

  v12 = atoi(v10);
  v13 = v12;
  *(a1 + 56) = v12;
  if (v12)
  {
LABEL_12:
    v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, (24 * v13) | 1);
    *(a1 + 48) = v14;
    if (!v14)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0);
      v7 = 2356158474;
      goto LABEL_20;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_17;
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      v20[7] = 0;
      *(&v20[5] + 1) = 0;
      strcpy(v20, "araparserstandardize");
      LH_itoa(v16, v18, 0xAu);
      __strcat_chk();
      StandardizeRule = araparser_loc_getStandardizeRule(a1, v20, *(a1 + 48) + v15);
      if ((StandardizeRule & 0x80000000) != 0)
      {
        break;
      }

      ++v16;
      v15 += 24;
      if (v16 >= *(a1 + 56))
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v7 = StandardizeRule;
LABEL_20:
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 32));
    return v7;
  }

LABEL_17:
  synstrmaux_InitStreamOpener(a1 + 64, *(*(a1 + 16) + 32), "FE_ARAPARSER");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 32), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  return v7;
}

uint64_t fe_ara_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __s = 0;
  v60 = 0;
  __n = 0;
  v58 = 0;
  v9 = 2356158474;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v10 = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((v10 & 0x80000000) != 0)
  {
    return 2356158472;
  }

  *a5 = 1;
  if (!*(a1 + 40))
  {
    return v10;
  }

  __src = 0;
  v10 = (*(*(a1 + 32) + 88))(*(a1 + 888), *(a1 + 896), &v60, &__n + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = HIDWORD(__n);
  v12 = (*(*(a1 + 32) + 144))(*(a1 + 904), *(a1 + 912), &v55 + 4, &v55);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (HIDWORD(__n))
  {
    v10 = (*(*(a1 + 32) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n);
    if ((v10 & 0x80000000) == 0)
    {
      v13 = __n;
      v56 = __n >> 5;
      v14 = heap_Alloc(*(*(a1 + 16) + 8), __n);
      v15 = v14;
      v53 = v14;
      if (!v14)
      {
        goto LABEL_69;
      }

      memcpy(v14, __src, __n);
      log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sentence %s", v60);
      if (v56)
      {
        v16 = 0;
        v17 = (v15 + 12);
        while (1)
        {
          v18 = *v17;
          v17 += 8;
          if (v18 != *(v15 + 3))
          {
            break;
          }

          if (v56 == ++v16)
          {
            v19 = v56;
            goto LABEL_30;
          }
        }

        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

LABEL_30:
      v22 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v56);
      if (v22)
      {
        v23 = v22;
        v24 = &v15[32 * v19];
        v25 = v56;
        if (v56 != v19)
        {
          v26 = 0;
          v27 = (v24 + 4);
          do
          {
            *(v22 + 4 * v26) = *v27;
            *v27 = v26;
            v27 += 8;
            ++v26;
          }

          while ((v25 - v19) != v26);
        }

        marker_sort(v24, v25 - v19);
        if (v56 != v19)
        {
          v28 = (v56 - v19);
          v29 = (v24 + 4);
          do
          {
            *v29 = *(v23 + 4 * *v29);
            v29 += 8;
            --v28;
          }

          while (v28);
        }

        heap_Free(*(*(a1 + 16) + 8), v23);
        v30 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(__n) + 1));
        __s = v30;
        if (v30)
        {
          v31 = strcpy(v30, v60);
          log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing This Sentence %s", v31);
          araParser_SanitizeSentence(a1, &__s, &__n + 1, &v53, &v56);
          v32 = __s;
          log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sanitized Sentence %s", __s);
          if (!*(a1 + 56))
          {
            v15 = 0;
LABEL_45:
            v36 = v53;
            v37 = posparser_ExtractWords(*(a1 + 24), v53, v56, v32, HIDWORD(__n), &v52, &v51);
            if ((v37 & 0x80000000) == 0)
            {
              if (*(a1 + 56))
              {
                araParser_setStandardizedWords(v52, v51, v32, v15);
                if (v15)
                {
                  heap_Free(*(*(a1 + 16) + 8), v15);
                  v15 = 0;
                  v58 = 0;
                }
              }

              v38 = *(a1 + 24);
              if (!*(v38 + 184))
              {
                goto LABEL_52;
              }

              v37 = posparser_applyEmbeddedRules(v38, v52, v51, v32, HIDWORD(__n));
              if ((v37 & 0x80000000) == 0)
              {
                v38 = *(a1 + 24);
LABEL_52:
                if (*(v38 + 192) != 1)
                {
                  goto LABEL_55;
                }

                *(v38 + 210) = 50;
                v39 = heap_Calloc(*(*(a1 + 16) + 8), 1, 306);
                v40 = *(a1 + 24);
                *(v40 + 200) = v39;
                if (v39)
                {
                  *(v40 + 208) = 0;
                  bzero(v39, 6 * *(v40 + 210));
LABEL_55:
                  v37 = araParser_NormalizeSentence(a1, &__s, &__n + 1, v36, v56, v52, v51);
                  if ((v37 & 0x80000000) == 0)
                  {
                    v41 = *(a1 + 24);
                    if (*(v41 + 192) == 1)
                    {
                      v42 = *(v41 + 208);
                      if (v42)
                      {
                        log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Identified %d Diacritics", v42);
                        v43 = *(a1 + 24);
                        if (*(v43 + 208))
                        {
                          v44 = 0;
                          v45 = 0;
                          do
                          {
                            log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "(%d,%s)", *(*(v43 + 200) + v44), (*(v43 + 200) + v44 + 2));
                            ++v45;
                            v43 = *(a1 + 24);
                            v44 += 6;
                          }

                          while (v45 < *(v43 + 208));
                        }
                      }
                    }

                    v46 = __s;
                    log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Normalized Sentence %s", __s);
                    v47 = araParser_checkIfIsolatedWord(a1, v52, v51, v46);
                    v37 = posparser_Process(*(a1 + 24), a3, a4, v52, v51, v47, 0, &__s, &v53, &v56);
                    if ((v37 & 0x80000000) == 0)
                    {
                      log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Final Sentence %s", __s);
                      v48 = strlen(__s);
                      LODWORD(__n) = 32 * v56;
                      HIDWORD(__n) = v48 + 1;
                      v37 = (*(*(a1 + 32) + 104))(*(a1 + 920), *(a1 + 928), __s);
                      if ((v37 & 0x80000000) == 0)
                      {
                        v37 = (*(*(a1 + 32) + 104))(*(a1 + 936), *(a1 + 944), v53, __n);
                        if ((v37 & 0x80000000) == 0)
                        {
                          v37 = (*(*(a1 + 32) + 96))(*(a1 + 888), *(a1 + 896), v11);
                          if ((v37 & 0x80000000) == 0)
                          {
                            v37 = (*(*(a1 + 32) + 96))(*(a1 + 904), *(a1 + 912), v13);
                            if ((v37 & 0x80000000) == 0)
                            {
                              v37 = (*(*(*(a1 + 24) + 56) + 112))(*(*(a1 + 24) + 40), *(*(a1 + 24) + 48), &v50, 0);
                              if ((v37 & 0x80000000) == 0)
                              {
                                v50 += HIDWORD(__n) - v11;
                                v37 = (*(*(*(a1 + 24) + 56) + 104))(*(*(a1 + 24) + 40), *(*(a1 + 24) + 48));
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_68;
                }

LABEL_69:
                log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0);
                goto LABEL_70;
              }
            }

LABEL_68:
            v9 = v37;
            goto LABEL_70;
          }

          v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(__n) + 1));
          v58 = v33;
          if (v33)
          {
            strcpy(v33, v32);
            araParser_ApplyStandardizations(a1, &v58);
            v15 = v58;
            log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Got Standardized Sentence     %s", v58);
            goto LABEL_45;
          }
        }

        v34 = *(*(a1 + 16) + 32);
        v35 = 54000;
      }

      else
      {
        v34 = *(*(a1 + 16) + 32);
        v35 = 30000;
      }

      log_OutPublic(v34, "FE_ARAPARSER", v35, 0);
      v15 = 0;
LABEL_70:
      if (v53)
      {
        heap_Free(*(*(a1 + 16) + 8), v53);
        v53 = 0;
      }

      posparser_FreeWords(*(a1 + 24), v52, v51);
      v52 = 0;
      if (__s)
      {
        heap_Free(*(*(a1 + 16) + 8), __s);
        __s = 0;
      }

      if (v15)
      {
        heap_Free(*(*(a1 + 16) + 8), v15);
      }

      v49 = *(*(a1 + 24) + 200);
      if (v49)
      {
        heap_Free(*(*(a1 + 16) + 8), v49);
        *(*(a1 + 24) + 200) = 0;
      }

      return v9;
    }

    return v10;
  }

  v20 = v55;
  if (v55)
  {
    if (HIDWORD(v55))
    {
      v10 = (*(*(a1 + 32) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v10 = (*(*(a1 + 32) + 104))(*(a1 + 936), *(a1 + 944), __src, __n);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v12 = (*(*(a1 + 32) + 96))(*(a1 + 904), *(a1 + 912), __n);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v20 = v55;
    }

    if (!v20)
    {
      return v12;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 32));
  }

  v53 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", &v53) & 0x80000000) != 0 || !v53 || !*v53)
  {
    *a5 = 0;
  }

  return v12;
}

size_t araParser_SanitizeSentence(uint64_t a1, char **a2, _DWORD *a3, uint64_t *a4, unsigned __int16 *a5)
{
  __s = *a2;
  v106 = 0;
  v105 = *a4;
  v104 = 0;
  v7 = strlen(__s);
  if (!v7)
  {
    goto LABEL_175;
  }

  v8 = 0;
  v9 = v7;
  v10 = v7;
  do
  {
    if (*a5 < 2u)
    {
      goto LABEL_24;
    }

    v11 = 1;
    v12 = v105;
    v13 = 64;
    do
    {
      v14 = v11;
      v15 = v12 + 32 * v11;
      if (*v15 == 21 && (v16 = *(v15 + 24)) != 0 && (v17 = LH_stricmp(v16, "spell"), v12 = v105, !v17) && ((v20 = *(v105 + 12), v21 = *(v105 + 32 * v14 + 12) - v20, v21 == v8) || v21 == (v8 + 1)))
      {
        v22 = v13;
        v23 = v14;
        do
        {
          if (++v23 >= *a5)
          {
            v26 = v10;
            goto LABEL_22;
          }

          v24 = *(v105 + v22);
          v22 += 32;
        }

        while (v24 != 21);
        v25 = (v105 + 32 * v23);
        v26 = v10;
        if (*v25 == 21)
        {
          v26 = v25[3] - v20;
        }

LABEL_22:
        v18 = v8 == v26;
        v8 = v26;
      }

      else
      {
        v18 = 1;
      }

      if (*(v12 + 32 * v14 + 12) - *(v12 + 12) > v8)
      {
        break;
      }

      v11 = v14 + 1;
      v19 = !v18;
      v13 += 32;
      if (v14 + 1 >= *a5)
      {
        v19 = 1;
      }
    }

    while ((v19 & 1) == 0);
    if (v18)
    {
LABEL_24:
      v27 = v8;
      v28 = &__s[v8];
      if (*v28 == 32)
      {
        v29 = v8;
        v30 = v8 + 1;
        if (v30 >= v9)
        {
          goto LABEL_43;
        }

        if (__s[v30] != 32)
        {
          goto LABEL_43;
        }

        v31 = *a5;
        if (v31 < 2)
        {
          goto LABEL_43;
        }

        v32 = *(v105 + 12);
        v33 = (v105 + 44);
        v34 = 2;
        do
        {
          if (*(v33 - 3) == 21)
          {
            v35 = *v33 - v32;
            v37 = v35 != v8 && v35 != (v8 + 1);
          }

          else
          {
            v35 = *v33 - v32;
            v37 = 1;
          }

          if (v35 > v8)
          {
            break;
          }

          v54 = v34 >= v31;
          v38 = !v37;
          v33 += 8;
          ++v34;
          if (v54)
          {
            v38 = 1;
          }
        }

        while ((v38 & 1) == 0);
        if (v37)
        {
LABEL_43:
          v39 = v8;
          if (v8 >= v10)
          {
            goto LABEL_88;
          }

          while (__s[v27] == 32)
          {
            if (v10 == ++v27)
            {
              v39 = v10;
              goto LABEL_86;
            }
          }

          v39 = v27;
LABEL_86:
          v29 = v39;
          if (!v8 || v30 != v39)
          {
LABEL_88:
            result = posparserGrowStr(*(a1 + 24), &__s, (v10 + 1), &v106, 0);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_159;
            }

            memmove(&__s[v30], &__s[v39], (v9 - v29));
            v61 = v29 - v30;
            __s[(v9 - (v29 - v30))] = 0;
            v10 = strlen(__s);
            v62 = *a5;
            v63 = v105;
            if (v62 >= 2)
            {
              v64 = *(v105 + 12);
              v65 = (v105 + 44);
              v66 = v62 - 1;
              while (1)
              {
                v67 = (*v65 - v64);
                v68 = v67 <= v30 || v67 >= v29;
                v69 = v64 + v30;
                if (!v68)
                {
                  goto LABEL_98;
                }

                if (v67 >= v29)
                {
                  break;
                }

LABEL_99:
                v65 += 8;
                if (!--v66)
                {
                  goto LABEL_100;
                }
              }

              v69 = *v65 - v61;
LABEL_98:
              *v65 = v69;
              goto LABEL_99;
            }

LABEL_100:
            *(v63 + 16) -= v61;
          }

LABEL_110:
          ++v8;
          goto LABEL_111;
        }
      }

      if (!isPunc_0(*(a1 + 24), v28))
      {
        goto LABEL_110;
      }

      v40 = *a5;
      if (v40 < 2)
      {
        v57 = inSMSMode(v8, v105, v40);
        if (!v8)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v41 = v105 + 32;
        v42 = 2;
        for (i = 1; i < v40; ++i)
        {
          v44 = (v105 + 32 * i);
          if (*v44 == 34)
          {
            v45 = v44[3];
            v46 = *(v105 + 12);
            if (v45 - v46 <= v8)
            {
              v47 = v41;
              v48 = v42;
              v49 = v41;
              do
              {
                v51 = *v49;
                v49 += 8;
                v50 = v51;
                if (v51 == 21 || v50 == 3)
                {
                  if (v47[3] - v46 > v8 || v40 == v48)
                  {
LABEL_72:
                    v55 = 0;
                    goto LABEL_73;
                  }
                }

                else if (v40 == v48)
                {
                  goto LABEL_72;
                }

                v54 = v50 == 21 || v48++ >= v40;
                v47 = v49;
              }

              while (!v54);
            }
          }

          v55 = 1;
          ++v42;
          v41 += 32;
        }

LABEL_73:
        if (v8)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = inSMSMode(v8, v105, v40);
        if ((v56 & 1) == 0)
        {
          if (!v55)
          {
            goto LABEL_110;
          }

          goto LABEL_103;
        }
      }

      v58 = v8 - 1;
      v59 = __s[v58];
      if (v59 != 32)
      {
        if (v57)
        {
          if (v57 != 1)
          {
            goto LABEL_103;
          }

          if (isSMSPunc(*(a1 + 24), &__s[v58]))
          {
            v57 = 1;
            goto LABEL_103;
          }

          LOBYTE(v59) = __s[v58];
        }

        if (!isDigit(v59))
        {
          v73 = v8 + 1;
          if (v73 == v9)
          {
            if (v8 < 2u)
            {
              goto LABEL_103;
            }

            v74 = __s;
          }

          else
          {
            if (v73 >= v9)
            {
              goto LABEL_103;
            }

            if (v8 < 2u)
            {
              goto LABEL_103;
            }

            v74 = __s;
            if (__s[v73] != 32)
            {
              goto LABEL_103;
            }
          }

          v82 = &v74[v8];
          if (*(v82 - 2) != 194 || *(v82 - 1) != 167)
          {
            result = posparserGrowStr(*(a1 + 24), &__s, (v9 + 1), &v106, 0);
            if ((result & 0x80000000) != 0 || (result = posparserInsertWordMarker(*(a1 + 24), &v105, a5, v8, 1, __s, &v104), (result & 0x80000000) != 0))
            {
LABEL_159:
              v89 = __s;
              goto LABEL_176;
            }

            memmove(&__s[v73], &__s[v8], (v9 - v8));
            __s[v9 + 1] = 0;
            v76 = strlen(__s);
            __s[v8] = 32;
            v83 = *a5;
            v84 = v105;
            if (v83 >= 2)
            {
              v85 = (v105 + 44);
              v86 = v104 - 1;
              v87 = v83 - 1;
              do
              {
                if (v86 && v8 <= (*v85 - *(v84 + 12)))
                {
                  ++*v85;
                }

                v85 += 8;
                --v86;
                --v87;
              }

              while (v87);
            }

            ++*(v84 + 16);
            --v8;
LABEL_143:
            v10 = v76;
            goto LABEL_111;
          }
        }
      }

LABEL_103:
      v70 = v8 + 1;
      v71 = v9 - v70;
      if (v9 <= v70)
      {
        goto LABEL_110;
      }

      if (v57 == 1)
      {
        if (isSMSPunc(*(a1 + 24), &__s[v70]))
        {
          goto LABEL_110;
        }
      }

      else if (v57)
      {
        goto LABEL_110;
      }

      v72 = __s[v70];
      if (v72 == 32 || isDigit(v72) || v8 && __s[v8 - 1] != 32)
      {
        goto LABEL_110;
      }

      v75 = v9 + 1;
      result = posparserGrowStr(*(a1 + 24), &__s, v75, &v106, 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      result = posparserInsertWordMarker(*(a1 + 24), &v105, a5, (v8 + 1), 1, __s, &v104);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      memmove(&__s[v8 + 2], &__s[v70], v71);
      __s[v75] = 0;
      v76 = strlen(__s);
      __s[v70] = 32;
      v77 = *a5;
      v78 = v105;
      if (v77 >= 2)
      {
        v79 = (v105 + 44);
        v80 = v104 - 1;
        v81 = v77 - 1;
        do
        {
          if (v80 && v8 < (*v79 - *(v78 + 12)))
          {
            ++*v79;
          }

          v79 += 8;
          --v80;
          --v81;
        }

        while (v81);
      }

      ++*(v78 + 16);
      if (v8)
      {
        v8 = v8 - 1;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_143;
    }

LABEL_111:
    v9 = v10;
  }

  while (v10 > v8);
  if (!v10)
  {
    goto LABEL_175;
  }

  v88 = &__s[v10];
  if (*(v88 - 1) == 32 || v10 >= 3u && *(v88 - 3) == 194 && *(v88 - 2) == 167 && isPunc_0(*(a1 + 24), v88 - 1))
  {
LABEL_152:
    v90 = v10 - 1;
    if (v10 != 1)
    {
      v91 = &__s[v90];
      if (*v91 == 32)
      {
        v92 = 0;
        while (1)
        {
          v93 = v90;
          if (*(v91 - 1) != 32)
          {
            break;
          }

          *v91 = 0;
          --v90;
          if (v93 == 1)
          {
            LOWORD(v10) = 1;
LABEL_164:
            v94 = *a5;
            if (v94 < 2)
            {
              goto LABEL_175;
            }

            v95 = *(v105 + 12);
            v96 = (v105 + 44);
            v97 = v94 - 1;
            while (2)
            {
              v98 = (*v96 - v95);
              v99 = v98 <= v10 || v98 >= v8;
              v100 = v95 + v10;
              if (v99)
              {
                if (v98 >= v8)
                {
                  v100 = v10 - v8 + *v96;
                  goto LABEL_173;
                }
              }

              else
              {
LABEL_173:
                *v96 = v100;
              }

              v96 += 8;
              if (!--v97)
              {
                goto LABEL_175;
              }

              continue;
            }
          }

          ++v92;
          v91 = &__s[v90];
          LOWORD(v10) = v93;
          if (*v91 != 32)
          {
            LOWORD(v10) = v93;
            goto LABEL_164;
          }
        }

        if (v92)
        {
          goto LABEL_164;
        }
      }
    }

LABEL_175:
    v89 = __s;
    result = strlen(__s);
    *a3 = result;
    goto LABEL_176;
  }

  result = posparserGrowStr(*(a1 + 24), &__s, (v10 + 1), &v106, 0);
  v89 = __s;
  if ((result & 0x80000000) == 0)
  {
    __s[v10] = 32;
    __s[v10 + 1] = 0;
    LOWORD(v10) = strlen(__s);
    if (v10)
    {
      goto LABEL_152;
    }

    goto LABEL_175;
  }

LABEL_176:
  *a4 = v105;
  *a2 = v89;
  return result;
}

char *araParser_ApplyStandardizations(char *result, char **a2)
{
  v3 = *a2;
  v4 = *(result + 28);
  if (*(result + 28))
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 6);
    do
    {
      result = strstr(v3, *(v7 + 24 * v6));
      if (result)
      {
        v8 = result;
        do
        {
          memcpy(v8, *(v7 + 24 * v6 + 8), *(v7 + 24 * v6 + 16));
          v7 = *(v5 + 6);
          result = strstr(v8, *(v7 + 24 * v6));
          v8 = result;
        }

        while (result);
        v4 = *(v5 + 28);
      }

      ++v6;
    }

    while (v6 < v4);
  }

  *a2 = v3;
  return result;
}

void *araParser_setStandardizedWords(void *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = result + 92;
    do
    {
      if (!*(v7 - 1) && !*v7)
      {
        v8 = *(v7 - 42);
        v9 = *(v7 - 41) - v8;
        result = strncmp((a3 + v8), (a4 + v8), v9);
        if (result)
        {
          result = memcpy((a3 + v8), (a4 + v8), v9);
        }
      }

      v7 += 26;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t araParser_NormalizeSentence(uint64_t a1, const char **a2, _DWORD *a3, _DWORD *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v10 = *a2;
  v41 = 0;
  v11 = strlen(v10);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = v11;
    if (a7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a7;
    }

    v36 = v15;
    v16 = v11;
    while (1)
    {
      if (a7)
      {
        v17 = (a6 + 92);
        v18 = a7;
        while (*(v17 - 42) > v13 || *(v17 - 41) <= v13)
        {
          v17 += 26;
          if (!--v18)
          {
            goto LABEL_15;
          }
        }

        if (!*(v17 - 1) && !*(v17 - 20) && !*v17)
        {
          break;
        }
      }

LABEL_15:
      v13 += Utf8_LengthInBytes(&v10[v13], 1);
LABEL_16:
      v12 = v13;
      v14 = v16;
      if (v13 >= v16)
      {
        goto LABEL_42;
      }
    }

    v35 = a3;
    v19 = &v10[v13];
    v20 = isMAPPINGXBI2A(*(a1 + 24), v19);
    v21 = *(a1 + 24);
    if (v20 == 1)
    {
      if (*(v21 + 192) == 1)
      {
        result = storeDiacritic(a1, v13, &v10[v13], (v21 + 200), (v21 + 208), (v21 + 210), &v41);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      *v19 = 65;
      ++v13;
      goto LABEL_41;
    }

    if (!isDiacritic(v21, &v10[v13]))
    {
      v13 += Utf8_LengthInBytes(&v10[v13], 1);
LABEL_41:
      a3 = v35;
      goto LABEL_16;
    }

    v23 = *(a1 + 24);
    if (*(v23 + 192) != 1 || (result = storeDiacritic(a1, v13, v19, (v23 + 200), (v23 + 208), (v23 + 210), &v41), (result & 0x80000000) == 0))
    {
      v24 = v41;
      v25 = v12 + v41;
      if (v25 < v14)
      {
        memmove(&v10[v13], &v10[v25], (v14 - v12));
      }

      v10[v14 - v24] = 0;
      v16 = strlen(v10);
      if (a5 >= 2)
      {
        v26 = a4[3];
        v27 = a5 - 1;
        v28 = a4 + 11;
        do
        {
          if (v12 < (*v28 - v26))
          {
            *v28 -= v24;
          }

          v28 += 8;
          --v27;
        }

        while (v27);
      }

      v29 = 0;
      a4[4] -= v24;
      v31 = (a6 + 10);
      v30 = v36;
      while (1)
      {
        v32 = *(v31 - 1);
        if (v32 > v13)
        {
          break;
        }

        v32 = *v31;
        if (v32 > v13)
        {
          v33 = (a6 + 104 * v29 + 10);
          goto LABEL_37;
        }

LABEL_38:
        ++v29;
        v31 += 52;
        if (!--v30)
        {
          goto LABEL_41;
        }
      }

      *(v31 - 1) = v32 - v24;
      LOWORD(v32) = *v31;
      v33 = v31;
LABEL_37:
      *v33 = v32 - v24;
      goto LABEL_38;
    }
  }

  else
  {
LABEL_42:
    v34 = strlen(v10);
    result = 0;
    *a3 = v34;
    *a2 = v10;
  }

  return result;
}

uint64_t araParser_checkIfIsolatedWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = (a2 + 10);
    v8 = 1;
    v9 = a3;
    do
    {
      v10 = *(v7 - 1);
      if (*v7 - v10 != 1 || !isPunc_0(*(a1 + 24), (a4 + v10)))
      {
        ++v6;
      }

      if (v8 >= v9)
      {
        break;
      }

      v7 += 52;
      ++v8;
    }

    while (v6 < 2);
    return v6 == 1;
  }

  return a3;
}

uint64_t fe_ara_parser_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 85954, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (!*(a1 + 40))
  {
    return result;
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 48);
    do
    {
      heap_Free(*(*(a1 + 16) + 8), *(v6 + v4));
      v7 = (*(a1 + 48) + v4);
      *v7 = 0;
      heap_Free(*(*(a1 + 16) + 8), v7[1]);
      v6 = *(a1 + 48);
      *(v6 + v4 + 8) = 0;
      ++v5;
      v4 += 24;
    }

    while (v5 < *(a1 + 56));
    goto LABEL_10;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
LABEL_10:
    heap_Free(*(*(a1 + 16) + 8), v6);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  posparser_ProcessEnd(*(a1 + 24));
  v8 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 64), v8);
}

uint64_t fe_ara_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2356158465;
  }

  result = 0;
  *a2 = &IAraParser;
  return result;
}

uint64_t storeDiacritic(uint64_t a1, __int16 a2, unsigned __int8 *a3, uint64_t *a4, _WORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  v14 = *a4;
  v15 = Utf8_LengthInBytes(a3, 1);
  *a7 = v15;
  v16 = *a5;
  v17 = *a6;
  if (v16 < v17)
  {
    v18 = v15;
LABEL_5:
    strncpy((v14 + 6 * v16 + 2), a3, v18);
    result = 0;
    *(v14 + 6 * *a5 + *a7 + 2) = 0;
    *(v14 + 6 * (*a5)++) = a2;
    *a4 = v14;
    return result;
  }

  *a6 = v17 + 50;
  v19 = heap_Realloc(*(*(a1 + 16) + 8), v14, 6 * (v17 + 50) + 6);
  if (v19)
  {
    v14 = v19;
    v16 = *a5;
    v18 = *a7;
    goto LABEL_5;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0);
  return 2356158474;
}

uint64_t embed_dict_getName(char *__s, char *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (__PAIR64__(__s[1], *__s) != 0x6C00000063 || __s[2] != 109)
  {
    goto LABEL_5;
  }

  if (strchr(__s, 95))
  {
    __strncat_chk();
LABEL_5:
    __strcat_chk();
    __strcat_chk();
    strcpy(a2, v4);
    return 0;
  }

  return 2693799943;
}

uint64_t embed_vect_getBrokerString(uint64_t a1, char *a2, char *a3, char *a4, unint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  *v14 = 0;
  memset(v15, 0, sizeof(v15));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v14);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v13);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 99 && a2[1] == 108 && a2[2] == 109)
      {
        result = strchr(a2, 95);
        if (!result)
        {
          return result;
        }

        v11 = result;
        strcpy(a3, "clmnn:");
        v12 = strncat(a3, a2, result - a2);
        strcpy(&a3[strlen(v12)], "_embed_vect");
        strcat(a3, v11);
        return 0;
      }

      if (!strcmp(a2, "lid"))
      {
        __strcat_chk();
        result = brokeraux_ComposeBrokerString(a1, v15, 1, 0, *v14, 0, 0, a3, a5);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        strcpy(v15, "ml2emb");
        __strcat_chk();
        result = brokeraux_ComposeBrokerString(a1, v15, 1, 0, *v14, 0, 0, a4, a5);
      }

      else
      {
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
        result = brokeraux_ComposeBrokerString(a1, v15, 1, 1, *v14, 0, 0, a3, a5);
      }

      if ((result & 0x80000000) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t nn_word_lkp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2693799937;
  }

  result = 0;
  *a2 = &INnWordLkp;
  return result;
}

uint64_t nn_word_lkp_ObjOpen(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v6 = 2693799943;
  if (a6)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    inited = InitRsrcFunction(a4, a5, &v16);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v16 + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjOpen");
      v14 = heap_Calloc(*(v16 + 8), 1, 128);
      if (v14)
      {
        *a6 = v14;
        *(a6 + 8) = 62639;
        *v14 = a1;
        v14[1] = a2;
        v14[2] = a4;
        v14[3] = a5;
        v14[4] = v16;
        v14[15] = a3;
        v6 = nn_word_lkp_ObjOpenHelper(v14, a6);
        if ((v6 & 0x80000000) == 0)
        {
          log_OutText(*(v16 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjOpen");
        }
      }

      else
      {
        log_OutPublic(*(v16 + 32), "NN_WORD_LKP", 41000, 0);
        return 2693799946;
      }
    }
  }

  return v6;
}

uint64_t nn_word_lkp_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  if (a1)
  {
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lookup_ObjClose");
    nn_word_lkp_ObjCloseHelper(a1);
    v4 = a1[4];
    v5 = *(v4 + 48);
    if (v5)
    {
      objc_ReleaseObject(v5, "FE_DCTLKP");
      v4 = a1[4];
    }

    log_OutText(*(v4 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lookup_ObjClose");
    heap_Free(*(a1[4] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t nn_word_lkp_ObjReopen(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v7 = a1;
  v8 = a2;
  v4 = 2693799944;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0 && v3)
  {
    log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjReOpen");
    v5 = nn_word_lkp_ObjCloseHelper(v3);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = nn_word_lkp_ObjOpenHelper(v3, &v7);
      if ((v4 & 0x80000000) == 0)
      {
        log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjReOpen");
        return v4;
      }

      v3 = v7;
      v2 = v8;
    }

    nn_word_lkp_ObjClose(v3, v2);
  }

  return v4;
}

uint64_t nn_word_lkp_getVectorLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 68);
  return result;
}

uint64_t nn_word_lkp_getVectorExtLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 72);
  return result;
}

uint64_t nn_word_lkp_word2fvector(uint64_t a1, int a2, const char *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v20 = 0;
  v7 = 2693799944;
  v19 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__s = 0u;
  v23 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      if (strstr(__s, "lid") || (*__s == 27747 ? (v14 = __s[2] == 109) : (v14 = 0), v14))
      {
        v20 = 1;
      }

      v13 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v21, &v20, &v19);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", a3, v13 & 0x1FFF);
        return v13;
      }
    }

    else
    {
      v9 = strlen(__s);
      v10 = heap_Alloc(*(*(a1 + 32) + 8), v9 + 2);
      if (!v10)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0);
        return 2693799946;
      }

      v11 = v10;
      v12 = strcpy(v10, __s);
      *(v11 + strlen(v12)) = 95;
      v13 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v11, a3, &v21, &v20, &v19, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v11);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (!v20)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", a3);
      return 2693799956;
    }

    v15 = atoi(*v21);
    v16 = *(a1 + 64);
    if (v16 <= 6)
    {
      if (((1 << v16) & 0x12) != 0)
      {
        return nn_word_lkp_get_vector_u16linear(a1, v15, a3, 0, a4);
      }

      if (((1 << v16) & 0x24) != 0)
      {
        return nn_word_lkp_get_vector_u8kmeans(a1, v15, a3, 0, a4);
      }

      if (((1 << v16) & 0x48) != 0)
      {
        return nn_word_lkp_get_vector_binary(a1, v15, a3, 0, a4);
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", *(a1 + 64));
    return 2693799952;
  }

  return v7;
}

uint64_t nn_word_lkp_word2extfvector(uint64_t a1, int a2, const char *a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v19 = 0;
  v7 = 2693799944;
  v18 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__s = 0u;
  v22 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      v13 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v20, &v19, &v18);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", a3, v13 & 0x1FFF);
        return v13;
      }
    }

    else
    {
      v9 = strlen(__s);
      v10 = heap_Alloc(*(*(a1 + 32) + 8), v9 + 2);
      if (!v10)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0);
        return 2693799946;
      }

      v11 = v10;
      v12 = strcpy(v10, __s);
      *(v11 + strlen(v12)) = 95;
      v13 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v11, a3, &v20, &v19, &v18, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v11);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v19)
    {
      v14 = atoi(*v20);
      v15 = *(a1 + 64);
      if (v15 == 6)
      {
        return nn_word_lkp_get_vector_binary(a1, v14, a3, 1, a4);
      }

      if (v15 == 5)
      {
        return nn_word_lkp_get_vector_u8kmeans(a1, v14, a3, 1, a4);
      }

      if (v15 != 4)
      {
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", *(a1 + 64));
        return 2693799952;
      }

      return nn_word_lkp_get_vector_u16linear(a1, v14, a3, 1, a4);
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", a3);
      return 2693799956;
    }
  }

  return v7;
}

uint64_t nn_word_lkp_word2id(uint64_t a1, int a2, const char *a3, float *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  v7 = 2693799944;
  v16 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__s = 0u;
  v20 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      if (strstr(__s, "lid") || (*__s == 27747 ? (v14 = __s[2] == 109) : (v14 = 0), v14))
      {
        v17 = 1;
      }

      v13 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v18, &v17, &v16);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", a3, v13 & 0x1FFF);
        return v13;
      }
    }

    else
    {
      v9 = strlen(__s);
      v10 = heap_Alloc(*(*(a1 + 32) + 8), v9 + 2);
      if (!v10)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0);
        return 2693799946;
      }

      v11 = v10;
      v12 = strcpy(v10, __s);
      *(v11 + strlen(v12)) = 95;
      v13 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v11, a3, &v18, &v17, &v16, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v11);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v17)
    {
      v7 = 0;
      *a4 = atoi(*v18);
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", a3);
      return 2693799956;
    }
  }

  return v7;
}

uint64_t nn_word_lkp_ObjOpenHelper(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  BrokerString = embed_vect_getBrokerString(*(a1 + 32), *(a1 + 120), v41, v40, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    v6 = BrokerString;
    v7 = *(*(a1 + 32) + 32);
    v8 = v6 & 0x1FFF;
    v9 = "Failed to generate the embedding vector brokerstring. Returns %u";
LABEL_35:
    log_OutText(v7, "NN_WORD_LKP", 0, 0, v9, v8, v34);
    goto LABEL_36;
  }

  if ((ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 2, v40, "CRPH", 5, &v35) & 0x80000000) != 0)
  {
    v10 = ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 0, v41, "CRPH", 5, &v35);
    v11 = *(a1 + 32);
    if ((v10 & 0x80000000) != 0)
    {
      v6 = v10;
      log_OutText(*(v11 + 32), "NN_WORD_LKP", 0, 0, "Failed to open the word vector riff file (%s). Returns %u");
      goto LABEL_36;
    }

    v5 = *(v11 + 24);
  }

  else
  {
    v5 = *(*(a1 + 32) + 24);
  }

  v12 = brk_DataOpen(v5);
  if ((v12 & 0x80000000) != 0)
  {
    v6 = v12;
    goto LABEL_36;
  }

  v13 = v35;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  __src = 0;
  v14 = ssftriff_reader_OpenChunk(v35, &v38, &v37, &__src);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  if (!(v38 ^ 0x44414548 | v39))
  {
    v8 = v37;
    if (v37 <= 0xF)
    {
      v6 = 2693799953;
      v7 = *(*(a1 + 32) + 32);
      v9 = "Found riff chunk of size %u. Expected at least %u";
      v34 = 16;
      goto LABEL_35;
    }

    v16 = __src;
    v17 = *__src;
    *(a1 + 64) = *__src;
    *(a1 + 68) = v16[1];
    if ((v17 - 4) > 2)
    {
      v18 = 0;
      v19 = 2;
    }

    else
    {
      v18 = v16[2];
      v19 = 3;
    }

    *(a1 + 72) = v18;
    *(a1 + 84) = v16[v19];
    if (v17 > 3)
    {
      if ((v17 - 5) < 2)
      {
        v20 = v16[4];
        goto LABEL_24;
      }

      if (v17 == 4)
      {
        v21 = *(v16 + 4);
        goto LABEL_29;
      }
    }

    else
    {
      if ((v17 - 2) < 2)
      {
        v20 = v16[3];
LABEL_24:
        *(a1 + 88) = v20;
        *(a1 + 76) = 0;
        *(a1 + 80) = 0;
LABEL_30:
        v22 = ssftriff_reader_CloseChunk(v13);
        if ((v22 & 0x80000000) != 0)
        {
LABEL_57:
          v6 = v22;
          v7 = *(*(a1 + 32) + 32);
          v8 = v6 & 0x1FFF;
          v9 = "Failed to close riff chunk. Returns %u";
          goto LABEL_35;
        }

        v23 = v35;
        v39 = 0;
        v37 = 0;
        v38 = 0;
        __src = 0;
        v14 = ssftriff_reader_OpenChunk(v35, &v38, &v37, &__src);
        if ((v14 & 0x80000000) == 0)
        {
          if (v38 ^ 0x54434556 | v39)
          {
            v6 = 2693799953;
            v15 = *(*(a1 + 32) + 32);
            goto LABEL_11;
          }

          v28 = *(a1 + 64);
          if (v28 <= 6 && ((1 << v28) & 0x6C) != 0)
          {
            v29 = (4 * *(a1 + 88));
            v30 = heap_Calloc(*(*(a1 + 32) + 8), 1, v29);
            *(a1 + 104) = v30;
            if (!v30)
            {
              log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0);
              v6 = 2693799946;
              goto LABEL_36;
            }

            memcpy(v30, __src, v29);
            *(a1 + 112) = ssftriff_reader_GetPosition(v23) + v29;
            v31 = v37 - v29;
          }

          else
          {
            *(a1 + 112) = ssftriff_reader_GetPosition(v23);
            v31 = v37;
          }

          *(a1 + 116) = v31;
          v22 = ssftriff_reader_CloseChunk(v23);
          if ((v22 & 0x80000000) == 0)
          {
            v32 = ssftriff_reader_ObjClose(v35);
            v35 = 0;
            if ((v32 & 0x80000000) != 0)
            {
              v6 = v32;
              v7 = *(*(a1 + 32) + 32);
              v8 = v6 & 0x1FFF;
              v9 = "Failed to close the riff file; ssftriff_reader_ObjClose returns %u";
            }

            else
            {
              Interface = fe_dctlkp_GetInterface(1u, (a1 + 40));
              if ((Interface & 0x80000000) != 0)
              {
                v6 = Interface;
                v7 = *(*(a1 + 32) + 32);
                v8 = v6 & 0x1FFF;
                v9 = "fe_dctlkp_GetInterface returns %u";
              }

              else
              {
                v6 = (*(*(a1 + 40) + 32))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a1 + 48);
                if ((v6 & 0x80000000) == 0)
                {
                  goto LABEL_36;
                }

                v7 = *(*(a1 + 32) + 32);
                v8 = v6 & 0x1FFF;
                v9 = "pfObjOpen returns %u";
              }
            }

            goto LABEL_35;
          }

          goto LABEL_57;
        }

LABEL_34:
        v6 = v14;
        v7 = *(*(a1 + 32) + 32);
        v8 = v6 & 0x1FFF;
        v9 = "Failed to open riff chunk. Returns %u";
        goto LABEL_35;
      }

      if (v17 == 1)
      {
        v21 = *(v16 + 3);
LABEL_29:
        *(a1 + 76) = vcvt_f32_s32(v21);
        *(a1 + 88) = 0;
        goto LABEL_30;
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v17);
    v6 = 2693799952;
    goto LABEL_36;
  }

  v6 = 2693799953;
  v15 = *(*(a1 + 32) + 32);
LABEL_11:
  log_OutText(v15, "NN_WORD_LKP", 0, 0, "Found riff chunk (%s). Expected %s");
LABEL_36:
  if (v35)
  {
    v24 = ssftriff_reader_CloseChunk(v35);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = v24;
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; ssftriff_reader_CloseChunk returns %u", v24 & 0x1FFF);
      if (v6 >= 0)
      {
        v6 = v25;
      }

      else
      {
        v6 = v6;
      }

      goto LABEL_43;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
LABEL_43:
    nn_word_lkp_ObjClose(*a2, a2[1]);
    *a2 = 0;
    *(a2 + 2) = 0;
    *a2 = safeh_GetNullHandle();
    a2[1] = v26;
  }

  return v6;
}

uint64_t nn_word_lkp_ObjCloseHelper(void *a1)
{
  v2 = a1[5];
  if (v2 && (v3 = (*(v2 + 40))(a1[6], a1[7]), (v3 & 0x80000000) != 0))
  {
    v4 = v3;
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close dct. pIDct->pfObjClose returns %u", v3 & 0x1FFF);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[13];
  if (v5)
  {
    heap_Free(*(a1[4] + 8), v5);
    a1[13] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    v7 = brk_DataClose(*(a1[4] + 24), v6);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = v7;
      log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; brk_DataClose returns %u", v7 & 0x1FFF);
      if (v4)
      {
        return v4;
      }

      else
      {
        return v8;
      }
    }
  }

  return v4;
}

uint64_t nn_word_lkp_get_vector_u16linear(uint64_t a1, int a2, const char *a3, int a4, uint64_t a5)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 72) + v6;
  v8 = *(a1 + 116) - v7;
  v19 = 0;
  if (v7 * a2 <= v8)
  {
    if (a4)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    v12 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v7 * a2, (2 * v11), &v19);
    if ((v12 & 0x80000000) != 0)
    {
      v9 = v12;
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to map data, brk_DataMap returns %u.");
    }

    else
    {
      v14 = v19;
      if (v11)
      {
        v15 = 0;
        v16 = *(a1 + 68);
        do
        {
          LOWORD(v13) = *(v14 + 2 * v15);
          v13 = LODWORD(v13);
          if (v15 < v16)
          {
            v13 = *(a1 + 76) + (((*(a1 + 80) - *(a1 + 76)) * v13) * 0.000030518);
          }

          *(a5 + 4 * v15++) = v13;
        }

        while (v11 != v15);
      }

      v17 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v14);
      if ((v17 & 0x80000000) != 0)
      {
        v9 = v17;
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to unmap data, brk_DataUnMap returns %u.");
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a3, v7 * a2, v8);
    return 2693799952;
  }

  return v9;
}

uint64_t nn_word_lkp_get_vector_binary(uint64_t a1, int a2, const char *a3, int a4, uint64_t a5)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 72) + v6;
  v8 = (v7 + 7) >> 3;
  v9 = *(a1 + 116) - v8;
  v26 = 0;
  if (v8 * a2 > v9)
  {
    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a3, v8 * a2, v9);
    return 2693799952;
  }

  if (a4)
  {
    v12 = v8;
  }

  else
  {
    v12 = (v6 + 7) >> 3;
  }

  if (a4)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  v14 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v8 * a2, v12, &v26);
  if ((v14 & 0x80000000) != 0)
  {
    v10 = v14;
    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to map data, brk_DataMap returns %u.");
    return v10;
  }

  v15 = v26;
  if (v12)
  {
    v16 = 0;
    v17 = (*(a1 + 68) + 7) >> 3;
    v18 = (a5 + 16);
    while (1)
    {
      v19 = *(v15 + v16);
      if (v13 >= 8)
      {
        v20 = 8;
      }

      else
      {
        v20 = v13;
      }

      v21 = v19 >> 7;
      if (v16 >= v17)
      {
        if (v20 <= 3)
        {
          switch(v20)
          {
            case 1:
              goto LABEL_51;
            case 2:
              goto LABEL_50;
            case 3:
              goto LABEL_49;
          }

LABEL_44:
          v18[3] = (v19 & 1);
LABEL_45:
          v18[2] = ((v19 >> 1) & 1);
        }

        else
        {
          if (v20 <= 5)
          {
            if (v20 != 4)
            {
LABEL_47:
              *v18 = ((v19 >> 3) & 1);
            }

            *(v18 - 1) = ((v19 >> 4) & 1);
LABEL_49:
            *(v18 - 2) = ((v19 >> 5) & 1);
LABEL_50:
            *(v18 - 3) = ((v19 >> 6) & 1);
LABEL_51:
            v23 = v21;
            goto LABEL_52;
          }

          if (v20 != 6)
          {
            if (v20 != 7)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

        v18[1] = ((v19 >> 2) & 1);
        goto LABEL_47;
      }

      v22 = *(a1 + 104);
      if (v20 > 3)
      {
        break;
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          if (v20 != 3)
          {
LABEL_34:
            v18[3] = *(v22 + 4 * (v19 & 1));
            goto LABEL_35;
          }

LABEL_39:
          *(v18 - 2) = *(v22 + 4 * ((v19 >> 5) & 1));
        }

        *(v18 - 3) = *(v22 + 4 * ((v19 >> 6) & 1));
      }

      v23 = *(v22 + 4 * v21);
LABEL_52:
      *(v18 - 4) = v23;
      ++v16;
      v18 += 8;
      v13 -= 8;
      if (v12 == v16)
      {
        goto LABEL_53;
      }
    }

    if (v20 > 5)
    {
      if (v20 != 6)
      {
        if (v20 != 7)
        {
          goto LABEL_34;
        }

LABEL_35:
        v18[2] = *(v22 + 4 * ((v19 >> 1) & 1));
      }

      v18[1] = *(v22 + 4 * ((v19 >> 2) & 1));
    }

    else if (v20 == 4)
    {
LABEL_38:
      *(v18 - 1) = *(v22 + 4 * ((v19 >> 4) & 1));
      goto LABEL_39;
    }

    *v18 = *(v22 + 4 * ((v19 >> 3) & 1));
    goto LABEL_38;
  }

LABEL_53:
  v24 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v15);
  if ((v24 & 0x80000000) == 0)
  {
    return 0;
  }

  v10 = v24;
  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to unmap data, brk_DataUnMap returns %u.");
  return v10;
}

uint64_t nn_word_lkp_get_vector_u8kmeans(uint64_t a1, int a2, const char *a3, int a4, uint64_t a5)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 72) + v6;
  v8 = *(a1 + 116) - v7;
  v19 = 0;
  if (v7 * a2 <= v8)
  {
    if (a4)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    v12 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v7 * a2, v11, &v19);
    if ((v12 & 0x80000000) != 0)
    {
      v9 = v12;
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to map data, brk_DataMap returns %u.");
    }

    else
    {
      v14 = v19;
      if (v11)
      {
        v15 = 0;
        v16 = *(a1 + 68);
        do
        {
          if (v15 >= v16)
          {
            LOBYTE(v13) = *(v14 + v15);
            v13 = LODWORD(v13);
          }

          else
          {
            v13 = *(*(a1 + 104) + 4 * *(v14 + v15));
          }

          *(a5 + 4 * v15++) = v13;
        }

        while (v11 != v15);
      }

      v17 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v14);
      if ((v17 & 0x80000000) != 0)
      {
        v9 = v17;
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to unmap data, brk_DataUnMap returns %u.");
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a3, v7 * a2, v8);
    return 2693799952;
  }

  return v9;
}

uint64_t tnplus_word_copyParts(char **a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  result = hlp_DuplicateString(a2, *a1, a3);
  if (result)
  {
    result = hlp_DuplicateString(a2, a1[1], a3 + 1);
    if (result)
    {
      result = hlp_DuplicateString(a2, a1[2], a3 + 2);
      if (result)
      {
        result = hlp_DuplicateString(a2, a1[3], a3 + 3);
        if (result)
        {
          result = hlp_DuplicateString(a2, a1[4], a3 + 4);
          if (result)
          {
            result = hlp_DuplicateString(a2, a1[6], a3 + 6);
            if (result)
            {
              result = hlp_DuplicateString(a2, a1[7], a3 + 7);
              if (result)
              {
                result = hlp_DuplicateString(a2, a1[9], a3 + 9);
                if (result)
                {
                  result = hlp_DuplicateString(a2, a1[10], a3 + 10);
                  if (result)
                  {
                    result = hlp_DuplicateString(a2, a1[11], a3 + 11);
                    if (result)
                    {
                      result = hlp_DuplicateString(a2, a1[12], a3 + 12);
                      if (result)
                      {
                        result = hlp_DuplicateString(a2, a1[13], a3 + 13);
                        if (result)
                        {
                          result = hlp_DuplicateString(a2, a1[15], a3 + 15);
                          if (result)
                          {
                            return 1;
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

  return result;
}

uint64_t hlp_DuplicateString(void *a1, char *__s, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (__s)
  {
    v6 = strlen(__s);
    result = heap_Calloc(a1, v6 + 1, 1);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    strcpy(result, __s);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t *tnplus_word_freeParts(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      result = heap_Free(a2, *result);
      *v3 = 0;
    }

    v4 = v3[1];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[1] = 0;
    }

    v5 = v3[2];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[2] = 0;
    }

    v6 = v3[3];
    if (v6)
    {
      result = heap_Free(a2, v6);
      v3[3] = 0;
    }

    v7 = v3[4];
    if (v7)
    {
      result = heap_Free(a2, v7);
      v3[4] = 0;
    }

    v8 = v3[6];
    if (v8)
    {
      result = heap_Free(a2, v8);
      v3[6] = 0;
    }

    v9 = v3[7];
    if (v9)
    {
      result = heap_Free(a2, v9);
      v3[7] = 0;
    }

    v10 = v3[9];
    if (v10)
    {
      result = heap_Free(a2, v10);
      v3[9] = 0;
    }

    v11 = v3[10];
    if (v11)
    {
      result = heap_Free(a2, v11);
      v3[10] = 0;
    }

    v12 = v3[11];
    if (v12)
    {
      result = heap_Free(a2, v12);
      v3[11] = 0;
    }

    v13 = v3[12];
    if (v13)
    {
      result = heap_Free(a2, v13);
      v3[12] = 0;
    }

    v14 = v3[13];
    if (v14)
    {
      result = heap_Free(a2, v14);
      v3[13] = 0;
    }

    v15 = v3[15];
    if (v15)
    {
      result = heap_Free(a2, v15);
      v3[15] = 0;
    }
  }

  return result;
}
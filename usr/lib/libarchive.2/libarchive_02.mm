uint64_t read_stream(uint64_t a1, uint64_t *a2, unint64_t a3, size_t a4)
{
  v14 = **(a1 + 2072);
  v13 = 0;
  if (*(v14 + 240))
  {
    return get_uncompressed_data(a1, a2, a3, a4);
  }

  if (!*(v14 + 280))
  {
    if (*(v14 + 264))
    {
      pack_stream = extract_pack_stream(a1, 0);
      if (pack_stream < 0)
      {
        return pack_stream;
      }
    }

    else
    {
      if (!*(v14 + 276))
      {
        if (*(v14 + 104))
        {
          archive_set_error(a1, -1, "Malformed 7-Zip archive");
          return -30;
        }

        if (!*(v14 + 256) && (*(*(v14 + 56) + 104 * *(*(v14 + 168) + 16) + 96) || *(v14 + 256) != *(*(v14 + 168) + 16)))
        {
          *(v14 + 256) = *(*(v14 + 168) + 16);
          v13 = *(*(v14 + 56) + 104 * *(v14 + 256) + 96);
        }

        if (*(v14 + 256) >= *(v14 + 48))
        {
          *a2 = 0;
          return 0;
        }

        if (setup_decode_folder(a1, (*(v14 + 56) + 104 * *(v14 + 256)), 0))
        {
          return -30;
        }

        ++*(v14 + 256);
      }

      v9 = seek_pack(a1);
      if (v9 < 0)
      {
        return v9;
      }

      v10 = extract_pack_stream(a1, 0);
      if (v10 < 0)
      {
        return v10;
      }

      while (v13)
      {
        if (!*(v14 + 240))
        {
          if (*(v14 + 280))
          {
            v11 = extract_pack_stream(a1, 0);
            if (v11 < 0)
            {
              return v11;
            }
          }

          else
          {
            if (!*(v14 + 264))
            {
              archive_set_error(a1, 79, "Truncated 7-Zip file body");
              return -30;
            }

            v12 = extract_pack_stream(a1, 0);
            if (v12 < 0)
            {
              return v12;
            }
          }
        }

        uncompressed_data = get_uncompressed_data(a1, a2, v13, 0);
        if (uncompressed_data < 0)
        {
          return uncompressed_data;
        }

        v13 -= uncompressed_data;
        if (*(v14 + 288))
        {
          read_consume(a1);
        }
      }
    }

    return get_uncompressed_data(a1, a2, a3, a4);
  }

  v7 = extract_pack_stream(a1, 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return get_uncompressed_data(a1, a2, a3, a4);
  }

  return v7;
}

uint64_t extract_pack_stream(uint64_t a1, size_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = **(a1 + 2072);
  v12 = 0;
  v11 = 0;
  if (*(v13 + 296) == __PAIR128__(-1, 0))
  {
    if (!v14)
    {
      v14 = 1;
    }

    if (__archive_read_ahead(v15, v14, &v12) && v12 > 0)
    {
      if (v12 > *(v13 + 280))
      {
        v12 = *(v13 + 280);
      }

      *(v13 + 280) -= v12;
      if (v12 > *(v13 + 264))
      {
        v12 = *(v13 + 264);
      }

      *(v13 + 264) -= v12;
      *(v13 + 240) = v12;
      return 0;
    }

    else
    {
      archive_set_error(v15, 79, "Truncated 7-Zip file body");
      return -30;
    }
  }

  if (*(v13 + 216))
  {
    if (*(v13 + 232) >= v14 && *(v13 + 240) >= v14)
    {
      *(v13 + 240) = 0;
    }

    else
    {
      v10 = 0;
      if (*(v13 + 224))
      {
        v10 = *(v13 + 224) - *(v13 + 216);
      }

      else
      {
        v10 = 0;
      }

      if (*(v13 + 232) < v14)
      {
        v9 = 0;
        size = (v14 + 1023) & 0xFFFFFFFFFFFFFC00;
        v9 = malloc_type_realloc(*(v13 + 216), size, 0xEFBAF570uLL);
        if (!v9)
        {
LABEL_16:
          archive_set_error(v15, 12, "No memory for 7-Zip decompression");
          return -30;
        }

        *(v13 + 216) = v9;
        *(v13 + 232) = size;
      }

      if (v10)
      {
        __memmove_chk();
      }
    }
  }

  else
  {
    *(v13 + 232) = 0x10000;
    if (*(v13 + 232) < v14)
    {
      *(v13 + 232) = v14 + 1023;
      *(v13 + 232) &= 0xFFFFFFFFFFFFFC00;
    }

    *(v13 + 216) = malloc_type_malloc(*(v13 + 232), 0xDCB16D4DuLL);
    if (!*(v13 + 216))
    {
      goto LABEL_16;
    }

    *(v13 + 240) = 0;
  }

  *(v13 + 224) = 0;
  while (1)
  {
    v7 = 0;
    v6 = 0;
    v5 = __archive_read_ahead(v15, 1uLL, &v12);
    if (v12 <= 0)
    {
      archive_set_error(v15, 79, "Truncated 7-Zip file body");
      return -30;
    }

    v4 = (*(v13 + 216) + *(v13 + 240));
    v6 = *(v13 + 232) - *(v13 + 240);
    v7 = v12;
    if (v12 > *(v13 + 280))
    {
      v7 = *(v13 + 280);
    }

    v11 = decompress(v15, v13, v4, &v6, v5, &v7);
    if (v11)
    {
      if (v11 != 1)
      {
        return -30;
      }

      v3 = 0x100000001;
    }

    else
    {
      v3 = 0;
    }

    *(v13 + 280) -= v7;
    if (v6 > *(v13 + 264))
    {
      v6 = *(v13 + 264);
    }

    *(v13 + 264) -= v6;
    *(v13 + 240) += v6;
    *(v13 + 288) = v7;
    if (*(v13 + 240) == *(v13 + 232) || *(v13 + 304) == 50528515 && *(v13 + 19984) && (*(v13 + 240) + 5) > *(v13 + 232))
    {
      break;
    }

    if (!*(v13 + 280) && !*(v13 + 264))
    {
      break;
    }

    if (HIDWORD(v3) || !v7 && !v6)
    {
      archive_set_error(v15, -1, "Damaged 7-Zip archive", v3);
      return -30;
    }

    read_consume(v15);
  }

  if (*(v13 + 240) >= v14)
  {
    *(v13 + 224) = *(v13 + 216);
    return 0;
  }

  else
  {
    archive_set_error(v15, -1, "Damaged 7-Zip archive");
    return -30;
  }
}

uint64_t get_uncompressed_data(uint64_t a1, uint64_t *a2, unint64_t a3, size_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = **(a1 + 2072);
  v6 = 0;
  if (*(v7 + 296) != __PAIR128__(-1, 0))
  {
    if (!*(v7 + 224))
    {
      archive_set_error(v11, -1, "Damaged 7-Zip archive");
      return -30;
    }

    if (v8 > *(v7 + 240) && extract_pack_stream(v11, v8) < 0)
    {
      return -30;
    }

    if (v9 <= *(v7 + 240))
    {
      v6 = v9;
    }

    else
    {
      v6 = *(v7 + 240);
    }

    *v10 = *(v7 + 224);
    *(v7 + 224) += v6;
LABEL_18:
    *(v7 + 240) -= v6;
    return v6;
  }

  v4 = __archive_read_ahead(v11, v8, &v6);
  *v10 = v4;
  if (v6 > 0)
  {
    if (v6 > *(v7 + 240))
    {
      v6 = *(v7 + 240);
    }

    if (v6 > v9)
    {
      v6 = v9;
    }

    *(v7 + 288) = v6;
    goto LABEL_18;
  }

  archive_set_error(v11, 79, "Truncated 7-Zip file data");
  return -30;
}

uint64_t decompress(_DWORD *a1, uint64_t a2, _BYTE *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v22 = 0;
  v33 = *a6;
  v30 = *a6;
  v32 = *a4;
  v27 = *a4;
  v34 = a3;
  if (*(a2 + 296) != 33 && *(a2 + 304) == 50528515)
  {
    if (v33 && v27 < 5 && *(a2 + 19984))
    {
      *a6 = 0;
      *a4 = 0;
      return 0;
    }

    for (i = 0; ; ++i)
    {
      v14 = 0;
      if (*(a2 + 19984))
      {
        v14 = v27 != 0;
      }

      if (!v14)
      {
        break;
      }

      v6 = v34++;
      *v6 = *(a2 + 19992 + i);
      --v27;
      --*(a2 + 19984);
    }

    if (!v33 || !v27)
    {
      *a6 = v33 - v30;
      *a4 = v32 - v27;
      if (!v33)
      {
        return 1;
      }

      return v22;
    }
  }

  v26 = v34;
  v25 = v27;
  if (*(a2 + 304) != 50528539)
  {
LABEL_29:
    v13 = *(a2 + 296);
    if (v13)
    {
      switch(v13)
      {
        case 33:
        case 196865:
          *(a2 + 312) = a5;
          *(a2 + 320) = v30;
          *(a2 + 336) = v34;
          *(a2 + 344) = v27;
          v23 = lzma_code();
          if (v23)
          {
            if (v23 != 1)
            {
              archive_set_error(a1, -1, "Decompression failed(%d)", v23);
              return -25;
            }

            lzma_end();
            *(a2 + 448) = 0;
            v22 = 1;
          }

          v31 = *(a2 + 320);
          v29 = *(a2 + 344);
          break;
        case 197633:
          if (!*(a2 + 19976) || (*(a2 + 660) & 0x80000000) != 0 || !v27)
          {
            goto LABEL_35;
          }

          *(a2 + 19912) = a5;
          *(a2 + 19920) = v30;
          *(a2 + 19936) = 0;
          *(a2 + 19944) = v34;
          *(a2 + 19952) = v27;
          if (!*(a2 + 660))
          {
            *(a2 + 19896) = a1;
            *(a2 + 19904) = ppmd_read;
            *(a2 + 19888) = a2 + 19896;
            if (!off_1F3DE4D90(a2 + 19848))
            {
              *(a2 + 660) = -1;
              archive_set_error(a1, -1, "Failed to initialize PPMd range decoder");
              return -25;
            }

            if (*(a2 + 19968))
            {
              *(a2 + 660) = -1;
              return -25;
            }

            *(a2 + 660) = 1;
          }

          if (v30)
          {
            v18 = 0;
          }

          else
          {
            v18 = *(a2 + 264);
          }

          do
          {
            v17 = off_1F3DE4DA0(a2 + 664, a2 + 19848);
            if (v17 < 0)
            {
              *(a2 + 660) = -1;
              archive_set_error(a1, 79, "Failed to decode PPMd");
              return -25;
            }

            if (*(a2 + 19968))
            {
              *(a2 + 660) = -1;
              return -25;
            }

            v7 = *(a2 + 19944);
            *(a2 + 19944) = v7 + 1;
            *v7 = v17;
            --*(a2 + 19952);
            ++*(a2 + 19960);
            if (v18)
            {
              --v18;
            }

            v10 = 0;
            if (*(a2 + 19952))
            {
              v9 = 1;
              if (!*(a2 + 19920))
              {
                v9 = v18 != 0;
              }

              v10 = v9;
            }
          }

          while (v10);
          v31 = *(a2 + 19920);
          v29 = *(a2 + 19952);
          break;
        case 262408:
          *(a2 + 544) = a5;
          *(a2 + 552) = v30;
          *(a2 + 568) = v34;
          *(a2 + 576) = v27;
          v24 = inflate((a2 + 544), 0);
          if (v24)
          {
            if (v24 != 1)
            {
              archive_set_error(a1, -1, "File decompression failed (%d)", v24);
              return -25;
            }

            v22 = 1;
          }

          v31 = *(a2 + 552);
          v29 = *(a2 + 576);
          break;
        case 262658:
          *(a2 + 456) = a5;
          *(a2 + 464) = v30;
          *(a2 + 480) = v34;
          *(a2 + 488) = v27;
          v11 = BZ2_bzDecompress((a2 + 456));
          if (v11)
          {
            if (v11 != 4)
            {
              archive_set_error(a1, -1, "bzip decompression failed");
              return -25;
            }

            if (BZ2_bzDecompressEnd((a2 + 456)))
            {
              archive_set_error(a1, -1, "Failed to clean up decompressor");
              return -25;
            }

            *(a2 + 536) = 0;
            v22 = 1;
          }

          v31 = *(a2 + 464);
          v29 = *(a2 + 488);
          break;
        default:
LABEL_35:
          archive_set_error(a1, -1, "Decompression internal error");
          return -25;
      }
    }

    else
    {
      if (v30 > v27)
      {
        v12 = v27;
      }

      else
      {
        v12 = v30;
      }

      __memcpy_chk();
      v31 = v30 - v12;
      v29 = v27 - v12;
      if (!v33)
      {
        v22 = 1;
      }
    }

    *a6 = v33 - v31;
    *a4 = v32 - v29;
    if (*(a2 + 296) != 33)
    {
      switch(*(a2 + 304))
      {
        case 0x3030103:
          v16 = x86_Convert(a2, a3, *a4);
          *(a2 + 19984) = *a4 - v16;
          if (*(a2 + 19984) && *(a2 + 19984) <= 4uLL && v33 && v22 != 1)
          {
            __memcpy_chk();
            *a4 = v16;
          }

          else
          {
            *(a2 + 19984) = 0;
          }

          break;
        case 0x3030501:
          *a4 = arm_Convert(a2, a3, *a4);
          break;
        case 0xALL:
          *a4 = arm64_Convert(a2, a3, *a4);
          break;
      }
    }

    if (*(a2 + 304) == 50528539)
    {
      *(a2 + 20112) = *(a2 + 20104) - v29;
      if (*(a2 + 20112) > *(a2 + 20016))
      {
        *(a2 + 20112) = *(a2 + 20016);
      }

      *(a2 + 20120) = *(a2 + 20112);
      v15 = Bcj2_Decode(a2, v26, v25);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      *(a2 + 20016) -= *(a2 + 20112) - *(a2 + 20120);
      *a4 = v32 - (v25 - v15);
    }

    return v22;
  }

  if (!*(a2 + 20120))
  {
LABEL_28:
    v34 = *(a2 + 20096);
    v27 = *(a2 + 20104);
    goto LABEL_29;
  }

  v19 = *(a2 + 20120);
  v20 = Bcj2_Decode(a2, v34, v27);
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_20:
    archive_set_error(a1, -1, "BCJ2 conversion Failed");
    return -25;
  }

  *(a2 + 20016) -= v19 - *(a2 + 20120);
  v28 = v27 - v20;
  if (v33 && v28)
  {
    v26 = &v34[v20];
    v25 = v28;
    goto LABEL_28;
  }

  *a6 = 0;
  *a4 = v32 - v28;
  if (!v33 && *(a2 + 20120))
  {
    return 1;
  }

  return v22;
}

unint64_t Bcj2_Decode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  i = 0;
  v31 = 0;
  v38 = *(a1 + 20120);
  v42 = *(v47 + 20096) + *(v47 + 20112) - v38;
  v37 = *(a1 + 20072);
  v41 = (*(v47 + 20024) + *(v47 + 20048) - v37);
  v36 = *(a1 + 20080);
  v40 = (*(v47 + 20032) + *(v47 + 20056) - v36);
  v35 = *(a1 + 20088);
  v39 = (*(a1 + 20040) + *(a1 + 20064) - v35);
  v34 = v39;
  v33 = &v39[v35];
  if (!*(a1 + 19980))
  {
    *(v47 + 20644) = 0;
    for (i = 0; i < 0x102uLL; ++i)
    {
      *(v47 + 20128 + 2 * i) = 1024;
    }

    *(v47 + 20652) = 0;
    *(v47 + 20648) = -1;
    for (j = 0; j < 5; ++j)
    {
      if (v34 == v33)
      {
        return -25;
      }

      v3 = *(v47 + 20652);
      v4 = v34++;
      *(v47 + 20652) = *v4 | (v3 << 8);
    }

    *(v47 + 19980) = 1;
  }

  for (i = 0; ; ++i)
  {
    v18 = 0;
    if (*(v47 + 19984))
    {
      v18 = v43 < v45;
    }

    if (!v18)
    {
      break;
    }

    v5 = *(v47 + 19992 + i);
    v6 = v43++;
    *(v46 + v6) = v5;
    --*(v47 + 19984);
  }

  if (v45)
  {
    while (1)
    {
      v29 = 0;
      v28 = 0;
      v27 = 0;
      v26 = 0;
      v25 = v38 - v44;
      if (v45 - v43 < v38 - v44)
      {
        v25 = v45 - v43;
      }

      if (*(v47 + 19980) == 1)
      {
        while (v25)
        {
          v24 = *(v42 + v44);
          v7 = v43++;
          *(v46 + v7) = v24;
          if ((v24 & 0xFE) == 0xE8 || *(v47 + 20644) == 15 && (v24 & 0xF0) == 0x80)
          {
            *(v47 + 19980) = 2;
            break;
          }

          ++v44;
          *(v47 + 20644) = v24;
          --v25;
        }
      }

      if (!v25 || v43 == v45)
      {
        break;
      }

      *(v47 + 19980) = 1;
      v8 = v44++;
      v29 = *(v42 + v8);
      if (v29 == 232)
      {
        v28 = (v47 + 20128 + 2 * *(v47 + 20644));
      }

      else if (v29 == 233)
      {
        v28 = (v47 + 20640);
      }

      else
      {
        v28 = (v47 + 20642);
      }

      v26 = *v28;
      v27 = (*(v47 + 20648) >> 11) * v26;
      if (*(v47 + 20652) >= v27)
      {
        v23 = 0;
        v22 = 0;
        *(v47 + 20648) -= v27;
        *(v47 + 20652) -= v27;
        *v28 = v26 - (v26 >> 5);
        if (*(v47 + 20648) < 0x1000000u)
        {
          if (v34 == v33)
          {
            return -25;
          }

          *(v47 + 20648) <<= 8;
          v11 = *(v47 + 20652);
          v12 = v34++;
          *(v47 + 20652) = *v12 | (v11 << 8);
        }

        if (v29 == 232)
        {
          v22 = v41;
          if (v37 < 4)
          {
            return -25;
          }

          ++v41;
          v37 -= 4;
        }

        else
        {
          v22 = v40;
          if (v36 < 4)
          {
            return -25;
          }

          ++v40;
          v36 -= 4;
        }

        v23 = _byteswap_ulong(*v22) - (*(v47 + 20656) + v43 + 4);
        v19 = v23;
        v20 = BYTE2(v23);
        v13 = HIBYTE(v23);
        *(v47 + 20644) = HIBYTE(v23);
        v21 = v13;
        for (i = 0; ; ++i)
        {
          v17 = 0;
          if (i < 4)
          {
            v17 = v43 < v45;
          }

          if (!v17)
          {
            break;
          }

          v14 = *(&v19 + i);
          v15 = v43++;
          *(v46 + v15) = v14;
        }

        if (i < 4)
        {
          *(v47 + 19984) = 4 - i;
          while (i < 4)
          {
            v31 = i - 4 + *(v47 + 19984);
            *(v47 + 19992 + v31) = *(&v19 + i++);
          }

          break;
        }
      }

      else
      {
        *(v47 + 20648) = v27;
        *v28 = v26 + ((2048 - v26) >> 5);
        if (*(v47 + 20648) < 0x1000000u)
        {
          if (v34 == v33)
          {
            return -25;
          }

          *(v47 + 20648) <<= 8;
          v9 = *(v47 + 20652);
          v10 = v34++;
          *(v47 + 20652) = *v10 | (v9 << 8);
        }

        *(v47 + 20644) = v29;
      }
    }

    *(v47 + 20120) -= v44;
    *(v47 + 20072) = v37;
    *(v47 + 20080) = v36;
    *(v47 + 20088) = v33 - v34;
    *(v47 + 20656) += v43;
    return v43;
  }

  else
  {
    *(v47 + 20656) += v43;
    return v43;
  }
}

uint64_t ppmd_read(_DWORD **a1)
{
  v8 = a1;
  v7 = *a1;
  v6 = **(v7 + 259);
  v5 = 0;
  if (*(v6 + 19920) > 0)
  {
    v1 = *(v6 + 19912);
    *(v6 + 19912) = v1 + 1;
    v5 = *v1;
    goto LABEL_6;
  }

  v4 = 0;
  v3 = __archive_read_ahead(v7, *(v6 + 19936) + 1, &v4);
  if (v4 >= *(v6 + 19936) + 1)
  {
    ++*(v6 + 19912);
    v5 = *(v3 + *(v6 + 19936));
LABEL_6:
    --*(v6 + 19920);
    ++*(v6 + 19928);
    ++*(v6 + 19936);
    return v5;
  }

  archive_set_error(v7, 79, "Truncated 7z file data");
  *(v6 + 19968) = 1;
  return 0;
}

_BYTE *x86_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 5)
  {
    v15 = 0;
    v13 = *(a1 + 20000);
    v11 = *(a1 + 20008);
    v12 = *(a1 + 20012);
    while (1)
    {
      v10 = &v15[a2];
      v9 = a2 + a3 - 4;
      while (v10 < v9 && (*v10 & 0xFE) != 0xE8)
      {
        ++v10;
      }

      v16 = &v10[-a2];
      if (v10 >= v9)
      {
        *(a1 + 20000) = v13;
        *(a1 + 20008) = v11;
        *(a1 + 20012) += v16;
        return &v10[-a2];
      }

      v14 = v16 - v13;
      if (v14 <= 3)
      {
        v11 = (v11 << (v14 - 1)) & 7;
        if (!v11)
        {
          goto LABEL_17;
        }

        v8 = v10[4 - x86_Convert_kMaskToBitNumber[v11]];
        if (x86_Convert_kMaskToAllowedStatus[v11])
        {
          if (v8 && v8 != 255)
          {
            goto LABEL_17;
          }
        }

        v13 = &v10[-a2];
        v11 = (2 * v11) & 6 | 1;
        v15 = v16 + 1;
      }

      else
      {
        v11 = 0;
LABEL_17:
        v13 = &v10[-a2];
        if (v10[4] && v10[4] != 255)
        {
          v11 = (2 * v11) & 6 | 1;
          v15 = v16 + 1;
        }

        else
        {
          for (i = (v10[3] << 16) | (v10[4] << 24) | (v10[2] << 8) | v10[1]; ; i = v6 ^ ((1 << (32 - v4)) - 1))
          {
            v6 = i - (v12 + v16);
            if (!v11)
            {
              break;
            }

            v4 = 8 * x86_Convert_kMaskToBitNumber[v11];
            v5 = v6 >> (24 - v4);
            if (v5)
            {
              if (v5 != 255)
              {
                break;
              }
            }
          }

          v10[4] = ~((HIBYTE(v6) & 1) - 1);
          *(v10 + 1) = *(&v6 + 1);
          v10[1] = v6;
          v15 = v16 + 5;
        }
      }
    }
  }

  return 0;
}

uint64_t arm_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i + 4 <= a3; i += 4)
  {
    if (*(a2 + i + 3) == 235)
    {
      v4 = (4 * (*(a2 + i) | (*(a2 + i + 1) << 8) | (*(a2 + i + 2) << 16)) - (*(a1 + 20012) + i)) >> 2;
      *(a2 + i) = v4;
      *(a2 + i + 2) = BYTE2(v4);
    }
  }

  *(a1 + 20012) += i;
  return i;
}

uint64_t arm64_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i + 4 <= a3; i += 4)
  {
    v7 = *(a2 + i) | (*(a2 + i + 1) << 8) | (*(a2 + i + 2) << 16) | (*(a2 + i + 3) << 24);
    if (v7 >> 26 == 37)
    {
      v4 = v7 - ((*(a1 + 20012) + i) >> 2);
      v8 = v4 & 0x3FFFFFF | 0x94000000;
      *(a2 + i) = v4;
      *(a2 + i + 1) = BYTE1(v8);
      *(a2 + i + 2) = BYTE2(v8);
      *(a2 + i + 3) = HIBYTE(v8);
    }

    else if ((v7 & 0x9F000000) == 0x90000000)
    {
      v5 = (v7 >> 29) & 3 | (v7 >> 3) & 0x1FFFFC;
      if (((v5 + 0x20000) & 0x1C0000) == 0)
      {
        v6 = v5 - ((*(a1 + 20012) + i) >> 12);
        v9 = v7 & 0x9000001F | ((v6 & 3) << 29) | (8 * (v6 & 0x3FFFC)) | -(v6 & 0x20000) & 0xE00000;
        *(a2 + i) = v9;
        *(a2 + i + 2) = BYTE2(v9);
        *(a2 + i + 3) = HIBYTE(v9);
      }
    }
  }

  *(a1 + 20012) += i;
  return i;
}

uint64_t read_StreamsInfo(uint64_t a1, unint64_t *a2)
{
  v9 = **(a1 + 2072);
  __memset_chk();
  v8 = header_bytes(a1, 1uLL);
  if (v8)
  {
    if (*v8 == 6)
    {
      if ((read_PackInfo(a1, a2) & 0x80000000) != 0)
      {
        return -1;
      }

      if (!a2[5] || !a2[2])
      {
        return -1;
      }

      v5 = *a2;
      for (i = 0; i < a2[1]; ++i)
      {
        *(a2[5] + 8 * i) = v5;
        v5 += *(a2[2] + 8 * i);
        if (v5 > *(v9 + 128))
        {
          return -1;
        }
      }

      v8 = header_bytes(a1, 1uLL);
      if (!v8)
      {
        return -1;
      }
    }

    if (*v8 == 7)
    {
      if ((read_CodersInfo(a1, a2 + 6) & 0x80000000) != 0)
      {
        return -1;
      }

      v4 = 0;
      v3 = a2[7];
      for (j = 0; j < a2[6]; ++j)
      {
        *(v3 + 104 * j + 88) = v4;
        v4 += *(v3 + 104 * j + 32);
        if (v4 > a2[1])
        {
          return -1;
        }
      }

      v8 = header_bytes(a1, 1uLL);
      if (!v8)
      {
        return -1;
      }
    }

    if (*v8 == 8)
    {
      if ((read_SubStreamsInfo(a1, a2 + 9, a2[7], a2[6]) & 0x80000000) != 0)
      {
        return -1;
      }

      v8 = header_bytes(a1, 1uLL);
      if (!v8)
      {
        return -1;
      }
    }

    if (*v8)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t read_PackInfo(uint64_t a1, size_t *a2)
{
  __memset_chk();
  if ((parse_7zip_uint64(a1, a2) & 0x80000000) != 0)
  {
    return -1;
  }

  else if ((parse_7zip_uint64(a1, a2 + 1) & 0x80000000) != 0)
  {
    return -1;
  }

  else if (a2[1])
  {
    if (a2[1] <= 0x5F5E100)
    {
      v4 = header_bytes(a1, 1uLL);
      if (v4)
      {
        if (*v4)
        {
          if (*v4 == 9)
          {
            a2[2] = malloc_type_calloc(a2[1], 8uLL, 0x100004000313F17uLL);
            a2[5] = malloc_type_calloc(a2[1], 8uLL, 0x100004000313F17uLL);
            if (a2[2] && a2[5])
            {
              for (i = 0; i < a2[1]; ++i)
              {
                if ((parse_7zip_uint64(a1, (a2[2] + 8 * i)) & 0x80000000) != 0)
                {
                  return -1;
                }
              }

              v5 = header_bytes(a1, 1uLL);
              if (v5)
              {
                if (*v5)
                {
                  if (*v5 == 10)
                  {
                    if ((read_Digests(a1, a2 + 3, a2[1]) & 0x80000000) != 0)
                    {
                      return -1;
                    }

                    else
                    {
                      v6 = header_bytes(a1, 1uLL);
                      if (v6)
                      {
                        if (*v6)
                        {
                          return -1;
                        }

                        else
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        return -1;
                      }
                    }
                  }

                  else
                  {
                    return -1;
                  }
                }

                else
                {
                  a2[3] = malloc_type_calloc(a2[1], 1uLL, 0x100004077774924uLL);
                  a2[4] = malloc_type_calloc(a2[1], 4uLL, 0x100004052888210uLL);
                  if (a2[3] && a2[4])
                  {
                    return 0;
                  }

                  else
                  {
                    return -1;
                  }
                }
              }

              else
              {
                return -1;
              }
            }

            else
            {
              return -1;
            }
          }

          else
          {
            return -1;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t read_CodersInfo(_DWORD *a1, size_t *a2)
{
  v12 = a1;
  v11 = a2;
  __memset_chk();
  v8 = 0;
  v9 = 0;
  v10 = header_bytes(v12, 1uLL);
  if (!v10 || *v10 != 11 || (parse_7zip_uint64(v12, v11) & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  if (*v11 <= 0x5F5E100)
  {
    v10 = header_bytes(v12, 1uLL);
    if (v10)
    {
      if (*v10)
      {
        if (*v10 != 1)
        {
          goto LABEL_22;
        }

        if ((parse_7zip_uint64(v12, v11 + 2) & 0x80000000) != 0)
        {
          return -1;
        }

        if (v11[2] > 0x5F5E100)
        {
          return -1;
        }

        if (*v11)
        {
LABEL_22:
          archive_set_error(v12, -1, "Malformed 7-Zip archive");
          goto LABEL_44;
        }
      }

      else
      {
        v11[1] = malloc_type_calloc(*v11, 0x68uLL, 0x103004078E7D124uLL);
        if (!v11[1])
        {
          return -1;
        }

        for (i = 0; i < *v11; ++i)
        {
          if ((read_Folder(v12, (v11[1] + 104 * i)) & 0x80000000) != 0)
          {
            goto LABEL_44;
          }
        }
      }

      v10 = header_bytes(v12, 1uLL);
      if (v10 && *v10 == 12)
      {
        for (j = 0; j < *v11; ++j)
        {
          v4 = v11[1] + 104 * j;
          *(v4 + 64) = malloc_type_calloc(*(v4 + 56), 8uLL, 0x100004000313F17uLL);
          if (!*(v4 + 64))
          {
            goto LABEL_44;
          }

          for (k = 0; k < *(v4 + 56); ++k)
          {
            if ((parse_7zip_uint64(v12, (*(v4 + 64) + 8 * k)) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }
        }

        v10 = header_bytes(v12, 1uLL);
        if (v10)
        {
          if (!*v10)
          {
            return 0;
          }

          if (*v10 == 10 && (read_Digests(v12, &v8, *v11) & 0x80000000) == 0)
          {
            for (m = 0; m < *v11; ++m)
            {
              *(v11[1] + 104 * m + 72) = v8[m];
              *(v11[1] + 104 * m + 76) = *(v9 + 4 * m);
            }

            v10 = header_bytes(v12, 1uLL);
            if (v10)
            {
              if (!*v10)
              {
                free_Digest(&v8);
                return 0;
              }
            }
          }
        }
      }
    }

LABEL_44:
    free_Digest(&v8);
    return -1;
  }

  return -1;
}

uint64_t read_SubStreamsInfo(uint64_t a1, size_t *a2, uint64_t a3, size_t a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  v24 = 0;
  count = 0;
  v22 = 0;
  v20 = 0;
  __memset_chk();
  for (i = 0; i < v26; ++i)
  {
    *(v27 + 104 * i + 80) = 1;
  }

  v25 = header_bytes(v29, 1uLL);
  if (v25)
  {
    v22 = *v25;
    if (v22 == 13)
    {
      count = 0;
      for (i = 0; i < v26; ++i)
      {
        if ((parse_7zip_uint64(v29, (v27 + 104 * i + 80)) & 0x80000000) != 0)
        {
          return -1;
        }

        if (*(v27 + 104 * i + 80) > 0x5F5E100uLL)
        {
          return -1;
        }

        if (count > 0xFFFFFFFFFA0A1EFFLL)
        {
          return -1;
        }

        count += *(v27 + 104 * i + 80);
      }

      v25 = header_bytes(v29, 1uLL);
      if (!v25)
      {
        return -1;
      }

      v22 = *v25;
    }

    else
    {
      count = v26;
    }

    *v28 = count;
    if (!count || (v28[1] = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL), v28[2] = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL), v28[3] = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL), v28[1]) && v28[2] && v28[3])
    {
      v24 = v28[1];
      for (i = 0; i < v26; ++i)
      {
        j = 0;
        v18 = 0;
        if (*(v27 + 104 * i + 80))
        {
          v18 = 0;
          if (v22 == 9)
          {
            for (j = 1; j < *(v27 + 104 * i + 80); ++j)
            {
              if ((parse_7zip_uint64(v29, v24) & 0x80000000) != 0)
              {
                return -1;
              }

              v4 = v24++;
              v18 += *v4;
            }
          }

          v5 = folder_uncompressed_size((v27 + 104 * i));
          v6 = v24++;
          *v6 = v5 - v18;
        }
      }

      if (v22 == 9)
      {
        v25 = header_bytes(v29, 1uLL);
        if (!v25)
        {
          return -1;
        }

        v22 = *v25;
      }

      for (i = 0; i < count; ++i)
      {
        *(v28[2] + i) = 0;
        *(v28[3] + 4 * i) = 0;
      }

      v20 = 0;
      for (i = 0; i < v26; ++i)
      {
        if (*(v27 + 104 * i + 80) != 1 || !*(v27 + 104 * i + 72))
        {
          v20 += *(v27 + 104 * i + 80);
        }
      }

      if (v22 == 10)
      {
        v16 = 0;
        v17 = 0;
        v15 = v28[2];
        v14 = v28[3];
        v13 = 0;
        v16 = 0;
        v17 = 0;
        if ((read_Digests(v29, &v16, v20) & 0x80000000) != 0)
        {
          free_Digest(&v16);
          return -1;
        }

        for (i = 0; i < v26; ++i)
        {
          if (*(v27 + 104 * i + 80) == 1 && *(v27 + 104 * i + 72))
          {
            v7 = v15++;
            *v7 = 1;
            v8 = v14++;
            *v8 = *(v27 + 104 * i + 76);
          }

          else
          {
            for (k = 0; k < *(v27 + 104 * i + 80); ++k)
            {
              v9 = v15++;
              *v9 = v16[v13];
              v10 = v14++;
              *v10 = *(v17 + 4 * v13++);
            }
          }
        }

        free_Digest(&v16);
        v25 = header_bytes(v29, 1uLL);
        if (!v25)
        {
          return -1;
        }

        v22 = *v25;
      }

      if (v22)
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t parse_7zip_uint64(uint64_t a1, void *a2)
{
  v6 = header_bytes(a1, 1uLL);
  if (v6)
  {
    v5 = *v6;
    v4 = 0x80;
    *a2 = 0;
    for (i = 0; i < 8; ++i)
    {
      if ((v5 & v4) == 0)
      {
        *a2 += (v5 & (v4 - 1)) << (8 * i);
        break;
      }

      v7 = header_bytes(a1, 1uLL);
      if (!v7)
      {
        return -1;
      }

      *a2 |= *v7 << (8 * i);
      v4 = v4 >> 1;
    }

    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t read_Digests(uint64_t a1, void **a2, size_t a3)
{
  if (a3)
  {
    __memset_chk();
    *a2 = malloc_type_malloc(a3, 0x1612F874uLL);
    if (*a2)
    {
      v5 = header_bytes(a1, 1uLL);
      if (v5)
      {
        if (*v5)
        {
          __memset_chk();
        }

        else if ((read_Bools(a1, *a2, a3) & 0x80000000) != 0)
        {
          return -1;
        }

        a2[1] = malloc_type_calloc(a3, 4uLL, 0x100004052888210uLL);
        if (a2[1])
        {
          for (i = 0; i < a3; ++i)
          {
            if (*(*a2 + i))
            {
              v6 = header_bytes(a1, 4uLL);
              if (!v6)
              {
                return -1;
              }

              *(a2[1] + i) = archive_le32dec_0(v6);
            }
          }

          return 0;
        }

        else
        {
          return -1;
        }
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t read_Bools(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = 0;
  v4 = 0;
  for (i = 0; i < a3; ++i)
  {
    if (!v5)
    {
      v7 = header_bytes(a1, 1uLL);
      if (!v7)
      {
        return -1;
      }

      v4 = *v7;
      v5 = 128;
    }

    *(a2 + i) = (v4 & v5) != 0;
    v5 >>= 1;
  }

  return 0;
}

uint64_t read_Folder(uint64_t a1, size_t *a2)
{
  v15 = **(a1 + 2072);
  v12 = 0;
  v11 = 0;
  __memset_chk();
  if ((parse_7zip_uint64(a1, a2) & 0x80000000) != 0)
  {
    return -1;
  }

  else if (*a2 <= 4)
  {
    a2[1] = malloc_type_calloc(*a2, 0x28uLL, 0x10100403A7DB3B5uLL);
    if (a2[1])
    {
      for (i = 0; i < *a2; ++i)
      {
        v13 = header_bytes(a1, 1uLL);
        if (!v13)
        {
          return -1;
        }

        v6 = *v13 & 0xF;
        v5 = (*v13 & 0x10) == 0;
        v4 = *v13 & 0x20;
        if ((*v13 & 0x80) != 0)
        {
          return -1;
        }

        v14 = header_bytes(a1, v6);
        if (!v14)
        {
          return -1;
        }

        *(a2[1] + 40 * i) = decode_codec_id(v14, v6);
        if (v5)
        {
          *(a2[1] + 40 * i + 8) = 1;
          *(a2[1] + 40 * i + 16) = 1;
        }

        else
        {
          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 8)) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 8) > 0x5F5E100uLL)
          {
            return -1;
          }

          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 16)) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 16) > 0x5F5E100uLL)
          {
            return -1;
          }
        }

        if (v4)
        {
          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 24)) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 24) > 0x5F5E100uLL)
          {
            return -1;
          }

          if (!header_bytes(a1, *(a2[1] + 40 * i + 24)))
          {
            return -1;
          }

          *(a2[1] + 40 * i + 32) = malloc_type_malloc(*(a2[1] + 40 * i + 24), 0x21BCE65uLL);
          if (!*(a2[1] + 40 * i + 32))
          {
            return -1;
          }

          __memcpy_chk();
        }

        v12 += *(a2[1] + 40 * i + 8);
        v11 += *(a2[1] + 40 * i + 16);
      }

      if (v11 && v12 >= v11 - 1)
      {
        a2[2] = v11 - 1;
        if (*(v15 + 112) >= a2[2])
        {
          if (a2[2])
          {
            a2[3] = malloc_type_calloc(a2[2], 0x10uLL, 0x1000040451B5BE8uLL);
            if (!a2[3])
            {
              return -1;
            }
          }

          else
          {
            a2[3] = 0;
          }

          for (j = 0; j < a2[2]; ++j)
          {
            if ((parse_7zip_uint64(a1, (a2[3] + 16 * j)) & 0x80000000) != 0)
            {
              return -1;
            }

            if (*(a2[3] + 16 * j) > 0x5F5E100uLL)
            {
              return -1;
            }

            if ((parse_7zip_uint64(a1, (a2[3] + 16 * j + 8)) & 0x80000000) != 0)
            {
              return -1;
            }

            if (*(a2[3] + 16 * j + 8) > 0x5F5E100uLL)
            {
              return -1;
            }
          }

          a2[4] = v12 - a2[2];
          a2[5] = malloc_type_calloc(a2[4], 8uLL, 0x100004000313F17uLL);
          if (a2[5])
          {
            if (a2[4] == 1)
            {
              for (k = 0; k < v12; ++k)
              {
                  ;
                }

                if (m == a2[2])
                {
                  break;
                }
              }

              if (k == v12)
              {
                return -1;
              }

              *a2[5] = k;
            }

            else
            {
              for (n = 0; n < a2[4]; ++n)
              {
                if ((parse_7zip_uint64(a1, (a2[5] + 8 * n)) & 0x80000000) != 0)
                {
                  return -1;
                }

                if (*(a2[5] + 8 * n) > 0x5F5E100uLL)
                {
                  return -1;
                }
              }
            }

            a2[6] = v12;
            a2[7] = v11;
            return 0;
          }

          return -1;
        }

        else
        {
          return -1;
        }
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t decode_codec_id(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  for (i = 0; i < a2; ++i)
  {
    v3 = (v3 << 8) + *(a1 + i);
  }

  return v3;
}

uint64_t folder_uncompressed_size(void *a1)
{
  v4 = a1[7];
  v3 = a1[2];
  while ((--v4 & 0x80000000) == 0)
  {
      ;
    }

    if (i >= v3)
    {
      return *(a1[8] + 8 * v4);
    }
  }

  return 0;
}

uint64_t init_decompression(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  *(a2 + 296) = *a3;
  *(v19 + 304) = -1;
  v7 = *(v19 + 296);
  if ((!v7 || v7 == 197633 || v7 == 262408 || v7 == 262658 || v7 == 83300609) && v17)
  {
    if (*v17 != 50528515 && *v17 != 50528539 && *v17 != 50529537 && *v17 != 10)
    {
      archive_set_error(v20, -1, "Unsupported filter %lx for %lx", *v17, *v18);
      return -25;
    }

    *(v19 + 304) = *v17;
    *(v19 + 19980) = 0;
    if (*v17 == 50528515)
    {
      x86_Init(v19);
    }

    else if (*v17 == 50529537)
    {
      arm_Init(v19);
    }
  }

  v6 = *(v19 + 296);
  switch(v6)
  {
    case 0:
      return 0;
    case 3:
    case 10:
      goto LABEL_105;
    case 33:
    case 196865:
      memset(__b, 0, 0x28uLL);
      v12 = 0;
      if (*(v19 + 448))
      {
        lzma_end();
        *(v19 + 448) = 0;
      }

      if (v17)
      {
        *(v19 + 304) = *v17;
        v23 = 0;
        v5 = *(v19 + 304);
        switch(v5)
        {
          case 3:
            if (*(v17 + 24) != 1)
            {
              archive_set_error(v20, -1, "Invalid Delta parameter");
              return -25;
            }

            v22 = 3;
            memset(__b, 0, 0x28uLL);
            __b[0] = 0;
            __b[1] = **(v17 + 32) + 1;
            v23 = __b;
            v12 = 1;
            break;
          case 10:
            v22 = 10;
            v12 = 1;
            break;
          case 50528515:
            if (*(v19 + 296) == 33)
            {
              v22 = 4;
              v12 = 1;
            }

            else
            {
              x86_Init(v19);
            }

            break;
          case 50528539:
            *(v19 + 19980) = 0;
            break;
          case 50528773:
            v22 = 5;
            v12 = 1;
            break;
          case 50529281:
            v22 = 6;
            v12 = 1;
            break;
          case 50529537:
            v22 = 7;
            v12 = 1;
            break;
          case 50530049:
            v22 = 8;
            v12 = 1;
            break;
          case 50530309:
            v22 = 9;
            v12 = 1;
            break;
          default:
            archive_set_error(v20, -1, "Unexpected codec ID: %lX", *(v19 + 304));
            return -25;
        }
      }

      if (*(v19 + 296) == 33)
      {
        *(&v22 + 2 * v12) = 33;
      }

      else
      {
        *(&v22 + 2 * v12) = 0x4000000000000001;
      }

      *(&v22 + 2 * v12 + 1) = 0;
      v14 = &v22 + 2 * v12;
      v16 = lzma_properties_decode();
      if (v16 || (v13 = v12 + 1, *(&v22 + 2 * v13) = -1, *(&v22 + 2 * v13 + 1) = 0, v16 = lzma_raw_decoder(), free(v14[1]), v16))
      {
        set_error(v20, v16);
        return -25;
      }

      *(v19 + 448) = 1;
      *(v19 + 328) = 0;
      *(v19 + 352) = 0;
      return 0;
    case 197633:
      if (*(v19 + 19976))
      {
        off_1F3DE4D70(v19 + 664);
        *(v19 + 19976) = 0;
      }

      if (v18[3] < 5uLL || (v9 = *v18[4], v8 = archive_le32dec_0((v18[4] + 1)), v9 < 2) || v9 > 0x40 || v8 < 0x800 || v8 > 0xFFFFFFDB)
      {
        archive_set_error(v20, -1, "Malformed PPMd parameter");
        return -25;
      }

      __archive_ppmd7_functions(v19 + 664);
      if (!(off_1F3DE4D68[0])(v19 + 664, v8))
      {
        archive_set_error(v20, 12, "Coludn't allocate memory for PPMd");
        return -30;
      }

      off_1F3DE4D78(v19 + 664, v9);
      (off_1F3DE4D80[0])((v19 + 19848));
      *(v19 + 19976) = 1;
      *(v19 + 660) = 0;
      *(v19 + 19968) = 0;
      *(v19 + 19928) = 0;
      *(v19 + 19960) = 0;
      return 0;
    case 262408:
      if (*(v19 + 656))
      {
        v16 = inflateReset((v19 + 544));
      }

      else
      {
        v16 = inflateInit2_((v19 + 544), -15, "1.2.12", 112);
      }

      if (v16)
      {
        archive_set_error(v20, -1, "Couldn't initialize zlib stream.");
        return -25;
      }

      *(v19 + 656) = 1;
      *(v19 + 560) = 0;
      *(v19 + 584) = 0;
      return 0;
  }

  if (v6 != 262658)
  {
    if (v6 != 50528515 && v6 != 50528539 && v6 != 50528773 && v6 != 50529281 && v6 != 50529537 && v6 != 50530049 && v6 != 50530309)
    {
      if (v6 == 83300609)
      {
        archive_set_error(v20, -1, "ZSTD codec is unsupported");
        return -25;
      }

      else if (v6 == 116457729 || v6 == 116458243 || v6 == 116459265)
      {
        if (*(v20 + 18))
        {
          archive_entry_set_is_metadata_encrypted(*(v20 + 18), 1);
          archive_entry_set_is_data_encrypted(*(v20 + 18), 1);
          *(v19 + 20736) = 1;
        }

        archive_set_error(v20, -1, "Crypto codec not supported yet (ID: 0x%lX)", *(v19 + 296));
        return -25;
      }

      else
      {
        archive_set_error(v20, -1, "Unknown codec ID: %lX", *(v19 + 296));
        return -25;
      }
    }

LABEL_105:
    archive_set_error(v20, -1, "Unexpected codec ID: %lX", *(v19 + 296));
    return -25;
  }

  if (*(v19 + 536))
  {
    BZ2_bzDecompressEnd((v19 + 456));
    *(v19 + 536) = 0;
  }

  v16 = BZ2_bzDecompressInit((v19 + 456), 0, 0);
  if (v16 == -3)
  {
    v16 = BZ2_bzDecompressInit((v19 + 456), 0, 1);
  }

  if (!v16)
  {
    *(v19 + 536) = 1;
    *(v19 + 468) = 0;
    *(v19 + 472) = 0;
    *(v19 + 492) = 0;
    *(v19 + 496) = 0;
    return 0;
  }

  v11 = -1;
  v10 = 0;
  switch(v16)
  {
    case 0xFFFFFFF7:
      v10 = "mis-compiled library";
      break;
    case 0xFFFFFFFD:
      v11 = 12;
      v10 = "out of memory";
      break;
    case 0xFFFFFFFE:
      v10 = "invalid setup parameter";
      break;
  }

  if (v10)
  {
    archive_set_error(v20, v11, "Internal error initializing decompressor: %s", v10);
  }

  else
  {
    archive_set_error(v20, v11, "Internal error initializing decompressor: %s", "??");
  }

  *(v19 + 536) = 0;
  return -25;
}

uint64_t x86_Init(uint64_t result)
{
  *(result + 19980) = 0;
  *(result + 20000) = -1;
  *(result + 20008) = 0;
  *(result + 20012) = 5;
  return result;
}

_DWORD *set_error(_DWORD *result, unsigned int a2)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 5u:
        return archive_set_error(result, 12, "Lzma library error: Cannot allocate memory");
      case 6u:
        return archive_set_error(result, 12, "Lzma library error: Out of memory");
      case 7u:
        return archive_set_error(result, -1, "Lzma library error: format not recognized");
      case 8u:
        return archive_set_error(result, -1, "Lzma library error: Invalid options");
      case 9u:
        return archive_set_error(result, -1, "Lzma library error: Corrupted input data");
      case 0xAu:
        return archive_set_error(result, -1, "Lzma library error:  No progress is possible");
      default:
        return archive_set_error(result, -1, "Lzma decompression failed:  Unknown error");
    }
  }

  return result;
}

void free_Folder(uint64_t a1)
{
  if (*(a1 + 8))
  {
    for (i = 0; i < *a1; ++i)
    {
      free(*(*(a1 + 8) + 40 * i + 32));
    }

    free(*(a1 + 8));
  }

  free(*(a1 + 24));
  free(*(a1 + 40));
  free(*(a1 + 64));
}

uint64_t read_Times(uint64_t a1, void *a2, int a3)
{
  v13 = **(a1 + 2072);
  v9 = *(v13 + 160);
  v8 = malloc_type_calloc(*(v13 + 152), 1uLL, 0x100004077774924uLL);
  if (!v8)
  {
    return -1;
  }

  v10 = header_bytes(a1, 1uLL);
  if (!v10)
  {
    goto LABEL_24;
  }

  if (!*v10)
  {
    if ((read_Bools(a1, v8, *(v13 + 152)) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    free(v8);
    return -1;
  }

  __memset_chk();
LABEL_7:
  v11 = header_bytes(a1, 1uLL);
  if (!v11 || *v11 && ((parse_7zip_uint64(a1, a2) & 0x80000000) != 0 || *a2 > 0x5F5E100uLL))
  {
    goto LABEL_24;
  }

  for (i = 0; i < *(v13 + 152); ++i)
  {
    if (*(v8 + i))
    {
      v12 = header_bytes(a1, 8uLL);
      if (!v12)
      {
        goto LABEL_24;
      }

      switch(a3)
      {
        case 18:
          v3 = archive_le64dec(v12);
          fileTimeToUtc(v3, (v9 + 88 * i + 48), (v9 + 88 * i + 72));
          *(v9 + 88 * i + 24) |= 4u;
          break;
        case 19:
          v4 = archive_le64dec(v12);
          fileTimeToUtc(v4, (v9 + 88 * i + 40), (v9 + 88 * i + 64));
          *(v9 + 88 * i + 24) |= 2u;
          break;
        case 20:
          v5 = archive_le64dec(v12);
          fileTimeToUtc(v5, (v9 + 88 * i + 32), (v9 + 88 * i + 56));
          *(v9 + 88 * i + 24) |= 1u;
          break;
      }
    }
  }

  free(v8);
  return 0;
}

unint64_t fileTimeToUtc(unint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0x19DB1DED53E8000)
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    *a2 = (result - 116444736000000000) / 0x989680;
    *a3 = 100 * ((result - 116444736000000000) % 0x989680);
  }

  return result;
}

uint64_t skip_stream(uint64_t a1, unint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v7 = **(a1 + 2072);
  v6 = 0;
  v4 = a2;
  if (*(v7 + 256))
  {
    while (v4)
    {
      v5 = read_stream(v9, &v6, v4, 0);
      if (v5 < 0)
      {
        return v5;
      }

      if (!v5)
      {
        archive_set_error(v9, 79, "Truncated 7-Zip file body");
        return -30;
      }

      v4 -= v5;
      if (*(v7 + 288))
      {
        read_consume(v9);
      }
    }

    return v8;
  }

  else
  {
    v2 = *(v7 + 56) + 104 * *(*(v7 + 168) + 16);
    *(v2 + 96) += v8;
    return v8;
  }
}

uint64_t archive_read_disk_gname(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_gname"))
  {
    return 0;
  }

  if (*(a1 + 200))
  {
    return (*(a1 + 200))(*(a1 + 216), a2);
  }

  return 0;
}

uint64_t archive_read_disk_uname(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_uname"))
  {
    return 0;
  }

  if (*(a1 + 224))
  {
    return (*(a1 + 224))(*(a1 + 240), a2);
  }

  return 0;
}

uint64_t archive_read_disk_set_gname_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_gname_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 208) && *(a1 + 216))
    {
      (*(a1 + 208))(*(a1 + 216));
    }

    *(a1 + 200) = a3;
    *(a1 + 208) = a4;
    *(a1 + 216) = a2;
    return 0;
  }
}

uint64_t archive_read_disk_set_uname_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_uname_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 232) && *(a1 + 240))
    {
      (*(a1 + 232))(*(a1 + 240));
    }

    *(a1 + 224) = a3;
    *(a1 + 232) = a4;
    *(a1 + 240) = a2;
    return 0;
  }
}

_DWORD *archive_read_disk_new()
{
  v1 = malloc_type_calloc(1uLL, 0x120uLL, 0x10F00405526A199uLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 195932357;
  v1[1] = 1;
  *(v1 + 1) = archive_read_disk_vtable;
  *(v1 + 18) = archive_entry_new2(v1);
  *(v1 + 28) = trivial_lookup_uname;
  *(v1 + 25) = trivial_lookup_gname;
  v1[48] = 4;
  *(v1 + 21) = open_on_current_dir;
  *(v1 + 22) = tree_current_dir_fd;
  *(v1 + 23) = tree_enter_working_dir;
  return v1;
}

uint64_t tree_enter_working_dir(_DWORD *a1)
{
  v2 = 0;
  if (a1[22] > 0 && (a1[8] & 0x40) == 0)
  {
    v2 = fchdir(a1[26]);
    if (!v2)
    {
      a1[8] &= ~0x100u;
      a1[8] |= 0x40u;
    }
  }

  return v2;
}

uint64_t archive_read_disk_set_symlink_logical(unsigned int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_logical") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 76, 1);
    return 0;
  }
}

uint64_t setup_symlink_mode(uint64_t result, char a2, char a3)
{
  *(result + 152) = a2;
  *(result + 153) = a3;
  if (*(result + 160))
  {
    *(*(result + 160) + 480) = *(result + 152);
    *(*(result + 160) + 481) = *(result + 152);
  }

  return result;
}

uint64_t archive_read_disk_set_symlink_physical(unsigned int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_physical") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 80, 0);
    return 0;
  }
}

uint64_t archive_read_disk_set_symlink_hybrid(unsigned int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_hybrid") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 72, 1);
    return 0;
  }
}

uint64_t archive_read_disk_set_atime_restored(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_restore_atime") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) |= 1u;
    if (*(a1 + 160))
    {
      *(*(a1 + 160) + 32) |= 0x80u;
    }

    return 0;
  }
}

uint64_t archive_read_disk_set_behavior(uint64_t a1, int a2)
{
  v3 = 0;
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_honor_nodump") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) = a2;
    if (a2)
    {
      return archive_read_disk_set_atime_restored(a1);
    }

    if (*(a1 + 160))
    {
      *(*(a1 + 160) + 32) &= ~0x80u;
    }

    return v3;
  }
}

uint64_t archive_read_disk_set_matching(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_matching") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 264) = a2;
    *(a1 + 272) = a3;
    *(a1 + 280) = a4;
    return 0;
  }
}

uint64_t archive_read_disk_set_metadata_filter_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_metadata_filter_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 248) = a2;
    *(a1 + 256) = a3;
    return 0;
  }
}

uint64_t archive_read_disk_can_descend(uint64_t a1)
{
  v3 = *(a1 + 160);
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_disk_can_descend") == -30)
  {
    return -30;
  }

  else
  {
    v2 = 0;
    if (*(v3 + 36) == 1)
    {
      return *(v3 + 400) != 0;
    }

    return v2;
  }
}

uint64_t archive_read_disk_descend(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_disk_descend") == -30)
  {
    return -30;
  }

  else if (archive_read_disk_can_descend(a1))
  {
    if (tree_current_is_physical_dir(v2))
    {
      tree_push(v2, *(v2 + 72), *(v2 + 508), *(v2 + 112), *(v2 + 120), v2 + 408);
      if (*(*(*v2 + 16) + 16))
      {
        *(*v2 + 72) |= 1u;
      }

      else
      {
        *(*v2 + 72) |= 2u;
      }
    }

    else if (tree_current_is_dir(v2))
    {
      tree_push(v2, *(v2 + 72), *(v2 + 508), *(v2 + 256), *(v2 + 264), v2 + 408);
      *(*v2 + 72) |= 2u;
    }

    *(v2 + 400) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL tree_current_is_physical_dir(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    v2 = tree_current_stat(a1);
    if (!v2)
    {
      return 0;
    }

    if ((*(v2 + 4) & 0xF000) != 0x4000)
    {
      return 0;
    }
  }

  v3 = tree_current_lstat(a1);
  return v3 && (*(v3 + 4) & 0xF000) == 0x4000;
}

void *tree_push(void *a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = malloc_type_calloc(1uLL, 0x88uLL, 0x10700402F4187EFuLL);
  if (!v9)
  {
    __archive_errx(1, "Out of memory");
  }

  v9[1] = *a1;
  v9[2] = a1[1];
  if (v9[2])
  {
    *v9 = *v9[2] + 1;
  }

  *a1 = v9;
  v9[3] = 0;
  v9[4] = 0;
  v9[5] = 0;
  *(v9 + 20) = -1;
  v9[4] = 0;
  v8 = v9 + 3;
  if (a2)
  {
    v7 = strlen(a2);
    result = archive_strncat(v8, a2, v7);
  }

  else
  {
    result = archive_strncat(v8, 0, 0);
  }

  *(v9 + 18) = 56;
  *(v9 + 19) = a3;
  v9[7] = a4;
  v9[8] = a5;
  v9[6] = a1[10];
  v9[11] = v9[3];
  if (a6)
  {
    v9[12] = *(a6 + 8);
    v9[13] = *(a6 + 16);
    v9[14] = *(a6 + 24);
    v9[15] = *(a6 + 32);
    *(v9 + 64) = *(a6 + 40);
    *(v9 + 33) = *(a6 + 44);
  }

  return result;
}

BOOL tree_current_is_dir(uint64_t a1)
{
  if ((*(a1 + 32) & 0x20) != 0)
  {
    v2 = tree_current_lstat(a1);
    if (!v2)
    {
      return 0;
    }

    if ((*(v2 + 4) & 0xF000) == 0x4000)
    {
      return 1;
    }

    if ((*(v2 + 4) & 0xF000) != 0xA000)
    {
      return 0;
    }
  }

  v3 = tree_current_stat(a1);
  return v3 && (*(v3 + 4) & 0xF000) == 0x4000;
}

uint64_t archive_read_disk_open(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 195932357, 33, "archive_read_disk_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    return _archive_read_disk_open(a1, a2);
  }
}

uint64_t _archive_read_disk_open(uint64_t a1, char *a2)
{
  if (*(a1 + 160))
  {
    v2 = tree_reopen(*(a1 + 160), a2, *(a1 + 192) & 1);
  }

  else
  {
    v2 = tree_open(a2, *(a1 + 152), *(a1 + 192) & 1);
  }

  *(a1 + 160) = v2;
  if (*(a1 + 160))
  {
    *(a1 + 4) = 2;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate tar data");
    *(a1 + 4) = 0x8000;
    return -30;
  }
}

uint64_t archive_read_disk_open_w(_DWORD *a1, __int32 *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = a1;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (__archive_check_magic(a1, 195932357, 33, "archive_read_disk_open_w") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(v8);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v2 = wcslen(v9);
    if (archive_string_append_from_wcs(&v5, v9, v2))
    {
      if (*__error() == 12)
      {
        archive_set_error(v8, 12, "Can't allocate memory");
      }

      else
      {
        archive_set_error(v8, -1, "Can't convert a path to a char string");
      }

      v8[1] = 0x8000;
      disk_open = -30;
    }

    else
    {
      disk_open = _archive_read_disk_open(v10, v5);
    }

    archive_string_free(&v5);
    return disk_open;
  }
}

uint64_t archive_read_disk_current_filesystem(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(a1 + 160) + 508);
  }
}

uint64_t archive_read_disk_current_filesystem_is_synthetic(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(*(a1 + 160) + 488) + 8);
  }
}

uint64_t archive_read_disk_current_filesystem_is_remote(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(*(a1 + 160) + 488) + 12);
  }
}

void tree_close(uint64_t result)
{
  if (result)
  {
    if ((*(result + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(result + 520), result, result + 408);
      *(result + 520) = -1;
    }

    if (*(result + 16))
    {
      closedir(*(result + 16));
      *(result + 16) = 0;
    }

    while (*result)
    {
      if ((*(*result + 72) & 2) != 0)
      {
        close(*(*result + 80));
      }

      tree_pop(result);
    }

    if ((*(result + 104) & 0x80000000) == 0)
    {
      close(*(result + 104));
      *(result + 104) = -1;
    }

    if ((*(result + 100) & 0x80000000) == 0)
    {
      close(*(result + 100));
      *(result + 100) = -1;
    }
  }
}

uint64_t close_and_restore_time(int a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 32) & 0x80) != 0 && !*(a3 + 44))
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16) / 1000;
    v7.tv_sec = *(a3 + 24);
    v7.tv_usec = *(a3 + 32) / 1000;
    if (futimes(a1, &v7))
    {
      close(a1);
      if (lutimes(*a3, &v7))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return close(a1);
    }
  }

  else if (a1 < 0)
  {
    return 0;
  }

  else
  {
    return close(a1);
  }
}

void tree_pop(void *a1)
{
  *(a1[6] + a1[10]) = 0;
  a1[7] = a1[10];
  if (*a1 == a1[1] && a1[1])
  {
    a1[1] = *(a1[1] + 16);
  }

  v1 = *a1;
  *a1 = *(*a1 + 8);
  a1[10] = v1[6];
    ;
  }

  archive_string_free((v1 + 3));
  free(v1);
}

void tree_free(uint64_t a1)
{
  if (a1)
  {
    archive_string_free(a1 + 48);
    free(*(a1 + 456));
    for (i = 0; i < *(a1 + 512); ++i)
    {
      free(*(*(a1 + 496) + 80 * i + 56));
    }

    free(*(a1 + 496));
    free(a1);
  }
}

uint64_t next_entry_0(unsigned int **a1, uint64_t a2, uint64_t *a3)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  disk_uname = 0;
  is_physical_dir = 0;
  matched = 0;
  v48 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v51 = 0;
  v50 = 0;
  *(a2 + 400) = 0;
  do
  {
    v39 = tree_next(v53);
    switch(v39)
    {
      case -2:
        v38 = v54;
        v37 = *(v53 + 40);
        v3 = tree_current_path(v53);
        archive_set_error(v38, v37, "%s: Unable to continue traversing directory tree", v3);
        *(v54 + 1) = 0x8000;
        tree_enter_initial_dir(v53);
        return -30;
      case -1:
        v36 = v54;
        v35 = *(v53 + 40);
        v4 = tree_current_path(v53);
        archive_set_error(v36, v35, "%s: Couldn't visit directory", v4);
        tree_enter_initial_dir(v53);
        return -25;
      case 0:
        tree_enter_initial_dir(v53);
        return 1;
      case 1:
        v50 = tree_current_lstat(v53);
        if (!v50)
        {
          if (*__error() != 2 || *(v53 + 88) <= 0)
          {
            v34 = v54;
            v33 = *__error();
            v7 = tree_current_path(v53);
            archive_set_error(v34, v33, "%s: Cannot stat", v7);
            tree_enter_initial_dir(v53);
            return -25;
          }

          v48 = -20;
          v47 = *__error();
          if (v43)
          {
            v6 = tree_current_path(v53);
            archive_string_sprintf(&v42, " %s", v6);
          }

          else
          {
            v5 = tree_current_path(v53);
            archive_string_sprintf(&v42, "%s", v5);
          }
        }

        break;
    }
  }

  while (!v50);
  if ((v54[24] & 4) != 0)
  {
    v8 = tree_current_path(v53);
    v40 = strrchr(v8, 47);
    v41 = v40 ? v40 + 1 : tree_current_path(v53);
    if (*v41 == 46 && v41[1] == 95)
    {
      return -10;
    }
  }

  v32 = v52;
  v9 = tree_current_path(v53);
  archive_entry_copy_pathname(v32, v9);
  if (v54[33])
  {
    matched = archive_match_path_excluded(v54[33], v52);
    if ((matched & 0x80000000) != 0)
    {
      v31 = v54;
      v30 = *__error();
      v10 = archive_error_string(v54[33]);
      archive_set_error(v31, v30, "Failed : %s", v10);
      return matched;
    }

    if (matched)
    {
      if (v54[34])
      {
        (v54[34])(v54, v54[35], v52);
      }

      return -10;
    }
  }

  v29 = *(v53 + 481);
  if (v29 == 72)
  {
    *(v53 + 481) = 80;
  }

  else if (v29 != 76)
  {
LABEL_38:
    is_physical_dir = tree_current_is_physical_dir(v53);
    *(v54 + 152) = 80;
    *(v54 + 153) = 0;
    v51 = v50;
    goto LABEL_39;
  }

  is_physical_dir = tree_current_is_dir(v53);
  *(v54 + 152) = 76;
  *(v54 + 153) = 1;
  v51 = tree_current_stat(v53);
  if (!v51 || tree_target_is_same_as_parent(v53, v51))
  {
    goto LABEL_38;
  }

LABEL_39:
  if (update_current_filesystem(v54, v51->st_dev))
  {
    *(v54 + 1) = 0x8000;
    tree_enter_initial_dir(v53);
    return -30;
  }

  else
  {
    if (*(v53 + 504) == -1)
    {
      *(v53 + 504) = *(v53 + 508);
    }

    if ((v54[24] & 8) != 0 && *(v53 + 504) != *(v53 + 508))
    {
      is_physical_dir = 0;
    }

    *(v53 + 400) = is_physical_dir;
    if (v54[24] & 2) != 0 && (v51->st_flags)
    {
      return -10;
    }

    else
    {
      archive_entry_copy_stat(v52, v51);
      v11 = archive_entry_mtime(v52);
      *(v53 + 416) = v11;
      v12 = archive_entry_mtime_nsec(v52);
      *(v53 + 424) = v12;
      v13 = archive_entry_atime(v52);
      *(v53 + 432) = v13;
      v14 = archive_entry_atime_nsec(v52);
      *(v53 + 440) = v14;
      v15 = archive_entry_filetype(v52);
      *(v53 + 448) = v15;
      *(v53 + 452) = *(*(v53 + 488) + 16);
      if (!v54[33])
      {
        goto LABEL_56;
      }

      matched = archive_match_time_excluded(v54[33], v52);
      if ((matched & 0x80000000) != 0)
      {
        v28 = v54;
        v27 = *__error();
        v16 = archive_error_string(v54[33]);
        archive_set_error(v28, v27, "Failed : %s", v16);
        return matched;
      }

      if (matched)
      {
        if (v54[34])
        {
          (v54[34])(v54, v54[35], v52);
        }

        return -10;
      }

      else
      {
LABEL_56:
        v26 = v54;
        v17 = archive_entry_uid(v52);
        disk_uname = archive_read_disk_uname(v26, v17);
        if (disk_uname)
        {
          archive_entry_copy_uname(v52, disk_uname);
        }

        v25 = v54;
        v18 = archive_entry_gid(v52);
        disk_uname = archive_read_disk_gname(v25, v18);
        if (disk_uname)
        {
          archive_entry_copy_gname(v52, disk_uname);
        }

        if (!v54[33])
        {
          goto LABEL_77;
        }

        matched = archive_match_owner_excluded(v54[33], v52);
        if ((matched & 0x80000000) != 0)
        {
          v24 = v54;
          v23 = *__error();
          v19 = archive_error_string(v54[33]);
          archive_set_error(v24, v23, "Failed : %s", v19);
          return matched;
        }

        if (matched)
        {
          if (v54[34])
          {
            (v54[34])(v54, v54[35], v52);
          }

          return -10;
        }

        else
        {
LABEL_77:
          if (!v54[31] || (v54[31])(v54, v54[32], v52))
          {
            v22 = v52;
            v20 = tree_current_access_path(v53);
            archive_entry_copy_sourcepath(v22, v20);
            matched = archive_read_disk_entry_from_file(v54, v52, *(v53 + 520), v51);
            if (!matched)
            {
              matched = v48;
              if (v48)
              {
                archive_string_sprintf(&v42, ": %s", "File removed before we read it");
                archive_set_error(v54, v47, "%s", v42);
              }
            }

            archive_string_free(&v42);
            return matched;
          }

          else
          {
            return -10;
          }
        }
      }
    }
  }
}

uint64_t tree_enter_initial_dir(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 32) & 0x100) == 0)
  {
    v2 = fchdir(*(a1 + 100));
    if (!v2)
    {
      *(a1 + 32) &= ~0x40u;
      *(a1 + 32) |= 0x100u;
    }
  }

  return v2;
}

uint64_t setup_sparse(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = *(a1 + 160);
  v7 = 0;
  v6 = 0;
  *(v8 + 472) = archive_entry_sparse_reset(a2);
  if (*(v8 + 472) + 1 <= *(v8 + 476) || (free(*(v8 + 456)), *(v8 + 476) = *(v8 + 472) + 1, (*(v8 + 456) = malloc_type_malloc(16 * *(v8 + 476), 0x1000040451B5BE8uLL)) != 0))
  {
    for (i = 0; i < *(v8 + 472); ++i)
    {
      archive_entry_sparse_next(v9, &v6, &v7);
      *(*(v8 + 456) + 16 * i + 8) = v6;
      *(*(v8 + 456) + 16 * i) = v7;
    }

    if (i)
    {
      v3 = archive_entry_size(v9);
      *(*(v8 + 456) + 16 * i + 8) = v3;
      *(*(v8 + 456) + 16 * i) = 0;
    }

    else
    {
      *(*(v8 + 456) + 8) = 0;
      v2 = archive_entry_size(v9);
      **(v8 + 456) = v2;
    }

    *(v8 + 464) = *(v8 + 456);
    return 0;
  }

  else
  {
    *(v8 + 476) = 0;
    archive_set_error(v10, 12, "Can't allocate data");
    v10[1] = 0x8000;
    return -30;
  }
}

uint64_t tree_next(uint64_t a1)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!*a1)
        {
          *(a1 + 36) = 0;
          return 0;
        }

        if (!*(a1 + 16))
        {
          break;
        }

        posix = tree_dir_next_posix(a1);
        if (posix)
        {
          return posix;
        }
      }

      if ((*(*a1 + 72) & 4) != 0)
      {
        *(a1 + 8) = *a1;
        tree_append(a1, *(*a1 + 24), *(*a1 + 32));
        *(*a1 + 72) &= ~4u;
        *(a1 + 36) = 1;
        return 1;
      }

      if ((*(*a1 + 72) & 8) != 0)
      {
        *(a1 + 8) = *a1;
        tree_append(a1, *(*a1 + 24), *(*a1 + 32));
        *(*a1 + 72) &= ~8u;
        v4 = tree_descent(a1);
        if (v4)
        {
          tree_pop(a1);
          *(a1 + 36) = v4;
        }

        else
        {
          *(a1 + 36) = 2;
        }

        return *(a1 + 36);
      }

      if ((*(*a1 + 72) & 0x10) == 0)
      {
        break;
      }

      *(*a1 + 72) &= ~0x10u;
      v5 = tree_dir_next_posix(a1);
      if (v5)
      {
        return v5;
      }
    }

    if ((*(*a1 + 72) & 0x20) != 0)
    {
      break;
    }

    tree_pop(a1);
    *(a1 + 32) &= ~0x20u;
    *(a1 + 32) &= ~0x10u;
  }

  v6 = tree_ascend(a1);
  tree_pop(a1);
  if (v6)
  {
    v2 = v6;
  }

  else
  {
    v2 = 3;
  }

  *(a1 + 36) = v2;
  return *(a1 + 36);
}

uint64_t tree_current_lstat(uint64_t a1)
{
  if ((*(a1 + 32) & 0x20) != 0)
  {
    return a1 + 112;
  }

  v3 = tree_current_dir_fd(a1);
  v1 = tree_current_access_path(a1);
  if (!fstatat(v3, v1, (a1 + 112), 32))
  {
    *(a1 + 32) |= 0x20u;
    return a1 + 112;
  }

  return 0;
}

uint64_t tree_current_stat(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    return a1 + 256;
  }

  v3 = tree_current_dir_fd(a1);
  v1 = tree_current_access_path(a1);
  if (!fstatat(v3, v1, (a1 + 256), 0))
  {
    *(a1 + 32) |= 0x10u;
    return a1 + 256;
  }

  return 0;
}

uint64_t tree_target_is_same_as_parent(uint64_t a1, uint64_t a2)
{
  for (i = *(*(a1 + 8) + 16); i; i = i[2])
  {
    if (i[7] == *a2 && i[8] == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t update_current_filesystem(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 160);
  if (!*(v8 + 488) || **(v8 + 488) != a2)
  {
    for (i = 0; i < *(v8 + 512); ++i)
    {
      if (*(*(v8 + 496) + 80 * i) == a2)
      {
        *(v8 + 508) = i;
        *(v8 + 488) = *(v8 + 496) + 80 * i;
        return 0;
      }
    }

    v2 = *(v8 + 512);
    *(v8 + 512) = v2 + 1;
    v6 = v2;
    if (*(v8 + 512) > *(v8 + 516))
    {
      v5 = 2 * *(v8 + 512);
      v4 = malloc_type_realloc(*(v8 + 496), 80 * v5, 0x10100409FF3D57FuLL);
      if (!v4)
      {
        archive_set_error(a1, 12, "Can't allocate tar data");
        return -30;
      }

      *(v8 + 496) = v4;
      *(v8 + 516) = v5;
    }

    *(v8 + 508) = v6;
    *(v8 + 488) = *(v8 + 496) + 80 * v6;
    **(v8 + 488) = a2;
    *(*(v8 + 488) + 56) = 0;
    *(*(v8 + 488) + 64) = 0;
    return setup_current_filesystem(a1);
  }

  return 0;
}

uint64_t tree_dir_next_posix(uint64_t a1)
{
  if (*(a1 + 16) || (v1 = tree_dup(*(a1 + 104)), (*(a1 + 16) = fdopendir(v1)) != 0))
  {
    while (1)
    {
      *__error() = 0;
      *(a1 + 24) = readdir(*(a1 + 16));
      if (!*(a1 + 24))
      {
        break;
      }

      v5 = *(a1 + 24) + 21;
      v4 = strlen(v5);
      *(a1 + 32) &= ~0x20u;
      *(a1 + 32) &= ~0x10u;
      if ((*v5 != 46 || *(v5 + 1)) && (*v5 != 46 || *(v5 + 1) != 46 || *(v5 + 2)))
      {
        tree_append(a1, v5, v4);
        *(a1 + 36) = 1;
        return 1;
      }
    }

    v7 = *__error();
    closedir(*(a1 + 16));
    *(a1 + 16) = 0;
    if (v7)
    {
      *(a1 + 40) = v7;
      *(a1 + 36) = -1;
      return *(a1 + 36);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = tree_ascend(a1);
    tree_pop(a1);
    *(a1 + 40) = *__error();
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = -1;
    }

    *(a1 + 36) = v3;
    return *(a1 + 36);
  }
}

void *tree_append(void *a1, _BYTE *a2, unint64_t a3)
{
  *(a1[6] + a1[10]) = 0;
  a1[7] = a1[10];
  while (1)
  {
    v4 = 0;
    if (a3 > 1)
    {
      v4 = a2[a3 - 1] == 47;
    }

    if (!v4)
    {
      break;
    }

    --a3;
  }

  archive_string_ensure((a1 + 6), a3 + a1[10] + 2);
  if (a1[10] && *(a1[6] + a1[7] - 1) != 47)
  {
    archive_strappend_char(a1 + 6, 47);
  }

  a1[9] = a1[6] + a1[7];
  result = archive_strncat(a1 + 6, a2, a3);
  a1[51] = a1[9];
  return result;
}

uint64_t tree_descent(uint64_t a1)
{
  v2 = 0;
  *(a1 + 80) = *(a1 + 56);
  v3 = open_on_current_dir(a1, *(*a1 + 24), 17825792);
  __archive_ensure_cloexec_flag(v3);
  if ((v3 & 0x80000000) != 0)
  {
    *(a1 + 40) = *__error();
    return -1;
  }

  else
  {
    ++*(a1 + 88);
    if ((*(*a1 + 72) & 2) != 0)
    {
      *(*a1 + 80) = *(a1 + 104);
      if (++*(a1 + 92) > *(a1 + 96))
      {
        *(a1 + 96) = *(a1 + 92);
      }
    }

    else
    {
      close(*(a1 + 104));
    }

    *(a1 + 104) = v3;
    *(a1 + 32) &= ~0x40u;
  }

  return v2;
}

uint64_t tree_ascend(_DWORD *a1)
{
  v3 = 0;
  v5 = *a1;
  v2 = a1[26];
  if ((*(*a1 + 72) & 2) != 0)
  {
    v4 = *(v5 + 80);
  }

  else
  {
    v4 = open_on_current_dir(a1, "..", 0x1000000);
    __archive_ensure_cloexec_flag(v4);
  }

  if ((v4 & 0x80000000) != 0)
  {
    a1[10] = *__error();
    return -2;
  }

  else
  {
    a1[26] = v4;
    a1[8] &= ~0x40u;
    close_and_restore_time(v2, a1, v5 + 88);
    if ((*(v5 + 72) & 2) != 0)
    {
      --a1[23];
      *(v5 + 80) = -1;
    }

    --a1[22];
  }

  return v3;
}

uint64_t tree_dup(int a1)
{
  v3 = a1;
  v2 = 0;
  if (!tree_dup_can_dupfd_cloexec)
  {
    goto LABEL_5;
  }

  v2 = fcntl(v3, 67, 0);
  if (v2 == -1)
  {
    tree_dup_can_dupfd_cloexec = 0;
LABEL_5:
    v2 = dup(v3);
    __archive_ensure_cloexec_flag(v2);
    return v2;
  }

  return v2;
}

uint64_t setup_current_filesystem(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 160);
  bzero(&v14, 0x200uLL);
  xfer_size = 0;
  *(*(v11 + 488) + 8) = -1;
  *(*(v11 + 488) + 12) = -1;
  if (tree_current_is_symblic_link_target(v11))
  {
    v7 = tree_current_dir_fd(v11);
    v1 = tree_current_access_path(v11);
    v8 = openat(v7, v1, 0x1000000);
    __archive_ensure_cloexec_flag(v8);
    if ((v8 & 0x80000000) != 0)
    {
      v2 = __error();
      archive_set_error(a1, *v2, "openat failed");
      return -25;
    }

    v10 = fstatfs(v8, &v14);
    if (!v10)
    {
      xfer_size = get_xfer_size(v11, v8, 0);
    }

    close(v8);
  }

  else
  {
    v3 = tree_current_dir_fd(v11);
    v10 = fstatfs(v3, &v14);
    if (!v10)
    {
      v4 = tree_current_dir_fd(v11);
      xfer_size = get_xfer_size(v11, v4, 0);
    }
  }

  if (v10 == -1 || xfer_size == -1)
  {
    v5 = __error();
    archive_set_error(a1, *v5, "statfs failed");
    return -25;
  }

  else
  {
    if (xfer_size == 1)
    {
      set_statfs_transfer_size(*(v11 + 488), &v14.f_bsize);
    }

    *(*(v11 + 488) + 12) = (v14.f_flags & 0x1000) == 0;
    *(*(v11 + 488) + 16) = (v14.f_flags & 0x10000000) != 0;
    return 0;
  }
}

BOOL tree_current_is_symblic_link_target(uint64_t a1)
{
  tree_current_is_symblic_link_target_lst = tree_current_lstat(a1);
  tree_current_is_symblic_link_target_st = tree_current_stat(a1);
  v2 = 0;
  if (tree_current_is_symblic_link_target_st)
  {
    v2 = 0;
    if (tree_current_is_symblic_link_target_lst)
    {
      v2 = 0;
      if (*tree_current_is_symblic_link_target_st == **(a1 + 488))
      {
        return *tree_current_is_symblic_link_target_st != *tree_current_is_symblic_link_target_lst;
      }
    }
  }

  return v2;
}

uint64_t get_xfer_size(uint64_t a1, int a2, const char *a3)
{
  *(*(a1 + 488) + 48) = -1;
  *__error() = 0;
  if (a2 < 0)
  {
    if (a3)
    {
      *(*(a1 + 488) + 24) = pathconf(a3, 20);
      *(*(a1 + 488) + 32) = pathconf(a3, 21);
      *(*(a1 + 488) + 40) = pathconf(a3, 22);
      *(*(a1 + 488) + 48) = pathconf(a3, 23);
    }
  }

  else
  {
    *(*(a1 + 488) + 24) = fpathconf(a2, 20);
    *(*(a1 + 488) + 32) = fpathconf(a2, 21);
    *(*(a1 + 488) + 40) = fpathconf(a2, 22);
    *(*(a1 + 488) + 48) = fpathconf(a2, 23);
  }

  if (*(*(a1 + 488) + 48) == -1)
  {
    if (*__error() == 22)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

void *set_statfs_transfer_size(void *result, unsigned int *a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = -1;
  }

  result[6] = v4;
  result[4] = -1;
  if (a2[1] <= 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2[1];
  }

  result[5] = v3;
  if (a2[1] <= 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2[1];
  }

  result[3] = v2;
  return result;
}

uint64_t setup_suitable_read_buffer(uint64_t a1)
{
  v8 = *(*(a1 + 160) + 488);
  if (v8[7])
  {
    return 0;
  }

  if (v8[6] == -1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = v8[6];
  }

  if (v8[4] == -1)
  {
    v4 = v8[3];
    if ((v4 & 0x8000000000000000) != 0)
    {
      v4 = v8[5];
    }

    if ((v8[5] & 0x8000000000000000) != 0)
    {
      v4 = v3;
      sizea = v3;
    }

    else
    {
      sizea = v8[5];
    }

    while (sizea < 0x10000)
    {
      sizea += v4;
    }

    size = sizea + v3;
    v1 = malloc_type_malloc(size, 0xDC51AB65uLL);
  }

  else
  {
    size = v8[4] + v3;
    v1 = malloc_type_malloc(size, 0xDC51AB65uLL);
  }

  v8[7] = v1;
  if (v8[7])
  {
    v5 = v8[7] % v3;
    if (v5)
    {
      v5 = v3 - v5;
    }

    v8[8] = v8[7] + v5;
    v8[9] = size - v3;
    return 0;
  }

  archive_set_error(a1, 12, "Couldn't allocate memory");
  *(a1 + 4) = 0x8000;
  return -30;
}

uint64_t tree_reopen(uint64_t a1, char *a2, int a3)
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 32) = v3;
  *(a1 + 32) |= 0x100u;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 400) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 481) = *(a1 + 480);
  *(a1 + 56) = 0;
  *(a1 + 520) = -1;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = -1;
  tree_push(a1, a2, 0, 0, 0, 0);
  *(*a1 + 72) = 4;
  *(a1 + 92) = 1;
  *(a1 + 96) = 1;
  *(a1 + 100) = open(".", 0x1000000);
  if ((*(a1 + 100) & 0x80000000) != 0)
  {
    *(a1 + 100) = open(".", 1091567616);
  }

  __archive_ensure_cloexec_flag(*(a1 + 100));
  *(a1 + 104) = tree_dup(*(a1 + 100));
  return a1;
}

uint64_t tree_open(char *a1, char a2, int a3)
{
  v4 = malloc_type_calloc(1uLL, 0x230uLL, 0x1070040F276FBAEuLL);
  if (!v4)
  {
    return 0;
  }

  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  archive_string_ensure((v4 + 6), 0x1FuLL);
  *(v4 + 480) = a2;
  return tree_reopen(v4, a1, a3);
}

uint64_t archive_read_extract_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __archive_check_magic(a1, 14594245, 0x7FFF, "archive_read_extract_set_skip_file");
  if (!result)
  {
    *(a1 + 152) = 1;
    *(a1 + 160) = a2;
    *(a1 + 168) = a3;
  }

  return result;
}

uint64_t archive_read_open2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  archive_read_set_callback_data(a1, a2);
  archive_read_set_open_callback(a1, a3);
  archive_read_set_read_callback(a1, a4);
  archive_read_set_skip_callback(a1, a5);
  archive_read_set_close_callback(a1, a6);
  return archive_read_open1(a1);
}

uint64_t archive_read_set_switch_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_switch_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 216) = a2;
    return 0;
  }
}

uint64_t archive_read_add_callback_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_add_callback_data") == -30)
  {
    return -30;
  }

  else if (a3 > *(a1 + 224))
  {
    archive_set_error(a1, 22, "Invalid index specified.");
    return -30;
  }

  else
  {
    v3 = *(a1 + 240);
    v4 = *(a1 + 224) + 1;
    *(a1 + 224) = v4;
    v5 = malloc_type_realloc(v3, 24 * v4, 0x108004098BBCF0FuLL);
    if (v5)
    {
      *(a1 + 240) = v5;
      for (i = *(a1 + 224) - 1; i > a3; --i)
      {
        *(*(a1 + 240) + 24 * i + 16) = *(*(a1 + 240) + 24 * (i - 1) + 16);
        *(*(a1 + 240) + 24 * i) = -1;
        *(*(a1 + 240) + 24 * i + 8) = -1;
      }

      *(*(a1 + 240) + 24 * a3 + 16) = a2;
      *(*(a1 + 240) + 24 * a3) = -1;
      *(*(a1 + 240) + 24 * a3 + 8) = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory.");
      return -30;
    }
  }
}

uint64_t __archive_read_header(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 632) + 32) + 16))
  {
    return (*(*(*(a1 + 632) + 32) + 16))(*(a1 + 632), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_header_position(uint64_t a1)
{
  if (__archive_check_magic(a1, 14594245, 0x7FFF, "archive_read_header_position") == -30)
  {
    return -30;
  }

  else
  {
    return *(a1 + 648);
  }
}

uint64_t archive_read_has_encrypted_entries(uint64_t a1)
{
  v2 = archive_read_format_capabilities(a1) & 3;
  if (a1 && v2)
  {
    if (*(a1 + 2072) && *(*(a1 + 2072) + 80))
    {
      return (*(*(a1 + 2072) + 80))(a1);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -2;
  }
}

uint64_t archive_read_format_capabilities(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && *(*(a1 + 2072) + 72))
  {
    return (*(*(a1 + 2072) + 72))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_data(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a1;
  v8 = 0;
  v7 = 0;
  v9 = a2;
  while (v11)
  {
    if (*(v10 + 13) == *(v10 + 14) && !*(v10 + 15))
    {
      v8 = *(v10 + 12);
      *(v10 + 128) = 1;
      *(v10 + 17) = v11;
      data_block = archive_read_data_block(v10, &v8, (v10 + 30), (v10 + 26));
      *(v10 + 12) = v8;
      if (data_block == 1)
      {
        return v7;
      }

      if (data_block < 0)
      {
        return data_block;
      }
    }

    if (*(v10 + 13) < *(v10 + 14))
    {
      archive_set_error(v10, 79, "Encountered out-of-order sparse blocks");
      return -10;
    }

    if ((*(v10 + 14) + v11) >= *(v10 + 13))
    {
      if (*(v10 + 14) < *(v10 + 13))
      {
        v5 = *(v10 + 13) - *(v10 + 14);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = v11;
    }

    __memset_chk();
    v11 -= v5;
    *(v10 + 14) += v5;
    v9 += v5;
    v7 += v5;
    if (v11)
    {
      v6 = *(v10 + 15);
      if (v6 > v11)
      {
        v6 = v11;
      }

      if (v6)
      {
        __memcpy_chk();
        v11 -= v6;
        *(v10 + 12) += v6;
        *(v10 + 15) -= v6;
        *(v10 + 14) += v6;
        *(v10 + 13) += v6;
        v9 += v6;
        v7 += v6;
      }
    }
  }

  *(v10 + 128) = 0;
  *(v10 + 17) = 0;
  return v7;
}

uint64_t archive_seek_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (__archive_check_magic(a1, 14594245, 4, "archive_seek_data_block") == -30)
  {
    return -30;
  }

  if (*(*(a1 + 2072) + 56))
  {
    return (*(*(a1 + 2072) + 56))(a1, a2, a3);
  }

  archive_set_error(a1, 22, "Internal error: No format_seek_data_block function registered");
  return -30;
}

uint64_t __archive_read_register_bidder(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 14594245, 1, "__archive_read_register_bidder") == -30)
  {
    return -30;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      if (i >= 16)
      {
        archive_set_error(a1, 12, "Not enough slots for filter registration");
        return -30;
      }

      if (!*&a1[6 * i + 66])
      {
        break;
      }
    }

    __memset_chk();
    v6 = &a1[6 * i + 62];
    *v6 = a2;
    *(v6 + 1) = a3;
    *(v6 + 2) = a4;
    if (**(v6 + 2) && *(*(v6 + 2) + 8))
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "Internal error: no bid/init for filter bidder");
      return -30;
    }
  }
}

uint64_t __archive_read_filter_seek(uint64_t a1, uint64_t a2, int a3)
{
  v17 = a2;
  if (*(a1 + 137))
  {
    return -30;
  }

  if (!*(a1 + 64))
  {
    return -25;
  }

  v16 = *(a1 + 24) + 176;
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -30;
      }

      for (i = 0; (*(*(v16 + 64) + 24 * i) & 0x8000000000000000) == 0 && (*(*(v16 + 64) + 24 * i + 8) & 0x8000000000000000) == 0 && i + 1 < *(v16 + 48); *(*(v16 + 64) + 24 * i) = v6)
      {
        v6 = *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8);
        ++i;
      }

      while (1)
      {
        v7 = client_switch_proxy(a1, i);
        if (v7)
        {
          return v7;
        }

        v13 = client_seek_proxy(a1, 0, 2u);
        if (v13 < 0)
        {
          return v13;
        }

        *(*(v16 + 64) + 24 * i + 8) = v13;
        v14 = *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8);
        if (i + 1 >= *(v16 + 48))
        {
          break;
        }

        *(*(v16 + 64) + 24 * ++i) = v14;
      }

      while (v14 + v17 < *(*(v16 + 64) + 24 * i))
      {
        v17 += *(*(v16 + 64) + 24 * i + 8);
        if (!i)
        {
          break;
        }

        --i;
        v14 = *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8);
      }

      v19 = v14 + v17 - *(*(v16 + 64) + 24 * i);
      v8 = client_switch_proxy(a1, i);
      if (v8)
      {
        return v8;
      }

      v12 = client_seek_proxy(a1, v19, 0);
      if (v12 < 0)
      {
        return v12;
      }

      goto LABEL_49;
    }

    v17 = a2 + *a1;
  }

  for (i = 0; (*(*(v16 + 64) + 24 * i) & 0x8000000000000000) == 0 && (*(*(v16 + 64) + 24 * i + 8) & 0x8000000000000000) == 0 && *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8) - 1 <= v17 && i + 1 < *(v16 + 48); *(*(v16 + 64) + 24 * i) = v3)
  {
    v3 = *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8);
    ++i;
  }

  while (1)
  {
    v4 = client_switch_proxy(a1, i);
    if (v4)
    {
      return v4;
    }

    v11 = client_seek_proxy(a1, 0, 2u);
    if (v11 < 0)
    {
      return v11;
    }

    *(*(v16 + 64) + 24 * i + 8) = v11;
    if (*(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8) - 1 > v17 || i + 1 >= *(v16 + 48))
    {
      break;
    }

    v5 = *(*(v16 + 64) + 24 * i) + *(*(v16 + 64) + 24 * i + 8);
    *(*(v16 + 64) + 24 * ++i) = v5;
  }

  v18 = v17 - *(*(v16 + 64) + 24 * i);
  if (v18 < 0 || v18 > *(*(v16 + 64) + 24 * i + 8))
  {
    return -30;
  }

  v12 = client_seek_proxy(a1, v18, 0);
  if (v12 < 0)
  {
    return v12;
  }

LABEL_49:
  v15 = v12 + *(*(v16 + 64) + 24 * i);
  if ((v15 & 0x8000000000000000) == 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0;
    *(a1 + 88) = *(a1 + 72);
    *a1 = v15;
    *(a1 + 136) = 0;
  }

  return v15;
}

uint64_t client_seek_proxy(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(*(a1 + 24) + 200))
  {
    return (*(*(a1 + 24) + 200))(*(a1 + 24), *(a1 + 40), a2, a3);
  }

  archive_set_error(*(a1 + 24), -1, "Current client reader does not support seeking a device");
  return -25;
}

uint64_t _archive_filter_count(uint64_t a1)
{
  v3 = *(a1 + 632);
  v2 = 0;
  while (v3)
  {
    ++v2;
    v3 = *(v3 + 16);
  }

  return v2;
}

uint64_t _archive_filter_bytes(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *filter;
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_code(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *(filter + 56);
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_name(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *(filter + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t get_filter(uint64_t a1, int a2)
{
  v7 = a2;
  v5 = *(a1 + 632);
  if (a2 == -1 && v5)
  {
    v4 = *(a1 + 632);
    for (i = *(v5 + 16); i; i = *(i + 16))
    {
      v4 = i;
    }

    return v4;
  }

  else if (a2 < 0)
  {
    return 0;
  }

  else
  {
    while (1)
    {
      v3 = 0;
      if (v7 > 0)
      {
        v3 = v5 != 0;
      }

      if (!v3)
      {
        break;
      }

      v5 = *(v5 + 16);
      --v7;
    }

    return v5;
  }
}

uint64_t client_open_proxy(uint64_t a1)
{
  v2 = 0;
  if (*(*(a1 + 24) + 176))
  {
    return (*(*(a1 + 24) + 176))(*(a1 + 24), *(a1 + 40));
  }

  return v2;
}

uint64_t client_skip_proxy(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  if (a2 < 0)
  {
    __archive_errx(1, "Negative skip requested.");
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a1[3] + 192))
  {
    v6 = 0;
    while (1)
    {
      v5 = (*(a1[3] + 192))(a1[3], a1[5], v7);
      v6 += v5;
      if (!v5 || v5 == v7)
      {
        return v6;
      }

      if (v5 > v7)
      {
        break;
      }

      v7 -= v5;
    }

    return -30;
  }

  else if (*(a1[3] + 200) && a2 > 0x10000)
  {
    v4 = *a1;
    v3 = (*(a1[3] + 200))(a1[3], a1[5], a2, 1);
    if (v3 == v4 + v7)
    {
      return v3 - v4;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_support_filter_grzip(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("grzip"))
  {
    if (__archive_read_register_bidder(a1, 0, 0, grzip_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external grzip program for grzip decompression");
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements");
    return -30;
  }
}

uint64_t grzip_bidder_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  v3 = 0;
  __s1 = __archive_read_filter_ahead(a2, 0xCuLL, &v3);
  if (__s1 && v3)
  {
    if (!memcmp(__s1, "GRZipII", 0xCuLL))
    {
      return 96;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t grzip_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "grzip -d");
  *(a1 + 56) = 12;
  *(a1 + 48) = "grzip";
  return result;
}

uint64_t archive_read_data_into_fd(unsigned int *a1, int a2)
{
  v19 = a1;
  v18 = a2;
  memset(&__b, 0, sizeof(__b));
  data_block = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  __nbyte = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v7 = 0;
  if (__archive_check_magic(v19, 14594245, 4, "archive_read_data_into_fd") == -30)
  {
    return -30;
  }

  else
  {
    v5 = 0;
    if (!fstat(v18, &__b))
    {
      v5 = (__b.st_mode & 0xF000) == 0x8000;
    }

    v8 = v5;
    if (v5 || (v7 = malloc_type_calloc(1uLL, 0x4000uLL, 0x6DC32B50uLL)) != 0)
    {
      while (1)
      {
        data_block = archive_read_data_block(v19, &v14, &v13, &v10);
        if (data_block)
        {
          break;
        }

        __buf = v14;
        if (v10 <= v9)
        {
          goto LABEL_12;
        }

        data_block = pad_to(v19, v18, v8, 0x4000uLL, v7, v10, v9);
        if (data_block)
        {
          break;
        }

        v9 = v10;
LABEL_12:
        while (v13)
        {
          __nbyte = v13;
          if (v13 > 0x100000)
          {
            __nbyte = 0x100000;
          }

          v11 = write(v18, __buf, __nbyte);
          if (v11 < 0)
          {
            v4 = v19;
            v2 = __error();
            archive_set_error(v4, *v2, "Write error");
            data_block = -30;
            goto LABEL_23;
          }

          v9 += v11;
          __buf += v11;
          v13 -= v11;
        }
      }

      if (data_block == 1 && v10 > v9)
      {
        v15 = pad_to(v19, v18, v8, 0x4000uLL, v7, v10, v9);
        if (v15)
        {
          data_block = v15;
        }
      }
    }

    else
    {
      data_block = -30;
    }

LABEL_23:
    free(v7);
    if (data_block == 1)
    {
      return 0;
    }

    else
    {
      return data_block;
    }
  }
}

uint64_t pad_to(_DWORD *a1, int a2, int a3, size_t a4, const void *a5, int64_t a6, uint64_t a7)
{
  v12 = a7;
  if (a3)
  {
    if (lseek(a2, a6 - a7, 1) == a6)
    {
      return 0;
    }

    else
    {
      v7 = __error();
      archive_set_error(a1, *v7, "Seek error");
      return -30;
    }
  }

  else
  {
    while (a6 > v12)
    {
      __nbyte = a4;
      if (a6 < (v12 + a4))
      {
        __nbyte = a6 - v12;
      }

      v10 = write(a2, a5, __nbyte);
      if (v10 < 0)
      {
        v8 = __error();
        archive_set_error(a1, *v8, "Write error");
        return -30;
      }

      v12 += v10;
    }

    return 0;
  }
}

uint64_t archive_write_set_format_xar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_xar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x10318uLL, 0x10F00406A1018FBuLL);
    if (v2)
    {
      *v2 = -1;
      file_init_register(v2);
      file_init_hardlinks(v2);
      v2[10] = 0;
      v2[11] = 0;
      v2[12] = 0;
      v2[13] = 0;
      v2[14] = 0;
      v2[15] = 0;
      v2[3] = file_create_virtual_dir(a1, v2, &unk_1BF3442C6);
      if (v2[3])
      {
        *(v2[3] + 88) = v2[3];
        file_register(v2, v2[3]);
        v2[4] = v2[3];
        v2[5] = 0;
        v2[6] = 0;
        v2[7] = 0;
        archive_string_ensure((v2 + 5), 1uLL);
        *v2[5] = 0;
        *(v2 + 32) = 1;
        *(v2 + 33) = 1;
        *(v2 + 34) = 1;
        *(v2 + 35) = 6;
        *(v2 + 36) = 1;
        *(a1 + 248) = v2;
        *(a1 + 256) = "xar";
        *(a1 + 272) = xar_options;
        *(a1 + 288) = xar_write_header;
        *(a1 + 296) = xar_write_data;
        *(a1 + 280) = xar_finish_entry;
        *(a1 + 304) = xar_close;
        *(a1 + 312) = xar_free;
        *(a1 + 16) = 655360;
        *(a1 + 24) = "xar";
        return 0;
      }

      else
      {
        free(v2);
        archive_set_error(a1, 12, "Can't allocate xar data");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate xar data");
      return -30;
    }
  }
}

uint64_t file_init_register(uint64_t result)
{
  *(result + 66296) = 0;
  *(result + 66304) = result + 66296;
  return result;
}

void *file_create_virtual_dir(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = file_new(a1, 0);
  if (!v4)
  {
    return 0;
  }

  archive_entry_set_pathname(v4[4], a3);
  archive_entry_set_mode(v4[4], 16749);
  *(v4 + 360) = v4[45] & 0xFD | 2;
  *(v4 + 360) = v4[45] & 0xFE | 1;
  return v4;
}

uint64_t file_register(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 + 1;
  *(a2 + 24) = v2;
  *(a2 + 56) = 0;
  **(result + 66304) = a2;
  *(result + 66304) = a2 + 56;
  return result;
}

uint64_t xar_options(uint64_t a1, const char *a2, char *a3)
{
  v10 = a1;
  v9 = a2;
  __s1 = a3;
  v7 = 0;
  v7 = *(a1 + 248);
  if (!strcmp(a2, "checksum"))
  {
    if (!__s1)
    {
      v7[33] = 0;
      return 0;
    }

    if (!strcmp(__s1, "none"))
    {
      v7[33] = 0;
      return 0;
    }

    if (!strcmp(__s1, "sha1"))
    {
      v7[33] = 1;
      return 0;
    }

    if (!strcmp(__s1, "md5"))
    {
      v7[33] = 2;
      return 0;
    }

    goto LABEL_10;
  }

  if (!strcmp(v9, "compression"))
  {
    v6 = 0;
    if (__s1)
    {
      if (!strcmp(__s1, "none"))
      {
        v7[34] = 0;
      }

      else if (!strcmp(__s1, "gzip"))
      {
        v7[34] = 1;
      }

      else if (!strcmp(__s1, "bzip2"))
      {
        v7[34] = 2;
      }

      else if (!strcmp(__s1, "lzma"))
      {
        v7[34] = 3;
      }

      else
      {
        if (strcmp(__s1, "xz"))
        {
          return -25;
        }

        v7[34] = 4;
      }
    }

    else
    {
      v7[34] = 0;
    }

    if (v6)
    {
      return -25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (strcmp(v9, "compression-level"))
    {
      if (strcmp(v9, "toc-checksum"))
      {
        if (!strcmp(v9, "threads"))
        {
          __endptr = 0;
          if (!__s1)
          {
            return -25;
          }

          *__error() = 0;
          v3 = strtoul(__s1, &__endptr, 10);
          v7[36] = v3;
          if (*__error() || *__endptr)
          {
            v7[36] = 1;
            return -25;
          }

          if (!v7[36])
          {
            v7[36] = 1;
          }
        }

        return -20;
      }

      if (__s1)
      {
        if (!strcmp(__s1, "none"))
        {
          v7[32] = 0;
        }

        else if (!strcmp(__s1, "sha1"))
        {
          v7[32] = 1;
        }

        else
        {
          if (strcmp(__s1, "md5"))
          {
LABEL_10:
            return -25;
          }

          v7[32] = 2;
        }
      }

      else
      {
        v7[32] = 0;
      }

      return 0;
    }

    if (__s1 && *__s1 >= 48 && *__s1 <= 57 && !__s1[1])
    {
      v7[35] = *__s1 - 48;
      return 0;
    }

    else
    {
      return -25;
    }
  }
}

uint64_t xar_write_header(uint64_t a1, uint64_t *a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v16 = *(a1 + 248);
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  if (*(v16 + 616) || (*(v16 + 616) = archive_string_conversion_to_charset(v18, "UTF-8", 1)) != 0)
  {
    v15 = file_new(v18, v17);
    if (v15)
    {
      v10 = file_gen_utility_names(v18, v15);
      if (v10 >= -20)
      {
        if (v15[15] || v15[18])
        {
          v14 = v15[4];
          v11 = file_tree(v18, &v15);
          if (v11)
          {
            return v11;
          }

          else if (v15[4] == v14)
          {
            if (!*(v15 + 6))
            {
              file_register(v16, v15);
            }

            if (v15[45])
            {
              return v10;
            }

            else
            {
              if (*v16 == -1)
              {
                *(v16 + 8) = 0;
                *v16 = __archive_mktemp(0);
                if ((*v16 & 0x80000000) != 0)
                {
                  v8 = v18;
                  v2 = __error();
                  archive_set_error(v8, *v2, "Couldn't create temporary file");
                  return -30;
                }

                v9 = getalgsize(*(v16 + 128));
                if (v9 > 0)
                {
                  if (lseek(*v16, v9, 0) < 0)
                  {
                    v7 = v18;
                    v3 = __error();
                    archive_set_error(v7, *v3, "lseek failed");
                    return -30;
                  }

                  *(v16 + 8) = v9;
                }
              }

              if (archive_entry_hardlink(v15[4]) || !save_xattrs(v18, v15))
              {
                if (archive_entry_filetype(v15[4]) == 0x8000)
                {
                  *(v16 + 64) = v15;
                  if (archive_entry_nlink(v15[4]) > 1)
                  {
                    v12 = file_register_hardlink(v18, v15);
                    if (v12)
                    {
                      return v12;
                    }

                    if (archive_entry_hardlink(v15[4]))
                    {
                      archive_entry_unset_size(v15[4]);
                      return v10;
                    }
                  }

                  v15[28] = *(v16 + 8);
                  v4 = archive_entry_size(v15[4]);
                  v15[30] = v4;
                  *(v15 + 62) = *(v16 + 136);
                  v5 = archive_entry_size(v15[4]);
                  *(v16 + 72) = v5;
                  checksum_init((v16 + 148), *(v16 + 132));
                  checksum_init((v16 + 340), *(v16 + 132));
                  inited = xar_compression_init_encoder(v18);
                  if (inited)
                  {
                    return inited;
                  }

                  else
                  {
                    return v10;
                  }
                }

                else
                {
                  return v10;
                }
              }

              else
              {
                return -30;
              }
            }
          }

          else
          {
            return v10;
          }
        }

        else
        {
          file_free(v15);
          return v10;
        }
      }

      else
      {
        return v10;
      }
    }

    else
    {
      archive_set_error(v18, 12, "Can't allocate data");
      return -30;
    }
  }

  else
  {
    return -30;
  }
}

unint64_t xar_write_data(uint64_t a1, char *a2, unint64_t a3)
{
  v15 = a3;
  v12 = 0;
  v14 = *(a1 + 248);
  if (a3 > *(v14 + 72))
  {
    v15 = *(v14 + 72);
  }

  if (v15 && *(v14 + 64))
  {
    if (*(*(v14 + 64) + 248))
    {
      *(v14 + 536) = a2;
      *(v14 + 544) = v15;
      if (*(v14 + 72) > v15)
      {
        v13 = 1;
        v3 = compression_code(a1, v14 + 536, 1u);
      }

      else
      {
        v13 = 0;
        v3 = compression_code(a1, v14 + 536, 0);
      }

      while (1)
      {
        v10 = v3;
        if (v3 >= 2)
        {
          return -30;
        }

        if (*(v14 + 568) && v13)
        {
          break;
        }

        v12 = 0x10000 - *(v14 + 568);
        checksum_update((v14 + 148), v14 + 624, v12);
        *(*(v14 + 64) + 232) += v12;
        if (write_to_temp(a1, (v14 + 624), v12))
        {
          return -30;
        }

        if (v10)
        {
          break;
        }

        *(v14 + 560) = v14 + 624;
        *(v14 + 568) = 0x10000;
        v3 = compression_code(a1, v14 + 536, v13);
      }

      v11 = v15 - *(v14 + 544);
      checksum_update((v14 + 340), a2, v11);
    }

    else
    {
      checksum_update((v14 + 340), a2, v15);
      checksum_update((v14 + 148), a2, v15);
      v11 = v15;
      v12 = v15;
    }

    v6 = *(v14 + 72);
    if (v6 == archive_entry_size(*(*(v14 + 64) + 32)))
    {
      *(*(v14 + 64) + 344) = 0;
      if (v11 > 2 && *a2 == 35 && a2[1] == 33)
      {
        v7 = 2;
        if (a2[2] == 32)
        {
          v7 = 3;
        }

        if (v11 - v7 <= 0x400)
        {
          v8 = v11;
        }

        else
        {
          v8 = v7 + 1024;
        }

        for (i = v7; ; ++i)
        {
          v5 = 0;
          if (i < v8)
          {
            v5 = 0;
            if (a2[i])
            {
              v5 = 0;
              if (a2[i] != 10)
              {
                v5 = 0;
                if (a2[i] != 13)
                {
                  v5 = 0;
                  if (a2[i] != 32)
                  {
                    v5 = a2[i] != 9;
                  }
                }
              }
            }
          }

          if (!v5)
          {
            break;
          }
        }

        *(*(v14 + 64) + 344) = 0;
        archive_strncat((*(v14 + 64) + 336), &a2[v7], i - v7);
      }
    }

    if (!*(*(v14 + 64) + 248))
    {
      if (write_to_temp(a1, a2, v12))
      {
        return -30;
      }

      *(*(v14 + 64) + 232) += v12;
    }

    *(v14 + 72) -= v11;
    return v11;
  }

  return 0;
}

uint64_t xar_finish_entry(uint64_t a1)
{
  v5 = *(a1 + 248);
  if (*(v5 + 64))
  {
    while (*(v5 + 72))
    {
      v3 = *(v5 + 72);
      if (v3 > *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      v2 = xar_write_data(a1, *(a1 + 168), v3);
      if (v2 <= 0)
      {
        return v2;
      }

      *(v5 + 72) -= v2;
    }

    v4 = *(v5 + 64);
    checksum_final((v5 + 340), v4 + 296);
    checksum_final((v5 + 148), v4 + 256);
    *(v5 + 64) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

int xar_close(xar_t x)
{
  v7 = *(x + 31);
  if (!*(*(v7 + 24) + 96))
  {
    return 0;
  }

  v6 = *(v7 + 8);
  file_connect_hardlink_files(v7);
  toc = make_toc(x);
  if (toc)
  {
    return toc;
  }

  *(v7 + 66160) = 0x10000;
  archive_be32enc((v7 + 624), 2019652129);
  archive_be16enc((v7 + 628), 28);
  archive_be16enc((v7 + 630), 1);
  archive_be64enc((v7 + 632), *(v7 + 66192));
  archive_be64enc((v7 + 640), *(v7 + 66200));
  archive_be32enc((v7 + 648), *(v7 + 66216));
  *(v7 + 66160) -= 28;
  v3 = copy_out(x, *(v7 + 66184), *(v7 + 66192));
  if (v3)
  {
    return v3;
  }

  if (*(v7 + 66224))
  {
    if (*(v7 + 66160) < *(v7 + 66224))
    {
      v4 = flush_wbuff(x);
      if (v4)
      {
        return v4;
      }
    }

    __memcpy_chk();
    *(v7 + 66160) -= *(v7 + 66224);
  }

  v5 = copy_out(x, *(v7 + 66224), v6);
  if (v5)
  {
    return v5;
  }

  else
  {
    return flush_wbuff(x);
  }
}

uint64_t xar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if ((*v2 & 0x80000000) == 0)
  {
    close(*v2);
  }

  archive_string_free((v2 + 10));
  archive_string_free((v2 + 20));
  archive_string_free((v2 + 26));
  file_free_hardlinks(v2);
  file_free_register(v2);
  compression_end(a1, (v2 + 134));
  free(v2);
  return 0;
}

void *file_new(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x170uLL, 0x10F0040A750FA63uLL);
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    v2 = archive_entry_clone(a2);
  }

  else
  {
    v2 = archive_entry_new2(a1);
  }

  v4[4] = v2;
  if (v4[4])
  {
    __archive_rb_tree_init(v4 + 5, file_new_rb_ops);
    v4[12] = 0;
    v4[13] = v4 + 12;
    v4[24] = 0;
    v4[25] = v4 + 24;
    v4[14] = 0;
    v4[15] = 0;
    v4[16] = 0;
    v4[17] = 0;
    v4[18] = 0;
    v4[19] = 0;
    v4[20] = 0;
    v4[21] = 0;
    v4[22] = 0;
    v4[42] = 0;
    v4[43] = 0;
    v4[44] = 0;
    if (a2 && archive_entry_filetype(a2) == 0x4000)
    {
      *(v4 + 360) = v4[45] & 0xFD | 2;
    }

    return v4;
  }

  else
  {
    free(v4);
    return 0;
  }
}

uint64_t file_gen_utility_names(uint64_t a1, uint64_t *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v19 = *(a1 + 248);
  a2[15] = 0;
  v20[18] = 0;
  v20[21] = 0;
  if (v20[11] == v20)
  {
    return 0;
  }

  else
  {
    if (_archive_entry_pathname_l(v20[4], &v18, &v14, *(v19 + 616)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v21, 12, "Can't allocate memory for Pathname");
        return -30;
      }

      v9 = v21;
      v2 = archive_entry_pathname(v20[4]);
      archive_set_error(v9, 79, "Can't translate pathname '%s' to UTF-8", v2);
      v13 = -20;
    }

    v20[15] = 0;
    archive_strncat(v20 + 14, v18, v14);
    v14 = v20[15];
    v16 = v20[14];
    v17 = v16;
    while (*v17)
    {
      if (*v17 == 47)
      {
        ++v17;
        --v14;
      }

      else
      {
        if (*v17 != 46)
        {
          break;
        }

        if (v17[1] == 46 && v17[2] == 47)
        {
          v17 += 3;
          v14 -= 3;
        }

        else if (v17[1] == 47 || v17[1] == 46 && !v17[2])
        {
          v17 += 2;
          v14 -= 2;
        }

        else
        {
          if (v17[1])
          {
            break;
          }

          ++v17;
          --v14;
        }
      }
    }

    if (v17 != v16)
    {
      __memmove_chk();
      v17 = v16;
    }

    do
    {
      if (!v14)
      {
        break;
      }

      v12 = v14;
      if (v17[v14 - 1] == 47)
      {
        v17[--v14] = 0;
      }

      if (v14 > 1 && v17[v14 - 2] == 47 && v17[v14 - 1] == 46)
      {
        v17[v14 - 2] = 0;
        v14 -= 2;
      }

      if (v14 > 2 && v17[v14 - 3] == 47 && v17[v14 - 2] == 46 && v17[v14 - 1] == 46)
      {
        v17[v14 - 3] = 0;
        v14 -= 3;
      }
    }

    while (v12 != v14);
    while (*v17)
    {
      if (*v17 == 47)
      {
        if (v17[1] == 47)
        {
          strlen(v17 + 1);
          __memmove_chk();
        }

        else if (v17[1] == 46 && v17[2] == 47)
        {
          strlen(v17 + 2);
          __memmove_chk();
        }

        else if (v17[1] == 46 && v17[2] == 46 && v17[3] == 47)
        {
            ;
          }

          if (i <= v16)
          {
            __strcpy_chk();
            v17 = v16;
          }

          else
          {
            __strcpy_chk();
            v17 = i;
          }
        }

        else
        {
          ++v17;
        }
      }

      else
      {
        ++v17;
      }
    }

    v17 = v16;
    v14 = strlen(v16);
    if (archive_entry_filetype(v20[4]) == 40960)
    {
      v10 = 0;
      if (_archive_entry_symlink_l(v20[4], &v18, &v10, *(v19 + 616)))
      {
        if (*__error() == 12)
        {
          archive_set_error(v21, 12, "Can't allocate memory for Linkname");
          return -30;
        }

        v8 = v21;
        v3 = archive_entry_symlink(v20[4]);
        archive_set_error(v8, 79, "Can't translate symlink '%s' to UTF-8", v3);
        v13 = -20;
      }

      v20[21] = 0;
      archive_strncat(v20 + 20, v18, v10);
    }

    v15 = 0;
    while (*v17)
    {
      if (*v17 == 47)
      {
        v15 = v17;
      }

      ++v17;
    }

    if (v15)
    {
      *v15 = 0;
      v20[15] = v15 - v16;
      v20[18] = 0;
      v6 = v20 + 17;
      v7 = v15 + 1;
      if (v15 == -1)
      {
        archive_strncat(v6, v7, 0);
      }

      else
      {
        v5 = strlen(v15 + 1);
        archive_strncat(v6, v7, v5);
      }

      return v13;
    }

    else
    {
      v20[15] = v14;
      v20[18] = 0;
      archive_string_concat(v20 + 17, v20 + 14);
      v20[15] = 0;
      *v20[14] = 0;
      return v13;
    }
  }
}

void file_free(uint64_t a1)
{
  for (i = *(a1 + 192); i; i = v1)
  {
    v1 = i[1];
    free(i);
  }

  archive_string_free(a1 + 112);
  archive_string_free(a1 + 136);
  archive_string_free(a1 + 160);
  archive_string_free(a1 + 336);
  archive_entry_free(*(a1 + 32));
  free(a1);
}

uint64_t file_tree(uint64_t a1, uint64_t **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v20 = a2;
  v19 = *(a1 + 248);
  v18 = 0;
  v17 = 0;
  node = 0;
  v15 = 0;
  __s2 = 0;
  v13 = 0;
  path_component = 0;
  v17 = *a2;
  v18 = v19[3];
  if (v17[15])
  {
    v13 = v17[14];
    __s2 = v13;
  }

  else
  {
    v13 = &unk_1BF3442C6;
    __s2 = &unk_1BF3442C6;
  }

  if (v19[6] == v17[15] && !strcmp(v19[5], __s2))
  {
    if (file_add_child_tail(v19[4], v17))
    {
      return 0;
    }

    node = __archive_rb_tree_find_node((v19[4] + 40), v17[17]);
  }

  else
  {
    while (1)
    {
      path_component = get_path_component(v23, 256, __s2);
      if (!path_component)
      {
        break;
      }

      if (path_component < 0)
      {
        archive_set_error(v21, -1, "A name buffer is too small");
        file_free(v17);
        *v20 = 0;
        return -30;
      }

      node = file_find_child(v18, v23);
      if (!node || !*__s2)
      {
        goto LABEL_21;
      }

      if ((node[45] & 2) == 0)
      {
        v7 = archive_entry_pathname(node[4]);
        v2 = archive_entry_pathname(v17[4]);
        file_free(v17);
        *v20 = 0;
        return -25;
      }

      __s2 += path_component;
      if (*__s2 == 47)
      {
        ++__s2;
      }

      v18 = node;
    }

    node = 0;
LABEL_21:
    if (!node)
    {
      while (*__s2)
      {
        virtual_dir = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        archive_strncat(&v8, v13, __s2 - v13 + path_component);
        if (v8[v9 - 1] == 47)
        {
          v8[--v9] = 0;
        }

        virtual_dir = file_create_virtual_dir(v21, v19, v8);
        if (!virtual_dir)
        {
          archive_string_free(&v8);
          archive_set_error(v21, 12, "Can't allocate memory");
          file_free(v17);
          *v20 = 0;
          return -30;
        }

        archive_string_free(&v8);
        if (file_gen_utility_names(v21, virtual_dir) <= -25)
        {
          return -30;
        }

        file_add_child_tail(v18, virtual_dir);
        file_register(v19, virtual_dir);
        node = virtual_dir;
        __s2 += path_component;
        if (*__s2 == 47)
        {
          ++__s2;
        }

        path_component = get_path_component(v23, 256, __s2);
        if (path_component < 0)
        {
          archive_string_free(&v8);
          archive_set_error(v21, -1, "A name buffer is too small");
          file_free(v17);
          *v20 = 0;
          return -30;
        }

        v18 = node;
      }

      v19[4] = v18;
      v19[6] = 0;
      archive_string_ensure((v19 + 5), v18[15] + v18[18] + 2);
      if (v18[15] + v18[18])
      {
        if (v18[15])
        {
          v19[6] = 0;
          archive_string_concat(v19 + 5, v18 + 14);
          archive_strappend_char(v19 + 5, 47);
        }

        archive_string_concat(v19 + 5, v18 + 17);
      }

      else
      {
        *v19[5] = 0;
      }

      if (file_add_child_tail(v18, v17))
      {
        return 0;
      }

      node = __archive_rb_tree_find_node(v18 + 5, v17[17]);
    }
  }

  v6 = archive_entry_filetype(node[4]);
  if (v6 == archive_entry_filetype(v17[4]))
  {
    v15 = node[4];
    node[4] = v17[4];
    v17[4] = v15;
    *(node + 360) &= ~1u;
    file_free(v17);
    *v20 = node;
    return 0;
  }

  else
  {
    v5 = v21;
    v3 = archive_entry_pathname(node[4]);
    file_free(v17);
    *v20 = 0;
    return -25;
  }
}

uint64_t getalgsize(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 20;
    }

    if (a1 == 2)
    {
      return 16;
    }
  }

  return 0;
}

uint64_t save_xattrs(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v11 = *(a1 + 248);
  v6 = archive_entry_xattr_reset(*(a2 + 32));
  if (v6)
  {
LABEL_3:
    while (v6--)
    {
      archive_entry_xattr_next(*(v12 + 32), &v10, &v9, &v7);
      checksum_init((v11 + 148), *(v11 + 132));
      checksum_init((v11 + 340), *(v11 + 132));
      v8 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040EB626CC2uLL);
      if (!v8)
      {
        archive_set_error(v13, 12, "Can't allocate memory for xattr");
        return -30;
      }

      v3 = *(v12 + 184);
      *(v12 + 184) = v3 + 1;
      *v8 = v3;
      *(v8 + 2) = *(v11 + 8);
      *(v8 + 4) = v7;
      *(v8 + 10) = *(v11 + 136);
      checksum_update((v11 + 340), v9, v7);
      checksum_final((v11 + 340), v8 + 88);
      if (*(v8 + 10))
      {
        if (!xar_compression_init_encoder(v13))
        {
          *(v11 + 536) = v9;
          *(v11 + 544) = v7;
          while (1)
          {
            v5 = compression_code(v13, v11 + 536, 0);
            if (v5 >= 2)
            {
              break;
            }

            v7 = 0x10000 - *(v11 + 568);
            checksum_update((v11 + 148), v11 + 624, v7);
            if (write_to_temp(v13, (v11 + 624), v7))
            {
              break;
            }

            if (v5)
            {
              checksum_final((v11 + 148), v8 + 48);
              *(v8 + 3) = *(v11 + 576);
              *(v8 + 1) = 0;
              **(v12 + 200) = v8;
              *(v12 + 200) = v8 + 8;
              if (!compression_end(v13, v11 + 536))
              {
                goto LABEL_3;
              }

              return -30;
            }

            *(v11 + 560) = v11 + 624;
            *(v11 + 568) = 0x10000;
          }
        }

LABEL_14:
        free(v8);
        return -30;
      }

      checksum_update((v11 + 148), v9, v7);
      checksum_final((v11 + 148), v8 + 48);
      if (write_to_temp(v13, v9, v7))
      {
        goto LABEL_14;
      }

      *(v8 + 3) = v7;
      *(v8 + 1) = 0;
      **(v12 + 200) = v8;
      *(v12 + 200) = v8 + 8;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t file_register_hardlink(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 248);
  archive_entry_set_nlink(*(a2 + 32), 1);
  v3 = archive_entry_hardlink(*(a2 + 32));
  if (v3)
  {
    node = __archive_rb_tree_find_node((v6 + 66312), v3);
    if (node)
    {
      *(a2 + 72) = 0;
      **(node + 40) = a2;
      *(node + 40) = a2 + 72;
      ++*(node + 24);
    }

    archive_entry_unset_size(*(a2 + 32));
    return 0;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x10A004051F4DB44uLL);
  if (v4)
  {
    v4[6] = 1;
    *(a2 + 72) = 0;
    *(v4 + 4) = a2;
    *(v4 + 5) = a2 + 72;
    __archive_rb_tree_insert_node((v6 + 66312), v4);
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory", 0);
  return -30;
}

_DWORD *checksum_init(_DWORD *result, int a2)
{
  *result = a2;
  if (a2)
  {
    if (a2 == 1)
    {
      return off_1F3DE4E10(result + 24);
    }

    else if (a2 == 2)
    {
      return __archive_digest(result + 1);
    }
  }

  return result;
}

uint64_t xar_compression_init_encoder(uint64_t a1)
{
  v4 = *(a1 + 248);
  v2 = *(v4 + 136);
  switch(v2)
  {
    case 1:
      inited = compression_init_encoder_gzip(a1, v4 + 536, *(v4 + 140), 1);
      break;
    case 2:
      inited = compression_init_encoder_bzip2(a1, v4 + 536, *(v4 + 140));
      break;
    case 3:
      inited = compression_init_encoder_lzma(a1, v4 + 536, *(v4 + 140));
      break;
    case 4:
      inited = compression_init_encoder_xz(a1, v4 + 536, *(v4 + 140), *(v4 + 144));
      break;
    default:
      inited = 0;
      break;
  }

  if (!inited)
  {
    *(v4 + 552) = 0;
    *(v4 + 560) = v4 + 624;
    *(v4 + 568) = 0x10000;
    *(v4 + 576) = 0;
  }

  return inited;
}

uint64_t file_add_child_tail(uint64_t a1, void *a2)
{
  if (__archive_rb_tree_insert_node((a1 + 40), a2))
  {
    a2[8] = 0;
    **(a1 + 104) = a2;
    *(a1 + 104) = a2 + 8;
    a2[11] = a1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_path_component(uint64_t a1, int a2, char *a3)
{
  *&v4[4] = strchr(a3, 47);
  if (*&v4[4])
  {
    *v4 = *&v4[4] - a3;
  }

  else
  {
    *v4 = strlen(a3);
    if (!*v4)
    {
      return 0;
    }
  }

  if (*v4 <= a2 - 1)
  {
    __memcpy_chk();
    *(a1 + *v4) = 0;
    return *v4;
  }

  else
  {
    return -1;
  }
}

int *checksum_update(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    if (v3 == 1)
    {
      return off_1F3DE4E18(result + 24, a2, a3);
    }

    else if (v3 == 2)
    {
      return off_1F3DE4DE8(result + 1, a2, a3);
    }
  }

  return result;
}

_DWORD *checksum_final(_DWORD *result, uint64_t a2)
{
  v4 = result;
  v2 = *result;
  if (*result)
  {
    if (v2 == 1)
    {
      result = off_1F3DE4E20(result + 24, a2 + 16);
      *(a2 + 8) = 20;
    }

    else if (v2 == 2)
    {
      result = off_1F3DE4DF0(result + 1, a2 + 16);
      *(a2 + 8) = 16;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  *a2 = *v4;
  return result;
}

uint64_t write_to_temp(uint64_t a1, char *a2, size_t a3)
{
  v7 = *(a1 + 248);
  while (a3)
  {
    v5 = write(*v7, a2, a3);
    if (v5 < 0)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "fwrite function failed");
      return -30;
    }

    a3 -= v5;
    a2 += v5;
    *(v7 + 8) += v5;
  }

  return 0;
}

uint64_t compression_code(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 48))
  {
    return (*(a2 + 64))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    return (*(a2 + 72))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_init_encoder_gzip(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 48))
  {
    compression_end(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040E8CA615DuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    strm->total_in = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    strm->total_out = *(a2 + 40);
    if (a4)
    {
      v4 = 15;
    }

    else
    {
      v4 = -15;
    }

    if (deflateInit2_(strm, a3, 8, v4, 8, 0, "1.2.12", 112))
    {
      free(strm);
      *(a2 + 56) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *(a2 + 56) = strm;
      *(a2 + 48) = 1;
      *(a2 + 64) = compression_code_gzip;
      *(a2 + 72) = compression_end_gzip;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for gzip stream");
    return -30;
  }
}

uint64_t compression_init_encoder_bzip2(_DWORD *a1, uint64_t a2, int a3)
{
  if (*(a2 + 48))
  {
    compression_end(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x50uLL, 0x10900403A81BCDDuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    *&strm->total_in_lo32 = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    *&strm->total_out_lo32 = *(a2 + 40);
    if (BZ2_bzCompressInit(strm, a3, 0, 30))
    {
      free(strm);
      *(a2 + 56) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *(a2 + 56) = strm;
      *(a2 + 48) = 1;
      *(a2 + 64) = compression_code_bzip2;
      *(a2 + 72) = compression_end_bzip2;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for bzip2 stream");
    return -30;
  }
}

uint64_t compression_init_encoder_lzma(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v9 + 48))
  {
    compression_end(v10, v9);
  }

  if (lzma_lzma_preset())
  {
    *(v9 + 56) = 0;
    archive_set_error(v10, 12, "Internal error initializing compression library");
    return -30;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00405178BF3FuLL);
    if (v7)
    {
      memcpy(v7, &compression_init_encoder_lzma_lzma_init_data, 0x88uLL);
      v4 = lzma_alone_encoder();
      if (v4)
      {
        free(v7);
        *(v9 + 56) = 0;
        if (v4 == 5)
        {
          archive_set_error(v10, 12, "Internal error initializing compression library: Cannot allocate memory");
        }

        else
        {
          archive_set_error(v10, -1, "Internal error initializing compression library: It's a bug in liblzma");
        }

        return -30;
      }

      else
      {
        *(v9 + 56) = v7;
        *(v9 + 48) = 1;
        *(v9 + 64) = compression_code_lzma;
        *(v9 + 72) = compression_end_lzma;
        return 0;
      }
    }

    else
    {
      archive_set_error(v10, 12, "Can't allocate memory for lzma stream");
      return -30;
    }
  }
}

uint64_t compression_init_encoder_xz(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v12 + 48))
  {
    compression_end(v13, v12);
  }

  v9 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F00405178BF3FuLL);
  if (v9)
  {
    v8 = v9 + 136;
    if (v11 > 9)
    {
      v11 = 9;
    }

    if (lzma_lzma_preset())
    {
      free(v9);
      *(v12 + 56) = 0;
      archive_set_error(v13, 12, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *v8 = 33;
      v8[1] = __b;
      v8[2] = -1;
      memcpy(v9, &compression_init_encoder_xz_lzma_init_data, 0x88uLL);
      v5 = lzma_stream_encoder();
      if (v5)
      {
        free(v9);
        *(v12 + 56) = 0;
        if (v5 == 5)
        {
          archive_set_error(v13, 12, "Internal error initializing compression library: Cannot allocate memory");
        }

        else
        {
          archive_set_error(v13, -1, "Internal error initializing compression library: It's a bug in liblzma");
        }

        return -30;
      }

      else
      {
        *(v12 + 56) = v9;
        *(v12 + 48) = 1;
        *(v12 + 64) = compression_code_lzma;
        *(v12 + 72) = compression_end_lzma;
        return 0;
      }
    }
  }

  else
  {
    archive_set_error(v13, 12, "Can't allocate memory for xz stream");
    return -30;
  }
}

uint64_t compression_code_gzip(_DWORD *a1, Bytef **a2, int a3)
{
  strm = a2[7];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  strm->total_in = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  strm->total_out = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  v5 = deflate(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = strm->total_in;
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = strm->total_out;
  if (v5)
  {
    if (v5 == 1)
    {
      return 1;
    }

    else
    {
      archive_set_error(a1, -1, "GZip compression failed: deflate() call returned status %d", v5);
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_gzip(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 56);
  v3 = deflateEnd(strm);
  free(strm);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  if (v3)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor");
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_bzip2(_DWORD *a1, char **a2, int a3)
{
  strm = a2[7];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  *&strm->total_in_lo32 = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  *&strm->total_out_lo32 = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v5 = BZ2_bzCompress(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = (strm->total_in_lo32 + (strm->total_in_hi32 << 32));
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = (strm->total_out_lo32 + (strm->total_out_hi32 << 32));
  if (v5 == 1 || v5 == 3)
  {
    return 0;
  }

  else if (v5 == 4)
  {
    return 1;
  }

  else
  {
    archive_set_error(a1, -1, "Bzip2 compression failed: BZ2_bzCompress() call returned status %d", v5);
    return -30;
  }
}

uint64_t compression_end_bzip2(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 56);
  v3 = BZ2_bzCompressEnd(strm);
  free(strm);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  if (v3)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor");
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_lzma(_DWORD *a1, void *a2, int a3)
{
  v6 = a2[7];
  *v6 = *a2;
  v6[1] = a2[1];
  v6[2] = a2[2];
  v6[3] = a2[3];
  v6[4] = a2[4];
  v6[5] = a2[5];
  v5 = lzma_code();
  *a2 = *v6;
  a2[1] = v6[1];
  a2[2] = v6[2];
  a2[3] = v6[3];
  a2[4] = v6[4];
  a2[5] = v6[5];
  if (v5)
  {
    if (v5 == 1)
    {
      return 1;
    }

    else
    {
      if (v5 == 6)
      {
        v3 = lzma_memusage();
        archive_set_error(a1, 12, "lzma compression error: %ju MiB would have been needed", (v3 + 0xFFFFF) / 0x100000uLL);
      }

      else
      {
        archive_set_error(a1, -1, "lzma compression failed: lzma_code() call returned status %d", v5);
      }

      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_lzma(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  lzma_end();
  free(v3);
  result = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

unint64_t file_connect_hardlink_files(uint64_t a1)
{
  result = __archive_rb_tree_iterate((a1 + 66312), 0, 0);
  for (i = result; i; i = result)
  {
    v3 = *(i + 32);
    archive_entry_set_nlink(v3[4], *(i + 24));
    if (*(i + 24) > 1)
    {
      v3[10] = v3;
    }

    for (j = v3[9]; j; j = j[9])
    {
      j[10] = v3;
      archive_entry_set_nlink(j[4], *(i + 24));
    }

    result = __archive_rb_tree_iterate((a1 + 66312), i, 1u);
  }

  return result;
}

uint64_t make_toc(uint64_t a1)
{
  v18 = *(a1 + 248);
  v6 = -30;
  v15 = 0;
  v16 = xmlBufferCreate();
  if (!v16)
  {
    archive_set_error(a1, 12, "xmlBufferCreate() couldn't create xml buffer");
    goto LABEL_49;
  }

  v15 = xmlNewTextWriterMemory(v16, 0);
  if (!v15)
  {
    archive_set_error(a1, -1, "xmlNewTextWriterMemory() couldn't create xml writer");
    goto LABEL_49;
  }

  started = xmlTextWriterStartDocument(v15, "1.0", "UTF-8", 0);
  if (started < 0)
  {
    goto LABEL_6;
  }

  v8 = xmlTextWriterSetIndent(v15, 4);
  if (v8 < 0)
  {
    archive_set_error(a1, -1, "xmlTextWriterSetIndent() failed: %d", v8);
    goto LABEL_49;
  }

  v9 = xmlTextWriterStartElement(v15, "xar");
  if (v9 < 0)
  {
    goto LABEL_34;
  }

  started = xmlTextWriterStartElement(v15, "toc");
  if (started < 0)
  {
LABEL_6:
    archive_set_error(a1, -1, "xmlTextWriterStartDocument() failed: %d", started);
    goto LABEL_49;
  }

  v1 = time(0);
  if ((xmlwrite_time(a1, v15, "creation-time", v1, 0) & 0x80000000) == 0)
  {
    v14 = getalgsize(*(v18 + 128));
    if (!v14)
    {
LABEL_21:
      v17 = *(v18 + 24);
      while (v17 == *(v17 + 88) || !make_file_entry(a1, v15, v17))
      {
        if ((*(v17 + 360) & 2) != 0 && *(v17 + 96))
        {
          v17 = *(v17 + 96);
          v9 = xmlTextWriterStartElement(v15, "file");
          if (v9 < 0)
          {
            goto LABEL_34;
          }

          v10 = xmlTextWriterWriteFormatAttribute(v15, "id", "%d", *(v17 + 24));
          if (v10 < 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          while (v17 != *(v17 + 88))
          {
            v11 = xmlTextWriterEndElement(v15);
            if (v11 < 0)
            {
              goto LABEL_20;
            }

            if (*(v17 + 64))
            {
              v17 = *(v17 + 64);
              v9 = xmlTextWriterStartElement(v15, "file");
              if (v9 < 0)
              {
                goto LABEL_34;
              }

              v10 = xmlTextWriterWriteFormatAttribute(v15, "id", "%d", *(v17 + 24));
              if ((v10 & 0x80000000) == 0)
              {
                break;
              }

              goto LABEL_36;
            }

            v17 = *(v17 + 88);
          }
        }

        if (v17 == *(v17 + 88))
        {
          v12 = xmlTextWriterEndDocument(v15);
          if (v12 < 0)
          {
            archive_set_error(a1, -1, "xmlTextWriterEndDocument() failed: %d", v12);
          }

          else
          {
            *(v18 + 66184) = *(v18 + 8);
            *(v18 + 66200) = v16->use;
            checksum_init((v18 + 148), *(v18 + 128));
            if (!compression_init_encoder_gzip(a1, v18 + 536, 6, 1))
            {
              *(v18 + 536) = v16->content;
              *(v18 + 544) = v16->use;
              *(v18 + 552) = 0;
              *(v18 + 560) = v18 + 624;
              *(v18 + 568) = 0x10000;
              *(v18 + 576) = 0;
              while (1)
              {
                v13 = compression_code(a1, v18 + 536, 0);
                if (v13 >= 2)
                {
                  break;
                }

                v5 = 0x10000 - *(v18 + 568);
                checksum_update((v18 + 148), v18 + 624, v5);
                if (write_to_temp(a1, (v18 + 624), v5))
                {
                  break;
                }

                if (v13 == 1)
                {
                  if (!compression_end(a1, v18 + 536))
                  {
                    *(v18 + 66192) = *(v18 + 576);
                    *(v18 + 66208) = 1;
                    checksum_final((v18 + 148), v18 + 66216);
                    v6 = 0;
                  }

                  goto LABEL_49;
                }

                *(v18 + 560) = v18 + 624;
                *(v18 + 568) = 0x10000;
              }
            }
          }

          goto LABEL_49;
        }
      }

      goto LABEL_49;
    }

    v9 = xmlTextWriterStartElement(v15, "checksum");
    if (v9 < 0)
    {
LABEL_34:
      archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", v9);
      goto LABEL_49;
    }

    v2 = getalgname(*(v18 + 128));
    v10 = xmlTextWriterWriteAttribute(v15, "style", v2);
    if (v10 < 0)
    {
LABEL_36:
      archive_set_error(a1, -1, "xmlTextWriterWriteAttribute() failed: %d", v10);
      goto LABEL_49;
    }

    if ((xmlwrite_string(a1, v15, "offset", "0") & 0x80000000) == 0 && (xmlwrite_fstring(a1, v15, "size", "%d", v14) & 0x80000000) == 0)
    {
      v11 = xmlTextWriterEndElement(v15);
      if (v11 < 0)
      {
LABEL_20:
        archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v11);
        goto LABEL_49;
      }

      goto LABEL_21;
    }
  }

LABEL_49:
  if (v15)
  {
    xmlFreeTextWriter(v15);
  }

  if (v16)
  {
    xmlBufferFree(v16);
  }

  return v6;
}

_BYTE *archive_be32enc(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

_BYTE *archive_be16enc(_BYTE *result, __int16 a2)
{
  *result = HIBYTE(a2);
  result[1] = a2;
  return result;
}

_BYTE *archive_be64enc(_BYTE *a1, uint64_t a2)
{
  v4 = a2;
  archive_be32enc(a1, SHIDWORD(a2));
  return archive_be32enc(a1 + 4, v4);
}

uint64_t copy_out(uint64_t a1, off_t a2, size_t a3)
{
  v9 = *(a1 + 248);
  if (lseek(*v9, a2, 0) < 0)
  {
    v3 = __error();
    archive_set_error(a1, *v3, "lseek failed");
    return -30;
  }

  else
  {
    while (a3)
    {
      if (a3 > *(v9 + 66160))
      {
        v7 = *(v9 + 66160);
      }

      else
      {
        v7 = a3;
      }

      v6 = read(*v9, (v9 + 624 + 0x10000 - *(v9 + 66160)), v7);
      if (v6 < 0)
      {
        v4 = __error();
        archive_set_error(a1, *v4, "Can't read temporary file(%jd)", v6);
        return -30;
      }

      if (!v6)
      {
        archive_set_error(a1, 0, "Truncated xar archive");
        return -30;
      }

      *(v9 + 66160) -= v6;
      a3 -= v6;
      if (!*(v9 + 66160))
      {
        v8 = flush_wbuff(a1);
        if (v8)
        {
          return v8;
        }
      }
    }

    return 0;
  }
}

uint64_t flush_wbuff(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = __archive_write_output(a1, v3 + 624, 0x10000 - *(v3 + 66160));
  if (v2)
  {
    return v2;
  }

  else
  {
    *(v3 + 66160) = 0x10000;
    return 0;
  }
}

uint64_t xmlwrite_time(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, time_t a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  memset(&__b, 0, sizeof(__b));
  gmtime_r(&v8, &__b);
  memset(v12, 0, sizeof(v12));
  strftime(v12, 0x64uLL, "%Y-%m-%dT%H:%M:%S", &__b);
  if (v7)
  {
    __strcat_chk();
  }

  return xmlwrite_string(v11, v10, v9, v12);
}

const char *getalgname(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return "sha1";
    }

    if (a1 == 2)
    {
      return "md5";
    }
  }

  return 0;
}

uint64_t xmlwrite_string(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, const xmlChar *a4)
{
  if (a4)
  {
    started = xmlTextWriterStartElement(a2, a3);
    if (started < 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", started);
      return -30;
    }

    else if (a4 && (v6 = xmlTextWriterWriteString(a2, a4), v6 < 0))
    {
      archive_set_error(a1, -1, "xmlTextWriterWriteString() failed: %d", v6);
      return -30;
    }

    else
    {
      v7 = xmlTextWriterEndElement(a2);
      if (v7 < 0)
      {
        archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v7);
        return -30;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t xmlwrite_fstring(uint64_t a1, xmlTextWriter *a2, const xmlChar *a3, char *a4, ...)
{
  va_start(va, a4);
  v5 = *(a1 + 248);
  *(v5 + 112) = 0;
  archive_string_vsprintf((v5 + 104), a4, va);
  return xmlwrite_string(a1, a2, a3, *(v5 + 104));
}

uint64_t make_file_entry(uint64_t a1, xmlTextWriter *a2, uint64_t a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  i = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  started = 0;
  v46 = 0;
  outlen = 0;
  inlen = 0;
  v58 = *(a1 + 248);
  v46 = 0;
  v3 = *(a3 + 144);
  inlen = v3;
  outlen = v3;
  v50 = malloc_type_malloc(v3, 0x3E03C5E9uLL);
  if (v50)
  {
    started = UTF8Toisolat1(v50, &outlen, *(v59 + 136), &inlen);
    free(v50);
    if ((started & 0x80000000) != 0)
    {
      started = xmlTextWriterStartElement(v60, "name");
      if ((started & 0x80000000) != 0)
      {
LABEL_5:
        archive_set_error(v61, -1, "xmlTextWriterStartElement() failed: %d", started);
        return -30;
      }

      started = xmlTextWriterWriteAttribute(v60, "enctype", "base64");
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v61, -1, "xmlTextWriterWriteAttribute() failed: %d", started);
        return -30;
      }

      started = xmlTextWriterWriteBase64(v60, *(v59 + 136), 0, *(v59 + 144));
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v61, -1, "xmlTextWriterWriteBase64() failed: %d", started);
        return -30;
      }

      started = xmlTextWriterEndElement(v60);
      if ((started & 0x80000000) != 0)
      {
LABEL_11:
        archive_set_error(v61, -1, "xmlTextWriterEndElement() failed: %d", started);
        return -30;
      }
    }

    else
    {
      started = xmlwrite_string(v61, v60, "name", *(v59 + 136));
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v56 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v40 = archive_entry_filetype(*(v59 + 32));
    switch(v40)
    {
      case 4096:
        v57 = "fifo";
        break;
      case 8192:
        v57 = "character special";
        break;
      case 16384:
        v57 = "directory";
        break;
      case 24576:
        v57 = "block special";
        break;
      case 32768:
        goto LABEL_120;
      case 40960:
        v57 = "symlink";
        break;
      case 49152:
        v57 = "socket";
        break;
      default:
LABEL_120:
        if (*(v59 + 80))
        {
          v57 = "hardlink";
          v56 = "link";
          if (*(v59 + 80) == v59)
          {
            v53 = 0;
            archive_strncat(&v52, "original", 8uLL);
          }

          else
          {
            archive_string_sprintf(&v52, "%d", *(*(v59 + 80) + 24));
          }
        }

        else
        {
          v57 = "file";
        }

        break;
    }

    started = xmlwrite_string_attr(v61, v60, "type", v57, v56, v52);
    archive_string_free(&v52);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    if (*(v59 + 360))
    {
      return 0;
    }

    v39 = archive_entry_filetype(*(v59 + 32));
    if (v39 == 0x2000 || v39 == 24576)
    {
      started = xmlTextWriterStartElement(v60, "device");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_5;
      }

      v38 = v61;
      v37 = v60;
      v4 = archive_entry_rdevmajor(*(v59 + 32));
      started = xmlwrite_fstring(v38, v37, "major", "%d", v4);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      v36 = v61;
      v35 = v60;
      v5 = archive_entry_rdevminor(*(v59 + 32));
      started = xmlwrite_fstring(v36, v35, "minor", "%d", v5);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v60);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (v39 == 40960)
    {
      started = xmlwrite_string_attr(v61, v60, "link", *(v59 + 160), "type", "broken");
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v34 = v61;
    v33 = v60;
    v6 = archive_entry_ino64(*(v59 + 32));
    started = xmlwrite_fstring(v34, v33, "inode", "%jd", v6);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    if (archive_entry_dev(*(v59 + 32)))
    {
      v32 = v61;
      v31 = v60;
      v7 = archive_entry_dev(*(v59 + 32));
      started = xmlwrite_fstring(v32, v31, "deviceno", "%d", v7);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v30 = v61;
    v29 = v60;
    v8 = archive_entry_mode(*(v59 + 32));
    started = xmlwrite_mode(v30, v29, "mode", v8);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    v28 = v61;
    v27 = v60;
    v9 = archive_entry_uid(*(v59 + 32));
    started = xmlwrite_fstring(v28, v27, "uid", "%d", v9);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    started = _archive_entry_uname_l(*(v59 + 32), &v49, &v48, *(v58 + 616));
    if (started)
    {
      if (*__error() == 12)
      {
        archive_set_error(v61, 12, "Can't allocate memory for Uname");
        return -30;
      }

      v26 = v61;
      v10 = archive_entry_uname(*(v59 + 32));
      archive_set_error(v26, 79, "Can't translate uname '%s' to UTF-8", v10);
      v46 = -20;
    }

    if (v48)
    {
      started = xmlwrite_string(v61, v60, "user", v49);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v25 = v61;
    v24 = v60;
    v11 = archive_entry_gid(*(v59 + 32));
    started = xmlwrite_fstring(v25, v24, "gid", "%d", v11);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    started = _archive_entry_gname_l(*(v59 + 32), &v49, &v48, *(v58 + 616));
    if (started)
    {
      if (*__error() == 12)
      {
        archive_set_error(v61, 12, "Can't allocate memory for Gname");
        return -30;
      }

      v23 = v61;
      v12 = archive_entry_gname(*(v59 + 32));
      archive_set_error(v23, 79, "Can't translate gname '%s' to UTF-8", v12);
      v46 = -20;
    }

    if (v48)
    {
      started = xmlwrite_string(v61, v60, "group", v49);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_ctime_is_set(*(v59 + 32)))
    {
      v22 = v61;
      v21 = v60;
      v13 = archive_entry_ctime(*(v59 + 32));
      started = xmlwrite_time(v22, v21, "ctime", v13, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_mtime_is_set(*(v59 + 32)))
    {
      v20 = v61;
      v19 = v60;
      v14 = archive_entry_mtime(*(v59 + 32));
      started = xmlwrite_time(v20, v19, "mtime", v14, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_atime_is_set(*(v59 + 32)))
    {
      v18 = v61;
      v17 = v60;
      v15 = archive_entry_atime(*(v59 + 32));
      started = xmlwrite_time(v18, v17, "atime", v15, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v55 = archive_entry_fflags_text(*(v59 + 32));
    if (v55)
    {
      started = make_fflags_entry(v61, v60, "flags", v55);
      if ((started & 0x80000000) != 0)
      {
        return started;
      }

      started = make_fflags_entry(v61, v60, "ext2", v55);
      if ((started & 0x80000000) != 0)
      {
        return started;
      }
    }

    archive_entry_xattr_reset(*(v59 + 32));
    for (i = *(v59 + 192); i; i = *(i + 8))
    {
      v43 = 0;
      v42 = 0;
      v41 = 0;
      archive_entry_xattr_next(*(v59 + 32), &v43, &v42, &v41);
      started = xmlTextWriterStartElement(v60, "ea");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      started = xmlTextWriterWriteFormatAttribute(v60, "id", "%d", *i);
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v61, -1, "xmlTextWriterWriteAttribute() failed: %d", started);
        return -30;
      }

      started = xmlwrite_heap(v61, v60, i);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlwrite_string(v61, v60, "name", v43);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v60);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if (*(v59 + 232))
    {
      started = xmlTextWriterStartElement(v60, "data");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      started = xmlwrite_heap(v61, v60, v59 + 208);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v60);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if (*(v59 + 344))
    {
      started = xmlTextWriterStartElement(v60, "content");
      if ((started & 0x80000000) != 0)
      {
LABEL_109:
        archive_set_error(v61, -1, "xmlTextWriterStartElement() failed: %d", started);
        return -30;
      }

      started = xmlwrite_string(v61, v60, "interpreter", *(v59 + 336));
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlwrite_string(v61, v60, "type", "script");
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v60);
      if ((started & 0x80000000) != 0)
      {
LABEL_115:
        archive_set_error(v61, -1, "xmlTextWriterEndElement() failed: %d", started);
        return -30;
      }
    }

    return v46;
  }

  archive_set_error(v61, 12, "Can't allocate memory");
  return -30;
}

uint64_t xmlwrite_string_attr(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, const xmlChar *a4, const xmlChar *a5, const xmlChar *a6)
{
  started = xmlTextWriterStartElement(a2, a3);
  if (started < 0)
  {
    archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", started);
    return -30;
  }

  else if (a5 && a6 && (v8 = xmlTextWriterWriteAttribute(a2, a5, a6), v8 < 0))
  {
    archive_set_error(a1, -1, "xmlTextWriterWriteAttribute() failed: %d", v8);
    return -30;
  }

  else if (a4 && (v9 = xmlTextWriterWriteString(a2, a4), v9 < 0))
  {
    archive_set_error(a1, -1, "xmlTextWriterWriteString() failed: %d", v9);
    return -30;
  }

  else
  {
    v10 = xmlTextWriterEndElement(a2);
    if (v10 < 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v10);
      return -30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t xmlwrite_mode(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, unsigned __int16 a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = 48;
  v5[1] = ((a4 >> 6) & 7) + 48;
  v5[2] = ((a4 >> 3) & 7) + 48;
  v5[3] = (a4 & 7) + 48;
  v5[4] = 0;
  return xmlwrite_string(a1, a2, a3, v5);
}

uint64_t make_fflags_entry(_DWORD *a1, xmlTextWriter *a2, const char *a3, char *a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = 0;
  if (!strcmp(a3, "ext2"))
  {
    v13 = make_fflags_entry_flagext2;
  }

  else
  {
    v13 = make_fflags_entry_flagbsd;
  }

  v10 = 0;
  __s = a4;
  do
  {
    v6 = strchr(__s, 44);
    if (!v6)
    {
      v6 = &__s[strlen(__s)];
    }

    for (i = v13; *i; i += 2)
    {
      if (!(*i)[v6 - __s] && *__s == **i && !strncmp(__s, *i, v6 - __s))
      {
        v4 = v10++;
        v20[v4] = i;
        break;
      }
    }

    if (*v6 == 44)
    {
      __s = v6 + 1;
    }

    else
    {
      __s = 0;
    }
  }

  while (__s);
  if (v10 <= 0)
  {
    return 0;
  }

  started = xmlTextWriterStartElement(a2, a3);
  if ((started & 0x80000000) == 0)
  {
    for (j = 0; j < v10; ++j)
    {
      v8 = xmlwrite_string(a1, a2, *(v20[j] + 8), 0);
      if (v8)
      {
        return v8;
      }
    }

    v9 = xmlTextWriterEndElement(a2);
    if (v9 < 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v9);
      return -30;
    }

    return 0;
  }

  archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", started);
  return -30;
}

uint64_t xmlwrite_heap(_DWORD *a1, xmlTextWriter *a2, uint64_t a3)
{
  if ((xmlwrite_fstring(a1, a2, "length", "%ju", *(a3 + 24)) & 0x80000000) != 0)
  {
    return -30;
  }

  else if ((xmlwrite_fstring(a1, a2, "offset", "%ju", *(a3 + 16)) & 0x80000000) != 0)
  {
    return -30;
  }

  else if ((xmlwrite_fstring(a1, a2, "size", "%ju", *(a3 + 32)) & 0x80000000) != 0)
  {
    return -30;
  }

  else
  {
    v5 = *(a3 + 40);
    switch(v5)
    {
      case 1:
        v3 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-gzip");
        break;
      case 2:
        v3 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-bzip2");
        break;
      case 3:
        v3 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-lzma");
        break;
      case 4:
        v3 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-xz");
        break;
      default:
        v3 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/octet-stream");
        break;
    }

    if (v3 < 0)
    {
      return -30;
    }

    else if ((xmlwrite_sum(a1, a2, "archived-checksum", a3 + 48) & 0x80000000) != 0)
    {
      return -30;
    }

    else if ((xmlwrite_sum(a1, a2, "extracted-checksum", a3 + 88) & 0x80000000) != 0)
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t xmlwrite_sum(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 8))
  {
    return 0;
  }

  v10 = getalgname(*a4);
  v9 = getalgsize(*a4);
  if (!v10)
  {
    return 0;
  }

  v8 = v16;
  v7 = (a4 + 16);
  for (i = 0; i < v9; ++i)
  {
    *v8 = a0123456789abcd[*v7 >> 4];
    v4 = v8 + 1;
    v8 += 2;
    *v4 = a0123456789abcd[*v7++ & 0xF];
  }

  *v8 = 0;
  if ((xmlwrite_string_attr(a1, a2, a3, v16, "style", v10) & 0x80000000) != 0)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

void file_free_hardlinks(uint64_t a1)
{
  v2 = 0;
  for (i = __archive_rb_tree_iterate((a1 + 66312), 0, 0); ; i = v2)
  {
    v1 = 0;
    if (i)
    {
      v2 = __archive_rb_tree_iterate((a1 + 66312), i, 1u);
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    __archive_rb_tree_remove_node((a1 + 66312), i);
    free(i);
  }
}

void file_free_register(uint64_t a1)
{
  for (i = *(a1 + 66296); i; i = v1)
  {
    v1 = *(i + 56);
    file_free(i);
  }
}

uint64_t file_hd_cmp_node(uint64_t a1, uint64_t a2)
{
  __s1 = archive_entry_pathname(*(*(a1 + 32) + 32));
  v2 = archive_entry_pathname(*(*(a2 + 32) + 32));
  return strcmp(__s1, v2);
}

uint64_t archive_read_support_filter_xz(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("xz"))
  {
    if (__archive_read_register_bidder(a1, 0, "xz", xz_bidder_vtable))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement");
    return -30;
  }
}

uint64_t archive_read_support_filter_lzma(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("lzma"))
  {
    if (__archive_read_register_bidder(a1, 0, "lzma", lzma_bidder_vtable))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement");
    return -30;
  }
}

uint64_t archive_read_support_filter_lzip(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("lzip"))
  {
    if (__archive_read_register_bidder(a1, 0, "lzip", lzip_bidder_vtable))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlement");
    return -30;
  }
}

uint64_t xz_bidder_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  v3 = 0;
  __s1 = __archive_read_filter_ahead(a2, 6uLL, &v3);
  if (__s1)
  {
    if (!memcmp(__s1, &unk_1BF33B230, 6uLL))
    {
      return 48;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t xz_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 6;
  *(a1 + 48) = "xz";
  return xz_lzma_bidder_init(a1);
}

uint64_t xz_lzma_bidder_init(uint64_t a1)
{
  v3 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10F0040777D52FDuLL);
  v4 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v3 && v4)
  {
    *(a1 + 40) = v3;
    *(v3 + 18) = 0x10000;
    *(v3 + 17) = v4;
    *(a1 + 32) = xz_lzma_reader_vtable;
    *(v3 + 1) = 0;
    *(v3 + 3) = *(v3 + 17);
    *(v3 + 4) = *(v3 + 18);
    *(v3 + 41) = 0;
    if (*(a1 + 56) == 9)
    {
      *(v3 + 161) = 0;
      return 0;
    }

    else
    {
      *(v3 + 161) = 1;
      if (*(a1 + 56) == 6)
      {
        v2 = lzma_stream_decoder();
      }

      else
      {
        v2 = lzma_alone_decoder();
      }

      if (v2)
      {
        set_error_0(a1, v2);
        free(*(v3 + 17));
        free(v3);
        *(a1 + 40) = 0;
        return -30;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for xz decompression");
    free(v4);
    free(v3);
    return -30;
  }
}

_DWORD *set_error_0(_DWORD *result, unsigned int a2)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 5u:
        return archive_set_error(*(result + 3), 12, "Lzma library error: Cannot allocate memory");
      case 6u:
        return archive_set_error(*(result + 3), 12, "Lzma library error: Out of memory");
      case 7u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: format not recognized");
      case 8u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: Invalid options");
      case 9u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: Corrupted input data");
      case 0xAu:
        return archive_set_error(*(result + 3), -1, "Lzma library error:  No progress is possible");
      default:
        return archive_set_error(*(result + 3), -1, "Lzma decompression failed:  Unknown error");
    }
  }

  return result;
}

uint64_t xz_filter_read(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a1 + 40);
  while (1)
  {
    *(v12 + 24) = *(v12 + 136);
    *(v12 + 32) = *(v12 + 144);
    v9 = *(v12 + 168);
    while (1)
    {
      v4 = 0;
      if (*(v12 + 32))
      {
        v4 = *(v12 + 160) == 0;
      }

      if (!v4)
      {
        break;
      }

      if (!*(v12 + 161))
      {
        v5 = lzip_init(v14);
        if (v5)
        {
          return v5;
        }

        *(v12 + 161) = 1;
      }

      v2 = __archive_read_filter_ahead(*(v14 + 2), 1uLL, &v10);
      *v12 = v2;
      if (!*v12 && v10 < 0)
      {
        archive_set_error(*(v14 + 3), -1, "truncated input");
        return -30;
      }

      *(v12 + 8) = v10;
      v6 = lzma_code();
      if (v6)
      {
        if (v6 != 1)
        {
          set_error_0(v14, v6);
          return -30;
        }

        *(v12 + 160) = 1;
      }

      __archive_read_filter_consume(*(v14 + 2), v10 - *(v12 + 8));
      *(v12 + 168) += v10 - *(v12 + 8);
    }

    v11 = *(v12 + 24) - *(v12 + 136);
    *(v12 + 152) += v11;
    *(v12 + 176) += v11;
    if (v11)
    {
      break;
    }

    if (v9 != *(v12 + 168) && v14[14] == 9 && *(v12 + 160))
    {
      v7 = lzip_tail(v14);
      if (v7)
      {
        return v7;
      }

      if (!*(v12 + 160))
      {
        continue;
      }
    }

    *v13 = 0;
    return v11;
  }

  *v13 = *(v12 + 136);
  if (v14[14] == 9)
  {
    *(v12 + 164) = lzma_crc32();
    if (*(v12 + 160))
    {
      v8 = lzip_tail(v14);
      if (v8)
      {
        return v8;
      }
    }
  }

  return v11;
}

uint64_t xz_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  lzma_end();
  free(v2[17]);
  free(v2);
  return 0;
}

uint64_t lzip_init(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v4 = 0;
  v8 = *(a1 + 40);
  v7 = __archive_read_filter_ahead(*(a1 + 16), 6uLL, &v4);
  if (v7)
  {
    *(v8 + 162) = *(v7 + 4);
    v5 = 93;
    if ((*(v7 + 5) & 0x1Fu) >= 0xC && (*(v7 + 5) & 0x1Fu) <= 0x1D)
    {
      v3 = 1 << (*(v7 + 5) & 0x1F);
      if ((*(v7 + 5) & 0x1Fu) > 0xC)
      {
        v3 -= v3 / 0x10 * (*(v7 + 5) >> 5);
      }

      archive_le32enc_1(&v6, v3);
      __archive_read_filter_consume(*(v9 + 2), 6);
      *(v8 + 168) = 6;
      v11 = 0x4000000000000001;
      v12 = 0;
      v13 = -1;
      v14 = 0;
      v2 = lzma_properties_decode();
      if (v2 || (v2 = lzma_raw_decoder(), free(v12), v2))
      {
        set_error_0(v9, v2);
        return -30;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t lzip_tail(uint64_t a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v8 = *(a1 + 40);
  if (*(v8 + 162))
  {
    v5 = 20;
  }

  else
  {
    v5 = 12;
  }

  v7 = __archive_read_filter_ahead(*(v9 + 16), v5, &v6);
  if (v7 || (v6 & 0x8000000000000000) == 0)
  {
    if (v7 && v6 >= v5)
    {
      v4 = *(v8 + 164);
      if (v4 == archive_le32dec_1(v7))
      {
        v3 = *(v8 + 176);
        if (v3 == archive_le64dec_0(v7 + 4))
        {
          if (*(v8 + 162) != 1 || (v2 = *(v8 + 168) + v5, v2 == archive_le64dec_0(v7 + 12)))
          {
            __archive_read_filter_consume(*(v9 + 16), v5);
            if (lzip_has_member(*(v9 + 16)))
            {
              *(v8 + 161) = 0;
              *(v8 + 164) = 0;
              *(v8 + 176) = 0;
              *(v8 + 168) = 0;
              *(v8 + 160) = 0;
            }

            return 0;
          }

          else
          {
            archive_set_error(*(v9 + 24), -1, "Lzip: Member size error");
            return -25;
          }
        }

        else
        {
          archive_set_error(*(v9 + 24), -1, "Lzip: Uncompressed size error");
          return -25;
        }
      }

      else
      {
        archive_set_error(*(v9 + 24), -1, "Lzip: CRC32 error");
        return -25;
      }
    }

    else
    {
      archive_set_error(*(v9 + 24), -1, "Lzip: Remaining data is less bytes");
      return -25;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t archive_le32enc_1(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t lzip_has_member(uint64_t a1)
{
  v4 = a1;
  __s1 = 0;
  v2 = 0;
  __s1 = __archive_read_filter_ahead(a1, 6uLL, &v2);
  if (__s1)
  {
    if (!memcmp(__s1, "LZIP", 4uLL))
    {
      if (!*(__s1 + 4) || *(__s1 + 4) == 1)
      {
        if ((*(__s1 + 5) & 0x1Fu) >= 0xC && (*(__s1 + 5) & 0x1Fu) <= 0x1D)
        {
          return 48;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_bidder_bid(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = __archive_read_filter_ahead(a2, 0xEuLL, &v6);
  if (v7)
  {
    v3 = 0;
    if (*v7 <= 0xE0u)
    {
      if (*v7 == 93 || *v7 == 94)
      {
        v3 = 8;
      }

      if (archive_le64dec_0(v7 + 5) == -1)
      {
        v3 += 64;
      }

      v5 = archive_le32dec_1(v7 + 1);
      if (v5 == 4096 || v5 == 0x2000 || v5 == 0x4000 || v5 == 0x8000 || v5 == 0x10000 || v5 == 0x20000 || v5 == 0x40000 || v5 == 0x80000 || v5 == 0x100000 || v5 == 0x200000 || v5 == 0x400000 || v5 == 0x800000 || v5 == 0x1000000 || v5 == 0x2000000 || v5 == 0x4000000 || v5 == 0x8000000)
      {
        return (v3 + 32);
      }

      else
      {
        if (v5 > 0x3F00000 || v5 < 0x300000 || (v5 & 0xFFFFF) != 0 || v3 != 72)
        {
          return 0;
        }

        return 104;
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 5;
  *(a1 + 48) = "lzma";
  return xz_lzma_bidder_init(a1);
}

uint64_t lzip_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 9;
  *(a1 + 48) = "lzip";
  return xz_lzma_bidder_init(a1);
}

uint64_t archive_write_disk_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_skip_file") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 176) = 1;
    *(a1 + 184) = a2;
    *(a1 + 192) = a3;
    return 0;
  }
}

uint64_t archive_write_disk_gid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_gid") == -30)
  {
    return -30;
  }

  if (*(a1 + 208))
  {
    return (*(a1 + 208))(*(a1 + 224), a2, a3);
  }

  return a3;
}

uint64_t archive_write_disk_uid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_uid") == -30)
  {
    return -30;
  }

  if (*(a1 + 232))
  {
    return (*(a1 + 232))(*(a1 + 248), a2, a3);
  }

  return a3;
}

size_t _archive_write_disk_data(unsigned int *a1, _BYTE *a2, size_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 4, "archive_write_data") == -30)
  {
    return -30;
  }

  if ((a1[126] & 0x8000) != 0)
  {
    return hfs_write_data_block(a1, a2, a3);
  }

  return write_data_block(a1, a2, a3);
}

uint64_t _archive_write_disk_filter_bytes(uint64_t a1, int a2)
{
  if (a2 != -1 && a2)
  {
    return -1;
  }

  else
  {
    return *(a1 + 536);
  }
}

BOOL la_verify_filetype(__int16 a1, unsigned __int16 a2)
{
  v3 = 0;
  switch(a2)
  {
    case 0x1000u:
      v3 = (a1 & 0xF000) == 4096;
      break;
    case 0x2000u:
      v3 = (a1 & 0xF000) == 0x2000;
      break;
    case 0x4000u:
      v3 = (a1 & 0xF000) == 0x4000;
      break;
    case 0x6000u:
      v3 = (a1 & 0xF000) == 24576;
      break;
    case 0x8000u:
      v3 = (a1 & 0xF000) == 0x8000;
      break;
    case 0xA000u:
      v3 = (a1 & 0xF000) == 40960;
      break;
    case 0xC000u:
      v3 = (a1 & 0xF000) == 49152;
      break;
  }

  return v3;
}

uint64_t set_times(_DWORD *a1, int a2, unsigned int a3, const char *a4, __darwin_time_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v12) = 0;
  if (a7 < a9 || a7 == a9 && a8 < a10)
  {
    HIDWORD(v12) = set_time(a2, a3, a4, a5, a6, a7, a8);
  }

  LODWORD(v12) = set_time(a2, a3, a4, a5, a6, a9, a10);
  if (v12)
  {
    v10 = __error();
    archive_set_error(a1, *v10, "Can't restore time");
    return -20;
  }

  else
  {
    return 0;
  }
}

uint64_t set_fflags_platform(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a5;
  v9 = a6;
  if (a5 || a6)
  {
    v8 = lazy_stat(a1);
    if (v8)
    {
      return v8;
    }

    else
    {
      *(a1 + 396) &= ~v9;
      *(a1 + 396) |= v10;
      if (*(a1 + 168))
      {
        *(a1 + 396) &= 0xFFE8FFFF;
      }

      if ((*(a1 + 396) & 0x20) != 0 && hfs_set_compressed_fflag(a1) == -20)
      {
        *(a1 + 396) &= ~0x20u;
      }

      if (a2 < 0 || fchflags(a2, *(a1 + 396)))
      {
        if (lchflags(a3, *(a1 + 396)))
        {
          v6 = __error();
          archive_set_error(a1, *v6, "Failed to set file flags");
          return -20;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t set_mac_metadata(_DWORD *a1, char *a2, const void *a3, size_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  memset(v15, 0, sizeof(v15));
  if (a2)
  {
    v10 = strlen(v18);
  }

  else
  {
    v10 = 0;
  }

  archive_strncat(v15, a2, v10);
  archive_strcat(v15, ".XXXXXX");
  __fd = mkstemp(v15[0]);
  if (__fd < 0)
  {
    v9 = v19;
    v4 = __error();
    archive_set_error(v9, *v4, "Failed to restore metadata");
    archive_string_free(v15);
    return -20;
  }

  else
  {
    v14 = write(__fd, v17, v16);
    close(__fd);
    if (v14 == v16)
    {
      if ((v19[126] & 0x8000) == 0 || lazy_stat(v19))
      {
        v6 = copy_metadata(v19, v15[0], v18, 0);
      }

      else
      {
        v6 = copy_metadata(v19, v15[0], v18, v19[99] & 0x20);
      }

      v12 = v6;
    }

    else
    {
      v8 = v19;
      v5 = __error();
      archive_set_error(v8, *v5, "Failed to restore metadata");
      v12 = -20;
    }

    unlink(v15[0]);
    archive_string_free(v15);
    return v12;
  }
}

uint64_t set_time(int a1, uint64_t a2, const char *a3, __darwin_time_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v9.tv_sec = a4;
  v9.tv_usec = a5 / 1000;
  v10 = a6;
  v11 = a7 / 1000;
  if (a1 < 0)
  {
    return lutimes(a3, &v9);
  }

  else
  {
    return futimes(a1, &v9);
  }
}

uint64_t lazy_stat(uint64_t a1)
{
  if (*(a1 + 424))
  {
    return 0;
  }

  else if ((*(a1 + 516) & 0x80000000) != 0 || fstat(*(a1 + 516), (a1 + 280)))
  {
    if (lstat(*(a1 + 440), (a1 + 280)))
    {
      v1 = __error();
      archive_set_error(a1, *v1, "Couldn't stat file");
      return -20;
    }

    else
    {
      *(a1 + 424) = a1 + 280;
      return 0;
    }
  }

  else
  {
    *(a1 + 424) = a1 + 280;
    return 0;
  }
}

uint64_t hfs_set_compressed_fflag(_DWORD *a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  for (i = 0; i < 4; ++i)
  {
    v9 = lazy_stat(v11);
    if (v9)
    {
      return v9;
    }

    LODWORD(v6) = v11[99];
    HIDWORD(v6) = 32;
    v7 = -1;
    *__error() = 0;
    v9 = ffsctl(v11[129], 0xC00C4114uLL, &v6, 0);
    if (!v9 && v6 == v7)
    {
      v10 = 1;
      break;
    }

    if ((v9 & 0x80000000) != 0 && *__error() != 35)
    {
      break;
    }
  }

  if (!getenv("FORCE_UF_COMPRESS_FFSCTL") || (v10 & 1) != 0)
  {
    if ((v10 & 1) == 0)
    {
      v9 = lazy_stat(v11);
      if (v9)
      {
        return v9;
      }

      v11[99] |= 0x20u;
      if (fchflags(v11[129], v11[99]) && *__error() != 45)
      {
        v4 = v11;
        v2 = __error();
        archive_set_error(v4, *v2, "Failed to set UF_COMPRESSED file flag");
        return -20;
      }
    }

    return 0;
  }

  v5 = v11;
  v1 = __error();
  archive_set_error(v5, *v1, "Failed to set UF_COMPRESSED file flag");
  return -20;
}

uint64_t copy_metadata(_DWORD *a1, const char *a2, const char *a3, int a4)
{
  v9 = 0;
  if (!a4)
  {
    if (copyfile(a2, a3, 0, 0x8C0005u) < 0)
    {
      v5 = __error();
      archive_set_error(a1, *v5, "Failed to restore metadata");
      return -20;
    }

    return v9;
  }

  tempdatafork = create_tempdatafork(a1, a2);
  if (tempdatafork != -1)
  {
    v8 = open(a3, 0);
    if (v8 == -1)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Failed to open the data fork for metadata");
      close(tempdatafork);
      return -20;
    }

    v9 = copy_xattrs(a1, tempdatafork, v8);
    if (!v9)
    {
      v9 = copy_acls(a1, tempdatafork, v8);
    }

    close(tempdatafork);
    close(v8);
    return v9;
  }

  return -20;
}

uint64_t create_tempdatafork(_DWORD *a1, const char *a2)
{
  v10 = a1;
  v9 = a2;
  memset(to, 0, sizeof(to));
  archive_strncat(to, "tar.md.XXXXXX", 0xDuLL);
  v7 = mkstemp(to[0]);
  if ((v7 & 0x80000000) != 0)
  {
    v6 = v10;
    v2 = __error();
    archive_set_error(v6, *v2, "Failed to mkstemp");
    archive_string_free(to);
    return -1;
  }

  else
  {
    if (copyfile(v9, to[0], 0, 0x8C0005u) < 0)
    {
      v5 = v10;
      v3 = __error();
      archive_set_error(v5, *v3, "Failed to restore metadata");
      close(v7);
      v7 = -1;
    }

    unlink(to[0]);
    archive_string_free(to);
    return v7;
  }
}

uint64_t copy_xattrs(_DWORD *a1, int a2, int a3)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v13 = flistxattr(a2, 0, 0, 0);
  if (v13 == -1)
  {
    goto LABEL_2;
  }

  v12 = malloc_type_malloc(v13, 0x96359A49uLL);
  if (!v12)
  {
    archive_set_error(a1, 12, "Can't allocate memory for metadata(xattr)");
    v10 = -30;
    goto LABEL_16;
  }

  v14 = flistxattr(a2, v12, v13, 0);
  if (v14 == -1)
  {
LABEL_2:
    v3 = __error();
    archive_set_error(a1, *v3, "Failed to read metadata(xattr)");
    v10 = -20;
  }

  else
  {
    for (i = 0; i < v14; i += strlen(&v12[i]) + 1)
    {
      size = fgetxattr(a2, &v12[i], 0, 0, 0, 0);
      if (size == -1)
      {
        goto LABEL_13;
      }

      v8 = v11;
      v11 = malloc_type_realloc(v11, size, 0x346D8499uLL);
      if (!v11)
      {
        archive_set_error(a1, 12, "Failed to get metadata(xattr)");
        v10 = -20;
        free(v8);
        break;
      }

      sizea = fgetxattr(a2, &v12[i], v11, size, 0, 0);
      if (sizea == -1 || fsetxattr(a3, &v12[i], v11, sizea, 0, 0) == -1)
      {
LABEL_13:
        v4 = __error();
        archive_set_error(a1, *v4, "Failed to get metadata(xattr)");
        v10 = -20;
        break;
      }
    }
  }

LABEL_16:
  free(v12);
  free(v11);
  return v10;
}

uint64_t copy_acls(_DWORD *a1, int a2, int a3)
{
  v7 = 0;
  v6 = 0;
  acl = acl_get_fd(a2);
  if (!acl)
  {
    if (*__error() == 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v7 = acl_dup(acl);
  if (acl_set_fd_np(a3, v7, v3) == -1)
  {
LABEL_6:
    v4 = __error();
    archive_set_error(a1, *v4, "Failed to get metadata(acl)");
    v6 = -20;
  }

  if (acl)
  {
    acl_free(acl);
  }

  if (v7)
  {
    acl_free(v7);
  }

  return v6;
}

uint64_t current_fixup(uint64_t a1, const char *a2)
{
  if (!*(a1 + 160))
  {
    *(a1 + 160) = new_fixup(a1, a2);
  }

  return *(a1 + 160);
}

_DWORD *fsobj_error(_DWORD *result, _BYTE **a2, int a3, const char *a4, const char *a5)
{
  if (result)
  {
    *result = a3;
  }

  if (a2)
  {
    return archive_string_sprintf(a2, "%s%s", a4, a5);
  }

  return result;
}

uint64_t create_dir(_DWORD *a1, char *a2)
{
  v18 = a1;
  v17 = a2;
  memset(&__b, 0, sizeof(__b));
  v14 = strrchr(v17, 47);
  if (v14)
  {
    v13 = v14 + 1;
  }

  else
  {
    v13 = v17;
  }

  if (*v13 && (*v13 != 46 || v13[1]) && (*v13 != 46 || v13[1] != 46 || v13[2]))
  {
    if (stat(v17, &__b))
    {
      if (*__error() != 2 && *__error() != 20)
      {
        v8 = v18;
        v4 = __error();
        archive_set_error(v8, *v4, "Can't test directory '%s'", v17);
        return -25;
      }

      if (v14)
      {
        *v14 = 0;
        dir = create_dir(v18, v17);
        *v14 = 47;
        if (dir)
        {
          return dir;
        }
      }
    }

    else
    {
      if ((__b.st_mode & 0xF000) == 0x4000)
      {
        return 0;
      }

      if ((v18[128] & 8) != 0)
      {
        archive_set_error(v18, 17, "Can't create directory '%s'", v17);
        return -25;
      }

      if (unlink(v17))
      {
        v9 = v18;
        v3 = __error();
        archive_set_error(v9, *v3, "Can't create directory '%s': Conflicting file cannot be removed", v17);
        return -25;
      }
    }

    v12 = ~*(v18 + 72) & 0x1FF;
    v11 = ~*(v18 + 72) & 0x3D | 0x1C0;
    if (!mkdir(v17, v11))
    {
      if (v11 != v12)
      {
        v15 = new_fixup(v18, v17);
        if (!v15)
        {
          return -30;
        }

        v15[40] |= 0x20000000u;
        *(v15 + 32) = v12;
      }

      return 0;
    }

    if (stat(v17, &__b) || (__b.st_mode & 0xF000) != 0x4000)
    {
      v7 = v18;
      v5 = __error();
      archive_set_error(v7, *v5, "Failed to create dir '%s'", v17);
      return -25;
    }

    else
    {
      return 0;
    }
  }

  else if (v14)
  {
    *v14 = 0;
    v2 = create_dir(v18, v17);
    *v14 = 47;
    return v2;
  }

  else
  {
    return 0;
  }
}

_DWORD *new_fixup(uint64_t a1, const char *a2)
{
  v3 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B004017AD3FEEuLL);
  if (v3)
  {
    *v3 = *(a1 + 152);
    *(a1 + 152) = v3;
    v3[40] = 0;
    *(v3 + 33) = 0;
    *(v3 + 21) = strdup(a2);
    return v3;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for a fixup");
    return 0;
  }
}

uint64_t create_parent_dir(_DWORD *a1, char *a2)
{
  v4 = strrchr(a2, 47);
  if (v4)
  {
    *v4 = 0;
    dir = create_dir(a1, a2);
    *v4 = 47;
    return dir;
  }

  else
  {
    return 0;
  }
}

BOOL older(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v11 = *(a1 + 48);
  }

  else
  {
    if (*(a1 + 48) > 0x7FFFFFFFFFFFFFFFuLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = *(a1 + 48);
    }

    v11 = v10;
  }

  if (archive_entry_mtime(a2) < 0)
  {
    v9 = archive_entry_mtime(a2);
  }

  else
  {
    if (archive_entry_mtime(a2) <= 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = archive_entry_mtime(a2);
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = v8;
  }

  if (v11 >= v9)
  {
    if ((*(a1 + 48) & 0x8000000000000000) != 0)
    {
      v7 = *(a1 + 48);
    }

    else
    {
      if (*(a1 + 48) > 0x7FFFFFFFFFFFFFFFuLL)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = *(a1 + 48);
      }

      v7 = v6;
    }

    if (archive_entry_mtime(a2) < 0)
    {
      v5 = archive_entry_mtime(a2);
    }

    else
    {
      if (archive_entry_mtime(a2) <= 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = archive_entry_mtime(a2);
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v5 = v4;
    }

    if (v7 <= v5)
    {
      v3 = *(a1 + 56);
      return v3 < archive_entry_mtime_nsec(a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t la_mktemp(uint64_t a1)
{
  *(a1 + 488) = 0;
  archive_string_sprintf((a1 + 480), "%s.XXXXXX", *(a1 + 440));
  *(a1 + 472) = *(a1 + 480);
  v2 = __archive_mkstemp(*(a1 + 472));
  if (v2 == -1)
  {
    return -1;
  }

  else if (fchmod(v2, *(a1 + 558) & 0x1FF & ~*(a1 + 144)) == -1)
  {
    v3 = *__error();
    close(v2);
    *__error() = v3;
    return -1;
  }

  else
  {
    return v2;
  }
}

uint64_t create_filesystem_object_at(int a1, char *a2, _DWORD *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  memset(&__b, 0, sizeof(__b));
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v25 = archive_entry_hardlink(*(v26 + 54));
  if (v25)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = strdup(v25);
    if (v21)
    {
      v22 = cleanup_pathname_fsobj(v21, &v16, &v17, v26[128]);
      if (v22 || (v22 = check_symlinks_fsobj(v21, &v16, &v17, v26[128], 1)) != 0)
      {
        archive_set_error(v26, v16, "%s", v17);
        free(v21);
        archive_string_free(&v17);
        return 1;
      }

      else
      {
        free(v21);
        archive_string_free(&v17);
        if ((v26[128] & 0x40000) != 0)
        {
          unlinkat(v28, v27, 0);
        }

        if (linkat(-2, v25, v28, v27, 0))
        {
          v15 = *__error();
        }

        else
        {
          v15 = 0;
        }

        v22 = v15;
        if (v15 || *(v26 + 68) > 0)
        {
          if (!v22 && *(v26 + 68) > 0)
          {
            v22 = fstatat(v28, v27, &__b, 32);
            if (v22)
            {
              return *__error();
            }

            if ((__b.st_mode & 0xF000) == 0x8000)
            {
              v26[129] = openat(v28, v27, 16778497);
              __archive_ensure_cloexec_flag(v26[129]);
              if ((v26[129] & 0x80000000) != 0)
              {
                return *__error();
              }
            }
          }
        }

        else
        {
          v26[126] = 0;
          v26[127] = 0;
        }

        return v22;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v25 = archive_entry_symlink(*(v26 + 54));
    if (v25)
    {
      if ((v26[128] & 0x40000) != 0)
      {
        unlinkat(v28, v27, 0);
      }

      if (symlinkat(v25, v28, v27))
      {
        return *__error();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v26 + 279) & 0xFFF;
      v23 = v24 & 0x1FF & ~*(v26 + 72);
      if (*(v26 + 21) && (v26[126] & 0x8080) != 0)
      {
        v23 |= 0x80u;
      }

      v13 = *(v26 + 279) & 0xF000;
      switch(v13)
      {
        case 4096:
          v22 = mkfifoat(v28, v27, v23);
          break;
        case 8192:
          v12 = v28;
          v10 = v27;
          v11 = v23 | 0x2000;
          v4 = archive_entry_rdev(*(v26 + 54));
          v22 = mknodat(v12, v10, v11, v4);
          break;
        case 16384:
          v23 = v23 & 0x3D | 0x1C0;
          v22 = mkdirat(v28, v27, v23);
          if (!v22)
          {
            v26[127] |= v26[126] & 4;
            v26[126] &= ~4u;
            if (v23 != v24 || (v26[128] & 2) != 0)
            {
              v26[127] |= v26[126] & 0x34000000;
            }

            v26[126] &= 0xCBFFFFFF;
          }

          break;
        case 24576:
          v9 = v28;
          v7 = v27;
          v8 = v23 | 0x6000;
          v5 = archive_entry_rdev(*(v26 + 54));
          v22 = mknodat(v9, v7, v8, v5);
          break;
        default:
          *(v26 + 59) = 0;
          if ((v26[128] & 0x100) != 0)
          {
            v3 = openat(v28, v27, 16780033, v23);
          }

          else
          {
            v3 = openat(v28, v27, 16779777, v23);
          }

          v26[129] = v3;
          __archive_ensure_cloexec_flag(v26[129]);
          v22 = v26[129] < 0;
          break;
      }

      if (v22)
      {
        return *__error();
      }

      else
      {
        if (v23 == v24)
        {
          v26[126] &= 0xCBFFFFFF;
        }

        return 0;
      }
    }
  }
}

unint64_t hfs_write_data_block(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v8 = a3;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 544) && (*(a1 + 516) & 0x80000000) == 0)
  {
    if ((*(a1 + 544) & 0x8000000000000000) == 0 && (*(a1 + 520) + a3) > *(a1 + 544))
    {
      v9 = *(a1 + 544) - *(a1 + 520);
      v8 = v9;
    }

    while (v9)
    {
      if (*(a1 + 520) < *(a1 + 528))
      {
        archive_set_error(a1, -1, "Seek failed");
        return -30;
      }

      if (*(a1 + 520) > *(a1 + 528))
      {
        v5 = *(a1 + 520) - *(a1 + 528);
        bzero(v13, 0x400uLL);
        while (v5)
        {
          if (v5 <= 0x400)
          {
            v6 = hfs_write_decmpfs_block(a1, v13, v5);
          }

          else
          {
            v6 = hfs_write_decmpfs_block(a1, v13, 0x400uLL);
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            v3 = __error();
            archive_set_error(a1, *v3, "Write failed");
            return -20;
          }

          v5 -= v6;
        }

        *(a1 + 528) = *(a1 + 520);
      }

      v7 = hfs_write_decmpfs_block(a1, a2, v9);
      if ((v7 & 0x8000000000000000) != 0)
      {
        return v7;
      }

      a2 += v7;
      v9 -= v7;
      *(a1 + 536) += v7;
      *(a1 + 520) += v7;
      *(a1 + 528) = *(a1 + 520);
    }

    return v8;
  }

  else
  {
    archive_set_error(a1, 0, "Attempt to write to an empty file");
    return -20;
  }
}

uint64_t close_file_descriptor(uint64_t result)
{
  v1 = result;
  if ((*(result + 516) & 0x80000000) == 0)
  {
    result = close(*(result + 516));
    *(v1 + 516) = -1;
  }

  return result;
}

uint64_t fixup_appledouble(_DWORD *a1, char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  memset(&__b, 0, sizeof(__b));
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = strrchr(v14, 47);
  if (v12)
  {
    ++v12;
  }

  else
  {
    v12 = v14;
  }

  if (*v12 == 46 && v12[1] == 95)
  {
    v10 = 0;
    archive_strncat(&v9, v14, v12 - v14);
    archive_strcat(&v9, v12 + 2);
    if (lstat(v9, &__b) != -1 && ((__b.st_mode & 0xF000) == 0x8000 || (__b.st_mode & 0xF000) == 0x4000))
    {
      v8 = open(v14, 0x1000000);
      __archive_ensure_cloexec_flag(v8);
      if (v8 == -1)
      {
        v6 = v15;
        v2 = __error();
        archive_set_error(v6, *v2, "Failed to open a restoring file");
        v7 = -20;
      }

      else if (read(v8, &v16, 8uLL) == -1)
      {
        v5 = v15;
        v3 = __error();
        archive_set_error(v5, *v3, "Failed to read a restoring file");
        close(v8);
        v7 = -20;
      }

      else
      {
        close(v8);
        if (archive_be32dec(&v16) == 333319 && archive_be32dec(&v17) == 0x20000)
        {
          v7 = copy_metadata(v15, v14, v9, __b.st_flags & 0x20);
          if (!v7)
          {
            unlink(v14);
            v7 = 1;
          }
        }
      }
    }
  }

  archive_string_free(&v9);
  return v7;
}
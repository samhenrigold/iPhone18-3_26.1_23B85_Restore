uint64_t zip_read_data_zipx_xz(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = **(a1 + 2072);
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!*(v11 + 185))
  {
    v10 = zipx_xz_init(v15, v11);
    if (v10)
    {
      return v10;
    }
  }

  v8 = __archive_read_ahead(v15, 1uLL, &v7);
  if (v7 < 0)
  {
    archive_set_error(v15, 79, "Truncated xz file body");
    return -30;
  }

  if (*(v11 + 144) < v7)
  {
    v5 = *(v11 + 144);
  }

  else
  {
    v5 = v7;
  }

  *(v11 + 328) = v8;
  *(v11 + 336) = v5;
  *(v11 + 344) = 0;
  *(v11 + 352) = *(v11 + 192);
  *(v11 + 360) = *(v11 + 200);
  *(v11 + 368) = 0;
  v9 = lzma_code();
  switch(v9)
  {
    case 0:
LABEL_20:
      v6 = *(v11 + 344);
      __archive_read_consume(v15, v6);
      *(v11 + 144) -= v6;
      *(v11 + 152) += v6;
      *(v11 + 160) += *(v11 + 368);
      *v13 = *(v11 + 368);
      *v14 = *(v11 + 192);
      return 0;
    case 1:
      lzma_end();
      *(v11 + 464) = 0;
      if (*(v11 + 344) != *(v11 + 144))
      {
        archive_set_error(v15, -1, "xz premature end of stream");
        return -30;
      }

      *(v11 + 186) = 1;
      goto LABEL_20;
    case 2:
      goto LABEL_20;
    case 9:
      archive_set_error(v15, -1, "xz data error (error %d)", 9);
      break;
    default:
      archive_set_error(v15, -1, "xz unknown error %d", v9);
      break;
  }

  return -30;
}

uint64_t zip_read_data_zipx_ppmd(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = **(a1 + 2072);
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(v9 + 185) || (v8 = zipx_ppmd8_init(v13, v9)) == 0)
  {
    __archive_read_ahead(v13, 1uLL, &v6);
    if (v6 < 0)
    {
LABEL_5:
      archive_set_error(v13, 79, "Truncated PPMd8 file body");
      return -30;
    }

    else
    {
      *(v9 + 576) = 0;
      while (1)
      {
        v5 = off_1F3DE4D58((v9 + 584));
        if (v5 < 0)
        {
          break;
        }

        if (*(v9 + 7977))
        {
          goto LABEL_5;
        }

        *(*(v9 + 192) + v7++) = v5;
        if (v7 >= *(v9 + 200))
        {
          goto LABEL_11;
        }
      }

      *(v9 + 186) = 1;
LABEL_11:
      *(v9 + 144) -= *(v9 + 576);
      *(v9 + 152) += *(v9 + 576);
      *(v9 + 160) += v7;
      if (*(v9 + 186))
      {
        off_1F3DE4D40(v9 + 584);
        *(v9 + 7976) = 0;
      }

      *v12 = *(v9 + 192);
      *v11 = v7;
      return 0;
    }
  }

  else
  {
    return v8;
  }
}

unsigned __int8 *consume_end_of_file_marker(unsigned __int8 *result, uint64_t a2)
{
  if ((*(*(a2 + 136) + 126) & 8) != 0)
  {
    result = __archive_read_ahead(result, 0x18uLL, 0);
    v12 = result;
    if (result)
    {
      v10 = result;
      v3 = *(a2 + 184);
      v2 = 0;
      v4 = *(a2 + 168);
      if (*(a2 + 8548))
      {
        if (*(*(a2 + 136) + 132) == 2)
        {
          v4 = 0;
        }

        else
        {
          v2 = 1;
        }
      }

      v6 = *(a2 + 152);
      v5 = *(a2 + 160);
      if (archive_le32dec_7(result) == 134695760 && (archive_le32dec_7(v12 + 4) == v4 || v2 && !archive_le32dec_7(v12 + 4) || v3) && archive_le64dec_2(v12 + 8) == v6 && (result = archive_le64dec_2(v12 + 16), result == v5))
      {
        if (!v3)
        {
          *(*(a2 + 136) + 120) = v4;
        }

        *(*(a2 + 136) + 40) = v6;
        *(*(a2 + 136) + 48) = v5;
        *(a2 + 128) += 24;
      }

      else if ((archive_le32dec_7(v12) == v4 || v2 && !archive_le32dec_7(v12 + 4) || v3) && archive_le64dec_2(v12 + 4) == v6 && (result = archive_le64dec_2(v12 + 12), result == v5))
      {
        if (!v3)
        {
          *(*(a2 + 136) + 120) = v4;
        }

        *(*(a2 + 136) + 40) = v6;
        *(*(a2 + 136) + 48) = v5;
        *(a2 + 128) += 20;
      }

      else if (archive_le32dec_7(v12) == 134695760 && (archive_le32dec_7(v12 + 4) == v4 || v2 && !archive_le32dec_7(v12 + 4) || v3) && archive_le32dec_7(v12 + 8) == v6 && (result = archive_le32dec_7(v12 + 12), result == v5))
      {
        if (!v3)
        {
          *(*(a2 + 136) + 120) = v4;
        }

        *(*(a2 + 136) + 40) = v6;
        *(*(a2 + 136) + 48) = v5;
        *(a2 + 128) += 16;
      }

      else if ((archive_le32dec_7(v12) == v4 || v2 && !archive_le32dec_7(v12 + 4) || v3) && archive_le32dec_7(v12 + 4) == v6 && (result = archive_le32dec_7(v12 + 8), result == v5))
      {
        if (!v3)
        {
          *(*(a2 + 136) + 120) = v4;
        }

        *(*(a2 + 136) + 40) = v6;
        *(*(a2 + 136) + 48) = v5;
        *(a2 + 128) += 12;
      }

      else
      {
        if (archive_le32dec_7(v12) == 134695760)
        {
          v10 = v12 + 4;
        }

        *(*(a2 + 136) + 120) = archive_le32dec_7(v10);
        v11 = v10 + 4;
        v9 = archive_le32dec_7(v11);
        v8 = archive_le32dec_7(v11 + 4);
        v7 = archive_le64dec_2(v11);
        result = archive_le64dec_2(v11 + 8);
        if (v9 == v6 && v8 == v5)
        {
          *(*(a2 + 136) + 40) = v9;
          *(*(a2 + 136) + 48) = v8;
        }

        else if (v7 == v6 || result == v5)
        {
          *(*(a2 + 136) + 40) = v7;
          *(*(a2 + 136) + 48) = result;
        }

        else
        {
          *(*(a2 + 136) + 40) = v9;
          *(*(a2 + 136) + 48) = v8;
        }
      }
    }
  }

  return result;
}

uint64_t zip_alloc_decryption_buffer(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (v2[1003] || (v2[1005] = 0x40000, (v2[1003] = malloc_type_malloc(0x40000uLL, 0xD6CE9D76uLL)) != 0))
  {
    v2[1004] = v2[1003];
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "No memory for ZIP decryption");
    return -30;
  }
}

uint64_t trad_enc_init(unsigned int *a1, Bytef *a2, uint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 >= 0xC)
  {
    *a1 = 305419896;
    a1[1] = 591751049;
    a1[2] = 878082192;
    while (a3)
    {
      v6 = a2++;
      trad_enc_update_keys(a1, *v6);
      --a3;
    }

    trad_enc_decrypt_update(a1, a4, 0xCuLL, v14, 0xCuLL);
    *a6 = v14[11];
    return 0;
  }

  else
  {
    *a6 = -1;
    return -1;
  }
}

uint64_t zipx_bzip2_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 552))
  {
    BZ2_bzDecompressEnd((a2 + 472));
    *(a2 + 552) = 0;
  }

  __memset_chk();
  v3 = BZ2_bzDecompressInit((a2 + 472), 0, 1);
  if (v3)
  {
    archive_set_error(a1, -1, "bzip2 initialization failed(%d)", v3);
    return -25;
  }

  else
  {
    *(a2 + 552) = 1;
    free(*(a2 + 192));
    *(a2 + 200) = 0x40000;
    *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
    if (*(a2 + 192))
    {
      *(a2 + 185) = 1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory for bzip2 decompression");
      return -30;
    }
  }
}

uint64_t zipx_xz_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 464))
  {
    lzma_end();
    *(a2 + 464) = 0;
  }

  __memset_chk();
  v3 = lzma_stream_decoder();
  if (v3)
  {
    archive_set_error(a1, -1, "xz initialization failed(%d)", v3);
    return -25;
  }

  else
  {
    *(a2 + 464) = 1;
    free(*(a2 + 192));
    *(a2 + 200) = 0x40000;
    *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
    if (*(a2 + 192))
    {
      *(a2 + 185) = 1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory for xz decompression");
      return -30;
    }
  }
}

uint64_t zipx_ppmd8_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 7976))
  {
    off_1F3DE4D40(a2 + 584);
    *(a2 + 7976) = 0;
  }

  __archive_ppmd8_functions(a2 + 584);
  *(a2 + 7977) = 0;
  *(a2 + 704) = a2 + 560;
  *(a2 + 560) = a1;
  *(a2 + 568) = ppmd_read_0;
  *(a2 + 576) = 0;
  ahead = __archive_read_ahead(a1, 2uLL, 0);
  if (ahead)
  {
    __archive_read_consume(a1, 2);
    v6 = archive_le16dec_3(ahead);
    v5 = (v6 & 0xF) + 1;
    v4 = (v6 >> 4) + 1;
    v3 = v6 >> 12;
    if (v5 >= 2 && v3 <= 2)
    {
      if (off_1F3DE4D38(a2 + 584, v4 << 20))
      {
        *(a2 + 7976) = 1;
        if (off_1F3DE4D50(a2 + 584))
        {
          off_1F3DE4D48(a2 + 584, v5, v3);
          free(*(a2 + 192));
          *(a2 + 200) = 0x40000;
          *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
          if (*(a2 + 192))
          {
            *(a2 + 185) = 1;
            *(a2 + 152) += *(a2 + 576) + 2;
            return 0;
          }

          else
          {
            archive_set_error(a1, 12, "No memory for PPMd8 decompression");
            return -30;
          }
        }

        else
        {
          archive_set_error(a1, 22, "PPMd8 stream range decoder initialization error");
          return -30;
        }
      }

      else
      {
        archive_set_error(a1, 12, "Unable to allocate memory for PPMd8 stream: %d bytes", v4 << 20);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 79, "Invalid parameter set in PPMd8 stream (order=%d, restore=%d)", v5, v3);
      return -25;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Truncated file data in PPMd8 stream");
    return -30;
  }
}

uint64_t ppmd_read_0(uint64_t *a1)
{
  v6 = a1;
  v5 = *a1;
  v4 = **(v5 + 2072);
  v3 = 0;
  v2 = __archive_read_ahead(v5, 1uLL, &v3);
  if (v3 >= 1)
  {
    __archive_read_consume(v5, 1);
    ++*(v4 + 576);
    return *v2;
  }

  else
  {
    *(v4 + 7977) = 1;
    return 0;
  }
}

uint64_t read_eocd(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = archive_le16dec_3(a2 + 4);
  v6 = archive_le32dec_7(a2 + 12);
  v5 = archive_le32dec_7(a2 + 16);
  if (v7)
  {
    return 0;
  }

  else if (archive_le16dec_3(a2 + 6))
  {
    return 0;
  }

  else
  {
    v4 = archive_le16dec_3(a2 + 10);
    if (v4 == archive_le16dec_3(a2 + 8))
    {
      if (v5 + v6 <= a3)
      {
        *(a1 + 24) = v5;
        *(a1 + 32) = a3 - v6;
        return 32;
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

uint64_t read_zip64_eocd(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (archive_le32dec_7(a3 + 4))
  {
    return 0;
  }

  else if (archive_le32dec_7(a3 + 16) == 1)
  {
    v6 = archive_le64dec_2(a3 + 8);
    if (__archive_read_seek(a1, v6, 0) < 0)
    {
      return 0;
    }

    else
    {
      ahead = __archive_read_ahead(a1, 0x38uLL, 0);
      if (ahead)
      {
        v5 = archive_le64dec_2((ahead + 4)) + 12;
        if (v5 >= 56 && v5 <= 0x4000)
        {
          v9 = __archive_read_ahead(a1, v5, 0);
          if (v9)
          {
            if (archive_le32dec_7(v9 + 16))
            {
              return 0;
            }

            else if (archive_le32dec_7(v9 + 20))
            {
              return 0;
            }

            else
            {
              v4 = archive_le64dec_2(v9 + 24);
              if (v4 == archive_le64dec_2(v9 + 32))
              {
                *(a2 + 24) = archive_le64dec_2(v9 + 48);
                *(a2 + 32) = *(a2 + 24);
                return 32;
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

uint64_t slurp_central_directory_0(_DWORD *a1, void *a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  if (__archive_read_seek(a1, *(a3 + 32), 0) < 0)
  {
    return -30;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      if (v21)
      {
        v3 = archive_filter_bytes(v25, 0);
        v20 = v3 - *(v23 + 24);
        __archive_rb_tree_init((v23 + 80), rb_ops);
        __archive_rb_tree_init((v23 + 96), rb_rsrc_ops);
        __archive_rb_tree_init((v23 + 112), rb_bomb_ops);
        *(v23 + 40) = 0;
        while (1)
        {
          ahead = __archive_read_ahead(v25, 4uLL, 0);
          if (!ahead)
          {
            return -30;
          }

          if (!memcmp(ahead, "PK\x06\x06", 4uLL) || !memcmp(ahead, "PK\x05\x06", 4uLL))
          {
            return 0;
          }

          if (memcmp(ahead, "PK\x01\x02", 4uLL))
          {
            archive_set_error(v25, -1, "Invalid central directory signature");
            return -30;
          }

          v17 = __archive_read_ahead(v25, 0x2EuLL, 0);
          if (!v17)
          {
            return -30;
          }

          v14 = malloc_type_calloc(1uLL, 0x90uLL, 0x1030040EC8AD5CDuLL);
          if (!v14)
          {
            archive_set_error(v25, 12, "Can't allocate zip entry");
            return -30;
          }

          v14[3] = *(v23 + 64);
          *(v14 + 130) |= 2u;
          *(v23 + 64) = v14;
          ++*(v23 + 40);
          *(v14 + 129) = v17[5];
          *(v14 + 63) = archive_le16dec_3(v17 + 8);
          if ((*(v14 + 63) & 0x41) != 0)
          {
            *(v23 + 56) = 1;
          }

          *(v14 + 128) = archive_le16dec_3(v17 + 10);
          v14[12] = zip_time(v17 + 12);
          *(v14 + 30) = archive_le32dec_7(v17 + 16);
          if ((*(v14 + 63) & 8) != 0)
          {
            *(v14 + 131) = v17[13];
          }

          else
          {
            *(v14 + 131) = v17[19];
          }

          v14[5] = archive_le32dec_7(v17 + 20);
          v14[6] = archive_le32dec_7(v17 + 24);
          v13 = archive_le16dec_3(v17 + 28);
          v12 = archive_le16dec_3(v17 + 30);
          v11 = archive_le16dec_3(v17 + 32);
          v10 = archive_le32dec_7(v17 + 38);
          v4 = archive_le32dec_7(v17 + 42);
          v14[4] = v20 + v4;
          if (*(v14 + 129) == 3)
          {
            *(v14 + 62) = HIWORD(v10);
          }

          else if (*(v14 + 129))
          {
            *(v14 + 62) = 0;
          }

          else
          {
            if ((v10 & 0x10) == 0x10)
            {
              *(v14 + 62) = 16893;
            }

            else
            {
              *(v14 + 62) = -32332;
            }

            if ((v10 & 1) == 1)
            {
              *(v14 + 62) &= 0x16Du;
            }
          }

          __archive_read_consume(v25, 46);
          v18 = __archive_read_ahead(v25, v13 + v12, 0);
          if (!v18)
          {
            archive_set_error(v25, 79, "Truncated ZIP file header");
            return -30;
          }

          if (process_extra(v25, v24, &v18[v13], v12, v14))
          {
            return -30;
          }

          if (*(v23 + 8012))
          {
            v9 = rsrc_basename(v18, v13);
            if (v13 >= 9 && !strncmp("__MACOSX/", v18, 9uLL))
            {
              if (v18[v13 - 1] == 47 || v9 - v18 >= 3 && *v9 == 46 && v9[1] == 95)
              {
                v14[10] = 0;
                archive_strncat(v14 + 9, v18, v13);
                __archive_rb_tree_insert_node((v23 + 96), v14);
              }

              else
              {
                bomb_insert_central_node_and_detect_overlap((v23 + 80), v14);
                if (v9 || expose_parent_dirs(v23, v18, v13))
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              v8 = v13;
              if (v13 && v18[v13 - 1] == 47)
              {
                v8 = v13 - 1;
                v9 = rsrc_basename(v18, v13 - 1);
              }

              v14[10] = 0;
              archive_strncat(v14 + 9, "__MACOSX/", 9uLL);
              archive_strncat(v14 + 9, v18, v9 - v18);
              archive_strcat(v14 + 9, "._");
              archive_strncat(v14 + 9, v9, v8 - (v9 - v18));
              if (bomb_insert_central_node_and_detect_overlap((v23 + 80), v14))
              {
LABEL_80:
                archive_set_error(v25, 79, "Invalid header");
                return -30;
              }
            }
          }

          else if (bomb_insert_central_node_and_detect_overlap((v23 + 80), v14))
          {
            goto LABEL_80;
          }

          __archive_read_consume(v25, v13 + v12 + v11);
        }
      }

      v15 = __archive_read_ahead(v25, 0x14uLL, &v19);
      if (!v15)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      while (1)
      {
        v7 = 0;
        if (!v21)
        {
          v7 = v22 < v19 - 4;
        }

        if (!v7)
        {
          break;
        }

        v6 = *(v15 + v22 + 3);
        switch(v6)
        {
          case 1:
            ++v22;
            break;
          case 2:
            if (!memcmp((v15 + v22), "PK\x01\x02", 4uLL))
            {
              v15 += v22;
              v21 = 1;
            }

            else
            {
              v22 += 4;
            }

            break;
          case 5:
            ++v22;
            break;
          case 6:
            if (!memcmp((v15 + v22), "PK\x05\x06", 4uLL))
            {
              v15 += v22;
              v21 = 1;
            }

            else if (!memcmp((v15 + v22), "PK\x06\x06", 4uLL))
            {
              v15 += v22;
              v21 = 1;
            }

            else
            {
              ++v22;
            }

            break;
          case 75:
            v22 += 2;
            break;
          case 80:
            v22 += 3;
            break;
          default:
            v22 += 4;
            break;
        }
      }

      __archive_read_consume(v25, v22);
    }

    return -30;
  }
}

uint64_t zip_read_mac_metadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = **(a1 + 2072);
  v17 = 0;
  v16 = 0;
  v15 = archive_filter_bytes(a1, 0);
  v14 = 0;
  v13 = 0;
  local_file_header_size = 0;
  v11 = 0;
  v10 = 0;
  if (*(v19 + 128))
  {
    if (*(v19 + 128) != 8)
    {
      v3 = compression_name(*(v19 + 128));
      archive_set_error(v21, 79, "Unsupported ZIP compression method (%s)", v3);
      return -20;
    }
  }

  else if (*(v19 + 48) != *(v19 + 40))
  {
    archive_set_error(v21, 79, "Malformed OS X metadata entry: inconsistent size");
    return -30;
  }

  if (*(v19 + 48) <= 10485760)
  {
    if (*(v19 + 40) <= 10485760)
    {
      v17 = malloc_type_malloc(*(v19 + 48), 0x71265D9FuLL);
      if (v17)
      {
        if (v15 >= *(v19 + 32))
        {
          if (v15 != *(v19 + 32))
          {
            __archive_read_seek(v21, *(v19 + 32), 0);
          }
        }

        else
        {
          __archive_read_consume(v21, *(v19 + 32) - v15);
        }

        local_file_header_size = zip_get_local_file_header_size(v21, 0);
        if (*(v18 + 8016) && bomb_detect_overlap(v18, v19, local_file_header_size))
        {
          archive_set_error(v21, 79, "Invalid header");
          v11 = -30;
        }

        else
        {
          __archive_read_consume(v21, local_file_header_size);
          v14 = *(v19 + 40);
          v13 = *(v19 + 48);
          v16 = v17;
          v10 = 0;
          while (1)
          {
            v5 = 0;
            if (!v10)
            {
              v5 = v14 != 0;
            }

            if (!v5)
            {
              break;
            }

            v9 = 0;
            v8 = 0;
            v9 = __archive_read_ahead(v21, 1uLL, &v8);
            if (!v9)
            {
              archive_set_error(v21, 79, "Truncated ZIP file header");
              v11 = -20;
              goto LABEL_46;
            }

            if (v8 > v14)
            {
              v8 = v14;
            }

            if (*(v19 + 128))
            {
              if (*(v19 + 128) == 8)
              {
                v11 = zip_deflate_init(v21, v18);
                if (v11)
                {
                  goto LABEL_46;
                }

                *(v18 + 208) = v9;
                *(v18 + 216) = v8;
                *(v18 + 224) = 0;
                *(v18 + 232) = v16;
                *(v18 + 240) = v13;
                *(v18 + 248) = 0;
                v6 = inflate((v18 + 208), 0);
                if (v6 == -4)
                {
                  archive_set_error(v21, 12, "Out of memory for ZIP decompression");
                  v11 = -30;
                  goto LABEL_46;
                }

                if (v6)
                {
                  if (v6 != 1)
                  {
                    archive_set_error(v21, -1, "ZIP decompression failed (%d)", v6);
                    v11 = -30;
                    goto LABEL_46;
                  }

                  v10 = 1;
                }

                v7 = *(v18 + 224);
                v13 -= *(v18 + 248);
                v16 += *(v18 + 248);
                __archive_read_consume(v21, v7);
              }

              else
              {
                v7 = 0;
                __archive_read_consume(v21, 0);
              }
            }

            else
            {
              if (v8 > v13)
              {
                v8 = v13;
              }

              __memcpy_chk();
              v7 = v8;
              v13 -= v8;
              v16 += v8;
              if (!v13)
              {
                v10 = 1;
              }

              __archive_read_consume(v21, v8);
            }

            v14 -= v7;
          }

          archive_entry_copy_mac_metadata(v20, v17, *(v19 + 48) - v13);
        }

LABEL_46:
        __archive_read_seek(v21, v15, 0);
        *(v18 + 185) = 0;
        free(v17);
        return v11;
      }

      else
      {
        archive_set_error(v21, 12, "Can't allocate memory for Mac metadata");
        return -30;
      }
    }

    else
    {
      archive_set_error(v21, 79, "Mac metadata is too large: %jd > 10M bytes", *(v19 + 40));
      return -20;
    }
  }

  else
  {
    archive_set_error(v21, 79, "Mac metadata is too large: %jd > 10M bytes", *(v19 + 48));
    return -20;
  }
}

uint64_t bomb_insert_central_node_and_detect_overlap(uint64_t *a1, void *a2)
{
  v12 = a1;
  v11 = a2;
  if (a1 && v11)
  {
    v10 = 0;
    v9 = 0;
    if (_bomb_get_begin_and_end(v11, 30, &v10, &v9))
    {
      return -30;
    }

    else
    {
      if (__archive_rb_tree_insert_node(v12, v11))
      {
        v8 = __archive_rb_tree_iterate(v12, v11, 0);
        if (v8)
        {
          v7 = 0;
          v6 = 0;
          if (_bomb_get_begin_and_end(v8, 30, &v7, &v6))
          {
            return -30;
          }

          if (v6 >= v10)
          {
            return -30;
          }
        }

        v5 = __archive_rb_tree_iterate(v12, v11, 1u);
        if (v5)
        {
          v4 = 0;
          v3 = 0;
          if (_bomb_get_begin_and_end(v5, 30, &v4, &v3))
          {
            return -30;
          }

          if (v4 <= v9)
          {
            return -30;
          }
        }

        return 0;
      }

      return -30;
    }
  }

  else
  {
    return -30;
  }
}

void *rsrc_basename(void *a1, uint64_t a2)
{
  __s = a1;
  for (i = a1; ; i = __s)
  {
    __sa = memchr(__s, 47, a2 - (__s - a1));
    if (!__sa)
    {
      break;
    }

    __s = __sa + 1;
  }

  return i;
}

uint64_t expose_parent_dirs(uint64_t a1, char *a2, char *a3)
{
  v7 = a1;
  __s[4] = a2;
  __s[3] = a3;
  memset(__s, 0, 24);
  archive_strncat(__s, a2, a3);
  while (1)
  {
    v4 = strrchr(__s[0], 47);
    if (!v4)
    {
      break;
    }

    *v4 = 0;
    node = __archive_rb_tree_find_node((v7 + 96), __s[0]);
    if (!node)
    {
      break;
    }

    __archive_rb_tree_remove_node((v7 + 96), node);
    archive_string_free((node + 9));
    if (bomb_insert_central_node_and_detect_overlap((v7 + 80), node))
    {
      return -30;
    }
  }

  archive_string_free(__s);
  return 0;
}

uint64_t cmp_node(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) <= *(a2 + 32))
  {
    return *(a1 + 32) < *(a2 + 32);
  }

  else
  {
    return -1;
  }
}

uint64_t bomb_cmp_node(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) <= *(a2 + 40))
  {
    return *(a1 + 40) < *(a2 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t bomb_cmp_key(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __archive_errx(1, "Programming error");
  }

  if (*(a1 + 40) <= *a2)
  {
    return *(a1 + 40) < *a2;
  }

  else
  {
    return -1;
  }
}

uint64_t zip_get_local_file_header_size(_DWORD *a1, uint64_t a2)
{
  __s1 = __archive_read_ahead(a1, a2 + 30, 0);
  if (__s1)
  {
    __s1a = &__s1[a2];
    if (!memcmp(__s1a, "PK\x03\x04", 4uLL))
    {
      v3 = archive_le16dec_3(__s1a + 26);
      return v3 + 30 + archive_le16dec_3(__s1a + 28);
    }

    else
    {
      archive_set_error(a1, -1, "Damaged Zip archive", 0, 0);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Truncated ZIP file header", 0, 0);
    return -20;
  }
}

uint64_t archive_read_support_filter_compress(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("compress"))
  {
    return __archive_read_register_bidder(a1, 0, "compress (.Z)", compress_bidder_vtable);
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t compress_bidder_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = __archive_read_filter_ahead(a2, 3uLL, &v3);
  if (v4)
  {
    if (*v4 == 31 && v4[1] == 157)
    {
      if ((v4[2] & 0x20) != 0)
      {
        return 0;
      }

      else if ((v4[2] & 0x40) != 0)
      {
        return 0;
      }

      else
      {
        return 18;
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

uint64_t compress_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 3;
  *(a1 + 48) = "compress (.Z)";
  v5 = malloc_type_calloc(1uLL, 0x3FF80uLL, 0x10D0040123C976AuLL);
  v4 = malloc_type_malloc(0x10000uLL, 0x40E9AF1CuLL);
  if (v5 && v4)
  {
    *(a1 + 40) = v5;
    v5[5] = 0x10000;
    v5[6] = v4;
    *(a1 + 32) = compress_reader_vtable;
    getbits(a1, 8);
    getbits(a1, 8);
    v2 = getbits(a1, 8);
    if ((v2 & 0x1Fu) <= 0x10)
    {
      *(v5 + 17) = v2 & 0x1F;
      *(v5 + 16) = 1 << *(v5 + 17);
      *(v5 + 14) = v2 & 0x80;
      *(v5 + 22) = 256;
      v5[24588] = v5 + 24589;
      if (*(v5 + 14))
      {
        ++*(v5 + 22);
      }

      *(v5 + 19) = 9;
      *(v5 + 18) = (1 << *(v5 + 19)) - 1;
      *(v5 + 20) = -1;
      for (i = 255; (i & 0x80000000) == 0; --i)
      {
        *(v5 + i + 32814) = 0;
        *(v5 + i + 92) = i;
      }

      next_code(a1);
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 24), -1, "Invalid compressed data");
      return -30;
    }
  }

  else
  {
    free(v4);
    free(v5);
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for %s decompression", *(a1 + 48));
    return -30;
  }
}

uint64_t getbits(uint64_t a1, int a2)
{
  v10 = a1;
  v9 = a2;
  v8 = *(a1 + 40);
  v7 = 0;
  v6 = 0;
  while (1)
  {
    if (*(v8 + 28) >= v9)
    {
      v7 = *(v8 + 24);
      *(v8 + 24) >>= v9;
      *(v8 + 28) -= v9;
      return (v7 & getbits_mask[v9]);
    }

    if (!*(v8 + 8))
    {
      break;
    }

LABEL_13:
    v4 = (*v8)++;
    *(v8 + 24) |= *v4 << *(v8 + 28);
    --*(v8 + 8);
    *(v8 + 28) += 8;
    ++*(v8 + 32);
  }

  if (*(v8 + 16))
  {
    __archive_read_filter_consume(*(v10 + 16), *(v8 + 16));
    *(v8 + 16) = 0;
  }

  v2 = __archive_read_filter_ahead(*(v10 + 16), 1uLL, &v6);
  *v8 = v2;
  if (!v6)
  {
    return -1;
  }

  if ((v6 & 0x8000000000000000) == 0 && *v8)
  {
    v3 = v6;
    *(v8 + 8) = v6;
    *(v8 + 16) = v3;
    goto LABEL_13;
  }

  return -30;
}

uint64_t next_code(uint64_t a1)
{
  v14 = *(a1 + 40);
  v10 = getbits(a1, *(v14 + 76));
  v11 = v10;
  if (v10 < 0)
  {
    return v10;
  }

  else
  {
    v1 = next_code_debug_index++;
    next_code_debug_buff[v1] = v10;
    if (next_code_debug_index >= 0x400uLL)
    {
      next_code_debug_index = 0;
    }

    if (v10 == 256 && *(v14 + 56))
    {
      v9 = (*(v14 + 76) - *(v14 + 32) % *(v14 + 76)) % *(v14 + 76);
      *(v14 + 28) = 0;
      while (1)
      {
        v2 = v9--;
        if (v2 <= 0)
        {
          break;
        }

        v12 = getbits(a1, 8);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }
      }

      *(v14 + 32) = 0;
      *(v14 + 76) = 9;
      *(v14 + 72) = (1 << *(v14 + 76)) - 1;
      *(v14 + 88) = 257;
      *(v14 + 80) = -1;
      return next_code(a1);
    }

    else if (v10 > *(v14 + 88) || v10 == *(v14 + 88) && (*(v14 + 80) & 0x80000000) != 0)
    {
      archive_set_error(*(a1 + 24), -1, "Invalid compressed data");
      return -30;
    }

    else
    {
      if (v10 >= *(v14 + 88))
      {
        v3 = *(v14 + 84);
        v4 = *(v14 + 196704);
        *(v14 + 196704) = v4 + 1;
        *v4 = v3;
        v11 = *(v14 + 80);
      }

      while (v11 >= 256)
      {
        v5 = *(v14 + 92 + v11);
        v6 = *(v14 + 196704);
        *(v14 + 196704) = v6 + 1;
        *v6 = v5;
        v11 = *(v14 + 65628 + 2 * v11);
      }

      *(v14 + 84) = v11;
      v7 = *(v14 + 196704);
      *(v14 + 196704) = v7 + 1;
      *v7 = v11;
      v13 = *(v14 + 88);
      if (v13 < *(v14 + 64) && (*(v14 + 80) & 0x80000000) == 0)
      {
        *(v14 + 65628 + 2 * v13) = *(v14 + 80);
        *(v14 + 92 + v13) = *(v14 + 84);
        ++*(v14 + 88);
      }

      if (*(v14 + 88) > *(v14 + 72))
      {
        ++*(v14 + 76);
        *(v14 + 32) = 0;
        if (*(v14 + 76) == *(v14 + 68))
        {
          *(v14 + 72) = *(v14 + 64);
        }

        else
        {
          *(v14 + 72) = (1 << *(v14 + 76)) - 1;
        }
      }

      *(v14 + 80) = v10;
      return 0;
    }
  }
}

_BYTE *compress_filter_read(uint64_t a1, void *a2)
{
  v10 = *(a1 + 40);
  if (*(v10 + 60))
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v8 = *(v10 + 48);
    v9 = v8;
    v7 = &v8[*(v10 + 40)];
    while (1)
    {
      v6 = 0;
      if (v9 < v7)
      {
        v6 = *(v10 + 60) == 0;
      }

      if (!v6)
      {
        break;
      }

      if (*(v10 + 196704) > (v10 + 196712))
      {
        v2 = (*(v10 + 196704) - 1);
        *(v10 + 196704) = v2;
        v3 = v9++;
        *v3 = *v2;
      }

      else
      {
        code = next_code(a1);
        if (code == -1)
        {
          *(v10 + 60) = -1;
        }

        else if (code)
        {
          return code;
        }
      }
    }

    *a2 = v8;
    return (v9 - v8);
  }
}

uint64_t compress_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  free(v2[6]);
  free(v2);
  return 0;
}

void *archive_wstrncat(void *a1, const __int32 *a2, size_t a3)
{
  v6 = 0;
  for (i = a2; ; ++i)
  {
    v4 = 0;
    if (v6 < a3)
    {
      v4 = *i != 0;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  v7 = archive_wstring_append(a1, a2, v6);
  if (!v7)
  {
    __archive_errx(1, "Out of memory");
  }

  return v7;
}

void *archive_strappend_char(void *a1, char a2)
{
  v4 = a1;
  v3 = a2;
  v4 = archive_string_append(a1, &v3, 1);
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  return v4;
}

void *archive_wstrappend_wchar(void *a1, __int32 a2)
{
  v4 = a1;
  v3 = a2;
  v4 = archive_wstring_append(a1, &v3, 1uLL);
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  return v4;
}

uint64_t archive_string_append_from_wcs(void *a1, __int32 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(&__b, 0, sizeof(__b));
  if (archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    v9 = (*a1 + a1[1]);
    v8 = *a1 + a1[2] - *MEMORY[0x1E69E9838] - 1;
    while (1)
    {
      v7 = 0;
      if (*a2)
      {
        v7 = a3 != 0;
      }

      if (!v7)
      {
        break;
      }

      if (v9 >= v8)
      {
        a1[1] = &v9[-*a1];
        *(*a1 + a1[1]) = 0;
        if (*MEMORY[0x1E69E9838] >= (2 * a3))
        {
          v6 = *MEMORY[0x1E69E9838];
        }

        else
        {
          v6 = 2 * a3;
        }

        if (!archive_string_ensure(a1, a1[1] + v6 + 1))
        {
          return -1;
        }

        v9 = (*a1 + a1[1]);
        v8 = *a1 + a1[2] - *MEMORY[0x1E69E9838] - 1;
      }

      v3 = a2++;
      v11 = wcrtomb(v9, *v3, &__b);
      if (v11 == -1)
      {
        if (*__error() != 92)
        {
          v10 = -1;
          break;
        }

        v4 = v9++;
        *v4 = 63;
        v10 = -1;
      }

      else
      {
        v9 += v11;
      }

      --a3;
    }

    a1[1] = &v9[-*a1];
    *(*a1 + a1[1]) = 0;
    return v10;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_string_conversion_charset_name(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return *(a1 + 16);
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t archive_string_conversion_set_opt(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if ((*(result + 36) & 0x40) == 0)
      {
        *(result + 36) |= 0x40u;
        *(result + 36) &= ~0x80u;
        return setup_converter(result);
      }
    }

    else if (a2 == 4 && ((*(result + 36) & 8) != 0 || (*(result + 36) & 0x2A00) == 0 || (*(result + 36) & 0x1500) != 0) && (*(result + 36) & 0x80) == 0)
    {
      *(result + 36) |= 0x80u;
      *(result + 36) &= ~0x40u;
      return setup_converter(result);
    }
  }

  return result;
}

unint64_t utf16nbytes(_BYTE *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  for (i = a1; ; i += 2)
  {
    v4 = 0;
    if (v6 < a2 >> 1)
    {
      v3 = 1;
      if (!*i)
      {
        v3 = i[1] != 0;
      }

      v4 = v3;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  return 2 * v6;
}

uint64_t archive_mstring_get_mbs_l(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = 0;
  if ((*(a2 + 96) & 1) == 0)
  {
    v6 = 0;
    archive_mstring_get_mbs(v12, v11, &v6);
  }

  if ((*(v11 + 96) & 1) == 0)
  {
    *v10 = 0;
    if (v9)
    {
      *v9 = 0;
    }

    return v7;
  }

  if (v8)
  {
    v7 = archive_strncpy_l((v11 + 72), *v11, *(v11 + 8), v8);
    *v10 = *(v11 + 72);
    if (v9)
    {
      *v9 = *(v11 + 80);
    }

    return v7;
  }

  *v10 = *v11;
  if (v9)
  {
    *v9 = *(v11 + 8);
  }

  return 0;
}

uint64_t archive_mstring_copy_wcs(uint64_t a1, const __int32 *a2)
{
  if (!a2)
  {
    return archive_mstring_copy_wcs_len(a1, 0, 0);
  }

  v3 = wcslen(a2);
  return archive_mstring_copy_wcs_len(a1, a2, v3);
}

uint64_t archive_mstring_copy_wcs_len(uint64_t a1, const __int32 *a2, size_t a3)
{
  if (a2)
  {
    *(a1 + 96) = 4;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    archive_wstrncat((a1 + 48), a2, a3);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  return 0;
}

uint64_t archive_mstring_copy_utf8(uint64_t a1, char *a2)
{
  if (a2)
  {
    *(a1 + 96) = 2;
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *(a1 + 32) = 0;
    v2 = strlen(a2);
    archive_strncat((a1 + 24), a2, v2);
    return strlen(a2);
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

uint64_t archive_mstring_update_utf8(_DWORD *a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    *(a2 + 32) = 0;
    v7 = (a2 + 24);
    v6 = strlen(a3);
    archive_strncat(v7, a3, v6);
    *(a2 + 8) = 0;
    *(a2 + 56) = 0;
    *(a2 + 96) = 2;
    v9 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
    if (v9)
    {
      if (a3)
      {
        v5 = strlen(a3);
        v3 = archive_strncpy_l(a2, a3, v5, v9);
      }

      else
      {
        v3 = archive_strncpy_l(a2, 0, 0, v9);
      }

      v8 = v3;
      if (!a1)
      {
        free_sconv_object(v9);
      }

      if (v8)
      {
        return -1;
      }

      else
      {
        *(a2 + 96) = 3;
        if (archive_wstring_append_from_mbs((a2 + 48), *a2, *(a2 + 8)))
        {
          return -1;
        }

        else
        {
          *(a2 + 96) = 7;
          return 0;
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
    *(a2 + 96) = 0;
    return 0;
  }
}

uint64_t strncat_from_utf8_libarchive2(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  memset(&__b, 0, sizeof(__b));
  if (archive_string_ensure(v15, v15[1] + v13 + 1))
  {
    v11 = v14;
    v9 = (*v15 + v15[1]);
    v8 = *v15 + v15[2] - *MEMORY[0x1E69E9838] - 1;
    while (1)
    {
      v10 = _utf8_to_unicode(&v7, v11, v13);
      if (!v10)
      {
        break;
      }

      if (v9 >= v8)
      {
        v15[1] = &v9[-*v15];
        if (*MEMORY[0x1E69E9838] >= (2 * v13))
        {
          v5 = *MEMORY[0x1E69E9838];
        }

        else
        {
          v5 = 2 * v13;
        }

        if (!archive_string_ensure(v15, v15[1] + v5 + 1))
        {
          return -1;
        }

        v9 = (*v15 + v15[1]);
        v8 = *v15 + v15[2] - *MEMORY[0x1E69E9838] - 1;
      }

      if (v10 < 0)
      {
        v10 = -v10;
        v6 = 63;
      }

      else
      {
        v6 = v7;
      }

      v11 += v10;
      v13 -= v10;
      v10 = wcrtomb(v9, v6, &__b);
      if (v10 == -1)
      {
        return -1;
      }

      v9 += v10;
    }

    v15[1] = &v9[-*v15];
    *(*v15 + v15[1]) = 0;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_string_append_unicode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v9 = 0;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v5 = unicode_to_utf16be;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x1000) != 0)
  {
    v5 = unicode_to_utf16le;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x100) != 0)
  {
    v5 = unicode_to_utf8;
    v8 = 1;
  }

  else if ((*(v16 + 36) & 0x800) != 0)
  {
    v5 = unicode_to_utf16be;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x2000) != 0)
  {
    v5 = unicode_to_utf16le;
    v8 = 2;
  }

  else
  {
    v5 = unicode_to_utf8;
    v8 = 1;
  }

  if ((*(v16 + 36) & 0x800) != 0)
  {
    v6 = utf16be_to_unicode;
    v7 = 1;
  }

  else if ((*(v16 + 36) & 0x2000) != 0)
  {
    v6 = utf16le_to_unicode;
    v7 = 1;
  }

  else
  {
    v6 = cesu8_to_unicode;
    v7 = v8;
  }

  if (archive_string_ensure(v19, v19[1] + v17 * v7 + v8))
  {
    v15 = v18;
    v14 = *v19 + v19[1];
    v13 = *v19 + v19[2] - v8;
    while (1)
    {
      v10 = v6(&v12, v15, v17);
      if (!v10)
      {
        break;
      }

      if (v10 < 0)
      {
        v10 = -v10;
        v9 = -1;
      }

      v15 += v10;
      v17 -= v10;
      while (1)
      {
        v11 = v5(v14, v13 - v14, v12);
        if (v11)
        {
          break;
        }

        v19[1] = v14 - *v19;
        if (!archive_string_ensure(v19, v19[2] + v17 * v7 + v8))
        {
          return -1;
        }

        v14 = *v19 + v19[1];
        v13 = *v19 + v19[2] - v8;
      }

      v14 += v11;
    }

    v19[1] = v14 - *v19;
    *(*v19 + v19[1]) = 0;
    if (v8 == 2)
    {
      *(*v19 + v19[1] + 1) = 0;
    }

    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t iconv_strncat_in_locale(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if ((*(a4 + 36) & 0x1400) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if ((*(v15 + 36) & 0x2800) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (archive_string_ensure(v18, v18[1] + 2 * v16 + v8))
  {
    v12 = *(v15 + 40);
    v14 = v17;
    v13 = v16;
    v11 = (*v18 + v18[1]);
    v10 = v18[2] - v18[1] - v8;
    while (v13 >= v7 && MEMORY[0x1BFB558A0](v12, &v14, &v13, &v11, &v10) == -1)
    {
      if (*__error() == 92 || *__error() == 22)
      {
        if ((*(v15 + 36) & 0x1500) != 0)
        {
          if ((*(v15 + 36) & 0x100) != 0)
          {
            v6 = 3;
          }

          else
          {
            v6 = 2;
          }

          if (v10 < v6)
          {
            v18[1] = v11 - *v18;
            if (!archive_string_ensure(v18, v18[2] + v13 * v8 + v6))
            {
              return -1;
            }

            v11 = (*v18 + v18[1]);
            v10 = v18[2] - v18[1] - v8;
          }

          if ((*(v15 + 36) & 0x100) != 0)
          {
            __memcpy_chk();
          }

          else if ((*(v15 + 36) & 0x400) != 0)
          {
            archive_be16enc_1(v11, 65533);
          }

          else
          {
            archive_le16enc_1(v11, 65533);
          }

          v11 = (v11 + v6);
          v10 -= v6;
        }

        else
        {
          v4 = v11;
          v11 = (v11 + 1);
          *v4 = 63;
          --v10;
        }

        v14 += v7;
        v13 -= v7;
        v9 = -1;
      }

      else
      {
        v18[1] = v11 - *v18;
        if (!archive_string_ensure(v18, v18[2] + 2 * v13))
        {
          return -1;
        }

        v11 = (*v18 + v18[1]);
        v10 = v18[2] - v18[1] - v8;
      }
    }

    v18[1] = v11 - *v18;
    *(*v18 + v18[1]) = 0;
    if (v8 == 2)
    {
      *(*v18 + v18[1] + 1) = 0;
    }

    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_string_normalize_D(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v50 = a2;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v44 = 1;
  v39 = 1;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v36 = unicode_to_utf16be;
    v39 = 2;
    v44 = (*(v51 + 36) & 0x800) == 0;
  }

  else if ((*(v51 + 36) & 0x1000) != 0)
  {
    v36 = unicode_to_utf16le;
    v39 = 2;
    v44 = (*(v51 + 36) & 0x2000) == 0;
  }

  else if ((*(v51 + 36) & 0x100) != 0)
  {
    v36 = unicode_to_utf8;
    v44 = (*(v51 + 36) & 0x200) == 0;
  }

  else
  {
    v44 = 0;
    if ((*(v51 + 36) & 0x800) != 0)
    {
      v36 = unicode_to_utf16be;
      v39 = 2;
    }

    else if ((*(v51 + 36) & 0x2000) != 0)
    {
      v36 = unicode_to_utf16le;
      v39 = 2;
    }

    else
    {
      v36 = unicode_to_utf8;
    }
  }

  if ((*(v51 + 36) & 0x800) != 0)
  {
    v37 = utf16be_to_unicode;
    v38 = 1;
    v40 = 4;
  }

  else if ((*(v51 + 36) & 0x2000) != 0)
  {
    v37 = utf16le_to_unicode;
    v38 = 1;
    v40 = 4;
  }

  else
  {
    v37 = cesu8_to_unicode;
    v38 = v39;
    v40 = 6;
  }

  if (!archive_string_ensure(v54, v54[1] + v52 * v38 + v39))
  {
    return -1;
  }

  v49 = (*v54 + v54[1]);
  v48 = *v54 + v54[2] - v39;
LABEL_20:
  v43 = v37(&v47, v50, v52);
  if (v43)
  {
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v29 = 0;
    while (1)
    {
      if (v43 < 0)
      {
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            return -1;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        v50 -= v43;
        v52 -= -v43;
        v41 = -1;
        goto LABEL_20;
      }

      if (v43 == v40 || v44)
      {
        v35 = 0;
      }

      else
      {
        v35 = v50;
      }

      v50 += v43;
      v52 -= v43;
      v32 = v47 - 44032;
      if (((v47 - 44032) & 0x80000000) == 0 && v32 < 11172)
      {
        v47 = v32 / 588 + 4352;
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            return -1;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        v47 = v32 % 588 / 28 + 4449;
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            return -1;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        if (v32 % 28)
        {
          v47 = v32 % 28 + 4519;
          v35 = 0;
          while (1)
          {
            v45 = (v36)(v49, v48 - v49, v47);
            if (v45)
            {
              break;
            }

            v54[1] = &v49[-*v54];
            if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
            {
              return -1;
            }

            v49 = (*v54 + v54[1]);
            v48 = *v54 + v54[2] - v39;
          }

          v49 += v45;
        }

        goto LABEL_20;
      }

      if (v47 >> 8 <= 0x1D2 && u_decomposable_blocks[v47 >> 8])
      {
        if (v47 > 0x1D244 ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v47 >> 8] + (v47 >> 4)] + (v47 & 0xF)])
        {
          if (v35)
          {
            if (&v49[v43] > v48)
            {
              v54[1] = &v49[-*v54];
              if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
              {
                return -1;
              }

              v49 = (*v54 + v54[1]);
              v48 = *v54 + v54[2] - v39;
            }

            switch(v43)
            {
              case 1:
                goto LABEL_70;
              case 2:
                goto LABEL_69;
              case 3:
                goto LABEL_68;
              case 4:
                v4 = v35++;
                LOBYTE(v4) = *v4;
                v5 = v49++;
                *v5 = v4;
LABEL_68:
                v6 = v35++;
                LOBYTE(v6) = *v6;
                v7 = v49++;
                *v7 = v6;
LABEL_69:
                v8 = v35++;
                LOBYTE(v8) = *v8;
                v9 = v49++;
                *v9 = v8;
LABEL_70:
                v10 = *v35;
                v11 = v49++;
                *v11 = v10;
                break;
            }

            v35 = 0;
            goto LABEL_20;
          }

          while (1)
          {
            v45 = (v36)(v49, v48 - v49, v47);
            if (v45)
            {
              break;
            }

            v54[1] = &v49[-*v54];
            if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
            {
              return -1;
            }

            v49 = (*v54 + v54[1]);
            v48 = *v54 + v54[2] - v39;
          }

          v49 += v45;
          goto LABEL_20;
        }
      }

      for (i = 0; ; ++i)
      {
        v24 = 0;
        if (get_nfd(&v34, &v33, v47))
        {
          v24 = i < 10;
        }

        if (!v24)
        {
          break;
        }

        for (j = i; j > 0; --j)
        {
          *&v56[2 * j] = *&v56[2 * j - 2];
        }

        if (v33 <= 0x1D244)
        {
          v23 = ccc_val[16 * ccc_val_index[16 * ccc_index[v33 >> 8] + (v33 >> 4)] + (v33 & 0xF)];
        }

        else
        {
          v23 = 0;
        }

        v56[1] = v23;
        v56[0] = v33;
        v47 = v34;
        v35 = 0;
      }

      while (1)
      {
        v42 = v37(&v46, v50, v52);
        v22 = 0;
        if (v42 > 0)
        {
          v21 = v46 > 0x1D244 ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v46 >> 8] + (v46 >> 4)] + (v46 & 0xF)];
          v29 = v21;
          v22 = 0;
          if (v21)
          {
            v22 = i < 10;
          }
        }

        if (!v22)
        {
          break;
        }

        v50 += v42;
        v52 -= v42;
          ;
        }

        if (k >= i)
        {
          v56[2 * i + 1] = v29;
          v56[2 * i] = v46;
        }

        else
        {
          for (m = i; m > k; --m)
          {
            *&v56[2 * m] = *&v56[2 * m - 2];
          }

          v56[2 * k + 1] = v29;
          v56[2 * k] = v46;
        }

        ++i;
      }

      if (v35)
      {
        break;
      }

      while (1)
      {
        v45 = (v36)(v49, v48 - v49, v47);
        if (v45)
        {
          break;
        }

        v54[1] = &v49[-*v54];
        if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
        {
          return -1;
        }

        v49 = (*v54 + v54[1]);
        v48 = *v54 + v54[2] - v39;
      }

      v49 += v45;
LABEL_125:
      for (n = 0; n < i; ++n)
      {
        v47 = v56[2 * n];
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            return -1;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
      }

      if (!v42)
      {
        goto LABEL_135;
      }

      v47 = v46;
      v35 = 0;
      v43 = v42;
    }

    if (&v49[v43] > v48)
    {
      v54[1] = &v49[-*v54];
      if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
      {
        return -1;
      }

      v49 = (*v54 + v54[1]);
      v48 = *v54 + v54[2] - v39;
    }

    if (v43 != 1)
    {
      if (v43 != 2)
      {
        if (v43 != 3)
        {
          if (v43 != 4)
          {
LABEL_119:
            v35 = 0;
            goto LABEL_125;
          }

          v12 = v35++;
          LOBYTE(v12) = *v12;
          v13 = v49++;
          *v13 = v12;
        }

        v14 = v35++;
        LOBYTE(v14) = *v14;
        v15 = v49++;
        *v15 = v14;
      }

      v16 = v35++;
      LOBYTE(v16) = *v16;
      v17 = v49++;
      *v17 = v16;
    }

    v18 = *v35;
    v19 = v49++;
    *v19 = v18;
    goto LABEL_119;
  }

LABEL_135:
  v54[1] = &v49[-*v54];
  *(*v54 + v54[1]) = 0;
  if (v39 == 2)
  {
    *(*v54 + v54[1] + 1) = 0;
  }

  return v41;
}

uint64_t archive_string_normalize_C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v111 = a1;
  v110 = a2;
  v109 = a3;
  v108 = a4;
  v107 = a2;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v88 = 0;
  v86 = 1;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v83 = unicode_to_utf16be;
    v86 = 2;
    v91 = (*(v108 + 36) & 0x800) == 0;
  }

  else if ((*(v108 + 36) & 0x1000) != 0)
  {
    v83 = unicode_to_utf16le;
    v86 = 2;
    v91 = (*(v108 + 36) & 0x2000) == 0;
  }

  else if ((*(v108 + 36) & 0x100) != 0)
  {
    v83 = unicode_to_utf8;
    v91 = (*(v108 + 36) & 0x200) == 0;
  }

  else
  {
    v91 = 0;
    if ((*(v108 + 36) & 0x800) != 0)
    {
      v83 = unicode_to_utf16be;
      v86 = 2;
    }

    else if ((*(v108 + 36) & 0x2000) != 0)
    {
      v83 = unicode_to_utf16le;
      v86 = 2;
    }

    else
    {
      v83 = unicode_to_utf8;
    }
  }

  if ((*(v108 + 36) & 0x800) != 0)
  {
    v84 = utf16be_to_unicode;
    v85 = 1;
    v87 = 4;
  }

  else if ((*(v108 + 36) & 0x2000) != 0)
  {
    v84 = utf16le_to_unicode;
    v85 = 1;
    v87 = 4;
  }

  else
  {
    v84 = cesu8_to_unicode;
    v85 = v86;
    v87 = 6;
  }

  if (!archive_string_ensure(v111, v111[1] + v109 * v85 + v86))
  {
    return -1;
  }

  v106 = (*v111 + v111[1]);
  v105 = *v111 + v111[2] - v86;
  while (1)
  {
LABEL_20:
    v90 = v84(&v104, v107, v109);
    if (!v90)
    {
      goto LABEL_260;
    }

    if ((v90 & 0x80000000) == 0)
    {
      break;
    }

    while (1)
    {
      v92 = (v83)(v106, v105 - v106, v104);
      if (v92)
      {
        break;
      }

      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        return -1;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    v106 += v92;
    v107 -= v90;
    v109 -= -v90;
    v88 = -1;
  }

  if (v90 == v87 || v91)
  {
    v82 = 0;
  }

  else
  {
    v82 = v107;
  }

  v107 += v90;
  v109 -= v90;
  while (1)
  {
    v89 = v84(&v103, v107, v109);
    if (v89 <= 0)
    {
      break;
    }

    v75 = 0;
    if (v89 == v87 || v91)
    {
      v81 = 0;
    }

    else
    {
      v81 = v107;
    }

    v107 += v89;
    v109 -= v89;
    if (v103 >> 8 <= 0x1D2 && u_decomposable_blocks[v103 >> 8])
    {
      v73 = v104 - 4352;
      if (v104 - 4352 < 0 || v73 >= 19)
      {
        v72 = v104 - 44032;
        if (v104 - 44032 < 0 || v72 >= 11172 || v72 % 28)
        {
          nfc = get_nfc(v104, v103);
          if (nfc)
          {
            v104 = nfc;
            v82 = 0;
          }

          else
          {
            if (v103 > 0x1D244)
            {
              v64 = 0;
            }

            else
            {
              v64 = ccc_val[16 * ccc_val_index[16 * ccc_index[v103 >> 8] + (v103 >> 4)] + (v103 & 0xF)];
            }

            v80 = v64;
            if (v64)
            {
              v79 = 0;
              v114[0] = v103;
              v113[0] = v64;
              for (i = 1; i < 10; ++i)
              {
                v75 = v84(&v114[i], v107, v109);
                if (v75 <= 0)
                {
                  break;
                }

                v63 = v114[i] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[i] >> 8] + ((v114[i] >> 4) & 0xF)] + (v114[i] & 0xF)];
                v79 = v63;
                if (v80 >= v63 && v80 != 228 && v63 != 228)
                {
                  break;
                }

                v107 += v75;
                v109 -= v75;
                v80 = v63;
                v113[i] = v63;
              }

              if (i < 10)
              {
                v74 = i;
              }

              else
              {
                v88 = -1;
                v74 = 10;
              }

              v77 = 1;
              while (v77 < v74)
              {
                v71 = get_nfc(v104, v114[v77]);
                if (v71)
                {
                  v104 = v71;
                  v82 = 0;
                  for (j = v77; j + 1 < v74; ++j)
                  {
                    v114[j] = v114[j + 1];
                    v113[j] = v113[j + 1];
                  }

                  if (--v74 > 0 && v77 == v74 && v75 > 0 && v79 == v80)
                  {
                    v80 = v113[v74 - 1];
                    for (k = v74; k < 10; ++k)
                    {
                      v75 = v84(&v114[k], v107, v109);
                      if (v75 <= 0)
                      {
                        break;
                      }

                      v62 = v114[k] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[k] >> 8] + ((v114[k] >> 4) & 0xF)] + (v114[k] & 0xF)];
                      v79 = v62;
                      if (v80 >= v62 && v80 != 228 && v62 != 228)
                      {
                        break;
                      }

                      v107 += v75;
                      v109 -= v75;
                      v80 = v62;
                      v113[k] = v62;
                    }

                    if (k < 10)
                    {
                      v74 = k;
                    }

                    else
                    {
                      v88 = -1;
                      v74 = 10;
                    }
                  }

                  v77 = 0;
                }

                else
                {
                  ++v77;
                }
              }

              if (v82)
              {
                if (&v106[v90] > v105)
                {
                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    return -1;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                switch(v90)
                {
                  case 1:
                    goto LABEL_186;
                  case 2:
                    goto LABEL_185;
                  case 3:
                    goto LABEL_184;
                  case 4:
                    v36 = v82++;
                    LOBYTE(v36) = *v36;
                    v37 = v106++;
                    *v37 = v36;
LABEL_184:
                    v38 = v82++;
                    LOBYTE(v38) = *v38;
                    v39 = v106++;
                    *v39 = v38;
LABEL_185:
                    v40 = v82++;
                    LOBYTE(v40) = *v40;
                    v41 = v106++;
                    *v41 = v40;
LABEL_186:
                    v42 = *v82;
                    v43 = v106++;
                    *v43 = v42;
                    break;
                }

                v82 = 0;
              }

              else
              {
                while (1)
                {
                  v97 = (v83)(v106, v105 - v106, v104);
                  if (v97)
                  {
                    break;
                  }

                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    return -1;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                v106 += v97;
              }

              for (m = 0; m < v74; ++m)
              {
                while (1)
                {
                  v98 = (v83)(v106, v105 - v106, v114[m]);
                  if (v98)
                  {
                    break;
                  }

                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    return -1;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                v106 += v98;
              }

              if (v75 > 0 && v79 == v80 && v109)
              {
                while (1)
                {
                  v76 = v84(v114, v107, v109);
                  if (v76 <= 0)
                  {
                    break;
                  }

                  v61 = v114[0] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[0] >> 8] + (LOBYTE(v114[0]) >> 4)] + (v114[0] & 0xF)];
                  if (v80 > v61)
                  {
                    break;
                  }

                  v107 += v76;
                  v109 -= v76;
                  v80 = v61;
                  while (1)
                  {
                    v99 = (v83)(v106, v105 - v106, v114[0]);
                    if (v99)
                    {
                      break;
                    }

                    v111[1] = &v106[-*v111];
                    if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                    {
                      return -1;
                    }

                    v106 = (*v111 + v111[1]);
                    v105 = *v111 + v111[2] - v86;
                  }

                  v106 += v99;
                }
              }

              break;
            }

            if (v82)
            {
              if (&v106[v90] > v105)
              {
                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  return -1;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              if (v90 != 1)
              {
                if (v90 != 2)
                {
                  if (v90 != 3)
                  {
                    if (v90 != 4)
                    {
                      goto LABEL_135;
                    }

                    v28 = v82++;
                    LOBYTE(v28) = *v28;
                    v29 = v106++;
                    *v29 = v28;
                  }

                  v30 = v82++;
                  LOBYTE(v30) = *v30;
                  v31 = v106++;
                  *v31 = v30;
                }

                v32 = v82++;
                LOBYTE(v32) = *v32;
                v33 = v106++;
                *v33 = v32;
              }

              v34 = *v82;
              v35 = v106++;
              *v35 = v34;
            }

            else
            {
              while (1)
              {
                v96 = (v83)(v106, v105 - v106, v104);
                if (v96)
                {
                  break;
                }

                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  return -1;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              v106 += v96;
            }

LABEL_135:
            v104 = v103;
            v82 = v81;
            v90 = v89;
          }
        }

        else
        {
          v68 = v103 - 4519;
          if ((v103 - 4519) <= 0 || v68 >= 28)
          {
            if (v82)
            {
              if (&v106[v90] > v105)
              {
                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  return -1;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              if (v90 != 1)
              {
                if (v90 != 2)
                {
                  if (v90 != 3)
                  {
                    if (v90 != 4)
                    {
                      goto LABEL_109;
                    }

                    v20 = v82++;
                    LOBYTE(v20) = *v20;
                    v21 = v106++;
                    *v21 = v20;
                  }

                  v22 = v82++;
                  LOBYTE(v22) = *v22;
                  v23 = v106++;
                  *v23 = v22;
                }

                v24 = v82++;
                LOBYTE(v24) = *v24;
                v25 = v106++;
                *v25 = v24;
              }

              v26 = *v82;
              v27 = v106++;
              *v27 = v26;
            }

            else
            {
              while (1)
              {
                v95 = (v83)(v106, v105 - v106, v104);
                if (v95)
                {
                  break;
                }

                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  return -1;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              v106 += v95;
            }

LABEL_109:
            v104 = v103;
            v82 = v81;
            v90 = v89;
          }

          else
          {
            v104 += v68;
            v82 = 0;
          }
        }
      }

      else
      {
        v69 = v103 - 4449;
        if ((v103 - 4449) < 0 || v69 >= 21)
        {
          if (v82)
          {
            if (&v106[v90] > v105)
            {
              v111[1] = &v106[-*v111];
              if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
              {
                return -1;
              }

              v106 = (*v111 + v111[1]);
              v105 = *v111 + v111[2] - v86;
            }

            if (v90 != 1)
            {
              if (v90 != 2)
              {
                if (v90 != 3)
                {
                  if (v90 != 4)
                  {
                    goto LABEL_83;
                  }

                  v12 = v82++;
                  LOBYTE(v12) = *v12;
                  v13 = v106++;
                  *v13 = v12;
                }

                v14 = v82++;
                LOBYTE(v14) = *v14;
                v15 = v106++;
                *v15 = v14;
              }

              v16 = v82++;
              LOBYTE(v16) = *v16;
              v17 = v106++;
              *v17 = v16;
            }

            v18 = *v82;
            v19 = v106++;
            *v19 = v18;
          }

          else
          {
            while (1)
            {
              v94 = (v83)(v106, v105 - v106, v104);
              if (v94)
              {
                break;
              }

              v111[1] = &v106[-*v111];
              if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
              {
                return -1;
              }

              v106 = (*v111 + v111[1]);
              v105 = *v111 + v111[2] - v86;
            }

            v106 += v94;
          }

LABEL_83:
          v104 = v103;
          v82 = v81;
          v90 = v89;
        }

        else
        {
          v104 = 28 * (21 * v73 + v69) + 44032;
          v82 = 0;
        }
      }
    }

    else
    {
      if (v82)
      {
        if (&v106[v90] > v105)
        {
          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            return -1;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        if (v90 != 1)
        {
          if (v90 != 2)
          {
            if (v90 != 3)
            {
              if (v90 != 4)
              {
                goto LABEL_58;
              }

              v4 = v82++;
              LOBYTE(v4) = *v4;
              v5 = v106++;
              *v5 = v4;
            }

            v6 = v82++;
            LOBYTE(v6) = *v6;
            v7 = v106++;
            *v7 = v6;
          }

          v8 = v82++;
          LOBYTE(v8) = *v8;
          v9 = v106++;
          *v9 = v8;
        }

        v10 = *v82;
        v11 = v106++;
        *v11 = v10;
      }

      else
      {
        while (1)
        {
          v93 = (v83)(v106, v105 - v106, v104);
          if (v93)
          {
            break;
          }

          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            return -1;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        v106 += v93;
      }

LABEL_58:
      v104 = v103;
      v82 = v81;
      v90 = v89;
    }
  }

  if ((v89 & 0x80000000) == 0)
  {
    if (!v89)
    {
      if (v82)
      {
        if (&v106[v90] > v105)
        {
          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            return -1;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        switch(v90)
        {
          case 1:
            goto LABEL_252;
          case 2:
            goto LABEL_251;
          case 3:
            goto LABEL_250;
          case 4:
            v52 = v82++;
            LOBYTE(v52) = *v52;
            v53 = v106++;
            *v53 = v52;
LABEL_250:
            v54 = v82++;
            LOBYTE(v54) = *v54;
            v55 = v106++;
            *v55 = v54;
LABEL_251:
            v56 = v82++;
            LOBYTE(v56) = *v56;
            v57 = v106++;
            *v57 = v56;
LABEL_252:
            v58 = *v82;
            v59 = v106++;
            *v59 = v58;
            break;
        }
      }

      else
      {
        while (1)
        {
          v102 = (v83)(v106, v105 - v106, v104);
          if (v102)
          {
            break;
          }

          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            return -1;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        v106 += v102;
      }

LABEL_260:
      v111[1] = &v106[-*v111];
      *(*v111 + v111[1]) = 0;
      if (v86 == 2)
      {
        *(*v111 + v111[1] + 1) = 0;
      }

      return v88;
    }

    goto LABEL_20;
  }

  if (v82)
  {
    if (&v106[v90] > v105)
    {
      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        return -1;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    if (v90 != 1)
    {
      if (v90 != 2)
      {
        if (v90 != 3)
        {
          if (v90 != 4)
          {
            goto LABEL_234;
          }

          v44 = v82++;
          LOBYTE(v44) = *v44;
          v45 = v106++;
          *v45 = v44;
        }

        v46 = v82++;
        LOBYTE(v46) = *v46;
        v47 = v106++;
        *v47 = v46;
      }

      v48 = v82++;
      LOBYTE(v48) = *v48;
      v49 = v106++;
      *v49 = v48;
    }

    v50 = *v82;
    v51 = v106++;
    *v51 = v50;
LABEL_234:
    while (1)
    {
      v101 = (v83)(v106, v105 - v106, v103);
      if (v101)
      {
        break;
      }

      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        return -1;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    v106 += v101;
    v107 -= v89;
    v109 -= -v89;
    v88 = -1;
    goto LABEL_20;
  }

  while (1)
  {
    v100 = (v83)(v106, v105 - v106, v104);
    if (v100)
    {
      v106 += v100;
      goto LABEL_234;
    }

    v111[1] = &v106[-*v111];
    if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
    {
      break;
    }

    v106 = (*v111 + v111[1]);
    v105 = *v111 + v111[2] - v86;
  }

  return -1;
}

uint64_t best_effort_strncat_in_locale(void *a1, char *a2, size_t a3, uint64_t a4)
{
  v6 = 0;
  if (*(a4 + 32))
  {
    if (archive_string_append(a1, a2, a3))
    {
      return invalid_mbs(a2, a3, a4);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    for (i = a2; ; ++i)
    {
      v5 = 0;
      if (*i)
      {
        v5 = a3 != 0;
      }

      if (!v5)
      {
        break;
      }

      if (*i <= 0x7Fu)
      {
        archive_strappend_char(a1, *i);
      }

      else
      {
        if ((*(a4 + 36) & 0x100) != 0)
        {
          if (!archive_string_append(a1, &utf8_replacement_char, 3))
          {
            __archive_errx(1, "Out of memory");
          }
        }

        else
        {
          archive_strappend_char(a1, 63);
        }

        v6 = -1;
      }
    }

    return v6;
  }
}

uint64_t unicode_to_utf16be(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x10000)
  {
    if (a2 >= 2)
    {
      archive_be16enc_1(a1, a3);
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 >= 4)
  {
    v5 = a3;
    archive_be16enc_1(a1, (((a3 - 0x10000) >> 10) & 0x3FF) - 10240);
    archive_be16enc_1(a1 + 2, (v5 & 0x3FF) - 9216);
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t unicode_to_utf16le(_WORD *a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x10000)
  {
    if (a2 >= 2)
    {
      archive_le16enc_1(a1, a3);
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 >= 4)
  {
    v5 = a3;
    archive_le16enc_1(a1, (((a3 - 0x10000) >> 10) & 0x3FF) - 10240);
    archive_le16enc_1(a1 + 1, (v5 & 0x3FF) - 9216);
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t unicode_to_utf8(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  v4 = a3;
  if (a3 >= 0x110000)
  {
    v4 = 65533;
  }

  if (v4 > 0x7F)
  {
    if (v4 > 0x7FF)
    {
      if (v4 >= 0x10000)
      {
        if (a2 < 4)
        {
          return 0;
        }

        *a1 = (v4 >> 18) & 7 | 0xF0;
        a1[1] = (v4 >> 12) & 0x3F | 0x80;
        a1[2] = (v4 >> 6) & 0x3F | 0x80;
        v5 = a1 + 4;
        a1[3] = v4 & 0x3F | 0x80;
      }

      else
      {
        if (a2 < 3)
        {
          return 0;
        }

        *a1 = (v4 >> 12) & 0xF | 0xE0;
        a1[1] = (v4 >> 6) & 0x3F | 0x80;
        v5 = a1 + 3;
        a1[2] = v4 & 0x3F | 0x80;
      }
    }

    else
    {
      if (a2 < 2)
      {
        return 0;
      }

      *a1 = (v4 >> 6) & 0x1F | 0xC0;
      v5 = a1 + 2;
      a1[1] = v4 & 0x3F | 0x80;
    }

    return v5 - a1;
  }

  if (a2)
  {
    v5 = a1 + 1;
    *a1 = v4;
    return v5 - a1;
  }

  return 0;
}

uint64_t cesu8_to_unicode(unsigned int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = _utf8_to_unicode(&v6, a2, a3);
  if (v5 != 3 || v6 < 0xD800 || v6 > 0xDBFF)
  {
    if (v5 == 3 && v6 >= 0xDC00 && v6 < 0xE000)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v9 = v6;
    return v5;
  }

  v4 = 0;
  if ((v7 - 3) >= 3)
  {
    v5 = _utf8_to_unicode(&v4, v8 + 3, v7 - 3);
    if (v5 == 3 && v4 >= 0xDC00 && v4 < 0xE000)
    {
      v6 = combine_surrogate_pair(v6, v4);
      v5 = 6;
      goto LABEL_13;
    }
  }

LABEL_14:
  *v9 = 65533;
  if (v5 > 0)
  {
    return -v5;
  }

  return v5;
}

_BYTE *archive_be16enc_1(_BYTE *result, __int16 a2)
{
  *result = HIBYTE(a2);
  result[1] = a2;
  return result;
}

uint64_t utf16_to_unicode(unsigned int *a1, unsigned __int16 *a2, unint64_t a3, int a4)
{
  v11 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      *a1 = 65533;
      return -1;
    }

    else
    {
      if (a4)
      {
        v6 = archive_be16dec_0(a2);
      }

      else
      {
        v6 = archive_le16dec_4(a2);
      }

      v8 = a2 + 1;
      if (v6 >= 0xD800 && v6 <= 0xDBFF)
      {
        if (a3 < 4)
        {
          v5 = 0;
        }

        else if (a4)
        {
          v5 = archive_be16dec_0(v8);
        }

        else
        {
          v5 = archive_le16dec_4(v8);
        }

        if (v5 < 0xDC00 || v5 >= 0xE000)
        {
          *a1 = 65533;
          return -2;
        }

        v6 = combine_surrogate_pair(v6, v5);
        LODWORD(v8) = v8 + 2;
      }

      if ((v6 < 0xD800 || v6 >= 0xE000) && v6 < 0x110000)
      {
        *a1 = v6;
        return (v8 - v11);
      }

      else
      {
        *a1 = 65533;
        return (v11 - v8);
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t best_effort_strncat_to_utf16(void *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 0;
  v10 = a3;
  if (archive_string_ensure(a1, a1[1] + 2 * (a3 + 1)))
  {
    for (i = (*a1 + a1[1]); v10--; i += 2)
    {
      v6 = a2++;
      v8 = *v6;
      if (v8 > 0x7F)
      {
        LOWORD(v8) = -3;
        v9 = -1;
      }

      if (a5)
      {
        archive_be16enc_1(i, v8);
      }

      else
      {
        archive_le16enc_1(i, v8);
      }
    }

    a1[1] = &i[-*a1];
    *(*a1 + a1[1]) = 0;
    *(*a1 + a1[1] + 1) = 0;
    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t get_nfd(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  if ((a3 < 0x2000 || a3 >= 0x3000) && (a3 < 0xF900 || a3 > 0xFAFF) && (a3 < 0x2F800 || a3 > 0x2FAFF))
  {
    if (a3 == 69786 || a3 == 69788 || a3 == 69803)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v5 = 930;
      while (v5 >= v6)
      {
        v4 = (v6 + v5) / 2;
        if (u_decomposition_table[3 * v4] >= a3)
        {
          if (u_decomposition_table[3 * v4] <= a3)
          {
            *a1 = u_decomposition_table[3 * v4 + 1];
            *a2 = u_decomposition_table[3 * v4 + 2];
            return 1;
          }

          v5 = v4 - 1;
        }

        else
        {
          v6 = v4 + 1;
        }
      }

      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_nfc(unsigned int a1, unsigned int a2)
{
  v5 = 0;
  v4 = 930;
  while (v4 >= v5)
  {
    v3 = (v5 + v4) / 2;
    if (u_composition_table[3 * v3] >= a1)
    {
      if (u_composition_table[3 * v3] <= a1)
      {
        if (u_composition_table[3 * v3 + 1] >= a2)
        {
          if (u_composition_table[3 * v3 + 1] <= a2)
          {
            return u_composition_table[3 * v3 + 2];
          }

          v4 = v3 - 1;
        }

        else
        {
          v5 = v3 + 1;
        }
      }

      else
      {
        v4 = v3 - 1;
      }
    }

    else
    {
      v5 = v3 + 1;
    }
  }

  return 0;
}

uint64_t best_effort_strncat_from_utf16(void *a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, int a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v7 = 0;
  if (archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    v10 = (*v16 + v16[1]);
    while (1)
    {
      v8 = utf16_to_unicode(&v9, v11, v14, v12);
      if (!v8)
      {
        break;
      }

      if (v8 < 0)
      {
        v8 = -v8;
        v7 = -1;
      }

      v14 -= v8;
      v11 = (v11 + v8);
      v5 = v10++;
      if (v9 <= 0x7F)
      {
        *v5 = v9;
      }

      else
      {
        *v5 = 63;
        v7 = -1;
      }
    }

    v16[1] = &v10[-*v16];
    *(*v16 + v16[1]) = 0;
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t invalid_mbs(char *a1, size_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = 0;
  memset(&__b, 0, sizeof(__b));
  while (v8)
  {
    v4 = 0;
    v5 = mbrtowc(&v4, v6, v8, &__b);
    if (v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return -1;
    }

    if (!v5)
    {
      break;
    }

    v6 += v5;
    v8 -= v5;
  }

  return 0;
}

void *append_int(void *a1, unint64_t a2, unsigned int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return append_uint(a1, a2, a3);
  }

  archive_strappend_char(a1, 45);
  if (a2 == 0x8000000000000000)
  {
    v4 = 0x8000000000000000;
  }

  else
  {
    v4 = -a2;
  }

  return append_uint(a1, v4, a3);
}

void *append_uint(void *a1, unint64_t a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    append_uint(a1, a2 / a3, a3);
  }

  return archive_strappend_char(a1, append_uint_digits[a2 % a3]);
}

uint64_t archive_error_string(uint64_t a1)
{
  if (*(a1 + 40) && **(a1 + 40))
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void *archive_copy_error(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = 0;
  result = archive_string_concat((a1 + 48), (a2 + 48));
  *(a1 + 40) = *(a1 + 48);
  return result;
}

void __archive_errx(int a1, const char *a2)
{
  write(2, "Fatal Internal Error in libarchive: ", 0x24uLL);
  v2 = strlen(a2);
  write(2, a2, v2);
  write(2, "\n", 1uLL);
  exit(a1);
}

uint64_t get_tempdir(void *a1)
{
  v3 = getenv("TMPDIR");
  if (!v3)
  {
    v3 = "/tmp";
  }

  a1[1] = 0;
  if (v3)
  {
    v2 = strlen(v3);
    archive_strncat(a1, v3, v2);
  }

  else
  {
    archive_strncat(a1, 0, 0);
  }

  if (*(*a1 + a1[1] - 1) != 47)
  {
    archive_strappend_char(a1, 47);
  }

  return 0;
}

uint64_t __archive_mktemp(char *a1)
{
  v7 = a1;
  v3 = -1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (a1)
  {
    v5 = 0;
    v2 = strlen(v7);
    archive_strncat(&v4, v7, v2);
    if (v4[v5 - 1] != 47)
    {
      archive_strappend_char(&v4, 47);
    }
  }

  else if (get_tempdir(&v4))
  {
    goto LABEL_8;
  }

  archive_strcat(&v4, "libarchive_XXXXXX");
  v3 = mkstemp(v4);
  if ((v3 & 0x80000000) == 0)
  {
    __archive_ensure_cloexec_flag(v3);
    unlink(v4);
  }

LABEL_8:
  archive_string_free(&v4);
  return v3;
}

uint64_t __archive_mkstemp(char *a1)
{
  v2 = mkstemp(a1);
  if ((v2 & 0x80000000) == 0)
  {
    __archive_ensure_cloexec_flag(v2);
  }

  return v2;
}

uint64_t archive_utility_string_sort(char **a1)
{
    ;
  }

  return archive_utility_string_sort_helper(a1, i);
}

uint64_t archive_utility_string_sort_helper(char **a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v11 = 0;
    v12 = 0;
    ptr = 0;
    v10 = 0;
    __s2 = *a1;
    for (i = 1; i < a2; ++i)
    {
      if (strcmp(a1[i], __s2) < 0)
      {
        v7 = malloc_type_realloc(v10, 8 * ++v12, 0x10040436913F5uLL);
        if (!v7)
        {
          goto LABEL_7;
        }

        v10 = v7;
        *(v7 + v12 - 1) = a1[i];
      }

      else
      {
        v8 = malloc_type_realloc(ptr, 8 * ++v11, 0x10040436913F5uLL);
        if (!v8)
        {
LABEL_7:
          free(ptr);
          free(v10);
          return -30;
        }

        ptr = v8;
        *(v8 + v11 - 1) = a1[i];
      }
    }

    v5 = archive_utility_string_sort_helper(v10, v12);
    for (j = 0; j < v12; ++j)
    {
      a1[j] = *(v10 + j);
    }

    free(v10);
    a1[v12] = __s2;
    v4 = archive_utility_string_sort_helper(ptr, v11);
    for (k = 0; k < v11; ++k)
    {
      (&a1[v12 + 1])[k] = *(ptr + k);
    }

    free(ptr);
    if (v5 >= v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_set_format_option_0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = -20;
  v6 = 0;
  for (i = 0; i < 0x10; ++i)
  {
    v5 = a1 + 664 + 88 * i;
    if (*(v5 + 24) && *(v5 + 8))
    {
      if (a2)
      {
        if (strcmp(*(v5 + 8), a2))
        {
          continue;
        }

        ++v6;
      }

      *(a1 + 2072) = v5;
      v8 = (*(v5 + 24))(a1, a3, a4);
      *(a1 + 2072) = 0;
      if (v8 == -30)
      {
        return -30;
      }

      if (!v8)
      {
        v7 = 0;
      }
    }
  }

  if (!a2 || v6)
  {
    return v7;
  }

  else
  {
    return -21;
  }
}

uint64_t archive_set_filter_option_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return -21;
  }

  else
  {
    return -20;
  }
}

time_t __archive_get_date()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v21[2] = *MEMORY[0x1E69E9840];
  v18 = v0;
  v17 = v1;
  memset(__b, 0, sizeof(__b));
  v15 = 0;
  v14 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v12 = 0;
  memset(&v11, 0, sizeof(v11));
  bzero(v20, 0x1000uLL);
  memset(__b, 0, sizeof(__b));
  v14 = __b;
  v12 = localtime_r(&v18, &__dst);
  if (!v12)
  {
    return -1;
  }

  __src = gmtime_r(&v18, &v11);
  if (__src)
  {
    v5 = difftm(&v11, &__dst);
  }

  else
  {
    v5 = 0;
  }

  if (__dst.tm_isdst)
  {
    v5 += 3600;
  }

  v15 = v20;
  while (1)
  {
    v2 = nexttoken(&v17, v15 + 1);
    *v15 = v2;
    if (!v2)
    {
      break;
    }

    v15 += 16;
    if (v15 > v21)
    {
      return -1;
    }
  }

  *v14 = v20;
  while (*v14 < v15)
  {
    if (!phrase(v14))
    {
      return -1;
    }
  }

  if (!*(v14 + 7))
  {
    *(v14 + 5) = v5;
    *(v14 + 24) = 2;
  }

  if (*(v14 + 7) && __src)
  {
    v18 -= *(v14 + 5);
    __srca = gmtime_r(&v18, &v11);
    if (__srca)
    {
      memcpy(&__dst, __srca, sizeof(__dst));
    }

    v18 += *(v14 + 5);
  }

  if (!*(v14 + 2))
  {
    *(v14 + 11) = __dst.tm_year + 1900;
  }

  if (!*(v14 + 3))
  {
    *(v14 + 9) = __dst.tm_mon + 1;
  }

  if (!*(v14 + 4))
  {
    *(v14 + 6) = __dst.tm_mday;
  }

  if (*(v14 + 6) > 1 || *(v14 + 7) > 1 || *(v14 + 5) > 1 || *(v14 + 2) > 1 || *(v14 + 3) > 1 || *(v14 + 4) > 1)
  {
    return -1;
  }

  if (*(v14 + 2) || *(v14 + 3) || *(v14 + 4) || *(v14 + 6) || *(v14 + 5))
  {
    v6 = Convert(*(v14 + 9), *(v14 + 6), *(v14 + 11), *(v14 + 7), *(v14 + 8), *(v14 + 10), *(v14 + 5), *(v14 + 24));
    if (v6 < 0)
    {
      return -1;
    }
  }

  else
  {
    v6 = v18;
    if (!*(v14 + 8))
    {
      v6 = v18 - (3600 * __dst.tm_hour + 60 * __dst.tm_min + __dst.tm_sec);
    }
  }

  v7 = v6 + *(v14 + 16);
  v8 = v7 + RelativeMonth(v7, *(v14 + 5), *(v14 + 15));
  if (*(v14 + 5) && !*(v14 + 2) && !*(v14 + 3) && !*(v14 + 4))
  {
    v8 += RelativeDate(v8, *(v14 + 5), *(v14 + 24), *(v14 + 13), *(v14 + 14));
  }

  if (v8 == -1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t difftm(_DWORD *a1, _DWORD *a2)
{
  v4 = a1[5] + 1899;
  v3 = a2[5] + 1899;
  return 86400 * (a1[7] - a2[7] + (v4 >> 2) - (v3 >> 2) - (v4 / 100 - v3 / 100) + ((v4 / 100) >> 2) - ((v3 / 100) >> 2) + 365 * (v4 - v3)) + 3600 * (a1[2] - a2[2]) + 60 * (a1[1] - a2[1]) + *a1 - *a2;
}

uint64_t nexttoken(char **a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
LABEL_2:
  while (isspace(**a1))
  {
    ++*a1;
  }

  if (**a1 == 40)
  {
    v15 = 0;
    while (1)
    {
      v2 = (*a1)++;
      v16 = *v2;
      if (!*v2)
      {
        break;
      }

      if (v16 == 40)
      {
        ++v15;
      }

      else if (v16 == 41)
      {
        --v15;
      }

      if (v15 <= 0)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

  else
  {
    v14 = *a1;
    v12 = 0;
    while (1)
    {
      v10 = 0;
      if (*v14)
      {
        if (isalnum(*v14) || (v10 = 0, *v14 == 46))
        {
          v10 = v12 < 0x3FuLL;
        }
      }

      if (!v10)
      {
        break;
      }

      if (*v14 != 46)
      {
        if (isupper(*v14))
        {
          v3 = tolower(*v14);
          v4 = v12++;
          __s[v4] = v3;
        }

        else
        {
          v5 = v12++;
          __s[v5] = *v14;
        }
      }

      ++v14;
    }

    __s[v12] = 0;
    for (i = &TimeWords; i[1]; i += 4)
    {
      v11 = *i;
      if (!*i)
      {
        v11 = strlen(i[1]);
      }

      if (strlen(__s) >= v11)
      {
        v6 = strlen(__s);
        if (!strncmp(i[1], __s, v6))
        {
          *a1 = v14;
          *a2 = i[3];
          return *(i + 4);
        }
      }
    }

    if (isdigit(**a1))
    {
      for (*a2 = 0; ; *a2 = 10 * *a2 + v17 - 48)
      {
        v7 = (*a1)++;
        v17 = *v7;
        if (!isdigit(*v7))
        {
          break;
        }
      }

      --*a1;
      return 267;
    }

    else
    {
      v8 = (*a1)++;
      return *v8;
    }
  }
}

uint64_t phrase(uint64_t a1)
{
  if (timephrase(a1))
  {
    return 1;
  }

  else if (zonephrase(a1))
  {
    return 1;
  }

  else if (datephrase(a1))
  {
    return 1;
  }

  else if (dayphrase(a1))
  {
    return 1;
  }

  else
  {
    if (!relunitphrase(a1))
    {
      if (**a1 == 267)
      {
        if (*(a1 + 24) && !*(a1 + 8) && !*(a1 + 32))
        {
          ++*(a1 + 8);
          *(a1 + 88) = *(*a1 + 8);
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) > 10000)
        {
          ++*(a1 + 8);
          ++*(a1 + 12);
          ++*(a1 + 16);
          *(a1 + 48) = *(*a1 + 8) % 100;
          *(a1 + 72) = *(*a1 + 8) / 100 % 100;
          *(a1 + 88) = *(*a1 + 8) / 10000;
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) < 24)
        {
          ++*(a1 + 24);
          *(a1 + 56) = *(*a1 + 8);
          *(a1 + 64) = 0;
          *(a1 + 80) = 0;
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) / 100 < 24 && *(*a1 + 8) % 100 < 60)
        {
          *(a1 + 56) = *(*a1 + 8) / 100;
          *(a1 + 64) = *(*a1 + 8) % 100;
          *(a1 + 80) = 0;
          *a1 += 16;
          return 1;
        }
      }

      return 0;
    }

    if (**a1 == 260)
    {
      *(a1 + 128) = -*(a1 + 128);
      *(a1 + 120) = -*(a1 + 120);
      *a1 += 16;
    }

    return 1;
  }
}

time_t Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v26 = 0x1F1F1E1F1E1F001FLL;
  v27 = 522067742;
  v16 = 0;
  i = 0;
  v14 = 0;
  memset(&__b, 0, sizeof(__b));
  if (v22 >= 69)
  {
    if (v22 < 100)
    {
      v22 += 1900;
    }
  }

  else
  {
    v22 += 2000;
  }

  v12 = 0;
  if (!(v22 % 4))
  {
    v11 = 1;
    if (!(v22 % 100))
    {
      v11 = v22 % 400 == 0;
    }

    v12 = v11;
  }

  if (v12)
  {
    v8 = 29;
  }

  else
  {
    v8 = 28;
  }

  BYTE1(v26) = v8;
  if (v22 < 1970)
  {
    return -1;
  }

  if (v22 >= 2038)
  {
    return -1;
  }

  if (v24 < 1)
  {
    return -1;
  }

  if (v24 > 12)
  {
    return -1;
  }

  if (v23 < 1)
  {
    return -1;
  }

  if (v23 > *(&v26 + --v24) || v21 < 0 || v21 > 23 || v20 < 0 || v20 > 59 || v19 < 0 || v19 > 59)
  {
    return -1;
  }

  v16 = v23 - 1;
  for (i = 0; i < v24; ++i)
  {
    v16 += *(&v26 + i);
  }

  for (i = 1970; i < v22; ++i)
  {
    if (i % 4)
    {
      v9 = 365;
    }

    else
    {
      v9 = 366;
    }

    v16 += v9;
  }

  v16 *= 86400;
  v16 += v18;
  v16 += 3600 * v21 + 60 * v20 + v19;
  v14 = localtime_r(&v16, &__b);
  if (!v17 || v17 == 2 && v14->tm_isdst)
  {
    v16 -= 3600;
  }

  return v16;
}

time_t RelativeMonth(time_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  memset(&__b, 0, sizeof(__b));
  if (!v10)
  {
    return 0;
  }

  v9 = localtime_r(&v12, &__b);
  v8 = v10 + 12 * (v9->tm_year + 1900) + v9->tm_mon;
  v7 = v8 / 12;
  v8 = v8 % 12 + 1;
  v5 = v12;
  v3 = Convert(v8, v9->tm_mday, v7, v9->tm_hour, v9->tm_min, v9->tm_sec, v11, 2);
  return DSTcorrect(v5, v3);
}

time_t RelativeDate(time_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v8 = 0;
  memset(&__b, 0, sizeof(__b));
  v9 = v15 - v14;
  v10 = gmtime_r(&v9, &__b);
  v8 = v15;
  v8 = v15 + 86400 * ((v11 - v10->tm_wday + 7) % 7);
  if (v12 > 0)
  {
    v6 = v12 - 1;
  }

  else
  {
    v6 = v12;
  }

  v8 += 604800 * v6;
  if (v13 == 2)
  {
    return DSTcorrect(v15, v8);
  }

  else
  {
    return v8 - v15;
  }
}

uint64_t timephrase(uint64_t a1)
{
  if (**a1 == 267 && *(*a1 + 16) == 58 && *(*a1 + 32) == 267 && *(*a1 + 48) == 58 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 64) = *(*a1 + 40);
    *(a1 + 80) = *(*a1 + 72);
    *a1 += 80;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 58 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 64) = *(*a1 + 40);
    *(a1 + 80) = 0;
    *a1 += 48;
  }

  else
  {
    if (**a1 != 267 || *(*a1 + 16) != 263)
    {
      return 0;
    }

    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    *a1 += 16;
  }

  if (**a1 == 263)
  {
    if (*(a1 + 56) == 12)
    {
      *(a1 + 56) = 0;
    }

    if (*(*a1 + 8) == 1)
    {
      *(a1 + 56) += 12;
    }

    *a1 += 16;
  }

  if (**a1 == 43 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 28);
    *(a1 + 96) = 1;
    *(a1 + 40) = -(3600 * (*(*a1 + 24) / 100) + 60 * (*(*a1 + 24) % 100));
    *a1 += 32;
  }

  if (**a1 == 45 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 28);
    *(a1 + 96) = 1;
    *(a1 + 40) = 3600 * (*(*a1 + 24) / 100) + 60 * (*(*a1 + 24) % 100);
    *a1 += 32;
  }

  return 1;
}

uint64_t zonephrase(uint64_t a1)
{
  if (**a1 != 268 || *(*a1 + 16) != 269)
  {
    if (**a1 == 268)
    {
      ++*(a1 + 28);
      *(a1 + 40) = *(*a1 + 8);
      *(a1 + 96) = 1;
      *a1 += 16;
      return 1;
    }

    if (**a1 != 262)
    {
      return 0;
    }
  }

  ++*(a1 + 28);
  *(a1 + 40) = *(*a1 + 8);
  *(a1 + 96) = 0;
  *a1 += 16;
  return 1;
}

uint64_t datephrase(uint64_t a1)
{
  if (**a1 == 267 && *(*a1 + 16) == 47 && *(*a1 + 32) == 267 && *(*a1 + 48) == 47 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    if (*(*a1 + 8) < 13)
    {
      if (*(*a1 + 72) < 13 && *(*a1 + 40) < 13)
      {
        *(a1 + 72) = *(*a1 + 8);
        *(a1 + 48) = *(*a1 + 40);
        *(a1 + 88) = *(*a1 + 72);
      }

      else
      {
        *(a1 + 72) = *(*a1 + 8);
        *(a1 + 48) = *(*a1 + 40);
        *(a1 + 88) = *(*a1 + 72);
      }
    }

    else
    {
      *(a1 + 88) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 48) = *(*a1 + 72);
    }

    *a1 += 80;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 47 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 45 && *(*a1 + 32) == 267 && *(*a1 + 48) == 45 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 88) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 40);
    *(a1 + 48) = *(*a1 + 72);
    *a1 += 80;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 45 && *(*a1 + 32) == 264 && *(*a1 + 48) == 45 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    if (*(*a1 + 8) <= 31)
    {
      *(a1 + 48) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 88) = *(*a1 + 72);
    }

    else
    {
      *(a1 + 88) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 48) = *(*a1 + 72);
    }

    *a1 += 80;
    return 1;
  }

  else if (**a1 == 264 && *(*a1 + 16) == 267 && *(*a1 + 32) == 44 && *(*a1 + 48) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 24);
    *(a1 + 88) = *(*a1 + 56);
    *a1 += 64;
    return 1;
  }

  else if (**a1 == 264 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 264 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 48) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 24);
    *(a1 + 88) = *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 264)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 48) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t dayphrase(uint64_t a1)
{
  if (**a1 == 261)
  {
    ++*(a1 + 20);
    *(a1 + 104) = 1;
    *(a1 + 112) = *(*a1 + 8);
    *a1 += 16;
    if (**a1 == 44)
    {
      *a1 += 16;
    }

    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 261)
  {
    ++*(a1 + 20);
    *(a1 + 104) = *(*a1 + 8);
    *(a1 + 112) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t relunitphrase(uint64_t a1)
{
  if (**a1 == 45 && *(*a1 + 16) == 267 && *(*a1 + 32) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) -= *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 43 && *(*a1 + 16) == 267 && *(*a1 + 32) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 8) * *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 45 && *(*a1 + 16) == 267 && *(*a1 + 32) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) -= *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 43 && *(*a1 + 16) == 267 && *(*a1 + 32) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 8) * *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 8);
    *a1 += 16;
    return 1;
  }

  else if (**a1 == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 8);
    *a1 += 16;
    return 1;
  }

  else
  {
    return 0;
  }
}

time_t DSTcorrect(time_t a1, time_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = localtime_r(&v8, &__b);
  v6 = (v4->tm_hour + 1) % 24;
  v4 = localtime_r(&v7, &__b);
  return v7 - v8 + 3600 * (v6 - (v4->tm_hour + 1) % 24);
}

void *archive_write_new()
{
  v2 = malloc_type_calloc(1uLL, 0x158uLL, 0x10F00405F4101F2uLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = -1329217314;
  *(v2 + 1) = 1;
  *(v2 + 1) = archive_write_vtable;
  *(v2 + 56) = 10240;
  *(v2 + 57) = -1;
  *(v2 + 22) = 1024;
  v1 = malloc_type_calloc(*(v2 + 22), 1uLL, 0x100004077774924uLL);
  if (v1)
  {
    *(v2 + 21) = v1;
    return v2;
  }

  else
  {
    free(v2);
    return 0;
  }
}

uint64_t archive_write_set_bytes_per_block(unsigned int *a1, unsigned int a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_bytes_per_block") == -30)
  {
    return -30;
  }

  else
  {
    a1[56] = a2;
    return 0;
  }
}

uint64_t archive_write_get_bytes_per_block(unsigned int *a1)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_get_bytes_per_block") == -30)
  {
    return -30;
  }

  else
  {
    return a1[56];
  }
}

uint64_t archive_write_set_bytes_in_last_block(unsigned int *a1, unsigned int a2)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_set_bytes_in_last_block") == -30)
  {
    return -30;
  }

  else
  {
    a1[57] = a2;
    return 0;
  }
}

uint64_t archive_write_get_bytes_in_last_block(unsigned int *a1)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_get_bytes_in_last_block") == -30)
  {
    return -30;
  }

  else
  {
    return a1[57];
  }
}

uint64_t archive_write_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_set_skip_file") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 144) = 1;
    *(a1 + 152) = a2;
    *(a1 + 160) = a3;
    return 0;
  }
}

void *__archive_write_allocate_filter(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10F0040906ABE4DuLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = a1;
  *(v2 + 25) = 1;
  if (*(a1 + 232))
  {
    *(*(a1 + 240) + 16) = v2;
  }

  else
  {
    *(a1 + 232) = v2;
  }

  *(a1 + 240) = v2;
  return v2;
}

uint64_t __archive_write_filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 100) == 2)
  {
    if (a3)
    {
      if (*(a1 + 40))
      {
        v3 = (*(a1 + 40))(a1, a2, a3);
        *a1 += a3;
        return v3;
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

  else
  {
    return -30;
  }
}

uint64_t __archive_write_nulls(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    while (v5)
    {
      if (v5 >= *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      else
      {
        v3 = v5;
      }

      v4 = __archive_write_output(a1, *(a1 + 168), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      v5 -= v3;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_open2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    *(a1 + 192) = a4;
    *(a1 + 184) = a3;
    *(a1 + 200) = a5;
    *(a1 + 208) = a6;
    *(a1 + 216) = a2;
    v10 = __archive_write_allocate_filter(a1);
    if (v10)
    {
      v10[4] = archive_write_client_open;
      v10[5] = archive_write_client_write;
      v10[7] = archive_write_client_close;
      v10[8] = archive_write_client_free;
      v9 = __archive_write_filters_open(a1);
      if (v9 >= -20)
      {
        *(a1 + 4) = 2;
        if (*(a1 + 264))
        {
          return (*(a1 + 264))(a1);
        }

        return v9;
      }

      else
      {
        v8 = __archive_write_filters_close(a1);
        __archive_write_filters_free(a1);
        if (v8 >= v9)
        {
          return v9;
        }

        else
        {
          return v8;
        }
      }
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_write_client_open(uint64_t a1)
{
  v6 = *(a1 + 8);
  *(a1 + 92) = archive_write_get_bytes_per_block(v6);
  *(a1 + 96) = archive_write_get_bytes_in_last_block(*(a1 + 8));
  size = *(a1 + 92);
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v5 && v4)
  {
    *v5 = size;
    *(v5 + 2) = v4;
    *(v5 + 3) = *(v5 + 2);
    *(v5 + 1) = *v5;
    *(a1 + 72) = v5;
    if (*(v6 + 184))
    {
      v2 = (*(v6 + 184))(*(a1 + 8), *(v6 + 216));
      if (v2)
      {
        free(*(v5 + 2));
        free(v5);
        *(a1 + 72) = 0;
      }

      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    free(v5);
    free(v4);
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for output buffering");
    return -30;
  }
}

uint64_t archive_write_client_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = *(a1 + 8);
  v12 = *(a1 + 72);
  v10 = a3;
  if (*v12)
  {
    if (v12[1] >= *v12 || (a3 <= v12[1] ? (v4 = a3) : (v4 = v12[1]), __memcpy_chk(), v12[3] += v4, v12[1] -= v4, a2 += v4, v10 -= v4, v12[1]))
    {
LABEL_20:
      while (v10 >= *v12)
      {
        v9 = (*(v13 + 192))(v13, *(v13 + 216), a2, *v12);
        if (v9 <= 0)
        {
          return -30;
        }

        a2 += v9;
        v10 -= v9;
      }

      if (v10 > 0)
      {
        __memcpy_chk();
        v12[3] += v10;
        v12[1] -= v10;
      }

      return 0;
    }

    else
    {
      v6 = v12[2];
      for (i = *v12; ; i -= v8)
      {
        if (!i)
        {
          v12[3] = v12[2];
          v12[1] = *v12;
          goto LABEL_20;
        }

        v8 = (*(v13 + 192))(v13, *(v13 + 216), v6, i);
        if (v8 <= 0)
        {
          return -30;
        }

        if (v8 > i)
        {
          break;
        }

        v6 += v8;
      }

      archive_set_error(v13, -1, "write overrun");
      return -30;
    }
  }

  else
  {
    while (v10 > 0)
    {
      v7 = (*(v13 + 192))(v13, *(v13 + 216), a2, v10);
      if (v7 <= 0)
      {
        return -30;
      }

      v10 -= v7;
      a2 += v7;
    }

    return 0;
  }
}

uint64_t archive_write_client_close(uint64_t a1)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 72);
  v2 = 0;
  if (*(v8 + 3) != *(v8 + 2))
  {
    v7 = *v8 - *(v8 + 1);
    if (*(v9 + 228) > 0)
    {
      v6 = *(v9 + 228) * ((v7 + *(v9 + 228) - 1) / *(v9 + 228));
    }

    else
    {
      v6 = *(v9 + 224);
    }

    if (v6 > *(v9 + 224))
    {
      v6 = *(v9 + 224);
    }

    if (v7 < v6)
    {
      __memset_chk();
      v7 = v6;
    }

    v3 = *(v8 + 2);
    for (i = v7; i; i -= v5)
    {
      v5 = (*(v9 + 192))(v9, *(v9 + 216), v3, i);
      if (v5 <= 0)
      {
        v2 = -30;
        break;
      }

      if (v5 > i)
      {
        archive_set_error(v9, -1, "write overrun");
        v2 = -30;
        break;
      }

      v3 += v5;
    }
  }

  if (*(v9 + 200))
  {
    (*(v9 + 200))(v9, *(v9 + 216));
  }

  free(*(v8 + 2));
  free(v8);
  *(a1 + 100) = 4;
  return v2;
}

uint64_t archive_write_client_free(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 208))
  {
    (*(v2 + 208))(v2, *(v2 + 216));
  }

  *(v2 + 216) = 0;
  if (*(v2 + 320))
  {
    strlen(*(v2 + 320));
    __memset_chk();
    free(*(v2 + 320));
    *(v2 + 320) = 0;
  }

  return 0;
}

uint64_t __archive_write_filters_close(uint64_t a1)
{
  v3 = 0;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 100) == 2)
    {
      if (*(i + 56))
      {
        v2 = (*(i + 56))(i);
        if (v2 < v3)
        {
          v3 = v2;
        }

        if (v2)
        {
          *(i + 100) = 0x8000;
        }

        else
        {
          *(i + 100) = 4;
        }
      }

      else
      {
        *(i + 100) = 4;
      }
    }
  }

  return v3;
}

void __archive_write_filters_free(uint64_t a1)
{
  v3 = 0;
  while (*(a1 + 232))
  {
    v1 = *(*(a1 + 232) + 16);
    if (*(*(a1 + 232) + 64))
    {
      v2 = (*(*(a1 + 232) + 64))(*(a1 + 232));
      if (v3 > v2)
      {
        v3 = v2;
      }
    }

    free(*(a1 + 232));
    *(a1 + 232) = v1;
  }

  *(a1 + 240) = 0;
}

uint64_t _archive_write_close(uint64_t a1)
{
  v4 = 0;
  if (__archive_check_magic(a1, -1329217314, 0xFFFF, "archive_write_close") == -30)
  {
    return -30;
  }

  else if (*(a1 + 4) == 1 || *(a1 + 4) == 32)
  {
    return 0;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 4) == 4 && *(a1 + 280))
    {
      v4 = (*(a1 + 280))(a1);
    }

    if (*(a1 + 304))
    {
      v2 = (*(a1 + 304))(a1);
      if (v2 < v4)
      {
        v4 = v2;
      }
    }

    v3 = __archive_write_filters_close(a1);
    if (v3 < v4)
    {
      v4 = v3;
    }

    if (*(a1 + 4) != 0x8000)
    {
      *(a1 + 4) = 32;
    }

    return v4;
  }
}

uint64_t _archive_write_free(uint64_t a1)
{
  v3 = 0;
  if (a1)
  {
    if (__archive_check_magic(a1, -1329217314, 0xFFFF, "archive_write_free") == -30)
    {
      return -30;
    }

    else
    {
      if (*(a1 + 4) != 0x8000)
      {
        v3 = archive_write_close(a1);
      }

      if (*(a1 + 312))
      {
        v2 = (*(a1 + 312))(a1);
        if (v2 < v3)
        {
          v3 = v2;
        }
      }

      __archive_write_filters_free(a1);
      free(*(a1 + 168));
      archive_string_free(a1 + 48);
      if (*(a1 + 320))
      {
        strlen(*(a1 + 320));
        __memset_chk();
        free(*(a1 + 320));
      }

      *a1 = 0;
      __archive_clean(a1);
      free(a1);
      return v3;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _archive_write_header(uint64_t a1, _DWORD *a2)
{
  if (__archive_check_magic(a1, -1329217314, 6, "archive_write_header") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 288))
    {
      v5 = archive_write_finish_entry(a1);
      if (v5 == -30)
      {
        *(a1 + 4) = 0x8000;
        return -30;
      }

      else if ((v5 & 0x80000000) == 0 || v5 == -20)
      {
        if (*(a1 + 144) && archive_entry_dev_is_set(a2) && archive_entry_ino_is_set(a2) && archive_entry_dev(a2) == *(a1 + 152) && archive_entry_ino64(a2) == *(a1 + 160))
        {
          archive_set_error(a1, 0, "Can't add archive to itself");
          return -25;
        }

        else
        {
          v3 = __archive_write_filters_flush(a1);
          if (v3 == -25)
          {
            return -25;
          }

          else if (v3 == -30)
          {
            *(a1 + 4) = 0x8000;
            return -30;
          }

          else
          {
            if (v3 < v5)
            {
              v5 = v3;
            }

            v4 = (*(a1 + 288))(a1, a2);
            if (v4 == -25)
            {
              return -25;
            }

            else if (v4 == -30)
            {
              *(a1 + 4) = 0x8000;
              return -30;
            }

            else
            {
              if (v4 < v5)
              {
                v5 = v4;
              }

              *(a1 + 4) = 4;
              return v5;
            }
          }
        }
      }

      else
      {
        return v5;
      }
    }

    else
    {
      archive_set_error(a1, -1, "Format must be set before you can write to an archive.");
      *(a1 + 4) = 0x8000;
      return -30;
    }
  }
}

uint64_t _archive_write_finish_entry(uint64_t a1)
{
  v2 = 0;
  if (__archive_check_magic(a1, -1329217314, 6, "archive_write_finish_entry") == -30)
  {
    return -30;
  }

  else
  {
    if ((*(a1 + 4) & 4) != 0 && *(a1 + 280))
    {
      v2 = (*(a1 + 280))(a1);
    }

    *(a1 + 4) = 2;
    return v2;
  }
}

uint64_t _archive_write_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 4, "archive_write_data") == -30)
  {
    return -30;
  }

  if (a3 > 0x7FFFFFFF)
  {
    a3 = 0x7FFFFFFFLL;
  }

  archive_clear_error(a1);
  return (*(a1 + 296))(a1, a2, a3);
}

uint64_t _archive_write_filter_count(uint64_t a1)
{
  v3 = *(a1 + 232);
  v2 = 0;
  while (v3)
  {
    ++v2;
    v3 = *(v3 + 16);
  }

  return v2;
}

uint64_t _archive_filter_bytes_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_code_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *(v4 + 88);
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_name_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *(v4 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t __archive_write_filters_flush(uint64_t a1)
{
  v3 = 0;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 48) && *i > 0)
    {
      v2 = (*(i + 48))(i);
      if (v2 < v3)
      {
        v3 = v2;
      }

      if (v2 < -20)
      {
        *(i + 100) = 0x8000;
      }
    }
  }

  return v3;
}

uint64_t filter_lookup(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = *(a1 + 232);
  if (a2 == -1)
  {
    return *(a1 + 240);
  }

  if (a2 < 0)
  {
    return 0;
  }

  while (1)
  {
    v3 = 0;
    if (v5 > 0)
    {
      v3 = v4 != 0;
    }

    if (!v3)
    {
      break;
    }

    v4 = *(v4 + 16);
    --v5;
  }

  return v4;
}

uint64_t __archive_write_open_filter(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 16))
  {
    v2 = __archive_write_open_filter(*(a1 + 16));
  }

  if (v2)
  {
    return v2;
  }

  else if (*(a1 + 100) == 1)
  {
    if (*(a1 + 32))
    {
      v3 = (*(a1 + 32))(a1);
      if (v3)
      {
        *(a1 + 100) = 0x8000;
      }

      else
      {
        *(a1 + 100) = 2;
      }

      return v3;
    }

    else
    {
      *(a1 + 100) = 2;
      return 0;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t archive_write_add_filter_zstd(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_zstd") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
    if (v2)
    {
      v3[9] = v2;
      v3[4] = archive_compressor_zstd_open;
      v3[3] = archive_compressor_zstd_options;
      v3[6] = archive_compressor_zstd_flush;
      v3[7] = archive_compressor_zstd_close;
      v3[8] = archive_compressor_zstd_free;
      *(v3 + 22) = 14;
      v3[10] = "zstd";
      *v2 = 3;
      *(v2 + 1) = 0;
      *(v2 + 2) = 0;
      v2[2] = __archive_write_program_allocate("zstd");
      if (v2[2])
      {
        archive_set_error(a1, -1, "Using external zstd program");
        return -20;
      }

      else
      {
        free(v2);
        archive_set_error(a1, 12, "Out of memory");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }
  }
}

uint64_t archive_compressor_zstd_open(uint64_t a1)
{
  v5 = a1;
  v4 = *(a1 + 72);
  memset(v3, 0, sizeof(v3));
  archive_strncat(v3, "zstd --no-check", 0xFuLL);
  if ((*v4 & 0x80000000) != 0)
  {
    archive_string_sprintf(v3, " --fast=%d", -*v4);
  }

  else
  {
    archive_string_sprintf(v3, " -%d", *v4);
  }

  if (*v4 > 19)
  {
    archive_strcat(v3, " --ultra");
  }

  if (*(v4 + 4))
  {
    archive_string_sprintf(v3, " --threads=%d", *(v4 + 4));
  }

  if (*(v4 + 8))
  {
    archive_string_sprintf(v3, " --long=%d", *(v4 + 8));
  }

  *(v5 + 40) = archive_compressor_zstd_write;
  v2 = __archive_write_program_open(v5, *(v4 + 16), v3[0]);
  archive_string_free(v3);
  return v2;
}

uint64_t archive_compressor_zstd_options(uint64_t a1, const char *a2, char *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    v8 = 0;
    if (string_to_number(v10, &v8))
    {
      return -20;
    }

    else
    {
      v7 = -99;
      v6 = 22;
      if (v8 >= -99 && v8 <= v6)
      {
        *v9 = v8;
        return 0;
      }

      else
      {
        return -20;
      }
    }
  }

  else if (!strcmp(v11, "threads"))
  {
    v5 = 0;
    if (string_to_number(v10, &v5))
    {
      return -20;
    }

    else if (v5 < 0 || v5 > 0x7FFFFFFF)
    {
      return -20;
    }

    else
    {
      v9[1] = v5;
      return 0;
    }
  }

  else if (!strcmp(v11, "long"))
  {
    v4 = 0;
    if (string_to_number(v10, &v4))
    {
      return -20;
    }

    else if (v4 >= 10 && v4 <= 31)
    {
      v9[2] = v4;
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_zstd_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[2]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t string_to_number(char *a1, intmax_t *a2)
{
  __nptr = a1;
  v5 = a2;
  v4 = 0;
  if (a1 && *__nptr)
  {
    v2 = strtoimax(__nptr, &v4, 10);
    *v5 = v2;
    if (v4 == __nptr || *v4 || *__error() == 84)
    {
      *v5 = 0;
      return -20;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t __archive_rb_tree_find_node(uint64_t *a1, uint64_t a2)
{
  v5 = *(a1[1] + 8);
  for (i = *a1; i; i = *(i + 8 * (v3 > 0)))
  {
    v3 = v5(i, a2);
    if (!v3)
    {
      return i;
    }
  }

  return 0;
}

uint64_t __archive_rb_tree_find_node_geq(uint64_t *a1, uint64_t a2)
{
  v6 = *(a1[1] + 8);
  v5 = *a1;
  v4 = 0;
  while (v5)
  {
    v3 = v6(v5, a2);
    if (!v3)
    {
      return v5;
    }

    if (v3 < 0)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (v3 > 0));
  }

  return v4;
}

uint64_t __archive_rb_tree_find_node_leq(uint64_t *a1, uint64_t a2)
{
  v6 = *(a1[1] + 8);
  v5 = *a1;
  v4 = 0;
  while (v5)
  {
    v3 = v6(v5, a2);
    if (!v3)
    {
      return v5;
    }

    if (v3 > 0)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (v3 > 0));
  }

  return v4;
}

uint64_t __archive_rb_tree_insert_node(uint64_t **a1, void *a2)
{
  v9 = *a1[1];
  v7 = *a1;
  v8 = a1;
  v6 = 0;
  while (v7)
  {
    v4 = v9(v7, a2);
    if (!v4)
    {
      return 0;
    }

    v8 = v7;
    v6 = v4 > 0;
    v7 = v7[v4 > 0];
  }

  a2[2] = v8 | a2[2] & 3;
  if (v6)
  {
    a2[2] |= 2uLL;
  }

  else
  {
    a2[2] &= ~2uLL;
  }

  if (v8 == a1)
  {
    a2[2] &= ~1uLL;
    v5 = 0;
  }

  else
  {
    a2[2] |= 1uLL;
    v3 = 0;
    if (v8)
    {
      v3 = (*(v8 + 16) & 1) != 0;
    }

    v5 = v3;
  }

  *a2 = *(v8 + 8 * v6);
  a2[1] = *(v8 + 8 * v6);
  *(v8 + 8 * v6) = a2;
  if (v5)
  {
    __archive_rb_tree_insert_rebalance(a1, a2);
  }

  return 1;
}

void *__archive_rb_tree_insert_rebalance(void *result, unint64_t a2)
{
  v7 = result;
  v6 = a2;
  v5 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v4 = *(v5 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v2 = v5 == *(v4 + 8);
    v3 = *(v4 + 8 * (v5 != *(v4 + 8)));
    if (!v3 || (*(v3 + 16) & 1) == 0)
    {
      break;
    }

    *(v3 + 16) &= ~1uLL;
    *(v5 + 16) &= ~1uLL;
    if (*result != v4)
    {
      *(v4 + 16) |= 1uLL;
      v6 = v4;
      v5 = *(v4 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      if (v5)
      {
        if (*(v5 + 16))
        {
          continue;
        }
      }
    }

    return result;
  }

  if (v6 == *(v5 + 8 * (v5 != *(v4 + 8))))
  {
    __archive_rb_tree_reparent_nodes(v5, v5 != *(v4 + 8));
  }

  result = __archive_rb_tree_reparent_nodes(v4, v2);
  *(*v7 + 16) &= ~1uLL;
  return result;
}

void *__archive_rb_tree_remove_node(uint64_t *a1, void *a2)
{
  if (a2 && (*a2 || a2[1]))
  {
    if (*a2 && a2[1])
    {
      v3 = __archive_rb_tree_iterate(a1, a2, (a2[2] & 2) == 0);
      return __archive_rb_tree_swap_prune_and_rebalance(a1, a2, v3);
    }

    else
    {
      return __archive_rb_tree_prune_blackred_branch(a2, *a2 == 0);
    }
  }

  else
  {
    if (!a2 || (v4 = 0, (a2[2] & 1) == 0))
    {
      v4 = *a1 != a2;
    }

    return __archive_rb_tree_prune_node(a1, a2, v4);
  }
}

void *__archive_rb_tree_prune_node(void *result, void *a2, int a3)
{
  v4 = a2[2] & 0xFFFFFFFFFFFFFFFCLL;
  v3 = (a2[2] & 2) != 0;
  *(v4 + 8 * ((a2[2] & 2) != 0)) = *a2;
  if (a3)
  {
    return __archive_rb_tree_removal_rebalance(result, v4, v3);
  }

  return result;
}

uint64_t __archive_rb_tree_prune_blackred_branch(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v2 = *(result + 8 * a2);
  *(v2 + 16) ^= (*(v2 + 16) ^ *(result + 16)) & 3;
  *(v3 + 8 * ((*(v2 + 16) & 2) != 0)) = v2;
  *(v2 + 16) = v3 | *(v2 + 16) & 3;
  return result;
}

unint64_t __archive_rb_tree_iterate(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = a2;
  v5 = a3 ^ 1;
  if (a2)
  {
    if (*(a2 + 8 * a3))
    {
        ;
      }

      return i;
    }

    else
    {
      while (1)
      {
        v4 = 0;
        if (*a1 != v6)
        {
          v4 = v6 != 0;
        }

        if (!v4)
        {
          break;
        }

        if (v5 == ((*(v6 + 16) & 2) != 0))
        {
          return *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        }

        v6 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      }

      return 0;
    }
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      while (*(v7 + 8 * a3))
      {
        v7 = *(v7 + 8 * a3);
      }

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

void *__archive_rb_tree_swap_prune_and_rebalance(void *result, uint64_t a2, unint64_t a3)
{
  v3 = (*(a3 + 16) & 2) != 0;
  v8 = (*(a3 + 16) & 2) == 0;
  v6 = *(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = 1;
  if (a3)
  {
    v4 = (*(a3 + 16) & 1) == 0;
  }

  v5 = v4;
  if (v6 == a2)
  {
    v7 = *(a3 + 8 * ((*(a3 + 16) & 2) != 0));
  }

  else
  {
    v7 = *(a3 + 8 * ((*(a3 + 16) & 2) == 0));
  }

  if (v7)
  {
    if (*(v7 + 16))
    {
      *(v7 + 16) &= ~1uLL;
      v5 = 0;
      if (v6 != a2)
      {
        *(v7 + 16) = v6 | *(v7 + 16) & 3;
        if (v3)
        {
          *(v7 + 16) |= 2uLL;
        }

        else
        {
          *(v7 + 16) &= ~2uLL;
        }
      }
    }
  }

  if (v6 == a2)
  {
    v6 = a3;
  }

  else
  {
    *(v6 + 8 * v3) = v7;
    *(a3 + 8 * v8) = *(a2 + 8 * v8);
    *(*(a3 + 8 * v8) + 16) = a3 | *(*(a3 + 8 * v8) + 16) & 3;
    v8 = v3;
  }

  *(a3 + 8 * v8) = *(a2 + 8 * v8);
  *(*(a3 + 8 * v8) + 16) = a3 | *(*(a3 + 8 * v8) + 16) & 3;
  *(a3 + 16) ^= (*(a3 + 16) ^ *(a2 + 16)) & 3;
  *(a3 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | *(a3 + 16) & 3;
  *((*(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL) + 8 * ((*(a3 + 16) & 2) != 0)) = a3;
  if (v5)
  {
    return __archive_rb_tree_removal_rebalance(result, v6, v3);
  }

  return result;
}

unint64_t __archive_rb_tree_reparent_nodes(unint64_t result, unsigned int a2)
{
  v5 = a2 ^ 1;
  v4 = *(result + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v3 = *(result + 8 * a2);
  if (v3)
  {
    *(v4 + 8 * ((*(result + 16) & 2) != 0)) = v3;
    *(result + 8 * a2) = *(v3 + 8 * v5);
    *(v3 + 8 * v5) = result;
    *(v3 + 16) = v4 | *(v3 + 16) & 3;
    *(result + 16) = v3 | *(result + 16) & 3;
    v2 = (*(v3 + 16) ^ *(result + 16)) & 3;
    *(v3 + 16) ^= v2;
    *(result + 16) ^= v2;
    if (v5)
    {
      *(result + 16) |= 2uLL;
    }

    else
    {
      *(result + 16) &= ~2uLL;
    }

    if (*(result + 8 * a2))
    {
      *(*(result + 8 * a2) + 16) = result | *(*(result + 8 * a2) + 16) & 3;
      if (a2)
      {
        *(*(result + 8 * a2) + 16) |= 2uLL;
      }

      else
      {
        *(*result + 16) &= ~2uLL;
      }
    }
  }

  return result;
}

void *__archive_rb_tree_removal_rebalance(void *result, unint64_t a2, unsigned int a3)
{
  while (1)
  {
    v3 = 1;
    if (*(a2 + 8 * a3))
    {
      v3 = (*(*(a2 + 8 * a3) + 16) & 1) == 0;
    }

    if (!v3)
    {
      return result;
    }

    v5 = a3 ^ 1;
    v4 = *(a2 + 8 * (a3 ^ 1));
    if (!v4)
    {
      return result;
    }

    if (a2 && (*(a2 + 16) & 1) != 0 || *v4 && (*(*v4 + 16) & 1) != 0 || v4[1] && (*(v4[1] + 16) & 1) != 0)
    {
      goto LABEL_16;
    }

    if (v4[2])
    {
      result = __archive_rb_tree_reparent_nodes(a2, v5);
      v4 = *(a2 + 8 * v5);
      if (!v4)
      {
        return result;
      }

LABEL_16:
      if (!a2 || (*(a2 + 16) & 1) == 0 || (v4[2] & 1) != 0 || *v4 && (*(*v4 + 16) & 1) != 0 || v4[1] && (*(v4[1] + 16) & 1) != 0)
      {
        if (!v4[v5] || (*(v4[v5] + 16) & 1) == 0)
        {
          result = __archive_rb_tree_reparent_nodes(v4, a3);
          v4 = *(a2 + 8 * v5);
        }

        if (v4[v5])
        {
          *(v4[v5] + 16) &= ~1uLL;
          return __archive_rb_tree_reparent_nodes(a2, v5);
        }
      }

      else
      {
        *(a2 + 16) &= ~1uLL;
        v4[2] |= 1uLL;
      }

      return result;
    }

    v4[2] |= 1uLL;
    if (*result == a2)
    {
      return result;
    }

    a3 = (*(a2 + 16) & 2) != 0;
    a2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  }
}

uint64_t lookup_gid(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  __s1 = a2;
  gr_gid = a3;
  v11 = 0;
  v10 = 0;
  v9 = a1;
  if (!a2 || !*__s1)
  {
    return gr_gid;
  }

  v11 = hash(__s1);
  v10 = v9 + 16 * (v11 % 0x7FuLL);
  if (*v10 && *(v10 + 8) == v11 && !strcmp(__s1, *v10))
  {
    return *(v10 + 12);
  }

  free(*v10);
  *v10 = strdup(__s1);
  *(v10 + 8) = v11;
  size = 128;
  v7 = &v16;
  v6 = 0;
  memset(&v5, 0, sizeof(v5));
  v4 = 0;
  while (1)
  {
    v4 = &v5;
    if (getgrnam_r(__s1, &v5, v7, size, &v4) != 34)
    {
      break;
    }

    size *= 2;
    free(v6);
    v6 = malloc_type_malloc(size, 0xB9E7F155uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
  }

  if (v4)
  {
    gr_gid = v4->gr_gid;
  }

  free(v6);
  *(v10 + 12) = gr_gid;
  return gr_gid;
}

uint64_t lookup_uid(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  pw_uid = a3;
  v11 = 0;
  v10 = 0;
  v9 = a1;
  if (!a2 || !*v13)
  {
    return pw_uid;
  }

  v11 = hash(v13);
  v10 = v9 + 16 * (v11 % 0x7FuLL);
  if (*v10 && *(v10 + 8) == v11 && !strcmp(v13, *v10))
  {
    return *(v10 + 12);
  }

  free(*v10);
  *v10 = strdup(v13);
  *(v10 + 8) = v11;
  size = 128;
  v7 = &v16;
  v6 = 0;
  memset(&__b, 0, sizeof(__b));
  p_b = 0;
  while (1)
  {
    p_b = &__b;
    if (getpwnam_r(v13, &__b, v7, size, &p_b) != 34)
    {
      break;
    }

    size *= 2;
    free(v6);
    v6 = malloc_type_malloc(size, 0xAD768C3AuLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
  }

  if (p_b)
  {
    pw_uid = p_b->pw_uid;
  }

  free(v6);
  *(v10 + 12) = pw_uid;
  return pw_uid;
}

uint64_t hash(char *a1)
{
  v3 = 0;
  while (*a1)
  {
    v1 = a1++;
    v3 = *v1 + 16 * v3;
    if ((v3 & 0xF0000000) != 0)
    {
      v3 = (v3 ^ ((v3 & 0xF0000000) >> 24)) & 0xFFFFFFF;
    }
  }

  return v3;
}

uint64_t archive_write_add_filter_lz4(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lz4") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200402F088779uLL);
    if (v2)
    {
      *v2 = 1;
      *(v2 + 2) = *(v2 + 2) & 0xFFFD | 2;
      *(v2 + 2) = *(v2 + 2) & 0xFFFB | 4;
      *(v2 + 2) &= ~8u;
      *(v2 + 2) &= ~0x10u;
      *(v2 + 2) = *(v2 + 2) & 0xFFDF | 0x20;
      *(v2 + 2) &= ~0x40u;
      *(v2 + 2) = *(v2 + 2) & 0xFC7F | 0x380;
      v3[9] = v2;
      v3[3] = archive_filter_lz4_options;
      v3[7] = archive_filter_lz4_close;
      v3[8] = archive_filter_lz4_free;
      v3[4] = archive_filter_lz4_open;
      *(v3 + 22) = 13;
      v3[10] = "lz4";
      v2[1] = __archive_write_program_allocate("lz4");
      if (v2[1])
      {
        *v2 = 0;
        archive_set_error(a1, -1, "Using external lz4 program");
        return -20;
      }

      else
      {
        free(v2);
        archive_set_error(a1, 12, "Out of memory");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }
  }
}

uint64_t archive_filter_lz4_options(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && (v4 = *a3 - 48, v4 >= 1) && v4 <= 9 && !a3[1])
    {
      if (v4 < 3)
      {
        *v5 = v4;
        return 0;
      }

      else
      {
        archive_set_error(*(a1 + 8), 22, "High compression not included in this build");
        return -30;
      }
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "stream-checksum"))
  {
    *(v5 + 4) = *(v5 + 4) & 0xFFDF | (32 * (a3 != 0));
    return 0;
  }

  else if (!strcmp(a2, "block-checksum"))
  {
    *(v5 + 4) = *(v5 + 4) & 0xFFF7 | (8 * (a3 != 0));
    return 0;
  }

  else if (!strcmp(a2, "block-size"))
  {
    if (a3 && *a3 >= 52 && *a3 <= 55 && !a3[1])
    {
      *(v5 + 4) = *(v5 + 4) & 0xFC7F | (((*a3 - 48) & 7) << 7);
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "block-dependence"))
  {
    *(v5 + 4) = *(v5 + 4) & 0xFFFB | (4 * (a3 == 0));
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_filter_lz4_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[1]);
  free(v2);
  return 0;
}

uint64_t archive_filter_lz4_open(uint64_t a1)
{
  v5 = a1;
  v4 = *(a1 + 72);
  memset(v3, 0, sizeof(v3));
  archive_strncat(v3, "lz4 -z -q -q", 0xCuLL);
  if (*v4 > 0)
  {
    archive_strcat(v3, " -");
    archive_strappend_char(v3, *v4 + 48);
  }

  archive_strcat(v3, " -B");
  archive_strappend_char(v3, ((*(v4 + 4) >> 7) & 7) + 48);
  if ((*(v4 + 4) & 8) != 0)
  {
    archive_strcat(v3, " -BX");
  }

  if ((*(v4 + 4) & 0x20) == 0)
  {
    archive_strcat(v3, " --no-frame-crc");
  }

  if ((*(v4 + 4) & 4) == 0)
  {
    archive_strcat(v3, " -BD");
  }

  *(v5 + 40) = archive_filter_lz4_write;
  v2 = __archive_write_program_open(v5, *(v4 + 8), v3[0]);
  archive_string_free(v3);
  return v2;
}

uint64_t archive_write_open_fd(_DWORD *a1, int a2)
{
  v3 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (v3)
  {
    *v3 = a2;
    return archive_write_open2(a1, v3, file_open_0, file_write, 0, file_free_2);
  }

  else
  {
    archive_set_error(a1, 12, "No memory");
    return -30;
  }
}

uint64_t file_open_0(unsigned int *a1, int *a2)
{
  v8 = a1;
  v7 = a2;
  memset(&__b, 0, sizeof(__b));
  v6 = v7;
  if (fstat(*v7, &__b))
  {
    v4 = v8;
    v2 = __error();
    archive_set_error(v4, *v2, "Couldn't stat fd %d", *v6);
    return -30;
  }

  else
  {
    if ((__b.st_mode & 0xF000) == 0x8000)
    {
      archive_write_set_skip_file(v8, __b.st_dev, __b.st_ino);
    }

    if ((archive_write_get_bytes_in_last_block(v8) & 0x80000000) != 0)
    {
      if ((__b.st_mode & 0xF000) == 0x2000 || (__b.st_mode & 0xF000) == 0x6000 || (__b.st_mode & 0xF000) == 0x1000 || *v6 == 1)
      {
        archive_write_set_bytes_in_last_block(v8, 0);
      }

      else
      {
        archive_write_set_bytes_in_last_block(v8, 1u);
      }
    }

    return 0;
  }
}

ssize_t file_write(_DWORD *a1, int *a2, const void *a3, size_t a4)
{
  while (1)
  {
    v6 = write(*a2, a3, a4);
    if (v6 > 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error");
      return -1;
    }
  }

  return v6;
}

uint64_t file_free_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

uint64_t archive_write_add_filter_bzip2(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_bzip2") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x109004012F2E243uLL);
    if (v2)
    {
      *v2 = 9;
      v3[9] = v2;
      v3[3] = archive_compressor_bzip2_options;
      v3[7] = archive_compressor_bzip2_close;
      v3[8] = archive_compressor_bzip2_free;
      v3[4] = archive_compressor_bzip2_open;
      *(v3 + 22) = 2;
      v3[10] = "bzip2";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }
  }
}

uint64_t archive_compressor_bzip2_options(uint64_t a1, const char *a2, char *a3)
{
  v4 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *v4 = *a3 - 48;
      if (*v4 < 1)
      {
        *v4 = 1;
      }

      return 0;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_bzip2_close(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = drive_compressor_0(a1, v3, 1);
  if (!v2)
  {
    v2 = __archive_write_filter(*(a1 + 16), *(v3 + 96), *(v3 + 104) - *(v3 + 40));
  }

  if (BZ2_bzCompressEnd((v3 + 8)))
  {
    archive_set_error(*(a1 + 8), 22, "Failed to clean up compressor");
    return -30;
  }

  return v2;
}

uint64_t archive_compressor_bzip2_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[12]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t archive_compressor_bzip2_open(uint64_t a1)
{
  v5 = *(a1 + 72);
  if (*(v5 + 96))
  {
    goto LABEL_9;
  }

  v3 = 0x10000;
  if (**(a1 + 8) == -1329217314)
  {
    v2 = archive_write_get_bytes_per_block(*(a1 + 8));
    if (v2 <= 0x10000)
    {
      if (v2)
      {
        v3 = 0x10000 - 0x10000 % v2;
      }
    }

    else
    {
      v3 = v2;
    }
  }

  *(v5 + 104) = v3;
  *(v5 + 96) = malloc_type_malloc(*(v5 + 104), 0x100004077774924uLL);
  if (*(v5 + 96))
  {
LABEL_9:
    __memset_chk();
    *(v5 + 32) = *(v5 + 96);
    *(v5 + 40) = *(v5 + 104);
    *(a1 + 40) = archive_compressor_bzip2_write;
    v4 = BZ2_bzCompressInit((v5 + 8), *v5, 0, 30);
    if (v4)
    {
      archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library");
      switch(v4)
      {
        case -9:
          archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library: mis-compiled library");
          break;
        case -3:
          archive_set_error(*(a1 + 8), 12, "Internal error initializing compression library: out of memory");
          break;
        case -2:
          archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library: invalid setup parameter");
          break;
      }

      return -30;
    }

    else
    {
      *(a1 + 72) = v5;
      return 0;
    }
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for compression buffer");
    return -30;
  }
}

uint64_t archive_compressor_bzip2_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  *(v4 + 88) += a3;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  if (drive_compressor_0(a1, v4, 0))
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t drive_compressor_0(uint64_t a1, uint64_t a2, int a3)
{
  do
  {
    while (1)
    {
      if (!*(a2 + 40))
      {
        if (__archive_write_filter(*(a1 + 16), *(a2 + 96), *(a2 + 104)))
        {
          return -30;
        }

        *(a2 + 32) = *(a2 + 96);
        *(a2 + 40) = *(a2 + 104);
      }

      if (!a3 && !*(a2 + 16))
      {
        return 0;
      }

      v3 = a3 ? 2 : 0;
      v5 = BZ2_bzCompress((a2 + 8), v3);
      if (v5 != 1)
      {
        break;
      }

      if (!a3 && !*(a2 + 16))
      {
        return 0;
      }
    }
  }

  while (v5 == 3);
  if (v5 == 4)
  {
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), 22, "Bzip2 compression failed; BZ2_bzCompress() returned %d", v5);
    return -30;
  }
}

uint64_t archive_write_add_filter_gzip(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_gzip") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00405CE5B617uLL);
    if (v2)
    {
      v3[9] = v2;
      v3[4] = archive_compressor_gzip_open;
      v3[3] = archive_compressor_gzip_options;
      v3[7] = archive_compressor_gzip_close;
      v3[8] = archive_compressor_gzip_free;
      *(v3 + 22) = 1;
      v3[10] = "gzip";
      *v2 = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }
  }
}

uint64_t archive_compressor_gzip_open(uint64_t a1)
{
  v6 = *(a1 + 72);
  if (*(v6 + 128))
  {
    goto LABEL_9;
  }

  v4 = 0x10000;
  if (**(a1 + 8) == -1329217314)
  {
    v3 = archive_write_get_bytes_per_block(*(a1 + 8));
    if (v3 <= 0x10000)
    {
      if (v3)
      {
        v4 = 0x10000 - 0x10000 % v3;
      }
    }

    else
    {
      v4 = v3;
    }
  }

  *(v6 + 136) = v4;
  *(v6 + 128) = malloc_type_malloc(*(v6 + 136), 0x100004077774924uLL);
  if (*(v6 + 128))
  {
LABEL_9:
    *(v6 + 144) = crc32(0, 0, 0);
    *(v6 + 32) = *(v6 + 128);
    *(v6 + 40) = *(v6 + 136);
    **(v6 + 128) = 31;
    *(*(v6 + 128) + 1) = -117;
    *(*(v6 + 128) + 2) = 8;
    *(*(v6 + 128) + 3) = 0;
    if ((*(v6 + 4) & 0x80000000) != 0)
    {
      __memset_chk();
    }

    else
    {
      v2 = time(0);
      *(*(v6 + 128) + 4) = v2;
      *(*(v6 + 128) + 5) = v2 >> 8;
      *(*(v6 + 128) + 7) = HIBYTE(v2);
    }

    if (*v6 == 9)
    {
      *(*(v6 + 128) + 8) = 2;
    }

    else if (*v6 == 1)
    {
      *(*(v6 + 128) + 8) = 4;
    }

    else
    {
      *(*(v6 + 128) + 8) = 0;
    }

    *(*(v6 + 128) + 9) = 3;
    *(v6 + 32) += 10;
    *(v6 + 40) -= 10;
    *(a1 + 40) = archive_compressor_gzip_write;
    v5 = deflateInit2_((v6 + 8), *v6, 8, -15, 8, 0, "1.2.12", 112);
    if (v5)
    {
      archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library");
      switch(v5)
      {
        case -6:
          archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library: invalid library version");
          break;
        case -4:
          archive_set_error(*(a1 + 8), 12, "Internal error initializing compression library");
          break;
        case -2:
          archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library: invalid setup parameter");
          break;
      }

      return -30;
    }

    else
    {
      *(a1 + 72) = v6;
      return 0;
    }
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for compression buffer");
    return -30;
  }
}

uint64_t archive_compressor_gzip_options(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *v5 = *a3 - 48;
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "timestamp"))
  {
    if (a3)
    {
      v3 = 1;
    }

    else
    {
      v3 = -1;
    }

    v5[1] = v3;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_gzip_close(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v2 = drive_compressor_1(a1, v3, 1);
  if (!v2)
  {
    v2 = __archive_write_filter(*(a1 + 16), *(v3 + 128), *(v3 + 136) - *(v3 + 40));
  }

  if (!v2)
  {
    v5[0] = *(v3 + 144);
    v5[1] = BYTE1(*(v3 + 144));
    v5[2] = BYTE2(*(v3 + 144));
    v5[3] = BYTE3(*(v3 + 144));
    v6 = *(v3 + 120);
    v7 = BYTE2(*(v3 + 120));
    v8 = BYTE3(*(v3 + 120));
    v2 = __archive_write_filter(*(a1 + 16), v5, 8);
  }

  if (deflateEnd((v3 + 8)))
  {
    archive_set_error(*(a1 + 8), -1, "Failed to clean up compressor");
    return -30;
  }

  return v2;
}

uint64_t archive_compressor_gzip_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[16]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t archive_compressor_gzip_write(uint64_t a1, const Bytef *a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  *(v5 + 144) = crc32(*(v5 + 144), a2, a3);
  *(v5 + 120) += a3;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  v4 = drive_compressor_1(a1, v5, 0);
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t drive_compressor_1(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    if (!*(a2 + 40))
    {
      if (__archive_write_filter(*(a1 + 16), *(a2 + 128), *(a2 + 136)))
      {
        return -30;
      }

      *(a2 + 32) = *(a2 + 128);
      *(a2 + 40) = *(a2 + 136);
    }

    if (!a3 && !*(a2 + 16))
    {
      return 0;
    }

    v3 = a3 ? 4 : 0;
    v5 = deflate((a2 + 8), v3);
    if (v5)
    {
      break;
    }

    if (!a3 && !*(a2 + 16))
    {
      return 0;
    }
  }

  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), -1, "GZip compression failed: deflate() call returned status %d", v5);
    return -30;
  }
}

uint64_t archive_write_open_FILE(_DWORD *a1, uint64_t a2)
{
  v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v3)
  {
    *v3 = a2;
    return archive_write_open2(a1, v3, file_open_1, file_write_0, 0, file_free_3);
  }

  else
  {
    archive_set_error(a1, 12, "No memory");
    return -30;
  }
}

size_t file_write_0(_DWORD *a1, FILE **a2, const void *a3, size_t a4)
{
  while (1)
  {
    v6 = fwrite(a3, 1uLL, a4, *a2);
    if (v6)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error");
      return -1;
    }
  }

  return v6;
}

uint64_t file_free_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

uint64_t archive_write_open_filename(_DWORD *a1, char *a2)
{
  if (a2 && *a2)
  {
    return open_filename(a1, 1, a2);
  }

  else
  {
    return archive_write_open_fd(a1, 1);
  }
}

uint64_t open_filename(_DWORD *a1, int a2, char *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x70uLL, 0x1010040D4C8CDB9uLL);
  if (!v5)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v4 = archive_mstring_copy_mbs((v5 + 2), a3);
  }

  else
  {
    v4 = archive_mstring_copy_wcs((v5 + 2), a3);
  }

  if ((v4 & 0x80000000) == 0)
  {
    *v5 = -1;
    return archive_write_open2(a1, v5, file_open_2, file_write_1, file_close_1, file_free_4);
  }

  if (*__error() == 12)
  {
LABEL_2:
    archive_set_error(a1, 12, "No memory");
    return -30;
  }

  else
  {
    if (a2)
    {
      archive_set_error(a1, -1, "Can't convert '%s' to WCS", a3);
    }

    else
    {
      archive_set_error(a1, -1, "Can't convert '%S' to MBS", a3);
    }

    return -25;
  }
}

uint64_t archive_write_open_filename_w(_DWORD *a1, char *a2)
{
  if (a2 && *a2)
  {
    return open_filename(a1, 0, a2);
  }

  else
  {
    return archive_write_open_fd(a1, 1);
  }
}

uint64_t file_open_2(unsigned int *a1, int *a2)
{
  v22 = a1;
  v21 = a2;
  memset(&__b, 0, sizeof(__b));
  v19 = v21;
  v20 = 16778753;
  v16 = 0;
  v17 = 0;
  if (archive_mstring_get_mbs(v22, (v21 + 2), &v16))
  {
    if (*__error() == 12)
    {
      v15 = v22;
      v2 = __error();
      archive_set_error(v15, *v2, "No memory");
    }

    else
    {
      archive_mstring_get_wcs(v22, (v19 + 2), &v17);
      v14 = v22;
      v3 = __error();
      archive_set_error(v14, *v3, "Can't convert '%S' to MBS", v17);
    }

    return -30;
  }

  else
  {
    v4 = open(v16, v20, 438);
    *v19 = v4;
    __archive_ensure_cloexec_flag(*v19);
    if (*v19 < 0)
    {
      if (v16)
      {
        v13 = v22;
        v5 = __error();
        archive_set_error(v13, *v5, "Failed to open '%s'", v16);
      }

      else
      {
        v12 = v22;
        v6 = __error();
        archive_set_error(v12, *v6, "Failed to open '%S'", v17);
      }

      return -30;
    }

    else if (fstat(*v19, &__b))
    {
      if (v16)
      {
        v11 = v22;
        v7 = __error();
        archive_set_error(v11, *v7, "Couldn't stat '%s'", v16);
      }

      else
      {
        v10 = v22;
        v8 = __error();
        archive_set_error(v10, *v8, "Couldn't stat '%S'", v17);
      }

      return -30;
    }

    else
    {
      if ((archive_write_get_bytes_in_last_block(v22) & 0x80000000) != 0)
      {
        if ((__b.st_mode & 0xF000) == 0x2000 || (__b.st_mode & 0xF000) == 0x6000 || (__b.st_mode & 0xF000) == 0x1000)
        {
          archive_write_set_bytes_in_last_block(v22, 0);
        }

        else
        {
          archive_write_set_bytes_in_last_block(v22, 1u);
        }
      }

      if ((__b.st_mode & 0xF000) == 0x8000)
      {
        archive_write_set_skip_file(v22, __b.st_dev, __b.st_ino);
      }

      return 0;
    }
  }
}

ssize_t file_write_1(_DWORD *a1, int *a2, const void *a3, size_t a4)
{
  while (1)
  {
    v6 = write(*a2, a3, a4);
    if (v6 > 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error");
      return -1;
    }
  }

  return v6;
}

uint64_t file_close_1(uint64_t a1, int *a2)
{
  if (a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
    }

    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t file_free_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    archive_mstring_clean(a2 + 8);
    free(a2);
  }

  return 0;
}

uint64_t archive_write_open_memory(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  if (v5)
  {
    v5[3] = a2;
    v5[1] = a3;
    v5[2] = a4;
    return archive_write_open2(a1, v5, memory_write_open, memory_write, 0, memory_write_free);
  }

  else
  {
    archive_set_error(a1, 12, "No memory");
    return -30;
  }
}

uint64_t memory_write_open(unsigned int *a1, uint64_t a2)
{
  *a2 = 0;
  if (*(a2 + 16))
  {
    **(a2 + 16) = *a2;
  }

  if (archive_write_get_bytes_in_last_block(a1) == -1)
  {
    archive_write_set_bytes_in_last_block(a1, 1u);
  }

  return 0;
}

uint64_t memory_write(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a2 + a4) > *(a2 + 8))
  {
    archive_set_error(a1, 12, "Buffer exhausted");
    return -30;
  }

  else
  {
    __memcpy_chk();
    *a2 += a4;
    if (*(a2 + 16))
    {
      **(a2 + 16) = *a2;
    }

    return a4;
  }
}

uint64_t memory_write_free(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

char *get_c_string(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  count = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (count == -1)
  {
    return 0;
  }

  buffer = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  if (!buffer)
  {
    return 0;
  }

  if (CFStringGetCString(a1, buffer, count, 0x8000100u))
  {
    return buffer;
  }

  free(buffer);
  return 0;
}

uint64_t archive_write_set_format(_DWORD *a1, int a2)
{
  for (i = 0; *(&codes + 4 * i); ++i)
  {
    if (a2 == *(&codes + 4 * i))
    {
      return (*(&codes + 2 * i + 1))(a1);
    }
  }

  archive_set_error(a1, 22, "No such format");
  return -30;
}

_DWORD *__archive_write_entry_filetype_unsupported(_DWORD *a1, void *a2, const char *a3)
{
  *&v7[8] = 0;
  *v7 = archive_entry_filetype(a2);
  switch(*v7)
  {
    case 0x1000:
      *&v7[4] = "named pipes";
      break;
    case 0x2000:
      *&v7[4] = "character devices";
      break;
    case 0x4000:
      *&v7[4] = "directories";
      break;
    case 0x6000:
      *&v7[4] = "block devices";
      break;
    case 0xA000:
      *&v7[4] = "symbolic links";
      break;
    case 0xC000:
      *&v7[4] = "sockets";
      break;
  }

  if (*&v7[4])
  {
    v3 = archive_entry_pathname(a2);
    return archive_set_error(a1, 79, "%s: %s format cannot archive %s", v3, a3, *&v7[4]);
  }

  else
  {
    v6 = archive_entry_pathname(a2);
    v5 = archive_entry_mode(a2);
    return archive_set_error(a1, 79, "%s: %s format cannot archive files with mode 0%lo", v6, a3, v5);
  }
}

uint64_t archive_write_set_format_ar_bsd(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ar_bsd") == -30)
  {
    return -30;
  }

  else
  {
    v2 = archive_write_set_format_ar(a1);
    if (!v2)
    {
      *(a1 + 16) = 458754;
      *(a1 + 24) = "ar (BSD)";
    }

    return v2;
  }
}

uint64_t archive_write_set_format_ar(uint64_t a1)
{
  if (*(a1 + 312))
  {
    (*(a1 + 312))(a1);
  }

  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407E53D9D1uLL);
  if (v2)
  {
    *(a1 + 248) = v2;
    *(a1 + 256) = "ar";
    *(a1 + 288) = archive_write_ar_header;
    *(a1 + 296) = archive_write_ar_data;
    *(a1 + 304) = archive_write_ar_close;
    *(a1 + 312) = archive_write_ar_free;
    *(a1 + 280) = archive_write_ar_finish_entry;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate ar data");
    return -30;
  }
}

uint64_t archive_write_set_format_ar_svr4(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ar_svr4") == -30)
  {
    return -30;
  }

  else
  {
    v2 = archive_write_set_format_ar(a1);
    if (!v2)
    {
      *(a1 + 16) = 458753;
      *(a1 + 24) = "ar (GNU/SVR4)";
    }

    return v2;
  }
}

uint64_t archive_write_ar_header(uint64_t a1, void *a2)
{
  __b[8] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v13 = *(a1 + 248);
  *(v13 + 16) = 0;
  __s = 0;
  v10 = archive_entry_size(a2);
  __s1 = archive_entry_pathname(a2);
  if (!__s1 || !*__s1)
  {
    archive_set_error(a1, 22, "Invalid filename");
    return -20;
  }

  if (!*(v13 + 24))
  {
    __archive_write_output(a1, "!<arch>\n", 8);
    *(v13 + 24) = 1;
  }

  memset(__b, 32, 0x3CuLL);
  if (!strcmp(__s1, "/"))
  {
    LOBYTE(__b[0]) = 47;
LABEL_35:
    v4 = archive_entry_mtime(a2);
    if (format_decimal(v4, &__b[2], 12))
    {
      archive_set_error(a1, 34, "File modification time too large");
      return -20;
    }

    v5 = archive_entry_uid(a2);
    if (format_decimal(v5, &__b[3] + 4, 6))
    {
      archive_set_error(a1, 34, "Numeric user ID too large");
      return -20;
    }

    v6 = archive_entry_gid(a2);
    if (format_decimal(v6, &__b[4] + 2, 6))
    {
      archive_set_error(a1, 34, "Numeric group ID too large");
      return -20;
    }

    v7 = archive_entry_mode(a2);
    if (format_octal_1(v7, &__b[5], 8))
    {
      archive_set_error(a1, 34, "Numeric mode too large");
      return -20;
    }

    if (__s && archive_entry_filetype(a2) != 0x8000)
    {
      archive_set_error(a1, 22, "Regular file required for non-pseudo member");
      return -20;
    }

    goto LABEL_46;
  }

  if (!strcmp(__s1, "/SYM64/"))
  {
    qmemcpy(__b, "/SYM64/", 7);
    goto LABEL_35;
  }

  if (!strcmp(__s1, "__.SYMDEF"))
  {
    qmemcpy(__b, "__.SYMDEF", 9);
    goto LABEL_35;
  }

  if (strcmp(__s1, "//"))
  {
    __s = ar_basename(__s1);
    if (!__s)
    {
      archive_set_error(a1, 22, "Invalid filename");
      return -20;
    }

    if (*(a1 + 16) == 458753)
    {
      if (strlen(__s) > 0xF)
      {
        if (*(v13 + 20) <= 0)
        {
          archive_set_error(a1, 22, "Can't find string table");
          return -20;
        }

        v2 = strlen(__s);
        __s2 = malloc_type_malloc(v2 + 3, 0x100004077774924uLL);
        if (!__s2)
        {
          archive_set_error(a1, 12, "Can't allocate filename buffer");
          return -30;
        }

        strlen(__s);
        __memcpy_chk();
        strlen(__s);
        __strcpy_chk();
        v15 = strstr(*(v13 + 32), __s2);
        free(__s2);
        if (!v15)
        {
          archive_set_error(a1, 22, "Invalid string table");
          return -20;
        }

        LOBYTE(__b[0]) = 47;
        if (format_decimal(&v15[-*(v13 + 32)], __b + 1, 15))
        {
          archive_set_error(a1, 34, "string table offset too large");
          return -20;
        }
      }

      else
      {
        strlen(__s);
        __memcpy_chk();
        *(__b + strlen(__s)) = 47;
      }
    }

    else if (*(a1 + 16) == 458754)
    {
      if (strlen(__s) > 0x10 || strchr(__s, 32))
      {
        qmemcpy(__b, "#1/", 3);
        v3 = strlen(__s);
        if (format_decimal(v3, __b + 3, 13))
        {
          archive_set_error(a1, 34, "File name too long");
          return -20;
        }

        v16 = 1;
        v10 += strlen(__s);
      }

      else
      {
        strlen(__s);
        __memcpy_chk();
        *(__b + strlen(__s)) = 32;
      }
    }

    goto LABEL_35;
  }

  *(v13 + 16) = 1;
  LOWORD(__b[0]) = 12079;
LABEL_46:
  if (format_decimal(v10, &__b[6], 10))
  {
    archive_set_error(a1, 34, "File size out of range");
    return -20;
  }

  else
  {
    v17 = __archive_write_output(a1, __b, 60);
    if (!v17)
    {
      *v13 = v10;
      *(v13 + 8) = *v13 % 2uLL;
      if (v16 > 0)
      {
        v8 = strlen(__s);
        v18 = __archive_write_output(a1, __s, v8);
        if (v18)
        {
          return v18;
        }

        *v13 -= strlen(__s);
      }

      return 0;
    }

    return v17;
  }
}

uint64_t archive_write_ar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  if (*(v5 + 16) > 0)
  {
    if (*(v5 + 20) > 0)
    {
      archive_set_error(a1, 22, "More than one string tables exist");
      return -20;
    }

    *(v5 + 32) = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    if (!*(v5 + 32))
    {
      archive_set_error(a1, 12, "Can't allocate strtab buffer");
      return -30;
    }

    __memcpy_chk();
    *(*(v5 + 32) + v6) = 0;
    *(v5 + 20) = 1;
  }

  v4 = __archive_write_output(a1, a2, v6);
  if (v4)
  {
    return v4;
  }

  *v5 -= v6;
  return v6;
}

uint64_t archive_write_ar_close(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (*(v2 + 24))
  {
    return 0;
  }

  else
  {
    *(v2 + 24) = 1;
    return __archive_write_output(a1, "!<arch>\n", 8);
  }
}

uint64_t archive_write_ar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    if (*(v2 + 5) > 0)
    {
      free(v2[4]);
      v2[4] = 0;
    }

    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_ar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (*v2)
  {
    archive_set_error(a1, -1, "Entry remaining bytes larger than 0");
    return -20;
  }

  else if (v2[1])
  {
    if (v2[1] == 1)
    {
      return __archive_write_output(a1, "\n", 1);
    }

    else
    {
      archive_set_error(a1, -1, "Padding wrong size: %ju should be 1 or 0", v2[1]);
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

const char *ar_basename(const char *a1)
{
  v4 = &a1[strlen(a1) - 1];
  if (*v4 == 47)
  {
    return 0;
  }

  for (i = v4; ; --i)
  {
    v2 = 0;
    if (i > a1)
    {
      v2 = *(i - 1) != 47;
    }

    if (!v2)
    {
      break;
    }
  }

  return i;
}

uint64_t format_decimal(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v12--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v14++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v15 = &a2[a3];
    do
    {
      *--v15 = v17 % 10 + 48;
      v17 /= 10;
      --v13;
      v10 = 0;
      if (v13 > 0)
      {
        v10 = v17 > 0;
      }
    }

    while (v10);
    if (v17)
    {
      while (1)
      {
        v7 = v12--;
        if (v7 <= 0)
        {
          break;
        }

        v8 = v15++;
        *v8 = 57;
      }

      return -1;
    }

    else
    {
      __memmove_chk();
      for (i = &a2[v12 - v13]; ; ++i)
      {
        v5 = v13--;
        if (v5 <= 0)
        {
          break;
        }

        v6 = i;
        *v6 = 32;
      }

      return 0;
    }
  }
}

uint64_t format_octal_1(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v12--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v14++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v15 = &a2[a3];
    do
    {
      *--v15 = (v17 & 7) + 48;
      v17 >>= 3;
      --v13;
      v10 = 0;
      if (v13 > 0)
      {
        v10 = v17 > 0;
      }
    }

    while (v10);
    if (v17)
    {
      while (1)
      {
        v7 = v12--;
        if (v7 <= 0)
        {
          break;
        }

        v8 = v15++;
        *v8 = 55;
      }

      return -1;
    }

    else
    {
      __memmove_chk();
      for (i = &a2[v12 - v13]; ; ++i)
      {
        v5 = v13--;
        if (v5 <= 0)
        {
          break;
        }

        v6 = i;
        *v6 = 32;
      }

      return 0;
    }
  }
}

uint64_t archive_write_add_filter(_DWORD *a1, int a2)
{
  for (i = 0; *(&codes_0 + 4 * i) != -1; ++i)
  {
    if (a2 == *(&codes_0 + 4 * i))
    {
      return (*(&codes_0 + 2 * i + 1))(a1);
    }
  }

  archive_set_error(a1, 22, "No such filter");
  return -30;
}

uint64_t archive_write_set_format_by_name(_DWORD *a1, const char *a2)
{
  for (i = 0; (&names)[2 * i]; ++i)
  {
    if (!strcmp(a2, (&names)[2 * i]))
    {
      return ((&names)[2 * i + 1])(a1);
    }
  }

  archive_set_error(a1, 22, "No such format '%s'", a2);
  a1[1] = 0x8000;
  return -30;
}

uint64_t archive_read_support_filter_uu(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("uu"))
  {
    return __archive_read_register_bidder(a1, 0, "uu", uudecode_bidder_vtable);
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlement");
    return -30;
  }
}

uint64_t uudecode_bidder_bid(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  line = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v13 = __archive_read_filter_ahead(a2, 1uLL, &v12);
  if (v13)
  {
    v7 = 20;
    v11 = v12;
    v6 = v12;
    while (1)
    {
      line = bid_get_line(v14, &v13, &v12, &v11, &v9, &v6);
      if (line < 0 || !v9)
      {
        return 0;
      }

      if (line - v9 >= 11 && !memcmp(v13, "begin ", 6uLL))
      {
        v8 = 6;
      }

      else if (line - v9 >= 18 && !memcmp(v13, "begin-base64 ", 0xDuLL))
      {
        v8 = 13;
      }

      else
      {
        v8 = 0;
      }

      if (v8 > 0 && (v13[v8] < 0x30u || v13[v8] > 0x37u || v13[v8 + 1] < 0x30u || v13[v8 + 1] > 0x37u || v13[v8 + 2] < 0x30u || v13[v8 + 2] > 0x37u || v13[v8 + 3] != 32))
      {
        v8 = 0;
      }

      v13 += line;
      v12 -= line;
      if (v8)
      {
        break;
      }

      v7 = 0;
      if (v6 >= 0x20000)
      {
        return 0;
      }
    }

    if (v12)
    {
      line = bid_get_line(v14, &v13, &v12, &v11, &v9, &v6);
      if ((line & 0x8000000000000000) == 0 && v9)
      {
        v12 -= line;
        if (v8 == 6)
        {
          if (!uuchar[*v13])
          {
            return 0;
          }

          v2 = v13++;
          v8 = (*v2 - 32) & 0x3F;
          --line;
          if (v8 > 45)
          {
            return 0;
          }

          if (v8 > line - v9)
          {
            return 0;
          }

          while (v8)
          {
            v3 = v13++;
            if (!uuchar[*v3])
            {
              return 0;
            }

            --line;
            --v8;
          }

          if (line - v9 == 1 && (uuchar[*v13] || *v13 >= 0x61u && *v13 <= 0x7Au))
          {
            ++v13;
            --line;
          }

          v13 += v9;
          if (v12 && uuchar[*v13])
          {
            return (v7 + 30);
          }
        }

        else if (v8 == 13)
        {
          while (line - v9 > 0)
          {
            v4 = v13++;
            if (!base64_1[*v4])
            {
              return 0;
            }

            --line;
          }

          v13 += v9;
          if (v12 >= 5 && !memcmp(v13, "====\n", 5uLL))
          {
            return (v7 + 40);
          }

          if (v12 >= 6 && !memcmp(v13, "====\r\n", 6uLL))
          {
            return (v7 + 40);
          }

          if (v12 > 0 && base64_1[*v13])
          {
            return (v7 + 30);
          }
        }

        return 0;
      }

      return 0;
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

uint64_t uudecode_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 7;
  *(a1 + 48) = "uu";
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x101004080717504uLL);
  v3 = malloc_type_malloc(0x10000uLL, 0x949ECCDAuLL);
  v2 = malloc_type_malloc(0x400uLL, 0xD08BF37CuLL);
  if (v4 && v3 && v2)
  {
    *(a1 + 40) = v4;
    v4[1] = v2;
    *(v4 + 4) = 0;
    v4[3] = 1024;
    v4[4] = v3;
    *(v4 + 10) = 0;
    *(v4 + 12) = 0;
    v4[7] = 0;
    *(a1 + 32) = uudecode_reader_vtable;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for uudecode");
    free(v4);
    free(v3);
    free(v2);
    return -30;
  }
}

uint64_t bid_get_line(uint64_t a1, uint64_t *a2, size_t *a3, void *a4, void *a5, size_t *a6)
{
  v11 = 0;
  if (*a3)
  {
    line = get_line(*a2, *a3, a5);
  }

  else
  {
    *a5 = 0;
    line = 0;
  }

  while (1)
  {
    v7 = 0;
    if (!*a5)
    {
      v7 = 0;
      if (line == *a3)
      {
        v7 = 0;
        if (!v11)
        {
          v7 = *a6 < 0x20000;
        }
      }
    }

    if (!v7)
    {
      break;
    }

    v10 = *a4 - *a3;
    v9 = (*a4 + 1023) & 0xFFFFFC00;
    if (v9 < *a4 + 160)
    {
      v9 *= 2;
    }

    *a2 = __archive_read_filter_ahead(a1, v9, a3);
    if (!*a2)
    {
      if (*a4 >= *a3)
      {
        return 0;
      }

      *a2 = __archive_read_filter_ahead(a1, *a3, a3);
      v11 = 1;
    }

    *a6 = *a3;
    *a4 = *a3;
    *a2 += v10;
    *a3 -= v10;
    v8 = line;
    line = get_line((*a2 + line), *a3 - line, a5);
    if ((line & 0x8000000000000000) == 0)
    {
      line += v8;
    }
  }

  return line;
}

uint64_t get_line(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v5 = 0;
  while (v5 < a2)
  {
    v4 = ascii[*a1];
    if (!ascii[*a1])
    {
      if (a3)
      {
        *a3 = 0;
      }

      return -1;
    }

    switch(v4)
    {
      case 1:
        ++a1;
        ++v5;
        break;
      case 10:
        goto LABEL_16;
      case 13:
        if (a2 - v5 > 1 && a1[1] == 10)
        {
          if (a3)
          {
            *a3 = 2;
          }

          return v5 + 2;
        }

LABEL_16:
        if (a3)
        {
          *a3 = 1;
        }

        return v5 + 1;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2;
}

uint64_t uudecode_filter_read(uint64_t a1, void *a2)
{
  v43 = a1;
  v42 = a2;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  line = 0;
  v32 = 0;
  v31 = 0;
  v41 = *(a1 + 40);
LABEL_2:
  v39 = __archive_read_filter_ahead(*(v43 + 16), 1uLL, &v37);
  if (!v39 && v37 < 0)
  {
    return -30;
  }

  if (!v39)
  {
    v37 = 0;
  }

  v35 = 0;
  v34 = 0;
  v38 = *(v41 + 32);
  v36 = v37;
  if (*(v41 + 40) != 4)
  {
    if (!*(v41 + 16))
    {
      goto LABEL_13;
    }

    if (ensure_in_buff_size(v43, v41, v37 + *(v41 + 16)))
    {
      return -30;
    }

    __memcpy_chk();
    v39 = *(v41 + 8);
    v37 += *(v41 + 16);
    *(v41 + 16) = 0;
    while (1)
    {
LABEL_13:
      if (v35 >= v37)
      {
        goto LABEL_111;
      }

      v40 = v39;
      line = get_line(v39, v37 - v35, &v31);
      if ((line & 0x8000000000000000) != 0)
      {
        if (!*(v41 + 40) && (*v41 > 0 || v34 > 0))
        {
          *(v41 + 40) = 4;
          v35 = v37;
          goto LABEL_111;
        }

LABEL_109:
        archive_set_error(*(v43 + 24), -1, "Insufficient compressed data");
        return -30;
      }

      v32 = line;
      if (!v31 && *(v41 + 40) != 2)
      {
        if (!v34 && v36 <= 0)
        {
          archive_set_error(*(v43 + 24), 79, "Missing format data");
          return -30;
        }

        if (ensure_in_buff_size(v43, v41, line))
        {
          return -30;
        }

        if (*(v41 + 8) != v40)
        {
          __memmove_chk();
        }

        *(v41 + 16) = line;
        if (!v34)
        {
          __archive_read_filter_consume(*(v43 + 16), v36);
          goto LABEL_2;
        }

        v35 += line;
        goto LABEL_111;
      }

      v19 = *(v41 + 40);
      if (!v19)
      {
        break;
      }

      switch(v19)
      {
        case 1:
          if ((v34 + 2 * line) > 0x10000)
          {
            goto LABEL_111;
          }

          v26 = line - v31;
          if (!uuchar[*v40])
          {
            goto LABEL_109;
          }

          if (v26 <= 0)
          {
            goto LABEL_109;
          }

          v3 = v40++;
          v28 = (*v3 - 32) & 0x3F;
          if (v28 > v26 - 1)
          {
            goto LABEL_109;
          }

          if (((*v3 - 32) & 0x3F) != 0)
          {
            while (v28 > 0 && uuchar[*v40] && uuchar[v40[1]])
            {
              v4 = v40++;
              v23 = ((*v4 - 32) & 0x3F) << 18;
              v5 = v40++;
              v24 = v23 | (((*v5 - 32) & 0x3F) << 12);
              v6 = v38++;
              *v6 = BYTE2(v24);
              ++v34;
              if (--v28 > 0)
              {
                if (!uuchar[*v40])
                {
                  break;
                }

                v7 = v40++;
                LOWORD(v24) = v24 | (((*v7 - 32) & 0x3F) << 6);
                v8 = v38++;
                *v8 = BYTE1(v24);
                ++v34;
                --v28;
              }

              if (v28 > 0)
              {
                if (!uuchar[*v40])
                {
                  break;
                }

                v9 = v40++;
                v25 = v24 | (*v9 - 32) & 0x3F;
                v10 = v38++;
                *v10 = v25;
                ++v34;
                --v28;
              }
            }

            if (v28)
            {
              goto LABEL_109;
            }
          }

          else
          {
            *(v41 + 40) = 2;
          }

          break;
        case 2:
          if (line - v31 != 3 || memcmp(v40, "end ", 3uLL))
          {
            goto LABEL_109;
          }

          *(v41 + 40) = 0;
          break;
        case 3:
          if ((v34 + 2 * line) > 0x10000)
          {
            goto LABEL_111;
          }

          v29 = line - v31;
          if ((line - v31) >= 3 && *v40 == 61 && v40[1] == 61 && v40[2] == 61)
          {
            *(v41 + 40) = 0;
          }

          else
          {
            while (v29 > 0 && base64_1[*v40] && base64_1[v40[1]])
            {
              v11 = v40++;
              v20 = base64num[*v11] << 18;
              v12 = v40++;
              v21 = v20 | (base64num[*v12] << 12);
              v13 = v38++;
              *v13 = BYTE2(v21);
              ++v34;
              v29 -= 2;
              if (v29 > 0)
              {
                if (*v40 == 61 || !base64_1[*v40])
                {
                  break;
                }

                v14 = v40++;
                v21 |= base64num[*v14] << 6;
                v15 = v38++;
                *v15 = BYTE1(v21);
                ++v34;
                --v29;
              }

              if (v29 > 0)
              {
                if (*v40 == 61 || !base64_1[*v40])
                {
                  break;
                }

                v16 = v40++;
                v22 = v21 | base64num[*v16];
                v17 = v38++;
                *v17 = v22;
                ++v34;
                --v29;
              }
            }

            if (v29 && *v40 != 61)
            {
              goto LABEL_109;
            }
          }

          break;
        default:
          goto LABEL_36;
      }

LABEL_110:
      v39 += v32;
      v35 += v32;
    }

LABEL_36:
    if ((v34 + line) >= 0x20000)
    {
      archive_set_error(*(v43 + 24), 79, "Invalid format data");
      return -30;
    }

    if ((line - v31) >= 11 && !memcmp(v40, "begin ", 6uLL))
    {
      v27 = 6;
    }

    else if ((line - v31) >= 18 && !memcmp(v40, "begin-base64 ", 0xDuLL))
    {
      v27 = 13;
    }

    else
    {
      v27 = 0;
    }

    if (v27 && v40[v27] >= 0x30u && v40[v27] <= 0x37u && v40[v27 + 1] >= 0x30u && v40[v27 + 1] <= 0x37u && v40[v27 + 2] >= 0x30u && v40[v27 + 2] <= 0x37u && v40[v27 + 3] == 32)
    {
      *(v41 + 40) = v27 == 6 ? 1 : 3;
      *(v41 + 44) = 8 * (v40[v27 + 1] - 48) + ((v40[v27] - 48) << 6) + v40[v27 + 2] - 48;
      *(v41 + 48) = 1;
      v30 = line - v31 - 4 - v27;
      if (v30 > 1)
      {
        if (*(v41 + 56))
        {
          free(*(v41 + 56));
        }

        v2 = malloc_type_malloc(v30 + 1, 0x44A05BCEuLL);
        *(v41 + 56) = v2;
        if (!*(v41 + 56))
        {
          archive_set_error(*(v43 + 24), 12, "Can't allocate data for uudecode");
          return -30;
        }

        __strncpy_chk();
        *(*(v41 + 56) + v30) = 0;
      }
    }

    goto LABEL_110;
  }

  v35 = v37;
LABEL_111:
  if (v36 < v37)
  {
    v35 -= v37 - v36;
  }

  __archive_read_filter_consume(*(v43 + 16), v35);
  *v42 = *(v41 + 32);
  *v41 += v34;
  return v34;
}

uint64_t uudecode_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  free(v2[1]);
  free(v2[4]);
  free(v2[7]);
  free(v2);
  return 0;
}

uint64_t uudecode_read_header(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 48))
  {
    archive_entry_set_mode(a2, *(v3 + 44) | 0x8000);
  }

  if (*(v3 + 56))
  {
    archive_entry_set_pathname(a2, *(v3 + 56));
  }

  return 0;
}

uint64_t ensure_in_buff_size(uint64_t a1, uint64_t a2, size_t a3)
{
  if (a3 <= *(a2 + 24))
  {
    return 0;
  }

  size = *(a2 + 24);
  do
  {
    if (size >= 0x8000)
    {
      size += 1024;
    }

    else
    {
      size *= 2;
    }
  }

  while (a3 > size);
  v5 = malloc_type_malloc(size, 0x675A25FEuLL);
  if (v5)
  {
    if (*(a2 + 16))
    {
      __memmove_chk();
    }

    free(*(a2 + 8));
    *(a2 + 8) = v5;
    *(a2 + 24) = size;
    return 0;
  }

  free(0);
  archive_set_error(*(a1 + 24), 12, "Can't allocate data for uudecode");
  return -30;
}

uint64_t blake2sp_init(uint64_t a1, unint64_t a2)
{
  if (a2 && a2 <= 0x20)
  {
    __memset_chk();
    *(a1 + 1736) = 0;
    *(a1 + 1744) = a2;
    if ((blake2sp_init_root(a1 + 1088, a2, 0) & 0x80000000) != 0)
    {
      return -1;
    }

    else
    {
      for (i = 0; i < 8; ++i)
      {
        if ((blake2sp_init_leaf(a1 + 136 * i, a2, 0, i) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      *(a1 + 1216) = 1;
      *(a1 + 1080) = 1;
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t blake2sp_init_root(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = 8;
  v5[3] = 2;
  store32_0(&v6, 0);
  store32_0(&v7, 0);
  store16(&v7 + 2, 0);
  HIWORD(v7) = 8193;
  v8 = 0;
  v9 = 0;
  return blake2s_init_param(a1, v5);
}

uint64_t blake2sp_init_leaf(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, unsigned int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = 8;
  v7[3] = 2;
  store32_0(&v8, 0);
  store32_0(&v9, a4);
  store16(&v9 + 2, 0);
  HIWORD(v9) = 0x2000;
  v10 = 0;
  v11 = 0;
  return blake2sp_init_leaf_param(a1, v7);
}

uint64_t blake2sp_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = a3;
  v9 = *(a1 + 1736);
  v8 = 512 - v9;
  if (v9 && a3 >= v8)
  {
    __memcpy_chk();
    for (i = 0; i < 8; ++i)
    {
      blake2s_update(a1 + 136 * i, a1 + 1224 + (i << 6), 0x40uLL);
    }

    a2 += v8;
    v11 -= v8;
    v9 = 0;
  }

  for (j = 0; j < 8; ++j)
  {
    v5 = v11;
    v4 = a2 + (j << 6);
    while (v5 >= 0x200)
    {
      blake2s_update(a1 + 136 * j, v4, 0x40uLL);
      v4 += 512;
      v5 -= 512;
    }
  }

  v12 = v11 % 0x200;
  if (v12)
  {
    __memcpy_chk();
  }

  *(a1 + 1736) = v9 + v12;
  return 0;
}

uint64_t blake2sp_final(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 && a3 >= *(a1 + 1744))
  {
    for (i = 0; i < 8; ++i)
    {
      if (*(a1 + 1736) > i << 6)
      {
        v4 = *(a1 + 1736) - (i << 6);
        if (v4 > 0x40)
        {
          v4 = 64;
        }

        blake2s_update(a1 + 136 * i, a1 + 1224 + (i << 6), v4);
      }

      blake2s_final(a1 + 136 * i, &v10[2 * i], 0x20uLL);
    }

    for (j = 0; j < 8; ++j)
    {
      blake2s_update(a1 + 1088, &v10[2 * j], 0x20uLL);
    }

    return blake2s_final(a1 + 1088, a2, *(a1 + 1744));
  }

  else
  {
    return -1;
  }
}

uint64_t store32_0(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t blake2sp_init_leaf_param(uint64_t a1, unsigned __int8 *a2)
{
  LODWORD(result) = blake2s_init_param(a1, a2);
  *(a1 + 120) = a2[15];
  return result;
}

uint64_t _warc_rdhdr(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = **(a1 + 2072);
  v15 = 0;
  v14 = 0;
  v13 = 0;
  do
  {
    v14 = __archive_read_ahead(v18, 0xCuLL, &v13);
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_3:
      archive_set_error(v18, -1, "Bad record header");
      return -30;
    }

    if (!v14)
    {
      return 1;
    }

    eoh = _warc_find_eoh(v14, v13);
    if (!eoh)
    {
      goto LABEL_3;
    }

    v15 = _warc_rdver(v14, eoh - v14);
    if (!v15)
    {
      archive_set_error(v18, -1, "Invalid record version");
      return -30;
    }

    if (v15 < 0x4B0 || v15 > 0x2710)
    {
      archive_set_error(v18, -1, "Unsupported record version: %u.%u", v15 / 0x2710, v15 % 0x2710 / 0x64);
      return -30;
    }

    v2 = _warc_rdlen(v14, eoh - v14);
    v8 = v2;
    if (v2 < 0)
    {
      archive_set_error(v18, 22, "Bad content length");
      return -30;
    }

    v7 = _warc_rdrtm(v14, eoh - v14);
    if (v7 == -1)
    {
      archive_set_error(v18, 22, "Bad record time");
      return -30;
    }

    v18[4] = 983040;
    if (v15 != *(v16 + 40))
    {
      archive_string_sprintf((v16 + 48), "WARC/%u.%u", v15 / 0x2710, v15 % 0x2710 / 0x64);
      *(v16 + 40) = v15;
    }

    v9 = _warc_rdtyp(v14, eoh - v14);
    *v16 = v8;
    *(v16 + 8) = 0;
    v6 = 0;
    if (v9 > 2 && (v9 == 3 || v9 == 5))
    {
      v5 = _warc_rduri(v14, eoh - v14);
      *&v10 = v5;
      if (v5 && *(v3 + v5 - 1) != 47)
      {
        if ((v5 + 1) > *(v16 + 24))
        {
          *(v16 + 24) = ((v5 + 64) / 0x40uLL) << 6;
          v11 = malloc_type_realloc(*(v16 + 32), *(v16 + 24), 0x650DC80EuLL);
          if (!v11)
          {
            archive_set_error(v18, 12, "Out of memory");
            return -30;
          }

          *(v16 + 32) = v11;
        }

        __memcpy_chk();
        *(*(v16 + 32) + v5) = 0;
        *(&v10 + 1) = *(v16 + 32);
        v6 = _warc_rdmtm(v14, eoh - v14);
        if (v6 == -1)
        {
          v6 = v7;
        }
      }

      else
      {
        v10 = 0uLL;
      }
    }

    else
    {
      v10 = 0uLL;
    }

    __archive_read_consume(v18, eoh - v14);
    if (v9 > 2 && (v9 == 3 || v9 == 5) && v10)
    {
      archive_entry_set_filetype(v17, 0x8000);
      archive_entry_copy_pathname(v17, *(&v10 + 1));
      archive_entry_set_size(v17, v8);
      archive_entry_set_perm(v17, 420);
      archive_entry_set_ctime(v17, v7, 0);
      archive_entry_set_mtime(v17, v6, 0);
      return 0;
    }
  }

  while ((_warc_skip(v18) & 0x80000000) == 0);
  return -30;
}
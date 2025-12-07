uint64_t read_var(uint64_t a1, void *a2, void *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (read_ahead(a1, 8uLL, &v5))
  {
    v7 = 0;
    v6 = 0;
    while (v6 < 8)
    {
      v4 = *(v5 + v6);
      v8 += (v4 & 0x7F) << v7;
      if ((v4 & 0x80) == 0)
      {
        if (v10)
        {
          *v10 = v8;
        }

        if (v9)
        {
          *v9 = v6 + 1;
        }

        else if (consume(v11, v6 + 1))
        {
          return 0;
        }

        return 1;
      }

      ++v6;
      v7 += 7;
    }

    if (v10)
    {
      *v10 = v8;
    }

    if (v9)
    {
      *v9 = 9;
    }

    else if (consume(v11, 9))
    {
      return 0;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL process_main_locator_extra_block(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v3 = 0;
  return !read_var(a1, &v3, 0) || (v3 & 1) != 0 && !read_var(v5, (v4 + 16), 0) || (v3 & 2) != 0 && !read_var(v5, (v4 + 24), 0);
}

_WORD *reset_file_context(uint64_t a1)
{
  __memset_chk();
  blake2sp_init(a1 + 19480, 0x20uLL);
  if (*(a1 + 44))
  {
    *(a1 + 136) += *(a1 + 112);
  }

  else
  {
    *(a1 + 136) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 21240) = 0;
  *(a1 + 21248) = 0;
  return free_filters(a1);
}

uint64_t init_window_mask(uint64_t result)
{
  if (*(result + 72))
  {
    *(result + 104) = *(result + 72) - 1;
  }

  else
  {
    *(result + 104) = 0;
  }

  return result;
}

uint64_t process_head_file_extra(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  v6 = -30;
  v5 = 0;
  while (v9 > 0)
  {
    if (!read_var_sized(v12, &v8, &v5))
    {
      return 1;
    }

    v9 -= v5;
    if (consume(v12, v5))
    {
      return 1;
    }

    if (!read_var_sized(v12, &v7, &v5))
    {
      return 1;
    }

    v9 -= v5;
    if (consume(v12, v5))
    {
      return 1;
    }

    switch(v7)
    {
      case 1:
        return consume(v12, v9);
      case 2:
        v6 = parse_file_extra_hash(v12, v10, &v9);
        break;
      case 3:
        v6 = parse_file_extra_htime(v12, v11, v10, &v9);
        break;
      case 4:
        v6 = parse_file_extra_version(v12, v11, &v9);
        break;
      case 5:
        v6 = parse_file_extra_redir();
        break;
      case 6:
        v6 = parse_file_extra_owner(v12, v11, &v9);
        break;
      default:
        return consume(v12, v9);
    }
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t cdeque_pop_front(unsigned __int16 *a1, void *a2)
{
  if (a1 && a2)
  {
    if (a1[3])
    {
      cdeque_pop_front_fast(a1, a2);
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 2;
  }
}

unsigned __int16 *cdeque_pop_front_fast(unsigned __int16 *result, void *a2)
{
  *a2 = *(*(result + 1) + 8 * *result);
  *result = (*result + 1) & result[2];
  --result[3];
  return result;
}

uint64_t parse_file_extra_hash(_DWORD *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if (read_var_sized(a1, &v6, &v5))
  {
    *v7 -= v5;
    if (consume(v9, v5))
    {
      return 1;
    }

    else if (v6)
    {
      archive_set_error(v9, 79, "Unsupported hash type (0x%x)", v6);
      return -30;
    }

    else
    {
      v4 = 0;
      if (read_ahead(v9, 0x20uLL, &v4))
      {
        *(v8 + 21232) = 1;
        __memcpy_chk();
        if (consume(v9, 32))
        {
          return 1;
        }

        else
        {
          *v7 -= 32;
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_htime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (read_var_sized(a1, &v6, &v5))
  {
    *v8 -= v5;
    if (!consume(v11, v5))
    {
      v7 = v6 & 1;
      if ((v6 & 2) != 0)
      {
        parse_htime_item(v11, v7, (v9 + 19408), v8);
        archive_entry_set_mtime(v10, *(v9 + 19408), 0);
      }

      if ((v6 & 4) != 0)
      {
        parse_htime_item(v11, v7, (v9 + 19416), v8);
        archive_entry_set_ctime(v10, *(v9 + 19416), 0);
      }

      if ((v6 & 8) != 0)
      {
        parse_htime_item(v11, v7, (v9 + 19424), v8);
        archive_entry_set_atime(v10, *(v9 + 19424), 0);
      }

      if ((v6 & 0x10) != 0)
      {
        if (!read_u32(v11, (v9 + 19432)))
        {
          return 1;
        }

        *v8 -= 4;
      }

      return 0;
    }

    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_redir()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v15 = *MEMORY[0x1E69E9840];
  v12 = v0;
  v11 = v1;
  v10 = v2;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (read_var(v0, (v2 + 21240), &v8))
  {
    if (consume(v12, v8))
    {
      return 1;
    }

    else
    {
      *v9 -= v8;
      if (read_var(v12, (v10 + 21248), &v8))
      {
        if (consume(v12, v8))
        {
          return 1;
        }

        else
        {
          *v9 -= v8;
          if (read_var_sized(v12, &v7, 0))
          {
            *v9 -= v7 + 1;
            if (read_ahead(v12, v7, &v6))
            {
              if (v7 <= 0x7FF)
              {
                if (v7)
                {
                  __memcpy_chk();
                  v14[v7] = 0;
                  if (consume(v12, v7))
                  {
                    return 1;
                  }

                  else
                  {
                    v5 = *(v10 + 21240);
                    if ((v5 - 1) <= 1)
                    {
                      archive_entry_set_filetype(v11, 40960);
                      archive_entry_update_symlink_utf8(v11, v14);
                      if (*(v10 + 21248))
                      {
                        archive_entry_set_symlink_type(v11, 2);
                      }

                      else
                      {
                        archive_entry_set_symlink_type(v11, 1);
                      }
                    }

                    else if (v5 == 4)
                    {
                      archive_entry_set_filetype(v11, 0x8000);
                      archive_entry_update_hardlink_utf8(v11, v14);
                    }

                    return 0;
                  }
                }

                else
                {
                  archive_set_error(v12, 79, "No link target specified");
                  return -30;
                }
              }

              else
              {
                archive_set_error(v12, 79, "Link target is too long");
                return -30;
              }
            }

            else
            {
              return 1;
            }
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_owner(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (read_var(a1, &v9, &v8))
  {
    if (!consume(v12, v8))
    {
      *v10 -= v8;
      if (v9)
      {
        if (!read_var_sized(v12, &v5, 0))
        {
          return 1;
        }

        *v10 -= v5 + 1;
        if (!read_ahead(v12, v5, &v4))
        {
          return 1;
        }

        if (v5 < 0x100)
        {
          v6 = v5;
        }

        else
        {
          v6 = 255;
        }

        __memcpy_chk();
        v14[v6] = 0;
        if (consume(v12, v5))
        {
          return 1;
        }

        archive_entry_set_uname(v11, v14);
      }

      if ((v9 & 2) != 0)
      {
        if (!read_var_sized(v12, &v5, 0))
        {
          return 1;
        }

        *v10 -= v5 + 1;
        if (!read_ahead(v12, v5, &v4))
        {
          return 1;
        }

        if (v5 < 0x100)
        {
          v6 = v5;
        }

        else
        {
          v6 = 255;
        }

        __memcpy_chk();
        v14[v6] = 0;
        if (consume(v12, v5))
        {
          return 1;
        }

        archive_entry_set_gname(v11, v14);
      }

      if ((v9 & 4) != 0)
      {
        if (!read_var(v12, &v7, &v8))
        {
          return 1;
        }

        if (consume(v12, v8))
        {
          return 1;
        }

        *v10 -= v8;
        archive_entry_set_uid(v11, v7);
      }

      if ((v9 & 8) != 0)
      {
        if (!read_var(v12, &v7, &v8))
        {
          return 1;
        }

        if (consume(v12, v8))
        {
          return 1;
        }

        *v10 -= v8;
        archive_entry_set_gid(v11, v7);
      }

      return 0;
    }

    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_version(_DWORD *a1, void *a2, void *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (read_var_sized(a1, &v13, &v11))
  {
    *v14 -= v11;
    if (consume(v16, v11))
    {
      return 1;
    }

    else if (read_var_sized(v16, &v12, &v11))
    {
      *v14 -= v11;
      if (consume(v16, v11))
      {
        return 1;
      }

      else
      {
        v4 = archive_entry_pathname_utf8(v15);
        if (v4)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 0;
          v6 = 0;
          v7 = 0;
          archive_string_sprintf(&v8, ";%zu", v12);
          archive_strcat(&v5, v4);
          archive_strcat(&v5, v8);
          archive_entry_update_pathname_utf8(v15, v5);
          archive_string_free(&v8);
          archive_string_free(&v5);
          return 0;
        }

        else
        {
          archive_set_error(v16, 22, "Version entry without file name");
          return -30;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t parse_htime_item(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if (!a2)
  {
    v6 = 0;
    if (!read_u64(v11, &v6))
    {
      return 1;
    }

    v4 = time_win_to_unix(v6);
    *v9 = v4;
    *v8 -= 8;
    return 0;
  }

  v7 = 0;
  if (read_u32(v11, &v7))
  {
    *v8 -= 4;
    *v9 = v7;
    return 0;
  }

  return 1;
}

BOOL read_u64(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  if (read_ahead(a1, 8uLL, &v4))
  {
    v2 = archive_le64dec_1(v4);
    *v5 = v2;
    return consume(v6, 8) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t use_data(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (i = 0; ; ++i)
  {
    if (i >= 2)
    {
      return -10;
    }

    v5 = a1 + 19304 + 32 * i;
    if (*v5)
    {
      break;
    }
  }

  if (a2)
  {
    *a2 = *(v5 + 8);
  }

  if (a3)
  {
    *a3 = *(v5 + 16);
  }

  if (a4)
  {
    *a4 = *(v5 + 24);
  }

  *v5 = 0;
  return 0;
}

uint64_t do_unpack(_DWORD *a1, uint64_t a2, void *a3, size_t *a4, void *a5)
{
  if (v5 | (((*(a2 + 19400) >> 1) & 1) == 0) && (v7 = *(a2 + 64)) != 0)
  {
    if ((v7 - 1) <= 4)
    {
      if (a5)
      {
        *a5 = *(a2 + 120);
      }

      return uncompress_file(a1);
    }

    else
    {
      archive_set_error(a1, 79, "Compression method not supported: 0x%x", *(a2 + 64));
      return -30;
    }
  }

  else
  {
    return do_unstore_file(a1, a2, a3, a4, a5);
  }
}

uint64_t do_unstore_file(_DWORD *a1, uint64_t a2, void *a3, size_t *a4, void *a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v9 = 0;
  if (*(a2 + 19368) || v5 | (((v14[44] >> 1) & 1) == 0) || v5 | ((v14[32] & 1) == 0) || (v14[56] = v14[56] & 0xFB | 4, v8 = advance_multivolume(v15), v14[56] &= ~4u, !v8))
  {
    if (*(v14 + 2421) <= 0x10000)
    {
      v7 = *(v14 + 2421);
    }

    else
    {
      v7 = 0x10000;
    }

    v10 = v7;
    if (v7)
    {
      if (read_ahead(v15, v10, &v9))
      {
        if (consume(v15, v10))
        {
          return 1;
        }

        else
        {
          if (v13)
          {
            *v13 = v9;
          }

          if (v12)
          {
            *v12 = v10;
          }

          if (v11)
          {
            *v11 = *(v14 + 16);
          }

          *(v14 + 2421) -= v10;
          *(v14 + 16) += v10;
          update_crc(v14, v9, v10);
          return 0;
        }
      }

      else
      {
        archive_set_error(v15, 79, "I/O error when unstoring file");
        return -30;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return v8;
  }
}

uint64_t uncompress_file(_DWORD *a1)
{
  do
  {
    v2 = do_uncompress_file(a1);
  }

  while (v2 == -10);
  return v2;
}

uint64_t advance_multivolume(_DWORD *a1)
{
  context = get_context(a1);
  while (((*(context + 44) >> 2) & 1) != 1)
  {
    v5 = skip_base_block(a1);
    if (v5 == -30 || v5 == -25)
    {
      return v5;
    }

    if (v5 != -10 && (*(context + 44) & 4) == 0)
    {
      return v5;
    }
  }

  v2 = 1;
  *(context + 44) &= ~4u;
  while (v2)
  {
    v4 = skip_base_block(a1);
    if (v4 != -10)
    {
      if (v4)
      {
        return v4;
      }

      v2 = 0;
    }
  }

  return 0;
}

char *update_crc(char *result, const Bytef *a2, unint64_t a3)
{
  v5 = result;
  if (!*(result + 2))
  {
    if (*(result + 4859))
    {
      result = crc32(*(result + 4860), a2, a3);
      *(v5 + 4860) = result;
    }

    if (v5[21232] > 0)
    {
      return blake2sp_update((v5 + 19480), a2, a3);
    }
  }

  return result;
}

uint64_t skip_base_block(_DWORD *a1)
{
  context = get_context(a1);
  v2 = archive_entry_new();
  v4 = process_base_block(a1, v2);
  archive_entry_free(v2);
  if (v4 == -30)
  {
    return -30;
  }

  else if (*(context + 40) == 2 && ((*(context + 32) >> 1) & 1) != 0)
  {
    return 0;
  }

  else if (v4)
  {
    return v4;
  }

  else
  {
    return -10;
  }
}

uint64_t do_uncompress_file(_DWORD *a1)
{
  context = get_context(a1);
  if ((*(context + 56) & 1) == 0)
  {
    if ((*(context + 44) & 1) == 0 || !*(context + 80))
    {
      init_unpack(context);
    }

    *(context + 56) = *(context + 56) & 0xFE | 1;
  }

  if (*(context + 72))
  {
    if (((*(context + 56) >> 1) & 1) == 1)
    {
      do
      {
        v5 = process_block(a1);
        if (v5 == 1 || v5 == -30)
        {
          return v5;
        }

        if (*(context + 120) != *(context + 112))
        {
          goto LABEL_16;
        }
      }

      while (!bf_is_last_block((context + 21288)));
      return 1;
    }

    else
    {
LABEL_16:
      v6 = apply_filters(a1);
      if (v6 == -10)
      {
        return 0;
      }

      else if (v6 == -30)
      {
        return -30;
      }

      else
      {
        if (cdeque_size(context + 19256))
        {
          cdeque_filter_p();
          if (cdeque_front((context + 19256), v1))
          {
            archive_set_error(a1, 22, "Can't read first filter");
            return -30;
          }

          if (MEMORY[0x10] <= *(context + 112))
          {
            v3 = MEMORY[0x10];
          }

          else
          {
            v3 = *(context + 112);
          }

          v4 = v3;
        }

        else
        {
          v4 = *(context + 112);
        }

        if (v4 == *(context + 120))
        {
          return -10;
        }

        else
        {
          push_window_data(a1, context, *(context + 120), v4);
          *(context + 120) = v4;
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(a1, 79, "Invalid window size declaration in this file");
    return -30;
  }
}

uint64_t init_unpack(uint64_t a1)
{
  *(a1 + 19440) = 0;
  init_window_mask(a1);
  free(*(a1 + 80));
  free(*(a1 + 88));
  if (*(a1 + 72) <= 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = malloc_type_calloc(1uLL, *(a1 + 72), 0x190C64D0uLL);
    *(a1 + 88) = malloc_type_calloc(1uLL, *(a1 + 72), 0x1AC5B2BEuLL);
  }

  clear_data_ready_stack(a1);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  __memset_chk();
  __memset_chk();
  __memset_chk();
  __memset_chk();
  return __memset_chk();
}

uint64_t process_block(_DWORD *a1)
{
  v9 = a1;
  v8 = 0;
  context = get_context(a1);
  v6 = 0;
  if ((*(context + 44) & 2) != 0 && !*(context + 19368) && (v6 = advance_multivolume(v9)) != 0)
  {
    return v6;
  }

  else
  {
    if ((*(context + 56) & 8) != 0)
    {
      v5 = 0;
      if (!read_ahead(v9, 6uLL, &v8))
      {
        return 1;
      }

      v6 = parse_block_header(v9, v8, &v5, (context + 21288));
      if (v6)
      {
        return v6;
      }

      v4 = bf_byte_count((context + 21288)) + 3;
      if (consume(v9, v4))
      {
        return 1;
      }

      *(context + 19368) -= v4;
      if (*(context + 19368) <= v5)
      {
        v2 = *(context + 19368);
      }

      else
      {
        v2 = v5;
      }

      v3 = v2;
      if (v5 <= *(context + 19368))
      {
        *(context + 56) &= ~4u;
        if (!read_ahead(v9, v2 + 4, &v8))
        {
          return 1;
        }
      }

      else
      {
        v6 = merge_block(v9, v5, &v8);
        if (v6)
        {
          return v6;
        }

        v3 = v5;
      }

      *(context + 96) = v8;
      *(context + 144) = v3;
      *(context + 56) &= ~8u;
      *(context + 21268) = 0;
      *(context + 21264) = 0;
      if (bf_is_table_present((context + 21288)))
      {
        v6 = parse_tables(v9, context, v8);
        if (v6)
        {
          return v6;
        }
      }
    }

    else
    {
      v8 = *(context + 96);
    }

    v6 = do_uncompress_block(v9, v8);
    if (!v6)
    {
      if ((*(context + 56) & 8) == 0 || (*(context + 56) & 4) != 0 || *(context + 144) <= 0)
      {
        if ((*(context + 56) & 4) != 0)
        {
          *(context + 56) &= ~4u;
        }
      }

      else
      {
        if (consume(v9, *(context + 144)))
        {
          return -30;
        }

        *(context + 19368) -= *(context + 144);
      }

      return 0;
    }

    return v6;
  }
}

uint64_t apply_filters(_DWORD *a1)
{
  context = get_context(a1);
  *(context + 56) &= ~2u;
  cdeque_filter_p();
  if (cdeque_front((context + 19256), v1) || *(context + 112) <= MEMORY[0x10] || *(context + 112) < MEMORY[0x10] + MEMORY[0x18])
  {
    *(context + 56) = *(context + 56) & 0xFD | 2;
    return 0;
  }

  if (*(context + 120) != MEMORY[0x10])
  {
    push_window_data(a1, context, *(context + 120), MEMORY[0x10]);
    return -10;
  }

  v4 = run_filter(a1, 0);
  if (!v4)
  {
    cdeque_filter_p();
    cdeque_pop_front((context + 19256), v2);
    free(0);
    return -10;
  }

  return v4;
}

uint64_t cdeque_front(unsigned __int16 *a1, void *a2)
{
  if (a1[3])
  {
    cdeque_front_fast(a1, a2);
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t parse_block_header(_DWORD *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  __memcpy_chk();
  if (bf_byte_count(a4) <= 2)
  {
    *a3 = 0;
    v6 = bf_byte_count(a4);
    if (v6)
    {
      if (v6 == 1)
      {
        *a3 = archive_le16dec_2((a2 + 2));
      }

      else
      {
        if (v6 != 2)
        {
          return -30;
        }

        *a3 = archive_le32dec_6((a2 + 2));
        *a3 &= 0xFFFFFFuLL;
      }
    }

    else
    {
      *a3 = *(a2 + 2);
    }

    v7 = *a4 ^ 0x5A ^ *a3 ^ BYTE1(*a3) ^ WORD1(*a3);
    if (v7 == a4[1])
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 79, "Block checksum error: got 0x%x, expected 0x%x", a4[1], v7);
      return -30;
    }
  }

  else
  {
    v4 = bf_byte_count(a4);
    archive_set_error(a1, 79, "Unsupported block header size (was %d, max is 2)", v4);
    return -30;
  }
}

uint64_t merge_block(_DWORD *a1, int64_t a2, void *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  context = get_context(a1);
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(context + 12))
  {
    archive_set_error(v12, 22, "Recursive merge is not allowed");
    return -30;
  }

  else
  {
    *(context + 56) = *(context + 56) & 0xFB | 4;
    if (*(context + 21280))
    {
      free(*(context + 21280));
    }

    *(context + 21280) = malloc_type_malloc(v11 + 8, 0xADB13346uLL);
    if (*(context + 21280))
    {
      __memset_chk();
      while (1)
      {
        if (*(context + 19368) <= v11 - v7)
        {
          v4 = *(context + 19368);
        }

        else
        {
          v4 = v11 - v7;
        }

        v8 = v4;
        if (!v4)
        {
          archive_set_error(v12, 79, "Encountered block size == 0 during block merge");
          return -30;
        }

        if (!read_ahead(v12, v8, &v6))
        {
          return 1;
        }

        if ((v7 + v8) > v11)
        {
          archive_set_error(v12, 22, "Consumed too much data when merging blocks.");
          return -30;
        }

        __memcpy_chk();
        if (consume(v12, v8))
        {
          return 1;
        }

        v7 += v8;
        *(context + 19368) -= v8;
        if (v7 == v11)
        {
          *v10 = *(context + 21280);
          return 0;
        }

        if (!*(context + 19368))
        {
          ++*(context + 12);
          v5 = advance_multivolume(v12);
          --*(context + 12);
          if (v5)
          {
            break;
          }
        }
      }

      return v5;
    }

    else
    {
      archive_set_error(v12, 12, "Can't allocate memory for a merge block buffer.");
      return -30;
    }
  }
}

uint64_t parse_tables(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  decode_tables = 0;
  v22 = 0;
  v19 = 0;
  v18 = -16;
  v17 = 4;
  v20 = 0;
  v21 = 0;
  while (v20 < 20)
  {
    if (v21 >= *(v25 + 144))
    {
      archive_set_error(v26, 79, "Truncated data in huffman tables");
      return -30;
    }

    v22 = (*(v24 + v21) & v18) >> v17;
    if (v18 == 15)
    {
      ++v21;
    }

    v18 = ~v18;
    v17 ^= 4u;
    if (v22 == 15)
    {
      v22 = (*(v24 + v21) & v18) >> v17;
      if (v18 == 15)
      {
        ++v21;
      }

      v18 = ~v18;
      v17 ^= 4u;
      if (v22)
      {
        for (i = 0; ; ++i)
        {
          v12 = 0;
          if (i < v22 + 2)
          {
            v12 = v20 < 20;
          }

          if (!v12)
          {
            break;
          }

          v4 = v20++;
          v29[v4] = 0;
        }
      }

      else
      {
        v3 = v20++;
        v29[v3] = 15;
      }
    }

    else
    {
      v5 = v20++;
      v29[v5] = v22;
    }
  }

  *(v25 + 21268) = v21;
  *(v25 + 21264) = v17 ^ 4;
  decode_tables = create_decode_tables(v29, (v25 + 156), 20);
  if (decode_tables)
  {
    archive_set_error(v26, 79, "Decoding huffman tables failed");
    return -30;
  }

  else
  {
    v21 = 0;
    while (v21 < 430)
    {
      v15 = 0;
      decode_tables = decode_number(v26, (v25 + 156), v24, &v15);
      if (decode_tables)
      {
        archive_set_error(v26, 79, "Decoding huffman tables failed");
        return -30;
      }

      if (v15 >= 0x10u)
      {
        if (v15 >= 0x12u)
        {
          v13 = 0;
          decode_tables = read_bits_16(v26, v25, v24, &v13);
          if (decode_tables)
          {
            return decode_tables;
          }

          if (v15 == 18)
          {
            v13 = v13 >> 13;
            v13 += 3;
            skip_bits(v25, 3);
          }

          else
          {
            v13 = v13 >> 9;
            v13 += 11;
            skip_bits(v25, 7);
          }

          while (1)
          {
            v7 = v13--;
            v10 = 0;
            if (v7 > 0)
            {
              v10 = v21 < 430;
            }

            if (!v10)
            {
              break;
            }

            v8 = v21++;
            v28[v8] = 0;
          }
        }

        else
        {
          v14 = 0;
          decode_tables = read_bits_16(v26, v25, v24, &v14);
          if (decode_tables)
          {
            return decode_tables;
          }

          if (v15 == 16)
          {
            v14 = v14 >> 13;
            v14 += 3;
            skip_bits(v25, 3);
          }

          else
          {
            v14 = v14 >> 9;
            v14 += 11;
            skip_bits(v25, 7);
          }

          if (v21 <= 0)
          {
            archive_set_error(v26, 79, "Unexpected error when decoding huffman tables");
            return -30;
          }

          while (1)
          {
            v6 = v14--;
            v11 = 0;
            if (v6 > 0)
            {
              v11 = v21 < 430;
            }

            if (!v11)
            {
              break;
            }

            v28[v21] = v28[v21 - 1];
            ++v21;
          }
        }
      }

      else
      {
        v28[v21++] = v15;
      }
    }

    decode_tables = create_decode_tables(&v28[v19], (v25 + 3976), 306);
    if (decode_tables)
    {
      archive_set_error(v26, 79, "Failed to create literal table");
      return -30;
    }

    else
    {
      v19 += 306;
      decode_tables = create_decode_tables(&v28[v19], (v25 + 7796), 64);
      if (decode_tables)
      {
        archive_set_error(v26, 79, "Failed to create distance table");
        return -30;
      }

      else
      {
        v19 += 64;
        decode_tables = create_decode_tables(&v28[v19], (v25 + 11616), 16);
        if (decode_tables)
        {
          archive_set_error(v26, 79, "Failed to create lower bits of distances table");
          return -30;
        }

        else
        {
          v19 += 16;
          decode_tables = create_decode_tables(&v28[v19], (v25 + 15436), 44);
          if (decode_tables)
          {
            archive_set_error(v26, 79, "Failed to create repeating distances table");
            return -30;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t do_uncompress_block(_DWORD *a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  context = get_context(a1);
  v21 = 0;
  bits_32 = 0;
  v19 = *(context + 13);
  v18 = context + 5322;
  v17 = bf_bit_size(context + 21288) + 1;
  while (*(context + 14) - *(context + 15) <= *(context + 9) >> 1)
  {
    if (context[5317] > *(context + 18) - 1 || context[5317] == *(context + 18) - 1 && *(context + 21264) >= v17)
    {
      *(context + 56) = context[14] & 0xF7 | 8;
      break;
    }

    if (decode_number(v24, context + 994, v23, &v21))
    {
      return 1;
    }

    if (v21 >= 0x100u)
    {
      if (v21 < 0x106u)
      {
        if (v21 == 256)
        {
          bits_32 = parse_filter(v24, v23);
          if (bits_32)
          {
            return bits_32;
          }
        }

        else if (v21 == 257)
        {
          if (context[38] && copy_string(v24, context[38], context[4822]))
          {
            return -30;
          }
        }

        else
        {
          v8 = v21 - 258;
          v7 = dist_cache_touch(context, v8);
          v6 = 0;
          if (decode_number(v24, context + 3859, v23, &v6))
          {
            return -30;
          }

          v5 = decode_code_length(v24, context, v23, v6);
          if (v5 == -1)
          {
            return -30;
          }

          context[38] = v5;
          if (copy_string(v24, v5, v7))
          {
            return -30;
          }
        }
      }

      else
      {
        v15 = 0;
        v14 = decode_code_length(v24, context, v23, v21 - 262);
        v13 = 0;
        v12 = 1;
        if (v14 == -1)
        {
          archive_set_error(v24, 22, "Failed to decode the code length");
          return -30;
        }

        if (decode_number(v24, context + 1949, v23, &v15))
        {
LABEL_15:
          archive_set_error(v24, 22, "Failed to decode the distance slot");
          return -30;
        }

        if (v15 >= 4u)
        {
          v13 = v15 / 2 - 1;
          v12 += (v15 & 1 | 2) << v13;
        }

        else
        {
          v13 = 0;
          v12 += v15;
        }

        if (v13 > 0)
        {
          if (v13 < 4)
          {
            v9 = 0;
            bits_32 = read_consume_bits(v24, context, v23, v13, &v9);
            if (bits_32)
            {
              return bits_32;
            }

            v12 += v9;
          }

          else
          {
            v11 = 0;
            v10 = 0;
            if (v13 > 4)
            {
              bits_32 = read_bits_32(v24, context, v23, &v11);
              if (bits_32)
              {
                return bits_32;
              }

              skip_bits(context, v13 - 4);
              v11 = 16 * (v11 >> (36 - v13));
              v12 += v11;
            }

            if (decode_number(v24, context + 2904, v23, &v10))
            {
              goto LABEL_15;
            }

            if (v12 >= 2147483646 - v10)
            {
              archive_set_error(v24, 79, "Distance pointer overflow");
              return -30;
            }

            v12 += v10;
          }
        }

        if (v12 > 256)
        {
          ++v14;
          if (v12 > 0x2000)
          {
            ++v14;
            if (v12 > 0x40000)
            {
              ++v14;
            }
          }
        }

        dist_cache_push(context, v12);
        context[38] = v14;
        if (copy_string(v24, v14, v12))
        {
          return -30;
        }
      }
    }

    else
    {
      v2 = *(context + 17);
      v3 = *(context + 14);
      *(context + 14) = v3 + 1;
      v16 = v2 + v3;
      *(*(context + 10) + ((v2 + v3) & v19)) = v21;
    }
  }

  return 0;
}

uint64_t create_decode_tables(uint64_t a1, int *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  __memset_chk();
  *a2 = a3;
  if (a3 == 306)
  {
    v3 = 10;
  }

  else
  {
    v3 = 7;
  }

  a2[33] = v3;
  for (i = 0; i < a3; ++i)
  {
    ++__b[*(a1 + i) & 0xF];
  }

  __b[0] = 0;
  a2[17] = 0;
  a2[1] = 0;
  for (j = 1; j < 16; ++j)
  {
    v15 = v14 + __b[j];
    a2[j + 1] = v15 << (16 - j);
    a2[j + 17] = a2[j + 16] + __b[j - 1];
    v14 = 2 * v15;
  }

  memcpy(__dst, a2 + 17, sizeof(__dst));
  for (k = 0; k < a3; ++k)
  {
    v8 = *(a1 + k) & 0xF;
    if (v8)
    {
      *(a2 + __dst[v8]++ + 1604) = k;
    }
  }

  v9 = 1 << a2[33];
  v10 = 1;
  for (m = 0; m < v9; ++m)
  {
    v7 = m << (16 - a2[33]);
    while (1)
    {
      v5 = 0;
      if (v10 < 16)
      {
        v5 = v7 >= a2[v10 + 1];
      }

      if (!v5)
      {
        break;
      }

      ++v10;
    }

    *(a2 + m + 136) = v10;
    v6 = a2[(v10 & 0xF) + 17] + ((v7 - a2[v10]) >> (16 - v10));
    if (v10 >= 16 || v6 >= a3)
    {
      *(a2 + m + 580) = 0;
    }

    else
    {
      *(a2 + m + 580) = *(a2 + v6 + 1604);
    }
  }

  return 0;
}

uint64_t decode_number(_DWORD *a1, unsigned int *a2, uint64_t a3, _WORD *a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  i = 0;
  v10 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  context = get_context(a1);
  *&v8[2] = read_bits_16(v15, context, v13, v8);
  if (*&v8[2])
  {
    return *&v8[2];
  }

  else
  {
    *v8 = *v8 & 0xFFFE;
    if (*v8 >= v14[v14[33] + 1])
    {
      v10 = 15;
      for (i = v14[33] + 1; i < 15; ++i)
      {
        if (*v8 < v14[i + 1])
        {
          v10 = i;
          break;
        }
      }

      skip_bits(context, v10);
      v9 = *v8 - v14[v10];
      v9 >>= 16 - v10;
      v7 = v14[v10 + 17] + v9;
      if (v7 >= *v14)
      {
        v7 = 0;
      }

      *v12 = *(v14 + v7 + 1604);
      return 0;
    }

    else
    {
      v5 = *v8 >> (16 - v14[33]);
      skip_bits(context, *(v14 + v5 + 136));
      *v12 = *(v14 + v5 + 580);
      return 0;
    }
  }
}

uint64_t read_bits_16(_DWORD *a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  if (*(a2 + 21268) < *(a2 + 144))
  {
    *a4 = ((*(a3 + *(a2 + 21268)) << 16) | (*(a3 + *(a2 + 21268) + 1) << 8) | *(a3 + *(a2 + 21268) + 2)) >> (8 - *(a2 + 21264));
    return 0;
  }

  else
  {
    archive_set_error(a1, 22, "Premature end of stream during extraction of data (#2)");
    return -30;
  }
}

uint64_t skip_bits(uint64_t result, int a2)
{
  v2 = *(result + 21264) + a2;
  *(result + 21268) += v2 >> 3;
  *(result + 21264) = v2 & 7;
  return result;
}

uint64_t decode_code_length(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 2;
  if (a4 >= 8u)
  {
    v7 = v8 / 4 - 1;
    v6 += (v8 & 3 | 4) << v7;
  }

  else
  {
    v7 = 0;
    v6 += v8;
  }

  if (v7 <= 0)
  {
    return v6;
  }

  v5 = 0;
  if (!read_consume_bits(v11, v10, v9, v7, &v5))
  {
    v6 += v5;
    return v6;
  }

  return -1;
}

uint64_t read_bits_32(_DWORD *a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a2 + 21268) < *(a2 + 144))
  {
    *a4 = (((*(a3 + *(a2 + 21268)) << 24) | (*(a3 + *(a2 + 21268) + 1) << 16) | (*(a3 + *(a2 + 21268) + 2) << 8) | *(a3 + *(a2 + 21268) + 3)) << *(a2 + 21264)) | (*(a3 + *(a2 + 21268) + 4) >> (8 - *(a2 + 21264)));
    return 0;
  }

  else
  {
    archive_set_error(a1, 22, "Premature end of stream during extraction of data (#1)");
    return -30;
  }
}

uint64_t read_consume_bits(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = 0;
  if (a4 && v10 <= 16)
  {
    v7 = read_bits_16(v13, v12, v11, &v8);
    if (v7)
    {
      return v7;
    }

    else
    {
      v6 = v8 >> (16 - v10);
      skip_bits(v12, v10);
      if (v9)
      {
        *v9 = v6;
      }

      return 0;
    }
  }

  else
  {
    return -30;
  }
}

_DWORD *dist_cache_push(_DWORD *result, int a2)
{
  result[4825] = result[4824];
  result[4824] = result[4823];
  result[4823] = result[4822];
  result[4822] = a2;
  return result;
}

uint64_t copy_string(uint64_t a1, int a2, int a3)
{
  context = get_context(a1);
  v6 = context[13];
  v5 = context[14] + context[17];
  if (context[10])
  {
    for (i = 0; i < a2; ++i)
    {
      *(context[10] + ((v5 + i) & v6)) = *(context[10] + ((v5 + i - a3) & v6));
    }

    context[14] += a2;
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t parse_filter(_DWORD *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  context = get_context(a1);
  v4 = parse_filter_data(v11, context, v10, &v9);
  if (v4)
  {
    return v4;
  }

  else
  {
    v4 = parse_filter_data(v11, context, v10, &v8);
    if (v4)
    {
      return v4;
    }

    else
    {
      v4 = read_bits_16(v11, context, v10, &v7);
      if (v4)
      {
        return v4;
      }

      else
      {
        v7 = v7 >> 13;
        skip_bits(context, 3);
        if (v8 >= 4 && v8 <= 0x400000 && v7 <= 3u && is_valid_filter_block_start(context, v9))
        {
          v6 = add_new_filter(context);
          if (v6)
          {
            *v6 = v7;
            v6[2] = context[14] + v9;
            v6[3] = v8;
            context[2409] = v6[2];
            context[2410] = v6[3];
            if (!v7)
            {
              v3 = 0;
              v4 = read_consume_bits(v11, context, v10, 5, &v3);
              if (v4)
              {
                return v4;
              }

              *(v6 + 1) = v3 + 1;
            }

            return 0;
          }

          archive_set_error(v11, 12, "Can't allocate memory for a filter descriptor.");
          return -30;
        }

        else
        {
          archive_set_error(v11, 79, "Invalid filter encountered");
          return -30;
        }
      }
    }
  }
}

uint64_t dist_cache_touch(uint64_t a1, int a2)
{
  v5 = (a1 + 19288);
  v3 = *(a1 + 19288 + 4 * a2);
  for (i = a2; i > 0; --i)
  {
    v5[i] = v5[i - 1];
  }

  *v5 = v3;
  return v3;
}

uint64_t parse_filter_data(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  i = 0;
  v8 = 0;
  v6 = 0;
  v7 = read_consume_bits(a1, a2, a3, 2, &v8);
  if (v7)
  {
    return v7;
  }

  else
  {
    ++v8;
    for (i = 0; i < v8; ++i)
    {
      v5 = 0;
      v7 = read_bits_16(v13, v12, v11, &v5);
      if (v7)
      {
        return v7;
      }

      v6 += HIBYTE(v5) << (8 * i);
      skip_bits(v12, 8);
    }

    *v10 = v6;
    return 0;
  }
}

BOOL is_valid_filter_block_start(void *a1, unsigned int a2)
{
  v4 = a1[2409];
  v3 = a1[2410];
  return !v4 || !v3 || a2 + a1[14] >= v4 + v3;
}

void *add_new_filter(uint64_t a1)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x1000040D61A056BuLL);
  if (!v3)
  {
    return 0;
  }

  cdeque_filter();
  cdeque_push_back(a1 + 19256, v1);
  return v3;
}

uint64_t cdeque_push_back(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 6) == *(a1 + 4) + 1)
    {
      return 3;
    }

    else
    {
      *(*(a1 + 8) + 8 * *(a1 + 2)) = a2;
      *(a1 + 2) = (*(a1 + 2) + 1) & *(a1 + 4);
      ++*(a1 + 6);
      return 0;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t run_filter(_DWORD *a1, int *a2)
{
  context = get_context(a1);
  clear_data_ready_stack(context);
  free(*(context + 88));
  *(context + 88) = malloc_type_malloc(*(a2 + 3), 0x222A44EuLL);
  if (*(context + 88))
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3 != 2 && v3 != 1)
      {
        if (v3 != 3)
        {
          archive_set_error(a1, 79, "Unsupported filter type: 0x%x", *a2);
          return -30;
        }

        v5 = run_arm_filter(context, a2);
      }

      else
      {
        v5 = run_e8e9_filter(context, a2, *a2 == 2);
      }
    }

    else
    {
      v5 = run_delta_filter(context, a2);
    }

    if (v5)
    {
      return v5;
    }

    else if (push_data_ready(a1, context, *(context + 88), *(a2 + 3), *(context + 120)))
    {
      archive_set_error(a1, 22, "Stack overflow when submitting unpacked data");
      return -30;
    }

    else
    {
      *(context + 120) += *(a2 + 3);
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for filter data.");
    return -30;
  }
}

uint64_t run_delta_filter(void *a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; i < *(a2 + 4); ++i)
  {
    v3 = 0;
    for (j = i; j < *(a2 + 24); j += *(a2 + 4))
    {
      v3 -= *(a1[10] + ((a1[17] + *(a2 + 16) + v4) & a1[13]));
      *(a1[11] + j) = v3;
      ++v4;
    }
  }

  return 0;
}

uint64_t run_e8e9_filter(void *a1, uint64_t a2, int a3)
{
  circular_memcpy(a1[11], a1[10], a1[13], a1[17] + *(a2 + 16), a1[17] + *(a2 + 16) + *(a2 + 24));
  v8 = 0;
  while (v8 < *(a2 + 24) - 4)
  {
    v3 = v8++;
    v7 = *(a1[10] + ((a1[17] + *(a2 + 16) + v3) & a1[13]));
    if (v7 == 232 || a3 && v7 == 233)
    {
      v5 = (v8 + *(a2 + 16)) % 0x1000000;
      filter_data = read_filter_data(a1, (a1[17] + *(a2 + 16) + v8) & a1[13]);
      if (filter_data < 0)
      {
        if (((filter_data + v5) & 0x80000000) == 0)
        {
          write_filter_data(a1, v8, filter_data + 0x1000000);
        }
      }

      else if (filter_data - 0x1000000 < 0)
      {
        write_filter_data(a1, v8, filter_data - v5);
      }

      v8 += 4;
    }
  }

  return 0;
}

uint64_t run_arm_filter(void *a1, uint64_t a2)
{
  circular_memcpy(a1[11], a1[10], a1[13], a1[17] + *(a2 + 16), a1[17] + *(a2 + 16) + *(a2 + 24));
  for (i = 0; i < *(a2 + 24) - 3; i += 4)
  {
    if (*(a1[10] + ((a1[17] + *(a2 + 16) + i + 3) & a1[13])) == 235)
    {
      filter_data = read_filter_data(a1, (*(a1 + 34) + *(a2 + 16) + i) & a1[13]);
      write_filter_data(a1, i, ((filter_data & 0xFFFFFF) - (i + *(a2 + 16)) / 4) & 0xFFFFFF | 0xEB000000);
    }
  }

  return 0;
}

uint64_t push_data_ready(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 8))
  {
    return 0;
  }

  else if (a5 == *(a2 + 19384) + *(a2 + 19392))
  {
    for (i = 0; i < 2; ++i)
    {
      v6 = a2 + 19304 + 32 * i;
      if (!*v6)
      {
        *v6 = 1;
        *(v6 + 8) = a3;
        *(v6 + 16) = a4;
        *(v6 + 24) = a5;
        *(a2 + 19384) = a5;
        *(a2 + 19392) = a4;
        update_crc(a2, *(v6 + 8), *(v6 + 16));
        return 0;
      }
    }

    archive_set_error(a1, 22, "Error: premature end of data_ready stack");
    return -30;
  }

  else
  {
    archive_set_error(a1, 22, "Sanity check error: output stream is not continuous");
    return -30;
  }
}

uint64_t circular_memcpy(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & a3) > (a5 & a3))
  {
    __memcpy_chk();
  }

  return __memcpy_chk();
}

uint64_t read_filter_data(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v4 = a2;
  circular_memcpy(v3, *(a1 + 80), *(a1 + 104), v4, v4 + 4);
  return archive_le32dec_6(v3);
}

uint64_t archive_le32enc_5(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t push_data(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[13];
  v7 = (a2[17] + a2[15]) & v8;
  v10 = a4 + a2[17];
  v9 = a5 + a2[17];
  if ((v10 & v8) <= (v9 & v8))
  {
    result = push_data_ready(a1, a2, a3 + v7, (v9 - v10) & v8, a2[15]);
    a2[15] += v9 - v10;
  }

  else
  {
    v6 = a2[9] - (v10 & v8);
    push_data_ready(a1, a2, a3 + v7, v6, a2[15]);
    result = push_data_ready(a1, a2, a3, v9 & v8, a2[15] + v6);
    a2[15] += v6 + (v9 & v8);
  }

  return result;
}

uint64_t verify_checksums(_DWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  context = get_context(a1);
  if (*(context + 8))
  {
    return 0;
  }

  if (!*(context + 19436) || *(context + 19440) == *(context + 19436))
  {
    if (*(context + 21232) > 0)
    {
      blake2sp_final(context + 19480, v5, 0x20uLL);
      if (memcmp((context + 19444), v5, 0x20uLL))
      {
        archive_set_error(a1, 79, "Checksum error: BLAKE2");
        return -30;
      }
    }

    return 0;
  }

  archive_set_error(a1, 79, "Checksum error: CRC32");
  return -30;
}

uint64_t archive_set_format_option(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 256))
  {
    if (!a2 || !strcmp(a2, *(a1 + 256)))
    {
      if (*(a1 + 272))
      {
        return (*(a1 + 272))(a1, a3, a4);
      }

      else
      {
        return -20;
      }
    }

    else
    {
      return -21;
    }
  }

  else if (a2)
  {
    return -21;
  }

  else
  {
    return -25;
  }
}

uint64_t archive_set_filter_option(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = -20;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 24) && (!a2 || !strcmp(*(i + 80), a2)))
    {
      v6 = (*(i + 24))(i, a3, a4);
      if (v6 == -30)
      {
        return -30;
      }

      if (a2)
      {
        return v6;
      }

      if (!v6)
      {
        v5 = 0;
      }
    }
  }

  if (v5 == -20 && a2)
  {
    return -21;
  }

  return v5;
}

uint64_t Ppmd7_Construct(uint64_t a1)
{
  *(a1 + 64) = 0;
  v8 = 0;
  v6 = 0;
  while (v8 < 0x26)
  {
    if (v8 >= 0xC)
    {
      v3 = 4;
    }

    else
    {
      v3 = (v8 >> 2) + 1;
    }

    v4 = v3;
    do
    {
      v1 = v6++;
      *(a1 + 146 + v1) = v8;
      --v4;
    }

    while (v4);
    *(a1 + 108 + v8++) = v6;
  }

  *(a1 + 684) = 0;
  *(a1 + 685) = 2;
  __memset_chk();
  __memset_chk();
  for (i = 0; i < 3; ++i)
  {
    *(a1 + 428 + i) = i;
  }

  v5 = i;
  v7 = 1;
  while (i < 0x100)
  {
    *(a1 + 428 + i) = v5;
    if (!--v7)
    {
      v7 = ++v5 - 2;
    }

    ++i;
  }

  __memset_chk();
  return __memset_chk();
}

uint64_t Ppmd7_Alloc(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 64) && *(a1 + 52) == a2)
  {
    return 1;
  }

  if (a2 >= 0xC)
  {
    Ppmd7_Free(a1);
    *(a1 + 104) = 4 - (a2 & 3);
    v2 = malloc_type_malloc(*(a1 + 104) + a2 + 12, 0x100004077774924uLL);
    *(a1 + 64) = v2;
    if (!v2)
    {
      return 0;
    }

    *(a1 + 52) = a2;
    return 1;
  }

  return 0;
}

uint64_t Ppmd7_Init(uint64_t a1, int a2)
{
  *(a1 + 36) = a2;
  result = RestartModel_0(a1);
  *(a1 + 1198) = 7;
  *(a1 + 1196) = 0;
  *(a1 + 1199) = 64;
  return result;
}

void *Ppmd7z_RangeDec_CreateVTable(void *result)
{
  *result = Range_GetThreshold;
  result[1] = Range_Decode_7z;
  result[2] = Range_DecodeBit_7z;
  return result;
}

void *PpmdRAR_RangeDec_CreateVTable(void *result)
{
  *result = Range_GetThreshold;
  result[1] = Range_Decode_RAR;
  result[2] = Range_DecodeBit_RAR;
  return result;
}

uint64_t PpmdRAR_RangeDec_Init(uint64_t a1)
{
  if (Ppmd_RangeDec_Init(a1))
  {
    *(a1 + 36) = 0x8000;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Ppmd7_DecodeSymbol(unsigned __int16 **a1, uint64_t a2)
{
  v36[288] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v33 = a2;
  if (a1[8])
  {
    if (**v34 == 1)
    {
      v3 = &v34[16 * (*(*v34 + 3) - 1) + 350];
      v4 = *(v34 + 8) + *(v34 + *(v34[8] + *(*v34 + 8)) + 683);
      v5 = *(v34 + *v34[2] + 940);
      *(v34 + 10) = v5;
      v25 = v3 + 2 * *(v34 + *(*v34 + 2) + 940) + v4 + v5 + ((*(v34 + 11) >> 26) & 0x20u);
      if ((*(v33 + 16))(v33, *v25))
      {
        *v25 -= (*v25 + 32) >> 7;
        *(v34 + 7) = PPMD7_kExpEscape[*v25 >> 10];
        for (i = 0; i < 0x20uLL; i += 8)
        {
          v36[i + 256] = -1;
          v36[i + 257] = -1;
          v36[i + 258] = -1;
          v36[i + 259] = -1;
          v36[i + 260] = -1;
          v36[i + 261] = -1;
          v36[i + 262] = -1;
          v36[i + 263] = -1;
        }

        *(&v36[256] + *(*v34 + 2)) = 0;
        *(v34 + 8) = 0;
        goto LABEL_24;
      }

      v24 = 0;
      *v25 = *v25 + 128 - ((*v25 + 32) >> 7);
      v6 = (*v34 + 2);
      v34[2] = v6;
      v24 = *v6;
      Ppmd7_UpdateBin(v34);
      return v24;
    }

    else
    {
      v32 = (v34[8] + *(*v34 + 4));
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v30 = (*v33)(v33, *(*v34 + 2));
      v29 = v32[1];
      if (v30 >= v29)
      {
        *(v34 + 8) = 0;
        v31 = **v34 - 1;
        do
        {
          v2 = v32;
          v32 += 6;
          v29 += v2[7];
          if (v29 > v30)
          {
            v27 = 0;
            (*(v33 + 8))(v33, v29 - v32[1], v32[1]);
            v34[2] = v32;
            v27 = *v32;
            Ppmd7_Update1(v34);
            return v27;
          }

          --v31;
        }

        while (v31);
        if (v30 < *(*v34 + 2))
        {
          *(v34 + 10) = *(v34 + *v34[2] + 940);
          (*(v33 + 8))(v33, v29, *(*v34 + 2) - v29);
          for (j = 0; j < 0x20uLL; j += 8)
          {
            v36[j + 256] = -1;
            v36[j + 257] = -1;
            v36[j + 258] = -1;
            v36[j + 259] = -1;
            v36[j + 260] = -1;
            v36[j + 261] = -1;
            v36[j + 262] = -1;
            v36[j + 263] = -1;
          }

          *(&v36[256] + *v32) = 0;
          v31 = **v34 - 1;
          do
          {
            v32 -= 6;
            *(&v36[256] + *v32) = 0;
            --v31;
          }

          while (v31);
LABEL_24:
          while (1)
          {
            bzero(v36, 0x200uLL);
            v22 = 0;
            v21 = 0;
            v14 = **v34;
            do
            {
              ++*(v34 + 6);
              if (!*(*v34 + 8))
              {
                return -1;
              }

              *v34 = v34[8] + *(*v34 + 8);
            }

            while (**v34 == v14);
            v18 = 0;
            v22 = (v34[8] + *(*v34 + 4));
            v16 = 0;
            v15 = **v34 - v14;
            do
            {
              v13 = *(&v36[256] + *v22);
              v18 += (v22[1] & v13);
              v7 = v22;
              v22 += 6;
              v36[v16] = v7;
              v16 -= v13;
            }

            while (v16 != v15);
            EscFreq = Ppmd7_MakeEscFreq(v34, v14, &v21);
            v21 += v18;
            v20 = (*v33)(v33, v21);
            if (v20 < v18)
            {
              break;
            }

            if (v20 >= v21)
            {
              return -2;
            }

            (*(v33 + 8))(v33, v18, v21 - v18);
            *EscFreq += v21;
            do
            {
              *(&v36[256] + *v36[--v16]) = 0;
            }

            while (v16);
          }

          v11 = v36;
          v19 = 0;
          while (1)
          {
            v19 += *(*v11 + 1);
            if (v19 > v20)
            {
              break;
            }

            ++v11;
          }

          v22 = *v11;
          (*(v33 + 8))(v33, v19 - v22[1], v22[1]);
          if (*(EscFreq + 2) < 7u)
          {
            v8 = *(EscFreq + 3);
            *(EscFreq + 3) = v8 - 1;
            if (v8 == 1)
            {
              *EscFreq *= 2;
              v9 = *(EscFreq + 2);
              *(EscFreq + 2) = v9 + 1;
              *(EscFreq + 3) = 3 << v9;
            }
          }

          v34[2] = v22;
          v12 = *v22;
          Ppmd7_Update2(v34);
          return v12;
        }

        else
        {
          return -2;
        }
      }

      else
      {
        v28 = 0;
        (*(v33 + 8))(v33, 0, v32[1]);
        v34[2] = v32;
        v28 = *v32;
        Ppmd7_Update1_0(v34);
        return v28;
      }
    }
  }

  else
  {
    return -1;
  }
}

uint64_t Ppmd7z_RangeEnc_Init(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 12) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t Ppmd7z_RangeEnc_FlushData(uint64_t result)
{
  v2 = result;
  for (i = 0; i < 5; ++i)
  {
    result = RangeEnc_ShiftLow(v2);
  }

  return result;
}

uint64_t *Ppmd7_EncodeSymbol(unsigned __int16 **a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  if (**a1 == 1)
  {
    v4 = &v26[16 * (*(*v26 + 3) - 1) + 350];
    v5 = *(v26 + 8) + *(v26 + *(v26[8] + *(*v26 + 8)) + 683);
    v6 = *(v26 + *v26[2] + 940);
    *(v26 + 10) = v6;
    v19 = v4 + 2 * *(v26 + *(*v26 + 2) + 940) + v5 + v6 + ((*(v26 + 11) >> 26) & 0x20u);
    v18 = (*v26 + 2);
    if (*v18 == v24)
    {
      RangeEnc_EncodeBit_0(v25, *v19);
      *v19 = *v19 + 128 - ((*v19 + 32) >> 7);
      v26[2] = v18;
      return Ppmd7_UpdateBin(v26);
    }

    result = RangeEnc_EncodeBit_1(v25, *v19);
    *v19 -= (*v19 + 32) >> 7;
    *(v26 + 7) = PPMD7_kExpEscape[*v19 >> 10];
    for (i = 0; i < 0x20uLL; i += 8)
    {
      *&v27[8 * i] = -1;
      *&v27[8 * i + 8] = -1;
      *&v27[8 * i + 16] = -1;
      *&v27[8 * i + 24] = -1;
      *&v27[8 * i + 32] = -1;
      *&v27[8 * i + 40] = -1;
      *&v27[8 * i + 48] = -1;
      *&v27[8 * i + 56] = -1;
    }

    v27[*v18] = 0;
    *(v26 + 8) = 0;
  }

  else
  {
    v23 = (v26[8] + *(*v26 + 4));
    v22 = 0;
    v21 = 0;
    if (*v23 == v24)
    {
      RangeEnc_Encode(v25, 0, v23[1], *(*v26 + 2));
      v26[2] = v23;
      return Ppmd7_Update1_0(v26);
    }

    *(v26 + 8) = 0;
    v22 = v23[1];
    v21 = **v26 - 1;
    do
    {
      v23 += 6;
      if (*v23 == v24)
      {
        RangeEnc_Encode(v25, v22, v23[1], *(*v26 + 2));
        v26[2] = v23;
        return Ppmd7_Update1(v26);
      }

      v22 += v23[1];
      --v21;
    }

    while (v21);
    *(v26 + 10) = *(v26 + *v26[2] + 940);
    for (j = 0; j < 0x20uLL; j += 8)
    {
      *&v27[8 * j] = -1;
      *&v27[8 * j + 8] = -1;
      *&v27[8 * j + 16] = -1;
      *&v27[8 * j + 24] = -1;
      *&v27[8 * j + 32] = -1;
      *&v27[8 * j + 40] = -1;
      *&v27[8 * j + 48] = -1;
      *&v27[8 * j + 56] = -1;
    }

    v27[*v23] = 0;
    v21 = **v26 - 1;
    do
    {
      v23 -= 6;
      v27[*v23] = 0;
      --v21;
    }

    while (v21);
    result = RangeEnc_Encode(v25, v22, *(*v26 + 2) - v22, *(*v26 + 2));
  }

LABEL_20:
  v16 = 0;
  v11 = **v26;
  while (1)
  {
    ++*(v26 + 6);
    if (!*(*v26 + 8))
    {
      return result;
    }

    *v26 = v26[8] + *(*v26 + 8);
    if (**v26 != v11)
    {
      EscFreq = Ppmd7_MakeEscFreq(v26, v11, &v16);
      v14 = (v26[8] + *(*v26 + 4));
      v13 = 0;
      v12 = **v26;
      while (*v14 != v24)
      {
        v13 += v14[1] & v27[*v14];
        v27[*v14] = 0;
        v14 += 6;
        if (!--v12)
        {
          result = RangeEnc_Encode(v25, v13, v16, v13 + v16);
          *EscFreq += v13 + v16;
          goto LABEL_20;
        }
      }

      v10 = v13;
      v9 = v14;
      do
      {
        v13 += v14[1] & v27[*v14];
        v14 += 6;
        --v12;
      }

      while (v12);
      RangeEnc_Encode(v25, v10, v9[1], v13 + v16);
      if (*(EscFreq + 2) < 7u)
      {
        v7 = *(EscFreq + 3);
        *(EscFreq + 3) = v7 - 1;
        if (v7 == 1)
        {
          *EscFreq *= 2;
          v8 = *(EscFreq + 2);
          *(EscFreq + 2) = v8 + 1;
          *(EscFreq + 3) = 3 << v8;
        }
      }

      v26[2] = v9;
      return Ppmd7_Update2(v26);
    }
  }
}

uint64_t RestartModel_0(uint64_t *a1)
{
  result = __memset_chk();
  a1[11] = a1[8] + *(a1 + 26);
  a1[10] = a1[11] + *(a1 + 13);
  v2 = a1[10] - 84 * (*(a1 + 13) / 8u / 0xC);
  a1[12] = v2;
  a1[9] = v2;
  *(a1 + 14) = 0;
  *(a1 + 6) = *(a1 + 9);
  if (*(a1 + 9) >= 0xCu)
  {
    v6 = 12;
  }

  else
  {
    v6 = *(a1 + 9);
  }

  v3 = -v6 - 1;
  *(a1 + 12) = v3;
  *(a1 + 11) = v3;
  *(a1 + 8) = 0;
  v4 = a1[10] - 12;
  a1[10] = v4;
  a1[1] = v4;
  *a1 = v4;
  *(*a1 + 8) = 0;
  **a1 = 256;
  *(*a1 + 2) = 257;
  a1[2] = a1[9];
  a1[9] += 1536;
  *(*a1 + 4) = a1[2] - a1[8];
  for (i = 0; i < 0x100; ++i)
  {
    v8 = (a1[2] + 6 * i);
    *v8 = i;
    v8[1] = 1;
    result = SetSuccessor_0(v8, 0);
  }

  for (j = 0; j < 0x80; ++j)
  {
    for (k = 0; k < 8; ++k)
    {
      v7 = 0x4000 - kInitBinEsc_0[k] / (j + 2);
      for (m = 0; m < 0x40; m += 8)
      {
        *(&a1[16 * j + 350] + k + m) = v7;
      }
    }
  }

  for (n = 0; n < 0x19; ++n)
  {
    for (ii = 0; ii < 0x10; ++ii)
    {
      v5 = &a1[8 * n + 150] + 4 * ii;
      v5[2] = 3;
      *v5 = 8 * (5 * n + 10);
      v5[3] = 4;
    }
  }

  return result;
}

uint64_t Range_GetThreshold(_DWORD *a1, unsigned int a2)
{
  v2 = a1[7] - a1[8];
  v3 = a1[6] / a2;
  a1[6] = v3;
  return v2 / v3;
}

uint64_t Range_Decode_7z(uint64_t a1, int a2, int a3)
{
  *(a1 + 28) -= a2 * *(a1 + 24);
  *(a1 + 24) *= a3;
  return Range_Normalize(a1);
}

uint64_t Range_DecodeBit_7z(uint64_t a1, int a2)
{
  v4 = (*(a1 + 24) >> 14) * a2;
  if (*(a1 + 28) >= v4)
  {
    v3 = 1;
    *(a1 + 28) -= v4;
    *(a1 + 24) -= v4;
  }

  else
  {
    v3 = 0;
    *(a1 + 24) = v4;
  }

  Range_Normalize(a1);
  return v3;
}

uint64_t Range_Normalize(uint64_t result)
{
  for (i = result; ; *(i + 32) <<= 8)
  {
    if ((*(i + 32) ^ (*(i + 32) + *(i + 24))) < 0x1000000)
    {
      goto LABEL_6;
    }

    if (*(i + 24) >= *(i + 36))
    {
      break;
    }

    *(i + 24) = -*(i + 32) & (*(i + 36) - 1);
LABEL_6:
    v1 = *(i + 28);
    result = (*(*(i + 40) + 8))(*(i + 40));
    *(i + 28) = result | (v1 << 8);
    *(i + 24) <<= 8;
  }

  return result;
}

uint64_t Range_Decode_RAR(uint64_t a1, int a2, int a3)
{
  *(a1 + 32) += a2 * *(a1 + 24);
  *(a1 + 24) *= a3;
  return Range_Normalize(a1);
}

uint64_t Range_DecodeBit_RAR(uint64_t a1, unsigned int a2)
{
  if ((*a1)(a1, 0x4000) >= a2)
  {
    v3 = 1;
    (*(a1 + 8))(a1, a2, 0x4000 - a2);
  }

  else
  {
    v3 = 0;
    (*(a1 + 8))(a1, 0, a2);
  }

  return v3;
}

BOOL Ppmd_RangeDec_Init(uint64_t a1)
{
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = -1;
  for (i = 0; i < 4; ++i)
  {
    v2 = *(a1 + 28);
    *(a1 + 28) = (*(*(a1 + 40) + 8))(*(a1 + 40)) | (v2 << 8);
  }

  return *(a1 + 28) != -1;
}

uint64_t *Ppmd7_Update1_0(void *a1)
{
  *(a1 + 8) = 2 * *(a1[2] + 1) > *(*a1 + 2);
  *(a1 + 11) += *(a1 + 8);
  *(*a1 + 2) += 4;
  v1 = a1[2];
  v2 = *(v1 + 1) + 4;
  *(v1 + 1) = v2;
  if (v2 > 0x7Cu)
  {
    Rescale_0(a1);
  }

  return NextContext_0(a1);
}

uint64_t *Ppmd7_Update1(unsigned __int16 **a1)
{
  v2 = a1[2];
  *(v2 + 1) += 4;
  (*a1)[1] += 4;
  if (*(v2 + 1) > *(v2 - 5))
  {
    SwapStates_0(v2, (v2 - 3));
    v3 = v2 - 3;
    a1[2] = v3;
    if (*(v3 + 1) > 0x7Cu)
    {
      Rescale_0(a1);
    }
  }

  return NextContext_0(a1);
}

uint64_t *Ppmd7_UpdateBin(uint64_t a1)
{
  *(*(a1 + 16) + 1) += *(*(a1 + 16) + 1) < 0x80u;
  *(a1 + 32) = 1;
  ++*(a1 + 44);
  return NextContext_0(a1);
}

unsigned int *Ppmd7_MakeEscFreq(unsigned int *a1, unsigned int a2, int *a3)
{
  if (**a1 == 256)
  {
    v7 = a1 + 299;
    *a3 = 1;
  }

  else
  {
    v6 = **a1 - a2;
    v7 = &a1[16 * *(a1 + v6 + 427) + 300 + 4 * (a2 > v6) + 2 * (*(*a1 + 2) < 11 * **a1) + (v6 < *(*(a1 + 8) + *(*a1 + 8)) - **a1) + a1[10]];
    v5 = *v7 >> *(v7 + 2);
    *v7 -= v5;
    v3 = v5;
    if (!v5)
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return v7;
}

uint64_t *Ppmd7_Update2(unsigned __int16 **a1)
{
  (*a1)[1] += 4;
  v1 = a1[2];
  v2 = *(v1 + 1) + 4;
  *(v1 + 1) = v2;
  if (v2 > 0x7Cu)
  {
    Rescale_0(a1);
  }

  *(a1 + 11) = *(a1 + 12);
  return UpdateModel_0(a1);
}

unsigned __int16 **Rescale_0(unsigned __int16 **result)
{
  v20 = result;
  v15 = (v20[8] + *(*v20 + 1));
  v14 = result[2];
  v12 = *v14;
  v13 = v14[2];
  while (v14 != v15)
  {
    *v14 = *(v14 - 3);
    v14[2] = *(v14 - 1);
    v14 -= 3;
  }

  *v14 = v12;
  v14[2] = v13;
  v16 = (*result)[1] - *(v14 + 1);
  *(v14 + 1) += 4;
  v18 = *(result + 6) != 0;
  *(v14 + 1) = (*(v14 + 1) + v18) >> 1;
  v17 = *(v14 + 1);
  v19 = **result - 1;
  do
  {
    v1 = v14;
    v14 += 3;
    v16 -= *(v1 + 7);
    *(v14 + 1) = (*(v14 + 1) + v18) >> 1;
    v17 += *(v14 + 1);
    if (*(v14 + 1) > *(v14 - 5))
    {
      v11 = v14;
      v9 = *v14;
      v10 = v14[2];
      do
      {
        *v11 = *(v11 - 3);
        v11[2] = *(v11 - 1);
        v11 -= 3;
        v4 = 0;
        if (v11 != v15)
        {
          v4 = BYTE1(v9) > *(v11 - 5);
        }
      }

      while (v4);
      *v11 = v9;
      v11[2] = v10;
    }

    --v19;
  }

  while (v19);
  if (*(v14 + 1))
  {
    goto LABEL_21;
  }

  v8 = **result;
  do
  {
    ++v19;
    v2 = v14;
    v14 -= 3;
  }

  while (!*(v2 - 5));
  v16 += v19;
  **result -= v19;
  if (**result != 1)
  {
    v7 = (**result + 1) >> 1;
    if ((v8 + 1) >> 1 != v7)
    {
      result = ShrinkUnits_0(result, v15, (v8 + 1) >> 1, v7);
      *(*v20 + 1) = result - v20[8];
    }

LABEL_21:
    (*v20)[1] = v17 + v16 - (v16 >> 1);
    v20[2] = (v20[8] + *(*v20 + 1));
    return result;
  }

  v5 = *v15;
  v6 = v15[2];
  do
  {
    BYTE1(v5) -= BYTE1(v5) >> 1;
    v16 >>= 1;
  }

  while (v16 > 1);
  result = InsertNode_0(result, v15, *(result + ((v8 + 1) >> 1) + 145));
  v3 = *v20;
  v20[2] = *v20 + 1;
  *(v3 + 1) = v5;
  v3[3] = v6;
  return result;
}

uint64_t *NextContext_0(uint64_t *result)
{
  v1 = result[8] + (*(result[2] + 2) | (*(result[2] + 4) << 16));
  if (*(result + 6) || v1 <= result[11])
  {
    return UpdateModel_0(result);
  }

  result[1] = v1;
  *result = v1;
  return result;
}

uint64_t InsertNode_0(uint64_t result, _DWORD *a2, unsigned int a3)
{
  *a2 = *(result + 276 + 4 * a3);
  *(result + 276 + 4 * a3) = a2 - *(result + 64);
  return result;
}

_DWORD *ShrinkUnits_0(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v10 = *(a1 + 146 + (a3 - 1));
  v9 = *(a1 + 146 + (a4 - 1));
  if (v10 == v9)
  {
    return a2;
  }

  if (*(a1 + 276 + 4 * *(a1 + 146 + (a4 - 1))))
  {
    v8 = RemoveNode_0(a1, v9);
    v7 = v8;
    v6 = a2;
    v5 = a4;
    do
    {
      *v7 = *v6;
      v7[1] = v6[1];
      v7[2] = v6[2];
      v6 += 3;
      v7 += 3;
      --v5;
    }

    while (v5);
    InsertNode_0(a1, a2, v10);
    return v8;
  }

  else
  {
    SplitBlock_0(a1, a2, v10, v9);
    return a2;
  }
}

_DWORD *RemoveNode_0(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) + *(a1 + 276 + 4 * a2));
  *(a1 + 276 + 4 * a2) = *v3;
  return v3;
}

uint64_t SplitBlock_0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 108 + a3) - *(a1 + 108 + a4);
  v8 = (a2 + 12 * *(a1 + 108 + a4));
  v7 = *(a1 + 146 + (v6 - 1));
  if (*(a1 + 108 + *(a1 + 146 + (v6 - 1))) != v6)
  {
    v5 = *(a1 + 108 + --v7);
    InsertNode_0(a1, (v8 + (12 * v5)), v6 - v5 - 1);
  }

  return InsertNode_0(a1, v8, v7);
}

uint64_t *UpdateModel_0(uint64_t *result)
{
  v29 = result;
  v27 = *(result[2] + 2) | (*(result[2] + 4) << 16);
  if (*(result[2] + 1) < 0x1Fu && *(*result + 8))
  {
    v25 = result[8] + *(*result + 8);
    if (*v25 == 1)
    {
      if (*(v25 + 3) < 0x20u)
      {
        ++*(v25 + 3);
      }
    }

    else
    {
      v22 = (result[8] + *(v25 + 4));
      if (*v22 != *result[2])
      {
        do
        {
          v22 = (v22 + 6);
        }

        while (*v22 != *result[2]);
        if (*(v22 + 1) >= *(v22 - 5))
        {
          result = SwapStates_0(v22, (v22 - 6));
          v22 = (v22 - 6);
        }
      }

      if (*(v22 + 1) < 0x73u)
      {
        *(v22 + 1) += 2;
        *(v25 + 2) += 2;
      }
    }
  }

  if (!*(v29 + 6))
  {
    Successors_0 = CreateSuccessors_0(v29, 1);
    v29[1] = Successors_0;
    *v29 = Successors_0;
    if (*v29)
    {
      return SetSuccessor_0(v29[2], *v29 - v29[8]);
    }

    return RestartModel_0(v29);
  }

  v2 = *v29[2];
  v3 = v29[11];
  v29[11] = (v3 + 1);
  *v3 = v2;
  v28 = v29[11] - v29[8];
  if (v29[11] >= v29[12])
  {
    return RestartModel_0(v29);
  }

  if (!v27)
  {
    result = SetSuccessor_0(v29[2], v28);
    v27 = *v29 - v29[8];
    goto LABEL_25;
  }

  if (v27 <= v28)
  {
    result = CreateSuccessors_0(v29, 0);
    if (result)
    {
      v27 = result - v29[8];
      goto LABEL_21;
    }

    return RestartModel_0(v29);
  }

LABEL_21:
  v4 = *(v29 + 6) - 1;
  *(v29 + 6) = v4;
  if (!v4)
  {
    v28 = v27;
    v29[11] -= v29[1] != *v29;
  }

LABEL_25:
  v23 = **v29;
  v24 = *(*v29 + 2) - v23 - (*(v29[2] + 1) - 1);
  for (i = v29[1]; i != *v29; i = (v29[8] + *(i + 2)))
  {
    v21 = *i;
    if (v21 == 1)
    {
      v11 = AllocUnits_0(v29, 0);
      if (!v11)
      {
        return RestartModel_0(v29);
      }

      *v11 = *(i + 1);
      *(v11 + 2) = i[3];
      *(i + 1) = v11 - v29[8];
      if (*(v11 + 1) < 0x1Eu)
      {
        *(v11 + 1) *= 2;
      }

      else
      {
        *(v11 + 1) = 120;
      }

      v6 = *(v11 + 1) + *(v29 + 7);
      if (v23 > 3)
      {
        LOWORD(v6) = v6 + 1;
      }

      i[1] = v6;
    }

    else
    {
      if ((v21 & 1) == 0)
      {
        v17 = *(v29 + (v21 >> 1) + 145);
        if (v17 != *(v29 + (v21 >> 1) + 146))
        {
          v16 = AllocUnits_0(v29, v17 + 1);
          if (!v16)
          {
            return RestartModel_0(v29);
          }

          v15 = (v29[8] + *(i + 1));
          v14 = v16;
          v13 = v15;
          v12 = v21 >> 1;
          do
          {
            *v14 = *v13;
            v14[1] = v13[1];
            v14[2] = v13[2];
            v13 += 3;
            v14 += 3;
            --v12;
          }

          while (v12);
          InsertNode_0(v29, v15, v17);
          *(i + 1) = v16 - v29[8];
        }
      }

      v5 = i[1];
      if (2 * v21 < v23)
      {
        ++v5;
      }

      i[1] = v5 + 2 * (4 * v21 <= v23 && i[1] <= 8 * v21);
    }

    v19 = 2 * *(v29[2] + 1) * (i[1] + 6);
    v18 = v24 + i[1];
    if (v19 >= 6 * v18)
    {
      if (v19 < 9 * v18)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      if (v19 >= 12 * v18)
      {
        ++v8;
      }

      if (v19 >= 15 * v18)
      {
        ++v8;
      }

      v20 = v8;
      i[1] += v8;
    }

    else
    {
      if (v19 <= v18)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if (v19 >= 4 * v18)
      {
        ++v7;
      }

      v20 = v7;
      i[1] += 3;
    }

    v10 = (v29[8] + *(i + 1) + 6 * v21);
    result = SetSuccessor_0(v10, v28);
    *v10 = *v29[2];
    v10[1] = v20;
    *i = v21 + 1;
  }

  v9 = v29[8] + v27;
  *v29 = v9;
  v29[1] = v9;
  return result;
}

int *SwapStates_0(int *result, int *a2)
{
  v2 = *result;
  v3 = *(result + 2);
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

unsigned __int16 *CreateSuccessors_0(unsigned __int16 **a1, int a2)
{
  v20[64] = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  v15 = 0;
  v16 = 0;
  v14 = *a1;
  v13 = a1[2][1] | (a1[2][2] << 16);
  bzero(v20, 0x200uLL);
  v12 = 0;
  if (!v17)
  {
    v12 = 1;
    v20[0] = v18[2];
  }

  while (*(v14 + 2))
  {
    v14 = (v18[8] + *(v14 + 2));
    if (*v14 == 1)
    {
      i = (v14 + 1);
    }

    else
    {
        ;
      }
    }

    v11 = *(i + 1) | (*(i + 2) << 16);
    if (v11 != v13)
    {
      v14 = (v18[8] + v11);
      if (!v12)
      {
        return (v18[8] + v11);
      }

      break;
    }

    v2 = v12++;
    v20[v2] = i;
  }

  LOBYTE(v15) = *(v18[8] + v13);
  SetSuccessor_0(&v15, v13 + 1);
  if (*v14 == 1)
  {
    BYTE1(v15) = *(v14 + 3);
  }

  else
  {
      ;
    }

    v9 = j[1] - 1;
    v8 = v14[1] - *v14 - v9;
    if (2 * v9 > v8)
    {
      v5 = (2 * v9 + 3 * v8 - 1) / (2 * v8);
    }

    else
    {
      LOBYTE(v5) = 5 * v9 > v8;
    }

    BYTE1(v15) = v5 + 1;
  }

  while (v12)
  {
    if (v18[10] == v18[9])
    {
      if (*(v18 + 69))
      {
        v6 = RemoveNode_0(v18, 0);
      }

      else
      {
        v6 = AllocUnitsRare_0(v18, 0);
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      v3 = (v18[10] - 6);
      v18[10] = v3;
      v6 = v3;
    }

    *v6 = 1;
    *(v6 + 2) = v15;
    *(v6 + 3) = v16;
    v6[2] = v14 - v18[8];
    SetSuccessor_0(v20[--v12], v6 - v18[8]);
    v14 = v6;
  }

  return v14;
}

_DWORD *AllocUnits_0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 276 + 4 * a2))
  {
    return RemoveNode_0(a1, a2);
  }

  v4 = 12 * *(a1 + 108 + a2);
  if (v4 > *(a1 + 80) - *(a1 + 72))
  {
    return AllocUnitsRare_0(a1, a2);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = v3 + v4;
  return v3;
}

_DWORD *AllocUnitsRare_0(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 56))
  {
    GlueFreeBlocks_0(a1);
    if (*(a1 + 276 + 4 * a2))
    {
      return RemoveNode_0(a1, a2);
    }
  }

  v7 = a2;
  while (++v7 != 38)
  {
    if (*(a1 + 276 + 4 * v7))
    {
      v6 = RemoveNode_0(a1, v7);
      SplitBlock_0(a1, v6, v7, a2);
      return v6;
    }
  }

  v5 = 12 * *(a1 + 108 + a2);
  --*(a1 + 56);
  if (*(a1 + 96) - *(a1 + 88) <= v5)
  {
    return 0;
  }

  v2 = *(a1 + 96) - v5;
  *(a1 + 96) = v2;
  return v2;
}

uint64_t GlueFreeBlocks_0(uint64_t result)
{
  v15 = result;
  v14 = *(v15 + 104) + *(v15 + 52);
  v12 = v14;
  *(result + 56) = 255;
  for (i = 0; i < 0x26; ++i)
  {
    v9 = *(result + 108 + i);
    v8 = *(result + 276 + 4 * i);
    *(result + 276 + 4 * i) = 0;
    while (v8)
    {
      v7 = *(result + 64) + v8;
      *(v7 + 4) = v12;
      *(*(result + 64) + v12 + 8) = v8;
      v12 = v8;
      v8 = *v7;
      *v7 = 0;
      *(v7 + 2) = v9;
    }
  }

  *(*(result + 64) + v14) = 1;
  *(*(result + 64) + v14 + 4) = v12;
  *(*(result + 64) + v12 + 8) = v14;
  if (*(result + 72) != *(result + 80))
  {
    **(result + 72) = 1;
  }

  while (v12 != v14)
  {
    v6 = *(result + 64) + v12;
    for (j = *(v6 + 2); ; *(v6 + 2) = j)
    {
      v4 = *(result + 64) + v12 + 12 * j;
      j += *(v4 + 2);
      if (*v4 || j >= 0x10000)
      {
        break;
      }

      *(*(result + 64) + *(v4 + 8) + 4) = *(v4 + 4);
      *(*(result + 64) + *(v4 + 4) + 8) = *(v4 + 8);
    }

    v12 = *(v6 + 4);
  }

  for (k = *(*(result + 64) + v14 + 4); k != v14; k = v1)
  {
    v3 = *(v15 + 64) + k;
    v1 = *(v3 + 4);
    for (m = *(v3 + 2); m > 0x80; m -= 128)
    {
      InsertNode_0(v15, v3, 0x25u);
      v3 += 1536;
    }

    v11 = *(v15 + 146 + m - 1);
    if (*(v15 + 108 + *(v15 + 146 + m - 1)) != m)
    {
      --v11;
      InsertNode_0(v15, (v3 + 12 * *(v15 + 108 + v11)), m - *(v15 + 108 + v11) - 1);
    }

    result = InsertNode_0(v15, v3, v11);
  }

  return result;
}

uint64_t RangeEnc_ShiftLow(uint64_t result)
{
  v3 = result;
  if (*result < 0xFF000000 || HIDWORD(*result))
  {
    v2 = *(result + 12);
    do
    {
      result = (*(*(v3 + 24) + 8))(*(v3 + 24), (v2 + HIDWORD(*v3)));
      v2 = -1;
      v1 = *(v3 + 16) - 1;
      *(v3 + 16) = v1;
    }

    while (v1);
    *(v3 + 12) = BYTE3(*v3);
  }

  ++*(v3 + 16);
  *v3 = *v3 << 8;
  return result;
}

uint64_t RangeEnc_Encode(uint64_t result, unsigned int a2, int a3, unsigned int a4)
{
  v5 = result;
  v4 = *(result + 8) / a4;
  *(result + 8) = v4;
  *result += a2 * v4;
  *(result + 8) *= a3;
  while (*(v5 + 8) < 0x1000000u)
  {
    *(v5 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v5);
  }

  return result;
}

uint64_t RangeEnc_EncodeBit_0(uint64_t result, int a2)
{
  v2 = result;
  *(result + 8) = (*(result + 8) >> 14) * a2;
  while (*(v2 + 8) < 0x1000000u)
  {
    *(v2 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v2);
  }

  return result;
}

uint64_t RangeEnc_EncodeBit_1(uint64_t result, int a2)
{
  v3 = result;
  v2 = (*(result + 8) >> 14) * a2;
  *result += v2;
  *(result + 8) -= v2;
  while (*(v3 + 8) < 0x1000000u)
  {
    *(v3 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v3);
  }

  return result;
}

uint64_t xar_read_header(uint64_t a1, _DWORD *a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  i = 0;
  toc = 0;
  v14 = **(a1 + 2072);
  toc = 0;
  if (*v14)
  {
    while (1)
    {
LABEL_7:
      entry_0 = heap_get_entry_0((v14 + 856));
      *(v14 + 840) = entry_0;
      v13 = entry_0;
      if (!entry_0)
      {
        *(v14 + 24) = 1;
        return 1;
      }

      if ((v13[36] & 0xF000) != 0x4000 || *(v13 + 7) != 130)
      {
        break;
      }

      file_free_1(v13);
    }

    if ((*(v13 + 7) & 0x20000) != 0)
    {
      archive_entry_set_atime(v15, v13[27], 0);
    }

    if ((*(v13 + 7) & 0x8000) != 0)
    {
      archive_entry_set_ctime(v15, v13[25], 0);
    }

    if ((*(v13 + 7) & 0x10000) != 0)
    {
      archive_entry_set_mtime(v15, v13[26], 0);
    }

    archive_entry_set_gid(v15, v13[35]);
    if (v13[33] && _archive_entry_copy_gname_l(v15, v13[32], v13[33], *(v14 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v16, 12, "Can't allocate memory for Gname");
        return -30;
      }

      v3 = archive_string_conversion_charset_name(*(v14 + 1016));
      archive_set_error(v16, 79, "Gname cannot be converted from %s to current locale.", v3);
      toc = -20;
    }

    archive_entry_set_uid(v15, v13[31]);
    if (v13[29] && _archive_entry_copy_uname_l(v15, v13[28], v13[29], *(v14 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v16, 12, "Can't allocate memory for Uname");
        return -30;
      }

      v4 = archive_string_conversion_charset_name(*(v14 + 1016));
      archive_set_error(v16, 79, "Uname cannot be converted from %s to current locale.", v4);
      toc = -20;
    }

    archive_entry_set_mode(v15, *(v13 + 144));
    if (_archive_entry_copy_pathname_l(v15, v13[19], v13[20], *(v14 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v16, 12, "Can't allocate memory for Pathname");
        return -30;
      }

      v5 = archive_string_conversion_charset_name(*(v14 + 1016));
      archive_set_error(v16, 79, "Pathname cannot be converted from %s to current locale.", v5);
      toc = -20;
    }

    if (v13[23] && _archive_entry_copy_symlink_l(v15, v13[22], v13[23], *(v14 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v16, 12, "Can't allocate memory for Linkname");
        return -30;
      }

      v6 = archive_string_conversion_charset_name(*(v14 + 1016));
      archive_set_error(v16, 79, "Linkname cannot be converted from %s to current locale.", v6);
      toc = -20;
    }

    if ((v13[36] & 0xF000) == 0x4000)
    {
      archive_entry_set_nlink(v15, *(v13 + 6) + 2);
    }

    else
    {
      archive_entry_set_nlink(v15, *(v13 + 85));
    }

    archive_entry_set_size(v15, v13[7]);
    if (v13[44])
    {
      archive_entry_set_hardlink(v15, v13[43]);
    }

    archive_entry_set_ino64(v15, v13[38]);
    if ((*(v13 + 7) & 0x100) != 0)
    {
      archive_entry_set_dev(v15, *(v13 + 73));
    }

    if ((*(v13 + 7) & 0x200) != 0)
    {
      archive_entry_set_devmajor(v15, *(v13 + 74));
    }

    if ((*(v13 + 7) & 0x400) != 0)
    {
      archive_entry_set_devminor(v15, *(v13 + 75));
    }

    if (v13[40])
    {
      archive_entry_copy_fflags_text(v15, v13[39]);
    }

    *(v14 + 888) = 1;
    *(v14 + 896) = 0;
    *(v14 + 904) = v13[5];
    *(v14 + 920) = v13[7];
    *(v14 + 928) = *(v13 + 16);
    memcpy((v14 + 936), v13 + 9, 0x28uLL);
    memcpy((v14 + 976), v13 + 14, 0x28uLL);
    for (i = v13[46]; i; i = *i)
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      toc = move_reading_point(v16, i[6]);
      if (toc)
      {
        break;
      }

      toc = rd_contents_init(v16, *(i + 16), *(i + 18), *(i + 28));
      if (toc)
      {
        break;
      }

      v10 = 0;
      toc = rd_contents(v16, &v10, &v9, &v8, i[5]);
      if (toc)
      {
        break;
      }

      if (v9 != i[7])
      {
        archive_set_error(v16, -1, "Decompressed size error");
        toc = -30;
        break;
      }

      toc = checksum_final_0(v16, i + 11, i[10], i + 16, i[15]);
      if (toc)
      {
        archive_set_error(v16, -1, "Xattr checksum error");
        toc = -20;
        break;
      }

      if (!i[1])
      {
        archive_set_error(v16, -1, "Xattr name error");
        toc = -20;
        break;
      }

      archive_entry_xattr_add_entry(v15, i[1], v10, v9);
    }

    if (!toc)
    {
      if (*(v14 + 904))
      {
        toc = move_reading_point(v16, v13[6]);
      }

      else
      {
        toc = 0;
      }
    }

    file_free_1(v13);
    return toc;
  }

  else if (*(v14 + 1016) || (*(v14 + 1016) = archive_string_conversion_from_charset(v16, "UTF-8", 1)) != 0)
  {
    toc = read_toc(v16);
    if (!toc)
    {
      goto LABEL_7;
    }

    return toc;
  }

  else
  {
    return -30;
  }
}

uint64_t xar_read_data(uint64_t a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  v8 = **(a1 + 2072);
  if (*(v8 + 912))
  {
    __archive_read_consume(v12, *(v8 + 912));
    *(v8 + 912) = 0;
  }

  if (*(v8 + 24) || !*(v8 + 904))
  {
    v5 = 1;
LABEL_16:
    *v11 = 0;
    *v10 = 0;
    *v9 = *(v8 + 8);
    return v5;
  }

  if (*(v8 + 888))
  {
    v6 = rd_contents_init(v12, *(v8 + 928), *(v8 + 936), *(v8 + 976));
    if (v6)
    {
      *(v8 + 904) = 0;
      return v6;
    }

    *(v8 + 888) = 0;
  }

  *v11 = 0;
  v5 = rd_contents(v12, v11, v10, &v7, *(v8 + 904));
  if (v5)
  {
    goto LABEL_16;
  }

  *v9 = *(v8 + 896);
  *(v8 + 896) += *v10;
  *(v8 + 8) += *v10;
  *v8 += v7;
  *(v8 + 904) -= v7;
  *(v8 + 912) = v7;
  if (!*(v8 + 904))
  {
    if (*(v8 + 896) != *(v8 + 920))
    {
      archive_set_error(v12, -1, "Decompressed size error");
      v5 = -30;
      goto LABEL_16;
    }

    v5 = checksum_final_0(v12, (v8 + 952), *(v8 + 944), (v8 + 992), *(v8 + 984));
    if (v5)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t xar_read_data_skip(uint64_t a1)
{
  v3 = **(a1 + 2072);
  if (*(v3 + 24))
  {
    return 1;
  }

  else
  {
    consume = __archive_read_consume(a1, *(v3 + 904) + *(v3 + 912));
    if (consume < 0)
    {
      return -30;
    }

    else
    {
      *v3 += consume;
      *(v3 + 912) = 0;
      return 0;
    }
  }
}

uint64_t read_toc(uint64_t a1)
{
  v20 = a1;
  v19 = 0;
  i = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v19 = **(a1 + 2072);
  v17 = __archive_read_ahead(a1, 0x1CuLL, &v13);
  if (v13 < 0)
  {
    return v13;
  }

  else if (v13 >= 28)
  {
    if (archive_be32dec_2(v17) == 2019652129)
    {
      if (archive_be16dec(v17 + 3) == 1)
      {
        v16 = archive_be64dec(v17 + 2);
        v19[8] = v16;
        v15 = archive_be64dec(v17 + 4);
        v14 = archive_be32dec_2(v17 + 6);
        __archive_read_consume(v20, 28);
        *v19 += 28;
        v19[9] = 0;
        v8 = move_reading_point(v20, 28);
        if (v8)
        {
          return v8;
        }

        else
        {
          v9 = rd_contents_init(v20, 1, v14, 0);
          if (v9)
          {
            return v9;
          }

          else
          {
            toc = xml2_read_toc(v20);
            if (toc)
            {
              return toc;
            }

            else
            {
              v19[2] = *v19;
              if (v19[9] == v15)
              {
                if (v14)
                {
                  v11 = move_reading_point(v20, v19[10]);
                  if (v11)
                  {
                    return v11;
                  }

                  v17 = __archive_read_ahead(v20, v19[11], &v13);
                  if (v13 < 0)
                  {
                    return v13;
                  }

                  if (v13 < v19[11])
                  {
                    archive_set_error(v20, 79, "Truncated archive file");
                    return -30;
                  }

                  v12 = checksum_final_0(v20, v17, v19[11], 0, 0);
                  __archive_read_consume(v20, v19[11]);
                  *v19 += v19[11];
                  if (v12)
                  {
                    return -30;
                  }
                }

                for (i = v19[109]; i; i = *(i + 8))
                {
                  for (j = (v19 + 110); *j; j = *j)
                  {
                    if (*(*j + 2) == *(i + 32))
                    {
                      v4 = *(*j + 3) + 1;
                      *(i + 340) = v4;
                      for (k = (*j)[2]; k; k = *(k + 8))
                      {
                        *(k + 340) = v4;
                        *(k + 352) = 0;
                        archive_string_concat((k + 344), (i + 152));
                      }

                      v6 = *j;
                      *j = **j;
                      free(v6);
                      break;
                    }
                  }
                }

                v20[4] = 655360;
                *(v20 + 3) = "xar";
                return 0;
              }

              else
              {
                archive_set_error(v20, -1, "TOC uncompressed size error");
                return -30;
              }
            }
          }
        }
      }

      else
      {
        v3 = v20;
        v1 = archive_be16dec(v17 + 3);
        archive_set_error(v3, 79, "Unsupported header version(%d)", v1);
        return -30;
      }
    }

    else
    {
      archive_set_error(v20, 79, "Invalid header magic");
      return -30;
    }
  }

  else
  {
    archive_set_error(v20, 79, "Truncated archive header");
    return -30;
  }
}

uint64_t heap_get_entry_0(_DWORD *a1)
{
  if (a1[3] < 1)
  {
    return 0;
  }

  v5 = **a1;
  v1 = *a1;
  v2 = a1[3] - 1;
  a1[3] = v2;
  **a1 = *(v1 + 8 * v2);
  v8 = 0;
  v10 = *(**a1 + 32);
  while (1)
  {
    v7 = 2 * v8 + 1;
    if (v7 >= a1[3])
    {
      return v5;
    }

    v9 = *(*(*a1 + 8 * v7) + 32);
    v6 = 2 * v8 + 2;
    if (v6 < a1[3] && *(*(*a1 + 8 * v6) + 32) < v9)
    {
      v7 = 2 * v8 + 2;
      v9 = *(*(*a1 + 8 * v6) + 32);
    }

    if (v10 <= v9)
    {
      break;
    }

    v4 = *(*a1 + 8 * v8);
    *(*a1 + 8 * v8) = *(*a1 + 8 * v7);
    *(*a1 + 8 * v7) = v4;
    v8 = v7;
  }

  return v5;
}

void file_free_1(void *a1)
{
  archive_string_free((a1 + 19));
  archive_string_free((a1 + 22));
  archive_string_free((a1 + 28));
  archive_string_free((a1 + 32));
  archive_string_free((a1 + 43));
  for (i = a1[46]; i; i = v1)
  {
    v1 = *i;
    xattr_free(i);
  }

  free(a1);
}

uint64_t move_reading_point(uint64_t a1, uint64_t a2)
{
  v6 = **(a1 + 2072);
  if (*v6 - v6[2] == a2)
  {
    return 0;
  }

  v4 = a2 - (*v6 - v6[2]);
  if (v4 <= 0)
  {
    seek = __archive_read_seek(a1, v6[2] + a2, 0);
    if (seek == -25)
    {
      archive_set_error(a1, -1, "Cannot seek.");
      return -25;
    }

    *v6 = seek;
    return 0;
  }

  consume = __archive_read_consume(a1, v4);
  if ((consume & 0x8000000000000000) == 0)
  {
    *v6 += consume;
    return 0;
  }

  return consume;
}

uint64_t rd_contents_init(uint64_t a1, int a2, int a3, int a4)
{
  v5 = decompression_init(a1, a2);
  if (v5)
  {
    return v5;
  }

  else
  {
    checksum_init_0(a1, a3, a4);
    return 0;
  }
}

uint64_t rd_contents(_DWORD *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = 0;
  v6 = 0;
  v7 = __archive_read_ahead(a1, 1uLL, &v6);
  if ((v6 & 0x8000000000000000) != 0)
  {
    return v6;
  }

  else if (v6)
  {
    if (v6 > v8)
    {
      v6 = v8;
    }

    *v9 = v6;
    if (decompress_0(v12, v11, v10, v7, v9))
    {
      return -30;
    }

    else
    {
      checksum_update_0(v12, v7, *v9, *v11, *v10);
      return 0;
    }
  }

  else
  {
    archive_set_error(v12, -1, "Truncated archive file");
    return -30;
  }
}

uint64_t checksum_final_0(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v7 = **(a1 + 2072);
  v6 = _checksum_final((v7 + 452), a2, a3);
  if (!v6)
  {
    v6 = _checksum_final((v7 + 644), a4, a5);
  }

  if (v6)
  {
    archive_set_error(a1, -1, "Sumcheck error");
  }

  return v6;
}

uint64_t xml2_read_toc(_DWORD *a1)
{
  v12 = a1;
  v10[0] = 0;
  v10[1] = 0;
  v11 = xmlReaderForIO(xml2_read_cb, xml2_close_cb, a1, 0, 0, 0);
  if (v11)
  {
    xmlTextReaderSetErrorHandler(v11, xml2_error_hdr, v12);
    while (1)
    {
      v8 = xmlTextReaderRead(v11);
      if (v8 != 1)
      {
        break;
      }

      v5 = xmlTextReaderNodeType(v11);
      v7 = xmlTextReaderConstLocalName(v11);
      switch(v5)
      {
        case 1:
          IsEmptyElement = xmlTextReaderIsEmptyElement(v11);
          v9 = xml2_xmlattr_setup(v12, v10, v11);
          if (!v9)
          {
            v9 = xml_start(v12, v7, v10);
          }

          xmlattr_cleanup(v10);
          if (v9)
          {
            xmlFreeTextReader(v11);
            xmlCleanupParser();
            return v9;
          }

          if (IsEmptyElement)
          {
            xml_end(v12, v7);
          }

          break;
        case 3:
          __s = xmlTextReaderConstValue(v11);
          v1 = strlen(__s);
          xml_data(v12, __s, v1);
          break;
        case 15:
          xml_end(v12, v7);
          break;
      }
    }

    xmlFreeTextReader(v11);
    xmlCleanupParser();
    if (v8)
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
    archive_set_error(v12, 12, "Couldn't allocate memory for xml parser");
    return -30;
  }
}

uint64_t xml2_read_cb(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v9 = a1;
  v8 = **(a1 + 2072);
  if (v8[8])
  {
    v7 = v11;
    v6 = v10;
    v4 = rd_contents(v9, &v7, &v6, &v5, v8[8]);
    if (v4)
    {
      return v4;
    }

    else
    {
      __archive_read_consume(v9, v5);
      v8[8] -= v5;
      *v8 += v5;
      v8[9] += v6;
      return v6;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD *xml2_error_hdr(_DWORD *result, const char *a2, int a3)
{
  if (a3 == 1 || a3 == 2 || a3 == 3 || a3 == 4)
  {
    return archive_set_error(result, -1, "XML Parsing error: %s", a2);
  }

  return result;
}

uint64_t xml2_xmlattr_setup(_DWORD *a1, void *a2, xmlTextReader *a3)
{
  *a2 = 0;
  a2[1] = a2;
  for (i = xmlTextReaderMoveToFirstAttribute(a3); i == 1; i = xmlTextReaderMoveToNextAttribute(a3))
  {
    v7 = malloc_type_malloc(0x18uLL, 0x30040F310086FuLL);
    if (!v7)
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    v3 = xmlTextReaderConstLocalName(a3);
    v7[1] = strdup(v3);
    if (!v7[1])
    {
      free(v7);
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    v4 = xmlTextReaderConstValue(a3);
    v7[2] = strdup(v4);
    if (!v7[2])
    {
      free(v7[1]);
      free(v7);
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    *v7 = 0;
    *a2[1] = v7;
    a2[1] = v7;
  }

  return i;
}

uint64_t xml_start(uint64_t a1, char *a2, uint64_t ***a3)
{
  v10 = **(a1 + 2072);
  *(v10 + 56) = 0;
  v3 = *(v10 + 40);
  v7 = v3;
  switch(v3)
  {
    case 0u:
      if (!strcmp(a2, "xar"))
      {
        *(v10 + 40) = 1;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 1u:
      if (!strcmp(a2, "toc"))
      {
        *(v10 + 40) = 2;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 2u:
      if (!strcmp(a2, "creation-time"))
      {
        *(v10 + 40) = 3;
        goto LABEL_160;
      }

      if (!strcmp(a2, "checksum"))
      {
        *(v10 + 40) = 4;
        goto LABEL_160;
      }

      if (!strcmp(a2, "file"))
      {
        if (!file_new_1(a1, v10, a3))
        {
          *(v10 + 40) = 7;
          goto LABEL_160;
        }

        v14 = -30;
      }

      else
      {
        if (!unknowntag_start(a1, v10, a2))
        {
          goto LABEL_160;
        }

        v14 = -30;
      }

      break;
    case 3u:
    case 5u:
    case 6u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 4u:
      if (!strcmp(a2, "offset"))
      {
        *(v10 + 40) = 5;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v10 + 40) = 6;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 7u:
      if (!strcmp(a2, "file"))
      {
        if (!file_new_1(a1, v10, a3))
        {
          goto LABEL_160;
        }

        v14 = -30;
      }

      else
      {
        if (!strcmp(a2, "data"))
        {
          *(v10 + 40) = 8;
          goto LABEL_160;
        }

        if (!strcmp(a2, "ea"))
        {
          if (!xattr_new(a1, v10, a3))
          {
            *(v10 + 40) = 16;
            goto LABEL_160;
          }

          v14 = -30;
        }

        else
        {
          if (!strcmp(a2, "ctime"))
          {
            *(v10 + 40) = 25;
            goto LABEL_160;
          }

          if (!strcmp(a2, "mtime"))
          {
            *(v10 + 40) = 26;
            goto LABEL_160;
          }

          if (!strcmp(a2, "atime"))
          {
            *(v10 + 40) = 27;
            goto LABEL_160;
          }

          if (!strcmp(a2, "group"))
          {
            *(v10 + 40) = 28;
            goto LABEL_160;
          }

          if (!strcmp(a2, "gid"))
          {
            *(v10 + 40) = 29;
            goto LABEL_160;
          }

          if (!strcmp(a2, "user"))
          {
            *(v10 + 40) = 30;
            goto LABEL_160;
          }

          if (!strcmp(a2, "uid"))
          {
            *(v10 + 40) = 31;
            goto LABEL_160;
          }

          if (!strcmp(a2, "mode"))
          {
            *(v10 + 40) = 32;
            goto LABEL_160;
          }

          if (!strcmp(a2, "device"))
          {
            *(v10 + 40) = 33;
            goto LABEL_160;
          }

          if (!strcmp(a2, "deviceno"))
          {
            *(v10 + 40) = 36;
            goto LABEL_160;
          }

          if (!strcmp(a2, "inode"))
          {
            *(v10 + 40) = 37;
            goto LABEL_160;
          }

          if (!strcmp(a2, "link"))
          {
            *(v10 + 40) = 38;
            goto LABEL_160;
          }

          if (!strcmp(a2, "type"))
          {
            *(v10 + 40) = 39;
            for (i = *a3; ; i = *i)
            {
              if (!i)
              {
                goto LABEL_160;
              }

              if (!strcmp(i[1], "link"))
              {
                if (*(*(v10 + 840) + 8) || *(*(v10 + 840) + 336))
                {
                  archive_set_error(a1, -1, "File with multiple link targets", v6, v7);
                  return -30;
                }

                if (!strcmp(i[2], "original"))
                {
                  *(*(v10 + 840) + 8) = *(v10 + 872);
                  *(v10 + 872) = *(v10 + 840);
                }

                else
                {
                  v6 = i[2];
                  v4 = strlen(v6);
                  *(*(v10 + 840) + 336) = atol10(v6, v4);
                  if (*(*(v10 + 840) + 336) && add_link(a1, v10, *(v10 + 840)))
                  {
                    return -30;
                  }
                }
              }
            }
          }

          if (!strcmp(a2, "name"))
          {
            *(v10 + 40) = 40;
            for (j = *a3; j; j = *j)
            {
              if (!strcmp(j[1], "enctype") && !strcmp(j[2], "base64"))
              {
                *(v10 + 56) = 1;
              }
            }

            goto LABEL_160;
          }

          if (!strcmp(a2, "acl"))
          {
            *(v10 + 40) = 41;
            goto LABEL_160;
          }

          if (!strcmp(a2, "flags"))
          {
            *(v10 + 40) = 45;
            goto LABEL_160;
          }

          if (!strcmp(a2, "ext2"))
          {
            *(v10 + 40) = 56;
            goto LABEL_160;
          }

          if (!unknowntag_start(a1, v10, a2))
          {
            goto LABEL_160;
          }

          v14 = -30;
        }
      }

      break;
    case 8u:
      if (!strcmp(a2, "length"))
      {
        *(v10 + 40) = 9;
        goto LABEL_160;
      }

      if (!strcmp(a2, "offset"))
      {
        *(v10 + 40) = 10;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v10 + 40) = 11;
        goto LABEL_160;
      }

      if (!strcmp(a2, "encoding"))
      {
        *(v10 + 40) = 12;
        *(*(v10 + 840) + 64) = getencoding(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "archived-checksum"))
      {
        *(v10 + 40) = 13;
        *(*(v10 + 840) + 72) = getsumalgorithm(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v10 + 40) = 14;
        *(*(v10 + 840) + 112) = getsumalgorithm(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "content"))
      {
        *(v10 + 40) = 15;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0xFu:
      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0x10u:
      if (!strcmp(a2, "length"))
      {
        *(v10 + 40) = 17;
        goto LABEL_160;
      }

      if (!strcmp(a2, "offset"))
      {
        *(v10 + 40) = 18;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v10 + 40) = 19;
        goto LABEL_160;
      }

      if (!strcmp(a2, "encoding"))
      {
        *(v10 + 40) = 20;
        *(*(v10 + 848) + 64) = getencoding(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "archived-checksum"))
      {
        *(v10 + 40) = 21;
        goto LABEL_160;
      }

      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v10 + 40) = 22;
        goto LABEL_160;
      }

      if (!strcmp(a2, "name"))
      {
        *(v10 + 40) = 23;
        goto LABEL_160;
      }

      if (!strcmp(a2, "fstype"))
      {
        *(v10 + 40) = 24;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0x21u:
      if (!strcmp(a2, "major"))
      {
        *(v10 + 40) = 34;
        goto LABEL_160;
      }

      if (!strcmp(a2, "minor"))
      {
        *(v10 + 40) = 35;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0x29u:
      if (!strcmp(a2, "appleextended"))
      {
        *(v10 + 40) = 44;
        goto LABEL_160;
      }

      if (!strcmp(a2, "default"))
      {
        *(v10 + 40) = 42;
        goto LABEL_160;
      }

      if (!strcmp(a2, "access"))
      {
        *(v10 + 40) = 43;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0x2Du:
      if (xml_parse_file_flags(v10, a2) || !unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    case 0x38u:
      if (xml_parse_file_ext2(v10, a2) || !unknowntag_start(a1, v10, a2))
      {
        goto LABEL_160;
      }

      v14 = -30;
      break;
    default:
LABEL_160:
      v14 = 0;
      break;
  }

  return v14;
}

void xmlattr_cleanup(uint64_t a1)
{
  for (i = *a1; i; i = v1)
  {
    v1 = *i;
    free(i[1]);
    free(i[2]);
    free(i);
  }

  *a1 = 0;
  *(a1 + 8) = a1;
}

void xml_end(uint64_t result, const char *a2)
{
  v2 = **(result + 2072);
  switch(*(v2 + 40))
  {
    case 1:
      if (!strcmp(a2, "xar"))
      {
        *(v2 + 40) = 0;
      }

      break;
    case 2:
      if (!strcmp(a2, "toc"))
      {
        *(v2 + 40) = 1;
      }

      break;
    case 3:
      if (!strcmp(a2, "creation-time"))
      {
        *(v2 + 40) = 2;
      }

      break;
    case 4:
      if (!strcmp(a2, "checksum"))
      {
        *(v2 + 40) = 2;
      }

      break;
    case 5:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 4;
      }

      break;
    case 6:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 4;
      }

      break;
    case 7:
      if (!strcmp(a2, "file"))
      {
        if (*(*(v2 + 840) + 16) && (*(*(v2 + 840) + 288) & 0xF000) == 0x4000)
        {
          ++*(*(*(v2 + 840) + 16) + 24);
        }

        *(v2 + 840) = *(*(v2 + 840) + 16);
        if (!*(v2 + 840))
        {
          *(v2 + 40) = 2;
        }
      }

      break;
    case 8:
      if (!strcmp(a2, "data"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 9:
      if (!strcmp(a2, "length"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xA:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xB:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xC:
      if (!strcmp(a2, "encoding"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xD:
      if (!strcmp(a2, "archived-checksum"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xE:
      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xF:
      if (!strcmp(a2, "content"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0x10:
      if (!strcmp(a2, "ea"))
      {
        *(v2 + 40) = 7;
        *(v2 + 848) = 0;
      }

      break;
    case 0x11:
      if (!strcmp(a2, "length"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x12:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x13:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x14:
      if (!strcmp(a2, "encoding"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x15:
      if (!strcmp(a2, "archived-checksum"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x16:
      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x17:
      if (!strcmp(a2, "name"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x18:
      if (!strcmp(a2, "fstype"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x19:
      if (!strcmp(a2, "ctime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1A:
      if (!strcmp(a2, "mtime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1B:
      if (!strcmp(a2, "atime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1C:
      if (!strcmp(a2, "group"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1D:
      if (!strcmp(a2, "gid"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1E:
      if (!strcmp(a2, "user"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1F:
      if (!strcmp(a2, "uid"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x20:
      if (!strcmp(a2, "mode"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x21:
      if (!strcmp(a2, "device"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x22:
      if (!strcmp(a2, "major"))
      {
        *(v2 + 40) = 33;
      }

      break;
    case 0x23:
      if (!strcmp(a2, "minor"))
      {
        *(v2 + 40) = 33;
      }

      break;
    case 0x24:
      if (!strcmp(a2, "deviceno"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x25:
      if (!strcmp(a2, "inode"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x26:
      if (!strcmp(a2, "link"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x27:
      if (!strcmp(a2, "type"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x28:
      if (!strcmp(a2, "name"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x29:
      if (!strcmp(a2, "acl"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x2A:
      if (!strcmp(a2, "default"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2B:
      if (!strcmp(a2, "access"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2C:
      if (!strcmp(a2, "appleextended"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2D:
      if (!strcmp(a2, "flags"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x2E:
      if (!strcmp(a2, "UserNoDump"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x2F:
      if (!strcmp(a2, "UserImmutable"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x30:
      if (!strcmp(a2, "UserAppend"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x31:
      if (!strcmp(a2, "UserOpaque"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x32:
      if (!strcmp(a2, "UserNoUnlink"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x33:
      if (!strcmp(a2, "SystemArchived"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x34:
      if (!strcmp(a2, "SystemImmutable"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x35:
      if (!strcmp(a2, "SystemAppend"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x36:
      if (!strcmp(a2, "SystemNoUnlink"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x37:
      if (!strcmp(a2, "SystemSnapshot"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x38:
      if (!strcmp(a2, "ext2"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x39:
      if (!strcmp(a2, "SecureDeletion"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3A:
      if (!strcmp(a2, "Undelete"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3B:
      if (!strcmp(a2, "Compress"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3C:
      if (!strcmp(a2, "Synchronous"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3D:
      if (!strcmp(a2, "Immutable"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3E:
      if (!strcmp(a2, "AppendOnly"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3F:
      if (!strcmp(a2, "NoDump"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x40:
      if (!strcmp(a2, "NoAtime"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x41:
      if (!strcmp(a2, "CompDirty"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x42:
      if (!strcmp(a2, "CompBlock"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x43:
      if (!strcmp(a2, "NoCompBlock"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x44:
      if (!strcmp(a2, "CompError"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x45:
      if (!strcmp(a2, "BTree"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x46:
      if (!strcmp(a2, "HashIndexed"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x47:
      if (!strcmp(a2, "iMagic"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x48:
      if (!strcmp(a2, "Journaled"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x49:
      if (!strcmp(a2, "NoTail"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4A:
      if (!strcmp(a2, "DirSync"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4B:
      if (!strcmp(a2, "TopDir"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4C:
      if (!strcmp(a2, "Reserved"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4D:
      unknowntag_end(v2, a2);
      break;
    default:
      return;
  }
}

uint64_t xml_data(uint64_t result, char *a2, int a3)
{
  v5 = **(result + 2072);
  v4 = *(v5 + 40);
  if (v4 == 5)
  {
    result = atol10(a2, a3);
    *(v5 + 80) = result;
  }

  else if (v4 == 6)
  {
    result = atol10(a2, a3);
    *(v5 + 88) = result;
  }

  if (*(v5 + 840))
  {
    switch(*(v5 + 40))
    {
      case 9:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 40) = result;
        break;
      case 0xA:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 48) = result;
        break;
      case 0xB:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 56) = result;
        break;
      case 0xD:
        result = atohex((*(v5 + 840) + 88), 20, a2, a3);
        *(*(v5 + 840) + 80) = result;
        break;
      case 0xE:
        result = atohex((*(v5 + 840) + 128), 20, a2, a3);
        *(*(v5 + 840) + 120) = result;
        break;
      case 0x11:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 40) = result;
        break;
      case 0x12:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 48) = result;
        break;
      case 0x13:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 56) = result;
        break;
      case 0x15:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atohex((*(v5 + 848) + 88), 20, a2, a3);
        *(*(v5 + 848) + 80) = result;
        break;
      case 0x16:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atohex((*(v5 + 848) + 128), 20, a2, a3);
        *(*(v5 + 848) + 120) = result;
        break;
      case 0x17:
        *(*(v5 + 840) + 28) |= 0x2000u;
        *(*(v5 + 848) + 16) = 0;
        result = archive_strncat((*(v5 + 848) + 8), a2, a3);
        break;
      case 0x18:
        *(*(v5 + 840) + 28) |= 0x2000u;
        *(*(v5 + 848) + 160) = 0;
        result = archive_strncat((*(v5 + 848) + 152), a2, a3);
        break;
      case 0x19:
        *(*(v5 + 840) + 28) |= 0x8008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 200) = result;
        break;
      case 0x1A:
        *(*(v5 + 840) + 28) |= 0x10008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 208) = result;
        break;
      case 0x1B:
        *(*(v5 + 840) + 28) |= 0x20008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 216) = result;
        break;
      case 0x1C:
        *(*(v5 + 840) + 28) |= 0x20u;
        *(*(v5 + 840) + 264) = 0;
        result = archive_strncat((*(v5 + 840) + 256), a2, a3);
        break;
      case 0x1D:
        *(*(v5 + 840) + 28) |= 0x20u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 280) = result;
        break;
      case 0x1E:
        *(*(v5 + 840) + 28) |= 0x10u;
        *(*(v5 + 840) + 232) = 0;
        result = archive_strncat((*(v5 + 840) + 224), a2, a3);
        break;
      case 0x1F:
        *(*(v5 + 840) + 28) |= 0x10u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 248) = result;
        break;
      case 0x20:
        *(*(v5 + 840) + 28) |= 0x40u;
        v3 = *(*(v5 + 840) + 288) & 0xF000;
        result = atol8_2(a2, a3);
        *(*(v5 + 840) + 288) = v3 | result & 0xFFF;
        break;
      case 0x22:
        *(*(v5 + 840) + 28) |= 0x200u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 296) = result;
        break;
      case 0x23:
        *(*(v5 + 840) + 28) |= 0x400u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 300) = result;
        break;
      case 0x24:
        *(*(v5 + 840) + 28) |= 0x100u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 292) = result;
        break;
      case 0x25:
        *(*(v5 + 840) + 28) |= 0x800u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 304) = result;
        break;
      case 0x26:
        *(*(v5 + 840) + 28) |= 4u;
        *(*(v5 + 840) + 184) = 0;
        result = archive_strncat((*(v5 + 840) + 176), a2, a3);
        break;
      case 0x27:
        if (!is_string("file", a2, a3) || !is_string("hardlink", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x8000;
        }

        if (!is_string("directory", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x4000;
        }

        if (!is_string("symlink", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0xA000;
        }

        if (!is_string("character special", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x2000;
        }

        if (!is_string("block special", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x6000;
        }

        if (!is_string("socket", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0xC000;
        }

        result = is_string("fifo", a2, a3);
        if (!result)
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x1000;
        }

        *(*(v5 + 840) + 28) |= 0x80u;
        break;
      case 0x28:
        if (*(*(v5 + 840) + 16))
        {
          archive_string_concat((*(v5 + 840) + 152), (*(*(v5 + 840) + 16) + 152));
          archive_strappend_char((*(v5 + 840) + 152), 47);
        }

        *(*(v5 + 840) + 28) |= 2u;
        if (*(v5 + 56))
        {
          result = strappend_base64(v5, (*(v5 + 840) + 152), a2, a3);
        }

        else
        {
          result = archive_strncat((*(v5 + 840) + 152), a2, a3);
        }

        break;
      case 0x2A:
      case 0x2B:
      case 0x2C:
        *(*(v5 + 840) + 28) |= 0x4000u;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t unknowntag_start(_DWORD *a1, uint64_t a2, char *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
  if (v6)
  {
    *v6 = *(a2 + 48);
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[2] = 0;
    v5 = v6 + 1;
    if (a3)
    {
      v4 = strlen(a3);
      archive_strncat(v5, a3, v4);
    }

    else
    {
      archive_strncat(v5, 0, 0);
    }

    if (!*(a2 + 48))
    {
      *(a2 + 44) = *(a2 + 40);
      *(a2 + 40) = 77;
    }

    *(a2 + 48) = v6;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

uint64_t file_new_1(_DWORD *a1, uint64_t a2, uint64_t ***a3)
{
  v6 = malloc_type_calloc(1uLL, 0x178uLL, 0x10300401D0EDC66uLL);
  if (v6)
  {
    v6[2] = *(a2 + 840);
    *(v6 + 144) = -32257;
    v6[27] = 0;
    v6[26] = 0;
    *(a2 + 840) = v6;
    *(a2 + 848) = 0;
    for (i = *a3; i; i = *i)
    {
      if (!strcmp(i[1], "id"))
      {
        v3 = strlen(i[2]);
        v6[4] = atol10(i[2], v3);
      }
    }

    *(v6 + 85) = 1;
    if (heap_add_entry_0(a1, a2 + 856, v6))
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
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

uint64_t xattr_new(_DWORD *a1, uint64_t a2, uint64_t ***a3)
{
  v7 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1030040E9BF76DFuLL);
  if (v7)
  {
    *(a2 + 848) = v7;
    for (i = *a3; i; i = *i)
    {
      if (!strcmp(i[1], "id"))
      {
        v3 = strlen(i[2]);
        v7[4] = atol10(i[2], v3);
      }
    }

      ;
    }

    *v7 = *j;
    *j = v7;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

uint64_t atol10(char *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  *&v5[8] = 0;
  *v5 = (*a1 - 48);
  while (1)
  {
    v4 = 0;
    if ((*v5 & 0x80000000) == 0)
    {
      v4 = 0;
      if (*v5 < 10)
      {
        v2 = v6--;
        v4 = v2 != 0;
      }
    }

    if (!v4)
    {
      break;
    }

    *&v5[4] = 10 * *&v5[4] + *v5;
    *v5 = *++v7 - 48;
  }

  return *&v5[4];
}

uint64_t add_link(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 880); i; i = *i)
  {
    if (*(i + 2) == *(a3 + 336))
    {
      *(a3 + 8) = i[2];
      ++*(i + 3);
      i[2] = a3;
      return 0;
    }
  }

  v5 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
  if (v5)
  {
    *(a3 + 8) = 0;
    v5[2] = *(a3 + 336);
    v5[3] = 1;
    *(v5 + 2) = a3;
    *v5 = *(a2 + 880);
    *(a2 + 880) = v5;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

uint64_t getencoding(uint64_t ***a1)
{
  v2 = 0;
  for (i = *a1; i; i = *i)
  {
    if (!strcmp(i[1], "style"))
    {
      if (!strcmp(i[2], "application/octet-stream"))
      {
        v2 = 0;
      }

      else if (!strcmp(i[2], "application/x-gzip"))
      {
        v2 = 1;
      }

      else if (!strcmp(i[2], "application/x-bzip2"))
      {
        v2 = 2;
      }

      else if (!strcmp(i[2], "application/x-lzma"))
      {
        v2 = 3;
      }

      else if (!strcmp(i[2], "application/x-xz"))
      {
        v2 = 4;
      }
    }
  }

  return v2;
}

uint64_t getsumalgorithm(uint64_t ***a1)
{
  v3 = 0;
  for (i = *a1; i; i = *i)
  {
    if (!strcmp(i[1], "style"))
    {
      v2 = i[2];
      if ((*v2 == 83 || *v2 == 115) && (*(v2 + 1) == 72 || *(v2 + 1) == 104) && (*(v2 + 2) == 65 || *(v2 + 2) == 97) && *(v2 + 3) == 49 && !*(v2 + 4))
      {
        v3 = 1;
      }

      if ((*v2 == 77 || *v2 == 109) && (*(v2 + 1) == 68 || *(v2 + 1) == 100) && *(v2 + 2) == 53 && !*(v2 + 3))
      {
        v3 = 2;
      }
    }
  }

  return v3;
}

uint64_t xml_parse_file_flags(uint64_t a1, const char *a2)
{
  v3 = 0;
  if (!strcmp(a2, "UserNoDump"))
  {
    *(a1 + 40) = 46;
    v3 = "nodump";
  }

  else if (!strcmp(a2, "UserImmutable"))
  {
    *(a1 + 40) = 47;
    v3 = "uimmutable";
  }

  else if (!strcmp(a2, "UserAppend"))
  {
    *(a1 + 40) = 48;
    v3 = "uappend";
  }

  else if (!strcmp(a2, "UserOpaque"))
  {
    *(a1 + 40) = 49;
    v3 = "opaque";
  }

  else if (!strcmp(a2, "UserNoUnlink"))
  {
    *(a1 + 40) = 50;
    v3 = "nouunlink";
  }

  else if (!strcmp(a2, "SystemArchived"))
  {
    *(a1 + 40) = 51;
    v3 = "archived";
  }

  else if (!strcmp(a2, "SystemImmutable"))
  {
    *(a1 + 40) = 52;
    v3 = "simmutable";
  }

  else if (!strcmp(a2, "SystemAppend"))
  {
    *(a1 + 40) = 53;
    v3 = "sappend";
  }

  else if (!strcmp(a2, "SystemNoUnlink"))
  {
    *(a1 + 40) = 54;
    v3 = "nosunlink";
  }

  else if (!strcmp(a2, "SystemSnapshot"))
  {
    *(a1 + 40) = 55;
    v3 = "snapshot";
  }

  if (v3)
  {
    *(*(a1 + 840) + 28) |= 0x1000u;
    if (*(*(a1 + 840) + 320))
    {
      archive_strappend_char((*(a1 + 840) + 312), 44);
    }

    archive_strcat((*(a1 + 840) + 312), v3);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t xml_parse_file_ext2(uint64_t a1, const char *a2)
{
  v3 = 0;
  if (!strcmp(a2, "SecureDeletion"))
  {
    *(a1 + 40) = 57;
    v3 = "securedeletion";
  }

  else if (!strcmp(a2, "Undelete"))
  {
    *(a1 + 40) = 58;
    v3 = "nouunlink";
  }

  else if (!strcmp(a2, "Compress"))
  {
    *(a1 + 40) = 59;
    v3 = "compress";
  }

  else if (!strcmp(a2, "Synchronous"))
  {
    *(a1 + 40) = 60;
    v3 = "sync";
  }

  else if (!strcmp(a2, "Immutable"))
  {
    *(a1 + 40) = 61;
    v3 = "simmutable";
  }

  else if (!strcmp(a2, "AppendOnly"))
  {
    *(a1 + 40) = 62;
    v3 = "sappend";
  }

  else if (!strcmp(a2, "NoDump"))
  {
    *(a1 + 40) = 63;
    v3 = "nodump";
  }

  else if (!strcmp(a2, "NoAtime"))
  {
    *(a1 + 40) = 64;
    v3 = "noatime";
  }

  else if (!strcmp(a2, "CompDirty"))
  {
    *(a1 + 40) = 65;
    v3 = "compdirty";
  }

  else if (!strcmp(a2, "CompBlock"))
  {
    *(a1 + 40) = 66;
    v3 = "comprblk";
  }

  else if (!strcmp(a2, "NoCompBlock"))
  {
    *(a1 + 40) = 67;
    v3 = "nocomprblk";
  }

  else if (!strcmp(a2, "CompError"))
  {
    *(a1 + 40) = 68;
    v3 = "comperr";
  }

  else if (!strcmp(a2, "BTree"))
  {
    *(a1 + 40) = 69;
    v3 = "btree";
  }

  else if (!strcmp(a2, "HashIndexed"))
  {
    *(a1 + 40) = 70;
    v3 = "hashidx";
  }

  else if (!strcmp(a2, "iMagic"))
  {
    *(a1 + 40) = 71;
    v3 = "imagic";
  }

  else if (!strcmp(a2, "Journaled"))
  {
    *(a1 + 40) = 72;
    v3 = "journal";
  }

  else if (!strcmp(a2, "NoTail"))
  {
    *(a1 + 40) = 73;
    v3 = "notail";
  }

  else if (!strcmp(a2, "DirSync"))
  {
    *(a1 + 40) = 74;
    v3 = "dirsync";
  }

  else if (!strcmp(a2, "TopDir"))
  {
    *(a1 + 40) = 75;
    v3 = "topdir";
  }

  else if (!strcmp(a2, "Reserved"))
  {
    *(a1 + 40) = 76;
    v3 = "reserved";
  }

  if (v3)
  {
    if (*(*(a1 + 840) + 320))
    {
      archive_strappend_char((*(a1 + 840) + 312), 44);
    }

    archive_strcat((*(a1 + 840) + 312), v3);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t heap_add_entry_0(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 12) >= *(a2 + 8))
  {
    if (*(a2 + 8) < 1024)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 2 * *(a2 + 8);
    }

    if (v5 <= *(a2 + 8))
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    v6 = malloc_type_malloc(8 * v5, 0x2004093837F09uLL);
    if (!v6)
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    if (*(a2 + 8))
    {
      __memcpy_chk();
      free(*a2);
    }

    *a2 = v6;
    *(a2 + 8) = v5;
  }

  v9 = *(a3 + 32);
  v3 = *(a2 + 12);
  *(a2 + 12) = v3 + 1;
  for (i = v3; i > 0; i = (i - 1) / 2)
  {
    v7 = (i - 1) / 2;
    if (v9 >= *(*(*a2 + 8 * v7) + 32))
    {
      *(*a2 + 8 * i) = a3;
      return 0;
    }

    *(*a2 + 8 * i) = *(*a2 + 8 * v7);
  }

  **a2 = a3;
  return 0;
}

void unknowntag_end(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  if (v2 && a2 && !strcmp(v2[1], a2))
  {
    *(a1 + 48) = *v2;
    archive_string_free((v2 + 1));
    free(v2);
    if (!*(a1 + 48))
    {
      *(a1 + 40) = *(a1 + 44);
    }
  }
}

void *strappend_base64(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v15 = v18;
  while (a4 && (base64_0[*a3] & 0x80000000) == 0 && (base64_0[a3[1]] & 0x80000000) == 0)
  {
    v4 = a3;
    v5 = a3 + 1;
    a3 += 2;
    v12 = (base64_0[*v4] << 18) | (base64_0[*v5] << 12);
    v6 = v15++;
    *v6 = BYTE2(v12);
    ++v13;
    a4 -= 2;
    if (a4)
    {
      if ((base64_0[*a3] & 0x80000000) != 0)
      {
        break;
      }

      v7 = a3++;
      v12 |= base64_0[*v7] << 6;
      v8 = v15++;
      *v8 = BYTE1(v12);
      ++v13;
      --a4;
    }

    if (a4)
    {
      if ((base64_0[*a3] & 0x80000000) != 0)
      {
        break;
      }

      v9 = a3++;
      v10 = v15++;
      *v10 = v12 | LOBYTE(base64_0[*v9]);
      ++v13;
      --a4;
    }

    if (v13 + 3 >= 0x100)
    {
      result = archive_strncat(a2, v18, v13);
      v13 = 0;
      v15 = v18;
    }
  }

  if (v13)
  {
    return archive_strncat(a2, v18, v13);
  }

  return result;
}

uint64_t is_string(const void *a1, const void *a2, size_t a3)
{
  if (strlen(a1) == a3)
  {
    return memcmp(a2, a1, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t atol8_2(char *a1, uint64_t a2)
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  for (i = 0; ; i = (8 * i) | v4)
  {
    v2 = v6--;
    if (!v2 || *a1 < 48 || *a1 > 55)
    {
      break;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

time_t parse_time(char *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  memset(&__b, 0, sizeof(__b));
  if (v15 != 20)
  {
    return 0;
  }

  v8 = atol10(v16, 4);
  if (v8 < 1900)
  {
    return 0;
  }

  __b.tm_year = v8 - 1900;
  v16 += 4;
  v2 = v16++;
  if (*v2 != 45)
  {
    return 0;
  }

  v9 = atol10(v16, 2);
  if (v9 < 1 || v9 > 12)
  {
    return 0;
  }

  __b.tm_mon = v9 - 1;
  v16 += 2;
  v3 = v16++;
  if (*v3 != 45)
  {
    return 0;
  }

  v10 = atol10(v16, 2);
  if (v10 < 1 || v10 > 31)
  {
    return 0;
  }

  __b.tm_mday = v10;
  v16 += 2;
  v4 = v16++;
  if (*v4 != 84)
  {
    return 0;
  }

  v11 = atol10(v16, 2);
  if (v11 < 0 || v11 > 23)
  {
    return 0;
  }

  __b.tm_hour = v11;
  v16 += 2;
  v5 = v16++;
  if (*v5 != 58)
  {
    return 0;
  }

  v12 = atol10(v16, 2);
  if (v12 < 0 || v12 > 59)
  {
    return 0;
  }

  __b.tm_min = v12;
  v16 += 2;
  v6 = v16++;
  if (*v6 != 58)
  {
    return 0;
  }

  v13 = atol10(v16, 2);
  if (v13 < 0 || v13 > 60)
  {
    return 0;
  }

  __b.tm_sec = v13;
  return time_from_tm_0(&__b);
}

uint64_t atohex(_BYTE *a1, uint64_t a2, char *a3, unint64_t a4)
{
  for (i = a2; ; --i)
  {
    v6 = 0;
    if (i)
    {
      v6 = a4 > 1;
    }

    if (!v6)
    {
      break;
    }

    if (*a3 < 97 || *a3 > 122)
    {
      if (*a3 < 65 || *a3 > 90)
      {
        if (*a3 < 48 || *a3 > 57)
        {
          return -1;
        }

        v7 = 16 * (*a3 - 48);
      }

      else
      {
        v7 = 16 * (*a3 - 55);
      }
    }

    else
    {
      v7 = 16 * (*a3 - 87);
    }

    if (a3[1] < 97 || a3[1] > 122)
    {
      if (a3[1] < 65 || a3[1] > 90)
      {
        if (a3[1] < 48 || a3[1] > 57)
        {
          return -1;
        }

        v8 = v7 | (a3[1] - 48);
      }

      else
      {
        v8 = v7 | (a3[1] - 55);
      }
    }

    else
    {
      v8 = v7 | (a3[1] - 87);
    }

    v4 = a1++;
    *v4 = v8;
    a3 += 2;
    a4 -= 2;
  }

  return a2 - i;
}

uint64_t decompression_init(uint64_t a1, int a2)
{
  v9 = **(a1 + 2072);
  *(v9 + 96) = a2;
  switch(a2)
  {
    case 0:
      return 0;
    case 1:
      if (*(v9 + 216))
      {
        v5 = inflateReset((v9 + 104));
      }

      else
      {
        v5 = inflateInit_((v9 + 104), "1.2.12", 112);
      }

      if (v5)
      {
        archive_set_error(a1, -1, "Couldn't initialize zlib stream.");
        return -30;
      }

      *(v9 + 216) = 1;
      *(v9 + 120) = 0;
      *(v9 + 144) = 0;
      return 0;
    case 2:
      if (*(v9 + 304))
      {
        BZ2_bzDecompressEnd((v9 + 224));
        *(v9 + 304) = 0;
      }

      v6 = BZ2_bzDecompressInit((v9 + 224), 0, 0);
      if (v6 == -3)
      {
        v6 = BZ2_bzDecompressInit((v9 + 224), 0, 1);
      }

      if (!v6)
      {
        *(v9 + 304) = 1;
        *(v9 + 236) = 0;
        *(v9 + 240) = 0;
        *(v9 + 260) = 0;
        *(v9 + 264) = 0;
        return 0;
      }

      v4 = -1;
      v8 = 0;
      switch(v6)
      {
        case -9:
          v8 = "mis-compiled library";
          break;
        case -3:
          v4 = 12;
          v8 = "out of memory";
          break;
        case -2:
          v8 = "invalid setup parameter";
          break;
      }

      if (v8)
      {
        archive_set_error(a1, v4, "Internal error initializing decompressor: %s", v8);
      }

      else
      {
        archive_set_error(a1, v4, "Internal error initializing decompressor: %s", "??");
      }

      *(v9 + 304) = 0;
      return -30;
    case 4:
    case 3:
      if (*(v9 + 448))
      {
        lzma_end();
        *(v9 + 448) = 0;
      }

      if (*(v9 + 928) == 4)
      {
        v7 = lzma_stream_decoder();
      }

      else
      {
        v7 = lzma_alone_decoder();
      }

      if (v7)
      {
        if (v7 == 5)
        {
          archive_set_error(a1, 12, "Internal error initializing compression library: Cannot allocate memory");
        }

        else if (v7 == 8)
        {
          archive_set_error(a1, -1, "Internal error initializing compression library: Invalid or unsupported options");
        }

        else
        {
          archive_set_error(a1, -1, "Internal error initializing lzma library");
        }

        return -30;
      }

      *(v9 + 448) = 1;
      *(v9 + 328) = 0;
      *(v9 + 352) = 0;
      return 0;
    default:
      v3 = *(v9 + 928);
      switch(v3)
      {
        case 2:
          archive_set_error(a1, -1, "%s compression not supported on this platform", "bzip2");
          break;
        case 3:
          archive_set_error(a1, -1, "%s compression not supported on this platform", "lzma");
          break;
        case 4:
          archive_set_error(a1, -1, "%s compression not supported on this platform", "xz");
          break;
        default:
          archive_set_error(a1, -1, "%s compression not supported on this platform", "??");
          break;
      }

      return -25;
  }
}

_DWORD *checksum_init_0(uint64_t a1, int a2, int a3)
{
  v4 = **(a1 + 2072);
  _checksum_init((v4 + 452), a2);
  return _checksum_init((v4 + 644), a3);
}

_DWORD *_checksum_init(_DWORD *result, int a2)
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

uint64_t decompress_0(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v14 = **(a1 + 2072);
  v12 = *a5;
  v13 = *a2;
  if (*a2)
  {
    v11 = *a3;
  }

  else
  {
    if (!*(v14 + 32))
    {
      *(v14 + 32) = malloc_type_malloc(0x10000uLL, 0x7727397FuLL);
      if (!*(v14 + 32))
      {
        archive_set_error(a1, 12, "Couldn't allocate memory for out buffer");
        return -30;
      }
    }

    v13 = *(v14 + 32);
    *a2 = v13;
    v11 = 0x10000;
  }

  v9 = *(v14 + 96);
  switch(v9)
  {
    case 0:
      goto LABEL_31;
    case 1:
      *(v14 + 104) = a4;
      *(v14 + 112) = v12;
      *(v14 + 128) = v13;
      *(v14 + 136) = v11;
      v10 = inflate((v14 + 104), 0);
      if (v10 > 1)
      {
        archive_set_error(a1, -1, "File decompression failed (%d)", v10);
        return -30;
      }

      *a5 = v12 - *(v14 + 112);
      *a3 = v11 - *(v14 + 136);
      return 0;
    case 2:
      *(v14 + 224) = a4;
      *(v14 + 232) = v12;
      *(v14 + 248) = v13;
      *(v14 + 256) = v11;
      v8 = BZ2_bzDecompress((v14 + 224));
      if (v8)
      {
        if (v8 != 4)
        {
          archive_set_error(a1, -1, "bzip decompression failed");
          return -30;
        }

        if (BZ2_bzDecompressEnd((v14 + 224)))
        {
          archive_set_error(a1, -1, "Failed to clean up decompressor");
          return -30;
        }

        *(v14 + 304) = 0;
      }

      *a5 = v12 - *(v14 + 232);
      *a3 = v11 - *(v14 + 256);
      return 0;
  }

  if (v9 != 4 && v9 != 3)
  {
LABEL_31:
    if (v13 == *(v14 + 32))
    {
      *a2 = a4;
      *a5 = v12;
      *a3 = v12;
    }

    else
    {
      if (v11 > v12)
      {
        v11 = v12;
      }

      __memcpy_chk();
      *a5 = v11;
      *a3 = v11;
    }

    return 0;
  }

  *(v14 + 312) = a4;
  *(v14 + 320) = v12;
  *(v14 + 336) = v13;
  *(v14 + 344) = v11;
  v5 = lzma_code();
  if (!v5)
  {
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    lzma_end();
    *(v14 + 448) = 0;
LABEL_26:
    *a5 = v12 - *(v14 + 320);
    *a3 = v11 - *(v14 + 344);
    return 0;
  }

  if (*(v14 + 928) == 4)
  {
    v6 = "xz";
  }

  else
  {
    v6 = "lzma";
  }

  archive_set_error(a1, -1, "%s decompression failed(%d)", v6, v5);
  return -30;
}

int *checksum_update_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = **(a1 + 2072);
  _checksum_update((v6 + 452), a2, a3);
  return _checksum_update((v6 + 644), a4, a5);
}

int *_checksum_update(int *result, uint64_t a2, uint64_t a3)
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

uint64_t archive_read_format_zip_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = -25;
  v6 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    *(v6 + 8008) = a3 != 0;
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v6 + 7984) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v6 + 7984))
      {
        if (!strcmp(a3, "UTF-8"))
        {
          *(v6 + 8000) = *(v6 + 7984);
        }

        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "zip: hdrcharset option needs a character-set name");
    }

    return v5;
  }

  else if (!strcmp(a2, "ignorecrc32"))
  {
    if (a3 && *a3)
    {
      *(v6 + 176) = fake_crc32;
      *(v6 + 184) = 1;
    }

    else
    {
      *(v6 + 176) = real_crc32;
      *(v6 + 184) = 0;
    }

    return 0;
  }

  else if (!strcmp(a2, "mac-ext"))
  {
    v4 = 0;
    if (a3)
    {
      v4 = *a3 != 0;
    }

    *(v6 + 8012) = v4;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_zip_streamable_read_header(_DWORD *a1, void *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  a1[4] = 327680;
  if (!*(v9 + 3))
  {
    *(v9 + 3) = "ZIP";
  }

  v7 = **(v9 + 259);
  if (*(v7 + 56) == -1)
  {
    *(v7 + 56) = 0;
  }

  if (*(v7 + 64) || (*(v7 + 64) = malloc_type_malloc(0x90uLL, 0x1030040EC8AD5CDuLL)) != 0)
  {
    *(v7 + 136) = *(v7 + 64);
    __memset_chk();
    if (*(v7 + 8160))
    {
      off_1F3DE4E88(v7 + 8080);
    }

    if (*(v7 + 8548))
    {
      off_1F3DE4DD8(v7 + 8164);
    }

    *(v7 + 8548) = 0;
    *(v7 + 8160) = 0;
    *(v7 + 8076) = 0;
    __archive_read_reset_passphrase(v9);
    __archive_read_consume(v9, *(v7 + 128));
    *(v7 + 128) = 0;
    while (1)
    {
      v6 = 0;
      v5 = 0;
      v4 = 0;
      v3 = 0;
      v5 = __archive_read_ahead(v9, 4uLL, &v3);
      if (!v5)
      {
        break;
      }

      v4 = &v5[v3];
      while ((v5 + 4) <= v4)
      {
        if (*v5 == 80 && v5[1] == 75)
        {
          if (v5[2] == 3 && v5[3] == 4)
          {
            __archive_read_consume(v9, v6);
            return zip_read_local_file_header(v9, v8, v7);
          }

          if (v5[2] == 1 && v5[3] == 2)
          {
            return 1;
          }

          if (v5[2] == 5 && v5[3] == 6 || v5[2] == 6 && v5[3] == 6)
          {
            return 1;
          }
        }

        ++v5;
        ++v6;
      }

      __archive_read_consume(v9, v6);
    }

    return -30;
  }

  else
  {
    archive_set_error(v9, 12, "Out  of memory");
    return -30;
  }
}

uint64_t archive_read_format_zip_read_data(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  v8 = **(a1 + 2072);
  if (*(v8 + 56) == -1)
  {
    *(v8 + 56) = 0;
  }

  *a4 = *(v8 + 160);
  *a3 = 0;
  *a2 = 0;
  if (*(v8 + 186))
  {
    return 1;
  }

  else if ((*(*(v8 + 136) + 124) & 0xF000) == 0x8000)
  {
    __archive_read_consume(a1, *(v8 + 128));
    *(v8 + 128) = 0;
    if (*(v8 + 8020))
    {
      *(v8 + 56) = 1;
      if ((*(*(v8 + 136) + 126) & 0x40) != 0)
      {
        decryption_header = read_decryption_header(a1);
      }

      else if (*(*(v8 + 136) + 128) == 99)
      {
        decryption_header = init_WinZip_AES_decryption(a1);
      }

      else
      {
        decryption_header = init_traditional_PKWARE_decryption(a1);
      }

      if (decryption_header)
      {
        return decryption_header;
      }

      *(v8 + 8020) = 0;
    }

    v7 = *(*(v8 + 136) + 128);
    if (*(*(v8 + 136) + 128))
    {
      switch(v7)
      {
        case 8:
          data_deflate = zip_read_data_deflate(a1, a2, a3, a4);
          break;
        case 12:
          data_deflate = zip_read_data_zipx_bzip2(a1, a2, a3, a4);
          break;
        case 14:
          data_deflate = zip_read_data_zipx_lzma_alone(a1, a2, a3, a4);
          break;
        case 95:
          data_deflate = zip_read_data_zipx_xz(a1, a2, a3, a4);
          break;
        case 98:
          data_deflate = zip_read_data_zipx_ppmd(a1, a2, a3, a4);
          break;
        default:
          v6 = *(*(v8 + 136) + 128);
          v4 = compression_name(v6);
          archive_set_error(a1, 79, "Unsupported ZIP compression method (%d: %s)", v6, v4);
          return -25;
      }
    }

    else
    {
      data_deflate = zip_read_data_none(a1, a2, a3, a4);
    }

    if (!data_deflate)
    {
      if (*a3)
      {
        *(v8 + 168) = (*(v8 + 176))(*(v8 + 168), *a2, *a3);
      }

      if (*(v8 + 186))
      {
        consume_end_of_file_marker(a1, v8);
        if ((!*(v8 + 8548) || *(*(v8 + 136) + 132) != 2) && *(*(v8 + 136) + 120) != *(v8 + 168) && !*(v8 + 184))
        {
          archive_set_error(a1, -1, "ZIP bad CRC: 0x%lx should be 0x%lx", *(v8 + 168), *(*(v8 + 136) + 120));
          return -25;
        }

        if (*(*(v8 + 136) + 40) != *(v8 + 152))
        {
          archive_set_error(a1, -1, "ZIP compressed data is wrong size (read %jd, expected %jd)", *(v8 + 152), *(*(v8 + 136) + 40));
          return -25;
        }

        if (*(*(v8 + 136) + 48) != *(v8 + 160))
        {
          archive_set_error(a1, -1, "ZIP uncompressed data is wrong size (read %jd, expected %jd)\n", *(v8 + 160), *(*(v8 + 136) + 48));
          return -25;
        }
      }

      return 0;
    }

    return data_deflate;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_zip_read_data_skip_streamable(uint64_t a1)
{
  v12 = a1;
  v11 = 0;
  consume = 0;
  v11 = **(a1 + 2072);
  consume = __archive_read_consume(a1, *(v11 + 128));
  *(v11 + 128) = 0;
  if (consume < 0)
  {
    return -30;
  }

  else if (*(v11 + 186))
  {
    return 0;
  }

  else if ((*(*(v11 + 136) + 126) & 8) != 0 && *(*(v11 + 136) + 40) <= 0)
  {
    if (*(v11 + 8020))
    {
      decryption_header = 0;
      *(v11 + 56) = 1;
      if ((*(*(v11 + 136) + 126) & 0x40) != 0)
      {
        decryption_header = read_decryption_header(v12);
      }

      else if (*(*(v11 + 136) + 128) == 99)
      {
        decryption_header = init_WinZip_AES_decryption(v12);
      }

      else
      {
        decryption_header = init_traditional_PKWARE_decryption(v12);
      }

      if (decryption_header)
      {
        return decryption_header;
      }

      *(v11 + 8020) = 0;
    }

    if (*(*(v11 + 136) + 128) == 8)
    {
      while (!*(v11 + 186))
      {
        v8 = 0;
        v7 = 0;
        v6 = 0;
        v5 = zip_read_data_deflate(v12, &v7, &v6, &v8);
        if (v5)
        {
          return v5;
        }
      }

      return 0;
    }

    else
    {
LABEL_25:
      i = 0;
      v3 = 0;
      v2 = 0;
      v3 = __archive_read_ahead(v12, 0x10uLL, &v2);
      if (v2 >= 16)
      {
        for (i = v3; ; i += 4)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                if (i > v3 + v2 - 16)
                {
                  __archive_read_consume(v12, &i[-v3]);
                  goto LABEL_25;
                }

                if (i[3] != 80)
                {
                  break;
                }

                i += 3;
              }

              if (i[3] != 75)
              {
                break;
              }

              i += 2;
            }

            if (i[3] != 7)
            {
              break;
            }

            ++i;
          }

          if (i[3] == 8 && i[2] == 7 && i[1] == 75 && *i == 80)
          {
            break;
          }
        }

        if (*(*(v11 + 136) + 130))
        {
          __archive_read_consume(v12, &i[-v3 + 24]);
        }

        else
        {
          __archive_read_consume(v12, &i[-v3 + 16]);
        }

        return 0;
      }

      else
      {
        archive_set_error(v12, 79, "Truncated ZIP file data");
        return -30;
      }
    }
  }

  else if (__archive_read_consume(v12, *(v11 + 144)) < 0)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_zip_has_encrypted_entries(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && (v2 = **(a1 + 2072)) != 0)
  {
    return *(v2 + 56);
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_zip_seekable_read_header(uint64_t a1, void *a2)
{
  v9 = **(a1 + 2072);
  v4 = 0;
  if (*(v9 + 56) == -1)
  {
    *(v9 + 56) = 0;
  }

  *(a1 + 16) = 327680;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = "ZIP";
  }

  if (*(v9 + 64))
  {
    if (*(v9 + 136))
    {
      *(v9 + 136) = __archive_rb_tree_iterate((v9 + 80), *(v9 + 136), 1u);
    }
  }

  else
  {
    v5 = slurp_central_directory_0(a1, a2, v9);
    if (v5)
    {
      return v5;
    }

    *(v9 + 136) = __archive_rb_tree_iterate((v9 + 80), 0, 0);
  }

  if (*(v9 + 136))
  {
    if (*(*(v9 + 136) + 72))
    {
      node = __archive_rb_tree_find_node((v9 + 96), *(*(v9 + 136) + 72));
    }

    else
    {
      node = 0;
    }

    if (*(v9 + 8160))
    {
      off_1F3DE4E88(v9 + 8080);
    }

    if (*(v9 + 8548))
    {
      off_1F3DE4DD8(v9 + 8164);
    }

    *(v9 + 8548) = 0;
    *(v9 + 8160) = 0;
    *(v9 + 8076) = 0;
    __archive_read_reset_passphrase(a1);
    v7 = archive_filter_bytes(a1, 0);
    if (v7 >= *(*(v9 + 136) + 32))
    {
      if (v7 != *(*(v9 + 136) + 32))
      {
        __archive_read_seek(a1, *(*(v9 + 136) + 32), 0);
      }
    }

    else
    {
      __archive_read_consume(a1, *(*(v9 + 136) + 32) - v7);
    }

    *(v9 + 128) = 0;
    local_file_header = zip_read_local_file_header(a1, a2, v9);
    if (local_file_header)
    {
      return local_file_header;
    }

    else
    {
      if (node)
      {
        mac_metadata = zip_read_mac_metadata(a1, a2, node);
        if (mac_metadata < 0)
        {
          return mac_metadata;
        }
      }

      return v4;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t zip_read_local_file_header(_DWORD *a1, void *a2, uint64_t a3)
{
  v53 = a1;
  v52 = a2;
  v51 = a3;
  ahead = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = *(a3 + 136);
  memset(__b, 0, sizeof(__b));
  v40 = 0;
  v39 = 0;
  memcpy(__b, v42, sizeof(__b));
  *(v51 + 185) = 0;
  *(v51 + 186) = 0;
  *(v51 + 160) = 0;
  *(v51 + 152) = 0;
  *(v51 + 168) = (*(v51 + 176))(0, 0);
  if (!*(v51 + 7984) && !*(v51 + 8008))
  {
    *(v51 + 7992) = archive_string_default_conversion_for_read();
    *(v51 + 8008) = 1;
  }

  ahead = __archive_read_ahead(v53, 0x1EuLL, 0);
  if (!ahead)
  {
    goto LABEL_30;
  }

  if (!memcmp(ahead, "PK\x03\x04", 4uLL))
  {
    v39 = ahead[4];
    *(v42 + 129) = ahead[5];
    v3 = archive_le16dec_3(ahead + 6);
    *(v42 + 126) = v3;
    if ((*(v42 + 126) & 0x41) != 0 && (*(v51 + 56) = 1, archive_entry_set_is_data_encrypted(v52, 1), (*(v42 + 126) & 0x2000) != 0) && (*(v42 + 126) & 1) != 0 && (*(v42 + 126) & 0x40) != 0)
    {
      archive_entry_set_is_metadata_encrypted(v52, 1);
      return -30;
    }

    else
    {
      *(v51 + 8020) = *(v42 + 126) & 1;
      v4 = archive_le16dec_3(ahead + 8);
      *(v42 + 128) = v4;
      v5 = zip_time(ahead + 10);
      *(v42 + 96) = v5;
      v6 = archive_le32dec_7(ahead + 14);
      *(v42 + 120) = v6;
      if ((*(v42 + 126) & 8) != 0)
      {
        *(v42 + 131) = ahead[11];
      }

      else
      {
        *(v42 + 131) = ahead[17];
      }

      v7 = archive_le32dec_7(ahead + 18);
      *(v42 + 40) = v7;
      v8 = archive_le32dec_7(ahead + 22);
      *(v42 + 48) = v8;
      v45 = archive_le16dec_3(ahead + 26);
      v44 = archive_le16dec_3(ahead + 28);
      __archive_read_consume(v53, 30);
      v49 = __archive_read_ahead(v53, v45, 0);
      if (!v49)
      {
        goto LABEL_30;
      }

      if ((*(v42 + 126) & 0x800) != 0)
      {
        if (!*(v51 + 8000))
        {
          v9 = archive_string_conversion_from_charset(v53, "UTF-8", 1);
          *(v51 + 8000) = v9;
          if (!*(v51 + 8000))
          {
            return -30;
          }
        }

        v43 = *(v51 + 8000);
      }

      else
      {
        v43 = *(v51 + 7984) ? *(v51 + 7984) : *(v51 + 7992);
      }

      if (_archive_entry_copy_pathname_l(v52, v49, v45, v43))
      {
        if (*__error() == 12)
        {
          archive_set_error(v53, 12, "Can't allocate memory for Pathname");
          return -30;
        }

        v27 = v53;
        v10 = archive_string_conversion_charset_name(v43);
        archive_set_error(v27, 79, "Pathname cannot be converted from %s to current locale.", v10);
        v40 = -20;
      }

      __archive_read_consume(v53, v45);
      v49 = __archive_read_ahead(v53, v44, 0);
      if (!v49)
      {
LABEL_30:
        archive_set_error(v53, 79, "Truncated ZIP file header");
        return -30;
      }

      if (process_extra(v53, v52, v49, v44, v42))
      {
        return -30;
      }

      else if (*(v51 + 8016) && bomb_detect_overlap(v51, v42, v45 + 30 + v44))
      {
        archive_set_error(v53, 79, "Invalid header");
        return -30;
      }

      else
      {
        __archive_read_consume(v53, v44);
        if ((*(v42 + 124) & 0xF000) == 0x1000)
        {
          *(v42 + 124) &= 0xFFFu;
          *(v42 + 124) |= 0x8000u;
        }

        if (!*(v42 + 124))
        {
          *(v42 + 124) |= 0x1B4u;
        }

        if (!*(v42 + 129))
        {
          v48 = archive_entry_pathname_w(v52);
          if (v48)
          {
            if (!wcschr(v48, 47) && wcschr(v48, 92))
            {
              i = 0;
              v35 = 0;
              v37 = 0;
              v36 = 0;
              if (v48)
              {
                v26 = wcslen(v48);
                archive_wstrncat(&v35, v48, v26);
              }

              else
              {
                archive_wstrncat(&v35, 0, 0);
              }

              for (i = 0; i < v36; ++i)
              {
                if (v35[i] == 92)
                {
                  v35[i] = 47;
                }
              }

              archive_entry_copy_pathname_w(v52, v35);
              archive_wstring_free(&v35);
            }
          }
        }

        if ((*(v42 + 124) & 0xF000) != 0x4000)
        {
          v34 = 0;
          v48 = archive_entry_pathname_w(v52);
          if (v48)
          {
            v46 = wcslen(v48);
            v25 = 0;
            if (v46)
            {
              v25 = v48[v46 - 1] == 47;
            }

            v34 = v25;
          }

          else
          {
            v47 = archive_entry_pathname(v52);
            if (v47)
            {
              v24 = strlen(v47);
            }

            else
            {
              v24 = 0;
            }

            v46 = v24;
            v23 = 0;
            if (v24)
            {
              v23 = v47[v46 - 1] == 47;
            }

            v34 = v23;
          }

          if (v34)
          {
            *(v42 + 124) &= 0xFFFu;
            *(v42 + 124) |= 0x4000u;
            *(v42 + 124) |= 0x49u;
          }

          else if ((*(v42 + 124) & 0xF000) == 0)
          {
            *(v42 + 124) |= 0x8000u;
          }
        }

        if ((*(v42 + 124) & 0xF000) == 0x4000)
        {
          v48 = archive_entry_pathname_w(v52);
          if (v48)
          {
            v46 = wcslen(v48);
            if (v46 && v48[v46 - 1] != 47)
            {
              memset(v33, 0, sizeof(v33));
              archive_wstrcat(v33, v48);
              archive_wstrappend_wchar(v33, 47);
              archive_entry_copy_pathname_w(v52, v33[0]);
              archive_wstring_free(v33);
            }
          }

          else
          {
            v47 = archive_entry_pathname(v52);
            if (v47)
            {
              v22 = strlen(v47);
            }

            else
            {
              v22 = 0;
            }

            v46 = v22;
            if (v22 && v47[v46 - 1] != 47)
            {
              memset(v32, 0, sizeof(v32));
              archive_strcat(v32, v47);
              archive_strappend_char(v32, 47);
              archive_entry_set_pathname(v52, v32[0]);
              archive_string_free(v32);
            }
          }
        }

        if ((*(v42 + 130) & 2) != 0)
        {
          *(v42 + 126) &= ~8u;
          if (*(v42 + 120))
          {
            if (!*(v51 + 184) && *(v42 + 120) != LODWORD(__b[15]))
            {
              archive_set_error(v53, 79, "Inconsistent CRC32 values");
              v40 = -20;
            }
          }

          else
          {
            *(v42 + 120) = __b[15];
          }

          if (*(v42 + 40) && *(v42 + 40) != 0xFFFFFFFFLL)
          {
            if (*(v42 + 40) != __b[5])
            {
              archive_set_error(v53, 79, "Inconsistent compressed size: %jd in central directory, %jd in local header", __b[5], *(v42 + 40));
              v40 = -20;
            }
          }

          else
          {
            *(v42 + 40) = __b[5];
          }

          if (*(v42 + 48) && *(v42 + 48) != 0xFFFFFFFFLL)
          {
            if (*(v42 + 48) != __b[6])
            {
              archive_set_error(v53, 79, "Inconsistent uncompressed size: %jd in central directory, %jd in local header", __b[6], *(v42 + 48));
              v40 = -20;
            }
          }

          else
          {
            *(v42 + 48) = __b[6];
          }
        }

        archive_entry_set_mode(v52, *(v42 + 124));
        archive_entry_set_uid(v52, *(v42 + 64));
        archive_entry_set_gid(v52, *(v42 + 56));
        archive_entry_set_mtime(v52, *(v42 + 96), 0);
        archive_entry_set_ctime(v52, *(v42 + 112), 0);
        archive_entry_set_atime(v52, *(v42 + 104), 0);
        if ((*(*(v51 + 136) + 124) & 0xF000) == 0xA000)
        {
          v31 = 0;
          if (*(v42 + 40) > 0x10000)
          {
            archive_set_error(v53, -1, "Zip file with oversized link entry");
            return -30;
          }

          v31 = *(v42 + 40);
          archive_entry_set_size(v52, 0);
          v30 = v31;
          if (*(*(v51 + 136) + 128))
          {
            v29 = -30;
            v28 = 0;
            v21 = *(*(v51 + 136) + 128);
            if (v21 == 8)
            {
              *(v51 + 144) = *(v42 + 40);
              v29 = zip_read_data_deflate(v53, &v28, &v30, 0);
            }

            else if (v21 == 14)
            {
              *(v51 + 144) = *(v42 + 40);
              v29 = zip_read_data_zipx_lzma_alone(v53, &v28, &v30, 0);
            }

            if (v29)
            {
              v20 = v53;
              v19 = *(*(v51 + 136) + 128);
              v11 = compression_name(v19);
              archive_set_error(v20, 79, "Unsupported ZIP compression method during decompression of link entry (%d: %s)", v19, v11);
              return -25;
            }

            ahead = v28;
          }

          else
          {
            ahead = __archive_read_ahead(v53, v31, 0);
          }

          if (!ahead)
          {
            archive_set_error(v53, -1, "Truncated Zip file");
            return -30;
          }

          v43 = *(v51 + 7984);
          if (!v43 && (*(*(v51 + 136) + 126) & 0x800) != 0)
          {
            v43 = *(v51 + 8000);
          }

          if (!v43)
          {
            v43 = *(v51 + 7992);
          }

          if (_archive_entry_copy_symlink_l(v52, ahead, v30, v43))
          {
            if (*__error() != 12 && v43 == *(v51 + 8000) && (*(*(v51 + 136) + 126) & 0x800) != 0)
            {
              _archive_entry_copy_symlink_l(v52, ahead, v30, 0);
            }

            if (*__error() == 12)
            {
              archive_set_error(v53, 12, "Can't allocate memory for Symlink");
              return -30;
            }

            if (v43 != *(v51 + 8000) || (*(*(v51 + 136) + 126) & 0x800) == 0)
            {
              v18 = v53;
              v12 = archive_string_conversion_charset_name(v43);
              archive_set_error(v18, 79, "Symlink cannot be converted from %s to current locale.", v12);
              v40 = -20;
            }
          }

          *(v42 + 40) = 0;
          *(v42 + 48) = 0;
          if (__archive_read_consume(v53, v31) < 0)
          {
            archive_set_error(v53, -1, "Read error skipping symlink target name");
            return -30;
          }
        }

        else if ((*(v42 + 126) & 8) == 0 || *(v42 + 48) > 0 && *(v42 + 48) != 0xFFFFFFFFLL)
        {
          archive_entry_set_size(v52, *(v42 + 48));
        }

        *(v51 + 144) = *(v42 + 40);
        if ((*(v42 + 126) & 8) == 0 && *(v51 + 144) < 1)
        {
          *(v51 + 186) = 1;
        }

        *(v51 + 8) = 0;
        v17 = v51;
        v15 = v39 / 10;
        v16 = v39 % 10;
        v13 = compression_name(*(*(v51 + 136) + 128));
        archive_string_sprintf(v17, "ZIP %d.%d (%s)", v15, v16, v13);
        *(v53 + 3) = *v51;
        return v40;
      }
    }
  }

  else
  {
    archive_set_error(v53, -1, "Damaged Zip archive");
    return -30;
  }
}

time_t zip_time(unsigned __int8 *a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = *v5 + (v5[1] << 8);
  v3 = v5[2] + (v5[3] << 8);
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = ((v3 >> 9) & 0x7F) + 80;
  __b.tm_mon = ((v3 >> 5) & 0xF) - 1;
  __b.tm_mday = v3 & 0x1F;
  __b.tm_hour = (v4 >> 11) & 0x1F;
  __b.tm_min = (v4 >> 5) & 0x3F;
  __b.tm_sec = (2 * v4) & 0x3E;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t process_extra(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v24 = 0;
  v23 = **(a1 + 2072);
  if (!a4)
  {
    return 0;
  }

  if (a4 >= 4)
  {
    while (1)
    {
      if (v24 > a4 - 4)
      {
        return 0;
      }

      v21 = archive_le16dec_3((a3 + v24));
      v20 = archive_le16dec_3((a3 + v24 + 2));
      v25 = v24 + 4;
      if (v25 + v20 > a4)
      {
        archive_set_error(a1, 79, "Extra data overflow: Need %d bytes but only found %d bytes", v20, a4 - v25);
        return -25;
      }

      switch(v21)
      {
        case 1u:
          *(a5 + 130) |= 1u;
          if (*(a5 + 48) == 0xFFFFFFFFLL)
          {
            if (v20 < 8u || (v19 = archive_le64dec_2((a3 + v25)), v19 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit uncompressed size");
              return -25;
            }

            *(a5 + 48) = v19;
            v25 += 8;
            v20 -= 8;
          }

          if (*(a5 + 40) == 0xFFFFFFFFLL)
          {
            if (v20 < 8u || (v18 = archive_le64dec_2((a3 + v25)), v18 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit compressed size");
              return -25;
            }

            *(a5 + 40) = v18;
            v25 += 8;
            v20 -= 8;
          }

          if (*(a5 + 32) == 0xFFFFFFFFLL)
          {
            if (v20 < 8u || (v17 = archive_le64dec_2((a3 + v25)), v17 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit local header offset");
              return -25;
            }

            *(a5 + 32) = v17;
            v25 += 8;
            v20 -= 8;
          }

          break;
        case 0x5455u:
          if (!v20)
          {
            archive_set_error(a1, 79, "Incomplete extended time field");
            return -25;
          }

          v16 = *(a3 + v25++);
          --v20;
          if (v16)
          {
            if (v20 < 4u)
            {
              break;
            }

            *(a5 + 96) = archive_le32dec_7((a3 + v25));
            v25 += 4;
            v20 -= 4;
          }

          if ((v16 & 2) != 0)
          {
            if (v20 < 4u)
            {
              break;
            }

            *(a5 + 104) = archive_le32dec_7((a3 + v25));
            v25 += 4;
            v20 -= 4;
          }

          if ((v16 & 4) != 0 && v20 >= 4u)
          {
            *(a5 + 112) = archive_le32dec_7((a3 + v25));
            v25 += 4;
            v20 -= 4;
          }

          break;
        case 0x5855u:
          if (v20 >= 8u)
          {
            *(a5 + 104) = archive_le32dec_7((a3 + v25));
            *(a5 + 96) = archive_le32dec_7((a3 + v25 + 4));
          }

          if (v20 >= 0xCu)
          {
            *(a5 + 64) = archive_le16dec_3((a3 + v25 + 8));
            *(a5 + 56) = archive_le16dec_3((a3 + v25 + 10));
          }

          break;
        case 0x6C78u:
          if (!v20)
          {
            break;
          }

          v15 = *(a3 + v25);
          v14 = v15;
          ++v25;
          --v20;
          while (1)
          {
            v9 = 0;
            if (v14 < 0)
            {
              v9 = v20 != 0;
            }

            if (!v9)
            {
              break;
            }

            v14 = *(a3 + v25++);
            --v20;
          }

          if (v15)
          {
            if (v20 < 2u)
            {
              break;
            }

            *(a5 + 129) = archive_le16dec_3((a3 + v25)) >> 8;
            v25 += 2;
            v20 -= 2;
          }

          if ((v15 & 2) != 0)
          {
            if (v20 < 2u)
            {
              break;
            }

            archive_le16dec_3((a3 + v25));
            v25 += 2;
            v20 -= 2;
          }

          if ((v15 & 4) != 0)
          {
            if (v20 < 4u)
            {
              break;
            }

            v5 = archive_le32dec_7((a3 + v25));
            if (*(a5 + 129) == 3)
            {
              *(a5 + 124) = HIWORD(v5);
            }

            else if (*(a5 + 129))
            {
              *(a5 + 124) = 0;
            }

            else
            {
              if ((v5 & 0x10) == 0x10)
              {
                *(a5 + 124) = 16893;
              }

              else
              {
                *(a5 + 124) = -32332;
              }

              if ((v5 & 1) == 1)
              {
                *(a5 + 124) &= 0x16Du;
              }
            }

            v25 += 4;
            v20 -= 4;
          }

          if ((v15 & 8) != 0 && v20 >= 2u)
          {
            v6 = archive_le16dec_3((a3 + v25));
            v25 += 2;
            v20 -= 2;
            if (v20 >= v6)
            {
              v25 += v6;
              v20 -= v6;
            }
          }

          break;
        case 0x7075u:
          if (v20 >= 5u)
          {
            if (a2)
            {
              v25 += 5;
              v20 -= 5;
              if (*(v23 + 8000) || (*(v23 + 8000) = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
              {
                if (*(v23 + 184) || (__s = archive_entry_pathname(a2)) == 0 || (v7 = strlen(__s), v12 = (*(v23 + 176))(0, __s, v7), v12 == archive_le32dec_7((a3 + v25 - 4))))
                {
                  _archive_entry_copy_pathname_l(a2, (a3 + v25), v20, *(v23 + 8000));
                }
              }
            }
          }

          break;
        case 0x7855u:
          if (v20 >= 2u)
          {
            *(a5 + 64) = archive_le16dec_3((a3 + v25));
          }

          if (v20 >= 4u)
          {
            *(a5 + 56) = archive_le16dec_3((a3 + v25 + 2));
          }

          break;
        case 0x7875u:
          v11 = 0;
          if (v20 && *(a3 + v25) == 1)
          {
            if (v20 >= 4u)
            {
              v11 = *(a3 + v25 + 1);
              if (v11 == 2)
              {
                *(a5 + 64) = archive_le16dec_3((a3 + v25 + 2));
              }

              else if (v11 == 4 && v20 >= 6u)
              {
                *(a5 + 64) = archive_le32dec_7((a3 + v25 + 2));
              }
            }

            if (v20 >= v11 + 5)
            {
              v10 = *(a3 + v25 + 2 + v11);
              if (v10 == 2)
              {
                *(a5 + 56) = archive_le16dec_3((a3 + v25 + 2 + v11 + 1));
              }

              else if (v10 == 4 && v20 >= v11 + 7)
              {
                *(a5 + 56) = archive_le32dec_7((a3 + v25 + 2 + v11 + 1));
              }
            }
          }

          break;
        case 0x9901u:
          if (v20 < 6u)
          {
            archive_set_error(a1, 79, "Incomplete AES field");
            return -25;
          }

          if (*(a3 + v25 + 2) == 65 && *(a3 + v25 + 3) == 69)
          {
            *(a5 + 132) = archive_le16dec_3((a3 + v25));
            *(a5 + 136) = *(a3 + v25 + 4);
            *(a5 + 140) = *(a3 + v25 + 5);
          }

          break;
      }

      v24 = v25 + v20;
    }
  }

  for (i = 0; i < a4; ++i)
  {
    if (*(a3 + i))
    {
      archive_set_error(a1, 79, "Too-small extra data: Need at least 4 bytes, but only found %d bytes", a4);
      return -25;
    }
  }

  return 0;
}

uint64_t bomb_detect_overlap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = (a1 + 112);
  v8 = 0;
  v9 = 0;
  if (_bomb_get_begin_and_end(a2, a3, &v9, &v8))
  {
    return -30;
  }

  else
  {
    node_leq = __archive_rb_tree_find_node_leq(v10, &v9);
    node_geq = __archive_rb_tree_find_node_geq(v10, &v9);
    if (node_leq && *(node_leq + 48) >= v9)
    {
      return -30;
    }

    else
    {
      if (!node_geq || node_geq[5] > v8)
      {
        v5 = 0;
        if (node_leq)
        {
          v5 = 0;
          if ((*(node_leq + 48) & 0x8000000000000000) == 0)
          {
            v5 = v9 == *(node_leq + 48) + 1;
          }
        }

        v4 = 0;
        if (node_geq)
        {
          v4 = 0;
          if (node_geq[5] > 0)
          {
            v4 = v8 == node_geq[5] - 1;
          }
        }

        if (v5 && v4)
        {
          *(node_leq + 48) = node_geq[6];
          __archive_rb_tree_remove_node(v10, node_geq);
          _bomb_delete_node(v13, node_geq);
        }

        else if (v5)
        {
          *(node_leq + 48) = v8;
        }

        else if (v4)
        {
          __archive_rb_tree_remove_node(v10, node_geq);
          node_geq[5] = v9;
          if (!__archive_rb_tree_insert_node(v10, node_geq))
          {
            return -30;
          }
        }

        else if (_bomb_create_and_insert_node(v13, v9, v8))
        {
          return -30;
        }

        return 0;
      }

      return -30;
    }
  }
}

uint64_t zip_read_data_deflate(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v12 = **(a1 + 2072);
  if (*(v12 + 192) || (*(v12 + 200) = 0x40000, (*(v12 + 192) = malloc_type_malloc(*(v12 + 200), 0x100004077774924uLL)) != 0))
  {
    v7 = zip_deflate_init(v16, v12);
    if (v7)
    {
      return v7;
    }

    else
    {
      v8 = __archive_read_ahead(v16, 1uLL, &v11);
      v9 = v8;
      if ((*(*(v12 + 136) + 126) & 8) == 0 && v11 > *(v12 + 144))
      {
        v11 = *(v12 + 144);
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        archive_set_error(v16, 79, "Truncated ZIP file body");
        return -30;
      }

      else
      {
        if (*(v12 + 8076) || *(v12 + 8160))
        {
          if (*(v12 + 8048) < v11)
          {
            v6 = *(v12 + 8024) + *(v12 + 8040) - (*(v12 + 8032) + *(v12 + 8048));
            if (v6 > v11)
            {
              v6 = v11;
            }

            if ((*(*(v12 + 136) + 126) & 8) == 0 && *(v12 + 144) > 0 && (*(v12 + 8048) + v6) > *(v12 + 144))
            {
              if (*(v12 + 144) < *(v12 + 8048))
              {
                v6 = 0;
              }

              else
              {
                v6 = *(v12 + 144) - *(v12 + 8048);
              }
            }

            if (v6)
            {
              if (*(v12 + 8076))
              {
                trad_enc_decrypt_update(v12 + 8064, v9, v6, *(v12 + 8032) + *(v12 + 8048), v6);
              }

              else
              {
                v5 = v6;
                off_1F3DE4E80(v12 + 8080, v9, v6, *(v12 + 8032) + *(v12 + 8048), &v5);
              }

              *(v12 + 8048) += v6;
            }
          }

          v11 = *(v12 + 8048);
          v9 = *(v12 + 8032);
        }

        *(v12 + 208) = v9;
        *(v12 + 216) = v11;
        *(v12 + 224) = 0;
        *(v12 + 232) = *(v12 + 192);
        *(v12 + 240) = *(v12 + 200);
        *(v12 + 248) = 0;
        v7 = inflate((v12 + 208), 0);
        if (v7 == -4)
        {
          archive_set_error(v16, 12, "Out of memory for ZIP decompression");
          return -30;
        }

        if (v7)
        {
          if (v7 != 1)
          {
            archive_set_error(v16, -1, "ZIP decompression failed (%d)", v7);
            return -30;
          }

          *(v12 + 186) = 1;
        }

        v10 = *(v12 + 224);
        __archive_read_consume(v16, v10);
        *(v12 + 144) -= v10;
        *(v12 + 152) += v10;
        *(v12 + 160) += *(v12 + 248);
        if (*(v12 + 8076) || *(v12 + 8160))
        {
          *(v12 + 8048) -= v10;
          if (*(v12 + 8048))
          {
            *(v12 + 8032) += v10;
          }

          else
          {
            *(v12 + 8032) = *(v12 + 8024);
          }
        }

        if (*(v12 + 8548))
        {
          off_1F3DE4DC8((v12 + 8164), v8, v10);
        }

        if (*(v12 + 186) && *(v12 + 8548) && (v7 = check_authentication_code(v16, 0)) != 0)
        {
          return v7;
        }

        else
        {
          *v14 = *(v12 + 248);
          *v15 = *(v12 + 192);
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v16, 12, "No memory for ZIP decompression");
    return -30;
  }
}

uint64_t zip_read_data_zipx_lzma_alone(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = **(a1 + 2072);
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (!*(v12 + 185))
  {
    v11 = zipx_lzma_alone_init(v16, v12);
    if (v11)
    {
      return v11;
    }
  }

  v9 = __archive_read_ahead(v16, 1uLL, &v8);
  if (v8 < 0)
  {
    archive_set_error(v16, 79, "Truncated lzma file body");
    return -30;
  }

  if (*(v12 + 144) < v8)
  {
    v6 = *(v12 + 144);
  }

  else
  {
    v6 = v8;
  }

  *(v12 + 328) = v9;
  *(v12 + 336) = v6;
  *(v12 + 344) = 0;
  *(v12 + 352) = *(v12 + 192);
  if (*(v12 + 200) < *(*(v12 + 136) + 48) - *(v12 + 160))
  {
    v5 = *(v12 + 200);
  }

  else
  {
    v5 = *(*(v12 + 136) + 48) - *(v12 + 160);
  }

  *(v12 + 360) = v5;
  *(v12 + 368) = 0;
  v10 = lzma_code();
  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 == 9)
      {
        archive_set_error(v16, -1, "lzma data error (error %d)", 9);
      }

      else
      {
        archive_set_error(v16, -1, "lzma unknown error %d", v10);
      }

      return -30;
    }

    if (*(v12 + 344) != *(v12 + 144))
    {
      archive_set_error(v16, -1, "lzma alone premature end of stream");
      return -30;
    }

    *(v12 + 186) = 1;
  }

  v7 = *(v12 + 344);
  __archive_read_consume(v16, v7);
  *(v12 + 144) -= v7;
  *(v12 + 152) += v7;
  *(v12 + 160) += *(v12 + 368);
  if (!*(v12 + 144))
  {
    *(v12 + 186) = 1;
  }

  if (*(v12 + 186))
  {
    lzma_end();
    *(v12 + 464) = 0;
  }

  *v14 = *(v12 + 368);
  *v15 = *(v12 + 192);
  return 0;
}

const char *compression_name(int a1)
{
  for (i = 0; ; ++i)
  {
    v2 = 0;
    if ((a1 & 0x80000000) == 0)
    {
      v2 = i < 26;
    }

    if (!v2)
    {
      break;
    }

    if (*(&compression_methods + 4 * i) == a1)
    {
      return *(&compression_methods + 2 * i + 1);
    }
  }

  return "??";
}

uint64_t _bomb_get_begin_and_end(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v10 = *(a1 + 32);
    if ((*(a1 + 40) & 0x8000000000000000) != 0 || v10 < 0 || a2 < 1)
    {
      return -30;
    }

    else
    {
      v4 = *(a1 + 40);
      v5 = v4 + a2 - 1;
      if (__OFADD__(v4, a2 - 1))
      {
        return -30;
      }

      else
      {
        v7 = __OFADD__(v10, v5);
        v9 = v10 + v5;
        if (v7)
        {
          return -30;
        }

        else if (v10 <= v9)
        {
          *a3 = v10;
          *a4 = v9;
          return 0;
        }

        else
        {
          return -30;
        }
      }
    }
  }

  else
  {
    return -30;
  }
}

void _bomb_delete_node(uint64_t a1, void *a2)
{
  if (*(a1 + 72) && a2)
  {
    if (*(a1 + 72) == a2)
    {
      *(a1 + 72) = a2[3];
    }

    if (a2[3])
    {
      *(a2[3] + 32) = a2[4];
    }

    if (a2[4])
    {
      *(a2[4] + 24) = a2[3];
    }

    free(a2);
  }
}

uint64_t _bomb_create_and_insert_node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 112);
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004014A78C51uLL);
  if (v4)
  {
    v4[3] = *(a1 + 72);
    if (v4[3])
    {
      *(v4[3] + 32) = v4;
    }

    *(a1 + 72) = v4;
    v4[4] = 0;
    v4[5] = a2;
    v4[6] = a3;
    if (__archive_rb_tree_insert_node(v5, v4))
    {
      return 0;
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

uint64_t zip_deflate_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 185))
  {
    return 0;
  }

  if (*(a2 + 320))
  {
    v3 = inflateReset((a2 + 208));
  }

  else
  {
    v3 = inflateInit2_((a2 + 208), -15, "1.2.12", 112);
  }

  if (!v3)
  {
    *(a2 + 320) = 1;
    *(a2 + 185) = 1;
    return 0;
  }

  archive_set_error(a1, -1, "Can't initialize ZIP decompression.");
  return -30;
}

uLong trad_enc_decrypt_update(uLong result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = result;
  if (a3 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  for (i = 0; i < v6; ++i)
  {
    v5 = *(a2 + i);
    v7 = v5 ^ trad_enc_decrypt_byte(v11);
    *(a4 + i) = v7;
    result = trad_enc_update_keys(v11, v7);
  }

  return result;
}

uint64_t check_authentication_code(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  v6 = **(a1 + 2072);
  if (!*(v6 + 8548))
  {
    return 0;
  }

  __s2 = 0;
  v4 = 20;
  off_1F3DE4DD0((v6 + 8164), __s1, &v4);
  if (v7)
  {
    __s2 = v7;
    goto LABEL_7;
  }

  __s2 = __archive_read_ahead(v8, 0xAuLL, 0);
  if (__s2)
  {
LABEL_7:
    v3 = memcmp(__s1, __s2, 0xAuLL);
    __archive_read_consume(v8, 10);
    if (v3)
    {
      archive_set_error(v8, -1, "ZIP bad Authentication code");
      return -20;
    }

    return 0;
  }

  archive_set_error(v8, 79, "Truncated ZIP file data");
  return -30;
}

uLong trad_enc_update_keys(unsigned int *a1, Bytef a2)
{
  v6 = a1;
  buf = a2;
  v4 = 0;
  v2 = crc32(*a1 ^ 0xFFFFFFFFLL, &buf, 1u);
  *v6 = ~v2;
  v6[1] = 134775813 * (v6[1] + *v6) + 1;
  v4 = HIBYTE(v6[1]);
  result = crc32(v6[2] ^ 0xFFFFFFFFLL, &v4, 1u);
  v6[2] = ~result;
  return result;
}

uint64_t zipx_lzma_alone_init(_DWORD *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  ahead = 0;
  v3[0] = 0;
  *(v3 + 5) = 0;
  if (*(a2 + 464))
  {
    lzma_end();
    *(v6 + 464) = 0;
  }

  __memset_chk();
  v5 = lzma_alone_decoder();
  if (v5)
  {
    archive_set_error(v7, -1, "lzma initialization failed(%d)", v5);
    return -25;
  }

  else
  {
    *(v6 + 464) = 1;
    if (*(v6 + 144) >= 9 && (ahead = __archive_read_ahead(v7, 9uLL, 0)) != 0)
    {
      if (*(ahead + 2) == 5 && !*(ahead + 3))
      {
        LODWORD(v3[0]) = *(ahead + 4);
        BYTE4(v3[0]) = *(ahead + 8);
        *(v3 + 5) = -1;
        if (*(v6 + 192) || (*(v6 + 200) = 0x40000, (*(v6 + 192) = malloc_type_malloc(*(v6 + 200), 0x100004077774924uLL)) != 0))
        {
          *(v6 + 328) = v3;
          *(v6 + 336) = 13;
          *(v6 + 344) = 0;
          *(v6 + 352) = *(v6 + 192);
          *(v6 + 360) = *(v6 + 200);
          *(v6 + 368) = 0;
          v5 = lzma_code();
          if (v5)
          {
            archive_set_error(v7, 22, "lzma stream initialization error");
            return -30;
          }

          else
          {
            __archive_read_consume(v7, 9);
            *(v6 + 144) -= 9;
            *(v6 + 152) += 9;
            *(v6 + 185) = 1;
            return 0;
          }
        }

        else
        {
          archive_set_error(v7, 12, "No memory for lzma decompression");
          return -30;
        }
      }

      else
      {
        archive_set_error(v7, 79, "Invalid lzma data");
        return -30;
      }
    }

    else
    {
      archive_set_error(v7, 79, "Truncated lzma data");
      return -30;
    }
  }
}

uint64_t read_decryption_header(uint64_t a1)
{
  v13 = **(a1 + 2072);
  ahead = __archive_read_ahead(a1, 2uLL, 0);
  if (!ahead)
  {
    goto LABEL_50;
  }

  v4 = *(v13 + 8552);
  *(v13 + 8552) = archive_le16dec_3(ahead);
  __archive_read_consume(a1, 2);
  if (v4 < *(v13 + 8552))
  {
    free(*(v13 + 8584));
    *(v13 + 8584) = 0;
  }

  if (!__archive_read_ahead(a1, *(v13 + 8552), 0))
  {
    goto LABEL_50;
  }

  if (!*(v13 + 8584))
  {
    *(v13 + 8584) = malloc_type_malloc(*(v13 + 8552), 0x975CCB23uLL);
    if (!*(v13 + 8584))
    {
      goto LABEL_52;
    }
  }

  __memcpy_chk();
  __archive_read_consume(a1, *(v13 + 8552));
  v9 = __archive_read_ahead(a1, 0xEuLL, 0);
  if (!v9)
  {
    goto LABEL_50;
  }

  v7 = archive_le32dec_7(v9);
  if (v7 < 0x10 || v7 > 0x40000)
  {
    goto LABEL_51;
  }

  if (archive_le16dec_3(v9 + 4) == 3)
  {
    *(v13 + 8556) = archive_le16dec_3(v9 + 6);
    v3 = *(v13 + 8556);
    if ((v3 - 26113) > 2 && v3 != 26121 && (v3 - 26126) > 2 && v3 != 26370 && v3 != 26401 && v3 != 26400 && v3 != 26625)
    {
      archive_set_error(a1, 79, "Unknown encryption algorithm: %u", *(v13 + 8556));
      return -25;
    }

    *(v13 + 8560) = archive_le16dec_3(v9 + 8);
    *(v13 + 8564) = archive_le16dec_3(v9 + 10);
    if ((*(v13 + 8564) & 0xF000u) - 1 > 2 || (*(v13 + 8564) & 0xF000) == 0 || (*(v13 + 8564) & 0xF000) == 0x4000)
    {
      archive_set_error(a1, 79, "Unknown encryption flag: %u", *(v13 + 8564));
      return -25;
    }

    v5 = *(v13 + 8568);
    *(v13 + 8568) = archive_le16dec_3(v9 + 12);
    __archive_read_consume(a1, 14);
    if ((*(v13 + 8568) & 0xF) != 0 || *(v13 + 8568) + 16 > v7 || (*(v13 + 8568) + 16) < *(v13 + 8568))
    {
LABEL_51:
      archive_set_error(a1, 79, "Corrupted ZIP file data");
      return -30;
    }

    if (v5 < *(v13 + 8568))
    {
      free(*(v13 + 8592));
      *(v13 + 8592) = 0;
    }

    if (!__archive_read_ahead(a1, *(v13 + 8568), 0))
    {
      goto LABEL_50;
    }

    if (!*(v13 + 8592))
    {
      *(v13 + 8592) = malloc_type_malloc(*(v13 + 8568), 0x91762FCFuLL);
      if (!*(v13 + 8592))
      {
        goto LABEL_52;
      }
    }

    __memcpy_chk();
    __archive_read_consume(a1, *(v13 + 8568));
    v10 = __archive_read_ahead(a1, 4uLL, 0);
    if (!v10)
    {
      goto LABEL_50;
    }

    if (archive_le32dec_7(v10))
    {
      goto LABEL_51;
    }

    __archive_read_consume(a1, 4);
    v11 = __archive_read_ahead(a1, 2uLL, 0);
    if (!v11)
    {
      goto LABEL_50;
    }

    v6 = *(v13 + 8572);
    *(v13 + 8572) = archive_le16dec_3(v11);
    __archive_read_consume(a1, 2);
    if ((*(v13 + 8572) & 0xF) != 0 || *(v13 + 8568) + *(v13 + 8572) + 16 > v7 || *(v13 + 8568) + *(v13 + 8572) + 16 < (*(v13 + 8568) + *(v13 + 8572)))
    {
      goto LABEL_51;
    }

    if (v6 < *(v13 + 8572))
    {
      free(*(v13 + 8600));
      *(v13 + 8600) = 0;
    }

    if (!__archive_read_ahead(a1, *(v13 + 8572), 0))
    {
LABEL_50:
      archive_set_error(a1, 79, "Truncated ZIP file data");
      return -30;
    }

    if (*(v13 + 8600) || (*(v13 + 8600) = malloc_type_malloc(*(v13 + 8572), 0xBE94EA6AuLL)) != 0)
    {
      __memcpy_chk();
      __archive_read_consume(a1, *(v13 + 8572));
      v12 = __archive_read_ahead(a1, 4uLL, 0);
      if (v12)
      {
        *(v13 + 8576) = archive_le32dec_7(v12);
        __archive_read_consume(a1, 4);
        archive_set_error(a1, 79, "Encrypted file is unsupported");
        return -25;
      }

      goto LABEL_50;
    }

LABEL_52:
    archive_set_error(a1, 12, "No memory for ZIP decryption");
    return -30;
  }

  v1 = archive_le16dec_3(v9 + 4);
  archive_set_error(a1, 79, "Unsupported encryption format version: %u", v1);
  return -25;
}

uint64_t init_WinZip_AES_decryption(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = **(a1 + 2072);
  if (!*(v10 + 8160) && !*(v10 + 8548))
  {
    v4 = *(*(v10 + 136) + 136);
    switch(v4)
    {
      case 1:
        v7 = 8;
        v8 = 16;
        break;
      case 2:
        v7 = 12;
        v8 = 24;
        break;
      case 3:
        v7 = 16;
        v8 = 32;
        break;
      default:
        goto LABEL_33;
    }

    ahead = __archive_read_ahead(a1, v7 + 2, 0);
    if (!ahead)
    {
      archive_set_error(a1, 79, "Truncated ZIP file data");
      return -30;
    }

    for (i = 0; ; ++i)
    {
      __s = __archive_read_next_passphrase(a1);
      if (!__s)
      {
        if (i <= 0)
        {
          archive_set_error(a1, -1, "Passphrase required for this entry");
        }

        else
        {
          archive_set_error(a1, -1, "Incorrect passphrase");
        }

        return -25;
      }

      memset(__b, 0, sizeof(__b));
      v1 = strlen(__s);
      if ((__archive_cryptor[0])(__s, v1, ahead, v7, 0x3E8u, __b, 2 * v8 + 2))
      {
        goto LABEL_20;
      }

      if (__b[2 * v8] == ahead[v7] && __b[2 * v8 + 1] == ahead[v7 + 1])
      {
        break;
      }

      if (i > 10000)
      {
        archive_set_error(a1, -1, "Too many incorrect passphrases");
        return -25;
      }
    }

    if (off_1F3DE4E78(v10 + 8080, __b, v8))
    {
LABEL_20:
      archive_set_error(a1, -1, "Decryption is unsupported due to lack of crypto library");
      return -25;
    }

    if (__archive_hmac((v10 + 8164), &__b[v8], v8))
    {
      off_1F3DE4E88(v10 + 8080);
      archive_set_error(a1, -1, "Failed to initialize HMAC-SHA1");
      return -25;
    }

    *(v10 + 8548) = 1;
    *(v10 + 8160) = 1;
    __archive_read_consume(a1, v7 + 2);
    *(v10 + 144) -= v7 + 12;
    if ((*(*(v10 + 136) + 126) & 8) != 0 || (*(v10 + 144) & 0x8000000000000000) == 0)
    {
      *(v10 + 152) += v7 + 12;
      *(v10 + 8048) = 0;
      *(*(v10 + 136) + 128) = *(*(v10 + 136) + 140);
      return zip_alloc_decryption_buffer(a1);
    }

LABEL_33:
    archive_set_error(a1, 79, "Corrupted ZIP file data");
    return -30;
  }

  return 0;
}

uint64_t init_traditional_PKWARE_decryption(uint64_t a1)
{
  v9 = a1;
  v8 = **(a1 + 2072);
  ahead = 0;
  i = 0;
  v5 = 0;
  if (*(v8 + 8076))
  {
    return 0;
  }

  else if ((*(*(v8 + 136) + 126) & 8) != 0 || *(v8 + 144) >= 12)
  {
    ahead = __archive_read_ahead(v9, 0xCuLL, 0);
    if (ahead)
    {
      for (i = 0; ; ++i)
      {
        __s = 0;
        v3 = 0;
        __s = __archive_read_next_passphrase(v9);
        if (!__s)
        {
          if (i <= 0)
          {
            archive_set_error(v9, -1, "Passphrase required for this entry");
          }

          else
          {
            archive_set_error(v9, -1, "Incorrect passphrase");
          }

          return -25;
        }

        v1 = strlen(__s);
        v5 = trad_enc_init((v8 + 8064), __s, v1, ahead, 0xCuLL, &v3);
        if (!v5 && v3 == *(*(v8 + 136) + 131))
        {
          break;
        }

        if (i > 10000)
        {
          archive_set_error(v9, -1, "Too many incorrect passphrases");
          return -25;
        }
      }

      __archive_read_consume(v9, 12);
      *(v8 + 8076) = 1;
      if ((*(*(v8 + 136) + 126) & 8) == 0)
      {
        *(v8 + 144) -= 12;
      }

      *(v8 + 152) += 12;
      *(v8 + 8048) = 0;
      return zip_alloc_decryption_buffer(v9);
    }

    else
    {
      archive_set_error(v9, 79, "Truncated ZIP file data");
      return -30;
    }
  }

  else
  {
    archive_set_error(v9, 79, "Truncated Zip encrypted body: only %jd bytes available", *(v8 + 144));
    return -30;
  }
}

uint64_t zip_read_data_none(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v15 = **(a1 + 2072);
  if (*(v15 + 8548))
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  v12 = v4;
  if ((*(*(v15 + 136) + 126) & 8) != 0)
  {
    v10 = 0;
    v9 = v12 + 24;
    v14 = __archive_read_ahead(v19, v12 + 24, &v13);
    if (v13 < v12 + 24)
    {
LABEL_6:
      archive_set_error(v19, 79, "Truncated ZIP file data");
      return -30;
    }

    v10 = &v14[v12];
    if (v14[v12] == 80 && v10[1] == 75 && v10[2] == 7 && v10[3] == 8)
    {
      v5 = archive_le32dec_7(v10 + 4);
      if (v5 == *(v15 + 168) || *(v15 + 184) || *(v15 + 8548) && *(*(v15 + 136) + 132) == 2)
      {
        *(v15 + 186) = 1;
        if (*(v15 + 8548) && (v11 = check_authentication_code(v19, v14)) != 0)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    ++v10;
    while (v10 < &v14[v13 - 4])
    {
      switch(v10[3])
      {
        case 80:
          v10 += 3;
          break;
        case 75:
          v10 += 2;
          break;
        case 7:
          ++v10;
          break;
        default:
          if (v10[3] == 8 && v10[2] == 7 && v10[1] == 75 && *v10 == 80)
          {
            goto LABEL_32;
          }

          v10 += 4;
          break;
      }
    }

LABEL_32:
    v10 -= v12;
    v13 = v10 - v14;
  }

  else
  {
    if (!*(v15 + 144))
    {
      *(v15 + 186) = 1;
      if (*(v15 + 8548) && (v11 = check_authentication_code(v19, 0)) != 0)
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    v14 = __archive_read_ahead(v19, 1uLL, &v13);
    if (v13 <= 0)
    {
      goto LABEL_6;
    }

    if (v13 > *(v15 + 144))
    {
      v13 = *(v15 + 144);
    }
  }

  if (*(v15 + 8076) || *(v15 + 8160))
  {
    v8 = v13;
    if (v13 > *(v15 + 8040))
    {
      v8 = *(v15 + 8040);
    }

    if (*(v15 + 8076))
    {
      trad_enc_decrypt_update(v15 + 8064, v14, v8, *(v15 + 8024), v8);
    }

    else
    {
      v7 = v8;
      off_1F3DE4DC8((v15 + 8164), v14, v8);
      off_1F3DE4E80(v15 + 8080, v14, v8, *(v15 + 8024), &v7);
    }

    v13 = v8;
    v14 = *(v15 + 8024);
  }

  *(v15 + 144) -= v13;
  *(v15 + 160) += v13;
  *(v15 + 152) += v13;
  *(v15 + 128) += v13;
  *v17 = v13;
  *v18 = v14;
  return 0;
}

uint64_t zip_read_data_zipx_bzip2(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = **(a1 + 2072);
  v11 = 0;
  if (*(v12 + 185) || (v8 = zipx_bzip2_init(v16, v12)) == 0)
  {
    v9 = __archive_read_ahead(v16, 1uLL, &v11);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v6 = *(v12 + 144) < v11 ? *(v12 + 144) : v11;
      if (v6 >= 1)
      {
        *(v12 + 472) = v9;
        *(v12 + 480) = v6;
        *(v12 + 488) = 0;
        *(v12 + 484) = 0;
        *(v12 + 496) = *(v12 + 192);
        *(v12 + 504) = *(v12 + 200);
        *(v12 + 512) = 0;
        *(v12 + 508) = 0;
        v5 = BZ2_bzDecompress((v12 + 472));
        if (v5)
        {
          if (v5 != 4)
          {
            archive_set_error(v16, -1, "bzip2 decompression failed");
            return -30;
          }

          if (BZ2_bzDecompressEnd((v12 + 472)))
          {
            archive_set_error(v16, -1, "Failed to clean up bzip2 decompressor");
            return -30;
          }

          *(v12 + 186) = 1;
        }

        v10 = *(v12 + 484);
        __archive_read_consume(v16, v10);
        v7 = *(v12 + 508) | (*(v12 + 512) << 32);
        *(v12 + 144) -= v10;
        *(v12 + 152) += v10;
        *(v12 + 160) += v7;
        *v14 = v7;
        *v15 = *(v12 + 192);
        return 0;
      }
    }

    archive_set_error(v16, 79, "Truncated bzip2 file body");
    return -30;
  }

  else
  {
    return v8;
  }
}
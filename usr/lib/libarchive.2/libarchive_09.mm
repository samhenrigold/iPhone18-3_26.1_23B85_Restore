uint64_t gzip_filter_close(uint64_t a1)
{
  strm = *(a1 + 40);
  v2 = 0;
  if (LOBYTE(strm[1].next_in) && inflateEnd(strm))
  {
    archive_set_error(*(a1 + 24), -1, "Failed to clean up gzip compressor");
    v2 = -30;
  }

  free(strm[1].msg);
  free(*&strm[1].avail_in);
  free(strm);
  return v2;
}

uint64_t gzip_read_header(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 152))
  {
    archive_entry_set_mtime(a2, *(v3 + 152), 0);
  }

  if (*(v3 + 160))
  {
    archive_entry_set_pathname(a2, *(v3 + 160));
  }

  return 0;
}

uint64_t consume_header(uint64_t a1)
{
  v7 = a1;
  v6 = 0;
  v5 = 0;
  v6 = *(a1 + 40);
  v4 = peek_at_header(*(a1 + 16), 0, v6);
  if (v4)
  {
    __archive_read_filter_consume(*(v7 + 16), v4);
    *&v6[1].avail_out = crc32(0, 0, 0);
    v1 = __archive_read_filter_ahead(*(v7 + 16), 1uLL, &v5);
    v6->next_in = v1;
    v6->avail_in = v5;
    v3 = inflateInit2_(v6, -15, "1.2.12", 112);
    switch(v3)
    {
      case -6:
        archive_set_error(*(v7 + 24), -1, "Internal error initializing compression library: invalid library version");
        break;
      case -4:
        archive_set_error(*(v7 + 24), 12, "Internal error initializing compression library: out of memory");
        break;
      case -2:
        archive_set_error(*(v7 + 24), -1, "Internal error initializing compression library: invalid setup parameter");
        break;
      case 0:
        LOBYTE(v6[1].next_in) = 1;
        return 0;
      default:
        archive_set_error(*(v7 + 24), -1, "Internal error initializing compression library:  Zlib error %d", v3);
        break;
    }

    return -30;
  }

  return 1;
}

uint64_t consume_trailer(uint64_t a1)
{
  v6 = a1;
  strm = 0;
  v4 = 0;
  v3 = 0;
  strm = *(a1 + 40);
  LOBYTE(strm[1].next_in) = 0;
  if (inflateEnd(strm))
  {
    archive_set_error(*(v6 + 24), -1, "Failed to clean up gzip decompressor");
    return -30;
  }

  else
  {
    v1 = __archive_read_filter_ahead(*(v6 + 16), 8uLL, &v3);
    v4 = v1;
    if (v1 && v3)
    {
      __archive_read_filter_consume(*(v6 + 16), 8);
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_write_set_format_ustar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ustar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200404DE2C876uLL);
    if (v2)
    {
      *(a1 + 248) = v2;
      *(a1 + 256) = "ustar";
      *(a1 + 272) = archive_write_ustar_options;
      *(a1 + 288) = archive_write_ustar_header;
      *(a1 + 296) = archive_write_ustar_data;
      *(a1 + 304) = archive_write_ustar_close;
      *(a1 + 312) = archive_write_ustar_free;
      *(a1 + 280) = archive_write_ustar_finish_entry;
      *(a1 + 16) = 196609;
      *(a1 + 24) = "POSIX ustar";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate ustar data");
      return -30;
    }
  }
}

uint64_t archive_write_ustar_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 248);
  v4 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 16) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v5 + 16))
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
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", *(a1 + 256));
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_ustar_header(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v11 = *(a1 + 248);
  if (*(v11 + 16))
  {
    v9 = *(v11 + 16);
  }

  else
  {
    if (!*(v11 + 32))
    {
      *(v11 + 24) = archive_string_default_conversion_for_write();
      *(v11 + 32) = 1;
    }

    v9 = *(v11 + 24);
  }

  if (archive_entry_pathname(v14))
  {
    if (archive_entry_hardlink(v14) || archive_entry_symlink(v14) || archive_entry_filetype(v14) != 0x8000)
    {
      archive_entry_set_size(v14, 0);
    }

    if (archive_entry_filetype(v14) == 0x4000)
    {
      v7 = 0;
      __s = archive_entry_pathname(v14);
      if (__s)
      {
        if (*__s && __s[strlen(__s) - 1] != 47)
        {
          v4 = 0;
          v5 = 0;
          v6 = 0;
          v7 = strlen(__s);
          if (!archive_string_ensure(&v4, v7 + 2))
          {
            archive_set_error(v15, 12, "Can't allocate ustar data");
            archive_string_free(&v4);
            return -30;
          }

          v5 = 0;
          archive_strncat(&v4, __s, v7);
          archive_strappend_char(&v4, 47);
          archive_entry_copy_pathname(v14, v4);
          archive_string_free(&v4);
        }
      }
    }

    v10 = 0;
    v13 = __archive_write_format_header_ustar(v15, v17, v14, -1, 1, v9);
    if (v13 >= -20)
    {
      v12 = __archive_write_output(v15, v17, 512);
      if (v12 >= -20)
      {
        if (v12 < v13)
        {
          v13 = v12;
        }

        v2 = archive_entry_size(v14);
        *v11 = v2;
        *(v11 + 8) = -*v11 & 0x1FFLL;
        archive_entry_free(v10);
        return v13;
      }

      else
      {
        archive_entry_free(v10);
        return v12;
      }
    }

    else
    {
      archive_entry_free(v10);
      return v13;
    }
  }

  else
  {
    archive_set_error(v15, -1, "Can't record entry in tar file without pathname");
    return -25;
  }
}

uint64_t archive_write_ustar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_ustar_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_ustar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  LODWORD(result) = __archive_write_nulls(a1, *v2 + v2[1]);
  v2[1] = 0;
  *v2 = 0;
  return result;
}

uint64_t __archive_write_format_header_ustar(_DWORD *a1, _BYTE *a2, void *a3, int a4, int a5, uint64_t a6)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v37 = 0;
  i = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v34 = 0;
  v30 = -1;
  __memcpy_chk();
  v35 = _archive_entry_pathname_l(v41, &v31, &v33, v38);
  if (v35)
  {
    if (*__error() == 12)
    {
      archive_set_error(v43, 12, "Can't allocate memory for Pathname");
      return -30;
    }

    v29 = v43;
    v28 = v31;
    v6 = archive_string_conversion_charset_name(v38);
    archive_set_error(v29, 79, "Can't translate pathname '%s' to %s", v28, v6);
    v34 = -20;
  }

  if (v33 > 0x64)
  {
    v32 = strchr(&v31[v33 - 101], 47);
    if (v32 == v31)
    {
      v32 = strchr(v32 + 1, 47);
    }

    if (v32 && v32[1] && v32 <= v31 + 155)
    {
      __memcpy_chk();
      __memcpy_chk();
    }

    else
    {
      archive_set_error(v43, 63, "Pathname too long");
      v34 = -25;
    }
  }

  else
  {
    __memcpy_chk();
  }

  v35 = _archive_entry_hardlink_l(v41, &v32, &v33, v38);
  if (v35)
  {
    if (*__error() == 12)
    {
LABEL_17:
      archive_set_error(v43, 12, "Can't allocate memory for Linkname");
      return -30;
    }

    v27 = v43;
    v26 = v32;
    v7 = archive_string_conversion_charset_name(v38);
    archive_set_error(v27, 79, "Can't translate linkname '%s' to %s", v26, v7);
    v34 = -20;
  }

  if (v33)
  {
    v30 = 49;
  }

  else
  {
    v35 = _archive_entry_symlink_l(v41, &v32, &v33, v38);
    if (v35)
    {
      if (*__error() == 12)
      {
        goto LABEL_17;
      }

      v25 = v43;
      v24 = v32;
      v8 = archive_string_conversion_charset_name(v38);
      archive_set_error(v25, 79, "Can't translate linkname '%s' to %s", v24, v8);
      v34 = -20;
    }
  }

  if (v33)
  {
    if (v33 > 0x64)
    {
      archive_set_error(v43, 63, "Link contents too long");
      v34 = -25;
      v33 = 100;
    }

    __memcpy_chk();
  }

  v35 = _archive_entry_uname_l(v41, &v32, &v33, v38);
  if (v35)
  {
    if (*__error() == 12)
    {
      archive_set_error(v43, 12, "Can't allocate memory for Uname");
      return -30;
    }

    v23 = v43;
    v22 = v32;
    v9 = archive_string_conversion_charset_name(v38);
    archive_set_error(v23, 79, "Can't translate uname '%s' to %s", v22, v9);
    v34 = -20;
  }

  if (v33)
  {
    if (v33 > 0x20)
    {
      if (v40 != 120)
      {
        archive_set_error(v43, -1, "Username too long");
        v34 = -25;
      }

      v33 = 32;
    }

    __memcpy_chk();
  }

  v35 = _archive_entry_gname_l(v41, &v32, &v33, v38);
  if (v35)
  {
    if (*__error() == 12)
    {
      archive_set_error(v43, 12, "Can't allocate memory for Gname");
      return -30;
    }

    v21 = v43;
    v20 = v32;
    v10 = archive_string_conversion_charset_name(v38);
    archive_set_error(v21, 79, "Can't translate gname '%s' to %s", v20, v10);
    v34 = -20;
  }

  if (v33)
  {
    if (strlen(v32) > 0x20)
    {
      if (v40 != 120)
      {
        archive_set_error(v43, -1, "Group name too long");
        v34 = -25;
      }

      v33 = 32;
    }

    __memcpy_chk();
  }

  v11 = archive_entry_mode(v41);
  if (format_number_0(v11 & 0xFFF, v42 + 100, 6, 8, v39))
  {
    archive_set_error(v43, 34, "Numeric mode too large");
    v34 = -25;
  }

  v12 = archive_entry_uid(v41);
  if (format_number_0(v12, v42 + 108, 6, 8, v39))
  {
    archive_set_error(v43, 34, "Numeric user ID too large");
    v34 = -25;
  }

  v13 = archive_entry_gid(v41);
  if (format_number_0(v13, v42 + 116, 6, 8, v39))
  {
    archive_set_error(v43, 34, "Numeric group ID too large");
    v34 = -25;
  }

  v14 = archive_entry_size(v41);
  if (format_number_0(v14, v42 + 124, 11, 12, v39))
  {
    archive_set_error(v43, 34, "File size out of range");
    v34 = -25;
  }

  v15 = archive_entry_mtime(v41);
  if (format_number_0(v15, v42 + 136, 11, 11, v39))
  {
    archive_set_error(v43, 34, "File modification time too large");
    v34 = -25;
  }

  if (archive_entry_filetype(v41) == 24576 || archive_entry_filetype(v41) == 0x2000)
  {
    v16 = archive_entry_rdevmajor(v41);
    if (format_number_0(v16, v42 + 329, 6, 8, v39))
    {
      archive_set_error(v43, 34, "Major device number too large");
      v34 = -25;
    }

    v17 = archive_entry_rdevminor(v41);
    if (format_number_0(v17, v42 + 337, 6, 8, v39))
    {
      archive_set_error(v43, 34, "Minor device number too large");
      v34 = -25;
    }
  }

  if (v40 < 0)
  {
    if (v30 < 0)
    {
      v19 = archive_entry_filetype(v41);
      switch(v19)
      {
        case 4096:
          v42[156] = 54;
          break;
        case 8192:
          v42[156] = 51;
          break;
        case 16384:
          v42[156] = 53;
          break;
        case 24576:
          v42[156] = 52;
          break;
        case 32768:
          v42[156] = 48;
          break;
        case 40960:
          v42[156] = 50;
          break;
        default:
          __archive_write_entry_filetype_unsupported(v43, v41, "ustar");
          v34 = -25;
          break;
      }
    }

    else
    {
      v42[156] = v30;
    }
  }

  else
  {
    v42[156] = v40;
  }

  v37 = 0;
  for (i = 0; i < 512; ++i)
  {
    v37 += v42[i];
  }

  v42[154] = 0;
  format_octal_2(v37, v42 + 148, 6);
  return v34;
}

uint64_t format_number_0(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v7 = a3;
  v6 = 1 << (3 * a3);
  if (a5)
  {
    return format_octal_2(a1, a2, v7);
  }

  else
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      while (v7 <= a4)
      {
        if (a1 < v6)
        {
          return format_octal_2(a1, a2, v7);
        }

        ++v7;
        v6 *= 8;
      }
    }

    return format_256_0(a1, a2, a4);
  }
}

uint64_t format_octal_2(uint64_t a1, _BYTE *a2, int a3)
{
  v13 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v9--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v11++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v12 = &a2[a3];
    while (1)
    {
      v5 = v10--;
      if (v5 <= 0)
      {
        break;
      }

      *--v12 = (v13 & 7) + 48;
      v13 >>= 3;
    }

    if (v13)
    {
      while (1)
      {
        v6 = v9--;
        if (v6 <= 0)
        {
          break;
        }

        v7 = v12++;
        *v7 = 55;
      }

      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t format_256_0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v6 = (a2 + a3);
  while (1)
  {
    v3 = v5--;
    if (v3 <= 0)
    {
      break;
    }

    *--v6 = a1;
    a1 >>= 8;
  }

  *v6 |= 0x80u;
  return 0;
}

uint64_t __archive_read_get_extract(uint64_t a1)
{
  if (*(a1 + 2080))
  {
    return *(a1 + 2080);
  }

  *(a1 + 2080) = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (*(a1 + 2080))
  {
    *(a1 + 2088) = archive_read_extract_cleanup;
    return *(a1 + 2080);
  }

  archive_set_error(a1, 12, "Can't extract");
  return 0;
}

uint64_t archive_read_extract_cleanup(uint64_t a1)
{
  v2 = 0;
  if (**(a1 + 2080))
  {
    v2 = archive_write_free(**(a1 + 2080));
  }

  free(*(a1 + 2080));
  *(a1 + 2080) = 0;
  return v2;
}

uint64_t archive_read_extract2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 152))
  {
    archive_write_disk_set_skip_file(a3, *(a1 + 160), *(a1 + 168));
  }

  v5 = archive_write_header(a3, a2);
  if (v5 < -20)
  {
    v5 = -20;
  }

  if (v5)
  {
    archive_copy_error(a1, a3);
  }

  else if (!archive_entry_size_is_set(a2) || archive_entry_size(a2) > 0)
  {
    v5 = copy_data(a1, a3);
  }

  v4 = archive_write_finish_entry(a3);
  if (v4 < -20)
  {
    v4 = -20;
  }

  if (v4 && !v5)
  {
    archive_copy_error(a1, a3);
  }

  if (v4 < v5)
  {
    return v4;
  }

  return v5;
}

uint64_t copy_data(_DWORD *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v9 = __archive_read_get_extract(a1);
  if (v9)
  {
    while (1)
    {
      data_block = archive_read_data_block(v13, &v10, &v8, &v11);
      if (data_block == 1)
      {
        return 0;
      }

      if (data_block)
      {
        return data_block;
      }

      v7 = archive_write_data_block(v12, v10, v8, v11);
      if (v7 < -20)
      {
        v7 = -20;
      }

      if (v7 < 0)
      {
        break;
      }

      if (*(v9 + 8))
      {
        (*(v9 + 8))(*(v9 + 16));
      }
    }

    v5 = v13;
    v4 = archive_errno(v12);
    v2 = archive_error_string(v12);
    archive_set_error(v5, v4, "%s", v2);
    return v7;
  }

  else
  {
    return -30;
  }
}

uint64_t archive_read_extract_set_progress_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __archive_read_get_extract(a1);
  if (result)
  {
    *(result + 8) = a2;
    *(result + 16) = a3;
  }

  return result;
}

uint64_t archive_write_set_format_filter_by_ext(_DWORD *a1, const char *a2)
{
  array_index = get_array_index(a2);
  if (array_index < 0)
  {
    archive_set_error(a1, 22, "No such format '%s'", a2);
    a1[1] = 0x8000;
    return -30;
  }

  else
  {
    v3 = ((&names_0)[3 * array_index + 1])(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return ((&names_0)[3 * array_index + 2])(a1);
    }
  }
}

uint64_t get_array_index(const char *a1)
{
  for (i = 0; (&names_0)[3 * i]; ++i)
  {
    if (!cmpsuff(a1, (&names_0)[3 * i]))
    {
      return i;
    }
  }

  return -1;
}

uint64_t archive_write_set_format_filter_by_ext_def(_DWORD *a1, const char *a2, const char *a3)
{
  array_index = get_array_index(a2);
  if (array_index < 0)
  {
    array_index = get_array_index(a3);
  }

  if (array_index < 0)
  {
    archive_set_error(a1, 22, "No such format '%s'", a2);
    a1[1] = 0x8000;
    return -30;
  }

  else
  {
    v4 = ((&names_0)[3 * array_index + 1])(a1);
    if (v4)
    {
      return v4;
    }

    else
    {
      return ((&names_0)[3 * array_index + 2])(a1);
    }
  }
}

uint64_t cmpsuff(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    v4 = strlen(a1);
    v3 = strlen(a2);
    if (v4 < v3)
    {
      return -1;
    }

    else
    {
      return strcmp(&a1[v4 - v3], a2);
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_write_zip_set_compression_deflate(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 7, "archive_write_zip_set_compression_deflate") == -30)
  {
    return -30;
  }

  else if (*(a1 + 16) == 327680)
  {
    *(*(a1 + 248) + 648) = 8;
    return 0;
  }

  else
  {
    archive_set_error(a1, -1, "Can only use archive_write_zip_set_compression_deflate with zip format");
    return -30;
  }
}

uint64_t archive_write_zip_set_compression_store(uint64_t a1)
{
  v3 = *(a1 + 248);
  if (__archive_check_magic(a1, -1329217314, 7, "archive_write_zip_set_compression_deflate") == -30)
  {
    return -30;
  }

  else if (*(a1 + 16) == 327680)
  {
    *(v3 + 648) = 0;
    return 0;
  }

  else
  {
    archive_set_error(a1, -1, "Can only use archive_write_zip_set_compression_store with zip format");
    return -30;
  }
}

uint64_t archive_write_set_format_zip(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_zip") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x320uLL, 0x10B00403725003EuLL);
    if (v2)
    {
      *(v2 + 162) = -1;
      *(v2 + 163) = -1;
      *(v2 + 73) = real_crc32_0;
      *(v2 + 98) = 0x10000;
      *(v2 + 99) = malloc_type_malloc(*(v2 + 98), 0x24B9A1BuLL);
      if (*(v2 + 99))
      {
        *(a1 + 248) = v2;
        *(a1 + 256) = "zip";
        *(a1 + 272) = archive_write_zip_options;
        *(a1 + 288) = archive_write_zip_header;
        *(a1 + 296) = archive_write_zip_data;
        *(a1 + 280) = archive_write_zip_finish_entry;
        *(a1 + 304) = archive_write_zip_close;
        *(a1 + 312) = archive_write_zip_free;
        *(a1 + 16) = 327680;
        *(a1 + 24) = "ZIP";
        return 0;
      }

      else
      {
        free(v2);
        archive_set_error(a1, 12, "Can't allocate compression buffer");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data");
      return -30;
    }
  }
}

uint64_t archive_write_zip_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 248);
  v4 = -25;
  if (!strcmp(a2, "compression"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "deflate"))
      {
        *(v5 + 648) = 8;
        return 0;
      }

      else if (!strcmp(a3, "store"))
      {
        *(v5 + 648) = 0;
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: compression option needs a compression name", *(a1 + 256));
    }

    return v4;
  }

  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      if (*a3 == 48)
      {
        *(v5 + 648) = 0;
      }

      else
      {
        *(v5 + 648) = 8;
        *(v5 + 652) = *a3 - 48;
      }

      return 0;
    }

    else
    {
      return -20;
    }
  }

  if (!strcmp(a2, "encryption"))
  {
    if (!a3)
    {
      *(v5 + 660) = 0;
      return 0;
    }

    if (*a3 == 49 || !strcmp(a3, "traditional") || !strcmp(a3, "zipcrypt") || !strcmp(a3, "ZipCrypt"))
    {
      if (is_traditional_pkware_encryption_supported())
      {
        *(v5 + 660) = 1;
        return 0;
      }
    }

    else if (!strcmp(a3, "aes128"))
    {
      if (is_winzip_aes_encryption_supported(2))
      {
        *(v5 + 660) = 2;
        return 0;
      }
    }

    else
    {
      if (strcmp(a3, "aes256"))
      {
        archive_set_error(a1, -1, "%s: unknown encryption '%s'", *(a1 + 256), a3);
        return v4;
      }

      if (is_winzip_aes_encryption_supported(3))
      {
        *(v5 + 660) = 3;
        return 0;
      }
    }

    archive_set_error(a1, -1, "encryption not supported");
    return v4;
  }

  if (!strcmp(a2, "experimental"))
  {
    if (a3 && *a3)
    {
      *(v5 + 664) |= 4u;
    }

    else
    {
      *(v5 + 664) &= ~4u;
    }

    return 0;
  }

  else if (!strcmp(a2, "fakecrc32"))
  {
    if (a3 && *a3)
    {
      *(v5 + 584) = fake_crc32_0;
    }

    else
    {
      *(v5 + 584) = real_crc32_0;
    }

    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 632) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v5 + 632))
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
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", *(a1 + 256));
    }

    return v4;
  }

  else if (!strcmp(a2, "zip64"))
  {
    if (a3 && *a3)
    {
      *(v5 + 664) |= 2u;
      *(v5 + 664) &= ~1u;
    }

    else
    {
      *(v5 + 664) &= ~2u;
      *(v5 + 664) |= 1u;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_zip_header(uint64_t a1, uint64_t *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v60 = a1;
  v59 = a2;
  v58 = *(a1 + 248);
  v57 = 0;
  v56 = 0;
  v55 = 0;
  __s = 0;
  v53 = 0;
  sconv_1 = get_sconv_1(a1, v58);
  v51 = 0;
  *&v50[4] = 0;
  v49 = 10;
  *v50 = archive_entry_filetype(v59);
  if (*v50 == 0x8000 || *v50 == 0x4000 || *v50 == 40960)
  {
    if (v58[83])
    {
      if (archive_entry_size_is_set(v59) && archive_entry_size(v59) > 0xFFFFFFFFLL)
      {
        archive_set_error(v60, -1, "Files > 4GB require Zip64 extensions");
        return -25;
      }

      if (v58[78] > 0xFFFFFFFFLL)
      {
        archive_set_error(v60, -1, "Archives > 4GB require Zip64 extensions");
        return -25;
      }
    }

    if (*v50 != 0x8000)
    {
      archive_entry_set_size(v59, 0);
    }

    *v58 = v58[78];
    v58[5] = 0x7FFFFFFFFFFFFFFFLL;
    v58[1] = 0;
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = 0;
    *(v58 + 17) = 0;
    *(v58 + 14) = (v58[73])(0, 0);
    *(v58 + 16) = 0;
    archive_entry_free(v58[6]);
    v58[6] = 0;
    if (*(v58 + 176))
    {
      off_1F3DE4EA0((v58 + 12));
    }

    if (*(v58 + 564))
    {
      off_1F3DE4DD8(v58 + 180);
    }

    *(v58 + 564) = 0;
    *(v58 + 176) = 0;
    *(v58 + 88) = 0;
    if (*v50 == 0x8000 && (!archive_entry_size_is_set(v59) || archive_entry_size(v59) > 0))
    {
      v42 = *(v58 + 165);
      if (v42)
      {
        if ((v42 - 1) <= 2)
        {
          *(v58 + 17) |= 1u;
          *(v58 + 16) = *(v58 + 165);
        }
      }
    }

    v58[6] = archive_entry_clone(v59);
    if (v58[6])
    {
      if (sconv_1)
      {
        v48 = 0;
        v47 = 0;
        if (_archive_entry_pathname_l(v59, &v48, &v47, sconv_1))
        {
          if (*__error() == 12)
          {
            archive_set_error(v60, 12, "Can't allocate memory for Pathname");
            return -30;
          }

          v41 = v60;
          v40 = archive_entry_pathname(v59);
          v2 = archive_string_conversion_charset_name(sconv_1);
          archive_set_error(v41, 79, "Can't translate Pathname '%s' to %s", v40, v2);
          *&v50[2] = -20;
        }

        if (v47)
        {
          archive_entry_set_pathname(v58[6], v48);
        }

        if (*v50 == 40960)
        {
          if (_archive_entry_symlink_l(v59, &v48, &v47, sconv_1))
          {
            if (*__error() == 12)
            {
              archive_set_error(v60, 12, "Can't allocate memory  for Symlink");
              return -30;
            }
          }

          else if (v47)
          {
            archive_entry_set_symlink(v58[6], v48);
          }
        }
      }

      v3 = archive_entry_pathname(v58[6]);
      if (!is_all_ascii(v3))
      {
        if (v58[79])
        {
          v4 = archive_string_conversion_charset_name(v58[79]);
          if (!strcmp(v4, "UTF-8"))
          {
            *(v58 + 17) |= 0x800u;
          }
        }

        else
        {
          v5 = nl_langinfo(0);
          if (!strcmp(v5, "UTF-8"))
          {
            *(v58 + 17) |= 0x800u;
          }
        }
      }

      v55 = path_length(v58[6]);
      if (*v50 == 40960)
      {
        __s = archive_entry_symlink(v58[6]);
        if (__s)
        {
          v53 = strlen(__s);
        }

        else
        {
          v53 = 0;
        }

        v58[5] = v53;
        v58[1] = v53;
        v58[2] = v53;
        v6 = (v58[73])(*(v58 + 14), __s, v53);
        v58[7] = v6;
        if (v49 < 20)
        {
          v49 = 20;
        }
      }

      else if (*v50 == 0x8000)
      {
        if (archive_entry_size_is_set(v58[6]))
        {
          v46 = archive_entry_size(v58[6]);
          v45 = 0;
          v58[5] = v46;
          *(v58 + 15) = *(v58 + 162);
          if (*(v58 + 15) == -1)
          {
            *(v58 + 15) = 8;
          }

          if (!v46)
          {
            *(v58 + 15) = 0;
          }

          if (*(v58 + 15))
          {
            v58[2] = v46;
            if (v49 < 20)
            {
              v49 = 20;
            }
          }

          else
          {
            v58[1] = v46;
            v58[2] = v46;
            if (v49 < 10)
            {
              v49 = 10;
            }
          }

          if (*(v58 + 17))
          {
            v39 = *(v58 + 16);
            if (v39)
            {
              switch(v39)
              {
                case 1:
                  v45 = 12;
                  if (v49 < 20)
                  {
                    v49 = 20;
                  }

                  break;
                case 2:
                  v45 = 20;
                  if (v49 < 20)
                  {
                    v49 = 20;
                  }

                  break;
                case 3:
                  v45 = 28;
                  if (v49 < 20)
                  {
                    v49 = 20;
                  }

                  break;
              }
            }

            if (!*(v58 + 15))
            {
              v58[1] += v45;
            }
          }

          if (((v58[83] & 2) != 0 || v58[2] + v45 > 0xFFFFFFFFLL || v58[2] > 4278190080 && *(v58 + 15)) && v49 < 45)
          {
            v49 = 45;
          }

          *(v58 + 17) |= 8u;
        }

        else
        {
          *(v58 + 15) = *(v58 + 162);
          if (*(v58 + 15) == -1)
          {
            *(v58 + 15) = 8;
          }

          *(v58 + 17) |= 8u;
          if (v58[83])
          {
            if (*(v58 + 15))
            {
              if (v49 < 20)
              {
                v49 = 20;
              }
            }

            else if (v49 < 10)
            {
              v49 = 10;
            }
          }

          else if (v49 < 45)
          {
            v49 = 45;
          }

          if (*(v58 + 17))
          {
            v38 = *(v58 + 16);
            if (v38)
            {
              if ((v38 - 1) <= 2 && v49 < 20)
              {
                v49 = 20;
              }
            }
          }
        }
      }

      else
      {
        *(v58 + 15) = 0;
        v58[5] = 0;
        if (v49 < 20)
        {
          v49 = 20;
        }
      }

      v63 = 0u;
      v64 = 0u;
      LODWORD(v63) = *"PK\x03\x04";
      archive_le16enc_2(&v63 + 2, v49);
      archive_le16enc_2(&v63 + 3, *(v58 + 17));
      if (*(v58 + 16) == 2 || *(v58 + 16) == 3)
      {
        archive_le16enc_2(&v63 + 4, 99);
      }

      else
      {
        archive_le16enc_2(&v63 + 4, *(v58 + 15));
      }

      v7 = archive_entry_mtime(v58[6]);
      v8 = dos_time(v7);
      archive_le32enc_6(&v63 + 10, v8);
      if ((*(v58 + 17) & 8) == 0)
      {
        archive_le32enc_6(&v63 + 14, *(v58 + 14));
        archive_le32enc_6(&v64 + 2, v58[1]);
        archive_le32enc_6(&v64 + 6, v58[2]);
      }

      archive_le16enc_2(&v64 + 5, v55);
      if (*(v58 + 16) == 1)
      {
        if ((*(v58 + 17) & 8) != 0)
        {
          *(v58 + 89) = BYTE11(v63);
        }

        else
        {
          *(v58 + 89) = BYTE1(v64);
        }
      }

      v9 = cd_alloc(v58, 46);
      v58[71] = v9;
      ++v58[77];
      __memset_chk();
      __memcpy_chk();
      archive_le16enc_2((v58[71] + 4), v49 + 768);
      archive_le16enc_2((v58[71] + 6), v49);
      archive_le16enc_2((v58[71] + 8), *(v58 + 17));
      if (*(v58 + 16) == 2 || *(v58 + 16) == 3)
      {
        archive_le16enc_2((v58[71] + 10), 99);
      }

      else
      {
        archive_le16enc_2((v58[71] + 10), *(v58 + 15));
      }

      v36 = v58[71] + 12;
      v10 = archive_entry_mtime(v58[6]);
      v11 = dos_time(v10);
      archive_le32enc_6(v36, v11);
      archive_le16enc_2((v58[71] + 28), v55);
      v37 = v58[71] + 38;
      v12 = archive_entry_mode(v58[6]);
      archive_le32enc_6(v37, v12 << 16);
      v57 = cd_alloc(v58, v55);
      copy_path(v58[6], v57);
      memset(__b, 0, sizeof(__b));
      v57 = __b;
      if (archive_entry_uid_is_set(v59) || archive_entry_gid_is_set(v59))
      {
        __memcpy_chk();
        v57 = (v57 + 5);
        v13 = v57;
        v57 = (v57 + 1);
        *v13 = 4;
        v34 = v57;
        v14 = archive_entry_uid(v59);
        archive_le32enc_6(v34, v14);
        v57 += 2;
        v15 = v57;
        v57 = (v57 + 1);
        *v15 = 4;
        v35 = v57;
        v16 = archive_entry_gid(v59);
        archive_le32enc_6(v35, v16);
        v57 += 2;
      }

      if ((*(v58 + 17) & 1) != 0 && (*(v58 + 16) == 2 || *(v58 + 16) == 3))
      {
        __memcpy_chk();
        if (archive_entry_size_is_set(v58[6]) && archive_entry_size(v58[6]) < 20)
        {
          archive_le16enc_2(v57 + 2, 2);
          *(v58 + 23) = 2;
        }

        else
        {
          *(v58 + 23) = 1;
        }

        v57 += 4;
        if (*(v58 + 16) == 2)
        {
          v17 = 1;
        }

        else
        {
          v17 = 3;
        }

        v18 = v57;
        v57 = (v57 + 1);
        *v18 = v17;
        archive_le16enc_2(v57++, *(v58 + 15));
      }

      v58[72] = v58[76];
      v56 = cd_alloc(v58, v57 - __b);
      __memcpy_chk();
      if (archive_entry_mtime_is_set(v59) || archive_entry_atime_is_set(v59) || archive_entry_ctime_is_set(v59))
      {
        v44 = v57;
        __memcpy_chk();
        v57 += 2;
        v32 = archive_entry_mtime_is_set(v59) != 0;
        if (archive_entry_atime_is_set(v59))
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }

        v33 = v32 | v19;
        if (archive_entry_ctime_is_set(v59))
        {
          v20 = 4;
        }

        else
        {
          v20 = 0;
        }

        v21 = v33 | v20;
        v22 = v57;
        v57 = (v57 + 1);
        *v22 = v21;
        if (archive_entry_mtime_is_set(v59))
        {
          v31 = v57;
          v23 = archive_entry_mtime(v59);
          archive_le32enc_6(v31, v23);
          v57 += 2;
        }

        if (archive_entry_atime_is_set(v59))
        {
          v30 = v57;
          v24 = archive_entry_atime(v59);
          archive_le32enc_6(v30, v24);
          v57 += 2;
        }

        if (archive_entry_ctime_is_set(v59))
        {
          v29 = v57;
          v25 = archive_entry_ctime(v59);
          archive_le32enc_6(v29, v25);
          v57 += 2;
        }

        archive_le16enc_2(v44 + 1, v57 - v44 - 4);
      }

      if (archive_entry_size_is_set(v58[6]) && (v58[2] > 0xFFFFFFFFLL || v58[1] > 0xFFFFFFFFLL))
      {
        __memcpy_chk();
        v57 += 2;
      }

      if ((v58[83] & 4) != 0)
      {
        v43 = v57;
        __memcpy_chk();
        v57 += 2;
        *v57 = 7;
        v57 = (v57 + 1);
        archive_le16enc_2(v57++, v49 + 768);
        archive_le16enc_2(v57++, 0);
        v28 = v57;
        v26 = archive_entry_mode(v58[6]);
        archive_le32enc_6(v28, v26 << 16);
        v57 += 2;
        archive_le16enc_2(v43 + 1, v57 - (v43 + 4));
      }

      archive_le16enc_2(&v64 + 6, v57 - __b);
      v51 = __archive_write_output(v60, &v63, 30);
      if (v51)
      {
        return -30;
      }

      else
      {
        v58[78] += 30;
        v51 = write_path(v58[6], v60);
        if (v51 > 0)
        {
          v58[78] += v51;
          v51 = __archive_write_output(v60, __b, v57 - __b);
          if (v51)
          {
            return -30;
          }

          else
          {
            v58[78] += v57 - __b;
            if (__s)
            {
              v51 = __archive_write_output(v60, __s, v53);
              if (v51)
              {
                return -30;
              }

              v58[3] += v53;
              v58[4] += v53;
              v58[78] += v53;
            }

            if (*(v58 + 15) == 8 && (v58[92] = 0, v58[93] = 0, v58[94] = 0, v58[87] = v58[99], *(v58 + 176) = v58[98], deflateInit2_(v58 + 6, *(v58 + 163), 8, -15, 8, 0, "1.2.12", 112)))
            {
              archive_set_error(v60, 12, "Can't init deflate compressor");
              return -30;
            }

            else
            {
              return *&v50[2];
            }
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
      archive_set_error(v60, 12, "Can't allocate zip header data");
      return -30;
    }
  }

  else
  {
    __archive_write_entry_filetype_unsupported(v60, v59, "zip");
    return -25;
  }
}

uint64_t archive_write_zip_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  inited = 0;
  v11 = *(a1 + 248);
  if (a3 > *(v11 + 40))
  {
    v13 = *(v11 + 40);
  }

  *(v11 + 32) += v13;
  if (!v13)
  {
    return 0;
  }

  if (*(v11 + 68))
  {
    v6 = *(v11 + 64);
    if (v6)
    {
      if (v6 == 1)
      {
        if (!*(v11 + 88))
        {
          inited = init_traditional_pkware_encryption(v15);
          if (inited)
          {
            return inited;
          }

          *(v11 + 88) = 1;
        }
      }

      else if ((v6 == 3 || v6 == 2) && !*(v11 + 176))
      {
        inited = init_winzip_aes_encryption(v15);
        if (inited)
        {
          return inited;
        }

        *(v11 + 564) = 1;
        *(v11 + 176) = 1;
      }
    }
  }

  v5 = *(v11 + 60);
  if (v5 == -1)
  {
LABEL_55:
    archive_set_error(v15, -1, "Invalid ZIP compression type");
    return -30;
  }

  if (v5)
  {
    if (v5 == 8)
    {
      *(v11 + 672) = v14;
      *(v11 + 680) = v13;
      while (1)
      {
        inited = deflate((v11 + 672), 0);
        if (inited == -2)
        {
          return -30;
        }

        if (!*(v11 + 704))
        {
          if (*(v11 + 88))
          {
            trad_enc_encrypt_update((v11 + 76), *(v11 + 792), *(v11 + 784), *(v11 + 792), *(v11 + 784));
          }

          else if (*(v11 + 176))
          {
            v7 = *(v11 + 784);
            inited = off_1F3DE4E98(v11 + 96, *(v11 + 792), *(v11 + 784), *(v11 + 792), &v7);
            if (inited < 0)
            {
              archive_set_error(v15, -1, "Failed to encrypt file");
              return -25;
            }

            off_1F3DE4DC8((v11 + 180), *(v11 + 792), *(v11 + 784));
          }

          inited = __archive_write_output(v15, *(v11 + 792), *(v11 + 784));
          if (inited)
          {
            return inited;
          }

          *(v11 + 24) += *(v11 + 784);
          *(v11 + 624) += *(v11 + 784);
          *(v11 + 696) = *(v11 + 792);
          *(v11 + 704) = *(v11 + 784);
        }

        if (!*(v11 + 680))
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_55;
  }

  if (*(v11 + 88) || *(v11 + 176))
  {
    v10 = v14;
    v9 = v14 + v13;
    while (v10 < v9)
    {
      v8 = 0;
      if (*(v11 + 88))
      {
        v8 = trad_enc_encrypt_update((v11 + 76), v10, v9 - v10, *(v11 + 792), *(v11 + 784));
      }

      else
      {
        v8 = *(v11 + 784);
        inited = off_1F3DE4E98(v11 + 96, v10, v9 - v10, *(v11 + 792), &v8);
        if (inited < 0)
        {
          archive_set_error(v15, -1, "Failed to encrypt file");
          return -25;
        }

        off_1F3DE4DC8((v11 + 180), *(v11 + 792), v8);
      }

      inited = __archive_write_output(v15, *(v11 + 792), v8);
      if (inited)
      {
        return inited;
      }

      *(v11 + 24) += v8;
      *(v11 + 624) += v8;
      v10 += v8;
    }
  }

  else
  {
    inited = __archive_write_output(v15, v14, v13);
    if (inited)
    {
      return inited;
    }

    *(v11 + 624) += v13;
    *(v11 + 24) += v13;
  }

LABEL_56:
  *(v11 + 40) -= v13;
  if (!*(v11 + 176) || *(v11 + 92) != 2)
  {
    v3 = (*(v11 + 584))(*(v11 + 56), v14, v13);
    *(v11 + 56) = v3;
  }

  return v13;
}

uint64_t archive_write_zip_finish_entry(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = *(a1 + 248);
  v10 = 0;
  if (*(v11 + 15) == 8)
  {
    while (1)
    {
      v9 = 0;
      v10 = deflate(v11 + 6, 4);
      if (v10 == -2)
      {
        return -30;
      }

      v9 = v11[98] - *(v11 + 176);
      if (*(v11 + 88))
      {
        trad_enc_encrypt_update(v11 + 19, v11[99], v9, v11[99], v9);
      }

      else if (*(v11 + 176))
      {
        v8 = v9;
        v10 = off_1F3DE4E98((v11 + 12), v11[99], v9, v11[99], &v8);
        if ((v10 & 0x80000000) != 0)
        {
          archive_set_error(v12, -1, "Failed to encrypt file");
          return -25;
        }

        off_1F3DE4DC8((v11 + 180), v11[99], v9);
      }

      v10 = __archive_write_output(v12, v11[99], v9);
      if (v10)
      {
        return v10;
      }

      v11[3] += v9;
      v11[78] += v9;
      v11[87] = v11[99];
      if (*(v11 + 176))
      {
        break;
      }

      *(v11 + 176) = v11[98];
    }

    deflateEnd(v11 + 6);
  }

  if (*(v11 + 564))
  {
    v7 = 20;
    off_1F3DE4DD0((v11 + 180), v23, &v7);
    v10 = __archive_write_output(v12, v23, 10);
    if (v10)
    {
      return v10;
    }

    v11[3] += 10;
    v11[78] += 10;
  }

  if ((*(v11 + 17) & 8) != 0)
  {
    HIDWORD(v19) = *"PK\a\b";
    if (*(v11 + 176) && *(v11 + 23) == 2)
    {
      archive_le32enc_6(v20, 0);
    }

    else
    {
      archive_le32enc_6(v20, *(v11 + 14));
    }

    if (v11[3] > 0xFFFFFFFFLL || v11[4] > 0xFFFFFFFFLL || (v11[83] & 2) != 0)
    {
      archive_le64enc_2(v21, v11[3]);
      archive_le64enc_2(&v22 + 4, v11[4]);
      v10 = __archive_write_output(v12, &v19 + 4, 24);
      v11[78] += 24;
    }

    else
    {
      archive_le32enc_6(v21, v11[3]);
      archive_le32enc_6(&v22, v11[4]);
      v10 = __archive_write_output(v12, &v19 + 4, 16);
      v11[78] += 16;
    }

    if (v10)
    {
      return -30;
    }
  }

  if (archive_entry_mtime_is_set(v11[6]))
  {
    __memcpy_chk();
    v1 = archive_entry_mtime(v11[6]);
    archive_le32enc_6(&v19, v1);
    if (!cd_alloc(v11, &v19 + 4 - &v18))
    {
LABEL_33:
      archive_set_error(v12, 12, "Can't allocate zip data");
      return -30;
    }

    __memcpy_chk();
  }

  if (*(v11 + 176) && *(v11 + 23) == 2)
  {
    archive_le32enc_6(v11[71] + 16, 0);
  }

  else
  {
    archive_le32enc_6(v11[71] + 16, *(v11 + 14));
  }

  archive_le32enc_6(v11[71] + 20, v11[3]);
  archive_le32enc_6(v11[71] + 24, v11[4]);
  archive_le16enc_2((v11[71] + 30), v11[76] - v11[72]);
  archive_le32enc_6(v11[71] + 42, *v11);
  if (v11[3] >= 0xFFFFFFFFLL || v11[4] >= 0xFFFFFFFFLL || *v11 > 0xFFFFFFFFLL)
  {
    __memcpy_chk();
    v6 = &v16;
    if (v11[4] >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v11[71] + 24, 0xFFFFFFFF);
      archive_le64enc_2(&v16, v11[4]);
      v6 = &v17;
    }

    if (v11[3] >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v11[71] + 20, 0xFFFFFFFF);
      archive_le64enc_2(v6, v11[3]);
      v6 += 8;
    }

    if (*v11 >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v11[71] + 42, 0xFFFFFFFF);
      archive_le64enc_2(v6, *v11);
      v6 += 8;
    }

    archive_le16enc_2(&v15, v6 - (&vars0 - 105));
    if (!cd_alloc(v11, v6 - &v14))
    {
      goto LABEL_33;
    }

    __memcpy_chk();
    if (archive_le16dec_6((v11[71] + 6)) < 45)
    {
      archive_le16enc_2((v11[71] + 6), 45);
    }
  }

  if (*(v11 + 176) && *(v11 + 23) == 2)
  {
    archive_le32enc_6(v11[71] + 16, 0);
  }

  else
  {
    archive_le32enc_6(v11[71] + 16, *(v11 + 14));
  }

  v5 = v11[71] + 20;
  if (v11[3] <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v5, v11[3]);
  }

  else
  {
    archive_le32enc_6(v5, 0xFFFFFFFF);
  }

  v4 = v11[71] + 24;
  if (v11[4] <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v4, v11[4]);
  }

  else
  {
    archive_le32enc_6(v4, 0xFFFFFFFF);
  }

  archive_le16enc_2((v11[71] + 30), v11[76] - v11[72]);
  v3 = v11[71] + 42;
  if (*v11 <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v3, *v11);
  }

  else
  {
    archive_le32enc_6(v3, 0xFFFFFFFF);
  }

  return 0;
}

uint64_t archive_write_zip_close(uint64_t a1)
{
  __b[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 248);
  v5 = *(v3 + 624);
  for (i = *(v3 + 592); i; i = *i)
  {
    if (__archive_write_output(a1, i[2], i[3] - i[2]))
    {
      return -30;
    }

    *(v3 + 624) += i[3] - i[2];
  }

  v4 = *(v3 + 624);
  if (v4 - v5 > 0xFFFFFFFFLL || v5 > 0xFFFFFFFFLL || *(v3 + 616) >= 0x10000uLL || (*(v3 + 664) & 2) != 0)
  {
    memset(__b, 0, 0x38uLL);
    LODWORD(__b[0]) = *"PK\x06\x06";
    archive_le64enc_2(__b + 4, 44);
    archive_le16enc_2(&__b[1] + 2, 45);
    archive_le16enc_2(&__b[1] + 3, 45);
    archive_le64enc_2(&__b[3], *(v3 + 616));
    archive_le64enc_2(&__b[4], *(v3 + 616));
    archive_le64enc_2(&__b[5], v4 - v5);
    archive_le64enc_2(&__b[6], v5);
    if (__archive_write_output(a1, __b, 56))
    {
      return -30;
    }

    *(v3 + 624) += 56;
    __b[1] = 0;
    LODWORD(__b[2]) = 0;
    __b[0] = *"PK\x06\a";
    archive_le32enc_6(__b + 4, 0);
    archive_le64enc_2(&__b[1], v4);
    archive_le32enc_6(&__b[2], 1u);
    if (__archive_write_output(a1, __b, 20))
    {
      return -30;
    }

    *(v3 + 624) += 20;
  }

  memset(__b, 0, 0x40uLL);
  LODWORD(__b[0]) = *"PK\x05\x06";
  if (*(v3 + 616) >= 0xFFFFuLL)
  {
    archive_le16enc_2(&__b[1], 0xFFFF);
  }

  else
  {
    archive_le16enc_2(&__b[1], *(v3 + 616));
  }

  if (*(v3 + 616) >= 0xFFFFuLL)
  {
    archive_le16enc_2(&__b[1] + 1, 0xFFFF);
  }

  else
  {
    archive_le16enc_2(&__b[1] + 1, *(v3 + 616));
  }

  if (v4 - v5 >= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(&__b[1] + 4, 0xFFFFFFFF);
  }

  else
  {
    archive_le32enc_6(&__b[1] + 4, v4 - v5);
  }

  if (v5 >= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(&__b[2], 0xFFFFFFFF);
  }

  else
  {
    archive_le32enc_6(&__b[2], v5);
  }

  if (__archive_write_output(a1, __b, 22))
  {
    return -30;
  }

  else
  {
    *(v3 + 624) += 22;
    return 0;
  }
}

uint64_t archive_write_zip_free(uint64_t a1)
{
  v3 = *(a1 + 248);
  while (*(v3 + 74))
  {
    v2 = *(v3 + 74);
    *(v3 + 74) = *v2;
    free(v2[2]);
    free(v2);
  }

  free(*(v3 + 99));
  archive_entry_free(*(v3 + 6));
  if (v3[176])
  {
    off_1F3DE4EA0((v3 + 96));
  }

  if (v3[564])
  {
    off_1F3DE4DD8(v3 + 180);
  }

  free(v3);
  *(a1 + 248) = 0;
  return 0;
}

uint64_t is_winzip_aes_encryption_supported(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v5 = 0;
  v4 = 0;
  memset(__b, 0, 0x50uLL);
  bzero(&v3, 0x180uLL);
  if (v6 == 2)
  {
    v4 = 8;
    v5 = 16;
  }

  else
  {
    v4 = 16;
    v5 = 32;
  }

  if (archive_random(v10, v4))
  {
    return 0;
  }

  else if ((__archive_cryptor[0])("p", 1uLL, v10, v4, 0x3E8u, v9, 2 * v5 + 2))
  {
    return 0;
  }

  else if (off_1F3DE4E90(__b, v9, v5))
  {
    return 0;
  }

  else
  {
    v2 = __archive_hmac(&v3, &v9[v5], v5);
    off_1F3DE4EA0(__b);
    if (v2)
    {
      return 0;
    }

    else
    {
      off_1F3DE4DD8(&v3);
      return 1;
    }
  }
}

uint64_t get_sconv_1(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 632))
  {
    return *(a2 + 632);
  }

  if (!*(a2 + 656))
  {
    *(a2 + 640) = archive_string_default_conversion_for_write();
    *(a2 + 656) = 1;
  }

  return *(a2 + 640);
}

uint64_t is_all_ascii(unsigned __int8 *a1)
{
  while (*a1)
  {
    v1 = a1++;
    if (*v1 > 0x7Fu)
    {
      return 0;
    }
  }

  return 1;
}

size_t path_length(void *a1)
{
  v4 = archive_entry_filetype(a1);
  __s = archive_entry_pathname(a1);
  if (!__s)
  {
    return 0;
  }

  v2 = strlen(__s);
  if (v4 == 0x4000 && (!*__s || __s[v2 - 1] != 47))
  {
    ++v2;
  }

  return v2;
}

uint64_t archive_le32enc_6(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t dos_time(time_t a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = localtime_r(&v5, &__b);
  if (v4->tm_year >= 80)
  {
    if (v4->tm_year <= 207)
    {
      v3 = 0;
      v3 = ((v4->tm_year - 80) & 0x7F) << 9;
      v3 += 32 * ((v4->tm_mon + 1) & 0xF);
      v3 += v4->tm_mday & 0x1F;
      v3 <<= 16;
      v3 += (v4->tm_hour & 0x1F) << 11;
      v3 += 32 * (v4->tm_min & 0x3F);
      v3 += (v4->tm_sec & 0x3E) >> 1;
    }

    else
    {
      return -6307971;
    }
  }

  else
  {
    return 2162688;
  }

  return v3;
}

uint64_t cd_alloc(void *a1, uint64_t a2)
{
  if (a1[74] && (*(a1[75] + 24) + a2) <= *(a1[75] + 16) + *(a1[75] + 8))
  {
    goto LABEL_10;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040322C5439uLL);
  if (v3)
  {
    v3[1] = 0x10000;
    v3[2] = malloc_type_malloc(v3[1], 0x7EC37AE2uLL);
    if (!v3[2])
    {
      free(v3);
      return 0;
    }

    v3[3] = v3[2];
    if (a1[74])
    {
      *a1[75] = v3;
      a1[75] = v3;
    }

    else
    {
      a1[75] = v3;
      a1[74] = v3;
    }

LABEL_10:
    v4 = *(a1[75] + 24);
    *(a1[75] + 24) = v4 + a2;
    a1[76] += a2;
    return v4;
  }

  return 0;
}

uint64_t copy_path(void *a1, uint64_t a2)
{
  __s = archive_entry_pathname(a1);
  v4 = strlen(__s);
  v3 = archive_entry_filetype(a1);
  result = __memcpy_chk();
  if (v3 == 0x4000 && __s[v4 - 1] != 47)
  {
    *(a2 + v4) = 47;
  }

  return result;
}

uint64_t write_path(void *a1, uint64_t a2)
{
  v6 = archive_entry_pathname(a1);
  v5 = archive_entry_filetype(a1);
  if (v6)
  {
    v2 = strlen(v6);
    if (!__archive_write_output(a2, v6, v2))
    {
      v4 = strlen(v6);
      if (((v5 == 0x4000) & (v6[strlen(v6) - 1] != 47)) != 0)
      {
        if (__archive_write_output(a2, "/", 1))
        {
          return -30;
        }

        ++v4;
      }

      return v4;
    }

    return -30;
  }

  else
  {
    return -30;
  }
}

uint64_t init_traditional_pkware_encryption(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 248);
  __s = __archive_write_get_passphrase(a1);
  if (__s)
  {
    if (archive_random(v9, 0xBuLL))
    {
      archive_set_error(a1, -1, "Can't generate random number for encryption");
      return -30;
    }

    else
    {
      v1 = strlen(__s);
      trad_enc_init_0((v5 + 76), __s, v1);
      v9[11] = *(v5 + 89);
      trad_enc_encrypt_update((v5 + 76), v9, 0xCuLL, v8, 0xCuLL);
      v3 = __archive_write_output(a1, v8, 12);
      if (v3)
      {
        return v3;
      }

      else
      {
        *(v5 + 624) += 12;
        *(v5 + 24) += 12;
        return 0;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Encryption needs passphrase");
    return -25;
  }
}

uint64_t init_winzip_aes_encryption(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 248);
  __s = __archive_write_get_passphrase(a1);
  if (__s)
  {
    if (*(v8 + 64) == 2)
    {
      v5 = 8;
      v6 = 16;
      v1 = archive_random(v12, 8uLL);
    }

    else
    {
      v5 = 16;
      v6 = 32;
      v1 = archive_random(v12, 0x10uLL);
    }

    if (v1)
    {
      archive_set_error(a1, -1, "Can't generate random number for encryption");
      return -30;
    }

    else
    {
      v2 = strlen(__s);
      (__archive_cryptor[0])(__s, v2, v12, v5, 0x3E8u, v11, 2 * v6 + 2);
      if (off_1F3DE4E90(v8 + 96, v11, v6))
      {
        archive_set_error(a1, -1, "Decryption is unsupported due to lack of crypto library");
        return -25;
      }

      else if (__archive_hmac((v8 + 180), &v11[v6], v6))
      {
        off_1F3DE4EA0(v8 + 96);
        archive_set_error(a1, -1, "Failed to initialize HMAC-SHA1");
        return -25;
      }

      else
      {
        v12[v5] = v11[2 * v6];
        v12[v5 + 1] = v11[2 * v6 + 1];
        v4 = __archive_write_output(a1, v12, v5 + 2);
        if (v4)
        {
          return v4;
        }

        else
        {
          *(v8 + 624) += v5 + 2;
          *(v8 + 24) += v5 + 2;
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Encryption needs passphrase");
    return -25;
  }
}

uint64_t trad_enc_encrypt_update(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
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
    v7 = *(a2 + i);
    *(a4 + i) = v7 ^ trad_enc_decrypt_byte_0(a1);
    trad_enc_update_keys_0(a1, v7);
  }

  return i;
}

uint64_t trad_enc_init_0(unsigned int *a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 305419896;
  a1[1] = 591751049;
  a1[2] = 878082192;
  while (a3)
  {
    v3 = a2++;
    trad_enc_update_keys_0(a1, *v3);
    --a3;
  }

  return 0;
}

uLong trad_enc_update_keys_0(unsigned int *a1, Bytef a2)
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

uint64_t archive_le64enc_2(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_6(a1, a2);
  return archive_le32enc_6(a1 + 4, v4);
}

uint64_t archive_write_set_format_cpio_binary(uint64_t a1, int a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_binary") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x102004099191E4EuLL);
    if (v3)
    {
      *(a1 + 248) = v3;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_binary_options;
      *(a1 + 288) = archive_write_binary_header;
      *(a1 + 296) = archive_write_binary_data;
      *(a1 + 280) = archive_write_binary_finish_entry;
      *(a1 + 304) = archive_write_binary_close;
      *(a1 + 312) = archive_write_binary_free;
      *(a1 + 16) = a2;
      if (a2 == 65538)
      {
        *(a1 + 24) = "7th Edition cpio";
      }

      else
      {
        if (a2 != 65543)
        {
          archive_set_error(a1, 22, "binary format must be 'pwb' or 'bin'");
          return -30;
        }

        *(a1 + 24) = "PWB cpio";
      }

      return 0;
    }

    archive_set_error(a1, 12, "Can't allocate cpio data");
    return -30;
  }
}

uint64_t archive_write_binary_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 248);
  v4 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 40) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v5 + 40))
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
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", *(a1 + 256));
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_binary_header(_DWORD *a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v7))
  {
    v4 = v7;
    sconv_2 = get_sconv_2(v8);
    if (_archive_entry_pathname_l(v7, &v6, &v5, sconv_2) && *__error() == 12)
    {
      archive_set_error(v8, 12, "Can't allocate memory for Pathname");
      return -30;
    }

    else if (v5 && v6 && *v6)
    {
      if (archive_entry_size_is_set(v7) && (archive_entry_size(v7) & 0x8000000000000000) == 0)
      {
        return write_header_1(v8, v7);
      }

      else
      {
        archive_set_error(v8, -1, "Size required", v4);
        return -25;
      }
    }

    else
    {
      archive_set_error(v8, -1, "Pathname required", v4);
      return -25;
    }
  }

  else
  {
    archive_set_error(v8, -1, "Filetype required");
    return -25;
  }
}

uint64_t archive_write_binary_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4 < 0)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_binary_close(uint64_t a1)
{
  v2 = archive_entry_new2(0);
  archive_entry_set_nlink(v2, 1);
  archive_entry_set_size(v2, 0);
  archive_entry_set_pathname(v2, "TRAILER!!!");
  v3 = write_header_1(a1, v2);
  archive_entry_free(v2);
  return v3;
}

uint64_t archive_write_binary_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  free(v2[2]);
  free(v2);
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv_2(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *(v3 + 40);
  if (!v2)
  {
    if (!*(v3 + 56))
    {
      *(v3 + 48) = archive_string_default_conversion_for_write();
      *(v3 + 56) = 1;
    }

    return *(v3 + 48);
  }

  return v2;
}

uint64_t write_header_1(uint64_t a1, void *a2)
{
  v33 = a1;
  v32 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  memset(v24, 0, 10);
  sconv_2 = 0;
  v20 = 0;
  v19 = 0;
  v31 = *(a1 + 248);
  v26 = 0;
  sconv_2 = get_sconv_2(a1);
  v20 = 0;
  v27 = _archive_entry_pathname_l(v32, &v29, &v19, sconv_2);
  if (v27)
  {
    if (*__error() == 12)
    {
      archive_set_error(v33, 12, "Can't allocate memory for Pathname");
      v26 = -30;
      goto LABEL_53;
    }

    v18 = v33;
    v17 = archive_entry_pathname(v32);
    v2 = archive_string_conversion_charset_name(sconv_2);
    archive_set_error(v18, 79, "Can't translate pathname '%s' to %s", v17, v2);
    v26 = -20;
  }

  v28 = v19 + 1;
  LOWORD(v22) = la_swap16(29127);
  v3 = archive_entry_dev(v32);
  WORD1(v22) = la_swap16(v3);
  v25 = synthesize_ino_value_0(v31, v32);
  if (v25 < 0)
  {
    archive_set_error(v33, 12, "No memory for ino translation table");
    v26 = -30;
  }

  else if (v25 < 0x8000)
  {
    WORD2(v22) = la_swap16(v25);
    HIWORD(v22) = archive_entry_mode(v32);
    if ((HIWORD(v22) & 0xF000) == 0xC000 || (HIWORD(v22) & 0xF000) == 0x1000)
    {
      archive_set_error(v33, 22, "sockets and fifos cannot be represented in the binary cpio formats");
      v26 = -30;
    }

    else if (v33[4] == 65543 && (HIWORD(v22) & 0xF000) == 0xA000)
    {
      archive_set_error(v33, 22, "symbolic links cannot be represented in the PWB cpio format");
      v26 = -30;
    }

    else
    {
      HIWORD(v22) = la_swap16(HIWORD(v22));
      v4 = archive_entry_uid(v32);
      LOWORD(v23) = la_swap16(v4);
      v5 = archive_entry_gid(v32);
      WORD1(v23) = la_swap16(v5);
      v6 = archive_entry_nlink(v32);
      WORD2(v23) = la_swap16(v6);
      if (archive_entry_filetype(v32) == 24576 || archive_entry_filetype(v32) == 0x2000)
      {
        v7 = archive_entry_rdev(v32);
        HIWORD(v23) = la_swap16(v7);
      }

      else
      {
        HIWORD(v23) = 0;
      }

      v8 = archive_entry_mtime(v32);
      LODWORD(v24[0]) = la_swap32(v8);
      WORD2(v24[0]) = la_swap16(v28);
      if (archive_entry_filetype(v32) != 0x8000)
      {
        archive_entry_set_size(v32, 0);
      }

      v27 = _archive_entry_symlink_l(v32, &v30, &v19, sconv_2);
      if (v27)
      {
        if (*__error() == 12)
        {
          archive_set_error(v33, 12, "Can't allocate memory for Linkname");
          v26 = -30;
          goto LABEL_53;
        }

        v16 = v33;
        v15 = archive_entry_symlink(v32);
        v9 = archive_string_conversion_charset_name(sconv_2);
        archive_set_error(v16, 79, "Can't translate linkname '%s' to %s", v15, v9);
        v26 = -20;
      }

      if (v19 && v30 && *v30)
      {
        if (v33[4] == 65543)
        {
          archive_set_error(v33, 22, "symlinks are not supported by UNIX V6 or by PWB cpio");
          v26 = -30;
          goto LABEL_53;
        }

        v10 = strlen(v30);
        *(v24 + 6) = la_swap32(v10);
      }

      else
      {
        if (v33[4] == 65543 && archive_entry_size(v32) > 0xFFFFFF)
        {
          archive_set_error(v33, 34, "File is too large for PWB binary cpio format.");
          v26 = -25;
          goto LABEL_53;
        }

        if (archive_entry_size(v32) > 0x7FFFFFFF)
        {
          archive_set_error(v33, 34, "File is too large for binary cpio format.");
          v26 = -25;
          goto LABEL_53;
        }

        v11 = archive_entry_size(v32);
        *(v24 + 6) = la_swap32(v11);
      }

      v27 = __archive_write_output(v33, &v22, 26);
      if (v27)
      {
        v26 = -30;
      }

      else
      {
        v27 = __archive_write_output(v33, v29, v28);
        if (!v27 && v28 % 2)
        {
          v27 = __archive_write_nulls(v33, 1uLL);
        }

        if (v27)
        {
          v26 = -30;
        }

        else
        {
          v12 = archive_entry_size(v32);
          *v31 = v12;
          if (*v31 % 2uLL)
          {
            ++*v31;
          }

          if (v30 && *v30)
          {
            v13 = strlen(v30);
            v27 = __archive_write_output(v33, v30, v13);
            if (!v27 && strlen(v30) % 2)
            {
              v27 = __archive_write_nulls(v33, 1uLL);
            }

            if (v27)
            {
              v26 = -30;
            }
          }
        }
      }
    }
  }

  else
  {
    archive_set_error(v33, 34, "Too many files for this cpio format");
    v26 = -30;
  }

LABEL_53:
  archive_entry_free(v20);
  return v26;
}

uint64_t synthesize_ino_value_0(uint64_t a1, uint64_t a2)
{
  v9 = archive_entry_ino64(a2);
  if (v9)
  {
    if (archive_entry_nlink(a2) >= 2)
    {
      for (i = 0; i < *(a1 + 32); ++i)
      {
        if (*(*(a1 + 16) + 16 * i) == v9)
        {
          return *(*(a1 + 16) + 16 * i + 8);
        }
      }

      v3 = *(a1 + 8) + 1;
      *(a1 + 8) = v3;
      v8 = v3;
      if (*(a1 + 24) <= *(a1 + 32))
      {
        if (*(a1 + 24) >= 0x200uLL)
        {
          v5 = 2 * *(a1 + 24);
        }

        else
        {
          v5 = 512;
        }

        v6 = malloc_type_realloc(*(a1 + 16), 16 * v5, 0x1000040D9A13B51uLL);
        if (!v6)
        {
          return -1;
        }

        *(a1 + 24) = v5;
        *(a1 + 16) = v6;
      }

      *(*(a1 + 16) + 16 * *(a1 + 32)) = v9;
      *(*(a1 + 16) + 16 * (*(a1 + 32))++ + 8) = v8;
      return v8;
    }

    v2 = *(a1 + 8) + 1;
    *(a1 + 8) = v2;
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t la_swap32(int a1)
{
  LOWORD(v2) = HIWORD(a1);
  HIWORD(v2) = a1;
  return v2;
}

uint64_t archive_write_add_filter_by_name(_DWORD *a1, const char *a2)
{
  for (i = 0; (&names_1)[2 * i]; ++i)
  {
    if (!strcmp(a2, (&names_1)[2 * i]))
    {
      return ((&names_1)[2 * i + 1])(a1);
    }
  }

  archive_set_error(a1, 22, "No such filter '%s'", a2);
  a1[1] = 0x8000;
  return -30;
}

uint64_t archive_read_support_filter_lz4(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("lz4"))
  {
    if (__archive_read_register_bidder(a1, 0, "lz4", lz4_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external lz4 program");
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements");
    return -30;
  }
}

uint64_t lz4_reader_bid(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v6 = __archive_read_filter_ahead(a2, 0xBuLL, &v5);
  if (v6)
  {
    v4 = 0;
    v3 = archive_le32dec_10(v6);
    if (v3 == 407708164)
    {
      if ((v6[4] & 0xC0) >> 6 != 1)
      {
        return 0;
      }

      if ((v6[4] & 2) != 0)
      {
        return 0;
      }

      if ((v6[5] & 0x70) >> 4 < 4)
      {
        return 0;
      }

      if ((v6[5] & 0x8F) != 0)
      {
        return 0;
      }

      return 48;
    }

    else if (v3 == 407642370)
    {
      return 32;
    }

    return v4;
  }

  return 0;
}

uint64_t lz4_reader_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "lz4 -d -q");
  *(a1 + 56) = 13;
  *(a1 + 48) = "lz4";
  return result;
}

uint64_t archive_read_format_rar_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = -25;
  v5 = **(a1 + 2072);
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 20256) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v5 + 20256))
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
      archive_set_error(a1, -1, "rar: hdrcharset option needs a character-set name");
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_rar_read_header(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 851968;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = "RAR";
  }

  v15 = **(a1 + 2072);
  if (*(v15 + 20312) == -1)
  {
    *(v15 + 20312) = 0;
  }

  ahead = __archive_read_ahead(a1, 7uLL, 0);
  if (ahead)
  {
    if (!*(v15 + 248) && (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL)))
    {
      v9 = skip_sfx_0(a1);
      if (v9 < -20)
      {
        return v9;
      }
    }

    *(v15 + 248) = 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v18 = __archive_read_ahead(a1, 7uLL, 0);
            if (!v18)
            {
              archive_set_error(a1, 79, "Failed to read next header.");
              return -30;
            }

            v16 = v18;
            v11 = v18[2];
            if (v11 != 114)
            {
              break;
            }

            if (memcmp(v18, &unk_1BF343880, 7uLL))
            {
              archive_set_error(a1, 79, "Invalid marker header");
              return -30;
            }

            __archive_read_consume(a1, 7);
          }

          if (v11 != 115)
          {
            break;
          }

          *v15 = archive_le16dec_7(v18 + 3);
          v12 = archive_le16dec_7(v18 + 5);
          if (v12 < 0xD)
          {
            goto LABEL_27;
          }

          v19 = __archive_read_ahead(a1, v12, 0);
          if (!v19)
          {
            return -30;
          }

          __memcpy_chk();
          __memcpy_chk();
          if ((*v15 & 0x200) != 0)
          {
            if (v12 < 0xE)
            {
LABEL_27:
              archive_set_error(a1, 79, "Invalid header size");
              return -30;
            }

            *(v15 + 22) = *(v19 + 13);
          }

          if ((*v15 & 0x80) != 0)
          {
            archive_entry_set_is_metadata_encrypted(a2, 1);
            archive_entry_set_is_data_encrypted(a2, 1);
            *(v15 + 20312) = 1;
            archive_set_error(a1, 79, "RAR encryption support unavailable.");
            return -30;
          }

          v4 = crc32(0, (v19 + 2), v12 - 2);
          if (v4 != archive_le16dec_7(v19))
          {
LABEL_36:
            archive_set_error(a1, 79, "Header CRC error");
            return -30;
          }

          __archive_read_consume(a1, v12);
        }

        if (v11 == 116)
        {
          return read_header_0(a1, a2, v11);
        }

        if ((v11 - 117) > 4)
        {
          break;
        }

LABEL_39:
        v8 = archive_le16dec_7(v18 + 3);
        v13 = archive_le16dec_7(v18 + 5);
        if (v13 < 7)
        {
          goto LABEL_40;
        }

        if (v8 < 0)
        {
          if (v13 < 11)
          {
LABEL_40:
            archive_set_error(a1, 79, "Invalid header size too small");
            return -30;
          }

          v2 = __archive_read_ahead(a1, v13, 0);
          if (!v2)
          {
            return -30;
          }

          v16 = v2;
          v13 += archive_le32dec_11((v2 + 7));
        }

        v7 = archive_le16dec_7(v16);
        __archive_read_consume(a1, 2);
        v14 = v13 - 2;
        crc = 0;
        while (v14 > 0)
        {
          if (v14 <= 0x8000)
          {
            len = v14;
          }

          else
          {
            len = 0x8000;
          }

          v20 = __archive_read_ahead(a1, len, 0);
          if (!v20)
          {
            goto LABEL_54;
          }

          crc = crc32(crc, v20, len);
          __archive_read_consume(a1, len);
          v14 -= len;
        }

        if (crc != v7)
        {
          goto LABEL_36;
        }

        if (v11 == 123)
        {
          return 1;
        }
      }

      if (v11 != 122)
      {
        if (v11 != 123)
        {
LABEL_54:
          archive_set_error(a1, 79, "Bad RAR file");
          return -30;
        }

        goto LABEL_39;
      }

      header_0 = read_header_0(a1, a2, v11);
      if (header_0 < -20)
      {
        return header_0;
      }
    }
  }

  return 1;
}

uint64_t archive_read_format_rar_read_data(uint64_t a1, const Bytef **a2, void *a3, void *a4)
{
  v7 = **(a1 + 2072);
  if (*(v7 + 20312) == -1)
  {
    *(v7 + 20312) = 0;
  }

  if (*(v7 + 160) > 0)
  {
    __archive_read_consume(a1, *(v7 + 160));
    *(v7 + 160) = 0;
  }

  *a2 = 0;
  if (*(v7 + 237) || *(v7 + 200) >= *(v7 + 40))
  {
    *a3 = 0;
    *a4 = *(v7 + 184);
    if (*a4 < *(v7 + 40))
    {
      *a4 = *(v7 + 40);
    }

    return 1;
  }

  else
  {
    v5 = *(v7 + 23);
    if (v5 == 48)
    {
      return read_data_stored(a1, a2, a3, a4);
    }

    if ((v5 - 49) <= 4)
    {
      data_compressed = read_data_compressed(a1, a2, a3, a4, 0);
      if (data_compressed && data_compressed != -20)
      {
        off_1F3DE4D70(v7 + 992);
        *(v7 + 912) = 1;
        *(v7 + 984) = 0;
      }
    }

    else
    {
      archive_set_error(a1, 79, "Unsupported compression method for RAR file.");
      return -30;
    }

    return data_compressed;
  }
}

uint64_t archive_read_format_rar_read_data_skip(uint64_t a1)
{
  v3 = **(a1 + 2072);
  if (*(v3 + 160) > 0)
  {
    __archive_read_consume(a1, *(v3 + 160));
    *(v3 + 160) = 0;
  }

  if (*(v3 + 168) > 0 && __archive_read_consume(a1, *(v3 + 168)) < 0)
  {
    return -30;
  }

  else if ((*v3 & 1) != 0 && (*(v3 + 24) & 2) != 0)
  {
    header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    if (header == 1)
    {
      header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    }

    if (header)
    {
      return header;
    }

    else
    {
      return archive_read_format_rar_read_data_skip(a1);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_rar_seek_data(uint64_t a1, uint64_t a2, int a3)
{
  v4 = **(a1 + 2072);
  if (*(v4 + 23) != 48)
  {
    archive_set_error(a1, -1, "Seeking of compressed RAR files is unsupported");
    return -25;
  }

  switch(a3)
  {
    case 0:
      goto LABEL_8;
    case 1:
      v12 = *(v4 + 200);
      break;
    case 2:
      v12 = *(v4 + 40);
      break;
    default:
LABEL_8:
      v12 = 0;
      break;
  }

  v13 = v12 + a2;
  if (v13 < 0)
  {
    return -1;
  }

  if (v13 > *(v4 + 40))
  {
    *(v4 + 200) = v13;
    v13 = *(v4 + 40);
  }

  v14 = v13 + *(*(v4 + 256) + 8);
  for (i = 0; i < *(v4 + 264); v14 += *(*(v4 + 256) + 24 * i + 8) - *(*(v4 + 256) + 24 * (i - 1) + 16))
  {
    ++i;
  }

  if (*v4)
  {
    do
    {
      while (v14 >= *(*(v4 + 256) + 24 * *(v4 + 264) + 8) || (*(v4 + 24) & 1) == 0)
      {
        if (v14 <= *(*(v4 + 256) + 24 * *(v4 + 264) + 16) || (*(v4 + 24) & 2) == 0)
        {
          goto LABEL_38;
        }

        if (++*(v4 + 264) >= *(v4 + 272) || v14 <= *(*(v4 + 256) + 24 * *(v4 + 264) + 16))
        {
          --*(v4 + 264);
          seek = __archive_read_seek(a1, *(*(v4 + 256) + 24 * *(v4 + 264) + 16), 0);
          if (seek < 0)
          {
            return seek;
          }

          header = archive_read_format_rar_read_header(a1, *(a1 + 144));
          if (header == 1)
          {
            *(v4 + 252) = 1;
            header = archive_read_format_rar_read_header(a1, *(a1 + 144));
          }

          if (header)
          {
            goto LABEL_25;
          }

          v14 += *(*(v4 + 256) + 24 * *(v4 + 264) + 8) - *(*(v4 + 256) + 24 * (*(v4 + 264) - 1) + 16);
        }

        else
        {
          v14 += *(*(v4 + 256) + 24 * *(v4 + 264) + 8) - *(*(v4 + 256) + 24 * (*(v4 + 264) - 1) + 16);
        }
      }

      if (!*(v4 + 264))
      {
        archive_set_error(a1, -1, "Attempt to seek past beginning of RAR data block");
        return -25;
      }

      --*(v4 + 264);
      v14 -= *(*(v4 + 256) + 24 * (*(v4 + 264) + 1) + 8) - *(*(v4 + 256) + 24 * *(v4 + 264) + 16);
    }

    while (v14 < *(*(v4 + 256) + 24 * *(v4 + 264) + 8));
    v7 = __archive_read_seek(a1, *(*(v4 + 256) + 24 * *(v4 + 264) + 8) - *(*(v4 + 256) + 24 * *(v4 + 264)), 0);
    if (v7 < 0)
    {
      return v7;
    }

    if (archive_read_format_rar_read_header(a1, *(a1 + 144)))
    {
LABEL_25:
      archive_set_error(a1, -1, "Error during seek of RAR file");
      return -25;
    }

    --*(v4 + 264);
  }

LABEL_38:
  v10 = __archive_read_seek(a1, v14, 0);
  if (v10 < 0)
  {
    return v10;
  }

  *(v4 + 168) = *(*(v4 + 256) + 24 * *(v4 + 264) + 16) - v10;
  for (j = *(v4 + 264); j; v10 -= *(*(v4 + 256) + 24 * (j + 1) + 8) - *(*(v4 + 256) + 24 * j + 16))
  {
    --j;
  }

  v11 = v10 - *(*(v4 + 256) + 8);
  __archive_reset_read_data(a1);
  *(v4 + 160) = 0;
  *(v4 + 184) = 0;
  if (v11 == *(v4 + 40) && *(v4 + 200) > *(v4 + 40))
  {
    return *(v4 + 200);
  }

  *(v4 + 200) = v11;
  return *(v4 + 200);
}

uint64_t archive_read_format_rar_has_encrypted_entries(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && (v2 = **(a1 + 2072)) != 0)
  {
    return *(v2 + 20312);
  }

  else
  {
    return -1;
  }
}

uint64_t skip_sfx_0(_DWORD *a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v3 = 0;
  v4 = 0;
  v2 = 4096;
  while ((v4 + v2) <= 0x20000)
  {
    v8 = __archive_read_ahead(v9, v2, &v3);
    if (v8)
    {
      if (v3 < 64)
      {
        break;
      }

      v7 = v8;
      v6 = &v8[v3];
      while (v7 + 7 < v6)
      {
        if (!memcmp(v7, &unk_1BF343880, 7uLL))
        {
          v5 = (v7 - v8);
          __archive_read_consume(v9, v7 - v8);
          return 0;
        }

        v7 += 16;
      }

      v5 = (v7 - v8);
      __archive_read_consume(v9, v7 - v8);
      v4 += v5;
    }

    else
    {
      v2 >>= 1;
      if (v2 < 64)
      {
        break;
      }
    }
  }

  archive_set_error(v9, 79, "Couldn't find out RAR header");
  return -30;
}

uint64_t read_header_0(uint64_t a1, uint64_t a2, char a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v66 = a1;
  v65 = a2;
  v64 = a3;
  ahead = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  *v59 = 0;
  *&v59[3] = 0;
  memset(v58, 0, 25);
  v41 = 0;
  v60 = **(a1 + 2072);
  v44 = v60[2532];
  if (!v44)
  {
    if (!*(v60 + 5060))
    {
      v60[2531] = archive_string_default_conversion_for_read();
      *(v60 + 5060) = 1;
    }

    v44 = v60[2531];
  }

  ahead = __archive_read_ahead(v66, 7uLL, 0);
  if (!ahead)
  {
    return -30;
  }

  v62 = ahead;
  *v59 = *ahead;
  *&v59[3] = *(ahead + 3);
  *(v60 + 6) = archive_le16dec_7(&v59[3]);
  v57 = archive_le16dec_7(&v59[5]);
  if (v57 < 0x20)
  {
    goto LABEL_115;
  }

  crc = crc32(0, v62 + 2, 5u);
  __archive_read_consume(v66, 7);
  if ((v60[3] & 0x10) != 0)
  {
    archive_set_error(v66, 79, "RAR solid archive support unavailable.");
    return -30;
  }

  *(v60 + 23) = 0;
  v60[4] = 0;
  v60[5] = 0;
  v60[6] = 0;
  v60[16] = 0;
  v60[14] = 0;
  v60[18] = 0;
  *(v60 + 32) = 0;
  __memset_chk();
  v60[14] = 0;
  v60[15] = 0;
  v60[16] = 0;
  v60[17] = 0;
  v60[6] = 0;
  v60[7] = 0;
  v60[18] = 0;
  v60[19] = 0;
  v3 = __archive_read_ahead(v66, v57 - 7, 0);
  ahead = v3;
  if (!v3)
  {
    archive_set_error(v66, 79, "Failed to read full header content.");
    return -30;
  }

  v28 = crc32(crc, ahead, v57 - 7);
  if (v28 != archive_le16dec_7(v59))
  {
    archive_set_error(v66, 79, "Header CRC error");
    return -30;
  }

  v62 = ahead;
  v61 = &ahead[v57 - 7];
  v58[0] = *ahead;
  *(v58 + 9) = *(ahead + 9);
  v62 = (ahead + 25);
  *(v60 + 23) = BYTE2(v58[1]);
  v45 = archive_le32dec_11(v58 + 13);
  v60[6] = get_time(v45);
  v60[1] = archive_le32dec_11(v58 + 9);
  if ((v60[3] & 4) != 0)
  {
    archive_entry_set_is_data_encrypted(v65, 1);
    *(v60 + 5078) = 1;
    archive_set_error(v66, 79, "RAR encryption support unavailable.");
  }

  if ((v60[3] & 0x100) != 0)
  {
    if (v62 + 8 > v61)
    {
      goto LABEL_115;
    }

    v69[0] = v58[0];
    v69[1] = *v62;
    v62 += 4;
    v68[0] = DWORD1(v58[0]);
    v68[1] = *v62;
    v62 += 4;
    v60[4] = archive_le64dec_4(v69);
    v60[5] = archive_le64dec_4(v68);
  }

  else
  {
    v60[4] = archive_le32dec_11(v58);
    v60[5] = archive_le32dec_11(v58 + 4);
  }

  if (v60[4] < 0 || v60[5] < 0)
  {
    archive_set_error(v66, 79, "Invalid sizes specified.");
    return -30;
  }

  v60[21] = v60[4];
  if (v64 == 122)
  {
    v39 = v62 - ahead;
    if (v60[4] > (0x7FFFFFFFFFFFFFFFLL - v57))
    {
      archive_set_error(v66, 79, "Extended header size too large.");
      return -30;
    }

    v57 += v60[4];
    ahead = __archive_read_ahead(v66, v57 - 7, 0);
    if (!ahead)
    {
      archive_set_error(v66, 79, "Failed to read extended header data.");
      return -30;
    }

    v61 = &ahead[v57 - 7];
    v62 = &ahead[v39];
  }

  v51 = archive_le16dec_7(&v58[1] + 3);
  if (&v62[v51] > v61)
  {
    archive_set_error(v66, 79, "Invalid filename size");
    return -30;
  }

  if (v60[12] < (2 * v51 + 2))
  {
    v38 = malloc_type_realloc(v60[9], 2 * v51 + 2, 0x1EB388C9uLL);
    if (!v38)
    {
      goto LABEL_108;
    }

    v60[9] = v38;
    v60[12] = 2 * v51 + 2;
  }

  v49 = v60[9];
  __memcpy_chk();
  v49[v51] = 0;
  if ((v60[3] & 0x200) == 0)
  {
    v43 = v44;
    while (1)
    {
      v48 = strchr(v49, 92);
      if (!v48)
      {
        break;
      }

      *v48 = 47;
    }

    v62 += v51;
    goto LABEL_94;
  }

  if (v51 == strlen(v49))
  {
    if (!v60[2533])
    {
      v60[2533] = archive_string_conversion_from_charset(v66, "UTF-8", 1);
      if (!v60[2533])
      {
        return -30;
      }
    }

    v43 = v60[2533];
    while (1)
    {
      v47 = strchr(v49, 92);
      if (!v47)
      {
        break;
      }

      *v47 = 47;
    }

    v62 += v51;
    goto LABEL_94;
  }

  v50 = v51;
  v35 = 2 * v51;
  v52 = 0;
  v34 = strlen(v49) + 1;
  if (v34 < v50)
  {
    v4 = v34++;
    v27 = v62[v4];
  }

  else
  {
    v27 = 0;
  }

  v37 = 0;
  v36 = 0;
  while (1)
  {
    v26 = 0;
    if (v34 < v50)
    {
      v26 = v52 < v35;
    }

    if (!v26)
    {
      break;
    }

    if (!v37)
    {
      v5 = v34++;
      v36 = v62[v5];
      v37 = 8;
    }

    v37 -= 2;
    v25 = (v36 >> v37) & 3;
    if (v25)
    {
      if (v25 == 1)
      {
        if (v34 < v50)
        {
          v9 = v52;
          v54 = v52 + 1;
          v49[v9] = v27;
          v10 = v34++;
          v11 = v54;
          v52 = v54 + 1;
          v49[v11] = v62[v10];
        }
      }

      else if (v25 == 2)
      {
        if (v34 < v50 - 1)
        {
          v12 = v52;
          v55 = v52 + 1;
          v49[v12] = v62[v34 + 1];
          v13 = v55;
          v52 = v55 + 1;
          v49[v13] = v62[v34];
          v34 += 2;
        }

        else
        {
          v34 = v50;
        }
      }

      else if (v34 < v50)
      {
        v14 = v34++;
        v30 = v62[v14];
        if ((v30 & 0x80) == 0)
        {
          v32 = 0;
          v33 = 0;
          goto LABEL_66;
        }

        if (v34 < v50)
        {
          v15 = v34++;
          v33 = v62[v15];
          v32 = v27;
LABEL_66:
          for (i = (v30 & 0x7F) + 2; ; --i)
          {
            v24 = 0;
            if (i)
            {
              v24 = v52 < v35;
            }

            if (!v24)
            {
              break;
            }

            v29 = v52 >> 1;
            v16 = v52;
            v56 = v52 + 1;
            v49[v16] = v32;
            v17 = v56;
            v52 = v56 + 1;
            v49[v17] = v62[v29] + v33;
          }
        }
      }
    }

    else if (v34 < v50)
    {
      v6 = v52;
      v53 = v52 + 1;
      v49[v6] = 0;
      v7 = v34++;
      v8 = v53;
      v52 = v53 + 1;
      v49[v8] = v62[v7];
    }
  }

  if (v52 > v35)
  {
    archive_set_error(v66, 79, "Invalid filename");
    return -30;
  }

  v18 = v52;
  v51 = v52 + 1;
  v49[v18] = 0;
  v49[v51] = 0;
  if (!v60[2534])
  {
    v60[2534] = archive_string_conversion_from_charset(v66, "UTF-16BE", 1);
    if (!v60[2534])
    {
      return -30;
    }
  }

  v43 = v60[2534];
  for (j = v49; memcmp(j, &unk_1BF343888, 2uLL); j += 2)
  {
    if (!memcmp(j, &unk_1BF34388B, 2uLL))
    {
      j[1] = 47;
    }
  }

  v62 += v34;
LABEL_94:
  if (v60[10] && v51 == v60[11] && !memcmp(v60[9], v60[10], v51 + 1))
  {
    __archive_read_consume(v66, v57 - 7);
    v60[2537] = 0;
    v60[2538] = 0;
    if (++v60[33] < v60[34])
    {
      goto LABEL_100;
    }

    ++v60[34];
    v19 = malloc_type_realloc(v60[32], 24 * v60[34], 0x1000040504FFAC1uLL);
    v60[32] = v19;
    if (v19)
    {
      *(v60[32] + 24 * v60[33]) = v57;
      *(v60[32] + 24 * v60[33] + 8) = -1;
      *(v60[32] + 24 * v60[33] + 16) = -1;
LABEL_100:
      if ((*(v60[32] + 24 * v60[33] + 8) & 0x8000000000000000) != 0)
      {
        if (v60[4] > 0x7FFFFFFFFFFFFFFFLL - **(v66 + 79))
        {
LABEL_102:
          archive_set_error(v66, 79, "Unable to store offsets.");
          return -30;
        }

        *(v60[32] + 24 * v60[33] + 8) = **(v66 + 79);
        *(v60[32] + 24 * v60[33] + 16) = *(v60[32] + 24 * v60[33] + 8) + v60[4];
      }

      return 0;
    }

LABEL_108:
    archive_set_error(v66, 12, "Couldn't allocate memory.");
    return -30;
  }

  if (*(v60 + 280))
  {
    archive_set_error(v66, 79, "Mismatch of file parts split across multi-volume archive");
    return -30;
  }

  v60[10] = malloc_type_realloc(v60[10], v51 + 1, 0x100004077774924uLL);
  __memcpy_chk();
  v60[11] = v51;
  free(v60[32]);
  v20 = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
  v60[32] = v20;
  if (!v20)
  {
    goto LABEL_108;
  }

  *v60[32] = v57;
  *(v60[32] + 8) = -1;
  *(v60[32] + 16) = -1;
  v60[33] = 0;
  v60[34] = 1;
  if ((v60[3] & 0x400) != 0)
  {
    if (v62 + 8 <= v61)
    {
      __memcpy_chk();
      v62 += 8;
      goto LABEL_113;
    }

LABEL_115:
    archive_set_error(v66, 79, "Invalid header size");
    return -30;
  }

LABEL_113:
  if ((v60[3] & 0x1000) != 0 && (read_exttime(v62, v60, v61) & 0x80000000) != 0)
  {
    goto LABEL_115;
  }

  __archive_read_consume(v66, v57 - 7);
  if (v60[4] > 0x7FFFFFFFFFFFFFFFLL - **(v66 + 79))
  {
    goto LABEL_102;
  }

  *(v60[32] + 8) = **(v66 + 79);
  *(v60[32] + 16) = *(v60[32] + 8) + v60[4];
  if (SBYTE8(v58[0]) <= 2)
  {
    *(v60 + 32) = archive_le32dec_11(&v58[1] + 5);
    if ((v60[8] & 0x10) != 0)
    {
      *(v60 + 32) = 16457;
    }

    else
    {
      *(v60 + 32) = 0x8000;
    }

    *(v60 + 32) |= 0x1A4u;
  }

  else
  {
    if ((SBYTE8(v58[0]) - 3) > 2)
    {
      archive_set_error(v66, 79, "Unknown file attributes from RAR file's host OS");
      return -30;
    }

    *(v60 + 32) = archive_le32dec_11(&v58[1] + 5);
  }

  v60[20] = 0;
  v60[22] = 0;
  v60[23] = 0;
  v60[109] = 0;
  v60[25] = 0;
  *(v60 + 58) = 0;
  v60[24] = 0;
  *(v60 + 5072) = 0;
  v60[2537] = 0;
  v60[2538] = 0;
  v60[30] = 0;
  *(v60 + 237) = 0;
  *(v60 + 208) = 1;
  *(v60 + 986) = 0;
  *(v60 + 912) = 1;
  free(v60[28]);
  v60[28] = 0;
  *(v60 + 53) = 0;
  *(v60 + 54) = 0x20000;
  __memset_chk();
  off_1F3DE4D70(v60 + 124);
  *(v60 + 985) = 0;
  *(v60 + 984) = 0;
  v60[118] = 0x7FFFFFFFFFFFFFFFLL;
  if (v64 == 122)
  {
    return 0;
  }

  else
  {
    archive_entry_set_mtime(v65, v60[6], v60[7]);
    archive_entry_set_ctime(v65, v60[16], v60[17]);
    archive_entry_set_atime(v65, v60[14], v60[15]);
    archive_entry_set_size(v65, v60[5]);
    archive_entry_set_mode(v65, *(v60 + 32));
    if (_archive_entry_copy_pathname_l(v65, v49, v51, v43))
    {
      if (*__error() == 12)
      {
        archive_set_error(v66, 12, "Can't allocate memory for Pathname");
        return -30;
      }

      v23 = v66;
      v21 = archive_string_conversion_charset_name(v43);
      archive_set_error(v23, 79, "Pathname cannot be converted from %s to current locale.", v21);
      v41 = -20;
    }

    if ((v60[8] & 0xF000) == 0xA000)
    {
      v60[21] = 0;
      archive_entry_set_size(v65, 0);
      symlink_stored = read_symlink_stored(v66, v65, v44);
      if (symlink_stored < -20)
      {
        return symlink_stored;
      }

      if (v41 > symlink_stored)
      {
        v41 = symlink_stored;
      }
    }

    if (!v60[21])
    {
      *(v60 + 237) = 1;
    }

    return v41;
  }
}

time_t get_time(int a1)
{
  v3 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_sec = 2 * (v3 & 0x1F);
  __b.tm_min = (v3 >> 5) & 0x3F;
  __b.tm_hour = (v3 >> 11) & 0x1F;
  __b.tm_mday = (v3 >> 16) & 0x1F;
  __b.tm_mon = ((v3 >> 21) & 0xF) - 1;
  __b.tm_year = ((v3 >> 25) & 0x7F) + 80;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t read_exttime(unsigned __int8 *a1, time_t *a2, unint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  j = 0;
  v10 = 0;
  v9 = 0;
  i = 0;
  v7 = 0;
  time = 0;
  v5 = 0;
  memset(&v4, 0, sizeof(v4));
  if ((v17 + 2) > v15)
  {
    return -1;
  }

  else
  {
    v13 = archive_le16dec_7(v17);
    v17 += 2;
    for (i = 3; (i & 0x80000000) == 0; --i)
    {
      time = 0;
      if (i == 3)
      {
        time = v16[6];
      }

      v14 = v13 >> (4 * i);
      if ((v14 & 8) != 0)
      {
        if (!time)
        {
          if ((v17 + 4) > v15)
          {
            return -1;
          }

          v9 = archive_le32dec_11(v17);
          time = get_time(v9);
          v17 += 4;
        }

        v12 = 0;
        v10 = v14 & 3;
        if (&v17[v14 & 3] > v15)
        {
          return -1;
        }

        for (j = 0; j < v10; ++j)
        {
          v12 = (v12 >> 8) | (*v17++ << 16);
        }

        v7 = localtime_r(&time, &v4);
        v5 = v7->tm_sec + v12 / 0x989680;
        if ((v14 & 4) != 0)
        {
          ++v7->tm_sec;
          time = mktime(v7);
        }

        switch(i)
        {
          case 3:
            v16[6] = time;
            v16[7] = v5;
            break;
          case 2:
            v16[16] = time;
            v16[17] = v5;
            break;
          case 1:
            v16[14] = time;
            v16[15] = v5;
            break;
          default:
            v16[18] = time;
            v16[19] = v5;
            break;
        }
      }
    }

    return 0;
  }
}

uint64_t read_symlink_stored(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = **(a1 + 2072);
  ahead = rar_read_ahead(a1, *(v7 + 32), 0);
  if (ahead)
  {
    if (_archive_entry_copy_symlink_l(a2, ahead, *(v7 + 32), a3))
    {
      if (*__error() == 12)
      {
        archive_set_error(a1, 12, "Can't allocate memory for link");
        return -30;
      }

      v4 = archive_string_conversion_charset_name(a3);
      archive_set_error(a1, 79, "link cannot be converted from %s to current locale.", v4);
      v6 = -20;
    }

    __archive_read_consume(a1, *(v7 + 32));
    return v6;
  }

  archive_set_error(a1, 79, "Failed to read link.");
  return -30;
}

uint64_t rar_read_ahead(uint64_t a1, size_t a2, void *a3)
{
  v6 = **(a1 + 2072);
  while (1)
  {
    ahead = __archive_read_ahead(a1, a2, a3);
    if (!a3)
    {
      break;
    }

    if (*(a1 + 128) && *a3 > *(a1 + 136))
    {
      *a3 = *(a1 + 136);
    }

    if (*a3 > *(v6 + 168))
    {
      *a3 = *(v6 + 168);
    }

    if ((*a3 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (*a3 || (*v6 & 1) == 0 || (*(v6 + 24) & 2) == 0)
    {
      break;
    }

    *(v6 + 280) = 1;
    header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    if (header == 1)
    {
      *(v6 + 252) = 1;
      header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    }

    *(v6 + 280) = 0;
    if (header)
    {
      return 0;
    }
  }

  return ahead;
}

uint64_t read_data_stored(uint64_t a1, const Bytef **a2, void *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  *len = 0;
  v8 = **(a1 + 2072);
  if (*(v8 + 168) || (*v8 & 1) != 0 && (*(v8 + 24) & 2) != 0)
  {
    ahead = rar_read_ahead(v12, 1uLL, len);
    *v11 = ahead;
    if (*len > 0)
    {
      *v10 = *len;
      *v9 = *(v8 + 184);
      *(v8 + 184) += *len;
      *(v8 + 200) += *len;
      *(v8 + 168) -= *len;
      *(v8 + 160) = *len;
      v5 = crc32(*(v8 + 240), *v11, len[0]);
      *(v8 + 240) = v5;
      return 0;
    }

    else
    {
      archive_set_error(v12, 79, "Truncated RAR file data");
      return -30;
    }
  }

  else
  {
    *v11 = 0;
    *v10 = 0;
    *v9 = *(v8 + 184);
    if (*(v8 + 8) == *(v8 + 240))
    {
      *(v8 + 237) = 1;
      return 1;
    }

    else
    {
      archive_set_error(v12, 79, "File CRC error");
      return -30;
    }
  }
}

uint64_t read_data_compressed(_DWORD *a1, const Bytef **a2, void *a3, void *a4, unint64_t a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5 + 1;
  if (a5 > 0x400)
  {
    return -30;
  }

  v22 = 0;
  v21 = 0;
  v20 = 0;
  v16 = 0;
  v22 = **(v27 + 259);
  while (1)
  {
    if (!*(v22 + 208))
    {
      return -30;
    }

    if (*(v22 + 976))
    {
      if (*(v22 + 212))
      {
        *v26 = *(v22 + 224);
        *v25 = *(v22 + 212);
        *(v22 + 212) = 0;
        *v24 = *(v22 + 192);
        *(v22 + 192) += *v25;
      }

      else
      {
        *v26 = *(v22 + 968);
        *v25 = *(v22 + 976);
        *(v22 + 184) += *v25;
        *v24 = *(v22 + 192);
        *(v22 + 192) += *v25;
        *(v22 + 976) -= *v25;
        *(v22 + 968) += *v25;
      }

      goto LABEL_80;
    }

    if (*(v22 + 985) || *(v22 + 232) && *(v22 + 184) >= *(v22 + 40))
    {
      break;
    }

    if (*(v22 + 986) || !*(v22 + 232) || *(v22 + 176) <= 0)
    {
      if (*(v22 + 960) == *(v22 + 944))
      {
        if (!run_filters(v27))
        {
          return -30;
        }
      }

      else
      {
        if (!*(v22 + 20304))
        {
          v16 = rar_br_preparation(v27, v22 + 20280);
          if (v16 < -20)
          {
            return v16;
          }
        }

        if (*(v22 + 912))
        {
          v16 = parse_codes(v27);
          if (v16 < -20)
          {
            return v16;
          }
        }

        if (!*(v22 + 986))
        {
          v21 = *(v22 + 184);
          v20 = v21 + *(v22 + 232);
          if (*(v22 + 232) > 0x104u)
          {
            v20 -= 260;
          }

          if (*(v22 + 944) < v20)
          {
            v20 = *(v22 + 944);
          }

          v17 = expand(v27, &v20);
          if (v17)
          {
            return v17;
          }

          *(v22 + 176) = v20 - v21;
          *(v22 + 960) = v20;
          if (*(v22 + 960) != *(v22 + 944) && !*(v22 + 176))
          {
            archive_set_error(v27, 79, "Internal error extracting RAR file");
            return -30;
          }

          goto LABEL_72;
        }

        v15 = off_1F3DE4DA0(v22 + 992, v22 + 20176);
        if (v15 < 0)
        {
          goto LABEL_61;
        }

        if (v15 != *(v22 + 988))
        {
          goto LABEL_49;
        }

        v13 = off_1F3DE4DA0(v22 + 992, v22 + 20176);
        if (v13 < 0)
        {
          goto LABEL_61;
        }

        if (!v13)
        {
          *(v22 + 912) = 1;
          return read_data_compressed(v27, v26, v25, v24, v23);
        }

        if (v13 != 2)
        {
          switch(v13)
          {
            case 3:
              archive_set_error(v27, -1, "Parsing filters is unsupported.");
              return -25;
            case 4:
              v12 = 0;
              for (i = 2; (i & 0x80000000) == 0; --i)
              {
                v14 = off_1F3DE4DA0(v22 + 992, v22 + 20176);
                if (v14 < 0)
                {
                  goto LABEL_61;
                }

                v12 |= v14 << (8 * i);
              }

              v10 = off_1F3DE4DA0(v22 + 992, v22 + 20176);
              if (v10 < 0)
              {
LABEL_61:
                archive_set_error(v27, 79, "Invalid symbol");
                return -30;
              }

              lzss_emit_match(v22, v12 + 2, v10 + 32);
              *(v22 + 176) += v10 + 32;
              break;
            case 5:
              v11 = off_1F3DE4DA0(v22 + 992, v22 + 20176);
              if (v11 < 0)
              {
                goto LABEL_61;
              }

              lzss_emit_match(v22, 1, v11 + 4);
              *(v22 + 176) += v11 + 4;
              break;
            default:
LABEL_49:
              lzss_emit_literal(v22, v15);
              ++*(v22 + 176);
              break;
          }

LABEL_72:
          if (*(v22 + 176) <= (*(v22 + 216) - *(v22 + 212)))
          {
            v19 = *(v22 + 176);
          }

          else
          {
            v19 = (*(v22 + 216) - *(v22 + 212));
          }

          v16 = copy_from_lzss_window_to_unp(v27, v26, *(v22 + 184), v19);
          if (v16)
          {
            return v16;
          }

          *(v22 + 184) += v19;
          *(v22 + 176) -= v19;
          goto LABEL_78;
        }

        *(v22 + 985) = 1;
      }
    }

    else
    {
      if (*(v22 + 176) <= (*(v22 + 216) - *(v22 + 212)))
      {
        v18 = *(v22 + 176);
      }

      else
      {
        v18 = (*(v22 + 216) - *(v22 + 212));
      }

      v16 = copy_from_lzss_window_to_unp(v27, v26, *(v22 + 184), v18);
      if (v16)
      {
        return v16;
      }

      *(v22 + 184) += v18;
      *(v22 + 176) -= v18;
      if (*v26)
      {
        *(v22 + 212) = 0;
        *v25 = *(v22 + 216);
        *v24 = *(v22 + 192);
        *(v22 + 192) += *v25;
        v6 = crc32(*(v22 + 240), *v26, *v25);
        *(v22 + 240) = v6;
        return 0;
      }
    }

LABEL_78:
    if (*v26)
    {
      *(v22 + 212) = 0;
      *v25 = *(v22 + 216);
      *v24 = *(v22 + 192);
      *(v22 + 192) += *v25;
LABEL_80:
      v7 = crc32(*(v22 + 240), *v26, *v25);
      *(v22 + 240) = v7;
      return v16;
    }
  }

  if (*(v22 + 212))
  {
    *v26 = *(v22 + 224);
    *v25 = *(v22 + 212);
    *v24 = *(v22 + 192);
    *(v22 + 192) += *v25;
    v5 = crc32(*(v22 + 240), *v26, *v25);
    *(v22 + 240) = v5;
    *(v22 + 212) = 0;
    return 0;
  }

  else
  {
    *v26 = 0;
    *v25 = 0;
    *v24 = *(v22 + 184);
    if (*(v22 + 8) == *(v22 + 240))
    {
      *(v22 + 237) = 1;
      return 1;
    }

    else
    {
      archive_set_error(v27, 79, "File CRC error");
      return -30;
    }
  }
}

uint64_t copy_from_lzss_window_to_unp(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = **(a1 + 2072);
  if (*(v6 + 224) || (v4 = malloc_type_malloc(*(v6 + 216), 0x3F4796ADuLL), (*(v6 + 224) = v4) != 0))
  {
    v8 = lzss_offset_for_position(v6 + 856, a3);
    if (v8 + a4 > lzss_size(v6 + 856))
    {
      if (a4 > lzss_size(v6 + 856) || (v7 = lzss_size(v6 + 856) - v8, v7 < 0))
      {
        archive_set_error(a1, 79, "Bad RAR file data");
        return -30;
      }

      if (v7 < a4)
      {
        __memcpy_chk();
      }
    }

    __memcpy_chk();
    *(v6 + 212) += a4;
    if (*(v6 + 212) >= *(v6 + 216))
    {
      *a2 = *(v6 + 224);
    }

    else
    {
      *a2 = 0;
    }

    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Unable to allocate memory for uncompressed data.");
    return -30;
  }
}

uint64_t run_filters(uint64_t a1)
{
  v17 = a1;
  v16 = **(a1 + 2072);
  v15 = v16 + 115;
  v14 = v16[117];
  i = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (v16 != -920 && v14)
  {
    v12 = v15[3];
    v11 = v12 + v14[16];
    v15[3] = 0x7FFFFFFFFFFFFFFFLL;
    v10 = v11;
    if (expand(v17, &v10))
    {
      return 0;
    }

    else
    {
      v7 = -30;
      for (i = v15[2]; i; i = *(i + 80))
      {
        if (i == v14)
        {
          v7 = 0;
          break;
        }
      }

      if (v7)
      {
        return 0;
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      else
      {
        v11 = v10;
        if (v10 == v12 + v14[16])
        {
          if (*v15 || (v1 = malloc_type_calloc(1uLL, 0x40024uLL, 0x10000406715B213uLL), (*v15 = v1) != 0))
          {
            if (v14[16] > 0x40000u)
            {
              archive_set_error(v17, 79, "Bad RAR file data");
              return 0;
            }

            else if (copy_from_lzss_window(v17, *v15 + 32, v12, v14[16]))
            {
              return 0;
            }

            else
            {
              if (execute_filter(v17, v14, *v15, v16[23], v3))
              {
                while (1)
                {
                  v9 = v14[17];
                  v8 = v14[18];
                  v15[2] = *(v14 + 10);
                  *(v14 + 10) = 0;
                  delete_filter(v14);
                  v14 = v15[2];
                  v6 = 0;
                  if (v14)
                  {
                    v6 = 0;
                    if (*(v14 + 7) == v15[3])
                    {
                      v6 = v14[16] == v8;
                    }
                  }

                  if (!v6)
                  {
                    break;
                  }

                  __memmove_chk();
                  if (!execute_filter(v17, v14, *v15, v16[23], v4))
                  {
                    return 0;
                  }
                }

                if (v15[2])
                {
                  if (*(v15[2] + 56) < v11)
                  {
                    return 0;
                  }

                  v15[3] = *(v15[2] + 56);
                }

                v15[5] = v11;
                v15[6] = *v15 + 32 + v9;
                v15[7] = v8;
                return 1;
              }

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
  }

  else
  {
    return 0;
  }
}

uint64_t rar_br_preparation(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 2072) + 168) <= 0)
  {
    return 0;
  }

  *(a2 + 24) = rar_read_ahead(a1, 1uLL, (a2 + 16));
  if (*(a2 + 24))
  {
    if (!*(a2 + 8))
    {
      rar_br_fillup(a1, a2);
    }

    return 0;
  }

  archive_set_error(a1, 79, "Truncated RAR file data");
  return -30;
}

uint64_t parse_codes(_DWORD *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = 0;
  i = 0;
  next_symbol = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  memset(__b, 0, sizeof(__b));
  v16 = **(v26 + 259);
  v15 = (v16 + 20280);
  free_codes(v26);
  *(v16 + 20288) &= 0xFFFFFFF8;
  if (*(v16 + 20288) < 1 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 1)
  {
    goto LABEL_119;
  }

  v1 = (*(v16 + 20280) >> (*(v16 + 20288) - 1)) & 1;
  *(v16 + 986) = v1;
  if (!v1)
  {
    if (--*(v16 + 20288) >= 1 || rar_br_fillup(v26, v15) || *(v16 + 20288) >= 1)
    {
      if (((*(v16 + 20280) >> (*(v16 + 20288) - 1)) & 1) == 0)
      {
        __memset_chk();
      }

      --*(v16 + 20288);
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      v25 = 0;
      while (v25 < 20)
      {
        if (*(v16 + 20288) < 4 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 4)
        {
          goto LABEL_119;
        }

        v3 = (*(v16 + 20280) >> (*(v16 + 20288) - 4)) & 0xF;
        v4 = v25++;
        *(v28 + v4) = v3;
        *(v16 + 20288) -= 4;
        if (*(v28 + v25 - 1) == 15)
        {
          if (*(v16 + 20288) < 4 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 4)
          {
            goto LABEL_119;
          }

          v20 = (*(v16 + 20280) >> (*(v16 + 20288) - 4)) & 0xF;
          *(v16 + 20288) -= 4;
          if (v20)
          {
            --v25;
            for (i = 0; ; ++i)
            {
              v12 = 0;
              if (i < v20 + 2)
              {
                v12 = v25 < 20;
              }

              if (!v12)
              {
                break;
              }

              v5 = v25++;
              *(v28 + v5) = 0;
            }
          }
        }
      }

      memset(__b, 0, sizeof(__b));
      code = create_code(v26, __b, v28, 20, 15);
      v21 = code;
      if (code)
      {
        free(__b[0]);
        free(__b[4]);
        return v21;
      }

      v25 = 0;
      while (v25 < 404)
      {
        next_symbol = read_next_symbol(v26, __b);
        if (next_symbol < 0)
        {
          free(__b[0]);
          free(__b[4]);
          return -30;
        }

        if (next_symbol >= 16)
        {
          if (next_symbol >= 18)
          {
            if (next_symbol == 18)
            {
              if (*(v16 + 20288) < 3 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 3)
              {
                goto LABEL_92;
              }

              v22 = ((*(v16 + 20280) >> (*(v16 + 20288) - 3)) & 7) + 3;
              *(v16 + 20288) -= 3;
            }

            else
            {
              if (*(v16 + 20288) < 7 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 7)
              {
LABEL_92:
                free(__b[0]);
                free(__b[4]);
                goto LABEL_119;
              }

              v22 = ((*(v16 + 20280) >> (*(v16 + 20288) - 7)) & 0x7F) + 11;
              *(v16 + 20288) -= 7;
            }

            for (i = 0; ; ++i)
            {
              v10 = 0;
              if (i < v22)
              {
                v10 = v25 < 404;
              }

              if (!v10)
              {
                break;
              }

              v7 = v25++;
              *(v16 + 448 + v7) = 0;
            }
          }

          else
          {
            if (!v25)
            {
              free(__b[0]);
              free(__b[4]);
              archive_set_error(v26, 79, "Internal error extracting RAR file.");
              return -30;
            }

            if (next_symbol == 16)
            {
              if (*(v16 + 20288) < 3 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 3)
              {
                goto LABEL_92;
              }

              v22 = ((*(v16 + 20280) >> (*(v16 + 20288) - 3)) & 7) + 3;
              *(v16 + 20288) -= 3;
            }

            else
            {
              if (*(v16 + 20288) < 7 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 7)
              {
                goto LABEL_92;
              }

              v22 = ((*(v16 + 20280) >> (*(v16 + 20288) - 7)) & 0x7F) + 11;
              *(v16 + 20288) -= 7;
            }

            for (i = 0; ; ++i)
            {
              v11 = 0;
              if (i < v22)
              {
                v11 = v25 < 404;
              }

              if (!v11)
              {
                break;
              }

              *(v16 + 448 + v25) = *(v16 + 448 + v25 - 1);
              ++v25;
            }
          }
        }

        else
        {
          *(v16 + 448 + v25) = (*(v16 + 448 + v25) + next_symbol) & 0xF;
          ++v25;
        }
      }

      free(__b[0]);
      free(__b[4]);
      v8 = create_code(v26, (v16 + 288), v16 + 448, 299, 15);
      v21 = v8;
      if (v8)
      {
        return v21;
      }

      v21 = create_code(v26, (v16 + 328), v16 + 747, 60, 15);
      if (v21)
      {
        return v21;
      }

      v21 = create_code(v26, (v16 + 368), v16 + 807, 17, 15);
      if (v21)
      {
        return v21;
      }

      v21 = create_code(v26, (v16 + 408), v16 + 824, 28, 15);
      if (v21)
      {
        return v21;
      }

      goto LABEL_108;
    }

    goto LABEL_119;
  }

  if (--*(v16 + 20288) < 7 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 7)
  {
    goto LABEL_119;
  }

  v19 = (*(v16 + 20280) >> (*(v16 + 20288) - 7)) & 0x7F;
  *(v16 + 20288) -= 7;
  if ((v19 & 0x20) != 0)
  {
    if (*(v16 + 20288) < 8 && !rar_br_fillup(v26, v15) && *(v16 + 20288) < 8)
    {
      goto LABEL_119;
    }

    *(v16 + 232) = ((*(v16 + 20280) >> (*(v16 + 20288) - 8)) + 1) << 20;
    *(v16 + 20288) -= 8;
  }

  if ((v19 & 0x40) != 0)
  {
    if (*(v16 + 20288) >= 8 || rar_br_fillup(v26, v15) || *(v16 + 20288) >= 8)
    {
      v2 = (*(v16 + 20280) >> (*(v16 + 20288) - 8));
      *(v16 + 1020) = v2;
      *(v16 + 988) = v2;
      *(v16 + 20288) -= 8;
      goto LABEL_19;
    }

LABEL_119:
    archive_set_error(v26, 79, "Truncated RAR file data");
    *(v16 + 208) = 0;
    return -30;
  }

  *(v16 + 988) = 2;
LABEL_19:
  if ((v19 & 0x20) == 0)
  {
    if (!*(v16 + 984))
    {
      archive_set_error(v26, 79, "Invalid PPMd sequence");
      return -30;
    }

    if (!off_1F3DE4D98(v16 + 20176))
    {
      goto LABEL_29;
    }

    goto LABEL_108;
  }

  v18 = (v19 & 0x1F) + 1;
  if (v18 > 0x10)
  {
    v18 = 3 * (v18 - 16) + 16;
  }

  if (v18 != 1)
  {
    off_1F3DE4D70(v16 + 992);
    *(v16 + 20224) = v26;
    *(v16 + 20232) = ppmd_read_1;
    (off_1F3DE4D88[0])((v16 + 20176));
    *(v16 + 20216) = v16 + 20224;
    __archive_ppmd7_functions(v16 + 992);
    if (!*(v16 + 232))
    {
      archive_set_error(v26, 79, "Invalid zero dictionary size");
      return -30;
    }

    if (!(off_1F3DE4D68[0])(v16 + 992, *(v16 + 232)))
    {
      archive_set_error(v26, 12, "Out of memory");
      return -30;
    }

    if (!off_1F3DE4D98(v16 + 20176))
    {
LABEL_29:
      archive_set_error(v26, 79, "Unable to initialize PPMd range decoder");
      return -30;
    }

    off_1F3DE4D78(v16 + 992, v18);
    *(v16 + 984) = 1;
LABEL_108:
    if (!*(v16 + 232) || !*(v16 + 856))
    {
      if (*(v16 + 40) < 0x400000)
      {
        size = 2 * rar_fls(*(v16 + 40));
      }

      else
      {
        size = 0x400000;
      }

      if (!size)
      {
        archive_set_error(v26, 79, "Zero window size is invalid.");
        return -30;
      }

      size_4 = malloc_type_realloc(*(v16 + 856), size, 0xAEF225BFuLL);
      if (!size_4)
      {
        archive_set_error(v26, 12, "Unable to allocate memory for uncompressed data.");
        return -30;
      }

      *(v16 + 856) = size_4;
      *(v16 + 232) = size;
      __memset_chk();
      *(v16 + 864) = *(v16 + 232) - 1;
    }

    *(v16 + 912) = 0;
    return 0;
  }

  archive_set_error(v26, 79, "Truncated RAR file data");
  return -30;
}

_BYTE *lzss_emit_literal(uint64_t a1, char a2)
{
  result = lzss_current_pointer((a1 + 856));
  *result = a2;
  ++*(a1 + 872);
  return result;
}

uint64_t lzss_emit_match(uint64_t a1, int a2, int a3)
{
  v10 = lzss_current_offset(a1 + 856);
  result = lzss_mask(a1 + 856);
  v9 = (v10 - a2) & result;
  v6 = a3;
  while (v6 > 0)
  {
    v8 = v6;
    if (v10 <= v9)
    {
      if (v6 > (lzss_size(a1 + 856) - v9))
      {
        v8 = lzss_size(a1 + 856) - v9;
      }
    }

    else if (v6 > (lzss_size(a1 + 856) - v10))
    {
      v8 = lzss_size(a1 + 856) - v10;
    }

    v5 = *(a1 + 856) + v10;
    v4 = *(a1 + 856) + v9;
    if (v10 + v8 < v9 || v9 + v8 < v10)
    {
      __memcpy_chk();
    }

    else
    {
      for (i = 0; i < v8; ++i)
      {
        *(v5 + i) = *(v4 + i);
      }
    }

    v6 -= v8;
    v10 = (v10 + v8) & lzss_mask(a1 + 856);
    result = lzss_mask(a1 + 856);
    v9 = (v9 + v8) & result;
  }

  *(a1 + 872) += a3;
  return result;
}

uint64_t expand(uint64_t a1, uint64_t *a2)
{
  v4 = **(a1 + 2072);
  v3 = (v4 + 20280);
  if (*(v4 + 944) < *a2)
  {
    *a2 = *(v4 + 944);
  }

  while (1)
  {
    if (lzss_position(v4 + 856) >= *a2)
    {
      return 0;
    }

    if (*(v4 + 986))
    {
      *a2 = lzss_position(v4 + 856);
      return 0;
    }

    next_symbol = read_next_symbol(a1, v4 + 288);
    if (next_symbol < 0)
    {
      break;
    }

    if (next_symbol >= 256)
    {
      switch(next_symbol)
      {
        case 256:
          if (*(v4 + 20288) < 1 && !rar_br_fillup(a1, v3) && *(v4 + 20288) < 1)
          {
            goto LABEL_83;
          }

          if (((*(v4 + 20280) >> ((*(v4 + 20288))-- - 1)) & 1) == 0)
          {
            *(v4 + 236) = 1;
            if (*(v4 + 20288) >= 1 || rar_br_fillup(a1, v3) || *(v4 + 20288) >= 1)
            {
              *(v4 + 912) = (*(v4 + 20280) >> ((*(v4 + 20288))-- - 1)) & 1;
              *a2 = lzss_position(v4 + 856);
              return 0;
            }

LABEL_83:
            archive_set_error(a1, 79, "Truncated RAR file data", v3);
            *(v4 + 208) = 0;
            return -30;
          }

          if (parse_codes(a1))
          {
            goto LABEL_84;
          }

          break;
        case 257:
          if (!read_filter(a1, a2))
          {
            goto LABEL_84;
          }

          break;
        case 258:
          if (*(v4 + 880))
          {
            v13 = *(v4 + 884);
            v12 = *(v4 + 880);
            goto LABEL_82;
          }

          break;
        default:
          if (next_symbol > 262)
          {
            if (next_symbol > 270)
            {
              if (next_symbol - 271 > 28)
              {
                goto LABEL_84;
              }

              v12 = expand_lengthbases[next_symbol - 271] + 3;
              if (expand_lengthbits[next_symbol - 271])
              {
                if (*(v4 + 20288) < expand_lengthbits[next_symbol - 271] && !rar_br_fillup(a1, v3) && *(v4 + 20288) < expand_lengthbits[next_symbol - 271])
                {
                  goto LABEL_83;
                }

                v12 += (*(v4 + 20280) >> (*(v4 + 20288) - expand_lengthbits[next_symbol - 271])) & cache_masks_1[expand_lengthbits[next_symbol - 271]];
                *(v4 + 20288) -= expand_lengthbits[next_symbol - 271];
              }

              v7 = read_next_symbol(a1, v4 + 328);
              if (v7 < 0 || v7 > 60)
              {
                goto LABEL_84;
              }

              v13 = expand_offsetbases[v7] + 1;
              if (expand_offsetbits[v7])
              {
                if (v7 <= 9)
                {
                  if (*(v4 + 20288) < expand_offsetbits[v7] && !rar_br_fillup(a1, v3) && *(v4 + 20288) < expand_offsetbits[v7])
                  {
                    goto LABEL_83;
                  }

                  v13 += (*(v4 + 20280) >> (*(v4 + 20288) - expand_offsetbits[v7])) & cache_masks_1[expand_offsetbits[v7]];
                  *(v4 + 20288) -= expand_offsetbits[v7];
                }

                else
                {
                  if (expand_offsetbits[v7] > 4u)
                  {
                    if (*(v4 + 20288) < expand_offsetbits[v7] - 4 && !rar_br_fillup(a1, v3) && *(v4 + 20288) < expand_offsetbits[v7] - 4)
                    {
                      goto LABEL_83;
                    }

                    v13 += 16 * ((*(v4 + 20280) >> (*(v4 + 20288) - (expand_offsetbits[v7] - 4))) & cache_masks_1[expand_offsetbits[v7] - 4]);
                    *(v4 + 20288) -= expand_offsetbits[v7] - 4;
                  }

                  if (*(v4 + 908))
                  {
                    --*(v4 + 908);
                    v13 += *(v4 + 904);
                  }

                  else
                  {
                    v6 = read_next_symbol(a1, v4 + 368);
                    if (v6 < 0)
                    {
                      goto LABEL_84;
                    }

                    if (v6 == 16)
                    {
                      *(v4 + 908) = 15;
                      v13 += *(v4 + 904);
                    }

                    else
                    {
                      v13 += v6;
                      *(v4 + 904) = v6;
                    }
                  }
                }
              }

              if (v13 >= 0x40000)
              {
                ++v12;
              }

              if (v13 >= 0x2000)
              {
                ++v12;
              }

              for (i = 3; i > 0; --i)
              {
                *(v4 + 888 + 4 * i) = *(v4 + 888 + 4 * (i - 1));
              }

              *(v4 + 888) = v13;
            }

            else
            {
              v13 = expand_shortbases[next_symbol - 263] + 1;
              if (expand_shortbits[next_symbol - 263])
              {
                if (*(v4 + 20288) < expand_shortbits[next_symbol - 263] && !rar_br_fillup(a1, v3) && *(v4 + 20288) < expand_shortbits[next_symbol - 263])
                {
                  goto LABEL_83;
                }

                v13 += (*(v4 + 20280) >> (*(v4 + 20288) - expand_shortbits[next_symbol - 263])) & cache_masks_1[expand_shortbits[next_symbol - 263]];
                *(v4 + 20288) -= expand_shortbits[next_symbol - 263];
              }

              v12 = 2;
              for (j = 3; j > 0; --j)
              {
                *(v4 + 888 + 4 * j) = *(v4 + 888 + 4 * (j - 1));
              }

              *(v4 + 888) = v13;
            }
          }

          else
          {
            v13 = *(v4 + 888 + 4 * (next_symbol - 259));
            v11 = read_next_symbol(a1, v4 + 408);
            if (v11 < 0 || v11 > 28)
            {
              goto LABEL_84;
            }

            v12 = expand_lengthbases[v11] + 2;
            if (expand_lengthbits[v11])
            {
              if (*(v4 + 20288) < expand_lengthbits[v11] && !rar_br_fillup(a1, v3) && *(v4 + 20288) < expand_lengthbits[v11])
              {
                goto LABEL_83;
              }

              v12 += (*(v4 + 20280) >> (*(v4 + 20288) - expand_lengthbits[v11])) & cache_masks_1[expand_lengthbits[v11]];
              *(v4 + 20288) -= expand_lengthbits[v11];
            }

            for (k = next_symbol - 259; k > 0; --k)
            {
              *(v4 + 888 + 4 * k) = *(v4 + 888 + 4 * (k - 1));
            }

            *(v4 + 888) = v13;
          }

LABEL_82:
          *(v4 + 884) = v13;
          *(v4 + 880) = v12;
          lzss_emit_match(v4, *(v4 + 884), *(v4 + 880));
          break;
      }
    }

    else
    {
      lzss_emit_literal(v4, next_symbol);
    }
  }

LABEL_84:
  archive_set_error(a1, 79, "Bad RAR file data", v3);
  return -30;
}

uint64_t copy_from_lzss_window(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = **(a1 + 2072);
  v7 = lzss_offset_for_position(v5 + 856, a3);
  v6 = lzss_size(v5 + 856) - v7;
  if (v6 < 0)
  {
    archive_set_error(a1, 79, "Bad RAR file data");
    return -30;
  }

  else
  {
    if (v6 < a4)
    {
      __memcpy_chk();
    }

    __memcpy_chk();
    return 0;
  }
}

uint64_t execute_filter(_DWORD *a1, _DWORD *a2, uint64_t a3, vm_size_t a4, mach_msg_type_number_t *a5)
{
  switch(*(*a2 + 32))
  {
    case 0x1D0E06077DLL:
      return execute_filter_delta(a2, a3);
    case 0x35AD576887:
      return execute_filter_e8(a2, a3, a4, 0, a5);
    case 0x393CD7E57ELL:
      return execute_filter_e8(a2, a3, a4, 1, a5);
    case 0x951C2C5DC8:
      return execute_filter_rgb(a2, a3);
    case 0xD8BC85E701:
      return execute_filter_audio(a2, a3);
    default:
      archive_set_error(a1, 79, "No support for RAR VM program filter");
      return 0;
  }
}

uint64_t execute_filter_delta(_DWORD *a1, uint64_t a2)
{
  v11 = a1[6];
  v10 = a1[2];
  if (v11 <= 0x1E000)
  {
    v9 = (a2 + 32);
    v8 = a2 + 32 + v11;
    for (i = 0; i < v10; ++i)
    {
      v5 = 0;
      for (j = i; j < v11; j += v10)
      {
        if (v9 >= v8)
        {
          return 0;
        }

        v2 = v9++;
        v3 = v5 - *v2;
        *(v8 + j) = v3;
        v5 = v3;
      }
    }

    a1[17] = v11;
    a1[18] = v11;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_e8(_DWORD *a1, uint64_t a2, vm_size_t a3, vm_offset_t *a4, mach_msg_type_number_t *a5)
{
  v11 = a3;
  v10 = a4;
  v9 = a1[6];
  if (v9 <= 0x3C000 && v9 > 4)
  {
    for (i = 0; i <= v9 - 5; ++i)
    {
      if (*(a2 + 32 + i) == 232 || v10 && *(a2 + 32 + i) == 233)
      {
        v7 = v11 + i + 1;
        _32 = vm_read_32(a2, i + 1, a3, a4, a5);
        if ((_32 & 0x80000000) != 0 && v7 >= -_32)
        {
          vm_write_32(a2, i + 1, _32 + 0x1000000, a4);
        }

        else if ((_32 & 0x80000000) == 0 && _32 < 0x1000000)
        {
          vm_write_32(a2, i + 1, _32 - v7, a4);
        }

        i += 4;
      }
    }

    a1[17] = 0;
    a1[18] = v9;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_rgb(_DWORD *a1, uint64_t a2)
{
  v19 = a1[2];
  v18 = a1[3];
  v17 = a1[6];
  if (v17 <= 0x1E000 && v19 <= v17 && v17 >= 3 && v18 <= 2)
  {
    v16 = (a2 + 32);
    v15 = a2 + 32 + v17;
    for (i = 0; i < 3; ++i)
    {
      v11 = 0;
      v10 = (v15 + i - v19);
      for (j = i; j < v17; j += 3)
      {
        if (v16 >= v15)
        {
          return 0;
        }

        if (v10 >= v15)
        {
          v2 = v10[3] - *v10;
          if (v2 <= 0)
          {
            v2 = *v10 - v10[3];
          }

          v9 = v2;
          v3 = v11 - *v10;
          if (v3 <= 0)
          {
            v3 = *v10 - v11;
          }

          v8 = v3;
          v4 = v10[3] - *v10 + v11 - *v10;
          if (v4 <= 0)
          {
            v4 = *v10 - (v10[3] - *v10 + v11);
          }

          if (v9 > v8 || v9 > v4)
          {
            if (v8 > v4)
            {
              v7 = *v10;
            }

            else
            {
              v7 = v10[3];
            }

            v11 = v7;
          }
        }

        v5 = v16++;
        v11 -= *v5;
        *(v15 + j) = v11;
        v10 += 3;
      }
    }

    for (k = v18; k < v17 - 2; k += 3)
    {
      *(v15 + k) += *(v15 + k + 1);
      *(v15 + k + 2) += *(v15 + k + 1);
    }

    a1[17] = v17;
    a1[18] = v17;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_audio(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v27 = a2;
  v26 = *(a1 + 24);
  v25 = *(a1 + 8);
  v24 = 0;
  v23 = 0;
  i = 0;
  j = 0;
  if (v26 <= 0x1E000)
  {
    v24 = (v27 + 32);
    v23 = v27 + 32 + v26;
    for (i = 0; i < v25; ++i)
    {
      memset(__b, 0, sizeof(__b));
      for (j = i; j < v26; j += v25)
      {
        if (v24 >= v23)
        {
          return 0;
        }

        v2 = v24++;
        v19 = *v2;
        HIWORD(__b[2]) = __b[2];
        LOWORD(__b[2]) = SBYTE2(__b[3]) - HIWORD(__b[1]);
        HIWORD(__b[1]) = SBYTE2(__b[3]);
        v18 = ((8 * LOBYTE(__b[16]) + SLOBYTE(__b[0]) * SBYTE2(__b[3]) + SBYTE1(__b[0]) * SLOWORD(__b[2]) + SBYTE2(__b[0]) * SHIWORD(__b[2])) >> 3) - v19;
        v17 = 8 * v19;
        if (v17 > 0)
        {
          v3 = 8 * v19;
        }

        else
        {
          v3 = -8 * v19;
        }

        __b[4] += v3;
        if (v17 - SHIWORD(__b[1]) > 0)
        {
          v4 = v17 - SHIWORD(__b[1]);
        }

        else
        {
          v4 = SHIWORD(__b[1]) - v17;
        }

        __b[5] += v4;
        v5 = v17 + SHIWORD(__b[1]);
        if (v5 > 0)
        {
          v6 = v17 + SHIWORD(__b[1]);
        }

        else
        {
          v6 = -v5;
        }

        __b[6] += v6;
        if (v17 - SLOWORD(__b[2]) > 0)
        {
          v7 = v17 - SLOWORD(__b[2]);
        }

        else
        {
          v7 = SLOWORD(__b[2]) - v17;
        }

        __b[7] += v7;
        v8 = v17 + SLOWORD(__b[2]);
        if (v8 > 0)
        {
          v9 = v17 + SLOWORD(__b[2]);
        }

        else
        {
          v9 = -v8;
        }

        __b[8] += v9;
        if (v17 - SHIWORD(__b[2]) > 0)
        {
          v10 = v17 - SHIWORD(__b[2]);
        }

        else
        {
          v10 = SHIWORD(__b[2]) - v17;
        }

        __b[9] += v10;
        v11 = v17 + SHIWORD(__b[2]);
        if (v11 > 0)
        {
          v12 = v17 + SHIWORD(__b[2]);
        }

        else
        {
          v12 = -v11;
        }

        __b[10] += v12;
        BYTE2(__b[3]) = v18 - LOBYTE(__b[16]);
        LOBYTE(__b[16]) = v18;
        *(v23 + j) = v18;
        v13 = __b[15];
        ++__b[15];
        if ((v13 & 0x1F) == 0)
        {
          v15 = 0;
          for (k = 1; k < 7u; ++k)
          {
            if (__b[k + 4] < __b[v15 + 4])
            {
              v15 = k;
            }
          }

          memset(&__b[4], 0, 0x2CuLL);
          switch(v15)
          {
            case 1u:
              if (SLOBYTE(__b[0]) >= -16)
              {
                --LOBYTE(__b[0]);
              }

              break;
            case 2u:
              if (SLOBYTE(__b[0]) < 16)
              {
                ++LOBYTE(__b[0]);
              }

              break;
            case 3u:
              if (SBYTE1(__b[0]) >= -16)
              {
                --BYTE1(__b[0]);
              }

              break;
            case 4u:
              if (SBYTE1(__b[0]) < 16)
              {
                ++BYTE1(__b[0]);
              }

              break;
            case 5u:
              if (SBYTE2(__b[0]) >= -16)
              {
                --BYTE2(__b[0]);
              }

              break;
            default:
              if (v15 == 6 && SBYTE2(__b[0]) < 16)
              {
                ++BYTE2(__b[0]);
              }

              break;
          }
        }
      }
    }

    *(v28 + 68) = v26;
    *(v28 + 72) = v26;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_le32enc_7(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t rar_br_fillup(uint64_t a1, unint64_t *a2)
{
  v7 = **(a1 + 2072);
  for (i = 64 - *(a2 + 2); ; i -= 8)
  {
    v5 = i >> 3;
    if (!(i >> 3))
    {
      return 1;
    }

    if (v5 == 6)
    {
      if (a2[2] >= 6)
      {
        *a2 = (*a2[3] << 40) | (*a2 << 48) | (*(a2[3] + 1) << 32) | (*(a2[3] + 2) << 24) | (*(a2[3] + 3) << 16) | (*(a2[3] + 4) << 8) | *(a2[3] + 5);
        a2[3] += 6;
        a2[2] -= 6;
        *(a2 + 2) += 48;
        *(v7 + 160) += 6;
        *(v7 + 168) -= 6;
        return 1;
      }
    }

    else if (v5 == 7)
    {
      if (a2[2] >= 7)
      {
        *a2 = (*a2[3] << 48) | (*a2 << 56) | (*(a2[3] + 1) << 40) | (*(a2[3] + 2) << 32) | (*(a2[3] + 3) << 24) | (*(a2[3] + 4) << 16) | (*(a2[3] + 5) << 8) | *(a2[3] + 6);
        a2[3] += 7;
        a2[2] -= 7;
        *(a2 + 2) += 56;
        *(v7 + 160) += 7;
        *(v7 + 168) -= 7;
        return 1;
      }
    }

    else if (v5 == 8 && a2[2] >= 8)
    {
      *a2 = _byteswap_uint64(*a2[3]);
      a2[3] += 8;
      a2[2] -= 8;
      *(a2 + 2) += 64;
      *(v7 + 160) += 8;
      *(v7 + 168) -= 8;
      return 1;
    }

    if (a2[2] <= 0)
    {
      if (*(v7 + 160) > 0)
      {
        __archive_read_consume(a1, *(v7 + 160));
        *(v7 + 160) = 0;
      }

      a2[3] = rar_read_ahead(a1, 1uLL, a2 + 2);
      if (!a2[3])
      {
        return 0;
      }

      if (!a2[2])
      {
        break;
      }
    }

    v2 = *a2;
    v3 = a2[3];
    a2[3] = (v3 + 1);
    *a2 = *v3 | (v2 << 8);
    --a2[2];
    *(a2 + 2) += 8;
    ++*(v7 + 160);
    --*(v7 + 168);
  }

  return 0;
}

uint64_t ppmd_read_1(uint64_t a1)
{
  v4 = *a1;
  v3 = **(*a1 + 2072);
  if (*(v3 + 20288) >= 8 || rar_br_fillup(v4, (v3 + 20280)) || *(v3 + 20288) >= 8)
  {
    v2 = *(v3 + 20280) >> (*(v3 + 20288) - 8);
    *(v3 + 20288) -= 8;
    return v2;
  }

  else
  {
    archive_set_error(v4, 79, "Truncated RAR file data");
    *(v3 + 208) = 0;
    return 0;
  }
}

uint64_t create_code(_DWORD *a1, _DWORD *a2, uint64_t a3, int a4, char a5)
{
  v6 = a4;
  a2[2] = 0;
  a2[3] = 0;
  if ((new_node(a2) & 0x80000000) != 0)
  {
    archive_set_error(a1, 12, "Unable to allocate memory for node data.");
    return -30;
  }

  else
  {
    a2[2] = 1;
    a2[4] = 0x7FFFFFFF;
    a2[5] = 0x80000000;
    v7 = 0;
    for (i = 1; i <= a5; ++i)
    {
      for (j = 0; j < a4; ++j)
      {
        if (*(a3 + j) == i)
        {
          if (add_value(a1, a2, j, v7, i))
          {
            return -30;
          }

          ++v7;
          if (--v6 <= 0)
          {
            break;
          }
        }
      }

      if (v6 <= 0)
      {
        break;
      }

      v7 *= 2;
    }

    return 0;
  }
}

uint64_t read_next_symbol(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) || !make_table(a1, a2))
  {
    v4 = **(a1 + 2072);
    v3 = (v4 + 20280);
    if (*(v4 + 20288) >= *(a2 + 24) || rar_br_fillup(a1, v3) || *(v4 + 20288) >= *(a2 + 24))
    {
      v8 = (*(v4 + 20280) >> (*(v4 + 20288) - *(a2 + 24))) & cache_masks_1[*(a2 + 24)];
      v7 = *(*(a2 + 32) + 8 * v8);
      v6 = *(*(a2 + 32) + 8 * v8 + 4);
      if (v7 < 0)
      {
LABEL_9:
        archive_set_error(a1, 79, "Invalid prefix code in bitstream");
        return -1;
      }

      else if (v7 > *(a2 + 24))
      {
        *(v4 + 20288) -= *(a2 + 24);
        for (i = v6; *(*a2 + 8 * i) != *(*a2 + 8 * i + 4); i = *(*a2 + 8 * i + 4 * v9))
        {
          if (*(v4 + 20288) < 1 && !rar_br_fillup(a1, v3) && *(v4 + 20288) < 1)
          {
            goto LABEL_7;
          }

          v9 = (*(v4 + 20280) >> ((*(v4 + 20288))-- - 1)) & 1;
          if ((*(*a2 + 8 * i + 4 * v9) & 0x80000000) != 0)
          {
            goto LABEL_9;
          }
        }

        return *(*a2 + 8 * i);
      }

      else
      {
        *(v4 + 20288) -= v7;
        return v6;
      }
    }

    else
    {
LABEL_7:
      archive_set_error(a1, 79, "Truncated RAR file data");
      *(v4 + 208) = 0;
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t new_node(uint64_t a1)
{
  if (*(a1 + 12) != *(a1 + 8))
  {
    goto LABEL_7;
  }

  v2 = 256;
  if (*(a1 + 8) > 0)
  {
    v2 = 2 * *(a1 + 8);
  }

  v3 = malloc_type_realloc(*a1, 8 * v2, 0x100004000313F17uLL);
  if (v3)
  {
    *a1 = v3;
    *(a1 + 12) = v2;
LABEL_7:
    *(*a1 + 8 * *(a1 + 8)) = -1;
    *(*a1 + 8 * *(a1 + 8) + 4) = -2;
    return 1;
  }

  return -1;
}

uint64_t add_value(_DWORD *a1, uint64_t a2, int a3, int a4, int a5)
{
  LODWORD(v7) = 0;
  free(*(a2 + 32));
  *(a2 + 32) = 0;
  if (a5 > *(a2 + 20))
  {
    *(a2 + 20) = a5;
  }

  if (a5 < *(a2 + 16))
  {
    *(a2 + 16) = a5;
  }

  v8 = 0;
  for (HIDWORD(v7) = a5 - 1; (v7 & 0x8000000000000000) == 0; --HIDWORD(v7))
  {
    LODWORD(v7) = (a4 >> SBYTE4(v7)) & 1;
    if (*(*a2 + 8 * v8) == *(*a2 + 8 * v8 + 4))
    {
      archive_set_error(a1, 79, "Prefix found");
      return -30;
    }

    if ((*(*a2 + 8 * v8 + 4 * v7) & 0x80000000) != 0)
    {
      if ((new_node(a2) & 0x80000000) != 0)
      {
        archive_set_error(a1, 12, "Unable to allocate memory for node data.");
        return -30;
      }

      v5 = *(a2 + 8);
      *(a2 + 8) = v5 + 1;
      *(*a2 + 8 * v8 + 4 * v7) = v5;
    }

    v8 = *(*a2 + 8 * v8 + 4 * v7);
  }

  if (*(*a2 + 8 * v8) == -1 && *(*a2 + 8 * v8 + 4) == -2)
  {
    *(*a2 + 8 * v8) = a3;
    *(*a2 + 8 * v8 + 4) = a3;
    return 0;
  }

  else
  {
    archive_set_error(a1, 79, "Prefix found", v7);
    return -30;
  }
}

uint64_t make_table(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 20) >= *(a2 + 16) && *(a2 + 20) <= 10)
  {
    *(a2 + 24) = *(a2 + 20);
  }

  else
  {
    *(a2 + 24) = 10;
  }

  *(a2 + 32) = malloc_type_calloc(1uLL, 8 * (1 << *(a2 + 24)), 0x100004000313F17uLL);
  return make_table_recurse(a1, a2, 0, *(a2 + 32), 0, *(a2 + 24));
}

uint64_t make_table_recurse(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4, int a5, unsigned int a6)
{
  v7 = 0;
  if (*a2)
  {
    if (a3 < 0 || a3 >= *(a2 + 8))
    {
      archive_set_error(a1, 79, "Invalid location to Huffman tree specified.");
      return -30;
    }

    else
    {
      v10 = 1 << (a6 - a5);
      if (*(*a2 + 8 * a3) == *(*a2 + 8 * a3 + 4))
      {
        for (i = 0; i < v10; ++i)
        {
          a4[2 * i] = a5;
          a4[2 * i + 1] = *(*a2 + 8 * a3);
        }
      }

      else if (a5 == a6)
      {
        *a4 = a6 + 1;
        a4[1] = a3;
      }

      else
      {
        table_recurse = make_table_recurse(a1, a2, *(*a2 + 8 * a3), a4, a5 + 1, a6);
        return (table_recurse | make_table_recurse(a1, a2, *(*a2 + 8 * a3 + 4), &a4[2 * (v10 / 2)], a5 + 1, a6));
      }

      return v7;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Huffman tree was not created.");
    return -30;
  }
}

uint64_t read_filter(uint64_t a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = **(a1 + 2072);
  v8 = 0;
  v7 = 0;
  if (rar_decode_byte(a1, &v8))
  {
    size = (v8 & 7) + 1;
    if (size == 7)
    {
      if (!rar_decode_byte(v11, &v7))
      {
        return 0;
      }

      size = v7 + 7;
    }

    else if (size == 8)
    {
      if (!rar_decode_byte(v11, &v7))
      {
        return 0;
      }

      sizea = v7 << 8;
      if (!rar_decode_byte(v11, &v7))
      {
        return 0;
      }

      size = sizea | v7;
    }

    size_2 = malloc_type_malloc(size, 0x595D1B09uLL);
    if (size_2)
    {
      for (i = 0; i < size; ++i)
      {
        if (!rar_decode_byte(v11, &size_2[i]))
        {
          goto LABEL_18;
        }
      }

      if (!parse_filter_0(v11, size_2, size, v8))
      {
LABEL_18:
        free(size_2);
        return 0;
      }

      free(size_2);
      if (*(v9 + 944) < *v10)
      {
        *v10 = *(v9 + 944);
      }

      return 1;
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

uint64_t rar_decode_byte(uint64_t a1, _BYTE *a2)
{
  v3 = **(a1 + 2072);
  if (*(v3 + 20288) >= 8 || rar_br_fillup(a1, (v3 + 20280)) || *(v3 + 20288) >= 8)
  {
    *a2 = *(v3 + 20280) >> (*(v3 + 20288) - 8);
    *(v3 + 20288) -= 8;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_filter_0(uint64_t a1, uint64_t a2, unsigned __int16 a3, char a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = **(a1 + 2072);
  v28 = v29 + 920;
  memset(__b, 0, sizeof(__b));
  v35 = 0u;
  v36 = 0u;
  __b[0] = v32;
  __b[1] = v31;
  v22 = 0;
  for (i = *(v29 + 928); i; i = *(i + 48))
  {
    ++v22;
  }

  if (v30 < 0)
  {
    rarvm_number = membr_next_rarvm_number(__b);
    if (rarvm_number)
    {
      --rarvm_number;
    }

    else
    {
      delete_filter(*(v28 + 16));
      *(v28 + 16) = 0;
      delete_program_code(*(v28 + 8));
      *(v28 + 8) = 0;
    }

    if (rarvm_number > v22)
    {
      return 0;
    }

    *(v28 + 32) = rarvm_number;
  }

  else
  {
    rarvm_number = *(v28 + 32);
  }

  v26 = *(v28 + 8);
  for (j = 0; j < rarvm_number; ++j)
  {
    v26 = v26[6];
  }

  if (v26)
  {
    ++*(v26 + 10);
  }

  v7 = membr_next_rarvm_number(__b);
  v17 = lzss_position(v29 + 856) + v7;
  if ((v30 & 0x40) != 0)
  {
    v17 += 258;
  }

  if ((v30 & 0x20) != 0)
  {
    v20 = membr_next_rarvm_number(__b);
  }

  else
  {
    if (v26)
    {
      v6 = *(v26 + 11);
    }

    else
    {
      v6 = 0;
    }

    v20 = v6;
  }

  if (v20 <= *(v29 + 232))
  {
    HIDWORD(v35) = 245760;
    LODWORD(v36) = v20;
    if (v26)
    {
      v5 = *(v26 + 10);
    }

    else
    {
      v5 = 0;
    }

    DWORD1(v36) = v5;
    HIDWORD(v36) = 0x40000;
    if ((v30 & 0x10) != 0)
    {
      size_7 = membr_bits(__b, 7);
      for (k = 0; k < 7; ++k)
      {
        if ((size_7 & (1 << k)) != 0)
        {
          *(&v35 + k) = membr_next_rarvm_number(__b);
        }
      }
    }

    if (!v26)
    {
      size = membr_next_rarvm_number(__b);
      if (!size || size > 0x10000)
      {
        return 0;
      }

      v9 = malloc_type_malloc(size, 0xBCB44236uLL);
      if (!v9)
      {
        return 0;
      }

      for (m = 0; m < size; ++m)
      {
        v9[m] = membr_bits(__b, 8);
      }

      v26 = compile_program(v9, size);
      if (!v26)
      {
        free(v9);
        return 0;
      }

      free(v9);
        ;
      }

      *n = v26;
    }

    *(v26 + 11) = v20;
    v18 = 0;
    v19 = 0;
    if ((v30 & 8) != 0)
    {
      v19 = membr_next_rarvm_number(__b);
      if (v19 > 0x1FC0)
      {
        return 0;
      }

      v18 = malloc_type_malloc(v19 + 64, 0x2A720A33uLL);
      if (!v18)
      {
        return 0;
      }

      for (ii = 0; ii < v19; ++ii)
      {
        v18[ii + 64] = membr_bits(__b, 8);
      }
    }

    if (HIDWORD(__b[4]))
    {
      free(v18);
      return 0;
    }

    else
    {
      filter = create_filter(v26, v18, v19, &v35, v17, v20);
      free(v18);
      if (filter)
      {
        for (jj = 0; jj < 7; ++jj)
        {
          archive_le32enc_7(*(filter + 5) + 4 * jj, *(&v35 + jj));
        }

        archive_le32enc_7(*(filter + 5) + 28, v20);
        archive_le32enc_7(*(filter + 5) + 32, 0);
        archive_le32enc_7(*(filter + 5) + 44, *(v26 + 10));
          ;
        }

        *kk = filter;
        if (!*(*(v28 + 16) + 80))
        {
          *(v28 + 24) = v17;
        }

        return 1;
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

uint64_t membr_next_rarvm_number(uint64_t a1)
{
  v2 = membr_bits(a1, 2);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = membr_bits(a1, 8);
      if (v3 < 0x10)
      {
        return ((16 * v3) | 0xFFFFFF00 | membr_bits(a1, 4));
      }

      else
      {
        return v3;
      }
    }

    else if (v2 == 2)
    {
      return membr_bits(a1, 16);
    }

    else
    {
      return membr_bits(a1, 32);
    }
  }

  else
  {
    return membr_bits(a1, 4);
  }
}

uint64_t membr_bits(uint64_t a1, int a2)
{
  if (a2 <= *(a1 + 32) || !*(a1 + 36) && membr_fill(a1, a2))
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32) - a2;
    *(a1 + 32) = v3;
    return ((v2 >> v3) & ((1 << a2) - 1));
  }

  else
  {
    return 0;
  }
}

void *compile_program(const Bytef *a1, unint64_t a2)
{
  v10 = a1;
  v9 = a2;
  memset(__b, 0, sizeof(__b));
  v6 = 0;
  for (i = 1; i < v9; ++i)
  {
    v6 ^= v10[i];
  }

  if (!v9 || v6 != *v10)
  {
    return 0;
  }

  __b[0] = v10;
  __b[1] = v9;
  __b[2] = 1;
  v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004064E93543uLL);
  if (v7)
  {
    v2 = crc32(0, v10, v9);
    v7[4] = v2 | (v9 << 32);
    if (membr_bits(__b, 1))
    {
      *(v7 + 2) = membr_next_rarvm_number(__b) + 1;
      *v7 = malloc_type_malloc(*(v7 + 2), 0xADFE9696uLL);
      if (!*v7)
      {
        delete_program_code(v7);
        return 0;
      }

      for (j = 0; j < *(v7 + 2); ++j)
      {
        *(*v7 + j) = membr_bits(__b, 8);
      }
    }

    return v7;
  }

  return 0;
}

unsigned int *create_filter(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300403FB173E5uLL);
  if (!v8)
  {
    return 0;
  }

  *v8 = a1;
  if (a3 > 0x40)
  {
    v7 = a3;
  }

  else
  {
    v7 = 64;
  }

  v8[12] = v7;
  *(v8 + 5) = malloc_type_calloc(1uLL, v8[12], 0xEBE5B60uLL);
  if (!*(v8 + 5))
  {
    return 0;
  }

  if (a2)
  {
    __memcpy_chk();
  }

  if (a4)
  {
    __memcpy_chk();
  }

  *(v8 + 7) = a5;
  v8[16] = a6;
  return v8;
}

uint64_t membr_fill(uint64_t *a1, int a2)
{
  while (1)
  {
    v6 = 0;
    if (*(a1 + 8) < a2)
    {
      v6 = a1[2] < a1[1];
    }

    if (!v6)
    {
      break;
    }

    v2 = a1[3];
    v3 = *a1;
    v4 = a1[2];
    a1[2] = v4 + 1;
    a1[3] = *(v3 + v4) | (v2 << 8);
    *(a1 + 8) += 8;
  }

  if (a2 <= *(a1 + 8))
  {
    return 1;
  }

  else
  {
    *(a1 + 9) = 1;
    return 0;
  }
}

uint64_t archive_write_set_format_gnutar(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1070040395D5FD2uLL);
  if (v2)
  {
    *(a1 + 248) = v2;
    *(a1 + 256) = "gnutar";
    *(a1 + 272) = archive_write_gnutar_options;
    *(a1 + 288) = archive_write_gnutar_header;
    *(a1 + 296) = archive_write_gnutar_data;
    *(a1 + 304) = archive_write_gnutar_close;
    *(a1 + 312) = archive_write_gnutar_free;
    *(a1 + 280) = archive_write_gnutar_finish_entry;
    *(a1 + 16) = 196612;
    *(a1 + 24) = "GNU tar";
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate gnutar data");
    return -30;
  }
}

uint64_t archive_write_gnutar_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 248);
  v4 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 80) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v5 + 80))
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
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", *(a1 + 256));
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_gnutar_header(uint64_t a1, uint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v37 = a2;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v32 = *(a1 + 248);
  if (*(v32 + 80))
  {
    v31 = *(v32 + 80);
  }

  else
  {
    if (!*(v32 + 96))
    {
      *(v32 + 88) = archive_string_default_conversion_for_write();
      *(v32 + 96) = 1;
    }

    v31 = *(v32 + 88);
  }

  if (archive_entry_hardlink(v37) || archive_entry_symlink(v37) || archive_entry_filetype(v37) != 0x8000)
  {
    archive_entry_set_size(v37, 0);
  }

  if (archive_entry_filetype(v37) != 0x4000 || (v28 = 0, (__s = archive_entry_pathname(v37)) == 0) || !*__s || __s[strlen(__s) - 1] == 47)
  {
LABEL_17:
    v30 = 0;
    v36 = _archive_entry_pathname_l(v37, (v32 + 32), (v32 + 40), v31);
    if (v36)
    {
      if (*__error() == 12)
      {
        archive_set_error(v38, 12, "Can't allocate memory for pathname");
        v35 = -30;
LABEL_70:
        archive_entry_free(v30);
        return v35;
      }

      v19 = v38;
      v18 = archive_entry_pathname(v37);
      v2 = archive_string_conversion_charset_name(v31);
      archive_set_error(v19, 79, "Can't translate pathname '%s' to %s", v18, v2);
      v34 = -20;
    }

    v36 = _archive_entry_uname_l(v37, (v32 + 48), (v32 + 56), v31);
    if (v36)
    {
      if (*__error() == 12)
      {
        archive_set_error(v38, 12, "Can't allocate memory for Uname");
        v35 = -30;
        goto LABEL_70;
      }

      v17 = v38;
      v16 = archive_entry_uname(v37);
      v3 = archive_string_conversion_charset_name(v31);
      archive_set_error(v17, 79, "Can't translate uname '%s' to %s", v16, v3);
      v34 = -20;
    }

    v36 = _archive_entry_gname_l(v37, (v32 + 64), (v32 + 72), v31);
    if (v36)
    {
      if (*__error() == 12)
      {
        archive_set_error(v38, 12, "Can't allocate memory for Gname");
        v35 = -30;
        goto LABEL_70;
      }

      v15 = v38;
      v14 = archive_entry_gname(v37);
      v4 = archive_string_conversion_charset_name(v31);
      archive_set_error(v15, 79, "Can't translate gname '%s' to %s", v14, v4);
      v34 = -20;
    }

    v36 = _archive_entry_hardlink_l(v37, (v32 + 16), (v32 + 24), v31);
    if (v36)
    {
      if (*__error() == 12)
      {
LABEL_31:
        archive_set_error(v38, 12, "Can't allocate memory for Linkname");
        v35 = -30;
        goto LABEL_70;
      }

      v13 = v38;
      v12 = archive_entry_hardlink(v37);
      v5 = archive_string_conversion_charset_name(v31);
      archive_set_error(v13, 79, "Can't translate linkname '%s' to %s", v12, v5);
      v34 = -20;
    }

    if (!*(v32 + 24))
    {
      v36 = _archive_entry_symlink_l(v37, (v32 + 16), (v32 + 24), v31);
      if (v36)
      {
        if (*__error() == 12)
        {
          goto LABEL_31;
        }

        v11 = v38;
        v10 = archive_entry_hardlink(v37);
        v6 = archive_string_conversion_charset_name(v31);
        archive_set_error(v11, 79, "Can't translate linkname '%s' to %s", v10, v6);
        v34 = -20;
      }
    }

    if (*(v32 + 24) > 0x64uLL)
    {
      v24 = *(v32 + 24) + 1;
      v23 = archive_entry_new2(v38);
      archive_entry_set_uname(v23, "root");
      archive_entry_set_gname(v23, "wheel");
      archive_entry_set_pathname(v23, "././@LongLink");
      archive_entry_set_size(v23, v24);
      v35 = archive_format_gnutar_header(v38, v40, v23, 75);
      archive_entry_free(v23);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_output(v38, v40, 512);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_output(v38, *(v32 + 16), v24);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_nulls(v38, -v24 & 0x1FF);
      if (v35 < -20)
      {
        goto LABEL_70;
      }
    }

    if (*(v32 + 40) > 0x64uLL)
    {
      v22 = *(v32 + 32);
      v21 = *(v32 + 40) + 1;
      v20 = archive_entry_new2(v38);
      archive_entry_set_uname(v20, "root");
      archive_entry_set_gname(v20, "wheel");
      archive_entry_set_pathname(v20, "././@LongLink");
      archive_entry_set_size(v20, v21);
      v35 = archive_format_gnutar_header(v38, v40, v20, 76);
      archive_entry_free(v20);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_output(v38, v40, 512);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_output(v38, v22, v21);
      if (v35 < -20)
      {
        goto LABEL_70;
      }

      v35 = __archive_write_nulls(v38, -v21 & 0x1FF);
      if (v35 < -20)
      {
        goto LABEL_70;
      }
    }

    if (archive_entry_hardlink(v37))
    {
      v33 = 49;
    }

    else
    {
      v9 = archive_entry_filetype(v37);
      switch(v9)
      {
        case 4096:
          v33 = 54;
          break;
        case 8192:
          v33 = 51;
          break;
        case 16384:
          v33 = 53;
          break;
        case 24576:
          v33 = 52;
          break;
        case 32768:
          v33 = 48;
          break;
        case 40960:
          v33 = 50;
          break;
        default:
          __archive_write_entry_filetype_unsupported(v38, v37, "gnutar");
          v35 = -25;
          goto LABEL_70;
      }
    }

    v35 = archive_format_gnutar_header(v38, v40, v37, v33);
    if (v35 >= -20)
    {
      if (v34 < v35)
      {
        v35 = v34;
      }

      v34 = __archive_write_output(v38, v40, 512);
      if (v34 >= -20)
      {
        if (v34 < v35)
        {
          v35 = v34;
        }

        v7 = archive_entry_size(v37);
        *v32 = v7;
        *(v32 + 8) = -*v32 & 0x1FFLL;
      }

      else
      {
        v35 = v34;
      }
    }

    goto LABEL_70;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = strlen(__s);
  if (archive_string_ensure(&v25, v28 + 2))
  {
    v26 = 0;
    archive_strncat(&v25, __s, v28);
    archive_strappend_char(&v25, 47);
    archive_entry_copy_pathname(v37, v25);
    archive_string_free(&v25);
    goto LABEL_17;
  }

  archive_set_error(v38, 12, "Can't allocate ustar data");
  archive_string_free(&v25);
  return -30;
}

uint64_t archive_write_gnutar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_gnutar_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_gnutar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  LODWORD(result) = __archive_write_nulls(a1, *v2 + v2[1]);
  v2[1] = 0;
  *v2 = 0;
  return result;
}

uint64_t archive_format_gnutar_header(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v14 = *(a1 + 248);
  v20 = 0;
  __memcpy_chk();
  if (a4 == 75 || a4 == 76)
  {
    __sa = archive_entry_pathname(a3);
    strlen(__sa);
  }

  __memcpy_chk();
  if (v14[3])
  {
    __memcpy_chk();
  }

  if (a4 == 75 || a4 == 76)
  {
    __sb = archive_entry_uname(a3);
    v18 = strlen(__sb);
  }

  else
  {
    v18 = v14[7];
  }

  if (v18)
  {
    __memcpy_chk();
  }

  if (a4 == 75 || a4 == 76)
  {
    __s = archive_entry_gname(a3);
    v19 = strlen(__s);
  }

  else
  {
    __s = v14[8];
    v19 = v14[9];
  }

  if (v19)
  {
    strlen(__s);
    __memcpy_chk();
  }

  v4 = archive_entry_mode(a3);
  format_octal_3(v4 & 0xFFF, a2 + 100, 7);
  v5 = archive_entry_uid(a3);
  if (format_number_1(v5, a2 + 108, 7, 8))
  {
    v6 = archive_entry_uid(a3);
    archive_set_error(a1, 34, "Numeric user ID %jd too large", v6);
    v20 = -25;
  }

  v7 = archive_entry_gid(a3);
  if (format_number_1(v7, a2 + 116, 7, 8))
  {
    v8 = archive_entry_gid(a3);
    archive_set_error(a1, 34, "Numeric group ID %jd too large", v8);
    v20 = -25;
  }

  v9 = archive_entry_size(a3);
  if (format_number_1(v9, a2 + 124, 11, 12))
  {
    archive_set_error(a1, 34, "File size out of range");
    v20 = -25;
  }

  v10 = archive_entry_mtime(a3);
  format_octal_3(v10, a2 + 136, 11);
  if (archive_entry_filetype(a3) == 24576 || archive_entry_filetype(a3) == 0x2000)
  {
    v11 = archive_entry_rdevmajor(a3);
    if (format_octal_3(v11, a2 + 329, 6))
    {
      archive_set_error(a1, 34, "Major device number too large");
      v20 = -25;
    }

    v12 = archive_entry_rdevminor(a3);
    if (format_octal_3(v12, a2 + 337, 6))
    {
      archive_set_error(a1, 34, "Minor device number too large");
      v20 = -25;
    }
  }

  *(a2 + 156) = a4;
  v22 = 0;
  for (i = 0; i < 512; ++i)
  {
    v22 += *(a2 + i);
  }

  *(a2 + 154) = 0;
  format_octal_3(v22, a2 + 148, 6);
  return v20;
}

uint64_t format_octal_3(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a1;
  v8 = a3;
  v7 = a3;
  if (a1 < 0)
  {
    v10 = 0;
  }

  v9 = (a2 + a3);
  while (1)
  {
    v3 = v8--;
    if (v3 <= 0)
    {
      break;
    }

    *--v9 = (v10 & 7) + 48;
    v10 >>= 3;
  }

  if (v10)
  {
    while (1)
    {
      v4 = v7--;
      if (v4 <= 0)
      {
        break;
      }

      v5 = v9++;
      *v5 = 55;
    }

    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t format_number_1(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a1 >= 1 << (3 * a3))
  {
    return format_256_1(a1, a2, a4);
  }

  else
  {
    return format_octal_3(a1, a2, a3);
  }
}

uint64_t format_256_1(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v6 = (a2 + a3);
  while (1)
  {
    v3 = v5--;
    if (v3 <= 0)
    {
      break;
    }

    *--v6 = a1;
    a1 >>= 8;
  }

  *v6 |= 0x80u;
  return 0;
}
uint64_t _warc_read(uint64_t a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = **(a1 + 2072);
  v6 = 0;
  v5 = 0;
  if (v7[1] >= *v7)
  {
    goto LABEL_2;
  }

  if (v7[2])
  {
    __archive_read_consume(v11, v7[2]);
    v7[2] = 0;
  }

  v6 = __archive_read_ahead(v11, 1uLL, &v5);
  if ((v5 & 0x8000000000000000) != 0)
  {
    *v9 = 0;
    return v5;
  }

  if (v5)
  {
    if (v5 > *v7 - v7[1])
    {
      v5 = *v7 - v7[1];
    }

    *v8 = v7[1];
    *v9 = v5;
    *v10 = v6;
    v7[1] += v5;
    v7[2] = v5;
    return 0;
  }

  else
  {
LABEL_2:
    *v10 = 0;
    *v9 = 0;
    *v8 = v7[1] + 4;
    v7[2] = 0;
    return 1;
  }
}

uint64_t _warc_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (__archive_read_consume(a1, *v2) < 0 || __archive_read_consume(a1, 4) < 0)
  {
    return -30;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    return 0;
  }
}

uint64_t _warc_find_eoh(char *a1, size_t a2)
{
  v3 = xmemmem(a1, a2, "\r\n\r\n", 4);
  if (v3)
  {
    v3 += 4;
  }

  return v3;
}

uint64_t _warc_rdlen(char *a1, size_t a2)
{
  v10 = a1;
  v9 = a2;
  eol = 0;
  __endptr = 0;
  __str = xmemmem(a1, a2, "\r\nContent-Length:", 17);
  if (!__str)
  {
    return -1;
  }

  __str += 17;
  eol = _warc_find_eol(__str, &v10[v9] - __str);
  if (!eol)
  {
    return -1;
  }

  while (1)
  {
    v4 = 0;
    if (__str < eol)
    {
      v3 = 1;
      if (*__str != 32)
      {
        v3 = *__str == 9;
      }

      v4 = v3;
    }

    if (!v4)
    {
      break;
    }

    ++__str;
  }

  if (!isdigit(*__str))
  {
    return -1;
  }

  *__error() = 0;
  v5 = strtol(__str, &__endptr, 10);
  if (!*__error() && __endptr == eol)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

time_t _warc_rdrtm(char *a1, size_t a2)
{
  v8 = a1;
  v7 = a2;
  eol = 0;
  v4 = 0;
  v6 = xmemmem(a1, a2, "\r\nWARC-Date:", 12);
  if (!v6)
  {
    return -1;
  }

  v6 += 12;
  eol = _warc_find_eol(v6, &v8[v7] - v6);
  if (!eol)
  {
    return -1;
  }

  v3 = xstrpisotime(v6, &v4);
  if (v4 == eol)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t _warc_rdtyp(char *a1, size_t a2)
{
  __s1 = xmemmem(a1, a2, "\r\nWARC-Type:", 12);
  if (__s1)
  {
    __s1a = __s1 + 12;
    eol = _warc_find_eol(__s1a, &a1[a2] - __s1a);
    if (eol)
    {
      while (1)
      {
        v4 = 0;
        if (__s1a < eol)
        {
          v3 = 1;
          if (*__s1a != 32)
          {
            v3 = *__s1a == 9;
          }

          v4 = v3;
        }

        if (!v4)
        {
          break;
        }

        ++__s1a;
      }

      if (__s1a + 8 == eol)
      {
        if (!memcmp(__s1a, "resource", 8uLL))
        {
          return 3;
        }

        if (!memcmp(__s1a, "response", 8uLL))
        {
          return 5;
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

uint64_t _warc_rduri(char *a1, size_t a2)
{
  v15 = 0;
  __s1 = xmemmem(a1, a2, "\r\nWARC-Target-URI:", 18);
  if (__s1)
  {
    __s1a = __s1 + 18;
    eol = _warc_find_eol(__s1a, &a1[a2] - __s1a);
    if (eol)
    {
      while (1)
      {
        v6 = 0;
        if (__s1a < eol)
        {
          v5 = 1;
          if (*__s1a != 32)
          {
            v5 = *__s1a == 9;
          }

          v6 = v5;
        }

        if (!v6)
        {
          break;
        }

        ++__s1a;
      }

      v9 = xmemmem(__s1a, eol - __s1a, "://", 3);
      if (v9)
      {
        for (i = __s1a; i < eol; ++i)
        {
          if (isspace(*i))
          {
            return v15;
          }
        }

        if (v9 >= (__s1a + 3))
        {
          v10 = (v9 + 3);
          if (!memcmp(__s1a, "file", 4uLL))
          {
            return eol - v10;
          }

          if (!memcmp(__s1a, "http", 4uLL) || !memcmp(__s1a, "ftp", 3uLL))
          {
            do
            {
              v4 = 0;
              if (v10 < eol)
              {
                v2 = v10++;
                v4 = *v2 != 47;
              }
            }

            while (v4);
            return eol - v10;
          }
        }
      }
    }
  }

  return v15;
}

time_t _warc_rdmtm(char *a1, size_t a2)
{
  v8 = a1;
  v7 = a2;
  eol = 0;
  v4 = 0;
  v6 = xmemmem(a1, a2, "\r\nLast-Modified:", 16);
  if (!v6)
  {
    return -1;
  }

  v6 += 16;
  eol = _warc_find_eol(v6, &v8[v7] - v6);
  if (!eol)
  {
    return -1;
  }

  v3 = xstrpisotime(v6, &v4);
  if (v4 == eol)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t xmemmem(char *a1, size_t a2, char *a3, uint64_t a4)
{
  v15 = &a1[a2];
  v14 = &a3[a4];
  if (!a4)
  {
    goto LABEL_17;
  }

  v18 = memchr(a1, *a3, a2);
  if (!v18)
  {
    return 0;
  }

  v13 = v18 + 1;
  v12 = a3 + 1;
  v10 = *v18;
  v9 = v10;
  for (i = 1; ; i = i & (*v13++ == *v12++))
  {
    v7 = 0;
    if (v13 < v15)
    {
      v7 = v12 < v14;
    }

    if (!v7)
    {
      break;
    }

    v10 ^= *v13;
    v9 ^= *v12;
  }

  if (v12 < v14)
  {
    return 0;
  }

  if (i)
  {
LABEL_17:
    deconst();
    return v5;
  }

  __s1 = v18;
  while (v13 < v15)
  {
    v4 = __s1++;
    v10 ^= *v4 ^ *v13;
    if (v10 == v9 && !memcmp(__s1, a3, a4 - 1))
    {
      goto LABEL_17;
    }

    ++v13;
  }

  return 0;
}

time_t xstrpisotime(char *a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v11 = -1;
  memset(&__b, 0, sizeof(__b));
  while (1)
  {
    v10 = 1;
    if (*v14 != 32)
    {
      v10 = *v14 == 9;
    }

    if (!v10)
    {
      break;
    }

    ++v14;
  }

  __b.tm_year = strtoi_lim(v14, &v14, 1583, 4095);
  if ((__b.tm_year & 0x80000000) == 0)
  {
    v2 = v14++;
    if (*v2 == 45)
    {
      __b.tm_mon = strtoi_lim(v14, &v14, 1, 12);
      if ((__b.tm_mon & 0x80000000) == 0)
      {
        v3 = v14++;
        if (*v3 == 45)
        {
          __b.tm_mday = strtoi_lim(v14, &v14, 1, 31);
          if ((__b.tm_mday & 0x80000000) == 0)
          {
            v4 = v14++;
            if (*v4 == 84)
            {
              __b.tm_hour = strtoi_lim(v14, &v14, 0, 23);
              if ((__b.tm_hour & 0x80000000) == 0)
              {
                v5 = v14++;
                if (*v5 == 58)
                {
                  __b.tm_min = strtoi_lim(v14, &v14, 0, 59);
                  if ((__b.tm_min & 0x80000000) == 0)
                  {
                    v6 = v14++;
                    if (*v6 == 58)
                    {
                      __b.tm_sec = strtoi_lim(v14, &v14, 0, 60);
                      if ((__b.tm_sec & 0x80000000) == 0)
                      {
                        v7 = v14++;
                        if (*v7 == 90)
                        {
                          __b.tm_year -= 1900;
                          --__b.tm_mon;
                          v11 = time_from_tm_1(&__b);
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

  if (v13)
  {
    deconst();
    *v13 = v8;
  }

  return v11;
}

uint64_t strtoi_lim(char *a1, char **a2, int a3, int a4)
{
  v9 = 0;
  v8 = a1;
  if (a4 <= 10)
  {
    v6 = 10;
  }

  else
  {
    v6 = a4;
  }

  for (i = v6; ; i /= 10)
  {
    v5 = 0;
    if (10 * v9 <= a4)
    {
      v5 = 0;
      if (i)
      {
        v5 = 0;
        if (*v8 >= 48)
        {
          v5 = *v8 <= 57;
        }
      }
    }

    if (!v5)
    {
      break;
    }

    v9 = 10 * v9 + *v8++ - 48;
  }

  if (v8 == a1)
  {
    v9 = -1;
  }

  else if (v9 < a3 || v9 > a4)
  {
    v9 = -2;
  }

  *a2 = v8;
  return v9;
}

uint64_t archive_version_details()
{
  v6 = archive_zlib_version();
  v5 = archive_liblzma_version();
  v4 = archive_bzlib_version();
  v3 = archive_liblz4_version();
  v2 = archive_libzstd_version();
  if (!archive_version_details_init)
  {
    archive_version_details_str = 0;
    qword_1EBDD7CA8 = 0;
    qword_1EBDD7CB0 = 0;
    archive_strcat(&archive_version_details_str, "libarchive 3.7.4");
    if (v6)
    {
      archive_strcat(&archive_version_details_str, " zlib/");
      archive_strcat(&archive_version_details_str, v6);
    }

    if (v5)
    {
      archive_strcat(&archive_version_details_str, " liblzma/");
      archive_strcat(&archive_version_details_str, v5);
    }

    if (v4)
    {
      v1 = strchr(v4, 44);
      if (!v1)
      {
        v1 = &v4[strlen(v4)];
      }

      archive_strcat(&archive_version_details_str, " bz2lib/");
      archive_strncat(&archive_version_details_str, v4, v1 - v4);
    }

    if (v3)
    {
      archive_strcat(&archive_version_details_str, " liblz4/");
      archive_strcat(&archive_version_details_str, v3);
    }

    if (v2)
    {
      archive_strcat(&archive_version_details_str, " libzstd/");
      archive_strcat(&archive_version_details_str, v2);
    }
  }

  return archive_version_details_str;
}

uint64_t archive_write_set_format_cpio_newc(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_newc") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040FC537BA2uLL);
    if (v2)
    {
      *(a1 + 248) = v2;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_newc_options;
      *(a1 + 288) = archive_write_newc_header;
      *(a1 + 296) = archive_write_newc_data;
      *(a1 + 280) = archive_write_newc_finish_entry;
      *(a1 + 304) = archive_write_newc_close;
      *(a1 + 312) = archive_write_newc_free;
      *(a1 + 16) = 65540;
      *(a1 + 24) = "SVR4 cpio nocrc";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate cpio data");
      return -30;
    }
  }
}

uint64_t archive_write_newc_options(uint64_t a1, const char *a2, const char *a3)
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

uint64_t archive_write_newc_header(_DWORD *a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v7))
  {
    v4 = v7;
    sconv_0 = get_sconv_0(v8);
    if (_archive_entry_pathname_l(v7, &v6, &v5, sconv_0) && *__error() == 12)
    {
      archive_set_error(v8, 12, "Can't allocate memory for Pathname");
      return -30;
    }

    else if (v5 && v6 && *v6)
    {
      if (archive_entry_hardlink(v7) || archive_entry_size_is_set(v7) && (archive_entry_size(v7) & 0x8000000000000000) == 0)
      {
        return write_header_0(v8, v7);
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

uint64_t archive_write_newc_data(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t archive_write_newc_close(uint64_t a1)
{
  v2 = archive_entry_new();
  archive_entry_set_nlink(v2, 1);
  archive_entry_set_size(v2, 0);
  archive_entry_set_pathname(v2, "TRAILER!!!");
  v3 = write_header_0(a1, v2);
  archive_entry_free(v2);
  return v3;
}

uint64_t archive_write_newc_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv_0(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *(v3 + 16);
  if (!v2)
  {
    if (!*(v3 + 32))
    {
      *(v3 + 24) = archive_string_default_conversion_for_write();
      *(v3 + 32) = 1;
    }

    return *(v3 + 24);
  }

  return v2;
}

uint64_t write_header_0(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v34 = a2;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  sconv_0 = 0;
  v25 = 0;
  v24 = 0;
  v32 = *(a1 + 248);
  v27 = 0;
  sconv_0 = get_sconv_0(a1);
  v25 = 0;
  v28 = _archive_entry_pathname_l(v34, &v30, &v24, sconv_0);
  if (v28)
  {
    if (*__error() == 12)
    {
      archive_set_error(v35, 12, "Can't allocate memory for Pathname");
      v27 = -30;
      goto LABEL_37;
    }

    v22 = v35;
    v21 = archive_entry_pathname(v34);
    v2 = archive_string_conversion_charset_name(sconv_0);
    archive_set_error(v22, 79, "Can't translate pathname '%s' to %s", v21, v2);
    v27 = -20;
  }

  v29 = v24 + 1;
  memset(__b, 0, sizeof(__b));
  format_hex(460545, __b, 6);
  v3 = archive_entry_devmajor(v34);
  format_hex(v3, &__b[62], 8);
  v4 = archive_entry_devminor(v34);
  format_hex(v4, &__b[70], 8);
  v33 = archive_entry_ino64(v34);
  if (v33 > 0xFFFFFFFFLL)
  {
    archive_set_error(v35, 34, "large inode number truncated");
    v27 = -20;
  }

  format_hex(v33, &__b[6], 8);
  v5 = archive_entry_mode(v34);
  format_hex(v5, &__b[14], 8);
  v6 = archive_entry_uid(v34);
  format_hex(v6, &__b[22], 8);
  v7 = archive_entry_gid(v34);
  format_hex(v7, &__b[30], 8);
  v8 = archive_entry_nlink(v34);
  format_hex(v8, &__b[38], 8);
  if (archive_entry_filetype(v34) == 24576 || archive_entry_filetype(v34) == 0x2000)
  {
    v9 = archive_entry_rdevmajor(v34);
    format_hex(v9, &__b[78], 8);
    v10 = archive_entry_rdevminor(v34);
    format_hex(v10, &__b[86], 8);
  }

  else
  {
    format_hex(0, &__b[78], 8);
    format_hex(0, &__b[86], 8);
  }

  v11 = archive_entry_mtime(v34);
  format_hex(v11, &__b[46], 8);
  format_hex(v29, &__b[94], 8);
  format_hex(0, &__b[102], 8);
  if (archive_entry_filetype(v34) != 0x8000)
  {
    archive_entry_set_size(v34, 0);
  }

  v28 = _archive_entry_symlink_l(v34, &v31, &v24, sconv_0);
  if (v28)
  {
    if (*__error() == 12)
    {
      archive_set_error(v35, 12, "Can't allocate memory for Likname");
      v27 = -30;
      goto LABEL_37;
    }

    v20 = v35;
    v19 = archive_entry_symlink(v34);
    v12 = archive_string_conversion_charset_name(sconv_0);
    archive_set_error(v20, 79, "Can't translate linkname '%s' to %s", v19, v12);
    v27 = -20;
  }

  if (v24 && v31 && *v31)
  {
    v13 = strlen(v31);
    v28 = format_hex(v13, &__b[54], 8);
  }

  else
  {
    v14 = archive_entry_size(v34);
    v28 = format_hex(v14, &__b[54], 8);
  }

  if (v28)
  {
    archive_set_error(v35, 34, "File is too large for this format.");
    v27 = -25;
  }

  else
  {
    v28 = __archive_write_output(v35, __b, 110);
    if (v28)
    {
      v27 = -30;
    }

    else
    {
      v28 = __archive_write_output(v35, v30, v29);
      if (v28)
      {
        v27 = -30;
      }

      else
      {
        v23 = -(v29 + 110) & 3;
        if (v23 && (v28 = __archive_write_output(v35, &unk_1BF342BB8, v23)) != 0)
        {
          v27 = -30;
        }

        else
        {
          v15 = archive_entry_size(v34);
          *v32 = v15;
          *(v32 + 8) = -*v32 & 3;
          if (v31 && *v31)
          {
            v16 = strlen(v31);
            v28 = __archive_write_output(v35, v31, v16);
            if (v28)
            {
              v27 = -30;
            }

            else
            {
              v17 = strlen(v31);
              v28 = __archive_write_output(v35, &unk_1BF342BB8, -v17 & 3);
              if (v28)
              {
                v27 = -30;
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  archive_entry_free(v25);
  return v27;
}

uint64_t format_hex(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = (1 << (4 * a3)) - 1;
  if (a1 < 0 || a1 > v5)
  {
    format_hex_recursive(v5, a2, a3);
    return -1;
  }

  else
  {
    format_hex_recursive(a1, a2, a3);
    return 0;
  }
}

uint64_t format_hex_recursive(uint64_t a1, _BYTE *a2, int a3)
{
  if (!a3)
  {
    return a1;
  }

  v3 = format_hex_recursive(a1, a2 + 1, a3 - 1);
  *a2 = a0123456789abcd[v3 & 0xF];
  return v3 >> 4;
}

uint64_t archive_write_set_format_mtree_default(uint64_t a1, const char *a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, a2) == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v3 = malloc_type_calloc(1uLL, 0x3C8uLL, 0x10B0040658C16C3uLL);
    if (v3)
    {
      *v3 = 0;
      v3[28] = 1;
      __memset_chk();
      v3[238] = 4032058;
      v3[239] = 0;
      v3[240] = 0;
      *(v3 + 8) = 0;
      *(v3 + 9) = 0;
      *(v3 + 10) = 0;
      *(v3 + 11) = 0;
      *(v3 + 12) = 0;
      *(v3 + 13) = 0;
      mtree_entry_register_init(v3);
      *(a1 + 248) = v3;
      *(a1 + 312) = archive_write_mtree_free;
      *(a1 + 256) = "mtree";
      *(a1 + 272) = archive_write_mtree_options;
      *(a1 + 288) = archive_write_mtree_header;
      *(a1 + 304) = archive_write_mtree_close;
      *(a1 + 296) = archive_write_mtree_data;
      *(a1 + 280) = archive_write_mtree_finish_entry;
      *(a1 + 16) = 0x80000;
      *(a1 + 24) = "mtree";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate mtree data");
      return -30;
    }
  }
}

uint64_t archive_write_set_format_mtree_classic(uint64_t a1)
{
  v3 = archive_write_set_format_mtree_default(a1, "archive_write_set_format_mtree_classic");
  if (!v3)
  {
    v2 = *(a1 + 248);
    *(v2 + 216) = 1;
    *(v2 + 964) = 1;
  }

  return v3;
}

uint64_t mtree_entry_register_init(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 56) = result + 48;
  return result;
}

uint64_t archive_write_mtree_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    mtree_entry_register_free(v2);
    archive_string_free(v2 + 24);
    archive_string_free(v2 + 64);
    archive_string_free(v2 + 88);
    attr_counter_set_free(v2);
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_mtree_options(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 248);
  v4 = 0;
  switch(*a2)
  {
    case 'a':
      if (!strcmp(a2, "all"))
      {
        v4 = -1;
      }

      goto LABEL_69;
    case 'c':
      v4 = strcmp(a2, "cksum") == 0;
      goto LABEL_69;
    case 'd':
      if (!strcmp(a2, "device"))
      {
        v4 = 2;
        goto LABEL_69;
      }

      if (strcmp(a2, "dironly"))
      {
        goto LABEL_69;
      }

      v5[239] = a3 != 0;
      return 0;
    case 'f':
      if (!strcmp(a2, "flags"))
      {
        v4 = 8;
      }

      goto LABEL_69;
    case 'g':
      if (!strcmp(a2, "gid"))
      {
        v4 = 16;
      }

      else if (!strcmp(a2, "gname"))
      {
        v4 = 32;
      }

      goto LABEL_69;
    case 'i':
      if (!strcmp(a2, "indent"))
      {
        v5[240] = a3 != 0;
        return 0;
      }

      if (!strcmp(a2, "inode"))
      {
        v4 = 0x4000000;
      }

      goto LABEL_69;
    case 'l':
      if (!strcmp(a2, "link"))
      {
        v4 = 0x10000;
      }

      goto LABEL_69;
    case 'm':
      if (!strcmp(a2, "md5") || !strcmp(a2, "md5digest"))
      {
        v4 = 256;
      }

      if (!strcmp(a2, "mode"))
      {
        v4 = 512;
      }

      goto LABEL_69;
    case 'n':
      if (!strcmp(a2, "nlink"))
      {
        v4 = 1024;
      }

      goto LABEL_69;
    case 'r':
      if (!strcmp(a2, "resdevice"))
      {
        v4 = 0x8000000;
      }

      else if (!strcmp(a2, "ripemd160digest") || !strcmp(a2, "rmd160") || !strcmp(a2, "rmd160digest"))
      {
        v4 = 0x2000;
      }

      goto LABEL_69;
    case 's':
      if (!strcmp(a2, "sha1") || !strcmp(a2, "sha1digest"))
      {
        v4 = 0x4000;
      }

      if (!strcmp(a2, "sha256") || !strcmp(a2, "sha256digest"))
      {
        v4 = 0x800000;
      }

      if (!strcmp(a2, "sha384") || !strcmp(a2, "sha384digest"))
      {
        v4 = 0x1000000;
      }

      if (!strcmp(a2, "sha512") || !strcmp(a2, "sha512digest"))
      {
        v4 = 0x2000000;
      }

      if (!strcmp(a2, "size"))
      {
        v4 = 0x8000;
      }

      goto LABEL_69;
    case 't':
      if (!strcmp(a2, "time"))
      {
        v4 = 0x40000;
      }

      else if (!strcmp(a2, "type"))
      {
        v4 = 0x80000;
      }

      goto LABEL_69;
    case 'u':
      if (!strcmp(a2, "uid"))
      {
        v4 = 0x100000;
      }

      else if (!strcmp(a2, "uname"))
      {
        v4 = 0x200000;
      }

      else if (!strcmp(a2, "use-set"))
      {
        v5[241] = a3 != 0;
        return 0;
      }

LABEL_69:
      if (v4)
      {
        if (a3)
        {
          v5[238] |= v4;
        }

        else
        {
          v5[238] &= ~v4;
        }

        return 0;
      }

      else
      {
        return -20;
      }

    default:
      goto LABEL_69;
  }
}

uint64_t archive_write_mtree_header(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = *(a1 + 248);
  v5 = 0;
  if (*(v6 + 112))
  {
    *(v6 + 112) = 0;
    archive_strcat((v6 + 88), "#mtree\n");
    if ((*(v6 + 952) & 0x380238) == 0)
    {
      *(v6 + 964) = 0;
    }
  }

  *(v6 + 120) = archive_entry_size(v7);
  if (!*(v6 + 956) || archive_entry_filetype(v7) == 0x4000)
  {
    v3 = mtree_entry_new(v8, v7, &v5);
    if (v3 >= -20)
    {
      v4 = mtree_entry_tree_add(v8, &v5);
      if (v4 >= -20)
      {
        *v6 = v5;
        if (v5[6])
        {
          sum_init(v6);
        }

        return v3;
      }

      else
      {
        mtree_entry_free(v5);
        return v4;
      }
    }

    else
    {
      return v3;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_mtree_close(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2[1] && write_mtree_entry_tree(a1))
  {
    return -30;
  }

  else
  {
    archive_write_set_bytes_in_last_block(a1, 1u);
    return __archive_write_output(a1, v2[11], v2[12]);
  }
}

uint64_t archive_write_mtree_data(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v5 = a3;
  v4 = *(a1 + 248);
  if (a3 > v4[15])
  {
    v5 = v4[15];
  }

  v4[15] -= v5;
  if (!*v4)
  {
    return v5;
  }

  if (*(*v4 + 228) == 0x8000)
  {
    sum_update(v4, a2, v5);
  }

  return v5;
}

uint64_t archive_write_mtree_finish_entry(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *v3;
  if (*v3)
  {
    *v3 = 0;
    if (*(v2 + 48))
    {
      sum_final(v3, *(v2 + 48));
    }
  }

  return 0;
}

void mtree_entry_register_free(uint64_t result)
{
  for (i = *(result + 48); i; i = v1)
  {
    v1 = *(i + 24);
    mtree_entry_free(i);
  }
}

void attr_counter_set_free(uint64_t a1)
{
  v1 = (a1 + 184);
  attr_counter_free((a1 + 184));
  attr_counter_free(v1 + 1);
  attr_counter_free(v1 + 2);
  attr_counter_free(v1 + 3);
}

void mtree_entry_free(void **a1)
{
  archive_string_free((a1 + 7));
  archive_string_free((a1 + 10));
  archive_string_free((a1 + 13));
  archive_string_free((a1 + 16));
  archive_string_free((a1 + 19));
  archive_string_free((a1 + 22));
  archive_string_free((a1 + 25));
  free(a1[5]);
  free(a1[6]);
  free(a1);
}

void attr_counter_free(void **a1)
{
  if (*a1)
  {
    for (i = *a1; i; i = v1)
    {
      v1 = i[1];
      free(i);
    }

    *a1 = 0;
  }
}

uint64_t mtree_entry_new(_DWORD *a1, uint64_t *a2, void ***a3)
{
  v14 = malloc_type_calloc(1uLL, 0x138uLL, 0x1030040643B09EFuLL);
  if (v14)
  {
    v9 = mtree_entry_setup_filenames(a1, v14, a2);
    if (v9 < -20)
    {
      mtree_entry_free(v14);
      *a3 = 0;
      return v9;
    }

    v3 = archive_entry_symlink(a2);
    v10 = v3;
    if (v3)
    {
      v14[17] = 0;
      v8 = strlen(v3);
      archive_strncat(v14 + 16, v10, v8);
    }

    *(v14 + 56) = archive_entry_nlink(a2);
    *(v14 + 114) = archive_entry_filetype(a2);
    *(v14 + 115) = archive_entry_mode(a2) & 0xFFF;
    v14[30] = archive_entry_uid(a2);
    v14[31] = archive_entry_gid(a2);
    v11 = archive_entry_uname(a2);
    if (v11)
    {
      v14[20] = 0;
      v7 = strlen(v11);
      archive_strncat(v14 + 19, v11, v7);
    }

    v12 = archive_entry_gname(a2);
    if (v12)
    {
      v14[23] = 0;
      v6 = strlen(v12);
      archive_strncat(v14 + 22, v12, v6);
    }

    v13 = archive_entry_fflags_text(a2);
    if (v13)
    {
      v14[26] = 0;
      v5 = strlen(v13);
      archive_strncat(v14 + 25, v13, v5);
    }

    archive_entry_fflags(a2, v14 + 34, v14 + 35);
    v14[32] = archive_entry_mtime(a2);
    v14[33] = archive_entry_mtime_nsec(a2);
    *(v14 + 72) = archive_entry_rdevmajor(a2);
    *(v14 + 73) = archive_entry_rdevminor(a2);
    *(v14 + 74) = archive_entry_devmajor(a2);
    *(v14 + 75) = archive_entry_devminor(a2);
    v14[38] = archive_entry_ino(a2);
    v14[29] = archive_entry_size(a2);
    if (*(v14 + 114) == 0x4000)
    {
      v14[5] = malloc_type_calloc(1uLL, 0x30uLL, 0x10E004059D07AFEuLL);
      if (!v14[5])
      {
LABEL_16:
        mtree_entry_free(v14);
        archive_set_error(a1, 12, "Can't allocate memory for a mtree entry");
        *a3 = 0;
        return -30;
      }

      __archive_rb_tree_init(v14[5], mtree_entry_new_rb_ops);
      *(v14[5] + 2) = 0;
      *(v14[5] + 3) = v14[5] + 16;
      *(v14[5] + 4) = 0;
    }

    else if (*(v14 + 114) == 0x8000)
    {
      v14[6] = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
      if (!v14[6])
      {
        goto LABEL_16;
      }

      *v14[6] = 0;
    }

    *a3 = v14;
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory for a mtree entry");
  *a3 = 0;
  return -30;
}

uint64_t mtree_entry_tree_add(uint64_t a1, void ***a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  v14 = *(a1 + 248);
  v13 = 0;
  v12 = 0;
  node = 0;
  __s2 = 0;
  v9 = 0;
  path_component_1 = 0;
  v7 = 0;
  v12 = *a2;
  if (!v12[8] && v12[11] == 1 && *v12[10] == 46)
  {
    v12[4] = v12;
    if (!v14[1])
    {
      v14[1] = v12;
      mtree_entry_register_add(v14, v12);
      return 0;
    }

    node = v14[1];
  }

  else
  {
    if (!v12[8])
    {
      archive_set_error(v16, -1, "Internal programming error in generating canonical name for %s", v12[13]);
      return -25;
    }

    v9 = v12[7];
    __s2 = v9;
    if (v14[4] == v12[8] && !strcmp(v14[3], __s2))
    {
      if (__archive_rb_tree_insert_node(*(v14[2] + 40), v12))
      {
        v12[4] = v14[2];
        mtree_entry_register_add(v14, v12);
        return 0;
      }

      node = __archive_rb_tree_find_node(*(v14[2] + 40), v12[10]);
    }

    else
    {
      v13 = v14[1];
      while (1)
      {
        path_component_1 = get_path_component_1(v18, 256, __s2);
        if (!path_component_1)
        {
          break;
        }

        if (path_component_1 < 0)
        {
          archive_set_error(v16, -1, "A name buffer is too small");
          return -30;
        }

        if (path_component_1 == 1 && v18[0] == 46 && v13 && v13 == v14[1])
        {
          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }
        }

        else
        {
          node = mtree_entry_find_child(v13, v18);
          if (!node || !*__s2)
          {
            goto LABEL_34;
          }

          if (!node[5])
          {
            return -25;
          }

          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }

          v13 = node;
        }
      }

      node = 0;
LABEL_34:
      if (!node)
      {
        while (*__s2)
        {
          v6 = 0;
          v3 = 0;
          v4 = 0;
          v5 = 0;
          archive_strncat(&v3, v9, __s2 - v9 + path_component_1);
          if (v3[v4 - 1] == 47)
          {
            v3[--v4] = 0;
          }

          v7 = mtree_entry_create_virtual_dir(v16, v3, &v6);
          archive_string_free(&v3);
          if (v7 < -20)
          {
            return v7;
          }

          if (!strcmp(v6[13], "."))
          {
            v6[4] = v6;
            v14[1] = v6;
          }

          else
          {
            __archive_rb_tree_insert_node(v13[5], v6);
            v6[4] = v13;
          }

          mtree_entry_register_add(v14, v6);
          node = v6;
          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }

          path_component_1 = get_path_component_1(v18, 256, __s2);
          if (path_component_1 < 0)
          {
            archive_string_free(&v3);
            archive_set_error(v16, -1, "A name buffer is too small");
            return -30;
          }

          v13 = node;
        }

        v14[2] = v13;
        v14[4] = 0;
        archive_string_ensure((v14 + 3), v13[8] + v13[11] + 2);
        if (v13[8] + v13[11])
        {
          if (v13[8])
          {
            v14[4] = 0;
            archive_string_concat(v14 + 3, v13 + 7);
            archive_strappend_char(v14 + 3, 47);
          }

          archive_string_concat(v14 + 3, v13 + 10);
        }

        else
        {
          *v14[3] = 0;
        }

        if (__archive_rb_tree_insert_node(v13[5], v12))
        {
          v12[4] = v13;
          mtree_entry_register_add(v14, v12);
          return 0;
        }

        node = __archive_rb_tree_find_node(v13[5], v12[10]);
      }
    }
  }

  v7 = mtree_entry_exchange_same_entry(v16, node, v12);
  if (v7 >= -20)
  {
    if (node[5])
    {
      *(node[5] + 10) = 0;
    }

    *v15 = node;
    mtree_entry_free(v12);
    return -20;
  }

  else
  {
    return v7;
  }
}

uint64_t sum_init(uint64_t result)
{
  v1 = result;
  *(result + 224) = 0;
  if (*(result + 952))
  {
    *(result + 224) |= 1u;
    *(result + 228) = 0;
    *(result + 232) = 0;
  }

  if ((*(result + 952) & 0x100) != 0)
  {
    result = __archive_digest(result + 240);
    if (result)
    {
      *(v1 + 952) &= ~0x100u;
    }

    else
    {
      *(v1 + 224) |= 0x100u;
    }
  }

  if ((*(v1 + 952) & 0x4000) != 0)
  {
    result = off_1F3DE4E10(v1 + 332);
    if (result)
    {
      *(v1 + 952) &= ~0x4000u;
    }

    else
    {
      *(v1 + 224) |= 0x4000u;
    }
  }

  if ((*(v1 + 952) & 0x800000) != 0)
  {
    result = off_1F3DE4E28((v1 + 428));
    if (result)
    {
      *(v1 + 952) &= ~0x800000u;
    }

    else
    {
      *(v1 + 224) |= 0x800000u;
    }
  }

  if ((*(v1 + 952) & 0x1000000) != 0)
  {
    result = off_1F3DE4E40((v1 + 536));
    if (result)
    {
      *(v1 + 952) &= ~0x1000000u;
    }

    else
    {
      *(v1 + 224) |= 0x1000000u;
    }
  }

  if ((*(v1 + 952) & 0x2000000) != 0)
  {
    result = off_1F3DE4E58((v1 + 744));
    if (result)
    {
      *(v1 + 952) &= ~0x2000000u;
    }

    else
    {
      *(v1 + 224) |= 0x2000000u;
    }
  }

  return result;
}

uint64_t mtree_entry_setup_filenames(uint64_t a1, void *a2, void *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  a2[14] = 0;
  v11 = archive_entry_pathname(v21);
  if (archive_entry_pathname(v21))
  {
    v3 = archive_entry_pathname(v21);
    v10 = strlen(v3);
    archive_strncat(v22 + 13, v11, v10);
  }

  else
  {
    archive_strncat(v22 + 13, v11, 0);
  }

  v20 = v22[13];
  if (!strcmp(v20, "."))
  {
    v22[11] = 0;
    archive_strncat(v22 + 10, ".", 1uLL);
    return 0;
  }

  else
  {
    v22[8] = 0;
    v9 = v22 + 7;
    if (v20)
    {
      v8 = strlen(v20);
      archive_strncat(v9, v20, v8);
    }

    else
    {
      archive_strncat(v9, 0, 0);
    }

    v16 = v22[8];
    v18 = v22[7];
    v19 = v18;
    while (*v19)
    {
      if (*v19 == 47)
      {
        ++v19;
        --v16;
      }

      else
      {
        if (*v19 != 46 || v19[1] != 46 || v19[2] != 47)
        {
          break;
        }

        v19 += 3;
        v16 -= 3;
      }
    }

    if (v19 != v18)
    {
      __memmove_chk();
      v19 = v18;
    }

    do
    {
      if (!v16)
      {
        break;
      }

      v14 = v16;
      if (v19[v16 - 1] == 47)
      {
        v19[--v16] = 0;
      }

      if (v16 > 1 && v19[v16 - 2] == 47 && v19[v16 - 1] == 46)
      {
        v19[v16 - 2] = 0;
        v16 -= 2;
      }

      if (v16 > 2 && v19[v16 - 3] == 47 && v19[v16 - 2] == 46 && v19[v16 - 1] == 46)
      {
        v19[v16 - 3] = 0;
        v16 -= 3;
      }
    }

    while (v14 != v16);
    while (*v19)
    {
      if (*v19 == 47)
      {
        if (v19[1] == 47)
        {
          strlen(v19 + 1);
          __memmove_chk();
        }

        else if (v19[1] == 46 && v19[2] == 47)
        {
          strlen(v19 + 2);
          __memmove_chk();
        }

        else if (v19[1] == 46 && v19[2] == 46 && v19[3] == 47)
        {
            ;
          }

          __strcpy_chk();
          if (i > v18)
          {
            v19 = i;
          }

          else
          {
            v19 = v18;
          }
        }

        else
        {
          ++v19;
        }
      }

      else
      {
        ++v19;
      }
    }

    v19 = v18;
    v16 = strlen(v18);
    if (strcmp(v18, ".") && strncmp(v19, "./", 2uLL))
    {
      memset(v12, 0, sizeof(v12));
      archive_strncat(v12, "./", 2uLL);
      archive_strncat(v12, v19, v16);
      v22[8] = 0;
      archive_string_concat(v22 + 7, v12);
      archive_string_free(v12);
      v19 = v22[7];
      v16 = v22[8];
    }

    v17 = 0;
    while (*v19)
    {
      if (*v19 == 47)
      {
        v17 = v19;
      }

      ++v19;
    }

    if (v17)
    {
      *v17 = 0;
      v22[8] = &v17[-v22[7]];
      v22[11] = 0;
      v6 = v22 + 10;
      v7 = v17 + 1;
      if (v17 == -1)
      {
        archive_strncat(v6, v7, 0);
      }

      else
      {
        v5 = strlen(v17 + 1);
        archive_strncat(v6, v7, v5);
      }

      return v15;
    }

    else
    {
      v22[8] = v16;
      v22[11] = 0;
      archive_string_concat(v22 + 10, v22 + 7);
      v22[8] = 0;
      *v22[7] = 0;
      return v15;
    }
  }
}

uint64_t mtree_entry_register_add(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 56) = a2;
  *(result + 56) = a2 + 24;
  return result;
}

uint64_t get_path_component_1(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = strchr(a3, 47);
  if (v5)
  {
    v4 = v5 - a3;
  }

  else
  {
    v4 = strlen(a3);
    if (!v4)
    {
      return 0;
    }
  }

  if (v4 <= a2 - 1)
  {
    __memcpy_chk();
    *(a1 + v4) = 0;
    return v4;
  }

  else
  {
    return -1;
  }
}

uint64_t mtree_entry_find_child(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return __archive_rb_tree_find_node(*(a1 + 40), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mtree_entry_create_virtual_dir(_DWORD *a1, char *a2, void *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v6 = 0;
  v7 = archive_entry_new();
  if (v7)
  {
    archive_entry_copy_pathname(v7, v9);
    archive_entry_set_mode(v7, 16877);
    v3 = time(0);
    archive_entry_set_mtime(v7, v3, 0);
    v5 = mtree_entry_new(v10, v7, &v6);
    archive_entry_free(v7);
    if (v5 >= -20)
    {
      *(v6[5] + 10) = 1;
      *v8 = v6;
      return 0;
    }

    else
    {
      *v8 = 0;
      archive_set_error(v10, 12, "Can't allocate memory");
      return -30;
    }
  }

  else
  {
    *v8 = 0;
    archive_set_error(v10, 12, "Can't allocate memory");
    return -30;
  }
}

uint64_t mtree_entry_exchange_same_entry(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 230) & 0xF000) == (*(a3 + 230) & 0xF000))
  {
    *(a2 + 136) = 0;
    archive_string_concat((a2 + 128), (a3 + 128));
    *(a2 + 160) = 0;
    archive_string_concat((a2 + 152), (a3 + 152));
    *(a2 + 184) = 0;
    archive_string_concat((a2 + 176), (a3 + 176));
    *(a2 + 208) = 0;
    archive_string_concat((a2 + 200), (a3 + 200));
    *(a2 + 224) = *(a3 + 224);
    *(a2 + 228) = *(a3 + 228);
    *(a2 + 230) = *(a3 + 230);
    *(a2 + 232) = *(a3 + 232);
    *(a2 + 240) = *(a3 + 240);
    *(a2 + 248) = *(a3 + 248);
    *(a2 + 272) = *(a3 + 272);
    *(a2 + 280) = *(a3 + 280);
    *(a2 + 256) = *(a3 + 256);
    *(a2 + 264) = *(a3 + 264);
    *(a2 + 288) = *(a3 + 288);
    *(a2 + 292) = *(a3 + 292);
    *(a2 + 296) = *(a3 + 296);
    *(a2 + 300) = *(a3 + 300);
    *(a2 + 304) = *(a3 + 304);
    return -20;
  }

  else
  {
    return -25;
  }
}

uint64_t write_mtree_entry_tree(uint64_t a1)
{
  v5 = *(a1 + 248);
  v4 = *(v5 + 8);
  do
  {
    if (*(v5 + 964))
    {
      attr_counter_set_free(v5);
      for (i = __archive_rb_tree_iterate(*(v4 + 40), 0, 0); i; i = __archive_rb_tree_iterate(*(v4 + 40), i, 1u))
      {
        if ((attr_counter_set_collect(v5, i) & 0x80000000) != 0)
        {
          archive_set_error(a1, 12, "Can't allocate memory");
          return -30;
        }
      }
    }

    if (*(*(v4 + 40) + 40) && !*(v5 + 216))
    {
      if (*(v5 + 964))
      {
        write_global(v5);
      }
    }

    else if (write_mtree_entry(a1, v4))
    {
      return -30;
    }

    ++*(v5 + 220);
    for (j = __archive_rb_tree_iterate(*(v4 + 40), 0, 0); j; j = __archive_rb_tree_iterate(*(v4 + 40), j, 1u))
    {
      if (*(j + 40))
      {
        mtree_entry_add_child_tail(v4, j);
      }

      else if (write_mtree_entry(a1, j))
      {
        return -30;
      }
    }

    --*(v5 + 220);
    if (*(*(v4 + 40) + 16))
    {
      v4 = *(*(v4 + 40) + 16);
      if (*(v5 + 960))
      {
        ++*(v5 + 220);
      }
    }

    else
    {
      if (*(v5 + 216) && write_dot_dot_entry(a1, v4))
      {
        return -30;
      }

      while (v4 != *(v4 + 32))
      {
        if (*(*(v4 + 40) + 32))
        {
          v4 = *(*(v4 + 40) + 32);
          break;
        }

        if (*(v5 + 960))
        {
          --*(v5 + 220);
        }

        if (*(v5 + 216) && write_dot_dot_entry(a1, *(v4 + 32)))
        {
          return -30;
        }

        v4 = *(v4 + 32);
      }
    }
  }

  while (v4 != *(v4 + 32));
  return 0;
}

uint64_t attr_counter_set_collect(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 184);
  v3 = *(a1 + 952);
  if ((v3 & 0x300000) == 0)
  {
    goto LABEL_12;
  }

  if (*v4)
  {
    v5 = 0;
    for (i = *v4; i && *(i[2] + 240) != *(a2 + 240); i = i[1])
    {
      v5 = i;
    }

    if ((attr_counter_inc(v4, i, v5, a2) & 0x80000000) != 0)
    {
      return -1;
    }

LABEL_12:
    if ((v3 & 0x30) != 0)
    {
      if (v4[1])
      {
        v6 = 0;
        for (j = v4[1]; j && *(j[2] + 248) != *(a2 + 248); j = j[1])
        {
          v6 = j;
        }

        if ((attr_counter_inc(v4 + 1, j, v6, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[1] = attr_counter_new(a2, 0);
        if (!v4[1])
        {
          return -1;
        }
      }
    }

    if ((v3 & 0x200) != 0)
    {
      if (v4[2])
      {
        v7 = 0;
        for (k = v4[2]; k && *(k[2] + 230) != *(a2 + 230); k = k[1])
        {
          v7 = k;
        }

        if ((attr_counter_inc(v4 + 2, k, v7, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[2] = attr_counter_new(a2, 0);
        if (!v4[2])
        {
          return -1;
        }
      }
    }

    if ((v3 & 8) != 0)
    {
      if (v4[3])
      {
        v8 = 0;
        for (m = v4[3]; m && (*(m[2] + 272) != *(a2 + 272) || *(m[2] + 280) != *(a2 + 280)); m = m[1])
        {
          v8 = m;
        }

        if ((attr_counter_inc(v4 + 3, m, v8, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[3] = attr_counter_new(a2, 0);
        if (!v4[3])
        {
          return -1;
        }
      }
    }

    return 0;
  }

  *v4 = attr_counter_new(a2, 0);
  if (*v4)
  {
    goto LABEL_12;
  }

  return -1;
}

uint64_t write_mtree_entry(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 248);
  if (*(a2 + 40))
  {
    if (*(v7 + 216))
    {
      if (!*(v7 + 956))
      {
        archive_strappend_char((v7 + 88), 10);
      }

      if (*(a2 + 56))
      {
        archive_string_sprintf((v7 + 88), "# %s/%s\n", *(a2 + 56), *(a2 + 80));
      }

      else
      {
        archive_string_sprintf((v7 + 88), "# %s\n", *(a2 + 80));
      }
    }

    if (*(v7 + 964))
    {
      write_global(v7);
    }
  }

  *(v7 + 72) = 0;
  if (*(v7 + 960) || *(v7 + 216))
  {
    v4 = (v7 + 64);
  }

  else
  {
    v4 = (v7 + 88);
  }

  if (!*(v7 + 216) && *(a2 + 56))
  {
    mtree_quote(v4, *(a2 + 56));
    archive_strappend_char(v4, 47);
  }

  mtree_quote(v4, *(a2 + 80));
  global_set_keys = get_global_set_keys(v7, a2);
  if ((global_set_keys & 0x400) != 0 && *(a2 + 224) != 1 && *(a2 + 228) != 0x4000)
  {
    archive_string_sprintf(v4, " nlink=%u", *(a2 + 224));
  }

  if ((global_set_keys & 0x20) != 0 && *(a2 + 184))
  {
    archive_strcat(v4, " gname=");
    mtree_quote(v4, *(a2 + 176));
  }

  if ((global_set_keys & 0x200000) != 0 && *(a2 + 160))
  {
    archive_strcat(v4, " uname=");
    mtree_quote(v4, *(a2 + 152));
  }

  if ((global_set_keys & 8) != 0)
  {
    if (*(a2 + 208))
    {
      archive_strcat(v4, " flags=");
      mtree_quote(v4, *(a2 + 200));
    }

    else if (*(v7 + 128) && (*(v7 + 136) & 8) != 0)
    {
      archive_strcat(v4, " flags=none");
    }
  }

  if ((global_set_keys & 0x40000) != 0)
  {
    archive_string_sprintf(v4, " time=%jd.%jd", *(a2 + 256), *(a2 + 264));
  }

  if ((global_set_keys & 0x200) != 0)
  {
    archive_string_sprintf(v4, " mode=%o", *(a2 + 230));
  }

  if ((global_set_keys & 0x10) != 0)
  {
    archive_string_sprintf(v4, " gid=%jd", *(a2 + 248));
  }

  if ((global_set_keys & 0x100000) != 0)
  {
    archive_string_sprintf(v4, " uid=%jd", *(a2 + 240));
  }

  if ((global_set_keys & 0x4000000) != 0)
  {
    archive_string_sprintf(v4, " inode=%jd", *(a2 + 304));
  }

  if ((global_set_keys & 0x8000000) != 0)
  {
    archive_string_sprintf(v4, " resdevice=native,%ju,%ju", *(a2 + 296), *(a2 + 300));
  }

  v3 = *(a2 + 228);
  switch(v3)
  {
    case 4096:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=fifo");
      }

      break;
    case 8192:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=char");
      }

      if ((global_set_keys & 2) != 0)
      {
        archive_string_sprintf(v4, " device=native,%ju,%ju", *(a2 + 288), *(a2 + 292));
      }

      break;
    case 16384:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=dir");
      }

      break;
    case 24576:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=block");
      }

      if ((global_set_keys & 2) != 0)
      {
        archive_string_sprintf(v4, " device=native,%ju,%ju", *(a2 + 288), *(a2 + 292));
      }

      break;
    case 32768:
LABEL_77:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=file");
      }

      if ((global_set_keys & 0x8000) != 0)
      {
        archive_string_sprintf(v4, " size=%jd", *(a2 + 232));
      }

      break;
    case 40960:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=link");
      }

      if ((global_set_keys & 0x10000) != 0)
      {
        archive_strcat(v4, " link=");
        mtree_quote(v4, *(a2 + 128));
      }

      break;
    case 49152:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v4, " type=socket");
      }

      break;
    default:
      goto LABEL_77;
  }

  if (*(a2 + 48))
  {
    sum_write(v4, *(a2 + 48));
  }

  archive_strappend_char(v4, 10);
  if (*(v7 + 960) || *(v7 + 216))
  {
    mtree_indent(v7);
  }

  if (*(v7 + 96) > 0x8000uLL)
  {
    v5 = __archive_write_output(a1, *(v7 + 88), *(v7 + 96));
    *(v7 + 96) = 0;
  }

  else
  {
    return 0;
  }

  return v5;
}

void write_global(uint64_t a1)
{
  v11 = a1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v3 = *(a1 + 952) & 0x380238;
  v2 = *(a1 + 136);
  v1 = v3;
  v4 = (a1 + 184);
  if (*(a1 + 128))
  {
    v1 = *(a1 + 952) & 0x300238;
    if (*v4)
    {
      if ((v2 & 0x300000) != 0 && (*(*v4 + 24) < 2 || *(v11 + 144) == *(*(*v4 + 16) + 240)))
      {
        v1 = *(a1 + 952) & 0x238;
      }
    }

    else
    {
      v1 = *(a1 + 952) & 0x238;
    }

    if (*(a1 + 192))
    {
      if ((v2 & 0x30) != 0 && (*(*(a1 + 192) + 24) < 2 || *(v11 + 152) == *(*(*(a1 + 192) + 16) + 248)))
      {
        v1 &= 0xFFFFFFCF;
      }
    }

    else
    {
      v1 &= 0xFFFFFFCF;
    }

    if (*(a1 + 200))
    {
      if ((v2 & 0x200) != 0 && (*(*(a1 + 200) + 24) < 2 || *(v11 + 160) == *(*(*(a1 + 200) + 16) + 230)))
      {
        v1 &= ~0x200u;
      }
    }

    else
    {
      v1 &= ~0x200u;
    }

    if (*(a1 + 208))
    {
      if ((v2 & 8) != 0 && (*(*(a1 + 208) + 24) < 2 || *(*(*(a1 + 208) + 16) + 272) == *(v11 + 168) && *(*(*(a1 + 208) + 16) + 280) == *(v11 + 176)))
      {
        v1 &= ~8u;
      }
    }

    else
    {
      v1 &= ~8u;
    }
  }

  else
  {
    if (!*v4)
    {
      v3 = *(a1 + 952) & 0x80238;
    }

    if (!*(a1 + 192))
    {
      v3 &= 0xFFFFFFCF;
    }

    if (!*(a1 + 200))
    {
      v3 &= ~0x200u;
    }

    if (!*(a1 + 208))
    {
      v3 &= ~8u;
    }
  }

  if ((v3 & v1 & 0x80000) != 0)
  {
    if (*(v11 + 956))
    {
      archive_strcat(&v8, " type=dir");
      *(v11 + 132) = 0x4000;
    }

    else
    {
      archive_strcat(&v8, " type=file");
      *(v11 + 132) = 0x8000;
    }
  }

  if ((v3 & v1 & 0x200000) != 0)
  {
    if (*(*(*v4 + 16) + 160))
    {
      archive_strcat(&v8, " uname=");
      mtree_quote(&v8, *(*(*v4 + 16) + 152));
    }

    else
    {
      v3 &= ~0x200000u;
      if ((v2 & 0x200000) != 0)
      {
        archive_strcat(&v5, " uname");
      }
    }
  }

  if ((v3 & v1 & 0x100000) != 0)
  {
    *(v11 + 144) = *(*(*v4 + 16) + 240);
    archive_string_sprintf(&v8, " uid=%jd", *(v11 + 144));
  }

  if ((v3 & v1 & 0x20) != 0)
  {
    if (*(*(v4[1] + 16) + 184))
    {
      archive_strcat(&v8, " gname=");
      mtree_quote(&v8, *(*(v4[1] + 16) + 176));
    }

    else
    {
      v3 &= ~0x20u;
      if ((v2 & 0x20) != 0)
      {
        archive_strcat(&v5, " gname");
      }
    }
  }

  if ((v3 & v1 & 0x10) != 0)
  {
    *(v11 + 152) = *(*(v4[1] + 16) + 248);
    archive_string_sprintf(&v8, " gid=%jd", *(v11 + 152));
  }

  if ((v3 & v1 & 0x200) != 0)
  {
    *(v11 + 160) = *(*(v4[2] + 16) + 230);
    archive_string_sprintf(&v8, " mode=%o", *(v11 + 160));
  }

  if ((v3 & v1 & 8) != 0)
  {
    if (*(*(v4[3] + 16) + 208))
    {
      archive_strcat(&v8, " flags=");
      mtree_quote(&v8, *(*(v4[3] + 16) + 200));
      *(v11 + 168) = *(*(v4[3] + 16) + 272);
      *(v11 + 176) = *(*(v4[3] + 16) + 280);
    }

    else
    {
      v3 &= ~8u;
      if ((v2 & 8) != 0)
      {
        archive_strcat(&v5, " flags");
      }
    }
  }

  if (v6)
  {
    archive_string_sprintf((v11 + 88), "/unset%s\n", v5);
  }

  archive_string_free(&v5);
  if (v9)
  {
    archive_string_sprintf((v11 + 88), "/set%s\n", v8);
  }

  archive_string_free(&v8);
  *(v11 + 136) = v3;
  *(v11 + 128) = 1;
}

uint64_t mtree_entry_add_child_tail(uint64_t a1, uint64_t a2)
{
  *(*(a2 + 40) + 32) = 0;
  **(*(a1 + 40) + 24) = a2;
  *(*(a1 + 40) + 24) = *(a2 + 40) + 32;
  return 1;
}

uint64_t write_dot_dot_entry(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 248);
  if (*(a2 + 56))
  {
    if (*(v8 + 960))
    {
      v5 = 4 * *(v8 + 220);
      for (i = 0; i < v5; ++i)
      {
        archive_strappend_char((v8 + 88), 32);
      }
    }

    archive_string_sprintf((v8 + 88), "# %s/%s\n", *(a2 + 56), *(a2 + 80));
  }

  if (*(v8 + 960))
  {
    *(v8 + 72) = 0;
    if (*(v8 + 956))
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    archive_strncat((v8 + 64), "..\n\n", v2);
    mtree_indent(v8);
  }

  else
  {
    if (*(v8 + 956))
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    archive_strncat((v8 + 88), "..\n\n", v3);
  }

  if (*(v8 + 96) > 0x8000uLL)
  {
    v7 = __archive_write_output(a1, *(v8 + 88), *(v8 + 96));
    *(v8 + 96) = 0;
  }

  else
  {
    return 0;
  }

  return v7;
}

void *attr_counter_new(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  if (v3)
  {
    *v3 = a2;
    v3[1] = 0;
    *(v3 + 6) = 1;
    v3[2] = a1;
  }

  return v3;
}

uint64_t attr_counter_inc(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    if (a3)
    {
      v7 = attr_counter_new(a4, a3);
      if (!v7)
      {
        return -1;
      }

      *(a3 + 8) = v7;
    }

    return 0;
  }

  ++*(a2 + 6);
  if (*a1 != a2 && *(*a2 + 24) < *(a2 + 6))
  {
      ;
    }

    *(*a2 + 8) = a2[1];
    if (a2[1])
    {
      *a2[1] = *a2;
    }

    if (i)
    {
      *a2 = i;
      a2[1] = *(i + 8);
      *(i + 8) = a2;
      if (a2[1])
      {
        *a2[1] = a2;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = *a1;
      *a1 = a2;
      *a2[1] = a2;
    }

    return 0;
  }

  return 0;
}

void *mtree_quote(void *result, unsigned __int8 *a2)
{
  v6 = result;
  v5 = a2;
  v4 = a2;
  while (*v5)
  {
    if (!safe_char[*v5])
    {
      if (v4 != v5)
      {
        archive_strncat(v6, v4, v5 - v4);
      }

      v2 = *v5;
      v3[0] = 92;
      v3[1] = v2 / 64 + 48;
      v3[2] = v2 / 8 % 8 + 48;
      v3[3] = v2 % 8 + 48;
      result = archive_strncat(v6, v3, 4uLL);
      v4 = v5 + 1;
    }

    ++v5;
  }

  if (v4 != v5)
  {
    return archive_strncat(v6, v4, v5 - v4);
  }

  return result;
}

uint64_t get_global_set_keys(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 952);
  if (*(a1 + 136))
  {
    if ((*(a1 + 136) & 0x30) != 0 && *(a1 + 152) == *(a2 + 248))
    {
      v4 &= 0xFFFFFFCF;
    }

    if ((*(a1 + 136) & 0x300000) != 0 && *(a1 + 144) == *(a2 + 240))
    {
      v4 &= 0xFFCFFFFF;
    }

    if ((*(a1 + 136) & 8) != 0 && *(a1 + 168) == *(a2 + 272) && *(a1 + 176) == *(a2 + 280))
    {
      v4 &= ~8u;
    }

    if ((*(a1 + 136) & 0x200) != 0 && *(a1 + 160) == *(a2 + 230))
    {
      v4 &= ~0x200u;
    }

    v3 = *(a2 + 228);
    if (v3 != 4096 && v3 != 0x2000)
    {
      if (v3 == 0x4000)
      {
        if ((*(a1 + 136) & 0x80000) != 0 && *(a1 + 132) == 0x4000)
        {
          v4 &= ~0x80000u;
        }
      }

      else if (v3 != 24576 && (v3 == 0x8000 || v3 != 40960 && v3 != 49152) && (*(a1 + 136) & 0x80000) != 0 && *(a1 + 132) == 0x8000)
      {
        v4 &= ~0x80000u;
      }
    }

    return v4;
  }

  else
  {
    return *(a1 + 952);
  }
}

_DWORD *sum_write(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  if (*a2)
  {
    result = archive_string_sprintf(result, " cksum=%ju", a2[1]);
  }

  if ((*a2 & 0x100) != 0)
  {
    archive_strcat(v3, " md5digest=");
    result = strappend_bin(v3, (a2 + 2), 16);
  }

  if ((*a2 & 0x4000) != 0)
  {
    archive_strcat(v3, " sha1digest=");
    result = strappend_bin(v3, (a2 + 11), 20);
  }

  if ((*a2 & 0x800000) != 0)
  {
    archive_strcat(v3, " sha256digest=");
    result = strappend_bin(v3, (a2 + 16), 32);
  }

  if ((*a2 & 0x1000000) != 0)
  {
    archive_strcat(v3, " sha384digest=");
    result = strappend_bin(v3, (a2 + 24), 48);
  }

  if ((*a2 & 0x2000000) != 0)
  {
    archive_strcat(v3, " sha512digest=");
    return strappend_bin(v3, (a2 + 36), 64);
  }

  return result;
}

void *mtree_indent(uint64_t a1)
{
  if (*(a1 + 216))
  {
    if (*(a1 + 960))
    {
      v9 = 0;
      v8 = 4 * *(a1 + 220);
    }

    else
    {
      if (*(a1 + 220))
      {
        v1 = 4;
      }

      else
      {
        v1 = 0;
      }

      v9 = v1;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = 1;
  __s = *(a1 + 64);
  v5 = __s;
  v4 = 0;
  while (*__s == 32)
  {
    ++__s;
  }

  while (1)
  {
    __sa = strchr(__s, 32);
    if (!__sa)
    {
      break;
    }

    if (v10)
    {
      v10 = 0;
      for (i = 0; i < v9 + v8; ++i)
      {
        archive_strappend_char((a1 + 88), 32);
      }

      archive_strncat((a1 + 88), v5, __sa - v5);
      if (v9 + __sa - v5 <= 15)
      {
        for (j = __sa - v5 + v9; j < 16; ++j)
        {
          archive_strappend_char((a1 + 88), 32);
        }
      }

      else
      {
        archive_strncat((a1 + 88), " \\\n", 3uLL);
        for (k = 0; k < v8 + 16; ++k)
        {
          archive_strappend_char((a1 + 88), 32);
        }
      }

      __s = __sa + 1;
      v5 = __s;
      v4 = 0;
    }

    else if (v8 + __sa - v5 > 62)
    {
      if (!v4)
      {
        v4 = __sa;
      }

      archive_strncat((a1 + 88), v5, v4 - v5);
      archive_strncat((a1 + 88), " \\\n", 3uLL);
      for (m = 0; m < v8 + 16; ++m)
      {
        archive_strappend_char((a1 + 88), 32);
      }

      __s = v4 + 1;
      v5 = v4 + 1;
      v4 = 0;
    }

    else
    {
      v2 = __sa;
      __s = __sa + 1;
      v4 = v2;
    }
  }

  if (v10)
  {
    for (n = 0; n < v9 + v8; ++n)
    {
      archive_strappend_char((a1 + 88), 32);
    }

    archive_strcat((a1 + 88), v5);
    v5 += strlen(v5);
  }

  if (v4 && v8 + strlen(v5) > 0x3E)
  {
    archive_strncat((a1 + 88), v5, v4 - v5);
    archive_strncat((a1 + 88), " \\\n", 3uLL);
    for (ii = 0; ii < v8 + 16; ++ii)
    {
      archive_strappend_char((a1 + 88), 32);
    }

    v5 = v4 + 1;
  }

  result = archive_strcat((a1 + 88), v5);
  *(a1 + 72) = 0;
  return result;
}

void *strappend_bin(void *result, uint64_t a2, int a3)
{
  v6 = result;
  for (i = 0; i < a3; ++i)
  {
    archive_strappend_char(v6, strappend_bin_hex[*(a2 + i) >> 4]);
    result = archive_strappend_char(v6, strappend_bin_hex[*(a2 + i) & 0xF]);
  }

  return result;
}

uint64_t sum_update(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v8 = result;
  if (*(result + 224))
  {
    v4 = a3;
    for (i = a2; v4--; ++i)
    {
      *(result + 228) = crctab[*i ^ HIBYTE(*(result + 228))] ^ (*(result + 228) << 8);
    }

    *(result + 232) += a3;
  }

  if ((*(result + 224) & 0x100) != 0)
  {
    result = off_1F3DE4DE8(result + 240, a2, a3);
  }

  if ((*(v8 + 224) & 0x4000) != 0)
  {
    result = off_1F3DE4E18(v8 + 332, a2, a3);
  }

  if ((*(v8 + 224) & 0x800000) != 0)
  {
    result = off_1F3DE4E30((v8 + 428), a2, a3);
  }

  if ((*(v8 + 224) & 0x1000000) != 0)
  {
    result = off_1F3DE4E48((v8 + 536), a2, a3);
  }

  if ((*(v8 + 224) & 0x2000000) != 0)
  {
    return off_1F3DE4E60((v8 + 744), a2, a3);
  }

  return result;
}

uint64_t sum_final(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(result + 224))
  {
    for (i = *(result + 232); i; i >>= 8)
    {
      *(result + 228) = crctab[HIBYTE(*(result + 228)) ^ i] ^ (*(result + 228) << 8);
    }

    *(a2 + 4) = ~*(result + 228);
  }

  if ((*(result + 224) & 0x100) != 0)
  {
    result = off_1F3DE4DF0(result + 240, a2 + 8);
  }

  if ((*(v4 + 224) & 0x4000) != 0)
  {
    result = off_1F3DE4E20(v4 + 332, a2 + 44);
  }

  if ((*(v4 + 224) & 0x800000) != 0)
  {
    result = off_1F3DE4E38((v4 + 428), (a2 + 64));
  }

  if ((*(v4 + 224) & 0x1000000) != 0)
  {
    result = off_1F3DE4E50((v4 + 536), (a2 + 96));
  }

  if ((*(v4 + 224) & 0x2000000) != 0)
  {
    result = off_1F3DE4E68((v4 + 744), (a2 + 144));
  }

  *a2 = *(v4 + 224);
  return result;
}

uint64_t archive_read_support_filter_all(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_filter_all") == -30)
  {
    return -30;
  }

  else
  {
    archive_read_support_filter_bzip2(a1);
    archive_read_support_filter_compress(a1);
    archive_read_support_filter_gzip(a1);
    archive_read_support_filter_lzip(a1);
    archive_read_support_filter_lzma(a1);
    archive_read_support_filter_xz(a1);
    archive_read_support_filter_uu(a1);
    archive_read_support_filter_rpm(a1);
    archive_read_support_filter_lrzip(a1);
    archive_read_support_filter_lzop(a1);
    archive_read_support_filter_grzip(a1);
    archive_read_support_filter_lz4(a1);
    archive_read_support_filter_zstd(a1);
    archive_clear_error(a1);
    return 0;
  }
}

BOOL __archive_pathmatch(char *a1, char *a2, unsigned int a3)
{
  v7 = a1;
  __s = a2;
  v5 = a3;
  if (!a1 || !*a1)
  {
    v4 = 1;
    if (a2)
    {
      return *a2 == 0;
    }

    return v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (*a1 == 94)
  {
    v7 = a1 + 1;
    v5 = a3 & 0xFFFFFFFE;
  }

  if (*v7 == 47 && *a2 != 47)
  {
    return 0;
  }

  if (*v7 == 42 || *v7 == 47)
  {
    while (*v7 == 47)
    {
      ++v7;
    }

    while (*__s == 47)
    {
      ++__s;
    }

    return pm(v7, __s, v5);
  }

  if ((v5 & 1) == 0)
  {
    return pm(v7, __s, v5);
  }

  while (__s)
  {
    if (*__s == 47)
    {
      ++__s;
    }

    if (pm(v7, __s, v5))
    {
      return 1;
    }

    __s = strchr(__s, 47);
  }

  return 0;
}

BOOL pm(char *a1, char *a2, unsigned int a3)
{
  v8 = a2;
  if (__PAIR64__(a2[1], *a2) == 0x2F0000002ELL)
  {
    v8 = pm_slashskip(a2 + 1);
  }

  if (*a1 == 46 && a1[1] == 47)
  {
    a1 = pm_slashskip(a1 + 1);
  }

  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    switch(v5)
    {
      case '$':
        if (!a1[1] && (a3 & 2) != 0)
        {
          return *pm_slashskip(v8) == 0;
        }

        break;
      case '*':
        while (*a1 == 42)
        {
          ++a1;
        }

        if (*a1)
        {
          while (*v8)
          {
            if (__archive_pathmatch(a1, v8, a3))
            {
              return 1;
            }

            ++v8;
          }

          return 0;
        }

        else
        {
          return 1;
        }

      case '/':
        if (*v8 != 47 && *v8)
        {
          return 0;
        }

        v11 = pm_slashskip(a1);
        v9 = pm_slashskip(v8);
        if (!*v11 && (a3 & 2) != 0)
        {
          return 1;
        }

        a1 = v11 - 1;
        v8 = v9 - 1;
        goto LABEL_65;
      case '?':
        if (!*v8)
        {
          return 0;
        }

        goto LABEL_65;
      case '[':
        for (i = a1 + 1; ; ++i)
        {
          v4 = 0;
          if (*i)
          {
            v4 = *i != 93;
          }

          if (!v4)
          {
            break;
          }

          if (*i == 92 && i[1])
          {
            ++i;
          }
        }

        if (*i == 93)
        {
          if (!pm_list(a1 + 1, i, *v8))
          {
            return 0;
          }

          a1 = i;
        }

        else if (*a1 != *v8)
        {
          return 0;
        }

        goto LABEL_65;
      case '\\':
        if (a1[1])
        {
          if (*++a1 != *v8)
          {
            return 0;
          }
        }

        else if (*v8 != 92)
        {
          return 0;
        }

        goto LABEL_65;
    }

    if (*a1 != *v8)
    {
      return 0;
    }

LABEL_65:
    ++a1;
    ++v8;
  }

  if (*v8 == 47)
  {
    if ((a3 & 2) != 0)
    {
      return 1;
    }

    v8 = pm_slashskip(v8);
  }

  return *v8 == 0;
}

BOOL __archive_pathmatch_w(int *a1, __int32 *a2, unsigned int a3)
{
  v7 = a1;
  __s = a2;
  v5 = a3;
  if (!a1 || !*a1)
  {
    v4 = 1;
    if (a2)
    {
      return *a2 == 0;
    }

    return v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (*a1 == 94)
  {
    v7 = a1 + 1;
    v5 = a3 & 0xFFFFFFFE;
  }

  if (*v7 == 47 && *a2 != 47)
  {
    return 0;
  }

  if (*v7 == 42 || *v7 == 47)
  {
    while (*v7 == 47)
    {
      ++v7;
    }

    while (*__s == 47)
    {
      ++__s;
    }

    return pm_w(v7, __s, v5);
  }

  if ((v5 & 1) == 0)
  {
    return pm_w(v7, __s, v5);
  }

  while (__s)
  {
    if (*__s == 47)
    {
      ++__s;
    }

    if (pm_w(v7, __s, v5))
    {
      return 1;
    }

    __s = wcschr(__s, 47);
  }

  return 0;
}

BOOL pm_w(int *a1, __int32 *a2, unsigned int a3)
{
  v8 = a2;
  if (*a2 == 0x2F0000002ELL)
  {
    v8 = pm_slashskip_w(a2 + 1);
  }

  if (*a1 == 46 && a1[1] == 47)
  {
    a1 = pm_slashskip_w(a1 + 1);
  }

  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    switch(v5)
    {
      case '$':
        if (!a1[1] && (a3 & 2) != 0)
        {
          return *pm_slashskip_w(v8) == 0;
        }

        break;
      case '*':
        while (*a1 == 42)
        {
          ++a1;
        }

        if (*a1)
        {
          while (*v8)
          {
            if (__archive_pathmatch_w(a1, v8, a3))
            {
              return 1;
            }

            ++v8;
          }

          return 0;
        }

        else
        {
          return 1;
        }

      case '/':
        if (*v8 != 47 && *v8)
        {
          return 0;
        }

        v11 = pm_slashskip_w(a1);
        v9 = pm_slashskip_w(v8);
        if (!*v11 && (a3 & 2) != 0)
        {
          return 1;
        }

        a1 = v11 - 1;
        v8 = v9 - 1;
        goto LABEL_65;
      case '?':
        if (!*v8)
        {
          return 0;
        }

        goto LABEL_65;
      case '[':
        for (i = a1 + 1; ; ++i)
        {
          v4 = 0;
          if (*i)
          {
            v4 = *i != 93;
          }

          if (!v4)
          {
            break;
          }

          if (*i == 92 && i[1])
          {
            ++i;
          }
        }

        if (*i == 93)
        {
          if (!pm_list_w(a1 + 1, i, *v8))
          {
            return 0;
          }

          a1 = i;
        }

        else if (*a1 != *v8)
        {
          return 0;
        }

        goto LABEL_65;
      case '\\':
        if (a1[1])
        {
          if (*++a1 != *v8)
          {
            return 0;
          }
        }

        else if (*v8 != 92)
        {
          return 0;
        }

        goto LABEL_65;
    }

    if (*a1 != *v8)
    {
      return 0;
    }

LABEL_65:
    ++a1;
    ++v8;
  }

  if (*v8 == 47)
  {
    if ((a3 & 2) != 0)
    {
      return 1;
    }

    v8 = pm_slashskip_w(v8);
  }

  return *v8 == 0;
}

_BYTE *pm_slashskip(_BYTE *a1)
{
  while (1)
  {
    v3 = 1;
    if (*a1 != 47)
    {
      if (*a1 != 46 || (v3 = 1, a1[1] != 47))
      {
        v2 = 0;
        if (*a1 == 46)
        {
          v2 = a1[1] == 0;
        }

        v3 = v2;
      }
    }

    if ((v3 & 1) == 0)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

uint64_t pm_list(char *a1, unint64_t a2, char a3)
{
  v10 = a1;
  v9 = 0;
  v7 = 1;
  v6 = 0;
  if ((*a1 == 33 || *a1 == 94) && a1 < a2)
  {
    v7 = 0;
    v6 = 1;
    v10 = a1 + 1;
  }

  while (v10 < a2)
  {
    v8 = 0;
    v4 = *v10;
    if (v4 == 45)
    {
      if (v9 && v10 != (a2 - 1))
      {
        v5 = *++v10;
        if (*v10 == 92)
        {
          v5 = *++v10;
        }

        if (v9 <= a3 && a3 <= v5)
        {
          return v7;
        }
      }

      else if (*v10 == a3)
      {
        return v7;
      }
    }

    else
    {
      if (v4 == 92)
      {
        ++v10;
      }

      if (*v10 == a3)
      {
        return v7;
      }

      v8 = *v10;
    }

    v9 = v8;
    ++v10;
  }

  return v6;
}

_DWORD *pm_slashskip_w(_DWORD *a1)
{
  while (1)
  {
    v3 = 1;
    if (*a1 != 47)
    {
      if (*a1 != 46 || (v3 = 1, a1[1] != 47))
      {
        v2 = 0;
        if (*a1 == 46)
        {
          v2 = a1[1] == 0;
        }

        v3 = v2;
      }
    }

    if ((v3 & 1) == 0)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

uint64_t pm_list_w(int *a1, unint64_t a2, int a3)
{
  v9 = a1;
  v8 = 0;
  v6 = 1;
  v5 = 0;
  if ((*a1 == 33 || *a1 == 94) && a1 < a2)
  {
    v6 = 0;
    v5 = 1;
    v9 = a1 + 1;
  }

  while (v9 < a2)
  {
    v7 = 0;
    if (*v9 == 45)
    {
      if (v8 && v9 != (a2 - 4))
      {
        v4 = *++v9;
        if (*v9 == 92)
        {
          v4 = *++v9;
        }

        if (v8 <= a3 && a3 <= v4)
        {
          return v6;
        }
      }

      else if (*v9 == a3)
      {
        return v6;
      }
    }

    else
    {
      if (*v9 == 92)
      {
        ++v9;
      }

      if (*v9 == a3)
      {
        return v6;
      }

      v7 = *v9;
    }

    v8 = v7;
    ++v9;
  }

  return v5;
}

uint64_t archive_read_set_format(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  support_format_by_code = archive_read_support_format_by_code(a1, a2);
  if ((support_format_by_code & 0x80000000) != 0)
  {
    return support_format_by_code;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (*(a1 + 2072))
    {
      v7 = -20;
    }

    v4 = a2 & 0xFF0000;
    if ((a2 & 0xFF0000) == 0x10000 || v4 == 196608 || v4 == 0x40000 || v4 == 327680 || v4 == 393216 || v4 == 458752 || v4 == 0x80000 || v4 == 589824 || v4 == 655360 || v4 == 720896 || v4 == 786432 || v4 == 851968 || v4 == 917504 || v4 == 983040 || v4 == 0x100000)
    {
      __strcpy_chk();
      *(a1 + 2072) = a1 + 664;
      for (i = 0; i < 16 && *(*(a1 + 2072) + 8) && strcmp(*(*(a1 + 2072) + 8), __s2); ++i)
      {
        *(a1 + 2072) += 88;
      }

      if (!*(*(a1 + 2072) + 8) || strcmp(*(*(a1 + 2072) + 8), __s2))
      {
        archive_set_error(a1, 22, "Internal error: Unable to set format");
        v9 = -30;
      }

      if (!archive_allow_entitlement_format(*(*(a1 + 2072) + 8)))
      {
        archive_set_error(a1, -1, "Format not allow-listed in entitlements");
        v9 = -30;
      }

      if (v9 >= v7)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      archive_set_error(a1, 22, "Invalid format code specified");
      return -30;
    }
  }
}

uint64_t archive_read_disk_entry_setup_acls(uint64_t a1, uint64_t *a2, int *a3)
{
  path_p = 0;
  if ((*a3 & 0x80000000) == 0 || (path_p = archive_read_disk_entry_setup_path(a1, a2, a3)) != 0)
  {
    archive_entry_acl_clear(a2);
    if (*a3 < 0)
    {
      if (*(a1 + 153))
      {
        obj_p = acl_get_file(path_p, ACL_TYPE_EXTENDED);
      }

      else
      {
        obj_p = acl_get_link_np(path_p, ACL_TYPE_EXTENDED);
      }
    }

    else
    {
      obj_p = acl_get_fd_np(*a3, ACL_TYPE_EXTENDED);
    }

    if (obj_p)
    {
      v5 = translate_acl(a1, a2, obj_p);
      acl_free(obj_p);
      if (v5)
      {
        v3 = __error();
        archive_set_error(a1, *v3, "Couldn't translate NFSv4 ACLs");
      }

      if ((archive_entry_acl_types(a2) & 0x3C00) != 0)
      {
        add_trivial_nfs4_acl(a2);
      }

      return v5;
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

uint64_t translate_acl(_DWORD *a1, uint64_t a2, _acl *a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  tag_type_p = ACL_UNDEFINED_TAG;
  flagset_p = 0;
  entry_p = 0;
  permset_p = 0;
  i = 0;
  v22 = 0;
  flag_np = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  entry = acl_get_entry(a3, 0, &entry_p);
  if (entry == -1)
  {
    v15 = v30;
    v3 = __error();
    archive_set_error(v15, *v3, "Failed to get first ACL entry");
    return -20;
  }

  while (1)
  {
LABEL_3:
    if (entry)
    {
      return 0;
    }

    v19 = -1;
    v16 = 0;
    v17 = 0;
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v14 = v30;
      v4 = __error();
      archive_set_error(v14, *v4, "Failed to get ACL tag type");
      return -20;
    }

    if (tag_type_p == ACL_EXTENDED_ALLOW)
    {
      v22 = 1024;
      flag_np = translate_guid(v30, entry_p, &v19, &v18, &v16);
    }

    else
    {
      if (tag_type_p != ACL_EXTENDED_DENY)
      {
        goto LABEL_8;
      }

      v22 = 2048;
      flag_np = translate_guid(v30, entry_p, &v19, &v18, &v16);
    }

    if (!flag_np)
    {
      break;
    }

LABEL_8:
    entry = acl_get_entry(v28, -1, &entry_p);
  }

  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v13 = v30;
    v5 = __error();
    archive_set_error(v13, *v5, "Failed to get flagset from a NFSv4 ACL entry");
    return -20;
  }

  else
  {
    for (i = 0; i < 5; ++i)
    {
      flag_np = acl_get_flag_np(flagset_p, acl_nfs4_flag_map[2 * i + 1]);
      if (flag_np == -1)
      {
        v12 = v30;
        v6 = __error();
        archive_set_error(v12, *v6, "Failed to check flag in a NFSv4 ACL flagset");
        return -20;
      }

      if (flag_np)
      {
        v17 |= acl_nfs4_flag_map[2 * i];
      }
    }

    if (acl_get_permset(entry_p, &permset_p))
    {
      v11 = v30;
      v7 = __error();
      archive_set_error(v11, *v7, "Failed to get ACL permission set");
      return -20;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        if (i >= 17)
        {
          archive_entry_acl_add_entry(v29, v22, v17, v18, v19, v16);
          entry = acl_get_entry(v28, -1, &entry_p);
          goto LABEL_3;
        }

        flag_np = acl_get_perm_np(permset_p, acl_nfs4_perm_map[2 * i + 1]);
        if (flag_np == -1)
        {
          break;
        }

        if (flag_np)
        {
          v17 |= acl_nfs4_perm_map[2 * i];
        }
      }

      v10 = v30;
      v8 = __error();
      archive_set_error(v10, *v8, "Failed to check permission in an ACL permission set");
      return -20;
    }
  }
}

uint64_t add_trivial_nfs4_acl(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1BF343180, sizeof(__dst));
  result = archive_entry_mode(a1);
  if ((result & 4) != 0)
  {
    __dst[17] |= 8u;
  }

  if ((result & 2) != 0)
  {
    __dst[17] |= 0x30u;
  }

  if (result)
  {
    __dst[17] |= 1u;
  }

  if ((result & 0x20) != 0)
  {
    __dst[14] |= 8u;
  }

  else if ((result & 4) != 0)
  {
    __dst[8] |= 8u;
  }

  if ((result & 0x10) != 0)
  {
    __dst[14] |= 0x30u;
  }

  else if ((result & 2) != 0)
  {
    __dst[8] |= 0x30u;
  }

  if ((result & 8) != 0)
  {
    __dst[14] |= 1u;
  }

  else if (result)
  {
    __dst[8] |= 1u;
  }

  if ((result & 0x100) != 0)
  {
    __dst[11] |= 8u;
    if ((result & 0x20) == 0 && (result & 4) != 0)
    {
      __dst[2] |= 8u;
    }
  }

  else if ((result & 0x20) != 0 || (result & 4) != 0)
  {
    __dst[5] |= 8u;
  }

  if ((result & 0x80) != 0)
  {
    __dst[11] |= 0x30u;
    if ((result & 0x10) == 0 && (result & 2) != 0)
    {
      __dst[2] |= 0x30u;
    }
  }

  else if ((result & 0x10) != 0 || (result & 2) != 0)
  {
    __dst[5] |= 0x30u;
  }

  if ((result & 0x40) != 0)
  {
    __dst[11] |= 1u;
    if (result & 8) == 0 && (result)
    {
      __dst[2] |= 1u;
    }
  }

  else if (result & 8) != 0 || (result)
  {
    __dst[5] |= 1u;
  }

  for (i = 0; i < 6; ++i)
  {
    if (__dst[3 * i + 2])
    {
      result = archive_entry_acl_add_entry(a1, __dst[3 * i], __dst[3 * i + 2], __dst[3 * i + 1], -1, 0);
    }
  }

  return result;
}

uint64_t archive_write_disk_set_acls(_DWORD *a1, int a2, const char *a3, unsigned __int16 *a4)
{
  v5 = 0;
  if ((archive_acl_types(a4) & 0x3C00) != 0)
  {
    return set_acl(a1, a2, a3, a4, 15360, "nfs4");
  }

  return v5;
}

uint64_t set_acl(_DWORD *a1, int a2, const char *a3, unsigned __int16 *a4, int a5, const char *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  v42 = a5;
  v41 = a6;
  acl_p = 0;
  entry_p = 0;
  permset_p = 0;
  flagset_p = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  memset(uu, 0, sizeof(uu));
  uid = 0;
  gid = 0;
  *&count[8] = 0;
  v36 = 0;
  *count = archive_acl_reset(a4, a5);
  if (!*count)
  {
    return 0;
  }

  if (v42 != 15360)
  {
    *__error() = 2;
    v6 = __error();
    archive_set_error(v46, *v6, "Unsupported ACL type");
    return -25;
  }

  acl_p = acl_init(*count);
  if (!acl_p)
  {
    v7 = __error();
    archive_set_error(v46, *v7, "Failed to initialize ACL working storage");
    return -25;
  }

  while (!archive_acl_next(v46, v43, v42, &v35, &v34, &v33, &v32, &count[4]))
  {
    if (v33 != 10002 && v33 != 10004 && v33 != 10107)
    {
      if (acl_create_entry(&acl_p, &entry_p))
      {
        v26 = v46;
        v8 = __error();
        archive_set_error(v26, *v8, "Failed to create a new ACL entry");
        v36 = -25;
        goto LABEL_58;
      }

      if (v35 == 1024)
      {
        acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW);
LABEL_19:
        if (v33 == 10001)
        {
          uid = archive_write_disk_uid(v46, *&count[4], v32);
          if (!mbr_uid_to_uuid(uid, uu) && !acl_set_qualifier(entry_p, uu))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v33 != 10003)
          {
            archive_set_error(v46, -1, "Unsupported ACL tag");
            v36 = -25;
            goto LABEL_58;
          }

          gid = archive_write_disk_gid(v46, *&count[4], v32);
          if (!mbr_gid_to_uuid(gid, uu) && !acl_set_qualifier(entry_p, uu))
          {
LABEL_27:
            if (acl_get_permset(entry_p, &permset_p))
            {
              v25 = v46;
              v9 = __error();
              archive_set_error(v25, *v9, "Failed to get ACL permission set");
              v36 = -25;
              goto LABEL_58;
            }

            if (acl_clear_perms(permset_p))
            {
              v24 = v46;
              v10 = __error();
              archive_set_error(v24, *v10, "Failed to clear ACL permissions");
              v36 = -25;
              goto LABEL_58;
            }

            for (i = 0; i < 17; ++i)
            {
              if ((v34 & acl_nfs4_perm_map[2 * i]) != 0 && acl_add_perm(permset_p, acl_nfs4_perm_map[2 * i + 1]))
              {
                v23 = v46;
                v11 = __error();
                archive_set_error(v23, *v11, "Failed to add ACL permission");
                v36 = -25;
                goto LABEL_58;
              }
            }

            if (acl_get_flagset_np(entry_p, &flagset_p))
            {
              v22 = v46;
              v12 = __error();
              archive_set_error(v22, *v12, "Failed to get flagset from an NFSv4 ACL entry");
              v36 = -25;
              goto LABEL_58;
            }

            if (acl_clear_flags_np(flagset_p))
            {
              v21 = v46;
              v13 = __error();
              archive_set_error(v21, *v13, "Failed to clear flags from an NFSv4 ACL flagset");
              v36 = -25;
              goto LABEL_58;
            }

            for (j = 0; j < 5; ++j)
            {
              if ((v34 & acl_nfs4_flag_map[2 * j]) != 0 && acl_add_flag_np(flagset_p, acl_nfs4_flag_map[2 * j + 1]))
              {
                v20 = v46;
                v14 = __error();
                archive_set_error(v20, *v14, "Failed to add flag to NFSv4 ACL flagset");
                v36 = -25;
                goto LABEL_58;
              }
            }
          }
        }
      }

      else if (v35 == 2048)
      {
        acl_set_tag_type(entry_p, ACL_EXTENDED_DENY);
        goto LABEL_19;
      }
    }
  }

  if (v45 < 0)
  {
    if (acl_set_link_np(v44, ACL_TYPE_EXTENDED, acl_p))
    {
      if (*__error() == 102)
      {
        v36 = 0;
      }

      else
      {
        v18 = v46;
        v16 = __error();
        archive_set_error(v18, *v16, "Failed to set acl: %s", v41);
        v36 = -20;
      }
    }
  }

  else if (acl_set_fd_np(v45, acl_p, ACL_TYPE_EXTENDED))
  {
    if (*__error() == 102)
    {
      v36 = 0;
    }

    else
    {
      v19 = v46;
      v15 = __error();
      archive_set_error(v19, *v15, "Failed to set acl on fd: %s", v41);
      v36 = -20;
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_58:
  acl_free(acl_p);
  return v36;
}

uint64_t translate_guid(uint64_t a1, _acl_entry *a2, id_t *a3, _DWORD *a4, uint64_t *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  uid_or_gid = 0;
  v9 = 0;
  id_type = 0;
  uu = acl_get_qualifier(a2);
  if (uu)
  {
    v9 = mbr_uuid_to_id(uu, &uid_or_gid, &id_type);
    if (v9)
    {
      acl_free(uu);
      return 1;
    }

    else
    {
      if (id_type)
      {
        if (id_type == 1)
        {
          *v13 = 10003;
          *v14 = uid_or_gid;
          disk_gname = archive_read_disk_gname(v16, *v14);
          *v12 = disk_gname;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        *v13 = 10001;
        *v14 = uid_or_gid;
        disk_uname = archive_read_disk_uname(v16, *v14);
        *v12 = disk_uname;
      }

      acl_free(uu);
      return v9;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t archive_write_set_format_pax_restricted(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_pax_restricted") == -30)
  {
    return -30;
  }

  else
  {
    v1 = archive_write_set_format_pax(a1);
    *(a1 + 16) = 196611;
    *(a1 + 24) = "restricted POSIX pax interchange";
    return v1;
  }
}

uint64_t archive_write_set_format_pax(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_pax") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x103004090A86EF5uLL);
    if (v2)
    {
      v2[31] = 3;
      *(a1 + 248) = v2;
      *(a1 + 256) = "pax";
      *(a1 + 272) = archive_write_pax_options;
      *(a1 + 288) = archive_write_pax_header;
      *(a1 + 296) = archive_write_pax_data;
      *(a1 + 304) = archive_write_pax_close;
      *(a1 + 312) = archive_write_pax_free;
      *(a1 + 280) = archive_write_pax_finish_entry;
      *(a1 + 16) = 196610;
      *(a1 + 24) = "POSIX pax interchange";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate pax data");
      return -30;
    }
  }
}

uint64_t archive_write_pax_options(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 248);
  v4 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "BINARY") || !strcmp(a3, "binary"))
      {
        *(v5 + 120) = 1;
        return 0;
      }

      else if (!strcmp(a3, "UTF-8"))
      {
        *(v5 + 112) = archive_string_conversion_to_charset(a1, "UTF-8", 0);
        if (*(v5 + 112))
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
        archive_set_error(a1, -1, "pax: invalid charset name");
      }
    }

    else
    {
      archive_set_error(a1, -1, "pax: hdrcharset option needs a character-set name");
    }

    return v4;
  }

  else if (!strcmp(a2, "xattrheader"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "ALL") || !strcmp(a3, "all"))
      {
        *(v5 + 124) |= 3u;
        return 0;
      }

      else if (!strcmp(a3, "SCHILY") || !strcmp(a3, "schily"))
      {
        *(v5 + 124) |= 1u;
        *(v5 + 124) &= ~2u;
        return 0;
      }

      else if (!strcmp(a3, "LIBARCHIVE") || !strcmp(a3, "libarchive"))
      {
        *(v5 + 124) |= 2u;
        *(v5 + 124) &= ~1u;
        return 0;
      }

      else
      {
        archive_set_error(a1, -1, "pax: invalid xattr header name");
      }
    }

    else
    {
      archive_set_error(a1, -1, "pax: xattrheader requires a value");
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_pax_header(uint64_t a1, uint64_t *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v112 = a1;
  v111 = a2;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  entry_hardlink = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v105 = 0;
  v107 = 0;
  v100 = *(a1 + 248);
  ustar_max_mtime = get_ustar_max_mtime();
  if (!archive_entry_pathname(v111))
  {
    archive_set_error(v112, -1, "Can't record entry in tar file without pathname");
    return -25;
  }

  if (*(v100 + 120))
  {
    v92 = 0;
  }

  else
  {
    if (!*(v100 + 112))
    {
      *(v100 + 112) = archive_string_conversion_to_charset(v112, "UTF-8", 1);
      if (!*(v100 + 112))
      {
        return -25;
      }
    }

    v92 = *(v100 + 112);
  }

  entry_hardlink = get_entry_hardlink(v112, v111, &v99, &v91, v92);
  if (entry_hardlink == -30)
  {
    return -30;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_hardlink(v112, v111, &v99, &v91, 0);
    if (entry_hardlink == -30)
    {
      return -30;
    }

    v62 = v112;
    v61 = v99;
    v2 = archive_string_conversion_charset_name(v92);
    archive_set_error(v62, 79, "Can't translate linkname '%s' to %s", v61, v2);
    v105 = -20;
    v92 = 0;
  }

  if (!v99)
  {
    v60 = archive_entry_filetype(v111);
    if (v60 != 4096 && v60 != 0x2000)
    {
      if (v60 == 0x4000)
      {
        v109 = archive_entry_pathname(v111);
        if (v109 && *v109 && v109[strlen(v109) - 1] != 47)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v90 = strlen(v109);
          if (!archive_string_ensure(&v80, v90 + 2))
          {
            archive_set_error(v112, 12, "Can't allocate pax data");
            archive_string_free(&v80);
            return -30;
          }

          v81 = 0;
          archive_strncat(&v80, v109, v90);
          archive_strappend_char(&v80, 47);
          archive_entry_copy_pathname(v111, v80);
          archive_string_free(&v80);
        }
      }

      else if (v60 != 24576 && v60 != 0x8000 && v60 != 40960)
      {
        __archive_write_entry_filetype_unsupported(v112, v111, "pax");
        return -25;
      }
    }
  }

  v94 = archive_entry_mac_metadata(v111, &v93);
  if (v94)
  {
    i = 0;
    v75 = archive_entry_new2(v112);
    __s = archive_entry_pathname(v111);
    v76 = strlen(__s);
    v78 = malloc_type_malloc(v76 + 3, 0x3275888FuLL);
    if (!v78 || !v75)
    {
      archive_entry_free(v75);
      free(v78);
      return -25;
    }

    __strcpy_chk();
    for (i = strrchr(v78, 47); ; i = strrchr(v78, 47))
    {
      v59 = 0;
      if (i)
      {
        v59 = i[1] == 0;
      }

      if (!v59)
      {
        break;
      }

      *i = 0;
    }

    if (i)
    {
      strlen(++i);
    }

    __memmove_chk();
    __memmove_chk();
    archive_entry_copy_pathname(v75, v78);
    free(v78);
    archive_entry_set_size(v75, v93);
    archive_entry_set_filetype(v75, 0x8000);
    v3 = archive_entry_perm(v111);
    archive_entry_set_perm(v75, v3);
    v58 = archive_entry_mtime(v111);
    v4 = archive_entry_mtime_nsec(v111);
    archive_entry_set_mtime(v75, v58, v4);
    v5 = archive_entry_gid(v111);
    archive_entry_set_gid(v75, v5);
    v6 = archive_entry_gname(v111);
    archive_entry_set_gname(v75, v6);
    v7 = archive_entry_uid(v111);
    archive_entry_set_uid(v75, v7);
    v8 = archive_entry_uname(v111);
    archive_entry_set_uname(v75, v8);
    entry_hardlink = archive_write_pax_header(v112, v75);
    archive_entry_free(v75);
    if (entry_hardlink < -20)
    {
      return entry_hardlink;
    }

    if (entry_hardlink < v105)
    {
      v105 = entry_hardlink;
    }

    entry_hardlink = archive_write_pax_data(v112, v94, v93);
    if (entry_hardlink < -20)
    {
      return entry_hardlink;
    }

    if (entry_hardlink < v105)
    {
      v105 = entry_hardlink;
    }

    entry_hardlink = archive_write_pax_finish_entry(v112);
    if (entry_hardlink < -20)
    {
      return entry_hardlink;
    }

    if (entry_hardlink < v105)
    {
      v105 = entry_hardlink;
    }
  }

  v110 = archive_entry_clone(v111);
  if (!v110)
  {
    archive_set_error(v112, 12, "Can't allocate pax data");
    return -30;
  }

  *(v100 + 48) = 0;
  *(v100 + 72) = 0;
  v102 = 0;
  sparse_list_clear(v100);
  if (v99 || archive_entry_filetype(v110) != 0x8000)
  {
    v103 = 0;
  }

  else
  {
    v103 = archive_entry_sparse_reset(v110);
  }

  if (v103)
  {
    v74 = 0;
    v73 = 0;
    v72 = 0;
    while (!archive_entry_sparse_next(v110, &v74, &v73))
    {
      v72 = v74 + v73;
    }

    if (v72 < archive_entry_size(v110))
    {
      v57 = v110;
      v9 = archive_entry_size(v110);
      archive_entry_sparse_add_entry(v57, v9, 0);
    }

    v103 = archive_entry_sparse_reset(v110);
  }

  entry_hardlink = get_entry_pathname(v112, v110, &v98, &v90, v92);
  if (entry_hardlink == -30)
  {
LABEL_97:
    archive_entry_free(v110);
    return entry_hardlink;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_pathname(v112, v110, &v98, &v90, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v56 = v112;
    v55 = v98;
    v10 = archive_string_conversion_charset_name(v92);
    archive_set_error(v56, 79, "Can't translate pathname '%s' to %s", v55, v10);
    v105 = -20;
    v92 = 0;
  }

  entry_hardlink = get_entry_uname(v112, v110, &v96, &v88, v92);
  if (entry_hardlink == -30)
  {
    goto LABEL_97;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_uname(v112, v110, &v96, &v88, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v54 = v112;
    v53 = v96;
    v11 = archive_string_conversion_charset_name(v92);
    archive_set_error(v54, 79, "Can't translate uname '%s' to %s", v53, v11);
    v105 = -20;
    v92 = 0;
  }

  entry_hardlink = get_entry_gname(v112, v110, &v95, &v87, v92);
  if (entry_hardlink == -30)
  {
    goto LABEL_97;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_gname(v112, v110, &v95, &v87, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v52 = v112;
    v51 = v95;
    v12 = archive_string_conversion_charset_name(v92);
    archive_set_error(v52, 79, "Can't translate gname '%s' to %s", v51, v12);
    v105 = -20;
    v92 = 0;
  }

  v97 = v99;
  v89 = v91;
  if (!v99)
  {
    entry_hardlink = get_entry_symlink(v112, v110, &v97, &v89, v92);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    if (entry_hardlink)
    {
      entry_hardlink = get_entry_symlink(v112, v110, &v97, &v89, 0);
      if (entry_hardlink == -30)
      {
        goto LABEL_97;
      }

      v50 = v112;
      v49 = v97;
      v13 = archive_string_conversion_charset_name(v92);
      archive_set_error(v50, 79, "Can't translate linkname '%s' to %s", v49, v13);
      v105 = -20;
      v92 = 0;
    }
  }

  if (!v92 && !*(v100 + 120))
  {
    if (v99)
    {
      entry_hardlink = get_entry_hardlink(v112, v110, &v99, &v91, 0);
      if (entry_hardlink == -30)
      {
        goto LABEL_97;
      }

      v97 = v99;
      v89 = v91;
    }

    entry_hardlink = get_entry_pathname(v112, v110, &v98, &v90, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    entry_hardlink = get_entry_uname(v112, v110, &v96, &v88, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    entry_hardlink = get_entry_gname(v112, v110, &v95, &v87, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }
  }

  if (!v92)
  {
    add_pax_attr((v100 + 40), "hdrcharset", "BINARY");
  }

  if (has_non_ASCII(v98))
  {
    add_pax_attr((v100 + 40), "path", v98);
    v48 = v110;
    v14 = build_ustar_entry_name(v116, v98, v90, 0);
    archive_entry_set_pathname(v48, v14);
    v107 = 1;
  }

  else if (v90 > 0x64)
  {
    v108 = strchr(&v98[v90 - 101], 47);
    if (v108 == v98)
    {
      v108 = strchr(v108 + 1, 47);
    }

    if (!v108 || !v108[1] || v108 - v98 > 155)
    {
      add_pax_attr((v100 + 40), "path", v98);
      v47 = v110;
      v15 = build_ustar_entry_name(v116, v98, v90, 0);
      archive_entry_set_pathname(v47, v15);
      v107 = 1;
    }
  }

  if (v97 && (v89 > 0x64 || has_non_ASCII(v97)))
  {
    add_pax_attr((v100 + 40), "linkpath", v97);
    if (v89 > 0x64)
    {
      if (v99)
      {
        archive_entry_set_hardlink(v110, "././@LongHardLink");
      }

      else
      {
        archive_entry_set_symlink(v110, "././@LongSymLink");
      }
    }

    v107 = 1;
  }

  v84 = 0;
  v86 = 0;
  v85 = 0;
  v46 = archive_entry_pathname(v110);
  if (archive_entry_pathname(v110))
  {
    v16 = archive_entry_pathname(v110);
    v45 = strlen(v16);
    archive_strncat(&v84, v46, v45);
  }

  else
  {
    archive_strncat(&v84, v46, 0);
  }

  if (archive_entry_size(v110) >= 0x200000000)
  {
    v107 = 1;
  }

  if (archive_entry_gid(v110) >= 0x40000)
  {
    v44 = (v100 + 40);
    v17 = archive_entry_gid(v110);
    add_pax_attr_int(v44, "gid", v17);
    v107 = 1;
  }

  if (v95 && (v87 > 0x1F || has_non_ASCII(v95)))
  {
    add_pax_attr((v100 + 40), "gname", v95);
    v107 = 1;
  }

  if (archive_entry_uid(v110) >= 0x40000)
  {
    v43 = (v100 + 40);
    v18 = archive_entry_uid(v110);
    add_pax_attr_int(v43, "uid", v18);
    v107 = 1;
  }

  if (v96 && (v88 > 0x1F || has_non_ASCII(v96)))
  {
    add_pax_attr((v100 + 40), "uname", v96);
    v107 = 1;
  }

  if (archive_entry_filetype(v110) == 24576 || archive_entry_filetype(v110) == 0x2000)
  {
    v71 = archive_entry_rdevmajor(v110);
    v70 = archive_entry_rdevminor(v110);
    if (v71 >= 0x40000)
    {
      add_pax_attr_int((v100 + 40), "SCHILY.devmajor", v71);
      v107 = 1;
    }

    if (v70 >= 0x40000)
    {
      add_pax_attr_int((v100 + 40), "SCHILY.devminor", v70);
      v107 = 1;
    }
  }

  if (!v107 && (archive_entry_mtime(v110) < 0 || archive_entry_mtime(v110) >= ustar_max_mtime))
  {
    v107 = 1;
  }

  v109 = archive_entry_fflags_text(v110);
  if (!v107 && v109)
  {
    v107 = *v109 != 0;
  }

  if (!v107)
  {
    v107 = archive_entry_xattr_count(v111) > 0;
  }

  if (!v107)
  {
    v107 = v103 > 0;
  }

  v104 = archive_entry_acl_types(v111);
  if (!v107)
  {
    v107 = v104 != 0;
  }

  if (!v107)
  {
    v107 = archive_entry_symlink_type(v110) > 0;
  }

  if (v112[4] != 196611)
  {
    if (archive_entry_ctime(v110) || archive_entry_ctime_nsec(v110))
    {
      v42 = (v100 + 40);
      v41 = archive_entry_ctime(v110);
      v19 = archive_entry_ctime_nsec(v110);
      add_pax_attr_time(v42, "ctime", v41, v19);
    }

    if (archive_entry_atime(v110) || archive_entry_atime_nsec(v110))
    {
      v40 = (v100 + 40);
      v39 = archive_entry_atime(v110);
      v20 = archive_entry_atime_nsec(v110);
      add_pax_attr_time(v40, "atime", v39, v20);
    }

    if (archive_entry_birthtime_is_set(v110))
    {
      v38 = archive_entry_birthtime(v110);
      if (v38 < archive_entry_mtime(v110))
      {
        v37 = (v100 + 40);
        v36 = archive_entry_birthtime(v110);
        v21 = archive_entry_birthtime_nsec(v110);
        add_pax_attr_time(v37, "LIBARCHIVE.creationtime", v36, v21);
      }
    }
  }

  if (v112[4] != 196611 || v107)
  {
    if (archive_entry_mtime(v110) < 0 || archive_entry_mtime(v110) >= ustar_max_mtime || archive_entry_mtime_nsec(v110))
    {
      v35 = (v100 + 40);
      v34 = archive_entry_mtime(v110);
      v22 = archive_entry_mtime_nsec(v110);
      add_pax_attr_time(v35, "mtime", v34, v22);
    }

    v109 = archive_entry_fflags_text(v110);
    if (v109 && *v109)
    {
      add_pax_attr((v100 + 40), "SCHILY.fflags", v109);
    }

    if ((v104 & 0x3C00) != 0 && (v105 = add_pax_acl(v112, v111, v100, 0x19u), v105 == -30) || (v104 & 0x100) != 0 && (v105 = add_pax_acl(v112, v111, v100, 0x109u), v105 == -30) || (v104 & 0x200) != 0 && (v105 = add_pax_acl(v112, v111, v100, 0x209u), v105 == -30))
    {
      archive_entry_free(v110);
      archive_string_free(&v84);
      return -30;
    }

    if (v103 > 0)
    {
      v69 = 0;
      v68 = 0;
      add_pax_attr_int((v100 + 40), "GNU.sparse.major", 1);
      add_pax_attr_int((v100 + 40), "GNU.sparse.minor", 0);
      add_pax_attr((v100 + 40), "GNU.sparse.name", v98);
      v32 = (v100 + 40);
      v23 = archive_entry_size(v110);
      add_pax_attr_int(v32, "GNU.sparse.realsize", v23);
      v33 = v110;
      v24 = build_gnu_sparse_name(v114, v84);
      archive_entry_set_pathname(v33, v24);
      archive_string_sprintf((v100 + 64), "%d\n", v103);
      while (!archive_entry_sparse_next(v110, &v69, &v68))
      {
        archive_string_sprintf((v100 + 64), "%jd\n%jd\n", v69, v68);
        v102 += v68;
        if (sparse_list_add(v100, v69, v68))
        {
          archive_set_error(v112, 12, "Can't allocate memory");
          archive_entry_free(v110);
          archive_string_free(&v84);
          return -30;
        }
      }
    }

    if (archive_write_pax_header_xattrs(v112, v100, v111) == -30)
    {
LABEL_223:
      archive_entry_free(v110);
      archive_string_free(&v84);
      return -30;
    }

    if (archive_entry_symlink_type(v110) == 1)
    {
      add_pax_attr((v100 + 40), "LIBARCHIVE.symlinktype", "file");
    }

    else if (archive_entry_symlink_type(v110) == 2)
    {
      add_pax_attr((v100 + 40), "LIBARCHIVE.symlinktype", "dir");
    }
  }

  if (archive_entry_filetype(v110) != 0x8000)
  {
    archive_entry_set_size(v110, 0);
  }

  if (v112[4] != 196610 && v99)
  {
    archive_entry_set_size(v110, 0);
  }

  if (v99)
  {
    archive_entry_set_size(v110, 0);
  }

  v101 = archive_entry_size(v110);
  if (*(v100 + 72))
  {
    v67 = *(v100 + 72);
    *(v100 + 88) = -v67 & 0x1FF;
    archive_entry_set_size(v110, v67 + *(v100 + 88) + v102);
  }

  if (archive_entry_size(v110) >= 0x200000000)
  {
    v31 = (v100 + 40);
    v25 = archive_entry_size(v110);
    add_pax_attr_int(v31, "size", v25);
  }

  if (__archive_write_format_header_ustar(v112, v117, v110, -1, 0, 0) == -30)
  {
    goto LABEL_223;
  }

  if (*(v100 + 48))
  {
    v66 = archive_entry_new2(v112);
    v109 = v84;
    v26 = build_pax_attribute_name(v115, v84);
    archive_entry_set_pathname(v66, v26);
    archive_entry_set_size(v66, *(v100 + 48));
    v64 = archive_entry_uid(v110);
    if (v64 >= 0x40000)
    {
      v64 = 0x3FFFFLL;
    }

    archive_entry_set_uid(v66, v64);
    v63 = archive_entry_gid(v110);
    if (v63 >= 0x40000)
    {
      v63 = 0x3FFFFLL;
    }

    archive_entry_set_gid(v66, v63);
    v27 = archive_entry_mode(v110);
    archive_entry_set_mode(v66, v27 & 0xF1FF);
    v28 = archive_entry_uname(v110);
    archive_entry_set_uname(v66, v28);
    v29 = archive_entry_gname(v110);
    archive_entry_set_gname(v66, v29);
    v65 = archive_entry_mtime(v110);
    if (v65 < 0)
    {
      v65 = 0;
    }

    if (v65 > ustar_max_mtime)
    {
      v65 = ustar_max_mtime;
    }

    archive_entry_set_mtime(v66, v65, 0);
    archive_entry_set_atime(v66, 0, 0);
    archive_entry_set_ctime(v66, 0, 0);
    entry_hardlink = __archive_write_format_header_ustar(v112, v118, v66, 120, 1, 0);
    archive_entry_free(v66);
    if (entry_hardlink < -20)
    {
      archive_set_error(v112, -1, "archive_write_pax_header: 'x' header failed?!  This can't happen.\n");
      archive_entry_free(v110);
      archive_string_free(&v84);
      return -30;
    }

    if (entry_hardlink < v105)
    {
      v105 = entry_hardlink;
    }

    entry_hardlink = __archive_write_output(v112, v118, 512);
    if (entry_hardlink)
    {
      sparse_list_clear(v100);
      *v100 = 0;
      *(v100 + 8) = 0;
      archive_entry_free(v110);
      archive_string_free(&v84);
      return -30;
    }

    *v100 = *(v100 + 48);
    *(v100 + 8) = -*v100 & 0x1FFLL;
    entry_hardlink = __archive_write_output(v112, *(v100 + 40), *(v100 + 48));
    if (entry_hardlink)
    {
      goto LABEL_223;
    }

    entry_hardlink = __archive_write_nulls(v112, *(v100 + 8));
    if (entry_hardlink)
    {
      goto LABEL_223;
    }

    *(v100 + 8) = 0;
    *v100 = 0;
  }

  entry_hardlink = __archive_write_output(v112, v117, 512);
  if (entry_hardlink)
  {
    archive_entry_free(v110);
    archive_string_free(&v84);
    return entry_hardlink;
  }

  else
  {
    archive_entry_set_size(v111, v101);
    if (!*(v100 + 96) && v101)
    {
      sparse_list_add(v100, 0, v101);
      v102 = v101;
    }

    *(v100 + 8) = -v102 & 0x1FF;
    archive_entry_free(v110);
    archive_string_free(&v84);
    return v105;
  }
}

unint64_t archive_write_pax_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = *(a1 + 248);
  if (*(v11 + 72))
  {
    v6 = __archive_write_output(a1, *(v11 + 64), *(v11 + 72));
    if (v6)
    {
      return v6;
    }

    v7 = __archive_write_nulls(a1, *(v11 + 88));
    if (v7)
    {
      return v7;
    }

    *(v11 + 72) = 0;
  }

  v9 = 0;
  while (v9 < a3)
  {
    while (1)
    {
      v4 = 0;
      if (*(v11 + 96))
      {
        v4 = *(*(v11 + 96) + 24) == 0;
      }

      if (!v4)
      {
        break;
      }

      v5 = **(v11 + 96);
      free(*(v11 + 96));
      *(v11 + 96) = v5;
    }

    if (!*(v11 + 96))
    {
      return v9;
    }

    v10 = a3 - v9;
    if (a3 - v9 > *(*(v11 + 96) + 24))
    {
      v10 = *(*(v11 + 96) + 24);
    }

    if (*(*(v11 + 96) + 8))
    {
      *(*(v11 + 96) + 24) -= v10;
      v9 += v10;
    }

    else
    {
      v8 = __archive_write_output(a1, a2 + v9, v10);
      *(*(v11 + 96) + 24) -= v10;
      v9 += v10;
      if (v8)
      {
        return v8;
      }
    }
  }

  return v9;
}

uint64_t archive_write_pax_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    archive_string_free(v2 + 40);
    archive_string_free(v2 + 64);
    archive_string_free(v2 + 16);
    sparse_list_clear(v2);
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_pax_finish_entry(uint64_t a1)
{
  v4 = *(a1 + 248);
  v3 = *v4;
  if (!*v4)
  {
    while (v4[12])
    {
      if (!*(v4[12] + 8))
      {
        v3 += *(v4[12] + 24);
      }

      v2 = *v4[12];
      free(v4[12]);
      v4[12] = v2;
    }
  }

  LODWORD(result) = __archive_write_nulls(a1, v3 + v4[1]);
  v4[1] = 0;
  *v4 = 0;
  return result;
}

uint64_t get_entry_hardlink(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_hardlink_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Linkname");
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

void sparse_list_clear(uint64_t a1)
{
  while (*(a1 + 96))
  {
    v1 = *(a1 + 96);
    *(a1 + 96) = *v1;
    free(v1);
  }

  *(a1 + 104) = 0;
}

uint64_t get_entry_pathname(_DWORD *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_pathname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Pathname");
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_uname(_DWORD *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_uname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Uname");
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_gname(_DWORD *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_gname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Gname");
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_symlink(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_symlink_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Linkname");
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

BOOL has_non_ASCII(_BYTE *a1)
{
  v3 = a1;
  if (a1)
  {
    while (1)
    {
      v2 = 0;
      if (*v3)
      {
        v2 = *v3 < 0x80u;
      }

      if (!v2)
      {
        break;
      }

      ++v3;
    }

    return *v3 != 0;
  }

  else
  {
    return 1;
  }
}

_BYTE *build_ustar_entry_name(_BYTE *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v14 = 0;
  v11 = 98;
  if (a4)
  {
    v10 = strlen(a4) + 2;
  }

  else
  {
    v10 = 0;
  }

  if (a3 >= 0x64 || a4)
  {
    for (i = a2 + a3; ; i -= 2)
    {
      while (i > a2 && *(i - 1) == 47)
      {
        --i;
        v14 = 1;
      }

      if (i <= a2 + 1 || *(i - 1) != 46 || *(i - 2) != 47)
      {
        break;
      }

      v14 = 1;
    }

    if (v14)
    {
      v11 = 97;
    }

    for (j = (i - 1); ; --j)
    {
      v9 = 0;
      if (j > a2)
      {
        v9 = *j != 47;
      }

      if (!v9)
      {
        break;
      }
    }

    if (*j == 47 && j < i - 1)
    {
      ++j;
    }

    v12 = v11 - v10;
    if (i > &j[v12])
    {
      i = &j[v12];
    }

    v13 = v12 - (i - j);
    v20 = (a2 + 154);
    if (a2 + 154 > j)
    {
      v20 = j;
    }

    while (1)
    {
      v8 = 0;
      if (v20 > a2)
      {
        v8 = *v20 != 47;
      }

      if (!v8)
      {
        break;
      }

      --v20;
    }

    if (v20 < j && *v20 == 47)
    {
      ++v20;
    }

    v19 = &v20[v13];
    if (&v20[v13] > j)
    {
      v19 = j;
    }

    if (v19 < v20)
    {
      v19 = v20;
    }

    while (1)
    {
      v7 = 0;
      if (v19 > v20)
      {
        v7 = *v19 != 47;
      }

      if (!v7)
      {
        break;
      }

      --v19;
    }

    if (v19 < j && *v19 == 47)
    {
      ++v19;
    }

    v15 = a1;
    if (v20 > a2)
    {
      __strncpy_chk();
      v15 = &v20[a1 - a2];
    }

    if (v19 > v20)
    {
      __strncpy_chk();
      v15 += v19 - v20;
    }

    if (a4)
    {
      __strcpy_chk();
      v4 = &v15[strlen(a4)];
      v15 = v4 + 1;
      *v4 = 47;
    }

    __strncpy_chk();
    v16 = &v15[i - j];
    if (v14)
    {
      v5 = v16++;
      *v5 = 47;
    }

    *v16 = 0;
    return a1;
  }

  else
  {
    __strncpy_chk();
    a1[a3] = 0;
    return a1;
  }
}

void *add_pax_attr_int(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = format_int(&v7, a3);
  return add_pax_attr(a1, a2, v3);
}

void *add_pax_attr_time(void *a1, char *a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = &v13;
  v9 = 0;
  for (i = 10; ; --i)
  {
    v6 = 0;
    if (i > 0)
    {
      v6 = v9 == 0;
    }

    if (!v6)
    {
      break;
    }

    v9 = a4 % 0xA;
    a4 /= 0xAuLL;
  }

  if (i > 0)
  {
    while (i > 0)
    {
      *--v7 = a0123456789[v9];
      v9 = a4 % 0xA;
      a4 /= 0xAuLL;
      --i;
    }

    *--v7 = 46;
  }

  v4 = format_int(v7, a3);
  return add_pax_attr(a1, a2, v4);
}

uint64_t add_pax_acl(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((archive_entry_acl_types(a2) & 0x3C00) != 0)
  {
    v5 = "SCHILY.acl.ace";
  }

  else if ((a4 & 0x100) != 0)
  {
    v5 = "SCHILY.acl.access";
  }

  else
  {
    if ((a4 & 0x200) == 0)
    {
      return -30;
    }

    v5 = "SCHILY.acl.default";
  }

  v6 = _archive_entry_acl_to_text_l(a2, 0, a4, *(a3 + 112));
  if (v6)
  {
    if (*v6)
    {
      add_pax_attr((a3 + 40), v5, v6);
    }

    free(v6);
    return 0;
  }

  else if (*__error() == 12)
  {
    archive_set_error(a1, 12, "%s %s", "Can't allocate memory for ", v5);
    return -30;
  }

  else
  {
    archive_set_error(a1, 79, "%s %s %s", "Can't translate ", v5, " to UTF-8");
    return -20;
  }
}

_BYTE *build_gnu_sparse_name(_BYTE *a1, const char *a2)
{
  if (a2 && *a2)
  {
    for (i = &a2[strlen(a2)]; ; --i)
    {
      while (i > a2 && *(i - 1) == 47)
      {
        --i;
      }

      if (i <= a2 + 1 || *(i - 1) != 46 || *(i - 2) != 47)
      {
        break;
      }
    }

    build_ustar_entry_name(a1, a2, i - a2, "GNUSparseFile.0");
    return a1;
  }

  else
  {
    __strcpy_chk();
    return a1;
  }
}

uint64_t sparse_list_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104))
  {
    v5 = *(*(a1 + 104) + 16) + *(*(a1 + 104) + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a2 && (v4 = _sparse_list_add_block(a1, v5, a2 - v5, 1)) != 0)
  {
    return v4;
  }

  else
  {
    return _sparse_list_add_block(a1, a2, a3, 0);
  }
}

uint64_t archive_write_pax_header_xattrs(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = archive_entry_xattr_reset(a3);
  while (1)
  {
    if (!v12--)
    {
      return 0;
    }

    v11 = 0;
    v10 = 0;
    __s = 0;
    v8 = 0;
    v7 = 0;
    archive_entry_xattr_next(v13, &v11, &v10, &v7);
    __s = url_encode(v11);
    if (!__s)
    {
      break;
    }

    v5 = strlen(__s);
    v6 = archive_strncpy_l((v14 + 16), __s, v5, *(v14 + 112));
    free(__s);
    if (v6)
    {
      if (v6 != -1)
      {
        archive_set_error(v15, -1, "Error encoding pax extended attribute");
        return -25;
      }

      break;
    }

    v8 = *(v14 + 16);
    archive_write_pax_header_xattr(v14, v8, v10, v7);
  }

  archive_set_error(v15, 12, "Can't allocate memory", v5);
  return -30;
}

_BYTE *build_pax_attribute_name(_BYTE *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2 || !*a2)
  {
    goto LABEL_15;
  }

  for (i = &a2[strlen(a2)]; ; --i)
  {
    while (i > a2 && *(i - 1) == 47)
    {
      --i;
    }

    if (i <= a2 + 1 || *(i - 1) != 46 || *(i - 2) != 47)
    {
      break;
    }
  }

  if (i == a2 || *a2 == 46 && i == a2 + 1)
  {
LABEL_15:
    __strcpy_chk();
    return a1;
  }

  else
  {
    __strcpy_chk();
    build_ustar_entry_name(a1, a2, i - a2, v7);
    return a1;
  }
}

void *add_pax_attr_binary(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = strlen(a2) + 2 + a4 + 1;
  v6 = 1;
  v9 = 0;
  for (i = v7; i > 0; i /= 10)
  {
    ++v9;
    v6 *= 10;
  }

  if (v7 + v9 >= v6)
  {
    ++v9;
  }

  v14 = 0;
  v4 = format_int(&v14, v7 + v9);
  archive_strcat(a1, v4);
  archive_strappend_char(a1, 32);
  archive_strcat(a1, a2);
  archive_strappend_char(a1, 61);
  archive_array_append(a1, a3, a4);
  return archive_strappend_char(a1, 10);
}

uint64_t format_int(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    if (a2 == 0x8000000000000000)
    {
      v3 = 0x8000000000000000;
    }

    else
    {
      v3 = -a2;
    }

    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  do
  {
    *--a1 = a0123456789[v4 % 0xA];
    v4 /= 0xAuLL;
  }

  while (v4);
  if (a2 < 0)
  {
    *--a1 = 45;
  }

  return a1;
}

uint64_t _sparse_list_add_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
  if (v5)
  {
    *v5 = 0;
    v5[2] = a4;
    *(v5 + 2) = a2;
    *(v5 + 3) = a3;
    if (*(a1 + 96) && *(a1 + 104))
    {
      **(a1 + 104) = v5;
      *(a1 + 104) = v5;
    }

    else
    {
      *(a1 + 104) = v5;
      *(a1 + 96) = v5;
    }

    return 0;
  }

  else
  {
    return -30;
  }
}

_BYTE *url_encode(_BYTE *a1)
{
  v5 = 0;
  for (i = a1; *i; ++i)
  {
    if (*i < 33 || *i == 127 || *i == 37 || *i == 61)
    {
      if ((-1 - v5) < 4)
      {
        return 0;
      }

      v5 += 3;
    }

    else
    {
      if ((-1 - v5) < 2)
      {
        return 0;
      }

      ++v5;
    }
  }

  v4 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  v8 = a1;
  v6 = v4;
  while (*v8)
  {
    if (*v8 < 33 || *v8 == 127 || *v8 == 37 || *v8 == 61)
    {
      *v6 = 37;
      v6[1] = a0123456789abcd_0[(*v8 >> 4) & 0xF];
      v1 = v6 + 2;
      v6 += 3;
      *v1 = a0123456789abcd_0[*v8 & 0xF];
    }

    else
    {
      v2 = v6++;
      *v2 = *v8;
    }

    ++v8;
  }

  *v6 = 0;
  return v4;
}

void archive_write_pax_header_xattr(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    if ((*(v11 + 124) & 2) != 0)
    {
      v4 = base64_encode(v9, v8);
      if (v4)
      {
        v5 = 0;
        v7 = 0;
        v6 = 0;
        archive_strncat(&v5, "LIBARCHIVE.xattr.", 0x11uLL);
        archive_strcat(&v5, v10);
        add_pax_attr((v11 + 40), v5, v4);
        archive_string_free(&v5);
      }

      free(v4);
    }

    if (*(v11 + 124))
    {
      v5 = 0;
      v7 = 0;
      v6 = 0;
      archive_strncat(&v5, "SCHILY.xattr.", 0xDuLL);
      archive_strcat(&v5, v10);
      add_pax_attr_binary((v11 + 40), v5, v9, v8);
      archive_string_free(&v5);
    }
  }
}

_BYTE *base64_encode(char *a1, unint64_t a2)
{
  v11 = a2;
  v6 = malloc_type_malloc((4 * a2 + 2) / 3 + 1, 0x100004077774924uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  while (v11 >= 3)
  {
    v8 = (*a1 << 16) & 0xFF0000 | (a1[1] << 8) & 0xFF00 | a1[2];
    a1 += 3;
    v11 -= 3;
    *v7 = base64_encode_digits[(v8 >> 18) & 0x3F];
    v7[1] = base64_encode_digits[(v8 >> 12) & 0x3F];
    v7[2] = base64_encode_digits[(v8 >> 6) & 0x3F];
    v2 = v7 + 3;
    v7 += 4;
    *v2 = base64_encode_digits[v8 & 0x3F];
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v9 = (*a1 << 16) & 0xFF0000;
      *v7 = base64_encode_digits[(v9 >> 18) & 0x3F];
      v3 = v7 + 1;
      v7 += 2;
      *v3 = base64_encode_digits[(v9 >> 12) & 0x3F];
    }

    else
    {
      v10 = (*a1 << 16) & 0xFF0000 | (a1[1] << 8) & 0xFF00;
      *v7 = base64_encode_digits[(v10 >> 18) & 0x3F];
      v7[1] = base64_encode_digits[(v10 >> 12) & 0x3F];
      v4 = v7 + 2;
      v7 += 3;
      *v4 = base64_encode_digits[(v10 >> 6) & 0x3F];
    }
  }

  *v7 = 0;
  return v6;
}

uint64_t archive_read_format_lha_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = -25;
  v5 = **(a1 + 2072);
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 216) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v5 + 216))
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
      archive_set_error(a1, -1, "lha: hdrcharset option needs a character-set name");
    }

    return v4;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_lha_read_header(_DWORD *a1, void *a2)
{
  v24 = a1;
  v23 = a2;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  ahead = 0;
  v14 = 0;
  file_header_1 = 0;
  memset(__b, 0, sizeof(__b));
  v11 = 0;
  lha_crc16_init();
  v24[4] = 720896;
  if (!*(v24 + 3))
  {
    *(v24 + 3) = "lha";
  }

  v16 = **(v24 + 259);
  *(v16 + 299) = 0;
  *(v16 + 300) = 0;
  *(v16 + 301) = 0;
  *(v16 + 16) = 0;
  ahead = __archive_read_ahead(v24, 0x16uLL, 0);
  if (!ahead)
  {
    v14 = __archive_read_ahead(v24, 1uLL, 0);
    if (!v14 || !*v14)
    {
      return 1;
    }

    return truncated_error_0(v24);
  }

  v14 = ahead;
  if (!*(v16 + 297) && *v14 == 77 && v14[1] == 90)
  {
    file_header_1 = lha_skip_sfx(v24);
    if (file_header_1 < -20)
    {
      return file_header_1;
    }

    v2 = __archive_read_ahead(v24, 1uLL, 0);
    ahead = v2;
    if (!v2)
    {
      return truncated_error_0(v24);
    }

    v14 = ahead;
  }

  if (!*v14)
  {
    return 1;
  }

  if (lha_check_header_format(ahead))
  {
    archive_set_error(v24, 79, "Bad LHa file");
    return -30;
  }

  *(v16 + 297) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = ahead[20];
  *(v16 + 41) = ahead[3];
  *(v16 + 42) = ahead[4];
  *(v16 + 43) = ahead[5];
  *(v16 + 298) = !memcmp((v16 + 41), "lhd", 3uLL);
  *(v16 + 302) = memcmp((v16 + 41), "lh0", 3uLL) && memcmp((v16 + 41), "lz4", 3uLL);
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 112) = 0;
  if (*(v16 + 298))
  {
    v3 = 511;
  }

  else
  {
    v3 = 438;
  }

  *(v16 + 120) = v3;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 232) = 0;
  *(v16 + 256) = 0;
  *(v16 + 296) = 0;
  if (*(v16 + 216))
  {
    *(v16 + 200) = *(v16 + 216);
    *(v16 + 208) = *(v16 + 216);
  }

  else
  {
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
  }

  v10 = ahead[20];
  if (ahead[20])
  {
    switch(v10)
    {
      case 1:
        file_header_1 = lha_read_file_header_1(v24, v16);
        break;
      case 2:
        file_header_1 = lha_read_file_header_2(v24, v16);
        break;
      case 3:
        file_header_1 = lha_read_file_header_3(v24, v16);
        break;
      default:
        archive_set_error(v24, 79, "Unsupported LHa header level %d", ahead[20]);
        file_header_1 = -30;
        break;
    }
  }

  else
  {
    file_header_1 = lha_read_file_header_0(v24, v16);
  }

  if (file_header_1 < -20)
  {
    return file_header_1;
  }

  if (!*(v16 + 298) && !*(v16 + 256))
  {
    return truncated_error_0(v24);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(__b, 0, 96);
  if (archive_mstring_copy_mbs_len_l(__b, *(v16 + 224), *(v16 + 232), *(v16 + 200)))
  {
    v9 = v24;
    v4 = archive_string_conversion_charset_name(*(v16 + 200));
    archive_set_error(v9, 79, "Pathname cannot be converted from %s to Unicode.", v4);
    file_header_1 = -30;
  }

  else if (archive_mstring_get_wcs(v24, __b, &v11))
  {
    file_header_1 = -30;
  }

  if (file_header_1 == -30)
  {
    goto LABEL_52;
  }

  v18 = 0;
  archive_wstring_concat(&v17, &__b[6]);
  __b[1] = 0;
  __b[10] = 0;
  __b[4] = 0;
  __b[7] = 0;
  if (archive_mstring_copy_mbs_len_l(__b, *(v16 + 248), *(v16 + 256), *(v16 + 208)))
  {
    v8 = v24;
    v5 = archive_string_conversion_charset_name(*(v16 + 208));
    archive_set_error(v8, 79, "Pathname cannot be converted from %s to Unicode.", v5);
    file_header_1 = -30;
  }

  else if (archive_mstring_get_wcs(v24, __b, &v11))
  {
    file_header_1 = -30;
  }

  if (file_header_1 == -30)
  {
LABEL_52:
    archive_mstring_clean(__b);
    archive_wstring_free(&v17);
    archive_wstring_free(&v20);
    return file_header_1;
  }

  else
  {
    archive_wstring_concat(&v17, &__b[6]);
    archive_mstring_clean(__b);
    if ((*(v16 + 120) & 0xF000) == 0xA000)
    {
      if (!lha_parse_linkname(&v20, &v17))
      {
        archive_set_error(v24, 79, "Unknown symlink-name");
        archive_wstring_free(&v17);
        archive_wstring_free(&v20);
        return -25;
      }
    }

    else
    {
      if (*(v16 + 298))
      {
        v6 = 0x4000;
      }

      else
      {
        v6 = 0x8000;
      }

      *(v16 + 120) = *(v16 + 120) & 0xFFF | v6;
    }

    if (*(v16 + 64) & 4) == 0 && (*(v16 + 296))
    {
      *(v16 + 120) &= 0xFF6Du;
    }

    archive_entry_copy_pathname_w(v23, v17);
    archive_wstring_free(&v17);
    if (v21)
    {
      archive_entry_copy_symlink_w(v23, v20);
    }

    else
    {
      archive_entry_set_symlink(v23, 0);
    }

    archive_wstring_free(&v20);
    if (!ahead[20])
    {
      lha_replace_path_separator(v16, v23);
    }

    archive_entry_set_mode(v23, *(v16 + 120));
    archive_entry_set_uid(v23, *(v16 + 128));
    archive_entry_set_gid(v23, *(v16 + 136));
    if (*(v16 + 152))
    {
      archive_entry_set_uname(v23, *(v16 + 144));
    }

    if (*(v16 + 176))
    {
      archive_entry_set_gname(v23, *(v16 + 168));
    }

    if (*(v16 + 64))
    {
      archive_entry_set_birthtime(v23, *(v16 + 72), *(v16 + 80));
      archive_entry_set_ctime(v23, *(v16 + 72), *(v16 + 80));
    }

    else
    {
      archive_entry_unset_birthtime(v23);
      archive_entry_unset_ctime(v23);
    }

    archive_entry_set_mtime(v23, *(v16 + 88), *(v16 + 96));
    if ((*(v16 + 64) & 2) != 0)
    {
      archive_entry_set_atime(v23, *(v16 + 104), *(v16 + 112));
    }

    else
    {
      archive_entry_unset_atime(v23);
    }

    if (*(v16 + 298) || archive_entry_symlink(v23))
    {
      archive_entry_unset_size(v23);
    }

    else
    {
      archive_entry_set_size(v23, *(v16 + 56));
    }

    *(v16 + 8) = *(v16 + 48);
    if ((*(v16 + 8) & 0x8000000000000000) != 0)
    {
      archive_set_error(v24, 79, "Invalid LHa entry size");
      return -30;
    }

    else
    {
      *v16 = 0;
      *(v16 + 24) = 0;
      if (*(v16 + 298) || !*(v16 + 48))
      {
        *(v16 + 300) = 1;
      }

      __snprintf_chk((v16 + 303), 0x40uLL, 0, 0x40uLL, "lha -%c%c%c-", *(v16 + 41), *(v16 + 42), *(v16 + 43));
      *(v24 + 3) = v16 + 303;
      return file_header_1;
    }
  }
}

uint64_t archive_read_format_lha_read_data(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = **(a1 + 2072);
  if (*(v6 + 16))
  {
    __archive_read_consume(a1, *(v6 + 16));
    *(v6 + 16) = 0;
  }

  if (*(v6 + 300))
  {
    *a4 = *v6;
    *a3 = 0;
    *a2 = 0;
    return lha_end_of_entry(a1);
  }

  else if (*(v6 + 302))
  {
    return lha_read_data_lzh(a1, a2, a3, a4);
  }

  else
  {
    return lha_read_data_none(a1, a2, a3, a4);
  }
}

uint64_t archive_read_format_lha_read_data_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (*(v2 + 16))
  {
    __archive_read_consume(a1, *(v2 + 16));
    *(v2 + 16) = 0;
  }

  if (*(v2 + 301))
  {
    return 0;
  }

  else if (__archive_read_consume(a1, *(v2 + 8)) < 0)
  {
    return -30;
  }

  else
  {
    *(v2 + 300) = 1;
    *(v2 + 301) = 1;
    return 0;
  }
}

void lha_crc16_init()
{
  if (!lha_crc16_init_crc16init)
  {
    lha_crc16_init_crc16init = 1;
    for (i = 0; i < 0x100; ++i)
    {
      v0 = i;
      for (j = 8; j; --j)
      {
        v0 = (-24575 * (v0 & 1)) ^ (v0 >> 1);
      }

      crc16tbl[i] = v0;
    }

    for (k = 0; k < 0x100; ++k)
    {
      crc16tbl[k + 256] = crc16tbl[LOBYTE(crc16tbl[k])] ^ (crc16tbl[k] >> 8);
    }
  }
}

uint64_t lha_skip_sfx(_DWORD *a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 4096;
  while (1)
  {
    while (1)
    {
      v8 = __archive_read_ahead(v9, v2, &v3);
      if (v8)
      {
        break;
      }

      v2 >>= 1;
      if (v2 < 25)
      {
        goto LABEL_12;
      }
    }

    if (v3 < 22)
    {
      break;
    }

    v7 = v8;
    v6 = v8 + v3;
    while ((v7 + 22) < v6)
    {
      v5 = lha_check_header_format(v7);
      if (!v5)
      {
        v4 = &v7[-v8];
        __archive_read_consume(v9, &v7[-v8]);
        return 0;
      }

      v7 += v5;
    }

    v4 = &v7[-v8];
    __archive_read_consume(v9, &v7[-v8]);
  }

LABEL_12:
  archive_set_error(v9, 79, "Couldn't find out LHa header");
  return -30;
}

uint64_t lha_read_file_header_0(_DWORD *a1, uint64_t a2)
{
  ahead = __archive_read_ahead(a1, 0x18uLL, 0);
  if (!ahead)
  {
    return truncated_error_0(a1);
  }

  *(a2 + 32) = *ahead + 2;
  v4 = ahead[1];
  *(a2 + 48) = archive_le32dec_8(ahead + 7);
  *(a2 + 56) = archive_le32dec_8(ahead + 11);
  *(a2 + 88) = lha_dos_time(ahead + 15);
  v5 = ahead[21];
  v6 = *(a2 + 32) - 24 - v5;
  if ((v5 > 0xDD || v6 < 0) && v6 != -2)
  {
    archive_set_error(a1, 79, "Invalid LHa header");
    return -30;
  }

  v8 = __archive_read_ahead(a1, *(a2 + 32), 0);
  if (v8)
  {
    *(a2 + 256) = 0;
    archive_strncat((a2 + 248), (v8 + 22), v5);
    if ((v6 & 0x80000000) == 0)
    {
      *(a2 + 194) = archive_le16dec_5((v8 + 22 + v5));
      *(a2 + 64) |= 8u;
    }

    v3 = lha_calcsum(0, v8, 2, *(a2 + 32) - 2);
    if (v6 > 0)
    {
      v9 = (v8 + v5 + 24);
      if (*v9 == 85 && v6 == 12)
      {
        *(a2 + 88) = archive_le32dec_8(v9 + 2);
        *(a2 + 120) = archive_le16dec_5(v9 + 6);
        *(a2 + 128) = archive_le16dec_5(v9 + 8);
        *(a2 + 136) = archive_le16dec_5(v9 + 10);
        *(a2 + 64) |= 4u;
      }
    }

    __archive_read_consume(a1, *(a2 + 32));
    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, -1, "LHa header sum error");
      return -30;
    }
  }

  else
  {
    return truncated_error_0(a1);
  }
}

uint64_t lha_read_file_header_1(_DWORD *a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v9 = 0;
  v7 = 0;
  ahead = __archive_read_ahead(a1, 0x1BuLL, 0);
  if (!ahead)
  {
    return truncated_error_0(v12);
  }

  *(v11 + 32) = *ahead + 2;
  v4 = ahead[1];
  *(v11 + 48) = archive_le32dec_8(ahead + 7);
  *(v11 + 56) = archive_le32dec_8(ahead + 11);
  *(v11 + 88) = lha_dos_time(ahead + 15);
  v5 = ahead[21];
  if (v5 > 0xE6 || ((*(v11 + 32) - 27 - v5) & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  ahead = __archive_read_ahead(v12, *(v11 + 32), 0);
  if (!ahead)
  {
    return truncated_error_0(v12);
  }

  for (i = 0; i < v5; ++i)
  {
    if (ahead[i + 22] == 255)
    {
      goto LABEL_19;
    }
  }

  *(v11 + 256) = 0;
  archive_strncat((v11 + 248), ahead + 22, v5);
  *(v11 + 194) = archive_le16dec_5(&ahead[v5 + 22]);
  *(v11 + 64) |= 8u;
  v3 = lha_calcsum(0, ahead, 2, *(v11 + 32) - 2);
  __archive_read_consume(v12, *(v11 + 32) - 2);
  v6 = lha_read_file_extended_header(v12, v11, 0, 2, *(v11 + 48) + 2, &v9);
  if (v6 < -20)
  {
    return v6;
  }

  if (v6 < 0)
  {
    v7 = v6;
  }

  *(v11 + 48) -= v9 - 2;
  if ((*(v11 + 48) & 0x8000000000000000) != 0)
  {
LABEL_19:
    archive_set_error(v12, 79, "Invalid LHa header");
    return -30;
  }

  if (v3 == v4)
  {
    return v7;
  }

  else
  {
    archive_set_error(v12, -1, "LHa header sum error");
    return -30;
  }
}

uint64_t lha_read_file_header_2(_DWORD *a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  ahead = __archive_read_ahead(a1, 0x18uLL, 0);
  if (ahead)
  {
    *(v8 + 32) = archive_le16dec_5(ahead);
    *(v8 + 48) = archive_le32dec_8(ahead + 7);
    *(v8 + 56) = archive_le32dec_8(ahead + 11);
    *(v8 + 88) = archive_le32dec_8(ahead + 15);
    *(v8 + 194) = archive_le16dec_5(ahead + 21);
    *(v8 + 64) |= 8u;
    if (*(v8 + 32) >= 0x18uLL)
    {
      v3 = lha_crc16(0, ahead, 0x18uLL);
      __archive_read_consume(v9, 24);
      v5 = lha_read_file_extended_header(v9, v8, &v3, 2, *(v8 + 32) - 24, &v6);
      if (v5 >= -20)
      {
        v4 = *(v8 + 32) - (v6 + 24);
        if (v4 > 0)
        {
          ahead = __archive_read_ahead(v9, v4, 0);
          if (!ahead)
          {
            return truncated_error_0(v9);
          }

          v3 = lha_crc16(v3, ahead, v4);
          __archive_read_consume(v9, v4);
        }

        if (v3 == *(v8 + 192))
        {
          return v5;
        }

        else
        {
          archive_set_error(v9, 79, "LHa header CRC error");
          return -30;
        }
      }

      else
      {
        return v5;
      }
    }

    else
    {
      archive_set_error(v9, 79, "Invalid LHa header size");
      return -30;
    }
  }

  else
  {
    return truncated_error_0(v9);
  }
}

uint64_t lha_read_file_header_3(_DWORD *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  ahead = __archive_read_ahead(a1, 0x1CuLL, 0);
  if (ahead)
  {
    if (archive_le16dec_5(ahead) == 4 && (*(v7 + 32) = archive_le32dec_8(ahead + 24), *(v7 + 48) = archive_le32dec_8(ahead + 7), *(v7 + 56) = archive_le32dec_8(ahead + 11), *(v7 + 88) = archive_le32dec_8(ahead + 15), *(v7 + 194) = archive_le16dec_5(ahead + 21), *(v7 + 64) |= 8u, *(v7 + 32) >= 0x20uLL))
    {
      v3 = lha_crc16(0, ahead, 0x1CuLL);
      __archive_read_consume(v8, 28);
      v4 = lha_read_file_extended_header(v8, v7, &v3, 4, *(v7 + 32) - 28, &v5);
      if (v4 >= -20)
      {
        if (v3 == *(v7 + 192))
        {
          return v4;
        }

        else
        {
          archive_set_error(v8, 79, "LHa header CRC error");
          return -30;
        }
      }

      else
      {
        return v4;
      }
    }

    else
    {
      archive_set_error(v8, 79, "Invalid LHa header");
      return -30;
    }
  }

  else
  {
    return truncated_error_0(v8);
  }
}

uint64_t lha_parse_linkname(void *a1, uint64_t a2)
{
  v4 = wcschr(*a2, 124);
  if (v4)
  {
    v3 = wcslen(v4 + 1);
    a1[1] = 0;
    archive_wstrncat(a1, v4 + 1, v3);
    *v4 = 0;
    *(a2 + 8) = wcslen(*a2);
    return 1;
  }

  else
  {
    return 0;
  }
}

const __int32 *lha_replace_path_separator(uint64_t a1, void *a2)
{
  v7 = archive_entry_pathname_w(a2);
  if (v7)
  {
    *(a1 + 280) = 0;
    v4 = wcslen(v7);
    archive_wstrncat((a1 + 272), v7, v4);
    for (i = 0; i < *(a1 + 280); ++i)
    {
      if (*(*(a1 + 272) + 4 * i) == 92)
      {
        *(*(a1 + 272) + 4 * i) = 47;
      }
    }

    archive_entry_copy_pathname_w(a2, *(a1 + 272));
  }

  result = archive_entry_symlink_w(a2);
  v8 = result;
  if (result)
  {
    *(a1 + 280) = 0;
    v3 = wcslen(result);
    archive_wstrncat((a1 + 272), v8, v3);
    for (j = 0; j < *(a1 + 280); ++j)
    {
      if (*(*(a1 + 272) + 4 * j) == 92)
      {
        *(*(a1 + 272) + 4 * j) = 47;
      }
    }

    return archive_entry_copy_symlink_w(a2, *(a1 + 272));
  }

  return result;
}

time_t lha_dos_time(unsigned __int8 *a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = archive_le16dec_5(v5);
  v3 = archive_le16dec_5(v5 + 2);
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

uint64_t lha_calcsum(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = (a2 + a3);
  while (a4)
  {
    v4 = v6++;
    a1 += *v4;
    --a4;
  }

  return a1;
}

uint64_t lha_read_file_extended_header(_DWORD *a1, uint64_t a2, unsigned __int16 *a3, int a4, unint64_t a5, void *a6)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = a4;
  v54 = a5;
  v53 = a6;
  ahead = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  i = 0;
  v47 = 0;
  *a6 = a4;
  while (1)
  {
    ahead = __archive_read_ahead(v58, v55, 0);
    if (!ahead)
    {
      return truncated_error_0(v58);
    }

    v50 = v55 == 2 ? archive_le16dec_5(ahead) : archive_le32dec_8(ahead);
    if (!v50)
    {
      break;
    }

    if (*v53 + v50 > v54 || v50 <= v55)
    {
      goto LABEL_116;
    }

    ahead = __archive_read_ahead(v58, v50, 0);
    if (!ahead)
    {
      return truncated_error_0(v58);
    }

    *v53 += v50;
    v51 = ahead;
    v47 = ahead[v55];
    v49 = v50 - (v55 + 1);
    v51 = &ahead[v55 + 1];
    if (v56 && v47)
    {
      v7 = lha_crc16(*v56, ahead, v50);
      *v56 = v7;
    }

    if (v47)
    {
      switch(v47)
      {
        case 1u:
          if (v49)
          {
            if (!*v51)
            {
              goto LABEL_116;
            }

            *(v57 + 256) = 0;
            archive_strncat((v57 + 248), v51, v49);
          }

          else
          {
            *(v57 + 256) = 0;
          }

          break;
        case 2u:
          if (!v49 || !*v51)
          {
            goto LABEL_116;
          }

          *(v57 + 232) = 0;
          archive_strncat((v57 + 224), v51, v49);
          for (i = 0; i < *(v57 + 232); ++i)
          {
            if (*(*(v57 + 224) + i) == 255)
            {
              *(*(v57 + 224) + i) = 47;
            }
          }

          if (*(*(v57 + 224) + *(v57 + 232) - 1) != 47)
          {
            goto LABEL_116;
          }

          break;
        case 0x40u:
          if (v49 == 2)
          {
            v14 = archive_le16dec_5(v51);
            *(v57 + 296) = v14;
          }

          break;
        case 0x41u:
          if (v49 == 24)
          {
            v15 = archive_le64dec_3(v51);
            v16 = lha_win_time(v15, (v57 + 80));
            *(v57 + 72) = v16;
            v51 += 8;
            v17 = archive_le64dec_3(v51);
            v18 = lha_win_time(v17, (v57 + 96));
            *(v57 + 88) = v18;
            v51 += 8;
            v19 = archive_le64dec_3(v51);
            v20 = lha_win_time(v19, (v57 + 112));
            *(v57 + 104) = v20;
            *(v57 + 64) |= 3u;
          }

          break;
        case 0x42u:
          if (v49 == 16)
          {
            v21 = archive_le64dec_3(v51);
            *(v57 + 48) = v21;
            v51 += 8;
            v22 = archive_le64dec_3(v51);
            *(v57 + 56) = v22;
          }

          break;
        default:
          if (v47 != 67)
          {
            switch(v47)
            {
              case 'D':
                if (v49)
                {
                  if ((v49 & 1) != 0 || !*v51)
                  {
                    goto LABEL_116;
                  }

                  *(v57 + 256) = 0;
                  archive_array_append((v57 + 248), v51, v49);
                  v12 = archive_string_conversion_from_charset(v58, "UTF-16LE", 1);
                  *(v57 + 208) = v12;
                  if (!*(v57 + 208))
                  {
                    return -30;
                  }
                }

                else
                {
                  *(v57 + 256) = 0;
                }

                break;
              case 'E':
                if (!v49 || (v49 & 1) != 0 || !*v51)
                {
                  goto LABEL_116;
                }

                *(v57 + 232) = 0;
                archive_array_append((v57 + 224), v51, v49);
                v13 = archive_string_conversion_from_charset(v58, "UTF-16LE", 1);
                *(v57 + 200) = v13;
                if (!*(v57 + 200))
                {
                  return -30;
                }

                v46 = 0;
                v45 = 1;
                v46 = archive_be16dec_1(&v45) == 1 ? 12032 : 47;
                v44 = *(v57 + 224);
                for (i = 0; i < *(v57 + 232) / 2uLL; ++i)
                {
                  if (*(v44 + 2 * i) == 0xFFFF)
                  {
                    *(v44 + 2 * i) = v46;
                  }
                }

                if (*(v44 + 2 * (*(v57 + 232) / 2uLL - 1)) != v46)
                {
LABEL_116:
                  archive_set_error(v58, 79, "Invalid extended LHa header");
                  return -30;
                }

                break;
              case 'F':
                if (v49 == 4)
                {
                  memset(v43, 0, sizeof(v43));
                  if (archive_le32dec_8(v51) == 65001)
                  {
                    v42 = "UTF-8";
                  }

                  else
                  {
                    v23 = archive_le32dec_8(v51);
                    archive_string_sprintf(v43, "CP%d", v23);
                    v42 = v43[0];
                  }

                  v24 = archive_string_conversion_from_charset(v58, v42, 1);
                  *(v57 + 200) = v24;
                  v25 = archive_string_conversion_from_charset(v58, v42, 1);
                  *(v57 + 208) = v25;
                  archive_string_free(v43);
                  if (!*(v57 + 200))
                  {
                    return -30;
                  }

                  if (!*(v57 + 208))
                  {
                    return -30;
                  }
                }

                break;
              case 'P':
                if (v49 == 2)
                {
                  v26 = archive_le16dec_5(v51);
                  *(v57 + 120) = v26;
                  *(v57 + 64) |= 4u;
                }

                break;
              case 'Q':
                if (v49 == 4)
                {
                  v27 = archive_le16dec_5(v51);
                  *(v57 + 136) = v27;
                  v28 = archive_le16dec_5(v51 + 2);
                  *(v57 + 128) = v28;
                }

                break;
              case 'R':
                if (v49)
                {
                  *(v57 + 176) = 0;
                  archive_strncat((v57 + 168), v51, v49);
                }

                break;
              case 'S':
                if (v49)
                {
                  *(v57 + 152) = 0;
                  archive_strncat((v57 + 144), v51, v49);
                }

                break;
              case 'T':
                if (v49 == 4)
                {
                  v29 = archive_le32dec_8(v51);
                  *(v57 + 88) = v29;
                }

                break;
              case '\x7F':
                if (v49 == 16)
                {
                  v30 = archive_le16dec_5(v51);
                  *(v57 + 296) = v30;
                  v31 = archive_le16dec_5(v51 + 2);
                  *(v57 + 120) = v31;
                  v32 = archive_le16dec_5(v51 + 4);
                  *(v57 + 136) = v32;
                  v33 = archive_le16dec_5(v51 + 6);
                  *(v57 + 128) = v33;
                  v34 = archive_le32dec_8(v51 + 8);
                  *(v57 + 72) = v34;
                  v35 = archive_le32dec_8(v51 + 12);
                  *(v57 + 104) = v35;
                  *(v57 + 64) |= 7u;
                }

                break;
              default:
                if (v47 == 255 && v49 == 20)
                {
                  v36 = archive_le32dec_8(v51);
                  *(v57 + 120) = v36;
                  v37 = archive_le32dec_8(v51 + 4);
                  *(v57 + 136) = v37;
                  v38 = archive_le32dec_8(v51 + 8);
                  *(v57 + 128) = v38;
                  v39 = archive_le32dec_8(v51 + 12);
                  *(v57 + 72) = v39;
                  v40 = archive_le32dec_8(v51 + 16);
                  *(v57 + 104) = v40;
                  *(v57 + 64) |= 7u;
                }

                break;
            }
          }

          break;
      }
    }

    else if (v49 >= 2)
    {
      v8 = archive_le16dec_5(v51);
      *(v57 + 192) = v8;
      if (v56)
      {
        v9 = lha_crc16(*v56, ahead, v50 - v49);
        *v56 = v9;
        v10 = lha_crc16(*v56, lha_read_file_extended_header_zeros, 2uLL);
        *v56 = v10;
        v11 = lha_crc16(*v56, v51 + 2, v49 - 2);
        *v56 = v11;
      }
    }

    __archive_read_consume(v58, v50);
  }

  if (v56)
  {
    v6 = lha_crc16(*v56, ahead, v55);
    *v56 = v6;
  }

  __archive_read_consume(v58, v55);
  return 0;
}

uint64_t lha_crc16(unsigned __int16 a1, _BYTE *a2, unint64_t a3)
{
  v10 = a1;
  v9 = a3;
  v7 = a2;
  if (a3)
  {
    if (a2)
    {
      v7 = a2 + 1;
      v10 = crc16tbl[(a1 ^ *a2)] ^ (a1 >> 8);
      v9 = a3 - 1;
    }

    v6 = v7;
    while (v9 >= 8)
    {
      v11 = crc16tbl[(v10 ^ *v6) + 256] ^ crc16tbl[(v10 ^ *v6) >> 8] ^ *(v6 + 1);
      v12 = crc16tbl[v11 + 256] ^ crc16tbl[v11 >> 8] ^ *(v6 + 2);
      v3 = v6 + 6;
      v6 += 8;
      v13 = crc16tbl[v12 + 256] ^ crc16tbl[v12 >> 8] ^ *v3;
      v10 = crc16tbl[v13 + 256] ^ crc16tbl[v13 >> 8];
      v9 -= 8;
    }

    v8 = v6;
    while (v9)
    {
      v4 = v8++;
      v10 = crc16tbl[(v10 ^ *v4)] ^ (v10 >> 8);
      --v9;
    }

    return v10;
  }

  else
  {
    return a1;
  }
}

unint64_t lha_win_time(unint64_t a1, void *a2)
{
  if (a1 < 0x19DB1DED53E8000)
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 0;
  }

  else
  {
    v3 = a1 - 116444736000000000;
    if (a2)
    {
      *a2 = 100 * (v3 % 0x989680);
    }

    return v3 / 0x989680;
  }
}

uint64_t lha_end_of_entry(uint64_t a1)
{
  v3 = **(a1 + 2072);
  v2 = 1;
  if (!*(v3 + 301))
  {
    if ((*(v3 + 64) & 8) != 0 && *(v3 + 194) != *(v3 + 24))
    {
      archive_set_error(a1, -1, "LHa data CRC error");
      v2 = -20;
    }

    *(v3 + 301) = 1;
  }

  return v2;
}

uint64_t lha_read_data_lzh(uint64_t a1, _BYTE **a2, unint64_t *a3, void *a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = **(a1 + 2072);
  v9 = 0;
  if (!*(v10 + 299))
  {
    v8 = lzh_decode_init(v10 + 368, (v10 + 41));
    if (v8 == -25)
    {
      *v13 = 0;
      *v12 = 0;
      *v11 = 0;
      archive_set_error(v14, 79, "Unsupported lzh compression method -%c%c%c-", *(v10 + 41), *(v10 + 42), *(v10 + 43));
      archive_read_format_lha_read_data_skip(v14);
      return -20;
    }

    if (v8)
    {
      archive_set_error(v14, 12, "Couldn't allocate memory for lzh decompression");
      return -30;
    }

    *(v10 + 299) = 1;
    *(v10 + 400) = 0;
    *(v10 + 408) = 0;
  }

  v4 = __archive_read_ahead(v14, 1uLL, &v9);
  *(v10 + 368) = v4;
  if (v9 > 0)
  {
    if (v9 > *(v10 + 8))
    {
      v9 = *(v10 + 8);
    }

    *(v10 + 376) = v9;
    *(v10 + 384) = 0;
    *(v10 + 400) = 0;
    v7 = lzh_decode(v10 + 368, v9 == *(v10 + 8));
    if (v7)
    {
      if (v7 != 1)
      {
        archive_set_error(v14, -1, "Bad lzh data");
        return -25;
      }

      *(v10 + 300) = 1;
    }

    *(v10 + 16) = *(v10 + 384);
    *(v10 + 8) -= *(v10 + 384);
    if (*(v10 + 400))
    {
      *v11 = *v10;
      *v12 = *(v10 + 400);
      *v13 = *(v10 + 392);
      v5 = lha_crc16(*(v10 + 24), *v13, *v12);
      *(v10 + 24) = v5;
      *v10 += *v12;
    }

    else
    {
      *v11 = *v10;
      *v12 = 0;
      *v13 = 0;
      if (*(v10 + 300))
      {
        return lha_end_of_entry(v14);
      }
    }

    return 0;
  }

  archive_set_error(v14, 79, "Truncated LHa file body");
  return -30;
}

uint64_t lha_read_data_none(uint64_t a1, uint64_t *a2, int64_t *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = **(a1 + 2072);
  v7 = 0;
  if (*(v8 + 8))
  {
    v4 = __archive_read_ahead(v12, 1uLL, &v7);
    *v11 = v4;
    if (v7 > 0)
    {
      if (v7 > *(v8 + 8))
      {
        v7 = *(v8 + 8);
      }

      v5 = lha_crc16(*(v8 + 24), *v11, v7);
      *(v8 + 24) = v5;
      *v10 = v7;
      *v9 = *v8;
      *v8 += v7;
      *(v8 + 8) -= v7;
      if (!*(v8 + 8))
      {
        *(v8 + 300) = 1;
      }

      *(v8 + 16) = v7;
      return 0;
    }

    else
    {
      archive_set_error(v12, 79, "Truncated LHa file data");
      return -30;
    }
  }

  else
  {
    *v11 = 0;
    *v10 = 0;
    *v9 = *v8;
    *(v8 + 300) = 1;
    return 0;
  }
}

uint64_t lzh_decode_init(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48) || (*(a1 + 48) = malloc_type_calloc(1uLL, 0x158uLL, 0x103004074F3FEA5uLL)) != 0)
  {
    v7 = *(a1 + 48);
    *(v7 + 340) = -25;
    if (a2 && *a2 == 108 && a2[1] == 104)
    {
      v5 = a2[2];
      switch(v5)
      {
        case '5':
          v6 = 13;
          break;
        case '6':
          v6 = 15;
          break;
        case '7':
          v6 = 16;
          break;
        default:
          return -25;
      }

      *(v7 + 340) = -30;
      *(v7 + 4) = 0x20000;
      *(v7 + 8) = *(v7 + 4) - 1;
      if (*(v7 + 16) || (*(v7 + 16) = malloc_type_malloc(*(v7 + 4), 0xCAA4F8B8uLL)) != 0)
      {
        __memset_chk();
        *(v7 + 24) = 0;
        *v7 = 0;
        *(v7 + 316) = v6 + 1;
        v4 = 1;
        if (v6 != 15)
        {
          v4 = v6 == 16;
        }

        if (v4)
        {
          v2 = 5;
        }

        else
        {
          v2 = 4;
        }

        *(v7 + 320) = v2;
        *(v7 + 324) = 19;
        *(v7 + 328) = 5;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        if (lzh_huffman_init(v7 + 56, 0x1FEuLL, 16))
        {
          return -30;
        }

        else
        {
          *(v7 + 64) = 9;
          if (lzh_huffman_init(v7 + 184, 0x13uLL, 16))
          {
            return -30;
          }

          else
          {
            *(v7 + 340) = 0;
            return 0;
          }
        }
      }

      else
      {
        return -30;
      }
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t lzh_decode(uint64_t a1, int a2)
{
  v5 = *(a1 + 48);
  if (*(v5 + 340))
  {
    return *(v5 + 340);
  }

  else
  {
    v4 = *(a1 + 8);
    do
    {
      if (*v5 >= 9)
      {
        blocks = lzh_decode_blocks(a1, a2);
      }

      else
      {
        blocks = lzh_read_blocks(a1, a2);
      }
    }

    while (blocks == 100);
    *(a1 + 16) += v4 - *(a1 + 8);
    return blocks;
  }
}

uint64_t lzh_huffman_init(uint64_t a1, size_t a2, int a3)
{
  v6 = a2;
  if (*(a1 + 80) || (*(a1 + 80) = malloc_type_malloc(a2, 0x100004077774924uLL)) != 0)
  {
    if (*(a1 + 112) || (a3 >= 10 ? (v4 = 10) : (v4 = a3), (*(a1 + 112) = malloc_type_malloc(2 * (1 << v4), 0x1000040BDFB0063uLL)) != 0))
    {
      if (*(a1 + 120) || a3 <= 10 || (*(a1 + 104) = 1 << (a3 - 6), (*(a1 + 120) = malloc_type_malloc(4 * *(a1 + 104), 0x100004052888210uLL)) != 0))
      {
        *a1 = v6;
        *(a1 + 96) = a3;
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

  else
  {
    return -30;
  }
}

uint64_t lzh_read_blocks(uint64_t a1, int a2)
{
  v20 = *(a1 + 48);
  v19 = (v20 + 10);
  while (1)
  {
    v10 = *v20;
    if (!*v20)
    {
      break;
    }

    switch(v10)
    {
      case 1:
        goto LABEL_23;
      case 2:
LABEL_29:
        if (v20[47])
        {
          if (v20[47] > v20[46])
          {
            goto LABEL_112;
          }

          v20[84] = 0;
          __memset_chk();
          if (v20[47] >= 3 && v20[46] != v20[79])
          {
            goto LABEL_43;
          }

          *v20 = 4;
        }

        else
        {
          if (v20[12] < v20[48] && !lzh_br_fillup(a1, v19) && v20[12] < v20[48])
          {
            if (!a2)
            {
              *v20 = 2;
              return 0;
            }

            goto LABEL_112;
          }

          if (!lzh_make_fake_table((v20 + 46), (*(v20 + 5) >> (v20[12] - v20[48])) & cache_masks_0[v20[48]]))
          {
            goto LABEL_112;
          }

          v20[12] -= v20[48];
          if (v20[83])
          {
            *v20 = 9;
          }

          else
          {
            *v20 = 5;
          }
        }

        break;
      case 3:
LABEL_43:
        v20[84] = lzh_read_pt_bitlen(a1, v20[84], 3);
        if (v20[84] < 3)
        {
          if ((v20[84] & 0x80000000) == 0 && !a2)
          {
            *v20 = 3;
            return 0;
          }

          goto LABEL_112;
        }

        if (v20[12] < 2 && !lzh_br_fillup(a1, v19) && v20[12] < 2)
        {
          if (!a2)
          {
            *v20 = 3;
            return 0;
          }

          goto LABEL_112;
        }

        v14 = (*(v20 + 5) >> (v20[12] - 2)) & 3;
        v20[12] -= 2;
        if (v14 > v20[47] - 3)
        {
          goto LABEL_112;
        }

        for (i = 3; ; ++i)
        {
          v2 = v14--;
          if (v2 <= 0)
          {
            break;
          }

          v3 = i;
          *(*(v20 + 33) + v3) = 0;
        }

        v20[84] = i;
LABEL_58:
        v20[84] = lzh_read_pt_bitlen(a1, v20[84], v20[47]);
        if (v20[84] < v20[47])
        {
          if ((v20[84] & 0x80000000) == 0 && !a2)
          {
            *v20 = 4;
            return 0;
          }

          goto LABEL_112;
        }

        if (!lzh_make_huffman_table((v20 + 46)))
        {
          goto LABEL_112;
        }

        if (!v20[83])
        {
          goto LABEL_67;
        }

        *v20 = 9;
        break;
      case 4:
        goto LABEL_58;
      case 5:
LABEL_67:
        if (v20[12] < v20[16] && !lzh_br_fillup(a1, v19) && v20[12] < v20[16])
        {
          if (!a2)
          {
            *v20 = 5;
            return 0;
          }

          goto LABEL_112;
        }

        v20[15] = ((*(v20 + 5) >> (v20[12] - v20[16])) & cache_masks_0[v20[16]]);
        v20[12] -= v20[16];
LABEL_73:
        if (v20[15])
        {
          if (v20[15] <= v20[14])
          {
            v20[84] = 0;
            __memset_chk();
LABEL_83:
            v13 = v20[84];
            while (v13 < v20[15])
            {
              if (v20[12] < v20[68] && !lzh_br_fillup(a1, v19) && v20[12] < v20[68])
              {
                if (a2)
                {
                  goto LABEL_112;
                }

                v20[84] = v13;
                *v20 = 7;
                return 0;
              }

              v15 = lzh_decode_huffman((v20 + 46), ((*(v20 + 5) >> (v20[12] - v20[68])) & cache_masks_0[v20[68]]));
              if (v15 <= 2)
              {
                if (v15)
                {
                  if (v15 == 1)
                  {
                    v7 = 4;
                  }

                  else
                  {
                    v7 = 9;
                  }

                  v11 = v7;
                  if (v20[12] < *(*(v20 + 33) + v15) + v7 && !lzh_br_fillup(a1, v19) && v20[12] < *(*(v20 + 33) + v15) + v11)
                  {
                    if (a2)
                    {
                      goto LABEL_112;
                    }

                    v20[84] = v13;
                    *v20 = 7;
                    return 0;
                  }

                  v20[12] -= *(*(v20 + 33) + v15);
                  v17 = ((*(v20 + 5) >> (v20[12] - v11)) & cache_masks_0[v11]);
                  v20[12] -= v11;
                  if (v11 == 4)
                  {
                    v8 = 3;
                  }

                  else
                  {
                    v8 = 20;
                  }

                  v18 = v17 + v8;
                  if (v13 + v18 > v20[15])
                  {
                    goto LABEL_112;
                  }

                  __memset_chk();
                  v13 += v18;
                }

                else
                {
                  v20[12] -= **(v20 + 33);
                  v6 = v13++;
                  *(*(v20 + 17) + v6) = 0;
                }
              }

              else
              {
                v20[12] -= *(*(v20 + 33) + v15);
                v16 = v15 - 2;
                ++v20[v16 + 17];
                v5 = v13++;
                *(*(v20 + 17) + v5) = v16;
              }
            }

            if (v13 <= v20[15] && lzh_make_huffman_table((v20 + 14)))
            {
              goto LABEL_110;
            }
          }

LABEL_112:
          v20[85] = -25;
          return -25;
        }

        if (v20[12] < v20[16] && !lzh_br_fillup(a1, v19) && v20[12] < v20[16])
        {
          if (!a2)
          {
            *v20 = 6;
            return 0;
          }

          goto LABEL_112;
        }

        if (!lzh_make_fake_table((v20 + 14), (*(v20 + 5) >> (v20[12] - v20[16])) & cache_masks_0[v20[16]]))
        {
          goto LABEL_112;
        }

        v20[12] -= v20[16];
        *v20 = 8;
        break;
      case 6:
        goto LABEL_73;
      case 7:
        goto LABEL_83;
      case 8:
LABEL_110:
        v20[46] = v20[79];
        v20[48] = v20[80];
        v20[83] = 1;
        *v20 = 1;
        break;
      case 9:
        return 100;
    }
  }

  if (v20[12] >= 16 || lzh_br_fillup(a1, v19))
  {
    v20[78] = (*(v20 + 5) >> (v20[12] - 16));
    if (!v20[78])
    {
      goto LABEL_112;
    }

    v20[12] -= 16;
    v20[46] = v20[81];
    v20[48] = v20[82];
    v20[83] = 0;
LABEL_23:
    if (v20[12] < v20[48] && !lzh_br_fillup(a1, v19) && v20[12] < v20[48])
    {
      if (!a2)
      {
        *v20 = 1;
        return 0;
      }

      goto LABEL_112;
    }

    v20[47] = ((*(v20 + 5) >> (v20[12] - v20[48])) & cache_masks_0[v20[48]]);
    v20[12] -= v20[48];
    goto LABEL_29;
  }

  if (!a2)
  {
    return 0;
  }

  if (v20[12] >= 8)
  {
    goto LABEL_112;
  }

  if (v20[6] <= 0)
  {
    return 1;
  }

  else
  {
    lzh_emit_window(a1, v20[6]);
    v20[6] = 0;
    return 0;
  }
}

uint64_t lzh_decode_blocks(uint64_t a1, int a2)
{
  v27 = a1;
  v26 = a2;
  v25 = *(a1 + 48);
  v24 = 0uLL;
  v24 = *(v25 + 40);
  v23 = v25 + 56;
  v22 = v25 + 184;
  v21 = *(v25 + 16);
  v20 = *(v25 + 136);
  v19 = *(v25 + 264);
  v18 = *(v25 + 312);
  v16 = *(v25 + 32);
  i = *(v25 + 28);
  v14 = *(v25 + 24);
  v13 = *(v25 + 8);
  v12 = *(v25 + 4);
  v11 = *(v25 + 144);
  v10 = *(v25 + 272);
  v9 = *v25;
  while (1)
  {
LABEL_2:
    if (v9 == 9)
    {
      do
      {
        if (!v18)
        {
          *v25 = 0;
          *(v25 + 40) = v24;
          *(v25 + 312) = 0;
          *(v25 + 24) = v14;
          *(v25 + 28) = 0;
          return 100;
        }

        if (SDWORD2(v24) >= v11 || lzh_br_fillup(v27, &v24) || SDWORD2(v24) >= v11)
        {
          v17 = lzh_decode_huffman(v23, (v24 >> (BYTE8(v24) - v11)) & cache_masks_0[v11]);
          DWORD2(v24) -= *(v20 + v17);
        }

        else
        {
          if (!v26)
          {
            goto LABEL_59;
          }

          v17 = lzh_decode_huffman(v23, ((v24 << (v11 - BYTE8(v24))) & cache_masks_0[v11]));
          DWORD2(v24) -= *(v20 + v17);
          if ((DWORD2(v24) & 0x80000000) != 0)
          {
            goto LABEL_58;
          }
        }

        --v18;
        if (v17 > 255)
        {
          v16 = v17 - 253;
          goto LABEL_21;
        }

        *(v21 + v14++) = v17;
      }

      while (v14 < v12);
      v14 = 0;
      lzh_emit_window(v27, v12);
      goto LABEL_59;
    }

    if (v9 == 10)
    {
      break;
    }

    if (v9 == 11)
    {
      goto LABEL_29;
    }

    if (v9 == 12)
    {
      goto LABEL_37;
    }
  }

LABEL_21:
  if (SDWORD2(v24) >= v10 || lzh_br_fillup(v27, &v24) || SDWORD2(v24) >= v10)
  {
    i = lzh_decode_huffman(v22, (v24 >> (BYTE8(v24) - v10)) & cache_masks_0[v10]);
    DWORD2(v24) -= *(v19 + i);
    goto LABEL_29;
  }

  if (v26)
  {
    i = lzh_decode_huffman(v22, ((v24 << (v10 - BYTE8(v24))) & cache_masks_0[v10]));
    DWORD2(v24) -= *(v19 + i);
    if ((DWORD2(v24) & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_29:
    if (i > 1)
    {
      v8 = i - 1;
      if (SDWORD2(v24) < i - 1 && !lzh_br_fillup(v27, &v24) && SDWORD2(v24) < v8)
      {
        if (!v26)
        {
          v9 = 11;
          *(v25 + 32) = v16;
          *(v25 + 28) = i;
          goto LABEL_59;
        }

LABEL_58:
        *(v25 + 340) = -25;
        return -25;
      }

      i = (1 << v8) + ((v24 >> (BYTE8(v24) - v8)) & cache_masks_0[v8]);
      DWORD2(v24) -= v8;
    }

    for (i = (v14 - i - 1) & v13; ; i = (i + v7) & v13)
    {
LABEL_37:
      v7 = v16;
      if (i <= v14)
      {
        if (v16 > v12 - v14)
        {
          v7 = v12 - v14;
        }
      }

      else if (v16 > v12 - i)
      {
        v7 = v12 - i;
      }

      if (i + v7 >= v14 && v14 + v7 >= i)
      {
        v5 = v21 + v14;
        v6 = v21 + i;
        for (j = 0; j < v7 - 1; j = v4 + 1)
        {
          *(v5 + j) = *(v6 + j);
          v4 = j + 1;
          *(v5 + v4) = *(v6 + v4);
        }

        if (j < v7)
        {
          *(v5 + j) = *(v6 + j);
        }
      }

      else
      {
        __memcpy_chk();
      }

      v14 += v7;
      if (v14 == v12)
      {
        break;
      }

      if (v16 <= v7)
      {
        v9 = 9;
        goto LABEL_2;
      }

      v16 -= v7;
    }

    v14 = 0;
    lzh_emit_window(v27, v12);
    if (v16 > v7)
    {
      v9 = 12;
      *(v25 + 32) = v16 - v7;
      *(v25 + 28) = (i + v7) & v13;
    }

    else
    {
      v9 = 9;
    }

    goto LABEL_59;
  }

  v9 = 10;
  *(v25 + 32) = v16;
LABEL_59:
  *(v25 + 40) = v24;
  *(v25 + 312) = v18;
  *v25 = v9;
  *(v25 + 24) = v14;
  return 0;
}

uint64_t lzh_br_fillup(_DWORD *a1, unint64_t *a2)
{
  for (i = 64 - *(a2 + 2); ; i -= 8)
  {
    v5 = i >> 3;
    if (a1[2] >= i >> 3)
    {
      switch(v5)
      {
        case 0:
          return 1;
        case 6:
          *a2 = (**a1 << 40) | (*a2 << 48) | (*(*a1 + 1) << 32) | (*(*a1 + 2) << 24) | (*(*a1 + 3) << 16) | (*(*a1 + 4) << 8) | *(*a1 + 5);
          *a1 += 6;
          a1[2] -= 6;
          *(a2 + 2) += 48;
          return 1;
        case 7:
          *a2 = (**a1 << 48) | (*a2 << 56) | (*(*a1 + 1) << 40) | (*(*a1 + 2) << 32) | (*(*a1 + 3) << 24) | (*(*a1 + 4) << 16) | (*(*a1 + 5) << 8) | *(*a1 + 6);
          *a1 += 7;
          a1[2] -= 7;
          *(a2 + 2) += 56;
          return 1;
        case 8:
          *a2 = _byteswap_uint64(**a1);
          *a1 += 8;
          a1[2] -= 8;
          *(a2 + 2) += 64;
          return 1;
      }
    }

    if (!a1[2])
    {
      break;
    }

    v2 = *a2;
    v3 = (*a1)++;
    *a2 = *v3 | (v2 << 8);
    --a1[2];
    *(a2 + 2) += 8;
  }

  return 0;
}

uint64_t lzh_emit_window(uint64_t result, uint64_t a2)
{
  *(result + 24) = *(*(result + 48) + 16);
  *(result + 32) = a2;
  *(result + 40) += a2;
  return result;
}

uint64_t lzh_make_fake_table(uint64_t a1, unsigned __int16 a2)
{
  if (a2 < *a1)
  {
    **(a1 + 112) = a2;
    *(a1 + 88) = 0;
    *(a1 + 92) = 0;
    *(*(a1 + 80) + **(a1 + 112)) = 0;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lzh_read_pt_bitlen(uint64_t a1, int a2, int a3)
{
  v9 = *(a1 + 48);
  v8 = (v9 + 40);
  while (a2 < a3)
  {
    if (*(v9 + 48) < 3 && !lzh_br_fillup(a1, v8) && *(v9 + 48) < 3)
    {
      return a2;
    }

    v7 = (*(v9 + 40) >> (*(v9 + 48) - 3)) & 7;
    if (v7 == 7)
    {
      if (*(v9 + 48) < 13 && !lzh_br_fillup(a1, v8) && *(v9 + 48) < 13)
      {
        return a2;
      }

      v3 = *(v9 + 48) - 13;
      v7 = bitlen_tbl[(*v8 >> v3) & 0x3FF];
      if (!bitlen_tbl[(*v8 >> v3) & 0x3FF])
      {
        return -1;
      }

      *(v9 + 48) -= v7 - 3;
    }

    else
    {
      *(v9 + 48) -= 3;
    }

    v4 = a2++;
    *(*(v9 + 264) + v4) = v7;
    ++*(v9 + 196 + 4 * v7);
  }

  return a2;
}

uint64_t lzh_make_huffman_table(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0;
  v27 = 1;
  v23 = 0x8000;
  while (v27 <= 16)
  {
    v35[v27 + 17] = v24;
    v35[v27] = v23;
    if (*(a1 + 12 + 4 * v27))
    {
      v24 += *(a1 + 12 + 4 * v27) * v23;
      v26 = v27;
    }

    ++v27;
    v23 >>= 1;
  }

  if (v24 != 0x10000 || v26 > *(a1 + 96))
  {
    return 0;
  }

  *(a1 + 88) = v26;
  if (v26 < 16)
  {
    v20 = 16 - v26;
    for (i = 1; i <= v26; ++i)
    {
      v35[i + 17] = v35[i + 17] >> v20;
      v35[i] = v35[i] >> v20;
    }
  }

  if (v26 <= 10)
  {
    v22 = 0;
  }

  else
  {
    v22 = v26 - 10;
    for (j = 1; j <= 10; ++j)
    {
      v35[j + 17] = v35[j + 17] >> v22;
      v35[j] = v35[j] >> v22;
    }

    for (k = *(a1 + 112) + 2 * (v35[27] + v35[10] * *(a1 + 52)); k < *(a1 + 112) + 2048; k += 2)
    {
      v1 = k;
      *v1 = 0;
    }
  }

  *(a1 + 92) = v22;
  v32 = *(a1 + 112);
  v31 = *(a1 + 80);
  v21 = *(a1 + 4);
  *(a1 + 100) = 0;
  for (m = 0; ; ++m)
  {
    if (m >= v21)
    {
      return 1;
    }

    if (*(v31 + m))
    {
      break;
    }

LABEL_69:
    ;
  }

  v16 = *(v31 + m);
  v25 = v35[*(v31 + m) + 17];
  v13 = v35[*(v31 + m)];
  if (v16 <= 0xA)
  {
    v35[*(v31 + m) + 17] = v25 + v13;
    if (v25 + v13 > 1024)
    {
      return 0;
    }

    v17 = v32 + 2 * v25;
    if (v13 <= 7)
    {
      while (v13 > 1)
      {
        v15 = v13 - 1;
        *(v17 + 2 * v15) = m;
        v13 = v15 - 1;
        *(v17 + 2 * v13) = m;
      }

      if (v13)
      {
        *(v17 + 2 * (v13 - 1)) = m;
      }
    }

    else
    {
      v14 = v13 - 8;
      v9 = (v17 + 2 * v14);
      *v9 = m;
      v9[1] = m;
      v9[2] = m;
      v9[3] = m;
      v9[4] = m;
      v9[5] = m;
      v9[6] = m;
      v9[7] = m;
      if (v14 > 7)
      {
        v14 -= 8;
        __memcpy_chk();
        while (v14 > 15)
        {
          v14 -= 16;
          __memcpy_chk();
        }
      }

      if (v14)
      {
        __memcpy_chk();
      }
    }

    goto LABEL_69;
  }

  v35[*(v31 + m) + 17] = v25 + v13;
  v12 = 1 << (v22 - 1);
  v11 = v16 - 10;
  v18 = (v32 + 2 * (v25 >> v22));
  if (*v18)
  {
    if (*v18 < v21 || *v18 >= v21 + *(a1 + 100))
    {
      return 0;
    }

    v10 = (*(a1 + 120) + 4 * (*v18 - v21));
LABEL_49:
    while (--v11 > 0)
    {
      if ((v25 & v12) != 0)
      {
        if (*v10 < v21)
        {
          *v10 = v21 + *(a1 + 100);
          v4 = *(a1 + 120);
          v5 = (*(a1 + 100))++;
          v10 = (v4 + 4 * v5);
          if (*(a1 + 100) > *(a1 + 104))
          {
            return 0;
          }

          *v10 = 0;
          v10[1] = 0;
        }

        else
        {
          v10 = (*(a1 + 120) + 4 * (*v10 - v21));
        }
      }

      else if (v10[1] < v21)
      {
        v10[1] = v21 + *(a1 + 100);
        v6 = *(a1 + 120);
        v7 = (*(a1 + 100))++;
        v10 = (v6 + 4 * v7);
        if (*(a1 + 100) > *(a1 + 104))
        {
          return 0;
        }

        *v10 = 0;
        v10[1] = 0;
      }

      else
      {
        v10 = (*(a1 + 120) + 4 * (v10[1] - v21));
      }

      v12 = v12 >> 1;
    }

    if ((v25 & v12) != 0)
    {
      if (*v10)
      {
        return 0;
      }

      *v10 = m;
    }

    else
    {
      if (v10[1])
      {
        return 0;
      }

      v10[1] = m;
    }

    goto LABEL_69;
  }

  *v18 = v21 + *(a1 + 100);
  v2 = *(a1 + 120);
  v3 = (*(a1 + 100))++;
  v10 = (v2 + 4 * v3);
  if (*(a1 + 100) <= *(a1 + 104))
  {
    *v10 = 0;
    v10[1] = 0;
    goto LABEL_49;
  }

  return 0;
}

uint64_t lzh_decode_huffman(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 112) + 2 * (a2 >> *(a1 + 92)));
  if (v3 >= *(a1 + 4) && *(a1 + 4))
  {
    return lzh_decode_huffman_tree(a1, a2, v3);
  }

  else
  {
    return *(*(a1 + 112) + 2 * (a2 >> *(a1 + 92)));
  }
}

uint64_t lzh_decode_huffman_tree(uint64_t a1, int a2, signed int a3)
{
  v6 = *(a1 + 120);
  v5 = *(a1 + 92);
  while (a3 >= *(a1 + 4))
  {
    v8 = a3 - *(a1 + 4);
    v3 = v5--;
    if (v3 <= 0 || v8 >= *(a1 + 100))
    {
      return 0;
    }

    if ((a2 & (1 << v5)) != 0)
    {
      a3 = *(v6 + 4 * v8);
    }

    else
    {
      a3 = *(v6 + 4 * v8 + 2);
    }
  }

  return a3;
}

void lzh_huffman_free(void **a1)
{
  free(a1[10]);
  free(a1[14]);
  free(a1[15]);
}

uint64_t archive_write_set_format_shar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_shar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x90uLL, 0x10300409387678EuLL);
    if (v2)
    {
      v2[12] = 0;
      v2[13] = 0;
      v2[14] = 0;
      v2[15] = 0;
      v2[16] = 0;
      v2[17] = 0;
      *(a1 + 248) = v2;
      *(a1 + 256) = "shar";
      *(a1 + 288) = archive_write_shar_header;
      *(a1 + 304) = archive_write_shar_close;
      *(a1 + 312) = archive_write_shar_free;
      *(a1 + 296) = archive_write_shar_data_sed;
      *(a1 + 280) = archive_write_shar_finish_entry;
      *(a1 + 16) = 131073;
      *(a1 + 24) = "shar";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate shar data");
      return -30;
    }
  }
}

uint64_t archive_write_shar_header(uint64_t a1, uint64_t *a2)
{
  v14 = *(a1 + 248);
  if (!*(v14 + 88))
  {
    archive_strcat((v14 + 96), "#!/bin/sh\n");
    archive_strcat((v14 + 96), "# This is a shell archive\n");
    *(v14 + 88) = 1;
  }

  archive_entry_free(*(v14 + 8));
  *(v14 + 8) = archive_entry_clone(a2);
  v18 = archive_entry_pathname(a2);
  v12 = archive_entry_filetype(a2);
  if (v12 == 4096 || v12 == 0x2000)
  {
    goto LABEL_13;
  }

  if (v12 != 0x4000)
  {
    if (v12 != 24576)
    {
      if (v12 != 0x8000)
      {
        archive_entry_set_size(a2, 0);
        if (!archive_entry_hardlink(a2) && !archive_entry_symlink(a2))
        {
          __archive_write_entry_filetype_unsupported(a1, a2, "shar");
          return -20;
        }
      }

LABEL_17:
      *(v14 + 128) = 0;
      shar_quote((v14 + 120), v18, 1);
      archive_string_sprintf((v14 + 96), "echo x %s\n", *(v14 + 120));
      if (archive_entry_filetype(a2) != 0x4000)
      {
        v17 = strdup(v18);
        v15 = strrchr(v17, 47);
        if (!v15 || (*v15 = 0, !strcmp(v17, ".")) || *(v14 + 24) && (!strcmp(v17, *(v14 + 24)) || (v11 = strlen(v17), v11 < strlen(*(v14 + 24))) && (v2 = strlen(v17), !strncmp(v17, *(v14 + 24), v2))))
        {
          free(v17);
        }

        else
        {
          archive_strcat((v14 + 96), "mkdir -p ");
          shar_quote((v14 + 96), v17, 1);
          archive_strcat((v14 + 96), " > /dev/null 2>&1\n");
          *(v14 + 24) = v17;
        }
      }

      *(v14 + 16) = 0;
      v19 = archive_entry_hardlink(a2);
      if (v19)
      {
        archive_strcat((v14 + 96), "ln -f ");
        shar_quote((v14 + 96), v19, 1);
        archive_string_sprintf((v14 + 96), " %s\n", *(v14 + 120));
      }

      else
      {
        v20 = archive_entry_symlink(a2);
        if (v20)
        {
          archive_strcat((v14 + 96), "ln -fs ");
          shar_quote((v14 + 96), v20, 1);
          archive_string_sprintf((v14 + 96), " %s\n", *(v14 + 120));
        }

        else
        {
          v10 = archive_entry_filetype(a2);
          switch(v10)
          {
            case 0x1000:
              archive_string_sprintf((v14 + 96), "mkfifo %s\n", *(v14 + 120));
              break;
            case 0x2000:
              v8 = *(v14 + 120);
              v9 = archive_entry_rdevmajor(a2);
              v3 = archive_entry_rdevminor(a2);
              archive_string_sprintf((v14 + 96), "mknod %s c %ju %ju\n", v8, v9, v3);
              break;
            case 0x4000:
              archive_string_sprintf((v14 + 96), "mkdir -p %s > /dev/null 2>&1\n", *(v14 + 120));
              free(*(v14 + 24));
              *(v14 + 24) = strdup(v18);
              v16 = strrchr(*(v14 + 24), 47);
              if (v16 && !v16[1])
              {
                *v16 = 0;
              }

              break;
            case 0x6000:
              v6 = *(v14 + 120);
              v7 = archive_entry_rdevmajor(a2);
              v4 = archive_entry_rdevminor(a2);
              archive_string_sprintf((v14 + 96), "mknod %s b %ju %ju\n", v6, v7, v4);
              break;
            case 0x8000:
              if (archive_entry_size(a2))
              {
                if (*v14)
                {
                  v13 = archive_entry_mode(a2) & 0x1FF;
                  archive_string_sprintf((v14 + 96), "uudecode -p > %s << 'SHAR_END'\n", *(v14 + 120));
                  archive_string_sprintf((v14 + 96), "begin %o ", v13);
                  shar_quote((v14 + 96), v18, 0);
                  archive_strcat((v14 + 96), "\n");
                }

                else
                {
                  archive_string_sprintf((v14 + 96), "sed 's/^X//' > %s << 'SHAR_END'\n", *(v14 + 120));
                }

                *(v14 + 16) = 1;
                *(v14 + 4) = 1;
                *(v14 + 80) = 0;
              }

              else
              {
                archive_string_sprintf((v14 + 96), "test -e %s || :> %s\n", *(v14 + 120), *(v14 + 120));
              }

              break;
            default:
              return -20;
          }
        }
      }

      return 0;
    }

LABEL_13:
    archive_entry_set_size(a2, 0);
    goto LABEL_17;
  }

  archive_entry_set_size(a2, 0);
  if (strcmp(v18, ".") && strcmp(v18, "./"))
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t archive_write_shar_close(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (*(v2 + 88))
  {
    archive_strcat((v2 + 96), "exit\n");
    if (__archive_write_output(a1, *(v2 + 96), *(v2 + 104)))
    {
      return -30;
    }

    else
    {
      archive_write_set_bytes_in_last_block(a1, 1u);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_shar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    archive_entry_free(v2[1]);
    free(v2[3]);
    archive_string_free((v2 + 12));
    archive_string_free((v2 + 15));
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_shar_data_sed(uint64_t a1, char *a2, uint64_t a3)
{
  v13 = a3;
  v12 = *(a1 + 248);
  if (!*(v12 + 16) || !a3)
  {
    return 0;
  }

  if (archive_string_ensure(v12 + 96, 0x10000uLL))
  {
    if (*(v12 + 104) > 0xFFFDuLL)
    {
      if (__archive_write_output(a1, *(v12 + 96), *(v12 + 104)))
      {
        return -30;
      }

      *(v12 + 104) = 0;
    }

    v10 = (*(v12 + 96) + *(v12 + 104));
    v9 = *(v12 + 96) + 65533;
    if (*(v12 + 4))
    {
      ++v10;
      *(*(v12 + 96) + *(v12 + 104)) = 88;
      *(v12 + 4) = 0;
    }

    while (v13--)
    {
      v4 = a2++;
      LODWORD(v4) = *v4;
      v5 = v10++;
      *v5 = v4;
      if (v4 == 10)
      {
        if (v13)
        {
          v6 = v10++;
          *v6 = 88;
        }

        else
        {
          *(v12 + 4) = 1;
        }
      }

      if (v10 >= v9)
      {
        *(v12 + 104) = &v10[-*(v12 + 96)];
        if (__archive_write_output(a1, *(v12 + 96), *(v12 + 104)))
        {
          return -30;
        }

        *(v12 + 104) = 0;
        v10 = *(v12 + 96);
      }
    }

    *(v12 + 104) = &v10[-*(v12 + 96)];
    return a3;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

uint64_t archive_write_shar_finish_entry(uint64_t a1)
{
  v6 = *(a1 + 248);
  if (*(v6 + 8))
  {
    if (*v6)
    {
      if (*(v6 + 16))
      {
        if (*(v6 + 80) && _uuencode_line(a1, v6, (v6 + 32), *(v6 + 80)))
        {
          return -30;
        }

        archive_strcat((v6 + 96), "SHAR_END\n");
      }

      v1 = archive_entry_mode(*(v6 + 8));
      archive_string_sprintf((v6 + 96), "chmod %o ", v1 & 0xFFF);
      v2 = archive_entry_pathname(*(v6 + 8));
      shar_quote((v6 + 96), v2, 1);
      archive_strcat((v6 + 96), "\n");
      v7 = archive_entry_uname(*(v6 + 8));
      v9 = archive_entry_gname(*(v6 + 8));
      if (v7 || v9)
      {
        archive_strcat((v6 + 96), "chown ");
        if (v7)
        {
          shar_quote((v6 + 96), v7, 1);
        }

        if (v9)
        {
          archive_strcat((v6 + 96), ":");
          shar_quote((v6 + 96), v9, 1);
        }

        archive_strcat((v6 + 96), " ");
        v3 = archive_entry_pathname(*(v6 + 8));
        shar_quote((v6 + 96), v3, 1);
        archive_strcat((v6 + 96), "\n");
      }

      v8 = archive_entry_fflags_text(*(v6 + 8));
      if (v8)
      {
        archive_string_sprintf((v6 + 96), "chflags %s ", v8);
        v4 = archive_entry_pathname(*(v6 + 8));
        shar_quote((v6 + 96), v4, 1);
        archive_strcat((v6 + 96), "\n");
      }
    }

    else if (*(v6 + 16))
    {
      if (!*(v6 + 4))
      {
        archive_strappend_char((v6 + 96), 10);
      }

      archive_strcat((v6 + 96), "SHAR_END\n");
    }

    archive_entry_free(*(v6 + 8));
    *(v6 + 8) = 0;
    if (*(v6 + 104) >= 0x10000uLL)
    {
      if (__archive_write_output(a1, *(v6 + 96), *(v6 + 104)))
      {
        return -30;
      }

      else
      {
        *(v6 + 104) = 0;
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

uint64_t archive_write_set_format_shar_dump(uint64_t a1)
{
  archive_write_set_format_shar(a1);
  **(a1 + 248) = 1;
  *(a1 + 296) = archive_write_shar_data_uuencode;
  *(a1 + 16) = 131074;
  *(a1 + 24) = "shar dump";
  return 0;
}

unint64_t archive_write_shar_data_uuencode(uint64_t a1, char *a2, unint64_t a3)
{
  v7 = *(a1 + 248);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v6 = a2;
  if (*(v7 + 80))
  {
    v4 = 45 - *(v7 + 80);
    if (v4 > a3)
    {
      v4 = a3;
    }

    __memcpy_chk();
    if (*(v7 + 80) + v4 >= 0x2D)
    {
      if (!_uuencode_line(a1, v7, (v7 + 32), 0x2DuLL))
      {
        v6 = &a2[v4];
        v5 = a3 - v4;
        goto LABEL_12;
      }

      return -30;
    }

    else
    {
      *(v7 + 80) += v4;
      return a3;
    }
  }

  else
  {
    v5 = a3;
LABEL_12:
    while (v5 >= 0x2D)
    {
      if (_uuencode_line(a1, v7, v6, 0x2DuLL))
      {
        return -30;
      }

      v6 += 45;
      v5 -= 45;
      if (*(v7 + 104) >= 0x10000uLL)
      {
        if (__archive_write_output(a1, *(v7 + 96), *(v7 + 104)))
        {
          return -30;
        }

        *(v7 + 104) = 0;
      }
    }

    if (v5)
    {
      __memcpy_chk();
      *(v7 + 80) = v5;
    }

    return a3;
  }
}

void *shar_quote(void *result, char *a2, int a3)
{
  v6 = result;
  while (*a2)
  {
    if (v3)
    {
      result = archive_strncat(v6, a2, v3);
      a2 += v3;
    }

    else if (*a2 == 10)
    {
      if (a3)
      {
        result = archive_strcat(v6, "\n");
      }

      else
      {
        result = archive_strcat(v6, "\\n");
      }

      ++a2;
    }

    else
    {
      archive_strappend_char(v6, 92);
      result = archive_strappend_char(v6, *a2++);
    }
  }

  return result;
}

uint64_t _uuencode_line(_DWORD *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  v11 = *(a2 + 104) + 62;
  if (archive_string_ensure(a2 + 96, v11))
  {
    v12 = (*(v15 + 96) + *(v15 + 104));
    if (v13)
    {
      v7 = (v13 & 0x3F) + 32;
    }

    else
    {
      v7 = 96;
    }

    v4 = v12++;
    *v4 = v7;
    while (v13 >= 3)
    {
      uuencode_group(v14, v12);
      v13 -= 3;
      v14 += 3;
      v12 += 4;
    }

    if (v13)
    {
      v8 = *v14;
      if (v13 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v14[1];
      }

      v10 = 0;
      uuencode_group(&v8, v12);
      v12 += 4;
    }

    v5 = v12++;
    *v5 = 10;
    if (&v12[-*(v15 + 96)] <= *(v15 + 104) + 62)
    {
      *(v15 + 104) = &v12[-*(v15 + 96)];
      return 0;
    }

    else
    {
      archive_set_error(v16, -1, "Buffer overflow");
      return -30;
    }
  }

  else
  {
    archive_set_error(v16, 12, "Out of memory");
    return -30;
  }
}

unsigned __int8 *uuencode_group(unsigned __int8 *result, _BYTE *a2)
{
  v6 = (result[1] << 8) | (*result << 16) | result[2];
  if (((v6 >> 18) & 0x3F) != 0)
  {
    v5 = ((v6 >> 18) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v5) = 96;
  }

  *a2 = v5;
  if (((v6 >> 12) & 0x3F) != 0)
  {
    v4 = ((v6 >> 12) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v4) = 96;
  }

  a2[1] = v4;
  if (((v6 >> 6) & 0x3F) != 0)
  {
    v3 = ((v6 >> 6) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v3) = 96;
  }

  a2[2] = v3;
  if ((v6 & 0x3F) != 0)
  {
    v2 = (v6 & 0x3F) + 32;
  }

  else
  {
    v2 = 96;
  }

  a2[3] = v2;
  return result;
}

uint64_t archive_read_support_filter_gzip(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("gzip"))
  {
    if (__archive_read_register_bidder(a1, 0, "gzip", gzip_bidder_vtable))
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
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t gzip_bidder_bid(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v3 = 0;
  if (peek_at_header(a2, &v3, 0))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t gzip_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 1;
  *(a1 + 48) = "gzip";
  v3 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B0040B7F5C59DuLL);
  v2 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v3 && v2)
  {
    *(a1 + 40) = v3;
    v3[16] = 0x10000;
    v3[15] = v2;
    *(a1 + 32) = gzip_reader_vtable;
    *(v3 + 112) = 0;
    return 0;
  }

  else
  {
    free(v2);
    free(v3);
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for gzip decompression");
    return -30;
  }
}

size_t peek_at_header(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  __s1 = 0;
  v9 = 0;
  v8 = 10;
  __s1 = __archive_read_filter_ahead(a1, 0xAuLL, &v9);
  if (!__s1 || !v9)
  {
    return 0;
  }

  if (memcmp(__s1, "\x1F\x8B\b", 3uLL))
  {
    return 0;
  }

  if ((*(__s1 + 3) & 0xE0) != 0)
  {
    return 0;
  }

  v7 = *(__s1 + 3);
  if (v11)
  {
    v3 = archive_le32dec_9(__s1 + 4);
    *(v11 + 152) = v3;
  }

  if ((v7 & 4) != 0)
  {
    __s1 = __archive_read_filter_ahead(v13, 0xCuLL, &v9);
    if (!__s1)
    {
      return 0;
    }

    v8 = (*(__s1 + 10) | (*(__s1 + 11) << 8)) + 12;
  }

  if ((v7 & 8) != 0)
  {
    v6 = v8;
    do
    {
      if (v9 < ++v8)
      {
        __s1 = __archive_read_filter_ahead(v13, v8, &v9);
      }

      if (!__s1)
      {
        return 0;
      }
    }

    while (*(__s1 + v8 - 1));
    if (v11)
    {
      free(*(v11 + 160));
      v4 = strdup(__s1 + v6);
      *(v11 + 160) = v4;
    }
  }

  if ((v7 & 0x10) != 0)
  {
    while (1)
    {
      if (v9 < ++v8)
      {
        __s1 = __archive_read_filter_ahead(v13, v8, &v9);
      }

      if (!__s1)
      {
        return 0;
      }

      if (!*(__s1 + v8 - 1))
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    if ((v7 & 2) != 0)
    {
      __s1 = __archive_read_filter_ahead(v13, v8 + 2, &v9);
      if (!__s1)
      {
        return 0;
      }

      v8 += 2;
    }

    if (v12)
    {
      *v12 = 27;
    }

    return v8;
  }
}

unint64_t gzip_filter_read(uint64_t a1, void *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *(a1 + 40);
  v10->next_out = *&v10[1].avail_in;
  v10->avail_out = v10[1].total_in;
  while (1)
  {
    v4 = 0;
    if (v10->avail_out)
    {
      v4 = LOBYTE(v10[1].state) == 0;
    }

    if (!v4)
    {
      break;
    }

    if (!LOBYTE(v10[1].next_in))
    {
      v5 = consume_header(v12);
      if (v5 == 1)
      {
        LOBYTE(v10[1].state) = 1;
        break;
      }

      if (v5 < 0)
      {
        return v5;
      }
    }

    v2 = __archive_read_filter_ahead(*(v12 + 16), 1uLL, &v8);
    v10->next_in = v2;
    if (!v10->next_in)
    {
      archive_set_error(*(v12 + 24), -1, "truncated gzip input");
      return -30;
    }

    if (v8 < 0)
    {
      return -30;
    }

    if (v8 > 0xFFFFFFFFLL)
    {
      v8 = 0xFFFFFFFFLL;
    }

    v10->avail_in = v8;
    v6 = inflate(v10, 0);
    if (v6)
    {
      if (v6 != 1)
      {
        archive_set_error(*(v12 + 24), -1, "gzip decompression failed (zlib returned error %d, msg %s)", v6, v10->msg);
        return -30;
      }

      __archive_read_filter_consume(*(v12 + 16), v8 - v10->avail_in);
      v7 = consume_trailer(v12);
      if (v7 < 0)
      {
        return v7;
      }
    }

    else
    {
      __archive_read_filter_consume(*(v12 + 16), v8 - v10->avail_in);
    }
  }

  v9 = &v10->next_out[-*&v10[1].avail_in];
  v10[1].next_out += v9;
  if (v9)
  {
    *v11 = *&v10[1].avail_in;
  }

  else
  {
    *v11 = 0;
  }

  return v9;
}
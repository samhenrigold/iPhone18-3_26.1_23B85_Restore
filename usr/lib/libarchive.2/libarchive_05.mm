uint64_t parse_device(_DWORD *a1, _DWORD *a2, char *a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  __s = a3;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  __memset_chk();
  v11 = strchr(__s, 44);
  if (!v11)
  {
    v8 = mtree_atol(&__s, 0);
    goto LABEL_17;
  }

  v3 = v11++;
  *v3 = 0;
  v9 = pack_find(__s);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = la_strsep(&v11, ",");
      if (!v12)
      {
        break;
      }

      if (!*v12)
      {
        archive_set_error(v14, 79, "Missing number");
        return -20;
      }

      if (v10 >= 3)
      {
        archive_set_error(v14, 79, "Too many arguments");
        return -20;
      }

      v4 = mtree_atol(&v12, 0);
      v5 = v10++;
      v17[v5] = v4;
    }

    if (v10 < 2)
    {
      archive_set_error(v14, 79, "Not enough arguments");
      return -20;
    }

    v8 = v9(v10, v17, &v7);
    if (v7)
    {
      archive_set_error(v14, 79, "%s", v7);
      return -20;
    }

LABEL_17:
    *v15 = v8;
    return 0;
  }

  return -20;
}

uint64_t mtree_atol(char **a1, int a2)
{
  v13 = a2;
  if (!a2)
  {
    if (**a1 == 48)
    {
      if ((*a1)[1] == 120 || (*a1)[1] == 88)
      {
        *a1 += 2;
        v13 = 16;
      }

      else
      {
        v13 = 8;
      }
    }

    else
    {
      v13 = 10;
    }
  }

  if (**a1 == 45)
  {
    v9 = 0x8000000000000000 / v13;
    ++*a1;
    v11 = 0;
    for (i = parsedigit(**a1); ; i = parsedigit(v2[1]))
    {
      v6 = 0;
      if ((i & 0x80000000) == 0)
      {
        v6 = i < v13;
      }

      if (!v6)
      {
        break;
      }

      if (v11 < v9 || v11 == v9 && i >= -(0x8000000000000000 % v13))
      {
        return 0x8000000000000000;
      }

      v11 = v11 * v13 - i;
      v2 = (*a1)++;
    }

    return v11;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL / v13;
    v12 = 0;
    for (j = parsedigit(**a1); ; j = parsedigit(v3[1]))
    {
      v5 = 0;
      if ((j & 0x80000000) == 0)
      {
        v5 = j < v13;
      }

      if (!v5)
      {
        break;
      }

      if (v12 > v10 || v12 == v10 && j > 0x7FFFFFFFFFFFFFFFLL % v13)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v12 = v12 * v13 + j;
      v3 = (*a1)++;
    }

    return v12;
  }
}

uint64_t parse_digest(_DWORD *a1, uint64_t a2, const char *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a4)
  {
    case 1:
      v5 = 16;
      break;
    case 2:
      v5 = 20;
      break;
    case 3:
      v5 = 20;
      break;
    case 4:
      v5 = 32;
      break;
    case 5:
      v5 = 48;
      break;
    case 6:
      v5 = 64;
      break;
    default:
      archive_set_error(a1, 22, "Internal error: Unknown digest type");
      return -30;
  }

  v6 = 2 * v5;
  if (strnlen(a3, v6 + 1) == v6)
  {
    v8 = 0;
    v7 = 0;
    while (v8 < v6)
    {
      v10 = parse_hex_nibble(a3[v8]);
      v9 = parse_hex_nibble(a3[v8 + 1]);
      if (v10 == -1 || v9 == -1)
      {
        archive_set_error(a1, 79, "invalid digest data, ignoring");
        return -20;
      }

      v16[v7] = v9 | (16 * v10);
      v8 += 2;
      ++v7;
    }

    return archive_entry_set_digest(a2, a4, v16);
  }

  else
  {
    archive_set_error(a1, 79, "incorrect digest length, ignoring");
    return -20;
  }
}

char *la_strsep(char **a1, const char *a2)
{
  if (!a1 || !*a1 || !**a1)
  {
    return 0;
  }

  __s = *a1;
  v4 = *a1;
  v6 = &v4[strcspn(*a1, a2)];
  if (*v6)
  {
    v2 = v6++;
    *v2 = 0;
  }

  *a1 = v6;
  return __s;
}

uint64_t parsedigit(char a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 97 || a1 > 102)
    {
      if (a1 < 65 || a1 > 70)
      {
        return -1;
      }

      else
      {
        return (a1 - 65);
      }
    }

    else
    {
      return (a1 - 97);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t parse_hex_nibble(char a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 97 || a1 > 102)
    {
      return -1;
    }

    else
    {
      return (a1 - 87);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t archive_write_set_format_cpio_odc(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_odc") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040D6C25179uLL);
    if (v2)
    {
      *(a1 + 248) = v2;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_odc_options;
      *(a1 + 288) = archive_write_odc_header;
      *(a1 + 296) = archive_write_odc_data;
      *(a1 + 280) = archive_write_odc_finish_entry;
      *(a1 + 304) = archive_write_odc_close;
      *(a1 + 312) = archive_write_odc_free;
      *(a1 + 16) = 65537;
      *(a1 + 24) = "POSIX cpio";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate cpio data");
      return -30;
    }
  }
}

uint64_t archive_write_odc_options(uint64_t a1, const char *a2, const char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = *(a1 + 248);
  v7 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (v9 && *v9)
    {
      *(v8 + 40) = archive_string_conversion_to_charset(v11, v9, 0);
      if (*(v8 + 40))
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
      archive_set_error(v11, -1, "%s: hdrcharset option needs a character-set name", v11[32]);
    }

    return v7;
  }

  else if (!strcmp(v10, "starting-inode"))
  {
    if (v9 && *v9)
    {
      __endptr = 0;
      v5 = strtoll(v9, &__endptr, 0);
      if ((!*__endptr || *__endptr == 46) && v5)
      {
        *(v8 + 8) = v5;
        return 0;
      }

      else
      {
        archive_set_error(v11, -1, "%s: starting-inode value invalid", v11[32]);
        return -30;
      }
    }

    else
    {
      archive_set_error(v11, -1, "%s: starting-inode option needs an integer value", v11[32]);
    }

    return v7;
  }

  else if (!strcmp(v10, "skip-trailer"))
  {
    v4 = 0;
    if (v9)
    {
      v4 = *v9 != 0;
    }

    *(v8 + 60) = v4;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_odc_header(_DWORD *a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v7))
  {
    v4 = v7;
    sconv = get_sconv(v8);
    if (_archive_entry_pathname_l(v7, &v6, &v5, sconv) && *__error() == 12)
    {
      archive_set_error(v8, 12, "Can't allocate memory for Pathname");
      return -30;
    }

    else if (v5 && v6 && *v6)
    {
      if (archive_entry_size_is_set(v7) && (archive_entry_size(v7) & 0x8000000000000000) == 0)
      {
        return write_header(v8, v7);
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

uint64_t archive_write_odc_data(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t archive_write_odc_close(uint64_t a1)
{
  v3 = 0;
  if (!*(*(a1 + 248) + 60))
  {
    v2 = archive_entry_new2(0);
    archive_entry_set_nlink(v2, 1);
    archive_entry_set_size(v2, 0);
    archive_entry_set_pathname(v2, "TRAILER!!!");
    v3 = write_header(a1, v2);
    archive_entry_free(v2);
  }

  return v3;
}

uint64_t archive_write_odc_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  free(v2[2]);
  free(v2);
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv(uint64_t a1)
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

uint64_t write_header(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v30 = a2;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  sconv = 0;
  v21 = 0;
  v20 = 0;
  v29 = *(a1 + 248);
  v24 = 0;
  sconv = get_sconv(a1);
  v21 = 0;
  v25 = _archive_entry_pathname_l(v30, &v27, &v20, sconv);
  if (v25)
  {
    if (*__error() == 12)
    {
      archive_set_error(v31, 12, "Can't allocate memory for Pathname");
      v24 = -30;
      goto LABEL_34;
    }

    v19 = v31;
    v18 = archive_entry_pathname(v30);
    v2 = archive_string_conversion_charset_name(sconv);
    archive_set_error(v19, 79, "Can't translate pathname '%s' to %s", v18, v2);
    v24 = -20;
  }

  v26 = v20 + 1;
  memset(__b, 0, sizeof(__b));
  format_octal_0(29127, __b, 6);
  v3 = archive_entry_dev(v30);
  format_octal_0(v3, &__b[6], 6);
  v23 = synthesize_ino_value(v29, v30);
  if (v23 < 0)
  {
    archive_set_error(v31, 12, "No memory for ino translation table");
    v24 = -30;
  }

  else if (v23 < 0x40000)
  {
    format_octal_0(v23 & 0x3FFFF, &__b[12], 6);
    v4 = archive_entry_mode(v30);
    format_octal_0(v4, &__b[18], 6);
    v5 = archive_entry_uid(v30);
    format_octal_0(v5, &__b[24], 6);
    v6 = archive_entry_gid(v30);
    format_octal_0(v6, &__b[30], 6);
    v7 = archive_entry_nlink(v30);
    format_octal_0(v7, &__b[36], 6);
    if (archive_entry_filetype(v30) == 24576 || archive_entry_filetype(v30) == 0x2000)
    {
      v8 = archive_entry_rdev(v30);
      format_octal_0(v8, &__b[42], 6);
    }

    else
    {
      format_octal_0(0, &__b[42], 6);
    }

    v9 = archive_entry_mtime(v30);
    format_octal_0(v9, &__b[48], 11);
    format_octal_0(v26, &__b[59], 6);
    if (archive_entry_filetype(v30) != 0x8000)
    {
      archive_entry_set_size(v30, 0);
    }

    v25 = _archive_entry_symlink_l(v30, &v28, &v20, sconv);
    if (v25)
    {
      if (*__error() == 12)
      {
        archive_set_error(v31, 12, "Can't allocate memory for Linkname");
        v24 = -30;
        goto LABEL_34;
      }

      v17 = v31;
      v16 = archive_entry_symlink(v30);
      v10 = archive_string_conversion_charset_name(sconv);
      archive_set_error(v17, 79, "Can't translate linkname '%s' to %s", v16, v10);
      v24 = -20;
    }

    if (v20 && v28 && *v28)
    {
      v11 = strlen(v28);
      v25 = format_octal_0(v11, &__b[65], 11);
    }

    else
    {
      v12 = archive_entry_size(v30);
      v25 = format_octal_0(v12, &__b[65], 11);
    }

    if (v25)
    {
      archive_set_error(v31, 34, "File is too large for cpio format.");
      v24 = -25;
    }

    else
    {
      v25 = __archive_write_output(v31, __b, 76);
      if (v25)
      {
        v24 = -30;
      }

      else
      {
        v25 = __archive_write_output(v31, v27, v26);
        if (v25)
        {
          v24 = -30;
        }

        else
        {
          v13 = archive_entry_size(v30);
          *v29 = v13;
          if (v28)
          {
            if (*v28)
            {
              v14 = strlen(v28);
              v25 = __archive_write_output(v31, v28, v14);
              if (v25)
              {
                v24 = -30;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    archive_set_error(v31, 34, "Too many files for this cpio format");
    v24 = -30;
  }

LABEL_34:
  archive_entry_free(v21);
  return v24;
}

uint64_t format_octal_0(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = (1 << (3 * a3)) - 1;
  if (a1 < 0 || a1 > v5)
  {
    format_octal_recursive(v5, a2, a3);
    return -1;
  }

  else
  {
    format_octal_recursive(a1, a2, a3);
    return 0;
  }
}

uint64_t synthesize_ino_value(uint64_t a1, uint64_t a2)
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

uint64_t format_octal_recursive(uint64_t a1, _BYTE *a2, int a3)
{
  if (!a3)
  {
    return a1;
  }

  v3 = format_octal_recursive(a1, a2 + 1, a3 - 1);
  *a2 = (v3 & 7) + 48;
  return v3 >> 3;
}

uint64_t archive_read_support_format_raw(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_raw") == -30)
  {
    return -30;
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
    if (v4)
    {
      register_format = __archive_read_register_format(a1, v4, "raw", archive_read_format_raw_bid, 0, archive_read_format_raw_read_header, archive_read_format_raw_read_data, archive_read_format_raw_read_data_skip, 0, archive_read_format_raw_cleanup, 0, 0);
      if (register_format)
      {
        free(v4);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate raw_info data");
      return -30;
    }
  }
}

uint64_t archive_read_format_raw_bid(uint64_t a1, int a2)
{
  if (a2 < 1 && __archive_read_ahead(a1, 1uLL, 0))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_raw_read_header(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 2072) + 16))
  {
    return 1;
  }

  else
  {
    *(a1 + 16) = 589824;
    *(a1 + 24) = "raw";
    archive_entry_set_pathname(a2, "data");
    archive_entry_set_filetype(a2, 0x8000);
    archive_entry_set_perm(a2, 420);
    return __archive_read_header(a1, a2);
  }
}

uint64_t archive_read_format_raw_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  v7 = **(a1 + 2072);
  if (*(v7 + 8))
  {
    __archive_read_consume(v11, *(v7 + 8));
    *(v7 + 8) = 0;
  }

  if (*(v7 + 16))
  {
    return 1;
  }

  else
  {
    v4 = __archive_read_ahead(v11, 1uLL, &v6);
    *v10 = v4;
    if (v6 <= 0)
    {
      if (v6)
      {
        *v9 = 0;
        *v8 = *v7;
        return v6;
      }

      else
      {
        *(v7 + 16) = 1;
        *v9 = 0;
        *v8 = *v7;
        return 1;
      }
    }

    else
    {
      *v9 = v6;
      *v8 = *v7;
      *v7 += *v9;
      *(v7 + 8) = v6;
      return 0;
    }
  }
}

uint64_t archive_read_format_raw_read_data_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (*(v2 + 8))
  {
    __archive_read_consume(a1, *(v2 + 8));
    *(v2 + 8) = 0;
  }

  *(v2 + 16) = 1;
  return 0;
}

uint64_t archive_read_format_raw_cleanup(uint64_t a1)
{
  free(**(a1 + 2072));
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_support_format_gnutar(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_gnutar") == -30)
  {
    return -30;
  }

  else
  {
    return archive_read_support_format_tar(a1);
  }
}

uint64_t archive_read_format_tar_options(uint64_t a1, const char *a2, const char *a3)
{
  v7 = -25;
  v8 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    v6 = 0;
    if (a3)
    {
      v6 = *a3 != 0;
    }

    *(v8 + 436) = v6;
    *(v8 + 432) = *(v8 + 436);
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v8 + 400) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v8 + 400))
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
      archive_set_error(a1, -1, "tar: hdrcharset option needs a character-set name");
    }

    return v7;
  }

  else if (!strcmp(a2, "mac-ext"))
  {
    v5 = 0;
    if (a3)
    {
      v5 = *a3 != 0;
    }

    *(v8 + 440) = v5;
    return 0;
  }

  else if (!strcmp(a2, "read_concatenated_archives"))
  {
    v4 = 0;
    if (a3)
    {
      v4 = *a3 != 0;
    }

    *(v8 + 444) = v4;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t tar_atol256(_BYTE *a1, unint64_t a2)
{
  v8 = a1;
  v6 = *a1;
  if ((*a1 & 0x40) != 0)
  {
    v5 = -1;
    v7 = v6 | 0x80;
    v9 = -1;
  }

  else
  {
    v5 = 0;
    v7 = v6 & 0x7F;
    v9 = 0;
  }

  while (a2 > 8)
  {
    --a2;
    if (v7 != v5)
    {
      v2 = 0x8000000000000000;
      if (!v5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return v2;
    }

    v7 = *++v8;
  }

  if (((v7 ^ v5) & 0x80) != 0)
  {
    v3 = 0x8000000000000000;
    if (!v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return v3;
  }

  else
  {
    while (--a2)
    {
      v9 = v7 | (v9 << 8);
      v7 = *++v8;
    }

    return v7 | (v9 << 8);
  }
}

uint64_t header_Solaris_ACL(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v18 = tar_atol((a4 + 124), 0xCuLL);
  body_to_string = read_body_to_string(a1, a2, a2, a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      v11 = *a2;
      v9 = *a2;
      v13 = 0;
      while (1)
      {
        v8 = 0;
        if (*v9)
        {
          v8 = v9 < &v11[v18];
        }

        if (!v8)
        {
          break;
        }

        if (*v9 < 48 || *v9 > 55)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (invalid digit)");
          return -20;
        }

        v13 = 8 * v13 + *v9 - 48;
        if (v13 > 0xFFFFFF)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (count too large)");
          return -20;
        }

        ++v9;
      }

      if ((v13 & 0xFFFC0000) == 0x40000)
      {
        v14 = 256;
      }

      else
      {
        if ((v13 & 0xFFFC0000) != 0xC0000)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (unsupported type %o)", v13);
          return -20;
        }

        v14 = 15360;
      }

      v10 = v9 + 1;
      if (v10 < &v11[v18])
      {
        v19 = v18 - (v10 - v11);
        v12 = v10;
        while (1)
        {
          v7 = 0;
          if (*v10)
          {
            v7 = v10 < &v12[v19];
          }

          if (!v7)
          {
            break;
          }

          ++v10;
        }

        if (a2[52] || (a2[52] = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
        {
          a2[48] = 0;
          archive_strncat(a2 + 47, v12, v10 - v12);
          v5 = archive_entry_acl(a3);
          v17 = archive_acl_from_text_l(v5, a2[47], v14, a2[52]);
          if (v17)
          {
            if (*__error() == 12)
            {
              archive_set_error(a1, 12, "Can't allocate memory for ACL");
            }

            else
            {
              archive_set_error(a1, -1, "Malformed Solaris ACL attribute (unparsable)");
            }
          }

          return v17;
        }

        else
        {
          return -30;
        }
      }

      else
      {
        archive_set_error(a1, -1, "Malformed Solaris ACL attribute (body overflow)");
        return -20;
      }
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_pax_global(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, (a2 + 216), a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    return tar_read_header(a1, a2, a3, a5);
  }
}

uint64_t header_longlink(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, (a2 + 144), a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      archive_entry_copy_link(a3, *(a2 + 144));
      return 0;
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_longname(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, a2 + 21, a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      if (_archive_entry_copy_pathname_l(a3, a2[21], a2[22], a2[51]))
      {
        return set_conversion_failed_error(a1, a2[51], "Pathname");
      }

      return header;
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_gnutar(_DWORD *a1, uint64_t a2, _DWORD *a3, _BYTE *a4, uint64_t *a5)
{
  v8 = header_common(a1, a2, a3, a4);
  if (v8 == -30)
  {
    return -30;
  }

  else if (_archive_entry_copy_pathname_l(a3, a4, 0x64uLL, *(a2 + 408)) && (LODWORD(v8) = set_conversion_failed_error(a1, *(a2 + 408), "Pathname"), v8 == -30))
  {
    return -30;
  }

  else if (_archive_entry_copy_uname_l(a3, a4 + 265, 0x20uLL, *(a2 + 408)) && (LODWORD(v8) = set_conversion_failed_error(a1, *(a2 + 408), "Uname"), v8 == -30))
  {
    return -30;
  }

  else if (_archive_entry_copy_gname_l(a3, a4 + 297, 0x20uLL, *(a2 + 408)) && (LODWORD(v8) = set_conversion_failed_error(a1, *(a2 + 408), "Gname"), v8 == -30))
  {
    return -30;
  }

  else
  {
    if (a4[156] == 51 || a4[156] == 52)
    {
      v5 = tar_atol(a4 + 329, 8uLL);
      archive_entry_set_rdevmajor(a3, v5);
      v6 = tar_atol(a4 + 337, 8uLL);
      archive_entry_set_rdevminor(a3, v6);
    }

    else
    {
      archive_entry_set_rdev(a3, 0);
    }

    *(a2 + 296) = -*(a2 + 280) & 0x1FFLL;
    v9 = tar_atol(a4 + 345, 0xCuLL);
    if (v9 > 0)
    {
      archive_entry_set_atime(a3, v9, 0);
    }

    v10 = tar_atol(a4 + 357, 0xCuLL);
    if (v10 > 0)
    {
      archive_entry_set_ctime(a3, v10, 0);
    }

    if (a4[483])
    {
      *(a2 + 312) = tar_atol(a4 + 483, 0xCuLL);
      archive_entry_set_size(a3, *(a2 + 312));
      *(a2 + 448) = 1;
    }

    if (a4[386] && gnu_sparse_old_read(a1, a2, a4, a5))
    {
      return -30;
    }

    else
    {
      return v8;
    }
  }
}

uint64_t header_old_tar(_DWORD *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  if (_archive_entry_copy_pathname_l(a3, a4, 0x64uLL, a2[51]) && (v6 = set_conversion_failed_error(a1, a2[51], "Pathname"), v6 == -30))
  {
    return -30;
  }

  else
  {
    v5 = header_common(a1, a2, a3, a4);
    if (v6 > v5)
    {
      v6 = v5;
    }

    a2[37] = -a2[35] & 0x1FFLL;
    return v6;
  }
}

uint64_t gnu_sparse_10_read(char *a1, uint64_t a2, uint64_t *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  gnu_clear_sparse_list(a2);
  v6 = *(v13 + 280);
  v10 = gnu_sparse_10_atol(v14, v13, &v6);
  if (v10 < 0)
  {
    return -30;
  }

  while (1)
  {
    v3 = v10--;
    if (v3 <= 0)
    {
      break;
    }

    v9 = gnu_sparse_10_atol(v14, v13, &v6);
    if (v9 < 0)
    {
      return -30;
    }

    v8 = gnu_sparse_10_atol(v14, v13, &v6);
    if (v8 < 0)
    {
      return -30;
    }

    if (gnu_add_sparse_entry(v14, v13, v9, v8))
    {
      return -30;
    }
  }

  tar_flush_unconsumed(v14, v12);
  v11 = *(v13 + 280) - v6;
  v7 = -v11 & 0x1FF;
  if (v7 > v6)
  {
    return -30;
  }

  v5 = v7;
  if (v5 == __archive_read_consume(v14, v7))
  {
    return v11 + v7;
  }

  else
  {
    return -30;
  }
}

uint64_t set_conversion_failed_error(_DWORD *a1, uint64_t a2, const char *a3)
{
  if (*__error() == 12)
  {
    archive_set_error(a1, 12, "Can't allocate memory for %s", a3);
    return -30;
  }

  else
  {
    v3 = archive_string_conversion_charset_name(a2);
    archive_set_error(a1, 79, "%s can't be converted from %s to current locale.", a3, v3);
    return -20;
  }
}

uint64_t gnu_sparse_01_parse(_DWORD *a1, uint64_t a2, char *a3)
{
  v6 = -1;
  while (1)
  {
    for (i = a3; ; ++i)
    {
      v4 = 0;
      if (*i)
      {
        v4 = *i != 44;
      }

      if (!v4)
      {
        break;
      }

      if (*i < 48 || *i > 57)
      {
        return -20;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = tar_atol10(a3, i - a3);
      if ((v6 & 0x8000000000000000) != 0)
      {
        return -20;
      }
    }

    else
    {
      v5 = tar_atol10(a3, i - a3);
      if ((v5 & 0x8000000000000000) != 0)
      {
        return -20;
      }

      if (gnu_add_sparse_entry(a1, a2, v6, v5))
      {
        return -30;
      }

      v6 = -1;
    }

    if (!*i)
    {
      break;
    }

    a3 = i + 1;
  }

  return 0;
}

uint64_t pax_attribute_acl(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5)
{
  switch(a5)
  {
    case 256:
      v7 = "SCHILY.acl.access";
      break;
    case 512:
      v7 = "SCHILY.acl.default";
      break;
    case 15360:
      v7 = "SCHILY.acl.ace";
      break;
    default:
      archive_set_error(a1, -1, "Unknown ACL type: %d", a5);
      return -30;
  }

  if (*(a2 + 416) || (*(a2 + 416) = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
  {
    v5 = archive_entry_acl(a3);
    v8 = archive_acl_from_text_l(v5, a4, a5, *(a2 + 416));
    if (v8)
    {
      if (v8 == -30)
      {
        archive_set_error(a1, 12, "%s %s", "Can't allocate memory for ", v7);
        return -30;
      }

      archive_set_error(a1, -1, "%s %s", "Parse error: ", v7);
    }

    return v8;
  }

  return -30;
}

uint64_t solaris_sparse_parse(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 1;
  v7 = 0;
  if (*a4 == 32)
  {
    v10 = a4 + 1;
    while (1)
    {
      for (i = v10; ; ++i)
      {
        v5 = 0;
        if (*i)
        {
          v5 = *i != 32;
        }

        if (!v5)
        {
          break;
        }

        if (*i < 48 || *i > 57)
        {
          return -20;
        }
      }

      v8 = v7;
      v7 = tar_atol10(v10, i - v10);
      if (v7 < 0)
      {
        return -20;
      }

      if (v8 < v7)
      {
        if (gnu_add_sparse_entry(a1, a2, v8, v7 - v8))
        {
          return -30;
        }

        *(*(a2 + 336) + 24) = v6;
      }

      if (!*i)
      {
        break;
      }

      v10 = i + 1;
      v6 = !v6;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t tohex(int a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 65 || a1 > 70)
    {
      if (a1 < 97 || a1 > 102)
      {
        return -1;
      }

      else
      {
        return (a1 - 87);
      }
    }

    else
    {
      return (a1 - 55);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t gnu_sparse_old_read(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if (gnu_sparse_old_parse(a1, a2, (a3 + 386), 4))
  {
    return -30;
  }

  else if (*(v8 + 482))
  {
    do
    {
      tar_flush_unconsumed(v10, v7);
      v5 = __archive_read_ahead(v10, 0x200uLL, &v6);
      if (v6 < 0)
      {
        return -30;
      }

      if (v6 < 512)
      {
        archive_set_error(v10, 79, "Truncated tar archive detected while reading sparse file data");
        return -30;
      }

      *v7 = 512;
      if (gnu_sparse_old_parse(v10, v9, v5, 21))
      {
        return -30;
      }
    }

    while (v5[504]);
    if (*(v9 + 328))
    {
      *(v9 + 288) = *(*(v9 + 328) + 8);
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t gnu_sparse_old_parse(_DWORD *a1, uint64_t a2, _BYTE *a3, int a4)
{
  while (1)
  {
    v7 = 0;
    if (a4 > 0)
    {
      v7 = *a3 != 0;
    }

    if (!v7)
    {
      break;
    }

    v6 = tar_atol(a3, 0xCuLL);
    v4 = tar_atol(a3 + 12, 0xCuLL);
    if (gnu_add_sparse_entry(a1, a2, v6, v4))
    {
      return -30;
    }

    a3 += 24;
    --a4;
  }

  return 0;
}

uint64_t gnu_sparse_10_atol(const char *a1, uint64_t a2, void *a3)
{
  v6 = 0;
  do
  {
    v5 = readline_0(a1);
    if (v5 <= 0)
    {
      return -30;
    }

    *a3 -= v5;
  }

  while (MEMORY[0] == 35);
  v7 = 0;
  while (v5 > 0)
  {
    if (*v6 == 10)
    {
      return v7;
    }

    if (*v6 < 48 || *v6 >= 58)
    {
      return -20;
    }

    v4 = *v6 - 48;
    if (v7 > 0xCCCCCCCCCCCCCCCLL || v7 == 0xCCCCCCCCCCCCCCCLL && v4 > 7)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = 10 * v7 + v4;
    }

    ++v6;
    --v5;
  }

  return -20;
}

char *__cdecl readline_0(const char *a1)
{
  v15 = a1;
  v14 = v1;
  v13 = v2;
  v12 = v3;
  v11 = v4;
  __n = 0;
  v9 = 0;
  tar_flush_unconsumed(a1, v4);
  __s = __archive_read_ahead(v15, 1uLL, &__n);
  if (__n <= 0)
  {
    return -30;
  }

  v6 = memchr(__s, 10, __n);
  if (v6)
  {
    __n = v6 + 1 - __s;
    if (__n <= v12)
    {
      *v11 = __n;
      *v13 = __s;
      return __n;
    }
  }

  else
  {
    *v11 = __n;
    while (&v9[__n] <= v12)
    {
      if (!archive_string_ensure(v14 + 240, &v9[__n]))
      {
        archive_set_error(v15, 12, "Can't allocate working buffer");
        return -30;
      }

      __memcpy_chk();
      tar_flush_unconsumed(v15, v11);
      v9 += __n;
      if (v6)
      {
        *v13 = *(v14 + 240);
        return v9;
      }

      __sa = __archive_read_ahead(v15, 1uLL, &__n);
      if (__n <= 0)
      {
        return -30;
      }

      v6 = memchr(__sa, 10, __n);
      if (v6)
      {
        __n = v6 + 1 - __sa;
      }

      *v11 = __n;
    }
  }

  archive_set_error(v15, 79, "Line too long");
  return -30;
}

uint64_t *acl_new_entry(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((a2 & 0x3C00) != 0)
  {
    if ((*(a1 + 48) & 0xFFFFC3FF) != 0)
    {
      return 0;
    }

    if ((a3 & 0x80FF0006) != 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x300) == 0)
    {
      return 0;
    }

    if ((*(a1 + 48) & 0xFFFFFCFF) != 0)
    {
      return 0;
    }

    if ((a3 & 0xFFFFFFF8) != 0)
    {
      return 0;
    }
  }

  if ((a4 - 10001) > 3)
  {
    if (a4 != 10006 && a4 != 10005)
    {
      if (a4 != 10107)
      {
        return 0;
      }

      if ((a2 & 0xFFFFC3FF) != 0)
      {
        return 0;
      }
    }

    else if ((a2 & 0xFFFFFCFF) != 0)
    {
      return 0;
    }
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  v7 = *(a1 + 8);
  v6 = 0;
  while (v7)
  {
    if ((a2 & 0x3C00) == 0 && *(v7 + 2) == a2 && *(v7 + 3) == a4 && *(v7 + 5) == a5 && (a5 != -1 || a4 != 10001 && a4 != 10003))
    {
      *(v7 + 4) = a3;
      return v7;
    }

    v6 = v7;
    v7 = *v7;
  }

  v8 = malloc_type_calloc(1uLL, 0x80uLL, 0x10300404B7343C4uLL);
  if (!v8)
  {
    return 0;
  }

  if (v6)
  {
    *v6 = v8;
  }

  else
  {
    *(a1 + 8) = v8;
  }

  v8[2] = a2;
  v8[3] = a4;
  v8[5] = a5;
  v8[4] = a3;
  *(a1 + 48) |= a2;
  return v8;
}

uint64_t archive_acl_add_entry(_WORD *a1, int a2, int a3, int a4, int a5, char *a6)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v7 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v7)
    {
      if (a6 && *a6)
      {
        archive_mstring_copy_mbs((v7 + 3), a6);
      }

      else
      {
        archive_mstring_clean((v7 + 3));
      }

      return 0;
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t acl_special(_WORD *a1, int a2, int a3, int a4)
{
  if (a2 != 256 || (a3 & 0xFFFFFFF8) != 0)
  {
    return 1;
  }

  switch(a4)
  {
    case 10002:
      *a1 &= 0xFE3Fu;
      *a1 |= (a3 & 7) << 6;
      return 0;
    case 10004:
      *a1 &= 0xFFC7u;
      *a1 |= 8 * (a3 & 7);
      return 0;
    case 10006:
      *a1 &= 0xFFF8u;
      *a1 |= a3 & 7;
      return 0;
    default:
      return 1;
  }
}

uint64_t archive_acl_add_entry_w_len(_WORD *a1, int a2, int a3, int a4, int a5, const __int32 *a6, size_t a7)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v8 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v8)
    {
      if (a6 && *a6 && a7)
      {
        archive_mstring_copy_wcs_len((v8 + 3), a6, a7);
      }

      else
      {
        archive_mstring_clean((v8 + 3));
      }

      return 0;
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_acl_count(uint64_t a1, int a2)
{
  v4 = 0;
  for (i = *(a1 + 8); i; i = *i)
  {
    if ((i[1] & a2) != 0)
    {
      ++v4;
    }
  }

  if (v4 > 0 && (a2 & 0x100) != 0)
  {
    v4 += 3;
  }

  return v4;
}

uint64_t archive_acl_reset(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = archive_acl_count(a1, a2);
  if ((v5 & 0x100) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v4 <= v3)
  {
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = 10002;
  }

  *(a1 + 16) = *(a1 + 8);
  return v4;
}

uint64_t archive_acl_next(_DWORD *a1, unsigned __int16 *a2, int a3, _DWORD *a4, int *a5, _DWORD *a6, _DWORD *a7, void *a8)
{
  *a8 = 0;
  *a7 = -1;
  if (*(a2 + 6))
  {
    if ((a3 & 0x100) != 0)
    {
      v10 = *(a2 + 6);
      switch(v10)
      {
        case 10002:
          *a5 = (*a2 >> 6) & 7;
          *a4 = 256;
          *a6 = 10002;
          *(a2 + 6) = 10004;
          return 0;
        case 10004:
          *a5 = (*a2 >> 3) & 7;
          *a4 = 256;
          *a6 = 10004;
          *(a2 + 6) = 10006;
          return 0;
        case 10006:
          *a5 = *a2 & 7;
          *a4 = 256;
          *a6 = 10006;
          *(a2 + 6) = -1;
          *(a2 + 2) = *(a2 + 1);
          return 0;
      }
    }

    while (1)
    {
      v9 = 0;
      if (*(a2 + 2))
      {
        v9 = (*(*(a2 + 2) + 8) & a3) == 0;
      }

      if (!v9)
      {
        break;
      }

      *(a2 + 2) = **(a2 + 2);
    }

    if (*(a2 + 2))
    {
      *a4 = *(*(a2 + 2) + 8);
      *a5 = *(*(a2 + 2) + 16);
      *a6 = *(*(a2 + 2) + 12);
      *a7 = *(*(a2 + 2) + 20);
      if (archive_mstring_get_mbs(a1, *(a2 + 2) + 24, a8))
      {
        if (*__error() == 12)
        {
          return -30;
        }

        *a8 = 0;
      }

      *(a2 + 2) = **(a2 + 2);
      return 0;
    }

    *(a2 + 6) = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    *a7 = -1;
    *a8 = 0;
    return 1;
  }

  else
  {
    return -20;
  }
}

int *archive_acl_to_text_w(uint64_t a1, int64_t *a2, unsigned int a3, _DWORD *a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  i = 0;
  v13 = 0;
  wcs = 0;
  v10 = 0;
  v11 = archive_acl_text_want_type(a1, a3);
  if (!v11)
  {
    return 0;
  }

  if (v11 == 768)
  {
    v22 |= 2u;
  }

  v19 = archive_acl_text_len(v24, v11, v22, 1, v21, 0);
  if (!v19)
  {
    return 0;
  }

  if ((v22 & 8) != 0)
  {
    v15 = 44;
  }

  else
  {
    v15 = 10;
  }

  v9 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    if ((v11 & 0x100) != 0)
    {
      append_entry_w(&v10, 0, 256, 10002, v22, 0, *v24 & 0x1C0, -1);
      v4 = v10++;
      *v4 = v15;
      append_entry_w(&v10, 0, 256, 10004, v22, 0, *v24 & 0x38, -1);
      v5 = v10++;
      *v5 = v15;
      append_entry_w(&v10, 0, 256, 10006, v22, 0, *v24 & 7, -1);
      v20 += 3;
    }

    for (i = *(v24 + 8); i; i = *i)
    {
      if ((i[1] & v11) != 0 && (*(i + 2) != 256 || *(i + 3) != 10002 && *(i + 3) != 10004 && *(i + 3) != 10006))
      {
        if (*(i + 2) == 512 && (v22 & 2) != 0)
        {
          v16 = "d";
        }

        else
        {
          v16 = 0;
        }

        wcs = archive_mstring_get_wcs(v21, (i + 3), &v17);
        if (wcs)
        {
          if (wcs < 0 && *__error() == 12)
          {
            free(v9);
            return 0;
          }
        }

        else
        {
          if (v20 > 0)
          {
            v6 = v10++;
            *v6 = v15;
          }

          if (v22)
          {
            v13 = *(i + 5);
          }

          else
          {
            v13 = -1;
          }

          append_entry_w(&v10, v16, *(i + 2), *(i + 3), v22, v17, *(i + 4), v13);
          ++v20;
        }
      }
    }

    v7 = v10++;
    *v7 = 0;
    v18 = wcslen(v9);
    if (v18 > v19 - 1)
    {
      __archive_errx(1, "Buffer overrun");
    }

    if (v23)
    {
      *v23 = v18;
    }

    return v9;
  }

  else
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }
}

uint64_t archive_acl_text_want_type(uint64_t a1, __int16 a2)
{
  if ((*(a1 + 48) & 0x3C00) != 0)
  {
    if ((*(a1 + 48) & 0x300) != 0)
    {
      return 0;
    }

    else
    {
      return 15360;
    }
  }

  else
  {
    v3 = 0;
    if ((a2 & 0x100) != 0)
    {
      v3 = 256;
    }

    if ((a2 & 0x200) != 0)
    {
      v3 |= 0x200u;
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return 768;
    }
  }
}

uint64_t archive_acl_text_len(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  i = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  wcs = 0;
  v8 = 0;
  v13 = 0;
  v9 = 0;
  for (i = *(a1 + 8); i; i = *i)
  {
    if ((i[1] & v21) == 0 || *(i + 2) == 256 && (*(i + 3) == 10002 || *(i + 3) == 10004 || *(i + 3) == 10006))
    {
      continue;
    }

    ++v13;
    if ((v21 & 0x200) != 0 && (i[1] & 0x200) != 0)
    {
      v9 += 8;
    }

    v7 = *(i + 3);
    if (v7 == 10001)
    {
      goto LABEL_22;
    }

    if (v7 == 10002)
    {
      if (v21 == 15360)
      {
        v9 += 6;
        goto LABEL_27;
      }

LABEL_22:
      v9 += 4;
      goto LABEL_27;
    }

    if (v7 != 10003)
    {
      if (v7 == 10004)
      {
        if (v21 == 15360)
        {
          v9 += 6;
          goto LABEL_27;
        }
      }

      else
      {
        if (v7 == 10005)
        {
          goto LABEL_22;
        }

        if (v7 != 10006)
        {
          if (v7 == 10107)
          {
            v9 += 9;
          }

          goto LABEL_27;
        }
      }
    }

    v9 += 5;
LABEL_27:
    ++v9;
    if (*(i + 3) == 10001 || *(i + 3) == 10003)
    {
      if (v19)
      {
        wcs = archive_mstring_get_wcs(v18, (i + 3), &v14);
        if (wcs || !v14)
        {
          if (wcs < 0 && *__error() == 12)
          {
            return 0;
          }

          v9 += 13;
        }

        else
        {
          v9 += wcslen(v14);
        }
      }

      else
      {
        wcs = archive_mstring_get_mbs_l(v18, (i + 3), &v15, &v8, v17);
        if (wcs)
        {
          return 0;
        }

        if (v8 && v15)
        {
          v9 += v8;
        }

        else
        {
          v9 += 13;
        }
      }

      ++v9;
    }

    else if (v21 != 15360)
    {
      ++v9;
    }

    if ((v20 & 4) != 0 && (v21 & 0x300) != 0 && (*(i + 3) == 10006 || *(i + 3) == 10005))
    {
      --v9;
    }

    if (v21 == 15360)
    {
      v9 += 27;
      if ((i[1] & 0x800) == 0)
      {
        ++v9;
      }
    }

    else
    {
      v9 += 3;
    }

    if (*(i + 3) == 10001 || *(i + 3) == 10003) && (v20)
    {
      ++v9;
      v12 = 1;
      v11 = *(i + 5);
      while (v11 > 9)
      {
        v11 /= 10;
        ++v12;
      }

      v9 += v12;
    }

    ++v9;
  }

  if ((v21 & 0x100) != 0)
  {
    if ((v20 & 4) != 0)
    {
      v9 += 31;
    }

    else
    {
      v9 += 32;
    }

    return v9;
  }

  else
  {
    if (v13)
    {
      return v9;
    }

    return 0;
  }
}

size_t append_entry_w(__int32 **a1, const __int32 *a2, int a3, int a4, char a5, const __int32 *a6, int a7, int a8)
{
  if (a2)
  {
    wcscpy(*a1, a2);
    *a1 += wcslen(*a1);
  }

  switch(a4)
  {
    case 10001:
      goto LABEL_13;
    case 10002:
      a6 = 0;
      a8 = -1;
      if ((a3 & 0x3C00) != 0)
      {
        strcpy(*a1, "o");
        break;
      }

LABEL_13:
      strcpy(*a1, "u");
      break;
    case 10003:
      goto LABEL_15;
    case 10004:
      a6 = 0;
      a8 = -1;
LABEL_15:
      strcpy(*a1, "g");
      break;
    case 10005:
      strcpy(*a1, "m");
      a6 = 0;
      a8 = -1;
      break;
    case 10006:
      strcpy(*a1, "o");
      a6 = 0;
      a8 = -1;
      break;
    case 10107:
      strcpy(*a1, "e");
      a6 = 0;
      a8 = -1;
      break;
  }

  result = wcslen(*a1);
  *a1 += result;
  v9 = (*a1)++;
  *v9 = 58;
  if ((a3 & 0x300) != 0 || a4 == 10001 || a4 == 10003)
  {
    if (a6)
    {
      wcscpy(*a1, a6);
      result = wcslen(*a1);
      *a1 += result;
    }

    else if (a4 == 10001 || a4 == 10003)
    {
      result = append_id_w(a1, a8);
      if ((a3 & 0x3C00) == 0)
      {
        a8 = -1;
      }
    }

    if ((a5 & 4) == 0 || a4 != 10006 && a4 != 10005)
    {
      v10 = (*a1)++;
      *v10 = 58;
    }
  }

  if ((a3 & 0x300) == 0)
  {
    for (i = 0; i < 14; ++i)
    {
      if ((a7 & *&nfsv4_acl_perm_map[12 * i]) != 0)
      {
        v17 = *&nfsv4_acl_perm_map[12 * i + 8];
        v18 = (*a1)++;
        *v18 = v17;
      }

      else if ((a5 & 0x10) == 0)
      {
        v19 = (*a1)++;
        *v19 = 45;
      }
    }

    v20 = (*a1)++;
    *v20 = 58;
    for (j = 0; j < 7; ++j)
    {
      if ((a7 & nfsv4_acl_flag_map[3 * j]) != 0)
      {
        v21 = nfsv4_acl_flag_map[3 * j + 2];
        v22 = (*a1)++;
        *v22 = v21;
      }

      else if ((a5 & 0x10) == 0)
      {
        v23 = (*a1)++;
        *v23 = 45;
      }
    }

    v24 = (*a1)++;
    *v24 = 58;
    if (a3 != 1024)
    {
      if (a3 == 2048)
      {
        strcpy(*a1, "d");
LABEL_66:
        result = wcslen(*a1);
        *a1 += result;
        goto LABEL_67;
      }

      if (a3 != 4096 && a3 != 0x2000)
      {
        goto LABEL_66;
      }
    }

    strcpy(*a1, "a");
    goto LABEL_66;
  }

  if ((a7 & 0x124) != 0)
  {
    v11 = 114;
  }

  else
  {
    v11 = 45;
  }

  v12 = (*a1)++;
  *v12 = v11;
  if ((a7 & 0x92) != 0)
  {
    v13 = 119;
  }

  else
  {
    v13 = 45;
  }

  v14 = (*a1)++;
  *v14 = v13;
  if ((a7 & 0x49) != 0)
  {
    v15 = 120;
  }

  else
  {
    v15 = 45;
  }

  v16 = (*a1)++;
  *v16 = v15;
LABEL_67:
  if (a8 != -1)
  {
    v25 = (*a1)++;
    *v25 = 58;
    return append_id_w(a1, a8);
  }

  return result;
}

char *archive_acl_to_text_l(uint64_t a1, int64_t *a2, unsigned int a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  i = 0;
  v13 = 0;
  mbs_l = 0;
  v10 = 0;
  v11 = archive_acl_text_want_type(a1, a3);
  if (!v11)
  {
    return 0;
  }

  if (v11 == 768)
  {
    v22 |= 2u;
  }

  v19 = archive_acl_text_len(v24, v11, v22, 0, 0, v21);
  if (!v19)
  {
    return 0;
  }

  if ((v22 & 8) != 0)
  {
    v15 = 44;
  }

  else
  {
    v15 = 10;
  }

  __s = malloc_type_malloc(v19, 0x100004077774924uLL);
  v10 = __s;
  if (__s)
  {
    v20 = 0;
    if ((v11 & 0x100) != 0)
    {
      append_entry(&v10, 0, 256, 10002, v22, 0, *v24 & 0x1C0, -1);
      v4 = v10++;
      *v4 = v15;
      append_entry(&v10, 0, 256, 10004, v22, 0, *v24 & 0x38, -1);
      v5 = v10++;
      *v5 = v15;
      append_entry(&v10, 0, 256, 10006, v22, 0, *v24 & 7, -1);
      v20 += 3;
    }

    for (i = *(v24 + 8); i; i = *i)
    {
      if ((i[1] & v11) != 0 && (*(i + 2) != 256 || *(i + 3) != 10002 && *(i + 3) != 10004 && *(i + 3) != 10006))
      {
        if (*(i + 2) == 512 && (v22 & 2) != 0)
        {
          v16 = "default:";
        }

        else
        {
          v16 = 0;
        }

        mbs_l = archive_mstring_get_mbs_l(0, (i + 3), &v17, &v18, v21);
        if (mbs_l)
        {
          free(__s);
          return 0;
        }

        if (v20 > 0)
        {
          v6 = v10++;
          *v6 = v15;
        }

        if (v17 && (v22 & 1) == 0)
        {
          v13 = -1;
        }

        else
        {
          v13 = *(i + 5);
        }

        append_entry(&v10, v16, *(i + 2), *(i + 3), v22, v17, *(i + 4), v13);
        ++v20;
      }
    }

    v7 = v10++;
    *v7 = 0;
    v18 = strlen(__s);
    if (v18 > (v19 - 1))
    {
      __archive_errx(1, "Buffer overrun");
    }

    if (v23)
    {
      *v23 = v18;
    }

    return __s;
  }

  else
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }
}

size_t append_entry(const char **a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, int a7, int a8)
{
  if (a2)
  {
    __strcpy_chk();
    *a1 += strlen(*a1);
  }

  switch(a4)
  {
    case 10001:
      goto LABEL_14;
    case 10002:
      a6 = 0;
      a8 = -1;
LABEL_14:
      __strcpy_chk();
      break;
    case 10003:
      goto LABEL_14;
    case 10004:
      a6 = 0;
      a8 = -1;
      goto LABEL_14;
    case 10005:
    case 10006:
    case 10107:
      __strcpy_chk();
      a6 = 0;
      a8 = -1;
      break;
  }

  result = strlen(*a1);
  *a1 += result;
  v9 = (*a1)++;
  *v9 = 58;
  if ((a3 & 0x300) != 0 || a4 == 10001 || a4 == 10003)
  {
    if (a6)
    {
      __strcpy_chk();
      result = strlen(*a1);
      *a1 += result;
    }

    else if (a4 == 10001 || a4 == 10003)
    {
      result = append_id(a1, a8);
      if ((a3 & 0x3C00) == 0)
      {
        a8 = -1;
      }
    }

    if ((a5 & 4) == 0 || a4 != 10006 && a4 != 10005)
    {
      v10 = (*a1)++;
      *v10 = 58;
    }
  }

  if ((a3 & 0x300) != 0)
  {
    if ((a7 & 0x124) != 0)
    {
      v11 = 114;
    }

    else
    {
      v11 = 45;
    }

    v12 = (*a1)++;
    *v12 = v11;
    if ((a7 & 0x92) != 0)
    {
      v13 = 119;
    }

    else
    {
      v13 = 45;
    }

    v14 = (*a1)++;
    *v14 = v13;
    if ((a7 & 0x49) != 0)
    {
      v15 = 120;
    }

    else
    {
      v15 = 45;
    }

    v16 = (*a1)++;
    *v16 = v15;
  }

  else
  {
    for (i = 0; i < 14; ++i)
    {
      if ((a7 & *&nfsv4_acl_perm_map[12 * i]) != 0)
      {
        v17 = nfsv4_acl_perm_map[12 * i + 4];
        v18 = (*a1)++;
        *v18 = v17;
      }

      else if ((a5 & 0x10) == 0)
      {
        v19 = (*a1)++;
        *v19 = 45;
      }
    }

    v20 = (*a1)++;
    *v20 = 58;
    for (j = 0; j < 7; ++j)
    {
      if ((a7 & nfsv4_acl_flag_map[3 * j]) != 0)
      {
        v21 = nfsv4_acl_flag_map[3 * j + 1];
        v22 = (*a1)++;
        *v22 = v21;
      }

      else if ((a5 & 0x10) == 0)
      {
        v23 = (*a1)++;
        *v23 = 45;
      }
    }

    v24 = (*a1)++;
    *v24 = 58;
    if (a3 == 1024 || a3 == 2048 || a3 == 4096 || a3 == 0x2000)
    {
      __strcpy_chk();
    }

    result = strlen(*a1);
    *a1 += result;
  }

  if (a8 != -1)
  {
    v25 = (*a1)++;
    *v25 = 58;
    return append_id(a1, a8);
  }

  return result;
}

uint64_t archive_acl_from_text_w(_WORD *a1, _DWORD *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0uLL;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  i = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v15 = 0;
  v13 = 0;
  switch(a3)
  {
    case 256:
    case 512:
      goto LABEL_7;
    case 768:
      v24 = 256;
LABEL_7:
      v20 = 5;
      goto LABEL_9;
    case 15360:
      v20 = 6;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
LABEL_9:
              v5 = 0;
              if (v25)
              {
                v5 = *v25 != 0;
              }

              if (!v5)
              {
                archive_acl_reset(v26, v13);
                return v15;
              }

              v19 = 0;
              do
              {
                v7 = 0;
                v6 = 0;
                next_field_w(&v25, &v7, &v6, &v8);
                if (v19 < v20)
                {
                  (&v28)[2 * v19] = v7;
                  *(&v28 + 2 * v19 + 1) = v6;
                }

                ++v19;
              }

              while (v8 == 58);
              for (i = v19; i < v20; ++i)
              {
                *(&v28 + 2 * i + 1) = 0;
                (&v28)[2 * i] = 0;
              }
            }

            while (v28 && *v28 == 35);
            i = 0;
            v16 = 0;
            v10 = -1;
            v11 = 0;
            v23 = 0uLL;
            if (v24 != 15360)
            {
              break;
            }

            v22 = v28;
            v9 = (v29 - v28) / 4;
            v12 = 0;
            switch(v9)
            {
              case 4uLL:
                if (!wmemcmp(v22, "u", 4uLL))
                {
                  v12 = 10001;
                }

                break;
              case 5uLL:
                if (!wmemcmp(v22, "g", 5uLL))
                {
                  v12 = 10003;
                }

                break;
              case 6uLL:
                if (!wmemcmp(v22, "o", 6uLL))
                {
                  v12 = 10002;
                }

                else if (!wmemcmp(v22, "g", v9))
                {
                  v12 = 10004;
                }

                break;
              default:
                if (v9 == 9 && !wmemcmp(v22, "e", 9uLL))
                {
                  v12 = 10107;
                }

                break;
            }

            if (v12)
            {
              if (v12 == 10001 || v12 == 10003)
              {
                i = 1;
                v23 = v30;
                isint_w(v30, *(&v30 + 1), &v10);
              }

              else
              {
                i = 0;
              }

              if (is_nfs4_perms_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v11))
              {
                if (is_nfs4_flags_w((&v28)[2 * i + 1], *(&v28 + 2 * i + 2), &v11))
                {
                  v22 = *(&v28 + 2 * i + 6);
                  v9 = *(&v28 + 2 * i + 7) - *(&v28 + 2 * i + 6);
                  v14 = 0;
                  if (v9 == 4)
                  {
                    if (!wmemcmp(v22, "d", 4uLL))
                    {
                      v14 = 2048;
                    }
                  }

                  else if (v9 == 5)
                  {
                    if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 1024;
                    }

                    else if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 4096;
                    }

                    else if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 0x2000;
                    }
                  }

                  if (v14)
                  {
                    isint_w((&v28)[2 * i + 2], *(&v28 + 2 * i + 3), &v10);
                    goto LABEL_120;
                  }

                  v15 = -20;
                }

                else
                {
                  v15 = -20;
                }
              }

              else
              {
                v15 = -20;
              }
            }

            else
            {
              v15 = -20;
            }
          }

          v22 = v28;
          v9 = (v29 - v28) / 4;
          if (*v28 == 100 && (v9 == 1 || v9 >= 7 && !wmemcmp(v22 + 1, "e", 6uLL)))
          {
            v14 = 512;
            if (v9 <= 7)
            {
              i = 1;
            }

            else
            {
              v28 += 7;
            }
          }

          else
          {
            v14 = v24;
          }

          isint_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v10);
          if (v10 == -1 && v19 > i + 3)
          {
            isint_w(*(&v28 + 2 * i + 6), *(&v28 + 2 * i + 7), &v10);
          }

          v12 = 0;
          v22 = (&v28)[2 * i];
          v21 = (&v28)[2 * i] + 1;
          v9 = *(&v28 + 2 * i + 1) - (&v28)[2 * i];
          v4 = *v22;
          if (*v22 == 103)
          {
            if (v9 == 1 || v9 == 5 && !wmemcmp(v21, "r", 4uLL))
            {
              v12 = 10004;
            }
          }

          else if (v4 == 109)
          {
            if (v9 == 1 || v9 == 4 && !wmemcmp(v21, "a", 3uLL))
            {
              v12 = 10005;
            }
          }

          else if (v4 == 111)
          {
            if (v9 == 1 || v9 == 5 && !wmemcmp(v21, "t", 4uLL))
            {
              v12 = 10006;
            }
          }

          else if (v4 == 117 && (v9 == 1 || v9 == 4 && !wmemcmp(v21, "s", 3uLL)))
          {
            v12 = 10002;
          }

          if (v12 == 10002 || v12 == 10004)
          {
            if (v10 != -1 || *(&v28 + 2 * i + 2) < *(&v28 + 2 * i + 3))
            {
              v23 = *(&v28 + i + 1);
              if (v12 == 10002)
              {
                v12 = 10001;
              }

              else
              {
                v12 = 10003;
              }
            }

            goto LABEL_74;
          }

          if (v12 == 10006 || v12 == 10005)
          {
            break;
          }

          v15 = -20;
        }

        if (v19 == i + 2 && *(&v28 + 2 * i + 2) < *(&v28 + 2 * i + 3) && ismode_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v11))
        {
          v16 = 1;
LABEL_74:
          if (v11 || ismode_w((&v28)[2 * (i + 2 - v16)], *(&v28 + 2 * (i + 2 - v16) + 1), &v11))
          {
LABEL_120:
            v17 = archive_acl_add_entry_w_len(v26, v14, v11, v12, v10, v23, (*(&v23 + 1) - v23) / 4);
            if (v17 < -20)
            {
              return v17;
            }

            if (v17)
            {
              v15 = -20;
            }

            v13 |= v14;
          }

          else
          {
            v15 = -20;
          }
        }

        else
        {
          if (v19 != i + 3 || *(&v28 + 2 * i + 2) >= *(&v28 + 2 * i + 3))
          {
            goto LABEL_74;
          }

          v15 = -20;
        }
      }
  }

  return -30;
}

_DWORD **next_field_w(_DWORD **result, void *a2, void *a3, _DWORD *a4)
{
  while (1)
  {
    v7 = 1;
    if (**result != 32)
    {
      v7 = 1;
      if (**result != 9)
      {
        v7 = **result == 10;
      }
    }

    if (!v7)
    {
      break;
    }

    ++*result;
  }

  *a2 = *result;
  while (1)
  {
    v6 = 0;
    if (**result)
    {
      v6 = 0;
      if (**result != 44)
      {
        v6 = 0;
        if (**result != 58)
        {
          v6 = 0;
          if (**result != 10)
          {
            v6 = **result != 35;
          }
        }
      }
    }

    if (!v6)
    {
      break;
    }

    ++*result;
  }

  *a4 = **result;
  if (*result == *a2)
  {
    *a3 = *result;
  }

  else
  {
    for (*a3 = *result - 1; ; *a3 -= 4)
    {
      v5 = 1;
      if (**a3 != 32)
      {
        v5 = 1;
        if (**a3 != 9)
        {
          v5 = **a3 == 10;
        }
      }

      if (!v5)
      {
        break;
      }
    }

    *a3 += 4;
  }

  if (*a4 == 35)
  {
    while (1)
    {
      v4 = 0;
      if (**result)
      {
        v4 = 0;
        if (**result != 44)
        {
          v4 = **result != 10;
        }
      }

      if (!v4)
      {
        break;
      }

      ++*result;
    }

    *a4 = **result;
  }

  if (**result)
  {
    ++*result;
  }

  return result;
}

uint64_t isint_w(int *a1, unint64_t a2, int *a3)
{
  v5 = a1;
  v4 = 0;
  if (a1 < a2)
  {
    while (v5 < a2)
    {
      if (*v5 < 48 || *v5 > 57)
      {
        return 0;
      }

      if (v4 > 214748364 || v4 == 214748364 && *v5 - 48 > 7)
      {
        v4 = 0x7FFFFFFF;
      }

      else
      {
        v4 = 10 * v4 + *v5 - 48;
      }

      ++v5;
    }

    *a3 = v4;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ismode_w(int *a1, unint64_t a2, _DWORD *a3)
{
  if (a1 < a2)
  {
    v6 = a1;
    *a3 = 0;
    while (1)
    {
      do
      {
        if (v6 >= a2)
        {
          return 1;
        }

        v3 = v6++;
        v5 = *v3;
      }

      while (*v3 == 45);
      switch(v5)
      {
        case 'R':
          goto LABEL_13;
        case 'W':
          goto LABEL_14;
        case 'X':
          goto LABEL_15;
        case 'r':
LABEL_13:
          *a3 |= 4u;
          break;
        case 'w':
LABEL_14:
          *a3 |= 2u;
          break;
        case 'x':
LABEL_15:
          *a3 |= 1u;
          break;
        default:
          return 0;
      }
    }
  }

  return 0;
}

uint64_t is_nfs4_perms_w(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  while (2)
  {
    if (a1 >= a2)
    {
      return 1;
    }

    else
    {
      v3 = a1++;
      switch(*v3)
      {
        case '-':
          continue;
        case 'A':
          *a3 |= 0x400u;
          continue;
        case 'C':
          *a3 |= 0x2000u;
          continue;
        case 'D':
          *a3 |= 0x100u;
          continue;
        case 'R':
          *a3 |= 0x40u;
          continue;
        case 'W':
          *a3 |= 0x80u;
          continue;
        case 'a':
          *a3 |= 0x200u;
          continue;
        case 'c':
          *a3 |= 0x1000u;
          continue;
        case 'd':
          *a3 |= 0x800u;
          continue;
        case 'o':
          *a3 |= 0x4000u;
          continue;
        case 'p':
          *a3 |= 0x20u;
          continue;
        case 'r':
          *a3 |= 8u;
          continue;
        case 's':
          *a3 |= 0x8000u;
          continue;
        case 'w':
          *a3 |= 0x10u;
          continue;
        case 'x':
          *a3 |= 1u;
          continue;
        default:
          v6 = 0;
          break;
      }
    }

    return v6;
  }
}

uint64_t is_nfs4_flags_w(int *a1, unint64_t a2, _DWORD *a3)
{
  while (a1 < a2)
  {
    v3 = a1++;
    v5 = *v3;
    if (*v3 != 45)
    {
      switch(v5)
      {
        case 'F':
          *a3 |= 0x40000000u;
          break;
        case 'I':
          *a3 |= 0x1000000u;
          break;
        case 'S':
          *a3 |= 0x20000000u;
          break;
        case 'd':
          *a3 |= 0x4000000u;
          break;
        case 'f':
          *a3 |= 0x2000000u;
          break;
        case 'i':
          *a3 |= 0x10000000u;
          break;
        case 'n':
          *a3 |= 0x8000000u;
          break;
        default:
          return 0;
      }
    }
  }

  return 1;
}

uint64_t archive_acl_from_text_l(_WORD *a1, _BYTE *a2, int a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0uLL;
  v24 = 0;
  __s1 = 0;
  v22 = 0;
  v21 = 0;
  i = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  switch(a3)
  {
    case 256:
    case 512:
      goto LABEL_7;
    case 768:
      v27 = 256;
LABEL_7:
      v22 = 5;
LABEL_9:
      v17 = 0;
      v15 = 0;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              do
              {
                v7 = 0;
                if (v28)
                {
                  v7 = *v28 != 0;
                }

                if (!v7)
                {
                  archive_acl_reset(v29, v15);
                  return v17;
                }

                v21 = 0;
                do
                {
                  v9 = 0;
                  v8 = 0;
                  next_field(&v28, &v9, &v8, &v10);
                  if (v21 < v22)
                  {
                    (&v31)[2 * v21] = v9;
                    (&v31)[2 * v21 + 1] = v8;
                  }

                  ++v21;
                }

                while (v10 == 58);
                for (i = v21; i < v22; ++i)
                {
                  (&v31)[2 * i + 1] = 0;
                  (&v31)[2 * i] = 0;
                }
              }

              while (v31 && *v31 == 35);
              i = 0;
              v18 = 0;
              v12 = -1;
              v13 = 0;
              v25 = 0uLL;
              if (v27 != 15360)
              {
                break;
              }

              v24 = v31;
              v11 = v32 - v31;
              v14 = 0;
              v5 = v32 - v31;
              if (v32 - v31 == 4)
              {
                if (!memcmp(v24, "user", 4uLL))
                {
                  v14 = 10001;
                }
              }

              else if (v5 == 5)
              {
                if (!memcmp(v24, "group", 5uLL))
                {
                  v14 = 10003;
                }
              }

              else if (v5 == 6)
              {
                if (!memcmp(v24, "owner@", 6uLL))
                {
                  v14 = 10002;
                }

                else if (!memcmp(v24, "group@", 6uLL))
                {
                  v14 = 10004;
                }
              }

              else if (v5 == 9 && !memcmp(v24, "everyone@", 9uLL))
              {
                v14 = 10107;
              }

              if (v14)
              {
                if (v14 == 10001 || v14 == 10003)
                {
                  i = 1;
                  v25 = v33;
                  isint(v33, *(&v33 + 1), &v12);
                }

                else
                {
                  i = 0;
                }

                if (is_nfs4_perms((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v13))
                {
                  if (is_nfs4_flags((&v31)[2 * i + 4], (&v31)[2 * i + 5], &v13))
                  {
                    v24 = (&v31)[2 * i + 6];
                    v11 = (&v31)[2 * i + 7] - (&v31)[2 * i + 6];
                    v16 = 0;
                    if (v11 == 4)
                    {
                      if (!memcmp(v24, "deny", 4uLL))
                      {
                        v16 = 2048;
                      }
                    }

                    else if (v11 == 5)
                    {
                      if (!memcmp(v24, "allow", 5uLL))
                      {
                        v16 = 1024;
                      }

                      else if (!memcmp(v24, "audit", 5uLL))
                      {
                        v16 = 4096;
                      }

                      else if (!memcmp(v24, "alarm", 5uLL))
                      {
                        v16 = 0x2000;
                      }
                    }

                    if (v16)
                    {
                      isint((&v31)[2 * i + 8], (&v31)[2 * i + 9], &v12);
                      goto LABEL_123;
                    }

                    v17 = -20;
                  }

                  else
                  {
                    v17 = -20;
                  }
                }

                else
                {
                  v17 = -20;
                }
              }

              else
              {
                v17 = -20;
              }
            }

            v24 = v31;
            v11 = v32 - v31;
            if (*v31 == 100 && (v11 == 1 || v11 >= 7 && !memcmp(v24 + 1, "efault", 6uLL)))
            {
              v16 = 512;
              if (v11 <= 7)
              {
                i = 1;
              }

              else
              {
                v31 += 7;
              }
            }

            else
            {
              v16 = v27;
            }

            isint((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v12);
            if (v12 == -1 && v21 > i + 3)
            {
              isint((&v31)[2 * i + 6], (&v31)[2 * i + 7], &v12);
            }

            v14 = 0;
            v24 = (&v31)[2 * i];
            __s1 = (&v31)[2 * i] + 1;
            v11 = (&v31)[2 * i + 1] - (&v31)[2 * i];
            if (v11)
            {
              break;
            }

            v17 = -20;
          }

          v6 = *v24;
          switch(v6)
          {
            case 'g':
              if (v11 == 1 || v11 == 5 && !memcmp(__s1, "roup", 4uLL))
              {
                v14 = 10004;
              }

              break;
            case 'm':
              if (v11 == 1 || v11 == 4 && !memcmp(__s1, "ask", 3uLL))
              {
                v14 = 10005;
              }

              break;
            case 'o':
              if (v11 == 1 || v11 == 5 && !memcmp(__s1, "ther", 4uLL))
              {
                v14 = 10006;
              }

              break;
            default:
              if (v6 == 117 && (v11 == 1 || v11 == 4 && !memcmp(__s1, "ser", 3uLL)))
              {
                v14 = 10002;
              }

              break;
          }

          if (v14 == 10002 || v14 == 10004)
          {
            if (v12 != -1 || (&v31)[2 * i + 2] < (&v31)[2 * i + 3])
            {
              v25 = *&(&v31)[2 * i + 2];
              if (v14 == 10002)
              {
                v14 = 10001;
              }

              else
              {
                v14 = 10003;
              }
            }

            goto LABEL_77;
          }

          if (v14 == 10006 || v14 == 10005)
          {
            break;
          }

          v17 = -20;
        }

        if (v21 == i + 2 && (&v31)[2 * i + 2] < (&v31)[2 * i + 3] && ismode((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v13))
        {
          v18 = 1;
LABEL_77:
          if (v13 || ismode((&v31)[2 * (i + 2 - v18)], (&v31)[2 * (i + 2 - v18) + 1], &v13))
          {
LABEL_123:
            v19 = archive_acl_add_entry_len_l(v29, v16, v13, v14, v12, v25, *(&v25 + 1) - v25, v26);
            if (v19 < -20)
            {
              return v19;
            }

            if (v19)
            {
              v17 = -20;
            }

            v15 |= v16;
          }

          else
          {
            v17 = -20;
          }
        }

        else
        {
          if (v21 != i + 3 || (&v31)[2 * i + 2] >= (&v31)[2 * i + 3])
          {
            goto LABEL_77;
          }

          v17 = -20;
        }
      }

    case 15360:
      v22 = 6;
      goto LABEL_9;
  }

  return -30;
}

_BYTE **next_field(_BYTE **result, void *a2, void *a3, _BYTE *a4)
{
  while (1)
  {
    v7 = 1;
    if (**result != 32)
    {
      v7 = 1;
      if (**result != 9)
      {
        v7 = **result == 10;
      }
    }

    if (!v7)
    {
      break;
    }

    ++*result;
  }

  *a2 = *result;
  while (1)
  {
    v6 = 0;
    if (**result)
    {
      v6 = 0;
      if (**result != 44)
      {
        v6 = 0;
        if (**result != 58)
        {
          v6 = 0;
          if (**result != 10)
          {
            v6 = **result != 35;
          }
        }
      }
    }

    if (!v6)
    {
      break;
    }

    ++*result;
  }

  *a4 = **result;
  if (*result == *a2)
  {
    *a3 = *result;
  }

  else
  {
    for (*a3 = *result - 1; ; --*a3)
    {
      v5 = 1;
      if (**a3 != 32)
      {
        v5 = 1;
        if (**a3 != 9)
        {
          v5 = **a3 == 10;
        }
      }

      if (!v5)
      {
        break;
      }
    }

    ++*a3;
  }

  if (*a4 == 35)
  {
    while (1)
    {
      v4 = 0;
      if (**result)
      {
        v4 = 0;
        if (**result != 44)
        {
          v4 = **result != 10;
        }
      }

      if (!v4)
      {
        break;
      }

      ++*result;
    }

    *a4 = **result;
  }

  if (**result)
  {
    ++*result;
  }

  return result;
}

uint64_t isint(char *a1, unint64_t a2, int *a3)
{
  v5 = a1;
  v4 = 0;
  if (a1 < a2)
  {
    while (v5 < a2)
    {
      if (*v5 < 48 || *v5 > 57)
      {
        return 0;
      }

      if (v4 > 214748364 || v4 == 214748364 && *v5 - 48 > 7)
      {
        v4 = 0x7FFFFFFF;
      }

      else
      {
        v4 = 10 * v4 + *v5 - 48;
      }

      ++v5;
    }

    *a3 = v4;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ismode(char *a1, unint64_t a2, _DWORD *a3)
{
  if (a1 < a2)
  {
    v6 = a1;
    *a3 = 0;
    while (1)
    {
      do
      {
        if (v6 >= a2)
        {
          return 1;
        }

        v3 = v6++;
        v5 = *v3;
      }

      while (v5 == 45);
      switch(v5)
      {
        case 'R':
          goto LABEL_13;
        case 'W':
          goto LABEL_14;
        case 'X':
          goto LABEL_15;
        case 'r':
LABEL_13:
          *a3 |= 4u;
          break;
        case 'w':
LABEL_14:
          *a3 |= 2u;
          break;
        case 'x':
LABEL_15:
          *a3 |= 1u;
          break;
        default:
          return 0;
      }
    }
  }

  return 0;
}

uint64_t is_nfs4_perms(_BYTE *a1, unint64_t a2, _DWORD *a3)
{
  while (2)
  {
    if (a1 >= a2)
    {
      return 1;
    }

    else
    {
      v3 = a1++;
      switch(*v3)
      {
        case '-':
          continue;
        case 'A':
          *a3 |= 0x400u;
          continue;
        case 'C':
          *a3 |= 0x2000u;
          continue;
        case 'D':
          *a3 |= 0x100u;
          continue;
        case 'R':
          *a3 |= 0x40u;
          continue;
        case 'W':
          *a3 |= 0x80u;
          continue;
        case 'a':
          *a3 |= 0x200u;
          continue;
        case 'c':
          *a3 |= 0x1000u;
          continue;
        case 'd':
          *a3 |= 0x800u;
          continue;
        case 'o':
          *a3 |= 0x4000u;
          continue;
        case 'p':
          *a3 |= 0x20u;
          continue;
        case 'r':
          *a3 |= 8u;
          continue;
        case 's':
          *a3 |= 0x8000u;
          continue;
        case 'w':
          *a3 |= 0x10u;
          continue;
        case 'x':
          *a3 |= 1u;
          continue;
        default:
          v6 = 0;
          break;
      }
    }

    return v6;
  }
}

uint64_t is_nfs4_flags(char *a1, unint64_t a2, _DWORD *a3)
{
  while (a1 < a2)
  {
    v3 = a1++;
    v5 = *v3;
    if (v5 != 45)
    {
      switch(v5)
      {
        case 'F':
          *a3 |= 0x40000000u;
          break;
        case 'I':
          *a3 |= 0x1000000u;
          break;
        case 'S':
          *a3 |= 0x20000000u;
          break;
        case 'd':
          *a3 |= 0x4000000u;
          break;
        case 'f':
          *a3 |= 0x2000000u;
          break;
        case 'i':
          *a3 |= 0x10000000u;
          break;
        case 'n':
          *a3 |= 0x8000000u;
          break;
        default:
          return 0;
      }
    }
  }

  return 1;
}

uint64_t archive_acl_add_entry_len_l(_WORD *a1, int a2, int a3, int a4, int a5, _BYTE *a6, unint64_t a7, uint64_t a8)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v10 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v10)
    {
      if (a6 && *a6 && a7)
      {
        v9 = archive_mstring_copy_mbs_len_l((v10 + 3), a6, a7, a8);
      }

      else
      {
        v9 = 0;
        archive_mstring_clean((v10 + 3));
      }

      if (v9)
      {
        if (*__error() == 12)
        {
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

    else
    {
      return -25;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD **append_id_w(_DWORD **result, int a2)
{
  v5 = result;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  if (v4 > 9)
  {
    result = append_id_w(result, v4 / 10);
  }

  v2 = dword_1BF33BB48[v4 % 10];
  v3 = (*v5)++;
  *v3 = v2;
  return result;
}

void *append_id(void *result, int a2)
{
  v5 = result;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  if (v4 > 9)
  {
    result = append_id(result, v4 / 10);
  }

  v2 = a0123456789[v4 % 10];
  v3 = (*v5)++;
  *v3 = v2;
  return result;
}

char *archive_match_new()
{
  v1 = malloc_type_calloc(1uLL, 0x1F8uLL, 0x10F0040201FFAAFuLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 212668873;
  *(v1 + 1) = 1;
  *(v1 + 37) = 1;
  match_list_init(v1 + 192);
  match_list_init(v1 + 152);
  __archive_rb_tree_init(v1 + 42, rb_ops_mbs);
  entry_list_init(v1 + 352);
  match_list_init(v1 + 424);
  match_list_init(v1 + 464);
  time(v1 + 29);
  return v1;
}

uint64_t match_list_init(uint64_t result)
{
  *result = 0;
  *(result + 8) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t entry_list_init(uint64_t result)
{
  *result = 0;
  *(result + 8) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t archive_match_free(void **a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, 212668873, 0xFFFF, "archive_match_free") == -30)
    {
      return -30;
    }

    else
    {
      match_list_free(a1 + 24);
      match_list_free(a1 + 19);
      entry_list_free(a1 + 44);
      free(a1[49]);
      free(a1[52]);
      match_list_free(a1 + 53);
      match_list_free(a1 + 58);
      free(a1);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void match_list_free(void **a1)
{
  v2 = *a1;
  while (v2)
  {
    v1 = v2;
    v2 = *v2;
    archive_mstring_clean(v1 + 16);
    free(v1);
  }
}

void entry_list_free(void *a1)
{
  v2 = *a1;
  while (v2)
  {
    v1 = v2;
    v2 = v2[3];
    archive_mstring_clean(v1 + 32);
    free(v1);
  }
}

uint64_t archive_match_excluded(unsigned int *a1, uint64_t *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    v4 = 0;
    if ((a1[36] & 1) != 0 && (v2 = archive_entry_pathname(a2), (v4 = path_excluded(a1, 1, v2)) != 0))
    {
      return v4;
    }

    else if ((a1[36] & 2) != 0 && (v4 = time_excluded(a1, a2)) != 0)
    {
      return v4;
    }

    else
    {
      if ((a1[36] & 4) != 0)
      {
        return owner_excluded(a1, a2);
      }

      return v4;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL");
    return -25;
  }
}

uint64_t path_excluded(uint64_t a1, int a2, __int32 *a3)
{
  if (a1)
  {
    v7 = 0;
    for (i = *(a1 + 192); i; i = *i)
    {
      if (!*(i + 8))
      {
        matched = match_path_inclusion(a1, i, a2, a3);
        if (matched)
        {
          if ((matched & 0x80000000) != 0)
          {
            return matched;
          }

          --*(a1 + 212);
          ++*(i + 8);
          v7 = i;
        }
      }
    }

    for (j = *(a1 + 152); j; j = *j)
    {
      v5 = match_path_exclusion(a1, j, a2, a3);
      if (v5)
      {
        return v5;
      }
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      for (k = *(a1 + 192); ; k = *k)
      {
        if (!k)
        {
          return *(a1 + 192) != 0;
        }

        if (*(k + 8) > 0)
        {
          v6 = match_path_inclusion(a1, k, a2, a3);
          if (v6)
          {
            break;
          }
        }
      }

      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      else
      {
        ++*(k + 8);
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t time_excluded(uint64_t a1, void *a2)
{
  if (*(a1 + 264))
  {
    if (archive_entry_ctime_is_set(a2))
    {
      v9 = archive_entry_ctime(a2);
    }

    else
    {
      v9 = archive_entry_mtime(a2);
    }

    if (v9 < *(a1 + 272))
    {
      return 1;
    }

    if (v9 == *(a1 + 272))
    {
      if (archive_entry_ctime_is_set(a2))
      {
        v5 = archive_entry_ctime_nsec(a2);
      }

      else
      {
        v5 = archive_entry_mtime_nsec(a2);
      }

      if (v5 < *(a1 + 280))
      {
        return 1;
      }

      if (v5 == *(a1 + 280) && (*(a1 + 264) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 312))
  {
    if (archive_entry_ctime_is_set(a2))
    {
      v10 = archive_entry_ctime(a2);
    }

    else
    {
      v10 = archive_entry_mtime(a2);
    }

    if (v10 > *(a1 + 320))
    {
      return 1;
    }

    if (v10 == *(a1 + 320))
    {
      if (archive_entry_ctime_is_set(a2))
      {
        v6 = archive_entry_ctime_nsec(a2);
      }

      else
      {
        v6 = archive_entry_mtime_nsec(a2);
      }

      if (v6 > *(a1 + 328))
      {
        return 1;
      }

      if (v6 == *(a1 + 328) && (*(a1 + 312) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 240))
  {
    v11 = archive_entry_mtime(a2);
    if (v11 < *(a1 + 248))
    {
      return 1;
    }

    if (v11 == *(a1 + 248))
    {
      v7 = archive_entry_mtime_nsec(a2);
      if (v7 < *(a1 + 256))
      {
        return 1;
      }

      if (v7 == *(a1 + 256) && (*(a1 + 240) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 288))
  {
    v12 = archive_entry_mtime(a2);
    if (v12 > *(a1 + 296))
    {
      return 1;
    }

    v8 = archive_entry_mtime_nsec(a2);
    if (v12 == *(a1 + 296))
    {
      if (v8 > *(a1 + 304))
      {
        return 1;
      }

      if (v8 == *(a1 + 304) && (*(a1 + 288) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 368))
  {
    v15 = archive_entry_pathname(a2);
    *(a1 + 344) = rb_ops_mbs;
    if (v15)
    {
      node = __archive_rb_tree_find_node((a1 + 336), v15);
      if (node)
      {
        if ((*(node + 136) & 0x200) != 0)
        {
          v13 = archive_entry_ctime(a2);
          if (*(node + 160) <= v13)
          {
            if (*(node + 160) < v13)
            {
              if (*(node + 136))
              {
                return 1;
              }
            }

            else
            {
              v2 = archive_entry_ctime_nsec(a2);
              if (*(node + 168) <= v2)
              {
                if (*(node + 168) >= v2)
                {
                  if ((*(node + 136) & 0x10) != 0)
                  {
                    return 1;
                  }
                }

                else if (*(node + 136))
                {
                  return 1;
                }
              }

              else if ((*(node + 136) & 2) != 0)
              {
                return 1;
              }
            }
          }

          else if ((*(node + 136) & 2) != 0)
          {
            return 1;
          }
        }

        if ((*(node + 136) & 0x100) != 0)
        {
          v14 = archive_entry_mtime(a2);
          if (*(node + 144) <= v14)
          {
            if (*(node + 144) < v14)
            {
              if (*(node + 136))
              {
                return 1;
              }
            }

            else
            {
              v3 = archive_entry_mtime_nsec(a2);
              if (*(node + 152) <= v3)
              {
                if (*(node + 152) >= v3)
                {
                  if ((*(node + 136) & 0x10) != 0)
                  {
                    return 1;
                  }
                }

                else if (*(node + 136))
                {
                  return 1;
                }
              }

              else if ((*(node + 136) & 2) != 0)
              {
                return 1;
              }
            }
          }

          else if ((*(node + 136) & 2) != 0)
          {
            return 1;
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

uint64_t owner_excluded(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 384) || (v2 = archive_entry_uid(a2), match_owner_id(a1 + 376, v2)))
  {
    if (!*(a1 + 408) || (v3 = archive_entry_gid(a2), match_owner_id(a1 + 400, v3)))
    {
      if (*(a1 + 440))
      {
        v4 = archive_entry_uname(a2);
        matched = match_owner_name_mbs(a1, (a1 + 424), v4);
        if (!matched)
        {
          return 1;
        }

        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }
      }

      if (*(a1 + 480))
      {
        v5 = archive_entry_gname(a2);
        v8 = match_owner_name_mbs(a1, (a1 + 464), v5);
        if (!v8)
        {
          return 1;
        }

        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
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

uint64_t archive_match_exclude_pattern(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v3 = add_pattern_mbs(a1, (a1 + 38), a2);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty");
    return -25;
  }
}

uint64_t add_pattern_mbs(_DWORD *a1, uint64_t a2, char *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v5)
  {
    v4 = strlen(a3);
    if (v4 && a3[v4 - 1] == 47)
    {
      --v4;
    }

    archive_mstring_copy_mbs_len(v5 + 16, a3, v4);
    match_list_add(a2, v5);
    a1[36] |= 1u;
    return 0;
  }

  else
  {
    return error_nomem(a1);
  }
}

uint64_t archive_match_exclude_pattern_w(unsigned int *a1, const __int32 *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_w") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v3 = add_pattern_wcs(a1, (a1 + 38), a2);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty");
    return -25;
  }
}

uint64_t add_pattern_wcs(_DWORD *a1, uint64_t a2, const __int32 *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v5)
  {
    v4 = wcslen(a3);
    if (v4 && a3[v4 - 1] == 47)
    {
      --v4;
    }

    archive_mstring_copy_wcs_len(v5 + 16, a3, v4);
    match_list_add(a2, v5);
    a1[36] |= 1u;
    return 0;
  }

  else
  {
    return error_nomem(a1);
  }
}

uint64_t archive_match_exclude_pattern_from_file(unsigned int *a1, const __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_from_file") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 38), 1, a2, a3);
  }
}

uint64_t add_pattern_from_file(_DWORD *a1, uint64_t a2, int a3, const __int32 *a4, int a5)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v21 = archive_read_new();
  if (v21)
  {
    archive_read_support_format_raw(v21);
    support_format_empty = archive_read_support_format_empty(v21);
    if (support_format_empty || (!v24 ? (support_format_empty = archive_read_open_filename_w(v21, v23, 10240)) : (support_format_empty = archive_read_open_filename(v21, v23, 10240)), support_format_empty))
    {
      archive_copy_error(v26, v21);
      archive_read_free(v21);
      return support_format_empty;
    }

    else
    {
      next_header = archive_read_next_header(v21, &v20);
      if (next_header)
      {
        archive_read_free(v21);
        if (next_header == 1)
        {
          return 0;
        }

        else
        {
          archive_copy_error(v26, v21);
          return next_header;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
LABEL_14:
        while (1)
        {
          data_block = archive_read_data_block(v21, &v16, &v15, &v14);
          if (data_block)
          {
            break;
          }

          v9 = v16;
          while (v15)
          {
            v8 = v9;
            v7 = 0;
            v6 = 0;
            while (v7 < v15)
            {
              if (v22)
              {
                if (!*v9)
                {
                  v6 = 1;
                  break;
                }
              }

              else if (*v9 == 13 || *v9 == 10)
              {
                v6 = 1;
                break;
              }

              ++v9;
              ++v7;
            }

            if (!v6)
            {
              archive_strncat(&v17, v8, v7);
              goto LABEL_14;
            }

            ++v9;
            v15 -= v7 + 1;
            archive_strncat(&v17, v8, v7);
            if (v18)
            {
              v13 = add_pattern_mbs(v26, v25, v17);
              if (v13)
              {
                goto LABEL_31;
              }

              v18 = 0;
            }
          }
        }

        if ((data_block & 0x80000000) != 0)
        {
          archive_copy_error(v26, v21);
          archive_read_free(v21);
          archive_string_free(&v17);
          return data_block;
        }

        else if (data_block == 1 && v18 && (v13 = add_pattern_mbs(v26, v25, v17)) != 0)
        {
LABEL_31:
          archive_read_free(v21);
          archive_string_free(&v17);
          return v13;
        }

        else
        {
          archive_read_free(v21);
          archive_string_free(&v17);
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v26, 12, "No memory");
    return -30;
  }
}

uint64_t archive_match_exclude_pattern_from_file_w(unsigned int *a1, const __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_from_file_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 38), 0, a2, a3);
  }
}

uint64_t archive_match_include_pattern(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v3 = add_pattern_mbs(a1, (a1 + 48), a2);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty");
    return -25;
  }
}

uint64_t archive_match_include_pattern_w(unsigned int *a1, const __int32 *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_w") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v3 = add_pattern_wcs(a1, (a1 + 48), a2);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty");
    return -25;
  }
}

uint64_t archive_match_include_pattern_from_file(unsigned int *a1, const __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_from_file") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 48), 1, a2, a3);
  }
}

uint64_t archive_match_include_pattern_from_file_w(unsigned int *a1, const __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_from_file_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 48), 0, a2, a3);
  }
}

uint64_t archive_match_path_excluded(unsigned int *a1, void *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_path_excluded") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if (a1[36])
    {
      v2 = archive_entry_pathname(a2);
      return path_excluded(a1, 1, v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL");
    return -25;
  }
}

uint64_t archive_match_set_inclusion_recursion(unsigned int *a1, unsigned int a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_set_inclusion_recursion") == -30)
  {
    return -30;
  }

  else
  {
    a1[37] = a2;
    return 0;
  }
}

uint64_t archive_match_path_unmatched_inclusions(unsigned int *a1)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions") == -30)
  {
    return -30;
  }

  else
  {
    return a1[53];
  }
}

uint64_t archive_match_path_unmatched_inclusions_next(unsigned int *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions_next") == -30)
  {
    return -30;
  }

  else
  {
    v5 = v7;
    matched = match_list_unmatched_inclusions_next(v7, (v7 + 48), 1, &v4);
    *v6 = v4;
    return matched;
  }
}

uint64_t match_list_unmatched_inclusions_next(_DWORD *a1, uint64_t a2, int a3, void **a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  i = 0;
  *a4 = 0;
  if (*(v11 + 32))
  {
    *(v11 + 32) = 0;
    return 1;
  }

  else
  {
    if (!*(v11 + 24))
    {
      if (!*(v11 + 20))
      {
        return 1;
      }

      *(v11 + 24) = *v11;
    }

    for (i = *(v11 + 24); ; i = *i)
    {
      if (!i)
      {
        *(v11 + 24) = 0;
        return 1;
      }

      mbs = 0;
      if (!*(i + 2))
      {
        break;
      }
    }

    if (v10)
    {
      v6 = 0;
      mbs = archive_mstring_get_mbs(v12, (i + 2), &v6);
      if (mbs < 0 && *__error() == 12)
      {
        return error_nomem(v12);
      }

      if (!v6)
      {
        v6 = &unk_1BF3442C6;
      }

      *v9 = v6;
    }

    else
    {
      v5 = 0;
      mbs = archive_mstring_get_wcs(v12, (i + 2), &v5);
      if (mbs < 0 && *__error() == 12)
      {
        return error_nomem(v12);
      }

      if (!v5)
      {
        v5 = &unk_1BF33BB74;
      }

      *v9 = v5;
    }

    *(v11 + 24) = *i;
    if (!*(v11 + 24))
    {
      *(v11 + 32) = 1;
    }

    return 0;
  }
}

uint64_t archive_match_path_unmatched_inclusions_next_w(unsigned int *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions_next_w") == -30)
  {
    return -30;
  }

  else
  {
    v5 = v7;
    matched = match_list_unmatched_inclusions_next(v7, (v7 + 48), 0, &v4);
    *v6 = v4;
    return matched;
  }
}

uint64_t archive_match_include_time(unsigned int *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = validate_time_flag(a1, a2, "archive_match_include_time");
  if (v5)
  {
    return v5;
  }

  else
  {
    return set_timefilter(a1, a2, a3, a4, a3, a4);
  }
}

uint64_t validate_time_flag(unsigned int *a1, __int16 a2, const char *a3)
{
  if (__archive_check_magic(a1, 212668873, 1, a3) == -30)
  {
    return -30;
  }

  else if ((a2 & 0xFC00) != 0)
  {
    archive_set_error(a1, 22, "Invalid time flag");
    return -25;
  }

  else if ((a2 & 0x300) != 0)
  {
    if ((a2 & 0xEC) != 0)
    {
      archive_set_error(a1, 22, "Invalid comparison flag");
      return -25;
    }

    else if ((a2 & 0x13) != 0)
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "No comparison flag");
      return -25;
    }
  }

  else
  {
    archive_set_error(a1, 22, "No time flag");
    return -25;
  }
}

uint64_t set_timefilter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x100) != 0)
  {
    if ((a2 & 1) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 240) = a2;
      *(a1 + 248) = a3;
      *(a1 + 256) = a4;
      *(a1 + 144) |= 2u;
    }

    if ((a2 & 2) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 288) = a2;
      *(a1 + 296) = a3;
      *(a1 + 304) = a4;
      *(a1 + 144) |= 2u;
    }
  }

  if ((a2 & 0x200) != 0)
  {
    if ((a2 & 1) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 264) = a2;
      *(a1 + 272) = a5;
      *(a1 + 280) = a6;
      *(a1 + 144) |= 2u;
    }

    if ((a2 & 2) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 312) = a2;
      *(a1 + 320) = a5;
      *(a1 + 328) = a6;
      *(a1 + 144) |= 2u;
    }
  }

  return 0;
}

uint64_t archive_match_include_date(unsigned int *a1, int a2, _BYTE *a3)
{
  v4 = validate_time_flag(a1, a2, "archive_match_include_date");
  if (v4)
  {
    return v4;
  }

  else
  {
    return set_timefilter_date(a1, a2, a3);
  }
}

uint64_t set_timefilter_date(_DWORD *a1, int a2, _BYTE *a3)
{
  if (a3 && *a3)
  {
    date = __archive_get_date();
    if (date == -1)
    {
      archive_set_error(a1, 22, "invalid date string");
      return -25;
    }

    else
    {
      return set_timefilter(a1, a2, date, 0, date, 0);
    }
  }

  else
  {
    archive_set_error(a1, 22, "date is empty");
    return -25;
  }
}

uint64_t archive_match_include_date_w(unsigned int *a1, int a2, __int32 *a3)
{
  v4 = validate_time_flag(a1, a2, "archive_match_include_date_w");
  if (v4)
  {
    return v4;
  }

  else
  {
    return set_timefilter_date_w(a1, a2, a3);
  }
}

uint64_t set_timefilter_date_w(_DWORD *a1, int a2, __int32 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a3 && *v9)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v3 = wcslen(v9);
    if ((archive_string_append_from_wcs(&v6, v9, v3) & 0x80000000) != 0)
    {
      archive_string_free(&v6);
      if (*__error() == 12)
      {
        return error_nomem(v11);
      }

      else
      {
        archive_set_error(v11, -1, "Failed to convert WCS to MBS");
        return -25;
      }
    }

    else
    {
      date = __archive_get_date();
      archive_string_free(&v6);
      if (date == -1)
      {
        archive_set_error(v11, 22, "invalid date string");
        return -25;
      }

      else
      {
        return set_timefilter(v11, v10, date, 0, date, 0);
      }
    }
  }

  else
  {
    archive_set_error(v11, 22, "date is empty");
    return -25;
  }
}

uint64_t archive_match_include_file_time(unsigned int *a1, int a2, const char *a3)
{
  v4 = validate_time_flag(a1, a2, "archive_match_include_file_time");
  if (v4)
  {
    return v4;
  }

  else
  {
    return set_timefilter_pathname_mbs(a1, a2, a3);
  }
}

uint64_t set_timefilter_pathname_mbs(_DWORD *a1, int a2, const char *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  memset(&__b, 0, sizeof(__b));
  if (v7 && *v7)
  {
    if (stat(v7, &__b))
    {
      v5 = v9;
      v3 = __error();
      archive_set_error(v5, *v3, "Failed to stat()");
      return -25;
    }

    else
    {
      return set_timefilter_stat(v9, v8, &__b);
    }
  }

  else
  {
    archive_set_error(v9, 22, "pathname is empty");
    return -25;
  }
}

uint64_t archive_match_include_file_time_w(unsigned int *a1, int a2, __int32 *a3)
{
  v4 = validate_time_flag(a1, a2, "archive_match_include_file_time_w");
  if (v4)
  {
    return v4;
  }

  else
  {
    return set_timefilter_pathname_wcs(a1, a2, a3);
  }
}

uint64_t set_timefilter_pathname_wcs(_DWORD *a1, int a2, __int32 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a3 && *v9)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v3 = wcslen(v9);
    if ((archive_string_append_from_wcs(&v6, v9, v3) & 0x80000000) != 0)
    {
      archive_string_free(&v6);
      if (*__error() == 12)
      {
        return error_nomem(v11);
      }

      else
      {
        archive_set_error(v11, -1, "Failed to convert WCS to MBS");
        return -25;
      }
    }

    else
    {
      v5 = set_timefilter_pathname_mbs(v11, v10, v6);
      archive_string_free(&v6);
      return v5;
    }
  }

  else
  {
    archive_set_error(v11, 22, "pathname is empty");
    return -25;
  }
}

uint64_t archive_match_exclude_entry(unsigned int *a1, int a2, void *a3)
{
  v4 = __archive_check_magic(a1, 212668873, 1, "archive_match_time_include_entry");
  if (v4 == -30)
  {
    return -30;
  }

  else if (a3)
  {
    v5 = validate_time_flag(a1, a2, "archive_match_exclude_entry");
    if (v5)
    {
      return v5;
    }

    else
    {
      return add_entry(a1, a2, a3);
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v4);
    return -25;
  }
}

uint64_t add_entry(uint64_t a1, int a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1030040515BCFD8uLL);
  if (v6)
  {
    v5 = archive_entry_pathname(a3);
    if (v5)
    {
      archive_mstring_copy_mbs((v6 + 8), v5);
      *(a1 + 344) = rb_ops_mbs;
      v6[34] = a2;
      *(v6 + 18) = archive_entry_mtime(a3);
      *(v6 + 19) = archive_entry_mtime_nsec(a3);
      *(v6 + 20) = archive_entry_ctime(a3);
      *(v6 + 21) = archive_entry_ctime_nsec(a3);
      if (__archive_rb_tree_insert_node((a1 + 336), v6))
      {
        entry_list_add(a1 + 352, v6);
        *(a1 + 144) |= 2u;
        return 0;
      }

      else
      {
        node = __archive_rb_tree_find_node((a1 + 336), v5);
        if (node)
        {
          *(node + 136) = v6[34];
          *(node + 144) = *(v6 + 18);
          *(node + 152) = *(v6 + 19);
          *(node + 160) = *(v6 + 20);
          *(node + 168) = *(v6 + 21);
        }

        archive_mstring_clean((v6 + 8));
        free(v6);
        return 0;
      }
    }

    else
    {
      free(v6);
      archive_set_error(a1, 22, "pathname is NULL");
      return -25;
    }
  }

  else
  {
    return error_nomem(a1);
  }
}

uint64_t archive_match_time_excluded(unsigned int *a1, void *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_time_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if ((a1[36] & 2) != 0)
    {
      return time_excluded(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL");
    return -25;
  }
}

uint64_t archive_match_include_uid(unsigned int *a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uid") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_id(a1, (a1 + 94), a2);
  }
}

uint64_t add_owner_id(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) + 1) >= *a2)
  {
    if (*a2)
    {
      *a2 *= 2;
    }

    else
    {
      *a2 = 8;
    }

    v6 = malloc_type_realloc(*(a2 + 16), 8 * *a2, 0x100004000313F17uLL);
    if (!v6)
    {
      return error_nomem(a1);
    }

    *(a2 + 16) = v6;
  }

    ;
  }

  if (i == *(a2 + 8))
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);
    *(a2 + 8) = v4 + 1;
    *(v3 + 8 * v4) = a3;
  }

  else if (*(*(a2 + 16) + 8 * i) != a3)
  {
    __memmove_chk();
    *(*(a2 + 16) + 8 * i) = a3;
    ++*(a2 + 8);
  }

  a1[36] |= 4u;
  return 0;
}

uint64_t archive_match_include_gid(unsigned int *a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gid") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_id(a1, (a1 + 100), a2);
  }
}

uint64_t archive_match_include_uname(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uname") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 106), 1, a2);
  }
}

uint64_t add_owner_name(_DWORD *a1, uint64_t a2, int a3, char *a4)
{
  v5 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v5)
  {
    if (a3)
    {
      archive_mstring_copy_mbs(v5 + 16, a4);
    }

    else
    {
      archive_mstring_copy_wcs(v5 + 16, a4);
    }

    match_list_add(a2, v5);
    a1[36] |= 4u;
    return 0;
  }

  else
  {
    return error_nomem(a1);
  }
}

uint64_t archive_match_include_uname_w(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uname_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 106), 0, a2);
  }
}

uint64_t archive_match_include_gname(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gname") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 116), 1, a2);
  }
}

uint64_t archive_match_include_gname_w(unsigned int *a1, char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gname_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 116), 0, a2);
  }
}

uint64_t archive_match_owner_excluded(unsigned int *a1, uint64_t *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_id_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if ((a1[36] & 4) != 0)
    {
      return owner_excluded(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL");
    return -25;
  }
}

uint64_t cmp_node_mbs(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  __s2 = 0;
  archive_mstring_get_mbs(0, a1 + 32, &__s1);
  archive_mstring_get_mbs(0, v5 + 32, &__s2);
  if (__s1)
  {
    if (__s2)
    {
      return strcmp(__s1, __s2);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t cmp_key_mbs(char *a1, char *a2)
{
  v5 = a1;
  __s2 = a2;
  __s1[1] = a1;
  __s1[0] = 0;
  archive_mstring_get_mbs(0, (a1 + 32), __s1);
  if (__s1[0])
  {
    return strcmp(__s1[0], __s2);
  }

  else
  {
    return -1;
  }
}

uint64_t error_nomem(_DWORD *a1)
{
  archive_set_error(a1, 12, "No memory");
  a1[1] = 0x8000;
  return 4294967266;
}

uint64_t match_list_add(uint64_t result, uint64_t a2)
{
  **(result + 8) = a2;
  *(result + 8) = a2;
  ++*(result + 16);
  ++*(result + 20);
  return result;
}

uint64_t match_path_inclusion(_DWORD *a1, uint64_t a2, int a3, __int32 *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (a1[37])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;
  mbs = 0;
  if (v11)
  {
    v7 = 0;
    mbs = archive_mstring_get_mbs(v13, v12 + 16, &v7);
    if (!mbs)
    {
      return __archive_pathmatch(v7, v10, v9);
    }
  }

  else
  {
    v6 = 0;
    mbs = archive_mstring_get_wcs(v13, v12 + 16, &v6);
    if (!mbs)
    {
      return __archive_pathmatch_w(v6, v10, v9);
    }
  }

  if (*__error() == 12)
  {
    return error_nomem(v13);
  }

  else
  {
    return 0;
  }
}

uint64_t match_path_exclusion(_DWORD *a1, uint64_t a2, int a3, __int32 *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 3;
  mbs = 0;
  if (a3)
  {
    v6 = 0;
    mbs = archive_mstring_get_mbs(v12, v11 + 16, &v6);
    if (!mbs)
    {
      return __archive_pathmatch(v6, v9, v8);
    }
  }

  else
  {
    v5 = 0;
    mbs = archive_mstring_get_wcs(v12, v11 + 16, &v5);
    if (!mbs)
    {
      return __archive_pathmatch_w(v5, v9, v8);
    }
  }

  if (*__error() == 12)
  {
    return error_nomem(v12);
  }

  else
  {
    return 0;
  }
}

uint64_t set_timefilter_stat(_DWORD *a1, int a2, uint64_t a3)
{
  v8 = archive_entry_new();
  if (v8)
  {
    archive_entry_copy_stat(v8, a3);
    v7 = archive_entry_ctime(v8);
    v5 = archive_entry_ctime_nsec(v8);
    v6 = archive_entry_mtime(v8);
    v4 = archive_entry_mtime_nsec(v8);
    archive_entry_free(v8);
    return set_timefilter(a1, a2, v6, v4, v7, v5);
  }

  else
  {
    return error_nomem(a1);
  }
}

uint64_t entry_list_add(uint64_t result, uint64_t a2)
{
  **(result + 8) = a2;
  *(result + 8) = a2 + 24;
  ++*(result + 16);
  return result;
}

uint64_t match_owner_id(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = *(a1 + 8);
  while (v3 < v5)
  {
    v4 = (v3 + v5) >> 1;
    if (*(*(a1 + 16) + 8 * v4) == a2)
    {
      return 1;
    }

    if (*(*(a1 + 16) + 8 * v4) < a2)
    {
      v3 = v4 + 1;
    }

    else
    {
      v5 = (v3 + v5) >> 1;
    }
  }

  return 0;
}

uint64_t match_owner_name_mbs(_DWORD *a1, uint64_t **a2, char *a3)
{
  v8 = a1;
  v7 = a2;
  __s2 = a3;
  i = 0;
  __s1 = 0;
  if (a3 && *__s2)
  {
    for (i = *v7; i; i = *i)
    {
      if ((archive_mstring_get_mbs(v8, (i + 2), &__s1) & 0x80000000) != 0 && *__error() == 12)
      {
        return error_nomem(v8);
      }

      if (__s1 && !strcmp(__s1, __s2))
      {
        ++*(i + 2);
        return 1;
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_set_format_7zip(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_7zip") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_calloc(1uLL, 0xF140uLL, 0x10F0040EC31971FuLL);
    if (v2)
    {
      *v2 = -1;
      __archive_rb_tree_init(v2 + 7718, archive_write_set_format_7zip_rb_ops);
      file_init_register_0(v2);
      file_init_register_empty(v2);
      *(v2 + 32) = 196865;
      *(v2 + 33) = 6;
      *(a1 + 248) = v2;
      *(a1 + 256) = "7zip";
      *(a1 + 272) = _7z_options;
      *(a1 + 288) = _7z_write_header;
      *(a1 + 296) = _7z_write_data;
      *(a1 + 280) = _7z_finish_entry;
      *(a1 + 304) = _7z_close;
      *(a1 + 312) = _7z_free;
      *(a1 + 16) = 917504;
      *(a1 + 24) = "7zip";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate 7-Zip data");
      return -30;
    }
  }
}

uint64_t file_cmp_node_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    return memcmp(*(a1 + 40), *(a2 + 40), *(a1 + 32));
  }

  else if (*(a1 + 32) > *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t file_init_register_0(uint64_t result)
{
  *(result + 61712) = 0;
  *(result + 61720) = result + 61712;
  return result;
}

uint64_t file_init_register_empty(uint64_t result)
{
  *(result + 61728) = 0;
  *(result + 61736) = result + 61728;
  return result;
}

uint64_t _7z_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = *(a1 + 248);
  if (!strcmp(a2, "compression"))
  {
    if (!a3 || !strcmp(a3, "copy") || !strcmp(a3, "COPY") || !strcmp(a3, "store") || !strcmp(a3, "STORE"))
    {
      *(v4 + 128) = 0;
      return 0;
    }

    if (!strcmp(a3, "deflate") || !strcmp(a3, "DEFLATE"))
    {
      *(v4 + 128) = 262408;
      return 0;
    }

    if (!strcmp(a3, "bzip2") || !strcmp(a3, "BZIP2"))
    {
      *(v4 + 128) = 262658;
      return 0;
    }

    if (!strcmp(a3, "lzma1") || !strcmp(a3, "LZMA1"))
    {
      *(v4 + 128) = 196865;
      return 0;
    }

    if (!strcmp(a3, "lzma2") || !strcmp(a3, "LZMA2"))
    {
      *(v4 + 128) = 33;
      return 0;
    }

    if (!strcmp(a3, "ppmd") || !strcmp(a3, "PPMD") || !strcmp(a3, "PPMd"))
    {
      *(v4 + 128) = 197633;
      return 0;
    }

    return -25;
  }

  else if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *(v4 + 132) = *a3 - 48;
      return 0;
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t _7z_write_header(uint64_t a1, void *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v8 = *(a1 + 248);
  *(v8 + 16) = 0;
  *(v8 + 104) = 0;
  if (*(v8 + 256) || (*(v8 + 256) = archive_string_conversion_to_charset(v10, "UTF-16LE", 1)) != 0)
  {
    inited = file_new_0(v10, v9, &v7);
    if (inited >= -20)
    {
      if (v7[6] || (v7[15] & 1) == 0 || __archive_rb_tree_insert_node((v8 + 61744), v7))
      {
        if (v7[7])
        {
          ++*(v8 + 64);
        }

        if ((v7[7] & 4) != 0)
        {
          ++*(v8 + 80);
        }

        if ((v7[7] & 2) != 0)
        {
          ++*(v8 + 72);
        }

        ++*(v8 + 24);
        *(v8 + 56) += (*(v7 + 8) + 2);
        if (v7[6])
        {
          if (*(v8 + 24) - *(v8 + 40) != 1 || (inited = _7z_compression_init_encoder(v10, *(v8 + 128), *(v8 + 132)), (inited & 0x80000000) == 0))
          {
            file_register_0(v8, v7);
            *(v8 + 16) = v7;
            *(v8 + 104) = v7[6];
            *(v8 + 112) = 0;
            if (archive_entry_filetype(v9) == 40960)
            {
              buf = archive_entry_symlink(v9);
              len = compress_out(v10, buf, v7[6], 1u);
              if (len < 0)
              {
                return len;
              }

              v2 = crc32(*(v8 + 112), buf, len);
              *(v8 + 112) = v2;
              *(v8 + 104) -= len;
            }

            return inited;
          }

          file_free_0(v7);
          return -30;
        }

        else
        {
          ++*(v8 + 40);
          if (v7[15])
          {
            ++*(v8 + 48);
          }

          else
          {
            file_register_empty(v8, v7);
          }

          return inited;
        }
      }

      else
      {
        file_free_0(v7);
        return 0;
      }
    }

    else
    {
      if (v7)
      {
        file_free_0(v7);
      }

      return inited;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t _7z_write_data(uint64_t a1, const Bytef *a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *(v5 + 104))
  {
    v6 = *(v5 + 104);
  }

  if (!v6 || !*(v5 + 16))
  {
    return 0;
  }

  len = compress_out(a1, a2, v6, 1u);
  if ((len & 0x8000000000000000) == 0)
  {
    *(v5 + 112) = crc32(*(v5 + 112), a2, len);
    *(v5 + 104) -= len;
  }

  return len;
}

uint64_t _7z_finish_entry(uint64_t a1)
{
  v4 = *(a1 + 248);
  if (*(v4 + 16))
  {
    while (*(v4 + 104))
    {
      v3 = *(v4 + 104);
      if (v3 > *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      v2 = _7z_write_data(a1, *(a1 + 168), v3);
      if (v2 < 0)
      {
        return v2;
      }
    }

    *(v4 + 88) += *(v4 + 152);
    *(v4 + 96) += *(v4 + 176);
    *(*(v4 + 16) + 116) = *(v4 + 112);
    *(v4 + 16) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _7z_close(uint64_t a1)
{
  v21 = *(a1 + 248);
  if (*(v21 + 24))
  {
    v7 = compress_out(a1, 0, 0, 0);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    v5 = *(v21 + 176);
    v4 = *(v21 + 152);
    *(v21 + 232) = *(v21 + 128);
    *(v21 + 240) = *(v21 + 184);
    *(v21 + 248) = *(v21 + 192);
    *(v21 + 184) = 0;
    *(v21 + 192) = 0;
    *(v21 + 32) = *(v21 + 24) - *(v21 + 40);
    if (*(v21 + 61728))
    {
      **(v21 + 61720) = *(v21 + 61728);
      *(v21 + 61720) = *(v21 + 61736);
    }

    for (i = __archive_rb_tree_iterate((v21 + 61744), 0, 0); i; i = __archive_rb_tree_iterate((v21 + 61744), i, 1u))
    {
      file_register_0(v21, i);
    }

    v3 = 196865;
    if (*(v21 + 128) == 33 || !*(v21 + 128))
    {
      v3 = *(v21 + 128);
    }

    if (*(v21 + 24) == 1)
    {
      v3 = 0;
    }

    inited = _7z_compression_init_encoder(a1, v3, *(v21 + 132));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *(v21 + 124) = 1;
    *(v21 + 116) = 0;
    header = make_header(a1, 0, v5, v4, 1, (v21 + 232));
    if ((header & 0x80000000) != 0)
    {
      return header;
    }

    v10 = compress_out(a1, 0, 0, 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v20 = v5;
    v19 = *(v21 + 176);
    v16 = *(v21 + 116);
    v18 = *(v21 + 152);
    if (v3)
    {
      free(*(v21 + 248));
      *(v21 + 232) = v3;
      *(v21 + 240) = *(v21 + 184);
      *(v21 + 248) = *(v21 + 192);
      *(v21 + 184) = 0;
      *(v21 + 192) = 0;
      v11 = _7z_compression_init_encoder(a1, 0, 0);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      *(v21 + 124) = 2;
      *(v21 + 120) = 0;
      v12 = enc_uint64(a1, 0x17uLL);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      streamsInfo = make_streamsInfo(a1, v5, v19, v18, 1, (v21 + 232), 0, v16);
      if ((streamsInfo & 0x80000000) != 0)
      {
        return streamsInfo;
      }

      v14 = compress_out(a1, 0, 0, 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v20 = v5 + v19;
      v19 = *(v21 + 176);
      v16 = *(v21 + 120);
    }

    *(v21 + 124) = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v16 = 0;
  }

  v17 = *(v21 + 8);
  *(v21 + 61704) = 61440;
  __memcpy_chk();
  *(v21 + 270) = 0;
  *(v21 + 271) = 3;
  archive_le64enc_1(v21 + 276, v20);
  archive_le64enc_1(v21 + 284, v19);
  archive_le32enc_4(v21 + 292, v16);
  v1 = crc32(0, (v21 + 276), 0x14u);
  archive_le32enc_4(v21 + 272, v1);
  *(v21 + 61704) -= 32;
  v15 = copy_out_0(a1, 0, v17);
  if (v15)
  {
    return v15;
  }

  else
  {
    return flush_wbuff_0(a1);
  }
}

uint64_t _7z_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if ((*v2 & 0x80000000) == 0)
  {
    close(*v2);
  }

  file_free_register_0(v2);
  compression_end_0(a1, v2 + 136);
  free(*(v2 + 31));
  free(v2);
  return 0;
}

uint64_t file_new_0(uint64_t a1, void *a2, void **a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v18 = *(a1 + 248);
  *a3 = 0;
  v17 = malloc_type_calloc(1uLL, 0x80uLL, 0x1030040E66F03BBuLL);
  if (v17)
  {
    if (_archive_entry_pathname_l(v20, &v16, &v15, *(v18 + 256)) < 0)
    {
      if (*__error() == 12)
      {
        free(v17);
        archive_set_error(v21, 12, "Can't allocate memory for UTF-16LE");
        return -30;
      }

      archive_set_error(v21, -1, "A filename cannot be converted to UTF-16LE;You should disable making Joliet extension");
      v14 = -20;
    }

    v3 = malloc_type_malloc(v15 + 2, 0x9BEB1BC7uLL);
    *(v17 + 5) = v3;
    if (*(v17 + 5))
    {
      __memcpy_chk();
      *(*(v17 + 5) + v15) = 0;
      *(*(v17 + 5) + v15 + 1) = 0;
      *(v17 + 8) = v15;
      v4 = archive_entry_mode(v20);
      *(v17 + 56) = v4;
      if (archive_entry_filetype(v20) == 0x8000)
      {
        v5 = archive_entry_size(v20);
        *(v17 + 6) = v5;
      }

      else
      {
        archive_entry_set_size(v20, 0);
      }

      if (archive_entry_filetype(v20) == 0x4000)
      {
        *(v17 + 120) = *(v17 + 120) & 0xFE | 1;
      }

      else if (archive_entry_filetype(v20) == 40960)
      {
        v6 = archive_entry_symlink(v20);
        *(v17 + 6) = strlen(v6);
      }

      if (archive_entry_mtime_is_set(v20))
      {
        *(v17 + 14) |= 1u;
        v7 = archive_entry_mtime(v20);
        *(v17 + 8) = v7;
        v8 = archive_entry_mtime_nsec(v20);
        *(v17 + 9) = v8;
      }

      if (archive_entry_atime_is_set(v20))
      {
        *(v17 + 14) |= 2u;
        v9 = archive_entry_atime(v20);
        *(v17 + 10) = v9;
        v10 = archive_entry_atime_nsec(v20);
        *(v17 + 11) = v10;
      }

      if (archive_entry_ctime_is_set(v20))
      {
        *(v17 + 14) |= 4u;
        v11 = archive_entry_ctime(v20);
        *(v17 + 12) = v11;
        v12 = archive_entry_ctime_nsec(v20);
        *(v17 + 13) = v12;
      }

      *v19 = v17;
      return v14;
    }

    else
    {
      free(v17);
      archive_set_error(v21, 12, "Can't allocate memory for Name");
      return -30;
    }
  }

  else
  {
    archive_set_error(v21, 12, "Can't allocate memory");
    return -30;
  }
}

uint64_t file_register_empty(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 61736) = a2;
  *(result + 61736) = a2 + 24;
  return result;
}

uint64_t _7z_compression_init_encoder(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 248);
  if (a2)
  {
    switch(a2)
    {
      case 33:
        inited = compression_init_encoder_lzma2(a1, (v5 + 17), a3);
        goto LABEL_14;
      case 196865:
        inited = compression_init_encoder_lzma1(a1, (v5 + 17), a3);
        goto LABEL_14;
      case 197633:
        inited = compression_init_encoder_ppmd(a1, (v5 + 17), 6u, 0x1000000u);
        goto LABEL_14;
      case 262408:
        inited = compression_init_encoder_deflate(a1, (v5 + 17), a3, 0);
        goto LABEL_14;
      case 262658:
        inited = compression_init_encoder_bzip2_0(a1, (v5 + 17), a3);
        goto LABEL_14;
    }
  }

  inited = compression_init_encoder_copy(a1, (v5 + 17));
LABEL_14:
  if (!inited)
  {
    v5[19] = 0;
    v5[20] = v5 + 33;
    v5[21] = 61440;
    v5[22] = 0;
  }

  return inited;
}

uint64_t file_register_0(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 61720) = a2;
  *(result + 61720) = a2 + 24;
  return result;
}

uint64_t compress_out(uint64_t a1, const Bytef *a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a1 + 248);
  if (a4 || *(v7 + 152) || a3)
  {
    if ((*(v7 + 124) & 1) != 0 && a3)
    {
      *(v7 + 116) = crc32(*(v7 + 116), a2, a3);
    }

    *(v7 + 136) = a2;
    *(v7 + 144) = a3;
    do
    {
      do
      {
        v6 = compression_code_0(a1, v7 + 136, a4);
        if (v6 >= 2)
        {
          return -30;
        }

        if (*(v7 + 168))
        {
          break;
        }

        if (write_to_temp_1(a1, (v7 + 264), 0xF000uLL))
        {
          return -30;
        }

        *(v7 + 160) = v7 + 264;
        *(v7 + 168) = 61440;
        if ((*(v7 + 124) & 2) != 0)
        {
          *(v7 + 120) = crc32(*(v7 + 120), (v7 + 264), 0xF000u);
        }
      }

      while (!a4 && v6 != 1);
    }

    while (*(v7 + 144));
    if (!a4)
    {
      v5 = 61440 - *(v7 + 168);
      if (write_to_temp_1(a1, (v7 + 264), v5))
      {
        return -30;
      }

      if ((*(v7 + 124) & 2) != 0 && v5)
      {
        *(v7 + 120) = crc32(*(v7 + 120), (v7 + 264), v5);
      }
    }

    return a3;
  }

  return 0;
}

uint64_t compression_init_encoder_deflate(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
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
      *(a2 + 72) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *(a2 + 72) = strm;
      *(a2 + 64) = 1;
      *(a2 + 80) = compression_code_deflate;
      *(a2 + 88) = compression_end_deflate;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for gzip stream");
    return -30;
  }
}

uint64_t compression_init_encoder_bzip2_0(_DWORD *a1, uint64_t a2, int a3)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
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
      *(a2 + 72) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *(a2 + 72) = strm;
      *(a2 + 64) = 1;
      *(a2 + 80) = compression_code_bzip2_0;
      *(a2 + 88) = compression_end_bzip2_0;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for bzip2 stream");
    return -30;
  }
}

uint64_t compression_init_encoder_ppmd(_DWORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  v6 = malloc_type_calloc(1uLL, 0x4B48uLL, 0x10B0040A3FB22B0uLL);
  if (v6)
  {
    v6[2405] = malloc_type_malloc(0x20uLL, 0x44F2E7CDuLL);
    if (v6[2405])
    {
      v6[2406] = v6[2405];
      v6[2407] = v6[2405] + 32;
      v5 = malloc_type_malloc(5uLL, 0x34F1FCB7uLL);
      if (v5)
      {
        *v5 = a3;
        archive_le32enc_4((v5 + 1), a4);
        __archive_ppmd7_functions(v6 + 1);
        if ((off_1F3DE4D68[0])((v6 + 1), a4))
        {
          off_1F3DE4D78(v6 + 1, a3);
          v6[2403] = a1;
          v6[2404] = ppmd_write;
          v6[2402] = v6 + 2403;
          (off_1F3DE4DA8[0])((v6 + 2399));
          *v6 = 0;
          *(a2 + 72) = v6;
          *(a2 + 64) = 1;
          *(a2 + 80) = compression_code_ppmd;
          *(a2 + 88) = compression_end_ppmd;
          *(a2 + 48) = 5;
          *(a2 + 56) = v5;
          return 0;
        }

        else
        {
          free(v6[2405]);
          free(v6);
          free(v5);
          archive_set_error(a1, 12, "Coludn't allocate memory for PPMd");
          return -30;
        }
      }

      else
      {
        free(v6[2405]);
        free(v6);
        archive_set_error(a1, 12, "Coludn't allocate memory for PPMd");
        return -30;
      }
    }

    else
    {
      free(v6);
      archive_set_error(a1, 12, "Can't allocate memory for PPMd");
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for PPMd");
    return -30;
  }
}

uint64_t compression_init_encoder_copy(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  *(a2 + 64) = 1;
  *(a2 + 80) = compression_code_copy;
  *(a2 + 88) = compression_end_copy;
  return 0;
}

uint64_t compression_end_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    *(a2 + 48) = 0;
    free(*(a2 + 56));
    *(a2 + 56) = 0;
    return (*(a2 + 88))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_deflate(_DWORD *a1, Bytef **a2, int a3)
{
  strm = a2[9];
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

uint64_t compression_end_deflate(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 72);
  v3 = deflateEnd(strm);
  free(strm);
  *(a2 + 72) = 0;
  *(a2 + 64) = 0;
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

uint64_t compression_code_bzip2_0(_DWORD *a1, char **a2, int a3)
{
  strm = a2[9];
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

uint64_t compression_end_bzip2_0(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 72);
  v3 = BZ2_bzCompressEnd(strm);
  free(strm);
  *(a2 + 72) = 0;
  *(a2 + 64) = 0;
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

uint64_t compression_init_encoder_lzma_0(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v12 + 64))
  {
    compression_end_0(v13, v12);
  }

  v9 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F00405178BF3FuLL);
  if (v9)
  {
    v8 = v9 + 17;
    if (v11 > 9)
    {
      v11 = 9;
    }

    if (lzma_lzma_preset())
    {
      free(v9);
      *(v12 + 72) = 0;
      archive_set_error(v13, 12, "Internal error initializing compression library");
      return -30;
    }

    else
    {
      *v8 = v10;
      v8[1] = __b;
      v8[2] = -1;
      if (lzma_properties_size())
      {
        free(v9);
        *(v12 + 72) = 0;
        archive_set_error(v13, -1, "lzma_properties_size failed");
        return -30;
      }

      else
      {
        if (*(v12 + 48))
        {
          *(v12 + 56) = malloc_type_malloc(*(v12 + 48), 0xCBD65F51uLL);
          if (!*(v12 + 56))
          {
            free(v9);
            *(v12 + 72) = 0;
            archive_set_error(v13, 12, "Cannot allocate memory");
            return -30;
          }

          if (lzma_properties_encode())
          {
            free(v9);
            *(v12 + 72) = 0;
            archive_set_error(v13, -1, "lzma_properties_encode failed");
            return -30;
          }
        }

        memcpy(v9, &compression_init_encoder_lzma_lzma_init_data_0, 0x88uLL);
        v5 = lzma_raw_encoder();
        if (v5)
        {
          free(v9);
          *(v12 + 72) = 0;
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
          *(v12 + 72) = v9;
          *(v12 + 64) = 1;
          *(v12 + 80) = compression_code_lzma_0;
          *(v12 + 88) = compression_end_lzma_0;
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v13, 12, "Can't allocate memory for lzma stream");
    return -30;
  }
}

uint64_t compression_code_lzma_0(_DWORD *a1, void *a2, int a3)
{
  v6 = a2[9];
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

uint64_t compression_end_lzma_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  lzma_end();
  free(v3);
  result = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t archive_le32enc_4(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t ppmd_write(uint64_t result, char a2)
{
  v5 = *(*result + 248);
  if (v5[21])
  {
    v2 = v5[20];
    v5[20] = v2 + 1;
    *v2 = a2;
    --v5[21];
    ++v5[22];
  }

  else
  {
    v4 = v5[26];
    if (v4[2406] < v4[2407])
    {
      v3 = v4[2406];
      v4[2406] = v3 + 1;
      *v3 = a2;
      ++v4[2408];
    }
  }

  return result;
}

uint64_t compression_code_ppmd(uint64_t a1, void *a2, int a3)
{
  v11 = a2[9];
  if (*(v11 + 19264))
  {
    v10 = (*(v11 + 19248) - *(v11 + 19264));
    while (1)
    {
      v9 = 0;
      if (a2[4])
      {
        v9 = *(v11 + 19264) != 0;
      }

      if (!v9)
      {
        break;
      }

      v3 = v10++;
      LOBYTE(v3) = *v3;
      v4 = a2[3];
      a2[3] = v4 + 1;
      *v4 = v3;
      --a2[4];
      ++a2[5];
      --*(v11 + 19264);
    }

    if (*(v11 + 19264))
    {
      return 0;
    }

    if (*v11 == 1)
    {
      return 1;
    }

    *(v11 + 19248) = *(v11 + 19240);
  }

  while (1)
  {
    v8 = 0;
    if (a2[1])
    {
      v8 = a2[4] != 0;
    }

    if (!v8)
    {
      break;
    }

    v5 = off_1F3DE4DB8[0];
    v6 = (*a2)++;
    v5((v11 + 8), v11 + 19192, *v6);
    --a2[1];
    ++a2[2];
  }

  v14 = 0;
  if (!a2[1] && !a3)
  {
    off_1F3DE4DB0(v11 + 19192);
    *v11 = 1;
    if (!*(v11 + 19264))
    {
      return 1;
    }
  }

  return v14;
}

uint64_t compression_end_ppmd(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  off_1F3DE4D70(v3 + 1);
  free(v3[2405]);
  free(v3);
  *(a2 + 72) = 0;
  result = 0;
  *(a2 + 64) = 0;
  return result;
}

BOOL compression_code_copy(uint64_t a1, void *a2, int a3)
{
  if (a2[4] > a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a2[4];
  }

  if (v4)
  {
    __memcpy_chk();
    *a2 += v4;
    a2[1] -= v4;
    a2[2] += v4;
    a2[3] += v4;
    a2[4] -= v4;
    a2[5] += v4;
  }

  return !a3 && !a2[1];
}

uint64_t compression_end_copy(uint64_t a1, uint64_t a2)
{
  result = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t compression_code_0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 64))
  {
    return (*(a2 + 80))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t write_to_temp_1(uint64_t a1, char *a2, size_t a3)
{
  v8 = *(a1 + 248);
  if (*v8 == -1 && (*(v8 + 8) = 0, *v8 = __archive_mktemp(0), (*v8 & 0x80000000) != 0))
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Couldn't create temporary file");
    return -30;
  }

  else
  {
    __buf = a2;
    while (a3)
    {
      v6 = write(*v8, __buf, a3);
      if (v6 < 0)
      {
        v4 = __error();
        archive_set_error(a1, *v4, "fwrite function failed");
        return -30;
      }

      a3 -= v6;
      __buf += v6;
      *(v8 + 8) += v6;
    }

    return 0;
  }
}

uint64_t make_header(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = *(a1 + 248);
  *&v11[8] = 0;
  v10 = 0;
  v9 = 0;
  *v11 = enc_uint64(a1, 1uLL);
  if ((*v11 & 0x80000000) != 0)
  {
    return *v11;
  }

  else
  {
    if (v12[4])
    {
      *v11 = enc_uint64(v18, 4uLL);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }

      *v11 = make_streamsInfo(v18, v17, v16, v15, v14, v13, 1, 0);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }
    }

    *v11 = enc_uint64(v18, 5uLL);
    if ((*v11 & 0x80000000) != 0)
    {
      return *v11;
    }

    else
    {
      *v11 = enc_uint64(v18, v12[3]);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }

      else
      {
        if (v12[5])
        {
          *v11 = enc_uint64(v18, 0xEuLL);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          *v11 = enc_uint64(v18, (v12[3] + 7) >> 3);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          v10 = 0;
          v9 = 0x80;
          for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
          {
            if (!*(*&v11[4] + 48))
            {
              v10 |= v9;
            }

            v9 = v9 >> 1;
            if (!v9)
            {
              *v11 = compress_out(v18, &v10, 1, 1u);
              if ((*v11 & 0x80000000) != 0)
              {
                return *v11;
              }

              v9 = 0x80;
              v10 = 0;
            }
          }

          if (v9 != 128)
          {
            *v11 = compress_out(v18, &v10, 1, 1u);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }
          }
        }

        if (v12[5] > v12[6])
        {
          *v11 = enc_uint64(v18, 0xFuLL);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          *v11 = enc_uint64(v18, (v12[5] + 7) >> 3);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          v10 = 0;
          v9 = 0x80;
          for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
          {
            if (!*(*&v11[4] + 48))
            {
              if ((*(*&v11[4] + 120) & 1) == 0)
              {
                v10 |= v9;
              }

              v9 = v9 >> 1;
              if (!v9)
              {
                *v11 = compress_out(v18, &v10, 1, 1u);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }

                v9 = 0x80;
                v10 = 0;
              }
            }
          }

          if (v9 != 128)
          {
            *v11 = compress_out(v18, &v10, 1, 1u);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }
          }
        }

        *v11 = enc_uint64(v18, 0x11uLL);
        if ((*v11 & 0x80000000) != 0)
        {
          return *v11;
        }

        else
        {
          *v11 = enc_uint64(v18, v12[7] + 1);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          else
          {
            *v11 = enc_uint64(v18, 0);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }

            else
            {
              for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
              {
                *v11 = compress_out(v18, *(*&v11[4] + 40), (*(*&v11[4] + 32) + 2), 1u);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }
              }

              *v11 = make_time(v18, 0x14u, 1, 0);
              if ((*v11 & 0x80000000) != 0)
              {
                return *v11;
              }

              else
              {
                *v11 = make_time(v18, 0x12u, 4, 2);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }

                else
                {
                  *v11 = make_time(v18, 0x13u, 2, 1);
                  if ((*v11 & 0x80000000) != 0)
                  {
                    return *v11;
                  }

                  else
                  {
                    *v11 = enc_uint64(v18, 0x15uLL);
                    if ((*v11 & 0x80000000) != 0)
                    {
                      return *v11;
                    }

                    else
                    {
                      *v11 = enc_uint64(v18, 4 * v12[3] + 2);
                      if ((*v11 & 0x80000000) != 0)
                      {
                        return *v11;
                      }

                      else
                      {
                        *v11 = enc_uint64(v18, 1uLL);
                        if ((*v11 & 0x80000000) != 0)
                        {
                          return *v11;
                        }

                        else
                        {
                          *v11 = enc_uint64(v18, 0);
                          if ((*v11 & 0x80000000) != 0)
                          {
                            return *v11;
                          }

                          else
                          {
                            for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
                            {
                              *v8 = 0;
                              if (*(*&v11[4] + 120))
                              {
                                v7 = 16;
                              }

                              else
                              {
                                v7 = 32;
                              }

                              if ((*(*&v11[4] + 112) & 0x92) == 0)
                              {
                                v7 |= 1u;
                              }

                              archive_le32enc_4(v8, v7 | 0x8000 | (*(*&v11[4] + 112) << 16));
                              *v11 = compress_out(v18, v8, 4, 1u);
                              if ((*v11 & 0x80000000) != 0)
                              {
                                return *v11;
                              }
                            }

                            *v11 = enc_uint64(v18, 0);
                            if ((*v11 & 0x80000000) != 0)
                            {
                              return *v11;
                            }

                            else
                            {
                              *v11 = enc_uint64(v18, 0);
                              if ((*v11 & 0x80000000) != 0)
                              {
                                return *v11;
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

uint64_t enc_uint64(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 128;
  v6[0] = 0;
  for (i = 1; i < 9; ++i)
  {
    if (a2 < v4)
    {
      v6[0] |= a2;
      return compress_out(a1, v6, i, 1u);
    }

    v6[i] = a2;
    a2 >>= 8;
    v6[0] |= v4;
    v4 >>= 1;
  }

  return compress_out(a1, v6, i, 1u);
}

uint64_t make_streamsInfo(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6, int a7, unsigned int a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = *(a1 + 248);
  v17 = 0;
  j = 0;
  m = 0;
  k = 0;
  substreamsInfo = 0;
  if (*a6)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(v18 + 32);
  }

  substreamsInfo = enc_uint64(v26, 6uLL);
  if ((substreamsInfo & 0x80000000) != 0)
  {
    return substreamsInfo;
  }

  else
  {
    substreamsInfo = enc_uint64(v26, v25);
    if ((substreamsInfo & 0x80000000) != 0)
    {
      return substreamsInfo;
    }

    else
    {
      substreamsInfo = enc_uint64(v26, v17);
      if ((substreamsInfo & 0x80000000) != 0)
      {
        return substreamsInfo;
      }

      else
      {
        substreamsInfo = enc_uint64(v26, 9uLL);
        if ((substreamsInfo & 0x80000000) != 0)
        {
          return substreamsInfo;
        }

        else
        {
          if (v17 <= 1)
          {
            substreamsInfo = enc_uint64(v26, v24);
            if ((substreamsInfo & 0x80000000) != 0)
            {
              return substreamsInfo;
            }
          }

          else
          {
            for (i = *(v18 + 61712); i && *(i + 48); i = *(i + 24))
            {
              substreamsInfo = enc_uint64(v26, *(i + 48));
              if ((substreamsInfo & 0x80000000) != 0)
              {
                return substreamsInfo;
              }
            }
          }

          substreamsInfo = enc_uint64(v26, 0);
          if ((substreamsInfo & 0x80000000) != 0)
          {
            return substreamsInfo;
          }

          else
          {
            substreamsInfo = enc_uint64(v26, 7uLL);
            if ((substreamsInfo & 0x80000000) != 0)
            {
              return substreamsInfo;
            }

            else
            {
              substreamsInfo = enc_uint64(v26, 0xBuLL);
              if ((substreamsInfo & 0x80000000) != 0)
              {
                return substreamsInfo;
              }

              else
              {
                substreamsInfo = enc_uint64(v26, v17);
                if ((substreamsInfo & 0x80000000) != 0)
                {
                  return substreamsInfo;
                }

                else
                {
                  substreamsInfo = enc_uint64(v26, 0);
                  if ((substreamsInfo & 0x80000000) != 0)
                  {
                    return substreamsInfo;
                  }

                  else
                  {
                    for (j = 0; j < v17; ++j)
                    {
                      substreamsInfo = enc_uint64(v26, v22);
                      if ((substreamsInfo & 0x80000000) != 0)
                      {
                        return substreamsInfo;
                      }

                      for (k = 0; k < v22; ++k)
                      {
                        v11 = v21[6 * k];
                        archive_be64enc_0(v28, v11);
                          ;
                        }

                        if (!m)
                        {
                          m = 1;
                        }

                        if (*&v21[6 * k + 2])
                        {
                          substreamsInfo = enc_uint64(v26, m | 0x20);
                        }

                        else
                        {
                          substreamsInfo = enc_uint64(v26, m);
                        }

                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }

                        m &= 0xFu;
                        substreamsInfo = compress_out(v26, &v28[8 - m], m, 1u);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }

                        if (*&v21[6 * k + 2])
                        {
                          substreamsInfo = enc_uint64(v26, *&v21[6 * k + 2]);
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            return substreamsInfo;
                          }

                          substreamsInfo = compress_out(v26, *&v21[6 * k + 4], *&v21[6 * k + 2], 1u);
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            return substreamsInfo;
                          }
                        }
                      }
                    }

                    substreamsInfo = enc_uint64(v26, 0xCuLL);
                    if ((substreamsInfo & 0x80000000) != 0)
                    {
                      return substreamsInfo;
                    }

                    else
                    {
                      if (v17 <= 1)
                      {
                        substreamsInfo = enc_uint64(v26, v23);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }
                      }

                      else
                      {
                        for (n = *(v18 + 61712); n && *(n + 48); n = *(n + 24))
                        {
                          substreamsInfo = enc_uint64(v26, *(n + 48));
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            return substreamsInfo;
                          }
                        }
                      }

                      if (!v20)
                      {
                        substreamsInfo = enc_uint64(v26, 0xAuLL);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }

                        substreamsInfo = enc_uint64(v26, 1uLL);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }

                        archive_le32enc_4(v9, v19);
                        substreamsInfo = compress_out(v26, v9, 4, 1u);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
                        }
                      }

                      substreamsInfo = enc_uint64(v26, 0);
                      if ((substreamsInfo & 0x80000000) != 0)
                      {
                        return substreamsInfo;
                      }

                      else if (v20 && (substreamsInfo = make_substreamsInfo(v26, v21), (substreamsInfo & 0x80000000) != 0))
                      {
                        return substreamsInfo;
                      }

                      else
                      {
                        substreamsInfo = enc_uint64(v26, 0);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          return substreamsInfo;
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
            }
          }
        }
      }
    }
  }
}

uint64_t archive_le64enc_1(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_4(a1, a2);
  return archive_le32enc_4(a1 + 4, v4);
}

uint64_t copy_out_0(uint64_t a1, off_t a2, size_t a3)
{
  v9 = *(a1 + 248);
  if (*(v9 + 8) && lseek(*v9, a2, 0) < 0)
  {
    v3 = __error();
    archive_set_error(a1, *v3, "lseek failed");
    return -30;
  }

  else
  {
    while (a3)
    {
      if (a3 > *(v9 + 61704))
      {
        v7 = *(v9 + 61704);
      }

      else
      {
        v7 = a3;
      }

      v6 = read(*v9, (v9 + 264 + 61440 - *(v9 + 61704)), v7);
      if (v6 < 0)
      {
        v4 = __error();
        archive_set_error(a1, *v4, "Can't read temporary file(%jd)", v6);
        return -30;
      }

      if (!v6)
      {
        archive_set_error(a1, 0, "Truncated 7-Zip archive");
        return -30;
      }

      *(v9 + 61704) -= v6;
      a3 -= v6;
      if (!*(v9 + 61704))
      {
        v8 = flush_wbuff_0(a1);
        if (v8)
        {
          return v8;
        }
      }
    }

    return 0;
  }
}

uint64_t flush_wbuff_0(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = __archive_write_output(a1, v3 + 264, 61440 - *(v3 + 61704));
  if (v2)
  {
    return v2;
  }

  else
  {
    *(v3 + 61704) = 61440;
    return 0;
  }
}

uint64_t make_time(uint64_t a1, unsigned __int8 a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = *(a1 + 248);
  i = 0;
  v8 = 0;
  v7 = 0;
  if (*(v10 + 64 + 8 * a4) == *(v10 + 24))
  {
    v8 = enc_uint64(v14, v13);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = enc_uint64(v14, 8 * *(v10 + 24) + 2);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = enc_uint64(v14, 1uLL);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }
  }

  else
  {
    if (!*(v10 + 64 + 8 * v11))
    {
      return 0;
    }

    v8 = enc_uint64(v14, v13);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = enc_uint64(v14, ((*(v10 + 24) + 7) >> 3) + 2 + 8 * *(v10 + 64 + 8 * v11));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = enc_uint64(v14, 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v7 = 0;
    v6 = 0x80;
    for (i = *(v10 + 61712); i; i = *(i + 24))
    {
      if ((*(i + 56) & v12) != 0)
      {
        v7 |= v6;
      }

      v6 = v6 >> 1;
      if (!v6)
      {
        v8 = compress_out(v14, &v7, 1, 1u);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        v6 = 0x80;
        v7 = 0;
      }
    }

    if (v6 != 128)
    {
      v8 = compress_out(v14, &v7, 1, 1u);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }
    }
  }

  v8 = enc_uint64(v14, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  else
  {
    for (i = *(v10 + 61712); i; i = *(i + 24))
    {
      if ((*(i + 56) & v12) != 0)
      {
        v4 = utcToFiletime(*(i + 64 + 16 * v11), *(i + 64 + 16 * v11 + 8));
        archive_le64enc_1(v16, v4);
        v8 = compress_out(v14, v16, 8, 1u);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }
    }

    return 0;
  }
}

_BYTE *archive_be64enc_0(_BYTE *a1, unint64_t a2)
{
  v4 = a2;
  archive_be32enc_2(a1, SHIDWORD(a2));
  return archive_be32enc_2(a1 + 4, v4);
}

uint64_t make_substreamsInfo(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = *(a1 + 248);
  *&v4[8] = 0;
  *v4 = enc_uint64(a1, 8uLL);
  if ((*v4 & 0x80000000) != 0)
  {
    return *v4;
  }

  else
  {
    if (*(v5 + 32) > 1uLL && *v6)
    {
      *v4 = enc_uint64(v7, 0xDuLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      *v4 = enc_uint64(v7, *(v5 + 32));
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      *v4 = enc_uint64(v7, 9uLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      for (*&v4[4] = *(v5 + 61712); *&v4[4] && *(*&v4[4] + 24) && *(*(*&v4[4] + 24) + 48); *&v4[4] = *(*&v4[4] + 24))
      {
        *v4 = enc_uint64(v7, *(*&v4[4] + 48));
        if ((*v4 & 0x80000000) != 0)
        {
          return *v4;
        }
      }
    }

    *v4 = enc_uint64(v7, 0xAuLL);
    if ((*v4 & 0x80000000) != 0)
    {
      return *v4;
    }

    else
    {
      *v4 = enc_uint64(v7, 1uLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      else
      {
        for (*&v4[4] = *(v5 + 61712); *&v4[4] && *(*&v4[4] + 48); *&v4[4] = *(*&v4[4] + 24))
        {
          archive_le32enc_4(v3, *(*&v4[4] + 116));
          *v4 = compress_out(v7, v3, 4, 1u);
          if ((*v4 & 0x80000000) != 0)
          {
            return *v4;
          }
        }

        *v4 = enc_uint64(v7, 0);
        if ((*v4 & 0x80000000) != 0)
        {
          return *v4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

_BYTE *archive_be32enc_2(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

void file_free_register_0(uint64_t a1)
{
  for (i = *(a1 + 61712); i; i = v1)
  {
    v1 = *(i + 24);
    file_free_0(i);
  }
}

uint64_t archive_write_set_passphrase(unsigned int *a1, const char *a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_passphrase") == -30)
  {
    return -30;
  }

  else
  {
    return set_passphrase(a1, a2);
  }
}

uint64_t set_passphrase(uint64_t a1, const char *a2)
{
  if (a2 && *a2)
  {
    free(*(a1 + 320));
    *(a1 + 320) = strdup(a2);
    if (*(a1 + 320))
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate data for passphrase");
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Empty passphrase is unacceptable");
    return -25;
  }
}

uint64_t archive_write_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_passphrase_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 328) = a3;
    *(a1 + 336) = a2;
    return 0;
  }
}

uint64_t __archive_write_get_passphrase(uint64_t a1)
{
  if (*(a1 + 320))
  {
    return *(a1 + 320);
  }

  if (*(a1 + 328))
  {
    v1 = (*(a1 + 328))(a1, *(a1 + 336));
    set_passphrase(a1, v1);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
  }

  return *(a1 + 320);
}

uint64_t rar5_read_header(_DWORD *a1, uint64_t a2)
{
  context = get_context(a1);
  if (!*context)
  {
    init_header(a1);
    v5 = try_skip_sfx(a1);
    if (v5 < -20)
    {
      return v5;
    }

    *context = 1;
  }

  if (!*(context + 4))
  {
    if (consume(a1, 8))
    {
      return 1;
    }

    *(context + 4) = 1;
  }

  do
  {
    v6 = process_base_block(a1, a2);
    v4 = 1;
    if (v6 != -10)
    {
      v3 = 0;
      if (!__OFSUB__(v6, -10) && ((*(context + 44) >> 2) & 1) != 0)
      {
        v3 = v6 == 0;
      }

      v4 = v3;
    }
  }

  while ((v4 & 1) != 0);
  return v6;
}

uint64_t rar5_read_data(_DWORD *a1, void *a2, size_t *a3, void *a4)
{
  context = get_context(a1);
  if (a3)
  {
    *a3 = 0;
  }

  if (v4 | (((*(context + 19400) >> 3) & 1) == 0))
  {
    if (*(context + 8) || *(context + 120) <= *(context + 19376))
    {
      if (use_data(context, a2, a3, a4))
      {
        if (((*(context + 19400) >> 2) & 1) == 1)
        {
          return 1;
        }

        else
        {
          v7 = do_unpack(a1, context, a2, a3, a4);
          if (v7)
          {
            return v7;
          }

          else if (*(context + 19368) || *(context + 120) != *(context + 19376))
          {
            return 0;
          }

          else
          {
            *(context + 19400) = *(context + 19400) & 0xFB | 4;
            return verify_global_checksums(a1);
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
      archive_set_error(a1, 22, "Unpacker has written too many bytes");
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Can't decompress an entry marked as a directory");
    return -25;
  }
}

uint64_t rar5_read_data_skip(_DWORD *a1)
{
  context = get_context(a1);
  if (*(context + 44))
  {
    while (*(context + 19368) > 0)
    {
      ++*(context + 8);
      data = rar5_read_data(a1, 0, 0, 0);
      --*(context + 8);
      if ((data & 0x80000000) != 0 || data == 1)
      {
        return data;
      }
    }

    return 0;
  }

  if (!consume(a1, *(context + 19368)))
  {
    *(context + 19368) = 0;
    return 0;
  }

  return -30;
}

uint64_t bid_standard(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  __s2 = 0;
  rar5_signature(__s1);
  if (read_ahead(v3, 8uLL, &__s2))
  {
    if (!memcmp(__s1, __s2, 8uLL))
    {
      return 30;
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

uint64_t bid_sfx(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1;
  __s1 = __archive_read_ahead(a1, 7uLL, 0);
  if (__s1)
  {
    if (*__s1 == 77 && *(__s1 + 1) == 90 || !memcmp(__s1, "\x7FELF", 4uLL))
    {
      v5 = 0x10000;
      v4 = 4096;
      v3 = 0;
      rar5_signature(__s2);
      while (v5 + v4 <= 0x80000)
      {
        v2 = __archive_read_ahead(v7, v5 + v4, &v3);
        if (v2)
        {
          for (__s1 = (v2 + v5); __s1 + 8 < v2 + v3; __s1 = __s1 + 16)
          {
            if (!memcmp(__s1, __s2, 8uLL))
            {
              return 30;
            }
          }

          v5 = __s1 - v2;
        }

        else
        {
          v4 >>= 1;
          if (v4 < 64)
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t rar5_signature(uint64_t result)
{
  for (i = 0; i < 8; ++i)
  {
    *(result + i) = rar5_signature_xor[i] ^ 0xA1;
  }

  return result;
}

BOOL read_ahead(uint64_t a1, size_t a2, uint64_t *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = -1;
  if (a3)
  {
    v3 = __archive_read_ahead(v8, v7, &v5);
    *v6 = v3;
    return *v6 != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t init_header(uint64_t result)
{
  *(result + 16) = 0x100000;
  *(result + 24) = "RAR5";
  return result;
}

uint64_t try_skip_sfx(_DWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  ahead = __archive_read_ahead(a1, 7uLL, 0);
  if (ahead)
  {
    if (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL))
    {
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v4 = 0;
      v3 = 0;
      v2 = 4096;
      rar5_signature(__s2);
      while ((v4 + v2) <= 0x80000)
      {
        v7 = __archive_read_ahead(v9, v2, &v3);
        if (v7)
        {
          if (v3 < 64)
          {
LABEL_19:
            archive_set_error(v9, 79, "Couldn't find out RAR header");
            return -30;
          }

          ahead = v7;
          v6 = &v7[v3];
          while (ahead + 8 < v6)
          {
            if (!memcmp(ahead, __s2, 8uLL))
            {
              v5 = (ahead - v7);
              __archive_read_consume(v9, ahead - v7);
              return 0;
            }

            ahead += 16;
          }

          v5 = (ahead - v7);
          __archive_read_consume(v9, ahead - v7);
          v4 += v5;
        }

        else
        {
          v2 >>= 1;
          if (v2 < 64)
          {
            goto LABEL_19;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t consume(uint64_t a1, uint64_t a2)
{
  v2 = __archive_read_consume(a1, a2);
  v3 = 0;
  if (a2 != v2)
  {
    return -30;
  }

  return v3;
}

uint64_t process_base_block(_DWORD *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 3;
  context = get_context(a1);
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  *len = 0;
  v5 = 0;
  v4 = 0;
  *&v3[8] = 0;
  *v3 = skip_unprocessed_bytes(v14);
  if (*v3)
  {
    return *v3;
  }

  else if (read_u32(v14, &v10))
  {
    if (read_var_sized(v14, &v8, &v7))
    {
      *len = v8 + v7;
      if (v8 + v7 <= 0x200000)
      {
        if (v8 && v7 && *len >= 3uLL)
        {
          if (read_ahead(v14, *len, &v3[4]))
          {
            v9 = crc32(0, *&v3[4], len[0]);
            if (v9 == v10)
            {
              if (consume(v14, v7))
              {
                return 1;
              }

              else if (read_var_sized(v14, &v5, 0))
              {
                if (read_var_sized(v14, &v4, 0))
                {
                  *(context + 32) = *(context + 32) & 0xFE | ((v4 & 0x10) != 0);
                  *(context + 32) = *(context + 32) & 0xFD | (2 * ((v4 & 8) != 0));
                  *(context + 36) = len[0];
                  *(context + 40) = v5;
                  *(context + 44) &= ~4u;
                  if (v5)
                  {
                    switch(v5)
                    {
                      case 1:
                        *v3 = process_head_main(v14, context, v13, v4);
                        if (*v3)
                        {
                          return *v3;
                        }

                        else
                        {
                          return -10;
                        }

                      case 2:
                        return process_head_file();
                      case 3:
                        return process_head_service(v14, context, v13, v4);
                      case 4:
                        archive_set_error(v14, 79, "Encryption is not supported");
                        return -30;
                      case 5:
                        *(context + 44) = *(context + 44) & 0xFB | 4;
                        if ((*(context + 44) & 2) != 0)
                        {
                          if (scan_for_signature(v14) == -30)
                          {
                            return 1;
                          }

                          else if (*(context + 21272) == -1)
                          {
                            archive_set_error(v14, 79, "Header error");
                            return -30;
                          }

                          else
                          {
                            *(context + 21272) = *(context + 48) + 1;
                            return 0;
                          }
                        }

                        else
                        {
                          return 1;
                        }

                      default:
                        if ((v4 & 4) != 0)
                        {
                          return -10;
                        }

                        else
                        {
                          archive_set_error(v14, 79, "Header type error");
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

              else
              {
                return 1;
              }
            }

            else
            {
              archive_set_error(v14, 79, "Header CRC error");
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
          archive_set_error(v14, 79, "Too small block encountered (%zu bytes)", v8);
          return -30;
        }
      }

      else
      {
        archive_set_error(v14, 79, "Base block header is too large");
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

uint64_t skip_unprocessed_bytes(_DWORD *a1)
{
  context = get_context(a1);
  if (!*(context + 19368))
  {
    return 0;
  }

  if (!*(context + 12))
  {
    data_skip = rar5_read_data_skip(a1);
    if (data_skip)
    {
      return data_skip;
    }

    return 0;
  }

  v2 = consume(a1, *(context + 19368));
  if (!v2)
  {
    *(context + 19368) = 0;
    return 0;
  }

  return v2;
}

BOOL read_u32(uint64_t a1, _DWORD *a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  if (read_ahead(a1, 4uLL, &v4))
  {
    v2 = archive_le32dec_6(v4);
    *v5 = v2;
    return consume(v6, 4) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t read_var_sized(uint64_t a1, void *a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if (a3)
  {
    v4 = read_var(v9, &v6, &v5);
  }

  else
  {
    v4 = read_var(v9, &v6, 0);
  }

  if (v4 == 1 && v8)
  {
    *v8 = v6;
  }

  if (v7)
  {
    *v7 = v5;
  }

  return v4;
}

uint64_t process_head_main(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (a4)
  {
    if (!read_var_sized(v14, &v9, 0))
    {
      return 1;
    }
  }

  else
  {
    v9 = 0;
  }

  if (read_var_sized(v14, &v6, 0))
  {
    *(v13 + 44) = *(v13 + 44) & 0xFD | (2 * ((v6 & 1) != 0));
    *(v13 + 44) = *(v13 + 44) & 0xFE | ((v6 & 4) != 0);
    if ((v6 & 2) != 0)
    {
      v5 = 0;
      if (!read_var_sized(v14, &v5, 0))
      {
        return 1;
      }

      if (v5 > 0xFFFFFFFF)
      {
        archive_set_error(v14, 79, "Invalid volume number");
        return -30;
      }

      *(v13 + 48) = v5;
    }

    else
    {
      *(v13 + 48) = 0;
    }

    if (!*(v13 + 21272) || *(v13 + 48) == *(v13 + 21272))
    {
      if (v9)
      {
        if (read_var_sized(v14, &v8, 0))
        {
          if (read_var_sized(v14, &v7, 0))
          {
            if (v8)
            {
              if (v7 == 1)
              {
                v10 = process_main_locator_extra_block(v14, v13);
                return v10 && v10;
              }

              else
              {
                archive_set_error(v14, 79, "Unsupported extra type (0x%x)", v7);
                return -30;
              }
            }

            else
            {
              archive_set_error(v14, 79, "Invalid extra field size");
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

  else
  {
    return 1;
  }
}

uint64_t process_head_service(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = process_head_file();
  if (v5)
  {
    return v5;
  }

  else
  {
    *(a2 + 19400) = *(a2 + 19400) & 0xFD | 2;
    data_skip = rar5_read_data_skip(a1);
    if (data_skip)
    {
      return data_skip;
    }

    else
    {
      return -10;
    }
  }
}

uint64_t process_head_file()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v36 = *MEMORY[0x1E69E9840];
  v33 = v0;
  v32 = v1;
  v31 = v2;
  v30 = v3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  size = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  archive_entry_clear(v2);
  if ((*(v32 + 56) & 4) == 0)
  {
    reset_file_context(v32);
  }

  if (v30)
  {
    v15 = 0;
    if (!read_var_sized(v33, &v15, 0))
    {
      return 1;
    }

    v29 = v15;
  }

  if ((v30 & 2) != 0)
  {
    if (read_var_sized(v33, &v28, 0))
    {
      *(v32 + 19368) = v28;
      if (read_var_sized(v33, &v27, 0))
      {
        if (read_var(v33, &v22, 0))
        {
          if ((v27 & 8) != 0)
          {
            archive_set_error(v33, 22, "Files with unknown unpacked size are not supported");
            return -30;
          }

          else
          {
            *(v32 + 19400) = *(v32 + 19400) & 0xF7 | (8 * ((v27 & 1) != 0));
            if (read_var_sized(v33, &v26, 0))
            {
              if ((v27 & 2) == 0 || read_u32(v33, &v20))
              {
                if ((v27 & 4) == 0 || read_u32(v33, &v19))
                {
                  if (read_var_sized(v33, &v25, 0))
                  {
                    v18 = (v25 >> 7) & 7;
                    v17 = v25 & 0x3F;
                    if (v5 | (((*(v32 + 19400) >> 3) & 1) == 0))
                    {
                      v10 = 0x20000 << ((v25 >> 10) & 0xF);
                    }

                    else
                    {
                      v10 = 0;
                    }

                    size = v10;
                    *(v32 + 64) = v18;
                    *(v32 + 68) = v17 + 50;
                    *(v32 + 19400) = *(v32 + 19400) & 0xFE | ((v25 & 0x40) != 0);
                    if ((*(v32 + 19400) & 1) == 0 || *(v32 + 80))
                    {
                      if (size <= 0x4000000 && ((*(v32 + 19400) & 8) != 0 || size))
                      {
                        if (__OFSUB__(size, 0x4000000) || (*(v32 + 19400) & 1) == 0 || *(v32 + 21256) <= 0 || *(v32 + 21256) == size)
                        {
                          v6 = *(v32 + 72);
                          v7 = __OFSUB__(v6, size);
                          if (v6 < size && *(v32 + 80))
                          {
                            clear_data_ready_stack(v32);
                            v14 = malloc_type_realloc(*(v32 + 80), size, 0x7B4F005DuLL);
                            if (!v14)
                            {
                              archive_set_error(v33, 22, "Not enough memory when trying to realloc the window buffer.");
                              return -30;
                            }

                            *(v32 + 80) = v14;
                          }

                          *(v32 + 72) = size;
                          if (!v7 && (*(v32 + 19400) & 1) != 0 && !*(v32 + 21256))
                          {
                            *(v32 + 21256) = *(v32 + 72);
                          }

                          init_window_mask(v32);
                          *(v32 + 19400) &= ~2u;
                          if (read_var_sized(v33, &v24, 0))
                          {
                            if (v24)
                            {
                              if (v24 != 1)
                              {
                                archive_set_error(v33, 79, "Unsupported Host OS: 0x%x", v24);
                                return -30;
                              }

                              archive_entry_set_mode(v31, v26);
                            }

                            else
                            {
                              if ((v26 & 0x10) != 0)
                              {
                                if (v26)
                                {
                                  archive_entry_set_mode(v31, 16749);
                                }

                                else
                                {
                                  archive_entry_set_mode(v31, 16877);
                                }
                              }

                              else if (v26)
                              {
                                archive_entry_set_mode(v31, 33060);
                              }

                              else
                              {
                                archive_entry_set_mode(v31, 33188);
                              }

                              if ((v26 & 7) != 0)
                              {
                                v13 = malloc_type_malloc(0x16uLL, 0x100004077774924uLL);
                                if (v13)
                                {
                                  v12 = v13;
                                  if (v26)
                                  {
                                    __strcpy_chk();
                                    v12 = v13 + 7;
                                  }

                                  if ((v26 & 2) != 0)
                                  {
                                    __strcpy_chk();
                                    v12 += 7;
                                  }

                                  if ((v26 & 4) != 0)
                                  {
                                    __strcpy_chk();
                                    v12 += 7;
                                  }

                                  if (v12 > v13)
                                  {
                                    *(v12 - 1) = 0;
                                    archive_entry_copy_fflags_text(v31, v13);
                                  }

                                  free(v13);
                                }
                              }
                            }

                            if (read_var_sized(v33, &v23, 0))
                            {
                              if (read_ahead(v33, v23, &v16))
                              {
                                if (v23 <= 0x7FF)
                                {
                                  if (v23)
                                  {
                                    __memcpy_chk();
                                    v35[v23] = 0;
                                    if (consume(v33, v23))
                                    {
                                      return 1;
                                    }

                                    else
                                    {
                                      archive_entry_update_pathname_utf8(v31, v35);
                                      v8 = 0;
                                      if (v29 > 0 && (v11 = process_head_file_extra(v33, v31, v32, v29)) != 0)
                                      {
                                        return v11;
                                      }

                                      else
                                      {
                                        if ((v27 & 8) == 0)
                                        {
                                          *(v32 + 19376) = v22;
                                          if (!*(v32 + 21240))
                                          {
                                            archive_entry_set_size(v31, v22);
                                          }
                                        }

                                        if ((v27 & 2) != 0)
                                        {
                                          archive_entry_set_mtime(v31, v20, 0);
                                        }

                                        if ((v27 & 4) != 0)
                                        {
                                          *(v32 + 19436) = v19;
                                        }

                                        if ((*(v32 + 56) & 4) == 0)
                                        {
                                          *(v32 + 56) = *(v32 + 56) & 0xF7 | 8;
                                          *(v32 + 56) = *(v32 + 56) & 0xFD | 2;
                                          *(v32 + 56) &= ~1u;
                                        }

                                        if (v8 | (((*(v32 + 32) >> 1) & 1) == 0))
                                        {
                                          return 0;
                                        }

                                        else
                                        {
                                          return -10;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    archive_set_error(v33, 79, "No filename specified");
                                    return -30;
                                  }
                                }

                                else
                                {
                                  archive_set_error(v33, 79, "Filename is too long");
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

                          else
                          {
                            return 1;
                          }
                        }

                        else
                        {
                          archive_set_error(v33, 79, "Window size for this solid file doesn't match the window size used in previous solid file. ");
                          return -30;
                        }
                      }

                      else
                      {
                        archive_set_error(v33, 79, "Declared dictionary size is not supported.");
                        return -30;
                      }
                    }

                    else
                    {
                      archive_set_error(v33, 79, "Declared solid file, but no window buffer initialized yet.");
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

  else
  {
    *(v32 + 19368) = 0;
    archive_set_error(v33, 79, "no data found in file/service block");
    return -30;
  }
}

uint64_t scan_for_signature(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v3 = 0;
  rar5_signature(__s2);
  while (read_ahead(v4, 0x200uLL, &v3))
  {
    for (i = 0; i < 504; ++i)
    {
      if (!memcmp((v3 + i), __s2, 8uLL))
      {
        consume(v4, i + 8);
        return 0;
      }
    }

    consume(v4, 512);
  }

  return 1;
}
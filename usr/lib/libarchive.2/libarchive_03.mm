uint64_t set_ownership(uint64_t a1)
{
  if (!*(a1 + 168) || *(a1 + 168) == *(a1 + 560))
  {
    if ((*(a1 + 516) & 0x80000000) != 0 || fchown(*(a1 + 516), *(a1 + 560), *(a1 + 568)))
    {
      if (lchown(*(a1 + 440), *(a1 + 560), *(a1 + 568)))
      {
        v2 = __error();
        archive_set_error(a1, *v2, "Can't set user=%jd/group=%jd for %s", *(a1 + 560), *(a1 + 568), *(a1 + 440));
        return -20;
      }

      else
      {
        *(a1 + 504) &= 0xF5FFFFFE;
        return 0;
      }
    }

    else
    {
      *(a1 + 504) &= 0xF5FFFFFE;
      return 0;
    }
  }

  else
  {
    v1 = __error();
    archive_set_error(a1, *v1, "Can't set UID=%jd", *(a1 + 560));
    return -20;
  }
}

uint64_t set_xattrs(uint64_t a1)
{
  v15 = a1;
  v14 = *(a1 + 432);
  v10 = 0;
  v9 = archive_entry_xattr_reset(v14);
  v8 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (v9--)
  {
    name = 0;
    value = 0;
    size = 0;
    archive_entry_xattr_next(v14, &name, &value, &size);
    if (name)
    {
      if ((v15[129] & 0x80000000) != 0)
      {
        v2 = archive_entry_pathname(v14);
        v4 = setxattr(v2, name, value, size, 0, 1);
      }

      else
      {
        v4 = fsetxattr(v15[129], name, value, size, 0, 0);
      }

      if (v4 == -1)
      {
        v10 = -20;
        archive_strcat(&v11, name);
        archive_strappend_char(&v11, 32);
        if (*__error() != 45 && *__error() != 78)
        {
          v8 = 1;
        }
      }
    }
  }

  if (v10 == -20)
  {
    if (v8 && v12)
    {
      v11[--v12] = 0;
      archive_set_error(v15, -1, "Cannot restore extended attributes: %s", v11);
    }

    else
    {
      archive_set_error(v15, -1, "Cannot restore extended attributes on this file system.");
    }
  }

  archive_string_free(&v11);
  return v10;
}

uint64_t set_fflags(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v3 = archive_entry_mode(*(a1 + 432));
  if ((*(v8 + 504) & 0x40) == 0)
  {
    return 0;
  }

  archive_entry_fflags(*(v8 + 432), &v6, &v5);
  if ((v6 & 0x60006) == 0)
  {
    v4 = set_fflags_platform(v8, *(v8 + 516), *(v8 + 440), v3, v6, v5);
    if (v4)
    {
      return v4;
    }

    return 0;
  }

  v7 = current_fixup(v8, *(v8 + 440));
  if (v7)
  {
    v1 = archive_entry_filetype(*(v8 + 432));
    *(v7 + 66) = v1;
    *(v7 + 160) |= 0x40u;
    *(v7 + 136) = v6;
    if ((*(v7 + 160) & 0x34000000) == 0)
    {
      *(v7 + 64) = v3;
    }

    return 0;
  }

  return -30;
}

uint64_t set_times_from_entry(uint64_t a1)
{
  v5 = *(a1 + 200);
  v6 = v5;
  v7 = v5;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (archive_entry_atime_is_set(*(a1 + 432)) || archive_entry_birthtime_is_set(*(a1 + 432)) || archive_entry_mtime_is_set(*(a1 + 432)))
  {
    if (archive_entry_atime_is_set(*(a1 + 432)))
    {
      v7 = archive_entry_atime(*(a1 + 432));
      v4 = archive_entry_atime_nsec(*(a1 + 432));
    }

    if (archive_entry_birthtime_is_set(*(a1 + 432)))
    {
      v6 = archive_entry_birthtime(*(a1 + 432));
      v3 = archive_entry_birthtime_nsec(*(a1 + 432));
    }

    if (archive_entry_mtime_is_set(*(a1 + 432)))
    {
      v5 = archive_entry_mtime(*(a1 + 432));
      v2 = archive_entry_mtime_nsec(*(a1 + 432));
    }

    if (archive_entry_ctime_is_set(*(a1 + 432)))
    {
      archive_entry_ctime(*(a1 + 432));
      archive_entry_ctime_nsec(*(a1 + 432));
    }

    return set_times(a1, *(a1 + 516), *(a1 + 558), *(a1 + 440), v7, v4, v6, v3, v5, v2);
  }

  else
  {
    return 0;
  }
}

unint64_t hfs_write_decmpfs_block(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 616) == -1)
  {
    if (!*(a1 + 584))
    {
      v7 = malloc_type_malloc(0xEDEuLL, 0x100004052888210uLL);
      if (!v7)
      {
LABEL_4:
        archive_set_error(a1, 12, "Can't allocate memory for decmpfs");
        return -30;
      }

      *(a1 + 584) = v7;
    }

    *(a1 + 576) = 16;
    archive_le32enc_2(*(a1 + 584), 0x636D7066u);
    archive_le32enc_2(*(a1 + 584) + 4, 4u);
    archive_le64enc_0(*(a1 + 584) + 8, *(a1 + 544));
    v5 = (*(a1 + 544) + 0xFFFFLL) / 0x10000;
    size = 8 * v5 + 314;
    if (size > *(a1 + 608))
    {
      v8 = malloc_type_realloc(*(a1 + 600), size, 0x674478FuLL);
      if (!v8)
      {
        archive_set_error(a1, 12, "Can't allocate memory for ResourceFork");
        return -30;
      }

      *(a1 + 608) = size;
      *(a1 + 600) = v8;
    }

    if (!*(a1 + 664))
    {
      v9 = malloc_type_malloc(0x10000uLL, 0x9819AE4AuLL);
      if (!v9)
      {
        goto LABEL_4;
      }

      *(a1 + 664) = v9;
    }

    *(a1 + 672) = 0x10000;
    *(a1 + 680) = *(a1 + 544);
    *(a1 + 648) = *(a1 + 640);
    *(a1 + 592) = 2;
    *(a1 + 624) = *(a1 + 600) + 260;
    v3 = *(a1 + 624);
    *(a1 + 624) = v3 + 4;
    archive_le32enc_2(v3, v5);
    *(a1 + 656) = 8 * v5 + 264;
    *(a1 + 660) = *(a1 + 656);
    *(a1 + 616) = v5;
  }

  if (!*(a1 + 680))
  {
    return a3;
  }

  if (a3 > *(a1 + 672))
  {
    v11 = *(a1 + 672);
  }

  else
  {
    v11 = a3;
  }

  if (v11 > *(a1 + 680))
  {
    v11 = *(a1 + 680);
  }

  if (v11 == 0x10000)
  {
    v12 = a2;
  }

  else
  {
    __memcpy_chk();
    v12 = *(a1 + 664);
  }

  *(a1 + 672) -= v11;
  *(a1 + 680) -= v11;
  if (!*(a1 + 672) || !*(a1 + 680))
  {
    v10 = hfs_drive_compressor(a1, v12, 0x10000 - *(a1 + 672));
    if (v10 < 0)
    {
      return v10;
    }

    *(a1 + 672) = 0x10000;
  }

  if (*(a1 + 680))
  {
    return v11;
  }

  else
  {
    return a3;
  }
}

uint64_t archive_le32enc_2(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t archive_le64enc_0(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_2(a1, a2);
  return archive_le32enc_2(a1 + 4, v4);
}

uint64_t hfs_drive_compressor(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = hfs_reset_compressor(a1);
  if (v8)
  {
    return v8;
  }

  else
  {
    if (!*(a1 + 632))
    {
      size = compressBound(0x10000uLL) + 65586;
      *(a1 + 632) = malloc_type_malloc(size, 0xEB580CA5uLL);
      if (!*(a1 + 632))
      {
        archive_set_error(a1, 12, "Can't allocate memory for Resource Fork");
        return -30;
      }

      *(a1 + 640) = size;
      *(a1 + 648) = size;
    }

    v13 = (*(a1 + 632) + *(a1 + 640) - *(a1 + 648));
    *(a1 + 688) = a2;
    *(a1 + 696) = a3;
    *(a1 + 712) = v13;
    *(a1 + 720) = *(a1 + 648);
    do
    {
      v9 = deflate((a1 + 688), 4);
      if (v9 > 1)
      {
        archive_set_error(a1, -1, "Failed to compress data");
        return -25;
      }
    }

    while (!v9);
    v12 = *(a1 + 648) - *(a1 + 720);
    if (v12 > a3)
    {
      *v13 = -1;
      __memcpy_chk();
      v12 = a3 + 1;
    }

    *(a1 + 648) -= v12;
    if (*(a1 + 616) != 1 || *(a1 + 576) + v12 > 0xEDA)
    {
      v3 = *(a1 + 624);
      *(a1 + 624) = v3 + 4;
      archive_le32enc_2(v3, *(a1 + 660) - 260);
      v4 = *(a1 + 624);
      *(a1 + 624) = v4 + 4;
      archive_le32enc_2(v4, v12);
      *(a1 + 660) += v12;
      v11 = *(a1 + 640) - *(a1 + 648);
      while (v11 >= 0x10000)
      {
        v9 = hfs_write_compressed_data(a1, 0x10000uLL);
        if (v9)
        {
          return v9;
        }

        v11 -= 0x10000;
        if (v11 <= 0x10000)
        {
          __memcpy_chk();
        }

        else
        {
          __memmove_chk();
        }
      }

      *(a1 + 648) = *(a1 + 640) - v11;
      if (!*(a1 + 680))
      {
        v6 = hfs_set_resource_fork_footer(*(a1 + 632) + v11, *(a1 + 648));
        v9 = hfs_write_compressed_data(a1, v11 + v6);
        *(a1 + 648) = *(a1 + 640);
        if ((*(a1 + 656) >> 12) + ((*(a1 + 656) >> 12) >> 7) > *(a1 + 544) >> 12)
        {
          return hfs_decompress(a1);
        }

        if (!v9)
        {
          v9 = hfs_write_resource_fork_header(a1);
        }

        if (!v9)
        {
          v9 = hfs_write_decmpfs(a1);
        }

        if (!v9)
        {
          return hfs_set_compressed_fflag(a1);
        }
      }

      return v9;
    }

    archive_le32enc_2(*(a1 + 584) + 4, 3u);
    __memcpy_chk();
    *(a1 + 576) += v12;
    *(a1 + 648) = *(a1 + 640);
    v10 = hfs_write_decmpfs(a1);
    if (!v10)
    {
      return hfs_set_compressed_fflag(a1);
    }

    return v10;
  }
}

uint64_t hfs_reset_compressor(uint64_t a1)
{
  if (*(a1 + 800))
  {
    v2 = deflateReset((a1 + 688));
  }

  else
  {
    v2 = deflateInit_((a1 + 688), *(a1 + 804), "1.2.12", 112);
  }

  if (v2)
  {
    archive_set_error(a1, -1, "Failed to initialize compressor");
    return -30;
  }

  else
  {
    *(a1 + 800) = 1;
    return 0;
  }
}

uint64_t hfs_write_decmpfs(uint64_t a1)
{
  if (fsetxattr(*(a1 + 516), "com.apple.decmpfs", *(a1 + 584), *(a1 + 576), 0, 0) < 0)
  {
    v1 = __error();
    archive_set_error(a1, *v1, "Cannot restore xattr:%s", "com.apple.decmpfs");
    if (archive_le32dec_2((*(a1 + 584) + 4)) == 4)
    {
      fremovexattr(*(a1 + 516), "com.apple.ResourceFork", 32);
    }

    return -20;
  }

  else
  {
    return 0;
  }
}

uint64_t hfs_write_compressed_data(uint64_t a1, size_t a2)
{
  v4 = a2;
  v3 = hfs_write_resource_fork(a1, *(a1 + 632), a2, *(a1 + 656));
  if (!v3)
  {
    *(a1 + 656) += v4;
  }

  return v3;
}

uint64_t hfs_set_resource_fork_footer(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x32)
  {
    return 0;
  }

  __memcpy_chk();
  return 50;
}

uint64_t hfs_decompress(uint64_t a1)
{
  v21 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  __nbyte = 0;
  __buf = 0;
  v1 = (*(a1 + 600) + 260);
  v20 = v1 + 4;
  v19 = archive_le32dec_2(v1);
LABEL_2:
  if (v19--)
  {
    v3 = v20;
    v20 += 4;
    v18 = archive_le32dec_2(v3) + 260;
    v4 = v20;
    v20 += 4;
    v17 = archive_le32dec_2(v4);
    v16 = fgetxattr(*(v21 + 129), "com.apple.ResourceFork", v21[79], v17, v18, 0);
    if (v16 == v17)
    {
      if (*v21[79] == 255)
      {
        __nbyte = v17 - 1;
        __buf = v21[79] + 1;
        goto LABEL_13;
      }

      destLen = 0x10000;
      if (uncompress(v21[83], &destLen, v21[79], v17))
      {
        archive_set_error(v21, -1, "Failed to decompress resource fork");
        return -20;
      }

      else
      {
        __nbyte = destLen;
        __buf = v21[83];
LABEL_13:
        while (1)
        {
          v15 = write(*(v21 + 129), __buf, __nbyte);
          if (v15 < 0)
          {
            break;
          }

          __nbyte -= v15;
          __buf = __buf + v15;
          if (__nbyte <= 0)
          {
            goto LABEL_2;
          }
        }

        v9 = v21;
        v5 = __error();
        archive_set_error(v9, *v5, "Write failed");
        return -20;
      }
    }

    else
    {
      v11 = v21;
      if (v16 < 0)
      {
        v10 = *__error();
        archive_set_error(v11, v10, "Failed to read resource fork");
      }

      else
      {
        archive_set_error(v21, -1, "Failed to read resource fork");
      }

      return -20;
    }
  }

  else
  {
    v16 = fremovexattr(*(v21 + 129), "com.apple.ResourceFork", 0);
    if (v16 == -1)
    {
      v8 = v21;
      v6 = __error();
      archive_set_error(v8, *v6, "Failed to remove resource fork");
      return -20;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t hfs_write_resource_fork_header(uint64_t a1)
{
  v4 = *(a1 + 600);
  v3 = *(a1 + 656) - 50;
  v2 = 8 * *(a1 + 616) + 264;
  archive_be32enc_0(v4, 256);
  archive_be32enc_0(v4 + 4, v3);
  archive_be32enc_0(v4 + 8, v3 - 256);
  archive_be32enc_0(v4 + 12, 50);
  __memset_chk();
  archive_be32enc_0(v4 + 256, v3 - 260);
  return hfs_write_resource_fork(a1, v4, v2, 0);
}

uint64_t hfs_write_resource_fork(_DWORD *a1, const void *a2, size_t a3, u_int32_t a4)
{
  v7 = a3;
  if (fsetxattr(a1[129], "com.apple.ResourceFork", a2, a3, a4, a1[148]) < 0)
  {
    v4 = __error();
    archive_set_error(a1, *v4, "Cannot restore xattr: %s at %u pos %u bytes", "com.apple.ResourceFork", a4, v7);
    return -20;
  }

  else
  {
    a1[148] &= ~2u;
    return 0;
  }
}

_BYTE *archive_be32enc_0(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

uint64_t archive_read_support_filter_program_signature(unsigned int *a1, const char *a2, uint64_t a3, size_t a4)
{
  v5 = malloc_type_calloc(1uLL, 0x28uLL, 0x1090040CBB9B1E3uLL);
  if (v5 && (v5[1] = strdup(a2)) != 0)
  {
    if (a3 && a4)
    {
      v5[3] = a4;
      v5[2] = malloc_type_malloc(a4, 0xB4B55FD0uLL);
      __memcpy_chk();
    }

    if (__archive_read_register_bidder(a1, v5, 0, program_bidder_vtable))
    {
      free_state(v5);
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    free_state(v5);
    archive_set_error(a1, 12, "Can't allocate memory");
    return -30;
  }
}

void free_state(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[2]);
    free(a1);
  }
}

uint64_t __archive_read_program(uint64_t a1, char *a2)
{
  v4 = strlen("Program: ");
  v5 = v4 + strlen(a2) + 1;
  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x1010040EF3A7E9FuLL);
  v6 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v7 && v6 && archive_string_ensure(v7, v5))
  {
    *(v7 + 1) = 0;
    if ("Program: ")
    {
      v3 = strlen("Program: ");
      archive_strncat(v7, "Program: ", v3);
    }

    else
    {
      archive_strncat(v7, 0, 0);
    }

    archive_strcat(v7, a2);
    *(a1 + 56) = 4;
    *(a1 + 48) = *v7;
    *(v7 + 6) = v6;
    *(v7 + 7) = 0x10000;
    if (__archive_create_child(a2, v7 + 9, v7 + 10, v7 + 6))
    {
      free(*(v7 + 6));
      archive_string_free(v7);
      free(v7);
      archive_set_error(*(a1 + 24), 22, "Can't initialize filter; unable to run program %s", a2);
      return -30;
    }

    else
    {
      *(a1 + 40) = v7;
      *(a1 + 32) = program_reader_vtable;
      return 0;
    }
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate input data");
    if (v7)
    {
      archive_string_free(v7);
      free(v7);
    }

    free(v6);
    return -30;
  }
}

uint64_t program_bidder_bid(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 24))
  {
    __s1 = __archive_read_filter_ahead(a2, *(v4 + 24), 0);
    if (__s1)
    {
      if (!memcmp(__s1, *(v4 + 16), *(v4 + 24)))
      {
        return (8 * *(v4 + 24));
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

  else if (*(v4 + 32))
  {
    return 0;
  }

  else
  {
    *(v4 + 32) = 1;
    return 0x7FFFFFFF;
  }
}

unint64_t program_filter_read(uint64_t a1, void *a2)
{
  v7 = *(a1 + 40);
  v5 = 0;
  for (i = *(v7 + 48); ; i += v6)
  {
    v3 = 0;
    if (*(v7 + 40) != -1)
    {
      v3 = v5 < *(v7 + 56);
    }

    if (!v3)
    {
      break;
    }

    v6 = child_read(a1, i, *(v7 + 56) - v5);
    if (v6 < 0)
    {
      return -30;
    }

    if (!v6)
    {
      break;
    }

    v5 += v6;
  }

  *a2 = *(v7 + 48);
  return v5;
}

uint64_t program_filter_close(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = child_stop(a1, v3);
  free(*(v3 + 6));
  archive_string_free(v3);
  free(v3);
  return v2;
}

ssize_t child_read(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = *(a1 + 40);
  v10 = 0;
  v9 = 0;
  __nbyte = 0;
  if (a3 <= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v12;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            v10 = read(v11[10], v13, v9);
            v5 = 0;
            if (v10 == -1)
            {
              v5 = *__error() == 4;
            }
          }

          while (v5);
          if (v10 > 0)
          {
            return v10;
          }

          if (!v10 || v10 == -1 && *__error() == 32)
          {
            return child_stop(v14, v11);
          }

          if (v10 == -1 && *__error() != 35)
          {
            return -1;
          }

          if (v11[9] != -1)
          {
            break;
          }

LABEL_18:
          __archive_check_child(v11[9], v11[10]);
        }

        __buf = __archive_read_filter_ahead(*(v14 + 16), 1uLL, &__nbyte);
        if (__buf)
        {
          break;
        }

        close(v11[9]);
        v11[9] = -1;
        fcntl(v11[10], 4, 0);
        if ((__nbyte & 0x8000000000000000) != 0)
        {
          return __nbyte;
        }
      }

      do
      {
        v10 = write(v11[9], __buf, __nbyte);
        v4 = 0;
        if (v10 == -1)
        {
          v4 = *__error() == 4;
        }
      }

      while (v4);
      if (v10 <= 0)
      {
        break;
      }

      __archive_read_filter_consume(*(v14 + 16), v10);
    }

    if (v10 == -1 && *__error() == 35)
    {
      goto LABEL_18;
    }

    close(v11[9]);
    v11[9] = -1;
    fcntl(v11[10], 4, 0);
  }

  while (v10 != -1 || *__error() == 32);
  return -1;
}

uint64_t child_stop(uint64_t a1, pid_t *a2)
{
  if (a2[9] != -1)
  {
    close(a2[9]);
    a2[9] = -1;
  }

  if (a2[10] != -1)
  {
    close(a2[10]);
    a2[10] = -1;
  }

  if (a2[6])
  {
    do
    {
      a2[8] = waitpid(a2[6], a2 + 7, 0);
      v3 = 0;
      if (a2[8] == -1)
      {
        v3 = *__error() == 4;
      }
    }

    while (v3);
    a2[6] = 0;
  }

  if (a2[8] < 0)
  {
    archive_set_error(*(a1 + 24), -1, "Child process exited badly");
    return -20;
  }

  else if ((a2[7] & 0x7F) == 0x7F || (a2[7] & 0x7F) == 0)
  {
    if ((a2[7] & 0x7F) != 0)
    {
      return -20;
    }

    else if (BYTE1(a2[7]))
    {
      archive_set_error(*(a1 + 24), -1, "Child process exited with status %d", BYTE1(a2[7]));
      return -20;
    }

    else
    {
      return 0;
    }
  }

  else if ((a2[7] & 0x7F) == 0xD)
  {
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), -1, "Child process exited with signal %d", a2[7] & 0x7F);
    return -20;
  }
}

uint64_t archive_read_disk_entry_setup_path(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v4 = archive_entry_sourcepath(a2);
  if (!v4 || *(a1 + 160) && (*(a1 + 184))(*(a1 + 160)))
  {
    v4 = archive_entry_pathname(a2);
  }

  if (v4)
  {
    if (a3 && (*a3 & 0x80000000) != 0 && *(a1 + 160) && (*(a1 + 153) || archive_entry_filetype(a2) != 40960))
    {
      *a3 = (*(a1 + 168))(*(a1 + 160), v4, 4);
    }
  }

  else
  {
    archive_set_error(a1, -1, "Couldn't determine path");
  }

  return v4;
}

uint64_t archive_read_disk_entry_from_file(unsigned int *a1, uint64_t *a2, int a3, stat *a4)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  p_b = a4;
  v29 = a1;
  v28 = 0;
  disk_uname = 0;
  memset(&__b, 0, sizeof(__b));
  v25 = v31;
  if (__archive_check_magic(v33, 195932357, 0x7FFF, "archive_read_disk_entry_from_file") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(v33);
    v28 = archive_entry_sourcepath(v32);
    if (!v28)
    {
      v28 = archive_entry_pathname(v32);
    }

    if (!*(v29 + 20))
    {
      if (!p_b)
      {
        if (v31 < 0)
        {
          if (*(v29 + 153))
          {
            if (stat(v28, &__b))
            {
              v15 = v29;
              v6 = __error();
              archive_set_error(v15, *v6, "Can't stat %s", v28);
              return -25;
            }
          }

          else if (lstat(v28, &__b))
          {
            v16 = v29;
            v5 = __error();
            archive_set_error(v16, *v5, "Can't lstat %s", v28);
            return -25;
          }
        }

        else if (fstat(v31, &__b))
        {
          v17 = v29;
          v4 = __error();
          archive_set_error(v17, *v4, "Can't fstat");
          return -25;
        }

        p_b = &__b;
      }

      archive_entry_copy_stat(v32, p_b);
    }

    v14 = v33;
    v7 = archive_entry_uid(v32);
    disk_uname = archive_read_disk_uname(v14, v7);
    if (disk_uname)
    {
      archive_entry_copy_uname(v32, disk_uname);
    }

    v13 = v33;
    v8 = archive_entry_gid(v32);
    disk_uname = archive_read_disk_gname(v13, v8);
    if (disk_uname)
    {
      archive_entry_copy_gname(v32, disk_uname);
    }

    if ((v29[48] & 0x40) == 0 && p_b->st_flags)
    {
      archive_entry_set_fflags(v32, p_b->st_flags, 0);
    }

    if ((p_b->st_mode & 0xF000) == 0xA000)
    {
      st_size = p_b->st_size;
      v19 = malloc_type_malloc(st_size + 1, 0x65D30534uLL);
      if (!v19)
      {
        archive_set_error(v29, 12, "Couldn't read link data");
        return -25;
      }

      if (*(v29 + 20))
      {
        v9 = (*(v29 + 22))(*(v29 + 20));
        v18 = readlinkat(v9, v28, v19, st_size);
      }

      else
      {
        v18 = readlink(v28, v19, st_size);
      }

      if (v18 < 0)
      {
        v12 = v29;
        v10 = __error();
        archive_set_error(v12, *v10, "Couldn't read link data");
        free(v19);
        return -25;
      }

      v19[v18] = 0;
      archive_entry_set_symlink(v32, v19);
      free(v19);
    }

    v24 = 0;
    if ((v29[48] & 0x20) == 0)
    {
      v24 = archive_read_disk_entry_setup_acls(v29, v32, &v31);
    }

    if ((v29[48] & 0x10) == 0)
    {
      v21 = setup_xattrs(v29, v32, &v31);
      if (v21 < v24)
      {
        v24 = v21;
      }
    }

    if ((v29[48] & 4) != 0)
    {
      v22 = setup_mac_metadata(v29, v32, &v31);
      if (v22 < v24)
      {
        v24 = v22;
      }
    }

    if ((v29[48] & 0x80) == 0)
    {
      v23 = setup_sparse_0(v29, v32, &v31);
      if (v23 < v24)
      {
        v24 = v23;
      }
    }

    if (v25 != v31)
    {
      close(v31);
    }

    return v24;
  }
}

uint64_t setup_xattrs(uint64_t a1, uint64_t *a2, int *a3)
{
  path = 0;
  if ((*a3 & 0x80000000) == 0 || (path = archive_read_disk_entry_setup_path(a1, a2, a3)) != 0)
  {
    if (*a3 < 0)
    {
      if (*(a1 + 153))
      {
        size = listxattr(path, 0, 0, 0);
      }

      else
      {
        size = listxattr(path, 0, 0, 1);
      }
    }

    else
    {
      size = flistxattr(*a3, 0, 0, 0);
    }

    if (size == -1)
    {
      if (*__error() == 45 || *__error() == 78)
      {
        return 0;
      }

      else
      {
        v3 = __error();
        archive_set_error(a1, *v3, "Couldn't list extended attributes");
        return -20;
      }
    }

    else if (size)
    {
      v11 = malloc_type_malloc(size, 0x1A1A5AE1uLL);
      if (v11)
      {
        if (*a3 < 0)
        {
          if (*(a1 + 153))
          {
            sizea = listxattr(path, v11, size, 0);
          }

          else
          {
            sizea = listxattr(path, v11, size, 1);
          }
        }

        else
        {
          sizea = flistxattr(*a3, v11, size, 0);
        }

        if (sizea == -1)
        {
          v5 = __error();
          archive_set_error(a1, *v5, "Couldn't retrieve extended attributes");
          free(v11);
          return -20;
        }

        else
        {
          for (__s = v11; __s - v11 < sizea; __s += strlen(__s) + 1)
          {
            setup_xattr(a1, a2, __s, *a3, path);
          }

          free(v11);
          return 0;
        }
      }

      else
      {
        v4 = __error();
        archive_set_error(a1, *v4, "Out of memory");
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
    return -20;
  }
}

uint64_t setup_mac_metadata(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = -1;
  v25 = 786437;
  memset(&__b, 0, sizeof(__b));
  v23 = 0;
  v22 = 0;
  v21 = 0;
  to = 0;
  v18 = 0;
  v19 = 0;
  from = archive_read_disk_entry_setup_path(v29, v28, 0);
  if (from)
  {
    v21 = copyfile(from, 0, 0, v25 | 0x10000);
    if (v21 == -1)
    {
      v16 = v29;
      v3 = __error();
      archive_set_error(v16, *v3, "Could not check extended attributes");
      return -20;
    }

    else if (v21)
    {
      to = 0;
      v18 = 0;
      v19 = 0;
      if (!issetugid())
      {
        __archive_get_tempdir(&to);
      }

      if (!to)
      {
        v18 = 0;
        archive_strncat(&to, "/tmp/", 5uLL);
      }

      archive_strcat(&to, "tar.md.XXXXXX");
      v26 = mkstemp(to);
      if ((v26 & 0x80000000) != 0)
      {
        v15 = v29;
        v4 = __error();
        archive_set_error(v15, *v4, "Could not open extended attribute file");
        v23 = -20;
      }

      else
      {
        __archive_ensure_cloexec_flag(v26);
        if (copyfile(from, to, 0, v25 | 0x400000))
        {
          v14 = v29;
          v5 = __error();
          archive_set_error(v14, *v5, "Could not pack extended attributes");
          v23 = -20;
        }

        else if (fstat(v26, &__b))
        {
          v13 = v29;
          v6 = __error();
          archive_set_error(v13, *v6, "Could not check size of extended attributes");
          v23 = -20;
        }

        else
        {
          v22 = malloc_type_malloc(__b.st_size, 0xE7963C55uLL);
          if (v22)
          {
            st_size = __b.st_size;
            if (st_size == read(v26, v22, __b.st_size))
            {
              archive_entry_copy_mac_metadata(v28, v22, __b.st_size);
            }

            else
            {
              v10 = v29;
              v8 = __error();
              archive_set_error(v10, *v8, "Could not read extended attributes into memory");
              v23 = -20;
            }
          }

          else
          {
            v12 = v29;
            v7 = __error();
            archive_set_error(v12, *v7, "Could not allocate memory for extended attributes");
            v23 = -20;
          }
        }
      }

      if ((v26 & 0x80000000) == 0)
      {
        close(v26);
        unlink(to);
      }

      archive_string_free(&to);
      free(v22);
      return v23;
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

uint64_t setup_sparse_0(_DWORD *a1, uint64_t *a2, int *a3)
{
  v9 = 0;
  v8 = 0;
  if (archive_entry_filetype(a2) == 0x8000 && archive_entry_size(a2) > 0 && !archive_entry_hardlink(a2))
  {
    if (*a3 < 0)
    {
      disk_entry_setup_path = archive_read_disk_entry_setup_path(a1, a2, a3);
    }

    else
    {
      disk_entry_setup_path = 0;
    }

    if (*a3 < 0)
    {
      if (!disk_entry_setup_path)
      {
        return -25;
      }

      if (pathconf(disk_entry_setup_path, 27) <= 0)
      {
        return 0;
      }

      *a3 = open(disk_entry_setup_path, 16777220);
      if (*a3 < 0)
      {
        v3 = __error();
        return -25;
      }

      __archive_ensure_cloexec_flag(*a3);
      v13 = 0;
    }

    else
    {
      if (fpathconf(*a3, 27) <= 0)
      {
        return 0;
      }

      v13 = lseek(*a3, 0, 1);
      if (v13)
      {
        lseek(*a3, 0, 0);
      }
    }

    v11 = 0;
    v14 = archive_entry_size(a2);
    while (v11 < v14)
    {
      v12 = lseek(*a3, v11, 4);
      if (v12 == -1)
      {
        if (*__error() != 6)
        {
          v4 = __error();
          archive_set_error(a1, *v4, "lseek(SEEK_HOLE) failed");
          v9 = -25;
          goto LABEL_40;
        }

        if (!archive_entry_sparse_count(a2))
        {
          v8 = 1;
        }

        break;
      }

      v10 = lseek(*a3, v12, 3);
      if (v10 == -1)
      {
        if (*__error() != 6 || lseek(*a3, 0, 2) == -1)
        {
          v5 = __error();
          archive_set_error(a1, *v5, "lseek(SEEK_DATA) failed");
          v9 = -25;
          goto LABEL_40;
        }

        break;
      }

      if (!v12 && v10 == v14)
      {
        break;
      }

      archive_entry_sparse_add_entry(a2, v12, v10 - v12);
      v11 = v10;
    }

    if (v8 && !lseek(*a3, 0, 3) && lseek(*a3, 0, 2) == v14)
    {
      archive_entry_sparse_add_entry(a2, 0, 0);
    }

LABEL_40:
    lseek(*a3, v13, 0);
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t setup_xattr(uint64_t a1, uint64_t a2, const char *a3, int a4, const char *a5)
{
  value = 0;
  if (a4 < 0)
  {
    if (*(a1 + 153))
    {
      size = getxattr(a5, a3, 0, 0, 0, 0);
    }

    else
    {
      size = getxattr(a5, a3, 0, 0, 0, 1);
    }
  }

  else
  {
    size = fgetxattr(a4, a3, 0, 0, 0, 0);
  }

  if (size == -1)
  {
    v5 = __error();
    archive_set_error(a1, *v5, "Couldn't query extended attribute");
    return -20;
  }

  else if (size <= 0 || (value = malloc_type_malloc(size, 0xCFF863D9uLL)) != 0)
  {
    if (a4 < 0)
    {
      if (*(a1 + 153))
      {
        sizea = getxattr(a5, a3, value, size, 0, 0);
      }

      else
      {
        sizea = getxattr(a5, a3, value, size, 0, 1);
      }
    }

    else
    {
      sizea = fgetxattr(a4, a3, value, size, 0, 0);
    }

    if (sizea == -1)
    {
      v7 = __error();
      archive_set_error(a1, *v7, "Couldn't read extended attribute");
      return -20;
    }

    else
    {
      archive_entry_xattr_add_entry(a2, a3, value, sizea);
      free(value);
      return 0;
    }
  }

  else
  {
    v6 = __error();
    archive_set_error(a1, *v6, "Out of memory");
    return -30;
  }
}

uint64_t archive_write_set_format_warc(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_warc") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v2 = malloc_type_malloc(0x20uLL, 0x100004060DA0407uLL);
    if (v2)
    {
      *v2 &= ~1u;
      v2[1] = time(0);
      *(v2 + 8) = 0;
      *(v2 + 5) = v2[1];
      *(a1 + 248) = v2;
      *(a1 + 256) = "WARC/1.0";
      *(a1 + 272) = _warc_options;
      *(a1 + 288) = _warc_header;
      *(a1 + 296) = _warc_data;
      *(a1 + 304) = _warc_close;
      *(a1 + 312) = _warc_free;
      *(a1 + 280) = _warc_finish_entry;
      *(a1 + 16) = 983040;
      *(a1 + 24) = "WARC/1.0";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate warc data");
      return -30;
    }
  }
}

uint64_t _warc_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = *(a1 + 248);
  if (!strcmp(a2, "omit-warcinfo") && (!a3 || !strcmp(a3, "true")))
  {
    *v4 = *v4 & 0xFE | 1;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t _warc_header(uint64_t a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = *(a1 + 248);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if ((*v13 & 1) == 0)
  {
    v9 = 0;
    memcpy(__dst, &unk_1E80B86D8, sizeof(__dst));
    __dst[3] = *(v13 + 8);
    __dst[4] = *(v13 + 8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memcpy(v7, __dst, sizeof(v7));
    v9 = _popul_ehdr(&v10, 0x200uLL, v7);
    if ((v9 & 0x8000000000000000) == 0)
    {
      archive_strncat(&v10, "software: libarchive/3.7.4\r\nformat: WARC file version 1.0\r\n", 0x3BuLL);
      archive_strncat(&v10, "\r\n\r\n", 4uLL);
      __archive_write_output(v15, v10, v11);
    }

    *v13 = *v13 & 0xFE | 1;
    archive_string_free(&v10);
  }

  if (archive_entry_pathname(v14))
  {
    v2 = archive_entry_filetype(v14);
    *(v13 + 16) = v2;
    *(v13 + 24) = 0;
    if (*(v13 + 16) == 0x8000)
    {
      memset(__b, 0, sizeof(__b));
      LODWORD(__b[0]) = 3;
      v5 = 0;
      __b[1] = archive_entry_pathname(v14);
      __b[3] = *(v13 + 8);
      __b[4] = archive_entry_mtime(v14);
      __b[6] = archive_entry_size(v14);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memcpy(v4, __b, sizeof(v4));
      v5 = _popul_ehdr(&v10, 0x200uLL, v4);
      if (v5 < 0)
      {
        archive_set_error(v15, 79, "cannot archive file");
        return -20;
      }

      else
      {
        __archive_write_output(v15, v10, v5);
        *(v13 + 24) = __b[6];
        archive_string_free(&v10);
        return 0;
      }
    }

    else
    {
      __archive_write_entry_filetype_unsupported(v15, v14, "WARC");
      return -25;
    }
  }

  else
  {
    archive_set_error(v15, 22, "Invalid filename");
    return -20;
  }
}

uint64_t _warc_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (*(v5 + 16) != 0x8000)
  {
    return v6;
  }

  if (a3 > *(v5 + 24))
  {
    v6 = *(v5 + 24);
  }

  v4 = __archive_write_output(a1, a2, v6);
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t _warc_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t _warc_finish_entry(uint64_t a1)
{
  v3 = *(a1 + 248);
  if (*(v3 + 16) == 0x8000 && (v2 = __archive_write_output(a1, "\r\n\r\n", 4)) != 0)
  {
    return v2;
  }

  else
  {
    *(v3 + 16) = 0;
    return 0;
  }
}

uint64_t _popul_ehdr(void *a1, unint64_t a2, char **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (!*a3 || *a3 > 3u)
  {
    return -1;
  }

  v12[1] = 0;
  archive_strncat(v12, "WARC/1.0\r\n", 0xAuLL);
  archive_string_sprintf(v12, "WARC-Type: %s\r\n", *(&_popul_ehdr__typ + *a3));
  if (a3[1])
  {
    v9 = 0;
    v8 = strchr(a3[1], 58);
    if (v8 && v8[1] == 47 && v8[2] == 47)
    {
      v9 = &_popul_ehdr__uri;
    }

    else
    {
      v9 = "file://";
    }

    archive_string_sprintf(v12, "WARC-Target-URI: %s%s\r\n", v9, a3[1]);
  }

  xstrftime(v12, "WARC-Date: %Y-%m-%dT%H:%M:%SZ\r\n", a3[3]);
  xstrftime(v12, "Last-Modified: %Y-%m-%dT%H:%M:%SZ\r\n", a3[4]);
  if (!a3[2])
  {
    v6 = 0;
    v7 = 0;
    _gen_uuid(&v6);
    __snprintf_chk(v14, 0x30uLL, 0, 0x30uLL, "<urn:uuid:%08x-%04x-%04x-%04x-%04x%08x>", v6, HIWORD(HIDWORD(v6)), WORD2(v6), WORD1(v7), v7, HIDWORD(v7));
    a3[2] = v14;
  }

  archive_string_sprintf(v12, "WARC-Record-ID: %s\r\n", a3[2]);
  if (a3[5])
  {
    archive_string_sprintf(v12, "Content-Type: %s\r\n", a3[5]);
  }

  archive_string_sprintf(v12, "Content-Length: %ju\r\n", a3[6]);
  archive_strncat(v12, "\r\n", 2uLL);
  if (v12[1] >= v11)
  {
    return -1;
  }

  else
  {
    return v12[1];
  }
}

tm *xstrftime(void *a1, char *a2, time_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  memset(&__b, 0, sizeof(__b));
  result = gmtime_r(&v7, &__b);
  v6 = result;
  if (result)
  {
    v4 = strftime(v10, 0x63uLL, v8, v6);
    return archive_strncat(v9, v10, v4);
  }

  return result;
}

uint64_t _gen_uuid(_DWORD *a1)
{
  archive_random(a1, 0x10uLL);
  a1[1] &= 0xFFFF0FFF;
  a1[1] |= 0x4000u;
  a1[2] &= 0x3FFFFFFFu;
  a1[2] |= 0x80000000;
  return 0;
}

uint64_t archive_write_set_format_iso9660(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_iso9660") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v6 = malloc_type_calloc(1uLL, 0x10378uLL, 0x10F004021E729E2uLL);
    if (v6)
    {
      *v6 = 0;
      *(v6 + 2) = -1;
      v6[2] = 0;
      *(v6 + 52) = 0;
      *(v6 + 48) = 0;
      v6[25] = 0;
      v6[29] = 0;
      *(v6 + 64) = 0;
      *(v6 + 60) = 1;
      v6[31] = 0;
      isofile_init_entry_list(v6);
      isofile_init_entry_data_file_list(v6);
      isofile_init_hardlinks(v6);
      v6[90] = 0;
      *(v6 + 182) = 1;
      v6[8284] = 0x10000;
      *(v6 + 16570) = 1;
      v6[8286] = 0;
      v6[8287] = 0;
      v6[8288] = 0;
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      v6[37] = 0;
      v6[38] = 0;
      v6[39] = 0;
      v6[38] = 0;
      archive_strncat(v6 + 37, "CDROM", 5uLL);
      v6[40] = 0;
      v6[41] = 0;
      v6[42] = 0;
      v6[43] = 0;
      v6[44] = 0;
      v6[45] = 0;
      v6[46] = 0;
      v6[47] = 0;
      v6[48] = 0;
      v6[47] = 0;
      v4 = v6 + 46;
      v5 = archive_version_string();
      if (archive_version_string())
      {
        v1 = archive_version_string();
        v3 = strlen(v1);
        archive_strncat(v4, v5, v3);
      }

      else
      {
        archive_strncat(v4, v5, 0);
      }

      v6[49] = 0;
      v6[50] = 0;
      v6[51] = 0;
      v6[52] = 0;
      v6[53] = 0;
      v6[54] = 0;
      v6[55] = 0;
      v6[56] = 0;
      v6[57] = 0;
      v6[8289] = 0;
      v6[8290] = 0;
      v6[8291] = 0;
      v6[8292] = 0;
      v6[8290] = 0;
      archive_strncat(v6 + 8289, "boot.catalog", 0xCuLL);
      v6[8293] = 0;
      v6[8294] = 0;
      v6[8295] = 0;
      v6[8296] = 0;
      *(v6 + 66376) = 0;
      v6[8298] = 0;
      v6[8299] = 0;
      v6[8300] = 0;
      *(v6 + 33205) = 0;
      *(v6 + 33206) = 4;
      v6[68] = 0;
      v6[69] = 0;
      *(v6 + 174) = 0;
      *(v6 + 178) = 9;
      __memset_chk();
      *(v6 + 16604) &= ~1u;
      *(v6 + 16604) &= ~2u;
      *(v6 + 16604) = v6[8302] & 0xFFFFFFFB | 4;
      *(v6 + 16604) &= ~8u;
      *(v6 + 16604) &= ~0x10u;
      *(v6 + 16604) &= ~0x20u;
      *(v6 + 16604) &= ~0x40u;
      *(v6 + 16604) &= ~0x80u;
      *(v6 + 16604) &= ~0x100u;
      *(v6 + 16604) &= 0xFFFFF9FF;
      *(v6 + 16604) &= ~0x800u;
      *(v6 + 16604) &= ~0x1000u;
      *(v6 + 16604) = v6[8302] & 0xFFFE3FFF | 0x4000;
      *(v6 + 16604) = v6[8302] & 0xFFF9FFFF | 0x20000;
      *(v6 + 16604) = v6[8302] & 0xFFF7FFFF | 0x80000;
      *(v6 + 16604) = v6[8302] & 0xFFEFFFFF | 0x100000;
      *(v6 + 16604) = v6[8302] & 0xFFDFFFFF | 0x200000;
      *(v6 + 16604) &= ~0x400000u;
      *(v6 + 16604) = v6[8302] & 0xFE7FFFFF | 0x1000000;
      *(v6 + 16604) &= ~0x2000000u;
      *(v6 + 16604) &= ~0x4000000u;
      v6[23] = isoent_create_virtual_dir(a1, v6, &unk_1BF3442C6);
      if (v6[23])
      {
        *(v6[23] + 32) = v6[23];
        v6[3] = v6[23];
        v6[4] = 0;
        v6[5] = 0;
        v6[6] = 0;
        archive_string_ensure((v6 + 4), 1uLL);
        *v6[4] = 0;
        v6[15] = 0;
        v6[16] = 0;
        *(a1 + 248) = v6;
        *(a1 + 256) = "iso9660";
        *(a1 + 272) = iso9660_options;
        *(a1 + 288) = iso9660_write_header;
        *(a1 + 296) = iso9660_write_data;
        *(a1 + 280) = iso9660_finish_entry;
        *(a1 + 304) = iso9660_close;
        *(a1 + 312) = iso9660_free;
        *(a1 + 16) = 0x40000;
        *(a1 + 24) = "ISO9660";
        return 0;
      }

      else
      {
        free(v6);
        archive_set_error(a1, 12, "Can't allocate memory");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate iso9660 data");
      return -30;
    }
  }
}

uint64_t isofile_init_entry_list(uint64_t result)
{
  *(result + 136) = 0;
  *(result + 144) = result + 136;
  return result;
}

uint64_t isofile_init_entry_data_file_list(uint64_t result)
{
  *(result + 152) = 0;
  *(result + 160) = result + 152;
  return result;
}

void *isoent_create_virtual_dir(uint64_t a1, uint64_t a2, char *a3)
{
  v9 = isofile_new(a1, 0);
  if (!v9)
  {
    return 0;
  }

  archive_entry_set_pathname(v9[4], a3);
  archive_entry_unset_mtime(v9[4]);
  archive_entry_unset_atime(v9[4]);
  archive_entry_unset_ctime(v9[4]);
  v6 = v9[4];
  v3 = getuid();
  archive_entry_set_uid(v6, v3);
  v7 = v9[4];
  v4 = getgid();
  archive_entry_set_gid(v7, v4);
  archive_entry_set_mode(v9[4], 16749);
  archive_entry_set_nlink(v9[4], 2);
  if (isofile_gen_utility_names(a1, v9) >= -20)
  {
    isofile_add_entry(a2, v9);
    v8 = isoent_new(v9);
    if (v8)
    {
      *(v8 + 232) = v8[29] & 0xFD | 2;
      *(v8 + 232) = v8[29] & 0xFE | 1;
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    isofile_free(v9);
    return 0;
  }
}

uint64_t iso9660_options(uint64_t a1, const char *a2, char *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = *(a1 + 248);
  v10 = 0;
  str_opt = 0;
  v6 = *a2;
  if (v6 == 97)
  {
    if (!strcmp(v13, "abstract-file"))
    {
      str_opt = get_str_opt(v14, (v11 + 416), 0x25uLL, v13, v12);
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFFE | (str_opt == 0);
      return str_opt;
    }

    if (!strcmp(v13, "application-id"))
    {
      str_opt = get_str_opt(v14, (v11 + 368), 0x80uLL, v13, v12);
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFFD | (2 * (str_opt == 0));
      return str_opt;
    }

    if (!strcmp(v13, "allow-vernum"))
    {
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFFB | (4 * (v12 != 0));
      return 0;
    }

    return -20;
  }

  if (v6 != 98)
  {
    if (v6 == 99)
    {
      if (strcmp(v13, "compression-level"))
      {
        if (!strcmp(v13, "copyright-file"))
        {
          str_opt = get_str_opt(v14, (v11 + 392), 0x25uLL, v13, v12);
          *(v11 + 66416) = *(v11 + 66416) & 0xFFFFEFFF | ((str_opt == 0) << 12);
          return str_opt;
        }

        return -20;
      }

      if (v12 && *v12 >= 48 && *v12 <= 57 && !v12[1])
      {
        *(v11 + 712) = *v12 - 48;
        *(v11 + 66416) = *(v11 + 66416) & 0xFFFFF7FF | 0x800;
        return 0;
      }
    }

    else if (v6 == 105)
    {
      if (strcmp(v13, "iso-level"))
      {
        return -20;
      }

      if (v12 && !v12[1] && *v12 >= 49 && *v12 <= 52)
      {
        *(v11 + 66416) = *(v11 + 66416) & 0xFFFE3FFF | (((*v12 - 48) & 7) << 14);
        return 0;
      }
    }

    else
    {
      switch(v6)
      {
        case 'j':
          if (strcmp(v13, "joliet"))
          {
            return -20;
          }

          if (v12)
          {
            if (!strcmp(v12, "1"))
            {
              *(v11 + 66416) = *(v11 + 66416) & 0xFFF9FFFF | 0x20000;
            }

            else
            {
              if (strcmp(v12, "long"))
              {
                goto LABEL_130;
              }

              *(v11 + 66416) = *(v11 + 66416) & 0xFFF9FFFF | 0x40000;
            }
          }

          else
          {
            *(v11 + 66416) &= 0xFFF9FFFF;
          }

          return 0;
        case 'l':
          if (!strcmp(v13, "limit-depth"))
          {
            *(v11 + 66416) = *(v11 + 66416) & 0xFFF7FFFF | ((v12 != 0) << 19);
            return 0;
          }

          if (!strcmp(v13, "limit-dirs"))
          {
            *(v11 + 66416) = *(v11 + 66416) & 0xFFEFFFFF | ((v12 != 0) << 20);
            return 0;
          }

          return -20;
        case 'p':
          if (!strcmp(v13, "pad"))
          {
            *(v11 + 66416) = *(v11 + 66416) & 0xFFDFFFFF | ((v12 != 0) << 21);
            return 0;
          }

          if (!strcmp(v13, "publisher"))
          {
            str_opt = get_str_opt(v14, (v11 + 320), 0x80uLL, v13, v12);
            *(v11 + 66416) = *(v11 + 66416) & 0xFFBFFFFF | ((str_opt == 0) << 22);
            return str_opt;
          }

          return -20;
      }

      if (v6 != 114)
      {
        if (v6 == 118)
        {
          if (!strcmp(v13, "volume-id"))
          {
            str_opt = get_str_opt(v14, (v11 + 296), 0x20uLL, v13, v12);
            *(v11 + 66416) = *(v11 + 66416) & 0xFDFFFFFF | ((str_opt == 0) << 25);
            return str_opt;
          }
        }

        else if (v6 == 122 && !strcmp(v13, "zisofs"))
        {
          if (v12)
          {
            *(v11 + 66416) = *(v11 + 66416) & 0xFBFFFFFF | 0x4000000;
          }

          else
          {
            *(v11 + 66416) &= ~0x4000000u;
          }

          return 0;
        }

        return -20;
      }

      if (strcmp(v13, "rockridge") && strcmp(v13, "Rockridge"))
      {
        return -20;
      }

      if (!v12)
      {
        *(v11 + 66416) &= 0xFE7FFFFF;
        return 0;
      }

      if (!strcmp(v12, "1"))
      {
        *(v11 + 66416) = *(v11 + 66416) & 0xFE7FFFFF | 0x1000000;
        return 0;
      }

      if (!strcmp(v12, "strict"))
      {
        *(v11 + 66416) = *(v11 + 66416) & 0xFE7FFFFF | 0x800000;
        return 0;
      }

      if (!strcmp(v12, "useful"))
      {
        *(v11 + 66416) = *(v11 + 66416) & 0xFE7FFFFF | 0x1000000;
        return 0;
      }
    }

    goto LABEL_130;
  }

  if (!strcmp(v13, "biblio-file"))
  {
    str_opt = get_str_opt(v14, (v11 + 440), 0x25uLL, v13, v12);
    *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFF7 | (8 * (str_opt == 0));
    return str_opt;
  }

  if (!strcmp(v13, "boot"))
  {
    if (v12)
    {
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFEF | 0x10;
      *(v11 + 66352) = 0;
      v5 = (v11 + 66344);
      if (v12)
      {
        v4 = strlen(v12);
        archive_strncat(v5, v12, v4);
      }

      else
      {
        archive_strncat(v5, 0, 0);
      }
    }

    else
    {
      *(v11 + 66416) &= ~0x10u;
    }

    return 0;
  }

  else
  {
    if (!strcmp(v13, "boot-catalog"))
    {
      str_opt = get_str_opt(v14, (v11 + 66312), 0x400uLL, v13, v12);
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFDF | (32 * (str_opt == 0));
      return str_opt;
    }

    if (!strcmp(v13, "boot-info-table"))
    {
      *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFFBF | ((v12 != 0) << 6);
      return 0;
    }

    if (strcmp(v13, "boot-load-seg"))
    {
      if (!strcmp(v13, "boot-load-size"))
      {
        v7 = 0;
        str_opt = get_num_opt(v14, &v7, 0xFFFF, 1, v13, v12);
        *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFEFF | ((str_opt == 0) << 8);
        if (str_opt)
        {
          return -30;
        }

        else
        {
          *(v11 + 66412) = v7;
          return 0;
        }
      }

      if (strcmp(v13, "boot-type"))
      {
        return -20;
      }

      if (v12)
      {
        if (!strcmp(v12, "no-emulation"))
        {
          *(v11 + 66416) = *(v11 + 66416) & 0xFFFFF9FF | 0x200;
        }

        else if (!strcmp(v12, "fd"))
        {
          *(v11 + 66416) = *(v11 + 66416) & 0xFFFFF9FF | 0x400;
        }

        else
        {
          if (strcmp(v12, "hard-disk"))
          {
            goto LABEL_130;
          }

          *(v11 + 66416) = *(v11 + 66416) & 0xFFFFF9FF | 0x600;
        }

        return 0;
      }

LABEL_130:
      return -25;
    }

    v8 = 0;
    *(v11 + 66416) &= ~0x80u;
    if (!v12)
    {
      goto LABEL_130;
    }

    v8 = 0;
    v10 = v12;
    if (*v12 == 48 && (v10[1] == 120 || v10[1] == 88))
    {
      v10 += 2;
    }

    while (*v10)
    {
      if (v8)
      {
        v8 *= 16;
      }

      if (*v10 < 65 || *v10 > 70)
      {
        if (*v10 < 97 || *v10 > 102)
        {
          if (*v10 < 48 || *v10 > 57)
          {
            goto LABEL_130;
          }

          v8 += *v10 - 48;
        }

        else
        {
          v8 += *v10 - 87;
        }
      }

      else
      {
        v8 += *v10 - 55;
      }

      if (v8 >= 0x10000)
      {
        return -30;
      }

      ++v10;
    }

    *(v11 + 66410) = v8;
    *(v11 + 66416) = *(v11 + 66416) & 0xFFFFFF7F | 0x80;
    return 0;
  }
}

uint64_t iso9660_write_header(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v6 = 0;
  v12 = *(a1 + 248);
  *(v12 + 16) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  if (archive_entry_filetype(v13) != 40960 || ((*(v12 + 66416) >> 23) & 3) != 0)
  {
    if (archive_entry_filetype(v13) == 0x8000 && archive_entry_size(v13) >= 0x100000000)
    {
      if (((*(v12 + 66416) >> 14) & 7u) < 3)
      {
        archive_set_error(v14, -1, "Ignore over %lld bytes file. This file too large.", 0x100000000);
        *(v12 + 16) = 0;
        return -20;
      }

      *(v12 + 64) = 1;
    }

    v11 = isofile_new(v14, v13);
    if (!v11)
    {
      goto LABEL_10;
    }

    v7 = isofile_gen_utility_names(v14, v11);
    if (v7 < -20)
    {
      goto LABEL_12;
    }

    if (v7 < 0)
    {
      v6 = v7;
    }

    if (!v11[6] && !v11[9])
    {
LABEL_12:
      isofile_free(v11);
      return v7;
    }

    isofile_add_entry(v12, v11);
    v10 = isoent_new(v11);
    if (v10)
    {
      if (*(v10[3] + 136) > *(v12 + 728))
      {
        *(v12 + 728) = *(v10[3] + 136);
      }

      v8 = isoent_tree(v14, &v10);
      if (v8)
      {
        return v8;
      }

      else if (v10[3] == v11)
      {
        if (archive_entry_filetype(v11[4]) == 0x8000)
        {
          *(v12 + 16) = v11;
          if (archive_entry_nlink(v11[4]) > 1 && isofile_register_hardlink(v14, v11))
          {
            return -30;
          }

          else if ((*(v12 + 8) & 0x80000000) != 0 && (*(v12 + 8) = __archive_mktemp(0), (*(v12 + 8) & 0x80000000) != 0))
          {
            v5 = v14;
            v2 = __error();
            archive_set_error(v5, *v2, "Couldn't create temporary file");
            return -30;
          }

          else
          {
            v11[18] = *(*(v14 + 31) + 66288) + 0x10000 - *(*(v14 + 31) + 66272);
            v11[22] = v11 + 18;
            v9 = zisofs_init(v14, v11);
            if (v9 < v6)
            {
              v6 = v9;
            }

            v3 = archive_entry_size(v11[4]);
            *(v12 + 56) = v3;
            return v6;
          }
        }

        else
        {
          return v6;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
LABEL_10:
      archive_set_error(v14, 12, "Can't allocate data");
      return -30;
    }
  }

  else
  {
    archive_set_error(v14, -1, "Ignore symlink file.");
    *(v12 + 16) = 0;
    return -20;
  }
}

uint64_t iso9660_write_data(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v5 = *(a1 + 248);
  if (!*(v5 + 16))
  {
    return 0;
  }

  if (archive_entry_filetype(*(*(v5 + 16) + 32)) != 0x8000)
  {
    return 0;
  }

  if (a3 > *(v5 + 56))
  {
    a3 = *(v5 + 56);
  }

  if (!a3)
  {
    return 0;
  }

  v4 = write_iso9660_data(a1, a2, a3);
  if (v4 > 0)
  {
    *(v5 + 56) -= v4;
  }

  return v4;
}

uint64_t iso9660_finish_entry(void *a1)
{
  v3 = a1[31];
  if (*(v3 + 16))
  {
    if (archive_entry_filetype(*(*(v3 + 16) + 32)) == 0x8000)
    {
      if (*(*(v3 + 16) + 152))
      {
        while (*(v3 + 56))
        {
          if (*(v3 + 56) > a1[22])
          {
            v2 = a1[22];
          }

          else
          {
            v2 = *(v3 + 56);
          }

          if ((write_iso9660_data(a1, a1[21], v2) & 0x8000000000000000) != 0)
          {
            return -30;
          }

          *(v3 + 56) -= v2;
        }

        if ((*(v3 + 472) & 2) != 0 && zisofs_finish_entry(a1))
        {
          return -30;
        }

        else if (wb_write_padding_to_temp(a1, *(*(*(v3 + 16) + 176) + 8)))
        {
          return -30;
        }

        else
        {
          *(*(*(v3 + 16) + 176) + 16) = (*(*(*(v3 + 16) + 176) + 8) + 2047) >> 11;
          isofile_add_data_file(v3, *(v3 + 16));
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

uint64_t iso9660_close(uint64_t a1)
{
  v18 = *(a1 + 248);
  if (v18[8284] && (v10 = wb_write_out(a1), (v10 & 0x80000000) != 0))
  {
    return v10;
  }

  else
  {
    time(v18);
    if ((v18[8302] & 0x10) != 0)
    {
      out_boot_file = isoent_find_out_boot_file(a1, v18[23]);
      if ((out_boot_file & 0x80000000) != 0)
      {
        return out_boot_file;
      }

      v12 = zisofs_rewind_boot_file(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      if (*(*(a1 + 248) + 66272))
      {
        v13 = wb_write_out(a1);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }
      }

      boot_catalog = isoent_create_boot_catalog(a1, v18[23]);
      if ((boot_catalog & 0x80000000) != 0)
      {
        return boot_catalog;
      }
    }

    if (((*(v18 + 16604) >> 17) & 3) != 0)
    {
      v15 = isoent_clone_tree(a1, v18 + 29, v18[23]);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      if (!v18[15])
      {
        v18[15] = archive_string_conversion_to_charset(a1, "UTF-16BE", 1);
        if (!v18[15])
        {
          return -30;
        }

        v18[16] = archive_string_conversion_from_charset(a1, "UTF-16BE", 1);
        if (!v18[16])
        {
          return -30;
        }
      }
    }

    path_table = isoent_make_path_table(a1);
    if ((path_table & 0x80000000) != 0)
    {
      return path_table;
    }

    else
    {
      v4 = 19;
      if ((v18[8302] & 0x10) != 0)
      {
        v4 = 20;
      }

      if (((*(v18 + 16604) >> 17) & 3) != 0)
      {
        ++v4;
      }

      if (((*(v18 + 16604) >> 14) & 7) == 4)
      {
        ++v4;
      }

      *(v18 + 55) = v4;
      v5 = v4 + *(v18 + 53);
      *(v18 + 56) = v5;
      v6 = v5 + *(v18 + 53);
      if (((*(v18 + 16604) >> 17) & 3) != 0)
      {
        *(v18 + 67) = v6;
        v7 = v6 + *(v18 + 65);
        *(v18 + 68) = v7;
        v6 = v7 + *(v18 + 65);
      }

      isoent_setup_directory_location(v18, v6, v18 + 23);
      v8 = v6 + *(v18 + 57);
      if (((*(v18 + 16604) >> 17) & 3) != 0)
      {
        isoent_setup_directory_location(v18, v8, v18 + 29);
        v8 += *(v18 + 69);
      }

      if (((*(v18 + 16604) >> 23) & 3) != 0)
      {
        *(v18 + 116) = v8++;
      }

      isoent_setup_file_location(v18, v8);
      v9 = v8 + *(v18 + 72);
      if ((v18[8302] & 0x10) != 0 && (v18[8302] & 0x40) != 0 && (v17 = setup_boot_information(), (v17 & 0x80000000) != 0))
      {
        return v17;
      }

      else
      {
        *(v18 + 70) = v9;
        if ((v18[8302] & 0x200000) != 0)
        {
          *(v18 + 70) += 150;
        }

        *(v18 + 71) = 1;
        v18[8284] = 0x10000;
        *(v18 + 16570) = 0;
        v18[8286] = 0;
        v18[8287] = 0;
        v18[8288] = 0;
        if (write_null(a1, 0x8000uLL))
        {
          return -30;
        }

        else if (write_VD(a1, (v18 + 23)))
        {
          return -30;
        }

        else if ((v18[8302] & 0x10) != 0 && write_VD_boot_record(a1))
        {
          return -30;
        }

        else if (((*(v18 + 16604) >> 14) & 7) == 4 && (*(v18 + 48) = 2, v1 = write_VD(a1, (v18 + 23)), *(v18 + 48) = 0, v1))
        {
          return -30;
        }

        else if (((*(v18 + 16604) >> 17) & 3) != 0 && write_VD(a1, (v18 + 29)))
        {
          return -30;
        }

        else if (write_VD_terminator(a1))
        {
          return -30;
        }

        else if (write_information_block(a1))
        {
          return -30;
        }

        else if (write_path_table(a1, 0, (v18 + 23)))
        {
          return -30;
        }

        else if (write_path_table(a1, 1, (v18 + 23)))
        {
          return -30;
        }

        else
        {
          if (((*(v18 + 16604) >> 17) & 3) != 0)
          {
            if (write_path_table(a1, 0, (v18 + 29)))
            {
              return -30;
            }

            if (write_path_table(a1, 1, (v18 + 29)))
            {
              return -30;
            }
          }

          if (write_directory_descriptors(a1, (v18 + 23)))
          {
            return -30;
          }

          else if (((*(v18 + 16604) >> 17) & 3) != 0 && write_directory_descriptors(a1, (v18 + 29)))
          {
            return -30;
          }

          else if (((*(v18 + 16604) >> 23) & 3) != 0 && write_rr_ER(a1))
          {
            return -30;
          }

          else if (write_file_descriptors(a1))
          {
            return -30;
          }

          else if ((v18[8302] & 0x200000) != 0 && write_null(a1, 0x4B000uLL))
          {
            return -30;
          }

          else if (v18[90])
          {
            v2 = archive_entry_pathname(*(*(v18[90] + 24) + 32));
            archive_set_error(a1, -1, "%s: Directories too deep.", v2);
            return -20;
          }

          else
          {
            return wb_write_out(a1);
          }
        }
      }
    }
  }
}

uint64_t iso9660_free(uint64_t a1)
{
  v5 = *(a1 + 248);
  if ((*(v5 + 2) & 0x80000000) == 0)
  {
    close(*(v5 + 2));
  }

  v2 = zisofs_free(a1);
  isoent_free_all(*(v5 + 23));
  for (i = 0; i < *(v5 + 52); ++i)
  {
    free(*(*(v5 + 25) + 32 * i + 16));
  }

  free(*(v5 + 25));
  if (((*(v5 + 16604) >> 17) & 3) != 0)
  {
    isoent_free_all(*(v5 + 29));
    for (j = 0; j < *(v5 + 64); ++j)
    {
      free(*(*(v5 + 31) + 32 * j + 16));
    }

    free(*(v5 + 31));
  }

  isofile_free_all_entries(v5);
  isofile_free_hardlinks(v5);
  archive_string_free(v5 + 32);
  archive_string_free(v5 + 296);
  archive_string_free(v5 + 320);
  archive_string_free(v5 + 344);
  archive_string_free(v5 + 368);
  archive_string_free(v5 + 392);
  archive_string_free(v5 + 416);
  archive_string_free(v5 + 440);
  archive_string_free(v5 + 66312);
  archive_string_free(v5 + 66344);
  archive_string_free(v5 + 66384);
  archive_string_free(v5 + 72);
  archive_string_free(v5 + 96);
  free(v5);
  *(a1 + 248) = 0;
  return v2;
}

uint64_t get_str_opt(_DWORD *a1, void *a2, size_t a3, const char *a4, char *a5)
{
  if (strlen(a5) <= a3)
  {
    a2[1] = 0;
    if (a5)
    {
      v6 = strlen(a5);
      archive_strncat(a2, a5, v6);
    }

    else
    {
      archive_strncat(a2, 0, 0);
    }

    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t get_num_opt(_DWORD *a1, int *a2, int a3, int a4, const char *a5, _BYTE *a6)
{
  v9 = a6;
  v8 = 0;
  v7 = 0;
  if (a6)
  {
    if (*a6 == 45)
    {
      v7 = 1;
      v9 = a6 + 1;
    }

    while (*v9)
    {
      if (*v9 < 48 || *v9 > 57)
      {
        return -30;
      }

      v8 = 10 * v8 + *v9 - 48;
      if (v8 > a3)
      {
        return -30;
      }

      if (v8 < a4)
      {
        return -30;
      }

      ++v9;
    }

    if (v7)
    {
      v8 = -v8;
    }

    *a2 = v8;
    return 0;
  }

  else
  {
    return -30;
  }
}

void *isofile_new(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1030040A3FBD8EDuLL);
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
    v4[5] = 0;
    v4[6] = 0;
    v4[7] = 0;
    v4[8] = 0;
    v4[9] = 0;
    v4[10] = 0;
    v4[11] = 0;
    v4[12] = 0;
    v4[13] = 0;
    v4[14] = 0;
    v4[15] = 0;
    v4[16] = 0;
    v4[22] = v4 + 18;
    return v4;
  }

  else
  {
    free(v4);
    return 0;
  }
}

uint64_t isofile_gen_utility_names(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v23 = *(a1 + 248);
  *(a2 + 48) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 120) = 0;
  v22 = archive_entry_pathname(*(v24 + 32));
  if (!v22 || !*v22)
  {
    *(v24 + 136) = 0;
    return v17;
  }

  if (((*(v23 + 66416) >> 17) & 3) != 0)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    if (!*(v23 + 120))
    {
      *(v23 + 120) = archive_string_conversion_to_charset(v25, "UTF-16BE", 1);
      if (!*(v23 + 120))
      {
        return -30;
      }

      *(v23 + 128) = archive_string_conversion_from_charset(v25, "UTF-16BE", 1);
      if (!*(v23 + 128))
      {
        return -30;
      }
    }

    if (_archive_entry_pathname_l(*(v24 + 32), &v16, &v14, *(v23 + 120)) < 0)
    {
      if (*__error() == 12)
      {
LABEL_12:
        archive_set_error(v25, 12, "Can't allocate memory for UTF-16BE");
        return -30;
      }

      archive_set_error(v25, -1, "A filename cannot be converted to UTF-16BE;You should disable making Joliet extension");
      v17 = -20;
    }

    while (v14 >= 2 && !v16[v14 - 2] && v16[v14 - 1] == 47)
    {
      v14 -= 2;
    }

    v15 = v16;
    v14 >>= 1;
    v12 = v14;
    while (v14)
    {
      if (!*v16 && v16[1] == 47)
      {
        v15 = v16 + 2;
        v12 = v14 - 1;
      }

      v16 += 2;
      --v14;
    }

    v13 = 2 * v12;
    if (!archive_string_ensure(v24 + 88, v13))
    {
      goto LABEL_12;
    }

    __memcpy_chk();
    *(v24 + 96) = v13;
  }

  *(v24 + 48) = 0;
  v9 = (v24 + 40);
  if (v22)
  {
    v8 = strlen(v22);
    archive_strncat(v9, v22, v8);
  }

  else
  {
    archive_strncat(v9, 0, 0);
  }

  v18 = *(v24 + 48);
  v20 = *(v24 + 40);
  v21 = v20;
  while (*v21)
  {
    if (*v21 == 47)
    {
      ++v21;
      --v18;
    }

    else
    {
      if (*v21 != 46)
      {
        break;
      }

      if (v21[1] == 46 && v21[2] == 47)
      {
        v21 += 3;
        v18 -= 3;
      }

      else if (v21[1] == 47 || v21[1] == 46 && !v21[2])
      {
        v21 += 2;
        v18 -= 2;
      }

      else
      {
        if (v21[1])
        {
          break;
        }

        ++v21;
        --v18;
      }
    }
  }

  if (v21 != v20)
  {
    __memmove_chk();
    v21 = v20;
  }

  do
  {
    if (!v18)
    {
      break;
    }

    v11 = v18;
    if (v21[v18 - 1] == 47)
    {
      v21[--v18] = 0;
    }

    if (v18 > 1 && v21[v18 - 2] == 47 && v21[v18 - 1] == 46)
    {
      v21[v18 - 2] = 0;
      v18 -= 2;
    }

    if (v18 > 2 && v21[v18 - 3] == 47 && v21[v18 - 2] == 46 && v21[v18 - 1] == 46)
    {
      v21[v18 - 3] = 0;
      v18 -= 3;
    }
  }

  while (v11 != v18);
  while (*v21)
  {
    if (*v21 == 47)
    {
      if (v21[1] == 47)
      {
        strlen(v21 + 1);
        __memmove_chk();
      }

      else if (v21[1] == 46 && v21[2] == 47)
      {
        strlen(v21 + 2);
        __memmove_chk();
      }

      else if (v21[1] == 46 && v21[2] == 46 && v21[3] == 47)
      {
          ;
        }

        if (i <= v20)
        {
          __strcpy_chk();
          v21 = v20;
        }

        else
        {
          __strcpy_chk();
          v21 = i;
        }
      }

      else
      {
        ++v21;
      }
    }

    else
    {
      ++v21;
    }
  }

  v21 = v20;
  v18 = strlen(v20);
  if (archive_entry_filetype(*(v24 + 32)) == 40960)
  {
    v22 = archive_entry_symlink(*(v24 + 32));
    *(v24 + 120) = 0;
    v7 = (v24 + 112);
    if (v22)
    {
      v6 = strlen(v22);
      archive_strncat(v7, v22, v6);
    }

    else
    {
      archive_strncat(v7, 0, 0);
    }
  }

  v19 = 0;
  *(v24 + 136) = 0;
  while (*v21)
  {
    if (*v21 == 47)
    {
      v19 = v21;
      ++*(v24 + 136);
    }

    ++v21;
  }

  if (v19)
  {
    *v19 = 0;
    *(v24 + 48) = v19 - v20;
    *(v24 + 72) = 0;
    v4 = (v24 + 64);
    v5 = v19 + 1;
    if (v19 == -1)
    {
      archive_strncat(v4, v5, 0);
    }

    else
    {
      v3 = strlen(v19 + 1);
      archive_strncat(v4, v5, v3);
    }

    if (archive_entry_filetype(*(v24 + 32)) == 0x4000)
    {
      ++*(v24 + 136);
    }

    return v17;
  }

  else
  {
    *(v24 + 48) = v18;
    *(v24 + 72) = 0;
    archive_string_concat((v24 + 64), (v24 + 40));
    *(v24 + 48) = 0;
    **(v24 + 40) = 0;
    return v17;
  }
}

void isofile_free(uint64_t a1)
{
  v2 = *(a1 + 168);
  while (v2)
  {
    v1 = v2;
    v2 = v2[3];
    free(v1);
  }

  archive_entry_free(*(a1 + 32));
  archive_string_free(a1 + 40);
  archive_string_free(a1 + 64);
  archive_string_free(a1 + 88);
  archive_string_free(a1 + 112);
  free(a1);
}

uint64_t isofile_add_entry(uint64_t result, void *a2)
{
  *a2 = 0;
  **(result + 144) = a2;
  *(result + 144) = a2;
  return result;
}

void *isoent_new(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10F00408C37FF92uLL);
  if (!v2)
  {
    return 0;
  }

  v2[3] = a1;
  v2[5] = 0;
  v2[6] = v2 + 5;
  __archive_rb_tree_init(v2 + 8, isoent_new_rb_ops);
  v2[10] = 0;
  v2[11] = v2 + 10;
  v2[26] = 0;
  v2[27] = v2 + 26;
  v2[28] = 0;
  if (archive_entry_filetype(*(a1 + 32)) == 0x4000)
  {
    *(v2 + 232) = v2[29] & 0xFD | 2;
  }

  return v2;
}

uint64_t isoent_tree(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a2;
  v20 = *(a1 + 248);
  v19 = 0;
  v18 = 0;
  node = 0;
  v16 = 0;
  v15 = 0;
  __s2 = 0;
  v13 = 0;
  path_component_0 = 0;
  v18 = *a2;
  v19 = *(v20 + 184);
  if (*(*(v18 + 24) + 48))
  {
    v13 = *(*(v18 + 24) + 40);
    __s2 = v13;
  }

  else
  {
    v13 = &unk_1BF3442C6;
    __s2 = &unk_1BF3442C6;
  }

  if (*(v20 + 40) == *(*(v18 + 24) + 48) && !strcmp(*(v20 + 32), __s2))
  {
    if (isoent_add_child_tail(*(v20 + 24), v18))
    {
      return 0;
    }

    node = __archive_rb_tree_find_node((*(v20 + 24) + 64), *(*(v18 + 24) + 64));
  }

  else
  {
    while (1)
    {
      path_component_0 = get_path_component_0(v24, 256, __s2);
      if (!path_component_0)
      {
        break;
      }

      if (path_component_0 < 0)
      {
        archive_set_error(v22, -1, "A name buffer is too small");
        _isoent_free(v18);
        return -30;
      }

      node = isoent_find_child(v19, v24);
      if (!node || !*__s2)
      {
        goto LABEL_21;
      }

      if ((node[29] & 2) == 0)
      {
        v7 = archive_entry_pathname(*(node[3] + 32));
        v2 = archive_entry_pathname(*(*(v18 + 24) + 32));
        _isoent_free(v18);
        *v21 = 0;
        return -25;
      }

      __s2 += path_component_0;
      if (*__s2 == 47)
      {
        ++__s2;
      }

      v19 = node;
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
        archive_strncat(&v8, v13, __s2 - v13 + path_component_0);
        if (v8[v9 - 1] == 47)
        {
          v8[--v9] = 0;
        }

        virtual_dir = isoent_create_virtual_dir(v22, v20, v8);
        if (!virtual_dir)
        {
          archive_string_free(&v8);
          archive_set_error(v22, 12, "Can't allocate memory");
          _isoent_free(v18);
          *v21 = 0;
          return -30;
        }

        archive_string_free(&v8);
        if (*(virtual_dir[3] + 136) > *(v20 + 728))
        {
          *(v20 + 728) = *(virtual_dir[3] + 136);
        }

        isoent_add_child_tail(v19, virtual_dir);
        node = virtual_dir;
        __s2 += path_component_0;
        if (*__s2 == 47)
        {
          ++__s2;
        }

        path_component_0 = get_path_component_0(v24, 256, __s2);
        if (path_component_0 < 0)
        {
          archive_string_free(&v8);
          archive_set_error(v22, -1, "A name buffer is too small");
          _isoent_free(v18);
          *v21 = 0;
          return -30;
        }

        v19 = node;
      }

      *(v20 + 24) = v19;
      *(v20 + 40) = 0;
      archive_string_ensure(v20 + 32, *(v19[3] + 48) + *(v19[3] + 72) + 2);
      if (*(v19[3] + 48) + *(v19[3] + 72))
      {
        if (*(v19[3] + 48))
        {
          *(v20 + 40) = 0;
          archive_string_concat((v20 + 32), (v19[3] + 40));
          archive_strappend_char((v20 + 32), 47);
        }

        archive_string_concat((v20 + 32), (v19[3] + 64));
      }

      else
      {
        **(v20 + 32) = 0;
      }

      if (isoent_add_child_tail(v19, v18))
      {
        return 0;
      }

      node = __archive_rb_tree_find_node(v19 + 8, *(*(v18 + 24) + 64));
    }
  }

  v16 = node[3];
  v15 = *(v18 + 24);
  v6 = archive_entry_filetype(*(v16 + 32));
  if (v6 == archive_entry_filetype(*(v15 + 32)))
  {
    node[3] = v15;
    *(v18 + 24) = v16;
    *(node + 232) &= ~1u;
    _isoent_free(v18);
    *v21 = node;
    return 0;
  }

  else
  {
    v5 = v22;
    v3 = archive_entry_pathname(*(v16 + 32));
    _isoent_free(v18);
    *v21 = 0;
    return -25;
  }
}

uint64_t isofile_register_hardlink(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 248);
  archive_entry_set_nlink(*(a2 + 32), 1);
  v3 = archive_entry_hardlink(*(a2 + 32));
  if (v3)
  {
    node = __archive_rb_tree_find_node((v6 + 168), v3);
    if (node)
    {
      *(a2 + 16) = 0;
      **(node + 40) = a2;
      *(node + 40) = a2 + 16;
      ++*(node + 24);
    }

    archive_entry_unset_size(*(a2 + 32));
    return 0;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x10A004051F4DB44uLL);
  if (v4)
  {
    v4[6] = 1;
    *(a2 + 16) = 0;
    *(v4 + 4) = a2;
    *(v4 + 5) = a2 + 16;
    __archive_rb_tree_insert_node((v6 + 168), v4);
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory", 0);
  return -30;
}

uint64_t zisofs_init(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 248);
  *(v5 + 472) &= ~1u;
  *(v5 + 472) &= ~2u;
  if (((*(v5 + 66416) >> 23) & 3) != 0 && (*(v5 + 66416) & 0x4000000) != 0)
  {
    if (archive_entry_size(*(a2 + 32)) >= 24 && archive_entry_size(*(a2 + 32)) < 0x100000000)
    {
      *(v5 + 472) = *(v5 + 472) & 0xFE | 1;
      *(v5 + 540) = 0;
    }

    if (*(v5 + 472))
    {
      if (archive_entry_size(*(a2 + 32)) > 2048)
      {
        if (zisofs_init_zstream(a1))
        {
          return -30;
        }

        else
        {
          *(a2 + 192) = 4;
          *(a2 + 193) = 15;
          *(a2 + 196) = archive_entry_size(*(a2 + 32));
          *(v5 + 560) = ((*(a2 + 196) + 0x7FFF) >> *(a2 + 193)) + 1;
          *(v5 + 564) = 0;
          size = 4 * *(v5 + 560);
          if (*(v5 + 552) < size)
          {
            free(*(v5 + 544));
            *(v5 + 544) = malloc_type_malloc(size, 0x846A5343uLL);
            if (!*(v5 + 544))
            {
              archive_set_error(a1, 12, "Can't allocate data");
              return -30;
            }

            *(v5 + 552) = size;
          }

          v4 = size + 16;
          if (write_null(a1, size + 16))
          {
            return -30;
          }

          else
          {
            archive_le32enc_3(*(v5 + 544), v4);
            *(v5 + 704) = *(a2 + 196);
            *(v5 + 472) = *(v5 + 472) & 0xFD | 2;
            *(v5 + 472) = *(v5 + 472) & 0xFB | 4;
            *(v5 + 576) = v4;
            *(v5 + 568) = v4;
            *(*(*(v5 + 16) + 176) + 8) = v4;
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

uint64_t isoent_add_child_tail(uint64_t a1, uint64_t a2)
{
  if (__archive_rb_tree_insert_node((a1 + 64), a2))
  {
    *(a2 + 112) = 0;
    **(a1 + 48) = a2;
    *(a1 + 48) = a2 + 112;
    ++*(a1 + 56);
    *(a2 + 32) = a1;
    *(a2 + 120) = 0;
    if ((*(a2 + 232) & 2) != 0)
    {
      **(a1 + 88) = a2;
      *(a1 + 88) = a2 + 120;
      ++*(a1 + 96);
      *(a2 + 32) = a1;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_path_component_0(uint64_t a1, uint64_t a2, char *a3)
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

void _isoent_free(uint64_t a1)
{
  free(*(a1 + 104));
  free(*(a1 + 168));
  for (i = *(a1 + 208); i; i = v1)
  {
    v1 = i[257];
    free(i);
  }

  free(a1);
}

uint64_t zisofs_init_zstream(uint64_t a1)
{
  v3 = *(a1 + 248);
  *(v3 + 584) = 0;
  *(v3 + 592) = 0;
  *(v3 + 600) = 0;
  *(v3 + 624) = 0;
  if (*(v3 + 696))
  {
    HIDWORD(v2) = deflateReset((v3 + 584));
  }

  else
  {
    HIDWORD(v2) = deflateInit_((v3 + 584), *(v3 + 712), "1.2.12", 112);
    *(v3 + 696) = 1;
  }

  LODWORD(v2) = HIDWORD(v2);
  if (HIDWORD(v2) == -6)
  {
    archive_set_error(a1, -1, "Internal error initializing compression library: invalid library version");
    return -30;
  }

  else if (HIDWORD(v2) == -4)
  {
    archive_set_error(a1, 12, "Internal error initializing compression library");
    return -30;
  }

  else if (HIDWORD(v2))
  {
    archive_set_error(a1, -1, "Internal error initializing compression library: invalid setup parameter", v2);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t write_null(uint64_t a1, unint64_t a2)
{
  v6 = *(*(a1 + 248) + 66272);
  wb_buffptr(a1);
  if (a2 > v6)
  {
    __memset_chk();
    v4 = wb_consume(a1, v6);
    if (v4)
    {
      return v4;
    }

    else
    {
      v9 = a2 - v6;
      wb_buffptr(a1);
      __memset_chk();
      v7 = *(*(a1 + 248) + 66272);
      while (v9)
      {
        v3 = v9;
        if (v9 > v7)
        {
          v3 = v7;
        }

        v5 = wb_consume(a1, v3);
        if (v5)
        {
          return v5;
        }

        v9 -= v3;
      }

      return 0;
    }
  }

  else
  {
    __memset_chk();
    return wb_consume(a1, a2);
  }
}

uint64_t archive_le32enc_3(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t wb_consume(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 248);
  if (a2 <= *(v3 + 66272) && *(v3 + 66272))
  {
    *(v3 + 66272) -= a2;
    if (*(v3 + 66272) >= 0x800uLL)
    {
      return 0;
    }

    else
    {
      return wb_write_out(a1);
    }
  }

  else
  {
    archive_set_error(a1, -1, "Internal Programming error: iso9660:wb_consume() size=%jd, wbuff_remaining=%jd", a2, *(v3 + 66272));
    return -30;
  }
}

uint64_t wb_write_out(uint64_t a1)
{
  v5 = *(a1 + 248);
  v4 = 0x10000 - *(v5 + 66272);
  v3 = v4 % 0x800;
  if (*(v5 + 66280))
  {
    v2 = write_to_temp_0(a1, (v5 + 732), v4 - v3);
  }

  else
  {
    v2 = __archive_write_output(a1, v5 + 732, v4 - v3);
  }

  *(v5 + 66288) += v4 - v3;
  if (*(v5 + 66288) > *(v5 + 66296))
  {
    *(v5 + 66296) = *(v5 + 66288);
  }

  *(v5 + 66272) = 0x10000;
  if (v3)
  {
    *(v5 + 66272) -= v3;
    __memmove_chk();
  }

  return v2;
}

uint64_t write_to_temp_0(uint64_t a1, char *a2, size_t a3)
{
  v7 = *(a1 + 248);
  while (a3)
  {
    v6 = write(*(v7 + 8), a2, a3);
    if (v6 < 0)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Can't write to temporary file");
      return -30;
    }

    a3 -= v6;
    a2 += v6;
  }

  return 0;
}

unint64_t write_iso9660_data(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v9 = a2;
  v7 = *(a1 + 248);
  if ((*(v7 + 8) & 0x80000000) == 0)
  {
    v6 = a3;
    if (*(v7 + 64) && *(*(*(v7 + 16) + 176) + 8) + a3 >= 0xFFFFF800)
    {
      v4 = 4294965248 - *(*(*(v7 + 16) + 176) + 8);
      if (*(v7 + 472))
      {
        zisofs_detect_magic(a1, a2, v4);
      }

      if ((*(v7 + 472) & 2) != 0)
      {
        if (zisofs_write_to_temp(a1, v9, v4))
        {
          return -30;
        }
      }

      else
      {
        if (wb_write_to_temp(a1, v9, v4))
        {
          return -30;
        }

        *(*(*(v7 + 16) + 176) + 8) += v4;
      }

      if (wb_write_padding_to_temp(a1, *(*(*(v7 + 16) + 176) + 8)))
      {
        return -30;
      }

      *(*(*(v7 + 16) + 176) + 16) = (*(*(*(v7 + 16) + 176) + 8) + 2047) >> 11;
      v6 = a3 - v4;
      v9 += v4;
      v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040A5B76CDFuLL);
      if (!v5)
      {
        archive_set_error(a1, 12, "Can't allocate content data");
        return -30;
      }

      *v5 = *(*(a1 + 248) + 66288) + 0x10000 - *(*(a1 + 248) + 66272);
      *(*(*(v7 + 16) + 176) + 24) = v5;
      *(*(v7 + 16) + 176) = v5;
      *(v7 + 576) = 0;
    }

    if (*(v7 + 472))
    {
      zisofs_detect_magic(a1, v9, v6);
    }

    if ((*(v7 + 472) & 2) != 0)
    {
      if (zisofs_write_to_temp(a1, v9, v6))
      {
        return -30;
      }
    }

    else
    {
      if (wb_write_to_temp(a1, v9, v6))
      {
        return -30;
      }

      *(*(*(v7 + 16) + 176) + 8) += v6;
    }

    return a3;
  }

  archive_set_error(a1, -1, "Couldn't create temporary file");
  return -30;
}

uint64_t zisofs_detect_magic(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v17 = *(a1 + 248);
  v16 = *(v17 + 16);
  v6 = archive_entry_size(*(v16 + 32));
  if (v6 >= 64)
  {
    v7 = 64;
  }

  else
  {
    v7 = v6;
  }

  if (*(v17 + 540) || a3 < v7)
  {
    if (*(v17 + 540) < v7)
    {
      v5 = 64 - *(v17 + 540);
      if (v5 > a3)
      {
        LODWORD(v5) = a3;
      }

      result = __memcpy_chk();
      *(v17 + 540) += v5;
      if (*(v17 + 540) < v7)
      {
        return result;
      }
    }

    v14 = (v17 + 473);
  }

  else
  {
    v14 = a2;
  }

  *(v17 + 472) &= ~1u;
  result = memcmp(v14, &zisofs_magic, 8uLL);
  if (!result)
  {
    result = archive_le32dec_3(v14 + 8);
    v13 = result;
    v12 = v14[12];
    v11 = v14[13];
    if (result >= 0x18 && v12 == 4 && v11 <= 0x1Eu && v11 >= 7u)
    {
      v10 = (result + (1 << v11) - 1) >> v11;
      v9 = 4 * (v10 + 1) + 16;
      if (v6 >= v9)
      {
        v15 = v14 + 16;
        while (1)
        {
          v4 = 0;
          if (v10)
          {
            v4 = v15 + 8 <= &v14[v7];
          }

          if (!v4)
          {
            break;
          }

          result = archive_le32dec_3(v15);
          v8 = result;
          if (result != v9)
          {
            return result;
          }

          v15 += 4;
          result = archive_le32dec_3(v15);
          if (result < v8 || result > v6)
          {
            return result;
          }

          v9 += result - v8;
          --v10;
        }

        *(v16 + 196) = v13;
        *(v16 + 192) = v12;
        *(v16 + 193) = v11;
        *(v17 + 472) &= ~2u;
      }
    }
  }

  return result;
}

uint64_t zisofs_write_to_temp(uint64_t a1, Bytef *a2, unint64_t a3)
{
  v16 = *(a1 + 248);
  v15 = *(v16 + 16);
  strm = (v16 + 584);
  *(v16 + 608) = wb_buffptr(a1);
  *(v16 + 616) = *(*(a1 + 248) + 66272);
  v14 = a2;
  while (1)
  {
    v12 = 0x8000 - *(v16 + 600);
    if (a3 >= v12)
    {
      flush = 4;
    }

    else
    {
      v12 = a3;
      flush = 0;
    }

    *(v16 + 704) -= v12;
    if (*(v16 + 704) <= 0)
    {
      flush = 4;
    }

    strm->next_in = v14;
    *(v16 + 592) = v12;
    if ((*(v16 + 472) & 4) != 0)
    {
      v6 = v14;
      while (v6 < &v14[v12])
      {
        v3 = v6++;
        if (*v3)
        {
          *(v16 + 472) &= ~4u;
          break;
        }
      }
    }

    v14 += v12;
    a3 -= v12;
    if (flush == 4 && (*(v16 + 472) & 4) != 0 && v12 + *(v16 + 600) == 0x8000)
    {
      break;
    }

LABEL_21:
    while (*(v16 + 592))
    {
      v10 = *(v16 + 624);
      v8 = deflate(strm, flush);
      if (v8 > 1)
      {
        archive_set_error(a1, -1, "Compression failed: deflate() call returned status %d", v8);
        return -30;
      }

      v11 = *(v16 + 624) - v10;
      if (wb_consume(a1, v11))
      {
        return -30;
      }

      *(v16 + 568) += v11;
      *(*(*(v16 + 16) + 176) + 8) += v11;
      *(v16 + 608) = wb_buffptr(a1);
      *(v16 + 616) = *(*(a1 + 248) + 66272);
    }

    if (flush == 4)
    {
      archive_le32enc_3(*(v16 + 544) + 4 * ++*(v16 + 564), *(v16 + 568));
      if (zisofs_init_zstream(a1))
      {
        return -30;
      }

      *(v16 + 472) = *(v16 + 472) & 0xFB | 4;
      *(v16 + 576) = *(*(v15 + 176) + 8);
    }

    if (!a3)
    {
      return 0;
    }
  }

  if (*(v16 + 576) == *(*(v15 + 176) + 8))
  {
LABEL_20:
    *(v16 + 592) = 0;
    goto LABEL_21;
  }

  v7 = wb_set_offset(a1, **(v15 + 176) + *(v16 + 576));
  if (!v7)
  {
    v5 = *(*(v15 + 176) + 8) - *(v16 + 576);
    *(*(v15 + 176) + 8) -= v5;
    *(v16 + 568) -= v5;
    goto LABEL_20;
  }

  return v7;
}

uint64_t wb_write_to_temp(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(a1 + 248) + 66272) == 0x10000 && a3 > 0x4000)
  {
    v5 = a3 % 0x800;
    *(*(a1 + 248) + 66288) += a3 - a3 % 0x800;
    if (write_to_temp_0(a1, a2, a3 - a3 % 0x800))
    {
      return -30;
    }

    else
    {
      if (v5)
      {
        v6 += a3 - v5;
        goto LABEL_8;
      }

      return 0;
    }
  }

  else
  {
LABEL_8:
    while (v5)
    {
      v4 = v5;
      if (v5 > *(*(a1 + 248) + 66272))
      {
        v4 = *(*(a1 + 248) + 66272);
      }

      wb_buffptr(a1);
      __memcpy_chk();
      if (wb_consume(a1, v4))
      {
        return -30;
      }

      v5 -= v4;
      v6 += v4;
    }

    return 0;
  }
}

uint64_t wb_write_padding_to_temp(uint64_t a1, uint64_t a2)
{
  if (a2 % 2048)
  {
    return write_null(a1, 2048 - a2 % 2048);
  }

  else
  {
    return 0;
  }
}

uint64_t wb_set_offset(uint64_t a1, off_t a2)
{
  v5 = *(a1 + 248);
  if (*(v5 + 66280) == 1)
  {
    v4 = 0x10000 - *(v5 + 66272);
    if (*(v5 + 66288) + v4 > *(v5 + 66304))
    {
      *(v5 + 66304) = *(v5 + 66288) + v4;
    }

    if (*(v5 + 66288) < *(v5 + 66296))
    {
      if (v4 > 0 && write_to_temp_0(a1, (v5 + 732), v4))
      {
        return -30;
      }

      *(v5 + 66288) = *(v5 + 66296);
      lseek(*(v5 + 8), *(v5 + 66288), 0);
      *(v5 + 66272) = 0x10000;
      v4 = 0;
    }

    if (a2 >= *(v5 + 66288))
    {
      if (a2 > *(v5 + 66304))
      {
        v3 = a2 - *(v5 + 66304);
        for (*(v5 + 66272) = 0x10000 - (*(v5 + 66304) - *(v5 + 66288)); v3 >= *(v5 + 66272); v3 -= *(v5 + 66272))
        {
          if (write_null(a1, *(v5 + 66272)))
          {
            return -30;
          }
        }

        if (v3 > 0 && write_null(a1, v3))
        {
          return -30;
        }
      }

      else
      {
        *(v5 + 66272) = 0x10000 - (a2 - *(v5 + 66288));
      }
    }

    else
    {
      if (v4 > 0 && wb_write_out(a1))
      {
        return -30;
      }

      lseek(*(v5 + 8), a2, 0);
      *(v5 + 66288) = a2;
      *(v5 + 66272) = 0x10000;
    }

    return 0;
  }

  archive_set_error(a1, -1, "Internal Programming error: iso9660:wb_set_offset()", 0, 0);
  return -30;
}

uint64_t zisofs_finish_entry(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 248);
  v3 = *(v4 + 16);
  archive_entry_set_size(*(v3 + 32), *(v4 + 568));
  v2 = *(*(a1 + 248) + 66288) + 0x10000 - *(*(a1 + 248) + 66272);
  v7 = 0x7D6DBC99653E437;
  set_num_731(v8, *(v3 + 196));
  v8[4] = *(v3 + 192);
  v8[5] = *(v3 + 193);
  v8[7] = 0;
  v8[6] = 0;
  wb_set_offset(a1, *(v3 + 144));
  if (wb_write_to_temp(a1, &v7, 0x10uLL))
  {
    return -30;
  }

  else if (wb_write_to_temp(a1, *(v4 + 544), 4 * *(v4 + 560)))
  {
    return -30;
  }

  else
  {
    wb_set_offset(a1, v2);
    return 0;
  }
}

uint64_t isofile_add_data_file(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = 0;
  **(result + 160) = a2;
  *(result + 160) = a2 + 8;
  return result;
}

uint64_t isoent_find_out_boot_file(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 248);
  *(v3 + 66368) = isoent_find_entry(a2, *(v3 + 66344));
  if (*(v3 + 66368))
  {
    *(*(*(v3 + 66368) + 24) + 188) = 2;
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t zisofs_rewind_boot_file(uint64_t a1)
{
  v18 = a1;
  v17 = *(a1 + 248);
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  v6 = 0;
  v16 = *(*(v17 + 66368) + 24);
  if (*(v16 + 192))
  {
    memset(__b, 0, sizeof(__b));
    __b[1] = *(v16 + 196);
    LODWORD(__b[0]) = *(v16 + 193);
    v7 = *(v17 + 8);
    v8 = *(*(v18 + 31) + 66288) + 0x10000 - *(*(v18 + 31) + 66272);
    v10 = *(v16 + 144);
    v13 = *(v16 + 152);
    if (v13 > 0x8000)
    {
      v12 = 0x8000;
    }

    else
    {
      v12 = v13;
    }

    v15 = malloc_type_malloc(v12, 0x5193EA30uLL);
    if (v15)
    {
      while (v13)
      {
        v9 = lseek(v7, 0, 1);
        lseek(v7, v10, 0);
        v5 = v12;
        if (v12 > v13)
        {
          v5 = v13;
        }

        v4 = read(*(v17 + 8), v15, v5);
        if (v4 <= 0)
        {
          v3 = v18;
          v1 = __error();
          archive_set_error(v3, *v1, "Can't read temporary file(%jd)", v4);
          v6 = -30;
          break;
        }

        v13 -= v4;
        v10 += v4;
        lseek(v7, v9, 0);
        v14 = zisofs_extract(v18, __b, v15, v4);
        if ((v14 & 0x8000000000000000) != 0)
        {
          v6 = v14;
          break;
        }
      }

      if (!v6)
      {
        *(v16 + 144) = v8;
        *(v16 + 152) = *(v16 + 196);
        archive_entry_set_size(*(v16 + 32), *(v16 + 152));
        *(v16 + 192) = 0;
        *(v16 + 193) = 0;
        *(v16 + 196) = 0;
        v14 = wb_write_padding_to_temp(v18, *(v16 + 152));
        if ((v14 & 0x8000000000000000) != 0)
        {
          v6 = -30;
        }
      }

      free(v15);
      free(__b[4]);
      if (LODWORD(__b[23]) && inflateEnd(&__b[9]))
      {
        archive_set_error(v18, -1, "Failed to clean up compressor");
        return -30;
      }

      return v6;
    }

    else
    {
      archive_set_error(v18, 12, "Can't allocate memory");
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t isoent_create_boot_catalog(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = *(a1 + 248);
  v10 = 0;
  v11 = isofile_new(a1, 0);
  if (!v11)
  {
    goto LABEL_2;
  }

  archive_entry_set_pathname(v11[4], *(v12 + 66312));
  archive_entry_set_size(v11[4], 2048);
  archive_entry_set_mtime(v11[4], *v12, 0);
  archive_entry_set_atime(v11[4], *v12, 0);
  archive_entry_set_ctime(v11[4], *v12, 0);
  v6 = v11[4];
  v2 = getuid();
  archive_entry_set_uid(v6, v2);
  v7 = v11[4];
  v3 = getgid();
  archive_entry_set_gid(v7, v3);
  archive_entry_set_mode(v11[4], 33060);
  archive_entry_set_nlink(v11[4], 1);
  if (isofile_gen_utility_names(v14, v11) < -20)
  {
    isofile_free(v11);
    return -30;
  }

  *(v11 + 47) = 1;
  v11[19] = 2048;
  isofile_add_entry(v12, v11);
  v10 = isoent_new(v11);
  if (v10)
  {
    *(v10 + 232) = v10[29] & 0xFE | 1;
    if (isoent_tree(v14, &v10))
    {
      return -30;
    }

    else
    {
      *(v12 + 66336) = v10;
      v5 = (*(v12 + 66416) >> 9) & 3;
      if (v5)
      {
        if (v5 == 1)
        {
          *(v12 + 66408) = 0;
        }

        else if (v5 == 2)
        {
          v9 = *(*(*(v12 + 66368) + 24) + 32);
          if (archive_entry_size(v9) > 1228800)
          {
            if (archive_entry_size(v9) > 1474560)
            {
              if (archive_entry_size(v9) > 2949120)
              {
                return -30;
              }

              *(v12 + 66408) = 3;
            }

            else
            {
              *(v12 + 66408) = 2;
            }
          }

          else
          {
            *(v12 + 66408) = 1;
          }
        }

        else
        {
          *(v12 + 66408) = 4;
        }
      }

      else
      {
        v8 = *(*(*(v12 + 66368) + 24) + 32);
        if (archive_entry_size(v8) == 1228800)
        {
          *(v12 + 66408) = 1;
        }

        else if (archive_entry_size(v8) == 1474560)
        {
          *(v12 + 66408) = 2;
        }

        else if (archive_entry_size(v8) == 2949120)
        {
          *(v12 + 66408) = 3;
        }

        else
        {
          *(v12 + 66408) = 0;
        }
      }

      *(v12 + 66409) = 0;
      if ((*(v12 + 66416) & 0x400000) != 0)
      {
        *(v12 + 66392) = 0;
        archive_string_concat((v12 + 66384), (v12 + 320));
      }

      return 0;
    }
  }

  else
  {
LABEL_2:
    archive_set_error(v14, 12, "Can't allocate memory");
    return -30;
  }
}

uint64_t isoent_clone_tree(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  do
  {
    v4 = isoent_clone(a3);
    if (!v4)
    {
      archive_set_error(a1, 12, "Can't allocate memory");
      return -30;
    }

    if (v5)
    {
      isoent_add_child_tail(v5, v4);
    }

    else
    {
      v5 = v4;
      *a2 = v4;
      v4[4] = v4;
    }

    if ((*(a3 + 232) & 2) != 0 && *(a3 + 40))
    {
      a3 = *(a3 + 40);
      v5 = v4;
    }

    else
    {
      while (a3 != *(a3 + 32))
      {
        if (*(a3 + 112))
        {
          a3 = *(a3 + 112);
          break;
        }

        a3 = *(a3 + 32);
        v5 = *(v5 + 32);
      }
    }
  }

  while (a3 != *(a3 + 32));
  return 0;
}

uint64_t isoent_make_path_table(uint64_t a1)
{
  v6 = a1;
  v5 = *(a1 + 248);
  i = 0;
  path_table_2 = 0;
  v2 = 0;
  if (*(v5 + 728) < 8 || (*(v5 + 66416) & 0x80000) != 0 && ((*(v5 + 66416) >> 14) & 7) != 4)
  {
    path_table_2 = isoent_alloc_path_table(v6, v5 + 184, 8);
  }

  else
  {
    path_table_2 = isoent_alloc_path_table(v6, v5 + 184, *(v5 + 728) + 1);
  }

  if ((path_table_2 & 0x80000000) != 0)
  {
    return path_table_2;
  }

  else if (((*(v5 + 66416) >> 17) & 3) != 0 && (path_table_2 = isoent_alloc_path_table(v6, v5 + 232, *(v5 + 728) + 1), (path_table_2 & 0x80000000) != 0))
  {
    return path_table_2;
  }

  else
  {
    isoent_collect_dirs(v5 + 184, 0, 0);
    if (((*(v5 + 66416) >> 17) & 3) != 0)
    {
      isoent_collect_dirs(v5 + 232, 0, 0);
    }

    if (((*(v5 + 66416) >> 23) & 3) != 0 && (path_table_2 = isoent_rr_move(v6), (path_table_2 & 0x80000000) != 0))
    {
      return path_table_2;
    }

    else
    {
      isofile_connect_hardlink_files(v5);
      path_table_2 = isoent_traverse_tree(v6, (v5 + 184));
      if ((path_table_2 & 0x80000000) != 0)
      {
        return path_table_2;
      }

      else if (((*(v5 + 66416) >> 17) & 3) != 0 && (path_table_2 = isoent_traverse_tree(v6, (v5 + 232)), (path_table_2 & 0x80000000) != 0))
      {
        return path_table_2;
      }

      else
      {
        v2 = 1;
        for (i = 0; i < *(v5 + 208); ++i)
        {
          path_table_2 = isoent_make_path_table_2(v6, v5 + 184, i, &v2);
          if ((path_table_2 & 0x80000000) != 0)
          {
            return path_table_2;
          }
        }

        if (((*(v5 + 66416) >> 17) & 3) != 0)
        {
          v2 = 1;
          for (i = 0; i < *(v5 + 256); ++i)
          {
            path_table_2 = isoent_make_path_table_2(v6, v5 + 232, i, &v2);
            if ((path_table_2 & 0x80000000) != 0)
            {
              return path_table_2;
            }
          }
        }

        if ((*(v5 + 66416) & 0x100000) != 0 && v2 >= 0x10000)
        {
          archive_set_error(v6, -1, "Too many directories(%d) over 65535.", v2);
          return -30;
        }

        else
        {
          calculate_path_table_size(v5 + 184);
          if (((*(v5 + 66416) >> 17) & 3) != 0)
          {
            calculate_path_table_size(v5 + 232);
          }

          return 0;
        }
      }
    }
  }
}

uint64_t isoent_setup_directory_location(uint64_t a1, int a2, uint64_t *a3)
{
  *(a3 + 11) = 0;
  v4 = 0;
  v5 = *a3;
  do
  {
    *(v5 + 160) = calculate_directory_descriptors(a1, a3, v5, v4);
    *(a3 + 11) += *(v5 + 160);
    *(v5 + 156) = a2;
    v8 = a2 + *(v5 + 160);
    result = extra_setup_location(v5, v8);
    *(a3 + 11) += result;
    a2 = v8 + result;
    if (*(v5 + 80) && v4 + 1 < *(a3 + 6))
    {
      v5 = *(v5 + 80);
      ++v4;
    }

    else
    {
      while (v5 != *(v5 + 32))
      {
        if (*(v5 + 120))
        {
          v5 = *(v5 + 120);
          break;
        }

        v5 = *(v5 + 32);
        --v4;
      }
    }
  }

  while (v5 != *(v5 + 32));
  return result;
}

uint64_t isoent_setup_file_location(uint64_t a1, int a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  i = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  *(a1 + 288) = 0;
  v11 = *(v13 + 66336);
  if (v11)
  {
    *(*(v11 + 24) + 164) = v12;
    v7 = (archive_entry_size(*(*(v11 + 24) + 32)) + 2047) >> 11;
    v12 += v7;
    *(v13 + 288) += v7;
  }

  v11 = *(v13 + 66368);
  if (v11)
  {
    *(*(v11 + 24) + 164) = v12;
    v8 = fd_boot_image_size(*(v13 + 66408));
    if (!v8)
    {
      v8 = archive_entry_size(*(*(v11 + 24) + 32));
    }

    v7 = (v8 + 2047) >> 11;
    v12 += v7;
    *(v13 + 288) += v7;
    *(*(v11 + 24) + 160) = v7;
  }

  v6 = 0;
  v4 = -16;
  if (((*(v13 + 66416) >> 23) & 3) != 0 || ((*(v13 + 66416) >> 17) & 3) == 0)
  {
    v5 = 0;
    v10 = *(v13 + 184);
  }

  else
  {
    v5 = 1;
    v10 = *(v13 + 232);
  }

  do
  {
    result = _isoent_file_location(v13, v10, &v4);
    if (v10[10] && (v5 || ((*(v13 + 66416) >> 23) & 3) == 0 && v6 + 2 < *(v13 + 208) || ((*(v13 + 66416) >> 23) & 3) != 0 && v6 + 1 < *(v13 + 208)))
    {
      v10 = v10[10];
      ++v6;
    }

    else
    {
      while (v10 != v10[4])
      {
        if (v10[15])
        {
          v10 = v10[15];
          break;
        }

        v10 = v10[4];
        --v6;
      }
    }
  }

  while (v10 != v10[4]);
  v3 = 0;
  for (i = *(v13 + 152); i; i = *(i + 8))
  {
    if (*(i + 184))
    {
      *(i + 176) = i + 144;
      do
      {
        *(*(i + 176) + 20) = v12;
        v12 += *(*(i + 176) + 16);
        v3 += *(*(i + 176) + 16);
        *(i + 176) = *(*(i + 176) + 24);
      }

      while (*(i + 176));
    }
  }

  *(v13 + 288) += v3;
  return result;
}

uint64_t setup_boot_information()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v17 = *MEMORY[0x1E69E9840];
  v12 = v0;
  v11 = *(v0 + 248);
  v10 = *(v11 + 66368);
  lseek(*(v11 + 8), *(*(v10 + 24) + 144) + 64, 0);
  v8 = archive_entry_size(*(*(v10 + 24) + 32)) - 64;
  if (v8 > 0)
  {
    v7 = 0;
    while (v8 > 0)
    {
      if (v8 <= 4096)
      {
        v2 = read(*(v11 + 8), v14, v8);
      }

      else
      {
        v2 = read(*(v11 + 8), v14, 0x1000uLL);
      }

      v5 = v2;
      if (v2 <= 0)
      {
        v3 = __error();
        archive_set_error(v12, *v3, "Can't read temporary file(%jd)", v5);
        return -30;
      }

      for (i = 0; i < v5; i += 4)
      {
        v7 += archive_le32dec_3(&v14[i]);
      }

      v8 -= v5;
    }

    set_num_731(v14, 0x10u);
    set_num_731(&v15, *(*(v10 + 24) + 164));
    v9 = fd_boot_image_size(*(v11 + 66408));
    if (!v9)
    {
      LODWORD(v9) = archive_entry_size(*(*(v10 + 24) + 32));
    }

    set_num_731(v16, v9);
    set_num_731(&v16[4], v7);
    memset(&v16[8], 0, 0x28uLL);
    lseek(*(v11 + 8), *(*(v10 + 24) + 144) + 8, 0);
    return write_to_temp_0(v12, v14, 0x38uLL);
  }

  else
  {
    v1 = __error();
    archive_set_error(v12, *v1, "Boot file(%jd) is too small", v8 + 64);
    return -30;
  }
}

uint64_t write_VD(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 248);
  v3 = *(a2 + 8);
  switch(v3)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v16 = 2;
      v13 = 1;
      v14 = 1;
      v15 = 2;
      break;
    case 2:
      v16 = 2;
      v13 = 2;
      v14 = 2;
      v15 = 1;
      break;
    default:
LABEL_7:
      v16 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 0;
      break;
  }

  v17 = (wb_buffptr(a1) - 1);
  set_VD_bp(v17, v16, v14);
  set_unused_field_bp(v17, 8, 8);
  get_system_identitier(v22, 256);
  v4 = set_str_a_characters_bp(a1, v17, 9, 40, v22, v15);
  if (v4)
  {
    return v4;
  }

  else
  {
    v5 = set_str_d_characters_bp(a1, v17, 41, 72, *(v18 + 296), v15);
    if (v5)
    {
      return v5;
    }

    else
    {
      set_unused_field_bp(v17, 73, 80);
      set_num_733((v17 + 81), *(v18 + 280));
      if (*(a2 + 8) == 1)
      {
        v17[89] = 37;
        v17[90] = 47;
        v17[91] = 69;
        __memset_chk();
      }

      else
      {
        set_unused_field_bp(v17, 89, 120);
      }

      set_num_723((v17 + 121), 1);
      set_num_723((v17 + 125), *(v18 + 284));
      set_num_723((v17 + 129), 2048);
      set_num_733((v17 + 133), *(a2 + 32));
      set_num_731((v17 + 141), *(a2 + 36));
      set_num_731((v17 + 145), 0);
      set_num_732(v17 + 149, *(a2 + 40));
      set_num_732(v17 + 153, 0);
      set_directory_record(v17 + 157, 0x22uLL, *a2, v18, 0, *(a2 + 8));
      v6 = set_str_d_characters_bp(a1, v17, 191, 318, &unk_1BF3442C6, v15);
      if (v6)
      {
        return v6;
      }

      else
      {
        v7 = set_file_identifier(v17, 319, 446, v15, a1, a2, (v18 + 320), "Publisher File", 1, 0);
        if (v7)
        {
          return v7;
        }

        else
        {
          v8 = set_file_identifier(v17, 447, 574, v15, a1, a2, (v18 + 344), "Data Preparer File", 1, 0);
          if (v8)
          {
            return v8;
          }

          else
          {
            v9 = set_file_identifier(v17, 575, 702, v15, a1, a2, (v18 + 368), "Application File", 1, 0);
            if (v9)
            {
              return v9;
            }

            else
            {
              v10 = set_file_identifier(v17, 703, 739, v15, a1, a2, (v18 + 392), "Copyright File", 0, 1);
              if (v10)
              {
                return v10;
              }

              else
              {
                v11 = set_file_identifier(v17, 740, 776, v15, a1, a2, (v18 + 416), "Abstract File", 0, 1);
                if (v11)
                {
                  return v11;
                }

                else
                {
                  v12 = set_file_identifier(v17, 777, 813, v15, a1, a2, (v18 + 440), "Bibliongraphic File", 0, 1);
                  if (v12)
                  {
                    return v12;
                  }

                  else
                  {
                    set_date_time((v17 + 814), *v18);
                    set_date_time((v17 + 831), *v18);
                    set_date_time_null((v17 + 848));
                    set_date_time((v17 + 865), *v18);
                    v17[882] = v13;
                    v17[883] = 0;
                    __memset_chk();
                    set_unused_field_bp(v17, 1396, 2048);
                    return wb_consume(a1, 0x800uLL);
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

uint64_t write_VD_boot_record(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = wb_buffptr(a1) - 1;
  set_VD_bp(v2, 0, 1);
  __memcpy_chk();
  set_unused_field_bp(v2, 31, 39);
  set_unused_field_bp(v2, 40, 71);
  set_num_731(v2 + 72, *(*(*(v3 + 66336) + 24) + 164));
  set_unused_field_bp(v2, 76, 2048);
  return wb_consume(a1, 0x800uLL);
}

uint64_t write_VD_terminator(uint64_t a1)
{
  v2 = wb_buffptr(a1) - 1;
  set_VD_bp(v2, 255, 1);
  set_unused_field_bp(v2, 8, 2048);
  return wb_consume(a1, 0x800uLL);
}

uint64_t write_information_block(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v13 = *(a1 + 248);
  if (*(*(a1 + 248) + 66272) < 0x800uLL && (v10 = wb_write_out(v14)) != 0)
  {
    return v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (archive_string_ensure(&v7, 0x800uLL))
    {
      __memset_chk();
      v11 = 0;
      ctime_r(v13, v16);
      v1 = archive_version_string();
      archive_string_sprintf(&v7, "INFO %s%s", v16, v1);
      if (v13[8302])
      {
        set_option_info(&v7, &v11, "abstract-file", 1, v2, v3, v4, v5, v13[52]);
      }

      if ((v13[8302] & 2) != 0)
      {
        set_option_info(&v7, &v11, "application-id", 1, v2, v3, v4, v5, v13[46]);
      }

      if (((*(v13 + 16604) >> 2) & 1) != 1)
      {
        set_option_info(&v7, &v11, "allow-vernum", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 2) & 1));
      }

      if ((v13[8302] & 8) != 0)
      {
        set_option_info(&v7, &v11, "biblio-file", 1, v2, v3, v4, v5, v13[55]);
      }

      if ((v13[8302] & 0x10) != 0)
      {
        set_option_info(&v7, &v11, "boot", 1, v2, v3, v4, v5, v13[8293]);
      }

      if ((v13[8302] & 0x20) != 0)
      {
        set_option_info(&v7, &v11, "boot-catalog", 1, v2, v3, v4, v5, v13[8289]);
      }

      if ((v13[8302] & 0x40) != 0)
      {
        set_option_info(&v7, &v11, "boot-info-table", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 6) & 1));
      }

      if ((v13[8302] & 0x80) != 0)
      {
        set_option_info(&v7, &v11, "boot-load-seg", 3, v2, v3, v4, v5, *(v13 + 33205));
      }

      if ((v13[8302] & 0x100) != 0)
      {
        set_option_info(&v7, &v11, "boot-load-size", 2, v2, v3, v4, v5, *(v13 + 33206));
      }

      if (((*(v13 + 16604) >> 9) & 3) != 0)
      {
        v12 = "no-emulation";
        if (((*(v13 + 16604) >> 9) & 3) == 2)
        {
          v12 = "fd";
        }

        if (((*(v13 + 16604) >> 9) & 3) == 3)
        {
          v12 = "hard-disk";
        }

        set_option_info(&v7, &v11, "boot-type", 1, v2, v3, v4, v5, v12);
      }

      if ((v13[8302] & 0x800) != 0)
      {
        set_option_info(&v7, &v11, "compression-level", 2, v2, v3, v4, v5, *(v13 + 178));
      }

      if ((v13[8302] & 0x1000) != 0)
      {
        set_option_info(&v7, &v11, "copyright-file", 1, v2, v3, v4, v5, v13[49]);
      }

      if (((*(v13 + 16604) >> 14) & 7) != 1)
      {
        set_option_info(&v7, &v11, "iso-level", 2, v2, v3, v4, v5, ((*(v13 + 16604) >> 14) & 7));
      }

      if (((*(v13 + 16604) >> 17) & 3) != 1)
      {
        if (((*(v13 + 16604) >> 17) & 3) == 2)
        {
          set_option_info(&v7, &v11, "joliet", 1, v2, v3, v4, v5, "long");
        }

        else
        {
          set_option_info(&v7, &v11, "joliet", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 17) & 3));
        }
      }

      if (((*(v13 + 16604) >> 19) & 1) != 1)
      {
        set_option_info(&v7, &v11, "limit-depth", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 19) & 1));
      }

      if (((*(v13 + 16604) >> 20) & 1) != 1)
      {
        set_option_info(&v7, &v11, "limit-dirs", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 20) & 1));
      }

      if (((*(v13 + 16604) >> 21) & 1) != 1)
      {
        set_option_info(&v7, &v11, "pad", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 21) & 1));
      }

      if ((v13[8302] & 0x400000) != 0)
      {
        set_option_info(&v7, &v11, "publisher", 1, v2, v3, v4, v5, v13[40]);
      }

      if (((*(v13 + 16604) >> 23) & 3) != 2)
      {
        if (((*(v13 + 16604) >> 23) & 3) != 0)
        {
          if (((*(v13 + 16604) >> 23) & 3) == 1)
          {
            set_option_info(&v7, &v11, "rockridge", 1, v2, v3, v4, v5, "strict");
          }

          else if (((*(v13 + 16604) >> 23) & 3) == 2)
          {
            set_option_info(&v7, &v11, "rockridge", 1, v2, v3, v4, v5, "useful");
          }
        }

        else
        {
          set_option_info(&v7, &v11, "rockridge", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 23) & 3));
        }
      }

      if ((v13[8302] & 0x2000000) != 0)
      {
        set_option_info(&v7, &v11, "volume-id", 1, v2, v3, v4, v5, v13[37]);
      }

      if ((v13[8302] & 0x4000000) != 0)
      {
        set_option_info(&v7, &v11, "zisofs", 0, v2, v3, v4, v5, ((*(v13 + 16604) >> 26) & 1));
      }

      wb_buffptr(v14);
      __memcpy_chk();
      archive_string_free(&v7);
      return wb_consume(v14, 0x800uLL);
    }

    else
    {
      archive_set_error(v14, 12, "Can't allocate memory");
      return -30;
    }
  }
}

uint64_t write_path_table(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 0;
  v4 = 0;
  for (i = 0; i < *(a3 + 24); ++i)
  {
    v6 = _write_path_table(a1, a2, i, a3);
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }

    v4 += v6;
  }

  v5 = v4 % 0x1000;
  if (v5)
  {
    return write_null(a1, 4096 - v5);
  }

  return v6;
}

uint64_t write_directory_descriptors(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = *a2;
  do
  {
    v4 = _write_directory_descriptors(a1, a2, v7, v6);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    if (*(a2 + 8) != 1)
    {
      for (i = v7[26]; i; i = *(i + 2056))
      {
        wb_buffptr(a1);
        __memcpy_chk();
        __memset_chk();
        v5 = wb_consume(a1, 0x800uLL);
        if ((v5 & 0x80000000) != 0)
        {
          return v5;
        }
      }
    }

    if (v7[10] && v6 + 1 < *(a2 + 24))
    {
      v7 = v7[10];
      ++v6;
    }

    else
    {
      while (v7 != v7[4])
      {
        if (v7[15])
        {
          v7 = v7[15];
          break;
        }

        v7 = v7[4];
        --v6;
      }
    }
  }

  while (v7 != v7[4]);
  return 0;
}

uint64_t write_rr_ER(uint64_t a1)
{
  v2 = wb_buffptr(a1);
  __memset_chk();
  *v2 = 69;
  v2[1] = 82;
  v2[3] = 1;
  v2[2] = -19;
  v2[4] = 10;
  v2[5] = 84;
  v2[6] = -121;
  v2[7] = 1;
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  return wb_consume(a1, 0x800uLL);
}

uint64_t write_file_descriptors(uint64_t a1)
{
  v10 = *(a1 + 248);
  v7 = 0;
  v6 = 0;
  if (v10[8292] && (boot_catalog = make_boot_catalog(a1), (boot_catalog & 0x80000000) != 0))
  {
    return boot_catalog;
  }

  else
  {
    if (v10[8296])
    {
      v8 = *(v10[8296] + 24);
      v7 = *(v8 + 160);
      v6 = *(v8 + 144);
      if (v6)
      {
        v3 = write_file_contents(a1, v6, v7 << 11);
        if ((v3 & 0x80000000) != 0)
        {
          return v3;
        }

        v7 = 0;
        v6 = 0;
      }
    }

    for (i = v10[19]; i; i = *(i + 8))
    {
      if (*(i + 184))
      {
        if (v6 + (v7 << 11) < *(i + 144))
        {
          if (v7 > 0)
          {
            v4 = write_file_contents(a1, v6, v7 << 11);
            if ((v4 & 0x80000000) != 0)
            {
              return v4;
            }
          }

          v7 = 0;
          v6 = *(i + 144);
        }

        *(i + 176) = i + 144;
        do
        {
          v7 += *(*(i + 176) + 16);
          *(i + 176) = *(*(i + 176) + 24);
        }

        while (*(i + 176));
      }
    }

    if (v7 > 0 && (v5 = write_file_contents(a1, v6, v7 << 11), (v5 & 0x80000000) != 0))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t isoent_find_entry(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  child = 0;
  do
  {
    path_component_0 = get_path_component_0(v7, 256, a2);
    if (!path_component_0)
    {
      break;
    }

    a2 += path_component_0;
    if (*a2 == 47)
    {
      ++a2;
    }

    child = isoent_find_child(a1, v7);
    if (!child)
    {
      break;
    }

    if (!*a2)
    {
      break;
    }

    a1 = child;
    child = 0;
  }

  while ((*(a1 + 232) & 2) != 0);
  return child;
}

unint64_t zisofs_extract(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v17 = a3;
  if (*(a2 + 24))
  {
    v15 = a4;
    goto LABEL_8;
  }

  init = zisofs_extract_init(a1, a2, a3, a4);
  if ((init & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      *(a2 + 28) += a4;
      return a4;
    }

    v15 = init;
    v17 += a4 - init;
LABEL_8:
    if (!*(a2 + 64))
    {
      if ((*(a2 + 56) + 4) >= *(a2 + 40))
      {
        goto LABEL_15;
      }

      v4 = archive_le32dec_3((*(a2 + 32) + *(a2 + 56)));
      v10 = v4;
      if (v4 != *(a2 + 28) + a4 - v15)
      {
        archive_set_error(a1, 79, "Illegal zisofs block pointers(cannot seek)");
        return -30;
      }

      v9 = archive_le32dec_3((*(a2 + 32) + *(a2 + 56) + 4));
      if (v9 < v10)
      {
LABEL_15:
        archive_set_error(a1, 79, "Illegal zisofs block pointers");
        return -30;
      }

      *(a2 + 64) = v9 - v10;
      *(a2 + 56) += 4;
      if (*(a2 + 184))
      {
        v12 = inflateReset((a2 + 72));
      }

      else
      {
        v12 = inflateInit_((a2 + 72), "1.2.12", 112);
      }

      if (v12)
      {
        archive_set_error(a1, -1, "Can't initialize zisofs decompression.");
        return -30;
      }

      *(a2 + 184) = 1;
      *(a2 + 88) = 0;
      *(a2 + 112) = 0;
    }

    if (*(a2 + 64))
    {
      *(a2 + 72) = v17;
      if (v15 > *(a2 + 64))
      {
        *(a2 + 80) = *(a2 + 64);
      }

      else
      {
        *(a2 + 80) = v15;
      }

      *(a2 + 96) = wb_buffptr(a1);
      *(a2 + 104) = *(*(a1 + 248) + 66272);
      v14 = inflate((a2 + 72), 0);
      if (v14 > 1)
      {
        archive_set_error(a1, -1, "zisofs decompression failed (%d)", v14);
        return -30;
      }

      v15 -= *(a2 + 72) - v17;
      *(a2 + 64) -= *(a2 + 72) - v17;
      v5 = wb_consume(a1, *(*(a1 + 248) + 66272) - *(a2 + 104));
      if (v5 < 0)
      {
        return v5;
      }
    }

    else
    {
      for (i = *(a2 + 16); i; i -= v7)
      {
        wb_buffptr(a1);
        if (i <= *(*(a1 + 248) + 66272))
        {
          v7 = i;
        }

        else
        {
          v7 = *(*(a1 + 248) + 66272);
        }

        __memset_chk();
        v13 = wb_consume(a1, v7);
        if (v13 < 0)
        {
          return v13;
        }
      }
    }

    *(a2 + 28) += a4;
    return a4 - v15;
  }

  return init;
}

unint64_t zisofs_extract_init(_DWORD *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v6 = 4 * (((*(a2 + 8) + (1 << *a2) - 1) >> *a2) + 1);
  if (*(a2 + 32) || (*(a2 + 32) = malloc_type_malloc(((v6 >> 10) + 1) << 10, 0x1F78F99AuLL)) != 0)
  {
    *(a2 + 40) = v6;
    *(a2 + 16) = 1 << *a2;
    if ((*(a2 + 24) & 2) == 0)
    {
      v5 = 0;
      if (a4 < 0x10)
      {
        goto LABEL_6;
      }

      if (!memcmp(a3, &zisofs_magic, 8uLL))
      {
        if (archive_le32dec_3(a3 + 8) == *(a2 + 8))
        {
          if (a3[12] != 4 || a3[13] != *a2)
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
LABEL_6:
        archive_set_error(a1, 79, "Illegal zisofs file body");
        return -30;
      }

      a4 -= 16;
      *(a2 + 24) = *(a2 + 24) & 0xFD | 2;
    }

    if ((*(a2 + 24) & 2) != 0 && *(a2 + 48) < *(a2 + 40))
    {
      v7 = *(a2 + 40) - *(a2 + 48);
      if (a4 < v7)
      {
        v7 = a4;
      }

      __memcpy_chk();
      *(a2 + 48) += v7;
      a4 -= v7;
      if (*(a2 + 48) == *(a2 + 40))
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 24) = *(a2 + 24) & 0xFE | 1;
      }
    }

    return a4;
  }

  else
  {
    archive_set_error(a1, 12, "No memory for zisofs decompression");
    return -30;
  }
}

uint64_t isoent_alloc_path_table(_DWORD *a1, uint64_t a2, int a3)
{
  HIDWORD(v4) = a3;
  LODWORD(v4) = 0;
  *(a2 + 24) = a3;
  *(a2 + 16) = malloc_type_malloc(32 * *(a2 + 24), 0x10A0040D98738FAuLL);
  if (*(a2 + 16))
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      *(*(a2 + 16) + 32 * i) = 0;
      *(*(a2 + 16) + 32 * i + 8) = *(a2 + 16) + 32 * i;
      *(*(a2 + 16) + 32 * i + 16) = 0;
      *(*(a2 + 16) + 32 * i + 24) = 0;
    }

    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory", v4);
    return -30;
  }
}

uint64_t isoent_collect_dirs(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (!a2)
  {
    v6 = *a1;
  }

  v4 = v6;
  do
  {
    path_table_add_entry(*(a1 + 16) + 32 * a3, v4);
    if (v4[10] && a3 + 1 < *(a1 + 24))
    {
      v4 = v4[10];
      ++a3;
    }

    else
    {
      while (v4 != v6)
      {
        if (v4[15])
        {
          v4 = v4[15];
          break;
        }

        v4 = v4[4];
        --a3;
      }
    }
  }

  while (v4 != v6);
  return 0;
}

uint64_t isoent_rr_move(uint64_t a1)
{
  v11 = a1;
  v10 = *(a1 + 248);
  v9 = 0;
  v8 = 0;
  child = 0;
  i = 0;
  entry = 0;
  v4 = 0;
  v9 = (*(v10 + 200) + 224);
  if (*(v9 + 6))
  {
    v8 = *(v10 + 184);
    child = isoent_find_child(v8, "rr_moved");
    if (child && child != *(v8 + 40))
    {
      isoent_remove_child(v8, child);
      isoent_add_child_head(v8, child);
    }

    for (i = *v9; i; i = *(entry + 128))
    {
      entry = path_table_last_entry(v9);
      while (i)
      {
        j = 0;
        v2 = 0;
        if ((*(i + 232) & 2) != 0)
        {
          for (j = *(i + 80); j; j = *(j + 120))
          {
            v4 = isoent_rr_move_dir(v11, &child, j, &v2);
            if ((v4 & 0x80000000) != 0)
            {
              return v4;
            }

            isoent_collect_dirs(v10 + 184, v2, 2);
          }
        }

        i = *(i + 128);
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

unint64_t isofile_connect_hardlink_files(uint64_t a1)
{
  result = __archive_rb_tree_iterate((a1 + 168), 0, 0);
  for (i = result; i; i = result)
  {
    v3 = *(i + 32);
    archive_entry_set_nlink(*(v3 + 32), *(i + 24));
    for (j = *(v3 + 16); j; j = j[2])
    {
      j[3] = v3;
      archive_entry_set_nlink(j[4], *(i + 24));
    }

    result = __archive_rb_tree_iterate((a1 + 168), i, 1u);
  }

  return result;
}

uint64_t isoent_traverse_tree(uint64_t a1, uint64_t *a2)
{
  __b[23] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 248);
  memset(__b, 0, 0xB8uLL);
  idr_init(v7, a2, __b);
  v6 = *a2;
  v5 = 0;
  if (*(a2 + 2) == 1)
  {
    v3 = isoent_gen_joliet_identifier;
  }

  else
  {
    v3 = isoent_gen_iso9660_identifier;
  }

  do
  {
    if ((*(v6 + 232) & 1) != 0 && !archive_entry_mtime_is_set(*(*(v6 + 24) + 32)))
    {
      archive_entry_set_mtime(*(*(v6 + 24) + 32), *v7, 0);
      archive_entry_set_atime(*(*(v6 + 24) + 32), *v7, 0);
      archive_entry_set_ctime(*(*(v6 + 24) + 32), *v7, 0);
    }

    if (*(v6 + 40))
    {
      if (*(a2 + 2) != 1 && ((*(v7 + 66416) >> 23) & 3) == 0 && v5 + 1 >= *(a2 + 6))
      {
        if (*(v6 + 56) > 0)
        {
          *(v7 + 720) = v6;
        }

        goto LABEL_19;
      }

      sorted_files = v3(a1, v6, __b);
      if ((sorted_files & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      sorted_files = isoent_make_sorted_files(a1, v6, __b);
      if ((sorted_files & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      if (!*(v6 + 80) || v5 + 1 >= *(a2 + 6))
      {
        goto LABEL_19;
      }

      v6 = *(v6 + 80);
      ++v5;
    }

    else
    {
LABEL_19:
      while (v6 != *(v6 + 32))
      {
        if (*(v6 + 120))
        {
          v6 = *(v6 + 120);
          break;
        }

        v6 = *(v6 + 32);
        --v5;
      }
    }
  }

  while (v6 != *(v6 + 32));
  sorted_files = 0;
LABEL_25:
  idr_cleanup(__b);
  return sorted_files;
}

uint64_t isoent_make_path_table_2(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4)
{
  v9 = *(a2 + 16) + 32 * a3;
  if (!*(v9 + 24))
  {
    *(v9 + 16) = 0;
    return 0;
  }

  __base = malloc_type_malloc(8 * *(v9 + 24), 0x2004093837F09uLL);
  if (!__base)
  {
    archive_set_error(a1, 12, "Can't allocate memory");
    return -30;
  }

  *(v9 + 16) = __base;
  for (i = *v9; i; i = *(i + 128))
  {
    v4 = __base++;
    *v4 = i;
  }

  __basea = *(v9 + 16);
  v7 = *(a2 + 8);
  if (!v7)
  {
LABEL_11:
    qsort(__basea, *(v9 + 24), 8uLL, _compare_path_table);
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  qsort(__basea, *(v9 + 24), 8uLL, _compare_path_table_joliet);
LABEL_13:
  for (j = 0; j < *(v9 + 24); ++j)
  {
    v5 = (*a4)++;
    *(*(__basea + j) + 136) = v5;
  }

  return 0;
}

uint64_t calculate_path_table_size(uint64_t result)
{
  v5 = *(result + 16);
  v6 = 0;
  for (i = 0; i < *(result + 24); ++i)
  {
    v2 = *(v5 + 32 * i + 24);
    if (!v2)
    {
      break;
    }

    v4 = *(v5 + 32 * i + 16);
    for (j = 0; j < v2; ++j)
    {
      if (*(*(v4 + 8 * j) + 168))
      {
        v1 = *(*(v4 + 8 * j) + 184);
      }

      else
      {
        v1 = 1;
      }

      if (v1)
      {
        ++v1;
      }

      v6 += v1 + 8;
    }
  }

  *(result + 32) = v6;
  *(result + 28) = 2 * ((v6 + 4095) / 4096);
  return result;
}

uint64_t path_table_add_entry(uint64_t result, uint64_t a2)
{
  *(a2 + 128) = 0;
  **(result + 8) = a2;
  *(result + 8) = a2 + 128;
  ++*(result + 24);
  return result;
}

void *isoent_remove_child(uint64_t a1, uint64_t a2)
{
    ;
  }

  v2 = *(*(i + 112) + 112);
  *(i + 112) = v2;
  if (!v2)
  {
    *(a1 + 48) = i + 112;
  }

  --*(a1 + 56);
  if ((*(a2 + 232) & 2) != 0)
  {
      ;
    }

    v3 = *(*(j + 120) + 120);
    *(j + 120) = v3;
    if (!v3)
    {
      *(a1 + 88) = j + 120;
    }

    --*(a1 + 96);
  }

  return __archive_rb_tree_remove_node((a1 + 64), a2);
}

uint64_t isoent_add_child_head(uint64_t a1, uint64_t a2)
{
  if (__archive_rb_tree_insert_node((a1 + 64), a2))
  {
    v2 = *(a1 + 40);
    *(a2 + 112) = v2;
    if (!v2)
    {
      *(a1 + 48) = a2 + 112;
    }

    *(a1 + 40) = a2;
    ++*(a1 + 56);
    *(a2 + 32) = a1;
    if ((*(a2 + 232) & 2) != 0)
    {
      v3 = *(a1 + 80);
      *(a2 + 120) = v3;
      if (!v3)
      {
        *(a1 + 88) = a2 + 120;
      }

      *(a1 + 80) = a2;
      ++*(a1 + 96);
      *(a2 + 32) = a1;
    }

    else
    {
      *(a2 + 120) = 0;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t path_table_last_entry(void *a1)
{
  if (*a1)
  {
    return a1[1] - 128;
  }

  else
  {
    return 0;
  }
}

uint64_t isoent_rr_move_dir(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v13 = *(a1 + 248);
  virtual_dir = *a2;
  if (!*a2)
  {
    v9 = *(v13 + 184);
    virtual_dir = isoent_create_virtual_dir(a1, v13, "rr_moved");
    if (!virtual_dir)
    {
LABEL_3:
      archive_set_error(a1, 12, "Can't allocate memory");
      return -30;
    }

    isoent_add_child_head(v9, virtual_dir);
    v8 = *(*(v9 + 24) + 32);
    v4 = archive_entry_nlink(v8);
    archive_entry_set_nlink(v8, v4 + 1);
    path_table_add_entry(*(v13 + 200) + 32, virtual_dir);
    *a2 = virtual_dir;
  }

  v11 = isoent_clone(a3);
  if (!v11)
  {
    goto LABEL_3;
  }

  v11[24] = *(a3 + 32);
  *(a3 + 200) = v11;
  if (*(a3 + 40))
  {
    *v11[6] = *(a3 + 40);
    v11[6] = *(a3 + 48);
  }

  for (i = v11[5]; i; i = *(i + 112))
  {
    *(i + 32) = v11;
  }

  *(v11 + 14) = *(a3 + 56);
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = a3 + 40;
  if (*(a3 + 80))
  {
    *v11[11] = *(a3 + 80);
    v11[11] = *(a3 + 88);
  }

  *(v11 + 24) = *(a3 + 96);
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = a3 + 80;
  isoent_add_child_tail(virtual_dir, v11);
  v7 = *(virtual_dir[3] + 32);
  v5 = archive_entry_nlink(v7);
  archive_entry_set_nlink(v7, v5 + 1);
  *(a3 + 232) &= ~2u;
  *a4 = v11;
  return 0;
}

uint64_t idr_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 40) = 0;
  if (*(a2 + 8) != 1)
  {
    if (((*(result + 66416) >> 14) & 7u) <= 3)
    {
      return __memcpy_chk();
    }

    else
    {
      __memcpy_chk();
      return idr_relaxed_filenames(a3 + 56);
    }
  }

  return result;
}

uint64_t isoent_gen_joliet_identifier(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 56))
  {
    v17 = *(a1 + 248);
    if (((*(v17 + 66416) >> 17) & 3) == 2)
    {
      v12 = 206;
      v3 = idr_start(a1, a3, *(a2 + 56), 206, 6, 2, isoent_gen_joliet_identifier_rb_ops);
    }

    else
    {
      v12 = 128;
      v3 = idr_start(a1, a3, *(a2 + 56), 128, 6, 2, isoent_gen_joliet_identifier_rb_ops);
    }

    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v11 = 1;
      for (i = a2; *(i + 32) != i; i = *(i + 32))
      {
        v11 += *(i + 188) + 1;
      }

      for (j = *(a2 + 40); j; j = *(j + 112))
      {
        v13 = *(*(j + 24) + 96);
        if (v13 > v12)
        {
          v13 = v12;
        }

        v14 = malloc_type_malloc(2 * (v13 + 1), 0xC7D735ACuLL);
        if (!v14)
        {
          archive_set_error(a1, 12, "Can't allocate memory");
          return -30;
        }

        __memcpy_chk();
        v14[v13] = 0;
        v14[v13 + 1] = 0;
        *(j + 168) = v14;
        v7 = v13;
        v10 = v14 + v13;
        v8 = 0;
        while (v7)
        {
          if (joliet_allowed_char(*v14, v14[1]))
          {
            if (!*v14 && v14[1] == 46)
            {
              v10 = v14;
            }
          }

          else
          {
            archive_be16enc_0(v14, 95);
          }

          v14 += 2;
          v7 -= 2;
        }

        v9 = v10 - *(j + 168);
        *(j + 176) = v9;
        *(j + 180) = v13 - v9;
        *(j + 184) = v13;
        if (*(*(j + 24) + 96) > v12)
        {
          if (archive_strncpy_l((v17 + 96), *(j + 168), v13, *(v17 + 128)) && *__error() == 12)
          {
            v4 = __error();
            archive_set_error(a1, *v4, "No memory");
            return -30;
          }

          *(j + 188) = *(v17 + 104);
          if (*(j + 188) != *(*(j + 24) + 72))
          {
            v8 = *(j + 188);
          }
        }

        else
        {
          *(j + 188) = *(*(j + 24) + 72);
        }

        if (v11 > 0xF0 || *(j + 188) > 240 || v11 + *(j + 188) > 0xF0)
        {
          v5 = archive_entry_pathname(*(*(j + 24) + 32));
          return -30;
        }

        if (v13 == v12)
        {
          idr_register(a3, j, v8, v9 - 6);
        }

        else if (v13 == v12 - 2)
        {
          idr_register(a3, j, v8, v9 - 4);
        }

        else if (v13 == v12 - 4)
        {
          idr_register(a3, j, v8, v9 - 2);
        }

        else
        {
          idr_register(a3, j, v8, v9);
        }
      }

      idr_resolve(a3, idr_set_num_beutf16);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t isoent_gen_iso9660_identifier(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a2 + 56))
  {
    return 0;
  }

  v30 = *(a1 + 248);
  v21 = a3 + 7;
  if (((*(v30 + 66416) >> 14) & 7u) > 3)
  {
    v19 = 1;
    v20 = 1;
    v17 = 0;
    v18 = 0;
    if (((*(v30 + 66416) >> 23) & 3) != 0)
    {
      v14 = 193;
      v15 = 193;
      v16 = 193;
    }

    else
    {
      v14 = 207;
      v15 = 207;
      v16 = 207;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 1;
    v17 = (*(v30 + 66416) & 4) != 0;
    if (((*(v30 + 66416) >> 14) & 7) == 1)
    {
      v16 = 8;
      v15 = 12;
      v14 = 8;
    }

    else
    {
      v16 = 30;
      v15 = 31;
      v14 = 31;
    }
  }

  v22 = idr_start(a1, a3, *(a2 + 56), v15, 3, 1, isoent_gen_iso9660_identifier_rb_ops);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  for (i = *(a2 + 40); i; i = *(i + 112))
  {
    v23 = *(*(i + 24) + 72);
    v25 = malloc_type_malloc(v23 + 34, 0xE0D11C74uLL);
    if (!v25)
    {
      archive_set_error(a1, 12, "Can't allocate memory", idr_set_num);
      return -30;
    }

    __memcpy_chk();
    v25[v23] = 0;
    *(i + 168) = v25;
    v12 = 0;
    __s = 0;
    if (!v20 && *v25 == 46)
    {
      v3 = v25++;
      *v3 = 95;
    }

    while (*v25)
    {
      if (*v25 < 0)
      {
        *v25 = 95;
      }

      else if (*(v21 + *v25))
      {
        if (*v25 == 46)
        {
          v12 = __s;
          __s = v25;
        }
      }

      else if (*v25 < 97 || *v25 > 122)
      {
        if (*v25 != 46 || (v12 = __s, __s = v25, !v19))
        {
          *v25 = 95;
        }
      }

      else
      {
        *v25 -= 32;
      }

      ++v25;
    }

    v26 = *(i + 168);
    v10 = -1;
    if (__s)
    {
      *__s = 46;
      v11 = __s - v26;
      if (((*(v30 + 66416) >> 14) & 7) == 1)
      {
        if (__s - v26 > 8)
        {
          v26[8] = *__s;
          v26[9] = __s[1];
          v26[10] = __s[2];
          v26[11] = __s[3];
          v26[12] = 0;
          v10 = 8;
          v11 = 8;
        }

        else if (strlen(__s) > 4)
        {
          __s[4] = 0;
          v10 = 0;
        }
      }

      else if ((*(i + 232) & 2) != 0)
      {
        if (v23 > v14)
        {
          v26[v14] = 0;
          v10 = v14;
          if (v11 > v14)
          {
            v11 = v14;
          }
        }
      }

      else if (v23 > v15)
      {
        v8 = strlen(__s);
        if (v12)
        {
          v7 = v12 - v26;
        }

        else
        {
          v7 = 0;
        }

        if (v8 <= 1 || v7 >= v16 - 1)
        {
          v26[v16] = 0;
          v11 = v16;
          v10 = v16;
        }

        else
        {
          if (v8 > v15)
          {
            v8 = v15;
          }

          v6 = v15 - v8;
          if (v15 == v8)
          {
            v6 = 1;
          }

          __memmove_chk();
          v26[v15] = 0;
          v11 = v6;
          v10 = v6;
        }
      }
    }

    else
    {
      if ((*(i + 232) & 2) != 0)
      {
        v9 = v14;
      }

      else
      {
        v9 = v16;
      }

      if (v23 <= v9)
      {
        v11 = v23;
      }

      else
      {
        v26[v9] = 0;
        v10 = v9;
        v11 = v9;
      }
    }

    *(i + 176) = v11;
    *(i + 180) = strlen(&v26[v11]);
    v24 = v11 + *(i + 180);
    *(i + 184) = v24;
    if (((*(v30 + 66416) >> 14) & 7) == 1)
    {
      if (v11 >= 5)
      {
        idr_register(a3, i, v10, 5);
        continue;
      }
    }

    else
    {
      if (v24 == v15)
      {
        idr_register(a3, i, v10, v11 - 3);
        continue;
      }

      if (v24 == v15 - 1)
      {
        idr_register(a3, i, v10, v11 - 2);
        continue;
      }

      if (v24 == v15 - 2)
      {
        idr_register(a3, i, v10, v11 - 1);
        continue;
      }
    }

    idr_register(a3, i, v10, v11);
  }

  idr_resolve(a3, idr_set_num);
  for (j = *(a2 + 40); j; j = *(j + 112))
  {
    if ((*(j + 232) & 2) != 0 || *(j + 200))
    {
      *(j + 184) = *(j + 176) + *(j + 180);
    }

    else
    {
      v27 = (*(j + 168) + *(j + 176) + *(j + 180));
      if (!*(j + 180) && v18)
      {
        ++v27;
        *(*(j + 168) + *(j + 176) + *(j + 180)) = 46;
        *(j + 180) = 1;
      }

      if (*(j + 180) == 1 && !v18)
      {
        *--v27 = 0;
        *(j + 180) = 0;
      }

      *(j + 184) = *(j + 176) + *(j + 180);
      if (v17)
      {
        *v27 = 59;
        v4 = v27 + 1;
        v27 += 2;
        *v4 = 49;
        *(j + 184) += 2;
      }

      *v27 = 0;
    }

    *(j + 188) = *(j + 184);
  }

  return 0;
}

uint64_t isoent_make_sorted_files(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_malloc(8 * *(a2 + 56), 0x2004093837F09uLL);
  if (v5)
  {
    *(a2 + 104) = v5;
    for (i = __archive_rb_tree_iterate((a3 + 8), 0, 0); i; i = __archive_rb_tree_iterate((a3 + 8), i, 1u))
    {
      v3 = v5++;
      *v3 = *(i + 40);
    }

    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory");
    return -30;
  }
}

uint64_t idr_relaxed_filenames(uint64_t result)
{
  for (i = 33; i <= 47; ++i)
  {
    *(result + i) = 1;
  }

  for (j = 58; j <= 65; ++j)
  {
    *(result + j) = 1;
  }

  for (k = 91; k <= 94; ++k)
  {
    *(result + k) = 1;
  }

  *(result + 96) = 1;
  for (m = 123; m <= 126; ++m)
  {
    *(result + m) = 1;
  }

  return result;
}

uint64_t idr_start(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v8 = idr_ensure_poolsize(a1, a2, a3);
  if (v8)
  {
    return v8;
  }

  else
  {
    __archive_rb_tree_init((a2 + 8), a7);
    *(a2 + 24) = 0;
    *(a2 + 32) = a2 + 24;
    *(a2 + 44) = 0;
    *(a2 + 48) = a5;
    *(a2 + 52) = a6;
    return 0;
  }
}

_BYTE *archive_be16enc_0(_BYTE *result, __int16 a2)
{
  *result = HIBYTE(a2);
  result[1] = a2;
  return result;
}

uint64_t idr_register(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = (*(a1 + 11))++;
  v7 = v4 + (v5 << 6);
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  *(v7 + 52) = a4;
  *(v7 + 56) = 0;
  result = __archive_rb_tree_insert_node(a1 + 1, v7);
  if (!result)
  {
    result = __archive_rb_tree_find_node(a1 + 1, *(v7 + 40));
    if (result)
    {
      *(v7 + 32) = result;
      *a1[4] = v7;
      a1[4] = v7 + 24;
    }
  }

  return result;
}

uint64_t idr_resolve(uint64_t result, void (*a2)(uint64_t))
{
  v5 = result;
  for (i = *(result + 24); i; i = *(i + 24))
  {
    idr_extend_identifier(i, *(v5 + 48), *(v5 + 52));
    v2 = *(*(i + 40) + 168) + *(i + 52);
    do
    {
      ++*(*(i + 32) + 56);
      a2(v2);
      result = __archive_rb_tree_insert_node((v5 + 8), i);
    }

    while (!result);
  }

  return result;
}

_BYTE *idr_set_num_beutf16(_BYTE *a1, int a2)
{
  v3 = a2 % 0xB640uLL;
  archive_be16enc_0(a1, idr_set_num_beutf16_xdig[v3 / 0x510uLL]);
  v4 = v3 % 0x510uLL;
  archive_be16enc_0(a1 + 2, idr_set_num_beutf16_xdig[v4 / 0x24uLL]);
  return archive_be16enc_0(a1 + 4, idr_set_num_beutf16_xdig[v4 % 0x24uLL]);
}

uint64_t isoent_cmp_joliet_identifier(uint64_t a1, uint64_t a2)
{
  __s1 = *(a1 + 168);
  __s2 = *(a2 + 168);
  __n = *(a1 + 176);
  if (__n > *(a2 + 176))
  {
    __n = *(a2 + 176);
  }

  __n_4 = memcmp(__s1, __s2, __n);
  if (__n_4)
  {
    return __n_4;
  }

  else
  {
    if (*(a1 + 176) >= *(a2 + 176))
    {
      if (*(a1 + 176) > *(a2 + 176))
      {
        __s1a = &__s1[__n];
        __nb = *(a1 + 176) - *(a2 + 176);
        while (__nb--)
        {
          v5 = __s1a++;
          if (*v5)
          {
            return *(__s1a - 1);
          }
        }
      }
    }

    else
    {
      __s2a = &__s2[__n];
      __na = *(a2 + 176) - *(a1 + 176);
      while (__na--)
      {
        v3 = __s2a++;
        if (*v3)
        {
          return -*(__s2a - 1);
        }
      }
    }

    if (*(a1 + 180) || *(a2 + 180))
    {
      if (*(a1 + 180) == 2 && *(a2 + 180) == 2)
      {
        return 0;
      }

      else if (*(a1 + 180) > 2)
      {
        if (*(a2 + 180) > 2)
        {
          __nc = *(a1 + 180);
          if (__nc > *(a2 + 180))
          {
            __nc = *(a2 + 180);
          }

          __s1b = (*(a1 + 168) + *(a1 + 176));
          __s2b = (*(a2 + 168) + *(a2 + 176));
          if (__nc > 1 && (__n_4a = memcmp(__s1b, __s2b, __nc)) != 0)
          {
            return __n_4a;
          }

          else
          {
            if (*(a1 + 180) >= *(a2 + 180))
            {
              if (*(a1 + 180) > *(a2 + 180))
              {
                __s1c = &__s1b[__nc];
                __ne = *(a1 + 180) - *(a2 + 180);
                while (__ne--)
                {
                  v9 = __s1c++;
                  if (*v9)
                  {
                    return *(__s1c - 1);
                  }
                }
              }
            }

            else
            {
              __s2c = &__s2b[__nc];
              __nd = *(a2 + 180) - *(a1 + 180);
              while (__nd--)
              {
                v7 = __s2c++;
                if (*v7)
                {
                  return -*(__s2c - 1);
                }
              }
            }

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
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t idr_ensure_poolsize(_DWORD *a1, uint64_t a2, int a3)
{
  if (*(a2 + 40) >= a3)
  {
    return 0;
  }

  v4 = (a3 + 127) & 0xFFFFFF80;
  v5 = malloc_type_realloc(*a2, v4 << 6, 0x1020040BDA28855uLL);
  if (v5)
  {
    *a2 = v5;
    *(a2 + 40) = v4;
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory");
  return -30;
}

uint64_t idr_extend_identifier(uint64_t result, int a2, int a3)
{
  v5 = result;
  if (*(result + 52) + a2 != *(*(result + 40) + 176))
  {
    result = __memmove_chk();
    v3 = *(v5 + 52) + a2;
    *(*(v5 + 40) + 176) = v3;
    *(*(v5 + 40) + 184) = v3 + *(*(v5 + 40) + 180);
  }

  return result;
}

_BYTE *idr_set_num(_BYTE *result, int a2)
{
  v2 = a2 % 0xB640uLL;
  *result = idr_set_num_xdig[v2 / 0x510uLL];
  v3 = v2 % 0x510uLL;
  result[1] = idr_set_num_xdig[v3 / 0x24uLL];
  result[2] = idr_set_num_xdig[v3 % 0x24uLL];
  return result;
}

uint64_t isoent_cmp_iso9660_identifier(uint64_t a1, uint64_t a2)
{
  __s1 = *(a1 + 168);
  __s2 = *(a2 + 168);
  __n = *(a1 + 176);
  if (__n > *(a2 + 176))
  {
    __n = *(a2 + 176);
  }

  __n_4 = memcmp(__s1, __s2, __n);
  if (__n_4)
  {
    return __n_4;
  }

  else
  {
    if (*(a1 + 176) >= *(a2 + 176))
    {
      if (*(a1 + 176) > *(a2 + 176))
      {
        __s1a = &__s1[__n];
        __nb = *(a1 + 176) - *(a2 + 176);
        while (__nb--)
        {
          v5 = __s1a++;
          if (*v5 != 32)
          {
            return (*(__s1a - 1) - 32);
          }
        }
      }
    }

    else
    {
      __s2a = &__s2[__n];
      __na = *(a2 + 176) - *(a1 + 176);
      while (__na--)
      {
        v3 = __s2a++;
        if (*v3 != 32)
        {
          return (32 - *(__s2a - 1));
        }
      }
    }

    if (*(a1 + 180) || *(a2 + 180))
    {
      if (*(a1 + 180) == 1 && *(a2 + 180) == 1)
      {
        return 0;
      }

      else if (*(a1 + 180) > 1)
      {
        if (*(a2 + 180) > 1)
        {
          __nc = *(a1 + 180);
          if (__nc > *(a2 + 180))
          {
            __nc = *(a2 + 180);
          }

          __s1b = (*(a1 + 168) + *(a1 + 176));
          __s2b = (*(a2 + 168) + *(a2 + 176));
          if (__nc > 1 && (__n_4a = memcmp(__s1b, __s2b, __nc)) != 0)
          {
            return __n_4a;
          }

          else
          {
            if (*(a1 + 180) >= *(a2 + 180))
            {
              if (*(a1 + 180) > *(a2 + 180))
              {
                __s1c = &__s1b[__nc];
                __ne = *(a1 + 180) - *(a2 + 180);
                while (__ne--)
                {
                  v9 = __s1c++;
                  if (*v9 != 32)
                  {
                    return (*(__s1c - 1) - 32);
                  }
                }
              }
            }

            else
            {
              __s2c = &__s2b[__nc];
              __nd = *(a2 + 180) - *(a1 + 180);
              while (__nd--)
              {
                v7 = __s2c++;
                if (*v7 != 32)
                {
                  return (32 - *(__s2c - 1));
                }
              }
            }

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
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _compare_path_table(uint64_t *a1, uint64_t *a2)
{
  v16 = *a1;
  v15 = *a2;
  if (*(*(*a1 + 32) + 136) == *(*(*a2 + 32) + 136))
  {
    __s1 = *(v16 + 168);
    __s2 = *(v15 + 168);
    __n = *(v16 + 176);
    if (__n > *(v15 + 176))
    {
      __n = *(v15 + 176);
    }

    __n_4 = strncmp(__s1, __s2, __n);
    if (__n_4)
    {
      return __n_4;
    }

    else
    {
      if (*(v16 + 176) >= *(v15 + 176))
      {
        if (*(v16 + 176) > *(v15 + 176))
        {
          __s1a = &__s1[__n];
          __nb = *(v16 + 176) - *(v15 + 176);
          while (__nb--)
          {
            v5 = __s1a++;
            if (*v5 != 32)
            {
              return (*(__s1a - 1) - 32);
            }
          }
        }
      }

      else
      {
        __s2a = &__s2[__n];
        __na = *(v15 + 176) - *(v16 + 176);
        while (__na--)
        {
          v3 = __s2a++;
          if (*v3 != 32)
          {
            return (32 - *(__s2a - 1));
          }
        }
      }

      return 0;
    }
  }

  else
  {
    return (*(*(*a1 + 32) + 136) - *(*(*a2 + 32) + 136));
  }
}

uint64_t _compare_path_table_joliet(uint64_t *a1, uint64_t *a2)
{
  v16 = *a1;
  v15 = *a2;
  if (*(*(*a1 + 32) + 136) == *(*(*a2 + 32) + 136))
  {
    __s1 = *(v16 + 168);
    __s2 = *(v15 + 168);
    __n = *(v16 + 176);
    if (__n > *(v15 + 176))
    {
      __n = *(v15 + 176);
    }

    __n_4 = memcmp(__s1, __s2, __n);
    if (__n_4)
    {
      return __n_4;
    }

    else
    {
      if (*(v16 + 176) >= *(v15 + 176))
      {
        if (*(v16 + 176) > *(v15 + 176))
        {
          __s1a = &__s1[__n];
          __nb = *(v16 + 176) - *(v15 + 176);
          while (__nb--)
          {
            v5 = __s1a++;
            if (*v5)
            {
              return *(__s1a - 1);
            }
          }
        }
      }

      else
      {
        __s2a = &__s2[__n];
        __na = *(v15 + 176) - *(v16 + 176);
        while (__na--)
        {
          v3 = __s2a++;
          if (*v3)
          {
            return -*(__s2a - 1);
          }
        }
      }

      return 0;
    }
  }

  else
  {
    return (*(*(*a1 + 32) + 136) - *(*(*a2 + 32) + 136));
  }
}

uint64_t calculate_directory_descriptors(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = 1;
  dir_rec_size = get_dir_rec_size(a1, a3, 1u, *(a2 + 8));
  v11 = dir_rec_size + get_dir_rec_size(a1, a3, 2u, *(a2 + 8));
  if (*(a3 + 56) > 0 && (*(a2 + 8) == 1 || ((*(a1 + 66416) >> 23) & 3) != 0 || a4 + 1 < *(a2 + 24)))
  {
    v12 = *(a3 + 104);
    for (i = 0; i < *(a3 + 56); ++i)
    {
      v7 = *(v12 + 8 * i);
      v6 = *(v7 + 24);
      if (*(v6 + 24))
      {
        v6 = *(v6 + 24);
      }

      *(v6 + 176) = v6 + 144;
      do
      {
        v5 = get_dir_rec_size(a1, v7, 3u, *(a2 + 8));
        if (v11 + v5 <= 2048)
        {
          v11 += v5;
        }

        else
        {
          ++v9;
          v11 = v5;
        }

        *(v6 + 176) = *(*(v6 + 176) + 24);
      }

      while (*(v6 + 176));
    }

    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t extra_setup_location(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 208);
  *(a1 + 224) = v5;
  while (v5)
  {
    ++v4;
    v2 = a2++;
    *v5 = v2;
    *(v5 + 4) = 0;
    v5 = *(v5 + 2056);
  }

  return v4;
}

uint64_t set_directory_record(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  if (a1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v12 = *(a3 + 144);
      }

      else
      {
        v12 = a5 == 2 ? *(a3 + 148) : *(a3 + 152);
      }
    }

    else
    {
      v12 = *(a3 + 140);
    }

    if (v12 > a2)
    {
      return 0;
    }
  }

  if (a5 == 3 && *(a3 + 168))
  {
    v11 = *(a3 + 184);
  }

  else
  {
    v11 = 1;
  }

  if (!a1)
  {
    v14 = 0;
    goto LABEL_42;
  }

  if (a5 == 2)
  {
    v10 = *(a3 + 32);
  }

  else
  {
    v10 = a3;
  }

  v9 = *(a3 + 24);
  if (*(v9 + 24))
  {
    v9 = *(v9 + 24);
  }

  if ((*(v10 + 232) & 2) != 0)
  {
    v8 = 2;
  }

  else if (*(*(v9 + 176) + 24))
  {
    v8 = 0x80;
  }

  else
  {
    v8 = 0;
  }

  v14 = a1 - 1;
  set_num_711(a1 + 1, 0);
  if ((*(v10 + 232) & 2) != 0)
  {
    set_num_733((v14 + 3), *(v10 + 156));
  }

  else
  {
    set_num_733((v14 + 3), *(*(v9 + 176) + 20));
  }

  if ((*(v10 + 232) & 2) != 0)
  {
    set_num_733((v14 + 11), *(v10 + 160) << 11);
  }

  else
  {
    set_num_733((v14 + 11), *(*(v9 + 176) + 8));
  }

  v6 = archive_entry_mtime(*(*(v10 + 24) + 32));
  set_time_915(v14 + 19, v6);
  v14[26] = v8;
  set_num_711(v14 + 27, 0);
  set_num_711(v14 + 28, 0);
  set_num_723((v14 + 29), *(a4 + 284));
  set_num_711(v14 + 33, v11);
  if (a5 <= 1)
  {
LABEL_40:
    set_num_711(v14 + 34, 0);
    goto LABEL_42;
  }

  if (a5 == 2)
  {
    set_num_711(v14 + 34, 1);
    goto LABEL_42;
  }

  if (a5 == 3)
  {
    if (*(a3 + 168))
    {
      __memcpy_chk();
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_42:
  LODWORD(v13) = v11 + 33;
  if ((v11 + 33))
  {
    v13 = v11 + 34;
    if (a1)
    {
      v14[v13] = 0;
    }
  }

  if (a5)
  {
    if (((*(a4 + 66416) >> 23) & 3) != 0 && a6 != 1)
    {
      LODWORD(v13) = set_directory_record_rr(v14, v13, a3, a4, a5);
    }

    if (a1)
    {
      set_num_711(a1, v13);
    }

    else
    {
      switch(a5)
      {
        case 1u:
          *(a3 + 144) = v13;
          break;
        case 2u:
          *(a3 + 148) = v13;
          break;
        case 3u:
          *(a3 + 152) = v13;
          break;
      }
    }

    return v13;
  }

  else
  {
    if (a1)
    {
      set_num_711(a1, v13);
    }

    else
    {
      *(a3 + 140) = v13;
    }

    return v13;
  }
}

_BYTE *set_time_915(_BYTE *a1, time_t a2)
{
  v5 = a1;
  v4 = a2;
  memset(&__b, 0, sizeof(__b));
  get_tmfromtime(&__b, &v4);
  set_num_711(v5, __b.tm_year);
  set_num_711(v5 + 1, LOBYTE(__b.tm_mon) + 1);
  set_num_711(v5 + 2, __b.tm_mday);
  set_num_711(v5 + 3, __b.tm_hour);
  set_num_711(v5 + 4, __b.tm_min);
  set_num_711(v5 + 5, __b.tm_sec);
  return set_num_712(v5 + 6, __b.tm_gmtoff / 900);
}

uint64_t set_directory_record_rr(_BYTE *a1, int a2, void *a3, uint64_t a4, int a5)
{
  record = a1;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = 0;
  v49 = 0;
  memset(__b, 0, 0x38uLL);
  v47 = 0;
  v46 = 0;
  v45 = 0;
  record = extra_open_record(record, v54, v53, __b);
  if (v51 == 2)
  {
    v47 = v53[24];
    v46 = v53[4];
    if (v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v53[4];
    }
  }

  else
  {
    v47 = 0;
    v46 = v53;
  }

  v45 = v53[3];
  if (v51 == 3)
  {
    v50 = -119;
    if (archive_entry_filetype(*(v45 + 32)) == 40960)
    {
      v50 |= 4u;
    }

    if (v53[24])
    {
      v50 |= 0x40u;
    }

    if (v53[25])
    {
      v50 |= 0x10u;
    }

    if (archive_entry_filetype(*(v45 + 32)) == 0x2000 || archive_entry_filetype(*(v45 + 32)) == 24576)
    {
      v50 |= 2u;
    }
  }

  else
  {
    v50 = -127;
    if (v47)
    {
      v50 |= 0x20u;
    }
  }

  if (v51 == 1 && v53 == v53[4])
  {
    v49 = 7;
    if (record)
    {
      record[1] = 83;
      record[2] = 80;
      record[3] = v49;
      record[4] = 1;
      record[5] = -66;
      record[6] = -17;
      record[7] = 0;
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  v49 = 5;
  if (__b[10] - __b[8] < 5)
  {
    record = extra_next_record(__b, v49);
  }

  if (record)
  {
    record[1] = 82;
    record[2] = 82;
    record[3] = v49;
    record[4] = 1;
    record[5] = v50;
    record += v49;
  }

  extra_tell_used_size(__b, v49);
  if ((v50 & 8) != 0)
  {
    v44 = *(v45 + 72);
    v43 = *(v45 + 64);
    v42 = 0;
    if (__b[10] - __b[8] < 6)
    {
      record = extra_next_record(__b, 6);
    }

    if (record)
    {
      record[1] = 78;
      record[2] = 77;
      record[4] = 1;
    }

    v42 = __b[10] - __b[8];
    if (v42 > 0xFF)
    {
      v42 = 255;
    }

    while (v44 + 5 > v42)
    {
      v49 = v42;
      if (record)
      {
        record[3] = v49;
        record[5] = 1;
        __memcpy_chk();
        record += v49;
      }

      v44 -= v49 - 5;
      v43 += v49 - 5;
      extra_tell_used_size(__b, v49);
      if (__b[10] - __b[8] < 6)
      {
        record = extra_next_record(__b, 6);
        v42 = __b[10] - __b[8];
        if (v42 > 0xFF)
        {
          v42 = 255;
        }
      }

      if (record)
      {
        record[1] = 78;
        record[2] = 77;
        record[4] = 1;
      }
    }

    v49 = v44 + 5;
    if (record)
    {
      record[3] = v49;
      record[5] = 0;
      __memcpy_chk();
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if (v50)
  {
    v49 = 44;
    if (__b[10] - __b[8] < 44)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      v41 = 0;
      v40 = 0;
      v39 = 0;
      v41 = archive_entry_mode(*(v45 + 32));
      v40 = archive_entry_uid(*(v45 + 32));
      v39 = archive_entry_gid(*(v45 + 32));
      if (((*(v52 + 66416) >> 23) & 3) == 2)
      {
        v41 |= 0x124u;
        if ((v41 & 0x49) != 0)
        {
          v41 |= 0x49u;
        }

        v41 &= 0xF16Du;
      }

      record[1] = 80;
      record[2] = 88;
      record[3] = v49;
      record[4] = 1;
      set_num_733((record + 5), v41);
      v28 = (record + 13);
      v5 = archive_entry_nlink(*(v45 + 32));
      set_num_733(v28, v5);
      set_num_733((record + 21), v40);
      set_num_733((record + 29), v39);
      if ((v46[29] & 2) != 0)
      {
        set_num_733((record + 37), *(v46 + 39));
      }

      else if (*(v45 + 24))
      {
        set_num_733((record + 37), *(*(*(v45 + 24) + 176) + 20));
      }

      else
      {
        set_num_733((record + 37), *(*(v45 + 176) + 20));
      }

      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if ((v50 & 4) != 0)
  {
    v38 = 0;
    v37 = 0;
    if (__b[10] - __b[8] < 7)
    {
      record = extra_next_record(__b, 7);
    }

    v38 = *(v45 + 112);
    v37 = 0;
    if (record)
    {
      record[1] = 83;
      record[2] = 76;
      record[4] = 1;
    }

    while (1)
    {
      v36 = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      v31 = __b[10] - __b[8];
      if (__b[10] - __b[8] > 255)
      {
        v31 = 255;
      }

      v36 = record ? (record + 6) : 0;
      v34 = 0;
      v35 = 0;
      v32 = 0;
      while (1)
      {
        v27 = 0;
        if (*v38)
        {
          v27 = v32 + 11 < v31;
        }

        if (!v27)
        {
          break;
        }

        if (v37 || *v38 != 47)
        {
          if ((!v37 || v37 == 47) && *v38 == 46 && v38[1] == 46 && (v38[2] == 47 || !v38[2]) || *v38 == 47 && v38[1] == 46 && v38[2] == 46 && (v38[3] == 47 || !v38[3]))
          {
            if (v36)
            {
              v8 = v36++;
              v35 = v8;
              *v8 = 4;
              v9 = v36++;
              *v9 = 0;
            }

            v32 += 2;
            if (*v38 == 47)
            {
              v38 += 3;
            }

            else
            {
              v38 += 2;
            }

            v37 = 46;
            v34 = 0;
          }

          else if ((!v37 || v37 == 47) && *v38 == 46 && (v38[1] == 47 || !v38[1]) || *v38 == 47 && v38[1] == 46 && (v38[2] == 47 || !v38[2]))
          {
            if (v36)
            {
              v10 = v36++;
              v35 = v10;
              *v10 = 2;
              v11 = v36++;
              *v11 = 0;
            }

            v32 += 2;
            if (*v38 == 47)
            {
              v38 += 2;
            }

            else
            {
              ++v38;
            }

            v37 = 46;
            v34 = 0;
          }

          else if ((*v38 == 47 || !v34) && (!v36 ? (v34 = &v33) : (v12 = v36, ++v36, v35 = v12, *v12 = 0, v13 = v36, ++v36, v34 = v13, *v13 = 0), v32 += 2, *v38 == 47))
          {
            v14 = v38++;
            v37 = *v14;
          }

          else
          {
            v15 = v38++;
            v37 = *v15;
            if (v36)
            {
              v16 = v36++;
              *v16 = v37;
              ++*v34;
            }

            ++v32;
          }
        }

        else
        {
          if (v36)
          {
            v6 = v36++;
            v35 = v6;
            *v6 = 8;
            v7 = v36++;
            *v7 = 0;
          }

          v32 += 2;
          ++v38;
          v37 = 47;
          v34 = 0;
        }
      }

      if (!*v38)
      {
        break;
      }

      v49 = v32 + 5;
      if (record)
      {
        *v35 |= 1u;
        record[3] = v49;
        record[5] = 1;
        record += v49;
      }

      extra_tell_used_size(__b, v49);
      if (__b[10] - __b[8] < 11)
      {
        record = extra_next_record(__b, 11);
      }

      if (record)
      {
        record[1] = 83;
        record[2] = 76;
        record[4] = 1;
      }
    }

    v49 = v32 + 5;
    if (record)
    {
      record[3] = v49;
      record[5] = 0;
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if (v50 < 0)
  {
    v49 = 5;
    v30 = 0;
    if (archive_entry_birthtime_is_set(*(v45 + 32)))
    {
      v26 = archive_entry_birthtime(*(v45 + 32));
      if (v26 <= archive_entry_mtime(*(v45 + 32)))
      {
        v49 += 7;
        v30 = 1;
      }
    }

    if (archive_entry_mtime_is_set(*(v45 + 32)))
    {
      v49 += 7;
      v30 |= 2u;
    }

    if (archive_entry_atime_is_set(*(v45 + 32)))
    {
      v49 += 7;
      v30 |= 4u;
    }

    if (archive_entry_ctime_is_set(*(v45 + 32)))
    {
      v49 += 7;
      v30 |= 8u;
    }

    if (__b[10] - __b[8] < v49)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 84;
      record[2] = 70;
      record[3] = v49;
      record[4] = 1;
      record[5] = v30;
      record += 5;
      if (v30)
      {
        v25 = record + 1;
        v17 = archive_entry_birthtime(*(v45 + 32));
        set_time_915(v25, v17);
        record += 7;
      }

      if ((v30 & 2) != 0)
      {
        v24 = record + 1;
        v18 = archive_entry_mtime(*(v45 + 32));
        set_time_915(v24, v18);
        record += 7;
      }

      if ((v30 & 4) != 0)
      {
        v23 = record + 1;
        v19 = archive_entry_atime(*(v45 + 32));
        set_time_915(v23, v19);
        record += 7;
      }

      if ((v30 & 8) != 0)
      {
        v22 = record + 1;
        v20 = archive_entry_ctime(*(v45 + 32));
        set_time_915(v22, v20);
        record += 7;
      }
    }

    extra_tell_used_size(__b, v49);
  }

  if ((v50 & 0x40) != 0)
  {
    v49 = 4;
    if (__b[10] - __b[8] < 4)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 82;
      record[2] = 69;
      record[3] = v49;
      record[4] = 1;
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if ((v50 & 0x20) != 0)
  {
    v49 = 12;
    if (__b[10] - __b[8] < 12)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 80;
      record[2] = 76;
      record[3] = v49;
      record[4] = 1;
      set_num_733((record + 5), *(v47 + 39));
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if ((v50 & 0x10) != 0)
  {
    v49 = 12;
    if (__b[10] - __b[8] < 12)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 67;
      record[2] = 76;
      record[3] = v49;
      record[4] = 1;
      set_num_733((record + 5), *(v53[25] + 156));
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if ((v50 & 2) != 0)
  {
    v49 = 20;
    if (__b[10] - __b[8] < 20)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 80;
      record[2] = 78;
      record[3] = v49;
      record[4] = 1;
      v29 = archive_entry_rdev(*(v45 + 32));
      set_num_733((record + 5), HIDWORD(v29));
      set_num_733((record + 13), v29);
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if (*(v45 + 192))
  {
    v49 = 16;
    if (__b[10] - __b[8] < 16)
    {
      record = extra_next_record(__b, v49);
    }

    if (record)
    {
      record[1] = 90;
      record[2] = 70;
      record[3] = v49;
      record[4] = 1;
      record[5] = 112;
      record[6] = 122;
      record[7] = *(v45 + 192);
      record[8] = *(v45 + 193);
      set_num_733((record + 9), *(v45 + 196));
      record += v49;
    }

    extra_tell_used_size(__b, v49);
  }

  if (v51 == 1 && v53 == v53[4])
  {
    v49 = 28;
    if (record)
    {
      set_SUSP_CE(record + 1, *(v52 + 464), 0, 0xEDu);
    }

    extra_tell_used_size(__b, v49);
  }

  extra_close_record(__b, 0);
  return __b[9];
}

_BYTE *archive_be32enc_1(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

uint64_t extra_open_record(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  *(a4 + 8) = a1;
  if (a1)
  {
    v5 = a1 + a2;
  }

  *a4 = 0;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 36) = a2;
  *(a4 + 32) = a2;
  *(a4 + 40) = 226;
  return v5;
}

uint64_t extra_tell_used_size(uint64_t result, int a2)
{
  if (*result)
  {
    v2 = *(*(*(result + 16) + 32) + 224);
    if (v2)
    {
      *(v2 + 4) += a2;
    }
  }

  *(result + 32) += a2;
  return result;
}

uint64_t extra_next_record(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  extra_close_record(a1, 28);
  *a1 = 1;
  if (*(a1 + 8))
  {
    *(a1 + 24) = *(a1 + 8) + v3 + 1;
    *(a1 + 8) = extra_get_record(*(a1 + 16), (a1 + 40), (a1 + 44), (a1 + 48)) - 1;
  }

  else
  {
    extra_get_record(*(a1 + 16), (a1 + 40), 0, 0);
  }

  *(a1 + 32) = 0;
  if (*(a1 + 40) - *(a1 + 32) < a2)
  {
    extra_next_record(a1, a2);
  }

  return *(a1 + 8);
}

uint64_t set_SUSP_CE(_BYTE *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = a1 - 1;
  *a1 = 67;
  a1[1] = 69;
  a1[2] = 28;
  a1[3] = 1;
  set_num_733((a1 + 4), a2);
  set_num_733((v5 + 13), a3);
  set_num_733((v5 + 21), a4);
  return 28;
}

uint64_t extra_close_record(uint64_t result, int a2)
{
  v3 = result;
  v2 = 0;
  if (a2 > 0)
  {
    result = extra_tell_used_size(result, a2);
  }

  if (*(v3 + 32))
  {
    ++*(v3 + 32);
    if (*(v3 + 8))
    {
      *(*(v3 + 8) + *(v3 + 32)) = 0;
    }

    v2 = 1;
  }

  if (*v3)
  {
    if (*(v3 + 24))
    {
      return set_SUSP_CE(*(v3 + 24), *(v3 + 48), *(v3 + 44), *(v3 + 32) - v2);
    }
  }

  else
  {
    *(v3 + 36) = *(v3 + 32);
  }

  return result;
}

uint64_t extra_get_record(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v9 = *(a1 + 32);
  if (a3)
  {
    record = *(v9 + 224);
    if (2048 - *(record + 4) <= 28 && *(record + 4) != 2020)
    {
      record = *(record + 2056);
    }
  }

  else
  {
    record = extra_last_record(v9);
    if (!record || 2048 - *(record + 4) <= 28 && *(record + 4) != 2020)
    {
      record = malloc_type_malloc(0x810uLL, 0x1020040A4C74593uLL);
      if (!record)
      {
        return 0;
      }

      *record = 0;
      *(record + 4) = 0;
      *(record + 2056) = 0;
      if (!*(v9 + 216))
      {
        *(v9 + 216) = v9 + 208;
      }

      **(v9 + 216) = record;
      *(v9 + 216) = record + 2056;
    }
  }

  *a2 = 2020 - *(record + 4);
  if (*a2)
  {
    --*a2;
  }

  if (a3)
  {
    *a3 = *(record + 4);
  }

  if (a4)
  {
    *a4 = *record;
  }

  *(v9 + 224) = record;
  return record + 8 + *(record + 4);
}

uint64_t extra_last_record(uint64_t a1)
{
  if (*(a1 + 208))
  {
    return *(a1 + 216) - 2056;
  }

  else
  {
    return 0;
  }
}

uint64_t fd_boot_image_size(int a1)
{
  switch(a1)
  {
    case 1:
      return 1228800;
    case 2:
      return 1474560;
    case 3:
      return 2949120;
  }

  return 0;
}

uint64_t _isoent_file_location(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v10 = result;
  if (*(a2 + 56))
  {
    v7 = *(a2 + 104);
    for (i = 0; i < *(a2 + 56); ++i)
    {
      v5 = *(v7 + 8 * i);
      if ((*(v5 + 232) & 2) == 0 && v5 != *(v10 + 66368))
      {
        v4 = *(v5 + 24);
        if (!*(v4 + 188) && !*(v4 + 24))
        {
          result = archive_entry_filetype(*(v4 + 32));
          if (result != 40960 && *(v4 + 152))
          {
            *(v4 + 184) = 1;
          }

          else
          {
            v3 = (*a3)--;
            *(v4 + 164) = v3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t set_VD_bp(uint64_t a1, char a2, char a3)
{
  *(a1 + 1) = a2;
  result = __memcpy_chk();
  *(a1 + 7) = a3;
  return result;
}

uint64_t get_system_identitier(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(&v5, 0x200uLL);
  uname(&v5);
  result = __strncpy_chk();
  *(a1 + a2 - 1) = 0;
  return result;
}

uint64_t set_str_a_characters_bp(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, int a6)
{
  if (a6)
  {
    if (a6 == 1)
    {
      set_str(a2 + a3, a5, a4 - a3 + 1, 32, &a1_characters_map);
      return 0;
    }

    else if (a6 != 3 && a6 != 2)
    {
      return -30;
    }

    else
    {
      return set_str_utf16be(a1, (a2 + a3), a5, a4 - a3 + 1, 32, a6);
    }
  }

  else
  {
    set_str(a2 + a3, a5, a4 - a3 + 1, 32, &a_characters_map);
    return 0;
  }
}

uint64_t set_str_d_characters_bp(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, int a6)
{
  if (a6)
  {
    if (a6 == 1)
    {
      set_str(a2 + a3, a5, a4 - a3 + 1, 32, &d1_characters_map);
      return 0;
    }

    else if (a6 != 3 && a6 != 2)
    {
      return -30;
    }

    else
    {
      return set_str_utf16be(a1, (a2 + a3), a5, a4 - a3 + 1, 32, a6);
    }
  }

  else
  {
    set_str(a2 + a3, a5, a4 - a3 + 1, 32, &d_characters_map);
    return 0;
  }
}

uint64_t set_file_identifier(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, uint64_t a6, unsigned __int8 **a7, const char *a8, int a9, int a10)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a4;
  if (a7[1] && a9 && **a7 != 95)
  {
    if (a10)
    {
      return set_str_d_characters_bp(a5, a1, a2, a3, *a7, a4);
    }

    else
    {
      return set_str_a_characters_bp(a5, a1, a2, a3, *a7, a4);
    }
  }

  if (!a7[1])
  {
    if (a10)
    {
      return set_str_d_characters_bp(a5, a1, a2, a3, 0, a4);
    }

    else
    {
      return set_str_a_characters_bp(a5, a1, a2, a3, 0, a4);
    }
  }

  v13 = *a7;
  if (a9)
  {
    ++v13;
  }

  entry = isoent_find_entry(*a6, v13);
  if (entry)
  {
    v12 = *(entry + 176) + *(entry + 180);
    if (*(a6 + 8) == 1)
    {
      if (v12 > 0xFE)
      {
        v12 = 254;
      }
    }

    else if (v12 > 0xFF)
    {
      v12 = 255;
    }

    __memcpy_chk();
    v23[v12] = 0;
    if (*(a6 + 8) == 1)
    {
      v23[v12 + 1] = 0;
      v18 = 3;
    }

    if (a10)
    {
      return set_str_d_characters_bp(a5, a1, a2, a3, v23, v18);
    }

    else
    {
      return set_str_a_characters_bp(a5, a1, a2, a3, v23, v18);
    }
  }

  return -30;
}

_BYTE *set_date_time(uint64_t a1, time_t a2)
{
  v5 = a1;
  v4 = a2;
  memset(&__b, 0, sizeof(__b));
  get_tmfromtime(&__b, &v4);
  set_digit(v5, 4, __b.tm_year + 1900);
  set_digit(v5 + 4, 2, __b.tm_mon + 1);
  set_digit(v5 + 6, 2, __b.tm_mday);
  set_digit(v5 + 8, 2, __b.tm_hour);
  set_digit(v5 + 10, 2, __b.tm_min);
  set_digit(v5 + 12, 2, __b.tm_sec);
  set_digit(v5 + 14, 2, 0);
  return set_num_712((v5 + 16), __b.tm_gmtoff / 900);
}

uint64_t set_date_time_null(uint64_t a1)
{
  result = __memset_chk();
  *(a1 + 16) = 0;
  return result;
}

uint64_t set_str(uint64_t result, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = result;
  v11 = a2;
  if (!a2)
  {
    v11 = &unk_1BF3442C6;
  }

  while (1)
  {
    v5 = v11++;
    v6 = *v5;
    v9 = v6;
    v8 = 0;
    if (v6)
    {
      v8 = a3 != 0;
    }

    if (!v8)
    {
      break;
    }

    if (v6 >= 0x80u || !*(a5 + v6))
    {
      if (v6 < 0x61u || v6 > 0x7Au)
      {
        v9 = 95;
      }

      else
      {
        v9 = v6 - 32;
      }
    }

    v7 = v12++;
    *v7 = v9;
    --a3;
  }

  if (a3)
  {
    return __memset_chk();
  }

  return result;
}

uint64_t set_str_utf16be(uint64_t a1, unsigned __int8 *a2, char *a3, unint64_t a4, __int16 a5, int a6)
{
  v17 = a3;
  v15 = a4;
  if (!a3)
  {
    v17 = &unk_1BF3442C6;
  }

  if (a4)
  {
    v11 = 1;
    v15 = a4 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v11 = 0;
  }

  if (a6 == 2)
  {
    v10 = *(a1 + 248);
    v6 = strlen(v17);
    if (archive_strncpy_l(v10 + 9, v17, v6, v10[15]) && *__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for UTF-16BE");
      return -30;
    }

    i = v10[10];
    if (i > v15)
    {
      i = v15;
    }
  }

  else
  {
    v9 = v17;
    for (i = 0; ; i += 2)
    {
      v7 = v9;
      v9 += 2;
      if (!*v7)
      {
        break;
      }
    }

    if (i > v15)
    {
      i = v15;
    }
  }

  __memcpy_chk();
  for (j = 0; j < i; j += 2)
  {
    if (!joliet_allowed_char(*a2, a2[1]))
    {
      archive_be16enc_0(a2, 95);
    }

    a2 += 2;
  }

  for (k = v15 - i; k; k -= 2)
  {
    archive_be16enc_0(a2, a5);
    a2 += 2;
  }

  if (v11)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t set_digit(uint64_t result, uint64_t a2, int a3)
{
  while (a2--)
  {
    *(result + a2) = a3 % 10 + 48;
    a3 /= 10;
  }

  return result;
}

_DWORD *set_option_info(_DWORD *result, _DWORD *a2, const char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if (*a2)
  {
    v9 = 44;
  }

  else
  {
    v9 = 32;
  }

  if (a4)
  {
    switch(a4)
    {
      case 1:
        result = archive_string_sprintf(result, "%c%s=%s", v9, a3, a9);
        break;
      case 2:
        result = archive_string_sprintf(result, "%c%s=%d", v9, a3, a9);
        break;
      case 3:
        result = archive_string_sprintf(result, "%c%s=%x", v9, a3, a9);
        break;
    }
  }

  else
  {
    if (a9)
    {
      v10 = &unk_1BF3442C6;
    }

    else
    {
      v10 = "!";
    }

    result = archive_string_sprintf(result, "%c%s%s", v9, v10, a3);
  }

  *a2 = 1;
  return result;
}

uint64_t _write_path_table(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(*(a4 + 16) + 32 * a3 + 24))
  {
    v7 = 0;
    v13 = wb_buffptr(a1);
    v11 = *(*(a1 + 248) + 66272);
    v14 = (v13 - 1);
    v12 = *(*(a4 + 16) + 32 * a3 + 16);
    for (i = 0; i < *(*(a4 + 16) + 32 * a3 + 24); ++i)
    {
      v6 = *(v12 + 8 * i);
      if (*(v6 + 168))
      {
        v5 = *(v6 + 184);
      }

      else
      {
        v5 = 1;
      }

      if (v11 - &v14[-v13 + 1] < (v5 + 9))
      {
        v8 = wb_consume(a1, &v14[-v13 + 1]);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        v13 = wb_buffptr(a1);
        v11 = *(*(a1 + 248) + 66272);
        v14 = (v13 - 1);
      }

      set_num_711(v14 + 1, v5);
      set_num_711(v14 + 2, 0);
      if (a2)
      {
        set_num_732(v14 + 3, *(v6 + 156));
      }

      else
      {
        set_num_731((v14 + 3), *(v6 + 156));
      }

      if (a2)
      {
        set_num_722(v14 + 7, *(*(v6 + 32) + 136));
      }

      else
      {
        set_num_721(v14 + 7, *(*(v6 + 32) + 136));
      }

      if (*(v6 + 168))
      {
        __memcpy_chk();
      }

      else
      {
        v14[9] = 0;
      }

      if (v5)
      {
        v14[v5 + 9] = 0;
        ++v5;
      }

      v7 += v5 + 8;
      v14 += v5 + 8;
    }

    if ((v14 + 1) > v13 && (v9 = wb_consume(a1, &v14[-v13 + 1]), (v9 & 0x80000000) != 0))
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _write_directory_descriptors(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *(a1 + 248);
  v10 = wb_buffptr(a1);
  v11 = &v10[set_directory_record(v10, 0x800uLL, a3, v14, 1u, *(a2 + 8))];
  v12 = &v11[set_directory_record(v11, 2048 - (v11 - v10), a3, v14, 2u, *(a2 + 8))];
  if (*(a3 + 56) > 0 && (*(a2 + 8) == 1 || ((*(v14 + 66416) >> 23) & 3) != 0 || a4 + 1 < *(a2 + 24)))
  {
    v13 = *(a3 + 104);
    for (i = 0; i < *(a3 + 56); ++i)
    {
      v6 = *(v13 + 8 * i);
      v5 = *(v6 + 24);
      if (*(v5 + 24))
      {
        v5 = *(v5 + 24);
      }

      *(v5 + 176) = v5 + 144;
      do
      {
        v7 = set_directory_record(v12, 2048 - (v12 - v10), v6, v14, 3u, *(a2 + 8));
        if (!v7)
        {
          __memset_chk();
          v8 = wb_consume(a1, 0x800uLL);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          v10 = wb_buffptr(a1);
          v12 = v10;
          v7 = set_directory_record(v10, 0x800uLL, v6, v14, 3u, *(a2 + 8));
        }

        v12 += v7;
        *(v5 + 176) = *(*(v5 + 176) + 24);
      }

      while (*(v5 + 176));
    }
  }

  __memset_chk();
  return wb_consume(a1, 0x800uLL);
}

uint64_t make_boot_catalog(uint64_t a1)
{
  v6 = *(a1 + 248);
  v5 = wb_buffptr(a1);
  __memset_chk();
  *v5 = 1;
  *(v5 + 1) = *(v6 + 66376);
  *(v5 + 3) = 0;
  *(v5 + 2) = 0;
  if (*(v6 + 66392))
  {
    __strncpy_chk();
  }

  *(v5 + 27) = 0;
  *(v5 + 29) = 0;
  *(v5 + 28) = 0;
  *(v5 + 30) = 85;
  *(v5 + 31) = -86;
  v4 = 0;
  for (i = v5; i < v5 + 32; i += 2)
  {
    v1 = i;
    v4 += archive_le16dec_0(v1);
  }

  set_num_721((v5 + 28), -v4);
  *(v5 + 32) = -120;
  *(v5 + 33) = *(v6 + 66408);
  if (*(v6 + 66408))
  {
    set_num_721((v5 + 34), 0);
  }

  else
  {
    set_num_721((v5 + 34), *(v6 + 66410));
  }

  *(v5 + 36) = *(v6 + 66409);
  *(v5 + 37) = 0;
  if (*(v6 + 66408))
  {
    set_num_721((v5 + 38), 1);
  }

  else
  {
    set_num_721((v5 + 38), *(v6 + 66412));
  }

  set_num_731(v5 + 40, *(*(*(v6 + 66368) + 24) + 164));
  __memset_chk();
  return wb_consume(a1, 0x800uLL);
}

uint64_t write_file_contents(uint64_t a1, off_t a2, size_t a3)
{
  v9 = *(a1 + 248);
  lseek(*(v9 + 8), a2, 0);
  while (a3)
  {
    v5 = wb_buffptr(a1);
    v7 = *(*(a1 + 248) + 66272);
    if (v7 > a3)
    {
      v7 = a3;
    }

    v6 = read(*(v9 + 8), v5, v7);
    if (v6 <= 0)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Can't read temporary file(%jd)", v6);
      return -30;
    }

    a3 -= v6;
    v8 = wb_consume(a1, v6);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t zisofs_free(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = 0;
  free(*(v3 + 544));
  if (*(v3 + 696) && deflateEnd((v3 + 584)))
  {
    archive_set_error(a1, -1, "Failed to clean up compressor");
    v2 = -30;
  }

  *(v3 + 544) = 0;
  *(v3 + 696) = 0;
  return v2;
}

void isoent_free_all(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    while (1)
    {
      while ((*(v2 + 232) & 2) != 0 && *(v2 + 40))
      {
        v2 = *(v2 + 40);
      }

      while (1)
      {
        v1 = v2;
        if (*(v2 + 112))
        {
          break;
        }

        v2 = *(v2 + 32);
        _isoent_free(v1);
        if (v2 == v1)
        {
          return;
        }
      }

      v2 = *(v2 + 112);
      _isoent_free(v1);
    }
  }
}

void isofile_free_all_entries(uint64_t a1)
{
  for (i = *(a1 + 136); i; i = v1)
  {
    v1 = *i;
    isofile_free(i);
  }
}

void isofile_free_hardlinks(uint64_t a1)
{
  v2 = 0;
  for (i = __archive_rb_tree_iterate((a1 + 168), 0, 0); ; i = v2)
  {
    v1 = 0;
    if (i)
    {
      v2 = __archive_rb_tree_iterate((a1 + 168), i, 1u);
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    __archive_rb_tree_remove_node((a1 + 168), i);
    free(i);
  }
}

uint64_t isofile_hd_cmp_node(uint64_t a1, uint64_t a2)
{
  __s1 = archive_entry_pathname(*(*(a1 + 32) + 32));
  v2 = archive_entry_pathname(*(*(a2 + 32) + 32));
  return strcmp(__s1, v2);
}

uint64_t archive_read_disk_set_standard_lookup(_DWORD *a1)
{
  v3 = malloc_type_malloc(0x818uLL, 0x107004094202FE0uLL);
  v2 = malloc_type_malloc(0x818uLL, 0x107004094202FE0uLL);
  if (v3 && v2)
  {
    __memset_chk();
    *v3 = a1;
    v3[4] = 127;
    __memset_chk();
    *v2 = a1;
    v2[4] = 127;
    archive_read_disk_set_gname_lookup(a1, v2, lookup_gname, cleanup);
    archive_read_disk_set_uname_lookup(a1, v3, lookup_uname, cleanup);
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate uname/gname lookup cache");
    free(v3);
    free(v2);
    return -30;
  }
}

uint64_t lookup_name(uint64_t a1, uint64_t (*a2)(uint64_t, void), unsigned int a3)
{
  ++*(a1 + 24);
  v4 = a3 % *(a1 + 32);
  if (*(a1 + 40 + 16 * v4 + 8))
  {
    if (*(a1 + 40 + 16 * v4) == a3)
    {
      ++*(a1 + 28);
      if (*(a1 + 40 + 16 * v4 + 8) == "(noname)")
      {
        return 0;
      }

      else
      {
        return *(a1 + 40 + 16 * v4 + 8);
      }
    }

    if (*(a1 + 40 + 16 * v4 + 8) != "(noname)")
    {
      free(*(a1 + 40 + 16 * v4 + 8));
    }

    *(a1 + 40 + 16 * v4 + 8) = 0;
  }

  v5 = a2(a1, a3);
  if (v5)
  {
    *(a1 + 40 + 16 * v4 + 8) = v5;
    *(a1 + 40 + 16 * v4) = a3;
    return *(a1 + 40 + 16 * v4 + 8);
  }

  else
  {
    *(a1 + 40 + 16 * v4 + 8) = "(noname)";
    *(a1 + 40 + 16 * v4) = a3;
    return 0;
  }
}

char *lookup_uname_helper(uint64_t a1, uid_t a2)
{
  v12 = a1;
  v11 = a2;
  memset(&__b, 0, sizeof(__b));
  p_b = 0;
  if (!*(v12 + 16))
  {
    *(v12 + 16) = 256;
    v2 = malloc_type_malloc(*(v12 + 16), 0xEF3D371EuLL);
    *(v12 + 8) = v2;
  }

  if (!*(v12 + 8))
  {
    return 0;
  }

  while (1)
  {
    p_b = &__b;
    v6 = getpwuid_r(v11, &__b, *(v12 + 8), *(v12 + 16), &p_b);
    if (v6 != 34)
    {
      break;
    }

    size = 2 * *(v12 + 16);
    v8 = malloc_type_realloc(*(v12 + 8), size, 0x9F27E4EuLL);
    if (!v8)
    {
      break;
    }

    *(v12 + 8) = v8;
    *(v12 + 16) = size;
  }

  if (v6)
  {
    v5 = *v12;
    v3 = __error();
    archive_set_error(v5, *v3, "Can't lookup user for id %d", v11);
    return 0;
  }

  else if (p_b)
  {
    return strdup(p_b->pw_name);
  }

  else
  {
    return 0;
  }
}

char *lookup_gname_helper(uint64_t a1, gid_t a2)
{
  v11 = a1;
  v10 = a2;
  memset(&v9, 0, sizeof(v9));
  v8 = 0;
  if (!*(a1 + 16))
  {
    *(v11 + 16) = 256;
    *(v11 + 8) = malloc_type_malloc(*(v11 + 16), 0x3E9F8AD5uLL);
  }

  if (!*(v11 + 8))
  {
    return 0;
  }

  while (1)
  {
    v8 = &v9;
    v5 = getgrgid_r(v10, &v9, *(v11 + 8), *(v11 + 16), &v8);
    if (v5 != 34)
    {
      break;
    }

    size = 2 * *(v11 + 16);
    v7 = malloc_type_realloc(*(v11 + 8), size, 0x7803D69BuLL);
    if (!v7)
    {
      break;
    }

    *(v11 + 8) = v7;
    *(v11 + 16) = size;
  }

  if (v5)
  {
    v4 = *v11;
    v2 = __error();
    archive_set_error(v4, *v2, "Can't lookup group for id %d", v10);
    return 0;
  }

  else if (v8)
  {
    return strdup(v8->gr_name);
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_add_filter_grzip(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_grzip") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    if (v2)
    {
      *v2 = __archive_write_program_allocate("grzip");
      if (*v2)
      {
        v3[10] = "grzip";
        *(v3 + 22) = 12;
        v3[9] = v2;
        v3[4] = archive_write_grzip_open;
        v3[3] = archive_write_grzip_options;
        v3[5] = archive_write_grzip_write;
        v3[7] = archive_write_grzip_close;
        v3[8] = archive_write_grzip_free;
        archive_set_error(a1, -1, "Using external grzip program for grzip compression");
        return -20;
      }

      else
      {
        free(v2);
        archive_set_error(a1, 12, "Can't allocate memory");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate memory");
      return -30;
    }
  }
}

uint64_t archive_write_grzip_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(*v2);
  free(v2);
  return 0;
}

uint64_t archive_read_support_filter_rpm(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("rpm"))
  {
    return __archive_read_register_bidder(a1, 0, "rpm", rpm_bidder_vtable);
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlement");
    return -30;
  }
}

uint64_t rpm_bidder_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  v3 = 0;
  __s1 = __archive_read_filter_ahead(a2, 8uLL, &v3);
  if (__s1)
  {
    if (!memcmp(__s1, "\xED\xAB\xEE\xDBCan't allocate data for rpm", 4uLL))
    {
      if (*(__s1 + 4) == 3 || *(__s1 + 4) == 4)
      {
        if (*(__s1 + 6))
        {
          return 0;
        }

        else if (!*(__s1 + 7) || *(__s1 + 7) == 1)
        {
          return 56;
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

uint64_t rpm_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 8;
  *(a1 + 48) = "rpm";
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
  if (v2)
  {
    *(a1 + 40) = v2;
    v2[10] = 0;
    *(a1 + 32) = rpm_reader_vtable;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for rpm");
    return -30;
  }
}

unint64_t rpm_filter_read(uint64_t a1, void *a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v14 = *(a1 + 40);
  *a2 = 0;
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v10 = 0;
  while (1)
  {
    if (!v13)
    {
      v13 = __archive_read_filter_ahead(*(v16 + 16), 1uLL, &v12);
      if (!v13)
      {
        break;
      }
    }

    v4 = *(v14 + 40);
    if (v4)
    {
      switch(v4)
      {
        case 1:
          v8 = 16 - *(v14 + 8);
          if (v8 > v12 - v10)
          {
            v8 = v12 - v10;
          }

          __memcpy_chk();
          v13 += v8;
          v10 += v8;
          *(v14 + 8) += v8;
          if (*(v14 + 8) == 16)
          {
            if (*(v14 + 24) == 142 && *(v14 + 25) == 173 && *(v14 + 26) == 232 && *(v14 + 27) == 1)
            {
              v6 = archive_be32dec_0((v14 + 32));
              v5 = archive_be32dec_0((v14 + 36));
              *(v14 + 16) = (16 * v6 + 16 + v5);
              *(v14 + 40) = 2;
              *(v14 + 44) = 0;
            }

            else
            {
              if (*(v14 + 44))
              {
                archive_set_error(*(v16 + 24), 79, "Unrecognized rpm header");
                return -30;
              }

              *(v14 + 40) = 4;
              *v15 = v14 + 24;
              v11 = *(v14 + 8);
            }
          }

          break;
        case 2:
          v9 = *(v14 + 16) - *(v14 + 8);
          if (v9 > v12 - v10)
          {
            v9 = v12 - v10;
          }

          v13 += v9;
          v10 += v9;
          *(v14 + 8) += v9;
          if (*(v14 + 8) == *(v14 + 16))
          {
            *(v14 + 40) = 3;
          }

          break;
        case 3:
          while (v10 < v12)
          {
            if (*v13)
            {
              *(v14 + 40) = 1;
              *(v14 + 8) = 0;
              *(v14 + 16) = 0;
              goto LABEL_39;
            }

            ++v13;
            ++v10;
          }

          break;
        case 4:
          *v15 = v13;
          v11 = v12;
          v10 = v12;
          break;
      }
    }

    else if ((*v14 + v12) < 96)
    {
      v10 += v12;
    }

    else
    {
      v7 = 96 - *v14;
      v10 += v7;
      v13 += v7;
      *(v14 + 40) = 1;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 44) = 1;
    }

LABEL_39:
    if (v10 == v12)
    {
      *v14 += v10;
      __archive_read_filter_consume(*(v16 + 16), v10);
      v13 = 0;
      v10 = 0;
    }

    v3 = 0;
    if (!v11)
    {
      v3 = v12 > 0;
    }

    if (!v3)
    {
      goto LABEL_44;
    }
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    return -30;
  }

LABEL_44:
  if (v10 && v13)
  {
    *v14 += v10;
    __archive_read_filter_consume(*(v16 + 16), v10);
  }

  return v11;
}

uint64_t archive_read_extract(_DWORD *a1, uint64_t a2, int a3)
{
  v5 = __archive_read_get_extract(a1);
  if (v5)
  {
    if (!*v5)
    {
      *v5 = archive_write_disk_new();
      if (!*v5)
      {
        archive_set_error(a1, 12, "Can't extract");
        return -30;
      }

      archive_write_disk_set_standard_lookup(*v5);
    }

    archive_write_disk_set_options(*v5, a3);
    return archive_read_extract2(a1, a2, *v5);
  }

  return -30;
}

uint64_t pack_native(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = *(a2 + 8) | (*a2 << 24);
    if (HIBYTE(v4) == *a2)
    {
      if ((*(a2 + 8) & 0xFFFFFF) != *(a2 + 8))
      {
        *a3 = "invalid minor number";
      }
    }

    else
    {
      *a3 = "invalid major number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_find(const void *a1)
{
  v2 = bsearch(a1, &formats, 0x10uLL, 0x10uLL, compare_format);
  if (v2)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t pack_8_8(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFF00 | *(a2 + 8);
    if ((*a2 << 8) >> 8 != *a2)
    {
      *a3 = "invalid major number";
    }

    if (v4 != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_bsdos(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 20) | *(a2 + 8) & 0xFFFFF;
    if ((*a2 & 0xFFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFFF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else if (a1 == 3)
  {
    v4 = (*a2 << 20) | (*(a2 + 8) << 8) & 0xFFF00 | *(a2 + 16);
    if ((*a2 & 0xFFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFF00) >> 8 != *(a2 + 8))
    {
      *a3 = "invalid unit number";
    }

    if (v4 != *(a2 + 16))
    {
      *a3 = "invalid subunit number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}
uint64_t pack_freebsd(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFF00 | *(a2 + 8) & 0xFFFF00FF;
    if ((*a2 << 8) >> 8 != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFF00FF) != *(a2 + 8))
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

uint64_t pack_8_24(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 24) | *(a2 + 8) & 0xFFFFFF;
    if (*a2 != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFFFF) != *(a2 + 8))
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

uint64_t pack_netbsd(int a1, _DWORD *a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFFF00 | (a2[2] << 12) & 0xFFF00000 | *(a2 + 1);
    if (((*a2 << 8) & 0xFFF00) >> 8 == *a2)
    {
      if ((v4 | ((v4 & 0xFFF00000) >> 12)) != *(a2 + 1))
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

uint64_t pack_12_20(int a1, uint64_t a2, void *a3)
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

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_14_18(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 18) | *(a2 + 8) & 0x3FFFF;
    if ((*a2 & 0x3FFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0x3FFFF) != *(a2 + 8))
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

uint64_t archive_read_open_fd(_DWORD *a1, int a2, size_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  memset(&__b, 0, sizeof(__b));
  archive_clear_error(v11);
  if (fstat(v10, &__b))
  {
    v5 = v11;
    v3 = __error();
    archive_set_error(v5, *v3, "Can't stat fd %d", v10);
    return -30;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040E8018C35uLL);
    v6 = malloc_type_malloc(v9, 0xCB978130uLL);
    if (v7 && v6)
    {
      v7[1] = v9;
      v7[3] = v6;
      *v7 = v10;
      if ((__b.st_mode & 0xF000) == 0x8000)
      {
        archive_read_extract_set_skip_file(v11, __b.st_dev, __b.st_ino);
        *(v7 + 16) = 1;
      }

      archive_read_set_read_callback(v11, file_read);
      archive_read_set_skip_callback(v11, file_skip);
      archive_read_set_seek_callback(v11, file_seek);
      archive_read_set_close_callback(v11, file_close);
      archive_read_set_callback_data(v11, v7);
      return archive_read_open1(v11);
    }

    else
    {
      archive_set_error(v11, 12, "No memory");
      free(v7);
      free(v6);
      return -30;
    }
  }
}

ssize_t file_read(_DWORD *a1, _DWORD *a2, void *a3)
{
  *a3 = *(a2 + 3);
  while (1)
  {
    v5 = read(*a2, *(a2 + 3), *(a2 + 1));
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Error reading fd %d", *a2);
      return v5;
    }
  }

  return v5;
}

off_t file_skip(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = a3 / *(a2 + 8) * *(a2 + 8);
  if (!v7)
  {
    return 0;
  }

  v6 = lseek(*a2, 0, 1);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v5 = lseek(*a2, v7, 1);
    if ((v5 & 0x8000000000000000) == 0)
    {
      return v5 - v6;
    }
  }

  *(a2 + 16) = 0;
  if (*__error() == 29)
  {
    return 0;
  }

  v3 = __error();
  archive_set_error(a1, *v3, "Error seeking");
  return -1;
}

off_t file_seek(_DWORD *a1, int *a2, off_t a3, int a4)
{
  v7 = lseek(*a2, a3, a4);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return v7;
  }

  if (*__error() == 29)
  {
    v4 = __error();
    archive_set_error(a1, *v4, "A file descriptor(%d) is not seekable(PIPE)", *a2);
    return -25;
  }

  else
  {
    v5 = __error();
    archive_set_error(a1, *v5, "Error seeking in a file descriptor(%d)", *a2);
    return -30;
  }
}

uint64_t file_close(uint64_t a1, void **a2)
{
  free(a2[3]);
  free(a2);
  return 0;
}

uint64_t archive_write_add_filter_lzop(unsigned int *a1)
{
  v3 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lzop") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (v2)
    {
      v3[10] = "lzop";
      *(v3 + 22) = 11;
      v3[9] = v2;
      v3[4] = archive_write_lzop_open;
      v3[3] = archive_write_lzop_options;
      v3[5] = archive_write_lzop_write;
      v3[7] = archive_write_lzop_close;
      v3[8] = archive_write_lzop_free;
      v2[1] = __archive_write_program_allocate("lzop");
      if (v2[1])
      {
        *v2 = 0;
        archive_set_error(a1, -1, "Using external lzop program for lzop compression");
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

uint64_t archive_write_lzop_open(uint64_t a1)
{
  v5 = a1;
  v4 = *(a1 + 72);
  memset(v3, 0, sizeof(v3));
  archive_strncat(v3, "lzop", 4uLL);
  if (*v4 > 0)
  {
    archive_strappend_char(v3, 32);
    archive_strappend_char(v3, 45);
    archive_strappend_char(v3, *v4 + 48);
  }

  v2 = __archive_write_program_open(v5, *(v4 + 8), v3[0]);
  archive_string_free(v3);
  return v2;
}

uint64_t archive_write_lzop_options(uint64_t a1, const char *a2, char *a3)
{
  v4 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 49 && *a3 <= 57 && !a3[1])
    {
      *v4 = *a3 - 48;
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

uint64_t archive_write_lzop_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[1]);
  free(v2);
  return 0;
}

uint64_t archive_read_open_FILE(_DWORD *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  memset(&__b, 0, sizeof(__b));
  archive_clear_error(v8);
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00406E3BE4FBuLL);
  v4 = malloc_type_malloc(0x20000uLL, 0xD675D822uLL);
  if (v5 && v4)
  {
    v5[1] = 0x20000;
    v5[2] = v4;
    *v5 = v7;
    v2 = fileno(*v5);
    if (!fstat(v2, &__b) && (__b.st_mode & 0xF000) == 0x8000)
    {
      archive_read_extract_set_skip_file(v8, __b.st_dev, __b.st_ino);
      *(v5 + 24) = 1;
    }

    archive_read_set_read_callback(v8, FILE_read);
    archive_read_set_skip_callback(v8, FILE_skip);
    archive_read_set_seek_callback(v8, FILE_seek);
    archive_read_set_close_callback(v8, FILE_close);
    archive_read_set_callback_data(v8, v5);
    return archive_read_open1(v8);
  }

  else
  {
    archive_set_error(v8, 12, "No memory", FILE_read, FILE_skip, FILE_seek, FILE_close);
    free(v5);
    free(v4);
    return -30;
  }
}

size_t FILE_read(_DWORD *a1, uint64_t a2, void *a3)
{
  *a3 = *(a2 + 16);
  v5 = fread(*(a2 + 16), 1uLL, *(a2 + 8), *a2);
  if (v5 < *(a2 + 8) && ferror(*a2))
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Error reading file");
  }

  return v5;
}

off_t FILE_skip(uint64_t a1, uint64_t a2, off_t a3)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (!fseeko(*a2, a3, 1))
  {
    return a3;
  }

  *(a2 + 24) = 0;
  return 0;
}

off_t FILE_seek(_DWORD *a1, FILE **a2, off_t a3, int a4)
{
  if (!fseeko(*a2, a3, a4))
  {
    return ftello(*a2);
  }

  v4 = __error();
  archive_set_error(a1, *v4, "Error seeking in FILE* pointer");
  return -30;
}

uint64_t FILE_close(uint64_t a1, void **a2)
{
  free(a2[2]);
  free(a2);
  return 0;
}

uint64_t blake2s_init_param(uint64_t a1, unsigned __int8 *a2)
{
  blake2s_init0(a1);
  for (i = 0; i < 8; ++i)
  {
    *(a1 + 4 * i) ^= load32(&a2[4 * i]);
  }

  *(a1 + 120) = *a2;
  return 0;
}

uint64_t blake2s_init0(uint64_t a1)
{
  result = __memset_chk();
  for (i = 0; i < 8; ++i)
  {
    *(a1 + 4 * i) = blake2s_IV[i];
  }

  return result;
}

uint64_t store32(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t blake2s_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = a3;
  if (a3)
  {
    v4 = 64 - *(a1 + 112);
    if (a3 > v4)
    {
      *(a1 + 112) = 0;
      __memcpy_chk();
      blake2s_increment_counter(a1, 0x40u);
      blake2s_compress(a1, a1 + 48);
      v6 = a2 + v4;
      for (v7 -= v4; v7 > 0x40; v7 -= 64)
      {
        blake2s_increment_counter(a1, 0x40u);
        blake2s_compress(a1, v6);
        v6 += 64;
      }
    }

    __memcpy_chk();
    *(a1 + 112) += v7;
  }

  return 0;
}

uint64_t blake2s_increment_counter(uint64_t result, unsigned int a2)
{
  *(result + 32) += a2;
  v2 = *(result + 36);
  if (*(result + 32) < a2)
  {
    ++v2;
  }

  *(result + 36) = v2;
  return result;
}

uint64_t blake2s_compress(_DWORD *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  for (i = 0; i < 0x10; ++i)
  {
    *(&v24 + i) = load32((a2 + 4 * i));
  }

  for (j = 0; j < 8; ++j)
  {
    *(&v8 + j) = a1[j];
  }

  v16 = 1779033703;
  v17 = -1150833019;
  v18 = 1013904242;
  v19 = -1521486534;
  v20 = a1[8] ^ 0x510E527F;
  v21 = a1[9] ^ 0x9B05688C;
  v22 = a1[10] ^ 0x1F83D9AB;
  v23 = a1[11] ^ 0x5BE0CD19;
  v8 += v12 + *(&v24 + blake2s_sigma);
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B685);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v26;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B687);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v28;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B689);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v30;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B68B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v32;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B68D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v34;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B68F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v36;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B691);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v38;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B693);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v38;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B695);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v28;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B697);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v33;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B699);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v37;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B69B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v25;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B69D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v24;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B69F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v35;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6A1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v29;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6A3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v35;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6A5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v36;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + v24;
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v29;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6A9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v39;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6AB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v34;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6AD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v27;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6AF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v31;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6B1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v33;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6B3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v31;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6B5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v27;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6B7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v37;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6B9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v35;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6BB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v26;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6BD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v29;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6BF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v28;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + v24;
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v39;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6C3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v33;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + v24;
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v29;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6C7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v26;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6C9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v34;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6CB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v38;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6CD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v35;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6CF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v30;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6D1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v27;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6D3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v26;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6D5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v30;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6D7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v24;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6D9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v32;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6DB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v28;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6DD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v31;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6DF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v39;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6E1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v25;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6E3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v36;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6E5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v25;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6E7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v38;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6E9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v28;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6EB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v24;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6ED);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v30;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6EF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v33;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6F1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v32;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6F3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v37;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6F5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v31;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6F7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v36;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6F9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v27;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6FB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v29;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + v24;
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v39;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6FF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v32;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B701);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v26;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B703);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v30;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B705);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v38;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B707);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v35;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B709);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v24;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B70B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v36;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B70D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v37;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B70F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v25;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B711);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v34;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B713);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v34;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B715);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v32;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B717);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v31;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B719);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v25;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B71B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v39;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B71D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v33;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B71F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v27;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B721);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v37;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + v24;
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  result = rotr32(v12 ^ v17, 7);
  v12 = result;
  for (k = 0; k < 8; ++k)
  {
    a1[k] ^= *(&v8 + k) ^ *(&v8 + k + 8);
  }

  return result;
}

uint64_t blake2s_final(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  if (a2 && a3 >= *(a1 + 120))
  {
    if (blake2s_is_lastblock(a1))
    {
      return -1;
    }

    else
    {
      blake2s_increment_counter(a1, *(a1 + 112));
      blake2s_set_lastblock(a1);
      __memset_chk();
      blake2s_compress(a1, a1 + 48);
      for (i = 0; i < 8; ++i)
      {
        store32(v7 + 4 * i, *(a1 + 4 * i));
      }

      __memcpy_chk();
      secure_zero_memory(v7, 32);
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t blake2s_set_lastblock(uint64_t result)
{
  v1 = result;
  if (*(result + 128))
  {
    result = blake2s_set_lastnode(result);
  }

  *(v1 + 40) = -1;
  return result;
}

uint64_t archive_read_open_filename(_DWORD *a1, const char *a2, uint64_t a3)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = 0;
  return archive_read_open_filenames(a1, v4, a3);
}

uint64_t archive_read_open_filenames(_DWORD *a1, const char **a2, uint64_t a3)
{
  v10 = a2;
  v7 = 0;
  if (a2)
  {
    v10 = a2 + 1;
    v7 = *a2;
  }

  archive_clear_error(a1);
  do
  {
    if (!v7)
    {
      v7 = &unk_1BF3442C6;
    }

    v3 = strlen(v7);
    v8 = malloc_type_calloc(1uLL, v3 + 40, 0x1080040C3949B75uLL);
    if (!v8)
    {
      archive_set_error(a1, 12, "No memory");
      return -30;
    }

    __strcpy_chk();
    v8[1] = a3;
    *v8 = -1;
    v8[2] = 0;
    *(v8 + 26) = 0;
    *(v8 + 12) = 0;
    *(v8 + 7) = v7 && *v7;
    if (archive_read_append_callback_data(a1, v8))
    {
      return -30;
    }

    if (!v10)
    {
      break;
    }

    v4 = v10++;
    v7 = *v4;
    v6 = 0;
    if (*v4)
    {
      v6 = *v7 != 0;
    }
  }

  while (v6);
  archive_read_set_open_callback(a1, file_open);
  archive_read_set_read_callback(a1, file_read_0);
  archive_read_set_skip_callback(a1, file_skip_0);
  archive_read_set_close_callback(a1, file_close_0);
  archive_read_set_switch_callback(a1, file_switch);
  archive_read_set_seek_callback(a1, file_seek_0);
  return archive_read_open1(a1);
}

uint64_t file_open(_DWORD *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  memset(&__b, 0, sizeof(__b));
  v14 = v16;
  v11 = -1;
  v10 = 0;
  archive_clear_error(v17);
  if (*(v14 + 28))
  {
    if (*(v14 + 28) != 1)
    {
      archive_set_error(v17, -1, "Unexpedted operation in archive_read_open_filename");
      goto LABEL_24;
    }

    v12 = (v14 + 32);
    v11 = open((v14 + 32), 0x1000000);
    __archive_ensure_cloexec_flag(v11);
    if ((v11 & 0x80000000) != 0)
    {
      v8 = v17;
      v3 = __error();
      archive_set_error(v8, *v3, "Failed to open '%s'", v12);
      return -30;
    }

    v2 = fstat(v11, &__b);
  }

  else
  {
    v11 = 0;
    v12 = &unk_1BF3442C6;
    v2 = fstat(0, &__b);
  }

  if (v2)
  {
    v7 = v17;
    v4 = __error();
    archive_set_error(v7, *v4, "Can't stat '%s'", v12);
    goto LABEL_24;
  }

  if ((__b.st_mode & 0xF000) == 0x8000)
  {
    archive_read_extract_set_skip_file(v17, __b.st_dev, __b.st_ino);
    v10 = 1;
  }

  if (v10)
  {
    for (i = 0x10000; ; i *= 2)
    {
      v6 = 0;
      if (i < *(v14 + 8))
      {
        v6 = i < 0x4000000;
      }

      if (!v6)
      {
        break;
      }
    }

    *(v14 + 8) = i;
  }

  v13 = malloc_type_malloc(*(v14 + 8), 0x6C480703uLL);
  if (!v13)
  {
    archive_set_error(v17, 12, "No memory");
LABEL_24:
    if (v11 != -1 && v11)
    {
      close(v11);
    }

    return -30;
  }

  *(v14 + 16) = v13;
  *v14 = v11;
  *(v14 + 24) = __b.st_mode;
  if (v10)
  {
    *(v14 + 26) = 1;
  }

  return 0;
}

ssize_t file_read_0(_DWORD *a1, uint64_t a2, void *a3)
{
  *a3 = *(a2 + 16);
  while (1)
  {
    v7 = read(*a2, *(a2 + 16), *(a2 + 8));
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      if (*(a2 + 28))
      {
        if (*(a2 + 28) == 1)
        {
          v4 = __error();
          archive_set_error(a1, *v4, "Error reading '%s'", (a2 + 32));
        }

        else
        {
          v5 = __error();
          archive_set_error(a1, *v5, "Error reading '%S'", (a2 + 32));
        }
      }

      else
      {
        v3 = __error();
        archive_set_error(a1, *v3, "Error reading stdin");
      }

      return v7;
    }
  }

  return v7;
}

off_t file_skip_0(_DWORD *a1, uint64_t a2, off_t a3)
{
  if (*(a2 + 26))
  {
    return file_skip_lseek(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t file_close_0(uint64_t a1, void *a2)
{
  file_close2(a1, a2);
  free(a2);
  return 0;
}

off_t file_seek_0(_DWORD *a1, uint64_t a2, off_t a3, int a4)
{
  v8 = lseek(*a2, a3, a4);
  if ((v8 & 0x8000000000000000) == 0)
  {
    return v8;
  }

  if (*(a2 + 28))
  {
    if (*(a2 + 28) == 1)
    {
      v5 = __error();
      archive_set_error(a1, *v5, "Error seeking in '%s'", (a2 + 32));
    }

    else
    {
      v6 = __error();
      archive_set_error(a1, *v6, "Error seeking in '%S'", (a2 + 32));
    }
  }

  else
  {
    v4 = __error();
    archive_set_error(a1, *v4, "Error seeking in stdin");
  }

  return -30;
}

uint64_t archive_read_open_filename_w(_DWORD *a1, const __int32 *a2, uint64_t a3)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = 0;
  return archive_read_open_filenames_w(a1, v4, a3);
}

uint64_t archive_read_open_filenames_w(_DWORD *a1, const __int32 **a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  if (a2)
  {
    v3 = v15++;
    v12 = *v3;
  }

  archive_clear_error(v16);
  while (1)
  {
    if (!v12)
    {
      v12 = &unk_1BF33B724;
    }

    v4 = wcslen(v12);
    v13 = malloc_type_calloc(1uLL, 4 * v4 + 40, 0x1080040C3949B75uLL);
    if (!v13)
    {
      archive_set_error(v16, 12, "No memory");
      return -30;
    }

    v13[1] = v14;
    *v13 = -1;
    if (v12)
    {
      if (*v12)
      {
        break;
      }
    }

    *(v13 + 7) = 0;
LABEL_17:
    if (archive_read_append_callback_data(v16, v13))
    {
      return -30;
    }

    if (v15)
    {
      v7 = v15++;
      v12 = *v7;
      v9 = 0;
      if (v12)
      {
        v9 = *v12 != 0;
      }

      if (v9)
      {
        continue;
      }
    }

    archive_read_set_open_callback(v16, file_open);
    archive_read_set_read_callback(v16, file_read_0);
    archive_read_set_skip_callback(v16, file_skip_0);
    archive_read_set_close_callback(v16, file_close_0);
    archive_read_set_switch_callback(v16, file_switch);
    archive_read_set_seek_callback(v16, file_seek_0);
    return archive_read_open1(v16);
  }

  memset(v11, 0, sizeof(v11));
  v5 = wcslen(v12);
  if (!archive_string_append_from_wcs(v11, v12, v5))
  {
    *(v13 + 7) = 1;
    __strcpy_chk();
    archive_string_free(v11);
    goto LABEL_17;
  }

  if (*__error() == 12)
  {
    v10 = v16;
    v6 = __error();
    archive_set_error(v10, *v6, "Can't allocate memory");
  }

  else
  {
    archive_set_error(v16, 22, "Failed to convert a wide-character filename to a multi-byte filename");
  }

  archive_string_free(v11);
  free(v13);
  return -30;
}

off_t file_skip_lseek(_DWORD *a1, uint64_t a2, off_t a3)
{
  v9 = lseek(*a2, 0, 1);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v8 = lseek(*a2, a3, 1);
    if ((v8 & 0x8000000000000000) == 0)
    {
      return v8 - v9;
    }
  }

  *(a2 + 26) = 0;
  if (*__error() == 29)
  {
    return 0;
  }

  if (*(a2 + 28))
  {
    if (*(a2 + 28) == 1)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Error seeking in '%s'", (a2 + 32));
    }

    else
    {
      v5 = __error();
      archive_set_error(a1, *v5, "Error seeking in '%S'", (a2 + 32));
    }
  }

  else
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Error seeking in stdin");
  }

  return -1;
}

uint64_t file_close2(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    if ((*(a2 + 24) & 0xF000) != 0x8000 && (*(a2 + 24) & 0xF000) != 0x2000 && (*(a2 + 24) & 0xF000) != 0x6000)
    {
        ;
      }
    }

    if (*(a2 + 28))
    {
      close(*a2);
    }
  }

  free(*(a2 + 16));
  *(a2 + 16) = 0;
  *a2 = -1;
  return 0;
}

uint64_t __archive_cmdline_parse(void **a1, char *a2)
{
  v12 = a1;
  v11 = a2;
  __s = 0;
  v9 = 0;
  v10 = 0;
  argument = get_argument(&__s, a2);
  if (argument < 0)
  {
    v4 = -25;
  }

  else if (v9)
  {
    v4 = cmdline_set_path(v12, __s);
    if (!v4)
    {
      v7 = strrchr(__s, 47);
      v2 = v7 ? cmdline_add_arg(v12, v7 + 1) : cmdline_add_arg(v12, __s);
      v4 = v2;
      if (!v2)
      {
        v11 += argument;
        while (1)
        {
          v6 = get_argument(&__s, v11);
          if (v6 < 0)
          {
            v4 = -25;
            goto LABEL_19;
          }

          if (!v6)
          {
            break;
          }

          v11 += v6;
          if (!v9 && !*v11)
          {
            break;
          }

          v4 = cmdline_add_arg(v12, __s);
          if (v4)
          {
            goto LABEL_19;
          }
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = -25;
  }

LABEL_19:
  archive_string_free(&__s);
  return v4;
}

uint64_t get_argument(void *a1, char *a2)
{
  v6 = a2;
  a1[1] = 0;
  while (1)
  {
    v4 = 0;
    if (*v6)
    {
      v4 = *v6 == 32;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  while (1)
  {
    v3 = 0;
    if (*v6)
    {
      v3 = *v6 != 32;
    }

    if (!v3)
    {
      break;
    }

    if (*v6 == 92)
    {
      if (!v6[1])
      {
        return ++v6 - a2;
      }

      archive_strappend_char(a1, v6[1]);
      v6 += 2;
    }

    else if (*v6 == 34)
    {
      quotation = extract_quotation(a1, v6);
      if ((quotation & 0x8000000000000000) != 0)
      {
        return -25;
      }

      v6 = &quotation[v6];
    }

    else
    {
      archive_strappend_char(a1, *v6++);
    }
  }

  return v6 - a2;
}

uint64_t cmdline_set_path(void **a1, const char *a2)
{
  ptr = *a1;
  v2 = strlen(a2);
  v5 = malloc_type_realloc(ptr, v2 + 1, 0x481F1DD0uLL);
  if (v5)
  {
    *a1 = v5;
    __strcpy_chk();
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t cmdline_add_arg(uint64_t a1, const char *a2)
{
  if (*a1)
  {
    v5 = malloc_type_realloc(*(a1 + 8), 8 * (*(a1 + 16) + 2), 0x10040436913F5uLL);
    if (v5)
    {
      *(a1 + 8) = v5;
      *(*(a1 + 8) + 8 * *(a1 + 16)) = strdup(a2);
      if (*(*(a1 + 8) + 8 * *(a1 + 16)))
      {
        v2 = *(a1 + 8);
        v3 = *(a1 + 16) + 1;
        *(a1 + 16) = v3;
        *(v2 + 8 * v3) = 0;
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
    return -25;
  }
}

uint64_t __archive_cmdline_free(void **a1)
{
  if (a1)
  {
    free(*a1);
    if (a1[1])
    {
      for (i = 0; *(a1[1] + i); ++i)
      {
        free(*(a1[1] + i));
      }

      free(a1[1]);
    }

    free(a1);
  }

  return 0;
}

char *extract_quotation(void *a1, uint64_t a2)
{
  v3 = (a2 + 1);
  while (*v3)
  {
    if (*v3 == 92)
    {
      if (v3[1])
      {
        archive_strappend_char(a1, v3[1]);
        v3 += 2;
      }

      else
      {
        ++v3;
      }
    }

    else
    {
      if (*v3 == 34)
      {
        break;
      }

      archive_strappend_char(a1, *v3++);
    }
  }

  if (*v3 == 34)
  {
    return &v3[-a2 + 1];
  }

  else
  {
    return -25;
  }
}

uint64_t memory_read_seek(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      a2[1] += a3;
    }

    else
    {
      if (a4 != 2)
      {
        return -30;
      }

      a2[1] = a2[2] + a3;
    }
  }

  else
  {
    a2[1] = *a2 + a3;
  }

  if (a2[1] >= *a2)
  {
    if (a2[1] > a2[2])
    {
      a2[1] = a2[2];
      return -25;
    }

    else
    {
      return a2[1] - *a2;
    }
  }

  else
  {
    a2[1] = *a2;
    return -25;
  }
}

uint64_t memory_read_skip(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  if (a3 > a2[2] - a2[1])
  {
    v5 = a2[2] - a2[1];
  }

  v3 = v5 / a2[3] * a2[3];
  a2[1] += v3;
  return v3;
}

uint64_t archive_read_support_filter_bzip2(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("bzip2"))
  {
    if (__archive_read_register_bidder(a1, 0, "bzip2", bzip2_bidder_vtable))
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
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements");
    return -30;
  }
}

uint64_t bzip2_reader_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  v3 = 0;
  __s1 = __archive_read_filter_ahead(a2, 0xEuLL, &v3);
  if (__s1)
  {
    if (!memcmp(__s1, "BZh", 3uLL))
    {
      if (*(__s1 + 3) >= 0x31u && *(__s1 + 3) <= 0x39u)
      {
        if (!memcmp(__s1 + 4, "1AY&SY", 6uLL) || !memcmp(__s1 + 4, "\x17rE8P\x90", 6uLL))
        {
          return 77;
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

uint64_t bzip2_reader_init(uint64_t a1)
{
  *(a1 + 56) = 2;
  *(a1 + 48) = "bzip2";
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040447FF9D5uLL);
  v4 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v2 && v4)
  {
    *(a1 + 40) = v2;
    v2[11] = 0x10000;
    v2[10] = v4;
    *(a1 + 32) = bzip2_reader_vtable;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for bzip2 decompression", v2);
    free(v4);
    free(v3);
    return -30;
  }
}

int64_t bzip2_filter_read(uint64_t a1, char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v9 = *(a1 + 40);
  if (BYTE1(v9[1].total_in_hi32))
  {
    *v10 = 0;
    return 0;
  }

  v9->next_out = v9[1].next_in;
  v9->avail_out = *&v9[1].avail_in;
  while (1)
  {
    if (LOBYTE(v9[1].total_in_hi32))
    {
      goto LABEL_21;
    }

    if (!bzip2_reader_bid(*(v11 + 8), *(v11 + 16)))
    {
      BYTE1(v9[1].total_in_hi32) = 1;
      *v10 = v9[1].next_in;
      return v9->next_out - v9[1].next_in;
    }

    v6 = BZ2_bzDecompressInit(v9, 0, 0);
    if (v6 == -3)
    {
      v6 = BZ2_bzDecompressInit(v9, 0, 1);
    }

    if (v6)
    {
      break;
    }

    LOBYTE(v9[1].total_in_hi32) = 1;
LABEL_21:
    v7 = __archive_read_filter_ahead(*(v11 + 16), 1uLL, &v6);
    if (!v7)
    {
      archive_set_error(*(v11 + 24), -1, "truncated bzip2 input");
      return -30;
    }

    v9->next_in = v7;
    v9->avail_in = v6;
    if (!v6)
    {
      BYTE1(v9[1].total_in_hi32) = 1;
      *v10 = v9[1].next_in;
      return v9->next_out - v9[1].next_in;
    }

    v6 = BZ2_bzDecompress(v9);
    __archive_read_filter_consume(*(v11 + 16), &v9->next_in[-v7]);
    if (v6)
    {
      if (v6 != 4)
      {
        archive_set_error(*(v11 + 24), -1, "bzip decompression failed");
        return -30;
      }

      if (BZ2_bzDecompressEnd(v9))
      {
        archive_set_error(*(v11 + 24), -1, "Failed to clean up decompressor");
        return -30;
      }

      LOBYTE(v9[1].total_in_hi32) = 0;
    }

    if (!v9->avail_out)
    {
      *v10 = v9[1].next_in;
      return v9->next_out - v9[1].next_in;
    }
  }

  v5 = 0;
  v4 = -1;
  switch(v6)
  {
    case -9:
      v5 = "mis-compiled library";
      break;
    case -3:
      v4 = 12;
      v5 = "out of memory";
      break;
    case -2:
      v5 = "invalid setup parameter";
      break;
  }

  if (v5)
  {
    v2 = ": ";
  }

  else
  {
    v2 = &unk_1BF3442C6;
  }

  archive_set_error(*(v11 + 24), v4, "Internal error initializing decompressor%s%s", v2, v5);
  return -30;
}

uint64_t bzip2_filter_close(uint64_t a1)
{
  v2 = 0;
  strm = *(a1 + 40);
  if (LOBYTE(strm[1].total_in_hi32))
  {
    if (BZ2_bzDecompressEnd(strm))
    {
      archive_set_error(*(a1 + 24), -1, "Failed to clean up decompressor");
      v2 = -30;
    }

    LOBYTE(strm[1].total_in_hi32) = 0;
  }

  free(strm[1].next_in);
  free(strm);
  return v2;
}

uint64_t archive_read_format_ar_read_header(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = **(a1 + 2072);
  v5 = 0;
  if (!*(v6 + 48))
  {
    __archive_read_consume(v8, 8);
    *(v6 + 48) = 1;
    *(v8 + 16) = 458752;
  }

  ahead = __archive_read_ahead(v8, 0x3CuLL, 0);
  if (ahead)
  {
    v5 = 60;
    v3 = _ar_read_header(v8, v7, v6, ahead, &v5);
    if (v5)
    {
      __archive_read_consume(v8, v5);
    }

    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_ar_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = **(a1 + 2072);
  if (v7[1])
  {
    __archive_read_consume(v12, v7[1]);
    v7[1] = 0;
  }

  if (*v7 <= 0)
  {
    consume = __archive_read_consume(v12, v7[3]);
    if ((consume & 0x8000000000000000) == 0)
    {
      v7[3] -= consume;
    }

    if (v7[3])
    {
      if ((consume & 0x8000000000000000) == 0)
      {
        archive_set_error(v12, -1, "Truncated ar archive - failed consuming padding");
      }

      return -30;
    }

    else
    {
      *v11 = 0;
      *v10 = 0;
      *v9 = v7[2];
      return 1;
    }
  }

  else
  {
    v4 = __archive_read_ahead(v12, 1uLL, &v8);
    *v11 = v4;
    if (v8)
    {
      if (v8 < 0)
      {
        return -30;
      }

      else
      {
        if (v8 > *v7)
        {
          v8 = *v7;
        }

        *v10 = v8;
        v7[1] = v8;
        *v9 = v7[2];
        v7[2] += v8;
        *v7 -= v8;
        return 0;
      }
    }

    else
    {
      archive_set_error(v12, -1, "Truncated ar archive");
      return -30;
    }
  }
}

uint64_t archive_read_format_ar_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (__archive_read_consume(a1, *v2 + v2[3] + v2[1]) < 0)
  {
    return -30;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v2[3] = 0;
    return 0;
  }
}

uint64_t _ar_read_header(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  {
    __strncpy_chk();
    v22[1] = 0;
    if (*(a1 + 16) == 458752)
    {
      if (!strncmp(&__s1, "#1/", 3uLL))
      {
        *(a1 + 16) = 458754;
      }

      else if (strchr(&__s1, 47))
      {
        *(a1 + 16) = 458753;
      }

      else if (!strncmp(&__s1, "__.SYMDEF", 9uLL))
      {
        *(a1 + 16) = 458754;
      }
    }

    if (*(a1 + 16) == 458753)
    {
      *(a1 + 24) = "ar (GNU/SVR4)";
    }

    else if (*(a1 + 16) == 458754)
    {
      *(a1 + 24) = "ar (BSD)";
    }

    else
    {
      *(a1 + 24) = "ar";
    }

    for (i = v22; ; --i)
    {
      v6 = 0;
      if (i >= &__s1)
      {
        v6 = *i == 32;
      }

      if (!v6)
      {
        break;
      }

      *i = 0;
    }

    if (__s1 != 47 && i > &__s1 && *i == 47)
    {
      *i = 0;
    }

    if (i >= &__s1)
    {
      if (!strcmp(&__s1, "//"))
      {
        ar_parse_common_header(a3, a2, a4);
        archive_entry_copy_pathname(a2, &__s1);
        archive_entry_set_filetype(a2, 0x8000);
        v11 = ar_atol10((a4 + 48), 10);
        if (v11 <= 0x40000000)
        {
          if (v11)
          {
            if (a3[4])
            {
              archive_set_error(a1, 22, "More than one string table exists");
              return -30;
            }

            else
            {
              v8 = malloc_type_malloc(v11, 0xB70E0F89uLL);
              if (v8)
              {
                a3[4] = v8;
                a3[5] = v11;
                if (*a5)
                {
                  __archive_read_consume(a1, *a5);
                  *a5 = 0;
                }

                if (__archive_read_ahead(a1, v11, 0))
                {
                  __memcpy_chk();
                  __archive_read_consume(a1, v11);
                  *a3 = 0;
                  archive_entry_set_size(a2, *a3);
                  return ar_parse_gnu_filename_table(a1);
                }

                else
                {
                  return -30;
                }
              }

              else
              {
                archive_set_error(a1, 12, "Can't allocate filename table buffer");
                return -30;
              }
            }
          }

          else
          {
            archive_set_error(a1, 22, "Invalid string table");
            return -30;
          }
        }

        else
        {
          archive_set_error(a1, -1, "Filename table too large");
          return -30;
        }
      }

      else if (__s1 == 47 && v21 >= 48 && v21 <= 57)
      {
        v12 = ar_atol10((a4 + 1), 15);
        if (a3[4] && v12 < a3[5])
        {
          archive_entry_copy_pathname(a2, (a3[4] + v12));
          return ar_parse_common_header(a3, a2, a4);
        }

        else
        {
          archive_set_error(a1, 22, "Can't find long filename for GNU/SVR4 archive entry");
          archive_entry_copy_pathname(a2, &__s1);
          ar_parse_common_header(a3, a2, a4);
          return -30;
        }
      }

      else if (!strncmp(&__s1, "#1/", 3uLL))
      {
        ar_parse_common_header(a3, a2, a4);
        v13 = ar_atol10((a4 + 3), 13);
        if (v13 <= 0x100000 && v13 <= *a3)
        {
          *a3 -= v13;
          archive_entry_set_size(a2, *a3);
          if (*a5)
          {
            __archive_read_consume(a1, *a5);
            *a5 = 0;
          }

          if (__archive_read_ahead(a1, v13, 0))
          {
            v10 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
            if (v10)
            {
              __strncpy_chk();
              v10[v13] = 0;
              __archive_read_consume(a1, v13);
              archive_entry_copy_pathname(a2, v10);
              free(v10);
              return 0;
            }

            else
            {
              archive_set_error(a1, 12, "Can't allocate fname buffer");
              return -30;
            }
          }

          else
          {
            archive_set_error(a1, -1, "Truncated input file");
            return -30;
          }
        }

        else
        {
          archive_set_error(a1, -1, "Bad input file size");
          return -30;
        }
      }

      else if (!strcmp(&__s1, "/") || !strcmp(&__s1, "/SYM64/"))
      {
        archive_entry_copy_pathname(a2, &__s1);
        v7 = ar_parse_common_header(a3, a2, a4);
        archive_entry_set_filetype(a2, 0x8000);
        return v7;
      }

      else
      {
        strcmp(&__s1, "__.SYMDEF");
        archive_entry_copy_pathname(a2, &__s1);
        return ar_parse_common_header(a3, a2, a4);
      }
    }

    else
    {
      archive_set_error(a1, -1, "Found entry with empty filename");
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 22, "Incorrect file header signature");
    return -30;
  }
}

uint64_t ar_parse_common_header(unint64_t *a1, uint64_t a2, _BYTE *a3)
{
  archive_entry_set_filetype(a2, 0x8000);
  v3 = ar_atol10(a3 + 16, 12);
  archive_entry_set_mtime(a2, v3, 0);
  v4 = ar_atol10(a3 + 28, 6);
  archive_entry_set_uid(a2, v4);
  v5 = ar_atol10(a3 + 34, 6);
  archive_entry_set_gid(a2, v5);
  v6 = ar_atol8(a3 + 40, 8);
  archive_entry_set_mode(a2, v6);
  v8 = ar_atol10(a3 + 48, 10);
  a1[2] = 0;
  a1[3] = v8 % 2;
  archive_entry_set_size(a2, v8);
  *a1 = v8;
  return 0;
}

unint64_t ar_atol10(_BYTE *a1, int a2)
{
  while (1)
  {
    if (*a1 == 32 || (v6 = 0, *a1 == 9))
    {
      v2 = a2--;
      v6 = v2 != 0;
    }

    if (!v6)
    {
      break;
    }

    ++a1;
  }

  v8 = 0;
  for (i = *a1 - 48; ; i = *a1 - 48)
  {
    v5 = 0;
    if (*a1 >= 48)
    {
      v5 = 0;
      if (i < 0xA)
      {
        v3 = a2--;
        v5 = v3 != 0;
      }
    }

    if (!v5)
    {
      break;
    }

    if (v8 > 0x1999999999999999 || v8 == 0x1999999999999999 && i > 5uLL)
    {
      return -1;
    }

    v8 = 10 * v8 + i;
    ++a1;
  }

  return v8;
}

uint64_t ar_parse_gnu_filename_table(uint64_t a1)
{
  v5 = **(a1 + 2072);
  v3 = *(v5 + 40);
  for (i = *(v5 + 32); i < *(v5 + 32) + v3 - 1; ++i)
  {
    if (*i == 47)
    {
      v1 = i++;
      *v1 = 0;
      if (*i != 10)
      {
        goto LABEL_11;
      }

      *i = 0;
    }
  }

  if (i == (*(v5 + 32) + v3) || *i == 10 || *i == 96)
  {
    *(*(v5 + 32) + v3 - 1) = 0;
    return 0;
  }

LABEL_11:
  archive_set_error(a1, 22, "Invalid string table");
  free(*(v5 + 32));
  *(v5 + 32) = 0;
  return -30;
}

unint64_t ar_atol8(_BYTE *a1, int a2)
{
  while (1)
  {
    if (*a1 == 32 || (v6 = 0, *a1 == 9))
    {
      v2 = a2--;
      v6 = v2 != 0;
    }

    if (!v6)
    {
      break;
    }

    ++a1;
  }

  v8 = 0;
  for (i = *a1 - 48; ; i = *a1 - 48)
  {
    v5 = 0;
    if (*a1 >= 48)
    {
      v5 = 0;
      if (i < 8)
      {
        v3 = a2--;
        v5 = v3 != 0;
      }
    }

    if (!v5)
    {
      break;
    }

    if (v8 > 0x1FFFFFFFFFFFFFFFLL || v8 == 0x1FFFFFFFFFFFFFFFLL && i > 7uLL)
    {
      return -1;
    }

    v8 = 8 * v8 + i;
    ++a1;
  }

  return v8;
}

uint64_t archive_read_support_filter_zstd(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("zstd"))
  {
    if (__archive_read_register_bidder(a1, 0, "zstd", zstd_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external zstd program for zstd decompression");
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement");
    return -30;
  }
}

uint64_t zstd_bidder_bid(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = __archive_read_filter_ahead(a2, 4uLL, &v4);
  if (v5)
  {
    v3 = archive_le32dec_4(v5);
    if (v3 == -47205080)
    {
      return 32;
    }

    else if ((v3 & 0xFFFFFFF0) == 0x184D2A50)
    {
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

uint64_t zstd_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "zstd -d -qq");
  *(a1 + 56) = 14;
  *(a1 + 48) = "zstd";
  return result;
}

uint64_t __archive_create_child(char *a1, int *a2, int *a3, pid_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = -1;
  v9 = 0;
  v8 = 0;
  v5 = __archive_cmdline_allocate();
  if (!v5 || __archive_cmdline_parse(v5, v14) || pipe(v17) == -1)
  {
    goto LABEL_26;
  }

  if (v17[0] == 1)
  {
    v9 = dup(1);
    if (v9 == -1)
    {
LABEL_25:
      close(v17[0]);
      close(v17[1]);
LABEL_26:
      __archive_cmdline_free(v5);
      return -25;
    }

    close(v17[0]);
    v17[0] = v9;
  }

  if (pipe(v16) == -1)
  {
    goto LABEL_25;
  }

  if (!v16[1])
  {
    v9 = dup(0);
    if (v9 == -1)
    {
LABEL_24:
      close(v16[0]);
      close(v16[1]);
      goto LABEL_25;
    }

    close(v16[1]);
    v16[1] = v9;
  }

  v6 = posix_spawn_file_actions_init(&v8);
  if (v6)
  {
    *__error() = v6;
    goto LABEL_24;
  }

  v7 = posix_spawn_file_actions_addclose(&v8, v17[1]);
  if (v7 || (v7 = posix_spawn_file_actions_addclose(&v8, v16[0])) != 0 || (v7 = posix_spawn_file_actions_adddup2(&v8, v17[0], 0)) != 0 || v17[0] && (v7 = posix_spawn_file_actions_addclose(&v8, v17[0])) != 0 || (v7 = posix_spawn_file_actions_adddup2(&v8, v16[1], 1)) != 0 || v16[1] != 1 && (v7 = posix_spawn_file_actions_addclose(&v8, v16[1])) != 0 || (v7 = posix_spawnp(&v10, *v5, &v8, 0, *(v5 + 1), 0)) != 0)
  {
    *__error() = v7;
    posix_spawn_file_actions_destroy(&v8);
    goto LABEL_24;
  }

  posix_spawn_file_actions_destroy(&v8);
  close(v17[0]);
  close(v16[1]);
  *v13 = v17[1];
  fcntl(*v13, 4, 4);
  *v12 = v16[0];
  fcntl(*v12, 4, 4);
  __archive_cmdline_free(v5);
  *v11 = v10;
  return 0;
}

uint64_t __archive_check_child(int a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if (a1 != -1)
  {
    v4[0].fd = a1;
    v4[0].events = 4;
    v3 = 1;
  }

  if (a2 != -1)
  {
    v4[v3].fd = a2;
    v4[v3++].events = 1;
  }

  return poll(v4, v3, -1);
}

uint64_t archive_read_add_passphrase(unsigned int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_add_passphrase") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    passphrase = new_read_passphrase(a1, a2);
    if (passphrase)
    {
      add_passphrase_to_tail(a1, passphrase);
      return 0;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Empty passphrase is unacceptable");
    return -25;
  }
}

void *new_read_passphrase(_DWORD *a1, const char *a2)
{
  v3 = malloc_type_malloc(0x10uLL, 0x30040EEE2E2AFuLL);
  if (v3)
  {
    *v3 = strdup(a2);
    if (*v3)
    {
      return v3;
    }

    else
    {
      free(v3);
      archive_set_error(a1, 12, "Can't allocate memory");
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory");
    return 0;
  }
}

uint64_t add_passphrase_to_tail(uint64_t result, uint64_t a2)
{
  **(result + 2104) = a2;
  *(result + 2104) = a2 + 8;
  *(a2 + 8) = 0;
  return result;
}

uint64_t archive_read_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_passphrase_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 2120) = a3;
    *(a1 + 2128) = a2;
    return 0;
  }
}

const char *__archive_read_next_passphrase(uint64_t a1)
{
  if ((*(a1 + 2112) & 0x80000000) != 0)
  {
    v4 = 0;
    for (i = *(a1 + 2096); i; i = *(i + 8))
    {
      ++v4;
    }

    *(a1 + 2112) = v4;
    v7 = *(a1 + 2096);
  }

  else if (*(a1 + 2112) <= 1)
  {
    if (*(a1 + 2112) == 1)
    {
      *(a1 + 2112) = 0;
      if (*(*(a1 + 2096) + 8))
      {
        v2 = remove_passphrases_from_head(a1);
        add_passphrase_to_tail(a1, v2);
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    --*(a1 + 2112);
    v1 = remove_passphrases_from_head(a1);
    add_passphrase_to_tail(a1, v1);
    v7 = *(a1 + 2096);
  }

  if (v7)
  {
    return *v7;
  }

  if (!*(a1 + 2120))
  {
    return 0;
  }

  v5 = (*(a1 + 2120))(a1, *(a1 + 2128));
  if (!v5)
  {
    return v5;
  }

  passphrase = new_read_passphrase(a1, v5);
  if (passphrase)
  {
    insert_passphrase_to_head(a1, passphrase);
    *(a1 + 2112) = 1;
    return v5;
  }

  return 0;
}

uint64_t remove_passphrases_from_head(uint64_t a1)
{
  v2 = *(a1 + 2096);
  if (v2)
  {
    *(a1 + 2096) = *(v2 + 8);
  }

  return v2;
}

uint64_t insert_passphrase_to_head(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = *(result + 2096);
  *(result + 2096) = a2;
  if (result + 2096 == *(result + 2104))
  {
    *(result + 2104) = a2 + 8;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t archive_read_format_cpio_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = -25;
  v5 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    *(v5 + 72) = a3 != 0;
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v5 + 56) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v5 + 56))
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
      archive_set_error(a1, -1, "cpio: hdrcharset option needs a character-set name");
    }

    return v4;
  }

  else if (!strcmp(a2, "pwb"))
  {
    if (a3 && *a3)
    {
      *(v5 + 76) = 1;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_cpio_read_header(uint64_t a1, _DWORD *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  ahead = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v13 = **(a1 + 2072);
  v10 = *(v13 + 56);
  if (!v10)
  {
    if (!*(v13 + 72))
    {
      *(v13 + 64) = archive_string_default_conversion_for_read();
      *(v13 + 72) = 1;
    }

    v10 = *(v13 + 64);
  }

  v7 = (*(v13 + 8))(v15, v13, v14, &v9, &v8);
  if (v7 >= -20)
  {
    ahead = __archive_read_ahead(v15, v9 + v8, 0);
    if (ahead)
    {
      if (_archive_entry_copy_pathname_l(v14, ahead, v9, v10))
      {
        if (*__error() == 12)
        {
          archive_set_error(v15, 12, "Can't allocate memory for Pathname");
          return -30;
        }

        v6 = v15;
        v2 = archive_string_conversion_charset_name(v10);
        archive_set_error(v6, 79, "Pathname can't be converted from %s to current locale.", v2);
        v7 = -20;
      }

      *(v13 + 40) = 0;
      __archive_read_consume(v15, v9 + v8);
      if (archive_entry_filetype(v14) == 40960)
      {
        if (*(v13 + 24) > 0x100000)
        {
          archive_set_error(v15, 12, "Rejecting malformed cpio archive: symlink contents exceed 1 megabyte");
          return -30;
        }

        v11 = __archive_read_ahead(v15, *(v13 + 24), 0);
        if (!v11)
        {
          return -30;
        }

        if (_archive_entry_copy_symlink_l(v14, v11, *(v13 + 24), v10))
        {
          if (*__error() == 12)
          {
            archive_set_error(v15, 12, "Can't allocate memory for Linkname");
            return -30;
          }

          v5 = v15;
          v3 = archive_string_conversion_charset_name(v10);
          archive_set_error(v5, 79, "Linkname can't be converted from %s to current locale.", v3);
          v7 = -20;
        }

        __archive_read_consume(v15, *(v13 + 24));
        *(v13 + 24) = 0;
      }

      if (v9 == 11 && !strncmp(ahead, "TRAILER!!!", 0xAuLL))
      {
        archive_clear_error(v15);
        return 1;
      }

      else if (record_hardlink(v15, v13, v14))
      {
        return -30;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return v7;
  }
}

uint64_t archive_read_format_cpio_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = **(a1 + 2072);
  if (v7[4])
  {
    __archive_read_consume(v12, v7[4]);
    v7[4] = 0;
  }

  if (v7[3] <= 0)
  {
    v6 = v7[6];
    if (v6 == __archive_read_consume(v12, v6))
    {
      v7[6] = 0;
      *v11 = 0;
      *v10 = 0;
      *v9 = v7[5];
      return 1;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    v4 = __archive_read_ahead(v12, 1uLL, &v8);
    *v11 = v4;
    if (v8 > 0)
    {
      if (v8 > v7[3])
      {
        v8 = v7[3];
      }

      *v10 = v8;
      v7[4] = v8;
      *v9 = v7[5];
      v7[5] += v8;
      v7[3] -= v8;
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_read_format_cpio_skip(uint64_t a1)
{
  v3 = **(a1 + 2072);
  v2 = v3[3] + v3[6] + v3[4];
  if (v2 == __archive_read_consume(a1, v2))
  {
    v3[3] = 0;
    v3[6] = 0;
    v3[4] = 0;
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t header_odc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  *(a1 + 16) = 65537;
  *(a1 + 24) = "POSIX octet-oriented cpio";
  *v15 = find_odc_header(a1);
  if (*v15 >= -20)
  {
    if (*(a1 + 16) == 65542)
    {
      v14 = header_afiol(a1, a2, a3, a4, a5);
      if (v14)
      {
        return v14;
      }

      else
      {
        return *v15;
      }
    }

    else
    {
      *&v15[4] = __archive_read_ahead(a1, 0x4CuLL, 0);
      if (*&v15[4])
      {
        v5 = atol8_1((*&v15[4] + 6), 6);
        archive_entry_set_dev(a3, v5);
        v6 = atol8_1((*&v15[4] + 12), 6);
        archive_entry_set_ino(a3, v6);
        v7 = atol8_1((*&v15[4] + 18), 6);
        archive_entry_set_mode(a3, v7);
        v8 = atol8_1((*&v15[4] + 24), 6);
        archive_entry_set_uid(a3, v8);
        v9 = atol8_1((*&v15[4] + 30), 6);
        archive_entry_set_gid(a3, v9);
        v10 = atol8_1((*&v15[4] + 36), 6);
        archive_entry_set_nlink(a3, v10);
        v11 = atol8_1((*&v15[4] + 42), 6);
        archive_entry_set_rdev(a3, v11);
        v12 = atol8_1((*&v15[4] + 48), 11);
        archive_entry_set_mtime(a3, v12, 0);
        *a4 = atol8_1((*&v15[4] + 59), 6);
        *a5 = 0;
        *(a2 + 24) = atol8_1((*&v15[4] + 65), 11);
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = 0;
        __archive_read_consume(a1, 76);
        return *v15;
      }

      else
      {
        return -30;
      }
    }
  }

  else
  {
    return *v15;
  }
}

uint64_t header_newc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  newc_header = find_newc_header(a1);
  if (newc_header < -20)
  {
    return newc_header;
  }

  else
  {
    ahead = __archive_read_ahead(a1, 0x6EuLL, 0);
    v18 = ahead;
    if (ahead)
    {
      if (!memcmp(ahead, "070701", 6uLL))
      {
        *(a1 + 16) = 65540;
        *(a1 + 24) = "ASCII cpio (SVR4 with no CRC)";
      }

      else if (!memcmp(v18, "070702", 6uLL))
      {
        *(a1 + 16) = 65541;
        *(a1 + 24) = "ASCII cpio (SVR4 with CRC)";
      }

      v6 = atol16(v18 + 62, 8);
      archive_entry_set_devmajor(a3, v6);
      v7 = atol16(v18 + 70, 8);
      archive_entry_set_devminor(a3, v7);
      v8 = atol16(v18 + 6, 8);
      archive_entry_set_ino(a3, v8);
      v9 = atol16(v18 + 14, 8);
      archive_entry_set_mode(a3, v9);
      v10 = atol16(v18 + 22, 8);
      archive_entry_set_uid(a3, v10);
      v11 = atol16(v18 + 30, 8);
      archive_entry_set_gid(a3, v11);
      v12 = atol16(v18 + 38, 8);
      archive_entry_set_nlink(a3, v12);
      v13 = atol16(v18 + 78, 8);
      archive_entry_set_rdevmajor(a3, v13);
      v14 = atol16(v18 + 86, 8);
      archive_entry_set_rdevminor(a3, v14);
      v15 = atol16(v18 + 46, 8);
      archive_entry_set_mtime(a3, v15, 0);
      *a4 = atol16(v18 + 94, 8);
      *a5 = (2 - *a4) & 3;
      if (*a5 > (-1 - *a4))
      {
        archive_set_error(a1, 79, "cpio archive has invalid namelength");
        return -30;
      }

      else
      {
        *(a2 + 24) = atol16(v18 + 54, 8);
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = -*(a2 + 24) & 3;
        __archive_read_consume(a1, 110);
        return newc_header;
      }
    }

    else
    {
      return -30;
    }
  }
}

uint64_t header_bin_be(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t *a5)
{
  *(a1 + 16) = 65539;
  *(a1 + 24) = "cpio (big-endian binary)";
  ahead = __archive_read_ahead(a1, 0x1AuLL, 0);
  if (ahead)
  {
    v9 = ahead;
    archive_entry_set_dev(a3, ahead[3] + (ahead[2] << 8));
    archive_entry_set_ino(a3, v9[5] + (v9[4] << 8));
    archive_entry_set_mode(a3, v9[7] + (v9[6] << 8));
    if (*(a2 + 76))
    {
      v5 = archive_entry_mode(a3);
      archive_entry_set_mode(a3, v5 & 0x6FFF);
      if ((archive_entry_mode(a3) & 0xF000) == 0)
      {
        v6 = archive_entry_mode(a3);
        archive_entry_set_mode(a3, v6 | 0x8000);
      }
    }

    archive_entry_set_uid(a3, ahead[9] + (ahead[8] << 8));
    archive_entry_set_gid(a3, ahead[11] + (ahead[10] << 8));
    archive_entry_set_nlink(a3, ahead[13] + (ahead[12] << 8));
    archive_entry_set_rdev(a3, ahead[15] + (ahead[14] << 8));
    v7 = be4(ahead + 16);
    archive_entry_set_mtime(a3, v7, 0);
    *a4 = ahead[21] + (ahead[20] << 8);
    *a5 = *a4 & 1;
    *(a2 + 24) = be4(ahead + 22);
    archive_entry_set_size(a3, *(a2 + 24));
    *(a2 + 48) = *(a2 + 24) & 1;
    __archive_read_consume(a1, 26);
    return 0;
  }

  else
  {
    archive_set_error(a1, 0, "End of file trying to read next cpio header");
    return -30;
  }
}

uint64_t header_bin_le(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t *a5)
{
  *(a1 + 16) = 65538;
  *(a1 + 24) = "cpio (little-endian binary)";
  ahead = __archive_read_ahead(a1, 0x1AuLL, 0);
  if (ahead)
  {
    v9 = ahead;
    archive_entry_set_dev(a3, ahead[2] + (ahead[3] << 8));
    archive_entry_set_ino(a3, v9[4] + (v9[5] << 8));
    archive_entry_set_mode(a3, v9[6] + (v9[7] << 8));
    if (*(a2 + 76))
    {
      v5 = archive_entry_mode(a3);
      archive_entry_set_mode(a3, v5 & 0x6FFF);
      if ((archive_entry_mode(a3) & 0xF000) == 0)
      {
        v6 = archive_entry_mode(a3);
        archive_entry_set_mode(a3, v6 | 0x8000);
      }
    }

    archive_entry_set_uid(a3, ahead[8] + (ahead[9] << 8));
    archive_entry_set_gid(a3, ahead[10] + (ahead[11] << 8));
    archive_entry_set_nlink(a3, ahead[12] + (ahead[13] << 8));
    archive_entry_set_rdev(a3, ahead[14] + (ahead[15] << 8));
    v7 = le4(ahead + 16);
    archive_entry_set_mtime(a3, v7, 0);
    *a4 = ahead[20] + (ahead[21] << 8);
    *a5 = *a4 & 1;
    *(a2 + 24) = le4(ahead + 22);
    archive_entry_set_size(a3, *(a2 + 24));
    *(a2 + 48) = *(a2 + 24) & 1;
    __archive_read_consume(a1, 26);
    return 0;
  }

  else
  {
    archive_set_error(a1, 0, "End of file trying to read next cpio header");
    return -30;
  }
}

uint64_t find_odc_header(_DWORD *a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
LABEL_2:
  v8 = __archive_read_ahead(v9, 0x4CuLL, &v3);
  if (v8)
  {
    v7 = v8;
    v6 = &v8[v3];
    if (!memcmp("070707", v8, 6uLL) && is_octal(v7, 76))
    {
      return 0;
    }

    else if (!memcmp("070727", v7, 6uLL) && is_afio_large(v7, v3))
    {
      v9[4] = 65542;
      return 0;
    }

    else
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v7 + 76 > v6)
            {
              v5 = v7 - v8;
              __archive_read_consume(v9, v7 - v8);
              v4 += v5;
              goto LABEL_2;
            }

            v2 = v7[5];
            if (v2 != 48)
            {
              break;
            }

            ++v7;
          }

          if (v2 == 55)
          {
            break;
          }

          v7 += 6;
        }

        if (!memcmp("070707", v7, 6uLL) && is_octal(v7, 76) || !memcmp("070727", v7, 6uLL) && is_afio_large(v7, v6 - v7))
        {
          break;
        }

        v7 += 2;
      }

      v5 = v7 - v8;
      __archive_read_consume(v9, v7 - v8);
      v4 += v5;
      if (v7[4] == 50)
      {
        v9[4] = 65542;
      }

      if (v4)
      {
        archive_set_error(v9, 0, "Skipped %d bytes before finding valid header", v4);
        return -20;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t header_afiol(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  *(a1 + 16) = 65542;
  *(a1 + 24) = "afio large ASCII";
  ahead = __archive_read_ahead(a1, 0x74uLL, 0);
  if (ahead)
  {
    v5 = atol16(ahead + 6, 8);
    archive_entry_set_dev(a3, v5);
    v14 = atol16(ahead + 14, 16);
    if (v14 < 0)
    {
      archive_set_error(a1, 0, "Nonsensical ino value");
      return -30;
    }

    else
    {
      archive_entry_set_ino(a3, v14);
      v6 = atol8_1(ahead + 31, 6);
      archive_entry_set_mode(a3, v6);
      v7 = atol16(ahead + 37, 8);
      archive_entry_set_uid(a3, v7);
      v8 = atol16(ahead + 45, 8);
      archive_entry_set_gid(a3, v8);
      v9 = atol16(ahead + 53, 8);
      archive_entry_set_nlink(a3, v9);
      v10 = atol16(ahead + 61, 8);
      archive_entry_set_rdev(a3, v10);
      v11 = atol16(ahead + 69, 16);
      archive_entry_set_mtime(a3, v11, 0);
      *a4 = atol16(ahead + 86, 4);
      *a5 = 0;
      v15 = atol16(ahead + 99, 16);
      if (v15 < 0)
      {
        archive_set_error(a1, 0, "Nonsensical file size");
        return -30;
      }

      else
      {
        *(a2 + 24) = v15;
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = 0;
        __archive_read_consume(a1, 116);
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t atol8_1(char *a1, int a2)
{
  for (i = 0; a2--; i = (8 * i) | v4)
  {
    if (*a1 < 48 || *a1 > 55)
    {
      return i;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

uint64_t is_octal(char *a1, uint64_t a2)
{
  while (a2--)
  {
    if (*a1 < 48 || *a1 > 55)
    {
      return 0;
    }

    ++a1;
  }

  return 1;
}

BOOL is_afio_large(char *a1, unint64_t a2)
{
  if (a2 >= 0x74)
  {
    if (a1[30] == 109 && a1[85] == 110 && a1[98] == 115 && a1[115] == 58)
    {
      if (is_hex(a1 + 6, 24))
      {
        if (is_hex(a1 + 31, 54))
        {
          return is_hex(a1 + 86, 12) && is_hex(a1 + 99, 16) != 0;
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

uint64_t is_hex(char *a1, uint64_t a2)
{
  while (a2--)
  {
    if ((*a1 < 48 || *a1 > 57) && (*a1 < 97 || *a1 > 102) && (*a1 < 65 || *a1 > 70))
    {
      return 0;
    }

    ++a1;
  }

  return 1;
}

uint64_t atol16(char *a1, int a2)
{
  for (i = 0; a2--; i = (16 * i) | v4)
  {
    if (*a1 < 97 || *a1 > 102)
    {
      if (*a1 < 65 || *a1 > 70)
      {
        if (*a1 < 48 || *a1 > 57)
        {
          return i;
        }

        v4 = *a1 - 48;
      }

      else
      {
        v4 = *a1 - 55;
      }
    }

    else
    {
      v4 = *a1 - 87;
    }

    ++a1;
  }

  return i;
}

uint64_t find_newc_header(_DWORD *a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
LABEL_2:
  v8 = __archive_read_ahead(v9, 0x6EuLL, &v3);
  if (v8)
  {
    v7 = v8;
    v6 = &v8[v3];
    if (!memcmp("07070", v8, 5uLL) && (v7[5] == 49 || v7[5] == 50) && is_hex(v7, 110))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v7 + 110 > v6)
            {
              v5 = v7 - v8;
              __archive_read_consume(v9, v7 - v8);
              v4 += v5;
              goto LABEL_2;
            }

            v2 = v7[5];
            if (v2 != 48)
            {
              break;
            }

            ++v7;
          }

          if (v2 == 50 || v2 == 49)
          {
            break;
          }

          v7 += 6;
        }

        if (!memcmp("07070", v7, 5uLL) && is_hex(v7, 110))
        {
          break;
        }

        v7 += 2;
      }

      v5 = v7 - v8;
      __archive_read_consume(v9, v7 - v8);
      v4 += v5;
      if (v4)
      {
        archive_set_error(v9, 0, "Skipped %d bytes before finding valid header", v4);
        return -20;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t record_hardlink(_DWORD *a1, uint64_t a2, _DWORD *a3)
{
  if (archive_entry_nlink(a3) > 1)
  {
    v7 = archive_entry_dev(a3);
    v6 = archive_entry_ino64(a3);
    for (i = *(a2 + 16); i; i = *i)
    {
      if (*(i + 5) == v7 && *(i + 3) == v6)
      {
        archive_entry_copy_hardlink(a3, *(i + 4));
        v3 = *(i + 4) - 1;
        *(i + 4) = v3;
        if (!v3)
        {
          if (*(i + 1))
          {
            **(i + 1) = *i;
          }

          if (*i)
          {
            *(*i + 8) = *(i + 1);
          }

          if (*(a2 + 16) == i)
          {
            *(a2 + 16) = *i;
          }

          free(*(i + 4));
          free(i);
        }

        return 0;
      }
    }

    v9 = malloc_type_malloc(0x28uLL, 0x103004008A1EE6AuLL);
    if (!v9)
    {
      goto LABEL_18;
    }

    if (*(a2 + 16))
    {
      *(*(a2 + 16) + 8) = v9;
    }

    *v9 = *(a2 + 16);
    v9[1] = 0;
    *(a2 + 16) = v9;
    *(v9 + 5) = v7;
    v9[3] = v6;
    *(v9 + 4) = archive_entry_nlink(a3) - 1;
    v4 = archive_entry_pathname(a3);
    v9[4] = strdup(v4);
    if (v9[4])
    {
      return 0;
    }

    else
    {
LABEL_18:
      archive_set_error(a1, 12, "Out of memory adding file to list");
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t Ppmd8_Construct(uint64_t a1)
{
  *(a1 + 56) = 0;
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
      *(a1 + 166 + v1) = v8;
      --v4;
    }

    while (v4);
    *(a1 + 128 + v8++) = v6;
  }

  *(a1 + 600) = 0;
  *(a1 + 601) = 2;
  __memset_chk();
  result = __memset_chk();
  for (i = 0; i < 5; ++i)
  {
    *(a1 + 856 + i) = i;
  }

  v5 = i;
  v7 = 1;
  while (i < 0x104)
  {
    *(a1 + 856 + i) = v5;
    if (!--v7)
    {
      v7 = ++v5 - 4;
    }

    ++i;
  }

  return result;
}

void Ppmd8_Free(uint64_t a1)
{
  free(*(a1 + 56));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t Ppmd8_Alloc(uint64_t a1, int a2)
{
  if (*(a1 + 56) && *(a1 + 48) == a2)
  {
    return 1;
  }

  Ppmd8_Free(a1);
  *(a1 + 96) = 4 - (a2 & 3);
  v2 = malloc_type_malloc((*(a1 + 96) + a2), 0x100004077774924uLL);
  *(a1 + 56) = v2;
  if (v2)
  {
    *(a1 + 48) = a2;
    return 1;
  }

  return 0;
}

uint64_t Ppmd8_Init(uint64_t a1, int a2, int a3)
{
  *(a1 + 36) = a2;
  *(a1 + 100) = a3;
  result = RestartModel(a1);
  *(a1 + 1118) = 7;
  *(a1 + 1116) = 0;
  *(a1 + 1119) = 64;
  return result;
}

uint64_t RestartModel(uint64_t *a1)
{
  __memset_chk();
  result = __memset_chk();
  a1[10] = a1[7] + *(a1 + 24);
  a1[9] = a1[10] + *(a1 + 12);
  v2 = a1[9] - 84 * (*(a1 + 12) / 8u / 0xC);
  a1[11] = v2;
  a1[8] = v2;
  *(a1 + 13) = 0;
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
  *(a1 + 11) = v3;
  *(a1 + 10) = v3;
  *(a1 + 8) = 0;
  v4 = a1[9] - 12;
  a1[9] = v4;
  a1[1] = v4;
  *a1 = v4;
  *(*a1 + 8) = 0;
  **a1 = -1;
  *(*a1 + 1) = 0;
  *(*a1 + 2) = 257;
  a1[2] = a1[8];
  a1[8] += 1536;
  *(*a1 + 4) = a1[2] - a1[7];
  for (i = 0; i < 0x100; ++i)
  {
    v8 = (a1[2] + 6 * i);
    *v8 = i;
    v8[1] = 1;
    result = SetSuccessor(v8, 0);
  }

  v10 = 0;
  v15 = 0;
  while (v10 < 0x19)
  {
    while (*(a1 + v15 + 856) == v10)
    {
      ++v15;
    }

    for (j = 0; j < 8; ++j)
    {
      v7 = 0x4000 - kInitBinEsc[j] / (v15 + 1);
      for (k = 0; k < 0x40; k += 8)
      {
        *(&a1[16 * v10 + 524] + j + k) = v7;
      }
    }

    ++v10;
  }

  v11 = 0;
  v16 = 0;
  while (v11 < 0x18)
  {
    while (*(a1 + (v16 + 3) + 856) == v11 + 3)
    {
      ++v16;
    }

    for (m = 0; m < 0x20; ++m)
    {
      v5 = &a1[16 * v11 + 140] + 4 * m;
      v5[2] = 3;
      *v5 = 8 * (2 * v16 + 5);
      v5[3] = 7;
    }

    ++v11;
  }

  return result;
}

unsigned __int16 *Ppmd8_MakeEscFreq(unsigned __int8 **a1, int a2, int *a3)
{
  if (**a1 == 255)
  {
    v6 = a1 + 1116;
    *a3 = 1;
  }

  else
  {
    v6 = &(&a1[16 * (*(a1 + **a1 + 858) - 3) + 140])[2 * **a1 < a1[7][*(*a1 + 2)] + a2] + 4 * (*(*a1 + 1) > 11 * (**a1 + 1)) + 4 * (*a1)[1];
    v5 = *v6 >> v6[2];
    *v6 -= v5;
    v3 = v5;
    if (!v5)
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return v6;
}

int *Ppmd8_Update1(unsigned __int8 **a1)
{
  v2 = a1[2];
  v2[1] += 4;
  *(*a1 + 1) += 4;
  if (v2[1] > *(v2 - 5))
  {
    SwapStates(v2, (v2 - 6));
    v3 = v2 - 6;
    a1[2] = v3;
    if (v3[1] > 0x7Cu)
    {
      Rescale(a1);
    }
  }

  return NextContext(a1);
}

int *SwapStates(int *result, int *a2)
{
  v2 = *result;
  v3 = *(result + 2);
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

unsigned __int8 **Rescale(unsigned __int8 **result)
{
  v22 = result;
  v16 = &v22[7][*(*v22 + 1)];
  v14 = result[2];
  v12 = *v14;
  v13 = *(v14 + 2);
  while (v14 != v16)
  {
    *v14 = *(v14 - 6);
    *(v14 + 2) = *(v14 - 1);
    v14 -= 6;
  }

  *v14 = v12;
  *(v14 + 2) = v13;
  v17 = *(*result + 1) - v14[1];
  v14[1] += 4;
  v19 = *(result + 6) != 0;
  v14[1] = (v14[1] + v19) >> 1;
  v18 = v14[1];
  v20 = **result;
  do
  {
    v1 = v14;
    v14 += 6;
    v17 -= v1[7];
    v14[1] = (v14[1] + v19) >> 1;
    v18 += v14[1];
    if (v14[1] > *(v14 - 5))
    {
      v11 = v14;
      v9 = *v14;
      v10 = *(v14 + 2);
      do
      {
        *v11 = *(v11 - 6);
        *(v11 + 2) = *(v11 - 1);
        v11 -= 6;
        v4 = 0;
        if (v11 != v16)
        {
          v4 = BYTE1(v9) > *(v11 - 5);
        }
      }

      while (v4);
      *v11 = v9;
      *(v11 + 2) = v10;
    }

    --v20;
  }

  while (v20);
  if (v14[1])
  {
    goto LABEL_23;
  }

  v8 = **result;
  do
  {
    ++v20;
    v2 = v14;
    v14 -= 6;
  }

  while (!*(v2 - 5));
  v17 += v20;
  **result -= v20;
  if (**result)
  {
    v7 = (**result + 2) >> 1;
    if ((v8 + 2) >> 1 != v7)
    {
      result = ShrinkUnits(result, v16, (v8 + 2) >> 1, v7);
      *(*v22 + 1) = result - v22[7];
    }

    (*v22)[1] &= ~8u;
    v15 = &v22[7][*(*v22 + 1)];
    (*v22)[1] |= 8 * (*v15 >= 0x40u);
    v21 = **v22;
    do
    {
      v15 += 6;
      (*v22)[1] |= 8 * (*v15 >= 0x40u);
      --v21;
    }

    while (v21);
LABEL_23:
    *(*v22 + 1) = v18 + v17 - (v17 >> 1);
    (*v22)[1] |= 4u;
    v22[2] = &v22[7][*(*v22 + 1)];
    return result;
  }

  v5 = *v16;
  v6 = *(v16 + 2);
  BYTE1(v5) = (2 * BYTE1(*v16) + v17 - 1) / v17;
  if (BYTE1(v5) > 0x29u)
  {
    BYTE1(v5) = 41;
  }

  result = InsertNode(result, v16, *(result + ((v8 + 2) >> 1) + 165));
  (*v22)[1] = ((*v22)[1] & 0x10) + 8 * (v5 >= 0x40u);
  v3 = *v22;
  v22[2] = *v22 + 2;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return result;
}

int *NextContext(int *result)
{
  v2 = result;
  v1 = *(result + 7) + (*(*(result + 2) + 2) | (*(*(result + 2) + 4) << 16));
  if (result[6] || v1 < *(result + 11))
  {
    result = UpdateModel(result);
    *v2 = *(v2 + 1);
  }

  else
  {
    *(result + 1) = v1;
    *result = v1;
  }

  return result;
}

int *Ppmd8_Update1_0(unsigned __int8 **a1)
{
  *(a1 + 8) = 2 * a1[2][1] >= *(*a1 + 1);
  *(a1 + 10) += *(a1 + 8);
  *(*a1 + 1) += 4;
  v1 = a1[2];
  v2 = v1[1] + 4;
  v1[1] = v2;
  if (v2 > 0x7Cu)
  {
    Rescale(a1);
  }

  return NextContext(a1);
}

int *Ppmd8_UpdateBin(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 1);
  if (v1 < 0xC4u)
  {
    ++v1;
  }

  *(*(a1 + 16) + 1) = v1;
  *(a1 + 32) = 1;
  ++*(a1 + 40);
  return NextContext(a1);
}

int *Ppmd8_Update2(unsigned __int8 **a1)
{
  *(*a1 + 1) += 4;
  v1 = a1[2];
  v2 = v1[1] + 4;
  v1[1] = v2;
  if (v2 > 0x7Cu)
  {
    Rescale(a1);
  }

  *(a1 + 10) = *(a1 + 11);
  result = UpdateModel(a1);
  *a1 = a1[1];
  return result;
}

int *UpdateModel(int *result)
{
  v32 = result;
  v30 = *(*(result + 2) + 2) | (*(*(result + 2) + 4) << 16);
  v25 = *(*(result + 2) + 1);
  v24 = **(result + 2);
  v23 = 0;
  if (v25 < 0x1F && *(*result + 8))
  {
    v28 = *(result + 7) + *(*result + 8);
    if (*v28)
    {
      v23 = (*(result + 7) + *(v28 + 4));
      if (*v23 != **(result + 2))
      {
        do
        {
          v23 = (v23 + 6);
        }

        while (*v23 != **(result + 2));
        if (*(v23 + 1) >= *(v23 - 5))
        {
          result = SwapStates(v23, (v23 - 6));
          v23 = (v23 - 6);
        }
      }

      if (*(v23 + 1) < 0x73u)
      {
        *(v23 + 1) += 2;
        *(v28 + 2) += 2;
      }
    }

    else
    {
      v23 = (v28 + 2);
      if (*(v28 + 3) < 0x20u)
      {
        ++*(v28 + 3);
      }
    }
  }

  v29 = *(v32 + 1);
  if (!v32[6] && v30)
  {
    Successors = CreateSuccessors(v32, 1, v23, *v32);
    if (Successors)
    {
      result = SetSuccessor(*(v32 + 2), Successors - *(v32 + 7));
      *(v32 + 1) = Successors;
    }

    else
    {
      SetSuccessor(*(v32 + 2), 0);
      return RestoreModel(v32, v29);
    }

    return result;
  }

  v1 = **(v32 + 2);
  v2 = *(v32 + 10);
  *(v32 + 10) = v2 + 1;
  *v2 = v1;
  v31 = *(v32 + 10) - *(v32 + 7);
  if (*(v32 + 10) >= *(v32 + 11))
  {
    return RestoreModel(v32, v29);
  }

  if (v30)
  {
    if (*(v32 + 7) + v30 < *(v32 + 11))
    {
      result = CreateSuccessors(v32, 0, v23, *v32);
      if (!result)
      {
        return RestoreModel(v32, v29);
      }

      v30 = result - *(v32 + 7);
    }
  }

  else
  {
    result = ReduceOrder(v32, v23, *v32);
    if (!result)
    {
      return RestoreModel(v32, v29);
    }

    v30 = result - *(v32 + 7);
  }

  v3 = v32[6] - 1;
  v32[6] = v3;
  if (!v3)
  {
    v31 = v30;
    *(v32 + 10) -= *(v32 + 1) != *v32;
  }

  v26 = **v32;
  v27 = *(*v32 + 2) - v26 - v25;
  while (v29 != *v32)
  {
    v21 = *v29;
    if (*v29)
    {
      if (v21)
      {
        v17 = (v21 + 1) >> 1;
        v16 = *(v32 + v17 + 165);
        if (v16 != *(v32 + v17 + 166))
        {
          v15 = AllocUnits(v32, v16 + 1);
          if (!v15)
          {
            return RestoreModel(v32, v29);
          }

          v14 = (*(v32 + 7) + *(v29 + 1));
          v13 = v15;
          v12 = v14;
          v11 = (v21 + 1) >> 1;
          do
          {
            *v13 = *v12;
            v13[1] = v12[1];
            v13[2] = v12[2];
            v12 += 3;
            v13 += 3;
            --v11;
          }

          while (v11);
          InsertNode(v32, v14, v16);
          *(v29 + 1) = v15 - *(v32 + 7);
        }
      }

      v4 = *(v29 + 1);
      if (3 * v21 + 1 < v26)
      {
        ++v4;
      }

      *(v29 + 1) = v4;
    }

    else
    {
      v10 = AllocUnits(v32, 0);
      if (!v10)
      {
        return RestoreModel(v32, v29);
      }

      *v10 = *(v29 + 2);
      *(v10 + 4) = *(v29 + 3);
      *(v29 + 1) = v10 - *(v32 + 7);
      if (*(v10 + 1) < 0x1Eu)
      {
        *(v10 + 1) *= 2;
      }

      else
      {
        *(v10 + 1) = 120;
      }

      v5 = *(v10 + 1) + v32[7];
      if (v26 > 2)
      {
        LOWORD(v5) = v5 + 1;
      }

      *(v29 + 1) = v5;
    }

    v19 = 2 * v25 * (*(v29 + 1) + 6);
    v18 = v27 + *(v29 + 1);
    if (v19 >= 6 * v18)
    {
      if (v19 <= 9 * v18)
      {
        v7 = 4;
      }

      else
      {
        v7 = 5;
      }

      if (v19 > 12 * v18)
      {
        ++v7;
      }

      if (v19 > 15 * v18)
      {
        ++v7;
      }

      v20 = v7;
      *(v29 + 1) += v7;
    }

    else
    {
      if (v19 <= v18)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (v19 >= 4 * v18)
      {
        ++v6;
      }

      v20 = v6;
      *(v29 + 1) += 4;
    }

    v9 = (*(v32 + 7) + *(v29 + 1) + 6 * v21 + 6);
    result = SetSuccessor(v9, v31);
    *v9 = v24;
    v9[1] = v20;
    v29[1] |= 8 * (v24 >= 0x40u);
    *v29 = v21 + 1;
    v29 = (*(v32 + 7) + *(v29 + 2));
  }

  v8 = *(v32 + 7) + v30;
  *v32 = v8;
  *(v32 + 1) = v8;
  return result;
}

BOOL Ppmd8_RangeDec_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 104) = -1;
  *(a1 + 108) = 0;
  for (i = 0; i < 4; ++i)
  {
    v2 = *(a1 + 108);
    *(a1 + 108) = (*(*(a1 + 120) + 8))(*(a1 + 120)) | (v2 << 8);
  }

  return *(a1 + 108) != -1;
}

uint64_t Ppmd8_DecodeSymbol(unsigned __int8 **a1)
{
  v33[288] = *MEMORY[0x1E69E9840];
  v31 = a1;
  if (**a1)
  {
    v30 = &v31[7][*(*v31 + 1)];
    v29 = 0;
    Threshold = 0;
    v27 = 0;
    Threshold = RangeDec_GetThreshold(v31, *(*v31 + 1));
    v27 = v30[1];
    if (Threshold >= v27)
    {
      *(v31 + 8) = 0;
      v29 = **v31;
      do
      {
        v1 = v30;
        v30 += 6;
        v27 += v1[7];
        if (v27 > Threshold)
        {
          v25 = 0;
          RangeDec_Decode(v31, v27 - v30[1], v30[1]);
          v31[2] = v30;
          v25 = *v30;
          Ppmd8_Update1(v31);
          return v25;
        }

        --v29;
      }

      while (v29);
      if (Threshold < *(*v31 + 1))
      {
        RangeDec_Decode(v31, v27, *(*v31 + 1) - v27);
        for (i = 0; i < 0x20uLL; i += 8)
        {
          v33[i + 256] = -1;
          v33[i + 257] = -1;
          v33[i + 258] = -1;
          v33[i + 259] = -1;
          v33[i + 260] = -1;
          v33[i + 261] = -1;
          v33[i + 262] = -1;
          v33[i + 263] = -1;
        }

        *(&v33[256] + *v30) = 0;
        v29 = **v31;
        do
        {
          v30 -= 6;
          *(&v33[256] + *v30) = 0;
          --v29;
        }

        while (v29);
LABEL_22:
        while (1)
        {
          bzero(v33, 0x200uLL);
          v20 = 0;
          v19 = 0;
          v12 = **v31;
          do
          {
            ++*(v31 + 6);
            if (!*(*v31 + 2))
            {
              return -1;
            }

            *v31 = &v31[7][*(*v31 + 2)];
          }

          while (**v31 == v12);
          v16 = 0;
          v20 = &v31[7][*(*v31 + 1)];
          v14 = 0;
          v13 = **v31 - v12;
          do
          {
            v11 = *(&v33[256] + *v20);
            v16 += (v20[1] & v11);
            v5 = v20;
            v20 += 6;
            v33[v14] = v5;
            v14 -= v11;
          }

          while (v14 != v13);
          EscFreq = Ppmd8_MakeEscFreq(v31, v12, &v19);
          v19 += v16;
          v18 = RangeDec_GetThreshold(v31, v19);
          if (v18 < v16)
          {
            break;
          }

          if (v18 >= v19)
          {
            return -2;
          }

          RangeDec_Decode(v31, v16, v19 - v16);
          *EscFreq += v19;
          do
          {
            *(&v33[256] + *v33[--v14]) = 0;
          }

          while (v14);
        }

        v9 = v33;
        v17 = 0;
        while (1)
        {
          v17 += (*v9)[1];
          if (v17 > v18)
          {
            break;
          }

          ++v9;
        }

        v20 = *v9;
        RangeDec_Decode(v31, v17 - v20[1], v20[1]);
        if (*(EscFreq + 2) < 7u)
        {
          v6 = *(EscFreq + 3);
          *(EscFreq + 3) = v6 - 1;
          if (v6 == 1)
          {
            *EscFreq *= 2;
            v7 = *(EscFreq + 2);
            *(EscFreq + 2) = v7 + 1;
            *(EscFreq + 3) = 3 << v7;
          }
        }

        v31[2] = v20;
        v10 = *v20;
        Ppmd8_Update2(v31);
        return v10;
      }

      else
      {
        return -2;
      }
    }

    else
    {
      v26 = 0;
      RangeDec_Decode(v31, 0, v30[1]);
      v31[2] = v30;
      v26 = *v30;
      Ppmd8_Update1_0(v31);
      return v26;
    }
  }

  else
  {
    v23 = &v31[16 * *(v31 + (*v31)[3] + 855) + 524] + *(v31 + v31[7][*(*v31 + 2)] + 600) + *(v31 + 8) + (*v31)[1] + ((*(v31 + 10) >> 26) & 0x20u);
    v2 = *(v31 + 27);
    v3 = *(v31 + 26) >> 14;
    *(v31 + 26) = v3;
    if (v2 / v3 >= *v23)
    {
      RangeDec_Decode(v31, *v23, 0x4000 - *v23);
      *v23 -= (*v23 + 32) >> 7;
      *(v31 + 7) = PPMD8_kExpEscape[*v23 >> 10];
      for (j = 0; j < 0x20uLL; j += 8)
      {
        v33[j + 256] = -1;
        v33[j + 257] = -1;
        v33[j + 258] = -1;
        v33[j + 259] = -1;
        v33[j + 260] = -1;
        v33[j + 261] = -1;
        v33[j + 262] = -1;
        v33[j + 263] = -1;
      }

      *(&v33[256] + (*v31)[2]) = 0;
      *(v31 + 8) = 0;
      goto LABEL_22;
    }

    v22 = 0;
    RangeDec_Decode(v31, 0, *v23);
    *v23 = *v23 + 128 - ((*v23 + 32) >> 7);
    v4 = *v31 + 2;
    v31[2] = v4;
    v22 = *v4;
    Ppmd8_UpdateBin(v31);
    return v22;
  }
}

uint64_t RangeDec_GetThreshold(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 108);
  v3 = *(a1 + 104) / a2;
  *(a1 + 104) = v3;
  return v2 / v3;
}

uint64_t RangeDec_Decode(uint64_t result, int a2, int a3)
{
  v7 = result;
  v6 = a2 * *(result + 104);
  *(result + 112) += v6;
  *(result + 108) -= v6;
  *(result + 104) *= a3;
  while (1)
  {
    v5 = 1;
    if ((*(v7 + 112) ^ (*(v7 + 112) + *(v7 + 104))) >= 0x1000000)
    {
      v4 = 0;
      if (*(v7 + 104) < 0x8000u)
      {
        *(v7 + 104) = -*(v7 + 112) & 0x7FFF;
        v4 = 1;
      }

      v5 = v4;
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 = *(v7 + 108);
    result = (*(*(v7 + 120) + 8))(*(v7 + 120));
    *(v7 + 108) = result | (v3 << 8);
    *(v7 + 104) <<= 8;
    *(v7 + 112) <<= 8;
  }

  return result;
}

uint64_t InsertNode(uint64_t result, _DWORD *a2, unsigned int a3)
{
  *a2 = -1;
  a2[1] = *(result + 296 + 4 * a3);
  a2[2] = *(result + 128 + a3);
  *(result + 296 + 4 * a3) = a2 - *(result + 56);
  ++*(result + 448 + 4 * a3);
  return result;
}

_DWORD *ShrinkUnits(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v10 = *(a1 + 166 + (a3 - 1));
  v9 = *(a1 + 166 + (a4 - 1));
  if (v10 == v9)
  {
    return a2;
  }

  if (*(a1 + 296 + 4 * *(a1 + 166 + (a4 - 1))))
  {
    v8 = RemoveNode(a1, v9);
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
    InsertNode(a1, a2, v10);
    return v8;
  }

  else
  {
    SplitBlock(a1, a2, v10, v9);
    return a2;
  }
}

uint64_t RemoveNode(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56) + *(a1 + 296 + 4 * a2);
  *(a1 + 296 + 4 * a2) = *(v3 + 4);
  --*(a1 + 448 + 4 * a2);
  return v3;
}

uint64_t SplitBlock(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 128 + a3) - *(a1 + 128 + a4);
  v8 = (a2 + 12 * *(a1 + 128 + a4));
  v7 = *(a1 + 166 + (v6 - 1));
  if (*(a1 + 128 + *(a1 + 166 + (v6 - 1))) != v6)
  {
    v5 = *(a1 + 128 + --v7);
    InsertNode(a1, (v8 + (12 * v5)), v6 - v5 - 1);
  }

  return InsertNode(a1, v8, v7);
}

unsigned __int8 *CreateSuccessors(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  __b[17] = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v17 = 0;
  v18 = 0;
  v15 = *(*(a1 + 16) + 2) | (*(*(a1 + 16) + 4) << 16);
  memset(__b, 0, 0x88uLL);
  v14 = 0;
  if (!v21)
  {
    v14 = 1;
    __b[0] = *(v22 + 16);
  }

  while (*(v19 + 2))
  {
    v19 = (*(v22 + 56) + *(v19 + 2));
    if (v20)
    {
      i = v20;
      v20 = 0;
    }

    else if (*v19)
    {
        ;
      }

      if (i[1] < 0x73u)
      {
        ++i[1];
        ++*(v19 + 1);
      }
    }

    else
    {
      i = v19 + 2;
      v19[3] += *(*(v22 + 56) + *(v19 + 2)) == 0 && v19[3] < 0x18u;
    }

    v13 = *(i + 1) | (*(i + 2) << 16);
    if (v13 != v15)
    {
      v19 = (*(v22 + 56) + v13);
      if (!v14)
      {
        return v19;
      }

      break;
    }

    v4 = v14++;
    __b[v4] = i;
  }

  LOBYTE(v17) = *(*(v22 + 56) + v15);
  SetSuccessor(&v17, v15 + 1);
  v16 = 16 * (**(v22 + 16) >= 0x40u) + 8 * (v17 >= 0x40u);
  if (*v19)
  {
      ;
    }

    v11 = j[1] - 1;
    v10 = *(v19 + 1) - *v19 - v11;
    if (2 * v11 > v10)
    {
      v7 = (v11 + 2 * v10 - 3) / v10;
    }

    else
    {
      LOBYTE(v7) = 5 * v11 > v10;
    }

    BYTE1(v17) = v7 + 1;
  }

  else
  {
    BYTE1(v17) = v19[3];
  }

  do
  {
    if (*(v22 + 72) == *(v22 + 64))
    {
      if (*(v22 + 296))
      {
        v8 = RemoveNode(v22, 0);
      }

      else
      {
        v8 = AllocUnitsRare(v22, 0);
        if (!v8)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = *(v22 + 72) - 12;
      *(v22 + 72) = v5;
      v8 = v5;
    }

    *v8 = 0;
    *(v8 + 1) = v16;
    *(v8 + 2) = v17;
    *(v8 + 6) = v18;
    *(v8 + 8) = v19 - *(v22 + 56);
    SetSuccessor(__b[--v14], v8 - *(v22 + 56));
    v19 = v8;
  }

  while (v14);
  return v19;
}

uint64_t RestoreModel(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 80) = *(a1 + 56) + *(a1 + 96);
  for (i = *(a1 + 8); i != a2; i = (*(a1 + 56) + *(i + 2)))
  {
    v2 = (*i)--;
    if (v2 == 1)
    {
      v5 = (*(a1 + 56) + *(i + 1));
      i[1] = (i[1] & 0x10) + 8 * (*v5 >= 0x40u);
      *(i + 2) = *v5;
      *(i + 3) = *(v5 + 2);
      SpecialFreeUnit(a1, v5);
      i[3] = (i[3] + 11) >> 3;
    }

    else
    {
      Refresh(a1, i, (*i + 3) >> 1, 0);
    }
  }

  while (i != *a1)
  {
    if (*i)
    {
      v3 = *(i + 1) + 4;
      *(i + 1) = v3;
      if (4 * *i + 128 < v3)
      {
        Refresh(a1, i, (*i + 2) >> 1, 1);
      }
    }

    else
    {
      i[3] -= i[3] >> 1;
    }

    i = (*(a1 + 56) + *(i + 2));
  }

  if (!*(a1 + 100) || GetUsedMemory(a1) < *(a1 + 48) >> 1)
  {
    return RestartModel(a1);
  }

  while (*(*(a1 + 8) + 8))
  {
    *(a1 + 8) = *(a1 + 56) + *(*(a1 + 8) + 8);
  }

  do
  {
    CutOff(a1, *(a1 + 8), 0);
    ExpandTextArea(a1);
    result = GetUsedMemory(a1);
  }

  while (result > 3 * (*(a1 + 48) >> 2));
  *(a1 + 52) = 0;
  *(a1 + 24) = *(a1 + 36);
  return result;
}

uint64_t ReduceOrder(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v10 = a3;
  v7 = *(a1 + 80) - *(a1 + 56);
  SetSuccessor(*(a1 + 16), v7);
  ++*(a1 + 24);
  while (1)
  {
    if (a2)
    {
      v10 = *(a1 + 56) + *(v10 + 8);
      i = a2;
      a2 = 0;
    }

    else
    {
      if (!*(v10 + 8))
      {
        return v10;
      }

      v10 = *(a1 + 56) + *(v10 + 8);
      if (*v10)
      {
          ;
        }

        if (i[1] < 0x73u)
        {
          i[1] += 2;
          *(v10 + 2) += 2;
        }
      }

      else
      {
        i = (v10 + 2);
        v3 = *(v10 + 3);
        if (v3 < 0x20u)
        {
          ++v3;
        }

        *(v10 + 3) = v3;
      }
    }

    if (*(i + 1) | (*(i + 2) << 16))
    {
      break;
    }

    SetSuccessor(i, v7);
    ++*(a1 + 24);
  }

  if ((*(i + 1) | (*(i + 2) << 16)) <= v7)
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = i;
    Successors = CreateSuccessors(a1, 0, 0, v10);
    if (Successors)
    {
      SetSuccessor(i, Successors - *(a1 + 56));
    }

    else
    {
      SetSuccessor(i, 0);
    }

    *(a1 + 16) = v5;
  }

  if (*(a1 + 24) == 1 && a3 == *(a1 + 8))
  {
    SetSuccessor(*(a1 + 16), *(i + 1) | (*(i + 2) << 16));
    --*(a1 + 80);
  }

  if (*(i + 1) | (*(i + 2) << 16))
  {
    return *(a1 + 56) + (*(i + 1) | (*(i + 2) << 16));
  }

  else
  {
    return 0;
  }
}

uint64_t AllocUnits(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 296 + 4 * a2))
  {
    return RemoveNode(a1, a2);
  }

  v4 = 12 * *(a1 + 128 + a2);
  if (v4 > *(a1 + 72) - *(a1 + 64))
  {
    return AllocUnitsRare(a1, a2);
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = v3 + v4;
  return v3;
}

uint64_t AllocUnitsRare(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 52))
  {
    GlueFreeBlocks(a1);
    if (*(a1 + 296 + 4 * a2))
    {
      return RemoveNode(a1, a2);
    }
  }

  v7 = a2;
  while (++v7 != 38)
  {
    if (*(a1 + 296 + 4 * v7))
    {
      v6 = RemoveNode(a1, v7);
      SplitBlock(a1, v6, v7, a2);
      return v6;
    }
  }

  v5 = 12 * *(a1 + 128 + a2);
  --*(a1 + 52);
  if (*(a1 + 88) - *(a1 + 80) <= v5)
  {
    return 0;
  }

  v2 = *(a1 + 88) - v5;
  *(a1 + 88) = v2;
  return v2;
}

uint64_t GlueFreeBlocks(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  v9 = &v10;
  *(a1 + 52) = 0x2000;
  result = __memset_chk();
  if (*(v11 + 64) != *(v11 + 72))
  {
    **(v11 + 64) = 0;
  }

  for (i = 0; i < 0x26; ++i)
  {
    v6 = *(v11 + 296 + 4 * i);
    *(v11 + 296 + 4 * i) = 0;
    while (v6)
    {
      v5 = *(v11 + 56) + v6;
      if (*(v5 + 8))
      {
        *v9 = v6;
        v9 = (v5 + 4);
        while (1)
        {
          v4 = (v5 + 12 * *(v5 + 8));
          if (*v4 != -1)
          {
            break;
          }

          *(v5 + 8) += v4[2];
          v4[2] = 0;
        }
      }

      v6 = *(v5 + 4);
    }
  }

  *v9 = 0;
  while (v10)
  {
    v3 = (*(v11 + 56) + v10);
    v10 = v3[1];
    v2 = v3[2];
    if (v2)
    {
      while (v2 > 0x80)
      {
        InsertNode(v11, v3, 0x25u);
        v2 -= 128;
        v3 += 384;
      }

      v8 = *(v11 + 166 + v2 - 1);
      if (*(v11 + 128 + *(v11 + 166 + v2 - 1)) != v2)
      {
        --v8;
        InsertNode(v11, &v3[3 * *(v11 + 128 + v8)], v2 - *(v11 + 128 + v8) - 1);
      }

      result = InsertNode(v11, v3, v8);
    }
  }

  return result;
}

uint64_t SpecialFreeUnit(uint64_t result, _DWORD *a2)
{
  if (a2 != *(result + 88))
  {
    return InsertNode(result, a2, 0);
  }

  *(result + 88) += 12;
  return result;
}

unsigned __int8 *Refresh(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v12 = *a2;
  result = ShrinkUnits(a1, (*(a1 + 56) + *(a2 + 1)), a3, (v12 + 2) >> 1);
  v8 = result;
  *(a2 + 1) = result - *(a1 + 56);
  v9 = (a2[1] & (4 * a4 + 16)) + 8 * (*result >= 0x40u);
  v11 = *(a2 + 1) - result[1];
  v5 = (result[1] + a4) >> a4;
  result[1] = v5;
  v10 = v5;
  do
  {
    v6 = v8;
    v8 += 6;
    v11 -= v6[7];
    v7 = (v8[1] + a4) >> a4;
    v8[1] = v7;
    v10 += v7;
    v9 |= 8 * (*v8 >= 0x40u);
    --v12;
  }

  while (v12);
  *(a2 + 1) = v10 + ((v11 + a4) >> a4);
  a2[1] = v9;
  return result;
}

uint64_t GetUsedMemory(uint64_t a1)
{
  v3 = 0;
  for (i = 0; i < 0x26; ++i)
  {
    v3 += *(a1 + 448 + 4 * i) * *(a1 + 128 + i);
  }

  return *(a1 + 48) - (*(a1 + 72) - *(a1 + 64)) - (*(a1 + 88) - *(a1 + 80)) - 12 * v3;
}

uint64_t CutOff(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (*a2)
  {
    v11 = (*a2 + 2) >> 1;
    *(a2 + 1) = MoveUnitsUp(a1, (*(a1 + 56) + *(a2 + 1)), v11) - *(a1 + 56);
    v12 = *a2;
    for (i = *(a1 + 56) + *(a2 + 1) + 6 * *a2; i >= *(a1 + 56) + *(a2 + 1); i -= 6)
    {
      if (*(a1 + 56) + (*(i + 2) | (*(i + 4) << 16)) >= *(a1 + 88))
      {
        if (a3 >= *(a1 + 36))
        {
          SetSuccessor(i, 0);
        }

        else
        {
          v5 = CutOff(a1, (*(a1 + 56) + (*(i + 2) | (*(i + 4) << 16))), a3 + 1);
          SetSuccessor(i, v5);
        }
      }

      else
      {
        v4 = v12--;
        v7 = (*(a1 + 56) + *(a2 + 1) + 6 * v4);
        SetSuccessor(i, 0);
        SwapStates(i, v7);
      }
    }

    if (v12 != *a2 && a3)
    {
      *a2 = v12;
      v10 = (*(a1 + 56) + *(a2 + 1));
      if (v12 < 0)
      {
        FreeUnits(a1, v10, v11);
        SpecialFreeUnit(a1, a2);
        return 0;
      }

      if (v12)
      {
        Refresh(a1, a2, v11, *(a2 + 1) > 16 * v12);
      }

      else
      {
        a2[1] = (a2[1] & 0x10) + 8 * (*v10 >= 0x40u);
        *(a2 + 2) = *v10;
        *(a2 + 3) = *(v10 + 2);
        FreeUnits(a1, v10, v11);
        a2[3] = (a2[3] + 11) >> 3;
      }
    }

    return (a2 - *(a1 + 56));
  }

  v8 = a2 + 2;
  if (*(a1 + 56) + (*(a2 + 2) | (*(a2 + 3) << 16)) < *(a1 + 88))
  {
    goto LABEL_9;
  }

  if (a3 >= *(a1 + 36))
  {
    SetSuccessor(v8, 0);
  }

  else
  {
    v3 = CutOff(a1, (*(a1 + 56) + (*(a2 + 2) | (*(a2 + 3) << 16))), a3 + 1);
    SetSuccessor(v8, v3);
  }

  if (*(v8 + 1) | (*(v8 + 2) << 16) || a3 <= 9)
  {
    return (a2 - *(a1 + 56));
  }

  else
  {
LABEL_9:
    SpecialFreeUnit(a1, a2);
    return 0;
  }
}

void *ExpandTextArea(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = memset(__b, 0, sizeof(__b));
  if (*(a1 + 64) != *(a1 + 72))
  {
    **(a1 + 64) = 0;
  }

  for (i = *(a1 + 88); *i == -1; i += 3 * i[2])
  {
    *i = 0;
    v2 = *(a1 + 166 + (i[2] - 1));
    ++__b[v2];
  }

  *(a1 + 88) = i;
  for (j = 0; j < 0x26; ++j)
  {
    v5 = (a1 + 296 + 4 * j);
    while (__b[j])
    {
      v4 = (*(a1 + 56) + *v5);
      do
      {
        if (*v4)
        {
          break;
        }

        *v5 = v4[1];
        v4 = (*(a1 + 56) + *v5);
        --*(a1 + 448 + 4 * j);
        v3 = __b[j] - 1;
        __b[j] = v3;
      }

      while (v3);
      v5 = v4 + 1;
    }
  }

  return result;
}

_DWORD *MoveUnitsUp(uint64_t a1, _DWORD *a2, int a3)
{
  v8 = *(a1 + 166 + (a3 - 1));
  if (a2 > *(a1 + 88) + 0x4000 || a2 - *(a1 + 56) > *(a1 + 296 + 4 * *(a1 + 166 + (a3 - 1))))
  {
    return a2;
  }

  v7 = RemoveNode(a1, v8);
  v6 = v7;
  v5 = a2;
  v4 = a3;
  do
  {
    *v6 = *v5;
    v6[1] = v5[1];
    v6[2] = v5[2];
    v5 += 3;
    v6 += 3;
    --v4;
  }

  while (v4);
  if (a2 == *(a1 + 88))
  {
    *(a1 + 88) += 12 * *(a1 + 128 + v8);
  }

  else
  {
    InsertNode(a1, a2, v8);
  }

  return v7;
}

uint64_t archive_read_support_format_by_code(unsigned int *a1, int a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_by_code") == -30)
  {
    return -30;
  }

  else
  {
    v3 = a2 & 0xFF0000;
    if ((a2 & 0xFF0000) == 0x10000)
    {
      return archive_read_support_format_cpio(a1);
    }

    else
    {
      switch(v3)
      {
        case 0x30000:
          return archive_read_support_format_tar(a1);
        case 0x40000:
          return archive_read_support_format_iso9660(a1);
        case 0x50000:
          return archive_read_support_format_zip(a1);
        case 0x60000:
          return archive_read_support_format_empty(a1);
        case 0x70000:
          return archive_read_support_format_ar(a1);
        case 0x80000:
          return archive_read_support_format_mtree(a1);
        case 0x90000:
          return archive_read_support_format_raw(a1);
        case 0xA0000:
          return archive_read_support_format_xar(a1);
        case 0xB0000:
          return archive_read_support_format_lha(a1);
        case 0xC0000:
          return archive_read_support_format_cab(a1);
        case 0xD0000:
          return archive_read_support_format_rar(a1);
        case 0xE0000:
          return archive_read_support_format_7zip(a1);
        case 0xF0000:
          return archive_read_support_format_warc(a1);
        case 0x100000:
          return archive_read_support_format_rar5(a1);
        default:
          archive_set_error(a1, 22, "Invalid format code specified");
          return -30;
      }
    }
  }
}

uint64_t archive_read_format_empty_read_header(uint64_t a1)
{
  *(a1 + 16) = 393216;
  *(a1 + 24) = "Empty file";
  return 1;
}

uint64_t archive_read_format_iso9660_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = **(a1 + 2072);
  if (!strcmp(a2, "joliet"))
  {
    *(v4 + 4) = a3 && strcmp(a3, "off") && strcmp(a3, "ignore") && strcmp(a3, "disable") && strcmp(a3, "0");
    return 0;
  }

  else if (!strcmp(a2, "rockridge") || !strcmp(a2, "Rockridge"))
  {
    *(v4 + 8) = a3 != 0;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_iso9660_read_header(uint64_t a1, void *a2)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v21 = **(a1 + 2072);
  if (!*(a1 + 16))
  {
    v23[4] = 0x40000;
    *(v23 + 3) = "ISO9660";
  }

  if (!*(v21 + 160))
  {
    v18 = choose_volume(v23, v21);
    if (v18)
    {
      return v18;
    }
  }

  v20 = 0;
  entry_seek = next_entry_seek(v23, v21, &v20);
  if (entry_seek)
  {
    return entry_seek;
  }

  if (*(v21 + 42))
  {
    if (!*(v21 + 488))
    {
      v2 = archive_string_conversion_from_charset(v23, "UTF-16BE", 1);
      *(v21 + 488) = v2;
      if (!*(v21 + 488))
      {
        return -30;
      }
    }

    if (!*(v21 + 496) && (v3 = malloc_type_malloc(0x400uLL, 0xA9224449uLL), (*(v21 + 496) = v3) == 0) || !*(v21 + 512) && (v4 = malloc_type_malloc(0x400uLL, 0xA0CFAC19uLL), (*(v21 + 512) = v4) == 0))
    {
      archive_set_error(v23, 12, "No memory");
      return -30;
    }

    *(v21 + 504) = 0;
    if (build_pathname_utf16be(*(v21 + 496), 0x400uLL, (v21 + 504), v20))
    {
LABEL_18:
      archive_set_error(v23, 79, "Pathname is too long");
      return -30;
    }

    if (_archive_entry_copy_pathname_l(v22, *(v21 + 496), *(v21 + 504), *(v21 + 488)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v23, 12, "No memory for Pathname");
        return -30;
      }

      v13 = v23;
      v5 = archive_string_conversion_charset_name(*(v21 + 488));
      archive_set_error(v13, 79, "Pathname cannot be converted from %s to current locale.", v5);
      v17 = -20;
    }
  }

  else
  {
    v16 = build_pathname((v21 + 16), v20, 0);
    if (!v16)
    {
      goto LABEL_18;
    }

    *(v21 + 24) = 0;
    archive_entry_set_pathname(v22, v16);
  }

  *(v21 + 216) = v20[7];
  *(v21 + 208) = 0;
  if (v20[6] + v20[7] > *(v21 + 176))
  {
    v12 = v23;
    v6 = archive_entry_pathname(v22);
    archive_set_error(v12, -1, "File is beyond end-of-media: %s", v6);
    *(v21 + 216) = 0;
    return -20;
  }

  else
  {
    archive_entry_set_mode(v22, *(v20 + 68));
    archive_entry_set_uid(v22, *(v20 + 35));
    archive_entry_set_gid(v22, *(v20 + 36));
    archive_entry_set_nlink(v22, *(v20 + 40));
    if (*(v20 + 22))
    {
      archive_entry_set_birthtime(v22, v20[12], 0);
    }

    else
    {
      archive_entry_unset_birthtime(v22);
    }

    archive_entry_set_mtime(v22, v20[13], 0);
    archive_entry_set_ctime(v22, v20[15], 0);
    archive_entry_set_atime(v22, v20[14], 0);
    archive_entry_set_rdev(v22, v20[16]);
    archive_entry_set_size(v22, *(v21 + 216));
    if (v20[27])
    {
      archive_entry_copy_symlink(v22, v20[27]);
    }

    if (v20[19] != -1 && v20[19] == *(v21 + 72))
    {
      if (*(v21 + 42))
      {
        if (_archive_entry_copy_hardlink_l(v22, *(v21 + 512), *(v21 + 520), *(v21 + 488)))
        {
          if (*__error() == 12)
          {
            archive_set_error(v23, 12, "No memory for Linkname");
            return -30;
          }

          v11 = v23;
          v7 = archive_string_conversion_charset_name(*(v21 + 488));
          archive_set_error(v11, 79, "Linkname cannot be converted from %s to current locale.", v7);
          v17 = -20;
        }
      }

      else
      {
        archive_entry_set_hardlink(v22, *(v21 + 80));
      }

      archive_entry_unset_size(v22);
      *(v21 + 216) = 0;
      return v17;
    }

    if ((v20[17] & 0xF000) != 0x4000 && v20[6] < *(v21 + 160))
    {
      seek = __archive_read_seek(v23, v20[6], 0);
      if (seek != v20[6])
      {
        archive_set_error(v23, -1, "Ignoring out-of-order file @%jx (%s) %jd < %jd", v20[19], *(v21 + 16), v20[6], *(v21 + 160));
        *(v21 + 216) = 0;
        return -20;
      }

      *(v21 + 160) = seek;
    }

    *(v21 + 232) = *(v20 + 61);
    if (*(v20 + 61))
    {
      v14 = v21 + 232;
      *(v21 + 248) = 0;
      *(v14 + 4) = *(v20 + 62);
      *(v14 + 8) = v20[32];
      *(v14 + 40) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 104) = 0;
      archive_entry_set_size(v22, v20[32]);
    }

    *(v21 + 72) = v20[19];
    if (*(v21 + 42))
    {
      __memcpy_chk();
      *(v21 + 520) = *(v21 + 504);
    }

    else
    {
      *(v21 + 88) = 0;
      v10 = (v21 + 80);
      if (*(v21 + 16))
      {
        v9 = strlen(*(v21 + 16));
        archive_strncat(v10, *(v21 + 16), v9);
      }

      else
      {
        archive_strncat(v10, 0, 0);
      }
    }

    *(v21 + 480) = v20[34];
    if (*(v21 + 480))
    {
      *(v21 + 216) = *(*(v21 + 480) + 8);
    }

    if (archive_entry_filetype(v22) == 0x4000)
    {
      archive_entry_set_nlink(v22, *(v20 + 8) + 2);
      *(v21 + 216) = 0;
    }

    if (v17)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t archive_read_format_iso9660_read_data(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = **(a1 + 2072);
  if (*(v7 + 224))
  {
    __archive_read_consume(v12, *(v7 + 224));
    *(v7 + 224) = 0;
  }

  if (*(v7 + 216) <= 0)
  {
    if (*(v7 + 480))
    {
      *(v7 + 480) = *(*(v7 + 480) + 16);
    }

    if (!*(v7 + 480))
    {
      *v11 = 0;
      *v10 = 0;
      *v9 = *(v7 + 208);
      return 1;
    }

    if (*(v7 + 160) < **(v7 + 480))
    {
      consume = __archive_read_consume(v12, **(v7 + 480) - *(v7 + 160));
      if (consume < 0)
      {
        return consume;
      }

      *(v7 + 160) = **(v7 + 480);
    }

    if (**(v7 + 480) < *(v7 + 160))
    {
      archive_set_error(v12, -1, "Ignoring out-of-order file (%s) %jd < %jd", *(v7 + 16), **(v7 + 480), *(v7 + 160));
      *v11 = 0;
      *v10 = 0;
      *v9 = *(v7 + 208);
      return -20;
    }

    *(v7 + 216) = *(*(v7 + 480) + 8);
  }

  if (*(v7 + 232))
  {
    return zisofs_read_data(v12, v11, v10, v9);
  }

  else
  {
    v4 = __archive_read_ahead(v12, 1uLL, &v8);
    *v11 = v4;
    if (!v8)
    {
      archive_set_error(v12, -1, "Truncated input file");
    }

    if (*v11)
    {
      if (v8 > *(v7 + 216))
      {
        v8 = *(v7 + 216);
      }

      *v10 = v8;
      *v9 = *(v7 + 208);
      *(v7 + 208) += v8;
      *(v7 + 216) -= v8;
      *(v7 + 224) = v8;
      *(v7 + 160) += v8;
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t isPVD(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (*(a2 + 6) == 1)
    {
      if (*(a2 + 7))
      {
        return 0;
      }

      else if (isNull(a1, a2, 0x48u, 8u))
      {
        if (isNull(a1, a2, 0x58u, 0x20u))
        {
          v2 = archive_le16dec_1((a2 + 128));
          v8 = v2;
          if (v2)
          {
            v7 = archive_le32dec_5((a2 + 80));
            if (v7 > 20)
            {
              if (*(a2 + 881) == 1)
              {
                v5 = archive_le32dec_5((a2 + 140));
                if (v5 >= 18 && v5 < v7)
                {
                  v6 = archive_be32dec_1((a2 + 148));
                  if ((v6 <= 0 || v6 >= 18) && v6 < v7)
                  {
                    for (i = 0; i < 1; ++i)
                    {
                      if (*(a2 + i + 882) && *(a2 + i + 882) != 32)
                      {
                        return 0;
                      }
                    }

                    if (isNull(a1, a2, 0x573u, 0x28Du))
                    {
                      if (*(a2 + 156) == 34)
                      {
                        if (!*(a1 + 188))
                        {
                          *(a1 + 168) = v8;
                          *(a1 + 184) = v7;
                          *(a1 + 176) = v8 * v7;
                          *(a1 + 188) = archive_le32dec_5((a2 + 158));
                          *(a1 + 192) = archive_le32dec_5((a2 + 166));
                        }

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

uint64_t isJolietSVD(uint64_t a1, unsigned __int8 *a2)
{
  if (isSVD(a1, a2))
  {
    if (a2[88] != 37 || a2[89] != 47)
    {
      return 0;
    }

    switch(a2[90])
    {
      case '@':
        v3 = 1;
        break;
      case 'C':
        v3 = 2;
        break;
      case 'E':
        v3 = 3;
        break;
      default:
        return 0;
    }

    *(a1 + 42) = v3;
    v5 = archive_le16dec_1(a2 + 128);
    v4 = archive_le32dec_5(a2 + 80);
    *(a1 + 168) = v5;
    *(a1 + 184) = v4;
    *(a1 + 176) = v5 * v4;
    *(a1 + 196) = archive_le32dec_5(a2 + 158);
    *(a1 + 200) = archive_le32dec_5(a2 + 166);
    return 48;
  }

  return 0;
}

uint64_t isEVD(uint64_t a1, uint64_t a2)
{
  if (*a2 == 2)
  {
    if (*(a2 + 6) == 2)
    {
      if (*(a2 + 7))
      {
        return 0;
      }

      else if (isNull(a1, a2, 0x48u, 8u))
      {
        if (isNull(a1, a2, 0x58u, 0x20u))
        {
          if (archive_le16dec_1((a2 + 128)))
          {
            v5 = archive_le32dec_5((a2 + 80));
            if (v5 > 20)
            {
              if (*(a2 + 881) == 2)
              {
                v3 = archive_le32dec_5((a2 + 140));
                if (v3 >= 18 && v3 < v5)
                {
                  v4 = archive_be32dec_1((a2 + 148));
                  if ((v4 <= 0 || v4 >= 18) && v4 < v5)
                  {
                    if (isNull(a1, a2, 0x372u, 1u))
                    {
                      if (isNull(a1, a2, 0x573u, 0x28Du))
                      {
                        if (*(a2 + 156) == 34)
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

uint64_t isSVD(uint64_t a1, uint64_t a2)
{
  if (*a2 == 2)
  {
    if (isNull(a1, a2, 0x48u, 8u))
    {
      if (isNull(a1, a2, 0x372u, 1u))
      {
        if (isNull(a1, a2, 0x573u, 0x28Du))
        {
          if (*(a2 + 881) == 1)
          {
            if (archive_le16dec_1((a2 + 128)))
            {
              v5 = archive_le32dec_5((a2 + 80));
              if (v5 > 20)
              {
                v3 = archive_le32dec_5((a2 + 140));
                if (v3 >= 18 && v3 < v5)
                {
                  v4 = archive_be32dec_1((a2 + 148));
                  if ((v4 <= 0 || v4 >= 18) && v4 < v5)
                  {
                    if (*(a2 + 156) == 34)
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

BOOL isVolumePartition(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    if (*(a2 + 6) == 1)
    {
      if (*(a2 + 7))
      {
        return 0;
      }

      else
      {
        v3 = archive_le32dec_5((a2 + 72));
        return v3 > 16 && v3 < *(a1 + 184) && v3 == archive_be32dec_1((a2 + 76));
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

BOOL isVDSetTerminator(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 255)
  {
    return a2[6] == 1 && isNull(a1, a2, 7u, 0x7F9u);
  }

  else
  {
    return 0;
  }
}

BOOL isNull(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  while (a4 >= 0x800uLL)
  {
    if (!memcmp((a1 + 528), (a2 + a3), 0x800uLL))
    {
      return 0;
    }

    a3 += 2048;
    a4 -= 2048;
  }

  return !a4 || memcmp((a1 + 528), (a2 + a3), a4) == 0;
}

uint64_t choose_volume(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 188);
  if (!*(a2 + 4))
  {
    *(a2 + 42) = 0;
  }

  if (*(a2 + 42) && *v6 > *(a2 + 196))
  {
    v6 = (a2 + 196);
  }

  consume = __archive_read_consume(a1, *v6 << 11);
  if (consume < 0)
  {
    return consume;
  }

  *(a2 + 160) = consume;
  ahead = __archive_read_ahead(a1, v6[1], 0);
  if (!ahead)
  {
LABEL_9:
    archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list");
    return -30;
  }

  v3 = *(a2 + 42);
  *(a2 + 42) = 0;
  v9 = parse_file_info(a1, 0, ahead, v6[1]);
  if (!v9)
  {
    return -30;
  }

  *(a2 + 42) = v3;
  if (v6 == (a2 + 188) && *(a2 + 40) && *(a2 + 42))
  {
    *(a2 + 42) = 0;
  }

  if (v6 == (a2 + 188) && !*(a2 + 40) && *(a2 + 42))
  {
    v8 = __archive_read_consume(a1, (*(a2 + 196) << 11) - *(a2 + 160));
    if (v8 < 0)
    {
      return v8;
    }

    *(a2 + 160) += v8;
    v5 = __archive_read_ahead(a1, *(a2 + 200), 0);
    if (!v5)
    {
      goto LABEL_9;
    }

    *(a2 + 42) = 0;
    v9 = parse_file_info(a1, 0, v5, *(a2 + 200));
    if (!v9)
    {
      return -30;
    }

    *(a2 + 42) = v3;
  }

  if (heap_add_entry(a1, a2 + 112, v9, *(v9 + 6)))
  {
    return -30;
  }

  else
  {
    if (*(a2 + 40))
    {
      *(a1 + 16) = 262145;
      *(a1 + 24) = "ISO9660 with Rockridge extensions";
    }

    return 0;
  }
}

uint64_t next_entry_seek(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  cache_entry = next_cache_entry(a1, a2, a3);
  if (!cache_entry)
  {
    v6 = *a3;
    if (!*(*a3 + 56))
    {
      *(v6 + 48) = *(a2 + 160);
    }

    if (*(a2 + 224))
    {
      __archive_read_consume(a1, *(a2 + 224));
      *(a2 + 224) = 0;
    }

    if (*(a2 + 160) < *(v6 + 48))
    {
      consume = __archive_read_consume(a1, *(v6 + 48) - *(a2 + 160));
      if (consume < 0)
      {
        return consume;
      }

      *(a2 + 160) = *(v6 + 48);
    }

    return 0;
  }

  return cache_entry;
}

uint64_t build_pathname_utf16be(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (!a4[1] || !*(a4[1] + 200))
  {
LABEL_6:
    if (a4[25])
    {
      if (*a3 + a4[25] > a2)
      {
        return -1;
      }

      __memcpy_chk();
      *a3 += a4[25];
    }

    else
    {
      if (*a3 + 2 > a2)
      {
        return -1;
      }

      *(a1 + *a3) = 0;
      *(a1 + *a3 + 1) = 46;
      *a3 += 2;
    }

    return 0;
  }

  if (!build_pathname_utf16be(a1, a2, a3, a4[1]))
  {
    *(a1 + *a3) = 0;
    *(a1 + *a3 + 1) = 47;
    *a3 += 2;
    goto LABEL_6;
  }

  return -1;
}

uint64_t build_pathname(void *a1, void *a2, int a3)
{
  if (a3 > 1000)
  {
    return 0;
  }

  if (a2[1] && *(a2[1] + 176))
  {
    if (!build_pathname(a1, a2[1], a3 + 1))
    {
      return 0;
    }

    archive_strcat(a1, "/");
  }

  if (a2[22])
  {
    archive_string_concat(a1, a2 + 21);
  }

  else
  {
    archive_strcat(a1, ".");
  }

  return *a1;
}

char *parse_file_info(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v21 = **(a1 + 2072);
  if (a4)
  {
    v13 = *a3;
    if (a4 >= v13 && v13 >= 0x22)
    {
      size = a3[32];
      v10 = archive_le32dec_5(a3 + 2);
      v12 = toi(a3 + 10, 4);
      if (v13 - 33 < size || !size)
      {
        archive_set_error(a1, -1, "Invalid length of file identifier");
        return 0;
      }

      if (v10 > 0 && v10 + (v12 + *(v21 + 168) - 1) / *(v21 + 168) > *(v21 + 184) || v12 && v10 < 0)
      {
        archive_set_error(a1, -1, "Invalid location of extent of file");
        return 0;
      }

      v11 = *(v21 + 168) * v10;
      for (i = a2; i; i = *(i + 8))
      {
        if (*(i + 48) == v11)
        {
          archive_set_error(a1, 79, "Directory structure contains loop");
          return 0;
        }
      }

      v20 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B0040C474A8FDuLL);
      if (!v20)
      {
        archive_set_error(a1, 12, "No memory for file entry");
        return 0;
      }

      *(v20 + 1) = a2;
      *(v20 + 6) = v11;
      *(v20 + 7) = v12;
      *(v20 + 13) = isodate7(a3 + 18);
      v4 = *(v20 + 13);
      *(v20 + 14) = v4;
      *(v20 + 15) = v4;
      *(v20 + 36) = 0;
      *(v20 + 37) = v20 + 288;
      __s1 = a3 + 33;
      v16 = &a3[size + 33 + ((size & 1) == 0)];
      v15 = &a3[v13];
      if (*(v21 + 42))
      {
        if (size > 0xCE)
        {
          size = 206;
        }

        sizea = size & 0xFFFFFFFFFFFFFFFELL;
        if (sizea > 4 && !__s1[sizea - 4] && __s1[sizea - 3] == 59 && !__s1[sizea - 2] && __s1[sizea - 1] == 49)
        {
          sizea -= 4;
        }

        v5 = malloc_type_malloc(sizea, 0x74D08E47uLL);
        *(v20 + 24) = v5;
        if (!v5)
        {
          archive_set_error(a1, 12, "No memory for file name");
LABEL_106:
          archive_string_free((v20 + 168));
          free(v20);
          return 0;
        }

        __memcpy_chk();
        *(v20 + 25) = sizea;
      }

      else
      {
        if (size > 2 && __s1[size - 2] == 59 && __s1[size - 1] == 49)
        {
          size -= 2;
        }

        if (size > 1 && __s1[size - 1] == 46)
        {
          --size;
        }

        *(v20 + 22) = 0;
        archive_strncat(v20 + 21, __s1, size);
      }

      v9 = a3[25];
      if ((v9 & 2) != 0)
      {
        *(v20 + 68) = 16832;
      }

      else
      {
        *(v20 + 68) = -32512;
      }

      *(v20 + 66) = (v9 & 0x80) != 0;
      if (*(v20 + 7) || v10 < 0)
      {
        *(v20 + 19) = v10;
      }

      else
      {
        *(v20 + 19) = -1;
        *(v20 + 6) = -1;
      }

      if (*(v21 + 8))
      {
        if (!a2 && v15 - v16 >= 7 && !memcmp(v16, "SP\a\x01\xBE\xEFrr_moved", 6uLL))
        {
          *(v21 + 43) = v16[6];
          *(v21 + 41) = 1;
          v16 += 7;
        }

        if (*(v21 + 41))
        {
          v20[208] = 0;
          v20[240] = 0;
          if (parse_rockridge(a1, v20, &v16[*(v21 + 43)], v15))
          {
            goto LABEL_106;
          }

          if (*(v20 + 7) && (*(v20 + 68) & 0xF000) == 0xA000)
          {
            *(v20 + 7) = 0;
            *(v20 + 19) = -1;
            *(v20 + 6) = -1;
          }
        }

        else
        {
          *(v21 + 8) = 0;
        }
      }

      *(v20 + 40) = 1;
      if (a2 && (v9 & 2) != 0)
      {
        ++*(a2 + 32);
      }

      if (*(v21 + 40))
      {
        if (a2 && !*(a2 + 8) && (v9 & 2) != 0 && !*(v21 + 48) && *(v20 + 21) && (!strcmp(*(v20 + 21), "rr_moved") || !strcmp(*(v20 + 21), ".rr_moved")))
        {
          *(v21 + 48) = v20;
          v20[72] = 1;
          v20[73] = 1;
          v20[74] = 0;
          --*(a2 + 32);
        }

        else if (v20[74])
        {
          if (!a2 || !*(a2 + 72))
          {
            goto LABEL_81;
          }

          if (*(v20 + 10))
          {
            archive_set_error(a1, -1, "Invalid Rockridge RE and CL");
            goto LABEL_106;
          }

          if ((v9 & 2) == 0)
          {
LABEL_81:
            archive_set_error(a1, -1, "Invalid Rockridge RE");
            goto LABEL_106;
          }
        }

        else if (a2 && *(a2 + 72))
        {
          v20[73] = 0;
        }

        else if (a2 && (v9 & 2) != 0 && (*(a2 + 74) || *(a2 + 75)))
        {
          v20[75] = 1;
        }

        if (*(v20 + 10))
        {
          if (!a2 || !*(a2 + 8) || (v9 & 2) != 0)
          {
            goto LABEL_96;
          }

          ++*(a2 + 32);
          v6 = *(v20 + 10) + 1;
          *(v20 + 19) = v6;
          *(v20 + 6) = v6;
          for (j = a2; j; j = *(j + 8))
          {
            if (*(j + 48) == *(v20 + 10))
            {
              archive_set_error(a1, -1, "Invalid Rockridge CL");
              goto LABEL_106;
            }
          }

          if (*(v20 + 10) == *(v20 + 6) || *(a2 + 72))
          {
LABEL_96:
            archive_set_error(a1, -1, "Invalid Rockridge CL", 0);
            goto LABEL_106;
          }
        }
      }

      register_file(v21, v20);
      return v20;
    }
  }

  archive_set_error(a1, -1, "Invalid length of directory record");
  return 0;
}

uint64_t heap_add_entry(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (a4 << 16) + *(a2 + 12);
  if (*(a2 + 12) >= *(a2 + 8))
  {
    v6 = 2 * *(a2 + 8);
    if (*(a2 + 8) < 1024)
    {
      v6 = 1024;
    }

    if (v6 <= *(a2 + 8))
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    v7 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
    if (!v7)
    {
      archive_set_error(a1, 12, "Out of memory");
      return -30;
    }

    if (*(a2 + 8))
    {
      __memcpy_chk();
    }

    free(*a2);
    *a2 = v7;
    *(a2 + 8) = v6;
  }

  *(a3 + 40) = v10;
  v4 = *(a2 + 12);
  *(a2 + 12) = v4 + 1;
  for (i = v4; i > 0; i = (i - 1) / 2)
  {
    v8 = (i - 1) / 2;
    if (v10 >= *(*(*a2 + 8 * v8) + 40))
    {
      *(*a2 + 8 * i) = a3;
      return 0;
    }

    *(*a2 + 8 * i) = *(*a2 + 8 * v8);
  }

  **a2 = a3;
  return 0;
}

uint64_t toi(unsigned __int8 *a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      return *a1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = *a1;
    return v3 + (toi(a1 + 1, a2 - 1) << 8);
  }
}

time_t isodate7(unsigned __int8 *a1)
{
  v5 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = *v5;
  __b.tm_mon = v5[1] - 1;
  __b.tm_mday = v5[2];
  __b.tm_hour = v5[3];
  __b.tm_min = v5[4];
  __b.tm_sec = v5[5];
  v3 = v5[6];
  if (v3 > -48 && v3 < 52)
  {
    __b.tm_hour -= v3 / 4;
    __b.tm_min -= 15 * (v3 % 4);
  }

  v2 = time_from_tm(&__b);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t parse_rockridge(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v12 = 0;
  v13 = **(a1 + 2072);
  while (1)
  {
    v7 = 0;
    if ((a3 + 4) <= a4)
    {
      v7 = 0;
      if (*a3 >= 0x41u)
      {
        v7 = 0;
        if (*a3 <= 0x5Au)
        {
          v7 = 0;
          if (a3[1] >= 0x41u)
          {
            v7 = 0;
            if (a3[1] <= 0x5Au)
            {
              v7 = 0;
              if (a3[2] >= 4u)
              {
                v7 = &a3[a3[2]] <= a4;
              }
            }
          }
        }
      }
    }

    if (!v7)
    {
      break;
    }

    v11 = a3 + 4;
    v10 = a3[2] - 4;
    v9 = a3[3];
    v6 = *a3;
    switch(v6)
    {
      case 'C':
        if (a3[1] == 69)
        {
          if (v9 == 1 && a3[2] == 28)
          {
            v8 = archive_le32dec_5(v11);
            *(a2 + 64) = archive_le32dec_5(a3 + 12);
            *(a2 + 68) = archive_le32dec_5(a3 + 20);
            if (register_CE(a1, v8, a2))
            {
              return -30;
            }
          }
        }

        else if (a3[1] == 76 && v9 == 1 && a3[2] == 12)
        {
          v5 = *(v13 + 168);
          *(a2 + 80) = v5 * archive_le32dec_5(v11);
          *(v13 + 40) = 1;
        }

        break;
      case 'N':
        if (a3[1] == 77 && v9 == 1)
        {
          parse_rockridge_NM1(a2, v11, v10);
          *(v13 + 40) = 1;
        }

        break;
      case 'P':
        if (a3[1] == 78)
        {
          if (v9 == 1 && a3[2] == 20)
          {
            *(a2 + 128) = toi(v11, 4);
            *(a2 + 128) <<= 32;
            *(a2 + 128) |= toi(a3 + 12, 4);
            *(v13 + 40) = 1;
          }
        }

        else if (a3[1] == 88 && v9 == 1)
        {
          if (v10 >= 8)
          {
            *(a2 + 136) = toi(v11, 4);
          }

          if (v10 >= 16)
          {
            *(a2 + 160) = toi(a3 + 12, 4);
          }

          if (v10 >= 24)
          {
            *(a2 + 140) = toi(a3 + 20, 4);
          }

          if (v10 >= 32)
          {
            *(a2 + 144) = toi(a3 + 28, 4);
          }

          if (v10 >= 40)
          {
            *(a2 + 152) = toi(a3 + 36, 4);
          }

          *(v13 + 40) = 1;
        }

        break;
      case 'R':
        if (a3[1] == 69 && v9 == 1)
        {
          *(a2 + 74) = 1;
          *(v13 + 40) = 1;
        }

        break;
      case 'S':
        if (a3[1] == 76)
        {
          if (v9 == 1)
          {
            parse_rockridge_SL1(a2, v11, v10);
            *(v13 + 40) = 1;
          }
        }

        else if (a3[1] == 84 && a3[2] == 4 && v9 == 1)
        {
          *(v13 + 41) = 0;
          *(v13 + 40) = 0;
          return 0;
        }

        break;
      case 'T':
        if (a3[1] == 70 && v9 == 1)
        {
          parse_rockridge_TF1(a2, v11, v10);
          *(v13 + 40) = 1;
        }

        break;
      default:
        if (v6 == 90 && a3[1] == 70 && v9 == 1)
        {
          parse_rockridge_ZF1(a2, v11, v10);
        }

        break;
    }

    a3 += a3[2];
    v12 = 1;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    archive_set_error(a1, 79, "Tried to parse Rockridge extensions, but none found");
    return -20;
  }
}

uint64_t register_file(uint64_t result, void *a2)
{
  *a2 = *(result + 104);
  *(result + 104) = a2;
  return result;
}

uint64_t register_CE(uint64_t a1, int a2, uint64_t a3)
{
  v11 = **(a1 + 2072);
  v8 = a2 * *(v11 + 168);
  if ((*(a3 + 136) & 0xF000) == 0x8000 && v8 >= *(a3 + 48) || v8 < *(v11 + 160) || *(a3 + 64) + *(a3 + 68) > *(v11 + 168) || v8 + *(a3 + 64) + *(a3 + 68) > *(v11 + 176))
  {
    archive_set_error(a1, -1, "Invalid parameter in SUSP CE extension");
    return -30;
  }

  else
  {
    v10 = (v11 + 56);
    if (*(v11 + 64) >= *(v11 + 68))
    {
      if (*(v11 + 68) < 16)
      {
        count = 16;
      }

      else
      {
        count = 2 * *(v11 + 68);
      }

      if (count <= *(v11 + 68))
      {
        archive_set_error(a1, 12, "Out of memory");
        return -30;
      }

      v9 = malloc_type_calloc(count, 0x10uLL, 0x10200405730B0C9uLL);
      if (!v9)
      {
        archive_set_error(a1, 12, "Out of memory");
        return -30;
      }

      if (*v10)
      {
        __memcpy_chk();
        free(*v10);
      }

      *v10 = v9;
      *(v11 + 68) = count;
    }

    v3 = *(v11 + 64);
    *(v11 + 64) = v3 + 1;
    for (i = v3; i > 0; i = (i - 1) / 2)
    {
      count_4 = (i - 1) / 2;
      if (v8 >= *(*v10 + 2 * count_4))
      {
        *(*v10 + 2 * i) = v8;
        *(*v10 + 2 * i + 1) = a3;
        return 0;
      }

      *(*v10 + i) = *(*v10 + count_4);
    }

    **v10 = v8;
    *(*v10 + 1) = a3;
    return 0;
  }
}

void *parse_rockridge_NM1(void *result, _BYTE *a2, int a3)
{
  v4 = result;
  if (!*(result + 208))
  {
    result[22] = 0;
  }

  *(result + 208) = 0;
  if (a3 >= 1)
  {
    v3 = *a2;
    if (*a2)
    {
      switch(v3)
      {
        case 1:
          if (a3 >= 2)
          {
            result = archive_strncat(result + 21, a2 + 1, a3 - 1);
            *(v4 + 208) = 1;
          }

          break;
        case 2:
          return archive_strcat(result + 21, ".");
        case 4:
          return archive_strcat(result + 21, "..");
      }
    }

    else if (a3 >= 2)
    {
      return archive_strncat(result + 21, a2 + 1, a3 - 1);
    }
  }

  return result;
}

void *parse_rockridge_SL1(void *result, _BYTE *a2, int a3)
{
  v11 = result;
  v6 = &unk_1BF3442C6;
  if (!*(result + 240) || !result[28])
  {
    result[28] = 0;
  }

  *(result + 240) = 0;
  if (a3 >= 1)
  {
    if (*a2)
    {
      if (*a2 != 1)
      {
        return result;
      }

      *(result + 240) = 1;
    }

    v9 = a2 + 1;
    for (i = a3 - 1; i >= 2; i = v8 - v4)
    {
      v5 = *v9;
      v3 = (v9 + 1);
      v10 = v9 + 2;
      v4 = *v3;
      v8 = i - 2;
      result = archive_strcat(v11 + 27, v6);
      v6 = "/";
      if (v5)
      {
        switch(v5)
        {
          case 1:
            if (v8 < v4)
            {
              return result;
            }

            result = archive_strncat(v11 + 27, v10, v4);
            v6 = &unk_1BF3442C6;
            break;
          case 2:
            result = archive_strcat(v11 + 27, ".");
            break;
          case 4:
            result = archive_strcat(v11 + 27, "..");
            break;
          case 8:
            result = archive_strcat(v11 + 27, "/");
            v6 = &unk_1BF3442C6;
            break;
          case 16:
            v11[28] = 0;
            result = archive_strcat(v11 + 27, "ROOT");
            break;
          case 32:
            result = archive_strcat(v11 + 27, "hostname");
            break;
          default:
            return result;
        }
      }

      else
      {
        if (v8 < v4)
        {
          return result;
        }

        result = archive_strncat(v11 + 27, v10, v4);
      }

      v9 = &v10[v4];
    }
  }

  return result;
}

time_t parse_rockridge_TF1(time_t result, _BYTE *a2, int a3)
{
  v6 = result;
  if (a3 >= 1)
  {
    v3 = *a2;
    v5 = a2 + 1;
    v4 = a3 - 1;
    if ((*a2 & 0x80) != 0)
    {
      if ((v3 & 1) != 0 && v4 >= 17)
      {
        *(result + 88) = 1;
        result = isodate17(v5);
        v6[12] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 2) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[13] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 4) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[14] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 8) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[15] = result;
      }
    }

    else
    {
      if ((v3 & 1) != 0 && v4 >= 7)
      {
        *(result + 88) = 1;
        result = isodate7(v5);
        v6[12] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 2) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[13] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 4) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[14] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 8) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[15] = result;
      }
    }
  }

  return result;
}

uint64_t parse_rockridge_ZF1(uint64_t result, _BYTE *a2, int a3)
{
  v3 = result;
  if (__PAIR64__(a2[1], *a2) == 0x7A00000070 && a3 == 12)
  {
    *(result + 244) = 1;
    *(result + 248) = a2[3];
    result = archive_le32dec_5(a2 + 4);
    *(v3 + 256) = result;
  }

  return result;
}

time_t isodate17(unsigned __int8 *a1)
{
  v5 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = 1000 * (*v5 - 48) + 100 * (v5[1] - 48) + 10 * (v5[2] - 48) + v5[3] - 48 - 1900;
  __b.tm_mon = 10 * (v5[4] - 48) + v5[5] - 48;
  __b.tm_mday = 10 * (v5[6] - 48) + v5[7] - 48;
  __b.tm_hour = 10 * (v5[8] - 48) + v5[9] - 48;
  __b.tm_min = 10 * (v5[10] - 48) + v5[11] - 48;
  __b.tm_sec = 10 * (v5[12] - 48) + v5[13] - 48;
  v3 = v5[16];
  if (v3 > -48 && v3 < 52)
  {
    __b.tm_hour -= v3 / 4;
    __b.tm_min -= 15 * (v3 % 4);
  }

  v2 = time_from_tm(&__b);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t next_cache_entry(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v17 = 0;
  v18 = 0;
  entry = cache_get_entry(a2);
  if (entry)
  {
    *v20 = entry;
    return 0;
  }

  else
  {
    while (1)
    {
LABEL_3:
      entry = heap_get_entry((v21 + 112));
      *v20 = entry;
      if (!entry)
      {
        if (*(v21 + 144) && *(v21 + 48) && *(*(v21 + 48) + 73))
        {
          cache_add_entry(v21, *(v21 + 48));
        }

        while (1)
        {
          v13 = re_get_entry(v21);
          if (!v13)
          {
            break;
          }

          while (1)
          {
            v10 = rede_get_entry(v13);
            if (!v10)
            {
              break;
            }

            cache_add_entry(v21, v10);
          }
        }

        if (*(v21 + 128))
        {
          return next_cache_entry(v22, v21, v20);
        }

        else
        {
          return 1;
        }
      }

      if (*(entry + 80))
      {
        break;
      }

      if ((*(entry + 136) & 0xF000) != 0x4000)
      {
        goto LABEL_44;
      }

      children = read_children(v22, entry);
      if (children)
      {
        return children;
      }

      if (*(entry + 72))
      {
        if (!*(entry + 73))
        {
          goto LABEL_44;
        }
      }

      else if (*(entry + 74))
      {
        re_add_entry(v21, entry);
      }

      else if (!*(entry + 75) || rede_add_entry(entry))
      {
        goto LABEL_44;
      }
    }

    v9 = 0;
    v8 = 0;
    while (1)
    {
      v14 = re_get_entry(v21);
      if (v14 == v9)
      {
        break;
      }

      if (!v9)
      {
        v9 = v14;
      }

      if (*(v14 + 48) == *(entry + 80))
      {
        --*(*(v14 + 8) + 32);
        *(v14 + 8) = *(entry + 8);
        *(v14 + 74) = 0;
        if (*(*(v14 + 8) + 75))
        {
          v8 = 1;
          *(v14 + 75) = 1;
          if ((rede_add_entry(v14) & 0x80000000) != 0)
          {
LABEL_69:
            archive_set_error(v22, -1, "Failed to connect 'CL' pointer to 'RE' rr_moved pointer of Rockridge extensions: current position = %jd, CL offset = %jd", *(v21 + 160), *(entry + 80));
            return -30;
          }

          while (1)
          {
            v11 = rede_get_entry(v14);
            if (!v11)
            {
              break;
            }

            if ((rede_add_entry(v11) & 0x80000000) != 0)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          entry = v14;
          *v20 = v14;
          while (1)
          {
            v12 = rede_get_entry(entry);
            if (!v12)
            {
              break;
            }

            cache_add_entry(v21, v12);
          }
        }

        break;
      }

      re_add_entry(v21, v14);
    }

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_44:
    if ((*(entry + 136) & 0xF000) == 0x8000 && *(entry + 152) != -1)
    {
      v15 = 0;
      v16 = *(entry + 152);
      *(v21 + 128) = 0;
      *(v21 + 136) = v21 + 128;
      v17 = 0;
      v18 = &v17;
      while (1)
      {
        v6 = 0;
        if (*(v21 + 124) > 0)
        {
          v5 = 1;
          if (*(**(v21 + 112) + 152) != -1)
          {
            v5 = *(**(v21 + 112) + 152) == v16;
          }

          v6 = v5;
        }

        if (!v6)
        {
          break;
        }

        if (*(entry + 152) == -1)
        {
          *(entry + 16) = 0;
          *v18 = entry;
          v18 = (entry + 16);
        }

        else
        {
          ++v15;
          cache_add_entry(v21, entry);
        }

        entry = heap_get_entry((v21 + 112));
      }

      if (v15)
      {
        if (*(entry + 152) == -1)
        {
          *(entry + 16) = 0;
          *v18 = entry;
          v18 = (entry + 16);
        }

        else
        {
          ++v15;
          cache_add_entry(v21, entry);
        }

        if (v15 > 1)
        {
          for (entry = *(v21 + 128); entry; entry = *(entry + 16))
          {
            *(entry + 160) = v15;
          }
        }

        if (v17)
        {
          **(v21 + 136) = v17;
          *(v21 + 136) = v18;
        }

        v3 = cache_get_entry(v21);
        *v20 = v3;
        return *v20 == 0;
      }

      else
      {
        *v20 = entry;
        return entry == 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t cache_get_entry(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 128) = *(v2 + 16);
    if (!*(a1 + 128))
    {
      *(a1 + 136) = a1 + 128;
    }
  }

  return v2;
}

uint64_t heap_get_entry(_DWORD *a1)
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
  v10 = *(**a1 + 40);
  while (1)
  {
    v7 = 2 * v8 + 1;
    if (v7 >= a1[3])
    {
      return v5;
    }

    v9 = *(*(*a1 + 8 * v7) + 40);
    v6 = 2 * v8 + 2;
    if (v6 < a1[3] && *(*(*a1 + 8 * v6) + 40) < v9)
    {
      v7 = 2 * v8 + 2;
      v9 = *(*(*a1 + 8 * v6) + 40);
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

uint64_t cache_add_entry(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 0;
  **(result + 136) = a2;
  *(result + 136) = a2 + 16;
  return result;
}

uint64_t re_get_entry(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 144) = *(v2 + 24);
    if (!*(a1 + 144))
    {
      *(a1 + 152) = a1 + 144;
    }
  }

  return v2;
}

uint64_t rede_get_entry(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 288) = *(v2 + 24);
    if (!*(a1 + 288))
    {
      *(a1 + 296) = a1 + 288;
    }
  }

  return v2;
}

uint64_t rede_add_entry(uint64_t a1)
{
  for (i = *(a1 + 8); ; i = *(i + 8))
  {
    v2 = 0;
    if (i)
    {
      v2 = *(i + 74) == 0;
    }

    if (!v2)
    {
      break;
    }
  }

  if (i)
  {
    *(a1 + 24) = 0;
    **(i + 296) = a1;
    *(i + 296) = a1 + 24;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t re_add_entry(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 152) = a2;
  *(result + 152) = a2 + 24;
  return result;
}

uint64_t read_children(uint64_t a1, uint64_t a2)
{
  v12 = **(a1 + 2072);
  if (v12[28])
  {
    __archive_read_consume(a1, v12[28]);
    v12[28] = 0;
  }

  if (v12[20] <= *(a2 + 48))
  {
    if (*(a2 + 48) + *(a2 + 56) <= v12[22])
    {
      if (v12[20] < *(a2 + 48))
      {
        consume = __archive_read_consume(a1, *(a2 + 48) - v12[20]);
        if (consume < 0)
        {
          return consume;
        }

        v12[20] = *(a2 + 48);
      }

      v8 = (*(a2 + 56) + v12[21] - 1) / v12[21] * v12[21];
      ahead = __archive_read_ahead(a1, v8, 0);
      if (ahead)
      {
        v12[20] += v8;
        v9 = 0;
        v7 = v8;
        while (v8)
        {
          v10 = ahead;
          ahead += v12[21];
          v8 -= v12[21];
          while (1)
          {
            v3 = 0;
            if (*v10)
            {
              v3 = 0;
              if ((v10 + 33) < ahead)
              {
                v3 = &v10[*v10] <= ahead;
              }
            }

            if (!v3)
            {
              break;
            }

            if ((v10 + 32) < ahead && (v10 + 33) < ahead && (v10[32] != 1 || v10[33]) && (v10[32] != 1 || v10[33] != 1))
            {
              v5 = parse_file_info(a1, a2, v10, ahead - v10);
              if (!v5)
              {
                __archive_read_consume(a1, v7);
                return -30;
              }

              if (!*(v5 + 10) && (*(v5 + 66) || v9))
              {
                if (!v9)
                {
                  v9 = v5;
                  *(v5 + 34) = 0;
                  *(v5 + 35) = v5 + 272;
                }

                v4 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                if (!v4)
                {
                  archive_set_error(a1, 12, "No memory for multi extent");
                  __archive_read_consume(a1, v7);
                  return -30;
                }

                *v4 = *(v5 + 6);
                v4[1] = *(v5 + 7);
                v4[2] = 0;
                **(v9 + 35) = v4;
                *(v9 + 35) = v4 + 2;
                if (v9 == v5)
                {
                  if (heap_add_entry(a1, (v12 + 14), v5, *(v5 + 6)))
                  {
                    return -30;
                  }
                }

                else
                {
                  *(v9 + 7) += *(v5 + 7);
                  if (!*(v5 + 66))
                  {
                    v9 = 0;
                  }
                }
              }

              else if (heap_add_entry(a1, (v12 + 14), v5, *(v5 + 6)))
              {
                return -30;
              }
            }

            v10 += *v10;
          }
        }

        __archive_read_consume(a1, v7);
        if (read_CE(a1, v12))
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
        archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list");
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "Directory is beyond end-of-media: %s", *(a2 + 168));
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Ignoring out-of-order directory (%s) %jd > %jd", *(a2 + 168), v12[20], *(a2 + 48));
    return -20;
  }
}

uint64_t read_CE(_DWORD *a1, uint64_t a2)
{
  v11 = (a2 + 56);
  for (i = *(a2 + 168); ; *(a2 + 160) += i)
  {
    v5 = 0;
    if (*(v11 + 2))
    {
      v5 = **v11 == *(a2 + 160);
    }

    if (!v5)
    {
      break;
    }

    ahead = __archive_read_ahead(a1, i, 0);
    if (!ahead)
    {
      archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list");
      return -30;
    }

    do
    {
      v7 = (*v11)[1];
      if ((*(v7 + 64) + *(v7 + 68)) > i)
      {
        archive_set_error(a1, 79, "Malformed CE information");
        return -30;
      }

      v9 = (ahead + *(v7 + 64));
      v8 = &v9[*(v7 + 68)];
      next_CE(v11);
      if (parse_rockridge(a1, v7, v9, v8))
      {
        return -30;
      }

      v4 = 0;
      if (*(v11 + 2))
      {
        v4 = **v11 == *(a2 + 160);
      }
    }

    while (v4);
    __archive_read_consume(a1, i);
  }

  return 0;
}

uint64_t **next_CE(uint64_t **result)
{
  if (*(result + 2) >= 1)
  {
    v1 = *result;
    v2 = *result;
    v3 = *(result + 2) - 1;
    *(result + 2) = v3;
    *v1 = v2[v3];
    v7 = 0;
    v9 = **result;
    while (1)
    {
      v6 = 2 * v7 + 1;
      if (v6 >= *(result + 2))
      {
        break;
      }

      v8 = (*result)[2 * v6];
      v5 = 2 * v7 + 2;
      if (v5 < *(result + 2) && (*result)[2 * v5] < v8)
      {
        v6 = 2 * v7 + 2;
        v8 = (*result)[2 * v5];
      }

      if (v9 <= v8)
      {
        break;
      }

      v4 = *&(*result)[2 * v7];
      *&(*result)[2 * v7] = *&(*result)[2 * v6];
      *&(*result)[2 * v6] = v4;
      v7 = v6;
    }
  }

  return result;
}

uint64_t zisofs_read_data(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v23 = **(a1 + 2072);
  v22 = v23 + 29;
  v21 = __archive_read_ahead(a1, 1uLL, &v19);
  if (v19 > 0)
  {
    if (v19 > v23[27])
    {
      v19 = v23[27];
    }

    v20 = v19;
    v18 = 0;
    if (*(v22 + 4))
    {
      goto LABEL_64;
    }

    v12 = 4 * (((v22[1] + (1 << *(v22 + 1)) - 1) >> *(v22 + 1)) + 1);
    if (v22[11] < v12)
    {
      if (v22[10])
      {
        free(v22[10]);
      }

      v4 = malloc_type_malloc(((v12 >> 10) + 1) << 10, 0x48B66B48uLL);
      v22[10] = v4;
      if (!v22[10])
      {
        goto LABEL_10;
      }

      v22[11] = ((v12 >> 10) + 1) << 10;
    }

    v22[12] = v12;
    v13 = 1 << *(v22 + 1);
    if (v22[4] < v13)
    {
      if (v22[3])
      {
        free(v22[3]);
      }

      v5 = malloc_type_malloc(v13, 0xFFC493ADuLL);
      v22[3] = v5;
      if (!v22[3])
      {
LABEL_10:
        archive_set_error(v27, 12, "No memory for zisofs decompression");
        return -30;
      }
    }

    v22[4] = v13;
    if (v22[8] < 0x10uLL)
    {
      v14 = 16 - v22[8];
      if (v20 < v14)
      {
        v14 = v20;
      }

      __memcpy_chk();
      v22[8] += v14;
      v20 -= v14;
      v21 += v14;
    }

    if (!*(v22 + 18) && v22[8] == 16)
    {
      v11 = memcmp(v22 + 44, &zisofs_magic_0, 8uLL) != 0;
      v6 = archive_le32dec_5(v22 + 52);
      if (v6 != v22[1])
      {
        v11 = 1;
      }

      if (*(v22 + 56) != 4)
      {
        v11 = 1;
      }

      if (*(v22 + 57) != *(v22 + 1))
      {
        v11 = 1;
      }

      if (v11)
      {
        archive_set_error(v27, 79, "Illegal zisofs file body");
        return -30;
      }

      *(v22 + 18) = 1;
    }

    if (*(v22 + 18) && v22[13] < v22[12])
    {
      v15 = v22[12] - v22[13];
      if (v20 < v15)
      {
        v15 = v20;
      }

      __memcpy_chk();
      v22[13] += v15;
      v20 -= v15;
      v21 += v15;
      if (v22[13] == v22[12])
      {
        v22[14] = 0;
        *(v22 + 30) = 0;
        *(v22 + 4) = 1;
      }
    }

    if (*(v22 + 4))
    {
LABEL_64:
      if (!*(v22 + 30))
      {
        if ((v22[14] + 4) >= v22[12])
        {
          goto LABEL_45;
        }

        v7 = archive_le32dec_5((v22[10] + v22[14]));
        v10 = v7;
        if (v7 != *(v22 + 10) + v19 - v20)
        {
          archive_set_error(v27, 79, "Illegal zisofs block pointers(cannot seek)");
          return -30;
        }

        v9 = archive_le32dec_5((v22[10] + v22[14] + 4));
        if (v9 < v10)
        {
LABEL_45:
          archive_set_error(v27, 79, "Illegal zisofs block pointers");
          return -30;
        }

        *(v22 + 30) = v9 - v10;
        v22[14] += 4;
        if (*(v22 + 60))
        {
          v16 = inflateReset((v22 + 16));
        }

        else
        {
          v16 = inflateInit_((v22 + 16), "1.2.12", 112);
        }

        if (v16)
        {
          archive_set_error(v27, -1, "Can't initialize zisofs decompression.");
          return -30;
        }

        *(v22 + 60) = 1;
        v22[18] = 0;
        v22[21] = 0;
      }

      if (*(v22 + 30))
      {
        v22[16] = v21;
        if (v20 <= *(v22 + 30))
        {
          *(v22 + 34) = v20;
        }

        else
        {
          *(v22 + 34) = *(v22 + 30);
        }

        v22[19] = v22[3];
        *(v22 + 40) = v22[4];
        v17 = inflate((v22 + 16), 0);
        if (v17 > 1)
        {
          archive_set_error(v27, -1, "zisofs decompression failed (%d)", v17);
          return -30;
        }

        v18 = v22[4] - *(v22 + 40);
        v20 -= v22[16] - v21;
        *(v22 + 30) -= *(v22 + 32) - v21;
      }

      else
      {
        __memset_chk();
        v18 = v22[4];
      }
    }

    v19 -= v20;
    *v26 = v22[3];
    *v25 = v18;
    *v24 = v23[26];
    v23[26] += v18;
    v23[27] -= v19;
    v23[20] += v19;
    *(v22 + 10) += v19;
    v23[28] += v19;
    return 0;
  }

  archive_set_error(v27, 79, "Truncated zisofs file body");
  return -30;
}

uint64_t archive_read_support_filter_lzop(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("lzop"))
  {
    if (__archive_read_register_bidder(a1, 0, 0, lzop_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external lzop program for lzop decompression");
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement");
    return -30;
  }
}

uint64_t lzop_bidder_bid(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  v3 = 0;
  __s1 = __archive_read_filter_ahead(a2, 9uLL, &v3);
  if (__s1 && v3)
  {
    if (!memcmp(__s1, &unk_1BF33B750, 9uLL))
    {
      return 72;
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

uint64_t lzop_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "lzop -d");
  *(a1 + 56) = 11;
  *(a1 + 48) = "lzop";
  return result;
}

uint64_t archive_read_format_mtree_options(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = **(a1 + 2072);
  if (!strcmp(a2, "checkfs"))
  {
    *(v4 + 176) = a3 && *a3;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t read_header(uint64_t a1, void *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  i = 0;
  mtree = 0;
  v4 = 0;
  v7 = **(a1 + 2072);
  if ((v7[6] & 0x80000000) == 0)
  {
    close(*(v7 + 12));
    *(v7 + 12) = -1;
  }

  if (!v7[8])
  {
    v7[18] = archive_entry_linkresolver_new();
    if (!v7[18])
    {
      return -30;
    }

    archive_entry_linkresolver_set_strategy(v7[18], 0x80000);
    mtree = read_mtree(v9, v7);
    if (mtree)
    {
      return mtree;
    }
  }

  *(v9 + 4) = *(v7 + 13);
  *(v9 + 3) = v7[7];
  while (1)
  {
    if (!v7[9])
    {
      return 1;
    }

    if (!strcmp(*(v7[9] + 48), ".."))
    {
      *(v7[9] + 57) = 1;
      if (v7[13])
      {
        for (i = (v7[12] + v7[13] - 1); ; --i)
        {
          v3 = 0;
          if (i >= v7[12])
          {
            v3 = *i != 47;
          }

          if (!v3)
          {
            break;
          }
        }

        if (i >= v7[12])
        {
          --i;
        }

        v7[13] = &i[-v7[12] + 1];
      }
    }

    if (!*(v7[9] + 57))
    {
      v4 = 0;
      mtree = parse_file(v9, v8, v7, v7[9], &v4);
      if (!v4)
      {
        break;
      }
    }

    v7[9] = *(v7[9] + 32);
  }

  return mtree;
}

uint64_t read_data(uint64_t a1, void *a2, ssize_t *a3, void *a4)
{
  v7 = **(a1 + 2072);
  if ((*(v7 + 48) & 0x80000000) != 0)
  {
    *a2 = 0;
    *a4 = 0;
    *a3 = 0;
    return 1;
  }

  else if (*(v7 + 32) || (*(v7 + 24) = 0x10000, (*(v7 + 32) = malloc_type_malloc(*(v7 + 24), 0x15D58C78uLL)) != 0))
  {
    *a2 = *(v7 + 32);
    *a4 = *(v7 + 40);
    if (*(v7 + 24) <= *(v7 + 168) - *(v7 + 40))
    {
      v4 = read(*(v7 + 48), *(v7 + 32), *(v7 + 24));
    }

    else
    {
      v4 = read(*(v7 + 48), *(v7 + 32), *(v7 + 168) - *(v7 + 40));
    }

    if (v4 < 0)
    {
      v5 = __error();
      archive_set_error(a1, *v5, "Can't read");
      return -20;
    }

    else if (v4)
    {
      *(v7 + 40) += v4;
      *a3 = v4;
      return 0;
    }

    else
    {
      *a3 = 0;
      return 1;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory");
    return -30;
  }
}

uint64_t skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if ((*(v2 + 48) & 0x80000000) == 0)
  {
    close(*(v2 + 48));
    *(v2 + 48) = -1;
  }

  return 0;
}

void free_options(void **a1)
{
  while (a1)
  {
    v1 = *a1;
    free(a1[1]);
    free(a1);
    a1 = v1;
  }
}

uint64_t bid_keyword_list(char *a1, uint64_t a2, int a3, int a4)
{
  v11 = 0;
  while (1)
  {
    v8 = 0;
    if (a2 > 0)
    {
      v8 = *a1 != 0;
    }

    if (!v8)
    {
      break;
    }

    for (i = 0; ; i = 1)
    {
      v7 = 0;
      if (a2 > 0)
      {
        v6 = 1;
        if (*a1 != 32)
        {
          v6 = *a1 == 9;
        }

        v7 = v6;
      }

      if (!v7)
      {
        break;
      }

      ++a1;
      --a2;
    }

    if (*a1 == 10 || *a1 == 13 || *a1 == 92 && (a1[1] == 10 || a1[1] == 13))
    {
      break;
    }

    if (!i && !a4)
    {
      return -1;
    }

    if (a4 && !a2)
    {
      return v11;
    }

    if (a3 && bid_keycmp(a1, "all", a2) > 0)
    {
      return 1;
    }

    v12 = bid_keyword(a1, a2);
    if (!v12)
    {
      return -1;
    }

    a1 += v12;
    a2 -= v12;
    ++v11;
    if (*a1 == 61)
    {
      v9 = 0;
      ++a1;
      --a2;
      while (1)
      {
        v5 = 0;
        if (a2 > 0)
        {
          v5 = 0;
          if (*a1 != 32)
          {
            v5 = *a1 != 9;
          }
        }

        if (!v5)
        {
          break;
        }

        ++a1;
        --a2;
        v9 = 1;
      }

      if (!a3 && !v9)
      {
        return -1;
      }
    }
  }

  return v11;
}

uint64_t bid_entry(char *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v12 = 0;
  v10 = a1;
  v9 = &a1[a2];
  *a4 = 0;
  while (v10 < v9)
  {
    if (!bid_entry_safe_char[*v10])
    {
      if (*v10 != 32 && *v10 != 9 && *v10 != 13 && *v10 != 10)
      {
        v12 = 0;
      }

      break;
    }

    v12 = 1;
    ++v10;
  }

  v11 = v9 - v10;
  if (v12)
  {
    return bid_keyword_list(v10, v11, 0, *a4);
  }

  v8 = &a1[a2 - a3];
  v7 = 0;
  if (v8 - 2 < a1 || *(v8 - 1) != 92 || *(v8 - 2) != 32 && *(v8 - 2) != 9)
  {
    if (v8 - 1 >= a1 && *(v8 - 1) == 92)
    {
      return -1;
    }

    v6 = 0;
    while (1)
    {
      --v8;
      v5 = 0;
      if (a1 <= v8)
      {
        v5 = 0;
        if (*v8 != 32)
        {
          v5 = *v8 != 9;
        }
      }

      if (!v5)
      {
        break;
      }

      if (!bid_entry_safe_char[*v8])
      {
        return -1;
      }

      ++v7;
      if (*v8 == 47)
      {
        v6 = 1;
      }
    }

    if (!v7 || !v6)
    {
      return -1;
    }

    if (v8[1] == 47)
    {
      return -1;
    }

    v11 = a2 - a3 - v7;
    v10 = a1;
    *a4 = 1;
    return bid_keyword_list(v10, v11, 0, *a4);
  }

  return -1;
}

uint64_t bid_keycmp(char *a1, _BYTE *a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    v4 = 0;
    if (a3 > 0)
    {
      v4 = 0;
      if (*a1)
      {
        v4 = *a2 != 0;
      }
    }

    if (!v4)
    {
      break;
    }

    if (*a1 != *a2)
    {
      return 0;
    }

    --a3;
    ++a1;
    ++a2;
  }

  if (*a2)
  {
    return 0;
  }

  else if (*a1 == 61 || *a1 == 32 || *a1 == 9 || *a1 == 10 || *a1 == 13 || *a1 == 92 && (a1[1] == 10 || a1[1] == 13))
  {
    return i;
  }

  else
  {
    return 0;
  }
}

uint64_t bid_keyword(char *a1, uint64_t a2)
{
  v3 = *a1;
  switch(v3)
  {
    case 'c':
      v6 = bid_keyword_keys_c;
      break;
    case 'd':
    case 'f':
      v6 = bid_keyword_keys_df;
      break;
    case 'g':
      v6 = bid_keyword_keys_g;
      break;
    case 'i':
    case 'l':
      v6 = bid_keyword_keys_il;
      break;
    case 'm':
      v6 = bid_keyword_keys_m;
      break;
    default:
      if (v3 != 111 && v3 != 110)
      {
        switch(v3)
        {
          case 'r':
            v6 = bid_keyword_keys_r;
            break;
          case 's':
            v6 = bid_keyword_keys_s;
            break;
          case 't':
            v6 = bid_keyword_keys_t;
            break;
          case 'u':
            v6 = bid_keyword_keys_u;
            break;
          default:
            return 0;
        }
      }

      else
      {
        v6 = bid_keyword_keys_no;
      }

      break;
  }

  for (i = 0; v6[i]; ++i)
  {
    v4 = bid_keycmp(a1, v6[i], a2);
    if (v4 > 0)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t read_mtree(char *a1, void *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  i = 0;
  __s1 = 0;
  j = 0;
  v5 = 0;
  v4 = 0;
  *(a2 + 13) = 0x80000;
  v12[7] = "mtree";
  v7 = 0;
  v6 = 0;
  detect_form(v13, &v4);
  for (i = 1; ; ++i)
  {
    v5 = 0;
    v11 = readline(v13);
    if (!v11)
    {
      v12[9] = v12[8];
      free_options(v7);
      return 0;
    }

    if (v11 < 0)
    {
      free_options(v7);
      return v11;
    }

    while (1)
    {
      v3 = 1;
      if (*__s1 != 32)
      {
        v3 = *__s1 == 9;
      }

      if (!v3)
      {
        break;
      }

      ++__s1;
      --v11;
    }

    if (*__s1 == 35 || *__s1 == 13 || *__s1 == 10 || !*__s1)
    {
      continue;
    }

    for (j = __s1; j < &__s1[v11 - 1]; ++j)
    {
      if (!isprint(*j) && *j != 9)
      {
        v5 = -30;
        break;
      }
    }

    if (v5)
    {
      break;
    }

    if (*__s1 == 47)
    {
      if (v11 > 4 && !strncmp(__s1, "/set", 4uLL))
      {
        if (__s1[4] != 32 && __s1[4] != 9)
        {
          break;
        }

        v5 = process_global_set(v13, &v7, __s1);
      }

      else
      {
        if (v11 <= 6 || strncmp(__s1, "/unset", 6uLL) || __s1[6] != 32 && __s1[6] != 9)
        {
          break;
        }

        v5 = process_global_unset(v13, &v7, __s1);
      }
    }

    else
    {
      v5 = process_add_entry(v13, v12, &v7, __s1, v11, &v6, v4);
    }

    if (v5)
    {
      free_options(v7);
      return v5;
    }
  }

  archive_set_error(v13, 79, "Can't parse line %ju", i);
  free_options(v7);
  return -30;
}

uint64_t parse_file(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = 0;
  memset(__b, 0, sizeof(__b));
  v20 = 0;
  i = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  *(v24 + 57) = 1;
  archive_entry_set_filetype(v26, 0x8000);
  archive_entry_set_size(v26, 0);
  *(v25 + 128) = 0;
  v15 = 0;
  v17 = parse_line(v27, v26, v25, v24, &v15);
  if (*(v24 + 56))
  {
    archive_entry_copy_pathname(v26, *(v24 + 48));
    for (i = __archive_rb_tree_find_node((v25 + 152), *(v24 + 48)); i; i = *(i + 24))
    {
      if (*(i + 56) && !*(i + 57))
      {
        *(i + 57) = 1;
        v16 = parse_line(v27, v26, v25, i, &v15);
        if (v16 < v17)
        {
          v17 = v16;
        }
      }
    }
  }

  else
  {
    v14 = *(v25 + 104);
    if (v14)
    {
      archive_strcat((v25 + 96), "/");
    }

    archive_strcat((v25 + 96), *(v24 + 48));
    archive_entry_copy_pathname(v26, *(v25 + 96));
    if (archive_entry_filetype(v26) != 0x4000)
    {
      *(v25 + 104) = v14;
    }
  }

  if (!*(v25 + 176))
  {
    goto LABEL_80;
  }

  *(v25 + 48) = -1;
  if (*(v25 + 128))
  {
    v22 = *(v25 + 120);
  }

  else
  {
    v22 = archive_entry_pathname(v26);
  }

  if (archive_entry_filetype(v26) == 0x8000 || archive_entry_filetype(v26) == 0x4000)
  {
    v5 = open(v22, 0x1000000);
    *(v25 + 48) = v5;
    __archive_ensure_cloexec_flag(*(v25 + 48));
    if (*(v25 + 48) == -1 && (*__error() != 2 || *(v25 + 128)))
    {
      v13 = v27;
      v6 = __error();
      archive_set_error(v13, *v6, "Can't open %s", v22);
      v17 = -20;
    }
  }

  v20 = __b;
  if ((*(v25 + 48) & 0x80000000) != 0)
  {
    if (lstat(v22, v20) == -1)
    {
      v20 = 0;
    }
  }

  else if (fstat(*(v25 + 48), v20) == -1)
  {
    v12 = v27;
    v7 = __error();
    archive_set_error(v12, *v7, "Could not fstat %s", v22);
    v17 = -20;
    close(*(v25 + 48));
    *(v25 + 48) = -1;
    v20 = 0;
  }

  if (!v20 || (v20->st_mode & 0xF000) == 0x8000 && archive_entry_filetype(v26) == 0x8000 || (v20->st_mode & 0xF000) == 0xA000 && archive_entry_filetype(v26) == 40960 || (v20->st_mode & 0xC000) == 0xC000 && archive_entry_filetype(v26) == 49152 || (v20->st_mode & 0xF000) == 0x2000 && archive_entry_filetype(v26) == 0x2000 || (v20->st_mode & 0xF000) == 0x6000 && archive_entry_filetype(v26) == 24576 || (v20->st_mode & 0xF000) == 0x4000 && archive_entry_filetype(v26) == 0x4000 || (v20->st_mode & 0xF000) == 0x1000 && archive_entry_filetype(v26) == 4096)
  {
    if (v20)
    {
      if (((v15 & 1) == 0 || (v15 & 0x1000) != 0) && (archive_entry_filetype(v26) == 0x2000 || archive_entry_filetype(v26) == 24576))
      {
        archive_entry_set_rdev(v26, v20->st_rdev);
      }

      if ((v15 & 0xC) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_gid(v26, v20->st_gid);
      }

      if ((v15 & 0x600) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_uid(v26, v20->st_uid);
      }

      if ((v15 & 0x10) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_mtime(v26, v20->st_mtimespec.tv_sec, v20->st_mtimespec.tv_nsec);
      }

      if ((v15 & 0x20) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_nlink(v26, v20->st_nlink);
      }

      if ((v15 & 0x40) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_perm(v26, v20->st_mode);
      }

      if ((v15 & 0x80) == 0 || (v15 & 0x1000) != 0)
      {
        archive_entry_set_size(v26, v20->st_size);
      }

      archive_entry_set_ino(v26, v20->st_ino);
      archive_entry_set_dev(v26, v20->st_dev);
      archive_entry_linkify(*(v25 + 144), &v26, &v18);
      goto LABEL_80;
    }

    if ((v15 & 0x800) == 0)
    {
LABEL_80:
      v9 = archive_entry_size(v26);
      *(v25 + 168) = v9;
      *(v25 + 40) = 0;
      return v17;
    }

    *v23 = 1;
    return 0;
  }

  else
  {
    if ((*(v25 + 48) & 0x80000000) == 0)
    {
      close(*(v25 + 48));
    }

    *(v25 + 48) = -1;
    if ((v15 & 0x800) != 0)
    {
      *v23 = 1;
    }

    else if (!v17)
    {
      v11 = v27;
      v8 = archive_entry_pathname(v26);
      archive_set_error(v11, -1, "mtree specification has different type for %s", v8);
      return -20;
    }

    return v17;
  }
}

char *__cdecl readline(const char *a1)
{
  v14 = a1;
  v13 = v1;
  v12 = v2;
  v11 = v3;
  __n = 0;
  v9 = 0;
  for (i = 0; ; i = &j[-*v13])
  {
    __s = __archive_read_ahead(v14, 1uLL, &__n);
    if (!__s)
    {
      return 0;
    }

    if ((__n & 0x8000000000000000) != 0)
    {
      return -30;
    }

    v6 = memchr(__s, 10, __n);
    if (v6)
    {
      __n = v6 - __s + 1;
    }

    if (&v9[__n + 1] > v11)
    {
      archive_set_error(v14, 79, "Line too long");
      return -30;
    }

    if (!archive_string_ensure(v13, &v9[__n + 1]))
    {
      break;
    }

    __memcpy_chk();
    __archive_read_consume(v14, __n);
    v9 += __n;
    v9[*v13] = 0;
    for (j = &i[*v13]; *j; ++j)
    {
      switch(*j)
      {
        case 0xA:
          *v12 = *v13;
          return v9;
        case 0x23:
          if (!v6)
          {
            goto LABEL_25;
          }

          break;
        case 0x5C:
          if (j[1] == 10)
          {
            v9 -= 2;
            v9[*v13] = 0;
            goto LABEL_25;
          }

          if (j[1])
          {
            ++j;
          }

          break;
      }
    }

LABEL_25:
    ;
  }

  archive_set_error(v14, 12, "Can't allocate working buffer");
  return -30;
}

uint64_t process_add_entry(_DWORD *a1, uint64_t a2, uint64_t ***a3, const char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v24 = malloc_type_malloc(0x40uLL, 0x103004084F83F42uLL);
  if (!v24)
  {
    goto LABEL_2;
  }

  v24[4] = 0;
  v24[5] = 0;
  v24[6] = 0;
  *(v24 + 57) = 0;
  *(v24 + 56) = 0;
  if (*a6)
  {
    *(*a6 + 32) = v24;
  }

  else
  {
    *(a2 + 64) = v24;
  }

  *a6 = v24;
  if (a7)
  {
    while (a5 > 0)
    {
      v13 = a4[a5 - 1];
      if (v13 != 13 && v13 != 10 && v13 != 9 && v13 != 32)
      {
        break;
      }

      --a5;
    }

    v20 = a4;
    for (i = 0; i < a5; ++i)
    {
      if (a4[i] == 13 || a4[i] == 10 || a4[i] == 9 || a4[i] == 32)
      {
        v20 = &a4[i + 1];
      }
    }

    v18 = &a4[a5] - v20;
    v19 = v20;
  }

  else
  {
    v18 = strcspn(a4, " \t\r\n");
    a4 += v18;
    v19 = &a4[a5];
  }

  v8 = malloc_type_malloc(v18 + 1, 0xAE4D5522uLL);
  v24[6] = v8;
  if (v8)
  {
    __memcpy_chk();
    *(v24[6] + v18) = 0;
    parse_escapes(v24[6], v24);
    v24[3] = 0;
    if (*(v24 + 56))
    {
      if (!__archive_rb_tree_insert_node((a2 + 152), v24))
      {
        node = __archive_rb_tree_find_node((a2 + 152), v24[6]);
        if (node)
        {
          while (*(node + 24))
          {
            node = *(node + 24);
          }

          *(node + 24) = v24;
        }
      }
    }

    for (j = *a3; j; j = *j)
    {
      v9 = strlen(j[1]);
      v15 = add_option(a1, v24 + 5, j[1], v9);
      if (v15)
      {
        return v15;
      }
    }

    while (1)
    {
      v21 = &a4[strspn(a4, " \t\r\n")];
      if (!*v21)
      {
        return 0;
      }

      if (v21 >= v19)
      {
        return 0;
      }

      v29 = v21;
      v22 = &v21[strcspn(v21, " \t\r\n")];
      v10 = strchr(v29, 61);
      v17 = v10 && v10 <= v22 ? v10 - v29 : v22 - v29;
      remove_option(v24 + 5, v29, v17);
      v16 = add_option(a1, v24 + 5, v29, v22 - v29);
      if (v16)
      {
        break;
      }

      a4 = v22;
    }

    return v16;
  }

  else
  {
LABEL_2:
    v7 = __error();
    archive_set_error(a1, *v7, "Can't allocate memory");
    return -30;
  }
}

uint64_t process_global_set(_DWORD *a1, void **a2, uint64_t a3)
{
  for (i = (a3 + 4); ; i = v8)
  {
    v7 = &i[strspn(i, " \t\r\n")];
    if (!*v7)
    {
      return 0;
    }

    v10 = v7;
    v8 = &v7[strcspn(v7, " \t\r\n")];
    v6 = strchr(v10, 61);
    v5 = v6 <= v8 ? v6 - v10 : v8 - v10;
    remove_option(a2, v10, v5);
    v4 = add_option(a1, a2, v10, v8 - v10);
    if (v4)
    {
      break;
    }
  }

  return v4;
}

uint64_t process_global_unset(_DWORD *a1, void ***a2, uint64_t a3)
{
  __s = (a3 + 6);
  if (strchr((a3 + 6), 61))
  {
    return -30;
  }

  else
  {
    while (1)
    {
      v5 = &__s[strspn(__s, " \t\r\n")];
      if (!*v5)
      {
        break;
      }

      v4 = strcspn(v5, " \t\r\n");
      if (v4 == 3 && !strncmp(v5, "all", 3uLL))
      {
        free_options(*a2);
        *a2 = 0;
      }

      else
      {
        remove_option(a2, v5, v4);
      }

      __s = &v5[v4];
    }

    return 0;
  }
}

char *parse_escapes(char *result, uint64_t a2)
{
  v8 = result;
  v6 = result;
  if (a2)
  {
    result = strcmp(result, ".");
    if (!result)
    {
      *(a2 + 56) = 1;
    }
  }

  while (*v8)
  {
    v2 = v8++;
    v5 = *v2;
    if (*v2 == 47 && a2)
    {
      *(a2 + 56) = 1;
    }

    if (v5 == 92)
    {
      v4 = *v8;
      if (v4 == 48)
      {
        if (v8[1] < 48 || v8[1] > 55)
        {
          v5 = 0;
          ++v8;
          goto LABEL_39;
        }
      }

      else if ((v4 - 49) > 2)
      {
        switch(v4)
        {
          case '\\':
            v5 = 92;
            ++v8;
            break;
          case 'a':
            v5 = 7;
            ++v8;
            break;
          case 'b':
            v5 = 8;
            ++v8;
            break;
          case 'f':
            v5 = 12;
            ++v8;
            break;
          case 'n':
            v5 = 10;
            ++v8;
            break;
          case 'r':
            v5 = 13;
            ++v8;
            break;
          case 's':
            v5 = 32;
            ++v8;
            break;
          case 't':
            v5 = 9;
            ++v8;
            break;
          case 'v':
            v5 = 11;
            ++v8;
            break;
        }

        goto LABEL_39;
      }

      if (v8[1] >= 48 && v8[1] <= 55 && v8[2] >= 48 && v8[2] <= 55)
      {
        v5 = ((*v8 - 48) << 6) | (8 * (v8[1] - 48)) | (v8[2] - 48);
        v8 += 3;
      }
    }

LABEL_39:
    v3 = v6++;
    *v3 = v5;
  }

  *v6 = 0;
  return result;
}

uint64_t add_option(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x30040E4270A41uLL);
  if (v8)
  {
    v5 = malloc_type_malloc(a4 + 1, 0x45D9BEF5uLL);
    v8[1] = v5;
    if (v5)
    {
      __memcpy_chk();
      *(v8[1] + a4) = 0;
      *v8 = *a2;
      *a2 = v8;
      return 0;
    }

    else
    {
      free(v8);
      v6 = __error();
      archive_set_error(a1, *v6, "Can't allocate memory");
      return -30;
    }
  }

  else
  {
    v4 = __error();
    archive_set_error(a1, *v4, "Can't allocate memory");
    return -30;
  }
}

void remove_option(void **a1, const char *a2, size_t a3)
{
  v3 = 0;
  for (i = *a1; i && (strncmp(*(i + 1), a2, a3) || *(*(i + 1) + a3) && *(*(i + 1) + a3) != 61); i = *i)
  {
    v3 = i;
  }

  if (i)
  {
    if (v3)
    {
      *v3 = *i;
    }

    else
    {
      *a1 = *i;
    }

    free(*(i + 1));
    free(i);
  }
}

uint64_t parse_line(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 0;
  for (i = *(a4 + 40); i; i = *i)
  {
    v6 = parse_keyword(a1, a3, a2, i, a5);
    if (v6 < v7)
    {
      v7 = v6;
    }
  }

  if (v7 || (*a5 & 0x100) != 0)
  {
    return v7;
  }

  else
  {
    archive_set_error(a1, 79, "Missing type keyword in mtree specification");
    return -20;
  }
}

uint64_t parse_keyword(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = 0;
  v30 = 0;
  v30 = *(a4 + 8);
  if (!*v30)
  {
    return 0;
  }

  if (!strcmp(v30, "nochange"))
  {
    *v32 |= 0x1000u;
    return 0;
  }

  if (!strcmp(v30, "optional"))
  {
    *v32 |= 0x800u;
    return 0;
  }

  if (!strcmp(v30, "ignore"))
  {
    return 0;
  }

  v31 = strchr(v30, 61);
  if (!v31)
  {
    archive_set_error(v36, 79, "Malformed attribute %s (%d)", v30, *v30);
    return -20;
  }

  *v31++ = 0;
  v21 = *v30;
  if (v21 == 99)
  {
    if (!strcmp(v30, "content") || !strcmp(v30, "contents"))
    {
      parse_escapes(v31, 0);
      *(v35 + 128) = 0;
      v20 = (v35 + 120);
      if (v31)
      {
        v19 = strlen(v31);
        archive_strncat(v20, v31, v19);
      }

      else
      {
        archive_strncat(v20, 0, 0);
      }

      return 0;
    }

    if (!strcmp(v30, "cksum"))
    {
      return 0;
    }

    goto LABEL_130;
  }

  if (v21 == 100)
  {
    if (strcmp(v30, "device"))
    {
      goto LABEL_130;
    }

    v29 = 0;
    v28 = 0;
    *v32 |= 1u;
    v29 = parse_device(&v28, v36, v31);
    if (!v29)
    {
      archive_entry_set_rdev(v34, v28);
    }

    return v29;
  }

  else
  {
    switch(v21)
    {
      case 'f':
        if (!strcmp(v30, "flags"))
        {
          *v32 |= 2u;
          archive_entry_copy_fflags_text(v34, v31);
          return 0;
        }

        goto LABEL_130;
      case 'g':
        if (!strcmp(v30, "gid"))
        {
          *v32 |= 4u;
          v18 = v34;
          v5 = mtree_atol(&v31, 10);
          archive_entry_set_gid(v18, v5);
          return 0;
        }

        if (!strcmp(v30, "gname"))
        {
          *v32 |= 8u;
          archive_entry_copy_gname(v34, v31);
          return 0;
        }

        goto LABEL_130;
      case 'i':
        if (!strcmp(v30, "inode"))
        {
          v17 = v34;
          v6 = mtree_atol(&v31, 10);
          archive_entry_set_ino(v17, v6);
          return 0;
        }

        goto LABEL_130;
      case 'l':
        if (!strcmp(v30, "link"))
        {
          parse_escapes(v31, 0);
          archive_entry_copy_symlink(v34, v31);
          return 0;
        }

        goto LABEL_130;
      case 'm':
        if (!strcmp(v30, "md5") || !strcmp(v30, "md5digest"))
        {
          return parse_digest(v36, v34, v31, 1);
        }

        if (!strcmp(v30, "mode"))
        {
          if (*v31 >= 48 && *v31 <= 55)
          {
            *v32 |= 0x40u;
            v16 = v34;
            v7 = mtree_atol(&v31, 8);
            archive_entry_set_perm(v16, v7);
            return 0;
          }

          else
          {
            archive_set_error(v36, 79, "Symbolic or non-octal mode %s unsupported", v31);
            return -20;
          }
        }

        goto LABEL_130;
      case 'n':
        if (!strcmp(v30, "nlink"))
        {
          *v32 |= 0x20u;
          v15 = v34;
          v8 = mtree_atol(&v31, 10);
          archive_entry_set_nlink(v15, v8);
          return 0;
        }

        goto LABEL_130;
    }

    if (v21 != 114)
    {
      if (v21 == 115)
      {
        if (!strcmp(v30, "sha1") || !strcmp(v30, "sha1digest"))
        {
          return parse_digest(v36, v34, v31, 3);
        }

        if (!strcmp(v30, "sha256") || !strcmp(v30, "sha256digest"))
        {
          return parse_digest(v36, v34, v31, 4);
        }

        if (!strcmp(v30, "sha384") || !strcmp(v30, "sha384digest"))
        {
          return parse_digest(v36, v34, v31, 5);
        }

        if (!strcmp(v30, "sha512") || !strcmp(v30, "sha512digest"))
        {
          return parse_digest(v36, v34, v31, 6);
        }

        if (!strcmp(v30, "size"))
        {
          v14 = v34;
          v9 = mtree_atol(&v31, 10);
          archive_entry_set_size(v14, v9);
          return 0;
        }
      }

      else
      {
        if (v21 != 116)
        {
          if (v21 == 117)
          {
            if (!strcmp(v30, "uid"))
            {
              *v32 |= 0x200u;
              v12 = v34;
              v10 = mtree_atol(&v31, 10);
              archive_entry_set_uid(v12, v10);
              return 0;
            }

            if (!strcmp(v30, "uname"))
            {
              *v32 |= 0x400u;
              archive_entry_copy_uname(v34, v31);
              return 0;
            }
          }

          goto LABEL_130;
        }

        if (!strcmp(v30, "tags"))
        {
          return 0;
        }

        if (!strcmp(v30, "time"))
        {
          time_t_max = get_time_t_max();
          time_t_min = get_time_t_min();
          v22 = 0;
          *v32 |= 0x10u;
          v25 = mtree_atol(&v31, 10);
          if (*v31 == 46)
          {
            ++v31;
            v22 = mtree_atol(&v31, 10);
            if (v22 < 0)
            {
              v22 = 0;
            }

            else if (v22 > 999999999)
            {
              v22 = 999999999;
            }
          }

          if (v25 <= time_t_max)
          {
            if (v25 < time_t_min)
            {
              v25 = time_t_min;
            }

            archive_entry_set_mtime(v34, v25, v22);
          }

          else
          {
            archive_entry_set_mtime(v34, time_t_max, v22);
          }

          return 0;
        }

        if (!strcmp(v30, "type"))
        {
          v13 = *v31;
          switch(v13)
          {
            case 'b':
              if (!strcmp(v31, "block"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 24576);
                return 0;
              }

              break;
            case 'c':
              if (!strcmp(v31, "char"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 0x2000);
                return 0;
              }

              break;
            case 'd':
              if (!strcmp(v31, "dir"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 0x4000);
                return 0;
              }

              break;
            case 'f':
              if (!strcmp(v31, "fifo"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 4096);
                return 0;
              }

              if (!strcmp(v31, "file"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 0x8000);
                return 0;
              }

              break;
            default:
              if (v13 == 108 && !strcmp(v31, "link"))
              {
                *v32 |= 0x100u;
                archive_entry_set_filetype(v34, 40960);
                return 0;
              }

              break;
          }

          archive_set_error(v36, 79, "Unrecognized file type %s; assuming file", v31);
          archive_entry_set_filetype(v34, 0x8000);
          return -20;
        }
      }

LABEL_130:
      archive_set_error(v36, 79, "Unrecognized key %s=%s", v30, v31);
      return -20;
    }

    if (strcmp(v30, "resdevice"))
    {
      if (!strcmp(v30, "rmd160") || !strcmp(v30, "rmd160digest"))
      {
        return parse_digest(v36, v34, v31, 2);
      }

      goto LABEL_130;
    }

    v27 = 0;
    v26 = 0;
    v27 = parse_device(&v26, v36, v31);
    if (!v27)
    {
      archive_entry_set_dev(v34, v26);
    }

    return v27;
  }
}
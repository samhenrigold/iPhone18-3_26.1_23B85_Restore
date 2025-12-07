uint64_t dev_read_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return dev_read_async(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t dev_read_poll(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 45;
  }
}

uint64_t dev_write_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t dev_write_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 72) + 64);

    return v4();
  }

  else
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: data write (%zu blocks) over superblock!\n", "dev_write_data", 304, a3);
    return 5;
  }
}

uint64_t fd_dev_read_poll(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000A7818();
  }

  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100053608(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_100053648(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    log_err("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_1000547DC(a1, a2, a3, a4, a5, a9, a7);
  }

  else
  {

    return sub_1000544FC(a1, a2, a3, a4, a5, a9);
  }
}

uint64_t sub_100053724(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000A7844();
  }

  v4 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v8 = aio_return(v4), v8 == -1))
  {
    v5 = *__error();
  }

  else
  {
    v9 = v8;
    if (v8 >= *(a2 + 32))
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    v10 = *(a2 + 88);
    if (v10)
    {
      v11 = *(v10 + 72);
      if (v11)
      {
        v12 = *(a1 + 84);
        v13 = *(a2 + 24);
        *(v11 + 12) = *(a2 + 16) / v12;
        userfs_data_cryptor(v10, v13, v13, v9, *(a2 + 16), v12, 0);
      }
    }
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v5;
    v6(a2);
  }

  return v5;
}

uint64_t sub_1000537F8(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    log_err("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_1000548EC(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t sub_10005389C(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_100054704(a1, *(a1 + 40), v5, v4, *(a1 + 48));
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v10 = xmmword_1000B3110;
    v11 = 2;
    v9 = ioctl(*a1, 0x80186416uLL, &v10);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053998(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5)
  {
    sub_1000A7870();
  }

  if (v6 < a3)
  {
    sub_1000A78C8();
  }

  if (!a4)
  {
    sub_1000A789C();
  }

  v9 = *(a1 + 192);
  if (!v9)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v11 = *(a1 + 200);
  if (v11 < *(a1 + 204) && *(a1 + 208) == 1)
  {
    goto LABEL_11;
  }

  result = sub_100053A60(a1);
  if (!result)
  {
    v11 = *(a1 + 200);
    v9 = *(a1 + 192);
LABEL_11:
    result = 0;
    *(a1 + 200) = v11 + 1;
    v13 = *(a1 + 84);
    v14 = (v9 + 16 * v11);
    *v14 = v13 * a2;
    v14[1] = v13 * a3;
    *(a1 + 208) = 1;
  }

  return result;
}

uint64_t sub_100053A60(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      log_err("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_100053B44(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    _apfs_free(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_100054704(a1, *(a1 + 40), v5, v4, *(a1 + 48));
  v7 = v6;
  if (v6)
  {
    log_err("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_100053A60(a1);
    v7 = v8;
    if (v8)
    {
      log_err("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    _apfs_free(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  _apfs_free(a1, v3 + 216);
  return v7;
}

uint64_t sub_100053C64(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t dev_init_with_fd(int a1, void *a2)
{
  bzero(&v10, 0x400uLL);
  *a2 = 0;
  if (fcntl(a1, 50, &v10))
  {
    LOBYTE(v10) = 0;
  }

  if (v10 ^ 0x7665642F | v11 ^ 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v5 = strlen(&v10 + v4);
  v6 = _apfs_calloc_typed(1uLL, v5 + 216, 0xC2501DC2uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *(v6 + 4) = -1;
  *v6 = a1;
  strlcpy(v6 + 212, &v10 + v4, v5 + 1);
  v8 = sub_100053DE8(v7);
  if (v8)
  {
    _apfs_free(v7, v5 + 216);
  }

  else
  {
    *a2 = v7;
  }

  return v8;
}

uint64_t sub_100053DE8(uint64_t a1)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  if (fstat(*a1, &v14))
  {
    v2 = __error();
    v3 = *v2;
    log_err("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v2, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = apfs_userspace_io;
    device_block_size = io_get_device_block_size(*a1);
    *(a1 + 80) = device_block_size;
    *(a1 + 84) = device_block_size;
    v5 = *a1;
    v19 = 0;
    memset(&v18, 0, sizeof(v18));
    if (ioctl(v5, 0x40086419uLL, &v19))
    {
      if (fstat(v5, &v18))
      {
        v6 = __error();
        v7 = strerror(*v6);
        log_err("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v7);
        v8 = 0;
      }

      else
      {
        st_size = v18.st_size;
        v8 = st_size / io_get_device_block_size(v5);
      }
    }

    else
    {
      v8 = v19;
    }

    *(a1 + 112) = v8;
    io_get_device_features(*a1, &v17, &v16, &v15 + 1, &v15);
    v10 = v16;
    *(a1 + 88) = v17;
    *(a1 + 92) = v10;
    v11 = v15;
    *(a1 + 96) = HIDWORD(v15);
    *(a1 + 100) = v11;
    *(a1 + 64) = v14.st_mode;
    *(a1 + 104) = 0;
    v12 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v3 = 0;
    *(a1 + 192) = _apfs_calloc_typed(v12, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v3;
}

uint64_t dev_init(char *a1, int a2, int **a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = _apfs_calloc_typed(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    memset(&v33, 0, sizeof(v33));
    v9[17] = 0;
    if (stat(a1, &v33) || (v33.st_mode & 0xF000) != 0x4000)
    {
      v13 = device_container_path(a1, 0);
      if (v13)
      {
        v14 = v13;
        v10[2] = -1;
        v15 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v15;
        if (v15 < 0)
        {
          v23 = __error();
          v12 = *v23;
          v24 = strerror(*v23);
          log_err("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v24);
        }

        else
        {
          v16 = open(v14, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v16;
          if ((v16 & 0x80000000) == 0)
          {
LABEL_30:
            v29 = sub_100053DE8(v10);
            if (v29)
            {
              v12 = v29;
              free(v14);
LABEL_38:
              _apfs_free(v10, v8 + 216);
              return v12;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v14);
LABEL_39:
            v12 = 0;
            *a3 = v10;
            return v12;
          }

          v17 = __error();
          v12 = *v17;
          v18 = strerror(*v17);
          log_err("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v14, v18);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v19 = open(a1, a2);
        *v10 = v19;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_29:
          v14 = 0;
          goto LABEL_30;
        }

        v20 = 30;
        while (*__error() == 16 && v20 != 0)
        {
          log_err("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v20, v7);
          sleep(1u);
          v22 = open(a1, a2);
          *v10 = v22;
          --v20;
          if ((v22 & 0x80000000) == 0)
          {
            v14 = 0;
            goto LABEL_30;
          }
        }

        v14 = 0;
        v12 = *__error();
      }
    }

    else
    {
      bzero(__str, 0x400uLL);
      bzero(v35, 0x400uLL);
      bzero(v34, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/apfs", a1);
      snprintf(v34, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v35, 0x400uLL, "%s/nx", a1);
      v11 = open(__str, a2);
      v10[1] = v11;
      if (v11 < 0)
      {
        v12 = *__error();
      }

      else
      {
        v12 = 0;
      }

      v25 = open(v34, a2);
      v10[2] = v25;
      if (v25 < 0)
      {
        v12 = *__error();
      }

      v26 = open(v35, a2);
      v27 = v26;
      *v10 = v26;
      v28 = v10[1];
      if ((v28 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v26 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v12)
      {
        v12 = *__error();
        v27 = *v10;
        v28 = v10[1];
      }

      v30 = v10[2];
      v31 = strerror(v12);
      log_err("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __str, v28, v34, v30, v35, v27, v12, v31, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v14 = 0;
    }

    free(v14);
    if (v12)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t fskit_dev_init(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((*(a1 + 28) & 0x80000000) != 0)
  {
    return 22;
  }

  if (!*(a1 + 8))
  {
    return 22;
  }

  if (!*(a1 + 12))
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1 || !*(a1 + 16) || *(a1 + 24) != 1)
  {
    return 22;
  }

  if (!strncmp(*a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = strlen(&v4[v6]);
  *a3 = 0;
  v8 = _apfs_calloc_typed(1uLL, v7 + 216, 0x14937999uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  *(v8 + 17) = 0;
  *v8 = *(a1 + 28);
  *(v8 + 4) = -1;
  *(v8 + 32) = 0x8000;
  *(v8 + 14) = *(a1 + 8);
  *(v8 + 10) = vrev64_s32(*(a1 + 12));
  v10 = *(a1 + 24);
  *(v8 + 26) = 0;
  *(v8 + 22) = 0;
  *(v8 + 23) = v10;
  *(v8 + 12) = 1;
  *(v8 + 9) = apfs_userspace_io;
  strlcpy(v8 + 212, &v4[v6], v7 + 1);
  result = 0;
  *a3 = v9;
  return result;
}

uint64_t sub_1000544FC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6)
{
  v12 = sub_100054674(a1, a2, a3);
  if (!v12)
  {
    v13 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v13) && (v14 = a2 * v13, ((a2 * v13) & 0x8000000000000000) == 0) && is_mul_ok(a3, v13))
    {
      v16 = a3 * v13;
      if (!a5 || (v17 = *(a1 + 4), v17 < 0))
      {
        v17 = *a1;
      }

      v18 = pread(v17, a4, a3 * v13, a2 * v13);
      v19 = v18;
      if (v18 < 0)
      {
        v20 = __error();
        v12 = *v20;
        if (v12 == 6)
        {
          v12 = 6;
        }

        else
        {
          log_err("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v20, (a1 + 212));
        }
      }

      else if (v18 == v16)
      {
        v12 = 0;
      }

      else
      {
        v12 = 5;
      }

      if (a5)
      {
        if (v19 >= 1)
        {
          v21 = *(a5 + 72);
          if (v21)
          {
            if (a6)
            {
              *(v21 + 12) = a2;
            }

            userfs_data_cryptor(a5, a4, a4, v19, v14, *(a1 + 84), 0);
          }
        }
      }
    }

    else
    {
      log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return v12;
}

uint64_t sub_100054674(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = a3 + a2 > v8 && v8 + v7 > a2;
      if (v9)
      {
        result = sub_100054704(a1, v8, v7, v6, *(a1 + 48));
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  v9 = v10 > a2;
  v11 = v10 - a2;
  if (!v9)
  {
    sub_1000A78F4();
  }

  if (v11 < a3)
  {
    sub_1000A7920();
  }

  return 0;
}

uint64_t sub_100054704(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
{
  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6)
  {
    sub_1000A794C();
  }

  if (v7 < a3)
  {
    sub_1000A7978();
  }

  v8 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v8) && (v9 = a2 * v8, ((a2 * v8) & 0x8000000000000000) == 0) && is_mul_ok(a3, v8))
  {
    v11 = a3 * v8;
    if (!a5 || (v12 = *(a1 + 4), v12 < 0))
    {
      v12 = *a1;
    }

    v13 = pwrite(v12, __buf, v11, v9);
    if (v13 < 0)
    {
      return *__error();
    }

    else if (v13 == v11)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_1000547DC(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = sub_100054674(a1, a2, a3);
  if (!v14)
  {
    if (!a7)
    {
      sub_1000A79A4();
    }

    *(a7 + 8) = 0u;
    v16 = (a7 + 8);
    *(a7 + 88) = a5;
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    v17 = a1[21];
    *(a7 + 16) = v17 * a2;
    *(a7 + 24) = a4;
    *(a7 + 32) = v17 * a3;
    if (a5)
    {
      v18 = a1[1];
      if (v18 < 0)
      {
        v18 = *a1;
      }

      v16->aio_fildes = v18;
      if (a6)
      {
        v19 = *(a5 + 72);
        if (v19)
        {
          *(v19 + 12) = a2;
        }
      }
    }

    else
    {
      v16->aio_fildes = *a1;
    }

    if (!aio_read(v16))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v14 = 16;
    }

    else
    {
      v14 = *__error();
      if (!v14)
      {
        return v14;
      }
    }
  }

  v15 = *a7;
  if (*a7)
  {
    *(a7 + 96) = v14;
    v15(a7);
  }

  return v14;
}

uint64_t sub_1000548EC(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
{
  if (*(a1 + 60) && !*(a1 + 24))
  {
    v12 = *(a1 + 84);
    v13 = v12 <= 0x100000 ? 0x100000 / v12 : 1;
    *(a1 + 32) = v13;
    v14 = _apfs_malloc_typed(v13 * v12, 0x835B50A5uLL);
    *(a1 + 24) = v14;
    *(a1 + 36) = 0;
    if (!v14)
    {
      return 12;
    }
  }

  if (!a5)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_45;
    }

LABEL_23:
    if (!a3)
    {
      return 0;
    }

    v24 = *(a1 + 36);
    while (1)
    {
      while (1)
      {
        v25 = *(a1 + 32) - v24;
        v26 = a3 <= v25 ? a3 : v25;
        if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || a2 != *(a1 + 40) + v24)
        {
          break;
        }

        if (*(a1 + 48) != a5 || v26 == 0)
        {
          break;
        }

        v29 = *(a1 + 24);
        v30 = *(a1 + 84);
        v31 = v30 * v24;
        if (a5 && *(a5 + 72))
        {
          userfs_data_cryptor(a5, __buf, (v29 + v31), (v30 * v26), a2 * v30, v30, 1);
          *(*(a5 + 72) + 12) += v26;
        }

        else
        {
          memcpy((v29 + v31), __buf, (v30 * v26));
        }

        v24 = *(a1 + 36) + v26;
        *(a1 + 36) = v24;
        a2 += v26;
        a3 -= v26;
        __buf += (*(a1 + 84) * v26);
        if (!a3)
        {
          return 0;
        }
      }

      if (v24)
      {
        v28 = sub_100054704(a1, *(a1 + 40), v24, *(a1 + 24), *(a1 + 48));
        if (v28)
        {
          break;
        }
      }

      v24 = 0;
      *(a1 + 36) = 0;
      *(a1 + 40) = a2;
      *(a1 + 48) = a5;
      *(a1 + 56) = a6;
    }

    return v28;
  }

  v15 = *(a5 + 72);
  if ((a6 & 1) != 0 && v15)
  {
    *(v15 + 12) = a2;
  }

  if (*(a1 + 24))
  {
    goto LABEL_23;
  }

  if (v15)
  {
    v16 = _apfs_malloc_typed(*(a1 + 84), 0x4C8514E4uLL);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 84);
      if (a3)
      {
        v19 = a3 - 1;
        do
        {
          userfs_data_cryptor(a5, __buf, v17, v18, a2 * v18, v18, 1);
          ++*(*(a5 + 72) + 12);
          v20 = sub_100054704(a1, a2, 1uLL, v17, a5);
          v21 = v20;
          v18 = *(a1 + 84);
          v23 = v19-- != 0;
          if (v20)
          {
            break;
          }

          ++a2;
          __buf += v18;
        }

        while (v23);
      }

      else
      {
        v21 = 0;
      }

      _apfs_free(v17, v18);
      return v21;
    }

    return 12;
  }

LABEL_45:

  return sub_100054704(a1, a2, a3, __buf, a5);
}

uint64_t spaceman_metazone_get_size(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t spaceman_metazone_get_partitions(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t nx_checkpoint_find_highest_xid(uint64_t a1, int *a2, unint64_t *a3)
{
  v6 = _apfs_malloc_typed(*(*(a1 + 376) + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v19 = 0;
  v8 = *(a1 + 376);
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v18 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      *(v7 + 6) = 0;
      if (nx_checkpoint_desc_block_address(a1, v9, &v19) || dev_read(*(a1 + 384)))
      {
        log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n");
      }

      else
      {
        v14 = *(v7 + 6);
        if (v14 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v14)
        {
          if (v14 == 1073741836)
          {
LABEL_12:
            if (obj_checksum_verify_phys(v7, *(*(a1 + 376) + 36), v12, v13))
            {
              log_err("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n");
            }

            else if (*(v7 + 7))
            {
              log_err("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n");
            }

            else
            {
              v15 = v7[2];
              if (v15)
              {
                if (v15 >= v10)
                {
                  v16 = *(v7 + 6);
                  if (v15 == v10 && v18 && v16 != -2147483647)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = v16 == -2147483647;
                    v10 = v7[2];
                    v11 = v9;
                  }
                }
              }

              else
              {
                log_err("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n");
              }
            }

            goto LABEL_7;
          }

          log_err("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n");
        }
      }

LABEL_7:
      ++v9;
      v8 = *(a1 + 376);
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  _apfs_free(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t nx_check_checkpoint_map_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = obj_checksum_verify_phys(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return nx_corruption_detected_int(0);
  }
}

BOOL nx_superblock_agrees_with_main_superblock(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v7 = 0;
  }

  else
  {
    log_err("%s:%d: %s<->superblock mismatch on uuid\n", "nx_superblock_agrees_with_main_superblock", 254, a3);
    v7 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    log_err("%s:%d: %s<->superblock mismatch on fusion uuid\n", "nx_superblock_agrees_with_main_superblock", 258, a3);
    ++v7;
  }

  v9 = *(a1 + 16);
  if (v9 > *(a2 + 16))
  {
    log_err("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", "nx_superblock_agrees_with_main_superblock", 263, a3, *(a2 + 16), v9);
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36) != v10)
  {
    log_err("%s:%d: %s<->superblock mismatch on block size: %d %d\n", "nx_superblock_agrees_with_main_superblock", 269, a3, *(a1 + 36), v10);
    ++v7;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40) != v11)
  {
    log_err("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 274, a3, *(a1 + 40), v11);
    ++v7;
  }

  v12 = *(a2 + 104);
  if (*(a1 + 104) != v12)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 279, a3, *(a1 + 104), v12);
    ++v7;
  }

  v13 = *(a2 + 108);
  if (*(a1 + 108) != v13)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 284, a3, *(a1 + 108), v13);
    ++v7;
  }

  v14 = *(a2 + 112);
  if (*(a1 + 112) != v14)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 289, a3, *(a1 + 112), v14);
    ++v7;
  }

  v15 = *(a2 + 120);
  if (*(a1 + 120) != v15)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 294, a3, *(a1 + 120), v15);
    v7 = 1;
  }

  return v7 == 0;
}

uint64_t nx_checkpoint_find_valid_checkpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v23 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v27 = -1;
    if (nx_checkpoint_desc_block_address(a1, v13, &v27) || dev_read(*(a1 + 384)))
    {
      log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (nx_check_superblock(a4, *(a2 + 36), 1, v14, v15))
    {
      log_err("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n");
      goto LABEL_8;
    }

    v22 = v6;
    v16 = *(a2 + 64);
    if ((v16 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v22;
    if (nx_superblock_agrees_with_main_superblock(a2, a4, "checkpoint"))
    {
      v17 = *(a4 + 140);
      v18 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v17 - 1) % v18)
      {
        if (v17 <= v11 + v18)
        {
          if (nx_metadata_range_add(a1, 0, 1, 0, 1) || nx_metadata_range_add(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || nx_metadata_range_add(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (sub_100055A10(a1, a4))
          {
            log_err("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!sub_100055B1C(a1, a4, &v26, &v25))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (nx_checkpoint_traverse(a1, 0, 2))
              {
                log_err("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n");
LABEL_37:
                obj_cache_reset(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v23 = 0u;
                v23[1] = 0u;
                v23[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                if (*(a1 + 631) == 1)
                {
                  log_info("%s:%d: %s probe of external device... skipping recent sanity checks.\n", "nx_checkpoint_find_valid_checkpoint", 586, (*(a1 + 384) + 212));
                }

                else
                {
                  log_info("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", "nx_checkpoint_find_valid_checkpoint", 595, (*(a1 + 384) + 212));
                  if (nx_check_recent_sanity(a1))
                  {
                    log_err("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n");
                    goto LABEL_37;
                  }
                }
              }

              if (spaceman_get(a1, &v24))
              {
                log_err("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v19 = nx_metadata_range_add(a1, *(v24[47] + 168), *(v24[47] + 164) & 0x7FFFFFFF, *(v24[47] + 164) < 0, 0);
                if (v19)
                {
                  obj_release(v24);
                }

                else
                {
                  v19 = nx_metadata_range_add(a1, *(v24[47] + 176), *(v24[47] + 152), *(v24[47] + 152) < 0, 0);
                  obj_release(v24);
                  if (!v19)
                  {
                    v21 = *(*(a1 + 376) + 16);
                    if (v21 < v26)
                    {
                      log_err("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", "nx_checkpoint_find_valid_checkpoint", 633, (*(a1 + 384) + 212), v21, v26, v25);
                    }

                    result = 0;
                    *v22 = v13;
                    return result;
                  }
                }

                log_err("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", "nx_checkpoint_find_valid_checkpoint", 626, (*(a1 + 384) + 212), *(a4 + 16), v19);
                v6 = v22;
              }

              goto LABEL_37;
            }

            log_err("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n");
          }

          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          v23[2] = 0u;
        }

        else
        {
          log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n");
        }
      }

      else
      {
        log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_checkpoint_find_valid_checkpoint", 497, (*(a1 + 384) + 212), v16 & 0xFFFFFFFFFFFFFFFDLL);
  if ((v16 & 0x100) != 0)
  {
    log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_checkpoint_find_valid_checkpoint", 499, (*(a1 + 384) + 212));
  }

  return 75;
}

uint64_t sub_100055A10(uint64_t a1, unsigned int *a2)
{
  v4 = _apfs_malloc_typed(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = nx_checkpoint_desc_block_address(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = dev_read(*(a1 + 384));
      if (v8)
      {
        break;
      }

      v8 = nx_check_checkpoint_map_block(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  _apfs_free(v5, a2[9]);
  return v6;
}

uint64_t sub_100055B1C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v45[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v42 = 0;
  v7 = _apfs_malloc_typed(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v43 = 0;
    v44 = 0;
    v40 = 0;
    v41 = 0;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      _apfs_free(v8, v6);
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *(a2 + 136);
      v34 = (v7 + 10);
      v38 = v6 - 1;
      v33 = *(a2 + 140) - 1;
      while (1)
      {
        v41 = 0;
        v12 = nx_checkpoint_desc_block_address(a1, v11, &v41);
        if (v12 || (v12 = dev_read(*(a1 + 384)), v12) || (v12 = obj_checksum_verify_phys(v8, v6, v13, v14), v12))
        {
          v31 = v12;
          log_err("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n");
LABEL_39:
          _apfs_free(v8, v6);
LABEL_40:
          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v31;
        }

        v35 = v9;
        v36 = v11;
        if (v8[9])
        {
          break;
        }

LABEL_27:
        v11 = (v36 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v9 = v35 + 1;
        if (v35 + 1 == v33)
        {
          goto LABEL_28;
        }
      }

      v15 = 0;
      v16 = v34;
      while (1)
      {
        v17 = *(v16 + 2);
        v41 = 0;
        v18 = nx_checkpoint_data_block_address(a1, v10, &v41, &v40);
        if (v18)
        {
          v31 = v18;
          log_err("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", "nx_checkpoint_load_data", 387, (*(a1 + 384) + 212), v10, v41, v18);
          goto LABEL_39;
        }

        if (v41 != *(v16 + 4))
        {
          break;
        }

        v19 = *(a2 + 144);
        v20 = v10;
        if (v10 < v19)
        {
          v20 = (*(a2 + 108) & 0x7FFFFFFF) + v10;
        }

        v21 = v20 - v19;
        v22 = *(a2 + 148);
        v23 = (v38 + v17) / v6;
        if (v21 >= v22 || v21 + v23 > v22)
        {
          log_err("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", "nx_checkpoint_load_data", 403, (*(a1 + 384) + 212), v21, (v38 + v17) / v6, *(a2 + 144), v22);
          goto LABEL_33;
        }

        v45[0] = 0;
        v24 = obj_descriptor_and_flags_for_type(*v16, v45, &v43);
        HIDWORD(v43) = *(v16 + 1);
        LODWORD(v44) = v17;
        if (v24)
        {
          v31 = v24;
LABEL_38:
          log_err("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n");
          goto LABEL_39;
        }

        v25 = obj_checkpoint_get(*(a1 + 392), v45[0] | 0x80000000, *(v16 + 3), &v43, v41, v10, v40, *(a2 + 16), &v42);
        if (v25)
        {
          v31 = v25;
          goto LABEL_38;
        }

        if (a3)
        {
          v26 = v42;
          if (!*a4)
          {
            v27 = obj_type(v42);
            v26 = v42;
            if (v27 == 5)
            {
              v28 = v42[7];
              v29 = v28[32];
              if (v29 <= v28[27])
              {
                v29 = v28[27];
              }

              *a3 = v29;
              v30 = v28[37];
              if (v30 <= v29)
              {
                v30 = v29;
              }

              *a3 = v30;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v26 = v42;
        }

        obj_release(v26);
        v10 = (v23 + v10) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v15;
        v16 += 40;
        if (v15 >= v8[9])
        {
          goto LABEL_27;
        }
      }

      log_err("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", "nx_checkpoint_load_data", 392, (*(a1 + 384) + 212), *(v16 + 4), v41);
LABEL_33:
      v31 = nx_corruption_detected_int(0);
      _apfs_free(v8, v6);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    log_err("%s:%d: %s couldn't allocate memory for checkpoint map block\n", "nx_checkpoint_load_data", 358, (*(a1 + 384) + 212));
    return 12;
  }

  return v31;
}

uint64_t nx_dev_init(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void *a6, unsigned int **a7)
{
  v22 = 0;
  if (a3)
  {
    v22 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v20 = fskit_dev_init(a1, 2, &v22);
    if (v20)
    {
      v18 = v20;
      log_err("%s:%d: device initialization failed: %d\n", "nx_dev_init", 679, v20);
      goto LABEL_36;
    }

    a1 = v22;
  }

  v9 = dev_block_size(a1);
  v10 = dev_block_count(v22);
  if (v9 <= 0x1000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v9;
  while (!(v11 % v9))
  {
    if (v11 > v9)
    {
      dev_set_block_size(v22);
    }

    v13 = _apfs_malloc_typed(v11, 0x92FC743FuLL);
    if (!v13)
    {
      log_err("%s:%d: %s couldn't allocate memory for superblock of size %d\n", "nx_dev_init", 713, (v22 + 212), v11);
      v18 = 12;
      goto LABEL_36;
    }

    v14 = dev_read(v22);
    if (v14)
    {
      v18 = v14;
      log_err("%s:%d: %s couldn't read superblock of size %d\n");
LABEL_33:
      _apfs_free(v13, v11);
      goto LABEL_36;
    }

    v17 = nx_check_superblock(v13, v11, 0, v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    v19 = v13[9];
    if (v19 % v9)
    {
      log_err("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", "nx_dev_init", 729, (v22 + 212), v13[9], v9);
      v17 = nx_corruption_detected_int(0);
      if (v17)
      {
        goto LABEL_13;
      }

      v19 = v13[9];
    }

    if (*(v13 + 5) * v19 > v12)
    {
      log_err("%s:%d: %s superblock container size %lld greater than device size %lld\n", "nx_dev_init", 735, (v22 + 212), *(v13 + 5) * v19, v12);
      v17 = nx_corruption_detected_int(0);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        if (v17 != 79)
        {
          log_err("%s:%d: %s superblock failed sanity checks: %d\n");
        }

        goto LABEL_33;
      }

      v19 = v13[9];
    }

    if (v19 == v11)
    {
      v18 = 0;
      *a7 = v13;
      *a6 = v22;
      return v18;
    }

    _apfs_free(v13, v11);
    dev_set_block_size(v22);
    v11 = v19;
    if (v19 < v9)
    {
      log_err("%s:%d: %s container block size too small for device block size (%d < %d)\n");
      goto LABEL_35;
    }
  }

  log_err("%s:%d: %s block size %d is not an even multiple of device block size %d\n");
LABEL_35:
  v18 = 22;
LABEL_36:
  if (v22)
  {
    dev_close(v22);
  }

  return v18;
}

uint64_t nx_mount(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = a3;
  v119 = 0;
  v120 = 0;
  memset(v121, 0, sizeof(v121));
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  *a3 = 0;
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 4);
    v7 = (v5 >> 13) & 1;
    if (((v5 & 0x100) != 0 || (v5 & 0x2000) != 0) && (v6 & 0x80000000) == 0)
    {
      log_err("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n");
LABEL_9:
      LODWORD(v14) = 0;
      v15 = 0;
      v16 = 22;
      goto LABEL_10;
    }

    if ((v5 & 0xC00) == 0x800)
    {
      log_err("%s:%d: conflicting mount options: is_system_graft but not is_graft\n");
      goto LABEL_9;
    }

    __n = *a2;
    __src = (v5 >> 9) & 1;
    v12 = (*(a2 + 8) >> 1) & 1;
    v10 = (v5 >> 10) & 1;
    v9 = (*(a2 + 8) >> 5) & 1;
    crc32c_init();
    v106 = (v5 >> 2) & 1;
    v3 = a3;
    v11 = (v5 >> 11) & 1;
    v13 = (v5 >> 8) & 1;
    v104 = (v5 >> 12) & 1;
  }

  else
  {
    crc32c_init();
    __n = 0;
    v106 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __src = 0;
    v104 = 0;
    v7 = 0;
    v6 = 0xFFFFFFFFLL;
  }

  v19 = nx_dev_init(a1, v8, v12, v10, 0, &v120, &v117);
  if (v19)
  {
    v16 = v19;
    if (v19 != 79)
    {
      log_err("%s:%d: device initialization failed: %d\n", "nx_mount", 1006, v19);
    }

    return v16;
  }

  v102 = v13;
  v99 = v9;
  v100 = v11;
  v95 = v3;
  v96 = v6;
  v21 = v120;
  v98 = dev_is_writable(v120) == 0;
  is_external = dev_is_external(v21);
  v22 = dev_real_block_size(v21);
  v23 = v117;
  v24 = v117[9];
  if (__src)
  {
    v25 = 128;
  }

  else
  {
    v25 = 0x10000;
  }

  if (__src)
  {
    v26 = 128;
  }

  else
  {
    v26 = 0x8000;
  }

  if (__src)
  {
    v27 = 128;
  }

  else
  {
    v27 = 0x10000;
  }

  if (__src)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0x8000;
  }

  log_debug("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", "nx_mount", 1195, (v21 + 212), v28, v27);
  v29 = v26;
  v14 = v24;
  v30 = obj_cache_create(v29, v25, v24, &v119);
  if (v30)
  {
    v31 = v30;
    log_err("%s:%d: %s object cache initialization failed: %d\n", "nx_mount", 1199, (v21 + 212), v30);
    v15 = 0;
    v16 = v31;
    goto LABEL_10;
  }

  __srca = v23;
  v32 = v119;
  if (v100)
  {
    *&v119[14].__opaque[48] = 1;
  }

  memset(&v121[3] + 8, 0, 24);
  *(&v121[2] + 8) = 0u;
  memset(v121 + 8, 0, 32);
  *&v121[0] = __PAIR64__(v24, v22);
  *(&v121[0] + 1) = *(v23 + 5);
  *(&v121[1] + 1) = v21;
  *&v121[2] = 1;
  DWORD2(v121[2]) = (__n | v98) & 1;
  HIDWORD(v121[2]) = is_external != 0;
  *&v121[3] = __PAIR64__(v102, v106);
  *(&v121[3] + 1) = __PAIR64__(v7, v104);
  bootstrap = obj_create_bootstrap(v32, 0x80000000, 1uLL, &nx_desc, v121, v24, 1, &v118);
  if (bootstrap)
  {
    v16 = bootstrap;
    log_err("%s:%d: %s object cache bootstrap failed: %d\n");
LABEL_43:
    v15 = 0;
    goto LABEL_10;
  }

  v34 = v118;
  if (v99)
  {
    *(v118 + 640) = 1;
  }

  memcpy(v34[47], v23, v24);
  v35 = v119;
  v36 = v118[47];
  v37 = *(v36 + 88);
  *v119[6].__opaque = v118;
  v35[25].i64[0] = v37;
  __strlcpy_chk();
  obj_mem_mgr_register(v119, v10 & (v100 ^ 1));
  v119 = 0;
  v120 = 0;
  v38 = *(v36 + 104);
  v39 = v96;
  if (v38 < 0 && (v42 = nx_metadata_fragmented_sanity_check(v118, *(v36 + 112), v38 & 0x7FFFFFFF), v42) || (v40 = *(v36 + 108), v40 < 0) && (v42 = nx_metadata_fragmented_sanity_check(v118, *(v36 + 120), v40 & 0x7FFFFFFF), v42))
  {
    v16 = v42;
    log_err("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n");
    goto LABEL_43;
  }

  v15 = _apfs_malloc_typed(v24, 0x286E03C4uLL);
  if (!v15)
  {
    log_err("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", "nx_mount", 1307, (v118[48] + 212));
    v16 = 12;
    goto LABEL_10;
  }

  if ((*(v36 + 1264) & 2) == 0)
  {
    goto LABEL_62;
  }

  v41 = v118;
  *(v118 + 626) = 1;
  if (*(v41 + 628) == 1)
  {
    log_err("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n");
LABEL_61:
    *(v36 + 1264) &= ~2uLL;
    *(__srca + 158) &= ~2uLL;
    goto LABEL_62;
  }

  if (!*(v36 + 140))
  {
    log_err("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_61;
  }

  if (!*(v36 + 148))
  {
    log_err("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_61;
  }

LABEL_62:
  v107 = 0;
  __na = v14;
  v43 = 0;
  v103 = 0;
  v105 = 0;
  while (1)
  {
    v44 = v118;
    if ((*(v36 + 1264) & 2) != 0)
    {
      break;
    }

    v45 = *(v118 + 633);
    if (v43 & v45)
    {
      goto LABEL_68;
    }

    highest_xid = nx_checkpoint_find_highest_xid(v118, &v113, &v114);
    if (highest_xid)
    {
      v16 = highest_xid;
      log_err("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n");
LABEL_139:
      LODWORD(v14) = __na;
      goto LABEL_10;
    }

LABEL_69:
    if ((v39 & 0x80000000) == 0)
    {
      v54 = v39;
      v55 = __srca;
      goto LABEL_79;
    }

    v50 = __srca;
    valid_checkpoint = nx_checkpoint_find_valid_checkpoint(v118, __srca, v113, v15, &v115);
    v16 = valid_checkpoint;
    if (valid_checkpoint == 35)
    {
      if ((*(v36 + 1264) & 2) == 0)
      {
        goto LABEL_115;
      }

      log_err("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", "nx_mount", 1503, (v118[48] + 212));
      *(v36 + 1264) &= ~2uLL;
      *(__srca + 158) &= ~2uLL;
    }

    else
    {
      if (valid_checkpoint)
      {
LABEL_115:
        log_err("%s:%d: %s failed to find valid checkpoint: %d\n", "nx_mount", 1508, (v118[48] + 212), valid_checkpoint);
        goto LABEL_139;
      }

      v101 = v15[2];
      log_debug("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", "nx_mount", 1512, (v118[48] + 212), v114, v101, v115);
      v52 = *(__srca + 2);
      v53 = v118;
      if (v52 != v15[2])
      {
        log_err("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1514, (v118[48] + 212), v15[2], v52);
        v53 = v118;
        if ((*(v118 + 633) & 1) == 0)
        {
          v103 = 1;
          *(v118 + 643) = 1;
        }
      }

LABEL_109:
      v73 = *(v53[47] + 56);
      if (v73)
      {
        log_debug("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", "nx_mount", 1525, (v53[48] + 212), v73);
        v53 = v118;
        *(v118 + 627) = 1;
      }

      obj_checkpoint_check_for_unknown(v53[49]);
      v74 = v118;
      v75 = *(v118 + 633);
      if ((v43 & v75 & 1) == 0)
      {
        v105 = *(v15 + 36);
        v107 = *(v15 + 34);
        log_debug("%s:%d: %s stable checkpoint indices: desc %d data %d\n", "nx_mount", 1539, (v118[48] + 212), v107, v105);
        v74 = v118;
        v75 = *(v118 + 633);
      }

      if (v43 & 1 | ((v75 & 1) == 0))
      {
        if (*(v74 + 628) == 1 && ((*(v74 + 631) | v75) & 1) == 0 && (v74[79] & 1) == 0 && !*(v50 + 176))
        {
          *(v74 + 165) = (*(v15 + 34) + *(v15 + 35) - 1) % (v15[13] & 0x7FFFFFFFu);
        }

        *(v36 + 136) = 0;
        *(v36 + 144) = 0;
        *(v36 + 1264) &= ~2uLL;
        nx_metadata_range_optimize(v74);
        v77 = v118;
        if (*(v118 + 629) == 1)
        {
          v16 = spaceman_get(v118, &v116);
          if (v16)
          {
LABEL_128:
            log_err("%s:%d: %s failed to set up spaceman for demo mode: %d\n");
            goto LABEL_139;
          }

          v78 = v118[49];
          if (!v78)
          {
            sub_1000A79D0();
          }

          obj_cache_lock_write(v78);
          v79 = v118;
          v118[52] = 0;
          v16 = obj_clone(v116, 0, v79 + 52, 0);
          obj_cache_unlock_write(v118[49]);
          if (v16)
          {
            obj_release(v116);
            goto LABEL_128;
          }

          obj_ephemeral_set_persistent(v118[52], 0);
          obj_release(v116);
          v77 = v118;
        }

        v80 = v101 + 1;
        v16 = tx_mgr_init(v77, v101 + 1, v77 + 50);
        v81 = v118;
        if (v16)
        {
          log_err("%s:%d: %s tx manager initialization failed: %d\n");
          goto LABEL_139;
        }

        v82 = v118[50];
        *(v82 + 104) = v107;
        *(v82 + 108) = v105;
        if ((*(v81 + 627) & 1) == 0)
        {
          if (*(v81 + 633) & 1) != 0 || *(v81 + 632) == 1 && (log_info("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", "nx_mount", 1614, (v81[48] + 212), v80), v81 = v118, *(v118[47] + 1408) = v80, (*(v81 + 633)))
          {
            if ((v81[79] & 1) == 0)
            {
              *v83.i64 = log_info("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", "nx_mount", 1622, (v81[48] + 212), *(v81[47] + 16), *(v81[47] + 1408));
              v15[176] = 0;
              obj_checksum_set_phys(v118, v15, v14, v83, v84);
              if (!v112)
              {
                v16 = 22;
                goto LABEL_175;
              }

              v85 = dev_write(v118[48]);
              if (v85 || (v85 = tx_barrier(v118, 16), v85))
              {
                v16 = v85;
LABEL_175:
                log_err("%s:%d: %s failed to write superblock to block %lld: %d\n");
                goto LABEL_139;
              }

              v81 = v118;
              *(v118[47] + 1408) = 0;
              v103 = 1;
            }
          }

          v86 = spaceman_allocation_init(v81);
          if (v86)
          {
            log_err("%s:%d: %s failed to set up sm allocation metadata: %d\n", "nx_mount", 1648, (v118[48] + 212), v86);
          }

          if (v103)
          {
            obj_checksum_set(v118, v87, v88);
            v89 = dev_write(v118[48]);
            if (v89)
            {
              v16 = v89;
              log_err("%s:%d: %s failed to write superblock to block 0: %d\n");
              goto LABEL_139;
            }
          }

          v90 = v118;
          v91 = v118[47];
          v92 = *(v91 + 1384);
          v93 = apfs_source_version_val_full();
          if (v92 < v93)
          {
            *(v91 + 1384) = v93;
          }

          sub_100057528(v90);
          nx_reaper_check_for_work(v118);
        }

        _apfs_free(v15, __na);
        v94 = v118;
        if (*(v118[47] + 1248))
        {
          if ((*(v118 + 627) & 1) == 0)
          {
            v16 = nx_unblock_physical_range(v118);
            v94 = v118;
            if (v16)
            {
              log_err("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", "nx_mount", 1706, (v118[48] + 212), v16);
              v15 = 0;
              goto LABEL_139;
            }
          }
        }

        *v95 = v94;
        if (v117)
        {
          _apfs_free(v117, v117[9]);
        }

        return 0;
      }

      obj_cache_reset(v74[49], 0);
      v74[51] = 0;
      v74[92] = 0;
      *(v74 + 53) = 0u;
      *(v74 + 55) = 0u;
      *(v74 + 57) = 0u;
      memcpy(v118[47], v50, v14);
      v43 = 1;
    }
  }

  log_info("%s:%d: %s container cleanly-unmounted flag set.\n", "nx_mount", 1341, (v118[48] + 212));
  v44 = v118;
  v45 = *(v118 + 633);
LABEL_68:
  v47 = *(v36 + 136) + *(v36 + 140) - 1;
  v48 = *(v36 + 104) & 0x7FFFFFFF;
  v49 = v47 % v48;
  v113 = v47 % v48;
  v114 = *(v36 + 16);
  if ((v43 & v45 & 1) == 0)
  {
    goto LABEL_69;
  }

  log_info("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", "nx_mount", 1346, (v44[48] + 212), *(v36 + 1408));
  v54 = v49;
  v55 = __srca;
  if (!*(v36 + 1408))
  {
    log_err("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", "nx_mount", 1348, (v118[48] + 212));
    v16 = 100;
    goto LABEL_139;
  }

LABEL_79:
  v56 = *(v36 + 104) & 0x7FFFFFFF;
  if (v54 >= v56)
  {
    log_err("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", "nx_mount", 1366, (v118[48] + 212), v54, v56 - 1);
    v76 = v118;
LABEL_138:
    v16 = nx_corruption_detected_int(v76);
    goto LABEL_139;
  }

  v39 = v54;
  v57 = nx_checkpoint_desc_block_address(v118, v54, &v112);
  if (v57)
  {
    v16 = v57;
LABEL_131:
    log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
    goto LABEL_10;
  }

  v58 = dev_read(v118[48]);
  v16 = v58;
  if (*(v118 + 633) == 1)
  {
    if (!v58 && v14)
    {
      v61 = 0;
      while (!*(v15 + v61))
      {
        if (v14 == ++v61)
        {
          v16 = 0;
          goto LABEL_89;
        }
      }

      log_err("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", "nx_mount", 1382, (v118[48] + 212), *(v15 + v61), v61, v39, v112);
      v16 = 22;
    }

LABEL_89:
    memcpy(v15, v55, v14);
    obj_checksum_set_phys(v118, v15, v14, v62, v63);
  }

  if (v16)
  {
    goto LABEL_131;
  }

  if (*(v15 + 7) || *(v15 + 6) != -2147483647)
  {
    log_err("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", "nx_mount", 1399, (v118[48] + 212), v39);
    v76 = v118;
    goto LABEL_138;
  }

  v64 = nx_check_superblock(v15, *(v36 + 36), 1, v59, v60);
  if (v64)
  {
    v16 = v64;
    log_err("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n");
    goto LABEL_139;
  }

  v65 = *(v36 + 64);
  if ((v65 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_mount", 1409, (v118[48] + 212), v65 & 0xFFFFFFFFFFFFFFFDLL);
    if ((v65 & 0x100) != 0)
    {
      log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_mount", 1411, (v118[48] + 212));
    }

    v16 = 75;
    goto LABEL_10;
  }

  v50 = __srca;
  if (!nx_superblock_agrees_with_main_superblock(__srca, v15, "checkpoint"))
  {
    log_err("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", "nx_mount", 1418, (v118[48] + 212), v39);
    v16 = 22;
    goto LABEL_139;
  }

  v66 = (*(v15 + 34) + *(v15 + 35) - 1) % (*(v36 + 104) & 0x7FFFFFFFu);
  if (v39 != v66)
  {
    log_err("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", "nx_mount", 1425, (v118[48] + 212), v66, v39);
    v76 = v118;
    goto LABEL_138;
  }

  v67 = nx_metadata_range_add(v118, 0, 1, 0, 1);
  if (v67 || (v67 = nx_metadata_range_add(v118, v15[14], v15[13] & 0x7FFFFFFF, *(v15 + 26) < 0, 0), v67) || (v67 = nx_metadata_range_add(v118, v15[15], *(v15 + 27) & 0x7FFFFFFF, *(v15 + 27) < 0, 0), v67))
  {
    v16 = v67;
    log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", "nx_mount", 1442, (v118[48] + 212), v15[2], *(v15 + 34), v67);
    goto LABEL_10;
  }

  v68 = sub_100055A10(v118, v15);
  if (v68)
  {
    v16 = v68;
    log_err("%s:%d: %s validation failed for checkpoint at index %d: %d\n");
    goto LABEL_139;
  }

  v115 = v39;
  v101 = v15[2];
  log_debug("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", "nx_mount", 1453, (v118[48] + 212), v114, v101, v39);
  v69 = v118;
  if (*(__srca + 2) != v15[2])
  {
    log_err("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1455, (v118[48] + 212), v15[2], *(v36 + 16));
    v69 = v118;
    v103 = 1;
    *(v118 + 643) = 1;
  }

  v70 = sub_100055B1C(v69, v15, 0, 0);
  if (v70)
  {
    v16 = v70;
    log_err("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n");
    goto LABEL_139;
  }

  memcpy(v118[47], v15, v14);
  v71 = v118;
  *(v118[49] + 400) = *(v118[47] + 88);
  v16 = nx_checkpoint_traverse(v71, 0, 2);
  if (v16)
  {
    log_err("%s:%d: %s failed to fix up checkpoint data: %d\n");
    goto LABEL_139;
  }

  v16 = spaceman_get(v118, &v116);
  if (v16)
  {
    log_err("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n");
    goto LABEL_139;
  }

  v72 = nx_metadata_range_add(v118, *(v116[47] + 168), *(v116[47] + 164) & 0x7FFFFFFF, *(v116[47] + 164) < 0, 0);
  if (!v72)
  {
    v16 = nx_metadata_range_add(v118, *(v116[47] + 176), *(v116[47] + 152), *(v116[47] + 152) < 0, 0);
    obj_release(v116);
    if (v16)
    {
      goto LABEL_145;
    }

    v53 = v118;
    goto LABEL_109;
  }

  v16 = v72;
  obj_release(v116);
LABEL_145:
  log_err("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n");
LABEL_10:
  if (v117)
  {
    _apfs_free(v117, v117[9]);
  }

  if (v15)
  {
    _apfs_free(v15, v14);
  }

  v17 = v118;
  if (v118)
  {
    *(v118 + 627) = 1;
    nx_unmount_internal(v17, 0);
  }

  if (v119)
  {
    obj_cache_destroy(v119);
  }

  if (v120)
  {
    dev_close(v120);
  }

  return v16;
}

void sub_100057528(void *a1)
{
  v2 = spaceman_scan_free_blocks(a1, 0, 1u, 1);
  if (v2)
  {
    log_err("%s:%d: %s *** trim'ing free blocks returned: %d\n", "nx_mount_initiate_free_space_trims", 856, (a1[48] + 212), v2);
  }

  spaceman_free_extent_cache_print_stats(a1);
}

void nx_unmount_internal(uint64_t a1, _DWORD *a2)
{
  nx_reaper_shut_down(a1);
  v4 = *(a1 + 400);
  if (v4)
  {
    if ((*(a1 + 627) & 1) == 0)
    {
      tx_unmount(a1);
      v4 = *(a1 + 400);
    }

    tx_mgr_destroy(a1, v4, *(*(a1 + 376) + 36));
  }

  if (a2)
  {
    *a2 = *(a1 + 660);
  }

  v5 = *(a1 + 408);
  if (v5)
  {
    obj_release(v5);
    *(a1 + 408) = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v7 = *(a1 + 432 + i);
    if (v7)
    {
      obj_release(v7);
    }
  }

  v8 = *(a1 + 464);
  if (v8)
  {
    btree_delete(v8, 0, 0);
    obj_release(*(a1 + 464));
  }

  v9 = *(a1 + 1088);
  if (v9)
  {
    btree_delete(v9, 0, 0);
    obj_release(*(a1 + 1088));
    *(a1 + 1088) = 0;
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    dev_close(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 392);
  if (v11)
  {

    obj_cache_destroy(v11);
  }
}

void log_debug(uint64_t result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 5)
  {
    appexPrint(va, result);
  }
}

double log_info(const char *a1, ...)
{
  va_start(va, a1);
  if (apfs_log_level >= 4)
  {
    appexPrint(va, a1);
  }

  return result;
}

void log_warn(uint64_t result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 3)
  {
    appexPrint(va, result);
  }
}

void log_err(uint64_t result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 2)
  {
    appexPrint(va, result);
  }
}

void log_corrupt(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (apfs_log_level >= 1)
  {
    appexPrint(va, a2);
  }
}

uint64_t nx_format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  *a4 = 0;
  if (a2)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 20);
    v9 = *(a2 + 26);
    v10 = *(a2 + 24);
    v11 = v10 & 3;
    if ((v10 & 3) == 0)
    {
      *(a2 + 24) = v10 | 1;
      v11 = 1;
    }

    v12 = v11 == 2;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v12 = 0;
    v8 = 1073741826;
  }

  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  v68 = 0u;
  v69 = 0u;
  memset(v70, 0, 48);
  v60 = 0;
  v61 = 0;
  v59 = 0;
  crc32c_init();
  v13 = fskit_dev_init(*(a2 + 32), 2, &v64);
  if (v13)
  {
    v14 = v13;
    v15 = strerror(v13);
    log_err("%s:%d: device initialization failed: %d - %s\n", "nx_format", 76, v14, v15);
    v16 = v14;
    goto LABEL_25;
  }

  if (!dev_is_writable(v64))
  {
    log_err("%s:%d: error: device is not writable!\n", "nx_format", 79);
    v16 = 30;
    goto LABEL_25;
  }

  v17 = dev_block_size(v64);
  v18 = dev_block_count(v64);
  v19 = v18;
  if (!v7)
  {
    v20 = v18 * v17;
    if (v20 >> 50)
    {
      v21 = 0x4000;
    }

    else
    {
      v21 = 4096;
    }

    if (v20 >> 59)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = v21;
    }

    if (v17 <= v22)
    {
      v7 = v22;
    }

    else
    {
      v7 = v17;
    }
  }

  if (v7 <= 4095)
  {
    log_warn("%s:%d: warning: fs block size too small (%d < %d)\n");
LABEL_24:
    v16 = 22;
    goto LABEL_25;
  }

  if (v7 < v17)
  {
    log_warn("%s:%d: warning: fs block size too small for device block size (%d < %d)\n");
    goto LABEL_24;
  }

  if (v7 % v17)
  {
    log_err("%s:%d: error: block size %d is not an even multiple of device block size %d\n", "nx_format", 111, v7, v17);
    goto LABEL_24;
  }

  if (v7 > v17)
  {
    dev_set_block_size(v64);
  }

  v25 = v19 / (v7 / v17);
  v26 = nx_calculate_metadata_parameters(v7, v25, v9, v66);
  if (v26)
  {
    v27 = v26;
    strerror(v26);
    log_err("%s:%d: metadata space calculation failed: %d - %s\n");
LABEL_41:
    v16 = v27;
    goto LABEL_25;
  }

  v28 = obj_cache_create(0xC800u, 0xC350u, v7, &v65);
  if (v28)
  {
    v27 = v28;
    strerror(v28);
    log_err("%s:%d: object cache initialization failed: %d - %s\n");
    goto LABEL_41;
  }

  v61 = 1;
  memset(&v70[1], 0, 40);
  *&v68 = __PAIR64__(v7, v17);
  *(&v69 + 1) = v64;
  v70[0] = 1;
  *(&v68 + 1) = v25;
  *&v69 = v12;
  if (uuid_is_null(a2))
  {
    uuid_generate(&v70[4]);
  }

  else
  {
    uuid_copy(&v70[4], a2);
  }

  bootstrap = obj_create_bootstrap(v65, 0x80000000, 1uLL, &nx_desc, &v68, v7, v61, &v63);
  if (bootstrap)
  {
    v30 = bootstrap;
    v31 = strerror(bootstrap);
    log_err("%s:%d: object cache bootstrap failed: %d - %s\n", "nx_format", 153, v30, v31);
    v16 = v30;
    goto LABEL_25;
  }

  v32 = v63;
  *(v63 + 624) = 1;
  v33 = v32[47];
  v34 = v67;
  v33[22].i32[1] = v66[11].i32[2];
  v33[13] = vmovn_s64(*(&v66[10] + 8));
  v33[164] = ((*(&v67 + 1) << 32) | (v34 << 16) | 1);
  *(v32 + 625) = a3 != 0;
  v35 = v65;
  v36 = v33[11];
  *v65[6].__opaque = v32;
  *&v35[6].__opaque[8] = v36;
  v37 = spaceman_create(v32, v66, a3, v61, &v33[19]);
  if (v37)
  {
    v16 = v37;
    strerror(v37);
    log_err("%s:%d: spaceman initialization failed: %d - %s\n");
    goto LABEL_25;
  }

  v38 = spaceman_get(v63, &v62);
  if (!v38)
  {
    v39 = spaceman_allocation_init(v63);
    if (v39)
    {
      log_err("%s:%d: failed to set up sm allocation metadata: %d\n", "nx_format", 185, v39);
    }

    v40 = tx_mgr_init(v63, v61, v63 + 50);
    if (v40)
    {
      v16 = v40;
      strerror(v40);
      log_err("%s:%d: tx manager initialization failed: %d - %s\n");
LABEL_58:
      obj_release(v62);
      goto LABEL_25;
    }

    v61 = 0;
    v41 = tx_enter(v63, &v61);
    if (v41)
    {
      v16 = v41;
      strerror(v41);
      log_err("%s:%d: tx_enter for initialization failed: %d - %s\n");
      goto LABEL_58;
    }

    v42 = v63;
    v43 = v63[47];
    if ((*(v43 + 104) & 0x80000000) != 0)
    {
      v46 = nx_metadata_fragmented_extent_list_tree_store(v63, (v43 + 112), v61);
      if (v46)
      {
        goto LABEL_77;
      }

      v42 = v63;
      v43 = v63[47];
    }

    if ((*(v43 + 108) & 0x80000000) != 0)
    {
      v46 = nx_metadata_fragmented_extent_list_tree_store(v42, (v43 + 120), v61);
      if (v46)
      {
        goto LABEL_77;
      }

      v42 = v63;
    }

    v44 = v62[47];
    if ((*(v44 + 164) & 0x80000000) != 0)
    {
      v46 = nx_metadata_fragmented_extent_list_tree_store(v42, (v44 + 168), v61);
      if (v46)
      {
        goto LABEL_77;
      }

      v42 = v63;
      v44 = v62[47];
    }

    if ((*(v44 + 152) & 0x8000000000000000) == 0)
    {
LABEL_63:
      v45 = nx_metadata_range_add(v42, 0, 1, 0, 1);
      if (v45 || (v45 = nx_metadata_range_add(v63, *(v63[47] + 112), *(v63[47] + 104) & 0x7FFFFFFF, *(v63[47] + 104) < 0, 0), v45) || (v45 = nx_metadata_range_add(v63, *(v63[47] + 120), *(v63[47] + 108) & 0x7FFFFFFF, *(v63[47] + 108) < 0, 0), v45) || (v45 = nx_metadata_range_add(v63, *(v62[47] + 168), *(v62[47] + 164) & 0x7FFFFFFF, *(v62[47] + 164) < 0, 0), v45))
      {
        v16 = v45;
        obj_release(v62);
      }

      else
      {
        v16 = nx_metadata_range_add(v63, *(v62[47] + 176), *(v62[47] + 152), *(v62[47] + 152) < 0, 0);
        obj_release(v62);
        if (!v16)
        {
          nx_metadata_range_optimize(v63);
          v48 = tx_checkpoint_desc_zero(v63, *(v63[47] + 104) & 0x7FFFFFFF);
          if (v48)
          {
            v16 = v48;
            strerror(v48);
            log_err("%s:%d: tx checkpoint descriptor area initialization failed: %d - %s\n");
          }

          else
          {
            v49 = obj_create(v63[49], 0x80000000, 0, &nx_reaper_desc, 0, 0, v61, &v60);
            if (v49)
            {
              v16 = v49;
              strerror(v49);
              log_err("%s:%d: reaper initialization failed: %d - %s\n");
            }

            else
            {
              v50 = obj_oid(v60);
              *(v63[47] + 168) = v50;
              obj_release(v60);
              v51 = omap_create(v63, 0x40000000u, 1u, v8, v61, &v59);
              if (!v51)
              {
                v52 = obj_oid(v59);
                *(v63[47] + 160) = v52;
                obj_release(v59);
                v53 = tx_leave(v63, v61, 0);
                if (v53)
                {
                  v16 = v53;
                  strerror(v53);
                  log_err("%s:%d: tx_leave for omap initialization failed: %d - %s\n");
                  goto LABEL_25;
                }

                v54 = tx_finish(v63, 0);
                if (v54)
                {
                  v16 = v54;
                  strerror(v54);
                  log_err("%s:%d: failed to finish first transaction: %d - %s\n");
                  goto LABEL_25;
                }

                v57 = v63;
                if ((*(v63 + 625) & 1) == 0)
                {
                  obj_checksum_set(v63, v55, v56);
                  v58 = dev_write(v63[48]);
                  if (v58)
                  {
                    v16 = v58;
                    strerror(v58);
                    log_err("%s:%d: failed to write superblock to block 0: %d - %s\n");
                    goto LABEL_25;
                  }

                  v57 = v63;
                }

                v16 = 0;
                *(v57 + 624) = 0;
                *a4 = v57;
                return v16;
              }

              v16 = v51;
              strerror(v51);
              log_err("%s:%d: omap initialization failed: %d - %s\n");
            }
          }

LABEL_69:
          tx_leave(v63, v61, 0);
          goto LABEL_25;
        }
      }

      log_err("%s:%d: failed load container metadata ranges (overlap?): %d\n");
      goto LABEL_69;
    }

    v46 = nx_metadata_fragmented_extent_list_tree_store(v42, (v44 + 176), v61);
    if (!v46)
    {
      v42 = v63;
      goto LABEL_63;
    }

LABEL_77:
    v16 = v46;
    v47 = strerror(v46);
    log_err("%s:%d: creation of fragmented metadata physical extent list tree(s) failed: %d - %s\n", "nx_format", 221, v16, v47);
    obj_release(v62);
    goto LABEL_25;
  }

  v16 = v38;
  log_err("%s:%d: failed to get spaceman: %d\n");
LABEL_25:
  if (v63)
  {
    v23 = v63[50];
    if (v23)
    {
      tx_mgr_destroy(v63, v23, v7);
    }
  }

  if (v65)
  {
    obj_cache_destroy(v65);
  }

  if (v64)
  {
    dev_close(v64);
  }

  return v16;
}

void appexPrintInternal(void *a1)
{
  v1 = a1;
  if (qword_1001037A0)
  {
    if (*qword_1001037A0)
    {
      v2 = *qword_1001037A0;
      if ([v1 hasSuffix:@"\n"])
      {
        v3 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

        v1 = v3;
      }

      [v2 logMessage:v1];
    }

    else
    {
      v2 = fskit_std_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000A79FC(v2);
      }
    }
  }

  else
  {
    v2 = fskit_std_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7A80(v2);
    }
  }
}

void appexPrint(uint64_t a1, uint64_t a2)
{
  v4 = [NSString alloc];
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [v4 initWithFormat:v5 arguments:a1];

  appexPrintInternal(v6);
}

void appexPrintFixed(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  appexPrintInternal(v1);
}

id doFormat(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, int a9)
{
  v16 = a1;
  v17 = a2;
  v18 = a7;
  v19 = v18;
  v27 = 0;
  if ((a3 & 1) == 0)
  {
    v20 = [v18 bsdName];
    v21 = nx_format([v20 UTF8String], a6, 0, &v27);

    if (v21)
    {
      goto LABEL_13;
    }
  }

  if (a4)
  {
    v28 = 0;
    v29 = 0;
    if (nx_mount(a8, 0, &v29))
    {
      goto LABEL_13;
    }

    v22 = apfs_deletefs(v29, a9 - 1, &v28);
    v23 = v29;
    if (!v22)
    {
      v24 = nx_reaper_wait(v29, v28);
      nx_unmount(v29);
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_13:
      v25 = fs_errorForPOSIXError();
      goto LABEL_14;
    }

LABEL_12:
    nx_unmount(v23);
    goto LABEL_13;
  }

  v28 = 0;
  v29 = 0;
  if (nx_mount(a8, 0, &v29))
  {
    goto LABEL_13;
  }

  if (apfs_newfs(v29, a5, 0, 0, &v28))
  {
    v23 = v29;
    goto LABEL_12;
  }

  log_info("%s:%d: created a new volume with index : %d", "do_userland_create", 84, *(v28[47] + 36) + 1);
  obj_release(v28);
  nx_unmount(v29);
LABEL_18:
  [v17 setCompletedUnitCount:2];
  v25 = 0;
LABEL_14:

  return v25;
}

id doCheck(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (fsck_apfs_check_fs(a4))
  {
    v6 = fs_errorForPOSIXError();
  }

  else
  {
    v6 = 0;
  }

  [v5 setCompletedUnitCount:2];

  return v6;
}

void sub_100058A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058AA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100058ABC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_1000594CC(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = doCheck(a1, a1[5], a3, (a1 + 7));
  [a1[4] didCompleteWithError:v4];
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[APFSFileSystem startCheckWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: done", &v7, 0xCu);
  }

  free(a1[6]);
  qword_1001037A0 = 0;
  free(a1[19]);
  free(a1[20]);
  v6 = a1[18];
  if (v6)
  {
    free(*v6);
    free(a1[18]);
  }
}

void sub_100059CB4(uint64_t a1)
{
  v2 = doFormat(*(a1 + 32), *(a1 + 40), *(a1 + 612), *(a1 + 613), a1 + 56, a1 + 552, *(a1 + 48), *(a1 + 592), *(a1 + 608));
  [*(a1 + 32) didCompleteWithError:v2];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[APFSFileSystem startFormatWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: done", buf, 0xCu);
  }

  free(*(a1 + 600));
  qword_1001037A0 = 0;
  v4 = *(a1 + 592);
  if (v4)
  {
    free(*v4);
    free(*(a1 + 592));
  }
}

char *purgeable_init(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 40), (*(v2 + 57) & 2) != 0))
  {
    v4 = *(v2 + 176);
    v5 = memory_storage_limit(0x64u, 0x38400000uLL, 0x5A00000uLL);
    byte_1001037A8 = BYTE1(*(*(a1 + 40) + 56)) & 1;
    bitmap_store_init(&unk_1001037B0, v4, v5);
    if (!tree_init_ext(&unk_100103818, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 9, 0, 0, uint64_key_compare))
    {
      tree_create(&unk_100103818, 0, 64);
    }

    result = memory_storage_register_tree(&unk_100103818, "purgeable", purgeable_abort);
    if (result)
    {
      fsck_printf_warn("failed to register the purgeable tree in the fsck memory storage\n");

      return fsck_fail_func(0x5C1, 12);
    }
  }

  else
  {

    return fsck_printf_debug("skipping purgeable cross checks\n");
  }

  return result;
}

uint64_t purgeable_abort()
{
  bitmap_store_destroy(&unk_1001037B0);

  return tree_destroy(&unk_100103818, 0);
}

uint64_t purgeable_register(uint64_t a1)
{
  if (!bitmap_store_inited(&unk_1001037B0))
  {
    return 0;
  }

  if (byte_1001037A8 != 1)
  {
    v4 = mark_range(&unk_1001037B0, a1, 1uLL, 1);
    if (v4 != 17)
    {
LABEL_8:
      v3 = v4;
      goto LABEL_9;
    }

LABEL_7:
    v4 = sub_10005A11C(a1);
    goto LABEL_8;
  }

  v2 = check_range(&unk_1001037B0, a1, 1uLL, 1);
  if (!v2)
  {
    v3 = mark_range(&unk_1001037B0, a1, 1uLL, 0);
    if (!v3)
    {
      return v3;
    }

    fsck_printf_err("can't unmark purgeable (file_id %llu) for cross checks\n", a1);
    fsck_fail_func(0x5C3, 92);
LABEL_10:
    if (v3 == 34)
    {
      v5 = strerror(34);
      fsck_printf_warn("failed to cross check purgeable record: %d (%s)\n", 34, v5);
      fsck_fail_func(0x5C5, 0);
    }

    else
    {
      if (v3 != 12)
      {
        v7 = strerror(v3);
        fsck_printf_err("failed to cross check purgeable record: %d (%s)\n", v3, v7);
        fsck_fail_func(0x5C6, v3);
        return v3;
      }

      fsck_printf_warn("aborting purgeable cross checks - out of memory\n");
      fsck_fail_func(0x5C4, 12);
      bitmap_store_destroy(&unk_1001037B0);
      tree_destroy(&unk_100103818, 0);
    }

    return 0;
  }

  v3 = v2;
  if (v2 == 17)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_10005A11C(uint64_t a1)
{
  v8 = 0;
  v6 = a1;
  v7 = 0;
  v1 = tree_insert(&unk_100103818, 0, &v6, 8, &v7, 9);
  v2 = v1;
  if (v1)
  {
    v3 = v6;
    v4 = strerror(v1);
    fsck_printf_err("failed to insert purgeable (file_id %llu): %s (%d)\n", v3, v4, v2);
    fsck_fail_func(0x5C2, v2);
  }

  return v2;
}

uint64_t purgeable_register_inode(uint64_t a1, uint64_t a2)
{
  if (!bitmap_store_inited(&unk_1001037B0))
  {
    return 0;
  }

  if (byte_1001037A8 == 1)
  {
    v4 = mark_range(&unk_1001037B0, a2, 1uLL, 1);
    if (v4 == 17)
    {
      fsck_printf_err("purgeable inode (id %llu) was unexpectedly registered twice\n", a2);
      v5 = 92;
      fsck_fail_func(0x5C7, 92);
LABEL_14:
      v9 = strerror(v5);
      fsck_printf_err("failed to cross check purgeable inode: %d (%s)\n", v5, v9);
      fsck_fail_func(0x5CC, v5);
      return v5;
    }

    v5 = v4;
    goto LABEL_10;
  }

  v6 = check_range(&unk_1001037B0, a2, 1uLL, 1);
  if (!v6)
  {
    v5 = mark_range(&unk_1001037B0, a2, 1uLL, 0);
    if (!v5)
    {
      return v5;
    }

    fsck_printf_err("can't unmark purgeable (file_id %llu) for cross checks\n", a2);
    fsck_fail_func(0x5CA, 92);
    goto LABEL_11;
  }

  v5 = v6;
  if (v6 != 17)
  {
LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

    return v5;
  }

  fsck_printf_warn("purgeable inode (id %llu) is missing a purgeable record\n", a2);
  fsck_fail_func(0x5C8, -2);
  v7 = inode_repair_clear_internal_flags(a1 + 768, a2, 0x80000);
  v5 = v7;
  if (v7)
  {
    v8 = strerror(v7);
    fsck_printf_err("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", a2, v5, v8);
    fsck_fail_func(0x5C9, v5);
LABEL_11:
    if (v5 != 12)
    {
      goto LABEL_14;
    }

    fsck_printf_warn("aborting purgeable cross checks - out of memory\n");
    fsck_fail_func(0x5CB, 12);
    bitmap_store_destroy(&unk_1001037B0);
    tree_destroy(&unk_100103818, 0);
    return 0;
  }

  return v5;
}

uint64_t purgeable_finalize(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  bitmap_store_iterate(&unk_1001037B0, sub_10005A660, a3);
  v19 = 0;
  tree_key_count(&unk_100103818, 0, &v19);
  if (v19)
  {
    v5 = malloc_type_calloc(1uLL, 0x340uLL, 0x30AFF060uLL);
    v6 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x37CBAB78uLL);
    tree_for_jobj = get_tree_for_jobj(a1, a2, 3u, &v24);
    if (!v6 || !v5 || !v24)
    {
      fsck_printf_err("unable to init fsroot tree to enque purgeable repairs\n");
      fsck_fail_func(0x5D4, tree_for_jobj);
      goto LABEL_19;
    }

    v13 = a1;
    v14 = a2;
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v6 = 0;
    v5 = 0;
  }

  v17 = 9;
  v18 = 8;
  if (!tree_lookup_min(&unk_100103818, 0, &v29, &v18, &v27, &v17))
  {
    while (1)
    {
      *v5 = v29 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      v26 = 8;
      v25 = 3808;
      v8 = tree_lookup(v24, 0, 0, v5, &v26, 832, v6, &v25);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      v10 = v29;
      v11 = strerror(v8);
      fsck_printf_err("unable to find inode (id %llu): %d (%s)\n", v10, v9, v11);
      fsck_fail_func(0x5D5, v9);
LABEL_14:
      v15 = 9;
      v16 = 8;
      if (tree_lookup(&unk_100103818, 0, 2, &v29, &v16, 8, &v27, &v15))
      {
        goto LABEL_15;
      }
    }

    v27 = *(v6 + 5);
    if ((*(v6 + 50) & 0x18) == 0)
    {
LABEL_12:
      v28 |= 1u;
    }

    tree_insert(&unk_100103818, 0, &v29, 8, &v27, 9);
    goto LABEL_14;
  }

LABEL_15:
  v19 = 0;
  tree_key_count(&unk_100103818, 0, &v19);
  if (v19)
  {
    LODWORD(v21) = 16;
    v20 = 0xE000000000000007;
    tree_for_jobj = fsroot_iterate(v13, v14, 0, 1, &v20, 28, sub_10005A754);
  }

  else
  {
    tree_for_jobj = 0;
  }

LABEL_19:
  free(v5);
  free(v6);
  bitmap_store_destroy(&unk_1001037B0);
  tree_destroy(&unk_100103818, 0);
  return tree_for_jobj;
}

uint64_t sub_10005A660(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 + a1 <= a1)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  do
  {
    if (byte_1001037A8 == 1)
    {
      fsck_printf_warn("purgeable inode (id %llu) is missing a purgeable record\n", v5);
      fsck_fail_func(0x5D2, -2);
      v6 = inode_repair_clear_internal_flags(a3, v5, 0x80000);
      v7 = v6;
      if (v6)
      {
        v8 = strerror(v6);
        fsck_printf_err("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v5, v7, v8);
        fsck_fail_func(0x5D3, v7);
      }
    }

    else
    {
      v7 = sub_10005A11C(v5);
      if (v7)
      {
        return v7;
      }
    }

    ++v5;
    --v4;
  }

  while (v4);
  return v7;
}

uint64_t sub_10005A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v16 = 0;
  v18 = *(a1 + 20);
  v14 = 9;
  v15 = 8;
  v7 = tree_lookup(&unk_100103818, 0, 0, &v18, &v15, 8, &v16, &v14);
  if (v7 == 2)
  {
    return 0;
  }

  v8 = v7;
  if (v7)
  {
    v10 = *(a1 + 20);
    v11 = strerror(v7);
    fsck_printf_err("failed to search purgeable record (file id %llu) in the fsck_apfs tree: %d (%s)\n", v10, v8, v11);
    v12 = 1489;
    goto LABEL_11;
  }

  if (v17)
  {
    fsck_printf_warn("found an orphan purgeable record (atime %llu, file_id %llu)\n", *(a1 + 12), *(a1 + 20));
    fsck_fail_func(0x5CD, -2);
    v8 = sub_10005A8E4(a5, *(a1 + 20), *(a1 + 12));
    if (!v8)
    {
      return v8;
    }

    fsck_printf_err("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", *(a1 + 20), *(a1 + 12));
    v12 = 1486;
LABEL_11:
    fsck_fail_func(v12, v8);
    return v8;
  }

  v9 = *(a1 + 12);
  if (v16 != v9)
  {
    fsck_printf_warn("purgeable record (atime %llu, file_id %llu) is different than inode atime (%llu)\n", v9, *(a1 + 20), v16);
    fsck_fail_func(0x5CF, -2);
    v8 = sub_10005A8E4(a5, *(a1 + 20), *(a1 + 12));
    if (!v8)
    {
      return v8;
    }

    fsck_printf_err("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", *(a1 + 20), *(a1 + 12));
    v12 = 1488;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_10005A8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xE000000000000007;
  v5 = 16;
  v6 = a3;
  v7 = a2;
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, 0, 0, 0, &v4, 0x1Cu, 0, 0);
  }

  return print_snapshot_warning();
}

uint64_t fsck_userfs_get_keybag(uint64_t a1, int a2, int a3, unsigned __int8 *src)
{
  *dst = 0u;
  memset(v13, 0, sizeof(v13));
  v11[2] = 0;
  v11[0] = dst;
  uuid_copy(dst, src);
  uuid_copy(v13, src);
  v11[1] = 32;
  *v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = sub_10005AA60(v8, v11);
  if (!v6)
  {
    v6 = fsck_dev_raw_read(a1);
    free(v9[1]);
  }

  return v6;
}

uint64_t sub_10005AA60(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = malloc_type_calloc(1uLL, v4 + 20, 0x1000040A86A77D5uLL);
  v6 = v5;
  if (v5)
  {
    v5[4] = v4;
    v5[5] = v4;
    memcpy(v5 + 10, v3, v4);
    result = 0;
    *(v6 + 1) |= 0x10u;
  }

  else
  {
    result = 12;
  }

  *(a1 + 72) = v6;
  return result;
}

uint64_t fsck_meta_crypto_state_unwrap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *__s1 = 0u;
  v34 = 0u;
  v6 = AKS_FV_service();
  memset(v32, 0, sizeof(v32));
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  if (!*(state + 72))
  {
    v10 = 22;
    v12 = strerror(22);
    fsck_printf_err("Failed to get password for encrypted volume from provided file descriptor: %s\n", v12);
    return v10;
  }

  v7 = v6;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  __strlcpy_chk();
  v31[0] = __s1;
  v31[1] = strnlen(__s1, 0x80uLL);
  v8 = sub_10005ADB8(a1, *(a1[1] + 1296), *(a1[1] + 1304), (a1[1] + 72), &v22);
  v9 = v22;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v14 = sub_10005AEA8(v22 + 32, (*(a2 + 40) + 240), 2, 0);
    if (v14)
    {
      v15 = *(v14 + 18);
      v29 = v14 + 24;
      v30 = v15;
      v16 = sub_10005AEA8(v9 + 32, (*(a2 + 40) + 240), 3, 0);
      if (v16)
      {
        v17 = sub_10005ADB8(a1, *(v16 + 24), *(v16 + 32), (*(a2 + 40) + 240), &v23);
        if (v17)
        {
          v10 = v17;
          v11 = v23;
        }

        else
        {
          v24 = malloc_type_calloc(1uLL, 0x40uLL, 0xDCEA155CuLL);
          v11 = v23;
          if (v24)
          {
            v18 = 0;
            v25 = 64;
            LODWORD(v26) = 0;
            while (1)
            {
              v19 = sub_10005AEA8(v11 + 32, byte_1000B3150, 3, v18);
              if (!v19)
              {
                break;
              }

              v18 = v19;
              v20 = *(v19 + 18);
              v27 = v19 + 24;
              v28 = v20;
              if (!(*(v7 + 8))(v32, v31, &v27, &v29, &v24))
              {
                v10 = sub_10005AA60(a3, &v24);
                goto LABEL_5;
              }
            }

            v10 = 1;
            v21 = strerror(1);
            fsck_printf_err("Failed to unwrap encrypted volume keybag using the provided password: %s\n", v21);
          }

          else
          {
            v10 = 12;
          }
        }
      }

      else
      {
        fsck_printf_err("Failed to get keybag entry with tag %d for volume %s\n", 3, (*(a2 + 40) + 704));
        v11 = 0;
        v10 = 2;
      }

      goto LABEL_5;
    }

    v10 = 2;
    fsck_printf_err("Failed to get keybag entry with tag %d for volume %s\n", 2, (*(a2 + 40) + 704));
  }

  v11 = 0;
LABEL_5:
  free(v9);
  free(v11);
  free(v24);
  return v10;
}

uint64_t sub_10005ADB8(uint64_t *a1, size_t a2, size_t count, unsigned __int8 *a4, void *a5)
{
  if (count >> 20 || (v5 = count, v6 = a2, a2 = *(a1[1] + 36), count * a2 >= 0x100000))
  {
    fsck_printf_err("Keybag size is too large\n", a2);
    return 92;
  }

  else
  {
    v10 = malloc_type_calloc(count, a2, 0xE829BD6FuLL);
    if (v10)
    {
      v11 = v10;
      keybag = fsck_userfs_get_keybag(*a1, v6, v5, a4);
      v13 = keybag;
      if (keybag)
      {
        v14 = strerror(keybag);
        fsck_printf_err("Failed to get keybag : %s\n", v14);
        free(v11);
      }

      else
      {
        *a5 = v11;
      }
    }

    else
    {
      fsck_printf_err("Failed to allocate memory for keybag\n");
      return 12;
    }
  }

  return v13;
}

unint64_t sub_10005AEA8(uint64_t a1, unsigned __int8 *uu, int a3, uint64_t a4)
{
  v6 = a1 + *(a1 + 4);
  if (a4)
  {
    v7 = *(a4 + 18);
    v8 = v7 + 24;
    v9 = v7 - ((v7 + 24) & 0xF) + 40;
    if ((v8 & 0xF) == 0)
    {
      v9 = v8;
    }

    v10 = a4 + v9;
  }

  else
  {
    v10 = a1 + 16;
  }

  while (v10 < v6)
  {
    if (*(v10 + 16) == a3 && (uuid_is_null(uu) || !uuid_compare(uu, v10)))
    {
      return v10;
    }

    v11 = *(v10 + 18);
    v12 = v11 + 24;
    v13 = v11 - ((v11 + 24) & 0xF) + 40;
    if ((v12 & 0xF) == 0)
    {
      v13 = v12;
    }

    v10 += v13;
  }

  return 0;
}

void bitmap_store_init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!tree_init_ext(a1, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 128, 0, 0, uint64_key_compare))
  {
    tree_create(a1, 0, 64);
  }

  v6 = *(a1 + 24);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3 / v6;
  }

  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 96) = 1024;
  v9 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
  *(a1 + 88) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 96);
    v12 = v11 - 1;
    if ((v11 - 1) > 7)
    {
      v14 = v12 >> 3;
      *v9 = 0;
      if (v12 >> 3 >= 2)
      {
        bzero(v9 + 1, (v14 - 1));
      }

      v13 = 510 << (v12 & 7);
      v10 += v14;
    }

    else
    {
      v13 = 255 << v11;
    }

    *v10 &= v13;
  }
}

void bitmap_store_destroy(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  if (*(a1 + 56))
  {

    tree_destroy(a1, 0);
  }
}

uint64_t get_bitmap_for_range(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a2 & 0x3F) != 0)
  {
    sub_10005BD00();
  }

  v4 = a3;
  if ((a3 & 0x3F) != 0)
  {
    sub_10005BD2C();
  }

  if (!a4)
  {
    sub_10005BD58();
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  memset(v11, 0, sizeof(v11));
  while (1)
  {
    result = sub_10005B210(a1, v6, v11);
    if (result)
    {
      break;
    }

    if (v4 >= 1024 - (v6 & 0x3FF))
    {
      v10 = 1024 - (v6 & 0x3FF);
    }

    else
    {
      v10 = v4;
    }

    memcpy((a4 + 8 * v8), v11 + ((v6 >> 3) & 0x78), v10 >> 3);
    v6 += v10;
    v8 += v10 >> 6;
    v4 -= v10;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B210(uint64_t a1, unint64_t a2, int8x16_t *a3)
{
  v6 = a2 >> 10;
  v17 = a2 >> 10;
  v15 = 128;
  v16 = 8;
  v7 = tree_lookup(a1, 0, 0, &v17, &v16, 8, a3, &v15);
  v8 = v7;
  if ((v7 & 0xFFFFFFFD) != 0)
  {
    v9 = v17;
    v10 = strerror(v7);
    fsck_printf_err("failed to find node at segment (%llu) : error %s\n", v9, v10);
    fsck_fail_func(0x363, v8);
  }

  if (v8 == 2)
  {
    v11 = *(a1 + 88);
    if (v11 && *(a1 + 96) > v6 && ((*(v11 + (a2 >> 13)) >> ((a2 >> 10) & 7)) & 1) != 0)
    {
      v12 = 255;
    }

    else
    {
      v12 = 0;
    }

    v8 = 0;
    v13 = vdupq_n_s8(v12);
    a3[6] = v13;
    a3[7] = v13;
    a3[4] = v13;
    a3[5] = v13;
    a3[2] = v13;
    a3[3] = v13;
    *a3 = v13;
    a3[1] = v13;
  }

  return v8;
}

uint64_t range_ffs(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (sub_10005B210(a1, a2, &v12))
  {
    sub_10005BD84();
  }

  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      if (sub_10005B210(a1, v6, &v12))
      {
        sub_10005BDB0();
      }

      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> -((v6 & 0x3F) + v9)) & (-1 << v6) & v12.i64[i];
    if (v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t range_ffc(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (sub_10005B210(a1, a2, &v13))
  {
    sub_10005BDDC();
  }

  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      if (sub_10005B210(a1, v6, &v13))
      {
        sub_10005BE08();
      }

      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v9)) & (-1 << v6);
    v11 = v13.i64[i] & v10;
    if (v11 != v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v11 ^ v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t mark_range(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = sub_10005B210(a1, a2, &v17);
  if (!result)
  {
    if (a3)
    {
      v9 = (v6 >> 6) & 0xF;
      v10 = v6;
      while (1)
      {
        if (v9 >= 0x10)
        {
          result = sub_10005B6E0(a1, v10, &v17);
          if (result)
          {
            return result;
          }

          result = sub_10005B210(a1, v6, &v17);
          if (result)
          {
            return result;
          }

          v9 = (v6 >> 6) & 0xF;
          v10 = v6;
        }

        v11 = 64 - (v6 & 0x3F);
        if (a3 < v11)
        {
          v11 = a3;
        }

        v12 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v11)) & (-1 << v6);
        v13 = v17.i64[v9];
        v14 = a4 ? 0 : (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v11)) & (-1 << v6);
        if ((v13 & v12) != v14)
        {
          break;
        }

        v15 = v13 & ~v12;
        v16 = v13 | v12;
        if (!a4)
        {
          v16 = v15;
        }

        v17.i64[v9] = v16;
        v6 += v11;
        ++v9;
        a3 -= v11;
        if (!a3)
        {
          return sub_10005B6E0(a1, v10, &v17);
        }
      }

      return 17;
    }

    else
    {
      v10 = v6;
      return sub_10005B6E0(a1, v10, &v17);
    }
  }

  return result;
}

uint64_t sub_10005B6E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (v4 <= a2)
  {
    fsck_printf_warn("bitmap store: address %llu is beyond maximum allowed %llu\n", a2, v4);
    return 34;
  }

  v6 = a1;
  v18 = 0;
  tree_node_count(a1, 0, &v18);
  if (v18 >= *(v6 + 72))
  {
    if ((*(v6 + 80) & 1) == 0)
    {
      fsck_printf_warn("bitmap store: reached limit of %llu B-tree nodes\n", *(v6 + 72));
    }

    *(v6 + 80) = 1;
    return 12;
  }

  else
  {
    if (bitmap_range_is_set(a3, 0, 1024) && (v7 = *(v6 + 88)) != 0 && !sub_10005BBC4(v6, a2 >> 10))
    {
      v11 = *(v6 + 88);
      v12 = a2 >> 13;
      v13 = *(v11 + (a2 >> 13)) | (1 << ((a2 >> 10) & 7));
    }

    else
    {
      if (!bitmap_range_is_clear(a3, 0, 1024, v7) || !*(v6 + 88) || sub_10005BBC4(v6, a2 >> 10))
      {
        v18 = a2 >> 10;
        v8 = tree_insert(v6, 0, &v18, 8u, a3, 0x80u);
        v6 = v8;
        if (v8)
        {
          v9 = v18;
          v10 = strerror(v8);
          fsck_printf_err("failed to insert node at segment (%llu) error : %s\n", v9, v10);
          fsck_fail_func(0x1C9, v6);
        }

        return v6;
      }

      v11 = *(v6 + 88);
      v12 = a2 >> 13;
      v13 = *(v11 + (a2 >> 13)) & ~(1 << ((a2 >> 10) & 7));
    }

    *(v11 + v12) = v13;
    v18 = a2 >> 10;
    v14 = tree_remove(v6, 0, &v18, 8);
    LODWORD(v6) = v14;
    if ((v14 & 0xFFFFFFFD) != 0)
    {
      v15 = v18;
      v16 = strerror(v14);
      fsck_printf_err("failed to remove node at segment (%llu) error : %s\n", v15, v16);
      fsck_fail_func(0x1CA, v6);
    }

    if (v6 == 2)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t check_range(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = sub_10005B210(a1, a2, &v13);
  if (!result)
  {
    v9 = (v6 >> 6) & 0xF;
    while (a3)
    {
      if (v9 >= 0x10)
      {
        result = sub_10005B210(a1, v6, &v13);
        if (result)
        {
          return result;
        }

        v9 = (v6 >> 6) & 0xF;
      }

      v10 = 64 - (v6 & 0x3F);
      if (a3 < v10)
      {
        v10 = a3;
      }

      v11 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v10)) & (-1 << v6);
      v12 = v13.i64[v9] & v11;
      if (!a4)
      {
        v11 = 0;
      }

      a3 -= v10;
      v6 += v10;
      ++v9;
      if (v12 != v11)
      {
        return 17;
      }
    }

    return 0;
  }

  return result;
}

uint64_t bitmap_store_iterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v27[0] = 0;
  memset(v26, 0, sizeof(v26));
  if (*(a1 + 88) && (v6 = *(a1 + 96), v6 >= 8))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a1 + 88);
      v11 = *(v10 + v9);
      if (*(v10 + v9))
      {
        break;
      }

LABEL_13:
      ++v9;
      v8 += 0x2000;
      if (v9 >= v6 >> 3)
      {
        goto LABEL_3;
      }
    }

    v12 = 0;
    v13 = v8;
    while (1)
    {
      if ((v11 >> v12))
      {
        result = a2(v13, 1024, a3);
        if (result)
        {
          break;
        }
      }

      ++v12;
      v13 += 1024;
      if (v12 == 8)
      {
        v6 = *(a1 + 96);
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_3:
    v24 = 128;
    v25 = 8;
    if (tree_lookup_min(a1, 0, v27, &v25, v26, &v24))
    {
      return 0;
    }

    else
    {
      do
      {
        v14 = 0;
        v15 = v27[0] << 10;
        do
        {
          v16 = *(v26 + v14);
          if (v16)
          {
            v17 = 0;
            v18 = 1;
            do
            {
              if ((v18 & v16) != 0)
              {
                v19 = 0;
                do
                {
                  v20 = (v16 & (2 * v18)) == 0;
                  v18 *= 2;
                  ++v19;
                }

                while (!v20 && v19 + v17 < 0x40);
                result = a2(v17 | (v15 + (v14 << 6)), v19, a3);
                if (result)
                {
                  return result;
                }

                LODWORD(v17) = v17 + v19;
              }

              v18 *= 2;
              v17 = v17 + 1;
            }

            while (v17 < 0x40);
          }

          ++v14;
        }

        while (v14 != 16);
        v22 = 128;
        v23 = 8;
        v21 = tree_lookup(a1, 0, 2, v27, &v23, 8, v26, &v22);
        result = 0;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t sub_10005BBC4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = 1 << -__clz(a2);
  v7 = malloc_type_realloc(v5, (v6 + 7) >> 3, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = v6 - 1;
    v10 = v2 >> 3;
    v11 = 0xFFu >> (8 - (v2 & 7));
    if (v2 >> 3 == (v6 - 1) >> 3)
    {
      v12 = v11 | (510 << (v9 & 7));
      v13 = v2 >> 3;
    }

    else
    {
      v13 = v9 >> 3;
      v14 = &v7[v10];
      *v14 &= v11;
      if (v10 + 1 < v9 >> 3)
      {
        bzero(v14 + 1, (v13 - v10 - 2) + 1);
      }

      v12 = 510 << (v9 & 7);
    }

    v3 = 0;
    v8[v13] &= v12;
    *(a1 + 88) = v8;
    *(a1 + 96) = v6;
  }

  else
  {
    free(v5);
    fsck_printf_err("failed to allocate memory for bitmap store\n");
    v3 = 12;
    fsck_fail_func(0x3B2, 12);
  }

  return v3;
}

unint64_t memory_storage_limit(unsigned int a1, unint64_t a2, unint64_t a3)
{
  v8 = 8;
  v9 = 0;
  if (sysctlbyname("hw.memsize", &v9, &v8, 0, 0) == -1)
  {
    v6 = 0x4000000;
  }

  else
  {
    v6 = v9 / a1;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

uint64_t memory_storage_register_tree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100103860;
  if (dword_100103858)
  {
    v7 = dword_100103858;
    do
    {
      if (*v6 == a1)
      {
        return 0;
      }

      v6 += 3;
      --v7;
    }

    while (v7);
    v8 = qword_100103860;
    if ((dword_100103858 & (dword_100103858 - 1)) != 0)
    {
      goto LABEL_10;
    }

    v8 = malloc_type_realloc(qword_100103860, 24 * (2 * dword_100103858), 0xF0040613C4080uLL);
    if (v8)
    {
      qword_100103860 = v8;
      goto LABEL_10;
    }

    return 12;
  }

  if (qword_100103860)
  {
    sub_10005C450();
  }

  v8 = malloc_type_malloc(0x18uLL, 0xF0040613C4080uLL);
  qword_100103860 = v8;
  if (!v8)
  {
    return 12;
  }

LABEL_10:
  v9 = 0;
  v10 = dword_100103858;
  v11 = &v8[24 * dword_100103858];
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *v11 = a1;
  dword_100103858 = v10 + 1;
  return v9;
}

uint64_t memory_storage_limit_reached(uint64_t a1)
{
  v1 = qword_100103870;
  if (!qword_100103870)
  {
    return 0;
  }

  v2 = qword_100103878;
  if (qword_100103878 >= qword_100103868)
  {
    qword_100103868 = qword_100103878 + 52428800;
    sub_10005C0F4();
    v2 = qword_100103878;
    v1 = qword_100103870;
  }

  if (v2 < v1)
  {
    return 0;
  }

  if (v2 >= qword_100103868)
  {
    qword_100103868 = v2 + 52428800;
    sub_10005C0F4();
  }

  result = 1;
  if (qword_100103860 && dword_100103858)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = qword_100103860 + v4;
      v10 = 0;
      tree_node_count(*(qword_100103860 + v4), 0, &v10);
      if (v10 > v6)
      {
        v7 = v8;
        v6 = v10;
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < dword_100103858);
    if (v7)
    {
      v9 = fsck_printf_debug("Disabling fsck cross checks of %s tree\n", *(v7 + 8));
      (*(v7 + 16))(v9);
      qword_100103868 = 0;
    }

    return 1;
  }

  return result;
}

char *sub_10005C0F4()
{
  result = fsck_printf_debug("Allocated (%llu) MB for cached btrees in %u blocks, limit is (%llu) MB\n", qword_100103878 >> 20, dword_100103880, qword_100103870 >> 20);
  if (dword_100103858)
  {
    result = fsck_printf_debug("Node counts:");
    if (dword_100103858)
    {
      v1 = 0;
      v2 = 0;
      do
      {
        v5 = 0;
        v3 = *(qword_100103860 + v1 + 8);
        tree_node_count(*(qword_100103860 + v1), 0, &v5);
        if (v2 >= (dword_100103858 - 1))
        {
          v4 = "\n";
        }

        else
        {
          v4 = ",";
        }

        result = fsck_printf_debug(" %s tree (%llu)%s", v3, v5, v4);
        ++v2;
        v1 += 24;
      }

      while (v2 < dword_100103858);
    }
  }

  return result;
}

uint64_t memory_storage_create(size_t size, void *a2, void *a3)
{
  v5 = size;
  if (!qword_100103870)
  {
    qword_100103870 = memory_storage_limit(0x10u, 0x80000000uLL, 0);
  }

  if (dword_100103880)
  {
    if ((dword_100103880 & (dword_100103880 - 1)) != 0)
    {
      goto LABEL_8;
    }

    v6 = malloc_type_realloc(qword_100103888, 8 * (2 * dword_100103880), 0x10040436913F5uLL);
    if (v6)
    {
      qword_100103888 = v6;
      goto LABEL_8;
    }

    return 12;
  }

  qword_100103888 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
  if (!qword_100103888)
  {
    return 12;
  }

LABEL_8:
  *a2 = ++dword_100103880;
  v7 = malloc_type_calloc(1uLL, v5, 0xE56A0005uLL);
  *(qword_100103888 + 8 * *a2 - 8) = v7;
  if (__CFADD__(qword_100103878, v5))
  {
    sub_10005C47C();
  }

  v8 = v7;
  qword_100103878 += v5;
  if (!v7)
  {
    return 12;
  }

  result = 0;
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t memory_storage_destroy(unsigned int a1, uint64_t a2)
{
  result = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = qword_100103888 + 8 * a2;
    free(*(v4 - 8));
    if (qword_100103878 < a1)
    {
      sub_10005C4A8();
    }

    result = 0;
    qword_100103878 -= a1;
    *(v4 - 8) = 0;
  }

  return result;
}

uint64_t memory_storage_read(uint64_t a1, uint64_t a2, void *a3)
{
  result = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = *(qword_100103888 + 8 * a2 - 8);
    if (v4)
    {
      result = 0;
      *a3 = v4;
    }
  }

  return result;
}

uint64_t memory_storage_write(size_t __n, uint64_t a2, void *__src)
{
  v3 = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = *(qword_100103888 + 8 * a2 - 8);
    if (v4)
    {
      if (v4 != __src)
      {
        memcpy(v4, __src, __n);
      }

      return 0;
    }

    else
    {
      return 14;
    }
  }

  return v3;
}

uint64_t apfs_crypto_io_enable(char *__s, uint64_t a2, __int128 *a3, io_connect_t *a4, uint64_t a5)
{
  outputStructCnt = 100;
  result = 22;
  if (__s && a4)
  {
    v11 = apfs_container_iouc(__s, 0, a4, 0, 0);
    if (v11)
    {

      return rc_to_errno(v11);
    }

    else
    {
      bzero(v20 + 8, 0x950uLL);
      v12 = a3[1];
      outputStruct = *a3;
      v19 = v12;
      *&v20[0] = a2;
      v13 = IOConnectCallStructMethod(*a4, 0x32u, &outputStruct, 0x28uLL, &outputStruct, &outputStructCnt);
      if (v13)
      {
        IOServiceClose(*a4);
      }

      if (a5)
      {
        v14 = v20[3];
        *(a5 + 64) = v20[2];
        *(a5 + 80) = v14;
        *(a5 + 96) = v21;
        v15 = v19;
        *a5 = outputStruct;
        *(a5 + 16) = v15;
        v16 = v20[1];
        *(a5 + 32) = v20[0];
        *(a5 + 48) = v16;
      }

      if (v13)
      {
        return rc_to_errno(v13);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t apfs_crypto_io_disable(io_connect_t *a1)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!v2)
  {
    return 22;
  }

  v3 = IOConnectCallStructMethod(v2, 0x33u, 0, 0, 0, &outputStructCnt);
  if (v3)
  {
    return rc_to_errno(v3);
  }

  IOServiceClose(*a1);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t apfs_crypto_io_getset_locker_data(char *a1, unsigned __int8 *uu, __int128 *a3, char a4, uint64_t a5)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a5 && !is_null)
  {
    v21 = 0;
    bzero(dst, 0x978uLL);
    v12 = apfs_container_iouc(a1, 0, &v21, 0, 0);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      uuid_copy(dst, uu);
      v14 = a3[1];
      v16 = *a3;
      v17 = v14;
      v19 = a5;
      v18 = a4;
      v13 = IOConnectCallStructMethod(v21, 0x3Bu, dst, 0x40uLL, 0, &outputStructCnt);
      IOServiceClose(v21);
      if (!v13)
      {
        return 0;
      }
    }

    return rc_to_errno(v13);
  }

  return result;
}

double fsck_apfs_state_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 24) = -1;
  *(a1 + 16) = -1;
  *&result = 0x100000001;
  *(a1 + 32) = 0x100000001;
  return result;
}

uint64_t fsck_apfs_init(int a1, uint64_t *a2)
{
  fsck_fail_init();
  srandomdev();
  crc32c_init();
  if (a1)
  {
    setup_logging();
  }

  cdevname = *a2;
  a2[1] = strdup(cdevname);
  return 0;
}

uint64_t fsck_progress_init_for_container(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (result)
    {
      v7 = (result + 48 + 48 * v3);
      v8 = *v7;
      v9 = v7[3];
      if (v8 > v9)
      {
        v4 = v8 + v4 - v9;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  byte_100103890 = 0;
  qword_1001038A0 = v4;
  if (*(state + 54))
  {
    v10 = sub_10005CA38;
  }

  else
  {
    v10 = nullsub_1;
  }

  if (*(state + 54))
  {
    v11 = j__FSKitCheckUpdate;
  }

  else
  {
    v11 = sub_10005CACC;
  }

  v12 = nullsub_2;
  if (*(state + 54))
  {
    v12 = j__FSKitCheckDone;
  }

  qword_1001038C0 = v10;
  off_1001038B0 = v11;
  off_1001038B8 = v12;
  if (a2)
  {
    return v10(a2, a3);
  }

  return result;
}

uint64_t fsck_progress_init_for_volume(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 88);
  }

  else
  {
    v2 = 0;
  }

  byte_100103890 = 1;
  qword_1001038A0 = v2;
  if (*(state + 54))
  {
    v3 = sub_10005CA38;
  }

  else
  {
    v3 = nullsub_1;
  }

  if (*(state + 54))
  {
    v4 = j__FSKitCheckUpdate;
  }

  else
  {
    v4 = sub_10005CACC;
  }

  v5 = nullsub_2;
  if (*(state + 54))
  {
    v5 = j__FSKitCheckDone;
  }

  qword_1001038C0 = v3;
  off_1001038B0 = v4;
  off_1001038B8 = v5;
  if (a2)
  {
    return v3(a2, 1);
  }

  return result;
}

uint64_t fsck_progress_update(uint64_t result, int a2)
{
  if (byte_100103890 != 1 || a2 != 0)
  {
    v3 = qword_100103898 + result;
    qword_100103898 += result;
    if (qword_1001038A0)
    {
      v4 = 100 * v3 / qword_1001038A0;
      if (dword_1001038A8 < v4 && v4 <= 100)
      {
        result = off_1001038B0(v4);
        dword_1001038A8 = v4;
      }
    }
  }

  return result;
}

uint64_t sub_10005CA38(uint64_t *a1, uint64_t a2)
{
  v4 = *(state + 24);
  v5 = device_basename(*state);
  if (v4 == -1)
  {

    return _FSKitCheckContainerStart(v5, a1, a2);
  }

  else
  {
    v6 = *a1;

    return _FSKitCheckStart(v5, v6);
  }
}

time_t fsck_fail_init()
{
  result = time(0);
  qword_1001038C8 = result;
  qword_1001038D0 = &byte_1000B36A6;
  dword_1001038D8 = 1;
  dword_1001038DC = -1;
  dword_1001038E0 = 0;
  dword_1001038E4 = 1;
  return result;
}

BOOL fsck_fail_add_iteration()
{
  v0 = dword_1001038E4;
  if (dword_1001038E4 <= 4)
  {
    ++dword_1001038E4;
  }

  return v0 < 5;
}

char *fsck_fail_func(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = -1;
  }

  if ((v3 + 11) >= 0xA)
  {
    v8 = dword_1001039EC;
    v9 = dword_1001039EC;
    v10 = dword_1001038DC;
    if (dword_1001039EC < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = 0;
      while (dword_1001039F0[v11] != dword_1001038DC)
      {
        if (dword_1001039EC == ++v11)
        {
          LODWORD(v11) = dword_1001039EC;
          goto LABEL_15;
        }
      }

      ++dword_100103A04[v11];
    }

LABEL_15:
    if (v11 == v9 && v8 <= 4 && v10 >= 1)
    {
      dword_1001039F0[v9] = v10;
      dword_100103A04[v9] = 1;
      dword_1001039EC = v9 + 1;
    }

    free(qword_1001038E8);
    result = strdup(qword_1001038D0);
    qword_1001038E8 = result;
    dword_100103A18 = dword_1001038D8;
    dword_1001038DC = v2;
    dword_1001038E0 = v3;
    v7 = &dword_1001038F8;
    v4 = dword_1001038F8;
    goto LABEL_20;
  }

  v4 = dword_1001038F4;
  if (dword_1001038F4 <= 20)
  {
    v5 = (-2 - v3);
    v6 = dword_1001038FC[v5];
    if (v6 <= 4)
    {
      dword_100103924[5 * v5 + v6] = result;
      dword_1001038FC[v5] = v6 + 1;
      v7 = &dword_1001038F4;
LABEL_20:
      *v7 = v4 + 1;
    }
  }

  return result;
}

uint64_t fsck_nx_keybags(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *(v2 + 1400);
  if (v3)
  {
    result = sub_10005CE30(a1, 1835754873, *(v2 + 1392), v3, (v2 + 72));
    if (result)
    {
      return result;
    }

    v2 = a1[1];
  }

  v5 = *(v2 + 1304);
  if (v5 && (*(state + 47) & 1) == 0)
  {
    result = sub_10005CE30(a1, 1801812339, *(v2 + 1296), v5, (v2 + 72));
    if (result)
    {
      return result;
    }

    v2 = a1[1];
  }

  mark_object_allocated(a1, *(v2 + 1392), *(v2 + 1400), 0, 0x40000000, *(v2 + 1392), 0, 0, 1u, 1u);
  mark_object_allocated(a1, *(a1[1] + 1296), *(a1[1] + 1304), 0, 0x40000000, *(a1[1] + 1296), 0, 0, 1u, 1u);
  return 0;
}

uint64_t sub_10005CE30(uint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, unsigned __int8 *a5)
{
  v5 = a5;
  v8 = a2;
  v135 = 0;
  v134 = 0;
  v10 = sub_10005E25C(a1, a2, a3, a4, a5, &v135);
  if (v10)
  {
    return v10;
  }

  v13 = v135;
  if (v8 == 1869900147)
  {
    v14 = 14;
  }

  else
  {
    v14 = 12;
  }

  v15 = fsck_obj_phys(v135, v14, *(a1[1] + 16), v8, 0, *(a1[1] + 36) * a4, v11, v12);
  if (v15)
  {
    v10 = v15;
    if (v8 > 1869900146)
    {
      if (v8 == 1869900147)
      {
        v16 = "OTI keybag";
        goto LABEL_184;
      }

      if (v8 == 1919247219)
      {
        fsck_printf_warn("%s (%llu+%llu): block range isn't a valid keybag, skipping checks\n", "volume keybag", a3, a4);
        goto LABEL_191;
      }
    }

    else
    {
      if (v8 == 1801812339)
      {
        v16 = "container keybag";
        goto LABEL_184;
      }

      if (v8 == 1835754873)
      {
        v16 = "media keybag";
LABEL_184:
        fsck_printf_err("%s (%llu+%llu): block range isn't a valid keybag, aborting\n", v16, a3, a4);
        goto LABEL_217;
      }
    }

    v16 = "unknown keybag";
    if (v8 == 1651273570)
    {
      v16 = "OTI blob";
    }

    goto LABEL_184;
  }

  v17 = (v13 + 32);
  v124 = *(a1[1] + 36) * a4;
  v131 = v13;
  v18 = (v13 + 32);
  if (v8 != 1869900147)
  {
    v19 = sub_10005E72C(a1, v18, v8, a3, a4, 2, 0x18uLL);
    if (v19)
    {
      goto LABEL_193;
    }

    v114 = v5;
    v67 = *(v13 + 9);
    if (v67 < 0x11)
    {
      v121 = 0;
      v123 = 16;
LABEL_188:
      v10 = sub_10005EBA0(v17, v8, a3, a4, v121, v123, &v134);
      goto LABEL_189;
    }

    v68 = 0;
    v69 = &v13[v67 + 32];
    v70 = (v13 + 48);
    if (v8 == 1651273570)
    {
      v71 = "OTI blob";
    }

    else
    {
      v71 = "unknown keybag";
    }

    v121 = 0;
    v123 = 16;
    v72 = v124;
    v115 = v71;
    v117 = v13 + 32;
    while (1)
    {
      v126 = v69;
      v73 = *(v70 + 18);
      v74 = v73 + 24;
      if (((v73 + 24) & 0xF) != 0)
      {
        v74 = v73 - ((v73 + 24) & 0xF) + 40;
      }

      v133 = v74;
      v130 = v69 - v70;
      v118 = v74 - (v69 - v70);
      if (v74 > v69 - v70)
      {
        if (v8 > 1869900146)
        {
          v75 = v71;
          if (v8 == 1919247219)
          {
            v75 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v75 = "container keybag";
        }

        else
        {
          v75 = "media keybag";
          if (v8 != 1835754873)
          {
            v75 = v71;
          }
        }

        fsck_printf_err("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v75, a3, a4, v68, v74, v130, *(v13 + 9));
        fsck_fail_func(0x4EE, -11);
        LODWORD(v73) = *(v70 + 18);
      }

      if (v73 >= 0x201)
      {
        if (v8 > 1869900146)
        {
          if (v8 == 1919247219)
          {
            v71 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v71 = "container keybag";
        }

        else if (v8 == 1835754873)
        {
          v71 = "media keybag";
        }

        fsck_printf_err("%s (%llu+%llu): entry %u has size %u > maximum size %u\n", v71, a3, a4, v68, v133, 512);
        v10 = 92;
        v111 = 1066;
        goto LABEL_216;
      }

      if (v123 + v133 > v72)
      {
        if (v8 > 1869900146)
        {
          if (v8 == 1919247219)
          {
            v71 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v71 = "container keybag";
        }

        else if (v8 == 1835754873)
        {
          v71 = "media keybag";
        }

        fsck_printf_err("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v71, a3, a4, v68, v133, v123 + v133, v72);
        v10 = 92;
        v111 = 1067;
        goto LABEL_216;
      }

      if (!uuid_is_null(v70))
      {
        goto LABEL_105;
      }

      if (v8 > 1869900146)
      {
        v82 = v71;
        if (v8 == 1919247219)
        {
          v82 = "volume keybag";
        }
      }

      else if (v8 == 1801812339)
      {
        v82 = "container keybag";
      }

      else
      {
        v82 = "media keybag";
        if (v8 != 1835754873)
        {
          v82 = v71;
        }
      }

      fsck_printf_warn("%s (%llu+%llu): UUID of entry %u is null\n", v82, a3, a4, v68);
      fsck_fail_func(0x42C, -2);
      if (fsckAskPrompt(fsck_apfs_ctx, "Remove entry with null UUID? ", v83, v84, v85, v86, v87, v88))
      {
        v128 = 1;
        v134 = 1;
      }

      else
      {
LABEL_105:
        v128 = 0;
      }

      if (v8 == 1835754873 && !uuid_is_null(v70) && uuid_compare(v70, (a1[1] + 72)))
      {
        memset(out, 0, sizeof(out));
        memset(v136, 0, 37);
        uuid_unparse(v70, out);
        uuid_unparse((a1[1] + 72), v136);
        fsck_printf_warn("%s (%llu+%llu): UUID %s of entry %u (tag %u) is not the container UUID %s\n", "media keybag", a3, a4, out, v68, *(v70 + 16), v136);
        fsck_fail_func(0x42D, -2);
      }

      if (!*(v70 + 16))
      {
        if (v8 > 1869900146)
        {
          v89 = v71;
          if (v8 == 1919247219)
          {
            v89 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v89 = "container keybag";
        }

        else
        {
          v89 = "media keybag";
          if (v8 != 1835754873)
          {
            v89 = v71;
          }
        }

        fsck_printf_warn("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v89, a3, a4, v68);
        fsck_fail_func(0x42E, -5);
      }

      if (*(v70 + 20) || *(v70 + 21) || *(v70 + 22) || *(v70 + 23))
      {
        if (v8 > 1869900146)
        {
          v90 = v71;
          if (v8 == 1919247219)
          {
            v90 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v90 = "container keybag";
        }

        else
        {
          v90 = "media keybag";
          if (v8 != 1835754873)
          {
            v90 = v71;
          }
        }

        fsck_printf_warn("%s (%llu+%llu): entry %u has invalid padding\n", v90, a3, a4, v68);
        fsck_fail_func(0x42F, -10);
      }

      if (v8 == 1801812339)
      {
        v91 = *(v70 + 16);
        if (v91 == 16 || v91 == 3)
        {
          v92 = v17;
          if (v91 == 16)
          {
            v93 = "OTI";
          }

          else
          {
            v93 = "unlock";
          }

          if (v91 == 16)
          {
            v94 = 1869900147;
          }

          else
          {
            v94 = 1919247219;
          }

          v95 = *(v70 + 18);
          if (v95 != 16)
          {
            fsck_printf_err("%s (%llu+%llu): %s records entry %u does not contain a range (size %u)\n", "container keybag", a3, a4, v93, v68, v95);
            v10 = 92;
            v111 = 1072;
LABEL_216:
            fsck_fail_func(v111, 92);
            goto LABEL_217;
          }

          v96 = *(v70 + 24);
          v97 = *(v70 + 32);
          v98 = *(a1[1] + 40);
          if (v98 - v97 < v96 || v98 <= v97 || v96 < 1 || v98 <= v96)
          {
            fsck_printf_err("%s (%llu+%llu): %s records entry %u contains invalid range %llu+%llu\n", "container keybag", a3, a4, v93, v68, *(v70 + 24), v97);
            fsck_fail_func(0x431, 92);
            if (v128)
            {
              v128 = 1;
LABEL_155:
              v17 = v92;
              goto LABEL_156;
            }

            v71 = v115;
            if (!fsckAskPrompt(fsck_apfs_ctx, "Remove entry with invalid range? ", v76, v77, v78, v79, v80, v81))
            {
              goto LABEL_210;
            }

            v17 = v92;
            v128 = 1;
            v134 = 1;
            v13 = v131;
          }

          else
          {
            v99 = sub_10005CE30(a1, v94, v96, v97, v70);
            if (!v99)
            {
              if (!v128)
              {
                sub_10005DFA8(a1, v94, *(v70 + 24), *(v70 + 32));
                v72 = v124;
                v17 = v92;
                v13 = v131;
                v71 = v115;
                if (v133 <= v130)
                {
                  goto LABEL_172;
                }

LABEL_163:
                if (!fsckAskPrompt(fsck_apfs_ctx, "Fix the keybag size? ", v76, v77, v78, v79, v80, v81))
                {
                  goto LABEL_172;
                }

                v100 = 0;
                goto LABEL_165;
              }

              v128 = 1;
              v72 = v124;
              goto LABEL_155;
            }

            v10 = v99;
            if (v99 != 92)
            {
              goto LABEL_189;
            }

            v17 = v92;
            fsck_printf_err("%s (%llu+%llu): %s records entry %u contains invalid keybag\n", "container keybag", a3, a4, v93, v68);
            fsck_fail_func(0x5D8, 92);
            if (v128)
            {
              v128 = 1;
              v72 = v124;
LABEL_156:
              v13 = v131;
              v71 = v115;
              goto LABEL_157;
            }

            v72 = v124;
            v13 = v131;
            v71 = v115;
            if (!fsckAskPrompt(fsck_apfs_ctx, "Remove entry with invalid keybag? ", v76, v77, v78, v79, v80, v81))
            {
LABEL_210:
              v10 = 92;
              goto LABEL_217;
            }

            v128 = 1;
            v134 = 1;
          }
        }
      }

LABEL_157:
      if (v133 <= v130)
      {
        if (!v128)
        {
          goto LABEL_172;
        }

        goto LABEL_168;
      }

      if ((v128 & 1) == 0)
      {
        goto LABEL_163;
      }

      v100 = 1;
LABEL_165:
      v101 = *(v13 + 9) + v118;
      *(v13 + 9) = v101;
      v102 = *(v13 + 17);
      if (v121 + 1 > v102)
      {
        *(v13 + 17) = v102 + 1;
      }

      v126 = v17 + v101;
      v134 = 1;
      if ((v100 & 1) == 0)
      {
LABEL_172:
        v108 = *(v70 + 18);
        v109 = v108 + 24;
        v110 = v108 - ((v108 + 24) & 0xF) + 40;
        if ((v109 & 0xF) == 0)
        {
          v110 = v109;
        }

        v70 += v110;
        ++v121;
        v123 += v133;
        v69 = v126;
        goto LABEL_175;
      }

LABEL_168:
      v103 = *(v70 + 18);
      v104 = v103 + 24;
      v105 = v103 - ((v103 + 24) & 0xF) + 40;
      if ((v104 & 0xF) != 0)
      {
        v106 = v105;
      }

      else
      {
        v106 = v104;
      }

      memmove(v70, (v70 + v106), v126 - (v70 + v106));
      memset_s((v126 - v106), v106, 0, v106);
      v107 = (*(v13 + 9) - v106);
      v71 = v115;
      v17 = v117;
      *(v13 + 9) = v107;
      --*(v13 + 17);
      v69 = &v117[v107];
LABEL_175:
      ++v68;
      if (v70 >= v69)
      {
        goto LABEL_188;
      }
    }
  }

  v19 = sub_10005E72C(a1, v18, 1869900147, a3, a4, 1, 0x28uLL);
  if (v19)
  {
    goto LABEL_193;
  }

  v20 = *(v13 + 9);
  if (v20 < 0x11)
  {
    v112 = 0;
    v24 = 16;
LABEL_186:
    v10 = sub_10005EBA0(v17, 1869900147, a3, a4, v112, v24, &v134);
    goto LABEL_190;
  }

  v114 = v5;
  v129 = 0;
  v21 = 0;
  v120 = 0;
  v22 = v17 + v20;
  v23 = v13 + 48;
  v24 = 16;
  v116 = v13 + 32;
  while (1)
  {
    v132 = v22 - v23;
    if ((v22 - v23) <= 0x27)
    {
      v25 = v22;
      fsck_printf_err("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", "OTI keybag", a3, a4, v21, 40, v132, *(v131 + 9));
      fsck_fail_func(0x5DB, -11);
      v22 = v25;
    }

    if (!*(v23 + 16))
    {
      fsck_printf_err("%s (%llu+%llu): entry %u has blob size == 0\n", "OTI keybag", a3, a4, v21);
      v10 = 92;
      v111 = 1500;
      goto LABEL_216;
    }

    if (*(v23 + 16) > 0x1000u)
    {
      fsck_printf_err("%s (%llu+%llu): entry %u has blob size %u > maximum blob size %u\n", "OTI keybag", a3, a4, v21, 40, 4096);
      v10 = 92;
      v111 = 1501;
      goto LABEL_216;
    }

    v26 = v24 + 40;
    if (v24 + 40 > v124)
    {
      fsck_printf_err("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", "OTI keybag", a3, a4, v21, 40, v24 + 40, v124);
      v10 = 92;
      v111 = 1502;
      goto LABEL_216;
    }

    v127 = v22;
    if (uuid_is_null(v23))
    {
      fsck_printf_warn("%s (%llu+%llu): UUID of entry %u is null\n", "OTI keybag", a3, a4, v21);
      fsck_fail_func(0x5DF, -2);
      v33 = fsckAskPrompt(fsck_apfs_ctx, "Remove entry with null UUID? ", v27, v28, v29, v30, v31, v32);
      v125 = v33 != 0;
      v34 = v129;
      if (v33)
      {
        v34 = 1;
      }

      v129 = v34;
    }

    else
    {
      v125 = 0;
    }

    if (!*(v23 + 17))
    {
      fsck_printf_warn("%s (%llu+%llu): entry %u has 'unknown' tag type\n", "OTI keybag", a3, a4, v21);
      fsck_fail_func(0x5E0, -5);
    }

    v122 = v24;
    if (v23[36] || v23[37] || v23[38] || v23[39])
    {
      fsck_printf_warn("%s (%llu+%llu): entry %u has invalid padding\n", "OTI keybag", a3, a4, v21);
      fsck_fail_func(0x5E1, -10);
    }

    v35 = *(v23 + 3);
    v36 = *(v23 + 16);
    v37 = a1[1];
    v38 = *(v37 + 36);
    v39 = v36 / v38;
    if (v36 % v38)
    {
      v40 = v39 + 1;
    }

    else
    {
      v40 = v39;
    }

    if (v35 < 1 || (v41 = *(v37 + 40), v41 <= v35) || (v41 > v40 ? (v42 = v41 - v40 >= v35) : (v42 = 0), !v42))
    {
      fsck_printf_err("%s (%llu+%llu): entry %u has invalid blob range %llu+%llu\n", "OTI keybag", a3, a4, v21, *(v23 + 3), v40);
      fsck_fail_func(0x5E2, 92);
      v17 = v116;
      v24 = v122;
      if (!v125)
      {
        v50 = fsck_apfs_ctx;
        v51 = "Remove entry with invalid blob range? ";
LABEL_54:
        if (!fsckAskPrompt(v50, v51, v44, v45, v46, v47, v48, v49))
        {
          goto LABEL_210;
        }

        v129 = 1;
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v119 = v26;
    v43 = v40 * v38;
    if (v40 * v38 < 0x10000)
    {
      break;
    }

    fsck_printf_err("%s (%llu+%llu): oti_ke_blob_len (%u) is too large\n", "OTI blob", v35, v40, v36);
    fsck_fail_func(0x5D9, 92);
    v17 = v116;
    v24 = v122;
    v26 = v119;
LABEL_52:
    fsck_printf_err("%s (%llu+%llu): entry %u has invalid blob\n", "OTI keybag", a3, a4, v21);
    fsck_fail_func(0x5E3, 92);
    if (!v125)
    {
      v50 = fsck_apfs_ctx;
      v51 = "Remove entry with invalid blob? ";
      goto LABEL_54;
    }

LABEL_56:
    if (v132 >= 0x28)
    {
      goto LABEL_62;
    }

    v56 = 1;
LABEL_58:
    v57 = *(v131 + 9) - v132 + 40;
    *(v131 + 9) = v57;
    v58 = *(v131 + 17);
    if (v120 + 1 > v58)
    {
      *(v131 + 17) = v58 + 1;
    }

    v22 = v17 + v57;
    if (!v56)
    {
      v129 = 1;
LABEL_64:
      ++v120;
      v23 += 40;
      v24 = v26;
      goto LABEL_65;
    }

    v127 = v22;
    v129 = 1;
LABEL_62:
    memmove(v23, v23 + 40, v127 - (v23 + 40));
    memset_s((v127 - 40), 0x28uLL, 0, 0x28uLL);
    v59 = (*(v131 + 9) - 40);
    *(v131 + 9) = v59;
    --*(v131 + 17);
    v22 = v17 + v59;
LABEL_65:
    ++v21;
    if (v23 >= v22)
    {
      v134 = v129;
      v5 = v114;
      v112 = v120;
      goto LABEL_186;
    }
  }

  *out = 0;
  v10 = sub_10005E25C(a1, 1651273570, v35, v40, v114, out);
  if (!v10)
  {
    v54 = v43;
    v55 = *out;
    if (fletcher64_verify_cksum(v23 + 2, *out, v54, 0, v52, v53))
    {
      fsck_printf_err("%s (%llu+%llu): oti_ke_blob_cksum (0x%llx) is invalid for blob\n", "OTI blob", v35, v40, *(v23 + 2));
      v10 = 92;
      fsck_fail_func(0x5DA, 92);
    }

    else
    {
      v10 = 0;
    }

    free(v55);
  }

  if (!v10)
  {
    v26 = v119;
    if (!v125)
    {
      mark_object_allocated(a1, v35, v40, 0, 0x40000000, v35, 0, 0, 0xDu, 1u);
      if (v132 > 0x27)
      {
        v17 = v116;
        v22 = v127;
        goto LABEL_64;
      }

      v66 = fsckAskPrompt(fsck_apfs_ctx, "Fix the keybag size? ", v60, v61, v62, v63, v64, v65);
      v17 = v116;
      v24 = v122;
      v22 = v127;
      if (!v66)
      {
        goto LABEL_64;
      }

      v56 = 0;
      goto LABEL_58;
    }

    v17 = v116;
    v24 = v122;
    goto LABEL_56;
  }

  v17 = v116;
  v24 = v122;
  v26 = v119;
  if (v10 == 92)
  {
    goto LABEL_52;
  }

  v134 = v129;
LABEL_189:
  v5 = v114;
LABEL_190:
  if (!v10)
  {
LABEL_191:
    if (v134 == 1)
    {
      v19 = sub_10005E58C(a1, v8, a3, a4, v5, v135, v52, v53);
LABEL_193:
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_217:
  free(v135);
  return v10;
}

uint64_t sub_10005DFA8(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a2 == 1869900147 || a2 == 1919247219)
  {
    v5 = 13;
  }

  else
  {
    v5 = 1;
  }

  return mark_object_allocated(a1, a3, a4, 0, 0x40000000, a3, 0, 0, v5, 1u);
}

uint64_t fsck_nx_keybag_orphans(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 1304);
  if (!v2 || (*(state + 47) & 1) != 0)
  {
    return 0;
  }

  v5 = *(v1 + 1296);
  v29 = 0;
  v3 = sub_10005E25C(a1, 1801812339, v5, v2, (v1 + 72), &v29);
  if (!v3)
  {
    v6 = v29;
    v7 = *(v29 + 36);
    if (v7 < 0x11)
    {
      goto LABEL_21;
    }

    v8 = 0;
    v9 = 0;
    v10 = v29 + v7 + 32;
    v11 = (v29 + 48);
    do
    {
      if (uuid_is_null(v11) || fsck_global_volume_get_by_uuid(a1, v11) || (memset(out, 0, 37), uuid_unparse(v11, out), fsck_printf_warn("%s (%llu+%llu): UUID %s of entry %u (tag %u) does not reference any volume\n", "container keybag", v5, v2, out, v8, v11[8]), fsck_fail_func(0x445, -2), !fsckAskPrompt(fsck_apfs_ctx, "Remove orphan entry? ", v17, v18, v19, v20, v21, v22)))
      {
        v14 = v11[9];
        v15 = v14 + 24;
        v16 = v14 - ((v14 + 24) & 0xF) + 40;
        if ((v15 & 0xF) == 0)
        {
          v16 = v15;
        }

        v11 = (v11 + v16);
      }

      else
      {
        v23 = v11[9];
        v24 = v23 + 24;
        v25 = v23 - ((v23 + 24) & 0xF) + 40;
        if ((v24 & 0xF) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        memmove(v11, v11 + v26, v10 - (v11 + v26));
        memset_s((v10 - v26), v26, 0, v26);
        v27 = (*(v6 + 36) - v26);
        *(v6 + 36) = v27;
        --*(v6 + 34);
        v10 = v6 + 32 + v27;
        v9 = 1;
      }

      ++v8;
    }

    while (v11 < v10);
    v6 = v29;
    if (v9)
    {
      v3 = sub_10005E58C(a1, 1801812339, v5, v2, (a1[1] + 72), v29, v12, v13);
    }

    else
    {
LABEL_21:
      v3 = 0;
    }

    free(v6);
  }

  return v3;
}

uint64_t sub_10005E25C(uint64_t *a1, int a2, uint64_t a3, size_t count, unsigned __int8 *a5, void *a6)
{
  if (HIDWORD(count) || (v10 = *(a1[1] + 36), (count * v10) >> 32))
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v17 = "OTI keybag";
        goto LABEL_18;
      }

      if (a2 == 1919247219)
      {
        v17 = "volume keybag";
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v17 = "container keybag";
        goto LABEL_18;
      }

      if (a2 == 1835754873)
      {
        v17 = "media keybag";
LABEL_18:
        fsck_printf_err("%s (%llu+%llu): size is too large\n", v17, a3, count);
        v18 = 92;
        v19 = 1058;
        v20 = 92;
LABEL_19:
        fsck_fail_func(v19, v20);
        return v18;
      }
    }

    v17 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v17 = "OTI blob";
    }

    goto LABEL_18;
  }

  v13 = malloc_type_calloc(count, v10, 0xC61E6867uLL);
  if (!v13)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v22 = "OTI keybag";
        goto LABEL_49;
      }

      if (a2 == 1919247219)
      {
        v22 = "volume keybag";
        goto LABEL_49;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v22 = "container keybag";
        goto LABEL_49;
      }

      if (a2 == 1835754873)
      {
        v22 = "media keybag";
LABEL_49:
        fsck_printf_err("%s (%llu+%llu): failed to allocate memory\n", v22, a3, count);
        v18 = 12;
        v19 = 1059;
        v20 = 12;
        goto LABEL_19;
      }
    }

    v22 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v22 = "OTI blob";
    }

    goto LABEL_49;
  }

  v14 = v13;
  v15 = *a1;
  if (a2 == 1835754873)
  {
    keybag = dev_read(v15);
  }

  else
  {
    keybag = fsck_userfs_get_keybag(v15, a3, count, a5);
  }

  v18 = keybag;
  if (keybag)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v23 = "OTI keybag";
        goto LABEL_43;
      }

      if (a2 == 1919247219)
      {
        v23 = "volume keybag";
        goto LABEL_43;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v23 = "container keybag";
        goto LABEL_43;
      }

      if (a2 == 1835754873)
      {
        v23 = "media keybag";
LABEL_43:
        v24 = strerror(keybag);
        fsck_printf_err("%s (%llu+%llu): failed to get keybag data: %s\n", v23, a3, count, v24);
        fsck_fail_func(0x424, v18);
        free(v14);
        return v18;
      }
    }

    if (a2 == 1651273570)
    {
      v23 = "OTI blob";
    }

    else
    {
      v23 = "unknown keybag";
    }

    goto LABEL_43;
  }

  *a6 = v14;
  return v18;
}

uint64_t sub_10005E58C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  fletcher64_set_cksum(a6, (a6 + 8), (*(a1[1] + 36) * a4 - 8), 0, a7, a8);
  if (a2 == 1835754873)
  {
    v14 = dev_write(*a1);
  }

  else
  {
    v15 = a1[1];
    v16 = *(state + 8);
    *&v21[0] = a3;
    *(&v21[0] + 1) = a4;
    v21[1] = *(v15 + 1392);
    v14 = apfs_crypto_io_getset_locker_data(v16, a5, v21, 0, a6);
  }

  v17 = v14;
  if (v14)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v18 = "OTI keybag";
        goto LABEL_17;
      }

      if (a2 == 1919247219)
      {
        v18 = "volume keybag";
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v18 = "container keybag";
        goto LABEL_17;
      }

      if (a2 == 1835754873)
      {
        v18 = "media keybag";
LABEL_17:
        v19 = strerror(v14);
        fsck_printf_err("%s (%llu+%llu): failed to put keybag: %s\n", v18, a3, a4, v19);
        fsck_fail_func(0x443, v17);
        return v17;
      }
    }

    if (a2 == 1651273570)
    {
      v18 = "OTI blob";
    }

    else
    {
      v18 = "unknown keybag";
    }

    goto LABEL_17;
  }

  return v17;
}

uint64_t sub_10005E72C(uint64_t a1, unsigned __int16 *a2, int a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  v7 = *a2;
  if (!*a2)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v11 = "OTI keybag";
        goto LABEL_47;
      }

      if (a3 == 1919247219)
      {
        v11 = "volume keybag";
        goto LABEL_47;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v11 = "container keybag";
        goto LABEL_47;
      }

      if (a3 == 1835754873)
      {
        v11 = "media keybag";
LABEL_47:
        fsck_printf_err("%s (%llu+%llu): version cannot be 0\n", v11, a4, a5);
        v15 = 92;
        v16 = 1061;
LABEL_74:
        fsck_fail_func(v16, 92);
        return v15;
      }
    }

    v11 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v11 = "OTI blob";
    }

    goto LABEL_47;
  }

  if (v7 != a6)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v12 = "OTI keybag";
        goto LABEL_53;
      }

      if (a3 == 1919247219)
      {
        v12 = "volume keybag";
        goto LABEL_53;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v12 = "container keybag";
        goto LABEL_53;
      }

      if (a3 == 1835754873)
      {
        v12 = "media keybag";
LABEL_53:
        fsck_printf_warn("%s (%llu+%llu): unknown version %u\n, skipping checks\n", v12, a4, a5, v7);
        v17 = 1062;
        v18 = -6;
LABEL_54:
        fsck_fail_func(v17, v18);
        return 0;
      }
    }

    v12 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v12 = "OTI blob";
    }

    goto LABEL_53;
  }

  v8 = (*(*(a1 + 8) + 36) * a5);
  v9 = v8 / a7;
  if (v8 / a7 < a2[1])
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v10 = "OTI keybag";
        goto LABEL_67;
      }

      if (a3 == 1919247219)
      {
        v10 = "volume keybag";
        goto LABEL_67;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v10 = "container keybag";
        goto LABEL_67;
      }

      if (a3 == 1835754873)
      {
        v10 = "media keybag";
LABEL_67:
        fsck_printf_err("%s (%llu+%llu): number of entries %u exceeds object capacity %lu\n", v10, a4, a5, a2[1], v9);
        v15 = 92;
        v16 = 1063;
        goto LABEL_74;
      }
    }

    v10 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v10 = "OTI blob";
    }

    goto LABEL_67;
  }

  if (*(a2 + 1) > v8)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v13 = "OTI keybag";
        goto LABEL_73;
      }

      if (a3 == 1919247219)
      {
        v13 = "volume keybag";
        goto LABEL_73;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v13 = "container keybag";
        goto LABEL_73;
      }

      if (a3 == 1835754873)
      {
        v13 = "media keybag";
LABEL_73:
        fsck_printf_err("%s (%llu+%llu): number of bytes %u exceeds object size %u\n", v13, a4, a5, *(a2 + 1), v8);
        v15 = 92;
        v16 = 1064;
        goto LABEL_74;
      }
    }

    v13 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_73;
  }

  if (*(a2 + 8) || *(a2 + 9) || *(a2 + 10) || *(a2 + 11) || *(a2 + 12) || *(a2 + 13) || *(a2 + 14) || *(a2 + 15))
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v14 = "OTI keybag";
        goto LABEL_81;
      }

      if (a3 == 1919247219)
      {
        v14 = "volume keybag";
        goto LABEL_81;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v14 = "container keybag";
        goto LABEL_81;
      }

      if (a3 == 1835754873)
      {
        v14 = "media keybag";
LABEL_81:
        fsck_printf_warn("%s (%llu+%llu): invalid padding\n", v14, a4, a5);
        v17 = 1065;
        v18 = -10;
        goto LABEL_54;
      }
    }

    v14 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v14 = "OTI blob";
    }

    goto LABEL_81;
  }

  return 0;
}

uint64_t sub_10005EBA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, _BYTE *a7)
{
  if (*(a1 + 2) == a5)
  {
    goto LABEL_16;
  }

  v13 = a5;
  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v14 = "OTI keybag";
      goto LABEL_14;
    }

    if (a2 == 1919247219)
    {
      v14 = "volume keybag";
      goto LABEL_14;
    }

LABEL_9:
    v14 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v14 = "OTI blob";
    }

    goto LABEL_14;
  }

  if (a2 == 1801812339)
  {
    v14 = "container keybag";
    goto LABEL_14;
  }

  if (a2 != 1835754873)
  {
    goto LABEL_9;
  }

  v14 = "media keybag";
LABEL_14:
  fsck_printf_err("%s (%llu+%llu): number of keys %u does not match number of entries found %u\n", v14, a3, a4, *(a1 + 2), a5);
  v15 = 92;
  fsck_fail_func(0x444, 92);
  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix the number of keys? ", v16, v17, v18, v19, v20, v21))
  {
    return v15;
  }

  *(a1 + 2) = v13;
  *a7 = 1;
LABEL_16:
  if (*(a1 + 4) == a6)
  {
    return 0;
  }

  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v22 = "OTI keybag";
    }

    else
    {
      if (a2 != 1919247219)
      {
        goto LABEL_25;
      }

      v22 = "volume keybag";
    }
  }

  else
  {
    if (a2 != 1801812339)
    {
      if (a2 == 1835754873)
      {
        v22 = "media keybag";
        goto LABEL_30;
      }

LABEL_25:
      v22 = "unknown keybag";
      if (a2 == 1651273570)
      {
        v22 = "OTI blob";
      }

      goto LABEL_30;
    }

    v22 = "container keybag";
  }

LABEL_30:
  fsck_printf_err("%s (%llu+%llu): number of bytes %u does not match sum of all entries %u\n", v22, a3, a4, *(a1 + 4), a6);
  v15 = 92;
  fsck_fail_func(0x432, 92);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix the number of bytes? ", v23, v24, v25, v26, v27, v28))
  {
    v15 = 0;
    *(a1 + 4) = a6;
    *a7 = 1;
  }

  return v15;
}

uint64_t write_apfs_superblock(uint64_t *a1, int8x16_t *a2)
{
  apfs_do_update_last_modified_by(a2[2].i64[1], "fsck_apfs", *(a2[2].i64[1] + 16));
  v4 = a2[2].i64[1];
  v7 = a2[5];
  v8 = a2[6].i64[0];
  result = write_obj(a1, 0, v4, &v7, v7, v5);
  if (!result)
  {
    *(state + 53) = 1;
  }

  return result;
}

uint64_t get_latest_snap_xid(uint64_t *a1, uint64_t a2, void *a3)
{
  v15 = 0;
  *a3 = -1;
  v14 = 8;
  v13[0] = 0;
  v13[1] = 0;
  v12 = 16;
  omap_snap_tree = get_omap_snap_tree(a1, a2, &v15);
  if (!omap_snap_tree)
  {
    v7 = v15;
    v8 = 0xFFFFFFFFLL;
    v9 = a3;
    v10 = 8;
    while (1)
    {
      v11 = tree_lookup(v7, 0, v8, v9, &v14, v10, v13, &v12);
      omap_snap_tree = v11;
      if ((v11 & 0xFFFFFFFD) != 0)
      {
        break;
      }

      if (v11)
      {
        return omap_snap_tree;
      }

      if ((v13[0] & 3) == 0)
      {
        return 0;
      }

      v7 = v15;
      v10 = v14;
      v8 = 4294967294;
      v9 = a3;
    }
  }

  v5 = strerror(omap_snap_tree);
  fsck_printf_err("unable to lookup latest snap xid: %s\n", v5);
  return omap_snap_tree;
}

uint64_t fsck_obj_phys(void *a1, char a2, unint64_t a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8)
{
  if (fletcher64_verify_cksum(a1, (a1 + 1), (a6 - 8), 0, a7, a8))
  {
    fsck_printf_err("object (oid 0x%llx): o_cksum (0x%llx) is invalid for object\n", a1[1], *a1);
    v13 = 92;
    fsck_fail_func(5, 92);
    if ((a2 & 1) == 0)
    {
LABEL_6:
      if ((a2 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (a1[1])
  {
    goto LABEL_6;
  }

  fsck_printf_err("object (oid 0x%llx): o_oid invalid\n", 0);
  v13 = 92;
  fsck_fail_func(6, 92);
  if ((a2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = a1[2];
  if (!v14)
  {
    fsck_printf_err("object (oid 0x%llx): o_xid invalid, o_xid is 0\n", a1[1]);
    v13 = 92;
    fsck_fail_func(7, 92);
    v14 = a1[2];
  }

  if (v14 > a3)
  {
    fsck_printf_err("object (oid 0x%llx): o_xid invalid, o_xid %llu is greater than nx_next_xid: %llu\n", a1[1], v14, a3);
    v13 = 92;
    fsck_fail_func(8, 92);
  }

LABEL_12:
  if ((a2 & 4) != 0 && *(a1 + 6) != a4)
  {
    fsck_printf_err("object (oid 0x%llx): o_type invalid, o_type 0x%x should be 0x%x\n", a1[1], *(a1 + 6), a4);
    v13 = 92;
    fsck_fail_func(9, 92);
  }

  if ((a2 & 8) != 0 && *(a1 + 7) != a5)
  {
    fsck_printf_err("object (oid 0x%llx): o_subtype invalid, o_subtype 0x%x should be 0x%x\n", a1[1], *(a1 + 7), a5);
    v13 = 92;
    fsck_fail_func(0xA, 92);
  }

  return v13;
}

unsigned int *get_nx_superblock(uint64_t a1, _BYTE *a2)
{
  v4 = dev_block_size(a1);
  if (v4 <= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = v4;
  }

  v6 = dev_block_count(a1);
  v7 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
  if (!v7)
  {
LABEL_13:
    fsck_printf_err("failed to allocate memory to read the container superblock\n");
    fsck_fail_func(0x56, 12);
    return 0;
  }

  v8 = v7;
  while (1)
  {
    dev_block_size(a1);
    v9 = dev_read(a1);
    if (v9)
    {
      v16 = v9;
      fsck_printf_err("failed to read container superblock\n");
      v15 = 87;
      v17 = v16;
LABEL_25:
      fsck_fail_func(v15, v17);
      free(v8);
      return 0;
    }

    if (v8[8] != 1112758350)
    {
      DumpData(v8, v5);
      fsck_printf_err("Device does not contain a valid APFS container.\n");
      v15 = 88;
LABEL_24:
      v17 = 22;
      goto LABEL_25;
    }

    v10.i32[0] = v8[9];
    if ((v10.i32[0] - 65537) < 0xFFFF0FFF || (v11 = v10.i32[0] % dev_block_size(a1), v10 = v8[9], v11) || (v12 = vcnt_s8(v10), v12.i16[0] = vaddlv_u8(v12), v12.i32[0] >= 2u))
    {
      fsck_printf_err("nx_block_size of %u is invalid\n", v10.i32[0]);
      v15 = 89;
      goto LABEL_24;
    }

    if (v10.i32[0] == dev_block_size(a1))
    {
      break;
    }

    dev_set_block_size(a1);
    v5 = v8[9];
    free(v8);
    v6 = dev_block_count(a1);
    v8 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (*(v8 + 5) - 1 >= v6)
  {
    fsck_printf_warn("nx_block_count is %llu, while device block count is %llu\n", *(v8 + 5), v6);
    fsck_fail_func(0x1F9, -7);
    *(v8 + 5) = v6;
    *a2 = 1;
  }

  if (!fsck_obj_phys(v8, 15, *(v8 + 12), -2147483647, 0, v8[9], v13, v14))
  {
    return v8;
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
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
  v23 = 0u;
  v22[0] = a1;
  v22[1] = v8;
  v21[0] = v22;
  v21[1] = 0;
  v18 = v8[26];
  if ((v18 & 0x7FFFFFF8) == 0)
  {
    goto LABEL_23;
  }

  v19 = *(v8 + 14);
  if ((v18 & 0x80000000) != 0)
  {
    if (!extent_list_tree_iterate(v22, v19, extent_is_valid_range_cb, v21))
    {
      goto LABEL_29;
    }

LABEL_23:
    fsck_printf_err("cannot find checkpoint area because container superblock is too damaged\n");
    v15 = 506;
    goto LABEL_24;
  }

  v51[1] = v8[26];
  v52 = 0;
  v51[0] = v19;
  if (extent_is_valid_range_cb(&v52, 8, v51, 16, v21))
  {
    goto LABEL_23;
  }

LABEL_29:
  *a2 = 1;
  return v8;
}

uint64_t fsck_nx_superblock(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 8) != 1)
  {
    fsck_printf_err("nx_sb->nx_o.o_oid != OID_NX_SUPERBLOCK, %llu\n", *(a2 + 8));
    v8 = 92;
    v9 = 51;
    goto LABEL_12;
  }

  if (*(a2 + 32) != 1112758350)
  {
    fsck_printf_err("nx_superblock magic number invalid: 0x%X\n", *(a2 + 32));
    v8 = 92;
    v9 = 52;
    goto LABEL_12;
  }

  v6 = dev_block_count(a1);
  if (*(a2 + 40) - 1 >= v6)
  {
    fsck_printf_err("nx_block_count is %llu, while device block count is %llu\n", *(a2 + 40), v6);
    v11 = 53;
    v12 = 92;
    goto LABEL_15;
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    fsck_printf_warn("nx_features has unsupported flags: (0x%llX)\n", *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL);
    fsck_fail_func(0x36, -3);
  }

  if (*(a2 + 56))
  {
    fsck_printf_warn("nx_read_only_compatible_features has unsupported flags: (0x%llX)\n", *(a2 + 56));
    v7 = state;
    *(state + 32) = 1;
    *(v7 + 41) = 1;
    fsckSetDefaultResponse(fsck_apfs_ctx, 1);
    fsck_fail_func(0x37, -3);
  }

  if ((*(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (uuid_is_null((a2 + 72)))
    {
      fsck_printf_err("nx_uuid is NULL\n");
      v8 = 92;
      v9 = 57;
      goto LABEL_12;
    }

    if (*(a2 + 88) <= 0x3FFuLL)
    {
      fsck_printf_err("nx_next_oid (%llu) is less than the minimum (%u)\n", *(a2 + 88), 1024);
      v8 = 92;
      v9 = 58;
      goto LABEL_12;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = a1;
    v49 = a2;
    v13 = *(a2 + 104) & 0x7FFFFFFF;
    v46 = &v48;
    v47 = 0;
    if (v13 <= 7)
    {
      fsck_printf_err("nx_xp_desc_blocks (%u) is less than 8\n", v13);
      v8 = 92;
      v9 = 59;
      goto LABEL_12;
    }

    if (sub_10005FCBC(&v48, &v46))
    {
      fsck_printf_err("NX checkpoint desc range is invalid: 0x%llx+0x%x\n", *(a2 + 112), *(a2 + 104));
      v8 = 92;
      v9 = 60;
      goto LABEL_12;
    }

    if (v47 != (*(a2 + 104) & 0x7FFFFFFF))
    {
      fsck_printf_err("NX checkpoint desc blocks field is %u, but sum of ranges is %llu\n", *(a2 + 104) & 0x7FFFFFFF, v47);
      v8 = 92;
      v9 = 574;
      goto LABEL_12;
    }

    if ((*(a2 + 108) & 0x7FFFFFFFu) <= 7)
    {
      fsck_printf_err("nx_xp_data_blocks (%u) is less than 8\n", *(a2 + 108) & 0x7FFFFFFF);
      v8 = 92;
      v9 = 61;
      goto LABEL_12;
    }

    v47 = 0;
    if (sub_10005FD2C(&v48, extent_is_valid_range_cb, &v46))
    {
      fsck_printf_err("NX checkpoint data range is invalid: 0x%llx+0x%x\n", *(a2 + 120), *(a2 + 108));
      v8 = 92;
      v9 = 62;
      goto LABEL_12;
    }

    v14 = *(a2 + 108) & 0x7FFFFFFF;
    if (v47 != v14)
    {
      fsck_printf_err("NX checkpoint data blocks field is %u, but sum of ranges is %llu\n", *(a2 + 108) & 0x7FFFFFFF, v47);
      v8 = 92;
      v9 = 575;
      goto LABEL_12;
    }

    v15 = *(a2 + 104) & 0x7FFFFFFF;
    if (*(a2 + 128) >= v15)
    {
      fsck_printf_err("nx_xp_desc_next (%u) is larger than the # of nx_xp_desc_blocks (%u)\n", *(a2 + 128), v15);
      v8 = 92;
      v9 = 63;
      goto LABEL_12;
    }

    if (*(a2 + 132) >= v14)
    {
      fsck_printf_err("nx_xp_data_next (%u) is larger than the # of nx_xp_data_blocks (%u)\n", *(a2 + 132), v14);
      v8 = 92;
      v9 = 64;
      goto LABEL_12;
    }

    if ((a3 & 1) != 0 || *(a2 + 140) || *(a2 + 148) || *(a2 + 136) || *(a2 + 144))
    {
      if (*(a2 + 136) >= v15)
      {
        fsck_printf_err("nx_xp_desc_index (%u) is larger than nx_xp_desc_blocks (%u)\n", *(a2 + 136), v15);
        v8 = 92;
        v9 = 65;
        goto LABEL_12;
      }

      v16 = *(a2 + 140);
      if (v16 <= 1)
      {
        fsck_printf_err("nx_xp_desc_len (%u) is less than 2\n", *(a2 + 140));
        v8 = 92;
        v9 = 66;
        goto LABEL_12;
      }

      if (v16 >= v15)
      {
        fsck_printf_err("nx_xp_desc_len (%u) is larger than nx_xp_desc_blocks (%u)\n", *(a2 + 140), v15);
        v8 = 92;
        v9 = 67;
        goto LABEL_12;
      }

      if (*(a2 + 144) >= v14)
      {
        fsck_printf_err("nx_xp_data_index (%u) is is larger than nx_xp_data_blocks (%u)\n", *(a2 + 144), v14);
        v8 = 92;
        v9 = 68;
        goto LABEL_12;
      }

      v17 = *(a2 + 148);
      if (v17 <= 1)
      {
        fsck_printf_err("nx_xp_data_len (%u) is less than 2\n", *(a2 + 148));
        v8 = 92;
        v9 = 69;
        goto LABEL_12;
      }

      if (v17 >= v14)
      {
        fsck_printf_err("nx_xp_data_len (%u) is larger than nx_xp_data_blocks (%u)\n", *(a2 + 148), v14);
        v8 = 92;
        v9 = 70;
        goto LABEL_12;
      }
    }

    if (!*(a2 + 152))
    {
      fsck_printf_err("nx_spaceman_oid is invalid\n");
      v8 = 92;
      v9 = 71;
      goto LABEL_12;
    }

    if (!*(a2 + 160))
    {
      fsck_printf_err("nx_omap_oid is invalid\n");
      v8 = 92;
      v9 = 72;
      goto LABEL_12;
    }

    if ((*(a2 + 168) - 1) <= 0x3FE)
    {
      fsck_printf_err("nx_reaper_oid (%llu) is less than minimum OID (%d)\n", *(a2 + 168), 1024);
      v8 = 92;
      v9 = 73;
      goto LABEL_12;
    }

    if ((*(a2 + 180) - 101) < 0xFFFFFF9C)
    {
      fsck_printf_err("nx_max_file_systems (%u) is invalid\n", *(a2 + 180));
      v8 = 92;
      v9 = 74;
      goto LABEL_12;
    }

    for (i = 0; i != 100; ++i)
    {
      v19 = *(a2 + 184 + 8 * i);
      if ((v19 - 1) < 0x3FF)
      {
        fsck_printf_err("nx_fs_oid (%llu) at index (%d) is less than minimum OID (%d)\n", v19, i, 1024);
        v8 = 92;
        v9 = 75;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1264) >= 8uLL)
    {
      fsck_printf_warn("nx_flags (0x%llx) has an unknown flag set \n", *(a2 + 1264));
      fsck_fail_func(0x4C, -3);
    }

    v20 = *(a2 + 1312);
    if (v20 != 1)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid version (%u), should be: (%d)\n", *(a2 + 1312), 1);
      fsck_fail_func(0x4D, -6);
    }

    if (WORD1(v20) != 4)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid structures per fs (%u), should be: (%d)\n", WORD1(v20), 4);
      fsck_fail_func(0x4E, -8);
    }

    if ((v20 - 0x900000000) <= 0xFFFFFFF7FFFFFFFFLL)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid minimum block count per structure (%u), should be less than: (%d)\n", WORD1(v20), 8);
      fsck_fail_func(0x4F, -7);
    }

    for (j = 0; j != 3; ++j)
    {
      v22 = *(a2 + 1320 + 8 * j);
      if (v22)
      {
        fsck_printf_warn("nx_ephemeral_info %d: invalid info (0x%llx)\n", j + 1, v22);
        fsck_fail_func(0x50, -10);
      }
    }

    v23 = *(a2 + 1400);
    if (v23)
    {
      v24 = *(a2 + 1392);
      v25 = *(v49 + 40);
      v26 = v25 - v23 >= v24 && v25 > v23;
      v27 = !v26 || v24 < 1;
      if (v27 || v25 <= v24)
      {
        fsck_printf_err("NX media keylocker data range is invalid: 0x%llx+%llu\n", *(a2 + 1392), v23);
        v8 = 92;
        v9 = 949;
        goto LABEL_12;
      }
    }

    v29 = *(a2 + 1304);
    if (v29)
    {
      v30 = *(a2 + 1296);
      v31 = *(v49 + 40);
      v32 = v31 - v29 >= v30 && v31 > v29;
      v33 = !v32 || v30 < 1;
      if (v33 || v31 <= v30)
      {
        fsck_printf_err("NX keybag data range is invalid: 0x%llx+%llu\n", *(a2 + 1296), v29);
        v8 = 92;
        v9 = 81;
        goto LABEL_12;
      }
    }

    v35 = *(a2 + 1248);
    if (v35)
    {
      v36 = *(a2 + 1240);
      v37 = *(v49 + 40);
      v38 = v37 - v35 >= v36 && v37 > v35;
      v39 = !v38 || v36 < 1;
      if (v39 || v37 <= v36)
      {
        fsck_printf_err("NX blocked out range is invalid: 0x%llx+%llu\n", *(a2 + 1240), v35);
        v8 = 92;
        v9 = 82;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1352))
    {
      fsck_printf_err("nx_fusion_mt_oid should be invalid but isn't\n");
      v8 = 92;
      v9 = 83;
      goto LABEL_12;
    }

    if (*(a2 + 1360))
    {
      fsck_printf_err("nx_fusion_wbc_oid should be invalid but isn't\n");
      v8 = 92;
      v9 = 84;
      goto LABEL_12;
    }

    if (*(a2 + 1376) || *(a2 + 1368))
    {
      fsck_printf_warn("nx_fusion_wbc should be empty but isn't\n");
      fsck_fail_func(0x5BF, -6);
    }

    v41 = *(a2 + 1384);
    v42 = v41 - 1;
    if (v41 <= 0x3B9AC9BB15066FFFLL && v42 > 0x4BFFE92108FFELL)
    {
      return 0;
    }

    *__str = 0;
    v79 = 0;
    v81 = 0;
    v80 = 0;
    v43 = apfs_parse_version(v41, __str, 25);
    if (!v43)
    {
      v43 = __str;
      snprintf(__str, 0x19uLL, "%llu", v41);
    }

    if (v41 <= 0x3B9AC9BB15066FFFLL)
    {
      if (v42 >= 0xE8D4A50FFFLL)
      {
        v45 = "nx_newest_mounted_version is less than expected: %s\n";
      }

      else
      {
        v45 = "nx_newest_mounted_version should not start with a 0: %s\n";
      }

      if (v42 < 0xE8D4A50FFFLL)
      {
        v44 = 859;
      }

      else
      {
        v44 = 860;
      }

      if (v42 > 0x4BFFE92108FFELL)
      {
        return 0;
      }

      fsck_printf_warn(v45, v43);
    }

    else
    {
      v44 = 858;
      fsck_printf_warn("nx_newest_mounted_version is greater than expected: %s\n");
    }

    v11 = v44;
    v12 = -6;
LABEL_15:
    fsck_fail_func(v11, v12);
    return 0;
  }

  fsck_printf_err("nx_incompatible_features has unsupported flags: (0x%llX)\n", *(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL);
  v8 = 92;
  v9 = 56;
LABEL_12:
  fsck_fail_func(v9, 92);
  return v8;
}

uint64_t sub_10005FCBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  if ((v5 & 0x80000000) != 0)
  {

    return extent_list_tree_iterate(a1, v6, extent_is_valid_range_cb, a2);
  }

  else
  {
    v9 = 0;
    v8[0] = v6;
    v8[1] = v5;
    return extent_is_valid_range_cb(&v9, 8, v8, 16, a2);
  }
}

uint64_t sub_10005FD2C(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 108);
  v7 = *(v5 + 120);
  if ((v6 & 0x80000000) != 0)
  {

    return extent_list_tree_iterate(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t block0_sb_agrees_with_checkpoint_sb(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && *(a1 + 16) > *(a2 + 16))
  {
    fsck_printf_debug("the checkpoint superblock has a lower o_xid (%lld) than the %s (%lld)\n");
    return 92;
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_block_size: %d %d\n");
    return 92;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_block_count: %lld %lld\n");
    return 92;
  }

  if (uuid_compare((a1 + 72), (a2 + 72)))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on uuid\n");
    return 92;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on fusion uuid\n");
    return 92;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_desc_blocks: %d %d\n");
    return 92;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_data_blocks: %d %d\n");
    return 92;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_desc_base: %lld %lld\n");
    return 92;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_data_base: %lld %lld\n");
    return 92;
  }

  return 0;
}

uint64_t get_latest_checkpoint(uint64_t a1, uint64_t a2, void **a3, unint64_t *a4)
{
  v99 = a4;
  v100 = &v95;
  v133 = 0;
  __chkstk_darwin(a1);
  v8 = (&v95 - ((v7 + 15) & 0x1FFFFFFF0));
  bzero(v8, v7);
  v9 = *(a2 + 1264);
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = a1;
  v102 = a3;
  *a3 = 0;
  if (!*(a2 + 140) || !*(a2 + 148) || !*(a2 + 136) || !*(a2 + 144) || dev_is_external(a1) || (v9 & 2) == 0)
  {
    goto LABEL_134;
  }

  v10 = (*(a2 + 140) + *(a2 + 136) - 1) % (*(a2 + 104) & 0x7FFFFFFFu);
  v11 = 1;
  v101 = 1;
  do
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(a2 + 104);
      v15 = v14 & 0x7FFFFFFF;
      if ((v14 & 0x7FFFFFFF) <= v12 || v13 > v15)
      {
        sub_10006128C();
      }

      v17 = v12 + v10 + v15;
      v18 = v17 % v15;
      *&v105 = a2;
      v19 = *(a2 + 112);
      if (v14 < 0)
      {
        v28 = nx_metadata_fragmented_block_address_lookup(&v104, v19, v17 % v15, &v133, 0);
        if (v28)
        {
          v23 = v28;
          v29 = strerror(v28);
          fsck_printf_warn("failed to look up checkpoint block address: %s\n", v29);
          v27 = 542;
          goto LABEL_19;
        }
      }

      else
      {
        v133 = v19 + v18;
      }

      v20 = dev_read(a1);
      if (v20)
      {
        v23 = v20;
        v24 = v10;
        v25 = v133;
        v26 = strerror(v20);
        v94 = v25;
        v10 = v24;
        fsck_printf_err("dev_read(%llu, 1): %s\n", v94, v26);
        v27 = 127;
LABEL_19:
        v30 = v23;
        goto LABEL_20;
      }

      if (!v8[1] && *v102)
      {
        return 0;
      }

      if (*(v8 + 6) == -2147483647)
      {
        if (fsck_obj_phys(v8, 11, v8[2], 0, 0, *(a2 + 36), v21, v22))
        {
          fsck_printf_warn("checkpoint %d (xid %llu) fsck_obj_phys failed\n");
          goto LABEL_21;
        }

        if (block0_sb_agrees_with_checkpoint_sb(a2, v8, v13 == 0))
        {
          fsck_printf_warn("checkpoint %d (xid %llu) superblock disagrees with block 0\n");
          goto LABEL_21;
        }

        v31 = *(v8 + 35);
        v32 = (v31 + *(v8 + 34) - 1) % (v8[13] & 0x7FFFFFFF);
        if (v18 != v32)
        {
          fsck_printf_warn("xp_sb->nx_xp_desc_index (%d) doesn't match index block (%d)\n", v32, v18);
          v27 = 128;
          goto LABEL_36;
        }

        if (v31 + v13 <= (*(a2 + 104) & 0x7FFFFFFFu))
        {
          break;
        }
      }

LABEL_21:
      v12 = ~v13++;
      if (v13 == v11)
      {
        goto LABEL_132;
      }
    }

    if (fsck_nx_superblock(a1, v8, 1))
    {
      fsck_printf_warn("checkpoint %d (xid %llu) superblock is invalid\n");
      goto LABEL_21;
    }

    *&v105 = v8;
    v134 = 0;
    v135 = 0;
    if (*(v8 + 35) == 1)
    {
      goto LABEL_115;
    }

    v33 = 0;
    while (1)
    {
      v34 = *(v8 + 34);
      HIDWORD(v95) = v33;
      v35 = (v34 + v33) % (v8[13] & 0x7FFFFFFF);
      v36 = *(v105 + 104);
      if ((v36 & 0x7FFFFFFFu) <= v35)
      {
        v38 = 22;
LABEL_100:
        LODWORD(v103) = v38;
        v63 = strerror(v38);
        fsck_printf_err("failed to look up checkpoint block address %d: %s\n", v35, v63);
        v65 = 540;
        v64 = v103;
        goto LABEL_111;
      }

      v37 = *(v105 + 112);
      if (v36 < 0)
      {
        v38 = nx_metadata_fragmented_block_address_lookup(&v104, v37, v35, &v134, 0);
        if (v38)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v134 = v37 + v35;
      }

      if (v135)
      {
        free(v135);
        v135 = 0;
      }

      v39 = copy_obj(&v104, 0, 0x40000000, v134, 0, 0, 12, 0, &v135, 0, 0);
      v40 = v39 == 0;
      if (v39)
      {
        goto LABEL_112;
      }

      v41 = v135;
      if (*(v135 + 1) != v134)
      {
        fsck_printf_err("cpm_o.o_oid (0x%llx) doesn't match the physical address (0x%llx)\n", *(v135 + 1), v134);
        v65 = 107;
        goto LABEL_110;
      }

      v42 = *(v105 + 16);
      if (*(v135 + 2) != v42)
      {
        fsck_printf_err("checkpoint map o_xid (0x%llx) doesn't match checkpoint superblock o_xid (0x%llx)\n", *(v135 + 2), v42);
        v65 = 108;
        goto LABEL_110;
      }

      v43 = v135[9];
      if (!v43)
      {
        fsck_printf_err("cpm_count is 0\n");
        v65 = 109;
        goto LABEL_110;
      }

      v44 = *(v105 + 36);
      v96 = v105;
      v97 = v44;
      v45 = (v44 - 40) / 0x28uLL;
      if (v45 < v43)
      {
        fsck_printf_err("cpm_count (%u) is larger than the max that this block size can accommodate (%u)\n", v43, v45);
        v65 = 110;
        goto LABEL_110;
      }

      LODWORD(v95) = v39 == 0;
      v46 = *(v8 + 35);
      v47 = v135[8];
      v98 = v135;
      if (v47 >= 2)
      {
        fsck_printf_warn("cpm_flags has an unknown flag set 0x%x\n", v47);
        fsck_fail_func(0x6F, -3);
        v41 = v98;
        v47 = v98[8];
      }

      if (HIDWORD(v95) == v46 - 2)
      {
        if ((v47 & 1) == 0)
        {
          fsck_printf_err("cpm_flags has invalid flags set: 0x%x\n", v47);
          v65 = 112;
          goto LABEL_110;
        }
      }

      else if (v47)
      {
        fsck_printf_err("cpm_flags has invalid flags set: 0x%x\n", v47);
        v65 = 113;
        goto LABEL_110;
      }

      if (v41[9])
      {
        break;
      }

LABEL_90:
      v40 = v95;
      v33 = HIDWORD(v95) + 1;
      if (HIDWORD(v95) + 1 >= (*(v8 + 35) - 1))
      {
        goto LABEL_112;
      }
    }

    v48 = 0;
    v49 = v41 + 18;
    while (2)
    {
      v50 = *(v49 - 8);
      if ((v50 & 0xC0000000) != 0x80000000)
      {
        fsck_printf_err("cpm_map[%d].cpm_type storage type (0x%x) != OBJ_EPHEMERAL\n", v48, v50 & 0xC0000000);
        v65 = 114;
        goto LABEL_110;
      }

      v51 = *(v49 - 8) > 0x12u || ((1 << v50) & 0x6002C) == 0;
      v103 = v48;
      if (v51)
      {
        fsck_printf_warn("cpm_map[%d].cpm_type object type (0x%x) is invalid!\n", v48, v50);
        fsck_fail_func(0x73, -5);
        LODWORD(v48) = v103;
      }

      v52 = *(v49 - 7);
      if ((v52 & 0xC0000000) != 0)
      {
        fsck_printf_err("cpm_map[%d].cpm_subtype has nonzero storage type (0x%x)\n", v48, v52 & 0xC0000000);
        v65 = 649;
        goto LABEL_110;
      }

      if ((*(v49 - 7) > 0x24u || ((1 << v52) & 0x100009CA01) == 0) && *(v49 - 7) != 255)
      {
        fsck_printf_warn("cmp_map[%d].cpm_subtype object type (0x%x) is invalid!\n", v48, v52);
        fsck_fail_func(0x28A, -5);
        LODWORD(v48) = v103;
      }

      if ((*(v49 - 2) - 1) <= 0x3FE)
      {
        fsck_printf_err("cpm_map[%d].cpm_fs_oid (%llu) is less than minimum oid (%u)!\n", v48, *(v49 - 2), 1024);
        v65 = 515;
        goto LABEL_110;
      }

      if (!*(v49 - 1))
      {
        fsck_printf_err("cpm_map[%d].cpm_oid object type is invalid!\n", v48);
        v65 = 116;
        goto LABEL_110;
      }

      v53 = *(v49 - 6);
      if (!v53)
      {
        fsck_printf_err("xp_map->cpm_map[%d].cpm_size is 0\n", v48);
        v65 = 121;
        goto LABEL_110;
      }

      if (v53 % v97)
      {
        fsck_printf_err("xp_map->cpm_map[%d].cpm_size (%u) is not a multiple of nx_block_size (%u)\n", v48, *(v49 - 6), v97);
        v65 = 122;
        goto LABEL_110;
      }

      v136[0] = *v49;
      v136[1] = (v53 / v97);
      v54 = *(v105 + 120);
      if ((*(v105 + 108) & 0x80000000) != 0)
      {
        if (!extent_list_tree_iterate(&v104, v54, extent_does_not_contain_range_cb, v136))
        {
LABEL_98:
          fsck_printf_err("cpm_map[%d].cpm_paddr (%llu) + cpm_size (%u) is not in the checkpoint data area\n", v103, *v49, *(v49 - 6));
          v65 = 538;
          goto LABEL_110;
        }
      }

      else
      {
        v137[1] = *(v105 + 108);
        v138 = 0;
        v137[0] = v54;
        if (!extent_does_not_contain_range_cb(&v138, 8, v137, 16, v136))
        {
          goto LABEL_98;
        }
      }

      v55 = *v49;
      v137[0] = *v49;
      v56 = *(v105 + 108);
      v57 = *(v105 + 120);
      if ((v56 & 0x80000000) == 0)
      {
        v58 = v55 - v57;
        if (v55 < v57)
        {
          goto LABEL_107;
        }

        v59 = v103;
        if (v58 >= v56)
        {
          goto LABEL_108;
        }

        goto LABEL_81;
      }

      if (extent_list_tree_iterate(&v104, v57, sub_10006123C, v137) == -1)
      {
        v58 = v137[0];
        v59 = v103;
LABEL_81:
        v60 = v96[36];
        if (v58 >= v60)
        {
          v61 = v58 >= (v96[37] + v60);
          v62 = v98;
          if (v61)
          {
            fsck_printf_err("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v96[36]);
            v65 = 120;
            goto LABEL_110;
          }
        }

        else
        {
          v61 = v58 + (v96[27] & 0x7FFFFFFF) >= (v96[37] + v60);
          v62 = v98;
          if (v61)
          {
            fsck_printf_err("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v96[36]);
            v65 = 119;
            goto LABEL_110;
          }
        }

        v48 = v59 + 1;
        v49 += 5;
        if (v48 >= v62[9])
        {
          goto LABEL_90;
        }

        continue;
      }

      break;
    }

    v55 = *v49;
LABEL_107:
    LODWORD(v59) = v103;
LABEL_108:
    fsck_printf_err("could not look up cpm_map[%d].cpm_paddr (%llu) in checkpoint data area\n", v59, v55);
    v65 = 539;
LABEL_110:
    v64 = 92;
LABEL_111:
    fsck_fail_func(v65, v64);
    v40 = 0;
LABEL_112:
    if (v135)
    {
      free(v135);
    }

    if (!v40)
    {
      fsck_printf_warn("checkpoint %d (xid %llu) checkpoint map is invalid\n");
      goto LABEL_21;
    }

LABEL_115:
    if (get_nx_reaper(&v104, 0) || get_spaceman(&v104, 0) || get_omap(&v104, 0, 0) || (v137[0] = 0, get_omap_tree(&v104, 0, v137)) || fsck_tree(v137[0], 0, 0, 0, 0, 0))
    {
LABEL_120:
      v66 = v104;
      v104 = 0;
      *&v105 = 0;
      container_cleanup(&v104);
      v104 = v66;
      fsck_printf_warn("checkpoint %d (xid %llu) failed consistency check\n", v18, v8[2]);
      v27 = 990;
LABEL_36:
      v30 = -7;
LABEL_20:
      fsck_fail_func(v27, v30);
      goto LABEL_21;
    }

    v136[0] = 0;
    v67 = v105;
    if (*(v105 + 180))
    {
      v68 = 0;
      do
      {
        v69 = *(v67 + 8 * v68 + 184);
        if (v69)
        {
          if (copy_obj(&v104, 0, 0, v69, 0, 0, 13, 0, v136, 0, 0))
          {
            goto LABEL_120;
          }

          free(v136[0]);
          v136[0] = 0;
          v67 = v105;
        }

        ++v68;
      }

      while (v68 < *(v67 + 180));
    }

    v70 = v104;
    v104 = 0;
    *&v105 = 0;
    container_cleanup(&v104);
    v104 = v70;
    if (*v102)
    {
      free(*v102);
    }

    v71 = malloc_type_malloc(*(a2 + 36), 0x3D218F84uLL);
    *v102 = v71;
    if (!v71)
    {
      fsck_printf_err("malloc(%u)\n", *(a2 + 36));
      v90 = 12;
      v91 = 129;
      v92 = 12;
      goto LABEL_166;
    }

    memcpy(v71, v8, 0x588uLL);
    v72 = v99;
    *v99 = v133;
    *(v72 + 2) = *(a2 + 36);
LABEL_132:
    if (*v102)
    {
      return 0;
    }

    if ((v101 & 1) == 0)
    {
      goto LABEL_164;
    }

LABEL_134:
    v73 = *(a2 + 104);
    if ((v73 & 0x7FFFFFFF) == 0)
    {
LABEL_163:
      fsck_printf_err("no valid checkpoint found\n", v95);
      v90 = 92;
      v91 = 126;
      goto LABEL_165;
    }

    v74 = 0;
    v75 = 0;
    LODWORD(v103) = 0;
    v76 = 0;
    while (2)
    {
      *&v105 = a2;
      v77 = *(a2 + 112);
      if ((v73 & 0x80000000) == 0)
      {
        v133 = v74 + v77;
        goto LABEL_138;
      }

      v85 = nx_metadata_fragmented_block_address_lookup(&v104, v77, v74, &v133, 0);
      if (v85)
      {
        v81 = v85;
        v86 = strerror(v85);
        fsck_printf_warn("failed to look up checkpoint block address %d: %s\n", v74, v86);
        v84 = 541;
LABEL_142:
        v87 = v81;
LABEL_143:
        fsck_fail_func(v84, v87);
      }

      else
      {
LABEL_138:
        v78 = dev_read(a1);
        if (v78)
        {
          v81 = v78;
          v82 = v133;
          v83 = strerror(v78);
          fsck_printf_err("dev_read(%llu, 1): %s\n", v82, v83);
          v84 = 124;
          goto LABEL_142;
        }

        if (v8[1])
        {
          if (fsck_obj_phys(v8, 10, v8[2], 0, 0, *(a2 + 36), v79, v80))
          {
            fsck_printf_warn("checkpoint %d fsck_obj_phys failed\n", v74);
            goto LABEL_144;
          }

          v88 = *(v8 + 6);
          if (v88 != -2147483647 && v88 != 1073741836)
          {
            fsck_printf_warn("checkpoint %d obj->o_type is invalid: (0x%x)\n", v74, v88);
            v84 = 125;
            v87 = -5;
            goto LABEL_143;
          }
        }

        v89 = v8[2];
        if (v89 == v76 && v75)
        {
          v75 = 1;
          if (*(v8 + 6) != -2147483647)
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v89 < v76)
          {
            goto LABEL_144;
          }

          v75 = *(v8 + 6) == -2147483647;
        }

        v76 = v8[2];
        LODWORD(v103) = v74;
      }

LABEL_144:
      ++v74;
      v73 = *(a2 + 104);
      v11 = v73 & 0x7FFFFFFF;
      if (v74 < (v73 & 0x7FFFFFFFu))
      {
        continue;
      }

      break;
    }

    if (!v76)
    {
      goto LABEL_163;
    }

    v101 = 0;
    v10 = v103;
  }

  while (v11);
  if (*v102)
  {
    return 0;
  }

LABEL_164:
  fsck_printf_err("no valid checkpoint\n", v95);
  v90 = 92;
  v91 = 130;
LABEL_165:
  v92 = 92;
LABEL_166:
  fsck_fail_func(v91, v92);
  return v90;
}

uint64_t fsck_nx_efi_jumpstart(uint64_t *a1)
{
  v22 = 0;
  v2 = a1[1];
  v3 = *(v2 + 36);
  v4 = copy_obj(a1, 0, 0x40000000, *(v2 + 1272), 0, 0, 20, 0, &v22, 0, 1);
  if (!v4)
  {
    v6 = v22;
    if (*(v22 + 8) == 1380209482)
    {
      v7 = *(v22 + 9);
      if (v7 == 1)
      {
        if (!*(v22 + 10))
        {
          fsck_printf_err("invalid EFI jumpstart record file length: %d\n", 0);
          v5 = 92;
          v9 = 92;
          goto LABEL_10;
        }

        v8 = *(v22 + 11);
        if (!v8 || v8 > (v3 - 176) >> 4)
        {
          fsck_printf_err("invalid EFI jumpstart record number of extents: %d\n", *(v22 + 11));
          v5 = 92;
          v9 = 93;
LABEL_10:
          fsck_fail_func(v9, 92);
LABEL_13:
          free(v22);
          return v5;
        }

        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = &v6[v11];
          v15 = *(v14 + 22);
          v16 = *(v14 + 23);
          v17 = *(a1[1] + 40);
          if (v17 - v16 < v15 || v17 <= v16 || v15 < 1 || v17 <= v15)
          {
            fsck_printf_err("NX jumpstart record range is invalid: 0x%llx+%llu\n", v15, v16);
            v5 = 92;
            v9 = 1243;
            goto LABEL_10;
          }

          v13 += v16;
          mark_object_allocated(a1, v15, v16, 0, 0x40000000, v15, 0, 0, 0x14u, 1u);
          ++v12;
          v6 = v22;
          v11 += 16;
        }

        while (v12 < *(v22 + 11));
        v21 = *(v22 + 10);
        if (v13 * v3 != (v21 + v3 - 1) / v3 * v3)
        {
          fsck_printf_err("the EFI jumpstart entry has length %u but occupies %llu blocks of size %u\n", v21, v13, v3);
          v5 = 92;
          v9 = 95;
          goto LABEL_10;
        }
      }

      else
      {
        fsck_printf_warn("found EFI jumpstart record of unknown version %d (max known: %d)\n", v7, 1);
        fsck_fail_func(0x5B, -6);
      }

      v5 = 0;
      goto LABEL_13;
    }

    fsck_printf_err("the EFI jumpstart record magic number is invalid: 0x%x\n", *(v22 + 8));
    v5 = 92;
    v9 = 90;
    goto LABEL_10;
  }

  v5 = v4;
  fsck_printf_err("verification/reading of the EFI jumpstart record failed\n");
  return v5;
}

uint64_t evict_mapping_tree_validate_key_val(uint64_t a1, uint64_t a2, unint64_t *a3, int a4, unint64_t *a5, int a6)
{
  if (a4 == 8 && a6 == 16)
  {
    v6 = *a3;
    v7 = *a5;
    v8 = a5[1];
    v9 = *(*(a1 + 8) + 40);
    v10 = v9 - v8;
    if (v9 > v8 && v6 >= 1 && v9 > v6 && v10 >= v6 && v7 >= 1 && v9 > v7 && v10 >= v7)
    {
      return 0;
    }

    fsck_printf_err("evict mapping range is invalid: (0x%llx+%llu --> 0x%llx+%llu)\n", v6, v8, *a5, v8);
    v17 = 850;
  }

  else
  {
    fsck_printf_err("unexpected key (%u) / val (%u) size in evict mapping tree\n", a4, a6);
    v17 = 849;
  }

  v18 = 92;
  fsck_fail_func(v17, 92);
  return v18;
}

uint64_t fsck_fragmented_metadata(uint64_t a1)
{
  memset(v10, 0, sizeof(v10));
  v9[0] = a1;
  v9[1] = 0;
  v2 = *(a1 + 8);
  if ((*(v2 + 104) & 0x80000000) != 0)
  {
    tree_init_ext(v10, a1, 0, 0x40000000, 2, 10, 0, *(v2 + 36), 8, 16, 0, *(v2 + 112), uint64_key_compare);
    v5 = fsck_tree(v10, 0, sub_100061204, v9, 0, 1);
    if (v5)
    {
      v4 = v5;
      fsck_printf_err("NX checkpoint descriptor area fragmented metadata tree is invalid\n");
      return v4;
    }

    v2 = *(a1 + 8);
  }

  if ((*(v2 + 108) & 0x80000000) != 0 && (tree_init_ext(v10, a1, 0, 0x40000000, 2, 10, 0, *(v2 + 36), 8, 16, 0, *(v2 + 120), uint64_key_compare), v6 = fsck_tree(v10, 0, sub_100061204, v9, 0, 1), v6))
  {
    v4 = v6;
    fsck_printf_err("NX checkpoint data area fragmented metadata tree is invalid\n");
  }

  else
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 164) & 0x80000000) != 0)
    {
      tree_init_ext(v10, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v3 + 168), uint64_key_compare);
      v7 = fsck_tree(v10, 0, sub_100061204, v9, 0, 1);
      if (v7)
      {
        v4 = v7;
        fsck_printf_err("Spaceman internal pool bitmap fragmented metadata tree is invalid\n");
        return v4;
      }

      v3 = *(a1 + 24);
    }

    if ((*(v3 + 152) & 0x8000000000000000) != 0)
    {
      tree_init_ext(v10, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v3 + 176), uint64_key_compare);
      v4 = fsck_tree(v10, 0, sub_100061204, v9, 0, 1);
      if (v4)
      {
        fsck_printf_err("Spaceman internal pool fragmented metadata tree is invalid\n");
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100061204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  if (extent_is_valid_range_cb(a3, a4, a5, a6, a7))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006123C(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 92;
  if (a2 == 8 && a4 == 16)
  {
    v7 = *a5 - *a3;
    if (*a5 < *a3 || v7 >= a3[1])
    {
      return 0;
    }

    else
    {
      *a5 = *a1 + v7;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *crypto_init(uint64_t a1)
{
  qword_100103A20 = a1;
  if (!tree_init_ext(&unk_100103A28, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 24, 0, 0, uint64_key_compare))
  {
    tree_create(&unk_100103A28, 0, 64);
  }

  result = memory_storage_register_tree(&unk_100103A28, "crypto", crypto_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the crypto tree in the fsck memory storage\n");

    return fsck_fail_func(0x582, 12);
  }

  return result;
}

uint64_t crypto_abort()
{
  if (qword_100103A60)
  {
    result = tree_destroy(&unk_100103A28, 0);
  }

  qword_100103A80 = 0;
  return result;
}

void crypto_register(uint64_t a1, char *a2, _DWORD *a3, uint64_t a4)
{
  if (!qword_100103A60)
  {
    return;
  }

  if (*a2 >> 60 != 7)
  {
    sub_1000627B0();
  }

  v8 = *a2 & 0xFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 40);
  v10 = *(v9 + 264);
  if (v8 == 4)
  {
    if ((v10 & 0x108) != 0 || (v10 & 1) != 0 && *(v9 + 976) | qword_100103A20)
    {
LABEL_7:
      sub_100061574(v8);
      if (!v11)
      {
        if (BYTE8(xmmword_100103A68) == 1)
        {
          sub_1000627DC();
        }

        BYTE8(xmmword_100103A68) = 1;
        LODWORD(xmmword_100103A68) = *a3;
      }

      return;
    }
  }

  else if ((v10 & 9) == 0)
  {
    goto LABEL_7;
  }

  fsck_printf_warn("found unexpected crypto state object (id %llu, refcnt %u)\n", *a2 & 0xFFFFFFFFFFFFFFFLL, *a3);
  fsck_fail_func(0x340, -2);

  sub_10006150C(a4, 0, 0, 0, a2, 0);
}

uint64_t sub_10006150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  if (a1)
  {
    if (a6)
    {
      v7 = *(a6 + 22) + 24;
    }

    else
    {
      v7 = 0;
    }

    return fsck_repairs_add(a1, 7u, a2, a3, a4, a5, 8u, a6, v7);
  }

  else
  {

    return print_snapshot_warning();
  }
}

double sub_100061574(uint64_t a1)
{
  v6 = a1;
  if (!sub_100061C30(a1) && !qword_100103A80)
  {
    v4 = 0uLL;
    v5 = 0;
    v2 = 24;
    v3 = 8;
    if ((tree_lookup(&unk_100103A28, 0, 0, &v6, &v3, 8, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_100103A80 = v6;
      result = *&v4;
      xmmword_100103A68 = v4;
      qword_100103A78 = v5;
    }
  }

  return result;
}

void crypto_register_dstream(uint64_t a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *(a2 + 16);
    if ((v2 + 1) > 6 || ((1 << (v2 + 1)) & 0x43) == 0)
    {
      sub_100061574(*(a2 + 16));
      if (!v5)
      {
        if (v2 != 4 && v2 != a1 && !qword_100103A78)
        {
          qword_100103A78 = a1;
        }

        ++DWORD1(xmmword_100103A68);
      }
    }
  }
}

double crypto_register_fext(unint64_t *a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *a1;
    if (*a1 >> 60 != 8)
    {
      sub_100062808();
    }

    if (!*(a2 + 8))
    {
      sub_100062834();
    }

    if (*(a2 + 7))
    {
      result = sub_100061574(4);
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v3 = *(a2 + 16);
      if (!v3)
      {
        return result;
      }

      if (v3 == 5)
      {
        return result;
      }

      result = sub_100061574(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v3 != 4 && (v2 & 0xFFFFFFFFFFFFFFFLL) != v3 && !qword_100103A78)
      {
        qword_100103A78 = v2 & 0xFFFFFFFFFFFFFFFLL;
      }
    }

    ++DWORD1(xmmword_100103A68);
  }

  return result;
}

double crypto_unregister_fext(unint64_t *a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *a1;
    if (*a1 >> 60 != 8)
    {
      sub_100062808();
    }

    if (!*(a2 + 8))
    {
      sub_100062834();
    }

    if (*(a2 + 7))
    {
      result = sub_100061574(4);
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v3 = *(a2 + 16);
      if (!v3)
      {
        return result;
      }

      if (v3 == 5)
      {
        return result;
      }

      result = sub_100061574(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v3 != 4 && qword_100103A78 == (v2 & 0xFFFFFFFFFFFFFFFLL))
      {
        qword_100103A78 = 0;
      }
    }

    --DWORD1(xmmword_100103A68);
  }

  return result;
}

uint64_t crypto_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_100103A60)
  {
    return 0;
  }

  v36 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v6 = sub_100061C30(0);
  if (v6)
  {
LABEL_3:
    tree_for_jobj = v6;
    goto LABEL_9;
  }

  v31 = 24;
  v32 = 8;
  v8 = tree_lookup(&unk_100103A28, 0, 1, &v36, &v32, 8, &v33, &v31);
  if (v8)
  {
LABEL_6:
    if (v8 == 2)
    {
      tree_for_jobj = 0;
    }

    else
    {
      tree_for_jobj = v8;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v10 = v34;
    if (v34)
    {
      goto LABEL_27;
    }

    if (v33)
    {
      sub_100062860();
    }

    *v25 = 0;
    v30 = v36 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v28 = 3808;
    v29 = 8;
    v11 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x5B8D365AuLL);
    if (!v11)
    {
      break;
    }

    tree_for_jobj = get_tree_for_jobj(a1, a2, 7u, v25);
    if (!tree_for_jobj)
    {
      tree_for_jobj = tree_lookup(*v25, qword_100103A20, 0, &v30, &v29, v29, v11, &v28);
    }

    if (tree_for_jobj == 2)
    {
      free(v11);
      fsck_printf_err("missing crypto state object (id %llu) referenced by %u file extents / dstreams\n", v36, HIDWORD(v33));
      fsck_fail_func(0x345, 92);
      if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
      {
        *(a2 + 13) = 1;
      }

      else
      {
        v13 = v36;
        v14 = v35;
        if (v36 == v35)
        {
          sub_10006288C();
        }

        v6 = sub_100061D04(a1, a2, a3, v36, v36);
        if (v6)
        {
          goto LABEL_3;
        }

        if (v14)
        {
          v6 = sub_100061D04(a1, a2, a3, v13, v14);
          if (v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      if (tree_for_jobj)
      {
        goto LABEL_40;
      }

      LOBYTE(v34) = 1;
      v12 = HIDWORD(v33) + *v11 < 0;
      LODWORD(v33) = *v11;
      HIDWORD(v33) += v33;
      if (v12)
      {
        sub_1000628B8();
      }

      free(v11);
    }

    v10 = v34;
LABEL_27:
    if ((v10 & 1) != 0 && v36 != 4)
    {
      if (HIDWORD(v33))
      {
        if (v33 >= HIDWORD(v33))
        {
          if (v33 <= HIDWORD(v33))
          {
            sub_1000628E4();
          }

          fsck_printf_warn("refcnt (%u) of crypto state object (id %llu) is greater than expected (%u)\n", v33, v36, HIDWORD(v33));
          fsck_fail_func(0x348, -8);
          v30 = v36 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v26 = 0;
          *&v25[4] = 0;
          v27 = 0;
          *v25 = HIDWORD(v33);
          v15 = &v30;
          v16 = v25;
          v17 = a3;
          v18 = 1;
          v19 = 22;
          v20 = 0;
        }

        else
        {
          fsck_printf_err("refcnt (%u) of crypto state object (id %llu) is less than expected (%u)\n", v33, v36, HIDWORD(v33));
          fsck_fail_func(0x347, 92);
          v30 = v36 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v26 = 0;
          *&v25[4] = 0;
          v27 = 0;
          *v25 = HIDWORD(v33);
          v15 = &v30;
          v16 = v25;
          v17 = a3;
          v18 = 1;
          v19 = 22;
          v20 = 1;
        }
      }

      else
      {
        fsck_printf_warn("found orphan crypto state object (id %llu, refcnt %u)\n", v36, v33);
        fsck_fail_func(0x346, -8);
        *v25 = v36 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
        v15 = v25;
        v17 = a3;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v16 = 0;
      }

      v6 = sub_10006150C(v17, v18, v19, v20, v15, v16);
      if (v6)
      {
        goto LABEL_3;
      }
    }

    v23 = 24;
    v24 = 8;
    v8 = tree_lookup(&unk_100103A28, 0, 2, &v36, &v24, 8, &v33, &v23);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  tree_for_jobj = 12;
LABEL_40:
  free(v11);
  v21 = v36;
  v22 = strerror(tree_for_jobj);
  fsck_printf_err("failed to look up crypto state object (id %llu): %s\n", v21, v22);
  fsck_fail_func(0x3EE, tree_for_jobj);
LABEL_9:
  tree_destroy(&unk_100103A28, 0);
  return tree_for_jobj;
}

uint64_t sub_100061C30(uint64_t a1)
{
  if (qword_100103A80)
  {
    v1 = qword_100103A80 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = xmmword_100103A68;
  v4 = qword_100103A78;
  v5 = qword_100103A80;
  if (qword_100103A80 == 4 || v3 == 0 && (BYTE8(v3) & 1) != 0 || v3 != DWORD1(v3))
  {
    result = tree_insert(&unk_100103A28, 0, &v5, 8, &v3, 24);
    goto LABEL_9;
  }

  result = tree_remove(&unk_100103A28, 0, &v5, 8);
  if (result != 2)
  {
LABEL_9:
    if (result)
    {
      return result;
    }
  }

  result = 0;
  qword_100103A80 = 0;
  return result;
}

uint64_t sub_100061D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  LODWORD(v10) = get_tree_for_jobj(a1, a2, 3u, &v30);
  v11 = malloc_type_calloc(1uLL, 0x340uLL, 0x8A1E9A27uLL);
  v12 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x829F47D7uLL);
  v13 = v12;
  if (v10 || !v11 || !v12)
  {
    if (v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = 12;
    }

    fsck_printf_err("unable to allocate memory to repair missing crypto state\n");
    v16 = 1084;
LABEL_13:
    fsck_fail_func(v16, v10);
    goto LABEL_14;
  }

  v28 = 3808;
  v29 = 8;
  *v11 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v14 = tree_lookup(v30, qword_100103A20, 0, v11, &v29, 8, v12, &v28);
  if (!v14)
  {
LABEL_7:
    tree_for_jobj = get_tree_for_jobj(a1, a2, 6u, &v30);
    if (!tree_for_jobj)
    {
      v27 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      v25 = 8;
      v26 = 0;
      v24 = 4;
      v18 = tree_lookup(v30, 0, 0, &v27, &v25, 8, &v26, &v24);
      if (v18 == 2)
      {
        goto LABEL_28;
      }

      v10 = v18;
      if (v18)
      {
        goto LABEL_14;
      }

      if (v11)
      {
        v19 = v13[1];
        v20 = v19 == a5;
        v21 = v19 == a5 ? v11 : 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = sub_100061F80(a1, a2, a3, a5, v21, v13, v28, a4);
      if (!v22)
      {
        v23 = !v11 || v20;
        if (v23 || (v22 = sub_100061F80(a1, a2, a3, v13[1], v11, v13, v28, a4), !v22))
        {
LABEL_28:
          v33 = a1;
          v34 = a2;
          v35 = a3;
          v36 = v11;
          v37 = v13;
          v38 = a4;
          v31 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
          v32 = 0;
          v22 = fsroot_iterate(a1, a2, 0, 1, &v31, 10, sub_10006246C);
        }
      }

      v10 = v22;
      goto LABEL_14;
    }

    v10 = tree_for_jobj;
    fsck_printf_err("unable to get fsroot tree to repair missing crypto state\n");
    v16 = 1158;
    goto LABEL_13;
  }

  v10 = v14;
  if (v14 == 2)
  {
    v11 = 0;
    goto LABEL_7;
  }

LABEL_14:
  free(v11);
  free(v13);
  return v10;
}

uint64_t sub_100061F80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a5)
  {
    v15 = *(a6 + 80) & 0xF000;
    v37 = 0;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0;
    if (v15 == 0x8000)
    {
      xfield = get_xfield((a6 + 92), a7 - 92, 8, &v37, &v33, 0, 0);
      if (xfield)
      {
LABEL_6:
        v17 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v18 = strerror(xfield);
        fsck_printf_err("failed to get inode (id %llu) dstream: %s\n", v17, v18);
        fsck_fail_func(0x43B, xfield);
        return xfield;
      }

      if (v33 < 0x28u)
      {
        xfield = 34;
        goto LABEL_6;
      }

      v26 = *(v37 + 4);
      v27 = v37[1];
      v34 = *v37;
      v35 = v27;
      v36 = v26;
      v20 = 1;
      v19 = v27;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v37 = 0;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0;
  }

  if (v19 == a8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v30 = 0;
  v31 = 0;
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a8;
  BYTE4(v30) = v21;
  v32 = 0;
  if (v21 == 1)
  {
    LODWORD(v30) = *(a6 + 60);
  }

  v29[0] = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v29[1] = 0;
  v22 = fsroot_iterate(a1, a2, 0, 1, v29, 16, sub_1000621DC);
  if (v22)
  {
    return v22;
  }

  if (v21)
  {
    v24 = v31;
    if (!v31)
    {
      v24 = -1;
    }

    *&v35 = v24;
    fsck_printf_warn("found dstream (id %llu) with missing crypto state object (id %llu)\n", a4, a8);
    v22 = sub_100062364(a3, 14, a5, &v34, 0x28u);
    if (v22)
    {
      return v22;
    }

    if (v31)
    {
      v28 = v31 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
      v22 = sub_10006150C(a3, 1, 23, 1, &v28, 0);
      if (v22)
      {
        return v22;
      }
    }
  }

  v25 = v32 ? v20 : 0;
  if (v25 == 1 && (v22 = sub_100062364(a3, 16, a5, &v32, 8u), v22))
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000621DC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3[2];
  if (v7 == a5[3])
  {
    v9 = a3[1];
    if (v9)
    {
      v9 = *a3 & 0xFFFFFFFFFFFFFFLL;
    }

    v10 = a5[6];
    v11 = __CFADD__(v10, v9);
    v12 = v10 + v9;
    a5[6] = v12;
    if (v11)
    {
      fsck_printf_warn("sparse bytes overflow (current %llu, update %llu)\n", v12, v9);
      fsck_fail_func(0x43A, 92);
      v7 = a5[3];
    }

    fsck_printf_err("found fext (id %llu) with missing crypto state object (id %llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v7);
    v13 = a5[2];
    if (v13)
    {
      v15 = *a5;
      v14 = a5[1];
      result = fsck_repairs_add(v13, 7u, 1, 0xBu, 1, a1, 0x10u, a3, 0x18u);
      if (!result)
      {
        v17 = a3[1];
        v18 = (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(v15 + 8) + 36);

        return file_extent_unregister(v14, v17, v18);
      }
    }

    else
    {

      return print_snapshot_warning();
    }
  }

  else if (*(a5 + 36) == 1 && (v7 ? (v19 = a5[5] == 0) : (v19 = 0), v19))
  {
    v20 = 0;
    result = sub_1000623B8(*a5, a5[1], v7, *(a5 + 8), &v20);
    if (!result && v20 == 1)
    {
      a5[5] = a3[2];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100062364(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, unsigned int a5)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, 1, a2, 1, a3, 8u, a4, a5);
  }

  return print_snapshot_warning();
}

uint64_t sub_1000623B8(uint64_t a1, void *a2, uint64_t a3, int a4, _BYTE *a5)
{
  v15 = 0;
  result = get_tree_for_jobj(a1, a2, 7u, &v15);
  if (!result)
  {
    v13 = 0;
    v14 = a3 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v11 = 0;
    v12 = 0;
    v9 = 24;
    v10 = 8;
    LODWORD(result) = tree_lookup(v15, qword_100103A20, 0, &v14, &v10, 8, &v11, &v9);
    if (!result && (BYTE4(v12) & 0x1F) == a4)
    {
      *a5 = 1;
    }

    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10006246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if ((*a3 & 1) == 0)
  {
    return 0;
  }

  v27[7] = v5;
  v27[8] = v6;
  if (*(a3 + 28) != a5[5])
  {
    return 0;
  }

  v10 = *(a3 + 4);
  v11 = (a1 + 10);
  fsck_printf_warn("found xattr (id %llu, name %.*s) with missing crypto state\n", *a1 & 0xFFFFFFFFFFFFFFFLL, *(a1 + 8), (a1 + 10));
  v25 = 0;
  v26 = 0;
  v12 = *a5;
  v13 = a5[1];
  v23[2] = *a5;
  v23[3] = v13;
  v23[4] = a5[5];
  v24 = 0;
  v14 = a5[3];
  v24 = v14 != 0;
  if (v14)
  {
    HIDWORD(v24) = *(a5[4] + 60);
  }

  v23[0] = v10 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v23[1] = 0;
  result = fsroot_iterate(v12, v13, 0, 1, v23, 16, sub_1000626B8);
  if (!result)
  {
    v15 = v25;
    v27[0] = v25;
    if (*(a1 + 8) == 23)
    {
      v16 = strncmp(v11, "com.apple.ResourceFork", 0x17uLL);
      v17 = v16 == 0;
      if (v15)
      {
        goto LABEL_14;
      }

      if (!v16)
      {
        v17 = 1;
        LOBYTE(v26) = 1;
        goto LABEL_15;
      }
    }

    else if (v25)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v17 = 0;
    v27[0] = -1;
LABEL_14:
    if ((v26 & 1) == 0)
    {
      return sub_100062754(a5[2], 1, 25, a1, v27, 8u);
    }

LABEL_15:
    result = sub_100062754(a5[2], 0, 0, a1, 0, 0);
    if (result)
    {
      return result;
    }

    v18 = a5[3];
    if (v18)
    {
      if (v17)
      {
        v21 = 0x8000;
        result = sub_100062364(a5[2], 17, v18, &v21, 8u);
        if (result)
        {
          return result;
        }

        v22 = 0x4000;
        v18 = a5[3];
LABEL_28:
        result = sub_100062364(a5[2], 18, v18, &v22, 8u);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v19 = *(a1 + 8);
      if (v19 == 21)
      {
        if (!strncmp(v11, "com.apple.FinderInfo", 0x15uLL))
        {
          v20 = 256;
          goto LABEL_27;
        }
      }

      else if (v19 == 26 && !strncmp(v11, "com.apple.system.Security", 0x1AuLL))
      {
        v20 = 64;
LABEL_27:
        v22 = v20;
        goto LABEL_28;
      }
    }

    return 0;
  }

  return result;
}
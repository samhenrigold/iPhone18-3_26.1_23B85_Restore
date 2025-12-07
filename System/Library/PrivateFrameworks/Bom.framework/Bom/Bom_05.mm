_DWORD *data_archive_entry_get_data_type(_DWORD *result)
{
  if (result)
  {
    if (*result == 1684369012 && result[30] == 1953391972)
    {
      return result[5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_archive_entry_path(uint64_t result)
{
  if (result)
  {
    if (*result == 1684369012 && *(result + 120) == 1953391972)
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_archive_entry_dev(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[8];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_inode(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_nlink(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 60);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t data_archive_entry_mode(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t data_archive_entry_uid(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[13];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_gid(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[14];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_size(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 80);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_atime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 88);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_atime_nsec(_DWORD *a1)
{
  if (!a1 || *a1 != 1684369012)
  {
    return -1;
  }

  if (a1[30] == 1953391972)
  {
    return 0;
  }

  return -1;
}

uint64_t data_archive_entry_mtime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 72);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_ctime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 96);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_compressed_size(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 112);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_crc32(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[27];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_is_streamed(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    v1 = *(a1 + 105);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

time_t convert_dos_to_unix_time(uint64_t a1, unsigned int a2, unsigned int a3)
{
  memset(&v7, 0, sizeof(v7));
  platform_memset(*(a1 + 8), &v7, 0, 0x38uLL);
  v7.tm_mon = ((a2 >> 5) & 0xF) - 1;
  v7.tm_year = (a2 >> 9) + 80;
  v7.tm_hour = a3 >> 11;
  v7.tm_mday = a2 & 0x1F;
  v7.tm_sec = 2 * (a3 & 0x1F);
  v7.tm_min = (a3 >> 5) & 0x3F;
  v7.tm_isdst = -1;
  return platform_mktime(*(a1 + 8), &v7);
}

void *BOMStreamWithBlockID(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  if (a3 > 0xE8D4A51000)
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu");
    return 0;
  }

  v8 = BOMStorageSizeOfBlock(a1, a2);
  if (!(a3 | v8))
  {
    return 0;
  }

  v9 = v8;
  v10 = BOM_malloczero(0x58uLL);
  if (!v10)
  {
    v16 = *MEMORY[0x277D85DF8];
    v17 = __error();
    strerror(*v17);
    fprintf(v16, "malloc: %s\n");
    return 0;
  }

  v11 = v10;
  v10[1] = 1;
  *(v10 + 10) = BOMStorageGetSys(a1);
  *v11 = 0;
  *(v11 + 8) = a1;
  *(v11 + 16) = a2;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v9;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = a4;
  if (v9 <= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v9;
  }

  v14 = BOM_malloczero(v13);
  *(v11 + 48) = v14;
  if (!v14)
  {
    v18 = *MEMORY[0x277D85DF8];
    v19 = __error();
    v20 = strerror(*v19);
    fprintf(v18, "malloc: %s\n", v20);
LABEL_17:
    BOMStreamFree(v11);
    return 0;
  }

  *(v11 + 72) = 1;
  v15 = &v14[*(v11 + 32)];
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  if ((*(v11 + 40) | 2) == 2 && BOMStorageCopyFromBlock(a1, a2, v14))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t BOMStreamFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 73) && BOMStreamFlush(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        if (*(v1 + 72))
        {
          free(v2);
        }
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMStreamWithFileAndSys(int a1, uint64_t a2, size_t a3, int a4, char *a5, void *a6)
{
  v6 = a3;
  if (a3 > 0xE8D4A51000)
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu");
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v12 = BOM_malloczero(0x58uLL);
  if (!v12)
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = __error();
    strerror(*v15);
    fprintf(v14, "malloc: %s\n");
    return 0;
  }

  v13 = v12;
  if (!a6)
  {
    a6 = BomSys_default();
  }

  *(v13 + 80) = a6;
  *v13 = 0x100000001;
  *(v13 + 20) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v6;
  *(v13 + 40) = a4;
  if (a5)
  {
    *(v13 + 48) = a5;
    *(v13 + 72) = 0;
  }

  else
  {
    v16 = BOM_malloczero(v6);
    *(v13 + 48) = v16;
    if (!v16)
    {
      v17 = "malloc: %s\n";
      goto LABEL_19;
    }

    a5 = v16;
    *(v13 + 72) = 1;
    v6 = *(v13 + 32);
    a4 = *(v13 + 40);
  }

  *(v13 + 56) = a5;
  *(v13 + 64) = &a5[v6];
  if ((a4 | 2) == 2)
  {
    if ((*(a6 + 8))(*(a6 + 1), *(v13 + 20), *(v13 + 24), 0) == -1)
    {
      v17 = "lseek: %s\n";
      goto LABEL_19;
    }

    if ((*(a6 + 6))(*(a6 + 1), *(v13 + 20), *(v13 + 48), *(v13 + 32)) != *(v13 + 32))
    {
      v17 = "read: %s\n";
LABEL_19:
      v18 = *MEMORY[0x277D85DF8];
      v19 = __error();
      v20 = strerror(*v19);
      fprintf(v18, v17, v20);
      BOMStreamFree(v13);
      return 0;
    }
  }

  return v13;
}

void *BOMStreamWithAddress(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0xE8D4A51000)
  {
    if (a2)
    {
      v4 = a3;
      result = BOM_malloczero(0x58uLL);
      if (result)
      {
        *result = 0x100000002;
        result[4] = a2;
        *(result + 10) = v4;
        *(result + 72) = 0;
        result[6] = a1;
        result[7] = a1;
        result[8] = a1 + a2;
        return result;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      strerror(*v8);
      fprintf(v7, "malloc: %s\n", v9);
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu", a3);
  }

  return 0;
}

uint64_t BOMStreamFlush(int *a1)
{
  if (a1)
  {
    if (!a1[10])
    {
      goto LABEL_12;
    }

    v2 = *a1;
    if (*a1 == 2)
    {
      goto LABEL_12;
    }

    if (v2 != 1)
    {
      if (!v2)
      {
        v3 = BOMStorageSetBlockData(*(a1 + 1), a1[4], *(a1 + 6), *(a1 + 4));
LABEL_13:
        *(a1 + 73) = 0;
        return v3;
      }

      fprintf(*MEMORY[0x277D85DF8], "unknown stream type: %d\n", *a1);
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    if ((*(*(a1 + 10) + 64))(*(*(a1 + 10) + 8), a1[5], *(a1 + 3), 0) == -1)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      strerror(*v8);
      fprintf(v7, "lseek: %s\n");
    }

    else
    {
      if ((*(*(a1 + 10) + 56))(*(*(a1 + 10) + 8), a1[5], *(a1 + 6), *(a1 + 4)) == *(a1 + 4))
      {
        goto LABEL_12;
      }

      v4 = *MEMORY[0x277D85DF8];
      v5 = __error();
      strerror(*v5);
      fprintf(v4, "write: %s\n");
    }

    return 1;
  }

  v3 = 1;
  fwrite("bad stream!\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
  return v3;
}

uint64_t BOMStreamGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t BOMStreamSetByteOrder(uint64_t a1, unsigned int a2)
{
  result = 1;
  if (a1)
  {
    if (a2 <= 2)
    {
      result = 0;
      *(a1 + 4) = a2;
    }
  }

  return result;
}

uint64_t BOMStreamGetByteOrder(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

unint64_t BOMStreamReadUInt64(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 356;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = bswap64(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt32(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 378;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = bswap32(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt16(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 400;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = __rev16(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *__error();
    v2 = "read called on write-only buffer!\n";
    v3 = 0;
    v4 = 422;
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = v5 + 1;
    if ((v5 + 1) <= *(a1 + 64))
    {
      v7 = *v5;
      *(a1 + 56) = v6;
      return v7;
    }

    v1 = *__error();
    v2 = "buffer overflow!";
    v3 = 1;
    v4 = 604;
  }

  _BOMExceptionHandlerCall(v2, v3, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v4, v1);
  return 0;
}

void *BOMStreamReadBuffer(uint64_t a1, void *__dst, size_t __len)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *__error();
    v4 = "read called on write-only buffer!\n";
    v5 = 0;
    v6 = 441;
  }

  else if (__len < 0xE8D4A51001)
  {
    v9 = *(a1 + 56);
    if (v9 + __len <= *(a1 + 64))
    {
      result = memmove(__dst, v9, __len);
      *(a1 + 56) += __len;
      return result;
    }

    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 604;
  }

  else
  {
    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 599;
  }

  return _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v6, v3);
}

uint64_t BOMStreamReadAddress(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 464;
  }

  else if (*a1 == 2)
  {
    if (a2 < 0xE8D4A51001)
    {
      v6 = *(a1 + 56);
      if (v6 + a2 <= *(a1 + 64))
      {
        *(a1 + 56) = v6 + a2;
        return v6;
      }

      v2 = *__error();
      v3 = "buffer overflow!";
      v4 = 1;
      v5 = 604;
    }

    else
    {
      v2 = *__error();
      v3 = "buffer overflow!";
      v4 = 1;
      v5 = 599;
    }
  }

  else
  {
    v2 = *__error();
    v3 = "BOMStreamReadAddress: bad buffer type!\n";
    v4 = 0;
    v5 = 468;
  }

  _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
  return 0;
}

uint64_t BOMStreamWriteUInt32(uint64_t result, unsigned int a2)
{
  v2 = bswap32(a2);
  if (*(result + 4) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 40))
  {
    v4 = *(result + 56);
    if ((v4 + 1) <= *(result + 64))
    {
      *v4 = v3;
      *(result + 56) += 4;
      *(result + 73) = 1;
      return result;
    }

    v5 = *__error();
    v6 = "buffer overflow!";
    v7 = 1;
    v8 = 614;
  }

  else
  {
    v5 = *__error();
    v6 = "write called on read-only buffer!\n";
    v7 = 0;
    v8 = 500;
  }

  return _BOMExceptionHandlerCall(v6, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v8, v5);
}

uint64_t BOMStreamWriteUInt16(uint64_t result, __int16 a2)
{
  v2 = __rev16(a2);
  if (*(result + 4) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 40))
  {
    v4 = *(result + 56);
    if ((v4 + 1) <= *(result + 64))
    {
      *v4 = v3;
      *(result + 56) += 2;
      *(result + 73) = 1;
      return result;
    }

    v5 = *__error();
    v6 = "buffer overflow!";
    v7 = 1;
    v8 = 614;
  }

  else
  {
    v5 = *__error();
    v6 = "write called on read-only buffer!\n";
    v7 = 0;
    v8 = 527;
  }

  return _BOMExceptionHandlerCall(v6, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v8, v5);
}

uint64_t BOMStreamWriteUInt8(uint64_t result, char a2)
{
  if (*(result + 40))
  {
    v2 = *(result + 56);
    if ((v2 + 1) <= *(result + 64))
    {
      *v2 = a2;
      ++*(result + 56);
      *(result + 73) = 1;
      return result;
    }

    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 614;
  }

  else
  {
    v3 = *__error();
    v4 = "write called on read-only buffer!\n";
    v5 = 0;
    v6 = 545;
  }

  return _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v6, v3);
}

void *BOMStreamWriteBuffer(uint64_t a1, const void *a2, size_t __len)
{
  if (*(a1 + 40))
  {
    if (__len < 0xE8D4A51001)
    {
      v9 = *(a1 + 56);
      if (v9 + __len <= *(a1 + 64))
      {
        result = memmove(v9, a2, __len);
        *(a1 + 56) += __len;
        *(a1 + 73) = 1;
        return result;
      }

      v4 = *__error();
      v5 = "buffer overflow!";
      v6 = 1;
      v7 = 614;
    }

    else
    {
      v4 = *__error();
      v5 = "buffer overflow!";
      v6 = 1;
      v7 = 609;
    }
  }

  else
  {
    v4 = *__error();
    v5 = "write called on read-only buffer!\n";
    v6 = 0;
    v7 = 563;
  }

  return _BOMExceptionHandlerCall(v5, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v7, v4);
}

uint64_t BOMStreamAdvance(uint64_t result, unint64_t a2)
{
  if (a2 < 0xE8D4A51001)
  {
    v4 = *(result + 56) + a2;
    if (v4 <= *(result + 64))
    {
      *(result + 56) = v4;
      return result;
    }

    v2 = *__error();
    v3 = 614;
  }

  else
  {
    v2 = *__error();
    v3 = 609;
  }

  return _BOMExceptionHandlerCall("buffer overflow!", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v3, v2);
}

char *BOMBomEnumeratorNewWithOptions(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = 0;
  if (a1)
  {
    if (a3)
    {
      v7 = BOM_malloczero(0x440uLL);
      v3 = v7;
      if (v7)
      {
        v21 = 0;
        *(v7 + 11) = a3;
        *v7 = a1;
        *(v7 + 1) = BOMBomPathsTree(a1);
        *(v3 + 2) = BOMStackNew();
        *(v3 + 3) = BOMStackNew();
        v8 = BOMStackNew();
        *(v3 + 4) = v8;
        if (!*(v3 + 2) || !*(v3 + 3) || !v8)
        {
          goto LABEL_20;
        }

        RootFSObject = a2;
        if (!a2)
        {
          RootFSObject = BOMBomGetRootFSObject(a1);
          if (!RootFSObject)
          {
            v3[49] = 1;
            return v3;
          }
        }

        v10 = BOMFSObjectParentPathID(RootFSObject);
        v11 = BOMFSObjectShortName(RootFSObject);
        v12 = BOMFSObjectPathName(RootFSObject);
        v3[48] = BOMFSObjectType(RootFSObject) == 2;
        v13 = strlen(v12);
        memmove(v3 + 50, v12, v13);
        *(v3 + 135) = &v3[v13 + 50];
        v14 = BOMNewPathKey(v10, v11, &v21);
        if ((a3 & 4) != 0)
        {
          Value = BOMTreeGetValue(*(v3 + 1), v14, v21);
          free(v14);
          v10 = BOMPathIDFromPathKey(Value);
          v14 = BOMNewPathKey(v10, "", &v21);
        }

        if (!a2)
        {
          BOMFSObjectFree(RootFSObject);
        }

        v16 = BOMTreeIteratorNew(*(v3 + 1), v14, v21, 0);
        free(v14);
        if (v16)
        {
          BOMStackPush(*(v3 + 3), v16);
          BOMStackPush(*(v3 + 2), v10);
          BOMStackPush(*(v3 + 4), 0);
          *(v3 + 10) = v10;
          if ((a3 & 4) == 0)
          {
            v17 = (*(v3 + 135) - 1);
            while (1)
            {
              v18 = v17 + 1;
              if (v17 + 1 <= v3 + 50)
              {
                break;
              }

              *(v3 + 135) = v17;
              v19 = *v17--;
              if (v19 == 47)
              {
                v18 = v17 + 1;
                break;
              }
            }

            *v18 = 0;
          }
        }

        else
        {
LABEL_20:
          BOMBomEnumeratorFree(v3);
          return 0;
        }
      }
    }
  }

  return v3;
}

void BOMBomEnumeratorFree(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      BOMStackFree(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      while (!BOMStackIsEmpty(v3))
      {
        v4 = BOMStackPop(*(a1 + 3));
        BOMTreeIteratorFree(v4);
        v3 = *(a1 + 3);
      }

      BOMStackFree(*(a1 + 3));
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      BOMStackFree(v5);
    }

    free(a1);
  }
}

_DWORD *BOMBomEnumeratorNext(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!a1 || *(a1 + 49))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v53 = 0;
  v7 = a1 + 50;
  v8 = 1;
  do
  {
    while (1)
    {
      v9 = BOMStackPeek(*(a1 + 24));
      if (!v9)
      {
        FSObjectWithBlockID = 0;
        *(a1 + 49) = 1;
        return FSObjectWithBlockID;
      }

      v10 = v9;
      v11 = BOMStackPeek(*(a1 + 32));
      v12 = 0;
      if (v11 > 1)
      {
        break;
      }

      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_66;
        }

        if (BOMTreeIteratorIsAtEnd(v10))
        {
          v13 = (*(a1 + 1080) - 1);
          while (1)
          {
            v14 = v13 + 1;
            if ((v13 + 1) <= v7)
            {
              break;
            }

            *(a1 + 1080) = v13;
            v15 = *v13--;
            if (v15 == 47)
            {
              goto LABEL_63;
            }
          }

LABEL_64:
          *v14 = 0;
LABEL_65:
          BOMStackPoke(*(a1 + 32), 3);
          v12 = 0;
          goto LABEL_66;
        }

        v36 = BOMTreeIteratorKey(v10);
        v6 = BOMPathIDFromPathKey(v36);
        if (v6 != BOMStackPeek(*(a1 + 16)))
        {
          v13 = (*(a1 + 1080) - 1);
          while (1)
          {
            v14 = v13 + 1;
            if ((v13 + 1) <= v7)
            {
              goto LABEL_64;
            }

            *(a1 + 1080) = v13;
            v41 = *v13--;
            if (v41 == 47)
            {
LABEL_63:
              v14 = v13 + 1;
              goto LABEL_64;
            }
          }
        }

        v37 = strrchr((a1 + 50), 47);
        if (v37)
        {
          v38 = v37;
          if (*v37)
          {
            v39 = BOMShortNameFromPathKey(v36);
            if (strcmp(v38 + 1, v39))
            {
              v13 = (*(a1 + 1080) - 1);
              while (1)
              {
                v14 = v13 + 1;
                if ((v13 + 1) <= v7)
                {
                  goto LABEL_64;
                }

                *(a1 + 1080) = v13;
                v40 = *v13--;
                if (v40 == 47)
                {
                  goto LABEL_63;
                }
              }
            }
          }
        }

        v42 = BOMTreeIteratorValue(v10);
        v5 = BOMPathIDFromPathKey(v42);
        v43 = BOMNewPathKey(v5, "", &v53);
        v44 = BOMTreeIteratorNew(*(a1 + 8), v43, v53, 0);
        free(v43);
        BOMStackPush(*(a1 + 16), v5);
        BOMStackPush(*(a1 + 24), v44);
        BOMStackPush(*(a1 + 32), 0);
      }

      else
      {
        if (BOMTreeIteratorIsAtEnd(v10))
        {
          goto LABEL_65;
        }

        v16 = BOMTreeIteratorKey(v10);
        v6 = BOMPathIDFromPathKey(v16);
        if (v6 != BOMStackPeek(*(a1 + 16)))
        {
          goto LABEL_65;
        }

        v12 = *(a1 + 44) & 1;
        if (v12)
        {
          v8 = 1;
        }

        v17 = BOMShortNameFromPathKey(v16);
        v18 = strlen(v17);
        v19 = v18;
        v20 = *(a1 + 1080);
        if (&v20[v18 - v7] >= 1024)
        {
          v51 = BOMExceptionHandlerMessage("%lu + %p - %p > %d", v18, v20, (a1 + 50), 1024);
          v52 = __error();
          _BOMFatalException(v51, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBomEnumerator.c", 75, *v52);
        }

        if (v20 != v7)
        {
          *(a1 + 1080) = v20 + 1;
          *v20 = 47;
          **(a1 + 1080) = 0;
        }

        if (__strlcat_chk() >= 0x401)
        {
          v49 = BOMExceptionHandlerMessage("strlcat(%p, %s, %lu) >= %lu)", (a1 + 50), v17, 1025, 1025);
          v50 = __error();
          _BOMFatalException(v49, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBomEnumerator.c", 83, *v50);
        }

        *(a1 + 1080) += v19;
        if (v12)
        {
          __strlcpy_chk();
        }

        v21 = BOMTreeIteratorValue(v10);
        v5 = BOMPathIDFromPathKey(v21);
        v4 = BOMBlockIDFromPathValue(v21);
        v22 = BOMTreeStorage(*(a1 + 8));
        v23 = BOMStorageSizeOfBlock(v22, v4);
        v24 = BOM_malloc(v23);
        v25 = BOMTreeStorage(*(a1 + 8));
        if (BOMStorageCopyFromBlock(v25, v4, v24))
        {
          goto LABEL_66;
        }

        v26 = BOMFSObjectTypeFromRawData(v24);
        free(v24);
        if (v26 != 2 || (*(a1 + 44) & 4) != 0)
        {
          goto LABEL_44;
        }

        v27 = *(a1 + 32);
        v28 = 1;
LABEL_45:
        BOMStackPoke(v27, v28);
        if (v12)
        {
          goto LABEL_72;
        }
      }
    }

    if (v11 == 2)
    {
      if (BOMTreeIteratorIsAtEnd(v10) || (v29 = BOMTreeIteratorKey(v10), v6 = BOMPathIDFromPathKey(v29), v6 != BOMStackPeek(*(a1 + 16))))
      {
        v12 = 0;
      }

      else
      {
        if ((*(a1 + 44) & 2) != 0)
        {
          v45 = BOMTreeIteratorKey(v10);
          v6 = BOMPathIDFromPathKey(v45);
          v46 = BOMTreeIteratorValue(v10);
          v5 = BOMPathIDFromPathKey(v46);
          v4 = BOMBlockIDFromPathValue(v46);
          __strlcpy_chk();
          v8 = 2;
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        BOMTreeIteratorNext(v10);
      }

      v30 = (*(a1 + 1080) - 1);
      while (1)
      {
        v31 = v30 + 1;
        if ((v30 + 1) <= v7)
        {
          break;
        }

        *(a1 + 1080) = v30;
        v32 = *v30--;
        if (v32 == 47)
        {
          v31 = v30 + 1;
          break;
        }
      }

      *v31 = 0;
LABEL_42:
      if (!BOMTreeIteratorIsAtEnd(v10))
      {
        if (*(a1 + 48))
        {
          v34 = BOMStackPeek(*(a1 + 16));
          v35 = BOMTreeIteratorKey(v10);
          if (BOMPathIDFromPathKey(v35) == v34 && ((*(a1 + 44) & 4) != 0 || *(a1 + 40) != BOMStackPeek(*(a1 + 16))))
          {
            v27 = *(a1 + 32);
            v28 = 0;
            goto LABEL_45;
          }
        }
      }

      v33 = BOMStackPop(*(a1 + 24));
      BOMTreeIteratorFree(v33);
      BOMStackPop(*(a1 + 16));
      BOMStackPop(*(a1 + 32));
LABEL_44:
      v27 = *(a1 + 32);
      v28 = 2;
      goto LABEL_45;
    }

    if (v11 == 3)
    {
      goto LABEL_42;
    }

LABEL_66:
    ;
  }

  while (!v12);
LABEL_72:
  FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(*a1, v4);
  if (FSObjectWithBlockID)
  {
    v47 = __s;
    v48 = strrchr(__s, 47);
    if (v48)
    {
      v47 = v48 + 1;
    }

    BOMFSObjectSetPathName(FSObjectWithBlockID, __s, 1);
    BOMFSObjectSetShortName(FSObjectWithBlockID, v47, 1);
    BOMFSObjectSetPathID(FSObjectWithBlockID, v5);
    BOMFSObjectSetParentPathID(FSObjectWithBlockID, v6);
    BOMFSObjectSetBlockID(FSObjectWithBlockID, v4);
    BOMFSObjectSetVisitOrder(FSObjectWithBlockID, v8);
  }

  return FSObjectWithBlockID;
}

void *BOMBomEnumeratorSkip(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 49))
    {
      result = BOMStackPeek(result[4]);
      if (result == 1)
      {
        v2 = v1[4];

        return BOMStackPoke(v2, 2);
      }
    }
  }

  return result;
}

uint64_t BOMBomEnumeratorSkipAll(uint64_t result)
{
  if (result)
  {
    if (!*(result + 49))
    {
      *(result + 44) |= 4u;
    }
  }

  return result;
}

uint64_t BOMAppleDoublePathToADPath(char *a1, char *__s)
{
  result = 0xFFFFFFFFLL;
  if (a1 && __s)
  {
    v5 = a1;
    if (a1 == __s)
    {
      v6 = strlen(__s);
      v7 = BOM_malloc(v6 + 1);
      if (!v7)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = v7;
      strlcpy(v7, __s, v6 + 1);
    }

    v8 = rindex(v5, 47);
    if (v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v5;
    }

    *__s = 0;
    if (v8)
    {
      v10 = v8 - v5 + 1;
      memmove(__s, v5, v10);
      __s[v10] = 0;
    }

    strlcat(__s, "._", 0x400uLL);
    strlcat(__s, v9, 0x400uLL);
    if (a1 == __s)
    {
      free(v5);
    }

    return 0;
  }

  return result;
}

uint64_t BOMAppleDoubleADPathToPath(char *a1, void *a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v5 = rindex(a1, 47);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = a1;
    }

    v7 = *v6;
    if (v7 == 46)
    {
      v7 = v6[1];
      v8 = 95;
    }

    else
    {
      v8 = 46;
    }

    v9 = &v6[2 * (v8 == v7)];
    if (v5)
    {
      v10 = v5 - a1 + 1;
      memmove(a2, a1, v10);
      *(a2 + v10) = 0;
    }

    strlcat(a2, v9, 0x400uLL);
    return 0;
  }

  return result;
}

uint64_t BOMAppleDoubleIsADFile(const char *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = rindex(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  return *v3 == 46 && *(v3 + 1) == 95;
}

uint64_t BOMAppleDoubleCopyHeader(unsigned int a1, unsigned int a2, void *a3, void *a4)
{
  v8 = BOM_malloc(0x32uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  result = 0;
  *v9 = 0x20007160500;
  *(v9 + 8) = 0uLL;
  *(v9 + 12) = 512;
  *(v9 + 26) = 0x3200000009000000;
  *(v9 + 34) = bswap32(a1);
  LODWORD(v11) = 0x2000000;
  HIDWORD(v11) = bswap32(a1 + 50);
  *(v9 + 38) = v11;
  *(v9 + 46) = bswap32(a2);
  *a3 = v9;
  *a4 = 50;
  return result;
}

uint64_t BOMAppleDoubleWriteHeader(int *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = 0;
  if (BOMAppleDoubleCopyHeader(a2, a3, &v7, &v6))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v6;
  if (BOMFileWrite(a1, v7, v6) == v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMAppleDoubleReadHeaderWithOffsets(int *a1, unsigned int *a2, _DWORD *a3, unsigned int *a4, _DWORD *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a2 && a4)
  {
    v18 = 0;
    v17 = 0;
    *a2 = 0;
    *a4 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    if (BOMFileRead(a1, v19, 0x1AuLL) == 26)
    {
      v11 = v19[0];
      v19[0] = vrev32_s8(v19[0]);
      v12 = v20;
      v20 = __rev16(v20);
      result = 0xFFFFFFFFLL;
      if (*&v11 == 0x20007160500)
      {
        if (v12)
        {
          for (i = 0; i < v20; ++i)
          {
            if (BOMFileRead(a1, &v17, 0xCuLL) != 12)
            {
              return 0xFFFFFFFFLL;
            }

            v14 = vrev32_s8(v17);
            v17 = v14;
            v15 = bswap32(v18);
            v18 = v15;
            if (v14.i32[0] == 2)
            {
              *a4 = v15;
              v16 = a5;
              if (!a5)
              {
                continue;
              }
            }

            else
            {
              if (v14.i32[0] != 9)
              {
                continue;
              }

              *a2 = v15;
              v16 = a3;
              if (!a3)
              {
                continue;
              }
            }

            *v16 = v14.i32[1];
          }
        }

        return 0;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t BOMCPIONew(uint64_t **a1, uint64_t a2, char a3, int a4)
{
  v8 = BOM_malloc(0x468uLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 3) = a4;
    *(v8 + 24) = 0;
    v10 = BOMHardLinkTableNew();
    v9[2] = v10;
    if (v10)
    {
      result = 0;
      *a1 = v9;
      return result;
    }

    BOMCPIOFree(v9);
  }

  return 0xFFFFFFFFLL;
}

void BOMCPIOFree(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      BOMHardLinkTableFree(v2);
    }

    if (*(a1 + 8))
    {
      BOMFileClose(*a1);
    }

    free(a1);
  }
}

uint64_t BOMCPIOWriteHeader(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteHeaderAndData(uint64_t a1, unsigned int *a2, void *a3, int a4, void *a5, int a6)
{
  if ((a2[1] & 0xF000) == 0x8000 && *(a2 + 3) >= 2u)
  {
    v12 = BOMHardLinkTableGet(*(a1 + 16), *a2, *(a2 + 1));
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v19 = *(a1 + 12);
      *(a1 + 12) = v19 + 1;
      *bytes = v19;
      BOMHardLinkTableSet(*(a1 + 16), *a2, *(a2 + 1), bytes, 8);
      LODWORD(v13) = *bytes;
    }
  }

  else
  {
    LODWORD(v13) = *(a1 + 12);
    *(a1 + 12) = v13 + 1;
  }

  *bytes = v13;
  v14 = *(a2 + 2);
  if ((v14 & 0xD000 | 0x2000) == 0xA000)
  {
    v15 = *(a2 + 12);
    if (v15 >> 33)
    {
      *__error() = 27;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
  }

  snprintf((a1 + 25), 0x4DuLL, "%s%06ho%06ho%06ho%06ho%06ho%06ho%06ho%011o%06ho%011llo", "070707", WORD1(v13), v13, v14, *(a2 + 8), *(a2 + 10), *(a2 + 3), *(a2 + 12), *(a2 + 6), a4, v15);
  v16 = a4 + a6 + 76;
  if (v16 < 0x44D)
  {
    v18 = v16;
    memcpy((a1 + 101), a3, a4);
    if (a5)
    {
      memcpy((a1 + 101 + a4), a5, a6);
    }

    if (BOMFileWrite(*a1, (a1 + 25), v18) != v18)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (BOMFileWrite(*a1, (a1 + 25), 0x4CuLL) != 76 || BOMFileWrite(*a1, a3, a4) != a4 || a5 && BOMFileWrite(*a1, a5, a6) != a6)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t BOMCPIOWriteDirectory(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteDevice(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteSymlink(uint64_t a1, char *__s, uint64_t a3, char *a4)
{
  v8 = strlen(__s);
  v9 = *(a3 + 96);
  v10 = strlen(a4);
  *(a3 + 96) = v10;
  result = BOMCPIOWriteHeaderAndData(a1, a3, __s, v8 + 1, a4, v10);
  *(a3 + 96) = v9;
  return result;
}

uint64_t BOMCPIOWriteTerminator(uint64_t *a1)
{
  memset(v8, 0, sizeof(v8));
  WORD3(v8[0]) = 1;
  if (BOMCPIOWriteHeaderAndData(a1, v8, "TRAILER!!!", 11, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 1;
  v3 = BOM_calloc(0x200uLL, 1uLL);
  if (v3)
  {
    v4 = v3;
    v5 = BOMFileUncompressedOffset(*a1);
    if (v5 <= 0)
    {
      v6 = -(-v5 & 0x1FF);
    }

    else
    {
      v6 = v5 & 0x1FF;
    }

    v2 = BOMFileWrite(*a1, v4, 512 - v6) != 512 - v6;
    free(v4);
  }

  return v2;
}

uint64_t BOMCPIOReadHeader(uint64_t a1, char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 4;
  }

  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (BOMFileRead(*a1, v24, 0x4CuLL) != 76)
  {
    return 0xFFFFFFFFLL;
  }

  v24[76] = 0;
  if (sscanf(v24, "%06s%06ho%06ho%06ho%06ho%06ho%06ho%06ho%011o%06ho%011llo", v23, &v21 + 2, &v21, a3 + 4, &v20 + 2, &v20, a3 + 6, &v19, &v18, &v22, &v17) != 11)
  {
    return 3;
  }

  *a3 = HIWORD(v21);
  *(a3 + 8) = v21;
  v7 = v20;
  *(a3 + 16) = HIWORD(v20);
  *(a3 + 20) = v7;
  *(a3 + 24) = v19;
  v8 = v23[0] == 925906736 && *(v23 + 3) == 3616823;
  v9 = v18;
  *(a3 + 96) = v17;
  *(a3 + 116) = 0;
  *(a3 + 32) = v9;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = 0;
  if (!v8 || v22 > 0x400uLL)
  {
    return 3;
  }

  v10 = BOMFileRead(*a1, a2, v22);
  v11 = v22;
  if ((v10 & 0x8000000000000000) != 0 || (v12 = v10, v10 != v22))
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = __error();
    v16 = strerror(*v15);
    fprintf(v14, "can't read path of size %d: %s\n", v11, v16);
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  if (v22)
  {
    result = 3;
    while (a2[v13])
    {
      if (v12 == ++v13)
      {
        return result;
      }
    }
  }

  if (v13 == v12 || a2[v13])
  {
    return 3;
  }

  if (!strcmp(a2, "TRAILER!!!"))
  {
    *(a1 + 24) = 1;
    return 4;
  }

  return _sanitizePath(a2, v12);
}

double BOMCPIOSeek()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v1;
  v4 = v0;
  v9 = *MEMORY[0x277D85DE8];
  if (v5 == 1)
  {
    if (v1)
    {
      do
      {
        if (v3 >= 0x20000)
        {
          v6 = 0x20000;
        }

        else
        {
          v6 = v3;
        }

        v7 = BOMFileRead(*v4, v8, v6);
        if (v7 == -1)
        {
          break;
        }

        if (!v7)
        {
          break;
        }

        v3 -= v7;
      }

      while (v3);
    }
  }

  else
  {

    return BOMFileSeek();
  }

  return result;
}

uint64_t BOMPKZipNew(void *a1, uint64_t a2, char a3)
{
  v6 = BOM_malloczero(0x58uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *v6 = a2;
  v6[8] = a3;
  *(v6 + 12) = 16;
  v8 = BOM_calloc(0x10uLL, 0x40uLL);
  *(v7 + 5) = v8;
  if (!v8)
  {
    return 1;
  }

  result = 0;
  *a1 = v7;
  return result;
}

void BOMPKZipFree(void *a1)
{
  if (*(a1 + 13))
  {
    v2 = 0;
    v3 = 40;
    do
    {
      free(*(a1[5] + v3));
      ++v2;
      v3 += 64;
    }

    while (v2 < *(a1 + 13));
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
  }

  if (*(a1 + 8))
  {
    BOMFileClose(*a1);
  }

  if (*(a1 + 16))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      free(*(a1[7] + v5));
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 16));
  }

  v7 = a1[7];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    free(v8);
  }

  free(a1);
}

uint64_t BOMPKZipGetFile(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMPKZipReadNextSignature(uint64_t a1, int *a2)
{
  result = 1;
  if (!a1 || !a2)
  {
    return result;
  }

  v9 = 0;
  v8 = 0;
  while (1)
  {
    if (BOMFileRead(*a1, &v9, 4uLL) != 4)
    {
      return 1;
    }

    if (v9 <= 101010255)
    {
      break;
    }

    if (v9 > 117853007)
    {
      if (v9 == 117853008)
      {
        result = 0;
        v7 = 5;
        goto LABEL_31;
      }

      if (v9 == 808471376)
      {
        return BOMPKZipReadNextSignature(a1, a2);
      }
    }

    else
    {
      if (v9 == 101010256)
      {
        result = 0;
        v7 = 6;
        goto LABEL_31;
      }

      if (v9 == 101075792)
      {
        result = 0;
        v7 = 4;
        goto LABEL_31;
      }
    }

LABEL_16:
    v8 = 19280;
    if (v9 == 19280)
    {
      if (BOMFileRead(*a1, &v8, 2uLL) != 2)
      {
        return 1;
      }

      if (v8 == 1027)
      {
LABEL_26:
        result = 0;
        v7 = 1;
        goto LABEL_31;
      }
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      v6 = *(a1 + 12) - 1;
      if (*(a1 + 72) <= v6)
      {
        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = *(v5 + 12 * v6);
      }
    }

    if (v5 != v9)
    {
      *a2 = 0;
      return 1;
    }
  }

  if (v9 != 33639248)
  {
    if (v9 == 67324752)
    {
      goto LABEL_26;
    }

    if (v9 == 84233040)
    {
      result = 0;
      v7 = 3;
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  result = 0;
  v7 = 2;
LABEL_31:
  *a2 = v7;
  return result;
}

uint64_t BOMPKZipGetNumLocalHeaders(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 12);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMPKZipReadLocalHeader(uint64_t a1, char *a2, uint64_t a3, unint64_t *a4, _DWORD *a5, _BYTE *a6, unsigned int *a7, unsigned int *a8, _BYTE *a9)
{
  v45 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2 && a3 && a4)
  {
    if (BOMFileRead(*a1, v44, 0x1AuLL) != 26)
    {
      return 1;
    }

    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    v18 = BOMStreamWithAddress(v44, 0x1AuLL, 0);
    if (!v18)
    {
      return 1;
    }

    v19 = v18;
    if (BOMStreamSetByteOrder(v18, 2u))
    {
      v20 = v19;
LABEL_9:
      BOMStreamFree(v20);
      return 1;
    }

    BOMStreamReadUInt16(v19);
    UInt16 = BOMStreamReadUInt16(v19);
    *a5 = BOMStreamReadUInt16(v19);
    v21 = BOMStreamReadUInt16(v19);
    v22 = BOMStreamReadUInt16(v19);
    UInt32 = BOMStreamReadUInt32(v19);
    *a4 = BOMStreamReadUInt32(v19);
    *(a3 + 96) = BOMStreamReadUInt32(v19);
    v43 = BOMStreamReadUInt16(v19);
    v41 = BOMStreamReadUInt16(v19);
    v23 = _dos2unixtime(v21 | (v22 << 16));
    *(a3 + 116) = 0;
    *(a3 + 32) = v23;
    *(a3 + 40) = 0;
    *(a3 + 48) = v23;
    *(a3 + 56) = 0;
    if (a6)
    {
      *a6 = UInt16 & 1;
    }

    if (a7)
    {
      *a7 = (UInt16 >> 3) & 1;
    }

    *a9 = 0;
    if (a8)
    {
      v24 = (v21 << 16) & 0xFF000000;
      if ((UInt16 & 8) == 0)
      {
        v24 = UInt32;
      }

      *a8 = v24;
    }

    BOMStreamFree(v19);
    if (v43)
    {
      if (v43 > 0x3FF)
      {
        return 1;
      }

      v25 = v43;
      if (BOMFileRead(*a1, a2, v43) != v43)
      {
        return 1;
      }

      v26 = *(a3 + 4);
      if (a2[v43 - 1] == 47)
      {
        *(a3 + 4) = v26 | 0x41C0;
        v25 = (v43 - 1);
      }

      else
      {
        *(a3 + 4) = v26 | 0x8180;
      }

      a2[v25] = 0;
      v32 = _sanitizePath(a2, v25);
      v27 = v41;
      if (v32)
      {
        return 1;
      }
    }

    else
    {
      *a2 = 0;
      v27 = v41;
    }

    if (!v27)
    {
LABEL_62:
      result = 0;
      ++*(a1 + 12);
      return result;
    }

    v28 = v27;
    if (v27 < 0x1B)
    {
      v29 = v44;
    }

    else
    {
      v29 = BOM_malloc(v27);
      if (!v29)
      {
        return 1;
      }
    }

    if (BOMFileRead(*a1, v29, v28) != v28)
    {
      if (v29 != v44)
      {
        free(v29);
      }

      return 1;
    }

    v30 = BOMStreamWithAddress(v29, v28, 0);
    if (!v30)
    {
      return 1;
    }

    v31 = v30;
    if (BOMStreamSetByteOrder(v30, 2u))
    {
LABEL_34:
      v20 = v31;
      goto LABEL_9;
    }

    v33 = 0;
    v34 = v41;
    while (1)
    {
      v35 = BOMStreamReadUInt16(v31);
      v36 = BOMStreamReadUInt16(v31);
      v37 = v33 + 4;
      if (v36 + v37 > v34)
      {
        goto LABEL_34;
      }

      v38 = v36;
      if (v35 == 1)
      {
        if (*(a3 + 96) == 0xFFFFFFFFLL)
        {
          *(a3 + 96) = BOMStreamReadUInt64(v31);
          v39 = 8;
        }

        else
        {
          v39 = 0;
        }

        if (*a4 == 0xFFFFFFFF)
        {
          *a4 = BOMStreamReadUInt64(v31);
          v39 += 8;
        }

        *a9 = 1;
        goto LABEL_55;
      }

      if (v35 != 22613)
      {
        v39 = 0;
        goto LABEL_55;
      }

      *(a3 + 32) = BOMStreamReadUInt32(v31);
      *(a3 + 48) = BOMStreamReadUInt32(v31);
      if (v38 < 0xA)
      {
        break;
      }

      *(a3 + 16) = BOMStreamReadUInt16(v31);
      if (v38 != 12)
      {
        v39 = 10;
LABEL_55:
        if (v38 != v39)
        {
          BOMStreamAdvance(v31, (v38 - v39));
        }

        goto LABEL_57;
      }

      *(a3 + 20) = BOMStreamReadUInt16(v31);
LABEL_57:
      v33 = v38 + v37;
      v34 = v41;
      if (v41 == v33)
      {
        BOMStreamFree(v31);
        if (v29 != v44)
        {
          free(v29);
        }

        goto LABEL_62;
      }
    }

    v39 = 8;
    goto LABEL_55;
  }

  return result;
}

time_t _dos2unixtime(unsigned int a1)
{
  v6 = time(0);
  v2 = localtime(&v6);
  v3.i32[0] = a1;
  v4 = vshlq_u32(vdupq_n_s32(a1), xmmword_241C78FF0);
  v4.i32[0] = vshlq_u32(v3, xmmword_241C78FE0).u32[0];
  *&v2->tm_sec = vandq_s8(v4, xmmword_241C79000);
  v2->tm_mon = ((a1 >> 21) & 0xF) - 1;
  v2->tm_year = (a1 >> 25) + 80;
  return mktime(v2);
}

uint64_t BOMPKZipWriteLocalHeader(uint64_t a1, char *__s, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (a1)
  {
    v6 = __s;
    if (__s)
    {
      if (a3)
      {
        v11 = strlen(__s);
        v12 = *v6;
        if (v12 != 46 || v11 != 1)
        {
          if (v12 == 46)
          {
            if (v6[1] == 47)
            {
              v13 = v6[2];
              v6 += 2;
              v12 = v13;
              v11 -= 2;
            }

            else
            {
              v12 = 46;
            }
          }

          v14 = v12 == 47;
          v15 = v12 == 47;
          if (v14)
          {
            v16 = v6 + 1;
          }

          else
          {
            v16 = v6;
          }

          v17 = v11 - v15;
          v18 = (v11 - v15);
          v19 = *(a3 + 4) & 0xF000;
          if (v19 == 0x4000)
          {
            __memcpy_chk();
            LODWORD(v40) = 0;
            v23 = 0;
            v39 = 0;
            v41[v17++] = 47;
            v41[v17] = 0;
            v20 = v18 + 47;
            v22 = 10;
            __src = v41;
          }

          else
          {
            v20 = v18 + 46;
            __src = v16;
            if (v19 == 40960)
            {
              v23 = 0;
              v39 = 0;
              LODWORD(v40) = *(a3 + 96);
              v22 = 10;
            }

            else if (v19 == 0x8000)
            {
              v40 = *(a3 + 96);
              v21 = v40 != 0;
              if (v40)
              {
                v22 = 20;
              }

              else
              {
                v22 = 10;
              }

              v23 = 8 * v21;
              v39 = 8 * v21;
            }

            else
            {
              LODWORD(v40) = 0;
              v39 = 0;
              v23 = 8;
              v22 = 20;
            }
          }

          v24 = v20;
          v25 = BOM_malloc(v20);
          if (v25)
          {
            v26 = v25;
            v37 = v22;
            v5 = 1;
            v27 = BOMStreamWithAddress(v25, v24, 1);
            if (!v27)
            {
              return v5;
            }

            v28 = v27;
            if (BOMStreamSetByteOrder(v27, 2u))
            {
              BOMStreamFree(v28);
              free(v26);
              return v5;
            }

            BOMStreamWriteUInt32(v28, 0x4034B50u);
            BOMStreamWriteUInt16(v28, v37);
            BOMStreamWriteUInt16(v28, v23);
            BOMStreamWriteUInt16(v28, v39);
            v29 = _unix2dostime((a3 + 48));
            BOMStreamWriteUInt32(v28, v29);
            v30 = *(a3 + 4) & 0xF000;
            if (v30 == 40960)
            {
              v31 = a4;
            }

            else
            {
              v31 = 0;
            }

            if (v30 == 40960)
            {
              v32 = a5;
            }

            else
            {
              v32 = 0;
            }

            if (v30 == 40960)
            {
              v33 = v40;
            }

            else
            {
              v33 = 0;
            }

            BOMStreamWriteUInt32(v28, v31);
            BOMStreamWriteUInt32(v28, v32);
            BOMStreamWriteUInt32(v28, v33);
            BOMStreamWriteUInt16(v28, v17);
            BOMStreamWriteUInt16(v28, 16 * ((*(a3 + 4) & 0xF000) != 40960));
            BOMStreamWriteBuffer(v28, __src, v17);
            if ((*(a3 + 4) & 0xF000) == 0xA000)
            {
              v24 = (v24 - 16);
            }

            else
            {
              BOMStreamWriteUInt16(v28, 22613);
              BOMStreamWriteUInt16(v28, 12);
              BOMStreamWriteUInt32(v28, *(a3 + 32));
              BOMStreamWriteUInt32(v28, *(a3 + 48));
              BOMStreamWriteUInt16(v28, *(a3 + 16));
              BOMStreamWriteUInt16(v28, *(a3 + 20));
            }

            BOMStreamFree(v28);
            v34 = BOMFileOffset(*a1);
            v35 = BOMFileWrite(*a1, v26, v24);
            free(v26);
            if (v35 == v24 && !_squirrelAwayInfo(a1, v34, v37, v39, a3, a4, a5, v40, v17, __src))
            {
              v5 = 0;
              ++*(a1 + 12);
              return v5;
            }
          }

          return 1;
        }

        return 0;
      }
    }
  }

  return v5;
}

uint64_t _unix2dostime(void *a1)
{
  v4 = (*a1 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v1 = localtime(&v4);
  tm_year = v1->tm_year;
  if (tm_year >= 80)
  {
    return ((tm_year << 25) + 1610612736) | (v1->tm_sec >> 1) | (32 * v1->tm_min) | (v1->tm_hour << 11) | (v1->tm_mday << 16) | ((v1->tm_mon << 21) + 0x200000);
  }

  else
  {
    return 2162688;
  }
}

uint64_t _squirrelAwayInfo(uint64_t a1, int a2, __int16 a3, __int16 a4, uint64_t a5, int a6, int a7, int a8, __int16 a9, void *__src)
{
  v18 = *(a1 + 52);
  if (v18 == *(a1 + 48))
  {
    v19 = 2 * v18;
    if (v18 > 0x4000)
    {
      v19 = v18 + 0x4000;
    }

    *(a1 + 48) = v19;
    v20 = BOM_realloc(*(a1 + 40), v19 << 6);
    *(a1 + 40) = v20;
    if (!v20)
    {
      return 1;
    }

    v18 = *(a1 + 52);
  }

  *(a1 + 52) = v18 + 1;
  v21 = BOM_malloc(a9);
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  memcpy(v21, __src, a9);
  result = 0;
  v24 = *(a1 + 40) + (v18 << 6);
  *v24 = a3;
  *(v24 + 2) = a4;
  v25 = *(a5 + 48);
  *(v24 + 8) = *(a5 + 32);
  *(v24 + 16) = v25;
  *(v24 + 24) = a6;
  *(v24 + 28) = a7;
  *(v24 + 32) = a8;
  *(v24 + 36) = a9;
  *(v24 + 40) = v22;
  v26 = *(a5 + 4);
  *(v24 + 48) = (v26 << 16) | 0x4000;
  *(v24 + 52) = a2;
  v27 = (v26 & 0xF000) == 40960;
  v28 = *(a1 + 36);
  if (!v27)
  {
    v28 += 12;
  }

  *(v24 + 56) = v27;
  *(a1 + 36) = a9 + v28 + 46;
  return result;
}

uint64_t BOMPKZipReadDataDescriptor(int **a1, int a2, _DWORD *a3, unint64_t *a4, unint64_t *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (a1 && a3 && a4 && a5)
  {
    v10 = a2 ? 20 : 12;
    if (BOMFileRead(*a1, v15, v10) == v10)
    {
      v11 = BOMStreamWithAddress(v15, v10, 0);
      if (v11)
      {
        v12 = v11;
        if (!BOMStreamSetByteOrder(v11, 2u))
        {
          *a3 = BOMStreamReadUInt32(v12);
          if (a2)
          {
            *a4 = BOMStreamReadUInt64(v12);
            UInt64 = BOMStreamReadUInt64(v12);
          }

          else
          {
            *a4 = BOMStreamReadUInt32(v12);
            UInt64 = BOMStreamReadUInt32(v12);
          }

          v5 = 0;
          *a5 = UInt64;
        }

        BOMStreamFree(v12);
      }
    }
  }

  return v5;
}

BOOL BOMPKZipWriteDataDescriptor(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v8 = (*(a1 + 40) + ((*(a1 + 52) - 1) << 6));
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v9 = 1;
  v10 = BOMStreamWithAddress(v13, 0xCuLL, 1);
  if (v10)
  {
    v11 = v10;
    if (BOMStreamSetByteOrder(v10, 2u))
    {
      BOMStreamFree(v11);
    }

    else
    {
      BOMStreamWriteUInt32(v11, a2);
      BOMStreamWriteUInt32(v11, a3);
      BOMStreamWriteUInt32(v11, a4);
      BOMStreamFree(v11);
      return BOMFileWrite(*a1, v13, 0xCuLL) != 12;
    }
  }

  return v9;
}

uint64_t BOMPKZipReadCentralHeader(int **a1, char *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2 && a3)
  {
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    if (BOMFileRead(*a1, v22, 0x2AuLL) != 42)
    {
      return 1;
    }

    v9 = BOMStreamWithAddress(v22, 0x2AuLL, 0);
    if (!v9)
    {
      return 1;
    }

    v10 = v9;
    if (BOMStreamSetByteOrder(v9, 2u))
    {
      BOMStreamFree(v10);
      return 1;
    }

    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    UInt32 = BOMStreamReadUInt32(v10);
    *(a3 + 48) = _dos2unixtime(UInt32);
    BOMStreamReadUInt32(v10);
    *a4 = BOMStreamReadUInt32(v10);
    *(a3 + 96) = BOMStreamReadUInt32(v10);
    UInt16 = BOMStreamReadUInt16(v10);
    v13 = BOMStreamReadUInt16(v10);
    *(a3 + 116) = 0;
    v14 = BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    v15 = BOMStreamReadUInt32(v10);
    v16 = v15;
    *(a3 + 4) = WORD1(v15);
    BOMStreamReadUInt32(v10);
    BOMStreamFree(v10);
    if (UInt16)
    {
      v17 = UInt16;
      if (UInt16 > 0x3FF)
      {
        return 1;
      }

      if (BOMFileRead(*a1, a2, UInt16) != UInt16)
      {
        return 1;
      }

      UInt16 = a2[UInt16 - 1] == 47;
      v18 = (v17 - UInt16);
      a2[v18] = 0;
      if (_sanitizePath(a2, v18))
      {
        return 1;
      }
    }

    if (*(a3 + 4) <= 0xFFFu)
    {
      if (UInt16 | ((v16 & 0x10) >> 4))
      {
        v19 = 0x4000;
      }

      else
      {
        v19 = 0x8000;
      }

      *(a3 + 4) = v19;
    }

    if (v13)
    {
      if (v13 < 0x2B)
      {
        v20 = v22;
      }

      else
      {
        v20 = BOM_malloc(v13);
        if (!v20)
        {
          return 1;
        }
      }

      if (BOMFileRead(*a1, v20, v13) != v13)
      {
        return 1;
      }

      if (v20 != v22)
      {
        free(v20);
      }
    }

    if (!v14)
    {
      return 0;
    }

    if (v14 < 0x2B)
    {
      v21 = v22;
    }

    else
    {
      v21 = BOM_malloc(v14);
      if (!v21)
      {
        return 1;
      }
    }

    if (BOMFileRead(*a1, v21, v14) == v14)
    {
      if (v21 != v22)
      {
        free(v21);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

BOOL BOMPKZipWriteCentralDirectory(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 36);
  if (!v2)
  {
    return 1;
  }

  v3 = (v2 + 22);
  v4 = BOM_malloc(v3);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = BOMStreamWithAddress(v4, v3, 1);
  if (!v6)
  {
LABEL_7:
    free(v5);
    return 1;
  }

  v7 = v6;
  if (BOMStreamSetByteOrder(v6, 2u))
  {
    BOMStreamFree(v7);
    goto LABEL_7;
  }

  if (*(a1 + 52))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      BOMStreamWriteUInt32(v7, 0x2014B50u);
      BOMStreamWriteUInt16(v7, 789);
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10));
      v12 = *(a1 + 40) + v10;
      if (*(v12 + 56))
      {
        v13 = 0;
      }

      else
      {
        v13 = 8 * (*(v12 + 32) != 0);
      }

      BOMStreamWriteUInt16(v7, v13);
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10 + 2));
      v14 = _unix2dostime((*(a1 + 40) + v10 + 16));
      BOMStreamWriteUInt32(v7, v14);
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 24));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 28));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 32));
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10 + 36));
      if (*(*(a1 + 40) + v10 + 56))
      {
        v15 = 0;
      }

      else
      {
        v15 = 12;
      }

      BOMStreamWriteUInt16(v7, v15);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 48));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 52));
      BOMStreamWriteBuffer(v7, *(*(a1 + 40) + v10 + 40), *(*(a1 + 40) + v10 + 36));
      if (!*(*(a1 + 40) + v10 + 56))
      {
        BOMStreamWriteUInt16(v7, 22613);
        BOMStreamWriteUInt16(v7, 8);
        BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 8));
        BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 16));
      }

      ++v11;
      v10 += 64;
    }

    while (v11 < *(a1 + 52));
  }

  BOMStreamWriteUInt32(v7, 0x6054B50u);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamWriteUInt16(v7, *(a1 + 52));
  BOMStreamWriteUInt16(v7, *(a1 + 52));
  BOMStreamWriteUInt32(v7, *(a1 + 36));
  v16 = BOMFileOffset(*a1);
  BOMStreamWriteUInt32(v7, v16);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamFree(v7);
  v8 = BOMFileWrite(*a1, v5, v3) != v3;
  free(v5);
  return v8;
}

BOOL BOMPKZipSkipDigitalSignature(int **a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  if (BOMFileRead(*a1, &v7, 2uLL) != 2)
  {
    return 1;
  }

  if (!v7)
  {
    return 0;
  }

  v2 = BOM_malloc(v7);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = BOMFileRead(*a1, v2, v7);
  v5 = v4 != v7;
  free(v3);
  return v5;
}

BOOL BOMPKZipSkipZIP64CentralDirectoryRecord(int **a1)
{
  if (!a1)
  {
    return 1;
  }

  v6 = 0;
  if (BOMFileRead(*a1, &v6, 8uLL) != 8)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  v2 = BOM_malloc(0x2CuLL);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = BOMFileRead(*a1, v2, 0x2CuLL) != 44;
  free(v3);
  return v4;
}

BOOL BOMPKZipSkipEndOfCentralDirectoryRecord(int **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (BOMFileRead(*a1, v9, 0x12uLL) != 18)
  {
    return 1;
  }

  v6 = 0;
  if (_readEOCDRecord(v9, &v8, &v7, &v6))
  {
    return 1;
  }

  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v5 = v9;
  if (v6 >= 0x13u)
  {
    v5 = BOM_malloc(v6);
    if (!v5)
    {
      return 1;
    }
  }

  v2 = BOMFileRead(*a1, v5, v4) != v4;
  if (v5 != v9)
  {
    free(v5);
  }

  return v2;
}

uint64_t _readEOCDRecord(uint64_t a1, _WORD *a2, _DWORD *a3, _WORD *a4)
{
  v7 = BOMStreamWithAddress(a1, 0x12uLL, 0);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (BOMStreamSetByteOrder(v7, 2u))
  {
    v9 = 1;
  }

  else
  {
    BOMStreamReadUInt16(v8);
    BOMStreamReadUInt16(v8);
    BOMStreamReadUInt16(v8);
    *a2 = BOMStreamReadUInt16(v8);
    BOMStreamReadUInt32(v8);
    *a3 = BOMStreamReadUInt32(v8);
    v9 = 0;
    *a4 = BOMStreamReadUInt16(v8);
  }

  BOMStreamFree(v8);
  return v9;
}

uint64_t BOMPKZipGetFileCompressedSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2 && *(result + 72) > a2)
    {
      return *(v2 + 12 * a2 + 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMPKZipGetFileUncompressedSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2 && *(result + 72) > a2)
    {
      return *(v2 + 12 * a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMPKZipLoadCentralDirectory(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  BOMFileOffset(*a1);
  if (BOMPKZipSeekToCentralDirectory() || (v15 = 0, BOMPKZipReadNextSignature(a1, &v15)))
  {
LABEL_3:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  while (v15 == 2)
  {
    if (BOMFileRead(*a1, v16, 0x2AuLL) != 42)
    {
      goto LABEL_3;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = *(a1 + 68);
      if (*(a1 + 72) + 1 <= v5)
      {
        goto LABEL_12;
      }

      v6 = v5 + 32;
      *(a1 + 68) = v6;
      v7 = BOM_realloc(v4, 12 * v6);
    }

    else
    {
      *(a1 + 68) = 32;
      v7 = BOM_malloczero(0x180uLL);
    }

    *(a1 + 80) = v7;
    if (!v7)
    {
      *(a1 + 68) = 0;
      *(a1 + 72) = 0;
      goto LABEL_3;
    }

LABEL_12:
    v8 = BOMStreamWithAddress(v16, 0x2AuLL, 0);
    if (!v8)
    {
      goto LABEL_3;
    }

    v9 = v8;
    if (BOMStreamSetByteOrder(v8, 2u))
    {
      BOMStreamFree(v9);
      goto LABEL_3;
    }

    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    UInt32 = BOMStreamReadUInt32(v9);
    v11 = BOMStreamReadUInt32(v9);
    v12 = BOMStreamReadUInt32(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt16(v9);
    BOMStreamReadUInt32(v9);
    BOMStreamReadUInt32(v9);
    BOMStreamFree(v9);
    v13 = *(a1 + 72);
    v14 = (*(a1 + 80) + 12 * v13);
    *v14 = UInt32;
    v14[1] = v11;
    v14[2] = v12;
    *(a1 + 72) = v13 + 1;
    BOMFileSeek();
    v15 = 0;
    if (BOMPKZipReadNextSignature(a1, &v15))
    {
      goto LABEL_3;
    }
  }

  if (v15 == 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

LABEL_4:
  BOMFileSeek();
  return v2;
}

uint64_t BOMPKZipSeekToCentralDirectory()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v27 = *MEMORY[0x277D85DE8];
  BOMFileSeek();
  if ((v4 & 0x8000000000000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = v4 >= 0x10016 ? 65558 : v4;
  BOMFileSeek();
  if (v7 < 0 || BOMFileRead(*v3, v26, v6) != v6 || v5 < 0x16)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = &v26[(v6 - 22)];
  if (*v8 != 101010256)
  {
    v9 = v6 >= (v6 & 0x3FF | 0x400) ? v6 & 0x3FF | 0x400 : v6;
    if (v6 - v9 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v9 - 18;
    v11 = &v26[(v6 - v9)];
    do
    {
      v12 = 0;
      v13 = v11;
LABEL_15:
      v14 = v10 - 3;
      if (v10 != 3)
      {
        v15 = v13;
        do
        {
          v8 = memchr(v15, 80, v14);
          if (!v8)
          {
            break;
          }

          if (*v8 == 101010256)
          {
            v17 = v8 - v13 + 4;
            v10 -= v17;
            v13 += v17;
            v12 = v8;
            if (v10 > 3)
            {
              goto LABEL_15;
            }

            goto LABEL_26;
          }

          v16 = v8 - v15;
          v15 = v8 + 1;
          v14 += ~v16;
        }

        while (v14);
      }

      v11 -= 1024;
      if (v12)
      {
        break;
      }

      v10 = 1027;
    }

    while (v11 >= v26);
    v8 = v12;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_26:
  v24 = 0;
  v25 = 0;
  if (_readEOCDRecord((v8 + 4), &v24 + 1, &v25, &v24))
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v25;
  v20 = v25 | 0xFFFFFFFF00000000;
  v21 = v5 - v25;
  do
  {
    v20 += 0x100000000;
    if (v19 >= v5)
    {
      break;
    }

    v19 += 0x100000000;
    v22 = HIDWORD(v21);
    v21 -= 0x100000000;
  }

  while (v22);
  if (v2)
  {
    *v2 = HIWORD(v24);
  }

  BOMFileSeek();
  return v23 >> 63;
}

uint64_t BOMPKZipStoreQuarantinePath(uint64_t a1, char *__s)
{
  result = 1;
  if (a1 && __s)
  {
    v5 = strlen(__s);
    v6 = v5;
    v7 = *(a1 + 64);
    if (v7)
    {
      v20 = 0;
      v19 = 0;
      _search(a1, 0, v7 - 1, __s, v5, &v20, &v19);
      if (v19)
      {
        return 1;
      }

      v8 = BOM_realloc(*(a1 + 56), 16 * (v7 + 1));
      *(a1 + 56) = v8;
      if (!v8)
      {
        return 1;
      }

      v9 = *(a1 + 64);
      v10 = v20;
      if (v9 > v20)
      {
        v11 = &v8[16 * v9];
        v12 = *(a1 + 64);
        v13 = v11;
        do
        {
          v14 = *(v13 - 2);
          v13 -= 16;
          --v12;
          *v11 = v14;
          v11[8] = *(v11 - 8);
          v11 = v13;
        }

        while (v12 > v10);
      }

      *(a1 + 64) = v9 + 1;
      v15 = BOM_malloc(v6);
      v16 = *(a1 + 56);
      v16[2 * v10] = v15;
      if (v15)
      {
        memcpy(v15, __s, v6);
        result = 0;
        *(*(a1 + 56) + 16 * v10 + 8) = v6;
        return result;
      }
    }

    else
    {
      v17 = BOM_malloc(0x10uLL);
      *(a1 + 56) = v17;
      if (!v17)
      {
        return 1;
      }

      v18 = BOM_malloc(v6);
      v16 = *(a1 + 56);
      *v16 = v18;
      if (v18)
      {
        memcpy(v18, __s, v6);
        result = 0;
        *(*(a1 + 56) + 8) = v6;
        ++*(a1 + 64);
        return result;
      }
    }

    free(v16);
    return 1;
  }

  return result;
}

uint64_t _search(uint64_t a1, unsigned int a2, unsigned int a3, void *__s1, unsigned int a5, unsigned int *a6, _BYTE *a7)
{
  v13 = *(a1 + 56);
  while (1)
  {
    while (1)
    {
      v14 = a2 + ((a3 - a2) >> 1);
      v15 = v13 + 16 * v14;
      v16 = *(v15 + 8);
      v17 = v16 >= a5 ? a5 : *(v15 + 8);
      result = memcmp(__s1, *v15, v17);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (a3 == a2)
      {
        v20 = 0;
LABEL_20:
        *a6 = v14 + v20;
        return result;
      }

LABEL_14:
      a3 = v14 - (a3 - a2 > 1);
    }

    v20 = result != 0;
    if (v16 <= a5 && result == 0)
    {
      break;
    }

    if (a3 == a2)
    {
      goto LABEL_20;
    }

    if (!result)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (v14 == a3)
    {
      a2 += (a3 - a2) >> 1;
    }

    else
    {
      a2 = v14 + 1;
    }
  }

  if (a3 != a2)
  {
    if (v16 >= a5)
    {
      *a6 = v14;
LABEL_28:
      *a7 = 1;
      return result;
    }

    goto LABEL_17;
  }

  if (v16 >= a5)
  {
    v21 = a2 + ((a3 - a2) >> 1);
  }

  else
  {
    v21 = v14 + 1;
  }

  *a6 = v21;
  if (v16 >= a5)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t BOMPKZipLookupQuarantinePath(uint64_t a1, char *__s, _BYTE *a3)
{
  result = 1;
  if (a1 && __s && a3)
  {
    v7 = *(a1 + 64);
    *a3 = 0;
    if (v7)
    {
      v8 = strlen(__s);
      _search(a1, 0, *(a1 + 64) - 1, __s, v8, &v9, a3);
    }

    return 0;
  }

  return result;
}

uint64_t BOMPKZipQuarantinePathCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 1;
  }
}

uint64_t BOMPKZipCopyQuarantinePath(uint64_t a1, unsigned int a2, void *__dst)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 64) < a2)
  {
    return 1;
  }

  v7 = *(a1 + 56) + 16 * a2;
  memcpy(__dst, *v7, *(v7 + 8));
  result = 0;
  *(__dst + *(*(a1 + 56) + 16 * a2 + 8)) = 0;
  return result;
}

uint64_t update_keys(unsigned int *a1, uint64_t a2)
{
  v2 = PKZip_crctab_0[(*a1 ^ a2)] ^ (*a1 >> 8);
  v3 = 134775813 * (a1[1] + v2) + 1;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = PKZip_crctab_0[a1[2] ^ HIBYTE(v3)] ^ (a1[2] >> 8);
  return a2;
}

unsigned int *init_keys(unsigned int *result, char *a2)
{
  *result = 0x2345678912345678;
  result[2] = 878082192;
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = a2 + 1;
    do
    {
      result = update_keys(v3, v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *BOMCopierDataAnalyzerNew(int a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 90, "BOMCopierDataAnalyzerNew", "No flag is set.");
    return 0;
  }

  v3 = a1;
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x1030040F8F0F2B1uLL);
  if (!v4)
  {
    v7 = *__error();
    v8 = __error();
    strerror(*v8);
    BOMCopierErrorCapture(a2, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 103, "BOMCopierDataAnalyzerNew", "Could not allocate BOMCopierDataAnalyzer: %s");
    return 0;
  }

  v5 = v4;
  if (v3)
  {
    *v4 |= 1uLL;
    if ((v3 & 2) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_5;
  }

  *v4 |= 2uLL;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *v4 |= 8uLL;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *v4 |= 0x10uLL;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *v4 |= 0x20uLL;
  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *v4 |= 0x40uLL;
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  *v4 |= 0x80uLL;
  if ((v3 & 0x100) != 0)
  {
LABEL_11:
    *v4 |= 0x100uLL;
  }

LABEL_12:
  inited = init_data_analyzer(v4, a2);
  if (inited)
  {
    BOMCopierErrorCapture(a2, inited, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 112, "BOMCopierDataAnalyzerNew", "Could not initialize BOMCopierDataAnalyzer");
    BOMCopierDataAnalyzerFree(v5);
    return 0;
  }

  return v5;
}

uint64_t init_data_analyzer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 1;
    if (a1[1])
    {
      CNCRCRelease();
      *v6 = 0;
    }

    if (CNCRCInit())
    {
      v7 = *__error();
      v8 = __error();
      strerror(*v8);
      BOMCopierErrorCapture(a2, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 474, "init_data_analyzer", "Could not allocate CRC_32 context: %s");
      return 1;
    }

    *(a1 + 4) = 0;
    v4 = *a1;
    v5 = 1;
    if ((*a1 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  if (a1[3])
  {
    CNCRCRelease();
    a1[3] = 0;
  }

  if (CNCRCInit())
  {
    v9 = *__error();
    v10 = __error();
    strerror(*v10);
    BOMCopierErrorCapture(a2, v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 498, "init_data_analyzer", "Could not allocate CRC_32 POSIX context: %s");
    return 1;
  }

  *(a1 + 10) = 0;
  a1[4] = 0;
  ++v5;
  v4 = *a1;
  if ((*a1 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_21:
  v13 = a1[6];
  if (!v13)
  {
    v13 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
    a1[6] = v13;
    if (!v13)
    {
      v27 = *__error();
      v28 = __error();
      strerror(*v28);
      BOMCopierErrorCapture(a2, v27, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 519, "init_data_analyzer", "Could not allocate MD5 context: %s");
      return 1;
    }
  }

  CC_MD5_Init(v13);
  if (!a1[12])
  {
    v14 = malloc_type_malloc(0x10uLL, 0xE67CDD74uLL);
    a1[12] = v14;
    if (!v14)
    {
      v31 = *__error();
      v32 = __error();
      strerror(*v32);
      BOMCopierErrorCapture(a2, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 534, "init_data_analyzer", "Could not allocate MD5 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_26:
  v15 = a1[7];
  if (!v15)
  {
    v15 = malloc_type_calloc(1uLL, 0x60uLL, 0x1000040565EDBD2uLL);
    a1[7] = v15;
    if (!v15)
    {
      v29 = *__error();
      v30 = __error();
      strerror(*v30);
      BOMCopierErrorCapture(a2, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 553, "init_data_analyzer", "Could not allocate SHA1 context: %s");
      return 1;
    }
  }

  CC_SHA1_Init(v15);
  if (!a1[13])
  {
    v16 = malloc_type_malloc(0x14uLL, 0xF874F85BuLL);
    a1[13] = v16;
    if (!v16)
    {
      v35 = *__error();
      v36 = __error();
      strerror(*v36);
      BOMCopierErrorCapture(a2, v35, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 565, "init_data_analyzer", "Could not allocate SHA1 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_36:
    v19 = a1[9];
    if (!v19)
    {
      v19 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
      a1[9] = v19;
      if (!v19)
      {
        v37 = *__error();
        v38 = __error();
        strerror(*v38);
        BOMCopierErrorCapture(a2, v37, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 615, "init_data_analyzer", "Could not allocate SHA256 context: %s");
        return 1;
      }
    }

    CC_SHA256_Init(v19);
    if (!a1[15])
    {
      v20 = malloc_type_malloc(0x20uLL, 0xB5662981uLL);
      a1[15] = v20;
      if (!v20)
      {
        v43 = *__error();
        v44 = __error();
        strerror(*v44);
        BOMCopierErrorCapture(a2, v43, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 627, "init_data_analyzer", "Could not allocate SHA256 digest: %s");
        return 1;
      }
    }

    ++v5;
    if ((*a1 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

LABEL_31:
  v17 = a1[8];
  if (!v17)
  {
    v17 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
    a1[8] = v17;
    if (!v17)
    {
      v33 = *__error();
      v34 = __error();
      strerror(*v34);
      BOMCopierErrorCapture(a2, v33, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 584, "init_data_analyzer", "Could not allocate SHA224 context: %s");
      return 1;
    }
  }

  CC_SHA224_Init(v17);
  if (!a1[14])
  {
    v18 = malloc_type_malloc(0x1CuLL, 0x51147CD4uLL);
    a1[14] = v18;
    if (!v18)
    {
      v39 = *__error();
      v40 = __error();
      strerror(*v40);
      BOMCopierErrorCapture(a2, v39, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 596, "init_data_analyzer", "Could not allocate SHA224 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x40) != 0)
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    v21 = a1[10];
    if (!v21)
    {
      v21 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
      a1[10] = v21;
      if (!v21)
      {
        v41 = *__error();
        v42 = __error();
        strerror(*v42);
        BOMCopierErrorCapture(a2, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 646, "init_data_analyzer", "Could not allocate SHA384 context: %s");
        return 1;
      }
    }

    CC_SHA384_Init(v21);
    if (!a1[16])
    {
      v22 = malloc_type_malloc(0x30uLL, 0xE2F2F79FuLL);
      a1[16] = v22;
      if (!v22)
      {
        v47 = *__error();
        v48 = __error();
        strerror(*v48);
        BOMCopierErrorCapture(a2, v47, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 658, "init_data_analyzer", "Could not allocate SHA384 digest: %s");
        return 1;
      }
    }

    v5 = 1;
  }

LABEL_46:
  if ((*(a1 + 1) & 1) == 0)
  {
    if (!v5)
    {
      v23 = __error();
      v24 = strerror(*v23);
      v11 = 22;
      BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 699, "init_data_analyzer", "No method enabled", v24);
      return v11;
    }

    return 0;
  }

  v25 = a1[11];
  if (v25 || (v25 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL), (a1[11] = v25) != 0))
  {
    CC_SHA512_Init(v25);
    if (a1[17])
    {
      return 0;
    }

    v26 = malloc_type_malloc(0x40uLL, 0x6CB3BB63uLL);
    a1[17] = v26;
    if (v26)
    {
      return 0;
    }

    v49 = *__error();
    v50 = __error();
    strerror(*v50);
    BOMCopierErrorCapture(a2, v49, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 689, "init_data_analyzer", "Could not allocate SHA512 digest: %s");
  }

  else
  {
    v45 = *__error();
    v46 = __error();
    strerror(*v46);
    BOMCopierErrorCapture(a2, v45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 677, "init_data_analyzer", "Could not allocate SHA512 context: %s");
  }

  return 1;
}

void BOMCopierDataAnalyzerFree(void *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      CNCRCRelease();
    }

    if (a1[3])
    {
      CNCRCRelease();
    }

    v2 = a1[6];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[7];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[9];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[10];
    if (v6)
    {
      free(v6);
    }

    v7 = a1[11];
    if (v7)
    {
      free(v7);
    }

    v8 = a1[12];
    if (v8)
    {
      free(v8);
    }

    v9 = a1[13];
    if (v9)
    {
      free(v9);
    }

    v10 = a1[14];
    if (v10)
    {
      free(v10);
    }

    v11 = a1[15];
    if (v11)
    {
      free(v11);
    }

    v12 = a1[16];
    if (v12)
    {
      free(v12);
    }

    v13 = a1[17];
    if (v13)
    {
      free(v13);
    }

    free(a1);
  }
}

uint64_t *BOMCopierDataAnalyzerReset(uint64_t *result)
{
  if (result)
  {
    v1 = 0;
    result = init_data_analyzer(result, &v1);
    if (result)
    {
      return BOMCopierErrorCapture(&v1, result, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 219, "BOMCopierDataAnalyzerReset", "Could not initialize BOMCopierDataAnalyzer");
    }
  }

  return result;
}

uint64_t BOMCopierDataAnalyzerUpdate(uint64_t *a1, void *data, uint64_t len, void *a4)
{
  if (a1)
  {
    if (data)
    {
      if (len)
      {
        v8 = *a1;
        if (*a1)
        {
          if (CNCRCUpdate())
          {
            v9 = *__error();
            v10 = __error();
            strerror(*v10);
            BOMCopierErrorCapture(a4, v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 723, "update_data_analyzer", "Could not update CRC_32 context: %s");
            return 1;
          }

          v8 = *a1;
        }

        if ((v8 & 2) != 0)
        {
          if (CNCRCUpdate())
          {
            v13 = *__error();
            v14 = __error();
            strerror(*v14);
            BOMCopierErrorCapture(a4, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 737, "update_data_analyzer", "Could not update CRC_32 POSIX context: %s");
            return 1;
          }

          a1[4] += len;
          v8 = *a1;
        }

        if ((v8 & 8) != 0)
        {
          CC_MD5_Update(a1[6], data, len);
          v8 = *a1;
          if ((*a1 & 0x10) == 0)
          {
LABEL_19:
            if ((v8 & 0x20) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_27;
          }
        }

        else if ((v8 & 0x10) == 0)
        {
          goto LABEL_19;
        }

        CC_SHA1_Update(a1[7], data, len);
        v8 = *a1;
        if ((*a1 & 0x20) == 0)
        {
LABEL_20:
          if ((v8 & 0x40) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

LABEL_27:
        CC_SHA224_Update(a1[8], data, len);
        v8 = *a1;
        if ((*a1 & 0x40) == 0)
        {
LABEL_21:
          if ((v8 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_29;
        }

LABEL_28:
        CC_SHA256_Update(a1[9], data, len);
        v8 = *a1;
        if ((*a1 & 0x80) == 0)
        {
LABEL_22:
          if ((v8 & 0x100) == 0)
          {
            return 0;
          }

LABEL_23:
          CC_SHA512_Update(a1[11], data, len);
          return 0;
        }

LABEL_29:
        CC_SHA384_Update(a1[10], data, len);
        if ((*a1 & 0x100) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

      v11 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 249, "BOMCopierDataAnalyzerUpdate", "data_size is 0");
    }

    else
    {
      v11 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 243, "BOMCopierDataAnalyzerUpdate", "data is NULL");
    }
  }

  else
  {
    v11 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 237, "BOMCopierDataAnalyzerUpdate", "data_analyzer is NULL");
  }

  return v11;
}

uint64_t BOMCopierDataAnalyzerFinalize(uint64_t *a1, void *a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (CNCRCFinal())
      {
        v5 = *__error();
        v6 = __error();
        strerror(*v6);
        BOMCopierErrorCapture(a2, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 820, "finalize_data_analyzer", "Could not finalize CRC_32 context: %s");
        return 1;
      }

      *(a1 + 4) = 0;
      v4 = *a1;
    }

    if ((v4 & 2) != 0)
    {
      v8 = a1[4];
      if (v8)
      {
        while (!CNCRCUpdate())
        {
          v9 = v8 > 0xFF;
          v8 >>= 8;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        v12 = *__error();
        v13 = __error();
        strerror(*v13);
        BOMCopierErrorCapture(a2, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 842, "finalize_data_analyzer", "Could not update length for CRC_32 POSIX context: %s");
        return 1;
      }

LABEL_11:
      if (CNCRCFinal())
      {
        v10 = *__error();
        v11 = __error();
        strerror(*v11);
        BOMCopierErrorCapture(a2, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 851, "finalize_data_analyzer", "Could not finalize CRC_32 POSIX context: %s");
        return 1;
      }

      *(a1 + 10) = 0;
      v4 = *a1;
    }

    if ((v4 & 8) != 0)
    {
      CC_MD5_Final(a1[12], a1[6]);
      v4 = *a1;
      if ((*a1 & 0x10) == 0)
      {
LABEL_18:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    CC_SHA1_Final(a1[13], a1[7]);
    v4 = *a1;
    if ((*a1 & 0x20) == 0)
    {
LABEL_19:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

LABEL_27:
    CC_SHA224_Final(a1[14], a1[8]);
    v4 = *a1;
    if ((*a1 & 0x40) == 0)
    {
LABEL_20:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_28:
    CC_SHA256_Final(a1[15], a1[9]);
    v4 = *a1;
    if ((*a1 & 0x80) == 0)
    {
LABEL_21:
      if ((v4 & 0x100) == 0)
      {
        return 0;
      }

LABEL_22:
      CC_SHA512_Final(a1[17], a1[11]);
      return 0;
    }

LABEL_29:
    CC_SHA384_Final(a1[16], a1[10]);
    if ((*a1 & 0x100) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v7 = 22;
  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 267, "BOMCopierDataAnalyzerFinalize", "data_analyzer is NULL");
  return v7;
}

uint64_t BOMCopierDataAnalyzerGetDigest(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a2 <= 4)
      {
        if (a2 <= 2)
        {
          if (a2 == 1)
          {
            if ((*a1 & 1) == 0)
            {
              BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 303, "BOMCopierDataAnalyzerGetDigest", "CRC32 is not supported");
              return 22;
            }

            v4 = 0;
            v5 = *(a1 + 16);
            goto LABEL_37;
          }

          if (a2 == 2)
          {
            if ((*a1 & 2) == 0)
            {
              BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 314, "BOMCopierDataAnalyzerGetDigest", "CRC32 POSIX is not supported");
              return 22;
            }

            v4 = 0;
            v5 = *(a1 + 40);
LABEL_37:
            *a3 = v5;
            return v4;
          }

LABEL_31:
          v4 = 22;
          BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 389, "BOMCopierDataAnalyzerGetDigest", "Unknown digest_type: %d");
          return v4;
        }

        if (a2 == 3)
        {
          if ((*a1 & 8) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 325, "BOMCopierDataAnalyzerGetDigest", "MD5 is not supported");
            return 22;
          }

          v4 = 0;
          v7 = **(a1 + 96);
        }

        else
        {
          if ((*a1 & 0x10) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 336, "BOMCopierDataAnalyzerGetDigest", "SHA1 is not supported");
            return 22;
          }

          v4 = 0;
          v13 = *(a1 + 104);
          v7 = *v13;
          *(a3 + 16) = *(v13 + 4);
        }

LABEL_40:
        *a3 = v7;
        return v4;
      }

      if (a2 > 6)
      {
        if (a2 == 7)
        {
          if ((*a1 & 0x80) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 369, "BOMCopierDataAnalyzerGetDigest", "SHA384 is not supported");
            return 22;
          }

          v4 = 0;
          v8 = *(a1 + 128);
          v9 = *v8;
          v10 = v8[1];
          v11 = v8[2];
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_31;
          }

          if ((*(a1 + 1) & 1) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 380, "BOMCopierDataAnalyzerGetDigest", "SHA512 is not supported");
            return 22;
          }

          v4 = 0;
          v14 = *(a1 + 136);
          v9 = *v14;
          v10 = v14[1];
          v11 = v14[2];
          *(a3 + 48) = v14[3];
        }

        *(a3 + 32) = v11;
      }

      else
      {
        if (a2 == 5)
        {
          if ((*a1 & 0x20) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 347, "BOMCopierDataAnalyzerGetDigest", "SHA224 is not supported");
            return 22;
          }

          v4 = 0;
          v6 = *(a1 + 112);
          v7 = *v6;
          *(a3 + 12) = *(v6 + 12);
          goto LABEL_40;
        }

        if ((*a1 & 0x40) == 0)
        {
          BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 358, "BOMCopierDataAnalyzerGetDigest", "SHA256 is not supported");
          return 22;
        }

        v4 = 0;
        v12 = *(a1 + 120);
        v9 = *v12;
        v10 = v12[1];
      }

      *a3 = v9;
      *(a3 + 16) = v10;
      return v4;
    }

    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 293, "BOMCopierDataAnalyzerGetDigest", "message_digest is NULL");
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 287, "BOMCopierDataAnalyzerGetDigest", "data_analyzer is NULL");
  }

  return v4;
}

uint64_t volume_has_data_protection(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6, 0, 512);
  if (!statfs(a1, &v6))
  {
    return LOBYTE(v6.f_flags) >> 7;
  }

  v2 = *MEMORY[0x277D85DF8];
  v3 = __error();
  v4 = strerror(*v3);
  fprintf(v2, "Could not statfs %s: %s\n", a1, v4);
  return 0;
}

BOOL set_timestamps_0(const char *a1, __int128 *a2, _OWORD *a3)
{
  v7 = 0;
  v3 = *a2;
  v5[0] = *a3;
  v5[1] = v3;
  v6 = xmmword_241C79418;
  return setattrlist(a1, &v6, v5, 0x20uLL, 1u) != 0;
}

uint64_t _mkdirs_parent(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  v3 = strrchr(__s, 47);
  result = 0;
  if (v3)
  {
    if (__s != v3)
    {
      *v3 = 0;
      return _mkdirs(a1, __s);
    }
  }

  return result;
}

uint64_t _mkdirs(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (!(*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8)))
  {
    if ((WORD2(v6) & 0xF000) == 0x4000)
    {
      return 0;
    }

    *__error() = 20;
    return 0xFFFFFFFFLL;
  }

  if (*__error() != 2)
  {
    return 0xFFFFFFFFLL;
  }

  __strlcpy_chk();
  v3 = rindex(v15, 47);
  if (!v3 || v3 == v15)
  {
    return (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), v15, 511);
  }

  v4 = v3;
  *v3 = 0;
  result = _mkdirs(a1, v15);
  *v4 = 47;
  if (result != -1)
  {
    result = v4[1];
    if (v4[1])
    {
      if (result != 46)
      {
        return (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), v15, 511);
      }

      result = v4[2];
      if (!v4[2])
      {
        return result;
      }

      if (result != 46 || v4[3])
      {
        return (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), v15, 511);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _initGroupList(uint64_t a1)
{
  v2 = getgroups(16, (a1 + 10500));
  *(a1 + 10564) = v2;
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _chPerms(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, int a5)
{
  v8 = *(a3 + 20);
  v9 = *(a3 + 4);
  if ((v9 & 0xF000) == 0x4000)
  {
    v10 = 448;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 10496))
  {
    v11 = *(a1 + 10564);
    if (v11 >= 1)
    {
      v12 = (a1 + 10500);
      while (1)
      {
        v13 = *v12++;
        if (v13 == v8)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      v15 = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

LABEL_9:
    v8 = -1;
    v14 = 61951;
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = *(a3 + 16);
    if (*(a1 + 205) == 1)
    {
LABEL_16:
      v14 = 61951;
      goto LABEL_17;
    }

    v14 = 0xFFFF;
    if (*(a1 + 209) == 1)
    {
      if (*(a1 + 210))
      {
        v14 = 0xFFFF;
      }

      else
      {
        v14 = 61951;
      }
    }
  }

LABEL_17:
  if ((v9 & 0xF000) == 0x8000 && *(a1 + 206) == 1)
  {
    v14 &= 0xFFB6u;
  }

  v16 = v9 & v14;
  if (a4 && v10 > (v9 & v14 & 0x1C0u))
  {
    *(a3 + 4) = v9 & v14;
    v16 = v16 | v10;
    *a4 = 1;
  }

  if (a5 && (v15 & v8) != 0xFFFFFFFF && (*(*(a1 + 12832) + 192))(*(*(a1 + 12832) + 8), a2, v15) && (*__error() == 45 || *__error() == 1 && (v16 & 0xF000) == 0xA000))
  {
    *__error() = 0;
  }

  if ((v16 & 0xF000) == 0xA000)
  {

    return lchmod(a2, v16);
  }

  else
  {
    v18 = (*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), a2, v16);
    if (v18 && *__error() == 45)
    {
      v18 = 0;
      *__error() = 0;
    }

    return v18;
  }
}

uint64_t _makeDestDir(uint64_t a1, char *a2, int a3, uint64_t a4, _BYTE *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    result = _mkdirs(a1, a2);
    if (result)
    {
      return result;
    }

    return _chPerms(a1, a2, a4, a5, 1);
  }

  v10 = rindex(a2, 47);
  if (!v10 || *v10 != 47 || v10[1] != 46 || v10[2] || (__strlcpy_chk(), __s[strlen(__s) - 2] = 0, result = (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), __s, 511), !result))
  {
    result = (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), a2, 511);
    if (!result)
    {
      return _chPerms(a1, a2, a4, a5, 1);
    }
  }

  return result;
}

uint64_t _filterFatArchs(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  *a4 = 0;
  v10 = 1;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v9 = 0;
    while (2)
    {
      v13 = 0;
      v14 = (a1 + 20 * v11);
      while (1)
      {
        v15 = &a3[8 * v13];
        v16 = *v15;
        if (*v15 == -1)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_16;
        }

        if (*v14 == v16 && ((v15[1] & 1) != 0 || ((v15[2] ^ v14[1]) & 0xFFFFFF) == 0))
        {
          break;
        }

        ++v13;
      }

      if (v9)
      {
        v17 = (v9 + 1);
        v8 = BOM_realloc(v8, 8 * v17);
        if (!v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v8 = BOM_malloczero(8uLL);
        v17 = 1;
        if (!v8)
        {
LABEL_42:
          v26 = v17;
          goto LABEL_43;
        }
      }

      *(v8 + v9) = v14;
      v9 = v17;
      v12 = a1 + 20 * v11;
LABEL_16:
      if (++v11 < a2)
      {
        continue;
      }

      break;
    }

    v10 = v12 == 0;
  }

  if (a2 && v10 && a1)
  {
    v18 = 0;
    v19 = a2;
    do
    {
      if (*a3)
      {
        LODWORD(v20) = 0;
        v21 = a1 + 20 * v18;
        v22 = a3;
        while (1)
        {
          v23 = *(v22 + 2);
          if (v23 && v22[6] && (v24 = *v23) != 0)
          {
            v25 = 1;
            while (*(v21 + 4) != v24)
            {
              v24 = v23[v25++];
              if (!v24)
              {
                goto LABEL_30;
              }
            }

            if (v9)
            {
              v26 = (v9 + 1);
              v8 = BOM_realloc(v8, 8 * v26);
              if (!v8)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v8 = BOM_malloczero(8uLL);
              v26 = 1;
              if (!v8)
              {
                goto LABEL_43;
              }
            }

            *(v8 + v9) = v21;
          }

          else
          {
LABEL_30:
            v26 = v9;
          }

          v20 = (v20 + 1);
          v22 = &a3[8 * v20];
          v9 = v26;
          if (!*v22)
          {
            goto LABEL_39;
          }
        }
      }

      v26 = v9;
LABEL_39:
      ++v18;
      v9 = v26;
    }

    while (v18 < v19);
  }

  else
  {
    v26 = v9;
  }

LABEL_43:
  *a4 = v8;
  return v26;
}

uint64_t _determine_thin_type_and_archs(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  LODWORD(v14[0]) = -1;
  BYTE4(v14[0]) = 1;
  *a4 = 0;
  *a5 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (!a7)
  {
LABEL_9:
    result = 0;
    *a6 = 0;
    return result;
  }

  a3 = v14;
LABEL_6:
  v11 = _filterFatArchs(a1, a2, a3, a4);
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  if (!a7 && v11 == a2)
  {
    goto LABEL_9;
  }

  if (v11 == 1)
  {
    result = 0;
    *a6 = 1;
  }

  else
  {
    result = 0;
    *a6 = 2;
  }

  *a5 = v12;
  return result;
}

void *_sortFatArchsByOffset(void *result, int a2)
{
  if (result)
  {
    if (a2)
    {
      return mergesort(result, a2, 8uLL, _compareFatArchsByOffset);
    }
  }

  return result;
}

uint64_t _compareFatArchsByOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 8);
  v3 = *(*a2 + 8);
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

double _createNewFatArchArray(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v4 = (a3 + 16);
    v5 = a2;
    do
    {
      v6 = *a1++;
      result = *v6;
      *(v4 - 2) = *v6;
      v9 = *(v6 + 12);
      v8 = *(v6 + 16);
      *(v4 - 1) = v9;
      *v4 = v8;
      v10 = (a4 + (1 << v8) - 1) & (0xFFFFFFFFLL << v8);
      *(v4 - 2) = v10;
      a4 = v10 + v9;
      v4 += 5;
      --v5;
    }

    while (v5);
  }

  return result;
}

size_t _normalizeBomCopySpecification(uint64_t a1, unsigned int a2, unsigned int a3, size_t *a4)
{
  v6 = *(a1 + 48);
  v7 = a3;
  v8 = a2;
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = (a1 + 64);
    while (1)
    {
      v11 = *(v10 - 2);
      if (v11 > 2)
      {
        v11 = (v11 - 3) < 2;
      }

      else
      {
        if (!v11)
        {
          v12 = *v10 % a2;
          v13 = *v10 < a2;
LABEL_10:
          v11 = !v13;
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          if (v12)
          {
            v11 = v14;
          }

          goto LABEL_18;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            v12 = *v10 % a3;
            v13 = *v10 < a3;
            goto LABEL_10;
          }

          v11 = 0;
        }
      }

LABEL_18:
      v9 += v11;
      v10 += 7;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = 0;
LABEL_22:
  result = BOM_calloc(56 * v9 + 56, 1uLL);
  v16 = result;
  *result = *a1;
  *(result + 8) = *(a1 + 8);
  *(result + 16) = *(a1 + 16);
  v17 = *(a1 + 32);
  *(result + 24) = *(a1 + 24);
  *(result + 32) = v17;
  *(result + 40) = *(a1 + 40);
  *(result + 48) = v9;
  if (*(a1 + 48) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(a1 + 16);
    v21 = result + 56;
    v22 = (a1 + 96);
    while (1)
    {
      v23 = *(v22 - 2);
      v24 = *v22;
      v25 = *(v22 - 6) <= 1u ? 1 : *(v22 - 6);
      v26 = *(v22 - 10);
      if (v26 <= 2)
      {
        break;
      }

      if ((v26 - 3) < 2)
      {
        result = 0;
        v30 = 0;
LABEL_42:
        v32 = v21 + 56 * v19;
        *v32 = v26;
        *(v32 + 8) = result;
        *(v32 + 16) = 1;
        *(v32 + 24) = v23;
        *(v32 + 32) = v30;
        *(v32 + 40) = v24;
        *(v32 + 48) = v20;
        ++v19;
      }

LABEL_43:
      ++v18;
      v22 += 7;
      if (v18 >= *(a1 + 48))
      {
        goto LABEL_46;
      }
    }

    result = *(v22 - 4);
    v27 = result * v25;
    if (v26)
    {
      if (v26 == 1)
      {
        v30 = *(v22 - 1);
        result = v27;
      }

      else
      {
        if (v26 != 2)
        {
          goto LABEL_43;
        }

        v28 = v27 / v7 * v7;
        if (v28)
        {
          v29 = v21 + 56 * v19;
          *v29 = 2;
          *(v29 + 8) = v7;
          *(v29 + 16) = v27 / v7;
          *(v29 + 24) = v23;
          *(v29 + 32) = 0;
          *(v29 + 40) = v24;
          *(v29 + 48) = v20;
          ++v19;
        }

        result = v27 % v7;
        if (!(v27 % v7))
        {
          goto LABEL_43;
        }

        v30 = 0;
        v23 += v28;
        v24 += v28;
      }
    }

    else
    {
      if (v27 / v8 * v8)
      {
        v31 = v21 + 56 * v19;
        *v31 = 0;
        *(v31 + 8) = v8;
        *(v31 + 16) = v27 / v8;
        *(v31 + 24) = v23;
        *(v31 + 32) = 0;
        *(v31 + 40) = v24;
        *(v31 + 48) = v20;
        ++v19;
      }

      result = v27 % v8;
      if (!(v27 % v8))
      {
        goto LABEL_43;
      }

      v30 = 0;
      v24 = v27 + v24 - result;
    }

    goto LABEL_42;
  }

  v19 = 0;
LABEL_46:
  if (v19 != v9)
  {
    result = fwrite("BOMCopier: Inconsistency while preflighting copy\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *a4 = v16;
  return result;
}

uint64_t _printBomCopySpecification(const void **a1)
{
  printf("_BOMCopySpecification %p:\n", a1);
  printf("\tcopier:\t%p\n", *a1);
  printf("\tsource:\t%p\n", a1[1]);
  printf("\tdest:\t%p\n", a1[2]);
  printf("\toriginalSourceSize:\t%lld\n", a1[4]);
  printf("\ttotalDestinationSize:\t%lld\n", a1[5]);
  printf("\tnumSteps:\t%d\n", *(a1 + 12));
  result = puts("-------------------");
  if (*(a1 + 12) >= 1)
  {
    v3 = 0;
    for (i = a1 + 7; ; i += 7)
    {
      result = printf("Step %d:\n", v3);
      v5 = *i;
      if (*i > 1)
      {
        break;
      }

      if (!v5)
      {
        v6 = "_BOMCopyStepZero";
LABEL_14:
        printf("\ttype:\t%s\n", v6);
        printf("\tsize:\t%lld\n", i[1]);
        printf("\titerationCount:\t%d\n");
        goto LABEL_15;
      }

      if (v5 == 1)
      {
        printf("\ttype:\t%s\n", "_BOMCopyStepBuffer");
        printf("\tsize:\t%lld\n", i[1]);
        printf("\tbuffer:\t%p\n");
LABEL_15:
        printf("\tsourceOffset:\t%lld\n", i[3]);
        result = printf("\tdestOffset:\t%lld\n");
      }

LABEL_16:
      if (++v3 >= *(a1 + 12))
      {
        return result;
      }
    }

    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          printf("\ttype:\t%s\n", "_BOMCopyStepSeekToEndOfSource");
          result = printf("\tsourceOffset:\t%lld\n");
        }

        goto LABEL_16;
      }

      printf("\ttype:\t%s\n");
      goto LABEL_15;
    }

    v6 = "_BOMCopyStepCopy";
    goto LABEL_14;
  }

  return result;
}

uint64_t _executeBomCopySpecification(int **a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5, int *a6)
{
  v8 = a4;
  if (a4)
  {
    v11 = *a4;
  }

  else
  {
    v11 = 0;
  }

  if (!a1)
  {
    v14 = 22;
    goto LABEL_130;
  }

  v73 = BOM_calloc(a2, 1uLL);
  if (!v73)
  {
    v14 = 12;
    goto LABEL_130;
  }

  v12 = *a1;
  if (*(*a1 + 3328))
  {
    v13 = v12 + 832;
  }

  else
  {
    v13 = *(v12 + 287);
  }

  v70 = a5;
  v71 = *a1;
  buf = *(v12 + 1);
  v15 = a1[1];
  v69 = v8;
  crc = v11;
  if (a5)
  {
    v16 = CNCRCInit();
    if (v16)
    {
      v14 = v16;
      goto LABEL_129;
    }
  }

  if (*(a1 + 12) < 1)
  {
    v14 = 0;
    goto LABEL_129;
  }

  v67 = v13;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v68 = a3;
  while (1)
  {
    v20 = &a1[7 * v17 + 7];
    v21 = *(v20 + 6);
    if (!v21)
    {
      v21 = a1[2];
    }

    v22 = *v20;
    if (*v20 > 1)
    {
      switch(v22)
      {
        case 2:
          v35 = v71;
          if (*(v20 + 3) > a6)
          {
            BOMFileSeek();
            if (v36 < 0)
            {
LABEL_134:
              v64 = __error();
              goto LABEL_120;
            }

            a6 = *(v20 + 3);
          }

          if (v20[4] >= 1)
          {
            v37 = 0;
            while (1)
            {
              v35 = v71;
              v38 = *(v20 + 1);
              if (v71[3194])
              {
                break;
              }

              v39 = BOMFileRead(v15, buf, v38);
LABEL_73:
              if (v39 != *(v20 + 1))
              {
                goto LABEL_116;
              }

              v41 = BOMFileWrite(v21, buf, v39);
              if (v41 != *(v20 + 1))
              {
                goto LABEL_134;
              }

              v42 = v41;
              if (v69)
              {
                crc = crc32(crc, buf, v41);
                v42 = *(v20 + 1);
              }

              if (v70)
              {
                CNCRCUpdate();
                v42 = *(v20 + 1);
              }

              v18 += v42;
              v43 = *(v71 + 13);
              if (v43)
              {
                v43(v71, a1[3], v18);
                if (*(v71 + 168))
                {
                  goto LABEL_133;
                }
              }

              v14 = 0;
              a6 = (a6 + v39);
              if (++v37 >= v20[4])
              {
                goto LABEL_102;
              }
            }

            v39 = 0;
            while (1)
            {
              v40 = BOMFileRead(v15, buf, v38 - v39);
              if ((v40 & 0x8000000000000000) != 0)
              {
                break;
              }

              v39 += v40;
              if (!BOMFileEndOfCompressionStream(v15))
              {
                v38 = *(v20 + 1);
                if (v39 != v38)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

LABEL_116:
            v59 = __error();
LABEL_117:
            v60 = *(v35 + 9);
            if (v60)
            {
              v61 = *v59;
              v62 = v35 + 62;
              v63 = v35;
              goto LABEL_122;
            }

LABEL_124:
            v65 = 1;
            goto LABEL_126;
          }

          break;
        case 4:
          v44 = a1[4];
          if (v44 == -1)
          {
            v35 = v71;
            if (!BOMFileEndOfCompressionStream(v15))
            {
              while (1)
              {
                v50 = BOMFileRead(v15, buf, v68);
                if ((v50 & 0x8000000000000000) != 0)
                {
                  goto LABEL_116;
                }

                a6 = (a6 + v50);
                if (BOMFileEndOfCompressionStream(v15))
                {
                  goto LABEL_101;
                }
              }
            }
          }

          else if (v44 > a6)
          {
            BOMFileSeek();
            if (v45 < 0)
            {
              v59 = __error();
              v35 = v71;
              goto LABEL_117;
            }

            a6 = a1[4];
          }

          break;
        case 3:
          v23 = a1[4];
          v24 = v23 - a6;
          if (v23 - a6 >= v68)
          {
            v24 = v68;
          }

          if (v23 == -1)
          {
            v25 = v68;
          }

          else
          {
            v25 = v24;
          }

          v14 = v19;
          if (v25)
          {
            while (1)
            {
              if ((v71[3194] || *(v71 + 12796)) && *(v71 + 12769) && BOMFileEndOfCompressionStream(v15))
              {
                goto LABEL_101;
              }

              v26 = BOMFileRead(v15, buf, v25);
              if ((v26 & 0x8000000000000000) != 0)
              {
                break;
              }

              v27 = v26;
              v28 = a1[4];
              if (v25 != v26 && v28 != -1)
              {
                break;
              }

              a6 = (a6 + v26);
              if (!v26 && v28 == -1)
              {
                goto LABEL_101;
              }

              if (BOMFileWrite(v21, buf, v26) != v26)
              {
                v57 = __error();
                v52 = v71;
                v53 = *(v71 + 9);
                if (!v53)
                {
                  goto LABEL_110;
                }

                v54 = *v57;
                v56 = v71;
                v55 = v67;
LABEL_108:
                v58 = v53(v56, v55, v54);
                if (v58 == 1)
                {
                  v58 = 0;
                }

                else if (!v58)
                {
                  goto LABEL_110;
                }

                goto LABEL_112;
              }

              if (v69)
              {
                crc = crc32(crc, buf, v27);
              }

              if (v70)
              {
                CNCRCUpdate();
              }

              v18 += v27;
              v29 = *(v71 + 13);
              if (v29)
              {
                v29(v71, a1[3], v18);
                if (*(v71 + 168))
                {
                  goto LABEL_133;
                }
              }

              v19 = 0;
              v14 = 0;
              v30 = a1[4];
              v31 = v30 - a6;
              if (v30 - a6 >= v68)
              {
                v31 = v68;
              }

              if (v30 == -1)
              {
                v25 = v68;
              }

              else
              {
                v25 = v31;
              }

              if (!v25)
              {
                goto LABEL_102;
              }
            }

            v51 = __error();
            v52 = v71;
            v53 = *(v71 + 9);
            if (v53)
            {
              v54 = *v51;
              v55 = v71 + 62;
              v56 = v71;
              goto LABEL_108;
            }

LABEL_110:
            v58 = 1;
LABEL_112:
            if (*(v52 + 168))
            {
              v14 = 2;
            }

            else
            {
              v14 = v58;
            }

            goto LABEL_102;
          }

          goto LABEL_102;
      }

LABEL_101:
      v14 = v19;
      goto LABEL_102;
    }

    if (!v22)
    {
      break;
    }

    if (v22 != 1)
    {
      goto LABEL_101;
    }

    v32 = BOMFileWrite(v21, *(v20 + 4), *(v20 + 1));
    if (v32 != *(v20 + 1))
    {
      goto LABEL_119;
    }

    v33 = v32;
    if (v69)
    {
      crc = crc32(crc, *(v20 + 4), v32);
      v33 = *(v20 + 1);
    }

    if (v70)
    {
      CNCRCUpdate();
      v33 = *(v20 + 1);
    }

    v18 += v33;
    v34 = *(v71 + 13);
    if (v34)
    {
      v34(v71, a1[3], v18);
      if (*(v71 + 168))
      {
LABEL_133:
        v14 = 2;
        goto LABEL_129;
      }
    }

LABEL_97:
    v14 = 0;
LABEL_102:
    ++v17;
    v19 = v14;
    if (v17 >= *(a1 + 12))
    {
      goto LABEL_129;
    }
  }

  if (v20[4] < 1)
  {
LABEL_95:
    v49 = *(v71 + 13);
    if (v49)
    {
      v49(v71, a1[3], v18);
      if (*(v71 + 168))
      {
        goto LABEL_133;
      }
    }

    goto LABEL_97;
  }

  v46 = 0;
  v47 = *(v20 + 1);
  while (1)
  {
    v48 = BOMFileWrite(v21, v73, v47);
    if (v48 != *(v20 + 1))
    {
      break;
    }

    v47 = v48;
    if (v69)
    {
      crc = crc32(crc, v73, v48);
      v47 = *(v20 + 1);
    }

    if (v70)
    {
      CNCRCUpdate();
      v47 = *(v20 + 1);
    }

    v18 += v47;
    if (++v46 >= v20[4])
    {
      goto LABEL_95;
    }
  }

LABEL_119:
  v64 = __error();
  v35 = v71;
LABEL_120:
  v60 = *(v35 + 9);
  if (!v60)
  {
    goto LABEL_124;
  }

  v61 = *v64;
  v63 = v35;
  v62 = v67;
LABEL_122:
  v65 = v60(v63, v62, v61);
  if (v65 != 1)
  {
    if (v65)
    {
      goto LABEL_126;
    }

    goto LABEL_124;
  }

  v65 = 0;
LABEL_126:
  if (*(v35 + 168))
  {
    v14 = 2;
  }

  else
  {
    v14 = v65;
  }

LABEL_129:
  free(v73);
  v8 = v69;
  LODWORD(v11) = crc;
LABEL_130:
  if (v8)
  {
    *v8 = v11;
  }

  return v14;
}

uint64_t _checkCopyFileError(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
LABEL_4:
    LODWORD(result) = 1;
    goto LABEL_6;
  }

  LODWORD(result) = v2(a1);
  if (result != 1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  LODWORD(result) = 0;
LABEL_6:
  if (*(a1 + 168))
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t _checkCopyFileConflictError(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

BOOL _ignore_readdir_entry(uint64_t a1)
{
  v2 = *(a1 + 18);
  if (v2 == 2)
  {
    if (*(a1 + 21) != 46)
    {
      return 0;
    }

    v3 = *(a1 + 22);
  }

  else
  {
    if (v2 != 1)
    {
      return v2 >= 4 && (!strncmp(".nfs", (a1 + 21), 4uLL) || v2 >= 0xB && !strncmp(".afpDeleted", (a1 + 21), 0xBuLL));
    }

    v3 = *(a1 + 21);
  }

  return v3 == 46;
}

BOOL _sanitizePath(char *cStr, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 1;
  do
  {
    v8 = cStr[v3];
    v4 |= cStr[v3] < 0;
    if (v8 == 47)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    if (v8 == 47)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5;
    }

    if (!cStr[v3])
    {
      v9 = 0;
      v10 = 1;
    }

    if (v8 == 47)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (v6 != 2)
    {
      v9 = v11;
      v10 = v5;
    }

    if (v8 == 47)
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }

    if (v8 == 46)
    {
      v12 = 1;
    }

    if (v8 == 47)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    if (v8 == 46)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    if (!v6)
    {
      v14 = v12;
    }

    v15 = v6 <= 1;
    if (v6 <= 1)
    {
      v6 = v14;
    }

    else
    {
      v6 = v9;
    }

    if (!v15)
    {
      v5 = v10;
    }

    ++v3;
  }

  while (v7 != v3);
  if (((v4 | v5) & 1) == 0)
  {
    return 0;
  }

  v16 = 134217984;
  v17 = *MEMORY[0x277CBECE8];
  v18 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (v18 || (SystemEncoding = CFStringGetSystemEncoding(), (v18 = CFStringCreateWithCString(v17, cStr, SystemEncoding)) != 0))
  {
    v20 = v18;
    if (v5)
    {
LABEL_38:
      v34 = v16;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v17, v20, @"/");
      alloc = v17;
      MutableCopy = CFArrayCreateMutableCopy(v17, 0, ArrayBySeparatingStrings);
      CFRelease(v20);
      CFRelease(ArrayBySeparatingStrings);
      Count = CFArrayGetCount(MutableCopy);
      if (Count >= 1)
      {
        v24 = Count;
        for (i = 0; i != v24; ++i)
        {
          v26 = CFArrayGetCount(MutableCopy);
          if (v26 >= 1)
          {
            v27 = v26;
            v28 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v28);
              if (CFEqual(ValueAtIndex, @".."))
              {
                break;
              }

              if (v28 && (CFEqual(ValueAtIndex, @".") || CFEqual(ValueAtIndex, &stru_2853D77A0)))
              {
                goto LABEL_51;
              }

              if (v27 == ++v28)
              {
                goto LABEL_52;
              }
            }

            CFArrayRemoveValueAtIndex(MutableCopy, v28);
            if (v27 != 1)
            {
              if (v28)
              {
                --v28;
LABEL_51:
                CFArrayRemoveValueAtIndex(MutableCopy, v28);
                continue;
              }
            }
          }

LABEL_52:
          ;
        }
      }

      v20 = CFStringCreateByCombiningStrings(alloc, MutableCopy, @"/");
      CFRelease(MutableCopy);
      v16 = v34;
    }

LABEL_54:
    CString = CFStringGetCString(v20, cStr, 1024, v16);
    CFRelease(v20);
    return CString == 0;
  }

  v32 = CFStringCreateWithCString(v17, cStr, 0x600u);
  if (v32)
  {
    v20 = v32;
    v16 = 3071;
    if (v5)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }

  return 1;
}

char *_parse_arch_list(uint64_t a1, CFArrayRef theArray, const __CFDictionary *a3, _DWORD *a4, void **a5)
{
  v61 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(theArray);
  v11 = Count;
  if (!Count)
  {
    v49 = *(a1 + 56);
    if (v49)
    {
      strcpy(__str, "archs array is empty");
      v49(a1, __str);
    }

    return 0;
  }

  *a4 = Count;
  v12 = (Count << 32) + 0x100000000;
  v13 = BOM_malloczero(v12 >> 27);
  if (!v13)
  {
    return v13;
  }

  v14 = BOM_malloczero(v12 >> 29);
  *a5 = v14;
  if (!v14)
  {
    free(v13);
    return 0;
  }

  if (v11 < 1)
  {
    return v13;
  }

  v55 = a1;
  v15 = 0;
  v58 = v11 & 0x7FFFFFFF;
  v59 = a5;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
    if (!ValueAtIndex || (v17 = ValueAtIndex, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v17)))
    {
      v51 = v55;
      if (*(v55 + 56))
      {
        snprintf(__str, 0x800uLL, "can't read arch #%d from archs list");
LABEL_65:
        (*(v51 + 56))(v51, __str);
      }

LABEL_66:
      free(*v59);
      free(v13);
      v13 = 0;
      *a4 = 0;
      return v13;
    }

    UTF8String = BOMCFStringGetUTF8String(v17);
    if (!UTF8String)
    {
      v51 = v55;
      if (*(v55 + 56))
      {
        snprintf(__str, 0x800uLL, "can't convert arch #%d from archs listinto UTF8 encoded C string");
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    v20 = UTF8String;
    v21 = BOMGetArchInfoFromName(UTF8String);
    if (!v21 || (v22 = *(v21 + 3), (v23 = BOMGetArchInfoFromCpuType(*(v21 + 2), -1)) == 0))
    {
      if (*(v55 + 56))
      {
        snprintf(__str, 0x800uLL, "can't get arch info for '%s'", v20);
        (*(v55 + 56))(v55, __str);
      }

      free(v20);
      goto LABEL_66;
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v25 == 16777228 && v22 == 0;
    if (v26)
    {
      v27 = 16777228;
    }

    else
    {
      v27 = *(v23 + 2);
    }

    v28 = !v26;
    if (v26)
    {
      v29 = v22;
    }

    else
    {
      v29 = -1;
    }

    if (v25 == 16777223 && v22 == 3)
    {
      v27 = 16777223;
      v28 = 0;
      v29 = v22;
    }

    v31 = v22 == v24;
    v32 = v22 == v24 ? v27 : *(v23 + 2);
    v33 = v31 ? v28 : 0;
    v34 = v31 ? v29 : v22;
    v35 = &v13[32 * v15];
    *v35 = v32;
    v35[4] = v33;
    *(v35 + 2) = v34;
    *(v35 + 2) = 0;
    *(v35 + 6) = 0;
    *(*v59 + v15) = v20;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, v17);
      if (Value)
      {
        v37 = Value;
        v38 = CFArrayGetTypeID();
        if (v38 == CFGetTypeID(v37))
        {
          v39 = CFArrayGetCount(v37);
          v40 = v39;
          if (v39)
          {
            break;
          }
        }
      }
    }

LABEL_49:
    if (++v15 == v58)
    {
      return v13;
    }
  }

  v57 = BOM_malloczero((4 * v39 + 4) & 0x3FFFFFFFCLL);
  if (!v57)
  {
    return 0;
  }

  v53 = v40;
  v54 = a4;
  v41 = 0;
  v56 = 4 * v40;
  while (1)
  {
    v42 = CFArrayGetValueAtIndex(v37, v15);
    if (!v42 || (v43 = v42, v44 = CFStringGetTypeID(), v44 != CFGetTypeID(v43)))
    {
      v52 = v55;
      if (!*(v55 + 56))
      {
        goto LABEL_73;
      }

      snprintf(__str, 0x800uLL, "can't read fallback arch #%d from fallback archs list");
LABEL_69:
      (*(v52 + 56))(v52, __str);
      goto LABEL_73;
    }

    v45 = BOMCFStringGetUTF8String(v43);
    if (!v45)
    {
      v52 = v55;
      if (!*(v55 + 56))
      {
        goto LABEL_73;
      }

      snprintf(__str, 0x800uLL, "can't convert fallback arch #%d from fallback archs listinto UTF8 encoded C string");
      goto LABEL_69;
    }

    v46 = v45;
    v47 = BOMGetArchInfoFromName(v45);
    if (!v47)
    {
      break;
    }

    v48 = v47;
    free(v46);
    *&v57[v41] = *(v48 + 3);
    v41 += 4;
    if (v56 == v41)
    {
      *(v35 + 2) = v57;
      a4 = v54;
      *(v35 + 6) = v53;
      goto LABEL_49;
    }
  }

  if (*(v55 + 56))
  {
    snprintf(__str, 0x800uLL, "can't get arch info for '%s'", v46);
    (*(v55 + 56))(v55, __str);
  }

  free(v46);
LABEL_73:
  free(v57);
  free(v20);
  free(*v59);
  free(v13);
  v13 = 0;
  *v54 = 0;
  return v13;
}

_DWORD *_BOMFreeListAllocate(const __CFDictionary *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"Implementation")) != 0)
  {
    v2 = Value;
    v3 = CFGetTypeID(Value);
    if (v3 == CFStringGetTypeID())
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"dense";
  }

  if (CFEqual(v5, @"dense"))
  {

    return _BOMFreeListAllocateDense();
  }

  else
  {
    if (!CFEqual(v5, @"dense+trace"))
    {
      _BOMFreeListAllocate_cold_4();
    }

    v7 = BOM_malloc(0x48uLL);
    if (!v7)
    {
      _BOMFreeListAllocate_cold_3();
    }

    v8 = v7;
    v7[2] = _densetrace_initialize;
    v7[3] = _densetrace_serialize;
    v7[4] = _densetrace_deallocate;
    v7[7] = _densetrace_clear;
    v7[5] = _densetrace_addFreeRange;
    v7[6] = _densetrace_allocateRange;
    v7[8] = _densetrace_print;
    v9 = getenv("TMPDIR");
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "/tmp";
    }

    v11 = getpid();
    v12 = _BOMFreeListAllocateDenseTrace_objnumber++;
    snprintf(__str, 0x400uLL, "%s/bomfreelist.trace.%d.%d.txt", v10, v11, v12);
    v13 = fopen(__str, "w");
    if (!v13)
    {
      _BOMFreeListAllocate_cold_2();
    }

    v14 = v13;
    v15 = BOM_malloc(0x18uLL);
    if (!v15)
    {
      _BOMFreeListAllocate_cold_1();
    }

    v16 = v15;
    *v15 = _BOMFreeListAllocateDense();
    *(v16 + 2) = 1;
    v16[2] = v14;
    *v8 = v16;
    *(v8 + 2) = 0;
    return v8;
  }
}

_DWORD *_BOMFreeListAllocateDense()
{
  v0 = BOM_malloc(0x48uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v2 = BOM_malloc(0x18uLL);
    if (v2)
    {
      v3 = v2;
      v4 = BOM_calloc(0x20uLL, 8uLL);
      *v3 = v4;
      if (v4)
      {
        v3[1] = 0;
        *(v3 + 4) = 32;
        *v1 = v3;
        v1[2] = 0;
        return v1;
      }

      free(v1);
      v5 = v3;
    }

    else
    {
      v5 = v1;
    }

    free(v5);
    return 0;
  }

  return v1;
}

uint64_t _dense_initialize(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if ((a3 & 7) == 0 && (a3 >> 3) >= 1)
  {
    v5 = result;
    v6 = (a3 >> 3) & 0x7FFFFFFF;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v7 - 1);
      v9 = bswap32(v8);
      v10 = bswap32(*v7);
      if (a4)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (a4)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v7;
      }

      result = (*(v5 + 40))(v5, v11, v12);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

char *_dense_serialize(uint64_t **a1, int a2, size_t *a3)
{
  v4 = *a1;
  v5 = 8 * *(a1 + 2);
  *a3 = v5;
  result = BOM_malloc(v5);
  if (result)
  {
    v7 = *(v4 + 4);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *v4;
      v11 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        v12 = *(v10 + 8 * v8);
        if (v12)
        {
          v13 = &result[8 * v9];
          do
          {
            *v13++ = vbsl_s8(v11, v12[1], vrev32_s8(v12[1]));
            v12 = *v12;
            ++v9;
          }

          while (v12);
          v7 = *(v4 + 4);
        }

        ++v8;
      }

      while (v8 < v7);
      v14 = v9;
    }

    v15 = v4[1];
    if (v15)
    {
      v16 = &result[8 * v14];
      v17 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        *v16++ = vbsl_s8(v17, v15[1], vrev32_s8(v15[1]));
        v15 = *v15;
      }

      while (v15);
    }
  }

  return result;
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = BOM_realloc(*v6, (8 * (a3 + 1)));
        *v6 = v10;
        if (v8 <= a3)
        {
          bzero(&v10[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v11 = *(*v6 + 8 * a3);
      result = BOM_malloc(0x10uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v11;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = BOM_malloc(0x10uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

uint64_t _dense_print(uint64_t result, FILE *__stream, int a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*v5 + 8 * i);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *v8;
        }

        while (v8);
        if (v9 == 1)
        {
          v10 = "y";
        }

        else
        {
          v10 = "ies";
        }

        result = fprintf(__stream, "Size %d: %d entr%s\n", i, v9, v10);
        v6 = *(v5 + 16);
      }
    }
  }

  v11 = *(v5 + 8);
  if (v11)
  {
    if (a3)
    {
      fwrite("Large sizes:\n\t", 0xEuLL, 1uLL, __stream);
    }

    v12 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    while (1)
    {
      fprintf(__stream, "%d ", *(v11 + 3));
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      while (1)
      {
        ++v12;
        if (a3)
        {
          break;
        }

LABEL_17:
        v11 = *v11;
        if (!v11)
        {
          v13 = "ies";
          if (v12 == 1)
          {
            v13 = "y";
          }

          return fprintf(__stream, "Large sizes: %d entr%s\n", v12, v13);
        }
      }
    }

    return fputc(10, __stream);
  }

  return result;
}

uint64_t _densetrace_initialize(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 16))();
  a1[2] = *(*v2 + 8);
  return result;
}

uint64_t _densetrace_serialize(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 24))();
  a1[2] = *(*v2 + 8);
  return result;
}

void _densetrace_deallocate(uint64_t *a1)
{
  v2 = *a1;
  (*(**a1 + 32))();
  free(*v2);
  fclose(*(v2 + 16));
  free(v2);
  *a1 = 0;
}

uint64_t _densetrace_clear(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 56))();
  a1[2] = *(*v2 + 8);
  return result;
}

uint64_t _densetrace_addFreeRange(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 8))
  {
    fprintf(v4[2], "Add\t\t%#zx\n", a3);
  }

  result = (*&(*v4)->_lbfsize)();
  a1[2] = (*v4)->_r;
  return result;
}

uint64_t _densetrace_allocateRange(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 8))
  {
    fprintf(v3[2], "Remove\t\t%#zx\n", a2);
  }

  result = ((*v3)->_cookie)();
  a1[2] = (*v3)->_r;
  return result;
}

uint64_t _densetrace_print(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 64))();
  a1[2] = *(*v2 + 8);
  return result;
}

void **BOMFilesystemInfoCreate(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 100;
  *v14 = 0x200000001;
  if (sysctl(v14, 2u, __str, &v13, 0, 0))
  {
    fwrite("Could not determine kernel version\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_3:
    v2 = -1;
    goto LABEL_10;
  }

  __endptr = 0;
  v3 = strtol(__str, &__endptr, 0);
  v4 = *__endptr;
  if (v4 != 46 && v4 != 0)
  {
    goto LABEL_3;
  }

  v2 = v3;
LABEL_10:
  v6 = BOM_calloc(0x328uLL, 1uLL);
  v7 = v6;
  if (v6)
  {
    if (v2 == -1)
    {
      v8 = 7;
    }

    else
    {
      v8 = v2;
    }

    *(v6 + 2) = v8;
    *(v6 + 3) = a1;
    if (pthread_mutex_init((v6 + 16), 0))
    {
      free(v7);
      return 0;
    }

    else
    {
      for (i = 0; i != 91; i += 13)
      {
        v10 = &v7[i];
        v7[i + 12] = 0;
        __strlcpy_chk();
        *(v10 + 13) = 0u;
        *(v10 + 15) = 0u;
        *(v10 + 17) = 0u;
        *(v10 + 19) = 0u;
        *(v10 + 21) = 0u;
      }

      *v7 = BomSys_default();
    }
  }

  return v7;
}

void BOMFilesystemInfoDestroy(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 16));

  free(a1);
}

uint64_t BOMFilesystemInfoQuery(uint64_t a1, _BYTE *a2, _DWORD *a3, int a4, int a5)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a3 == &DEVICE_ARCHIVE)
  {
    v10 = &archive;
  }

  else if (a3 && (v8 = a1 + 104 * (*a3 % 7), *(v8 + 96)) && (v9 = v8 + 80, *(v9 + 20) == *a3))
  {
    v10 = (v9 + 24);
  }

  else
  {
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
    v22 = 0u;
    v23 = 0u;
    memset(v21, 0, sizeof(v21));
    v20 = 0;
    if (!a2 || _recursive_statfs(a2, v21, &v20, *a1))
    {
      return 0xFFFFFFFFLL;
    }

    if (DWORD2(v22) == 7562856)
    {
      v10 = &hfs7;
    }

    else if (DWORD2(v22) == 1718642273 && WORD6(v22) == 115)
    {
      v10 = &afp;
    }

    else if ((BYTE1(v22) & 0x10) != 0)
    {
      v10 = &flatlocal;
    }

    else
    {
      v10 = &flatnetwork;
    }

    v12 = v20;
    v13 = a1 + 104 * (v20 % 7);
    *(v13 + 96) = 1;
    *(v13 + 100) = v12;
    __strlcpy_chk();
    *(v13 + 120) = v10[1];
    *(v13 + 136) = v10[2];
    *(v13 + 152) = v10[3];
    *(v13 + 168) = v10[4];
    *(v13 + 104) = *v10;
  }

  result = 0xFFFFFFFFLL;
  if (a4 <= 1819173228)
  {
    if (a4 == 1633905696)
    {
      v15 = v10 + 3;
      v16 = 60;
      v17 = 56;
      v18 = 52;
    }

    else
    {
      if (a4 != 1718511215)
      {
        return result;
      }

      v15 = v10 + 1;
      v16 = 28;
      v17 = 24;
      v18 = 20;
    }
  }

  else
  {
    switch(a4)
    {
      case 1819173229:
        v15 = v10 + 4;
        v16 = 76;
        v17 = 72;
        v18 = 68;
        break;
      case 1920168547:
        v16 = 12;
        v17 = 8;
        v18 = 4;
        v15 = v10;
        break;
      case 2020897906:
        v15 = v10 + 2;
        v16 = 44;
        v17 = 40;
        v18 = 36;
        break;
      default:
        return result;
    }
  }

  if (*v15 <= 1u)
  {
    v19 = 1;
  }

  else
  {
    v19 = *v15;
  }

  if (a4 != 1819173229 && *(a1 + 12) != 0)
  {
    result = v19;
  }

  else
  {
    result = *v15;
  }

  if (a5 > 1919905651)
  {
    if (a5 == 1919905652)
    {
      return *(v10 + v16);
    }

    if (a5 != 1936749172)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (a5 != 1634756896)
    {
      if (a5 == 1853126245)
      {
        return *(v10 + v18);
      }

      return 0xFFFFFFFFLL;
    }

    if (a4 != 1819173229 && *(a1 + 12) != 0)
    {
      return 1633968748;
    }

    else
    {
      return *(v10 + v17);
    }
  }

  return result;
}

uint64_t _recursive_statfs(_BYTE *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(__src, 0, 512);
  bzero(v15, 0x3FEuLL);
  *__s = 12078;
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcat_chk();
  }

  v8 = (*(a4 + 104))(*(a4 + 8), __s, __src);
  if (v8)
  {
    v9 = v8;
    if (*__error() != 2)
    {
      return v9;
    }

    v10 = strrchr(__s, 47);
    if (!v10)
    {
      return v9;
    }

    while (1)
    {
      if (v10 == __s)
      {
        __strlcpy_chk();
      }

      else
      {
        *v10 = 0;
      }

      v11 = (*(a4 + 104))(*(a4 + 8), __s, __src);
      if (!v11)
      {
        break;
      }

      v9 = v11;
      v10 = strrchr(__s, 47);
      if (!v10)
      {
        return v9;
      }
    }
  }

  memset(v13, 0, sizeof(v13));
  memcpy(a2, __src, 0x878uLL);
  v9 = (*(a4 + 80))(*(a4 + 8), __s, v13);
  if (!v9)
  {
    *a3 = v13[0];
  }

  return v9;
}

uint64_t BOMArchFlagForHeader(int *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2 >= 8)
  {
    v4 = *a1;
    v5 = *a1 == -889275714 || v4 == -1095041334;
    if (!v5 || ((v6 = bswap32(a1[1]), v8 = v6 > 0x2A, v7 = 20 * v6 + 8, !v8) ? (v8 = v7 > a2) : (v8 = 1), v8))
    {
      if (a2 >= 0x1C)
      {
        result = 1;
        if (v4 != -822415874 && v4 != -17958194)
        {
          v10 = v4 == -17958193 || v4 == -805638658;
          return a2 >= 0x20 && v10;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t BOMArchFlagForFileWithSys(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v2 = BomSys_default();
  }

  v4 = (*(v2 + 2))(*(v2 + 1), a1, 0, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(v2 + 6))(*(v2 + 1), v4, v8, 32);
  (*(v2 + 4))(*(v2 + 1), v5);
  if (v6 == -1)
  {
    return 0;
  }

  else
  {
    return BOMArchFlagForHeader(v8, v6);
  }
}

uint64_t _fat_header_big_to_host(unsigned int *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = bswap32(v2);
  *a1 = bswap32(*a1);
  a1[1] = v3;
  if (20 * v3 + 8 > a2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = a1 + 6;
    do
    {
      *(v5 - 1) = vrev32q_s8(*(v5 - 1));
      *v5 = bswap32(*v5);
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t _fat_header_host_to_big(int8x8_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  v2 = HIDWORD(*a1);
  *a1 = vrev32_s8(*a1);
  if (20 * v2 + 8 > a2)
  {
    return 0;
  }

  if (v2)
  {
    v4 = a1 + 3;
    do
    {
      *v4[-2].i8 = vrev32q_s8(*v4[-2].i8);
      v4->i32[0] = bswap32(v4->i32[0]);
      v4 = (v4 + 20);
      --v2;
    }

    while (v2);
  }

  return 1;
}

char **BOMGetArchInfoFromName(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v2 = &BOMArchInfoTable;
  v3 = "hppa";
  while (strcmp(v3, __s2))
  {
    v4 = v2[4];
    v2 += 4;
    v3 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return v2;
}

char **BOMGetArchInfoFromCpuType(int a1, int a2)
{
  v3 = &BOMArchInfoTable;
  while (*(v3 + 2) != a1 || a2 != -1 && ((*(v3 + 3) ^ a2) & 0xFFFFFF) != 0)
  {
    v4 = v3[4];
    v3 += 4;
    if (!v4)
    {
      if (a1 == 18)
      {
        v6 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        v3 = v6;
        if (!v6)
        {
          return v3;
        }

        *v6 = xmmword_278D136F8;
        *(v6 + 1) = unk_278D13708;
        *(v6 + 3) = a2;
        v8 = 0;
        asprintf(&v8, "PowerPC cpusubtype %u");
LABEL_12:
        if (v8)
        {
          v3[3] = v8;
          return v3;
        }

        free(v3);
      }

      else if (a1 == 7)
      {
        v5 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        v3 = v5;
        if (!v5)
        {
          return v3;
        }

        *v5 = xmmword_278D13638;
        *(v5 + 1) = unk_278D13648;
        *(v5 + 3) = a2;
        v8 = 0;
        asprintf(&v8, "Intel family %u model %u");
        goto LABEL_12;
      }

      return 0;
    }
  }

  return v3;
}

int8x8_t BOMSwapFatHeader(int8x8_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      result = vrev32_s8(*a1);
      *a1 = result;
    }
  }

  return result;
}

uint64_t BOMSwapFatArch(uint64_t a1, unsigned int a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v5 = a2;
    v6 = (a1 + 16);
    do
    {
      *(v6 - 1) = vrev32q_s8(*(v6 - 1));
      *v6 = bswap32(*v6);
      v6 += 5;
      --v5;
    }

    while (v5);
    return 0;
  }

  return result;
}

uint64_t BOMSwapFatArch64(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v3 = a2;
    do
    {
      *a1 = vrev32_s8(*a1);
      *(a1 + 8) = vrev64q_s8(*(a1 + 8));
      *(a1 + 24) = vrev32_s8(*(a1 + 24));
      a1 += 32;
      --v3;
    }

    while (v3);
  }

  return v3;
}

int8x8_t BOMSwapMachHeader(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = vrev32q_s8(*a1);
      result = vrev32_s8(*(a1 + 16));
      *(a1 + 16) = result;
      *(a1 + 24) = bswap32(*(a1 + 24));
    }
  }

  return result;
}

int8x16_t BOMSwapMachHeader64(int8x16_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      result = vrev32q_s8(*a1);
      v3 = vrev32q_s8(a1[1]);
      *a1 = result;
      a1[1] = v3;
    }
  }

  return result;
}

void *BOMBufferAllocate(size_t a1)
{
  v2 = BOM_malloczero(0x48uLL);
  v3 = malloc_type_valloc(a1, 0xD78D30BBuLL);
  v2[3] = v3;
  *v2 = a1;
  if (!v3)
  {
    free(v2);
    return 0;
  }

  return v2;
}

void *BOMBufferPoolAllocate(size_t a1, unint64_t a2)
{
  v4 = BOM_malloczero(0xA0uLL);
  if (pthread_cond_init(v4 + 1, 0))
  {
    goto LABEL_4;
  }

  if (pthread_mutex_init((v4 + 12), 0))
  {
    pthread_cond_destroy(v4 + 1);
LABEL_4:
    free(v4);
    return 0;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = a2;
  v4[3] = a1;
  v4[4] = 0;
  v4[5] = v4 + 4;
  if (a2 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a2;
  }

  if (a2)
  {
    while (1)
    {
      v7 = BOMBufferAllocate(a1);
      if (!v7)
      {
        break;
      }

      --v4[2];
      BOMBufferPoolAddBuffer(v4, v7);
      if (!--v6)
      {
        return v4;
      }
    }

    BOMBufferPoolDeallocate(v4);
    return 0;
  }

  return v4;
}

void BOMBufferPoolDeallocate(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 96)) && !pthread_mutex_unlock((a1 + 96)))
  {
    pthread_cond_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 96));
    for (i = *(a1 + 32); i; i = *(a1 + 32))
    {
      v3 = *(i + 7);
      v4 = *(i + 8);
      v5 = (v3 + 64);
      if (!v3)
      {
        v5 = (a1 + 40);
      }

      *v5 = v4;
      *v4 = v3;
      free(*(i + 3));
      *(i + 8) = 0;
      *(i + 2) = 0u;
      *(i + 3) = 0u;
      *i = 0u;
      *(i + 1) = 0u;
      free(i);
    }

    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;

    free(a1);
  }
}

uint64_t BOMBufferPoolAddBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    *(a2 + 56) = v6;
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v5 = a2;
    *(a2 + 64) = v5;
    *a1 = vaddq_s64(*a1, vdupq_n_s64(1uLL));
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

void *BOMBufferPoolRequestBuffer(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 96)))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      break;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 16) = v4 - 1;
      ++*a1;
      pthread_mutex_unlock((a1 + 96));
      v5 = BOMBufferAllocate(*(a1 + 24));
      if (v5)
      {
        return v5;
      }

      if (pthread_mutex_lock((a1 + 96)))
      {
        return 0;
      }

      ++*(a1 + 16);
      --*a1;
    }

    else if (pthread_cond_wait((a1 + 48), (a1 + 96)))
    {
      return 0;
    }
  }

  v2 = *(a1 + 32);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = (a1 + 40);
  if (v7)
  {
    v9 = (v7 + 64);
  }

  *v9 = v8;
  *v8 = v7;
  *(a1 + 8) = v6 - 1;
  pthread_mutex_unlock((a1 + 96));
  pthread_cond_signal((a1 + 48));
  return v2;
}

uint64_t BOMBufferPoolReturnBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v6 = (a1 + 32);
    v5 = *(a1 + 32);
    *(a2 + 56) = v5;
    if (v5)
    {
      v7 = (v5 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v6 = a2;
    *(a2 + 64) = v6;
    ++*(a1 + 8);
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

char *BOMBufferFIFOCreate()
{
  v0 = BOM_malloczero(0x88uLL);
  if (!pthread_cond_init((v0 + 24), 0))
  {
    if (!pthread_mutex_init((v0 + 72), 0))
    {
      *v0 = 0;
      *(v0 + 1) = 0;
      *(v0 + 2) = v0 + 8;
      return v0;
    }

    pthread_cond_destroy((v0 + 24));
  }

  free(v0);
  return 0;
}

void BOMBufferFIFODestroy(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 72)))
  {
    if (*a1)
    {
      v2 = BOMExceptionHandlerMessage("Attempting to destroy a non-empty FIFO!");
      v3 = __error();
      _BOMFatalException(v2, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMBufferManager.c", 308, *v3);
    }

    if (!pthread_mutex_unlock((a1 + 72)))
    {
      pthread_cond_destroy((a1 + 24));
      pthread_mutex_destroy((a1 + 72));

      free(a1);
    }
  }
}

uint64_t BOMBufferFIFOEnqueue(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 72));
  if (!result)
  {
    *(a2 + 56) = 0;
    v5 = *(a1 + 16);
    *(a2 + 64) = v5;
    *v5 = a2;
    *(a1 + 16) = a2 + 56;
    ++*a1;
    pthread_mutex_unlock((a1 + 72));

    return pthread_cond_broadcast((a1 + 24));
  }

  return result;
}

uint64_t BOMBufferFIFODequeue(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1;
    if (*a1)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 3), (a1 + 9)))
    {
      return 0;
    }
  }

  v2 = a1[1];
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v7 = a1 + 2;
  if (v5)
  {
    v7 = (v5 + 64);
  }

  *v7 = v6;
  *v6 = v5;
  v8 = v4 - 1;
  *a1 = v4 - 1;
  pthread_mutex_unlock((a1 + 9));
  v9 = (a1 + 3);
  if (v8)
  {
    pthread_cond_signal(v9);
  }

  else
  {
    pthread_cond_broadcast(v9);
  }

  return v2;
}

uint64_t BOMBufferFIFOCount(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  v2 = *a1;
  pthread_mutex_unlock((a1 + 9));
  return v2;
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = BOM_malloc(0x160uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memcpy(v4, &gDefaultSys, 0x160uLL);
  result = 0;
  v5[1] = a2;
  *a1 = v5;
  return result;
}

uint64_t BomSys_clone(void *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = BOM_malloc(0x160uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  memcpy(v6, a2, 0x160uLL);
  result = 0;
  v7[1] = a3;
  *a1 = v7;
  return result;
}

void BomSys_free(void *a1)
{
  if (a1)
  {
    if (a1 != &gDefaultSys)
    {
      free(a1);
    }
  }
}

uint64_t BomSys_set_open(uint64_t result, uint64_t (*a2)(int a1, char *a2, int a3, uint64_t a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_open;
    }

    *(result + 16) = v2;
  }

  return result;
}

uint64_t BomSys_set_close(uint64_t result, uint64_t (*a2)(int, int))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_close;
    }

    *(result + 32) = v2;
  }

  return result;
}

uint64_t BomSys_set_read(uint64_t result, uint64_t (*a2)(int, int, void *, size_t))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_read;
    }

    *(result + 48) = v2;
  }

  return result;
}

uint64_t BomSys_set_lchown(uint64_t result, uint64_t (*a2)(int, char *, uid_t, gid_t))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_lchown;
    }

    *(result + 192) = v2;
  }

  return result;
}

uint64_t BomSys_set_chmod(uint64_t result, uint64_t (*a2)(int, char *, mode_t))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_chmod;
    }

    *(result + 200) = v2;
  }

  return result;
}

uint64_t BomSys_set_symlink(uint64_t result, uint64_t (*a2)(int, char *, char *))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_symlink;
    }

    *(result + 248) = v2;
  }

  return result;
}

uint64_t BomSys_set_opendir(uint64_t result, DIR *(*a2)(int a1, char *a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_opendir;
    }

    *(result + 272) = v2;
  }

  return result;
}

uint64_t BomSys_set_closedir(uint64_t result, uint64_t (*a2)(int, DIR *))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_closedir;
    }

    *(result + 280) = v2;
  }

  return result;
}

uint64_t BomSys_set_readdir(uint64_t result, dirent *(*a2)(int a1, DIR *a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_readdir;
    }

    *(result + 288) = v2;
  }

  return result;
}

uint64_t BomSys_set_readdir_r(uint64_t result, uint64_t (*a2)(int, DIR *, dirent *, dirent **))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_readdir_r;
    }

    *(result + 296) = v2;
  }

  return result;
}

uint64_t BomSys_set_copyfile(uint64_t result, uint64_t (*a2)(int, char *from, char *to, copyfile_state_t state, copyfile_flags_t flags))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_copyfile;
    }

    *(result + 344) = v2;
  }

  return result;
}

uint64_t BomSys_set_access(uint64_t result, uint64_t (*a2)(int, char *, int))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_access;
    }

    *(result + 184) = v2;
  }

  return result;
}

uint64_t BomSys_set_fstat(uint64_t result, uint64_t (*a2)(int, int, stat *))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_fstat;
    }

    *(result + 88) = v2;
  }

  return result;
}

uint64_t BomSys_set_lseek(uint64_t result, uint64_t (*a2)(int, int, off_t, int))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_lseek;
    }

    *(result + 64) = v2;
  }

  return result;
}

uint64_t BomSys_set_mmap(uint64_t result, void *(*a2)(int a1, void *a2, size_t a3, int a4, int a5, int a6, off_t a7))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_mmap;
    }

    *(result + 320) = v2;
  }

  return result;
}

uint64_t BomSys_set_munmap(uint64_t result, uint64_t (*a2)(int, void *, size_t))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_munmap;
    }

    *(result + 328) = v2;
  }

  return result;
}

uint64_t BomSys_log_attached(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(*result + 352);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BomSys_log_attach(void **a1, int a2, int a3, uint64_t a4, char a5)
{
  v9 = a1;
  if (!a1)
  {
    v9 = BomSys_default();
  }

  v10 = *v9;
  if (!*v9)
  {
    v10 = BOM_malloczero(0x1A8uLL);
  }

  memcpy(v10, &gLogSysSTDIO, 0x160uLL);
  *v10 = v10;
  v10[1] = v10;
  v10[44] = v9;
  v10[45] = a4;
  *(v10 + 368) = a5;
  *(v10 + 93) = a3;
  if ((a3 & 0x100) != 0)
  {
    *(v10 + 394) = a2;
    if ((a3 & 0x10000) == 0)
    {
LABEL_7:
      if ((a3 & 0x2000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((a3 & 0x10000) == 0)
  {
    goto LABEL_7;
  }

  *(v10 + 95) = 16843009 * a2;
  if ((a3 & 0x2000) == 0)
  {
LABEL_8:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 388) = a2;
  *(v10 + 96) = 16843009 * a2;
  if ((a3 & 0x8000) == 0)
  {
LABEL_9:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v10 + 393) = a2;
  *(v10 + 389) = 16843009 * a2;
  if ((a3 & 0x200) == 0)
  {
LABEL_10:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v10 + 402) = a2;
  *(v10 + 407) = a2;
  *(v10 + 94) = 16843009 * a2;
  if ((a3 & 0x400) == 0)
  {
LABEL_11:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v10 + 395) = a2;
  *(v10 + 403) = a2;
  *(v10 + 102) = 16843009 * a2;
  *(v10 + 206) = 257 * a2;
  if ((a3 & 0x1000) == 0)
  {
LABEL_12:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    *(v10 + 404) = a2;
    *(v10 + 405) = a2;
    *(v10 + 406) = a2;
    if ((a3 & 0x4000) == 0)
    {
      return v10;
    }

    goto LABEL_14;
  }

LABEL_22:
  *(v10 + 396) = a2;
  if ((a3 & 0x800) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((a3 & 0x4000) != 0)
  {
LABEL_14:
    *(v10 + 401) = a2;
    *(v10 + 397) = 16843009 * a2;
  }

  return v10;
}

uint64_t BomSys_log_detach(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1[44];
  free(v1);
  return v2;
}

uint64_t BomSys_log_config(uint64_t result, char *__s2, char a3)
{
  if (result)
  {
    if (__s2)
    {
      v4 = *result;
      if (*result)
      {
        result = strcmp("realpath", __s2);
        if (result)
        {
          result = strcmp("mkdir", __s2);
          if (result)
          {
            result = strcmp("read", __s2);
            if (result)
            {
              result = strcmp("write", __s2);
              if (result)
              {
                result = strcmp("lseek", __s2);
                if (result)
                {
                  result = strcmp("fsync", __s2);
                  if (result)
                  {
                    result = strcmp("stat", __s2);
                    if (result)
                    {
                      result = strcmp("fstat", __s2);
                      if (result)
                      {
                        result = strcmp("lstat", __s2);
                        if (result)
                        {
                          result = strcmp("statfs", __s2);
                          if (result)
                          {
                            result = strcmp("fstatfs", __s2);
                            if (result)
                            {
                              result = strcmp("getattrlist", __s2);
                              if (result)
                              {
                                result = strcmp("getxattr", __s2);
                                if (result)
                                {
                                  result = strcmp("setxattr", __s2);
                                  if (result)
                                  {
                                    result = strcmp("listxattr", __s2);
                                    if (result)
                                    {
                                      result = strcmp("removexattr", __s2);
                                      if (result)
                                      {
                                        result = strcmp("open", __s2);
                                        if (result)
                                        {
                                          result = strcmp("openFor", __s2);
                                          if (result)
                                          {
                                            result = strcmp("close", __s2);
                                            if (result)
                                            {
                                              result = strcmp("fcntl", __s2);
                                              if (result)
                                              {
                                                result = strcmp("unlink", __s2);
                                                if (result)
                                                {
                                                  result = strcmp("rename", __s2);
                                                  if (result)
                                                  {
                                                    result = strcmp("opendir", __s2);
                                                    if (result)
                                                    {
                                                      result = strcmp("closedir", __s2);
                                                      if (result)
                                                      {
                                                        result = strcmp("readdir", __s2);
                                                        if (result)
                                                        {
                                                          result = strcmp("readdir_r", __s2);
                                                          if (result)
                                                          {
                                                            result = strcmp("getcwd", __s2);
                                                            if (result)
                                                            {
                                                              result = strcmp("chdir", __s2);
                                                              if (result)
                                                              {
                                                                result = strcmp("rmdir", __s2);
                                                                if (result)
                                                                {
                                                                  result = strcmp("mknod", __s2);
                                                                  if (result)
                                                                  {
                                                                    result = strcmp("link", __s2);
                                                                    if (result)
                                                                    {
                                                                      result = strcmp("symlink", __s2);
                                                                      if (result)
                                                                      {
                                                                        result = strcmp("readlink", __s2);
                                                                        if (result)
                                                                        {
                                                                          result = strcmp("access", __s2);
                                                                          if (result)
                                                                          {
                                                                            result = strcmp("lchown", __s2);
                                                                            if (result)
                                                                            {
                                                                              result = strcmp("chmod", __s2);
                                                                              if (result)
                                                                              {
                                                                                result = strcmp("chflags", __s2);
                                                                                if (result)
                                                                                {
                                                                                  result = strcmp("utimes", __s2);
                                                                                  if (result)
                                                                                  {
                                                                                    result = strcmp("mmap", __s2);
                                                                                    if (result)
                                                                                    {
                                                                                      result = strcmp("munmap", __s2);
                                                                                      if (result)
                                                                                      {
                                                                                        result = strcmp("mktemp", __s2);
                                                                                        if (!result)
                                                                                        {
                                                                                          v4[416] = a3;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v4[415] = a3;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v4[414] = a3;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v4[401] = a3;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v4[400] = a3;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v4[399] = a3;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v4[398] = a3;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v4[397] = a3;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v4[406] = a3;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v4[405] = a3;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v4[404] = a3;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v4[396] = a3;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v4[403] = a3;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v4[413] = a3;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v4[412] = a3;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v4[411] = a3;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v4[410] = a3;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v4[409] = a3;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v4[408] = a3;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v4[407] = a3;
                                                  }
                                                }

                                                else
                                                {
                                                  v4[402] = a3;
                                                }
                                              }

                                              else
                                              {
                                                v4[379] = a3;
                                              }
                                            }

                                            else
                                            {
                                              v4[378] = a3;
                                            }
                                          }

                                          else
                                          {
                                            v4[377] = a3;
                                          }
                                        }

                                        else
                                        {
                                          v4[376] = a3;
                                        }
                                      }

                                      else
                                      {
                                        v4[393] = a3;
                                      }
                                    }

                                    else
                                    {
                                      v4[392] = a3;
                                    }
                                  }

                                  else
                                  {
                                    v4[391] = a3;
                                  }
                                }

                                else
                                {
                                  v4[390] = a3;
                                }
                              }

                              else
                              {
                                v4[389] = a3;
                              }
                            }

                            else
                            {
                              v4[388] = a3;
                            }
                          }

                          else
                          {
                            v4[387] = a3;
                          }
                        }

                        else
                        {
                          v4[386] = a3;
                        }
                      }

                      else
                      {
                        v4[385] = a3;
                      }
                    }

                    else
                    {
                      v4[384] = a3;
                    }
                  }

                  else
                  {
                    v4[383] = a3;
                  }
                }

                else
                {
                  v4[382] = a3;
                }
              }

              else
              {
                v4[381] = a3;
              }
            }

            else
            {
              v4[380] = a3;
            }
          }

          else
          {
            v4[395] = a3;
          }
        }

        else
        {
          v4[394] = a3;
        }
      }
    }
  }

  return result;
}

uint64_t BomSys_log_resume(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 368) = 1;
    }
  }

  return result;
}

uint64_t BomSys_log_pause(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 368) = 0;
    }
  }

  return result;
}

uint64_t BomSysLog_open(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 16))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 376))
  {
    fprintf(*(a1 + 360), "open(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_openFor(uint64_t a1, const char *a2, int a3, int a4, const char *a5)
{
  v10 = (*(*(a1 + 352) + 24))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 377))
  {
    fprintf(*(a1 + 360), "openFor(%s, %d, %d, %s) => %d\n", a2, a3, a4, a5, v10);
  }

  return v10;
}

uint64_t BomSysLog_close(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 352) + 32))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 378))
  {
    fprintf(*(a1 + 360), "close(%d) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_fcntl(uint64_t a1, int a2, int a3, const void *a4)
{
  v8 = (*(*(a1 + 352) + 40))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 379))
  {
    fprintf(*(a1 + 360), "fcntl(%d, %d, %p) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_read(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 48))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 380))
  {
    fprintf(*(a1 + 360), "read(%d, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_write(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 56))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 381))
  {
    fprintf(*(a1 + 360), "write(%d, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_lseek(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = (*(*(a1 + 352) + 64))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 382))
  {
    fprintf(*(a1 + 360), "lseek(%d, %lld, %d) => %lld\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_fsync(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 352) + 72))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 383))
  {
    fprintf(*(a1 + 360), "fsync(%d) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_stat(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 80))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 384))
  {
    fprintf(*(a1 + 360), "stat(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_fstat(uint64_t a1, int a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 88))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 385))
  {
    fprintf(*(a1 + 360), "fstat(%d, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_lstat(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 96))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 386))
  {
    fprintf(*(a1 + 360), "lstat(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_statfs(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 104))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 387))
  {
    fprintf(*(a1 + 360), "statfs(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_fstatfs(uint64_t a1, int a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 112))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 388))
  {
    fprintf(*(a1 + 360), "fstatfs(%d, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_getattrlist(uint64_t a1, const char *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*(a1 + 352) + 120))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 389))
  {
    fprintf(*(a1 + 360), "getattrlist(%s, %p, %p, %zu, %lu) => %d\n", a2, a3, a4, a5, a6, v12);
  }

  return v12;
}

uint64_t BomSysLog_getxattr(uint64_t a1, const char *a2, const char *a3, const void *a4, uint64_t a5, int a6, int a7)
{
  v14 = (*(*(a1 + 352) + 128))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 390))
  {
    fprintf(*(a1 + 360), "getxattr(%s, %s, %p, %zu, %u, %d) => %zd\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_setxattr(uint64_t a1, const char *a2, const char *a3, const void *a4, uint64_t a5, int a6, int a7)
{
  v14 = (*(*(a1 + 352) + 136))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 391))
  {
    fprintf(*(a1 + 360), "setxattr(%s, %s, %p, %zu, %u, %d) => %d\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_listxattr(uint64_t a1, const char *a2, const char *a3, uint64_t a4, int a5)
{
  v10 = (*(*(a1 + 352) + 144))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 392))
  {
    fprintf(*(a1 + 360), "listxattr(%s, %s, %zu, %d) => %zd\n", a2, a3, a4, a5, v10);
  }

  return v10;
}

uint64_t BomSysLog_removexattr(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = (*(*(a1 + 352) + 152))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 393))
  {
    fprintf(*(a1 + 360), "removexattr(%s, %s, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_realpath(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 160))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 394))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = "(null)";
    }

    if (v6)
    {
      v7 = v6;
    }

    fprintf(*(a1 + 360), "realpath(%s, %s) => %s\n", v8, v9, v7);
  }

  return v6;
}

uint64_t BomSysLog_mkdir(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 168))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 395))
  {
    fprintf(*(a1 + 360), "mkdir(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_mknod(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 396))
  {
    fprintf(*(a1 + 360), "mknod(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_access(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 184))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 397))
  {
    fprintf(*(a1 + 360), "access(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_lchown(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 192))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 398))
  {
    fprintf(*(a1 + 360), "chown(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_chmod(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 200))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 399))
  {
    fprintf(*(a1 + 360), "chmod(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_chflags(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 208))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 400))
  {
    fprintf(*(a1 + 360), "chflags(%s, %u) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_utimes(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 216))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 401))
  {
    fprintf(*(a1 + 360), "utimes(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_unlink(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 224))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 402))
  {
    fprintf(*(a1 + 360), "unlink(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_rmdir(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 232))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 403))
  {
    fprintf(*(a1 + 360), "rmdir(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_link(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 240))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 404))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "link(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

uint64_t BomSysLog_symlink(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 248))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 405))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "symlink(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

uint64_t BomSysLog_readlink(uint64_t a1, const char *a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 256))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 406))
  {
    fprintf(*(a1 + 360), "readlink(%s, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_rename(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 264))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 407))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "rename(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

uint64_t BomSysLog_opendir(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 352) + 272))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 408))
  {
    BomSysLog_DIR(v6, v4);
    fprintf(*(a1 + 360), "opendir(%s) => %s\n", a2, v6);
  }

  return v4;
}

uint64_t BomSysLog_closedir(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 368) && *(a1 + 409))
  {
    BomSysLog_DIR(v6, a2);
  }

  v4 = (*(*(a1 + 352) + 280))(*(*(a1 + 352) + 8), a2);
  if (*(a1 + 368) && *(a1 + 409))
  {
    fprintf(*(a1 + 360), "closedir(%s) => %d\n", v6, v4);
  }

  return v4;
}

uint64_t BomSysLog_readdir(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 352) + 288))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 410))
  {
    BomSysLog_DIR(v7, a2);
    BomSysLog_DIRENT(v6, v4);
    fprintf(*(a1 + 360), "readdir(%s) => %s\n", v7, v6);
  }

  return v4;
}

uint64_t BomSysLog_readdir_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = (*(*(a1 + 352) + 296))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 411))
  {
    BomSysLog_DIR(v13, a2);
    BomSysLog_DIRENT(v12, a3);
    if (a4)
    {
      v9 = *a4;
      if (*a4 == a3)
      {
        strcpy(v11, "<same>");
LABEL_8:
        fprintf(*(a1 + 360), "readdir_r(%s, %s, %s) => %d\n", v13, v12, v11, v8);
        return v8;
      }
    }

    else
    {
      v9 = 0;
    }

    BomSysLog_DIRENT(v11, v9);
    goto LABEL_8;
  }

  return v8;
}

uint64_t BomSysLog_getcwd(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = (*(*(a1 + 352) + 304))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 412))
  {
    v7 = "(null)";
    if (v6)
    {
      v7 = v6;
    }

    fprintf(*(a1 + 360), "getcwd(%p, %zu) => %s\n", a2, a3, v7);
  }

  return v6;
}

uint64_t BomSysLog_chdir(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 312))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 413))
  {
    fprintf(*(a1 + 360), "chdir(%s) => %d\n", a2, v4);
  }

  return v4;
}

const void *BomSysLog_mmap(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v14 = (*(*(a1 + 352) + 320))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 414))
  {
    fprintf(*(a1 + 360), "mmap(%p, %zu, %d, %d, %d, %lld) => %p\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_munmap(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = (*(*(a1 + 352) + 328))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 415))
  {
    fprintf(*(a1 + 360), "munmap(%p, %zd) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_mktemp(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 336))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 416))
  {
    v5 = "(null)";
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = "(null)";
    }

    if (v4)
    {
      v5 = v4;
    }

    fprintf(*(a1 + 360), "mktemp(%s) => %s\n", v6, v5);
  }

  return v4;
}

uint64_t BomSysLog_copyfile(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 344))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 417))
  {
    fprintf(*(a1 + 360), "copyfile(%s, %s)\n", a2, a3);
  }

  return v6;
}

uint64_t BomSysLog_DIR(char *a1, uint64_t a2)
{
  if (a2)
  {
    return snprintf(a1, 0x40uLL, "%p {%d}");
  }

  else
  {
    return snprintf(a1, 0x40uLL, "%p");
  }
}

uint64_t BomSysLog_DIRENT(char *a1, uint64_t a2)
{
  if (a2)
  {
    return snprintf(a1, 0x440uLL, "%p {%llu, %d, %s}");
  }

  else
  {
    return snprintf(a1, 0x440uLL, "%p");
  }
}

void BOMCopierErrorFree(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t BOMCopierErrorGetFileName(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMCopierErrorGetLineNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t BOMCopierErrorGetCompilationDate(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t BOMCopierErrorGetFunctionName(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t BOMCopierErrorGetMessage(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t BOMCopierErrorGetCode(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void *BOMCopierErrorCapture(void *result, int a2, uint64_t a3, int a4, uint64_t a5, char *a6, ...)
{
  va_start(va, a6);
  v17[0] = 0;
  if (result)
  {
    v6 = result;
    if (!*result)
    {
      va_copy(&v17[1], va);
      if (vasprintf(v17, a6, va) < 0)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = __error();
        v13 = strerror(*v12);
        return fprintf(v11, "Could not create error message: %s\n", v13);
      }

      else
      {
        if (v17[0])
        {
          result = malloc_type_calloc(1uLL, 0x30uLL, 0x105004057D267B0uLL);
          if (result)
          {
            *result = a3;
            *(result + 2) = a4;
            result[2] = "Oct 10 2025";
            result[3] = a5;
            result[4] = v17[0];
            *(result + 10) = a2;
            *v6 = result;
            return result;
          }

          v14 = *MEMORY[0x277D85DF8];
          v15 = "Could not allocate empty _BOMCopierError\n";
          v16 = 41;
        }

        else
        {
          v14 = *MEMORY[0x277D85DF8];
          v15 = "Error message is NULL\n";
          v16 = 22;
        }

        return fwrite(v15, v16, 1uLL, v14);
      }
    }
  }

  return result;
}

uint64_t BOMCopierCopyWithOptions2(uint64_t a1, char *a2, char *a3, const void *a4)
{
  v107 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 22;
  }

  v8 = (a1 + 11616);
  v99 = 0;
  if (os_variant_has_internal_content())
  {
    getenv("BOMCOPIER_LOGGING");
LABEL_4:
    *(a1 + 13008) = os_log_create("com.apple.Bom", "BOMCopier");
    goto LABEL_5;
  }

  v15 = v8[1450];
  v16 = getenv("BOMCOPIER_LOGGING");
  if (v16)
  {
    if (*v16 == 49 && !v16[1] || (v15 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (v15)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = *(a1 + 13008);
  if (v9)
  {
    if (!os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT) || (*buf = 136315138, *&buf[4] = a2, _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "fromObj: %s", buf, 0xCu), (v9 = *(a1 + 13008)) != 0))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = a3;
        _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "toObj: %s", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 13016) = Mutable;
  if (!Mutable)
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 720, "prepare_copy_state", "Could not create source options");
    goto LABEL_249;
  }

  v12 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 13032) = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 727, "prepare_copy_state", "Could not create destination options");
    goto LABEL_249;
  }

  if (!a4)
  {
    goto LABEL_89;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 735, "prepare_copy_state", "The options dictionary is not a CFDictionary");
    goto LABEL_249;
  }

  if (parse_copier_options(a1, a4, &v99))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 742, "prepare_copy_state", "Could not create parse copier options");
LABEL_249:
    v14 = 1;
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 188, "BOMCopierCopyWithOptions2", "Could not parse the client options");
    notify_fatal_error(a1, v99);
    release_copy_state_0(a1);
    return v14;
  }

  if (CFDictionaryContainsKey(a4, @"compressCPIO") && *(a1 + 12712) != 1 && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3597, "verify_copier_options", "Compression is only used for CPIO archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"skipCPIOTerminator") && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3606, "verify_copier_options", "SkipTerminator is only used for CPIO archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"skipCPIORoot") && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3615, "verify_copier_options", "SkipRoot is only used for CPIO archives");
    goto LABEL_248;
  }

  if (*(a1 + 12712) == 2 && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3626, "verify_copier_options", "PKZip archives can only be extracted to filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"sequesterResources") && *(a1 + 12716) != 5 && *(a1 + 12712) != 2)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3634, "verify_copier_options", "sequesterResources is only for PKZip archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"keepParent") && *(a1 + 12716) == 3)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3647, "verify_copier_options", "keepParent is only for archives");
    goto LABEL_248;
  }

  v17 = CFDictionaryContainsKey(a4, @"inputFD");
  if (a2 && v17)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3660, "verify_copier_options", "Cannot specify a fromObj with kBOMCopierOptionInputFileDescriptorKey");
    goto LABEL_248;
  }

  v18 = CFDictionaryContainsKey(a4, @"outputFD");
  if (a3 && v18)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3669, "verify_copier_options", "Cannot specify a toObj with kBOMCopierOptionOutputFileDescriptorKey");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"inputStream"))
  {
    if (a2 || CFDictionaryContainsKey(a4, @"inputFD"))
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3682, "verify_copier_options", "Cannot specify fromObj or kBOMCopierOptionInputFileDescriptorKey with kBOMCopierOptionInputCFReadStreamKey");
      goto LABEL_248;
    }

    Value = CFDictionaryGetValue(a4, @"inputStream");
    for (i = 30; ; --i)
    {
      Status = CFReadStreamGetStatus(Value);
      if (Status != kCFStreamStatusOpening)
      {
        break;
      }

      if (!i)
      {
        BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3706, "verify_copier_options", "Timed out waiting for the read stream to open");
        goto LABEL_248;
      }

      *buf = xmmword_241C78EB0;
      nanosleep(buf, 0);
    }

    if (Status != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3722, "verify_copier_options", "CFReadStream is not open: %u");
      goto LABEL_248;
    }
  }

  if (CFDictionaryContainsKey(a4, @"outputStream"))
  {
    if (a3 || CFDictionaryContainsKey(a4, @"outputFD"))
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3731, "verify_copier_options", "Cannot specify toObj or kBOMCopierOptionOutputFileDescriptorKey with kBOMCopierOptionOutputCFWriteStreamKey");
      goto LABEL_248;
    }

    v22 = CFDictionaryGetValue(a4, @"outputStream");
    for (j = 30; ; --j)
    {
      v24 = CFWriteStreamGetStatus(v22);
      if (v24 != kCFStreamStatusOpening)
      {
        break;
      }

      if (!j)
      {
        BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3755, "verify_copier_options", "Timed out waiting for the write stream to open");
        goto LABEL_248;
      }

      *buf = xmmword_241C78EB0;
      nanosleep(buf, 0);
    }

    if (v24 != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3771, "verify_copier_options", "CFWriteStream is not open: %u");
      goto LABEL_248;
    }
  }

  v25 = CFDictionaryContainsKey(a4, @"output2Nowhere");
  if (a3 && v25)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3780, "verify_copier_options", "Cannot specify a toObj with kBOMCopierOptionOutputNowhereKey");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"setStaticContent") && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3793, "verify_copier_options", "setStaticContent is only for filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"setSingleWriter") && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3802, "verify_copier_options", "setSingleWriter is only for filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"applyProvenance"))
  {
    if (!*(a1 + 12712))
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3811, "verify_copier_options", "applyProvenance is only for extracting from archives");
      goto LABEL_248;
    }

    if (*(a1 + 12716) != 3)
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3817, "verify_copier_options", "applyProvenance is only applicable when extracting from archives");
      goto LABEL_248;
    }
  }

  if (CFDictionaryContainsKey(a4, @"injectAppleDoubleBetweenSegmentedFiles"))
  {
    if (CFDictionaryContainsKey(a4, @"createCPIO"))
    {
      if (CFDictionaryContainsKey(a4, @"segmentLargeFiles"))
      {
        goto LABEL_86;
      }

      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3834, "verify_copier_options", "injectAppleDouble requires segment large files");
    }

    else
    {
      BOMCopierErrorCapture(&v99, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3827, "verify_copier_options", "injectAppleDouble requires creating a CPIO");
    }

LABEL_248:
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 749, "prepare_copy_state", "Could not verify copier options");
    goto LABEL_249;
  }

LABEL_86:
  v26 = *(a1 + 13008);
  if (v26 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_241C0E000, v26, OS_LOG_TYPE_DEFAULT, "options: %@", buf, 0xCu);
  }

LABEL_89:
  if (getenv("PRESERVECOMPRESSION"))
  {
    v27 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(*(a1 + 13016), @"discoverCompressionAttributes", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(*(a1 + 13032), @"preserveAppleFSCompression", v27);
  }

  v28 = *(a1 + 13008);
  if (v28)
  {
    if (!os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT) || (v29 = *(a1 + 13016), *buf = 138412290, *&buf[4] = v29, _os_log_impl(&dword_241C0E000, v28, OS_LOG_TYPE_DEFAULT, "source options: %@", buf, 0xCu), (v28 = *(a1 + 13008)) != 0))
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 13032);
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_impl(&dword_241C0E000, v28, OS_LOG_TYPE_DEFAULT, "destination options: %@", buf, 0xCu);
        v28 = *(a1 + 13008);
      }
    }
  }

  v31 = BOMCopierSourceNew(a2, *(a1 + 13016), v28, &v99);
  *(a1 + 13024) = v31;
  if (!v31)
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 783, "prepare_copy_state", "Could not create BOMCopierSource");
    goto LABEL_249;
  }

  v32 = BOMCopierDestinationNew(a3, *(a1 + 13032), &v99);
  *(a1 + 13040) = v32;
  if (!v32)
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 790, "prepare_copy_state", "Could not create BOMCopierDestination");
    goto LABEL_249;
  }

  BOMCopierDestinationSetLog(v32, *(a1 + 13008));
  if (BOMCopierSourceSetErrorHandler(*(a1 + 13024), source_error_handler, a1, &v99))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 803, "prepare_copy_state", "Could not set BOMCopierSource error handler");
    goto LABEL_249;
  }

  if (*(a1 + 128))
  {
    if (BOMCopierSourceSetPassphraseCallback(*(a1 + 13024), passphrase_callback, a1, &v99))
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 816, "prepare_copy_state", "Could not set BOMCopierSource passphrase callback");
      goto LABEL_249;
    }

    v33 = *(a1 + 13008);
    if (v33 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v33, OS_LOG_TYPE_DEFAULT, "Set passphrase callback", buf, 2u);
    }
  }

  v34 = (a1 + 13040);
  v35 = *(a1 + 13048);
  if (v35)
  {
    if (BOMCopierDestinationSetAllowBom(*v34, v35, &v99))
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 832, "prepare_copy_state", "Could not set allow bom for destination");
      goto LABEL_249;
    }

    v36 = *(a1 + 13008);
    if (v36 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v36, OS_LOG_TYPE_DEFAULT, "Set allow bom with destination", buf, 2u);
    }
  }

  v37 = *(a1 + 13056);
  if (v37)
  {
    if (BOMCopierDestinationSetDenyBom(*v34, v37, &v99))
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 844, "prepare_copy_state", "Could not set deny bom for destination");
      goto LABEL_249;
    }

    v38 = *(a1 + 13008);
    if (v38 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v38, OS_LOG_TYPE_DEFAULT, "Set deny bom with destination", buf, 2u);
    }
  }

  if (v8[1448] == 1)
  {
    v39 = *(a1 + 13048);
    if (!v39)
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 855, "prepare_copy_state", "The client did not provide an index bom to use for enumeration");
      goto LABEL_249;
    }

    if (BOMCopierSourceSetEnumerationBom(*(a1 + 13024), v39, &v99))
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 862, "prepare_copy_state", "Could not set enumeration bom for source");
      goto LABEL_249;
    }

    v40 = *(a1 + 13008);
    if (v40 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v40, OS_LOG_TYPE_DEFAULT, "Set enumeration bom with source", buf, 2u);
    }
  }

  if (v8[1449] == 1)
  {
    v41 = *(a1 + 13048);
    if (!v41)
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 873, "prepare_copy_state", "The client did not provide an index bom to use for checksum validation");
      goto LABEL_249;
    }

    if (BOMCopierDestinationSetChecksumBom(*v34, v41, &v99))
    {
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 880, "prepare_copy_state", "Could not set checksum bom for destination");
      goto LABEL_249;
    }

    v42 = *(a1 + 13008);
    if (v42 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v42, OS_LOG_TYPE_DEFAULT, "Set enumeration bom with destination", buf, 2u);
    }
  }

  if (BOMCopierDestinationSetConflictResolver(*(a1 + 13040), conflict_resolver, a1, &v99))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 894, "prepare_copy_state", "Could not set conflict resolver");
    goto LABEL_249;
  }

  if (BOMCopierDestinationSetDataWrittenCallback(*(a1 + 13040), data_written_callback, a1, &v99))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 905, "prepare_copy_state", "Could not set data written callback");
    goto LABEL_249;
  }

  if (BOMCopierDestinationSetFinalizationCallback(*(a1 + 13040), finalization_callback, a1, &v99))
  {
    BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 916, "prepare_copy_state", "Could not set finalization callback");
    goto LABEL_249;
  }

  v43 = *(a1 + 13008);
  if (v43 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v43, OS_LOG_TYPE_DEFAULT, "Copy state prepared", buf, 2u);
    v43 = *(a1 + 13008);
  }

  bzero(buf, 0x430uLL);
  *buf = 1;
  v44 = *(a1 + 8);
  *&buf[8] = a1 + 13040;
  v103 = v44;
  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  v105 = *(a1 + 32);
  v106 = v46;
  v104 = v45;
  if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *v100 = 0;
    _os_log_impl(&dword_241C0E000, v43, OS_LOG_TYPE_DEFAULT, "Starting copy", v100, 2u);
  }

  while (1)
  {
    v47 = *(a1 + 13008);
    if (*(a1 + 168) == 1)
    {
      if (v47 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
      {
        *v100 = 0;
        v84 = "Client cancelled";
        v97 = 2;
        v85 = v47;
LABEL_246:
        _os_log_impl(&dword_241C0E000, v85, OS_LOG_TYPE_DEFAULT, v84, v100, 2u);
        goto LABEL_282;
      }

LABEL_280:
      v92 = 2;
      goto LABEL_281;
    }

    if (v47 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v100 = 0;
      _os_log_impl(&dword_241C0E000, v47, OS_LOG_TYPE_DEFAULT, "Retrieving the next source entry", v100, 2u);
    }

    v48 = BOMCopierSourceNext(*(a1 + 13024), &v99);
    v49 = v48;
    if (v99)
    {
      if (v48)
      {
        BOMCopierSourceEntryFree(v48);
      }

      v97 = 1;
      BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 249, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2);
      goto LABEL_274;
    }

    if (!v48)
    {
      break;
    }

    Type = BOMCopierSourceEntryGetType(v48);
    if (Type == 6)
    {
      Mode = BOMCopierSourceEntryGetMode(v49);
      if ((Mode & 0x80) == 0)
      {
        BOMCopierSourceEntrySetMode(v49, Mode | 0x80);
      }

      goto LABEL_167;
    }

    if (Type == 8)
    {
      if (*(a1 + 12712) || !BOMCopierSourceEntryCheckAccess(v49, 0))
      {
        goto LABEL_167;
      }

      Path = BOMCopierSourceEntryGetPath(v49);
      v98 = 0;
      asprintf(&v98, "%s/%s", a2, Path);
      v79 = v98;
      if (!v98)
      {
        v82 = *__error();
        v83 = __error();
        v95 = strerror(*v83);
        BOMCopierErrorCapture(&v99, v82, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 358, "BOMCopierCopyWithOptions2", "Could not create error path: %s", v95);
        goto LABEL_213;
      }

      v8[1451] = 1;
      v80 = __error();
      v81 = notify_file_error(a1, v79, *v80);
      free(v98);
      if (v81 != 1)
      {
LABEL_219:
        BOMCopierSourceEntryFree(v49);
        release_copy_state_0(a1);
        v97 = 2;
        v55 = 1;
        goto LABEL_220;
      }

      v54 = *(a1 + 13008);
      if (!v54 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_162;
      }

LABEL_161:
      *v100 = 136315138;
      v101 = Path;
      _os_log_impl(&dword_241C0E000, v54, OS_LOG_TYPE_DEFAULT, "Skipping %s", v100, 0xCu);
LABEL_162:
      BOMCopierSourceEntryFree(v49);
      v55 = 2;
LABEL_220:
      if (v55 != 2)
      {
        return v97;
      }
    }

    else
    {
      if (Type <= 2)
      {
        Path = BOMCopierSourceEntryGetPath(v49);
        v98 = 0;
        asprintf(&v98, "%s/%s", a2, Path);
        v52 = v98;
        if (v98)
        {
          v8[1451] = 1;
          v53 = notify_file_error(a1, v52, 13);
          free(v98);
          if (v53 != 1)
          {
            goto LABEL_219;
          }

          v54 = *(a1 + 13008);
          if (!v54 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }

        v77 = *__error();
        v78 = __error();
        v94 = strerror(*v78);
        BOMCopierErrorCapture(&v99, v77, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 290, "BOMCopierCopyWithOptions2", "Could not create error path: %s", v94);
LABEL_213:
        v55 = 1;
        v97 = 1;
        goto LABEL_220;
      }

LABEL_167:
      *v8 = 0;
      v8[1025] = 0;
      if (!*(a1 + 88))
      {
        goto LABEL_170;
      }

      v57 = BOMCopierSourceEntryGetPath(v49);
      v58 = BOMCopierSourceEntryGetType(v49);
      Size = BOMCopierSourceEntryGetSize(v49);
      v60 = map_entry_type(v58);
      v61 = (*(a1 + 88))(a1, v57, v60, Size);
      if (v61 == 1)
      {
        v74 = *(a1 + 13008);
        if (v74 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
        {
          *v100 = 0;
          _os_log_impl(&dword_241C0E000, v74, OS_LOG_TYPE_DEFAULT, "Client skipped source entry", v100, 2u);
        }

        BOMCopierSourceEntryFree(v49);
      }

      else
      {
        if (v61 == 2)
        {
          v87 = *(a1 + 13008);
          if (v87 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            v88 = "Client cancelled";
            goto LABEL_278;
          }

LABEL_279:
          BOMCopierSourceEntryFree(v49);
          goto LABEL_280;
        }

LABEL_170:
        if (*(a1 + 168) == 1)
        {
          v87 = *(a1 + 13008);
          if (v87 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            v88 = "Client cancelled";
            goto LABEL_278;
          }

          goto LABEL_279;
        }

        if (v8[1025] == 1)
        {
          v62 = BOMCopierSourceEntryGetPath(v49);
          if (!v62)
          {
            v97 = 1;
            BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 460, "BOMCopierCopyWithOptions2", "Could not get path for redirected source entry", v93, v96);
            goto LABEL_274;
          }

          v63 = strdup(v62);
          if (!v63)
          {
            v97 = 1;
            BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 468, "BOMCopierCopyWithOptions2", "Could not duplicate path for redirected source entry", v93, v96);
            goto LABEL_274;
          }

          v64 = v63;
          BOMCopierSourceEntryFree(v49);
          if (BOMCopierSourceSetRedirectCallback(*(a1 + 13024), source_redirection_callback, a1, &v99))
          {
            v97 = 1;
            BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 478, "BOMCopierCopyWithOptions2", "Could not set source redirect callback", v93, v96);
            goto LABEL_273;
          }

          v65 = BOMCopierSourceNext(*(a1 + 13024), &v99);
          v49 = v65;
          if (v99)
          {
            if (v65)
            {
              BOMCopierSourceEntryFree(v65);
            }

            v97 = 1;
            BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 493, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2);
LABEL_273:
            free(v64);
LABEL_274:
            notify_fatal_error(a1, v99);
            goto LABEL_282;
          }

          if (!v65)
          {
            free(v64);
            goto LABEL_263;
          }

          if (BOMCopierSourceEntrySetPath(v65, v64))
          {
            v97 = 1;
            BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 510, "BOMCopierCopyWithOptions2", "Could not set the saved entry path");
            goto LABEL_273;
          }

          free(v64);
        }

        if (*v8 != 1)
        {
          goto LABEL_184;
        }

        if (BOMCopierDestinationSetRedirectCallback(*(a1 + 13040), destination_redirection_callback, a1, &v99))
        {
          v97 = 1;
          BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 530, "BOMCopierCopyWithOptions2", "Could not set destination redirect callback");
          notify_fatal_error(a1, v99);
          goto LABEL_258;
        }

        v66 = *(a1 + 13008);
        if (v66)
        {
          if (os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            _os_log_impl(&dword_241C0E000, v66, OS_LOG_TYPE_DEFAULT, "Set destination redirect callback", v100, 2u);
LABEL_184:
            v66 = *(a1 + 13008);
            if (!v66)
            {
              goto LABEL_187;
            }
          }

          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            _os_log_impl(&dword_241C0E000, v66, OS_LOG_TYPE_DEFAULT, "Copying source entry to destination set", v100, 2u);
          }
        }

LABEL_187:
        v67 = BOMCopierSourceEntryGetPath(v49);
        v68 = *(a1 + 13008);
        if (v68)
        {
          v69 = v67;
          if (os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 136315138;
            v101 = v69;
            _os_log_impl(&dword_241C0E000, v68, OS_LOG_TYPE_DEFAULT, " %s", v100, 0xCu);
          }
        }

        if (BOMCopierCopySourceEntryToDestinationSet(v49, buf, &v99))
        {
          v97 = 1;
          BOMCopierErrorCapture(&v99, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 550, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2, a3, 0x8200102);
          notify_fatal_file_error(a1, v49, v99);
LABEL_258:
          BOMCopierSourceEntryFree(v49);
          goto LABEL_282;
        }

        CopyOperation = BOMCopierDestinationGetCopyOperation(*v34);
        if (CopyOperation <= 1)
        {
          if (CopyOperation)
          {
            if (CopyOperation != 1)
            {
              goto LABEL_210;
            }

            v71 = *(a1 + 13008);
            if (!v71 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_210;
            }

            *v100 = 0;
            v72 = v71;
            v73 = "Source entry skipped\n";
          }

          else
          {
            v76 = *(a1 + 13008);
            if (!v76 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_210;
            }

            *v100 = 0;
            v72 = v76;
            v73 = "Source entry copied to destination set\n";
          }

          goto LABEL_208;
        }

        if (CopyOperation == 3)
        {
          v75 = *(a1 + 13008);
          if (!v75 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_210;
          }

          *v100 = 0;
          v72 = v75;
          v73 = "Source entry retry?\n";
LABEL_208:
          _os_log_impl(&dword_241C0E000, v72, OS_LOG_TYPE_DEFAULT, v73, v100, 2u);
          goto LABEL_210;
        }

        if (CopyOperation == 2)
        {
          v87 = *(a1 + 13008);
          if (v87 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            v88 = "Client cancelled\n";
LABEL_278:
            _os_log_impl(&dword_241C0E000, v87, OS_LOG_TYPE_DEFAULT, v88, v100, 2u);
          }

          goto LABEL_279;
        }

LABEL_210:
        BOMCopierSourceEntryFree(v49);
        if (*(a1 + 168) == 1)
        {
          v89 = *(a1 + 13008);
          if (v89 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 0;
            v84 = "Client cancelled\n";
            v97 = 2;
            v85 = v89;
            goto LABEL_246;
          }

          goto LABEL_280;
        }
      }
    }
  }

  v86 = *(a1 + 13008);
  if (v86 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *v100 = 0;
    _os_log_impl(&dword_241C0E000, v86, OS_LOG_TYPE_DEFAULT, "Source exhausted", v100, 2u);
  }

LABEL_263:
  v91 = *(a1 + 13008);
  if (v8[1451])
  {
    if (v91 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v100 = 0;
      _os_log_impl(&dword_241C0E000, v91, OS_LOG_TYPE_DEFAULT, "Copy complete but a file error occurred", v100, 2u);
    }

    v92 = 1;
LABEL_281:
    v97 = v92;
  }

  else
  {
    if (v91 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v100 = 0;
      _os_log_impl(&dword_241C0E000, v91, OS_LOG_TYPE_DEFAULT, "Copy successful", v100, 2u);
    }

    v97 = 0;
  }

LABEL_282:
  release_copy_state_0(a1);
  return v97;
}

void notify_fatal_error(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    Message = BOMCopierErrorGetMessage(a2);
    if (Message)
    {
      v5 = Message;
      v6 = *(a1 + 56);
      if (v6)
      {
        v6(a1, Message);
      }

      v7 = *(a1 + 13008);
      if (v7)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = v5;
          _os_log_impl(&dword_241C0E000, v7, OS_LOG_TYPE_DEFAULT, "fatal error: %s", &v8, 0xCu);
        }
      }
    }

    BOMCopierErrorFree(a2);
  }
}

void release_copy_state_0(uint64_t a1)
{
  v2 = *(a1 + 13056);
  if (v2)
  {
    BOMBomFree(v2);
    *(a1 + 13056) = 0;
  }

  v3 = *(a1 + 13048);
  if (v3)
  {
    BOMBomFree(v3);
    *(a1 + 13048) = 0;
  }

  v4 = *(a1 + 13040);
  if (v4)
  {
    BOMCopierDestinationFree(v4);
    *(a1 + 13040) = 0;
  }

  v5 = *(a1 + 13032);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 13032) = 0;
  }

  v6 = *(a1 + 13024);
  if (v6)
  {
    BOMCopierSourceFree(v6);
    *(a1 + 13024) = 0;
  }

  v7 = *(a1 + 13016);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 13016) = 0;
  }

  *(a1 + 13067) = 0;
}

uint64_t notify_file_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v3 = a3;
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = v6(a1, a2, a3);
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a1 + 13008);
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = a2;
    v14 = 1024;
    v15 = v3;
    v16 = 2080;
    v17 = strerror(v3);
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_241C0E000, v10, OS_LOG_TYPE_DEFAULT, "file error: %s %d (%s) [%u]", &v12, 0x22u);
  }

  return v9;
}

void source_redirection_callback(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = strdup((a3 + 11617));
    if (v4)
    {
      *a2 = v4;
    }
  }
}

void destination_redirection_callback(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = strdup((a3 + 10592));
    if (v4)
    {
      *a2 = v4;
    }
  }
}

void notify_fatal_file_error(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    ActualPath = BOMCopierSourceEntryGetActualPath(a2);
    Code = BOMCopierErrorGetCode(a3);
    Message = BOMCopierErrorGetMessage(a3);
    v8 = *(a1 + 64);
    if (v8)
    {
      v8(a1, ActualPath, Code);
    }

    v9 = *(a1 + 13008);
    if (v9)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = ActualPath;
        v12 = 1024;
        v13 = Code;
        v14 = 2080;
        v15 = strerror(Code);
        v16 = 2080;
        v17 = Message;
        _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "fatal file error: %s %d (%s) [%s]", &v10, 0x26u);
      }
    }

    BOMCopierErrorFree(a3);
  }
}

uint64_t parse_copier_options(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v234 = *MEMORY[0x277D85DE8];
  TypeID = CFBooleanGetTypeID();
  v7 = CFStringGetTypeID();
  v232 = CFDictionaryGetTypeID();
  v8 = CFNumberGetTypeID();
  v9 = CFWriteStreamGetTypeID();
  v10 = CFReadStreamGetTypeID();
  v231 = CFArrayGetTypeID();
  v11 = CFDataGetTypeID();
  *(a1 + 12712) = 0x300000000;
  Value = CFDictionaryGetValue(a2, @"inputFD");
  if (Value)
  {
    v13 = Value;
    if (v8 != CFGetTypeID(Value))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 972, "parse_copier_options", "kBOMCopierOptionInputFileDescriptorKey must be a CFNumberRef");
      return v24;
    }

    CFDictionarySetValue(*(a1 + 13016), @"inputFD", v13);
  }

  v14 = CFDictionaryGetValue(a2, @"zipFileEncryptionKey");
  if (v14)
  {
    v15 = v14;
    if (v7 != CFGetTypeID(v14))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1005, "parse_copier_options", "kBOMCopierOptionEncryptionKey must be a CFStringRef");
      return v24;
    }

    CFDictionarySetValue(*(a1 + 13016), @"passphrase", v15);
  }

  v230 = v11;
  v16 = CFDictionaryGetValue(a2, @"extractCPIO");
  if (v16)
  {
    v17 = v16;
    if (TypeID != CFGetTypeID(v16))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1063, "parse_copier_options", "kBOMCopierOptionExtractCPIOKey must be a CFBooleanRef");
      return v24;
    }

    v18 = *MEMORY[0x277CBED28];
    if (CFEqual(v17, *MEMORY[0x277CBED28]) == 1)
    {
      *(a1 + 12712) = 1;
      CFDictionarySetValue(*(a1 + 13016), @"extractLibarchive", v18);
      CFDictionarySetValue(*(a1 + 13016), @"replaySymlinks", v18);
      CFDictionarySetValue(*(a1 + 13016), @"replayDirectories", v18);
    }
  }

  v19 = CFDictionaryGetValue(a2, @"createCPIO");
  if (v19)
  {
    v20 = v19;
    if (TypeID != CFGetTypeID(v19))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1125, "parse_copier_options", "kBOMCopierOptionCreateCPIOKey must be a CFBooleanRef");
      return v24;
    }

    CFDictionarySetValue(*(a1 + 13032), @"createArchive", v20);
    if (CFEqual(v20, *MEMORY[0x277CBED28]) == 1)
    {
      *(a1 + 12716) = 4;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"compressCPIO");
  if (!v21)
  {
LABEL_34:
    v27 = CFDictionaryGetValue(a2, @"extractPKZip");
    if (v27)
    {
      v28 = v27;
      if (TypeID != CFGetTypeID(v27))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1274, "parse_copier_options", "kBOMCopierOptionExtractPKZipKey must be a CFBooleanRef");
        return v24;
      }

      v29 = *MEMORY[0x277CBED28];
      if (CFEqual(v28, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12712))
        {
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1282, "parse_copier_options", "The source type has already been assigned to %d");
          return v24;
        }

        *(a1 + 12712) = 2;
        CFDictionarySetValue(*(a1 + 13016), @"extractDataArchive", v29);
        CFDictionarySetValue(*(a1 + 13016), @"enforceArchiveEntryPermissions", v29);
      }
    }

    v30 = CFDictionaryGetValue(a2, @"createPKZip");
    if (v30)
    {
      v31 = v30;
      if (TypeID != CFGetTypeID(v30))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1328, "parse_copier_options", "kBOMCopierOptionExtractPKZipKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13032), @"createArchive", v31);
      if (CFEqual(v31, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12716) != 3)
        {
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1338, "parse_copier_options", "The destination type has already been assigned to %d");
          return v24;
        }

        *(a1 + 12716) = 5;
        CFDictionarySetValue(*(a1 + 13016), @"excludeRootDirectory", v31);
        *valuePtr = 327680;
        v32 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
        if (!v32)
        {
          v24 = 1;
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1359, "parse_copier_options", "Could not create CFNumber from %d");
          return v24;
        }

        v33 = v32;
        CFDictionarySetValue(*(a1 + 13032), @"libarchiveFormat", v32);
        CFRelease(v33);
      }
    }

    v34 = CFDictionaryGetValue(a2, @"createAppleArchive");
    if (v34)
    {
      v35 = v34;
      if (TypeID != CFGetTypeID(v34))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1377, "parse_copier_options", "kBOMCopierOptionCreateAppleArchiveKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13032), @"createAppleArchive", v35);
      if (CFEqual(v35, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12716) != 3)
        {
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1387, "parse_copier_options", "The destination type has already been assigned to %d");
          return v24;
        }

        *(a1 + 12716) = 6;
      }
    }

    v36 = CFDictionaryGetValue(a2, @"compressAppleArchive");
    if (v36)
    {
      v37 = v36;
      if (v7 != CFGetTypeID(v36))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1400, "parse_copier_options", "kBOMCopierOptionCompressAppleArchiveKey must be a CFStringRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13032), @"compressAppleArchive", v37);
    }

    v38 = CFDictionaryGetValue(a2, @"extractAppleArchive");
    if (v38)
    {
      v39 = v38;
      if (TypeID != CFGetTypeID(v38))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1412, "parse_copier_options", "kBOMCopierOptionExtractAppleArchiveKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13016), @"extractAppleArchive", v39);
      if (CFEqual(v39, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12712))
        {
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1422, "parse_copier_options", "The source type has already been assigned to %d");
          return v24;
        }

        *(a1 + 12712) = 3;
      }
    }

    v40 = CFDictionaryGetValue(a2, @"crossDevices");
    if (v40)
    {
      v41 = v40;
      if (TypeID != CFGetTypeID(v40))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1457, "parse_copier_options", "kBOMCopierSourceOptionUseFilesystemCacheKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13016), @"crossDevices", v41);
    }

    v42 = CFDictionaryGetValue(a2, @"useFilesystemCache");
    if (v42)
    {
      v43 = v42;
      if (TypeID != CFGetTypeID(v42))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1502, "parse_copier_options", "kBOMCopierOptionUseFilesystemCacheKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13016), @"useFilesystemCache", v43);
      CFDictionarySetValue(*(a1 + 13032), @"useFilesystemCache", v43);
    }

    v44 = CFDictionaryGetValue(a2, @"applySourcePermissions");
    if (v44)
    {
      v45 = v44;
      if (TypeID != CFGetTypeID(v44))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1541, "parse_copier_options", "kBOMCopierOptionApplySourcePermissionsKey must be a CFBooleanRef");
        return v24;
      }

      CFDictionarySetValue(*(a1 + 13032), @"applySourcePermissions", v45);
    }

    v46 = CFDictionaryGetValue(a2, @"copyResources");
    if (v46)
    {
      v47 = v46;
      if (TypeID != CFGetTypeID(v46))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1601, "parse_copier_options", "kBOMCopierOptionCopyResourcesKey must be a CFBooleanRef");
        return v24;
      }

      v48 = CFEqual(*MEMORY[0x277CBED28], v47) != 0;
    }

    else
    {
      v48 = 0;
    }

    v49 = CFDictionaryGetValue(a2, @"copyExtendedAttributes");
    if (v49)
    {
      v50 = v49;
      if (TypeID != CFGetTypeID(v49))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1642, "parse_copier_options", "kBOMCopierOptionCopyExtendedAttributesKey must be a CFBooleanRef");
        return v24;
      }

      buffer = CFEqual(*MEMORY[0x277CBED28], v50) != 0;
    }

    else
    {
      buffer = 0;
    }

    v51 = CFDictionaryGetValue(a2, @"copyACLs");
    if (v51)
    {
      v52 = v51;
      if (TypeID != CFGetTypeID(v51))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1683, "parse_copier_options", "kBOMCopierOptionCopyACLsKey must be a CFBooleanRef");
        return v24;
      }

      v227 = CFEqual(*MEMORY[0x277CBED28], v52) != 0;
    }

    else
    {
      v227 = 0;
    }

    v53 = CFDictionaryGetValue(a2, @"sequesterResources");
    v54 = v53;
    if (v53)
    {
      if (TypeID != CFGetTypeID(v53))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1720, "parse_copier_options", "kBOMCopierOptionSequesterResourcesKey must be a CFBooleanRef");
        return v24;
      }

      LODWORD(v54) = CFEqual(*MEMORY[0x277CBED28], v54) != 0;
    }

    v55 = *(a1 + 12712);
    v56 = *(a1 + 12716);
    if (v55)
    {
      if (v56 != 3)
      {
        v224 = 0;
        v225 = 0uLL;
        v221 = 0;
        v222 = 0uLL;
        v223 = 0;
        LODWORD(v54) = 0;
        v226 = 0;
LABEL_120:
        v58 = getenv("BOMCOPIER_LOG_OPTION_RESULTS");
        if (!v58)
        {
          goto LABEL_123;
        }

        if (*v58 != 49)
        {
          goto LABEL_123;
        }

        if (v58[1])
        {
          goto LABEL_123;
        }

        v107 = *(a1 + 13008);
        if (!v107)
        {
          goto LABEL_123;
        }

        log = *(a1 + 13008);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          v108 = "false";
          if (v48)
          {
            v108 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v108;
          _os_log_impl(&dword_241C0E000, log, OS_LOG_TYPE_DEFAULT, "copy_resources: %s", valuePtr, 0xCu);
          v109 = *(a1 + 13008);
          if (!v109)
          {
LABEL_123:
            if (v226)
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverResourceAttribute", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v225))
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverExtendedAttributes", *MEMORY[0x277CBED28]);
            }

            if (DWORD2(v225))
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverACLs", *MEMORY[0x277CBED28]);
            }

            if (BYTE4(v225))
            {
              CFDictionarySetValue(*(a1 + 13016), @"synthesizeAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v225)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureResourceAttributes", *MEMORY[0x277CBED28]);
            }

            if ((v224 & 0x100000000) != 0)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureExtendedAttributes", *MEMORY[0x277CBED28]);
            }

            if (v224)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureACLs", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v223))
            {
              CFDictionarySetValue(*(a1 + 13016), @"deferAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v223)
            {
              CFDictionarySetValue(*(a1 + 13016), @"replayAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v222))
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoubleSuffix", @"__");
            }

            if (DWORD2(v222))
            {
              CFDictionarySetValue(*(a1 + 13032), @"appleDoubleMergeACLs", *MEMORY[0x277CBED28]);
            }

            if (BYTE4(v222))
            {
              CFDictionarySetValue(*(a1 + 13016), @"ignoreAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v222)
            {
              CFDictionarySetValue(*(a1 + 13016), @"sequesterAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v54)
            {
              CFDictionarySetValue(*(a1 + 13016), @"unsequesterAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v221))
            {
              CFDictionarySetValue(*(a1 + 13016), @"reorderExtraEntries", *MEMORY[0x277CBED28]);
            }

            if (v221)
            {
              CFDictionarySetValue(*(a1 + 13016), @"replayExtraAppleDoubles", *MEMORY[0x277CBED28]);
            }

            v59 = CFDictionaryGetValue(a2, @"copyQuarantine");
            if (v59)
            {
              v60 = v59;
              if (TypeID != CFGetTypeID(v59))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2048, "parse_copier_options", "kBOMCopierOptionCopyQuarantineKey must be a CFBooleanRef");
                return v24;
              }

              CFDictionarySetValue(*(a1 + 13016), @"discoverQuarantine", v60);
            }

            v61 = CFDictionaryGetValue(a2, @"quarantineFilePath");
            if (v61)
            {
              v62 = v61;
              if (v7 != CFGetTypeID(v61))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2089, "parse_copier_options", "kBOMCopierOptionCopyQuarantineKey must be a CFStringRef");
                return v24;
              }

              CFDictionarySetValue(*(a1 + 13016), @"replayQuarantineFromPath", v62);
            }

            v63 = CFDictionaryGetValue(a2, @"useHFSPlusCompression");
            if (v63)
            {
              v64 = v63;
              if (TypeID != CFGetTypeID(v63))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2121, "parse_copier_options", "kBOMCopierOptionUseHFSPlusCompressionKey must be a CFBooleanRef");
                return v24;
              }

              CFDictionarySetValue(*(a1 + 13032), @"useAppleFSCompression", v64);
            }

            v65 = CFDictionaryGetValue(a2, @"preserveHFSPlusCompression");
            if (v65)
            {
              v66 = v65;
              if (TypeID != CFGetTypeID(v65))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2152, "parse_copier_options", "kBOMCopierOptionPreserveHFSPlusCompressionKey must be a CFBooleanRef");
                return v24;
              }

              CFDictionarySetValue(*(a1 + 13016), @"discoverCompressionAttributes", v66);
              CFDictionarySetValue(*(a1 + 13032), @"preserveAppleFSCompression", v66);
            }

            v67 = CFDictionaryGetValue(a2, @"hfsPlusCompressionOptions");
            if (v67)
            {
              v68 = v67;
              if (v232 != CFGetTypeID(v67))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2185, "parse_copier_options", "kBOMCopierOptionPreserveHFSPlusCompressionKey must be a CFBooleanRef");
                return v24;
              }

              v69 = CFDictionaryGetValue(v68, @"CompressionTypes");
              if (v69)
              {
                v70 = v69;
                if (v8 != CFGetTypeID(v69))
                {
                  v24 = 22;
                  BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2206, "parse_copier_options", "CompressionTypes must be a CFNumberRef");
                  return v24;
                }

                CFDictionarySetValue(*(a1 + 13032), @"AppleFSCompressionType", v70);
              }
            }

            v71 = CFDictionaryGetValue(a2, @"indexbom");
            if (v71)
            {
              v72 = v71;
              if (v7 != CFGetTypeID(v71))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2252, "parse_copier_options", "kBOMCopierOptionIndexBomKey must be a CFStringRef");
                return v24;
              }

              v73 = CFStringGetLength(v72) + 1;
              buffera = malloc_type_calloc(1uLL, v73, 0xCC30406BuLL);
              if (!buffera)
              {
                v125 = *__error();
                BOMCopierErrorCapture(a3, v125, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2267, "parse_copier_options", "Could not allocate %ld bytes for kBOMCopierOptionIndexBomKey");
                return 1;
              }

              if (!CFStringGetCString(v72, buffera, v73, 0x8000100u))
              {
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2274, "parse_copier_options", "Could not convert kBOMCopierOptionIndexBomKey to UTF8 C string");
                goto LABEL_314;
              }

              v74 = BOMBomOpenWithSys(buffera, 0, 0);
              *(a1 + 13048) = v74;
              if (!v74)
              {
                v139 = buffera;
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2282, "parse_copier_options", "Could not open allow bom at %s");
LABEL_330:
                v146 = v139;
                goto LABEL_331;
              }

              free(buffera);
            }

            v75 = CFDictionaryGetValue(a2, @"skipbom");
            if (!v75)
            {
              goto LABEL_184;
            }

            v76 = v75;
            if (v7 != CFGetTypeID(v75))
            {
              v24 = 22;
              BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2319, "parse_copier_options", "kBOMCopierOptionSkipBomKey must be a CFStringRef");
              return v24;
            }

            v77 = CFStringGetLength(v76) + 1;
            buffera = malloc_type_calloc(1uLL, v77, 0x2DD6FBF1uLL);
            if (buffera)
            {
              if (CFStringGetCString(v76, buffera, v77, 0x8000100u))
              {
                v78 = BOMBomOpenWithSys(buffera, 0, 0);
                *(a1 + 13056) = v78;
                if (v78)
                {
                  free(buffera);
LABEL_184:
                  v79 = CFDictionaryGetValue(a2, @"verifyFileDataPerIndexBom");
                  if (v79)
                  {
                    v80 = v79;
                    if (TypeID != CFGetTypeID(v79))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2381, "parse_copier_options", "kBOMCopierOptionVerifyFileDataPerIndexBomKey must be a CFStringRef");
                      return v24;
                    }

                    *(a1 + 13065) = CFEqual(v80, *MEMORY[0x277CBED28]) != 0;
                  }

                  v81 = CFDictionaryGetValue(a2, @"outputFD");
                  if (v81)
                  {
                    v82 = v81;
                    if (v8 != CFGetTypeID(v81))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2416, "parse_copier_options", "kBOMCopierOptionOutputFileDescriptorKey must be a CFNumberRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"outputFD", v82);
                  }

                  v83 = CFDictionaryGetValue(a2, @"outputStream");
                  if (v83)
                  {
                    v84 = v83;
                    if (v9 != CFGetTypeID(v83))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2446, "parse_copier_options", "kBOMCopierOptionOutputCFWriteStreamKey must be a CFWriteStream");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"outputStream", v84);
                  }

                  v85 = CFDictionaryGetValue(a2, @"inputStream");
                  if (v85)
                  {
                    v86 = v85;
                    if (v10 != CFGetTypeID(v85))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2477, "parse_copier_options", "kBOMCopierOptionInputCFReadStreamKey must be a CFReadStream");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"inputStream", v86);
                  }

                  v87 = CFDictionaryGetValue(a2, @"archs");
                  if (v87)
                  {
                    v88 = v87;
                    if (v231 != CFGetTypeID(v87))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2552, "parse_copier_options", "kBOMCopierOptionArchitectureArrayKey must be a CFArrayRef");
                      return v24;
                    }

                    if (!CFArrayGetCount(v88))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2560, "parse_copier_options", "kBOMCopierOptionArchitectureArrayKey is empty");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverBinaries", *MEMORY[0x277CBED28]);
                    CFDictionarySetValue(*(a1 + 13032), @"archs", v88);
                  }

                  v89 = CFDictionaryGetValue(a2, @"fallbackForSubtype");
                  if (v89)
                  {
                    v90 = v89;
                    if (v232 != CFGetTypeID(v89))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2599, "parse_copier_options", "kBOMCopierOptionArchitectureFallbackKey must be a CFDictionaryRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"fallbackForSubtype", v90);
                  }

                  v91 = CFDictionaryGetValue(a2, @"keepBinaries");
                  if (v91)
                  {
                    v92 = v91;
                    if (TypeID != CFGetTypeID(v91))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2638, "parse_copier_options", "kBOMCopierOptionKeepBinariesKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverBinaries", v92);
                    CFDictionarySetValue(*(a1 + 13032), @"keepBinaries", v92);
                  }

                  v93 = CFDictionaryGetValue(a2, @"keepBinariesList");
                  if (v93)
                  {
                    v94 = v93;
                    if (v7 != CFGetTypeID(v93))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2670, "parse_copier_options", "kBOMCopierOptionKeepBinariesListKey must be a CFStringRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keptFileList", v94);
                  }

                  v95 = CFDictionaryGetValue(a2, @"keepBinariesPattern");
                  if (v95)
                  {
                    v96 = v95;
                    if (v7 != CFGetTypeID(v95))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2701, "parse_copier_options", "kBOMCopierOptionKeepBinariesPatternKey must be a CFStringRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keepFilePattern", v96);
                  }

                  v97 = CFDictionaryGetValue(a2, @"keepBinariesDir");
                  if (v97)
                  {
                    v98 = v97;
                    if (v7 != CFGetTypeID(v97))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2721, "parse_copier_options", "kBOMCopierOptionKeepBinariesDirKey must be a CFStringRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keptFileDirectory", v98);
                    CFDictionarySetValue(*(a1 + 13032), @"balanceKeptFiles", *MEMORY[0x277CBED28]);
                    *valuePtr = 50;
                    v99 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
                    if (!v99)
                    {
                      v24 = 1;
                      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2734, "parse_copier_options", "Could not create CFNumber from %d");
                      return v24;
                    }

                    v100 = v99;
                    CFDictionarySetValue(*(a1 + 13032), @"keptFileBalanceLimit", v99);
                    CFRelease(v100);
                  }

                  v101 = CFDictionaryGetValue(a2, @"keepParent");
                  if (v101)
                  {
                    v102 = v101;
                    if (TypeID != CFGetTypeID(v101))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2787, "parse_copier_options", "kBOMCopierOptionKeepParentKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"keepParent", v102);
                  }

                  v103 = CFDictionaryGetValue(a2, @"zlibCompressionLevel");
                  if (v103)
                  {
                    v104 = v103;
                    if (v8 != CFGetTypeID(v103))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2822, "parse_copier_options", "kBOMCopierOptionZlibCompressionLevel must be a CFNumberRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"zlibCompressionLevel", v104);
                  }

                  v105 = CFDictionaryGetValue(a2, @"compress");
                  if (v105)
                  {
                    v106 = v105;
                    if (v7 != CFGetTypeID(v105))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2851, "parse_copier_options", "kBOMCopierOptionCompressDeprecatedKey must be a CFStringRef");
                      return v24;
                    }

                    *valuePtr = 1;
                    if (CFEqual(v106, @"none") == 1)
                    {
                      *valuePtr = 0;
                    }

                    else
                    {
                      if (CFEqual(v106, @"auto") == 1 || CFEqual(v106, @"gzip") == 1)
                      {
                        v165 = 1;
                      }

                      else
                      {
                        if (CFEqual(v106, @"bzip2") != 1)
                        {
                          v24 = 22;
                          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2871, "parse_copier_options", "Unknown deprecated compression option");
                          return v24;
                        }

                        v165 = 2;
                      }

                      *valuePtr = v165;
                    }

                    v166 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
                    if (!v166)
                    {
                      v24 = 1;
                      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2878, "parse_copier_options", "Could not create CFNumber from %d");
                      return v24;
                    }

                    v167 = v166;
                    CFDictionarySetValue(*(a1 + 13032), @"libarchiveFilter", v166);
                    CFRelease(v167);
                  }

                  v168 = CFDictionaryGetValue(a2, @"symlinkTreatment");
                  if (v168)
                  {
                    v169 = v168;
                    if (v7 != CFGetTypeID(v168))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2925, "parse_copier_options", "kBOMCopierOptionSymlinkTreatmentKey must be a CFStringRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"symlinkTreatment", v169);
                  }

                  v170 = CFDictionaryGetValue(a2, @"enforceDestinationEncapsulation");
                  if (v170)
                  {
                    v171 = v170;
                    if (TypeID != CFGetTypeID(v170))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2964, "parse_copier_options", "kBOMCopierOptionEnforceDestinationEncapsulationKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"enforceDestinationEncapsulation", v171);
                  }

                  v172 = CFDictionaryGetValue(a2, @"enforceDestinationLocation");
                  if (v172)
                  {
                    v173 = v172;
                    if (TypeID != CFGetTypeID(v172))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2988, "parse_copier_options", "kBOMCopierOptionEnforceDestinationLocationKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"enforceDestinationLocation", v173);
                  }

                  v174 = CFDictionaryGetValue(a2, @"nonatomicCopy");
                  if (v174)
                  {
                    v175 = v174;
                    if (TypeID != CFGetTypeID(v174))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3037, "parse_copier_options", "kBOMCopierOptionNonAtomicCopyKey must be a CFBooleanRef");
                      return v24;
                    }

                    v176 = *MEMORY[0x277CBED28];
                    if (CFEqual(v175, *MEMORY[0x277CBED28]) == 1)
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"replaySymlinks", v176);
                      CFDictionarySetValue(*(a1 + 13032), @"enableAtomicCopies", *MEMORY[0x277CBED10]);
                    }
                  }

                  v177 = CFDictionaryGetValue(a2, @"applyIndexBomOwnership");
                  if (v177)
                  {
                    v178 = v177;
                    if (TypeID != CFGetTypeID(v177))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3076, "parse_copier_options", "kBOMCopierOptionApplyIndexBomOwnershipKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"applyBomOwnership", v178);
                    if (*(a1 + 13048))
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"useEnumerationBom", v178);
                      CFDictionarySetValue(*(a1 + 13016), @"allowAccessFailures", v178);
                      *(a1 + 13064) = CFEqual(v178, *MEMORY[0x277CBED28]) != 0;
                    }
                  }

                  v179 = CFDictionaryGetValue(a2, @"sourceIsAppSandboxed");
                  if (v179)
                  {
                    v180 = v179;
                    if (TypeID != CFGetTypeID(v179))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3124, "parse_copier_options", "kBOMCopierOptionSourceIsAppSandboxed must be a CFBooleanRef");
                      return v24;
                    }

                    if (*(a1 + 13048))
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"useEnumerationBom", v180);
                      CFDictionarySetValue(*(a1 + 13016), @"allowAccessFailures", v180);
                      *(a1 + 13064) = CFEqual(v180, *MEMORY[0x277CBED28]) != 0;
                    }
                  }

                  v181 = CFDictionaryGetValue(a2, @"persistRestrictedFlags");
                  if (v181)
                  {
                    v182 = v181;
                    if (TypeID != CFGetTypeID(v181))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3169, "parse_copier_options", "kBOMCopierOptionPersistRestrictedFlagsKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"persistRestrictedFlags", v182);
                  }

                  v183 = CFDictionaryGetValue(a2, @"preserveRestrictedFlags");
                  if (v183)
                  {
                    v184 = v183;
                    if (TypeID != CFGetTypeID(v183))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3200, "parse_copier_options", "kBOMCopierOptionPreserveRestrictedFlagsKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"preserveRestrictedFlags", v184);
                  }

                  v185 = CFDictionaryGetValue(a2, @"persistRootlessEAs");
                  if (v185)
                  {
                    v186 = v185;
                    if (TypeID != CFGetTypeID(v185))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3233, "parse_copier_options", "kBOMCopierOptionPersistRootlessExtendedAttributesKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"persistRootless", v186);
                  }

                  v187 = CFDictionaryGetValue(a2, @"initialCPIOInode");
                  if (v187)
                  {
                    v188 = v187;
                    if (v8 != CFGetTypeID(v187))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3266, "parse_copier_options", "kBOMCopierOptionInitialCPIOInodeRootKey must be a CFNumberRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"initialInode", v188);
                  }

                  v189 = CFDictionaryGetValue(a2, @"skipCPIORoot");
                  if (v189)
                  {
                    v190 = v189;
                    if (TypeID != CFGetTypeID(v189))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3298, "parse_copier_options", "kBOMCopierOptionSkipCPIORootKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"skipRootDirectory", v190);
                  }

                  v191 = CFDictionaryGetValue(a2, @"skipCPIOTerminator");
                  if (v191)
                  {
                    v192 = v191;
                    if (TypeID != CFGetTypeID(v191))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3326, "parse_copier_options", "kBOMCopierOptionSkipCPIOTerminatorKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"skipTerminator", v192);
                  }

                  v193 = CFDictionaryGetValue(a2, @"segmentLargeFiles");
                  if (v193)
                  {
                    v194 = v193;
                    if (TypeID != CFGetTypeID(v193))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3364, "parse_copier_options", "kBOMCopierOptionSegmentLargeFilesKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverSegmentedFiles", v194);
                    if (CFEqual(v194, *MEMORY[0x277CBED28]) == 1)
                    {
                      *valuePtr = 0x40000000;
                      v195 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
                      if (!v195)
                      {
                        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3377, "parse_copier_options", "Could not create number for %lld");
                        return 22;
                      }

                      v196 = v195;
                      CFDictionarySetValue(*(a1 + 13016), @"segmentFileSize", v195);
                      CFDictionarySetValue(*(a1 + 13032), @"segmentFileSize", v196);
                      CFRelease(v196);
                    }
                  }

                  v197 = CFDictionaryGetValue(a2, @"enableLogging");
                  if (v197)
                  {
                    v198 = v197;
                    if (TypeID != CFGetTypeID(v197))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3394, "parse_copier_options", "kBOMCopierOptionEnableLogging must be a CFBooleanRef");
                      return v24;
                    }

                    *(a1 + 13066) = CFEqual(*MEMORY[0x277CBED28], v198) != 0;
                  }

                  v199 = CFDictionaryGetValue(a2, @"output2Nowhere");
                  if (v199)
                  {
                    v200 = v199;
                    if (TypeID != CFGetTypeID(v199))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3406, "parse_copier_options", "kBOMCopierOptionOutputNowhereKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"output2Nowhere", v200);
                  }

                  v201 = CFDictionaryGetValue(a2, @"cloneFiles");
                  if (v201)
                  {
                    v202 = v201;
                    if (TypeID != CFGetTypeID(v201))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3418, "parse_copier_options", "kBOMCopierOptionCloneFiles must be a CFBooleanRef");
                      return v24;
                    }

                    if (CFEqual(v202, *MEMORY[0x277CBED28]) == 1)
                    {
                      if (*(a1 + 12712))
                      {
                        v24 = 22;
                        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3426, "parse_copier_options", "kBOMCopierOptionCloneFiles requires the source to be a filesystem");
                        return v24;
                      }

                      if (*(a1 + 12716) != 3)
                      {
                        v24 = 22;
                        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3432, "parse_copier_options", "kBOMCopierOptionCloneFiles requires the destination to be a filesystem");
                        return v24;
                      }

                      CFDictionarySetValue(*(a1 + 13032), @"cloneFiles", v202);
                    }
                  }

                  v203 = CFDictionaryGetValue(a2, @"removeSetuidPermissions");
                  if (v203)
                  {
                    v204 = v203;
                    if (TypeID != CFGetTypeID(v203))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3445, "parse_copier_options", "kBOMCopierOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"removeSetuidPermissions", v204);
                  }

                  v205 = CFDictionaryGetValue(a2, @"removeExecutablePermissions");
                  if (v205)
                  {
                    v206 = v205;
                    if (TypeID != CFGetTypeID(v205))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3457, "parse_copier_options", "kBOMCopierOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"removeExecutablePermissions", v206);
                  }

                  v207 = CFDictionaryGetValue(a2, @"setStaticContent");
                  if (v207)
                  {
                    v208 = v207;
                    if (TypeID != CFGetTypeID(v207))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3469, "parse_copier_options", "kBOMCopierOptionSetStaticContentKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setStaticContent", v208);
                  }

                  v209 = CFDictionaryGetValue(a2, @"setSingleWriter");
                  if (v209)
                  {
                    v210 = v209;
                    if (TypeID != CFGetTypeID(v209))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3481, "parse_copier_options", "kBOMCopierOptionSetSingleWriterKey must be a CFBooleanRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setSingleWriter", v210);
                  }

                  v211 = CFDictionaryGetValue(a2, @"setDataProtectionClass");
                  if (v211)
                  {
                    v212 = v211;
                    if (v7 != CFGetTypeID(v211))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3493, "parse_copier_options", "kBOMCopierOptionSetDataProtectionClassKey must be a CFStringRef");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setDataProtectionClass", v212);
                  }

                  v213 = CFDictionaryGetValue(a2, @"applyProvenance");
                  if (v213)
                  {
                    v214 = v213;
                    if (v230 != CFGetTypeID(v213))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3505, "parse_copier_options", "kBOMCopierOptionApplyProvenanceKey must be a CFDataRef");
                      return v24;
                    }

                    if (!CFDataGetLength(v214))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3513, "parse_copier_options", "kBOMCopierOptionApplyProvenanceKey has an invalid size");
                      return v24;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"applyProvenance", v214);
                  }

                  v215 = CFDictionaryGetValue(a2, @"injectAppleDoubleBetweenSegmentedFiles");
                  if (!v215)
                  {
                    return 0;
                  }

                  v216 = v215;
                  if (TypeID != CFGetTypeID(v215))
                  {
                    v24 = 22;
                    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3525, "parse_copier_options", "kBOMCopierOptionInjectAppleDoubleBetweenSegmentedFilesKey must be a CFBooleanRef");
                    return v24;
                  }

                  CFDictionarySetValue(*(a1 + 13016), @"injectAppleDoubleBetweenSegmentedFiles", v216);
                  if (CFEqual(v216, *MEMORY[0x277CBED28]) != 1)
                  {
                    return 0;
                  }

                  *valuePtr = 0x40000000;
                  v217 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
                  if (v217)
                  {
                    v218 = v217;
                    CFDictionarySetValue(*(a1 + 13016), @"segmentFileSize", v217);
                    CFRelease(v218);
                    return 0;
                  }

                  BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3544, "parse_copier_options", "Could not create number for %lld");
                  return 22;
                }

                v139 = buffera;
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2349, "parse_copier_options", "Could not open deny bom at %s");
                goto LABEL_330;
              }

              v24 = 1;
              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2341, "parse_copier_options", "Could not convert kBOMCopierOptionIndexBomKey to UTF8 C string");
LABEL_314:
              v146 = buffera;
LABEL_331:
              free(v146);
              return v24;
            }

            v135 = *__error();
            BOMCopierErrorCapture(a3, v135, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2334, "parse_copier_options", "Could not allocate %ld bytes for kBOMCopierOptionIndexBomKey");
            return 1;
          }
        }

        else
        {
          v109 = log;
        }

        v110 = v109;
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v111 = "false";
          if (buffer)
          {
            v111 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v111;
          _os_log_impl(&dword_241C0E000, v110, OS_LOG_TYPE_DEFAULT, "copy_extended_attributes: %s", valuePtr, 0xCu);
          v112 = *(a1 + 13008);
          if (!v112)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v112 = v110;
        }

        v113 = v112;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v114 = "false";
          if (v227)
          {
            v114 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v114;
          _os_log_impl(&dword_241C0E000, v113, OS_LOG_TYPE_DEFAULT, "copy_acls: %s", valuePtr, 0xCu);
          v115 = *(a1 + 13008);
          if (!v115)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v115 = v113;
        }

        v116 = v115;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v117 = "false";
          if (v226)
          {
            v117 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v117;
          _os_log_impl(&dword_241C0E000, v116, OS_LOG_TYPE_DEFAULT, " discover_resource_attributes: %s", valuePtr, 0xCu);
          v118 = *(a1 + 13008);
          if (!v118)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v118 = v116;
        }

        v119 = v118;
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          v120 = "false";
          if (HIDWORD(v225))
          {
            v120 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v120;
          _os_log_impl(&dword_241C0E000, v119, OS_LOG_TYPE_DEFAULT, " discover_extended_attributes: %s", valuePtr, 0xCu);
          v121 = *(a1 + 13008);
          if (!v121)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v121 = v119;
        }

        v122 = v121;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v123 = "false";
          if (DWORD2(v225))
          {
            v123 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v123;
          _os_log_impl(&dword_241C0E000, v122, OS_LOG_TYPE_DEFAULT, " discover_acls: %s", valuePtr, 0xCu);
          v124 = *(a1 + 13008);
          if (!v124)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v124 = v122;
        }

        v126 = v124;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v127 = "false";
          if (BYTE4(v225))
          {
            v127 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v127;
          _os_log_impl(&dword_241C0E000, v126, OS_LOG_TYPE_DEFAULT, " synthesize_apple_doubles: %s", valuePtr, 0xCu);
          v128 = *(a1 + 13008);
          if (!v128)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v128 = v126;
        }

        v129 = v128;
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          v130 = "false";
          if (v225)
          {
            v130 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v130;
          _os_log_impl(&dword_241C0E000, v129, OS_LOG_TYPE_DEFAULT, " capture_resource_attributes: %s", valuePtr, 0xCu);
          v131 = *(a1 + 13008);
          if (!v131)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v131 = v129;
        }

        v132 = v131;
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          v133 = "false";
          if ((v224 & 0x100000000) != 0)
          {
            v133 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v133;
          _os_log_impl(&dword_241C0E000, v132, OS_LOG_TYPE_DEFAULT, " capture_extended_attributes: %s", valuePtr, 0xCu);
          v134 = *(a1 + 13008);
          if (!v134)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v134 = v132;
        }

        v136 = v134;
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          v137 = "false";
          if (v224)
          {
            v137 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v137;
          _os_log_impl(&dword_241C0E000, v136, OS_LOG_TYPE_DEFAULT, " capture_acls: %s", valuePtr, 0xCu);
          v138 = *(a1 + 13008);
          if (!v138)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v138 = v136;
        }

        v140 = v138;
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
        {
          v141 = "false";
          if (HIDWORD(v223))
          {
            v141 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v141;
          _os_log_impl(&dword_241C0E000, v140, OS_LOG_TYPE_DEFAULT, " defer_apple_doubles: %s", valuePtr, 0xCu);
          v142 = *(a1 + 13008);
          if (!v142)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v142 = v140;
        }

        v143 = v142;
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v144 = "false";
          if (v223)
          {
            v144 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v144;
          _os_log_impl(&dword_241C0E000, v143, OS_LOG_TYPE_DEFAULT, " replay_apple_doubles: %s", valuePtr, 0xCu);
          v145 = *(a1 + 13008);
          if (!v145)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v145 = v143;
        }

        v147 = v145;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          v148 = "false";
          if (HIDWORD(v222))
          {
            v148 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v148;
          _os_log_impl(&dword_241C0E000, v147, OS_LOG_TYPE_DEFAULT, " use_apple_double_suffix: %s", valuePtr, 0xCu);
          v149 = *(a1 + 13008);
          if (!v149)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v149 = v147;
        }

        v150 = v149;
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          v151 = "false";
          if (DWORD2(v222))
          {
            v151 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v151;
          _os_log_impl(&dword_241C0E000, v150, OS_LOG_TYPE_DEFAULT, " merge_acls: %s", valuePtr, 0xCu);
          v152 = *(a1 + 13008);
          if (!v152)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v152 = v150;
        }

        v153 = v152;
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          v154 = "false";
          if (BYTE4(v222))
          {
            v154 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v154;
          _os_log_impl(&dword_241C0E000, v153, OS_LOG_TYPE_DEFAULT, " ignore_apple_doubles: %s", valuePtr, 0xCu);
          v155 = *(a1 + 13008);
          if (!v155)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v155 = v153;
        }

        v156 = v155;
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          v157 = "false";
          if (v222)
          {
            v157 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v157;
          _os_log_impl(&dword_241C0E000, v156, OS_LOG_TYPE_DEFAULT, " sequester_apple_doubles: %s", valuePtr, 0xCu);
          v158 = *(a1 + 13008);
          if (!v158)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v158 = v156;
        }

        v159 = v158;
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
        {
          v160 = "false";
          if (v54)
          {
            v160 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v160;
          _os_log_impl(&dword_241C0E000, v159, OS_LOG_TYPE_DEFAULT, " unsequester_apple_doubles: %s", valuePtr, 0xCu);
          v161 = *(a1 + 13008);
          if (!v161)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v161 = v159;
        }

        v162 = v161;
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_493;
        }

        v163 = "false";
        if (HIDWORD(v221))
        {
          v163 = "true";
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = v163;
        _os_log_impl(&dword_241C0E000, v162, OS_LOG_TYPE_DEFAULT, " reorder_extra_files: %s", valuePtr, 0xCu);
        v162 = *(a1 + 13008);
        if (v162)
        {
LABEL_493:
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            v164 = "false";
            if (v221)
            {
              v164 = "true";
            }

            *valuePtr = 136315138;
            *&valuePtr[4] = v164;
            _os_log_impl(&dword_241C0E000, v162, OS_LOG_TYPE_DEFAULT, " convert_extra_apple_doubles: %s", valuePtr, 0xCu);
          }
        }

        goto LABEL_123;
      }

      if (v55 == 2)
      {
        v224 = 0;
        v225 = 0uLL;
        *&v222 = 0;
        v223 = 0;
        v226 = 0;
        v221 = v48 | 0x100000000;
        LODWORD(v54) = v48;
      }

      else
      {
        if (v55 == 3)
        {
          v224 = 0;
          *&v225 = 0;
          v221 = 0;
          *&v222 = 0;
          v223 = v48;
          v57 = v227;
          *(&v222 + 1) = __PAIR64__(v48, v227);
LABEL_115:
          *(&v225 + 1) = __PAIR64__(buffer, v57);
          v226 = v48;
          goto LABEL_120;
        }

        v224 = 0;
        v225 = 0uLL;
        v221 = 0;
        *&v222 = 0;
        v223 = v48;
        v226 = 0;
      }

      *(&v222 + 1) = __PAIR64__(v48, v227);
      goto LABEL_120;
    }

    if (v56 == 3)
    {
      v224 = 0;
      *&v225 = 0;
      LODWORD(v222) = 0;
      BYTE4(v222) = v48;
      v221 = 0;
      LODWORD(v54) = 0;
      *(&v222 + 1) = 0;
      v223 = 0x100000000;
    }

    else
    {
      if (v56 != 6)
      {
        HIDWORD(v222) = 0;
        v223 = 0;
        v221 = 0;
        HIDWORD(v225) = 0;
        v226 = 0;
        LOBYTE(v225) = v48 | v54;
        *(&v225 + 4) = (v48 || buffer || v227) | v54;
        LODWORD(v224) = v227;
        BYTE4(v224) = buffer | v54;
        LODWORD(v222) = v54;
        *(&v222 + 4) = v48 | v54;
        LODWORD(v54) = 0;
        goto LABEL_120;
      }

      v224 = 0;
      *&v225 = 0;
      v221 = 0;
      v222 = 0uLL;
      v223 = 0;
      LODWORD(v54) = 0;
    }

    v57 = v227;
    goto LABEL_115;
  }

  v22 = v21;
  if (TypeID != CFGetTypeID(v21))
  {
    if (v7 != CFGetTypeID(v22))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1227, "parse_copier_options", "kBOMCopierOptionCompressCPIOKey must be a CFBooleanRef or CFStringRef");
      return v24;
    }

    if (CFEqual(v22, @"auto"))
    {
      goto LABEL_27;
    }

    if (CFEqual(v22, @"none"))
    {
      *valuePtr = 0;
LABEL_32:
      v23 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
      if (!v23)
      {
        v24 = 1;
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1219, "parse_copier_options", "Could not create CFNumber from %d");
        return v24;
      }

LABEL_33:
      v26 = v23;
      CFDictionarySetValue(*(a1 + 13032), @"libarchiveFilter", v23);
      CFRelease(v26);
      goto LABEL_34;
    }

    if (CFEqual(v22, @"gzip"))
    {
LABEL_27:
      v25 = 1;
    }

    else
    {
      if (!CFEqual(v22, @"bzip2"))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1212, "parse_copier_options", "Unknown compression type");
        return v24;
      }

      v25 = 2;
    }

    *valuePtr = v25;
    goto LABEL_32;
  }

  if (CFEqual(v22, *MEMORY[0x277CBED28]) != 1 || *(a1 + 12716) != 4)
  {
    goto LABEL_34;
  }

  *valuePtr = 1;
  v23 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  if (v23)
  {
    goto LABEL_33;
  }

  v24 = 1;
  BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1184, "parse_copier_options", "Could not create CFNumber from %d");
  return v24;
}

uint64_t source_error_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a2 + 13067) = 1;
  v5 = notify_file_error(a2, *(a3 + 8), *(a3 + 16));
  v6 = *(a2 + 13008);
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 8);
    v8 = *(a3 + 16);
    v10 = 136315906;
    v11 = v7;
    v12 = 1024;
    v13 = v8;
    v14 = 2080;
    v15 = strerror(v8);
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_241C0E000, v6, OS_LOG_TYPE_DEFAULT, "file error: %s %d (%s) [%d]", &v10, 0x22u);
  }

  return v5;
}

uint64_t passphrase_callback(int a1, uint64_t a2, void *a3)
{
  result = *(a2 + 12800);
  if (!result)
  {
    v13 = v4;
    v14 = v3;
    v12 = *(a2 + 128);
    if (!v12)
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3901, "passphrase_callback", "Client did not register password request callback", v6, v5, v13, v14, v7, v8);
      return 0;
    }

    if (v12(a2, "", a2 + 12800))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3910, "passphrase_callback", "Could not request password from client", v6, v5, v13, v14, v7, v8);
      return 0;
    }

    return *(a2 + 12800);
  }

  return result;
}

uint64_t conflict_resolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4 || !*(a4 + 80))
  {
    return 2;
  }

  Type = BOMCopierSourceEntryGetType(a2);
  v9 = BOMCopierDestinationEntryGetType(a3, a5);
  Path = BOMCopierDestinationEntryGetPath(a3, a5);
  if (!Path)
  {
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 4110, "conflict_resolver", "Could not get destination path");
    return 2;
  }

  v11 = Path;
  v12 = map_entry_type(v9);
  v13 = map_entry_type(Type);
  v14 = *(a4 + 80);

  return v14(a4, v11, v13, v12);
}

void data_written_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && *(a4 + 104))
  {
    Path = BOMCopierSourceEntryGetPath(a2);
    TotalWritten = BOMCopierDestinationEntryGetTotalWritten(a3, 0);
    v8 = *(a4 + 104);

    v8(a4, Path, TotalWritten);
  }
}

void finalization_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 && *(a5 + 96))
  {
    Path = BOMCopierSourceEntryGetPath(a2);
    Type = BOMCopierSourceEntryGetType(a2);
    v11 = map_entry_type(Type);
    TotalWritten = BOMCopierDestinationEntryGetTotalWritten(a3, 0);
    v13 = *(a5 + 96);

    v13(a5, Path, v11, TotalWritten, a4);
  }
}

uint64_t map_entry_type(int a1)
{
  if ((a1 - 5) > 5)
  {
    return 0;
  }

  else
  {
    return dword_241C795E0[a1 - 5];
  }
}

void BOMCopierSandbox_boxup(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = BOM_malloczero(0x400uLL);
        if (v6)
        {
          v7 = v6;
          v8 = (*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), a2, v6);
          if (v8)
          {
            v9 = v8;
            v10 = BOM_malloczero(0x100uLL);
            if (v10)
            {
              v11 = v10;
              BomSys_clone(v10 + 8, *(a1 + 12832), v10);
              BomSys_set_opendir(v11[8], BOMCopierSandbox_opendir);
              BomSys_set_closedir(v11[8], BOMCopierSandbox_closedir);
              BomSys_set_readdir(v11[8], BOMCopierSandbox_readdir);
              BomSys_set_readdir_r(v11[8], BOMCopierSandbox_readdir_r);
              v12 = *(a1 + 12832);
              *(v11 + 1) = *(v12 + 272);
              *(v11 + 3) = *(v12 + 288);
              v11[9] = v7;
              v11[10] = strlen(v9);
              v11[14] = v11;
              v11[28] = a3;
              v11[29] = BOMBomGetRootFSObject(a3);
              v13 = BOMStackNew();
              v11[31] = v13;
              if (v13)
              {
                *v11 = a1;
                v11[5] = *(a1 + 12832);
                *(a1 + 12840) = v11;
                v14 = v11[6];
                if (!v14)
                {
                  v14 = v11[8];
                }

                *(a1 + 12832) = v14;
              }
            }

            else
            {

              free(v7);
            }
          }

          else
          {
            v15 = *MEMORY[0x277D85DF8];
            v16 = __error();
            v17 = strerror(*v16);
            fprintf(v15, "Cannot get the real path for %s: %s", a2, v17);
          }
        }
      }
    }
  }
}

unsigned int *BOMCopierSandbox_opendir(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x277D85DE8];
  if (strlen(__s) > *(a1 + 80) && !strncmp(__s, *(a1 + 72), *(a1 + 80)))
  {
    __strlcpy_chk();
    v7 = strlen(__sa) - 1;
    if (__sa[v7] == 47)
    {
      __sa[v7] = 0;
    }

    FSObjectAtPath = BOMBomGetFSObjectAtPath(*(a1 + 224), __sa);
    v9 = FSObjectAtPath;
    if (!FSObjectAtPath)
    {
      fprintf(*MEMORY[0x277D85DF8], "Could not lookup %s in sandbox bom\n", __sa);
      return v9;
    }

    if (BOMFSObjectType(FSObjectAtPath) == 2)
    {
      v10 = BOMBomEnumeratorNewWithOptions(*(a1 + 224), v9, 5);
      BOMFSObjectFree(v9);
      if (!v10)
      {
        return 0;
      }

      v11 = BOM_malloczero(0x90uLL);
      if (v11)
      {
        *v11 = v10;
        v9 = (v11 + 1);
        BOMStackPush(*(a1 + 248), v11);
        return v9;
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s is not a directory in the sandbox bom\n", __sa);
    }

    BOMFSObjectFree(v9);
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(*(a1 + 64) + 8);

  return v4(v5, __s);
}

uint64_t BOMCopierSandbox_closedir(uint64_t a1, void **a2)
{
  v4 = BOMStackPeek(*(a1 + 248));
  if (v4 + 1 == a2)
  {
    v8 = v4;
    BOMStackPop(*(a1 + 248));
    BOMBomEnumeratorFree(*v8);
    free(v8);
    return 0;
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(*(a1 + 64) + 8);

    return v5(v6, a2);
  }
}

uint64_t BOMCopierSandbox_readdir(uint64_t a1, void *a2)
{
  if (BOMStackPeek(*(a1 + 248)) + 1 == a2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 64) + 8);

  return v4(v5, a2);
}

uint64_t BOMCopierSandbox_readdir_r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = BOMStackPeek(*(a1 + 248));
  if (v8 + 1 == a2)
  {
    v12 = BOMBomEnumeratorNext(*v8);
    if (v12)
    {
      v13 = v12;
      bzero(a3, 0x418uLL);
      v14 = BOMFSObjectShortName(v13);
      strcpy((a3 + 21), v14);
      *(a3 + 18) = strlen((a3 + 21));
      *a4 = a3;
      BOMFSObjectFree(v13);
    }

    else
    {
      *a4 = 0;
    }

    return 0;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 64) + 8);

    return v9(v10, a2, a3, a4);
  }
}

void BOMCopierSandbox_unbox(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 12840);
    if (v2)
    {
      v3 = BOMStackPop(*(v2 + 31));
      if (v3)
      {
        v4 = v3;
        do
        {
          BOMBomEnumeratorFree(*v4);
          *(v4 + 7) = 0u;
          *(v4 + 8) = 0u;
          *(v4 + 5) = 0u;
          *(v4 + 6) = 0u;
          *(v4 + 3) = 0u;
          *(v4 + 4) = 0u;
          *(v4 + 1) = 0u;
          *(v4 + 2) = 0u;
          *v4 = 0u;
          free(v4);
          v4 = BOMStackPop(*(v2 + 31));
        }

        while (v4);
      }

      BOMStackFree(*(v2 + 31));
      *(a1 + 12832) = *(v2 + 5);
      *(a1 + 12840) = 0;
      *(v2 + 5) = 0;
      *v2 = 0;
      v5 = *(v2 + 30);
      if (v5)
      {
        BOMBomEnumeratorFree(v5);
        *(v2 + 30) = 0;
      }

      v6 = *(v2 + 9);
      if (v6)
      {
        free(v6);
        *(v2 + 9) = 0;
      }

      v7 = *(v2 + 29);
      if (v7)
      {
        BOMFSObjectFree(v7);
        *(v2 + 29) = 0;
      }

      v8 = *(v2 + 6);
      if (v8)
      {
        BomSys_log_detach(v8);
        *(v2 + 6) = 0;
      }

      v9 = *(v2 + 8);
      if (v9)
      {
        BomSys_free(v9);
      }

      free(v2);
    }
  }
}
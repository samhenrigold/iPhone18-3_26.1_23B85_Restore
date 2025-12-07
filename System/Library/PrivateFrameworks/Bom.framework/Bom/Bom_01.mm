uint64_t byte_stream_read_uint32(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 48);
  if ((v2 + 4) > *(a1 + 40))
  {
    *(a1 + 24) = 1;
    return 0xFFFFFFFFLL;
  }

  __dst = 0;
  platform_memcpy(*(a1 + 8), &__dst, (*(a1 + 32) + v2), 4uLL);
  *(a1 + 48) += 4;
  v4 = bswap32(__dst);
  if (*(a1 + 16) == *(a1 + 20))
  {
    return __dst;
  }

  else
  {
    return v4;
  }
}

unint64_t byte_stream_read_uint64(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return -1;
  }

  v2 = *(a1 + 48);
  if ((v2 + 8) > *(a1 + 40))
  {
    *(a1 + 24) = 1;
    return -1;
  }

  __dst = 0;
  platform_memcpy(*(a1 + 8), &__dst, (*(a1 + 32) + v2), 8uLL);
  *(a1 + 48) += 8;
  v4 = bswap64(__dst);
  if (*(a1 + 16) == *(a1 + 20))
  {
    return __dst;
  }

  else
  {
    return v4;
  }
}

uint64_t *byte_stream_read_buffer(uint64_t *result, void *a2, size_t __n)
{
  if (result)
  {
    v3 = result;
    if (*result == 1651733613 && *(result + 18) == 1836348258 && (result[3] & 1) == 0)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      if (!__n)
      {
        return result;
      }

      v5 = result[6];
      if (v5 + __n <= result[5])
      {
        result = platform_memcpy(result[1], a2, (result[4] + v5), __n);
        v3[6] += __n;
      }

      else
      {
LABEL_8:
        *(result + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t byte_stream_read_string(uint64_t a1, size_t a2, uint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return -1;
  }

  if (*(a1 + 48) + a2 > *(a1 + 40))
  {
    goto LABEL_6;
  }

  v7 = a2 + 1;
  v8 = *(a1 + 64);
  if (v8 >= a2 + 1)
  {
    platform_memset(*(a1 + 8), *(a1 + 56), 0, v8);
    v10 = *(a1 + 56);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      platform_free(*(a1 + 8), v9);
    }

    *(a1 + 64) = v7;
    v10 = platform_calloc(*(a1 + 8), a2 + 1, 1uLL);
    *(a1 + 56) = v10;
    if (!v10)
    {
      *(a1 + 24) = 1;
      return -1;
    }
  }

  byte_stream_read_buffer(a1, v10, a2);
  if (*(a1 + 24))
  {
    return -1;
  }

  __endptr = 0;
  result = platform_strtoq(*(a1 + 8), *(a1 + 56), &__endptr, a3);
  if (!result)
  {
    if (!*__error())
    {
      return 0;
    }

LABEL_6:
    *(a1 + 24) = 1;
    return -1;
  }

  return result;
}

uint64_t byte_stream_remaining(uint64_t a1)
{
  if (a1 && *a1 == 1651733613 && *(a1 + 72) == 1836348258)
  {
    return *(a1 + 40) - *(a1 + 48);
  }

  else
  {
    return -1;
  }
}

uint64_t byte_stream_advance(uint64_t result, uint64_t a2)
{
  if (result && *result == 1651733613 && *(result + 72) == 1836348258 && (*(result + 24) & 1) == 0)
  {
    v2 = *(result + 48) + a2;
    if (v2 <= *(result + 40))
    {
      *(result + 48) = v2;
    }

    else
    {
      *(result + 24) = 1;
    }
  }

  return result;
}

void *data_archive_decoder_new(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = platform_calloc(a1, 1uLL, 0x60uLL);
    v2 = v5;
    if (!v5)
    {
      return v2;
    }

    *v5 = 1919315316;
    v5[1] = a1;
    byte_stream_new(a1, 0);
    v2[3] = v6;
    if (v6)
    {
      *(v2 + 23) = 1953326706;
      return v2;
    }

    free(v2);
  }

  return 0;
}

void data_archive_decoder_free(_DWORD *__b)
{
  if (__b && *__b == 1919315316 && __b[23] == 1953326706)
  {
    v2 = *(__b + 5);
    if (v2)
    {
      platform_free(*(__b + 1), v2);
    }

    v3 = *(__b + 3);
    if (v3)
    {
      byte_stream_free(v3);
    }

    v4 = *(__b + 1);
    platform_memset(v4, __b, 0, 0x60uLL);

    platform_free(v4, __b);
  }
}

uint64_t data_archive_decoder_set_stream(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1919315316)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && *(a1 + 92) == 1953326706)
  {
    *(a1 + 16) = a2;
    *(a1 + 32) = 0x20000;
    v6 = platform_valloc(*(a1 + 8), 0x20000uLL);
    *(a1 + 40) = v6;
    if (!v6)
    {
      v7 = __error();
      strerror(*v7);
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 409, "data_archive_decoder_set_stream", "Could not allocate read buffer: %s");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 48) = v6;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (populate_read_buffer(a1, *(a1 + 32), a3))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 425, "data_archive_decoder_set_stream", "Could not populate the read buffer");
      return 0xFFFFFFFFLL;
    }

    if (!*(a1 + 72))
    {
      return 0;
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    if (v9 < 0x200)
    {
LABEL_14:
      if (!*(a1 + 84))
      {
        if (check_cpio_header(a1, v8, v9, a3))
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 461, "data_archive_decoder_set_stream", "Could not check for a cpio header");
          return 0xFFFFFFFFLL;
        }

        if (!*(a1 + 84))
        {
          result = is_pkzip_header(a1, v8, v9);
          if (result)
          {
            result = 0;
            *(a1 + 84) = 9;
          }

          return result;
        }
      }

      return 0;
    }

    byte_stream_attach(*(a1 + 24), *(a1 + 48), *(a1 + 64));
    byte_stream_advance(*(a1 + 24), 257);
    if (byte_stream_exception(*(a1 + 24)))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 805, "check_tar_posix_header", "Could not advance to the magic offset");
    }

    else
    {
      byte_stream_read_buffer(*(a1 + 24), __s1, 6uLL);
      if (byte_stream_exception(*(a1 + 24)))
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 815, "check_tar_posix_header", "Could not read the potential magic value");
      }

      else
      {
        byte_stream_read_buffer(*(a1 + 24), v10, 2uLL);
        if ((byte_stream_exception(*(a1 + 24)) & 1) == 0)
        {
          if (!platform_memcmp(*(a1 + 8), __s1, "ustar", 6uLL) && !platform_memcmp(*(a1 + 8), v10, "00", 2uLL))
          {
            *(a1 + 84) = 2;
          }

          goto LABEL_14;
        }

        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 825, "check_tar_posix_header", "Could not read the potential version value");
      }
    }

    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 445, "data_archive_decoder_set_stream", "Could not check for a tar POSIX header");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t populate_read_buffer(uint64_t a1, size_t a2, void *a3)
{
  v4 = *(a1 + 64);
  if (v4 >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  if (v4)
  {
    memmove(v6, *(a1 + 48), v4);
    v6 = *(a1 + 40);
    *(a1 + 48) = v6;
    v7 = *(a1 + 64);
  }

  else
  {
    v7 = 0;
    *(a1 + 48) = v6;
  }

  v8 = *(a1 + 32) - v7;
  v9 = data_stream_read(*(a1 + 16), v6 + v7, v8);
  if (v9 == -1)
  {
    v12 = __error();
    v13 = strerror(*v12);
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4061, "populate_read_buffer", "Could not read additional %ld bytes onto read buffer: %s\n", v8, v13);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = vaddq_s64(*(a1 + 64), vdupq_n_s64(v9));
    *(a1 + 64) = v10;
    if (v10.i64[0])
    {
      return 0;
    }

    result = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t check_cpio_header(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  uint16 = byte_stream_read_uint16(*(a1 + 24));
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 867, "check_cpio_header", "Could not read the potential binary magic value");
    return 0xFFFFFFFFLL;
  }

  if (uint16 == 51057)
  {
    result = 0;
    v10 = 8;
    goto LABEL_9;
  }

  if (uint16 == 29127)
  {
    result = 0;
    v10 = 7;
LABEL_9:
    *(a1 + 84) = v10;
    return result;
  }

  if (a3 < 6)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  string = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    return 0;
  }

  result = 0;
  if (string > 29126)
  {
    if (string == 29143)
    {
      result = 0;
      v10 = 4;
      goto LABEL_9;
    }

    if (string == 29127)
    {
      result = 0;
      v10 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    if (string == 29121)
    {
      result = 0;
      v10 = 6;
      goto LABEL_9;
    }

    if (string == 29122)
    {
      result = 0;
      v10 = 5;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t is_pkzip_header(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 4)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  uint32 = byte_stream_read_uint32(*(a1 + 24));
  result = 1;
  if (uint32 <= 101075791)
  {
    v6 = uint32 == 67324752;
    v7 = 101010256;
  }

  else
  {
    v6 = uint32 == 101075792 || uint32 == 134695760;
    v7 = 808471376;
  }

  if (!v6 && uint32 != v7)
  {
    return 0;
  }

  return result;
}

uint64_t data_archive_decoder_get_type(_DWORD *a1)
{
  if (a1 && *a1 == 1919315316 && a1[23] == 1953326706)
  {
    return a1[21];
  }

  puts("Invalid decoder?");
  return 0;
}

_DWORD *data_archive_decoder_read_entry(uint64_t a1, void *a2)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 527, "data_archive_decoder_read_entry", "Invalid decoder");
    return 0;
  }

  if (*(a1 + 89) == 1)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 537, "data_archive_decoder_read_entry", "End of archive");
    return 0;
  }

  if (!*(a1 + 64) && populate_read_buffer(a1, *(a1 + 32), a2))
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 550, "data_archive_decoder_read_entry", "Could not populate the read buffer");
    return 0;
  }

  v6 = darc_format_entry_new(*(a1 + 8), 0);
  v4 = v6;
  if (!v6)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 562, "data_archive_decoder_read_entry", "Could not create empty data format entry");
    return v4;
  }

  if (*(a1 + 80) == 1)
  {
    if (!darc_format_entry_set_type(v6, 1))
    {
      *(a1 + 89) = 1;
      return v4;
    }

    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 575, "data_archive_decoder_read_entry", "Could not set EoA entry type");
    goto LABEL_14;
  }

  v7 = *(a1 + 84);
  if (v7 == 9)
  {
    if (!parse_entry_pkzip(a1, v6, a2))
    {
      return v4;
    }

    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 620, "data_archive_decoder_read_entry", "Could not parse PKZip entry");
    goto LABEL_14;
  }

  if (v7 == 3)
  {
    if (!parse_entry_cpio(a1, v6, a2))
    {
      return v4;
    }

    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 609, "data_archive_decoder_read_entry", "Could not parse CPIO ASCII entry");
    goto LABEL_14;
  }

  if (v7 != 2)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 628, "data_archive_decoder_read_entry", "Unknown data format: %d");
    return v4;
  }

  if (parse_entry_posix_ustar(a1, v6, a2))
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 598, "data_archive_decoder_read_entry", "Could not parse POSIX ustar entry");
LABEL_14:
    darc_format_entry_free(v4);
    return 0;
  }

  return v4;
}

uint64_t parse_entry_posix_ustar(uint64_t a1, _DWORD *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 56);
  if (require_minimum_amount(a1, 0x200uLL, "POSIX ustar header", a3))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1022, "parse_entry_posix_ustar", "Minimum amount necessary for POSIX ustar header is unavailable");
    return 0xFFFFFFFFLL;
  }

  v8 = platform_calloc(*(a1 + 8), 1uLL, 0x28uLL);
  if (!v8)
  {
    v11 = __error();
    strerror(*v11);
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1030, "parse_entry_posix_ustar", "Could not allocate %ld bytes for POSIX ustar header: %s");
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  if (!*v10)
  {
    v12 = 1;
    while (v12 != 512)
    {
      if (v10[v12++])
      {
        if ((v12 - 2) < 0x1FF)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    darc_format_entry_set_type(a2, 3);
    *v9 = 1;
    *(a1 + 48) += 512;
    *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
    goto LABEL_15;
  }

LABEL_7:
  *v8 = 2;
  byte_stream_attach(*(a1 + 24), v10, 0x200uLL);
  memset(__s, 0, sizeof(__s));
  byte_stream_read_buffer(*(a1 + 24), __s, 0x64uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1113, "parse_entry_posix_ustar_header_decode", "Could not parse the tar name field");
LABEL_109:
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1037, "parse_entry_posix_ustar", "Could not decode POSIX ustar header");
    platform_free(*(a1 + 8), v9);
    return 0xFFFFFFFFLL;
  }

  v15 = strlen(__s);
  if (darc_format_entry_set_attribute(a2, "name", __s, v15 + 1))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1123, "parse_entry_posix_ustar_header_decode", "Could not set name attribute");
    goto LABEL_109;
  }

  string = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1134, "parse_entry_posix_ustar_header_decode", "Could not parse the tar mode field");
    goto LABEL_109;
  }

  *(v9 + 2) = string | 0x8000;
  v17 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1148, "parse_entry_posix_ustar_header_decode", "Could not parse the tar uid field");
    goto LABEL_109;
  }

  *(v9 + 2) = v17;
  v18 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1161, "parse_entry_posix_ustar_header_decode", "Could not parse the tar gid field");
    goto LABEL_109;
  }

  *(v9 + 3) = v18;
  v19 = byte_stream_read_string(*(a1 + 24), 0xCuLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1174, "parse_entry_posix_ustar_header_decode", "Could not parse the tar size field");
    goto LABEL_109;
  }

  v9[2] = v19;
  v20 = byte_stream_read_string(*(a1 + 24), 0xCuLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1187, "parse_entry_posix_ustar_header_decode", "Could not parse the tar mtime field");
    goto LABEL_109;
  }

  v9[3] = v20;
  byte_stream_read_buffer(*(a1 + 24), v55, 8uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1202, "parse_entry_posix_ustar_header_decode", "Could not parse the tar checksum field");
    goto LABEL_109;
  }

  v40 = 0;
  byte_stream_read_buffer(*(a1 + 24), &v40, 1uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1215, "parse_entry_posix_ustar_header_decode", "Could not parse the tar type flag field");
    goto LABEL_109;
  }

  if (v40 <= 0x34u)
  {
    if (v40 <= 0x31u)
    {
      v21 = 0;
      v22 = 0;
      if (v40 - 48 >= 2 && v40)
      {
        goto LABEL_68;
      }

      goto LABEL_59;
    }

    switch(v40)
    {
      case '2':
        v21 = 0;
        v22 = 0;
        v24 = *(v9 + 2) | 0xA000;
        break;
      case '3':
        v21 = 0;
        v22 = 0;
        v24 = *(v9 + 2) & 0x5FFF | 0x2000;
        break;
      case '4':
        v21 = 0;
        v22 = 0;
        v23 = *(v9 + 2) & 0x1FFF | 0x6000;
LABEL_53:
        *(v9 + 2) = v23;
        goto LABEL_59;
      default:
        goto LABEL_68;
    }

    goto LABEL_58;
  }

  if (v40 <= 0x36u)
  {
    if (v40 == 53)
    {
      v21 = 0;
      v22 = 0;
      v23 = *(v9 + 2) & 0x3FFF | 0x4000;
      goto LABEL_53;
    }

    if (v40 != 54)
    {
LABEL_68:
      if ((v40 - 65) > 0x19)
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1302, "parse_entry_posix_ustar_header_decode", "Unrecognize tar type flag value: %c");
      }

      else
      {
        *__error() = 45;
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1298, "parse_entry_posix_ustar_header_decode", "Vendor specific extensions (POSIX.1-1988)");
      }

      goto LABEL_109;
    }

    v21 = 0;
    v22 = 0;
    v24 = *(v9 + 2) & 0x6FFF | 0x1000;
LABEL_58:
    *(v9 + 2) = v24;
    goto LABEL_59;
  }

  if (v40 == 55)
  {
    *__error() = 45;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1277, "parse_entry_posix_ustar_header_decode", "I do not support contiguous files");
    goto LABEL_109;
  }

  if (v40 == 103)
  {
    v21 = 0;
    v22 = 1;
    goto LABEL_59;
  }

  if (v40 != 120)
  {
    goto LABEL_68;
  }

  v22 = 0;
  v21 = 1;
LABEL_59:
  memset(v54, 0, sizeof(v54));
  byte_stream_read_buffer(*(a1 + 24), v54, 0x64uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1316, "parse_entry_posix_ustar_header_decode", "Could not parse the tar linkname field");
    goto LABEL_109;
  }

  v25 = v21;
  v26 = strlen(v54);
  if (v26 && darc_format_entry_set_attribute(a2, "tar linkname", v54, v26 + 1))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1328, "parse_entry_posix_ustar_header_decode", "Could not set linkname attribute");
    goto LABEL_109;
  }

  v39 = 0;
  __s1 = 0;
  byte_stream_read_buffer(*(a1 + 24), &__s1, 6uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1342, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar magic field");
    goto LABEL_109;
  }

  if (platform_memcmp(*(a1 + 8), &__s1, "ustar", 6uLL))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1348, "parse_entry_posix_ustar_header_decode", "Invalid magic for POSIX ustar archive");
    goto LABEL_109;
  }

  v37 = 0;
  byte_stream_read_buffer(*(a1 + 24), &v37, 2uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1361, "parse_entry_posix_ustar_header_decode", "Could not parse the tar version field");
    goto LABEL_109;
  }

  if (platform_memcmp(*(a1 + 8), &v37, "00", 2uLL))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1367, "parse_entry_posix_ustar_header_decode", "Invalid version for POSIX ustar archive");
    goto LABEL_109;
  }

  memset(v53, 0, sizeof(v53));
  byte_stream_read_buffer(*(a1 + 24), v53, 0x20uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1380, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar uname field");
    goto LABEL_109;
  }

  v27 = strlen(v53);
  if (v27 && darc_format_entry_set_attribute(a2, "POSIX ustar user name", v53, v27 + 1))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1392, "parse_entry_posix_ustar_header_decode", "Could not set POSIX ustar user name attribute");
    goto LABEL_109;
  }

  memset(v52, 0, sizeof(v52));
  byte_stream_read_buffer(*(a1 + 24), v52, 0x20uLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1406, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar group name field");
    goto LABEL_109;
  }

  v28 = strlen(v52);
  if (v28 && darc_format_entry_set_attribute(a2, "POSIX ustar group name", v52, v28 + 1))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1418, "parse_entry_posix_ustar_header_decode", "Could not set POSIX ustar group name attribute");
    goto LABEL_109;
  }

  v29 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1430, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar devmajor field");
    goto LABEL_109;
  }

  *(v9 + 8) = v29;
  v30 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1443, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar devminor field");
    goto LABEL_109;
  }

  *(v9 + 9) = v30;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  byte_stream_read_buffer(*(a1 + 24), v43, 0x9BuLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1458, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar prefix field");
    goto LABEL_109;
  }

  v31 = strlen(v43);
  if (v31)
  {
    v32 = v31;
    bzero(__str, 0x400uLL);
    if (v43[v32] == 47)
    {
      snprintf(__str, 0x400uLL, "%s%s");
    }

    else
    {
      snprintf(__str, 0x400uLL, "%s/%s");
    }

    v33 = strlen(__str);
    if (darc_format_entry_set_attribute(a2, "name", __str, v33 + 1))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1482, "parse_entry_posix_ustar_header_decode", "Could not reset POSIX ustar name attribute", v35);
      goto LABEL_109;
    }
  }

  v42 = 0;
  *__str = 0;
  byte_stream_read_buffer(*(a1 + 24), __str, 0xCuLL);
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1496, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar padding field", v35);
    goto LABEL_109;
  }

  *(a1 + 48) += 512;
  *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
  if (v22)
  {
    *v9 = 3;
    *__error() = 45;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1512, "parse_entry_posix_ustar_header_decode", "This entry has global extended metadata", v35);
    goto LABEL_109;
  }

  if (v25)
  {
    *v9 = 4;
    if (parse_entry_posix_ustar_extended_metadata(a1, v9[2], a3))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1527, "parse_entry_posix_ustar_header_decode", "Could not parse the POSIX ustar extended metadata", v35);
      goto LABEL_109;
    }
  }

  else
  {
    v34 = v9[2];
    if (v34 >= 1 && darc_format_entry_set_size(a2, v34))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1543, "parse_entry_posix_ustar_header_decode", "Could not set entry size", v35);
      goto LABEL_109;
    }
  }

  if (darc_format_entry_set_type(a2, 2))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1553, "parse_entry_posix_ustar_header_decode", "Could not set entry type", v35);
    goto LABEL_109;
  }

LABEL_15:
  v14 = darc_format_entry_set_attribute(a2, "POSIX ustar header", v9, 0x28uLL);
  platform_free(*(a1 + 8), v9);
  if (v14)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1052, "parse_entry_posix_ustar", "Could not set POSIX ustar header attribute", v35, v36);
    return 0xFFFFFFFFLL;
  }

  result = darc_format_entry_set_range(a2, v6, *(a1 + 56) - v6);
  if (result)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1065, "parse_entry_posix_ustar", "Could not set entry range", v35, v36);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t parse_entry_cpio(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 56);
  if ((*(a1 + 88) & 1) == 0)
  {
    if (require_minimum_amount(a1, 0x4CuLL, "cpio header", a3))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1655, "parse_entry_cpio_header", "Minimum amount necessary for CPIO header is unavailable");
      return 0xFFFFFFFFLL;
    }

    v12 = platform_calloc(*(a1 + 8), 1uLL, 0x48uLL);
    if (!v12)
    {
      v14 = __error();
      strerror(*v14);
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1663, "parse_entry_cpio_header", "Could not allocate %ld bytes for cpio_header: %s");
      return 0xFFFFFFFFLL;
    }

    v13 = v12;
    byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x4CuLL);
    *v13 = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 2) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 2) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 12) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 7) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 8) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 18) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 10) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 6) = byte_stream_read_string(*(a1 + 24), 0xBuLL, 8);
    *(v13 + 7) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v13 + 8) = byte_stream_read_string(*(a1 + 24), 0xBuLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1743, "parse_entry_cpio_header_decode", "Could not parse the CPIO header");
    }

    else if (*v13 == 29127)
    {
      *(a1 + 48) += 76;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78920);
      v15 = *(v13 + 8);
      if (v15 < 1 || !darc_format_entry_set_size(a2, v15))
      {
        v16 = *(v13 + 7);
        if (v16)
        {
          if (require_minimum_amount(a1, v16, "cpio entry name", a3))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1785, "parse_entry_cpio_header_decode", "Minimum amount necessary for CPIO name is unavailable");
            goto LABEL_25;
          }

          byte_stream_attach(*(a1 + 24), *(a1 + 48), *(v13 + 7));
          v17 = platform_calloc(*(a1 + 8), *(v13 + 7), 1uLL);
          if (!v17)
          {
            v19 = __error();
            strerror(*v19);
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1794, "parse_entry_cpio_header_decode", "Could not allocate %ld bytes: %s");
            goto LABEL_25;
          }

          v18 = v17;
          byte_stream_read_buffer(*(a1 + 24), v17, *(v13 + 7));
          if (byte_stream_exception(*(a1 + 24)))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1802, "parse_entry_cpio_header_decode", "Could not parse the CPIO name");
            free(v18);
            goto LABEL_25;
          }

          if (darc_format_entry_set_attribute(a2, "name", v18, *(v13 + 7)))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1815, "parse_entry_cpio_header_decode", "Could not set name attribute");
            goto LABEL_25;
          }

          if (platform_strlen(*(a1 + 8), v18) == 10 && !platform_strncmp(*(a1 + 8), v18, "TRAILER!!!", 0xAuLL))
          {
            *(a1 + 88) = 1;
          }

          platform_free(*(a1 + 8), v18);
          v20 = *(v13 + 7);
          v21 = *(a1 + 56) + v20;
          *(a1 + 48) += v20;
          *(a1 + 56) = v21;
          *(a1 + 64) -= v20;
        }

        v22 = darc_format_entry_set_attribute(a2, "cpio header", v13, 0x48uLL);
        platform_free(*(a1 + 8), v13);
        if (v22)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1685, "parse_entry_cpio_header", "Could not set cpio header attribute");
        }

        else if (darc_format_entry_set_type(a2, 4))
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1696, "parse_entry_cpio_header", "Could not set entry type");
        }

        else
        {
          result = darc_format_entry_set_range(a2, v6, *(a1 + 56) - v6);
          if (!result)
          {
            return result;
          }

          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1705, "parse_entry_cpio_header", "Could not set entry range");
        }

        return 0xFFFFFFFFLL;
      }

      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1764, "parse_entry_cpio_header_decode", "Could not set entry size");
    }

    else
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1749, "parse_entry_cpio_header_decode", "Invalid CPIO magic: %lld");
    }

LABEL_25:
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1670, "parse_entry_cpio_header", "Could not decode CPIO header");
    platform_free(*(a1 + 8), v13);
    return 0xFFFFFFFFLL;
  }

  while ((*(a1 + 80) & 1) == 0)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = *(a1 + 48) + 1;
      while (!*(v9 - 1))
      {
        v10 = *(a1 + 56) + 1;
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = v8--;
        ++v9;
        if (v8 == -1)
        {
          goto LABEL_7;
        }
      }

      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1857, "parse_entry_cpio_padding", "Could not populate the read buffer");
      return 0xFFFFFFFFLL;
    }

LABEL_7:
    if (populate_read_buffer(a1, *(a1 + 32), a3))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1867, "parse_entry_cpio_padding", "Could not populate the read buffer");
      return 0xFFFFFFFFLL;
    }
  }

  if (darc_format_entry_set_type(a2, 5))
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1879, "parse_entry_cpio_padding", "Could not set entry type");
    return 0xFFFFFFFFLL;
  }

  result = darc_format_entry_set_range(a2, v6, *(a1 + 56) - v6);
  if (result)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1888, "parse_entry_cpio_padding", "Could not set entry range");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t parse_entry_pkzip(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (require_minimum_amount(a1, 4uLL, "PKZip signature", a3))
  {
    return 0xFFFFFFFFLL;
  }

  v56 = a2;
  v57 = a3;
  while (1)
  {
    byte_stream_attach(*(a1 + 24), *(a1 + 48), 4uLL);
    uint32 = byte_stream_read_uint32(*(a1 + 24));
    if (byte_stream_exception(*(a1 + 24)))
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1936, "parse_entry_pkzip", "Could not parse the PKZip entry");
      return 0xFFFFFFFFLL;
    }

    if (uint32 <= 101075791)
    {
      if (uint32 > 84233039)
      {
        if (uint32 != 84233040)
        {
          if (uint32 != 101010256)
          {
            goto LABEL_21;
          }

          v22 = a3;
          if (require_minimum_amount(a1, 0x16uLL, "PKZip end of central directory read", a3))
          {
            return 0xFFFFFFFFLL;
          }

          v17 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
          if (!v17)
          {
            v30 = __error();
            strerror(*v30);
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2920, "parse_entry_pkzip_end_of_central_directory_record", "Could not allocate %ld bytes for PKZip central directory header: %s");
            return 0xFFFFFFFFLL;
          }

          v14 = v17;
          byte_stream_set_byte_order(*(a1 + 24), 2);
          byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x16uLL);
          *v14 = byte_stream_read_uint32(*(a1 + 24));
          v14[2] = byte_stream_read_uint16(*(a1 + 24));
          v14[3] = byte_stream_read_uint16(*(a1 + 24));
          v14[4] = byte_stream_read_uint16(*(a1 + 24));
          v14[5] = byte_stream_read_uint16(*(a1 + 24));
          *(v14 + 3) = byte_stream_read_uint32(*(a1 + 24));
          *(v14 + 4) = byte_stream_read_uint32(*(a1 + 24));
          v14[10] = byte_stream_read_uint16(*(a1 + 24));
          if (!byte_stream_exception(*(a1 + 24)))
          {
            if (*v14 != 101010256)
            {
              capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2946, "parse_entry_pkzip_end_of_central_directory_record", "Invalid PKZip end of central directory record signature: %04x");
              goto LABEL_96;
            }

            *(a1 + 48) += 22;
            *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78930);
            if (v14[10])
            {
              if (!require_minimum_amount(a1, v14[10], ".ZIP file comment", a3))
              {
                v37 = v14[10];
                v38 = *(a1 + 56) + v37;
                *(a1 + 48) += v37;
                *(a1 + 56) = v38;
                *(a1 + 64) -= v37;
                capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2969, "parse_entry_pkzip_end_of_central_directory_record", "TODO: parse .ZIP file comment");
                return 0xFFFFFFFFLL;
              }

              goto LABEL_96;
            }

            v12 = a2;
            if (darc_format_entry_set_type(a2, 14))
            {
              capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2980, "parse_entry_pkzip_end_of_central_directory_record", "Could not set entry type");
              goto LABEL_96;
            }

            if (darc_format_entry_set_attribute(a2, "pkzip end of central directory record", v14, 0x18uLL))
            {
              capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2992, "parse_entry_pkzip_end_of_central_directory_record", "Could not set PKZip end of central directory record attribute");
              goto LABEL_96;
            }

            goto LABEL_122;
          }

          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2939, "parse_entry_pkzip_end_of_central_directory_record", "Could not parse the PKZip data descriptor");
          goto LABEL_96;
        }

        v22 = a3;
        if (require_minimum_amount(a1, 6uLL, "PKZip archive digital signature", a3))
        {
          return 0xFFFFFFFFLL;
        }

        byte_stream_set_byte_order(*(a1 + 24), 2);
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 6uLL);
        v25 = byte_stream_read_uint32(*(a1 + 24));
        uint16 = byte_stream_read_uint16(*(a1 + 24));
        if (byte_stream_exception(*(a1 + 24)))
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2858, "parse_entry_pkzip_digital_signature", "Could not parse the PKZip digital signature");
          return 0xFFFFFFFFLL;
        }

        if (v25 != 84233040)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2864, "parse_entry_pkzip_digital_signature", "Invalid PKZip archive digital signature signature: %04x");
          return 0xFFFFFFFFLL;
        }

        if (require_minimum_amount(a1, uint16, "PKZip archive digital signature", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v28 = *(a1 + 56) + uint16;
        *(a1 + 48) += uint16;
        *(a1 + 56) = v28;
        *(a1 + 64) -= uint16;
      }

      else
      {
        if (uint32 != 33639248)
        {
          if (uint32 != 67324752)
          {
            goto LABEL_21;
          }

          v18 = a3;
          if (require_minimum_amount(a1, 0x1EuLL, "PKZip local header", a3))
          {
            return 0xFFFFFFFFLL;
          }

          v20 = platform_calloc(*(a1 + 8), 1uLL, 0x20uLL);
          if (!v20)
          {
            v31 = __error();
            strerror(*v31);
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2159, "parse_entry_pkzip_local_header", "Could not allocate %ld bytes for PKZip local header: %s\n");
            return 0xFFFFFFFFLL;
          }

          v14 = v20;
          byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x1EuLL);
          *v14 = byte_stream_read_uint32(*(a1 + 24));
          v14[2] = byte_stream_read_uint16(*(a1 + 24));
          v14[3] = byte_stream_read_uint16(*(a1 + 24));
          v14[4] = byte_stream_read_uint16(*(a1 + 24));
          v14[5] = byte_stream_read_uint16(*(a1 + 24));
          v14[6] = byte_stream_read_uint16(*(a1 + 24));
          *(v14 + 4) = byte_stream_read_uint32(*(a1 + 24));
          *(v14 + 5) = byte_stream_read_uint32(*(a1 + 24));
          *(v14 + 6) = byte_stream_read_uint32(*(a1 + 24));
          v14[14] = byte_stream_read_uint16(*(a1 + 24));
          v14[15] = byte_stream_read_uint16(*(a1 + 24));
          if (byte_stream_exception(*(a1 + 24)))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2179, "parse_entry_pkzip_local_header", "Could not parse the PKZip local header");
            goto LABEL_96;
          }

          if (*v14 != 67324752)
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2186, "parse_entry_pkzip_local_header", "Invalid PKZip local header signature: %04x");
            goto LABEL_96;
          }

          *(a1 + 48) += 30;
          *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78980);
          if (darc_format_entry_set_attribute(v56, "pkzip local header", v14, 0x20uLL))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2204, "parse_entry_pkzip_local_header", "Could not set PKZip local header attribute");
            goto LABEL_96;
          }

          v39 = *(v14 + 5);
          if (v39 && darc_format_entry_set_size(v56, v39))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2215, "parse_entry_pkzip_local_header", "Could not set entry size");
            goto LABEL_96;
          }

          if (v14[14])
          {
            if (require_minimum_amount(a1, v14[14], "PKZip file name", a3))
            {
              goto LABEL_96;
            }

            byte_stream_attach(*(a1 + 24), *(a1 + 48), v14[14]);
            v43 = v14[14];
            v44 = platform_calloc(*(a1 + 8), v43 + 1, 1uLL);
            if (!v44)
            {
              v46 = __error();
              strerror(*v46);
              capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2247, "parse_entry_pkzip_local_header", "Could not allocate %d bytes: %s");
              goto LABEL_96;
            }

            v42 = v44;
            byte_stream_read_buffer(*(a1 + 24), v44, v14[14]);
            if (byte_stream_exception(*(a1 + 24)))
            {
              capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2256, "parse_entry_pkzip_local_header", "Could not parse the PKZip file name");
              goto LABEL_141;
            }

            if (darc_format_entry_set_attribute(v56, "name", v42, v43 + 1))
            {
              capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2270, "parse_entry_pkzip_local_header", "Could not set entry name");
              goto LABEL_141;
            }

            free(v42);
            v52 = v14[14];
            v53 = *(a1 + 56) + v52;
            *(a1 + 48) += v52;
            *(a1 + 56) = v53;
            *(a1 + 64) -= v52;
            v18 = v57;
          }

          if (v14[15] && parse_entry_pkzip_extra_field(a1, v56, v14[15], 1, v18))
          {
            capture_error(v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2290, "parse_entry_pkzip_local_header", "Could not parse local header extra field");
          }

          else
          {
            if ((v14[3] & 8) != 0)
            {
              if (darc_format_entry_get_attribute(v56, "pkzip extra field ZIP64", 0) < 1)
              {
                *(a1 + 90) = 1;
              }

              else
              {
                *(a1 + 91) = 1;
              }
            }

            else
            {
              *(a1 + 90) = 0;
            }

            v12 = v56;
            if (!darc_format_entry_set_type(v56, 6))
            {
              free(v14);
              v22 = v57;
              goto LABEL_59;
            }

            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2326, "parse_entry_pkzip_local_header", "Could not set entry type");
          }

          goto LABEL_96;
        }

        v22 = a3;
        if (require_minimum_amount(a1, 0x2EuLL, "PKZip central directory header", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v21 = platform_calloc(*(a1 + 8), 1uLL, 0x30uLL);
        if (!v21)
        {
          v32 = __error();
          strerror(*v32);
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2610, "parse_entry_pkzip_central_directory_header", "Could not allocate %ld bytes for PKZip central directory header: %s");
          return 0xFFFFFFFFLL;
        }

        v14 = v21;
        byte_stream_set_byte_order(*(a1 + 24), 2);
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x2EuLL);
        *v14 = byte_stream_read_uint32(*(a1 + 24));
        v14[2] = byte_stream_read_uint16(*(a1 + 24));
        v14[3] = byte_stream_read_uint16(*(a1 + 24));
        v14[4] = byte_stream_read_uint16(*(a1 + 24));
        v14[5] = byte_stream_read_uint16(*(a1 + 24));
        v14[6] = byte_stream_read_uint16(*(a1 + 24));
        v14[7] = byte_stream_read_uint16(*(a1 + 24));
        *(v14 + 4) = byte_stream_read_uint32(*(a1 + 24));
        *(v14 + 5) = byte_stream_read_uint32(*(a1 + 24));
        *(v14 + 6) = byte_stream_read_uint32(*(a1 + 24));
        v14[14] = byte_stream_read_uint16(*(a1 + 24));
        v14[15] = byte_stream_read_uint16(*(a1 + 24));
        v14[16] = byte_stream_read_uint16(*(a1 + 24));
        v14[17] = byte_stream_read_uint16(*(a1 + 24));
        v14[18] = byte_stream_read_uint16(*(a1 + 24));
        *(v14 + 10) = byte_stream_read_uint32(*(a1 + 24));
        *(v14 + 11) = byte_stream_read_uint32(*(a1 + 24));
        if (byte_stream_exception(*(a1 + 24)))
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2638, "parse_entry_pkzip_central_directory_header", "Could not parse the PKZip data descriptor");
          goto LABEL_96;
        }

        if (*v14 != 33639248)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2645, "parse_entry_pkzip_central_directory_header", "Invalid PKZip central directory header signature: %04x");
          goto LABEL_96;
        }

        *(a1 + 48) += 46;
        *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78960);
        if (darc_format_entry_set_attribute(a2, "pkzip central directory header", v14, 0x30uLL))
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2663, "parse_entry_pkzip_central_directory_header", "Could not set PKZip central directory header attribute");
          goto LABEL_96;
        }

        if (v14[14])
        {
          if (require_minimum_amount(a1, v14[14], "PKZip file name", a3))
          {
            goto LABEL_96;
          }

          byte_stream_attach(*(a1 + 24), *(a1 + 48), v14[14]);
          v40 = v14[14];
          v41 = platform_calloc(*(a1 + 8), v40 + 1, 1uLL);
          if (!v41)
          {
            v45 = __error();
            strerror(*v45);
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2694, "parse_entry_pkzip_central_directory_header", "Could not allocate %d bytes: %s");
            goto LABEL_96;
          }

          v42 = v41;
          byte_stream_read_buffer(*(a1 + 24), v41, v14[14]);
          if (byte_stream_exception(*(a1 + 24)))
          {
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2703, "parse_entry_pkzip_central_directory_header", "Could not parse the PKZip file name");
LABEL_141:
            free(v42);
            goto LABEL_96;
          }

          if (darc_format_entry_set_attribute(a2, "name", v42, v40 + 1))
          {
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2717, "parse_entry_pkzip_central_directory_header", "Could not set entry name");
            goto LABEL_141;
          }

          free(v42);
          v47 = v14[14];
          v48 = *(a1 + 56) + v47;
          *(a1 + 48) += v47;
          *(a1 + 56) = v48;
          *(a1 + 64) -= v47;
          v22 = v57;
        }

        if (v14[15] && parse_entry_pkzip_extra_field(a1, a2, v14[15], 0, v22))
        {
          capture_error(v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2737, "parse_entry_pkzip_central_directory_header", "Could not parse central directory header extra field");
          goto LABEL_96;
        }

        if (v14[16])
        {
          if (require_minimum_amount(a1, v14[16], "PKZip file comment", v22))
          {
            goto LABEL_96;
          }

          byte_stream_attach(*(a1 + 24), *(a1 + 48), v14[16]);
          v49 = v14[16];
          v50 = platform_calloc(*(a1 + 8), v49, 1uLL);
          if (!v50)
          {
            v51 = __error();
            strerror(*v51);
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2769, "parse_entry_pkzip_central_directory_header", "Could not allocate %d bytes: %s");
            goto LABEL_96;
          }

          v42 = v50;
          byte_stream_read_buffer(*(a1 + 24), v50, v14[16]);
          if (byte_stream_exception(*(a1 + 24)))
          {
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2778, "parse_entry_pkzip_central_directory_header", "Could not parse the PKZip file comment");
            goto LABEL_141;
          }

          if (darc_format_entry_set_attribute(a2, "pkzip central directory file comment", v42, v49))
          {
            capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2787, "parse_entry_pkzip_central_directory_header", "Could not set entry file comment");
            goto LABEL_141;
          }

          free(v42);
          v54 = v14[16];
          v55 = *(a1 + 56) + v54;
          *(a1 + 48) += v54;
          *(a1 + 56) = v55;
          *(a1 + 64) -= v54;
          v22 = v57;
        }

        if (darc_format_entry_set_type(a2, 10))
        {
          capture_error(v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2805, "parse_entry_pkzip_central_directory_header", "Could not set entry type");
          goto LABEL_96;
        }

        free(v14);
      }

LABEL_58:
      v12 = a2;
      goto LABEL_59;
    }

    if (uint32 <= 134630223)
    {
      if (uint32 != 101075792)
      {
        if (uint32 != 117853008)
        {
          goto LABEL_21;
        }

        v22 = a3;
        if (require_minimum_amount(a1, 0x14uLL, "PKZip ZIP64 end of central directory locator read", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v24 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
        if (!v24)
        {
          v33 = __error();
          strerror(*v33);
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3155, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Could not allocate %ld bytes for PKZip ZIP64 central directory locator: %s");
          return 0xFFFFFFFFLL;
        }

        v14 = v24;
        byte_stream_set_byte_order(*(a1 + 24), 2);
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x14uLL);
        *v14 = byte_stream_read_uint32(*(a1 + 24));
        *(v14 + 1) = byte_stream_read_uint32(*(a1 + 24));
        *(v14 + 1) = byte_stream_read_uint64(*(a1 + 24));
        *(v14 + 4) = byte_stream_read_uint32(*(a1 + 24));
        v12 = a2;
        if (byte_stream_exception(*(a1 + 24)))
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3170, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Could not parse the PKZip ZIP64 end of central directory locator");
          goto LABEL_96;
        }

        if (*v14 != 117853008)
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3177, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Invalid PKZip ZIP64 end of central directory record signature: %04x");
          goto LABEL_96;
        }

        *(a1 + 48) += 20;
        *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78940);
        if (darc_format_entry_set_type(a2, 13))
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3191, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Could not set entry type");
          goto LABEL_96;
        }

        if (darc_format_entry_set_attribute(a2, "pkzip ZIP64 end of central directory locator", v14, 0x18uLL))
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3203, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Could not set PKZip ZIP64 end of central directory locator attribute");
          goto LABEL_96;
        }

LABEL_122:
        free(v14);
        goto LABEL_59;
      }

      v22 = a3;
      if (require_minimum_amount(a1, 0x38uLL, "PKZip ZIP64 end of central directory read", a3))
      {
        return 0xFFFFFFFFLL;
      }

      v13 = platform_calloc(*(a1 + 8), 1uLL, 0x40uLL);
      if (!v13)
      {
        v29 = __error();
        strerror(*v29);
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3041, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Could not allocate %ld bytes for PKZip ZIP64 central directory header: %s");
        return 0xFFFFFFFFLL;
      }

      v14 = v13;
      byte_stream_set_byte_order(*(a1 + 24), 2);
      byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x38uLL);
      *v14 = byte_stream_read_uint32(*(a1 + 24));
      *(v14 + 1) = byte_stream_read_uint64(*(a1 + 24));
      v14[8] = byte_stream_read_uint16(*(a1 + 24));
      v14[9] = byte_stream_read_uint16(*(a1 + 24));
      *(v14 + 5) = byte_stream_read_uint32(*(a1 + 24));
      *(v14 + 6) = byte_stream_read_uint32(*(a1 + 24));
      *(v14 + 4) = byte_stream_read_uint64(*(a1 + 24));
      *(v14 + 5) = byte_stream_read_uint64(*(a1 + 24));
      *(v14 + 6) = byte_stream_read_uint64(*(a1 + 24));
      *(v14 + 7) = byte_stream_read_uint64(*(a1 + 24));
      if (!byte_stream_exception(*(a1 + 24)))
      {
        if (*v14 != 101075792)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3069, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Invalid PKZip ZIP64 end of central directory record signature: %04x");
          goto LABEL_96;
        }

        v34 = *(a1 + 48);
        *(a1 + 48) = v34 + 56;
        v35 = *(a1 + 56);
        *(a1 + 56) = vaddq_s64(v35, xmmword_241C78950);
        v36 = *(v14 + 1);
        if (v36 - 56 >= 1)
        {
          *(a1 + 48) = v34 + v36;
          *(a1 + 56) = v36 + v35.i64[0];
          *(a1 + 64) = v35.i64[1] - v36;
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3087, "parse_entry_pkzip_zip64_end_of_central_directory_record", "TODO: parse ZIP64 extensible data");
          return 0xFFFFFFFFLL;
        }

        v12 = a2;
        if (darc_format_entry_set_type(a2, 12))
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3098, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Could not set entry type");
          goto LABEL_96;
        }

        if (darc_format_entry_set_attribute(a2, "pkzip ZIP64 end of central directory record", v14, 0x40uLL))
        {
          capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3110, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Could not set PKZip ZIP64 end of central directory record attribute");
          goto LABEL_96;
        }

        goto LABEL_122;
      }

      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3062, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Could not parse the PKZip ZIP64 end of central directory record");
LABEL_96:
      free(v14);
      return 0xFFFFFFFFLL;
    }

    if (uint32 == 134630224)
    {
      v22 = a3;
      if (require_minimum_amount(a1, 8uLL, "PKZip archive extra data", a3))
      {
        return 0xFFFFFFFFLL;
      }

      byte_stream_set_byte_order(*(a1 + 24), 2);
      byte_stream_attach(*(a1 + 24), *(a1 + 48), 8uLL);
      v15 = byte_stream_read_uint32(*(a1 + 24));
      v16 = byte_stream_read_uint32(*(a1 + 24));
      if (byte_stream_exception(*(a1 + 24)))
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2516, "parse_entry_pkzip_archive_extra_data", "Could not parse the PKZip data descriptor");
        return 0xFFFFFFFFLL;
      }

      if (v15 != 134630224)
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2522, "parse_entry_pkzip_archive_extra_data", "Invalid PKZip archive extra signature: %04x");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 48) += 8;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78970);
      if (v16)
      {
        if (!require_minimum_amount(a1, v16, "PKZip extra data", a3))
        {
          v27 = *(a1 + 56) + v16;
          *(a1 + 48) += v16;
          *(a1 + 56) = v27;
          *(a1 + 64) -= v16;
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2543, "parse_entry_pkzip_archive_extra_data", "TODO: parse extra field");
        }
      }

      else
      {
        v12 = a2;
        if (!darc_format_entry_set_type(a2, 9))
        {
          goto LABEL_59;
        }

        capture_error(v57, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2554, "parse_entry_pkzip_archive_extra_data", "Could not set entry type");
      }

      return 0xFFFFFFFFLL;
    }

    if (uint32 == 134695760 || uint32 == 808471376)
    {
      break;
    }

LABEL_21:
    if ((~uint32 & 0x3000000) != 0)
    {
      uint32 = 0;
      if (*(a1 + 91) & 1) != 0 || (*(a1 + 90))
      {
        break;
      }

      ++*(a1 + 48);
      v11 = vaddq_s64(*(a1 + 56), xmmword_241C78990);
      *(a1 + 56) = v11;
      v10 = v11.i64[0];
      if (!v11.i64[1])
      {
        v22 = a3;
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2080, "parse_entry_pkzip", "Could not find a PKZip signature");
        *(a1 + 80) = 1;
        goto LABEL_58;
      }
    }

    else
    {
      *(a1 + 48) += 2;
      v9 = vaddq_s64(*(a1 + 56), xmmword_241C789A0);
      *(a1 + 56) = v9;
      v10 = v9.i64[0];
    }

    v6 = v10;
    if (require_minimum_amount(a1, 4uLL, "PKZip signature", a3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v12 = a2;
  v22 = v57;
  if (parse_entry_pkzip_data_descriptor(a1, a2, uint32, v57))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_59:
  result = darc_format_entry_set_range(v12, v6, *(a1 + 56) - v6);
  if (!result)
  {
    return result;
  }

  capture_error(v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2109, "parse_entry_pkzip", "Could not set entry range\n");
  return 0xFFFFFFFFLL;
}

size_t data_archive_decoder_read_data(uint64_t a1, void *__dst, size_t a3, void *a4)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 648, "data_archive_decoder_read_data", "Invalid decoder");
    return -1;
  }

  if (!__dst)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 654, "data_archive_decoder_read_data", "Invalid read buffer");
    return -1;
  }

  if (!a3)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 660, "data_archive_decoder_read_data", "Invalid bytes to read");
    return -1;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    if (!populate_read_buffer(a1, *(a1 + 32), a4))
    {
      v8 = *(a1 + 64);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_7;
    }

    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 673, "data_archive_decoder_read_data", "Could not populate the read buffer");
    return -1;
  }

LABEL_7:
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  platform_memcpy(*(a1 + 8), __dst, *(a1 + 48), v9);
  v10 = *(a1 + 56) + v9;
  *(a1 + 48) += v9;
  *(a1 + 56) = v10;
  *(a1 + 64) -= v9;
  return v9;
}

uint64_t data_archive_decoder_rewind_data(uint64_t a1, void *__s2, size_t __n, void *a4)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 710, "data_archive_decoder_rewind_data", "Invalid decoder");
    return 0xFFFFFFFFLL;
  }

  if (!__s2)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 716, "data_archive_decoder_rewind_data", "Invalid rewind buffer");
    return 0xFFFFFFFFLL;
  }

  if (!__n)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 722, "data_archive_decoder_rewind_data", "Invalid bytes to rewind");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 56);
  v8 = (*(a1 + 48) - __n);
  v9 = *(a1 + 64);
  result = platform_memcmp(*(a1 + 8), v8, __s2, __n);
  if (result)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 732, "data_archive_decoder_rewind_data", "Bytes don't match");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = v8;
  *(a1 + 56) = v7 - __n;
  *(a1 + 64) = v9 + __n;
  return result;
}

uint64_t require_minimum_amount(uint64_t a1, size_t a2, uint64_t a3, void *a4)
{
  if (populate_read_buffer(a1, a2, a4))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4001, "require_minimum_amount", "Could not populate read buffer for %s");
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 64) < a2)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4007, "require_minimum_amount", "Not enough data remaining (%ld) for %s (%ld)");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t parse_entry_posix_ustar_extended_metadata(uint64_t a1, uint64_t a2, void *a3)
{
  if (!require_minimum_amount(a1, 0x200uLL, "POSIX ustar extended metadata", a3))
  {
    v6 = platform_strnlen(*(a1 + 8), *(a1 + 48), 0x200uLL);
    if (v6 < 0x201)
    {
      if (v6 == a2)
      {
        printf("DALLAS: string_length = %lu\n", a2);
        result = 0;
        *(a1 + 48) += 512;
        *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
        return result;
      }

      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1607, "parse_entry_posix_ustar_extended_metadata", "POSIX ustar extended metadata string length %lu does not match expected size %lu");
    }

    else
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1601, "parse_entry_posix_ustar_extended_metadata", "POSIX ustar extended metadata string length %lu is larger than TAR record size %lu");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t parse_entry_pkzip_data_descriptor(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  v8 = a3 == 134695760 || a3 == 808471376;
  v9 = *(a1 + 91);
  v10 = 4;
  if (v8)
  {
    v10 = 8;
  }

  v11 = v10 + 8;
  v12 = v10 | 0x10;
  if (*(a1 + 91))
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (require_minimum_amount(a1, v13, "PKZip data descriptor", a4))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
  if (!v14)
  {
    v18 = __error();
    v19 = strerror(*v18);
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2409, "parse_entry_pkzip_data_descriptor", "Could not allocate %ld bytes for PKZip data descriptor: %s", 24, v19);
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  byte_stream_set_byte_order(*(a1 + 24), 2);
  byte_stream_attach(*(a1 + 24), *(a1 + 48), v13);
  *v15 = 134695760;
  if (a3 == 808471376 || a3 == 134695760)
  {
    *v15 = byte_stream_read_uint32(*(a1 + 24));
  }

  v15[1] = byte_stream_read_uint32(*(a1 + 24));
  v16 = *(a1 + 24);
  if (v9)
  {
    *(v15 + 1) = byte_stream_read_uint64(v16);
    uint64 = byte_stream_read_uint64(*(a1 + 24));
  }

  else
  {
    *(v15 + 1) = byte_stream_read_uint32(v16);
    uint64 = byte_stream_read_uint32(*(a1 + 24));
  }

  *(v15 + 2) = uint64;
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2438, "parse_entry_pkzip_data_descriptor", "Could not parse the PKZip data descriptor");
LABEL_24:
    free(v15);
    return 0xFFFFFFFFLL;
  }

  if (*v15 != 134695760)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2445, "parse_entry_pkzip_data_descriptor", "Invalid PKZip data descriptor signature: %04x");
    goto LABEL_24;
  }

  v20 = *(a1 + 56) + v13;
  *(a1 + 48) += v13;
  *(a1 + 56) = v20;
  *(a1 + 64) -= v13;
  if (darc_format_entry_set_type(a2, 7))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2459, "parse_entry_pkzip_data_descriptor", "Could not set entry type");
    goto LABEL_24;
  }

  if (darc_format_entry_set_attribute(a2, "pkzip data descriptor", v15, 0x18uLL))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2471, "parse_entry_pkzip_data_descriptor", "Could not set PKZip data descriptor attribute");
    goto LABEL_24;
  }

  *(a1 + 90) = 0;
  free(v15);
  return 0;
}

uint64_t parse_entry_pkzip_extra_field(uint64_t *a1, uint64_t a2, size_t a3, int a4, void *a5)
{
  if (require_minimum_amount(a1, a3, "PKZip extra field", a5))
  {
    return 0xFFFFFFFFLL;
  }

  byte_stream_attach(a1[3], a1[6], a3);
  if (!a3)
  {
LABEL_78:
    result = byte_stream_remaining(a1[3]);
    if (result)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3394, "parse_entry_pkzip_extra_field", "%ld bytes remaining after parsing %s extra field");
      return 0xFFFFFFFFLL;
    }

    v60 = a1[7] + a3;
    a1[6] += a3;
    a1[7] = v60;
    a1[8] -= a3;
    return result;
  }

  v10 = 0;
  while (1)
  {
    uint16 = byte_stream_read_uint16(a1[3]);
    v12 = byte_stream_read_uint16(a1[3]);
    if (byte_stream_exception(a1[3]))
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3268, "parse_entry_pkzip_extra_field", "Exceed byte stream when parsing extra field", v61);
      return 0xFFFFFFFFLL;
    }

    v13 = v10 + 4;
    if (uint16 > 21588)
    {
      if (uint16 != 21589)
      {
        if (uint16 != 22613)
        {
          if (uint16 != 30837)
          {
            goto LABEL_82;
          }

          v14 = a1[6];
          v16 = byte_stream_new(a1[1], 0);
          if (!v15)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3801, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Could not create extra byte stream", v16);
            goto LABEL_91;
          }

          v17 = v15;
          v18 = v12;
          byte_stream_attach(v15, v14 + v13, v12);
          DWORD2(v63) = 0;
          *&v63 = 0;
          LOBYTE(v63) = byte_stream_read_uint8(v17);
          uint8 = byte_stream_read_uint8(v17);
          v20 = uint8;
          if (uint8 == 4)
          {
            DWORD1(v63) = byte_stream_read_uint32(v17);
          }

          else
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3858, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Unrecognized uid size: %d", uint8);
            byte_stream_advance(v17, v20);
          }

          if (byte_stream_read_uint8(v17) == 4)
          {
            DWORD2(v63) = byte_stream_read_uint32(v17);
          }

          else
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3869, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Unrecognized uid size: %d", v20);
            byte_stream_advance(v17, v20);
          }

          if (byte_stream_exception(v17))
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3875, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Could not parse the PKZip Info-ZIP UNIX v3", v47);
            goto LABEL_91;
          }

          if (darc_format_entry_set_attribute(a2, "pkzip extra field InfoZIP UNIX v3", &v63, 0xCuLL))
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3886, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Could not set ctime", v48);
LABEL_91:
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3349, "parse_entry_pkzip_extra_field", "Could not parse extended timestamp", v61);
            return 0xFFFFFFFFLL;
          }

          goto LABEL_72;
        }

        v28 = a1[6];
        v30 = byte_stream_new(a1[1], 0);
        if (!v29)
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3721, "parse_entry_pkzip_extra_field_infozip_unix_v1", "Could not create extra byte stream", v30);
          goto LABEL_94;
        }

        v17 = v29;
        v18 = v12;
        byte_stream_attach(v29, v28 + v13, v12);
        v64 = 0uLL;
        *&v63 = byte_stream_read_uint32(v17);
        *(&v63 + 1) = byte_stream_read_uint32(v17);
        if (v12 >= 0xA)
        {
          LOBYTE(v64) = 1;
          DWORD1(v64) = byte_stream_read_uint16(v17);
          if (v12 == 12)
          {
            BYTE8(v64) = 1;
            HIDWORD(v64) = byte_stream_read_uint16(v17);
          }
        }

        if (byte_stream_exception(v17))
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3769, "parse_entry_pkzip_extra_field_infozip_unix_v1", "Could not parse the PKZip Info-ZIP extra block for UNIX", v31);
          goto LABEL_94;
        }

        if (darc_format_entry_set_attribute(a2, "pkzip extra field InfoZIP UNIX v1", &v63, 0x20uLL))
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3780, "parse_entry_pkzip_extra_field_infozip_unix_v1", "Could not set ctime", v32);
LABEL_94:
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3329, "parse_entry_pkzip_extra_field", "Could not parse extended timestamp", v61);
          return 0xFFFFFFFFLL;
        }

LABEL_72:
        byte_stream_free(v17);
        goto LABEL_73;
      }

      v40 = a1[6];
      v42 = byte_stream_new(a1[1], 0);
      if (!v41)
      {
        capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3567, "parse_entry_pkzip_extra_field_extended_timestamp", "Could not create extra byte stream", v42);
        goto LABEL_103;
      }

      v17 = v41;
      v18 = v12;
      byte_stream_attach(v41, v40 + v13, v12);
      v43 = byte_stream_read_uint8(v17);
      v44 = v43;
      if (!a4)
      {
        v63 = 0uLL;
        v55 = v12;
        *&v64 = 0;
        if (v12 >= 4)
        {
          v55 = v12;
          if (v43)
          {
            *&v63 = byte_stream_read_uint32(v17);
            v55 = v12 - 4;
          }
        }

        if ((v44 & 2) != 0)
        {
          v56 = v55 - 4;
          if (v55 >= 4)
          {
            *(&v63 + 1) = byte_stream_read_uint32(v17);
            v55 = v56;
          }
        }

        if ((v44 & 4) != 0 && v55 >= 4)
        {
          *&v64 = byte_stream_read_uint32(v17);
        }

        if (byte_stream_exception(v17))
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3688, "parse_entry_pkzip_extra_field_extended_timestamp", "Could not parse the PKZip extended-timestamp extra block", v57);
        }

        else
        {
          if (!darc_format_entry_set_attribute(a2, "pkzip extra field extended timestamp", &v63, 0x18uLL))
          {
            goto LABEL_72;
          }

          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3699, "parse_entry_pkzip_extra_field_extended_timestamp", "Could not set timestamp", v58);
        }

        goto LABEL_103;
      }

      v63 = 0uLL;
      *&v64 = 0;
      if (v43)
      {
        *&v63 = byte_stream_read_uint32(v17);
        if ((v44 & 2) == 0)
        {
LABEL_34:
          if ((v44 & 4) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if ((v43 & 2) == 0)
      {
        goto LABEL_34;
      }

      *(&v63 + 1) = byte_stream_read_uint32(v17);
      if ((v44 & 4) == 0)
      {
LABEL_36:
        if (byte_stream_exception(v17))
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3625, "parse_entry_pkzip_extra_field_extended_timestamp", "Could not parse the PKZip extended-timestamp extra block", v45);
        }

        else
        {
          if (!darc_format_entry_set_attribute(a2, "pkzip extra field extended timestamp", &v63, 0x18uLL))
          {
            goto LABEL_72;
          }

          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3636, "parse_entry_pkzip_extra_field_extended_timestamp", "Could not set extended timestamp", v46);
        }

LABEL_103:
        capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3309, "parse_entry_pkzip_extra_field", "Could not parse extended timestamp", v61);
        return 0xFFFFFFFFLL;
      }

LABEL_35:
      *&v64 = byte_stream_read_uint32(v17);
      goto LABEL_36;
    }

    if (uint16 != 1)
    {
      break;
    }

    v33 = a1[6];
    v35 = byte_stream_new(a1[1], 0);
    if (!v34)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3416, "parse_entry_pkzip_extra_field_zip64", "Could not create extra byte stream", v35);
      goto LABEL_100;
    }

    v36 = v34;
    v18 = v12;
    byte_stream_attach(v34, v33 + v13, v12);
    if (a4)
    {
      v37 = "pkzip local header";
      if (darc_format_entry_get_attribute(a2, "pkzip local header", 0) != 32)
      {
        capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3465, "parse_entry_pkzip_extra_field_zip64", "Could not extract PKZip local header from entry", v38);
        goto LABEL_100;
      }

      v39 = 0uLL;
    }

    else
    {
      v37 = "pkzip central directory header";
      if (darc_format_entry_get_attribute(a2, "pkzip central directory header", 0) != 48)
      {
        capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3483, "parse_entry_pkzip_extra_field_zip64", "Could not extract PKZip central directory header from entry", v49);
        goto LABEL_100;
      }

      v39 = 0uLL;
      v65 = 0u;
    }

    v63 = v39;
    v64 = v39;
    darc_format_entry_get_attribute(a2, v37, &v63);
    v51 = DWORD1(v64);
    v50 = DWORD2(v64);
    *&v65 = 0;
    v63 = 0u;
    v64 = 0u;
    if (v50 == -1)
    {
      LOBYTE(v63) = 1;
      *(&v63 + 1) = byte_stream_read_uint64(v36);
    }

    if (v51 == -1)
    {
      BYTE1(v63) = 1;
      *&v64 = byte_stream_read_uint64(v36);
    }

    if ((a4 & 1) == 0)
    {
      if (byte_stream_remaining(v36) >= 8)
      {
        *(&v64 + 1) = byte_stream_read_uint64(v36);
      }

      if (byte_stream_remaining(v36) >= 4)
      {
        LODWORD(v65) = byte_stream_read_uint32(v36);
      }
    }

    if (byte_stream_exception(v36))
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3523, "parse_entry_pkzip_extra_field_zip64", "Could not parse the PKZip ZIP64 extra block", v52);
      goto LABEL_100;
    }

    if (darc_format_entry_set_attribute(a2, "pkzip extra field ZIP64", &v63, 0x28uLL))
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3534, "parse_entry_pkzip_extra_field_zip64", "Could not set ZIP64", v53);
      goto LABEL_100;
    }

    byte_stream_free(v36);
    if (darc_format_entry_set_size(a2, *(&v63 + 1)))
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3547, "parse_entry_pkzip_extra_field_zip64", "Could not reset pkzip entry size", v54);
LABEL_100:
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3288, "parse_entry_pkzip_extra_field", "Could not parse extended timestamp", v61);
      return 0xFFFFFFFFLL;
    }

LABEL_73:
    byte_stream_advance(a1[3], v18);
    v10 = v13 + v18;
    if (v10 == a3)
    {
      goto LABEL_78;
    }
  }

  if (uint16 != 10)
  {
LABEL_82:
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3378, "parse_entry_pkzip_extra_field", "Unrecognized extra field header ID: 0x%04x %d %d", uint16, uint16, v12);
    byte_stream_advance(a1[3], v12);
    return 0xFFFFFFFFLL;
  }

  v21 = a1[6];
  v23 = byte_stream_new(a1[1], 0);
  if (!v22)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3907, "parse_entry_pkzip_extra_field_ntfs", "Could not create extra byte stream", v23, v61);
    goto LABEL_95;
  }

  v17 = v22;
  v18 = v12;
  byte_stream_attach(v22, v21 + v13, v12);
  LODWORD(v63) = byte_stream_read_uint32(v17);
  v24 = byte_stream_read_uint16(v17);
  WORD2(v63) = v24;
  WORD3(v63) = byte_stream_read_uint16(v17);
  if (v24 != 1)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3960, "parse_entry_pkzip_extra_field_ntfs", "Unknown NTFS tag value: %u", v25);
    goto LABEL_95;
  }

  *(&v63 + 1) = byte_stream_read_uint64(v17);
  *&v64 = byte_stream_read_uint64(v17);
  *(&v64 + 1) = byte_stream_read_uint64(v17);
  if (!byte_stream_exception(v17))
  {
    if (darc_format_entry_set_attribute(a2, "pkzip extra field NTFS", &v63, 0x20uLL))
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3981, "parse_entry_pkzip_extra_field_ntfs", "Could not set NTFS extra field", v27, v61);
      goto LABEL_95;
    }

    goto LABEL_72;
  }

  capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3970, "parse_entry_pkzip_extra_field_ntfs", "Could not parse the PKZip NTFS extra field", v26, v61);
LABEL_95:
  capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3369, "parse_entry_pkzip_extra_field", "Could not parse NFTS extra field", v62);
  return 0xFFFFFFFFLL;
}

void *data_source_new(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  result = platform_calloc(a1, 1uLL, 0x48uLL);
  if (result)
  {
    *result = 1936876321;
    result[1] = a1;
    *(result + 4) = -1;
    *(result + 16) = 560165491;
  }

  return result;
}

void data_source_free(_DWORD *__b)
{
  if (__b && *__b == 1936876321 && __b[16] == 560165491)
  {
    v2 = *(__b + 1);
    platform_memset(v2, __b, 0, 0x48uLL);

    platform_free(v2, __b);
  }
}

_DWORD *data_source_set_fd(_DWORD *result, int a2)
{
  if (result && *result == 1936876321 && result[16] == 560165491)
  {
    result[4] = a2;
  }

  return result;
}

uint64_t data_source_set_handler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && *result == 1936876321 && *(result + 64) == 560165491)
  {
    *(result + 48) = a2;
    *(result + 56) = a3;
  }

  return result;
}

ssize_t data_source_read(uint64_t a1, void *a2, size_t a3)
{
  if (!a1 || *a1 != 1936876321 || *(a1 + 64) != 560165491)
  {
    return -1;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 16);

    return v5(v6, v7, a2, a3);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (*(a1 + 32) - v11 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *(a1 + 32) - v11;
    }

    if (v9)
    {
      platform_memcpy(*(a1 + 8), a2, (v10 + v11), v9);
      *(a1 + 40) += v9;
    }

    return v9;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);

  return platform_read(v12, v13, a2, a3);
}

_DWORD *data_archive_new(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  result = platform_toolbox_new(a1);
  if (result)
  {
    v2 = result;
    result = platform_calloc(result, 1uLL, 0xD0uLL);
    if (result)
    {
      *result = 1684107875;
      *(result + 1) = v2;
      result[5] = -1;
      result[50] = 1668440420;
    }

    else
    {
      platform_toolbox_free(v2);
      return 0;
    }
  }

  return result;
}

void data_archive_free(_DWORD *__b)
{
  if (__b && *__b == 1684107875 && __b[50] == 1668440420)
  {
    v2 = *(__b + 20);
    if (v2)
    {
      platform_free(*(__b + 1), v2);
    }

    v3 = *(__b + 15);
    if (v3)
    {
      inflateEnd(v3);
      platform_free(*(__b + 1), *(__b + 15));
    }

    v4 = *(__b + 12);
    if (v4)
    {
      platform_free(*(__b + 1), v4);
    }

    v5 = *(__b + 5);
    if (v5)
    {
      data_archive_decoder_free(v5);
    }

    v6 = *(__b + 4);
    if (v6)
    {
      data_read_stream_free(v6);
    }

    v7 = *(__b + 3);
    if (v7 && *(__b + 16) == 1)
    {
      data_source_free(v7);
    }

    v8 = __b[5];
    if (v8 != -1 && *(__b + 17) == 1)
    {
      platform_close(*(__b + 1), v8);
    }

    v9 = *(__b + 1);
    platform_memset(v9, __b, 0, 0xD0uLL);
    platform_free(v9, __b);

    platform_toolbox_free(v9);
  }
}

uint64_t data_archive_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 264, "data_archive_set_passphrase_callback", "Invalid data archive");
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 270, "data_archive_set_passphrase_callback", "Invalid passphrase callback");
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  return v4;
}

uint64_t data_archive_open_source(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 292, "data_archive_open_source", "Invalid data archive");
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 298, "data_archive_open_source", "Invalid data source");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = a2;
  stream_new = data_read_stream_new(*(a1 + 8), 0);
  *(a1 + 32) = stream_new;
  if (!stream_new)
  {
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 310, "data_archive_open_source", "Could not create data read stream");
    return 0xFFFFFFFFLL;
  }

  if (data_read_stream_set_source(stream_new, *(a1 + 24)))
  {
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 323, "data_archive_open_source", "Could not set source for read stream: %d");
    return 0xFFFFFFFFLL;
  }

  v7 = data_archive_decoder_new(*(a1 + 8), 0);
  *(a1 + 40) = v7;
  if (!v7)
  {
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 336, "data_archive_open_source", "Could not create data decoder");
    return 0xFFFFFFFFLL;
  }

  v8 = data_archive_decoder_set_stream(v7, *(a1 + 32), a3);
  v9 = *(a1 + 40);
  if (v8)
  {
    data_archive_decoder_free(v9);
    *(a1 + 40) = 0;
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 352, "data_archive_open_source", "Could not set read stream for decoder: %d");
    return 0xFFFFFFFFLL;
  }

  type = data_archive_decoder_get_type(v9);
  *(a1 + 48) = type;
  if (!type)
  {
    data_archive_decoder_free(*(a1 + 40));
    *(a1 + 40) = 0;
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 368, "data_archive_open_source", "Unknown archive format");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t data_archive_open_fd(uint64_t a1, int a2, void *a3)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 387, "data_archive_open_fd", "Invalid data archive");
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 393, "data_archive_open_fd", "Invalid file descriptor");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = 1;
  v6 = data_source_new(*(a1 + 8), 0);
  if (!v6)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 407, "data_archive_open_fd", "Could not create data source");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  data_source_set_fd(v6, a2);

  return data_archive_open_source(a1, v7, a3);
}

uint64_t data_archive_open(uint64_t a1, char *__s, void *a3)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 428, "data_archive_open", "Invalid data archive");
    return 0xFFFFFFFFLL;
  }

  if (!__s)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 434, "data_archive_open", "Invalid path");
    return 0xFFFFFFFFLL;
  }

  if (platform_strlen(*(a1 + 8), __s) > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = open(__s, 0);
  if (v6 == -1)
  {
    v8 = __error();
    strerror(*v8);
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 447, "data_archive_open", "Could not open %s: %s");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 17) = 1;

  return data_archive_open_fd(a1, v6, a3);
}

uint64_t data_archive_open_custom(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 517, "data_archive_open_custom", "Invalid data archive");
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 523, "data_archive_open_custom", "Invalid read handler");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = 1;
  v8 = data_source_new(*(a1 + 8), 0);
  if (!v8)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 537, "data_archive_open_custom", "Could not create data source");
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  data_source_set_handler(v8, a2, a3);

  return data_archive_open_source(a1, v9, a4);
}

void *data_archive_read_entry(uint64_t a1, void *a2)
{
  if (a1 && *a1 == 1684107875 && *(a1 + 200) == 1668440420)
  {
    if (*(a1 + 48) == 2)
    {
      v4 = *(a1 + 152);
      if (v4 >= 1)
      {
        v5 = *(a1 + 160);
        if (!v5)
        {
          v5 = platform_malloc(*(a1 + 8), 0x200uLL);
          *(a1 + 160) = v5;
          if (!v5)
          {
            v16 = __error();
            strerror(*v16);
            capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 943, "consume_padding", "Could not allocate padding buffer: %s");
            goto LABEL_43;
          }
        }

        if (v4 >= 0x201)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 950, "consume_padding", "padding amount %lld is larger than buffer %lld");
LABEL_43:
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 574, "data_archive_read_entry", "Could not consume padding %llu");
          return 0;
        }

        if (data_archive_decoder_read_data(*(a1 + 40), v5, v4, 0) == -1)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 957, "consume_padding", "Could not consume %lld bytes of padding");
          goto LABEL_43;
        }

        *(a1 + 152) = 0;
      }
    }

    entry = data_archive_decoder_read_entry(*(a1 + 40), a2);
    if (entry)
    {
      v9 = entry;
      do
      {
        v10 = *(a1 + 184);
        if (v10 && v10(a1, v9, *(a1 + 192), a2))
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 605, "data_archive_read_entry", "Format entry callback failed");
          return 0;
        }

        v11 = data_archive_entry_new(*(a1 + 8), 0);
        v6 = v11;
        if (!v11)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 613, "data_archive_read_entry", "Could not create empty archive entry");
          darc_format_entry_free(v9);
          return v6;
        }

        if (data_archive_entry_set_format_entry(v11, *(a1 + 48), *(a1 + 144), v9, a2))
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 627, "data_archive_read_entry", "Could not set format entry");
          data_archive_entry_free(v6);
          darc_format_entry_free(v9);
          return 0;
        }

        *(a1 + 144) = darc_format_entry_get_type(v9);
        v12 = *(a1 + 48);
        if (v12 == 2)
        {
          v13 = data_archive_entry_size(v6);
          v14 = 512 - v13;
          if (v13 >= 513)
          {
            v14 = v13 & 0x1FF;
          }

          *(a1 + 152) = v14;
          v12 = *(a1 + 48);
        }

        if (v12 == 9)
        {
          *(a1 + 148) = (data_archive_entry_crc32(v6) << 16) & 0xFF000000;
          *(a1 + 168) = 0;
        }

        darc_format_entry_free(v9);
        *(a1 + 60) = 0;
        *(a1 + 52) = 0;
        *(a1 + 73) = 0;
        *(a1 + 68) = 0;
        type = data_archive_entry_get_type(v6);
        if (type <= 2)
        {
          switch(type)
          {
            case 0:
              capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 698, "data_archive_read_entry", "Unknown entry type");
              data_archive_entry_free(v6);
              return 0;
            case 1:
              goto LABEL_39;
            case 2:
              *(a1 + 52) = data_archive_entry_get_data_type(v6);
              *(a1 + 56) = data_archive_entry_compressed_size(v6);
              *(a1 + 64) = data_archive_entry_size(v6);
              return v6;
          }
        }

        else if (type == 4)
        {
          *(a1 + 52) = 1;
          data_archive_entry_free(v6);
        }

        else if (type == 3)
        {
LABEL_39:
          *(a1 + 52) = 1;
          return v6;
        }

        v9 = data_archive_decoder_read_entry(*(a1 + 40), a2);
      }

      while (v9);
    }

    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 596, "data_archive_read_entry", "Could not read next decoder entry");
  }

  else
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 557, "data_archive_read_entry", "Invalid data archive");
  }

  return 0;
}

size_t data_archive_read_data(uint64_t a1, char *a2, size_t a3, void *a4)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 771, "data_archive_read_data", "Invalid data archive");
    return -1;
  }

  if (!a2)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 777, "data_archive_read_data", "Invalid read buffer");
    return -1;
  }

  if (!a3)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 783, "data_archive_read_data", "Invalid read size");
    return -1;
  }

  v8 = *(a1 + 52);
  v9 = -1;
  if (v8 > 3)
  {
    if (v8 <= 5)
    {
      if (v8 != 4)
      {

        return read_streamed_data(a1, a2, a3, a4);
      }

      if ((*(a1 + 168) & 1) == 0 && init_pkzip_cipher(a1, a4))
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1206, "decrypt_data", "Could not initialize the PKZip cipher");
        return v9;
      }

      if (*(a1 + 64) == *(a1 + 72))
      {
        v9 = 0;
LABEL_50:
        *(a1 + 168) = 0;
        return v9;
      }

      data_direct = read_data_direct(a1, a2, a3, a4);
      if (data_direct <= 0)
      {
        v21 = __error();
        strerror(*v21);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1222, "decrypt_data", "Could not read ciphertext: %s");
        return v9;
      }

      v9 = data_direct;
      pkzip_crypto_decrypt_buffer((a1 + 172), a2, data_direct);
      if (*(a1 + 64) == *(a1 + 72))
      {
        goto LABEL_50;
      }

      return v9;
    }

    if (v8 != 6)
    {
      if (v8 != 7)
      {
        return v9;
      }

      if ((*(a1 + 80) & 1) == 0)
      {
        if ((*(a1 + 168) & 1) == 0 && init_pkzip_cipher(a1, a4))
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1557, "decrypt_streamed_data", "Could not initialize the PKZip cipher");
          return v9;
        }

        streamed_data = read_streamed_data(a1, a2, a3, a4);
        if ((streamed_data & 0x8000000000000000) != 0)
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1570, "decrypt_streamed_data", "Could not read encrypted data");
          return v9;
        }

        v9 = streamed_data;
        if (!streamed_data)
        {
          goto LABEL_50;
        }

        pkzip_crypto_decrypt_buffer((a1 + 172), a2, streamed_data);
        return v9;
      }

      return 0;
    }

    if (*(a1 + 80))
    {
      return 0;
    }

    if (!*(a1 + 96))
    {
      *(a1 + 88) = 0x20000;
      v15 = platform_valloc(*(a1 + 8), 0x20000uLL);
      *(a1 + 96) = v15;
      if (!v15)
      {
        v39 = __error();
        strerror(*v39);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1378, "decompress_streamed_data", "Could not allocate %ld for read buffer: %s");
        return v9;
      }

      platform_memset(*(a1 + 8), v15, 0, *(a1 + 88));
      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 120))
    {
      v19 = platform_calloc(*(a1 + 8), 1uLL, 0x70uLL);
      *(a1 + 120) = v19;
      if (!v19)
      {
        v41 = __error();
        strerror(*v41);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1394, "decompress_streamed_data", "Could not allocate zlib stream: %s");
        return v9;
      }

      if (inflateInit2_(v19, -15, "1.2.12", 112))
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1401, "decompress_streamed_data", "Could not inflateInit2: %d");
        return v9;
      }
    }

    v16 = *(a1 + 112);
    if (v16)
    {
      v17 = *(a1 + 104);
LABEL_67:
      v23 = 0;
      v24 = 0;
      v25 = *(a1 + 120);
      do
      {
        v25->next_in = &v17[v24];
        v25->avail_in = v16 - v24;
        v25->next_out = a2;
        v25->avail_out = a3;
        v26 = inflate(v25, 0);
        if (v26)
        {
          if (v26 != 1)
          {
            capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1476, "decompress_streamed_data", "Could not inflate: %d");
            return -1;
          }

          v23 = 1;
          *(a1 + 80) = 1;
        }

        v27 = *(a1 + 112);
        v25 = *(a1 + 120);
        v28 = v16 - v24 - v25->avail_in;
        v17 = (*(a1 + 104) + v28);
        *(a1 + 104) = v17;
        *(a1 + 112) = v27 - v28;
        v9 = a3 - v25->avail_out;
        if (v23)
        {
          break;
        }

        v24 += v28;
      }

      while (!v9 && v16 != v24);
      if ((v23 & 1) == 0)
      {
        return v9;
      }

      if (v27 != v28)
      {
        if (data_archive_decoder_rewind_data(*(a1 + 40), v17, v27 - v28, 0))
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1505, "decompress_streamed_data", "Could not rewind remaining data: %d");
          return -1;
        }

        *(a1 + 104) = *(a1 + 96);
        *(a1 + 112) = 0;
        v25 = *(a1 + 120);
      }

      if (inflateEnd(v25))
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1520, "decompress_streamed_data", "Could not inflateEnd: %d");
        return -1;
      }

LABEL_118:
      platform_free(*(a1 + 8), *(a1 + 120));
      *(a1 + 120) = 0;
      return v9;
    }

    data = data_archive_decoder_read_data(*(a1 + 40), *(a1 + 96), *(a1 + 88), 0);
    if (data)
    {
      v16 = data;
      if (data != -1 || *__error() == 35)
      {
        v17 = *(a1 + 96);
        *(a1 + 104) = v17;
        *(a1 + 112) = v16;
        goto LABEL_67;
      }

      capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1420, "decompress_streamed_data", "Could not read %ld bytes from decoder");
    }

    else
    {
      capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1427, "decompress_streamed_data", "End of decoder");
    }

    return -1;
  }

  if (v8 == 1)
  {
    return 0;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      return v9;
    }

    if (*(a1 + 80))
    {
      return 0;
    }

    if (!*(a1 + 96))
    {
      *(a1 + 88) = 0x20000;
      v11 = platform_valloc(*(a1 + 8), 0x20000uLL);
      *(a1 + 96) = v11;
      if (!v11)
      {
        v40 = __error();
        strerror(*v40);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1027, "decompress_data", "Could not allocate %ld for read buffer: %s");
        return v9;
      }

      platform_memset(*(a1 + 8), v11, 0, *(a1 + 88));
      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 120))
    {
      v20 = platform_calloc(*(a1 + 8), 1uLL, 0x70uLL);
      *(a1 + 120) = v20;
      if (!v20)
      {
        v42 = __error();
        strerror(*v42);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1043, "decompress_data", "Could not allocate zlib stream: %s");
        return v9;
      }

      if (inflateInit2_(v20, -15, "1.2.12", 112))
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1050, "decompress_data", "Could not inflateInit2: %d");
        return v9;
      }
    }

    v12 = *(a1 + 112);
    if (v12)
    {
      v13 = *(a1 + 104);
    }

    else
    {
      if (*(a1 + 88) >= *(a1 + 56) - *(a1 + 72))
      {
        v30 = *(a1 + 56) - *(a1 + 72);
      }

      else
      {
        v30 = *(a1 + 88);
      }

      v31 = data_archive_decoder_read_data(*(a1 + 40), *(a1 + 96), v30, 0);
      if (!v31)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1082, "decompress_data", "End of decoder");
        return -1;
      }

      v12 = v31;
      if (v31 == -1 && *__error() != 35)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1075, "decompress_data", "Could not read %ld bytes from decoder");
        return -1;
      }

      v13 = *(a1 + 96);
      *(a1 + 104) = v13;
      *(a1 + 112) = v12;
      *(a1 + 72) += v12;
    }

    v32 = 0;
    v33 = 0;
    v34 = *(a1 + 120);
    do
    {
      v34->next_in = &v13[v33];
      v34->avail_in = v12 - v33;
      v34->next_out = a2;
      v34->avail_out = a3;
      v35 = inflate(v34, 0);
      if (v35)
      {
        if (v35 != 1)
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1134, "decompress_data", "Could not inflate: %d");
          return -1;
        }

        v32 = 1;
        *(a1 + 80) = 1;
      }

      v36 = *(a1 + 112);
      v34 = *(a1 + 120);
      v37 = v12 - v33 - v34->avail_in;
      v13 = (*(a1 + 104) + v37);
      *(a1 + 104) = v13;
      *(a1 + 112) = v36 - v37;
      v9 = a3 - v34->avail_out;
      if (v32)
      {
        break;
      }

      v33 += v37;
    }

    while (!v9 && v12 != v33);
    if ((v32 & 1) == 0)
    {
      return v9;
    }

    if (v36 != v37)
    {
      if (data_archive_decoder_rewind_data(*(a1 + 40), v13, v36 - v37, 0))
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1163, "decompress_data", "Could not rewind remaining data: %d");
        return -1;
      }

      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
      v34 = *(a1 + 120);
    }

    if (inflateEnd(v34))
    {
      capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1178, "decompress_data", "Could not inflateEnd: %d");
      return -1;
    }

    goto LABEL_118;
  }

  return read_data_direct(a1, a2, a3, a4);
}

size_t read_data_direct(uint64_t *a1, void *a2, size_t a3, void *a4)
{
  if (a1[8] - a1[9] >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1[8] - a1[9];
  }

  data = data_archive_decoder_read_data(a1[5], a2, v6, 0);
  v8 = data;
  if (data == -1)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 983, "read_data_direct", "Could not read %ld from data decoder", v6);
  }

  else
  {
    a1[9] += data;
  }

  return v8;
}

unint64_t read_streamed_data(uint64_t a1, char *a2, size_t a3, void *a4)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  data = data_archive_decoder_read_data(*(a1 + 40), a2, a3, a4);
  if (!data)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1276, "read_streamed_data", "End of decoder");
    return -1;
  }

  v4 = data;
  if (data == -1 && *__error() != 35)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1269, "read_streamed_data", "Could not read %ld bytes from decoder");
    return -1;
  }

  byte_stream_new(*(a1 + 8), 0);
  if (!v9)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1292, "read_streamed_data", "Could not create byte stream");
    return -1;
  }

  v10 = v9;
  if (v4 < 5)
  {
    byte_stream_free(v9);
    return v4;
  }

  v11 = 0;
  v12 = v4;
  do
  {
    byte_stream_attach(v10, &a2[v11], v12);
    uint32 = byte_stream_read_uint32(v10);
    v12 -= uint32 != 134695760;
    if (uint32 == 134695760)
    {
      break;
    }

    ++v11;
  }

  while (v12 > 4);
  byte_stream_free(v10);
  if (uint32 == 134695760)
  {
    *(a1 + 80) = 1;
    if (!data_archive_decoder_rewind_data(*(a1 + 40), &a2[v11], v12, a4))
    {
      v4 -= v12;
      return v4;
    }

    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1334, "read_streamed_data", "Could not rewind remaining data: %d");
    return -1;
  }

  return v4;
}

uint64_t init_pkzip_cipher(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  v3 = (a1 + 172);
  *(a1 + 180) = 0;
  v4 = *(a1 + 128);
  if (v4)
  {
    v6 = v4(a1, *(a1 + 136), a2);
    if (v6)
    {
      pkzip_crypto_init(v3, v6);
      v7 = 0;
      v8 = __dst;
      do
      {
        data = data_archive_decoder_read_data(*(a1 + 40), v8, 12 - v7, a2);
        if (data <= 0)
        {
          v12 = __error();
          strerror(*v12);
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1635, "init_pkzip_cipher", "Could not read initial ciphertext: %s");
          return 0xFFFFFFFFLL;
        }

        v10 = data;
        pkzip_crypto_decrypt_buffer(v3, v8, data);
        v8 += v10;
        v7 += v10;
      }

      while (v7 != 12);
      if (*(a1 + 151) == __dst[11])
      {
        result = 0;
        *(a1 + 168) = 1;
        return result;
      }

      capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1650, "init_pkzip_cipher", "Decryption passphrase appears to be incorrect");
    }

    else
    {
      capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1615, "init_pkzip_cipher", "Client did not provide passphrase");
    }
  }

  else
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1605, "init_pkzip_cipher", "No passphrase callback");
  }

  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceNew(char *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v175[2] = *MEMORY[0x277D85DE8];
  if (!(a1 | a2))
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 636, "BOMCopierSourceNew", "path and options are NULL");
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x198uLL, 0x10B0040EDB777B7uLL);
  v9 = v8;
  if (!v8)
  {
    v115 = __error();
    BOMCopierErrorCapture(a4, *v115, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 649, "BOMCopierSourceNew", "Could not allocate empty BOMCopierSource");
    return v9;
  }

  v8[3] = a3;
  *(v8 + 8) = geteuid();
  v10 = getegid();
  *(v9 + 36) = v10;
  *(v9 + 40) = -1;
  *(v9 + 112) = 0;
  *(v9 + 64) = 1;
  *(v9 + 240) = 0x4000000;
  *(v9 + 168) = 1;
  v11 = *(v9 + 24);
  if (v11)
  {
    v12 = v10;
    if (os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v9 + 32);
      buf.f_bsize = 67109376;
      buf.f_iosize = v13;
      LOWORD(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 2) = v12;
      _os_log_impl(&dword_241C0E000, v11, OS_LOG_TYPE_DEFAULT, "euid: %u egid: %u", &buf, 0xEu);
    }
  }

  if (!a2)
  {
    goto LABEL_145;
  }

  TypeID = CFBooleanGetTypeID();
  Value = CFDictionaryGetValue(a2, @"useFilesystemCache");
  if (Value)
  {
    v16 = Value;
    if (TypeID != CFGetTypeID(Value))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1600, "parse_copier_source_options", "kBOMCopierSourceOptionUseFilesystemCacheKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 64) = CFEqual(v16, *MEMORY[0x277CBED28]) != 0;
  }

  v17 = CFDictionaryGetValue(a2, @"useEnumerationBom");
  if (v17)
  {
    v18 = v17;
    if (TypeID != CFGetTypeID(v17))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1612, "parse_copier_source_options", "kBOMCopierSourceOptionUseEnumerationBomKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 65) = CFEqual(v18, *MEMORY[0x277CBED28]) != 0;
  }

  v19 = CFDictionaryGetValue(a2, @"applyBomOwnership");
  if (v19)
  {
    v20 = v19;
    if (TypeID != CFGetTypeID(v19))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1624, "parse_copier_source_options", "kBOMCopierSourceOptionApplyBomOwnershipKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 216) = CFEqual(v20, *MEMORY[0x277CBED28]) != 0;
  }

  v21 = CFDictionaryGetValue(a2, @"allowAccessFailures");
  if (v21)
  {
    v22 = v21;
    if (TypeID == CFGetTypeID(v21))
    {
      if (CFEqual(*MEMORY[0x277CBED28], v22) == 1)
      {
        *(v9 + 217) = 1;
      }

      goto LABEL_21;
    }

    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1636, "parse_copier_source_options", "kBOMCopierSourceAllowAccessFailuresKey must be a CFBooleanRef");
LABEL_327:
    BOMCopierSourceFree(v9);
    return 0;
  }

LABEL_21:
  v23 = CFDictionaryGetValue(a2, @"crossDevices");
  if (v23)
  {
    v24 = v23;
    if (TypeID != CFGetTypeID(v23))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1651, "parse_copier_source_options", "kBOMCopierSourceOptionCrossDevicesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 168) = CFEqual(*MEMORY[0x277CBED28], v24) != 0;
  }

  v25 = CFDictionaryGetValue(a2, @"extractLibarchive");
  if (v25)
  {
    v26 = v25;
    if (TypeID != CFGetTypeID(v25))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1663, "parse_copier_source_options", "kBOMCopierSourceOptionExtractLibarchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v26) == 1)
    {
      *(v9 + 112) = 2;
    }
  }

  v27 = CFDictionaryGetValue(a2, @"extractDataArchive");
  if (v27)
  {
    v28 = v27;
    if (TypeID != CFGetTypeID(v27))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1678, "parse_copier_source_options", "kBOMCopierSourceOptionExtractDataArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v28) == 1)
    {
      *(v9 + 112) = 3;
    }
  }

  v29 = CFDictionaryGetValue(a2, @"enforceArchiveEntryPermissions");
  if (v29)
  {
    v30 = v29;
    if (TypeID != CFGetTypeID(v29))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1693, "parse_copier_source_options", "kBOMCopierSourceOptionEnforceArchiveEntryPermissionsKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 272) = CFEqual(*MEMORY[0x277CBED28], v30) != 0;
  }

  v31 = CFDictionaryGetValue(a2, @"extractAppleArchive");
  if (v31)
  {
    v32 = v31;
    if (TypeID != CFGetTypeID(v31))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1705, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v32) == 1)
    {
      *(v9 + 112) = 4;
    }
  }

  v33 = CFNumberGetTypeID();
  v34 = CFDictionaryGetValue(a2, @"inputFD");
  if (v34)
  {
    v35 = v34;
    if (v33 != CFGetTypeID(v34))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1722, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFNumberRef");
      goto LABEL_327;
    }

    buf.f_bsize = -1;
    if (!CFNumberGetValue(v35, kCFNumberSInt32Type, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1730, "parse_copier_source_options", "Could not convert the input file descriptor number to kCFNumberSInt32Type");
      goto LABEL_327;
    }

    *(v9 + 40) = buf.f_bsize;
  }

  v36 = CFReadStreamGetTypeID();
  v37 = CFDictionaryGetValue(a2, @"inputStream");
  if (v37)
  {
    v38 = v37;
    if (v36 != CFGetTypeID(v37))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1744, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFReadStreamRef");
      goto LABEL_327;
    }

    if (CFReadStreamGetStatus(v38) != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1751, "parse_copier_source_options", "CFReadStream is not open");
      goto LABEL_327;
    }

    *(v9 + 48) = v38;
  }

  v39 = CFDictionaryGetValue(a2, @"synthesizeResourceForks");
  if (v39)
  {
    v40 = v39;
    if (TypeID != CFGetTypeID(v39))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1763, "parse_copier_source_options", "kBOMCopierSourceOptionSynthesizeResourceForksKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 66) = CFEqual(*MEMORY[0x277CBED28], v40) != 0;
  }

  v41 = CFDictionaryGetValue(a2, @"synthesizeAppleDoubles");
  if (v41)
  {
    v42 = v41;
    if (TypeID != CFGetTypeID(v41))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1775, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 67) = CFEqual(*MEMORY[0x277CBED28], v42) != 0;
  }

  v43 = CFDictionaryGetValue(a2, @"appleDoublesCaptureResourceAttributes");
  if (v43)
  {
    v44 = v43;
    if (TypeID != CFGetTypeID(v43))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1789, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureResourceAttributesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 68) = CFEqual(*MEMORY[0x277CBED28], v44) != 0;
  }

  v45 = CFDictionaryGetValue(a2, @"appleDoublesCaptureExtendedAttributes");
  if (v45)
  {
    v46 = v45;
    if (TypeID != CFGetTypeID(v45))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1801, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureExtendedAttributesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 69) = CFEqual(*MEMORY[0x277CBED28], v46) != 0;
  }

  v47 = CFDictionaryGetValue(a2, @"appleDoublesCaptureACLs");
  if (v47)
  {
    v48 = v47;
    if (TypeID != CFGetTypeID(v47))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1813, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureACLsKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 70) = CFEqual(*MEMORY[0x277CBED28], v48) != 0;
  }

  v49 = CFDictionaryGetValue(a2, @"deferAppleDoubles");
  if (v49)
  {
    v50 = v49;
    if (TypeID != CFGetTypeID(v49))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1825, "parse_copier_source_options", "kBOMCopierSourceOptionDeferAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 71) = CFEqual(*MEMORY[0x277CBED28], v50) != 0;
  }

  v51 = CFDictionaryGetValue(a2, @"replayAppleDoubles");
  if (v51)
  {
    v52 = v51;
    if (TypeID != CFGetTypeID(v51))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1837, "parse_copier_source_options", "kBOMCopierSourceOptionReplayAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 72) = CFEqual(*MEMORY[0x277CBED28], v52) != 0;
  }

  v53 = CFDictionaryGetValue(a2, @"replaySymlinks");
  if (v53)
  {
    v54 = v53;
    if (TypeID != CFGetTypeID(v53))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1849, "parse_copier_source_options", "kBOMCopierSourceOptionReplaySymlinksKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 91) = CFEqual(*MEMORY[0x277CBED28], v54) != 0;
  }

  v55 = CFDictionaryGetValue(a2, @"replayDirectories");
  if (v55)
  {
    v56 = v55;
    if (TypeID != CFGetTypeID(v55))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1861, "parse_copier_source_options", "kBOMCopierSourceOptionReplayDirectoriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 92) = CFEqual(*MEMORY[0x277CBED28], v56) != 0;
  }

  v57 = CFDictionaryGetValue(a2, @"excludeRootDirectory");
  if (v57)
  {
    v58 = v57;
    if (TypeID != CFGetTypeID(v57))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1873, "parse_copier_source_options", "kBOMCopierSourceOptionExcludeRootDirectoryKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 93) = CFEqual(*MEMORY[0x277CBED28], v58) != 0;
  }

  v59 = CFDictionaryGetValue(a2, @"skipRootDirectory");
  if (v59)
  {
    v60 = v59;
    if (TypeID != CFGetTypeID(v59))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1885, "parse_copier_source_options", "kBOMCopierSourceOptionSkipRootDirectoryKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 94) = CFEqual(*MEMORY[0x277CBED28], v60) != 0;
  }

  v61 = CFDictionaryGetValue(a2, @"sequesterAppleDoubles");
  if (v61)
  {
    v62 = v61;
    if (TypeID != CFGetTypeID(v61))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1897, "parse_copier_source_options", "kBOMCopierSourceOptionSequesterAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 95) = CFEqual(*MEMORY[0x277CBED28], v62) != 0;
  }

  v63 = CFDictionaryGetValue(a2, @"unsequesterAppleDoubles");
  if (v63)
  {
    v64 = v63;
    if (TypeID != CFGetTypeID(v63))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1909, "parse_copier_source_options", "kBOMCopierSourceOptionUnsequesterAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 96) = CFEqual(*MEMORY[0x277CBED28], v64) != 0;
  }

  v65 = CFDictionaryGetValue(a2, @"libarchiveReadBlockSize");
  if (v65)
  {
    v66 = v65;
    if (v33 != CFGetTypeID(v65))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1921, "parse_copier_source_options", "kBOMCopierSourceOptionLibarchiveReadBlockSize must be a CFNumberRef");
      goto LABEL_327;
    }

    *&buf.f_bsize = 0;
    if (!CFNumberGetValue(v66, kCFNumberSInt64Type, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1929, "parse_copier_source_options", "Could not convert the read block size number to kCFNumberSInt64Type");
      goto LABEL_327;
    }

    *(v9 + 240) = *&buf.f_bsize;
  }

  v67 = CFDictionaryGetValue(a2, @"discoverBinaries");
  if (v67)
  {
    v68 = v67;
    if (TypeID != CFGetTypeID(v67))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1941, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverBinaries must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 384) = CFEqual(*MEMORY[0x277CBED28], v68) != 0;
  }

  v69 = CFDictionaryGetValue(a2, @"discoverResourceAttribute");
  if (v69)
  {
    v70 = v69;
    if (TypeID != CFGetTypeID(v69))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1953, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverResourceAttribute must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 385) = CFEqual(*MEMORY[0x277CBED28], v70) != 0;
  }

  v71 = CFDictionaryGetValue(a2, @"discoverExtendedAttributes");
  if (v71)
  {
    v72 = v71;
    if (TypeID != CFGetTypeID(v71))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1965, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverExtendedAttributes must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 386) = CFEqual(*MEMORY[0x277CBED28], v72) != 0;
  }

  v73 = CFDictionaryGetValue(a2, @"discoverCompressionAttributes");
  if (v73)
  {
    v74 = v73;
    if (TypeID != CFGetTypeID(v73))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1977, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverCompressionAttributes must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 387) = CFEqual(*MEMORY[0x277CBED28], v74) != 0;
  }

  v75 = CFDictionaryGetValue(a2, @"discoverACLs");
  if (v75)
  {
    v76 = v75;
    if (TypeID != CFGetTypeID(v75))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1989, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverACLs must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 388) = CFEqual(*MEMORY[0x277CBED28], v76) != 0;
  }

  v77 = CFDictionaryGetValue(a2, @"discoverQuarantine");
  if (v77)
  {
    v78 = v77;
    if (TypeID != CFGetTypeID(v77))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2001, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverQuarantine must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 389) = CFEqual(*MEMORY[0x277CBED28], v78) != 0;
  }

  v79 = CFStringGetTypeID();
  v80 = CFDictionaryGetValue(a2, @"replayQuarantineFromPath");
  if (v80)
  {
    v81 = v80;
    if (v79 != CFGetTypeID(v80))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2015, "parse_copier_source_options", "kBOMCopierSourceOptionReplayQuarantineFromPath must be a CFBooleanRef");
      goto LABEL_327;
    }

    v82 = CFStringGetLength(v81) + 1;
    v83 = malloc_type_calloc(1uLL, v82, 0xB8ABC262uLL);
    *(v9 + 392) = v83;
    if (!v83)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2027, "parse_copier_source_options", "Could not allocate %ld bytes for path_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v81, v83, v82, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2034, "parse_copier_source_options", "Could not convert quarantine source path string to C string");
      goto LABEL_327;
    }
  }

  v84 = CFDictionaryGetValue(a2, @"keepParent");
  if (v84)
  {
    v85 = v84;
    if (TypeID != CFGetTypeID(v84))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2044, "parse_copier_source_options", "kBOMCopierSourceOptionKeepParent must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 400) = CFEqual(*MEMORY[0x277CBED28], v85) != 0;
  }

  v86 = CFDictionaryGetValue(a2, @"passphrase");
  if (v86)
  {
    v87 = v86;
    if (v79 != CFGetTypeID(v86))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2056, "parse_copier_source_options", "kBOMCopierSourceOptionPassphraseKey must be a CFStringRef");
      goto LABEL_327;
    }

    v88 = CFStringGetLength(v87) + 1;
    v89 = malloc_type_calloc(1uLL, v88, 0xB0C8A890uLL);
    *(v9 + 248) = v89;
    if (!v89)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2066, "parse_copier_source_options", "Could not allocate %ld bytes for passphrase_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v87, v89, v88, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2073, "parse_copier_source_options", "Could not convert passphrase string to C string");
      goto LABEL_327;
    }
  }

  v90 = CFDictionaryGetValue(a2, @"discoverSegmentedFiles");
  if (v90)
  {
    v91 = v90;
    if (TypeID != CFGetTypeID(v90))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2083, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverSegmentedFilesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 273) = CFEqual(*MEMORY[0x277CBED28], v91) != 0;
  }

  v92 = CFDictionaryGetValue(a2, @"ignoreAppleDoubles");
  if (v92)
  {
    v93 = v92;
    if (TypeID != CFGetTypeID(v92))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2095, "parse_copier_source_options", "kBOMCopierSourceOptionIgnoreAppleDoubles must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 88) = CFEqual(*MEMORY[0x277CBED28], v93) != 0;
  }

  v94 = CFDictionaryGetValue(a2, @"appleDoubleSuffix");
  if (v94)
  {
    v95 = v94;
    if (v79 != CFGetTypeID(v94))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2107, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleSuffix must be a CFStringRef");
      goto LABEL_327;
    }

    v96 = CFStringGetLength(v95) + 1;
    v97 = malloc_type_calloc(1uLL, v96, 0xBD629B1DuLL);
    *(v9 + 80) = v97;
    if (!v97)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2117, "parse_copier_source_options", "Could not allocate %ld bytes for suffix_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v95, v97, v96, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2124, "parse_copier_source_options", "Could not convert AppleDouble suffix string to C string");
      goto LABEL_327;
    }
  }

  v98 = CFDictionaryGetValue(a2, @"reorderExtraEntries");
  if (v98)
  {
    v99 = v98;
    if (TypeID != CFGetTypeID(v98))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2134, "parse_copier_source_options", "kBOMCopierSourceOptionReorderExtraEntriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 89) = CFEqual(*MEMORY[0x277CBED28], v99) != 0;
  }

  v100 = CFDictionaryGetValue(a2, @"replayExtraAppleDoubles");
  if (v100)
  {
    v101 = v100;
    if (TypeID != CFGetTypeID(v100))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2146, "parse_copier_source_options", "kBOMCopierSourceOptionReplayExtraAppleDoubleEntriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 90) = CFEqual(*MEMORY[0x277CBED28], v101) != 0;
  }

  v102 = CFDictionaryGetValue(a2, @"disableLexicographicSort");
  if (v102)
  {
    v103 = v102;
    if (TypeID != CFGetTypeID(v102))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2158, "parse_copier_source_options", "kBOMCopierSourceOptionDisableLexicographicSortKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 97) = CFEqual(*MEMORY[0x277CBED28], v103) != 0;
  }

  v104 = CFDictionaryGetValue(a2, @"segmentFileSize");
  if (v104)
  {
    v105 = v104;
    if (v33 != CFGetTypeID(v104))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2170, "parse_copier_source_options", "kBOMCopierSourceOptionSegmentFileSizeKey must be a CFNumberRef");
      goto LABEL_327;
    }

    *&buf.f_bsize = -1;
    if (!CFNumberGetValue(v105, kCFNumberLongLongType, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2178, "parse_copier_source_options", "Could not convert kBOMCopierSourceOptionSegmentFileSizeKey to kCFNumberLongLongType");
      goto LABEL_327;
    }

    *(v9 + 280) = *&buf.f_bsize;
  }

  v106 = CFDictionaryGetValue(a2, @"injectAppleDoubleBetweenSegmentedFiles");
  if (v106)
  {
    v107 = v106;
    if (TypeID != CFGetTypeID(v106))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2190, "parse_copier_source_options", "kBOMCopierSourceOptionInjectAppleDoubleBetweenSegmentedFilesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 98) = CFEqual(*MEMORY[0x277CBED28], v107) != 0;
  }

LABEL_145:
  v108 = *(v9 + 112);
  if ((v108 - 2) >= 3 && *(v9 + 65) == 1)
  {
    *(v9 + 112) = 1;
    v109 = *(v9 + 24);
    if (!v109 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
LABEL_164:
      v116 = realpath_DARWIN_EXTSN(a1, 0);
      *(v9 + 184) = v116;
      if (!v116)
      {
        v131 = *__error();
        v132 = __error();
        strerror(*v132);
        BOMCopierErrorCapture(a4, v131, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 862, "BOMCopierSourceNew", "Could not resolve the path: %s");
        goto LABEL_327;
      }

      v117 = *(v9 + 24);
      if (!v117)
      {
        return v9;
      }

      v118 = v116;
      if (!os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = v118;
      v119 = "Source path: %s";
      goto LABEL_168;
    }

    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_241C0E000, v109, OS_LOG_TYPE_DEFAULT, "Using an enumeration bom", &buf, 2u);
    v108 = *(v9 + 112);
  }

  if (v108 <= 1)
  {
    if (!v108)
    {
      v127 = realpath_DARWIN_EXTSN(a1, 0);
      *(v9 + 136) = v127;
      if (!v127)
      {
        v135 = *__error();
        v136 = __error();
        strerror(*v136);
        BOMCopierErrorCapture(a4, v135, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 775, "BOMCopierSourceNew", "Could not resolve %s: %s");
        goto LABEL_327;
      }

      v128 = v127;
      if (*(v9 + 400) == 1)
      {
        if (!basename_r(v127, &buf))
        {
          v152 = *__error();
          v153 = __error();
          strerror(*v153);
          BOMCopierErrorCapture(a4, v152, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 786, "BOMCopierSourceNew", "Could not basename_r %s: %s");
          goto LABEL_327;
        }

        *(v9 + 144) = strlen(&buf) + 1;
        v128 = *(v9 + 136);
      }

      *(v9 + 152) = strlen(v128);
      v175[0] = v128;
      v175[1] = 0;
      if (*(v9 + 168))
      {
        v129 = 21;
      }

      else
      {
        v129 = 85;
      }

      if (*(v9 + 97) == 1)
      {
        v130 = 0;
      }

      else
      {
        v130 = fts_compare;
      }

      v139 = fts_open(v175, v129, v130);
      *(v9 + 160) = v139;
      if (!v139)
      {
        v144 = *__error();
        v145 = __error();
        strerror(*v145);
        BOMCopierErrorCapture(a4, v144, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 817, "BOMCopierSourceNew", "Could not open the FTS handle for %s: %s");
        goto LABEL_327;
      }

      memset(&v171, 0, sizeof(v171));
      if (stat(*(v9 + 136), &v171))
      {
        v140 = *__error();
        v141 = __error();
        strerror(*v141);
        BOMCopierErrorCapture(a4, v140, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 830, "BOMCopierSourceNew", "Could not stat %s: %s");
        goto LABEL_327;
      }

      *(v9 + 172) = v171.st_dev;
      bzero(&buf, 0x878uLL);
      if (statfs(*(v9 + 136), &buf))
      {
        v150 = *__error();
        v151 = __error();
        strerror(*v151);
        BOMCopierErrorCapture(a4, v150, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 841, "BOMCopierSourceNew", "Could not statfs %s: %s");
        goto LABEL_327;
      }

      *(v9 + 176) = (buf.f_flags & 8) == 0;
      v117 = *(v9 + 24);
      if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }

      v155 = *(v9 + 136);
      v172 = 136315138;
      v173 = v155;
      v119 = "Opened FTS from %s";
      p_buf = &v172;
      goto LABEL_169;
    }

    if (v108 != 1)
    {
      return v9;
    }

    goto LABEL_164;
  }

  if (v108 == 2)
  {
    v123 = archive_read_new();
    *(v9 + 232) = v123;
    if (!v123)
    {
      v133 = *__error();
      BOMCopierErrorCapture(a4, v133, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 882, "BOMCopierSourceNew", "Could not create archive object");
      goto LABEL_327;
    }

    support_filter_all = archive_read_support_filter_all();
    if (support_filter_all)
    {
      BOMCopierErrorCapture(a4, support_filter_all, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 891, "BOMCopierSourceNew", "Could not enable read support for all filter types");
      goto LABEL_244;
    }

    support_format_all = archive_read_support_format_all();
    if (support_format_all)
    {
      BOMCopierErrorCapture(a4, support_format_all, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 901, "BOMCopierSourceNew", "Could not enable read support for all format types");
      goto LABEL_244;
    }

    set_options = archive_read_set_options();
    if (set_options)
    {
      BOMCopierErrorCapture(a4, set_options, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 911, "BOMCopierSourceNew", "Could not disable __MACOSX support\n");
      goto LABEL_244;
    }

    set_passphrase_callback = archive_read_set_passphrase_callback();
    if (set_passphrase_callback)
    {
      BOMCopierErrorCapture(a4, set_passphrase_callback, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 925, "BOMCopierSourceNew", "Could not set the passphrase callback\n");
      goto LABEL_244;
    }

    if (*(v9 + 248))
    {
      add_passphrase = archive_read_add_passphrase();
      if (add_passphrase)
      {
        v159 = add_passphrase;
        v160 = archive_errno();
        strerror(v160);
        BOMCopierErrorCapture(a4, v159, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 937, "BOMCopierSourceNew", "Could not add passphrase: %s\n");
        goto LABEL_244;
      }
    }

    if (prepare_archive_source(a1, v9, a4))
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 953, "BOMCopierSourceNew", "Could not prepare archive source");
      goto LABEL_244;
    }

    if (!a1)
    {
      if (*(v9 + 48))
      {
        v164 = malloc_type_valloc(*(v9 + 240), 0x2F6789D6uLL);
        *(v9 + 56) = v164;
        if (v164)
        {
          open = archive_read_open();
          if (!open)
          {
            v163 = *(v9 + 24);
            if (!v163 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
            {
              return v9;
            }

            LOWORD(buf.f_bsize) = 0;
            v119 = "Opened archive from CFReadStream";
            goto LABEL_273;
          }

          v166 = open;
          archive_error_string();
          BOMCopierErrorCapture(a4, v166, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 994, "BOMCopierSourceNew", "Could not open the archive_read_open2 for reading: %s");
        }

        else
        {
          v169 = __error();
          strerror(*v169);
          BOMCopierErrorCapture(a4, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 979, "BOMCopierSourceNew", "Could not allocate libarchive buffer: %s");
        }
      }

      else
      {
        if (*(v9 + 40) == -1)
        {
          BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1006, "BOMCopierSourceNew", "No input file descriptor\n");
          return 0;
        }

        open_fd = archive_read_open_fd();
        if (!open_fd)
        {
          v163 = *(v9 + 24);
          if (!v163 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
          {
            return v9;
          }

          LOWORD(buf.f_bsize) = 0;
          v119 = "Opened archive from file descriptor";
          goto LABEL_273;
        }

        v168 = open_fd;
        archive_error_string();
        BOMCopierErrorCapture(a4, v168, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1013, "BOMCopierSourceNew", "Could not open the archive %d for reading: %s");
      }

LABEL_244:
      archive_read_free();
      *(v9 + 232) = 0;
      goto LABEL_327;
    }

    if (archive_read_open_filename())
    {
      archive_error_string();
      BOMCopierErrorCapture(a4, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1028, "BOMCopierSourceNew", "Could not open the archive %s for reading: %s");
      goto LABEL_244;
    }

    v117 = *(v9 + 24);
    if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    buf.f_bsize = 136315138;
    *&buf.f_iosize = a1;
    v119 = "Opened archive from %s";
LABEL_168:
    p_buf = &buf;
LABEL_169:
    v121 = v117;
    v122 = 12;
LABEL_170:
    _os_log_impl(&dword_241C0E000, v121, OS_LOG_TYPE_DEFAULT, v119, p_buf, v122);
    return v9;
  }

  if (v108 == 3)
  {
    v125 = data_archive_new(0);
    *(v9 + 304) = v125;
    if (!v125)
    {
      v134 = *__error();
      BOMCopierErrorCapture(a4, v134, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1045, "BOMCopierSourceNew", "Could not create data_archive object");
      goto LABEL_327;
    }

    *&v171.st_dev = 0;
    v126 = data_archive_set_passphrase_callback(v125, data_archive_passphrase_callback_handler, v9, &v171);
    if (v126)
    {
      BOMCopierErrorCapture(a4, v126, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1058, "BOMCopierSourceNew", "Could not set the passphrase callback: %s");
LABEL_179:
      release_error(*&v171.st_dev);
      goto LABEL_327;
    }

    v143 = prepare_archive_source(a1, v9, a4);
    if (v143)
    {
      BOMCopierErrorCapture(a4, v143, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1072, "BOMCopierSourceNew", "Could not prepare archive source");
      goto LABEL_327;
    }

    if (a1)
    {
      if (data_archive_open(*(v9 + 304), a1, &v171))
      {
        BOMCopierErrorCapture(a4, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1122, "BOMCopierSourceNew", "Could not open the archive %s for reading: %s");
        goto LABEL_179;
      }

      v117 = *(v9 + 24);
      if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = a1;
      v119 = "Opened data archive from %s";
      goto LABEL_168;
    }

    if (*(v9 + 48))
    {
      v157 = data_archive_open_custom(*(v9 + 304), v9, data_source_read_callback, &v171);
      if (v157)
      {
        BOMCopierErrorCapture(a4, v157, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1089, "BOMCopierSourceNew", "Could not open the archive %d for custom reading: %s");
        goto LABEL_179;
      }

      v163 = *(v9 + 24);
      if (!v163 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }

      LOWORD(buf.f_bsize) = 0;
      v119 = "Opened data archive from CFReadStream";
    }

    else
    {
      v161 = *(v9 + 40);
      if (v161 == -1)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1100, "BOMCopierSourceNew", "No input file descriptor\n");
        goto LABEL_327;
      }

      v162 = data_archive_open_fd(*(v9 + 304), v161, &v171);
      if (v162)
      {
        BOMCopierErrorCapture(a4, v162, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1108, "BOMCopierSourceNew", "Could not open the archive %d for reading: %s");
        goto LABEL_179;
      }

      v163 = *(v9 + 24);
      if (!v163 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }

      LOWORD(buf.f_bsize) = 0;
      v119 = "Opened data archive from file descriptor";
    }

LABEL_273:
    p_buf = &buf;
    v121 = v163;
    v122 = 2;
    goto LABEL_170;
  }

  if (v108 != 4)
  {
    return v9;
  }

  if (!a1)
  {
    if (*(v9 + 48))
    {
      v137 = AACustomByteStreamOpen();
      *(v9 + 312) = v137;
      if (!v137)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1141, "BOMCopierSourceNew", "Could not create custom AppleArchive byte stream at %s\n");
        goto LABEL_327;
      }

      AACustomByteStreamSetData(v137, v9);
      AACustomByteStreamSetCloseProc(*(v9 + 312), apple_archive_close_callback);
      AACustomByteStreamSetReadProc(*(v9 + 312), apple_archive_read_callback);
      v138 = *(v9 + 24);
      if (!v138 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_220;
      }

      LOWORD(buf.f_bsize) = 0;
      v112 = "Opened AppleArchive from CFReadStream";
    }

    else
    {
      v146 = *(v9 + 40);
      if (v146 == -1)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1155, "BOMCopierSourceNew", "No input file descriptor\n");
        goto LABEL_327;
      }

      v147 = AAFileStreamOpenWithFD(v146, 0);
      *(v9 + 312) = v147;
      if (!v147)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1163, "BOMCopierSourceNew", "Could not open AppleArchive byte stream from file descriptor");
        goto LABEL_327;
      }

      v138 = *(v9 + 24);
      if (!v138 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_220;
      }

      LOWORD(buf.f_bsize) = 0;
      v112 = "Opened AppleArchive from file descriptor";
    }

    v113 = v138;
    v114 = 2;
    goto LABEL_219;
  }

  v110 = AAFileStreamOpenWithPath(a1, 0, 0);
  *(v9 + 312) = v110;
  if (!v110)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1175, "BOMCopierSourceNew", "Could not open AppleArchive byte stream at %s");
    goto LABEL_327;
  }

  v111 = *(v9 + 24);
  if (v111 && os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
  {
    buf.f_bsize = 136315138;
    *&buf.f_iosize = a1;
    v112 = "Opened AppleArchive from %s";
    v113 = v111;
    v114 = 12;
LABEL_219:
    _os_log_impl(&dword_241C0E000, v113, OS_LOG_TYPE_DEFAULT, v112, &buf, v114);
  }

LABEL_220:
  v148 = AADecompressionInputStreamOpen(*(v9 + 312), 0, 0);
  *(v9 + 320) = v148;
  if (!v148)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1186, "BOMCopierSourceNew", "Could not open AppleArchive decompression stream at %s");
    goto LABEL_327;
  }

  v149 = AADecodeArchiveInputStreamOpen(v148, 0, 0, 0, 0);
  *(v9 + 328) = v149;
  if (!v149)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1194, "BOMCopierSourceNew", "Could not create AppleArchive decoder");
    goto LABEL_327;
  }

  return v9;
}

void BOMCopierSourceFree(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 13);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 36);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 49);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 46);
    if (v6)
    {
      path_tree_node_release(v6);
    }

    v7 = *(a1 + 47);
    if (v7)
    {
      while (!BOMStackIsEmpty(v7))
      {
        v8 = BOMStackPop(*(a1 + 47));
        BOMCopierSourceEntryFree(v8);
        v7 = *(a1 + 47);
      }

      BOMStackFree(*(a1 + 47));
    }

    v9 = *(a1 + 45);
    if (v9)
    {
      while (!BOMStackIsEmpty(v9))
      {
        v10 = BOMStackPop(*(a1 + 45));
        BOMCopierSourceEntryFree(v10);
        v9 = *(a1 + 45);
      }

      BOMStackFree(*(a1 + 45));
    }

    v11 = *(a1 + 44);
    if (v11)
    {
      while (!BOMStackIsEmpty(v11))
      {
        v12 = BOMStackPop(*(a1 + 44));
        BOMCopierSourceEntryFree(v12);
        v11 = *(a1 + 44);
      }

      BOMStackFree(*(a1 + 44));
    }

    v13 = *(a1 + 43);
    if (v13)
    {
      while (!BOMStackIsEmpty(v13))
      {
        v14 = BOMStackPop(*(a1 + 43));
        BOMCopierSourceEntryFree(v14);
        v13 = *(a1 + 43);
      }

      BOMStackFree(*(a1 + 43));
    }

    v15 = *(a1 + 42);
    if (v15)
    {
      while (!BOMStackIsEmpty(v15))
      {
        v16 = BOMStackPop(*(a1 + 42));
        BOMCopierSourceEntryFree(v16);
        v15 = *(a1 + 42);
      }

      BOMStackFree(*(a1 + 42));
    }

    v17 = *(a1 + 31);
    if (v17)
    {
      free(v17);
    }

    v18 = *(a1 + 41);
    if (v18 && AAArchiveStreamClose(v18))
    {
      fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive decoder: %d\n");
    }

    else
    {
      v19 = *(a1 + 40);
      if (v19 && AAByteStreamClose(v19))
      {
        fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive decompression stream: %d\n");
      }

      else
      {
        v20 = *(a1 + 39);
        if (v20 && AAByteStreamClose(v20))
        {
          fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive byte stream: %d\n");
        }

        else
        {
          v21 = *(a1 + 38);
          if (v21)
          {
            data_archive_free(v21);
          }

          if (*(a1 + 29))
          {
            archive_read_free();
          }

          v22 = *(a1 + 26);
          if (v22)
          {
            BOMBomEnumeratorFree(v22);
          }

          v23 = *(a1 + 25);
          if (v23)
          {
            BOMFSObjectFree(v23);
          }

          v24 = *(a1 + 23);
          if (v24)
          {
            free(v24);
          }

          v25 = *(a1 + 20);
          if (v25)
          {
            fts_close(v25);
          }

          v26 = *(a1 + 17);
          if (v26)
          {
            free(v26);
          }

          v27 = *(a1 + 10);
          if (v27)
          {
            free(v27);
          }

          free(a1);
        }
      }
    }
  }
}

uint64_t fts_compare(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 66) <= *(*a1 + 66))
  {
    v2 = *(*a1 + 66);
  }

  else
  {
    v2 = *(*a2 + 66);
  }

  return strncmp((*a1 + 104), (*a2 + 104), v2);
}

uint64_t libarchive_passphrase_callback_handler(uint64_t a1, void *a2)
{
  result = a2[31];
  if (!result)
  {
    v5 = a2[32];
    if (v5)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = 0;
      return v5(a2, a2[33], v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t prepare_archive_source(const char *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    if (stat(a1, &v7))
    {
      v4 = *__error();
      v5 = __error();
      strerror(*v5);
      BOMCopierErrorCapture(a3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2227, "prepare_archive_source", "Could not stat the archive %s: %s");
      return 1;
    }

    if (!v7.st_size)
    {
      BOMCopierErrorCapture(a3, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2233, "prepare_archive_source", "%s is empty: Unrecognized archive format");
      return 1;
    }
  }

  else if (!*(a2 + 48) && *(a2 + 40) == -1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2213, "prepare_archive_source", "No input file descriptor\n");
    return 1;
  }

  return 0;
}

CFIndex libarchive_read_callback(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return -1;
  }

  *a3 = *(a2 + 56);
  while (1)
  {
    v4 = CFReadStreamRead(*(a2 + 48), *(a2 + 56), *(a2 + 240));
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      __error();
      archive_set_error();
      return v4;
    }
  }

  return v4;
}

uint64_t data_archive_passphrase_callback_handler(uint64_t a1, void *a2)
{
  result = a2[31];
  if (!result)
  {
    v5 = a2[32];
    if (v5)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = 0;
      return v5(a2, a2[33], v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFIndex data_source_read_callback(uint64_t a1, int a2, UInt8 *buffer, CFIndex bufferLength)
{
  if (a1)
  {
    return CFReadStreamRead(*(a1 + 48), buffer, bufferLength);
  }

  else
  {
    return -1;
  }
}

CFIndex apple_archive_read_callback(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  if (a1)
  {
    return CFReadStreamRead(*(a1 + 48), a2, a3);
  }

  else
  {
    return -1;
  }
}

void path_tree_node_release(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    do
    {
      path_tree_node_release(*(*(a1 + 16) + 8 * v2++));
    }

    while (v2 < *(a1 + 8));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  if (*a1)
  {
    free(*a1);
  }

  free(a1);
}

uint64_t BOMCopierSourceSetErrorHandler(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *a1 = a2;
    a1[1] = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1393, "BOMCopierSourceSetErrorHandler", "copier_source is NULL");
  }

  return v4;
}

uint64_t BOMCopierSourceSetEnumerationBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1412, "BOMCopierSourceSetEnumerationBom", "copier_source is NULL");
    return v7;
  }

  if (!a2)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1418, "BOMCopierSourceSetEnumerationBom", "enumeration_bom is NULL");
    return v7;
  }

  if (*(a1 + 112) != 1)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1424, "BOMCopierSourceSetEnumerationBom", "The copier source is not BOMCopierSourceIndexBom");
    return v7;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1430, "BOMCopierSourceSetEnumerationBom", "The copier source is not configured to use an enumeration bom");
    return v7;
  }

  *(a1 + 192) = a2;
  RootFSObject = BOMBomGetRootFSObject(a2);
  *(a1 + 200) = RootFSObject;
  if (!RootFSObject)
  {
    v7 = 1;
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1439, "BOMCopierSourceSetEnumerationBom", "Could not get the root fso for the enumeration bom");
LABEL_15:
    BOMCopierSourceFree(a1);
    return v7;
  }

  v6 = BOMBomEnumeratorNew(*(a1 + 192), RootFSObject);
  *(a1 + 208) = v6;
  if (!v6)
  {
    v7 = 1;
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1454, "BOMCopierSourceSetEnumerationBom", "Could not create enumerator for the enumeration bom");
    goto LABEL_15;
  }

  return 0;
}

uint64_t BOMCopierSourceSetAllowBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 224) = a2;
  }

  else
  {
    v3 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1474, "BOMCopierSourceSetAllowBom", "copier_source is NULL");
  }

  return v3;
}

uint64_t BOMCopierSourceSetRedirectCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 120) = a2;
    *(a1 + 128) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1497, "BOMCopierSourceSetRedirectCallback", "copier_source is NULL");
  }

  return v4;
}

uint64_t BOMCopierSourceSetPassphraseCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 256) = a2;
    *(a1 + 264) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1517, "BOMCopierSourceSetPassphraseCallback", "copier_source is NULL");
  }

  return v4;
}

uint64_t *BOMCopierSourceNext(uint64_t a1, void *a2)
{
  if (a1)
  {
    do
    {
      v6 = 0;
      result = next_source_entry(a1, &v6);
      if (result)
      {
        break;
      }

      if (v6)
      {
        v5 = a2 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        *a2 = v6;
        return result;
      }

      result = 0;
    }

    while (!v6 && (*(a1 + 116) & 1) == 0);
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1535, "BOMCopierSourceNext", "copier_source is NULL");
    return 0;
  }

  return result;
}

uint64_t *next_source_entry(uint64_t a1, void **a2)
{
  v142 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 336);
  if (v4)
  {
    v5 = *(a1 + 24);
    if (v5 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the pre-empt stack", buf, 2u);
      v4 = *(a1 + 336);
    }

    filesystem_entry = BOMStackPop(v4);
    v130 = 0;
    if (filesystem_entry)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v130 = 0;
  }

  if (*(a1 + 116))
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 24);
  if (v8 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the source", buf, 2u);
  }

  filesystem_entry = 0;
  v9 = *(a1 + 112);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_10;
      }

      v16 = *(a1 + 208);
      if (!v16)
      {
        BOMCopierErrorCapture(&v130, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3063, "next_enumeration_bom_entry", "The BOMCopierSource does not have an index bom enumerator");
        goto LABEL_9;
      }

      v17 = BOMBomEnumeratorNext(v16);
      if (!v17)
      {
        goto LABEL_190;
      }

      v18 = v17;
      v19 = *(a1 + 64) ^ 1;
      if (*(a1 + 384))
      {
        v19 |= 2u;
      }

      if (*(a1 + 385))
      {
        v19 |= 8u;
      }

      if (*(a1 + 386))
      {
        v19 |= 4u;
      }

      if (*(a1 + 387))
      {
        v19 |= 0x10u;
      }

      if (*(a1 + 388))
      {
        v19 |= 0x20u;
      }

      if (*(a1 + 389))
      {
        v19 |= 0x40u;
      }

      if (*(a1 + 217))
      {
        v19 |= 0x100u;
      }

      if (*(a1 + 216))
      {
        v20 = v19 | 0x80;
      }

      else
      {
        v20 = v19;
      }

      filesystem_entry = BOMCopierSourceEntryNewFromFSObject(*(a1 + 184), v17, v20, &v130);
      if (filesystem_entry)
      {
        v21 = BOMFSObjectParentPathID(v18);
        v22 = BOMFSObjectPathID(v18);
        if (!v21 && v22 == 1)
        {
          BOMCopierSourceEntrySetRoot(filesystem_entry, 1);
        }

        BOMFSObjectFree(v18);
        if (synthesize_filesystem_stuff())
        {
          BOMCopierErrorCapture(&v130, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3144, "next_enumeration_bom_entry", "Could not synthesize filesystem stuff");
          BOMCopierSourceEntryFree(filesystem_entry);
          goto LABEL_9;
        }
      }

      else
      {
        BOMCopierErrorCapture(&v130, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3126, "next_enumeration_bom_entry", "Could not synthesize filesystem stuff");
        BOMFSObjectFree(v18);
      }
    }

    else
    {
      v133[0] = 0;
      v51 = *(a1 + 120);
      if (v51)
      {
        v51(a1, v133, *(a1 + 128));
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v52 = *(a1 + 24);
        if (v52)
        {
          if (os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v133[0];
            _os_log_impl(&dword_241C0E000, v52, OS_LOG_TYPE_DEFAULT, "Redirected to %s", buf, 0xCu);
          }
        }
      }

      filesystem_entry = next_filesystem_entry(a1, v133[0], (a1 + 116), &v130);
      if (v133[0])
      {
        free(v133[0]);
      }
    }

    goto LABEL_10;
  }

  if (v9 == 2)
  {
    if (!*(a1 + 232))
    {
      BOMCopierErrorCapture(&v130, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3168, "next_libarchive_entry", "copier_source->archive is NULL");
      goto LABEL_9;
    }

    v47 = 512;
    if (!*(a1 + 272))
    {
      v47 = 0;
    }

    if (*(a1 + 384))
    {
      v48 = v47 | 2;
    }

    else
    {
      v48 = v47;
    }

    *buf = 0;
    next_header = archive_read_next_header();
    if (archive_read_has_encrypted_entries() == 1 && !*(a1 + 248) && !*(a1 + 256))
    {
      BOMCopierErrorCapture(&v130, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3199, "next_libarchive_entry", "archive has encrypted entries");
      goto LABEL_9;
    }

    if (next_header == -30)
    {
      v73 = archive_error_string();
      if (!v73 || strcmp(v73, "Invalid central directory signature"))
      {
        BOMCopierErrorCapture(&v130, -30, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3236, "next_libarchive_entry", "Could not read archive header: ARCHIVE_FATAL: %s");
        goto LABEL_9;
      }
    }

    else if (next_header != 1)
    {
      if (next_header)
      {
        archive_error_string();
        BOMCopierErrorCapture(&v130, next_header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3244, "next_libarchive_entry", "Could not read archive header: %d: %s");
        goto LABEL_9;
      }

      v50 = BOMCopierSourceEntryNewFromLibarchive(*(a1 + 232), *buf, v48, &v130);
      goto LABEL_135;
    }

LABEL_190:
    filesystem_entry = 0;
    *(a1 + 116) = 1;
    goto LABEL_10;
  }

  if (v9 == 3)
  {
    v50 = next_data_archive_entry(a1, (a1 + 116), &v130);
LABEL_135:
    filesystem_entry = v50;
    goto LABEL_10;
  }

  if (v9 != 4)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 328);
  if (!v10)
  {
    BOMCopierErrorCapture(&v130, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3340, "next_apple_archive_entry", "copier_source->aa_decoder is NULL");
    goto LABEL_9;
  }

  v11 = 0;
  if (!*(a1 + 272))
  {
    v11 = 0;
  }

  if (*(a1 + 384))
  {
    v11 = 2;
  }

  if (*(a1 + 386))
  {
    v11 |= 4u;
  }

  if (*(a1 + 388))
  {
    v12 = v11 | 0x20;
  }

  else
  {
    v12 = v11;
  }

  *buf = 0;
  Header = AAArchiveStreamReadHeader(v10, buf);
  if (Header < 0)
  {
    BOMCopierErrorCapture(&v130, Header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3372, "next_apple_archive_entry", "Could not read AppleArchive header: %d");
    goto LABEL_9;
  }

  if (Header != 1)
  {
    if (Header)
    {
      BOMCopierErrorCapture(&v130, Header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3380, "next_apple_archive_entry", "Could not read AppleArchive header: %d");
LABEL_9:
      filesystem_entry = 0;
      goto LABEL_10;
    }

    goto LABEL_190;
  }

  filesystem_entry = BOMCopierSourceEntryNewFromAppleArchive(*(a1 + 328), *buf, v12, &v130);
  AAHeaderDestroy(*buf);
LABEL_10:
  if (v130)
  {
    if (*(a1 + 16) == 1)
    {
      BOMCopierErrorFree(v130);
      *(a1 + 16) = 1;
      v7 = *(a1 + 24);
      if (v7 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v7, OS_LOG_TYPE_DEFAULT, "Swallowing error", buf, 2u);
      }
    }

    else
    {
      if (a2)
      {
        *a2 = v130;
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2450, "next_source_entry", "Could not get the next source entry");
    }

    return 0;
  }

  if (!filesystem_entry)
  {
LABEL_285:
    v82 = 0;
    goto LABEL_286;
  }

LABEL_37:
  v129 = 0;
  if ((*(a1 + 112) - 2) <= 2 && *(a1 + 224))
  {
    Path = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (!Path)
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3407, "filter_next_source_entry", "Could not get entry path for source entry", v125);
LABEL_166:
      v58 = filesystem_entry;
LABEL_167:
      BOMCopierSourceEntryFree(v58);
      goto LABEL_283;
    }

    *buf = 0;
    if (*Path == 46)
    {
      v15 = Path;
    }

    else if (asprintf(buf, "./%s", Path) == -1 || (v15 = *buf) == 0)
    {
      v53 = *__error();
      BOMCopierErrorCapture(&v129, v53, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3420, "filter_next_source_entry", "Could not construct lookup path for skip bom from %s");
      goto LABEL_166;
    }

    v23 = BOMBomFSObjectExistsAtPath(*(a1 + 224), v15);
    if (*buf)
    {
      free(*buf);
    }

    if (!v23)
    {
      if (!consume_source_entry(filesystem_entry, &v129))
      {
        goto LABEL_283;
      }

      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3442, "filter_next_source_entry", "Could not consume the source entry", v125);
      goto LABEL_166;
    }
  }

  if (((*(a1 + 93) & 1) != 0 || *(a1 + 94) == 1) && BOMCopierSourceEntryIsRoot(filesystem_entry))
  {
    v24 = *(a1 + 24);
    if (v24 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v24, OS_LOG_TYPE_DEFAULT, "Consuming root entry", buf, 2u);
    }

    if (consume_source_entry(filesystem_entry, &v129))
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3466, "filter_next_source_entry", "Could not consume the source entry", v125);
      goto LABEL_166;
    }

LABEL_283:
    if (v129)
    {
      v82 = 0;
      *a2 = v129;
      return v82;
    }

    goto LABEL_285;
  }

  Type = BOMCopierSourceEntryGetType(filesystem_entry);
  if (*(a1 + 96) == 1)
  {
    v26 = BOMCopierSourceEntryGetType(filesystem_entry);
    if (v26 <= 0xE && ((1 << v26) & 0x6040) != 0)
    {
      v27 = BOMCopierSourceEntryGetPath(filesystem_entry);
      if (v27)
      {
        v28 = v27;
        v29 = strlen(v27);
        v30 = *v28;
        v31 = v30 == 46 ? 10 : 8;
        if (v29 >= v31)
        {
          v32 = v30 == 46 ? "./__MACOSX" : "__MACOSX";
          if (!strncmp(v28, v32, v31))
          {
            v56 = *(a1 + 24);
            if (v56 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241C0E000, v56, OS_LOG_TYPE_DEFAULT, "Consuming __MACOSX directory entry", buf, 2u);
            }

            if (consume_source_entry(filesystem_entry, &v129))
            {
              BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3494, "filter_next_source_entry", "Could not consume the source entry", v125);
              goto LABEL_166;
            }

            goto LABEL_283;
          }
        }
      }
    }
  }

  if (!is_apple_double(filesystem_entry))
  {
    goto LABEL_205;
  }

  if (*(a1 + 95) == 1)
  {
    v33 = *(a1 + 24);
    if (v33 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v33, OS_LOG_TYPE_DEFAULT, "Sequestering __MACOSX entry", buf, 2u);
    }

    v34 = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (v34)
    {
      v35 = v34;
      v36 = *(a1 + 24);
      if (v36 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v35;
        _os_log_impl(&dword_241C0E000, v36, OS_LOG_TYPE_DEFAULT, "Sequestering AppleDouble from %s", buf, 0xCu);
      }

      if (*(a1 + 93))
      {
        v37 = "__MACOSX";
      }

      else
      {
        v37 = "./__MACOSX";
      }

      v38 = &v35[2 * (*v35 == 46)];
      v131 = 0;
      if (asprintf(&v131, "%s/%s", v37, v38) != -1 && v131)
      {
        if (BOMCopierSourceEntrySetPath(filesystem_entry, v131))
        {
          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4728, "sequester_apple_double", "Could not create set sequester path entry for %s");
LABEL_276:
          BOMCopierSourceEntryFree(filesystem_entry);
          goto LABEL_277;
        }

        free(v131);
        v63 = BOMCopierSourceEntryGetPath(filesystem_entry);
        v64 = v63;
        v133[0] = 0;
        v133[1] = v133;
        v133[2] = 0x2000000000;
        v133[3] = 0;
        v132[0] = 0;
        v132[1] = v132;
        v132[2] = 0x2000000000;
        v132[3] = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 0x40000000;
        *&buf[16] = __add_sequester_entry_block_invoke;
        v136 = &unk_278D13400;
        v139 = a1;
        v140 = &v129;
        v137 = v133;
        v138 = v132;
        v141 = filesystem_entry;
        if (v63)
        {
          v65 = strlen(v63);
          __s = 0;
          if (v65 == asprintf(&__s, "%s", v64))
          {
            v66 = __s;
            if (__s)
            {
              v128 = v64;
              v67 = strchr(__s, 47);
              if (v67)
              {
                v68 = v67;
                v69 = v66;
                while (1)
                {
                  *v68 = 0;
                  v70 = (*&buf[16])(buf, v69, 0);
                  if (v70)
                  {
                    break;
                  }

                  *v68 = 47;
                  v69 = v68 + 1;
                  v71 = __s;
                  if (v68 + 1 - __s < v65)
                  {
                    v68 = strchr(v68 + 1, 47);
                    if (v68)
                    {
                      continue;
                    }
                  }

                  goto LABEL_260;
                }

                v92 = v70;
                v71 = __s;
              }

              else
              {
                v69 = v66;
                v71 = v66;
LABEL_260:
                if (v69 == &v66[v65] || (v92 = (*&buf[16])(buf, v69, 1), v71 = __s, !v92))
                {
                  free(v71);
LABEL_274:
                  _Block_object_dispose(v132, 8);
                  _Block_object_dispose(v133, 8);
                  goto LABEL_283;
                }
              }

              free(v71);
              v64 = v128;
              if (v92 != -1)
              {
                goto LABEL_274;
              }
            }
          }
        }

        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5141, "add_sequester_entry", "Could not add sequester entry for %s", v64);
        _Block_object_dispose(v132, 8);
        _Block_object_dispose(v133, 8);
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4743, "sequester_apple_double", "Could not create set sequester path entry for %s");
        goto LABEL_276;
      }

      v54 = *__error();
      v55 = __error();
      strerror(*v55);
      BOMCopierErrorCapture(&v129, v54, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4720, "sequester_apple_double", "Could not create sequester path for %s: %s");
    }

    else
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4694, "sequester_apple_double", "Could not retrieve entry path for AppleDouble entry");
    }

LABEL_277:
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3526, "filter_next_source_entry", "Could not sequester AppleDouble entry", v126);
    goto LABEL_283;
  }

  if (*(a1 + 96) == 1)
  {
    v39 = *(a1 + 24);
    if (v39 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v39, OS_LOG_TYPE_DEFAULT, "Unsequestering __MACOSX entry", buf, 2u);
    }

    v40 = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (v40)
    {
      v41 = v40;
      v42 = strlen(v40);
      if (*v41 == 46)
      {
        v43 = 0;
        v44 = ".";
        v45 = 10;
        v46 = "./__MACOSX";
      }

      else
      {
        v44 = "";
        v43 = 1;
        v45 = 8;
        v46 = "__MACOSX";
      }

      if (v42 < v45 || strncmp(v41, v46, v45))
      {
        goto LABEL_160;
      }

      *buf = 0;
      if (asprintf(buf, "%s%s", v44, &v41[v45 + v43]) == -1 || !*buf)
      {
        v90 = *__error();
        v91 = __error();
        strerror(*v91);
        BOMCopierErrorCapture(&v129, v90, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4801, "unsequester_apple_double", "Could not created adjusted path for %s: %s");
      }

      else
      {
        v74 = BOMCopierSourceEntrySetPath(filesystem_entry, *buf);
        free(*buf);
        if (!v74)
        {
          goto LABEL_160;
        }

        v75 = __error();
        strerror(*v75);
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4811, "unsequester_apple_double", "Could not set adjusted path %s: %s");
      }
    }

    else
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4764, "unsequester_apple_double", "Could not retrieve entry path for AppleDouble entry");
    }

    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3543, "filter_next_source_entry", "Could not unsequester AppleDouble file", v127);
    goto LABEL_166;
  }

LABEL_160:
  if (*(a1 + 71) == 1)
  {
    v57 = *(a1 + 24);
    if (v57 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v57, OS_LOG_TYPE_DEFAULT, "Deferring AppleDouble entry", buf, 2u);
    }

    if (push_replay_stack(a1, filesystem_entry, 2, &v129))
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3557, "filter_next_source_entry", "Could not push AppleDouble onto the replay stack", v125);
      goto LABEL_166;
    }

    goto LABEL_283;
  }

  if (*(a1 + 80))
  {
    v59 = BOMCopierSourceEntryGetPath(filesystem_entry);
    v133[0] = 0;
    asprintf(v133, "%s%s", v59, *(a1 + 80));
    v60 = v133[0];
    if (!v133[0])
    {
      v72 = __error();
      strerror(*v72);
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3579, "filter_next_source_entry", "Could not constructed adjusted AppleDouble path: %s");
      goto LABEL_283;
    }

    v61 = *(a1 + 24);
    if (v61 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = v62;
      *&buf[12] = 2080;
      *&buf[14] = v59;
      _os_log_impl(&dword_241C0E000, v61, OS_LOG_TYPE_DEFAULT, "Appending suffix %s to %s", buf, 0x16u);
      v60 = v133[0];
    }

    if (BOMCopierSourceEntrySetPath(filesystem_entry, v60))
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3588, "filter_next_source_entry", "Could not set appended entry path for AppleDouble file", v125);
      goto LABEL_283;
    }

    free(v133[0]);
  }

  if (Type == 8)
  {
    if (*(a1 + 72) == 1)
    {
      v76 = *(a1 + 24);
      if (v76 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v76, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble replay entry", buf, 2u);
      }

      if (synthesize_replay_apple_double(a1, filesystem_entry, &v129))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3608, "filter_next_source_entry", "Could not replay AppleDouble file", v125);
        goto LABEL_166;
      }
    }

    goto LABEL_221;
  }

LABEL_205:
  if (*(a1 + 91) != 1 || Type != 9)
  {
    if (*(a1 + 92) != 1 || Type != 6)
    {
LABEL_221:
      v82 = filesystem_entry;
      goto LABEL_222;
    }

    v83 = *(a1 + 24);
    if (v83 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v83, OS_LOG_TYPE_DEFAULT, "Synthesizing replay directory entry", buf, 2u);
    }

    v84 = BOMCopierSourceEntryGetPath(filesystem_entry);
    v85 = BOMCopierSourceEntryNew(6, &v129);
    if (v85)
    {
      v82 = v85;
      if (BOMCopierSourceEntrySetPath(v85, v84))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4465, "synthesize_replay_directory", "Could not set the path for the directory entry");
      }

      else if (copy_entry_metadata(filesystem_entry, v82, &v129))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4474, "synthesize_replay_directory", "Could not copy metadata from the source entry to its directory doppleganger");
      }

      else if (BOMCopierSourceEntrySetMode(v82, 16877))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4483, "synthesize_replay_directory", "Could not set the mode for the directory entry");
      }

      else if (BOMCopierSourceEntrySetUserID(v82, *(a1 + 32)))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4492, "synthesize_replay_directory", "Could not set the user ID for the directory entry");
      }

      else if (BOMCopierSourceEntrySetGroupID(v82, *(a1 + 36)))
      {
        BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4501, "synthesize_replay_directory", "Could not set the group ID for the directory entry");
      }

      else
      {
        v120 = BOMCopierSourceEntryNew(19, &v129);
        if (v120)
        {
          v121 = v120;
          if (BOMCopierSourceEntrySetPath(v120, v84))
          {
            BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4526, "synthesize_replay_directory", "Could not copy entry path from the source entry to its replay directory");
          }

          else if (copy_entry_metadata(filesystem_entry, v121, &v129))
          {
            BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4536, "synthesize_replay_directory", "Could not copy metadata from the source entry to its replay directory");
          }

          else
          {
            if (!push_replay_stack(a1, v121, 3, &v129))
            {
              v124 = *(a1 + 24);
              if (v124 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v84;
                _os_log_impl(&dword_241C0E000, v124, OS_LOG_TYPE_DEFAULT, "Synthesized replay directory from %s", buf, 0xCu);
              }

              if (!consume_source_entry(filesystem_entry, &v129))
              {
                goto LABEL_222;
              }

              BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4563, "synthesize_replay_directory", "Could not consume the source entry");
LABEL_282:
              BOMCopierSourceEntryFree(filesystem_entry);
              BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3666, "filter_next_source_entry", "Could not synthesize replay directory", v125);
              goto LABEL_283;
            }

            BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4546, "synthesize_replay_directory", "Could not push the synthetic replay directory onto the replay stack");
          }

          BOMCopierSourceEntryFree(v121);
        }

        else
        {
          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4517, "synthesize_replay_directory", "Could not create BOMCopierSourceEntry for replay directory");
        }
      }

      v88 = v82;
    }

    else
    {
      BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4456, "synthesize_replay_directory", "Could create a directory entry");
      v88 = 0;
    }

    BOMCopierSourceEntryFree(v88);
    goto LABEL_282;
  }

  v77 = *(a1 + 24);
  if (v77 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v77, OS_LOG_TYPE_DEFAULT, "Synthesizing replay symlink entry", buf, 2u);
  }

  v78 = BOMCopierSourceEntryGetPath(filesystem_entry);
  SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(filesystem_entry);
  v80 = strlen(SymlinkTarget);
  v81 = BOMCopierSourceEntryNew(8, &v129);
  if (!v81)
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4333, "synthesize_replay_symlink", "Could create a regular file entry");
    v87 = 0;
LABEL_254:
    BOMCopierSourceEntryFree(v87);
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3637, "filter_next_source_entry", "Could not synthesize replay symlink", v125);
    goto LABEL_283;
  }

  v82 = v81;
  if (BOMCopierSourceEntrySetPath(v81, v78))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4341, "synthesize_replay_symlink", "Could not set the path for the regular file entry");
LABEL_253:
    v87 = v82;
    goto LABEL_254;
  }

  if (BOMCopierSourceEntrySetData(v82, SymlinkTarget, v80))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4349, "synthesize_replay_symlink", "Could not set the data for the regular file entry");
    goto LABEL_253;
  }

  if (copy_entry_metadata(filesystem_entry, v82, &v129))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4357, "synthesize_replay_symlink", "Could not copy metadata from the symlink entry to its regular file doppleganger");
    goto LABEL_253;
  }

  if (BOMCopierSourceEntrySetMode(v82, 33188))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4365, "synthesize_replay_symlink", "Could not set the mode for the regular file entry");
    goto LABEL_253;
  }

  v93 = BOMCopierSourceEntryNew(18, &v129);
  if (!v93)
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4381, "synthesize_replay_symlink", "Could create a post order symlink entry");
    goto LABEL_253;
  }

  v94 = v93;
  if (BOMCopierSourceEntrySetPath(v93, v78))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4389, "synthesize_replay_symlink", "Could not set the path for the post order symlink entry");
    goto LABEL_253;
  }

  if (copy_entry_metadata(filesystem_entry, v94, &v129))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4397, "synthesize_replay_symlink", "Could not copy metadata from the symlink entry to its replay symlink");
    goto LABEL_253;
  }

  if (BOMCopierSourceEntrySetSymlinkTarget(v94, SymlinkTarget))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4405, "synthesize_replay_symlink", "Could not set the path for the post order symlink entry");
    goto LABEL_253;
  }

  if (push_replay_stack(a1, v94, 1, &v129))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4413, "synthesize_replay_symlink", "Could not push the synthetic post-order symlink");
    goto LABEL_253;
  }

  v123 = *(a1 + 24);
  if (v123 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v78;
    _os_log_impl(&dword_241C0E000, v123, OS_LOG_TYPE_DEFAULT, "Synthesizing replay symlink from %s", buf, 0xCu);
  }

  if (consume_source_entry(filesystem_entry, &v129))
  {
    BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4428, "synthesize_replay_symlink", "Could not consume the symlink entry");
    v87 = filesystem_entry;
    goto LABEL_254;
  }

LABEL_222:
  if (*(a1 + 89) == 1)
  {
    v86 = BOMCopierSourceEntryGetType(v82);
    if (v86 == 14 || v86 == 16 || v86 == 15 && is_apple_double(v82))
    {
      if (Type == 16)
      {
        if (push_replay_stack(a1, v82, 1, &v129))
        {
          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3712, "filter_next_source_entry", "Could not push the extra symlink entry onto the replay stack", v125);
        }

        goto LABEL_283;
      }

      if (Type != 15)
      {
        if (Type == 14)
        {
          if (push_replay_stack(a1, v82, 3, &v129))
          {
            BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3699, "filter_next_source_entry", "Could not push the extra directory entry onto the replay stack", v125);
          }
        }

        else
        {
          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3751, "filter_next_source_entry", "Cannot convert %u to replay entry");
        }

        goto LABEL_283;
      }

      if (*(a1 + 90) == 1)
      {
        v89 = *(a1 + 24);
        if (v89 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v89, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble replay entry from extra AppleDouble entry", buf, 2u);
        }

        if (synthesize_replay_apple_double(a1, v82, &v129))
        {
          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3729, "filter_next_source_entry", "Could not replay AppleDouble file");
        }

        else
        {
          v95 = *(a1 + 24);
          if (v95 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241C0E000, v95, OS_LOG_TYPE_DEFAULT, "Consuming extra AppleDouble entry", buf, 2u);
          }

          if (!consume_source_entry(v82, &v129))
          {
            goto LABEL_283;
          }

          BOMCopierErrorCapture(&v129, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3739, "filter_next_source_entry", "Could not consume the source entry");
        }

        v58 = v82;
        goto LABEL_167;
      }
    }
  }

LABEL_286:
  if (*(a1 + 98) == 1 && *(a1 + 99) == 1 && BOMCopierSourceEntryGetSize(v82) > *(a1 + 280))
  {
    v96 = BOMCopierSourceEntryNew(8, a2);
    if (!v96)
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4583, "synthesize_inject_apple_double", "Could create a regular file entry");
LABEL_344:
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2509, "next_source_entry", "Could not create AppleDouble injection entry", v125);
      goto LABEL_345;
    }

    v97 = v96;
    v98 = malloc_type_malloc(0xFFuLL, 0xF57C1C47uLL);
    if (!v98)
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4598, "synthesize_inject_apple_double", "Could not create last path component");
LABEL_343:
      BOMCopierSourceEntryFree(v97);
      goto LABEL_344;
    }

    v99 = v98;
    if (basename_r(*(a1 + 104), v98))
    {
      v100 = malloc_type_malloc(0x400uLL, 0x4F85E3BuLL);
      if (v100)
      {
        v101 = v100;
        if (dirname_r(*(a1 + 104), v100))
        {
          *buf = 0;
          asprintf(buf, "%s/._%s", v101, v99);
          v102 = *buf;
          if (*buf)
          {
            free(v101);
            free(v99);
            if (BOMCopierSourceEntrySetPath(v97, v102))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4650, "synthesize_inject_apple_double", "Could not set insert entry path");
              v103 = *buf;
LABEL_342:
              free(v103);
              goto LABEL_343;
            }

            free(*buf);
            if (BOMCopierSourceEntrySetData(v97, &inject_apple_double_bytes, 0xA4uLL))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4664, "synthesize_inject_apple_double", "Could not set the data for the regular file entry");
              goto LABEL_343;
            }

            if (copy_entry_metadata(v82, v97, a2))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4672, "synthesize_inject_apple_double", "Could not copy metadata from the symlink entry to its regular file doppleganger");
              goto LABEL_343;
            }

            if (push_preempt_stack(a1, v82, a2))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2524, "next_source_entry", "Could not push source entry onto the preempty stack", v125);
              goto LABEL_345;
            }

            v122 = *(a1 + 24);
            if (v122 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241C0E000, v122, OS_LOG_TYPE_DEFAULT, "Injecting AppleDouble between segmented files", buf, 2u);
            }

            v82 = v97;
            goto LABEL_298;
          }

          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4637, "synthesize_inject_apple_double", "Could not create insert entry path");
        }

        else
        {
          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4626, "synthesize_inject_apple_double", "Could not get parent path");
        }

        free(v99);
        v103 = v101;
        goto LABEL_342;
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4617, "synthesize_inject_apple_double", "Could not create parent path");
    }

    else
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4608, "synthesize_inject_apple_double", "Could not get last path component");
    }

    v103 = v99;
    goto LABEL_342;
  }

  if (!v82)
  {
    if (*(a1 + 116) == 1)
    {
      if (*(a1 + 368))
      {
        if (!*(a1 + 376) && populate_sequester_stack(a1, a2))
        {
          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2557, "next_source_entry", "Could not populate sequester stack");
          return 0;
        }

        v114 = *(a1 + 24);
        if (v114 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v114, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the sequester stack", buf, 2u);
        }

        v115 = BOMStackPop(*(a1 + 376));
        if (v115)
        {
          v82 = v115;
          goto LABEL_298;
        }
      }

      if (!*(a1 + 344) && !*(a1 + 352) && !*(a1 + 360))
      {
        return 0;
      }

      v118 = *(a1 + 24);
      if (v118 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v118, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the replay stacks", buf, 2u);
      }

      v82 = pop_replay_stack(a1);
      if (!v82)
      {
        return v82;
      }

      goto LABEL_298;
    }

    return 0;
  }

LABEL_298:
  if (*(a1 + 273) == 1)
  {
    v104 = BOMCopierSourceEntryGetPath(v82);
    Size = BOMCopierSourceEntryGetSize(v82);
    v106 = *(a1 + 288);
    if (v106)
    {
      if (!strcmp(v104, *(a1 + 288)) && *(a1 + 280) == *(a1 + 296))
      {
        v107 = *(a1 + 24);
        if (v107 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v107, OS_LOG_TYPE_DEFAULT, "Marking segmented file entry", buf, 2u);
        }

        BOMCopierSourceEntrySetSegmentedFile(v82, 1);
        v106 = *(a1 + 288);
      }

      free(v106);
      *(a1 + 288) = 0;
    }

    v108 = strdup(v104);
    *(a1 + 288) = v108;
    if (!v108)
    {
      v116 = *__error();
      v117 = __error();
      strerror(*v117);
      BOMCopierErrorCapture(a2, v116, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2673, "next_source_entry", "Could not duplicate entry path: %s");
      goto LABEL_345;
    }

    *(a1 + 296) = Size;
  }

  *(a1 + 99) = 0;
  v109 = *(a1 + 104);
  if (v109)
  {
    free(v109);
    *(a1 + 104) = 0;
  }

  if (*(a1 + 98) == 1 && BOMCopierSourceEntryGetSize(v82) > *(a1 + 280))
  {
    *(a1 + 99) = 1;
    v110 = BOMCopierSourceEntryGetPath(v82);
    v111 = strdup(v110);
    *(a1 + 104) = v111;
    if (!v111)
    {
      v112 = *__error();
      v113 = __error();
      strerror(*v113);
      BOMCopierErrorCapture(a2, v112, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2718, "next_source_entry", "Could not duplicate entry path: %s");
LABEL_345:
      BOMCopierSourceEntryFree(v82);
      return 0;
    }
  }

  return v82;
}

unsigned int *next_filesystem_entry(uint64_t a1, char *a2, _BYTE *a3, uint64_t *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 160);
  if (!v6)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2745, "next_filesystem_entry", "The BOMCopierSource does not have an open FTS handle");
    return 0;
  }

  v8 = *(a1 + 64) ^ 1;
  if (*(a1 + 384))
  {
    v8 |= 2uLL;
  }

  if (*(a1 + 385))
  {
    v8 |= 8uLL;
  }

  if (*(a1 + 386))
  {
    v8 |= 4uLL;
  }

  if (*(a1 + 387))
  {
    v8 |= 0x10uLL;
  }

  if (*(a1 + 388))
  {
    v8 |= 0x20uLL;
  }

  if (*(a1 + 389))
  {
    v9 = v8 | 0x40;
  }

  else
  {
    v9 = v8;
  }

  if (a2)
  {
    v10 = BOMCopierSourceEntryNewFromPath(a2, v9, a4);
    if (!v10)
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2800, "next_filesystem_entry", "Could not create BOMCopierSourceEntry from redirect path %s", a2);
      return v10;
    }

    if (synthesize_filesystem_stuff())
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2808, "next_filesystem_entry", "Could not synthesize filesystem stuff");
LABEL_19:
      v11 = v10;
LABEL_20:
      BOMCopierSourceEntryFree(v11);
      return 0;
    }

    v18 = *(a1 + 24);
    if (v18 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v35.f_bsize = 136315138;
      *&v35.f_iosize = a2;
      _os_log_impl(&dword_241C0E000, v18, OS_LOG_TYPE_DEFAULT, "Entry created from redirect path %s", &v35, 0xCu);
    }
  }

  else
  {
    v14 = fts_read(v6);
    if (v14)
    {
      v15 = v14;
      if (v14->fts_statp->st_dev != *(a1 + 172))
      {
        bzero(&v35, 0x878uLL);
        if (statfs(*(v15 + 48), &v35))
        {
          v16 = *__error();
          v17 = __error();
          strerror(*v17);
          BOMCopierErrorCapture(a4, v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2853, "next_filesystem_entry", "Could not statfs %s: %s");
          return 0;
        }

        *(a1 + 176) = (v35.f_flags & 8) == 0;
        *(a1 + 172) = **(v15 + 96);
      }

      v20 = *(a1 + 24);
      if (v20 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35.f_bsize) = 0;
        _os_log_impl(&dword_241C0E000, v20, OS_LOG_TYPE_DEFAULT, "Creating source entry from FTS entry", &v35, 2u);
      }

      v21 = BOMCopierSourceEntryNewFromFTSENT(v15, v9, a4);
      if (!v21)
      {
        if (*a1)
        {
          v22 = *(v15 + 48);
          *&v35.f_bsize = 0;
          v35.f_blocks = v22;
          v35.f_bfree = 0;
          LODWORD(v35.f_bfree) = *__error();
          if (a4)
          {
            v23 = *a4;
            *&v35.f_bsize = v23;
            if (v23)
            {
              LODWORD(v35.f_bfree) = BOMCopierErrorGetCode(v23);
            }
          }

          v24 = *(a1 + 24);
          if (v24 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241C0E000, v24, OS_LOG_TYPE_DEFAULT, "Could not create FTS entry. Calling error handler", buf, 2u);
          }

          *(a1 + 16) = (*a1)(a1, *(a1 + 8), &v35);
        }

        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2902, "next_filesystem_entry", "Could not create BOMCopierSourceEntry from FTS entry");
        return 0;
      }

      v10 = v21;
      BOMCopierSourceEntrySetHonorsSetuid(v21, *(a1 + 176));
      if (*(v15 + 86))
      {
        if (adjust_filesystem_entry_path(a1, v15, v10, a4))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3006, "next_filesystem_entry", "Could not adjust entry path");
          goto LABEL_19;
        }

        if (*(a1 + 88) != 1 || !is_apple_double(v10))
        {
          if (!synthesize_filesystem_stuff())
          {
            return v10;
          }

          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3038, "next_filesystem_entry", "Could not synthesize filesystem stuff");
          goto LABEL_19;
        }

        v28 = *(a1 + 24);
        if (v28 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35.f_bsize) = 0;
          _os_log_impl(&dword_241C0E000, v28, OS_LOG_TYPE_DEFAULT, "Consuming AppleDouble entry", &v35, 2u);
        }

        if (consume_source_entry(v10, a4))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3022, "next_filesystem_entry", "Could not consume the source entry");
          goto LABEL_19;
        }

        v33 = *(a1 + 24);
        if (v33 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35.f_bsize) = 0;
          _os_log_impl(&dword_241C0E000, v33, OS_LOG_TYPE_DEFAULT, "Ignored AppleDouble", &v35, 2u);
        }

        return next_filesystem_entry(a1, 0, a3, a4);
      }

      else
      {
        if (*(a1 + 400) == 1)
        {
          v25 = *(a1 + 24);
          if (v25 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35.f_bsize) = 0;
            _os_log_impl(&dword_241C0E000, v25, OS_LOG_TYPE_DEFAULT, "Synthesizing parent entry from FTS root entry", &v35, 2u);
          }

          v26 = BOMCopierSourceEntryNewFromFTSENT(v15, v9, a4);
          if (!v26)
          {
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2928, "next_filesystem_entry", "Could not create parent from FTS entry");
            goto LABEL_19;
          }

          v27 = v26;
          if (adjust_filesystem_entry_path(a1, v15, v26, a4))
          {
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2937, "next_filesystem_entry", "Could not adjust entry path");
            v11 = v27;
            goto LABEL_20;
          }
        }

        else
        {
          v27 = 0;
        }

        v29 = *(v15 + 88);
        if (v29 == 6 || v29 == 1)
        {
          v30 = ".";
        }

        else
        {
          memset(&v35, 0, 255);
          basename_r(*(v15 + 48), &v35);
          v30 = &v35;
        }

        BOMCopierSourceEntrySetPath(v10, v30);
        BOMCopierSourceEntrySetRoot(v10, 1);
        if (v27)
        {
          v31 = *(v15 + 88);
          v32 = *(a1 + 24);
          if (v31 == 1)
          {
            if (v32 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v35.f_bsize) = 0;
              _os_log_impl(&dword_241C0E000, v32, OS_LOG_TYPE_DEFAULT, "Pushing entry onto the pre-empt stack", &v35, 2u);
            }

            if (!push_preempt_stack(a1, v27, a4))
            {
              return v10;
            }

            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2977, "next_filesystem_entry", "Could not push parent entry onto the preempty stack");
          }

          else
          {
            if (v32 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v35.f_bsize) = 0;
              _os_log_impl(&dword_241C0E000, v32, OS_LOG_TYPE_DEFAULT, "Pushing root entry onto the pre-empt stack", &v35, 2u);
            }

            if (!push_preempt_stack(a1, v10, a4))
            {
              return v27;
            }

            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2990, "next_filesystem_entry", "Could not push parent entry onto the preempty stack");
          }

          BOMCopierSourceEntryFree(v27);
          goto LABEL_19;
        }
      }
    }

    else
    {
      fts_close(*(a1 + 160));
      *(a1 + 160) = 0;
      free(*(a1 + 136));
      *(a1 + 136) = 0;
      v19 = *(a1 + 24);
      if (v19 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35.f_bsize) = 0;
        _os_log_impl(&dword_241C0E000, v19, OS_LOG_TYPE_DEFAULT, "FTS exhausted", &v35, 2u);
      }

      v10 = 0;
      *a3 = 1;
    }
  }

  return v10;
}

uint64_t next_data_archive_entry(uint64_t a1, _BYTE *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 304);
  if (!v5)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3268, "next_data_archive_entry", "copier_source->data_archive is NULL");
    return 0;
  }

  v7 = 512;
  if (!*(a1 + 272))
  {
    v7 = 0;
  }

  if (*(a1 + 384))
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v17 = 0;
  v9 = data_archive_read_entry(v5, &v17);
  if (!v9)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3290, "next_data_archive_entry", "Could not read next data_archive entry: %s", *(v17 + 4));
    release_error(v17);
    return 0;
  }

  v10 = v9;
  type = data_archive_entry_get_type(v9);
  v12 = *(a1 + 24);
  if (v12 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    v13 = data_archive_entry_path(v10);
    if (type > 4)
    {
      v14 = "?";
    }

    else
    {
      v14 = off_278D13420[type];
    }

    *buf = 136315394;
    v19 = v13;
    v20 = 2080;
    v21 = v14;
    _os_log_impl(&dword_241C0E000, v12, OS_LOG_TYPE_DEFAULT, "%s [%s]", buf, 0x16u);
  }

  if (type == 1)
  {
    *a2 = 1;
    data_archive_entry_free(v10);
    return 0;
  }

  if (type == 4)
  {
    data_archive_entry_free(v10);
    return next_data_archive_entry(a1, a2, a3);
  }

  else
  {
    v15 = BOMCopierSourceEntryNewFromDataArchive(*(a1 + 304), v10, v8, a3);
    data_archive_entry_free(v10);
  }

  return v15;
}

uint64_t push_preempt_stack(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 336);
  if (v5 || (v5 = BOMStackNew(), (*(a1 + 336) = v5) != 0))
  {
    BOMStackPush(v5, a2);
    return 0;
  }

  else
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4924, "push_preempt_stack", "Could not create empty preempt stack");
    return 0xFFFFFFFFLL;
  }
}

uint64_t populate_sequester_stack(uint64_t a1, void *a2)
{
  v4 = BOMStackNew();
  *(a1 + 376) = v4;
  if (v4)
  {
    v5 = *(a1 + 368);
    if (*(a1 + 93))
    {
      result = path_tree_node_push(*(a1 + 368), 0, v4, a2);
      if (!result)
      {
        return result;
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5179, "populate_sequester_stack", "Could not push root node %s onto the stack\n");
    }

    else
    {
      if (!*(v5 + 8))
      {
        return 0;
      }

      v7 = 0;
      while (!path_tree_node_push(*(*(v5 + 16) + 8 * v7), ".", *(a1 + 376), a2))
      {
        if (++v7 >= *(v5 + 8))
        {
          return 0;
        }
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5195, "populate_sequester_stack", "Could not push child %s of %s onto the stack\n");
    }
  }

  else
  {
    BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5158, "populate_sequester_stack", "Could not create empty sequester stack");
  }

  return 0xFFFFFFFFLL;
}

uint64_t *pop_replay_stack(void *a1)
{
  v2 = a1[43];
  if (!v2 || (result = BOMStackPop(v2)) == 0)
  {
    v4 = a1[44];
    if (!v4 || (result = BOMStackPop(v4)) == 0)
    {
      v5 = a1[45];
      if (!v5)
      {
        return 0;
      }

      result = BOMStackPop(v5);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t synthesize_filesystem_stuff()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v53 = *MEMORY[0x277D85DE8];
  if (*(v0 + 67) != 1 || BOMCopierSourceEntryGetType(v1) == 13)
  {
    goto LABEL_28;
  }

  v6 = *(v5 + 24);
  if (v6 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v6, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble entry", buf, 2u);
  }

  v7 = (*(v5 + 68) & 1) != 0 || *(v5 + 69) == 1 ? 4980740 : 4980736;
  v8 = v7 | *(v5 + 70);
  ActualPath = BOMCopierSourceEntryGetActualPath(v4);
  if ((copyfile(ActualPath, 0, 0, v8 | 0x10000) & v8) == 0)
  {
    goto LABEL_28;
  }

  memcpy(buf, "/tmp/.BC.T_XXXXXX", sizeof(buf));
  if (!mktemp(buf))
  {
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    BOMCopierErrorCapture(v3, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4015, "synthesize_apple_double", "Could not mktemp %s: %s");
    goto LABEL_15;
  }

  if (!copyfile(ActualPath, buf, 0, v8))
  {
    v14 = BOMCopierSourceEntryNewFromPath(buf, 0, v3);
    if (!v14)
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4034, "synthesize_apple_double", "Could not create BOMCopierSourceEntry from %s", buf);
      unlink(buf);
      goto LABEL_15;
    }

    v15 = v14;
    Path = BOMCopierSourceEntryGetPath(v4);
    bzero(__s, 0x400uLL);
    bzero(v47, 0x400uLL);
    dirname_r(Path, __s);
    basename_r(Path, v47);
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s/%s%s", __s, "._", v47);
    if (BOMCopierSourceEntrySetPath(v15, __str))
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4054, "synthesize_apple_double", "Could not create set path entry for %s");
LABEL_24:
      BOMCopierSourceEntryFree(v15);
      goto LABEL_15;
    }

    if (BOMCopierSourceEntrySetOption(v15, @"DeleteOnFree", *MEMORY[0x277CBED28]))
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4062, "synthesize_apple_double", "Could not set kBOMCopierSourceEntryDeleteOnFree option", v30);
      goto LABEL_24;
    }

    if (push_preempt_stack(v5, v15, v3))
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4070, "synthesize_apple_double", "Could not push synthetic AppleDouble entry", v30);
      goto LABEL_24;
    }

    v17 = *(v5 + 24);
    if (v17 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v52.st_dev = 136315138;
      *&v52.st_mode = ActualPath;
      _os_log_impl(&dword_241C0E000, v17, OS_LOG_TYPE_DEFAULT, "Synthesized AppleDouble from %s", &v52, 0xCu);
    }

LABEL_28:
    if (*(v5 + 66) != 1 || BOMCopierSourceEntryGetType(v4) == 13)
    {
      return 0;
    }

    v19 = *(v5 + 24);
    if (v19 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v19, OS_LOG_TYPE_DEFAULT, "Synthesizing resource fork entry", buf, 2u);
    }

    v20 = BOMCopierSourceEntryGetActualPath(v4);
    v31 = 0;
    if (asprintf(&v31, "%s%s", v20, "/..namedfork/rsrc") < 0)
    {
      v24 = *__error();
      v25 = __error();
      strerror(*v25);
      BOMCopierErrorCapture(v3, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3879, "synthesize_resource_fork", "Could not asprintf resource path for %s: %s");
      goto LABEL_39;
    }

    memset(&v52, 0, sizeof(v52));
    v21 = lstat(v31, &v52);
    free(v31);
    if (v21)
    {
      if (*__error() != 2)
      {
        v22 = *__error();
        v23 = __error();
        strerror(*v23);
        BOMCopierErrorCapture(v3, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3892, "synthesize_resource_fork", "Could not lstat resource path for %s: %s");
        goto LABEL_39;
      }
    }

    else if (v52.st_size)
    {
      v26 = BOMCopierSourceEntryNewFromResourceFork(v20, v3);
      if (v26)
      {
        v27 = v26;
        v28 = BOMCopierSourceEntryGetPath(v4);
        bzero(buf, 0x400uLL);
        memset(v47, 0, 255);
        dirname_r(v28, buf);
        basename_r(v28, v47);
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *__str = 0u;
        v33 = 0u;
        snprintf(__str, 0xFFuLL, "%s%s", v47, "/..namedfork/rsrc");
        bzero(__s, 0x400uLL);
        snprintf(__s, 0x400uLL, "%s/%s", buf, __str);
        if (BOMCopierSourceEntrySetPath(v27, __s))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3935, "synthesize_resource_fork", "Could not create set path entry for %s");
        }

        else if (BOMCopierSourceEntrySetParent(v27, buf))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3943, "synthesize_resource_fork", "Could not create set entry parent for %s");
        }

        else if (BOMCopierSourceEntrySetName(v27, __str))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3951, "synthesize_resource_fork", "Could not create set entry name for %s");
        }

        else
        {
          if (!push_preempt_stack(v5, v27, v3))
          {
            v29 = *(v5 + 24);
            if (v29)
            {
              if (os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
              {
                *v48 = 136315138;
                v49 = v20;
                _os_log_impl(&dword_241C0E000, v29, OS_LOG_TYPE_DEFAULT, "Synthesized resource fork from %s", v48, 0xCu);
              }
            }

            return 0;
          }

          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3959, "synthesize_resource_fork", "Could not push synthetic resource fork entry");
        }

        BOMCopierSourceEntryFree(v27);
      }

      else
      {
        *buf = v52;
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3914, "synthesize_resource_fork", "Could not create BOMCopierSourceEntry from %s");
      }

LABEL_39:
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3853, "synthesize_filesystem_stuff", "Could not discover resource fork");
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v10 = *__error();
  v11 = __error();
  strerror(*v11);
  BOMCopierErrorCapture(v3, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4022, "synthesize_apple_double", "Could not copyfile %s to %s: %s", ActualPath);
LABEL_15:
  BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3831, "synthesize_filesystem_stuff", "Could not synthesize the AppleDouble file");
  return 0xFFFFFFFFLL;
}

uint64_t adjust_filesystem_entry_path(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = ".";
  if (*(a1 + 93))
  {
    v6 = "";
  }

  v7 = (*(a2 + 48) + *(a1 + 152) - *(a1 + 144) + *(a1 + 93));
  __s = 0;
  v8 = asprintf(&__s, "%s%s", v6, v7);
  if (!__s || v8 < 0)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    BOMCopierErrorCapture(a4, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3784, "adjust_filesystem_entry_path", "Could not asprintf the entry_path: %s", v12);
    return 1;
  }

  else if (BOMCopierSourceEntrySetPath(a3, __s))
  {
    v9 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3797, "adjust_filesystem_entry_path", "Could not set the entry path");
    free(__s);
  }

  else
  {
    free(__s);
    return 0;
  }

  return v9;
}

char *is_apple_double(void *a1)
{
  Type = BOMCopierSourceEntryGetType(a1);
  if (Type != 15 && Type != 8)
  {
    return 0;
  }

  result = BOMCopierSourceEntryGetName(a1);
  if (!result)
  {
    return result;
  }

  if (*result == 46)
  {
    return (result[1] == 95);
  }

  else
  {
    return 0;
  }
}

uint64_t consume_source_entry(unsigned int *a1, void *a2)
{
  v4 = BOMCopierSourceEntrySkip(a1, 0, 0, a2);
  if (v4)
  {
    BOMCopierErrorCapture(a2, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4090, "consume_source_entry", "Could not skip source entry");
  }

  else
  {
    BOMCopierSourceEntryFree(a1);
  }

  return v4;
}

uint64_t push_replay_stack(void *a1, uint64_t a2, int a3, void *a4)
{
  if (a3 == 3)
  {
    v7 = a1[45];
    if (!v7)
    {
      v7 = BOMStackNew();
      a1[45] = v7;
      if (!v7)
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4981, "push_replay_stack", "Could not create empty replay directory stack");
        return 0xFFFFFFFFLL;
      }
    }

LABEL_11:
    BOMStackPush(v7, a2);
    return 0;
  }

  if (a3 != 2)
  {
    v7 = a1[43];
    if (!v7)
    {
      v7 = BOMStackNew();
      a1[43] = v7;
      if (!v7)
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4951, "push_replay_stack", "Could not create empty replay symlink stack");
        return 0xFFFFFFFFLL;
      }
    }

    goto LABEL_11;
  }

  v7 = a1[44];
  if (v7)
  {
    goto LABEL_11;
  }

  v7 = BOMStackNew();
  a1[44] = v7;
  if (v7)
  {
    goto LABEL_11;
  }

  BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4966, "push_replay_stack", "Could not create empty replay AppleDouble stack");
  return 0xFFFFFFFFLL;
}

uint64_t synthesize_replay_apple_double(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = BOMCopierSourceEntryNew(17, a3);
  if (v6)
  {
    v7 = v6;
    v8 = BOMCopierSourceEntryGetName(a2) + 2;
    v9 = strdup(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 80);
      if (v11)
      {
        v12 = strlen(v11);
        v10[strlen(v10) - v12] = 0;
      }

      if (BOMCopierSourceEntrySetAppleDoubleTarget(v7, v10))
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4265, "synthesize_replay_apple_double", "Could not create set AppleDouble target for replay AppleDouble file");
        free(v10);
      }

      else
      {
        Path = BOMCopierSourceEntryGetPath(a2);
        v15 = *(a1 + 24);
        if (v15)
        {
          if (os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v18 = Path;
            v19 = 2080;
            v20 = v10;
            _os_log_impl(&dword_241C0E000, v15, OS_LOG_TYPE_DEFAULT, "Synthesizing replay AppleDouble from %s to %s", buf, 0x16u);
          }
        }

        free(v10);
        if (BOMCopierSourceEntrySetPath(v7, Path))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4280, "synthesize_replay_apple_double", "Could not set entry path for replay AppleDouble file");
        }

        else if (copy_entry_metadata(a2, v7, a3))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4288, "synthesize_replay_apple_double", "Could not copy metadata from the source entry to its replay apple double");
        }

        else
        {
          result = push_replay_stack(a1, v7, 2, a3);
          if (!result)
          {
            return result;
          }

          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4296, "synthesize_replay_apple_double", "Could not push the synthetic replay AppleDouble");
        }
      }
    }

    else
    {
      v13 = __error();
      strerror(*v13);
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4248, "synthesize_replay_apple_double", "Could not duplicate %s: %s");
    }

    BOMCopierSourceEntryFree(v7);
  }

  else
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4232, "synthesize_replay_apple_double", "Could not create BOMCopierSourceEntry for replay AppleDouble file");
  }

  return 0xFFFFFFFFLL;
}

uint64_t __add_sequester_entry_block_invoke(void *a1, const char *a2, int a3)
{
  v5 = *(a1[4] + 8);
  if (!*(v5 + 24))
  {
    v18 = strlen(a2);
    v19 = a1[6];
    if (*(v19 + 93))
    {
      v20 = "__MACOSX";
    }

    else
    {
      v20 = ".";
    }

    if (!strncmp(a2, v20, v18))
    {
      v21 = *(v19 + 368);
      if (v21)
      {
        result = 0;
        *(v5 + 24) = v21;
        return result;
      }

      *(*(a1[4] + 8) + 24) = path_tree_node_create(a2, a1[7]);
      v23 = *(*(a1[4] + 8) + 24);
      if (v23)
      {
        result = 0;
        *(a1[6] + 368) = v23;
        return result;
      }

      BOMCopierErrorCapture(a1[7], 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5086, "add_sequester_entry_block_invoke", "Could not create root path tree node");
    }

    else
    {
      BOMCopierErrorCapture(a1[7], 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5076, "add_sequester_entry_block_invoke", "I was expecting %s not %s");
    }

    return 0xFFFFFFFFLL;
  }

  *(*(a1[5] + 8) + 24) = 0;
  v7 = a1[4];
  v8 = *(*(v7 + 8) + 24);
  if (*(v8 + 8))
  {
    v9 = 0;
    do
    {
      v10 = *(a1[5] + 8);
      if (*(v10 + 24))
      {
        break;
      }

      v11 = *(*(v8 + 16) + 8 * v9);
      if (!strncmp(a2, *v11, 0xFFuLL))
      {
        *(v10 + 24) = v11;
        v7 = a1[4];
      }

      ++v9;
      v8 = *(*(v7 + 8) + 24);
    }

    while (v9 < *(v8 + 8));
  }

  v12 = a1[5];
  v13 = *(*(v12 + 8) + 24);
  if (v13)
  {
    goto LABEL_27;
  }

  v14 = a1[7];
  if (a2)
  {
    v15 = path_tree_node_create(a2, a1[7]);
    if (!v15)
    {
      BOMCopierErrorCapture(v14, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5390, "path_tree_node_add_child", "Could not create child node for %s\n", a2);
      goto LABEL_26;
    }

    v16 = *(v8 + 8);
    v17 = malloc_type_realloc(*(v8 + 16), 8 * (v16 + 1), 0x2BF6FEB6uLL);
    if (v17)
    {
      v17[v16] = v15;
      *(v8 + 8) = v16 + 1;
      *(v8 + 16) = v17;
      goto LABEL_26;
    }

    v24 = __error();
    BOMCopierErrorCapture(v14, *v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5402, "path_tree_node_add_child", "Could not reallocate new children list\n");
    path_tree_node_release(v15);
  }

  else
  {
    BOMCopierErrorCapture(a1[7], 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5382, "path_tree_node_add_child", "child_name is NULL");
  }

  v15 = 0;
LABEL_26:
  *(*(a1[5] + 8) + 24) = v15;
  v12 = a1[5];
  v13 = *(*(v12 + 8) + 24);
  if (!v13)
  {
    BOMCopierErrorCapture(a1[7], 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5121, "add_sequester_entry_block_invoke", "Could not add child %s to %s");
    return 0xFFFFFFFFLL;
  }

LABEL_27:
  if (a3)
  {
    *(v13 + 24) = a1[8];
    v12 = a1[5];
  }

  result = 0;
  *(*(a1[4] + 8) + 24) = *(*(v12 + 8) + 24);
  return result;
}

void *path_tree_node_create(const char *a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5320, "path_tree_node_create", "name is NULL");
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10B0040ECAA58F3uLL);
  if (!v4)
  {
    v9 = __error();
    BOMCopierErrorCapture(a2, *v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5327, "path_tree_node_create", "Could not allocate node");
    return v4;
  }

  v5 = strdup(a1);
  *v4 = v5;
  if (!v5)
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    BOMCopierErrorCapture(a2, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5334, "path_tree_node_create", "Could not strdup %s: %s", a1, v8);
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t copy_entry_metadata(uint64_t a1, uint64_t a2, void *a3)
{
  BOMCopierSourceEntryGetPath(a1);
  BOMCopierSourceEntryGetPath(a2);
  Mode = BOMCopierSourceEntryGetMode(a1);
  if (BOMCopierSourceEntrySetMode(a2, Mode))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4839, "copy_entry_metadata", "Could not set mode for entry %s");
  }

  else
  {
    UserID = BOMCopierSourceEntryGetUserID(a1);
    if (BOMCopierSourceEntrySetUserID(a2, UserID))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4848, "copy_entry_metadata", "Could not set uid for entry %s");
    }

    else
    {
      GroupID = BOMCopierSourceEntryGetGroupID(a1);
      if (BOMCopierSourceEntrySetGroupID(a2, GroupID))
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4857, "copy_entry_metadata", "Could not set gid for entry %s");
      }

      else
      {
        v12 = 0uLL;
        if (BOMCopierSourceEntryGetAccessTime(a1, &v12))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4866, "copy_entry_metadata", "Could not get access time for entry %s");
        }

        else if (BOMCopierSourceEntrySetAccessTime(a2, v12, *(&v12 + 1)))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4873, "copy_entry_metadata", "Could not set access time for entry %s");
        }

        else
        {
          v11 = 0uLL;
          if (BOMCopierSourceEntryGetModificationTime(a1, &v11))
          {
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4882, "copy_entry_metadata", "Could not get modification time for entry %s");
          }

          else if (BOMCopierSourceEntrySetModificationTime(a2, v11, *(&v11 + 1)))
          {
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4889, "copy_entry_metadata", "Could not set modification time for entry %s");
          }

          else
          {
            v10 = 0uLL;
            if (BOMCopierSourceEntryGetStatusTime(a1, &v10))
            {
              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4898, "copy_entry_metadata", "Could not get status time for entry %s");
            }

            else
            {
              result = BOMCopierSourceEntrySetStatusTime(a2, v10, *(&v10 + 1));
              if (!result)
              {
                return result;
              }

              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4905, "copy_entry_metadata", "Could not set status time for entry %s");
            }
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t path_tree_node_push(uint64_t a1, const char *a2, char *a3, void *a4)
{
  __s = 0;
  if (a2)
  {
    asprintf(&__s, "%s/%s");
  }

  else
  {
    asprintf(&__s, "%s");
  }

  if (__s)
  {
    if (*(a1 + 8))
    {
      v8 = 0;
      while (!path_tree_node_push(*(*(a1 + 16) + 8 * v8), __s, a3, a4))
      {
        if (++v8 >= *(a1 + 8))
        {
          goto LABEL_9;
        }
      }

      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5449, "path_tree_node_push", "Could not push child %s of %s onto the stack\n");
      goto LABEL_21;
    }

LABEL_9:
    v9 = *(a1 + 24);
    if (v9)
    {
LABEL_10:
      BOMStackPush(a3, v9);
      free(__s);
      return 0;
    }

    v12 = BOMCopierSourceEntryNew(6, a4);
    if (v12)
    {
      v9 = v12;
      if (BOMCopierSourceEntrySetPath(v12, __s))
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5470, "path_tree_node_push", "Could not path for source entry of %s\n");
      }

      else
      {
        if (!BOMCopierSourceEntrySetMode(v9, 16893))
        {
          goto LABEL_10;
        }

        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5479, "path_tree_node_push", "Could not mode for source entry of %s\n");
      }

      BOMCopierSourceEntryFree(v9);
    }

    else
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5462, "path_tree_node_push", "Could not create source entry for %s\n");
    }

LABEL_21:
    free(__s);
    return 0xFFFFFFFFLL;
  }

  v11 = __error();
  BOMCopierErrorCapture(a4, *v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5439, "path_tree_node_push", "Could not create node path for %s and %s\n", a2, *a1);
  return 0xFFFFFFFFLL;
}

char *BOMNewPathKey(unsigned int a1, char *__s, void *a3)
{
  v3 = 0;
  if (__s && a3)
  {
    v7 = strlen(__s);
    v8 = BOM_malloc(v7 + 5);
    v3 = v8;
    if (v8)
    {
      *a3 = v7 + 5;
      *v8 = bswap32(a1);
      strlcpy(v8 + 4, __s, v7 + 1);
    }

    else
    {
      v9 = *MEMORY[0x277D85DF8];
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "malloc: %s\n", v11);
    }
  }

  return v3;
}

_DWORD *BOMNewPathValue(unsigned int a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = BOM_malloc(8uLL);
  if (result)
  {
    *a3 = 8;
    *result = bswap32(a1);
    result[1] = bswap32(a2);
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v7, "malloc: %s\n", v9);
    return 0;
  }

  return result;
}

unsigned int *BOMPathIDFromPathKey(unsigned int *result)
{
  if (result)
  {
    return bswap32(*result);
  }

  return result;
}

uint64_t BOMBlockIDFromPathValue(uint64_t result)
{
  if (result)
  {
    return bswap32(*(result + 4));
  }

  return result;
}

char *BOMCopierDestinationNew(char *__s, const __CFDictionary *a2, void *a3)
{
  v176 = *MEMORY[0x277D85DE8];
  if (!(__s | a2))
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 621, "BOMCopierDestinationNew", "path and options are NULL");
    return 0;
  }

  if (__s && strlen(__s) >= 0x400)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 630, "BOMCopierDestinationNew", "maximum path length exceeded: %ld");
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x170uLL, 0x10B004067826777uLL);
  if (!v6)
  {
    v24 = __error();
    BOMCopierErrorCapture(a3, *v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 644, "BOMCopierDestinationNew", "Could not allocate empty BOMCopierDestination");
    return v6;
  }

  *(v6 + 2) = geteuid();
  *(v6 + 124) = 0x10000;
  *(v6 + 36) = -1;
  *(v6 + 29) = 0;
  v6[297] = 1;
  *(v6 + 82) = -1;
  v7 = BOMHardLinkTableNew();
  *(v6 + 9) = v7;
  if (!v7)
  {
    v25 = *__error();
    BOMCopierErrorCapture(a3, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 662, "BOMCopierDestinationNew", "Could not create BOMHardLinkTable");
    goto LABEL_323;
  }

  *(v6 + 4) = -1;
  if (!geteuid())
  {
    v6[302] = 1;
  }

  if (a2)
  {
    TypeID = CFBooleanGetTypeID();
    Value = CFDictionaryGetValue(a2, @"useFilesystemCache");
    if (Value)
    {
      v10 = Value;
      if (TypeID != CFGetTypeID(Value))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2782, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseFilesystemCacheKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      if (CFEqual(v10, *MEMORY[0x277CBED10]) == 1)
      {
        v6[40] = 1;
      }
    }

    v11 = CFDictionaryGetValue(a2, @"applySourcePermissions");
    if (v11)
    {
      v12 = v11;
      if (TypeID != CFGetTypeID(v11))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2797, "parse_copier_destination_options", "kBOMCopierDestinationOptionApplySourcePermissionsKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      v6[43] = CFEqual(v12, *MEMORY[0x277CBED28]) != 0;
    }

    v13 = CFDictionaryGetValue(a2, @"createArchive");
    if (v13)
    {
      if (TypeID != CFGetTypeID(v13))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2809, "parse_copier_destination_options", "kBOMCopierDestinationOptionCreateArchiveKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      *(v6 + 11) = 1;
    }

    v14 = CFNumberGetTypeID();
    v15 = CFDictionaryGetValue(a2, @"libarchiveFormat");
    if (v15)
    {
      v16 = v15;
      if (v14 != CFGetTypeID(v15))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2823, "parse_copier_destination_options", "kBOMCopierDestinationOptionLibarchiveFormatKey must be a CFNumberRef");
        goto LABEL_323;
      }

      valuePtr[0].st_dev = -1;
      if (!CFNumberGetValue(v16, kCFNumberSInt32Type, valuePtr))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2831, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
        goto LABEL_323;
      }

      *(v6 + 31) = valuePtr[0].st_dev;
    }

    v17 = CFDictionaryGetValue(a2, @"libarchiveFilter");
    if (v17)
    {
      v18 = v17;
      if (v14 != CFGetTypeID(v17))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2843, "parse_copier_destination_options", "kBOMCopierDestinationOptionLibarchiveFilterKey must be a CFNumberRef");
        goto LABEL_323;
      }

      valuePtr[0].st_dev = -1;
      if (!CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2851, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
        goto LABEL_323;
      }

      *(v6 + 32) = valuePtr[0].st_dev;
    }

    v19 = CFDictionaryGetValue(a2, @"createAppleArchive");
    if (v19)
    {
      if (TypeID != CFGetTypeID(v19))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2863, "parse_copier_destination_options", "kBOMCopierDestinationOptionCreateAppleArchiveKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      *(v6 + 11) = 2;
    }

    v20 = CFStringGetTypeID();
    v21 = CFDictionaryGetValue(a2, @"compressAppleArchive");
    if (!v21)
    {
      goto LABEL_59;
    }

    v22 = v21;
    if (v20 == CFGetTypeID(v21))
    {
      if (CFEqual(v22, @"none") == 1)
      {
        v23 = 0;
      }

      else if (CFEqual(v22, @"lz4") == 1)
      {
        v23 = 256;
      }

      else if (CFEqual(v22, @"zlib") == 1)
      {
        v23 = 1285;
      }

      else if (CFEqual(v22, @"lzma") == 1)
      {
        v23 = 774;
      }

      else if (CFEqual(v22, @"lzfse") == 1)
      {
        v23 = 2049;
      }

      else
      {
        if (CFEqual(v22, @"lzbitmap") != 1)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2911, "parse_copier_destination_options", "Unsupported AppleArchive compression algorithm");
          goto LABEL_323;
        }

        v23 = 1794;
      }

      *(v6 + 41) = v23;
LABEL_59:
      v26 = CFDictionaryGetValue(a2, @"outputFD");
      if (v26)
      {
        v27 = v26;
        if (v14 != CFGetTypeID(v26))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2921, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputFileDescriptorKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v27, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2929, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 12) = valuePtr[0].st_dev;
      }

      v28 = CFWriteStreamGetTypeID();
      v29 = CFDictionaryGetValue(a2, @"outputStream");
      if (v29)
      {
        v30 = v29;
        if (v28 != CFGetTypeID(v29))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2943, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputCFWriteStreamKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        if (CFWriteStreamGetStatus(v30) != kCFStreamStatusOpen)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2950, "parse_copier_destination_options", "CFWriteStream is not open");
          goto LABEL_323;
        }

        *(v6 + 7) = v30;
      }

      v31 = CFDictionaryGetValue(a2, @"output2Nowhere");
      if (v31)
      {
        v32 = v31;
        if (TypeID != CFGetTypeID(v31))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2962, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputToNowhereKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        if (CFEqual(v32, *MEMORY[0x277CBED28]) == 1)
        {
          *(v6 + 11) = 3;
        }
      }

      if (CFDictionaryContainsKey(a2, @"archs") == 1)
      {
        memset(valuePtr, 0, 48);
        if (BOMCopierPrepareMatchContext(a2, valuePtr, a3))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2979, "parse_copier_destination_options", "Could not prepare binary matching context");
          goto LABEL_323;
        }

        *(v6 + 48) = valuePtr[0].st_dev;
        *(v6 + 25) = valuePtr[0].st_ino;
      }

      v33 = CFDictionaryGetValue(a2, @"enableAtomicCopies");
      if (v33)
      {
        v34 = v33;
        if (TypeID != CFGetTypeID(v33))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2992, "parse_copier_destination_options", "kBOMCopierDestinationOptionPerformAtomicCopies must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[297] = CFEqual(*MEMORY[0x277CBED28], v34) != 0;
      }

      v35 = CFDictionaryGetValue(a2, @"useDefaultDirectoryPermissions");
      if (v35)
      {
        v36 = v35;
        if (TypeID != CFGetTypeID(v35))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3004, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseDefaultDirectoryPermissions must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[296] = CFEqual(*MEMORY[0x277CBED28], v36) != 0;
      }

      v37 = CFDictionaryGetValue(a2, @"useAppleFSCompression");
      if (v37)
      {
        v38 = v37;
        if (TypeID != CFGetTypeID(v37))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3016, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseAppleFSCompression must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[112] = CFEqual(*MEMORY[0x277CBED28], v38) != 0;
      }

      v39 = CFDictionaryGetValue(a2, @"preserveAppleFSCompression");
      if (v39)
      {
        v40 = v39;
        if (TypeID != CFGetTypeID(v39))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3028, "parse_copier_destination_options", "kBOMCopierDestinationOptionPreserveAppleFSCompression must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[113] = CFEqual(*MEMORY[0x277CBED28], v40) != 0;
      }

      v41 = CFDictionaryGetValue(a2, @"AppleFSCompressionType");
      if (v41)
      {
        v42 = v41;
        if (v14 != CFGetTypeID(v41))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3041, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleFSCompressionType must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v42, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3049, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 29) = valuePtr[0].st_dev;
      }

      v43 = CFDictionaryGetValue(a2, @"AppleFSCompressionFlags");
      if (v43)
      {
        v44 = v43;
        if (v14 != CFGetTypeID(v43))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3061, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleFSCompressionFlags must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v44, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3069, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 30) = valuePtr[0].st_dev;
      }

      v45 = CFDictionaryGetValue(a2, @"enforceDestinationEncapsulation");
      if (v45)
      {
        v46 = v45;
        if (TypeID != CFGetTypeID(v45))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3081, "parse_copier_destination_options", "kBOMCopierDestinationOptionEnforceDestinationEncapsulationKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[298] = CFEqual(*MEMORY[0x277CBED28], v46) != 0;
      }

      v47 = CFDictionaryGetValue(a2, @"enforceDestinationLocation");
      if (v47)
      {
        v48 = v47;
        if (TypeID != CFGetTypeID(v47))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3093, "parse_copier_destination_options", "kBOMCopierDestinationOptionEnforceDestinationLocationKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[299] = CFEqual(*MEMORY[0x277CBED28], v48) != 0;
      }

      v49 = CFDictionaryGetValue(a2, @"keepBinaries");
      if (v49)
      {
        v50 = v49;
        if (TypeID != CFGetTypeID(v49))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3105, "parse_copier_destination_options", "kBOMCopierDestinationKeepBinariesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[307] = CFEqual(*MEMORY[0x277CBED28], v50) != 0;
      }

      v51 = CFDictionaryGetValue(a2, @"keptFileList");
      if (v51)
      {
        v52 = v51;
        if (v20 != CFGetTypeID(v51))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3117, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileListKey must be a CFStringRef");
          goto LABEL_323;
        }

        v53 = CFStringGetLength(v52) + 1;
        v54 = malloc_type_calloc(1uLL, v53, 0x81EC8F95uLL);
        *(v6 + 40) = v54;
        if (!v54)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3127, "parse_copier_destination_options", "Could not allocate %ld bytes for path");
          goto LABEL_323;
        }

        if (!CFStringGetCString(v52, v54, v53, 0x8000100u))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3134, "parse_copier_destination_options", "Could not convert enumeration_bom_path string to C string");
          goto LABEL_323;
        }
      }

      v55 = CFDictionaryGetValue(a2, @"keepFilePattern");
      if (v55)
      {
        v56 = v55;
        if (v20 != CFGetTypeID(v55))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3144, "parse_copier_destination_options", "kBOMCopierDestinationKeepFilePatternKey must be a CFStringRef");
          goto LABEL_323;
        }

        v57 = CFStringGetLength(v56) + 1;
        buffer = malloc_type_calloc(1uLL, v57, 0xC98F3F83uLL);
        if (!buffer)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3154, "parse_copier_destination_options", "Could not allocate %ld bytes for pattern");
          goto LABEL_323;
        }

        if (CFStringGetCString(v56, buffer, v57, 0x8000100u))
        {
          v58 = malloc_type_malloc(0x20uLL, 0x10700404B019E81uLL);
          *(v6 + 42) = v58;
          if (v58)
          {
            if (regcomp(v58, buffer, 5))
            {
              v59 = *__error();
              v60 = __error();
              v61 = strerror(*v60);
              BOMCopierErrorCapture(a3, v59, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3177, "parse_copier_destination_options", "Could not compile regular expression from %s: %s", buffer, v61);
              v62 = buffer;
LABEL_140:
              free(v62);
              goto LABEL_323;
            }

            free(buffer);
            goto LABEL_142;
          }

          v63 = *__error();
          BOMCopierErrorCapture(a3, v63, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3169, "parse_copier_destination_options", "Could not allocate regular expression");
        }

        else
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3161, "parse_copier_destination_options", "Could not convert enumeration_bom_path string to C string");
        }

        v62 = buffer;
        goto LABEL_140;
      }

LABEL_142:
      v64 = CFDictionaryGetValue(a2, @"keptFileDirectory");
      if (v64)
      {
        v65 = v64;
        if (v20 != CFGetTypeID(v64))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3190, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileDirectoryKey must be a CFStringRef");
          goto LABEL_323;
        }

        v66 = CFStringGetLength(v65) + 1;
        v67 = malloc_type_calloc(1uLL, v66, 0x63F44015uLL);
        *(v6 + 43) = v67;
        if (!v67)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3200, "parse_copier_destination_options", "Could not allocate %ld bytes for kept file directory");
          goto LABEL_323;
        }

        if (!CFStringGetCString(v65, v67, v66, 0x8000100u))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3207, "parse_copier_destination_options", "Could not convert kept_file_directory string to C string");
          goto LABEL_323;
        }
      }

      v68 = CFDictionaryGetValue(a2, @"balanceKeptFiles");
      if (v68)
      {
        v69 = v68;
        if (TypeID != CFGetTypeID(v68))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3217, "parse_copier_destination_options", "kBOMCopierDestinationBalanceKeptFilesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v70 = CFEqual(*MEMORY[0x277CBED28], v69);
        v6[352] = v70 != 0;
        if (v70)
        {
          *(v6 + 89) = 100;
        }
      }

      v71 = CFDictionaryGetValue(a2, @"keptFileBalanceLimit");
      if (v71)
      {
        v72 = v71;
        if (v14 != CFGetTypeID(v71))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3234, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileBalanceLimitKey must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v72, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3242, "parse_copier_destination_options", "Could not convert the kept file balance limit to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        if (valuePtr[0].st_dev <= 0)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3248, "parse_copier_destination_options", "%d is out of range for kept file balance limit");
          goto LABEL_323;
        }

        *(v6 + 89) = valuePtr[0].st_dev;
      }

      v73 = CFDictionaryGetValue(a2, @"zlibCompressionLevel");
      if (v73)
      {
        v74 = v73;
        if (v14 != CFGetTypeID(v73))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3261, "parse_copier_destination_options", "kBOMCopierDestinationOptionZlibCompressionLevel must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v74, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3269, "parse_copier_destination_options", "Could not convert the zlib compression level to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        if ((valuePtr[0].st_dev - 10) <= 0xFFFFFFF4)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3275, "parse_copier_destination_options", "%d is out of range for Zlib compression");
          goto LABEL_323;
        }

        *(v6 + 36) = valuePtr[0].st_dev;
      }

      v75 = CFDictionaryGetValue(a2, @"symlinkTreatment");
      if (v75)
      {
        v76 = v75;
        if (CFGetTypeID(v75) != v20)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3291, "parse_copier_destination_options", "kBOMCopierDestinationOptionSymlinkTreatmentKey is not a CFStringRef");
          goto LABEL_323;
        }

        if (CFEqual(v76, @"unlink"))
        {
          v77 = 1;
        }

        else if (CFEqual(v76, @"follow"))
        {
          v77 = 2;
        }

        else
        {
          if (!CFEqual(v76, @"error"))
          {
            BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3306, "parse_copier_destination_options", "Unknown value for kBOMCopierOptionSymlinkTreatmentKey");
            goto LABEL_323;
          }

          v77 = 0;
        }

        *(v6 + 70) = v77;
      }

      v78 = CFDictionaryGetValue(a2, @"persistRestrictedFlags");
      if (v78)
      {
        v79 = v78;
        if (TypeID != CFGetTypeID(v78))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3316, "parse_copier_destination_options", "kBOMCopierDestinationPersistRestrictedFlags must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[303] = CFEqual(*MEMORY[0x277CBED28], v79) != 0;
      }

      v80 = CFDictionaryGetValue(a2, @"preserveRestrictedFlags");
      if (v80)
      {
        v81 = v80;
        if (TypeID != CFGetTypeID(v80))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3328, "parse_copier_destination_options", "kBOMCopierDestinationPreserveRestrictedFlags must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[302] = CFEqual(*MEMORY[0x277CBED28], v81) != 0;
      }

      v82 = CFDictionaryGetValue(a2, @"persistRootless");
      if (v82)
      {
        v83 = v82;
        if (TypeID != CFGetTypeID(v82))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3340, "parse_copier_destination_options", "kBOMCopierDestinationOptionPersistRootlessExtendedAttribute must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[301] = CFEqual(*MEMORY[0x277CBED28], v83) != 0;
      }

      v84 = CFDictionaryGetValue(a2, @"initialInode");
      if (v84)
      {
        v85 = v84;
        if (v14 != CFGetTypeID(v84))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3352, "parse_copier_destination_options", "kBOMCopierDestinationOptionInitialInodeKey must be a CFNumberRef");
          goto LABEL_323;
        }

        *&valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v85, kCFNumberLongLongType, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3360, "parse_copier_destination_options", "Could not convert kBOMCopierDestinationOptionInitialInodeKey to kCFNumberLongLongType");
          goto LABEL_323;
        }

        *(v6 + 8) = *&valuePtr[0].st_dev;
      }

      v86 = CFDictionaryGetValue(a2, @"skipTerminator");
      if (v86)
      {
        v87 = v86;
        if (TypeID != CFGetTypeID(v86))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3372, "parse_copier_destination_options", "kBOMCopierDestinationOptionSkipCPIOTerminatorKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[148] = CFEqual(*MEMORY[0x277CBED28], v87) != 0;
      }

      v88 = CFDictionaryGetValue(a2, @"segmentFileSize");
      if (v88)
      {
        v89 = v88;
        if (v14 != CFGetTypeID(v88))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3384, "parse_copier_destination_options", "kBOMCopierDestinationOptionSegmentFileSizeKey must be a CFNumberRef");
          goto LABEL_323;
        }

        *&valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v89, kCFNumberLongLongType, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3392, "parse_copier_destination_options", "Could not convert kBOMCopierDestinationOptionSegmentFileSizeKey to kCFNumberLongLongType");
          goto LABEL_323;
        }

        *(v6 + 19) = *&valuePtr[0].st_dev;
      }

      v90 = CFDictionaryGetValue(a2, @"appleDoubleMergeACLs");
      if (v90)
      {
        v91 = v90;
        if (TypeID != CFGetTypeID(v90))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3404, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleDoubleMergeACLsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[160] = CFEqual(*MEMORY[0x277CBED28], v91) != 0;
      }

      v92 = CFDictionaryGetValue(a2, @"cloneFiles");
      if (v92)
      {
        v93 = v92;
        if (TypeID != CFGetTypeID(v92))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3416, "parse_copier_destination_options", "kBOMCopierDestinationOptionCloneFilesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[304] = CFEqual(*MEMORY[0x277CBED28], v93) != 0;
      }

      v94 = CFDictionaryGetValue(a2, @"removeSetuidPermissions");
      if (v94)
      {
        v95 = v94;
        if (TypeID != CFGetTypeID(v94))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3428, "parse_copier_destination_options", "kBOMCopierDestinationOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[305] = CFEqual(*MEMORY[0x277CBED28], v95) != 0;
      }

      v96 = CFDictionaryGetValue(a2, @"removeExecutablePermissions");
      if (v96)
      {
        v97 = v96;
        if (TypeID != CFGetTypeID(v96))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3440, "parse_copier_destination_options", "kBOMCopierDestinationOptionRemoveExecutablePermissionsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[306] = CFEqual(*MEMORY[0x277CBED28], v97) != 0;
      }

      v98 = CFDictionaryGetValue(a2, @"setStaticContent");
      if (v98)
      {
        v99 = v98;
        if (TypeID != CFGetTypeID(v98))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3452, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetStaticContentKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[41] = CFEqual(*MEMORY[0x277CBED28], v99) != 0;
      }

      v100 = CFDictionaryGetValue(a2, @"setSingleWriter");
      if (v100)
      {
        v101 = v100;
        if (TypeID != CFGetTypeID(v100))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3464, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetSingleWriterKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[42] = CFEqual(*MEMORY[0x277CBED28], v101) != 0;
      }

      v102 = CFDictionaryGetValue(a2, @"setDataProtectionClass");
      if (v102)
      {
        v103 = v102;
        if (v20 != CFGetTypeID(v102))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3476, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetDataProtectionClassKey must be a CFStringRef");
          goto LABEL_323;
        }

        v104 = CFEqual(v103, @"A");
        v105 = 1;
        if (v104 != 1)
        {
          if (CFEqual(v103, @"B") == 1)
          {
            v105 = 2;
          }

          else if (CFEqual(v103, @"C") == 1)
          {
            v105 = 3;
          }

          else
          {
            if (CFEqual(v103, @"D") != 1)
            {
              BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3494, "parse_copier_destination_options", "Unsupported data protection class");
              goto LABEL_323;
            }

            v105 = 4;
          }
        }

        *(v6 + 4) = v105;
        v6[12] = 1;
      }

      v106 = CFDataGetTypeID();
      v107 = CFDictionaryGetValue(a2, @"applyProvenance");
      if (v107)
      {
        v108 = v107;
        if (v106 != CFGetTypeID(v107))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3508, "parse_copier_destination_options", "kBOMCopierDestinationOptionApplyProvenanceKey must be a CFDataRef");
          goto LABEL_323;
        }

        Length = CFDataGetLength(v108);
        if (!Length)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3516, "parse_copier_destination_options", "kBOMCopierOptionApplyProvenanceKey has an invalid size");
          goto LABEL_323;
        }

        v110 = Length;
        v111 = malloc_type_malloc(Length, 0x6F1A1495uLL);
        if (!v111)
        {
          v168 = *__error();
          BOMCopierErrorCapture(a3, v168, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3523, "parse_copier_destination_options", "Could not allocate provenance data buffer");
          goto LABEL_323;
        }

        v112 = v111;
        BytePtr = CFDataGetBytePtr(v108);
        memcpy(v112, BytePtr, v110);
        *(v6 + 3) = v112;
        *(v6 + 4) = v110;
      }

      goto LABEL_249;
    }

    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2877, "parse_copier_destination_options", "kBOMCopierDestinationOptionCompressAppleArchiveKey must be a CFStringRef");
LABEL_323:
    BOMCopierDestinationFree(v6);
    return 0;
  }

LABEL_249:
  v114 = *(v6 + 11);
  if (v114 > 1)
  {
    if (v114 == 2)
    {
      if (__s)
      {
        v121 = AAFileStreamOpenWithPath(__s, 1537, 0x1A4u);
        *(v6 + 21) = v121;
        if (!v121)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1063, "BOMCopierDestinationNew", "Could not create AppleArchive byte stream at %s\n");
          goto LABEL_323;
        }
      }

      else if (*(v6 + 7))
      {
        v124 = AACustomByteStreamOpen();
        *(v6 + 21) = v124;
        if (!v124)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1079, "BOMCopierDestinationNew", "Could not create custom AppleArchive byte stream at %s\n");
          goto LABEL_323;
        }

        AACustomByteStreamSetData(v124, v6);
        AACustomByteStreamSetCloseProc(*(v6 + 21), apple_archive_close_callback_0);
        AACustomByteStreamSetWriteProc(*(v6 + 21), apple_archive_write_callback);
        v121 = *(v6 + 21);
      }

      else
      {
        v130 = *(v6 + 12);
        if (v130 == -1)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1091, "BOMCopierDestinationNew", "No output file descriptor\n");
          goto LABEL_323;
        }

        v121 = AAFileStreamOpenWithFD(v130, 0);
        *(v6 + 21) = v121;
        if (!v121)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1099, "BOMCopierDestinationNew", "Could not create AppleArchive byte stream from file descriptor\n");
          goto LABEL_323;
        }
      }

      v131 = AACompressionOutputStreamOpen(v121, *(v6 + 41), 0x100000uLL, 0, 0);
      *(v6 + 22) = v131;
      if (!v131)
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1118, "BOMCopierDestinationNew", "Could not create AppleArchive compression stream\n");
        goto LABEL_323;
      }

      v132 = AAEncodeArchiveOutputStreamOpen(v131, 0, 0, 0, 0);
      *(v6 + 23) = v132;
      if (!v132)
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1132, "BOMCopierDestinationNew", "Could not create AppleArchive encoder\n");
        goto LABEL_323;
      }
    }

    else if (v114 == 3 && __s)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1143, "BOMCopierDestinationNew", "I expect path to be NULL for nowhere destinations");
      goto LABEL_323;
    }
  }

  else if (v114)
  {
    if (v114 == 1)
    {
      v115 = archive_write_new();
      *(v6 + 17) = v115;
      if (!v115)
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 902, "BOMCopierDestinationNew", "Could not create archive");
        goto LABEL_323;
      }

      v116 = archive_write_set_format();
      if (v116)
      {
        v117 = archive_errno();
        strerror(v117);
        BOMCopierErrorCapture(a3, v116, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 910, "BOMCopierDestinationNew", "Could not set archive format: %s");
        goto LABEL_323;
      }

      v127 = archive_write_add_filter();
      if (v127)
      {
        v128 = v127;
        v129 = archive_errno();
        strerror(v129);
        BOMCopierErrorCapture(a3, v128, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 918, "BOMCopierDestinationNew", "Could not set archive filter: %s");
        goto LABEL_323;
      }

      if (*(v6 + 32) == 1 && *(v6 + 36) != -1)
      {
        snprintf(valuePtr, 0xFFuLL, "%d", *(v6 + 36));
        v134 = archive_write_set_filter_option();
        if (v134)
        {
          v135 = v134;
          v136 = archive_errno();
          strerror(v136);
          BOMCopierErrorCapture(a3, v135, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 937, "BOMCopierDestinationNew", "Could not set zlib compression level %s: %s");
          goto LABEL_323;
        }
      }

      if (*(v6 + 31) == 327680 && *(v6 + 36) != -1)
      {
        snprintf(valuePtr, 0xFFuLL, "%d", *(v6 + 36));
        v137 = archive_write_set_format_option();
        if (v137)
        {
          v138 = v137;
          v139 = archive_errno();
          strerror(v139);
          BOMCopierErrorCapture(a3, v138, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 954, "BOMCopierDestinationNew", "Could not set PKZip compression level %s: %s (%d)", valuePtr);
          goto LABEL_323;
        }
      }

      if (*(v6 + 8))
      {
        snprintf(valuePtr, 0xFFuLL, "%lld", *(v6 + 8));
        v145 = archive_write_set_format_option();
        if (v145)
        {
          v146 = v145;
          v147 = archive_errno();
          strerror(v147);
          BOMCopierErrorCapture(a3, v146, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 971, "BOMCopierDestinationNew", "Could not set cpio starting inode %s: %s");
          goto LABEL_323;
        }
      }

      if (v6[148] == 1)
      {
        v148 = archive_write_set_format_option();
        if (v148)
        {
          v149 = v148;
          v150 = archive_errno();
          strerror(v150);
          BOMCopierErrorCapture(a3, v149, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 984, "BOMCopierDestinationNew", "Could not enable cpio skip trailer %s");
          goto LABEL_323;
        }
      }

      if (__s)
      {
        v151 = archive_write_open_filename();
        if (v151)
        {
          v152 = v151;
          v153 = archive_errno();
          strerror(v153);
          BOMCopierErrorCapture(a3, v152, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 999, "BOMCopierDestinationNew", "Could not archive_write_open_filename %s: %s\n");
          goto LABEL_323;
        }
      }

      else
      {
        if (!*(v6 + 7))
        {
          if (*(v6 + 12) == -1)
          {
            BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1036, "BOMCopierDestinationNew", "No output file descriptor\n", v169);
          }

          else
          {
            v165 = archive_write_open_fd();
            if (!v165)
            {
              return v6;
            }

            v166 = v165;
            v167 = archive_errno();
            strerror(v167);
            BOMCopierErrorCapture(a3, v166, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1044, "BOMCopierDestinationNew", "Could not archive_write_open_fd %s: %s\n");
          }

          goto LABEL_323;
        }

        v159 = archive_write_open2();
        if (v159)
        {
          v160 = v159;
          v161 = archive_errno();
          strerror(v161);
          BOMCopierErrorCapture(a3, v160, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1028, "BOMCopierDestinationNew", "Could not archive_write_open2 %s: %s\n");
          goto LABEL_323;
        }
      }
    }
  }

  else
  {
    memset(&v173, 0, sizeof(v173));
    v118 = stat(__s, &v173);
    if (v118)
    {
      v119 = v118;
      if (*__error() != 2)
      {
        v125 = *__error();
        v126 = __error();
        strerror(*v126);
        BOMCopierErrorCapture(a3, v125, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 711, "BOMCopierDestinationNew", "Could not stat %s: %s");
        goto LABEL_323;
      }

      v6[284] = 0;
      if (dirname_r(__s, valuePtr) != valuePtr)
      {
        v120 = __error();
        strerror(*v120);
        BOMCopierErrorCapture(a3, v119, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 767, "BOMCopierDestinationNew", "Could not dirname %s: %s");
        goto LABEL_323;
      }

      if (basename_r(__s, v174) != v174)
      {
        v133 = __error();
        strerror(*v133);
        BOMCopierErrorCapture(a3, v119, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 777, "BOMCopierDestinationNew", "Could not basename %s: %s");
        goto LABEL_323;
      }

      if (make_path(0, valuePtr, a3))
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 785, "BOMCopierDestinationNew", "Could not make the parent_path %s");
        goto LABEL_323;
      }

      v156 = realpath_DARWIN_EXTSN(valuePtr, 0);
      if (!v156)
      {
        v162 = __error();
        strerror(*v162);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 793, "BOMCopierDestinationNew", "Could not realpath %s: %s");
        goto LABEL_323;
      }

      v157 = v156;
      v172 = 0;
      v171 = 0;
      if (get_volume_state(v156, &v171, a3))
      {
        v158 = __error();
        strerror(*v158);
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 814, "BOMCopierDestinationNew", "Could not get volume state for %s: %s");
        goto LABEL_323;
      }

      if (v6[12] == 1)
      {
        v6[12] = v171;
      }

      v6[20] = HIBYTE(v171);
      v6[300] = v172;
      asprintf(v6 + 36, "%s/%s", v157, v174);
      free(v157);
      if (!*(v6 + 36))
      {
        v164 = __error();
        strerror(*v164);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 839, "BOMCopierDestinationNew", "Could not construct resolve path from %s and %s: %s", v157);
        goto LABEL_323;
      }
    }

    else
    {
      v6[285] = (v173.st_mode & 0xF000) == 0x4000;
      if (v6[299] == 1)
      {
        memset(valuePtr, 0, 144);
        if (lstat(__s, valuePtr))
        {
          v122 = *__error();
          v123 = __error();
          strerror(*v123);
          BOMCopierErrorCapture(a3, v122, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 733, "BOMCopierDestinationNew", "Could not stat %s: %s");
          goto LABEL_323;
        }

        if ((valuePtr[0].st_mode & 0xF000) == 0xA000 && valuePtr[0].st_dev != v173.st_dev)
        {
          v154 = *__error();
          v155 = __error();
          strerror(*v155);
          BOMCopierErrorCapture(a3, v154, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 742, "BOMCopierDestinationNew", "%s exists on a different device from its target");
          goto LABEL_323;
        }
      }

      v6[284] = 1;
      v140 = realpath_DARWIN_EXTSN(__s, 0);
      if (!v140)
      {
        v144 = __error();
        strerror(*v144);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 849, "BOMCopierDestinationNew", "Could not realpath %s: %s");
        goto LABEL_323;
      }

      *(v6 + 36) = v140;
      BYTE2(valuePtr[0].st_dev) = 0;
      LOWORD(valuePtr[0].st_dev) = 0;
      volume_state = get_volume_state(v140, valuePtr, a3);
      if (volume_state)
      {
        v142 = volume_state;
        v143 = __error();
        strerror(*v143);
        BOMCopierErrorCapture(a3, v142, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 872, "BOMCopierDestinationNew", "Could not get volume state for %s: %s");
        goto LABEL_323;
      }

      if (v6[12] == 1)
      {
        v6[12] = valuePtr[0].st_dev;
      }

      v6[20] = BYTE1(valuePtr[0].st_dev);
      v6[300] = BYTE2(valuePtr[0].st_dev);
    }
  }

  return v6;
}

void BOMCopierDestinationFree(unsigned int *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 45);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 43);
    if (v4)
    {
      free(v4);
    }

    if (*(a1 + 42))
    {
      MEMORY[0x245CFC780]();
      free(*(a1 + 42));
    }

    v5 = a1[82];
    if (v5 != -1)
    {
      close(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      free(v6);
    }

    v7 = *(a1 + 36);
    if (v7)
    {
      free(v7);
    }

    v8 = *(a1 + 25);
    if (v8)
    {
      v9 = a1[48];
      if (v9)
      {
        v10 = 0;
        v11 = 16;
        do
        {
          v12 = *(*(a1 + 25) + v11);
          if (v12)
          {
            free(v12);
            v9 = a1[48];
          }

          ++v10;
          v11 += 32;
        }

        while (v10 < v9);
        v8 = *(a1 + 25);
      }

      free(v8);
    }

    v13 = *(a1 + 23);
    if (v13)
    {
      v14 = AAArchiveStreamClose(v13);
      if (v14)
      {
        v15 = *MEMORY[0x277D85DF8];
        v28 = v14;
        v16 = "Could not close AppleArchive encoder: %d\n";
LABEL_36:
        v22 = v15;
LABEL_37:
        fprintf(v22, v16, v28);
        return;
      }
    }

    v17 = *(a1 + 22);
    if (v17)
    {
      v18 = AAByteStreamClose(v17);
      if (v18)
      {
        v15 = *MEMORY[0x277D85DF8];
        v28 = v18;
        v16 = "Could not close AppleArchive compression stream: %d\n";
        goto LABEL_36;
      }
    }

    v20 = *(a1 + 21);
    if (v20)
    {
      v21 = AAByteStreamClose(v20);
      if (v21)
      {
        v15 = *MEMORY[0x277D85DF8];
        v28 = v21;
        v16 = "Could not close AppleArchive byte stream: %d\n";
        goto LABEL_36;
      }
    }

    if (*(a1 + 17))
    {
      if (archive_write_close())
      {
        v23 = *MEMORY[0x277D85DF8];
        v24 = archive_errno();
        v28 = strerror(v24);
        v16 = "Could not close archive %s\n";
LABEL_43:
        v22 = v23;
        goto LABEL_37;
      }

      if (archive_write_free())
      {
        v23 = *MEMORY[0x277D85DF8];
        v25 = archive_errno();
        v28 = strerror(v25);
        v16 = "Could not free archive: %s\n";
        goto LABEL_43;
      }
    }

    v26 = *(a1 + 13);
    if (v26)
    {
      BOMCopierDataAnalyzerFree(v26);
      *(a1 + 13) = 0;
    }

    v27 = *(a1 + 9);
    if (v27)
    {
      BOMHardLinkTableFree(v27);
    }

    free(a1);
  }

  else
  {
    v19 = *MEMORY[0x277D85DF8];

    fwrite("copier_destination is NULL", 0x1AuLL, 1uLL, v19);
  }
}

uint64_t make_path(NSObject *a1, char *__s1, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = strdup(__s1);
  if (!v6)
  {
    v15 = *__error();
    v16 = __error();
    v17 = strerror(*v16);
    BOMCopierErrorCapture(a3, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3553, "make_path", "Could not duplicate %s: %s", __s1, v17);
    return 1;
  }

  v7 = v6;
  v8 = *v6;
  v9 = v8 == 47;
  if (v8 == 47)
  {
    ++v6;
  }

  v10 = strchr(v6, 47);
  if (!v10)
  {
LABEL_13:
    if (mkdir(v7, 0x1EDu))
    {
      if (*__error() != 17)
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        BOMCopierErrorCapture(a3, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3614, "make_path", "Could not mkdir %s: %s");
        goto LABEL_22;
      }
    }

    else if (a1)
    {
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = v7;
        _os_log_impl(&dword_241C0E000, a1, OS_LOG_TYPE_DEFAULT, "Created directory %s", buf, 0xCu);
      }
    }

    free(v7);
    return 0;
  }

  v11 = v10;
  v12 = &v7[v9 + 1];
  while (1)
  {
    *v11 = 0;
    if (!mkdir(v7, 0x1EDu))
    {
      if (a1 && os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = v7;
        _os_log_impl(&dword_241C0E000, a1, OS_LOG_TYPE_DEFAULT, "Created directory %s", buf, 0xCu);
      }

      goto LABEL_8;
    }

    if (*__error() != 17)
    {
      break;
    }

LABEL_8:
    *v11 = 47;
    v11 = strchr(v12++, 47);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v19 = *__error();
  v20 = __error();
  strerror(*v20);
  BOMCopierErrorCapture(a3, v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3577, "make_path", "Could not mkdir %s: %s");
LABEL_22:
  free(v7);
  return 1;
}

uint64_t get_volume_state(const char *a1, BOOL *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, 512);
  if (!statfs(a1, &v16))
  {
    f_flags = v16.f_flags;
    *a2 = (v16.f_flags & 0x80) != 0;
    a2[1] = (f_flags & 8) == 0;
    v14 = xmmword_241C78E18;
    v15 = 0;
    v12 = xmmword_241C78E2C;
    v13 = 0;
    if (getattrlist(a1, &v12, &v14, 0x14uLL, 0))
    {
      if (*__error() != 22)
      {
        v10 = *__error();
        v11 = __error();
        strerror(*v11);
        BOMCopierErrorCapture(a3, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8718, "get_volume_state", "Could not getattrlist %s: %s\n");
        return 1;
      }

      if (*v16.f_fstypename == 7562856)
      {
        a2[2] = 1;
      }

      if (*v16.f_fstypename ^ 0x73667061 | v16.f_fstypename[4])
      {
        return 0;
      }
    }

    else if ((BYTE6(v14) & 1) == 0)
    {
      return 0;
    }

    result = 0;
    a2[2] = 1;
    return result;
  }

  v6 = *__error();
  v7 = __error();
  strerror(*v7);
  BOMCopierErrorCapture(a3, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8689, "get_volume_state", "Could not statfs %s: %s");
  return 1;
}

CFIndex libarchive_write_callback(int a1, uint64_t a2, UInt8 *buffer, CFIndex bufferLength)
{
  if (a2)
  {
    return CFWriteStreamWrite(*(a2 + 56), buffer, bufferLength);
  }

  else
  {
    return -1;
  }
}

CFIndex apple_archive_write_callback(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  if (a1)
  {
    return CFWriteStreamWrite(*(a1 + 56), a2, a3);
  }

  else
  {
    return -1;
  }
}

void *BOMCopierDestinationSetLog(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t BOMCopierDestinationSetAllowBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 80) = a2;
  }

  else
  {
    v3 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1304, "BOMCopierDestinationSetAllowBom", "copier_destination is NULL");
  }

  return v3;
}

uint64_t BOMCopierDestinationSetDenyBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 88) = a2;
  }

  else
  {
    v3 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1326, "BOMCopierDestinationSetDenyBom", "copier_destination is NULL");
  }

  return v3;
}

uint64_t BOMCopierDestinationSetChecksumBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    *(a1 + 96) = a2;
    if (!a2)
    {
      return 0;
    }

    if (*(a1 + 104))
    {
      return 0;
    }

    v5 = BOMCopierDataAnalyzerNew(2, a3);
    *(a1 + 104) = v5;
    if (v5)
    {
      return 0;
    }

    else
    {
      v6 = 1;
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1365, "BOMCopierDestinationSetChecksumBom", "Could not create BOMCopierDataAnalyzer");
    }
  }

  else
  {
    v6 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1348, "BOMCopierDestinationSetChecksumBom", "copier_destination is NULL");
  }

  return v6;
}

uint64_t BOMCopierDestinationSetRedirectCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 208) = a2;
    *(a1 + 216) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1387, "BOMCopierDestinationSetRedirectCallback", "copier_destination is NULL");
  }

  return v4;
}

uint64_t BOMCopierDestinationSetConflictResolver(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 224) = a2;
    *(a1 + 232) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1410, "BOMCopierDestinationSetConflictResolver", "copier_destination is NULL");
  }

  return v4;
}

uint64_t BOMCopierDestinationSetFinalizationCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 264) = a2;
    *(a1 + 272) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1433, "BOMCopierDestinationSetFinalizationCallback", "copier_destination is NULL");
  }

  return v4;
}

uint64_t BOMCopierDestinationGetCopyOperation(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 240);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1453, "BOMCopierDestinationGetCopyOperation", "copier_destination is NULL", v1, v2);
  return 2;
}

uint64_t BOMCopierDestinationGetCopyResult(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 244);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1470, "BOMCopierDestinationGetCopyResult", "copier_destination is NULL", v1, v2);
  return 1;
}

uint64_t BOMCopierDestinationSetDataWrittenCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 248) = a2;
    *(a1 + 256) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1490, "BOMCopierDestinationSetDataWrittenCallback", "copier_destination is NULL");
  }

  return v4;
}

void *BOMCopierDestinationCreateEntry(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1513, "BOMCopierDestinationCreateEntry", "copier_destination is NULL");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1519, "BOMCopierDestinationCreateEntry", "source_entry is NULL");
    return 0;
  }

  v6 = a3;
  if (*(a1 + 80) && (BOMCopierSourceEntryIsRoot(a2) & 1) == 0)
  {
    Path = BOMCopierSourceEntryGetPath(a2);
    v8 = !BOMBomFSObjectExistsAtPath(*(a1 + 80), Path);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 88) && (BOMCopierSourceEntryIsRoot(a2) & 1) == 0)
  {
    v10 = BOMCopierSourceEntryGetPath(a2);
    v8 |= BOMBomFSObjectExistsAtPath(*(a1 + 88), v10);
  }

  v11 = malloc_type_calloc(1uLL, 0x178uLL, 0x10300404E91E69FuLL);
  if (!v11)
  {
    v13 = *__error();
    v14 = __error();
    strerror(*v14);
    BOMCopierErrorCapture(a4, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1584, "BOMCopierDestinationCreateEntry", "Could not allocate empty destination entry: %s");
    return 0;
  }

  v12 = v11;
  v11[8] = -1;
  *v11 = *(a1 + 44);
  v11[1] = a2;
  if ((v8 & 1) == 0)
  {
    BOMCopierDataAnalyzerReset(*(a1 + 104));
    *(v12 + 24) = *(a1 + 104);
    *(v12 + 32) = 1;
    if (BOMCopierSourceEntryGetType(a2) == 8)
    {
      *(v12 + 56) = BOMCopierSourceEntryGetSize(a2);
      if (BOMCopierSourceEntryGetBinaryType(a2))
      {
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        LODWORD(v18) = *(a1 + 192);
        *(&v18 + 1) = *(a1 + 200);
        if (BOMCopierMatchBinary(a2, &v18, a4))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3662, "match_binary", "Could not match the binary");
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1639, "BOMCopierDestinationCreateEntry", "Could not match the source binary");
LABEL_32:
          BOMCopierDestinationEntryFree(v12);
          return 0;
        }

        *(v12 + 32) = v19;
        *(v12 + 48) = v20;
        *(v12 + 56) = *(&v20 + 1);
      }
    }

    if (*(v12 + 32) == 2)
    {
      return v12;
    }

    v16 = *(a1 + 44);
    if (v16 == 2)
    {
      entry_apple_archive = create_entry_apple_archive(a1, a2, v12, a4);
    }

    else if (v16 == 1)
    {
      entry_apple_archive = create_entry_libarchive(a1, a2, v12, a4);
    }

    else
    {
      if (v16)
      {
        return v12;
      }

      entry_apple_archive = create_entry_filesystem(a1, a2, v12, v6, a4);
    }

    if (!entry_apple_archive)
    {
      return v12;
    }

    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1679, "BOMCopierDestinationCreateEntry", "Could not create the entry");
    goto LABEL_32;
  }

  *(v11 + 16) = 1;
  return v12;
}

void BOMCopierDestinationEntryFree(void *a1)
{
  if (a1)
  {
    v2 = a1[45];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[43];
    if (v3)
    {
      free(v3);
    }

    if (a1[10])
    {
      archive_entry_free();
    }

    v4 = a1[40];
    if (v4)
    {
      free(v4);
    }

    if (a1[20])
    {
      if (ParallelCompressionAFSCStreamClose())
      {
        v5 = *MEMORY[0x277D85DF8];
        v6 = __error();
        v7 = strerror(*v6);
        fprintf(v5, "Could not close compressor stream: %s", v7);
      }

      a1[20] = 0;
    }

    v8 = *(a1 + 17);
    if (v8 != *(a1 + 16))
    {
      close(v8);
      v8 = *(a1 + 16);
    }

    if (v8 != -1)
    {
      close(v8);
    }

    v9 = a1[18];
    if (v9)
    {
      free(v9);
    }

    v10 = a1[17];
    if (v10)
    {
      free(v10);
    }

    v11 = a1[16];
    if (v11)
    {
      free(v11);
    }

    v12 = a1[15];
    if (v12)
    {
      free(v12);
    }

    v13 = a1[5];
    if (v13)
    {
      free(v13);
    }

    free(a1);
  }
}

uint64_t create_entry_filesystem(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v187 = *MEMORY[0x277D85DE8];
  *(a1 + 240) = 0;
  Type = BOMCopierSourceEntryGetType(a2);
  Path = BOMCopierSourceEntryGetPath(a2);
  v12 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = string_for_entry_type(Type);
    *&buf[12] = 2080;
    *&buf[14] = Path;
    _os_log_impl(&dword_241C0E000, v12, OS_LOG_TYPE_DEFAULT, "entry_path: [%s] %s", buf, 0x16u);
  }

  v13 = strlen(Path);
  if (!v13)
  {
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7882, "construct_filesystem_destination", "The entry path is empty");
LABEL_94:
    v66 = 1;
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3705, "create_entry_filesystem", "Could not construct filesystem destinations");
    return v66;
  }

  v14 = v13;
  if (!strncmp(Path, ".", v13))
  {
    ++Path;
  }

  else if (v14 >= 3)
  {
    v15 = *Path;
    if (v15 != 46)
    {
      goto LABEL_12;
    }

    Path += 2 * (Path[1] == 47);
  }

  v15 = *Path;
LABEL_12:
  if (BOMCopierSourceEntryIsRoot(a2))
  {
    if (Type == 6 || !*(a1 + 284) || (*(a1 + 285) & 1) == 0)
    {
LABEL_16:
      v16 = strdup(*(a1 + 288));
      *(a3 + 120) = v16;
      if (!v16)
      {
        v17 = *__error();
        v18 = __error();
        strerror(*v18);
        BOMCopierErrorCapture(a5, v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7999, "construct_filesystem_destination", "Could not construct destination path from %s: %s");
        goto LABEL_94;
      }

      goto LABEL_21;
    }
  }

  else if (!v15)
  {
    goto LABEL_16;
  }

  if (asprintf((a3 + 120), "%s/%s", *(a1 + 288), Path) < 0 || !*(a3 + 120))
  {
    v49 = *__error();
    v50 = *(a1 + 288);
    v51 = __error();
    strerror(*v51);
    BOMCopierErrorCapture(a5, v49, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8007, "construct_filesystem_destination", "Could not construct destination path from %s and %s: %s", v50);
    goto LABEL_94;
  }

LABEL_21:
  v19 = *(a1 + 208);
  if (v19)
  {
    *buf = 0;
    v19(a1, buf, *(a1 + 216));
    if (*buf)
    {
      free(*(a3 + 120));
      *(a3 + 120) = *buf;
    }

    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  v20 = malloc_type_calloc(1uLL, 0x400uLL, 0xE55DC7D5uLL);
  *(a3 + 128) = v20;
  if (!v20)
  {
    v52 = *__error();
    v53 = __error();
    strerror(*v53);
    BOMCopierErrorCapture(a5, v52, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8035, "construct_filesystem_destination", "Could not allocate destination name: %s");
    goto LABEL_94;
  }

  v21 = (a3 + 120);
  basename_r(*(a3 + 120), v20);
  v22 = malloc_type_calloc(1uLL, 0x400uLL, 0x9C9811BEuLL);
  *(a3 + 136) = v22;
  if (!v22)
  {
    v54 = *__error();
    v55 = __error();
    strerror(*v55);
    BOMCopierErrorCapture(a5, v54, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8045, "construct_filesystem_destination", "Could not allocate destination parent: %s");
    goto LABEL_94;
  }

  dirname_r(*v21, v22);
  v23 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *v21;
    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_impl(&dword_241C0E000, v23, OS_LOG_TYPE_DEFAULT, "destination_path: %s", buf, 0xCu);
  }

  if (*(a1 + 297) == 1 && (Type - 7 < 4 || Type == 5) && (BOMCopierSourceEntryIsSegmentedFile(a2) & 1) == 0)
  {
    *buf = 0;
    if (asprintf(buf, "%s/%s", *(a3 + 136), ".BCD.T_XXXXXX") < 0 || !*buf)
    {
      v63 = *__error();
      v64 = *(a3 + 136);
      v65 = __error();
      strerror(*v65);
      BOMCopierErrorCapture(a5, v63, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8090, "construct_filesystem_destination", "Could not construct atomic template path from %s and %s: %s", v64);
      goto LABEL_94;
    }

    v58 = mktemp(*buf);
    if (v58 != *buf)
    {
      v59 = *__error();
      v60 = *buf;
      v61 = __error();
      v62 = strerror(*v61);
      BOMCopierErrorCapture(a5, v59, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8100, "construct_filesystem_destination", "Could not mktemp %s and %s: %s", v60, v62, v179);
      free(*buf);
      goto LABEL_94;
    }

    v25 = v58;
    *(a3 + 144) = *buf;
    *(a3 + 152) = 1;
  }

  else
  {
    v25 = strdup(*(a3 + 120));
    *(a3 + 144) = v25;
    if (!v25)
    {
      v56 = *__error();
      v57 = __error();
      strerror(*v57);
      BOMCopierErrorCapture(a5, v56, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8124, "construct_filesystem_destination", "Could not duplicate %s: %s");
      goto LABEL_94;
    }
  }

  v26 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&dword_241C0E000, v26, OS_LOG_TYPE_DEFAULT, "destination_staging_path: %s", buf, 0xCu);
  }

  v27 = 1;
  while (1)
  {
    v28 = v27;
    *(a3 + 153) = 1;
    if (lstat(*(a3 + 120), (a3 + 168)))
    {
      if (*__error() != 2)
      {
        v74 = *__error();
        v75 = __error();
        strerror(*v75);
        BOMCopierErrorCapture(a5, v74, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8157, "resolve_filesystem_conflict", "Could not lstat %s: %s");
        goto LABEL_103;
      }

      *(a3 + 153) = 0;
      goto LABEL_106;
    }

    v29 = BOMCopierSourceEntryGetType(a2);
    v30 = v29;
    v31 = *a1;
    v32 = *(a3 + 172) & 0xF000;
    if (v29 <= 2)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8419, "check_filesystem_conflict", "The source entry is a circular directory");
        }

        else
        {
          if (v29 != 2)
          {
            goto LABEL_44;
          }

          BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8425, "check_filesystem_conflict", "The source entry is an unreadable directory");
        }
      }

      else
      {
        BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8413, "check_filesystem_conflict", "The source entry is unknown");
      }

      BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8182, "resolve_filesystem_conflict", "Could not check for a destination conflict for %s");
      goto LABEL_103;
    }

    if (v29 != 6)
    {
      if ((v29 - 13) < 7 || v29 == 3)
      {
        goto LABEL_106;
      }

LABEL_44:
      if (v32 != 0x4000)
      {
        goto LABEL_106;
      }

      if (v31 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = v31;
        v34 = "Filesystem Conflict: The source entry is not a Directory but the destination entry is.";
LABEL_53:
        _os_log_impl(&dword_241C0E000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    if (v32 == 0x4000)
    {
      goto LABEL_106;
    }

    if (v31 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = v31;
      v34 = "Filesystem Conflict: The source entry is a Directory but the destination entry is not.";
      goto LABEL_53;
    }

LABEL_54:
    v35 = *a1;
    if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a3 + 120);
      v37 = *(a3 + 144);
      *buf = 136315394;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      _os_log_impl(&dword_241C0E000, v35, OS_LOG_TYPE_DEFAULT, "%s conflicts with %s", buf, 0x16u);
    }

    if (v30 != 6 || (v38 = *(a3 + 172), (v38 & 0xF000) != 0xA000))
    {
      v47 = *(a1 + 224);
      if (!v47)
      {
        string_for_mode(*(a3 + 172));
        string_for_entry_type(v30);
        BOMCopierErrorCapture(a5, 21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8382, "resolve_filesystem_conflict", "%s: conflict replacing %s with %s", *(a3 + 120));
        goto LABEL_103;
      }

      goto LABEL_77;
    }

    v39 = *(a1 + 280);
    if (!v39)
    {
      break;
    }

    if (v39 != 2)
    {
      if (v39 == 1)
      {
        if (unlink(*v21))
        {
          v76 = *__error();
          v77 = __error();
          strerror(*v77);
          BOMCopierErrorCapture(a5, v76, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8259, "resolve_filesystem_conflict", "Could not unlink %s: %s");
          goto LABEL_103;
        }

        *(a3 + 153) = 0;
        v114 = *a1;
        if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v114, OS_LOG_TYPE_DEFAULT, "Conflicting symlink unlinked", buf, 2u);
        }
      }

      goto LABEL_106;
    }

    if (stat(*v21, (a3 + 168)))
    {
      v78 = *__error();
      v79 = __error();
      strerror(*v79);
      BOMCopierErrorCapture(a5, v78, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8273, "resolve_filesystem_conflict", "Could not stat %s: %s");
      goto LABEL_103;
    }

    if ((*(a3 + 172) & 0xF000) != 0x4000)
    {
      BOMCopierErrorCapture(a5, 20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8279, "resolve_filesystem_conflict", "%s: Not a directory");
      goto LABEL_103;
    }

    if (!basename_r(*v21, buf))
    {
      v80 = *__error();
      v81 = __error();
      strerror(*v81);
      BOMCopierErrorCapture(a5, v80, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8291, "resolve_filesystem_conflict", "Could not basename %s: %s");
      goto LABEL_103;
    }

    v40 = realpath_DARWIN_EXTSN(*v21, 0);
    if (!v40)
    {
      v82 = *__error();
      v83 = __error();
      strerror(*v83);
      BOMCopierErrorCapture(a5, v82, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8298, "resolve_filesystem_conflict", "Could not resolve %s: %s");
      goto LABEL_103;
    }

    v41 = v40;
    free(*v21);
    *v21 = 0;
    asprintf((a3 + 120), "%s/%s", v41, buf);
    if (!*v21)
    {
      v84 = *__error();
      v85 = __error();
      v86 = strerror(*v85);
      BOMCopierErrorCapture(a5, v84, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8308, "resolve_filesystem_conflict", "Could not reconstruct destination path: %s", v86);
      free(v41);
      goto LABEL_103;
    }

    v42 = *(a3 + 136);
    if (v42)
    {
      free(v42);
    }

    *(a3 + 136) = v41;
    v43 = *(a3 + 144);
    if (v43)
    {
      free(v43);
    }

    v44 = strdup(*(a3 + 120));
    *(a3 + 144) = v44;
    if (!v44)
    {
      v87 = *__error();
      v88 = __error();
      strerror(*v88);
      BOMCopierErrorCapture(a5, v87, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8328, "resolve_filesystem_conflict", "Could not duplicate %s: %s");
      goto LABEL_103;
    }

    v45 = *a1;
    if (*a1)
    {
      if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) || (*v182 = 0, _os_log_impl(&dword_241C0E000, v45, OS_LOG_TYPE_DEFAULT, "Conflicting symlink followed", v182, 2u), (v45 = *a1) != 0))
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = *v21;
          *v182 = 136315138;
          *&v182[4] = v46;
          _os_log_impl(&dword_241C0E000, v45, OS_LOG_TYPE_DEFAULT, "destination_path: %s", v182, 0xCu);
        }
      }
    }

LABEL_78:
    v27 = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_106;
    }
  }

  v47 = *(a1 + 224);
  if (!v47)
  {
    string_for_mode(v38);
    BOMCopierErrorCapture(a5, 20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 8249, "resolve_filesystem_conflict", "%s: conflict replacing %s with %s", *v21);
LABEL_103:
    v66 = 1;
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3720, "create_entry_filesystem", "Could not resolve filesystem conflict", v177, v178);
    return v66;
  }

LABEL_77:
  *(a1 + 240) = 0;
  v48 = v47(a1, a2, a3, *(a1 + 232), a5);
  switch(v48)
  {
    case 3:
      goto LABEL_78;
    case 2:
      *(a1 + 240) = 2;
      return 1;
    case 1:
      *(a1 + 240) = 0x100000001;
      return 1;
  }

LABEL_106:
  if (*(a1 + 240))
  {
    return 1;
  }

  v68 = BOMCopierSourceEntryGetType(a2);
  IsSegmentedFile = BOMCopierSourceEntryIsSegmentedFile(a2);
  v70 = IsSegmentedFile;
  if (*(a1 + 297))
  {
    goto LABEL_108;
  }

  v71 = *(a3 + 153);
  if (v71 != 1 || v68 > 0xA)
  {
    goto LABEL_133;
  }

  if (((1 << v68) & 0x6B0) != 0)
  {
    if (unlink(*v21))
    {
      v72 = *__error();
      v73 = __error();
      strerror(*v73);
      BOMCopierErrorCapture(a5, v72, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3761, "create_entry_filesystem", "Could not unlink %s: %s");
      return 1;
    }

    v89 = *a1;
    if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v90 = *v21;
      *buf = 136315138;
      *&buf[4] = v90;
      _os_log_impl(&dword_241C0E000, v89, OS_LOG_TYPE_DEFAULT, "Unlinked %s", buf, 0xCu);
    }

LABEL_108:
    v71 = *(a3 + 153);
LABEL_133:
    if (!v71)
    {
      if (!make_path(*a1, *(a3 + 136), a5))
      {
        goto LABEL_144;
      }

      v96 = *__error();
      v97 = __error();
      strerror(*v97);
      BOMCopierErrorCapture(a5, v96, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3802, "create_entry_filesystem", "Could not make_path %s: %s");
      return 1;
    }

    if (v68 == 8)
    {
      goto LABEL_135;
    }

LABEL_144:
    if (*(a1 + 298) != 1)
    {
      goto LABEL_148;
    }

    v98 = strlen(*(a1 + 288));
    v99 = realpath_DARWIN_EXTSN(*(a3 + 136), 0);
    if (!v99)
    {
      v105 = *__error();
      v106 = __error();
      strerror(*v106);
      BOMCopierErrorCapture(a5, v105, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3863, "create_entry_filesystem", "Could not realpath parent %s: %s");
      return 1;
    }

    v100 = v99;
    v101 = strncmp(*(a1 + 288), v99, v98);
    free(v100);
    if (v101)
    {
      v66 = 1;
      BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3873, "create_entry_filesystem", "%s resolves outside of %s");
      return v66;
    }

LABEL_148:
    if (v68 > 12)
    {
      if ((v68 - 13) < 7)
      {
        return 0;
      }

LABEL_157:
      BOMCopierSourceEntryTypeString(v68);
      BOMCopierErrorCapture(a5, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4315, "create_entry_filesystem", "Unsupported BOMCopierSourceEntryType: %s");
      return 1;
    }

    if (v68 == 6)
    {
      if (*(a3 + 153))
      {
        return 0;
      }

      Mode = BOMCopierSourceEntryGetMode(a2);
      v108 = *(a1 + 296) ? 493 : Mode;
      if (!mkdir(*v21, v108))
      {
        return 0;
      }

      v109 = *__error();
      v110 = __error();
      strerror(*v110);
      BOMCopierErrorCapture(a5, v109, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3897, "create_entry_filesystem", "Could not create directory at %s: %s");
      return 1;
    }

    if (v68 != 8)
    {
      if (v68 != 9)
      {
        goto LABEL_157;
      }

      SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(a2);
      if (symlink(SymlinkTarget, *(a3 + 144)))
      {
        v103 = *__error();
        v104 = __error();
        strerror(*v104);
        BOMCopierErrorCapture(a5, v103, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4267, "create_entry_filesystem", "Could not create symlink at %s: %s");
        return 1;
      }

      v118 = *a1;
      if (!*a1 || !os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v119 = *(a3 + 144);
      *buf = 136315394;
      *&buf[4] = v119;
      *&buf[12] = 2080;
      *&buf[14] = SymlinkTarget;
      v120 = "Created symlink %s -> %s";
      v121 = v118;
      v122 = 22;
LABEL_177:
      _os_log_impl(&dword_241C0E000, v121, OS_LOG_TYPE_DEFAULT, v120, buf, v122);
      return 0;
    }

    if (BOMCopierSourceEntryGetHardlinkCount(a2) >= 2)
    {
      Device = BOMCopierSourceEntryGetDevice(a2);
      Inode = BOMCopierSourceEntryGetInode(a2);
      v180 = 0;
      Size = BOMCopierSourceEntryGetSize(a2);
      if (BOMHardLinkTableGetPathAndData(*(a1 + 72), Device, Inode, buf, &v180))
      {
        BOMHardLinkTableSetPathAndData(*(a1 + 72), Device, Inode, *v21, &Size, 8uLL);
      }

      else if (*v180 == Size)
      {
        if (*(a3 + 153) == 1 && unlink(*v21))
        {
          v126 = *__error();
          v127 = __error();
          strerror(*v127);
          BOMCopierErrorCapture(a5, v126, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3971, "create_entry_filesystem", "Could not unlink %s: %s");
          return 1;
        }

        if (link(buf, *v21))
        {
          if (*__error() != 18)
          {
            v128 = *__error();
            v129 = *v21;
            v130 = __error();
            strerror(*v130);
            BOMCopierErrorCapture(a5, v128, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3983, "create_entry_filesystem", "Could not create hardlink %s to %s: %s", v129);
            return 1;
          }
        }

        else
        {
          *(a1 + 244) = 2;
          *(a3 + 154) = 1;
          *(a3 + 152) = 0;
          v131 = *a1;
          if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            v132 = *v21;
            *v182 = 136315394;
            *&v182[4] = v132;
            v183 = 2080;
            v184 = buf;
            _os_log_impl(&dword_241C0E000, v131, OS_LOG_TYPE_DEFAULT, "Hardlinked %s to %s", v182, 0x16u);
          }
        }
      }
    }

    if (*(a1 + 304) == 1)
    {
      buf[0] = 0;
      if (BOMCopierSourceEntryClone(a2, *(a3 + 144), buf, a5))
      {
        v133 = *__error();
        v134 = __error();
        strerror(*v134);
        BOMCopierErrorCapture(a5, v133, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4018, "create_entry_filesystem", "Could not clone source entry to %s: %s");
        return 1;
      }

      if (buf[0] == 1)
      {
        *(a3 + 154) = buf[0];
      }
    }

    if (*(a3 + 154))
    {
      return 0;
    }

    if (v70)
    {
      v135 = open(*(a3 + 144), 1, 420);
      if (v135 == -1)
      {
        v145 = *__error();
        v146 = __error();
        strerror(*v146);
        BOMCopierErrorCapture(a5, v145, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4143, "create_entry_filesystem", "Could not open regular file at %s: %s");
        return 1;
      }

      v136 = v135;
      if (lseek(v135, 0, 2) == -1)
      {
        v156 = *__error();
        v157 = __error();
        strerror(*v157);
        BOMCopierErrorCapture(a5, v156, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4152, "create_entry_filesystem", "Could not seek to the end of %s: %s");
        return 1;
      }

      v137 = *a1;
      if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v138 = *(a3 + 144);
        *buf = 136315138;
        *&buf[4] = v138;
        _os_log_impl(&dword_241C0E000, v137, OS_LOG_TYPE_DEFAULT, "Opened segmented file at %s", buf, 0xCu);
      }

      v139 = v136;
    }

    else
    {
      v140 = *(a3 + 144);
      if (*(a1 + 12) == 1)
      {
        v141 = open_dprotected_np(v140, 1537, *(a1 + 16), 0, 420);
      }

      else
      {
        v141 = open(v140, 513, 420);
      }

      v139 = v141;
      if (v141 == -1)
      {
        v147 = *__error();
        v148 = __error();
        strerror(*v148);
        BOMCopierErrorCapture(a5, v147, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4057, "create_entry_filesystem", "Could not create regular file at %s: %s");
        return 1;
      }

      v142 = *a1;
      if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v143 = *(a3 + 144);
        *buf = 136315138;
        *&buf[4] = v143;
        _os_log_impl(&dword_241C0E000, v142, OS_LOG_TYPE_DEFAULT, "Created file at %s", buf, 0xCu);
      }

      if ((BOMCopierSourceEntryIsStreamed(a2) & 1) == 0)
      {
        v144 = BOMCopierSourceEntryGetSize(a2);
        if (v144 >= 1)
        {
          *&buf[16] = v144;
          v186 = 0;
          *buf = 0x300000004;
          *&buf[8] = 0;
          if (fcntl(v139, 42, buf))
          {
            if (*__error() != 45)
            {
              v172 = *__error();
              v173 = *(a3 + 144);
              v174 = __error();
              strerror(*v174);
              BOMCopierErrorCapture(a5, v172, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4098, "create_entry_filesystem", "Could not preallocate regular file at %s for %llu: %s", v173);
              return 1;
            }
          }
        }
      }

      if ((a4 & 2) != 0)
      {
        *v182 = 0;
        asprintf(v182, "%s%s", *(a3 + 144), "/..namedfork/rsrc");
        if (!*v182)
        {
          v158 = *__error();
          v159 = __error();
          strerror(*v159);
          BOMCopierErrorCapture(a5, v158, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4116, "create_entry_filesystem", "Could not create rsrc path for %s: %s");
          return 1;
        }

        v149 = open(*v182, 513, 420);
        if (v149 == -1)
        {
          v170 = *__error();
          v171 = __error();
          strerror(*v171);
          BOMCopierErrorCapture(a5, v170, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4123, "create_entry_filesystem", "Could not create resource fork at %s: %s");
          return 1;
        }

        v136 = v149;
        v150 = *a1;
        if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = *v182;
          _os_log_impl(&dword_241C0E000, v150, OS_LOG_TYPE_DEFAULT, "Open resource fork at %s", buf, 0xCu);
        }

        free(*v182);
      }

      else
      {
        v136 = v139;
      }
    }

    v151 = *(a1 + 41);
    if (v151 == 1 && fcntl(v139, 68, 1))
    {
      v152 = *__error();
      v153 = __error();
      strerror(*v153);
      BOMCopierErrorCapture(a5, v152, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4172, "create_entry_filesystem", "Could not set F_SETSTATICCONTENT for %s: %s");
      return 1;
    }

    if (*(a1 + 42) == 1)
    {
      if (fcntl(v139, 76, 1))
      {
        v154 = *__error();
        v155 = __error();
        strerror(*v155);
        BOMCopierErrorCapture(a5, v154, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4184, "create_entry_filesystem", "Could not set F_SINGLE_WRITER for %s: %s");
        return 1;
      }

      if (*(a1 + 40) == 1)
      {
LABEL_236:
        if (fcntl(v139, 48, 1))
        {
          v160 = *__error();
          v161 = __error();
          strerror(*v161);
          BOMCopierErrorCapture(a5, v160, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4196, "create_entry_filesystem", "Could not F_NOCACHE %s: %s\n");
          return 1;
        }
      }

      goto LABEL_238;
    }

    if (*(a1 + 40))
    {
      goto LABEL_236;
    }

    if (v151)
    {
LABEL_238:
      v162 = *a1;
      if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v163 = "";
        if (*(a1 + 41))
        {
          v164 = "F_SETSTATICCONTENT ";
        }

        else
        {
          v164 = "";
        }

        if (*(a1 + 42))
        {
          v165 = "F_SINGLE_WRITER ";
        }

        else
        {
          v165 = "";
        }

        v166 = *(a1 + 40);
        *buf = 136315650;
        *&buf[4] = v164;
        *&buf[12] = 2080;
        *&buf[14] = v165;
        if (v166)
        {
          v163 = "F_NOCACHE ";
        }

        *&buf[22] = 2080;
        v186 = v163;
        _os_log_impl(&dword_241C0E000, v162, OS_LOG_TYPE_DEFAULT, "Set %s%s%s", buf, 0x20u);
      }
    }

    *(a3 + 64) = v139;
    *(a3 + 68) = v136;
    if (BOMCopierSourceEntryGetSize(a2) <= 0x4000)
    {
      return 0;
    }

    v66 = 0;
    if ((((a4 & 1) == 0) & (*(a1 + 112) ^ 1)) == 0 && *(a1 + 300))
    {
      v167 = ParallelCompressionAFSCStreamOpen();
      if (!v167)
      {
        v175 = *__error();
        v176 = __error();
        strerror(*v176);
        BOMCopierErrorCapture(a5, v175, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4249, "create_entry_filesystem", "Could not create ParallelCompression AFSC stream for %s: %s");
        return 1;
      }

      *(a3 + 160) = v167;
      v168 = *a1;
      if (!*a1 || !os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v169 = *(a3 + 144);
      *buf = 136315138;
      *&buf[4] = v169;
      v120 = "Enabled filesystem compression for %s";
      v121 = v168;
      v122 = 12;
      goto LABEL_177;
    }
  }

  else
  {
    if (v68 != 8)
    {
      goto LABEL_133;
    }

    if ((IsSegmentedFile & 1) == 0)
    {
      if (!unlink(*v21))
      {
        goto LABEL_108;
      }

      v116 = *__error();
      v117 = __error();
      strerror(*v117);
      BOMCopierErrorCapture(a5, v116, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3779, "create_entry_filesystem", "Could not unlink %s: %s");
      return 1;
    }

LABEL_135:
    if (*(a1 + 301) != 1)
    {
      goto LABEL_144;
    }

    v91 = getxattr(*v21, "com.apple.rootless", 0, 0, 0, 1);
    if (v91 == -1)
    {
      if (*__error() == 93)
      {
        goto LABEL_144;
      }

      v113 = __error();
      strerror(*v113);
      v66 = 1;
      BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3819, "create_entry_filesystem", "Could not get size for rootless attribute %s: %s");
    }

    else
    {
      v92 = v91;
      if (v91 < 1)
      {
        goto LABEL_144;
      }

      v93 = malloc_type_malloc(v91, 0x716AF5B3uLL);
      if (!v93)
      {
        v115 = *__error();
        BOMCopierErrorCapture(a5, v115, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3829, "create_entry_filesystem", "Could not allocate attribute buffer: %s");
        return 1;
      }

      v94 = v93;
      v95 = getxattr(*v21, "com.apple.rootless", v93, v92, 0, 1);
      if (v95 != -1)
      {
        *(a3 + 312) = v95;
        *(a3 + 320) = v94;
        goto LABEL_144;
      }

      v123 = *v21;
      v124 = __error();
      v125 = strerror(*v124);
      v66 = 1;
      BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3836, "create_entry_filesystem", "Could not get rootless attribute for xattr %s: %s", v123, v125);
      free(v94);
    }
  }

  return v66;
}
_DWORD *archive_read_new()
{
  v1 = malloc_type_calloc(1uLL, 0x858uLL, 0x10F00400E4E988EuLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 14594245;
  v1[1] = 1;
  *(v1 + 18) = archive_entry_new2(v1);
  *(v1 + 1) = archive_read_vtable;
  *(v1 + 263) = v1 + 524;
  return v1;
}

_DWORD *archive_entry_new2(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x4E0uLL, 0x10B0040FA1FE6CFuLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = a1;
  v2[311] = 0;
  return v2;
}

uint64_t archive_read_support_format_all(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_all") == -30)
  {
    return -30;
  }

  else
  {
    archive_read_support_format_ar(a1);
    archive_read_support_format_cpio(a1);
    archive_read_support_format_empty(a1);
    archive_read_support_format_lha(a1);
    archive_read_support_format_mtree(a1);
    archive_read_support_format_tar(a1);
    archive_read_support_format_xar(a1);
    archive_read_support_format_warc(a1);
    archive_read_support_format_7zip(a1);
    archive_read_support_format_cab(a1);
    archive_read_support_format_rar(a1);
    archive_read_support_format_rar5(a1);
    archive_read_support_format_iso9660(a1);
    archive_read_support_format_zip(a1);
    archive_clear_error(a1);
    return 0;
  }
}

uint64_t __archive_check_magic(unsigned int *a1, int a2, int a3, const char *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = archive_handle_type_name(*a1);
  if (!v5)
  {
    errmsg("PROGRAMMER ERROR: Function ");
    errmsg(a4);
    errmsg(" invoked with invalid archive handle.\n");
    diediedie();
  }

  if (*a1 == a2)
  {
    if ((a1[1] & a3) != 0)
    {
      return 0;
    }

    else
    {
      if (a1[1] != 0x8000)
      {
        write_all_states(v12, a1[1]);
        write_all_states(v11, a3);
        archive_set_error(a1, -1, "INTERNAL ERROR: Function '%s' invoked with archive structure in state '%s', should be in state '%s'", a4, v12, v11);
      }

      a1[1] = 0x8000;
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "PROGRAMMER ERROR: Function '%s' invoked on '%s' archive object, which is not supported.", a4, v5);
    a1[1] = 0x8000;
    return -30;
  }
}

const char *archive_handle_type_name(int a1)
{
  switch(a1)
  {
    case -1329217314:
      return "archive_write";
    case -1073631035:
      return "archive_write_disk";
    case 14594245:
      return "archive_read";
    case 195932357:
      return "archive_read_disk";
    case 212668873:
      return "archive_match";
  }

  return 0;
}

uint64_t archive_read_support_format_ar(unsigned int *a1)
{
  if (archive_allow_entitlement_format("ar"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_ar") == -30)
    {
      return -30;
    }

    else
    {
      v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100402A43CA8AuLL);
      if (v3)
      {
        v3[4] = 0;
        register_format = __archive_read_register_format(a1, v3, "ar", archive_read_format_ar_bid, 0, archive_read_format_ar_read_header, archive_read_format_ar_read_data, archive_read_format_ar_skip, 0, archive_read_format_ar_cleanup, 0, 0);
        if (register_format)
        {
          free(v3);
          return register_format;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate ar data");
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

BOOL archive_allow_entitlement(const char *a1, const char *a2, os_unfair_lock_s *a3, const __CFSet **a4, BOOL *a5)
{
  os_unfair_lock_lock(a3);
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  theSet = v7;
  if (a5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;
  if (!v6)
  {
    theSet = populate_entitlement_table(a2);
    v9 = 1;
  }

  if (theSet)
  {
    value = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498]);
    v11 = CFSetContainsValue(theSet, value) != 0;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    v11 = 1;
  }

  *a4 = theSet;
  *a5 = v9;
  os_unfair_lock_unlock(a3);
  return v11;
}

uint64_t __archive_read_register_format(unsigned int *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (archive_allow_entitlement_format(a3))
  {
    if (__archive_check_magic(a1, 14594245, 1, "__archive_read_register_format") == -30)
    {
      return -30;
    }

    else
    {
      for (i = 0; i < 16; ++i)
      {
        if (*&a1[22 * i + 170] == a4)
        {
          return -20;
        }

        if (!*&a1[22 * i + 170])
        {
          *&a1[22 * i + 170] = a4;
          *&a1[22 * i + 172] = a5;
          *&a1[22 * i + 174] = a6;
          *&a1[22 * i + 176] = a7;
          *&a1[22 * i + 178] = a8;
          *&a1[22 * i + 180] = a9;
          *&a1[22 * i + 182] = a10;
          *&a1[22 * i + 166] = a2;
          *&a1[22 * i + 168] = a3;
          *&a1[22 * i + 184] = a11;
          *&a1[22 * i + 186] = a12;
          return 0;
        }
      }

      archive_set_error(a1, 12, "Not enough slots for format registration");
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

CFMutableSetRef populate_entitlement_table(const char *a1)
{
  v18 = a1;
  Mutable = 0;
  v5 = MEMORY[0x1E695E480];
  v16 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x600u, *MEMORY[0x1E695E498]);
  v15 = SecTaskCreateFromSelf(*v5);
  error = 0;
  v13 = SecTaskCopyValueForEntitlement(v15, v16, &error);
  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (v13)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v13))
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 15, MEMORY[0x1E695E9F8]);
      if (Mutable)
      {
        Count = CFArrayGetCount(v13);
        for (idx = 0; idx < Count; ++idx)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, idx);
          v3 = CFGetTypeID(ValueAtIndex);
          if (v3 == CFStringGetTypeID())
          {
            CFSetAddValue(Mutable, ValueAtIndex);
          }

          else
          {
            fprintf(*MEMORY[0x1E69E9848], "Unexpected non-string types in entitlement");
          }
        }

        CFRelease(v13);
        return Mutable;
      }

      else
      {
        CFRelease(v13);
        return 0;
      }
    }

    else
    {
      v1 = CFGetTypeID(v13);
      cf = CFCopyTypeIDDescription(v1);
      c_string = get_c_string(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      fprintf(*MEMORY[0x1E69E9848], "Error in type of entitlement expected: CFTypeArray got %s", c_string);
      CFRelease(v13);
      free(c_string);
      return 0;
    }
  }

  else if (error)
  {
    v12 = CFErrorCopyDescription(error);
    v11 = get_c_string(v12);
    fprintf(*MEMORY[0x1E69E9848], "Error discovering entitlements, error: %s", v11);
    if (v12)
    {
      CFRelease(v12);
    }

    free(v11);
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_support_format_cpio(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("cpio"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_cpio") == -30)
    {
      return -30;
    }

    else
    {
      v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040D81D3FF9uLL);
      if (v2)
      {
        *v2 = 320083222;
        if (__archive_read_register_format(a1, v2, "cpio", archive_read_format_cpio_bid, archive_read_format_cpio_options, archive_read_format_cpio_read_header, archive_read_format_cpio_read_data, archive_read_format_cpio_skip, 0, archive_read_format_cpio_cleanup, 0, 0))
        {
          free(v2);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate cpio data");
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t archive_read_support_format_empty(unsigned int *a1)
{
  if (archive_allow_entitlement_format("empty"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_empty") == -30)
    {
      return -30;
    }

    else
    {
      return __archive_read_register_format(a1, 0, "empty", archive_read_format_empty_bid, 0, archive_read_format_empty_read_header, archive_read_format_empty_read_data, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t archive_read_support_format_lha(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("lha"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_lha") == -30)
    {
      return -30;
    }

    else
    {
      v2 = malloc_type_calloc(1uLL, 0x1A8uLL, 0x1070040FEA8A56AuLL);
      if (v2)
      {
        v2[34] = 0;
        v2[35] = 0;
        v2[36] = 0;
        if (__archive_read_register_format(a1, v2, "lha", archive_read_format_lha_bid, archive_read_format_lha_options, archive_read_format_lha_read_header, archive_read_format_lha_read_data, archive_read_format_lha_read_data_skip, 0, archive_read_format_lha_cleanup, 0, 0))
        {
          free(v2);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate lha data");
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t archive_read_support_format_mtree(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("mtree"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_mtree") == -30)
    {
      return -30;
    }

    else
    {
      v2 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10700405C4A5BC3uLL);
      if (v2)
      {
        v2[176] = 0;
        *(v2 + 12) = -1;
        __archive_rb_tree_init(v2 + 19, archive_read_support_format_mtree_rb_ops);
        if (__archive_read_register_format(a1, v2, "mtree", mtree_bid, archive_read_format_mtree_options, read_header, read_data, skip, 0, cleanup_0, 0, 0))
        {
          free(v2);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate mtree data");
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t archive_read_support_format_tar(unsigned int *a1)
{
  if (archive_allow_entitlement_filter("tar"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_tar") == -30)
    {
      return -30;
    }

    else
    {
      v2 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x1030040C7D48C63uLL);
      if (v2)
      {
        v2[110] = 1;
        if (__archive_read_register_format(a1, v2, "tar", archive_read_format_tar_bid, archive_read_format_tar_options, archive_read_format_tar_read_header, archive_read_format_tar_read_data, archive_read_format_tar_skip, 0, archive_read_format_tar_cleanup, 0, 0))
        {
          free(v2);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate tar data");
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements");
    return -30;
  }
}

uint64_t archive_read_support_format_7zip(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_7zip") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x5108uLL, 0x10F0040DBF92E40uLL);
    if (v2)
    {
      v2[5184] = -1;
      if (__archive_read_register_format(a1, v2, "7zip", archive_read_format_7zip_bid, 0, archive_read_format_7zip_read_header, archive_read_format_7zip_read_data, archive_read_format_7zip_read_data_skip, 0, archive_read_format_7zip_cleanup, archive_read_support_format_7zip_capabilities, archive_read_format_7zip_has_encrypted_entries))
      {
        free(v2);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate 7zip data");
      return -30;
    }
  }
}

uint64_t archive_read_support_format_cab(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_cab") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x10F00403258FFA1uLL);
    if (v2)
    {
      v2[15] = 0;
      v2[16] = 0;
      v2[17] = 0;
      archive_wstring_ensure((v2 + 15), 256);
      if (__archive_read_register_format(a1, v2, "cab", archive_read_format_cab_bid, archive_read_format_cab_options, archive_read_format_cab_read_header, archive_read_format_cab_read_data, archive_read_format_cab_read_data_skip, 0, archive_read_format_cab_cleanup, 0, 0))
      {
        free(v2);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate CAB data");
      return -30;
    }
  }
}

uint64_t archive_string_ensure(uint64_t a1, unint64_t a2)
{
  if (*a1 && a2 <= *(a1 + 16))
  {
    return a1;
  }

  if (*(a1 + 16) >= 0x20uLL)
  {
    if (*(a1 + 16) >= 0x2000uLL)
    {
      size = *(a1 + 16) + *(a1 + 16) / 4uLL;
      if (size < *(a1 + 16))
      {
        archive_string_free(a1);
        *__error() = 12;
        return 0;
      }
    }

    else
    {
      size = 2 * *(a1 + 16);
    }
  }

  else
  {
    size = 32;
  }

  if (size < a2)
  {
    size = a2;
  }

  v4 = malloc_type_realloc(*a1, size, 0x100004077774924uLL);
  if (v4)
  {
    *a1 = v4;
    *(a1 + 16) = size;
    return a1;
  }

  else
  {
    archive_string_free(a1);
    *__error() = 12;
    return 0;
  }
}

uint64_t archive_read_support_format_rar(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_rar") == -30)
  {
    return -30;
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, 0x4F60uLL, 0x10F00407510CCC6uLL);
    if (v3)
    {
      v3[5078] = -1;
      register_format = __archive_read_register_format(a1, v3, "rar", archive_read_format_rar_bid, archive_read_format_rar_options, archive_read_format_rar_read_header, archive_read_format_rar_read_data, archive_read_format_rar_read_data_skip, archive_read_format_rar_seek_data, archive_read_format_rar_cleanup, archive_read_support_format_rar_capabilities, archive_read_format_rar_has_encrypted_entries);
      if (register_format)
      {
        free(v3);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate rar data");
      return -30;
    }
  }
}

uint64_t archive_read_support_format_rar5(unsigned int *a1)
{
  v5[1] = a1;
  v5[0] = 0;
  v3 = get_archive_read(a1, v5);
  if (v3)
  {
    return v3;
  }

  else
  {
    v2 = malloc_type_malloc(0x5330uLL, 0x105004069060638uLL);
    if (v2)
    {
      if (rar5_init(v2))
      {
        archive_set_error(v5[0], 12, "Can't allocate rar5 filter buffer");
        free(v2);
        return -30;
      }

      else
      {
        register_format = __archive_read_register_format(v5[0], v2, "rar5", rar5_bid, rar5_options, rar5_read_header, rar5_read_data, rar5_read_data_skip, rar5_seek_data, rar5_cleanup, rar5_capabilities, rar5_has_encrypted_entries);
        if (register_format)
        {
          rar5_cleanup(v5[0]);
        }

        return register_format;
      }
    }

    else
    {
      archive_set_error(v5[0], 12, "Can't allocate rar5 data");
      return -30;
    }
  }
}

uint64_t get_archive_read(unsigned int *a1, unsigned int **a2)
{
  *a2 = a1;
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_rar5") == -30)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

_WORD *cdeque_clear(_WORD *result)
{
  result[3] = 0;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t archive_read_support_format_iso9660(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_iso9660") == -30)
  {
    return -30;
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, 0xA10uLL, 0x10B004091975EA2uLL);
    if (v3)
    {
      *v3 = -1772054944;
      v3[16] = 0;
      v3[17] = v3 + 16;
      v3[18] = 0;
      v3[19] = v3 + 18;
      *(v3 + 1) = 1;
      *(v3 + 2) = 1;
      register_format = __archive_read_register_format(a1, v3, "iso9660", archive_read_format_iso9660_bid, archive_read_format_iso9660_options, archive_read_format_iso9660_read_header, archive_read_format_iso9660_read_data, archive_read_format_iso9660_read_data_skip, 0, archive_read_format_iso9660_cleanup, 0, 0);
      if (register_format)
      {
        free(v3);
        return register_format;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate iso9660 data");
      return -30;
    }
  }
}

void *__archive_rb_tree_init(void *result, uint64_t a2)
{
  result[1] = a2;
  *result = 0;
  return result;
}

uint64_t archive_read_support_format_xar(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_xar") == -30)
  {
    return -30;
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x10F0040B321D4E6uLL);
    if (v4)
    {
      v4[216] = 0;
      v4[217] = 0;
      *(v4 + 107) = 0;
      register_format = __archive_read_register_format(a1, v4, "xar", xar_bid, 0, xar_read_header, xar_read_data, xar_read_data_skip, 0, xar_cleanup, 0, 0);
      if (register_format)
      {
        free(v4);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate xar data");
      return -30;
    }
  }
}

uint64_t archive_read_support_format_warc(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_warc") == -30)
  {
    return -30;
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, 0x48uLL, 0x10100403BD722C9uLL);
    if (v3)
    {
      register_format = __archive_read_register_format(a1, v3, "warc", _warc_bid, 0, _warc_rdhdr, _warc_read, _warc_skip, 0, _warc_cleanup, 0, 0);
      if (register_format)
      {
        free(v3);
        return register_format;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate warc data");
      return -30;
    }
  }
}

uint64_t rar5_init(uint64_t a1)
{
  __memset_chk();
  if (cdeque_init(a1 + 19256, 0x2000))
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t cdeque_init(uint64_t a1, int a2)
{
  if (a1 && a2)
  {
    *(a1 + 4) = a2 - 1;
    *(a1 + 8) = 0;
    if ((a2 & *(a1 + 4)) != 0)
    {
      return 2;
    }

    else
    {
      cdeque_clear(a1);
      *(a1 + 8) = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
      return *(a1 + 8) == 0;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t archive_read_support_format_zip(unsigned int *a1)
{
  support_format_zip_streamable = archive_read_support_format_zip_streamable(a1);
  if (support_format_zip_streamable)
  {
    return support_format_zip_streamable;
  }

  else
  {
    return archive_read_support_format_zip_seekable(a1);
  }
}

uint64_t archive_read_support_format_zip_streamable(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_zip") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x21A0uLL, 0x10F00401908A625uLL);
    if (v2)
    {
      v2[2003] = 0;
      v2[2004] = 0;
      v2[14] = -1;
      *(v2 + 22) = real_crc32;
      if (__archive_read_register_format(a1, v2, "zip", archive_read_format_zip_streamable_bid, archive_read_format_zip_options, archive_read_format_zip_streamable_read_header, archive_read_format_zip_read_data, archive_read_format_zip_read_data_skip_streamable, 0, archive_read_format_zip_cleanup, archive_read_support_format_zip_capabilities_streamable, archive_read_format_zip_has_encrypted_entries))
      {
        free(v2);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data");
      return -30;
    }
  }
}

uint64_t __archive_read_filter_ahead(uint64_t a1, size_t a2, void *a3)
{
  if (*(a1 + 138))
  {
    if (a3)
    {
      *a3 = -30;
    }

    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (*(a1 + 96) >= a2 && *(a1 + 96))
      {
        if (a3)
        {
          *a3 = *(a1 + 96);
        }

        return *(a1 + 88);
      }

      if (*(a1 + 112) >= *(a1 + 128) + *(a1 + 96) && *(a1 + 128) + *(a1 + 96) >= a2)
      {
        *(a1 + 128) += *(a1 + 96);
        *(a1 + 120) -= *(a1 + 96);
        *(a1 + 96) = 0;
        *(a1 + 88) = *(a1 + 72);
        if (a3)
        {
          *a3 = *(a1 + 128);
        }

        return *(a1 + 120);
      }

      if (*(a1 + 88) > *(a1 + 72) && *(a1 + 88) + a2 > *(a1 + 72) + *(a1 + 80))
      {
        if (*(a1 + 96))
        {
          __memmove_chk();
        }

        *(a1 + 88) = *(a1 + 72);
      }

      if (*(a1 + 128))
      {
        break;
      }

      if (*(a1 + 136))
      {
        if (a3)
        {
          *a3 = 0;
        }

        return 0;
      }

      v8 = (**(a1 + 32))(a1, a1 + 104);
      if (v8 < 0)
      {
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(a1 + 104) = 0;
        *(a1 + 120) = 0;
        *(a1 + 138) = 1;
        if (a3)
        {
          *a3 = -30;
        }

        return 0;
      }

      if (v8)
      {
        *(a1 + 112) = v8;
        *(a1 + 128) = *(a1 + 112);
        *(a1 + 120) = *(a1 + 104);
      }

      else if (*(*(a1 + 24) + 228) == *(*(a1 + 24) + 224) - 1 || client_switch_proxy(a1, *(*(a1 + 24) + 228) + 1))
      {
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(a1 + 104) = 0;
        *(a1 + 120) = 0;
        *(a1 + 136) = 1;
        if (a3)
        {
          *a3 = *(a1 + 96);
        }

        return 0;
      }
    }

    if (a2 > *(a1 + 80))
    {
      break;
    }

LABEL_52:
    v7 = *(a1 + 72) + *(a1 + 80) - (*(a1 + 88) + *(a1 + 96));
    if (v7 + *(a1 + 96) > a2)
    {
      v7 = a2 - *(a1 + 96);
    }

    if (v7 > *(a1 + 128))
    {
      v7 = *(a1 + 128);
    }

    __memcpy_chk();
    *(a1 + 120) += v7;
    *(a1 + 128) -= v7;
    *(a1 + 96) += v7;
  }

  v5 = *(a1 + 80);
  size = v5;
  if (!v5)
  {
    size = a2;
  }

  while (size < a2)
  {
    v5 *= 2;
    if (v5 <= size)
    {
      archive_set_error(*(a1 + 24), 12, "Unable to allocate copy buffer");
      *(a1 + 138) = 1;
      if (a3)
      {
        *a3 = -30;
      }

      return 0;
    }

    size = v5;
  }

  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v4)
  {
    if (*(a1 + 96))
    {
      __memmove_chk();
    }

    free(*(a1 + 72));
    *(a1 + 72) = v4;
    *(a1 + 88) = v4;
    *(a1 + 80) = size;
    goto LABEL_52;
  }

  archive_set_error(*(a1 + 24), 12, "Unable to allocate copy buffer");
  *(a1 + 138) = 1;
  if (a3)
  {
    *a3 = -30;
  }

  return 0;
}

uint64_t archive_read_support_format_zip_seekable(unsigned int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_zip_seekable") == -30)
  {
    return -30;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x21A0uLL, 0x10F00401908A625uLL);
    if (v2)
    {
      v2[2003] = 1;
      v2[2004] = 1;
      v2[14] = -1;
      *(v2 + 22) = real_crc32;
      if (__archive_read_register_format(a1, v2, "zip", archive_read_format_zip_seekable_bid, archive_read_format_zip_options, archive_read_format_zip_seekable_read_header, archive_read_format_zip_read_data, archive_read_format_zip_read_data_skip_seekable, 0, archive_read_format_zip_cleanup, archive_read_support_format_zip_capabilities_seekable, archive_read_format_zip_has_encrypted_entries))
      {
        free(v2);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data");
      return -30;
    }
  }
}

uint64_t archive_read_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  archive_read_set_open_callback(a1, a3);
  archive_read_set_read_callback(a1, a4);
  archive_read_set_close_callback(a1, a5);
  archive_read_set_callback_data(a1, a2);
  return archive_read_open1(a1);
}

uint64_t archive_clear_error(uint64_t result)
{
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t archive_read_set_read_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_read_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 184) = a2;
    return 0;
  }
}

uint64_t archive_read_set_close_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_close_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 208) = a2;
    return 0;
  }
}

uint64_t archive_read_set_open_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_open_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 176) = a2;
    return 0;
  }
}

uint64_t archive_read_set_callback_data2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_callback_data2") == -30)
  {
    return -30;
  }

  else
  {
    if (!*(a1 + 224))
    {
      *(a1 + 240) = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
      if (!*(a1 + 240))
      {
        archive_set_error(a1, 12, "No memory.");
        return -30;
      }

      *(a1 + 224) = 1;
    }

    if (a3 <= *(a1 + 224) - 1)
    {
      *(*(a1 + 240) + 24 * a3 + 16) = a2;
      *(*(a1 + 240) + 24 * a3) = -1;
      *(*(a1 + 240) + 24 * a3 + 8) = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "Invalid index specified.");
      return -30;
    }
  }
}

uint64_t archive_read_open1(uint64_t a1)
{
  v2 = 0;
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 184))
    {
      if (*(a1 + 176) && (v2 = (*(a1 + 176))(a1, *(*(a1 + 240) + 16))) != 0)
      {
        read_client_close_proxy(a1);
        return v2;
      }

      else
      {
        v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
        if (v5)
        {
          v5[1] = 0;
          v5[2] = 0;
          v5[3] = a1;
          v5[5] = *(*(a1 + 240) + 16);
          v5[4] = none_reader_vtable;
          v5[6] = "none";
          *(v5 + 14) = 0;
          *(v5 + 15) = 1;
          *(v5 + 16) = 1;
          **(a1 + 240) = 0;
          if (*(a1 + 632) && *(a1 + 640))
          {
              ;
            }

            *(i + 16) = v5;
          }

          else
          {
            *(a1 + 632) = v5;
            v2 = choose_filters(a1);
            if (v2 < -20)
            {
              *(a1 + 4) = 0x8000;
              return -30;
            }
          }

          if (!*(a1 + 2072))
          {
            v3 = choose_format(a1);
            if (v3 < 0)
            {
              close_filters(a1);
              *(a1 + 4) = 0x8000;
              return -30;
            }

            *(a1 + 2072) = a1 + 664 + 88 * v3;
          }

          *(a1 + 4) = 2;
          client_switch_proxy(*(a1 + 632), 0);
          return v2;
        }

        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 22, "No reader function provided to archive_read_open");
      *(a1 + 4) = 0x8000;
      return -30;
    }
  }
}

uint64_t choose_filters(_DWORD *a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  for (i = 0; ; ++i)
  {
    if (i >= 25)
    {
      archive_set_error(v11, 79, "Input requires too many filters for decoding");
      return -30;
    }

    v10 = 16;
    v7 = 0;
    v4 = 0;
    v5 = v11 + 62;
    v9 = 0;
    while (v9 < v10)
    {
      if (*(v5 + 2))
      {
        v8 = (**(v5 + 2))(v5, *(v11 + 79));
        if (v8 > v7)
        {
          v7 = v8;
          v4 = v5;
        }
      }

      ++v9;
      v5 += 6;
    }

    if (!v4)
    {
      break;
    }

    v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
    if (!v3)
    {
      return -30;
    }

    v3[1] = v4;
    v3[3] = v11;
    v3[2] = *(v11 + 79);
    *(v11 + 79) = v3;
    if ((*(*(v4 + 2) + 8))(*(v11 + 79)))
    {
      __archive_read_free_filters(v11);
      return -30;
    }
  }

  __archive_read_filter_ahead(*(v11 + 79), 1uLL, &v2);
  if (v2 < 0)
  {
    __archive_read_free_filters(v11);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t choose_format(uint64_t a1)
{
  v3 = -1;
  v2 = -1;
  *(a1 + 2072) = a1 + 664;
  for (i = 0; i < 16; ++i)
  {
    if (*(*(a1 + 2072) + 16))
    {
      v4 = (*(*(a1 + 2072) + 16))(a1, v3);
      if (v4 == -30)
      {
        return -30;
      }

      if (**(a1 + 632))
      {
        __archive_read_seek(a1, 0, 0);
      }

      if (v4 > v3 || (v2 & 0x80000000) != 0)
      {
        v3 = v4;
        v2 = i;
      }
    }

    *(a1 + 2072) += 88;
  }

  if ((v2 & 0x80000000) != 0)
  {
    archive_set_error(a1, 79, "No formats registered");
    return -30;
  }

  else if (v3 >= 1)
  {
    return v2;
  }

  else
  {
    archive_set_error(a1, 79, "Unrecognized archive format");
    return -30;
  }
}

uint64_t archive_read_format_ar_bid(uint64_t a1)
{
  __s1 = __archive_read_ahead(a1, 8uLL, 0);
  if (__s1)
  {
    if (!memcmp(__s1, "!<arch>\n", 8uLL))
    {
      return 64;
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

uint64_t archive_read_format_cpio_bid(uint64_t a1)
{
  v3 = **(a1 + 2072);
  ahead = __archive_read_ahead(a1, 6uLL, 0);
  if (ahead)
  {
    if (!memcmp(ahead, "070707", 6uLL))
    {
      *(v3 + 8) = header_odc;
      return 48;
    }

    else if (!memcmp(ahead, "070727", 6uLL))
    {
      *(v3 + 8) = header_odc;
      return 48;
    }

    else if (!memcmp(ahead, "070701", 6uLL))
    {
      *(v3 + 8) = header_newc;
      return 48;
    }

    else if (!memcmp(ahead, "070702", 6uLL))
    {
      *(v3 + 8) = header_newc;
      return 48;
    }

    else if (ahead[1] + (*ahead << 8) == 29127)
    {
      *(v3 + 8) = header_bin_be;
      return 16;
    }

    else
    {
      if (*ahead + (ahead[1] << 8) != 29127)
      {
        return -20;
      }

      *(v3 + 8) = header_bin_le;
      return 16;
    }
  }

  return -1;
}

uint64_t archive_read_format_empty_bid(uint64_t a1, int a2)
{
  if (a2 >= 1 || __archive_read_ahead(a1, 1uLL, 0))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_lha_bid(uint64_t a1, int a2)
{
  v10 = a1;
  v9 = a2;
  ahead = 0;
  v7 = 0;
  v6 = 0;
  if (a2 <= 30)
  {
    ahead = __archive_read_ahead(v10, 0x16uLL, 0);
    if (ahead)
    {
      if (lha_check_header_format(ahead))
      {
        if (*ahead == 77 && ahead[1] == 90)
        {
          v5 = 0;
          v4 = 4096;
          while (v5 < 20480)
          {
            v7 = __archive_read_ahead(v10, v5 + v4, &v6);
            if (v7)
            {
              for (ahead = (v7 + v5); (ahead + 22) < v7 + v6; ahead += v3)
              {
                v3 = lha_check_header_format(ahead);
                if (!v3)
                {
                  return 30;
                }
              }

              v5 = &ahead[-v7];
            }

            else
            {
              v4 >>= 1;
              if (v4 < 25)
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
        return 30;
      }
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

uint64_t mtree_bid(uint64_t a1)
{
  v1 = strlen("#mtree");
  ahead = __archive_read_ahead(a1, v1, 0);
  if (ahead)
  {
    v2 = strlen("#mtree");
    if (!memcmp(ahead, "#mtree", v2))
    {
      return (8 * strlen("#mtree"));
    }

    else
    {
      return detect_form(a1, 0);
    }
  }

  else
  {
    return -1;
  }
}

uint64_t lha_check_header_format(_BYTE *a1)
{
  v2 = a1[5];
  if (v2 == 45)
  {
    return 3;
  }

  if ((v2 - 48) > 7 && v2 != 100)
  {
    if (v2 == 104)
    {
      return 1;
    }

    if (v2 == 108)
    {
      return 2;
    }

    if (v2 != 115)
    {
      if (v2 == 122)
      {
        return 1;
      }

      else
      {
        return 4;
      }
    }
  }

  v3 = 4;
  if (!*a1 || a1[2] != 45 || a1[3] != 108 || a1[6] != 45)
  {
    return v3;
  }

  if (a1[4] != 104)
  {
    goto LABEL_21;
  }

  if (a1[5] == 115)
  {
    return v3;
  }

  if (!a1[20])
  {
    return 0;
  }

  if (a1[20] <= 3u && a1[19] == 32)
  {
    return 0;
  }

LABEL_21:
  if (a1[4] != 122 || a1[20] || a1[5] != 115 && a1[5] != 52 && a1[5] != 53)
  {
    return v3;
  }

  return 0;
}

uint64_t next_line(uint64_t a1, uint64_t *a2, size_t *a3, void *a4, void *a5)
{
  v10 = 0;
  if (*a3)
  {
    line_size = get_line_size(*a2, *a3, a5);
  }

  else
  {
    *a5 = 0;
    line_size = 0;
  }

  while (1)
  {
    v6 = 0;
    if (!*a5)
    {
      v6 = 0;
      if (line_size == *a3)
      {
        v6 = v10 == 0;
      }
    }

    if (!v6)
    {
      break;
    }

    v9 = *a4 - *a3;
    v8 = (*a4 + 1023) & 0xFFFFFC00;
    if (line_size >= 0x100000)
    {
      return -1;
    }

    if (v8 < *a4 + 160)
    {
      v8 *= 2;
    }

    *a2 = __archive_read_ahead(a1, v8, a3);
    if (!*a2)
    {
      if (*a4 >= *a3)
      {
        return 0;
      }

      *a2 = __archive_read_ahead(a1, *a3, a3);
      v10 = 1;
    }

    *a4 = *a3;
    *a2 += v9;
    *a3 -= v9;
    v7 = line_size;
    line_size = get_line_size((*a2 + line_size), *a3 - line_size, a5);
    if ((line_size & 0x8000000000000000) == 0)
    {
      line_size += v7;
    }
  }

  return line_size;
}

uint64_t detect_form(uint64_t a1, _DWORD *a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (a2)
  {
    *v15 = 0;
  }

  v14 = __archive_read_ahead(v16, 1uLL, &v13);
  if (v14)
  {
    v12 = v13;
    while (1)
    {
      v11 = next_line(v16, &v14, &v13, &v12, &v10);
      if (v11 <= 0 || !v10)
      {
        break;
      }

      if (v8)
      {
        if (bid_keyword_list(v14, v11, 0, 0) <= 0)
        {
          break;
        }

        if (v14[v11 - v10 - 1] != 92)
        {
          if (v8 == 1 && ++v9 >= 3)
          {
            break;
          }

          v8 = 0;
        }

        v14 += v11;
        v13 -= v11;
      }

      else
      {
        while (1)
        {
          v4 = 0;
          if (v11 > 0)
          {
            v3 = 1;
            if (*v14 != 32)
            {
              v3 = *v14 == 9;
            }

            v4 = v3;
          }

          if (!v4)
          {
            break;
          }

          ++v14;
          --v13;
          --v11;
        }

        if (*v14 == 35 || *v14 == 10 || *v14 == 13)
        {
          v14 += v11;
          v13 -= v11;
        }

        else
        {
          if (*v14 == 47)
          {
            if (v11 > 4 && !strncmp(v14, "/set", 4uLL))
            {
              if (bid_keyword_list(v14 + 4, v11 - 4, 0, 0) <= 0)
              {
                break;
              }

              if (v14[v11 - v10 - 1] == 92)
              {
                v8 = 2;
              }
            }

            else
            {
              if (v11 <= 6 || strncmp(v14, "/unset", 6uLL) || bid_keyword_list(v14 + 6, v11 - 6, 1, 0) <= 0)
              {
                break;
              }

              if (v14[v11 - v10 - 1] == 92)
              {
                v8 = 2;
              }
            }
          }

          else
          {
            v6 = 0;
            v5 = bid_entry(v14, v11, v10, &v6);
            if (v5 < 0)
            {
              break;
            }

            if (v7)
            {
              if (v7 == 1 && !v6 && v5 > 0)
              {
                break;
              }
            }

            else if (v6)
            {
              v7 = 1;
            }

            else if (v5 > 0)
            {
              v7 = -1;
            }

            if (v6 || v14[v11 - v10 - 1] != 92)
            {
              if (++v9 >= 3)
              {
                break;
              }
            }

            else
            {
              v8 = 1;
            }
          }

          v14 += v11;
          v13 -= v11;
        }
      }
    }

    if (v9 < 3 && (v9 <= 0 || v11))
    {
      return 0;
    }

    else
    {
      if (v15 && v7 == 1)
      {
        *v15 = 1;
      }

      return 32;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t get_line_size(char *a1, uint64_t a2, void *a3)
{
  for (i = 0; i < a2; ++i)
  {
    v4 = *a1;
    if (!*a1)
    {
      if (a3)
      {
        *a3 = 0;
      }

      return -1;
    }

    if (v4 == 10)
    {
      goto LABEL_15;
    }

    if (v4 == 13)
    {
      if (a2 - i > 1 && a1[1] == 10)
      {
        if (a3)
        {
          *a3 = 2;
        }

        return i + 2;
      }

LABEL_15:
      if (a3)
      {
        *a3 = 1;
      }

      return i + 1;
    }

    ++a1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2;
}

uint64_t archive_read_format_tar_bid(uint64_t a1)
{
  ahead = __archive_read_ahead(a1, 0x200uLL, 0);
  if (ahead)
  {
    if (*ahead || !archive_block_is_null(ahead))
    {
      if (checksum(a1, ahead))
      {
        v3 = 48;
        if (!strcmp((ahead + 257), "ustar") && !memcmp((ahead + 263), "00", 2uLL))
        {
          v3 = 104;
        }

        if (!memcmp((ahead + 257), "ustar ", 6uLL) && !strcmp((ahead + 263), " "))
        {
          v3 += 56;
        }

        if (*(ahead + 156) && (*(ahead + 156) < 48 || *(ahead + 156) > 57) && (*(ahead + 156) < 65 || *(ahead + 156) > 90) && (*(ahead + 156) < 97 || *(ahead + 156) > 122))
        {
          return 0;
        }

        else
        {
          v4 = v3 + 2;
          if (!validate_number_field((ahead + 100), 8uLL) || !validate_number_field((ahead + 108), 8uLL) || !validate_number_field((ahead + 116), 8uLL) || !validate_number_field((ahead + 136), 0xCuLL) || !validate_number_field((ahead + 124), 0xCuLL) || !validate_number_field((ahead + 329), 8uLL) || !validate_number_field((ahead + 337), 8uLL))
          {
            return 0;
          }

          return v4;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 10;
    }
  }

  else
  {
    return -1;
  }
}

BOOL checksum(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    v3 = *(a2 + 148 + i);
    if (v3 != 32 && v3 && (v3 < 48 || v3 > 55))
    {
      return 0;
    }
  }

  v7 = tar_atol((a2 + 148), 8uLL);
  v8 = 0;
  for (j = 0; j < 0x94; ++j)
  {
    v8 += *(a2 + j);
  }

  while (j < 0x9C)
  {
    v8 += 32;
    ++j;
  }

  while (j < 0x200)
  {
    v8 += *(a2 + j++);
  }

  if (v7 == v8)
  {
    return 1;
  }

  else
  {
    v9 = 0;
    for (k = 0; k < 0x94; ++k)
    {
      v9 += *(a2 + k);
    }

    while (k < 0x9C)
    {
      v9 += 32;
      ++k;
    }

    while (k < 0x200)
    {
      v9 += *(a2 + k++);
    }

    return v7 == v9;
  }
}

unint64_t tar_atol(_BYTE *a1, unint64_t a2)
{
  if ((*a1 & 0x80) != 0)
  {
    return tar_atol256(a1, a2);
  }

  else
  {
    return tar_atol8(a1, a2);
  }
}

unint64_t tar_atol_base_n(_BYTE *a1, uint64_t a2, int a3)
{
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL / a3;
  v10 = 0x7FFFFFFFFFFFFFFFLL % a3;
  while (1)
  {
    v7 = 0;
    if (a2)
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

  v8 = 1;
  if (a2 && *a1 == 45)
  {
    v8 = -1;
    ++a1;
    --a2;
    v12 = 0x8000000000000000;
    v11 = -(0x8000000000000000 / a3);
    v10 = -(0x8000000000000000 % a3);
  }

  v13 = 0;
  if (a2)
  {
    v9 = *a1 - 48;
    while (1)
    {
      v5 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v5 = 0;
        if (v9 < a3)
        {
          v5 = a2 != 0;
        }
      }

      if (!v5)
      {
        break;
      }

      if (v13 > v11 || v13 == v11 && v9 >= v10)
      {
        return v12;
      }

      v13 = v13 * a3 + v9;
      v9 = *++a1 - 48;
      --a2;
    }
  }

  if (v8 < 0)
  {
    return -v13;
  }

  else
  {
    return v13;
  }
}

uint64_t validate_number_field(unsigned __int8 *a1, unint64_t a2)
{
  v6 = *a1;
  if (*a1 == 128 || v6 == 255 || !v6)
  {
    return 1;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v4 = 0;
      if (i < a2)
      {
        v4 = a1[i] == 32;
      }

      if (!v4)
      {
        break;
      }
    }

    while (1)
    {
      v3 = 0;
      if (i < a2)
      {
        v3 = 0;
        if (a1[i] >= 48)
        {
          v3 = a1[i] <= 55;
        }
      }

      if (!v3)
      {
        break;
      }

      ++i;
    }

    while (i < a2)
    {
      if (a1[i] != 32 && a1[i])
      {
        return 0;
      }

      ++i;
    }

    return 1;
  }
}

uint64_t xar_bid(uint64_t a1)
{
  ahead = __archive_read_ahead(a1, 0x1CuLL, 0);
  if (ahead)
  {
    if (archive_be32dec_2(ahead) == 2019652129)
    {
      if (archive_be16dec((ahead + 4)) == 28)
      {
        if (archive_be16dec((ahead + 6)) == 1)
        {
          if (archive_be32dec_2((ahead + 24)) > 2)
          {
            return 0;
          }

          else
          {
            return 96;
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
    return -1;
  }
}

uint64_t _warc_bid(uint64_t a1, int a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = __archive_read_ahead(a1, 0xCuLL, &v4);
  if (v5)
  {
    if (v4 >= 12)
    {
      v3 = _warc_rdver(v5, v4);
      if (v3 >= 0x4B0 && v3 <= 0x2710)
      {
        return 64;
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

  else
  {
    return -1;
  }
}

uint64_t _warc_rdver(char *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 >= 0xC && !memcmp(a1, "WARC/", 5uLL))
  {
    v8 = a1 + 5;
    if (isdigit(*v8) && v8[1] == 46 && isdigit(v8[2]))
    {
      v3 = isdigit(v8[3]) != 0;
      v5 = 10000 * (*v8 - 48);
      if (v3)
      {
        v4 = v5 + 1000 * (v8[2] - 48) + 100 * (v8[3] - 48);
      }

      else
      {
        v4 = v5 + 100 * (v8[2] - 48);
      }

      __s1 = &v8[v3 + 3];
      if (v4 < 0x4B0)
      {
        if (*__s1 != 32 && *__s1 != 9)
        {
          return 0;
        }
      }

      else if (memcmp(__s1, "\r\n", 2uLL))
      {
        return 0;
      }
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_7zip_bid(uint64_t a1, int a2)
{
  v10 = a1;
  v9 = a2;
  ahead = 0;
  if (a2 <= 32)
  {
    ahead = __archive_read_ahead(v10, 6uLL, 0);
    if (ahead)
    {
      if (!memcmp(ahead, "7z\xBC\xAF'\x1C", 6uLL))
      {
        return 48;
      }

      else
      {
        if (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL))
        {
          v7 = 159744;
          v6 = 4096;
          v5 = 0;
          while (v7 + v6 <= 393216)
          {
            v4 = __archive_read_ahead(v10, v7 + v6, &v5);
            if (v4)
            {
              for (ahead = (v4 + v7); (ahead + 32) < v4 + v5; ahead += v3)
              {
                v3 = check_7zip_header_in_sfx(ahead);
                if (!v3)
                {
                  return 48;
                }
              }

              v7 = &ahead[-v4];
            }

            else
            {
              v6 >>= 1;
              if (v6 < 64)
              {
                return 0;
              }
            }
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

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_cab_bid(uint64_t a1, int a2)
{
  v10 = a1;
  v9 = a2;
  ahead = 0;
  v7 = 0;
  if (a2 <= 64)
  {
    ahead = __archive_read_ahead(v10, 8uLL, 0);
    if (ahead)
    {
      if (!memcmp(ahead, "MSCF", 8uLL))
      {
        return 64;
      }

      else
      {
        if (*ahead == 77 && ahead[1] == 90)
        {
          v6 = 0;
          v5 = 4096;
          while (v6 < 0x20000)
          {
            v4 = __archive_read_ahead(v10, v6 + v5, &v7);
            if (v4)
            {
              for (ahead = (v4 + v6); (ahead + 8) < v4 + v7; ahead += cab_magic)
              {
                cab_magic = find_cab_magic(ahead);
                if (!cab_magic)
                {
                  return 64;
                }
              }

              v6 = &ahead[-v4];
            }

            else
            {
              v5 >>= 1;
              if (v5 < 128)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }
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

uint64_t archive_read_format_rar_bid(uint64_t a1, int a2)
{
  v9 = a1;
  v8 = a2;
  __s1 = 0;
  if (a2 <= 30)
  {
    __s1 = __archive_read_ahead(v9, 7uLL, 0);
    if (__s1)
    {
      if (!memcmp(__s1, &unk_1BF343880, 7uLL))
      {
        return 30;
      }

      else
      {
        if (*__s1 == 77 && *(__s1 + 1) == 90 || !memcmp(__s1, "\x7FELF", 4uLL))
        {
          v6 = 0x10000;
          v5 = 4096;
          v4 = 0;
          while (v6 + v5 <= 0x20000)
          {
            v3 = __archive_read_ahead(v9, v6 + v5, &v4);
            if (v3)
            {
              for (__s1 = (v3 + v6); __s1 + 7 < v3 + v4; __s1 = __s1 + 16)
              {
                if (!memcmp(__s1, &unk_1BF343880, 7uLL))
                {
                  return 30;
                }
              }

              v6 = __s1 - v3;
            }

            else
            {
              v5 >>= 1;
              if (v5 < 64)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }
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

uint64_t archive_read_format_zip_streamable_bid(uint64_t a1)
{
  ahead = __archive_read_ahead(a1, 4uLL, 0);
  if (ahead)
  {
    if (*ahead == 80 && ahead[1] == 75 && (ahead[2] == 1 && ahead[3] == 2 || ahead[2] == 3 && ahead[3] == 4 || ahead[2] == 5 && ahead[3] == 6 || ahead[2] == 6 && ahead[3] == 6 || ahead[2] == 7 && ahead[3] == 8 || ahead[2] == 48 && ahead[3] == 48))
    {
      return 29;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t rar5_bid(uint64_t a1, int a2)
{
  if (a2 <= 30)
  {
    v3 = bid_standard(a1);
    if ((v3 & 0x80000000) != 0)
    {
      v4 = bid_sfx(a1);
      if ((v4 & 0x80000000) != 0)
      {
        return -1;
      }

      else
      {
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
    return -1;
  }
}

uint64_t archive_read_format_iso9660_bid(uint64_t a1, int a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (a2 <= 48)
  {
    v7 = **(v9 + 2072);
    v4 = __archive_read_ahead(v9, 0xC000uLL, &v6);
    if (v4)
    {
      v6 -= 0x8000;
      v5 = (v4 + 0x8000);
      v3 = 0;
      while (v6 > 2048)
      {
        if (*v5 >= 4u && *v5 != 255)
        {
          return 0;
        }

        if (memcmp(v5 + 1, "CD001", 5uLL))
        {
          return 0;
        }

        if (!isPVD(v7, v5) && (*(v7 + 196) || !isJolietSVD(v7, v5)) && !isBootRecord(v7, v5) && !isEVD(v7, v5) && !isSVD(v7, v5) && !isVolumePartition(v7, v5))
        {
          if (!isVDSetTerminator(v7, v5))
          {
            return 0;
          }

          v3 = 1;
          break;
        }

        v6 -= 2048;
        v5 += 2048;
      }

      if (v3 && *(v7 + 188) > 16)
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
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_read_next_header2(uint64_t a1, uint64_t *a2)
{
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_next_header2") != -30)
  {
    v5 = *(a1 + 160);
    if ((*(v5 + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(v5 + 520), v5, v5 + 408);
      *(v5 + 520) = -1;
    }

    do
    {
      archive_entry_clear(a2);
      entry_0 = next_entry_0(a1, v5, a2);
      if ((*(v5 + 520) & 0x80000000) == 0)
      {
        close(*(v5 + 520));
        *(v5 + 520) = -1;
      }
    }

    while (entry_0 == -10);
    tree_enter_initial_dir(v5);
    switch(entry_0)
    {
      case 0xFFFFFFE2:
        *(a1 + 4) = 0x8000;
        break;
      case 0xFFFFFFEC:
      case 0u:
        v2 = tree_current_path(v5);
        archive_entry_copy_sourcepath(a2, v2);
        *(v5 + 536) = 0;
        if (archive_entry_filetype(a2) == 0x8000)
        {
          *(v5 + 404) = archive_entry_nlink(a2);
          *(v5 + 528) = archive_entry_size(a2);
          *(v5 + 524) = *(v5 + 528) == 0;
          if (!*(v5 + 524) && setup_sparse(a1, a2))
          {
            return -30;
          }
        }

        else
        {
          *(v5 + 528) = 0;
          *(v5 + 524) = 1;
        }

        *(a1 + 4) = 4;
        break;
      case 1u:
        *(a1 + 4) = 16;
        break;
    }

    __archive_reset_read_data(a1);
    return entry_0;
  }

  return -30;
}

uint64_t _archive_read_next_header2_0(uint64_t a1, uint64_t a2)
{
  data_skip = 0;
  if (__archive_check_magic(a1, 14594245, 6, "archive_read_next_header") == -30)
  {
    return -30;
  }

  archive_entry_clear(a2);
  archive_clear_error(a1);
  if (*(a1 + 4) == 4)
  {
    data_skip = archive_read_data_skip(a1);
    if (data_skip == 1)
    {
      archive_set_error(a1, 5, "Premature end-of-file.");
LABEL_7:
      *(a1 + 4) = 0x8000;
      return -30;
    }

    if (data_skip == -30)
    {
      goto LABEL_7;
    }
  }

  *(a1 + 648) = **(a1 + 632);
  ++*(a1 + 32);
  v4 = (*(*(a1 + 2072) + 32))(a1, a2);
  if (v4 == -30)
  {
    *(a1 + 4) = 0x8000;
  }

  else if (v4 == -20)
  {
    *(a1 + 4) = 4;
  }

  else if (v4 != -10)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        *(a1 + 4) = 16;
        --*(a1 + 32);
      }
    }

    else
    {
      *(a1 + 4) = 4;
    }
  }

  __archive_reset_read_data(a1);
  *(a1 + 656) = *(a1 + 228);
  if (v4 < data_skip || v4 == 1)
  {
    return v4;
  }

  else
  {
    return data_skip;
  }
}

uint64_t archive_read_format_zip_seekable_bid(uint64_t a1, int a2)
{
  v11 = **(a1 + 2072);
  if (a2 <= 32)
  {
    seek = __archive_read_seek(a1, 0, 2);
    if (seek > 0)
    {
      if (seek <= 0x4000)
      {
        v4 = seek;
      }

      else
      {
        v4 = 0x4000;
      }

      v9 = __archive_read_seek(a1, -v4, 2);
      if (v9 < 0)
      {
        return 0;
      }

      else
      {
        ahead = __archive_read_ahead(a1, v4, 0);
        if (ahead)
        {
          for (i = v4 - 22; ; i -= 4)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    if (i <= 0)
                    {
                      return 0;
                    }

                    v3 = *(ahead + i);
                    if (v3 != 5)
                    {
                      break;
                    }

                    i -= 2;
                  }

                  if (v3 != 6)
                  {
                    break;
                  }

                  i -= 3;
                }

                if (v3 != 75)
                {
                  break;
                }

                --i;
              }

              if (v3 == 80)
              {
                break;
              }

              i -= 4;
            }

            if (!memcmp((ahead + i), "PK\x05\x06", 4uLL))
            {
              break;
            }
          }

          eocd = read_eocd(v11, (ahead + i), v9 + i);
          if (i >= 20 && !memcmp((ahead + i - 20), "PK\x06\a", 4uLL))
          {
            zip64_eocd = read_zip64_eocd(a1, v11, (ahead + i - 20));
            if (zip64_eocd > eocd)
            {
              return zip64_eocd;
            }
          }

          return eocd;
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
    return -1;
  }
}

uint64_t client_switch_proxy(uint64_t a1, int a2)
{
  v6 = 0;
  if (*(*(a1 + 24) + 228) == a2)
  {
    return 0;
  }

  else
  {
    *(*(a1 + 24) + 228) = a2;
    v4 = *(*(*(a1 + 24) + 240) + 24 * *(*(a1 + 24) + 228) + 16);
    if (*(*(a1 + 24) + 216))
    {
      v5 = (*(*(a1 + 24) + 216))(*(a1 + 24), *(a1 + 40), v4);
      v6 = v5;
      *(a1 + 40) = v4;
    }

    else
    {
      if (*(*(a1 + 24) + 208))
      {
        v6 = (*(*(a1 + 24) + 208))(*(a1 + 24), *(a1 + 40));
      }

      *(a1 + 40) = v4;
      v5 = client_open_proxy(a1);
    }

    if (v6 >= v5)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t _archive_read_next_header(uint64_t a1, void *a2)
{
  *a2 = 0;
  LODWORD(result) = _archive_read_next_header2(a1, *(a1 + 144));
  *a2 = *(a1 + 144);
  return result;
}

uint64_t _archive_read_next_header_0(uint64_t a1, void *a2)
{
  *a2 = 0;
  LODWORD(result) = _archive_read_next_header2_0(a1, *(a1 + 144));
  *a2 = *(a1 + 144);
  return result;
}

void archive_mstring_clean(uint64_t a1)
{
  archive_wstring_free(a1 + 48);
  archive_string_free(a1);
  archive_string_free(a1 + 24);
  archive_string_free(a1 + 72);
  *(a1 + 96) = 0;
}

uint64_t archive_entry_clear(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  archive_mstring_clean(a1 + 168);
  archive_mstring_clean(a1 + 288);
  archive_mstring_clean(a1 + 392);
  archive_mstring_clean(a1 + 496);
  archive_mstring_clean(a1 + 808);
  archive_mstring_clean(a1 + 600);
  archive_mstring_clean(a1 + 704);
  archive_entry_copy_mac_metadata(a1, 0, 0);
  archive_acl_clear(a1 + 1136);
  archive_entry_xattr_clear(a1);
  archive_entry_sparse_clear(a1);
  free(*(a1 + 8));
  *(a1 + 1244) = 0;
  __memset_chk();
  return a1;
}

void archive_string_free(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(*a1);
  *a1 = 0;
}

void archive_wstring_free(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(*a1);
  *a1 = 0;
}

void archive_entry_copy_mac_metadata(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*(a1 + 920));
  if (a2 && a3)
  {
    *(a1 + 928) = a3;
    *(a1 + 920) = malloc_type_malloc(a3, 0x17F5CD8AuLL);
    if (!*(a1 + 920))
    {
      abort();
    }

    __memcpy_chk();
  }

  else
  {
    *(a1 + 920) = 0;
    *(a1 + 928) = 0;
  }
}

void archive_acl_clear(uint64_t a1)
{
  while (*(a1 + 8))
  {
    v1 = **(a1 + 8);
    archive_mstring_clean(*(a1 + 8) + 24);
    free(*(a1 + 8));
    *(a1 + 8) = v1;
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
}

void archive_entry_xattr_clear(uint64_t a1)
{
  while (*(a1 + 1192))
  {
    v1 = **(a1 + 1192);
    free(*(*(a1 + 1192) + 8));
    free(*(*(a1 + 1192) + 16));
    free(*(a1 + 1192));
    *(a1 + 1192) = v1;
  }

  *(a1 + 1192) = 0;
}

void archive_entry_sparse_clear(uint64_t a1)
{
  while (*(a1 + 1208))
  {
    v1 = **(a1 + 1208);
    free(*(a1 + 1208));
    *(a1 + 1208) = v1;
  }

  *(a1 + 1216) = 0;
}

uint64_t archive_read_format_tar_read_header(_DWORD *a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  archive_entry_set_dev(a2, archive_read_format_tar_read_header_default_dev + 1);
  archive_entry_set_ino(v10, ++archive_read_format_tar_read_header_default_inode);
  if (archive_read_format_tar_read_header_default_inode >= 0xFFFF)
  {
    ++archive_read_format_tar_read_header_default_dev;
    archive_read_format_tar_read_header_default_inode = 0;
  }

  v9 = **(v11 + 259);
  v9[36] = 0;
  gnu_clear_sparse_list(v9);
  v9[39] = -1;
  *(v9 + 112) = 0;
  *(v9 + 68) = 0;
  v9[51] = v9[50];
  if (!v9[51])
  {
    if (!*(v9 + 108))
    {
      v9[53] = archive_string_default_conversion_for_read();
      *(v9 + 108) = 1;
    }

    v9[51] = v9[53];
  }

  v6 = tar_read_header(v11, v9, v10, &v4);
  tar_flush_unconsumed(v11, &v4);
  if (v9[41])
  {
    for (i = v9[41]; i; i = *i)
    {
      if (!*(i + 6))
      {
        archive_entry_sparse_add_entry(v10, i[1], i[2]);
      }
    }
  }

  else if (gnu_add_sparse_entry(v11, v9, 0, v9[35]))
  {
    return -30;
  }

  if (!v6 && archive_entry_filetype(v10) == 0x8000)
  {
    v7 = archive_entry_pathname_w(v10);
    if (v7)
    {
      v5 = wcslen(v7);
      if (v5 && v7[v5 - 1] == 47)
      {
        archive_entry_set_filetype(v10, 0x4000);
        v9[35] = 0;
        v9[37] = 0;
      }
    }

    else
    {
      v8 = archive_entry_pathname(v10);
      if (v8)
      {
        v5 = strlen(v8);
        if (v5)
        {
          if (v8[v5 - 1] == 47)
          {
            archive_entry_set_filetype(v10, 0x4000);
            v9[35] = 0;
            v9[37] = 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t archive_entry_set_ino(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x80u;
  *(result + 96) = v2;
  return result;
}

_DWORD *archive_entry_set_dev(_DWORD *result, int a2)
{
  result[4] = 0;
  result[40] |= 0x100u;
  result[32] = 0;
  result[33] = a2;
  return result;
}

void gnu_clear_sparse_list(uint64_t a1)
{
  while (*(a1 + 328))
  {
    v1 = *(a1 + 328);
    *(a1 + 328) = *v1;
    free(v1);
  }

  *(a1 + 336) = 0;
}

uint64_t tar_read_header(_DWORD *a1, void *a2, void *a3, uint64_t *a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v12 = 0;
  while (1)
  {
    tar_flush_unconsumed(v18, v15);
    v10 = __archive_read_ahead(v18, 0x200uLL, &v14);
    if (v14 < 0)
    {
      return v14;
    }

    if (!v14)
    {
      return 1;
    }

    if (v14 < 512)
    {
      archive_set_error(v18, 79, "Truncated tar archive");
      return -30;
    }

    *v15 = 512;
    if (*v10 || !archive_block_is_null(v10))
    {
      break;
    }

    if (!*(v18 + 3))
    {
      v18[4] = 196608;
      *(v18 + 3) = "tar";
    }

    if (!*(v17 + 111))
    {
      tar_flush_unconsumed(v18, v15);
      ahead = __archive_read_ahead(v18, 0x200uLL, 0);
      if (ahead && !*ahead && archive_block_is_null(ahead))
      {
        __archive_read_consume(v18, 512);
      }

      archive_clear_error(v18);
      return 1;
    }
  }

  if (!checksum(v18, v10))
  {
    tar_flush_unconsumed(v18, v15);
    archive_set_error(v18, 22, "Damaged tar archive");
    return -10;
  }

  v5 = *(v17 + 67) + 1;
  *(v17 + 67) = v5;
  if (v5 > 32)
  {
    tar_flush_unconsumed(v18, v15);
    archive_set_error(v18, 22, "Too many special headers");
    return -20;
  }

  v7 = v10[156];
  switch(v7)
  {
    case 'A':
      v18[4] = 196610;
      *(v18 + 3) = "Solaris tar";
      v13 = header_Solaris_ACL(v18, v17, v16, v10, v15);
      break;
    case 'K':
      v13 = header_longlink(v18, v17, v16, v10, v15);
      break;
    case 'L':
      v13 = header_longname(v18, v17, v16, v10, v15);
      break;
    case 'V':
      v13 = header_volume(v18, v17, v16, v10, v15);
      if (v13 == 1)
      {
        v12 = 1;
      }

      break;
    case 'X':
      v18[4] = 196610;
      *(v18 + 3) = "POSIX pax interchange format (Sun variant)";
      v13 = header_pax_extensions(v18, v17, v16, v10, v15);
      break;
    case 'g':
      v18[4] = 196610;
      *(v18 + 3) = "POSIX pax interchange format";
      v13 = header_pax_global(v18, v17, v16, v10, v15);
      if (v13 == 1)
      {
        return 1;
      }

      break;
    case 'x':
      v18[4] = 196610;
      *(v18 + 3) = "POSIX pax interchange format";
      v13 = header_pax_extensions(v18, v17, v16, v10, v15);
      break;
    default:
      if (!strcmp(v10 + 257, "ustar  "))
      {
        v18[4] = 196612;
        *(v18 + 3) = "GNU tar format";
        v13 = header_gnutar(v18, v17, v16, v10, v15);
      }

      else if (!memcmp(v10 + 257, "ustar", 5uLL))
      {
        if (v18[4] != 196610)
        {
          v18[4] = 196609;
          *(v18 + 3) = "POSIX ustar format";
        }

        v13 = header_ustar(v18, v17, v16, v10);
      }

      else
      {
        v18[4] = 196608;
        *(v18 + 3) = "tar (non-POSIX)";
        v13 = header_old_tar(v18, v17, v16, v10);
      }

      break;
  }

  if (v13 == -30)
  {
    return -30;
  }

  tar_flush_unconsumed(v18, v15);
  --*(v17 + 67);
  if ((v13 == -20 || !v13) && !*(v17 + 67) && *(v17 + 110))
  {
    if (++*(v17 + 68) > 1)
    {
      return 0;
    }

    mac_metadata_blob = read_mac_metadata_blob(v18, v17, v16, 0, v15);
    if (mac_metadata_blob < v13)
    {
      v13 = mac_metadata_blob;
    }

    --*(v17 + 68);
  }

  if (v13 != -20 && v13)
  {
    if (v13 == 1)
    {
      if (v12)
      {
        return 1;
      }

      archive_set_error(v18, 22, "Damaged tar archive");
    }

    return -30;
  }

  else
  {
    if (*(v17 + 368))
    {
      if (*(v17 + 90) != 1 || *(v17 + 91))
      {
        archive_set_error(v18, -1, "Unrecognized GNU sparse file format");
        return -20;
      }

      *(v17 + 368) = 0;
      v8 = gnu_sparse_10_read(v18, v17, v15);
      if (v8 < 0)
      {
        return v8;
      }

      v17[35] -= v8;
      *(v17 + 368) = 0;
    }

    return v13;
  }
}

uint64_t tar_flush_unconsumed(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    result = __archive_read_consume(result, *a2);
    *a2 = 0;
  }

  return result;
}

uint64_t read_body_to_string(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v6 = tar_atol((a4 + 124), 0xCuLL);
  if (v6 > 0x200000 || v6 < 0)
  {
    archive_set_error(a1, 22, "Special header too large: %llu", v6);
    return -30;
  }

  else if (archive_string_ensure(a3, v6 + 1))
  {
    tar_flush_unconsumed(a1, a5);
    *a5 = (v6 + 511) & 0xFFFFFFFFFFFFFE00;
    if (__archive_read_ahead(a1, *a5, 0))
    {
      __memcpy_chk();
      *(*a3 + v6) = 0;
      a3[1] = v6;
      return 0;
    }

    else
    {
      *a5 = 0;
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 12, "No memory");
    return -30;
  }
}

uint64_t header_pax_extensions(_DWORD *a1, char **a2, _DWORD *a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, a2 + 24, a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      v7 = pax_header(a1, a2, a3, a2 + 24);
      if (header >= v7)
      {
        v6 = v7;
      }

      else
      {
        v6 = header;
      }

      a2[37] = (-a2[35] & 0x1FF);
      return v6;
    }

    else
    {
      return header;
    }
  }
}

uint64_t __archive_read_filter_consume(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return -30;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = advance_file_pointer(a1, a2);
  if (v3 == a2)
  {
    return v3;
  }

  if (v3 < 0)
  {
    v3 = 0;
  }

  archive_set_error(*(a1 + 24), -1, "Truncated input file (needed %jd bytes, only %jd available)", a2, v3);
  return -30;
}

uint64_t advance_file_pointer(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v6 = 0;
  if (*(a1 + 138))
  {
    return -1;
  }

  if (*(a1 + 96))
  {
    if (a2 < *(a1 + 96))
    {
      v4 = a2;
    }

    else
    {
      v4 = *(a1 + 96);
    }

    *(a1 + 88) += v4;
    *(a1 + 96) -= v4;
    v8 = a2 - v4;
    *a1 += v4;
    v6 = v4;
  }

  if (*(a1 + 128))
  {
    if (v8 < *(a1 + 128))
    {
      v3 = v8;
    }

    else
    {
      v3 = *(a1 + 128);
    }

    *(a1 + 120) += v3;
    *(a1 + 128) -= v3;
    v8 -= v3;
    *a1 += v3;
    v6 += v3;
  }

  if (!v8)
  {
    return v6;
  }

  if (!*(a1 + 60))
  {
    goto LABEL_20;
  }

  v7 = client_skip_proxy(a1, v8);
  if (v7 < 0)
  {
    *(a1 + 138) = 1;
    return v7;
  }

  else
  {
    *a1 += v7;
    v6 += v7;
    v8 -= v7;
    if (v8)
    {
      while (1)
      {
        while (1)
        {
LABEL_20:
          v5 = (**(a1 + 32))(a1, a1 + 104);
          if (v5 < 0)
          {
            *(a1 + 104) = 0;
            *(a1 + 138) = 1;
            return v5;
          }

          if (v5)
          {
            break;
          }

          if (*(*(a1 + 24) + 228) == *(*(a1 + 24) + 224) - 1 || client_switch_proxy(a1, *(*(a1 + 24) + 228) + 1))
          {
            *(a1 + 104) = 0;
            *(a1 + 136) = 1;
            return v6;
          }
        }

        if (v5 >= v8)
        {
          break;
        }

        *a1 += v5;
        v6 += v5;
        v8 -= v5;
      }

      *(a1 + 120) = *(a1 + 104) + v8;
      *(a1 + 128) = v5 - v8;
      *(a1 + 112) = v5;
      *a1 += v8;
      return v6 + v8;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t header_ustar(_DWORD *a1, void *a2, _DWORD *a3, _BYTE *a4)
{
  v8 = 0;
  v9 = (a2 + 3);
  if (a4[345])
  {
    a2[4] = 0;
    archive_strncat(v9, a4 + 345, 0x9BuLL);
    if (v9[1][*v9 - 1] != 47)
    {
      archive_strappend_char(v9, 47);
    }

    archive_strncat(v9, a4, 0x64uLL);
  }

  else
  {
    a2[4] = 0;
    archive_strncat(v9, a4, 0x64uLL);
  }

  if (_archive_entry_copy_pathname_l(a3, *v9, v9[1], a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Pathname"), v8 == -30))
  {
    return -30;
  }

  else
  {
    v7 = header_common(a1, a2, a3, a4);
    if (v7 == -30)
    {
      return -30;
    }

    else
    {
      if (v7 < v8)
      {
        v8 = v7;
      }

      if (_archive_entry_copy_uname_l(a3, a4 + 265, 0x20uLL, a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Uname"), v8 == -30))
      {
        return -30;
      }

      else if (_archive_entry_copy_gname_l(a3, a4 + 297, 0x20uLL, a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Gname"), v8 == -30))
      {
        return -30;
      }

      else
      {
        if (a4[156] == 51 || a4[156] == 52)
        {
          v4 = tar_atol(a4 + 329, 8uLL);
          archive_entry_set_rdevmajor(a3, v4);
          v5 = tar_atol(a4 + 337, 8uLL);
          archive_entry_set_rdevminor(a3, v5);
        }

        a2[37] = -a2[35] & 0x1FFLL;
        return v8;
      }
    }
  }
}

void *archive_string_append(void *a1, uint64_t a2, uint64_t a3)
{
  if (!archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    return 0;
  }

  if (a3)
  {
    __memmove_chk();
  }

  a1[1] += a3;
  *(*a1 + a1[1]) = 0;
  return a1;
}

void *archive_strncat(void *a1, _BYTE *a2, unint64_t a3)
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

  v7 = archive_string_append(a1, a2, v6);
  if (!v7)
  {
    __archive_errx(1, "Out of memory");
  }

  return v7;
}

uint64_t archive_strncat_l(void *a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v10 = 0;
  v8 = 0;
  if (a2 && a3)
  {
    if (a4 && (*(a4 + 36) & 0x2800) != 0)
    {
      v10 = utf16nbytes(a2, a3);
    }

    else
    {
      v10 = mbsnbytes(a2, a3);
    }
  }

  if (v10)
  {
    if (a4)
    {
      v11 = a2;
      v9 = 0;
      if (*(a4 + 96) > 1)
      {
        *(a4 + 64) = 0;
        v6 = (*(a4 + 80))(a4 + 56, a2, v10, a4);
        if (v6 && *__error() == 12)
        {
          return v6;
        }

        if (v6 < 0)
        {
          v8 = v6;
        }

        v11 = *(a4 + 56);
        v10 = *(a4 + 64);
        v9 = 1;
      }

      v7 = (*(a4 + 80 + 8 * v9))(a1, v11, v10, a4);
      if (v8 > v7)
      {
        return v7;
      }

      return v8;
    }

    else if (archive_string_append(a1, a2, v10))
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v5 = 1;
    if (a4 && (*(a4 + 36) & 0x1400) != 0)
    {
      v5 = 2;
    }

    if (archive_string_ensure(a1, a1[1] + v5))
    {
      *(*a1 + a1[1]) = 0;
      if (v5 == 2)
      {
        *(*a1 + a1[1] + 1) = 0;
      }

      return 0;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t archive_mstring_copy_mbs_len_l(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *(a1 + 32) = 0;
    v5 = archive_strncpy_l(a1, a2, a3, a4);
    if (v5)
    {
      *(a1 + 96) = 0;
    }

    else
    {
      *(a1 + 96) = 1;
    }

    return v5;
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

unint64_t mbsnbytes(_BYTE *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  for (i = a1; ; ++i)
  {
    v3 = 0;
    if (v5 < a2)
    {
      v3 = *i != 0;
    }

    if (!v3)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t header_common(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = 0;
  if (a4[157])
  {
    *(a2 + 80) = 0;
    archive_strncat((a2 + 72), a4 + 157, 0x64uLL);
  }

  else
  {
    *(a2 + 80) = 0;
  }

  v4 = tar_atol(a4 + 100, 8uLL);
  archive_entry_set_mode(a3, v4);
  v5 = tar_atol(a4 + 108, 8uLL);
  archive_entry_set_uid(a3, v5);
  v6 = tar_atol(a4 + 116, 8uLL);
  archive_entry_set_gid(a3, v6);
  *(a2 + 280) = tar_atol(a4 + 124, 0xCuLL);
  if ((*(a2 + 280) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 280) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(a2 + 280) = 0;
      archive_set_error(a1, -1, "Tar entry size overflow");
      return -30;
    }

    *(a2 + 312) = *(a2 + 280);
    archive_entry_set_size(a3, *(a2 + 280));
    v7 = tar_atol(a4 + 136, 0xCuLL);
    archive_entry_set_mtime(a3, v7, 0);
    v9 = a4[156];
    if (v9 != 48)
    {
      switch(v9)
      {
        case '1':
          if (_archive_entry_copy_hardlink_l(a3, *(a2 + 72), *(a2 + 80), *(a2 + 408)))
          {
            v10 = set_conversion_failed_error(a1, *(a2 + 408), "Linkname");
            if (v10 == -30)
            {
              return -30;
            }
          }

          if (archive_entry_size(a3) > 0)
          {
            archive_entry_set_filetype(a3, 0x8000);
          }

          if (archive_entry_size(a3) && a1[4] != 196610)
          {
            if (a1[4] == 196608 || a1[4] == 196612)
            {
              archive_entry_set_size(a3, 0);
              *(a2 + 280) = 0;
            }

            else if (archive_read_format_tar_bid(a1) > 50)
            {
              archive_entry_set_size(a3, 0);
              *(a2 + 280) = 0;
            }
          }

          break;
        case '2':
          archive_entry_set_filetype(a3, 40960);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          if (_archive_entry_copy_symlink_l(a3, *(a2 + 72), *(a2 + 80), *(a2 + 408)))
          {
            v10 = set_conversion_failed_error(a1, *(a2 + 408), "Linkname");
            if (v10 == -30)
            {
              return -30;
            }
          }

          break;
        case '3':
          archive_entry_set_filetype(a3, 0x2000);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '4':
          archive_entry_set_filetype(a3, 24576);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '5':
          archive_entry_set_filetype(a3, 0x4000);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '6':
          archive_entry_set_filetype(a3, 4096);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case 'D':
          archive_entry_set_filetype(a3, 0x4000);
          break;
        case 'M':
          break;
        case 'S':
          goto LABEL_42;
        default:
          goto LABEL_43;
      }

      return v10;
    }

LABEL_42:
    *(a2 + 320) = 1;
LABEL_43:
    archive_entry_set_filetype(a3, 0x8000);
    return v10;
  }

  *(a2 + 280) = 0;
  archive_set_error(a1, -1, "Tar entry has negative size");
  return -30;
}

uint64_t archive_entry_set_mode(uint64_t result, __int16 a2)
{
  *(result + 16) = 0;
  *(result + 1136) = a2;
  *(result + 160) |= 0x600u;
  return result;
}

uint64_t archive_entry_set_uid(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 120) = v2;
  *(result + 160) |= 0x800u;
  return result;
}

uint64_t archive_entry_set_gid(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 88) = v2;
  *(result + 160) |= 0x1000u;
  return result;
}

uint64_t archive_entry_set_size(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 112) = v2;
  *(result + 160) |= 0x40u;
  return result;
}

uint64_t archive_entry_set_filetype(uint64_t result, __int16 a2)
{
  *(result + 16) = 0;
  *(result + 1136) &= 0xFFFu;
  *(result + 1136) |= a2 & 0xF000;
  *(result + 160) |= 0x400u;
  return result;
}

uint64_t archive_entry_set_mtime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3 / 1000000000;
  v3 = a3 % 1000000000;
  if (a3 % 1000000000 < 0)
  {
    --v4;
    LODWORD(v3) = v3 + 1000000000;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x10u;
  *(result + 56) = v4;
  *(result + 64) = v3;
  return result;
}

uint64_t pax_header(_DWORD *a1, uint64_t a2, _DWORD *a3, char **a4)
{
  v7 = *a4;
  v16 = a4[1];
  *(a2 + 264) = 0;
  *(a2 + 128) = 0;
  *(a2 + 80) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  *(a2 + 104) = 0;
  v9 = 0;
  while (v16)
  {
    v14 = 0;
    v15 = v16;
    v13 = v7;
    while (v15)
    {
      if (*v13 == 32)
      {
        ++v13;
        break;
      }

      if (*v13 < 48 || *v13 > 57)
      {
        archive_set_error(a1, -1, "Ignoring malformed pax extended attributes");
        return -20;
      }

      v14 = 10 * v14 + *v13 - 48;
      if (v14 > 0xF423F)
      {
        archive_set_error(a1, -1, "Rejecting pax extended attribute > 1MB");
        return -20;
      }

      ++v13;
      --v15;
    }

    if (v14 > v16 || !v14 || v7[v14 - 1] != 10)
    {
      archive_set_error(a1, -1, "Ignoring malformed pax extended attribute");
      return -20;
    }

    v7[v14 - 1] = 0;
    v12 = v13;
    if (*v13 == 61)
    {
      return -1;
    }

    while (1)
    {
      v6 = 0;
      if (*v13)
      {
        v6 = *v13 != 61;
      }

      if (!v6)
      {
        break;
      }

      ++v13;
    }

    if (!*v13)
    {
      archive_set_error(a1, -1, "Invalid pax extended attributes");
      return -20;
    }

    *v13 = 0;
    v8 = pax_attribute(a1, a2, a3, v12, v13 + 1, &v7[v14 - 1] - (v13 + 1));
    if (v8 == -30)
    {
      return -30;
    }

    if (v9 >= v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = v9;
    }

    v9 = v5;
    v7 += v14;
    v16 -= v14;
  }

  if (*(a2 + 264))
  {
    v10 = *(a2 + 400);
    goto LABEL_37;
  }

  v10 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
  if (v10)
  {
    if (*(a2 + 436))
    {
      archive_string_conversion_set_opt(v10, 1);
    }

LABEL_37:
    if (*(a2 + 128) && _archive_entry_copy_gname_l(a3, *(a2 + 120), *(a2 + 128), v10))
    {
      v9 = set_conversion_failed_error(a1, v10, "Gname");
      if (v9 == -30)
      {
        return -30;
      }

      archive_entry_copy_gname(a3, *(a2 + 120));
    }

    if (*(a2 + 80) && _archive_entry_copy_link_l(a3, *(a2 + 72), *(a2 + 80), v10))
    {
      v9 = set_conversion_failed_error(a1, v10, "Linkname");
      if (v9 == -30)
      {
        return -30;
      }

      archive_entry_copy_link(a3, *(a2 + 72));
    }

    v11 = 0;
    if (*(a2 + 56))
    {
      v11 = (a2 + 48);
    }

    else if (*(a2 + 32))
    {
      v11 = (a2 + 24);
    }

    if (v11 && _archive_entry_copy_pathname_l(a3, *v11, v11[1], v10))
    {
      v9 = set_conversion_failed_error(a1, v10, "Pathname");
      if (v9 == -30)
      {
        return -30;
      }

      archive_entry_copy_pathname(a3, *v11);
    }

    if (*(a2 + 104) && _archive_entry_copy_uname_l(a3, *(a2 + 96), *(a2 + 104), v10))
    {
      v9 = set_conversion_failed_error(a1, v10, "Uname");
      if (v9 == -30)
      {
        return -30;
      }

      archive_entry_copy_uname(a3, *(a2 + 96));
    }

    return v9;
  }

  return -30;
}

uint64_t pax_attribute(_DWORD *a1, uint64_t a2, _DWORD *a3, const char *a4, char *a5, size_t a6)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a6;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  if (!a5)
  {
    v44 = &unk_1BF3442C6;
  }

  switch(*v45)
  {
    case 'G':
      if (!strncmp(v45, "GNU.sparse", 0xAuLL) && !*(v47 + 320))
      {
        archive_set_error(v48, -1, "Non-regular file cannot be sparse");
        return -30;
      }

      if (!strcmp(v45, "GNU.sparse.numblocks"))
      {
        *(v47 + 344) = -1;
        *(v47 + 352) = -1;
        *(v47 + 360) = 0;
        *(v47 + 364) = 0;
      }

      if (strcmp(v45, "GNU.sparse.offset"))
      {
        goto LABEL_14;
      }

      v6 = strlen(v44);
      *(v47 + 344) = tar_atol10(v44, v6);
      if (*(v47 + 352) == -1)
      {
        goto LABEL_14;
      }

      if (gnu_add_sparse_entry(v48, v47, *(v47 + 344), *(v47 + 352)))
      {
        return -30;
      }

      *(v47 + 344) = -1;
      *(v47 + 352) = -1;
LABEL_14:
      if (strcmp(v45, "GNU.sparse.numbytes"))
      {
        goto LABEL_19;
      }

      v7 = strlen(v44);
      *(v47 + 352) = tar_atol10(v44, v7);
      if (*(v47 + 344) == -1)
      {
        goto LABEL_19;
      }

      if (gnu_add_sparse_entry(v48, v47, *(v47 + 344), *(v47 + 352)))
      {
        return -30;
      }

      else
      {
        *(v47 + 344) = -1;
        *(v47 + 352) = -1;
LABEL_19:
        if (!strcmp(v45, "GNU.sparse.size"))
        {
          v8 = strlen(v44);
          *(v47 + 312) = tar_atol10(v44, v8);
          archive_entry_set_size(v46, *(v47 + 312));
          *(v47 + 448) = 1;
        }

        if (strcmp(v45, "GNU.sparse.map") || (*(v47 + 360) = 0, *(v47 + 364) = 1, !gnu_sparse_01_parse(v48, v47, v44)))
        {
          if (!strcmp(v45, "GNU.sparse.major"))
          {
            v9 = strlen(v44);
            *(v47 + 360) = tar_atol10(v44, v9);
            *(v47 + 368) = 1;
          }

          if (!strcmp(v45, "GNU.sparse.minor"))
          {
            v10 = strlen(v44);
            *(v47 + 364) = tar_atol10(v44, v10);
            *(v47 + 368) = 1;
          }

          if (!strcmp(v45, "GNU.sparse.name"))
          {
            *(v47 + 56) = 0;
            v38 = (v47 + 48);
            if (v44)
            {
              v37 = strlen(v44);
              archive_strncat(v38, v44, v37);
            }

            else
            {
              archive_strncat(v38, 0, 0);
            }
          }

          if (!strcmp(v45, "GNU.sparse.realsize"))
          {
            v11 = strlen(v44);
            *(v47 + 312) = tar_atol10(v44, v11);
            archive_entry_set_size(v46, *(v47 + 312));
            *(v47 + 448) = 1;
          }

          return v40;
        }

        return -20;
      }

    case 'L':
      if (!strcmp(v45, "LIBARCHIVE.creationtime"))
      {
        pax_time(v44, &v42, &v41);
        archive_entry_set_birthtime(v46, v42, v41);
      }

      if (!strcmp(v45, "LIBARCHIVE.symlinktype"))
      {
        if (!strcmp(v44, "file"))
        {
          archive_entry_set_symlink_type(v46, 1);
        }

        else if (!strcmp(v44, "dir"))
        {
          archive_entry_set_symlink_type(v46, 2);
        }
      }

      if (strlen(v45) >= 0x12 && !memcmp(v45, "LIBARCHIVE.xattr.", 0x11uLL))
      {
        pax_attribute_xattr(v46, v45, v44);
      }

      return v40;
    case 'R':
      if (!strcmp(v45, "RHT.security.selinux"))
      {
        pax_attribute_rht_security_selinux(v46, v44, v43);
      }

      return v40;
    case 'S':
      if (!strcmp(v45, "SCHILY.acl.access"))
      {
        if (pax_attribute_acl(v48, v47, v46, v44, 256) != -30)
        {
          return v40;
        }

        return -30;
      }

      if (!strcmp(v45, "SCHILY.acl.default"))
      {
        if (pax_attribute_acl(v48, v47, v46, v44, 512) != -30)
        {
          return v40;
        }

        return -30;
      }

      if (!strcmp(v45, "SCHILY.acl.ace"))
      {
        if (pax_attribute_acl(v48, v47, v46, v44, 15360) != -30)
        {
          return v40;
        }

        return -30;
      }

      if (!strcmp(v45, "SCHILY.devmajor"))
      {
        v12 = strlen(v44);
        v13 = tar_atol10(v44, v12);
        archive_entry_set_rdevmajor(v46, v13);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.devminor"))
      {
        v14 = strlen(v44);
        v15 = tar_atol10(v44, v14);
        archive_entry_set_rdevminor(v46, v15);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.fflags"))
      {
        archive_entry_copy_fflags_text(v46, v44);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.dev"))
      {
        v16 = strlen(v44);
        v17 = tar_atol10(v44, v16);
        archive_entry_set_dev(v46, v17);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.ino"))
      {
        v18 = strlen(v44);
        v19 = tar_atol10(v44, v18);
        archive_entry_set_ino(v46, v19);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.nlink"))
      {
        v20 = strlen(v44);
        v21 = tar_atol10(v44, v20);
        archive_entry_set_nlink(v46, v21);
        return v40;
      }

      if (!strcmp(v45, "SCHILY.realsize"))
      {
        v22 = strlen(v44);
        *(v47 + 312) = tar_atol10(v44, v22);
        *(v47 + 448) = 1;
        archive_entry_set_size(v46, *(v47 + 312));
        return v40;
      }

      if (!strncmp(v45, "SCHILY.xattr.", 0xDuLL))
      {
        pax_attribute_schily_xattr(v46, v45, v44, v43);
        return v40;
      }

      if (!strcmp(v45, "SUN.holesdata"))
      {
        v39 = solaris_sparse_parse(v48, v47, v46, v44);
        if (v39 < 0)
        {
          if (v39 == -30)
          {
            return -30;
          }

          v40 = v39;
          archive_set_error(v48, -1, "Parse error: SUN.holesdata");
        }
      }

      return v40;
    case 'a':
      if (!strcmp(v45, "atime"))
      {
        pax_time(v44, &v42, &v41);
        archive_entry_set_atime(v46, v42, v41);
      }

      return v40;
    case 'c':
      if (!strcmp(v45, "ctime"))
      {
        pax_time(v44, &v42, &v41);
        archive_entry_set_ctime(v46, v42, v41);
      }

      else if (strcmp(v45, "charset"))
      {
        strcmp(v45, "comment");
      }

      return v40;
    case 'g':
      if (!strcmp(v45, "gid"))
      {
        v23 = strlen(v44);
        v24 = tar_atol10(v44, v23);
        archive_entry_set_gid(v46, v24);
      }

      else if (!strcmp(v45, "gname"))
      {
        *(v47 + 128) = 0;
        v36 = (v47 + 120);
        if (v44)
        {
          v35 = strlen(v44);
          archive_strncat(v36, v44, v35);
        }

        else
        {
          archive_strncat(v36, 0, 0);
        }
      }

      return v40;
    case 'h':
      if (!strcmp(v45, "hdrcharset"))
      {
        if (!strcmp(v44, "BINARY"))
        {
          *(v47 + 264) = 1;
        }

        else if (!strcmp(v44, "ISO-IR 10646 2000 UTF-8"))
        {
          *(v47 + 264) = 0;
        }
      }

      return v40;
    case 'l':
      if (!strcmp(v45, "linkpath"))
      {
        *(v47 + 80) = 0;
        v34 = (v47 + 72);
        if (v44)
        {
          v33 = strlen(v44);
          archive_strncat(v34, v44, v33);
        }

        else
        {
          archive_strncat(v34, 0, 0);
        }
      }

      return v40;
    case 'm':
      if (!strcmp(v45, "mtime"))
      {
        pax_time(v44, &v42, &v41);
        archive_entry_set_mtime(v46, v42, v41);
      }

      return v40;
    case 'p':
      if (!strcmp(v45, "path"))
      {
        *(v47 + 32) = 0;
        v32 = (v47 + 24);
        if (v44)
        {
          v31 = strlen(v44);
          archive_strncat(v32, v44, v31);
        }

        else
        {
          archive_strncat(v32, 0, 0);
        }
      }

      return v40;
    case 's':
      if (strcmp(v45, "size"))
      {
        return v40;
      }

      v25 = strlen(v44);
      *(v47 + 280) = tar_atol10(v44, v25);
      if ((*(v47 + 280) & 0x8000000000000000) != 0)
      {
        *(v47 + 280) = 0;
        archive_set_error(v48, -1, "Tar size attribute is negative");
        return -30;
      }

      else if (*(v47 + 280) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v47 + 280) = 0;
        archive_set_error(v48, -1, "Tar size attribute overflow");
        return -30;
      }

      else
      {
        if (!*(v47 + 448))
        {
          archive_entry_set_size(v46, *(v47 + 280));
          *(v47 + 312) = *(v47 + 280);
        }

        return v40;
      }

    case 'u':
      if (!strcmp(v45, "uid"))
      {
        v26 = strlen(v44);
        v27 = tar_atol10(v44, v26);
        archive_entry_set_uid(v46, v27);
      }

      else if (!strcmp(v45, "uname"))
      {
        *(v47 + 104) = 0;
        v30 = (v47 + 96);
        if (v44)
        {
          v29 = strlen(v44);
          archive_strncat(v30, v44, v29);
        }

        else
        {
          archive_strncat(v30, 0, 0);
        }
      }

      return v40;
    default:
      return v40;
  }
}

_BYTE *pax_time(_BYTE *result, void *a2, void *a3)
{
  v8 = result;
  v6 = 0;
  v4 = 1;
  if (*result == 45)
  {
    v4 = -1;
    v8 = result + 1;
  }

  while (1)
  {
    v3 = 0;
    if (*v8 >= 48)
    {
      v3 = *v8 <= 57;
    }

    if (!v3)
    {
      break;
    }

    v7 = *v8 - 48;
    if (v6 > 0xCCCCCCCCCCCCCCCLL || v6 == 0xCCCCCCCCCCCCCCCLL && v7 > 7)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      break;
    }

    v6 = 10 * v6 + v7;
    ++v8;
  }

  *a2 = v6 * v4;
  *a3 = 0;
  if (*v8 == 46)
  {
    v5 = 100000000;
    do
    {
      if (*++v8 < 48)
      {
        break;
      }

      if (*v8 > 57)
      {
        break;
      }

      *a3 += (*v8 - 48) * v5;
      v5 /= 0xAuLL;
    }

    while (v5);
  }

  return result;
}

uint64_t pax_attribute_xattr(uint64_t a1, const char *a2, char *a3)
{
  v10 = a1;
  v9 = a2;
  __s = a3;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (strlen(a2) >= 0x12 && !memcmp(v9, "LIBARCHIVE.xattr.", 0x11uLL))
  {
    v9 += 17;
    v7 = url_decode(v9);
    if (v7)
    {
      v3 = strlen(__s);
      v6 = base64_decode(__s, v3, &v5);
      if (v6)
      {
        archive_entry_xattr_add_entry(v10, v7, v6, v5);
        free(v7);
        free(v6);
        return 0;
      }

      else
      {
        free(v7);
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 3;
  }
}

char *url_decode(const char *a1)
{
  v1 = strlen(a1);
  v10 = malloc_type_malloc(v1 + 1, 0x100004077774924uLL);
  if (!v10)
  {
    return 0;
  }

  v8 = a1;
  v9 = v10;
  while (*v8)
  {
    if (*v8 == 37 && v8[1] && v8[2] && (v7 = tohex(v8[1]), v6 = tohex(v8[2]), (v7 & 0x80000000) == 0) && (v6 & 0x80000000) == 0)
    {
      v8 += 3;
      v2 = v9++;
      *v2 = v6 | (16 * v7);
    }

    else
    {
      v3 = v8++;
      v4 = v9++;
      *v4 = *v3;
    }
  }

  *v9 = 0;
  return v10;
}

_BYTE *base64_decode(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (base64_decode_decode_table[base64_decode_digits[1]] != 1)
  {
    memset(base64_decode_decode_table, -1, 0x80uLL);
    for (i = 0; i < 0x40uLL; ++i)
    {
      base64_decode_decode_table[base64_decode_digits[i]] = i;
    }
  }

  v12 = malloc_type_malloc(a2 - a2 / 4 + 1, 0x100004077774924uLL);
  if (v12)
  {
    for (j = v12; ; j += 3 * v6 / 4)
    {
      if (!a2)
      {
        *a3 = j - v12;
        return v12;
      }

      v7 = 0;
      v6 = 0;
      while (1)
      {
        v5 = 0;
        if (v6 < 4)
        {
          v5 = a2 != 0;
        }

        if (!v5)
        {
          break;
        }

        if (*a1 == 61 || *a1 == 95)
        {
          a2 = 0;
          break;
        }

        if (*a1 > 0x7Fu || *a1 < 0x20u || base64_decode_decode_table[*a1] == 255)
        {
          --a2;
          ++a1;
        }

        else
        {
          v3 = a1++;
          v7 = (v7 << 6) | base64_decode_decode_table[*v3];
          --a2;
          ++v6;
        }
      }

      v8 = v7 << (6 * (4 - v6));
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 4)
            {
              continue;
            }

            j[2] = v8;
          }

          j[1] = BYTE1(v8);
        }

        *j = BYTE2(v8);
      }
    }
  }

  *a3 = 0;
  return 0;
}

void *archive_entry_xattr_add_entry(uint64_t a1, const char *a2, uint64_t a3, size_t a4)
{
  v6 = malloc_type_malloc(0x20uLL, 0x10B0040BDB88CC9uLL);
  if (!v6)
  {
    __archive_errx(1, "Out of memory");
  }

  v4 = strdup(a2);
  v6[1] = v4;
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  result = malloc_type_malloc(a4, 0x1CA54DADuLL);
  v6[2] = result;
  if (result)
  {
    result = __memcpy_chk();
    v6[3] = a4;
  }

  else
  {
    v6[3] = 0;
  }

  *v6 = *(a1 + 1192);
  *(a1 + 1192) = v6;
  return result;
}

uint64_t **archive_string_conversion_from_charset(_DWORD *a1, const char *a2, int a3)
{
  v5 = 2;
  if (a3)
  {
    v5 = 6;
  }

  current_charset = get_current_charset(a1);
  return get_sconv_object(a1, a2, current_charset, v5);
}

uint64_t pax_attribute_schily_xattr(uint64_t a1, const char *a2, uint64_t a3, size_t a4)
{
  if (strlen(a2) >= 0xE && !memcmp(a2, "SCHILY.xattr.", 0xDuLL))
  {
    archive_entry_xattr_add_entry(a1, a2 + 13, a3, a4);
    return 0;
  }

  else
  {
    return 1;
  }
}

const char *get_current_charset(uint64_t a1)
{
  if (!a1)
  {
    return default_iconv_charset(&unk_1BF3442C6);
  }

  __s1 = default_iconv_charset(*(a1 + 72));
  if (!*(a1 + 72))
  {
    *(a1 + 72) = strdup(__s1);
    *(a1 + 80) = get_current_codepage();
    *(a1 + 84) = get_current_oemcp();
  }

  return __s1;
}

const char *default_iconv_charset(_BYTE *a1)
{
  if (a1 && *a1)
  {
    return a1;
  }

  else
  {
    return "UTF-8";
  }
}

uint64_t **get_sconv_object(_DWORD *a1, const char *a2, const char *a3, int a4)
{
  sconv_object = find_sconv_object(a1, a2, a3);
  if (sconv_object)
  {
    return sconv_object;
  }

  if (a1)
  {
    current_codepage = a1[20];
  }

  else
  {
    current_codepage = get_current_codepage();
  }

  v6 = canonical_charset_name(a2);
  v4 = canonical_charset_name(a3);
  v9 = create_sconv_object(v6, v4, current_codepage, a4);
  if (v9)
  {
    if (*(v9 + 24))
    {
      if (a1)
      {
        add_sconv_object(a1, v9);
      }

      return v9;
    }

    else
    {
      if (a1)
      {
        if (a4)
        {
        }

        else
        {
        }
      }

      free_sconv_object(v9);
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      archive_set_error(a1, 12, "Could not allocate memory for a string conversion object");
    }

    return 0;
  }
}

const char *canonical_charset_name(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1 || !*a1 || strlen(a1) > 0xF)
  {
    return a1;
  }

  v6 = __s1;
  v5 = a1;
  while (*v5)
  {
    v1 = v5++;
    v4 = *v1;
    if (*v1 >= 97 && v4 <= 122)
    {
      v4 -= 32;
    }

    v2 = v6++;
    *v2 = v4;
  }

  *v6 = 0;
  if (!strcmp(__s1, "UTF-8") || !strcmp(__s1, "UTF8"))
  {
    return "UTF-8";
  }

  if (!strcmp(__s1, "UTF-16BE") || !strcmp(__s1, "UTF16BE"))
  {
    return "UTF-16BE";
  }

  if (!strcmp(__s1, "UTF-16LE") || !strcmp(__s1, "UTF16LE"))
  {
    return "UTF-16LE";
  }

  if (!strcmp(__s1, "CP932"))
  {
    return "CP932";
  }

  return a1;
}

uint64_t **find_sconv_object(uint64_t a1, const char *a2, const char *a3)
{
  if (!a1)
  {
    return 0;
  }

    ;
  }

  return i;
}

void *create_sconv_object(const char *a1, const char *a2, int a3, int a4)
{
  v5 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B0040BB514045uLL);
  if (!v5)
  {
    return 0;
  }

  *v5 = 0;
  v5[1] = strdup(a1);
  if (v5[1])
  {
    v5[2] = strdup(a2);
    if (v5[2])
    {
      v5[7] = 0;
      v5[8] = 0;
      v5[9] = 0;
      if (a4)
      {
        *(v5 + 6) = a3;
        *(v5 + 7) = make_codepage_from_charset();
      }

      else if ((a4 & 2) != 0)
      {
        *(v5 + 7) = a3;
        *(v5 + 6) = make_codepage_from_charset();
      }

      *(v5 + 8) = !strcmp(a1, a2) || *(v5 + 6) != -1 && *(v5 + 6) == *(v5 + 7);
      if (!strcmp(a2, "UTF-8"))
      {
        a4 |= 0x100u;
      }

      else if (!strcmp(a2, "UTF-16BE"))
      {
        a4 |= 0x400u;
      }

      else if (!strcmp(a2, "UTF-16LE"))
      {
        a4 |= 0x1000u;
      }

      if (!strcmp(a1, "UTF-8"))
      {
        a4 |= 0x200u;
      }

      else if (!strcmp(a1, "UTF-16BE"))
      {
        a4 |= 0x800u;
      }

      else if (!strcmp(a1, "UTF-16LE"))
      {
        a4 |= 0x2000u;
      }

      if ((a4 & 2) != 0 && (a4 & 0x2A00) != 0)
      {
        if ((a4 & 0x100) != 0)
        {
          a4 |= 0x80u;
        }

        else
        {
          a4 |= 0x40u;
        }
      }

      if ((a4 & 1) != 0 && (a4 & 0x2A00) != 0 && (a4 & 0x1500) == 0)
      {
        a4 |= 0x40u;
      }

      if ((a4 & 2) != 0 && (a4 & 0x2A00) == 0 && (a4 & 0x100) != 0)
      {
        a4 |= 0x80u;
      }

      v5[6] = -1;
      if ((a4 & 0x1500) != 0 && (a4 & 0x2A00) != 0 || (a4 & 8) != 0)
      {
        v5[5] = -1;
      }

      else
      {
        v5[5] = MEMORY[0x1BFB558C0](a2, a1);
        if (v5[5] == -1 && (*(v5 + 9) & 4) != 0)
        {
          if (!strcmp(a2, "CP932"))
          {
            v5[5] = MEMORY[0x1BFB558C0]("SJIS", a1);
          }

          else if (!strcmp(a1, "CP932"))
          {
            v5[5] = MEMORY[0x1BFB558C0](a2, "SJIS");
          }
        }
      }

      *(v5 + 9) = a4;
      setup_converter(v5);
      return v5;
    }

    else
    {
      free(v5[1]);
      free(v5);
      return 0;
    }
  }

  else
  {
    free(v5);
    return 0;
  }
}

uint64_t setup_converter(uint64_t result)
{
  v1 = result;
  *(result + 96) = 0;
  if ((*(result + 36) & 0x10) != 0)
  {
    return add_converter(result, strncat_from_utf8_libarchive2);
  }

  if ((*(result + 36) & 0x1400) != 0)
  {
    if ((*(result + 36) & 0x200) != 0)
    {
      return add_converter(result, archive_string_append_unicode);
    }

    if (*(result + 40) != -1)
    {
      return add_converter(v1, iconv_strncat_in_locale);
    }

    if ((*(result + 36) & 4) != 0)
    {
      if ((*(result + 36) & 0x400) != 0)
      {
        return add_converter(result, best_effort_strncat_to_utf16be);
      }

      else
      {
        return add_converter(result, best_effort_strncat_to_utf16le);
      }
    }

    else
    {
      *(result + 96) = 0;
    }
  }

  else if ((*(result + 36) & 0x2800) != 0)
  {
    if ((*(result + 36) & 0x80) != 0)
    {
      result = add_converter(result, archive_string_normalize_D);
    }

    else if ((*(result + 36) & 0x40) != 0)
    {
      result = add_converter(result, archive_string_normalize_C);
    }

    if ((*(v1 + 36) & 0x100) != 0)
    {
      if ((*(v1 + 36) & 0xC0) == 0)
      {
        return add_converter(v1, archive_string_append_unicode);
      }
    }

    else
    {
      if (*(v1 + 40) != -1)
      {
        return add_converter(v1, iconv_strncat_in_locale);
      }

      if ((*(v1 + 36) & 0x804) == 0x804)
      {
        return add_converter(v1, best_effort_strncat_from_utf16be);
      }

      else if ((*(v1 + 36) & 0x2004) == 0x2004)
      {
        return add_converter(v1, best_effort_strncat_from_utf16le);
      }

      else
      {
        *(v1 + 96) = 0;
      }
    }
  }

  else
  {
    if ((*(result + 36) & 0x200) == 0)
    {
      goto LABEL_37;
    }

    if ((*(result + 36) & 0x80) != 0)
    {
      result = add_converter(result, archive_string_normalize_D);
    }

    else if ((*(result + 36) & 0x40) != 0)
    {
      result = add_converter(result, archive_string_normalize_C);
    }

    if ((*(v1 + 36) & 0x100) != 0)
    {
      if ((*(v1 + 36) & 0xC0) == 0)
      {
        return add_converter(v1, strncat_from_utf8_to_utf8);
      }
    }

    else
    {
LABEL_37:
      if (*(v1 + 40) == -1)
      {
        if ((*(v1 + 36) & 4) != 0 || *(v1 + 32))
        {
          return add_converter(v1, best_effort_strncat_in_locale);
        }

        else
        {
          *(v1 + 96) = 0;
        }
      }

      else
      {
        result = add_converter(v1, iconv_strncat_in_locale);
        if ((*(v1 + 36) & 2) != 0 && (*(v1 + 36) & 0x100) != 0 && (*(v1 + 36) & 0x80) != 0)
        {
          return add_converter(v1, archive_string_normalize_D);
        }
      }
    }
  }

  return result;
}

uint64_t add_converter(uint64_t result, uint64_t a2)
{
  if (!result || *(result + 96) >= 2)
  {
    __archive_errx(1, "Programming error");
  }

  v2 = (*(result + 96))++;
  *(result + 80 + 8 * v2) = a2;
  return result;
}

uint64_t add_sconv_object(uint64_t result, uint64_t a2)
{
    ;
  }

  *i = a2;
  return result;
}

uint64_t archive_entry_pathname_w(void *a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_wcs(*a1, (a1 + 62), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t read_mac_metadata_blob(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, size_t *a5)
{
  v7 = archive_entry_pathname_w(a3);
  v6 = v7;
  if (v7)
  {
    while (*v7)
    {
      if (*v7 == 47)
      {
        if (v7[1])
        {
          v6 = v7 + 1;
        }
      }

      ++v7;
    }

    if (*v6 != 46 || v6[1] != 95 || !v6[2])
    {
      return 0;
    }
  }

  else
  {
    v9 = archive_entry_pathname(a3);
    v8 = v9;
    if (!v9)
    {
      return -25;
    }

    while (*v9)
    {
      if (*v9 == 47 && v9[1])
      {
        v8 = v9 + 1;
      }

      ++v9;
    }

    if (*v8 != 46 || v8[1] != 95 || !v8[2])
    {
      return 0;
    }
  }

  v11 = archive_entry_size(a3);
  if ((v11 & 0x8000000000000000) != 0)
  {
    *a5 = 0;
    return -30;
  }

  else
  {
    ahead = __archive_read_ahead(a1, v11, 0);
    if (ahead)
    {
      archive_entry_copy_mac_metadata(a3, ahead, v11);
      *a5 = (v11 + 511) & 0xFFFFFFFFFFFFFE00;
      tar_flush_unconsumed(a1, a5);
      return tar_read_header(a1, a2, a3, a5);
    }

    else
    {
      *a5 = 0;
      return -30;
    }
  }
}

uint64_t archive_wstring_append_from_mbs(void *a1, const char *a2, size_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = a3;
  memset(&__b, 0, sizeof(__b));
  if (archive_wstring_ensure(a1, a1[1] + a3 + 1))
  {
    for (i = (*a1 + 4 * a1[1]); ; ++i)
    {
      v4 = 0;
      if (*a2)
      {
        v4 = v7 != 0;
      }

      if (!v4)
      {
        break;
      }

      v9 = mbrtowc(i, a2, v7, &__b);
      if (v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 = -1;
        break;
      }

      if (!v9 || v9 > v7)
      {
        break;
      }

      a2 += v9;
      v7 -= v9;
    }

    a1[1] = (i - *a1) / 4;
    *(*a1 + 4 * a1[1]) = 0;
    return v8;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_mstring_get_wcs(_DWORD *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if ((*(a2 + 96) & 4) != 0)
  {
    *v7 = *(v8 + 48);
    return v5;
  }

  else
  {
    *v7 = 0;
    if ((*(v8 + 96) & 1) == 0)
    {
      v4 = 0;
      archive_mstring_get_mbs(v9, v8, &v4);
    }

    if (*(v8 + 96))
    {
      *(v8 + 56) = 0;
      v6 = archive_wstring_append_from_mbs((v8 + 48), *v8, *(v8 + 8));
      if (v6)
      {
        return -1;
      }

      else
      {
        *(v8 + 96) |= 4u;
        *v7 = *(v8 + 48);
      }
    }

    return v5;
  }
}

_DWORD *archive_string_vsprintf(_BYTE **a1, char *a2, const __int32 **a3)
{
  result = archive_string_ensure(a1, 0x40uLL);
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  if (a2)
  {
    for (i = a2; ; ++i)
    {
      if (!*i)
      {
        return result;
      }

      v21 = i;
      if (*i != 37)
      {
        result = archive_strappend_char(a1, *i);
        continue;
      }

      ++i;
      v28 = 0;
      v20 = *i;
      if (v20 == 106 || v20 == 108 || v20 == 122)
      {
        v28 = *i++;
      }

      v19 = *i;
      switch(v19)
      {
        case '%':
          result = archive_strappend_char(a1, 37);
          continue;
        case 'S':
          v12 = *a3++;
          v23 = v12;
          if (!v12)
          {
            v23 = &unk_1BF3425F8;
          }

          v13 = wcslen(v23);
          result = archive_string_append_from_wcs(a1, v23, v13);
          if (result)
          {
            result = __error();
            if (*result == 12)
            {
              __archive_errx(1, "Out of memory");
            }
          }

          break;
        case 'X':
          goto LABEL_49;
        case 'c':
          v4 = *a3++;
          result = archive_strappend_char(a1, v4);
          continue;
        case 'd':
          switch(v28)
          {
            case 'j':
              v5 = *a3++;
              v27 = v5;
              break;
            case 'l':
              v6 = *a3++;
              v27 = v6;
              break;
            case 'z':
              v7 = *a3++;
              v27 = v7;
              break;
            default:
              v8 = *a3++;
              v27 = v8;
              break;
          }

          result = append_int(a1, v27, 0xAu);
          break;
        case 'o':
          goto LABEL_49;
        case 's':
          if (v28 == 108)
          {
            v9 = *a3++;
            v22 = v9;
            if (!v9)
            {
              v22 = &unk_1BF3425F8;
            }

            v10 = wcslen(v22);
            result = archive_string_append_from_wcs(a1, v22, v10);
            if (result)
            {
              result = __error();
              if (*result == 12)
              {
                __archive_errx(1, "Out of memory");
              }
            }
          }

          else
          {
            v11 = *a3++;
            v24 = v11;
            if (!v11)
            {
              v24 = "(null)";
            }

            result = archive_strcat(a1, v24);
          }

          break;
        case 'u':
        case 'x':
LABEL_49:
          switch(v28)
          {
            case 'j':
              v14 = *a3++;
              v26 = v14;
              break;
            case 'l':
              v15 = *a3++;
              v26 = v15;
              break;
            case 'z':
              v16 = *a3++;
              v26 = v16;
              break;
            default:
              v17 = *a3++;
              v26 = v17;
              break;
          }

          v18 = *i;
          if (v18 == 111)
          {
            result = append_uint(a1, v26, 8u);
          }

          else if (v18 == 117)
          {
            result = append_uint(a1, v26, 0xAu);
          }

          else
          {
            result = append_uint(a1, v26, 0x10u);
          }

          continue;
        default:
          i = v21;
          result = archive_strappend_char(a1, *v21);
          continue;
      }
    }
  }

  **a1 = 0;
  return result;
}

uint64_t gnu_add_sparse_entry(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040FA731AC5uLL);
  if (v5)
  {
    if (*(a2 + 336))
    {
      **(a2 + 336) = v5;
    }

    else
    {
      *(a2 + 328) = v5;
    }

    *(a2 + 336) = v5;
    if (a4 < 0 || a3 < 0 || a3 > 0x7FFFFFFFFFFFFFFFLL - a4)
    {
      archive_set_error(a1, -1, "Malformed sparse map data", v5);
      return -30;
    }

    else
    {
      v5[1] = a3;
      v5[2] = a4;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory");
    return -30;
  }
}

_DWORD *archive_set_error(_DWORD *result, int a2, char *a3, ...)
{
  va_start(va, a3);
  v3 = result;
  result[9] = a2;
  if (a3)
  {
    *(result + 7) = 0;
    result = archive_string_vsprintf(result + 6, a3, va);
    *(v3 + 5) = *(v3 + 6);
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t __archive_reset_read_data(uint64_t result)
{
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t _archive_read_data_block(uint64_t a1, void *a2, ssize_t *a3, void *a4)
{
  v15 = *(a1 + 160);
  v10 = 0;
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_data_block") == -30)
  {
    return -30;
  }

  if (*(v15 + 524) || *(v15 + 528) <= 0)
  {
    buffer = 1;
LABEL_35:
    *a2 = 0;
    *a3 = 0;
    *a4 = *(v15 + 536);
    if ((*(v15 + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(v15 + 520), v15, v15 + 408);
      *(v15 + 520) = -1;
    }

    return buffer;
  }

  if ((*(v15 + 520) & 0x80000000) != 0)
  {
    v4 = tree_current_access_path(v15);
    *(v15 + 520) = open_on_current_dir(v15, v4, 0x1000000);
    __archive_ensure_cloexec_flag(*(v15 + 520));
    if ((*(v15 + 520) & 0x80000000) != 0)
    {
      v9 = *__error();
      v5 = tree_current_path(v15);
      archive_set_error(a1, v9, "Couldn't open %s", v5);
      buffer = -25;
      tree_enter_initial_dir(v15);
      goto LABEL_35;
    }

    tree_enter_initial_dir(v15);
  }

  if (!*(*(v15 + 488) + 56))
  {
    buffer = setup_suitable_read_buffer(a1);
    if (buffer)
    {
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }
  }

  *(v15 + 544) = *(*(v15 + 488) + 64);
  *(v15 + 552) = *(*(v15 + 488) + 72);
  v11 = *(v15 + 552);
  if (v11 > **(v15 + 464))
  {
    v11 = **(v15 + 464);
  }

  if (!**(v15 + 464))
  {
    v10 = 1;
  }

  if (*(*(v15 + 464) + 8) > *(v15 + 536))
  {
    if (lseek(*(v15 + 520), *(*(v15 + 464) + 8), 0) != *(*(v15 + 464) + 8))
    {
      v6 = __error();
      archive_set_error(a1, *v6, "Seek error");
      buffer = -30;
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }

    v12 = *(*(v15 + 464) + 8) - *(v15 + 536);
    *(v15 + 528) -= v12;
    *(v15 + 536) += v12;
  }

  if (v11)
  {
    v13 = read(*(v15 + 520), *(v15 + 544), v11);
    if (v13 < 0)
    {
      v7 = __error();
      archive_set_error(a1, *v7, "Read error");
      buffer = -30;
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && !v10)
  {
    *(v15 + 524) = 1;
    buffer = 1;
    goto LABEL_35;
  }

  *a2 = *(v15 + 544);
  *a3 = v13;
  *a4 = *(v15 + 536);
  *(v15 + 536) += v13;
  *(v15 + 528) -= v13;
  if (!*(v15 + 528))
  {
    close_and_restore_time(*(v15 + 520), v15, v15 + 408);
    *(v15 + 520) = -1;
    *(v15 + 524) = 1;
  }

  *(*(v15 + 464) + 8) += v13;
  **(v15 + 464) -= v13;
  if (!**(v15 + 464) && !*(v15 + 524))
  {
    *(v15 + 464) += 16;
  }

  return 0;
}

uint64_t _archive_read_data_block_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 14594245, 4, "archive_read_data_block") == -30)
  {
    return -30;
  }

  else if (*(*(a1 + 2072) + 40))
  {
    return (*(*(a1 + 2072) + 40))(a1, a2, a3, a4);
  }

  else
  {
    archive_set_error(a1, 22, "Internal error: No format->read_data function registered");
    return -30;
  }
}

_DWORD *archive_write_disk_new()
{
  v2 = malloc_type_calloc(1uLL, 0x328uLL, 0x10F0040C64C61B3uLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = -1073631035;
  v2[1] = 2;
  *(v2 + 1) = archive_write_disk_vtable;
  *(v2 + 25) = time(0);
  v0 = umask(0);
  *(v2 + 72) = v0;
  umask(v0);
  *(v2 + 21) = geteuid();
  if (archive_string_ensure((v2 + 64), 0x200uLL))
  {
    **(v2 + 32) = 0;
    v2[201] = 5;
    return v2;
  }

  else
  {
    free(v2);
    return 0;
  }
}

uint64_t archive_read_format_tar_read_data(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v8 = **(a1 + 2072);
  while (1)
  {
    while (1)
    {
      v6 = 0;
      if (v8[41])
      {
        v6 = *(v8[41] + 16) == 0;
      }

      if (!v6)
      {
        break;
      }

      v7 = v8[41];
      v8[41] = *v7;
      free(v7);
    }

    if (v8[38])
    {
      __archive_read_consume(v13, v8[38]);
      v8[38] = 0;
    }

    if (!v8[41] || !v8[35])
    {
      break;
    }

    v4 = __archive_read_ahead(v13, 1uLL, &v9);
    *v12 = v4;
    if (v9 < 0)
    {
      return -30;
    }

    if (!*v12)
    {
      archive_set_error(v13, -1, "Truncated tar archive");
      return -30;
    }

    if (v9 > v8[35])
    {
      v9 = v8[35];
    }

    if (*(v8[41] + 16) < v9)
    {
      v9 = *(v8[41] + 16);
    }

    *v11 = v9;
    *v10 = *(v8[41] + 8);
    *(v8[41] + 16) -= v9;
    *(v8[41] + 8) += v9;
    v8[35] -= v9;
    v8[38] = v9;
    if (!*(v8[41] + 24))
    {
      return 0;
    }
  }

  if (__archive_read_consume(v13, v8[37]) < 0)
  {
    return -30;
  }

  else
  {
    v8[37] = 0;
    *v12 = 0;
    *v11 = 0;
    *v10 = v8[39];
    return 1;
  }
}

uint64_t archive_entry_pathname(void *a1)
{
  v3 = a1;
  v2 = 0;
  if (!archive_mstring_get_mbs(*a1, (a1 + 62), &v2))
  {
    return v2;
  }

  if (*__error() == 92 && !archive_mstring_get_utf8(*v3, (v3 + 62), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_write_disk_set_standard_lookup(uint64_t a1)
{
  v3 = malloc_type_calloc(0x7FuLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  v2 = malloc_type_calloc(0x7FuLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  if (v3 && v2)
  {
    archive_write_disk_set_group_lookup(a1, v2, lookup_gid, cleanup_1);
    archive_write_disk_set_user_lookup(a1, v3, lookup_uid, cleanup_1);
    return 0;
  }

  else
  {
    free(v3);
    free(v2);
    return -30;
  }
}

uint64_t archive_write_disk_set_group_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_group_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 216) && *(a1 + 224))
    {
      (*(a1 + 216))(*(a1 + 224));
    }

    *(a1 + 208) = a3;
    *(a1 + 216) = a4;
    *(a1 + 224) = a2;
    return 0;
  }
}

uint64_t archive_mstring_get_mbs(_DWORD *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if ((*(a2 + 96) & 1) == 0)
  {
    *a3 = 0;
    if ((*(a2 + 96) & 4) != 0)
    {
      *(a2 + 8) = 0;
      v5 = archive_string_append_from_wcs(a2, *(a2 + 48), *(a2 + 56));
      *a3 = *a2;
      if (!v5)
      {
        *(a2 + 96) |= 1u;
        return 0;
      }

      v4 = -1;
    }

    if ((*(a2 + 96) & 2) != 0)
    {
      *(a2 + 8) = 0;
      v7 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
      if (!v7)
      {
        return -1;
      }

      v6 = archive_strncpy_l(a2, *(a2 + 24), *(a2 + 32), v7);
      if (!a1)
      {
        free_sconv_object(v7);
      }

      *a3 = *a2;
      if (v6)
      {
        return -1;
      }

      else
      {
        *(a2 + 96) |= 1u;
        return 0;
      }
    }

    return v4;
  }

  *a3 = *a2;
  return 0;
}

uint64_t archive_write_disk_set_user_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_user_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 240) && *(a1 + 248))
    {
      (*(a1 + 240))(*(a1 + 248));
    }

    *(a1 + 232) = a3;
    *(a1 + 240) = a4;
    *(a1 + 248) = a2;
    return 0;
  }
}

uint64_t archive_read_data_skip(unsigned int *a1)
{
  v8 = a1;
  v7 = a1;
  data_block = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = __archive_check_magic(a1, 14594245, 4, "archive_read_data_skip");
  if (v2 == -30)
  {
    return -30;
  }

  else
  {
    if (*(*(v7 + 259) + 48))
    {
      data_block = (*(*(v7 + 259) + 48))(v7);
    }

    else
    {
      do
      {
        data_block = archive_read_data_block(v7, &v5, &v4, &v2 + 4);
      }

      while (!data_block);
    }

    if (data_block == 1)
    {
      data_block = 0;
    }

    v7[1] = 2;
    return data_block;
  }
}

uint64_t archive_read_format_tar_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  v4 = 0;
  for (i = v2[41]; i; i = *i)
  {
    if (!*(i + 6))
    {
      if (i[2] >= 0x7FFFFFFFFFFFFFFFLL - v4)
      {
        return -30;
      }

      v4 += i[2];
    }
  }

  if (v4 > v2[35])
  {
    v4 = v2[35];
  }

  if (__archive_read_consume(a1, v4 + v2[37] + v2[38]) < 0)
  {
    return -30;
  }

  else
  {
    v2[35] = 0;
    v2[38] = 0;
    v2[37] = 0;
    gnu_clear_sparse_list(v2);
    return 0;
  }
}

uint64_t archive_mstring_copy_mbs(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = strlen(a2);
    return archive_mstring_copy_mbs_len(a1, a2, v2);
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

uint64_t archive_block_is_null(_BYTE *a1)
{
  for (i = 0; i < 0x200; ++i)
  {
    v1 = a1++;
    if (*v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t archive_mstring_copy_mbs_len(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (a2)
  {
    *(a1 + 96) = 1;
    *(a1 + 8) = 0;
    archive_strncat(a1, a2, a3);
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    *(a1 + 96) = 0;
  }

  return 0;
}

uint64_t _archive_read_close(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 0xFFFF, "archive_read_close") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 4) != 0x8000)
    {
      *(a1 + 4) = 32;
    }

    tree_close(*(a1 + 160));
    return 0;
  }
}

uint64_t _archive_read_close_0(unsigned int *a1)
{
  v3 = 0;
  if (__archive_check_magic(a1, 14594245, 0xFFFF, "archive_read_close") == -30)
  {
    return -30;
  }

  else if (a1[1] == 32)
  {
    return 0;
  }

  else
  {
    archive_clear_error(a1);
    a1[1] = 32;
    v2 = close_filters(a1);
    if (v2 < 0)
    {
      return v2;
    }

    return v3;
  }
}

uint64_t _archive_write_disk_header(_DWORD *a1, uint64_t *a2)
{
  v49 = a1;
  v48 = a2;
  v47 = a1;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = __archive_check_magic(a1, -1073631035, 6, "archive_write_disk_header");
  if (v42 == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(v47);
    if ((v47[1] & 4) != 0 && (v43 = _archive_write_disk_finish_entry(v47), v43 == -30))
    {
      return -30;
    }

    else
    {
      *(v47 + 53) = 0;
      *(v47 + 20) = 0;
      v47[127] = 0;
      if (*(v47 + 54))
      {
        archive_entry_free(*(v47 + 54));
        *(v47 + 54) = 0;
      }

      *(v47 + 54) = archive_entry_clone(v48);
      v47[129] = -1;
      *(v47 + 66) = 0;
      *(v47 + 65) = 0;
      v47[138] = -1;
      *(v47 + 70) = *(v47 + 21);
      *(v47 + 279) = archive_entry_mode(*(v47 + 54));
      if (archive_entry_size_is_set(*(v47 + 54)))
      {
        *(v47 + 68) = archive_entry_size(*(v47 + 54));
      }

      else
      {
        *(v47 + 68) = -1;
      }

      *(v47 + 57) = 0;
      v33 = v47 + 112;
      v34 = archive_entry_pathname(*(v47 + 54));
      if (archive_entry_pathname(*(v47 + 54)))
      {
        v2 = archive_entry_pathname(*(v47 + 54));
        v32 = strlen(v2);
        archive_strncat(v33, v34, v32);
      }

      else
      {
        archive_strncat(v33, v34, 0);
      }

      *(v47 + 55) = *(v47 + 56);
      archive_clear_error(v47);
      v44 = cleanup_pathname(v47);
      if (v44)
      {
        return v44;
      }

      else
      {
        v45 = archive_entry_hardlink(*(v47 + 54));
        if (v45 && !strcmp(*(v47 + 55), v45))
        {
          archive_set_error(v47, -1, "Skipping hardlink pointing to itself: %s", *(v47 + 55));
          return -20;
        }

        else
        {
          v3 = umask(0);
          *(v47 + 72) = v3;
          umask(v3);
          v47[126] = 0x20000000;
          if ((v47[128] & 2) != 0)
          {
            v47[126] |= 0x40000000u;
            if ((*(v47 + 279) & 0x400) != 0)
            {
              v47[126] |= 0x6000000u;
            }

            if ((*(v47 + 279) & 0x800) != 0)
            {
              v47[126] |= 0x18000000u;
            }
          }

          else
          {
            *(v47 + 279) &= ~0x800u;
            *(v47 + 279) &= ~0x400u;
            *(v47 + 279) &= ~0x200u;
            *(v47 + 279) &= ~*(v47 + 72);
          }

          if (v47[128])
          {
            v47[126] |= 1u;
          }

          if ((v47[128] & 4) != 0)
          {
            v47[126] |= 4u;
          }

          if ((v47[128] & 0x20) != 0)
          {
            v41 = 0;
            if ((v47[128] & 0x2000) == 0 || !archive_entry_mac_metadata(*(v47 + 54), &v41) || !v41)
            {
              if (archive_entry_filetype(*(v47 + 54)) == 0x4000)
              {
                v47[127] |= 0x20u;
              }

              else
              {
                v47[126] |= 0x20u;
              }
            }
          }

          if ((v47[128] & 0x2000) != 0)
          {
            if (archive_entry_filetype(*(v47 + 54)) == 0x4000)
            {
              v47[127] |= 0x2000u;
            }

            else
            {
              v47[126] |= 0x2000u;
            }
          }

          if ((v47[128] & 0x4000) == 0)
          {
            v40 = 0;
            v39 = 0;
            archive_entry_fflags(*(v47 + 54), &v40, &v39);
            if ((v40 & ~v39 & 0x20) != 0)
            {
              v47[126] |= 0x8000u;
              v47[154] = -1;
            }
          }

          if ((v47[128] & 0x8000) != 0 && (*(v47 + 279) & 0xF000) == 0x8000 && *(v47 + 68) > 0)
          {
            v47[126] |= 0x8000u;
            v47[154] = -1;
          }

          v38 = 0;
          v38 = strrchr(*(v47 + 55), 47);
          if (v38)
          {
            ++v38;
          }

          else
          {
            v38 = *(v47 + 55);
          }

          if (*v38 == 46 && v38[1] == 95)
          {
            v47[126] &= ~0x8000u;
            if (*(v47 + 68) > 0)
            {
              v47[126] |= 0x1000000u;
            }
          }

          if ((v47[128] & 0x80) != 0)
          {
            v37 = 0;
            if ((v47[128] & 0x2000) == 0 || !archive_entry_mac_metadata(*(v47 + 54), &v37) || !v37)
            {
              v47[126] |= 0x80u;
            }
          }

          if ((v47[128] & 0x40) != 0)
          {
            v47[126] |= 0x40u;
          }

          if ((v47[128] & 0x100) != 0 && (v44 = check_symlinks(v47)) != 0)
          {
            return v44;
          }

          else
          {
            edit_deep_directories(v47);
            v44 = restore_entry(v47);
            if (v47[126] | 0x8000 && ((v47[129] & 0x80000000) != 0 || fchflags(v47[129], 0x20u)))
            {
              v47[126] &= ~0x8000u;
            }

            if ((v47[138] & 0x80000000) == 0)
            {
              if (v47[139])
              {
                v31 = v47[138];
              }

              else
              {
                v31 = -1;
              }

              v43 = MEMORY[0x1BFB55CF0](v31);
              if (v43)
              {
                v30 = v47;
                v4 = __error();
                archive_set_error(v30, *v4, "chdir() failure");
                v44 = -30;
              }

              close(v47[138]);
              v47[138] = -1;
              *(v47 + 556) = 0;
            }

            if ((v47[127] & 0x34000000) != 0)
            {
              v29 = v47;
              v5 = archive_entry_pathname(v48);
              v46 = current_fixup(v29, v5);
              if (!v46)
              {
                return -30;
              }

              v6 = archive_entry_filetype(v48);
              *(v46 + 66) = v6;
              *(v46 + 160) |= 0x20000000u;
              *(v46 + 64) = *(v47 + 279);
            }

            if ((v47[127] & 4) != 0 && (archive_entry_mtime_is_set(v48) || archive_entry_atime_is_set(v48)))
            {
              v28 = v47;
              v7 = archive_entry_pathname(v48);
              v46 = current_fixup(v28, v7);
              if (!v46)
              {
                return -30;
              }

              v8 = archive_entry_filetype(v48);
              *(v46 + 66) = v8;
              *(v46 + 64) = *(v47 + 279);
              *(v46 + 160) |= 4u;
              if (archive_entry_atime_is_set(v48))
              {
                v9 = archive_entry_atime(v48);
                *(v46 + 72) = v9;
                v10 = archive_entry_atime_nsec(v48);
                *(v46 + 104) = v10;
              }

              else
              {
                *(v46 + 72) = *(v47 + 25);
                *(v46 + 104) = 0;
              }

              if (archive_entry_mtime_is_set(v48))
              {
                v11 = archive_entry_mtime(v48);
                *(v46 + 88) = v11;
                v12 = archive_entry_mtime_nsec(v48);
                *(v46 + 120) = v12;
              }

              else
              {
                *(v46 + 88) = *(v47 + 25);
                *(v46 + 120) = 0;
              }

              if (archive_entry_birthtime_is_set(v48))
              {
                v13 = archive_entry_birthtime(v48);
                *(v46 + 80) = v13;
                v14 = archive_entry_birthtime_nsec(v48);
                *(v46 + 112) = v14;
              }

              else
              {
                *(v46 + 80) = *(v46 + 88);
                *(v46 + 112) = *(v46 + 120);
              }
            }

            if ((v47[127] & 0x20) != 0)
            {
              v27 = v47;
              v15 = archive_entry_pathname(v48);
              v46 = current_fixup(v27, v15);
              if (!v46)
              {
                return -30;
              }

              v16 = archive_entry_filetype(v48);
              *(v46 + 66) = v16;
              *(v46 + 160) |= 0x20u;
              v26 = (v46 + 8);
              v17 = archive_entry_acl(v48);
              archive_acl_copy(v26, v17);
            }

            if ((v47[127] & 0x2000) != 0)
            {
              v36 = 0;
              size = 0;
              v36 = archive_entry_mac_metadata(*(v47 + 54), &size);
              if (v36)
              {
                if (size)
                {
                  v25 = v47;
                  v18 = archive_entry_pathname(v48);
                  v46 = current_fixup(v25, v18);
                  if (!v46)
                  {
                    return -30;
                  }

                  v19 = archive_entry_filetype(v48);
                  *(v46 + 66) = v19;
                  v20 = malloc_type_malloc(size, 0x289DCC05uLL);
                  *(v46 + 152) = v20;
                  if (*(v46 + 152))
                  {
                    __memcpy_chk();
                    *(v46 + 144) = size;
                    *(v46 + 160) |= 0x2000u;
                  }
                }
              }
            }

            if ((v47[127] & 0x40) != 0)
            {
              v24 = v47;
              v21 = archive_entry_pathname(v48);
              v46 = current_fixup(v24, v21);
              if (!v46)
              {
                return -30;
              }

              v22 = archive_entry_filetype(v48);
              *(v46 + 66) = v22;
              *(v46 + 160) |= 0x40u;
            }

            if (v44 >= -20)
            {
              v47[1] = 4;
            }

            if ((v47[129] & 0x80000000) != 0)
            {
              archive_entry_set_size(v48, 0);
              *(v47 + 68) = 0;
            }

            return v44;
          }
        }
      }
    }
  }
}

uint64_t close_filters(uint64_t a1)
{
  v5 = *(a1 + 632);
  v4 = 0;
  while (v5)
  {
    v3 = *(v5 + 16);
    if (!*(v5 + 137) && *(v5 + 32))
    {
      v2 = (*(*(v5 + 32) + 8))(v5);
      *(v5 + 137) = 1;
      if (v2 < v4)
      {
        v4 = v2;
      }
    }

    free(*(v5 + 72));
    *(v5 + 72) = 0;
    v5 = v3;
  }

  return v4;
}

_DWORD *archive_entry_clone(uint64_t *a1)
{
  v7 = a1;
  v6 = 0;
  i = 0;
  j = 0;
  v3 = 0;
  v6 = archive_entry_new2(*a1);
  if (!v6)
  {
    return 0;
  }

  memcpy(v6 + 3, v7 + 3, 0x88uLL);
  v6[34] = v7[34];
  v6[35] = v7[35];
  archive_mstring_copy((v6 + 21), (v7 + 21));
  archive_mstring_copy((v6 + 36), (v7 + 36));
  archive_mstring_copy((v6 + 49), (v7 + 49));
  archive_mstring_copy((v6 + 62), (v7 + 62));
  archive_mstring_copy((v6 + 101), (v7 + 101));
  archive_mstring_copy((v6 + 75), (v7 + 75));
  *(v6 + 40) = *(v7 + 40);
  archive_mstring_copy((v6 + 88), (v7 + 88));
  *(v6 + 311) = *(v7 + 311);
  *(v6 + 912) = *(v7 + 912);
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  archive_acl_copy(v6 + 568, (v7 + 142));
  v2 = archive_entry_mac_metadata(v7, &v3);
  archive_entry_copy_mac_metadata(v6, v2, v3);
  for (i = v7[149]; i; i = *i)
  {
    archive_entry_xattr_add_entry(v6, *(i + 8), *(i + 16), *(i + 24));
  }

  for (j = v7[151]; j; j = *j)
  {
    archive_entry_sparse_add_entry(v6, j[1], j[2]);
  }

  return v6;
}

void *archive_string_concat(void *a1, uint64_t *a2)
{
  result = archive_string_append(a1, *a2, a2[1]);
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  return result;
}

uint64_t read_client_close_proxy(uint64_t a1)
{
  v4 = 0;
  if (*(a1 + 208))
  {
    for (i = 0; i < *(a1 + 224); ++i)
    {
      v3 = (*(a1 + 208))(a1, *(*(a1 + 240) + 24 * i + 16));
      if (v4 > v3)
      {
        v4 = v3;
      }
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

void *archive_mstring_copy(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 8) = 0;
  archive_string_concat(a1, a2);
  *(a1 + 32) = 0;
  archive_string_concat((a1 + 24), (a2 + 24));
  *(a1 + 56) = 0;
  return archive_wstring_concat((a1 + 48), (a2 + 48));
}

uint64_t archive_free(uint64_t a1)
{
  if (a1)
  {
    archive_entitlement_cleanup();
    return (*(*(a1 + 8) + 8))(a1);
  }

  else
  {
    return 0;
  }
}

void *archive_wstring_concat(void *a1, const __int32 **a2)
{
  result = archive_wstring_append(a1, *a2, a2[1]);
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  return result;
}

void *archive_wstring_append(void *a1, const __int32 *a2, size_t a3)
{
  if (!archive_wstring_ensure(a1, a1[1] + a3 + 1))
  {
    return 0;
  }

  if (a3)
  {
    wmemmove((*a1 + 4 * a1[1]), a2, a3);
  }

  a1[1] += a3;
  *(*a1 + 4 * a1[1]) = 0;
  return a1;
}

void archive_entitlement_cleanup()
{
  os_unfair_lock_lock(&formats_lock);
  if (allowed_formats)
  {
    CFRelease(allowed_formats);
    allowed_formats = 0;
  }

  formats_populated = 0;
  os_unfair_lock_unlock(&formats_lock);
  os_unfair_lock_lock(&filters_lock);
  if (allowed_filters)
  {
    CFRelease(allowed_filters);
    allowed_filters = 0;
  }

  filters_populated = 0;
  os_unfair_lock_unlock(&filters_lock);
}

uint64_t _archive_read_free(_DWORD *a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, 195932357, 0xFFFF, "archive_read_free") == -30)
    {
      return -30;
    }

    else
    {
      if (a1[1] == 32)
      {
        close = 0;
      }

      else
      {
        close = _archive_read_close(a1);
      }

      tree_free(*(a1 + 20));
      if (*(a1 + 26) && *(a1 + 27))
      {
        (*(a1 + 26))(*(a1 + 27));
      }

      if (*(a1 + 29) && *(a1 + 30))
      {
        (*(a1 + 29))(*(a1 + 30));
      }

      archive_string_free((a1 + 12));
      archive_entry_free(*(a1 + 18));
      *a1 = 0;
      __archive_clean(a1);
      free(a1);
      return close;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _archive_read_free_0(char *a1)
{
  close = 0;
  if (a1)
  {
    if (__archive_check_magic(a1, 14594245, 0xFFFF, "archive_read_free") == -30)
    {
      return -30;
    }

    else
    {
      if (*(a1 + 1) != 32 && *(a1 + 1) != 0x8000)
      {
        close = archive_read_close(a1);
      }

      if (*(a1 + 261))
      {
        close = (*(a1 + 261))(a1);
      }

      for (i = 0; i < 16; ++i)
      {
        *(a1 + 259) = &a1[88 * i + 664];
        if (*&a1[88 * i + 728])
        {
          (*&a1[88 * i + 728])(a1);
        }
      }

      __archive_read_free_filters(a1);
      for (j = 0; j < 16; ++j)
      {
        if (*&a1[24 * j + 264] && *(*&a1[24 * j + 264] + 16))
        {
          (*(*&a1[24 * j + 264] + 16))(&a1[24 * j + 248]);
        }
      }

      for (k = *(a1 + 262); k; k = v2)
      {
        v2 = *(k + 8);
        strlen(*k);
        __memset_chk();
        free(*k);
        free(k);
      }

      archive_string_free((a1 + 48));
      archive_entry_free(*(a1 + 18));
      *a1 = 0;
      __archive_clean(a1);
      free(*(a1 + 30));
      free(a1);
      return close;
    }
  }

  else
  {
    return 0;
  }
}

void archive_acl_copy(_WORD *a1, uint64_t a2)
{
  archive_acl_clear(a1);
  *a1 = *a2;
  for (i = *(a2 + 8); i; i = *i)
  {
    v2 = acl_new_entry(a1, *(i + 2), *(i + 4), *(i + 3), *(i + 5));
    if (v2)
    {
      archive_mstring_copy((v2 + 3), (i + 3));
    }
  }
}

uint64_t archive_read_format_ar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free(v2[4]);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_format_cpio_cleanup(uint64_t a1)
{
  for (i = **(a1 + 2072); i[2]; i[2] = v2)
  {
    v2 = *i[2];
    free(*(i[2] + 4));
    free(i[2]);
  }

  free(i);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_format_lha_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  lzh_decode_free(v2 + 368);
  archive_string_free(v2 + 224);
  archive_string_free(v2 + 248);
  archive_string_free(v2 + 144);
  archive_string_free(v2 + 168);
  archive_wstring_free(v2 + 272);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void lzh_decode_free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    free(*(*(a1 + 48) + 16));
    lzh_huffman_free((*(a1 + 48) + 56));
    lzh_huffman_free((*(a1 + 48) + 184));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

void cleanup(uint64_t a1)
{
  if (a1)
  {
    for (i = 0; i < *(a1 + 32); ++i)
    {
      if (*(a1 + 40 + 16 * i + 8))
      {
        if (*(a1 + 40 + 16 * i + 8) != "(noname)")
        {
          free(*(a1 + 40 + 16 * i + 8));
        }
      }
    }

    free(*(a1 + 8));
    free(a1);
  }
}

uint64_t cleanup_0(uint64_t a1)
{
  v4 = **(a1 + 2072);
  for (i = *(v4 + 8); i; i = v2)
  {
    v2 = *(i + 4);
    free(*(i + 6));
    free_options(*(i + 5));
    free(i);
  }

  archive_string_free(v4);
  archive_string_free(v4 + 96);
  archive_string_free(v4 + 120);
  archive_entry_linkresolver_free(*(v4 + 18));
  free(*(v4 + 4));
  free(v4);
  **(a1 + 2072) = 0;
  return 0;
}

void cleanup_1(void **a1)
{
  for (i = 0; i < 0x7F; ++i)
  {
    free(a1[2 * i]);
  }

  free(a1);
}

uint64_t cleanup_pathname(char **a1)
{
  v5 = a1;
  v3 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = cleanup_pathname_fsobj(v5[55], &v3, v4, *(v5 + 128));
  if (v2)
  {
    archive_set_error(v5, v3, "%s", v4[0]);
  }

  archive_string_free(v4);
  return v2;
}

uint64_t cleanup_pathname_fsobj(char *a1, _DWORD *a2, _BYTE **a3, int a4)
{
  v11 = 0;
  v12 = a1;
  v13 = a1;
  if (!*a1)
  {
    fsobj_error(a2, a3, -1, "Invalid empty ", "pathname");
    return -25;
  }

  if (*a1 != 47)
  {
    goto LABEL_7;
  }

  if ((a4 & 0x10000) != 0)
  {
    fsobj_error(a2, a3, -1, "Path is ", "absolute");
    return -25;
  }

  v12 = a1 + 1;
  v11 = *a1;
LABEL_7:
  while (*v12)
  {
    if (*v12 == 47)
    {
      ++v12;
    }

    else
    {
      if (*v12 != 46)
      {
        goto LABEL_19;
      }

      if (!v12[1])
      {
        break;
      }

      if (v12[1] == 47)
      {
        v12 += 2;
      }

      else
      {
        if (v12[1] == 46 && (v12[2] == 47 || !v12[2]) && (a4 & 0x200) != 0)
        {
          fsobj_error(a2, a3, -1, "Path contains ", "'..'");
          return -25;
        }

LABEL_19:
        if (v11)
        {
          v4 = v13++;
          *v4 = 47;
        }

        while (1)
        {
          v10 = 0;
          if (*v12)
          {
            v10 = *v12 != 47;
          }

          if (!v10)
          {
            break;
          }

          v5 = v12++;
          v6 = v13++;
          *v6 = *v5;
        }

        if (!*v12)
        {
          break;
        }

        v7 = v12++;
        v11 = *v7;
      }
    }
  }

  if (v13 == a1)
  {
    v8 = v13++;
    if (v11)
    {
      *v8 = 47;
    }

    else
    {
      *v8 = 46;
    }
  }

  *v13 = 0;
  return 0;
}

void archive_entry_linkresolver_free(void **a1)
{
  if (a1)
  {
    while (1)
    {
      entry = next_entry(a1, 3);
      if (!entry)
      {
        break;
      }

      archive_entry_free(entry[3]);
    }

    free(*a1);
    free(a1);
  }
}

uint64_t archive_entry_hardlink(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 1) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_mbs(*v3, (v3 + 49), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_read_format_tar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  gnu_clear_sparse_list(v2);
  archive_string_free(v2);
  archive_string_free(v2 + 24);
  archive_string_free(v2 + 48);
  archive_string_free(v2 + 72);
  archive_string_free(v2 + 96);
  archive_string_free(v2 + 120);
  archive_string_free(v2 + 240);
  archive_string_free(v2 + 216);
  archive_string_free(v2 + 192);
  archive_string_free(v2 + 168);
  archive_string_free(v2 + 144);
  archive_string_free(v2 + 376);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t xar_cleanup(uint64_t a1)
{
  v7 = **(a1 + 2072);
  checksum_cleanup(a1);
  v4 = decompression_cleanup(a1);
  for (i = *(v7 + 880); i; i = v3)
  {
    v3 = *i;
    free(i);
  }

  for (j = 0; j < *(v7 + 868); ++j)
  {
    file_free_1(*(*(v7 + 856) + 8 * j));
  }

  free(*(v7 + 856));
  while (*(v7 + 48))
  {
    v2 = *(v7 + 48);
    *(v7 + 48) = *v2;
    archive_string_free((v2 + 1));
    free(v2);
  }

  free(*(v7 + 32));
  free(v7);
  **(a1 + 2072) = 0;
  return v4;
}

uint64_t archive_entry_fflags(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 272);
  *a3 = *(result + 280);
  return result;
}

uint64_t checksum_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  _checksum_final((v2 + 452), 0, 0);
  return _checksum_final((v2 + 644), 0, 0);
}

uint64_t check_symlinks(char **a1)
{
  v5 = a1;
  v3 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = check_symlinks_fsobj(v5[55], &v3, v4, *(v5 + 128), 0);
  if (os_variant_has_internal_content())
  {
    __call_test_hook("__test_hook_after_check_symlinks_fsobj");
  }

  if (v2)
  {
    archive_set_error(v5, v3, "%s", v4[0]);
  }

  archive_string_free(v4);
  v5[53] = 0;
  return v2;
}

uint64_t _checksum_final(int *a1, const void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      off_1F3DE4E20(a1 + 24, __s2);
      if (a3 != 20 || memcmp(a2, __s2, 0x14uLL))
      {
        return -25;
      }
    }

    else if (v4 == 2)
    {
      off_1F3DE4DF0(a1 + 1, __s2);
      if (a3 != 16 || memcmp(a2, __s2, 0x10uLL))
      {
        return -25;
      }
    }
  }

  return v5;
}

uint64_t check_symlinks_fsobj(char *a1, _DWORD *a2, _BYTE **a3, int a4, int a5)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  memset(&__b, 0, sizeof(__b));
  if (*v41)
  {
    v29 = la_opendirat(-2, ".");
    __archive_ensure_cloexec_flag(v29);
    if ((v29 & 0x80000000) != 0)
    {
      v26 = v40;
      v25 = v39;
      v5 = __error();
      fsobj_error(v26, v25, *v5, "Could not open ", v41);
      return -30;
    }

    else
    {
      v34 = v41;
      v35 = v41;
      v33 = 0;
      if (*v41 == 47)
      {
        ++v35;
      }

      while (!v33)
      {
        while (*v35 == 47)
        {
          ++v35;
        }

        while (1)
        {
          v24 = 0;
          if (*v35)
          {
            v24 = *v35 != 47;
          }

          if (!v24)
          {
            break;
          }

          ++v35;
        }

        v23 = 1;
        if (*v35)
        {
          v22 = 0;
          if (*v35 == 47)
          {
            v22 = v35[1] == 0;
          }

          v23 = v22;
        }

        v33 = v23 & 1;
        v32 = *v35;
        *v35 = 0;
        v31 = fstatat(v29, v34, &__b, 32);
        if (v31)
        {
          *v35 = v32;
          if (*__error() != 2)
          {
            v21 = v40;
            v20 = v39;
            v6 = __error();
            fsobj_error(v21, v20, *v6, "Could not stat ", v41);
            v36 = -25;
          }

          break;
        }

        if ((__b.st_mode & 0xF000) == 0x4000)
        {
          if (!v33)
          {
            v27 = openat(v29, v34, 1611661312);
            if (v27 < 0)
            {
              v31 = -1;
            }

            else
            {
              v31 = 0;
              close(v29);
              v29 = v27;
            }

            if (v31)
            {
              *v35 = v32;
              v19 = v40;
              v18 = v39;
              v7 = __error();
              fsobj_error(v19, v18, *v7, "Could not chdir ", v41);
              v36 = -30;
              break;
            }

            v34 = v35 + 1;
          }
        }

        else if ((__b.st_mode & 0xF000) == 0xA000)
        {
          if (v33 && v37)
          {
            v36 = 0;
            break;
          }

          if (v33)
          {
            v31 = unlinkat(v29, v34, 0);
            if (v31)
            {
              *v35 = v32;
              v17 = v40;
              v16 = v39;
              v8 = __error();
              fsobj_error(v17, v16, *v8, "Could not remove symlink ", v41);
              v36 = -25;
            }

            else
            {
              *v35 = v32;
              v36 = 0;
            }

            break;
          }

          if ((v38 & 0x10) != 0)
          {
            v31 = unlinkat(v29, v34, 0);
            if (v31)
            {
              *v35 = v32;
              fsobj_error(v40, v39, 0, "Cannot remove intervening symlink ", v41);
              v36 = -25;
              break;
            }

            *v35 = v32;
          }

          else
          {
            if ((v38 & 0x100) != 0)
            {
              goto LABEL_53;
            }

            v31 = fstatat(v29, v34, &__b, 0);
            if (v31)
            {
              *v35 = v32;
              if (*__error() != 2)
              {
                v15 = v40;
                v14 = v39;
                v9 = __error();
                fsobj_error(v15, v14, *v9, "Could not stat ", v41);
                v36 = -25;
              }

              break;
            }

            if ((__b.st_mode & 0xF000) != 0x4000)
            {
LABEL_53:
              *v35 = v32;
              fsobj_error(v40, v39, 0, "Cannot extract through symlink ", v41);
              v36 = -25;
              break;
            }

            v28 = la_opendirat(v29, v34);
            if ((v28 & 0x80000000) != 0)
            {
              v31 = -1;
            }

            else
            {
              v31 = 0;
              close(v29);
              v29 = v28;
            }

            if (v31)
            {
              *v35 = v32;
              v13 = v40;
              v12 = v39;
              v10 = __error();
              fsobj_error(v13, v12, *v10, "Could not chdir ", v41);
              v36 = -30;
              break;
            }

            v34 = v35 + 1;
          }
        }

        *v35 = v32;
        if (*v35)
        {
          ++v35;
        }
      }

      *v35 = v32;
      if ((v29 & 0x80000000) == 0)
      {
        close(v29);
      }

      return v36;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t decompression_cleanup(uint64_t a1)
{
  v3 = **(a1 + 2072);
  v2 = 0;
  if (*(v3 + 216) && inflateEnd((v3 + 104)))
  {
    archive_set_error(a1, -1, "Failed to clean up zlib decompressor");
    v2 = -30;
  }

  if (*(v3 + 304) && BZ2_bzDecompressEnd((v3 + 224)))
  {
    archive_set_error(a1, -1, "Failed to clean up bzip2 decompressor");
    v2 = -30;
  }

  if (*(v3 + 448))
  {
    lzma_end();
  }

  return v2;
}

uint64_t __archive_ensure_cloexec_flag(uint64_t result)
{
  v1 = result;
  if ((result & 0x80000000) == 0)
  {
    result = fcntl(result, 1);
    if (result != -1 && (result & 1) == 0)
    {
      return fcntl(v1, 2, result | 1);
    }
  }

  return result;
}

uint64_t _warc_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (v2[3])
  {
    free(v2[4]);
  }

  archive_string_free((v2 + 6));
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

unint64_t edit_deep_directories(uint64_t a1)
{
  __s = *(a1 + 440);
  result = strlen(__s);
  if (result >= 0x400)
  {
    *(a1 + 552) = la_opendirat(-2, ".");
    result = __archive_ensure_cloexec_flag(*(a1 + 552));
    if ((*(a1 + 552) & 0x80000000) == 0)
    {
      *(a1 + 556) = MEMORY[0x1BFB55CF0](0xFFFFFFFFLL) == 0;
      while (1)
      {
        result = strlen(__s);
        if (result < 0x400)
        {
          break;
        }

        for (__sa = __s + 1016; ; --__sa)
        {
          v2 = 0;
          if (__sa > *(a1 + 440))
          {
            v2 = *__sa != 47;
          }

          if (!v2)
          {
            break;
          }
        }

        if (__sa <= *(a1 + 440))
        {
          break;
        }

        *__sa = 0;
        dir = create_dir(a1, *(a1 + 440));
        result = os_variant_has_internal_content();
        if (result)
        {
          result = __call_test_hook("__test_hook_edit_deep_directories_after_create_dir");
        }

        if (!dir)
        {
          v3 = 1074790400;
          if ((*(a1 + 512) & 0x100) != 0)
          {
            v3 = 1611661312;
          }

          result = open(*(a1 + 440), v3);
          v4 = result;
          if ((result & 0x80000000) != 0)
          {
            dir = -25;
          }

          else
          {
            if (MEMORY[0x1BFB55CF0](result))
            {
              dir = -25;
            }

            result = close(v4);
          }
        }

        *__sa = 47;
        if (dir)
        {
          break;
        }

        __s = __sa + 1;
        *(a1 + 440) = __s;
      }
    }
  }

  return result;
}

uint64_t archive_read_format_7zip_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free_StreamsInfo(v2);
  free(v2[20]);
  free(v2[22]);
  free_decompression(a1, v2);
  free(v2[27]);
  free(v2[2503]);
  free(v2[2504]);
  free(v2[2505]);
  free(v2[2512]);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void free_PackInfo(void **a1)
{
  free(a1[2]);
  free(a1[5]);
  free_Digest(a1 + 3);
}

void free_SubStreamsInfo(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
}

void free_StreamsInfo(void **a1)
{
  free_PackInfo(a1);
  free_CodersInfo((a1 + 6));
  free_SubStreamsInfo(a1 + 9);
}

uint64_t create_filesystem_object(uint64_t a1)
{
  v6 = strrchr(*(a1 + 440), 47);
  if (v6)
  {
    *v6 = 0;
    v1 = *(a1 + 440);
    if ((*(a1 + 512) & 0x100) != 0)
    {
      v2 = open(v1, 1611661312, 0);
    }

    else
    {
      v2 = open(v1, 1074790400, 0);
    }

    v5 = v2;
    *v6 = 47;
    if ((v2 & 0x80000000) != 0)
    {
      return *__error();
    }

    else
    {
      __archive_ensure_cloexec_flag(v2);
      filesystem_object_at = create_filesystem_object_at(v5, v6 + 1, a1);
      close(v5);
      return filesystem_object_at;
    }
  }

  else
  {
    return create_filesystem_object_at(-2, *(a1 + 440), a1);
  }
}

uint64_t restore_entry(uint64_t a1)
{
  if ((*(a1 + 512) & 0x10) != 0 && (*(a1 + 558) & 0xF000) != 0x4000)
  {
    if ((*(a1 + 512) & 0x20000) != 0)
    {
      clear_nochange_fflags(a1);
    }

    if (unlink(*(a1 + 440)))
    {
      if (*__error() != 2)
      {
        if (rmdir(*(a1 + 440)))
        {
          v1 = __error();
          archive_set_error(a1, *v1, "Could not unlink");
          return -25;
        }

        *(a1 + 424) = 0;
      }
    }

    else
    {
      *(a1 + 424) = 0;
    }
  }

  filesystem_object = create_filesystem_object(a1);
  if ((filesystem_object == 20 || filesystem_object == 2) && (*(a1 + 512) & 0x400) == 0)
  {
    create_parent_dir(a1, *(a1 + 440));
    filesystem_object = create_filesystem_object(a1);
  }

  if (filesystem_object == 2 && archive_entry_hardlink(*(a1 + 432)))
  {
    v2 = archive_entry_hardlink(*(a1 + 432));
    archive_set_error(a1, 2, "Hard-link target '%s' does not exist.", v2);
    return -25;
  }

  if ((filesystem_object == 21 || filesystem_object == 17) && (*(a1 + 512) & 8) != 0)
  {
    if ((*(a1 + 558) & 0xF000) == 0x4000)
    {
      *(a1 + 504) = 0;
    }

    goto LABEL_39;
  }

  if (filesystem_object == 21)
  {
    if (rmdir(*(a1 + 440)))
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Can't remove already-existing dir");
      return -25;
    }

LABEL_27:
    *(a1 + 424) = 0;
    filesystem_object = create_filesystem_object(a1);
    goto LABEL_65;
  }

  if (filesystem_object == 17)
  {
    v10 = 0;
    if ((*(a1 + 558) & 0xF000) == 0x4000)
    {
      v10 = stat(*(a1 + 440), (a1 + 280));
    }

    if (v10 || (*(a1 + 558) & 0xF000) != 0x4000)
    {
      v10 = lstat(*(a1 + 440), (a1 + 280));
    }

    if (v10)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Can't stat existing object");
      return -25;
    }

    if ((*(a1 + 512) & 0x800) != 0 && (*(a1 + 284) & 0xF000) != 0x4000 && !older(a1 + 280, *(a1 + 432)))
    {
LABEL_39:
      archive_entry_unset_size(*(a1 + 432));
      return 0;
    }

    if (*(a1 + 176) && *(a1 + 280) == *(a1 + 184) && *(a1 + 288) == *(a1 + 192))
    {
      archive_set_error(a1, 0, "Refusing to overwrite archive");
      return -25;
    }

    if ((*(a1 + 284) & 0xF000) == 0x4000)
    {
      if ((*(a1 + 558) & 0xF000) == 0x4000)
      {
        if (*(a1 + 558) != *(a1 + 284) && (*(a1 + 504) & 0x40000000) != 0)
        {
          *(a1 + 508) |= *(a1 + 504) & 0x34000000;
        }

        filesystem_object = 0;
      }

      else
      {
        if ((*(a1 + 512) & 0x20000) != 0)
        {
          clear_nochange_fflags(a1);
        }

        if (rmdir(*(a1 + 440)))
        {
          v8 = __error();
          archive_set_error(a1, *v8, "Can't replace existing directory with non-directory");
          return -25;
        }

        filesystem_object = create_filesystem_object(a1);
      }

      goto LABEL_65;
    }

    if ((*(a1 + 512) & 0x20000) != 0)
    {
      clear_nochange_fflags(a1);
    }

    if ((*(a1 + 512) & 0x40000) != 0 && (*(a1 + 284) & 0xF000) == 0x8000)
    {
      v5 = la_mktemp(a1);
      *(a1 + 516) = v5;
      if (v5 == -1)
      {
        v6 = __error();
        archive_set_error(a1, *v6, "Can't create temporary file");
        return -25;
      }

      *(a1 + 424) = 0;
      filesystem_object = 0;
      goto LABEL_65;
    }

    if (unlink(*(a1 + 440)))
    {
      v7 = __error();
      archive_set_error(a1, *v7, "Can't unlink already-existing object");
      return -25;
    }

    goto LABEL_27;
  }

LABEL_65:
  if (filesystem_object)
  {
    if (!*(a1 + 40))
    {
      archive_set_error(a1, filesystem_object, "Can't create '%s'", *(a1 + 440));
    }

    return -25;
  }

  else
  {
    *(a1 + 424) = 0;
    return 0;
  }
}

uint64_t archive_entry_symlink(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 2) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_mbs(*v3, (v3 + 75), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

void free_CodersInfo(uint64_t a1)
{
  if (*(a1 + 8))
  {
    for (i = 0; i < *a1; ++i)
    {
      free_Folder(*(a1 + 8) + 104 * i);
    }

    free(*(a1 + 8));
  }
}

uint64_t _archive_write_disk_finish_entry(_DWORD *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v39 = a1;
  v38 = 0;
  v37 = __archive_check_magic(a1, -1073631035, 6, "archive_write_finish_entry");
  if (v37 == -30)
  {
    return -30;
  }

  if ((v39[1] & 2) != 0)
  {
    return 0;
  }

  archive_clear_error(v39);
  if ((v39[129] & 0x80000000) == 0 && (*(v39 + 68) & 0x8000000000000000) == 0 && *(v39 + 66) != *(v39 + 68))
  {
    if ((v39[126] & 0x8000) != 0)
    {
      v36 = 0;
      if (*(v39 + 85))
      {
        bzero(v42, 0x400uLL);
      }

      while (*(v39 + 85))
      {
        if (*(v39 + 85) > 0x400uLL)
        {
          v36 = hfs_write_data_block(v39, v42, 0x400uLL);
        }

        else
        {
          v36 = hfs_write_data_block(v39, v42, *(v39 + 85));
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          close_file_descriptor(v39);
          return v36;
        }
      }
    }

    else
    {
      if (ftruncate(v39[129], *(v39 + 68)) == -1 && !*(v39 + 68))
      {
        v1 = __error();
        archive_set_error(v39, *v1, "File size could not be restored");
        close_file_descriptor(v39);
        return -25;
      }

      *(v39 + 53) = 0;
      v38 = lazy_stat(v39);
      if (v38)
      {
        close_file_descriptor(v39);
        return v38;
      }

      if (*(v39 + 47) < *(v39 + 68))
      {
        __buf = 0;
        if (lseek(v39[129], *(v39 + 68) - 1, 0) < 0)
        {
          v2 = __error();
          archive_set_error(v39, *v2, "Seek failed");
          close_file_descriptor(v39);
          return -30;
        }

        if (write(v39[129], &__buf, 1uLL) < 0)
        {
          v23 = v39;
          v3 = __error();
          archive_set_error(v23, *v3, "Write to restore size failed");
          close_file_descriptor(v39);
          return -30;
        }

        *(v39 + 53) = 0;
      }
    }
  }

  if ((v39[126] & 0x1000000) == 0)
  {
    goto LABEL_34;
  }

  v34 = fixup_appledouble(v39, *(v39 + 55));
  if (v34 != 1)
  {
    if (v34 < v38)
    {
      v38 = v34;
    }

LABEL_34:
    if ((v39[126] & 0x14000001) != 0)
    {
      v22 = v39;
      v21 = archive_entry_uname(*(v39 + 54));
      v4 = archive_entry_uid(*(v39 + 54));
      v5 = archive_write_disk_uid(v22, v21, v4);
      *(v39 + 70) = v5;
    }

    if ((v39[126] & 0x14000001) != 0)
    {
      v20 = v39;
      v19 = archive_entry_gname(*(v39 + 54));
      v6 = archive_entry_gid(*(v39 + 54));
      v7 = archive_write_disk_gid(v20, v19, v6);
      *(v39 + 71) = v7;
    }

    if (v39[126])
    {
      v33 = set_ownership(v39);
      if (v33 < v38)
      {
        v38 = v33;
      }
    }

    if (*(v39 + 21))
    {
      if ((v39[126] & 0x80) != 0)
      {
        v32 = set_xattrs(v39);
        if (v32 < v38)
        {
          v38 = v32;
        }
      }
    }

    if ((v39[126] & 0x34000000) != 0)
    {
      v31 = set_mode(v39, *(v39 + 279));
      if (v31 < v38)
      {
        v38 = v31;
      }
    }

    if (!*(v39 + 21) && (v39[126] & 0x80) != 0)
    {
      v30 = set_xattrs(v39);
      if (v30 < v38)
      {
        v38 = v30;
      }
    }

    if ((v39[126] & 0x40) != 0)
    {
      v29 = set_fflags(v39);
      if (v29 < v38)
      {
        v38 = v29;
      }
    }

    if ((v39[126] & 4) != 0)
    {
      v28 = set_times_from_entry(v39);
      if (v28 < v38)
      {
        v38 = v28;
      }
    }

    if ((v39[126] & 0x2000) != 0)
    {
      v27 = 0;
      v26 = 0;
      v27 = archive_entry_mac_metadata(*(v39 + 54), &v26);
      if (v27)
      {
        if (v26)
        {
          v18 = v39;
          v8 = archive_entry_pathname(*(v39 + 54));
          v25 = set_mac_metadata(v18, v8, v27, v26);
          if (v25 < v38)
          {
            v38 = v25;
          }
        }
      }
    }

    if ((v39[126] & 0x20) != 0)
    {
      v17 = v39;
      v14 = v39[129];
      v15 = archive_entry_pathname(*(v39 + 54));
      v16 = archive_entry_acl(*(v39 + 54));
      archive_entry_mode(*(v39 + 54));
      v24 = archive_write_disk_set_acls(v17, v14, v15, v16);
      if (v24 < v38)
      {
        v38 = v24;
      }
    }
  }

  if ((v39[129] & 0x80000000) == 0)
  {
    close(v39[129]);
    v39[129] = -1;
    if (*(v39 + 59))
    {
      rename(*(v39 + 59), *(v39 + 55), v9);
      if (v10 == -1)
      {
        v13 = v39;
        v11 = __error();
        archive_set_error(v13, *v11, "Failed to rename temporary file");
        v38 = -25;
        unlink(*(v39 + 59));
      }

      *(v39 + 59) = 0;
    }
  }

  archive_entry_free(*(v39 + 54));
  *(v39 + 54) = 0;
  v39[1] = 2;
  return v38;
}

uint64_t set_mode(uint64_t a1, __int16 a2)
{
  v7 = 0;
  v8 = a2 & 0xFFF;
  if ((*(a1 + 504) & 0x2000000) != 0)
  {
    v7 = lazy_stat(a1);
    if (v7)
    {
      return v7;
    }

    if (*(*(a1 + 424) + 20) != *(a1 + 568))
    {
      v8 &= ~0x400u;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't restore SGID bit");
        v7 = -20;
      }
    }

    if (*(*(a1 + 424) + 16) != *(a1 + 560) && (*(a1 + 504) & 0x10000000) != 0)
    {
      v8 &= ~0x800u;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't restore SUID bit");
        v7 = -20;
      }
    }

    *(a1 + 504) &= ~0x2000000u;
    *(a1 + 504) &= ~0x8000000u;
  }

  else if ((*(a1 + 504) & 0x8000000) != 0)
  {
    if (*(a1 + 168) != *(a1 + 560))
    {
      v8 = a2 & 0x7FF;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't make file SUID");
        v7 = -20;
      }
    }

    *(a1 + 504) &= ~0x8000000u;
  }

  if ((*(a1 + 558) & 0xF000) == 0xA000)
  {
    if (lchmod(*(a1 + 440), v8))
    {
      v5 = *__error();
      if (v5 != 45 && v5 != 78 && v5 != 102)
      {
        v2 = __error();
        archive_set_error(a1, *v2, "Can't set permissions to 0%o", v8);
        return -20;
      }
    }
  }

  else if ((*(a1 + 558) & 0xF000) != 0x4000)
  {
    if ((*(a1 + 516) & 0x80000000) != 0 ? chmod(*(a1 + 440), v8) : fchmod(*(a1 + 516), v8))
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Can't set permissions to 0%o", v8);
      return -20;
    }
  }

  return v7;
}

uint64_t free_decompression(_DWORD *a1, uint64_t a2)
{
  v3 = 0;
  if (*(a2 + 448))
  {
    lzma_end();
  }

  if (*(a2 + 536))
  {
    if (BZ2_bzDecompressEnd((a2 + 456)))
    {
      archive_set_error(a1, -1, "Failed to clean up bzip2 decompressor");
      v3 = -30;
    }

    *(a2 + 536) = 0;
  }

  if (*(a2 + 656))
  {
    if (inflateEnd((a2 + 544)))
    {
      archive_set_error(a1, -1, "Failed to clean up zlib decompressor");
      v3 = -30;
    }

    *(a2 + 656) = 0;
  }

  if (*(a2 + 19976))
  {
    off_1F3DE4D70(a2 + 664);
    *(a2 + 19976) = 0;
  }

  return v3;
}

uint64_t archive_read_format_cab_cleanup(uint64_t a1)
{
  v4 = **(a1 + 2072);
  if (*(v4 + 12))
  {
    for (i = 0; i < v4[40]; ++i)
    {
      free(*(*(v4 + 12) + 96 * i + 56));
    }

    free(*(v4 + 12));
  }

  if (*(v4 + 13))
  {
    for (j = 0; j < v4[41]; ++j)
    {
      archive_string_free(*(v4 + 13) + 48 * j + 24);
    }

    free(*(v4 + 13));
  }

  if (*(v4 + 384))
  {
    inflateEnd((v4 + 136));
  }

  lzx_decode_free((v4 + 196));
  archive_wstring_free((v4 + 60));
  free(*(v4 + 20));
  free(v4);
  **(a1 + 2072) = 0;
  return 0;
}

void lzx_decode_free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    free(*(*(a1 + 48) + 16));
    free(*(*(a1 + 48) + 96));
    lzx_huffman_free(*(a1 + 48) + 120);
    lzx_huffman_free(*(a1 + 48) + 432);
    lzx_huffman_free(*(a1 + 48) + 328);
    lzx_huffman_free(*(a1 + 48) + 224);
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

uint64_t _archive_write_disk_close(_DWORD *a1)
{
  v11 = a1;
  v10 = a1;
  v9 = 0;
  i = 0;
  memset(&__b, 0, sizeof(__b));
  if (__archive_check_magic(v10, -1073631035, 6, "archive_write_disk_close") == -30)
  {
    return -30;
  }

  else
  {
    v4 = _archive_write_disk_finish_entry(v10);
    for (i = sort_dir_list(*(v10 + 19)); i; i = v9)
    {
      v5 = -1;
      *(v10 + 53) = 0;
        ;
      }

      while (1)
      {
        v2 = 0;
        if (j != *(i + 21))
        {
          v2 = *(j - 1) == 47;
        }

        if (!v2)
        {
          break;
        }

        *--j = 0;
      }

      if (*(i + 40))
      {
        v3 = 16777472;
        if (i[33] == 0x4000)
        {
          v3 = 17826048;
        }

        v5 = open(*(i + 21), v3);
        if (v5 != -1 && i[33] == 0x4000 || (v5 <= 0 || !fstat(v5, &__b) && la_verify_filetype(__b.st_mode, i[33])) && !lstat(*(i + 21), &__b) && la_verify_filetype(__b.st_mode, i[33]))
        {
          if ((*(i + 40) & 4) != 0)
          {
            set_times(v10, v5, i[32], *(i + 21), *(i + 9), *(i + 13), *(i + 10), *(i + 14), *(i + 11), *(i + 15));
          }

          if ((*(i + 40) & 0x20000000) != 0)
          {
            if (v5 < 0)
            {
              lchmod(*(i + 21), i[32] & 0xFFF);
            }

            else
            {
              fchmod(v5, i[32] & 0xFFF);
            }
          }

          if ((*(i + 40) & 0x20) != 0)
          {
            archive_write_disk_set_acls(v10, v5, *(i + 21), i + 4);
          }

          if ((*(i + 40) & 0x40) != 0)
          {
            set_fflags_platform(v10, v5, *(i + 21), i[32], *(i + 17), 0);
          }

          if ((*(i + 40) & 0x2000) != 0)
          {
            set_mac_metadata(v10, *(i + 21), *(i + 19), *(i + 18));
          }
        }
      }

      v9 = *i;
      archive_acl_clear((i + 4));
      free(*(i + 19));
      free(*(i + 21));
      if ((v5 & 0x80000000) == 0)
      {
        close(v5);
      }

      free(i);
    }

    *(v10 + 19) = 0;
    return v4;
  }
}

uint64_t free_codes(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free(v2[36]);
  free(v2[41]);
  free(v2[46]);
  free(v2[51]);
  free(v2[40]);
  free(v2[45]);
  free(v2[50]);
  free(v2[55]);
  __memset_chk();
  __memset_chk();
  __memset_chk();
  return __memset_chk();
}

uint64_t archive_read_format_rar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free_codes(a1);
  clear_filters((v2 + 115));
  free(v2[9]);
  free(v2[10]);
  free(v2[32]);
  free(v2[28]);
  free(v2[107]);
  off_1F3DE4D70(v2 + 124);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void **sort_dir_list(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return a1;
  }

  v3 = a1;
  v7 = **a1;
  while (v7)
  {
    v7 = *v7;
    if (v7)
    {
      v7 = *v7;
    }

    v3 = *v3;
  }

  v5 = *v3;
  *v3 = 0;
  v8 = sort_dir_list(a1);
  v6 = sort_dir_list(v5);
  if (strcmp(v8[21], v6[21]) <= 0)
  {
    v9 = v6;
    v4 = v6;
    v6 = *v6;
  }

  else
  {
    v9 = v8;
    v4 = v8;
    v8 = *v8;
  }

  while (1)
  {
    v2 = 0;
    if (v8)
    {
      v2 = v6 != 0;
    }

    if (!v2)
    {
      break;
    }

    if (strcmp(v8[21], v6[21]) <= 0)
    {
      *v4 = v6;
      v6 = *v6;
    }

    else
    {
      *v4 = v8;
      v8 = *v8;
    }

    v4 = *v4;
  }

  if (v8)
  {
    *v4 = v8;
  }

  if (v6)
  {
    *v4 = v6;
  }

  return v9;
}

void clear_filters(uint64_t a1)
{
  delete_filter(*(a1 + 16));
  delete_program_code(*(a1 + 8));
  free(*a1);
}

void delete_filter(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 80);
    free(*(a1 + 40));
    free(a1);
    a1 = v1;
  }
}

uint64_t _archive_write_disk_free(uint64_t a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, -1073631035, 0xFFFF, "archive_write_disk_free") == -30)
    {
      return -30;
    }

    else
    {
      v2 = _archive_write_disk_close(a1);
      archive_write_disk_set_group_lookup(a1, 0, 0, 0);
      archive_write_disk_set_user_lookup(a1, 0, 0, 0);
      archive_entry_free(*(a1 + 432));
      archive_string_free(a1 + 448);
      archive_string_free(a1 + 480);
      archive_string_free(a1 + 48);
      archive_string_free(a1 + 256);
      *a1 = 0;
      __archive_clean(a1);
      free(*(a1 + 584));
      free(*(a1 + 600));
      free(*(a1 + 632));
      free(*(a1 + 664));
      if (*(a1 + 800) && deflateEnd((a1 + 688)))
      {
        archive_set_error(a1, -1, "Failed to clean up compressor");
        v2 = -30;
      }

      free(a1);
      return v2;
    }
  }

  else
  {
    return 0;
  }
}

void delete_program_code(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 48);
    free(*a1);
    free(*(a1 + 16));
    free(a1);
    a1 = v1;
  }
}

void Ppmd7_Free(uint64_t a1)
{
  free(*(a1 + 64));
  *(a1 + 52) = 0;
  *(a1 + 64) = 0;
}

uint64_t rar5_cleanup(uint64_t a1)
{
  context = get_context(a1);
  free(context[10]);
  free(context[11]);
  clear_data_ready_stack(context);
  free(context[2660]);
  free_filters(context);
  cdeque_free((context + 2407));
  free(context);
  **(a1 + 2072) = 0;
  return 0;
}

void archive_string_conversion_free(uint64_t a1)
{
  for (i = *(a1 + 88); i; i = v1)
  {
    v1 = *i;
    free_sconv_object(i);
  }

  *(a1 + 88) = 0;
  free(*(a1 + 72));
  *(a1 + 72) = 0;
}

_WORD *free_filters(uint64_t a1)
{
  v3 = (a1 + 19256);
  while (cdeque_size(v3))
  {
    cdeque_filter_p();
    if (!cdeque_pop_front(v3, v1))
    {
      free(0);
    }
  }

  result = cdeque_clear(v3);
  *(a1 + 19272) = 0;
  *(a1 + 19280) = 0;
  return result;
}

void cdeque_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      free(*(a1 + 8));
      *(a1 + 8) = 0;
      *a1 = -1;
      *(a1 + 2) = -1;
      *(a1 + 4) = 0;
    }
  }
}

uint64_t archive_read_format_iso9660_cleanup(uint64_t a1)
{
  v2 = 0;
  v3 = **(a1 + 2072);
  release_files(v3);
  free(*(v3 + 7));
  archive_string_free((v3 + 16));
  archive_string_free((v3 + 80));
  free(*(v3 + 14));
  free(*(v3 + 32));
  free(*(v3 + 39));
  if (*(v3 + 118) && inflateEnd((v3 + 360)))
  {
    archive_set_error(a1, -1, "Failed to clean up zlib decompressor");
    v2 = -30;
  }

  free(*(v3 + 62));
  free(*(v3 + 64));
  free(v3);
  **(a1 + 2072) = 0;
  return v2;
}

void release_files(uint64_t a1)
{
  for (i = *(a1 + 104); i; i = v1)
  {
    v1 = *i;
    archive_string_free((i + 21));
    archive_string_free((i + 27));
    free(i[24]);
    for (j = i[34]; j; j = v3)
    {
      v3 = j[2];
      free(j);
    }

    free(i);
  }
}

unint64_t _archive_write_disk_data_block(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 4, "archive_write_data_block") == -30)
  {
    return -30;
  }

  *(a1 + 520) = a4;
  if ((*(a1 + 504) & 0x8000) != 0)
  {
    v5 = hfs_write_data_block(a1, a2, a3);
  }

  else
  {
    v5 = write_data_block(a1, a2, a3);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    return v5;
  }

  if (v5 >= a3)
  {
    return 0;
  }

  archive_set_error(a1, 0, "Too much data: Truncating file at %ju bytes", *(a1 + 544));
  return -20;
}

uint64_t archive_read_format_zip_cleanup(uint64_t a1)
{
  v6 = **(a1 + 2072);
  if (*(v6 + 320))
  {
    inflateEnd((v6 + 208));
  }

  if (*(v6 + 464))
  {
    lzma_end();
  }

  if (*(v6 + 552))
  {
    BZ2_bzDecompressEnd((v6 + 472));
  }

  free(*(v6 + 192));
  if (*(v6 + 7976))
  {
    off_1F3DE4D40(v6 + 584);
  }

  if (*(v6 + 64))
  {
    for (i = *(v6 + 64); i; i = v4)
    {
      v4 = i[3];
      archive_string_free((i + 9));
      free(i);
    }
  }

  if (*(v6 + 72))
  {
    for (j = *(v6 + 72); j; j = v2)
    {
      v2 = j[3];
      free(j);
    }
  }

  free(*(v6 + 8024));
  if (*(v6 + 8160))
  {
    off_1F3DE4E88(v6 + 8080);
  }

  if (*(v6 + 8548))
  {
    off_1F3DE4DD8(v6 + 8164);
  }

  free(*(v6 + 8584));
  free(*(v6 + 8592));
  free(*(v6 + 8600));
  archive_string_free(v6);
  free(v6);
  **(a1 + 2072) = 0;
  return 0;
}

void __archive_read_free_filters(uint64_t a1)
{
  close_filters(a1);
  while (*(a1 + 632))
  {
    v1 = *(*(a1 + 632) + 16);
    free(*(a1 + 632));
    *(a1 + 632) = v1;
  }
}

uint64_t archive_write_data_block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a1 + 8) + 40))
  {
    return (*(*(a1 + 8) + 40))(a1, a2, a3, a4);
  }

  archive_set_error(a1, -1, "archive_write_data_block not supported");
  *(a1 + 4) = 0x8000;
  return -30;
}

size_t write_data_block(uint64_t a1, _BYTE *a2, size_t a3)
{
  v13 = a3;
  v12 = a3;
  v10 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 544) && (*(a1 + 516) & 0x80000000) == 0)
  {
    if ((*(a1 + 512) & 0x1000) != 0)
    {
      v8 = lazy_stat(a1);
      if (v8)
      {
        return v8;
      }

      v10 = *(*(a1 + 424) + 112);
    }

    if ((*(a1 + 544) & 0x8000000000000000) == 0 && (*(a1 + 520) + v13) > *(a1 + 544))
    {
      v13 = *(a1 + 544) - *(a1 + 520);
      v12 = v13;
    }

    while (v13)
    {
      if (v10)
      {
          ;
        }

        *(a1 + 520) += i - a2;
        v13 -= i - a2;
        a2 = i;
        if (!v13)
        {
          return v12 - v13;
        }

        v6 = (*(a1 + 520) / v10 + 1) * v10;
        __nbyte = v13;
        if ((*(a1 + 520) + v13) > v6)
        {
          __nbyte = v6 - *(a1 + 520);
        }
      }

      else
      {
        __nbyte = v13;
      }

      if (*(a1 + 520) != *(a1 + 528))
      {
        if (lseek(*(a1 + 516), *(a1 + 520), 0) < 0)
        {
          v3 = __error();
          archive_set_error(a1, *v3, "Seek failed");
          return -30;
        }

        *(a1 + 528) = *(a1 + 520);
      }

      v11 = write(*(a1 + 516), a2, __nbyte);
      if (v11 < 0)
      {
        v4 = __error();
        archive_set_error(a1, *v4, "Write failed");
        return -20;
      }

      a2 += v11;
      v13 -= v11;
      *(a1 + 536) += v11;
      *(a1 + 520) += v11;
      *(a1 + 528) = *(a1 + 520);
    }

    return v12 - v13;
  }

  else
  {
    archive_set_error(a1, 0, "Attempt to write to an empty file");
    return -20;
  }
}

void free_sconv_object(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  archive_string_free(a1 + 56);
  if (*(a1 + 40) != -1)
  {
    MEMORY[0x1BFB558B0](*(a1 + 40));
  }

  if (*(a1 + 48) != -1)
  {
    MEMORY[0x1BFB558B0](*(a1 + 48));
  }

  free(a1);
}

uint64_t archive_read_open_memory2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x10500404B6A7EA7uLL);
  if (v5)
  {
    v5[1] = a2;
    *v5 = a2;
    v5[2] = *v5 + a3;
    v5[3] = a4;
    archive_read_set_open_callback(a1, memory_read_open);
    archive_read_set_read_callback(a1, memory_read);
    archive_read_set_seek_callback(a1, memory_read_seek);
    archive_read_set_skip_callback(a1, memory_read_skip);
    archive_read_set_close_callback(a1, memory_read_close);
    archive_read_set_callback_data(a1, v5);
    return archive_read_open1(a1);
  }

  else
  {
    archive_set_error(a1, 12, "No memory");
    return -30;
  }
}

uint64_t archive_read_set_seek_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_seek_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 200) = a2;
    return 0;
  }
}

uint64_t archive_read_set_skip_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_skip_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) = a2;
    return 0;
  }
}

uint64_t memory_read(uint64_t a1, void *a2, void *a3)
{
  *a3 = a2[1];
  v4 = a2[2] - a2[1];
  if (v4 > a2[3])
  {
    v4 = a2[3];
  }

  a2[1] += v4;
  return v4;
}

uint64_t archive_entry_pathname_utf8(void *a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_utf8(*a1, (a1 + 62), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_mstring_get_utf8(_DWORD *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if ((*(a2 + 96) & 2) != 0)
  {
    *v7 = *(v8 + 24);
    return 0;
  }

  else
  {
    *v7 = 0;
    if ((*(v8 + 96) & 1) == 0)
    {
      v4 = 0;
      archive_mstring_get_mbs(v9, v8, &v4);
    }

    if (*(v8 + 96))
    {
      v6 = archive_string_conversion_to_charset(v9, "UTF-8", 1);
      if (v6)
      {
        v5 = archive_strncpy_l((v8 + 24), *v8, *(v8 + 8), v6);
        if (!v9)
        {
          free_sconv_object(v6);
        }

        if (v5)
        {
          return -1;
        }

        else
        {
          *(v8 + 96) |= 2u;
          *v7 = *(v8 + 24);
          return 0;
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

uint64_t **archive_string_conversion_to_charset(_DWORD *a1, const char *a2, int a3)
{
  v5 = 1;
  if (a3)
  {
    v5 = 5;
  }

  current_charset = get_current_charset(a1);
  return get_sconv_object(a1, current_charset, a2, v5);
}

uint64_t strncat_from_utf8_to_utf8(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
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
  if (archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    v12 = v15;
    v11 = (*v16 + v16[1]);
    v10 = (*v16 + v16[2] - 1);
    do
    {
      v7 = 0;
      v6 = v12;
      while (1)
      {
        v9 = utf8_to_unicode(&v7, v12, v14);
        if (v9 <= 0)
        {
          break;
        }

        v12 += v9;
        v14 -= v9;
      }

      if (v6 < v12)
      {
        if (&v11[v12 - v6] > v10)
        {
          v16[1] = &v11[-*v16];
          if (!archive_string_ensure(v16, &v12[v16[2]] - v6 + 1))
          {
            return -1;
          }

          v11 = (*v16 + v16[1]);
          v10 = (*v16 + v16[2] - 1);
        }

        __memcpy_chk();
        v11 += v12 - v6;
      }

      if (v9 < 0)
      {
        if (v9 == -3 && v7 >= 0xD800 && v7 < 0xE000)
        {
          v9 = cesu8_to_unicode(&v7, v12, v14);
        }

        if (v9 < 0)
        {
          v8 = -1;
          v9 = -v9;
        }

        while (1)
        {
          v5 = unicode_to_utf8(v11, v10 - v11, v7);
          if (v5)
          {
            break;
          }

          v16[1] = &v11[-*v16];
          if (!archive_string_ensure(v16, v16[2] + v14 + 1))
          {
            return -1;
          }

          v11 = (*v16 + v16[1]);
          v10 = (*v16 + v16[2] - 1);
        }

        v11 += v5;
        v12 += v9;
        v14 -= v9;
      }
    }

    while (v9 > 0);
    v16[1] = &v11[-*v16];
    *(*v16 + v16[1]) = 0;
    return v8;
  }

  else
  {
    return -1;
  }
}

uint64_t utf8_to_unicode(int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = _utf8_to_unicode(a1, a2, a3);
  if (v4 == 3 && *a1 >= 0xD800 && *a1 < 0xE000)
  {
    return -3;
  }

  else
  {
    return v4;
  }
}

uint64_t _utf8_to_unicode(int *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v8 = *a2;
    if (!*a2)
    {
      return 0;
    }

    v5 = _utf8_to_unicode_utf8_count[*a2];
    if (a3 < v5)
    {
      v5 = a3;
      for (i = 1; i < a3; ++i)
      {
        if ((a2[i] & 0xC0) != 0x80)
        {
          v5 = i;
          goto LABEL_58;
        }
      }

      goto LABEL_58;
    }

    if (v5 == 1)
    {
      *a1 = v8 & 0x7F;
      return 1;
    }

    if (v5 == 2)
    {
      if ((a2[1] & 0xC0) == 0x80)
      {
        *a1 = a2[1] & 0x3F | ((v8 & 0x1F) << 6);
        return v5;
      }

      v5 = 1;
    }

    else
    {
      if (v5 == 3)
      {
        if ((a2[1] & 0xC0) != 0x80)
        {
          v5 = 1;
          goto LABEL_58;
        }

        if ((a2[2] & 0xC0) != 0x80)
        {
          v5 = 2;
          goto LABEL_58;
        }

        v4 = ((a2[1] & 0x3F) << 6) | ((v8 & 0xF) << 12) | a2[2] & 0x3F;
        if (v4 < 0x800)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v5 != 4)
        {
          if (v8 == 192 || v8 == 193)
          {
            v5 = 2;
          }

          else if (*a2 < 0xF5u || *a2 > 0xF7u)
          {
            if (*a2 < 0xF8u || *a2 > 0xFBu)
            {
              if (v8 == 252 || v8 == 253)
              {
                v5 = 6;
              }

              else
              {
                v5 = 1;
              }
            }

            else
            {
              v5 = 5;
            }
          }

          else
          {
            v5 = 4;
          }

          if (a3 < v5)
          {
            v5 = a3;
          }

          for (j = 1; j < v5; ++j)
          {
            if ((a2[j] & 0xC0) != 0x80)
            {
              v5 = j;
              goto LABEL_58;
            }
          }

          goto LABEL_58;
        }

        if ((a2[1] & 0xC0) != 0x80)
        {
          v5 = 1;
          goto LABEL_58;
        }

        if ((a2[2] & 0xC0) != 0x80)
        {
          v5 = 2;
          goto LABEL_58;
        }

        if ((a2[3] & 0xC0) != 0x80)
        {
          v5 = 3;
          goto LABEL_58;
        }

        v4 = ((a2[1] & 0x3F) << 12) | ((v8 & 7) << 18) | ((a2[2] & 0x3F) << 6) | a2[3] & 0x3F;
        if (v4 < 0x10000)
        {
          goto LABEL_58;
        }
      }

      if (v4 < 0x110000)
      {
        *a1 = v4;
        return v5;
      }
    }

LABEL_58:
    *a1 = 65533;
    return -v5;
  }

  return 0;
}
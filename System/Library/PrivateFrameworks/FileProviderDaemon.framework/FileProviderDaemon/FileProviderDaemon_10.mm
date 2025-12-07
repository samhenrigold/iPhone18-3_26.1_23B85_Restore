void sub_1CF1775C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 192), 8);
  _Block_object_dispose((v1 + 240), 8);
  _Block_object_dispose((v1 + 288), 8);
  _Unwind_Resume(a1);
}

void sub_1CF1779CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 128), 8);
  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t checkFault(uint64_t fd, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 + 116);
  v9 = v8 & 0x40000020;
  if ((v8 & 0x40000020) == 0x20)
  {
    *a3 |= 0x1000000uLL;
    goto LABEL_18;
  }

  if ((v8 & 0x40000000) != 0)
  {
    if ((*(v7 + 4) & 0xF000) == 0x8000 && *(v7 + 104))
    {
      if (!fpfs_supports_partial_materialization())
      {
        v12 = 32;
        goto LABEL_11;
      }

      v10 = lseek(fd, 0, 4);
      v11 = lseek(fd, 0, 3);
      if (!v10 && v11 == *(v7 + 96))
      {
        v12 = 0x8000000000;
LABEL_11:
        *a3 |= v12;
      }
    }

    if ((*(v7 + 4) & 0xF000) == 0x4000)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      fpfs_fopendir();
      v13 = *(v27 + 24);
      _Block_object_dispose(&v26, 8);
      if ((v13 & 1) == 0)
      {
        *a3 |= 0x40uLL;
      }
    }

    if (*(a4 + 3) == 1)
    {
      *a3 |= 0x80000000uLL;
    }

    if ((fpck_validate_decmpfs_xattr(fd, a4, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_18:
  v14 = *(a4 + 16);
  if ((*(v14 + 44) & 0x20) == 0)
  {
    v15 = 0;
    goto LABEL_42;
  }

  if (*(v14 + 40) == 3)
  {
    v15 = 0;
    if ((fpfs_eviction_properties() & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 1;
  }

  v26 = 0;
  if ((fpfs_get_purgeable_info() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v26 && v26 != *(*(a4 + 16) + 160))
  {
    *a3 |= 0x40000000000000uLL;
  }

  *a3 |= 0x20000000000uLL;
  if (*(a4 + 3) == 1)
  {
    *a3 |= 0x100000000uLL;
  }

  if (*(a4 + 4) == 1)
  {
    *a3 |= 0x400000000uLL;
  }

  v16 = *(a4 + 16);
  if ((*(v16 + 44) & 0x80) != 0 && *(v16 + 240) != 0x8000)
  {
    *a3 |= 0x80000000000000uLL;
  }

  v17 = *(v16 + 96);
  if (v17)
  {
    v18 = *(v16 + 240);
    if (v18 == 2048 || v18 == 1024)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v17];
      v20 = [MEMORY[0x1E695DF00] now];
      [v20 timeIntervalSinceDate:v19];
      v22 = v21;

      if (v22 >= 7776000.0)
      {
        *a3 |= 0x100000000000000uLL;
      }
    }
  }

  if ((fpck_validate_decmpfs_xattr(fd, a4, a3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_42:
  if (!v9 && (v15 & 1) == 0 && (fgetxattr(fd, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0)
  {
    *a3 |= 8uLL;
  }

  if ((*(*(a4 + 24) + 4) & 0xF000) == 0x4000 && *(a4 + 4) == 1)
  {
    v23 = *(*(a4 + 16) + 44);
    if (*(a4 + 5) == 1)
    {
      if ((v23 & 0x100) != 0)
      {
        v24 = 0x1000000000;
LABEL_57:
        result = 0;
        *a3 |= v24;
        return result;
      }
    }

    else if (*(a4 + 3) == 1)
    {
      if ((v23 & 0x100) != 0)
      {
        v24 = 0x800000000;
        goto LABEL_57;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      v24 = 0x200000000;
      goto LABEL_57;
    }
  }

  return 0;
}

void sub_1CF17823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkContent(int a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  bzero(__buf, 0x400uLL);
  bzero(&__s2, 0x400uLL);
  v7 = *(a4 + 24);
  if ((*(v7 + 116) & 0x40000020) == 0 && (*(v7 + 4) & 0xF000) == 0x8000)
  {
    if (lseek(a1, 0, 4))
    {
      lseek(a1, 0, 0);
    }

    else
    {
      v24 = pread(a1, __buf, 0x400uLL, 0);
      if (v24 < 0)
      {
        if (*__error() != 1 || *(*(a4 + 16) + 208) > 2u)
        {
          v22 = 0xFFFFFFFFLL;
          goto LABEL_25;
        }
      }

      else if (v24 && !memcmp(__buf, &__s2, v24))
      {
        *a3 |= 0x80uLL;
      }
    }
  }

  v8 = v6;
  v9 = [v8 pathExtension];
  v10 = [v9 lowercaseString];

  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"wal", @"download", 0}];
  if ([v10 length])
  {
    v31 = 0u;
    v32 = 0u;
    __s2 = 0u;
    v30 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&__s2 objects:__buf count:16];
    if (v13)
    {
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if ([v10 containsString:*(*(&__s2 + 1) + 8 * i)])
          {

            goto LABEL_24;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&__s2 objects:__buf count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if ((*(*(a4 + 24) + 116) & 0x40000020) == 0)
    {
      v34 = *MEMORY[0x1E6982F40];
      v35[0] = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:@"com.apple.icloud-file-fault"];
      v16 = *(a4 + 24);
      v17 = *(v16 + 4) & 0xF000;
      if (v17 == 0x4000)
      {
        if (!*(*(a4 + 16) + 144))
        {
          v25 = *a3;
          if (*(a4 + 5))
          {
            v26 = v25 | 0x200000;
          }

          else
          {
            v26 = v25 | 0x400000;
          }

          *a3 = v26;
        }
      }

      else if (v17 == 0x8000 && *(v16 + 96) <= 0)
      {
        v18 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982E48]];
        if (v18)
        {
          v19 = &v34;
          v20 = 1;
          while (1)
          {
            v21 = v20;
            if ([v18 conformsToType:*v19])
            {
              break;
            }

            v20 = 0;
            v19 = v35;
            if ((v21 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *a3 |= 0x100000uLL;
        }
      }

      for (j = 1; j != -1; --j)
      {
      }
    }
  }

LABEL_24:

  v22 = 0;
LABEL_25:

  return v22;
}

uint64_t checkPermissions(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 16);
  if (v5 != getuid())
  {
    v6 = 0x40000;
    if (!v5)
    {
      v6 = 0x20000;
    }

    *a2 |= v6;
  }

  v7 = *(*(a3 + 16) + 208);
  v8 = v7 > 4;
  v9 = (1 << v7) & 0x19;
  if (v8 || v9 == 0)
  {
    *a2 |= 0x800000uLL;
  }

  return 0;
}

uint64_t checkSideFault(const char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(*(a4 + 24) + 4) & 0xF000) != 0x8000)
  {
    return 0;
  }

  bzero(v7, 0x2FEuLL);
  if (!basename_r(a1, v7))
  {
    return 0xFFFFFFFFLL;
  }

  result = _CFURLCStringIsPromiseName();
  if (result)
  {
    result = 0;
    *a3 |= 0x80000uLL;
  }

  return result;
}

uint64_t checkDetachedRoot(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((*(v2 + 45) & 0x40) != 0)
  {
    if ((*(a2 + 7) & 1) == 0)
    {
      *a1 |= 0x400000000000uLL;
    }

    if (*(a2 + 1) == 1)
    {
      *a1 |= 0x800000000000uLL;
    }

    if (*(a2 + 8) == 1)
    {
      *a1 |= 0x1000000000000uLL;
    }

    if (*(a2 + 9) == 1)
    {
      *a1 |= 0x2000000000000uLL;
    }

    if ((*(v2 + 45) & 1) == 0)
    {
      *a1 |= 0x4000000000000uLL;
    }
  }

  return 0;
}

uint64_t checkMetadata(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
  if ((*(v6 + 4) & 0xF000) == 0x8000 && *(v6 + 6) >= 2u)
  {
    *a2 |= 0x4000000000uLL;
  }

  if (fpfs_is_busy_date())
  {
    *a2 |= 0x8000000000000uLL;
  }

  v7 = fgetxattr(v5, "com.apple.metadata:_kMDItemUserTags", 0, 0, 0, 0);
  if (v7 < 0)
  {
    if (*__error() == 93)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v7)
    {
      v11 = 0;
      *a2 |= 0x100uLL;
      goto LABEL_18;
    }

    v8 = malloc_type_malloc(v7, 0xEDA52B46uLL);
    if (v8)
    {
      v9 = v8;
      v10 = fpfs_fgetxattr_checked();
      if ((v10 & 0x8000000000000000) == 0)
      {
        v20.st_ino = v10;
        *&v20.st_dev = v9;
        value[0] = 0uLL;
        *&v20.st_uid = fpfs_get_finder_info() < 0;
        if ((fpfs_deserialize_tags() & 0x80000000) != 0)
        {
          *a2 |= 0x100uLL;
        }

        free(v9);
        goto LABEL_14;
      }

      free(v9);
    }
  }

  v11 = 0xFFFFFFFFLL;
LABEL_18:
  *&v20.st_dev = 0uLL;
  if (fgetxattr(v5, "com.apple.lastuseddate#PS", &v20, 0x10uLL, 0, 0) < 0)
  {
    if (*__error() == 93)
    {
      v11 = v11;
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    value[0] = 0uLL;
    if ((fpfs_deserialize_last_use_date() & 0x80000000) != 0)
    {
      *a2 |= 0x200uLL;
    }
  }

  memset(value, 0, sizeof(value));
  v12 = fgetxattr(v5, "com.apple.metadata:kMDItemFavoriteRank", value, 0x80uLL, 0, 0);
  if (v12 < 0)
  {
    if (*__error() != 93)
    {
      v11 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    if (fgetxattr(v5, "com.apple.favorite-rank.number#PS", 0, 0, 0, 0) < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!v12 || (*&v20.st_dev = 0, (fpfs_deserialize_favorite_rank() & 0x80000000) != 0))
    {
      *a2 |= 0x400uLL;
    }

    if (fgetxattr(v5, "com.apple.favorite-rank.number#PS", 0, 0, 0, 0) < 0)
    {
      goto LABEL_33;
    }
  }

  *a2 |= 0x80000000000uLL;
LABEL_33:
  memset(&v20, 0, sizeof(v20));
  if ((fstat(v5, &v20) & 0x80000000) == 0 && (v20.st_mode & 0xF000) != 0x4000)
  {
    *a2 |= 0x100000000000uLL;
  }

LABEL_37:
  v13 = fgetxattr(v5, "com.apple.fileprovider.before-bounce#PX", 0, 0, 0, 0);
  if (v13 < 0)
  {
    goto LABEL_47;
  }

  v14 = v13;
  if (!v13)
  {
    *a2 |= 0x200000000000uLL;
    goto LABEL_47;
  }

  v15 = malloc_type_malloc(v13 + 1, 0xC69BD107uLL);
  if (!v15)
  {
    goto LABEL_46;
  }

  v16 = v15;
  if (fgetxattr(v5, "com.apple.fileprovider.before-bounce#PX", v15, v14, 0, 0) != v14)
  {
    free(v16);
LABEL_46:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v16[v14] = 0;
  if (!*v16)
  {
    *a2 |= 0x200000000000uLL;
  }

  free(v16);
LABEL_47:
  if (*(*(a3 + 16) + 40) == 2)
  {
    if (fgetxattr(v5, "com.apple.icon.folder#S", 0, 0, 0, 0) < 0)
    {
      v18 = *__error() != 93;
    }

    else
    {
      *&v20.st_dev = 0uLL;
      finder_info = fpfs_get_finder_info();
      v18 = finder_info >> 31;
      if ((finder_info & 0x80000000) == 0 && (v20.st_dev & 0x10) == 0)
      {
        *a2 |= 0x200000000000000uLL;
      }
    }

    if (v18)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v11;
    }
  }

  return v11;
}

uint64_t checkDocumentTracking(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 10))
  {
    return 0;
  }

  v6 = *(*(a3 + 24) + 116);
  if ((fpfs_should_be_tracked_internal() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v6 & 0x40) == 0)
  {
    return 0;
  }

  *a2 |= 0x800uLL;
  v7 = *(a3 + 16);
  if (*(v7 + 16))
  {
    v8 = GSLibraryResolveDocumentId2();
    if (v8)
    {
      if (v8 == *v7)
      {
        return 0;
      }

      v9 = 0x10000;
    }

    else
    {
      v10 = *__error();
      if ((v10 - 16) <= 0x36 && ((1 << (v10 - 16)) & 0x40000000080001) != 0)
      {
        v9 = 0x8000;
      }

      else
      {
        if (v10 != 2)
        {
          return 0;
        }

        v9 = 0x4000;
      }
    }
  }

  else
  {
    v9 = 0x2000;
  }

  result = 0;
  *a2 |= v9;
  return result;
}

uint64_t checkInvariants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 6) == 1 && (*(*(a4 + 16) + 45) & 1) != 0 && ((fpfs_fget_parent_syncroot() & 0x80000000) != 0 || (fpfs_pkg_is_demoted() & 0x80000000) != 0))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1 + 104];
  v9 = checkContent(a2, v8, a3, a4);

  if (v9 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  checkPermissions(v10, a3, a4);
  checkDetachedRoot(a3, a4);
  if (*(a4 + 1) == 1)
  {
    if (*a4 == 1)
    {
      v11 = *(a4 + 16);
      v12 = *(v11 + 44);
      if (v12)
      {
        *a3 |= 0x20000000uLL;
        v12 = *(v11 + 44);
      }

      if ((v12 & 0x20) != 0)
      {
        result = 0;
        *a3 |= 0x40000000uLL;
        return result;
      }
    }

    return 0;
  }

  if ((*(*(a4 + 24) + 4) & 0xF000) == 0x4000)
  {
    if ((fpfs_pkg_is_promoted() & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (fpfs_filename_contains_ext())
    {
      if ((fpfs_pkg_system_lookup() & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if ((fpfs_get_finder_info_buffer() & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    fpfs_finder_info_deserialize();
  }

  if ((checkFault(a2, 0, a3, a4) & 0x80000000) == 0 && (*a4 != 1 || (checkSideFault((a1 + 104), v15, a3, a4) & 0x80000000) == 0 && (checkMetadata(a2, a3, a4) & 0x80000000) == 0 && ((*(a3 + 6) & 8) != 0 || (checkDocumentTracking(a2, a3, a4) & 0x80000000) == 0)))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpck_validate_decmpfs_xattr(uint64_t a1, uint64_t a2, void *a3)
{
  if (!(*(*(a2 + 24) + 116) & 0x40000000 | *(*(a2 + 16) + 44) & 0x20))
  {
    return 0;
  }

  if ((fpfs_fget_decmpf_info() & 0x80000000) != 0 && *__error() != 93 && *__error() != 34)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 |= 2uLL;
  return result;
}

uint64_t ___is_empty_directory_block_invoke(uint64_t a1, uint64_t a2)
{
  result = strcasecmp((a2 + 21), ".Trash");
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return 1;
  }

  return result;
}

char *wharf_step_file_system_representation(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E83C1C70[a1];
  }
}

uint64_t fpfs_wharf_open(uint64_t a1, const char *a2, const char *a3)
{
  *(a1 + 12) = 0x3FFFFFFFFLL;
  if ((asprintf(a1, "%s/wharf", a2) & 0x80000000) == 0 && ((mkdir(*a1, 0x1EDu) & 0x80000000) == 0 || *__error() == 17))
  {
    v5 = open(*a1, 33028);
    *(a1 + 12) = v5;
    if ((v5 & 0x80000000) == 0)
    {
      memset(&v15, 0, sizeof(v15));
      if ((fstat(v5, &v15) & 0x80000000) == 0)
      {
        v6 = 0;
        *(a1 + 8) = v15.st_dev;
        while (1)
        {
          if (v6 > 1)
          {
            if (v6 == 3)
            {
              v7 = "oldVersions";
            }

            else
            {
              v7 = "delete";
            }
          }

          else
          {
            v7 = "ingest";
            if (v6)
            {
              v16.st_dev = 0;
              if (fpfs_num_entries_at())
              {
                v8 = 1;
              }

              else
              {
                v8 = v16.st_dev == 0;
              }

              if (!v8)
              {
                fpfs_wharf_delete_item_at(a1, *(a1 + 12), "propagate");
              }

              v7 = "propagate";
            }
          }

          if (mkdirat(*(a1 + 12), v7, 0x1EDu) < 0 && *__error() != 17)
          {
            goto LABEL_30;
          }

          v9 = openat(*(a1 + 12), v7, 33028);
          if (v9 < 0)
          {
            goto LABEL_30;
          }

          v10 = v9;
          if (*(a1 + 16))
          {
            fcntl(v9, 64, *(a1 + 16));
          }

          memset(&v16, 0, sizeof(v16));
          if (fstat(v10, &v16) < 0)
          {
            break;
          }

          close(v10);
          if (*(a1 + 8) != v16.st_dev)
          {
            v13 = 18;
            goto LABEL_29;
          }

          *(a1 + 8 * v6++ + 24) = v16.st_ino;
          if (v6 == 4)
          {
            v11 = strdup(a3);
            result = 0;
            *(a1 + 56) = v11;
            return result;
          }
        }

        v13 = *__error();
        close(v10);
LABEL_29:
        *__error() = v13;
      }

LABEL_30:
      v14 = *__error();
      close(*(a1 + 12));
      *(a1 + 12) = -1;
      *__error() = v14;
    }

    free(*a1);
    *a1 = 0;
  }

  return 0xFFFFFFFFLL;
}

void fpfs_wharf_close(uint64_t a1)
{
  close(*(a1 + 12));
  *(a1 + 12) = -1;
  free(*a1);
  free(*(a1 + 56));
  *a1 = 0;
}

uint64_t fpfs_wharf_cleanup_item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((fpfs_fchflags() & 0x80000000) != 0)
  {
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      fpfs_wharf_cleanup_item_cold_5();
    }
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    if (fstat(v3, &v10) < 0)
    {
      v6 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_4();
      }
    }

    else if ((v10.st_mode & 0x1FF | 0x180) != (v10.st_mode & 0x1FF) && fchmod(v3, v10.st_mode & 0x7F | 0x180) < 0)
    {
      v9 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_1();
      }
    }

    else if ((fpfs_clear_acl() & 0x80000000) != 0)
    {
      v7 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_3();
      }
    }

    else
    {
      if ((fpfs_delete_xattrs() & 0x80000000) == 0)
      {
        return 0;
      }

      v8 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_2();
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_wharf_fcopyfileat(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = a2;
  if (a3 == 2)
  {
    return fpfs_fchdir();
  }

  v7 = *(a1 + 12);

  return fclonefileat(v5, v7, a4, 0);
}

uint64_t __fpfs_wharf_fcopyfileat_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  if (snprintf(__str, 0x400uLL, "%s/%s", **(a1 + 32), *(a1 + 40)) < 1024)
  {
    src = 0;
    v3 = copyfile_state_alloc();
    copyfile_state_set(v3, 6u, fpfs_wharf_fcopyfileat_status_cb);
    copyfile_state_set(v3, 7u, &src);
    v2 = copyfile(".", __str, v3, 0x10C8000u);
    copyfile_state_free(v3);
    if ((v2 & 0x80000000) != 0)
    {
      v4 = src;
      if (src)
      {
        *__error() = v4;
      }
    }
  }

  else
  {
    *__error() = 63;
    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t fpfs_wharf_fcopyfileat_status_cb(int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, int *a6)
{
  result = 0;
  if (a1 == 1 && a2 == 3)
  {
    v18 = v6;
    v19 = v7;
    v12 = *__error();
    memset(&v17, 0, sizeof(v17));
    if ((lstat(a4, &v17) & 0x80000000) == 0)
    {
      v13 = v17.st_mode & 0xF000;
      if (v13 != 0x4000)
      {
        if (v13 == 0x8000)
        {
          if ((v17.st_flags & 0x20) != 0 && v12 == 9)
          {
            v15 = fpfs_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              fpfs_wharf_fcopyfileat_status_cb_cold_2(v15);
            }

            return 1;
          }
        }

        else if (v13 != 40960)
        {
          v14 = fpfs_current_or_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            fpfs_wharf_fcopyfileat_status_cb_cold_3(v14);
          }

          return 1;
        }
      }
    }

    v16 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      fpfs_wharf_fcopyfileat_status_cb_cold_1(v16);
    }

    *a6 = *__error();
    return 2;
  }

  return result;
}

uint64_t fpfs_wharf_mark_ingest_purgeable(uint64_t a1, uint64_t a2)
{
  v4 = _fpfs_wharf_mark_ingest_purgeable(a1, 0, a2);
  if (_fpfs_wharf_mark_ingest_purgeable(a1, 3u, a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t _fpfs_wharf_mark_ingest_purgeable(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E83C1C70[a2];
  }

  v25 = openat(*(a1 + 12), v5, 1048832);
  if (v25 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = malloc_type_malloc(0x8000uLL, 0x57B3AD82uLL);
  if (!v6)
  {
    close(v25);
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v27 = 0x20000000000;
  v26 = xmmword_1CF9F4DFC;
  v8 = getattrlistbulk(v25, &v26, v6, 0x8000uLL, 0x28uLL);
  if (v8 < 0)
  {
LABEL_24:
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v24 = v5;
    while (v9)
    {
      v10 = 0;
      do
      {
        v11 = &v7[v10];
        v12 = *&v7[v10];
        if ((~*&v7[v10 + 4] & 0x801) == 0 && (a2 == 3 || *(v11 + 4) <= a3) && ((v11[21] & 2) == 0 || (v11[48] & 8) == 0))
        {
          v14 = *(v11 + 6);
          v13 = v11 + 24;
          v15 = &v13[v14];
          if (!v13[v14 + (*(v13 + 1) - 1)])
          {
            v16 = fpfs_set_purgeable_non_evictable_at();
            v17 = fpfs_current_or_default_log();
            v18 = v17;
            if (v16 < 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v19 = *__error();
                *buf = 136315650;
                v29 = v24;
                v30 = 2082;
                v31 = v15;
                v32 = 1024;
                v33 = v19;
                _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "Failed to mark wharf/%s item %{public}s as purgeable: %{errno}d", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v29 = v24;
              v30 = 2082;
              v31 = v15;
              _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_INFO, "Marked wharf/%s item %{public}s as purgeable", buf, 0x16u);
            }
          }
        }

        v10 += v12;
        --v9;
      }

      while (v9);
      v26 = xmmword_1CF9F4DFC;
      v27 = 0x20000000000;
      v20 = getattrlistbulk(v25, &v26, v7, 0x8000uLL, 0x28uLL);
      v9 = v20;
      if (v20 < 0)
      {
        goto LABEL_24;
      }
    }

    v21 = 0;
  }

  free(v7);
  v22 = *__error();
  close(v25);
  *__error() = v22;
  return v21;
}

uint64_t fpfs_wharf_create(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5, int a6, void *a7, uint64_t a8)
{
  v73 = *MEMORY[0x1E69E9840];
  memset(v72, 0, sizeof(v72));
  v71 = 0u;
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
  *__str = 0u;
  if (a6)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3[11];
  v33 = a3[10];
  v34 = v12;
  v13 = a3[13];
  v35 = a3[12];
  v36 = v13;
  v14 = a3[7];
  v29 = a3[6];
  v30 = v14;
  v15 = a3[9];
  v31 = a3[8];
  v32 = v15;
  v16 = a3[3];
  v25 = a3[2];
  v26 = v16;
  v17 = a3[5];
  v27 = a3[4];
  v28 = v17;
  v18 = a3[1];
  v23 = *a3;
  v24 = v18;
  WORD4(v23) = 511;
  DWORD1(v23) &= ~0x100u;
  if (a2)
  {
    snprintf(__str, 0xFFuLL, "%s/%llu", "propagate", a2);
  }

  else
  {
    strcpy(__str, "propagate/");
    memset(uu, 0, sizeof(uu));
    MEMORY[0x1D386CFF0](uu);
    uuid_unparse(uu, (__str | 0xA));
  }

  fpfs_wharf_delete_item_at(a1, *(a1 + 12), __str);
  if (*(a3 + 1))
  {
    if ((fpfs_create_dataless_fault_at() & 0x80000000) == 0 || *__error() == 17)
    {
      return fpfs_openat();
    }

    return 0xFFFFFFFFLL;
  }

  if (*a3 == 2)
  {
    return fpfs_openat();
  }

  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *uu = 0u;
  build_item_name(v11, a2, uu);
  memset(&v22, 0, sizeof(v22));
  if (fstatat(*(a1 + 12), uu, &v22, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v22.st_mode & 0xF000;
  if (*a3 != 4)
  {
    if (v20 == 40960)
    {
      v21 = 79;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v20 == 40960)
  {
LABEL_21:
    if (v20 == 0x4000)
    {
      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __fpfs_wharf_copyfileat_block_invoke;
      v40 = &__block_descriptor_48_e5_i8__0l;
      v41 = uu;
      v42 = __str;
      if ((fpfs_fchdir() & 0x80000000) == 0)
      {
        return fpfs_openat();
      }
    }

    else if ((clonefileat(*(a1 + 12), uu, *(a1 + 12), __str, 1u) & 0x80000000) == 0)
    {
      return fpfs_openat();
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 2) > 1024)
  {
    v21 = 63;
LABEL_20:
    *__error() = v21;
    return 0xFFFFFFFFLL;
  }

  result = fpfs_openat();
  if ((result & 0x80000000) == 0)
  {
    return fpfs_openat();
  }

  return result;
}

uint64_t build_item_name(unsigned int a1, uint64_t a2, char *__str)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E83C1C70[a1];
  }

  return snprintf(__str, 0xFFuLL, "%s/%llu", v3, a2);
}

uint64_t fpfs_wharf_delete_item_at(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v10 = 0;
  MEMORY[0x1D386CFF0](uu);
  v8[0] = *"delete/";
  memset(&v8[1], 0, 239);
  v6 = strlen(v8);
  uuid_unparse(uu, v8 + v6);
  return MEMORY[0x1D386BA20](a2, a3, *(a1 + 12), v8, 0);
}

uint64_t __fpfs_wharf_create_block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(v6, 0x401uLL);
  *__error() = 0;
  v4 = read(a2, v6, *(*(a1 + 32) + 16));
  if (v4 == *(*(a1 + 32) + 16))
  {
    v6[v4] = 0;
    return symlinkat(v6, *(*(a1 + 40) + 12), *(a1 + 48));
  }

  else
  {
    if (!*__error())
    {
      *__error() = 22;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t __fpfs_wharf_create_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  memset(&v7, 0, sizeof(v7));
  if (fstat(a2, &v7) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  snprintf(__str, 0xFFuLL, "%s/%llu", "propagate", v7.st_ino);
  v3 = *(*(a1 + 40) + 12);
  if ((MEMORY[0x1D386BA20](v3, *(a1 + 48), v3, __str, 0) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (**(a1 + 56) == 2 && ((fpfs_filename_contains_ext() & 1) != 0 || fpfs_path_is_safe_save_temp_filename()) && (fpfs_pkg_demote() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  LOBYTE(v7.st_dev) = *(a1 + 80);
  st_dev = v7.st_dev;
  v5 = **(a1 + 56);
  if (LOBYTE(v7.st_dev) == 1)
  {
    if (v5 == 3)
    {
      LOBYTE(v7.st_dev) = 1;
    }

    else
    {
      if ((fpfs_should_be_tracked() & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v7.st_dev & 1) == 0)
      {
        return fpfs_fgethandle();
      }
    }
  }

  else
  {
    if (v5 == 3)
    {
      fpfs_pkg_enable_dirstat();
    }

    if ((st_dev & 1) == 0)
    {
      return fpfs_fgethandle();
    }
  }

  if ((fpfs_track_document() & 0x80000000) == 0)
  {
    return fpfs_fgethandle();
  }

  return 0xFFFFFFFFLL;
}

uint64_t __fpfs_wharf_create_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 1) == 0 && *(a2 + 16))
  {
    fpfs_untrack_document();
    *(a2 + 16) = 0;
  }

  memset(&v5, 0, sizeof(v5));
  if (fstat(*(a1 + 40), &v5) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, (v5.st_mode & 0xF000) == 0x4000);
  }
}

uint64_t fpfs_wharf_resurrect(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v13 = *MEMORY[0x1E69E9840];
  v9 = malloc_type_calloc(0x306uLL, 1uLL, 0x5D4C4514uLL);
  if (fgetxattr(v8, "com.apple.fileprovider.resurrection_info", v9, 0x306uLL, 0, 0) > 9)
  {
    *(v9 + 773) = 0;
    if ((fpfs_unset_dataless_cmpfs_attrs() & 0x80000000) == 0)
    {
      bzero(v12, 0x2FEuLL);
      basename_r(v9 + 8, v12);
      if ((fpfs_openbyid() & 0x80000000) == 0)
      {
        free(v9);
        return 0;
      }

      if (a6)
      {
        v11 = fpfs_openbyid();
        free(v9);
        return (v11 >> 31);
      }
    }
  }

  else
  {
    *__error() = 22;
    *__error() = 93;
  }

  free(v9);
  return 0xFFFFFFFFLL;
}

uint64_t __fpfs_wharf_resurrect_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ((fpfs_fget_parent_syncroot() & 0x80000000) != 0)
  {
LABEL_8:
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    while (v14[3])
    {
      if ((*(v4 + 16))(v4))
      {
        _Block_object_dispose(&v13, 8);
        return fpfs_wharf_resurrect_bounce(*(a1 + 48), *(a1 + 56), *(a1 + 64), a2, *(a1 + 72));
      }

      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __fpfs_wharf_parent_dir_in_domain_block_invoke;
      v11 = &unk_1E83C1C30;
      v12 = &v13;
      fpfs_openbyid();
    }

    memset(&v7, 0, sizeof(v7));
    if (fstat(a2, &v7) < 0)
    {
      goto LABEL_8;
    }

    v5 = (*(v4 + 16))(v4, v7.st_ino);
    _Block_object_dispose(&v13, 8);
    if (v5)
    {
      return fpfs_wharf_resurrect_bounce(*(a1 + 48), *(a1 + 56), *(a1 + 64), a2, *(a1 + 72));
    }
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t fpfs_wharf_resurrect_bounce(char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v10 = 2;
  while (MEMORY[0x1D386BA20](a5, a2, a4, a1, 4))
  {
    if (*__error() != 17)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = fpfs_extension_in_filename();
    if (v11)
    {
      v12 = v11;
      v13 = v11 - a3;
      v14 = ".";
    }

    else
    {
      v13 = strlen(a3);
      v12 = "";
      v14 = "";
    }

    if (snprintf(a1, 0x2FEuLL, "%*s %d%s%s", v13, a3, v10, v14, v12) >= 766)
    {
      *__error() = 63;
    }

    if (++v10 == 99)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }
  }

  return fpfs_openat();
}

uint64_t __fpfs_wharf_delete_resurrectable_at_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 != 1)
  {
    if ((v3 & 0xFFFFFFFE) == 2)
    {
      return fpfs_wharf_delete_item_at(*(a1 + 40), *(a1 + 80), *(a1 + 48));
    }

    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  if (*(a2 + 144) > 1u || (*(a2 + 44) & 0x40) != 0 || (fpfs_openat() & 0x80000000) != 0)
  {
    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  if (!fpfs_item_handle_gencmp())
  {
    return fpfs_wharf_delete_item_at(*(a1 + 40), *(a1 + 80), *(a1 + 48));
  }

  if ((*(a2 + 45) & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return fpfs_wharf_resurrect(*(a1 + 40), *(a1 + 84), *(a1 + 80), *(a1 + 48), a2, *(a1 + 72), *(a1 + 32));
  }
}

uint64_t fpfs_wharf_delete_wharfed_item(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, 255);
  build_item_name(a2, a3, v5);
  return fpfs_wharf_delete_item_at(a1, *(a1 + 12), v5);
}

uint64_t __fpfs_wharf_gc_deleted_items_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v4, 0, sizeof(v4));
  if ((fstatat(a2, (a3 + 21), &v4, 32) & 0x80000000) == 0)
  {
    fpfs_recursive_unlinkat();
  }

  return 0;
}

uint64_t __fpfs_wharf_inject_old_content_to_id_block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s/%llu", "oldVersions", *(a1 + 40));
  memset(&v4, 0, sizeof(v4));
  if (fstatat(*(*(a1 + 48) + 12), __str, &v4, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return fpfs_openat();
  }
}

uint64_t __fpfs_wharf_inject_old_content_to_id_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == *(a1 + 48))
  {
    return fpfs_materialize();
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t fpfs_wharf_get_eviction_urgency(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  build_item_name(a3, a2, __str);
  memset(&v6, 0, sizeof(v6));
  if (fstatat(*(a1 + 12), __str, &v6, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return fpfs_openat();
  }
}

uint64_t fpfs_wharf_get_last_used_date(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  build_item_name(a3, a2, __str);
  memset(&v6, 0, sizeof(v6));
  if (fstatat(*(a1 + 12), __str, &v6, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return fpfs_openat();
  }
}

uint64_t fpfs_wharf_delete_old_version_captured_content(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s/%llu", "oldVersions", a2);
  return unlinkat(*(a1 + 12), __str, 0);
}

uint64_t __fpfs_wharf_copyfileat_block_invoke(uint64_t a1)
{
  src = 0;
  v2 = copyfile_state_alloc();
  copyfile_state_set(v2, 6u, fpfs_wharf_fcopyfileat_status_cb);
  copyfile_state_set(v2, 7u, &src);
  v3 = copyfile(*(a1 + 32), *(a1 + 40), v2, 0x10C8000u);
  copyfile_state_free(v2);
  if ((v3 & 0x80000000) != 0)
  {
    v4 = src;
    if (src)
    {
      *__error() = v4;
    }
  }

  return v3;
}

uint64_t __fpfs_wharf_resurrect_bounce_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((fpfs_set_resurrected() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  return fpfs_make_fsevent();
}

uint64_t __fpfs_wharf_item_preserve_at_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 44))
  {

    return ftruncate(a2, 0);
  }

  else
  {
    v4 = *(a1 + 40);
    bzero(__s, 0x2FEuLL);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = (v2 + 272);
    }

    basename_r(v5, __s);
    v6 = strlen(__s);
    v7 = malloc_type_calloc(v6 + 9, 1uLL, 0x942DB0E3uLL);
    strlcpy(v7 + 8, __s, v6 + 1);
    memset(&v9, 0, sizeof(v9));
    bzero(v10, 0x400uLL);
    v8 = dirname_r(v5, v10);
    if (lstat(v8, &v9) < 0 || (*v7 = v9.st_ino, (fpfs_set_dataless_cmpfs_attrs() & 0x80000000) != 0) || (fpfs_fsetxattr() & 0x80000000) != 0)
    {
      free(v7);
      return 0xFFFFFFFFLL;
    }

    else
    {
      free(v7);
      return 0;
    }
  }
}

void sub_1CF183E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF184148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void __indexingScheduler_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:@"com.apple.fileprovider.indexing"];
  [v2 setPriority:2];
  [v2 setScheduleAfter:0.0];
  [v2 setTrySchedulingBefore:60.0];
  [v2 setRequiresProtectionClass:1];
  v0 = [[FPDSharedSystemScheduler alloc] initWithTaskRequest:v2 options:0];
  v1 = indexingScheduler_scheduler;
  indexingScheduler_scheduler = v0;
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1CF185320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF18636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 120));
  _Unwind_Resume(a1);
}

void sub_1CF187064(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 80));
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF18733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  objc_sync_exit(v12);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF187658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF188598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF189010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = v8[4];
  if (v10 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = 0;
  v12 = v8[3];
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = -1;
    v15 = v11;
    while (1)
    {
      if (v15 + 64) <= 0x7F && ((v12 >> v15))
      {
        if (v14 < 0)
        {
          v16 = v15 * *v8;
          if ((v15 * *v8) >> 64 != v16 >> 63)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v16 <= v8[2])
          {
            v14 = v8[2];
          }

          else
          {
            v14 = v15 * *v8;
          }
        }

        goto LABEL_5;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_5:
      if (v10 == ++v15)
      {
        if (v14 < 0)
        {
          return v13;
        }

        v22 = v10 * *v8;
        if ((v10 * *v8) >> 64 == v22 >> 63)
        {
          if (v22 >= v8[1])
          {
            v9 = v8[1];
          }

          else
          {
            v9 = v10 * *v8;
          }

          if (v9 >= v14)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_31:
              v24 = *v13->tree;
              v23 = *v13->tester;
              if (v24 >= v23 >> 1)
              {
                v13 = sub_1CF1F6594((v23 > 1), v24 + 1, 1, v13, a5, a6, a7, a8);
              }

              *v13->tree = v24 + 1;
              v25 = v13 + 16 * v24;
              *(v25 + 4) = v14;
              *(v25 + 5) = v9;
              return v13;
            }

LABEL_41:
            v13 = sub_1CF1F6594(0, *v13->tree + 1, 1, v13, a5, a6, a7, a8);
            goto LABEL_31;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v17 = v15 * *v8;
    if ((v15 * *v8) >> 64 != v17 >> 63)
    {
      goto LABEL_37;
    }

    if (v17 >= v8[1])
    {
      v18 = v8[1];
    }

    else
    {
      v18 = v15 * *v8;
    }

    if (v18 < v14)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1CF1F6594(0, *v13->tree + 1, 1, v13, a5, a6, a7, a8);
    }

    v20 = *v13->tree;
    v19 = *v13->tester;
    v9 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v13 = sub_1CF1F6594((v19 > 1), v20 + 1, 1, v13, a5, a6, a7, a8);
    }

    v11 = v15 + 1;
    *v13->tree = v9;
    v21 = v13 + 16 * v20;
    *(v21 + 4) = v14;
    *(v21 + 5) = v18;
  }

  while (v10 - 1 != v15);
  return v13;
}

uint64_t sub_1CF189218()
{
  v1 = 0x657A697362;
  v2 = *v0;
  v3 = 0x7472617473;
  v4 = 0x736B636F6C62;
  if (v2 != 3)
  {
    v4 = 0x746E756F6362;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x657A69736CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF189298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF18F830(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1892D8(uint64_t a1)
{
  v2 = sub_1CF192BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF189314(uint64_t a1)
{
  v2 = sub_1CF192BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF189350(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD650, &qword_1CF9FA008);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF192BE8();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E7EE8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1CF9E7EE8();
  v8[13] = 2;
  sub_1CF9E7EE8();
  v8[12] = 3;
  sub_1CF9E7F68();
  v8[11] = 4;
  sub_1CF9E7EE8();
  return (*(v4 + 8))(v6, v3);
}

double sub_1CF189530@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1CF18F9D0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1CF1895D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A470](v3);
  MEMORY[0x1D386A4A0](v4);
  MEMORY[0x1D386A470](v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189660()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1D386A470](*v0);
  MEMORY[0x1D386A470](v1);
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A4A0](v3);
  return MEMORY[0x1D386A470](v4);
}

uint64_t sub_1CF1896C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A470](v3);
  MEMORY[0x1D386A470](v4);
  MEMORY[0x1D386A4A0](v5);
  MEMORY[0x1D386A470](v6);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189750(void *a1, unint64_t a2)
{
  *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2C0, &qword_1CF9F7888);
  *&v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v30 - v4;
  *&v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2C8, &qword_1CF9F7890);
  *&v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2D0, &qword_1CF9F7898);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2D8, &qword_1CF9F78A0);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2E0, &qword_1CF9F78A8);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1906E4();
  sub_1CF9E82A8();
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (v16 == 2)
    {
      LOBYTE(v41) = 2;
      sub_1CF1907E0();
      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v38 = v21;
      v22 = v40;
      sub_1CF9E7E18();
      v41 = v38;
      v42 = v37;
      v43 = v20;
      sub_1CF190A20();
      v23 = v35;
      sub_1CF9E7F08();
      (*(v34 + 8))(v6, v23);
    }

    else
    {
      LOBYTE(v41) = 3;
      sub_1CF190738();
      v27 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v34 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = v27;
      v28 = v36;
      v22 = v40;
      sub_1CF9E7E18();
      v41 = v35;
      v42 = v34;
      v43 = v20;
      sub_1CF190A20();
      v29 = v38;
      sub_1CF9E7F08();
      (*(v37 + 8))(v28, v29);
    }
  }

  else
  {
    if (!v16)
    {
      v17 = *(a2 + 16);
      LOBYTE(v41) = 0;
      sub_1CF1908DC();
      v18 = v40;
      sub_1CF9E7E18();
      *&v41 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD230, &qword_1CF9F7880);
      sub_1CF190AC8(&qword_1EC4BD2F8, sub_1CF190B4C, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      sub_1CF9E7F08();
      (*(v31 + 8))(v12, v10);
      return (*(v39 + 8))(v15, v18);
    }

    v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v41) = 1;
    sub_1CF190834();
    v22 = v40;
    sub_1CF9E7E18();
    *&v41 = v24;
    *(&v41 + 1) = v25;
    sub_1CF190A74();
    v26 = v33;
    sub_1CF9E7F08();
    (*(v32 + 8))(v9, v26);
  }

  return (*(v39 + 8))(v15, v22);
}

uint64_t sub_1CF189D08(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (v3 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    MEMORY[0x1D386A470](v11);
    MEMORY[0x1D386A470](v6);
    MEMORY[0x1D386A470](v7);
    MEMORY[0x1D386A470](v8);
    MEMORY[0x1D386A4A0](v9);
    return MEMORY[0x1D386A470](v10);
  }

  else if (v3)
  {
    MEMORY[0x1D386A470](1);

    return sub_1CF9E5BA8();
  }

  else
  {
    v4 = *(a2 + 16);
    MEMORY[0x1D386A470](0);

    return sub_1CF18F54C(a1, v4);
  }
}

uint64_t sub_1CF189E20()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189E68(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189EAC()
{
  v1 = 0x726F746365726964;
  v2 = 0x7373656C61746164;
  if (*v0 != 2)
  {
    v2 = 0x657372617073;
  }

  if (*v0)
  {
    v1 = 1701603686;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF189F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF18FBEC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF189F48(uint64_t a1)
{
  v2 = sub_1CF1906E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF189F84(uint64_t a1)
{
  v2 = sub_1CF1906E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF189FE0(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x746E656469736572 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1CF9E8048();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1CF18A068(uint64_t a1)
{
  v2 = sub_1CF1907E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A0A4(uint64_t a1)
{
  v2 = sub_1CF1907E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF18A104(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x6E6572646C696863 && a2 == 0xEE00656D614E7942)
  {
    a2, 0xEE00656D614E7942, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1CF9E8048();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1CF18A194(uint64_t a1)
{
  v2 = sub_1CF1908DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A1D0(uint64_t a1)
{
  v2 = sub_1CF1908DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF18A224(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1CF9E8048();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1CF18A2AC(uint64_t a1)
{
  v2 = sub_1CF190834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A2E8(uint64_t a1)
{
  v2 = sub_1CF190834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF18A324()
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18A368(uint64_t a1)
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](0);
  return sub_1CF9E8228();
}

void sub_1CF18A3B8(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v20 = 0;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a3 = v20 & 1;
}

uint64_t sub_1CF18A440(uint64_t a1)
{
  v2 = sub_1CF190738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A47C(uint64_t a1)
{
  v2 = sub_1CF190738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF18A4B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF18FD54(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF18A50C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF189D08(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18A55C(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  sub_1CF189D08(v4, v2);
  return sub_1CF9E8228();
}

void sub_1CF18A5A0(unint64_t a1, int a2, void *a3, unint64_t a4)
{
  LODWORD(v207) = a2;
  v215 = *MEMORY[0x1E69E9840];
  v211 = sub_1CF9E6938();
  v8 = *(v211 - 1);
  MEMORY[0x1EEE9AC00](v211);
  v210 = (v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1CF9E5A58();
  v208 = *(v10 - 1);
  v209 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v203 - v14;
  v16 = sub_1CF9E5648();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v27 = v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 >> 62) - 2 >= 2)
  {
    if (a4 >> 62)
    {
      sub_1CF9E5A18();
      v75 = v74;
      v76 = sub_1CF9E6888();
      v75, v77, v78, v79, v80, v81, v82, v83;
      v84 = sub_1CF9E5B48();
      [a3 createFileAtPath:v76 contents:v84 attributes:0];

      return;
    }

    v206 = v18;
    v61 = *(a4 + 16);

    v62 = sub_1CF9E5928();
    v211 = a3;
    *&v212 = 0;
    v63 = [a3 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:&v212];

    if ((v63 & 1) == 0)
    {
      v123 = v212;
      v61, v124, v125, v126, v127, v128, v129, v130;
      sub_1CF9E57F8();

      swift_willThrow();
      return;
    }

    v210 = v61;
    v64 = v212;
    if (v207)
    {
      sub_1CF9E5638();
      sub_1CF9E5628();
      v66 = v208;
      v65 = v209;
      (*(v208 + 16))(v15, a1, v209);
      sub_1CF9E58F8();
      if (v4)
      {
        v210, v67, v68, v69, v70, v71, v72, v73;
        (*(v66 + 8))(v15, v65);
        (*(v17 + 8))(v27, v206);
        return;
      }

      (*(v66 + 8))(v15, v65);
      (*(v17 + 8))(v27, v206);
    }

    v138 = v210;
    v139 = 0;
    v141 = v210 + 2;
    isa = v210[2].super.isa;
    v142 = 1 << LOBYTE(v210[1].super.isa);
    v143 = -1;
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    v144 = v143 & isa;
    v145 = (v142 + 63) >> 6;
    v208 += 8;
    if ((v143 & isa) != 0)
    {
      while (1)
      {
        v146 = v139;
LABEL_48:
        v147 = __clz(__rbit64(v144)) | (v146 << 6);
        v148 = *(*v138[1].tree + 16 * v147 + 8);
        v149 = *(*v138[1].tester + 8 * v147);

        sub_1CF9E5968();
        v148, v150, v151, v152, v153, v154, v155, v156;
        sub_1CF18A5A0(v12, 0, v211, v149);
        if (v4)
        {
          break;
        }

        v144 &= v144 - 1;
        (*v208)(v12, v209);

        v139 = v146;
        v138 = v210;
        if (!v144)
        {
          goto LABEL_45;
        }
      }

      (*v208)(v12, v209);
    }

    else
    {
      while (1)
      {
LABEL_45:
        v146 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        if (v146 >= v145)
        {
          break;
        }

        v144 = *(&v141->super.isa + v146);
        ++v139;
        if (v144)
        {
          goto LABEL_48;
        }
      }
    }

    return;
  }

  v203[0] = a4;
  v28 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v29 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v213[0] = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v213[1] = v29;
  v214 = v28;
  v30 = sub_1CF189010(v18, v19, v20, v21, v22, v23, v24, v25);
  v31 = a1;
  sub_1CF9E5A18();
  v33 = v32;
  v34 = sub_1CF9E6888();
  v33, v35, v36, v37, v38, v39, v40, v41;
  [a3 createFileAtPath:v34 contents:0 attributes:0];

  v203[1] = v31;
  sub_1CF9E5A18();
  v43 = v42;
  v44 = sub_1CF9E6888();
  v43, v45, v46, v47, v48, v49, v50, v51;
  v52 = [objc_opt_self() fileHandleForWritingAtPath_];

  if (!v52)
  {
    *&v212 = 0;
    *(&v212 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v212 + 1), v184, v185, v186, v187, v188, v189, v190;
    *&v212 = 0xD000000000000020;
    *(&v212 + 1) = 0x80000001CFA2D8D0;
    v191 = sub_1CF9E5A18();
    v193 = v192;
    MEMORY[0x1D3868CC0](v191);
    v193, v194, v195, v196, v197, v198, v199, v200;
    LODWORD(v202) = 0;
    v183 = 261;
    goto LABEL_65;
  }

  MEMORY[0x1EEE9AC00](v53);
  v201 = v52;
  v202 = v213;
  sub_1CEFE1894(sub_1CF190BA0);
  if (v4)
  {

    v30, v54, v55, v56, v57, v58, v59, v60;
    return;
  }

  v208 = *v30->tree;
  v209 = v52;
  if (!v208)
  {
LABEL_36:

    v30, v116, v117, v118, v119, v120, v121, v122;
    return;
  }

  v85 = 0;
  v206 = v30;
  v207 = (v8 + 8);
  anon_8 = v30[1]._anon_8;
  while (1)
  {
    if (v85 >= *v30->tree)
    {
      goto LABEL_54;
    }

    v87 = *(anon_8 - 1);
    v88 = *anon_8 - v87;
    if (__OFSUB__(*anon_8, v87))
    {
      goto LABEL_55;
    }

    sub_1CF9E6B18();
    v90 = v89;
    v91 = v210;
    sub_1CF9E6928();
    v92 = sub_1CF9E68C8();
    v94 = v93;
    (*v207)(v91, v211);
    if (v94 >> 60 == 15)
    {
      goto LABEL_63;
    }

    v90, v95, v96, v97, v98, v99, v100, v101;
    v103 = v94 >> 62;
    if ((v94 >> 62) <= 1)
    {
      break;
    }

    if (v103 == 2)
    {
      v205 = 0;
      v104 = *(v92 + 16);
      v204 = *(v92 + 24);
      v105 = sub_1CF9E5498();
      if (v105)
      {
        v106 = sub_1CF9E54C8();
        if (__OFSUB__(v104, v106))
        {
          goto LABEL_59;
        }

        v105 += v104 - v106;
      }

      if (__OFSUB__(v204, v104))
      {
        goto LABEL_57;
      }

      v107 = sub_1CF9E54B8();
      if (!v105)
      {
        goto LABEL_62;
      }

      MEMORY[0x1EEE9AC00](v107);
      v203[-4] = v209;
      v203[-3] = v105;
      v201 = v88;
      v202 = v87;
      v108 = sub_1CF190BEC;
LABEL_31:
      v114 = v108;
      v115 = v205;
      goto LABEL_34;
    }

    *(&v212 + 6) = 0;
    *&v212 = 0;
    MEMORY[0x1EEE9AC00](v102);
    v203[-4] = v209;
    v203[-3] = &v212;
    v201 = v88;
    v202 = v87;
LABEL_33:
    v114 = sub_1CF193300;
    v115 = 0;
LABEL_34:
    sub_1CF5162A0(v114);
    if (v115)
    {

      v206, v131, v132, v133, v134, v135, v136, v137;
      sub_1CEFE48D8(v92, v94);
      return;
    }

    sub_1CEFE48D8(v92, v94);
    ++v85;
    anon_8 += 16;
    v30 = v206;
    if (v208 == v85)
    {
      goto LABEL_36;
    }
  }

  if (!v103)
  {
    *&v212 = v92;
    WORD4(v212) = v94;
    BYTE10(v212) = BYTE2(v94);
    BYTE11(v212) = BYTE3(v94);
    BYTE12(v212) = BYTE4(v94);
    BYTE13(v212) = BYTE5(v94);
    MEMORY[0x1EEE9AC00](v102);
    v203[-4] = v209;
    v203[-3] = &v212;
    v201 = v88;
    v202 = v87;
    goto LABEL_33;
  }

  v205 = 0;
  if (v92 > v92 >> 32)
  {
    goto LABEL_56;
  }

  v109 = sub_1CF9E5498();
  if (v109)
  {
    v110 = v109;
    v111 = sub_1CF9E54C8();
    if (__OFSUB__(v92, v111))
    {
      goto LABEL_58;
    }

    v112 = v92 - v111 + v110;
    v113 = sub_1CF9E54B8();
    if (!v112)
    {
      goto LABEL_61;
    }

    MEMORY[0x1EEE9AC00](v113);
    v203[-4] = v209;
    v203[-3] = v112;
    v201 = v88;
    v202 = v87;
    v108 = sub_1CF193300;
    goto LABEL_31;
  }

  sub_1CF9E54B8();
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  *&v212 = 0;
  *(&v212 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v212 + 1), v157, v158, v159, v160, v161, v162, v163;
  *&v212 = 0xD000000000000020;
  *(&v212 + 1) = 0x80000001CFA2D900;
  sub_1CF18B5CC(v203[0]);
  v165 = v164;
  MEMORY[0x1D3868CC0]();
  v165, v166, v167, v168, v169, v170, v171, v172;
  MEMORY[0x1D3868CC0](544497952, 0xE400000000000000);
  v173 = sub_1CF9E5A18();
  v175 = v174;
  MEMORY[0x1D3868CC0](v173);
  v175, v176, v177, v178, v179, v180, v181, v182;
  LODWORD(v202) = 0;
  v183 = 269;
LABEL_65:
  v201 = v183;
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF18B04C(unint64_t a1, char a2, unint64_t a3)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5D98();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = [objc_opt_self() defaultManager];
  if (a2)
  {
    v52 = v3;
    v53 = a3;
    v51 = a1;
    v17 = NSTemporaryDirectory();
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;

    sub_1CF9E58C8();
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27 = sub_1CF9E5D88();
    MEMORY[0x1D3867FB0](v27);
    v29 = v28;
    (*(v54 + 8))(v9, v55);
    sub_1CF9E5968();
    v29, v30, v31, v32, v33, v34, v35, v36;
    v37 = v56;
    (*(v56 + 40))(v15, v12, v10);
    v38 = sub_1CF9E5928();
    v57[0] = 0;
    LODWORD(v29) = [v16 removeItemAtURL:v38 error:v57];

    v55 = v10;
    if (v29)
    {
      v39 = v57[0];
      v41 = v52;
      v40 = v53;
    }

    else
    {
      v42 = v57[0];
      v43 = sub_1CF9E57F8();

      swift_willThrow();
      v41 = 0;
      v40 = v53;
    }

    sub_1CF18A5A0(v15, 1, v16, v40);
    if (v41)
    {
      v45 = sub_1CF9E5928();
      v57[0] = 0;
      v46 = [v16 removeItemAtURL:v45 error:v57];

      if (v46)
      {
        v47 = v57[0];
      }

      else
      {
        v49 = v57[0];
        v50 = sub_1CF9E57F8();

        swift_willThrow();
      }

      swift_willThrow();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v44);
      v48 = v51;
      *(&v51 - 2) = v15;
      *(&v51 - 1) = v48;
      sub_1CEFE1894(sub_1CF190C64);
    }

    (*(v37 + 8))(v15, v55);
  }

  else
  {
    sub_1CF18A5A0(a1, 1, v16, a3);
  }
}

uint64_t sub_1CF18B448@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_1CF9E5A18();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  sub_1CF9E5A18();
  v12 = v11;
  v13 = sub_1CF9E6978();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1CF9E6978();
  v12, v22, v23, v24, v25, v26, v27, v28;
  LODWORD(v12) = MEMORY[0x1D386BA20](4294967294, v13 + 32, 4294967294, v21 + 32, 4);

  *a2 = v12;
  return result;
}

void sub_1CF18B5CC(unint64_t a1)
{
  v2 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v16 = 0x73656C617461642ELL;
      v17 = 0xEA00000000002873;
    }

    else
    {
      v16 = 0x286573726170732ELL;
      v17 = 0xE800000000000000;
    }

    MEMORY[0x1D3868CC0](v16, v17);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  }

  else
  {
    if (!v3)
    {
      v4 = sub_1CF9E6648();
      v6 = v5;
      MEMORY[0x1D3868CC0](v4);
      v6, v7, v8, v9, v10, v11, v12, v13;
      v14 = 41;
      v15 = 0xE100000000000000;
LABEL_19:
      MEMORY[0x1D3868CC0](v14, v15);
      return;
    }

    v18 = a1 & 0x3FFFFFFFFFFFFFFFLL;
    v19 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *(v18 + 24);
    sub_1CEFE42D4(v19, v20);
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    sub_1CEFE4714(v19, v20);
    if (v23)
    {
      MEMORY[0x1D3868CC0](v21, v23);
      v23, v24, v25, v26, v27, v28, v29, v30;
      v14 = 10530;
      v15 = 0xE200000000000000;
      goto LABEL_19;
    }

    sub_1CF9E7948();
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    v38 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v38 != 2 || !__OFSUB__(*(v19 + 24), *(v19 + 16)))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v38)
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_18:
      v39 = sub_1CF9E7F98();
      v41 = v40;
      MEMORY[0x1D3868CC0](v39);
      v41, v42, v43, v44, v45, v46, v47, v48;
      v14 = 0x293E736574796220;
      v15 = 0xE800000000000000;
      goto LABEL_19;
    }

    __break(1u);
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CF18B8DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF18B8FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CF18BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF18BA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF18BC94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF18BCF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1CF18BD8C()
{
  result = qword_1EC4BCFA0;
  if (!qword_1EC4BCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BCFA0);
  }

  return result;
}

BOOL sub_1CF18BDE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1CF18BE0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF18BE40(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C8, type metadata accessor for NSFileProviderError, &unk_1CF9F63AC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF18BEAC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C8, type metadata accessor for NSFileProviderError, &unk_1CF9F63AC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF18BF18(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CF18BF84(uint64_t a1, id *a2)
{
  result = sub_1CF9E5B68();
  *a2 = 0;
  return result;
}

uint64_t sub_1CF18C014(uint64_t a1, id *a2)
{
  v3 = sub_1CF9E5B78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CF18C0B4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1CF9E5B88();
  v5 = v4;
  v6 = sub_1CF9E5B48();
  result = sub_1CEFE4714(v3, v5);
  *a2 = v6;
  return result;
}

BOOL sub_1CF18C100(void *a1, uint64_t *a2)
{
  v2 = sub_1CF9E5B88();
  v4 = v3;
  v5 = sub_1CF9E5B88();
  v7 = v6;
  v8 = sub_1CF328660(v2, v4, v5, v6);
  sub_1CEFE4714(v5, v7);
  sub_1CEFE4714(v2, v4);
  return v8;
}

uint64_t sub_1CF18C228(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  swift_getWitnessTable();
  sub_1CF9E5E78();
  return sub_1CF9E8228();
}

uint64_t sub_1CF18C290(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C8, type metadata accessor for PQLSqliteError, &unk_1CF9F8534);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF18C2FC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C8, type metadata accessor for PQLSqliteError, &unk_1CF9F8534);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF18C368(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CF18C3F0@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *v4;
  v8 = *v4 & *a1;
  result = sub_1CF9E7798();
  if (result)
  {
    v8 = 0;
  }

  else
  {
    *v4 = v7 & ~v6;
  }

  *a4 = v8;
  *(a4 + 8) = result & 1;
  return result;
}

uint64_t sub_1CF18C46C@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *v4 & *a1;
  *v4 |= *a1;
  result = sub_1CF9E7798();
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *a4 = v8;
  *(a4 + 8) = result & 1;
  return result;
}

uint64_t sub_1CF18C54C(uint64_t a1, id *a2)
{
  v3 = sub_1CF9E68A8();
  *a2 = 0;
  return v3 & 1;
}

void sub_1CF18C5CC(uint64_t *a2@<X8>)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = sub_1CF9E6888();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

uint64_t sub_1CF18C610()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18C658(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v2);
  return sub_1CF9E8228();
}

void sub_1CF18C69C(_TtC18FileProviderDaemon8FSTester *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CEFF8C8C();
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

void sub_1CF18C6DC(_TtC18FileProviderDaemon8FSTester *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF94814C();
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1CF18C72C(uint64_t a1)
{
  sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18C798(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18C804(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18C894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18C910(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD688, type metadata accessor for URLFileProtection, &unk_1CF9F9114);
  v3 = sub_1CF18DC7C(&unk_1EC4BD690, type metadata accessor for URLFileProtection, &unk_1CF9F90B4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18C9CC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD278, type metadata accessor for NSFileProviderPage, &unk_1CF9F6704);
  v3 = sub_1CF18DC7C(&qword_1EC4BD280, type metadata accessor for NSFileProviderPage, &unk_1CF9F66A4);
  v4 = sub_1CF1909CC();

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18CA8C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
  v3 = sub_1CF18DC7C(&qword_1EC4BD2B8, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F579C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18CB48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E5B48();
  result = sub_1CEFE4714(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_1CF18CB94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E5E68();
}

uint64_t sub_1CF18CC10(uint64_t a1)
{
  sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18CC7C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18CCE8(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18CD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18CE04(uint64_t a1)
{
  sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18CE70(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18CEDC(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18CF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18CFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E81D8();
  sub_1CF9E6758();
  return sub_1CF9E8228();
}

uint64_t sub_1CF18D048(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD268, type metadata accessor for FPProviderDomainID, &unk_1CF9F6F20);
  v3 = sub_1CF18DC7C(&qword_1EC4BD270, type metadata accessor for FPProviderDomainID, &unk_1CF9F6EC8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D104(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD678, type metadata accessor for FPDiagnosticAttributeKey, &unk_1CF9F9B24);
  v3 = sub_1CF18DC7C(&qword_1EC4BD680, type metadata accessor for FPDiagnosticAttributeKey, &unk_1CF9F9204);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D1C0(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3660, type metadata accessor for URLResourceKey, &unk_1CF9F5F44);
  v3 = sub_1CF18DC7C(&qword_1EC4BD298, type metadata accessor for URLResourceKey, &unk_1CF9F5EE4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D27C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD658, type metadata accessor for FPProviderID, &unk_1CF9F9830);
  v3 = sub_1CF18DC7C(&unk_1EC4BD660, type metadata accessor for FPProviderID, &unk_1CF9F97D8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1CF18D3BC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD6C8, type metadata accessor for NSFileProviderItemDecorationIdentifier, &unk_1CF9F863C);
  v3 = sub_1CF18DC7C(&qword_1EC4BD6D0, type metadata accessor for NSFileProviderItemDecorationIdentifier, &unk_1CF9F85DC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D478(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD258, type metadata accessor for SWCollaborationIdentifier, &unk_1CF9F73CC);
  v3 = sub_1CF18DC7C(&qword_1EC4BD260, type metadata accessor for SWCollaborationIdentifier, &unk_1CF9F736C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D534(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD6B8, type metadata accessor for NSFileProviderDomainIdentifier, &unk_1CF9F8794);
  v3 = sub_1CF18DC7C(&qword_1EC4BD6C0, type metadata accessor for NSFileProviderDomainIdentifier, &unk_1CF9F8734);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D5F0(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD2A0, type metadata accessor for NSFileProviderSyncAnchor, &unk_1CF9F5C5C);
  v3 = sub_1CF18DC7C(&unk_1EC4BD2A8, type metadata accessor for NSFileProviderSyncAnchor, &unk_1CF9F5BFC);
  v4 = sub_1CF1909CC();

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D6B0(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD248, type metadata accessor for FileOperationKind, &unk_1CF9F7524);
  v3 = sub_1CF18DC7C(&qword_1EC4BD250, type metadata accessor for FileOperationKind, &unk_1CF9F74C4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D76C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
  v3 = sub_1CF18DC7C(&qword_1EC4BD670, type metadata accessor for FileAttributeKey, &unk_1CF9F930C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18D828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1CF18D8AC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3908, type metadata accessor for CSIndexError, &unk_1CF9F9CF4);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF18D918(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3908, type metadata accessor for CSIndexError, &unk_1CF9F9CF4);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF18D984(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CF18D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError, &unk_1CF9F9BA0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1CF18DA74(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey, &unk_1CF9F9D38);
  v3 = sub_1CF18DC7C(&qword_1EC4BD6A0, type metadata accessor for ProgressUserInfoKey, &unk_1CF9F8F28);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18DB30(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3508, type metadata accessor for NSFileProviderUserInfoKey, &unk_1CF9F9A2C);
  v3 = sub_1CF18DC7C(&unk_1EDEA34E0, type metadata accessor for NSFileProviderUserInfoKey, &unk_1CF9F9980);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18DC7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CF18E0FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1CF9E6888();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1CF18E144(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD6A8, type metadata accessor for FPPreflightAction, &unk_1CF9F8A80);
  v3 = sub_1CF18DC7C(&qword_1EC4BD6B0, type metadata accessor for FPPreflightAction, &unk_1CF9F8A28);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18E200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1CF9E5B88();
  v6 = v5;
  v7 = a3();
  sub_1CEFE4714(v4, v6);
  return v7;
}

uint64_t sub_1CF18E254(uint64_t a1)
{
  v1 = sub_1CF9E5B88();
  v3 = v2;
  sub_1CF9E5BA8();

  return sub_1CEFE4714(v1, v3);
}

uint64_t sub_1CF18E2B4(uint64_t a1)
{
  v1 = sub_1CF9E5B88();
  v3 = v2;
  sub_1CF9E81D8();
  sub_1CF9E5BA8();
  v4 = sub_1CF9E8228();
  sub_1CEFE4714(v1, v3);
  return v4;
}

unint64_t sub_1CF18F468()
{
  result = qword_1EDEAB6E0;
  if (!qword_1EDEAB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB6E0);
  }

  return result;
}

uint64_t sub_1CF18F54C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
    v34 = v10;
LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = *(*(a2 + 56) + 8 * v13);
    v15 = *(*(a2 + 48) + 16 * v13 + 8);
    v16 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v16;
    v36 = *(a1 + 64);
    v17 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v17;
    v18 = (v14 & 0x3FFFFFFFFFFFFFFFLL);

    sub_1CF9E69C8();
    v15, v19, v20, v21, v22, v23, v24, v25;
    v26 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      v28 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v29 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v31 = v18[4];
      v32 = v18[5];
      v33 = v18[6];
      if (v26 == 2)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
      }

      MEMORY[0x1D386A470](v30);
      MEMORY[0x1D386A470](v28);
      MEMORY[0x1D386A470](v29);
      MEMORY[0x1D386A470](v31);
      MEMORY[0x1D386A4A0](v32);
      MEMORY[0x1D386A470](v33);
    }

    else if (v26)
    {
      MEMORY[0x1D386A470](1);
      sub_1CF9E5BA8();
    }

    else
    {
      v27 = *(v14 + 16);
      MEMORY[0x1D386A470](0);
      sub_1CF18F54C(v35, v27);
    }

    v7 &= v7 - 1;

    result = sub_1CF9E8228();
    v10 = result ^ v34;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1D386A470](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v34 = v10;
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF18F77C(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) <= 1)
  {
    if (v2)
    {
      if (a2 >> 62 == 1)
      {
        return sub_1CF328660(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      }
    }

    else if (!(a2 >> 62))
    {
      return sub_1CF362FBC(*(a1 + 16), *(a2 + 16));
    }

    return 0;
  }

  if (v2 == 2)
  {
    if (a2 >> 62 != 2)
    {
      return 0;
    }

    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10)), vceqq_s64(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20))))) & (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30));
  }

  if (a2 >> 62 == 3)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10)), vceqq_s64(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20))))) & (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30));
  }

  return 0;
}

uint64_t sub_1CF18F830(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a1 == 0x657A697362 && a2 == 0xE500000000000000;
  if (v9 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x657A69736CLL && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x736B636F6C62 && a2 == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x746E756F6362 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF18F9D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD640, &qword_1CF9FA000);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF192BE8();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = sub_1CF9E7D78();
  v20 = 1;
  v10 = sub_1CF9E7D78();
  v19 = 2;
  v16 = sub_1CF9E7D78();
  v18 = 3;
  v15 = sub_1CF9E7DE8();
  v17 = 4;
  v14 = sub_1CF9E7D78();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v15;
  a2[2] = v16;
  a2[3] = v12;
  a2[4] = v14;
  return result;
}

uint64_t sub_1CF18FBEC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x726F746365726964 && a2 == 0xE900000000000079;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7373656C61746164 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x657372617073 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1CF18FD54(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD1C8, &qword_1CF9F7850);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v39 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD1D0, &qword_1CF9F7858);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v39 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD1D8, &qword_1CF9F7860);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD1E0, &qword_1CF9F7868);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v39 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD1E8, &unk_1CF9F7870);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CF1906E4();
  v14 = v51;
  sub_1CF9E8298();
  if (!v14)
  {
    v15 = v8;
    v40 = v6;
    v41 = 0;
    v8 = v48;
    v16 = v49;
    v17 = v50;
    v51 = v10;
    v18 = sub_1CF9E7DF8();
    v19 = v18;
    v20 = *(v18 + 16);
    if (!v20 || ((v21 = *(v18 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
    {
      v23 = sub_1CF9E79E8();
      swift_allocError();
      v8 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0);
      *v8 = &type metadata for DocumentContent;
      sub_1CF9E7C98();
      sub_1CF9E79D8();
      (*(*(v23 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v51 + 8))(v12, v9);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if (*(v18 + 32) <= 1u)
    {
      if (*(v18 + 32))
      {
        v54 = 1;
        sub_1CF190834();
        v32 = v5;
        v33 = v41;
        sub_1CF9E7C88();
        if (!v33)
        {
          v36 = swift_allocObject();
          sub_1CF190888();
          v37 = v42;
          sub_1CF9E7D88();
          (*(v45 + 8))(v32, v37);
          (*(v51 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v8 = (v36 | 0x4000000000000000);
          goto LABEL_10;
        }
      }

      else
      {
        v53 = 0;
        sub_1CF1908DC();
        v26 = v41;
        sub_1CF9E7C88();
        if (!v26)
        {
          v8 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD230, &qword_1CF9F7880);
          sub_1CF190AC8(&qword_1EC4BD238, sub_1CF190978, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
          v27 = v40;
          sub_1CF9E7D88();
          (*(v43 + 8))(v15, v27);
          (*(v51 + 8))(v12, v9);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v29 = v51;
      goto LABEL_20;
    }

    if (v21 == 2)
    {
      v55 = 2;
      sub_1CF1907E0();
      v28 = v41;
      sub_1CF9E7C88();
      v29 = v51;
      if (!v28)
      {
        v30 = swift_allocObject();
        sub_1CF19078C();
        v31 = v44;
        sub_1CF9E7D88();
        (*(v47 + 8))(v8, v31);
        (*(v29 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v8 = (v30 | 0x8000000000000000);
        goto LABEL_10;
      }

LABEL_20:
      (*(v29 + 8))(v12, v9);
      goto LABEL_9;
    }

    v56 = 3;
    sub_1CF190738();
    v34 = v41;
    sub_1CF9E7C88();
    v35 = v51;
    if (v34)
    {
      (*(v51 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = v19;
      v38 = swift_allocObject();
      sub_1CF19078C();
      sub_1CF9E7D88();
      (*(v46 + 8))(v16, v17);
      (*(v35 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v8 = (v38 | 0xC000000000000000);
    }
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v8;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1CF1906E4()
{
  result = qword_1EC4BD1F0;
  if (!qword_1EC4BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD1F0);
  }

  return result;
}

unint64_t sub_1CF190738()
{
  result = qword_1EC4BD200;
  if (!qword_1EC4BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD200);
  }

  return result;
}

unint64_t sub_1CF19078C()
{
  result = qword_1EC4BD208;
  if (!qword_1EC4BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD208);
  }

  return result;
}

unint64_t sub_1CF1907E0()
{
  result = qword_1EC4BD210;
  if (!qword_1EC4BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD210);
  }

  return result;
}

unint64_t sub_1CF190834()
{
  result = qword_1EC4BD218;
  if (!qword_1EC4BD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD218);
  }

  return result;
}

unint64_t sub_1CF190888()
{
  result = qword_1EDEAECE0;
  if (!qword_1EDEAECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAECE0);
  }

  return result;
}

unint64_t sub_1CF1908DC()
{
  result = qword_1EC4BD228;
  if (!qword_1EC4BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD228);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1CF190978()
{
  result = qword_1EC4BD240;
  if (!qword_1EC4BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD240);
  }

  return result;
}

unint64_t sub_1CF1909CC()
{
  result = qword_1EC4BD288;
  if (!qword_1EC4BD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD288);
  }

  return result;
}

unint64_t sub_1CF190A20()
{
  result = qword_1EC4BD2E8;
  if (!qword_1EC4BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD2E8);
  }

  return result;
}

unint64_t sub_1CF190A74()
{
  result = qword_1EDEAB3E0;
  if (!qword_1EDEAB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB3E0);
  }

  return result;
}

uint64_t sub_1CF190AC8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BD230, &qword_1CF9F7880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF190B4C()
{
  result = qword_1EC4BD300;
  if (!qword_1EC4BD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD300);
  }

  return result;
}

uint64_t sub_1CF190BA0@<X0>(_DWORD *a1@<X8>)
{
  result = ftruncate([*(v1 + 16) fileDescriptor], *(*(v1 + 24) + 8));
  *a1 = result;
  return result;
}

ssize_t sub_1CF190C04@<X0>(ssize_t *a1@<X8>)
{
  result = pwrite([*(v1 + 16) fileDescriptor], *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *a1 = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CF190DB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1048))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF190DD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1048) = v3;
  return result;
}

uint64_t sub_1CF191034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 272))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 224);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF191088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 224) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF191124(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF191144(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

_WORD *storeEnumTagSinglePayload for FPDiagnosticsSamplingResult.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1CF191410()
{
  result = qword_1EC4BD428;
  if (!qword_1EC4BD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD428);
  }

  return result;
}

unint64_t sub_1CF191468()
{
  result = qword_1EC4BD430;
  if (!qword_1EC4BD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD430);
  }

  return result;
}

unint64_t sub_1CF1914C0()
{
  result = qword_1EC4BD438;
  if (!qword_1EC4BD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD438);
  }

  return result;
}

unint64_t sub_1CF191518()
{
  result = qword_1EC4BD440;
  if (!qword_1EC4BD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD440);
  }

  return result;
}

unint64_t sub_1CF191570()
{
  result = qword_1EC4BD448;
  if (!qword_1EC4BD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD448);
  }

  return result;
}

unint64_t sub_1CF1915C8()
{
  result = qword_1EC4BD450;
  if (!qword_1EC4BD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD450);
  }

  return result;
}

unint64_t sub_1CF19287C()
{
  result = qword_1EC4BD5F0;
  if (!qword_1EC4BD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD5F0);
  }

  return result;
}

unint64_t sub_1CF1928D4()
{
  result = qword_1EC4BD5F8;
  if (!qword_1EC4BD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD5F8);
  }

  return result;
}

unint64_t sub_1CF19292C()
{
  result = qword_1EC4BD600;
  if (!qword_1EC4BD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD600);
  }

  return result;
}

unint64_t sub_1CF192984()
{
  result = qword_1EC4BD608;
  if (!qword_1EC4BD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD608);
  }

  return result;
}

unint64_t sub_1CF1929DC()
{
  result = qword_1EC4BD610;
  if (!qword_1EC4BD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD610);
  }

  return result;
}

unint64_t sub_1CF192A34()
{
  result = qword_1EC4BD618;
  if (!qword_1EC4BD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD618);
  }

  return result;
}

unint64_t sub_1CF192A8C()
{
  result = qword_1EC4BD620;
  if (!qword_1EC4BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD620);
  }

  return result;
}

unint64_t sub_1CF192AE4()
{
  result = qword_1EC4BD628;
  if (!qword_1EC4BD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD628);
  }

  return result;
}

unint64_t sub_1CF192B3C()
{
  result = qword_1EC4BD630;
  if (!qword_1EC4BD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD630);
  }

  return result;
}

unint64_t sub_1CF192B94()
{
  result = qword_1EC4BD638;
  if (!qword_1EC4BD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD638);
  }

  return result;
}

unint64_t sub_1CF192BE8()
{
  result = qword_1EC4BD648;
  if (!qword_1EC4BD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtentMap.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t initializeBufferWithCopyOfBuffer for VFSFileError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1CF192D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 224))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 184);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF192D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 184) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_1(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CF192E58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1CF192F34()
{
  result = qword_1EC4BD728;
  if (!qword_1EC4BD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD728);
  }

  return result;
}

unint64_t sub_1CF192F8C()
{
  result = qword_1EC4BD730;
  if (!qword_1EC4BD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD730);
  }

  return result;
}

unint64_t sub_1CF192FE4()
{
  result = qword_1EC4BD738;
  if (!qword_1EC4BD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD738);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CF19304C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1CF193090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1CF1930F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF193118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CF19316C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF19318C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1CF19338C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF193424(char a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF193610@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  return sub_1CF0160C0(v1 + v3, a1);
}

uint64_t sub_1CF1937A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  sub_1CEFFFEB8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1CF193808(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1CF0160C0(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  sub_1CEFFFEB8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1CF193974()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF193A0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1CF193ABC(uint64_t a1, uint64_t a2, int a3)
{
  v28 = a3;
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  v17 = *(v12 + 56);
  v17(&v3[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID], 1, 1, v11, v13);
  sub_1CF0160C0(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CF0156A8(v10);
  }

  else
  {
    v25 = v7;
    v26 = a1;
    v18 = *(v12 + 32);
    v18(v15, v10, v11);
    if ((v28 & 1) == 0)
    {
      v3[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged] = 1;
      v20 = v25;
      v18(v25, v15, v11);
      (v17)(v20, 0, 1, v11);
      swift_beginAccess();
      sub_1CEFFFEB8(v20, &v3[v16]);
      swift_endAccess();
      a1 = v26;
      v19 = v27;
      goto LABEL_7;
    }

    (*(v12 + 8))(v15, v11);
    v7 = v25;
    a1 = v26;
  }

  v3[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged] = 0;
  (v17)(v7, 1, 1, v11);
  swift_beginAccess();
  sub_1CEFFFEB8(v7, &v3[v16]);
  swift_endAccess();
  v19 = 0;
LABEL_7:
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID] = v19;
  v21 = type metadata accessor for FPDFSEventStreamConfig(0);
  v29.receiver = v3;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  sub_1CF0156A8(a1);
  return v22;
}

uint64_t sub_1CF193DAC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  sub_1CF9E5A18();
  v10 = v9;
  v11 = sub_1CF9E6978();
  v10, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_1CF9E6978();
  v20 = getxattr((v11 + 32), (v19 + 32), 0, 0, 0, a3);

  if (v20 < 0)
  {
    if (MEMORY[0x1D38683F0](v21) == 93)
    {
      return 0;
    }

    else
    {
      v27 = MEMORY[0x1D38683F0]();
      v28 = sub_1CF9E6888();
      v29 = [v28 fp_obfuscatedExtendedAttributeName];

      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v31;

      v35 = v30;
      v36 = v32;
      v37 = 1;
      sub_1CF19BBE4(v27, &v35);
      sub_1CF1969CC(&v35);
      return swift_willThrow();
    }
  }

  else
  {
    v35 = sub_1CF195D88(v20);
    v36 = v22;
    v23 = sub_1CF9E5AF8();
    MEMORY[0x1EEE9AC00](v23);
    v33[2] = v5;
    v33[3] = a1;
    v33[4] = a2;
    v34 = a3;
    sub_1CF1955A4(sub_1CF196954, v33);
    if (v4)
    {
      v24 = v4;
      v38 = sub_1CF9E5368();
      sub_1CF196978();
      v25 = sub_1CF9E5658();

      result = sub_1CEFE4714(v35, v36);
      if (v25)
      {

        return 0;
      }
    }

    else
    {
      return v35;
    }
  }

  return result;
}

id FPDFSEventStreamConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDFSEventStreamConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDFSEventStreamConfig(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FPDFSEventStreamConfig(uint64_t a1)
{
  result = qword_1EC4BD8F8;
  if (!qword_1EC4BD8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF1940F0(uint64_t a1)
{
  sub_1CF194384(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CF194384(uint64_t a1)
{
  if (!qword_1EDEAFDF0)
  {
    sub_1CF9E5D98();
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAFDF0);
    }
  }
}

uint64_t sub_1CF1943DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1CF9E5A18();
  v10 = v9;
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1CF9E6978();
  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1CF9E6978();
  v21 = getxattr((v12 + 32), (v20 + 32), a1, v11, 0, a6);

  if (v21 < 0)
  {
    v23 = MEMORY[0x1D38683F0](result);
    v24 = sub_1CF9E6888();
    v25 = [v24 fp_obfuscatedExtendedAttributeName];

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;

    v29[0] = v26;
    v29[1] = v28;
    v30 = 1;
    sub_1CF19BBE4(v23, v29);
    sub_1CF1969CC(v29);
    return swift_willThrow();
  }

  return result;
}

id sub_1CF194514()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fpfs_supports_fsevents_purge_detection())
  {
    v13 = [v0 mountPath];
    if (!v13)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v15 = v14;
      v13 = sub_1CF9E6888();
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    v23 = sub_1CF9E6888();
    v24 = [v13 stringByAppendingPathComponent_];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;

    sub_1CF9E58B8();
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1CF195E2C();
    if (v1)
    {
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      if (!v34)
      {
        v50 = type metadata accessor for FPDFSEventStreamConfig(0);
        v45 = objc_allocWithZone(v50);
        v53 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
        v46 = sub_1CF9E5D98();
        v47 = *(*(v46 - 8) + 56);
        v47(&v45[v53], 1, 1, v46);
        v45[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged] = 0;
        v47(v8, 1, 1, v46);
        v48 = v53;
        swift_beginAccess();
        sub_1CEFFFEB8(v8, &v45[v48]);
        swift_endAccess();
        *&v45[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID] = 0;
        v51.receiver = v45;
        v51.super_class = v50;
        v34 = objc_msgSendSuper2(&v51, sel_init);
      }

      v49 = v34;
      (*(v10 + 8))(v12, v9);
      return v49;
    }
  }

  else
  {
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E72A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "Skipping purge detection: FF disabled", v39, 2u);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v40 = type metadata accessor for FPDFSEventStreamConfig(0);
    v41 = objc_allocWithZone(v40);
    v42 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
    v43 = sub_1CF9E5D98();
    v44 = *(*(v43 - 8) + 56);
    v44(&v41[v42], 1, 1, v43);
    v41[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged] = 0;
    v44(v8, 1, 1, v43);
    swift_beginAccess();
    sub_1CEFFFEB8(v8, &v41[v42]);
    swift_endAccess();
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID] = 0;
    v52.receiver = v41;
    v52.super_class = v40;
    return objc_msgSendSuper2(&v52, sel_init);
  }
}

void sub_1CF194A94(uint64_t a1, uint64_t a2, int64_t a3)
{
  v86 = a1;
  v87 = a2;

  v4 = sub_1CF9E6B48();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v45 = v5;
    v12 = sub_1CF4C49F0(v4, v5);
    v47 = v46;
    v45, v46, v48, v49, v50, v51, v52, v53;
    v5 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v5;
      v13 = sub_1CF9E79F8();
      v14 = v85;
      v5 = v84;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v27 = v14 - 1;
        if (v27)
        {
          v28 = a3 + 48;
          v29 = a3 + 55;
          v30 = a3 + 87;
          if (a3 > 10)
          {
            v28 = 58;
          }

          else
          {
            v30 = 97;
            v29 = 65;
          }

          if (v13)
          {
            v31 = 0;
            v32 = v13 + 1;
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v28)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  if (v33 < 0x61 || v33 >= v30)
                  {
                    goto LABEL_127;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              if (is_mul_ok(v31, a3))
              {
                v35 = v31 * a3;
                v36 = v33 + v34;
                v26 = __CFADD__(v35, v36);
                v31 = v35 + v36;
                if (!v26)
                {
                  ++v32;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v13)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v13;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_127;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if (is_mul_ok(v40, a3))
            {
              v43 = v40 * a3;
              v44 = v41 + v42;
              v26 = __CFADD__(v43, v44);
              v40 = v43 + v44;
              if (!v26)
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            if (is_mul_ok(v20, a3))
            {
              v24 = v20 * a3;
              v25 = v22 + v23;
              v26 = v24 >= v25;
              v20 = v24 - v25;
              if (v26)
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v54 = HIBYTE(v5) & 0xF;
  v86 = v12;
  v87 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v54)
      {
        v75 = 0;
        v76 = a3 + 48;
        v77 = a3 + 55;
        v78 = a3 + 87;
        if (a3 > 10)
        {
          v76 = 58;
        }

        else
        {
          v78 = 97;
          v77 = 65;
        }

        v79 = &v86;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v76)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              if (v80 < 0x61 || v80 >= v78)
              {
                goto LABEL_127;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          if (is_mul_ok(v75, a3))
          {
            v82 = v75 * a3;
            v83 = v80 + v81;
            v26 = __CFADD__(v82, v83);
            v75 = v82 + v83;
            if (!v26)
            {
              v79 = (v79 + 1);
              if (--v54)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v54)
    {
      v55 = v54 - 1;
      if (v55)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v86 + 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          if (is_mul_ok(v56, a3))
          {
            v63 = v56 * a3;
            v64 = v61 + v62;
            v26 = v63 >= v64;
            v56 = v63 - v64;
            if (v26)
            {
              ++v60;
              if (--v55)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v54)
  {
    v65 = v54 - 1;
    if (v65)
    {
      v66 = 0;
      v67 = a3 + 48;
      v68 = a3 + 55;
      v69 = a3 + 87;
      if (a3 > 10)
      {
        v67 = 58;
      }

      else
      {
        v69 = 97;
        v68 = 65;
      }

      v70 = &v86 + 1;
      while (1)
      {
        v71 = *v70;
        if (v71 < 0x30 || v71 >= v67)
        {
          if (v71 < 0x41 || v71 >= v68)
          {
            if (v71 < 0x61 || v71 >= v69)
            {
              goto LABEL_127;
            }

            v72 = -87;
          }

          else
          {
            v72 = -55;
          }
        }

        else
        {
          v72 = -48;
        }

        if (is_mul_ok(v66, a3))
        {
          v73 = v66 * a3;
          v74 = v71 + v72;
          v26 = __CFADD__(v73, v74);
          v66 = v73 + v74;
          if (!v26)
          {
            ++v70;
            if (--v65)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void sub_1CF195018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;

  v4 = sub_1CF9E6B48();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v41 = v5;
    v12 = sub_1CF4C49F0(v4, v5);
    v43 = v42;
    v41, v42, v44, v45, v46, v47, v48, v49;
    v5 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v5;
      v13 = sub_1CF9E79F8();
      v14 = v78;
      v5 = v77;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v25)
        {
          v26 = a3 + 48;
          v27 = a3 + 55;
          v28 = a3 + 87;
          if (a3 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (v13)
          {
            v29 = 0;
            v30 = v13 + 1;
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v26)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  if (v31 < 0x61 || v31 >= v28)
                  {
                    goto LABEL_125;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v33 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v33 + (v31 + v32);
                if (!__OFADD__(v33, (v31 + v32)))
                {
                  ++v30;
                  if (--v25)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v34 = a3 + 48;
        v35 = a3 + 55;
        v36 = a3 + 87;
        if (a3 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (v13)
        {
          v37 = 0;
          while (1)
          {
            v38 = *v13;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_125;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a3;
            if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
            {
              v37 = v40 + (v38 + v39);
              if (!__OFADD__(v40, (v38 + v39)))
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            v24 = v20 * a3;
            if ((v20 * a3) >> 64 == (v20 * a3) >> 63)
            {
              v20 = v24 - (v22 + v23);
              if (!__OFSUB__(v24, (v22 + v23)))
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v50 = HIBYTE(v5) & 0xF;
  v79 = v12;
  v80 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v50)
      {
        v69 = 0;
        v70 = a3 + 48;
        v71 = a3 + 55;
        v72 = a3 + 87;
        if (a3 > 10)
        {
          v70 = 58;
        }

        else
        {
          v72 = 97;
          v71 = 65;
        }

        v73 = &v79;
        while (1)
        {
          v74 = *v73;
          if (v74 < 0x30 || v74 >= v70)
          {
            if (v74 < 0x41 || v74 >= v71)
            {
              if (v74 < 0x61 || v74 >= v72)
              {
                goto LABEL_125;
              }

              v75 = -87;
            }

            else
            {
              v75 = -55;
            }
          }

          else
          {
            v75 = -48;
          }

          v76 = v69 * a3;
          if ((v69 * a3) >> 64 == (v69 * a3) >> 63)
          {
            v69 = v76 + (v74 + v75);
            if (!__OFADD__(v76, (v74 + v75)))
            {
              v73 = (v73 + 1);
              if (--v50)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v50)
    {
      v51 = v50 - 1;
      if (v51)
      {
        v52 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v79 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v57 + v58);
            if (!__OFSUB__(v59, (v57 + v58)))
            {
              ++v56;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v50)
  {
    v60 = v50 - 1;
    if (v60)
    {
      v61 = 0;
      v62 = a3 + 48;
      v63 = a3 + 55;
      v64 = a3 + 87;
      if (a3 > 10)
      {
        v62 = 58;
      }

      else
      {
        v64 = 97;
        v63 = 65;
      }

      v65 = &v79 + 1;
      while (1)
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v62)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            if (v66 < 0x61 || v66 >= v64)
            {
              goto LABEL_125;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v68 = v61 * a3;
        if ((v61 * a3) >> 64 == (v61 * a3) >> 63)
        {
          v61 = v68 + (v66 + v67);
          if (!__OFADD__(v68, (v66 + v67)))
          {
            ++v65;
            if (--v60)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1CF1955A4(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1CEFE4714(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1CF9FA380;
      sub_1CEFE4714(0, 0xC000000000000000);
      result = sub_1CF195BF8(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1CEFE4714(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_1CEFE4714(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1CF9FA380;
  sub_1CEFE4714(0, 0xC000000000000000);
  sub_1CF9E5A68();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_1CF9E5498();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_1CF9E54C8();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_1CF9E54B8();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

char *sub_1CF195854(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1CEFE4714(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1CEFE4714(v7, v6);
    *v4 = xmmword_1CF9FA380;
    sub_1CEFE4714(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1CF9E5498() && __OFSUB__(v7, sub_1CF9E54C8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1CF9E54F8();
      swift_allocObject();
      v14 = sub_1CF9E5478();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1CF195CD4(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1CEFE4714(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1CF9FA380;
    sub_1CEFE4714(0, 0xC000000000000000);
    sub_1CF9E5A68();
    result = sub_1CF195CD4(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1CF195BF8(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1CF9E5AA8();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1CF9E5498();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1CF9E54C8();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1CF9E54B8();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_1CF195CD4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1CF9E5498();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1CF9E54C8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1CF9E54B8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1CF195D88(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1CF9E54F8();
      swift_allocObject();
      sub_1CF9E54D8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1CF9E5AD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CF195E2C()
{
  v0 = sub_1CF9E6118();
  v142 = *(v0 - 8);
  v143 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v141 = &v129 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v129 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v129 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v129 - v12;
  v14 = sub_1CF9E5D98();
  v140 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v129 - v18;
  v20 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v144;
  result = sub_1CF193DAC(0xD000000000000016, 0x80000001CFA2DA70, 1);
  if (v23)
  {
    return result;
  }

  v144 = v22;
  v136 = v16;
  v137 = v10;
  v138 = v7;
  v139 = v14;
  v27 = v142;
  v26 = v143;
  if (v25 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v28 = v25;
  v29 = result;
  sub_1CF9E6918();
  v134 = v29;
  v135 = v28;
  sub_1CF9E68D8();
  if (!v30)
  {
    sub_1CEFE48D8(v134, v135);
    goto LABEL_7;
  }

  v31 = v30;
  sub_1CF9E5D08();
  v31, v32, v33, v34, v35, v36, v37, v38;
  v40 = v139;
  v39 = v140;
  if ((*(v140 + 48))(v13, 1, v139) == 1)
  {
    sub_1CEFE48D8(v134, v135);
    sub_1CF0156A8(v13);
LABEL_7:
    v27 = v142;
    v26 = v143;
LABEL_8:
    v41 = fpfs_current_or_default_log();
    v42 = v141;
    sub_1CF9E6128();
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E7298();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "No purge happened : no valid previous UUID was found", v45, 2u);
      MEMORY[0x1D386CDC0](v45, -1, -1);
    }

    (*(v27 + 8))(v42, v26);
    return 0;
  }

  (*(v39 + 32))(v19, v13, v40);
  v46 = sub_1CF193DAC(0xD00000000000001DLL, 0x80000001CFA2DA90, 1);
  if (v47 >> 60 == 15)
  {
    goto LABEL_80;
  }

  v48 = v47;
  v49 = v46;
  sub_1CF9E6918();
  v50 = v49;
  v51 = v48;
  result = sub_1CF9E68D8();
  if (!v52)
  {
    goto LABEL_79;
  }

  v59 = HIBYTE(v52) & 0xF;
  v60 = result & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v61 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    v83 = v52;
    sub_1CEFE48D8(v49, v51);
    v83, v84, v85, v86, v87, v88, v89, v90;
    goto LABEL_80;
  }

  v62 = v138;
  if ((v52 & 0x1000000000000000) != 0)
  {
    v91 = v52;
    sub_1CF194A94(result, v52, 10);
    v144 = v92;
    v94 = v93;
    v91, v93, v95, v96, v97, v98, v99, v100;
    if (v94)
    {
      goto LABEL_79;
    }

LABEL_88:
    v133 = v50;
    v141 = v51;
    v101 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v102 = v140;
    v103 = v136;
    v132 = *(v140 + 16);
    v132(v136, v19, v40);
    v104 = sub_1CF9E6108();
    v105 = sub_1CF9E7288();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v145[0] = v131;
      *v106 = 136315394;
      sub_1CF1968FC();
      v147 = v105;
      v107 = sub_1CF9E7F98();
      v109 = v108;
      v110 = *(v102 + 8);
      v130 = v104;
      v136 = v110;
      v110(v103, v139);
      v111 = sub_1CEFD0DF0(v107, v109, v145);
      v112 = v109;
      v40 = v139;
      v112, v113, v114, v115, v116, v117, v118, v119;
      *(v106 + 4) = v111;
      *(v106 + 12) = 2048;
      v120 = v144;
      *(v106 + 14) = v144;
      _os_log_impl(&dword_1CEFC7000, v104, v147, "There has been a purge of the stream: previousUUID: %s, lastPrunedEventID: %llu", v106, 0x16u);
      v121 = v131;
      __swift_destroy_boxed_opaque_existential_1(v131);
      MEMORY[0x1D386CDC0](v121, -1, -1);
      v122 = v106;
      v123 = v120;
      MEMORY[0x1D386CDC0](v122, -1, -1);

      (*(v142 + 8))(v138, v143);
      v124 = v137;
    }

    else
    {

      v136 = *(v102 + 8);
      v136(v103, v40);
      (*(v142 + 8))(v62, v143);
      v124 = v137;
      v123 = v144;
    }

    v132(v124, v19, v40);
    (*(v102 + 56))(v124, 0, 1, v40);
    v125 = objc_allocWithZone(type metadata accessor for FPDFSEventStreamConfig(0));
    v126 = sub_1CF193ABC(v124, v123, 0);
    sub_1CEFE48D8(v134, v135);
    sub_1CEFE48D8(v133, v141);
    v136(v19, v40);
    return v126;
  }

  if ((v52 & 0x2000000000000000) != 0)
  {
    v145[0] = result;
    v145[1] = v52 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v59)
      {
        v60 = v59 - 1;
        if (v59 != 1)
        {
          v64 = 0;
          v72 = v145 + 1;
          while (1)
          {
            v73 = *v72 - 48;
            if (v73 > 9)
            {
              break;
            }

            if (!is_mul_ok(v64, 0xAuLL))
            {
              break;
            }

            v67 = __CFADD__(10 * v64, v73);
            v64 = 10 * v64 + v73;
            if (v67)
            {
              break;
            }

            ++v72;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_96:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v59)
      {
        v64 = 0;
        v76 = v145;
        while (1)
        {
          v77 = *v76 - 48;
          if (v77 > 9)
          {
            break;
          }

          if (!is_mul_ok(v64, 0xAuLL))
          {
            break;
          }

          v67 = __CFADD__(10 * v64, v77);
          v64 = 10 * v64 + v77;
          if (v67)
          {
            break;
          }

          v76 = (v76 + 1);
          if (!--v59)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_76;
    }

    if (v59)
    {
      v60 = v59 - 1;
      if (v59 != 1)
      {
        v64 = 0;
        v68 = v145 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          if (!is_mul_ok(v64, 0xAuLL))
          {
            break;
          }

          v67 = 10 * v64 >= v69;
          v64 = 10 * v64 - v69;
          if (!v67)
          {
            break;
          }

          ++v68;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v52 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v127 = v52;
    result = sub_1CF9E79F8();
    v60 = v128;
    v52 = v127;
  }

  v63 = *result;
  if (v63 == 43)
  {
    if (v60 >= 1)
    {
      if (--v60)
      {
        v64 = 0;
        if (result)
        {
          v70 = (result + 1);
          while (1)
          {
            v71 = *v70 - 48;
            if (v71 > 9)
            {
              goto LABEL_76;
            }

            if (!is_mul_ok(v64, 0xAuLL))
            {
              goto LABEL_76;
            }

            v67 = __CFADD__(10 * v64, v71);
            v64 = 10 * v64 + v71;
            if (v67)
            {
              goto LABEL_76;
            }

            ++v70;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_76:
      v64 = 0;
      LOBYTE(v60) = 1;
      goto LABEL_77;
    }

    goto LABEL_95;
  }

  if (v63 == 45)
  {
    if (v60 >= 1)
    {
      if (--v60)
      {
        v64 = 0;
        if (result)
        {
          v65 = (result + 1);
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              goto LABEL_76;
            }

            if (!is_mul_ok(v64, 0xAuLL))
            {
              goto LABEL_76;
            }

            v67 = 10 * v64 >= v66;
            v64 = 10 * v64 - v66;
            if (!v67)
            {
              goto LABEL_76;
            }

            ++v65;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_75:
        LOBYTE(v60) = 0;
LABEL_77:
        v144 = v64;
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (!v60)
  {
    goto LABEL_83;
  }

  v74 = 0;
  if (result)
  {
    while (1)
    {
      v75 = *result - 48;
      if (v75 > 9)
      {
        break;
      }

      if (!is_mul_ok(v74, 0xAuLL))
      {
        break;
      }

      v67 = __CFADD__(10 * v74, v75);
      v74 = 10 * v74 + v75;
      if (v67)
      {
        break;
      }

      ++result;
      if (!--v60)
      {
        goto LABEL_85;
      }
    }

LABEL_83:
    LOBYTE(v60) = 1;
    v144 = 0;
    goto LABEL_78;
  }

  LOBYTE(v60) = 0;
LABEL_85:
  v144 = v74;
LABEL_78:
  v146 = v60;
  v78 = v60;
  v52, v52, v53, v54, v55, v56, v57, v58;
  if ((v78 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_79:
  sub_1CEFE48D8(v50, v51);
LABEL_80:
  v79 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v80 = sub_1CF9E6108();
  v81 = sub_1CF9E7298();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1CEFC7000, v80, v81, "No purge happened : no last pruned eventID was found", v82, 2u);
    MEMORY[0x1D386CDC0](v82, -1, -1);
  }

  sub_1CEFE48D8(v134, v135);

  (*(v142 + 8))(v4, v143);
  (*(v140 + 8))(v19, v40);
  return 0;
}

unint64_t sub_1CF1968FC()
{
  result = qword_1EDEAECB0;
  if (!qword_1EDEAECB0)
  {
    sub_1CF9E5D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAECB0);
  }

  return result;
}

unint64_t sub_1CF196978()
{
  result = qword_1EDEAB720;
  if (!qword_1EDEAB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB720);
  }

  return result;
}

uint64_t sub_1CF196A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *v4;
  v19 = v5;
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1CF042F4C();
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v17 = v19;
    result = (*(*v4[2] + 576))(0, 1, a1, a2, a3, a4);
    if (!v17)
    {
      v20 = result;
      swift_getAssociatedTypeWitness();
      sub_1CF9E6E58();
      swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      return sub_1CF9E7078();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF196C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a4;
  v142 = a2;
  v161 = a1;
  v155 = *v5;
  v140 = sub_1CF9E5CF8();
  v146 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v155[329];
  v10 = v155[331];
  v12 = type metadata accessor for SnapshotItem(255, v9, v10, v11);
  v148 = sub_1CF9E75D8();
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v157 = v12;
  v158 = &v131 - v13;
  v144 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v131 - v15;
  v151 = v10;
  v152 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v160 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v131 - v17;
  v19 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v131 - v23;
  v25 = *(a5 + 8);
  v26 = v162;
  v27 = sub_1CF196A24(v161, a3, v163, v25);
  v159 = v26;
  if (v26)
  {
    return;
  }

  v161 = a3;
  v153 = a5;
  v147 = v24;
  v150 = v25;
  v143 = v21;
  v156 = v18;
  v165[0] = v27;
  v28 = sub_1CF9E6DA8();
  v29 = sub_1CF9E6DF8();
  v162 = AssociatedTypeWitness;
  if (v29)
  {
    v37 = v151;
    v38 = v152;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = sub_1CF981D64(v28, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
    v41 = v150;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CD0];
    v41 = v150;
    v38 = v152;
    v37 = v151;
  }

  v42 = v153;
  v43 = v163;
  v28, v30, v31, v32, v33, v34, v35, v36;
  v164 = v40;
  v44 = sub_1CF478C28();
  v154 = &v131;
  MEMORY[0x1EEE9AC00](v44);
  *(&v131 - 6) = v43;
  *(&v131 - 5) = v42;
  v45 = v161;
  *(&v131 - 4) = v5;
  *(&v131 - 3) = v45;
  v129 = &v164;
  v130 = v165;
  v46 = v155[330];
  v47 = v155[332];

  v48 = v159;
  sub_1CF354B6C(128, v45, sub_1CF1980F8, (&v131 - 8), v38, v46, v43, v37, v47, v41);
  if (v48)
  {

    v164, v49, v50, v51, v52, v53, v54, v55;
    v63 = v165[0];
    goto LABEL_7;
  }

  v155 = v5;

  v135 = v164;
  if ((v164 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7038();
    v64 = v165[1];
    tester = v165[2];
    v66 = v165[3];
    v67 = v165[4];
    v68 = v165[5];
  }

  else
  {
    v69 = -1 << LOBYTE(v164[1].super.isa);
    tester = v164[1].tester;
    v66 = ~v69;
    v70 = -v69;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v68 = v71 & *v164[1].tester;
    v67 = 0;
  }

  v72 = v156;
  v159 = (v160 + 56);
  v136 = v66;
  v138 = v160 + 16;
  v154 = (v160 + 8);
  for (i = v64; ; v64 = i)
  {
    v73 = v162;
    v141 = v67;
    if ((v64 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1CF9E7838())
    {
      v73 = v162;
      goto LABEL_26;
    }

    v75 = v147;
    v76 = v162;
    sub_1CF9E8008();
    v73 = v76;
    swift_unknownObjectRelease();
    v77 = v68;
LABEL_25:
    (*v159)(v75, 0, 1, v73);
    sub_1CF478C28();

    sub_1CF348CFC(v75, 128, v161, v163, v153);
    (*v154)(v75, v73);

    v68 = v77;
    v72 = v156;
  }

  if (v68)
  {
    v74 = v68;
LABEL_24:
    v77 = (v74 - 1) & v74;
    v79 = *(v64 + 48) + *(v160 + 72) * (__clz(__rbit64(v74)) | (v67 << 6));
    v75 = v147;
    (*(v160 + 16))(v147, v79, v162);
    goto LABEL_25;
  }

  v78 = v67;
  while (1)
  {
    v67 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v67 >= ((v66 + 64) >> 6))
    {
      break;
    }

    v74 = *&tester[8 * v67];
    ++v78;
    if (v74)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  v80 = v147;
  v147 = *v159;
  v147(v80, 1, 1, v73);
  sub_1CEFCB59C(v64);
  v136 = v165[0];
  if ((v165[0] & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    swift_getAssociatedConformanceWitness();
    v73 = v162;
    sub_1CF9E7038();
    v81 = v165[6];
    v82 = v165[7];
    v83 = v165[8];
    v84 = v165[9];
    v85 = v165[10];
  }

  else
  {
    v86 = -1 << *(v165[0] + 32);
    v82 = v165[0] + 56;
    v83 = ~v86;
    v87 = -v86;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v85 = v88 & *(v165[0] + 56);
    v84 = 0;
  }

  v89 = v145;
  v90 = v144;
  v133 = 0;
  v134 = v83;
  v151 = (v160 + 32);
  v145 = (v144 + 6);
  v144 += 4;
  i = (v90 + 1);
  v132 = (v146 + 8);
  v141 = (v89 + 1);
  v146 = v81;
  v91 = v84;
  if ((v81 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  while (2)
  {
    while (2)
    {
      if (!sub_1CF9E7838())
      {
        v73 = v162;
LABEL_57:
        v147(v143, 1, 1, v73);
        sub_1CEFCB59C(v81);
        v136, v108, v109, v110, v111, v112, v113, v114;
        v135, v115, v116, v117, v118, v119, v120, v121;
        return;
      }

      v92 = v143;
      v93 = v162;
      sub_1CF9E8008();
      v73 = v93;
      swift_unknownObjectRelease();
      v94 = v91;
      v152 = v85;
LABEL_42:
      v147(v92, 0, 1, v73);
      (*v151)(v72, v92, v73);
      v98 = v158;
      (*(*v155[4] + 240))(v72, 1, v161, v163, v150);
      v99 = v157;
      if ((*v145)(v98, 1, v157) != 1)
      {
        v100 = v149;
        (*v144)(v149, v98, v99);
        WitnessTable = swift_getWitnessTable();
        if (sub_1CF937C7C(v99, WitnessTable))
        {
          if (v142 < 1)
          {
            (*i)(v149, v157);
            v72 = v156;
            v73 = v162;
            (*v154)(v156, v162);
            v107 = __OFADD__(v133++, 1);
            v81 = v146;
            v85 = v152;
            if (v107)
            {
              goto LABEL_66;
            }

            v91 = v94;
            if (v146 < 0)
            {
              continue;
            }

            goto LABEL_35;
          }

          --v142;
          sub_1CF478C28();

          v103 = v139;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v105 = v104;
          (*v132)(v103, v140);
          v106 = v105 * 1000000000.0;
          v72 = v156;
          if (COERCE__INT64(fabs(v105 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            return;
          }

          if (v106 <= -9.22337204e18)
          {
            goto LABEL_64;
          }

          if (v106 >= 9.22337204e18)
          {
            goto LABEL_65;
          }

          sub_1CF347AC0(v156, 128, v106, v161, v163, v153);

          (*i)(v149, v157);
          v102 = *v154;
        }

        else
        {
          (*i)(v100, v99);
          v102 = *v154;
          v72 = v156;
        }

        v73 = v162;
        v102(v72, v162);
        goto LABEL_47;
      }

      break;
    }

    v73 = v162;
    (*v154)(v72, v162);
    (*v141)(v98, v148);
LABEL_47:
    v91 = v94;
    v85 = v152;
    v81 = v146;
    if (v146 < 0)
    {
      continue;
    }

    break;
  }

LABEL_35:
  if (v85)
  {
    v95 = v85;
    v94 = v91;
LABEL_41:
    v152 = (v95 - 1) & v95;
    v97 = *(v81 + 48) + *(v160 + 72) * (__clz(__rbit64(v95)) | (v94 << 6));
    v92 = v143;
    (*(v160 + 16))(v143, v97, v73);
    goto LABEL_42;
  }

  v96 = v91;
  while (1)
  {
    v94 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v94 >= ((v83 + 64) >> 6))
    {
      goto LABEL_57;
    }

    v95 = *(v82 + 8 * v94);
    ++v96;
    if (v95)
    {
      goto LABEL_41;
    }
  }

LABEL_62:
  __break(1u);

  sub_1CEFCB59C(v146);
  (*i)(v149, v157);
  (*v154)(v72, v162);
  v136, v122, v123, v124, v125, v126, v127, v128;
  v63 = v135;
LABEL_7:
  v63, v56, v57, v58, v59, v60, v61, v62;
}

uint64_t sub_1CF197B94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t a7)
{
  v69 = a6;
  v66 = a5;
  v67 = a7;
  v61 = a4;
  v68 = a3;
  v72 = a1;
  v7 = *a2;
  v8 = *(*a2 + 2648);
  v9 = *(*a2 + 2632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v54 - v12;
  v62 = AssociatedTypeWitness;
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v54 - v16;
  v17 = *(v7 + 2640);
  v64 = v9;
  *&v18 = v9;
  *(&v18 + 1) = v17;
  v19 = *(v7 + 2656);
  v63 = v8;
  *&v20 = v8;
  *(&v20 + 1) = v19;
  v71[1] = v20;
  v71[0] = v18;
  v21 = type metadata accessor for ItemReconciliation(255, v71);
  v22 = sub_1CF9E75D8();
  v65 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  v25 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  v29 = v70;
  result = sub_1CF68DDB0(v72, v68, v69, *(v67 + 8), v24);
  if (!v29)
  {
    v31 = v17;
    v69 = v28;
    v70 = 0;
    v32 = v65;
    v33 = v66;
    if ((*(v25 + 48))(v24, 1, v21) == 1)
    {
      (*(v32 + 8))(v24, v22);
      v34 = v60;
      v35 = v62;
      (*(v60 + 16))(v58, v72, v62);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7068();
      v36 = v59;
      sub_1CF9E6FF8();
      return (*(v34 + 8))(v36, v35);
    }

    else
    {
      v37 = v69;
      (*(v25 + 32))(v69, v24, v21);
      v38 = &v37[*(v21 + 52)];
      if (v38[*(type metadata accessor for ItemReconciliationHalf(0, v31, v19, v39) + 52)] == 2)
      {
        return (*(v25 + 8))(v37, v21);
      }

      else
      {
        v68 = v21;
        v40 = *v33;
        v41 = v62;
        swift_getAssociatedConformanceWitness();

        v42 = v72;
        v43 = sub_1CF9E7048();
        v40, v44, v45, v46, v47, v48, v49, v50;
        if (v43)
        {
          sub_1CF9E7068();
          v51 = v55;
          sub_1CF9E7008();
          (*(v56 + 8))(v51, v57);
        }

        else
        {
          v52 = v60;
          (*(v60 + 16))(v58, v42, v41);
          sub_1CF9E7068();
          v53 = v59;
          sub_1CF9E6FF8();
          (*(v52 + 8))(v53, v41);
        }

        return (*(v25 + 8))(v69, v68);
      }
    }
  }

  return result;
}

uint64_t sub_1CF19811C@<X0>(int a1@<W0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v34[1] = a5;
  v39 = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E53C8();
  v34[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v37 = *a2;
  }

  else
  {
    memset(v38, 0, sizeof(v38));
    MEMORY[0x1EEE9AC00](result);
    LODWORD(v34[-2]) = a1;
    v34[-1] = v18;
    result = sub_1CEFE1894(sub_1CF198A9C);
    if (v5)
    {
      return result;
    }

    v37 = *(&v38[0] + 1);
  }

  *&v38[0] = 0;
  MEMORY[0x1EEE9AC00](result);
  LODWORD(v34[-4]) = a3;
  v34[-3] = &v37;
  v34[-2] = v38;
  result = sub_1CEFE1894(sub_1CF19856C);
  v17 = *&v38[0];
  if (v5)
  {
    if (*&v38[0])
    {
      return MEMORY[0x1D386CDC0](*&v38[0], -1, -1);
    }
  }

  else if (*&v38[0])
  {
    v19 = [objc_opt_self() defaultManager];
    v20 = [v19 stringWithFileSystemRepresentation:v17 length:strlen(v17)];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    sub_1CF9E58B8();
    v22, v23, v24, v25, v26, v27, v28, v29;
    return MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  else
  {
    v30 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "fpfs_fetch_url_for_handle: unexpected nil buffer", v33, 2u);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v36 = 83;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v34[0] + 8))(v11, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF19856C@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fsgetpath();
  *a1 = result;
  return result;
}

uint64_t sub_1CF1985AC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _DWORD *a7@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_16:
      sub_1CF9E6978();
      v18 = fpfs_fsetxattr();

      goto LABEL_17;
    }

    v19 = a7;
    v9 = *(result + 16);
    v10 = *(result + 24);
    a7 = sub_1CF9E5498();
    if (a7)
    {
      v11 = sub_1CF9E54C8();
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_21;
      }

      a7 = (a7 + v9 - v11);
    }

    if (__OFSUB__(v10, v9))
    {
      goto LABEL_19;
    }

    result = sub_1CF9E54B8();
    if (a7)
    {
LABEL_15:
      sub_1CF9E6978();
      v18 = fpfs_fsetxattr();

      a7 = v19;
LABEL_17:
      *a7 = v18;
      return v17;
    }

    __break(1u);
  }

  else if (!v8)
  {
    goto LABEL_16;
  }

  v12 = result;
  if (result >> 32 < result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v19 = a7;
  v13 = sub_1CF9E5498();
  if (!v13)
  {
    v17 = sub_1CF9E54B8();
    goto LABEL_23;
  }

  v14 = v13;
  v15 = sub_1CF9E54C8();
  if (__OFSUB__(v12, v15))
  {
    goto LABEL_20;
  }

  v16 = v12 - v15 + v14;
  v17 = sub_1CF9E54B8();
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return v17;
}

uint64_t sub_1CF198818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (*(result + 20) == *(a4 + 20) && *result == *a4)
  {
    v20 = v5;
    v21 = v6;
    v8 = *(result + 216);
    v19[10] = *(result + 200);
    v19[11] = v8;
    v9 = *(result + 248);
    v19[12] = *(result + 232);
    v19[13] = v9;
    v10 = *(result + 152);
    v19[6] = *(result + 136);
    v19[7] = v10;
    v11 = *(result + 184);
    v19[8] = *(result + 168);
    v19[9] = v11;
    v12 = *(result + 88);
    v19[2] = *(result + 72);
    v19[3] = v12;
    v13 = *(result + 120);
    v19[4] = *(result + 104);
    v19[5] = v13;
    v14 = result;
    v15 = *(result + 56);
    v19[0] = *(result + 40);
    v19[1] = v15;
    result = sub_1CF198AD4(v19);
    if (result)
    {
      v16 = *(v14 + 240);
      if (v16 <= 1023)
      {
        v17 = a5;
        if (!v16)
        {
          v18 = 1;
          goto LABEL_17;
        }

        if (v16 == 512)
        {
          v18 = 0;
          LODWORD(v16) = 2;
          goto LABEL_17;
        }
      }

      else
      {
        v17 = a5;
        switch(v16)
        {
          case 0x400:
            v18 = 0;
            LODWORD(v16) = 3;
            goto LABEL_17;
          case 0x800:
            v18 = 0;
            LODWORD(v16) = 4;
            goto LABEL_17;
          case 0x8000:
            v18 = 0;
            LODWORD(v16) = 5;
            goto LABEL_17;
        }
      }

      v18 = 0;
      LODWORD(v16) = 1;
LABEL_17:
      if (!v17)
      {
        goto LABEL_20;
      }

      if (v16 == 1)
      {
        if (v17 < 4u)
        {
LABEL_27:
          MEMORY[0x1EEE9AC00](result);
          return sub_1CEFE1894(sub_1CF198AE0);
        }
      }

      else
      {
        if (!v16)
        {
LABEL_20:
          if (v18)
          {
            return result;
          }

          goto LABEL_27;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }
      }

      if (v16 == v17)
      {
        return result;
      }

      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_1CF198A04@<X0>(_DWORD *a3@<X8>)
{
  result = fpfs_update_purgency();
  *a3 = result;
  return result;
}

unint64_t sub_1CF198A44()
{
  result = qword_1EDEAECF0;
  if (!qword_1EDEAECF0)
  {
    sub_1CF9E53C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAECF0);
  }

  return result;
}

uint64_t sub_1CF198A9C@<X0>(_DWORD *a1@<X8>)
{
  result = fstat(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1CF198B04(unsigned int *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

id sub_1CF198B14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = a4;
  v77 = a2;
  v78 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD908, &unk_1CF9FA540);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v74 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = sub_1CF9E53C8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v75 = v5;
  v22 = *(v10 + 16);
  v22(v16, v5, a3, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v9, 0, 1, v17);
    (*(v18 + 32))(v21, v9, v17);
    v25 = sub_1CF9E53A8();
    v26 = sub_1CF9E57E8();

    v27 = [v26 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v28 = sub_1CF9E6D48();

    v36 = *v28->tree;
    v76 = v17;
    if (v36)
    {
      isa = v28[1].super.isa;
      v38 = isa;
    }

    else
    {
      isa = 0;
    }

    v28, v29, v30, v31, v32, v33, v34, v35;
    v41 = v78(isa);

    v42 = [v26 userInfo];
    v43 = sub_1CF9E6638();

    v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v46 = v45;
    swift_getErrorValue();
    v47 = v81;
    v48 = v82;
    v84 = v82;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v83);
    (*(*(v48 - 8) + 16))(boxed_opaque_existential_0, v47, v48);
    sub_1CEFE9EB8(&v83, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v43;
    sub_1CF1D154C(v80, v44, v46, isUniquelyReferenced_nonNull_native);
    v46, v51, v52, v53, v54, v55, v56, v57;
    v58 = [v26 domain];
    if (!v58)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v60 = v59;
      v58 = sub_1CF9E6888();
      v60, v61, v62, v63, v64, v65, v66, v67;
    }

    v68 = [v26 code];
    v69 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v70 = sub_1CF9E6618();

    v71 = [v69 initWithDomain:v58 code:v68 userInfo:v70];

    (*(v18 + 8))(v21, v76);
  }

  else
  {
    v24(v9, 1, 1, v17);
    sub_1CEFCCC44(v9, &qword_1EC4BD908, &unk_1CF9FA540);
    (v22)(v13, v75, a3);
    v39 = sub_1CF9E7FB8();
    if (v39)
    {
      v40 = v39;
      (*(v74 + 8))(v13, a3);
    }

    else
    {
      v40 = swift_allocError();
      (*(v74 + 32))(v72, v13, a3);
    }

    v71 = v78(v40);
  }

  return v71;
}

id sub_1CF199074(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD908, &unk_1CF9FA540);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v53 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E53C8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v3, a2, v15);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v8, 0, 1, v13);
    (*(v14 + 32))(v17, v8, v13);
    v20 = sub_1CF9E53A8();
    v21 = sub_1CF9E57E8();

    v22 = [v21 userInfo];
    v23 = sub_1CF9E6638();

    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    swift_getErrorValue();
    v27 = v55;
    v28 = v56;
    v58 = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v57);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v27, v28);
    sub_1CEFE9EB8(&v57, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[1] = v23;
    sub_1CF1D154C(v54, v24, v26, isUniquelyReferenced_nonNull_native);
    v26, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v21 domain];
    if (!v38)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = v39;
      v38 = sub_1CF9E6888();
      v40, v41, v42, v43, v44, v45, v46, v47;
    }

    v48 = [v21 code];
    v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v50 = sub_1CF9E6618();

    a1 = [v49 initWithDomain:v38 code:v48 userInfo:v50];

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v19(v8, 1, 1, v13);
    sub_1CEFCCC44(v8, &qword_1EC4BD908, &unk_1CF9FA540);
    v51 = a1;
  }

  return a1;
}

double sub_1CF19947C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    v4 = *&v43[16];
    *a2 = *v43;
    *(a2 + 16) = v4;
    result = *&v43[25];
    *(a2 + 25) = *&v43[25];
    return result;
  }

  memset(v43, 0, 40);
  v43[40] = -1;
  sub_1CEFCCC44(v43, &qword_1EC4BD918, &unk_1CF9FA550);
  v6 = sub_1CF9E57E8();
  v7 = [v6 userInfo];

  v8 = sub_1CF9E6638();
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v10;
  if (!*v8->tree)
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
    v42 = v17;
LABEL_9:
    v42, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_10;
  }

  v18 = sub_1CEFE4328(v9, v10);
  v20 = v19;
  v17, v19, v21, v22, v23, v24, v25, v26;
  if ((v20 & 1) == 0)
  {
    v42 = v8;
    goto LABEL_9;
  }

  sub_1CEFD1104(*v8[1].tester + 32 * v18, v43);
  v8, v34, v35, v36, v37, v38, v39, v40;
  if (swift_dynamicCast())
  {
    v41 = v44;
    sub_1CF19947C(v44, a2);

    return result;
  }

LABEL_10:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = -1;
  return result;
}

uint64_t sub_1CF199648(uint64_t a1)
{
  v2 = sub_1CF19BE00();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF199684(uint64_t a1)
{
  v2 = sub_1CF19BE00();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF1996C4()
{
  sub_1CF19A730(v0, &v5);
  result = v10;
  switch(v10)
  {
    case 1u:
      sub_1CF1969CC(&v5);
      result = 56;
      break;
    case 2u:
      sub_1CF1969CC(&v5);
      result = 9;
      break;
    case 3u:
      sub_1CF1969CC(&v5);
      result = 10;
      break;
    case 4u:
      result = 11;
      break;
    case 5u:
      sub_1CF1969CC(&v5);
      result = 16;
      break;
    case 6u:
      result = 20;
      break;
    case 7u:
      result = 22;
      break;
    case 8u:
      result = 24;
      break;
    case 9u:
      result = 26;
      break;
    case 0xAu:
      result = 28;
      break;
    case 0xBu:
      result = 32;
      break;
    case 0xCu:
      result = 34;
      break;
    case 0xDu:
      sub_1CF1969CC(&v5);
      result = 42;
      break;
    case 0xEu:
      sub_1CF1969CC(&v5);
      result = 43;
      break;
    case 0xFu:
      sub_1CF1969CC(&v5);
      result = 44;
      break;
    case 0x10u:
      sub_1CF1969CC(&v5);
      result = 46;
      break;
    case 0x11u:
      result = 49;
      break;
    case 0x12u:
      result = 54;
      break;
    case 0x13u:
      if (v8 | v9 | v5 | v7 | v6)
      {
        v2 = v8 | v9 | v7 | v6;
        if (v5 == 1 && v2 == 0)
        {
          result = 2;
        }

        else if (v5 != 2 || v2)
        {
          if (v5 != 3 || v2)
          {
            if (v5 != 4 || v2)
            {
              if (v5 != 5 || v2)
              {
                if (v5 != 6 || v2)
                {
                  if (v5 != 7 || v2)
                  {
                    if (v5 != 8 || v2)
                    {
                      if (v5 != 9 || v2)
                      {
                        if (v5 != 10 || v2)
                        {
                          if (v5 != 11 || v2)
                          {
                            if (v5 != 12 || v2)
                            {
                              if (v5 != 13 || v2)
                              {
                                if (v5 != 14 || v2)
                                {
                                  if (v5 != 15 || v2)
                                  {
                                    if (v5 != 16 || v2)
                                    {
                                      if (v5 != 17 || v2)
                                      {
                                        if (v5 != 18 || v2)
                                        {
                                          if (v5 != 19 || v2)
                                          {
                                            if (v5 != 20 || v2)
                                            {
                                              if (v5 != 21 || v2)
                                              {
                                                if (v5 != 22 || v2)
                                                {
                                                  if (v5 != 23 || v2)
                                                  {
                                                    if (v5 != 24 || v2)
                                                    {
                                                      if (v5 != 25 || v2)
                                                      {
                                                        if (v5 != 26 || v2)
                                                        {
                                                          if (v5 != 27 || v2)
                                                          {
                                                            if (v5 != 28 || v2)
                                                            {
                                                              if (v5 != 29 || v2)
                                                              {
                                                                if (v5 != 30 || v2)
                                                                {
                                                                  if (v5 != 31 || v2)
                                                                  {
                                                                    if (v5 != 32 || v2)
                                                                    {
                                                                      if (v5 != 33 || v2)
                                                                      {
                                                                        if (v5 != 34 || v2)
                                                                        {
                                                                          if (v5 != 35 || v2)
                                                                          {
                                                                            if (v5 != 36 || v2)
                                                                            {
                                                                              if (v5 != 37 || v2)
                                                                              {
                                                                                if (v2)
                                                                                {
                                                                                  v4 = 0;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v4 = v5 == 38;
                                                                                }

                                                                                if (v4)
                                                                                {
                                                                                  result = 57;
                                                                                }

                                                                                else
                                                                                {
                                                                                  result = 58;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                result = 55;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              result = 53;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            result = 52;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          result = 51;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        result = 50;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      result = 48;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    result = 47;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  result = 45;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = 41;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = 40;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = 39;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = 38;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = 37;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = 36;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = 35;
                                                  }
                                                }

                                                else
                                                {
                                                  result = 33;
                                                }
                                              }

                                              else
                                              {
                                                result = 31;
                                              }
                                            }

                                            else
                                            {
                                              result = 30;
                                            }
                                          }

                                          else
                                          {
                                            result = 29;
                                          }
                                        }

                                        else
                                        {
                                          result = 27;
                                        }
                                      }

                                      else
                                      {
                                        result = 25;
                                      }
                                    }

                                    else
                                    {
                                      result = 23;
                                    }
                                  }

                                  else
                                  {
                                    result = 21;
                                  }
                                }

                                else
                                {
                                  result = 19;
                                }
                              }

                              else
                              {
                                result = 18;
                              }
                            }

                            else
                            {
                              result = 17;
                            }
                          }

                          else
                          {
                            result = 15;
                          }
                        }

                        else
                        {
                          result = 14;
                        }
                      }

                      else
                      {
                        result = 13;
                      }
                    }

                    else
                    {
                      result = 12;
                    }
                  }

                  else
                  {
                    result = 8;
                  }
                }

                else
                {
                  result = 7;
                }
              }

              else
              {
                result = 6;
              }
            }

            else
            {
              result = 5;
            }
          }

          else
          {
            result = 4;
          }
        }

        else
        {
          result = 3;
        }
      }

      else
      {
        result = 1;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CF199B0C()
{
  sub_1CF19A730(v0, v15);
  if (v16 != 16)
  {
    sub_1CF1969CC(v15);
    goto LABEL_5;
  }

  v1 = v15[0];
  if (!v15[0])
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v10;
    sub_1CF19A730(v0, v15);
    v11 = sub_1CF9E6948();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v8 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  *(v2 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v2 + 40) = v3;
  sub_1CF19A730(v0, v15);
  v4 = sub_1CF9E6948();
  *(v2 + 72) = MEMORY[0x1E69E6158];
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v2 + 88) = v6;
  swift_getErrorValue();
  *(v2 + 120) = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 96));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0);
  v8 = sub_1CF4E04E8(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_1CF199D4C(uint64_t result)
{
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

__n128 initializeWithCopy for VFSFileError(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 0x13)
  {
    v2 = *a2 + 19;
  }

  switch(v2)
  {
    case 0u:
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 40) = 0;
      return result;
    case 1u:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v14;
      v10 = 1;
      goto LABEL_18;
    case 2u:
      v9 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v9;
      v10 = 2;
      goto LABEL_18;
    case 3u:
      v13 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v13;
      v10 = 3;
      goto LABEL_18;
    case 4u:
      *a1 = *a2;
      *(a1 + 40) = 4;
      return result;
    case 5u:
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v15;
      v10 = 5;
LABEL_18:
      *(a1 + 40) = v10;

      break;
    case 6u:
      *a1 = *a2;
      *(a1 + 40) = 6;
      break;
    case 7u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 7;
      break;
    case 8u:
      *a1 = *a2;
      *(a1 + 40) = 8;
      break;
    case 9u:
      *a1 = *a2;
      *(a1 + 40) = 9;
      break;
    case 0xAu:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 10;
      break;
    case 0xBu:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 11;
      break;
    case 0xCu:
      *a1 = *a2;
      *(a1 + 40) = 12;
      break;
    case 0xDu:
      v16 = *(a2 + 3);
      *(a1 + 24) = v16;
      (**(v16 - 8))();
      *(a1 + 40) = 13;
      break;
    case 0xEu:
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      (**(v7 - 8))();
      *(a1 + 40) = 14;
      break;
    case 0xFu:
      v11 = *(a2 + 3);
      *(a1 + 24) = v11;
      (**(v11 - 8))();
      *(a1 + 40) = 15;
      break;
    case 0x10u:
      v3 = *a2;
      v5 = *a2;
      *a1 = v3;
      *(a1 + 40) = 16;
      break;
    case 0x11u:
      *a1 = *a2;
      *(a1 + 40) = 17;
      break;
    case 0x12u:
      *a1 = *a2;
      *(a1 + 40) = 18;
      break;
    default:
      v18 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v18;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      break;
  }

  return result;
}

uint64_t assignWithCopy for VFSFileError(uint64_t a1, int *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == a2)
  {
    return a1;
  }

  v10 = *(a1 + 40);
  if (v10 >= 0x13)
  {
    v10 = *a1 + 19;
  }

  if (v10 > 12)
  {
    if (v10 >= 16)
    {
      if (v10 == 16)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    goto LABEL_16;
  }

  if (v10 > 2)
  {
    if (v10 != 3 && v10 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v10 != 1 && v10 != 2)
  {
    goto LABEL_16;
  }

  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
LABEL_16:
  v11 = *(a2 + 40);
  if (v11 >= 0x13)
  {
    v11 = *a2 + 19;
  }

  switch(v11)
  {
    case 0u:
      v12 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *a1 = v12;
      *(a1 + 40) = 0;
      return a1;
    case 1u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = 1;
      goto LABEL_33;
    case 2u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = 2;
      goto LABEL_33;
    case 3u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = 3;
      goto LABEL_33;
    case 4u:
      *a1 = *a2;
      *(a1 + 40) = 4;
      return a1;
    case 5u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v17 = 5;
LABEL_33:
      *(a1 + 40) = v17;

      break;
    case 6u:
      *a1 = *a2;
      *(a1 + 40) = 6;
      break;
    case 7u:
      *a1 = *a2;
      *(a1 + 40) = 7;
      break;
    case 8u:
      *a1 = *a2;
      *(a1 + 40) = 8;
      break;
    case 9u:
      *a1 = *a2;
      *(a1 + 40) = 9;
      break;
    case 0xAu:
      *a1 = *a2;
      *(a1 + 40) = 10;
      break;
    case 0xBu:
      v16 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v16;
      *(a1 + 40) = 11;
      break;
    case 0xCu:
      *a1 = *a2;
      *(a1 + 40) = 12;
      break;
    case 0xDu:
      v20 = *(a2 + 3);
      *(a1 + 24) = v20;
      *(a1 + 32) = *(a2 + 4);
      (**(v20 - 8))(a1, a2);
      *(a1 + 40) = 13;
      break;
    case 0xEu:
      v15 = *(a2 + 3);
      *(a1 + 24) = v15;
      *(a1 + 32) = *(a2 + 4);
      (**(v15 - 8))(a1, a2);
      *(a1 + 40) = 14;
      break;
    case 0xFu:
      v18 = *(a2 + 3);
      *(a1 + 24) = v18;
      *(a1 + 32) = *(a2 + 4);
      (**(v18 - 8))(a1, a2);
      *(a1 + 40) = 15;
      break;
    case 0x10u:
      v13 = *a2;
      v14 = v13;
      *a1 = v13;
      *(a1 + 40) = 16;
      break;
    case 0x11u:
      *a1 = *a2;
      *(a1 + 40) = 17;
      break;
    case 0x12u:
      *a1 = *a2;
      *(a1 + 40) = 18;
      break;
    default:
      v21 = *a2;
      v22 = *(a2 + 1);
      *(a1 + 25) = *(a2 + 25);
      *a1 = v21;
      *(a1 + 16) = v22;
      break;
  }

  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for VFSFileError(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == a2)
  {
    return result;
  }

  v9 = *(a1 + 40);
  if (v9 >= 0x13)
  {
    v9 = *a1 + 19;
  }

  if (v9 <= 12)
  {
    if (v9 > 2)
    {
      if (v9 != 3 && v9 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

    v10 = a1;
    *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_16;
  }

  if (v9 < 16)
  {
    v10 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_16:
    a1 = v10;
    goto LABEL_17;
  }

  if (v9 == 16)
  {
    v10 = a1;

    goto LABEL_16;
  }

LABEL_17:
  v12 = *(a2 + 40);
  if (v12 >= 0x13)
  {
    v12 = *a2 + 19;
  }

  switch(v12)
  {
    case 0u:
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 40) = 0;
      break;
    case 1u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 1;
      break;
    case 2u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 2;
      break;
    case 3u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 3;
      break;
    case 4u:
      *a1 = *a2;
      *(a1 + 40) = 4;
      break;
    case 5u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 5;
      break;
    case 6u:
      *a1 = *a2;
      *(a1 + 40) = 6;
      break;
    case 7u:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 7;
      break;
    case 8u:
      *a1 = *a2;
      *(a1 + 40) = 8;
      break;
    case 9u:
      *a1 = *a2;
      *(a1 + 40) = 9;
      break;
    case 0xAu:
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 10;
      break;
    case 0xBu:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 11;
      break;
    case 0xCu:
      *a1 = *a2;
      *(a1 + 40) = 12;
      break;
    case 0xDu:
      result = *a2;
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 13;
      break;
    case 0xEu:
      result = *a2;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 14;
      break;
    case 0xFu:
      result = *a2;
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 15;
      break;
    case 0x10u:
      *a1 = *a2;
      *(a1 + 40) = 16;
      break;
    case 0x11u:
      *a1 = *a2;
      *(a1 + 40) = 17;
      break;
    case 0x12u:
      *a1 = *a2;
      *(a1 + 40) = 18;
      break;
    default:
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      break;
  }

  return result;
}
void _cryptex_core_dealloc(void *a1)
{
  cryptex_asset_array_destroy((a1 + 8));
  v2 = a1[20];
  if (v2)
  {
    os_release(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    os_release(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1[26];
  if (v5)
  {
    xpc_release(v5);
  }

  object_proto_destroy((a1 + 2));
}

void _cryptex_core_cx1_properties_dealloc(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    free(v3);
    *(a1 + 56) = 0;
  }

  object_proto_destroy(a1 + 16);
}

void *cryptex_core_create(uint64_t a1)
{
  v2 = _cryptex_core_alloc(224);
  v2[5] = a1;
  v2[22] = &_cryptex_asset_type_pdmg;
  v2[23] = &_cryptex_asset_type_c411;
  v2[24] = &_cryptex_asset_type_ltrs;
  v2[25] = &_cryptex_asset_type_roothash;
  v2[26] = 0;
  object_proto_init((v2 + 2), "com.apple.security.libcryptex.core", "cryptex.core");
  return v2;
}

int *cryptex_core_set_asset(int *result, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = result + 16;
  v4 = *(*a2 + 8);
  if (*&result[2 * v4[3] + 16])
  {
    cryptex_core_set_asset_cold_1(v13, buf, v4);
  }

  v6 = result;
  if (v4 == &_cryptex_asset_type_cpxd)
  {
    v8 = *(result + 2);
    *(v2 + 32) = v8;
    *(result + 22) = &_cryptex_asset_type_cpxd;
    v9 = *__error();
    v10 = *(v6 + 4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_2986F2000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: core has research dmg asset", buf, 0xCu);
    }

    result = __error();
    *result = v9;
    v4 = *(v2 + 8);
  }

  else if (v4 == &_cryptex_asset_type_gdmg)
  {
    *(v2 + 32) = *(result + 2);
    v4 = &_cryptex_asset_type_gdmg;
    v7 = 44;
LABEL_17:
    *&v6[v7] = v4;
    goto LABEL_18;
  }

  v12 = &_cryptex_asset_type_ginf;
  if (v4 == &_cryptex_asset_type_ginf)
  {
    v7 = 46;
    goto LABEL_16;
  }

  v12 = &_cryptex_asset_type_gtcd;
  if (v4 == &_cryptex_asset_type_gtcd)
  {
    v7 = 48;
    goto LABEL_16;
  }

  v12 = &_cryptex_asset_type_gtgv;
  if (v4 == &_cryptex_asset_type_gtgv)
  {
    v7 = 50;
LABEL_16:
    v4 = v12;
    goto LABEL_17;
  }

LABEL_18:
  *&v3[2 * v4[3]] = v2;
  *a2 = 0;
  return result;
}

uint64_t cryptex_core_set_assets_from_directory(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  file = 2;
  v6 = &cryptex_asset_types;
  v60 = *MEMORY[0x29EDCA608];
  v7 = &_cryptex_asset_type_root;
  do
  {
    v8 = v6[v4];
    v54 = -1;
    object = 0;
    if (v8 == v7)
    {
      v54 = dup_np();
      v53 = cryptex_asset_new(v7, &v54);
      goto LABEL_13;
    }

    v54 = openat(a2, *(v8 + 40), 0);
    if ((v54 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9)
    {
      if (v9 == 2)
      {
        v10 = a2;
        v11 = v7;
        v12 = v6;
        v13 = v5;
        v14 = *(a1 + 16);
        v15 = *__error();
        v16 = *(a1 + 32);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v8 + 40);
          v18 = "[anonymous]";
          if (v14)
          {
            v18 = v14;
          }

          buf[0].n128_u32[0] = 136446466;
          *(buf[0].n128_u64 + 4) = v18;
          buf[0].n128_u16[6] = 2080;
          *(&buf[0].n128_u64[1] + 6) = v17;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEBUG, "%{public}s: no asset of type: %s", buf, 0x16u);
        }

        *__error() = v15;
        v19 = 4;
        v5 = v13;
        v6 = v12;
        v7 = v11;
        a2 = v10;
        goto LABEL_28;
      }

      file = *__error();
      v26 = *(a1 + 16);
      v27 = *__error();
      v28 = *(a1 + 32);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_27:
        *__error() = v27;
        v19 = 14;
        goto LABEL_28;
      }

      buf[0].n128_u32[0] = 136446466;
      v29 = "[anonymous]";
      if (v26)
      {
        v29 = v26;
      }

      *(buf[0].n128_u64 + 4) = v29;
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = file;
      v30 = buf;
      v31 = v28;
      v32 = "%{public}s: openat: %{darwin.errno}d";
LABEL_26:
      _os_log_impl(&dword_2986F2000, v31, OS_LOG_TYPE_ERROR, v32, v30, 0x12u);
      goto LABEL_27;
    }

    ++v5;
    v20 = cryptex_asset_new(v8, &v54);
    v21 = v20;
    v53 = v20;
    if (v8 == &_cryptex_asset_type_im4m)
    {
      v59 = 0;
      memset(buf, 0, sizeof(buf));
      file = _read_file(v20[4], buf);
      if (file)
      {
        v33 = *(a1 + 16);
        v27 = *__error();
        v34 = *(a1 + 32);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *v55 = 136446466;
        v35 = "[anonymous]";
        if (v33)
        {
          v35 = v33;
        }

        *&v55[4] = v35;
        v56 = 1024;
        v57 = file;
        v30 = v55;
        v31 = v34;
        v32 = "%{public}s: failed to read im4m: %{darwin.errno}d";
        goto LABEL_26;
      }

      v36 = cryptex_metadata_read_from_file_xattrs(v21[4], &object);
      if (v36)
      {
        v37 = v36;
        v38 = *(a1 + 16);
        v39 = *__error();
        v40 = *(a1 + 32);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v55 = 136446466;
          v41 = "[anonymous]";
          if (v38)
          {
            v41 = v38;
          }

          *&v55[4] = v41;
          v56 = 1024;
          v57 = v37;
          _os_log_impl(&dword_2986F2000, v40, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", v55, 0x12u);
        }

        *__error() = v39;
      }

      v42 = cryptex_signature_create(buf, 0, object);
      cryptex_core_attach_signature(a1, v42);
      if (v42)
      {
        os_release(v42);
      }

LABEL_13:
      cryptex_core_set_asset(a1, &v53);
      v19 = 0;
      file = 0;
      goto LABEL_28;
    }

    if (v8 != &_cryptex_asset_type_cx1p)
    {
      goto LABEL_13;
    }

    *v55 = 0;
    file = cryptex_core_cx1_read_from_file(v20[4], v55);
    if (file)
    {
      v22 = *(a1 + 16);
      v23 = *__error();
      v24 = *(a1 + 32);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136446466;
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        *(buf[0].n128_u64 + 4) = v25;
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = file;
        _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_ERROR, "%{public}s: Failed to read Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v23;
      v19 = 14;
    }

    else
    {
      v19 = 0;
      *(a1 + 216) = os_retain(*v55);
    }

    if (*v55)
    {
      os_release(*v55);
    }

    if (!file)
    {
      goto LABEL_13;
    }

LABEL_28:
    if (object)
    {
      os_release(object);
    }

    if (v54 != -1 && close(v54) == -1)
    {
      cryptex_core_set_assets_from_directory_cold_1(v55, buf);
    }

    if ((v19 | 4) != 4)
    {
      return file;
    }

    ++v4;
  }

  while (v4 != 12);
  if (v5)
  {
    if (!*(a1 + 8 * *(*(a1 + 176) + 24) + 64))
    {
      v43 = *(a1 + 16);
      v44 = *__error();
      v45 = *(a1 + 32);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = "[anonymous]";
        if (v43)
        {
          v46 = v43;
        }

        buf[0].n128_u32[0] = 136446466;
        *(buf[0].n128_u64 + 4) = v46;
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 2;
        v47 = "%{public}s: No image asset was loaded from directory.: %{darwin.errno}d";
        goto LABEL_63;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v48 = *(a1 + 16);
    v44 = *__error();
    v45 = *(a1 + 32);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v49 = "[anonymous]";
      if (v48)
      {
        v49 = v48;
      }

      buf[0].n128_u32[0] = 136446466;
      *(buf[0].n128_u64 + 4) = v49;
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = 2;
      v47 = "%{public}s: No cryptex assets were loaded from directory.: %{darwin.errno}d";
LABEL_63:
      _os_log_impl(&dword_2986F2000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x12u);
    }

LABEL_64:
    *__error() = v44;
    return 2;
  }

  return file;
}

void *cryptex_core_attach_signature(uint64_t a1, void *object)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    os_release(v4);
  }

  result = os_retain(object);
  *(a1 + 160) = result;
  return result;
}

uint64_t cryptex_core_cx1_read_from_file(uint64_t a1, void **a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v41 = 0;
  error = 0;
  memset(v40, 0, sizeof(v40));
  v75 = 0u;
  memset(v76, 0, sizeof(v76));
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
  *buffer = 0u;
  v60 = 0u;
  memset(v61, 0, 31);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v47 = 0u;
  file = _read_file(a1, v40);
  if (file)
  {
    v4 = file;
    v5 = *__error();
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      *__error() = v5;
      buff_destroy(v40, v8);
      return v4;
    }

    *buf = 67109120;
    LODWORD(v44) = v4;
    v6 = MEMORY[0x29EDCA988];
    v7 = "Failed to read properties from file.: %{darwin.errno}d";
LABEL_4:
    _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, v7, buf, 8u);
    goto LABEL_5;
  }

  v10 = CFDataCreate(0, *&v40[0], *(&v40[0] + 1));
  if (!v10)
  {
    v5 = *__error();
    v4 = 12;
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109120;
    LODWORD(v44) = 12;
    v6 = MEMORY[0x29EDCA988];
    v7 = "Failed to create data.: %{darwin.errno}d";
    goto LABEL_4;
  }

  v11 = v10;
  v12 = CFPropertyListCreateWithData(0, v10, 0, 0, &error);
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFDictionaryGetTypeID())
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    Value = CFDictionaryGetValue(v15, @"Cryptex1,NonceDomain");
    if (Value)
    {
      v17 = Value;
      v18 = CFDictionaryGetValue(v15, @"Cryptex1,SubType");
      if (v18)
      {
        v19 = v18;
        v20 = CFDictionaryGetValue(v15, @"Cryptex1,Version");
        if (v20)
        {
          v21 = v20;
          v22 = CFDictionaryGetValue(v15, @"Cryptex1,PreauthVersion");
          if (v22)
          {
            v23 = v22;
            v24 = CFDictionaryGetValue(v15, @"MountedCryptex");
            if (v24)
            {
              v25 = v24;
              v26 = CFDictionaryGetValue(v15, @"Cryptex1,UseProductClass");
              if (v26)
              {
                v27 = v26;
                CFStringGetCString(v21, buffer, 255, 0x8000100u);
                CFStringGetCString(v23, v47, 255, 0x8000100u);
                UInt32 = _CFNumberGetUInt32(v17);
                v29 = _CFNumberGetUInt32(v19);
                v30 = CFBooleanGetValue(v25) != 0;
                v31 = CFBooleanGetValue(v27) != 0;
                v32 = cryptex_core_cx1_properties_create(UInt32, v29, buffer, v47, v30, v31);
                if (v32)
                {
                  v34 = v32;
                  v4 = 0;
                  if (a2)
                  {
                    *a2 = os_retain(v32);
                  }
                }

                else
                {
                  v39 = *__error();
                  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v44) = 12;
                    _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property object.: %{darwin.errno}d", buf, 8u);
                  }

                  v34 = 0;
                  *__error() = v39;
                  v4 = 12;
                }

                goto LABEL_40;
              }

              v37 = *__error();
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v44 = "Cryptex1,UseProductClass";
                v45 = 1024;
                v46 = 22;
                v38 = MEMORY[0x29EDCA988];
                goto LABEL_38;
              }

LABEL_39:
              v34 = 0;
              *__error() = v37;
              v4 = 22;
LABEL_40:
              buff_destroy(v40, v33);
              CFRelease(v13);
              CFRelease(v11);
              if (v34)
              {
                os_release(v34);
              }

              return v4;
            }

            v37 = *__error();
            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136315394;
            v44 = "MountedCryptex";
            v45 = 1024;
            v46 = 22;
            v38 = MEMORY[0x29EDCA988];
          }

          else
          {
            v37 = *__error();
            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136315394;
            v44 = "Cryptex1,PreauthVersion";
            v45 = 1024;
            v46 = 22;
            v38 = MEMORY[0x29EDCA988];
          }
        }

        else
        {
          v37 = *__error();
          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 136315394;
          v44 = "Cryptex1,Version";
          v45 = 1024;
          v46 = 22;
          v38 = MEMORY[0x29EDCA988];
        }
      }

      else
      {
        v37 = *__error();
        if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 136315394;
        v44 = "Cryptex1,SubType";
        v45 = 1024;
        v46 = 22;
        v38 = MEMORY[0x29EDCA988];
      }
    }

    else
    {
      v37 = *__error();
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      v44 = "Cryptex1,NonceDomain";
      v45 = 1024;
      v46 = 22;
      v38 = MEMORY[0x29EDCA988];
    }

LABEL_38:
    _os_log_impl(&dword_2986F2000, v38, OS_LOG_TYPE_ERROR, "Cryptex1 property plist is missing expected key: %s: %{darwin.errno}d", buf, 0x12u);
    goto LABEL_39;
  }

  v35 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v44 = error;
    v45 = 1024;
    v46 = 12;
    _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property list: %{public}@: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v35;
  buff_destroy(v40, v36);
  CFRelease(v11);
  return 12;
}

void *cryptex_core_set_cryptex1_properties(uint64_t a1, void *object)
{
  result = os_retain(object);
  *(a1 + 216) = result;
  return result;
}

uint64_t cryptex_core_set_assets_from_fds(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v8 = *(&cryptex_asset_types + a2);
  if ((*v8 & 0x20) != 0)
  {
    is_cryptex1 = cryptex_asset_type_is_cryptex1(*(&cryptex_asset_types + a2));
    v21 = &_cryptex_asset_type_roothash;
    if (is_cryptex1)
    {
      v21 = &_cryptex_asset_type_gtgv;
    }

    v45 = v21;
    v22 = &_cryptex_asset_type_c411;
    if (is_cryptex1)
    {
      v22 = &_cryptex_asset_type_ginf;
    }

    v46 = v22;
    v23 = &_cryptex_asset_type_ltrs;
    if (is_cryptex1)
    {
      v23 = &_cryptex_asset_type_gtcd;
    }

    v44 = v23;
    if ((*a3 & 0x80000000) != 0)
    {
      v36 = *(a1 + 16);
      v37 = *__error();
      v38 = *(a1 + 32);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = "[anonymous]";
        if (v36)
        {
          v39 = v36;
        }

        *buf = 136446466;
        *&buf[4] = v39;
        v48 = 1024;
        LODWORD(v49) = 9;
        _os_log_impl(&dword_2986F2000, v38, OS_LOG_TYPE_ERROR, "%{public}s: FD for image is invalid: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v37;
      return 9;
    }

    else
    {
      if (!a4 || (*a4 & 0x80000000) != 0)
      {
        v24 = *(a1 + 16);
        v25 = *__error();
        v26 = *(a1 + 32);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = "[anonymous]";
          if (v24)
          {
            v27 = v24;
          }

          *buf = 136446210;
          *&buf[4] = v27;
          _os_log_impl(&dword_2986F2000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for ltrs is invalid. OK for no-code cryptexes.", buf, 0xCu);
        }

        *__error() = v25;
      }

      if (!a5 || (*a5 & 0x80000000) != 0)
      {
        v28 = *(a1 + 16);
        v29 = *__error();
        v30 = *(a1 + 32);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = "[anonymous]";
          if (v28)
          {
            v31 = v28;
          }

          *buf = 136446210;
          *&buf[4] = v31;
          _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for c411 is invalid. Will generate one", buf, 0xCu);
        }

        *__error() = v29;
      }

      if ((*a6 & 0x80000000) != 0)
      {
        v40 = *(a1 + 16);
        v41 = *__error();
        v42 = *(a1 + 32);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = "[anonymous]";
          if (v40)
          {
            v43 = v40;
          }

          *buf = 136446466;
          *&buf[4] = v43;
          v48 = 1024;
          LODWORD(v49) = 81;
          _os_log_impl(&dword_2986F2000, v42, OS_LOG_TYPE_ERROR, "%{public}s: FD for im4m is invalid: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v41;
        return 81;
      }

      else
      {
        if (!a7 || (*a7 & 0x80000000) != 0)
        {
          v32 = *(a1 + 16);
          v33 = *__error();
          v34 = *(a1 + 32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = "[anonymous]";
            if (v32)
            {
              v35 = v32;
            }

            *buf = 136446210;
            *&buf[4] = v35;
            _os_log_impl(&dword_2986F2000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for volume hash is invalid. AuthAPFS will not be supported.", buf, 0xCu);
          }

          *__error() = v33;
        }

        *buf = cryptex_asset_new(v8, a3);
        cryptex_core_set_asset(a1, buf);
        if (a4 && (*a4 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v44, a4);
          cryptex_core_set_asset(a1, buf);
        }

        if (a7 && (*a7 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v45, a7);
          cryptex_core_set_asset(a1, buf);
        }

        if (a5 && (*a5 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v46, a5);
          cryptex_core_set_asset(a1, buf);
        }

        *buf = cryptex_asset_new(&_cryptex_asset_type_im4m, a6);
        cryptex_core_set_asset(a1, buf);
        return 0;
      }
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *__error();
    v12 = *(a1 + 32);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = "[anonymous]";
      *buf = 136446722;
      if (v10)
      {
        v13 = v10;
      }

      *&buf[4] = v13;
      v48 = 2048;
      v49 = a2;
      v50 = 1024;
      v51 = 22;
      _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_ERROR, "%{public}s: cryptex type is not image: %lld: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v11;
    return 22;
  }
}

uint64_t cryptex_core_open(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0;
  v24 = *MEMORY[0x29EDCA608];
  v5 = a1 + 64;
  while (1)
  {
    v6 = *(v5 + v4);
    if (v6)
    {
      v7 = cryptex_asset_open(*(v5 + v4), v2);
      if (v7)
      {
        v8 = v7;
        if (v7 != 37)
        {
          break;
        }
      }
    }

    v4 += 8;
    if (v4 == 96)
    {
      v9 = *(a1 + 16);
      v10 = *__error();
      v11 = *(a1 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        v18 = 136446210;
        v19 = v12;
        _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: Opened all assets from cryptex", &v18, 0xCu);
      }

      v8 = 0;
      goto LABEL_11;
    }
  }

  v14 = *(a1 + 16);
  v10 = *__error();
  v15 = *(a1 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = "[anonymous]";
    v17 = *(v6 + 32);
    if (v14)
    {
      v16 = v14;
    }

    v18 = 136446722;
    v19 = v16;
    v20 = 2082;
    v21 = v17;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Failed to open asset '%{public}s': %{darwin.errno}d", &v18, 0x1Cu);
  }

LABEL_11:
  *__error() = v10;
  return v8;
}

int *cryptex_core_close(uint64_t a1)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v3 = a1 + 64;
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      cryptex_asset_close(v4);
    }

    v2 += 8;
  }

  while (v2 != 96);
  v5 = *(a1 + 16);
  v6 = *__error();
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v10 = 136446210;
    v11 = v8;
    _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: Closed all assets from cryptex", &v10, 0xCu);
  }

  result = __error();
  *result = v6;
  return result;
}

uint64_t cryptex_core_get_num_assets(uint64_t a1)
{
  v1 = 0;
  v2 = 0uLL;
  do
  {
    v2 = vsubq_s32(v2, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(a1 + 64 + v1)), vceqzq_s64(*(a1 + 64 + v1 + 16)))));
    v1 += 32;
  }

  while (v1 != 96);
  return vaddvq_s32(v2);
}

uint64_t cryptex_core_image_authapfs_enabled(uint64_t a1)
{
  v1 = *(a1 + 64 + 8 * *(*(a1 + 200) + 24));
  LODWORD(result) = cryptex_asset_type_is_cryptex1(*(*(a1 + 64 + 8 * *(*(a1 + 176) + 24)) + 8));
  if (v1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t cryptex_core_pop_asset(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8 * *(a2 + 24);
  result = *(v2 + 64);
  *(v2 + 64) = 0;
  return result;
}

void *cryptex_core_attach_host(uint64_t a1, void *object)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    os_release(v4);
  }

  result = os_retain(object);
  *(a1 + 168) = result;
  return result;
}

char *cryptex_core_generate_identifier(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v1 = *(a1 + 16);
  v2 = arc4random();
  v3 = "anonymous";
  if (v1)
  {
    v3 = v1;
  }

  if (asprintf(&v5, "%s.%#x", v3, v2) < 0)
  {
    cryptex_core_generate_identifier_cold_1(&v6, v7);
  }

  return v5;
}

char *cryptex_core_generate_version()
{
  v3 = *MEMORY[0x29EDCA608];
  result = strdup("0.0.1");
  if (!result)
  {
    cryptex_core_generate_version_cold_1(&v1, v2);
  }

  return result;
}

uint64_t cryptex_core_get_nonce_domain_handle(void *a1, _DWORD *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (cryptex_core_is_cryptex1(a1))
    {
      v4 = a1[27];
      if (v4)
      {
        result = 0;
        *a2 = *(v4 + 40);
      }

      else
      {
        v15 = a1[2];
        v16 = *__error();
        v17 = a1[4];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = "[anonymous]";
          if (v15)
          {
            v18 = v15;
          }

          v19 = 136446466;
          v20 = v18;
          v21 = 1024;
          LODWORD(v22) = 2;
          _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_ERROR, "%{public}s: No Cryptex1 properties available.: %{darwin.errno}d", &v19, 0x12u);
        }

        *__error() = v16;
        return 2;
      }
    }

    else
    {
      v10 = a1[2];
      v11 = *__error();
      v12 = a1[4];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        v14 = *(a1[22] + 40);
        v19 = 136446722;
        v20 = v13;
        v21 = 2080;
        v22 = v14;
        v23 = 1024;
        v24 = 45;
        _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_ERROR, "%{public}s: not supported image type: %s: %{darwin.errno}d", &v19, 0x1Cu);
      }

      *__error() = v11;
      return 45;
    }
  }

  else
  {
    v6 = a1[2];
    v7 = *__error();
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = "[anonymous]";
      if (v6)
      {
        v9 = v6;
      }

      v19 = 136446466;
      v20 = v9;
      v21 = 1024;
      LODWORD(v22) = 22;
      _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, "%{public}s: Invalid input.: %{darwin.errno}d", &v19, 0x12u);
    }

    *__error() = v7;
    return 22;
  }

  return result;
}

BOOL cryptex_core_is_cryptex1(void *a1)
{
  v1 = a1[*(a1[22] + 24) + 8];
  v2 = a1[*(a1[23] + 24) + 8];
  v3 = a1[*(a1[24] + 24) + 8];
  v4 = a1[*(a1[25] + 24) + 8];
  if (v1)
  {
    is_cryptex1 = cryptex_asset_type_is_cryptex1(*(v1 + 8));
    v6 = 1;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  is_cryptex1 = 0;
  v6 = 0;
  if (v2)
  {
LABEL_3:
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v2 + 8));
    ++v6;
  }

LABEL_4:
  if (v3)
  {
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v3 + 8));
    ++v6;
  }

  if (v4)
  {
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v4 + 8));
    ++v6;
  }

  return is_cryptex1 && is_cryptex1 == v6;
}

uint64_t cryptex_core_copy_nonce_domain_desc(void *a1, char **a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__str = 0u;
  v19 = 0u;
  v17 = 0;
  v16 = 0;
  if (!a1)
  {
    return 22;
  }

  if (cryptex_core_is_cryptex1(a1))
  {
    nonce_domain_handle = cryptex_core_get_nonce_domain_handle(a1, &v16);
    if (nonce_domain_handle)
    {
      v5 = nonce_domain_handle;
      v6 = a1[2];
      v7 = *__error();
      v8 = a1[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = "[anonymous]";
        if (v6)
        {
          v9 = v6;
        }

        *buf = 136446466;
        v26 = v9;
        v27 = 1024;
        v28 = v5;
        v10 = "%{public}s: Failed to get nonce domain handle.: %{darwin.errno}d";
LABEL_14:
        _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    snprintf(__str, 0x64uLL, "Cryptex1 nonce domain = %u");
  }

  else
  {
    nonce_domain_index = cryptex_core_get_nonce_domain_index(a1, &v17);
    if (nonce_domain_index)
    {
      v5 = nonce_domain_index;
      v12 = a1[2];
      v7 = *__error();
      v8 = a1[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = "[anonymous]";
        if (v12)
        {
          v13 = v12;
        }

        *buf = 136446466;
        v26 = v13;
        v27 = 1024;
        v28 = v5;
        v10 = "%{public}s: Failed to get nonce domain index.: %{darwin.errno}d";
        goto LABEL_14;
      }

LABEL_15:
      *__error() = v7;
      return v5;
    }

    snprintf(__str, 0x64uLL, "nonce domain index %llu");
  }

  if (!a2)
  {
    return 0;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = strdup(__str);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = strdup(__str);
    if (!v14)
    {
      cryptex_core_copy_nonce_domain_desc_cold_1(__str);
    }
  }

  v5 = 0;
  *a2 = v14;
  return v5;
}

uint64_t cryptex_core_get_nonce_domain_index(void *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = a1[22];
  if (v2 == &_cryptex_asset_type_cpxd)
  {
    result = 0;
    v10 = 3;
LABEL_13:
    *a2 = v10;
    return result;
  }

  if (v2 == &_cryptex_asset_type_pdmg)
  {
    v11 = a1[7];
    if (v11 >= 2)
    {
      result = 0;
      if (v11 != 2)
      {
        return result;
      }

      v10 = 4;
    }

    else
    {
      result = 0;
      v10 = 2;
    }

    goto LABEL_13;
  }

  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = *(a1[22] + 40);
    v12 = 136446722;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    v16 = 1024;
    v17 = 45;
    _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "%{public}s: not supported image type: %s: %{darwin.errno}d", &v12, 0x1Cu);
  }

  *__error() = v5;
  return 45;
}

uint64_t cryptex_core_get_nonce_domain(void *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v18 = 0;
  v2 = 22;
  if (a1 && a2)
  {
    if (cryptex_core_is_cryptex1(a1))
    {
      nonce_domain_handle = cryptex_core_get_nonce_domain_handle(a1, &v18);
      if (nonce_domain_handle)
      {
        v2 = nonce_domain_handle;
        v6 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = "[anonymous]";
          if (v6)
          {
            v9 = v6;
          }

          *buf = 136446466;
          v21 = v9;
          v22 = 1024;
          v23 = v2;
          v10 = "%{public}s: Failed to get nonce domain handle.: %{darwin.errno}d";
LABEL_22:
          _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
          goto LABEL_23;
        }

        goto LABEL_23;
      }

      nonce_domain_from_index = img4_nonce_domain_get_from_handle();
    }

    else
    {
      nonce_domain_index = cryptex_core_get_nonce_domain_index(a1, &v19);
      if (nonce_domain_index)
      {
        v2 = nonce_domain_index;
        v12 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = "[anonymous]";
          if (v12)
          {
            v13 = v12;
          }

          *buf = 136446466;
          v21 = v13;
          v22 = 1024;
          v23 = v2;
          v10 = "%{public}s: Failed to get nonce domain index.: %{darwin.errno}d";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      nonce_domain_from_index = _img4_get_nonce_domain_from_index(v19);
    }

    *a2 = nonce_domain_from_index;
    if (!nonce_domain_from_index)
    {
      v15 = a1[2];
      v7 = *__error();
      v8 = a1[4];
      v2 = 2;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        if (v15)
        {
          v16 = v15;
        }

        *buf = 136446466;
        v21 = v16;
        v22 = 1024;
        v23 = 2;
        v10 = "%{public}s: No such nonce domain exists.: %{darwin.errno}d";
        goto LABEL_22;
      }

LABEL_23:
      *__error() = v7;
      return v2;
    }

    return 0;
  }

  return v2;
}

uint64_t cryptex_core_cx1_properties_create(int a1, int a2, const char *a3, const char *a4, char a5, char a6)
{
  v12 = _cryptex_core_cx1_properties_alloc(72);
  *(v12 + 40) = a1;
  *(v12 + 44) = a2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v13 = strdup(a3);
      if (v13)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v13 = strdup(a3);
    if (!v13)
    {
      cryptex_core_copy_nonce_domain_desc_cold_1(a3);
    }
  }

  *(v12 + 48) = v13;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = strdup(a4);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = strdup(a4);
    if (!v14)
    {
      cryptex_core_copy_nonce_domain_desc_cold_1(a4);
    }
  }

  *(v12 + 56) = v14;
  *(v12 + 64) = a5;
  *(v12 + 65) = a6;
  object_proto_init(v12 + 16, "com.apple.security.libcryptex.core", "cryptex.core");
  return v12;
}

uint64_t cryptex_core_cx1_properties_create_with_xpc_dictionary(void *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  uint64 = _xpc_dictionary_try_get_uint64(a1, "Cryptex1,NonceDomain", &v24);
  if (uint64)
  {
    v3 = uint64;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "Cryptex1,NonceDomain";
      v27 = 1024;
      v28 = v3;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
LABEL_19:
      v17 = 18;
LABEL_20:
      _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_ERROR, v6, buf, v17);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v7 = _xpc_dictionary_try_get_uint64(a1, "Cryptex1,SubType", &v23);
  if (v7)
  {
    v8 = v7;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "Cryptex1,SubType";
      v27 = 1024;
      v28 = v8;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
      goto LABEL_19;
    }

LABEL_21:
    v18 = __error();
    result = 0;
    *v18 = v4;
    return result;
  }

  string = _xpc_dictionary_try_get_string(a1, "Cryptex1,Version", &v22);
  if (string)
  {
    v10 = string;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "Cryptex1,Version";
      v27 = 1024;
      v28 = v10;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v11 = _xpc_dictionary_try_get_string(a1, "Cryptex1,PreauthVersion", &v21);
  if (v11)
  {
    v12 = v11;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "Cryptex1,PreauthVersion";
      v27 = 1024;
      v28 = v12;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v13 = _xpc_dictionary_try_get_BOOL(a1, "MountedCryptex", &v20 + 1);
  if (v13)
  {
    v14 = v13;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "MountedCryptex";
      v27 = 1024;
      v28 = v14;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v15 = _xpc_dictionary_try_get_BOOL(a1, "Cryptex1,UseProductClass", &v20);
  if (v15)
  {
    v16 = v15;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "Cryptex1,UseProductClass";
      v27 = 1024;
      v28 = v16;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (HIDWORD(v24) || HIDWORD(v23))
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 67109120;
    LODWORD(v26) = 84;
    v5 = MEMORY[0x29EDCA988];
    v6 = "Integer overflow.: %{darwin.errno}d";
    goto LABEL_27;
  }

  result = cryptex_core_cx1_properties_create(v24, v23, v22, v21, SHIBYTE(v20), v20);
  if (!result)
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 67109120;
    LODWORD(v26) = 12;
    v5 = MEMORY[0x29EDCA988];
    v6 = "Failed to create property object.: %{darwin.errno}d";
LABEL_27:
    v17 = 8;
    goto LABEL_20;
  }

  return result;
}

xpc_object_t cryptex_core_cx1_copy_xpc_dictionary(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "Cryptex1,NonceDomain", *(a1 + 40));
  xpc_dictionary_set_uint64(v2, "Cryptex1,SubType", *(a1 + 44));
  xpc_dictionary_set_string(v2, "Cryptex1,Version", *(a1 + 48));
  xpc_dictionary_set_string(v2, "Cryptex1,PreauthVersion", *(a1 + 56));
  xpc_dictionary_set_BOOL(v2, "MountedCryptex", *(a1 + 64));
  xpc_dictionary_set_BOOL(v2, "Cryptex1,UseProductClass", *(a1 + 65));
  return v2;
}

uint64_t cryptex_core_cx1_write_to_file(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x29EDCA608];
  error = 0;
  v4 = _CFNumberCreateFromUInt32(*(a1 + 40));
  v5 = _CFNumberCreateFromUInt32(*(a1 + 44));
  v6 = _CFStringCreateFromUTF8String(*(a1 + 48));
  v7 = _CFStringCreateFromUTF8String(*(a1 + 56));
  v8 = v7;
  if (*(a1 + 64))
  {
    v9 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v9 = *MEMORY[0x29EDB8EF8];
  }

  if (*(a1 + 65))
  {
    v10 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v10 = *MEMORY[0x29EDB8EF8];
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  *keys = xmmword_29EEA8278;
  v34 = *&off_29EEA8288;
  v35 = xmmword_29EEA8298;
  values[0] = v4;
  values[1] = v5;
  values[2] = v6;
  values[3] = v7;
  values[4] = v9;
  values[5] = v10;
  v11 = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v11)
  {
    v12 = v11;
    v13 = CFPropertyListCreateData(0, v11, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v13)
    {
      v14 = v13;
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v14);
      buff_init_signed(v25, 0, 0, BytePtr, Length);
      v18 = _write_file(a2, v25);
      if (v18)
      {
        v19 = *__error();
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v29) = v18;
          _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to write properties to file.: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v19;
      }

      buff_destroy(v25, v17);
      CFRelease(v14);
    }

    else
    {
      v22 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = error;
        v30 = 1024;
        v31 = 12;
        _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property list data: %{public}@: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v22;
      buff_destroy(v25, v23);
      v18 = 12;
    }

    CFRelease(v12);
    if (v10)
    {
LABEL_22:
      CFRelease(v10);
    }
  }

  else
  {
    v20 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v29) = 12;
      _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create dictionary.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v20;
    buff_destroy(v25, v21);
    v18 = 12;
    if (v10)
    {
      goto LABEL_22;
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v18;
}

uint64_t cryptex_core_parse_info_asset(void *a1, char **a2, char ***a3, BOOL *a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v5 = a1[*(a1[23] + 24) + 8];
  if (v5)
  {
    file = _read_file(*(v5 + 16), v39);
    if (file)
    {
      v10 = file;
      v11 = a1[2];
      v12 = *__error();
      v13 = a1[4];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "[anonymous]";
        if (v11)
        {
          v14 = v11;
        }

        *buf = 136446466;
        v42 = v14;
        v43 = 1024;
        LODWORD(v44) = v10;
        v15 = "%{public}s: Failed to read info asset.: %{darwin.errno}d";
LABEL_11:
        _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v20 = xpc_create_from_plist();
    if (!v20)
    {
      v28 = a1[2];
      v12 = *__error();
      v13 = a1[4];
      v10 = 22;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v29 = "[anonymous]";
      if (v28)
      {
        v29 = v28;
      }

      *buf = 136446466;
      v42 = v29;
      v43 = 1024;
      LODWORD(v44) = 22;
      v15 = "%{public}s: Failed to parse info asset as plist.: %{darwin.errno}d";
      goto LABEL_11;
    }

    v21 = v20;
    string = xpc_dictionary_get_string(v20, "CFBundleIdentifier");
    if (string)
    {
      v23 = string;
      v24 = xpc_dictionary_get_string(v21, "CFBundleVersion");
      if (v24)
      {
        v26 = v24;
        if (a4)
        {
          _xpc_dictionary_try_get_BOOL(v21, "NoCode", a4);
        }

        if (a2)
        {
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v27 = strdup(v23);
              if (v27)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v27 = strdup(v23);
            if (!v27)
            {
              cryptex_core_copy_nonce_domain_desc_cold_1(v23);
            }
          }

          *a2 = v27;
        }

        if (a3)
        {
          *a3 = cryptex_version_new(v26);
        }

        buff_destroy(v39, v25);
        v10 = 0;
        goto LABEL_42;
      }

      v35 = a1[2];
      v31 = *__error();
      v36 = a1[4];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = "[anonymous]";
        *buf = 136446722;
        if (v35)
        {
          v37 = v35;
        }

        v42 = v37;
        v43 = 2080;
        v44 = "CFBundleVersion";
        v45 = 1024;
        v46 = 22;
        v34 = v36;
LABEL_35:
        _os_log_impl(&dword_2986F2000, v34, OS_LOG_TYPE_ERROR, "%{public}s: Info dictionary missing expected key: '%s': %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    else
    {
      v30 = a1[2];
      v31 = *__error();
      v32 = a1[4];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = "[anonymous]";
        *buf = 136446722;
        if (v30)
        {
          v33 = v30;
        }

        v42 = v33;
        v43 = 2080;
        v44 = "CFBundleIdentifier";
        v45 = 1024;
        v46 = 22;
        v34 = v32;
        goto LABEL_35;
      }
    }

    *__error() = v31;
    buff_destroy(v39, v38);
    v10 = 22;
LABEL_42:
    os_release(v21);
    return v10;
  }

  v16 = a1[2];
  v12 = *__error();
  v13 = a1[4];
  v10 = 2;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = "[anonymous]";
    if (v16)
    {
      v17 = v16;
    }

    *buf = 136446466;
    v42 = v17;
    v43 = 1024;
    LODWORD(v44) = 2;
    v15 = "%{public}s: Cryptex has no metadata.: %{darwin.errno}d";
    goto LABEL_11;
  }

LABEL_12:
  *__error() = v12;
  buff_destroy(v39, v18);
  return v10;
}

uint64_t cryptex_core_select_chip(void *a1)
{
  if (cryptex_core_is_cryptex1(a1))
  {
    return MEMORY[0x29EDC96D0];
  }

  return img4_chip_select_personalized_ap();
}

CFErrorRef cryptex_core_write_metadata_to_xattrs(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v40 = *MEMORY[0x29EDCA608];
  object = 0;
  bzero(v39, 0x400uLL);
  v4 = realpath_np();
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    v7 = *(a1 + 32);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v33 = 136446466;
      v34 = v9;
      v35 = 1024;
      LODWORD(v36) = v5;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986F2000, v7, 16, "%{public}s: realpath %{darwin.errno}d", COERCE_DOUBLE(136446466), &v33, 18);
    }

    else
    {
      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v33 = 136446466;
      v34 = v17;
      v35 = 1024;
      LODWORD(v36) = v4;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: realpath %{darwin.errno}d", COERCE_DOUBLE(136446466), &v33, 18);
    }

    v18 = v10;
    v19 = 1027;
  }

  else
  {
    v11 = cryptex_metadata_read_from_cryptex(a1, &object);
    if (v11)
    {
      v12 = v11;
      v6 = v11;
      v13 = *(a1 + 32);
      if (v13)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v15 = *(a1 + 16);
        if (!v15)
        {
          v15 = "[anonymous]";
        }

        v33 = 136446466;
        v34 = v15;
        v35 = 1024;
        LODWORD(v36) = v12;
        v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_2986F2000, v13, 16, "%{public}s: failed to get cryptex metadata %{darwin.errno}d", COERCE_DOUBLE(136446466), &v33, 18);
      }

      else
      {
        v28 = *(a1 + 16);
        if (!v28)
        {
          v28 = "[anonymous]";
        }

        v33 = 136446466;
        v34 = v28;
        v35 = 1024;
        LODWORD(v36) = v11;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get cryptex metadata %{darwin.errno}d", COERCE_DOUBLE(136446466), &v33, 18);
      }

      v18 = v16;
      v19 = 1034;
    }

    else
    {
      v20 = cryptex_metadata_write_to_file_xattrs(object, v2);
      if (!v20)
      {
        Error = 0;
        goto LABEL_40;
      }

      v21 = v20;
      v6 = v20;
      v22 = *(a1 + 32);
      if (v22)
      {
        v23 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v24 = *(a1 + 16);
        if (v23)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v33 = 136446722;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = "[anonymous]";
        }

        v34 = v26;
        v35 = 2080;
        v36 = v39;
        v37 = 1024;
        v38 = v21;
        v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986F2000, v22, 16, "%{public}s: failed to write cryptex metadata to %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v33, 28);
      }

      else
      {
        v30 = "[anonymous]";
        if (*(a1 + 16))
        {
          v30 = *(a1 + 16);
        }

        v33 = 136446722;
        v34 = v30;
        v35 = 2080;
        v36 = v39;
        v37 = 1024;
        v38 = v20;
        v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write cryptex metadata to %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v33, 28);
      }

      v18 = v27;
      v19 = 1043;
    }
  }

  Error = createError("cryptex_core_write_metadata_to_xattrs", "cryptex_core.c", v19, "com.apple.security.cryptex.posix", v6, 0, v18);
  free(v18);
LABEL_40:
  if (object)
  {
    os_release(object);
  }

  return Error;
}

CFErrorRef cryptex_core_metadata_matches(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  xdict = 0;
  v6 = cryptex_metadata_read_from_cryptex(a1, &xdict);
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = *(a1 + 32);
    if (v9)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v23 = 136446466;
      v24 = v11;
      v25 = 1024;
      v26 = v7;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986F2000, v9, 16, "%{public}s: failed to get cryptex metadata %{darwin.errno}d", COERCE_DOUBLE(136446466), &v23, 18);
    }

    else
    {
      v19 = *(a1 + 16);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v23 = 136446466;
      v24 = v19;
      v25 = 1024;
      v26 = v6;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get cryptex metadata %{darwin.errno}d", COERCE_DOUBLE(136446466), &v23, 18);
    }

    v20 = v12;
    Error = createError("cryptex_core_metadata_matches", "cryptex_core.c", 1067, "com.apple.security.cryptex.posix", v8, 0, v12);
    free(v20);
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "com.apple.CryptexIdentifier");
    v14 = xpc_dictionary_get_value(a2, "com.apple.CryptexIdentifier");
    v15 = xpc_dictionary_get_value(xdict, "com.apple.CryptexVersion");
    v16 = xpc_dictionary_get_value(a2, "com.apple.CryptexVersion");
    LOBYTE(v17) = 0;
    if (value)
    {
      if (v14)
      {
        if (v15)
        {
          if (v16)
          {
            v17 = xpc_equal(value, v14);
            if (v17)
            {
              LOBYTE(v17) = xpc_equal(v15, v16);
            }
          }
        }
      }
    }

    Error = 0;
    if (a3)
    {
      *a3 = v17;
    }
  }

  if (xdict)
  {
    os_release(xdict);
  }

  return Error;
}

CFErrorRef cryptex_core_metadata_matches_xattrs(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v35 = *MEMORY[0x29EDCA608];
  object = 0;
  bzero(v34, 0x400uLL);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = *(a1 + 32);
    if (v9)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v28 = 136446466;
      v29 = v11;
      v30 = 1024;
      LODWORD(v31) = v7;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986F2000, v9, 16, "%{public}s: realpath %{darwin.errno}d", COERCE_DOUBLE(136446466), &v28, 18);
    }

    else
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      v28 = 136446466;
      v29 = v21;
      v30 = 1024;
      LODWORD(v31) = v6;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: realpath %{darwin.errno}d", COERCE_DOUBLE(136446466), &v28, 18);
    }

    v22 = v12;
    v23 = 1103;
  }

  else
  {
    v13 = cryptex_metadata_read_from_file_xattrs(v4, &object);
    if (!v13)
    {
      Error = cryptex_core_metadata_matches(a1, object, a3);
      goto LABEL_28;
    }

    v14 = v13;
    v8 = v13;
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v17 = *(a1 + 16);
      if (v16)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v28 = 136446722;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = "[anonymous]";
      }

      v29 = v19;
      v30 = 2080;
      v31 = v34;
      v32 = 1024;
      v33 = v14;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986F2000, v15, 16, "%{public}s: failed to read cryptex metadata from %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v28, 28);
    }

    else
    {
      v25 = "[anonymous]";
      if (*(a1 + 16))
      {
        v25 = *(a1 + 16);
      }

      v28 = 136446722;
      v29 = v25;
      v30 = 2080;
      v31 = v34;
      v32 = 1024;
      v33 = v13;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to read cryptex metadata from %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v28, 28);
    }

    v22 = v20;
    v23 = 1110;
  }

  Error = createError("cryptex_core_metadata_matches_xattrs", "cryptex_core.c", v23, "com.apple.security.cryptex.posix", v8, 0, v22);
  free(v22);
LABEL_28:
  if (object)
  {
    os_release(object);
  }

  return Error;
}

uint64_t OUTLINED_FUNCTION_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, int a11)
{

  return _os_log_send_and_compose_impl(v14, v11, v12, 80, a6, v13, 16, a9, a1.n128_f64[0]);
}

uint64_t OUTLINED_FUNCTION_2(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, int a11)
{

  return _os_log_send_and_compose_impl(v14, v12, v11, 80, a6, v13, 16, a9, a1.n128_f64[0]);
}

double OUTLINED_FUNCTION_3()
{
  *v0 = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_6(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

size_t OUTLINED_FUNCTION_7(const char *__s)
{

  return strlen(__s);
}

const char **cryptex_content_type_parse(char *__s2)
{
  v2 = 0;
  while (1)
  {
    v3 = cryptex_content_types[v2];
    if (!strcmp(*v3, __s2))
    {
      break;
    }

    if (++v2 == 7)
    {
      return 0;
    }
  }

  return v3;
}

const char *cryptex_session_state_to_string(unint64_t a1)
{
  if (a1 > 5)
  {
    return "UNK";
  }

  else
  {
    return off_29EEA8350[a1];
  }
}

const char *cryptex_session_event_to_string(uint64_t a1)
{
  if (a1 > 7)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return "FAIL";
      }

      if (a1 == 64)
      {
        return "ALL";
      }
    }

    else
    {
      if (a1 == 8)
      {
        return "STOP";
      }

      if (a1 == 16)
      {
        return "TERMINATED";
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      return "START";
    }

    if (a1 == 4)
    {
      return "READY";
    }
  }

  else
  {
    if (!a1)
    {
      return "NONE";
    }

    if (a1 == 1)
    {
      return "STAGING";
    }
  }

  return "UNKNOWN";
}

void _session_core_dealloc(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    free(v7);
  }

  object_proto_destroy((a1 + 2));
}

char *session_core_generate_username(const char *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = 0;
  if (asprintf(&v2, "cryptex_%s", a1) < 0)
  {
    session_core_generate_username_cold_1(&v3, v4);
  }

  return v2;
}

uint64_t session_core_create(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = _session_core_alloc(128);
  object_proto_init(v2 + 16, "com.apple.security.libcryptex.core", "cryptex.session");
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0x100000000;
  *(v2 + 72) = xpc_array_create_empty();
  *(v2 + 80) = xpc_dictionary_create_empty();
  memset(out, 0, sizeof(out));
  memset(__s1, 0, 37);
  uuid_generate_random(out);
  uuid_unparse(out, __s1);
  v3 = strdup(__s1);
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = v3;
  username = session_core_generate_username(v3);
  *(v2 + 104) = username;
  v6 = 0;
  if (asprintf(&v6, "/Users/%s", username) < 0)
  {
    session_core_generate_username_cold_1(out, __s1);
  }

  *(v2 + 112) = v6;
  *(v2 + 120) = 0;
  return v2;
}

unint64_t cryptex_session_core_transition(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  v5 = v4 != 3 && a2 == 8;
  v6 = 5;
  if (!v5)
  {
    v6 = 6;
  }

  v7 = 5;
  if (a2 != 16)
  {
    v7 = v6;
  }

  v8 = 6;
  if (a2 == 8)
  {
    v8 = 4;
  }

  if (v4 != 3)
  {
    v8 = v6;
  }

  if ((v4 - 4) >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (a2 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v6;
  }

  v12 = 3;
  if (a2 != 4)
  {
    v12 = v6;
  }

  if (v4 == 2)
  {
    v6 = v12;
  }

  if (v4 == 1)
  {
    v6 = v11;
  }

  if (!v4)
  {
    v6 = v10;
  }

  if (v4 <= 2)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  v14 = a1[2];
  v15 = *__error();
  v16 = a1[4];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = "[anonymous]";
    }

    v18 = a1[12];
    v19 = cryptex_session_state_to_string(a1[6]);
    v21 = 136447234;
    v22 = v17;
    v23 = 2080;
    v24 = v18;
    v25 = 2080;
    v26 = v19;
    v27 = 2080;
    v28 = cryptex_session_event_to_string(a2);
    v29 = 2080;
    v30 = cryptex_session_state_to_string(v13);
    _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: %s: state %s, event %s -> state %s", &v21, 0x34u);
  }

  *__error() = v15;
  a1[6] = v13;
  return v13;
}

__n128 cryptex_session_core_merge(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 96);
  if (!v3)
  {
    v13 = *(a1 + 16);
    v14 = *__error();
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "[anonymous]";
      if (v13)
      {
        v16 = v13;
      }

      v40 = 136446210;
      v41 = v16;
      v17 = "%{public}s: Invalid session core main - failed to merge.";
      goto LABEL_17;
    }

LABEL_18:
    *__error() = v14;
    return result;
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    v18 = *(a1 + 16);
    v14 = *__error();
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "[anonymous]";
      if (v18)
      {
        v19 = v18;
      }

      v40 = 136446210;
      v41 = v19;
      v17 = "%{public}s: Invalid session core update - failed to merge.";
LABEL_17:
      _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_DEFAULT, v17, &v40, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (!strcmp(v3, v5))
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v20 = *(a1 + 16);
      v21 = *__error();
      v22 = *(a1 + 32);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = "[anonymous]";
        }

        v24 = *(a1 + 96);
        v25 = cryptex_session_state_to_string(*(a1 + 48));
        v26 = cryptex_session_state_to_string(*(a2 + 48));
        v40 = 136447234;
        v41 = v23;
        v42 = 2048;
        v43 = a1;
        v44 = 2080;
        v45 = v24;
        v46 = 2080;
        *v47 = v25;
        *&v47[8] = 2080;
        v48 = v26;
        _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s state: %s -> %s", &v40, 0x34u);
      }

      *__error() = v21;
    }

    if (*(a1 + 40) != *(a2 + 40))
    {
      v27 = *(a1 + 16);
      v28 = *__error();
      v29 = *(a1 + 32);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 96);
        v31 = "[anonymous]";
        v32 = *(a1 + 40);
        if (v27)
        {
          v31 = v27;
        }

        v33 = *(a2 + 40);
        v40 = 136447234;
        v41 = v31;
        v42 = 2048;
        v43 = a1;
        v44 = 2080;
        v45 = v30;
        v46 = 1024;
        *v47 = v32;
        *&v47[4] = 1024;
        *&v47[6] = v33;
        _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s uid: %d -> %d", &v40, 0x2Cu);
      }

      *__error() = v28;
    }

    if (!*(a1 + 112) && *(a2 + 112))
    {
      v34 = *(a1 + 16);
      v35 = *__error();
      v36 = *(a1 + 32);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = "[anonymous]";
        if (v34)
        {
          v37 = v34;
        }

        v38 = *(a1 + 96);
        v39 = *(a2 + 112);
        v40 = 136446978;
        v41 = v37;
        v42 = 2048;
        v43 = a1;
        v44 = 2080;
        v45 = v38;
        v46 = 2080;
        *v47 = v39;
        _os_log_impl(&dword_2986F2000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s homedir: (null) -> %s", &v40, 0x2Au);
      }

      *__error() = v35;
      *(a1 + 112) = strdup(*(a2 + 112));
    }

    *(a1 + 48) = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 56);
    *(a1 + 56) = result;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *__error();
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "[anonymous]";
      if (v6)
      {
        v9 = v6;
      }

      v10 = *(a2 + 96);
      v11 = *(a1 + 96);
      v40 = 136446722;
      v41 = v9;
      v42 = 2080;
      v43 = v10;
      v44 = 2080;
      v45 = v11;
      _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Trying to merge %s onto different session %s", &v40, 0x20u);
    }

    *__error() = v7;
  }

  return result;
}

char *cryptex_session_core_copy_homedir(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return strdup(result);
  }

  return result;
}

void cryptex_session_core_set_homedir(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 112) = v5;
  value = xpc_dictionary_get_value(*(a1 + 80), "CRYPTEX_SESSION");
  if (value)
  {

    xpc_dictionary_set_string(value, "~/", v5);
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(*(a1 + 80), "CRYPTEX_SESSION", empty);
    xpc_dictionary_set_string(empty, "~/", v5);

    xpc_release(empty);
  }
}

xpc_object_t cryptex_session_core_set_endpoint(uint64_t a1, xpc_object_t object)
{
  result = xpc_copy(object);
  *(a1 + 88) = result;
  return result;
}

xpc_object_t cryptex_session_core_copy_xpc_object(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "state", *(a1 + 48));
  xpc_dictionary_set_int64(v2, "uid", *(a1 + 40));
  xpc_dictionary_set_int64(v2, "attributes", *(a1 + 56));
  xpc_dictionary_set_uint64(v2, "homesize", *(a1 + 64));
  xpc_dictionary_set_BOOL(v2, "simple_session", *(a1 + 120));
  v3 = *(a1 + 96);
  if (v3)
  {
    xpc_dictionary_set_string(v2, "name", v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    xpc_dictionary_set_value(v2, "cryptex_array", v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    xpc_dictionary_set_value(v2, "overrides", v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    xpc_dictionary_set_string(v2, "username", v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    xpc_dictionary_set_string(v2, "home_directory", v7);
  }

  if (*(a1 + 88) && MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA10])
  {
    xpc_dictionary_set_value(v2, "endpoint", *(a1 + 88));
  }

  return v2;
}

uint64_t cryptex_session_core_create_from_xpc(void *a1)
{
  v2 = _session_core_alloc(128);
  object_proto_init(v2 + 16, "com.apple.security.libcryptex.core", "cryptex.session");
  *(v2 + 48) = xpc_dictionary_get_int64(a1, "state");
  *(v2 + 40) = xpc_dictionary_get_int64(a1, "uid");
  *(v2 + 56) = xpc_dictionary_get_int64(a1, "attributes");
  *(v2 + 64) = xpc_dictionary_get_uint64(a1, "homesize");
  array = xpc_dictionary_get_array(a1, "cryptex_array");
  if (!array)
  {
    cryptex_session_core_create_from_xpc_cold_5();
  }

  v4 = array;
  if (xpc_array_get_count(array))
  {
    empty = xpc_copy(v4);
  }

  else
  {
    empty = xpc_array_create_empty();
  }

  *(v2 + 72) = empty;
  dictionary = xpc_dictionary_get_dictionary(a1, "overrides");
  if (!dictionary)
  {
    cryptex_session_core_create_from_xpc_cold_4();
  }

  *(v2 + 80) = xpc_copy(dictionary);
  string = xpc_dictionary_get_string(a1, "username");
  if (!string)
  {
    cryptex_session_core_create_from_xpc_cold_3();
  }

  *(v2 + 104) = strdup(string);
  v8 = xpc_dictionary_get_string(a1, "name");
  if (!v8)
  {
    cryptex_session_core_create_from_xpc_cold_2();
  }

  *(v2 + 96) = strdup(v8);
  v9 = xpc_dictionary_get_string(a1, "home_directory");
  if (!v9)
  {
    cryptex_session_core_create_from_xpc_cold_1();
  }

  *(v2 + 112) = strdup(v9);
  if (xpc_dictionary_get_BOOL(a1, "simple_session"))
  {
    *(v2 + 120) = 1;
  }

  value = xpc_dictionary_get_value(a1, "endpoint");
  if (value)
  {
    v11 = value;
    if (MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA10])
    {
      *(v2 + 88) = xpc_copy(v11);
    }
  }

  return v2;
}

uint64_t _IOErrorGetErrno(uint64_t result)
{
  switch(result)
  {
    case 0xE00002BD:
    case 0xE00002BE:
    case 0xE00002C8:
    case 0xE00002DE:
      result = 12;
      break;
    case 0xE00002BF:
      result = 72;
      break;
    case 0xE00002C0:
    case 0xE00002D7:
    case 0xE00002D9:
    case 0xE00002DA:
      result = 19;
      break;
    case 0xE00002C1:
      result = 1;
      break;
    case 0xE00002C2:
      result = 22;
      break;
    case 0xE00002C3:
    case 0xE00002C4:
    case 0xE00002C5:
    case 0xE00002CC:
      result = 35;
      break;
    case 0xE00002C6:
      result = 94;
      break;
    case 0xE00002C7:
      result = 45;
      break;
    case 0xE00002C9:
    case 0xE00002CA:
    case 0xE00002D3:
    case 0xE00002D4:
      result = 5;
      break;
    case 0xE00002CB:
    case 0xE00002DC:
    case 0xE00002DF:
    case 0xE00002E0:
    case 0xE00002E3:
    case 0xE00002E4:
    case 0xE00002E5:
    case 0xE00002E6:
    case 0xE00002E7:
    case 0xE00002E8:
    case 0xE00002EA:
      goto LABEL_10;
    case 0xE00002CD:
      result = 9;
      break;
    case 0xE00002CE:
    case 0xE00002CF:
    case 0xE00002E2:
      result = 13;
      break;
    case 0xE00002D0:
      result = 14;
      break;
    case 0xE00002D1:
    case 0xE00002E9:
      result = 83;
      break;
    case 0xE00002D2:
    case 0xE00002D5:
      result = 16;
      break;
    case 0xE00002D6:
      result = 60;
      break;
    case 0xE00002D8:
      result = 6;
      break;
    case 0xE00002DB:
      result = 28;
      break;
    case 0xE00002DD:
      result = 17;
      break;
    case 0xE00002E1:
      result = 7;
      break;
    case 0xE00002EB:
      result = 89;
      break;
    default:
      if (result)
      {
LABEL_10:
        result = 104;
      }

      break;
  }

  return result;
}

void _cryptex_base_dealloc(uint64_t a1)
{
  dispatch_release(*(a1 + 24));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void cryptex_init(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = a4;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  *(a1 + 24) = dispatch_queue_create("com.apple.security.libcryptex.core.dq", initially_inactive);
  *(a1 + 32) = dispatch_queue_create("com.apple.security.libcryptex.core.targetdq", 0);
  *(a1 + 40) = a3;
  if (a3)
  {
    os_retain(a1);
    dispatch_async_f(*(a1 + 24), a1, _cryptex_init);
  }

  if (a2)
  {
    v8 = *(a1 + 24);

    dispatch_set_target_queue(v8, a2);
  }
}

void _cryptex_init(void (**a1)(void))
{
  a1[5]();

  os_release(a1);
}

uint64_t _cpxd_evaluate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    return 0;
  }

  if (*(a2 + 53))
  {
    return 0;
  }

  return 13;
}

uint64_t _cryptex_asset_generic_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, const char **a5)
{
  v37 = *MEMORY[0x29EDCA608];
  cf = 0;
  v9 = *a5;
  v10 = *__error();
  v11 = a5[2];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    v13 = *(*(a1 + 8) + 40);
    *buf = 136446466;
    v32 = v12;
    v33 = 2080;
    v34 = v13;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: initializing %s asset", buf, 0x16u);
  }

  *__error() = v10;
  v14 = _CFURLCreateFromFileDescriptor(*(a1 + 16), &cf);
  v15 = *a5;
  v16 = *__error();
  v17 = a5[2];
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = "[anonymous]";
      if (v15)
      {
        v18 = v15;
      }

      *buf = 136446466;
      v32 = v18;
      v33 = 1024;
      LODWORD(v34) = v14;
      _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_ERROR, "%{public}s: _CFURLCreateFromFileDescriptor: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v16;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = "[anonymous]";
      if (v15)
      {
        v19 = v15;
      }

      *buf = 136446466;
      v32 = v19;
      v33 = 2112;
      v34 = cf;
      _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_DEBUG, "%{public}s: created url: %@", buf, 0x16u);
    }

    *__error() = v16;
    ImagePropertiesWithDeviceMapZipped = AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped();
    if (ImagePropertiesWithDeviceMapZipped)
    {
      _cryptex_asset_generic_stamp_cold_1(&v30, buf, ImagePropertiesWithDeviceMapZipped);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, 0);
    _CFCreateAssertImpl(MutableCopy, "CFMutableDictionary");
    v22 = _cftag(*(a1 + 8));
    CFDictionarySetValue(a3, v22, MutableCopy);
    v23 = *a5;
    v24 = *__error();
    v25 = a5[2];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = "[anonymous]";
      if (v23)
      {
        v26 = v23;
      }

      v27 = *(*(a1 + 8) + 40);
      *buf = 136446722;
      v32 = v26;
      v33 = 2080;
      v34 = v27;
      v35 = 2112;
      v36 = MutableCopy;
      _os_log_impl(&dword_2986F2000, v25, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", buf, 0x20u);
    }

    *__error() = v24;
    if (a4)
    {
      *a4 = CFRetain(MutableCopy);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t _cryptex1_asset_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, const char **a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v9 = ccsha384_di();
  *length = 0u;
  memset(v35, 0, sizeof(v35));
  v10 = _digest_file(*(a1 + 16), v9, length);
  if (v10)
  {
    MutableForCFTypes = v10;
    v12 = *a5;
    v13 = *__error();
    v14 = a5[2];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      *__error() = v13;
      return MutableForCFTypes;
    }

    v15 = "[anonymous]";
    if (v12)
    {
      v15 = v12;
    }

    v28 = 136446466;
    v29 = v15;
    v30 = 1024;
    LODWORD(v31) = MutableForCFTypes;
    v16 = "%{public}s: Failed to compute digest.: %{darwin.errno}d";
LABEL_6:
    _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_ERROR, v16, &v28, 0x12u);
    goto LABEL_7;
  }

  v18 = CFDataCreate(0, v35, length[1]);
  if (!v18)
  {
    v26 = *a5;
    v13 = *__error();
    v14 = a5[2];
    MutableForCFTypes = 12;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v27 = "[anonymous]";
    if (v26)
    {
      v27 = v26;
    }

    v28 = 136446466;
    v29 = v27;
    v30 = 1024;
    LODWORD(v31) = 12;
    v16 = "%{public}s: Failed to create data.: %{darwin.errno}d";
    goto LABEL_6;
  }

  v19 = v18;
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC9318], v19);
  v20 = _cftag(*(a1 + 8));
  CFDictionarySetValue(a3, v20, MutableForCFTypes);
  v21 = *a5;
  v22 = *__error();
  v23 = a5[2];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = "[anonymous]";
    if (v21)
    {
      v24 = v21;
    }

    v25 = *(*(a1 + 8) + 40);
    v28 = 136446722;
    v29 = v24;
    v30 = 2080;
    v31 = v25;
    v32 = 2112;
    v33 = MutableForCFTypes;
    _os_log_impl(&dword_2986F2000, v23, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", &v28, 0x20u);
  }

  *__error() = v22;
  if (a4)
  {
    *a4 = CFRetain(MutableForCFTypes);
  }

  CFRelease(v19);
  if (v20)
  {
    CFRelease(v20);
  }

  if (MutableForCFTypes)
  {
    CFRelease(MutableForCFTypes);
    return 0;
  }

  return MutableForCFTypes;
}

void *cryptex_asset_new(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v3)
  {
    cryptex_asset_new_cold_1(&v6, v7);
  }

  v4 = v3;
  *(v3 + 1) = a1;
  *(v3 + 4) = claimfd_np();
  if (_cryptex_asset_init_path(v4))
  {
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t _cryptex_asset_init_path(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_asset_init_path_cold_1(&v7, buf);
  }

  v3 = v2;
  v4 = realpath_np();
  if (v4)
  {
    v5 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "realpath_np failed: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    *(a1 + 24) = 0;
    free(v3);
  }

  else
  {
    *(a1 + 24) = v3;
  }

  return v4;
}

void *cryptex_asset_new_borrowed(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v4)
  {
    cryptex_asset_new_cold_1(&v7, v8);
  }

  v5 = v4;
  *v4 |= 1uLL;
  v4[1] = a1;
  *(v4 + 4) = a2;
  if (_cryptex_asset_init_path(v4))
  {
    free(v5);
    return 0;
  }

  return v5;
}

void *cryptex_asset_copy(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v2)
  {
    cryptex_asset_new_cold_1(&v7, v8);
  }

  v3 = v2;
  v2[1] = *(a1 + 8);
  *(v2 + 4) = -1;
  v4 = *(a1 + 24);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(v4);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(v4);
    if (!v5)
    {
      cryptex_asset_copy_cold_1(v4, &v7, v8);
    }
  }

  v3[3] = v5;
  return v3;
}

uint64_t cryptex_asset_open(uint64_t a1, int a2)
{
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    return 37;
  }

  *__error() = 0;
  *(a1 + 16) = open(*(a1 + 24), a2);
  return *__error();
}

_DWORD *cryptex_asset_close(_BYTE *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if ((v2 & 1) == 0)
  {
    return close_drop_optional_np();
  }

  *result = -1;
  return result;
}

uint64_t cryptex_asset_evaluate(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

off_t cryptex_asset_len(off_t result, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(&v11, 0, sizeof(v11));
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3 < 0)
    {
      return 0;
    }

    else if (fstat(v3, &v11))
    {
      v5 = *a2;
      v6 = *__error();
      v7 = *(a2 + 16);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (!v5)
        {
          v5 = "[anonymous]";
        }

        v8 = *(*(v2 + 8) + 40);
        v9 = *__error();
        *buf = 136446722;
        v13 = v5;
        v14 = 2080;
        v15 = v8;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_ERROR, "%{public}s: fstat %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      v10 = __error();
      result = 0;
      *v10 = v6;
    }

    else
    {
      return v11.st_size;
    }
  }

  return result;
}

void cryptex_asset_destroy(void **a1)
{
  if (a1)
  {
    if ((*a1 & 1) == 0)
    {
      close_drop_optional_np();
    }

    free(a1[3]);

    free(a1);
  }
}

void cryptex_asset_array_destroy(uint64_t a1)
{
  for (i = 0; i != 96; i += 8)
  {
    cryptex_asset_destroy(*(a1 + i));
  }
}

void *_cftag(uint64_t a1)
{
  v2 = CFStringCreateWithCString(0, *(a1 + 40), 0x8000100u);
  _CFCreateAssertImpl(v2, "CFString");
  EntryNameForType = AMAuthInstallApImg4GetEntryNameForType();
  if (EntryNameForType)
  {
    v4 = EntryNameForType;
    if (!CFEqual(EntryNameForType, v2))
    {
      v5 = CFRetain(v4);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_4;
    }
  }

  v5 = CFStringCreateWithCString(0, *(a1 + 48), 0x8000100u);
  _CFCreateAssertImpl(v5, "CFString");
  if (v2)
  {
LABEL_4:
    CFRelease(v2);
  }

  return v5;
}

uint64_t _shared_cdxn_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x29EDCA608];
  cf = 0;
  v10 = _cryptex_asset_generic_stamp(a1, a2, a3, &cf, a5);
  if (!v10)
  {
    v11 = _cftag(a6);
    v12 = *(a1 + 32);
    if (v12)
    {
      _CFDictionarySetString(cf, v11, v12);
    }

    v13 = *a5;
    v14 = *__error();
    v15 = *(a5 + 16);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = "[anonymous]";
      if (v13)
      {
        v16 = v13;
      }

      v17 = *(*(a1 + 8) + 40);
      *buf = 136446722;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      v24 = 2112;
      v25 = cf;
      _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", buf, 0x20u);
    }

    *__error() = v14;
    if (a4)
    {
      *a4 = CFRetain(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_0_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, int a11)
{

  return _os_log_send_and_compose_impl(v14, v11, v12, 80, a6, v13, 16, a9, a1.n128_f64[0]);
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, int a11)
{

  return _os_log_send_and_compose_impl(a1, a2, v11, 80, a6, v12, 16, a9, a3.n128_f64[0]);
}

BOOL OUTLINED_FUNCTION_5_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t _cryptex_base_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_base_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_core_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_core_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_core_cx1_properties_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_core_cx1_properties_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_host_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_host_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_magister_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_magister_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_signature_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_signature_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _cryptex_scrivener_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_scrivener_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t _session_core_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _session_core_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

uint64_t cryptex_core_parse_hdiid(char *a1, char **a2)
{
  __stringp = a1;
  v3 = strsep(&__stringp, ",");
  if (!v3)
  {
    return 22;
  }

  v4 = v3;
  v5 = 0;
  do
  {
    if (v5 > 1)
    {
      v6 = a2 + 2;
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          goto LABEL_12;
        }

        v7 = strlen(v4);
        v6 = a2 + 3;
        if (v7 != 96)
        {
          return 22;
        }
      }

LABEL_10:
      *v6 = v4;
      goto LABEL_12;
    }

    if (v5)
    {
      v6 = a2 + 1;
      if (v5 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (strcmp(v4, "cryptex"))
    {
      return 22;
    }

LABEL_12:
    ++v5;
    v4 = strsep(&__stringp, ",");
  }

  while (v4);
  if (v5 == 4)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

char *cryptex_core_unparse_hdiid(const char **a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = 0;
  if (asprintf(&v2, "%s,%s,%s,%s", *a1, a1[1], a1[2], a1[3]) < 0)
  {
    cryptex_core_unparse_hdiid_cold_1(&v3, v4);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_1_1(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, int a11)
{

  return _os_log_send_and_compose_impl(v14, v11, v12, 80, a6, v13, 16, a9, a1.n128_f64[0]);
}

double OUTLINED_FUNCTION_2_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t _img4_get_nonce_domain_from_index(unint64_t a1)
{
  if (a1 > 0xC || a1 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_29EEA8498[a1 - 1];
  }
}

CryptexTSS *cryptex_tss_create(uint64_t a1)
{
  v2 = [CryptexTSS alloc];

  return [(CryptexTSS *)v2 initWithFlags:a1];
}

void cryptex_tss_set_url(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:a2];
  [v4 setURL:v5];
}

void cryptex_tss_set_BOOL(void *a1, const char *a2, BOOL a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_BOOL(v5, a2, a3);
}

void cryptex_tss_set_u32(void *a1, const char *a2, unsigned int a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_int64(v5, a2, a3);
}

void cryptex_tss_set_u64(void *a1, const char *a2, int64_t a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_int64(v5, a2, a3);
}

void cryptex_tss_set_dgst(void *a1, const char *a2, const void *a3, size_t a4)
{
  v7 = [a1 tss_request];
  xpc_dictionary_set_data(v7, a2, a3, a4);
}

void cryptex_tss_set_data(void *a1, const char *a2, const void *a3, size_t a4)
{
  v7 = [a1 tss_request];
  xpc_dictionary_set_data(v7, a2, a3, a4);
}

void cryptex_tss_set_string(void *a1, const char *a2, const char *a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_string(v5, a2, a3);
}

void cryptex_tss_set_object_BOOL(void *a1, const char *a2, const char *a3, BOOL a4)
{
  xdict = [a1 tss_request];
  v7 = xpc_dictionary_get_dictionary(xdict, a2);
  if (!v7)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(xdict, a2, v7);
  }

  xpc_dictionary_set_BOOL(v7, a3, a4);
}

void cryptex_tss_set_object_dgst(void *a1, const char *a2, const char *a3, const void *a4, size_t a5)
{
  xdict = [a1 tss_request];
  v9 = xpc_dictionary_get_dictionary(xdict, a2);
  if (!v9)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(xdict, a2, v9);
  }

  xpc_dictionary_set_data(v9, a3, a4, a5);
}

void cryptex_tss_set_info_from_file(void *a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  file = _read_file(v2, v8);
  if (file)
  {
    cryptex_tss_set_info_from_file_cold_1(&v7, v10, file);
  }

  v5 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8[0] length:?];
  [v3 setInfoData:v5];
  buff_destroy(v8, v6);
}

void cryptex_tss_submit(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 dq];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_tss_submit_block_invoke;
  block[3] = &unk_29EEA8518;
  v9 = v5;
  v10 = a3;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __cryptex_tss_submit_block_invoke(uint64_t a1)
{
  [*(a1 + 32) tssSubmit];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 tssp_sign];
  v4 = [*(a1 + 32) nserr];
  v3(v2, v5, v4, *(a1 + 48));
}

void cryptex_tss_async(void *a1, void *a2, void (__cdecl *a3)(void *))
{
  v5 = [a1 dq];
  dispatch_async_f(v5, a2, a3);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

char **cryptex_version_new(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v11, 0, sizeof(v11));
  v9 = v11;
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x8709206FuLL);
  if (!v2)
  {
    cryptex_version_new_cold_2(v10, v12);
  }

  v3 = v2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = strdup(a1);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = strdup(a1);
    if (!v4)
    {
      cryptex_version_new_cold_1(a1, v10, v12);
    }
  }

  *v3 = v4;
  __strlcpy_chk();
  for (i = 8; i != 28; i += 4)
  {
    *&v12[0] = 0;
    v6 = strsep(&v9, ".");
    if (!v6)
    {
      break;
    }

    v7 = _strtou32(v6, v12, 10);
    if (*&v12[0] && **&v12[0])
    {
      v7 = 0;
    }

    *(v3 + i) = v7;
  }

  return v3;
}

uint64_t cryptex_version_compare(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    v5 = *(a2 + v3);
    v6 = v4 == v5;
    v7 = v4 > v5;
    v8 = v4 < v5 ? -1 : result;
    result = v7 ? 1 : v8;
    if (!v6)
    {
      break;
    }

    v3 += 4;
    if (v3 == 28)
    {
      return 0;
    }
  }

  return result;
}

void cryptex_version_destroy(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    free(*v2);
  }

  free(v2);
  *a1 = 0;
}

uint64_t cryptex_system_cryptex_lookup_by_name(char *__s)
{
  v1 = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_name, __s);
  if (v1)
  {
    return v1 - 152;
  }

  else
  {
    return 0;
  }
}

uint64_t _cryptex_system_cryptex_lookup(uint64_t a1, char *__s)
{
  if (_cryptex_system_cryptex_lookup_init_onceToken != -1)
  {
    _cryptex_system_cryptex_lookup_cold_1();
  }

  return hash_lookup_cstr(a1, __s);
}

uint64_t cryptex_system_cryptex_lookup_by_graftpath(char *__s)
{
  v1 = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_graftpath, __s);
  if (v1)
  {
    return v1 - 184;
  }

  else
  {
    return 0;
  }
}

char *cryptex_system_cryptex_copy_launchjob_tag_for_name(char *__s)
{
  v5 = *MEMORY[0x29EDCA608];
  result = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_name, __s);
  if (result)
  {
    v2 = *(result - 18);
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        result = strdup(v2);
        if (result)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      result = strdup(v2);
      if (!result)
      {
        cryptex_version_new_cold_1(v2, &v3, v4);
      }
    }
  }

  return result;
}

char *cryptex_system_cryptex_copy_graft_abspath(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = 0;
  if (asprintf(&v2, "%s/%s", *(a1 + 120), *(a1 + 128)) < 0)
  {
    cryptex_core_unparse_hdiid_cold_1(&v3, v4);
  }

  return v2;
}

uint64_t ___cryptex_system_cryptex_lookup_init_block_invoke()
{
  hash_init(cryptex_system_cryptexes_by_name);
  hash_init(cryptex_system_cryptexes_by_graftpath);
  v0 = cryptex_system_cryptexes;
  v1 = cryptex_system_cryptexes + 184;
  hash_node_init_cstr((cryptex_system_cryptexes + 152), *cryptex_system_cryptexes);
  hash_insert(cryptex_system_cryptexes_by_name, (v0 + 152));
  v2 = cryptex_system_cryptex_copy_graft_abspath(v0);
  hash_node_init_cstr(v1, v2);
  hash_insert(cryptex_system_cryptexes_by_graftpath, v1);
  v3 = off_2A13BD000;
  v4 = off_2A13BD000 + 184;
  hash_node_init_cstr((off_2A13BD000 + 152), *off_2A13BD000);
  hash_insert(cryptex_system_cryptexes_by_name, (v3 + 152));
  v5 = cryptex_system_cryptex_copy_graft_abspath(v3);
  hash_node_init_cstr(v4, v5);

  return hash_insert(cryptex_system_cryptexes_by_graftpath, v4);
}

uint64_t cryptex_host_create(uint64_t a1, uint64_t a2)
{
  v4 = _cryptex_host_alloc(1168);
  v5 = v4;
  *(v4 + 40) = a2;
  if (a1 && (*(v4 + 48) = *a1, v6 = *(a1 + 16), v7 = *(a1 + 32), v8 = *(a1 + 64), *(v4 + 96) = *(a1 + 48), *(v4 + 112) = v8, *(v4 + 64) = v6, *(v4 + 80) = v7, v9 = *(a1 + 80), v10 = *(a1 + 96), v11 = *(a1 + 128), *(v4 + 160) = *(a1 + 112), *(v4 + 176) = v11, *(v4 + 128) = v9, *(v4 + 144) = v10, *(v4 + 192) = v4 + 48, *(a1 + 8)))
  {
    img4_chip_init_from_buff();
    v12 = img4_chip_custom();
  }

  else if ((a2 & 3) == 3)
  {
    v12 = MEMORY[0x29EDC96D8];
  }

  else
  {
    if ((a2 & 2) != 0)
    {
      v12 = MEMORY[0x29EDC96D0];
    }

    else
    {
      v12 = MEMORY[0x29EDC96C0];
    }

    if ((a2 & 3) == 0)
    {
      v12 = img4_chip_select_personalized_ap();
    }
  }

  *(v5 + 1160) = v12;
  return v5;
}

uint64_t cryptex_metadata_write_to_file_xattrs(void *a1, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA00])
  {
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __cryptex_metadata_write_to_file_xattrs_block_invoke;
    v10[3] = &unk_29EEA86E0;
    v10[4] = &v12;
    v11 = a2;
    xpc_dictionary_apply(v3, v10);
  }

  else
  {
    *(v13 + 6) = 22;
    v4 = __error();
    v5 = *v4;
    v6 = cryptex_metadata_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(v13 + 6);
      *buf = 67109120;
      v17 = v7;
      _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "Invalid metadata.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_2986FD60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cryptex_metadata_log(uint64_t a1)
{
  if (cryptex_metadata_log_onceToken != -1)
  {
    cryptex_metadata_log_cold_1();
  }

  v2 = cryptex_metadata_log_logHandle;

  return v2;
}

BOOL __cryptex_metadata_write_to_file_xattrs_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = MEMORY[0x29C2903B0]();
  v7 = v6 != MEMORY[0x29EDCAA50];
  if (v6 == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    v14 = strlen(string_ptr);
    if (fsetxattr(*(a1 + 40), a2, string_ptr, v14 + 1, 0, 2))
    {
      v15 = *__error();
    }

    else
    {
      v15 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v15;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 1;
      goto LABEL_12;
    }

    v16 = __error();
    v9 = *v16;
    v10 = cryptex_metadata_log(v16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 32) + 8) + 24);
      v19 = 136315394;
      v20 = a2;
      v21 = 1024;
      v22 = v17;
      v12 = "Failed to apply xattr '%s'.: %{darwin.errno}d";
      goto LABEL_10;
    }
  }

  else
  {
    v8 = __error();
    v9 = *v8;
    v10 = cryptex_metadata_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
      v19 = 136315394;
      v20 = a2;
      v21 = 1024;
      v22 = v11;
      v12 = "Unexpected value for cryptex_metadata key '%s': %{darwin.errno}d";
LABEL_10:
      _os_log_impl(&dword_2986F2000, v10, OS_LOG_TYPE_ERROR, v12, &v19, 0x12u);
    }
  }

  *__error() = v9;
LABEL_12:

  return v7;
}

void **cryptex_metadata_read_from_file_xattrs(int a1, void **a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    memset(value, 0, sizeof(value));
    v8 = _cryptex_metadata_keys[v5];
    if ((fgetxattr(a1, v8, value, 0x100uLL, 0, 2) & 0x8000000000000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9 == 93)
    {
      v10 = __error();
      v11 = *v10;
      v12 = cryptex_metadata_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v19 = v8;
        _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "No xattr '%s'.", buf, 0xCu);
      }

      *__error() = v11;
      goto LABEL_10;
    }

    if (v9)
    {
      break;
    }

    xpc_dictionary_set_string(v4, v8, value);
LABEL_10:
    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      if (a2)
      {
        v13 = *a2;
        *a2 = v4;

        v4 = 0;
        a2 = 0;
      }

      goto LABEL_16;
    }
  }

  a2 = *__error();
  v14 = __error();
  v15 = *v14;
  v16 = cryptex_metadata_log(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = v8;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_ERROR, "Failed to read xattr '%s'.: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v15;
LABEL_16:

  return a2;
}

uint64_t cryptex_metadata_read_from_cryptex(void *a1, void **a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v16 = 0;
  v17 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = cryptex_core_parse_info_asset(v3, &v17, &v16, 0);
  if (v5)
  {
    v6 = __error();
    v7 = *v6;
    v8 = cryptex_metadata_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v5;
      _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, "Failed to extract cryptex identifier and version.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v7;
  }

  else
  {
    v9 = 0;
    v10 = v17;
    v11 = *v16;
    v12 = 1;
    do
    {
      v13 = v12;
      xpc_dictionary_set_string(v4, _cryptex_metadata_keys[v9], v10);
      v12 = 0;
      v10 = v11;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    if (a2)
    {
      v14 = *a2;
      *a2 = v4;

      v4 = 0;
    }

    v5 = 0;
  }

  cryptex_version_destroy(&v16);

  free(v17);
  return v5;
}

uint64_t __cryptex_metadata_log_block_invoke()
{
  cryptex_metadata_log_logHandle = os_log_create("com.apple.libcryptex", "metadata");

  return MEMORY[0x2A1C71028]();
}

void _cryptex_magister_dealloc(uint64_t a1)
{
  os_release(*(a1 + 88));
  v2 = *(a1 + 96);
  if (v2)
  {
    os_release(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    os_release(v3);
  }

  object_proto_destroy(a1 + 56);
}

uint64_t cryptex_magister_create(void *a1, uint64_t a2)
{
  v4 = _cryptex_magister_alloc(176);
  *(v4 + 80) = a2;
  *(v4 + 88) = os_retain(a1);
  v5 = a1[20];
  if (v5)
  {
    *(v4 + 96) = os_retain(v5);
  }

  v6 = a1[21];
  if (v6)
  {
    *(v4 + 104) = os_retain(v6);
  }

  *(v4 + 120) = 0;
  *(v4 + 172) = 48;
  object_proto_init(v4 + 56, "com.apple.security.libcryptex.core", "magister");
  cryptex_init(v4, 0, _cryptex_magister_init, 0);
  return v4;
}

void _cryptex_magister_init(void *a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = 0;
  object = 0;
  v50 = MEMORY[0x29EDC96E0];
  v2 = a1[13];
  if (!v2)
  {
    goto LABEL_27;
  }

  if ((*(v2 + 40) & 1) == 0)
  {
    goto LABEL_26;
  }

  v3 = a1[7];
  v4 = *__error();
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446210;
    v65 = v6;
    _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_DEBUG, "%{public}s: checking for supplemental fallback", buf, 0xCu);
  }

  *__error() = v4;
  v8 = a1[11];
  v7 = a1[12];
  v10 = *(v7 + 56);
  v9 = *(v7 + 64);
  v55 = 0;
  v56 = v10;
  v57 = v9;
  v58 = 0;
  if ((*(v8 + 40) & 1) == 0)
  {
    bzero(buf, 0x600uLL);
    img4_firmware_init_from_buff();
    img4_firmware_init_sentinel();
    img4_firmware_attach_manifest();
    v61 = *(a1[13] + 1160);
    v62 = img4_chip_select_personalized_ap();
    v63 = MEMORY[0x29EDC96D0];
    v11 = img4_firmware_select_chip();
    if (v11)
    {
      v12 = v11;
      v13 = *(a1[13] + 1160);
      v14 = a1[7];
      v15 = *__error();
      v16 = a1[9];
      if (v12 == v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v24 = "[anonymous]";
          if (v14)
          {
            v24 = v14;
          }

          *v59 = 136446210;
          v60 = v24;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEBUG, "%{public}s: validated supplemental environment", v59, 0xCu);
        }

        *__error() = v15;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "[anonymous]";
          if (v14)
          {
            v17 = v14;
          }

          *v59 = 136446210;
          v60 = v17;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: falling back from supplemental", v59, 0xCu);
        }

        *__error() = v15;
        v18 = cryptex_core_select_chip(a1[11]);
        v19 = a1[13];
        *(v19 + 1160) = v18;
        *(v19 + 40) &= ~1uLL;
      }
    }

    else
    {
      v20 = a1[7];
      v21 = *__error();
      v22 = a1[9];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = "[anonymous]";
        if (v20)
        {
          v23 = v20;
        }

        *v59 = 136446210;
        v60 = v23;
        _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_ERROR, "%{public}s: unable to detect chip environment, proceeding anyway", v59, 0xCu);
      }

      *__error() = v21;
    }
  }

  v2 = a1[13];
  if (v2)
  {
LABEL_26:
    v25 = *(v2 + 1160);
  }

  else
  {
LABEL_27:
    v25 = cryptex_core_select_chip(a1[11]);
  }

  a1[14] = v25;
  nonce_domain = cryptex_core_get_nonce_domain(a1[11], &v50);
  if (nonce_domain || !v50)
  {
    v32 = a1[7];
    v28 = *__error();
    v29 = a1[9];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v33 = "[anonymous]";
      if (v32)
      {
        v33 = v32;
      }

      *buf = 136446466;
      v65 = v33;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: failed to get nonce domain from core: %{darwin.errno}d";
      goto LABEL_39;
    }

LABEL_40:
    *__error() = v28;
    goto LABEL_41;
  }

  nonce_domain = cryptex_core_copy_nonce_domain_desc(a1[11], &v51);
  v27 = a1[7];
  v28 = *__error();
  v29 = a1[9];
  if (nonce_domain)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = "[anonymous]";
      if (v27)
      {
        v30 = v27;
      }

      *buf = 136446466;
      v65 = v30;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: failed to get nonce domain description from core: %{darwin.errno}d";
LABEL_39:
      _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v35 = "[anonymous]";
    if (v27)
    {
      v35 = v27;
    }

    *buf = 136446466;
    v65 = v35;
    v66 = 2082;
    v67 = v51;
    _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: authenticating using nonce from %{public}s", buf, 0x16u);
  }

  *__error() = v28;
  v36 = img4_nonce_domain_copy_nonce();
  if (v36)
  {
    nonce_domain = v36;
    v37 = a1[7];
    v28 = *__error();
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = "[anonymous]";
    if (v37)
    {
      v38 = v37;
    }

    *buf = 136446466;
    v65 = v38;
    v66 = 1024;
    LODWORD(v67) = nonce_domain;
    v31 = "%{public}s: copying cryptex nonce failed: %{darwin.errno}d";
    goto LABEL_39;
  }

  if (a1[12])
  {
    nonce_domain = 0;
  }

  else
  {
    asset = cryptex_core_get_asset(a1[11], &_cryptex_asset_type_im4m);
    if (!asset)
    {
      _cryptex_magister_init_cold_1();
    }

    v40 = asset;
    file = _read_file(*(asset + 16), v53);
    if (file)
    {
      nonce_domain = file;
      v42 = a1[7];
      v28 = *__error();
      v29 = a1[9];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v43 = "[anonymous]";
      if (v42)
      {
        v43 = v42;
      }

      *buf = 136446466;
      v65 = v43;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: read im4m: %{darwin.errno}d";
      goto LABEL_39;
    }

    v44 = cryptex_metadata_read_from_file_xattrs(*(v40 + 16), &object);
    if (v44)
    {
      v45 = v44;
      v46 = a1[7];
      v47 = *__error();
      v48 = a1[9];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = "[anonymous]";
        if (v46)
        {
          v49 = v46;
        }

        *buf = 136446466;
        v65 = v49;
        v66 = 1024;
        LODWORD(v67) = v45;
        _os_log_impl(&dword_2986F2000, v48, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v47;
    }

    nonce_domain = 0;
    a1[12] = cryptex_signature_create(v53, 0, object);
  }

LABEL_41:
  cryptex_set_error(a1, nonce_domain);
  buff_destroy(v53, v34);
  free(v51);
  if (object)
  {
    os_release(object);
  }
}

void cryptex_magister_authenticate_f(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __cryptex_magister_authenticate_f_block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = a4;
  v4[5] = a3;
  cryptex_magister_authenticate(a1, a2, v4);
}

void cryptex_magister_authenticate(uint64_t *a1, uint64_t a2, const void *a3)
{
  v6 = ctx_new(a1, 0x80uLL);
  v6[4] = cryptex_core_get_asset(a1[11], a2);
  v6[15] = _Block_copy(a3);

  cryptex_async_f(a1, v6, _cryptex_magister_authenticate_continue);
}

void _cryptex_magister_authenticate_continue(uint64_t *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v4 = *(*a1 + 104);
  if (v4)
  {
    v5 = *(v4 + 1160);
  }

  else
  {
    v5 = cryptex_core_select_chip(*(v2 + 88));
  }

  v6 = _cryptex_magister_authenticate_toutoc;
  if ((**(v3 + 8) & 8) == 0)
  {
    v6 = _cryptex_magister_authenticate;
  }

  v7 = v6(v2, v5, v3, a1);
  if (v7)
  {
    v8 = v7;
    v9 = *(v2 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v2 + 56);
      v12 = *(*(v3 + 8) + 40);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *v18 = 136446466;
      *&v18[4] = v11;
      *&v18[12] = 2082;
      *&v18[14] = v12;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986F2000, v9, 16, "%{public}s: Failed to authenticate asset '%{public}s'", COERCE_DOUBLE(136446466), v18, 22, *v18, *&v18[8], v19);
    }

    else
    {
      v14 = "[anonymous]";
      if (*(v2 + 56))
      {
        v14 = *(v2 + 56);
      }

      v15 = *(*(v3 + 8) + 40);
      *v18 = 136446466;
      *&v18[4] = v14;
      *&v18[12] = 2082;
      *&v18[14] = v15;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to authenticate asset '%{public}s'", COERCE_DOUBLE(136446466), v18, 22, *v18, *&v18[8], v19);
    }

    v16 = v13;
    Error = createError("_cryptex_magister_authenticate_continue", "magister.c", 371, "com.apple.security.cryptex", 12, v8, v13);
    free(v16);
    a1[2] = Error;
    cryptex_target_async_f(v2, a1, _cryptex_magister_authenticate_callback);
    CFRelease(v8);
  }

  else
  {
    a1[2] = 0;

    cryptex_target_async_f(v2, a1, _cryptex_magister_authenticate_callback);
  }
}

void cryptex_magister_record_property(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ctx_new(a1, 0x90uLL);
  v8[4] = a2;
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 104) = 0;
  v8[14] = 0;
  v8[15] = 0;
  v8[16] = a3;
  v8[17] = a4;

  cryptex_async_f(a1, v8, _cryptex_magister_record_property_continue);
}

void _cryptex_magister_record_property_continue(uint64_t *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 56);
  v6 = *__error();
  v7 = *(v2 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "[anonymous]";
    v9 = *(v4 + 64);
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_INFO, "%{public}s: im4m buff len: %zu", buf, 0x16u);
  }

  *__error() = v6;
  is_cryptex1 = cryptex_core_is_cryptex1(*(v2 + 88));
  v11 = *(v2 + 104);
  if (!v11 || (*(v11 + 40) & 1) == 0)
  {
    if (cryptex_core_is_cryptex1(*(v2 + 88)))
    {
      v12 = 3;
      goto LABEL_19;
    }

    v13 = *(v2 + 88);
    v14 = *(v13 + 176);
    if (v14 == &_cryptex_asset_type_cpxd)
    {
      v12 = 5;
      goto LABEL_19;
    }

    if (v14 == &_cryptex_asset_type_pdmg)
    {
      if (*(v13 + 56) == 2)
      {
        v12 = 9;
      }

      else
      {
        v12 = 4;
      }

      goto LABEL_19;
    }

LABEL_15:
    v12 = 4;
    goto LABEL_19;
  }

  if (cryptex_core_is_cryptex1(*(v2 + 88)))
  {
    goto LABEL_15;
  }

  if (*(*(v2 + 88) + 176) == &_cryptex_asset_type_cpxd)
  {
    v29 = *(v2 + 72);
    if (v29)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v31 = *(v2 + 56);
      if (!v31)
      {
        v31 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v31;
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986F2000, v29, 16, "%{public}s: Supplemental root SRD cryptex not supported.", COERCE_DOUBLE(136446210), buf, 12, 0, 0, *buf, *&buf[8]);
    }

    else
    {
      v33 = *(v2 + 56);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v33;
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Supplemental root SRD cryptex not supported.", COERCE_DOUBLE(136446210), buf, 12, 0, 0, *buf, *&buf[8]);
    }

    v34 = v32;
    Error = createError("_cryptex_magister_select_image4_coproc_and_handle", "magister.c", 448, "com.apple.security.cryptex", 10, 0, v32);
    free(v34);
    if (Error)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  v12 = 7;
LABEL_19:
  v15 = *(v2 + 56);
  v16 = *__error();
  v17 = *(v2 + 72);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = "[anonymous]";
    if (v15)
    {
      v18 = v15;
    }

    *buf = 136446722;
    *&buf[4] = v18;
    if (is_cryptex1)
    {
      v19 = "CRYPTEX1";
    }

    else
    {
      v19 = "AP";
    }

    *&buf[12] = 2082;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    v39 = v12;
    _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_INFO, "%{public}s: Authenticating with coprocessor %{public}s and handle %llu", buf, 0x20u);
  }

  *__error() = v16;
LABEL_27:
  v36 = image4_environment_new();
  v37 = image4_trust_new();
  v20 = *(v3 + 32);
  switch(v20)
  {
    case 2:
      image4_trust_record_property_integer();
      v21 = 8;
      goto LABEL_33;
    case 1:
      image4_trust_record_property_data();
LABEL_34:
      image4_trust_evaluate();
      Error = 0;
      goto LABEL_46;
    case 0:
      image4_trust_record_property_BOOL();
      v21 = 1;
LABEL_33:
      a1[15] = v21;
      goto LABEL_34;
  }

  v23 = *(v2 + 72);
  if (v23)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v25 = *(v2 + 56);
    if (!v25)
    {
      v25 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = v20;
    LODWORD(v35) = 18;
    v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986F2000, v23, 16, "%{public}s: Unexpected im4m property type: %d", COERCE_DOUBLE(136446466), buf, v35, v36, v37, *buf, *&buf[8]);
  }

  else
  {
    v27 = *(v2 + 56);
    if (!v27)
    {
      v27 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v27;
    *&buf[12] = 1024;
    *&buf[14] = v20;
    LODWORD(v35) = 18;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Unexpected im4m property type: %d", COERCE_DOUBLE(136446466), buf, v35, v36, v37, *buf, *&buf[8]);
  }

  v28 = v26;
  Error = createError("_cryptex_magister_record_property_continue", "magister.c", 541, "com.apple.security.cryptex", 11, 0, v26);
  free(v28);
LABEL_46:
  image4_environment_destroy();
  image4_trust_destroy();
  if (Error)
  {
    a1[2] = CFRetain(Error);
    cryptex_target_async_f(v2, a1, _cryptex_magister_record_property_callback);
    CFRelease(Error);
  }
}

uint64_t _cryptex_magister_authenticate_toutoc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v7 = a1[12];
  v9 = *(v7 + 56);
  v8 = *(v7 + 64);
  v21 = 0;
  v22 = v9;
  v23 = v8;
  v24 = 0;
  v19[3] = a4;
  v20 = 0;
  v19[1] = 1;
  v19[2] = _cryptex_magister_firmware_execute_toutoc;
  v10 = a1[7];
  v11 = *__error();
  v12 = a1[9];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v14 = *(*(a3 + 8) + 40);
    v15 = *(a3 + 16);
    *buf = 136446722;
    v26 = v13;
    v27 = 2082;
    v28 = v14;
    v29 = 1024;
    v30 = v15;
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: authenticating asset [toutoc]: 4cc = %{public}s, fd = %d", buf, 0x1Cu);
  }

  *__error() = v11;
  v16 = lseek(*(a3 + 16), 0, 1);
  *(a4 + 112) = v16;
  if (v16 == -1)
  {
    _cryptex_magister_authenticate_toutoc_cold_1(v19, buf);
  }

  *buf = dup_np();
  if (*(a1[11] + 40))
  {
    v17 = 0;
  }

  else
  {
    v20 = img4_firmware_new_from_fd_4MSM();
    img4_firmware_attach_manifest();
    img4_firmware_execute();
    v17 = *(a4 + 16);
  }

  img4_firmware_destroy();
  return v17;
}

CFErrorRef _cryptex_magister_authenticate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  v38 = 0;
  v39 = v7;
  v40 = v6;
  v41 = 0;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  if (!v6)
  {
    v24 = *(a1 + 72);
    if (v24)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v26;
      v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986F2000, v24, 16, "%{public}s: Image4 manifest is empty.", COERCE_DOUBLE(136446210), buf, 12, 1, _cryptex_magister_firmware_execute, a4, 0, 0, 0, 0, 0);
    }

    else
    {
      v32 = *(a1 + 56);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v32;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Image4 manifest is empty.", COERCE_DOUBLE(136446210), buf, 12, 1, _cryptex_magister_firmware_execute, a4, 0, 0, 0, 0, 0);
    }

    v33 = v27;
    Error = createError("_cryptex_magister_authenticate", "magister.c", 177, "com.apple.security.cryptex", 12, 0, v27);
    v31 = v33;
    goto LABEL_31;
  }

  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v14 = *(*(a3 + 8) + 40);
    v15 = *(a3 + 16);
    *buf = 136446722;
    v43 = v13;
    v44 = 2082;
    v45 = v14;
    v46 = 1024;
    v47 = v15;
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: authenticating asset: 4cc = %{public}s, fd = %d", buf, 0x1Cu);
  }

  *__error() = v11;
  file = _read_file(*(a3 + 16), v36);
  if (file)
  {
    v18 = file;
    v19 = file;
    v20 = *(a1 + 72);
    if (v20)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = *(a1 + 56);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446466;
      v43 = v22;
      v44 = 1024;
      LODWORD(v45) = v18;
      v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_2986F2000, v20, 16, "%{public}s: read im4p failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, 1, _cryptex_magister_firmware_execute, a4, 0, 0, 0, 0, 0);
    }

    else
    {
      v29 = *(a1 + 56);
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      *buf = 136446466;
      v43 = v29;
      v44 = 1024;
      LODWORD(v45) = file;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: read im4p failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, 1, _cryptex_magister_firmware_execute, a4, 0, 0, 0, 0, 0);
    }

    v30 = v23;
    Error = createError("_cryptex_magister_authenticate", "magister.c", 187, "com.apple.security.cryptex.posix", v19, 0, v23);
    v31 = v30;
LABEL_31:
    free(v31);
    goto LABEL_32;
  }

  *(a4 + 40) = v36;
  if (*(*(a1 + 88) + 40))
  {
    Error = 0;
  }

  else
  {
    img4_firmware_new();
    img4_firmware_attach_manifest();
    img4_firmware_execute();
    Error = *(a4 + 16);
  }

LABEL_32:
  buff_destroy(v36, v17);
  img4_firmware_destroy();
  return Error;
}

void _cryptex_magister_authenticate_callback(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 16);
  (*(*(a1 + 120) + 16))();
  _Block_release(*(a1 + 120));
  buff_destroy(v2, v4);
  ctx_destroy(a1);
  if (v3)
  {

    CFRelease(v3);
  }
}

void _cryptex_magister_firmware_execute_toutoc(int a1, uint64_t a2, int a3, void *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    _cryptex_magister_firmware_execute_toutoc_cold_1();
  }

  v5 = a4[4];
  v6 = a4[14];
  v7 = *a4;
  v8 = _cryptex_magister_firmware_execute_cferr(a3, *(*a4 + 72));
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 72);
    if (v10)
    {
      if (os_log_type_enabled(*(v7 + 72), OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v12 = *(v7 + 56);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *buf = 136446210;
      v24 = v12;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_2986F2000, v10, 16, "%{public}s: firmware execution failed", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v19 = *(v7 + 56);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      *buf = 136446210;
      v24 = v19;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: firmware execution failed", COERCE_DOUBLE(136446210), buf, 12);
    }

    v20 = v13;
    Error = createError("_cryptex_magister_firmware_execute_toutoc", "magister.c", 239, "com.apple.security.cryptex", 12, v9, v13);
    free(v20);
    a4[2] = Error;
    CFRelease(v9);
  }

  else
  {
    v14 = *(v7 + 56);
    v15 = *__error();
    v16 = *(v7 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      if (v14)
      {
        v17 = v14;
      }

      v18 = *(*(v5 + 8) + 40);
      *buf = 136446466;
      v24 = v17;
      v25 = 2082;
      v26 = v18;
      _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEBUG, "%{public}s: executing image: %{public}s", buf, 0x16u);
    }

    *__error() = v15;
    if (lseek(*(v5 + 16), v6, 0) == -1)
    {
      _cryptex_magister_firmware_execute_toutoc_cold_2(&v22, buf);
    }

    a4[2] = 0;
  }
}

CFErrorRef _cryptex_magister_firmware_execute_cferr(int a1, os_log_t oslog)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1 > 69)
  {
    if (a1 <= 79)
    {
      if (a1 == 70)
      {
        if (oslog)
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986F2000, oslog, 16, "Manifest no longer valid. %{darwin.errno}d", &v27, 8, 0x4604000100, v28);
        }

        else
        {
          v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "Manifest no longer valid. %{darwin.errno}d", &v27, 8, 0x4604000100, v28);
        }

        v23 = v18;
        v24 = 71;
        v25 = 70;
        goto LABEL_77;
      }

      if (a1 == 79)
      {
        if (oslog)
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986F2000, oslog, 16, "The attached manifest is not a valid Image4 manifest %{darwin.errno}d", &v27, 8, 0x4F04000100, v28);
        }

        else
        {
          v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The attached manifest is not a valid Image4 manifest %{darwin.errno}d", &v27, 8, 0x4F04000100, v28);
        }

        v23 = v11;
        v24 = 81;
        v25 = 79;
        goto LABEL_77;
      }
    }

    else
    {
      switch(a1)
      {
        case 'P':
          if (oslog)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986F2000, oslog, 16, "The attached manifest is not authentic %{darwin.errno}d", &v27, 8, 0x5004000100, v28);
          }

          else
          {
            v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The attached manifest is not authentic %{darwin.errno}d", &v27, 8, 0x5004000100, v28);
          }

          v23 = v16;
          v24 = 88;
          v25 = 80;
          goto LABEL_77;
        case 'R':
          if (oslog)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_2986F2000, oslog, 16, "The chip environment has not yet booted. %{darwin.errno}d", &v27, 8, 0x5204000100, v28);
          }

          else
          {
            v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The chip environment has not yet booted. %{darwin.errno}d", &v27, 8, 0x5204000100, v28);
          }

          v23 = v20;
          v24 = 74;
          v25 = 82;
          goto LABEL_77;
        case '\\':
          if (oslog)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v4 = 3;
            }

            else
            {
              v4 = 2;
            }

            v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_2986F2000, oslog, 16, "The firmware data is not valid Image4 data %{darwin.errno}d", &v27, 8, 0x5C04000100, v28);
          }

          else
          {
            v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The firmware data is not valid Image4 data %{darwin.errno}d", &v27, 8, 0x5C04000100, v28);
          }

          v23 = v5;
          v24 = 77;
          v25 = 92;
LABEL_77:
          Error = createError("_cryptex_magister_firmware_execute_cferr", "magister.c", v24, "com.apple.security.cryptex.posix", v25, 0, v23);
          free(v23);
          return Error;
      }
    }

LABEL_54:
    if (oslog)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      LODWORD(v27) = 67109120;
      HIDWORD(v27) = a1;
      v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_2986F2000, oslog, 16, "Other AppleImage4 error %{darwin.errno}d", COERCE_DOUBLE(67109120), &v27, 8, v27, v28);
    }

    else
    {
      LODWORD(v27) = 67109120;
      HIDWORD(v27) = a1;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "Other AppleImage4 error %{darwin.errno}d", COERCE_DOUBLE(67109120), &v27, 8, v27, v28);
    }

    v23 = v22;
    v24 = 100;
    v25 = a1;
    goto LABEL_77;
  }

  if (a1 > 7)
  {
    if (a1 == 8)
    {
      if (oslog)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986F2000, oslog, 16, "The firmware has been corrupted, or the given chip does not satisfy the constraints of the corresponding object in attached manifest %{darwin.errno}d", &v27, 8, 0x804000100, v28);
      }

      else
      {
        v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The firmware has been corrupted, or the given chip does not satisfy the constraints of the corresponding object in attached manifest %{darwin.errno}d", &v27, 8, 0x804000100, v28);
      }

      v23 = v14;
      v24 = 97;
      v25 = 8;
      goto LABEL_77;
    }

    if (a1 == 13)
    {
      if (oslog)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986F2000, oslog, 16, "The given chip does not satisfy the constraints of attached manifest %{darwin.errno}d", &v27, 8, 0xD04000100, v28);
      }

      else
      {
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The given chip does not satisfy the constraints of attached manifest %{darwin.errno}d", &v27, 8, 0xD04000100, v28);
      }

      v23 = v9;
      v24 = 92;
      v25 = 13;
      goto LABEL_77;
    }

    goto LABEL_54;
  }

  if (a1)
  {
    if (a1 == 2)
    {
      if (oslog)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_2986F2000, oslog, 16, "The attached manifest does not authenticate this type firmware %{darwin.errno}d", COERCE_DOUBLE(67109120), &v27, 8, 0x204000100, v28);
      }

      else
      {
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "The attached manifest does not authenticate this type firmware %{darwin.errno}d", COERCE_DOUBLE(67109120), &v27, 8, 0x204000100, v28);
      }

      v23 = v7;
      v24 = 85;
      v25 = 2;
      goto LABEL_77;
    }

    goto LABEL_54;
  }

  return 0;
}

void _cryptex_magister_firmware_execute(int a1, uint64_t a2, int a3, __n128 *a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = a4->n128_u64[0];
  v7 = a4[2].n128_u64[0];
  v6 = a4[2].n128_u64[1];
  v8 = _cryptex_magister_firmware_execute_cferr(a3, *(a4->n128_u64[0] + 72));
  if (v8)
  {
    v9 = v8;
    v10 = *(v5 + 72);
    if (v10)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v12 = *(v5 + 56);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = v12;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_2986F2000, v10, 16, "%{public}s: firmware execution failed", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v24 = *(v5 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = v24;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: firmware execution failed", COERCE_DOUBLE(136446210), buf, 12);
    }

    v25 = v13;
    Error = createError("_cryptex_magister_firmware_execute", "magister.c", 124, "com.apple.security.cryptex", 12, v9, v13);
    free(v25);
    a4[1].n128_u64[0] = Error;
    CFRelease(v9);
  }

  else
  {
    bytes = img4_image_get_bytes();
    v15 = *(v5 + 56);
    v16 = *__error();
    v17 = *(v5 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = "[anonymous]";
      if (v15)
      {
        v18 = v15;
      }

      v19 = *(*(v7 + 8) + 40);
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = v18;
      WORD6(buf[0]) = 2082;
      *(buf + 14) = v19;
      _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_DEBUG, "%{public}s: executing image: %{public}s", buf, 0x16u);
    }

    *__error() = v16;
    v20 = *(bytes + 8);
    v21 = v6->n128_u64[0];
    v22 = v20 - v6->n128_u64[0];
    if (v22 < 0)
    {
      v27 = v20 - v6->n128_u64[0];
      v28 = v6->n128_u64[1];
      v23 = *(bytes + 16);
    }

    else
    {
      v23 = *(bytes + 16);
      if (v23 <= v6->n128_u64[1])
      {
        buff_xfer_subrange(a4 + 3, v6, v22, v23);
        a4[6].n128_u64[1] = a4[3].n128_u64;
        a4[1].n128_u64[0] = 0;
        return;
      }

      v28 = v6->n128_u64[1];
      v27 = v22;
    }

    v32 = 0;
    memset(buf, 0, sizeof(buf));
    v29 = MEMORY[0x29EDCA988];
    v33 = 134219008;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v34 = v27;
    v35 = 2048;
    v36 = v21;
    v37 = 2048;
    v38 = v28;
    v39 = 2048;
    v40 = v20;
    v41 = 2048;
    v42 = v23;
    _os_log_send_and_compose_impl(v30, &v32, buf, 80, &dword_2986F2000, v29, 16, "unexpected failure: bogus authenticated bytes pointer: off = %lld, im4p = %p, im4p len = %lu, authenticated = %p, authenticated len = %lu", &v33, 52, v31);
    _os_crash_msg();
    __break(1u);
  }
}

void _cryptex_magister_record_property_continue2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v51 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *__dst = 0u;
  v6 = *a5;
  if (a4)
  {
    v8 = a4;
    v9 = *(v6 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v6 + 56);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *buf = 136446466;
      v46 = v11;
      v47 = 1024;
      LODWORD(v48) = a4;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986F2000, v9, 16, "%{public}s: image4 trust evaluation failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, __dst[0], __dst[1], v41, v42, v43);
    }

    else
    {
      v26 = *(v6 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *buf = 136446466;
      v46 = v26;
      v47 = 1024;
      LODWORD(v48) = a4;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: image4 trust evaluation failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, __dst[0], __dst[1], v41, v42, v43);
    }

    v27 = v12;
    v28 = "com.apple.security.cryptex.posix";
    v29 = 396;
    v30 = v8;
  }

  else
  {
    v13 = a5[4];
    v14 = *(v13 + 24);
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v15 = malloc_type_calloc(1uLL, v14, 0x8A375538uLL);
        if (v15)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v15 = malloc_type_calloc(1uLL, v14, 0x8709206FuLL);
      if (!v15)
      {
        _cryptex_magister_record_property_continue2_cold_1(v44, buf, v14);
      }
    }

    buff_init(__dst, 0, _buff_destructor_free, v15, *(v13 + 24));
    v16 = a5[15];
    v17 = *(v13 + 24);
    if (v16 == v17)
    {
      v18 = a5[14];
      v19 = *(v6 + 56);
      v20 = *__error();
      v21 = *(v6 + 72);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v16 && v18)
      {
        if (v22)
        {
          v23 = "[anonymous]";
          v24 = *(v13 + 8);
          if (v19)
          {
            v23 = v19;
          }

          *buf = 136446466;
          v46 = v23;
          v47 = 2082;
          v48 = v24;
          _os_log_impl(&dword_2986F2000, v21, OS_LOG_TYPE_INFO, "%{public}s: Successfully read property '%{public}s' from im4m", buf, 0x16u);
        }

        *__error() = v20;
        memcpy(__dst[0], a5[14], a5[15]);
        buff_xfer((a5 + 5), __dst);
      }

      else
      {
        if (v22)
        {
          v35 = "[anonymous]";
          v36 = *(v13 + 8);
          if (v19)
          {
            v35 = v19;
          }

          *buf = 136446466;
          v46 = v35;
          v47 = 2082;
          v48 = v36;
          _os_log_impl(&dword_2986F2000, v21, OS_LOG_TYPE_INFO, "%{public}s: Property '%{public}s' not found in im4m", buf, 0x16u);
        }

        *__error() = v20;
      }

      buff_destroy(__dst, v25);
      goto LABEL_45;
    }

    v31 = *(v6 + 72);
    if (v31)
    {
      if (os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v33 = *(v6 + 56);
      *buf = 136446722;
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      v46 = v33;
      v47 = 2048;
      v48 = v16;
      v49 = 2048;
      v50 = v17;
      v34 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_2986F2000, v31, 16, "%{public}s: Property size (%zu) is not the expected size (%zu).", buf, 32, __dst[0], __dst[1], v41, v42, v43);
    }

    else
    {
      v37 = "[anonymous]";
      if (*(v6 + 56))
      {
        v37 = *(v6 + 56);
      }

      *buf = 136446722;
      v46 = v37;
      v47 = 2048;
      v48 = v16;
      v49 = 2048;
      v50 = v17;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Property size (%zu) is not the expected size (%zu).", buf, 32, __dst[0], __dst[1], v41, v42, v43);
    }

    v27 = v34;
    v28 = "com.apple.security.cryptex";
    v29 = 404;
    v30 = 24;
  }

  Error = createError("_cryptex_magister_record_property_continue2", "magister.c", v29, v28, v30, 0, v27);
  free(v27);
  buff_destroy(__dst, v39);
  if (Error)
  {
    a5[2] = CFRetain(Error);
    cryptex_target_async_f(v6, a5, _cryptex_magister_record_property_callback);
    CFRelease(Error);
    return;
  }

LABEL_45:
  a5[2] = 0;
  cryptex_target_async_f(v6, a5, _cryptex_magister_record_property_callback);
}

void _cryptex_magister_record_property_callback(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (*(a1 + 5))
  {
    v4 = a1 + 40;
  }

  else
  {
    v4 = 0;
  }

  (*(a1 + 17))(v2, v4, *(a1 + 2), *(a1 + 16));
  buff_destroy(a1 + 5, v5);
  ctx_destroy(a1);
  if (v3)
  {

    CFRelease(v3);
  }
}

void _cryptex_signature_dealloc(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 264);
  if (v3)
  {
    os_release(v3);
  }

  buff_destroy((a1 + 56), a2);

  object_proto_destroy(a1 + 16);
}

uint64_t cryptex_signature_seal()
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = os_log_create("com.apple.libcryptex", "signature");
  v8 = xmmword_29870A4D0;
  v9 = xmmword_29870A4C0;
  v1 = aks_sealed_hashes_set();
  if (v1 == -28)
  {
    Errno = 28;
    if (!v0)
    {
      return Errno;
    }

    goto LABEL_12;
  }

  Errno = v1;
  if (v1)
  {
    if (v1 == -31)
    {
      cryptex_signature_seal_cold_1();
    }

    v3 = *__error();
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v6 = 67109120;
    v7 = Errno;
    v4 = "aks_sealed_hashes_set: %#x";
    goto LABEL_9;
  }

  Errno = aks_seal_cryptex_manifest_lock();
  if (!Errno)
  {
    goto LABEL_11;
  }

  v3 = *__error();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v6 = 67109120;
    v7 = Errno;
    v4 = "aks_seal_cryptex_manifest_lock: %#x";
LABEL_9:
    _os_log_impl(&dword_2986F2000, v0, OS_LOG_TYPE_ERROR, v4, &v6, 8u);
  }

LABEL_10:
  *__error() = v3;
  Errno = _IOErrorGetErrno(Errno);
LABEL_11:
  if (v0)
  {
LABEL_12:
    os_release(v0);
  }

  return Errno;
}

uint64_t cryptex_signature_create(__n128 *a1, uint64_t a2, void *a3)
{
  v6 = _cryptex_signature_alloc(272);
  *(v6 + 40) = a2;
  if (a3)
  {
    v7 = xpc_retain(a3);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 264) = v7;
  buff_xfer((v6 + 56), a1);
  if (*(v6 + 96) == _buff_destructor_munmap)
  {
    cryptex_signature_create_cold_1();
  }

  *(v6 + 48) = ccsha384_di();
  _cryptex_signature_compute_hash(v6);
  object_proto_init(v6 + 16, "com.apple.security.libcryptex.core", "signature");
  return v6;
}

int *_cryptex_signature_compute_hash(uint64_t a1)
{
  *&v21[37] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  MEMORY[0x2A1C7C4A8]();
  bzero(&v16 - v3, v4);
  if (*v2 >= 0x31)
  {
    _cryptex_signature_compute_hash_cold_1(&v17, buf, *v2);
  }

  ccdigest_init();
  ccdigest_update();
  (*(*(a1 + 48) + 56))();
  v5 = *(a1 + 16);
  v6 = *__error();
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "[anonymous]";
    }

    v9 = **(a1 + 48);
    *buf = 136446722;
    v19 = v8;
    v20 = 1040;
    *v21 = v9;
    v21[2] = 2096;
    *&v21[3] = a1 + 112;
    _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: computed manifest hash: %.*P", buf, 0x1Cu);
  }

  *__error() = v6;
  v10 = a1 + 160;
  _sprintdgst(a1 + 160, (a1 + 112), **(a1 + 48));
  v11 = *(a1 + 16);
  v12 = *__error();
  v13 = *(a1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = "[anonymous]";
    }

    *buf = 136446466;
    v19 = v14;
    v20 = 2080;
    *v21 = v10;
    _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_DEBUG, "%{public}s: manifest hash cstring: %s", buf, 0x16u);
  }

  result = __error();
  *result = v12;
  return result;
}

uint64_t cryptex_signature_write(void *a1, int __fd)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = _write_file(__fd, (a1 + 7));
  if (v4)
  {
    v5 = a1[2];
    v6 = *__error();
    v7 = a1[4];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      *__error() = v6;
      return v4;
    }

    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v22 = 136446466;
    v23 = v8;
    v24 = 1024;
    v25 = v4;
    v9 = "%{public}s: Failed to write signature to file.: %{darwin.errno}d";
    goto LABEL_6;
  }

  v14 = a1[33];
  if (!v14)
  {
    v19 = a1[2];
    v6 = *__error();
    v20 = a1[4];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v21 = "[anonymous]";
    if (v19)
    {
      v21 = v19;
    }

    v22 = 136446210;
    v23 = v21;
    v9 = "%{public}s: Signature has no metadata.";
    v10 = v20;
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 12;
    goto LABEL_7;
  }

  v15 = xpc_retain(v14);
  v16 = cryptex_metadata_write_to_file_xattrs(v15, __fd);
  if (v15)
  {
    os_release(v15);
  }

  if (v16)
  {
    v17 = a1[2];
    v6 = *__error();
    v7 = a1[4];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v18 = "[anonymous]";
    if (v17)
    {
      v18 = v17;
    }

    v22 = 136446466;
    v23 = v18;
    v24 = 1024;
    v25 = v16;
    v9 = "%{public}s: Failed to write xattr metadata.: %{darwin.errno}d";
LABEL_6:
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 18;
LABEL_7:
    _os_log_impl(&dword_2986F2000, v10, v11, v9, &v22, v12);
    goto LABEL_8;
  }

  return v4;
}

CFTypeRef cryptex_signature_lock(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v48 = xmmword_29870A4C0;
  v4 = aks_sealed_hashes_set();
  if (v4 == -31)
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = *(a1 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v22;
      v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_2986F2000, v20, 16, "%{public}s: sealed hash slot is read-only", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v33 = *(a1 + 16);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v33;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: sealed hash slot is read-only", COERCE_DOUBLE(136446210), buf, 12);
    }

    v30 = v23;
    v31 = "com.apple.security.cryptex";
    v32 = 308;
    goto LABEL_46;
  }

  v5 = v4;
  if (v4 == -28)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v18;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986F2000, v16, 16, "%{public}s: All SSR slots have been used", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v29 = *(a1 + 16);
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v29;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: All SSR slots have been used", COERCE_DOUBLE(136446210), buf, 12);
    }

    v30 = v19;
    v31 = "com.apple.security.cryptex";
    v32 = 303;
LABEL_46:
    v34 = 36;
LABEL_53:
    Error = createError("cryptex_signature_lock", "signature.c", v32, v31, v34, 0, v30);
    v11 = 0;
    goto LABEL_54;
  }

  if (v4)
  {
    Errno = _IOErrorGetErrno(v4);
    v25 = *(a1 + 32);
    if (v25)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      if (*(a1 + 16))
      {
        v27 = *(a1 + 16);
      }

      else
      {
        v27 = "[anonymous]";
      }

      *buf = 136446722;
      v43 = v27;
      v44 = 1024;
      v45 = v5;
      v46 = 1024;
      v47 = _IOErrorGetErrno(v5);
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986F2000, v25, 16, "%{public}s: aks_sealed_hashes_set: %#x %{darwin.errno}d", buf, 24);
    }

    else
    {
      if (*(a1 + 16))
      {
        v36 = *(a1 + 16);
      }

      else
      {
        v36 = "[anonymous]";
      }

      *buf = 136446722;
      v43 = v36;
      v44 = 1024;
      v45 = v5;
      v46 = 1024;
      v47 = _IOErrorGetErrno(v5);
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: aks_sealed_hashes_set: %#x %{darwin.errno}d", buf, 24);
    }

    v30 = v28;
    v31 = "com.apple.security.cryptex.posix";
    v32 = 312;
    v34 = Errno;
    goto LABEL_53;
  }

  v6 = *(a1 + 16);
  v7 = *__error();
  v8 = *(a1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v43 = v9;
    _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: successfully set cryptex sealed hash.", buf, 0xCu);
  }

  *__error() = v7;
  v40 = xmmword_29870A4D0;
  v41 = xmmword_29870A4C0;
  v10 = cryptex_signature_secureconfig_add_entry(&v41, a1, a2, &v40, 16);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = *(a1 + 16);
    if (!v14)
    {
      v14 = "[anonymous]";
    }

    *buf = 136446210;
    v43 = v14;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986F2000, v12, 16, "%{public}s: Failed to add SecureConfig entry.", COERCE_DOUBLE(136446210), buf, 12);
  }

  else
  {
    v39 = *(a1 + 16);
    if (!v39)
    {
      v39 = "[anonymous]";
    }

    *buf = 136446210;
    v43 = v39;
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to add SecureConfig entry.", COERCE_DOUBLE(136446210), buf, 12);
  }

  v30 = v15;
  Error = createError("cryptex_signature_lock", "signature.c", 324, "com.apple.security.cryptex", 36, v11, v15);
LABEL_54:
  free(v30);
  if (!Error)
  {
    v35 = 0;
    if (!v11)
    {
      return v35;
    }

    goto LABEL_56;
  }

  v35 = CFRetain(Error);
  CFRelease(Error);
  if (v11)
  {
LABEL_56:
    CFRelease(v11);
  }

  return v35;
}

CFTypeRef cryptex_signature_secureconfig_add_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v77 = *MEMORY[0x29EDCA608];
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v8 = *(a2 + 16);
  v9 = *__error();
  v10 = *(a2 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446210;
    v74 = v11;
    _os_log_impl(&dword_2986F2000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: Preparing to add entry to secure config.", buf, 0xCu);
  }

  *__error() = v9;
  if (!MEMORY[0x2A1C77AD0])
  {
    v18 = *(a2 + 16);
    v19 = *__error();
    v20 = *(a2 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = "[anonymous]";
      if (v18)
      {
        v21 = v18;
      }

      *buf = 136446210;
      v74 = v21;
      _os_log_impl(&dword_2986F2000, v20, OS_LOG_TYPE_INFO, "%{public}s: SecureConfigDB not available", buf, 0xCu);
    }

    default_database = 0;
    goto LABEL_21;
  }

  default_database = secure_config_get_default_database();
  if (!default_database)
  {
    v25 = *(a2 + 32);
    if (v25)
    {
      if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = *(a2 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v27;
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986F2000, v25, 16, "%{public}s: Unable to get default SecureConfig database", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    else
    {
      v32 = *(a2 + 16);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v32;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Unable to get default SecureConfig database", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    v33 = v28;
    v34 = 217;
    goto LABEL_61;
  }

  if (!MEMORY[0x2A1C77AC8])
  {
    if (!a4)
    {
      slot = secure_config_database_create_slot();
      goto LABEL_40;
    }

    v29 = *(a2 + 16);
    v19 = *__error();
    v30 = *(a2 + 32);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = "[anonymous]";
      if (v29)
      {
        v31 = v29;
      }

      *buf = 136446210;
      v74 = v31;
      _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_ERROR, "%{public}s: Unable to create SecureConfigDB slot with salt", buf, 0xCu);
    }

LABEL_21:
    slot = 0;
    v22 = 0;
    *__error() = v19;
    goto LABEL_22;
  }

  slot = secure_config_database_create_slot_with_saltdata();
  if (!slot)
  {
    v14 = *(a2 + 32);
    if (v14)
    {
      if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v16 = *(a2 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v16;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986F2000, v14, 16, "%{public}s: Unable to create cryptex slot", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    else
    {
      v47 = *(a2 + 16);
      if (!v47)
      {
        v47 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v47;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Unable to create cryptex slot", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    v33 = v17;
    v34 = 227;
LABEL_61:
    Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", v34, "com.apple.security.cryptex", 36, 0, v33);
    slot = 0;
LABEL_62:
    v22 = 0;
    goto LABEL_96;
  }

LABEL_40:
  v35 = secure_config_entry_create_with_buffer();
  if (!v35)
  {
    v43 = *(a2 + 32);
    if (v43)
    {
      if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v45 = *(a2 + 16);
      if (!v45)
      {
        v45 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v45;
      v46 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_2986F2000, v43, 16, "%{public}s: Failed to create config entry", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    else
    {
      v60 = *(a2 + 16);
      if (!v60)
      {
        v60 = "[anonymous]";
      }

      *buf = 136446210;
      v74 = v60;
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to create config entry", COERCE_DOUBLE(136446210), buf, 12, v69, v70, v71, v72);
    }

    v33 = v46;
    Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", 242, "com.apple.security.cryptex", 36, 0, v46);
    goto LABEL_62;
  }

  v22 = v35;
  if (v6 < 0)
  {
LABEL_71:
    appended = secure_config_slot_append_entry();
    if (appended)
    {
      v55 = appended;
      v38 = appended;
      v56 = *(a2 + 32);
      if (v56)
      {
        if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v58 = *(a2 + 16);
        if (!v58)
        {
          v58 = "[anonymous]";
        }

        *buf = 136446466;
        v74 = v58;
        v75 = 1024;
        v76 = v55;
        v59 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_2986F2000, v56, 16, "%{public}s: Failed to register config entry %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
      }

      else
      {
        v63 = *(a2 + 16);
        if (!v63)
        {
          v63 = "[anonymous]";
        }

        *buf = 136446466;
        v74 = v63;
        v75 = 1024;
        v76 = appended;
        v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to register config entry %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
      }

      v33 = v59;
      v62 = 268;
      goto LABEL_95;
    }

LABEL_22:
    buff_destroy(&v69, v23);
    Error = 0;
    goto LABEL_99;
  }

  v36 = _read_file(v6, &v69);
  if (!v36)
  {
    v48 = secure_config_entry_set_metadata();
    if (v48)
    {
      v49 = v48;
      v38 = v48;
      v50 = *(a2 + 32);
      if (v50)
      {
        if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v52 = *(a2 + 16);
        if (!v52)
        {
          v52 = "[anonymous]";
        }

        *buf = 136446466;
        v74 = v52;
        v75 = 1024;
        v76 = v49;
        v53 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_2986F2000, v50, 16, "%{public}s: Failed to add c411 to config entry %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
      }

      else
      {
        v64 = *(a2 + 16);
        if (!v64)
        {
          v64 = "[anonymous]";
        }

        *buf = 136446466;
        v74 = v64;
        v75 = 1024;
        v76 = v48;
        v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to add c411 to config entry %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
      }

      v33 = v53;
      v62 = 259;
      goto LABEL_95;
    }

    goto LABEL_71;
  }

  v37 = v36;
  v38 = v36;
  v39 = *(a2 + 32);
  if (v39)
  {
    if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v41 = *(a2 + 16);
    if (!v41)
    {
      v41 = "[anonymous]";
    }

    *buf = 136446466;
    v74 = v41;
    v75 = 1024;
    v76 = v37;
    v42 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_2986F2000, v39, 16, "%{public}s: Failed to read c411 contents. Bailing %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
  }

  else
  {
    v61 = *(a2 + 16);
    if (!v61)
    {
      v61 = "[anonymous]";
    }

    *buf = 136446466;
    v74 = v61;
    v75 = 1024;
    v76 = v36;
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to read c411 contents. Bailing %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, v69, v70, v71, v72);
  }

  v33 = v42;
  v62 = 251;
LABEL_95:
  Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", v62, "com.apple.security.cryptex.posix", v38, 0, v33);
LABEL_96:
  free(v33);
  buff_destroy(&v69, v65);
  if (!Error)
  {
LABEL_99:
    v66 = 0;
    v67 = 1;
    if (!v22)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v66 = CFRetain(Error);
  v67 = 0;
  if (v22)
  {
LABEL_100:
    os_release(v22);
  }

LABEL_101:
  if (slot)
  {
    os_release(slot);
  }

  if (default_database)
  {
    os_release(default_database);
  }

  if ((v67 & 1) == 0)
  {
    CFRelease(Error);
  }

  return v66;
}

CFTypeRef cryptex_signature_lock_with_sep(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v4 = aks_measure_and_seal_cryptex_manifest();
  v5 = v4;
  if (v4 > -536362987)
  {
    if (v4 == -536362986)
    {
      v30 = *(a1 + 32);
      if (v30)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v32 = *(a1 + 16);
        if (!v32)
        {
          v32 = "[anonymous]";
        }

        *buf = 136446466;
        v46 = v32;
        v47 = 1024;
        v48 = -536362986;
        v33 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_2986F2000, v30, 16, "%{public}s: failed to write cryptex manifest hash: %#x", COERCE_DOUBLE(136446466), buf, 18);
      }

      else
      {
        v40 = *(a1 + 16);
        if (!v40)
        {
          v40 = "[anonymous]";
        }

        *buf = 136446466;
        v46 = v40;
        v47 = 1024;
        v48 = -536362986;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write cryptex manifest hash: %#x", COERCE_DOUBLE(136446466), buf, 18);
      }

      v35 = v33;
      v36 = "com.apple.security.cryptex";
      v37 = 371;
      goto LABEL_59;
    }

    if (!v4)
    {
      v10 = *(a1 + 16);
      v11 = *__error();
      v12 = *(a1 + 32);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136446210;
        v46 = v13;
        _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: successfully sealed im4m.", buf, 0xCu);
      }

      *__error() = v11;
      v44 = xmmword_29870A4E0;
      v14 = cryptex_signature_secureconfig_add_entry(&v44, a1, a2, 0, 0);
      if (!v14)
      {
        return 0;
      }

      v15 = v14;
      v16 = *(a1 + 32);
      if (v16)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = *(a1 + 16);
        if (!v18)
        {
          v18 = "[anonymous]";
        }

        *buf = 136446210;
        v46 = v18;
        v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986F2000, v16, 16, "%{public}s: Failed to add SecureConfig entry.", COERCE_DOUBLE(136446210), buf, 12);
      }

      else
      {
        v43 = *(a1 + 16);
        if (!v43)
        {
          v43 = "[anonymous]";
        }

        *buf = 136446210;
        v46 = v43;
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to add SecureConfig entry.", COERCE_DOUBLE(136446210), buf, 12);
      }

      v35 = v19;
      Error = createError("cryptex_signature_lock_with_sep", "signature.c", 389, "com.apple.security.cryptex", 36, v15, v19);
      goto LABEL_61;
    }

LABEL_25:
    Errno = _IOErrorGetErrno(v4);
    v21 = *(a1 + 32);
    if (v21)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      if (*(a1 + 16))
      {
        v23 = *(a1 + 16);
      }

      else
      {
        v23 = "[anonymous]";
      }

      *buf = 136446722;
      v46 = v23;
      v47 = 1024;
      v48 = v5;
      v49 = 1024;
      v50 = _IOErrorGetErrno(v5);
      v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_2986F2000, v21, 16, "%{public}s: aks_measure_and_seal_cryptex_manifest: %#x %{darwin.errno}d", buf, 24);
    }

    else
    {
      if (*(a1 + 16))
      {
        v34 = *(a1 + 16);
      }

      else
      {
        v34 = "[anonymous]";
      }

      *buf = 136446722;
      v46 = v34;
      v47 = 1024;
      v48 = v5;
      v49 = 1024;
      v50 = _IOErrorGetErrno(v5);
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: aks_measure_and_seal_cryptex_manifest: %#x %{darwin.errno}d", buf, 24);
    }

    v35 = v24;
    v36 = "com.apple.security.cryptex.posix";
    v37 = 376;
    v38 = Errno;
    goto LABEL_60;
  }

  if (v4 == -536870170)
  {
    v25 = *(a1 + 16);
    v26 = *__error();
    v27 = *(a1 + 32);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = "[anonymous]";
      if (v25)
      {
        v28 = v25;
      }

      *buf = 136446210;
      v46 = v28;
      _os_log_impl(&dword_2986F2000, v27, OS_LOG_TYPE_INFO, "%{public}s: sealing im4m with SEP is unsupported on this device.", buf, 0xCu);
    }

    v29 = 0;
    *__error() = v26;
    return v29;
  }

  if (v4 != -536363000)
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = "[anonymous]";
    }

    *buf = 136446466;
    v46 = v8;
    v47 = 1024;
    v48 = -536363000;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_2986F2000, v6, 16, "%{public}s: failed to verify cryptex manifest: %#x", COERCE_DOUBLE(136446466), buf, 18);
  }

  else
  {
    v39 = *(a1 + 16);
    if (!v39)
    {
      v39 = "[anonymous]";
    }

    *buf = 136446466;
    v46 = v39;
    v47 = 1024;
    v48 = -536363000;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to verify cryptex manifest: %#x", COERCE_DOUBLE(136446466), buf, 18);
  }

  v35 = v9;
  v36 = "com.apple.security.cryptex";
  v37 = 366;
LABEL_59:
  v38 = 36;
LABEL_60:
  Error = createError("cryptex_signature_lock_with_sep", "signature.c", v37, v36, v38, 0, v35);
  v15 = 0;
LABEL_61:
  free(v35);
  if (!Error)
  {
    v29 = 0;
    if (!v15)
    {
      return v29;
    }

    goto LABEL_63;
  }

  v29 = CFRetain(Error);
  CFRelease(Error);
  if (v15)
  {
LABEL_63:
    CFRelease(v15);
  }

  return v29;
}

char *_find_error(unsigned int a1)
{
  if (a1 < 0x1B)
  {
    v1 = 0;
    v2 = &_generic_errors;
    goto LABEL_7;
  }

  if (a1 - 3501 < 7)
  {
    v1 = -3501;
    v2 = &_http_errors;
    goto LABEL_7;
  }

  if (a1 - 5000 < 0xB)
  {
    v1 = -5000;
    v2 = &_zip_errors;
LABEL_7:
    v3 = &v2[32 * v1 + 32 * a1];
    if (*(v3 + 2) == a1)
    {
      return v3;
    }

    else
    {
      return &_unknown_error;
    }
  }

  switch(a1)
  {
    case 0x63u:
      return &_generic_error;
    case 0xDACu:
      return &_http_internal_error;
    case 0xC7Au:
      return &_tss_declined_error;
  }

  if (a1 - 3100 >= 0x356)
  {
    return &_unknown_error;
  }

  return &_tss_error;
}

char *_AMAuthInstallErrorString(unsigned int a1, char *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  error = _find_error(a1);
  v5 = error;
  if (!a2)
  {
    return *(error + 2);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
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
  v8 = 0u;
  if (*error)
  {
    snprintf(__str, 0x200uLL, ": %#x [%d, %d]", a1 - *(error + 6), a1 - *(error + 6), a1);
  }

  snprintf(a2, 0x100uLL, "%s%s", *(v5 + 2), __str);
  return a2;
}

void _AMAuthInstallSetAPParamsFromHost(uint64_t a1, __CFDictionary *a2)
{
  if (*(a1 + 8) == MEMORY[0x29EDC96B0])
  {
    v4 = "sha1";
  }

  else
  {
    v4 = "sha2-384";
  }

  _CFDictionarySetString(a2, *MEMORY[0x29EDC9230], v4);
  if ((*(a1 + 17) & 0x10) == 0)
  {
    _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9250], *(a1 + 56));
  }

  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9208], *(a1 + 28));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9210], *(a1 + 32));
  _CFDictionarySetUInt64(a2, *MEMORY[0x29EDC9218], *(a1 + 40));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9240], *(a1 + 36));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9238], *(a1 + 48));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9248], *(a1 + 49));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9220], *(a1 + 50));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9228], *(a1 + 51));
  v5 = *MEMORY[0x29EDC9258];

  _CFDictionarySetBool(a2, v5, 1);
}

CFDataRef _AMAuthInstallCryptex1CopyUDID(const __CFNumber *a1, const __CFNumber *a2)
{
  v4 = 0;
  v5 = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &v4 + 4);
  CFNumberGetValue(a2, kCFNumberSInt64Type, &v5);
  HIDWORD(v4) = bswap32(HIDWORD(v4));
  v5 = bswap64(v5);
  return CFDataCreate(*MEMORY[0x29EDB8ED8], &v4, 16);
}

void _AMAuthInstallSetCryptex1ParamsFromHost(uint64_t a1, __CFDictionary *a2)
{
  valuePtr = *(a1 + 32);
  v4 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberLongLongType, (a1 + 40));
  v6 = _AMAuthInstallCryptex1CopyUDID(v4, v5);
  CFDictionarySetValue(a2, *MEMORY[0x29EDC9300], v6);
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92B0], *(a1 + 128));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92F8], *(a1 + 132));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92D8], *(a1 + 140));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC92E0], *(a1 + 48));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9308], 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void _AMAuthInstallSetCryptex1ApParamsFromHost(uint64_t a1, CFMutableDictionaryRef theDict)
{
  CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC9308]);
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9208], *(a1 + 28));
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9210], *(a1 + 32));
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9240], *(a1 + 36));
  v4 = *MEMORY[0x29EDC9238];
  v5 = *(a1 + 48);

  _CFDictionarySetBool(theDict, v4, v5);
}

void _authinstall_logger(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = os_log_create("com.apple.libcryptex", "authinstall");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&dword_2986F2000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

void _cryptex_scrivener_dealloc(uint64_t a1)
{
  os_release(*(a1 + 88));
  v2 = *(a1 + 184);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    CFRelease(v6);
  }

  free(*(a1 + 160));
  *(a1 + 160) = 0;
  v7 = *(a1 + 224);
  if (v7)
  {
    os_release(v7);
  }

  free(*(a1 + 168));
  *(a1 + 168) = 0;

  object_proto_destroy(a1 + 56);
}

void *cryptex_scrivener_create(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = _cryptex_scrivener_alloc(232);
  v4[10] = a2;
  v4[11] = os_retain(a1);
  if (_dispatch_is_multithreaded())
  {
    for (i = strdup("https://gs.apple.com:443"); !i; i = strdup("https://gs.apple.com:443"))
    {
      __os_temporary_resource_shortage();
    }
  }

  else
  {
    i = strdup("https://gs.apple.com:443");
    if (!i)
    {
      cryptex_scrivener_create_cold_1(&v8, v9);
    }
  }

  v4[20] = i;
  v6 = a1[21];
  if (v6 && (*(v6 + 40) & 1) != 0)
  {
    cryptex_scrivener_set_url(v4, "https://diavlo.apple.com:443");
  }

  object_proto_init((v4 + 7), "com.apple.security.libcryptex.core", "scrivener");
  cryptex_init(v4, 0, _cryptex_scrivener_init, 0);
  return v4;
}

void cryptex_scrivener_set_url(void *a1, const char *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a1[20];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(a2);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(a2);
    if (!v5)
    {
      cryptex_scrivener_set_url_cold_1(a2, &v10, buf);
    }
  }

  a1[20] = v5;
  v6 = a1[7];
  v7 = *__error();
  v8 = a1[9];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    *buf = 136446722;
    if (v6)
    {
      v9 = v6;
    }

    v12 = v9;
    v13 = 2080;
    v14 = v4;
    v15 = 2080;
    v16 = a2;
    _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: signing service url: %s -> %s", buf, 0x20u);
  }

  *__error() = v7;
  free(v4);
}

uint64_t _cryptex_scrivener_init(uint64_t a1)
{
  v92 = *MEMORY[0x29EDCA608];
  v2 = AMAuthInstallCreate();
  *(a1 + 192) = v2;
  _CFCreateAssertImpl(v2, "CFType-compatible");
  v3 = *(*(a1 + 88) + 168);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  LOWORD(v83) = 6;
  if (v3)
  {
    v4 = *(v3 + 192);
    v5 = *(a1 + 56);
    v6 = *__error();
    v7 = *(a1 + 72);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v8)
      {
        v9 = "[anonymous]";
        if (v5)
        {
          v9 = v5;
        }

        *buf = 136446210;
        *&buf[4] = v9;
        _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip instance", buf, 0xCu);
      }

      *__error() = v6;
      v10 = *(*(*(a1 + 88) + 168) + 192);
      goto LABEL_30;
    }

    if (v8)
    {
      v18 = "[anonymous]";
      if (v5)
      {
        v18 = v5;
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip environment", buf, 0xCu);
    }

    *__error() = v6;
    v17 = *(v3 + 1160);
  }

  else
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 56);
    v13 = *__error();
    v14 = *(a1 + 72);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if ((v11 & 8) != 0)
    {
      if (v15)
      {
        v19 = "[anonymous]";
        if (v12)
        {
          v19 = v12;
        }

        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: using generic cryptex1 environment", buf, 0xCu);
      }

      *__error() = v13;
      v17 = MEMORY[0x29EDC96D0];
    }

    else
    {
      if (v15)
      {
        v16 = "[anonymous]";
        if (v12)
        {
          v16 = v12;
        }

        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: using personalized chip environment", buf, 0xCu);
      }

      *__error() = v13;
      v17 = img4_chip_select_personalized_ap();
    }
  }

  WORD3(v83) = 0;
  *(&v83 + 2) = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  LOWORD(v83) = 6;
  *(&v83 + 1) = v17;
  v10 = &v83;
  v20 = img4_chip_instantiate();
  if (v20)
  {
    nonce_domain = v20;
    v22 = *(a1 + 56);
    v23 = *__error();
    v24 = *(a1 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = "[anonymous]";
      if (v22)
      {
        v25 = v22;
      }

      *buf = 136446466;
      *&buf[4] = v25;
      *&buf[12] = 1024;
      *&buf[14] = nonce_domain;
      _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to instantiate chip: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v23;
    return cryptex_set_error(a1, nonce_domain);
  }

LABEL_30:
  v26 = *(a1 + 152);
  if (v26)
  {
LABEL_31:
    v27 = CFDataCreate(0, (v26 + 2), *(v26 + 52));
    _CFCreateAssertImpl(v27, "CFData");
    MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
    v29 = *(a1 + 80);
    v30 = *(a1 + 56);
    v31 = *__error();
    v32 = *(a1 + 72);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
    if ((v29 & 8) != 0)
    {
      if (v33)
      {
        v51 = "[anonymous]";
        v52 = *(v10 + 32);
        v53 = *(v10 + 33);
        if (v30)
        {
          v51 = v30;
        }

        v54 = *(v10 + 34);
        v55 = *(v10 + 35);
        *buf = 136447234;
        *&buf[4] = v51;
        *&buf[12] = 1024;
        *&buf[14] = v52;
        *&buf[18] = 1024;
        *&buf[20] = v53;
        *&buf[24] = 1024;
        *&buf[26] = v54;
        *&buf[30] = 1024;
        LODWORD(v73) = v55;
        _os_log_impl(&dword_2986F2000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: using Cryptex1 identity:\n    FCHP = %#x\n    TYPE = %#x\n    STYP = %#x\n    CLAS = %#x", buf, 0x24u);
      }

      *__error() = v31;
      _AMAuthInstallSetCryptex1ParamsFromHost(v10, MutableForCFTypes);
      v56 = *(*(a1 + 88) + 216);
      if (v56 && (*(v56 + 65) & 1) == 0)
      {
        _AMAuthInstallSetCryptex1ApParamsFromHost(v10, MutableForCFTypes);
      }

      v44 = MEMORY[0x29EDC92C0];
    }

    else
    {
      if (v33)
      {
        v34 = "[anonymous]";
        v35 = *(v10 + 6);
        v36 = *(v10 + 7);
        if (v30)
        {
          v34 = v30;
        }

        v37 = *(v10 + 8);
        v38 = *(v10 + 9);
        v39 = *(v10 + 5);
        v40 = *(v10 + 48);
        v41 = *(v10 + 49);
        v42 = *(v10 + 50);
        v43 = *(v10 + 51);
        *buf = 136448514;
        *&buf[4] = v34;
        *&buf[12] = 1024;
        *&buf[14] = v35;
        *&buf[18] = 1024;
        *&buf[20] = v36;
        *&buf[24] = 1024;
        *&buf[26] = v37;
        *&buf[30] = 1024;
        LODWORD(v73) = v38;
        WORD2(v73) = 2048;
        *(&v73 + 6) = v39;
        HIWORD(v73) = 1024;
        *v74 = v40;
        *&v74[4] = 1024;
        *&v74[6] = v41;
        v75 = 1024;
        v76 = v42;
        v77 = 1024;
        v78 = v43;
        _os_log_impl(&dword_2986F2000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: using device identity:\n    CEPO = %#x\n    BORD = %#x\n    CHIP = %#x\n    SDOM = %#x\n    ECID = %#llx\n    CPRO = %#x\n    CSEC = %#x\n    EPRO = %#x\n    ESEC = %#x", buf, 0x46u);
      }

      *__error() = v31;
      _AMAuthInstallSetAPParamsFromHost(v10, MutableForCFTypes);
      v44 = MEMORY[0x29EDC9200];
    }

    CFDictionarySetValue(MutableForCFTypes, *v44, v27);
    if ((*(a1 + 80) & 2) != 0)
    {
      CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC91F8], *MEMORY[0x29EDB8F00]);
    }

    v57 = *(a1 + 56);
    v58 = *__error();
    v59 = *(a1 + 72);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = "[anonymous]";
      if (v57)
      {
        v60 = v57;
      }

      *buf = 136446466;
      *&buf[4] = v60;
      *&buf[12] = 2112;
      *&buf[14] = MutableForCFTypes;
      _os_log_impl(&dword_2986F2000, v59, OS_LOG_TYPE_DEBUG, "%{public}s: ap parameters = %@", buf, 0x16u);
    }

    *__error() = v58;
    *(a1 + 184) = CFDictionaryCreateCopy(0, MutableForCFTypes);
    if (v27)
    {
      CFRelease(v27);
    }

    if (MutableForCFTypes)
    {
      CFRelease(MutableForCFTypes);
    }

    goto LABEL_69;
  }

  v70 = 0;
  v71 = MEMORY[0x29EDC96E0];
  *v74 = 0;
  v73 = 0u;
  memset(buf, 0, sizeof(buf));
  nonce_domain = cryptex_core_get_nonce_domain(*(a1 + 88), &v71);
  if (nonce_domain || !v71)
  {
    v61 = *(a1 + 56);
    v46 = *__error();
    v62 = *(a1 + 72);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v63 = "[anonymous]";
    if (v61)
    {
      v63 = v61;
    }

    *v79 = 136446466;
    v80 = v63;
    v81 = 1024;
    LODWORD(v82) = nonce_domain;
    v49 = "%{public}s: failed to get nonce domain from core: %{darwin.errno}d";
  }

  else
  {
    nonce_domain = cryptex_core_copy_nonce_domain_desc(*(a1 + 88), &v70);
    v45 = *(a1 + 56);
    v46 = *__error();
    v47 = *(a1 + 72);
    if (nonce_domain)
    {
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      v48 = "[anonymous]";
      if (v45)
      {
        v48 = v45;
      }

      *v79 = 136446466;
      v80 = v48;
      v81 = 1024;
      LODWORD(v82) = nonce_domain;
      v49 = "%{public}s: failed to get nonce domain description from core: %{darwin.errno}d";
      v50 = v47;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v65 = "[anonymous]";
      if (v45)
      {
        v65 = v45;
      }

      *v79 = 136446466;
      v80 = v65;
      v81 = 2082;
      v82 = v70;
      _os_log_impl(&dword_2986F2000, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: signing using nonce from %{public}s", v79, 0x16u);
    }

    *__error() = v46;
    v66 = img4_nonce_domain_copy_nonce();
    if (!v66)
    {
      v69 = *&buf[16];
      *(a1 + 96) = *buf;
      *(a1 + 112) = v69;
      *(a1 + 128) = v73;
      *(a1 + 144) = *v74;
      *(a1 + 152) = a1 + 96;
      free(v70);
      v26 = *(a1 + 152);
      goto LABEL_31;
    }

    nonce_domain = v66;
    v67 = *(a1 + 56);
    v46 = *__error();
    v62 = *(a1 + 72);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v68 = "[anonymous]";
    if (v67)
    {
      v68 = v67;
    }

    *v79 = 136446466;
    v80 = v68;
    v81 = 1024;
    LODWORD(v82) = nonce_domain;
    v49 = "%{public}s: img4_nonce_domain_copy_nonce: %{darwin.errno}d";
  }

  v50 = v62;
LABEL_67:
  _os_log_impl(&dword_2986F2000, v50, OS_LOG_TYPE_ERROR, v49, v79, 0x12u);
LABEL_68:
  *__error() = v46;
  free(v70);
  if (!nonce_domain)
  {
LABEL_69:
    _init_authinstall_log();
    nonce_domain = 0;
  }

  return cryptex_set_error(a1, nonce_domain);
}

void cryptex_scrivener_sign(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = ctx_new(a1, 0x38uLL);
  v6[4] = 0;
  v6[5] = a2;
  v6[6] = a3;
  v7 = a1[7];
  v8 = *__error();
  v9 = a1[9];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    v11 = 136446210;
    v12 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: requesting signature", &v11, 0xCu);
  }

  *__error() = v8;
  cryptex_async_f(a1, v6, _cryptex_scrivener_sign_continue);
}

void _cryptex_scrivener_sign_continue(uint64_t *a1)
{
  v117 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v105 = 0;
  object = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  memset(v109, 0, sizeof(v109));
  error = cryptex_get_error(v2);
  if (error)
  {
    v4 = error;
    v5 = error;
    v6 = *(v2 + 72);
    if (v6)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v8 = *(v2 + 56);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      *buf = 136446466;
      *v114 = v8;
      *&v114[8] = 1024;
      *&v114[10] = v4;
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_2986F2000, v6, 16, "%{public}s: initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v102, v103, v104, v105);
    }

    else
    {
      v16 = *(v2 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446466;
      *v114 = v16;
      *&v114[8] = 1024;
      *&v114[10] = error;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v102, v103, v104, v105);
    }

    v17 = v9;
    v18 = "com.apple.security.cryptex.posix";
    v19 = 561;
    goto LABEL_16;
  }

  if ((*(v2 + 80) & 8) != 0)
  {
    v23 = CFDataCreate(0, 0, 0);
    inited = _cryptex_scrivener_init_tss_common(v2);
    if (inited)
    {
      LODWORD(v12) = inited;
      MutableForCFTypes = 0;
      if (!v23)
      {
LABEL_21:
        if (!MutableForCFTypes)
        {
          goto LABEL_76;
        }

        v26 = MutableForCFTypes;
        goto LABEL_75;
      }

LABEL_20:
      CFRelease(v23);
      goto LABEL_21;
    }

    MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
    CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC92E8], *MEMORY[0x29EDB8F00]);
    _CFDictionaryMergeDictionary(MutableForCFTypes, *(v2 + 184));
    v36 = *(*(v2 + 88) + 216);
    if (v36)
    {
      _CFDictionarySetUInt32(MutableForCFTypes, *MEMORY[0x29EDC92C8], *(v36 + 40));
      _CFDictionarySetUInt32(MutableForCFTypes, *MEMORY[0x29EDC92F0], *(*(*(v2 + 88) + 216) + 44));
      _CFDictionarySetString(MutableForCFTypes, *MEMORY[0x29EDC9310], *(*(*(v2 + 88) + 216) + 48));
      _CFDictionarySetString(MutableForCFTypes, *MEMORY[0x29EDC92D0], *(*(*(v2 + 88) + 216) + 56));
    }

    v37 = _cryptex_scrivener_init_tss_assets(v2, MutableForCFTypes);
    if (v37)
    {
      LODWORD(v12) = v37;
      v38 = *(v2 + 56);
      v39 = *__error();
      v40 = *(v2 + 72);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_146;
      }

      v41 = "[anonymous]";
      if (v38)
      {
        v41 = v38;
      }

      *buf = 136446466;
      *v114 = v41;
      *&v114[8] = 1024;
      *&v114[10] = v12;
      v42 = "%{public}s: Failed to attach asset measurement(s).: %{darwin.errno}d";
      goto LABEL_41;
    }

    bytes[0] = 0;
    if (cryptex_core_get_info_asset(*(v2 + 88)))
    {
      v43 = cryptex_core_parse_info_asset(*(v2 + 88), 0, 0, bytes);
      if (v43)
      {
        LODWORD(v12) = v43;
        v44 = *(v2 + 56);
        v45 = *__error();
        v46 = *(v2 + 72);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = "[anonymous]";
          if (v44)
          {
            v47 = v44;
          }

          *buf = 136446466;
          *v114 = v47;
          *&v114[8] = 1024;
          *&v114[10] = v12;
          _os_log_impl(&dword_2986F2000, v46, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse cryptex info: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v45;
        v48 = *(v2 + 56);
        v39 = *__error();
        v40 = *(v2 + 72);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v49 = "[anonymous]";
          if (v48)
          {
            v49 = v48;
          }

          *buf = 136446466;
          *v114 = v49;
          *&v114[8] = 1024;
          *&v114[10] = v12;
          v42 = "%{public}s: Failed to stamp DataOnly.: %{darwin.errno}d";
LABEL_41:
          _os_log_impl(&dword_2986F2000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0x12u);
        }

LABEL_146:
        *__error() = v39;
        if (!v23)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (bytes[0] == 1)
      {
        _CFDictionarySetBool(MutableForCFTypes, @"Cryptex1,DataOnly", 1);
      }
    }

    CFDictionarySetValue(MutableForCFTypes, @"Cryptex1,UniqueTagList", v23);
    *(v2 + 200) = CFDictionaryCreateCopy(0, MutableForCFTypes);
    v97 = *(v2 + 56);
    v39 = *__error();
    v98 = *(v2 + 72);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = "[anonymous]";
      v100 = *(v2 + 200);
      if (v97)
      {
        v99 = v97;
      }

      *buf = 136446466;
      *v114 = v99;
      *&v114[8] = 2114;
      *&v114[10] = v100;
      _os_log_impl(&dword_2986F2000, v98, OS_LOG_TYPE_DEFAULT, "%{public}s: tss request = %{public}@", buf, 0x16u);
    }

    LODWORD(v12) = 0;
    goto LABEL_146;
  }

  theDict = 0;
  *bytes = 0;
  v111 = 0;
  v112 = 0;
  v10 = CFDataCreate(0, 0, 0);
  v11 = _cryptex_scrivener_init_tss_common(v2);
  if (v11)
  {
    LODWORD(v12) = v11;
    MutableCopy = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v27 = *(v2 + 56);
    v28 = *__error();
    v29 = *(v2 + 72);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = "[anonymous]";
      v31 = *(v2 + 184);
      if (v27)
      {
        v30 = v27;
      }

      *buf = 136446466;
      *v114 = v30;
      *&v114[8] = 2112;
      *&v114[10] = v31;
      _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_DEBUG, "%{public}s: setting ap parameters = %@", buf, 0x16u);
    }

    *__error() = v28;
    if (AMAuthInstallApSetParameters())
    {
      _cryptex_scrivener_sign_continue_cold_1(v108, buf);
    }

    v15 = _CFDictionaryCreateMutableForCFTypes();
    LODWORD(v12) = _cryptex_scrivener_init_tss_assets(v2, v15);
    v32 = *(v2 + 56);
    v33 = *__error();
    v34 = *(v2 + 72);
    if (v12)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = "[anonymous]";
        if (v32)
        {
          v35 = v32;
        }

        *buf = 136446466;
        *v114 = v35;
        *&v114[8] = 1024;
        *&v114[10] = v12;
        _os_log_impl(&dword_2986F2000, v34, OS_LOG_TYPE_ERROR, "%{public}s: Failed to attach asset measurement(s).: %{darwin.errno}d", buf, 0x12u);
      }

      MutableCopy = 0;
      v14 = 0;
      *__error() = v33;
    }

    else
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v50 = "[anonymous]";
        if (v32)
        {
          v50 = v32;
        }

        *buf = 136446210;
        *v114 = v50;
        _os_log_impl(&dword_2986F2000, v34, OS_LOG_TYPE_DEBUG, "%{public}s: creating server request dictionary", buf, 0xCu);
      }

      *__error() = v33;
      if (AMAuthInstallApImg4CreateServerRequestDictionary())
      {
        _cryptex_scrivener_sign_continue_cold_2(v108, buf);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      v51 = MGGetStringAnswer();
      v12 = v51;
      if (!v51 || !_CFStringLocalizeCaseInsensitiveContains(v51, @"z41"))
      {
        CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC9320], *MEMORY[0x29EDB8EF8]);
      }

      v14 = CFDataCreate(0, bytes, 20);
      _CFCreateAssertImpl(v14, "CFData");
      CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC92A8], v14);
      CFDictionarySetValue(MutableCopy, @"Ap,UniqueTagList", v10);
      *(v2 + 200) = CFDictionaryCreateCopy(0, MutableCopy);
      v52 = *(v2 + 56);
      HIDWORD(v101) = *__error();
      v53 = *(v2 + 72);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "[anonymous]";
        v55 = *(v2 + 200);
        if (v52)
        {
          v54 = v52;
        }

        *buf = 136446466;
        *v114 = v54;
        *&v114[8] = 2114;
        *&v114[10] = v55;
        _os_log_impl(&dword_2986F2000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: tss request = %{public}@", buf, 0x16u);
      }

      *__error() = HIDWORD(v101);
      if (v12)
      {
        CFRelease(v12);
        LODWORD(v12) = 0;
      }
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v26 = theDict;
  if (theDict)
  {
LABEL_75:
    CFRelease(v26);
  }

LABEL_76:
  if (v12)
  {
    v56 = *(v2 + 72);
    if (v56)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v58 = *(v2 + 56);
      if (!v58)
      {
        v58 = "[anonymous]";
      }

      *buf = 136446466;
      *v114 = v58;
      *&v114[8] = 1024;
      *&v114[10] = v12;
      LODWORD(v101) = 18;
      v59 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_2986F2000, v56, 16, "%{public}s: tss initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v101, *&v102, v103, v104, v105);
    }

    else
    {
      v66 = *(v2 + 56);
      if (!v66)
      {
        v66 = "[anonymous]";
      }

      *buf = 136446466;
      *v114 = v66;
      *&v114[8] = 1024;
      *&v114[10] = v12;
      LODWORD(v101) = 18;
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: tss initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v101, *&v102, v103, v104, v105);
    }

    v67 = v59;
    v21 = createError("_cryptex_scrivener_sign_continue", "scrivener.c", 568, "com.apple.security.cryptex.posix", v12, 0, v59);
    v22 = v67;
    goto LABEL_95;
  }

  if ((*(v2 + 80) & 4) == 0)
  {
    PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
    if (PersonalizedResponse)
    {
      v61 = PersonalizedResponse;
      _AMAuthInstallPOSIXError(PersonalizedResponse);
      v5 = v61;
      v62 = *(v2 + 72);
      if (v62)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        v64 = _AMAuthInstallErrorString(v61, v109);
        *buf = 67109378;
        *v114 = v61;
        *&v114[4] = 2082;
        *&v114[6] = v64;
        LODWORD(v101) = 18;
        v65 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_2986F2000, v62, 16, "tss request failed: [%d] %{public}s", buf, v101, *&v102, v103, v104, v105);
      }

      else
      {
        v94 = _AMAuthInstallErrorString(v61, v109);
        *buf = 67109378;
        *v114 = v61;
        *&v114[4] = 2082;
        *&v114[6] = v94;
        LODWORD(v101) = 18;
        v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "tss request failed: [%d] %{public}s", buf, v101, *&v102, v103, v104, v105);
      }

      v17 = v65;
      v18 = "com.apple.security.cryptex.tatsu";
      v19 = 580;
LABEL_16:
      v20 = v5;
LABEL_17:
      v21 = createError("_cryptex_scrivener_sign_continue", "scrivener.c", v19, v18, v20, 0, v17);
      v22 = v17;
LABEL_95:
      free(v22);
      goto LABEL_96;
    }

    if ((*(v2 + 80) & 8) != 0)
    {
      v69 = MEMORY[0x29EDC92B8];
    }

    else
    {
      v69 = MEMORY[0x29EDC9298];
    }

    v70 = *v69;
    v71 = *(v2 + 56);
    v72 = *__error();
    v73 = *(v2 + 72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v74 = "[anonymous]";
      v75 = *(v2 + 208);
      if (v71)
      {
        v74 = v71;
      }

      *buf = 136446466;
      *v114 = v74;
      *&v114[8] = 2112;
      *&v114[10] = v75;
      _os_log_impl(&dword_2986F2000, v73, OS_LOG_TYPE_DEBUG, "%{public}s: tss response: %@", buf, 0x16u);
    }

    *__error() = v72;
    Value = CFDictionaryGetValue(*(v2 + 208), v70);
    if (!Value || (v77 = Value, v78 = CFGetTypeID(Value), v78 != CFDataGetTypeID()))
    {
      v88 = *(v2 + 72);
      if (v88)
      {
        v89 = os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v90 = *(v2 + 56);
        if (v89)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        *buf = 136446722;
        if (v90)
        {
          v92 = v90;
        }

        else
        {
          v92 = "[anonymous]";
        }

        *v114 = v92;
        *&v114[8] = 2114;
        *&v114[10] = v70;
        v115 = 1024;
        v116 = 94;
        LODWORD(v101) = 28;
        v93 = _os_log_send_and_compose_impl(v91, 0, 0, 0, &dword_2986F2000, v88, 16, "%{public}s: invalid/missing tss response key: %{public}@ %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v101, *&v102, v103, v104, v105);
      }

      else
      {
        v96 = "[anonymous]";
        if (*(v2 + 56))
        {
          v96 = *(v2 + 56);
        }

        *buf = 136446722;
        *v114 = v96;
        *&v114[8] = 2114;
        *&v114[10] = v70;
        v115 = 1024;
        v116 = 94;
        LODWORD(v101) = 28;
        v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: invalid/missing tss response key: %{public}@ %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v101, *&v102, v103, v104, v105);
      }

      v17 = v93;
      v18 = "com.apple.security.cryptex.posix";
      v19 = 597;
      v20 = 94;
      goto LABEL_17;
    }

    CFRetain(v77);
    BytePtr = CFDataGetBytePtr(v77);
    Length = CFDataGetLength(v77);
    buff_init_signed(&v102, v77, _buff_destroy_CFData, BytePtr, Length);
  }

  if (cryptex_core_get_info_asset(*(v2 + 88)))
  {
    v81 = cryptex_metadata_read_from_cryptex(*(v2 + 88), &object);
    if (v81)
    {
      v82 = v81;
      v5 = v81;
      v83 = *(v2 + 72);
      if (v83)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        v85 = *(v2 + 56);
        if (!v85)
        {
          v85 = "[anonymous]";
        }

        *buf = 136446466;
        *v114 = v85;
        *&v114[8] = 1024;
        *&v114[10] = v82;
        LODWORD(v101) = 18;
        v86 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &dword_2986F2000, v83, 16, "%{public}s: Failed to read signature metadata from cryptex. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v101, *&v102, v103, v104, v105);
      }

      else
      {
        v95 = *(v2 + 56);
        if (!v95)
        {
          v95 = "[anonymous]";
        }

        *buf = 136446466;
        *v114 = v95;
        *&v114[8] = 1024;
        *&v114[10] = v81;
        LODWORD(v101) = 18;
        v86 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to read signature metadata from cryptex. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v101, *&v102, v103, v104, v105);
      }

      v17 = v86;
      v18 = "com.apple.security.cryptex.posix";
      v19 = 610;
      goto LABEL_16;
    }

    v87 = object;
  }

  else
  {
    v87 = 0;
  }

  v21 = 0;
  *(v2 + 224) = cryptex_signature_create(&v102, *(v2 + 80) & 1, v87);
LABEL_96:
  buff_destroy(&v102, v68);
  a1[2] = v21;
  cryptex_target_async_f(v2, a1, _cryptex_scrivener_sign_callback);
  if (object)
  {
    os_release(object);
  }
}

__n128 cryptex_scrivener_set_nonce(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 112) = *(a2 + 16);
  *(a1 + 128) = v3;
  *(a1 + 96) = result;
  *(a1 + 144) = v4;
  *(a1 + 152) = a1 + 96;
  return result;
}

void cryptex_scrivener_read_signature(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = ctx_new(a1, 0x38uLL);
  v6[4] = 1;
  v6[5] = a2;
  v6[6] = a3;
  v7 = a1[7];
  v8 = *__error();
  v9 = a1[9];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    v11 = 136446210;
    v12 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: reading signature", &v11, 0xCu);
  }

  *__error() = v8;
  cryptex_async_f(a1, v6, _cryptex_scrivener_read_continue);
}

void _cryptex_scrivener_read_continue(uint64_t *a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v39 = 0;
  object = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  error = cryptex_get_error(v2);
  if (error)
  {
    v5 = error;
    if (error != 216 || v3 != 1)
    {
      v7 = error;
      v8 = *(v2 + 72);
      if (v8)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v10 = *(v2 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }

        *buf = 136446466;
        v42 = v10;
        v43 = 1024;
        v44 = v5;
        v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986F2000, v8, 16, "%{public}s: initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v36, v37, v38, v39);
      }

      else
      {
        v12 = *(v2 + 56);
        if (!v12)
        {
          v12 = "[anonymous]";
        }

        *buf = 136446466;
        v42 = v12;
        v43 = 1024;
        v44 = error;
        v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: initialization failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v36, v37, v38, v39);
      }

      v13 = v11;
      v14 = 653;
LABEL_42:
      v33 = createError("_cryptex_scrivener_read_continue", "scrivener.c", v14, "com.apple.security.cryptex.posix", v7, 0, v13);
      free(v13);
      goto LABEL_43;
    }

    v15 = *(v2 + 56);
    v16 = *__error();
    v17 = *(v2 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = "[anonymous]";
      if (v15)
      {
        v18 = v15;
      }

      *buf = 136446210;
      v42 = v18;
      _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_DEBUG, "%{public}s: ignoring ap environment", buf, 0xCu);
    }

    *__error() = v16;
  }

  asset = cryptex_core_get_asset(*(v2 + 88), &_cryptex_asset_type_im4m);
  if (!asset)
  {
    _cryptex_scrivener_read_continue_cold_1();
  }

  v20 = asset;
  v21 = _read_file(*(asset + 16), &v36);
  if (v21)
  {
    v22 = v21;
    v7 = v21;
    v23 = *(v2 + 72);
    if (v23)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = *(v2 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      *buf = 136446466;
      v42 = v25;
      v43 = 1024;
      v44 = v22;
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986F2000, v23, 16, "%{public}s: reading im4m failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v36, v37, v38, v39);
    }

    else
    {
      v35 = *(v2 + 56);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *buf = 136446466;
      v42 = v35;
      v43 = 1024;
      v44 = v21;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986F2000, MEMORY[0x29EDCA988], 16, "%{public}s: reading im4m failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *&v36, v37, v38, v39);
    }

    v13 = v26;
    v14 = 664;
    goto LABEL_42;
  }

  v27 = cryptex_metadata_read_from_file_xattrs(*(v20 + 16), &object);
  if (v27)
  {
    v28 = v27;
    v29 = *(v2 + 56);
    v30 = *__error();
    v31 = *(v2 + 72);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = "[anonymous]";
      if (v29)
      {
        v32 = v29;
      }

      *buf = 136446466;
      v42 = v32;
      v43 = 1024;
      v44 = v28;
      _os_log_impl(&dword_2986F2000, v31, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v30;
  }

  v33 = 0;
  *(v2 + 224) = cryptex_signature_create(&v36, *(v2 + 80) & 1, object);
LABEL_43:
  buff_destroy(&v36, v34);
  a1[2] = v33;
  cryptex_target_async_f(v2, a1, _cryptex_scrivener_sign_callback);
  if (object)
  {
    os_release(object);
  }
}

void cryptex_scrivener_set_socks_proxy(uint64_t a1, const char *a2, int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 168);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v7 = strdup(a2);
      if (v7)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v7 = strdup(a2);
    if (!v7)
    {
      cryptex_scrivener_set_url_cold_1(a2, &v13, buf);
    }
  }

  *(a1 + 168) = v7;
  v8 = *(a1 + 176);
  *(a1 + 176) = a3;
  v9 = *(a1 + 56);
  v10 = *__error();
  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "[anonymous]";
    *buf = 136447234;
    if (v9)
    {
      v12 = v9;
    }

    v15 = v12;
    v16 = 2080;
    v17 = v6;
    v18 = 1024;
    v19 = v8;
    v20 = 2080;
    v21 = a2;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: socks proxy: %s:%d -> %s:%d", buf, 0x2Cu);
  }

  *__error() = v10;
  free(v6);
}

int *cryptex_scrivener_set_auth_token(void *a1, UInt8 *bytes, CFIndex length)
{
  v20 = *MEMORY[0x29EDCA608];
  if (bytes && length)
  {
    v6 = a1[27];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[27] = CFDataCreate(0, bytes, length);
    v7 = a1[7];
    v8 = *__error();
    v9 = a1[9];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      v18 = 136446210;
      v19 = v10;
      v11 = "%{public}s: set auth token";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&dword_2986F2000, v12, v13, v11, &v18, 0xCu);
    }
  }

  else
  {
    v14 = a1[7];
    v8 = *__error();
    v15 = a1[9];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = "[anonymous]";
      if (v14)
      {
        v16 = v14;
      }

      v18 = 136446210;
      v19 = v16;
      v11 = "%{public}s: empty auth token";
      v12 = v15;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }
  }

  result = __error();
  *result = v8;
  return result;
}

void _cryptex_scrivener_sign_callback(void **a1)
{
  v2 = a1[2];
  (a1[6])(*a1, *(*a1 + 28), a1[2], a1[5]);
  ctx_destroy(a1);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _cryptex_scrivener_init_tss_common(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  memset(v46, 0, sizeof(v46));
  v2 = *(a1 + 56);
  v3 = *__error();
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    v6 = *(a1 + 160);
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446466;
    v48 = v5;
    v49 = 2080;
    *v50 = v6;
    _os_log_impl(&dword_2986F2000, v4, OS_LOG_TYPE_DEBUG, "%{public}s: setting url: %s", buf, 0x16u);
  }

  *__error() = v3;
  v7 = _CFStringCreateFromUTF8String(*(a1 + 160));
  v8 = CFURLCreateWithString(0, v7, 0);
  _CFCreateAssertImpl(v8, "CFURL");
  if (AMAuthInstallSetSigningServerURL())
  {
    _cryptex_scrivener_init_tss_common_cold_1(&v45, buf);
  }

  if (!*(a1 + 168) || !*(a1 + 176))
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 56);
  v10 = *__error();
  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    *buf = 136446210;
    v48 = v12;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: using socks proxy", buf, 0xCu);
  }

  *__error() = v10;
  v13 = *MEMORY[0x29EDB8ED8];
  v14 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, (a1 + 176));
  _CFCreateAssertImpl(v14, "CFNumber");
  v15 = CFStringCreateWithCString(v13, *(a1 + 168), 0x8000100u);
  _CFCreateAssertImpl(v15, "CFString");
  v16 = AMAuthInstallSetSOCKSProxyInformation();
  if (v16)
  {
    v17 = *(a1 + 56);
    v18 = *__error();
    v19 = *(a1 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v20 = _AMAuthInstallErrorString(v16, v46);
      *buf = 136446722;
      v48 = v17;
      v49 = 1024;
      *v50 = v16;
      *&v50[4] = 2082;
      *&v50[6] = v20;
      _os_log_impl(&dword_2986F2000, v19, OS_LOG_TYPE_ERROR, "%{public}s: AMAuthInstallSetSOCKSProxyInformation: [%d] %{public}s", buf, 0x1Cu);
    }

    *__error() = v18;
    v21 = _AMAuthInstallPOSIXError(v16);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
    if (v15)
    {
LABEL_18:
      CFRelease(v15);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
LABEL_28:
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_22:
  if ((*(a1 + 80) & 1) == 0)
  {
LABEL_23:
    v22 = *(a1 + 56);
    v23 = *__error();
    v24 = *(a1 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = "[anonymous]";
      v26 = *(a1 + 192);
      if (v22)
      {
        v25 = v22;
      }

      *buf = 136446466;
      v48 = v25;
      v49 = 2112;
      *v50 = v26;
      _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_DEBUG, "%{public}s: auth install = %@", buf, 0x16u);
    }

    v21 = 0;
    *__error() = v23;
    goto LABEL_28;
  }

  v28 = *(a1 + 56);
  v29 = *__error();
  v30 = *(a1 + 72);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = "[anonymous]";
    if (v28)
    {
      v31 = v28;
    }

    *buf = 136446210;
    v48 = v31;
    _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_DEBUG, "%{public}s: using sso", buf, 0xCu);
  }

  *__error() = v29;
  v32 = AMAuthInstallSsoInitialize();
  if (v32)
  {
    v33 = v32;
    v34 = *(a1 + 56);
    v35 = *__error();
    v36 = *(a1 + 72);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    if (!v34)
    {
      v34 = "[anonymous]";
    }

    v37 = _AMAuthInstallErrorString(v33, v46);
    *buf = 136446722;
    v48 = v34;
    v49 = 1024;
    *v50 = v33;
    *&v50[4] = 2082;
    *&v50[6] = v37;
    v38 = "%{public}s: AMAuthInstallSsoInitialize: [%d] %{public}s";
    goto LABEL_49;
  }

  v39 = AMAuthInstallSsoEnable();
  if (v39)
  {
    v33 = v39;
    v40 = *(a1 + 56);
    v35 = *__error();
    v36 = *(a1 + 72);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    if (!v40)
    {
      v40 = "[anonymous]";
    }

    v41 = _AMAuthInstallErrorString(v33, v46);
    *buf = 136446722;
    v48 = v40;
    v49 = 1024;
    *v50 = v33;
    *&v50[4] = 2082;
    *&v50[6] = v41;
    v38 = "%{public}s: AMAuthInstallSsoEnable: [%d] %{public}s";
    goto LABEL_49;
  }

  if (!*(a1 + 216))
  {
    goto LABEL_23;
  }

  v42 = AMAuthInstallSsoSetToken();
  if (!v42)
  {
    goto LABEL_23;
  }

  v33 = v42;
  v43 = *(a1 + 56);
  v35 = *__error();
  v36 = *(a1 + 72);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    if (!v43)
    {
      v43 = "[anonymous]";
    }

    v44 = _AMAuthInstallErrorString(v33, v46);
    *buf = 136446722;
    v48 = v43;
    v49 = 1024;
    *v50 = v33;
    *&v50[4] = 2082;
    *&v50[6] = v44;
    v38 = "%{public}s: AMAuthInstallSsoSetToken: [%d] %{public}s";
LABEL_49:
    _os_log_impl(&dword_2986F2000, v36, OS_LOG_TYPE_ERROR, v38, buf, 0x1Cu);
  }

LABEL_50:
  *__error() = v35;
  v21 = _AMAuthInstallPOSIXError(v33);
  if (v8)
  {
LABEL_29:
    CFRelease(v8);
  }

LABEL_30:
  if (v7)
  {
    CFRelease(v7);
  }

  return v21;
}

uint64_t _cryptex_scrivener_init_tss_assets(void *a1, uint64_t a2)
{
  v4 = &cryptex_asset_types;
  v39 = *MEMORY[0x29EDCA608];
  v5 = 64;
  while (1)
  {
    v6 = a1[11];
    v7 = *(v6 + v5);
    if (!v7)
    {
      v16 = a1[7];
      v10 = *__error();
      v17 = a1[9];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = "[anonymous]";
        if (v16)
        {
          v18 = v16;
        }

        v19 = *(*v4 + 5);
        *buf = 136446466;
        v34 = v18;
        v35 = 2080;
        v36 = v19;
        v14 = v17;
        v15 = "%{public}s: no asset of type: %s";
LABEL_14:
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x16u);
      }

LABEL_15:
      *__error() = v10;
      goto LABEL_21;
    }

    v8 = *(v7 + 8);
    if ((*v8 & 0x14) == 0)
    {
      break;
    }

LABEL_21:
    ++v4;
    v5 += 8;
    if (v5 == 160)
    {
      return 0;
    }
  }

  if (v8 == &_cryptex_asset_type_gdmg && cryptex_core_image_authapfs_enabled(v6))
  {
    v9 = a1[7];
    v10 = *__error();
    v11 = a1[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      v13 = *(*(v7 + 8) + 40);
      *buf = 136446466;
      v34 = v12;
      v35 = 2080;
      v36 = v13;
      v14 = v11;
      v15 = "%{public}s: skip stamping asset: %s";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v20 = a1[7];
  v21 = *__error();
  v22 = a1[9];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = "[anonymous]";
    if (v20)
    {
      v23 = v20;
    }

    v24 = *(*(v7 + 8) + 40);
    *buf = 136446466;
    v34 = v23;
    v35 = 2080;
    v36 = v24;
    _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_DEBUG, "%{public}s: stamping asset: %s", buf, 0x16u);
  }

  *__error() = v21;
  v25 = (*(*(v7 + 8) + 8))(v7, a1[24], a2, 0, a1 + 7);
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  v28 = a1[7];
  v29 = *__error();
  v30 = a1[9];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = "[anonymous]";
    if (v28)
    {
      v31 = v28;
    }

    v32 = *(*(v7 + 8) + 40);
    *buf = 136446722;
    v34 = v31;
    v35 = 2082;
    v36 = v32;
    v37 = 1024;
    v38 = v26;
    _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_ERROR, "%{public}s: failed to stamp asset: %{public}s: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v29;
  return v26;
}
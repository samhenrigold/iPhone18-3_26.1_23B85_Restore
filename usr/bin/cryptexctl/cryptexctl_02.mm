uint64_t sub_100034A0C(uint64_t a1, void *a2, xpc_object_t *a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  string = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  value = 0;
  array = xpc_dictionary_get_array(a2, "BuildIdentities");
  if (!array)
  {
    warnx("unable to find %s in BuildManifest", "BuildIdentities");
    return 2;
  }

  if ((*(v40 + 208) & 1) != 0 && xpc_array_get_count(array))
  {
    *v38 = xpc_array_get_dictionary(array, 0);
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v13 = i;
    count = xpc_array_get_count(array);
    if (v13 >= count)
    {
      return 2;
    }

    v26 = 0;
    v25 = 0;
    xdict = xpc_array_get_dictionary(array, i);
    if (xdict)
    {
      break;
    }

LABEL_69:
    ;
  }

  string = xpc_dictionary_get_string(xdict, "ApBoardID");
  v35 = xpc_dictionary_get_string(xdict, "ApChipID");
  v34 = xpc_dictionary_get_string(xdict, "ApSecurityDomain");
  v32 = xpc_dictionary_get_string(xdict, "Cryptex1,ChipID");
  v31 = xpc_dictionary_get_string(xdict, "Cryptex1,Type");
  v30 = xpc_dictionary_get_string(xdict, "Cryptex1,SubType");
  v29 = xpc_dictionary_get_string(xdict, "Cryptex1,ProductClass");
  value = xpc_dictionary_get_value(xdict, "Cryptex1,NonceDomain");
  if (value && xpc_get_type(value) != &_xpc_type_int64)
  {
    type = xpc_get_type(value);
    name = xpc_type_get_name(type);
    warnx("ndom is of the wrong type: %s", name);
    goto LABEL_69;
  }

  v12 = 0;
  if (string)
  {
    v12 = 0;
    if (v35)
    {
      v12 = v34 != 0;
    }
  }

  v26 = v12;
  v11 = 0;
  if (v32)
  {
    v11 = 0;
    if (v31)
    {
      v11 = 0;
      if (v30)
      {
        v11 = 0;
        if (v29)
        {
          v11 = value != 0;
        }
      }
    }
  }

  v25 = v11;
  if (!v26 && !v25)
  {
    v10[10] = v10;
    warnx("Identity %lu lacks a full set of either device-specific or Cryptex1 identifiers: board (%p), chip (%p), security domain (%p), chip_family (%p), type (%p), subtype (%p), class (%p), ndom (%p)", i, string, v35, v34, v32, v31, v30, v29, value);
    goto LABEL_69;
  }

  dictionary = xpc_dictionary_get_dictionary(xdict, "Info");
  if (!dictionary)
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Info", "BuildIdentities", i);
    goto LABEL_69;
  }

  v33 = xpc_dictionary_get_string(dictionary, "Variant");
  if (!v33)
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Variant", "Info", i);
    goto LABEL_69;
  }

  if (v26)
  {
    v22 = sub_10004B498(string, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", string);
      goto LABEL_69;
    }

    v21 = sub_10004B498(v35, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v35);
      goto LABEL_69;
    }

    v20 = sub_10004B498(v34, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v34);
      goto LABEL_69;
    }

    if (*(v40 + 84) != v22)
    {
      sub_1000483C8(1uLL, "BORD %u != %u", *(v40 + 84), v22);
      goto LABEL_69;
    }

    if (*(v40 + 88) != v21)
    {
      sub_1000483C8(1uLL, "CHIP %u != %u", *(v40 + 88), v21);
      goto LABEL_69;
    }

    if (*(v40 + 92) != v20)
    {
      sub_1000483C8(1uLL, "SDOM %u != %u", *(v40 + 92), v20);
      goto LABEL_69;
    }
  }

  if (v25)
  {
    v19 = sub_10004B498(v32, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v32);
      goto LABEL_69;
    }

    v18 = sub_10004B498(v31, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v31);
      goto LABEL_69;
    }

    v17 = sub_10004B498(v30, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v30);
      goto LABEL_69;
    }

    v16 = sub_10004B498(v29, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v29);
      goto LABEL_69;
    }

    v15 = 0;
    v6 = xpc_int64_get_value(value);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v15 = v6;
    if (v8 & 1 | (v6 != v6))
    {
      warn("unable to convert ndom to uint32_t");
      goto LABEL_69;
    }

    if (*(v40 + 184) != v19)
    {
      sub_1000483C8(1uLL, "FCHP %u != %u", *(v40 + 184), v19);
      goto LABEL_69;
    }

    if (*(v40 + 188) != v18)
    {
      sub_1000483C8(1uLL, "TYPE %u != %u", *(v40 + 188), v18);
      goto LABEL_69;
    }

    if (*(v40 + 192) != v17)
    {
      sub_1000483C8(1uLL, "STYP %u != %u", *(v40 + 192), v17);
      goto LABEL_69;
    }

    if (*(v40 + 196) != v16)
    {
      sub_1000483C8(1uLL, "CLAS %u != %u", *(v40 + 196), v16);
      goto LABEL_69;
    }
  }

  if (strcmp(*(v40 + 48), v33))
  {
    sub_1000483C8(1uLL, "VARIANT %s != %s", *(v40 + 48), v33);
    goto LABEL_69;
  }

  if (!xpc_dictionary_get_dictionary(xdict, "Manifest"))
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Manifest", "BuildIdentities", i);
    goto LABEL_69;
  }

  if (v38)
  {
    *v38 = xdict;
  }

  return 0;
}

uint64_t sub_100035354(void *a1, _DWORD *a2)
{
  object = xpc_dictionary_get_value(a1, "Cryptex1,NonceDomain");
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_int64)
    {
      value = xpc_int64_get_value(object);
      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      *a2 = value;
      if (v4 & 1 | (value != value))
      {
        return 84;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 22;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10003542C()
{
  v10 = __chkstk_darwin();
  v9 = -1;
  object = 0;
  v6 = 0;
  memset(out, 0, sizeof(out));
  memset(__b, 0, sizeof(__b));
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v6 = xpc_dictionary_create_empty();
    if (v6)
    {
      *keys = *off_10007D488;
      values[0] = empty;
      values[1] = v6;
      object = xpc_dictionary_create(keys, values, 2uLL);
      if (object)
      {
        sub_100035958(v10, empty);
        v9 = sub_100035B0C(v10, v6);
        if (v9)
        {
          warnx("unable to fill the objects plist");
        }

        else
        {
          bzero(v14, 0x400uLL);
          v5 = v14;
          uuid_generate_random(out);
          uuid_unparse(out, __b);
          __snprintf_chk(v14, 0x400uLL, 0, 0x400uLL, "/tmp/%s.plist", __b);
          v9 = sub_100035F5C(object, v14);
          if (!v9)
          {
            sub_10004860C(0, 1uLL, "created generate-image4 plist file: %s", v5);
            bzero(v13, 0x400uLL);
            v4 = v13;
            __snprintf_chk(v13, 0x400uLL, 0, 0x400uLL, "/tmp/%s.im4m", __b);
            v9 = sub_100036158(v10, v5, v13);
            if (v9)
            {
              warnx("unable to generate the signed manifest from generate-image4");
            }

            else
            {
              sub_10004860C(0, 1uLL, "created generate-image4 im4m file: %s", v4);
              bzero(v12, 0x400uLL);
              v3 = v12;
              __snprintf_chk(v12, 0x400uLL, 0, 0x400uLL, "%s/Restore", *(v10 + 40));
              v9 = chdir(v12);
              if (v9)
              {
                __assert_rtn("_sign", "sign.c", 881, "err == 0");
              }

              memset(&v2, 0, sizeof(v2));
              v9 = stat("Signatures", &v2);
              if (!v9 || *__error() == 2)
              {
                v1 = v9 == 0;
                bzero(v11, 0x400uLL);
                __snprintf_chk(v11, 0x400uLL, 0, 0x400uLL, "Signatures/%s.im4m", __b);
                v9 = sub_1000366F0(v11, v4, v1);
                if (!v9)
                {
                  sub_10004860C(0, 1uLL, "moved %s to %s", v4, v11);
                  v9 = sub_1000367D4(v10, v11);
                  if (v9)
                  {
                    unlink(v11);
                    if (!v1)
                    {
                      rmdir("Signatures");
                    }
                  }

                  else
                  {
                    sub_10004860C(0, 0, "successfully created %s.im4m within %s", __b, *(v10 + 40));
                  }
                }
              }

              else
              {
                warn("unable to stat the Signatures directory");
              }
            }
          }
        }
      }

      else
      {
        warn("unable to allocate grand plist");
        v9 = *__error();
      }
    }

    else
    {
      warn("unable to allocate objects plist");
      v9 = *__error();
    }
  }

  else
  {
    warn("unable to allocate manifest plist");
    v9 = *__error();
  }

  if (object)
  {
    xpc_release(object);
  }

  if (empty)
  {
    xpc_release(empty);
  }

  if (v6)
  {
    xpc_release(v6);
  }

  return v9;
}

void sub_100035958(uint64_t a1, void *a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    if ((*(a1 + 72) & 0xELL) == 0)
    {
      xpc_dictionary_set_int64(a2, "BORD_32", *(a1 + 84));
      xpc_dictionary_set_int64(a2, "CHIP_32", *(a1 + 88));
      xpc_dictionary_set_int64(a2, "SDOM_32", *(a1 + 92));
    }

    if ((*(a1 + 72) & 0x78000) == 0)
    {
      xpc_dictionary_set_int64(a2, "fchp_32", *(a1 + 184));
      xpc_dictionary_set_int64(a2, "type_32", *(a1 + 188));
      xpc_dictionary_set_int64(a2, "styp_32", *(a1 + 192));
      xpc_dictionary_set_int64(a2, "clas_32", *(a1 + 196));
      xpc_dictionary_set_int64(a2, "ndom_32", *(a1 + 212));
    }

    xpc_dictionary_set_int64(a2, "CEPO_32", *(a1 + 80));
    xpc_dictionary_set_BOOL(a2, "CPRO", *(a1 + 104) & 1);
    xpc_dictionary_set_BOOL(a2, "CSEC", *(a1 + 105) & 1);
  }

  xpc_dictionary_set_BOOL(a2, "acdc", 1);
}

uint64_t sub_100035B0C(uint64_t a1, void *a2)
{
  v29 = a1;
  v28 = a2;
  v27 = 0;
  v26 = -1;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v45 = 0;
  v44 = 0;
  v43 = 0;
  LODWORD(__b[0]) = 1;
  memset(&__b[1], 0, 36);
  v26 = cryptex_identity_set_chip();
  if (v26)
  {
    warnc(v26, "failed to set cryptex identity with chip instance.");
    v30 = v26;
    v23 = 1;
  }

  else
  {
    if (*(v29 + 208))
    {
      __b[1] |= 1uLL;
    }

    memcpy(__dst, __b, sizeof(__dst));
    if (cryptex_bundle_copy_cryptex2())
    {
      sub_100036EE4(v29, v28, v25);
      v30 = 0;
      v23 = 1;
    }

    else
    {
      v21 = sub_100048090();
      v16 = 1;
      if (v21[1] <= 1uLL)
      {
        v16 = v21[2] > 1uLL;
      }

      if (v16)
      {
        v2 = 999;
      }

      else
      {
        v2 = 3;
      }

      v20 = v2;
      v15 = 1;
      if (v21[1] <= 1uLL)
      {
        v15 = v21[2] > 1uLL;
      }

      v3 = 2000;
      if (!v15)
      {
        v3 = 200;
      }

      v19 = v3;
      if (v27)
      {
        v14 = sub_100017530(v27, v20, v19);
      }

      else
      {
        v42 = "unknown error";
        v17 = strdup("unknown error");
        v4 = strlen("unknown error");
        v41 = "known-constant allocation";
        v40 = v17;
        v39 = v4;
        if (!v17)
        {
          v38 = 0;
          memset(v47, 0, sizeof(v47));
          v36 = 0;
          v35 = 3;
          v34 = &_os_log_default;
          v33 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v35 &= ~1u;
          }

          if (v35)
          {
            v11 = v35;
            v12 = v34;
            v13 = v33;
            v9 = v41;
            v10 = v39;
            v5 = __error();
            v6 = strerror(*v5);
            sub_1000031B0(v46, v9, v10, v6);
            v32 = _os_log_send_and_compose_impl(v11, &v38, v47, 80, &_mh_execute_header, v12, v13, "allocation failed: obj = %s, size = %lu, error = %s", v46, 32, v8);
            v36 = v32;
          }

          v31 = v36;
          v37 = v36;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100035E90);
        }

        v14 = v17;
      }

      v18 = v14;
      warnx("unable to find specified build identity in cryptex bundle\n%s", v14);
      sub_100002DE4(&v18);
      v30 = sub_100018A78(v27);
      v23 = 1;
    }
  }

  sub_1000030D0(&v25);
  sub_100006B40(&v27);
  return v30;
}

uint64_t sub_100035F5C(uint64_t a1, const char *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = -1;
  v10 = 0;
  Data = 0;
  v8 = -1;
  memset(__b, 0, sizeof(__b));
  v10 = _CFXPCCreateCFObjectFromXPCObject();
  if (v10)
  {
    Data = CFPropertyListCreateData(0, v10, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      sub_10004C3C0(__b, 0, 0, BytePtr, Length);
      v8 = open(v12, 513, 438);
      v15 = v8;
      if (v8 < 0)
      {
        warn("unable to create %s", v12);
        v11 = *__error();
      }

      else
      {
        v11 = sub_10004B8CC(v8, __b);
        if (v11)
        {
          warnc(v11, "unable to write plist data to %s", v12);
        }
      }
    }

    else
    {
      v11 = 222;
      warnx("unable to create XML data from CFDictionaryRef (%p)", v10);
    }
  }

  else
  {
    v6 = xpc_copy_debug_description();
    warnx("unable to bridge XPC dictionary to CFDictionaryRef\n%s", v6);
    v11 = 214;
    sub_100002DE4(&v6);
  }

  sub_10004C66C(__b, v2);
  v14 = v11;
  sub_1000038DC(&v8);
  sub_100006B40(&Data);
  sub_100006B40(&v10);
  return v14;
}

uint64_t sub_100036158(uint64_t a1, char *a2, char *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = sub_100048084();
  i = 0;
  v23 = -1;
  v22 = 7;
  for (i = *v28; i; i = *i)
  {
    v22 += 2;
  }

  v21 = malloc_type_malloc(8 * ++v22, 0x50040EE9192B6uLL);
  if (v21)
  {
    v19 = 1;
    *v21 = v25;
    v3 = v19++;
    v21[v3] = "generate-image4";
    v4 = v19++;
    v21[v4] = "-K";
    v5 = *(v28 + 32);
    v6 = v19++;
    v21[v6] = v5;
    v7 = v19++;
    v21[v7] = "-o";
    v8 = v19++;
    v21[v8] = v26;
    for (i = *v28; i; i = *i)
    {
      v9 = v19++;
      v21[v9] = "-C";
      v10 = i[1];
      v11 = v19++;
      v21[v11] = v10;
    }

    if (v19 >= v22)
    {
      __assert_rtn("_generate_im4m_from_plist", "sign.c", 578, "i < number_args");
    }

    v12 = v19++;
    v21[v12] = v27;
    v13 = v19++;
    v21[v13] = 0;
    if (v19 != v22)
    {
      __assert_rtn("_generate_im4m_from_plist", "sign.c", 581, "i == number_args");
    }

    v18 = 0;
    v23 = posix_spawn(&v18, v25, 0, 0, v21, environ);
    if (v23)
    {
      warnc(v23, "unable to posix_spawn %s", v25);
      v29 = v23;
      v20 = 1;
    }

    else
    {
      v17 = -1;
      v16 = waitpid(v18, &v17, 0);
      if (v16 == v18)
      {
        if ((v17 & 0x7F) == 0x7F || (v17 & 0x7F) == 0)
        {
          if ((v17 & 0x7F) != 0)
          {
            warnx("generate-image4 exited with an unknown state");
            v23 = 35;
            v29 = 35;
            v20 = 1;
          }

          else if (BYTE1(v17))
          {
            warnx("generate-image4 returned non-zero exit: %d", BYTE1(v17));
            v23 = BYTE1(v17);
            v29 = BYTE1(v17);
            v20 = 1;
          }

          else
          {
            memset(&__b, 0, sizeof(__b));
            v23 = stat(v26, &__b);
            if (v23)
            {
              warn("unable to stat %s", v26);
              v23 = *__error();
              v29 = v23;
            }

            else
            {
              v29 = 0;
            }

            v20 = 1;
          }
        }

        else
        {
          warnx("generate-image4 exited with signal: %d", v17 & 0x7F);
          v23 = 4;
          v29 = 4;
          v20 = 1;
        }
      }

      else
      {
        if (!v16)
        {
          _os_crash();
          __break(1u);
          JUMPOUT(0x100036514);
        }

        warn("unexpected return code for waitpid: %d", v16);
        v29 = *__error();
        v20 = 1;
      }
    }
  }

  else
  {
    warn("unable to allocate array to store args for generate-image4");
    v23 = *__error();
    v29 = v23;
    v20 = 1;
  }

  sub_100002DE4(&v21);
  return v29;
}

uint64_t sub_1000366F0(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a3 & 1) != 0 || !mkdir("Signatures", 0x1FFu))
  {
    rename(a2, a1, a3);
    if (v3)
    {
      warn("unable to rename %s to %s", a2, a1);
      return *__error();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    warn("unable to create Signatures directory");
    return *__error();
  }
}

uint64_t sub_1000367D4(uint64_t a1, char *a2)
{
  v40 = a1;
  string = a2;
  v38 = 0;
  v37 = -1;
  object = 0;
  if ((cryptex_bundle_copy_build_manifest2() & 1) == 0)
  {
    v35 = sub_100048090();
    v23 = 1;
    if (v35[1] <= 1uLL)
    {
      v23 = v35[2] > 1uLL;
    }

    if (v23)
    {
      v2 = 999;
    }

    else
    {
      v2 = 3;
    }

    v34 = v2;
    v22 = 1;
    if (v35[1] <= 1uLL)
    {
      v22 = v35[2] > 1uLL;
    }

    v3 = 2000;
    if (!v22)
    {
      v3 = 200;
    }

    v33[1] = v3;
    xdict[2] = "unknown error";
    __s1 = "unknown error";
    v32 = strdup("unknown error");
    v61 = "known-constant allocation";
    v60 = v32;
    v59 = strlen("unknown error");
    if (!v32)
    {
      v58 = 0;
      memset(__b, 0, sizeof(__b));
      v56 = 0;
      v55 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v55 &= ~1u;
      }

      if (v55)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v66, v61, v59, v5);
        v56 = _os_log_send_and_compose_impl(v55, &v58, __b, 80, &_mh_execute_header, oslog, type, "allocation failed: obj = %s, size = %lu, error = %s", v66, 32, v13);
      }

      v52 = v56;
      v57 = v56;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100036A70);
    }

    xdict[1] = v32;
    v33[0] = v32;
    warnx("Failed to copy build manifest\n%s", v32);
    sub_100002DE4(v33);
    exit(66);
  }

  xdict[0] = 0;
  v37 = sub_100034A0C(v40, object, xdict);
  if (v37)
  {
    __assert_rtn("_update_build_manifest", "sign.c", 460, "err == 0");
  }

  value = xpc_dictionary_get_array(xdict[0], "Signatures");
  if (!value)
  {
    value = xpc_array_create_empty();
    if (!value)
    {
      warn("unable to create signatures array");
      v37 = *__error();
      goto LABEL_46;
    }

    xpc_dictionary_set_value(xdict[0], "Signatures", value);
    xpc_release(value);
  }

  v29 = xpc_string_create(string);
  if (v29)
  {
    xpc_array_append_value(value, v29);
    if ((cryptex_bundle_update_build_manifest2() & 1) == 0)
    {
      v28 = sub_100048090();
      v21 = 1;
      if (v28[1] <= 1uLL)
      {
        v21 = v28[2] > 1uLL;
      }

      if (v21)
      {
        v6 = 999;
      }

      else
      {
        v6 = 3;
      }

      v27 = v6;
      v20 = 1;
      if (v28[1] <= 1uLL)
      {
        v20 = v28[2] > 1uLL;
      }

      v7 = 2000;
      if (!v20)
      {
        v7 = 200;
      }

      v26 = v7;
      if (v38)
      {
        v19 = sub_100017530(v38, v27, v26);
      }

      else
      {
        v62 = "unknown error";
        v24 = strdup("unknown error");
        v8 = strlen("unknown error");
        v51 = "known-constant allocation";
        v50 = v24;
        v49 = v8;
        if (!v24)
        {
          v48 = 0;
          memset(v65, 0, sizeof(v65));
          v46 = 0;
          v45 = 3;
          v44 = &_os_log_default;
          v43 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v45 &= ~1u;
          }

          if (v45)
          {
            v16 = v45;
            v17 = v44;
            v18 = v43;
            v14 = v51;
            v15 = v49;
            v9 = __error();
            v10 = strerror(*v9);
            sub_1000031B0(v64, v14, v15, v10);
            v42 = _os_log_send_and_compose_impl(v16, &v48, v65, 80, &_mh_execute_header, v17, v18, "allocation failed: obj = %s, size = %lu, error = %s", v64, 32, v13);
            v46 = v42;
          }

          v41 = v46;
          v47 = v46;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100036E3CLL);
        }

        v19 = v24;
      }

      v25 = v19;
      warnx("Failed to update manifest.\n%s", v19);
      sub_100002DE4(&v25);
      v37 = sub_100018A78(v38);
    }
  }

  else
  {
    warn("unable to create an XPC string for the signature path");
    v37 = *__error();
  }

LABEL_46:
  xpc_release(object);
  v12 = v37;
  sub_100006B40(&v38);
  return v12;
}

void sub_100036EE4(uint64_t a1, void *a2, uint64_t a3)
{
  tc_asset = cryptex_core_get_tc_asset();
  if (tc_asset && sub_100037078(a2, tc_asset, *(*(tc_asset + 8) + 40)))
  {
    warnx("unable to encode loadable trust cache in objects");
  }

  info_asset = cryptex_core_get_info_asset();
  if (info_asset && sub_100037078(a2, info_asset, *(*(info_asset + 8) + 40)))
  {
    warnx("unable to encode cryptex info plist in objects");
  }

  image_asset = cryptex_core_get_image_asset();
  if (image_asset && sub_100037078(a2, image_asset, *(*(image_asset + 8) + 40)))
  {
    warnx("unable to encode image in objects");
  }

  volumehash_asset = cryptex_core_get_volumehash_asset();
  if (volumehash_asset)
  {
    if (sub_100037078(a2, volumehash_asset, *(*(volumehash_asset + 8) + 40)))
    {
      warnx("unable to encode image in objects");
    }
  }
}

uint64_t sub_100037078(void *a1, uint64_t a2, const char *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = ccsha384_di();
  v3 = (*(v17 + 8) + *(v17 + 16) + 19) >> 3;
  v16 = v7;
  v8 = (8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v7[-v8];
  v15 = v4;
  bzero(&v7[-v8], v5);
  v14 = -1;
  memset(bytes, 0, sizeof(bytes));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = sub_10004B524(*(v19 + 16), v12);
  if (v14)
  {
    warnc(v14, "unable to read %s", *(v19 + 32));
    v21 = v14;
    v11 = 1;
  }

  else
  {
    ccdigest_init();
    ccdigest_update();
    sub_1000243C4(v17, v9, bytes);
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_value(v20, v18, empty);
      xpc_dictionary_set_data(empty, "DGST", bytes, 0x30uLL);
      xpc_release(empty);
      v21 = 0;
    }

    else
    {
      warn("unable to create dictionary for %s asset", *(v19 + 32));
      v21 = *__error();
    }

    v11 = 1;
  }

  return v21;
}

uint64_t sub_1000372A8(int a1)
{
  switch(a1)
  {
    case -536870911:
      return 104;
    case -536870210:
    case -536870211:
      return 12;
    case -536870209:
      return 72;
    case -536870208:
      return 19;
    case -536870207:
      return 1;
    case -536870206:
      return 22;
  }

  if ((a1 + 536870205) <= 2)
  {
    return 35;
  }

  switch(a1)
  {
    case -536870202:
      return 94;
    case -536870201:
      return 45;
    case -536870200:
      return 12;
    case -536870198:
    case -536870199:
      return 5;
    case -536870196:
      return 35;
    case -536870195:
      return 9;
  }

  if (a1 != -536870193 && a1 != -536870194)
  {
    switch(a1)
    {
      case -536870192:
        return 14;
      case -536870191:
        return 83;
      case -536870190:
        return 16;
      case -536870188:
      case -536870189:
        return 5;
      case -536870187:
        return 16;
      case -536870186:
        return 60;
      case -536870185:
        return 19;
      case -536870184:
        return 6;
      case -536870183:
        return 19;
    }

    if (a1 != -536870182)
    {
      switch(a1)
      {
        case -536870181:
          return 28;
        case -536870179:
          return 17;
        case -536870178:
          return 12;
        case -536870176:
        case -536870177:
          return 104;
        case -536870175:
          return 7;
        case -536870174:
          return 13;
      }

      if ((a1 + 536870173) <= 5)
      {
        return 104;
      }

      if (a1 != -536870167)
      {
        if (a1 != -536870166)
        {
          if (a1 == -536870165)
          {
            return 89;
          }

          if ((a1 + 536870164) > 4 && !a1)
          {
            return 0;
          }
        }

        return 104;
      }

      return 83;
    }

    return 19;
  }

  return 13;
}

uint64_t sub_100037760(io_object_t *a1, char *a2)
{
  v7 = a1;
  className = a2;
  iterator = 0;
  v3 = 0;
  if (a1 && className && !IORegistryEntryGetChildIterator(*v7, "IOService", &iterator))
  {
    while (1)
    {
      object = IOIteratorNext(iterator);
      if (!object)
      {
        break;
      }

      if (IOObjectConformsTo(object, className))
      {
        IOObjectRelease(*v7);
        *v7 = object;
        v3 = 1;
        break;
      }

      IOObjectRelease(object);
    }
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100037880(uint64_t a1, int a2, char *const *a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = -1;
  v23 = a3;
  v22 = -1;
  v21 = 0;
  memset(__b, 0, sizeof(__b));
  LODWORD(__b[3]) = -1;
  __b[6] = getenv("CRYPTEXCTL_UDID");
  __b[7] = "tatsu";
  sub_1000480E0();
  if (__b[6])
  {
    sub_1000483C8(1uLL, "loaded UDID from environment variable %s: %s", "CRYPTEXCTL_UDID", __b[6]);
  }

  while (1)
  {
    v22 = getopt_long(v26, v23, *(v27 + 32), *(v27 + 40), &v21);
    if (v22 == -1)
    {
      break;
    }

    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = (*(v27 + 40) + 32 * v21);
    v15 = v25[optind - 1];
    if (optind < 1)
    {
      v14 = 0;
      memset(v29, 0, sizeof(v29));
      v12 = 0;
      v11 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v11 &= ~1u;
      }

      if (v11)
      {
        v4 = v11;
        v5 = oslog;
        v6 = type;
        sub_1000013C8(v28, optind);
        v8 = _os_log_send_and_compose_impl(v4, &v14, v29, 80, &_mh_execute_header, v5, v6, "unexpected failure: bogus optind: %d", v28);
        v12 = v8;
      }

      v7[1] = v12;
      v13 = v12;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100037AECLL);
    }

    sub_1000483C8(2uLL, "ch = %c, idx = %d, optind = %d", v22, v21, optind);
    switch(v22)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v16);
      case '?':
        errx(64, "unknown option: %s", v15);
      case 'U':
        __b[8] = optarg;
        sub_10004860C(0, 1uLL, "signer url = %s", optarg);
        break;
      case 'X':
        if (os_variant_allows_internal_security_policies())
        {
          __b[0] |= 1uLL;
          sub_10004860C(0, 1uLL, "will use sso");
        }

        else
        {
          warnx("sso unsupported");
        }

        break;
      case 'b':
        if (!strcasecmp(optarg, "U") || !strcasecmp(optarg, "L") || !strcasecmp(optarg, "F"))
        {
          sub_1000483C8(2uLL, "setting buffering mode: %s", optarg);
          __b[5] = optarg;
        }

        else
        {
          v7[0] = 0;
          v24 = sub_100048490(optarg, v7);
          if (v24)
          {
            errc(64, v24, "invalid buffer size: %s", optarg);
          }

          if (v7[0] > 0x10000)
          {
            errx(64, "invalid buffer size: %llu", v7[0]);
          }

          sub_1000483C8(2uLL, "setting buffer size: %llu", v7[0]);
          LODWORD(__b[3]) = v7[0];
        }

        break;
      case 'd':
        v24 = sub_100048490(optarg, &v18);
        if (v24)
        {
          errc(64, v24, "invalid debug level: %s", optarg);
        }

        __b[1] = v18;
        break;
      case 'h':
        __b[10] = optarg;
        sub_10004860C(0, 1uLL, "socks proxy host = %s", optarg);
        break;
      case 'l':
        if (strcmp(optarg, "os") && strcmp(optarg, "dt") && strcmp(optarg, "stream"))
        {
          errx(64, "invalid log mode: %s", optarg);
        }

        sub_1000483C8(2uLL, "setting log mode: %s", optarg);
        __b[4] = optarg;
        break;
      case 'p':
        v24 = sub_100048490(optarg, &v17);
        if (v24)
        {
          errc(64, v24, "invalid port number: %s", optarg);
        }

        LODWORD(__b[11]) = v17;
        sub_10004860C(0, 1uLL, "socks proxy port = %d", v17);
        break;
      case 's':
        if (strcasecmp(optarg, "tatsu") && strcasecmp(optarg, "diavlo") && strcasecmp(optarg, "factory") && strcasecmp(optarg, "none"))
        {
          errx(64, "invalid signing environment: %s", optarg);
        }

        sub_10004860C(0, 1uLL, "tss = %s", optarg);
        __b[7] = optarg;
        break;
      case 't':
        __b[9] = optarg;
        sub_10004860C(0, 1uLL, "will use auth token");
        break;
      case 'u':
        if (__b[6])
        {
          sub_1000483C8(1uLL, "overriding UDID environment variable with UDID provided on the command line");
        }

        __b[6] = optarg;
        sub_10004860C(0, 1uLL, "udid = %s", optarg);
        break;
      case 'v':
        v24 = sub_100048490(optarg, &v19);
        if (v24)
        {
          sub_1000487F4(v24, "invalid verbosity level: %s", optarg);
        }

        __b[2] = v19;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000380ECLL);
    }
  }

  if (!__b[10] && SLODWORD(__b[11]) > 0 || __b[10] && SLODWORD(__b[11]) <= 0)
  {
    errx(64, "must provide a valid socks proxy host and port");
  }

  v24 = sub_100038280(__b);
  return sysexit_np();
}

uint64_t sub_100038280(uint64_t a1)
{
  v73 = a1;
  v72 = 0;
  v71 = -1;
  v70 = sub_100048090();
  v69 = sub_100048084();
  v68 = -1;
  bzero(v95, 0x400uLL);
  memcpy(__dst, "com.apple.security.cryptexctl.XXXXXX", sizeof(__dst));
  v67 = 0;
  v66 = 0;
  v65 = 0;
  if (*(v73 + 32))
  {
    if (!strcmp(*(v73 + 32), "os"))
    {
      *v70 |= 1uLL;
    }

    else if (!strcmp(*(v73 + 32), "dt"))
    {
      *v70 |= 3uLL;
    }

    else if (!strcmp(*(v73 + 32), "stream"))
    {
      *v70 |= 0x21uLL;
    }

    else
    {
      __break(1u);
    }
  }

  if (*(v73 + 40))
  {
    setbuf(__stdoutp, *(v73 + 40));
  }

  else if (*(v73 + 24) > 0)
  {
    setbuffer(__stdoutp, "F", *(v73 + 24));
  }

  v70[1] = *(v73 + 16);
  v70[2] = *(v73 + 8);
  if (*(v73 + 16) || *(v73 + 8))
  {
    *v70 |= 8uLL;
  }

  v67 = os_flagset_copy_string();
  sub_1000483C8(2uLL, "flags = %s", v67);
  sub_10003908C(v70);
  v66 = os_log_create("com.apple.libcryptex", "dummy");
  v64 = unsetenv("OS_ACTIVITY_DT_MODE");
  if (v64 == -1)
  {
    v63 = 0;
    memset(__b, 0, sizeof(__b));
    v61 = 0;
    v60 = 3;
    v59 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v60 &= ~1u;
    }

    if (v60)
    {
      v1 = __error();
      sub_1000013C8(v92, *v1);
      v57 = _os_log_send_and_compose_impl(v60, &v63, __b, 80, &_mh_execute_header, v59, type, "assertion failure: unsetenv(OS_ACTIVITY_DT_MODE) -> %{errno}d", v92, 8);
      v61 = v57;
    }

    v56 = v61;
    v62 = v61;
    _os_crash_msg();
    __break(1u);
  }

  v55 = unsetenv("OS_ACTIVITY_MODE");
  if (v55 == -1)
  {
    v54 = 0;
    memset(v91, 0, sizeof(v91));
    v52 = 0;
    v51 = 3;
    v50 = &_os_log_default;
    v49 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v51 &= ~1u;
    }

    if (v51)
    {
      v2 = __error();
      sub_1000013C8(v90, *v2);
      LODWORD(v9) = 8;
      v48 = _os_log_send_and_compose_impl(v51, &v54, v91, 80, &_mh_execute_header, v50, v49, "assertion failure: unsetenv(OS_ACTIVITY_MODE) -> %{errno}d", v90, v9);
      v52 = v48;
    }

    v47 = v52;
    v53 = v52;
    _os_crash_msg();
    __break(1u);
  }

  sub_10004B40C(65537, v95);
  v68 = open(v95, 0x100000);
  v75 = v68;
  if (v68 < 0)
  {
    v71 = *__error();
    warnc(v71, "open: %s", v95);
  }

  else
  {
    v71 = sub_10004B3B0(v68, __dst, v69 + 584);
    if (v71)
    {
      warnc(v71, "mkdtemp: %s", __dst);
    }

    else
    {
      v71 = realpath_np();
      v46 = v71;
      if (v71)
      {
        v45[0] = 0;
        memset(v89, 0, sizeof(v89));
        v43 = 0;
        v42 = 3;
        v41 = &_os_log_default;
        v40 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v42 &= ~1u;
        }

        if (v42)
        {
          sub_100003098(v88, v46);
          v39 = _os_log_send_and_compose_impl(v42, v45, v89, 80, &_mh_execute_header, v41, v40, "assertion failure: error -> %llu", v88);
          v43 = v39;
        }

        v38 = v43;
        v44 = v43;
        _os_crash_msg();
        __break(1u);
      }

      if (!strcasecmp(*(v73 + 56), "tatsu"))
      {
        v65 = &unk_100084740;
      }

      else if (!strcasecmp(*(v73 + 56), "diavlo"))
      {
        if (*v73)
        {
          v71 = 22;
          warnc(22, "cannot use signing environment diavlo with sso");
          goto LABEL_85;
        }

        v65 = &unk_100084770;
      }

      else if (!strcasecmp(*(v73 + 56), "factory"))
      {
        if (*v73)
        {
          v71 = 22;
          warnc(22, "cannot use signing environment factory with sso");
          goto LABEL_85;
        }

        v65 = &unk_1000847A0;
      }

      else if (!strcasecmp(*(v73 + 56), "none"))
      {
        v65 = &unk_1000847D0;
      }

      if (*(v73 + 64))
      {
        v65[1] = *(v73 + 64);
      }

      if (*(v73 + 80))
      {
        v65[3] = *(v73 + 80);
      }

      if (*(v73 + 88))
      {
        *(v65 + 8) = *(v73 + 88);
      }

      if (*(v73 + 72))
      {
        v65[5] = *(v73 + 72);
      }

      v70[5] = v65;
      if (*v73)
      {
        *v70 |= 0x10uLL;
      }

      if (*(v73 + 48))
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0;
        v36 = 32;
        v37 = 0;
        v31 = dispatch_queue_create("com.apple.security.cryptexctl.cryptexctl.rsdbrowse", 0);
        v32 = v31;
        v24 = _NSConcreteStackBlock;
        v25 = 0x40000000;
        v26 = 0;
        v27 = sub_100039C28;
        v28 = &unk_10007D620;
        v29 = &v33;
        v30 = v73;
        remote_device_browse_present();
        sub_10004809C();
        if (v34[3])
        {
          v72 = sub_10003F6B4(v34[3]);
          if (v72)
          {
            v71 = sub_100018A78(v72);
            v23 = sub_100048090();
            v18 = 1;
            if (v23[1] <= 1uLL)
            {
              v18 = v23[2] > 1uLL;
            }

            if (v18)
            {
              v3 = 999;
            }

            else
            {
              v3 = 3;
            }

            v22 = v3;
            v17 = 1;
            if (v23[1] <= 1uLL)
            {
              v17 = v23[2] > 1uLL;
            }

            v4 = 2000;
            if (!v17)
            {
              v4 = 200;
            }

            v21 = v4;
            if (v72)
            {
              v16 = sub_100017530(v72, v22, v21);
            }

            else
            {
              v76 = "unknown error";
              v19 = strdup("unknown error");
              v5 = strlen("unknown error");
              v87 = "known-constant allocation";
              v86 = v19;
              v85 = v5;
              if (!v19)
              {
                v84 = 0;
                memset(v97, 0, sizeof(v97));
                v82 = 0;
                v81 = 3;
                v80 = &_os_log_default;
                v79 = OS_LOG_TYPE_ERROR;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  v81 &= ~1u;
                }

                if (v81)
                {
                  v13 = v81;
                  v14 = v80;
                  v15 = v79;
                  v11 = v87;
                  v12 = v85;
                  v6 = __error();
                  v7 = strerror(*v6);
                  sub_1000031B0(v96, v11, v12, v7);
                  LODWORD(v9) = 32;
                  v78 = _os_log_send_and_compose_impl(v13, &v84, v97, 80, &_mh_execute_header, v14, v15, "allocation failed: obj = %s, size = %lu, error = %s", v96, v9, v10);
                  v82 = v78;
                }

                v77 = v82;
                v83 = v82;
                _os_crash_msg();
                __break(1u);
              }

              v16 = v19;
            }

            v20 = v16;
            warnx("initalize remote device failed\n%s", v16);
            sub_100002DE4(&v20);
          }

          else
          {
            v70[4] = v34[3];
            sub_10004860C(0, 1uLL, "will operate on device: [udid: %s]", *(v34[3] + 168));
          }
        }

        else
        {
          v71 = 3;
          warnx("no device for udid: %s", *(v73 + 48));
        }

        sub_1000030D0(&v32);
        _Block_object_dispose(&v33, 8);
      }
    }
  }

LABEL_85:
  v74 = v71;
  sub_1000030D0(&v66);
  sub_100002DE4(&v67);
  sub_1000038DC(&v68);
  sub_100006B40(&v72);
  return v74;
}

void sub_10003908C(void *a1)
{
  v83 = a1;
  v82 = -1;
  v81 = sub_100048084();
  v80 = 0;
  __argv = *(v81 + 289);
  v78 = 0;
  v77 = 0;
  if (sub_100039D1C(v83))
  {
    sub_1000483C8(1uLL, "will re-exec: %s", v81);
    v80 = setenv("_CRYPTEX_CLI_ENV_POST_REEXEC", "1", 1);
    v76 = v80;
    if (v80 == -1)
    {
      v75 = 0;
      memset(__b, 0, sizeof(__b));
      v73 = 0;
      v72 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v72 &= ~1u;
      }

      if (v72)
      {
        v1 = __error();
        sub_1000013C8(v100, *v1);
        v69 = _os_log_send_and_compose_impl(v72, &v75, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: ret -> %{errno}d", v100, 8);
        v73 = v69;
      }

      v68 = v73;
      v74 = v73;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawnattr_init(&v78);
    v67 = v82;
    if (v82)
    {
      v66[0] = 0;
      memset(v99, 0, sizeof(v99));
      v64 = 0;
      v63 = 3;
      v62 = &_os_log_default;
      v61 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v63 &= ~1u;
      }

      if (v63)
      {
        sub_100003098(v98, v67);
        v60 = _os_log_send_and_compose_impl(v63, v66, v99, 80, &_mh_execute_header, v62, v61, "assertion failure: error -> %llu", v98);
        v64 = v60;
      }

      v59 = v64;
      v65 = v64;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawnattr_setflags(&v78, 64);
    v58 = v82;
    if (v82)
    {
      v57[0] = 0;
      memset(v97, 0, sizeof(v97));
      v55 = 0;
      v54 = 3;
      v53 = &_os_log_default;
      v52 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v54 &= ~1u;
      }

      if (v54)
      {
        sub_100003098(v96, v58);
        v51 = _os_log_send_and_compose_impl(v54, v57, v97, 80, &_mh_execute_header, v53, v52, "assertion failure: error -> %llu", v96);
        v55 = v51;
      }

      v50 = v55;
      v56 = v55;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn_file_actions_init(&v77);
    v49 = v82;
    if (v82)
    {
      v48[0] = 0;
      memset(v95, 0, sizeof(v95));
      v46 = 0;
      v45 = 3;
      v44 = &_os_log_default;
      v43 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v45 &= ~1u;
      }

      if (v45)
      {
        sub_100003098(v94, v49);
        v42 = _os_log_send_and_compose_impl(v45, v48, v95, 80, &_mh_execute_header, v44, v43, "assertion failure: error -> %llu", v94);
        v46 = v42;
      }

      v41 = v46;
      v47 = v46;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn_file_actions_addinherit_np(&v77, 0);
    v40 = v82;
    if (v82)
    {
      v39[0] = 0;
      memset(v93, 0, sizeof(v93));
      v37 = 0;
      v36 = 3;
      v35 = &_os_log_default;
      v34 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v36 &= ~1u;
      }

      if (v36)
      {
        sub_100003098(v92, v40);
        v33 = _os_log_send_and_compose_impl(v36, v39, v93, 80, &_mh_execute_header, v35, v34, "assertion failure: error -> %llu", v92);
        v37 = v33;
      }

      v32 = v37;
      v38 = v37;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn_file_actions_addinherit_np(&v77, 1);
    v31 = v82;
    if (v82)
    {
      v30[0] = 0;
      memset(v91, 0, sizeof(v91));
      v28 = 0;
      v27 = 3;
      v26 = &_os_log_default;
      v25 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v27 &= ~1u;
      }

      if (v27)
      {
        sub_100003098(v90, v31);
        v24 = _os_log_send_and_compose_impl(v27, v30, v91, 80, &_mh_execute_header, v26, v25, "assertion failure: error -> %llu", v90);
        v28 = v24;
      }

      v23 = v28;
      v29 = v28;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn_file_actions_addinherit_np(&v77, 2);
    v22 = v82;
    if (v82)
    {
      v21[0] = 0;
      memset(v89, 0, sizeof(v89));
      v19 = 0;
      v18 = 3;
      v17 = &_os_log_default;
      v16 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v18 &= ~1u;
      }

      if (v18)
      {
        sub_100003098(v88, v22);
        v15 = _os_log_send_and_compose_impl(v18, v21, v89, 80, &_mh_execute_header, v17, v16, "assertion failure: error -> %llu", v88);
        v19 = v15;
      }

      v14 = v19;
      v20 = v19;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn(0, v81, &v77, &v78, __argv, environ);
    if (v82)
    {
      errc(71, v82, "posix_spawn: %s", v81);
    }

    v82 = posix_spawnattr_destroy(&v78);
    v13 = v82;
    if (v82)
    {
      v12[0] = 0;
      memset(v87, 0, sizeof(v87));
      v10 = 0;
      v9 = 3;
      v8 = &_os_log_default;
      v7 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        sub_100003098(v86, v13);
        v6 = _os_log_send_and_compose_impl(v9, v12, v87, 80, &_mh_execute_header, v8, v7, "assertion failure: error -> %llu", v86);
        v10 = v6;
      }

      v5 = v10;
      v11 = v10;
      _os_crash_msg();
      __break(1u);
    }

    v82 = posix_spawn_file_actions_destroy(&v77);
    v4 = v82;
    if (v82)
    {
      v3[0] = 0;
      memset(v85, 0, sizeof(v85));
      v2 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v2 = 2;
      }

      sub_100003098(v84, v4);
      _os_log_send_and_compose_impl(v2, v3, v85, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: error -> %llu", v84);
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    sub_1000483C8(1uLL, "declining to re-exec");
  }
}

void sub_100039C28(void *a1, void *a2, char a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  xstring[1] = a1;
  xstring[0] = 0;
  if (a3)
  {
    sub_1000480C0();
  }

  else if (!*(*(a1[4] + 8) + 24))
  {
    xstring[0] = remote_device_copy_property();
    __s1 = xpc_string_get_string_ptr(xstring[0]);
    if (__s1)
    {
      if (!strcmp(__s1, *(a1[5] + 48)))
      {
        *(*(a1[4] + 8) + 24) = sub_10003F450(v7, 0);
      }
    }
  }

  sub_1000030D0(xstring);
}

BOOL sub_100039D1C(void *a1)
{
  v53 = a1;
  v52 = 0;
  if ((*a1 & 4) != 0)
  {
    return 0;
  }

  else
  {
    if ((*v53 & 2) != 0)
    {
      v51 = setenv("OS_ACTIVITY_DT_MODE", "1", 1);
      if (v51 == -1)
      {
        v50 = 0;
        memset(__b, 0, sizeof(__b));
        v48 = 0;
        v47 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v47 &= ~1u;
        }

        if (v47)
        {
          v1 = __error();
          sub_1000013C8(v66, *v1);
          v48 = _os_log_send_and_compose_impl(v47, &v50, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: setenv(OS_ACTIVITY_DT_MODE, 1, 1) -> %{errno}d", v66, 8);
        }

        v44 = v48;
        v49 = v48;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100039EACLL);
      }

      ++v52;
    }

    if (*v53)
    {
      __value = "info";
      if (v53[2])
      {
        if (v53[2] >= 2uLL)
        {
          __value = "debug";
        }

        v42 = setenv("OS_ACTIVITY_MODE", __value, 1);
        if (v42 == -1)
        {
          v41 = 0;
          memset(v65, 0, sizeof(v65));
          v39 = 0;
          v38 = 3;
          v37 = &_os_log_default;
          v36 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v38 &= ~1u;
          }

          if (v38)
          {
            v2 = __error();
            sub_1000013C8(v64, *v2);
            v39 = _os_log_send_and_compose_impl(v38, &v41, v65, 80, &_mh_execute_header, v37, v36, "assertion failure: setenv(OS_ACTIVITY_MODE, mode, 1) -> %{errno}d", v64, 8);
          }

          v35 = v39;
          v40 = v39;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10003A03CLL);
        }

        ++v52;
      }

      v34 = setenv("LOG_STYLE", "compact", 1);
      if (v34 == -1)
      {
        v33 = 0;
        memset(v63, 0, sizeof(v63));
        v31 = 0;
        v30 = 3;
        v29 = &_os_log_default;
        v28 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v30 &= ~1u;
        }

        if (v30)
        {
          v3 = __error();
          sub_1000013C8(v62, *v3);
          v31 = _os_log_send_and_compose_impl(v30, &v33, v63, 80, &_mh_execute_header, v29, v28, "assertion failure: setenv(LOG_STYLE, compact, 1) -> %{errno}d", v62, 8);
        }

        v27 = v31;
        v32 = v31;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A180);
      }
    }

    if ((*v53 & 0x20) != 0)
    {
      v26 = setenv("OS_ACTIVITY_STREAM", "live", 1);
      if (v26 == -1)
      {
        v25 = 0;
        memset(v61, 0, sizeof(v61));
        v23 = 0;
        v22 = 3;
        v21 = &_os_log_default;
        v20 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v22 &= ~1u;
        }

        if (v22)
        {
          v4 = __error();
          sub_1000013C8(v60, *v4);
          v23 = _os_log_send_and_compose_impl(v22, &v25, v61, 80, &_mh_execute_header, v21, v20, "assertion failure: setenv(OS_ACTIVITY_STREAM, live, 1) -> %{errno}d", v60, 8);
        }

        v19 = v23;
        v24 = v23;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A2C8);
      }

      ++v52;
    }

    if ((*v53 & 8) != 0)
    {
      memset(v59, 0, sizeof(v59));
      __snprintf_chk(v59, 0x40uLL, 0, 0x40uLL, "%llu", v53[1]);
      v18 = setenv("CRYPTEXCTL_VERBOSE_LEVEL", v59, 1);
      if (v18 == -1)
      {
        v17 = 0;
        memset(v58, 0, sizeof(v58));
        v15 = 0;
        v14 = 3;
        v13 = &_os_log_default;
        v12 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 &= ~1u;
        }

        if (v14)
        {
          v5 = __error();
          sub_1000013C8(v57, *v5);
          v15 = _os_log_send_and_compose_impl(v14, &v17, v58, 80, &_mh_execute_header, v13, v12, "assertion failure: setenv(CRYPTEXCTL_VERBOSE_LEVEL, lvlbuff, 1) -> %{errno}d", v57, 8);
        }

        v11 = v15;
        v16 = v15;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A45CLL);
      }

      __snprintf_chk(v59, 0x40uLL, 0, 0x40uLL, "%llu", v53[2]);
      v10 = setenv("CRYPTEXCTL_DEBUG_LEVEL", v59, 1);
      if (v10 == -1)
      {
        v9 = 0;
        memset(v56, 0, sizeof(v56));
        v8 = 3;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v8 = 2;
        }

        v6 = __error();
        sub_1000013C8(v55, *v6);
        _os_log_send_and_compose_impl(v8, &v9, v56, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: setenv(CRYPTEXCTL_DEBUG_LEVEL, lvlbuff, 1) -> %{errno}d", v55, 8);
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A5C0);
      }

      ++v52;
    }

    return v52 != 0;
  }
}

uint64_t sub_10003A62C(uint64_t a1, int a2, char **a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  v8 = 0;
  sub_1000480E0();
  while (1)
  {
    v10 = getopt_long(v14, v11, *(v15 + 32), *(v15 + 40), &v9);
    if (v10 == -1)
    {
      break;
    }

    v7 = (*(v15 + 40) + 32 * v9);
    v6 = v13[optind - 1];
    if (optind < 1)
    {
      v5 = 0;
      memset(__b, 0, sizeof(__b));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v16, optind);
      _os_log_send_and_compose_impl(v4, &v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v16);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003A804);
    }

    switch(v10)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'A':
        v8 |= 4uLL;
        break;
      case 'B':
        v8 |= 8uLL;
        break;
      case 'p':
        v8 |= 2uLL;
        break;
      case 't':
        v8 |= 1uLL;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10003A900);
    }
  }

  v13 += optind;
  v14 -= optind;
  v12 = sub_10003A980(&v8);
  return sysexit_np();
}

uint64_t sub_10003A980(void *a1)
{
  v2 = 0xFFFFFFFF00000000;
  if (*a1)
  {
    HIDWORD(v2) = 78;
    warnx("i hope you did not expect this to work", v2);
  }

  else if ((*a1 & 2) != 0)
  {
    HIDWORD(v2) = 61;
    warnx("@launchderp said no", v2);
  }

  else
  {
    if ((*a1 & 4) != 0)
    {
      HIDWORD(v2) = 1;
      raise(9);
      pause();
    }

    if ((*a1 & 8) != 0)
    {
      HIDWORD(v2) = 70;
      warnx("blobs have been saved, and the sudo(1) administrator has been notified", v2);
    }

    else
    {
      LODWORD(v2) = arc4random_uniform(0xAu);
      sleep(v2);
      warnx("timed out waiting for the next jelbrek", v2);
      return 60;
    }
  }

  return v3;
}

uint64_t sub_10003AA7C(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void **, uint64_t *))
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  memset(__b, 0, sizeof(__b));
  v7 = 0;
  v6 = 0;
  sub_10003AB6C(v13, __b);
  v9 = v11(__b[0], __b[1], &v7, &v6);
  if (v9)
  {
    v10 = 92;
  }

  else
  {
    sub_10004C358(v12, 0, j__free, v7, v6);
    v7 = 0;
    v10 = 0;
  }

  sub_10004C66C(__b, v3);
  v5 = v10;
  sub_100002DE4(&v7);
  return v5;
}

void *sub_10003AB6C(uint64_t a1, void *a2)
{
  v4 = strnstr(*a1, "-----BEGIN", *(a1 + 8));
  if (!v4)
  {
    v4 = *a1;
  }

  v3 = &v4[-*a1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10003AC00);
  }

  return sub_10004C358(a2, 0, 0, v4, *(a1 + 8) - v3);
}

char *sub_10003AC40(__n128 *a1, uint64_t a2)
{
  v6 = malloc_type_calloc(1uLL, 0xE0uLL, 0x8709206FuLL);
  v13 = "known-constant allocation";
  v12 = v6;
  v11 = 224;
  if (!v6)
  {
    v10 = 0;
    memset(__b, 0, sizeof(__b));
    v9 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 2;
    }

    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v14, v13, v11, v3);
    _os_log_send_and_compose_impl(v9, &v10, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v14, 32, v5);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003ADF4);
  }

  *v6 = a2;
  sub_10004C42C((v6 + 40), a1);
  *(v6 + 12) = v6 + 40;
  sub_1000496F4((v6 + 8), "com.apple.security.cryptexctl", "img4-certificate");
  return v6;
}

uint64_t sub_10003AE8C(void *a1)
{
  v57 = a1;
  v56 = -1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  Value = 0;
  v51 = 0;
  v50 = 0;
  AlgorithmId = 0;
  SignatureHashAlgorithm = 0;
  v47 = 0;
  v46 = 0;
  if (a1[12])
  {
    v56 = sub_10003AA7C(v57[12], v57 + 13, &AMSupportX509CreateDerCertFromPEM);
    if (v56)
    {
      v45 = v57[1];
      if (!v45)
      {
        v45 = "[anonymous]";
      }

      v44 = *__error();
      v43 = v57[3];
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v72, v45, v56);
        _os_log_impl(&_mh_execute_header, v43, type, "%{public}s: failed to read der from pem: %{darwin.errno}d", v72, 0x12u);
      }

      *__error() = v44;
      goto LABEL_102;
    }

    v57[20] = v57 + 13;
  }

  v55 = SecCertificateCreateWithBytes();
  if (!v55)
  {
    v56 = 92;
    v41 = v57[1];
    if (!v41)
    {
      v41 = "[anonymous]";
    }

    v40 = *__error();
    v39 = v57[3];
    v38 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v71, v41);
      _os_log_impl(&_mh_execute_header, v39, v38, "%{public}s: der representation invalid", v71, 0xCu);
    }

    *__error() = v40;
    goto LABEL_102;
  }

  v54 = SecCertificateCopyKey(v55);
  if (!v54)
  {
    v56 = 92;
    v37 = v57[1];
    if (!v37)
    {
      v37 = "[anonymous]";
    }

    v36 = *__error();
    v35 = v57[3];
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v70, v37);
      _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s: failed to copy public key", v70, 0xCu);
    }

    *__error() = v36;
    goto LABEL_102;
  }

  v53 = SecKeyCopyAttributes(v54);
  if (!v53)
  {
    v56 = 93;
    v33 = v57[1];
    if (!v33)
    {
      v33 = "[anonymous]";
    }

    v32 = *__error();
    v31 = v57[3];
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v69, v33);
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s: failed to copy public key attributes", v69, 0xCu);
    }

    *__error() = v32;
    goto LABEL_102;
  }

  Value = CFDictionaryGetValue(v53, kSecAttrKeySizeInBits);
  if (!Value)
  {
    v56 = 93;
    v29 = v57[1];
    if (!v29)
    {
      v29 = "[anonymous]";
    }

    v28 = *__error();
    v27 = v57[3];
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v68, v29);
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s: failed to copy public key size attribute", v68, 0xCu);
    }

    *__error() = v28;
    goto LABEL_102;
  }

  v25 = 0;
  v59 = Value;
  v58 = &CFNumberGetTypeID;
  v3 = CFGetTypeID(Value);
  if (v3 == CFNumberGetTypeID())
  {
    v25 = Value;
  }

  v24 = v25;
  v51 = v25;
  if (!v25)
  {
    v56 = 93;
    v23 = v57[1];
    if (!v23)
    {
      v23 = "[anonymous]";
    }

    v22 = *__error();
    v21 = v57[3];
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v67, v23);
      _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s: key size is not a CFNumber", v67, 0xCu);
    }

    *__error() = v22;
    goto LABEL_102;
  }

  v50 = sub_10001813C(v51) / 8uLL;
  AlgorithmId = SecKeyGetAlgorithmId();
  switch(AlgorithmId)
  {
    case 0:
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003B6C8);
    case 1:
      v19 = v57[1];
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v18 = *__error();
      v17 = v57[3];
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v66, v19);
        _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s: rsa public key", v66, 0xCu);
      }

      *__error() = v18;
      v57[27] = &off_10007ED18;
      goto LABEL_69;
    case 2:
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003B7E4);
  }

  if (AlgorithmId != 3)
  {
    v11 = 0;
    memset(__b, 0, sizeof(__b));
    v10 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = 2;
    }

    sub_100003098(v63, AlgorithmId);
    _os_log_send_and_compose_impl(v10, &v11, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: unsupported algorithm id: %ld", v63);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003BAACLL);
  }

  switch(v50)
  {
    case 0x18uLL:
      v57[27] = &off_10007EE28;
LABEL_69:
      SignatureHashAlgorithm = SecCertificateGetSignatureHashAlgorithm();
      switch(SignatureHashAlgorithm)
      {
        case 4:
          v57[26] = &off_10007EDD8;
          v46 = ccsha1_di();
          v47 = 20;
          break;
        case 5:
          if (AlgorithmId == 1)
          {
            v57[26] = &off_10007ED68;
          }

          else
          {
            v57[26] = &off_10007ED98;
          }

          v46 = ccsha224_di();
          v47 = 28;
          break;
        case 6:
          if (AlgorithmId == 1)
          {
            v57[26] = &off_10007ED38;
          }

          else
          {
            v57[26] = &off_10007EDA8;
          }

          v46 = ccsha256_di();
          v47 = 32;
          break;
        case 7:
          if (AlgorithmId == 1)
          {
            v57[26] = &off_10007ED48;
          }

          else
          {
            v57[26] = &off_10007EDB8;
          }

          v46 = ccsha384_di();
          v47 = 48;
          break;
        case 8:
          if (AlgorithmId == 1)
          {
            v57[26] = &off_10007ED58;
          }

          else
          {
            v57[26] = &off_10007EDC8;
          }

          v46 = ccsha512_di();
          v47 = 64;
          break;
        default:
          v56 = 45;
          v9 = v57[1];
          if (!v9)
          {
            v9 = "[anonymous]";
          }

          v8 = *__error();
          v7 = v57[3];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v62, v9, SignatureHashAlgorithm);
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: unsupported signature algorithm: %d", v62, 0x12u);
          }

          *__error() = v8;
          break;
      }

      v6 = v57[1];
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      v5 = *__error();
      v4 = v57[3];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v61, v6, v47);
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: digest output length = %lu", v61, 0x16u);
      }

      *__error() = v5;
      v57[22] = v47;
      v57[23] = v57[26];
      v57[24] = v46;
      v57[25] = v57 + 22;
      v60 = v55;
      v57[21] = CFRetain(v55);
      v56 = 0;
      goto LABEL_102;
    case 0x20uLL:
      v57[27] = &off_10007EE38;
      goto LABEL_69;
    case 0x30uLL:
      v57[27] = &off_10007EE48;
      goto LABEL_69;
    case 0x40uLL:
      v57[27] = &off_10007EE58;
      goto LABEL_69;
  }

  v56 = 45;
  v15 = v57[1];
  if (!v15)
  {
    v15 = "[anonymous]";
  }

  v14 = *__error();
  v13 = v57[3];
  v12 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100011C40(v65, v15, v50);
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s: unsupported ecdsa key size: %lu", v65, 0x16u);
  }

  *__error() = v14;
LABEL_102:
  v2 = v56;
  sub_100006B40(&v53);
  sub_100006B40(&v54);
  sub_100006B40(&v55);
  return v2;
}

void sub_10003BF44(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 20))
    {
      sub_10004C66C(*(v2 + 20), a2);
    }

    if (*(v2 + 20))
    {
      sub_10004C66C(*(v2 + 12), a2);
    }

    if (*(v2 + 21))
    {
      CFRelease(*(v2 + 21));
    }

    sub_100049728(v2 + 8);
    free(v2);
    *a1 = 0;
  }
}

uint64_t sub_10003C004(uint64_t a1, int a2, const char **a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v14 = a3;
  v13 = -1;
  v12 = 0;
  *__s1 = 0u;
  v11 = 0u;
  sub_1000480E0();
  while (1)
  {
    v13 = getopt_long(v17, v14, *(v18 + 32), *(v18 + 40), &v12);
    if (v13 == -1)
    {
      break;
    }

    v9 = (*(v18 + 40) + 32 * v12);
    v8 = v16[optind - 1];
    if (optind < 1)
    {
      v7 = 0;
      memset(__b, 0, sizeof(__b));
      v6 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 2;
      }

      sub_1000013C8(v19, optind);
      _os_log_send_and_compose_impl(v6, &v7, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v19);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003C1E4);
    }

    switch(v13)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v9);
      case '?':
        errx(64, "unknown option: %s", v8);
      case 'c':
        __s1[0] = (__s1[0] | 2);
        break;
      case 'd':
        __s1[0] = (__s1[0] | 1);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10003C2A0);
    }
  }

  v16 += optind;
  v17 -= optind;
  if (v17 < 1)
  {
    errx(64, "a log action must be provided");
  }

  __s1[1] = *v16;
  if (strcmp(__s1[1], "show") && strcmp(__s1[1], "stream") && strcmp(__s1[1], "collect"))
  {
    errx(64, "invalid log action: %s", __s1[1]);
  }

  ++v16;
  if (--v17 >= 1)
  {
    v5 = v17;
    v4 = v16;
    if (!strcmp(*v16, "--"))
    {
      ++v4;
      --v5;
    }

    *&v11 = v5;
    *(&v11 + 1) = v4;
  }

  v15 = sub_10003C434(__s1);
  return sysexit_np();
}

uint64_t sub_10003C434(uint64_t a1)
{
  v102 = a1;
  v101 = -1;
  v100 = "log";
  i = 0;
  v149 = 0;
  v148 = "log";
  v149 = *(a1 + 8);
  memset(__b, 0, sizeof(__b));
  v98 = 0;
  __argv = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = -1;
  v91 = -1;
  if (!strcmp(*(v102 + 8), "collect"))
  {
    v90 = 0;
    __s = "host";
    __s1 = "host";
    v89 = strdup("host");
    v125 = "known-constant allocation";
    v124 = v89;
    v123 = strlen("host");
    if (!v89)
    {
      v122 = 0;
      memset(v153, 0, sizeof(v153));
      v120 = 0;
      v119 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v119 &= ~1u;
      }

      if (v119)
      {
        v1 = __error();
        v2 = strerror(*v1);
        sub_1000031B0(v152, v125, v123, v2);
        v116 = _os_log_send_and_compose_impl(v119, &v122, v153, 80, &_mh_execute_header, oslog, type, "allocation failed: obj = %s, size = %lu, error = %s", v152, 32, v11);
        v120 = v116;
      }

      v115 = v120;
      v121 = v120;
      _os_crash_msg();
      __break(1u);
    }

    v87 = v89;
    v90 = v89;
    sub_10004860C(__stdoutp, 0, "Collecting logs from %s", v89);
    sub_100002DE4(&v90);
  }

  else
  {
    __b[v98++] = "--predicate";
    __b[v98++] = off_100084800[0];
  }

  if (*v102)
  {
    __b[v98++] = "-d";
  }

  if ((*v102 & 2) != 0)
  {
    __b[v98++] = "--style";
    __b[v98++] = "compact";
  }

  v3 = *(v102 + 16);
  v86 = 2;
  v95 = v3 + 2 + v98 + 1;
  sub_1000483C8(2uLL, "log argc = %lu", v95);
  v85 = 0;
  v84 = 8;
  v83 = v95;
  if (_dispatch_is_multithreaded())
  {
    v130 = v83;
    v129 = v84;
    v128 = 0;
    while (1)
    {
      v128 = malloc_type_calloc(v130, v129, 0x8A375538uLL);
      if (v128)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v85 = v128;
  }

  else
  {
    count = v83;
    size = v84;
    v85 = malloc_type_calloc(v83, v84, 0x8709206FuLL);
    v114 = "known-constant allocation";
    v113 = v85;
    v112 = v84;
    if (!v85)
    {
      v111 = 0;
      memset(v151, 0, sizeof(v151));
      v109 = 0;
      v108 = 3;
      v107 = &_os_log_default;
      v106 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v108 &= ~1u;
      }

      if (v108)
      {
        v14 = v108;
        v15 = v107;
        v16 = v106;
        v12 = v114;
        v13 = v112;
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v150, v12, v13, v5);
        LODWORD(v9) = 32;
        v105 = _os_log_send_and_compose_impl(v14, &v111, v151, 80, &_mh_execute_header, v15, v16, "allocation failed: obj = %s, size = %lu, error = %s", v150, v9, v11);
        v109 = v105;
      }

      v104 = v109;
      v110 = v109;
      _os_crash_msg();
      __break(1u);
    }
  }

  v82[3] = v85;
  __argv = v85;
  for (i = 0; ; ++i)
  {
    v82[2] = 2;
    if (i >= 2)
    {
      break;
    }

    __argv[v96] = (&v148)[i];
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v96, __argv[v96]);
    ++v96;
  }

  for (i = 0; i < v98; ++i)
  {
    v82[1] = 7;
    if (i >= 7)
    {
      _os_crash();
      __break(1u);
    }

    __argv[v96] = __b[i];
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v96, __argv[v96]);
    ++v96;
  }

  for (i = 0; i < *(v102 + 16); ++i)
  {
    __argv[v96] = *(*(v102 + 24) + 8 * i);
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v96, __argv[v96]);
    ++v96;
  }

  sub_1000483C8(2uLL, "log argv[%lu] = %p", v96, __argv[v96]);
  if (__argv[v96])
  {
    v82[0] = 0;
    memset(v146, 0, sizeof(v146));
    v80 = 0;
    v79 = 3;
    v78 = &_os_log_default;
    v77 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v79 &= ~1u;
    }

    if (v79)
    {
      sub_10000AD08(v145, v96, __argv[v96]);
      LODWORD(v10) = 22;
      v76 = _os_log_send_and_compose_impl(v79, v82, v146, 80, &_mh_execute_header, v78, v77, "unexpected failure: log argv not null-terminated: argv[%lu] = %p", v145, v10);
      v80 = v76;
    }

    v75 = v80;
    v81 = v80;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawnattr_init(&v94);
  v74 = v101;
  if (v101)
  {
    v73[0] = 0;
    memset(v144, 0, sizeof(v144));
    v71 = 0;
    v70 = 3;
    v69 = &_os_log_default;
    v68 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v70 &= ~1u;
    }

    if (v70)
    {
      sub_100003098(v143, v74);
      v67 = _os_log_send_and_compose_impl(v70, v73, v144, 80, &_mh_execute_header, v69, v68, "assertion failure: error -> %llu", v143);
      v71 = v67;
    }

    v66 = v71;
    v72 = v71;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawnattr_setflags(&v94, 128);
  v65 = v101;
  if (v101)
  {
    v64[0] = 0;
    memset(v142, 0, sizeof(v142));
    v62 = 0;
    v61 = 3;
    v60 = &_os_log_default;
    v59 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v61 &= ~1u;
    }

    if (v61)
    {
      sub_100003098(v141, v65);
      v58 = _os_log_send_and_compose_impl(v61, v64, v142, 80, &_mh_execute_header, v60, v59, "assertion failure: error -> %llu", v141);
      v62 = v58;
    }

    v57 = v62;
    v63 = v62;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawn_file_actions_init(&v93);
  v56 = v101;
  if (v101)
  {
    v55[0] = 0;
    memset(v140, 0, sizeof(v140));
    v53 = 0;
    v52 = 3;
    v51 = &_os_log_default;
    v50 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v52 &= ~1u;
    }

    if (v52)
    {
      sub_100003098(v139, v56);
      v49 = _os_log_send_and_compose_impl(v52, v55, v140, 80, &_mh_execute_header, v51, v50, "assertion failure: error -> %llu", v139);
      v53 = v49;
    }

    v48 = v53;
    v54 = v53;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawn_file_actions_addinherit_np(&v93, 0);
  v47 = v101;
  if (v101)
  {
    v46[0] = 0;
    memset(v138, 0, sizeof(v138));
    v44 = 0;
    v43 = 3;
    v42 = &_os_log_default;
    v41 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v43 &= ~1u;
    }

    if (v43)
    {
      sub_100003098(v137, v47);
      v40 = _os_log_send_and_compose_impl(v43, v46, v138, 80, &_mh_execute_header, v42, v41, "assertion failure: error -> %llu", v137);
      v44 = v40;
    }

    v39 = v44;
    v45 = v44;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawn_file_actions_addinherit_np(&v93, 1);
  v38 = v101;
  if (v101)
  {
    v37[0] = 0;
    memset(v136, 0, sizeof(v136));
    v35 = 0;
    v34 = 3;
    v33 = &_os_log_default;
    v32 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v34 &= ~1u;
    }

    if (v34)
    {
      sub_100003098(v135, v38);
      v31 = _os_log_send_and_compose_impl(v34, v37, v136, 80, &_mh_execute_header, v33, v32, "assertion failure: error -> %llu", v135);
      v35 = v31;
    }

    v30 = v35;
    v36 = v35;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawn_file_actions_addinherit_np(&v93, 2);
  v29 = v101;
  if (v101)
  {
    v28[0] = 0;
    memset(v134, 0, sizeof(v134));
    v26 = 0;
    v25 = 3;
    v24 = &_os_log_default;
    v23 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v25 &= ~1u;
    }

    if (v25)
    {
      sub_100003098(v133, v29);
      v22 = _os_log_send_and_compose_impl(v25, v28, v134, 80, &_mh_execute_header, v24, v23, "assertion failure: error -> %llu", v133);
      v26 = v22;
    }

    v21 = v26;
    v27 = v26;
    _os_crash_msg();
    __break(1u);
  }

  v101 = posix_spawnp(&v92, v100, &v93, 0, __argv, environ);
  if (v101)
  {
    warnc(v101, "posix_spawn");
  }

  else
  {
    sub_10003D788(v92);
    while (1)
    {
      v20 = waitpid(v92, &v91, 0);
      if (v20 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        err(71, "waitpid[%d]", v92);
      }

      warnx("waitpid: interrupted");
    }

    if (v20 != v92)
    {
      errx(71, "waitpid: %d != %d", v20, v92);
    }

    if ((v91 & 0x7F) != 0)
    {
      if ((v91 & 0x7F) != 0x7F && (v91 & 0x7F) != 0)
      {
        v6 = strsignal(v91 & 0x7F);
        errx(71, "child signaled: %s", v6);
      }

      if ((v91 & 0x7F) == 0x7F && v91 >> 8 != 19)
      {
        v7 = strsignal(v91 >> 8);
        errx(71, "child stopped: %s", v7);
      }
    }

    else if (BYTE1(v91))
    {
      if (BYTE1(v91) == 77)
      {
        v101 = 1;
        warnx("collect must be run as root. Hint: 'sudo -E'");
      }

      else
      {
        if (BYTE1(v91) != 127)
        {
          errx(71, "child exited: %d", BYTE1(v91));
        }

        v101 = 88;
        warnx("no interpreter");
      }
    }

    else
    {
      sub_10004860C(0, 1uLL, "log exited successfully");
    }
  }

  free(__argv);
  v19 = posix_spawn_file_actions_destroy(&v93);
  if (v19)
  {
    v18 = 0;
    memset(v132, 0, sizeof(v132));
    v17 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = 2;
    }

    sub_100003098(v131, v19);
    _os_log_send_and_compose_impl(v17, &v18, v132, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawn_file_actions_destroy(&sfa) -> %llu", v131);
    _os_crash_msg();
    __break(1u);
  }

  return v101;
}

void sub_10003D788(int a1)
{
  pid = a1;
  v30 = -1;
  v29 = -1;
  error_value = 5;
  target_task = 0;
  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  v24 = 0;
  memset(__b, 0, sizeof(__b));
  v23 = __b;
  error_value = task_name_for_pid(mach_task_self_, pid, &target_task);
  if (error_value)
  {
    v30 = 1;
    v9 = pid;
    v1 = mach_error_string(error_value);
    warnx("failed to get task-name port for pid: %d: %s", v9, v1);
  }

  else
  {
    sub_1000483C8(2uLL, "got task-name port for pid %d", pid);
    error_value = task_info(target_task, 0xFu, &task_info_out, &task_info_outCnt);
    if (error_value)
    {
      v30 = 1;
      v8 = pid;
      v2 = mach_error_string(error_value);
      warnx("failed to get audit trailer for pid: %d: %s", v8, v2);
    }

    else
    {
      sub_1000483C8(2uLL, "got audit token pid %d", pid);
      atoken = task_info_out;
      v3 = audit_token_to_pid(&atoken);
      sub_1000483C8(2uLL, "pid = %u", v3);
      v21 = task_info_out;
      v4 = audit_token_to_pidversion(&v21);
      sub_1000483C8(2uLL, "pidvers = %u", v4);
      v29 = csops_audittoken();
      if (v29)
      {
        v30 = *__error();
        warn("csops: status");
      }

      else
      {
        v29 = csops_audittoken();
        if (v29)
        {
          v30 = *__error();
          warn("csops: identity");
        }

        else
        {
          sub_1000483C8(2uLL, "got identity: %s", v23 + 8);
          if ((v24 & 0x4000000) != 0)
          {
            if (!strcmp(v23 + 8, "com.apple.log"))
            {
              v29 = kill(pid, 19);
              v20 = v29;
              if (v29 == -1)
              {
                v19 = 0;
                memset(v35, 0, sizeof(v35));
                v17 = 0;
                v16 = 3;
                oslog = &_os_log_default;
                type = OS_LOG_TYPE_ERROR;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  v16 &= ~1u;
                }

                if (v16)
                {
                  v5 = *__error();
                  sub_1000013C8(v34, v5);
                  v17 = _os_log_send_and_compose_impl(v16, &v19, v35, 80, &_mh_execute_header, oslog, type, "assertion failure: ret -> %{errno}d", v34, 8);
                }

                v13 = v17;
                v18 = v17;
                _os_crash_msg();
                __break(1u);
                JUMPOUT(0x10003DBB0);
              }

              v30 = 0;
            }

            else
            {
              v30 = 13;
              warnx("log id is incorrect: %s", v23 + 8);
            }
          }

          else
          {
            v30 = 13;
            warnx("log is not a platform binary");
          }
        }
      }
    }
  }

  if (v30)
  {
    warn("killing child");
    v29 = kill(pid, 9);
    v12 = v29;
    if (v29 == -1)
    {
      v11 = 0;
      memset(v33, 0, sizeof(v33));
      v10 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v10 = 2;
      }

      v6 = *__error();
      sub_1000013C8(v32, v6);
      LODWORD(v7) = 8;
      _os_log_send_and_compose_impl(v10, &v11, v33, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: ret -> %{errno}d", v32, v7);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003DD00);
    }
  }
}

uint64_t sub_10003DD38(uint64_t a1, int a2, char *const *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = -1;
  v12 = a3;
  v11 = -1;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  sub_1000480E0();
  while (1)
  {
    v11 = getopt_long(v15, v12, *(v16 + 32), *(v16 + 40), &v10);
    if (v11 == -1)
    {
      break;
    }

    v7 = (*(v16 + 40) + 32 * v10);
    v6 = v14[optind - 1];
    if (optind < 1)
    {
      v5 = 0;
      memset(__b, 0, sizeof(__b));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v17, optind);
      _os_log_send_and_compose_impl(v4, &v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v17);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003DF14);
    }

    if (v11 == 58)
    {
      errx(64, "missing argument for option: %s", *v7);
    }

    if (v11 == 63)
    {
      errx(64, "unknown option: %s", v6);
    }

    if (v11 != 117)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003DFB0);
    }

    v8 |= 1uLL;
  }

  v14 += optind;
  v15 -= optind;
  if (v15 < 1)
  {
    errx(64, "a trust cache must be provided");
  }

  v9 = *v14;
  v13 = sub_10003E05C(&v8);
  return sysexit_np();
}

uint64_t sub_10003E05C(uint64_t a1)
{
  v14 = a1;
  v13 = -1;
  v12 = -1;
  v11 = 0;
  v10 = 0;
  memset(__b, 0, sizeof(__b));
  v9 = 0;
  i = 0;
  if (*v14)
  {
    v11 |= 1uLL;
  }

  v12 = open(*(v14 + 8), 0);
  v15 = v12;
  if (v12 < 0)
  {
    warn("open: %s", *(v14 + 8));
  }

  else
  {
    v10 = sub_100011D7C(0, 0, v11);
    v13 = sub_1000133D0(v10, v12);
    if (v13)
    {
      if (v13 == 45)
      {
        warnx("trust cache version not supported");
      }

      else if (v13 == 79)
      {
        warnx("unknown trust cache tag");
      }

      else
      {
        warnc(v13, "failed to read trust cache");
      }
    }

    else
    {
      uuid_unparse(v10 + 46, __b);
      if (*(v10 + 17))
      {
        v7 = 0;
        v5 = 0;
        v6 = 0;
        v7 = sub_10004B484(*(v10 + 17), &v5);
        sub_10004860C(__stdoutp, 0, "object type = %s", v7);
      }

      sub_10004860C(__stdoutp, 0, "version = %u", *(v10 + 42));
      sub_10004860C(__stdoutp, 0, "uuid = %s", __b);
      sub_10004860C(__stdoutp, 0, "entry count = %u", *(v10 + 62));
      v9 = sub_100015C98(v10);
      for (i = 0; i < *(v10 + 106); ++i)
      {
        v4 = v9[i];
        memset(v16, 0, sizeof(v16));
        v3 = 0;
        sub_100023D24(v4, v16);
        v3 = sub_100023D68(v4);
        if (*(v10 + 42) == 2)
        {
          sub_10004860C(__stdoutp, 0, "%22s %s %d", v16, v3, *(v4 + 121));
        }

        else
        {
          sub_10004860C(__stdoutp, 0, "%22s %s", v16, v3);
        }

        sub_100002DE4(&v3);
      }

      v13 = 0;
    }
  }

  v2 = v13;
  sub_100002DE4(&v9);
  sub_1000038DC(&v12);
  return v2;
}

CFErrorRef sub_10003E3F8(uint64_t a1, const char *a2, NSObject *a3)
{
  v108 = a1;
  v107 = a2;
  v106 = a3;
  v105 = -1;
  v103 = archive_read_new();
  v102 = archive_write_disk_new();
  v101 = 0;
  v100 = 0;
  bzero(v121, 0x400uLL);
  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all)
  {
    v105 = archive_errno();
    v99 = *__error();
    v98 = v106;
    v97 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v58 = v98;
      v59 = v97;
      v3 = archive_error_string();
      v60 = v120;
      sub_100003120(v120, v3);
      _os_log_impl(&_mh_execute_header, v98, v97, "archive_read_support_filter_all: %s", v120, 0xCu);
    }

    v57 = v99;
    *__error() = v99;
  }

  else
  {
    support_filter_all = archive_read_support_format_all();
    if (support_filter_all)
    {
      v105 = archive_errno();
      v96 = *__error();
      v95 = v106;
      v94 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        v54 = v95;
        v55 = v94;
        v4 = archive_error_string();
        v56 = v119;
        sub_100003120(v119, v4);
        _os_log_impl(&_mh_execute_header, v95, v94, "archive_read_support_format_all: %s", v119, 0xCu);
      }

      v53 = v96;
      *__error() = v96;
    }

    else
    {
      support_filter_all = archive_read_open_filename();
      if (support_filter_all)
      {
        v105 = archive_errno();
        v93 = *__error();
        v92 = v106;
        v91 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v50 = v92;
          v51 = v91;
          v5 = archive_error_string();
          v52 = v118;
          sub_100003120(v118, v5);
          _os_log_impl(&_mh_execute_header, v92, v91, "archive_read_open_filename: %s", v118, 0xCu);
        }

        v49 = v93;
        *__error() = v93;
      }

      else
      {
        support_filter_all = archive_write_disk_set_options();
        if (support_filter_all)
        {
          v105 = archive_errno();
          v90 = *__error();
          v89 = v106;
          v88 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v46 = v89;
            v47 = v88;
            v6 = archive_error_string();
            v48 = v117;
            sub_100003120(v117, v6);
            _os_log_impl(&_mh_execute_header, v89, v88, "archive_write_disk_set_options: %s", v117, 0xCu);
          }

          v45 = v90;
          *__error() = v90;
        }

        else
        {
          support_filter_all = archive_write_disk_set_standard_lookup();
          if (support_filter_all)
          {
            v105 = archive_errno();
            v87 = *__error();
            v86 = v106;
            v85 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v42 = v86;
              v43 = v85;
              v7 = archive_error_string();
              v44 = v116;
              sub_100003120(v116, v7);
              _os_log_impl(&_mh_execute_header, v86, v85, "archive_write_disk_set_standard_lookup: %s", v116, 0xCu);
            }

            v41 = v87;
            *__error() = v87;
          }

          else
          {
            while (1)
            {
              support_filter_all = archive_read_next_header();
              if (support_filter_all == 1)
              {
                break;
              }

              if (support_filter_all)
              {
                v105 = archive_errno();
                v84 = *__error();
                v83 = v106;
                v82 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v38 = v83;
                  v39 = v82;
                  v8 = archive_error_string();
                  v40 = v115;
                  sub_100003120(v115, v8);
                  _os_log_impl(&_mh_execute_header, v83, v82, "archive_read_next_header: %s", v115, 0xCu);
                }

                v37 = v84;
                *__error() = v84;
                break;
              }

              v100 = archive_entry_pathname();
              if (v100)
              {
                support_filter_all = __snprintf_chk(v121, 0x400uLL, 0, 0x400uLL, "%s/%s", v107, v100);
                if (support_filter_all < 0)
                {
                  v105 = *__error();
                  v81 = *__error();
                  v80 = v106;
                  v79 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    v34 = v80;
                    v35 = v79;
                    v33 = v100;
                    v9 = strerror(v105);
                    v36 = v114;
                    sub_10003F0CC(v114, v100, v9, v105);
                    _os_log_impl(&_mh_execute_header, v80, v79, "failed to build destination path for '%s': %s: %{darwin.errno}d", v114, 0x1Cu);
                  }

                  v32 = v81;
                  *__error() = v81;
                  break;
                }

                if (support_filter_all >= 0x401)
                {
                  v105 = 5;
                  v78 = *__error();
                  v77 = v106;
                  v76 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    v29 = v77;
                    v30 = v76;
                    v31 = v113;
                    sub_1000013C8(v113, support_filter_all);
                    _os_log_impl(&_mh_execute_header, v77, v76, "resulting destination path too long: needed = %d", v113, 8u);
                  }

                  v28 = v78;
                  *__error() = v78;
                  break;
                }

                archive_entry_set_pathname();
                v10 = archive_write_header();
                support_filter_all = v10;
                if (v10)
                {
                  v105 = archive_errno();
                  v75 = *__error();
                  v74 = v106;
                  v73 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    v25 = v74;
                    v26 = v73;
                    v11 = archive_error_string();
                    v27 = v112;
                    sub_100003120(v112, v11);
                    _os_log_impl(&_mh_execute_header, v74, v73, "archive_write_header: %s", v112, 0xCu);
                  }

                  v24 = v75;
                  *__error() = v75;
                  break;
                }

                if (archive_entry_size() >= 1)
                {
                  v105 = sub_10003F138(v103, v102, v106);
                }

                support_filter_all = archive_write_finish_entry();
                if (support_filter_all)
                {
                  if (!v105)
                  {
                    v105 = archive_errno();
                  }

                  v72 = *__error();
                  v71 = v106;
                  v70 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    v21 = v71;
                    v22 = v70;
                    v12 = archive_error_string();
                    v23 = v111;
                    sub_100003120(v111, v12);
                    _os_log_impl(&_mh_execute_header, v71, v70, "archive_write_finish_entry: %s", v111, 0xCu);
                  }

                  v20 = v72;
                  *__error() = v72;
                  break;
                }

                if (v105)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  archive_read_close();
  archive_read_free();
  archive_write_close();
  archive_write_free();
  if (!v105)
  {
    return 0;
  }

  v69 = 0;
  v68 = v105;
  v67 = 0;
  v66 = 2;
  v65 = &_os_log_default;
  v64 = 16;
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v66 &= ~1u;
  }

  if (v66)
  {
    v17 = v66;
    v18 = v65;
    v19 = v64;
    v16 = v110;
    sub_10003F0CC(v110, v108, v107, v105);
    LODWORD(v14) = 28;
    v63 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, v65, v64, "failed to extract '%s' to '%s %{darwin.errno}d", v110, v14);
    v67 = v63;
  }

  v62 = v67;
  v69 = v67;
  if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c", 47))
  {
    v15 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c", 47) + 1;
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c";
  }

  v61 = sub_1000185D8("libarchive_extract", v15, 167, "com.apple.security.cryptex.posix", v68, 0, v69);
  sub_100002DE4(&v69);
  return v61;
}

uint64_t sub_10003F0CC(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_10003F138(uint64_t a1, uint64_t a2, NSObject *a3)
{
  do
  {
    data_block = archive_read_data_block();
    if (data_block == 1)
    {
      return 0;
    }

    if (data_block)
    {
      v9 = archive_errno();
      v7 = *__error();
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v3 = archive_error_string();
        sub_100003120(v12, v3);
        _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "archive_read_data_block: %s", v12, 0xCu);
      }

      *__error() = v7;
      return v9;
    }
  }

  while (archive_write_data_block() >= 0);
  v9 = archive_errno();
  v6 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    v4 = archive_error_string();
    sub_100003120(v11, v4);
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "archive_write_data_block: %s", v11, 0xCu);
  }

  *__error() = v6;
  return v9;
}

uint64_t sub_10003F374()
{
  v4 = &unk_100084C70;
  location = 0;
  objc_storeStrong(&location, &stru_10007DF08);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100084C68;
  v0 = qword_100084C68;
  return v2;
}

void sub_10003F3F8(id a1)
{
  v1 = os_log_create("com.apple.libcryptex", "device");
  v2 = qword_100084C68;
  qword_100084C68 = v1;
  _objc_release(v2);
}

void *sub_10003F450(void *a1, uint64_t a2)
{
  location[0] = 0;
  objc_storeStrong(location, a1);
  location[2] = 1;
  location[1] = 184;
  v12 = malloc_type_calloc(1uLL, 0xB8uLL, 0x8709206FuLL);
  v24 = "known-constant allocation";
  v23 = v12;
  v22 = 184;
  if (!v12)
  {
    v21 = 0;
    memset(__b, 0, sizeof(__b));
    v19 = 0;
    v18 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v18 &= ~1u;
    }

    if (v18)
    {
      v8 = v18;
      v9 = oslog;
      v10 = type;
      v6 = v24;
      v7 = v22;
      v2 = __error();
      v3 = strerror(*v2);
      sub_1000031B0(v25, v6, v7, v3);
      v15 = _os_log_send_and_compose_impl(v8, &v21, __b, 80, &_mh_execute_header, v9, v10, "allocation failed: obj = %s, size = %lu, error = %s", v25, 32, v5);
      v19 = v15;
    }

    v14 = v19;
    objc_storeStrong(&oslog, 0);
    v20 = v14;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003F638);
  }

  v12[2] = a2;
  objc_storeStrong(v12, location[0]);
  objc_storeStrong(location, 0);
  return v12;
}

uint64_t sub_10003F6B4(void *a1)
{
  v66 = a1;
  v65 = 0;
  v64 = 0;
  string_ptr = 0;
  v62 = 0;
  v61 = 0;
  chip_inst = 0;
  if (remote_device_get_state() == 2)
  {
    v62 = remote_device_copy_os_build();
    v30 = remote_device_copy_property();
    v1 = v64;
    v64 = v30;

    if (!v30 || xpc_get_type(v64) != &_xpc_type_string)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003FC4CLL);
    }

    string_ptr = xpc_string_get_string_ptr(v64);
    v2 = &_dispatch_main_q;
    v28 = &_dispatch_main_q;
    v29 = cryptex_remote_service_create();
    v3 = v66[1];
    v66[1] = v29;

    v43[0] = v61;
    v27 = cryptex_remote_service_copy_device_identifier2();
    objc_storeStrong(&v61, v61);
    if (v27)
    {
      chip_inst = cryptex_remote_device_identifier_get_chip_inst();
      v35 = string_ptr;
      if (_dispatch_is_multithreaded())
      {
        v94 = v35;
        v93 = 0;
        while (1)
        {
          v93 = strdup(v94);
          if (v93)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v36 = v93;
      }

      else
      {
        v90 = v35;
        v36 = strdup(v35);
        v4 = strlen(v35);
        v88 = "known-constant allocation";
        v87 = v36;
        v86 = v4;
        if (!v36)
        {
          v85 = 0;
          memset(v101, 0, 80);
          v83 = 0;
          v82 = 3;
          v81 = &_os_log_default;
          v80 = 16;
          if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 &= ~1u;
          }

          if (v82)
          {
            v17 = v82;
            v18 = v81;
            v19 = v80;
            v20 = v88;
            v21 = v86;
            v22 = __error();
            v16 = strerror(*v22);
            sub_1000031B0(v100, v20, v21, v16);
            v79 = _os_log_send_and_compose_impl(v17, &v85, v101, 80, &_mh_execute_header, v18, v19, "allocation failed: obj = %s, size = %lu, error = %s", v100, 32, v7);
            v83 = v79;
          }

          v78 = v83;
          objc_storeStrong(&v81, 0);
          v84 = v78;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000400E4);
        }
      }

      v66[21] = v36;
      v33 = v62;
      if (_dispatch_is_multithreaded())
      {
        v92 = v33;
        v91 = 0;
        while (1)
        {
          v91 = strdup(v92);
          if (v91)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v34 = v91;
      }

      else
      {
        v89 = v33;
        v34 = strdup(v33);
        v5 = strlen(v33);
        v77 = "known-constant allocation";
        v76 = v34;
        v75 = v5;
        if (!v34)
        {
          v74 = 0;
          memset(v99, 0, sizeof(v99));
          v72 = 0;
          v71 = 3;
          v70 = &_os_log_default;
          v69 = 16;
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 &= ~1u;
          }

          if (v71)
          {
            v10 = v71;
            v11 = v70;
            v12 = v69;
            v13 = v77;
            v14 = v75;
            v15 = __error();
            v9 = strerror(*v15);
            sub_1000031B0(v98, v13, v14, v9);
            v68 = _os_log_send_and_compose_impl(v10, &v74, v99, 80, &_mh_execute_header, v11, v12, "allocation failed: obj = %s, size = %lu, error = %s", v98, 32, v7);
            v72 = v68;
          }

          v67 = v72;
          objc_storeStrong(&v70, 0);
          v73 = v67;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100040318);
        }
      }

      v66[22] = v34;
      __memmove_chk();
    }

    else if (v65)
    {
      v38 = *__error();
      v37 = sub_10003F374();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10000ACC8(v95, v65);
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "failed to copy remote device identifier: %@", v95, 0xCu);
      }

      objc_storeStrong(&v37, 0);
      v23 = v38;
      *__error() = v23;
    }

    else
    {
      v42 = *__error();
      v41 = sub_10003F374();
      v40 = 2;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v25 = v41;
        v26 = v40;
        sub_10000DC54(v39);
        _os_log_impl(&_mh_execute_header, v25, v26, "failed to copy remote device identifier [no error]", v39, 2u);
      }

      objc_storeStrong(&v41, 0);
      v24 = v42;
      *__error() = v24;
    }
  }

  else
  {
    name = remote_device_get_name();
    v58 = 0;
    v57 = 19;
    v32 = sub_10003F374();

    if (v32)
    {
      v56 = 0;
      v55 = 3;
      v54 = sub_10003F374();
      v53 = 16;
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 &= ~1u;
      }

      if (v55)
      {
        sub_100003120(v97, name);
        v52 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, v54, v53, "remote device %s is not connected", v97);
        v56 = v52;
      }

      v51 = v56;
      objc_storeStrong(&v54, 0);
      v58 = v51;
    }

    else
    {
      v50 = 0;
      v49 = 2;
      v48 = &_os_log_default;
      v47 = 16;
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 &= ~1u;
      }

      if (v49)
      {
        sub_100003120(v96, name);
        v46 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, v48, v47, "remote device %s is not connected", v96);
        v50 = v46;
      }

      v45 = v50;
      objc_storeStrong(&v48, 0);
      v58 = v45;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m", 47))
    {
      v31 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m", 47) + 1;
    }

    else
    {
      v31 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m";
    }

    v44 = sub_1000185D8("device_init", v31, 46, "com.apple.security.cryptex", v57, 0, v58);
    sub_100002DE4(&v58);
    v65 = v44;
  }

  v8 = v65;
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v64, 0);
  return v8;
}

void sub_1000403FC(uint64_t a1, int a2)
{
  *v2 = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 8) = *v2;
  _Unwind_Resume(*(v2 + 8));
}

uint64_t sub_10004042C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = 0;
  cryptex_remote_service_install2();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

uint64_t sub_100040538(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = a3;
  v26 = a4;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  nonce = 0;
  v4 = cryptex_remote_service_nonce_attr_create();
  v5 = v24;
  v24 = v4;
  _objc_release(v5);
  cryptex_remote_service_nonce_attr_set_persistence();
  cryptex_remote_service_nonce_attr_set_cryptex();
  v21 = v23;
  v14 = cryptex_remote_service_copy_nonce2();
  objc_storeStrong(&v23, v21);
  if (v14)
  {
    nonce = cryptex_remote_service_nonce_get_nonce();
    __memmove_chk();
  }

  else if (v25)
  {
    v16 = *__error();
    oslog = sub_10003F374();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10000ACC8(v29, v25);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "failed to copy nonce from remote device: %@", v29, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v8 = v16;
    *__error() = v8;
  }

  else
  {
    v20 = *__error();
    v19 = sub_10003F374();
    v18 = 2;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      log = v19;
      type = v18;
      sub_10000DC54(v17);
      _os_log_impl(&_mh_execute_header, log, type, "failed to copy nonce from remote device [no error]", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v9 = v20;
    *__error() = v9;
  }

  v7 = v25;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v7;
}

uint64_t sub_100040818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = ccsha1_di();
  v5 = (v25[1] + v25[2] + 19) >> 3;
  v24[2] = v10;
  v15 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v10[-v15];
  v24[1] = v6;
  bzero(&v10[-v15], v7);
  if (v27 != *v25)
  {
    v24[0] = 0;
    memset(v32, 0, sizeof(v32));
    v22 = 0;
    v21 = 3;
    v20 = &_os_log_default;
    v19 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 &= ~1u;
    }

    if (v21)
    {
      v12 = v21;
      v13 = v20;
      v14 = v19;
      v8 = *v25;
      v11 = v31;
      sub_10000AD08(v31, v27, v8);
      v18 = _os_log_send_and_compose_impl(v12, v24, v32, 80, &_mh_execute_header, v13, v14, "unexpected failure: incorrect buffer size: actual = %lu, expected = %lu", v11, 22);
      v22 = v18;
    }

    v17 = v22;
    v23 = v22;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000409F4);
  }

  ccdigest_update();
  sub_1000243C4(v25, v16, v28);
  return 0;
}

uint64_t sub_100040AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = ccsha224_di();
  v5 = (v25[1] + v25[2] + 19) >> 3;
  v24[2] = v10;
  v15 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v10[-v15];
  v24[1] = v6;
  bzero(&v10[-v15], v7);
  if (v27 != *v25)
  {
    v24[0] = 0;
    memset(v32, 0, sizeof(v32));
    v22 = 0;
    v21 = 3;
    v20 = &_os_log_default;
    v19 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 &= ~1u;
    }

    if (v21)
    {
      v12 = v21;
      v13 = v20;
      v14 = v19;
      v8 = *v25;
      v11 = v31;
      sub_10000AD08(v31, v27, v8);
      v18 = _os_log_send_and_compose_impl(v12, v24, v32, 80, &_mh_execute_header, v13, v14, "unexpected failure: incorrect buffer size: actual = %lu, expected = %lu", v11, 22);
      v22 = v18;
    }

    v17 = v22;
    v23 = v22;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100040CBCLL);
  }

  ccdigest_update();
  sub_1000243C4(v25, v16, v28);
  return 0;
}

uint64_t sub_100040D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = ccsha256_di();
  v5 = (v25[1] + v25[2] + 19) >> 3;
  v24[2] = v10;
  v15 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v10[-v15];
  v24[1] = v6;
  bzero(&v10[-v15], v7);
  if (v27 != *v25)
  {
    v24[0] = 0;
    memset(v32, 0, sizeof(v32));
    v22 = 0;
    v21 = 3;
    v20 = &_os_log_default;
    v19 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 &= ~1u;
    }

    if (v21)
    {
      v12 = v21;
      v13 = v20;
      v14 = v19;
      v8 = *v25;
      v11 = v31;
      sub_10000AD08(v31, v27, v8);
      v18 = _os_log_send_and_compose_impl(v12, v24, v32, 80, &_mh_execute_header, v13, v14, "unexpected failure: incorrect buffer size: actual = %lu, expected = %lu", v11, 22);
      v22 = v18;
    }

    v17 = v22;
    v23 = v22;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100040F0CLL);
  }

  ccdigest_update();
  sub_1000243C4(v25, v16, v28);
  return 0;
}

uint64_t sub_100040F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = ccsha384_di();
  v5 = (v25[1] + v25[2] + 19) >> 3;
  v24[2] = v10;
  v15 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v10[-v15];
  v24[1] = v6;
  bzero(&v10[-v15], v7);
  if (v27 != *v25)
  {
    v24[0] = 0;
    memset(v32, 0, sizeof(v32));
    v22 = 0;
    v21 = 3;
    v20 = &_os_log_default;
    v19 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 &= ~1u;
    }

    if (v21)
    {
      v12 = v21;
      v13 = v20;
      v14 = v19;
      v8 = *v25;
      v11 = v31;
      sub_10000AD08(v31, v27, v8);
      v18 = _os_log_send_and_compose_impl(v12, v24, v32, 80, &_mh_execute_header, v13, v14, "unexpected failure: incorrect buffer size: actual = %lu, expected = %lu", v11, 22);
      v22 = v18;
    }

    v17 = v22;
    v23 = v22;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10004115CLL);
  }

  ccdigest_update();
  sub_1000243C4(v25, v16, v28);
  return 0;
}

void *sub_1000411D0(uint64_t a1)
{
  v5 = malloc_type_calloc(1uLL, 0xB8uLL, 0x8709206FuLL);
  v11 = "known-constant allocation";
  v10 = v5;
  v9 = 184;
  if (!v5)
  {
    v8 = 0;
    memset(__b, 0, sizeof(__b));
    v7 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 2;
    }

    v1 = __error();
    v2 = strerror(*v1);
    sub_1000031B0(v12, v11, v9, v2);
    _os_log_send_and_compose_impl(v7, &v8, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v12, 32, v4);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100041380);
  }

  v5[4] = a1;
  v5[21] = v5 + 14;
  sub_1000496F4(v5, "com.apple.security.cryptexctl", "img4-decode");
  return v5;
}

uint64_t sub_100041404(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = -1;
  v11 = 8;
  v10 = *a2;
  Context = -1;
  v8 = 0;
  if (sub_1000418C0(*(v10 + 208), &off_10007EDD8))
  {
    v11 = 1;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007ED68))
  {
    v11 = 2;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007ED38))
  {
    v11 = 4;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007ED48))
  {
    v11 = 8;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007ED58))
  {
    v11 = 16;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007ED98))
  {
    v11 = 2;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007EDA8))
  {
    v11 = 4;
  }

  else if (sub_1000418C0(*(v10 + 208), &off_10007EDB8))
  {
    v11 = 8;
  }

  else
  {
    if (!sub_1000418C0(*(v10 + 208), &off_10007EDC8))
    {
      v7 = 0;
      memset(__b, 0, sizeof(__b));
      v6 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 2;
      }

      sub_100041968(v16, *(*(v10 + 208) + 8), **(v10 + 208), *(*(v10 + 208) + 8));
      _os_log_send_and_compose_impl(v6, &v7, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: unsupported signature oid: oid = %.*P, len = %lu", v16, 28);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000416E8);
    }

    v11 = 16;
  }

  v8 = *(v10 + 160);
  Context = CTImg4CreateContext(*v8, *(v8 + 8), v11, 0, v14 + 112);
  if (Context)
  {
    v12 = 103;
    v5 = *v14;
    if (!*v14)
    {
      v5 = "[anonymous]";
    }

    v4 = *__error();
    v3 = *(v14 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100009E38(v15, v5, Context, v12);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse root: %#x: %{darwin.errno}d", v15, 0x18u);
    }

    *__error() = v4;
  }

  else
  {
    *(v14 + 32) = *(v14 + 112);
    *(v14 + 152) = v14;
    *(v14 + 160) = v14 + 112;
    *(v14 + 24) = v10;
    *v13 = 0;
    return 0;
  }

  return v12;
}

uint64_t sub_100041968(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 16;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 48;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_1000419D8(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -1;
  if (*(a1 + 40))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100041A50);
  }

  *(v7 + 176) = v6;
  memcpy((v7 + 56), *(v7 + 32), 0x38uLL);
  *(v7 + 80) = sub_100041C68;
  *(v7 + 40) = v7 + 56;
  v10 = &qword_100084C78;
  v9 = 0;
  v8 = sub_100041FAC;
  if (qword_100084C78 != -1)
  {
    dispatch_once_f(v10, v9, v8);
  }

  v5 = pthread_setspecific(qword_100084C80, *(v7 + 168));
  if (v5)
  {
    v4 = 0;
    memset(__b, 0, sizeof(__b));
    v3 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = 2;
    }

    sub_1000013C8(v11, v5);
    _os_log_send_and_compose_impl(v3, &v4, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: failed to set thread-specific key: %{darwin.errno}d", v11, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100041C00);
  }

  if (!*(v7 + 160))
  {
    *(v7 + 152) = v7;
  }

  return *(v7 + 40);
}

uint64_t sub_100041C68(uint64_t a1)
{
  v13 = sub_100042324();
  v12 = (*(*(v13 + 32) + 24))(a1, 0);
  if (v12)
  {
    if (v12 == 1)
    {
      v11 = *v13;
      if (!*v13)
      {
        v11 = "[anonymous]";
      }

      v10 = *__error();
      v9 = *(v13 + 16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v17, v11);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: certificate evaluation returned DR_EndOfSequence", v17, 0xCu);
      }

      *__error() = v10;
      v12 = 5;
    }

    v8 = *v13;
    if (!*v13)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    oslog = *(v13 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v1 = sub_10004C9DC(v12);
      sub_100042384(v16, v8, v12, v1);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: manifest violates certificate constraints: [%d: %s]", v16, 0x1Cu);
    }

    *__error() = v7;
  }

  else
  {
    v5 = *v13;
    if (!*v13)
    {
      v5 = "[anonymous]";
    }

    v4 = *__error();
    v3 = *(v13 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v15, v5);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: manifest satisfies certificate constraints", v15, 0xCu);
    }

    *__error() = v4;
  }

  return v12;
}

uint64_t sub_100041FAC(uint64_t a1)
{
  v5 = a1;
  result = pthread_key_create(&qword_100084C80, 0);
  v4 = result;
  if (result)
  {
    v3 = 0;
    memset(__b, 0, sizeof(__b));
    v2 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v2 = 2;
    }

    sub_1000013C8(v6, v4);
    _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: failed to create thread-local storage: %{darwin.errno}d", v6, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000420F8);
  }

  return result;
}

uint64_t sub_10004212C(uint64_t result, uint64_t a2)
{
  v6 = result;
  v5 = a2;
  v4 = -1;
  if (a2)
  {
    if (v5 != *(v6 + 40))
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10004219CLL);
    }

    *(v6 + 176) = 0;
    *(v6 + 40) = 0;
    result = pthread_setspecific(qword_100084C80, 0);
    v4 = result;
    if (result)
    {
      v3 = 0;
      memset(__b, 0, sizeof(__b));
      v2 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v2 = 2;
      }

      sub_1000013C8(v7, v4);
      _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: failed to clear thread-specific key: %{darwin.errno}d", v7, 8);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000422D4);
    }
  }

  return result;
}

uint64_t sub_100042324()
{
  v1 = pthread_getspecific(qword_100084C80);
  if (!v1)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100042368);
  }

  return v1[5];
}

uint64_t sub_100042384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

__n128 *sub_1000423F4(__n128 *a1, unint64_t a2)
{
  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x8709206FuLL);
  v13 = "known-constant allocation";
  v12 = v6;
  v11 = 104;
  if (!v6)
  {
    v10 = 0;
    memset(__b, 0, sizeof(__b));
    v9 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 2;
    }

    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v14, v13, v11, v3);
    _os_log_send_and_compose_impl(v9, &v10, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v14, 32, v5);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000425A8);
  }

  v6[1].n128_u64[1] = a2;
  sub_10004C42C(v6 + 2, a1);
  v6[5].n128_u64[1] = v6[2].n128_u64;
  sub_1000496F4(v6, "com.apple.security.cryptexctl", "mach-fat");
  return v6;
}

uint64_t sub_10004263C(uint64_t a1)
{
  v19 = a1;
  v18 = -1;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v17 = sub_10004C5C0(*(a1 + 88), "rb", 0);
  v16 = fread(&v15, 8uLL, 1uLL, v17);
  v18 = sub_10004887C("mach fat header", v17, v16, 0x58u, *(v19 + 16));
  if (v18)
  {
    goto LABEL_23;
  }

  LODWORD(v15) = sub_10000E154(v15);
  HIDWORD(v15) = sub_10000E154(HIDWORD(v15));
  v14 = *v19;
  if (!*v19)
  {
    v14 = "[anonymous]";
  }

  v13 = *__error();
  v12 = *(v19 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v23, v14, v15, SHIDWORD(v15));
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: initialized fat header:\n        magic = %#x\n        nfat = %d", v23, 0x18u);
  }

  *__error() = v13;
  if (v15 == -889275714)
  {
    goto LABEL_13;
  }

  if (v15 == -889275713)
  {
    v11 = *v19;
    if (!*v19)
    {
      v11 = "[anonymous]";
    }

    v10 = *__error();
    oslog = *(v19 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v22, v11);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: fat file uses 64-bit format", v22, 0xCu);
    }

    *__error() = v10;
    *(v19 + 24) |= 1uLL;
LABEL_13:
    v8 = *v19;
    if (!*v19)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    v6 = *(v19 + 16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v21, v8, SHIDWORD(v15));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: fat file has %u archs", v21, 0x12u);
    }

    *__error() = v7;
    *(v19 + 96) = v15;
    v18 = 0;
    goto LABEL_23;
  }

  v18 = 92;
  v5 = *v19;
  if (!*v19)
  {
    v5 = "[anonymous]";
  }

  v4 = *__error();
  v3 = *(v19 + 16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v20, v5, v15, v18);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: not a mach fat file: %#x: %{darwin.errno}d", v20, 0x18u);
  }

  *__error() = v4;
LABEL_23:
  v2 = v18;
  sub_100010FB4(&v17);
  return v2;
}

char *sub_100042B70(uint64_t a1, unint64_t a2)
{
  v58 = a1;
  v57 = a2;
  v56 = -1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  memset(__b, 0, sizeof(__b));
  __ptr = 0u;
  v51 = 0u;
  v49 = 0;
  v48 = -1;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = -1;
  if (*(v58 + 24))
  {
    v47 = 32;
  }

  else
  {
    v47 = 20;
  }

  if (v57 == *(v58 + 100))
  {
    v56 = 89;
  }

  else
  {
    if (v57 > *(v58 + 100))
    {
      v40 = 0;
      memset(v70, 0, sizeof(v70));
      v38 = 0;
      v37 = 3;
      v36 = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v37 &= ~1u;
      }

      if (v37)
      {
        sub_100003098(v69, v57);
        v34 = _os_log_send_and_compose_impl(v37, &v40, v70, 80, &_mh_execute_header, v36, type, "unexpected failure: architecture index out of bounds: %lu", v69);
        v38 = v34;
      }

      v33 = v38;
      v39 = v38;
      _os_crash_msg();
      __break(1u);
    }

    v54 = sub_10004C5C0(*(v58 + 88), "rb", 0);
    v41 = fseek(v54, 8, 0);
    v32 = v41;
    if (v41 == -1)
    {
      v31 = 0;
      memset(v68, 0, sizeof(v68));
      v29 = 0;
      v28 = 3;
      v27 = &_os_log_default;
      v26 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v28 &= ~1u;
      }

      if (v28)
      {
        v2 = __error();
        sub_1000013C8(v67, *v2);
        v25 = _os_log_send_and_compose_impl(v28, &v31, v68, 80, &_mh_execute_header, v27, v26, "assertion failure: ret -> %{errno}d", v67, 8);
        v29 = v25;
      }

      v24[1] = v29;
      v30 = v29;
      _os_crash_msg();
      __break(1u);
    }

    v49 = v57 * v47;
    if (v57 * v47 > 0x7FFFFFFFFFFFFFFFLL)
    {
      v24[0] = 0;
      memset(v66, 0, sizeof(v66));
      v23 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = 2;
      }

      sub_100003098(v65, v57);
      _os_log_send_and_compose_impl(v23, v24, v66, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bad architecture index: %lu", v65);
      _os_crash_msg();
      __break(1u);
    }

    v48 = v49;
    v41 = fseek(v54, v49, 1);
    if (v41)
    {
      v56 = *__error();
      v22 = *v58;
      if (!*v58)
      {
        v22 = "[anonymous]";
      }

      v21 = *__error();
      v20 = *(v58 + 16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v64, v22, v56);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: fseek: %{darwin.errno}d", v64, 0x12u);
      }

      *__error() = v21;
    }

    else
    {
      v53 = fread(&__ptr, v47, 1uLL, v54);
      v56 = sub_10004887C("arch", v54, v53, 0x58u, *(v58 + 16));
      if (!v56)
      {
        if (*(v58 + 24))
        {
          v3 = __ptr;
          LODWORD(__ptr) = sub_10000E154(__ptr);
          DWORD1(__ptr) = sub_10000E154(HIDWORD(v3));
          *(&__ptr + 1) = sub_100043A1C(*(&__ptr + 1));
          *&v51 = sub_100043A1C(v51);
          DWORD2(v51) = sub_10000E154(DWORD2(v51));
          v46 = *(&__ptr + 1);
          v44 = v51;
          v19 = *v58;
          if (!*v58)
          {
            v19 = "[anonymous]";
          }

          v18 = *__error();
          v17 = *(v58 + 16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_100043A34(v63, v19, v46, v44);
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: found slice: off = %llu, length = %llu", v63, 0x20u);
          }

          *__error() = v18;
        }

        else
        {
          v16 = DWORD1(__ptr);
          LODWORD(__ptr) = sub_10000E154(__ptr);
          DWORD1(__ptr) = sub_10000E154(v16);
          DWORD2(__ptr) = sub_10000E154(DWORD2(__ptr));
          HIDWORD(__ptr) = sub_10000E154(HIDWORD(__ptr));
          LODWORD(v51) = sub_10000E154(v51);
          v46 = DWORD2(__ptr);
          v44 = HIDWORD(__ptr);
          v15 = *v58;
          if (!*v58)
          {
            v15 = "[anonymous]";
          }

          v14 = *__error();
          oslog = *(v58 + 16);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_100043A34(v62, v15, v46, v44);
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: found slice: off = %llu, length = %llu", v62, 0x20u);
          }

          *__error() = v14;
        }

        v4 = __CFADD__(v46, v44);
        v43 = v46 + v44;
        v59 = v4;
        if (v4)
        {
          v56 = 84;
          v12 = *v58;
          if (!*v58)
          {
            v12 = "[anonymous]";
          }

          v11 = *__error();
          v10 = *(v58 + 16);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100011C90(v61, v12, v46, v44, v56);
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: slice offset and length are not addressable: off = %llu, len = %llu: %{darwin.errno}d", v61, 0x26u);
          }

          *__error() = v11;
        }

        else if (v43 > *(*(v58 + 88) + 8))
        {
          v56 = 84;
          v9 = *v58;
          if (!*v58)
          {
            v9 = "[anonymous]";
          }

          v8 = *__error();
          v7 = *(v58 + 16);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_100043A9C(v60, v9, v46, v44, *(*(v58 + 88) + 8), v56);
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: slice exceeds file length: off = %llu, len = %llu, file len = %lu: %{darwin.errno}d", v60, 0x30u);
          }

          *__error() = v8;
        }

        else
        {
          v42 = v44;
          v45 = v46;
          sub_10004C574(__b, *(v58 + 88), v46, v44);
          v55 = sub_10001C334(__b, 0);
        }
      }
    }
  }

  v6 = v55;
  sub_100010FB4(&v54);
  return v6;
}

uint64_t sub_100043A34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100043A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a6;
  return result;
}

void sub_100043B68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    sub_10004C66C(*(*a1 + 88), a2);
    sub_100049728(v2);
    free(v2);
    *a1 = 0;
  }
}

uint64_t sub_100043BD0(uint64_t a1)
{
  homedir = session_get_homedir();
  name = session_get_name();
  v4 = __stdoutp;
  count = xpc_array_get_count(*(*(a1 + 40) + 72));
  v1 = cryptex_session_state_to_string();
  return fprintf(v4, "%s | %zu | %s | %s \n", name, count, v1, homedir);
}

uint64_t sub_100043C78(uint64_t a1, int a2, char *const *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = -1;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[1]) = 1;
  __b[2] = 0;
  sub_1000480E0();
  while (1)
  {
    v9 = getopt_long(v13, v10, *(v14 + 32), *(v14 + 40), &v8);
    if (v9 == -1)
    {
      break;
    }

    v6 = v12[optind - 1];
    if (optind < 1)
    {
      v5 = 0;
      memset(v17, 0, sizeof(v17));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v16, optind);
      _os_log_send_and_compose_impl(v4, &v5, v17, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v16);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100043E54);
    }

    switch(v9)
    {
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'A':
        LOBYTE(__b[1]) = 0;
        break;
      case 'H':
        __b[0] |= 8uLL;
        break;
      case 'L':
        __b[6] = optarg;
        break;
      case 'N':
        __b[0] |= 0x20uLL;
        break;
      case 'S':
        __b[0] |= 4uLL;
        break;
      case 'V':
        __b[5] = optarg;
        break;
      case 'c':
        __b[3] = optarg;
        __b[0] |= 2uLL;
        break;
      case 'e':
        __b[7] = optarg;
        break;
      case 'l':
        __b[0] |= 0x10uLL;
        break;
      case 'n':
        __b[0] |= 1uLL;
        break;
      case 's':
        __b[4] = optarg;
        break;
      case 'z':
        __b[2] = strtoull(optarg, 0, 0);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100043FB0);
    }
  }

  v12 += optind;
  v13 -= optind;
  if (__b[0] != 1 && (__b[7] || __b[6]))
  {
    v11 = 22;
    warnx("Environment and Launchd Overrides are only applicable for sessioncreate. Exiting");
    return sysexit_np();
  }

  else
  {
    v11 = sub_100044178(__b);
    return sysexit_np();
  }
}

uint64_t sub_100044178(void *a1)
{
  v2 = -1;
  if ((*a1 & 0x10) != 0)
  {
    v2 = sub_100044260();
  }

  if ((*a1 & 8) != 0)
  {
    v2 = sub_1000442CC(a1);
  }

  if (*a1)
  {
    v2 = sub_100044408(a1);
  }

  if ((*a1 & 2) != 0)
  {
    v2 = sub_1000446A0(a1);
  }

  if ((*a1 & 4) != 0)
  {
    v2 = sub_1000447E4(a1);
  }

  if ((*a1 & 0x20) != 0)
  {
    warn("Lockdown flag can only be applied with the Start flag.");
  }

  return v2;
}

uint64_t sub_100044260()
{
  fprintf(__stdoutp, "ID | Cryptex Count | State | Home Directory\n");
  v1 = session_iter_list();
  if (v1)
  {
    warnc(v1, "Failed session iteration for list_invoke");
  }

  return v1;
}

uint64_t sub_1000442CC(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  v4 = 0;
  group = dispatch_group_create();
  if (group)
  {
    dispatch_group_enter(group);
  }

  if (*(v6 + 32))
  {
    v4 = sub_100026694(*(v6 + 32));
    if (v4)
    {
      v5 = sub_1000449F4(v4, 16, group);
      if (v5)
      {
        warnc(v5, "Failed to register handler");
      }

      else
      {
        v5 = session_stop();
        if (v5)
        {
          warn("Failed to stop the session");
          dispatch_group_leave(group);
        }

        else
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        }
      }
    }

    else
    {
      warn("Session %s not found", *(v6 + 32));
      v5 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v5 = 22;
  }

  v2 = v5;
  sub_1000030D0(&v4);
  return v2;
}

uint64_t sub_100044408(uint64_t a1)
{
  v18 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0;
  v16 = 32;
  v17 = 0;
  v12[1] = ((*(a1 + 8) & 1) == 0);
  v12[0] = session_create();
  v11 = 0;
  v10 = 0;
  *(v18 + 32) = cryptex_session_core_copy_name();
  if (!*(v18 + 48) || (v11 = sub_100044B74(*(v18 + 48), v14 + 6), applier = _NSConcreteStackBlock, v4 = 0x40000000, v5 = 0, v6 = sub_100044CB8, v7 = &unk_10007E4B0, v8 = &v13, v9 = v12[0], xpc_dictionary_apply(v11, &applier), !v14[6]))
  {
    if (*(v18 + 56))
    {
      v10 = sub_100044B74(*(v18 + 56), v14 + 6);
      if (v14[6])
      {
        warnc(v14[6], "create_xpc_object_from_plist_path returned an error");
        goto LABEL_14;
      }

      v14[6] = session_add_session_environment();
      if (v14[6])
      {
        warnc(v14[6], "session_add_session_environment returned an error");
        goto LABEL_14;
      }
    }

    if (*(v18 + 16) && (v14[6] = session_set_homedir_size()) != 0)
    {
      warnc(v14[6], "session_set_homedir_size returned an error");
    }

    else
    {
      v14[6] = session_activate();
      if (v14[6])
      {
        warnc(v14[6], "Activation error");
      }

      else
      {
        sub_100043BD0(v12[0]);
      }
    }
  }

LABEL_14:
  v2 = v14[6];
  sub_1000030D0(&v10);
  sub_1000030D0(&v11);
  sub_1000030D0(v12);
  _Block_object_dispose(&v13, 8);
  return v2;
}

uint64_t sub_1000446A0(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  v5 = strdup(*(a1 + 24));
  v4 = 0;
  if (*(v8 + 40))
  {
    v4 = strdup(*(v8 + 40));
  }

  if (*(v8 + 32))
  {
    v6 = sub_100026694(*(v8 + 32));
    if (v6)
    {
      name = session_get_name();
      warnx("Found session %s", name);
      v7 = session_add_cryptex();
      if (v7)
      {
        warnc(v7, "Cryptex Add Error");
      }

      free(v5);
    }

    else
    {
      warn("Session %s not found", *(v8 + 32));
      v7 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v7 = 22;
  }

  v3 = v7;
  sub_100002DE4(&v4);
  sub_1000030D0(&v6);
  return v3;
}

uint64_t sub_1000447E4(void *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = 0;
  group = dispatch_group_create();
  if (group)
  {
    dispatch_group_enter(group);
  }

  if (v7[4])
  {
    v5 = sub_100026694(v7[4]);
    if (v5)
    {
      v6 = sub_1000449F4(v5, 4, group);
      if (v6)
      {
        dispatch_group_leave(group);
        warnc(v6, "Failed to register handler");
      }

      else if ((*v7 & 0x20) != 0 && (v6 = cryptex_lockdown(), *v7 &= ~0x20uLL, v6))
      {
        warnc(v6, "Failed to lockdown");
      }

      else
      {
        name = session_get_name();
        warnx("Starting session %s valid conn %d", name, v5[10] != 0);
        v6 = session_start();
        if (v6)
        {
          dispatch_group_leave(group);
          warnc(v6, "Failed to start session");
        }

        else
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        }
      }
    }

    else
    {
      dispatch_group_leave(group);
      warn("Session %s not found", v7[4]);
      v6 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v6 = 22;
    dispatch_group_leave(group);
  }

  v3 = v6;
  sub_1000030D0(&v5);
  return v3;
}

uint64_t sub_1000449F4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = session_set_event_handler();
  if (v4)
  {
    warnc(v4, "Failed to register event handler for session");
    dispatch_group_leave(a3);
  }

  return v4;
}

void sub_100044AC8(uint64_t a1, uint64_t a2)
{
  name = session_get_name();
  v3 = __stdoutp;
  v2 = cryptex_session_event_to_string();
  fprintf(v3, "Session %s received %s event\n", name, v2);
  if (a2 == *(a1 + 40))
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

uint64_t sub_100044B74(const char *a1, int *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  memset(__b, 0, sizeof(__b));
  v7 = open(v11, 0);
  v12 = v7;
  if (v7 < 0)
  {
    v2 = __error();
    v6 = *v2;
    warnc(*v2, "Could not open file at %s.", v11);
  }

  else
  {
    v6 = sub_10004B524(v7, __b);
    if (v6)
    {
      warnc(v6, "Unable to read plist: %s", v11);
    }

    else
    {
      v9 = xpc_create_from_plist();
      if (!v9)
      {
        v6 = 212;
        warnc(212, "Failed to parse plist: %s", v11);
      }
    }
  }

  sub_10004C66C(__b, v3);
  *v10 = v6;
  v5 = v9;
  sub_1000038DC(&v7);
  return v5;
}

uint64_t sub_100044CB8(uint64_t a1, const char *a2, void *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a1;
  type = xpc_get_type(a3);
  if (type == &_xpc_type_dictionary)
  {
    applier = _NSConcreteStackBlock;
    v6 = 0x40000000;
    v7 = 0;
    v8 = sub_100044DEC;
    v9 = &unk_10007E488;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v16;
    xpc_dictionary_apply(v15, &applier);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 22;
    warnc(*(*(*(a1 + 32) + 8) + 24), "Job overrides plist is expected to be a dictionary of dictionaries, with the following format:\n\n{ job_A => {overrides_A}, job_B => {overrides_B}}\nEncountered unexpected type for %s", v16);
  }

  return 1;
}

uint64_t sub_100044DEC(void *a1, const char *a2, uint64_t a3)
{
  *(*(a1[4] + 8) + 24) = session_add_job_override();
  if (*(*(a1[4] + 8) + 24))
  {
    warnc(*(*(a1[4] + 8) + 24), "Unable to add %s override to %s job", a2, a1[6]);
  }

  return 1;
}

CFErrorRef sub_100044EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  obj = a4;
  v89 = a1;
  v88 = a2;
  v87 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v85 = 0;
  v44 = objc_opt_class();
  v84 = v44;
  if (v44 && (v43 = [v84 instancesRespondToSelector:"initWithFolder:volumeName:format:"], (v43 & 1) != 0))
  {
    v32 = [NSURL alloc];
    v31 = [NSString alloc];
    v30 = [v31 initWithUTF8String:v89];
    v29 = [v32 initFileURLWithPath:v30];
    v67 = v29;

    v28 = [NSURL alloc];
    v27 = [NSString alloc];
    v26 = [v27 initWithUTF8String:v88];
    v25 = [v28 initFileURLWithPath:v26];
    v66 = v25;

    v24 = [SKDiskImageCreateParams alloc];
    v23 = v29;
    v63 = 0;
    if (v87)
    {
      v22 = [NSString alloc];
      v21 = [v22 initWithUTF8String:v87];
      v64 = v21;
      v63 = 1;
      v20 = v21;
    }

    else
    {
      v20 = 0;
    }

    v19 = [v24 initWithFolder:v23 volumeName:v20 format:4];
    v65 = v19;
    if (v63 == 1)
    {
    }

    if (v65)
    {
      v8 = objc_autoreleasePoolPush();
      v47 = 0;
      v46 = 0;
      v7 = [SKDiskImage diskImageWithURL:v66 params:v65 error:&v46];
      v6 = v7;
      objc_storeStrong(&v47, v46);
      v5 = v6 == 0;

      if (!v6)
      {
        objc_storeStrong(&v85, v47);
      }

      objc_storeStrong(&v47, 0);
      objc_autoreleasePoolPop(v8);
      v90 = v85;
      v68 = 1;
    }

    else
    {
      v62 = 0;
      v61 = -1;
      if (location)
      {
        v60 = 0;
        v59 = 3;
        v58 = location;
        v57 = 16;
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 &= ~1u;
        }

        if (v59)
        {
          v16 = v59;
          v17 = v58;
          v18 = v57;
          v15 = v92;
          sub_100009EA4(v92, v88, -1);
          v56 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &_mh_execute_header, v58, v57, "failed to create image params for dmg '%s' %{darwin.errno}d", v92, 18);
          v60 = v56;
        }

        v55 = v60;
        objc_storeStrong(&v58, 0);
        v62 = v55;
      }

      else
      {
        v54 = 0;
        v53 = 2;
        v52 = &_os_log_default;
        v51 = 16;
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 &= ~1u;
        }

        if (v53)
        {
          v12 = v53;
          v13 = v52;
          v14 = v51;
          v11 = v91;
          sub_100009EA4(v91, v88, -1);
          v50 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, v52, v51, "failed to create image params for dmg '%s' %{darwin.errno}d", v91, 18);
          v54 = v50;
        }

        v49 = v54;
        objc_storeStrong(&v52, 0);
        v62 = v49;
      }

      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
      {
        v10 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
      }

      v9 = sub_1000185D8("hdi_create_dmg_from_directory", v10, 42, "com.apple.security.cryptex.posix", v61, 0, v62);
      v48 = v9;
      sub_100002DE4(&v62);
      v90 = v48;
      v68 = 1;
    }

    objc_storeStrong(&v65, 0);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    v83 = 0;
    v82 = 45;
    if (location)
    {
      v81 = 0;
      v80 = 3;
      v79 = location;
      v78 = 16;
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v80 &= ~1u;
      }

      if (v80)
      {
        v40 = v80;
        v41 = v79;
        v42 = v78;
        v39 = v94;
        sub_1000013C8(v94, 45);
        v77 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &_mh_execute_header, v79, v78, "dmg creation from directory is not supported on this version of the OS %{darwin.errno}d", v94, 8);
        v81 = v77;
      }

      v76 = v81;
      objc_storeStrong(&v79, 0);
      v83 = v76;
    }

    else
    {
      v75 = 0;
      v74 = 2;
      v73 = &_os_log_default;
      v72 = 16;
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 &= ~1u;
      }

      if (v74)
      {
        v36 = v74;
        v37 = v73;
        v38 = v72;
        v35 = v93;
        sub_1000013C8(v93, 45);
        v71 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &_mh_execute_header, v73, v72, "dmg creation from directory is not supported on this version of the OS %{darwin.errno}d", v93, 8);
        v75 = v71;
      }

      v70 = v75;
      objc_storeStrong(&v73, 0);
      v83 = v70;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v34 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v33 = sub_1000185D8("hdi_create_dmg_from_directory", v34, 26, "com.apple.security.cryptex.posix", v82, 0, v83);
    v69 = v33;
    sub_100002DE4(&v83);
    v90 = v69;
    v68 = 1;
  }

  objc_storeStrong(&v85, 0);
  objc_storeStrong(&location, 0);
  return v90;
}

void sub_1000459B4(uint64_t a1, int a2)
{
  *(v2 + 8) = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 16) = *(v2 + 8);
  _Unwind_Resume(*(v2 + 16));
}

id sub_1000459E4(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  *&v41[8] = 0;
  v16 = [NSURL alloc];
  v17 = [[NSString alloc] initWithUTF8String:v45];
  v40 = [v16 initFileURLWithPath:?];
  _objc_release(v17);
  v18 = [NSURL alloc];
  v19 = [[NSString alloc] initWithUTF8String:v44];
  v39 = [v18 initFileURLWithPath:?];
  _objc_release(v19);
  v20 = [NSURL alloc];
  v21 = [[NSString alloc] initWithUTF8String:v43];
  v38 = [v20 initFileURLWithPath:?];
  _objc_release(v21);
  v37 = 0;
  v36 = mkstemp("shadow.XXXXXX");
  bzero(v49, 0x400uLL);
  *v41 = realpath_np();
  v35 = *v41;
  if (*v41)
  {
    v34[0] = 0;
    memset(__b, 0, sizeof(__b));
    v32 = 0;
    v31 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v31 &= ~1u;
    }

    if (v31)
    {
      sub_100003098(v47, v35);
      v28 = _os_log_send_and_compose_impl(v31, v34, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: perror -> %llu", v47);
      v32 = v28;
    }

    v27 = v32;
    objc_storeStrong(&oslog, 0);
    v33 = v27;
    _os_crash_msg();
    __break(1u);
  }

  v12 = [NSURL alloc];
  v13 = [[NSString alloc] initWithUTF8String:v49];
  v4 = [v12 initFileURLWithPath:?];
  v5 = v37;
  v37 = v4;
  _objc_release(v5);
  _objc_release(v13);
  context = objc_autoreleasePoolPush();
  v26 = 0;
  obja = 0;
  v15 = sub_100045FCC(v40, v39, v38, location, v37, &obja);
  objc_storeStrong(&v26, obja);
  if ((v15 & 1) == 0)
  {
    objc_storeStrong(&v41[4], v26);
  }

  v10 = +[NSFileManager defaultManager];
  v24 = v26;
  v11 = [(NSFileManager *)v10 removeItemAtURL:v37 error:&v24];
  objc_storeStrong(&v26, v24);
  _objc_release(v10);
  if (v11)
  {
    if (!*&v41[4])
    {
      objc_storeStrong(&v41[4], v26);
    }

    v23 = *__error();
    v22 = location;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v9 = [v37 path];
      sub_10000DC04(v46, v9, v26);
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to remove shadow file '%@': %@", v46, 0x16u);
      _objc_release(v9);
    }

    objc_storeStrong(&v22, 0);
    v8 = v23;
    *__error() = v8;
  }

  objc_storeStrong(&v26, 0);
  objc_autoreleasePoolPop(context);
  v7 = *&v41[4];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41[4], 0);
  objc_storeStrong(&location, 0);
  return v7;
}

uint64_t sub_100045FCC(id obj, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v228 = v246;
  v229 = a6;
  v230 = a5;
  v231 = a4;
  v232 = a3;
  v233 = a2;
  v293 = 0;
  objc_storeStrong(&v293, obj);
  v292 = 0;
  objc_storeStrong(&v292, v233);
  v291 = 0;
  objc_storeStrong(&v291, v232);
  v290 = 0;
  objc_storeStrong(&v290, v231);
  v289 = 0;
  objc_storeStrong(&v289, v230);
  v288[1] = v229;
  v288[0] = 0;
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v284 = 0;
  v227 = +[SKManager sharedManager];
  v283 = v227;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v226 = [DIAttachParams alloc];
  v224 = v293;
  v309 = v289;
  v225 = [NSArray arrayWithObjects:&v309 count:1];
  v222 = v225;
  v277 = v288[0];
  v223 = [v226 initWithURL:v224 shadowURLs:v222 error:&v277];
  objc_storeStrong(v288, v277);
  v6 = v285;
  v285 = v223;

  if (!v285)
  {
    v221 = __error();
    v7 = v228;
    *(v228 + 153) = *v221;
    v8 = v7[91];
    v9 = v228;
    v228[75] = v8;
    v275 = 16;
    if (os_log_type_enabled(v9[75], OS_LOG_TYPE_ERROR))
    {
      v217 = v228[75];
      v218 = v275;
      v219 = v308;
      v220 = [v228[94] path];
      v216 = v220;
      sub_10000DC04(v308, v216, v228[88]);
      _os_log_impl(&_mh_execute_header, v217, v218, "failed to create attach params for dmg '%@': %@", v308, 0x16u);
    }

    objc_storeStrong(&v276, 0);
    v214 = *(v228 + 153);
    v215 = __error();
    *v215 = v214;
    goto LABEL_87;
  }

  [v228[85] setAutoMount:0];
  [v228[85] setFileMode:3];
  v10 = v228[85];
  v228[73] = v228[88];
  v213 = [DiskImages2 managedAttachWithParams:v10 handle:&v284 error:&v274];
  objc_storeStrong(v288, v228[73]);
  if ((v213 & 1) == 0)
  {
    v212 = __error();
    v11 = v228;
    *(v228 + 145) = *v212;
    v12 = v11[91];
    v13 = v228;
    v228[71] = v12;
    v272 = 16;
    if (os_log_type_enabled(v13[71], OS_LOG_TYPE_ERROR))
    {
      v208 = v228[71];
      v209 = v272;
      v210 = v307;
      v211 = [v228[94] path];
      v207 = v211;
      sub_10000DC04(v307, v207, v228[88]);
      _os_log_impl(&_mh_execute_header, v208, v209, "failed to attach dmg '%@': %@", v307, 0x16u);
    }

    objc_storeStrong(&v273, 0);
    v205 = *(v228 + 145);
    v206 = __error();
    *v206 = v205;
    goto LABEL_87;
  }

  v203 = v228[83];
  v204 = [v228[84] BSDName];
  v201 = v204;
  v202 = [v203 diskForString:?];
  v14 = v202;
  v15 = v228[82];
  v228[82] = v14;

  if (!v228[82])
  {
    v16 = v228;
    v228[69] = 0;
    v16[68] = -1;
    if (v228[91])
    {
      v17 = v228;
      v228[67] = 0;
      *(v17 + 133) = 3;
      v18 = v17[91];
      v19 = v228;
      v228[65] = v18;
      v269 = 16;
      if (!os_log_type_enabled(v19[65], OS_LOG_TYPE_ERROR))
      {
        *(v228 + 133) &= ~1u;
      }

      if (*(v228 + 133))
      {
        v196 = *(v228 + 133);
        v197 = v228[65];
        v198 = v269;
        v199 = v306;
        v200 = [v228[94] path];
        v194 = v200;
        sub_100048030(v306, v194, -1);
        v195 = _os_log_send_and_compose_impl(v196, 0, 0, 0, &_mh_execute_header, v197, v198, "failed to resolve disk for dmg '%@' %{darwin.errno}d", v306, 18);

        v20 = v228;
        v228[63] = v195;
        v20[67] = v20[63];
      }

      v228[60] = v228[67];
      objc_storeStrong(&v270, 0);
      v228[69] = v228[60];
    }

    else
    {
      v21 = v228;
      v228[59] = 0;
      *(v21 + 117) = 2;
      v22 = &_os_log_default;
      v23 = v228;
      v228[57] = v22;
      v267 = 16;
      if (!os_log_type_enabled(v23[57], OS_LOG_TYPE_ERROR))
      {
        *(v228 + 117) &= ~1u;
      }

      if (*(v228 + 117))
      {
        v189 = *(v228 + 117);
        v190 = v228[57];
        v191 = v267;
        v192 = v305;
        v193 = [v228[94] path];
        v187 = v193;
        sub_100048030(v305, v187, -1);
        v188 = _os_log_send_and_compose_impl(v189, 0, 0, 0, &_mh_execute_header, v190, v191, "failed to resolve disk for dmg '%@' %{darwin.errno}d", v305, 18);

        v24 = v228;
        v228[55] = v188;
        v24[59] = v24[55];
      }

      v228[54] = v228[59];
      objc_storeStrong(&v268, 0);
      v228[69] = v228[54];
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v186 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v186 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v185 = sub_1000185D8("_hdi_create_dmg_applying_root", v186, 108, "com.apple.security.cryptex.posix", v228[68], 0, v228[69]);
    v228[48] = v185;
    sub_100002DE4(&v271);
    v25 = v228[88];
    v228[88] = v228[48];

    goto LABEL_87;
  }

  v26 = v228[82];
  v228[47] = v228[88];
  v184 = [v26 mountWithOptionsDictionary:0 error:&v266];
  objc_storeStrong(v288, v228[47]);
  if ((v184 & 1) == 0)
  {
    v183 = __error();
    v27 = v228;
    *(v228 + 93) = *v183;
    v28 = v27[91];
    v29 = v228;
    v228[45] = v28;
    v264 = 16;
    if (os_log_type_enabled(v29[45], OS_LOG_TYPE_ERROR))
    {
      v179 = v228[45];
      v180 = v264;
      v181 = v304;
      v182 = [v228[94] path];
      v178 = v182;
      sub_10000DC04(v304, v178, v228[88]);
      _os_log_impl(&_mh_execute_header, v179, v180, "failed to mount dmg '%@': %@", v304, 0x16u);
    }

    objc_storeStrong(&v265, 0);
    v176 = *(v228 + 93);
    v177 = __error();
    *v177 = v176;
    goto LABEL_87;
  }

  v175 = [v228[82] mountPoint];
  v30 = v175;
  v31 = v228[81];
  v228[81] = v30;

  v32 = v228[81];
  v263 = 0;
  if (v32)
  {
    v174 = [NSURL alloc];
    v173 = [v174 initWithString:v228[81]];
    v33 = v173;
    v228[43] = v173;
    v263 = 1;
    v172 = v33;
  }

  else
  {
    v172 = 0;
  }

  objc_storeStrong(&v280, v172);
  if (v263 == 1)
  {
  }

  if (!v228[80])
  {
    v34 = v228;
    v228[41] = 0;
    v34[40] = -1;
    if (v228[91])
    {
      v35 = v228;
      v228[39] = 0;
      *(v35 + 77) = 3;
      v36 = v35[91];
      v37 = v228;
      v228[37] = v36;
      v260 = 16;
      if (!os_log_type_enabled(v37[37], OS_LOG_TYPE_ERROR))
      {
        *(v228 + 77) &= ~1u;
      }

      if (*(v228 + 77))
      {
        v167 = *(v228 + 77);
        v168 = v228[37];
        v169 = v260;
        v170 = v303;
        v171 = [v228[94] path];
        v165 = v171;
        sub_100048030(v303, v165, -1);
        v166 = _os_log_send_and_compose_impl(v167, 0, 0, 0, &_mh_execute_header, v168, v169, "failed to retrieve mountpoint for '%@' %{darwin.errno}d", v303, 18);

        v38 = v228;
        v228[35] = v166;
        v38[39] = v38[35];
      }

      v228[34] = v228[39];
      objc_storeStrong(&v261, 0);
      v228[41] = v228[34];
    }

    else
    {
      v39 = v228;
      v228[33] = 0;
      *(v39 + 65) = 2;
      v40 = &_os_log_default;
      v41 = v228;
      v228[31] = v40;
      v258 = 16;
      if (!os_log_type_enabled(v41[31], OS_LOG_TYPE_ERROR))
      {
        *(v228 + 65) &= ~1u;
      }

      if (*(v228 + 65))
      {
        v160 = *(v228 + 65);
        v161 = v228[31];
        v162 = v258;
        v163 = v302;
        v164 = [v228[94] path];
        v158 = v164;
        sub_100048030(v302, v158, -1);
        v159 = _os_log_send_and_compose_impl(v160, 0, 0, 0, &_mh_execute_header, v161, v162, "failed to retrieve mountpoint for '%@' %{darwin.errno}d", v302, 18);

        v42 = v228;
        v228[29] = v159;
        v42[33] = v42[29];
      }

      v228[28] = v228[33];
      objc_storeStrong(&v259, 0);
      v228[41] = v228[28];
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v157 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v157 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v156 = sub_1000185D8("_hdi_create_dmg_applying_root", v157, 122, "com.apple.security.cryptex.posix", v228[40], 0, v228[41]);
    v228[22] = v156;
    sub_100002DE4(&v262);
    v43 = v228[88];
    v228[88] = v228[22];

LABEL_83:
    v73 = v228[82];
    v237 = v228[86];
    v87 = [v73 unmountWithOptions:0 error:&v237];
    objc_storeStrong(&v286, v237);
    if ((v87 & 1) == 0)
    {
      v86 = __error();
      v236 = *v86;
      v235 = v228[91];
      v234 = 16;
      if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
      {
        v82 = v235;
        v83 = v234;
        v84 = &v294;
        v85 = [v228[94] path];
        v81 = v85;
        sub_10000DC04(v84, v81, v228[86]);
        _os_log_impl(&_mh_execute_header, v82, v83, "failed to unmount dmg '%@': %@", v84, 0x16u);
      }

      objc_storeStrong(&v235, 0);
      v79 = v236;
      v80 = __error();
      *v80 = v79;
    }

    goto LABEL_87;
  }

  v155 = [v228[93] path];
  v153 = v155;
  v152 = v153;
  v44 = v153;
  v154 = v153;
  v151 = [v153 UTF8String];
  v150 = [v228[80] path];
  v148 = v150;
  v147 = v148;
  v45 = v148;
  v149 = v148;
  v146 = [v148 UTF8String];
  v145 = sub_10003E3F8(v151, v146, v228[91]);
  v46 = v228[88];
  v228[88] = v145;

  if (v228[88])
  {
    v144 = __error();
    v47 = v228;
    *(v228 + 43) = *v144;
    v48 = v47[91];
    v49 = v228;
    v228[20] = v48;
    v256 = 16;
    if (os_log_type_enabled(v49[20], OS_LOG_TYPE_ERROR))
    {
      v140 = v228[20];
      v141 = v256;
      v142 = v301;
      v143 = [v228[94] path];
      v139 = v143;
      sub_10000DC04(v301, v139, v228[88]);
      _os_log_impl(&_mh_execute_header, v140, v141, "failed to overlay root on dmg '%@': %@", v301, 0x16u);
    }

    objc_storeStrong(&v257, 0);
    v137 = *(v228 + 43);
    v138 = __error();
    *v138 = v137;
    goto LABEL_83;
  }

  v50 = v228[82];
  v228[18] = v228[88];
  v136 = [v50 unmountWithOptions:0 error:&v255];
  objc_storeStrong(v288, v228[18]);
  if (v136)
  {
    v127 = [SKDiskImage alloc];
    v54 = v127;
    v55 = v228[94];
    v228[14] = v228[88];
    v126 = [v54 initWithURL:v55 error:&v252];
    objc_storeStrong(v288, v228[14]);
    v56 = v228[79];
    v228[79] = v126;

    if (v228[79])
    {
      v117 = [SKDiskImageCreateParams alloc];
      v115 = v228[79];
      v228[108] = v228[90];
      v116 = [NSArray arrayWithObjects:&v298 count:1];
      v113 = v116;
      v114 = [v117 initWithDiskImage:v115 format:4 shadowURLs:?];
      v60 = v228[78];
      v228[78] = v114;

      if (v228[78])
      {
        v70 = v228[92];
        v71 = v228[78];
        v241 = v228[88];
        v96 = [SKDiskImage diskImageWithURL:v70 params:v71 error:&v241];
        v95 = v96;
        objc_storeStrong(v288, v241);
        v94 = v95 == 0;

        if (v95)
        {
          v287 = 1;
        }

        else
        {
          v93 = __error();
          v240 = *v93;
          v239 = v228[91];
          v238 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
          {
            v90 = v239;
            v91 = v238;
            v72 = v228[88];
            v92 = v295;
            sub_10000ACC8(v295, v72);
            _os_log_impl(&_mh_execute_header, v239, v238, "failed to create disk image with applied root: %@", v295, 0xCu);
          }

          objc_storeStrong(&v239, 0);
          v88 = v240;
          v89 = __error();
          *v89 = v88;
        }
      }

      else
      {
        v61 = v228;
        v228[10] = 0;
        v61[9] = -1;
        if (v228[91])
        {
          v62 = v228;
          v228[8] = 0;
          *(v62 + 15) = 3;
          v63 = v62[91];
          v64 = v228;
          v228[6] = v63;
          v247 = 16;
          if (!os_log_type_enabled(v64[6], OS_LOG_TYPE_ERROR))
          {
            *(v228 + 15) &= ~1u;
          }

          if (*(v228 + 15))
          {
            v108 = *(v228 + 15);
            v109 = v228[6];
            v110 = v247;
            v111 = v297;
            v112 = [v228[94] path];
            v106 = v112;
            sub_100048030(v297, v106, -1);
            v107 = _os_log_send_and_compose_impl(v108, 0, 0, 0, &_mh_execute_header, v109, v110, "failed to create image params for dmg '%@' %{darwin.errno}d", v297, 18);

            v65 = v228;
            v228[4] = v107;
            v65[8] = v65[4];
          }

          v228[3] = v228[8];
          objc_storeStrong(&v248, 0);
          v228[10] = v228[3];
        }

        else
        {
          v66 = v228;
          v228[2] = 0;
          *(v66 + 3) = 2;
          v67 = &_os_log_default;
          v68 = v228;
          *v228 = v67;
          v245 = 16;
          if (!os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
          {
            *(v228 + 3) &= ~1u;
          }

          if (*(v228 + 3))
          {
            v101 = *(v228 + 3);
            v102 = *v228;
            v103 = v245;
            v104 = v296;
            v105 = [v228[94] path];
            v99 = v105;
            sub_100048030(v296, v99, -1);
            v100 = _os_log_send_and_compose_impl(v101, 0, 0, 0, &_mh_execute_header, v102, v245, "failed to create image params for dmg '%@' %{darwin.errno}d", v296, 18);

            v244 = v100;
            v228[2] = v100;
          }

          v243 = v228[2];
          objc_storeStrong(v246, 0);
          v228[10] = v243;
        }

        if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
        {
          v98 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
        }

        else
        {
          v98 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
        }

        v97 = sub_1000185D8("_hdi_create_dmg_applying_root", v98, 153, "com.apple.security.cryptex.posix", v228[9], 0, v228[10]);
        v242 = v97;
        sub_100002DE4(&v249);
        v69 = v228[88];
        v228[88] = v242;
      }
    }

    else
    {
      v125 = __error();
      v57 = v228;
      *(v228 + 27) = *v125;
      v58 = v57[91];
      v59 = v228;
      v228[12] = v58;
      v250 = 16;
      if (os_log_type_enabled(v59[12], OS_LOG_TYPE_ERROR))
      {
        v121 = v228[12];
        v122 = v250;
        v123 = v299;
        v124 = [v228[94] path];
        v120 = v124;
        sub_10000DC04(v299, v120, v228[88]);
        _os_log_impl(&_mh_execute_header, v121, v122, "failed to initialize disk image object for '%@': %@", v299, 0x16u);
      }

      objc_storeStrong(&v251, 0);
      v118 = *(v228 + 27);
      v119 = __error();
      *v119 = v118;
    }
  }

  else
  {
    v135 = __error();
    v51 = v228;
    *(v228 + 35) = *v135;
    v52 = v51[91];
    v53 = v228;
    v228[16] = v52;
    v253 = 16;
    if (os_log_type_enabled(v53[16], OS_LOG_TYPE_ERROR))
    {
      v131 = v228[16];
      v132 = v253;
      v133 = v300;
      v134 = [v228[94] path];
      v130 = v134;
      sub_10000DC04(v300, v130, v228[88]);
      _os_log_impl(&_mh_execute_header, v131, v132, "failed to unmount dmg '%@': %@", v300, 0x16u);
    }

    objc_storeStrong(&v254, 0);
    v128 = *(v228 + 35);
    v129 = __error();
    *v129 = v128;
  }

LABEL_87:
  if (v228[89])
  {
    v77 = v228[88];
    v74 = v77;
    v78 = v77;
    *v228[89] = v77;
  }

  v76 = v287;
  objc_storeStrong(&v278, 0);
  objc_storeStrong(&v279, 0);
  objc_storeStrong(&v280, 0);
  objc_storeStrong(&v281, 0);
  objc_storeStrong(&v282, 0);
  objc_storeStrong(&v283, 0);
  objc_storeStrong(&v284, 0);
  objc_storeStrong(&v285, 0);
  objc_storeStrong(&v286, 0);
  objc_storeStrong(v288, 0);
  objc_storeStrong(&v289, 0);
  objc_storeStrong(&v290, 0);
  objc_storeStrong(&v291, 0);
  objc_storeStrong(&v292, 0);
  objc_storeStrong(&v293, 0);
  return v76 & 1;
}

void sub_100048000(uint64_t a1, int a2)
{
  *(v2 + 8) = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 16) = *(v2 + 8);
  _Unwind_Resume(*(v2 + 16));
}

uint64_t sub_100048030(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_1000480E0()
{
  v10 = __chkstk_darwin();
  v9 = v0;
  v8 = v1;
  v4 = sub_100048084();
  *(sub_100048090() + 3) = v10;
  optind = 0;
  sub_1000483C8(1uLL, "argv[%s] =", *(v10 + 16));
  for (i = 0; i < v9; ++i)
  {
    sub_1000483C8(1uLL, "  [%d] = %s", i, *(v8 + 8 * i));
  }

  v6 = 0;
  sub_1000483C8(1uLL, "env[%s] =", *(v10 + 16));
  while (*(environ + 8 * v6))
  {
    bzero(__s, 0x800uLL);
    __strlcpy_chk();
    v3 = strrchr(__s, 61);
    if (v3)
    {
      *v3 = 0;
      sub_1000483C8(1uLL, "  %s => %s", __s, v3 + 1);
    }

    ++v6;
  }

  v7 = 0;
  sub_1000483C8(1uLL, "apple[%s] =", *(v10 + 16));
  while (*(v4[290] + 8 * v7))
  {
    bzero(v11, 0x800uLL);
    __strlcpy_chk();
    v2 = strrchr(v11, 61);
    if (v2)
    {
      *v2 = 0;
      sub_1000483C8(1uLL, "  %s => %s", v11, v2 + 1);
    }

    ++v7;
  }
}

void sub_1000483C8(unint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v7 = a1;
  v6 = a2;
  v5 = sub_100048090();
  v4 = v5[3];
  v3 = 0;
  if (v7 <= v5[2])
  {
    va_copy(v3, va);
    vwarnx(v6, va);
    if (*v5)
    {
      v2 = sub_1000485AC(v4);
      va_copy(v3, va);
      os_log_with_args();
      sub_1000030D0(&v2);
    }
  }
}

uint64_t sub_100048490(char *a1, unint64_t *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -1;
  __endptr = 0;
  *__error() = 0;
  if (v7)
  {
    v3 = strtoull(v7, &__endptr, 0);
    if (__endptr == v7)
    {
      v5 = 22;
    }

    else if (*__error())
    {
      v5 = *__error();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 1;
    v5 = 0;
  }

  if (!v5)
  {
    *v6 = v3;
  }

  return v5;
}

os_log_t sub_1000485AC(uint64_t a1)
{
  if (a1)
  {
    return os_log_create("com.apple.libcryptex", *(a1 + 16));
  }

  else
  {
    return os_log_create("com.apple.libcryptex", "main");
  }
}

void sub_10004860C(FILE *a1, unint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = sub_100048090();
  v5 = v6[3];
  v4 = 0;
  v9 = sub_10004870C(v9, v8);
  if (v8 <= v6[1])
  {
    va_copy(v4, va);
    vfprintf(v9, v7, va);
    fprintf(v9, "\n");
    if (*v6)
    {
      v3 = sub_1000485AC(v5);
      sub_100048770(v9, v8);
      va_copy(v4, va);
      os_log_with_args();
      sub_1000030D0(&v3);
    }
  }
}

FILE *sub_10004870C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a1;
  }

  if (a2)
  {
    return __stderrp;
  }

  return __stdoutp;
}

uint64_t sub_100048770(FILE *a1, uint64_t a2)
{
  if (a2)
  {
    return 2;
  }

  else if (a1 == __stderrp)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

void sub_1000487F4(unsigned int a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = sysexit_np();
  vfprintf(__stderrp, a2, va);
  v3 = __stderrp;
  v2 = strerror_np();
  fprintf(v3, ": %s\n", v2);
  exit(v4);
}

uint64_t sub_10004887C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, NSObject *a5)
{
  v6 = fcheck_np();
  if (v6 == -1)
  {
    v9 = 84;
    v8 = *__error();
    if (os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v14, a1, 84);
      _os_log_impl(&_mh_execute_header, a5, OS_LOG_TYPE_ERROR, "FILE [read %s]: %{darwin.errno}d", v14, 0x12u);
    }

    *__error() = v8;
  }

  else if (v6)
  {
    v9 = a4;
    v7 = *__error();
    if (os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v13, a1, a4);
      _os_log_impl(&_mh_execute_header, a5, OS_LOG_TYPE_ERROR, "FILE [read %s]: %{darwin.errno}d", v13, 0x12u);
    }

    *__error() = v7;
  }

  else
  {
    return 0;
  }

  return v9;
}

void start(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100048090();
  sub_100048AE0(v5);
  sub_100048BE0(a1, a2, a3, a4);
  v4 = os_subcommand_main();
  exit(v4);
}

char *sub_100048AE0(void *a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  if (getenv("_CRYPTEX_CLI_ENV_POST_REEXEC"))
  {
    *v8 |= 4uLL;
  }

  v7 = getenv("CRYPTEXCTL_VERBOSE_LEVEL");
  if (v7)
  {
    v5 = -1;
    v4 = 0;
    v5 = sub_100048490(v7, &v4);
    if (!v5)
    {
      v8[1] = v4;
    }
  }

  result = getenv("CRYPTEXCTL_DEBUG_LEVEL");
  v6 = result;
  if (result)
  {
    v3 = -1;
    v2 = 0;
    result = sub_100048490(v6, &v2);
    v3 = result;
    if (!result)
    {
      v8[2] = v2;
    }
  }

  return result;
}

int *sub_100048BE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = -1;
  v19 = -1;
  bzero(v30, 0x400uLL);
  bufsize = 1024;
  v17 = -1;
  v16 = &unk_100084C88;
  v19 = _NSGetExecutablePath(v30, &bufsize);
  if (v19)
  {
    v15 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = 0;
    v12 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 &= ~1u;
    }

    if (v12)
    {
      sub_1000013C8(v28, bufsize);
      v13 = _os_log_send_and_compose_impl(v12, &v15, __b, 80, &_mh_execute_header, oslog, type, "unexpected failure: _NSGetExecutablePath: required size = %u", v28);
    }

    v9 = v13;
    v14 = v13;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100048D7CLL);
  }

  v17 = open(v30, 0);
  v25 = v17;
  if (v17 < 0)
  {
    err(71, "open: %s", v30);
  }

  v20 = realpath_np();
  if (v20)
  {
    errc(71, v20, "realpath: %s", v30);
  }

  __strlcpy_chk();
  basename_r(v16, v16 + 1024);
  sub_1000483C8(1uLL, "path = %s", v16);
  *(v16 + 576) = v24;
  *(v16 + 289) = v23;
  *(v16 + 290) = v21;
  opterr = 0;
  *(v16 + 291) = dispatch_semaphore_create(0);
  err_set_exit(sub_100049008);
  v8 = setenv("POSIXLY_CORRECT", "1", 1);
  if (v8 == -1)
  {
    v7 = 0;
    memset(v27, 0, sizeof(v27));
    v6 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = 2;
    }

    v4 = __error();
    sub_1000013C8(v26, *v4);
    _os_log_send_and_compose_impl(v6, &v7, v27, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: setenv(POSIXLY_CORRECT, 1, 1) -> %{errno}d", v26, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100048FCCLL);
  }

  return sub_1000038DC(&v17);
}

uint64_t sub_100049044(uint64_t a1, unint64_t a2, const char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (a3)
  {
    v7 = sub_1000183E8();
    for (i = 0; i < v10; ++i)
    {
      sub_100049214(v7, (v11 + 32 * i));
    }

    v8 = sub_10004933C(v9, v7);
    sub_100006B40(&v7);
  }

  else
  {
    for (j = 0; j < v10; ++j)
    {
      v4 = (v11 + 32 * j);
      sub_10004860C(__stdoutp, 0, "%s", *v4);
      sub_10004860C(__stdoutp, 0, "  version = %s", v4[1]);
      if (v4[3])
      {
        sub_10004860C(__stdoutp, 0, "  device = %s", v4[3]);
      }

      if (v4[2])
      {
        sub_10004860C(__stdoutp, 0, "  mount point = %s", v4[2]);
      }
    }
  }

  return v8;
}

void sub_100049214(__CFArray *a1, const char **a2)
{
  v8 = a1;
  v7 = a2;
  v6 = sub_100018314(*a2);
  value = sub_100018314(v7[1]);
  v4 = 0;
  v3 = 0;
  theDict = sub_100018434();
  CFDictionaryAddValue(theDict, @"identifier", v6);
  CFDictionaryAddValue(theDict, @"version", value);
  if (v7[3])
  {
    v4 = sub_100018314(v7[3]);
    CFDictionaryAddValue(theDict, @"device", v4);
  }

  if (v7[2])
  {
    v3 = sub_100018314(v7[2]);
    CFDictionaryAddValue(theDict, @"mount_point", v3);
  }

  CFArrayAppendValue(v8, theDict);
  sub_100006B40(&theDict);
  sub_100006B40(&v3);
  sub_100006B40(&v4);
  sub_100006B40(&value);
  sub_100006B40(&v6);
}

uint64_t sub_10004933C(const char *a1, void *a2)
{
  v4 = 22;
  if (!strcmp(a1, "plist"))
  {
    v3 = sub_10002CD94(a2);
  }

  else
  {
    if (strcmp(a1, "json"))
    {
      return v4;
    }

    v3 = sub_10002CF18(a2);
  }

  if (v3)
  {
    return sub_100018A78(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1000493EC(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10004941C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result |= 2u;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_100049430(uint64_t a1, uint64_t a2)
{
  v4 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    sub_100049648();
  }

  v5 = v4;
  result = sub_1000494D4(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    sub_100049610();
  }

  *(a2 + 8) = *(a1 + 8 * (v5 % 0x25));
  *(a1 + 8 * (v5 % 0x25)) = a2;
  if (*a2)
  {
    sub_10004962C();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t sub_1000494D4(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100049570(uint64_t a1, uint64_t a2)
{
  result = os_simple_hash();
  v5 = (a1 + 8 * (result % 0x25));
  v6 = *v5;
  if (*v5 != a2)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 8);
    }

    while (v6 != a2);
    v5 = (v7 + 8);
  }

  *v5 = *(v6 + 8);
  *(a2 + 8) = -1;
  if ((*a2 & 1) == 0)
  {
    sub_100049664();
  }

  *a2 &= ~1u;
  --*(a1 + 296);
  return result;
}

void sub_100049680(_BYTE *a1)
{
  if (*a1)
  {
    if (*(a1 + 4) == 2)
    {
      mach_right_send_release();
    }

    xpc_release(*(a1 + 37));
    os_release(*(a1 + 1));
    if ((*a1 & 0x40) != 0)
    {

      free(a1);
    }
  }
}

os_log_t sub_1000496F4(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

void sub_100049728(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t sub_100049764(uint64_t __str, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >= 0x31)
  {
    sub_10004BD5C(&v8, v9);
  }

  v4 = __str;
  *(__str + 96) = 0;
  *(__str + 64) = 0u;
  *(__str + 80) = 0u;
  *(__str + 32) = 0u;
  *(__str + 48) = 0u;
  *__str = 0u;
  *(__str + 16) = 0u;
  if (a3)
  {
    v6 = 97;
    do
    {
      v7 = *a2++;
      __str = snprintf(v4, v6, "%02x", v7);
      v4 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  return __str;
}

char *sub_100049834(char **a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = (2 * a3) | 1;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v6, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v6, 0x8709206FuLL);
    if (!result)
    {
      sub_10004BDC8(v11, v12);
    }
  }

  v8 = result;
  if (v3)
  {
    v9 = result;
    do
    {
      v10 = *a2++;
      result = snprintf(v9, v6, "%02x", v10);
      v9 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  *a1 = v8;
  return result;
}

size_t sub_100049940(_BYTE *a1, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v4 = result;
    for (i = 0; i < v4; i += 2)
    {
      v8 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        sub_10004BE74(v6, v9);
      }

      *a1++ = result;
    }
  }

  return result;
}

unint64_t sub_100049A08(unint64_t *a1, size_t *a2, char *__s)
{
  v5 = strlen(__s);
  v6 = (v5 & 1) + (v5 >> 1);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v6, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v6, 0x8709206FuLL);
    if (!result)
    {
      sub_10004BDC8(&v13, v14);
    }
  }

  v8 = result;
  if (v5)
  {
    v9 = 0;
    v10 = result;
    do
    {
      v12 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        sub_10004BE74(&v13, v14);
      }

      *v10++ = result;
      v9 += 2;
    }

    while (v9 < v5);
  }

  *a1 = v8;
  *a2 = v6;
  return result;
}

uint64_t sub_100049B4C(int a1, char *a2)
{
  v4 = &unk_100085000;
  if (a2)
  {
    v5 = openat(a1, a2, 0x100000);
    v74 = *__error();
    if (v5 < 0)
    {
      v12 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEE0();
      }

      v13 = qword_1000855E8;
      if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v74;
    }

    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "top-level directory: %s", buf, 0xCu);
    }

    *__error() = v74;
  }

  else
  {
    v5 = dup_np();
  }

  v73 = a2;
  v72 = a1;
  if (qword_1000855E0 != -1)
  {
    sub_10004BEF4();
  }

  v7 = qword_1000855E8;
  bzero(buf, 0x400uLL);
  memset(&v89, 0, sizeof(v89));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v5, &v89) == -1)
    {
      v14 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *v77 = 136315650;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 1024;
        LODWORD(v82) = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
      }

      *__error() = v14;
    }

    else
    {
      if (fcntl(v5, 50, buf))
      {
        v8 = __error();
        v9 = strerror(*v8);
        snprintf(buf, 0x400uLL, "[%s]", v9);
      }

      v10 = v89.st_mode >> 12;
      if (v10 == 7)
      {
        v11 = "[unknown]";
      }

      else
      {
        v11 = off_10007E910[v10 ^ 8];
      }

      v16 = os_flagset_copy_string();
      v17 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v77 = 136316418;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 2080;
        v82 = v11;
        v83 = 2048;
        st_size = v89.st_size;
        v85 = 2080;
        v86 = v16;
        v87 = 2080;
        v88 = buf;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
      }

      *__error() = v17;
      free(v16);
      v4 = &unk_100085000;
    }
  }

  v18 = fdopendir(v5);
  if (!v18)
  {
    sub_10004C110(&v89, buf);
  }

  v19 = v18;
  v76 = 0;
  v20 = 0;
  v21 = 0;
  v74 = -1;
  v75 = v18;
  while (1)
  {
    v22 = v20;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v23 = 128;
LABEL_35:
    v25 = dirfd(v19);
    if (v76 >= 4)
    {
      sub_10004C094(&v89, buf);
    }

    v26 = v25;
    if (v21->d_name[0] == 46)
    {
      v20 = 0;
      if (!v21->d_name[1])
      {
        continue;
      }

      if (v21->d_name[1] == 46)
      {
        v20 = 0;
        if (!v21->d_name[2])
        {
          continue;
        }
      }
    }

    v27 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v28 = *(v4 + 189);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v21->d_name;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removing: %s", buf, 0xCu);
    }

    *__error() = v27;
    v29 = openat(v26, v21->d_name, 256);
    if ((v29 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v30 = *__error();
    if (v30 == 62)
    {
      v41 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v42 = *(v4 + 189);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s is a symlink", buf, 0xCu);
      }

      *__error() = v41;
    }

    else
    {
      if (v30 == 2)
      {
        v38 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v39 = *(v4 + 189);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
        }

        v76 = 0;
        v20 = 0;
        *__error() = v38;
        v40 = 9;
        goto LABEL_131;
      }

      if (v30)
      {
        v74 = *__error();
        v43 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v44 = *(v4 + 189);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v44;
        v47 = "openat: %{darwin.errno}d";
        goto LABEL_128;
      }

      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v31 = *(v4 + 189);
      bzero(buf, 0x400uLL);
      memset(&v89, 0, sizeof(v89));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if (fstat(v29, &v89) == -1)
        {
          v48 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v49 = *__error();
            *v77 = 136315650;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 1024;
            LODWORD(v82) = v49;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
          }

          *__error() = v48;
        }

        else
        {
          if (fcntl(v29, 50, buf))
          {
            v32 = __error();
            v33 = strerror(*v32);
            snprintf(buf, 0x400uLL, "[%s]", v33);
          }

          v34 = v89.st_mode >> 12;
          v35 = "[unknown]";
          if (v34 != 7)
          {
            v35 = off_10007E910[v34 ^ 8];
          }

          v36 = os_flagset_copy_string();
          v37 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *v77 = 136316418;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 2080;
            v82 = v35;
            v83 = 2048;
            st_size = v89.st_size;
            v85 = 2080;
            v86 = v36;
            v87 = 2080;
            v88 = buf;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
          }

          *__error() = v37;
          free(v36);
          v4 = &unk_100085000;
        }
      }
    }

    if ((unlinkat(v26, v21->d_name, v23) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v50 = *__error();
    if (v50 <= 15)
    {
      if (!v50)
      {
        v51 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v59 = *(v4 + 189);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "removed: %s", buf, 0xCu);
        }

        v53 = __error();
        v40 = 0;
        v76 = 0;
        goto LABEL_110;
      }

      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v51 = *__error();
          if (qword_1000855E0 != -1)
          {
            sub_10004BEF4();
          }

          v52 = *(v4 + 189);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
          }

          v53 = __error();
          v40 = 0;
LABEL_110:
          v20 = 0;
          *v53 = v51;
          goto LABEL_131;
        }

LABEL_124:
        v74 = *__error();
        v43 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v63 = *(v4 + 189);
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v63;
        v47 = "unlinkat: %{darwin.errno}d";
LABEL_128:
        v64 = 8;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v47, v45, v64);
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    if (v50 != 16)
    {
      if (v50 != 21)
      {
        if (v50 == 66)
        {
          v54 = *__error();
          if (qword_1000855E0 != -1)
          {
            sub_10004BEF4();
          }

          v55 = *(v4 + 189);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "re-trying directory cleanup: %s", buf, 0xCu);
          }

          v40 = 0;
          v20 = 0;
          *__error() = v54;
          ++v76;
          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_96:
      v56 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v57 = *(v4 + 189);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "emptying subdirectory: %s", buf, 0xCu);
      }

      *__error() = v56;
      v74 = sub_100049B4C(v29, 0);
      if (!v74)
      {
        goto LABEL_123;
      }

      v43 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v58 = *(v4 + 189);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v58;
        v47 = "emptydir [recurse]: %{darwin.errno}d";
        goto LABEL_128;
      }

      goto LABEL_130;
    }

    if ((v22 & 1) == 0 && v21->d_type != 4)
    {
      v74 = *__error();
      v43 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v65 = *(v4 + 189);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      *buf = 136315394;
      d_name = v21->d_name;
      v92 = 1024;
      v93 = v74;
      v45 = buf;
      v46 = v65;
      v47 = "file busy: %s: %{darwin.errno}d";
      v64 = 18;
      goto LABEL_129;
    }

    bzero(buf, 0x400uLL);
    if (realpath_np())
    {
      sub_10004BF1C(v77, &v89);
    }

    v60 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v61 = *(v4 + 189);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v89.st_dev = 136315138;
      *&v89.st_mode = v21->d_name;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "mount point; forcing unmount: %s", &v89, 0xCu);
    }

    *__error() = v60;
    if (!unmount(buf, 0x80000))
    {
LABEL_123:
      v40 = 0;
      v74 = 0;
      v20 = 1;
      goto LABEL_131;
    }

    v74 = *__error();
    v43 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v62 = *(v4 + 189);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v89.st_dev = 67109120;
      *&v89.st_mode = v74;
      v45 = &v89;
      v46 = v62;
      v47 = "unmount + MNT_FORCE: %{darwin.errno}d";
      goto LABEL_128;
    }

LABEL_130:
    v20 = 0;
    *__error() = v43;
    v40 = 4;
LABEL_131:
    if (v29 != -1 && close(v29) == -1)
    {
      sub_10004BFAC(&v89, buf);
    }

    v19 = v75;
    if (v40 && v40 != 9)
    {
      goto LABEL_157;
    }
  }

  v24 = readdir(v19);
  if (v24)
  {
    v21 = v24;
    v23 = 0;
    goto LABEL_35;
  }

  if (v73)
  {
    v66 = unlinkat(v72, v73, 128);
    v74 = *__error();
    if (v66)
    {
      v67 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v68 = *(v4 + 189);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unlinkat [top level]: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_156;
    }

    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v70 = *(v4 + 189);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v73;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "removed top-level directory: %s", buf, 0xCu);
    }

    v67 = v74;
  }

  else
  {
    v67 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v69 = *(v4 + 189);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "removed subdirectory", buf, 2u);
    }
  }

  v74 = 0;
LABEL_156:
  *__error() = v67;
LABEL_157:
  if (closedir(v19) == -1)
  {
    sub_10004C020(&v89, buf);
  }

  return v74;
}

uint64_t sub_10004AA74(uint64_t a1, char *a2, uint64_t a3, const char *a4)
{
  v7 = a1;
  if ((renameat(a1, a2, a3, a4) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v8 = *__error();
  v9 = *__error();
  if (v8 == 18)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v11 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "taking slow path", v15, 2u);
    }

    *__error() = v9;
    return sub_10004AC6C(v7, a2, a3, a4);
  }

  else if (v8)
  {
    v12 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "renameat: %{darwin.errno}d", v15, 8u);
    }

    *__error() = v12;
  }

  else
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v10 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "renameat succeeded", v15, 2u);
    }

    *__error() = v9;
    return 0;
  }

  return v9;
}

uint64_t sub_10004AC6C(int a1, char *a2, uint64_t a3, const char *a4)
{
  v5 = a3;
  memset(&v35, 0, sizeof(v35));
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  LODWORD(v8) = openat(a1, a2, 0);
  if ((v8 & 0x80000000) != 0)
  {
    v10 = *__error();
    a1 = *__error();
    if (qword_1000855E0 != -1)
    {
      dispatch_once(&qword_1000855E0, &stru_10007E4F0);
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 67109120;
      *&buf.st_mode = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", &buf, 8u);
    }

    *__error() = a1;
    if (v8 != -1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v9 = realpath_np();
    if (!v9)
    {
      v14 = realpath_np();
      if (v14)
      {
        v10 = v14;
        a1 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v11 = qword_1000855E8;
        if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "realpath: %{darwin.errno}d";
      }

      else if (fstat(v8, &v35))
      {
        v10 = *__error();
        a1 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v11 = qword_1000855E8;
        if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "fstat: %{darwin.errno}d";
      }

      else
      {
        v15 = v35.st_mode & 0xF000;
        if (v15 == 0x8000)
        {
          v18 = 1179663;
        }

        else if (v15 == 0x4000)
        {
          memset(&buf, 0, sizeof(buf));
          if ((fstatat(v5, a4, &buf, 0) & 0x80000000) == 0)
          {
            *__error() = 0;
          }

          v16 = *__error();
          v10 = *__error();
          if (v16 != 2)
          {
            if (!v16)
            {
              if (qword_1000855E0 != -1)
              {
                dispatch_once(&qword_1000855E0, &stru_10007E4F0);
              }

              v17 = qword_1000855E8;
              if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
              {
                *v26 = 0;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "destination directory exists", v26, 2u);
              }

              a1 = v10;
              v10 = 17;
              goto LABEL_51;
            }

            a1 = *__error();
            if (qword_1000855E0 != -1)
            {
              dispatch_once(&qword_1000855E0, &stru_10007E4F0);
            }

            v11 = qword_1000855E8;
            if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }

            *v26 = 67109120;
            v27 = v10;
            v12 = "fstatat: %{darwin.errno}d";
            p_buf = v26;
            goto LABEL_50;
          }

          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v19 = qword_1000855E8;
          if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
          {
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "will create destination directory", v26, 2u);
          }

          *__error() = v10;
          v18 = 32783;
        }

        else
        {
          v18 = 15;
        }

        snprintf(__str, 0x400uLL, "%s/%s", __str, a4);
        v20 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v21 = qword_1000855E8;
        if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
        {
          buf.st_dev = 136315394;
          *&buf.st_mode = from;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = __str;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "copyfile: src = %s, dst = %s", &buf, 0x16u);
        }

        *__error() = v20;
        if (copyfile(from, __str, 0, v18))
        {
          v10 = *__error();
          a1 = *__error();
          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v11 = qword_1000855E8;
          if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          buf.st_dev = 67109120;
          *&buf.st_mode = v10;
          v12 = "copyfile: %{darwin.errno}d";
        }

        else
        {
          if ((v18 & 0x8000) == 0)
          {
            v10 = 0;
            goto LABEL_52;
          }

          v10 = sub_100049B4C(a1, a2);
          if (!v10)
          {
            goto LABEL_52;
          }

          a1 = *__error();
          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v11 = qword_1000855E8;
          if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          buf.st_dev = 67109120;
          *&buf.st_mode = v10;
          v12 = "_rmrfdirat: %{darwin.errno}d";
        }
      }

      goto LABEL_49;
    }

    v10 = v9;
    a1 = *__error();
    if (qword_1000855E0 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v11 = qword_1000855E8;
      if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "realpath: %{darwin.errno}d";
LABEL_49:
        p_buf = &buf;
LABEL_50:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, p_buf, 8u);
      }

LABEL_51:
      *__error() = a1;
LABEL_52:
      if (close(v8) != -1)
      {
        break;
      }

      *__str = 0;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      *from = 0u;
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v24 = *__error();
      v35.st_dev = 67109120;
      *&v35.st_mode = v24;
      LODWORD(v25) = 8;
      _os_log_send_and_compose_impl(v10, __str, from, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", &v35, v25);
      _os_crash_msg();
      __break(1u);
LABEL_69:
      dispatch_once(&qword_1000855E0, &stru_10007E4F0);
    }
  }

  return v10;
}

uint64_t sub_10004B3B0(int a1, char *a2, int *a3)
{
  v5 = mkdtempat_np(a1, a2);
  if (!v5)
  {
    return *__error();
  }

  v6 = openat(a1, v5, 1048832);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a3 = v7;
  return result;
}

size_t sub_10004B40C(int a1, char *a2)
{
  result = confstr(a1, a2, 0x400uLL);
  if (!result)
  {
    sub_10004C1A0(&v3, v4);
  }

  if (result >= 0x401)
  {
    sub_10004C184();
  }

  return result;
}

uint64_t sub_10004B484(unsigned int a1, uint64_t a2)
{
  *(a2 + 4) = 0;
  *a2 = bswap32(a1);
  return a2;
}

unint64_t sub_10004B498(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10004B524(int a1, void *a2)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    sub_10004C214();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v15 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v10;
  while (1)
  {
    v11 = pread(a1, v8, st_size, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v16 = v11;
  v17 = *__error();
  if (v16 == st_size)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v18 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v17;
LABEL_9:
    sub_10004C358(a2, 0, j__free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (qword_1000855E0 != -1)
  {
    sub_10004BEF4();
  }

  v19 = qword_1000855E8;
  if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t sub_10004B8CC(int __fd, uint64_t a2)
{
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v17) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      return v8;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v12 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v13 = qword_1000855E8;
    v8 = 5;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = v14;
      v20 = 1024;
      v21 = 5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  return v8;
}

char *sub_10004BAF0(const char *a1)
{
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v2 = strdup(a1);
      if (v2)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v2 = strdup(a1);
    if (!v2)
    {
      sub_10004C230(a1, &v8, v9);
    }
  }

  v3 = v2;
  v4 = *v2;
  if (*v2)
  {
    v5 = (v2 + 1);
    do
    {
      *(v5 - 1) = __tolower(v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10004BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v9, v8, 80, a5, v10, 16, a8);
}

uint64_t sub_10004BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double sub_10004BC20(void *a1, _OWORD *a2)
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

double sub_10004BC40(void *a1, _OWORD *a2)
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

uint64_t sub_10004BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, 80, a5, v8, 16, a8);
}

BOOL sub_10004BC9C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10004BCB4(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL sub_10004BCCC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10004BD04(uint64_t a1)
{

  return _os_crash_msg();
}

double sub_10004BD38(void *a1, _OWORD *a2)
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

void sub_10004BD5C(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  sub_10004BC9C();
  sub_10004BD1C();
  v8 = sub_10004BBFC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: bogus digest length: %lu");
  sub_10004BD04(v8);
  __break(1u);
}

void sub_10004BDC8(void *a1, _OWORD *a2)
{
  sub_10004BD38(a1, a2);
  if (sub_10004BC9C())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = __error();
  strerror(*v5);
  sub_10004BCE4();
  sub_10004BC64(v4, v2, v3, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void sub_10004BE74(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  sub_10004BC9C();
  sub_10004BD1C();
  v8 = sub_10004BBFC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: byte too big: %#lx");
  sub_10004BD04(v8);
  __break(1u);
}

void sub_10004BF1C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (sub_10004BC9C())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_10004BBFC(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "assertion failure: error -> %llu");
  sub_10004BD04(v8);
  __break(1u);
}

void sub_10004BFAC(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  __error();
  sub_10004BC80();
  v8 = sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: close(fd) -> %{errno}d");
  sub_10004BCB4(v8);
  __break(1u);
}

void sub_10004C020(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  __error();
  sub_10004BC80();
  v8 = sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: closedir(dp) -> %{errno}d");
  sub_10004BCB4(v8);
  __break(1u);
}

void sub_10004C094(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  if (sub_10004BC9C())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_10004BBFC(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: directory will not empty: %s");
  sub_10004BD04(v8);
  __break(1u);
}

void sub_10004C110(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  __error();
  sub_10004BC80();
  v8 = sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: fdopendir: %{darwin.errno}d");
  sub_10004BCB4(v8);
  __break(1u);
}

void sub_10004C1A0(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  __error();
  sub_10004BC80();
  v8 = sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: confstr: %{darwin.errno}d");
  sub_10004BCB4(v8);
  __break(1u);
}

void sub_10004C230(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (sub_10004BC9C())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  strerror(*v6);
  sub_10004BCE4();
  sub_10004BC64(v5, a2, a3, v7, &_mh_execute_header, v8, v9, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

uint64_t sub_10004C2F8(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    sub_10004C6B8(&v3, v4);
  }

  return result;
}

void *sub_10004C358(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    sub_10004C73C(&v5, v6);
  }

  return result;
}

void *sub_10004C3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    sub_10004C7C4(&v6, v7);
  }

  return sub_10004C358(a1, a2, a3, a4, a5);
}

__n128 sub_10004C438(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a2->n128_u64[1];
  if (a4 + a3 > v4)
  {
    v11 = 0;
    memset(v18, 0, sizeof(v18));
    v8 = v4;
    v12 = 134218496;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = v8;
    _os_log_send_and_compose_impl(v9, &v11, v18, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: sub-buffer overflows source buffer: off = %lu, len = %lu, source len = %lu", &v12, 32, v10);
    _os_crash_msg();
    __break(1u);
  }

  a1->n128_u64[0] = a2->n128_u64[0] + a3;
  a1->n128_u64[1] = a4;
  a1[1] = *a2;
  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[1] = 0;
  return result;
}

void sub_10004C574(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  if (a2[3].n128_u64[0])
  {
    sub_10004C84C();
  }

  sub_10004C438(a1, a2, a3, a4);
  a2[3].n128_u64[0] = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = 0;
}

uint64_t sub_10004C5B4(uint64_t result)
{
  *(result + 40) = *(result + 48);
  *(result + 48) = 0;
  return result;
}

FILE *sub_10004C5C0(uint64_t a1, char *__mode, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0 || (v5 = *(a1 + 8), v5 < a3))
  {
    sub_10004C970();
  }

  v6 = fmemopen(*a1, v5, __mode);
  if (!v6)
  {
    sub_10004C8EC(&v9, v10);
  }

  v7 = v6;
  if (fseek(v6, a3, 0) == -1)
  {
    sub_10004C868(&v9, v10);
  }

  return v7;
}

void *sub_10004C66C(void *result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v3 = result[5];
      if (v3)
      {
        if (result[6])
        {
          sub_10004C98C();
        }

        v4 = result[3];
        v5 = result[4];
        v6 = result[2];

        return v3(v6, v4, v5);
      }
    }
  }

  return result;
}

void sub_10004C6B8(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_10004BC80();
  sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: munmap(bytes, len) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_10004C73C(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_10004BBFC(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: buffer length too large: %lu");
  _os_crash_msg();
  __break(1u);
}

void sub_10004C7C4(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_10004BBFC(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: negative buffer length: %ld");
  _os_crash_msg();
  __break(1u);
}

void sub_10004C868(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_10004BC80();
  sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: fseek(f, off_long, 0) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_10004C8EC(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_10004BC80();
  sub_10004BBD4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: fmemopen: %{darwin.errno}d");
  _os_crash_msg();
  __break(1u);
}

uint64_t sub_10004C9A8(int a1)
{
  v1 = &dword_10007E98C;
  v2 = 8;
  while (*(v1 - 1) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 104;
    }
  }

  return *v1;
}

char *sub_10004C9DC(int a1)
{
  v2 = &off_10007E990;
  v3 = 8;
  result = "unknown";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

_DWORD *sub_10004CA18(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void sub_10004CA4C(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_10004D460(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t sub_10004CAA0(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_10004CC68(a2, a3, a4, a5, a6, 3);

  return sub_10004CAF4(a1, v7);
}

uint64_t sub_10004CAF4(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 5);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 6), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_10004D460(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 6);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(v2[1], v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}
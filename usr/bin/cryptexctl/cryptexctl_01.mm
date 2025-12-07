char *sub_10001B738()
{
  predicate = &unk_100084860;
  block = 0;
  objc_storeStrong(&block, &stru_10007A528);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_100084868;
}

uint64_t sub_10001B814(uint64_t a1, int a2, char *const *a3)
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
      JUMPOUT(0x10001B9F0);
    }

    switch(v11)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'f':
        if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
        {
          errx(64, "invalid output format: %s", optarg);
        }

        v9 = optarg;
        sub_1000483C8(1uLL, "output format: %s", optarg);
        break;
      case 'l':
        v8 |= 1uLL;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10001BB30);
    }
  }

  v14 += optind;
  v15 -= optind;
  v13 = sub_10001BBB0(&v8);
  return sysexit_np();
}

uint64_t sub_10001BBB0(void *a1)
{
  v3 = sub_100048090();
  v2 = "";
  if (v3[4])
  {
    return sub_10001BE3C(a1, v3[4]);
  }

  else
  {
    if (*a1)
    {
      v2 = "lossy ";
    }

    v4 = cryptex_copy_list_4MSM();
    if (v4)
    {
      warnc(v4, "failed to copy %scryptex list", v2);
    }

    return v4;
  }
}

uint64_t sub_10001BE3C(uint64_t a1, void *a2)
{
  v20 = a1;
  v19[1] = a2;
  v19[0] = 0;
  v18 = -1;
  v17 = 0;
  v16 = 0;
  count = 0;
  if (cryptex_remote_service_copy_installed2())
  {
    count = cryptex_remote_array_get_count();
    if (!count)
    {
      goto LABEL_23;
    }

    v16 = malloc_type_malloc(32 * count, 0x50040BBB33FCDuLL);
    if (!v16)
    {
      v18 = *__error();
      warn("malloc");
      goto LABEL_24;
    }

    cryptex_remote_array_apply();
    v18 = sub_100049044(v16, count, *(v20 + 8));
    if (v18)
    {
      warnc(v18, "failed to print cryptex information");
    }

    else
    {
LABEL_23:
      v18 = 0;
    }
  }

  else
  {
    v14 = sub_100048090();
    v10 = 1;
    if (v14[1] <= 1uLL)
    {
      v10 = v14[2] > 1uLL;
    }

    if (v10)
    {
      v2 = 999;
    }

    else
    {
      v2 = 3;
    }

    v13 = v2;
    v9 = 1;
    if (v14[1] <= 1uLL)
    {
      v9 = v14[2] > 1uLL;
    }

    v3 = 2000;
    if (!v9)
    {
      v3 = 200;
    }

    v12[1] = v3;
    v21 = "unknown error";
    v11 = strdup("unknown error");
    v31 = "known-constant allocation";
    v30 = v11;
    v29 = strlen("unknown error");
    if (!v11)
    {
      v28 = 0;
      memset(__b, 0, sizeof(__b));
      v26 = 0;
      v25 = 3;
      v24 = &_os_log_default;
      v23 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 &= ~1u;
      }

      if (v25)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v32, v31, v29, v5);
        v26 = _os_log_send_and_compose_impl(v25, &v28, __b, 80, &_mh_execute_header, v24, v23, "allocation failed: obj = %s, size = %lu, error = %s", v32, 32, v7);
      }

      v22 = v26;
      v27 = v26;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001C0E4);
    }

    v12[0] = v11;
    warnx("failed to copy installed cryptexes from remote device\n%s", v11);
    sub_100002DE4(v12);
    v18 = sub_100018A78(v19[0]);
  }

LABEL_24:
  if (v16)
  {
    free(v16);
  }

  v8 = v18;
  sub_1000030D0(&v17);
  sub_100006B40(v19);
  return v8;
}

uint64_t sub_10001C2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v6 = cryptex_remote_cryptex_get_identifier();
  *(&v6 + 1) = cryptex_remote_cryptex_get_version_string();
  v3 = (*(a1 + 32) + 32 * a2);
  *v3 = v6;
  v3[1] = 0uLL;
  return 1;
}

char *sub_10001C334(__n128 *a1, uint64_t a2)
{
  v6 = malloc_type_calloc(1uLL, 0x98uLL, 0x8709206FuLL);
  v13 = "known-constant allocation";
  v12 = v6;
  v11 = 152;
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
    JUMPOUT(0x10001C4E8);
  }

  *(v6 + 4) = a2;
  *(v6 + 5) = 0;
  sub_10004C42C((v6 + 56), a1);
  *(v6 + 14) = v6 + 56;
  sub_1000496F4(v6, "com.apple.security.cryptexctl", "mach-object");
  return v6;
}

uint64_t sub_10001C58C(uint64_t a1)
{
  v31 = a1;
  v30 = -1;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  memset(v26, 0, 32);
  v29 = sub_10004C5C0(*(a1 + 112), "rb", 0);
  v28 = fread(&v27, 4uLL, 1uLL, v29);
  v30 = sub_10004887C("mach-o magic", v29, v28, 0x58u, *(v31 + 16));
  if (v30 && v30 != 84)
  {
    v24 = *v31;
    if (!*v31)
    {
      v24 = "[anonymous]";
    }

    v23 = *__error();
    v22 = *(v31 + 16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v36, v24, v30);
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: failed to read magic number: %{darwin.errno}d", v36, 0x12u);
    }

    *__error() = v23;
  }

  else
  {
    if (v27 == -1095041334)
    {
LABEL_22:
      v30 = 79;
      v21 = *v31;
      if (!*v31)
      {
        v21 = "[anonymous]";
      }

      v20 = *__error();
      v19 = *(v31 + 16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100009E38(v35, v21, v27, v30);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: fat file: %#x: %{darwin.errno}d", v35, 0x18u);
      }

      *__error() = v20;
      goto LABEL_64;
    }

    if (v27 != -1091568946)
    {
      switch(v27)
      {
        case 0xBFBAFECA:
        case 0xCAFEBABF:
        case 0xCAFEBABE:
          goto LABEL_22;
        case 0xCEFAEDFE:
        case 0xCEFAEFBE:
        case 0xCFFAEDFE:
          *(v31 + 32) |= 1uLL;
          v27 = sub_10000E154(v27);
          break;
        case 0xFEEDFACF:
        case 0xFEEDFACE:
          break;
        default:
          v30 = 92;
          v18 = *v31;
          if (!*v31)
          {
            v18 = "[anonymous]";
          }

          v17 = *__error();
          oslog = *(v31 + 16);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_100009E38(v34, v18, v27, v30);
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: not a mach binary: %#x: %{darwin.errno}d", v34, 0x18u);
          }

          *__error() = v17;
          goto LABEL_64;
      }
    }

    if (v27 == -17958193 || v27 == -1091568946)
    {
      *(v31 + 32) |= 2uLL;
      v25 = 32;
      if (v27 == -1091568946)
      {
        *(v31 + 32) |= 4uLL;
        *(v31 + 48) = 2;
      }
    }

    else
    {
      v25 = 28;
    }

    rewind(v29);
    v28 = fread(v26, v25, 1uLL, v29);
    v30 = sub_10004887C("mach-o header", v29, v28, 0x58u, *(v31 + 16));
    if (!v30)
    {
      if (*(v31 + 32))
      {
        if ((*(v31 + 32) & 2) != 0)
        {
          v15 = v26[1];
          v14 = v26[2];
          if ((v26[1] & 0x80000000) != 0 || (v26[2] & 0x80000000) != 0)
          {
            v30 = 84;
            goto LABEL_64;
          }

          v26[0] = sub_10000E154(v26[0]);
          v26[1] = sub_10000E154(v15);
          v26[2] = sub_10000E154(v14);
          v26[3] = sub_10000E154(v26[3]);
          v26[4] = sub_10000E154(v26[4]);
          v26[5] = sub_10000E154(v26[5]);
          v26[6] = sub_10000E154(v26[6]);
          v1 = v31;
          *(v31 + 120) = *v26;
          *(v1 + 136) = *&v26[4];
        }

        else
        {
          v13 = v26[1];
          v12 = v26[2];
          if ((v26[1] & 0x80000000) != 0 || (v26[2] & 0x80000000) != 0)
          {
            v30 = 84;
            goto LABEL_64;
          }

          v26[0] = sub_10000E154(v26[0]);
          v26[1] = sub_10000E154(v13);
          v26[2] = sub_10000E154(v12);
          v26[3] = sub_10000E154(v26[3]);
          v26[4] = sub_10000E154(v26[4]);
          v26[5] = sub_10000E154(v26[5]);
          v26[6] = sub_10000E154(v26[6]);
          v2 = v31;
          *(v31 + 120) = *v26;
          *(v2 + 132) = *&v26[3];
        }
      }

      else
      {
        v3 = v31;
        if ((*(v31 + 32) & 2) != 0)
        {
          *(v31 + 120) = *v26;
          *(v3 + 136) = *&v26[4];
        }

        else
        {
          *(v31 + 120) = *v26;
          *(v3 + 132) = *&v26[3];
        }
      }

      if ((*(v31 + 32) & 2) != 0)
      {
        v11 = *v31;
        if (!*v31)
        {
          v11 = "[anonymous]";
        }

        v10 = *__error();
        v9 = *(v31 + 16);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D174(v33, v11, *(v31 + 120), *(v31 + 124), *(v31 + 128), *(v31 + 132), *(v31 + 136), *(v31 + 140), *(v31 + 144));
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: initialized header:\n    magic = %#x\n    cpu type = %#x\n    cpu subtype = %#x\n    file type = %#x\n    ncmds = %u\n    sizeofcmds = %u\n    flags = %#x", v33, 0x36u);
        }

        *__error() = v10;
      }

      else
      {
        v8 = *v31;
        if (!*v31)
        {
          v8 = "[anonymous]";
        }

        v7 = *__error();
        v6 = *(v31 + 16);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D174(v32, v8, *(v31 + 120), *(v31 + 124), *(v31 + 128), *(v31 + 132), *(v31 + 136), *(v31 + 140), *(v31 + 144));
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: initialized header:\n    magic = %#x\n    cpu type = %#x\n    cpu subtype = %#x\n    file type = %#x\n    ncmds = %u\n    sizeofcmds = %u\n    flags = %#x", v32, 0x36u);
        }

        *__error() = v7;
      }

      v30 = 0;
    }
  }

LABEL_64:
  v5 = v30;
  sub_100010FB4(&v29);
  return v5;
}

uint64_t sub_10001D174(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 0;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a8;
  *(result + 48) = 0;
  *(result + 49) = 4;
  *(result + 50) = a9;
  return result;
}

uint64_t sub_10001D244(uint64_t a1)
{
  v72 = a1;
  v71 = -1;
  v70 = -1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  i = 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    v67 = *(v72 + 136);
    v69 = 32;
  }

  else
  {
    v67 = *(v72 + 136);
    v69 = 28;
  }

  v68 = sub_10004C5C0(*(v72 + 112), "rb", 0);
  v70 = fseek(v68, v69, 0);
  v64 = v70;
  if (v70 == -1)
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
      sub_1000013C8(v87, *v1);
      v61 = _os_log_send_and_compose_impl(v60, &v63, __b, 80, &_mh_execute_header, v59, type, "assertion failure: ret -> %{errno}d", v87, 8);
    }

    __ptr[1] = v61;
    v62 = v61;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001D450);
  }

  for (i = 0; ; ++i)
  {
    if (i >= v67)
    {
      goto LABEL_78;
    }

    __ptr[0] = 0;
    v56 = ftell(v68);
    v55[1] = v56;
    if (v56 == -1)
    {
      v55[0] = 0;
      memset(v86, 0, sizeof(v86));
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
        v2 = __error();
        sub_1000013C8(v85, *v2);
        v53 = _os_log_send_and_compose_impl(v52, v55, v86, 80, &_mh_execute_header, v51, v50, "assertion failure: cur_pos -> %{errno}d", v85, 8);
      }

      v49 = v53;
      v54 = v53;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001D5CCLL);
    }

    v66 = fread(__ptr, 8uLL, 1uLL, v68);
    v71 = fcheck_np();
    if (v71)
    {
      v48 = *v72;
      if (!v48)
      {
        v48 = "[anonymous]";
      }

      v47 = *__error();
      v46 = *(v72 + 16);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v84, v48, v71);
        _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s: fread[load command]: %{darwin.errno}d", v84, 0x12u);
      }

      *__error() = v47;
      goto LABEL_89;
    }

    LODWORD(__ptr[0]) = sub_10001E37C(v72, __ptr[0]);
    HIDWORD(__ptr[0]) = sub_10001E37C(v72, HIDWORD(__ptr[0]));
    v70 = fseek(v68, v56, 0);
    v44 = v70;
    if (v70 == -1)
    {
      v43 = 0;
      memset(v83, 0, sizeof(v83));
      v41 = 0;
      v40 = 3;
      v39 = &_os_log_default;
      v38 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v40 &= ~1u;
      }

      if (v40)
      {
        v3 = __error();
        sub_1000013C8(v82, *v3);
        v41 = _os_log_send_and_compose_impl(v40, &v43, v83, 80, &_mh_execute_header, v39, v38, "assertion failure: ret -> %{errno}d", v82, 8);
      }

      v37 = v41;
      v42 = v41;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001D880);
    }

    if (LODWORD(__ptr[0]) == 29)
    {
      break;
    }

    v19 = HIDWORD(__ptr[0]);
    if (HIDWORD(__ptr[0]) > 0x7FFFFFFF)
    {
      v71 = 84;
      v18 = *v72;
      if (!*v72)
      {
        v18 = "[anonymous]";
      }

      v17 = *__error();
      oslog = *(v72 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v76, v18, SHIDWORD(__ptr[0]));
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: bad offset: %u", v76, 0x12u);
      }

      *__error() = v17;
      goto LABEL_89;
    }

    v15 = *v72;
    if (!*v72)
    {
      v15 = "[anonymous]";
    }

    v14 = *__error();
    v13 = *(v72 + 16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v75, v15, __ptr[0]);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: not code signature: %#x", v75, 0x12u);
    }

    *__error() = v14;
    v70 = fseek(v68, v19, 1);
    if (v70)
    {
      v71 = *__error();
      v12 = *v72;
      if (!*v72)
      {
        v12 = "[anonymous]";
      }

      v11 = *__error();
      v10 = *(v72 + 16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v74, v12, v71);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: fseek: %{darwin.errno}d", v74, 0x12u);
      }

      *__error() = v11;
      goto LABEL_89;
    }
  }

  v35 = 0;
  v36 = 0;
  v34 = *v72;
  if (!*v72)
  {
    v34 = "[anonymous]";
  }

  v33 = *__error();
  v32 = *(v72 + 16);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v81, v34, __ptr[0], SHIDWORD(__ptr[0]));
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s: found\n    ldcmd->cmd = %#x\n    ldcmd->cmdsize = %u", v81, 0x18u);
  }

  *__error() = v33;
  v66 = fread(&v35, 0x10uLL, 1uLL, v68);
  v71 = sub_10004887C("linkedit", v68, v66, 0x58u, *(v72 + 16));
  if (!v71)
  {
    LODWORD(v35) = sub_10001E37C(v72, v35);
    HIDWORD(v35) = sub_10001E37C(v72, HIDWORD(v35));
    LODWORD(v36) = sub_10001E37C(v72, v36);
    HIDWORD(v36) = sub_10001E37C(v72, HIDWORD(v36));
    v31 = *v72;
    if (!*v72)
    {
      v31 = "[anonymous]";
    }

    v30 = *__error();
    v29 = *(v72 + 16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E3D4(v80, v31, v35, SHIDWORD(v35), v36, SHIDWORD(v36));
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}s: parsing\n    cmd->cmd = %#x\n    cmd->cmdsize = %u\n    cmd->dataoff = %u\n    cmd->datasize = %u", v80, 0x24u);
    }

    *__error() = v30;
    do
    {
      v71 = sub_10001E468(v72, v68, &v35);
      if (v71)
      {
        if (v71 == 89)
        {
          v25 = *v72;
          if (!*v72)
          {
            v25 = "[anonymous]";
          }

          v24 = *__error();
          v23 = *(v72 + 16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_1000095D4(v78, v25);
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s: no more cs blobs", v78, 0xCu);
          }

          *__error() = v24;
        }

        else
        {
          v22 = *v72;
          if (!*v72)
          {
            v22 = "[anonymous]";
          }

          v21 = *__error();
          v20 = *(v72 + 16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10001E5A4(v77, v22, __ptr[0], i, v71);
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: failed to extract cdhash: cmd = %#x, index = %lu: %{darwin.errno}d", v77, 0x22u);
          }

          *__error() = v21;
        }
      }

      else
      {
        v28 = *v72;
        if (!*v72)
        {
          v28 = "[anonymous]";
        }

        v27 = *__error();
        v26 = *(v72 + 16);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10001E538(v79, v28, __ptr[0], i);
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}s: extracted cdhash: cmd = %#x, idx = %lu", v79, 0x1Cu);
        }

        *__error() = v27;
      }
    }

    while (!v71);
LABEL_78:
    if ((*(v72 + 32) & 4) != 0)
    {
      v9 = sub_1000216E4(*(v72 + 16));
      v71 = sub_100022F74(v9, v68, *(v72 + 48));
      if (v71)
      {
        v8 = *v72;
        if (!*v72)
        {
          v8 = "[anonymous]";
        }

        v7 = *__error();
        v6 = *(v72 + 16);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v73, v8, v71);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to compute file hash: %{darwin.errno}d", v73, 0x12u);
        }

        *__error() = v7;
        goto LABEL_89;
      }

      v9[1] = *(v72 + 40);
      *(v72 + 40) = v9;
      *v9 |= 1uLL;
      v71 = 0;
    }

    if (*(v72 + 40))
    {
      v71 = 0;
    }

    else
    {
      v71 = 90;
    }
  }

LABEL_89:
  v5 = v71;
  sub_100010FB4(&v68);
  return v5;
}

uint64_t sub_10001E37C(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    return sub_10000E154(a2);
  }

  return v3;
}

uint64_t sub_10001E3D4(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  return result;
}

uint64_t sub_10001E468(uint64_t a1, FILE *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  v5 = sub_1000216E4(*(a1 + 16));
  v4 = v5;
  v6 = sub_100021918(v5, *(v9 + 40), v8, v7);
  if (!v6)
  {
    v5[1] = *(v9 + 40);
    *(v9 + 40) = v5;
    *v5 |= 1uLL;
    v4 = 0;
  }

  sub_100023DE0(&v4);
  return v6;
}

uint64_t sub_10001E538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_10001E5A4(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

char *sub_10001E620(uint64_t a1)
{
  v16[1] = a1;
  v16[0] = 0;
  v15 = *(a1 + 124);
  if ((v15 & 0xFFFFFFu) < 0x12uLL)
  {
    v14 = (&unk_10007A6F0 + 24 * (v15 & 0xFFFFFF));
    v13 = "";
    if ((v15 & 0x1000000) != 0)
    {
      v3 = asprintf(v16, "%s%s%s", v14[1], v14[2], "64");
    }

    else
    {
      if ((v15 & 0x2000000) != 0)
      {
        v13 = "64_32";
      }

      v3 = asprintf(v16, "%s%s%s", v14[1], v14[2], v13);
    }

    v24 = v3;
    if (v3 < 0)
    {
      v23 = 0;
      memset(v35, 0, sizeof(v35));
      v21 = 0;
      v20 = 3;
      v19 = &_os_log_default;
      v18 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v20 &= ~1u;
      }

      if (v20)
      {
        v7 = v20;
        v8 = v19;
        v9 = v18;
        v4 = __error();
        v5 = strerror(*v4);
        sub_100003120(v34, v5);
        v17 = _os_log_send_and_compose_impl(v7, &v23, v35, 80, &_mh_execute_header, v8, v9, "error printing buffer: %s", v34);
        v21 = v17;
      }

      v16[2] = v21;
      v22 = v21;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001E988);
    }
  }

  else
  {
    v33 = asprintf(v16, "%#x", v15);
    if (v33 < 0)
    {
      v32 = 0;
      memset(__b, 0, sizeof(__b));
      v30 = 0;
      v29 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v29 &= ~1u;
      }

      if (v29)
      {
        v10 = v29;
        v11 = oslog;
        v12 = type;
        v1 = __error();
        v2 = strerror(*v1);
        sub_100003120(v36, v2);
        v26 = _os_log_send_and_compose_impl(v10, &v32, __b, 80, &_mh_execute_header, v11, v12, "error printing buffer: %s", v36);
        v30 = v26;
      }

      v25 = v30;
      v31 = v30;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001E7C8);
    }
  }

  return v16[0];
}

void sub_10001E9CC(void **a1, uint64_t a2)
{
  v7 = a1;
  v6 = 0;
  i = 0;
  v4 = 0;
  v6 = *a1;
  if (v6)
  {
    sub_10004C66C(v6[14], a2);
    for (i = v6[5]; ; i = v4)
    {
      v2 = 0;
      if (i)
      {
        v4 = i[1];
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        break;
      }

      if (v6[5] == i)
      {
        v6[5] = v6[5][1];
      }

      else
      {
          ;
        }

        j[1] = *(j[1] + 8);
      }

      sub_100023DE0(&i);
    }

    sub_100049728(v6);
    free(v6);
    *v7 = 0;
  }
}

uint64_t sub_10001EB34(uint64_t a1, int a2, char *const *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  memset(__b, 0, sizeof(__b));
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
      JUMPOUT(0x10001ED18);
    }

    switch(v10)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'P':
        __b[0] |= 8uLL;
        sub_10004860C(0, 1uLL, "will persist cryptex");
        break;
      case 'R':
        __b[0] |= 0x20uLL;
        sub_10004860C(0, 1uLL, "will install cryptex as readWrite");
        break;
      case 'V':
        __b[3] = optarg;
        break;
      case 'l':
        __b[0] |= 4uLL;
        sub_10004860C(0, 1uLL, "will lock system codex down");
        break;
      case 'p':
        __b[0] |= 1uLL;
        if (optarg)
        {
          if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
          {
            errx(64, "invalid output format: %s", optarg);
          }

          __b[5] = optarg;
          sub_1000483C8(1uLL, "print format: %s", optarg);
        }

        break;
      case 'r':
        __b[0] |= 0x10uLL;
        sub_10004860C(0, 1uLL, "will limit load cryptex jobs to REM");
        break;
      case 't':
        __b[4] = optarg;
        sub_10004860C(0, 1uLL, "will use ticket %s in place of personalization ticket", optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10001EF94);
    }
  }

  v13 += optind;
  v14 -= optind;
  if (v14 < 1)
  {
    errx(64, "a cryptex bundle directory must be provided");
  }

  __b[1] = *v13;
  v12 = sub_10001F040(__b);
  return sysexit_np();
}

uint64_t sub_10001F040(uint64_t a1)
{
  v75 = a1;
  v74 = 0;
  v73 = -1;
  v72 = sub_100048090();
  v71 = 0;
  v70 = 0;
  v69 = 0;
  memset(__b, 0, sizeof(__b));
  v79 = 0;
  v78 = 0;
  v77 = 0;
  LODWORD(__b[0]) = 1;
  memset(&__b[1], 0, 36);
  v67 = **(v72 + 5);
  v66 = -1;
  memset(__dst, 0, sizeof(__dst));
  __dst[0] = 6;
  v65 = 0;
  if (*(v72 + 4))
  {
    memcpy(__dst, (*(v72 + 4) + 24), sizeof(__dst));
    v65 = __dst;
  }

  if (!v65)
  {
    v64 = &_img4_chip_cryptex1_generic;
    v73 = img4_chip_instantiate();
    if (v73)
    {
      warnc(v73, "failed to instantiate host ap");
LABEL_92:
      v76 = v73;
      v55 = 1;
      goto LABEL_93;
    }

    v65 = __dst;
  }

  v66 = open(*(v75 + 8), 0x100000);
  v81 = v66;
  if (v66 < 0)
  {
    v73 = *__error();
    warn("open: %s", *(v75 + 8));
    goto LABEL_92;
  }

  v71 = cryptex_bundle_create_with_directory();
  v73 = cryptex_identity_set_chip();
  if (v73)
  {
    warnc(v73, "failed to set host identity to chip");
    goto LABEL_92;
  }

  memcpy(v63, __b, sizeof(v63));
  if ((cryptex_bundle_copy_cryptex2() & 1) == 0)
  {
    v62 = sub_100048090();
    v41 = 1;
    if (v62[1] <= 1uLL)
    {
      v41 = v62[2] > 1uLL;
    }

    if (v41)
    {
      v1 = 999;
    }

    else
    {
      v1 = 3;
    }

    v61 = v1;
    v40 = 1;
    if (v62[1] <= 1uLL)
    {
      v40 = v62[2] > 1uLL;
    }

    v2 = 2000;
    if (!v40)
    {
      v2 = 200;
    }

    v60 = v2;
    if (v74)
    {
      v39 = sub_100017530(v74, v61, v60);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v58 = strdup("unknown error");
      v3 = strlen("unknown error");
      v117 = "known-constant allocation";
      v116 = v58;
      v115 = v3;
      if (!v58)
      {
        v114 = 0;
        memset(v124, 0, sizeof(v124));
        v112 = 0;
        v111 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v111 &= ~1u;
        }

        if (v111)
        {
          v36 = v111;
          v37 = oslog;
          v38 = type;
          v34 = v117;
          v35 = v115;
          v4 = __error();
          v5 = strerror(*v4);
          sub_1000031B0(v123, v34, v35, v5);
          v108 = _os_log_send_and_compose_impl(v36, &v114, v124, 80, &_mh_execute_header, v37, v38, "allocation failed: obj = %s, size = %lu, error = %s", v123, 32, v17);
          v112 = v108;
        }

        v107 = v112;
        v113 = v112;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10001F4F0);
      }

      v56 = v58;
      v39 = v58;
    }

    v59 = v39;
    warnx("failed to copy cryptex from bundle\n%s", v39);
    sub_100002DE4(&v59);
    v73 = sub_100018A78(v74);
    goto LABEL_92;
  }

  v69 = cryptex_attr_create();
  cryptex_attr_set_persistence();
  cryptex_attr_set_nonce_persistence();
  cryptex_attr_set_authentication();
  if ((*v75 & 0x10) != 0)
  {
    cryptex_attr_set_limit_load_to_rem();
  }

  if ((*v75 & 0x20) != 0)
  {
    warn("Installing cryptexes as READWRITE is only supported on macOS.");
    v76 = 45;
    v55 = 1;
  }

  else
  {
    if (*(v75 + 32))
    {
      v54 = open(*(v75 + 32), 0);
      v80 = v54;
      if (v54 < 0)
      {
        v73 = *__error();
        warn("open: %s", *(v75 + 32));
        v55 = 2;
      }

      else
      {
        v73 = cryptex_attach_personalized_manifest();
        if (v73)
        {
          warnc(v73, "failed to attach personalized manifest");
          v55 = 2;
        }

        else
        {
          v55 = 0;
        }
      }

      sub_1000038DC(&v54);
      if (v55)
      {
        if (v55 != 2)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    if (*(v72 + 4))
    {
      v74 = sub_10004042C(*(v72 + 4), v70, v69);
      if (v74)
      {
        v53 = sub_100048090();
        v33 = 1;
        if (v53[1] <= 1uLL)
        {
          v33 = v53[2] > 1uLL;
        }

        if (v33)
        {
          v6 = 999;
        }

        else
        {
          v6 = 3;
        }

        v52 = v6;
        v32 = 1;
        if (v53[1] <= 1uLL)
        {
          v32 = v53[2] > 1uLL;
        }

        v7 = 2000;
        if (!v32)
        {
          v7 = 200;
        }

        v51 = v7;
        if (v74)
        {
          v31 = sub_100017530(v74, v52, v51);
        }

        else
        {
          v48 = "unknown error";
          v83 = "unknown error";
          v49 = strdup("unknown error");
          v8 = strlen("unknown error");
          v106 = "known-constant allocation";
          v105 = v49;
          v104 = v8;
          if (!v49)
          {
            v103 = 0;
            memset(v122, 0, sizeof(v122));
            v101 = 0;
            v100 = 3;
            v99 = &_os_log_default;
            v98 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v100 &= ~1u;
            }

            if (v100)
            {
              v28 = v100;
              v29 = v99;
              v30 = v98;
              v26 = v106;
              v27 = v104;
              v9 = __error();
              v10 = strerror(*v9);
              sub_1000031B0(v121, v26, v27, v10);
              v97 = _os_log_send_and_compose_impl(v28, &v103, v122, 80, &_mh_execute_header, v29, v30, "allocation failed: obj = %s, size = %lu, error = %s", v121, 32, v17);
              v101 = v97;
            }

            v96 = v101;
            v102 = v101;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10001F944);
          }

          v47 = v49;
          v31 = v49;
        }

        v50 = v31;
        warnx("Install failed.\n%s", v31);
        sub_100002DE4(&v50);
      }

      v76 = sub_100018A78(v74);
      v55 = 1;
    }

    else
    {
      if (cryptex_install2())
      {
        if ((*v75 & 4) != 0 && (sub_10004860C(0, 1uLL, "locking down codex"), (v73 = cryptex_lockdown()) != 0))
        {
          warnc(v73, "failed to lock down system codex");
        }

        else if (*v75)
        {
          v73 = sub_10001FD7C(v70[6], *(v75 + 40));
          if (v73)
          {
            warnc(v73, "failed to print cryptex information");
          }
        }

        goto LABEL_92;
      }

      v46 = sub_100048090();
      v25 = 1;
      if (v46[1] <= 1uLL)
      {
        v25 = v46[2] > 1uLL;
      }

      if (v25)
      {
        v11 = 999;
      }

      else
      {
        v11 = 3;
      }

      v45 = v11;
      v24 = 1;
      if (v46[1] <= 1uLL)
      {
        v24 = v46[2] > 1uLL;
      }

      v12 = 2000;
      if (!v24)
      {
        v12 = 200;
      }

      v44 = v12;
      if (v74)
      {
        v23 = sub_100017530(v74, v45, v44);
      }

      else
      {
        v82 = "unknown error";
        v42 = strdup("unknown error");
        v13 = strlen("unknown error");
        v95 = "known-constant allocation";
        v94 = v42;
        v93 = v13;
        if (!v42)
        {
          v92 = 0;
          memset(v120, 0, sizeof(v120));
          v90 = 0;
          v89 = 3;
          v88 = &_os_log_default;
          v87 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v89 &= ~1u;
          }

          if (v89)
          {
            v20 = v89;
            v21 = v88;
            v22 = v87;
            v18 = v95;
            v19 = v93;
            v14 = __error();
            v15 = strerror(*v14);
            sub_1000031B0(v119, v18, v19, v15);
            v86 = _os_log_send_and_compose_impl(v20, &v92, v120, 80, &_mh_execute_header, v21, v22, "allocation failed: obj = %s, size = %lu, error = %s", v119, 32, v17);
            v90 = v86;
          }

          v85 = v90;
          v91 = v90;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001FC04);
        }

        v23 = v42;
      }

      v43 = v23;
      warnx("failed to install cryptex\n%s", v23);
      sub_100002DE4(&v43);
      v76 = sub_100018A78(v74);
      v55 = 1;
    }
  }

LABEL_93:
  sub_1000038DC(&v66);
  sub_1000030D0(&v69);
  sub_1000030D0(&v70);
  sub_1000030D0(&v71);
  sub_100006B40(&v74);
  return v76;
}

uint64_t sub_10001FD7C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v12 = cryptex_core_parse_info_asset();
  if (v12)
  {
    warnc(v12, "failed to parse cryptex info asset for printing");
  }

  else
  {
    warnx("failed to get cryptex identifier or version from info asset");
    return 22;
  }

  return v12;
}

uint64_t sub_100020044(const void *a1, size_t a2, uint64_t a3, unint64_t a4, _DWORD *a5)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = sub_100048090();
  v19 = 0;
  *v26 = -1;
  v18 = 0;
  v17 = malloc_type_calloc(v22 + 3, 8uLL, 0x10040436913F5uLL);
  v16 = -1;
  v15 = -1;
  v10 = 1;
  if (v20[2] <= 1uLL)
  {
    v10 = v20[1] > 1uLL;
  }

  v14 = v10;
  v13 = -1;
  v12 = -1;
  *v17 = "/bin/zsh";
  v17[1] = "/dev/stdin";
  for (i = 0; i < v22; ++i)
  {
    v17[i + 2] = *(v23 + 8 * i);
  }

  if (pipe(v26))
  {
    v5 = __error();
    warnc(*v5, "pipe");
    v19 = *__error();
  }

  else
  {
    posix_spawn_file_actions_init(&v18);
    posix_spawn_file_actions_addclose(&v18, v26[1]);
    posix_spawn_file_actions_adddup2(&v18, v26[0], 0);
    posix_spawn_file_actions_addclose(&v18, v26[0]);
    if (!v14)
    {
      v13 = open("/dev/null", 2);
      posix_spawn_file_actions_adddup2(&v18, v13, 1);
      posix_spawn_file_actions_addclose(&v18, v13);
    }

    if (posix_spawn(&v16, *v17, &v18, 0, v17, environ))
    {
      v6 = __error();
      warnc(*v6, "posix_spawn script");
      v19 = *__error();
    }

    else
    {
      close_drop_np();
      if (write(v26[1], v25, v24) < 0)
      {
        v7 = __error();
        warnc(*v7, "write script data");
        v19 = *__error();
      }

      else
      {
        close_drop_np();
        while (1)
        {
          while (1)
          {
            v15 = waitpid(v16, &v12, 0);
            if (v15 != -1)
            {
              break;
            }

            if (*__error() != 4)
            {
              v19 = *__error();
              warnc(v19, "waitpid[%d]", v16);
              goto LABEL_29;
            }
          }

          if (v15 == v16)
          {
            break;
          }

          warnx("waitpid: %d != %d", v15, v16);
        }

        if ((v12 & 0x7F) == 0x7F || (v12 & 0x7F) == 0)
        {
          if ((v12 & 0x7F) != 0)
          {
            v19 = 35;
            warnc(35, "script exited with an unknown state");
          }

          else
          {
            v19 = 0;
            if (v21)
            {
              *v21 = BYTE1(v12);
            }
          }
        }

        else
        {
          v19 = 4;
          warnc(4, "script exited with signal: %d", v12 & 0x7F);
        }
      }
    }
  }

LABEL_29:
  posix_spawn_file_actions_destroy(&v18);
  close_drop_optional_np();
  close_drop_optional_np();
  v9 = v19;
  sub_1000038DC(&v13);
  sub_100002DE4(&v17);
  return v9;
}

void *sub_1000204C0(const char *a1)
{
  v8 = a1;
  v7 = 0;
  v6 = -1;
  memset(__b, 0, sizeof(__b));
  object = 0;
  if (v8)
  {
    v6 = open(v8, 0);
    if (v6 == -1)
    {
      v7 = *__error();
      warnc(v7, "failed to open plist");
    }

    else
    {
      v7 = sub_10004B524(v6, __b);
      if (v7)
      {
        warnc(v7, "failed to read plist");
      }

      else if (__b[1] <= 0x100000uLL)
      {
        object = xpc_create_from_plist();
        v10 = object;
        v9 = &_xpc_type_dictionary;
        if (object && (type = xpc_get_type(v10), type == v9))
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          warnx("invalid plist, not a dictionary");
          os_release(object);
          object = 0;
          v7 = 22;
        }
      }

      else
      {
        warnx("plist too large: %lu bytes (max is : %d)", __b[1], 0x100000);
      }
    }
  }

  sub_10004C66C(__b, v1);
  sub_1000038DC(&v6);
  return object;
}

uint64_t sub_100020670(uint64_t a1, int a2, char **a3)
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
  v10 = getopt_long(v14, v11, *(v15 + 32), *(v15 + 40), &v9);
  if (v10 != -1)
  {
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
      JUMPOUT(0x100020848);
    }

    if (v10 != 58)
    {
      if (v10 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000208C4);
      }

      errx(64, "unknown option: %s", v6);
    }

    errx(64, "missing argument for option: %s", *v7);
  }

  v13 += optind;
  v14 -= optind;
  if (v14 < 1)
  {
    errx(64, "a device action must be provided");
  }

  v12 = sub_100020964();
  return sysexit_np();
}

uint64_t sub_100020994(uint64_t a1, int a2, char *const *a3)
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
      JUMPOUT(0x100020B70);
    }

    switch(v11)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'f':
        if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
        {
          errx(64, "invalid output format: %s", optarg);
        }

        v8 = optarg;
        sub_1000483C8(1uLL, "output format: %s", optarg);
        break;
      case 'o':
        v9 = optarg;
        sub_1000483C8(1uLL, "output file path: %s", optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100020CD0);
    }
  }

  if (v9 && !v8)
  {
    v8 = "plist";
  }

  v14 += optind;
  v15 -= optind;
  v13 = sub_100020D78(&v8);
  return sysexit_np();
}

uint64_t sub_100020D78(const char **a1)
{
  memset(__b, 0, sizeof(__b));
  __b[0] = 6;
  v2 = sub_100048090();
  memset(v5, 0, sizeof(v5));
  LOWORD(v5[0]) = 6;
  v5[1] = &_img4_chip_cryptex1_generic;
  memcpy(__b, v5, sizeof(__b));
  if (v2[4])
  {
    return sub_100020ED8(a1, v2[4] + 24);
  }

  else
  {
    v3 = img4_chip_instantiate();
    if (v3)
    {
      warnc(v3, "failed to instantiate host ap");
    }

    else
    {
      return sub_100020ED8(a1, __b);
    }
  }

  return v3;
}

uint64_t sub_100020ED8(const char **a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  if (*a1)
  {
    if (!strcmp(*v8, "plist"))
    {
      v5 = sub_10002DD94(v7);
      if (v8[1])
      {
        v6 = sub_10002D09C(v5, v8[1]);
      }

      else
      {
        v6 = sub_10002CD94(v5);
      }
    }

    else if (!strcmp(*v8, "json"))
    {
      v4 = sub_10002DD94(v7);
      if (v8[1])
      {
        v6 = sub_10002D234(v4, v8[1]);
      }

      else
      {
        v6 = sub_10002CF18(v4);
      }
    }
  }

  else
  {
    if (*(v7 + 16))
    {
      sub_10004860C(__stdoutp, 0, "CEPO = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CEPO = %#x", *(v7 + 24));
    }

    if ((*(v7 + 16) & 2) != 0)
    {
      sub_10004860C(__stdoutp, 0, "BORD = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "BORD = %#x", *(v7 + 28));
    }

    if ((*(v7 + 16) & 4) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CHIP = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CHIP = %#x", *(v7 + 32));
    }

    if ((*(v7 + 16) & 8) != 0)
    {
      sub_10004860C(__stdoutp, 0, "SDOM = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "SDOM = %#x", *(v7 + 36));
    }

    if ((*(v7 + 16) & 0x8000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "FCHP = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "FCHP = %#x", *(v7 + 128));
    }

    if ((*(v7 + 16) & 0x10000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "TYPE = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "TYPE = %#x", *(v7 + 132));
    }

    if ((*(v7 + 16) & 0x20000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "STYP = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "STYP = %#x", *(v7 + 136));
    }

    if ((*(v7 + 16) & 0x40000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CLAS = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CLAS = %#x", *(v7 + 140));
    }

    if ((*(v7 + 16) & 0x10) != 0)
    {
      sub_10004860C(__stdoutp, 0, "ECID = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "ECID = %#llx", *(v7 + 40));
    }

    if ((*(v7 + 16) & 0x20) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CPRO = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CPRO = %#x", *(v7 + 48) & 1);
    }

    if ((*(v7 + 16) & 0x40) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CSEC = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CSEC = %#x", *(v7 + 49) & 1);
    }

    if ((*(v7 + 16) & 0x80) != 0)
    {
      sub_10004860C(__stdoutp, 0, "EPRO = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "EPRO = %#x", *(v7 + 50) & 1);
    }

    if ((*(v7 + 16) & 0x100) != 0)
    {
      sub_10004860C(__stdoutp, 0, "ESEC = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "ESEC = %#x", *(v7 + 51) & 1);
    }

    if ((*(v7 + 16) & 0x400) != 0)
    {
      sub_10004860C(__stdoutp, 0, "RSCH = [not present]");
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "RSCH = %#x", *(v7 + 53) & 1);
    }
  }

  v3 = sub_100018A78(v6);
  sub_100006B40(&v6);
  return v3;
}

void *sub_1000216E4(void *a1)
{
  v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x8709206FuLL);
  v11 = "known-constant allocation";
  v10 = v5;
  v9 = 144;
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
    JUMPOUT(0x100021894);
  }

  sub_10004941C((v5 + 2), (v5 + 7), 64);
  v5[6] = os_retain(a1);
  v5[17] = -1;
  return v5;
}

uint64_t sub_100021918(uint64_t a1, uint64_t a2, FILE *a3, uint64_t a4)
{
  v67 = a1;
  v66 = a2;
  v65 = a3;
  v64 = a4;
  v63 = -1;
  v62 = -1;
  v61 = -1;
  v60 = 0;
  __ptr = 0;
  v59 = 0;
  v57 = 0;
  i = 0;
  v55 = -1;
  memset(__b, 0, sizeof(__b));
  v61 = *(v64 + 8);
  v62 = fseek(v65, v61, 0);
  if (v62)
  {
    v63 = *__error();
    v53 = *__error();
    v52 = *(v67 + 48);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v80, v63);
      _os_log_impl(&_mh_execute_header, v52, type, "fseek [code signature]: %{darwin.errno}d", v80, 8u);
    }

    *__error() = v53;
  }

  else
  {
    v60 = fread(&__ptr, 0xCuLL, 1uLL, v65);
    v63 = sub_10004887C("cs superblob", v65, v60, 0x58u, *(v67 + 48));
    if (!v63)
    {
      LODWORD(__ptr) = sub_10000E154(__ptr);
      HIDWORD(__ptr) = sub_10000E154(HIDWORD(__ptr));
      v59 = sub_10000E154(v59);
      if (__ptr == -86111040)
      {
        v57 = 8 * v59 + 12;
        if (HIDWORD(__ptr) >= v57)
        {
          if (v66)
          {
            if ((*(v66 + 136) & 0x8000000000000000) != 0)
            {
              _os_crash();
              __break(1u);
            }

            v55 = *(v66 + 136);
          }

          for (i = 0; i < v59; ++i)
          {
            v69 = i;
            if (i > 0x7FFFFFFFFFFFFFFFLL)
            {
              _os_crash();
              __break(1u);
            }

            v44 = v69;
            v43 = 0;
            v42 = *(v64 + 8);
            v60 = fread(&v43, 8uLL, 1uLL, v65);
            v63 = sub_10004887C("cs blob index", v65, v60, 0x58u, *(v67 + 48));
            if (!v63)
            {
              LODWORD(v43) = sub_10000E154(v43);
              HIDWORD(v43) = sub_10000E154(HIDWORD(v43));
              v42 += HIDWORD(v43);
              if (sub_10002256C(&v43))
              {
                if (v44 <= v55)
                {
                  v38 = *__error();
                  v37 = *(v67 + 48);
                  v36 = OS_LOG_TYPE_DEBUG;
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    v17 = v37;
                    v18 = v36;
                    sub_1000225FC(v76, i, v55, v43, SHIDWORD(v43));
                    _os_log_impl(&_mh_execute_header, v17, v18, "previously-encountered code directory: superblob idx = %lu, last idx = %ld, type = %#x, off = %u", v76, 0x22u);
                  }

                  v16 = v38;
                  *__error() = v16;
                }

                else
                {
                  v35 = *__error();
                  oslog = *(v67 + 48);
                  v33 = OS_LOG_TYPE_DEBUG;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                  {
                    v14 = oslog;
                    v15 = v33;
                    sub_100009EF8(v75, v43, SHIDWORD(v43));
                    _os_log_impl(&_mh_execute_header, v14, v15, "found code directory: type = %#x, off = %u", v75, 0xEu);
                  }

                  v13 = v35;
                  *__error() = v13;
                  v62 = fseek(v65, v42, 0);
                  if (v62)
                  {
                    v63 = *__error();
                    v32 = *__error();
                    v31 = *(v67 + 48);
                    v30 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      v11 = v31;
                      v12 = v30;
                      sub_1000013C8(v74, v63);
                      _os_log_impl(&_mh_execute_header, v11, v12, "fseek [csidx]: %{darwin.errno}d", v74, 8u);
                    }

                    v10 = v32;
                    *__error() = v10;
                    return v63;
                  }

                  v60 = fread(__b, 0x2CuLL, 1uLL, v65);
                  v63 = sub_10004887C("cs directory", v65, v60, 0x58u, *(v67 + 48));
                  if (v63)
                  {
                    return v63;
                  }

                  __b[1] = sub_10000E154(__b[1]);
                  __b[5] = sub_10000E154(__b[5]);
                  v29 = *__error();
                  v28 = *(v67 + 48);
                  v27 = OS_LOG_TYPE_DEBUG;
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    v8 = v28;
                    v9 = v27;
                    sub_100022670(v73, i, BYTE1(__b[9]), __b[5], __b[1]);
                    _os_log_impl(&_mh_execute_header, v8, v9, "read code directory header: idx = %lu, hash type = %hu, csid offset = %u, length = %u", v73, 0x1Eu);
                  }

                  v7 = v29;
                  *__error() = v7;
                  v26 = fseek(v65, v42, 0);
                  if (v26 == -1)
                  {
                    v25 = 0;
                    memset(v72, 0, sizeof(v72));
                    v24 = 3;
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      v24 = 2;
                    }

                    v4 = __error();
                    sub_1000013C8(v71, *v4);
                    LODWORD(v6) = 8;
                    _os_log_send_and_compose_impl(v24, &v25, v72, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: fseek(bf, csidx_file_off, 0) -> %{errno}d", v71, v6);
                    _os_crash_msg();
                    __break(1u);
                  }

                  v63 = sub_1000226E4(v67, v65, __b);
                  if (!v63)
                  {
                    v68 = i;
                    if (i > 0x7FFFFFFFFFFFFFFFLL)
                    {
                      _os_crash();
                      __break(1u);
                    }

                    *(v67 + 136) = v68;
                    break;
                  }
                }
              }

              else
              {
                v41 = *__error();
                v40 = *(v67 + 48);
                v39 = OS_LOG_TYPE_DEBUG;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  v20 = v40;
                  v21 = v39;
                  sub_1000013C8(v77, v43);
                  _os_log_impl(&_mh_execute_header, v20, v21, "not a code directory: %#x", v77, 8u);
                }

                v19 = v41;
                *__error() = v19;
              }
            }
          }

          if ((*(v67 + 136) & 0x8000000000000000) != 0)
          {
            v23 = *__error();
            v22 = *(v67 + 48);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              sub_100003098(v70, i);
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "exhausted cs blobs: cnt = %lu", v70, 0xCu);
            }

            *__error() = v23;
            return 89;
          }
        }

        else
        {
          v63 = 84;
          v47 = *__error();
          v46 = *(v67 + 48);
          v45 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_100003160(v78, SHIDWORD(__ptr), v57);
            _os_log_impl(&_mh_execute_header, v46, v45, "invalid cs super blob size: actual = %u, expected = %lu", v78, 0x12u);
          }

          *__error() = v47;
        }
      }

      else
      {
        v63 = 88;
        v50 = *__error();
        v49 = *(v67 + 48);
        v48 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100009EF8(v79, __ptr, v63);
          _os_log_impl(&_mh_execute_header, v49, v48, "bad cs juju: %#x: %{darwin.errno}d", v79, 0xEu);
        }

        *__error() = v50;
      }
    }
  }

  return v63;
}

uint64_t sub_1000225FC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t sub_100022670(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

uint64_t sub_1000226E4(uint64_t a1, FILE *a2, uint64_t a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = -1;
  v27 = 0;
  if (*(a3 + 4) >= 0x2CuLL)
  {
    v26 = *(v29 + 20);
    if (v26 >= *(v29 + 4))
    {
      v28 = 88;
      v22 = *__error();
      v21 = *(v31 + 48);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100024124(v51, v26, *(v29 + 4), v28);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "invalid identity offset: actual = %u, expected < %u: %{darwin.errno}d", v51, 0x14u);
      }

      *__error() = v22;
    }

    else
    {
      v20 = *__error();
      v19 = *(v31 + 48);
      if (os_log_type_enabled(*(v31 + 48), OS_LOG_TYPE_DEBUG))
      {
        sub_100009EF8(v50, *(v29 + 37), *(v29 + 4));
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "reading code directory: hash type = %u, length = %u", v50, 0xEu);
      }

      *__error() = v20;
      v27 = malloc_type_malloc(*(v29 + 4), 0x1E0DA44DuLL);
      if (v27)
      {
        v25 = fread(v27, *(v29 + 4), 1uLL, v30);
        v28 = sub_10004887C("code directory", v30, v25, 0x58u, *(v31 + 48));
        if (!v28)
        {
          sub_100023540(v31, *(v29 + 37), v27, *(v29 + 4));
          v15 = strnlen(v27 + v26, *(v27 + 1) - v26) + 1;
          if (_dispatch_is_multithreaded())
          {
            v46 = 1;
            v45 = v15;
            v44 = 0;
            while (1)
            {
              v44 = malloc_type_calloc(v46, v45, 0x8A375538uLL);
              if (v44)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }

            v16 = v44;
          }

          else
          {
            v33 = 1;
            v32 = v15;
            v16 = malloc_type_calloc(1uLL, v15, 0x8709206FuLL);
            v43 = "known-constant allocation";
            v42 = v16;
            v41 = v15;
            if (!v16)
            {
              v40 = 0;
              memset(__b, 0, sizeof(__b));
              v38 = 0;
              v37 = 3;
              v36 = &_os_log_default;
              v35 = OS_LOG_TYPE_ERROR;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v37 &= ~1u;
              }

              if (v37)
              {
                v9 = v43;
                v10 = v41;
                v4 = __error();
                v5 = strerror(*v4);
                sub_1000031B0(v53, v9, v10, v5);
                v38 = _os_log_send_and_compose_impl(v37, &v40, __b, 80, &_mh_execute_header, v36, v35, "allocation failed: obj = %s, size = %lu, error = %s", v53, 32, v7);
              }

              v34 = v38;
              v39 = v38;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100022D14);
            }
          }

          *(v31 + 128) = v16;
          __strlcpy_chk();
          v28 = 0;
          v14 = *__error();
          v13 = *(v31 + 48);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_100003120(v48, *(v31 + 128));
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "code signing identity: %s", v48, 0xCu);
          }

          *__error() = v14;
        }
      }

      else
      {
        v28 = *__error();
        v18 = *__error();
        v17 = *(v31 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v3 = __error();
          sub_1000013C8(v49, *v3);
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", v49, 8u);
        }

        *__error() = v18;
      }
    }
  }

  else
  {
    v28 = 88;
    v24 = *__error();
    oslog = *(v31 + 48);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000240C0(v52, *(v29 + 4), 44, v28);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "code directory too small: actual = %u, expected >= %lu: %{darwin.errno}d", v52, 0x18u);
    }

    *__error() = v24;
  }

  if (!v28)
  {
    v12 = *__error();
    v11 = *(v31 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100024184(v47, *(v31 + 128), *(v31 + 112), v31 + 56);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "code directory: identity = %s, hash = %.*P", v47, 0x1Cu);
    }

    *__error() = v12;
  }

  v8 = v28;
  sub_100002DE4(&v27);
  return v8;
}

uint64_t sub_100022F74(uint64_t a1, FILE *a2, unsigned __int8 a3)
{
  v23 = a1;
  __stream = a2;
  v21 = a3;
  v20 = -1;
  v19 = 0;
  __ptr = 0;
  __size = 0;
  v16 = 0;
  v15 = fseek(a2, 0, 2);
  if (v15 == -1)
  {
    v14 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = 2;
    }

    v3 = __error();
    sub_1000013C8(v49, *v3);
    _os_log_send_and_compose_impl(v13, &v14, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: fseek(bf, 0, 2) -> %{errno}d", v49, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000230E4);
  }

  v19 = ftell(__stream);
  v44 = v19;
  if (v19 < 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100023118);
  }

  __size = v44;
  rewind(__stream);
  if (_dispatch_is_multithreaded())
  {
    v47 = v44;
    v46 = 0;
    while (1)
    {
      v46 = malloc_type_malloc(v47, 0x5C008F58uLL);
      if (v46)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v12 = v46;
  }

  else
  {
    size = v44;
    v12 = malloc_type_malloc(v44, 0x2F48DA65uLL);
    v43 = "known-constant allocation";
    v42 = v12;
    v41 = v44;
    if (!v12)
    {
      v40 = 0;
      memset(v54, 0, sizeof(v54));
      v38 = 0;
      v37 = 3;
      v36 = &_os_log_default;
      v35 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v37 &= ~1u;
      }

      if (v37)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v53, v43, v41, v5);
        v38 = _os_log_send_and_compose_impl(v37, &v40, v54, 80, &_mh_execute_header, v36, v35, "allocation failed: obj = %s, size = %lu, error = %s", v53, 32, v10);
      }

      v34 = v38;
      v39 = v38;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000232ACLL);
    }
  }

  __ptr = v12;
  v16 = fread(v12, __size, 1uLL, __stream);
  v20 = sub_10004887C("unsigned file", __stream, v16, 0x58u, *(v23 + 48));
  if (!v20)
  {
    sub_100023540(v23, v21, __ptr, __size);
    __s1 = "file-digest";
    v11 = strdup("file-digest");
    v33 = "known-constant allocation";
    v32 = v11;
    v31 = strlen("file-digest");
    if (!v11)
    {
      v30 = 0;
      memset(v52, 0, sizeof(v52));
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
        v6 = __error();
        v7 = strerror(*v6);
        sub_1000031B0(v51, v33, v31, v7);
        v28 = _os_log_send_and_compose_impl(v27, &v30, v52, 80, &_mh_execute_header, v26, v25, "allocation failed: obj = %s, size = %lu, error = %s", v51, 32, v33);
      }

      v24 = v28;
      v29 = v28;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000234DCLL);
    }

    *(v23 + 128) = v11;
    v20 = 0;
  }

  v9 = v20;
  sub_100002DE4(&__ptr);
  return v9;
}

int *sub_100023540(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v23 = &v42;
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = sub_1000241F8(a2);
  v4 = (v38[1] + v38[2] + 19) >> 3;
  v37 = &v14;
  v24 = (8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = &v14 - v24;
  v36[1] = v5;
  bzero(&v14 - v24, v6);
  if (*v38 >= 0x31)
  {
    v7 = v23;
    v36[0] = 0;
    *(v23 + 15) = 0u;
    *(v7 + 13) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 7) = 0u;
    v34 = 0;
    v33 = 3;
    v32 = &_os_log_default;
    v31 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v33 &= ~1u;
    }

    if (v33)
    {
      v20 = v33;
      v21 = v32;
      v22 = v31;
      v8 = *v38;
      v19 = v44;
      sub_100003098(v44, v8);
      v30 = _os_log_send_and_compose_impl(v20, v36, v45, 80, &_mh_execute_header, v21, v22, "unexpected failure: unsupported digest length: %lu", v19);
      v34 = v30;
    }

    v29 = v34;
    v35 = v34;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023720);
  }

  ccdigest_init();
  ccdigest_update();
  sub_1000243C4(v38, v25, *v23 + 56);
  v28 = *__error();
  v27 = *(*v23 + 48);
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v16 = v27;
    v17 = v26;
    v10 = *v38;
    v11 = *v23 + 56;
    v18 = v43;
    sub_100024404(v43, v10, v11);
    _os_log_impl(&_mh_execute_header, v16, v17, "computed digest: %.*P", v18, 0x12u);
  }

  v15 = v28;
  result = __error();
  *result = v15;
  v13 = v23;
  *(*v23 + 104) = v41;
  *(*v13 + 112) = *v38;
  v14 = v37;
  return result;
}

size_t sub_100023874(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __memcpy_chk();
  *(a1 + 104) = a3[20];
  *(a1 + 112) = 20;
  *(a1 + 120) = a3[21];
  *(a1 + 121) = a3[22];
  v15 = "trust-cache-digest";
  v7 = strdup("trust-cache-digest");
  result = strlen("trust-cache-digest");
  v14 = "known-constant allocation";
  v13 = v7;
  v12 = result;
  if (!v7)
  {
    v11 = 0;
    memset(__b, 0, sizeof(__b));
    v10 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = 2;
    }

    v4 = __error();
    v5 = strerror(*v4);
    sub_1000031B0(v16, v14, v12, v5);
    _os_log_send_and_compose_impl(v10, &v11, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v16, 32, v6);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023A70);
  }

  *(a1 + 128) = v7;
  return result;
}

uint64_t sub_100023AB8(uint64_t a1, uint64_t a2)
{
  __memcpy_chk();
  *(a1 + 120) = *(a2 + 120);
  __s = *(a2 + 128);
  if (_dispatch_is_multithreaded())
  {
    v16 = __s;
    v15 = 0;
    while (1)
    {
      result = strdup(v16);
      v15 = result;
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v6 = v15;
  }

  else
  {
    v14 = __s;
    v6 = strdup(__s);
    result = strlen(__s);
    v13 = "known-constant allocation";
    v12 = v6;
    v11 = result;
    if (!v6)
    {
      v10 = 0;
      memset(__b, 0, sizeof(__b));
      v9 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 = 2;
      }

      v3 = __error();
      v4 = strerror(*v3);
      sub_1000031B0(v17, v13, v11, v4);
      _os_log_send_and_compose_impl(v9, &v10, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v17, 32, v13);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100023CA0);
    }
  }

  *(a1 + 128) = v6;
  return result;
}

void sub_100023DE0(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    os_release(v1[6]);
    free(v1[16]);
    free(v1);
    *a1 = 0;
  }
}

uint64_t sub_100023E48(uint64_t a1, char *a2)
{
  v7 = a1;
  __s1 = a2;
  v5 = sub_1000164C0(a2);
  if (!v5)
  {
    v4 = 0;
    memset(__b, 0, sizeof(__b));
    v3 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = 2;
    }

    sub_100003098(v8, v5);
    _os_log_send_and_compose_impl(v3, &v4, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: trust_cache_rem_cfg_str_valid(rem_cfg_str) -> %llu", v8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023F8CLL);
  }

  result = strcmp(__s1, "before");
  if (result)
  {
    result = strcmp(__s1, "after");
    if (result)
    {
      result = strcmp(__s1, "none");
      if (result)
      {
        result = strcmp(__s1, "both");
        if (result)
        {
          __break(1u);
        }

        else
        {
          *(v7 + 120) |= 0x40u;
          *(v7 + 120) |= 0x80u;
        }
      }

      else
      {
        *(v7 + 120) &= ~0x40u;
        *(v7 + 120) &= ~0x80u;
      }
    }

    else
    {
      *(v7 + 120) &= ~0x40u;
      *(v7 + 120) |= 0x80u;
    }
  }

  else
  {
    *(v7 + 120) |= 0x40u;
    *(v7 + 120) &= ~0x80u;
  }

  return result;
}

uint64_t sub_1000240C0(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_100024124(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

uint64_t sub_100024184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 16;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 48;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_1000241F8(unsigned __int8 a1)
{
  v4 = a1;
  if (a1 == 1)
  {
    return ccsha1_di();
  }

  if (a1 == 3 || a1 == 2)
  {
    return ccsha256_di();
  }

  if (a1 != 4)
  {
    v3 = 0;
    memset(__b, 0, sizeof(__b));
    v2 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v2 = 2;
    }

    sub_1000013C8(v6, v4);
    _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus hash type: %u", v6);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10002437CLL);
  }

  return ccsha384_di();
}

uint64_t sub_100024404(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 16;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 48;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_10002445C(uint64_t a1, int a2, char *const *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = -1;
  v12 = a3;
  v11 = -1;
  v10 = 0;
  memcpy(__dst, &unk_10007B070, sizeof(__dst));
  v8 = 0;
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
      JUMPOUT(0x100024648);
    }

    sub_1000483C8(1uLL, "parsing: %c", v11);
    switch(v11)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'A':
        v8 = sub_100024AF0(optarg);
        if (!v8)
        {
          errx(64, "invalid max algorithm: %s", optarg);
        }

        BYTE1(__dst[68]) = v8;
        break;
      case 'X':
        __dst[69] = optarg;
        break;
      case 'a':
        v8 = sub_100024AF0(optarg);
        if (!v8)
        {
          errx(64, "invalid min algorithm: %s", optarg);
        }

        LOBYTE(__dst[68]) = v8;
        break;
      case 'b':
        if (__dst[66] < 0x40uLL)
        {
          __dst[__dst[66]++ + 2] = optarg;
          sub_10004860C(0, 1uLL, "will add hashes from: %s", optarg);
        }

        else
        {
          warnx("maximum number of base trust caches reached; ignoring: %s", optarg);
        }

        break;
      case 'o':
        __dst[1] = optarg;
        sub_1000483C8(1uLL, "will write trust cache to: %s", optarg);
        break;
      case 't':
        if (!strcmp(optarg, "static"))
        {
          __dst[67] = 0;
        }

        else if (!strcmp(optarg, "restore"))
        {
          __dst[67] = 1;
        }

        else if (!strcmp(optarg, "base-system"))
        {
          __dst[67] = 2;
        }

        else if (!strcmp(optarg, "loadable"))
        {
          __dst[67] = 3;
        }

        else
        {
          if (strcmp(optarg, "development"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          __dst[67] = 4;
        }

        break;
      case 'x':
        __dst[70] = sub_10004BAF0(optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000249ECLL);
    }
  }

  v14 += optind;
  v15 -= optind;
  if (v15 < 1)
  {
    errx(64, "a directory path is required");
  }

  __dst[0] = *v14;
  if (__dst[69])
  {
    __dst[71] = sub_1000204C0(__dst[69]);
    if (!__dst[71])
    {
      errx(74, "Failed to parse REM config plist.");
    }
  }

  if (__dst[71])
  {
    xpc_dictionary_apply(__dst[71], &stru_10007B2D0);
  }

  v13 = sub_100024C40(__dst);
  return sysexit_np();
}

uint64_t sub_100024AF0(const char *a1)
{
  if (!strcmp(a1, "sha1"))
  {
    return 1;
  }

  else if (!strcmp(a1, "sha2-256"))
  {
    return 2;
  }

  else if (!strcmp(a1, "sha2-384"))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100024B90(id a1, const char *a2, void *a3)
{
  if (xpc_get_type(a3) != &_xpc_type_string)
  {
    errx(64, "REM config plist key '%s' maps to unexpected type.", a2);
  }

  string_ptr = xpc_string_get_string_ptr(a3);
  if (!sub_1000164C0(string_ptr))
  {
    errx(64, "REM config plist key '%s' maps to unexpected value '%s'.", a2, string_ptr);
  }

  return 1;
}

uint64_t sub_100024C40(uint64_t a1)
{
  v10 = a1;
  v9 = -1;
  v8 = 0;
  v7 = 0;
  v6 = -1;
  v8 = sub_100011D7C(*(a1 + 536), (a1 + 544), 0);
  sub_100012044(v8, *v10, v10, sub_100024E3C);
  if (*(v10 + 8))
  {
    v7 = *(v10 + 8);
  }

  else
  {
    v7 = "./trustcache";
  }

  v6 = open(v7, 1537, 438);
  v11 = v6;
  if (v6 < 0)
  {
    v9 = *__error();
    warnc(v9, "open: %s", v7);
  }

  else
  {
    for (i = 0; i < *(v10 + 528); ++i)
    {
      v4 = *(v10 + 16 + 8 * i);
      v9 = sub_100025284(v10, v8, v4);
      if (v9)
      {
        warnc(v9, "failed to add hashes from trust cache: %s", v4);
        goto LABEL_14;
      }
    }

    v9 = sub_100014D78(v8, v6);
    if (v9)
    {
      warnc(v9, "failed to write trust cache");
    }

    else
    {
      sub_1000483C8(1uLL, "wrote trust cache to: %s", v7);
    }
  }

LABEL_14:
  sub_1000160F8(&v8, v1);
  v3 = v9;
  sub_1000038DC(&v6);
  return v3;
}

void sub_100024E3C(uint64_t a1, char *a2, uint64_t a3, int a4, char *a5, uint64_t a6)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  __s2 = a5;
  v22 = a6;
  i = 0;
  v20 = 0;
  v19 = a6;
  v18 = 0;
  key = 0;
  if (a4)
  {
    if (a4 == 90)
    {
      warnx("mach-o is not signed: %s", v26);
      v16 = 1;
    }

    else
    {
      if (a4 == 92)
      {
        sub_1000483C8(2uLL, "not a mach-o: %s", v26);
      }

      else
      {
        warnc(v24, "failed to add mach-o to trust cache: %s", v26);
      }

      v16 = 1;
    }
  }

  else
  {
    v15 = strstr(v26, __s2) == v26;
    if (!v15)
    {
      v14 = 0;
      memset(__b, 0, sizeof(__b));
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
        sub_100003098(v29, v15);
        v12 = _os_log_send_and_compose_impl(v11, &v14, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: strstr(path, root_path) == path -> %llu", v29);
      }

      v8[1] = v12;
      v13 = v12;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100025064);
    }

    key = &v26[strlen(__s2)];
    v18 = sub_10001E620(v25);
    sub_10004860C(0, 1uLL, "added mach-o: %s", key);
    sub_10004860C(0, 1uLL, "  cpu type: %s", v18);
    for (i = *(v25 + 40); ; i = v20)
    {
      v6 = 0;
      if (i)
      {
        v20 = *(i + 8);
        v6 = 1;
      }

      if ((v6 & 1) == 0)
      {
        break;
      }

      v8[0] = 0;
      memset(v28, 0, sizeof(v28));
      sub_10004860C(0, 1uLL, "  identity: %s", *(i + 128));
      sub_100023D24(i, v28);
      sub_10004860C(0, 1uLL, "  cdhash: %s", v28);
      if (*(v19 + 568))
      {
        string = xpc_dictionary_get_string(*(v19 + 568), key);
        if (string)
        {
          v8[0] = sub_10004BAF0(string);
        }
      }

      if (!v8[0])
      {
        v8[0] = sub_10004BAF0(*(v19 + 560));
      }

      sub_100023E48(i, v8[0]);
      sub_10004860C(0, 1uLL, "  exec before/after REM: %s", v8[0]);
      sub_100002DE4(v8);
    }

    v16 = 0;
  }

  sub_100002DE4(&v18);
}

uint64_t sub_100025284(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v13 = 0;
  v12 = 1;
  v11 = 0;
  v14 = open(a3, 0);
  v19 = v14;
  if (v14 < 0)
  {
    v15 = *__error();
    warn("failed to open trust cache: %s", v16);
  }

  else
  {
    v13 = sub_100011D7C(0, 0, v12);
    v15 = sub_1000133D0(v13, v14);
    if (v15)
    {
      if (v15 == 45)
      {
        warnx("trust cache version not supported");
      }

      else
      {
        warnc(v15, "failed to read trust cache");
      }
    }

    else
    {
      v8 = 0;
      i = 0;
      v10 = 0;
      while (1)
      {
        v7[1] = 37;
        if (v8 >= 0x25)
        {
          break;
        }

        for (i = *&v13[8 * v8 + 120]; ; i = v10)
        {
          v6 = 0;
          if (i)
          {
            v10 = *(i + 8);
            v11 = i - 16;
            v6 = 1;
          }

          if ((v6 & 1) == 0)
          {
            break;
          }

          v7[0] = 0;
          v7[0] = sub_1000216E4(*(v17 + 16));
          sub_100023AB8(v7[0], v11);
          sub_1000149F8(v17, v7);
          sub_100023DE0(v7);
        }

        ++v8;
      }
    }
  }

  sub_1000160F8(&v13, v3);
  v5 = v15;
  sub_1000038DC(&v14);
  return v5;
}

void sub_1000254AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a1 != 0;
  if (!a1)
  {
    v5[0] = 0;
    memset(__b, 0, sizeof(__b));
    v4 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 2;
    }

    sub_100003098(v10, v6);
    _os_log_send_and_compose_impl(v4, v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: c != ((void*)0) -> %llu", v10);
    _os_crash_msg();
    __break(1u);
  }

  v3 = collation_copy_search_path();
  if (v3)
  {
    fprintf(__stdoutp, "%s\n", v3);
    free(v3);
  }

  else
  {
    warnc(22, "Unable to get description for NULL specified paths.\n");
  }
}

void sub_100025694(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  v6 = 0;
  __str = strdup(a3);
  for (i = strtok(__str, ":"); i; i = strtok(0, ":"))
  {
    for (j = 0; j < a2; ++j)
    {
      bzero(v11, 0x400uLL);
      __strlcpy_chk();
      __strlcat_chk();
      if ((!a4 || !strcmp(a4, (a1 + 3600 * j + 8))) && !access(v11, 0))
      {
        if (v6)
        {
          fprintf(__stdoutp, "%s", ":");
        }

        fprintf(__stdoutp, "%s", v11);
        v6 = 1;
      }
    }
  }

  fprintf(__stdoutp, "\n");
  free(__str);
}

uint64_t sub_1000258A4(uint64_t a1, int a2, char *const *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_1000480E0();
  while (1)
  {
    v10 = getopt_long(v14, v11, *(v15 + 32), *(v15 + 40), &v9);
    if (v10 == -1)
    {
      break;
    }

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
      JUMPOUT(0x100025A70);
    }

    switch(v10)
    {
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'S':
        *&v7 = v7 | 4;
        *(&v8 + 1) = optarg;
        break;
      case 'c':
        *&v8 = optarg;
        break;
      case 'p':
        *&v7 = v7 | 4;
        *(&v8 + 1) = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin";
        break;
      case 's':
        *&v7 = v7 | 1;
        *(&v7 + 1) = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100025B6CLL);
    }
  }

  v13 += optind;
  v14 -= optind;
  v12 = sub_100025BEC(&v7);
  return sysexit_np();
}

uint64_t sub_100025BEC(void *a1)
{
  if (*a1)
  {
    if (!a1[1])
    {
      err(22, "No session selected.");
    }

    return sub_100025C60(a1);
  }

  else
  {
    return sub_100025D3C(a1);
  }
}

uint64_t sub_100025C60(void *a1)
{
  if (!sub_100025DE4(a1[1]))
  {
    err(22, "Session %s not found", a1[1]);
  }

  object = collation_create_for_user();
  if (!object)
  {
    err(22, "Unable to create collation");
  }

  if ((*a1 & 4) != 0)
  {
    v2 = a1[3];
  }

  else
  {
    v2 = "";
  }

  sub_1000254AC(object, v2, a1[2]);
  os_release(object);
  return 0;
}

uint64_t sub_100025D3C(uint64_t a1)
{
  *&v3[8] = 0;
  *v3 = _cryptex_copy_list_lossy();
  if (*v3)
  {
    err(*v3, "Unable to copy system cryptex list");
  }

  if ((*a1 & 4) != 0)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = "/";
  }

  sub_100025694(0, *&v3[4], v2, *(a1 + 16));
  return 0;
}

uint64_t sub_100025DE4(char *a1)
{
  v8[1] = a1;
  v8[0] = 0;
  v7 = asprintf(v8, "cryptex_%s", a1);
  v6 = v7 > 0;
  if (v7 <= 0)
  {
    v5[0] = 0;
    memset(__b, 0, sizeof(__b));
    v4 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 2;
    }

    sub_100003098(v9, v6);
    _os_log_send_and_compose_impl(v4, v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: bytes > 0 -> %llu", v9);
    _os_crash_msg();
    __break(1u);
  }

  v3 = getpwnam(v8[0]);
  pw_uid = 0;
  if (v3)
  {
    pw_uid = v3->pw_uid;
  }

  else
  {
    warnc(22, "Failed to get passwd for %s", v8[0]);
  }

  free(v8[0]);
  return pw_uid;
}

uint64_t sub_100025FE4(uint64_t a1, int a2, const char **a3)
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
  v10 = getopt_long(v14, v11, *(v15 + 32), *(v15 + 40), &v9);
  if (v10 != -1)
  {
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
      JUMPOUT(0x1000261BCLL);
    }

    if (v10 != 58)
    {
      if (v10 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x100026238);
      }

      errx(64, "unknown option: %s", v6);
    }

    errx(64, "missing argument for option: %s", *v7);
  }

  v13 += optind;
  v14 -= optind;
  if (v14 >= 1)
  {
    if (!strcmp(*v13, "cli"))
    {
      v8 = 0;
    }

    else if (!strcmp(*v13, "library"))
    {
      v8 = 1;
    }

    else if (!strcmp(*v13, "daemon"))
    {
      v8 = 2;
    }

    else
    {
      if (strcmp(*v13, "mobile-device-framework"))
      {
        errx(64, "invalid version specifier: %s", optarg);
      }

      v8 = 3;
    }
  }

  v12 = sub_100026398(&v8);
  return sysexit_np();
}

uint64_t sub_100026398(void *a1)
{
  v7 = a1;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  v3 = *a1;
  if (!*a1)
  {
    v5 = off_100084810[0];
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v5 = _cryptex_version();
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v6 = sub_1000264BC(&v4);
    if (v6)
    {
      warnc(v6, "copying daemon version failed");
      goto LABEL_13;
    }

    v5 = v4;
LABEL_12:
    sub_10004860C(__stdoutp, 0, "%s", v5);
    v6 = 0;
    goto LABEL_13;
  }

  if (v3 != 3)
  {
    goto LABEL_12;
  }

  warnx("MobileDevice framework not present on this platform");
  v6 = 78;
LABEL_13:
  v2 = v6;
  sub_100002DE4(&v4);
  return v2;
}

uint64_t sub_1000264BC(void *a1)
{
  v5 = a1;
  bzero(v7, 0x168uLL);
  bzero(v6, 0x168uLL);
  v6[0] = 32;
  actor = cryptex_subsystem_create_actor();
  v4 = cryptex_actor_connect();
  if (v4)
  {
    warnc(v4, "could not connect to daemon");
  }

  else
  {
    _cryptex_actor_init_invoke_u64();
    daemon_version_pack();
    v4 = cryptex_actor_trap();
    if (v4)
    {
      warnc(v4, "failed to get daemon version");
    }

    else
    {
      v4 = daemon_version_reply_unpack();
      if (v4)
      {
        warnc(v4, "bogus daemon reply");
      }

      else
      {
        *v5 = 0;
        v4 = 0;
      }
    }
  }

  v2 = v4;
  sub_100026664(v6);
  sub_100026664(v7);
  sub_1000030D0(&actor);
  return v2;
}

uint64_t sub_100026694(uint64_t a1)
{
  v9 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0;
  v7 = 32;
  v8 = 0;
  v3 = session_iter_list();
  if (v3)
  {
    warnc(v3, "Failed session iteration for copy_target_session");
  }

  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void *sub_100026774(uint64_t a1, uint64_t a2)
{
  __s1 = session_get_name();
  result = strcmp(__s1, *(a1 + 40));
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    return os_retain(*(*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t sub_1000267F0()
{
  v130 = __chkstk_darwin();
  v129 = v0;
  v128 = v1;
  v127 = -1;
  v126 = v1;
  v125 = -1;
  v124 = 0;
  v123 = 6;
  v122 = 491520;
  memcpy(__dst, &unk_10007BE08, sizeof(__dst));
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = sub_100048090();
  __dst[19] = 491526;
  HIDWORD(__dst[21]) = 1;
  sub_1000480E0();
  __dst[4] = 0;
  while (1)
  {
    v125 = getopt_long(v129, v126, *(v130 + 32), *(v130 + 40), &v124);
    if (v125 == -1)
    {
      break;
    }

    v117 = (*(v130 + 40) + 32 * v124);
    v116 = v128[optind - 1];
    if (optind < 1)
    {
      v115 = 0;
      memset(__b, 0, sizeof(__b));
      v114 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v114 = 2;
      }

      sub_1000013C8(v283, optind);
      _os_log_send_and_compose_impl(v114, &v115, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v283);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100026A28);
    }

    switch(v125)
    {
      case '1':
        ++v119;
        __dst[16] = 2;
        sub_1000483C8(1uLL, "will write cryptex in Cryptex1 format");
        break;
      case ':':
        errx(64, "missing argument for option: %s", *v117);
      case '?':
        errx(64, "unknown option: %s", v116);
      case 'B':
        __dst[19] &= ~2uLL;
        HIDWORD(__dst[20]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", HIDWORD(__dst[20]));
        ++v121;
        break;
      case 'C':
        __dst[19] &= ~4uLL;
        LODWORD(__dst[21]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", LODWORD(__dst[21]));
        ++v121;
        break;
      case 'D':
        HIDWORD(__dst[21]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %u", HIDWORD(__dst[21]));
        ++v121;
        break;
      case 'F':
        __dst[19] &= ~0x8000uLL;
        LODWORD(__dst[33]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", LODWORD(__dst[33]));
        ++v120;
        break;
      case 'H':
        __dst[0] |= 1uLL;
        sub_1000483C8(1uLL, "will use host identity");
        break;
      case 'L':
        __dst[19] &= ~0x40000uLL;
        HIDWORD(__dst[34]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %u", HIDWORD(__dst[34]));
        ++v120;
        break;
      case 'N':
        __dst[12] = xpc_BOOL_create(1);
        sub_1000483C8(1uLL, "will create a no-code cryptex");
        break;
      case 'P':
        ++v119;
        __dst[16] = 3;
        sub_1000483C8(1uLL, "will write cryptex in legacy PDI format");
        break;
      case 'R':
        __dst[40] = optarg;
        break;
      case 'T':
        __dst[19] &= ~0x10000uLL;
        HIDWORD(__dst[33]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", HIDWORD(__dst[33]));
        ++v120;
        break;
      case 'V':
        __dst[9] = optarg;
        break;
      case 'X':
        v106 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v276 = v106;
          v275 = 0;
          while (1)
          {
            v275 = strdup(v276);
            if (v275)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v107 = v275;
        }

        else
        {
          v138 = v106;
          v107 = strdup(v106);
          v11 = strlen(v106);
          v229 = "known-constant allocation";
          v228 = v107;
          v227 = v11;
          if (!v107)
          {
            v226 = 0;
            memset(v301, 0, sizeof(v301));
            v224 = 0;
            v223 = 3;
            v222 = &_os_log_default;
            v221 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v223 &= ~1u;
            }

            if (v223)
            {
              v74 = v223;
              v75 = v222;
              v76 = v221;
              v72 = v229;
              v73 = v227;
              v12 = __error();
              v13 = strerror(*v12);
              sub_1000031B0(v300, v72, v73, v13);
              v220 = _os_log_send_and_compose_impl(v74, &v226, v301, 80, &_mh_execute_header, v75, v76, "allocation failed: obj = %s, size = %lu, error = %s", v300, 32, v36);
              v224 = v220;
            }

            v219 = v224;
            v225 = v224;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10002757CLL);
          }
        }

        __dst[37] = v107;
        break;
      case 'Y':
        LODWORD(__dst[36]) = sub_10004B498(optarg, 0, 0);
        BYTE4(__dst[35]) = 1;
        sub_1000483C8(1uLL, "STYP = %u", LODWORD(__dst[34]));
        break;
      case 'd':
        __dst[8] = xpc_BOOL_create(1);
        break;
      case 'i':
        __s = optarg;
        if (_dispatch_is_multithreaded())
        {
          v282 = __s;
          v281 = 0;
          while (1)
          {
            v281 = strdup(v282);
            if (v281)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v113 = v281;
        }

        else
        {
          __s1 = __s;
          v113 = strdup(__s);
          v2 = strlen(__s);
          v262 = "known-constant allocation";
          v261 = v113;
          v260 = v2;
          if (!v113)
          {
            v259 = 0;
            memset(v307, 0, sizeof(v307));
            v257 = 0;
            v256 = 3;
            v255 = &_os_log_default;
            v254 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v256 &= ~1u;
            }

            if (v256)
            {
              v89 = v256;
              v90 = v255;
              v91 = v254;
              v87 = v262;
              v88 = v260;
              v3 = __error();
              v4 = strerror(*v3);
              sub_1000031B0(v306, v87, v88, v4);
              v253 = _os_log_send_and_compose_impl(v89, &v259, v307, 80, &_mh_execute_header, v90, v91, "allocation failed: obj = %s, size = %lu, error = %s", v306, 32, v36);
              v257 = v253;
            }

            v252 = v257;
            v258 = v257;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026C00);
          }
        }

        __dst[2] = v113;
        break;
      case 'm':
        v108 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v278 = v108;
          v277 = 0;
          while (1)
          {
            v277 = strdup(v278);
            if (v277)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v109 = v277;
        }

        else
        {
          v139 = v108;
          v109 = strdup(v108);
          v8 = strlen(v108);
          v240 = "known-constant allocation";
          v239 = v109;
          v238 = v8;
          if (!v109)
          {
            v237 = 0;
            memset(v303, 0, sizeof(v303));
            v235 = 0;
            v234 = 3;
            v233 = &_os_log_default;
            v232 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v234 &= ~1u;
            }

            if (v234)
            {
              v79 = v234;
              v80 = v233;
              v81 = v232;
              v77 = v240;
              v78 = v238;
              v9 = __error();
              v10 = strerror(*v9);
              sub_1000031B0(v302, v77, v78, v10);
              v231 = _os_log_send_and_compose_impl(v79, &v237, v303, 80, &_mh_execute_header, v80, v81, "allocation failed: obj = %s, size = %lu, error = %s", v302, 32, v36);
              v235 = v231;
            }

            v230 = v235;
            v236 = v235;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026FE4);
          }
        }

        __dst[4] = v109;
        break;
      case 'n':
        LODWORD(__dst[35]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "nonce domain = %u", LODWORD(__dst[35]));
        break;
      case 'o':
        __dst[10] = optarg;
        sub_1000483C8(1uLL, "will write cryptex to: %s", optarg);
        break;
      case 'p':
        __dst[11] = optarg;
        break;
      case 'r':
        LOBYTE(__dst[15]) = 1;
        sub_1000483C8(1uLL, "will replace existing cryptex");
        break;
      case 's':
        __dst[41] = optarg;
        break;
      case 't':
        if (!strcmp(optarg, "loadable"))
        {
          LOBYTE(__dst[42]) = 1;
          __dst[43] = 3;
        }

        else
        {
          if (strcmp(optarg, "cryptex1-generic"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          LOBYTE(__dst[42]) = 1;
          __dst[43] = 5;
        }

        break;
      case 'u':
        LOBYTE(__dst[39]) = 1;
        break;
      case 'v':
        v110 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v280 = v110;
          v279 = 0;
          while (1)
          {
            v279 = strdup(v280);
            if (v279)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v111 = v279;
        }

        else
        {
          v140 = v110;
          v111 = strdup(v110);
          v5 = strlen(v110);
          v251 = "known-constant allocation";
          v250 = v111;
          v249 = v5;
          if (!v111)
          {
            v248 = 0;
            memset(v305, 0, sizeof(v305));
            v246 = 0;
            v245 = 3;
            v244 = &_os_log_default;
            v243 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v245 &= ~1u;
            }

            if (v245)
            {
              v84 = v245;
              v85 = v244;
              v86 = v243;
              v82 = v251;
              v83 = v249;
              v6 = __error();
              v7 = strerror(*v6);
              sub_1000031B0(v304, v82, v83, v7);
              v242 = _os_log_send_and_compose_impl(v84, &v248, v305, 80, &_mh_execute_header, v85, v86, "allocation failed: obj = %s, size = %lu, error = %s", v304, 32, v36);
              v246 = v242;
            }

            v241 = v246;
            v247 = v246;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026DE8);
          }
        }

        __dst[3] = v111;
        break;
      case 'x':
        __dst[38] = sub_10004BAF0(optarg);
        break;
      case 'z':
        ++v119;
        __dst[16] = 1;
        sub_1000483C8(1uLL, "will be signed as a cpxd");
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000276E8);
    }
  }

  if (v119 > 1)
  {
    errx(64, "must provide no more than one of --research, --use-cryptex1-format, and --use-pdi-format");
  }

  if (__dst[37])
  {
    __dst[14] = sub_1000204C0(__dst[37]);
    if (!__dst[14])
    {
      errx(74, "Failed to parse REM config plist.");
    }
  }

  if (__dst[14])
  {
    xpc_dictionary_apply(__dst[14], &stru_10007BF88);
  }

  if ((__dst[39] & 1) != 0 && __dst[16] != 2)
  {
    errx(64, "--use-product-class requires the cryptex to be in Cryptex1 format (--use-cryptex1-format).");
  }

  if (!sub_1000164C0(__dst[38]))
  {
    errx(64, "Default REM config has unexpected value '%s'.", __dst[38]);
  }

  if (strlen(__dst[41]) != 4)
  {
    errx(64, "Invalid Seal 4CC specified: %s", __dst[41]);
  }

  if (__dst[11])
  {
    __dst[13] = sub_1000204C0(__dst[11]);
  }

  if (__dst[13])
  {
    string = xpc_dictionary_get_string(__dst[13], "CFBundleIdentifier");
    v104 = xpc_dictionary_get_string(__dst[13], "CFBundleVersion");
    v103 = xpc_dictionary_get_string(__dst[13], "RequiredMountPath");
    v102 = xpc_dictionary_get_string(__dst[13], "CMD");
    v101 = xpc_dictionary_get_string(__dst[13], "Publisher");
    v100 = xpc_dictionary_get_string(__dst[13], "Version");
    if (string)
    {
      if (__dst[2])
      {
        warnx("cryptex identifier in provided plist overridden bythe value of --identifier");
      }

      else
      {
        if (_dispatch_is_multithreaded())
        {
          v274 = string;
          v273 = 0;
          while (1)
          {
            v273 = strdup(v274);
            if (v273)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v99 = v273;
        }

        else
        {
          v137 = string;
          v99 = strdup(string);
          v14 = strlen(string);
          v218 = "known-constant allocation";
          v217 = v99;
          v216 = v14;
          if (!v99)
          {
            v215 = 0;
            memset(v299, 0, sizeof(v299));
            v213 = 0;
            v212 = 3;
            v211 = &_os_log_default;
            v210 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v212 &= ~1u;
            }

            if (v212)
            {
              v69 = v212;
              v70 = v211;
              v71 = v210;
              v67 = v218;
              v68 = v216;
              v15 = __error();
              v16 = strerror(*v15);
              sub_1000031B0(v298, v67, v68, v16);
              v209 = _os_log_send_and_compose_impl(v69, &v215, v299, 80, &_mh_execute_header, v70, v71, "allocation failed: obj = %s, size = %lu, error = %s", v298, 32, v36);
              v213 = v209;
            }

            v208 = v213;
            v214 = v213;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100027A60);
          }
        }

        __dst[2] = v99;
      }
    }

    if (v104)
    {
      if (__dst[3])
      {
        warnx("cryptex version in provided plist overridden bythe value of --version");
      }

      else
      {
        if (_dispatch_is_multithreaded())
        {
          v272 = v104;
          v271 = 0;
          while (1)
          {
            v271 = strdup(v272);
            if (v271)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v98 = v271;
        }

        else
        {
          v136 = v104;
          v98 = strdup(v104);
          v17 = strlen(v104);
          v207 = "known-constant allocation";
          v206 = v98;
          v205 = v17;
          if (!v98)
          {
            v204 = 0;
            memset(v297, 0, sizeof(v297));
            v202 = 0;
            v201 = 3;
            v200 = &_os_log_default;
            v199 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v201 &= ~1u;
            }

            if (v201)
            {
              v64 = v201;
              v65 = v200;
              v66 = v199;
              v62 = v207;
              v63 = v205;
              v18 = __error();
              v19 = strerror(*v18);
              sub_1000031B0(v296, v62, v63, v19);
              v198 = _os_log_send_and_compose_impl(v64, &v204, v297, 80, &_mh_execute_header, v65, v66, "allocation failed: obj = %s, size = %lu, error = %s", v296, 32, v36);
              v202 = v198;
            }

            v197 = v202;
            v203 = v202;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100027C6CLL);
          }
        }

        __dst[3] = v98;
      }
    }

    __dst[12] = xpc_dictionary_get_value(__dst[13], "NoCode");
    if (v103)
    {
      if (__dst[4])
      {
        errx(64, "cryptex mount point cannot be specified explicitly and in provided plist");
      }

      if (_dispatch_is_multithreaded())
      {
        v270 = v103;
        v269 = 0;
        while (1)
        {
          v269 = strdup(v270);
          if (v269)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v97 = v269;
      }

      else
      {
        v135 = v103;
        v97 = strdup(v103);
        v20 = strlen(v103);
        v196 = "known-constant allocation";
        v195 = v97;
        v194 = v20;
        if (!v97)
        {
          v193 = 0;
          memset(v295, 0, sizeof(v295));
          v191 = 0;
          v190 = 3;
          v189 = &_os_log_default;
          v188 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v190 &= ~1u;
          }

          if (v190)
          {
            v59 = v190;
            v60 = v189;
            v61 = v188;
            v57 = v196;
            v58 = v194;
            v21 = __error();
            v22 = strerror(*v21);
            sub_1000031B0(v294, v57, v58, v22);
            v187 = _os_log_send_and_compose_impl(v59, &v193, v295, 80, &_mh_execute_header, v60, v61, "allocation failed: obj = %s, size = %lu, error = %s", v294, 32, v36);
            v191 = v187;
          }

          v186 = v191;
          v192 = v191;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100027E90);
        }
      }

      __dst[4] = v97;
    }

    if (v102)
    {
      if (_dispatch_is_multithreaded())
      {
        v268 = v102;
        v267 = 0;
        while (1)
        {
          v267 = strdup(v268);
          if (v267)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v96 = v267;
      }

      else
      {
        v134 = v102;
        v96 = strdup(v102);
        v23 = strlen(v102);
        v185 = "known-constant allocation";
        v184 = v96;
        v183 = v23;
        if (!v96)
        {
          v182 = 0;
          memset(v293, 0, sizeof(v293));
          v180 = 0;
          v179 = 3;
          v178 = &_os_log_default;
          v177 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v179 &= ~1u;
          }

          if (v179)
          {
            v54 = v179;
            v55 = v178;
            v56 = v177;
            v52 = v185;
            v53 = v183;
            v24 = __error();
            v25 = strerror(*v24);
            sub_1000031B0(v292, v52, v53, v25);
            v176 = _os_log_send_and_compose_impl(v54, &v182, v293, 80, &_mh_execute_header, v55, v56, "allocation failed: obj = %s, size = %lu, error = %s", v292, 32, v36);
            v180 = v176;
          }

          v175 = v180;
          v181 = v180;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002807CLL);
        }
      }

      __dst[5] = v96;
    }

    if (v101)
    {
      if (_dispatch_is_multithreaded())
      {
        v266 = v101;
        v265 = 0;
        while (1)
        {
          v265 = strdup(v266);
          if (v265)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v95 = v265;
      }

      else
      {
        v133 = v101;
        v95 = strdup(v101);
        v26 = strlen(v101);
        v174 = "known-constant allocation";
        v173 = v95;
        v172 = v26;
        if (!v95)
        {
          v171 = 0;
          memset(v291, 0, sizeof(v291));
          v169 = 0;
          v168 = 3;
          v167 = &_os_log_default;
          v166 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v168 &= ~1u;
          }

          if (v168)
          {
            v49 = v168;
            v50 = v167;
            v51 = v166;
            v47 = v174;
            v48 = v172;
            v27 = __error();
            v28 = strerror(*v27);
            sub_1000031B0(v290, v47, v48, v28);
            v165 = _os_log_send_and_compose_impl(v49, &v171, v291, 80, &_mh_execute_header, v50, v51, "allocation failed: obj = %s, size = %lu, error = %s", v290, 32, v36);
            v169 = v165;
          }

          v164 = v169;
          v170 = v169;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100028268);
        }
      }

      __dst[6] = v95;
    }

    if (v100)
    {
      if (_dispatch_is_multithreaded())
      {
        v264 = v100;
        v263 = 0;
        while (1)
        {
          v263 = strdup(v264);
          if (v263)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v94 = v263;
      }

      else
      {
        v132 = v100;
        v94 = strdup(v100);
        v29 = strlen(v100);
        v163 = "known-constant allocation";
        v162 = v94;
        v161 = v29;
        if (!v94)
        {
          v160 = 0;
          memset(v289, 0, sizeof(v289));
          v158 = 0;
          v157 = 3;
          v156 = &_os_log_default;
          v155 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v157 &= ~1u;
          }

          if (v157)
          {
            v44 = v157;
            v45 = v156;
            v46 = v155;
            v42 = v163;
            v43 = v161;
            v30 = __error();
            v31 = strerror(*v30);
            sub_1000031B0(v288, v42, v43, v31);
            v154 = _os_log_send_and_compose_impl(v44, &v160, v289, 80, &_mh_execute_header, v45, v46, "allocation failed: obj = %s, size = %lu, error = %s", v288, 32, v36);
            v158 = v154;
          }

          v153 = v158;
          v159 = v158;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100028454);
        }
      }

      __dst[7] = v94;
    }

    __dst[8] = xpc_dictionary_get_value(__dst[13], "DeveloperModeRequired");
  }

  if (!__dst[2] || !__dst[3])
  {
    errx(64, "must provide a cryptex identifier + version either explicitly or in a provided plist");
  }

  if (!__dst[6])
  {
    v131 = "cryptexctl";
    v93 = strdup("cryptexctl");
    v32 = strlen("cryptexctl");
    v152 = "known-constant allocation";
    v151 = v93;
    v150 = v32;
    if (!v93)
    {
      v149 = 0;
      memset(v287, 0, sizeof(v287));
      v147 = 0;
      v146 = 3;
      v145 = &_os_log_default;
      v144 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v146 &= ~1u;
      }

      if (v146)
      {
        v39 = v146;
        v40 = v145;
        v41 = v144;
        v37 = v152;
        v38 = v150;
        v33 = __error();
        v34 = strerror(*v33);
        sub_1000031B0(v286, v37, v38, v34);
        v143 = _os_log_send_and_compose_impl(v39, &v149, v287, 80, &_mh_execute_header, v40, v41, "allocation failed: obj = %s, size = %lu, error = %s", v286, 32, v36);
        v147 = v143;
      }

      v142 = v147;
      v148 = v147;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100028670);
    }

    __dst[6] = v93;
  }

  if (__dst[0])
  {
    if (__dst[16] != 1)
    {
      if (__dst[16] == 2)
      {
LABEL_217:
        v127 = img4_chip_instantiate();
        if (v127)
        {
          errc(71, v127, "failed to instantiate host ap");
        }

        goto LABEL_219;
      }

      if (__dst[16] != 3)
      {
        errx(65, "Invalid cryptex format.");
      }
    }

    img4_chip_select_personalized_ap();
    goto LABEL_217;
  }

LABEL_219:
  if ((__dst[35] & 0x100000000) != 0)
  {
    __dst[19] &= ~0x20000uLL;
    LODWORD(__dst[34]) = __dst[36];
  }

  if (v118[4])
  {
    v92 = v118[4];
    memcpy(&__dst[17], (v92 + 24), 0x90uLL);
    if (v121)
    {
      warnx("overriding supplied device identity with identity for device [udid %s]", *(v92 + 168));
    }
  }

  if ((__dst[19] & 6) != 0)
  {
    if (v121)
    {
      errx(64, "must provide either a complete set of device identifiers at the command line or provide no identifiersto create with generic device build identity if not operating on a connected device");
    }

    sub_1000483C8(1uLL, "will omit Ap params from build identity");
    __dst[0] |= 2uLL;
  }

  if (__dst[39])
  {
    sub_1000483C8(1uLL, "UseProductClass is 1, omitting Ap params from build identity");
    __dst[0] |= 2uLL;
  }

  if ((__dst[19] & 0x78000) != 0)
  {
    if (v120)
    {
      errx(64, "must provide either a complete set of Cryptex1 identifiers at the command line or provide no identifiersto create with generic Cryptex1 build identity if not operating on a connected device");
    }

    sub_1000483C8(1uLL, "will omit Cryptex1 params from build identity");
    __dst[0] |= 4uLL;
  }

  v128 += optind;
  v129 -= optind;
  if (v129 < 1)
  {
    if (__dst[40])
    {
      errx(64, "a base cryptex must be provided when using --root");
    }

    errx(64, "a disk image path or directory must be provided");
  }

  __dst[1] = *v128;
  v127 = sub_100028B44(__dst);
  return sysexit_np();
}

BOOL sub_100028A88(id a1, const char *a2, void *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5[1] = a1;
  if (xpc_get_type(a3) != &_xpc_type_string)
  {
    errx(64, "REM config plist key '%s' maps to unexpected type.", v7);
  }

  string_ptr = xpc_string_get_string_ptr(v6);
  v5[0] = sub_10004BAF0(string_ptr);
  if (!sub_1000164C0(v5[0]))
  {
    errx(64, "REM config plist key '%s' maps to unexpected value '%s'.", v7, v5[0]);
  }

  sub_100002DE4(v5);
  return 1;
}

uint64_t sub_100028B44(uint64_t a1)
{
  v93 = a1;
  v92 = 0;
  v91 = -1;
  v90 = sub_100048084();
  v89 = v90[584];
  v88 = -1;
  v87 = -1;
  memset(&v134[1], 0, 239);
  v134[0] = *"cryptex.XXXXXX";
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = v93 + 136;
  v82 = 0u;
  v80 = 1uLL;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v81 = 0uLL;
  *&v82 = 0;
  DWORD2(v82) = 0;
  v91 = cryptex_identity_set_chip();
  if (v91)
  {
    warnc(v91, "failed to set host identity to chip");
LABEL_86:
    v94 = v91;
    v59 = 1;
    goto LABEL_87;
  }

  v91 = sub_10004B3B0(v89, v134, &v88);
  if (v91)
  {
    warnc(v91, "mkodtempat [output directory]");
    goto LABEL_86;
  }

  v91 = sub_100029B24();
  if (v91)
  {
    warnc(v91, "create_cryptex_assets");
    goto LABEL_86;
  }

  if ((*v93 & 2) != 0)
  {
    *(&v80 + 1) |= 1uLL;
  }

  if ((*v93 & 4) != 0)
  {
    *(&v80 + 1) &= 0xFFFFFFFFFFFFFFF9;
  }

  v79 = v82;
  v78 = v81;
  v77 = v80;
  v84 = _cryptex_create();
  v91 = cryptex_core_set_assets_from_directory();
  if (v91)
  {
    warnc(v91, "cryptex_core_set_assets_from_directory");
    goto LABEL_86;
  }

  if (*(v93 + 128) == 2)
  {
    v91 = sub_10002A2F4(v93, v84);
    if (v91)
    {
      warnc(v91, "create_cryptex1_properties");
      goto LABEL_86;
    }

    v76[1] = sub_100048090();
    if (!sub_100006F2C())
    {
      v76[0] = 0;
      v75 = 22;
      v74 = 0;
      v73 = 2;
      v72 = &_os_log_default;
      v71 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v73 &= ~1u;
      }

      if (v73)
      {
        v44 = v73;
        v45 = v72;
        v46 = v71;
        sub_10000DC54(v70);
        v69 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v45, v46, "An APFS dmg is required. Please use the -P flag to use the legacy cryptex format which supports HFS+.", v70, 2);
        v74 = v69;
      }

      v68 = v74;
      v76[0] = v74;
      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c", 47))
      {
        v43 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c", 47) + 1;
      }

      else
      {
        v43 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c";
      }

      v67 = sub_1000185D8("_create", v43, 1416, "com.apple.security.cryptex", v75, 0, v76[0]);
      sub_100002DE4(v76);
      v92 = v67;
      v66 = sub_100048090();
      v42 = 1;
      if (v66[1] <= 1uLL)
      {
        v42 = v66[2] > 1uLL;
      }

      if (v42)
      {
        v1 = 999;
      }

      else
      {
        v1 = 3;
      }

      v65 = v1;
      v41 = 1;
      if (v66[1] <= 1uLL)
      {
        v41 = v66[2] > 1uLL;
      }

      v2 = 2000;
      if (!v41)
      {
        v2 = 200;
      }

      v64 = v2;
      if (v92)
      {
        v40 = sub_100017530(v92, v65, v64);
      }

      else
      {
        v61 = "unknown error";
        v97 = "unknown error";
        v62 = strdup("unknown error");
        v3 = strlen("unknown error");
        v130 = "known-constant allocation";
        v129 = v62;
        v128 = v3;
        if (!v62)
        {
          v127 = 0;
          memset(v140, 0, sizeof(v140));
          v125 = 0;
          v124 = 3;
          v123 = &_os_log_default;
          v122 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v124 &= ~1u;
          }

          if (v124)
          {
            v37 = v124;
            v38 = v123;
            v39 = v122;
            v35 = v130;
            v36 = v128;
            v4 = __error();
            v5 = strerror(*v4);
            sub_1000031B0(v139, v35, v36, v5);
            LODWORD(v17) = 32;
            v121 = _os_log_send_and_compose_impl(v37, &v127, v140, 80, &_mh_execute_header, v38, v39, "allocation failed: obj = %s, size = %lu, error = %s", v139, v17, v18);
            v125 = v121;
          }

          v120 = v125;
          v126 = v125;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000293E4);
        }

        v60 = v62;
        v40 = v62;
      }

      v63 = v40;
      warnx("cryptex_is_apfs\n%s", v40);
      sub_100002DE4(&v63);
      v94 = sub_100018A78(v92);
      v59 = 1;
      goto LABEL_87;
    }

    sub_10004860C(0, 1uLL, "sealing...");
    v91 = sub_100007174();
    if (v91)
    {
      warnc(v91, "seal cryptex");
      goto LABEL_86;
    }
  }

  v85 = cryptex_bundle_create();
  if (cryptex_bundle_set_cryptex2())
  {
    if (cryptex_bundle_write2())
    {
      v91 = sub_10002A3C8(v93, v134, "cxbd");
      goto LABEL_86;
    }

    v51 = sub_100048090();
    v26 = 1;
    if (v51[1] <= 1uLL)
    {
      v26 = v51[2] > 1uLL;
    }

    if (v26)
    {
      v11 = 999;
    }

    else
    {
      v11 = 3;
    }

    v50 = v11;
    v25 = 1;
    if (v51[1] <= 1uLL)
    {
      v25 = v51[2] > 1uLL;
    }

    v12 = 2000;
    if (!v25)
    {
      v12 = 200;
    }

    v49 = v12;
    if (v92)
    {
      v24 = sub_100017530(v92, v50, v49);
    }

    else
    {
      v95 = "unknown error";
      v47 = strdup("unknown error");
      v13 = strlen("unknown error");
      v108 = "known-constant allocation";
      v107 = v47;
      v106 = v13;
      if (!v47)
      {
        v105 = 0;
        memset(v136, 0, sizeof(v136));
        v103 = 0;
        v102 = 3;
        v101 = &_os_log_default;
        v100 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v102 &= ~1u;
        }

        if (v102)
        {
          v21 = v102;
          v22 = v101;
          v23 = v100;
          v19 = v108;
          v20 = v106;
          v14 = __error();
          v15 = strerror(*v14);
          sub_1000031B0(v135, v19, v20, v15);
          v99 = _os_log_send_and_compose_impl(v21, &v105, v136, 80, &_mh_execute_header, v22, v23, "allocation failed: obj = %s, size = %lu, error = %s", v135, 32, v18);
          v103 = v99;
        }

        v98 = v103;
        v104 = v103;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100029A28);
      }

      v24 = v47;
    }

    v48 = v24;
    warnx("cryptex_bundle_write\n%s", v24);
    sub_100002DE4(&v48);
    v94 = sub_100018A78(v92);
    v59 = 1;
  }

  else
  {
    v58 = sub_100048090();
    v34 = 1;
    if (v58[1] <= 1uLL)
    {
      v34 = v58[2] > 1uLL;
    }

    if (v34)
    {
      v6 = 999;
    }

    else
    {
      v6 = 3;
    }

    v57 = v6;
    v33 = 1;
    if (v58[1] <= 1uLL)
    {
      v33 = v58[2] > 1uLL;
    }

    v7 = 2000;
    if (!v33)
    {
      v7 = 200;
    }

    v56 = v7;
    if (v92)
    {
      v32 = sub_100017530(v92, v57, v56);
    }

    else
    {
      v53 = "unknown error";
      v96 = "unknown error";
      v54 = strdup("unknown error");
      v8 = strlen("unknown error");
      v119 = "known-constant allocation";
      v118 = v54;
      v117 = v8;
      if (!v54)
      {
        v116 = 0;
        memset(v138, 0, sizeof(v138));
        v114 = 0;
        v113 = 3;
        v112 = &_os_log_default;
        v111 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v113 &= ~1u;
        }

        if (v113)
        {
          v29 = v113;
          v30 = v112;
          v31 = v111;
          v27 = v119;
          v28 = v117;
          v9 = __error();
          v10 = strerror(*v9);
          sub_1000031B0(v137, v27, v28, v10);
          v110 = _os_log_send_and_compose_impl(v29, &v116, v138, 80, &_mh_execute_header, v30, v31, "allocation failed: obj = %s, size = %lu, error = %s", v137, 32, v18);
          v114 = v110;
        }

        v109 = v114;
        v115 = v114;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100029758);
      }

      v52 = v54;
      v32 = v54;
    }

    v55 = v32;
    warnx("cryptex_bundle_add_cryptex\n%s", v32);
    sub_100002DE4(&v55);
    v94 = sub_100018A78(v92);
    v59 = 1;
  }

LABEL_87:
  sub_100002DE4(&v86);
  sub_1000038DC(&v87);
  sub_1000038DC(&v88);
  sub_100006B40(&v92);
  return v94;
}

uint64_t sub_100029B24()
{
  v33 = __chkstk_darwin();
  v32 = v0;
  v31 = v1;
  v30 = -1;
  v29 = -1;
  v28 = sub_100048084();
  v27 = v28[584];
  bzero(v46, 0x400uLL);
  memcpy(v45, "mnt.XXXXXX", sizeof(v45));
  v26 = -1;
  memcpy(__dst, "cryptex.XXXXXX", sizeof(__dst));
  v25 = -1;
  v24 = -1;
  v23 = -1;
  memset(&__b, 0, sizeof(__b));
  bzero(v41, 0x848uLL);
  v41[0] = -1;
  v41[1] = -1;
  v21 = 0;
  bzero(v40, 0x400uLL);
  v20 = -1;
  v19 = -1;
  v18 = 0;
  v5 = v33[16];
  switch(v5)
  {
    case 1:
      v18 = &_cryptex_asset_type_cpxd;
      break;
    case 2:
      v18 = &_cryptex_asset_type_gdmg;
      break;
    case 3:
      v18 = &_cryptex_asset_type_pdmg;
      break;
    default:
      errx(65, "Invalid cryptex format.");
  }

  v30 = sub_10004B3B0(v27, __dst, &v25);
  if (v30)
  {
    warnc(v30, "mkodtempat [output directory]");
    goto LABEL_42;
  }

  v30 = sub_10002A750(v33, &v19);
  if (v30)
  {
    warnc(v30, "open mounts directory");
    goto LABEL_42;
  }

  v27 = v19;
  v30 = sub_10004B3B0(v19, v45, &v26);
  if (v30)
  {
    warnc(v30, "mkodtempat [mount point]");
    goto LABEL_42;
  }

  v30 = realpath_np();
  v17 = v30;
  if (v30)
  {
    v16[0] = 0;
    memset(v39, 0, sizeof(v39));
    v14 = 0;
    v13 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 &= ~1u;
    }

    if (v13)
    {
      sub_100003098(v38, v17);
      v10 = _os_log_send_and_compose_impl(v13, v16, v39, 80, &_mh_execute_header, oslog, type, "assertion failure: error -> %llu", v38);
      v14 = v10;
    }

    v9 = v14;
    v15 = v14;
    _os_crash_msg();
    __break(1u);
  }

  sub_10004860C(0, 1uLL, "mounting dmg at: %s", v40);
  v30 = realpath_np();
  v8 = v30;
  if (v30)
  {
    v7[0] = 0;
    memset(v37, 0, sizeof(v37));
    v6 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = 2;
    }

    sub_100003098(v36, v8);
    _os_log_send_and_compose_impl(v6, v7, v37, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: error -> %llu", v36);
    _os_crash_msg();
    __break(1u);
  }

  sub_10004860C(0, 1uLL, "output directory: %s", v46);
  v23 = open(v33[1], 0);
  v35 = v23;
  if (v23 < 0)
  {
    v30 = *__error();
    warnc(v30, "open: %s", v33[1]);
    goto LABEL_42;
  }

  v29 = fstat(v23, &__b);
  if (v29 == -1)
  {
    v30 = *__error();
    warnc(v30, "%s fd[%d] : [invalid descriptor]", v33[1], v23);
    goto LABEL_42;
  }

  if ((__b.st_mode & 0xF000) == 0x4000)
  {
    v30 = sub_10002A8FC(v33, &v23, &v24, v43);
    if (v30)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v24 = v23;
    v23 = -1;
  }

  v41[0] = v24;
  v30 = sub_10000C09C(&v26, 0, v41);
  if (v30)
  {
    warnc(v30, "hdi_mount");
  }

  else
  {
    v21 = v41;
    v20 = open(v40, 0x100000);
    v34 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      v30 = *__error();
      warnc(v30, "open: %s", v40);
    }

    else
    {
      sub_10004860C(0, 1uLL, "mounted dmg: mount point = %s, devnode = %s", v40, v42);
      v30 = sub_10002B130(v18, v24, v25);
      if (!v30 && (v33[12] && xpc_BOOL_get_value(v33[12]) || (v30 = sub_10002B168(v33, v20, v25)) == 0))
      {
        v30 = sub_10002B4EC(v33, v25);
        if (!v30)
        {
          *v32 = claimfd_np();
          v2 = strdup(__dst);
          *v31 = v2;
        }
      }
    }
  }

LABEL_42:
  if (v21)
  {
    sub_10002BBAC(v21, v40);
  }

  v4 = v30;
  sub_1000038DC(&v19);
  sub_1000038DC(&v20);
  sub_1000038DC(&v23);
  sub_1000038DC(&v24);
  sub_1000038DC(&v26);
  return v4;
}

uint64_t sub_10002A2F4(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -1;
  v4 = cryptex_core_cx1_properties_create();
  if (v4)
  {
    cryptex_core_set_cryptex1_properties();
    v5 = 0;
  }

  else
  {
    v5 = 12;
  }

  v3 = v5;
  sub_1000030D0(&v4);
  return v3;
}

uint64_t sub_10002A3C8(uint64_t a1, char *a2, const char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -1;
  v7 = sub_100048084();
  memset(__b, 0, sizeof(__b));
  bzero(v15, 0x400uLL);
  v6 = -1;
  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.%s", *(v11 + 16), v9);
  __snprintf_chk(v15, 0x400uLL, 0, 0x400uLL, "%s/%s", *(v11 + 80), __b);
  v6 = open(*(v11 + 80), 0x100000);
  v13 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    while (1)
    {
      memcpy(__dst, "replaced.XXXXXX", sizeof(__dst));
      v5 = -1;
      v8 = sub_10004AA74(v7[584], v10, v6, __b);
      if (v8)
      {
        if (v8 == 17 || v8 == 66)
        {
          if ((*(v11 + 120) & 1) == 0)
          {
            warnx("cryptex directory exists: %s", v15);
            v4 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "replacing existing directory");
          v8 = sub_10004B3B0(v7[584], __dst, &v5);
          if (v8)
          {
            warnc(v8, "could not move old directory aside");
            v4 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "will rename into: %s", __dst);
          v8 = sub_10004AA74(v6, __b, v5, __b);
          if (v8)
          {
            warnc(v8, "could not rename old directory");
            v4 = 6;
            goto LABEL_16;
          }

          v8 = 35;
        }

        else
        {
          warnc(v8, "renameat_xdev: %s", v15);
        }
      }

      else
      {
        sub_10004860C(0, 1uLL, "cryptex written to: %s", v15);
        v8 = 0;
      }

      v4 = 0;
LABEL_16:
      sub_1000038DC(&v5);
      if (v4 || v8 != 35)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = *__error();
  warnc(v8, "open: %s", *(v11 + 80));
LABEL_18:
  v12 = v8;
  sub_1000038DC(&v6);
  return v12;
}

uint64_t sub_10002A750(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  bzero(v9, 0x168uLL);
  bzero(v8, 0x168uLL);
  v8[0] = 32;
  actor = cryptex_subsystem_create_actor();
  v5 = cryptex_actor_connect();
  if (v5)
  {
    warnc(v5, "could not connect to daemon");
  }

  else
  {
    _cryptex_actor_init_invoke_u64();
    daemon_open_mountable_pack();
    v5 = cryptex_actor_trap();
    if (v5)
    {
      warnc(v5, "rpc failed");
    }

    else
    {
      v5 = daemon_open_mountable_reply_unpack();
      if (v5)
      {
        warnc(v5, "bogus daemon reply");
      }

      else
      {
        *v6 = 0;
        v5 = 0;
      }
    }
  }

  v3 = v5;
  sub_100026664(v8);
  sub_100026664(v9);
  sub_1000030D0(&actor);
  return v3;
}

uint64_t sub_10002A8FC(void *a1, uint64_t a2, int *a3, void *a4)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = -1;
  v32 = 0;
  v31 = -1;
  v30 = sub_100048084();
  v29 = v30[584];
  memcpy(__dst, "dmg.XXXXXX", sizeof(__dst));
  v28 = -1;
  memset(__b, 0, sizeof(__b));
  bzero(__s1, 0x400uLL);
  v33 = sub_10004B3B0(v29, __dst, &v28);
  if (v33)
  {
    warnc(v33, "mkdtempat [dmg directory]");
  }

  else
  {
    v33 = realpath_np();
    v27 = v33;
    if (v33)
    {
      v26[0] = 0;
      memset(v74, 0, sizeof(v74));
      v25 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = 2;
      }

      sub_100003098(v73, v27);
      _os_log_send_and_compose_impl(v25, v26, v74, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: error -> %llu", v73);
      _os_crash_msg();
      __break(1u);
    }

    v31 = __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s-%s", v37[2], v37[3]);
    v72 = v31;
    v71 = 255;
    if (v31 < 0)
    {
      v70 = 0;
      memset(v85, 0, sizeof(v85));
      v68 = 0;
      v67 = 3;
      v66 = &_os_log_default;
      v65 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v67 &= ~1u;
      }

      if (v67)
      {
        v21 = v67;
        v22 = v66;
        v23 = v65;
        v4 = __error();
        v5 = strerror(*v4);
        sub_100003120(v84, v5);
        v64 = _os_log_send_and_compose_impl(v21, &v70, v85, 80, &_mh_execute_header, v22, v23, "error printing buffer: %s", v84);
        v68 = v64;
      }

      v63[1] = v68;
      v69 = v68;
      _os_crash_msg();
      __break(1u);
    }

    if (v72 > v71)
    {
      v63[0] = 0;
      memset(v83, 0, sizeof(v83));
      v61 = 0;
      v60 = 3;
      v59 = &_os_log_default;
      v58 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v60 &= ~1u;
      }

      if (v60)
      {
        v18 = v60;
        v19 = v59;
        v20 = v58;
        sub_100003160(v82, v72, v71);
        LODWORD(v10) = 18;
        v57 = _os_log_send_and_compose_impl(v18, v63, v83, 80, &_mh_execute_header, v19, v20, "buffer too small: needed = %d, actual = %lu", v82, v10);
        v61 = v57;
      }

      v56 = v61;
      v62 = v61;
      _os_crash_msg();
      __break(1u);
    }

    v24 = strnlen(__s1, 0x400uLL);
    v31 = __snprintf_chk(&__s1[v24], 1024 - v24, 0, 0xFFFFFFFFFFFFFFFFLL, "/%s.dmg", __b);
    v55 = v31;
    v54 = 1024 - v24;
    if (v31 < 0)
    {
      v53 = 0;
      memset(v81, 0, sizeof(v81));
      v51 = 0;
      v50 = 3;
      v49 = &_os_log_default;
      v48 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v50 &= ~1u;
      }

      if (v50)
      {
        v15 = v50;
        v16 = v49;
        v17 = v48;
        v6 = __error();
        v7 = strerror(*v6);
        sub_100003120(v80, v7);
        v47 = _os_log_send_and_compose_impl(v15, &v53, v81, 80, &_mh_execute_header, v16, v17, "error printing buffer: %s", v80);
        v51 = v47;
      }

      v46[1] = v51;
      v52 = v51;
      _os_crash_msg();
      __break(1u);
    }

    if (v55 > v54)
    {
      v46[0] = 0;
      memset(v79, 0, sizeof(v79));
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
        v12 = v43;
        v13 = v42;
        v14 = v41;
        sub_100003160(v78, v55, v54);
        LODWORD(v10) = 18;
        v40 = _os_log_send_and_compose_impl(v12, v46, v79, 80, &_mh_execute_header, v13, v14, "buffer too small: needed = %d, actual = %lu", v78, v10);
        v44 = v40;
      }

      v39 = v44;
      v45 = v44;
      _os_crash_msg();
      __break(1u);
    }

    if (v37[40])
    {
      v32 = sub_10002BC54(v37, v36, v35, __s1, v34);
    }

    else
    {
      v32 = sub_100044EA0(v37[1], __s1, __b, v34);
    }

    if (v32)
    {
      v33 = sub_100018A78(v32);
      warnc(v33, "failed to create dmg");
    }

    else
    {
      v8 = open(__s1, 0);
      *v35 = v8;
      v38 = *v35;
      if (v38 < 0)
      {
        v33 = *__error();
        warnc(v33, "open: %s", __s1);
      }
    }
  }

  v11 = v33;
  sub_1000038DC(&v28);
  sub_100006B40(&v32);
  return v11;
}

uint64_t sub_10002B168(uint64_t a1, unsigned int a2, int a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = -1;
  bzero(v21, 0x400uLL);
  v12 = 0;
  v11 = *(v17 + 344);
  v10 = 0;
  sub_10004860C(0, 1uLL, "creating trust cache...");
  v6 = *(v17 + 128);
  if (v6 == 1)
  {
LABEL_4:
    v10 = &_cryptex_asset_type_ltrs;
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      errx(65, "Invalid cryptex format.");
    }

    goto LABEL_4;
  }

  v10 = &_cryptex_asset_type_gtcd;
LABEL_7:
  v14 = realpath_np();
  v9 = v14;
  if (v14)
  {
    v8[0] = 0;
    memset(__b, 0, sizeof(__b));
    v7 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 2;
    }

    sub_100003098(v19, v9);
    _os_log_send_and_compose_impl(v7, v8, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: error -> %llu", v19);
    _os_crash_msg();
    __break(1u);
  }

  if ((*(v17 + 336) & 1) == 0)
  {
    if (*(v17 + 128) == 2)
    {
      v11 = 5;
    }

    else
    {
      v11 = 3;
    }
  }

  v12 = sub_100011D7C(v11, 0, 0);
  sub_100012044(v12, v21, v17, sub_10002C4B8);
  sub_10004860C(0, 1uLL, "creating trust cache from: %s", v21);
  v13 = openat(v15, v10[5], 513, 438);
  v18 = v13;
  if (v13 < 0)
  {
    v14 = *__error();
    warnc(v14, "openat [trust cache]");
  }

  else
  {
    v14 = sub_100014D78(v12, v13);
    if (v14)
    {
      warnc(v14, "failed to write trust cache");
    }
  }

  sub_1000160F8(&v12, v3);
  v5 = v14;
  sub_1000038DC(&v13);
  return v5;
}

uint64_t sub_10002B4EC(uint64_t a1, int a2)
{
  v43 = a1;
  v42 = a2;
  v41 = -1;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  error = 0;
  v25 = -1;
  memset(__b, 0, sizeof(__b));
  v23 = 0;
  sub_10004860C(0, 1uLL, "creating Info.plist...");
  v13 = *(v43 + 128);
  if (v13 == 1)
  {
LABEL_4:
    v23 = &_cryptex_asset_type_c411;
    goto LABEL_7;
  }

  if (v13 != 2)
  {
    if (v13 != 3)
    {
      errx(65, "Invalid cryptex format.");
    }

    goto LABEL_4;
  }

  v23 = &_cryptex_asset_type_ginf;
LABEL_7:
  v38 = sub_100018314("CFBundleIdentifier");
  v37 = sub_100018314("CFBundleVersion");
  v36 = sub_100018314("Name");
  v35 = sub_100018314("Version");
  v34 = sub_100018314("Publisher");
  v33 = sub_100018314("RequiredMountPath");
  v32 = sub_100018314("CMD");
  v31 = sub_100018314("CMD_ARGS");
  v30 = sub_100018314("ENV");
  v29 = sub_100018314("DeveloperModeRequired");
  v28 = sub_100018314("NoCode");
  v40 = sub_100018434();
  sub_1000184FC(v40, v38, *(v43 + 16));
  sub_1000184FC(v40, v37, *(v43 + 24));
  sub_1000184FC(v40, v36, *(v43 + 16));
  if (*(v43 + 56))
  {
    sub_1000184FC(v40, v35, *(v43 + 56));
  }

  else
  {
    sub_1000184FC(v40, v35, *(v43 + 24));
  }

  sub_1000184FC(v40, v34, *(v43 + 48));
  if (*(v43 + 40))
  {
    sub_1000184FC(v40, v32, *(v43 + 40));
  }

  if (*(v43 + 64))
  {
    v12 = v40;
    v11 = v29;
    value = xpc_BOOL_get_value(*(v43 + 64));
    sub_100018488(v12, v11, value);
  }

  if (*(v43 + 32))
  {
    sub_1000184FC(v40, v33, *(v43 + 32));
  }

  if (*(v43 + 96))
  {
    v10 = v40;
    v9 = v28;
    v3 = xpc_BOOL_get_value(*(v43 + 96));
    sub_100018488(v10, v9, v3);
  }

  if (sub_10002C900(*(v43 + 104), v40, &off_10007C108))
  {
    warnx("failed to populate dependency data from info plist");
  }

  else if (sub_10002C900(*(v43 + 104), v40, &off_10007C128))
  {
    warnx("failed to populate install limits data from info plist");
  }

  else
  {
    if (*(v43 + 104))
    {
      v5 = *(v43 + 104);
      applier = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = 0;
      v20 = sub_10002CD10;
      v21 = &unk_10007C148;
      v22 = v40;
      xpc_dictionary_apply(v5, &applier);
    }

    v39 = v40;
    v27 = CFPropertyListCreateData(0, v40, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v27)
    {
      BytePtr = CFDataGetBytePtr(v27);
      Length = CFDataGetLength(v27);
      sub_10004C3C0(__b, 0, 0, BytePtr, Length);
      v25 = openat(v42, v23[5], 513, 438);
      v45 = v25;
      if (v25 < 0)
      {
        v41 = *__error();
        warnc(v41, "openat [info]");
      }

      else
      {
        v41 = sub_10004B8CC(v25, __b);
        if (v41)
        {
          warnc(v41, "writing property list failed");
        }
      }
    }

    else
    {
      v15 = "unknown failure";
      v14 = 0;
      v16 = CFErrorCopyFailureReason(error);
      if (v16)
      {
        v14 = sub_100018014(v16);
        v15 = v14;
      }

      warnx("property list creation failed: %s", v15);
      sub_100002DE4(&v14);
      sub_100006B40(&v16);
    }
  }

  sub_10004C66C(__b, v4);
  v44 = v41;
  sub_1000038DC(&v25);
  sub_100006B40(&error);
  sub_100006B40(&v27);
  sub_100006B40(&v28);
  sub_100006B40(&v29);
  sub_100006B40(&v30);
  sub_100006B40(&v31);
  sub_100006B40(&v32);
  sub_100006B40(&v33);
  sub_100006B40(&v34);
  sub_100006B40(&v35);
  sub_100006B40(&v36);
  sub_100006B40(&v37);
  sub_100006B40(&v38);
  sub_100006B40(&v40);
  return v44;
}

void sub_10002BBAC(uint64_t a1, const char *a2)
{
  if (unmount(a2, 0x80000))
  {
    warn("failed to unmount disk image during cleanup: %s (not fatal)", a2);
  }

  else if (ioctl(*(a1 + 4), 0x20006415uLL))
  {
    warn("failed to detach virtual device during cleanup: %s (not fatal)", (a1 + 1057));
  }
}

__CFError *sub_10002BC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v57 = a1;
  v56 = a2;
  v55 = a3;
  *v54 = a4;
  obj = a5;
  v52 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__b, v57 + 17, sizeof(__b));
  memset(v51, 0, sizeof(v51));
  v88 = __b[7];
  v87 = __b[8];
  v86 = __b[9];
  v85 = __b[32];
  v84 = __b[33];
  v83 = __b[34];
  v82 = __b[35];
  LODWORD(v51[0]) = 1;
  v51[1] = 6;
  v51[2] = *&__b[7];
  v51[3] = __PAIR64__(__b[32], __b[9]);
  v51[4] = *&__b[33];
  LODWORD(v51[5]) = __b[35];
  v50 = 0;
  v49 = 0;
  core = 0;
  image_asset = 0;
  v50 = cryptex_bundle_create_with_directory();
  memcpy(v46, v51, sizeof(v46));
  if (cryptex_bundle_copy_cryptex2())
  {
    core = _cryptex_get_core();
    image_asset = cryptex_core_get_image_asset();
    v52 = sub_1000459E4(*(image_asset + 24), v57[40], *v54, obj);
    if (v52)
    {
      v38 = sub_100048090();
      v25 = 1;
      if (v38[1] <= 1uLL)
      {
        v25 = v38[2] > 1uLL;
      }

      if (v25)
      {
        v10 = 999;
      }

      else
      {
        v10 = 3;
      }

      v37 = v10;
      v24 = 1;
      if (v38[1] <= 1uLL)
      {
        v24 = v38[2] > 1uLL;
      }

      v11 = 2000;
      if (!v24)
      {
        v11 = 200;
      }

      v36 = v11;
      if (v52)
      {
        v23 = sub_100017530(v52, v37, v36);
      }

      else
      {
        v58 = "unknown error";
        v34 = strdup("unknown error");
        v12 = strlen("unknown error");
        v70 = "known-constant allocation";
        v69 = v34;
        v68 = v12;
        if (!v34)
        {
          v67 = 0;
          memset(v91, 0, sizeof(v91));
          v65 = 0;
          v64 = 3;
          v63 = &_os_log_default;
          v62 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v64 &= ~1u;
          }

          if (v64)
          {
            v20 = v64;
            v21 = v63;
            v22 = v62;
            v18 = v70;
            v19 = v68;
            v13 = __error();
            v14 = strerror(*v13);
            sub_1000031B0(v90, v18, v19, v14);
            v61 = _os_log_send_and_compose_impl(v20, &v67, v91, 80, &_mh_execute_header, v21, v22, "allocation failed: obj = %s, size = %lu, error = %s", v90, 32, v16);
            v65 = v61;
          }

          v60 = v65;
          v66 = v65;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002C2E8);
        }

        v23 = v34;
      }

      v35 = v23;
      warnx("failed to create dmg by applying root\n%s", v23);
      sub_100002DE4(&v35);
    }
  }

  else
  {
    v45 = sub_100048090();
    v33 = 1;
    if (v45[1] <= 1uLL)
    {
      v33 = v45[2] > 1uLL;
    }

    if (v33)
    {
      v5 = 999;
    }

    else
    {
      v5 = 3;
    }

    v44 = v5;
    v32 = 1;
    if (v45[1] <= 1uLL)
    {
      v32 = v45[2] > 1uLL;
    }

    v6 = 2000;
    if (!v32)
    {
      v6 = 200;
    }

    v43 = v6;
    if (v52)
    {
      v31 = sub_100017530(v52, v44, v43);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v41 = strdup("unknown error");
      v7 = strlen("unknown error");
      v81 = "known-constant allocation";
      v80 = v41;
      v79 = v7;
      if (!v41)
      {
        v78 = 0;
        memset(v93, 0, sizeof(v93));
        v76 = 0;
        v75 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v75 &= ~1u;
        }

        if (v75)
        {
          v28 = v75;
          v29 = oslog;
          v30 = type;
          v26 = v81;
          v27 = v79;
          v8 = __error();
          v9 = strerror(*v8);
          sub_1000031B0(v92, v26, v27, v9);
          v72 = _os_log_send_and_compose_impl(v28, &v78, v93, 80, &_mh_execute_header, v29, v30, "allocation failed: obj = %s, size = %lu, error = %s", v92, 32, v16);
          v76 = v72;
        }

        v71 = v76;
        v77 = v76;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002C014);
      }

      v39 = v41;
      v31 = v41;
    }

    v42 = v31;
    warnx("failed to copy cryptex from bundle\n%s", v31);
    sub_100002DE4(&v42);
  }

  v17 = v52;
  sub_1000030D0(&v50);
  return v17;
}

uint64_t sub_10002C37C(uint64_t a1, int a2, int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -1;
  v6 = -1;
  to_fd = -1;
  sub_10004860C(0, 1uLL, "copying %s...", *(a1 + 40));
  to_fd = openat(v8, *(v10 + 40), 513, 438);
  v11 = to_fd;
  if (to_fd < 0)
  {
    v7 = *__error();
    warnc(v7, "openat [%s]", *(v10 + 40));
  }

  else
  {
    v6 = fcopyfile(v9, to_fd, 0, 0xFu);
    if (v6)
    {
      v7 = *__error();
      warnc(v7, "fcopyfile [%s]", *(v10 + 40));
    }

    else
    {
      v7 = 0;
    }
  }

  v4 = v7;
  sub_1000038DC(&to_fd);
  return v4;
}

void sub_10002C4B8(uint64_t a1, char *a2, uint64_t a3, int a4, char *a5, uint64_t a6)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  __s2 = a5;
  v22 = a6;
  i = 0;
  v20 = 0;
  v19 = 0;
  v18 = a6;
  key = 0;
  if (a4)
  {
    if (a4 == 90)
    {
      warnx("mach-o is not signed: %s", v26);
      v16 = 1;
    }

    else
    {
      if (a4 == 92)
      {
        sub_1000483C8(2uLL, "not a mach-o: %s", v26);
      }

      else
      {
        warnc(v24, "failed to add mach-o to trust cache: %s", v26);
      }

      v16 = 1;
    }
  }

  else
  {
    v15 = strstr(v26, __s2) == v26;
    if (!v15)
    {
      v14 = 0;
      memset(__b, 0, sizeof(__b));
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
        sub_100003098(v29, v15);
        v12 = _os_log_send_and_compose_impl(v11, &v14, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: strstr(path, mntpath) == path -> %llu", v29);
      }

      v8[1] = v12;
      v13 = v12;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002C6E0);
    }

    key = &v26[strlen(__s2)];
    v19 = sub_10001E620(v25);
    sub_10004860C(0, 1uLL, "added mach-o: %s", key);
    sub_10004860C(0, 1uLL, "  cpu type: %s", v19);
    for (i = *(v25 + 40); ; i = v20)
    {
      v6 = 0;
      if (i)
      {
        v20 = *(i + 8);
        v6 = 1;
      }

      if ((v6 & 1) == 0)
      {
        break;
      }

      v8[0] = 0;
      memset(v28, 0, sizeof(v28));
      sub_10004860C(0, 1uLL, "  identity: %s", *(i + 128));
      sub_100023D24(i, v28);
      sub_10004860C(0, 1uLL, "  cdhash: %s", v28);
      if (*(v18 + 112))
      {
        string = xpc_dictionary_get_string(*(v18 + 112), key);
        if (string)
        {
          v8[0] = sub_10004BAF0(string);
        }
      }

      if (!v8[0])
      {
        v8[0] = sub_10004BAF0(*(v18 + 304));
      }

      sub_100023E48(i, v8[0]);
      sub_10004860C(0, 1uLL, "  exec before/after REM: %s", v8[0]);
      sub_100002DE4(v8);
    }

    v16 = 0;
  }

  sub_100002DE4(&v19);
}

uint64_t sub_10002C900(void *a1, __CFDictionary *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  array = 0;
  count = 0;
  Mutable = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  array = xpc_dictionary_get_array(a1, *(a3 + 16));
  if (array)
  {
    v19 = &_xpc_type_array;
    v36 = array;
    v35 = &_xpc_type_array;
    if (xpc_get_type(array) == &_xpc_type_array)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v18 = v37;
    if (v37)
    {
      count = xpc_array_get_count(array);
      if (count)
      {
        if (count > 8)
        {
          warnx("plist contains too many entries: %lu (max is %d)", count, 8);
          v27 = 22;
          v31 = 22;
          v20 = 1;
        }

        else
        {
          v23 = sub_100018314("CFBundleIdentifier");
          v22 = sub_100018314("CFBundleVersion");
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          for (index = 0; index < count; ++index)
          {
            xdict = xpc_array_get_value(array, index);
            v15 = &_xpc_type_dictionary;
            v33 = xdict;
            v32 = &_xpc_type_dictionary;
            if (xdict && (type = xpc_get_type(v33), type == v32))
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v14 = v34;
            if (!v34)
            {
              warnx("invalid %s entry in plist, not a dictionary", *(v28 + 16));
              v27 = 22;
              v31 = 22;
              v20 = 1;
              goto LABEL_27;
            }

            __s = xpc_dictionary_get_string(xdict, "CFBundleIdentifier");
            string = xpc_dictionary_get_string(xdict, "CFBundleVersion");
            if (!__s || !strlen(__s))
            {
              warnx("missing or zero length entry in dependencies array in plist");
              v27 = 22;
              v31 = 22;
              v20 = 1;
              goto LABEL_27;
            }

            value = sub_100018434();
            theDict = value;
            key = v23;
            v4 = sub_100018314(__s);
            CFDictionarySetValue(theDict, key, v4);
            if (string)
            {
              v8 = value;
              v7 = v22;
              v5 = sub_100018314(string);
              CFDictionarySetValue(v8, v7, v5);
            }

            CFArrayAppendValue(Mutable, value);
            sub_100006B40(&value);
          }

          v21 = sub_100018314(*(v28 + 16));
          CFDictionarySetValue(v29, v21, Mutable);
          v31 = v27;
          v20 = 1;
        }
      }

      else
      {
        v31 = v27;
        v20 = 1;
      }
    }

    else
    {
      warnx("invalid %s entry in plist, not an array", *(v28 + 16));
      v27 = 22;
      v31 = 22;
      v20 = 1;
    }
  }

  else
  {
    v31 = v27;
    v20 = 1;
  }

LABEL_27:
  sub_100006B40(&v21);
  sub_100006B40(&v22);
  sub_100006B40(&v23);
  sub_100006B40(&Mutable);
  return v31;
}

uint64_t sub_10002CD10(__CFDictionary **a1, const char *a2, void *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  key[1] = a1;
  key[0] = sub_100018314(a2);
  if (!CFDictionaryContainsKey(a1[4], key[0]))
  {
    sub_100018570(a1[4], key[0], v6);
  }

  sub_100006B40(key);
  return 1;
}

id sub_10002CDBC(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  context = objc_autoreleasePoolPush();
  v11 = 0;
  v9 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:location format:100 options:0 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v7;
  if (v7)
  {
    v1 = [NSString alloc];
    v8 = [v1 initWithData:v10 encoding:4];
    v5 = v8;
    v2 = v8;
    puts([v5 UTF8String]);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_storeStrong(&v12, v11);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_autoreleasePoolPop(context);
  v4 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v4;
}

id sub_10002CF40(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  context = objc_autoreleasePoolPush();
  v11 = 0;
  v9 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:location options:1 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v7;
  if (v7)
  {
    v1 = [NSString alloc];
    v8 = [v1 initWithData:v10 encoding:4];
    v5 = v8;
    v2 = v8;
    puts([v5 UTF8String]);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_storeStrong(&v12, v11);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_autoreleasePoolPop(context);
  v4 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v4;
}

id sub_10002D09C(void *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  v12 = 0;
  v10 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v13 format:100 options:0 error:&v10];
  objc_storeStrong(&v12, v10);
  v11 = v7;
  if (v7)
  {
    v2 = [NSString alloc];
    v9 = [v2 initWithCString:v15 encoding:4];
    obj = v12;
    v5 = [v11 writeToFile:v9 options:0 error:&obj];
    objc_storeStrong(&v12, obj);
    if (v5)
    {
      objc_storeStrong(&v14, v12);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    objc_storeStrong(&v14, v12);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(context);
  v4 = v14;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  return v4;
}

id sub_10002D234(void *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  v12 = 0;
  v10 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v10];
  objc_storeStrong(&v12, v10);
  v11 = v7;
  if (v7)
  {
    v2 = [NSString alloc];
    v9 = [v2 initWithCString:v15 encoding:4];
    obj = v12;
    v5 = [v11 writeToFile:v9 options:0 error:&obj];
    objc_storeStrong(&v12, obj);
    if (v5)
    {
      objc_storeStrong(&v14, v12);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    objc_storeStrong(&v14, v12);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(context);
  v4 = v14;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  return v4;
}

uint64_t sub_10002D3CC(uint64_t a1, int a2, char **a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = -1;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  bzero(&v17, 0x108uLL);
  sub_1000480E0();
  while (1)
  {
    v9 = getopt_long(v13, v10, *(v14 + 32), *(v14 + 40), &v8);
    if (v9 == -1)
    {
      break;
    }

    v7 = (*(v14 + 40) + 32 * v8);
    v6 = v12[optind - 1];
    if (optind < 1)
    {
      v5 = 0;
      memset(__b, 0, sizeof(__b));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v15, optind);
      _os_log_send_and_compose_impl(v4, &v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v15);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002D5ACLL);
    }

    if (v9 == 58)
    {
      errx(64, "missing argument for option: %s", *v7);
    }

    if (v9 == 63)
    {
      errx(64, "unknown option: %s", v6);
    }

    if (v9 != 105)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10002D648);
    }

    v17 |= 1uLL;
  }

  v12 += optind;
  v13 -= optind;
  if (v13 < 1)
  {
    errx(64, "a cryptex identifier must be provided");
  }

  __strlcpy_chk();
  sub_10004860C(0, 1uLL, "using cryptex identifier: %s", v18);
  v11 = sub_10002D734(&v17);
  return sysexit_np();
}

uint64_t sub_10002D734(uint64_t a1)
{
  v25 = a1;
  v24 = 0;
  v23 = -1;
  v22 = cryptex_attr_create();
  v21 = sub_100048090();
  if (v21[4])
  {
    v24 = sub_1000404F0(v21[4], v25 + 8);
    if (v24)
    {
      v20 = sub_100048090();
      v13 = 1;
      if (v20[1] <= 1uLL)
      {
        v13 = v20[2] > 1uLL;
      }

      if (v13)
      {
        v1 = 999;
      }

      else
      {
        v1 = 3;
      }

      v19 = v1;
      v12 = 1;
      if (v20[1] <= 1uLL)
      {
        v12 = v20[2] > 1uLL;
      }

      v2 = 2000;
      if (!v12)
      {
        v2 = 200;
      }

      v18[1] = v2;
      v18[0] = sub_100017530(v24, v19, v2);
      warnx("Uninstall failed.\n%s", v18[0]);
      sub_100002DE4(v18);
    }

    v23 = sub_100018A78(v24);
  }

  else
  {
    if (*v25)
    {
      cryptex_attr_set_uninstall_flags();
    }

    if (cryptex_uninstall())
    {
      sub_10004860C(0, 1uLL, "uninstalled: %s", (v25 + 8));
    }

    else
    {
      v17 = sub_100048090();
      v11 = 1;
      if (v17[1] <= 1uLL)
      {
        v11 = v17[2] > 1uLL;
      }

      if (v11)
      {
        v3 = 999;
      }

      else
      {
        v3 = 3;
      }

      v16 = v3;
      v10 = 1;
      if (v17[1] <= 1uLL)
      {
        v10 = v17[2] > 1uLL;
      }

      v4 = 2000;
      if (!v10)
      {
        v4 = 200;
      }

      v15[1] = v4;
      v26 = "unknown error";
      v14 = strdup("unknown error");
      v36 = "known-constant allocation";
      v35 = v14;
      v34 = strlen("unknown error");
      if (!v14)
      {
        v33 = 0;
        memset(v38, 0, sizeof(v38));
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
          v5 = __error();
          v6 = strerror(*v5);
          sub_1000031B0(v37, v36, v34, v6);
          v31 = _os_log_send_and_compose_impl(v30, &v33, v38, 80, &_mh_execute_header, v29, v28, "allocation failed: obj = %s, size = %lu, error = %s", v37, 32, v8);
        }

        v27 = v31;
        v32 = v31;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002DCD0);
      }

      v15[0] = v14;
      warnx("uninstall failed\n%s", v14);
      sub_100002DE4(v15);
    }
  }

  v9 = v23;
  sub_1000030D0(&v22);
  sub_100006B40(&v24);
  return v9;
}

NSMutableDictionary *sub_10002DD94(uint64_t a1)
{
  v18 = a1;
  v17 = objc_opt_new();
  if ((*(v18 + 16) & 1) == 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:*(v18 + 24)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v16);
  }

  if ((*(v18 + 16) & 2) == 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:*(v18 + 28)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v15);
  }

  if ((*(v18 + 16) & 4) == 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:*(v18 + 32)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v14);
  }

  if ((*(v18 + 16) & 0x10) == 0)
  {
    v13 = [NSNumber numberWithUnsignedLongLong:*(v18 + 40)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v13);
  }

  if ((*(v18 + 16) & 8) == 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:*(v18 + 36)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v12);
  }

  if ((*(v18 + 16) & 0x20) == 0)
  {
    v11 = [NSNumber numberWithBool:*(v18 + 48) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v11);
  }

  if ((*(v18 + 16) & 0x40) == 0)
  {
    v10 = [NSNumber numberWithBool:*(v18 + 49) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v10);
  }

  if ((*(v18 + 16) & 0x80) == 0)
  {
    v9 = [NSNumber numberWithBool:*(v18 + 50) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v9);
  }

  if ((*(v18 + 16) & 0x100) == 0)
  {
    v8 = [NSNumber numberWithBool:*(v18 + 51) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v8);
  }

  if ((*(v18 + 16) & 0x400) == 0)
  {
    v7 = [NSNumber numberWithBool:*(v18 + 53) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v7);
  }

  if ((*(v18 + 16) & 0x8000) == 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:*(v18 + 128)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v6);
  }

  if ((*(v18 + 16) & 0x10000) == 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:*(v18 + 132)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
  }

  if ((*(v18 + 16) & 0x20000) == 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:*(v18 + 136)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v4);
  }

  if ((*(v18 + 16) & 0x40000) == 0)
  {
    v3 = [NSNumber numberWithUnsignedInt:*(v18 + 140)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v3);
  }

  v2 = v17;
  objc_storeStrong(&v17, 0);
  return v2;
}

uint64_t sub_10002E4D8(uint64_t a1, int a2, char **a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = -1;
  v16 = a3;
  v15 = -1;
  v14 = 0;
  bzero(&v23, 0x110uLL);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = getenv("CRYPTEXCTL_CREATE_IDENTITY");
  v27 = ".";
  v28 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  LOWORD(v30[0]) = 6;
  HIDWORD(v30[24]) = 48;
  v31 = 0;
  v32 = 0;
  v30[1] = &_img4_chip_ap_sha2_384;
  v30[2] = 491542;
  HIDWORD(v30[4]) = 1;
  LODWORD(v30[3]) = 1;
  LODWORD(v30[6]) = 16843009;
  __s1 = 0;
  v12 = 96;
  *v11 = &v30[18] + 2;
  v10 = 0;
  v9 = sub_100048090();
  v8 = 1;
  sub_1000480E0();
  if (v26)
  {
    sub_1000483C8(1uLL, "identity plist path loaded from environment variable %s: %s", "CRYPTEXCTL_CREATE_IDENTITY", v26);
  }

  while (1)
  {
    v15 = getopt_long(v19, v16, *(v20 + 32), *(v20 + 40), &v14);
    if (v15 == -1)
    {
      break;
    }

    v7 = (*(v20 + 40) + 32 * v14);
    v6 = v18[optind - 1];
    if (optind < 1)
    {
      v5 = 0;
      memset(__b, 0, sizeof(__b));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v21, optind);
      _os_log_send_and_compose_impl(v4, &v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v21);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002E7D4);
    }

    switch(v15)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'A':
        if (!strcmp(optarg, "sha1"))
        {
          v30[1] = &_img4_chip_ap_sha1;
          HIDWORD(v30[24]) = 20;
        }

        else
        {
          if (strcmp(optarg, "sha2-384"))
          {
            errx(64, "invalid crypto algorithm: %s", optarg);
          }

          v30[1] = &_img4_chip_ap_sha2_384;
        }

        sub_1000483C8(1uLL, "ALGO = %s", optarg);
        ++v10;
        break;
      case 'B':
        v30[2] &= ~2uLL;
        HIDWORD(v30[3]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", HIDWORD(v30[3]));
        ++v10;
        break;
      case 'C':
        v30[2] &= ~4uLL;
        LODWORD(v30[4]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", LODWORD(v30[4]));
        ++v10;
        break;
      case 'D':
        HIDWORD(v30[4]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %u", HIDWORD(v30[4]));
        ++v10;
        break;
      case 'E':
        v30[2] &= ~0x10uLL;
        v30[5] = strtoull(optarg, 0, 0);
        sub_1000483C8(1uLL, "ECID = %#llx", v30[5]);
        ++v10;
        break;
      case 'F':
        v30[2] &= ~0x8000uLL;
        LODWORD(v30[16]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", LODWORD(v30[16]));
        ++v10;
        break;
      case 'H':
        v23 |= 1uLL;
        v8 = 0;
        break;
      case 'I':
        if (v26)
        {
          sub_1000483C8(1uLL, "overriding identity plist path from environment with provided argument");
        }

        v26 = optarg;
        sub_1000483C8(1uLL, "identity plist path = %s", optarg);
        break;
      case 'L':
        v30[2] &= ~0x40000uLL;
        HIDWORD(v30[17]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %#x", HIDWORD(v30[17]));
        ++v10;
        break;
      case 'M':
        v23 |= 2uLL;
        sub_1000483C8(1uLL, "personalizing with AMNM");
        break;
      case 'N':
        __s1 = optarg;
        if (strstr(optarg, "0x") == __s1)
        {
          __s1 += 2;
        }

        if (strlen(__s1) != v12)
        {
          errx(64, "nonce must be exactly %lu bytes", 48);
        }

        sub_100049940(*v11, __s1);
        sub_1000483C8(1uLL, "BNCH = %s", __s1);
        break;
      case 'P':
        LOBYTE(v30[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "CPRO = %u", v30[6] & 1);
        ++v10;
        break;
      case 'R':
        LODWORD(v30[3]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CEPO = %u", LODWORD(v30[3]));
        ++v10;
        break;
      case 'S':
        BYTE1(v30[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "CSEC = %u", BYTE1(v30[6]) & 1);
        ++v10;
        break;
      case 'T':
        v30[2] &= ~0x10000uLL;
        HIDWORD(v30[16]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", HIDWORD(v30[16]));
        ++v10;
        break;
      case 'V':
        v25 = optarg;
        sub_1000483C8(1uLL, "using variant: %s", optarg);
        break;
      case 'Y':
        v30[2] &= ~0x20000uLL;
        LODWORD(v30[17]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "STYP = %#x", LODWORD(v30[17]));
        ++v10;
        break;
      case 'c':
        v31 = optarg;
        sub_1000483C8(1uLL, "Copying manifest after successful personalize to %s.", optarg);
        break;
      case 'd':
        v30[2] &= ~0x1000uLL;
        LODWORD(v30[7]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "ESDM = %#x", LODWORD(v30[7]));
        ++v10;
        break;
      case 'g':
        v32 = optarg;
        sub_1000483C8(1uLL, "Copying GINF after successful personalize to %s.", v31);
        break;
      case 'o':
        v27 = optarg;
        sub_1000483C8(1uLL, "will write cryptex to: %s", optarg);
        break;
      case 'p':
        BYTE2(v30[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "EPRO = %u", BYTE2(v30[6]) & 1);
        ++v10;
        break;
      case 'q':
        v23 |= 4uLL;
        break;
      case 'r':
        v28 = 1;
        sub_1000483C8(1uLL, "will replace existing cryptex");
        break;
      case 's':
        BYTE3(v30[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "ESEC = %u", BYTE3(v30[6]) & 1);
        ++v10;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10002EFBCLL);
    }
  }

  if (v26 && v10)
  {
    errx(64, "must provide either a complete set of device identifiers at the command line or a device identity plist, but not both");
  }

  if (v26)
  {
    sub_10002F1C8(&v23);
  }

  if (v9[4])
  {
    memcpy(v30, (v9[4] + 24), 0x90uLL);
  }

  v18 += optind;
  v19 -= optind;
  if (v19 < 1)
  {
    errx(64, "a cryptex bundle path must be provided");
  }

  v24 = *v18;
  v17 = sub_10002F374();
  return sysexit_np();
}

void sub_10002F1C8(uint64_t a1)
{
  v7 = a1;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  v3 = -1;
  memset(__b, 0, sizeof(__b));
  v3 = open(*(v7 + 24), 0);
  v8 = v3;
  if (v3 < 0)
  {
    err(66, "open: %s", *(v7 + 24));
  }

  v6 = sub_10004B524(v3, __b);
  if (v6)
  {
    errc(66, v6, "read");
  }

  v5 = xpc_create_from_plist();
  if (!v5)
  {
    errx(66, "invalid plist: %s", *(v7 + 24));
  }

  v10 = v5;
  v9 = &_xpc_type_dictionary;
  type = xpc_get_type(v5);
  if (type == v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4 = v11;
  if (!v11)
  {
    errx(66, "plist not a dictionary");
  }

  xpc_dictionary_apply_f();
  sub_1000038DC(&v3);
  sub_1000030D0(&v5);
}

uint64_t sub_10002F374()
{
  v220 = __chkstk_darwin();
  v219 = 0;
  v218 = -1;
  v217 = 0;
  v216 = sub_100048084();
  v215 = sub_100048090();
  memset(__b, 0, sizeof(__b));
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v211 = v216[584];
  v210 = 0;
  v209 = 0;
  v208 = 0;
  memset(__src, 0, sizeof(__src));
  v228 = 0;
  v227 = 0;
  v226 = 0;
  LODWORD(__src[0]) = 1;
  memset(&__src[1], 0, 36);
  v206 = 0;
  v205 = -1;
  memcpy(__dst, "cryptex.XXXXXX", sizeof(__dst));
  memcpy(v340, "temp.XXXXXX", sizeof(v340));
  memset(__str, 0, sizeof(__str));
  v204 = -1;
  v203 = -1;
  v202 = (v220 + 200);
  v201 = v220 + 56;
  v200 = 0;
  memset(v199, 0, sizeof(v199));
  v193 = 0;
  v194 = &v193;
  v195 = 0;
  v196 = 40;
  v197 = 0;
  v198 = 0;
  if (*v220)
  {
    v201 = 0;
    v218 = cryptex_identity_set_host_identity();
    if (v218)
    {
      warnc(v218, "failed to set host identity");
LABEL_247:
      object = v194[4];
      if (object)
      {
        os_release(object);
      }

      cf = v194[3];
      if (cf)
      {
        CFRelease(cf);
      }

      sub_10004C66C(v199, v0);
      v221 = v218;
      v140 = 1;
      goto LABEL_252;
    }
  }

  else
  {
    v218 = cryptex_identity_set_chip();
    if (v218)
    {
      warnc(v218, "failed to set host identity to chip");
      goto LABEL_247;
    }
  }

  if ((*v220 & 4) != 0)
  {
    v213 = 1;
  }

  v218 = sub_10004B3B0(v211, __dst, &v204);
  if (v218 || (v218 = sub_10004B3B0(v211, v340, &v203)) != 0)
  {
    warnc(v218, "mkodtempat [output directory]");
    goto LABEL_247;
  }

  v205 = open(*(v220 + 8), 0x100000);
  v225 = v205;
  if (v205 < 0)
  {
    v218 = *__error();
    warn("open: %s", *(v220 + 8));
    goto LABEL_247;
  }

  v210 = cryptex_bundle_create_with_directory();
  memcpy(v192, __src, sizeof(v192));
  if ((cryptex_bundle_copy_cryptex2() & 1) == 0)
  {
    v191 = sub_100048090();
    v119 = 1;
    if (v191[1] <= 1uLL)
    {
      v119 = v191[2] > 1uLL;
    }

    if (v119)
    {
      v1 = 999;
    }

    else
    {
      v1 = 3;
    }

    v190 = v1;
    v118 = 1;
    if (v191[1] <= 1uLL)
    {
      v118 = v191[2] > 1uLL;
    }

    v2 = 2000;
    if (!v118)
    {
      v2 = 200;
    }

    v189 = v2;
    if (v219)
    {
      v117 = sub_100017530(v219, v190, v189);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v187 = strdup("unknown error");
      v3 = strlen("unknown error");
      v336 = "known-constant allocation";
      v335 = v187;
      v334 = v3;
      if (!v187)
      {
        v333 = 0;
        memset(v360, 0, sizeof(v360));
        v331 = 0;
        v330 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v330 &= ~1u;
        }

        if (v330)
        {
          v114 = v330;
          v115 = oslog;
          v116 = type;
          v112 = v336;
          v113 = v334;
          v4 = __error();
          v5 = strerror(*v4);
          sub_1000031B0(v359, v112, v113, v5);
          v327 = _os_log_send_and_compose_impl(v114, &v333, v360, 80, &_mh_execute_header, v115, v116, "allocation failed: obj = %s, size = %lu, error = %s", v359, 32, v47);
          v331 = v327;
        }

        v326 = v331;
        v332 = v331;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002F8F0);
      }

      v185 = v187;
      v117 = v187;
    }

    v188 = v117;
    warnx("failed to copy cryptex from bundle\n%s", v117);
    sub_100002DE4(&v188);
    v218 = sub_100018A78(v219);
    goto LABEL_247;
  }

  if ((cryptex_core_is_cryptex1() & 1) != 0 && v201 && (*(v201 + 16) & 0x78000) != 0)
  {
    errx(64, "must provide either a complete set of Cryptex1 identifiers at the command line or in a plist");
  }

  if (((cryptex_core_is_cryptex1() & 1) == 0 || (*(*(v208[6] + 216) + 65) & 1) == 0) && v201 && (*(v201 + 16) & 0x16) != 0)
  {
    errx(64, "must provide either a complete set of device identifiers at the command line or in a plist");
  }

  v206 = cryptex_attr_create();
  if ((*v220 & 2) != 0)
  {
    if (cryptex_core_is_cryptex1())
    {
      warnx("Mix-and-match (-M) is ignored for Cryptex1 bundles.");
    }

    else
    {
      v212 |= 1uLL;
    }
  }

  if (*(v215[5] + 8))
  {
    cryptex_attr_set_tss_url();
  }

  v214 = *v215[5];
  if (*(v215[5] + 24) && *(v215[5] + 32))
  {
    cryptex_attr_set_socks_proxy();
  }

  if (*(v215[5] + 40))
  {
    v184 = open(*(v215[5] + 40), 0);
    v224 = v184;
    if (v184 < 0)
    {
      v218 = *__error();
      errc(64, v218, "bad token file");
    }

    v218 = sub_10004B524(v184, v199);
    if (v218)
    {
      errc(64, v218, "failed to read token file");
    }

    cryptex_attr_set_auth_token();
    sub_1000038DC(&v184);
  }

  if ((os_variant_allows_internal_security_policies() & 1) != 0 && (*v215 & 0x10) != 0)
  {
    v212 |= 2uLL;
  }

  if (v215[4])
  {
    v183 = v215[4];
    v219 = sub_100040538(v183, v208, v213, __b);
    if (v219)
    {
      v182 = sub_100048090();
      v111 = 1;
      if (v182[1] <= 1uLL)
      {
        v111 = v182[2] > 1uLL;
      }

      if (v111)
      {
        v6 = 999;
      }

      else
      {
        v6 = 3;
      }

      v181 = v6;
      v110 = 1;
      if (v182[1] <= 1uLL)
      {
        v110 = v182[2] > 1uLL;
      }

      v7 = 2000;
      if (!v110)
      {
        v7 = 200;
      }

      v180 = v7;
      if (v219)
      {
        v109 = sub_100017530(v219, v181, v180);
      }

      else
      {
        v177 = "unknown error";
        v236 = "unknown error";
        v178 = strdup("unknown error");
        v8 = strlen("unknown error");
        v325 = "known-constant allocation";
        v324 = v178;
        v323 = v8;
        if (!v178)
        {
          v322 = 0;
          memset(v358, 0, sizeof(v358));
          v320 = 0;
          v319 = 3;
          v318 = &_os_log_default;
          v317 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v319 &= ~1u;
          }

          if (v319)
          {
            v106 = v319;
            v107 = v318;
            v108 = v317;
            v104 = v325;
            v105 = v323;
            v9 = __error();
            v10 = strerror(*v9);
            sub_1000031B0(v357, v104, v105, v10);
            v316 = _os_log_send_and_compose_impl(v106, &v322, v358, 80, &_mh_execute_header, v107, v108, "allocation failed: obj = %s, size = %lu, error = %s", v357, 32, v47);
            v320 = v316;
          }

          v315 = v320;
          v321 = v320;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002FE34);
        }

        v176 = v178;
        v109 = v178;
      }

      v179 = v109;
      warnx("failed to copy nonce from remote device\n%s", v109);
      sub_100002DE4(&v179);
      goto LABEL_247;
    }

    v202 = __b;
  }

  cryptex_attr_set_personalization_flags();
  cryptex_attr_set_authentication();
  v200 = dispatch_queue_create("cryptexctl.personalize", 0);
  v170 = _NSConcreteStackBlock;
  v171 = 0x40000000;
  v172 = 0;
  v173 = sub_1000329F4;
  v174 = &unk_10007CAA0;
  v175 = &v193;
  v217 = cryptex_personalize2();
  if ((v217 & 1) == 0)
  {
    v218 = sub_100018A78(v219);
    v169 = sub_100048090();
    v103 = 1;
    if (v169[1] <= 1uLL)
    {
      v103 = v169[2] > 1uLL;
    }

    if (v103)
    {
      v11 = 999;
    }

    else
    {
      v11 = 3;
    }

    v168 = v11;
    v102 = 1;
    if (v169[1] <= 1uLL)
    {
      v102 = v169[2] > 1uLL;
    }

    v12 = 2000;
    if (!v102)
    {
      v12 = 200;
    }

    v167 = v12;
    if (v219)
    {
      v101 = sub_100017530(v219, v168, v167);
    }

    else
    {
      v164 = "unknown error";
      v235 = "unknown error";
      v165 = strdup("unknown error");
      v13 = strlen("unknown error");
      v314 = "known-constant allocation";
      v313 = v165;
      v312 = v13;
      if (!v165)
      {
        v311 = 0;
        memset(v356, 0, sizeof(v356));
        v309 = 0;
        v308 = 3;
        v307 = &_os_log_default;
        v306 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v308 &= ~1u;
        }

        if (v308)
        {
          v98 = v308;
          v99 = v307;
          v100 = v306;
          v96 = v314;
          v97 = v312;
          v14 = __error();
          v15 = strerror(*v14);
          sub_1000031B0(v355, v96, v97, v15);
          v305 = _os_log_send_and_compose_impl(v98, &v311, v356, 80, &_mh_execute_header, v99, v100, "allocation failed: obj = %s, size = %lu, error = %s", v355, 32, v47);
          v309 = v305;
        }

        v304 = v309;
        v310 = v309;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003018CLL);
      }

      v163 = v165;
      v101 = v165;
    }

    v166 = v101;
    warnx("failed to initiate cryptex personalization\n%s", v101);
    sub_100002DE4(&v166);
    goto LABEL_247;
  }

  if (v201)
  {
    sub_10004860C(0, 1uLL, "personalizing with identity:");
    sub_10004860C(0, 1uLL, "  BORD = %#x", *(v201 + 28));
    sub_10004860C(0, 1uLL, "  CHIP = %#x", *(v201 + 32));
    sub_10004860C(0, 1uLL, "  SDOM = %#x", *(v201 + 36));
    sub_10004860C(0, 1uLL, "  FCHP = %#x", *(v201 + 128));
    sub_10004860C(0, 1uLL, "  TYPE = %#x", *(v201 + 132));
    sub_10004860C(0, 1uLL, "  STYP = %#x", *(v201 + 136));
    sub_10004860C(0, 1uLL, "  CLAS = %#x", *(v201 + 140));
    sub_10004860C(0, 1uLL, "  ECID = %#llx", *(v201 + 40));
    sub_10004860C(0, 1uLL, "  CPRO = %#x", *(v201 + 48) & 1);
    sub_10004860C(0, 1uLL, "  CSEC = %#x", *(v201 + 49) & 1);
    sub_10004860C(0, 1uLL, "  EPRO = %#x", *(v201 + 50) & 1);
    sub_10004860C(0, 1uLL, "  ESEC = %#x", *(v201 + 51) & 1);
    sub_10004860C(0, 1uLL, "  rsch = %#x", *(v201 + 53) & 1);
  }

  else
  {
    sub_10004860C(0, 1uLL, "personalizing with host identity");
  }

  if ((*v220 & 2) != 0)
  {
    sub_10004860C(0, 1uLL, "personalizing with mix-n-match");
  }

  if (v202)
  {
    sub_100049764(__str, v202 + 2, *(v202 + 13));
    sub_10004860C(0, 1uLL, "personalizing with nonce:");
    sub_10004860C(0, 1uLL, "  %s", __str);
  }

  sub_10004809C();
  if (v194[3])
  {
    v218 = sub_100018A78(v194[3]);
    v162 = sub_100048090();
    v95 = 1;
    if (v162[1] <= 1uLL)
    {
      v95 = v162[2] > 1uLL;
    }

    if (v95)
    {
      v16 = 999;
    }

    else
    {
      v16 = 3;
    }

    v161 = v16;
    v94 = 1;
    if (v162[1] <= 1uLL)
    {
      v94 = v162[2] > 1uLL;
    }

    v17 = 2000;
    if (!v94)
    {
      v17 = 200;
    }

    v160 = v17;
    if (v194[3])
    {
      v93 = sub_100017530(v194[3], v161, v160);
    }

    else
    {
      v157 = "unknown error";
      v234 = "unknown error";
      v158 = strdup("unknown error");
      v18 = strlen("unknown error");
      v303 = "known-constant allocation";
      v302 = v158;
      v301 = v18;
      if (!v158)
      {
        v300 = 0;
        memset(v354, 0, sizeof(v354));
        v298 = 0;
        v297 = 3;
        v296 = &_os_log_default;
        v295 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v297 &= ~1u;
        }

        if (v297)
        {
          v90 = v297;
          v91 = v296;
          v92 = v295;
          v88 = v303;
          v89 = v301;
          v19 = __error();
          v20 = strerror(*v19);
          sub_1000031B0(v353, v88, v89, v20);
          v294 = _os_log_send_and_compose_impl(v90, &v300, v354, 80, &_mh_execute_header, v91, v92, "allocation failed: obj = %s, size = %lu, error = %s", v353, 32, v47);
          v298 = v294;
        }

        v293 = v298;
        v299 = v298;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100030708);
      }

      v156 = v158;
      v93 = v158;
    }

    v159 = v93;
    warnx("failed to personalize cryptex\n%s", v93);
    sub_100002DE4(&v159);
    goto LABEL_247;
  }

  v209 = cryptex_bundle_create();
  if ((cryptex_bundle_set_cryptex2() & 1) == 0)
  {
    v218 = sub_100018A78(v219);
    v155 = sub_100048090();
    v87 = 1;
    if (v155[1] <= 1uLL)
    {
      v87 = v155[2] > 1uLL;
    }

    if (v87)
    {
      v21 = 999;
    }

    else
    {
      v21 = 3;
    }

    v154 = v21;
    v86 = 1;
    if (v155[1] <= 1uLL)
    {
      v86 = v155[2] > 1uLL;
    }

    v22 = 2000;
    if (!v86)
    {
      v22 = 200;
    }

    v153 = v22;
    if (v219)
    {
      v85 = sub_100017530(v219, v154, v153);
    }

    else
    {
      v150 = "unknown error";
      v233 = "unknown error";
      v151 = strdup("unknown error");
      v23 = strlen("unknown error");
      v292 = "known-constant allocation";
      v291 = v151;
      v290 = v23;
      if (!v151)
      {
        v289 = 0;
        memset(v352, 0, sizeof(v352));
        v287 = 0;
        v286 = 3;
        v285 = &_os_log_default;
        v284 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v286 &= ~1u;
        }

        if (v286)
        {
          v82 = v286;
          v83 = v285;
          v84 = v284;
          v80 = v292;
          v81 = v290;
          v24 = __error();
          v25 = strerror(*v24);
          sub_1000031B0(v351, v80, v81, v25);
          v283 = _os_log_send_and_compose_impl(v82, &v289, v352, 80, &_mh_execute_header, v83, v84, "allocation failed: obj = %s, size = %lu, error = %s", v351, 32, v47);
          v287 = v283;
        }

        v282 = v287;
        v288 = v287;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x1000309CCLL);
      }

      v149 = v151;
      v85 = v151;
    }

    v152 = v85;
    warnx("failed to add cryptex to bundle\n%s", v85);
    sub_100002DE4(&v152);
    goto LABEL_247;
  }

  if (*(v220 + 264))
  {
    if (cryptex_core_is_cryptex1())
    {
      v148 = open(*(v220 + 264), 513);
      v223 = v148;
      if (v148 < 0)
      {
        v218 = *__error();
        warn("open: %s", *(v220 + 256));
        v140 = 2;
      }

      else
      {
        v219 = cryptex_fcopy_info_plist();
        if (v219)
        {
          v147 = sub_100048090();
          v79 = 1;
          if (v147[1] <= 1uLL)
          {
            v79 = v147[2] > 1uLL;
          }

          if (v79)
          {
            v26 = 999;
          }

          else
          {
            v26 = 3;
          }

          v146 = v26;
          v78 = 1;
          if (v147[1] <= 1uLL)
          {
            v78 = v147[2] > 1uLL;
          }

          v27 = 2000;
          if (!v78)
          {
            v27 = 200;
          }

          v145 = v27;
          if (v219)
          {
            v77 = sub_100017530(v219, v146, v145);
          }

          else
          {
            v142 = "unknown error";
            v232 = "unknown error";
            v143 = strdup("unknown error");
            v28 = strlen("unknown error");
            v281 = "known-constant allocation";
            v280 = v143;
            v279 = v28;
            if (!v143)
            {
              v278 = 0;
              memset(v350, 0, sizeof(v350));
              v276 = 0;
              v275 = 3;
              v274 = &_os_log_default;
              v273 = OS_LOG_TYPE_ERROR;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v275 &= ~1u;
              }

              if (v275)
              {
                v74 = v275;
                v75 = v274;
                v76 = v273;
                v72 = v281;
                v73 = v279;
                v29 = __error();
                v30 = strerror(*v29);
                sub_1000031B0(v349, v72, v73, v30);
                v272 = _os_log_send_and_compose_impl(v74, &v278, v350, 80, &_mh_execute_header, v75, v76, "allocation failed: obj = %s, size = %lu, error = %s", v349, 32, v47);
                v276 = v272;
              }

              v271 = v276;
              v277 = v276;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100030D00);
            }

            v141 = v143;
            v77 = v143;
          }

          v144 = v77;
          warnx("Nonfatal - failed to write ginf\n%s", v77);
          sub_100002DE4(&v144);
        }

        v140 = 0;
      }

      sub_1000038DC(&v148);
      if (v140)
      {
        goto LABEL_247;
      }
    }

    else
    {
      warn("Will not produce ginf, as this is not a cryptex1 cryptex");
    }
  }

  if (!*(v220 + 256))
  {
    if (cryptex_bundle_write2())
    {
      v218 = sub_100032B68(v220, __dst);
    }

    else
    {
      v218 = sub_100018A78(v219);
      v124 = sub_100048090();
      v55 = 1;
      if (v124[1] <= 1uLL)
      {
        v55 = v124[2] > 1uLL;
      }

      if (v55)
      {
        v41 = 999;
      }

      else
      {
        v41 = 3;
      }

      v123 = v41;
      v54 = 1;
      if (v124[1] <= 1uLL)
      {
        v54 = v124[2] > 1uLL;
      }

      v42 = 2000;
      if (!v54)
      {
        v42 = 200;
      }

      v122 = v42;
      if (v219)
      {
        v53 = sub_100017530(v219, v123, v122);
      }

      else
      {
        v229 = "unknown error";
        v120 = strdup("unknown error");
        v43 = strlen("unknown error");
        v248 = "known-constant allocation";
        v247 = v120;
        v246 = v43;
        if (!v120)
        {
          v245 = 0;
          memset(v344, 0, sizeof(v344));
          v243 = 0;
          v242 = 3;
          v241 = &_os_log_default;
          v240 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v242 &= ~1u;
          }

          if (v242)
          {
            v50 = v242;
            v51 = v241;
            v52 = v240;
            v48 = v248;
            v49 = v246;
            v44 = __error();
            v45 = strerror(*v44);
            sub_1000031B0(v343, v48, v49, v45);
            v239 = _os_log_send_and_compose_impl(v50, &v245, v344, 80, &_mh_execute_header, v51, v52, "allocation failed: obj = %s, size = %lu, error = %s", v343, 32, v47);
            v243 = v239;
          }

          v238 = v243;
          v244 = v243;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100031600);
        }

        v53 = v120;
      }

      v121 = v53;
      warnx("failed to write cryptex bundle\n%s", v53);
      sub_100002DE4(&v121);
    }

    goto LABEL_247;
  }

  if (strcmp(*(v220 + 32), "."))
  {
    v139 = sub_100048090();
    v71 = 1;
    if (v139[1] <= 1uLL)
    {
      v71 = v139[2] > 1uLL;
    }

    if (v71)
    {
      v31 = 999;
    }

    else
    {
      v31 = 3;
    }

    v138 = v31;
    v70 = 1;
    if (v139[1] <= 1uLL)
    {
      v70 = v139[2] > 1uLL;
    }

    v32 = 2000;
    if (!v70)
    {
      v32 = 200;
    }

    v137 = v32;
    if (v219)
    {
      v69 = sub_100017530(v219, v138, v137);
    }

    else
    {
      v134 = "unknown error";
      v231 = "unknown error";
      v135 = strdup("unknown error");
      v33 = strlen("unknown error");
      v270 = "known-constant allocation";
      v269 = v135;
      v268 = v33;
      if (!v135)
      {
        v267 = 0;
        memset(v348, 0, sizeof(v348));
        v265 = 0;
        v264 = 3;
        v263 = &_os_log_default;
        v262 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v264 &= ~1u;
        }

        if (v264)
        {
          v66 = v264;
          v67 = v263;
          v68 = v262;
          v64 = v270;
          v65 = v268;
          v34 = __error();
          v35 = strerror(*v34);
          sub_1000031B0(v347, v64, v65, v35);
          v261 = _os_log_send_and_compose_impl(v66, &v267, v348, 80, &_mh_execute_header, v67, v68, "allocation failed: obj = %s, size = %lu, error = %s", v347, 32, v47);
          v265 = v261;
        }

        v260 = v265;
        v266 = v265;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100031004);
      }

      v133 = v135;
      v69 = v135;
    }

    v136 = v69;
    warnx("copy-personalized-manifest prevents writing of personalized cryptex.\n%s", v69);
    sub_100002DE4(&v136);
    goto LABEL_247;
  }

  v132 = open(*(v220 + 256), 513);
  v222 = v132;
  if (v132 < 0)
  {
    v218 = *__error();
    warn("open: %s", *(v220 + 256));
    v140 = 2;
  }

  else
  {
    v219 = cryptex_fcopy_personalized_manifest2();
    if (v219)
    {
      v131 = sub_100048090();
      v63 = 1;
      if (v131[1] <= 1uLL)
      {
        v63 = v131[2] > 1uLL;
      }

      if (v63)
      {
        v36 = 999;
      }

      else
      {
        v36 = 3;
      }

      v130 = v36;
      v62 = 1;
      if (v131[1] <= 1uLL)
      {
        v62 = v131[2] > 1uLL;
      }

      v37 = 2000;
      if (!v62)
      {
        v37 = 200;
      }

      v129 = v37;
      if (v219)
      {
        v61 = sub_100017530(v219, v130, v129);
      }

      else
      {
        v126 = "unknown error";
        v230 = "unknown error";
        v127 = strdup("unknown error");
        v38 = strlen("unknown error");
        v259 = "known-constant allocation";
        v258 = v127;
        v257 = v38;
        if (!v127)
        {
          v256 = 0;
          memset(v346, 0, sizeof(v346));
          v254 = 0;
          v253 = 3;
          v252 = &_os_log_default;
          v251 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v253 &= ~1u;
          }

          if (v253)
          {
            v58 = v253;
            v59 = v252;
            v60 = v251;
            v56 = v259;
            v57 = v257;
            v39 = __error();
            v40 = strerror(*v39);
            sub_1000031B0(v345, v56, v57, v40);
            v250 = _os_log_send_and_compose_impl(v58, &v256, v346, 80, &_mh_execute_header, v59, v60, "allocation failed: obj = %s, size = %lu, error = %s", v345, 32, v47);
            v254 = v250;
          }

          v249 = v254;
          v255 = v254;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100031310);
        }

        v125 = v127;
        v61 = v127;
      }

      v128 = v61;
      warnx("failed to write cryptex bundle\n%s", v61);
      sub_100002DE4(&v128);
      v140 = 2;
    }

    else
    {
      v140 = 0;
    }
  }

  sub_1000038DC(&v132);
  if (!v140 || v140 == 2)
  {
    goto LABEL_247;
  }

LABEL_252:
  _Block_object_dispose(&v193, 8);
  sub_1000030D0(&v200);
  sub_1000038DC(&v203);
  sub_1000038DC(&v204);
  sub_1000038DC(&v205);
  sub_1000030D0(&v206);
  sub_1000030D0(&v208);
  sub_1000030D0(&v209);
  sub_1000030D0(&v210);
  sub_100006B40(&v219);
  return v221;
}

void sub_10003176C(char *a1, void *a2, uint64_t a3)
{
  __s1 = a1;
  xstring = a2;
  v14 = a3;
  v13 = a3;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = *(a3 + 72);
  xBOOL = 0;
  v6 = 0;
  v5 = xpc_copy_clean_description();
  if (!strcmp(__s1, "ALGO"))
  {
    v75 = xstring;
    v74 = &_xpc_type_string;
    if (xstring && xpc_get_type(v75) == v74)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    xBOOL = v76;
    if (v76)
    {
      string_ptr = xpc_string_get_string_ptr(xstring);
      if (!strcmp(string_ptr, "sha1"))
      {
        *(v13 + 64) = &_img4_chip_ap_sha1;
        *(v13 + 252) = 20;
        goto LABEL_158;
      }

      if (!strcmp(string_ptr, "sha2-384"))
      {
        *(v13 + 64) = &_img4_chip_ap_sha2_384;
        *(v13 + 252) = 48;
        goto LABEL_158;
      }
    }

LABEL_145:
    warnx("invalid value for: %s: %s", __s1, v5);
    goto LABEL_158;
  }

  if (!strcmp(__s1, "CEPO"))
  {
    v72 = xstring;
    v71 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v72) == v71)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    xBOOL = v73;
    if (!v73)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 80);
    v9 = 1;
    sub_10004860C(0, 1uLL, "identity plist:CEPO = %s", v5);
  }

  else if (!strcmp(__s1, "BORD"))
  {
    v69 = xstring;
    v68 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v69) == v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    xBOOL = v70;
    if (!v70)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 84);
    v9 = 2;
    sub_10004860C(0, 1uLL, "identity plist:BORD = %s", v5);
  }

  else if (!strcmp(__s1, "CHIP"))
  {
    v66 = xstring;
    v65 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v66) == v65)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    xBOOL = v67;
    if (!v67)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 88);
    v9 = 4;
    sub_10004860C(0, 1uLL, "identity plist:CHIP = %s", v5);
  }

  else if (!strcmp(__s1, "ECID"))
  {
    v63 = xstring;
    v62 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v63) == v62)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    xBOOL = v64;
    if (!v64)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v11 = (v13 + 96);
    v9 = 16;
    sub_10004860C(0, 1uLL, "identity plist:ECID = %s", v5);
  }

  else if (!strcmp(__s1, "SDOM"))
  {
    v60 = xstring;
    v59 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v60) == v59)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    xBOOL = v61;
    if (!v61)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 92);
    v9 = 8;
    sub_10004860C(0, 1uLL, "identity plist:SDOM = %s", v5);
  }

  else if (!strcmp(__s1, "CPRO"))
  {
    v57 = xstring;
    v56 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v57) == v56)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    xBOOL = v58;
    if (!v58)
    {
      v54 = xstring;
      v53 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v54) == v53)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      xBOOL = v55;
    }

    v10 = (v13 + 104);
    v9 = 32;
    sub_10004860C(0, 1uLL, "identity plist:CPRO = %s", v5);
  }

  else if (!strcmp(__s1, "CSEC"))
  {
    v51 = xstring;
    v50 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v51) == v50)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    xBOOL = v52;
    if (!v52)
    {
      v48 = xstring;
      v47 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v48) == v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      xBOOL = v49;
    }

    v10 = (v13 + 105);
    v9 = 64;
    sub_10004860C(0, 1uLL, "identity plist:CSEC = %s", v5);
  }

  else if (!strcmp(__s1, "EPRO"))
  {
    object = xstring;
    v44 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(object) == v44)
    {
      v46 = object;
    }

    else
    {
      v46 = 0;
    }

    xBOOL = v46;
    if (!v46)
    {
      v42 = xstring;
      v41 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v42) == v41)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      xBOOL = v43;
    }

    v10 = (v13 + 106);
    v9 = 128;
    sub_10004860C(0, 1uLL, "identity plist:EPRO = %s", v5);
  }

  else if (!strcmp(__s1, "ESEC"))
  {
    v39 = xstring;
    v38 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v39) == v38)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    xBOOL = v40;
    if (!v40)
    {
      v36 = xstring;
      v35 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v36) == v35)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      xBOOL = v37;
    }

    v10 = (v13 + 107);
    v9 = 256;
    sub_10004860C(0, 1uLL, "identity plist:ESEC = %s", v5);
  }

  else if (!strcmp(__s1, "rsch"))
  {
    v33 = xstring;
    v32 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v33) == v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    xBOOL = v34;
    if (!v34)
    {
      v30 = xstring;
      v29 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v30) == v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      xBOOL = v31;
    }

    v10 = (v13 + 109);
    v9 = 1024;
    sub_10004860C(0, 1uLL, "identity plist:rsch = %s", v5);
  }

  else if (!strcmp(__s1, "FCHP"))
  {
    v27 = xstring;
    v26 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v27) == v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    xBOOL = v28;
    if (!v28)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 184);
    v9 = 0x8000;
    sub_10004860C(0, 1uLL, "identity plist:FCHP = %s", v5);
  }

  else if (!strcmp(__s1, "TYPE"))
  {
    v24 = xstring;
    v23 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v24) == v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    xBOOL = v25;
    if (!v25)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 188);
    v9 = 0x10000;
    sub_10004860C(0, 1uLL, "identity plist:TYPE = %s", v5);
  }

  else if (!strcmp(__s1, "STYP"))
  {
    v21 = xstring;
    v20 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v21) == v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    xBOOL = v22;
    if (!v22)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 192);
    v9 = 0x20000;
    sub_10004860C(0, 1uLL, "identity plist:STYP = %s", v5);
  }

  else if (!strcmp(__s1, "CLAS"))
  {
    v18 = xstring;
    v17 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v18) == v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    xBOOL = v19;
    if (!v19)
    {
      v6 = sub_1000328AC(__s1, xstring, v5);
      xBOOL = v6;
    }

    v12 = (v13 + 196);
    v9 = 0x40000;
    sub_10004860C(0, 1uLL, "identity plist:CLAS = %s", v5);
  }

  if (!xBOOL)
  {
    goto LABEL_145;
  }

  if (v10)
  {
    if (xpc_get_type(xBOOL) == &_xpc_type_BOOL)
    {
      *v10 = xpc_BOOL_get_value(xBOOL);
    }

    else
    {
      *v10 = xpc_uint64_get_value(xBOOL) != 0;
    }

    *(v13 + 72) = v8 & ~v9;
  }

  else if (v12)
  {
    value = xpc_uint64_get_value(xBOOL);
    if (value <= 0xFFFFFFFF)
    {
      *v12 = value;
    }

    else
    {
      warnx("invalid value for: %s: %s", __s1, v5);
    }

    *(v13 + 72) = v8 & ~v9;
  }

  else if (v11)
  {
    *v11 = xpc_uint64_get_value(xBOOL);
    *(v13 + 72) = v8 & ~v9;
  }

LABEL_158:
  sub_100002DE4(&v5);
  sub_1000030D0(&v6);
}

xpc_object_t sub_1000328AC(const char *a1, void *a2, const char *a3)
{
  v6 = 0;
  if (a2 && xpc_get_type(a2) == &_xpc_type_string)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    __str = xpc_string_get_string_ptr(v10);
    *__error() = 0;
    value = strtoull(__str, 0, 0);
    if (*__error())
    {
      warn("invalid value for: %s: %s", a1, a3);
    }

    else
    {
      return xpc_uint64_create(value);
    }
  }

  return v6;
}

void sub_100032A44(void *a1, __CFError *a2, CFTypeRef *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = sub_100048090();
  v4 = 3;
  v3 = 200;
  if (v5[1] > 1uLL || v5[2] > 1uLL)
  {
    v4 = 999;
    v3 = 2000;
  }

  if (v8)
  {
    v6 = sub_100017530(v8, v4, v3);
    sub_10004860C(0, 1uLL, "personalization result: failed");
    sub_10004860C(0, 1uLL, "%s", v6);
  }

  else
  {
    sub_10004860C(0, 1uLL, "personalization result: success");
  }

  *v7 = sub_100018E24(v8);
  v7[1] = os_retain(v9);
  sub_1000480C0();
  sub_100002DE4(&v6);
}

uint64_t sub_100032B68(uint64_t a1, char *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = -1;
  v7 = sub_100048084();
  memset(__b, 0, sizeof(__b));
  bzero(v14, 0x400uLL);
  v6 = -1;
  v2 = basename(*(v10 + 8));
  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.signed", v2);
  __snprintf_chk(v14, 0x400uLL, 0, 0x400uLL, "%s/%s", *(v10 + 32), __b);
  v6 = open(*(v10 + 32), 0x100000);
  v12 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    while (1)
    {
      memcpy(__dst, "replaced.XXXXXX", sizeof(__dst));
      v5 = -1;
      v8 = sub_10004AA74(v7[584], v9, v6, __b);
      if (v8)
      {
        if (v8 == 17 || v8 == 66)
        {
          if ((*(v10 + 40) & 1) == 0)
          {
            warnx("cryptex directory exists: %s", v14);
            v4 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "replacing existing directory");
          v8 = sub_10004B3B0(v7[584], __dst, &v5);
          if (v8)
          {
            warnc(v8, "could not move old directory aside");
            v4 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "will rename into: %s", __dst);
          v8 = sub_10004AA74(v6, __b, v5, __b);
          if (v8)
          {
            warnc(v8, "could not rename old directory");
            v4 = 6;
            goto LABEL_16;
          }

          v8 = 35;
        }

        else
        {
          warnc(v8, "renameat_xdev: %s", v14);
        }
      }

      else
      {
        sub_10004860C(0, 1uLL, "cryptex written to: %s", v14);
        v8 = 0;
      }

      v4 = 0;
LABEL_16:
      sub_1000038DC(&v5);
      if (v4 || v8 != 35)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = *__error();
  warnc(v8, "open: %s", *(v10 + 32));
LABEL_18:
  v11 = v8;
  sub_1000038DC(&v6);
  return v11;
}

uint64_t sub_100032EE8(uint64_t a1)
{
  description = collation_get_description();
  if (description)
  {
    return fprintf(__stdoutp, "%s\n", description);
  }

  else
  {
    return fprintf(__stdoutp, "Unable to get description for NULL collation.\n");
  }
}

uint64_t sub_100032F64(uint64_t a1, int a2, char **a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  v7 = 0;
  v8 = 0;
  sub_1000480E0();
  while (1)
  {
    v10 = getopt_long(v14, v11, *(v15 + 32), *(v15 + 40), &v9);
    if (v10 == -1)
    {
      break;
    }

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
      JUMPOUT(0x10003312CLL);
    }

    switch(v10)
    {
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'c':
        v7 |= 1uLL;
        break;
      case 's':
        v7 |= 2uLL;
        v8 = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000331C8);
    }
  }

  v13 += optind;
  v14 -= optind;
  v12 = sub_100033248(&v7);
  return sysexit_np();
}

uint64_t sub_100033248(void *a1)
{
  if ((*a1 & 1) == 0 && *a1)
  {
    if ((*a1 & 2) != 0)
    {
      if (a1[1])
      {
        return sub_100033328(a1);
      }

      else
      {
        v2 = 22;
        warnc(22, "No session selected.");
      }
    }

    else
    {
      v2 = 22;
      warnc(22, "Invalid flags.");
    }
  }

  else
  {
    fprintf(__stdoutp, "Collation for current user:\n");
    return sub_100033328(a1);
  }

  return v2;
}

uint64_t sub_100033328(uint64_t a1)
{
  v3 = 0;
  object = 0;
  if (*(a1 + 8))
  {
    if (sub_100025DE4(*(a1 + 8)))
    {
      object = collation_create_for_user();
    }

    else
    {
      v3 = 22;
      warnc(22, "Session %s not found", *(a1 + 8));
    }
  }

  else
  {
    object = collation_create();
  }

  if (object)
  {
    sub_100032EE8(object);
    os_release(object);
  }

  return v3;
}

uint64_t sub_1000333EC(uint64_t a1, int a2, char *const *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = a3;
  v12 = -1;
  v11 = 0;
  v9 = xmmword_10005BF50;
  v10 = 0;
  sub_1000480E0();
  while (1)
  {
    v12 = getopt_long(v16, v13, *(v17 + 32), *(v17 + 40), &v11);
    if (v12 == -1)
    {
      break;
    }

    v8 = (*(v17 + 40) + 32 * v11);
    v7 = v15[optind - 1];
    v6 = 0;
    if (optind < 1)
    {
      v5 = 0;
      memset(__b, 0, sizeof(__b));
      v4 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = 2;
      }

      sub_1000013C8(v18, optind);
      _os_log_send_and_compose_impl(v4, &v5, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v18);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000335DCLL);
    }

    switch(v12)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v8);
      case '?':
        errx(64, "unknown option: %s", v7);
      case 'e':
        v14 = sub_100048490(optarg, &v6);
        if (v14)
        {
          errc(64, v14, "invalid certificate epoch: %s", optarg);
        }

        sub_10004860C(0, 1uLL, "certificate epoch: %llu", v6);
        *(&v9 + 1) = v6;
        break;
      case 'u':
        *&v9 = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100033704);
    }
  }

  v15 += optind;
  v16 -= optind;
  if (v16 < 1)
  {
    errx(64, "a certificate must be provided");
  }

  v10 = *v15;
  v14 = sub_1000337B0(&v9);
  return sysexit_np();
}

uint64_t sub_1000337B0(const char **a1)
{
  v13 = a1;
  v12 = -1;
  v11 = sub_100048090();
  v10 = -1;
  memset(__b, 0, sizeof(__b));
  v9 = __b;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v10 = open(v13[2], 0);
  v14 = v10;
  if (v10 < 0)
  {
    v12 = *__error();
    warnc(v12, "failed to open certificate: %s", v13[2]);
  }

  else
  {
    v12 = sub_10004B524(v10, v9);
    if (v12)
    {
      warnc(v12, "failed to read certificate");
    }

    else
    {
      v5 = sub_10003AC40(v9, 0);
      v12 = sub_10003AE8C(v5);
      if (v12)
      {
        errc(66, v12, "failed to parse certificate: %s", v13[2]);
      }

      v7 = *(v5 + 20);
      if ((*v11 & 0x10) != 0)
      {
        v4 |= 1uLL;
      }

      v3 = cryptex_signing_service_create();
      if (*(v11[5] + 8))
      {
        cryptex_signing_service_set_tss_url();
      }

      cryptex_signing_service_set_image_bytes();
      if (*v13)
      {
        strlen(*v13);
        cryptex_signing_service_set_image_bytes();
      }

      v12 = cryptex_signing_service_trust();
      if (v12)
      {
        warnc(v12, "failed to trust proposed signing service");
      }

      else
      {
        sub_10004860C(0, 1uLL, "trusted signing service");
      }
    }
  }

  v2 = v12;
  sub_1000030D0(&v3);
  sub_1000038DC(&v10);
  return v2;
}

uint64_t sub_100033A48(uint64_t a1, int a2, char **a3)
{
  v63 = a1;
  v62 = a2;
  v61 = a3;
  v60 = 0;
  v59 = -1;
  v58 = a3;
  v57 = -1;
  v56 = 0;
  memcpy(__dst, &unk_10007D230, sizeof(__dst));
  memset(__b, 0, sizeof(__b));
  __b[0] = 6;
  memcpy(&__dst[7], __b, 0x90uLL);
  __dst[9] = 491534;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = sub_100048090();
  v51 = 1;
  v50 = 1;
  v49 = 97;
  v48 = 0uLL;
  v47 = 0;
  sub_1000480E0();
  __dst[0] = 0;
  __dst[1] = __dst;
  while (1)
  {
    v57 = getopt_long(v62, v58, *(v63 + 32), *(v63 + 40), &v56);
    if (v57 == -1)
    {
      break;
    }

    v46 = (*(v63 + 40) + 32 * v56);
    v45 = v61[optind - 1];
    if (optind < 1)
    {
      v44 = 0;
      memset(v91, 0, sizeof(v91));
      v42 = 0;
      v41 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v41 &= ~1u;
      }

      if (v41)
      {
        sub_1000013C8(v90, optind);
        v42 = _os_log_send_and_compose_impl(v41, &v44, v91, 80, &_mh_execute_header, oslog, type, "unexpected failure: bogus optind: %d", v90);
      }

      v38 = v42;
      v43 = v42;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100033CCCLL);
    }

    switch(v57)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v46);
      case '?':
        errx(64, "unknown option: %s", v45);
      case 'A':
        if (!strcmp(optarg, "sha1"))
        {
          __dst[8] = &_img4_chip_ap_sha1;
        }

        else
        {
          if (strcmp(optarg, "sha2-384"))
          {
            errx(64, "invalid crypto algorithm: %s", optarg);
          }

          __dst[8] = &_img4_chip_ap_sha2_384;
        }

        sub_1000483C8(1uLL, "ALGO = %s", optarg);
        break;
      case 'B':
        HIDWORD(__dst[10]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", HIDWORD(__dst[10]));
        *&v48 = v48 | 2;
        break;
      case 'C':
        LODWORD(__dst[11]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", LODWORD(__dst[11]));
        *&v48 = v48 | 4;
        break;
      case 'D':
        HIDWORD(__dst[11]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %#x", HIDWORD(__dst[11]));
        *&v48 = v48 | 8;
        break;
      case 'E':
        LODWORD(__dst[10]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CEPO = %#x", LODWORD(__dst[10]));
        v49 &= ~1uLL;
        break;
      case 'F':
        LODWORD(__dst[23]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", LODWORD(__dst[23]));
        *(&v48 + 1) |= 0x8000uLL;
        break;
      case 'L':
        HIDWORD(__dst[24]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %#x", HIDWORD(__dst[24]));
        *(&v48 + 1) |= 0x40000uLL;
        break;
      case 'P':
        v51 = sub_10004B498(optarg, 0, 0);
        if (v51 > 1)
        {
          errx(64, "CPRO can only be 0/1");
        }

        LOBYTE(__dst[13]) = v51 != 0;
        sub_1000483C8(1uLL, "CPRO = %#x", v51 != 0);
        v49 &= ~0x20uLL;
        break;
      case 'S':
        v50 = sub_10004B498(optarg, 0, 0);
        if (v50 > 1)
        {
          errx(64, "CSEC can only be 0/1");
        }

        BYTE1(__dst[13]) = v50 != 0;
        sub_1000483C8(1uLL, "CSEC = %#x", v50 != 0);
        v49 &= ~0x40uLL;
        break;
      case 'T':
        HIDWORD(__dst[23]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", HIDWORD(__dst[23]));
        *(&v48 + 1) |= 0x10000uLL;
        break;
      case 'V':
        __dst[6] = optarg;
        sub_1000483C8(1uLL, "variant = %s", optarg);
        break;
      case 'Y':
        LODWORD(__dst[24]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "STYP = %#x", LODWORD(__dst[24]));
        *(&v48 + 1) |= 0x20000uLL;
        break;
      case 'c':
        v36 = 16;
        v35 = 1;
        count = 1;
        size = 16;
        v37 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
        v87 = "known-constant allocation";
        v86 = v37;
        v85 = 16;
        if (!v37)
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
            v24 = v81;
            v25 = v80;
            v26 = v79;
            v22 = v87;
            v23 = v85;
            v3 = __error();
            v4 = strerror(*v3);
            sub_1000031B0(v96, v22, v23, v4);
            v78 = _os_log_send_and_compose_impl(v24, &v84, v97, 80, &_mh_execute_header, v25, v26, "allocation failed: obj = %s, size = %lu, error = %s", v96, 32, v12);
            v82 = v78;
          }

          v77 = v82;
          v83 = v82;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000342B0);
        }

        v34 = v37;
        v55 = v37;
        v37[1] = optarg;
        *v55 = 0;
        *__dst[1] = v55;
        __dst[1] = v55;
        break;
      case 'k':
        __dst[4] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100034368);
    }
  }

  v47 = *(&v48 + 1) | v48;
  __dst[3] = *v61;
  LOBYTE(__dst[26]) = v48 == 0;
  __dst[9] &= ~(*(&v48 + 1) | v48);
  if (!__dst[4])
  {
    errx(64, "a private key must be provided");
  }

  if (!v55)
  {
    errx(64, "a certificate must be provided");
  }

  if (v49)
  {
    LODWORD(__dst[10]) = 1;
  }

  if ((v49 & 0x20) != 0)
  {
    LOBYTE(__dst[13]) = 1;
  }

  if ((v49 & 0x40) != 0)
  {
    BYTE1(__dst[13]) = 1;
  }

  if (v52[4])
  {
    v33 = v52[4];
    memcpy(&__dst[7], (v33 + 24), 0x90uLL);
    if (v47)
    {
      warnx("overriding supplied device identity with identity for device [udid %s]", *(v33 + 168));
    }

    v47 = 14;
  }

  if ((__dst[26] & 1) == 0)
  {
    if (*(&v48 + 1) && (DWORD2(v48) & 0x78000) != 0x78000)
    {
      errx(64, "incomplete set of Cryptex1 identifiers provided (FCHP, TYPE, STYP, CLAS).");
    }

    if (v48 && (v48 & 0xE) != 0xE)
    {
      errx(64, "incomplete set of device identifiers provided. (BORD, CHIP, SDOM).");
    }
  }

  v61 += optind;
  v62 -= optind;
  if (v62 < 1)
  {
    errx(64, "path to .cxbd cryptex bundle must be provided");
  }

  __dst[5] = *v61;
  v32 = open(__dst[5], 0x100000);
  v88 = v32;
  if (v32 < 0)
  {
    v5 = __error();
    errc(66, *v5, "unable to open %s", __dst[5]);
  }

  __dst[25] = cryptex_bundle_create_with_directory();
  if ((cryptex_bundle_copy_build_manifest2() & 1) == 0)
  {
    v31 = sub_100048090();
    v21 = 1;
    if (v31[1] <= 1uLL)
    {
      v21 = v31[2] > 1uLL;
    }

    if (v21)
    {
      v6 = 999;
    }

    else
    {
      v6 = 3;
    }

    v30 = v6;
    v20 = 1;
    if (v31[1] <= 1uLL)
    {
      v20 = v31[2] > 1uLL;
    }

    v7 = 2000;
    if (!v20)
    {
      v7 = 200;
    }

    v29 = v7;
    if (v60)
    {
      v19 = sub_100017530(v60, v30, v29);
    }

    else
    {
      __s1 = "unknown error";
      v27 = strdup("unknown error");
      v8 = strlen("unknown error");
      v76 = "known-constant allocation";
      v75 = v27;
      v74 = v8;
      if (!v27)
      {
        v73 = 0;
        memset(v95, 0, sizeof(v95));
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
          v16 = v70;
          v17 = v69;
          v18 = v68;
          v14 = v76;
          v15 = v74;
          v9 = __error();
          v10 = strerror(*v9);
          sub_1000031B0(v94, v14, v15, v10);
          v67 = _os_log_send_and_compose_impl(v16, &v73, v95, 80, &_mh_execute_header, v17, v18, "allocation failed: obj = %s, size = %lu, error = %s", v94, 32, v12);
          v71 = v67;
        }

        v66 = v71;
        v72 = v71;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100034818);
      }

      v19 = v27;
    }

    v28 = v19;
    warnx("failed to copy build manifest\n%s", v19);
    sub_100002DE4(&v28);
    exit(66);
  }

  v59 = sub_100034A0C(__dst, v54, &v53);
  if (v59)
  {
    errc(66, v59, "failed to find matching build identity");
  }

  if ((v47 & 0x78000) == 0x78000)
  {
    v59 = sub_100035354(v53, &__dst[26] + 1);
    if (v59)
    {
      errc(66, v59, "failed to read ndom handle");
    }
  }

  v59 = sub_10003542C();
  os_release(__dst[25]);
  v13 = sysexit_np();
  sub_100006B40(&v60);
  return v13;
}
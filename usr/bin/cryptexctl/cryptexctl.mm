uint64_t sub_100000F48(uint64_t a1, int a2, char *const *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = a3;
  v12 = -1;
  v11 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[9]) = 0;
  sub_1000480E0();
  while (1)
  {
    v12 = getopt_long(v16, v13, *(v17 + 32), *(v17 + 40), &v11);
    if (v12 == -1)
    {
      break;
    }

    v9 = (*(v17 + 40) + 32 * v11);
    v8 = v15[optind - 1];
    if (optind < 1)
    {
      v7 = 0;
      memset(v19, 0, sizeof(v19));
      v6 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 2;
      }

      sub_1000013C8(v18, optind);
      _os_log_send_and_compose_impl(v6, &v7, v19, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus optind: %d", v18);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100001130);
    }

    switch(v12)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v9);
      case '?':
        errx(64, "unknown option: %s", v8);
      case 'P':
        LOBYTE(__b[9]) = 1;
        break;
      case 'S':
        __b[8] = optarg;
        break;
      case 'i':
        __b[1] = optarg;
        break;
      case 'p':
        sub_10004860C(0, 1uLL, "will create new process");
        __b[0] |= 1uLL;
        break;
      case 's':
        __b[7] = optarg;
        break;
      case 'v':
        __b[2] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000128CLL);
    }
  }

  v15 += optind;
  v16 -= optind;
  if (v16 < 2)
  {
    errx(64, "both a binary to exec and a subsystem root must be provided");
  }

  __b[3] = *v15;
  __b[4] = v15[1];
  v15 += 2;
  v16 -= 2;
  if (v16 >= 1)
  {
    v5 = v16;
    v4 = v15;
    if (!strcmp(*v15, "--"))
    {
      ++v4;
      --v5;
    }

    __b[5] = v5;
    __b[6] = v4;
  }

  v14 = sub_100001400();
  return sysexit_np();
}

uint64_t sub_1000013C8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100001400()
{
  v138 = __chkstk_darwin();
  v137 = -1;
  v136 = sub_100048090();
  v135 = -1;
  v134 = 0;
  v133 = 0;
  i = 0;
  v131 = *(v138 + 32);
  v130 = 0;
  v129 = 0;
  v128 = 2;
  __argv = 0;
  v126 = 0;
  v125 = 0;
  v124 = -1;
  bzero(__value, 0x400uLL);
  bzero(v197, 0x400uLL);
  if ((*v138 & 1) == 0)
  {
    v134 |= 0x40u;
  }

  if (*(v138 + 8))
  {
    v137 = sub_100002E20(&v130, &v129, *(v138 + 32), *(v138 + 8), *(v138 + 16), *(v138 + 56));
    if (v137)
    {
      sub_10004860C(0, 1uLL, "cannot find program inside cryptex, fallback to system path: %d", v137);
    }

    else
    {
      sub_10004860C(0, 1uLL, "program = %s", v131);
      v131 = v130;
    }
  }

  if (*(v138 + 72))
  {
    v31 = *(v138 + 24);
    v0 = sub_10001B738();
    __snprintf_chk(__value, 0x400uLL, 0, 0x400uLL, "%s/%s", v31, v0);
    v123 = setenv("PYTHONPATH", __value, 1);
    if (v123 == -1)
    {
      v122 = 0;
      memset(__b, 0, sizeof(__b));
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
        v1 = *__error();
        sub_1000013C8(v195, v1);
        LODWORD(v11) = 8;
        v116 = _os_log_send_and_compose_impl(v119, &v122, __b, 80, &_mh_execute_header, oslog, type, "assertion failure: setenv(PYTHONPATH, pythonpath, 1) -> %{errno}d", v195, v11);
        v120 = v116;
      }

      v115 = v120;
      v121 = v120;
      _os_crash_msg();
      __break(1u);
    }
  }

  v137 = posix_spawn_file_actions_init(&v126);
  v114 = v137;
  if (v137)
  {
    v113[0] = 0;
    memset(v194, 0, sizeof(v194));
    v111 = 0;
    v110 = 3;
    v109 = &_os_log_default;
    v108 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v110 &= ~1u;
    }

    if (v110)
    {
      sub_100003098(v193, v114);
      v107 = _os_log_send_and_compose_impl(v110, v113, v194, 80, &_mh_execute_header, v109, v108, "assertion failure: error -> %llu", v193);
      v111 = v107;
    }

    v106 = v111;
    v112 = v111;
    _os_crash_msg();
    __break(1u);
  }

  v137 = posix_spawn_file_actions_addinherit_np(&v126, 0);
  v105 = v137;
  if (v137)
  {
    v104[0] = 0;
    memset(v192, 0, sizeof(v192));
    v102 = 0;
    v101 = 3;
    v100 = &_os_log_default;
    v99 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v101 &= ~1u;
    }

    if (v101)
    {
      sub_100003098(v191, v105);
      v98 = _os_log_send_and_compose_impl(v101, v104, v192, 80, &_mh_execute_header, v100, v99, "assertion failure: error -> %llu", v191);
      v102 = v98;
    }

    v97 = v102;
    v103 = v102;
    _os_crash_msg();
    __break(1u);
  }

  v137 = posix_spawn_file_actions_addinherit_np(&v126, 1);
  v96 = v137;
  if (v137)
  {
    v95[0] = 0;
    memset(v190, 0, sizeof(v190));
    v93 = 0;
    v92 = 3;
    v91 = &_os_log_default;
    v90 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v92 &= ~1u;
    }

    if (v92)
    {
      sub_100003098(v189, v96);
      v89 = _os_log_send_and_compose_impl(v92, v95, v190, 80, &_mh_execute_header, v91, v90, "assertion failure: error -> %llu", v189);
      v93 = v89;
    }

    v88 = v93;
    v94 = v93;
    _os_crash_msg();
    __break(1u);
  }

  v137 = posix_spawn_file_actions_addinherit_np(&v126, 2);
  v87 = v137;
  if (v137)
  {
    v86[0] = 0;
    memset(v188, 0, sizeof(v188));
    v84 = 0;
    v83 = 3;
    v82 = &_os_log_default;
    v81 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v83 &= ~1u;
    }

    if (v83)
    {
      sub_100003098(v187, v87);
      v80 = _os_log_send_and_compose_impl(v83, v86, v188, 80, &_mh_execute_header, v82, v81, "assertion failure: error -> %llu", v187);
      v84 = v80;
    }

    v79 = v84;
    v85 = v84;
    _os_crash_msg();
    __break(1u);
  }

  v137 = posix_spawnattr_init(&v125);
  v78 = v137;
  if (v137)
  {
    v77[0] = 0;
    memset(v186, 0, sizeof(v186));
    v75 = 0;
    v74 = 3;
    v73 = &_os_log_default;
    v72 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v74 &= ~1u;
    }

    if (v74)
    {
      sub_100003098(v185, v78);
      v71 = _os_log_send_and_compose_impl(v74, v77, v186, 80, &_mh_execute_header, v73, v72, "assertion failure: error -> %llu", v185);
      v75 = v71;
    }

    v70[1] = v75;
    v76 = v75;
    _os_crash_msg();
    __break(1u);
  }

  if (*(v138 + 56))
  {
    v70[0] = sub_100026694(*(v138 + 56));
    if (!v70[0])
    {
      errx(2, "cannot find session with uuid %s", *(v138 + 56));
    }

    uid = session_get_uid();
    *__error() = 0;
    v68 = getpwuid(uid);
    if (!v68)
    {
      if (*__error())
      {
        err(71, "getpwuid");
      }

      errx(67, "session has uid %u, but that uid does not exist", uid);
    }

    v67 = 0;
    v66 = bootstrap_look_up_per_user();
    if (v66 == 144)
    {
      errx(77, "Not entitled to perform bootstrap lookup, may need to run as superuser");
    }

    v65 = v66;
    if (v66)
    {
      v64[0] = 0;
      memset(v184, 0, sizeof(v184));
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
        sub_100003098(v183, v65);
        v58 = _os_log_send_and_compose_impl(v61, v64, v184, 80, &_mh_execute_header, v60, v59, "assertion failure: kr -> %llu", v183);
        v62 = v58;
      }

      v57 = v62;
      v63 = v62;
      _os_crash_msg();
      __break(1u);
    }

    v137 = posix_spawnattr_setspecialport_np(&v125, v67, 4);
    v56 = v137;
    if (v137)
    {
      v55[0] = 0;
      memset(v182, 0, sizeof(v182));
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
        sub_100003098(v181, v56);
        v49 = _os_log_send_and_compose_impl(v52, v55, v182, 80, &_mh_execute_header, v51, v50, "assertion failure: error -> %llu", v181);
        v53 = v49;
      }

      v48 = v53;
      v54 = v53;
      _os_crash_msg();
      __break(1u);
    }

    v47 = 0;
    v46 = 0;
    if (*(v138 + 64))
    {
      v30 = *(v138 + 64);
    }

    else
    {
      v30 = "/System/Library/Sandbox/Profiles/cryptex-session-default.sb";
    }

    v45 = v30;
    params = sandbox_create_params();
    if (sandbox_set_param())
    {
      err(71, "sandbox_set_param: _HOME");
    }

    if (setenv("HOME", v68->pw_dir, 1))
    {
      err(71, "setenv: HOME");
    }

    if (sandbox_set_param())
    {
      err(71, "sandbox_set_param: _USER");
    }

    if (setenv("USER", v68->pw_name, 1))
    {
      err(71, "setenv: USER");
    }

    if (setenv("LOGNAME", v68->pw_name, 1))
    {
      err(71, "setenv: LOGNAME");
    }

    v47 = sandbox_compile_file();
    sandbox_free_params();
    if (v47)
    {
      if (sandbox_apply())
      {
        err(71, "sandbox_apply failed.");
      }

      sandbox_free_profile();
    }

    else if (*(v138 + 64))
    {
      errc(71, 22, "sandbox_compile_file: %s", v46);
    }

    v137 = setuid(uid);
    if (v137)
    {
      err(71, "setuid");
    }

    sub_1000030D0(v70);
  }

  v137 = posix_spawnattr_setflags(&v125, v134);
  if (v137)
  {
    errc(71, v137, "posix_spawnattr_setflags");
  }

  v43 = 0;
  if (*(v138 + 24) && v129)
  {
    v42 = __snprintf_chk(v197, 0x400uLL, 0, 0x400uLL, "%s:%s", v129, *(v138 + 24));
    v155 = v42;
    v154 = 1024;
    if (v42 < 0)
    {
      v153 = 0;
      memset(v202, 0, sizeof(v202));
      v151 = 0;
      v150 = 3;
      v149 = &_os_log_default;
      v148 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v150 &= ~1u;
      }

      if (v150)
      {
        v27 = v150;
        v28 = v149;
        v29 = v148;
        v2 = __error();
        v3 = strerror(*v2);
        sub_100003120(v201, v3);
        v147 = _os_log_send_and_compose_impl(v27, &v153, v202, 80, &_mh_execute_header, v28, v29, "error printing buffer: %s", v201);
        v151 = v147;
      }

      v146[1] = v151;
      v152 = v151;
      _os_crash_msg();
      __break(1u);
    }

    if (v155 > v154)
    {
      v146[0] = 0;
      memset(v200, 0, sizeof(v200));
      v144 = 0;
      v143 = 3;
      v142 = &_os_log_default;
      v141 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v143 &= ~1u;
      }

      if (v143)
      {
        v24 = v143;
        v25 = v142;
        v26 = v141;
        sub_100003160(v199, v155, v154);
        LODWORD(v11) = 18;
        v140 = _os_log_send_and_compose_impl(v24, v146, v200, 80, &_mh_execute_header, v25, v26, "buffer too small: needed = %d, actual = %lu", v199, v11);
        v144 = v140;
      }

      v139 = v144;
      v145 = v144;
      _os_crash_msg();
      __break(1u);
    }

    v43 = v197;
  }

  else if (*(v138 + 24))
  {
    v43 = *(v138 + 24);
  }

  else if (v129)
  {
    v43 = v129;
  }

  if (v43)
  {
    sub_1000483C8(2uLL, "subsystem_root = %s", v43);
    v137 = posix_spawnattr_set_subsystem_root_path_np();
    if (v137)
    {
      errc(71, v137, "posix_spawnattr_set_subsystem_root_path_np");
    }
  }

  v128 += *(v138 + 40);
  v41 = 0;
  v40 = 8;
  v39 = v128;
  if (_dispatch_is_multithreaded())
  {
    v171 = v39;
    v170 = v40;
    v169 = 0;
    while (1)
    {
      v169 = malloc_type_calloc(v171, v170, 0x8A375538uLL);
      if (v169)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v41 = v169;
  }

  else
  {
    count = v39;
    size = v40;
    v41 = malloc_type_calloc(v39, v40, 0x8709206FuLL);
    v168 = "known-constant allocation";
    v167 = v41;
    v166 = v40;
    if (!v41)
    {
      v165 = 0;
      memset(v204, 0, sizeof(v204));
      v163 = 0;
      v162 = 3;
      v161 = &_os_log_default;
      v160 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v162 &= ~1u;
      }

      if (v162)
      {
        v21 = v162;
        v22 = v161;
        v23 = v160;
        v19 = v168;
        v20 = v166;
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v203, v19, v20, v5);
        LODWORD(v11) = 32;
        v159 = _os_log_send_and_compose_impl(v21, &v165, v204, 80, &_mh_execute_header, v22, v23, "allocation failed: obj = %s, size = %lu, error = %s", v203, v11, v12);
        v163 = v159;
      }

      v158 = v163;
      v164 = v163;
      _os_crash_msg();
      __break(1u);
    }
  }

  v38 = v41;
  __argv = v41;
  v41[v133] = v131;
  sub_1000483C8(2uLL, "argv[%lu] = %s", v133, __argv[v133]);
  ++v133;
  for (i = 0; i < *(v138 + 40); ++i)
  {
    __argv[v133] = *(*(v138 + 48) + 8 * i);
    if (__argv[v133])
    {
      v18 = __argv[v133];
    }

    else
    {
      v18 = "NULL";
    }

    sub_1000483C8(2uLL, "argv[%lu] = %s", v133++, v18);
  }

  if (v136[1])
  {
    v37 = -1;
    v36 = 0;
    for (i = 0; i < v128 - 1; ++i)
    {
      v35 = v36;
      v34 = "";
      if (v36)
      {
        v34 = " ";
      }

      if (v35)
      {
        v17 = v35;
      }

      else
      {
        v17 = "";
      }

      v37 = asprintf(&v36, "%s%s%s", v17, v34, __argv[i]);
      v180 = v37;
      if (v37 < 0)
      {
        v179 = 0;
        memset(v206, 0, sizeof(v206));
        v177 = 0;
        v176 = 3;
        v175 = &_os_log_default;
        v174 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v176 &= ~1u;
        }

        if (v176)
        {
          v14 = v176;
          v15 = v175;
          v16 = v174;
          v6 = __error();
          v7 = strerror(*v6);
          sub_100003120(v205, v7);
          v173 = _os_log_send_and_compose_impl(v14, &v179, v206, 80, &_mh_execute_header, v15, v16, "error printing buffer: %s", v205);
          v177 = v173;
        }

        v172 = v177;
        v178 = v177;
        _os_crash_msg();
        __break(1u);
      }

      sub_100002DE4(&v35);
    }

    sub_100002DE4(&v36);
  }

  v137 = posix_spawnp(&v135, v131, &v126, &v125, __argv, environ);
  if (v137)
  {
    warnc(v137, "posix_spawnp: %s", v131);
  }

  else
  {
    if ((v134 & 0x40) != 0)
    {
      _os_crash();
      __break(1u);
    }

    sub_10004860C(0, 1uLL, "spawned as pid %d", v135);
    while (1)
    {
      v33 = waitpid(v135, &v124, 0);
      if (v33 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        err(71, "waitpid[%d]", v135);
      }

      warnx("waitpid: interrupted");
    }

    if (v33 != v135)
    {
      errx(71, "waitpid: %d != %d", v33, v135);
    }

    sub_1000483C8(2uLL, "waitpid returned");
    if ((v124 & 0x7F) != 0)
    {
      if ((v124 & 0x7F) != 0x7F && (v124 & 0x7F) != 0)
      {
        v8 = strsignal(v124 & 0x7F);
        sub_10004860C(0, 1uLL, "child signaled: %s", v8);
        exit(70);
      }

      if ((v124 & 0x7F) == 0x7F && v124 >> 8 != 19)
      {
        v9 = strsignal(v124 >> 8);
        sub_10004860C(0, 1uLL, "child stopped: %s", v9);
        exit(71);
      }

      __break(1u);
    }

    else
    {
      v32 = BYTE1(v124);
      if (!BYTE1(v124))
      {
        sub_10004860C(0, 1uLL, "child exited successfully");
LABEL_162:
        exit(v32);
      }

      if (BYTE1(v124) != 127)
      {
        sub_10004860C(0, 1uLL, "child exited with code: %d", BYTE1(v124));
        goto LABEL_162;
      }

      v137 = 88;
      warnx("no interpreter for image");
    }
  }

  v13 = v137;
  sub_100002DE4(&__argv);
  sub_100002DE4(&v129);
  sub_100002DE4(&v130);
  return v13;
}

uint64_t sub_100002E20(char **a1, char **a2, const char *a3, char *a4, char *a5, uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  __s2 = a4;
  v10 = a5;
  *&v9[4] = a6;
  v8 = 0;
  bzero(__s1, 0x400uLL);
  *v9 = _cryptex_copy_list();
  if (*v9 && !*&v9[4])
  {
    *v9 = _cryptex_copy_list_lossy();
  }

  if (!*v9)
  {
    *v9 = 2;
    sub_10004860C(0, 1uLL, "cannot find installed cryptex with identifier %s and version %s", __s2, v10);
  }

  v7 = *v9;
  sub_100002DE4(&v8);
  return v7;
}

uint64_t sub_100003098(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000030D0(void **a1)
{
  if (*a1)
  {
    os_release(*a1);
  }
}

uint64_t sub_100003120(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100003160(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_1000031B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100003218(uint64_t a1, int a2, const char **a3)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = -1;
  v33 = a3;
  v32 = -1;
  v31 = 0;
  memset(__b, 0, sizeof(__b));
  i = 0;
  sub_1000480E0();
  __b[1] = 0;
  __b[2] = &__b[1];
  while (1)
  {
    v32 = getopt_long(v36, v33, *(v37 + 32), *(v37 + 40), &v31);
    if (v32 == -1)
    {
      break;
    }

    v28 = (*(v37 + 40) + 32 * v31);
    v27 = v35[optind - 1];
    if (optind < 1)
    {
      v26 = 0;
      memset(v53, 0, sizeof(v53));
      v24 = 0;
      v23 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 &= ~1u;
      }

      if (v23)
      {
        sub_1000013C8(v52, optind);
        v24 = _os_log_send_and_compose_impl(v23, &v26, v53, 80, &_mh_execute_header, oslog, type, "unexpected failure: bogus optind: %d", v52);
      }

      v20 = v24;
      v25 = v24;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100003418);
    }

    switch(v32)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v28);
      case '?':
        errx(64, "unknown option: %s", v27);
      case 'C':
        v18 = 24;
        v17 = 1;
        count = 1;
        size = 24;
        v19 = malloc_type_calloc(1uLL, 0x18uLL, 0x8709206FuLL);
        v50 = "known-constant allocation";
        v49 = v19;
        v48 = 24;
        if (!v19)
        {
          v47 = 0;
          memset(v55, 0, sizeof(v55));
          v45 = 0;
          v44 = 3;
          v43 = &_os_log_default;
          v42 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v44 &= ~1u;
          }

          if (v44)
          {
            v10 = v44;
            v11 = v43;
            v12 = v42;
            v8 = v50;
            v9 = v48;
            v3 = __error();
            v4 = strerror(*v3);
            sub_1000031B0(v54, v8, v9, v4);
            v41 = _os_log_send_and_compose_impl(v10, &v47, v55, 80, &_mh_execute_header, v11, v12, "allocation failed: obj = %s, size = %lu, error = %s", v54, 32, v7);
            v45 = v41;
          }

          v40 = v45;
          v46 = v45;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000035F8);
        }

        v16 = v19;
        i = v19;
        *(v19 + 1) = optarg;
        v5 = __b[1];
        *i = __b[1];
        if (!v5)
        {
          __b[2] = i;
        }

        __b[1] = i;
        if (!__b[3])
        {
          __b[3] = i;
        }

        break;
      case 'K':
        __b[5] = optarg;
        break;
      case 'o':
        __b[6] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000036E4);
    }
  }

  v35 += optind;
  v36 -= optind;
  if (v36 < 1)
  {
    errx(64, "a property list must be provided");
  }

  __b[0] = *v35;
  for (i = __b[1]; i; i = *i)
  {
    v15 = -1;
    memset(v14, 0, 0x38uLL);
    v15 = open(*(i + 1), 0);
    v51 = v15;
    if (v15 < 0)
    {
      err(66, "failed to read certificate: %s", *(i + 1));
    }

    v34 = sub_10004B524(v15, v14);
    if (v34)
    {
      errc(66, v34, "failed to read certificate: %s", *(i + 1));
    }

    v13 = sub_10003AC40(v14, 0);
    v34 = sub_10003AE8C(v13);
    if (v34)
    {
      errc(66, v34, "failed to parse certificate: %s", *(i + 1));
    }

    __b[4] += *(*(v13 + 20) + 8);
    *(i + 2) = v13;
    sub_1000038DC(&v15);
  }

  v34 = sub_100003A70(__b);
  return sysexit_np();
}

int *sub_1000038DC(int *result)
{
  v6 = result;
  v5 = *result;
  if (v5 != -1)
  {
    result = close(v5);
    v4 = result;
    if (result == -1)
    {
      v3 = 0;
      memset(__b, 0, sizeof(__b));
      v2 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v2 = 2;
      }

      v1 = __error();
      sub_1000013C8(v7, *v1);
      _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v7, 8);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100003A40);
    }
  }

  return result;
}

uint64_t sub_100003A70(const char **a1)
{
  v26 = a1;
  v25 = -1;
  v24 = sub_100048084();
  v23 = -1;
  v22 = -1;
  v21 = -1;
  __s = 0;
  memset(__b, 0, sizeof(__b));
  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v14[0] = v26;
  memset(v13, 0, sizeof(v13));
  v13[0] = v26;
  memset(&v13[1], 0, 116);
  v13[8].n128_u64[1] = 0;
  v12 = 0;
  xdict = 0;
  dictionary = 0;
  v9 = 0;
  __fd = -1;
  __s = basename_r(*v26, __b);
  v19 = strrchr(__s, 46);
  if (v19)
  {
    *v19 = 0;
  }

  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.im4m", __s);
  if (v26[6])
  {
    v18 = v26[6];
  }

  else
  {
    v18 = __s;
  }

  v21 = open(*v26, 0);
  v28 = v21;
  if (v21 < 0)
  {
    v25 = *__error();
    warn("failed to open plist: %s", *v26);
  }

  else
  {
    v25 = sub_10004B524(v21, v17);
    if (v25)
    {
      warnc(v25, "failed to read plist");
    }

    else
    {
      v12 = xpc_create_from_plist();
      if (v12)
      {
        object = v12;
        v29 = &_xpc_type_dictionary;
        type = xpc_get_type(v12);
        if (type == v29)
        {
          v31 = object;
        }

        else
        {
          v31 = 0;
        }

        xdict = v31;
        if (v31)
        {
          dictionary = xpc_dictionary_get_dictionary(xdict, "MANP");
          if (dictionary)
          {
            v9 = xpc_dictionary_get_dictionary(xdict, "OBJP");
            v14[1] = dictionary;
            v14[2] = v9;
            v25 = sub_100004044(v26, v13);
            if (!v25)
            {
              v22 = sub_10004E2F0(0, sub_1000045E0, sub_100004768, sub_100004878, v13[4].n128_u64[1], v13[8].n128_u32[0], v16, &v15, v14, v13);
              if (v22 == 100)
              {
                v16[1] = v15;
                v16[5] = j__free;
                __fd = openat(v24[584], __s, 513, 438);
                v27 = __fd;
                if (__fd < 0)
                {
                  v25 = *__error();
                  warnc(v25, "failed to write manifest");
                }

                else
                {
                  v25 = sub_10004B8CC(__fd, v16);
                  if (v25)
                  {
                    warnc(v25, "failed to write manifest");
                  }

                  else
                  {
                    v23 = renameat(v24[584], __s, -2, v18);
                    if (v23)
                    {
                      v25 = *__error();
                      warn("failed to rename manifest to final location");
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }
                }
              }

              else
              {
                v25 = 92;
                warnc(92, "failed to create manifest: %d", v22);
              }
            }
          }

          else
          {
            v25 = 2;
            warnc(2, "plist does not have a MANP dictionary");
          }
        }

        else
        {
          v25 = 22;
          warnc(22, "plist root not a dictionary");
        }
      }

      else
      {
        v25 = 92;
        warnc(92, "invalid plist");
      }
    }
  }

  sub_10004C66C(v17, v1);
  sub_10004C66C(v16, v3);
  sub_10004C66C(&v13[4].n128_u64[1], v4);
  sub_10004C66C(v13[1].n128_u64, v5);
  v7 = v25;
  sub_1000038DC(&__fd);
  sub_1000030D0(&v12);
  sub_1000038DC(&v21);
  return v7;
}

uint64_t sub_100004044(void *a1, __n128 *a2)
{
  v24 = a1;
  v23 = a2;
  v22 = -1;
  memset(__b, 0, 0x38uLL);
  v20 = *(v24[3] + 16);
  i = 0;
  v18 = 0;
  v16 = v24[4];
  if (_dispatch_is_multithreaded())
  {
    v38 = v16;
    v37 = 0;
    while (1)
    {
      v37 = malloc_type_malloc(v38, 0x5C008F58uLL);
      if (v37)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v15 = v37;
  }

  else
  {
    v36 = v16;
    v15 = malloc_type_malloc(v16, 0x2F48DA65uLL);
    v35 = "known-constant allocation";
    v34 = v15;
    v33 = v16;
    if (!v15)
    {
      v32 = 0;
      memset(v40, 0, sizeof(v40));
      v30 = 0;
      v29 = 3;
      v28 = &_os_log_default;
      v27 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v29 &= ~1u;
      }

      if (v29)
      {
        v11 = v29;
        v12 = v28;
        v13 = v27;
        v9 = v35;
        v10 = v33;
        v2 = __error();
        v3 = strerror(*v2);
        sub_1000031B0(v39, v9, v10, v3);
        v26 = _os_log_send_and_compose_impl(v11, &v32, v40, 80, &_mh_execute_header, v12, v13, "allocation failed: obj = %s, size = %lu, error = %s", v39, 32, v7);
        v30 = v26;
      }

      v25 = v30;
      v31 = v30;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100004294);
    }
  }

  v18 = v15;
  v17 = v15;
  for (i = v24[1]; i; i = *i)
  {
    v14 = *(*(i[2] + 160) + 8);
    __memcpy_chk();
    v17 += v14;
    v16 -= v14;
    if (v16 > v24[4])
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x100004390);
    }
  }

  if (v24[4] > 0xFFFFFFFFuLL)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1000043DCLL);
  }

  v23[8].n128_u32[0] = v24[4];
  v4 = sub_100004A00(v24[5], __b, &AMSupportRsaCreatePrivateKeyFromPEMBuffer);
  v22 = v4;
  if (!v4)
  {
    if (*(*(v20 + 200) + 8) == &off_10007ED28)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha1");
      v23[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha1;
LABEL_31:
      sub_10004C358(&v23[4].n128_u64[1], 0, j__free, v18, v24[4]);
      v18 = 0;
      sub_10004C42C(v23 + 1, __b);
      v22 = 0;
      goto LABEL_32;
    }

    if (*(*(v20 + 200) + 8) == &off_10007ED38)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-256");
      v23[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha256;
      goto LABEL_31;
    }

    if (*(*(v20 + 200) + 8) == &off_10007ED48)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-384");
      v23[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha384;
      goto LABEL_31;
    }

    if (*(*(v20 + 200) + 8) == &off_10007ED58)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-512");
      v23[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha512;
      goto LABEL_31;
    }

    warnx("unsupported digest algorithm: output size = %lu", **(v20 + 200));
    v22 = 45;
  }

LABEL_32:
  sub_10004C66C(__b, v5);
  v8 = v22;
  sub_100002DE4(&v18);
  return v8;
}

uint64_t sub_1000045E0(void *a1, unsigned int *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = a3;
  v4 = 0;
  v6 = sub_10004D4E4(&v4, 1296125520);
  if (v6 != 100)
  {
    goto LABEL_2;
  }

  *(v5 + 24) = v4;
  xpc_dictionary_apply_f();
  if (*(v5 + 44))
  {
    v6 = 103;
    warnc(*(v5 + 44), "failed to encode manifest");
    goto LABEL_9;
  }

  v6 = sub_10004D5EC(v4, 1296125520);
  if (v6 == 100)
  {
    v6 = sub_10004E098(v4, v9, v8);
    if (v6 == 100)
    {
      sub_1000483C8(1uLL, "finalized manifest length: %u", *v8);
    }

    else
    {
      warnx("failed to finalize manifest: %d", v6);
    }
  }

  else
  {
LABEL_2:
    warnx("failed to begin manifest: %d", v6);
  }

LABEL_9:
  sub_10004E028(v4);
  return v6;
}

uint64_t sub_100004768(void *a1, unsigned int *a2, uint64_t a3)
{
  v4 = 0;
  xpc_dictionary_apply_f();
  if (*(a3 + 44))
  {
    v6 = 103;
    warnc(*(a3 + 44), "failed to encode manifest");
  }

  else
  {
    v4 = *(a3 + 32);
    *(a3 + 32) = 0;
    v6 = sub_10004E098(v4, a1, a2);
    if (v6 == 100)
    {
      sub_1000483C8(1uLL, "finalized object section length: %u", *a2);
    }

    else
    {
      warnx("failed to finalize manifest: %d", v6);
    }
  }

  sub_10004E028(v4);
  return v6;
}

uint64_t sub_100004878(int a1, unsigned __int8 *a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a6;
  v13 = -1;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  sub_100049834(&v9, a2, a3);
  sub_1000483C8(1uLL, "signing data: version = %d, data = %s, length = %lu, key length = %lu", v20, v9, v18, *(v14 + 24));
  v12 = (*(v14 + 136))(v19, v18, *(v14 + 16), *(v14 + 24), &v11, &v10);
  if (v12)
  {
    v13 = 103;
    warnx("failed to sign manifest: %d", v12);
  }

  else
  {
    sub_100049834(&v8, v11, v10);
    sub_1000483C8(1uLL, "signed data: signature = %s, length = %lu", v8, v10);
    *v17 = v11;
    *v16 = v10;
    v13 = 100;
  }

  v7 = v13;
  sub_100002DE4(&v8);
  sub_100002DE4(&v9);
  return v7;
}

uint64_t sub_100004A00(const char *a1, void *a2, uint64_t (*a3)(void, void, void **, uint64_t *))
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -1;
  v7 = -1;
  memset(__b, 0, sizeof(__b));
  v7 = open(v11, 0);
  v12 = v7;
  if (v7 < 0)
  {
    v8 = *__error();
    warn("failed to open pem file: %s", v11);
  }

  else
  {
    v8 = sub_10004B524(v7, __b);
    if (v8 || (v8 = sub_10003AA7C(__b, v10, v9)) != 0)
    {
      warnc(v8, "failed to read pem file: %s", v11);
    }
  }

  sub_10004C66C(__b, v3);
  v5 = v8;
  sub_1000038DC(&v7);
  return v5;
}

char *sub_100004B30(char *result, void *a2, uint64_t a3)
{
  v5 = result;
  if (!*(a3 + 44))
  {
    sub_1000483C8(1uLL, "adding property to manifest: %s", result);
    result = sub_100004BC8(*(a3 + 24), 1296125520, v5, a2);
    *(a3 + 44) = result;
  }

  return result;
}

uint64_t sub_100004BC8(_DWORD *a1, int a2, char *a3, void *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = -1;
  type = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0xFFFFFFFFLL;
  v8 = 4;
  v7 = 0;
  v10 = strstr(a3, "_64");
  if (!v10 || v10[3])
  {
    v10 = strstr(v17, "_32");
    if (!v10 || v10[3])
    {
      v10 = strstr(v17, "_0X");
      if (!v10 || v10[3])
      {
        sub_1000483C8(1uLL, "no key extension: %s", v17);
        v10 = 0;
      }

      else
      {
        sub_1000483C8(1uLL, "found key extension: %s", v10);
        v8 = 7;
      }
    }

    else
    {
      sub_1000483C8(1uLL, "found key extension: %s", v10);
      v9 = 0xFFFFFFFFLL;
      v8 = 7;
    }
  }

  else
  {
    sub_1000483C8(1uLL, "found key extension: %s", v10);
    v9 = -1;
    v8 = 7;
  }

  if (strlen(v17) != v8)
  {
    v15 = 22;
    goto LABEL_28;
  }

  __strlcpy_chk();
  v11 = sub_10004B478(&v12);
  type = xpc_get_type(v16);
  if (type == &_xpc_type_int64)
  {
    v7 = sub_100004FA4(v17, v10, v16);
    if (!v7)
    {
      v15 = 34;
      goto LABEL_28;
    }

    v16 = v7;
    type = xpc_get_type(v7);
  }

  else if (type == &_xpc_type_string)
  {
    v7 = sub_100005004(v17, v10, v16);
    if (v7)
    {
      v16 = v7;
    }

    type = xpc_get_type(v16);
  }

  if (type == &_xpc_type_BOOL)
  {
    v15 = sub_10000511C(v19, v18, v11, v16);
  }

  else if (type == &_xpc_type_uint64)
  {
    v15 = sub_100005184(v19, v18, v11, v16, v9);
  }

  else if (type == &_xpc_type_data)
  {
    v15 = sub_1000052B0(v19, v18, v11, v16);
  }

  else
  {
    warnx("unsupported object type in property list for tag: %s", v17);
    v15 = 79;
  }

LABEL_28:
  if (v15)
  {
    v6 = 0;
    v6 = xpc_copy_description(v16);
    warnc(v15, "failed to encode value: %s => %s", v17, v6);
    sub_100002DE4(&v6);
  }

  v5 = v15;
  sub_1000030D0(&v7);
  return v5;
}

xpc_object_t sub_100004FA4(uint64_t a1, uint64_t a2, void *a3)
{
  value = xpc_int64_get_value(a3);
  if (value < 0)
  {
    return 0;
  }

  else
  {
    return xpc_uint64_create(value);
  }
}

xpc_object_t sub_100005004(const char *a1, const char *a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  if (!strcmp(a2, "_32") || !strcmp(a2, "_64"))
  {
    v4 = sub_100005364(a1, a3);
    if (v4)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(a2, "_0X"))
  {
    v5 = sub_100005484(a1, a3);
    if (v5)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_11:
    v6 = sub_10000553C(a1, a3);
    if (v6)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10000511C(_DWORD *a1, int a2, unsigned int a3, void *a4)
{
  value = xpc_BOOL_get_value(a4);
  v6 = sub_10004DC84(a1, a2, a3, value);
  return sub_1000055B4(v6);
}

uint64_t sub_100005184(_DWORD *a1, int a2, unsigned int a3, void *a4, uint64_t a5)
{
  value = xpc_uint64_get_value(a4);
  if (value <= a5)
  {
    if (a5 <= 0xFFFFFFFF)
    {
      sub_1000483C8(1uLL, "encoding uint value as u32: %#x", value);
      v7 = sub_10004DDC0(a1, a2, a3, value);
    }

    else
    {
      sub_1000483C8(1uLL, "encoding uint value as u64: %#llx", value);
      v7 = sub_10004DEF4(a1, a2, a3, value);
    }

    sub_1000483C8(1uLL, "encode result: %d", v7);
    return sub_1000055B4(v7);
  }

  else
  {
    return 34;
  }
}

uint64_t sub_1000052B0(_DWORD *a1, int a2, unsigned int a3, void *a4)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a4);
  length = xpc_data_get_length(a4);
  if (length <= 0xFFFFFFFF)
  {
    v7 = sub_10004D9D8(a1, a2, a3, bytes_ptr, length);
    return sub_1000055B4(v7);
  }

  else
  {
    return 84;
  }
}

xpc_object_t sub_100005364(const char *a1, void *a2)
{
  v6 = 0;
  string_ptr = xpc_string_get_string_ptr(a2);
  *__error() = 0;
  v4 = strtoull(string_ptr, 0, 0);
  if (*__error())
  {
    v2 = __error();
    sub_1000483C8(1uLL, "invalid string for unsigned integer conversion: %s => %s: %d", a1, string_ptr, *v2);
  }

  else
  {
    v6 = xpc_uint64_create(v4);
    sub_1000483C8(1uLL, "interpreting string value as unsigned integer: %s: %s => %#llx", a1, string_ptr, v4);
  }

  return v6;
}

xpc_object_t sub_100005484(const char *a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  string_ptr = 0;
  length = 0;
  v4 = 0;
  string_ptr = xpc_string_get_string_ptr(a2);
  length = xpc_string_get_length(v7);
  sub_100049A08(&v4, &length, string_ptr);
  sub_1000483C8(1uLL, "interpreting string value as hex data: %s: cstr = %s, data length = %lu", v8, string_ptr, length);
  v3 = xpc_data_create(v4, length);
  sub_100002DE4(&v4);
  return v3;
}

xpc_object_t sub_10000553C(const char *a1, void *a2)
{
  bytes = xpc_string_get_string_ptr(a2);
  length = xpc_string_get_length(a2);
  sub_1000483C8(1uLL, "interpreting string value as data: %s: %s", a1, bytes);
  return xpc_data_create(bytes, length + 1);
}

uint64_t sub_1000055B4(int a1)
{
  switch(a1)
  {
    case 'd':
      return 0;
    case 'e':
      return 22;
    case 'f':
      return 12;
    case 'g':
      return 104;
    case 'h':
      return 80;
    case 'i':
      return 78;
    default:
      return 14;
  }
}

void sub_10000567C(const char *a1, void *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a3;
  v6 = 0;
  v5 = -1;
  v4 = 0;
  v3 = 0;
  if (!*(a3 + 44))
  {
    v4 = xpc_copy_description(v9);
    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      if (strlen(v10) == 4)
      {
        v3 = sub_10004B478(v10);
        if (*(v7 + 32))
        {
          v6 = *(v7 + 32);
        }

        v5 = sub_10004D4E4(&v6, v3);
        if (v5 == 100)
        {
          sub_1000483C8(1uLL, "adding object to manifest: %s => %s", v10, v4);
          *(v7 + 40) = v3;
          *(v7 + 32) = v6;
          xpc_dictionary_apply_f();
        }

        else
        {
          warnx("failed to begin manifest: %d", v5);
        }
      }

      else
      {
        *(v7 + 44) = 79;
        warnx("illegal tag for object: %s => %s", v10, v4);
      }
    }

    else
    {
      *(v7 + 44) = 79;
      warnx("illegal object specifier: %s => %s", v10, v4);
    }
  }

  while (v6)
  {
    v5 = sub_10004D5EC(v6, v3);
    if (v5 == 100)
    {
      break;
    }

    warnx("failed to end %s object: %d", v10, v5);
  }

  sub_100002DE4(&v4);
}

char *sub_100005894(char *result, void *a2, uint64_t a3)
{
  v11 = result;
  v10 = a2;
  v9 = a3;
  v8 = a3;
  v7 = -1;
  v5 = 0;
  v6 = 0;
  v4 = *(a3 + 40);
  if (!*(a3 + 44))
  {
    v3 = sub_10004B484(v4, &v5);
    sub_1000483C8(1uLL, "adding property to object: %s: %s", v3, v11);
    result = sub_100004BC8(*(v8 + 32), v4, v11, v10);
    *(v8 + 44) = result;
  }

  return result;
}

void sub_10000594C(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = simple_session_copy_homedir();
  v1 = simple_session_copy_name();
  fprintf(__stdoutp, "%s | %s \n", v1, v2);
  objc_storeStrong(&location, 0);
}

uint64_t sub_1000059D4(uint64_t a1, int a2, char *const *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v14 = a3;
  v13 = -1;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[1]) = 1;
  __b[2] = 0;
  sub_1000480E0();
  while (1)
  {
    v13 = getopt_long(v17, v14, *(v18 + 32), *(v18 + 40), &v12);
    if (v13 == -1)
    {
      break;
    }

    v10 = v16[optind - 1];
    if (optind < 1)
    {
      v9 = 0;
      memset(v21, 0, sizeof(v21));
      v7 = 0;
      v6 = 3;
      oslog = &_os_log_default;
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 &= ~1u;
      }

      if (v6)
      {
        sub_1000013C8(v20, optind);
        v7 = _os_log_send_and_compose_impl(v6, &v9, v21, 80, &_mh_execute_header, oslog, 16, "unexpected failure: bogus optind: %d", v20);
      }

      v4 = v7;
      objc_storeStrong(&oslog, 0);
      v8 = v4;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100005BC8);
    }

    switch(v13)
    {
      case '?':
        errx(64, "unknown option: %s", v10);
      case 'A':
        LOBYTE(__b[1]) = 0;
        break;
      case 'H':
        __b[0] |= 2uLL;
        break;
      case 'L':
        __b[6] = optarg;
        break;
      case 'V':
        __b[5] = optarg;
        break;
      case 'e':
        __b[7] = optarg;
        break;
      case 'l':
        __b[0] |= 4uLL;
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
        JUMPOUT(0x100005D4CLL);
    }
  }

  v16 += optind;
  v17 -= optind;
  if (__b[0] != 1 && (__b[7] || __b[6]))
  {
    v15 = 22;
    warnx("Environment and Launchd Overrides are only applicable for sessioncreate. Exiting");
    return sysexit_np();
  }

  else
  {
    v15 = sub_100005E24(__b);
    return sysexit_np();
  }
}

uint64_t sub_100005E24(void *a1)
{
  v2 = -1;
  if ((*a1 & 4) != 0)
  {
    v2 = sub_100005EAC();
  }

  if ((*a1 & 2) != 0)
  {
    v2 = sub_100005EEC(a1);
  }

  if (*a1)
  {
    return sub_100005FB0(a1);
  }

  return v2;
}

uint64_t sub_100005EEC(uint64_t a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  if (*(a1 + 32))
  {
    v2 = sub_100026694(*(v5 + 32));
    v3 = session_stop() != 0;
    if (v3)
    {
      warn("Session stop failed", v2);
      v4 = 22;
    }

    v6 = v4;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    warn("No session selected");
    v4 = 22;
    return 22;
  }

  return v6;
}

uint64_t sub_100005FB0(uint64_t a1)
{
  v68 = a1;
  v67 = 0;
  obj[1] = ((*(a1 + 8) & 1) == 0);
  obj[0] = simple_session_create();
  location = 0;
  v64 = 0;
  *(v68 + 32) = simple_session_copy_name();
  if (!*(v68 + 56))
  {
    goto LABEL_72;
  }

  v1 = sub_100006B90(*(v68 + 56), &v67);
  v2 = location;
  location = v1;
  _objc_release(v2);
  if (v67)
  {
    warnc(v67, "create_xpc_object_from_plist_path returned an error");
    goto LABEL_66;
  }

  v67 = simple_session_add_session_environment();
  if (v67)
  {
    v63 = sub_100048090();
    v44 = 1;
    if (v63[1] <= 1uLL)
    {
      v44 = v63[2] > 1uLL;
    }

    if (v44)
    {
      v3 = 999;
    }

    else
    {
      v3 = 3;
    }

    v62 = v3;
    v43 = 1;
    if (v63[1] <= 1uLL)
    {
      v43 = v63[2] > 1uLL;
    }

    v4 = 2000;
    if (!v43)
    {
      v4 = 200;
    }

    v61 = v4;
    if (v64)
    {
      v42 = sub_100017530(v64, v62, v61);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v59 = strdup("unknown error");
      v5 = strlen("unknown error");
      v104 = "known-constant allocation";
      v103 = v59;
      v102 = v5;
      if (!v59)
      {
        v101 = 0;
        memset(__b, 0, sizeof(__b));
        v99 = 0;
        v98 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v98 &= ~1u;
        }

        if (v98)
        {
          v36 = v98;
          v37 = oslog;
          v38 = type;
          v39 = v104;
          v40 = v102;
          v41 = __error();
          v35 = strerror(*v41);
          sub_1000031B0(v109, v39, v40, v35);
          v95 = _os_log_send_and_compose_impl(v36, &v101, __b, 80, &_mh_execute_header, v37, v38, "allocation failed: obj = %s, size = %lu, error = %s", v109, 32, v13);
          v99 = v95;
        }

        v94 = v99;
        objc_storeStrong(&oslog, 0);
        v100 = v94;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100006388);
      }

      v57 = v59;
      v42 = v59;
    }

    v60 = v42;
    warnx("session_add_session_environment returned an error\n%s", v42);
    sub_100002DE4(&v60);
  }

  else
  {
LABEL_72:
    if (*(v68 + 16) && (v67 = simple_session_set_homedir_size() ^ 1) != 0)
    {
      v56 = sub_100048090();
      v34 = 1;
      if (v56[1] <= 1uLL)
      {
        v34 = v56[2] > 1uLL;
      }

      if (v34)
      {
        v6 = 999;
      }

      else
      {
        v6 = 3;
      }

      v55 = v6;
      v33 = 1;
      if (v56[1] <= 1uLL)
      {
        v33 = v56[2] > 1uLL;
      }

      v7 = 2000;
      if (!v33)
      {
        v7 = 200;
      }

      v54 = v7;
      if (v64)
      {
        v32 = sub_100017530(v64, v55, v54);
      }

      else
      {
        v51 = "unknown error";
        v70 = "unknown error";
        v52 = strdup("unknown error");
        v8 = strlen("unknown error");
        v93 = "known-constant allocation";
        v92 = v52;
        v91 = v8;
        if (!v52)
        {
          v90 = 0;
          memset(v108, 0, sizeof(v108));
          v88 = 0;
          v87 = 3;
          v86 = &_os_log_default;
          v85 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v87 &= ~1u;
          }

          if (v87)
          {
            v26 = v87;
            v27 = v86;
            v28 = v85;
            v29 = v93;
            v30 = v91;
            v31 = __error();
            v25 = strerror(*v31);
            sub_1000031B0(v107, v29, v30, v25);
            v84 = _os_log_send_and_compose_impl(v26, &v90, v108, 80, &_mh_execute_header, v27, v28, "allocation failed: obj = %s, size = %lu, error = %s", v107, 32, v13);
            v88 = v84;
          }

          v83 = v88;
          objc_storeStrong(&v86, 0);
          v89 = v83;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000066D8);
        }

        v50 = v52;
        v32 = v52;
      }

      v53 = v32;
      warnx("session_set_homedir_size returned an error\n%s", v32);
      sub_100002DE4(&v53);
    }

    else
    {
      v67 = simple_session_activate() ^ 1;
      if (v67)
      {
        v49 = sub_100048090();
        v24 = 1;
        if (v49[1] <= 1uLL)
        {
          v24 = v49[2] > 1uLL;
        }

        if (v24)
        {
          v9 = 999;
        }

        else
        {
          v9 = 3;
        }

        v48 = v9;
        v23 = 1;
        if (v49[1] <= 1uLL)
        {
          v23 = v49[2] > 1uLL;
        }

        v10 = 2000;
        if (!v23)
        {
          v10 = 200;
        }

        v47 = v10;
        if (v64)
        {
          v22 = sub_100017530(v64, v48, v47);
        }

        else
        {
          v69 = "unknown error";
          v45 = strdup("unknown error");
          v11 = strlen("unknown error");
          v82 = "known-constant allocation";
          v81 = v45;
          v80 = v11;
          if (!v45)
          {
            v79 = 0;
            memset(v106, 0, sizeof(v106));
            v77 = 0;
            v76 = 3;
            v75 = &_os_log_default;
            v74 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v76 &= ~1u;
            }

            if (v76)
            {
              v16 = v76;
              v17 = v75;
              v18 = v74;
              v19 = v82;
              v20 = v80;
              v21 = __error();
              v15 = strerror(*v21);
              sub_1000031B0(v105, v19, v20, v15);
              v73 = _os_log_send_and_compose_impl(v16, &v79, v106, 80, &_mh_execute_header, v17, v18, "allocation failed: obj = %s, size = %lu, error = %s", v105, 32, v13);
              v77 = v73;
            }

            v72 = v77;
            objc_storeStrong(&v75, 0);
            v78 = v72;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100006A10);
          }

          v22 = v45;
        }

        v46 = v22;
        warnx("Activation error\n%s", v22);
        sub_100002DE4(&v46);
      }

      else
      {
        sub_10000594C(obj[0]);
      }
    }
  }

LABEL_66:
  v14 = v67;
  sub_100006B40(&v64);
  objc_storeStrong(&location, 0);
  objc_storeStrong(obj, 0);
  return v14;
}

void sub_100006B10(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_100006B40(CFTypeRef *a1)
{
  if (*a1)
  {
    CFRelease(*a1);
  }
}

id sub_100006B90(const char *a1, int *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  v10 = open(v14, 0);
  v15 = v10;
  if (v10 < 0)
  {
    v8 = __error();
    v9 = *v8;
    warnc(*v8, "Could not open file at %s.", v14);
  }

  else
  {
    v9 = sub_10004B524(v10, __b);
    if (v9)
    {
      warnc(v9, "Unable to read plist: %s", v14);
    }

    else
    {
      v7 = xpc_create_from_plist();
      v3 = v12;
      v12 = v7;
      _objc_release(v3);
      if (!v12)
      {
        v9 = 212;
        warnc(212, "Failed to parse plist: %s", v14);
      }
    }
  }

  sub_10004C66C(__b, v2);
  *v13 = v9;
  v6 = v12;
  sub_100006D80(&v10);
  objc_storeStrong(&v12, 0);
  v4 = v6;
  return v6;
}

int *sub_100006D80(int *result)
{
  v10 = result;
  v9 = *result;
  if (v9 != -1)
  {
    result = close(v9);
    v8 = result;
    if (result == -1)
    {
      v7 = 0;
      memset(__b, 0, sizeof(__b));
      v5 = 0;
      v4 = 3;
      oslog = &_os_log_default;
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v4 &= ~1u;
      }

      if (v4)
      {
        v1 = __error();
        sub_1000013C8(v11, *v1);
        v5 = _os_log_send_and_compose_impl(v4, &v7, __b, 80, &_mh_execute_header, oslog, 16, "assertion failure: close(fd) -> %{errno}d", v11, 8);
      }

      v2 = v5;
      objc_storeStrong(&oslog, 0);
      v6 = v2;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100006EFCLL);
    }
  }

  return result;
}

BOOL sub_100006F2C()
{
  v7 = __chkstk_darwin();
  v6 = -1;
  v5 = 0;
  bzero(&v11, 0x848uLL);
  image_asset = 0;
  v3 = 0;
  __s1 = 0;
  bzero(v10, 0x400uLL);
  bzero(v9, 0x400uLL);
  v1 = 0;
  image_asset = cryptex_core_get_image_asset();
  v11 = *(image_asset + 16);
  v14 = *(v7 + 32);
  v6 = sub_100009F44(&v11, &v3);
  if (v6)
  {
    v5 = "failed to attach dmg";
  }

  else
  {
    v6 = sub_10000AD54(&v11, v3, &__s1, v10, v9);
    if (v6)
    {
      v5 = "failed to find attached dmg";
    }

    else
    {
      v12 = open(v10, 0);
      v8 = v12;
      if (v12 < 0)
      {
        v6 = *__error();
        v5 = "failed to open device handle";
      }

      else
      {
        if (ioctl(v12, 0x20006415uLL))
        {
          warn("failed to detach virtual device: %s (not fatal)", v13);
        }

        v1 = strcmp(__s1, "apfs") == 0;
      }
    }
  }

  if (v6)
  {
    errc(71, v6, "%s", v5);
  }

  sub_100006B40(&v3);
  return v1;
}

uint64_t sub_100007174()
{
  v88 = __chkstk_darwin();
  v87 = v0;
  v86 = v1;
  v85 = -1;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = sub_100048084();
  v79 = -1;
  v78 = -1;
  v77 = -1;
  v76 = -1;
  v75 = -1;
  memset(__b, 0, sizeof(__b));
  memset(v73, 0, sizeof(v73));
  memcpy(v131, "seal.XXXXXX", sizeof(v131));
  bzero(v130, 0x400uLL);
  bzero(v129, 0x400uLL);
  bzero(v128, 0x400uLL);
  bzero(v127, 0x400uLL);
  bzero(v126, 0x400uLL);
  if (cryptex_core_is_cryptex1())
  {
    v85 = sub_10004B3B0(v80[584], v131, &v79);
    if (v85)
    {
      v69 = *(v88 + 16);
      if (!v69)
      {
        v69 = "[anonymous]";
      }

      v68 = *__error();
      v67 = *(v88 + 32);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v124, v69, v85);
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}s: failed to create temp dir: %{darwin.errno}d", v124, 0x12u);
      }

      *__error() = v68;
    }

    else
    {
      v85 = realpath_np();
      if (v85)
      {
        v66 = *(v88 + 16);
        if (!v66)
        {
          v66 = "[anonymous]";
        }

        v65 = *__error();
        v64 = *(v88 + 32);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v123, v66, v85);
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}s: failed to get temp dir path: %{darwin.errno}d", v123, 0x12u);
        }

        *__error() = v65;
      }

      else
      {
        __snprintf_chk(v128, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg", v130);
        __snprintf_chk(v127, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg.roothash.data", v130);
        __snprintf_chk(v126, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg.roothash.im4p", v130);
        v83 = cryptex_core_pop_asset();
        if (v83)
        {
          v78 = *(v83 + 16);
          v85 = realpath_np();
          if (v85)
          {
            v60 = *(v88 + 16);
            if (!v60)
            {
              v60 = "[anonymous]";
            }

            v59 = *__error();
            v58 = *(v88 + 32);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              sub_100009614(v121, v60, v85);
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s: failed to get image path: %{darwin.errno}d", v121, 0x12u);
            }

            *__error() = v59;
          }

          else
          {
            v85 = sub_100009668(v129, v128, v127, *(v88 + 32), v87 & 1);
            if (v85)
            {
              v57 = *(v88 + 16);
              if (!v57)
              {
                v57 = "[anonymous]";
              }

              v56 = *__error();
              v55 = *(v88 + 32);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                sub_100009614(v120, v57, v85);
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%{public}s: failed to seal cryptex: %{darwin.errno}d", v120, 0x12u);
              }

              *__error() = v56;
            }

            else
            {
              v76 = open(v127, 256);
              v92 = v76;
              if (v76 < 0)
              {
                v85 = *__error();
                if (v85)
                {
                  v51 = *(v88 + 16);
                  if (!v51)
                  {
                    v51 = "[anonymous]";
                  }

                  v50 = *__error();
                  v49 = *(v88 + 32);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    sub_100009DCC(v118, v51, v127, v85);
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s: failed to open volume hash data file: %{public}s: %{darwin.errno}d", v118, 0x1Cu);
                  }

                  *__error() = v50;
                }

                else
                {
                  v54 = *(v88 + 16);
                  if (!v54)
                  {
                    v54 = "[anonymous]";
                  }

                  v53 = *__error();
                  v52 = *(v88 + 32);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100009D7C(v119, v54, v127);
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open volume hash data file: %{public}s: success", v119, 0x16u);
                  }

                  *__error() = v53;
                }
              }

              else
              {
                v85 = sub_10004B524(v76, __b);
                if (v85)
                {
                  v85 = *__error();
                  if (v85)
                  {
                    v45 = *(v88 + 16);
                    if (!v45)
                    {
                      v45 = "[anonymous]";
                    }

                    v44 = *__error();
                    v43 = *(v88 + 32);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      sub_100009DCC(v116, v45, v127, v85);
                      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s: failed to read volume hash data file: %{public}s: %{darwin.errno}d", v116, 0x1Cu);
                    }

                    *__error() = v44;
                  }

                  else
                  {
                    v48 = *(v88 + 16);
                    if (!v48)
                    {
                      v48 = "[anonymous]";
                    }

                    v47 = *__error();
                    v46 = *(v88 + 32);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100009D7C(v117, v48, v127);
                      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}s: failed to read volume hash data file: %{public}s: success", v117, 0x16u);
                    }

                    *__error() = v47;
                  }
                }

                else
                {
                  v94 = 1;
                  v93 = 1024;
                  v42 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
                  v105 = "known-constant allocation";
                  v104 = v42;
                  v103 = 1024;
                  if (!v42)
                  {
                    v102 = 0;
                    memset(v133, 0, sizeof(v133));
                    v100 = 0;
                    v99 = 3;
                    v98 = &_os_log_default;
                    v97 = OS_LOG_TYPE_ERROR;
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      v99 &= ~1u;
                    }

                    if (v99)
                    {
                      v9 = v99;
                      v10 = v98;
                      v11 = v97;
                      v7 = v105;
                      v8 = v103;
                      v2 = __error();
                      v3 = strerror(*v2);
                      sub_1000031B0(v132, v7, v8, v3);
                      v96 = _os_log_send_and_compose_impl(v9, &v102, v133, 80, &_mh_execute_header, v10, v11, "allocation failed: obj = %s, size = %lu, error = %s", v132, 32, v5);
                      v100 = v96;
                    }

                    v95 = v100;
                    v101 = v100;
                    _os_crash_msg();
                    __break(1u);
                    JUMPOUT(0x10000863CLL);
                  }

                  sub_10004C358(v73, 0, j__free, v42, 1024);
                  v84 = sub_10004E124(v86, "0", __b[0], __b[1], 0, 0, v73, &v73[1]);
                  if (v84 == 100)
                  {
                    v75 = open(v126, 513, 438);
                    v91 = v75;
                    if (v75 < 0)
                    {
                      v85 = *__error();
                      if (v85)
                      {
                        v35 = *(v88 + 16);
                        if (!v35)
                        {
                          v35 = "[anonymous]";
                        }

                        v34 = *__error();
                        v33 = *(v88 + 32);
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                        {
                          sub_100009614(v113, v35, v85);
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: failed to create volume root hash: %{darwin.errno}d", v113, 0x12u);
                        }

                        *__error() = v34;
                      }

                      else
                      {
                        v38 = *(v88 + 16);
                        if (!v38)
                        {
                          v38 = "[anonymous]";
                        }

                        v37 = *__error();
                        v36 = *(v88 + 32);
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          sub_1000095D4(v114, v38);
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: failed to create volume root hash: success", v114, 0xCu);
                        }

                        *__error() = v37;
                      }
                    }

                    else
                    {
                      v85 = sub_10004B8CC(v75, v73);
                      if (v85)
                      {
                        v32 = *(v88 + 16);
                        if (!v32)
                        {
                          v32 = "[anonymous]";
                        }

                        v31 = *__error();
                        v30 = *(v88 + 32);
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                        {
                          sub_100009614(v112, v32, v85);
                          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: failed to write volume root hash: %{darwin.errno}d", v112, 0x12u);
                        }

                        *__error() = v31;
                      }

                      else
                      {
                        close(v75);
                        v75 = open(v126, 256);
                        v90 = v75;
                        if (v75 < 0)
                        {
                          v85 = *__error();
                          if (v85)
                          {
                            v26 = *(v88 + 16);
                            if (!v26)
                            {
                              v26 = "[anonymous]";
                            }

                            v25 = *__error();
                            v24 = *(v88 + 32);
                            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                            {
                              sub_100009614(v110, v26, v85);
                              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to open volume root hash: %{darwin.errno}d", v110, 0x12u);
                            }

                            *__error() = v25;
                          }

                          else
                          {
                            v29 = *(v88 + 16);
                            if (!v29)
                            {
                              v29 = "[anonymous]";
                            }

                            v28 = *__error();
                            v27 = *(v88 + 32);
                            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                            {
                              sub_1000095D4(v111, v29);
                              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open volume root hash: success", v111, 0xCu);
                            }

                            *__error() = v28;
                          }
                        }

                        else
                        {
                          v77 = open(v128, 256);
                          v89 = v77;
                          if (v77 < 0)
                          {
                            v85 = *__error();
                            if (v85)
                            {
                              v20 = *(v88 + 16);
                              if (!v20)
                              {
                                v20 = "[anonymous]";
                              }

                              v19 = *__error();
                              v18 = *(v88 + 32);
                              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                              {
                                sub_100009614(v108, v20, v85);
                                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: failed to open sealed dmg: %{darwin.errno}d", v108, 0x12u);
                              }

                              *__error() = v19;
                            }

                            else
                            {
                              v23 = *(v88 + 16);
                              if (!v23)
                              {
                                v23 = "[anonymous]";
                              }

                              v22 = *__error();
                              v21 = *(v88 + 32);
                              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                              {
                                sub_1000095D4(v109, v23);
                                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open sealed dmg: success", v109, 0xCu);
                              }

                              *__error() = v22;
                            }
                          }

                          else
                          {
                            v82 = cryptex_asset_new();
                            if (v82)
                            {
                              v81 = cryptex_asset_new();
                              if (v81)
                              {
                                cryptex_core_set_asset();
                                cryptex_core_set_asset();
                              }

                              else
                              {
                                v85 = 12;
                                v14 = *(v88 + 16);
                                if (!v14)
                                {
                                  v14 = "[anonymous]";
                                }

                                v13 = *__error();
                                v12 = *(v88 + 32);
                                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                                {
                                  sub_100009614(v106, v14, v85);
                                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: failed to create cryptex asset for volume root hash: %{darwin.errno}d", v106, 0x12u);
                                }

                                *__error() = v13;
                              }
                            }

                            else
                            {
                              v85 = 12;
                              v17 = *(v88 + 16);
                              if (!v17)
                              {
                                v17 = "[anonymous]";
                              }

                              v16 = *__error();
                              v15 = *(v88 + 32);
                              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                              {
                                sub_100009614(v107, v17, v85);
                                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to create cryptex asset for sealed dmg: %{darwin.errno}d", v107, 0x12u);
                              }

                              *__error() = v16;
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    switch(v84)
                    {
                      case 'e':
                        v85 = 22;
                        break;
                      case 'f':
                        v85 = 12;
                        break;
                      case 'g':
                        v85 = 104;
                        break;
                      case 'h':
                        v85 = 14;
                        break;
                      case 'i':
                        v85 = 78;
                        break;
                      default:
                        v85 = 104;
                        break;
                    }

                    v41 = *(v88 + 16);
                    if (!v41)
                    {
                      v41 = "[anonymous]";
                    }

                    v40 = *__error();
                    v39 = *(v88 + 32);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      sub_100009E38(v115, v41, v84, v85);
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap volume hash as im4p. Img4 error: %d: %{darwin.errno}d", v115, 0x18u);
                    }

                    *__error() = v40;
                  }
                }
              }
            }
          }
        }

        else
        {
          v85 = 2;
          v63 = *(v88 + 16);
          if (!v63)
          {
            v63 = "[anonymous]";
          }

          v62 = *__error();
          v61 = *(v88 + 32);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v122, v63, v85);
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s: failed to remove current cryptex dmg asset: %{darwin.errno}d", v122, 0x12u);
          }

          *__error() = v62;
        }
      }
    }
  }

  else
  {
    v85 = 22;
    v72 = *(v88 + 16);
    if (!v72)
    {
      v72 = "[anonymous]";
    }

    v71 = *__error();
    v70 = *(v88 + 32);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v125, v72, v85);
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%{public}s: Sealing requires a Cryptex-formatted cryptex.: %{darwin.errno}d", v125, 0x12u);
    }

    *__error() = v71;
  }

  cryptex_asset_destroy();
  v83 = 0;
  v6 = v85;
  sub_1000038DC(&v75);
  sub_1000038DC(&v76);
  sub_1000038DC(&v77);
  sub_1000038DC(&v79);
  return v6;
}

uint64_t sub_1000095D4(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100009614(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009668(uint64_t a1, const char *a2, const char *a3, NSObject *a4, char a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = -1;
  v21 = -1;
  memset(&__b, 0, sizeof(__b));
  v35[0] = "-S";
  v35[1] = v25;
  v35[2] = "-i";
  v35[3] = v27;
  v35[4] = "-o";
  v35[5] = v26;
  v22 = sub_100020044(aBinZshSetEIfCr, 0x1207uLL, v35, 6uLL, &v21);
  if (v22)
  {
    v17 = *__error();
    v16 = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v33, v26, v22);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "sealing %s: %{darwin.errno}d", v33, 0x12u);
    }

    *__error() = v17;
  }

  else
  {
    v19 = *__error();
    oslog = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v34, v26);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "sealing %s [no error]", v34, 0xCu);
    }

    *__error() = v19;
  }

  if (v21)
  {
    v22 = -1;
    v15 = *__error();
    v14 = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100009EF8(v32, v21, v22);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "sealing script exit status: %d: %{darwin.errno}d", v32, 0xEu);
    }

    *__error() = v15;
  }

  else if (stat(v26, &__b))
  {
    v22 = *__error();
    if (v22)
    {
      v11 = *__error();
      v10 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100009EA4(v30, v26, v22);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unable to stat %s: %{darwin.errno}d", v30, 0x12u);
      }

      *__error() = v11;
    }

    else
    {
      v13 = *__error();
      v12 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v31, v26);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "unable to stat %s [no error]", v31, 0xCu);
      }

      *__error() = v13;
    }
  }

  else if (stat(v25, &__b))
  {
    v22 = *__error();
    if (v22)
    {
      v7 = *__error();
      v6 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100009EA4(v28, v25, v22);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unable to stat %s: %{darwin.errno}d", v28, 0x12u);
      }

      *__error() = v7;
    }

    else
    {
      v9 = *__error();
      v8 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v29, v25);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "unable to stat %s [no error]", v29, 0xCu);
      }

      *__error() = v9;
    }
  }

  return v22;
}

uint64_t sub_100009D7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 34;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009DCC(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 34;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100009E38(uint64_t result, uint64_t a2, int a3, int a4)
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
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_100009EA4(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009EF8(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_100009F44(unsigned int *a1, CFTypeRef *a2)
{
  v53 = a1;
  v52 = a2;
  v51 = -1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  Data = 0;
  v42 = 5;
  v41 = -536870212;
  MatchingService = 0;
  connect = 0;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0x1BEEFFEEDLL;
  outputStruct = 0;
  outputStructCnt = 4;
  bzero(v82, 0x400uLL);
  v50 = sub_100018434();
  sub_1000173C8(v50, "CFMutableDictionary");
  if (*(v53 + 2))
  {
    v48 = sub_100018314(*(v53 + 2));
  }

  else
  {
    v49 = CFUUIDCreate(0);
    sub_1000173C8(v49, "CFUUID");
    v48 = CFUUIDCreateString(0, v49);
    sub_1000173C8(v48, "CFString");
  }

  CFDictionarySetValue(v50, @"hdik-unique-identifier", v48);
  CFDictionarySetValue(v50, @"autodiskmount", kCFBooleanFalse);
  if ((v53[8] & 1) == 0)
  {
    CFDictionarySetValue(v50, @"write-protected", kCFBooleanTrue);
LABEL_13:
    v51 = realpath_np();
    if (v51)
    {
      v30 = *__error();
      v29 = *(v53 + 261);
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v78, v51);
        _os_log_impl(&_mh_execute_header, v29, v28, "realpath_np hdi_dmgfd: %{darwin.errno}d", v78, 8u);
      }

      *__error() = v30;
    }

    else
    {
      v3 = strlen(v82);
      v46 = CFDataCreate(0, v82, v3);
      sub_1000173C8(v46, "CFData");
      CFDictionarySetValue(v50, @"image-path", v46);
      v47 = sub_10001810C(*v53);
      sub_1000173C8(v47, "CFNumber");
      CFDictionarySetValue(v50, @"image-fd", v47);
      v27 = *__error();
      v26 = *(v53 + 261);
      v25 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10000ACC8(v77, v50);
        _os_log_impl(&_mh_execute_header, v26, v25, "attach args = %@", v77, 0xCu);
      }

      *__error() = v27;
      Data = CFPropertyListCreateData(0, v50, kCFPropertyListXMLFormat_v1_0, 0, 0);
      sub_1000173C8(Data, "CFData");
      BytePtr = CFDataGetBytePtr(Data);
      v45 = BytePtr;
      Length = CFDataGetLength(Data);
      if (Length < 0)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000A5B8);
      }

      v44 = Length;
      __b[1] = v45;
      __b[2] = Length;
      v4 = IOServiceMatching("IOHDIXController");
      MatchingService = IOServiceGetMatchingService(0, v4);
      if (MatchingService)
      {
        v41 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
        if (v41)
        {
          v21 = *__error();
          v20 = *(v53 + 261);
          v19 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000013C8(v75, v42);
            _os_log_impl(&_mh_execute_header, v20, v19, "IOServiceOpen: %{mach.errno}x", v75, 8u);
          }

          *__error() = v21;
          v51 = 61;
        }

        else
        {
          v42 = IOConnectCallStructMethod(connect, 0, __b, 0x100uLL, &outputStruct, &outputStructCnt);
          if (v42)
          {
            v51 = 83;
            v18 = *__error();
            v17 = *(v53 + 261);
            v16 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000013C8(v74, v42);
              _os_log_impl(&_mh_execute_header, v17, v16, "kIOHDIXControllerCreateDriveMethod: %{mach.errno}x", v74, 8u);
            }

            *__error() = v18;
          }

          else
          {
            if (outputStructCnt != 4)
            {
              v15 = 0;
              memset(v73, 0, sizeof(v73));
              v14 = 3;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v14 = 2;
              }

              sub_10000AD08(v72, outputStructCnt, 4);
              LODWORD(v6) = 22;
              _os_log_send_and_compose_impl(v14, &v15, v73, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: kIOHDIXControllerCreateDriveMethod returned bogus drive number length: actual = %lu, expected = %lu", v72, v6);
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x10000A9A4);
            }

            v13 = *__error();
            v12 = *(v53 + 261);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              sub_1000013C8(v71, outputStruct);
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "drive number: %d", v71, 8u);
            }

            *__error() = v13;
            *v52 = CFRetain(v48);
            v51 = 0;
          }
        }
      }

      else
      {
        v24 = *__error();
        oslog = *(v53 + 261);
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100003120(v76, "IOHDIXController");
          _os_log_impl(&_mh_execute_header, oslog, v22, "could not find %s", v76, 0xCu);
        }

        *__error() = v24;
        v51 = 78;
      }
    }

    goto LABEL_40;
  }

  bzero(__s, 0x400uLL);
  v51 = realpath_np();
  if (!v51)
  {
    __snprintf_chk(__s, 0x400uLL, 0, 0x400uLL, "%s/%s", __s, "shadow");
    v33 = *__error();
    v32 = *(v53 + 261);
    v31 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v79, __s);
      _os_log_impl(&_mh_execute_header, v32, v31, "shdwpath = %s", v79, 0xCu);
    }

    *__error() = v33;
    v2 = strlen(__s);
    v46 = CFDataCreate(0, __s, v2);
    sub_1000173C8(v46, "CFData");
    CFDictionarySetValue(v50, @"shadow-path", v46);
    goto LABEL_13;
  }

  v36 = *__error();
  v35 = *(v53 + 261);
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_1000013C8(v80, v51);
    _os_log_impl(&_mh_execute_header, v35, type, "realpath_np shdwfd: %{darwin.errno}d", v80, 8u);
  }

  *__error() = v36;
LABEL_40:
  v65 = connect;
  v64 = 5;
  if (connect)
  {
    v64 = IOServiceClose(v65);
    if (v64)
    {
      v63 = 0;
      memset(v85, 0, sizeof(v85));
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
        v9 = v60;
        v10 = v59;
        v11 = v58;
        sub_1000013C8(v84, v64);
        LODWORD(v6) = 8;
        v57 = _os_log_send_and_compose_impl(v9, &v63, v85, 80, &_mh_execute_header, v10, v11, "unexpected failure: IOServiceClose: %{mach.errno}d", v84, v6);
        v61 = v57;
      }

      v56 = v61;
      v62 = v61;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000ABD0);
    }
  }

  v67 = MatchingService;
  v68 = MatchingService;
  v69 = MatchingService;
  v66 = MatchingService;
  v70 = MatchingService;
  v8 = 0;
  if (MatchingService)
  {
    v8 = v70 != -1;
  }

  if (v8)
  {
    mach_right_send_release();
  }

  v7 = v51;
  sub_100006B40(&Data);
  sub_100006B40(&v46);
  sub_100006B40(&v47);
  sub_100006B40(&v48);
  sub_100006B40(&v49);
  sub_100006B40(&v50);
  return v7;
}

uint64_t sub_10000ACC8(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_10000AD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10000AD54(uint64_t a1, const void *a2, const char **a3, char *a4, char *a5)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = -1;
  v28 = 5;
  notification = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v29 = IONotificationPortCreate(0);
  if (!v29)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10000ADE8);
  }

  notifyPort = v29;
  v5 = IOServiceMatching("IOMedia");
  v28 = IOServiceAddMatchingNotification(notifyPort, "IOServiceMatched", v5, 0, 0, &notification);
  if (v28)
  {
    v23 = *__error();
    oslog = *(v35 + 2088);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v40, v28);
      _os_log_impl(&_mh_execute_header, oslog, type, "IOServiceAddMatchingNotification: %{mach.errno}x", v40, 8u);
    }

    *__error() = v23;
  }

  else
  {
    v20 = *__error();
    v19 = *(v35 + 2088);
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10000ACC8(v39, v34);
      _os_log_impl(&_mh_execute_header, v19, v18, "looking for drive: %@", v39, 0xCu);
    }

    *__error() = v20;
    v30 = 2;
    while (1)
    {
      v26 = IOIteratorNext(notification);
      if (!v26)
      {
        break;
      }

      entry = v26;
      cf2 = 0;
      memset(__b, 0, sizeof(__b));
      cf2 = IORegistryEntrySearchCFProperty(v26, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (cf2)
      {
        v14 = *__error();
        v13 = *(v35 + 2088);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10000ACC8(v37, cf2);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "found property: %@", v37, 0xCu);
        }

        *__error() = v14;
        if (CFEqual(v34, cf2))
        {
          if (IOObjectConformsTo(entry, "AppleAPFSVolume") || IOObjectConformsTo(entry, "AppleAPFSMedia") || IOObjectConformsTo(entry, "AppleAPFSContainerScheme") || IOObjectConformsTo(entry, "AppleAPFSContainer"))
          {
            v15 = 9;
          }

          else
          {
            v30 = sub_10000B574(*(v35 + 2088), v26, v33, &v25, &v24);
            if (v30)
            {
              v10 = *__error();
              v9 = *(v35 + 2088);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                sub_1000013C8(v36, v30);
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", v36, 8u);
              }

              *__error() = v10;
              v15 = 0;
            }

            else
            {
              v11 = sub_100018348(v25, __b, 0xFFuLL);
              if (!v11)
              {
                _os_crash();
                __break(1u);
                JUMPOUT(0x10000B1A4);
              }

              __snprintf_chk(v32, 0x400uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", "/dev/", v11);
              v12 = sub_100018348(v24, __b, 0xFFuLL);
              if (!v12)
              {
                _os_crash();
                __break(1u);
                JUMPOUT(0x10000B21CLL);
              }

              __snprintf_chk(v31, 0x400uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", "/dev/", v12);
              v30 = 0;
              v15 = 10;
            }
          }
        }

        else
        {
          v15 = 9;
        }
      }

      else
      {
        v15 = 9;
      }

      sub_100006B40(&cf2);
      sub_10000B3D8(&entry);
      if (v15)
      {
        if (v15 != 9)
        {
          break;
        }
      }
    }
  }

  if (v29)
  {
    IONotificationPortDestroy(v29);
  }

  v7 = v30;
  sub_100006B40(&v24);
  sub_100006B40(&v25);
  return v7;
}

io_object_t *sub_10000B3D8(io_object_t *result)
{
  v6 = result;
  v5 = 5;
  v4 = result;
  object = *result;
  if (object)
  {
    result = IOObjectRelease(object);
    v5 = result;
    if (result)
    {
      v2 = 0;
      memset(__b, 0, sizeof(__b));
      v1 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v1 = 2;
      }

      sub_1000013C8(v7, v5);
      _os_log_send_and_compose_impl(v1, &v2, __b, 80, &_mh_execute_header, &_os_log_default, 16, "IOObjectRetain: %{mach.errno}d", v7, 8);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000B540);
    }
  }

  return result;
}

uint64_t sub_10000B574(NSObject *a1, io_object_t a2, const char **a3, uint64_t *a4, uint64_t *a5)
{
  v65 = a1;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = a5;
  v60 = -1;
  ParentEntry = 5;
  v83 = a2;
  v82 = IOObjectRetain(a2);
  if (v82)
  {
    v81 = 0;
    memset(__b, 0, sizeof(__b));
    v79 = 0;
    v78 = 3;
    v77 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v78 &= ~1u;
    }

    if (v78)
    {
      sub_1000013C8(v95, v82);
      v79 = _os_log_send_and_compose_impl(v78, &v81, __b, 80, &_mh_execute_header, v77, type, "unexpected failure: IOObjectRetain: %{mach.errno}d", v95, 8);
    }

    v75 = v79;
    v80 = v79;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000B724);
  }

  parent = v83;
  v74 = v83;
  v73 = IOObjectRetain(v83);
  if (v73)
  {
    v72 = 0;
    memset(v94, 0, sizeof(v94));
    v70 = 0;
    v69 = 3;
    v68 = &_os_log_default;
    v67 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v69 &= ~1u;
    }

    if (v69)
    {
      sub_1000013C8(v93, v73);
      v70 = _os_log_send_and_compose_impl(v69, &v72, v94, 80, &_mh_execute_header, v68, v67, "unexpected failure: IOObjectRetain: %{mach.errno}d", v93, 8);
    }

    v66 = v70;
    v71 = v70;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000B878);
  }

  v57 = v74;
  v56 = parent;
  v55 = 0;
  CFProperty = 0;
  v53 = 0;
  v52 = "hfs";
  if (!sub_100037760(&v57, "AppleAPFSContainerScheme") && !sub_100037760(&v57, "AppleAPFSMedia") && !sub_100037760(&v57, "AppleAPFSContainer") && !sub_100037760(&v57, "AppleAPFSVolume"))
  {
    v52 = "apfs";
    v56 = v57;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v56, @"BSD Name", kCFAllocatorDefault, 0);
  v51 = 0;
  if (CFProperty)
  {
    v89 = CFProperty;
    v88 = &CFStringGetTypeID;
    v21 = CFGetTypeID(CFProperty);
    if (v21 == (v88)())
    {
      v51 = CFProperty;
    }
  }

  v50 = v51;
  v53 = v51;
  if (!v51)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10000B9E4);
  }

  v49 = *__error();
  v48 = v65;
  v47 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ACC8(v92, v53);
    _os_log_impl(&_mh_execute_header, v48, v47, "subdevice node = %@", v92, 0xCu);
  }

  *__error() = v49;
  do
  {
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v45 = IORegistryEntryCreateCFProperty(parent, @"Whole", kCFAllocatorDefault, 0);
    v43 = 0;
    if (v45)
    {
      v87 = v45;
      v86 = &CFBooleanGetTypeID;
      v20 = CFGetTypeID(v45);
      if (v20 == (v86)())
      {
        v43 = v45;
      }
    }

    v42 = v43;
    v44 = v43;
    if (v43 == kCFBooleanTrue)
    {
      v41 = 0;
      v40 = *__error();
      v39 = v65;
      v38 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v18 = v39;
        v19 = v38;
        sub_10000DC54(v37);
        _os_log_impl(&_mh_execute_header, v18, v19, "found whole disk node", v37, 2u);
      }

      v17 = v40;
      *__error() = v17;
      v41 = IORegistryEntryCreateCFProperty(parent, @"BSD Name", kCFAllocatorDefault, 0);
      v36 = 0;
      if (v41)
      {
        v85 = v41;
        v84 = &CFStringGetTypeID;
        v16 = CFGetTypeID(v41);
        if (v16 == (v84)())
        {
          v36 = v41;
        }
      }

      v35 = v36;
      v55 = v36;
      if (!v62)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000BCC8);
      }

      v34 = *__error();
      oslog = v65;
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v14 = oslog;
        v15 = v32;
        sub_10000ACC8(v91, v55);
        _os_log_impl(&_mh_execute_header, v14, v15, "devnode = %@", v91, 0xCu);
      }

      v13 = v34;
      *__error() = v13;
      v46 = parent;
      v60 = 0;
    }

    else
    {
      v31 = *__error();
      v30 = v65;
      v29 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v11 = v30;
        v12 = v29;
        sub_10000DC54(v28);
        _os_log_impl(&_mh_execute_header, v11, v12, "not whole disk node", v28, 2u);
      }

      v10 = v31;
      *__error() = v10;
      v60 = 35;
      v46 = parent;
      ParentEntry = IORegistryEntryGetParentEntry(parent, "IOService", &parent);
      if (ParentEntry == -536870208)
      {
        v27 = *__error();
        v26 = v65;
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v8 = v26;
          v9 = v25;
          sub_10000DC54(v24);
          _os_log_impl(&_mh_execute_header, v8, v9, "found root node, stopping", v24, 2u);
        }

        v7 = v27;
        *__error() = v7;
        v60 = 2;
      }

      else if (ParentEntry)
      {
        v23 = *__error();
        v22 = v65;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000013C8(v90, ParentEntry);
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", v90, 8u);
        }

        *__error() = v23;
        v60 = 83;
      }
    }

    sub_100006B40(&v45);
    sub_10000B3D8(&v46);
  }

  while (v60 == 35);
  if (!v60)
  {
    if (v63)
    {
      *v63 = v52;
    }

    *v62 = v55;
    *v61 = v53;
  }

  v6 = v60;
  sub_10000B3D8(&v57);
  return v6;
}

uint64_t sub_10000C09C(unsigned int *a1, int a2, unsigned int *a3)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = -1;
  v32 = *a1;
  v31 = -1;
  v30 = os_log_create("com.apple.libcryptex", "hdi");
  if (!*(v34 + 261))
  {
    *(v34 + 261) = v30;
  }

  v38 = *v34;
  if ((v38 & 0x80000000) == 0)
  {
    v33 = sub_10000C930(v32, v35, v34);
    if (v33)
    {
      v29 = *__error();
      v28 = *(v34 + 261);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v47, v33);
        _os_log_impl(&_mh_execute_header, v28, type, "hdi_mount_slow: %{darwin.errno}d", v47, 8u);
      }

      *__error() = v29;
      goto LABEL_35;
    }

    v26 = *__error();
    v25 = *(v34 + 261);
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v46, v34 + 1057);
      _os_log_impl(&_mh_execute_header, v25, v24, "attached as: %s", v46, 0xCu);
    }

    *__error() = v26;
    v31 = v34[1];
  }

  if (!*(v34 + 3))
  {
    v33 = 22;
    v23 = *__error();
    v22 = *(v34 + 261);
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v45, v33);
      _os_log_impl(&_mh_execute_header, v22, v21, "FS type not specified: %{darwin.errno}d", v45, 8u);
    }

    *__error() = v23;
    goto LABEL_35;
  }

  if (!strcmp(*(v34 + 3), "hfs"))
  {
    v33 = sub_10000CC58(v32, v35, v34);
    if (v33)
    {
      v20 = *__error();
      oslog = *(v34 + 261);
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v44, v33);
        _os_log_impl(&_mh_execute_header, oslog, v18, "mount hfs failed: %{darwin.errno}d", v44, 8u);
      }

      *__error() = v20;
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (!strcmp(*(v34 + 3), "apfs"))
  {
    v33 = sub_10000D680(v32, v35, v34);
    if (!v33)
    {
LABEL_30:
      v11 = close(v32);
      if (v11 == -1)
      {
        v10 = 0;
        memset(__b, 0, sizeof(__b));
        v9 = 3;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v9 = 2;
        }

        v3 = __error();
        sub_1000013C8(v40, *v3);
        _os_log_send_and_compose_impl(v9, &v10, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(scope_fd) -> %{errno}d", v40, 8);
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10000C77CLL);
      }

      *v36 = -1;
      v33 = 0;
      goto LABEL_35;
    }

    v17 = *__error();
    v16 = *(v34 + 261);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v43, v33);
      _os_log_impl(&_mh_execute_header, v16, v15, "mount apfs failed: %{darwin.errno}d", v43, 8u);
    }

    *__error() = v17;
  }

  else
  {
    v33 = 22;
    v14 = *__error();
    v13 = *(v34 + 261);
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v42, *(v34 + 3), v33);
      _os_log_impl(&_mh_execute_header, v13, v12, "Invalid FS type: %s: %{darwin.errno}d", v42, 0x12u);
    }

    *__error() = v14;
  }

LABEL_35:
  if (v33)
  {
    v37 = v31;
    if ((v31 & 0x80000000) == 0)
    {
      if (ioctl(v31, 0x20006415uLL))
      {
        v8 = *__error();
        v7 = *(v34 + 261);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          sub_1000013C8(v39, *v4);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to clean up device: %{darwin.errno}d", v39, 8u);
        }

        *__error() = v8;
      }

      *(v34 + 33) = 0;
      *(v34 + 1057) = 0;
      v34[1] = -1;
    }
  }

  if (*(v34 + 261) == v30)
  {
    *(v34 + 261) = 0;
  }

  v6 = v33;
  sub_1000030D0(&v30);
  return v6;
}

uint64_t sub_10000C930(int a1, int a2, unsigned int *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = 0;
  bzero(v22, 0x400uLL);
  v14 = sub_100009F44(v15, &v13);
  if (v14)
  {
    v12 = *__error();
    oslog = *(v15 + 261);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v21, v14);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "attach failed: %{darwin.errno}d", v21, 8u);
    }

    *__error() = v12;
  }

  else
  {
    v14 = sub_10000AD54(v15, v13, v15 + 3, v22, v15 + 1057);
    if (v14)
    {
      v10 = *__error();
      v9 = *(v15 + 261);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v20, v14);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "could not find attached media: %{darwin.errno}d", v20, 8u);
      }

      *__error() = v10;
    }

    else
    {
      v3 = open(v22, 0);
      v15[1] = v3;
      v18 = v15[1];
      if ((v18 & 0x80000000) != 0)
      {
        v8 = *__error();
        v7 = *(v15 + 261);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          sub_1000013C8(v19, *v4);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "open: %{darwin.errno}d", v19, 8u);
        }

        *__error() = v8;
        v14 = *__error();
      }

      else
      {
        __strlcpy_chk();
        v14 = 0;
      }
    }
  }

  v6 = v14;
  sub_100006B40(&v13);
  return v6;
}

uint64_t sub_10000CC58(int a1, int a2, uint64_t a3)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = -1;
  v32 = -1;
  bzero(v57, 0x400uLL);
  memset(__b, 0, sizeof(__b));
  __b[0] = v34 + 1057;
  LODWORD(__b[1]) = getuid();
  HIDWORD(__b[1]) = getgid();
  LOWORD(__b[2]) = 511;
  HIDWORD(__b[2]) = 0;
  __b[3] = 0;
  __b[4] = 4;
  __b[5] = 0;
  v35 |= 0x100001u;
  v30 = *__error();
  v29 = *(v34 + 2088);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_100003120(v56, v34 + 1057);
    _os_log_impl(&_mh_execute_header, v29, type, "mounting device = %s", v56, 0xCu);
  }

  *__error() = v30;
  if (os_log_type_enabled(*(v34 + 2088), OS_LOG_TYPE_DEBUG))
  {
    v33 = realpath_np();
    if (!v33)
    {
      v27 = *__error();
      oslog = *(v34 + 2088);
      v25 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v55, v57);
        _os_log_impl(&_mh_execute_header, oslog, v25, "mount point = %s", v55, 0xCu);
      }

      *__error() = v27;
    }
  }

  v32 = gettimeofday(0, &__b[3]);
  v24 = v32;
  if (v32 == -1)
  {
    v23 = 0;
    memset(v54, 0, sizeof(v54));
    v22 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = 2;
    }

    v3 = *__error();
    sub_1000013C8(v53, v3);
    _os_log_send_and_compose_impl(v22, &v23, v54, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: ret -> %{errno}d", v53, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000CFE0);
  }

  v33 = sub_10000DC70(v34, (v34 + 1057), &__b[2] + 1);
  if (v33)
  {
    v21 = *__error();
    v20 = *(v34 + 2088);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v52, v33);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "could not get encoding: %{darwin.errno}d", v52, 8u);
    }

    *__error() = v21;
  }

  else
  {
    v19 = *__error();
    v18 = *(v34 + 2088);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E0C4(v51, *(v34 + 24), v36, v35);
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "mount args: fs = %s, fd = %d, flags = %#x", v51, 0x18u);
    }

    *__error() = v19;
    v49 = *(v34 + 2088);
    v48 = "mntfd";
    v47 = v36;
    v46 = 0;
    bzero(v60, 0x400uLL);
    memset(&v45, 0, sizeof(v45));
    v44 = -1;
    v43 = 0;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v44 = fstat(v47, &v45);
      if (v44 == -1)
      {
        v42 = *__error();
        v41 = v49;
        v40 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v14 = v41;
          v15 = v40;
          v12 = v48;
          v13 = v47;
          v4 = *__error();
          sub_10000E0C4(v59, v12, v13, v4);
          _os_log_impl(&_mh_execute_header, v14, v15, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v59, 0x18u);
        }

        v11 = v42;
        *__error() = v11;
      }

      else
      {
        v44 = fcntl(v47, 50, v60);
        if (v44)
        {
          v5 = __error();
          v6 = strerror(*v5);
          __snprintf_chk(v60, 0x400uLL, 0, 0x400uLL, "[%s]", v6);
        }

        switch(v45.st_mode & 0xF000)
        {
          case 24576:
            v46 = "S_IFBLK";
            break;
          case 8192:
            v46 = "S_IFCHR";
            break;
          case 16384:
            v46 = "S_IFDIR";
            break;
          case 4096:
            v46 = "S_IFIFO";
            break;
          case 32768:
            v46 = "S_IFREG";
            break;
          case 40960:
            v46 = "S_IFLNK";
            break;
          case 49152:
            v46 = "S_IFSOCK";
            break;
          default:
            v46 = "[unknown]";
            break;
        }

        v43 = os_flagset_copy_string();
        v39 = *__error();
        v38 = v49;
        v37 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v9 = v38;
          v10 = v37;
          sub_10000EBF8(v58, v48, v47, v46, v45.st_size, v43, v60);
          _os_log_impl(&_mh_execute_header, v9, v10, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v58, 0x3Au);
        }

        v8 = v39;
        *__error() = v8;
        free(v43);
      }
    }

    v32 = fmount("hfs", v36, v35, __b);
    if (v32)
    {
      v33 = *__error();
      v17 = *__error();
      v16 = *(v34 + 2088);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v50, v33);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", v50, 8u);
      }

      *__error() = v17;
    }

    else
    {
      return 0;
    }
  }

  return v33;
}

uint64_t sub_10000D680(int a1, int a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v22 = -1;
  bzero(&v32, 0x14CuLL);
  v21 = *(v24 + 2108);
  v20 = *(v24 + 2100);
  v19 = *(v24 + 2104);
  v18 = *(v24 + 2112);
  memset(__b, 0, sizeof(__b));
  memset(v16, 0, sizeof(v16));
  v25 |= 0x100000u;
  if ((*(v24 + 32) & 1) == 0)
  {
    v25 |= 1u;
  }

  v32 = v24 + 1057;
  v41 = getuid();
  v42 = getgid();
  v34 = 1;
  v33 = v25;
  if (*(v24 + 2096))
  {
    v23 = sub_10004B524(v21, __b);
    if (v23)
    {
      v15 = *__error();
      oslog = *(v24 + 2088);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v31, v23);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to read im4m.: %{darwin.errno}d", v31, 8u);
      }

      *__error() = v15;
      goto LABEL_21;
    }

    v23 = sub_10004B524(v20, v16);
    if (v23)
    {
      v13 = *__error();
      v12 = *(v24 + 2088);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v30, v23);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to read root volume hash.: %{darwin.errno}d", v30, 8u);
      }

      *__error() = v13;
      goto LABEL_21;
    }

    v11 = *__error();
    v10 = *(v24 + 2088);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100003098(v29, __b[1]);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "im4m len: %lu", v29, 0xCu);
    }

    *__error() = v11;
    v9 = *__error();
    v8 = *(v24 + 2088);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100003098(v28, v16[1]);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "im4p len: %lu", v28, 0xCu);
    }

    *__error() = v9;
    v34 = 8;
    v39 = v19;
    v40 = v18;
    v37 = __b[0];
    v38 = __b[1];
    v35 = v16[0];
    v36 = v16[1];
  }

  v22 = fmount("apfs", v26, v25, &v32);
  if (v22)
  {
    v23 = *__error();
    v7 = *__error();
    v6 = *(v24 + 2088);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v27, v23);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", v27, 8u);
    }

    *__error() = v7;
  }

LABEL_21:
  sub_10004C66C(__b, v3);
  sub_10004C66C(v16, v4);
  return v23;
}

uint64_t sub_10000DC04(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

_BYTE *sub_10000DC54(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_10000DC70(uint64_t a1, char *a2, _DWORD *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  bzero(__buf, 0x200uLL);
  v14 = 0;
  v13 = 0;
  v12 = -1;
  __fd = open(v17, 4);
  if (__fd < 0)
  {
    v15 = *__error();
  }

  else
  {
    v14 = pread(__fd, __buf, 0x200uLL, 1024);
    if ((v14 & 0x8000000000000000) != 0 || (v19 = v14, v14 < 0xA2))
    {
      v15 = 96;
    }

    else
    {
      v13 = __buf;
      __buf[0] = sub_10000E130(__buf[0]);
      v24 = sub_10000E130(v24);
      v23 = sub_10000E154(v23);
      if (__buf[0] == 18475 || *v13 == 18520)
      {
        if ((*(v13 + 27) & 0xFFFFFF00) == 0x656E6300)
        {
          v5 = *(v13 + 108);
        }

        else
        {
          v5 = -1;
        }

        v12 = v5;
        if (v5 == -1)
        {
          v12 = sub_10000E174();
          if (!v12 || v12 == -1)
          {
            v12 = sub_10000E4F4(v18);
          }
        }

        v15 = 79;
        for (i = 0; i < 0x26; ++i)
        {
          if (*&aArabic[24 * i + 16] == v12)
          {
            v15 = 0;
            break;
          }
        }

        if (v15 == 79)
        {
          v7 = *__error();
          v6 = *(v18 + 2088);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1000013C8(v20, v12);
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unsupported encoding: %u", v20, 8u);
          }

          *__error() = v7;
        }

        else
        {
          *v16 = v12;
        }
      }

      else
      {
        v9 = *__error();
        oslog = *(v18 + 2088);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100009EF8(v21, *v13, v13[62]);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "filesystem unsupported or corrupt: drSigWord = %#hx, drEmbedSigWord = %#hx", v21, 0xEu);
        }

        *__error() = v9;
        v15 = 92;
      }
    }
  }

  v4 = v15;
  sub_1000038DC(&__fd);
  return v4;
}

uint64_t sub_10000E0C4(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_10000E174()
{
  *v23 = 3;
  v24 = 1;
  memset(&__b, 0, sizeof(__b));
  v16 = -1;
  v15 = 4;
  v17 = getvfsbyname("hfs", &__b);
  v14 = v17;
  if (v17 == -1)
  {
    v13 = 0;
    memset(v21, 0, sizeof(v21));
    v11 = 0;
    v10 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 &= ~1u;
    }

    if (v10)
    {
      v0 = __error();
      sub_1000013C8(v20, *v0);
      v11 = _os_log_send_and_compose_impl(v10, &v13, v21, 80, &_mh_execute_header, oslog, type, "assertion failure: ret -> %{errno}d", v20, 8);
    }

    v7 = v11;
    v12 = v11;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000E310);
  }

  v23[1] = __b.vfc_typenum;
  *v6 = 3;
  v17 = sysctl(v23, 3u, &v16, &v15, 0, 0);
  if ((v17 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v2 = *__error();
  if (v2)
  {
    if (v2 != 45)
    {
      v5 = *__error();
      if (v5)
      {
        v4 = 0;
        memset(v19, 0, sizeof(v19));
        v3 = 3;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v3 = 2;
        }

        sub_100003098(v18, v5);
        _os_log_send_and_compose_impl(v3, &v4, v19, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: (*__error()) -> %llu", v18);
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10000E4ACLL);
      }
    }
  }

  return v16;
}

uint64_t sub_10000E4F4(uint64_t a1)
{
  v38 = a1;
  v37 = 0;
  bzero(__str, 0x400uLL);
  v35 = -1;
  v34 = -1;
  v36 = getpwuid(0);
  if (!v36)
  {
    v33 = 0;
    memset(__b, 0, sizeof(__b));
    v31 = 0;
    v30 = 3;
    v29 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v30 &= ~1u;
    }

    if (v30)
    {
      v1 = __error();
      sub_1000013C8(v44, *v1);
      v31 = _os_log_send_and_compose_impl(v30, &v33, __b, 80, &_mh_execute_header, v29, type, "unexpected failure: getpwuid: %{darwin.errno}d", v44, 8);
    }

    v27 = v31;
    v32 = v31;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000E690);
  }

  __snprintf_chk(__str, 0x400uLL, 0, 0x400uLL, "%s/%s", v36->pw_dir, "/.CFUserTextEncoding");
  v35 = open(__str, 0);
  if ((v35 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v8 = *__error();
  if (v8)
  {
    if (v8 == 2 || v8 == 4 || v8 == 13)
    {
      goto LABEL_33;
    }

    v26 = *__error();
    if (v26)
    {
      v25 = 0;
      memset(v43, 0, sizeof(v43));
      v23 = 0;
      v22 = 3;
      oslog = &_os_log_default;
      v20 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v22 &= ~1u;
      }

      if (v22)
      {
        sub_100003098(v42, v26);
        v23 = _os_log_send_and_compose_impl(v22, &v25, v43, 80, &_mh_execute_header, oslog, v20, "assertion failure: (*__error()) -> %llu", v42);
      }

      v19 = v23;
      v24 = v23;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000E890);
    }
  }

  v34 = read(v35, __str, 0x400uLL);
  if (v34)
  {
    if (v34 < 0)
    {
      v14 = *__error();
      v13 = *(v38 + 2088);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        sub_1000013C8(v41, *v2);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "error reading encoding file: %{darwin.errno}d", v41, 8u);
      }

      *__error() = v14;
    }

    else
    {
      __str[v34] = 0;
      v12 = *__error();
      v11 = *(v38 + 2088);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v40, __str);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "read encoding: %s", v40, 0xCu);
      }

      *__error() = v12;
      v37 = strtol(__str, 0, 0);
    }
  }

  else
  {
    v18 = *__error();
    v17 = *(v38 + 2088);
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      v7 = v16;
      sub_10000DC54(v15);
      _os_log_impl(&_mh_execute_header, log, v7, "encoding file empty", v15, 2u);
    }

    v5 = v18;
    *__error() = v5;
  }

LABEL_33:
  v10 = *__error();
  v9 = *(v38 + 2088);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000013C8(v39, v37);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "returning encoding: %u", v39, 8u);
  }

  *__error() = v10;
  v4 = v37;
  sub_1000038DC(&v35);
  return v4;
}

uint64_t sub_10000EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 32;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 32;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t sub_10000ECA0(uint64_t a1, int a2, char *const *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = a3;
  v12 = -1;
  v11 = 0;
  __endptr = 0;
  v8 = 0u;
  v9 = 0u;
  sub_1000480E0();
  while (1)
  {
    v12 = getopt_long(v16, v13, *(v17 + 32), *(v17 + 40), &v11);
    if (v12 == -1)
    {
      break;
    }

    v7 = (*(v17 + 40) + 32 * v11);
    v6 = v15[optind - 1];
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
      JUMPOUT(0x10000EE84);
    }

    switch(v12)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'c':
        DWORD2(v9) = strtoul(optarg, &__endptr, 0);
        if (!DWORD2(v9) && __endptr == optarg)
        {
          errx(64, "Invalid nonce domain provided.");
        }

        *&v9 = img4_nonce_domain_get_from_handle();
        break;
      case 'd':
        if (!strcmp(optarg, "pdi"))
        {
          *&v9 = &_img4_nonce_domain_pdi;
        }

        else if (!strcmp(optarg, "research"))
        {
          *&v9 = &_img4_nonce_domain_cryptex;
        }

        else if (!strcmp(optarg, "diavlo"))
        {
          *&v9 = &_img4_nonce_domain_pdi;
        }

        else
        {
          if (strcmp(optarg, "ddi"))
          {
            errx(64, "invalid nonce domain: %s", optarg);
          }

          *&v9 = &_img4_nonce_domain_ddi;
        }

        break;
      case 'g':
        *&v8 = v8 | 2;
        break;
      case 'r':
        *&v8 = v8 | 1;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000F0BCLL);
    }
  }

  v15 += optind;
  v16 -= optind;
  if ((v8 & 2) == 0)
  {
    if (v16 < 1)
    {
      errx(64, "a cryptex identifier must be provided");
    }

    sub_10004860C(0, 1uLL, "using cryptex identifier: %s", *(&v8 + 1));
    *(&v8 + 1) = v15[1];
  }

  if (!v9)
  {
    errx(64, "a valid nonce domain is required, must be provided through either the domain or cryptex1-ndom argument.");
  }

  v14 = sub_10000F1B4(&v8);
  return sysexit_np();
}

uint64_t sub_10000F1B4(void *a1)
{
  if ((*a1 & 2) != 0)
  {
    sub_10004860C(0, 1uLL, "operating on global nonce");
    v2 = sub_10000F260(a1);
  }

  else
  {
    v2 = 78;
    warnx("individual cryptex nonces not yet implemented");
  }

  if (v2 == 45)
  {
    warnx("nonce management is not available on this platform");
  }

  return v2;
}

uint64_t sub_10000F260(void *a1)
{
  if (*a1)
  {
    v2 = img4_nonce_domain_roll_nonce();
    if (v2)
    {
      if (v2 == 45)
      {
        warnx("nonce management not supported on this platform");
      }

      else
      {
        warnc(v2, "failed to roll nonce");
      }
    }

    else
    {
      sub_10004860C(0, 1uLL, "nonce has been rolled; new value will not be generated until next boot");
    }
  }

  else
  {
    memset(__str, 0, sizeof(__str));
    v2 = img4_nonce_domain_copy_nonce();
    if (v2)
    {
      if (v2 == 45)
      {
        warnx("nonce management not supported on this platform");
      }

      else if (v2 == 70)
      {
        warnx("nonce has been rolled; new value will not be available until next reboot");
      }

      else
      {
        warnc(v2, "failed to copy nonce");
      }
    }

    else
    {
      sub_100049764(__str, &__str[99], *&__str[149]);
      sub_10004860C(__stdoutp, 0, "%s", __str);
    }
  }

  return v2;
}

CFErrorRef sub_10000F434(int a1, int a2, NSObject *a3)
{
  v135 = a1;
  v134 = a2;
  v133 = a3;
  v132 = 0;
  v131 = -1;
  MatchingService = 0;
  v129 = 0;
  v128 = -536870212;
  v127 = 0;
  memset(v126, 0, sizeof(v126));
  v125 = 0;
  memset(v124, 0, sizeof(v124));
  v123 = 5;
  v122 = 16;
  v121 = -1;
  v120 = 0;
  memset(v119, 0, sizeof(v119));
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  if (!a3)
  {
    v116 = os_log_create("com.apple.libcryptex", "amfi");
    v133 = v116;
  }

  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(0, v3);
  if (MatchingService)
  {
    v131 = sub_10004B524(v134, v124);
    if (v131)
    {
      v99 = 0;
      v98 = v131;
      if (v133)
      {
        v97 = 0;
        v96 = 3;
        v95 = v133;
        v94 = 16;
        if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          v96 &= ~1u;
        }

        if (v96)
        {
          sub_1000013C8(v164, v131);
          v93 = _os_log_send_and_compose_impl(v96, 0, 0, 0, &_mh_execute_header, v95, v94, "failed to read im4m %{darwin.errno}d", v164, 8);
          v97 = v93;
        }

        v92 = v97;
        v99 = v97;
      }

      else
      {
        v91 = 0;
        v90 = 2;
        v89 = &_os_log_default;
        v88 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v90 &= ~1u;
        }

        if (v90)
        {
          sub_1000013C8(v163, v131);
          v87 = _os_log_send_and_compose_impl(v90, 0, 0, 0, &_mh_execute_header, v89, v88, "failed to read im4m %{darwin.errno}d", v163, 8);
          v91 = v87;
        }

        v86 = v91;
        v99 = v91;
      }

      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
      {
        v18 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
      }

      v85 = sub_1000185D8("_amfi_load_trust_cache", v18, 48, "com.apple.security.cryptex.posix", v98, 0, v99);
      sub_100002DE4(&v99);
      v132 = v85;
    }

    else
    {
      v131 = sub_10004B524(v135, v126);
      if (v131)
      {
        v84 = 0;
        v83 = v131;
        if (v133)
        {
          v82 = 0;
          v81 = 3;
          v80 = v133;
          v79 = 16;
          if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v81 &= ~1u;
          }

          if (v81)
          {
            sub_1000013C8(v162, v131);
            v78 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &_mh_execute_header, v80, v79, "failed to read trust cache %{darwin.errno}d", v162, 8);
            v82 = v78;
          }

          v77 = v82;
          v84 = v82;
        }

        else
        {
          v76 = 0;
          v75 = 2;
          v74 = &_os_log_default;
          v73 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v75 &= ~1u;
          }

          if (v75)
          {
            sub_1000013C8(v161, v131);
            v72 = _os_log_send_and_compose_impl(v75, 0, 0, 0, &_mh_execute_header, v74, v73, "failed to read trust cache %{darwin.errno}d", v161, 8);
            v76 = v72;
          }

          v71 = v76;
          v84 = v76;
        }

        if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
        {
          v17 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
        }

        else
        {
          v17 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
        }

        v70 = sub_1000185D8("_amfi_load_trust_cache", v17, 54, "com.apple.security.cryptex.posix", v83, 0, v84);
        sub_100002DE4(&v84);
        v132 = v70;
      }

      else
      {
        v128 = IOServiceOpen(MatchingService, mach_task_self_, 0, &v129);
        if (v128)
        {
          v69 = 0;
          v68 = 34;
          if (v133)
          {
            v67 = 0;
            v66 = 3;
            v65 = v133;
            v64 = 16;
            if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v66 &= ~1u;
            }

            if (v66)
            {
              sub_1000013C8(v160, v128);
              v63 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, v65, v64, "IOServiceOpen: %#x", v160);
              v67 = v63;
            }

            v62 = v67;
            v69 = v67;
          }

          else
          {
            v61 = 0;
            v60 = 2;
            v59 = &_os_log_default;
            v58 = 16;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v60 &= ~1u;
            }

            if (v60)
            {
              sub_1000013C8(v159, v128);
              v57 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &_mh_execute_header, v59, v58, "IOServiceOpen: %#x", v159);
              v61 = v57;
            }

            v56 = v61;
            v69 = v61;
          }

          if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
          {
            v16 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
          }

          else
          {
            v16 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
          }

          v55 = sub_1000185D8("_amfi_load_trust_cache", v16, 60, "com.apple.security.cryptex", v68, 0, v69);
          sub_100002DE4(&v69);
          v132 = v55;
        }

        else
        {
          v122 += *(&v124[0] + 1) + *(&v126[0] + 1);
          v121 = mmap(0, v122, 3, 4098, -1, 0);
          if (v121 == -1)
          {
            v131 = *__error();
            v54 = 0;
            v53 = v131;
            if (v133)
            {
              v52 = 0;
              v51 = 3;
              v50 = v133;
              v49 = 16;
              if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v51 &= ~1u;
              }

              if (v51)
              {
                sub_1000013C8(v158, v131);
                v48 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &_mh_execute_header, v50, v49, "mmap %{darwin.errno}d", v158, 8);
                v52 = v48;
              }

              v47 = v52;
              v54 = v52;
            }

            else
            {
              v46 = 0;
              v45 = 2;
              v44 = &_os_log_default;
              v43 = 16;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v45 &= ~1u;
              }

              if (v45)
              {
                sub_1000013C8(v157, v131);
                v42 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v44, v43, "mmap %{darwin.errno}d", v157, 8);
                v46 = v42;
              }

              v41 = v46;
              v54 = v46;
            }

            if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
            {
              v15 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
            }

            else
            {
              v15 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
            }

            v40 = sub_1000185D8("_amfi_load_trust_cache", v15, 76, "com.apple.security.cryptex.posix", v53, 0, v54);
            sub_100002DE4(&v54);
            v132 = v40;
          }

          else
          {
            *v121 = *(&v124[0] + 1);
            *(v121 + 8) = *(&v126[0] + 1);
            sub_10004C358(v119, 0, sub_10004C2F8, v121, v122);
            v118 = sub_10004C5C0(v119, "rw", 0x10uLL);
            v117 = fwrite(*&v124[0], *(&v124[0] + 1), 1uLL, v118);
            v39 = fcheck_np();
            if (v39)
            {
              v38 = 0;
              memset(v156, 0, sizeof(v156));
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
                sub_100003098(v155, v39);
                v36 = _os_log_send_and_compose_impl(v35, &v38, v156, 80, &_mh_execute_header, v34, v33, "assertion failure: fcheck_np(cursor, fr, 1) -> %llu", v155);
              }

              v32 = v36;
              v37 = v36;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100010864);
            }

            v117 = fwrite(*&v126[0], *(&v126[0] + 1), 1uLL, v118);
            v31 = fcheck_np();
            if (v31)
            {
              v30 = 0;
              memset(v154, 0, sizeof(v154));
              v28 = 0;
              v27 = 3;
              v26 = &_os_log_default;
              v25 = 16;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v27 &= ~1u;
              }

              if (v27)
              {
                sub_100003098(v153, v31);
                v28 = _os_log_send_and_compose_impl(v27, &v30, v154, 80, &_mh_execute_header, v26, v25, "assertion failure: fcheck_np(cursor, fr, 1) -> %llu", v153);
              }

              v24[1] = v28;
              v29 = v28;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x1000109B8);
            }

            v123 = IOConnectCallMethod(v129, 7u, 0, 0, v121, v122, 0, 0, 0, 0);
            if (v123)
            {
              v131 = sub_1000372A8(v123);
              v24[0] = 0;
              v23 = v131;
              if (v133)
              {
                v22 = 3;
                v21 = v133;
                if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                {
                  v22 = 2;
                }

                sub_100009EF8(v152, v123, v131);
                LODWORD(outputStructCnt) = 14;
                v24[0] = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v21, 16, "load trust cache: %#x %{darwin.errno}d", v152, outputStructCnt);
              }

              else
              {
                os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                sub_100009EF8(v151, v123, v131);
                LODWORD(outputStructCnt) = 14;
                v24[0] = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "load trust cache: %#x %{darwin.errno}d", v151, outputStructCnt);
              }

              if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
              {
                v14 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
              }

              else
              {
                v14 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
              }

              v20 = sub_1000185D8("_amfi_load_trust_cache", v14, 106, "com.apple.security.cryptex.posix", v23, 0, v24[0]);
              sub_100002DE4(v24);
              v132 = v20;
            }
          }
        }
      }
    }
  }

  else
  {
    v131 = 78;
    v114 = 0;
    v113 = 78;
    if (v133)
    {
      v112 = 0;
      v111 = 3;
      v110 = v133;
      v109 = 16;
      if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        v111 &= ~1u;
      }

      if (v111)
      {
        sub_1000013C8(v166, v131);
        v108 = _os_log_send_and_compose_impl(v111, 0, 0, 0, &_mh_execute_header, v110, v109, "could not find AppleMobileFileIntegrity %{darwin.errno}d", v166, 8);
        v112 = v108;
      }

      v107 = v112;
      v114 = v112;
    }

    else
    {
      v106 = 0;
      v105 = 2;
      v104 = &_os_log_default;
      v103 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v105 &= ~1u;
      }

      if (v105)
      {
        sub_1000013C8(v165, v131);
        v102 = _os_log_send_and_compose_impl(v105, 0, 0, 0, &_mh_execute_header, v104, v103, "could not find AppleMobileFileIntegrity %{darwin.errno}d", v165, 8);
        v106 = v102;
      }

      v101 = v106;
      v114 = v106;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
    {
      v19 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
    }

    v100 = sub_1000185D8("_amfi_load_trust_cache", v19, 42, "com.apple.security.cryptex.posix", v113, 0, v114);
    sub_100002DE4(&v114);
    v132 = v100;
  }

  if (!v128)
  {
    v145 = v129;
    v144 = 5;
    if (v129)
    {
      v144 = IOServiceClose(v145);
      if (v144)
      {
        v143 = 0;
        memset(v168, 0, sizeof(v168));
        v141 = 0;
        v140 = 3;
        v139 = &_os_log_default;
        v138 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v140 &= ~1u;
        }

        if (v140)
        {
          v11 = v140;
          v12 = v139;
          v13 = v138;
          sub_1000013C8(v167, v144);
          LODWORD(outputStructCnt) = 8;
          v137 = _os_log_send_and_compose_impl(v11, &v143, v168, 80, &_mh_execute_header, v12, v13, "unexpected failure: IOServiceClose: %{mach.errno}d", v167, outputStructCnt);
          v141 = v137;
        }

        v136 = v141;
        v142 = v141;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100010EC8);
      }
    }

    v147 = MatchingService;
    v148 = MatchingService;
    v149 = MatchingService;
    v146 = MatchingService;
    v150 = MatchingService;
    v10 = 0;
    if (MatchingService)
    {
      v10 = v150 != -1;
    }

    if (v10)
    {
      mach_right_send_release();
    }
  }

  sub_10004C66C(v119, v4);
  sub_10004C66C(v126, v5);
  sub_10004C66C(v124, v6);
  v9 = v132;
  sub_100002DE4(&v115);
  sub_1000030D0(&v116);
  sub_100010FB4(&v118);
  return v9;
}

int *sub_100010FB4(int *result)
{
  v6 = result;
  v5 = *result;
  v4 = -1;
  if (v5)
  {
    result = fclose(v5);
    v4 = result;
    if (result == -1)
    {
      result = __error();
      v3 = *result;
      if (v3)
      {
        v2 = 0;
        memset(__b, 0, sizeof(__b));
        v1 = 3;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v1 = 2;
        }

        sub_100003098(v7, v3);
        _os_log_send_and_compose_impl(v1, &v2, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: (*__error()) -> %llu", v7);
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100011138);
      }
    }
  }

  return result;
}

char *sub_100011170(__n128 *a1, uint64_t a2)
{
  v6 = malloc_type_calloc(1uLL, 0x70uLL, 0x8709206FuLL);
  v13 = "known-constant allocation";
  v12 = v6;
  v11 = 112;
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
    JUMPOUT(0x100011324);
  }

  *(v6 + 3) = a2;
  sub_10004C42C((v6 + 40), a1);
  *(v6 + 12) = v6 + 40;
  sub_1000496F4(v6, "com.apple.security.cryptexctl", "dyld-cache");
  *(v6 + 13) = sub_1000216E4(*(v6 + 2));
  **(v6 + 13) |= 1uLL;
  return v6;
}

uint64_t sub_1000113E0(uint64_t a1)
{
  v25 = a1;
  v24 = -1;
  v23 = 0;
  bzero(v34, 0x228uLL);
  v22 = 0;
  v21 = xmmword_10005B500;
  v32 = 0;
  v33 = 0;
  v23 = sub_10004C5C0(*(v25 + 96), "rb", 0);
  v22 = fread(v34, 0x228uLL, 1uLL, v23);
  v24 = sub_10004887C("dyld cache header", v23, 1, 0x5Cu, *(v25 + 16));
  if (!v24)
  {
    v32 = 0;
    v33 = 0;
    __strlcpy_chk();
    if (strstr(v34, "AotCache") == v34)
    {
      v24 = 45;
      v20 = *v25;
      if (!*v25)
      {
        v20 = "[anonymous]";
      }

      v19 = *__error();
      v18 = *(v25 + 16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v31, v20, v24);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: aot shared cache not yet supported: %{darwin.errno}d", v31, 0x12u);
      }

      *__error() = v19;
    }

    else if (strstr(v34, "dyld_v") == v34)
    {
      v14 = *v25;
      if (!*v25)
      {
        v14 = "[anonymous]";
      }

      v13 = *__error();
      oslog = *(v25 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100011BEC(v29, v14, &v32);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.magic: %s", v29, 0x16u);
      }

      *__error() = v13;
      v11 = *v25;
      if (!*v25)
      {
        v11 = "[anonymous]";
      }

      v10 = *__error();
      v9 = *(v25 + 16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v28, v11, v35);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.codeSignatureOffset: %#llx", v28, 0x16u);
      }

      *__error() = v10;
      v8 = *v25;
      if (!*v25)
      {
        v8 = "[anonymous]";
      }

      v7 = *__error();
      v6 = *(v25 + 16);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v27, v8, v36);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.codeSignatureSize: %#llx", v27, 0x16u);
      }

      *__error() = v7;
      if (v35 > 0xFFFFFFFF || v36 > 0xFFFFFFFF)
      {
        v24 = 84;
        v5 = *v25;
        if (!*v25)
        {
          v5 = "[anonymous]";
        }

        v4 = *__error();
        v3 = *(v25 + 16);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100011C90(v26, v5, v35, v36, v24);
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: bad code signature offset or size: offset = %llu, size = %llu: %{darwin.errno}d", v26, 0x26u);
        }

        *__error() = v4;
      }

      else
      {
        *(&v21 + 1) = __PAIR64__(v36, v35);
        v24 = sub_100021918(*(v25 + 104), 0, v23, &v21);
      }
    }

    else
    {
      v24 = 88;
      v17 = *v25;
      if (!*v25)
      {
        v17 = "[anonymous]";
      }

      v16 = *__error();
      v15 = *(v25 + 16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100011B7C(v30, v17, &v32, v24);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: not a dyld shared cache: %s: %{darwin.errno}d", v30, 0x1Cu);
      }

      *__error() = v16;
    }
  }

  v2 = v24;
  sub_100010FB4(&v23);
  return v2;
}

uint64_t sub_100011B7C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
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

uint64_t sub_100011BEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100011C40(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100011C90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
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
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

void sub_100011D0C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    sub_10004C66C(*(v2 + 12), a2);
    sub_100049728(v2);
    sub_100023DE0(v2 + 13);
    free(v2);
    *a1 = 0;
  }
}

char *sub_100011D7C(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v7 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x8709206FuLL);
  v15 = "known-constant allocation";
  v14 = v7;
  v13 = 432;
  if (!v7)
  {
    v12 = 0;
    memset(__b, 0, sizeof(__b));
    v11 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = 2;
    }

    v3 = __error();
    v4 = strerror(*v3);
    sub_1000031B0(v16, v15, v13, v4);
    _os_log_send_and_compose_impl(v11, &v12, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v16, 32, v6);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100011F34);
  }

  *(v7 + 3) = a3;
  *(v7 + 4) = a1;
  if (a2)
  {
    *(v7 + 20) = *a2;
  }

  else
  {
    v7[40] = 0;
    v7[41] = -1;
  }

  sub_1000493EC(v7 + 120);
  *(v7 + 11) = 0;
  *(v7 + 12) = v7 + 88;
  *(v7 + 13) = 0;
  *(v7 + 14) = v7 + 104;
  uuid_generate(v7 + 72);
  sub_1000496F4(v7, "com.apple.security.cryptexctl", "trust-cache");
  return v7;
}

uint64_t sub_100012044(const char **a1, char *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v51 = a1;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = 0;
  v46 = 0;
  v62[0] = a2;
  v62[1] = 0;
  v45 = 85;
  v44 = *a1;
  if (!v44)
  {
    v44 = "[anonymous]";
  }

  v43 = *__error();
  oslog = v51[2];
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100011BEC(v61, v44, v50);
    _os_log_impl(&_mh_execute_header, oslog, type, "%{public}s: building trust cache from: %s", v61, 0x16u);
  }

  *__error() = v43;
  v47 = fts_open(v62, 85, 0);
  if (!v47)
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
      v4 = __error();
      sub_1000013C8(v59, *v4);
      v38 = _os_log_send_and_compose_impl(v37, &v40, __b, 80, &_mh_execute_header, v36, v35, "unexpected failure: fts_open: %{darwin.errno}d", v59, 8);
    }

    v34 = v38;
    v39 = v38;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001228CLL);
  }

  while (1)
  {
    v46 = fts_read(v47);
    if (!v46)
    {
      break;
    }

    v33 = -1;
    bzero(v58, 0x400uLL);
    v32 = -1;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    if (v46->fts_info == 8)
    {
      __strlcpy_chk();
      v27 = *v51;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v26 = *__error();
      v25 = v51[2];
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100011BEC(v57, v27, v58);
        _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s: found regular file: %s", v57, 0x16u);
      }

      *__error() = v26;
      v32 = open(v47->fts_path, 0);
      if ((v32 & 0x80000000) == 0)
      {
        *__error() = 0;
      }

      if (*__error())
      {
        v33 = *__error();
        v23 = *v51;
        if (!v23)
        {
          v23 = "[anonymous]";
        }

        v22 = *__error();
        v21 = v51[2];
        v20 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100011B7C(v56, v23, v58, v33);
          _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s: open: %s: %{darwin.errno}d", v56, 0x1Cu);
        }

        *__error() = v22;
        v28 = 8;
      }

      else
      {
        v5 = sub_100012990(v51, v32, v46->fts_statp, v31);
        v33 = v5;
        if (v5)
        {
          v19 = *v51;
          if (!v19)
          {
            v19 = "[anonymous]";
          }

          v18 = *__error();
          v17 = v51[2];
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v55, v19, v33);
            _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s: failed to map file; skipping: %{darwin.errno}d", v55, 0x12u);
          }

          *__error() = v18;
          v28 = 8;
        }

        else
        {
          v30 = sub_10001C334(v31, 0);
          v33 = sub_10001C58C(v30);
          if (v33)
          {
            if (v33 == 79)
            {
              sub_10004C42C(v29, *(v30 + 14));
              sub_100012E20(v51, v29, v58, v50, v49, v48);
            }

            else if (v33 == 92)
            {
              sub_100013110(v51, v31, v58, v50, v49, v48);
            }

            else
            {
              v15 = *v51;
              if (!v15)
              {
                v15 = "[anonymous]";
              }

              v14 = *__error();
              v13 = v51[2];
              v12 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                sub_100011B7C(v54, v15, v58, v33);
                _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s: failed to init mach header: %s: %{darwin.errno}d", v54, 0x1Cu);
              }

              *__error() = v14;
              v48(v51, v58, 0, v33, v50, v49);
            }
          }

          else
          {
            sub_100012CCC(v51, &v30, v58, v50, v49, v48);
          }

          sub_10001E9CC(&v30, v6);
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 8;
    }

    sub_1000038DC(&v32);
  }

  result = fts_close(v47);
  v11 = result;
  if (result == -1)
  {
    v10 = 0;
    memset(v53, 0, sizeof(v53));
    v9 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 2;
    }

    v8 = __error();
    sub_1000013C8(v52, *v8);
    _os_log_send_and_compose_impl(v9, &v10, v53, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: fts_close(fts) -> %{errno}d", v52, 8);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001295CLL);
  }

  return result;
}

uint64_t sub_100012990(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = -1;
  v16 = -1;
  v22 = *(a3 + 96);
  if ((v22 & 0x8000000000000000) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100012A0CLL);
  }

  v15 = v22;
  v14 = 1;
  v13 = 1;
  v16 = mmap(0, v22, 1, 1, v20, 0);
  if (v16 == -1)
  {
    v17 = *__error();
    v12 = *v21;
    if (!v12)
    {
      v12 = "[anonymous]";
    }

    v11 = *__error();
    oslog = *(v21 + 16);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v25, v12, v17);
      _os_log_impl(&_mh_execute_header, oslog, type, "%{public}s: mmap: %{darwin.errno}d", v25, 0x12u);
    }

    *__error() = v11;
  }

  else
  {
    sub_10004C358(v18, 0, sub_10004C2F8, v16, v15);
    v16 = -1;
    v17 = 0;
  }

  if (v16 != -1)
  {
    v8 = munmap(v16, v15);
    if (v8 == -1)
    {
      v7 = 0;
      memset(__b, 0, sizeof(__b));
      v6 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 2;
      }

      v4 = __error();
      sub_1000013C8(v23, *v4);
      _os_log_send_and_compose_impl(v6, &v7, __b, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: munmap(p, size) -> %{errno}d", v23, 8);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100012C88);
    }
  }

  return v17;
}

uint64_t sub_100012CCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = -1;
  v10 = *a2;
  i = 0;
  v8 = 0;
  result = sub_10001D244(v10);
  v11 = result;
  if (!result)
  {
    for (i = *(v10 + 40); ; i = v8)
    {
      v7 = 0;
      if (i)
      {
        v8 = *(i + 8);
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

      result = sub_1000149F8(v17, &i);
    }

    *(v10 + 24) = 0;
    **(v17 + 96) = v10;
    *(v17 + 96) = v10 + 24;
    *v16 = 0;
    v11 = 0;
  }

  if (v12)
  {
    if (v11)
    {
      v10 = 0;
    }

    return v12(v17, v15, v10, v11, v14, v13);
  }

  return result;
}

void sub_100012E20(const char **a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v16 = 0;
  v15 = 0;
  v17 = sub_1000423F4(a2, 0);
  v18 = sub_10004263C(v17);
  if (v18)
  {
    v14 = *v24;
    if (!*v24)
    {
      v14 = "[anonymous]";
    }

    v13 = *__error();
    oslog = v24[2];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v26, v14, v18);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: failed to init fat header: %{darwin.errno}d", v26, 0x12u);
    }

    *__error() = v13;
  }

  else
  {
    while (1)
    {
      v16 = sub_100042B70(v17, v15);
      if (!v16)
      {
        break;
      }

      v11 = v16;
      v18 = sub_10001C58C(v16);
      if (v18)
      {
        v10 = *v24;
        if (!*v24)
        {
          v10 = "[anonymous]";
        }

        v9 = *__error();
        v8 = v24[2];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v25, v10, v18);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: failed to init mach object header: %{darwin.errno}d", v25, 0x12u);
        }

        *__error() = v9;
      }

      else
      {
        sub_100012CCC(v24, &v16, v22, v21, v20, v19);
      }

      sub_100043B30(v17, v11);
      sub_10001E9CC(&v16, v7);
      ++v15;
    }
  }

  sub_100043B68(&v17, v6);
}

void sub_100013110(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v13 = 0;
  v14 = sub_100011170(a2, 0);
  v15 = sub_1000113E0(v14);
  if (v15)
  {
    if (v15 == 88 || v15 == 92)
    {
      v12 = *v21;
      if (!*v21)
      {
        v12 = "[anonymous]";
      }

      v11 = *__error();
      oslog = *(v21 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v23, v12);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: not a shared cache", v23, 0xCu);
      }

      *__error() = v11;
    }

    else
    {
      v9 = *v21;
      if (!*v21)
      {
        v9 = "[anonymous]";
      }

      v8 = *__error();
      v7 = *(v21 + 16);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v22, v9, v15);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to read shared cache: %{darwin.errno}d", v22, 0x12u);
      }

      *__error() = v8;
    }
  }

  else
  {
    v13 = *(v14 + 13);
    sub_1000149F8(v21, &v13);
    *(v14 + 4) = 0;
    **(v21 + 112) = v14;
    *(v21 + 112) = v14 + 32;
    v14 = 0;
  }

  sub_100011D0C(&v14, v6);
}

uint64_t sub_1000133D0(uint64_t a1, int a2)
{
  v87 = a1;
  v86 = a2;
  v85 = -1;
  memset(__b, 0, sizeof(__b));
  v83 = 0;
  v82 = 0;
  i = 0;
  v80 = 6;
  bzero(v108, 0x1C8uLL);
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v85 = sub_10004B524(v86, __b);
  if (v85)
  {
    v76 = *v87;
    if (!v76)
    {
      v76 = "[anonymous]";
    }

    v75 = *__error();
    v74 = *(v87 + 16);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v107, v76, v85);
      _os_log_impl(&_mh_execute_header, v74, type, "%{public}s: failed to read trust cache: %{darwin.errno}d", v107, 0x12u);
    }

    *__error() = v75;
    goto LABEL_117;
  }

  sub_10004EEEC(__b[0], __b[1], v108);
  v80 = v2;
  if (v2)
  {
    sub_10004EFD4(__b[0], __b[1], v108);
    v80 = v3;
    if (v3)
    {
      if (v3 != 2)
      {
        v85 = 92;
        v64 = *v87;
        if (!v64)
        {
          v64 = "[anonymous]";
        }

        v63 = *__error();
        v62 = *(v87 + 16);
        v61 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          sub_100009614(v104, v64, v80);
          _os_log_impl(&_mh_execute_header, v62, v61, "%{public}s: DER decode error: %u", v104, 0x12u);
        }

        *__error() = v63;
        goto LABEL_117;
      }

      v83 = sub_10004C5C0(__b, "r", 0);
      v79 = 1852796517;
      v68 = *v87;
      if (!v68)
      {
        v68 = "[anonymous]";
      }

      v67 = *__error();
      v66 = *(v87 + 16);
      v65 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v105, v68);
        _os_log_impl(&_mh_execute_header, v66, v65, "%{public}s: not Image4-wrapped", v105, 0xCu);
      }

      *__error() = v67;
    }

    else
    {
      v72 = *v87;
      if (!v72)
      {
        v72 = "[anonymous]";
      }

      v71 = *__error();
      v70 = *(v87 + 16);
      v69 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v106, v72);
        _os_log_impl(&_mh_execute_header, v70, v69, "%{public}s: Image4-wrapped", v106, 0xCu);
      }

      *__error() = v71;
    }
  }

  else
  {
    v60 = *v87;
    if (!v60)
    {
      v60 = "[anonymous]";
    }

    v59 = *__error();
    v58 = *(v87 + 16);
    v57 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v103, v60);
      _os_log_impl(&_mh_execute_header, v58, v57, "%{public}s: Image4 manifest + payload", v103, 0xCu);
    }

    *__error() = v59;
  }

  if (v83)
  {
    goto LABEL_78;
  }

  v55 = 0;
  v56 = 0;
  v80 = sub_10004ED54(v108, &v55);
  if (v80)
  {
    v85 = 92;
    v54 = *v87;
    if (!v54)
    {
      v54 = "[anonymous]";
    }

    v53 = *__error();
    v52 = *(v87 + 16);
    v51 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v102, v54, v80);
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s: DER decode error: %u", v102, 0x12u);
    }

    *__error() = v53;
    goto LABEL_117;
  }

  v83 = fmemopen(v55, v56, "r");
  if (!v83)
  {
    v50 = 0;
    memset(v101, 0, sizeof(v101));
    v48 = 0;
    v47 = 3;
    v46 = &_os_log_default;
    v45 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v47 &= ~1u;
    }

    if (v47)
    {
      v4 = __error();
      sub_1000013C8(v100, *v4);
      v48 = _os_log_send_and_compose_impl(v47, &v50, v101, 80, &_mh_execute_header, v46, v45, "unexpected failure: fmemopen: %{darwin.errno}d", v100, 8);
    }

    v44 = v48;
    v49 = v48;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100013C28);
  }

  v80 = sub_10004ED98(v108, (v87 + 68));
  if (v80)
  {
    v85 = 92;
    v43 = *v87;
    if (!v43)
    {
      v43 = "[anonymous]";
    }

    v42 = *__error();
    v41 = *(v87 + 16);
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v99, v43, v80);
      _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s: DER decode error: %u", v99, 0x12u);
    }

    *__error() = v42;
    goto LABEL_117;
  }

  v79 = *(v87 + 68);
  if (v79 == 1651733603 || v79 == 1651798643 || v79 == 1685353075 || v79 == 1735680868 || v79 == 1819570803 || v79 == 1920234339 || v79 == 1953653346 || v79 == 1953653601 || v79 == 1953653881 || v79 == 1953654126 || v79 == 1953654628 || v79 == 1953655137 || v79 == 1953656932 || v79 == 1953657443 || v79 == 1953657716 || v79 == 1953658210)
  {
    goto LABEL_78;
  }

  if (*(v87 + 24))
  {
    v39 = *v87;
    if (!v39)
    {
      v39 = "[anonymous]";
    }

    v38 = *__error();
    v37 = *(v87 + 16);
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10004B484(v79, &v77);
      sub_100011BEC(v98, v39, v5);
      _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s: unknown trust cache tag; proceeding with caution: %s", v98, 0x16u);
    }

    *__error() = v38;
LABEL_78:
    v82 = fread((v87 + 42), 0x18uLL, 1uLL, v83);
    v85 = sub_10004887C("read header", v83, 1, 0x58u, *(v87 + 16));
    if (!v85)
    {
      v31 = *v87;
      if (!v31)
      {
        v31 = "[anonymous]";
      }

      v30 = *__error();
      v29 = *(v87 + 16);
      v28 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v7 = sub_10004B484(v79, &v77);
        sub_100011BEC(v96, v31, v7);
        _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: type = %s", v96, 0x16u);
      }

      *__error() = v30;
      v27 = *v87;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v26 = *__error();
      v25 = *(v87 + 16);
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v95, v27, *(v87 + 42));
        _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s: version = %u", v95, 0x12u);
      }

      *__error() = v26;
      v23 = *v87;
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      v22 = *__error();
      oslog = *(v87 + 16);
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000148C0(v94, v23, 16, v87 + 46);
        _os_log_impl(&_mh_execute_header, oslog, v20, "%{public}s: uuid = %{uuid_t}.16P", v94, 0x1Cu);
      }

      *__error() = v22;
      v19 = *v87;
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v18 = *__error();
      v17 = *(v87 + 16);
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v93, v19, *(v87 + 62));
        _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s: entries cnt = %u", v93, 0x12u);
      }

      *__error() = v18;
      if (*(v87 + 42) <= 2u)
      {
        if (*(v87 + 62))
        {
          for (i = 0; i < *(v87 + 62); ++i)
          {
            __ptr = 0uLL;
            v92 = 0;
            v89 = 0uLL;
            v90 = 0;
            __size = 0;
            v14 = 0;
            v10 = *(v87 + 42);
            if (v10)
            {
              __size = v10 == 1 ? 22 : 24;
            }

            else
            {
              __size = 20;
            }

            v82 = fread(&__ptr, __size, 1uLL, v83);
            v85 = sub_10004887C("read entry", v83, v82, 0x58u, *(v87 + 16));
            if (v85)
            {
              break;
            }

            if (*(v87 + 42))
            {
              if (*(v87 + 42) == 1)
              {
                v89 = __ptr;
                LODWORD(v90) = v92;
                HIDWORD(v90) = WORD2(v92);
              }

              else
              {
                v89 = __ptr;
                v90 = v92;
              }
            }

            else
            {
              v89 = __ptr;
              LODWORD(v90) = v92;
              WORD2(v90) = 0;
            }

            v13 = *v87;
            if (!*v87)
            {
              v13 = "[anonymous]";
            }

            v12 = *__error();
            v11 = *(v87 + 16);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              sub_100014934(v88, v13, *(v87 + 42), BYTE4(v90), BYTE5(v90), BYTE6(v90), 20, &v89);
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: read trust cache entry: version = %#x, hash type = %hx, flags = %#x, cc = %#x, hash = %.*P", v88, 0x34u);
            }

            *__error() = v12;
            v14 = sub_1000216E4(*(v87 + 16));
            sub_100023874(v14, v87 + 42, &v89);
            sub_1000149F8(v87, &v14);
            sub_100023DE0(&v14);
          }
        }

        else
        {
          v85 = 0;
        }
      }

      else
      {
        v85 = 45;
      }
    }

    goto LABEL_117;
  }

  v85 = 79;
  v35 = *v87;
  if (!v35)
  {
    v35 = "[anonymous]";
  }

  v34 = *__error();
  v33 = *(v87 + 16);
  v32 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10004B484(v79, &v77);
    sub_100011BEC(v97, v35, v6);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s: unknown trust cache tag: %s ", v97, 0x16u);
  }

  *__error() = v34;
LABEL_117:
  v9 = v85;
  sub_100010FB4(&v83);
  return v9;
}

uint64_t sub_1000148C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
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

uint64_t sub_100014934(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
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
  *(result + 36) = 16;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 48;
  *(result + 43) = 8;
  *(result + 44) = a8;
  return result;
}

int *sub_1000149F8(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v12 = *a2 + 16;
  if (sub_100049564(a1 + 120, v12))
  {
    v11 = *a1;
    if (!*a1)
    {
      v11 = "[anonymous]";
    }

    v10 = *__error();
    oslog = *(a1 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v18, v11);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash already exists", v18, 0xCu);
    }

    result = __error();
    *result = v10;
  }

  else if (*(v13 + 104) >= *(a1 + 40))
  {
    if (*(v13 + 104) <= *(a1 + 41))
    {
      result = sub_100049430(a1 + 120, v12);
      ++*(a1 + 424);
      *a2 = 0;
    }

    else
    {
      v5 = *a1;
      if (!*a1)
      {
        v5 = "[anonymous]";
      }

      v4 = *__error();
      v3 = *(a1 + 16);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_100009E38(v16, v5, *(v13 + 104), *(a1 + 41));
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash exceeds maximum: %u > %u", v16, 0x18u);
      }

      result = __error();
      *result = v4;
    }
  }

  else
  {
    v8 = *a1;
    if (!*a1)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    v6 = *(a1 + 16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100009E38(v17, v8, *(v13 + 104), *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash does not meet minimum: %u < %u", v17, 0x18u);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

uint64_t sub_100014D78(uint64_t a1, int a2)
{
  v60 = a1;
  v59 = a2;
  v58 = -1;
  v57 = -1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  __ptr[0] = 1;
  __ptr[1] = 0;
  v87 = 0;
  v14 = __ptr + 5;
  do
  {
    *v14++ = 0;
  }

  while (v14 != &v87 + 4);
  HIDWORD(v87) = *(v60 + 424);
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  memset(__b, 0, sizeof(__b));
  v48 = 0;
  i = 0;
  v13 = *(v60 + 32);
  if (v13)
  {
    switch(v13)
    {
      case 1:
        v52 = "rtsc";
        break;
      case 2:
        v52 = "btrs";
        break;
      case 3:
        v52 = "ltrs";
        break;
      case 4:
        v52 = "dtrs";
        break;
      case 5:
        v52 = "gtcd";
        break;
    }
  }

  else
  {
    v52 = "trst";
  }

  uuid_copy(__ptr + 4, (v60 + 72));
  v56 += 24;
  v56 += 22 * *(v60 + 424);
  v46 = 0;
  v45 = v56;
  if (_dispatch_is_multithreaded())
  {
    v74 = v45;
    v73 = 0;
    while (1)
    {
      v73 = malloc_type_malloc(v74, 0x5C008F58uLL);
      if (v73)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v46 = v73;
  }

  else
  {
    v72 = v45;
    v46 = malloc_type_malloc(v45, 0x2F48DA65uLL);
    v71 = "known-constant allocation";
    v70 = v46;
    v69 = v45;
    if (!v46)
    {
      v68 = 0;
      memset(v89, 0, sizeof(v89));
      v66 = 0;
      v65 = 3;
      v64 = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v65 &= ~1u;
      }

      if (v65)
      {
        v10 = v65;
        v11 = v64;
        v12 = type;
        v8 = v71;
        v9 = v69;
        v2 = __error();
        v3 = strerror(*v2);
        sub_1000031B0(v88, v8, v9, v3);
        v62 = _os_log_send_and_compose_impl(v10, &v68, v89, 80, &_mh_execute_header, v11, v12, "allocation failed: obj = %s, size = %lu, error = %s", v88, 32, v6);
        v66 = v62;
      }

      v61 = v66;
      v67 = v66;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001511CLL);
    }
  }

  v44[1] = v46;
  v55 = v46;
  v54 = fmemopen(v46, v56, "rw");
  if (!v54)
  {
    v44[0] = 0;
    memset(v85, 0, sizeof(v85));
    v42 = 0;
    v41 = 3;
    v40 = &_os_log_default;
    v39 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v41 &= ~1u;
    }

    if (v41)
    {
      v4 = __error();
      sub_1000013C8(v84, *v4);
      v42 = _os_log_send_and_compose_impl(v41, v44, v85, 80, &_mh_execute_header, v40, v39, "unexpected failure: fdopen: %{darwin.errno}d", v84, 8);
    }

    v38 = v42;
    v43 = v42;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000152D4);
  }

  v53 = fwrite(__ptr, 0x18uLL, 1uLL, v54);
  v58 = sub_10004887C("write module", v54, v53, 0x58u, *(v60 + 16));
  if (v58)
  {
    v37 = *v60;
    if (!v37)
    {
      v37 = "[anonymous]";
    }

    v36 = *__error();
    v35 = *(v60 + 16);
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v83, v37, v58);
      _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s: failed to write trust cache module: %{darwin.errno}d", v83, 0x12u);
    }

    *__error() = v36;
  }

  else
  {
    v33 = *v60;
    if (!v33)
    {
      v33 = "[anonymous]";
    }

    v32 = *__error();
    v31 = *(v60 + 16);
    v30 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_1000148C0(v82, v33, 24, __ptr);
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s: wrote module header: %.*P", v82, 0x1Cu);
    }

    *__error() = v32;
    v48 = sub_100015C98(v60);
    for (i = 0; i < *(v60 + 424); ++i)
    {
      v29 = v48[i];
      *v81 = 0;
      *&v81[8] = 0;
      *&v81[14] = 0;
      v81[20] = *(v29 + 104);
      v81[21] = *(v29 + 120);
      if (*(v29 + 112) < 0x14uLL)
      {
        v28 = 0;
        memset(v80, 0, sizeof(v80));
        v27 = 3;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v27 = 2;
        }

        sub_100003098(v79, *(v29 + 112));
        _os_log_send_and_compose_impl(v27, &v28, v80, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: bogus hash length: %lu", v79);
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x1000156C0);
      }

      *v81 = *(v29 + 56);
      *&v81[16] = *(v29 + 72);
      v53 = fwrite(v81, 0x16uLL, 1uLL, v54);
      v58 = sub_10004887C("write entry", v54, v53, 0x58u, *(v60 + 16));
      if (v58)
      {
        v26 = *v60;
        if (!*v60)
        {
          v26 = "[anonymous]";
        }

        v25 = *__error();
        oslog = *(v60 + 16);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10001601C(v78, v26, 20, v81, v58);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: failed to write trust cache entry: %.*P: %{darwin.errno}d", v78, 0x22u);
        }

        *__error() = v25;
        goto LABEL_86;
      }

      v23 = *v60;
      if (!*v60)
      {
        v23 = "[anonymous]";
      }

      v22 = *__error();
      v21 = *(v60 + 16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1000148C0(v77, v23, 20, v81);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: wrote cdhash: %.*P", v77, 0x1Cu);
      }

      *__error() = v22;
    }

    v57 = sub_10004E124(v52, "cptx", v55, v56, 0, 0, &v51, &v50);
    switch(v57)
    {
      case 'd':
        v58 = 0;
        break;
      case 'e':
        v58 = 22;
        break;
      case 'f':
        v58 = 12;
        break;
      case 'g':
        v58 = 104;
        break;
      case 'h':
        v58 = 14;
        break;
      case 'i':
        v58 = 78;
        break;
    }

    if (v58)
    {
      v20 = *v60;
      if (!*v60)
      {
        v20 = "[anonymous]";
      }

      v19 = *__error();
      v18 = *(v60 + 16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100009E38(v76, v20, v57, v58);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap trust cache: %d: %{darwin.errno}d", v76, 0x18u);
      }

      *__error() = v19;
    }

    else
    {
      sub_10004C358(__b, 0, 0, v51, v50);
      v58 = sub_10004B8CC(v59, __b);
      if (v58)
      {
        v17 = *v60;
        if (!*v60)
        {
          v17 = "[anonymous]";
        }

        v16 = *__error();
        v15 = *(v60 + 16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v75, v17, v58);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to write im4p: %{darwin.errno}d", v75, 0x12u);
        }

        *__error() = v16;
      }
    }
  }

LABEL_86:
  v7 = v58;
  sub_100002DE4(&v48);
  sub_100002DE4(&v51);
  sub_100010FB4(&v54);
  sub_100002DE4(&v55);
  return v7;
}

void *sub_100015C98(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  v9 = *(a1 + 424);
  if (_dispatch_is_multithreaded())
  {
    v21 = v9;
    v20 = 8;
    v19 = 0;
    while (1)
    {
      v19 = malloc_type_calloc(v21, v20, 0x8A375538uLL);
      if (v19)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v10 = v19;
  }

  else
  {
    v10 = malloc_type_calloc(v9, 8uLL, 0x8709206FuLL);
    v18 = "known-constant allocation";
    v17 = v10;
    v16 = 8;
    if (!v10)
    {
      v15 = 0;
      memset(__b, 0, sizeof(__b));
      v14 = 3;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = 2;
      }

      v1 = __error();
      v2 = strerror(*v1);
      sub_1000031B0(v22, v18, v16, v2);
      _os_log_send_and_compose_impl(v14, &v15, __b, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v22, 32, v4);
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100015E74);
    }
  }

  v6 = 0;
  v8 = 0;
  while (v6 < 0x25)
  {
    for (i = *(a1 + 120 + 8 * v6); ; i = v8)
    {
      v5 = 0;
      if (i)
      {
        v8 = *(i + 8);
        v12 = i - 16;
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        break;
      }

      v10[v11++] = v12;
    }

    ++v6;
  }

  qsort(v10, *(a1 + 424), 8uLL, sub_1000160A0);
  return v10;
}

uint64_t sub_10001601C(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 16;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 48;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_1000160F8(void **a1, uint64_t a2)
{
  v20 = a1;
  v19 = *a1;
  v18 = 0;
  j = 0;
  v16 = 0;
  m = 0;
  v14 = 0;
  v11 = 0;
  v13 = 0;
  while (v11 < 0x25)
  {
    for (i = v19[v11 + 15]; ; i = v13)
    {
      v8 = 0;
      if (i)
      {
        v13 = *(i + 8);
        v18 = (i - 16);
        v8 = 1;
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_100049570((v19 + 15), (v18 + 2));
      --*(v19 + 106);
      if ((*v18 & 1) == 0)
      {
        sub_100023DE0(&v18);
      }
    }

    ++v11;
  }

  for (j = v19[11]; ; j = v16)
  {
    v7 = 0;
    if (j)
    {
      v16 = j[3];
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      break;
    }

    if (v19[11] == j)
    {
      v2 = *(v19[11] + 24);
      v19[11] = v2;
      if (!v2)
      {
        v19[12] = v19 + 11;
      }
    }

    else
    {
        ;
      }

      v3 = *(*(k + 24) + 24);
      *(k + 24) = v3;
      if (!v3)
      {
        v19[12] = k + 24;
      }
    }

    sub_10001E9CC(&j, a2);
  }

  for (m = v19[13]; ; m = v14)
  {
    v6 = 0;
    if (m)
    {
      v14 = m[4];
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    if (v19[13] == m)
    {
      v4 = *(v19[13] + 32);
      v19[13] = v4;
      if (!v4)
      {
        v19[14] = v19 + 13;
      }
    }

    else
    {
        ;
      }

      v5 = *(*(n + 32) + 32);
      *(n + 32) = v5;
      if (!v5)
      {
        v19[14] = n + 32;
      }
    }

    sub_100011D0C(&m, a2);
  }

  sub_100049728(v19);
  free(v19);
  *v20 = 0;
}

BOOL sub_1000164C0(const char *a1)
{
  if (a1)
  {
    v2 = 1;
    if (strcmp(a1, "before"))
    {
      v2 = 1;
      if (strcmp(a1, "after"))
      {
        v2 = 1;
        if (strcmp(a1, "none"))
        {
          return strcmp(a1, "both") == 0;
        }
      }
    }

    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001659C(uint64_t a1, int a2, const char **a3)
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
      JUMPOUT(0x100016774);
    }

    if (v10 != 58)
    {
      if (v10 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000167F0);
      }

      errx(64, "unknown option: %s", v6);
    }

    errx(64, "missing argument for option: %s", *v7);
  }

  v13 += optind;
  v14 -= optind;
  if (v14 < 1)
  {
    errx(64, "a dev node must be provided");
  }

  v8 = *v13;
  v12 = sub_10001689C(&v8);
  return sysexit_np();
}

uint64_t sub_10001689C(const char **a1)
{
  v9 = a1;
  v8 = -1;
  v7 = -1;
  bzero(__s1, 0x400uLL);
  __s = 0;
  v5 = -1;
  if (**v9 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __snprintf_chk(__s1, 0x400uLL, 0, 0x400uLL, "%s%s", "/dev/", *v9);
  }

  __s = strstr(__s1, "disk");
  if (__s)
  {
    __s += 4;
  }

  while (1)
  {
    sub_10004860C(0, 1uLL, "attempting to detach: %s", __s1);
    v5 = open(__s1, 0);
    v10 = v5;
    if (v5 < 0)
    {
      v8 = *__error();
      warn("open: %s", *v9);
      goto LABEL_18;
    }

    v7 = ioctl(v5, 0x20006415uLL);
    if ((v7 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v3 = *__error();
    if (v3)
    {
      break;
    }

    sub_10004860C(0, 1uLL, "detached: %s", __s1);
    v8 = 0;
LABEL_17:
    if (v8 != 25)
    {
      goto LABEL_18;
    }
  }

  if (v3 == 25)
  {
    v8 = *__error();
    if (!__s)
    {
      goto LABEL_18;
    }

    v4 = strrchr(__s, 115);
    if (v4)
    {
      *v4 = 0;
    }

    goto LABEL_17;
  }

  v8 = *__error();
LABEL_18:
  if (v8)
  {
    warn("failed to detach: %s", *v9);
  }

  v2 = v8;
  sub_1000038DC(&v5);
  return v2;
}

uint64_t sub_100016B84(uint64_t a1, int a2, const char **a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = a3;
  v12 = -1;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  sub_1000480E0();
  v10 = img4_chip_select_personalized_ap();
  while (1)
  {
    v12 = getopt_long(v16, v13, *(v17 + 32), *(v17 + 40), &v11);
    if (v12 == -1)
    {
      break;
    }

    v7 = (*(v17 + 40) + 32 * v11);
    v6 = v15[optind - 1];
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
      JUMPOUT(0x100016D6CLL);
    }

    sub_1000483C8(1uLL, "parsing: %c", v12);
    switch(v12)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'm':
        v9 = optarg;
        sub_1000483C8(1uLL, "will write trust cache to: %s", optarg);
        break;
      case 't':
        if (!strcmp(optarg, "personalized"))
        {
          v10 = img4_chip_select_personalized_ap();
        }

        else if (!strcmp(optarg, "global-ff00"))
        {
          v10 = &_img4_chip_ap_software_ff00;
        }

        else
        {
          if (strcmp(optarg, "global-ff01"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          v10 = &_img4_chip_ap_software_ff00;
        }

        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100016F10);
    }
  }

  v15 += optind;
  v16 -= optind;
  if (v16 < 1)
  {
    errx(64, "a directory path is required");
  }

  v8 = *v15;
  if (!v9)
  {
    v9 = v8;
  }

  v14 = sub_100016FD4(&v8);
  return sysexit_np();
}

uint64_t sub_100016FD4(const char **a1)
{
  v14 = a1;
  v13 = 0;
  v12 = -1;
  v11 = -1;
  v10 = -1;
  v11 = open(*a1, 0);
  v16 = v11;
  if (v11 < 0)
  {
    v12 = *__error();
    warnc(v12, "open");
  }

  else
  {
    v10 = open(v14[1], 0);
    v15 = v11;
    v13 = sub_10000F434(v11, v10, 0);
    if (v13)
    {
      v12 = sub_100018A78(v13);
      v9 = sub_100048090();
      v6 = 1;
      if (v9[1] <= 1uLL)
      {
        v6 = v9[2] > 1uLL;
      }

      if (v6)
      {
        v1 = 999;
      }

      else
      {
        v1 = 3;
      }

      v8 = v1;
      v5 = 1;
      if (v9[1] <= 1uLL)
      {
        v5 = v9[2] > 1uLL;
      }

      v2 = 2000;
      if (!v5)
      {
        v2 = 200;
      }

      v7[1] = v2;
      v7[0] = sub_100017530(v13, v8, v2);
      warnx("failed to load trust cache\n%s", v7[0]);
      sub_100002DE4(v7);
    }

    else
    {
      sub_10004860C(0, 1uLL, "loaded trust cache");
    }
  }

  v4 = v12;
  sub_1000038DC(&v10);
  sub_1000038DC(&v11);
  sub_100006B40(&v13);
  return v4;
}

uint64_t sub_1000173C8(uint64_t result, uint64_t a2)
{
  v5 = result;
  v4 = a2;
  if (!result)
  {
    v3 = 0;
    memset(__b, 0, sizeof(__b));
    v2 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v2 = 2;
    }

    sub_100003120(v6, v4);
    _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "cf create failed: obj = %s", v6);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100017500);
  }

  return result;
}

char *sub_100017530(__CFError *a1, unsigned int a2, CFIndex a3)
{
  err = a1;
  v51 = a2;
  v50 = a3;
  v48 = 0;
  v47 = 0;
  Mutable = CFStringCreateMutable(0, 0);
  while (err)
  {
    theDict = CFErrorCopyUserInfo(err);
    theString = CFErrorCopyDescription(err);
    MutableCopy = 0;
    cf1 = CFErrorGetDomain(err);
    appendedString = 0;
    Value = 0;
    v40 = 0;
    v39 = &stru_1000822B0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, kCFErrorUnderlyingErrorKey);
    }

    if (theString)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
      if (MutableCopy)
      {
        if ((v50 & 0x8000000000000000) == 0)
        {
          v33 = MutableCopy;
          v34 = v50;
          if (v34 >= CFStringGetLength(MutableCopy))
          {
            length = CFStringGetLength(MutableCopy);
            CFStringPad(v33, 0, length, 0);
          }

          else
          {
            CFStringPad(v33, 0, v50, 0);
          }
        }
      }
    }

    if (CFEqual(cf1, @"com.apple.security.cryptex"))
    {
      Code = CFErrorGetCode(err);
      v4 = sub_100017CB8(Code);
      asprintf(&v40, " (%s)", v4);
    }

    else if (CFEqual(cf1, @"com.apple.security.cryptex.posix"))
    {
      v5 = CFErrorGetCode(err);
      v6 = strerror(v5);
      asprintf(&v40, " (%s)", v6);
    }

    else
    {
      __s1 = "";
      v38 = strdup("");
      v7 = strlen("");
      v76 = "known-constant allocation";
      v75 = v38;
      v74 = v7;
      if (!v38)
      {
        v73 = 0;
        memset(__b, 0, sizeof(__b));
        v71 = 0;
        v70 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v70 &= ~1u;
        }

        if (v70)
        {
          v29 = v70;
          v30 = oslog;
          v31 = type;
          v27 = v76;
          v28 = v74;
          v8 = __error();
          v9 = strerror(*v8);
          sub_1000031B0(v79, v27, v28, v9);
          LODWORD(v16) = 32;
          v67 = _os_log_send_and_compose_impl(v29, &v73, __b, 80, &_mh_execute_header, v30, v31, "allocation failed: obj = %s, size = %lu, error = %s", v79, v16, v17);
          v71 = v67;
        }

        v66 = v71;
        v72 = v71;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100017884);
      }

      v40 = v38;
    }

    if (os_variant_allows_internal_security_policies())
    {
      v25 = CFDictionaryGetValue(theDict, @"FileName");
      v26 = CFDictionaryGetValue(theDict, @"LineNumber");
      v10 = CFDictionaryGetValue(theDict, @"FunctionName");
      v39 = CFStringCreateWithFormat(0, 0, @"  Source: %@:%@ (%@)", v25, v26, v10);
    }

    Domain = CFErrorGetDomain(err);
    v11 = CFErrorGetCode(err);
    v17 = v40;
    appendedString = CFStringCreateWithFormat(0, 0, @"Error Domain: %@  Code: %ld%s%@  Detail: %@\n", Domain, v11);
    if (v47 >= v51 && Value)
    {
      if (v47 == v51)
      {
        for (i = 0; i < v47; ++i)
        {
          CFStringAppend(Mutable, @"    ");
        }

        CFStringAppend(Mutable, @"...\n");
        ++v47;
      }
    }

    else
    {
      if (v47)
      {
        for (j = 0; j < v47 - 1; ++j)
        {
          CFStringAppend(Mutable, @"    ");
        }

        CFStringAppend(Mutable, @" ╰─ ");
      }

      CFStringAppend(Mutable, appendedString);
      ++v47;
    }

    err = Value;
    sub_100006B40(&v39);
    sub_100002DE4(&v40);
    sub_100006B40(&appendedString);
    sub_100006B40(&MutableCopy);
    sub_100006B40(&theString);
    sub_100006B40(&theDict);
  }

  v48 = sub_100018014(Mutable);
  if (!v48)
  {
    v53 = "[CFString translation failure]";
    v35 = strdup("[CFString translation failure]");
    v12 = strlen("[CFString translation failure]");
    v65 = "known-constant allocation";
    v64 = v35;
    v63 = v12;
    if (!v35)
    {
      v62 = 0;
      memset(v78, 0, sizeof(v78));
      v60 = 0;
      v59 = 3;
      v58 = &_os_log_default;
      v57 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v59 &= ~1u;
      }

      if (v59)
      {
        v21 = v59;
        v22 = v58;
        v23 = v57;
        v19 = v65;
        v20 = v63;
        v13 = __error();
        v14 = strerror(*v13);
        sub_1000031B0(v77, v19, v20, v14);
        LODWORD(v16) = 32;
        v56 = _os_log_send_and_compose_impl(v21, &v62, v78, 80, &_mh_execute_header, v22, v23, "allocation failed: obj = %s, size = %lu, error = %s", v77, v16, v17);
        v60 = v56;
      }

      v55 = v60;
      v61 = v60;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100017C5CLL);
    }

    v48 = v35;
  }

  v18 = v48;
  sub_100006B40(&Mutable);
  return v18;
}

const char *sub_100017CB8(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = "No error";
      break;
    case 1:
      v2 = "The cryptex is already mounted to the filesystem";
      break;
    case 2:
      v2 = "Mount/unmount failed";
      break;
    case 3:
      v2 = "Encountered an error processing an XPC event";
      break;
    case 4:
      v2 = "The cryptex failed to uninstall";
      break;
    case 5:
      v2 = "The cryptex failed to personalize";
      break;
    case 6:
      v2 = "Failed to read the cryptex bundle";
      break;
    case 7:
      v2 = "Failed to write the cryptex bundle";
      break;
    case 8:
      v2 = "No matching cryptex found";
      break;
    case 9:
      v2 = "Failed to initialize cryptex identity";
      break;
    case 10:
      v2 = "The requested operation is not supported";
      break;
    case 11:
      v2 = "Invalid input to libcryptex API";
      break;
    case 12:
      v2 = "Failed to authenticate cryptex asset";
      break;
    case 14:
      v2 = "Failed to install cryptex";
      break;
    case 15:
      v2 = "Cryptex is not valid";
      break;
    case 16:
      v2 = "Daemon failed a request";
      break;
    case 17:
      v2 = "Cryptex already exists";
      break;
    case 18:
      v2 = "Request already satisfied; nothing to do.";
      break;
    case 19:
      v2 = "Failed to communicate with remote device.";
      break;
    case 20:
      v2 = "Developer mode is required and not currently enabled.";
      break;
    case 21:
      v2 = "Failed to attach launch agents.";
      break;
    case 22:
      v2 = "Image format is unsupported.";
      break;
    case 23:
      v2 = "Failed to connect to local cryptexd daemon.";
      break;
    case 24:
      v2 = "Failed to allocate memory.";
      break;
    case 25:
      v2 = "Failed to acquire lock on upgrade interface.";
      break;
    case 26:
      v2 = "Failed to release lock on upgrade interface.";
      break;
    case 27:
      v2 = "The cryptex upgrade was interrupted.";
      break;
    case 28:
      v2 = "App termination assertion failed.";
      break;
    case 29:
      v2 = "Upgrade for this cryptex is already in progress.";
      break;
    case 30:
      v2 = "Failed to stage cryptex for upgrade.";
      break;
    case 31:
      v2 = "Failed to commit cryptex(es) for upgrade.";
      break;
    case 32:
      v2 = "Failed to abort cryptex upgrade.";
      break;
    case 33:
      v2 = "Failed to register service(s) with watchdog.";
      break;
    case 34:
      v2 = "Failed to load cryptex trust cache.";
      break;
    case 35:
      v2 = "Failed to configure vproc.";
      break;
    case 36:
      v2 = "Failed to lock cryptex signature.";
      break;
    case 37:
      v2 = "Failed to bootstrap cryptex contents.";
      break;
    case 38:
      v2 = "Failed to unload cryptex trust cache.";
      break;
    default:
      v2 = "Unknown error";
      break;
  }

  return v2;
}

char *sub_100018014(const __CFString *a1)
{
  v2 = 0;
  Length = CFStringGetLength(a1);
  bufferSize = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
  if (bufferSize < 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100018084);
  }

  buffer = malloc_type_calloc(1uLL, bufferSize, 0x55514AAEuLL);
  if (!buffer)
  {
    goto LABEL_7;
  }

  v2 = buffer;
  if (!CFStringGetCString(a1, buffer, bufferSize, 0x8000100u))
  {
    buffer = 0;
LABEL_7:
    free(v2);
    return buffer;
  }

  free(0);
  return buffer;
}

uint64_t sub_10001813C(const __CFNumber *a1)
{
  valuePtr[1] = a1;
  valuePtr[0] = -1;
  if (!CFNumberGetValue(a1, kCFNumberSInt64Type, valuePtr))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1000181A4);
  }

  if (valuePtr[0] > 0xFFFFFFFFLL || valuePtr[0] < 0)
  {
    v3 = 0;
    memset(__b, 0, sizeof(__b));
    v2 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v2 = 2;
    }

    sub_100003098(v6, valuePtr[0]);
    _os_log_send_and_compose_impl(v2, &v3, __b, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: not representable as 32-bit unsigned integer: %lld", v6);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000182CCLL);
  }

  return valuePtr[0];
}

char *sub_100018348(const __CFString *a1, char *a2, unint64_t a3)
{
  v4 = 0;
  if (a3 > 0x7FFFFFFFFFFFFFFFLL)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100018398);
  }

  if (CFStringGetCString(a1, a2, a3, 0x8000100u))
  {
    return a2;
  }

  return v4;
}

CFMutableArrayRef sub_1000183E8()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  sub_1000173C8(Mutable, "CFMutableArray");
  return Mutable;
}

CFMutableDictionaryRef sub_100018434()
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1000173C8(Mutable, "CFMutableDictionary");
  return Mutable;
}

void sub_100018488(__CFDictionary *a1, const void *a2, char a3)
{
  if (a3)
  {
    v3 = kCFBooleanTrue;
  }

  else
  {
    v3 = kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, v3);
}

void sub_1000184FC(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a1;
  v4 = a2;
  value[1] = a3;
  value[0] = 0;
  value[0] = CFStringCreateWithCString(0, a3, 0x8000100u);
  sub_1000173C8(value[0], "CFString");
  CFDictionarySetValue(v5, v4, value[0]);
  sub_100006B40(value);
}

void sub_100018570(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a1;
  v4 = a2;
  value[1] = a3;
  value[0] = 0;
  value[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_1000173C8(value[0], "CFString");
  CFDictionarySetValue(v5, v4, value[0]);
  sub_100006B40(value);
}

CFErrorRef sub_1000185D8(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, const char *a7)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v14 = CFStringCreateWithCString(0, a7, 0x8000100u);
  value = CFStringCreateWithCString(0, v20, 0x8000100u);
  domain = CFStringCreateWithCString(0, a4, 0x8000100u);
  cf = CFStringCreateWithCString(0, v19, 0x8000100u);
  v9 = CFNumberCreate(0, kCFNumberIntType, &v18);
  theDict = sub_100018434();
  CFDictionarySetValue(theDict, kCFErrorLocalizedDescriptionKey, v14);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(theDict, @"FunctionName", value);
    CFDictionarySetValue(theDict, @"FileName", cf);
    CFDictionarySetValue(theDict, @"LineNumber", v9);
  }

  if (a6)
  {
    CFDictionarySetValue(theDict, kCFErrorUnderlyingErrorKey, a6);
  }

  v13 = CFErrorCreate(0, domain, a5, theDict);
  CFRelease(theDict);
  CFRelease(v14);
  CFRelease(value);
  CFRelease(domain);
  CFRelease(cf);
  CFRelease(v9);
  return v13;
}

uint64_t sub_1000187A0(const void *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0;
  v14 = 32;
  v15 = 0;
  v4 = _NSConcreteStackBlock;
  v5 = 0x40000000;
  v6 = 0;
  v7 = sub_1000189E4;
  v8 = &unk_10007A168;
  v10 = a2;
  v9 = &v11;
  sub_100018868(a1, &v4);
  v3 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v3;
}

void sub_100018868(const void *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 1;
  v8 = 0;
  if (a1)
  {
    v5 = CFGetTypeID(v11);
    if (v5 == CFErrorGetTypeID())
    {
      v8 = sub_100018E24(v11);
      while (1)
      {
        v4 = 0;
        if (v8)
        {
          v4 = v9;
        }

        if ((v4 & 1) == 0)
        {
          break;
        }

        theDict = 0;
        v9 = (*(v10 + 16))(v10, v8);
        theDict = CFErrorCopyUserInfo(v8);
        v12 = &v8;
        if (&v8 && *v12)
        {
          CFRelease(*v12);
          *v12 = 0;
        }

        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, kCFErrorUnderlyingErrorKey);
          v3 = sub_100018E24(Value);
        }

        else
        {
          v3 = 0;
        }

        v8 = v3;
        sub_100006B40(&theDict);
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_100006B40(&v8);
}

uint64_t sub_1000189E4(uint64_t a1, __CFError *a2)
{
  Domain = CFErrorGetDomain(a2);
  if (CFEqual(Domain, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100018A78(__CFError *a1)
{
  v6 = a1;
  err = 0;
  if (a1)
  {
    err = sub_1000187A0(v6, @"com.apple.security.cryptex.posix");
    if (err && (v1 = CFErrorGetDomain(err), CFEqual(v1, @"com.apple.security.cryptex.posix")))
    {
      Code = CFErrorGetCode(err);
    }

    else
    {
      Domain = CFErrorGetDomain(v6);
      if (CFEqual(Domain, @"com.apple.security.cryptex"))
      {
        v3 = CFErrorGetCode(v6);
        Code = sub_100018B68(v3);
      }

      else
      {
        Code = -1;
      }
    }
  }

  else
  {
    Code = 0;
  }

  sub_100006B40(&err);
  return Code;
}

uint64_t sub_100018B68(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
      v2 = 17;
      break;
    case 2:
      v2 = 16;
      break;
    case 3:
      v2 = 94;
      break;
    case 4:
      v2 = 16;
      break;
    case 5:
      v2 = 80;
      break;
    case 6:
      v2 = 9;
      break;
    case 7:
      v2 = 9;
      break;
    case 8:
      v2 = 3;
      break;
    case 9:
      v2 = 22;
      break;
    case 10:
      v2 = 45;
      break;
    case 11:
      v2 = 22;
      break;
    case 12:
      v2 = 80;
      break;
    case 14:
      v2 = 28;
      break;
    case 15:
      v2 = 70;
      break;
    case 16:
      v2 = -1;
      break;
    case 17:
      v2 = 17;
      break;
    case 18:
      v2 = 17;
      break;
    case 19:
      v2 = 83;
      break;
    case 20:
      v2 = 13;
      break;
    case 21:
      v2 = 84;
      break;
    case 22:
      v2 = 22;
      break;
    case 23:
      v2 = 54;
      break;
    case 24:
      v2 = 12;
      break;
    case 25:
      v2 = 16;
      break;
    case 26:
      v2 = -1;
      break;
    case 27:
      v2 = 4;
      break;
    case 28:
      v2 = -1;
      break;
    case 29:
      v2 = 37;
      break;
    case 30:
      v2 = -1;
      break;
    case 31:
      v2 = -1;
      break;
    case 32:
      v2 = -1;
      break;
    case 33:
      v2 = -1;
      break;
    case 34:
      v2 = 80;
      break;
    case 35:
      v2 = 84;
      break;
    case 36:
      v2 = 80;
      break;
    case 37:
      v2 = 22;
      break;
    case 38:
      v2 = 80;
      break;
    default:
      v2 = -1;
      break;
  }

  return v2;
}

CFTypeRef sub_100018E24(const void *a1)
{
  if (a1)
  {
    return CFRetain(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018E70(uint64_t a1, int a2, const char **a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = a3;
  v10 = -1;
  v9 = 0;
  memset(__b, 0, sizeof(__b));
  __b[3] = off_100084100;
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
      JUMPOUT(0x10001907CLL);
    }

    switch(v10)
    {
      case '4':
        if (strlen(optarg) != 4)
        {
          errx(64, "4cc must be 4 character long");
        }

        LODWORD(__b[1]) = sub_10004B478(optarg);
        __b[2] = optarg;
        break;
      case ':':
        errx(64, "missing argument for option: %s", *v7);
      case '?':
        errx(64, "unknown option: %s", v6);
      case 'c':
        __b[3] = sub_1000192F0(optarg);
        if (!__b[3])
        {
          errx(64, "invalid crypto chain: %s", optarg);
        }

        sub_1000483C8(1uLL, "crypto chain: %s", optarg);
        sub_1000483C8(1uLL, "digest length = %lu", **(*__b[3] + 32));
        break;
      case 'r':
        __b[4] = optarg;
        sub_1000483C8(1uLL, "root certificate: %s", optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100019244);
    }
  }

  v13 += optind;
  v14 -= optind;
  if (v14 < 1)
  {
    errx(64, "a path to an Image4 file must be provided");
  }

  __b[0] = *v13;
  v12 = sub_100019390(__b);
  return sysexit_np();
}

uint64_t (**sub_1000192F0(const char *a1))()
{
  for (i = 0; i < 0x10; ++i)
  {
    if (!strcmp(*(&off_10007A3A8 + 2 * i + 1), a1))
    {
      return &off_10007A3A8 + 2 * i;
    }
  }

  return 0;
}

uint64_t sub_100019390(const char **a1)
{
  v17 = a1;
  v16 = -1;
  v15 = -1;
  bzero(v21, 0x1C8uLL);
  v14 = 6;
  memset(__b, 0, sizeof(__b));
  i = 0;
  v11 = 0;
  v10 = 0;
  v10 = sub_1000411D0(*v17[3]);
  v15 = open(*v17, 0);
  v20 = v15;
  if (v15 < 0)
  {
    v16 = *__error();
    warn("open: %s", *v17);
  }

  else
  {
    v16 = sub_10004B524(v15, __b);
    if (v16)
    {
      warnc(v16, "failed to read file");
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v9 = 4;
        if (i >= 4)
        {
          break;
        }

        v11 = &unk_10007A4A8 + 24 * i;
        v14 = (*(v11 + 1))(__b[0], __b[1], v21);
        sub_1000483C8(2uLL, "%s -> %d", *(v11 + 2), v14);
        if (!v14)
        {
          break;
        }
      }

      if (v14)
      {
        v16 = 79;
        warnx("file is not Image4");
      }

      else
      {
        if (!v17[4])
        {
          goto LABEL_32;
        }

        v8 = -1;
        memset(v7, 0, 0x38uLL);
        v6 = 0;
        v8 = open(v17[4], 0);
        v19 = v8;
        if (v8 < 0)
        {
          v16 = *__error();
          warn("open: %s", v17[4]);
        }

        else
        {
          v16 = sub_10004B524(v8, v7);
          if (v16)
          {
            warnc(v16, "failed to read: %s", v17[4]);
          }

          else
          {
            v6 = sub_10003AC40(v7, 0);
            v16 = sub_10003AE8C(v6);
            if (v16)
            {
              warnc(v16, "failed to parse root: %s", v17[4]);
            }

            else
            {
              v16 = sub_100041404(v10, &v6);
              if (v16)
              {
                warnc(v16, "failed to set root: %s", v17[4]);
              }
            }
          }
        }

        sub_10004C66C(v7, v1);
        sub_10003BF44(&v6, v2);
        v5 = v16 ? 2 : 0;
        sub_1000038DC(&v8);
        if (!v5)
        {
LABEL_32:
          if (((*v11 & 1) == 0 || (v16 = sub_100019820(v17, v21, v10)) == 0) && ((*v11 & 2) == 0 || (v16 = sub_10001A0D0(v17, v21, v10)) == 0))
          {
            v16 = 0;
          }
        }
      }
    }
  }

  sub_10004230C(&v10);
  sub_10004C66C(__b, v3);
  v18 = v16;
  sub_1000038DC(&v15);
  return v18;
}

uint64_t sub_100019820(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a1;
  __src = a2;
  v34 = a3;
  v33 = 35;
  v29 = a1;
  v30 = 0;
  v31 = 0;
  bzero(v44, 0x1C8uLL);
  memcpy(v44, __src, sizeof(v44));
  v28[0] = 0;
  v28[1] = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v32 = sub_10004EBEC(__src, __src + 40, __src + 56);
  if (v32)
  {
    v33 = sub_10004C9A8(v32);
    v24 = sub_10004C9DC(v32);
    warnx("failed to parse manifest properties: [%d %s]", v32, v24);
  }

  else
  {
    v32 = sub_100051400(__src + 5, v28);
    if (v32)
    {
      v33 = sub_10004C9A8(v32);
      v23 = sub_10004C9DC(v32);
      warnx("failed to init sequence: [%d %s]", v32, v23);
    }

    else
    {
      v26 = sub_1000419D8(v34, &v29);
      v25 = *v26[4];
      v27 = 0;
      while (v33 == 35)
      {
        memset(v22, 0, sizeof(v22));
        v20 = 0;
        v21 = 0;
        v19 = 0;
        v18 = 0;
        bzero(v43, 0x1C8uLL);
        memcpy(v43, v44, sizeof(v43));
        v32 = sub_10005142C(v28, v22);
        if (v32)
        {
          if (v32 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = sub_10004C9A8(v32);
            v5 = sub_10004C9DC(v32);
            warnx("failed to decode item at index %lu: [%d %s]", v27, v32, v5);
          }
        }

        else
        {
          v18 = v22[0];
          v19 = sub_10004B484(v22[0], &v20);
          sub_1000483C8(1uLL, "decoded: idx = %lu, tag = %llx, 4cc = %s", v27, v22[0], v19);
          if (!*(v36 + 16) || v18 == *(v36 + 8))
          {
            if (v18 == 1296125520)
            {
              sub_10004860C(0, 1uLL, "skipping %s", v19);
            }

            else
            {
              HIDWORD(v30) = v18;
              v31 = v19;
              if ((v30 & 1) == 0)
              {
                memset(__b, 0, sizeof(__b));
                memset(__str, 0, sizeof(__str));
                if (v25 > 0x40)
                {
                  v17 = 0;
                  memset(v40, 0, sizeof(v40));
                  v15 = 0;
                  v14 = 3;
                  oslog = &_os_log_default;
                  type = OS_LOG_TYPE_ERROR;
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v14 &= ~1u;
                  }

                  if (v14)
                  {
                    sub_10001ADE8(v39, *(*(v36 + 24) + 8), v25);
                    LODWORD(v4) = 22;
                    v15 = _os_log_send_and_compose_impl(v14, &v17, v40, 80, &_mh_execute_header, oslog, type, "unexpected failure: unsupported digest length: chain = %s, length = %lu", v39, v4);
                  }

                  v11 = v15;
                  v16 = v15;
                  _os_crash_msg();
                  __break(1u);
                  JUMPOUT(0x100019C84);
                }

                sub_1000483C8(1uLL, "digest length = %lu", v25);
                if (v25 > 0x30)
                {
                  v33 = 45;
                  warnx("Image4 max digest length is 384 bits/64 bytes");
                  goto LABEL_43;
                }

                v32 = sub_1000579B0(__src, __b, v25, v26);
                if (v32)
                {
                  v33 = sub_10004C9A8(v32);
                  v10 = sub_10004C9DC(v32);
                  warnx("failed to compute manifest digest: [%d %s]", v32, v10);
                  goto LABEL_43;
                }

                sub_100049764(__str, __b, v25);
                sub_10004860C(__stdoutp, 0, "manifest digest = %s", __str);
                if (qword_100084858)
                {
                  sub_10004860C(__stdoutp, 0, "tss server version = %s", qword_100084858);
                }
              }

              v32 = sub_10004F1C0(v18, v43, sub_10001AE38, v26, *(v34 + 168));
              if (v32 == -1)
              {
                v33 = 80;
                v7 = sub_10004C9DC(-1);
                if (*(v34 + 160))
                {
                  warnx("manifest failed trust evaluation: ct error = %#x: [%d %s]", *(*(v34 + 160) + 32), v32, v7);
                }

                else
                {
                  warnx("manifest failed trust evaluation: ct error = %#x: [%d %s]", -1431655766, v32, v7);
                }

                goto LABEL_43;
              }

              if (v32)
              {
                if (v32 == 1)
                {
                  v9 = 0;
                  memset(v38, 0, sizeof(v38));
                  v8 = 3;
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v8 = 2;
                  }

                  sub_100003120(v37, v19);
                  _os_log_send_and_compose_impl(v8, &v9, v38, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: object not found: %s", v37);
                  _os_crash_msg();
                  __break(1u);
                  JUMPOUT(0x100019F1CLL);
                }

                v6 = sub_10004C9DC(v32);
                warnx("Img4DecodePerformTrustEvaluation: [%d %s]", v32, v6);
                goto LABEL_43;
              }

              LOWORD(v30) = 1;
            }
          }

          else
          {
            sub_10004860C(0, 1uLL, "object not %s; skipping", *(v36 + 16));
          }
        }

        ++v27;
      }

      if ((v30 & 1) == 0)
      {
        v33 = 2;
        warnx("manifest does not contain object: %s", *(v36 + 16));
      }
    }
  }

LABEL_43:
  sub_10004212C(v34, v26);
  return v33;
}

uint64_t sub_10001A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = 35;
  v34 = 6;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  memset(__str, 0, sizeof(__str));
  v23 = 0;
  v24 = sub_1000419D8(v36, 0);
  v23 = **(*(v36 + 32) + 32);
  if (v23 > 0x30)
  {
    v22 = 0;
    memset(v56, 0, sizeof(v56));
    v21 = 3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = 2;
    }

    sub_10001ADE8(v55, *(*(v38 + 24) + 8), v23);
    _os_log_send_and_compose_impl(v21, &v22, v56, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: unsupported digest length: chain = %s, length = %lu", v55, 22);
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001A2A8);
  }

  v34 = sub_10004ED98(v37, &v33);
  if (v34)
  {
    v35 = sub_10004C9A8(v34);
    v20 = sub_10004C9DC(v34);
    warnx("failed to get payload type: [%d %s]", v34, v20);
  }

  else
  {
    v30 = sub_10004B484(v33, &v31);
    sub_1000483C8(2uLL, "%#x -> %s", v33, v30);
    if (!*(v38 + 16) || v33 == *(v38 + 8))
    {
      v34 = sub_10004EDF8(v37, &v28);
      if (v34)
      {
        v35 = sub_10004C9A8(v34);
        v19 = sub_10004C9DC(v34);
        warnx("failed to get payload version: [%d %s]", v34, v19);
      }

      else
      {
        sub_1000483C8(2uLL, "%s version length = %lu", v30, v29);
        v17 = v29 + 1;
        if (_dispatch_is_multithreaded())
        {
          v54 = 1;
          v53 = v17;
          v52 = 0;
          while (1)
          {
            v52 = malloc_type_calloc(v54, v53, 0x8A375538uLL);
            if (v52)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v18 = v52;
        }

        else
        {
          count = 1;
          size = v17;
          v18 = malloc_type_calloc(1uLL, v17, 0x8709206FuLL);
          v51 = "known-constant allocation";
          v50 = v18;
          v49 = v17;
          if (!v18)
          {
            v48 = 0;
            memset(v60, 0, sizeof(v60));
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
              v12 = v45;
              v13 = v44;
              v14 = v43;
              v10 = v51;
              v11 = v49;
              v3 = __error();
              v4 = strerror(*v3);
              sub_1000031B0(v59, v10, v11, v4);
              LODWORD(v7) = 32;
              v42 = _os_log_send_and_compose_impl(v12, &v48, v60, 80, &_mh_execute_header, v13, v14, "allocation failed: obj = %s, size = %lu, error = %s", v59, v7, v8);
              v46 = v42;
            }

            v41 = v46;
            v47 = v46;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10001A5C8);
          }
        }

        v27 = v18;
        __strlcpy_chk();
        sub_1000483C8(2uLL, "%s version = %s", v30, v18);
        v34 = sub_10004ED54(v37, &v25);
        if (v34)
        {
          v35 = sub_10004C9A8(v34);
          v16 = sub_10004C9DC(v34);
          warnx("failed to get payload: [%d %s]", v34, v16);
        }

        else
        {
          sub_1000483C8(2uLL, "%s length = %lu", v30, v26);
          sub_1000578B0(v37, __b, v23, **(v38 + 24));
          v34 = v5;
          if (v5)
          {
            v35 = sub_10004C9A8(v34);
            v15 = sub_10004C9DC(v34);
            warnx("failed to compute payload hash: [%d %s]", v34, v15);
          }

          else
          {
            sub_100049764(__str, __b, v23);
            sub_1000483C8(2uLL, "%s digest = %s", v30, __str);
            sub_10004860C(__stdoutp, 0, "payload digest = %s", __str);
            sub_10004860C(__stdoutp, 0, "    4cc = %s", v30);
            sub_10004860C(__stdoutp, 0, "    version = %s", v27);
            sub_10004860C(__stdoutp, 0, "    length = %lu", v26);
            v35 = 0;
          }
        }
      }
    }

    else
    {
      v35 = 79;
      warnx("payload not of type: %s", *(v38 + 16));
    }
  }

  sub_10004212C(v36, v24);
  v9 = v35;
  sub_100002DE4(&v27);
  return v9;
}

uint64_t sub_10001A898(const UInt8 *a1, unint64_t a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = 6;
  v26 = 0;
  v25 = a2;
  v24 = 0;
  format = 0;
  v22 = 0;
  error = 0;
  v20 = 0;
  Value = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  i = 0;
  v14 = 0;
  if (a2 <= 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = CFDataCreate(0, v30, v25);
    sub_1000173C8(v26, "CFData");
    v24 = CFPropertyListCreateWithData(0, v26, v22, &format, &error);
    if (v24)
    {
      v11 = 0;
      v37 = v24;
      v36 = &CFDictionaryGetTypeID;
      v6 = CFGetTypeID(v24);
      if (v6 == (v36)())
      {
        v11 = v24;
      }

      v20 = v11;
      if (v11)
      {
        v24 = 0;
        Value = CFDictionaryGetValue(v20, @"ApImg4Ticket");
        if (Value)
        {
          v10 = 0;
          v35 = Value;
          v34 = &CFDataGetTypeID;
          v5 = CFGetTypeID(Value);
          if (v5 == (v34)())
          {
            v10 = Value;
          }

          v18 = v10;
          if (v10)
          {
            Value = 0;
            for (i = 0; i < 4; ++i)
            {
              v14 = (&unk_10007A4A8 + 24 * i);
              if (v14[1] != sub_10001A898)
              {
                BytePtr = CFDataGetBytePtr(v18);
                Length = CFDataGetLength(v18);
                if (Length < 0)
                {
                  _os_crash();
                  __break(1u);
                  JUMPOUT(0x10001AC28);
                }

                v8 = Length;
                sub_1000483C8(2uLL, "ApImg4Ticket length = %lu", Length);
                v27 = v14[1](BytePtr, v8, v28);
                sub_1000483C8(2uLL, "%s -> %d", v14[2], v27);
                if (!v27)
                {
                  break;
                }
              }
            }

            if (v27)
            {
              v27 = 3;
              warnx("ApImg4Ticket is not Image4 data");
            }

            else
            {
              qword_100084850 = CFRetain(v18);
              v17 = CFDictionaryGetValue(v20, @"@ServerVersion");
              if (v17)
              {
                v7 = 0;
                v33 = v17;
                v32 = &CFStringGetTypeID;
                v4 = CFGetTypeID(v17);
                if (v4 == (v32)())
                {
                  v7 = v17;
                }

                v16 = v7;
                if (v7)
                {
                  qword_100084858 = sub_100018014(v16);
                }
              }
            }
          }

          else
          {
            v27 = 3;
            warnx("ApImg4Ticket is not a data object");
          }
        }

        else
        {
          v27 = 3;
          warnx("plist has no ApImg4Ticket");
        }
      }

      else
      {
        v27 = 3;
        warnx("plist root must be a dictionary");
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v13 = CFErrorCopyDescription(error);
      sub_1000173C8(v13, "CFString");
      v12 = sub_100018014(v13);
      v27 = 3;
      sub_1000483C8(1uLL, "could not decode as plist: %s", v12);
      sub_100002DE4(&v12);
      sub_100006B40(&v13);
    }
  }

  else
  {
    v27 = 7;
  }

  v31 = v27;
  sub_100006B40(&v20);
  sub_100006B40(&error);
  sub_100006B40(&v24);
  sub_100006B40(&v26);
  return v31;
}

uint64_t sub_10001ADE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10001AE38(unsigned int a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return sub_10001AFAC(a1, a2, a3, a4);
  }

  else
  {
    return sub_10001AEB0(a1, a2, 0, a4);
  }
}

uint64_t sub_10001AEB0(unsigned int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v22 = a4;
  v24 = a4;
  v23 = a4;
  v21 = *(a4 + 40);
  v15 = *(v21 + 176);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if ((*(v15 + 8) & 1) == 0)
  {
    v12 = sub_10004B484(v19, &v13);
    v11 = sub_10001B0CC(v18, v19, v4, v5, v6, v7, v8, v9);
    sub_10004860C(__stdoutp, 0, "    %s = %s", v12, v11);
  }

  v20 = 0;
  sub_100002DE4(&v11);
  return v20;
}

uint64_t sub_10001AFAC(unsigned int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v21 = a4;
  v23 = a4;
  v22 = a4;
  v20 = *(a4 + 40);
  v15 = *(v20 + 176);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if ((*(v15 + 9) & 1) == 0)
  {
    sub_10004860C(__stdoutp, 0, "    %s =", *(v15 + 16));
    *(v15 + 9) = 1;
  }

  v12 = sub_10004B484(v19, &v13);
  v11 = sub_10001B0CC(v18, v19, v4, v5, v6, v7, v8, v9);
  sub_10004860C(__stdoutp, 0, "        %s = %s", v12, v11);
  sub_100002DE4(&v11);
  return 0;
}

char *sub_10001B0CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v39 = a2;
  v38 = 0;
  v37 = -1;
  v36 = 6;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v30 = a1[2];
  switch(v30)
  {
    case 1:
      v36 = sub_100057AFC(v40, v39, &v35);
      if (!v36)
      {
        v37 = asprintf(&v38, "%#x", v35 & 1);
        v76 = v37;
        if (v37 < 0)
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
            v27 = v72;
            v28 = oslog;
            v29 = type;
            v8 = __error();
            v9 = strerror(*v8);
            sub_100003120(v83, v9);
            v69 = _os_log_send_and_compose_impl(v27, &v75, __b, 80, &_mh_execute_header, v28, v29, "error printing buffer: %s", v83);
            v73 = v69;
          }

          v68 = v73;
          v74 = v73;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B2B4);
        }
      }

      break;
    case 2:
      v36 = sub_100057A98(v40, v39, &v34, a4, a5, a6, a7, a8);
      if (!v36)
      {
        v37 = asprintf(&v38, "%#llx", v34);
        v67 = v37;
        if (v37 < 0)
        {
          v66 = 0;
          memset(v82, 0, sizeof(v82));
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
            v24 = v63;
            v25 = v62;
            v26 = v61;
            v10 = __error();
            v11 = strerror(*v10);
            sub_100003120(v81, v11);
            v60 = _os_log_send_and_compose_impl(v24, &v66, v82, 80, &_mh_execute_header, v25, v26, "error printing buffer: %s", v81);
            v64 = v60;
          }

          v59 = v64;
          v65 = v64;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B41CLL);
        }
      }

      break;
    case 4:
      v36 = sub_10004EE3C(v40, v39, &v33, &v32);
      if (!v36)
      {
        v31 = 0;
        sub_100049834(&v31, v33, v32);
        v37 = asprintf(&v38, "%s", v31);
        v58 = v37;
        if (v37 < 0)
        {
          v57 = 0;
          memset(v80, 0, sizeof(v80));
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
            v21 = v54;
            v22 = v53;
            v23 = v52;
            v12 = __error();
            v13 = strerror(*v12);
            sub_100003120(v79, v13);
            v51 = _os_log_send_and_compose_impl(v21, &v57, v80, 80, &_mh_execute_header, v22, v23, "error printing buffer: %s", v79);
            v55 = v51;
          }

          v50 = v55;
          v56 = v55;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B5A0);
        }

        sub_100002DE4(&v31);
      }

      break;
    default:
      v14 = asprintf(&v38, "[unsupported type %#llx]", v40[2]);
      v37 = v14;
      v49 = v14;
      if (v14 < 0)
      {
        v48 = 0;
        memset(v78, 0, sizeof(v78));
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
          v18 = v45;
          v19 = v44;
          v20 = v43;
          v15 = __error();
          v16 = strerror(*v15);
          sub_100003120(v77, v16);
          v42 = _os_log_send_and_compose_impl(v18, &v48, v78, 80, &_mh_execute_header, v19, v20, "error printing buffer: %s", v77);
          v46 = v42;
        }

        v41 = v46;
        v47 = v46;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10001B6F4);
      }

      break;
  }

  return v38;
}
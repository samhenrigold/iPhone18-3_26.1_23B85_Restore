int *sub_100029530()
{
  if (sub_100032E5C("/var/db/.spindump_ignore_thermal_pressure"))
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  word_100117EC0 = word_100117EC0 & 0xFFFD | v0;
  if (byte_100117E80 == 1)
  {
    v1 = __error();
    v2 = *v1;
    v4 = sub_100035B80(v1, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v209 = (word_100117EC0 >> 1) & 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ignore_thermal_pressure:%d due to cookie file", buf, 8u);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ignore_thermal_pressure:%d due to cookie file", (word_100117EC0 >> 1) & 1);
    if (v7)
    {
      v9 = v7;
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0xA7329D5AuLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v11);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v9);
    }

    else
    {
      v13 = sub_100035B80(0, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3F80();
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
    }

    *__error() = v6;
  }

  if (sub_100032E5C("/var/db/.spindump_ignore_debugger"))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  word_100117EC0 = word_100117EC0 & 0xFFFB | v16;
  if (byte_100117E80 == 1)
  {
    v17 = __error();
    v18 = *v17;
    v20 = sub_100035B80(v17, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v209 = (word_100117EC0 >> 2) & 1;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ignore_debugger:%d due to cookie file", buf, 8u);
    }

    *__error() = v18;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v21 = *__error();
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ignore_debugger:%d due to cookie file", (word_100117EC0 >> 2) & 1);
    if (v22)
    {
      v24 = v22;
      v25 = CFStringGetCStringPtr(v22, 0x8000100u);
      if (v25)
      {
        v26 = v25;
        v27 = 0;
      }

      else
      {
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x924F3FF7uLL);
        CFStringGetCString(v24, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100117E88)
      {
        v30 = qword_100117E88;
      }

      else
      {
        v30 = __stderrp;
      }

      fprintf(v30, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      CFRelease(v24);
    }

    else
    {
      v28 = sub_100035B80(0, v23);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3FF8();
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
    }

    *__error() = v21;
  }

  if (qword_100117D48 != -1)
  {
    sub_1000A4070();
  }

  word_100117EC0 = word_100117EC0 & 0xFFFE | byte_100117D40;
  if (qword_100117D58 != -1)
  {
    sub_1000A4098();
  }

  if (byte_100117D50)
  {
    v31 = 8;
  }

  else
  {
    v31 = 0;
  }

  word_100117EC0 = word_100117EC0 & 0xFFF7 | v31;
  if (qword_100117D68 != -1)
  {
    sub_1000A40C0();
  }

  v32 = word_100117EC0;
  if (byte_100117D60)
  {
    v33 = 16;
  }

  else
  {
    v33 = 0;
  }

  word_100117EC0 = word_100117EC0 & 0xFFEF | v33;
  if ((v32 & 8) != 0)
  {
    if (byte_100117E80 == 1)
    {
      v34 = __error();
      v35 = *v34;
      v37 = sub_100035B80(v34, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Submissions suppressed", buf, 2u);
      }

      *__error() = v35;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v38 = *__error();
      v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submissions suppressed");
      if (v39)
      {
        v41 = v39;
        v42 = CFStringGetCStringPtr(v39, 0x8000100u);
        if (v42)
        {
          v43 = v42;
          v44 = 0;
        }

        else
        {
          v43 = malloc_type_calloc(0x400uLL, 1uLL, 0xC8712B7BuLL);
          CFStringGetCString(v41, v43, 1024, 0x8000100u);
          v44 = v43;
        }

        if (qword_100117E88)
        {
          v47 = qword_100117E88;
        }

        else
        {
          v47 = __stderrp;
        }

        fprintf(v47, "%s\n", v43);
        if (v44)
        {
          free(v44);
        }

        CFRelease(v41);
      }

      else
      {
        v45 = sub_100035B80(0, v40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1000A40E8();
        }

        if (qword_100117E88)
        {
          v46 = qword_100117E88;
        }

        else
        {
          v46 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v46);
      }

      *__error() = v38;
    }
  }

  if ((word_100117EC0 & 0x10) != 0)
  {
    if (byte_100117E80 == 1)
    {
      v48 = __error();
      v49 = *v48;
      v51 = sub_100035B80(v48, v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Submissions forced enabled", buf, 2u);
      }

      *__error() = v49;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v52 = *__error();
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submissions forced enabled");
      if (v53)
      {
        v55 = v53;
        v56 = CFStringGetCStringPtr(v53, 0x8000100u);
        if (v56)
        {
          v57 = v56;
          v58 = 0;
        }

        else
        {
          v57 = malloc_type_calloc(0x400uLL, 1uLL, 0x79148E5DuLL);
          CFStringGetCString(v55, v57, 1024, 0x8000100u);
          v58 = v57;
        }

        if (qword_100117E88)
        {
          v61 = qword_100117E88;
        }

        else
        {
          v61 = __stderrp;
        }

        fprintf(v61, "%s\n", v57);
        if (v58)
        {
          free(v58);
        }

        CFRelease(v55);
      }

      else
      {
        v59 = sub_100035B80(0, v54);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4128();
        }

        if (qword_100117E88)
        {
          v60 = qword_100117E88;
        }

        else
        {
          v60 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
      }

      *__error() = v52;
    }
  }

  if (word_100117EC0)
  {
    qword_100117E98 = 0x4059000000000000;
    if (byte_100117E80 == 1)
    {
      v62 = __error();
      v63 = *v62;
      v65 = sub_100035B80(v62, v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v209 = qword_100117E98;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Apple Internal: reporting full spins %.1f%% of the time", buf, 0xCu);
      }

      *__error() = v63;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 1)
    {
      v66 = *__error();
      v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Apple Internal: reporting full spins %.1f%% of the time", qword_100117E98);
      if (v67)
      {
        v69 = v67;
        v70 = CFStringGetCStringPtr(v67, 0x8000100u);
        if (v70)
        {
          v71 = v70;
          v72 = 0;
        }

        else
        {
          v71 = malloc_type_calloc(0x400uLL, 1uLL, 0x51B025DCuLL);
          CFStringGetCString(v69, v71, 1024, 0x8000100u);
          v72 = v71;
        }

        if (qword_100117E88)
        {
          v75 = qword_100117E88;
        }

        else
        {
          v75 = __stderrp;
        }

        fprintf(v75, "%s\n", v71);
        if (v72)
        {
          free(v72);
        }

        CFRelease(v69);
      }

      else
      {
        v73 = sub_100035B80(0, v68);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4168();
        }

        if (qword_100117E88)
        {
          v74 = qword_100117E88;
        }

        else
        {
          v74 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v74);
      }

      *__error() = v66;
    }
  }

  else
  {
    sub_100054640(@"spindump_percent_full_spin_reports", &qword_100117E98, 0.0);
  }

  v76 = 25.0;
  if (word_100117EC0)
  {
    v76 = 100.0;
  }

  sub_100054640(@"io_exception_sampling_percentage", &qword_100117EB0, v76);
  v77 = 5.0;
  if (word_100117EC0)
  {
    v77 = 100.0;
  }

  sub_100054640(@"cpu_resource_1st_party_sampling_percentage", &qword_100117EB8, v77);
  sub_100054640(@"spindump_percent_short_spins_reported", &unk_100117EA0, 10.0);
  sub_100054640(@"spindump_threshold_defining_short_spins_s", &unk_100117EA8, 2.0);
  word_100117EC0 &= 0xFF3Fu;
  if (byte_100117E80 == 1)
  {
    v78 = __error();
    v79 = *v78;
    v81 = sub_100035B80(v78, v80);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A41E4();
    }

    *__error() = v79;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v82 = *__error();
    v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit spins:%d hangs:%d unavilable on this platform", (word_100117EC0 >> 6) & 1, (word_100117EC0 >> 7) & 1);
    if (v83)
    {
      v85 = v83;
      v86 = CFStringGetCStringPtr(v83, 0x8000100u);
      if (v86)
      {
        v87 = v86;
        v88 = 0;
      }

      else
      {
        v87 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2E3C680uLL);
        CFStringGetCString(v85, v87, 1024, 0x8000100u);
        v88 = v87;
      }

      if (qword_100117E88)
      {
        v91 = qword_100117E88;
      }

      else
      {
        v91 = __stderrp;
      }

      fprintf(v91, "%s\n", v87);
      if (v88)
      {
        free(v88);
      }

      CFRelease(v85);
    }

    else
    {
      v89 = sub_100035B80(0, v84);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4264();
      }

      if (qword_100117E88)
      {
        v90 = qword_100117E88;
      }

      else
      {
        v90 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v90);
    }

    *__error() = v82;
  }

  word_100117EC0 = (word_100117EC0 & 0xBCFF | (((word_100117EC0 >> 3) & 1) << 8) & 0xBDFF | (((word_100117EC0 >> 3) & 1) << 14) | (((word_100117EC0 >> 3) & 1) << 9)) ^ 0x4300;
  if (byte_100117E80 == 1)
  {
    v92 = __error();
    v93 = *v92;
    v95 = sub_100035B80(v92, v94);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v209 = HIBYTE(word_100117EC0) & 1;
      *&v209[4] = 1024;
      *&v209[6] = (word_100117EC0 >> 9) & 1;
      v210 = 1024;
      v211 = (word_100117EC0 >> 3) & 1;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Submit resource reports cpu:%d io:%d due to suppression:%d", buf, 0x14u);
    }

    *__error() = v93;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v96 = *__error();
    v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit resource reports cpu:%d io:%d due to suppression:%d", HIBYTE(word_100117EC0) & 1, (word_100117EC0 >> 9) & 1, (word_100117EC0 >> 3) & 1);
    if (v97)
    {
      v99 = v97;
      v100 = CFStringGetCStringPtr(v97, 0x8000100u);
      if (v100)
      {
        v101 = v100;
        v102 = 0;
      }

      else
      {
        v101 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE35C379uLL);
        CFStringGetCString(v99, v101, 1024, 0x8000100u);
        v102 = v101;
      }

      if (qword_100117E88)
      {
        v105 = qword_100117E88;
      }

      else
      {
        v105 = __stderrp;
      }

      fprintf(v105, "%s\n", v101);
      if (v102)
      {
        free(v102);
      }

      CFRelease(v99);
    }

    else
    {
      v103 = sub_100035B80(0, v98);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000A42E4();
      }

      if (qword_100117E88)
      {
        v104 = qword_100117E88;
      }

      else
      {
        v104 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
    }

    *__error() = v96;
  }

  word_100117EC0 = ((word_100117EC0 << 8) & 0x800 | word_100117EC0 & 0xE3FF | (word_100117EC0 << 7) & 0x400 | (word_100117EC0 << 9) & 0x1000) ^ 0x1C00;
  if (byte_100117E80 == 1)
  {
    v106 = __error();
    v107 = *v106;
    v109 = sub_100035B80(v106, v108);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      *v209 = (word_100117EC0 >> 10) & 1;
      *&v209[4] = 1024;
      *&v209[6] = (word_100117EC0 >> 11) & 1;
      v210 = 1024;
      v211 = (word_100117EC0 >> 12) & 1;
      v212 = 1024;
      v213 = (word_100117EC0 >> 3) & 1;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_INFO, "Submit systemstats:%d sleep/wake failure:%d watchdog:%d due to suppression:%d", buf, 0x1Au);
    }

    *__error() = v107;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v110 = *__error();
    v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit systemstats:%d sleep/wake failure:%d watchdog:%d due to suppression:%d", (word_100117EC0 >> 10) & 1, (word_100117EC0 >> 11) & 1, (word_100117EC0 >> 12) & 1, (word_100117EC0 >> 3) & 1);
    if (v111)
    {
      v113 = v111;
      v114 = CFStringGetCStringPtr(v111, 0x8000100u);
      if (v114)
      {
        v115 = v114;
        v116 = 0;
      }

      else
      {
        v115 = malloc_type_calloc(0x400uLL, 1uLL, 0x809ED32AuLL);
        CFStringGetCString(v113, v115, 1024, 0x8000100u);
        v116 = v115;
      }

      if (qword_100117E88)
      {
        v119 = qword_100117E88;
      }

      else
      {
        v119 = __stderrp;
      }

      fprintf(v119, "%s\n", v115);
      if (v116)
      {
        free(v116);
      }

      CFRelease(v113);
    }

    else
    {
      v117 = sub_100035B80(0, v112);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4370();
      }

      if (qword_100117E88)
      {
        v118 = qword_100117E88;
      }

      else
      {
        v118 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v118);
    }

    *__error() = v110;
  }

  word_100117EC0 &= ~0x2000u;
  if (byte_100117E80 == 1)
  {
    v120 = __error();
    v121 = *v120;
    v123 = sub_100035B80(v120, v122);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A440C();
    }

    *__error() = v121;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v124 = *__error();
    v125 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit service watchdog:%d unavilable on this platform", (word_100117EC0 >> 13) & 1);
    if (v125)
    {
      v127 = v125;
      v128 = CFStringGetCStringPtr(v125, 0x8000100u);
      if (v128)
      {
        v129 = v128;
        v130 = 0;
      }

      else
      {
        v129 = malloc_type_calloc(0x400uLL, 1uLL, 0xAC3B3707uLL);
        CFStringGetCString(v127, v129, 1024, 0x8000100u);
        v130 = v129;
      }

      if (qword_100117E88)
      {
        v133 = qword_100117E88;
      }

      else
      {
        v133 = __stderrp;
      }

      fprintf(v133, "%s\n", v129);
      if (v130)
      {
        free(v130);
      }

      CFRelease(v127);
    }

    else
    {
      v131 = sub_100035B80(0, v126);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4484();
      }

      if (qword_100117E88)
      {
        v132 = qword_100117E88;
      }

      else
      {
        v132 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v132);
    }

    *__error() = v124;
  }

  if (word_100117EC0)
  {
    v134 = 0;
  }

  else
  {
    v134 = 2;
  }

  byte_100117E94 = v134 | byte_100117E94 & 0xFC;
  if (byte_100117E80 == 1)
  {
    v135 = __error();
    v136 = *v135;
    v138 = sub_100035B80(v135, v137);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v209 = (byte_100117E94 >> 1) & 1;
      *&v209[4] = 1024;
      *&v209[6] = word_100117EC0 & 1;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "Avoid affecting audio:%d due to internal:%d", buf, 0xEu);
    }

    *__error() = v136;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v139 = *__error();
    v140 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoid affecting audio:%d due to internal:%d", (byte_100117E94 >> 1) & 1, word_100117EC0 & 1);
    if (v140)
    {
      v142 = v140;
      v143 = CFStringGetCStringPtr(v140, 0x8000100u);
      if (v143)
      {
        v144 = v143;
        v145 = 0;
      }

      else
      {
        v144 = malloc_type_calloc(0x400uLL, 1uLL, 0x891B66FuLL);
        CFStringGetCString(v142, v144, 1024, 0x8000100u);
        v145 = v144;
      }

      if (qword_100117E88)
      {
        v148 = qword_100117E88;
      }

      else
      {
        v148 = __stderrp;
      }

      fprintf(v148, "%s\n", v144);
      if (v145)
      {
        free(v145);
      }

      CFRelease(v142);
    }

    else
    {
      v146 = sub_100035B80(0, v141);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
      {
        sub_1000A44FC();
      }

      if (qword_100117E88)
      {
        v147 = qword_100117E88;
      }

      else
      {
        v147 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v147);
    }

    *__error() = v139;
  }

  if (sub_100032E5C("/var/db/.spindump_enable_symbolication"))
  {
    v149 = 8;
  }

  else
  {
    v149 = 0;
  }

  byte_100117E94 = byte_100117E94 & 0xF7 | v149;
  if (byte_100117E80 == 1)
  {
    v150 = __error();
    v151 = *v150;
    v153 = sub_100035B80(v150, v152);
    if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v209 = (byte_100117E94 >> 3) & 1;
      *&v209[4] = 1024;
      *&v209[6] = *v209;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "Symbolicate:%d due to enable symbolication file existing:%d", buf, 0xEu);
    }

    *__error() = v151;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v154 = *__error();
    v155 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Symbolicate:%d due to enable symbolication file existing:%d", (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 3) & 1);
    if (v155)
    {
      v157 = v155;
      v158 = CFStringGetCStringPtr(v155, 0x8000100u);
      if (v158)
      {
        v159 = v158;
        v160 = 0;
      }

      else
      {
        v159 = malloc_type_calloc(0x400uLL, 1uLL, 0x2D3FA092uLL);
        CFStringGetCString(v157, v159, 1024, 0x8000100u);
        v160 = v159;
      }

      if (qword_100117E88)
      {
        v163 = qword_100117E88;
      }

      else
      {
        v163 = __stderrp;
      }

      fprintf(v163, "%s\n", v159);
      if (v160)
      {
        free(v160);
      }

      CFRelease(v157);
    }

    else
    {
      v161 = sub_100035B80(0, v156);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4594();
      }

      if (qword_100117E88)
      {
        v162 = qword_100117E88;
      }

      else
      {
        v162 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v162);
    }

    *__error() = v154;
  }

  byte_100117E94 |= 0x10u;
  if (byte_100117E80 == 1)
  {
    v164 = __error();
    v165 = *v164;
    v167 = sub_100035B80(v164, v166);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v209 = (byte_100117E94 >> 4) & 1;
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "NoBulkSymbolication:%d", buf, 8u);
    }

    *__error() = v165;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v168 = *__error();
    v169 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NoBulkSymbolication:%d", (byte_100117E94 >> 4) & 1);
    if (v169)
    {
      v171 = v169;
      v172 = CFStringGetCStringPtr(v169, 0x8000100u);
      if (v172)
      {
        v173 = v172;
        v174 = 0;
      }

      else
      {
        v173 = malloc_type_calloc(0x400uLL, 1uLL, 0x5082ADBBuLL);
        CFStringGetCString(v171, v173, 1024, 0x8000100u);
        v174 = v173;
      }

      if (qword_100117E88)
      {
        v177 = qword_100117E88;
      }

      else
      {
        v177 = __stderrp;
      }

      fprintf(v177, "%s\n", v173);
      if (v174)
      {
        free(v174);
      }

      CFRelease(v171);
    }

    else
    {
      v175 = sub_100035B80(0, v170);
      if (os_log_type_enabled(v175, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4620();
      }

      if (qword_100117E88)
      {
        v176 = qword_100117E88;
      }

      else
      {
        v176 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v176);
    }

    *__error() = v168;
  }

  byte_100117E94 &= ~4u;
  if (byte_100117E80 == 1)
  {
    v178 = __error();
    v179 = *v178;
    v181 = sub_100035B80(v178, v180);
    if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v209 = (byte_100117E94 >> 2) & 1;
      _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_INFO, "UseDsymForUUID:%d", buf, 8u);
    }

    *__error() = v179;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v182 = *__error();
    v183 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"UseDsymForUUID:%d", (byte_100117E94 >> 2) & 1);
    if (v183)
    {
      v185 = v183;
      v186 = CFStringGetCStringPtr(v183, 0x8000100u);
      if (v186)
      {
        v187 = v186;
        v188 = 0;
      }

      else
      {
        v187 = malloc_type_calloc(0x400uLL, 1uLL, 0x9A2E63F5uLL);
        CFStringGetCString(v185, v187, 1024, 0x8000100u);
        v188 = v187;
      }

      if (qword_100117E88)
      {
        v191 = qword_100117E88;
      }

      else
      {
        v191 = __stderrp;
      }

      fprintf(v191, "%s\n", v187);
      if (v188)
      {
        free(v188);
      }

      CFRelease(v185);
    }

    else
    {
      v189 = sub_100035B80(0, v184);
      if (os_log_type_enabled(v189, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4698();
      }

      if (qword_100117E88)
      {
        v190 = qword_100117E88;
      }

      else
      {
        v190 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v190);
    }

    *__error() = v182;
  }

  result = sub_100032E5C("/var/db/.spindump_disable_exclaves");
  if (result)
  {
    v193 = 32;
  }

  else
  {
    v193 = 0;
  }

  byte_100117E94 = byte_100117E94 & 0xDF | v193;
  if (byte_100117E80 == 1)
  {
    v194 = __error();
    v195 = *v194;
    v197 = sub_100035B80(v194, v196);
    if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v209 = (byte_100117E94 >> 5) & 1;
      _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_INFO, "NoExclaves:%d", buf, 8u);
    }

    result = __error();
    *result = v195;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v198 = *__error();
    v199 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NoExclaves:%d", (byte_100117E94 >> 5) & 1);
    if (v199)
    {
      v201 = v199;
      v202 = CFStringGetCStringPtr(v199, 0x8000100u);
      if (v202)
      {
        v203 = v202;
        v204 = 0;
      }

      else
      {
        v203 = malloc_type_calloc(0x400uLL, 1uLL, 0x4C239179uLL);
        CFStringGetCString(v201, v203, 1024, 0x8000100u);
        v204 = v203;
      }

      if (qword_100117E88)
      {
        v207 = qword_100117E88;
      }

      else
      {
        v207 = __stderrp;
      }

      fprintf(v207, "%s\n", v203);
      if (v204)
      {
        free(v204);
      }

      CFRelease(v201);
    }

    else
    {
      v205 = sub_100035B80(0, v200);
      if (os_log_type_enabled(v205, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4710();
      }

      if (qword_100117E88)
      {
        v206 = qword_100117E88;
      }

      else
      {
        v206 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v206);
    }

    result = __error();
    *result = v198;
  }

  return result;
}

void sub_10002B0BC(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B198;
  v3[3] = &unk_1001091D8;
  v4 = a1;
  v1 = v4;
  v2 = objc_retainBlock(v3);
  (v2[2])(v2, 2);
  (v2[2])(v2, 15);
  (v2[2])(v2, 1);
  (v2[2])(v2, 3);
}

void sub_10002B198(uint64_t a1, int a2)
{
  v4 = a2;
  v5 = dispatch_get_global_queue(25, 2uLL);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, v4, 0, v5);

  if (!v6)
  {
    sub_1000B4908(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  signal(a2, 1);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000778EC;
  v17[3] = &unk_100109960;
  v15 = *(a1 + 32);
  v18 = v6;
  v19 = v15;
  v16 = v6;
  dispatch_source_set_event_handler(v16, v17);
  dispatch_resume(v16);
}

void sub_10002B294()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("com.apple.spindump.communication", v1);
  if (!v2)
  {
    sub_1000A4FEC(0, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = v2;
  mach_service = xpc_connection_create_mach_service("com.apple.spindump", v2, 1uLL);
  v12 = qword_100117D70;
  qword_100117D70 = mach_service;

  v13 = qword_100117D70;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002B4AC;
  handler[3] = &unk_100109220;
  v16 = v10;
  v14 = v10;
  xpc_connection_set_event_handler(v13, handler);
  xpc_connection_resume(qword_100117D70);
  sub_100062D2C();
}

uint64_t sub_10002B3E4()
{
  if (qword_100117DC8 != -1)
  {
    sub_1000B46E0();
  }

  if (qword_100117520)
  {
    v2 = 0;
    v1 = 4;
    if (sysctl(dword_100117DB4, qword_100117520, &v2, &v1, 0, 0))
    {
      sub_1000B46F4();
    }

    else if (v2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10002B470(id a1)
{
  if (sysctlnametomib("security.mac.sandbox.audio_active", dword_100117DB4, &qword_100117520))
  {
    sub_1000B4AE8();
  }
}

void sub_10002B4AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (byte_100117E80 == 1)
    {
      v9 = __error();
      v10 = *v9;
      v12 = sub_100035B80(v9, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A51DC(v3, v12);
      }

      *__error() = v10;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v14 = *__error();
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got xpc error for peer: %s", string);
      if (v16)
      {
        v18 = v16;
        CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
        if (CStringPtr)
        {
          v20 = CStringPtr;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xBE07064AuLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100117E88)
        {
          v24 = qword_100117E88;
        }

        else
        {
          v24 = __stderrp;
        }

        fprintf(v24, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        CFRelease(v18);
      }

      else
      {
        v22 = sub_100035B80(0, v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5270(v3, _xpc_error_key_description);
        }

        if (qword_100117E88)
        {
          v23 = qword_100117E88;
        }

        else
        {
          v23 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
      }

      *__error() = v14;
    }
  }

  else if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    pid = xpc_connection_get_pid(v3);
    euid = xpc_connection_get_euid(v3);
    v6 = xpc_connection_copy_entitlement_value();
    v7 = v6;
    v8 = v6 && xpc_get_type(v6) == &_xpc_type_BOOL && xpc_BOOL_get_value(v7);
    xpc_connection_set_target_queue(v3, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000551FC;
    handler[3] = &unk_1001091F8;
    v26 = pid;
    v27 = euid;
    v28 = v8;
    v29 = 0;
    v30 = 0;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }
}

size_t sub_10002B7B8(char *a1, size_t a2, int a3, int8x16_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    memset(&v18, 0, sizeof(v18));
    v17 = (kCFAbsoluteTimeIntervalSince1970 + *a4.i64);
    localtime_r(&v17, &v18);
    result = strftime(a1, a2, "%Y-%m-%d %T", &v18);
    if (result)
    {
      v9 = result;
      v10 = &a1[result];
      v11 = a2 - result;
      if (a3)
      {
        *v8.i64 = *a4.i64 - trunc(*a4.i64);
        v12.f64[0] = NAN;
        v12.f64[1] = NAN;
        v8.i64[0] = vbslq_s8(vnegq_f64(v12), v8, a4).i64[0];
        if (*v8.i64 > 0.0)
        {
          snprintf(&__str, 0x10uLL, "%f", *v8.i64);
          v13 = strlcpy(v10, v20, v11);
          v14 = v11 > v13;
          v11 -= v13;
          if (!v14)
          {
            return a2 - 1;
          }

          v9 += v13;
          v10 += v13;
        }
      }

      v15 = strftime(v10, v11, " %z", &v18);
      if (!v15)
      {
        v10[v9] = 0;
      }

      return v15 + v9;
    }

    else
    {
      *a1 = 0;
    }
  }

  return result;
}

const char *sub_10002B924(unsigned int a1, int a2)
{
  v2 = "hang";
  if (a2)
  {
    v2 = "hang-lite";
  }

  if (a1 <= 0xF)
  {
    v3 = &off_100109500;
    if (a2)
    {
      v3 = &off_100109480;
    }

    return v3[a1];
  }

  return v2;
}

void sub_10002B968(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a5;
  v173 = a4;
  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v21 = __error();
      v22 = *v21;
      v24 = sub_100035B80(v21, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136447490;
        v192 = sub_100035B20(a1);
        v193 = 1024;
        *v194 = a1;
        *&v194[4] = 2048;
        *&v194[6] = a3;
        *&v194[14] = 2048;
        *&v194[16] = a6;
        *&v194[24] = 2048;
        *&v194[26] = a7;
        v195 = 2048;
        v196 = a4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x3Au);
      }

      *__error() = v22;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_52;
    }

    v26 = *__error();
    v27 = sub_100035B20(a1);
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", v27, a1, a3, *&a6, *&a7, a4);
    if (v28)
    {
      v30 = v28;
      CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
      if (CStringPtr)
      {
        v32 = CStringPtr;
        v33 = 0;
      }

      else
      {
        v32 = malloc_type_calloc(0x400uLL, 1uLL, 0xE9E5874DuLL);
        CFStringGetCString(v30, v32, 1024, 0x8000100u);
        v33 = v32;
      }

      if (qword_100117E88)
      {
        v46 = qword_100117E88;
      }

      else
      {
        v46 = __stderrp;
      }

      fprintf(v46, "%s\n", v32);
      if (v33)
      {
        free(v33);
      }

LABEL_50:
      CFRelease(v30);
      goto LABEL_51;
    }

    v44 = sub_100035B80(0, v29);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      v169 = sub_100035B20(a1);
      *buf = 136316418;
      v192 = v169;
      v193 = 1024;
      *v194 = a1;
      *&v194[4] = 2048;
      *&v194[6] = a3;
      *&v194[14] = 2048;
      *&v194[16] = a6;
      *&v194[24] = 2048;
      *&v194[26] = a7;
      v195 = 2048;
      v196 = a4;
      _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x3Au);
    }

    if (qword_100117E88)
    {
      v45 = qword_100117E88;
    }

    else
    {
      v45 = __stderrp;
    }

    goto LABEL_31;
  }

  if (byte_100117E80)
  {
    v34 = __error();
    v35 = *v34;
    v37 = sub_100035B80(v34, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v192 = a3;
      v193 = 2048;
      *v194 = a6;
      *&v194[8] = 2048;
      *&v194[10] = a7;
      *&v194[18] = 2048;
      *&v194[20] = a4;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x2Au);
    }

    *__error() = v35;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v26 = *__error();
    v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", a3, *&a6, *&a7, a4);
    if (v39)
    {
      v30 = v39;
      v41 = CFStringGetCStringPtr(v39, 0x8000100u);
      if (v41)
      {
        v42 = v41;
        v43 = 0;
      }

      else
      {
        v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xE9E5874DuLL);
        CFStringGetCString(v30, v42, 1024, 0x8000100u);
        v43 = v42;
      }

      if (qword_100117E88)
      {
        v48 = qword_100117E88;
      }

      else
      {
        v48 = __stderrp;
      }

      fprintf(v48, "%s\n", v42);
      if (v43)
      {
        free(v43);
      }

      goto LABEL_50;
    }

    v47 = sub_100035B80(0, v40);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218752;
      v192 = a3;
      v193 = 2048;
      *v194 = a6;
      *&v194[8] = 2048;
      *&v194[10] = a7;
      *&v194[18] = 2048;
      *&v194[20] = a4;
      _os_log_fault_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "Unable to format: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x2Au);
    }

    if (qword_100117E88)
    {
      v45 = qword_100117E88;
    }

    else
    {
      v45 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v45);
LABEL_51:
    *__error() = v26;
  }

LABEL_52:
  v49 = sub_100035BF0(a1);
  if (!v19)
  {
    v19 = sub_100035C38(a1);
  }

  v190 = 0;
  v50 = [v19 lastPathComponent];
  v51 = sub_10004AFBC(v50, a1, "cpu resource", 160, &v190);

  if ((word_100117EC0 & 0x100) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v61 = __error();
        v62 = *v61;
        v64 = sub_100035B80(v61, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A079C();
        }

        *__error() = v62;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v56 = *__error();
      v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to suppression cookie file");
      if (!v58)
      {
        v60 = sub_100035B80(0, v65);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          sub_1000A07D8();
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v52 = __error();
        v53 = *v52;
        v55 = sub_100035B80(v52, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0814();
        }

        *__error() = v53;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v56 = *__error();
      v57 = sub_100035B20(a1);
      v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to suppression cookie file", v57, a1);
      if (!v58)
      {
        v60 = sub_100035B80(0, v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0894();
        }

LABEL_83:

        if (qword_100117E88)
        {
          v74 = qword_100117E88;
        }

        else
        {
          v74 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v74);
LABEL_87:
        *__error() = v56;
LABEL_88:
        v51 |= 0x8000uLL;
        goto LABEL_89;
      }
    }

    v66 = v58;
    v172 = v56;
    v67 = a3;
    v68 = v49;
    v69 = v20;
    v70 = CFStringGetCStringPtr(v58, 0x8000100u);
    if (v70)
    {
      v71 = v70;
      v72 = 0;
    }

    else
    {
      v71 = malloc_type_calloc(0x400uLL, 1uLL, 0x47299994uLL);
      CFStringGetCString(v66, v71, 1024, 0x8000100u);
      v72 = v71;
    }

    if (qword_100117E88)
    {
      v73 = qword_100117E88;
    }

    else
    {
      v73 = __stderrp;
    }

    fprintf(v73, "%s\n", v71);
    if (v72)
    {
      free(v72);
    }

    CFRelease(v66);
    v20 = v69;
    a4 = v173;
    v49 = v68;
    a3 = v67;
    v56 = v172;
    goto LABEL_87;
  }

LABEL_89:
  if ((sub_100059C44([v19 UTF8String], 1) & 1) == 0 && sub_10004B73C(*&qword_100117EB8))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v98 = __error();
        v99 = *v98;
        a4 = sub_100035B80(v98, v100);
        if (os_log_type_enabled(a4, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0914();
        }

        *__error() = v99;
        LOBYTE(a4) = v173;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_166;
      }

      v78 = *__error();
      v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to throttling the number of reports generated for 1st party processes");
      if (!v80)
      {
        v82 = sub_100035B80(0, v101);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0950();
        }

        goto LABEL_161;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v75 = __error();
        v76 = *v75;
        a4 = sub_100035B80(v75, v77);
        if (os_log_type_enabled(a4, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A098C();
        }

        *__error() = v76;
        LOBYTE(a4) = v173;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_166;
      }

      v78 = *__error();
      v79 = sub_100035B20(a1);
      v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to throttling the number of reports generated for 1st party processes", v79, a1);
      if (!v80)
      {
        v82 = sub_100035B80(0, v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0A0C();
        }

LABEL_161:

        if (qword_100117E88)
        {
          v139 = qword_100117E88;
        }

        else
        {
          v139 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v139);
LABEL_165:
        *__error() = v78;
        LOBYTE(a4) = v173;
LABEL_166:
        v51 |= 0x200000uLL;
LABEL_167:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v149 = __error();
            v150 = *v149;
            a4 = sub_100035B80(v149, v151);
            if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v192 = v51;
              _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "cpu resource: not monitoring due to conditions %#llx", buf, 0xCu);
            }

            *__error() = v150;
            LOBYTE(a4) = v173;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_200;
          }

          v144 = *__error();
          v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to conditions %#llx", v51);
          if (!v146)
          {
            v148 = sub_100035B80(0, v152);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
            {
              sub_1000A0A8C();
            }

            goto LABEL_195;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v140 = __error();
            v141 = *v140;
            a4 = sub_100035B80(v140, v142);
            if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
            {
              v143 = sub_100035B20(a1);
              *buf = 136446722;
              v192 = v143;
              v193 = 1024;
              *v194 = a1;
              *&v194[4] = 2048;
              *&v194[6] = v51;
              _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: not monitoring due to conditions %#llx", buf, 0x1Cu);
            }

            *__error() = v141;
            LOBYTE(a4) = v173;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_200;
          }

          v144 = *__error();
          v145 = sub_100035B20(a1);
          v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to conditions %#llx", v145, a1, v51);
          if (!v146)
          {
            v148 = sub_100035B80(0, v147);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
            {
              sub_1000A0AFC();
            }

LABEL_195:

            if (qword_100117E88)
            {
              v159 = qword_100117E88;
            }

            else
            {
              v159 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v159);
LABEL_199:
            *__error() = v144;
            LOBYTE(a4) = v173;
LABEL_200:
            v160 = v190;
            v161 = a8 - a7;
            v162 = a4 & 1;
            v163 = a1;
            v164 = v19;
            v165 = v49;
            v166 = v51;
LABEL_201:
            sub_100035F94(v163, v164, v165, v166, v160, v162, v161, a8, a6);
            goto LABEL_202;
          }
        }

        v153 = v146;
        v154 = v49;
        v155 = CFStringGetCStringPtr(v146, 0x8000100u);
        if (v155)
        {
          v156 = v155;
          v157 = 0;
        }

        else
        {
          v156 = malloc_type_calloc(0x400uLL, 1uLL, 0xD4F113E9uLL);
          CFStringGetCString(v153, v156, 1024, 0x8000100u);
          v157 = v156;
        }

        if (qword_100117E88)
        {
          v158 = qword_100117E88;
        }

        else
        {
          v158 = __stderrp;
        }

        fprintf(v158, "%s\n", v156);
        if (v157)
        {
          free(v157);
        }

        CFRelease(v153);
        v49 = v154;
        goto LABEL_199;
      }
    }

    v102 = v80;
    v103 = v49;
    v104 = CFStringGetCStringPtr(v80, 0x8000100u);
    if (v104)
    {
      v105 = v104;
      v106 = 0;
    }

    else
    {
      v105 = malloc_type_calloc(0x400uLL, 1uLL, 0xD74E2BA8uLL);
      CFStringGetCString(v102, v105, 1024, 0x8000100u);
      v106 = v105;
    }

    if (qword_100117E88)
    {
      v116 = qword_100117E88;
    }

    else
    {
      v116 = __stderrp;
    }

    fprintf(v116, "%s\n", v105);
    if (v106)
    {
      free(v106);
    }

    CFRelease(v102);
    v49 = v103;
    goto LABEL_165;
  }

  if (v51)
  {
    goto LABEL_167;
  }

  v83 = v20;
  v84 = v190;
  if ((v190 & 0x80000000000) != 0)
  {
    if (sub_100062D04())
    {
      if ((a1 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v117 = __error();
          v118 = *v117;
          v120 = sub_100035B80(v117, v119);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "cpu resource: deferring report generation due to game mode", buf, 2u);
          }

          *__error() = v118;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_224;
        }

        v93 = *__error();
        v95 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: deferring report generation due to game mode");
        if (!v95)
        {
          v97 = sub_100035B80(0, v121);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0D00();
          }

          goto LABEL_219;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v88 = __error();
          v89 = *v88;
          v91 = sub_100035B80(v88, v90);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = sub_100035B20(a1);
            *buf = 136446466;
            v192 = v92;
            v193 = 1024;
            *v194 = a1;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: deferring report generation due to game mode", buf, 0x12u);
          }

          *__error() = v89;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_224;
        }

        v93 = *__error();
        v94 = sub_100035B20(a1);
        v95 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: deferring report generation due to game mode", v94, a1);
        if (!v95)
        {
          v97 = sub_100035B80(0, v96);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0D3C();
          }

LABEL_219:

          if (qword_100117E88)
          {
            v170 = qword_100117E88;
          }

          else
          {
            v170 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v170);
LABEL_223:
          *__error() = v93;
LABEL_224:
          sub_1000635B4(a1, v19, a3, a4, v83, a6, a7, a8, a9, a10);
          v161 = a8 - a7;
          v160 = v84 | 0x100000000000;
          v20 = v83;
          v162 = a4 & 1;
          v163 = a1;
          v164 = v19;
          v165 = v49;
          v166 = 0;
          goto LABEL_201;
        }
      }

      v122 = v95;
      v174 = v93;
      v123 = a3;
      v124 = v49;
      v125 = CFStringGetCStringPtr(v95, 0x8000100u);
      if (v125)
      {
        v126 = v125;
        v127 = 0;
      }

      else
      {
        v126 = malloc_type_calloc(0x400uLL, 1uLL, 0xD39BB45DuLL);
        CFStringGetCString(v122, v126, 1024, 0x8000100u);
        v127 = v126;
      }

      if (qword_100117E88)
      {
        v167 = qword_100117E88;
      }

      else
      {
        v167 = __stderrp;
      }

      fprintf(v167, "%s\n", v126);
      if (v127)
      {
        free(v127);
      }

      CFRelease(v122);
      v49 = v124;
      a3 = v123;
      v93 = v174;
      goto LABEL_223;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v128 = __error();
        v129 = *v128;
        v131 = sub_100035B80(v128, v130);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0B88();
        }

        *__error() = v129;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_103;
      }

      v111 = *__error();
      v113 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: cannot defer report generation for game mode");
      if (!v113)
      {
        v115 = sub_100035B80(0, v132);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0BC4();
        }

        goto LABEL_227;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v107 = __error();
        v108 = *v107;
        v110 = sub_100035B80(v107, v109);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0C00();
        }

        *__error() = v108;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_103;
      }

      v111 = *__error();
      v112 = sub_100035B20(a1);
      v113 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: cannot defer report generation for game mode", v112, a1);
      if (!v113)
      {
        v115 = sub_100035B80(0, v114);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0C80();
        }

LABEL_227:

        if (qword_100117E88)
        {
          v171 = qword_100117E88;
        }

        else
        {
          v171 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v171);
LABEL_231:
        *__error() = v111;
        goto LABEL_103;
      }
    }

    v133 = v113;
    v175 = v111;
    v134 = a3;
    v135 = v49;
    v136 = CFStringGetCStringPtr(v113, 0x8000100u);
    if (v136)
    {
      v137 = v136;
      v138 = 0;
    }

    else
    {
      v137 = malloc_type_calloc(0x400uLL, 1uLL, 0xC1C88733uLL);
      CFStringGetCString(v133, v137, 1024, 0x8000100u);
      v138 = v137;
    }

    if (qword_100117E88)
    {
      v168 = qword_100117E88;
    }

    else
    {
      v168 = __stderrp;
    }

    fprintf(v168, "%s\n", v137);
    if (v138)
    {
      free(v138);
    }

    CFRelease(v133);
    v49 = v135;
    a3 = v134;
    v111 = v175;
    goto LABEL_231;
  }

LABEL_103:
  v85 = sub_1000359B8("CPU resource for [%d] thread %#llx", a1, a3);
  v86 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BA7C;
  block[3] = &unk_100109008;
  v189 = a1;
  v177 = v19;
  v180 = a3;
  v181 = a4;
  v182 = a6;
  v183 = a7;
  v184 = a8;
  v185 = a9;
  v186 = a10;
  v187 = v49;
  v188 = v84;
  v20 = v83;
  v178 = v83;
  v179 = v85;
  v87 = v85;
  dispatch_async(v86, block);

LABEL_202:
}

uint64_t sub_10002CE08(const char *a1, off_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned int a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, double a21, char a22, int a23, int a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, void *a35, void *a36, char a37)
{
  v47 = a17;
  v48 = a4;
  v499 = a7;
  v49 = a26;
  v50 = a3;
  v498 = a32;
  v501 = a33;
  v497 = a34;
  v496 = a35;
  v495 = a36;
  v493 = v48;
  v51 = sub_100060EF8(a3, v48, a6);
  v52 = [v51 lastPathComponent];
  v57 = v52;
  v502 = a3;
  if (a17 - 5 >= 6 && a17 != 15)
  {
    if (v52)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v448 = __error();
          v449 = *v448;
          v451 = sub_100035B80(v448, v450);
          if (os_log_type_enabled(v451, OS_LOG_TYPE_ERROR))
          {
            sub_1000A8BA0();
          }

          *__error() = v449;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v452 = *__error();
          CStringPtr = CFStringGetCStringPtr(v57, 0x8000100u);
          v454 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: Bad report type for microstackshots %d", CStringPtr, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
          if (v454)
          {
            v470 = v454;
            v471 = CFStringGetCStringPtr(v454, 0x8000100u);
            if (v471)
            {
              v472 = v471;
              v473 = 0;
            }

            else
            {
              v472 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
              CFStringGetCString(v470, v472, 1024, 0x8000100u);
              v473 = v472;
            }

            if (qword_100117E88)
            {
              v479 = qword_100117E88;
            }

            else
            {
              v479 = __stderrp;
            }

            fprintf(v479, "%s\n", v472);
            if (v473)
            {
              free(v473);
            }

            CFRelease(v470);
          }

          else
          {
            v456 = sub_100035B80(0, v455);
            if (os_log_type_enabled(v456, OS_LOG_TYPE_FAULT))
            {
              sub_1000A8C30();
            }

            if (qword_100117E88)
            {
              v457 = qword_100117E88;
            }

            else
            {
              v457 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v457);
          }

          *__error() = v452;
        }

        v481 = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
        v482 = a17;
        v480 = CFStringGetCStringPtr(v57, 0x8000100u);
        v423 = "%s: %s: Bad report type for microstackshots %d";
        goto LABEL_683;
      }

      if (byte_100117E80)
      {
        v428 = __error();
        v429 = *v428;
        v431 = sub_100035B80(v428, v430);
        if (os_log_type_enabled(v431, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v517 = CFStringGetCStringPtr(v57, 0x8000100u);
          *&v517[8] = 1024;
          *&v517[10] = a3;
          *&v517[14] = 2080;
          *&v517[16] = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
          *&v517[24] = 1024;
          *&v517[26] = a17;
          _os_log_error_impl(&_mh_execute_header, v431, OS_LOG_TYPE_ERROR, "%s [%d]: %s: Bad report type for microstackshots %d", buf, 0x22u);
        }

        *__error() = v429;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v432 = *__error();
        v433 = CFStringGetCStringPtr(v57, 0x8000100u);
        v434 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type for microstackshots %d", v433, a3, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
        if (v434)
        {
          v462 = v434;
          v463 = CFStringGetCStringPtr(v434, 0x8000100u);
          if (v463)
          {
            v464 = v463;
            v465 = 0;
          }

          else
          {
            v464 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
            CFStringGetCString(v462, v464, 1024, 0x8000100u);
            v465 = v464;
          }

          if (qword_100117E88)
          {
            v477 = qword_100117E88;
          }

          else
          {
            v477 = __stderrp;
          }

          fprintf(v477, "%s\n", v464);
          if (v465)
          {
            free(v465);
          }

          CFRelease(v462);
        }

        else
        {
          v436 = sub_100035B80(0, v435);
          if (os_log_type_enabled(v436, OS_LOG_TYPE_FAULT))
          {
            v437 = CFStringGetCStringPtr(v57, 0x8000100u);
            *buf = 136315906;
            *v517 = v437;
            *&v517[8] = 1024;
            *&v517[10] = a3;
            *&v517[14] = 2080;
            *&v517[16] = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
            *&v517[24] = 1024;
            *&v517[26] = a17;
            _os_log_fault_impl(&_mh_execute_header, v436, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: Bad report type for microstackshots %d", buf, 0x22u);
          }

          if (qword_100117E88)
          {
            v438 = qword_100117E88;
          }

          else
          {
            v438 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v438);
        }

        *__error() = v432;
      }

      v476 = CFStringGetCStringPtr(v57, 0x8000100u);
      v482 = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
      v483 = a17;
      v475 = a3;
    }

    else
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v439 = __error();
          v440 = *v439;
          v442 = sub_100035B80(v439, v441);
          if (os_log_type_enabled(v442, OS_LOG_TYPE_ERROR))
          {
            sub_1000A8CC0();
          }

          *__error() = v440;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v443 = *__error();
          v444 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Bad report type for microstackshots %d", "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
          if (v444)
          {
            v466 = v444;
            v467 = CFStringGetCStringPtr(v444, 0x8000100u);
            if (v467)
            {
              v468 = v467;
              v469 = 0;
            }

            else
            {
              v468 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
              CFStringGetCString(v466, v468, 1024, 0x8000100u);
              v469 = v468;
            }

            if (qword_100117E88)
            {
              v478 = qword_100117E88;
            }

            else
            {
              v478 = __stderrp;
            }

            fprintf(v478, "%s\n", v468);
            if (v469)
            {
              free(v469);
            }

            CFRelease(v466);
          }

          else
          {
            v446 = sub_100035B80(0, v445);
            if (os_log_type_enabled(v446, OS_LOG_TYPE_FAULT))
            {
              sub_1000A8D40();
            }

            if (qword_100117E88)
            {
              v447 = qword_100117E88;
            }

            else
            {
              v447 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v447);
          }

          *__error() = v443;
        }

        v480 = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
        v481 = a17;
        v423 = "%s: Bad report type for microstackshots %d";
        goto LABEL_683;
      }

      if (byte_100117E80)
      {
        v85 = __error();
        v86 = *v85;
        v88 = sub_100035B80(v85, v87);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_1000A8DC0();
        }

        *__error() = v86;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v89 = *__error();
        v90 = sub_100035B20(a3);
        v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type for microstackshots %d", v90, a3, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
        if (v91)
        {
          v458 = v91;
          v459 = CFStringGetCStringPtr(v91, 0x8000100u);
          if (v459)
          {
            v460 = v459;
            v461 = 0;
          }

          else
          {
            v460 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
            CFStringGetCString(v458, v460, 1024, 0x8000100u);
            v461 = v460;
          }

          if (qword_100117E88)
          {
            v474 = qword_100117E88;
          }

          else
          {
            v474 = __stderrp;
          }

          fprintf(v474, "%s\n", v460);
          if (v461)
          {
            free(v461);
          }

          CFRelease(v458);
        }

        else
        {
          v93 = sub_100035B80(0, v92);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
          {
            sub_1000A8E60();
          }

          if (qword_100117E88)
          {
            v94 = qword_100117E88;
          }

          else
          {
            v94 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v94);
        }

        *__error() = v89;
      }

      v475 = a3;
      v476 = sub_100035B20(a3);
      v482 = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
      v483 = a17;
    }

    v480 = v476;
    v481 = v475;
    v423 = "%s [%d]: %s: Bad report type for microstackshots %d";
LABEL_683:
    v427 = 194;
LABEL_597:
    sub_100035A54("DoMicrostackshotsOnly", "microstackshot.m", v427, v423, v53, v54, v55, v56, v480, v481, v482, v483, v484);
    abort();
  }

  v503 = v49;
  if (a17 - 7 < 2 != [v49 systemstatsFormat])
  {
    if (v57)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v391 = __error();
          v392 = *v391;
          v394 = sub_100035B80(v391, v393);
          if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *v517 = CFStringGetCStringPtr(v57, 0x8000100u);
            *&v517[8] = 2080;
            *&v517[10] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v517[18] = 1024;
            *&v517[20] = a17;
            *&v517[24] = 1024;
            *&v517[26] = [v503 systemstatsFormat];
            _os_log_error_impl(&_mh_execute_header, v394, OS_LOG_TYPE_ERROR, "%s: %s: report_type %d, but systemstatsFormat %d", buf, 0x22u);
          }

          *__error() = v392;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v395 = *__error();
          v396 = CFStringGetCStringPtr(v57, 0x8000100u);
          v397 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: report_type %d, but systemstatsFormat %d", v396, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v503 systemstatsFormat]);
          if (v397)
          {
            v415 = v397;
            v416 = CFStringGetCStringPtr(v397, 0x8000100u);
            if (v416)
            {
              v417 = v416;
              v418 = 0;
            }

            else
            {
              v417 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
              CFStringGetCString(v415, v417, 1024, 0x8000100u);
              v418 = v417;
            }

            if (qword_100117E88)
            {
              v425 = qword_100117E88;
            }

            else
            {
              v425 = __stderrp;
            }

            fprintf(v425, "%s\n", v417);
            if (v418)
            {
              free(v418);
            }

            CFRelease(v415);
          }

          else
          {
            v399 = sub_100035B80(0, v398);
            if (os_log_type_enabled(v399, OS_LOG_TYPE_FAULT))
            {
              v400 = CFStringGetCStringPtr(v57, 0x8000100u);
              v401 = [v503 systemstatsFormat];
              *buf = 136315906;
              *v517 = v400;
              *&v517[8] = 2080;
              *&v517[10] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
              *&v517[18] = 1024;
              *&v517[20] = a17;
              *&v517[24] = 1024;
              *&v517[26] = v401;
              _os_log_fault_impl(&_mh_execute_header, v399, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: report_type %d, but systemstatsFormat %d", buf, 0x22u);
            }

            if (qword_100117E88)
            {
              v402 = qword_100117E88;
            }

            else
            {
              v402 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v402);
          }

          *__error() = v395;
        }

        v426 = CFStringGetCStringPtr(v57, 0x8000100u);
        v482 = a17;
        v483 = [v503 systemstatsFormat];
        v480 = v426;
        v481 = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
        v423 = "%s: %s: report_type %d, but systemstatsFormat %d";
        goto LABEL_596;
      }

      if (byte_100117E80)
      {
        v370 = __error();
        v371 = *v370;
        v373 = sub_100035B80(v370, v372);
        if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v517 = CFStringGetCStringPtr(v57, 0x8000100u);
          *&v517[8] = 1024;
          *&v517[14] = 2080;
          *&v517[10] = a3;
          *&v517[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
          *&v517[24] = 1024;
          *&v517[26] = a17;
          v518 = 1024;
          v519 = [v503 systemstatsFormat];
          _os_log_error_impl(&_mh_execute_header, v373, OS_LOG_TYPE_ERROR, "%s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
        }

        *__error() = v371;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v374 = *__error();
        v375 = CFStringGetCStringPtr(v57, 0x8000100u);
        v376 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: report_type %d, but systemstatsFormat %d", v375, a3, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v503 systemstatsFormat]);
        if (v376)
        {
          v407 = v376;
          v408 = CFStringGetCStringPtr(v376, 0x8000100u);
          if (v408)
          {
            v409 = v408;
            v410 = 0;
          }

          else
          {
            v409 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
            CFStringGetCString(v407, v409, 1024, 0x8000100u);
            v410 = v409;
          }

          if (qword_100117E88)
          {
            v421 = qword_100117E88;
          }

          else
          {
            v421 = __stderrp;
          }

          fprintf(v421, "%s\n", v409);
          if (v410)
          {
            free(v410);
          }

          CFRelease(v407);
        }

        else
        {
          v378 = sub_100035B80(0, v377);
          if (os_log_type_enabled(v378, OS_LOG_TYPE_FAULT))
          {
            v379 = CFStringGetCStringPtr(v57, 0x8000100u);
            v380 = [v503 systemstatsFormat];
            *buf = 136316162;
            *v517 = v379;
            *&v517[8] = 1024;
            *&v517[10] = a3;
            *&v517[14] = 2080;
            *&v517[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v517[24] = 1024;
            *&v517[26] = a17;
            v518 = 1024;
            v519 = v380;
            _os_log_fault_impl(&_mh_execute_header, v378, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
          }

          if (qword_100117E88)
          {
            v381 = qword_100117E88;
          }

          else
          {
            v381 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v381);
        }

        *__error() = v374;
      }

      v420 = CFStringGetCStringPtr(v57, 0x8000100u);
    }

    else
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v382 = __error();
          v383 = *v382;
          v385 = sub_100035B80(v382, v384);
          if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
          {
            sub_1000A8A70();
          }

          *__error() = v383;
          v49 = v503;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v386 = *__error();
          v387 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: report_type %d, but systemstatsFormat %d", "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v49 systemstatsFormat]);
          if (v387)
          {
            v411 = v387;
            v412 = CFStringGetCStringPtr(v387, 0x8000100u);
            if (v412)
            {
              v413 = v412;
              v414 = 0;
            }

            else
            {
              v413 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
              CFStringGetCString(v411, v413, 1024, 0x8000100u);
              v414 = v413;
            }

            if (qword_100117E88)
            {
              v424 = qword_100117E88;
            }

            else
            {
              v424 = __stderrp;
            }

            fprintf(v424, "%s\n", v413);
            if (v414)
            {
              free(v414);
            }

            CFRelease(v411);
          }

          else
          {
            v389 = sub_100035B80(0, v388);
            if (os_log_type_enabled(v389, OS_LOG_TYPE_FAULT))
            {
              sub_1000A8B08();
            }

            if (qword_100117E88)
            {
              v390 = qword_100117E88;
            }

            else
            {
              v390 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v390);
          }

          *__error() = v386;
          v49 = v503;
        }

        v481 = a17;
        v482 = [v49 systemstatsFormat];
        v480 = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
        v423 = "%s: report_type %d, but systemstatsFormat %d";
        goto LABEL_596;
      }

      if (byte_100117E80)
      {
        v355 = __error();
        v356 = *v355;
        v358 = sub_100035B80(v355, v357);
        if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v517 = sub_100035B20(a3);
          *&v517[8] = 1024;
          *&v517[14] = 2080;
          *&v517[10] = a3;
          *&v517[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
          *&v517[24] = 1024;
          *&v517[26] = a17;
          v518 = 1024;
          v519 = [v503 systemstatsFormat];
          _os_log_error_impl(&_mh_execute_header, v358, OS_LOG_TYPE_ERROR, "%s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
        }

        *__error() = v356;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v359 = *__error();
        v360 = sub_100035B20(a3);
        v361 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: report_type %d, but systemstatsFormat %d", v360, a3, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v503 systemstatsFormat]);
        if (v361)
        {
          v403 = v361;
          v404 = CFStringGetCStringPtr(v361, 0x8000100u);
          if (v404)
          {
            v405 = v404;
            v406 = 0;
          }

          else
          {
            v405 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
            CFStringGetCString(v403, v405, 1024, 0x8000100u);
            v406 = v405;
          }

          if (qword_100117E88)
          {
            v419 = qword_100117E88;
          }

          else
          {
            v419 = __stderrp;
          }

          fprintf(v419, "%s\n", v405);
          if (v406)
          {
            free(v406);
          }

          CFRelease(v403);
        }

        else
        {
          v363 = sub_100035B80(0, v362);
          if (os_log_type_enabled(v363, OS_LOG_TYPE_FAULT))
          {
            v364 = sub_100035B20(a3);
            v365 = [v503 systemstatsFormat];
            *buf = 136316162;
            *v517 = v364;
            *&v517[8] = 1024;
            *&v517[10] = a3;
            *&v517[14] = 2080;
            *&v517[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v517[24] = 1024;
            *&v517[26] = a17;
            v518 = 1024;
            v519 = v365;
            _os_log_fault_impl(&_mh_execute_header, v363, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
          }

          if (qword_100117E88)
          {
            v366 = qword_100117E88;
          }

          else
          {
            v366 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v366);
        }

        *__error() = v359;
      }

      v420 = sub_100035B20(a3);
    }

    v422 = v420;
    v483 = a17;
    v484 = [v503 systemstatsFormat];
    v481 = a3;
    v482 = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
    v480 = v422;
    v423 = "%s [%d]: %s: report_type %d, but systemstatsFormat %d";
LABEL_596:
    v427 = 196;
    goto LABEL_597;
  }

  v58 = a17 - 5 < 2 || a17 == 15;
  v487 = v58;
  if (a17 != 15)
  {
    v504 = 0;
    v73 = 0;
    v59 = v501;
    v64 = v51;
    if (a17 != 5)
    {
      goto LABEL_224;
    }

    if (!a6)
    {
      goto LABEL_223;
    }

    goto LABEL_23;
  }

  v59 = v501;
  if (v51)
  {
    v60 = v51;
    if ([v51 isAbsolutePath])
    {
      v61 = objc_alloc_init(NSMutableArray);
      [v51 UTF8String];
      v508 = _NSConcreteStackBlock;
      v509 = 3221225472;
      v510 = sub_100059D54;
      v511 = &unk_100109338;
      v62 = v57;
      v512 = v62;
      v515 = a3;
      v513 = v61;
      v63 = v60;
      v514 = v63;
      CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
      v504 = v513;
      v64 = v60;
      v489 = [v513 count];
      if (v489)
      {
        if (v62)
        {
          if ((v50 & 0x80000000) != 0)
          {
            if (byte_100117E80)
            {
              v142 = __error();
              v143 = *v142;
              v145 = sub_100035B80(v142, v144);
              if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                *v517 = v62;
                *&v517[8] = 2112;
                *&v517[10] = v513;
                _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "%{public}@: Possible UUIDs: %@", buf, 0x16u);
              }

              *__error() = v143;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 1)
            {
              goto LABEL_221;
            }

            v69 = *__error();
            v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Possible UUIDs: %@", v62, v504);
            if (!v70)
            {
              v72 = sub_100035B80(0, v146);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                sub_1000A7C98();
              }

              goto LABEL_198;
            }
          }

          else
          {
            if (byte_100117E80)
            {
              v65 = __error();
              v66 = *v65;
              v68 = sub_100035B80(v65, v67);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                *v517 = v62;
                *&v517[8] = 1024;
                *&v517[10] = v50;
                *&v517[14] = 2112;
                *&v517[16] = v513;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

              *__error() = v66;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 1)
            {
              goto LABEL_221;
            }

            v69 = *__error();
            v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Possible UUIDs: %@", v62, v50, v504);
            if (!v70)
            {
              v72 = sub_100035B80(0, v71);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                *v517 = v62;
                *&v517[8] = 1024;
                *&v517[10] = v50;
                *&v517[14] = 2112;
                *&v517[16] = v504;
                _os_log_fault_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

LABEL_198:

              goto LABEL_216;
            }
          }
        }

        else
        {
          if ((v50 & 0x80000000) == 0)
          {
            if (byte_100117E80)
            {
              v129 = __error();
              v130 = *v129;
              v132 = sub_100035B80(v129, v131);
              if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
              {
                *buf = 136446722;
                *v517 = sub_100035B20(v50);
                *&v517[8] = 1024;
                *&v517[10] = v50;
                *&v517[14] = 2112;
                *&v517[16] = v513;
                _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "%{public}s [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

              *__error() = v130;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 1)
            {
              goto LABEL_221;
            }

            v133 = *__error();
            v134 = sub_100035B20(v50);
            v135 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Possible UUIDs: %@", v134, v50, v504);
            if (!v135)
            {
              v183 = sub_100035B80(0, v136);
              if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
              {
                sub_1000A7D78();
              }

              if (qword_100117E88)
              {
                v184 = qword_100117E88;
              }

              else
              {
                v184 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v184);
              v69 = v133;
              goto LABEL_220;
            }

            v137 = v135;
            v138 = CFStringGetCStringPtr(v135, 0x8000100u);
            if (v138)
            {
              v139 = v138;
              v140 = 0;
            }

            else
            {
              v139 = malloc_type_calloc(0x400uLL, 1uLL, 0xE719uLL);
              CFStringGetCString(v137, v139, 1024, 0x8000100u);
              v140 = v139;
            }

            v69 = v133;
            goto LABEL_186;
          }

          if (byte_100117E80)
          {
            v166 = __error();
            v167 = *v166;
            v169 = sub_100035B80(v166, v168);
            if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v517 = v513;
              _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_INFO, "Possible UUIDs: %@", buf, 0xCu);
            }

            *__error() = v167;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 1)
          {
            goto LABEL_221;
          }

          v69 = *__error();
          v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Possible UUIDs: %@", v504);
          if (!v70)
          {
            v72 = sub_100035B80(0, v170);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              sub_1000A7D08();
            }

            goto LABEL_198;
          }
        }

        v137 = v70;
        v171 = CFStringGetCStringPtr(v70, 0x8000100u);
        if (v171)
        {
          v139 = v171;
          v140 = 0;
        }

        else
        {
          v139 = malloc_type_calloc(0x400uLL, 1uLL, 0xE719uLL);
          CFStringGetCString(v137, v139, 1024, 0x8000100u);
          v140 = v139;
        }

LABEL_186:
        if (qword_100117E88)
        {
          v187 = qword_100117E88;
        }

        else
        {
          v187 = __stderrp;
        }

        fprintf(v187, "%s\n", v139);
        if (v140)
        {
          free(v140);
        }

        v186 = v137;
LABEL_192:
        CFRelease(v186);
LABEL_220:
        *__error() = v69;
LABEL_221:

        if (v489)
        {
          v47 = a17;
          v58 = v487;
          if (!a6)
          {
LABEL_223:
            v73 = 0;
LABEL_224:
            v488 = v73;
            v490 = v57;
            if (v47 > 0xF)
            {
              v191 = a5;
              v192 = v58;
            }

            else
            {
              v191 = a5;
              v192 = v58;
              if (((1 << v47) & 0x8060) != 0)
              {
                v193 = v58;
                v194 = sub_100059C44([v64 UTF8String], a6);
                v191 = 0;
                v192 = v193 & (v194 ^ 1);
              }
            }

            if (v192)
            {
              v195 = -1;
            }

            else
            {
              v195 = v502;
            }

            if (v192)
            {
              v196 = 0;
            }

            else
            {
              v196 = v504;
            }

            v197 = sub_100030E14(a1, a2, v195, v196, v191, a6, 1, 0, a9, a10, a24, a29, a30, a31, HIDWORD(a31), v59);
            v198 = v197;
            if (!v197)
            {
              goto LABEL_379;
            }

            v199 = v502;
            if ((v502 & 0x80000000) == 0)
            {
              [v197 setTargetProcessId:v502];
            }

            v200 = a5;
            if (a5)
            {
              [v198 setTargetThreadId:a5];
            }

            if (![v504 count])
            {
LABEL_360:
              if (v64)
              {
                v292 = [v198 targetProcess];
                v293 = [v292 mainBinaryPath];
                v294 = [v293 isAbsolutePath];

                if ((v294 & 1) == 0)
                {
                  v295 = [v198 targetProcess];
                  v296 = v295;
                  if (v295)
                  {
                    [v295 setMainBinaryPath:v64];
                    [v198 postprocess];
                  }
                }
              }

              v297 = [v198 tasksByPid];
              if (![v297 count])
              {
                goto LABEL_378;
              }

              v298 = !v487;
              if (!v200)
              {
                v298 = 1;
              }

              if ((v298 & 1) == 0)
              {
                v299 = [v198 targetProcess];
                v300 = [v299 threads];
                v301 = [NSNumber numberWithUnsignedLongLong:v200];
                v302 = [v300 objectForKeyedSubscript:v301];

                v49 = v503;
                if (!v302)
                {
                  goto LABEL_379;
                }

LABEL_425:
                if (v488)
                {
                  [v198 addAuxiliaryData:?];
                }

                if (!v49)
                {
                  v49 = objc_alloc_init(SASamplePrintOptions);
                }

                v339 = v49;
                v340 = [NSString stringWithUTF8String:sub_10002B924(v47, 0)];
                [v198 setEvent:v340];

                if (v47 > 7)
                {
                  if (v47 == 8 || v47 == 10)
                  {
LABEL_435:
                    v341 = SAFormattedBytes();
                    v342 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/step", [v341 UTF8String]);
                    [v198 setStepsNote:v342];
                  }
                }

                else
                {
                  if (v47 != 5)
                  {
                    if (v47 != 6)
                    {
                      goto LABEL_445;
                    }

                    [v198 setBytesWritten:{a19, a14}];
                    [v198 setBytesWrittenLimit:a20];
                    [v198 setWriteDuration:a15];
                    [v198 setWriteLimitDuration:a21];
                    [v339 setPrintSpinSignatureStack:1];
                    goto LABEL_435;
                  }

                  [v198 setCpuUsed:a14];
                  [v198 setCpuLimit:a16];
                  [v198 setCpuDuration:a15];
                  [v198 setCpuLimitDuration:a21];
                  [v339 setPrintSpinSignatureStack:1];
                }

LABEL_445:
                v344 = v499;
                if (!v499)
                {
                  if (v47 > 0xF || ((1 << v47) & 0x8060) == 0)
                  {
                    goto LABEL_450;
                  }

                  v344 = @"none";
                }

                [v198 setActionTaken:v344];
LABEL_450:
                if (v497)
                {
                  [v198 setIssueType:v497];
                }

                if (v496)
                {
                  [v198 setMitigationReason:v496];
                }

                if (v495)
                {
                  [v198 setDetector:v495];
                }

                if (a27)
                {
                  v345 = [NSString stringWithUTF8String:a27];
                  [v198 setSignature:v345];
                }

                if ((v47 - 9) >= 2)
                {
                  [v198 setSanitizePaths:1];
                }

                v346 = 0;
                v347 = 0;
                if (v47 <= 0xF && ((1 << v47) & 0x8060) != 0)
                {
                  v346 = +[NSUUID UUID];
                  v347 = 5;
                }

                [v339 setOmitTasksBelowPercentOfTotalSamples:v347];
                v348 = 0;
                if (v47 > 0xF)
                {
                  v349 = a8;
                }

                else
                {
                  v349 = a8;
                  if (((1 << v47) & 0x8060) != 0)
                  {
                    if (v47 == 15)
                    {
                      v348 = a37;
                    }

                    else
                    {
                      v348 = a22;
                    }
                  }
                }

                if (v349)
                {
                  v351 = [NSString stringWithUTF8String:?];
                }

                else
                {
                  v351 = 0;
                }

                if (a28)
                {
                  v352 = [NSString stringWithUTF8String:a28];
                  v80 = sub_10005A7D8(v198, v339, v351, v47, v498, v346, v352, a18, a9, a10, a11, a12, a13, a15, v348 & 1, a25);
                }

                else
                {
                  v80 = sub_10005A7D8(v198, v339, v351, v47, v498, v346, 0, a18, a9, a10, a11, a12, a13, a15, v348 & 1, a25);
                }

                v305 = v488;
                v57 = v490;
                if (a8)
                {
                }

                v49 = v339;
LABEL_485:
                v105 = v493;
                goto LABEL_493;
              }

              if (v200)
              {
                v303 = 0;
              }

              else
              {
                v303 = v487;
              }

              if ((v199 & 0x80000000) == 0 && v303)
              {
                v304 = [v198 targetProcess];
                if (v304)
                {

LABEL_424:
                  v49 = v503;
                  goto LABEL_425;
                }

LABEL_378:

                v49 = v503;
                goto LABEL_379;
              }

              if (v199 >= 0)
              {
                LOBYTE(v303) = 0;
              }

              if (!v303)
              {
                goto LABEL_424;
              }

              v337 = [v198 targetProcesses];
              v338 = [v337 count];

              v49 = v503;
              if (v338)
              {
                goto LABEL_425;
              }

LABEL_379:
              if (v57)
              {
                if ((v502 & 0x80000000) == 0)
                {
                  v305 = v488;
                  if (byte_100117E80)
                  {
                    v306 = __error();
                    v307 = *v306;
                    v309 = sub_100035B80(v306, v308);
                    if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000A8530();
                    }

                    *__error() = v307;
                    v49 = v503;
                  }

                  v80 = 0x800000;
                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v310 = *__error();
                    v311 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No microstackshots found", v57, v502);
                    if (!v311)
                    {
                      v313 = sub_100035B80(0, v312);
                      if (os_log_type_enabled(v313, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000A85A4();
                      }

LABEL_470:

                      if (qword_100117E88)
                      {
                        v350 = qword_100117E88;
                      }

                      else
                      {
                        v350 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v350);
                      v105 = v493;
LABEL_492:
                      *__error() = v310;
                      v80 = 0x800000;
                      v49 = v503;
                      goto LABEL_493;
                    }

LABEL_398:
                    v320 = v311;
                    v321 = CFStringGetCStringPtr(v311, 0x8000100u);
                    if (v321)
                    {
                      v322 = v321;
                      v323 = 0;
                    }

                    else
                    {
                      v322 = malloc_type_calloc(0x400uLL, 1uLL, 0xD9153144uLL);
                      CFStringGetCString(v320, v322, 1024, 0x8000100u);
                      v323 = v322;
                    }

                    v105 = v493;
                    goto LABEL_438;
                  }

                  goto LABEL_485;
                }

                v105 = v493;
                v305 = v488;
                if (byte_100117E80)
                {
                  v324 = __error();
                  v325 = *v324;
                  v327 = sub_100035B80(v324, v326);
                  if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000A8450();
                  }

                  *__error() = v325;
                  v49 = v503;
                }

                v80 = 0x800000;
                if (byte_100117E81 != 1 || dword_100117510 > 3)
                {
                  goto LABEL_493;
                }

                v310 = *__error();
                v328 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No microstackshots found", v57);
                if (!v328)
                {
                  v330 = sub_100035B80(0, v329);
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A84C0();
                  }

LABEL_488:

                  if (qword_100117E88)
                  {
                    v353 = qword_100117E88;
                  }

                  else
                  {
                    v353 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v353);
                  goto LABEL_492;
                }
              }

              else
              {
                if ((v502 & 0x80000000) == 0)
                {
                  v305 = v488;
                  if (byte_100117E80)
                  {
                    v314 = __error();
                    v315 = *v314;
                    v317 = sub_100035B80(v314, v316);
                    if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000A8690(v502);
                    }

                    *__error() = v315;
                    v49 = v503;
                  }

                  v80 = 0x800000;
                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v310 = *__error();
                    v318 = sub_100035B20(v502);
                    v311 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No microstackshots found", v318, v502);
                    if (!v311)
                    {
                      v313 = sub_100035B80(0, v319);
                      if (os_log_type_enabled(v313, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000A8718(v502);
                      }

                      goto LABEL_470;
                    }

                    goto LABEL_398;
                  }

                  goto LABEL_485;
                }

                v105 = v493;
                v305 = v488;
                if (byte_100117E80)
                {
                  v331 = __error();
                  v332 = *v331;
                  v334 = sub_100035B80(v331, v333);
                  if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000A8618();
                  }

                  *__error() = v332;
                  v49 = v503;
                }

                v80 = 0x800000;
                if (byte_100117E81 != 1 || dword_100117510 > 3)
                {
                  goto LABEL_493;
                }

                v310 = *__error();
                v328 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No microstackshots found");
                if (!v328)
                {
                  v330 = sub_100035B80(0, v335);
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A8654();
                  }

                  goto LABEL_488;
                }
              }

              v320 = v328;
              v336 = CFStringGetCStringPtr(v328, 0x8000100u);
              if (v336)
              {
                v322 = v336;
                v323 = 0;
              }

              else
              {
                v322 = malloc_type_calloc(0x400uLL, 1uLL, 0xD9153144uLL);
                CFStringGetCString(v320, v322, 1024, 0x8000100u);
                v323 = v322;
              }

LABEL_438:
              if (qword_100117E88)
              {
                v343 = qword_100117E88;
              }

              else
              {
                v343 = __stderrp;
              }

              fprintf(v343, "%s\n", v322);
              if (v323)
              {
                free(v323);
              }

              CFRelease(v320);
              goto LABEL_492;
            }

            v201 = objc_alloc_init(NSMutableDictionary);
            v505[0] = _NSConcreteStackBlock;
            v505[1] = 3221225472;
            v505[2] = sub_10005A6E8;
            v505[3] = &unk_100108EC8;
            v202 = v504;
            v506 = v202;
            v203 = v201;
            v507 = v203;
            [v198 enumerateTasks:v505];
            v204 = [v203 keysSortedByValueUsingSelector:"compare:"];
            v205 = [v204 lastObject];

            if (v205)
            {
              if (v57)
              {
                if ((v502 & 0x80000000) != 0)
                {
                  if (byte_100117E80)
                  {
                    v246 = __error();
                    v247 = *v246;
                    v249 = sub_100035B80(v246, v248);
                    if (os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
                    {
                      v250 = [v203 objectForKeyedSubscript:v205];
                      v251 = [v250 unsignedIntValue];
                      *buf = 138543874;
                      *v517 = v57;
                      *&v517[8] = 1024;
                      *&v517[10] = v251;
                      *&v517[14] = 2112;
                      *&v517[16] = v205;
                      _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_INFO, "%{public}@: Most common UUID with %u samples: %@", buf, 0x1Cu);
                    }

                    *__error() = v247;
                    LODWORD(v199) = v502;
                  }

                  if (byte_100117E81 != 1 || dword_100117510 > 1)
                  {
                    goto LABEL_351;
                  }

                  v212 = *__error();
                  v252 = [v203 objectForKeyedSubscript:v205];
                  v214 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Most common UUID with %u samples: %@", v57, [v252 unsignedIntValue], v205);

                  if (!v214)
                  {
                    v217 = sub_100035B80(v253, v254);
                    if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
                    {
                      v218 = [v203 objectForKeyedSubscript:v205];
                      v255 = [v218 unsignedIntValue];
                      *buf = 138412802;
                      *v517 = v57;
                      *&v517[8] = 1024;
                      *&v517[10] = v255;
                      *&v517[14] = 2112;
                      *&v517[16] = v205;
                      v220 = "Unable to format: %@: Most common UUID with %u samples: %@";
                      v221 = v217;
                      v222 = 28;
                      goto LABEL_284;
                    }

LABEL_346:

                    if (qword_100117E88)
                    {
                      v290 = qword_100117E88;
                    }

                    else
                    {
                      v290 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v290);
LABEL_350:
                    *__error() = v212;
LABEL_351:
                    [v198 setTargetMainBinaryUUID:v205];
                    v80 = 0x400000000000;
                    goto LABEL_359;
                  }
                }

                else
                {
                  if (byte_100117E80)
                  {
                    v206 = __error();
                    v207 = *v206;
                    v209 = sub_100035B80(v206, v208);
                    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
                    {
                      v210 = [v203 objectForKeyedSubscript:v205];
                      v211 = [v210 unsignedIntValue];
                      *buf = 138544130;
                      *v517 = v57;
                      *&v517[8] = 1024;
                      *&v517[10] = v502;
                      *&v517[14] = 1024;
                      *&v517[16] = v211;
                      *&v517[20] = 2112;
                      *&v517[22] = v205;
                      _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Most common UUID with %u samples: %@", buf, 0x22u);
                    }

                    *__error() = v207;
                    v199 = v502;
                  }

                  if (byte_100117E81 != 1 || dword_100117510 > 1)
                  {
                    goto LABEL_351;
                  }

                  v212 = *__error();
                  v213 = [v203 objectForKeyedSubscript:v205];
                  v214 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Most common UUID with %u samples: %@", v57, v199, [v213 unsignedIntValue], v205);

                  if (!v214)
                  {
                    v217 = sub_100035B80(v215, v216);
                    if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
                    {
                      v218 = [v203 objectForKeyedSubscript:v205];
                      v219 = [v218 unsignedIntValue];
                      *buf = 138413058;
                      *v517 = v57;
                      *&v517[8] = 1024;
                      *&v517[10] = v199;
                      *&v517[14] = 1024;
                      *&v517[16] = v219;
                      *&v517[20] = 2112;
                      *&v517[22] = v205;
                      v220 = "Unable to format: %@ [%d]: Most common UUID with %u samples: %@";
                      v221 = v217;
                      v222 = 34;
LABEL_284:
                      _os_log_fault_impl(&_mh_execute_header, v221, OS_LOG_TYPE_FAULT, v220, buf, v222);

                      goto LABEL_346;
                    }

                    goto LABEL_346;
                  }
                }
              }

              else
              {
                if ((v502 & 0x80000000) == 0)
                {
                  if (byte_100117E80)
                  {
                    v231 = __error();
                    v232 = *v231;
                    v234 = sub_100035B80(v231, v233);
                    if (os_log_type_enabled(v234, OS_LOG_TYPE_INFO))
                    {
                      v235 = sub_100035B20(v502);
                      v236 = [v203 objectForKeyedSubscript:v205];
                      v237 = [v236 unsignedIntValue];
                      *buf = 136446978;
                      *v517 = v235;
                      *&v517[8] = 1024;
                      *&v517[10] = v502;
                      *&v517[14] = 1024;
                      *&v517[16] = v237;
                      *&v517[20] = 2112;
                      *&v517[22] = v205;
                      _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_INFO, "%{public}s [%d]: Most common UUID with %u samples: %@", buf, 0x22u);

                      v199 = v502;
                    }

                    *__error() = v232;
                  }

                  if (byte_100117E81 != 1 || dword_100117510 > 1)
                  {
                    goto LABEL_351;
                  }

                  v485 = v47;
                  v212 = *__error();
                  v238 = sub_100035B20(v199);
                  [v203 objectForKeyedSubscript:v205];
                  v240 = v239 = v199;
                  v214 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Most common UUID with %u samples: %@", v238, v239, [v240 unsignedIntValue], v205);

                  if (!v214)
                  {
                    v287 = sub_100035B80(v241, v242);
                    if (os_log_type_enabled(v287, OS_LOG_TYPE_FAULT))
                    {
                      v367 = sub_100035B20(v502);
                      v368 = [v203 objectForKeyedSubscript:v205];
                      v369 = [v368 unsignedIntValue];
                      *buf = 136315906;
                      *v517 = v367;
                      *&v517[8] = 1024;
                      *&v517[10] = v502;
                      *&v517[14] = 1024;
                      *&v517[16] = v369;
                      *&v517[20] = 2112;
                      *&v517[22] = v205;
                      _os_log_fault_impl(&_mh_execute_header, v287, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Most common UUID with %u samples: %@", buf, 0x22u);
                    }

                    if (qword_100117E88)
                    {
                      v288 = qword_100117E88;
                    }

                    else
                    {
                      v288 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v288);
                    LODWORD(v199) = v502;
                    v47 = v485;
                    goto LABEL_350;
                  }

                  v243 = CFStringGetCStringPtr(v214, 0x8000100u);
                  if (v243)
                  {
                    v244 = v243;
                    v245 = 0;
                  }

                  else
                  {
                    v244 = malloc_type_calloc(0x400uLL, 1uLL, 0x4161A8FDuLL);
                    CFStringGetCString(v214, v244, 1024, 0x8000100u);
                    v245 = v244;
                  }

                  v47 = v485;
                  goto LABEL_338;
                }

                if (byte_100117E80)
                {
                  v267 = __error();
                  v268 = *v267;
                  v270 = sub_100035B80(v267, v269);
                  if (os_log_type_enabled(v270, OS_LOG_TYPE_INFO))
                  {
                    v271 = [v203 objectForKeyedSubscript:v205];
                    v272 = [v271 unsignedIntValue];
                    *buf = 67109378;
                    *v517 = v272;
                    *&v517[4] = 2112;
                    *&v517[6] = v205;
                    _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_INFO, "Most common UUID with %u samples: %@", buf, 0x12u);
                  }

                  *__error() = v268;
                  LODWORD(v199) = v502;
                }

                if (byte_100117E81 != 1 || dword_100117510 > 1)
                {
                  goto LABEL_351;
                }

                v212 = *__error();
                v273 = [v203 objectForKeyedSubscript:v205];
                v214 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Most common UUID with %u samples: %@", [v273 unsignedIntValue], v205);

                if (!v214)
                {
                  v217 = sub_100035B80(v274, v275);
                  if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A80D0(v203, v205);
                  }

                  goto LABEL_346;
                }
              }

              v276 = CFStringGetCStringPtr(v214, 0x8000100u);
              if (v276)
              {
                v244 = v276;
                v245 = 0;
              }

              else
              {
                v244 = malloc_type_calloc(0x400uLL, 1uLL, 0x4161A8FDuLL);
                CFStringGetCString(v214, v244, 1024, 0x8000100u);
                v245 = v244;
              }

LABEL_338:
              if (qword_100117E88)
              {
                v289 = qword_100117E88;
              }

              else
              {
                v289 = __stderrp;
              }

              fprintf(v289, "%s\n", v244);
              if (v245)
              {
                free(v245);
              }

              CFRelease(v214);
              LODWORD(v199) = v502;
              goto LABEL_350;
            }

            if (v57)
            {
              if ((v502 & 0x80000000) != 0)
              {
                if (byte_100117E80)
                {
                  v262 = __error();
                  v263 = *v262;
                  v265 = sub_100035B80(v262, v264);
                  if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000A8180();
                  }

                  *__error() = v263;
                  v57 = v490;
                }

                v80 = 0x800000;
                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v227 = *__error();
                  v228 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No microstackshots with provided UUIDs %@", v57, v202);
                  if (!v228)
                  {
                    v230 = sub_100035B80(0, v266);
                    if (os_log_type_enabled(v230, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000A81F0();
                    }

                    goto LABEL_354;
                  }

LABEL_321:
                  v282 = v228;
                  v283 = CFStringGetCStringPtr(v228, 0x8000100u);
                  if (v283)
                  {
                    v284 = v283;
                    v285 = 0;
                  }

                  else
                  {
                    v284 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7B82BEBuLL);
                    CFStringGetCString(v282, v284, 1024, 0x8000100u);
                    v285 = v284;
                  }

                  if (qword_100117E88)
                  {
                    v286 = qword_100117E88;
                  }

                  else
                  {
                    v286 = __stderrp;
                  }

                  fprintf(v286, "%s\n", v284);
                  if (v285)
                  {
                    free(v285);
                  }

                  CFRelease(v282);
                  LODWORD(v199) = v502;
                  goto LABEL_358;
                }
              }

              else
              {
                if (byte_100117E80)
                {
                  v223 = __error();
                  v224 = *v223;
                  v226 = sub_100035B80(v223, v225);
                  if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *v517 = v490;
                    *&v517[8] = 1024;
                    *&v517[10] = v502;
                    *&v517[14] = 2112;
                    *&v517[16] = v202;
                    _os_log_error_impl(&_mh_execute_header, v226, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: No microstackshots with provided UUIDs %@", buf, 0x1Cu);
                  }

                  *__error() = v224;
                  v57 = v490;
                }

                v80 = 0x800000;
                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v227 = *__error();
                  v228 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No microstackshots with provided UUIDs %@", v57, v502, v202);
                  if (!v228)
                  {
                    v230 = sub_100035B80(0, v229);
                    if (os_log_type_enabled(v230, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412802;
                      *v517 = v57;
                      *&v517[8] = 1024;
                      *&v517[10] = v502;
                      *&v517[14] = 2112;
                      *&v517[16] = v202;
                      _os_log_fault_impl(&_mh_execute_header, v230, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: No microstackshots with provided UUIDs %@", buf, 0x1Cu);
                    }

LABEL_354:

                    if (qword_100117E88)
                    {
                      v291 = qword_100117E88;
                    }

                    else
                    {
                      v291 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v291);
LABEL_358:
                    *__error() = v227;
                    v80 = 0x800000;
                    goto LABEL_359;
                  }

                  goto LABEL_321;
                }
              }
            }

            else if ((v502 & 0x80000000) != 0)
            {
              if (byte_100117E80)
              {
                v277 = __error();
                v278 = *v277;
                v280 = sub_100035B80(v277, v279);
                if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A8260();
                }

                *__error() = v278;
                v57 = v490;
              }

              v80 = 0x800000;
              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v227 = *__error();
                v228 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No microstackshots with provided UUIDs %@", v202);
                if (!v228)
                {
                  v230 = sub_100035B80(0, v281);
                  if (os_log_type_enabled(v230, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A82D0();
                  }

                  goto LABEL_354;
                }

                goto LABEL_321;
              }
            }

            else
            {
              if (byte_100117E80)
              {
                v256 = __error();
                v257 = *v256;
                v259 = sub_100035B80(v256, v258);
                if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A8340();
                }

                *__error() = v257;
                v57 = v490;
              }

              v80 = 0x800000;
              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v227 = *__error();
                v260 = sub_100035B20(v502);
                v228 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No microstackshots with provided UUIDs %@", v260, v502, v202);
                if (!v228)
                {
                  v230 = sub_100035B80(0, v261);
                  if (os_log_type_enabled(v230, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A83C8();
                  }

                  goto LABEL_354;
                }

                goto LABEL_321;
              }
            }

LABEL_359:

            v200 = a5;
            if (!v205)
            {
              v49 = v503;
              v105 = v493;
              v305 = v488;
LABEL_493:

              v59 = v501;
              goto LABEL_494;
            }

            goto LABEL_360;
          }

LABEL_23:
          v74 = v58;
          v75 = +[SATimestamp timestamp];
          v73 = [SAAuxiliaryData auxiliaryDataForTimestamp:v75];

          v58 = v74;
          goto LABEL_224;
        }

        v80 = 0x400000000000;
LABEL_264:
        v105 = v48;
LABEL_494:

        goto LABEL_495;
      }

      if (v62)
      {
        if ((v50 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v156 = __error();
            v157 = *v156;
            v159 = sub_100035B80(v156, v158);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              sub_1000A7E00();
            }

            *__error() = v157;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_221;
          }

          v69 = *__error();
          v160 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Unable to determine UUID at path %@", v62, v63);
          if (v160)
          {
            v162 = v160;
            v163 = CFStringGetCStringPtr(v160, 0x8000100u);
            if (v163)
            {
              v164 = v163;
              v165 = 0;
            }

            else
            {
              v164 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
              CFStringGetCString(v162, v164, 1024, 0x8000100u);
              v165 = v164;
            }

            if (qword_100117E88)
            {
              v189 = qword_100117E88;
            }

            else
            {
              v189 = __stderrp;
            }

            fprintf(v189, "%s\n", v164);
            if (v165)
            {
              free(v165);
            }

            v186 = v162;
            goto LABEL_192;
          }

          v182 = sub_100035B80(0, v161);
          if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7E70();
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v113 = __error();
            v114 = *v113;
            v116 = sub_100035B80(v113, v115);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v517 = v62;
              *&v517[8] = 1024;
              *&v517[10] = v502;
              *&v517[14] = 2112;
              *&v517[16] = v63;
              _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: Unable to determine UUID at path %@", buf, 0x1Cu);
            }

            *__error() = v114;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_221;
          }

          v69 = *__error();
          v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Unable to determine UUID at path %@", v62, v502, v63);
          if (v117)
          {
            v119 = v117;
            v120 = CFStringGetCStringPtr(v117, 0x8000100u);
            if (v120)
            {
              v121 = v120;
              v122 = 0;
            }

            else
            {
              v121 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
              CFStringGetCString(v119, v121, 1024, 0x8000100u);
              v122 = v121;
            }

            if (qword_100117E88)
            {
              v185 = qword_100117E88;
            }

            else
            {
              v185 = __stderrp;
            }

            fprintf(v185, "%s\n", v121);
            if (v122)
            {
              free(v122);
            }

            v186 = v119;
            goto LABEL_192;
          }

          v182 = sub_100035B80(0, v118);
          if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *v517 = v62;
            *&v517[8] = 1024;
            *&v517[10] = v502;
            *&v517[14] = 2112;
            *&v517[16] = v63;
            _os_log_fault_impl(&_mh_execute_header, v182, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Unable to determine UUID at path %@", buf, 0x1Cu);
          }
        }

LABEL_216:
        if (qword_100117E88)
        {
          v190 = qword_100117E88;
        }

        else
        {
          v190 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v190);
        goto LABEL_220;
      }

      if ((v50 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v173 = __error();
          v174 = *v173;
          v176 = sub_100035B80(v173, v175);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            sub_1000A7EE0();
          }

          *__error() = v174;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_221;
        }

        v69 = *__error();
        v152 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to determine UUID at path %@", v63);
        if (!v152)
        {
          v154 = sub_100035B80(0, v177);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7F50();
          }

          goto LABEL_215;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v147 = __error();
          v148 = *v147;
          v150 = sub_100035B80(v147, v149);
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            sub_1000A7FC0();
          }

          *__error() = v148;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_221;
        }

        v69 = *__error();
        v151 = sub_100035B20(v50);
        v152 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to determine UUID at path %@", v151, v50, v63);
        if (!v152)
        {
          v154 = sub_100035B80(0, v153);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
          {
            sub_1000A8048();
          }

LABEL_215:

          goto LABEL_216;
        }
      }

      v178 = v152;
      v179 = CFStringGetCStringPtr(v152, 0x8000100u);
      if (v179)
      {
        v180 = v179;
        v181 = 0;
      }

      else
      {
        v180 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
        CFStringGetCString(v178, v180, 1024, 0x8000100u);
        v181 = v180;
      }

      if (qword_100117E88)
      {
        v188 = qword_100117E88;
      }

      else
      {
        v188 = __stderrp;
      }

      fprintf(v188, "%s\n", v180);
      if (v181)
      {
        free(v181);
      }

      v186 = v178;
      goto LABEL_192;
    }
  }

  v64 = v51;
  if (!v57)
  {
    if ((v50 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v95 = __error();
        v96 = *v95;
        v98 = sub_100035B80(v95, v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          sub_1000A8960();
        }

        *__error() = v96;
        v49 = v503;
      }

      v504 = 0;
      v80 = 0x200000000000;
      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_264;
      }

      v81 = *__error();
      v99 = sub_100035B20(v50);
      v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Absolute path required, have %@", v99, v50, v64);
      if (!v82)
      {
        v84 = sub_100035B80(0, v100);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
        {
          sub_1000A89E8();
        }

        goto LABEL_129;
      }

      goto LABEL_59;
    }

    v105 = v48;
    if (byte_100117E80)
    {
      v123 = __error();
      v124 = *v123;
      v126 = sub_100035B80(v123, v125);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        sub_1000A8880();
      }

      *__error() = v124;
      v49 = v503;
    }

    v504 = 0;
    v80 = 0x200000000000;
    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_494;
    }

    v81 = *__error();
    v110 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Absolute path required, have %@", v64);
    if (!v110)
    {
      v112 = sub_100035B80(0, v127);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
      {
        sub_1000A88F0();
      }

      goto LABEL_154;
    }

LABEL_88:
    v101 = v110;
    v128 = CFStringGetCStringPtr(v110, 0x8000100u);
    if (v128)
    {
      v103 = v128;
      v104 = 0;
    }

    else
    {
      v103 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAD27653uLL);
      CFStringGetCString(v101, v103, 1024, 0x8000100u);
      v104 = v103;
    }

LABEL_102:
    if (qword_100117E88)
    {
      v141 = qword_100117E88;
    }

    else
    {
      v141 = __stderrp;
    }

    fprintf(v141, "%s\n", v103);
    if (v104)
    {
      free(v104);
    }

    CFRelease(v101);
    goto LABEL_158;
  }

  if ((v50 & 0x80000000) != 0)
  {
    v105 = v48;
    if (byte_100117E80)
    {
      v106 = __error();
      v107 = *v106;
      v109 = sub_100035B80(v106, v108);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        sub_1000A87A0();
      }

      *__error() = v107;
      v49 = v503;
    }

    v504 = 0;
    v80 = 0x200000000000;
    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_494;
    }

    v81 = *__error();
    v110 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Absolute path required, have %@", v57, v64);
    if (!v110)
    {
      v112 = sub_100035B80(0, v111);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
      {
        sub_1000A8810();
      }

LABEL_154:

      if (qword_100117E88)
      {
        v172 = qword_100117E88;
      }

      else
      {
        v172 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v172);
      goto LABEL_158;
    }

    goto LABEL_88;
  }

  if (byte_100117E80)
  {
    v76 = __error();
    v77 = *v76;
    v79 = sub_100035B80(v76, v78);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v517 = v57;
      *&v517[8] = 1024;
      *&v517[10] = v50;
      *&v517[14] = 2112;
      *&v517[16] = v51;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: Absolute path required, have %@", buf, 0x1Cu);
    }

    *__error() = v77;
    v49 = v503;
  }

  v504 = 0;
  v80 = 0x200000000000;
  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_264;
  }

  v81 = *__error();
  v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Absolute path required, have %@", v57, v50, v64);
  if (v82)
  {
LABEL_59:
    v101 = v82;
    v102 = CFStringGetCStringPtr(v82, 0x8000100u);
    if (v102)
    {
      v103 = v102;
      v104 = 0;
    }

    else
    {
      v103 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAD27653uLL);
      CFStringGetCString(v101, v103, 1024, 0x8000100u);
      v104 = v103;
    }

    v105 = v48;
    goto LABEL_102;
  }

  v84 = sub_100035B80(0, v83);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    *v517 = v57;
    *&v517[8] = 1024;
    *&v517[10] = v50;
    *&v517[14] = 2112;
    *&v517[16] = v64;
    _os_log_fault_impl(&_mh_execute_header, v84, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Absolute path required, have %@", buf, 0x1Cu);
  }

LABEL_129:

  if (qword_100117E88)
  {
    v155 = qword_100117E88;
  }

  else
  {
    v155 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v155);
  v105 = v48;
LABEL_158:
  *__error() = v81;
  v80 = 0x200000000000;
  v49 = v503;

LABEL_495:
  return v80;
}

id sub_100030E14(const char *a1, off_t a2, int a3, void *a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, int a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, void *a16)
{
  value_4 = a4;
  v181 = a16;
  if ((a7 & 1) == 0 && (a8 & 1) == 0)
  {
    sub_1000A7078();
  }

  v23 = a8 ^ 1;
  if (!a1 && (v23 & 1) == 0)
  {
    sub_1000A7270();
  }

  if (a1)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 & v23) != 1)
  {
    if (!&_systemstats_copy_microstackshots_to_file)
    {
      goto LABEL_189;
    }

    if (a1 && a8)
    {
      v31 = geteuid();
      v32 = sub_100032F24(a1, 1537, v31, 420);
      if (v32 == -1)
      {
        if (byte_100117E80 == 1)
        {
          v87 = __error();
          v88 = *v87;
          v90 = sub_100035B80(v87, v89);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            sub_1000A7794();
          }

          *__error() = v88;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v91 = *__error();
          v92 = *__error();
          v93 = __error();
          v94 = strerror(*v93);
          v95 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open datastore file %s: %d (%s)", a1, v92, v94);
          v97 = v95;
          if (v95)
          {
            CStringPtr = CFStringGetCStringPtr(v95, 0x8000100u);
            if (CStringPtr)
            {
              v99 = 0;
            }

            else
            {
              CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x7C749F7uLL);
              CFStringGetCString(v97, CStringPtr, 1024, 0x8000100u);
              v99 = CStringPtr;
            }

            if (qword_100117E88)
            {
              v124 = qword_100117E88;
            }

            else
            {
              v124 = __stderrp;
            }

            fprintf(v124, "%s\n", CStringPtr);
            if (v99)
            {
              free(v99);
            }

            CFRelease(v97);
          }

          else
          {
            v118 = sub_100035B80(0, v96);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
            {
              sub_1000A782C();
            }

            if (qword_100117E88)
            {
              v119 = qword_100117E88;
            }

            else
            {
              v119 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v119);
          }

          *__error() = v91;
        }
      }

      else
      {
        v33 = v32;
        if (a2 && lseek(v32, a2, 0) == -1)
        {
          if (byte_100117E80 == 1)
          {
            v102 = __error();
            v174 = *v102;
            oslog = sub_100035B80(v102, v103);
            v104 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              sub_1000A7660();
              v104 = oslog;
            }

            *__error() = v174;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            osloga = *__error();
            v105 = *__error();
            v106 = __error();
            v107 = strerror(*v106);
            v108 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to seek %s to offset %lld: %d (%s)", a1, a2, v105, v107);
            v110 = v108;
            if (v108)
            {
              v111 = CFStringGetCStringPtr(v108, 0x8000100u);
              if (v111)
              {
                v112 = 0;
              }

              else
              {
                v111 = malloc_type_calloc(0x400uLL, 1uLL, 0xF20F7915uLL);
                CFStringGetCString(v110, v111, 1024, 0x8000100u);
                v112 = v111;
              }

              if (qword_100117E88)
              {
                v128 = qword_100117E88;
              }

              else
              {
                v128 = __stderrp;
              }

              fprintf(v128, "%s\n", v111);
              if (v112)
              {
                free(v112);
              }

              CFRelease(v110);
            }

            else
            {
              v126 = sub_100035B80(0, v109);
              if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
              {
                sub_1000A76F8();
              }

              if (qword_100117E88)
              {
                v127 = qword_100117E88;
              }

              else
              {
                v127 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v127);
            }

            *__error() = osloga;
          }

          close(v33);
        }

        else
        {
          empty = xpc_dictionary_create_empty();
          v35 = empty;
          if (a9 > 0.0)
          {
            xpc_dictionary_set_uint64(empty, "time", (kCFAbsoluteTimeIntervalSince1970 + a9));
          }

          systemstats_copy_microstackshots_to_file();
          close(v33);
        }
      }

      if ((a7 & 1) == 0)
      {
        goto LABEL_189;
      }
    }

    else if ((a7 & 1) == 0)
    {
      sub_1000A7468();
    }

    v129 = [SASampleStore alloc];
    if (a6)
    {
      v130 = [v129 initForLiveSampling];
      [v130 setShouldGatherKextStat:0];
      if (!a12)
      {
LABEL_192:
        if (a13 && *a13 && *(a13 + 4))
        {
          [v130 setMachTimebase:*a13];
        }

        if (a14)
        {
          [v130 setHwPageSize:a14];
        }

        if (a15)
        {
          [v130 setVmPageSize:a15];
        }

        if ((byte_100117E94 & 2) != 0 && sub_10002B3E4())
        {
          if (byte_100117E80 == 1)
          {
            v132 = __error();
            v133 = *v132;
            v135 = sub_100035B80(v132, v134);
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for microstackshot report due to audio running", buf, 2u);
            }

            *__error() = v133;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 2)
          {
            v136 = *__error();
            v137 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for microstackshot report due to audio running");
            v139 = v137;
            if (v137)
            {
              v140 = CFStringGetCStringPtr(v137, 0x8000100u);
              if (v140)
              {
                v141 = 0;
              }

              else
              {
                v140 = malloc_type_calloc(0x400uLL, 1uLL, 0xFD7CA921uLL);
                CFStringGetCString(v139, v140, 1024, 0x8000100u);
                v141 = v140;
              }

              if (qword_100117E88)
              {
                v144 = qword_100117E88;
              }

              else
              {
                v144 = __stderrp;
              }

              fprintf(v144, "%s\n", v140);
              if (v141)
              {
                free(v141);
              }

              CFRelease(v139);
            }

            else
            {
              v142 = sub_100035B80(0, v138);
              if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
              {
                sub_1000A78C8();
              }

              if (qword_100117E88)
              {
                v143 = qword_100117E88;
              }

              else
              {
                v143 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v143);
            }

            *__error() = v136;
          }

          [v130 setDataGatheringOptions:{objc_msgSend(v130, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
        }

        sub_100077DF8(v130, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 & 0x10) == 0);
        *buf = 0;
        v207 = buf;
        v208 = 0x2020000000;
        v209 = 0;
        v204[0] = 0;
        v204[1] = v204;
        v204[2] = 0x2020000000;
        v205 = 0;
        v145 = dispatch_semaphore_create(0);
        v146 = xpc_dictionary_create_empty();
        v147 = v146;
        if (a9 > 0.0)
        {
          xpc_dictionary_set_uint64(v146, "time", (kCFAbsoluteTimeIntervalSince1970 + a9));
        }

        if (a3 >= 1)
        {
          xpc_dictionary_set_uint64(v147, "pid", a3);
        }

        oslogb = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v148 = dispatch_queue_create("com.apple.spindump.microstackshot_parsing", oslogb);
        v187 = _NSConcreteStackBlock;
        v188 = 3221225472;
        v189 = sub_10003239C;
        v190 = &unk_1001093A8;
        v201 = qos_class_self();
        v196 = v204;
        v149 = v130;
        v191 = v149;
        v202 = a11;
        v203 = a3;
        v192 = value_4;
        v198 = a5;
        v199 = a9;
        v200 = a10;
        v193 = v181;
        v197 = buf;
        v150 = v145;
        v194 = v150;
        v151 = v148;
        v195 = v151;
        systemstats_get_microstackshots();
        v183 = 0;
        v184 = &v183;
        v185 = 0x2020000000;
        v186 = 0;
        do
        {
          v152 = dispatch_time(0, 30000000000);
          if (!dispatch_semaphore_wait(v150, v152))
          {
            break;
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005F4F8;
          block[3] = &unk_1001093D0;
          block[4] = v204;
          block[5] = &v183;
          dispatch_sync(v151, block);
        }

        while (*(v184 + 24) != 1);
        if (*(v207 + 3))
        {
          if (byte_100117E80 == 1)
          {
            v153 = __error();
            v154 = *v153;
            v156 = sub_100035B80(v153, v155);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v157 = *(v207 + 6);
              v158 = strerror(v157);
              sub_1000A7904(v158, v211, v157);
            }

            *__error() = v154;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v160 = *__error();
            v161 = *(v207 + 6);
            v162 = strerror(*(v207 + 6));
            v163 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error grabbing microstackshots: %d (%s)", v161, v162);
            v165 = v163;
            if (v163)
            {
              v166 = CFStringGetCStringPtr(v163, 0x8000100u);
              if (v166)
              {
                v167 = 0;
              }

              else
              {
                v166 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D191851uLL);
                CFStringGetCString(v165, v166, 1024, 0x8000100u);
                v167 = v166;
              }

              if (qword_100117E88)
              {
                v172 = qword_100117E88;
              }

              else
              {
                v172 = __stderrp;
              }

              fprintf(v172, "%s\n", v166);
              if (v167)
              {
                free(v167);
              }

              CFRelease(v165);
            }

            else
            {
              v168 = sub_100035B80(0, v164);
              if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
              {
                v169 = *(v207 + 6);
                v170 = strerror(v169);
                sub_1000A794C(v170, v210, v169);
              }

              if (qword_100117E88)
              {
                v171 = qword_100117E88;
              }

              else
              {
                v171 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v171);
            }

            *__error() = v160;
          }
        }

        [v149 postprocess];
        v30 = v149;
        _Block_object_dispose(&v183, 8);

        _Block_object_dispose(v204, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_261;
      }
    }

    else
    {
      v130 = [v129 initForFileParsing];
      if (!a12)
      {
        goto LABEL_192;
      }
    }

    v131 = [NSString stringWithUTF8String:a12];
    [v130 setMachineArchitecture:v131];

    goto LABEL_192;
  }

  v25 = open(a1, 0);
  if (v25 != -1)
  {
    v26 = v25;
    if (a2 && lseek(v25, a2, 0) == -1)
    {
      if (byte_100117E80 == 1)
      {
        v74 = __error();
        v75 = *v74;
        v77 = sub_100035B80(v74, v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1000A7660();
        }

        *__error() = v75;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v78 = *__error();
        v79 = *__error();
        v80 = __error();
        v81 = strerror(*v80);
        v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to seek %s to offset %lld: %d (%s)", a1, a2, v79, v81);
        v84 = v82;
        if (v82)
        {
          v85 = CFStringGetCStringPtr(v82, 0x8000100u);
          if (v85)
          {
            v86 = 0;
          }

          else
          {
            v85 = malloc_type_calloc(0x400uLL, 1uLL, 0x57F454DuLL);
            CFStringGetCString(v84, v85, 1024, 0x8000100u);
            v86 = v85;
          }

          if (qword_100117E88)
          {
            v121 = qword_100117E88;
          }

          else
          {
            v121 = __stderrp;
          }

          fprintf(v121, "%s\n", v85);
          if (v86)
          {
            free(v86);
          }

          CFRelease(v84);
        }

        else
        {
          v116 = sub_100035B80(0, v83);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7994();
          }

          if (qword_100117E88)
          {
            v117 = qword_100117E88;
          }

          else
          {
            v117 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v117);
        }

        *__error() = v78;
      }
    }

    else
    {
      v27 = gzdopen(v26, "r");
      if (v27)
      {
        v28 = v27;
        v29 = [SASampleStore alloc];
        if (a6)
        {
          v30 = [v29 initForLiveSampling];
          [v30 setShouldGatherKextStat:0];
          if (!a12)
          {
LABEL_50:
            if (a13 && *a13 && *(a13 + 4))
            {
              [v30 setMachTimebase:*a13];
            }

            if (a14)
            {
              [v30 setHwPageSize:a14];
            }

            if (a15)
            {
              [v30 setVmPageSize:a15];
            }

            if ((byte_100117E94 & 2) != 0 && sub_10002B3E4())
            {
              if (byte_100117E80 == 1)
              {
                v64 = __error();
                v65 = *v64;
                v67 = sub_100035B80(v64, v66);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for microstackshot report due to audio running", buf, 2u);
                }

                *__error() = v65;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 2)
              {
                v68 = *__error();
                v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for microstackshot report due to audio running");
                v71 = v69;
                if (v69)
                {
                  v72 = CFStringGetCStringPtr(v69, 0x8000100u);
                  if (v72)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v72 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E245F5FuLL);
                    CFStringGetCString(v71, v72, 1024, 0x8000100u);
                    v73 = v72;
                  }

                  if (qword_100117E88)
                  {
                    v125 = qword_100117E88;
                  }

                  else
                  {
                    v125 = __stderrp;
                  }

                  fprintf(v125, "%s\n", v72);
                  if (v73)
                  {
                    free(v73);
                  }

                  CFRelease(v71);
                }

                else
                {
                  v122 = sub_100035B80(0, v70);
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A78C8();
                  }

                  if (qword_100117E88)
                  {
                    v123 = qword_100117E88;
                  }

                  else
                  {
                    v123 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v123);
                }

                *__error() = v68;
              }

              [v30 setDataGatheringOptions:{objc_msgSend(v30, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
            }

            sub_100077DF8(v30, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 & 0x10) == 0);
            sub_1000326A8(v30, v28, 0, 0, a11, a3, value_4, a5, a9, a10, v181);
            gzclose(v28);
            [v30 postprocess];
            goto LABEL_261;
          }
        }

        else
        {
          v30 = [v29 initForFileParsing];
          if (!a12)
          {
            goto LABEL_50;
          }
        }

        v63 = [NSString stringWithUTF8String:a12];
        [v30 setMachineArchitecture:v63];

        goto LABEL_50;
      }

      if (byte_100117E80 == 1)
      {
        v50 = __error();
        v51 = *v50;
        v53 = sub_100035B80(v50, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_1000A7A30();
        }

        *__error() = v51;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v54 = *__error();
        v55 = *__error();
        v56 = __error();
        v57 = strerror(*v56);
        v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gzdopen datastore file %s: %d (%s)", a1, v55, v57);
        v60 = v58;
        if (v58)
        {
          v61 = CFStringGetCStringPtr(v58, 0x8000100u);
          if (v61)
          {
            v62 = 0;
          }

          else
          {
            v61 = malloc_type_calloc(0x400uLL, 1uLL, 0xDC61AB1FuLL);
            CFStringGetCString(v60, v61, 1024, 0x8000100u);
            v62 = v61;
          }

          if (qword_100117E88)
          {
            v120 = qword_100117E88;
          }

          else
          {
            v120 = __stderrp;
          }

          fprintf(v120, "%s\n", v61);
          if (v62)
          {
            free(v62);
          }

          CFRelease(v60);
        }

        else
        {
          v114 = sub_100035B80(0, v59);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7AC8();
          }

          if (qword_100117E88)
          {
            v115 = qword_100117E88;
          }

          else
          {
            v115 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v115);
        }

        *__error() = v54;
      }
    }

    close(v26);
LABEL_189:
    v30 = 0;
    goto LABEL_261;
  }

  if (byte_100117E80 == 1)
  {
    v36 = __error();
    v37 = *v36;
    v39 = sub_100035B80(v36, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7B64();
    }

    *__error() = v37;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_189;
  }

  v41 = *__error();
  v42 = *__error();
  v43 = __error();
  v44 = strerror(*v43);
  v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", a1, v42, v44);
  v47 = v45;
  if (v45)
  {
    v48 = CFStringGetCStringPtr(v45, 0x8000100u);
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v48 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E9E04D7uLL);
      CFStringGetCString(v47, v48, 1024, 0x8000100u);
      v49 = v48;
    }

    if (qword_100117E88)
    {
      v113 = qword_100117E88;
    }

    else
    {
      v113 = __stderrp;
    }

    fprintf(v113, "%s\n", v48);
    if (v49)
    {
      free(v49);
    }

    CFRelease(v47);
  }

  else
  {
    v100 = sub_100035B80(0, v46);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
    {
      sub_1000A7BFC();
    }

    if (qword_100117E88)
    {
      v101 = qword_100117E88;
    }

    else
    {
      v101 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v101);
  }

  v30 = 0;
  *__error() = v41;
LABEL_261:

  return v30;
}

void sub_100032334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 256), 8);
  _Block_object_dispose((v26 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10003239C(uint64_t a1, char a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4 == 54)
  {
    if (byte_100117E80 == 1)
    {
      v9 = __error();
      v10 = *v9;
      v12 = sub_100035B80(v9, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000ACB74();
      }

      *__error() = v10;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v14 = *__error();
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reset from systemstats");
      if (v15)
      {
        v17 = v15;
        CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
        if (CStringPtr)
        {
          v19 = CStringPtr;
          v20 = 0;
        }

        else
        {
          v19 = malloc_type_calloc(0x400uLL, 1uLL, 0x8F65411CuLL);
          CFStringGetCString(v17, v19, 1024, 0x8000100u);
          v20 = v19;
        }

        if (qword_100117E88)
        {
          v31 = qword_100117E88;
        }

        else
        {
          v31 = __stderrp;
        }

        fprintf(v31, "%s\n", v19);
        if (v20)
        {
          free(v20);
        }

        CFRelease(v17);
      }

      else
      {
        v29 = sub_100035B80(0, v16);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000ACBB0();
        }

        if (qword_100117E88)
        {
          v30 = qword_100117E88;
        }

        else
        {
          v30 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v30);
      }

      *__error() = v14;
    }
  }

  else
  {
    v21 = *(a1 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F258;
    block[3] = &unk_100109380;
    v36 = *(a1 + 72);
    v33 = v7;
    v22 = *(a1 + 32);
    v40 = *(a1 + 116);
    v23 = *(a1 + 40);
    v38 = *(a1 + 88);
    v39 = *(a1 + 96);
    v24 = *(a1 + 48);
    v42 = a2;
    v37 = *(a1 + 80);
    v41 = a4;
    v25 = *(a1 + 56);
    *&v26 = v24;
    *(&v26 + 1) = v25;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v34 = v27;
    v35 = v26;
    v28 = dispatch_block_create_with_qos_class(0, v21, 0, block);
    dispatch_sync(*(a1 + 64), v28);
  }
}

void sub_1000326A8(void *a1, gzFile_s *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, uint64_t a8, double a9, double a10, void *a11)
{
  v20 = a1;
  v21 = a7;
  v22 = a11;
  v30 = v22;
  if (!a5 && a6 == -1 && !v21 && !a8 && a9 == 0.0 && a10 == 0.0)
  {
    v31 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_23:
    v47 = [[NSData alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
    [v20 addMicrostackshotsFromData:v47 statistics:v30 filterBlock:v31];

    goto LABEL_24;
  }

  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10005F834;
  v97[3] = &unk_1001093F8;
  v99 = a10;
  v100 = a9;
  v102 = a5;
  v103 = a6;
  v101 = a8;
  v98 = v21;
  v31 = objc_retainBlock(v97);

  if (a3)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (!a2)
  {
    sub_1000AC994(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v95 = v21;
  v32 = malloc_type_calloc(1uLL, 0x20000uLL, 0xF9551A22uLL);
  v33 = gzread(a2, v32, 0x20000u);
  v94 = v33;
  v34 = 0;
  if (v33 < 1)
  {
LABEL_19:
    if (v33 != -1)
    {
      [v30 setBytes_not_microstackshots:{objc_msgSend(v30, "bytes_not_microstackshots") + v34}];
      v21 = v95;
      if (v94 > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_73;
    }

    errnum = 0;
    v48 = gzerror(a2, &errnum);
    v21 = v95;
    if (errnum == -1)
    {
      errnum = *__error();
      if (byte_100117E80 == 1)
      {
        v61 = __error();
        v62 = *v61;
        v64 = sub_100035B80(v61, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_1000AC80C(&errnum);
        }

        *__error() = v62;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v54 = *__error();
        v65 = errnum;
        v66 = strerror(errnum);
        v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Read failed for microstackshots: %d (%s)", v65, v66);
        if (v67)
        {
          v69 = v67;
          CStringPtr = CFStringGetCStringPtr(v67, 0x8000100u);
          if (CStringPtr)
          {
            v71 = CStringPtr;
            v72 = 0;
          }

          else
          {
            v71 = malloc_type_calloc(0x400uLL, 1uLL, 0x12585991uLL);
            CFStringGetCString(v69, v71, 1024, 0x8000100u);
            v72 = v71;
          }

          if (qword_100117E88)
          {
            v78 = qword_100117E88;
          }

          else
          {
            v78 = __stderrp;
          }

          fprintf(v78, "%s\n", v71);
          if (v72)
          {
            free(v72);
          }

          v75 = v69;
          goto LABEL_70;
        }

        v76 = sub_100035B80(0, v68);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          sub_1000AC894(&errnum);
        }

LABEL_59:
        if (qword_100117E88)
        {
          v77 = qword_100117E88;
        }

        else
        {
          v77 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v77);
        goto LABEL_71;
      }
    }

    else
    {
      v49 = v48;
      if (byte_100117E80 == 1)
      {
        v50 = __error();
        v51 = *v50;
        v53 = sub_100035B80(v50, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_1000AC704();
        }

        *__error() = v51;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v54 = *__error();
        v55 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Read failed for microstackshots: %d (%s)", errnum, v49);
        if (v55)
        {
          v57 = v55;
          v58 = CFStringGetCStringPtr(v55, 0x8000100u);
          if (v58)
          {
            v59 = v58;
            v60 = 0;
          }

          else
          {
            v59 = malloc_type_calloc(0x400uLL, 1uLL, 0x702A6BE9uLL);
            CFStringGetCString(v57, v59, 1024, 0x8000100u);
            v60 = v59;
          }

          if (qword_100117E88)
          {
            v74 = qword_100117E88;
          }

          else
          {
            v74 = __stderrp;
          }

          fprintf(v74, "%s\n", v59);
          if (v60)
          {
            free(v60);
          }

          v75 = v57;
LABEL_70:
          CFRelease(v75);
LABEL_71:
          *__error() = v54;
          goto LABEL_72;
        }

        v73 = sub_100035B80(0, v56);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          sub_1000AC788();
        }

        goto LABEL_59;
      }
    }

LABEL_72:
    if (v94 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  v35 = 0;
  v36 = 0x20000;
  while (1)
  {
    v37 = v34 + v33;
    v38 = [[NSData alloc] initWithBytesNoCopy:v32 length:v37 freeWhenDone:0];
    v39 = [v20 addMicrostackshotsFromData:v38 statistics:v30 filterBlock:v31];
    if ((v39 & 0x8000000000000000) != 0)
    {
      break;
    }

    v34 = v37 - v39;
    if (v34)
    {
      if (v39)
      {
        memmove(v32, &v32[v39], v34);
      }

      else
      {
        v36 *= 2;
        v46 = reallocf(v32, v36);
        if (!v46)
        {
          sub_1000AC264(v36);
        }

        v32 = v46;
      }
    }

    if (v36 <= v34)
    {
      sub_1000AC4A0(v34, v36, v40, v41, v42, v43, v44, v45);
    }

    v33 = gzread(a2, &v32[v34], v36 - v34);
    v35 = 1;
    if (v33 < 1)
    {
      goto LABEL_19;
    }
  }

  v21 = v95;
  if ((v35 & 1) == 0)
  {
LABEL_73:
    if (byte_100117E80 == 1)
    {
      v79 = __error();
      v80 = *v79;
      v82 = sub_100035B80(v79, v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        sub_1000AC91C();
      }

      *__error() = v80;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v84 = *__error();
      v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Data does not contain microstackshots");
      if (v85)
      {
        v87 = v85;
        v88 = CFStringGetCStringPtr(v85, 0x8000100u);
        if (v88)
        {
          v89 = v88;
          v90 = 0;
        }

        else
        {
          v89 = malloc_type_calloc(0x400uLL, 1uLL, 0xED953CD1uLL);
          CFStringGetCString(v87, v89, 1024, 0x8000100u);
          v90 = v89;
        }

        if (qword_100117E88)
        {
          v93 = qword_100117E88;
        }

        else
        {
          v93 = __stderrp;
        }

        fprintf(v93, "%s\n", v89);
        if (v90)
        {
          free(v90);
        }

        CFRelease(v87);
      }

      else
      {
        v91 = sub_100035B80(0, v86);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          sub_1000AC958();
        }

        if (qword_100117E88)
        {
          v92 = qword_100117E88;
        }

        else
        {
          v92 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v92);
      }

      *__error() = v84;
    }
  }

LABEL_24:
}

BOOL sub_100032EA0()
{
  byte_100117E94 = byte_100117E94 & 0xFC | 1;
  if (sub_100032E5C("/var/db/.spindump_enable_symbolication"))
  {
    v0 = 8;
  }

  else
  {
    v0 = 16;
  }

  byte_100117E94 = v0 | byte_100117E94 & 0xE3;
  result = sub_100032E5C("/var/db/.spindump_disable_exclaves");
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  byte_100117E94 = byte_100117E94 & 0xDF | v2;
  return result;
}

uint64_t sub_100032F24(const char *a1, int a2, int a3, uint64_t a4)
{
  v6 = a2;
  memset(&v16, 0, sizeof(v16));
  memset(&v15.st_atimespec, 0, 112);
  if ((a2 & 0x200) != 0)
  {
    v8 = -3585;
  }

  else
  {
    v8 = -1025;
  }

  v9 = v8 & a2;
  memset(&v15, 0, 32);
  *__error() = 0;
  if (lstat(a1, &v15) < 0)
  {
    v12 = __error();
    v10 = 0xFFFFFFFFLL;
    if ((v6 & 0x200) != 0 && *v12 == 2)
    {
      v13 = open(a1, v9 | 0xA00, a4);
      if (v13 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v13;
      }
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
    if ((v15.st_mode & 0xF000) == 0x8000 && v15.st_nlink == 1 && v15.st_uid == a3 && (v15.st_mode & 0xFFF) == a4)
    {
      v11 = open(a1, v9, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v10 = v11;
        if (!fstat(v11, &v16) && v16.st_nlink == v15.st_nlink && v16.st_uid == v15.st_uid && v16.st_mode == v15.st_mode && v16.st_ino == v15.st_ino && v16.st_dev == v15.st_dev)
        {
          if ((v6 & 0x400) != 0)
          {
            ftruncate(v10, 0);
          }
        }

        else
        {
          close(v10);
          *__error() = 59;
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v10;
}

CFAbsoluteTime sub_1000330D8(char *a1)
{
  __endptr = 0;
  v2 = strtol(a1, &__endptr, 0);
  if (__endptr != a1 && !*__endptr)
  {
    v12 = v2;
    if (byte_100117E80 == 1)
    {
      v13 = __error();
      v14 = *v13;
      v16 = sub_100035B80(v13, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B12FC();
      }

      *__error() = v14;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v18 = *__error();
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found unix timestamp %ld", v12);
      if (v19)
      {
        v21 = v19;
        CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
        if (CStringPtr)
        {
          v23 = CStringPtr;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x42F722B5uLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100117E88)
        {
          v100 = qword_100117E88;
        }

        else
        {
          v100 = __stderrp;
        }

        fprintf(v100, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        CFRelease(v21);
      }

      else
      {
        v72 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          sub_1000B136C();
        }

        if (qword_100117E88)
        {
          v73 = qword_100117E88;
        }

        else
        {
          v73 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v73);
      }

      *__error() = v18;
    }

    v101 = v12;
    return v101 - kCFAbsoluteTimeIntervalSince1970;
  }

  memset(&v137, 0, sizeof(v137));
  v137.tm_isdst = -1;
  v3 = strptime(a1, "%Y-%m-%d %T %z", &v137);
  __endptr = v3;
  if (v3 && !*v3)
  {
    v25 = mktime(&v137);
    if (byte_100117E80 == 1)
    {
      v26 = __error();
      v27 = *v26;
      v29 = sub_100035B80(v26, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B13DC();
      }

      *__error() = v27;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_170;
    }

    v31 = *__error();
    v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone number %ld", v25);
    if (v32)
    {
      v34 = v32;
      v35 = CFStringGetCStringPtr(v32, 0x8000100u);
      if (!v35)
      {
        v36 = 2377879084;
        goto LABEL_162;
      }

      goto LABEL_69;
    }

    v94 = sub_100035B80(0, v33);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_144;
    }

LABEL_113:
    sub_1000B144C();
    goto LABEL_144;
  }

  v4 = strptime(a1, "%Y-%m-%dT%T %z", &v137);
  if (v4 && !*v4)
  {
    v25 = mktime(&v137);
    if (byte_100117E80 == 1)
    {
      v37 = __error();
      v38 = *v37;
      v40 = sub_100035B80(v37, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B13DC();
      }

      *__error() = v38;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_170;
    }

    v31 = *__error();
    v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone number %ld", v25);
    if (v42)
    {
      v34 = v42;
      v35 = CFStringGetCStringPtr(v42, 0x8000100u);
      if (!v35)
      {
        v36 = 1049548421;
        goto LABEL_162;
      }

      goto LABEL_69;
    }

    v94 = sub_100035B80(0, v43);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_144;
    }

    goto LABEL_113;
  }

  v5 = strptime(a1, "%Y-%m-%d %T %Z", &v137);
  __endptr = v5;
  if (v5 && !*v5)
  {
    v25 = mktime(&v137);
    if (byte_100117E80 == 1)
    {
      v44 = __error();
      v45 = *v44;
      v47 = sub_100035B80(v44, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B14BC();
      }

      *__error() = v45;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_170;
    }

    v31 = *__error();
    v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone name %ld", v25);
    if (!v48)
    {
      v94 = sub_100035B80(0, v49);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
LABEL_143:
        sub_1000B152C();
      }

LABEL_144:

      if (qword_100117E88)
      {
        v104 = qword_100117E88;
      }

      else
      {
        v104 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
LABEL_169:
      *__error() = v31;
LABEL_170:
      v101 = v25;
      return v101 - kCFAbsoluteTimeIntervalSince1970;
    }

    v34 = v48;
    v35 = CFStringGetCStringPtr(v48, 0x8000100u);
    if (!v35)
    {
      v36 = 2215867693;
      goto LABEL_162;
    }

LABEL_69:
    v56 = v35;
    v57 = 0;
LABEL_163:
    if (qword_100117E88)
    {
      v115 = qword_100117E88;
    }

    else
    {
      v115 = __stderrp;
    }

    fprintf(v115, "%s\n", v56);
    if (v57)
    {
      free(v57);
    }

    CFRelease(v34);
    goto LABEL_169;
  }

  v6 = strptime(a1, "%Y-%m-%dT%T %Z", &v137);
  if (v6 && !*v6)
  {
    v25 = mktime(&v137);
    if (byte_100117E80 == 1)
    {
      v50 = __error();
      v51 = *v50;
      v53 = sub_100035B80(v50, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B14BC();
      }

      *__error() = v51;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_170;
    }

    v31 = *__error();
    v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone name %ld", v25);
    if (v54)
    {
      v34 = v54;
      v35 = CFStringGetCStringPtr(v54, 0x8000100u);
      if (v35)
      {
        goto LABEL_69;
      }

      v36 = 3599346824;
LABEL_162:
      v56 = malloc_type_calloc(0x400uLL, 1uLL, v36);
      CFStringGetCString(v34, v56, 1024, 0x8000100u);
      v57 = v56;
      goto LABEL_163;
    }

    v94 = sub_100035B80(0, v55);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_143;
    }

    goto LABEL_144;
  }

  v7 = strptime(a1, "%Y-%m-%d %T", &v137);
  __endptr = v7;
  if (v7 || (v7 = strptime(a1, "%Y-%m-%dT%T", &v137), (__endptr = v7) != 0))
  {
    v8 = v7;
    if (*v7 == 46)
    {
      *&v139[0] = 0;
      *v64.i64 = strtod(v7 - 2, v139);
      v133 = v64;
      if (*&v139[0] <= v8)
      {
        sub_1000B159C(v139, v8, v58, v59, v60, v61, v62, v63);
      }

      if (!**&v139[0] || ((v65 = strptime(*&v139[0], " %z", &v137), (__endptr = v65) != 0) || (v65 = strptime(*&v139[0], " %Z", &v137), (__endptr = v65) != 0)) && !*v65)
      {
        v9 = mktime(&v137);
        if (*v133.i64 > 0.0)
        {
          if (byte_100117E80 == 1)
          {
            v74 = __error();
            v75 = *v74;
            v77 = sub_100035B80(v74, v76);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B18E0();
            }

            *__error() = v75;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_160;
          }

          v78 = *__error();
          *v79.i64 = *v133.i64 - trunc(*v133.i64);
          v80.f64[0] = NAN;
          v80.f64[1] = NAN;
          v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp %ld with subseconds %f", v9, vbslq_s8(vnegq_f64(v80), v79, v133).u64[0]);
          if (v81)
          {
            v83 = v81;
            v84 = CFStringGetCStringPtr(v81, 0x8000100u);
            if (v84)
            {
LABEL_111:
              v92 = v84;
              v93 = 0;
LABEL_153:
              if (qword_100117E88)
              {
                v112 = qword_100117E88;
              }

              else
              {
                v112 = __stderrp;
              }

              fprintf(v112, "%s\n", v92);
              if (v93)
              {
                free(v93);
              }

              CFRelease(v83);
LABEL_159:
              *__error() = v78;
LABEL_160:
              *v10.i64 = *v133.i64 - trunc(*v133.i64);
              v113.f64[0] = NAN;
              v113.f64[1] = NAN;
              return *vbslq_s8(vnegq_f64(v113), v10, v133).i64 + v9 - kCFAbsoluteTimeIntervalSince1970;
            }

            v85 = 1683825117;
LABEL_152:
            v92 = malloc_type_calloc(0x400uLL, 1uLL, v85);
            CFStringGetCString(v83, v92, 1024, 0x8000100u);
            v93 = v92;
            goto LABEL_153;
          }

          v102 = sub_100035B80(0, v82);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
          {
            sub_1000B1968();
          }

LABEL_138:

          if (qword_100117E88)
          {
            v103 = qword_100117E88;
          }

          else
          {
            v103 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
          goto LABEL_159;
        }

LABEL_103:
        if (byte_100117E80 == 1)
        {
          v86 = __error();
          v87 = *v86;
          v89 = sub_100035B80(v86, v88);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            sub_1000B1800();
          }

          *__error() = v87;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_160;
        }

        v78 = *__error();
        v90 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp %ld", v9);
        if (v90)
        {
          v83 = v90;
          v84 = CFStringGetCStringPtr(v90, 0x8000100u);
          if (v84)
          {
            goto LABEL_111;
          }

          v85 = 225392900;
          goto LABEL_152;
        }

        v102 = sub_100035B80(0, v91);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1870();
        }

        goto LABEL_138;
      }
    }

    else if (!*v7)
    {
      v9 = mktime(&v137);
      v11.i64[0] = 0;
      v133 = v11;
      goto LABEL_103;
    }
  }

  atp = 0.0;
  v66 = CFLocaleCopyCurrent();
  if (v66)
  {
    v67 = CFStringCreateWithCString(0, a1, 0x8000100u);
    if (v67)
    {
      v68 = 0;
      v69 = 0;
LABEL_78:
      v70 = 0;
      while (1)
      {
        if (v69)
        {
          CFRelease(v69);
        }

        v71 = CFDateFormatterCreate(0, v66, qword_1000C5578[v68], qword_1000C5578[v70]);
        if (!v71)
        {
          break;
        }

        v69 = v71;
        CFDateFormatterSetProperty(v71, kCFDateFormatterIsLenient, kCFBooleanTrue);
        if (CFDateFormatterGetAbsoluteTimeFromString(v69, v67, 0, &atp))
        {
          goto LABEL_188;
        }

        if (++v70 == 4)
        {
          if (++v68 != 4)
          {
            goto LABEL_78;
          }

          goto LABEL_188;
        }
      }

      if (byte_100117E80 == 1)
      {
        v95 = __error();
        v96 = *v95;
        v98 = sub_100035B80(v95, v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          sub_1000B19DC();
        }

        *__error() = v96;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v105 = *__error();
        v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create date formatter");
        if (v106)
        {
          v108 = v106;
          v109 = CFStringGetCStringPtr(v106, 0x8000100u);
          if (v109)
          {
            v110 = v109;
            v111 = 0;
          }

          else
          {
            v110 = malloc_type_calloc(0x400uLL, 1uLL, 0x79F28351uLL);
            CFStringGetCString(v108, v110, 1024, 0x8000100u);
            v111 = v110;
          }

          if (qword_100117E88)
          {
            v118 = qword_100117E88;
          }

          else
          {
            v118 = __stderrp;
          }

          fprintf(v118, "%s\n", v110);
          if (v111)
          {
            free(v111);
          }

          CFRelease(v108);
        }

        else
        {
          v116 = sub_100035B80(0, v107);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
            sub_1000B1A1C();
          }

          if (qword_100117E88)
          {
            v117 = qword_100117E88;
          }

          else
          {
            v117 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v117);
        }

        v69 = 0;
        *__error() = v105;
        goto LABEL_188;
      }
    }

    v69 = 0;
  }

  else
  {
    v69 = 0;
    v67 = 0;
  }

LABEL_188:
  if (atp == 0.0)
  {
    memset(v139, 0, sizeof(v139));
    memset(&v135, 0, sizeof(v135));
    v134 = (CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970);
    localtime_r(&v134, &v135);
    strftime(v139, 0x80uLL, "%Y-%m-%dT%T%z", &v135);
    if (byte_100117E80 == 1)
    {
      v119 = __error();
      v120 = *v119;
      v122 = sub_100035B80(v119, v121);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1A58();
      }

      *__error() = v120;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v123 = *__error();
      v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to parse time string %s, try using format '%%Y-%%m-%%dT%%T%%z', e.g. %s", a1, v139);
      if (v124)
      {
        v126 = v124;
        v127 = CFStringGetCStringPtr(v124, 0x8000100u);
        if (v127)
        {
          v128 = v127;
          v129 = 0;
        }

        else
        {
          v128 = malloc_type_calloc(0x400uLL, 1uLL, 0x9FD9AA7BuLL);
          CFStringGetCString(v126, v128, 1024, 0x8000100u);
          v129 = v128;
        }

        if (qword_100117E88)
        {
          v132 = qword_100117E88;
        }

        else
        {
          v132 = __stderrp;
        }

        fprintf(v132, "%s\n", v128);
        if (v129)
        {
          free(v129);
        }

        CFRelease(v126);
      }

      else
      {
        v130 = sub_100035B80(0, v125);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1AD4();
        }

        if (qword_100117E88)
        {
          v131 = qword_100117E88;
        }

        else
        {
          v131 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v131);
      }

      *__error() = v123;
    }
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  return atp;
}

uint64_t sub_100034124(uint64_t a1, uint64_t a2)
{
  if (qword_100117680 != -1)
  {
    sub_10009CEBC();
  }

  return dword_100117678;
}

void sub_10003415C(id a1)
{
  *v2 = 0x600000001;
  v1 = 4;
  if (sysctl(v2, 2u, &dword_100117678, &v1, 0, 0) == -1)
  {
    sub_10009CED0();
  }
}

uint64_t sub_1000341E8(char *a1, int a2, int a3, char a4, char **a5)
{
  v207 = getpid();
  __endptr = 0;
  if (!a1 || !*a1)
  {
    return 4294967294;
  }

  v9 = strtol(a1, &__endptr, 0);
  if (__endptr != a1 && !*__endptr)
  {
    v24 = v9;
    if (!v9 || !kill(v9, 0))
    {
      if (a5)
      {
        if (proc_pidpath(v24, &buffer, 0x400u) >= 1)
        {
          v63 = malloc_type_malloc(0x400uLL, 0x447CF6B4uLL);
          *a5 = v63;
          basename_r(&buffer, v63);
        }

        if (byte_100117E80 == 1)
        {
          v64 = __error();
          v65 = *v64;
          v67 = sub_100035B80(v64, v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            sub_10009CEFC();
          }

          *__error() = v65;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          return v24;
        }

        v68 = *__error();
        v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found pid %s [%d]", *a5, v24);
        if (v69)
        {
          v71 = v69;
          CStringPtr = CFStringGetCStringPtr(v69, 0x8000100u);
          if (CStringPtr)
          {
            v73 = CStringPtr;
            v74 = 0;
          }

          else
          {
            v73 = malloc_type_calloc(0x400uLL, 1uLL, 0xCA623E3CuLL);
            CFStringGetCString(v71, v73, 1024, 0x8000100u);
            v74 = v73;
          }

          if (qword_100117E88)
          {
            v195 = qword_100117E88;
          }

          else
          {
            v195 = __stderrp;
          }

          fprintf(v195, "%s\n", v73);
          if (v74)
          {
            free(v74);
          }

          v196 = v71;
LABEL_328:
          CFRelease(v196);
LABEL_329:
          *__error() = v68;
          return v24;
        }

        v192 = sub_100035B80(0, v70);
        if (os_log_type_enabled(v192, OS_LOG_TYPE_FAULT))
        {
          sub_10009CF78();
        }
      }

      else
      {
        if (byte_100117E80 == 1)
        {
          v157 = __error();
          v158 = *v157;
          v160 = sub_100035B80(v157, v159);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
          {
            sub_10009CFF4(v24, v160);
          }

          *__error() = v158;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          return v24;
        }

        v68 = *__error();
        v162 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found pid [%d]", v24);
        if (v162)
        {
          v164 = v162;
          v165 = CFStringGetCStringPtr(v162, 0x8000100u);
          if (v165)
          {
            v166 = v165;
            v167 = 0;
          }

          else
          {
            v166 = malloc_type_calloc(0x400uLL, 1uLL, 0xBBBD025DuLL);
            CFStringGetCString(v164, v166, 1024, 0x8000100u);
            v167 = v166;
          }

          if (qword_100117E88)
          {
            v198 = qword_100117E88;
          }

          else
          {
            v198 = __stderrp;
          }

          fprintf(v198, "%s\n", v166);
          if (v167)
          {
            free(v167);
          }

          v196 = v164;
          goto LABEL_328;
        }

        v192 = sub_100035B80(0, v163);
        if (os_log_type_enabled(v192, OS_LOG_TYPE_FAULT))
        {
          sub_10009D06C(v24, v192);
        }
      }

      if (qword_100117E88)
      {
        v197 = qword_100117E88;
      }

      else
      {
        v197 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v197);
      goto LABEL_329;
    }
  }

  if (qword_100117680 != -1)
  {
    sub_10009CEBC();
  }

  v10 = dword_100117678;
  v202 = malloc_type_calloc(dword_100117678, 4uLL, 0x100004052888210uLL);
  v11 = proc_listallpids(v202, 4 * v10);
  if (v11 == -1)
  {
    perror("proc_listallpids");
    free(v202);
    return 4294967294;
  }

  LODWORD(v12) = v11;
  v13 = malloc_type_calloc(v11, 0x400uLL, 0x1000040D7EB2065uLL);
  __s1 = v13;
  v205 = a1;
  if (v12 < 1)
  {
    if (a3)
    {
      sub_100035AD8(&buffer, 0x100uLL, "Multiple matches for %s: ", a1);
      v41 = 0;
LABEL_133:
      v24 = 4294967294;
LABEL_134:
      if (a5)
      {
        goto LABEL_302;
      }

      goto LABEL_303;
    }

    v199 = v12;
    v200 = a5;
    v204 = -1;
LABEL_95:
    if (v199 >= 1 && (a2 & 1) == 0)
    {
      v75 = v199;
      v43 = __s1;
      v76 = __s1;
      v77 = v202;
      do
      {
        if (!strncasecmp(v43, a1, 0x400uLL))
        {
          if (byte_100117E80 == 1)
          {
            v78 = __error();
            v79 = *v78;
            v81 = sub_100035B80(v78, v80);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v93 = *v77;
              buffer = 136315394;
              v212 = v76;
              v213 = 1024;
              v214 = v93;
              _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "Found case insensitive match %s [%d]", &buffer, 0x12u);
            }

            *__error() = v79;
            a1 = v205;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 0)
          {
            v83 = *__error();
            v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive match %s [%d]", v43, *v77);
            if (v84)
            {
              v86 = v84;
              v87 = CFStringGetCStringPtr(v84, 0x8000100u);
              if (v87)
              {
                v88 = v87;
                v89 = 0;
              }

              else
              {
                v88 = malloc_type_calloc(0x400uLL, 1uLL, 0x40E1C931uLL);
                CFStringGetCString(v86, v88, 1024, 0x8000100u);
                v89 = v88;
              }

              if (qword_100117E88)
              {
                v92 = qword_100117E88;
              }

              else
              {
                v92 = __stderrp;
              }

              fprintf(v92, "%s\n", v88);
              if (v89)
              {
                free(v89);
              }

              CFRelease(v86);
            }

            else
            {
              v90 = sub_100035B80(0, v85);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
              {
                v94 = *v77;
                buffer = 136315394;
                v212 = v76;
                v213 = 1024;
                v214 = v94;
                _os_log_fault_impl(&_mh_execute_header, v90, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive match %s [%d]", &buffer, 0x12u);
              }

              if (qword_100117E88)
              {
                v91 = qword_100117E88;
              }

              else
              {
                v91 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v91);
            }

            *__error() = v83;
            a1 = v205;
          }

          v24 = *v77;
          if ((a4 & 1) != 0 || v207 != v24)
          {
            if (v207 != v24)
            {
              goto LABEL_236;
            }

            v204 = *v77;
          }
        }

        ++v77;
        v43 += 1024;
        v76 += 1024;
        --v75;
      }

      while (v75);
      v95 = strlen(a1);
      if (v95 <= 0x3FF)
      {
        v96 = v95;
        v97 = v199;
        v43 = __s1;
        v98 = __s1;
        v99 = v202;
        while (1)
        {
          if (!strncmp(v43, a1, v96))
          {
            if (byte_100117E80 == 1)
            {
              v100 = __error();
              v101 = *v100;
              v103 = sub_100035B80(v100, v102);
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
              {
                v115 = *v99;
                buffer = 136315394;
                v212 = v98;
                v213 = 1024;
                v214 = v115;
                _os_log_debug_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "Found prefix match %s [%d]", &buffer, 0x12u);
              }

              *__error() = v101;
              a1 = v205;
            }

            if (byte_100117E81 == 1 && dword_100117510 <= 0)
            {
              v105 = *__error();
              v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found prefix match %s [%d]", v43, *v99);
              if (v106)
              {
                v108 = v106;
                v109 = CFStringGetCStringPtr(v106, 0x8000100u);
                if (v109)
                {
                  v110 = v109;
                  v111 = 0;
                }

                else
                {
                  v110 = malloc_type_calloc(0x400uLL, 1uLL, 0x2F294D78uLL);
                  CFStringGetCString(v108, v110, 1024, 0x8000100u);
                  v111 = v110;
                }

                if (qword_100117E88)
                {
                  v114 = qword_100117E88;
                }

                else
                {
                  v114 = __stderrp;
                }

                fprintf(v114, "%s\n", v110);
                if (v111)
                {
                  free(v111);
                }

                CFRelease(v108);
              }

              else
              {
                v112 = sub_100035B80(0, v107);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
                {
                  v116 = *v99;
                  buffer = 136315394;
                  v212 = v98;
                  v213 = 1024;
                  v214 = v116;
                  _os_log_fault_impl(&_mh_execute_header, v112, OS_LOG_TYPE_FAULT, "Unable to format: Found prefix match %s [%d]", &buffer, 0x12u);
                }

                if (qword_100117E88)
                {
                  v113 = qword_100117E88;
                }

                else
                {
                  v113 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
              }

              *__error() = v105;
              a1 = v205;
            }

            v24 = *v99;
            if ((a4 & 1) != 0 || v207 != v24)
            {
              if (v207 != v24)
              {
                goto LABEL_236;
              }

              v204 = *v99;
            }
          }

          ++v99;
          v43 += 1024;
          v98 += 1024;
          if (!--v97)
          {
            v117 = v199;
            v43 = __s1;
            v118 = __s1;
            v119 = v202;
            while (1)
            {
              if (!strncasecmp(v43, a1, v96))
              {
                if (byte_100117E80 == 1)
                {
                  v120 = __error();
                  v121 = *v120;
                  v123 = sub_100035B80(v120, v122);
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
                  {
                    v135 = *v119;
                    buffer = 136315394;
                    v212 = v118;
                    v213 = 1024;
                    v214 = v135;
                    _os_log_debug_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEBUG, "Found case insensitive prefix match %s [%d]", &buffer, 0x12u);
                  }

                  *__error() = v121;
                  a1 = v205;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 0)
                {
                  v125 = *__error();
                  v126 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive prefix match %s [%d]", v43, *v119);
                  if (v126)
                  {
                    v128 = v126;
                    v129 = CFStringGetCStringPtr(v126, 0x8000100u);
                    if (v129)
                    {
                      v130 = v129;
                      v131 = 0;
                    }

                    else
                    {
                      v130 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CB77C74uLL);
                      CFStringGetCString(v128, v130, 1024, 0x8000100u);
                      v131 = v130;
                    }

                    if (qword_100117E88)
                    {
                      v134 = qword_100117E88;
                    }

                    else
                    {
                      v134 = __stderrp;
                    }

                    fprintf(v134, "%s\n", v130);
                    if (v131)
                    {
                      free(v131);
                    }

                    CFRelease(v128);
                  }

                  else
                  {
                    v132 = sub_100035B80(0, v127);
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
                    {
                      v136 = *v119;
                      buffer = 136315394;
                      v212 = v118;
                      v213 = 1024;
                      v214 = v136;
                      _os_log_fault_impl(&_mh_execute_header, v132, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive prefix match %s [%d]", &buffer, 0x12u);
                    }

                    if (qword_100117E88)
                    {
                      v133 = qword_100117E88;
                    }

                    else
                    {
                      v133 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v133);
                  }

                  *__error() = v125;
                  a1 = v205;
                }

                v24 = *v119;
                if ((a4 & 1) != 0 || v207 != v24)
                {
                  if (v207 != v24)
                  {
                    goto LABEL_236;
                  }

                  v204 = *v119;
                }
              }

              ++v119;
              v43 += 1024;
              v118 += 1024;
              if (!--v117)
              {
                v137 = v199;
                v43 = __s1;
                v138 = __s1;
                v139 = v202;
                while (1)
                {
                  if (strstr(v43, a1))
                  {
                    if (byte_100117E80 == 1)
                    {
                      v140 = __error();
                      v141 = *v140;
                      v143 = sub_100035B80(v140, v142);
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
                      {
                        v155 = *v139;
                        buffer = 136315394;
                        v212 = v138;
                        v213 = 1024;
                        v214 = v155;
                        _os_log_debug_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEBUG, "Found partial match %s [%d]", &buffer, 0x12u);
                      }

                      *__error() = v141;
                      a1 = v205;
                    }

                    if (byte_100117E81 == 1 && dword_100117510 <= 0)
                    {
                      v145 = *__error();
                      v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found partial match %s [%d]", v43, *v139);
                      if (v146)
                      {
                        v148 = v146;
                        v149 = CFStringGetCStringPtr(v146, 0x8000100u);
                        if (v149)
                        {
                          v150 = v149;
                          v151 = 0;
                        }

                        else
                        {
                          v150 = malloc_type_calloc(0x400uLL, 1uLL, 0x65BA8629uLL);
                          CFStringGetCString(v148, v150, 1024, 0x8000100u);
                          v151 = v150;
                        }

                        if (qword_100117E88)
                        {
                          v154 = qword_100117E88;
                        }

                        else
                        {
                          v154 = __stderrp;
                        }

                        fprintf(v154, "%s\n", v150);
                        if (v151)
                        {
                          free(v151);
                        }

                        CFRelease(v148);
                      }

                      else
                      {
                        v152 = sub_100035B80(0, v147);
                        if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
                        {
                          v156 = *v139;
                          buffer = 136315394;
                          v212 = v138;
                          v213 = 1024;
                          v214 = v156;
                          _os_log_fault_impl(&_mh_execute_header, v152, OS_LOG_TYPE_FAULT, "Unable to format: Found partial match %s [%d]", &buffer, 0x12u);
                        }

                        if (qword_100117E88)
                        {
                          v153 = qword_100117E88;
                        }

                        else
                        {
                          v153 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v153);
                      }

                      *__error() = v145;
                      a1 = v205;
                    }

                    v24 = *v139;
                    if ((a4 & 1) != 0 || v207 != v24)
                    {
                      if (v207 != v24)
                      {
                        goto LABEL_236;
                      }

                      v204 = *v139;
                    }
                  }

                  ++v139;
                  v43 += 1024;
                  v138 += 1024;
                  if (!--v137)
                  {
                    v168 = __s1;
                    v169 = __s1;
                    v170 = v202;
                    v24 = v204;
                    v171 = v199;
                    while (1)
                    {
                      if (strcasestr(v168, a1))
                      {
                        if (byte_100117E80 == 1)
                        {
                          v172 = __error();
                          v173 = *v172;
                          v175 = sub_100035B80(v172, v174);
                          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
                          {
                            v188 = *v170;
                            buffer = 136315394;
                            v212 = v169;
                            v213 = 1024;
                            v214 = v188;
                            _os_log_debug_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEBUG, "Found case insensitive partial match %s [%d]", &buffer, 0x12u);
                          }

                          *__error() = v173;
                        }

                        if (byte_100117E81 == 1 && dword_100117510 <= 0)
                        {
                          v177 = *__error();
                          v178 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive partial match %s [%d]", v168, *v170);
                          if (v178)
                          {
                            v180 = v178;
                            v181 = CFStringGetCStringPtr(v178, 0x8000100u);
                            if (v181)
                            {
                              v182 = v181;
                              v183 = 0;
                            }

                            else
                            {
                              v182 = malloc_type_calloc(0x400uLL, 1uLL, 0x2BCC3AFBuLL);
                              CFStringGetCString(v180, v182, 1024, 0x8000100u);
                              v183 = v182;
                            }

                            if (qword_100117E88)
                            {
                              v186 = qword_100117E88;
                            }

                            else
                            {
                              v186 = __stderrp;
                            }

                            fprintf(v186, "%s\n", v182);
                            if (v183)
                            {
                              free(v183);
                            }

                            CFRelease(v180);
                          }

                          else
                          {
                            v184 = sub_100035B80(0, v179);
                            if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
                            {
                              v189 = *v170;
                              buffer = 136315394;
                              v212 = v169;
                              v213 = 1024;
                              v214 = v189;
                              _os_log_fault_impl(&_mh_execute_header, v184, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive partial match %s [%d]", &buffer, 0x12u);
                            }

                            if (qword_100117E88)
                            {
                              v185 = qword_100117E88;
                            }

                            else
                            {
                              v185 = __stderrp;
                            }

                            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v185);
                          }

                          *__error() = v177;
                        }

                        v187 = *v170;
                        if ((a4 & 1) != 0 || v207 != v187)
                        {
                          if (v207 != v187)
                          {
                            if (v200)
                            {
                              *v200 = strdup(v168);
                            }

                            v24 = v187;
                            goto LABEL_303;
                          }

                          v24 = *v170;
                        }
                      }

                      ++v170;
                      v168 += 1024;
                      v169 += 1024;
                      if (!--v171)
                      {
                        goto LABEL_303;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v24 = v204;
    goto LABEL_303;
  }

  v14 = v13;
  v199 = v12;
  v15 = v12;
  v12 = v12;
  v16 = v202;
  v17 = v13;
  do
  {
    v18 = *v16++;
    if (proc_pidpath(v18, &buffer, 0x400u) >= 1)
    {
      basename_r(&buffer, v17);
    }

    v17 += 1024;
    --v12;
  }

  while (v12);
  v200 = a5;
  if ((a3 & 1) == 0)
  {
    v204 = -1;
    v42 = &byte_100117E80;
    v43 = v14;
    v44 = v202;
    do
    {
      if (!strncmp(v43, a1, 0x400uLL))
      {
        if (*v42 == 1)
        {
          v45 = __error();
          v46 = *v45;
          v48 = sub_100035B80(v45, v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v61 = *v44;
            buffer = 136315394;
            v212 = v14;
            v213 = 1024;
            v214 = v61;
            _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Found exact match %s [%d]", &buffer, 0x12u);
          }

          *__error() = v46;
          a1 = v205;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 0)
        {
          v50 = *__error();
          v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found exact match %s [%d]", v43, *v44);
          if (v51)
          {
            v53 = v51;
            v54 = v42;
            v55 = CFStringGetCStringPtr(v51, 0x8000100u);
            if (v55)
            {
              v56 = v55;
              v57 = 0;
            }

            else
            {
              v56 = malloc_type_calloc(0x400uLL, 1uLL, 0xFD0C384BuLL);
              CFStringGetCString(v53, v56, 1024, 0x8000100u);
              v57 = v56;
            }

            if (qword_100117E88)
            {
              v60 = qword_100117E88;
            }

            else
            {
              v60 = __stderrp;
            }

            fprintf(v60, "%s\n", v56);
            if (v57)
            {
              free(v57);
            }

            CFRelease(v53);
            v42 = v54;
          }

          else
          {
            v58 = sub_100035B80(0, v52);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              v62 = *v44;
              buffer = 136315394;
              v212 = v14;
              v213 = 1024;
              v214 = v62;
              _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "Unable to format: Found exact match %s [%d]", &buffer, 0x12u);
            }

            if (qword_100117E88)
            {
              v59 = qword_100117E88;
            }

            else
            {
              v59 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
          }

          *__error() = v50;
          a1 = v205;
        }

        v24 = *v44;
        if ((a4 & 1) != 0 || v207 != v24)
        {
          if (v207 != v24)
          {
LABEL_236:
            if (v200)
            {
              *v200 = strdup(v43);
            }

            goto LABEL_303;
          }

          v204 = *v44;
        }
      }

      ++v44;
      v43 += 1024;
      v14 += 1024;
      --v15;
    }

    while (v15);
    goto LABEL_95;
  }

  v19 = sub_100035AD8(&buffer, 0x100uLL, "Multiple matches for %s: ", a1);
  v20 = v14;
  v21 = 0;
  v22 = 0;
  v203 = 0;
  v23 = &buffer + v19;
  v24 = 0xFFFFFFFFLL;
  v25 = v20;
  v26 = v202;
  do
  {
    if (a2)
    {
      if (strncmp(v25, a1, 0x400uLL))
      {
        goto LABEL_30;
      }
    }

    else if (!strcasestr(v25, a1))
    {
      goto LABEL_30;
    }

    v27 = *v26;
    if ((a4 & 1) != 0 || v207 != v27)
    {
      if (v207 != v27)
      {
        if (a5 && !v21)
        {
          v203 = strdup(v25);
        }

        v28 = ", ";
        if (!v22)
        {
          v28 = "";
        }

        v23 += sub_100035AD8(v23, &v215 - v23, "%s%s [%d]", v28, v25, v27);
        ++v21;
        ++v22;
      }

      v24 = v27;
    }

    a1 = v205;
LABEL_30:
    ++v26;
    v25 += 1024;
    --v15;
  }

  while (v15);
  if (v21 < 2)
  {
    v41 = v203;
    if (v21)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  if (byte_100117E80 == 1)
  {
    v29 = __error();
    v30 = *v29;
    v32 = sub_100035B80(v29, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      p_buffer = &buffer;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    *__error() = v30;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v34 = *__error();
    v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", &buffer);
    if (v35)
    {
      v37 = v35;
      v38 = CFStringGetCStringPtr(v35, 0x8000100u);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
      }

      else
      {
        v39 = malloc_type_calloc(0x400uLL, 1uLL, 0x3B3AD74DuLL);
        CFStringGetCString(v37, v39, 1024, 0x8000100u);
        v40 = v39;
      }

      if (qword_100117E88)
      {
        v193 = qword_100117E88;
      }

      else
      {
        v193 = __stderrp;
      }

      fprintf(v193, "%s\n", v39);
      if (v40)
      {
        free(v40);
      }

      CFRelease(v37);
    }

    else
    {
      v190 = sub_100035B80(0, v36);
      if (os_log_type_enabled(v190, OS_LOG_TYPE_FAULT))
      {
        sub_10009D0E4(&buffer, v190);
      }

      if (qword_100117E88)
      {
        v191 = qword_100117E88;
      }

      else
      {
        v191 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v191);
    }

    *__error() = v34;
  }

  free(v203);
  v41 = 0;
  v24 = 0xFFFFFFFFLL;
  if (a5)
  {
LABEL_302:
    *a5 = v41;
  }

LABEL_303:
  free(v202);
  free(__s1);
  return v24;
}

id sub_1000359B8(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x200uLL, __format, va);
  v1 = os_transaction_create();

  return v1;
}

uint64_t sub_100035A54(const char *a1, const char *a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  result = snprintf(byte_100117688, 0x400uLL, "Assertion Failed %s %s:%d ", a1, a2, a3);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_100117688[result], 1024 - result, a4, va);
  }

  qword_100117538 = byte_100117688;
  return result;
}

uint64_t sub_100035AD8(char *a1, size_t a2, const char *a3, ...)
{
  va_start(va, a3);
  LODWORD(result) = vsnprintf(a1, a2, a3, va);
  if (result >= a2)
  {
    return (a2 - 1);
  }

  else
  {
    return result;
  }
}

_DWORD *sub_100035B20(int a1)
{
  add_explicit = atomic_fetch_add_explicit(dword_100117C88, 1u, memory_order_relaxed);
  v2 = add_explicit & 3;
  v4 = -add_explicit;
  v3 = v4 < 0;
  v5 = v4 & 3;
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = -v5;
  }

  v7 = (&unk_100117A88 + 128 * v6);
  *v7 = 0;
  proc_name(a1, v7, 0x80u);
  return v7;
}

uint64_t sub_100035B80(uint64_t a1, uint64_t a2)
{
  if (qword_100117C98 != -1)
  {
    sub_10009D15C();
  }

  return qword_100117C90;
}

void sub_100035BB8(id a1)
{
  qword_100117C90 = os_log_create("com.apple.spindump", "logging");
  if (!qword_100117C90)
  {
    sub_10009D170();
  }
}

uint64_t sub_100035BF0(int a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  if (proc_pidinfo(a1, 20, 1uLL, v2, 40) == 40)
  {
    return *&v2[0];
  }

  else
  {
    return 0;
  }
}

id sub_100035C38(int a1)
{
  if (proc_pidpath(a1, buffer, 0x400u) < 1)
  {
    return 0;
  }

  else
  {
    return [[NSString alloc] initWithUTF8String:buffer];
  }
}

void sub_100035CB8(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, void *a11)
{
  v20 = a2;
  v21 = a11;
  if (qword_100117CF0 != -1)
  {
    sub_10009D18C();
  }

  v22 = *off_100108D60[a4];
  if (os_signpost_enabled(v22) || sub_100035F38(a4))
  {
    v35 = a5;
    v36 = a6;
    if ((a1 & 0x80000000) == 0 && !a3)
    {
      memset(buffer, 0, 40);
      if (proc_pidinfo(a1, 20, 1uLL, buffer, 40) == 40)
      {
        a3 = buffer[0];
      }

      else
      {
        a3 = 0;
      }
    }

    v23 = v21;
    v24 = a8;
    v37 = v20;
    if (a1 < 0 || v20)
    {
      v25 = a7;
      v26 = v20;
    }

    else
    {
      v25 = a7;
      v26 = sub_100035C38(a1);
    }

    v27 = v26;
    v28 = +[SATimestamp timestamp];
    v29 = [v27 lastPathComponent];
    v30 = sub_1000359B8("Event rate report for %s [%d] type %lu", [v29 UTF8String], a1, a4);

    if (qword_100117D00 != -1)
    {
      sub_10009D1A0();
    }

    v31 = qword_100117CF8;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003765C;
    block[3] = &unk_100108D00;
    v44 = v35;
    v45 = v36;
    v46 = v25;
    v47 = v24;
    v39 = v27;
    v40 = v28;
    v48 = a9;
    v49 = a10;
    v51 = a1;
    v21 = v23;
    v43 = v23;
    v50 = a3;
    v41 = v22;
    v42 = v30;
    v32 = v30;
    v33 = v28;
    v34 = v27;
    dispatch_async(v31, block);

    v20 = v37;
  }
}

uint64_t sub_100035F38(uint64_t a1)
{
  if (!&_AnalyticsIsEventUsed)
  {
    return 0;
  }

  v1 = sub_100035F84(a1);
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

void sub_100035F94(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100036024;
  v9[3] = &unk_100108C98;
  v10 = a1;
  v11 = a6;
  *&v9[4] = a9;
  v9[5] = a4;
  v9[6] = a5;
  *&v9[7] = a8;
  *&v9[8] = a7;
  sub_100035CB8(a1, a2, a3, 2, 0, 0, 0, 0, a7, a8, v9);
}

void sub_100036024(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  if (os_signpost_enabled(v11))
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 76);
    v15 = round(*(a1 + 32));
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    *buf = 138545154;
    v21 = v12;
    v22 = 2050;
    v23 = a5;
    v24 = 2050;
    v25 = a3;
    v26 = 1026;
    v27 = v13;
    v28 = 1026;
    v29 = v14;
    v30 = 2050;
    v31 = v15;
    v32 = 2050;
    v33 = v16;
    v34 = 2050;
    v35 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CPUResource", "BundleIdOverride=%{public,signpost.description:attribute}@ %{public,signpost.description:begin_time}llu cid=%{public,name=cid}llu pid=%{public,name=pid}u fatal=%{public,name=fatal}d cpuUsed=%{public,name=cpuUsed}.0f conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x4Au);
  }

  if (os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v21 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CPUResource", "%{public, signpost.description:end_time}llu", buf, 0xCu);
  }

  v18 = sub_100035F38(2);
  if (v12 && v18)
  {
    v19 = v12;
    AnalyticsSendEventLazy();
  }
}

id sub_100036240(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"CpuUsedS";
  v5 = [NSNumber numberWithDouble:*(a1 + 64)];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_1000363C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003645C;
  v6[3] = &unk_100108CB8;
  v6[4] = a4;
  v6[5] = a2;
  v6[6] = a3;
  *&v6[7] = a6;
  *&v6[8] = a5;
  sub_100035CB8(-1, a1, 0, 3, 0, 0, 0, 0, a5, a6, v6);
}

void sub_10003645C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a4;
  if (os_signpost_enabled(v10))
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    *buf = 138544642;
    v18 = v11;
    v19 = 2050;
    v20 = a5;
    v21 = 2050;
    v22 = a6;
    v23 = 2050;
    v24 = v12;
    v25 = 2050;
    v26 = v13;
    v27 = 2050;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PowerException", "BundleIdOverride=%{public,signpost.description:attribute}@ %{public,signpost.description:begin_time}llu %{public, signpost.description:end_time}llu action=%{public,name=action}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x3Eu);
  }

  v15 = sub_100035F38(3);
  if (v11 && v15)
  {
    v16 = v11;
    AnalyticsSendEventLazy();
  }
}

id sub_1000365F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10[0] = *(a1 + 32);
  v9[0] = @"BundleID";
  v9[1] = @"Action";
  v3 = [NSNumber numberWithUnsignedLongLong:v2];
  v10[1] = v3;
  v9[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v10[2] = v4;
  v9[3] = @"ConditionsPreventingSubmission";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v10[3] = v5;
  v9[4] = @"OtherConditions";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v10[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

void sub_10003673C(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000367C8;
  v8[3] = &unk_100108CD8;
  v9 = a1;
  v8[4] = a6;
  v8[5] = a4;
  v8[6] = a5;
  *&v8[7] = a8;
  *&v8[8] = a7;
  sub_100035CB8(a1, a2, a3, 4, 0, 0, 0, 0, a7, a8, v8);
}

void sub_1000367C8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  if (os_signpost_enabled(v11))
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 40);
    v15 = *(a1 + 32) / 0xF4240uLL;
    v16 = *(a1 + 48);
    *buf = 138544898;
    v20 = v12;
    v21 = 2050;
    v22 = a5;
    v23 = 2050;
    v24 = a3;
    v25 = 1026;
    v26 = v13;
    v27 = 2050;
    v28 = v15;
    v29 = 2050;
    v30 = v14;
    v31 = 2050;
    v32 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DiskWritesResource", "BundleIdOverride=%{public, signpost.description:attribute}@ %{public, signpost.description:begin_time}llu cid=%{public,name=cid}llu pid=%{public,name=pid}u ioMB=%{public,name=ioMB}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  if (os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v20 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DiskWritesResource", "%{public, signpost.description:end_time}llu", buf, 0xCu);
  }

  v17 = sub_100035F38(4);
  if (v12 && v17)
  {
    v18 = v12;
    AnalyticsSendEventLazy();
  }
}

id sub_1000369EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"Bytes";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_100036B70(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036C00;
  v7[3] = &unk_100108C50;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_100035CB8(a1, a2, a3, 5, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_100036C00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v17 = v8;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = v9;
    v22 = 2050;
    v23 = v10;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FileDescriptorExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numFDs=%{public,name=numFDs}llu numFDsLimit=%{public,name=numFDsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_100035F38(5);
  if (v8 && v14)
  {
    v15 = v8;
    AnalyticsSendEventLazy();
  }
}

id sub_100036D94(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumFileDescriptors";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumFileDescriptorsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_100036F14(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036FA4;
  v7[3] = &unk_100108C50;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_100035CB8(a1, a2, a3, 6, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_100036FA4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v17 = v8;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = v9;
    v22 = 2050;
    v23 = v10;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PortExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numPorts=%{public,name=numPorts}llu numPortsLimit=%{public,name=numPortsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_100035F38(6);
  if (v8 && v14)
  {
    v15 = v8;
    AnalyticsSendEventLazy();
  }
}

id sub_100037138(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumPorts";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumPortsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_1000372B8(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037348;
  v7[3] = &unk_100108C50;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_100035CB8(a1, a2, a3, 7, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_100037348(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v17 = v8;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = v9;
    v22 = 2050;
    v23 = v10;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KQWorkLoopExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numKQWorkLoops=%{public,name=numKQWorkLoops}llu numKQWorkLoopsLimit=%{public,name=numKQWorkLoopsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_100035F38(7);
  if (v8 && v14)
  {
    v15 = v8;
    AnalyticsSendEventLazy();
  }
}

id sub_1000374DC(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumKQWorkLoops";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumKQWorkLoopsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003765C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = [[NSURL alloc] initFileURLWithPath:v3 isDirectory:0];

    if (v4 && (v5 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
    {
      v6 = v5;
      v159 = CFBundleGetIdentifier(v5);
      CFRelease(v6);
    }

    else
    {
      v159 = 0;
    }

    v7 = v159;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v160 = v7;
  if (v10)
  {
    v11 = *(a1 + 88);
    if (v11 && *(a1 + 96))
    {
      [*(a1 + 40) machContTime];
      [*(a1 + 40) machAbsTime];
    }

    else
    {
      v12 = *(a1 + 104);
      if (v12 == 0.0 || *(a1 + 112) == 0.0)
      {
        if (v9 | v11 | v8 || (v12 == 0.0 ? (v13 = *(a1 + 96) == 0) : (v13 = 0), !v13 || *(a1 + 112) != 0.0))
        {
          v14 = [*(a1 + 32) lastPathComponent];

          v19 = *(a1 + 128);
          if (!v14)
          {
            if (v19 < 0)
            {
              if (byte_100117E80)
              {
                v76 = __error();
                v77 = *v76;
                v79 = sub_100035B80(v76, v78);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v80 = *(a1 + 72);
                  v81 = *(a1 + 80);
                  v82 = *(a1 + 88);
                  v83 = *(a1 + 96);
                  v84 = *(a1 + 104);
                  v85 = *(a1 + 112);
                  *buf = 136316674;
                  v162 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  v163 = 2048;
                  *v164 = v80;
                  *&v164[8] = 2048;
                  *&v164[10] = v81;
                  *&v164[18] = 2048;
                  *&v164[20] = v82;
                  *&v164[28] = 2048;
                  *&v164[30] = v83;
                  *&v164[38] = 2048;
                  *&v164[40] = v84;
                  *&v164[48] = 2048;
                  *&v164[50] = v85;
                  _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x48u);
                }

                *__error() = v77;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v86 = *__error();
                v87 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
                if (v87)
                {
                  v132 = v87;
                  CStringPtr = CFStringGetCStringPtr(v87, 0x8000100u);
                  if (CStringPtr)
                  {
                    v134 = CStringPtr;
                    v135 = 0;
                  }

                  else
                  {
                    v134 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                    CFStringGetCString(v132, v134, 1024, 0x8000100u);
                    v135 = v134;
                  }

                  if (qword_100117E88)
                  {
                    v152 = qword_100117E88;
                  }

                  else
                  {
                    v152 = __stderrp;
                  }

                  fprintf(v152, "%s\n", v134);
                  if (v135)
                  {
                    free(v135);
                  }

                  CFRelease(v132);
                }

                else
                {
                  v89 = sub_100035B80(0, v88);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
                  {
                    v90 = *(a1 + 72);
                    v91 = *(a1 + 80);
                    v92 = *(a1 + 88);
                    v93 = *(a1 + 96);
                    v94 = *(a1 + 104);
                    v95 = *(a1 + 112);
                    *buf = 136316674;
                    v162 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                    v163 = 2048;
                    *v164 = v90;
                    *&v164[8] = 2048;
                    *&v164[10] = v91;
                    *&v164[18] = 2048;
                    *&v164[20] = v92;
                    *&v164[28] = 2048;
                    *&v164[30] = v93;
                    *&v164[38] = 2048;
                    *&v164[40] = v94;
                    *&v164[48] = 2048;
                    *&v164[50] = v95;
                    _os_log_fault_impl(&_mh_execute_header, v89, OS_LOG_TYPE_FAULT, "Unable to format: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x48u);
                  }

                  if (qword_100117E88)
                  {
                    v96 = qword_100117E88;
                  }

                  else
                  {
                    v96 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
                }

                *__error() = v86;
              }

              sub_100035A54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v15, v16, v17, v18, "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
            }

            else
            {
              if (byte_100117E80)
              {
                v20 = __error();
                v21 = *v20;
                v23 = sub_100035B80(v20, v22);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v24 = sub_100035B20(*(a1 + 128));
                  v25 = *(a1 + 128);
                  v26 = *(a1 + 72);
                  v27 = *(a1 + 80);
                  v28 = *(a1 + 88);
                  v29 = *(a1 + 96);
                  v30 = *(a1 + 104);
                  v31 = *(a1 + 112);
                  *buf = 136317186;
                  v162 = v24;
                  v163 = 1024;
                  *v164 = v25;
                  *&v164[4] = 2080;
                  *&v164[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v164[14] = 2048;
                  *&v164[16] = v26;
                  *&v164[24] = 2048;
                  *&v164[26] = v27;
                  *&v164[34] = 2048;
                  *&v164[36] = v28;
                  *&v164[44] = 2048;
                  *&v164[46] = v29;
                  *&v164[54] = 2048;
                  *&v164[56] = v30;
                  *&v164[64] = 2048;
                  *&v164[66] = v31;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                }

                *__error() = v21;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v32 = *__error();
                v33 = sub_100035B20(*(a1 + 128));
                v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v33, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
                if (v34)
                {
                  v125 = v34;
                  v126 = CFStringGetCStringPtr(v34, 0x8000100u);
                  if (v126)
                  {
                    v127 = v126;
                    v128 = 0;
                  }

                  else
                  {
                    v127 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                    CFStringGetCString(v125, v127, 1024, 0x8000100u);
                    v128 = v127;
                  }

                  if (qword_100117E88)
                  {
                    v139 = qword_100117E88;
                  }

                  else
                  {
                    v139 = __stderrp;
                  }

                  fprintf(v139, "%s\n", v127);
                  if (v128)
                  {
                    free(v128);
                  }

                  CFRelease(v125);
                }

                else
                {
                  v36 = sub_100035B80(0, v35);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                  {
                    v37 = sub_100035B20(*(a1 + 128));
                    v38 = *(a1 + 128);
                    v39 = *(a1 + 72);
                    v40 = *(a1 + 80);
                    v41 = *(a1 + 88);
                    v42 = *(a1 + 96);
                    v43 = *(a1 + 104);
                    v44 = *(a1 + 112);
                    *buf = 136317186;
                    v162 = v37;
                    v163 = 1024;
                    *v164 = v38;
                    *&v164[4] = 2080;
                    *&v164[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                    *&v164[14] = 2048;
                    *&v164[16] = v39;
                    *&v164[24] = 2048;
                    *&v164[26] = v40;
                    *&v164[34] = 2048;
                    *&v164[36] = v41;
                    *&v164[44] = 2048;
                    *&v164[46] = v42;
                    *&v164[54] = 2048;
                    *&v164[56] = v43;
                    *&v164[64] = 2048;
                    *&v164[66] = v44;
                    _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                  }

                  if (qword_100117E88)
                  {
                    v45 = qword_100117E88;
                  }

                  else
                  {
                    v45 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v45);
                }

                *__error() = v32;
              }

              v140 = sub_100035B20(*(a1 + 128));
              sub_100035A54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v141, v142, v143, v144, v140, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
            }

            abort();
          }

          if (v19 < 0)
          {
            if (byte_100117E80)
            {
              v97 = __error();
              v98 = *v97;
              v100 = sub_100035B80(v97, v99);
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                v101 = [*(a1 + 32) lastPathComponent];
                v102 = CFStringGetCStringPtr(v101, 0x8000100u);
                v103 = *(a1 + 72);
                v104 = *(a1 + 80);
                v105 = *(a1 + 88);
                v106 = *(a1 + 96);
                v107 = *(a1 + 104);
                v108 = *(a1 + 112);
                *buf = 136316930;
                v162 = v102;
                v163 = 2080;
                *v164 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                *&v164[8] = 2048;
                *&v164[10] = v103;
                *&v164[18] = 2048;
                *&v164[20] = v104;
                *&v164[28] = 2048;
                *&v164[30] = v105;
                *&v164[38] = 2048;
                *&v164[40] = v106;
                *&v164[48] = 2048;
                *&v164[50] = v107;
                *&v164[58] = 2048;
                *&v164[60] = v108;
                _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x52u);
              }

              *__error() = v98;
            }

            if (byte_100117E81 == 1 && dword_100117510 <= 3)
            {
              v109 = *__error();
              v110 = [*(a1 + 32) lastPathComponent];
              v111 = CFStringGetCStringPtr(v110, 0x8000100u);
              v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v111, "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));

              if (v112)
              {
                v136 = CFStringGetCStringPtr(v112, 0x8000100u);
                if (v136)
                {
                  v137 = v136;
                  v138 = 0;
                }

                else
                {
                  v137 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                  CFStringGetCString(v112, v137, 1024, 0x8000100u);
                  v138 = v137;
                }

                if (qword_100117E88)
                {
                  v153 = qword_100117E88;
                }

                else
                {
                  v153 = __stderrp;
                }

                fprintf(v153, "%s\n", v137);
                if (v138)
                {
                  free(v138);
                }

                CFRelease(v112);
              }

              else
              {
                v115 = sub_100035B80(v113, v114);
                if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
                {
                  v116 = [*(a1 + 32) lastPathComponent];
                  v117 = CFStringGetCStringPtr(v116, 0x8000100u);
                  v118 = *(a1 + 72);
                  v119 = *(a1 + 80);
                  v120 = *(a1 + 88);
                  v121 = *(a1 + 96);
                  v122 = *(a1 + 104);
                  v123 = *(a1 + 112);
                  *buf = 136316930;
                  v162 = v117;
                  v163 = 2080;
                  *v164 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v164[8] = 2048;
                  *&v164[10] = v118;
                  *&v164[18] = 2048;
                  *&v164[20] = v119;
                  *&v164[28] = 2048;
                  *&v164[30] = v120;
                  *&v164[38] = 2048;
                  *&v164[40] = v121;
                  *&v164[48] = 2048;
                  *&v164[50] = v122;
                  *&v164[58] = 2048;
                  *&v164[60] = v123;
                  _os_log_fault_impl(&_mh_execute_header, v115, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x52u);
                }

                if (qword_100117E88)
                {
                  v124 = qword_100117E88;
                }

                else
                {
                  v124 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v124);
              }

              *__error() = v109;
            }

            v146 = [*(a1 + 32) lastPathComponent];
            v154 = CFStringGetCStringPtr(v146, 0x8000100u);
            sub_100035A54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v155, v156, v157, v158, v154, "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
          }

          else
          {
            if (byte_100117E80)
            {
              v46 = __error();
              v47 = *v46;
              v49 = sub_100035B80(v46, v48);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = [*(a1 + 32) lastPathComponent];
                v51 = CFStringGetCStringPtr(v50, 0x8000100u);
                v52 = *(a1 + 128);
                v53 = *(a1 + 72);
                v54 = *(a1 + 80);
                v55 = *(a1 + 88);
                v56 = *(a1 + 96);
                v57 = *(a1 + 104);
                v58 = *(a1 + 112);
                *buf = 136317186;
                v162 = v51;
                v163 = 1024;
                *v164 = v52;
                *&v164[4] = 2080;
                *&v164[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                *&v164[14] = 2048;
                *&v164[16] = v53;
                *&v164[24] = 2048;
                *&v164[26] = v54;
                *&v164[34] = 2048;
                *&v164[36] = v55;
                *&v164[44] = 2048;
                *&v164[46] = v56;
                *&v164[54] = 2048;
                *&v164[56] = v57;
                *&v164[64] = 2048;
                *&v164[66] = v58;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
              }

              *__error() = v47;
            }

            if (byte_100117E81 == 1 && dword_100117510 <= 3)
            {
              v59 = *__error();
              v60 = [*(a1 + 32) lastPathComponent];
              v61 = CFStringGetCStringPtr(v60, 0x8000100u);
              v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v61, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));

              if (v62)
              {
                v129 = CFStringGetCStringPtr(v62, 0x8000100u);
                if (v129)
                {
                  v130 = v129;
                  v131 = 0;
                }

                else
                {
                  v130 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                  CFStringGetCString(v62, v130, 1024, 0x8000100u);
                  v131 = v130;
                }

                if (qword_100117E88)
                {
                  v145 = qword_100117E88;
                }

                else
                {
                  v145 = __stderrp;
                }

                fprintf(v145, "%s\n", v130);
                if (v131)
                {
                  free(v131);
                }

                CFRelease(v62);
              }

              else
              {
                v65 = sub_100035B80(v63, v64);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
                {
                  v66 = [*(a1 + 32) lastPathComponent];
                  v67 = CFStringGetCStringPtr(v66, 0x8000100u);
                  v68 = *(a1 + 128);
                  v69 = *(a1 + 72);
                  v70 = *(a1 + 80);
                  v71 = *(a1 + 88);
                  v72 = *(a1 + 96);
                  v73 = *(a1 + 104);
                  v74 = *(a1 + 112);
                  *buf = 136317186;
                  v162 = v67;
                  v163 = 1024;
                  *v164 = v68;
                  *&v164[4] = 2080;
                  *&v164[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v164[14] = 2048;
                  *&v164[16] = v69;
                  *&v164[24] = 2048;
                  *&v164[26] = v70;
                  *&v164[34] = 2048;
                  *&v164[36] = v71;
                  *&v164[44] = 2048;
                  *&v164[46] = v72;
                  *&v164[54] = 2048;
                  *&v164[56] = v73;
                  *&v164[64] = 2048;
                  *&v164[66] = v74;
                  _os_log_fault_impl(&_mh_execute_header, v65, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                }

                if (qword_100117E88)
                {
                  v75 = qword_100117E88;
                }

                else
                {
                  v75 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v75);
              }

              *__error() = v59;
            }

            v146 = [*(a1 + 32) lastPathComponent];
            v147 = CFStringGetCStringPtr(v146, 0x8000100u);
            sub_100035A54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v148, v149, v150, v151, v147, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
          }

          abort();
        }
      }

      else
      {
        [*(a1 + 40) machContTime];
        [*(a1 + 40) wallTime];
        SAMachTimeFromSecondsUsingLiveTimebase();
        [*(a1 + 40) machContTime];
        [*(a1 + 40) wallTime];
        SAMachTimeFromSecondsUsingLiveTimebase();
      }
    }
  }

  (*(*(a1 + 64) + 16))();
}
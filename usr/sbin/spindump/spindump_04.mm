id sub_100068ABC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = sub_100068B38(v4, v3, v5);

  return v6;
}

id sub_100068B38(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100068BA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = sub_100068B38(v4, v3, v5);

  return v6;
}

_BYTE *sub_100068C20(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100068C48(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void sub_100068C64(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_100068C94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t sub_100068CBC@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

const char *sub_100068CCC(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_100068CE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

void sub_100068D08(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v15 = a3;
  v16 = a5;
  v17 = a9;
  v18 = sub_1000359B8("Resource exhaustion for [%d]", a2);
  v19 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068E6C;
  block[3] = &unk_100109720;
  v34 = a2;
  v35 = a8;
  v30 = a1;
  v31 = a4;
  v26 = v15;
  v27 = v16;
  v32 = a6;
  v33 = a7;
  v28 = v18;
  v29 = v17;
  v20 = v18;
  v21 = v16;
  v22 = v15;
  v23 = v17;
  dispatch_async(v19, block);
}

void sub_100068E6C(uint64_t a1)
{
  sub_100077B84();
  v2 = time(0);
  v3 = +[NSMutableString string];
  v242 = 0;
  v243 = &v242;
  v244 = 0x2020000000;
  v245 = 0;
  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  if (byte_100117E94 & 2) != 0 && (sub_10002B3E4())
  {
    v4 = 0;
  }

  else
  {
    v5 = stackshot_config_create();
    stackshot_config_set_flags();
    v6 = [NSNumber numberWithInt:*(a1 + 96)];
    v7 = [NSMutableSet setWithObject:v6];
    v4 = sub_10008866C(v5, v7);

    stackshot_config_dealloc();
  }

  v8 = (a1 + 96);
  __snprintf_chk(v262, 8uLL, 0, 8uLL, "%d", *(a1 + 96));
  v9 = *(a1 + 64);
  if ((v9 - 1) > 1)
  {
LABEL_56:
    if ((v9 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_180:
      v136 = *(a1 + 100);
      if (v136 + 1 >= 2)
      {
        sub_10006B0A4(*(a1 + 64), *(a1 + 96), v136);
      }

      v137 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006BC34;
      block[3] = &unk_1001096F8;
      v224 = *(a1 + 64);
      v225 = v2;
      v218 = *(a1 + 32);
      v227 = *(a1 + 96);
      v223 = *(a1 + 56);
      v219 = v4;
      v220 = *(a1 + 40);
      v226 = *(a1 + 80);
      v221 = v3;
      v222 = *(a1 + 48);
      dispatch_async(v137, block);

      goto LABEL_301;
    }

    [v3 appendFormat:@"lsof -n -M -P -T -w +c 0 -s +fg +L -p %d\n", *v8];
    *buf = "/usr/sbin/lsof";
    *&buf[8] = "-n";
    *&buf[16] = "-M";
    *&v252 = "-P";
    *(&v252 + 1) = "-T";
    v253 = "-w";
    v254 = "+c";
    v255 = "0";
    v256 = "-s";
    v257 = "+fg";
    v258 = "+L";
    v259 = "-p";
    v260 = v262;
    v261 = 0;
    v232 = -1;
    v233 = -1;
    LOBYTE(v212) = 0;
    v211 = &v232;
    v50 = SASpawnPlatformBinaryWithSigningIdentifier();
    if ((v50 & 0x80000000) == 0)
    {
      v51 = dispatch_semaphore_create(0);
      v53 = v232;
      v52 = v233;
      v228[0] = _NSConcreteStackBlock;
      v228[1] = 3221225472;
      v228[2] = sub_10006B8D4;
      v228[3] = &unk_1001096D0;
      v230 = &v238;
      v231 = *v8;
      v54 = v51;
      v229 = v54;
      sub_100058738(v50, v52, v53, 60, 0x1000000, v3, v228);
      dispatch_semaphore_wait(v54, 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_179;
    }

    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v92 = __error();
        v93 = *v92;
        v95 = sub_100035B80(v92, v94);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          __error();
          v96 = __error();
          strerror(*v96);
          sub_1000B02E4();
        }

        *__error() = v93;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_178;
      }

      v72 = *__error();
      v97 = *__error();
      v98 = __error();
      v99 = strerror(*v98);
      v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn lsof: %d (%s)", v97, v99, 0);
      v80 = v100;
      if (v100)
      {
        CStringPtr = CFStringGetCStringPtr(v100, 0x8000100u);
        if (CStringPtr)
        {
          v103 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xB7395A02uLL);
          CFStringGetCString(v80, CStringPtr, 1024, 0x8000100u);
          v103 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v133 = qword_100117E88;
        }

        else
        {
          v133 = __stderrp;
        }

        fprintf(v133, "%s\n", CStringPtr);
        if (v103)
        {
          free(v103);
        }

        goto LABEL_176;
      }

      v127 = sub_100035B80(0, v101);
      if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
      {
        __error();
        v128 = __error();
        strerror(*v128);
        sub_1000B031C();
      }

      if (qword_100117E88)
      {
        v122 = qword_100117E88;
      }

      else
      {
        v122 = __stderrp;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v68 = __error();
        v69 = *v68;
        v71 = sub_100035B80(v68, v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v214 = sub_100035B20(*v8);
          v198 = *v8;
          v199 = *__error();
          v200 = __error();
          v201 = strerror(*v200);
          *v248 = 136446978;
          *&v248[4] = v214;
          *&v248[12] = 1024;
          *&v248[14] = v198;
          *&v248[18] = 1024;
          *&v248[20] = v199;
          v249 = 2080;
          v250 = v201;
          _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn lsof: %d (%s)", v248, 0x22u);
        }

        *__error() = v69;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_178;
      }

      v72 = *__error();
      v73 = sub_100035B20(*v8);
      v74 = *v8;
      v75 = *__error();
      v76 = __error();
      v77 = strerror(*v76);
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn lsof: %d (%s)", v73, v74, v75, v77);
      v80 = v78;
      if (v78)
      {
        v81 = CFStringGetCStringPtr(v78, 0x8000100u);
        if (v81)
        {
          v82 = 0;
        }

        else
        {
          v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7395A02uLL);
          CFStringGetCString(v80, v81, 1024, 0x8000100u);
          v82 = v81;
        }

        if (qword_100117E88)
        {
          v126 = qword_100117E88;
        }

        else
        {
          v126 = __stderrp;
        }

        fprintf(v126, "%s\n", v81);
        if (v82)
        {
          free(v82);
        }

LABEL_176:
        CFRelease(v80);
        goto LABEL_177;
      }

      v121 = sub_100035B80(0, v79);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
      {
        v216 = sub_100035B20(*v8);
        v206 = *v8;
        v207 = *__error();
        v208 = __error();
        v209 = strerror(*v208);
        *v248 = 136315906;
        *&v248[4] = v216;
        *&v248[12] = 1024;
        *&v248[14] = v206;
        *&v248[18] = 1024;
        *&v248[20] = v207;
        v249 = 2080;
        v250 = v209;
        _os_log_fault_impl(&_mh_execute_header, v121, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to spawn lsof: %d (%s)", v248, 0x22u);
      }

      if (qword_100117E88)
      {
        v122 = qword_100117E88;
      }

      else
      {
        v122 = __stderrp;
      }
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v122);
LABEL_177:
    *__error() = v72;
LABEL_178:
    v134 = *__error();
    v135 = __error();
    [v3 appendFormat:@"Unable to spawn lsof: %d (%s)\n\n", v134, strerror(*v135)];
LABEL_179:
    if (v239[3])
    {
      goto LABEL_180;
    }

    v138 = sub_10002B3B0(*v8);
    v139 = *v8;
    if (v138)
    {
      if ((v139 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v140 = __error();
          v141 = *v140;
          v143 = sub_100035B80(v140, v142);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            sub_100035B20(*v8);
            sub_1000B0494();
          }

          *__error() = v141;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_294;
        }

        v144 = *__error();
        v145 = sub_100035B20(*v8);
        v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v145, *v8);
        v148 = v146;
        if (v146)
        {
          v149 = CFStringGetCStringPtr(v146, 0x8000100u);
          if (v149)
          {
            v150 = 0;
          }

          else
          {
            v149 = malloc_type_calloc(0x400uLL, 1uLL, 0x458A0BBEuLL);
            CFStringGetCString(v148, v149, 1024, 0x8000100u);
            v150 = v149;
          }

          if (qword_100117E88)
          {
            v180 = qword_100117E88;
          }

          else
          {
            v180 = __stderrp;
          }

          fprintf(v180, "%s\n", v149);
          if (v150)
          {
            free(v150);
          }

LABEL_238:
          CFRelease(v148);
LABEL_293:
          *__error() = v144;
LABEL_294:
          v191 = *(a1 + 100);
          if (v191 + 1 >= 2)
          {
            sub_10006B0A4(*(a1 + 64), *(a1 + 96), v191);
          }

          v192 = *(a1 + 56);
          if (v192)
          {
            if (v138)
            {
              v193 = 0x2000000000;
            }

            else
            {
              v193 = 0x1000000000;
            }

            (*(v192 + 16))(v192, v193);
          }

          goto LABEL_301;
        }

        v177 = sub_100035B80(0, v147);
        if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
        {
          sub_100035B20(*v8);
          sub_1000B04CC();
        }

        if (qword_100117E88)
        {
          v178 = qword_100117E88;
        }

        else
        {
          v178 = __stderrp;
        }

        goto LABEL_256;
      }

      if (byte_100117E80)
      {
        v160 = __error();
        v161 = *v160;
        v163 = sub_100035B80(v160, v162);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          sub_1000B042C();
        }

        *__error() = v161;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_294;
      }

      v144 = *__error();
      v164 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather lsof for resource exhaustion report, though process is alive", v211, v212);
      v166 = v164;
      if (!v164)
      {
        v182 = sub_100035B80(0, v165);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0460();
        }

        if (qword_100117E88)
        {
          v178 = qword_100117E88;
        }

        else
        {
          v178 = __stderrp;
        }

        goto LABEL_256;
      }

      v167 = CFStringGetCStringPtr(v164, 0x8000100u);
      if (v167)
      {
        v168 = 0;
      }

      else
      {
        v167 = malloc_type_calloc(0x400uLL, 1uLL, 0x458A0BBEuLL);
        CFStringGetCString(v166, v167, 1024, 0x8000100u);
        v168 = v167;
      }

      if (qword_100117E88)
      {
        v189 = qword_100117E88;
      }

      else
      {
        v189 = __stderrp;
      }

      fprintf(v189, "%s\n", v167);
      if (v168)
      {
        free(v168);
      }
    }

    else
    {
      if ((v139 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v151 = __error();
          v152 = *v151;
          v154 = sub_100035B80(v151, v153);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            sub_100035B20(*v8);
            sub_1000B03BC();
          }

          *__error() = v152;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_294;
        }

        v144 = *__error();
        v155 = sub_100035B20(*v8);
        v156 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v155, *v8);
        v148 = v156;
        if (v156)
        {
          v158 = CFStringGetCStringPtr(v156, 0x8000100u);
          if (v158)
          {
            v159 = 0;
          }

          else
          {
            v158 = malloc_type_calloc(0x400uLL, 1uLL, 0xD30C2F2EuLL);
            CFStringGetCString(v148, v158, 1024, 0x8000100u);
            v159 = v158;
          }

          if (qword_100117E88)
          {
            v181 = qword_100117E88;
          }

          else
          {
            v181 = __stderrp;
          }

          fprintf(v181, "%s\n", v158);
          if (v159)
          {
            free(v159);
          }

          goto LABEL_238;
        }

        v179 = sub_100035B80(0, v157);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
        {
          sub_100035B20(*v8);
          sub_1000B03F4();
        }

        if (qword_100117E88)
        {
          v178 = qword_100117E88;
        }

        else
        {
          v178 = __stderrp;
        }

LABEL_256:
        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v178);
        goto LABEL_293;
      }

      if (byte_100117E80)
      {
        v169 = __error();
        v170 = *v169;
        v172 = sub_100035B80(v169, v171);
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          sub_1000B0354();
        }

        *__error() = v170;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_294;
      }

      v144 = *__error();
      v173 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather lsof for resource exhaustion report; process is no longer around", v211, v212);
      v166 = v173;
      if (!v173)
      {
        v183 = sub_100035B80(0, v174);
        if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0388();
        }

        if (qword_100117E88)
        {
          v178 = qword_100117E88;
        }

        else
        {
          v178 = __stderrp;
        }

        goto LABEL_256;
      }

      v175 = CFStringGetCStringPtr(v173, 0x8000100u);
      if (v175)
      {
        v176 = 0;
      }

      else
      {
        v175 = malloc_type_calloc(0x400uLL, 1uLL, 0xD30C2F2EuLL);
        CFStringGetCString(v166, v175, 1024, 0x8000100u);
        v176 = v175;
      }

      if (qword_100117E88)
      {
        v190 = qword_100117E88;
      }

      else
      {
        v190 = __stderrp;
      }

      fprintf(v190, "%s\n", v175);
      if (v176)
      {
        free(v176);
      }
    }

    CFRelease(v166);
    goto LABEL_293;
  }

  [v3 appendFormat:@"ddt %d\n", *v8];
  *v248 = "/usr/local/bin/ddt";
  *&v248[8] = v262;
  *&v248[16] = 0;
  v247 = -1;
  v246 = -1;
  LOBYTE(v212) = 0;
  v210 = &v246;
  v10 = SASpawnPlatformBinaryWithSigningIdentifier();
  if ((v10 & 0x80000000) == 0)
  {
    v11 = dispatch_semaphore_create(0);
    v12 = v247;
    v13 = v246;
    v234[0] = _NSConcreteStackBlock;
    v234[1] = 3221225472;
    v234[2] = sub_10006AD44;
    v234[3] = &unk_1001096D0;
    v236 = &v242;
    v237 = *v8;
    v14 = v11;
    v235 = v14;
    sub_100058738(v10, v12, v13, 60, 0x1000000, v3, v234);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_54;
  }

  if ((*v8 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v30 = __error();
      v31 = *v30;
      v33 = sub_100035B80(v30, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __error();
        v34 = __error();
        strerror(*v34);
        sub_1000B00C4();
      }

      *__error() = v31;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_53;
    }

    v19 = *__error();
    v35 = *__error();
    v36 = __error();
    v37 = strerror(*v36);
    v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn ddt: %d (%s)", v35, v37, 0);
    v27 = v38;
    if (v38)
    {
      v40 = CFStringGetCStringPtr(v38, 0x8000100u);
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v40 = malloc_type_calloc(0x400uLL, 1uLL, 0x14BEDA42uLL);
        CFStringGetCString(v27, v40, 1024, 0x8000100u);
        v41 = v40;
      }

      if (qword_100117E88)
      {
        v47 = qword_100117E88;
      }

      else
      {
        v47 = __stderrp;
      }

      fprintf(v47, "%s\n", v40);
      if (v41)
      {
        free(v41);
      }

      goto LABEL_51;
    }

    v45 = sub_100035B80(0, v39);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      __error();
      v46 = __error();
      strerror(*v46);
      sub_1000B00FC();
    }

    if (qword_100117E88)
    {
      v43 = qword_100117E88;
    }

    else
    {
      v43 = __stderrp;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v15 = __error();
      v16 = *v15;
      v18 = sub_100035B80(v15, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v213 = sub_100035B20(*v8);
        v194 = *v8;
        v195 = *__error();
        v196 = __error();
        v197 = strerror(*v196);
        *buf = 136446978;
        *&buf[4] = v213;
        *&buf[12] = 1024;
        *&buf[14] = v194;
        *&buf[18] = 1024;
        *&buf[20] = v195;
        LOWORD(v252) = 2080;
        *(&v252 + 2) = v197;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn ddt: %d (%s)", buf, 0x22u);
      }

      *__error() = v16;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_53;
    }

    v19 = *__error();
    v20 = sub_100035B20(*v8);
    v21 = *v8;
    v22 = *__error();
    v23 = __error();
    v24 = strerror(*v23);
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn ddt: %d (%s)", v20, v21, v22, v24);
    v27 = v25;
    if (v25)
    {
      v28 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x14BEDA42uLL);
        CFStringGetCString(v27, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v44 = qword_100117E88;
      }

      else
      {
        v44 = __stderrp;
      }

      fprintf(v44, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

LABEL_51:
      CFRelease(v27);
      goto LABEL_52;
    }

    v42 = sub_100035B80(0, v26);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v215 = sub_100035B20(*v8);
      v202 = *v8;
      v203 = *__error();
      v204 = __error();
      v205 = strerror(*v204);
      *buf = 136315906;
      *&buf[4] = v215;
      *&buf[12] = 1024;
      *&buf[14] = v202;
      *&buf[18] = 1024;
      *&buf[20] = v203;
      LOWORD(v252) = 2080;
      *(&v252 + 2) = v205;
      _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to spawn ddt: %d (%s)", buf, 0x22u);
    }

    if (qword_100117E88)
    {
      v43 = qword_100117E88;
    }

    else
    {
      v43 = __stderrp;
    }
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
LABEL_52:
  *__error() = v19;
LABEL_53:
  v48 = *__error();
  v49 = __error();
  [v3 appendFormat:@"Unable to spawn ddt: %d (%s)\n\n", v48, strerror(*v49)];
LABEL_54:
  if (v243[3])
  {
    v9 = *(a1 + 64);
    goto LABEL_56;
  }

  v55 = sub_10002B3B0(*v8);
  v56 = *v8;
  if (!v55)
  {
    if ((v56 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v83 = __error();
        v84 = *v83;
        v86 = sub_100035B80(v83, v85);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_100035B20(*v8);
          sub_1000B019C();
        }

        *__error() = v84;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_272;
      }

      v61 = *__error();
      v87 = sub_100035B20(*v8);
      v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v87, *v8);
      v65 = v88;
      if (v88)
      {
        v90 = CFStringGetCStringPtr(v88, 0x8000100u);
        if (v90)
        {
          v91 = 0;
        }

        else
        {
          v90 = malloc_type_calloc(0x400uLL, 1uLL, 0x71CBF280uLL);
          CFStringGetCString(v65, v90, 1024, 0x8000100u);
          v91 = v90;
        }

        if (qword_100117E88)
        {
          v130 = qword_100117E88;
        }

        else
        {
          v130 = __stderrp;
        }

        fprintf(v130, "%s\n", v90);
        if (v91)
        {
          free(v91);
        }

        goto LABEL_151;
      }

      v125 = sub_100035B80(0, v89);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
      {
        sub_100035B20(*v8);
        sub_1000B01D4();
      }

      if (qword_100117E88)
      {
        v124 = qword_100117E88;
      }

      else
      {
        v124 = __stderrp;
      }

LABEL_169:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v124);
      goto LABEL_271;
    }

    if (byte_100117E80)
    {
      v113 = __error();
      v114 = *v113;
      v116 = sub_100035B80(v113, v115);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        sub_1000B0134();
      }

      *__error() = v114;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_272;
    }

    v61 = *__error();
    v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather ddt for resource exhaustion report; process is no longer around", v210, v212);
    v110 = v117;
    if (!v117)
    {
      v132 = sub_100035B80(0, v118);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0168();
      }

      if (qword_100117E88)
      {
        v124 = qword_100117E88;
      }

      else
      {
        v124 = __stderrp;
      }

      goto LABEL_169;
    }

    v119 = CFStringGetCStringPtr(v117, 0x8000100u);
    if (v119)
    {
      v120 = 0;
    }

    else
    {
      v119 = malloc_type_calloc(0x400uLL, 1uLL, 0x71CBF280uLL);
      CFStringGetCString(v110, v119, 1024, 0x8000100u);
      v120 = v119;
    }

    if (qword_100117E88)
    {
      v185 = qword_100117E88;
    }

    else
    {
      v185 = __stderrp;
    }

    fprintf(v185, "%s\n", v119);
    if (v120)
    {
      free(v120);
    }

LABEL_270:
    CFRelease(v110);
    goto LABEL_271;
  }

  if (v56 < 0)
  {
    if (byte_100117E80)
    {
      v104 = __error();
      v105 = *v104;
      v107 = sub_100035B80(v104, v106);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        sub_1000B020C();
      }

      *__error() = v105;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_272;
    }

    v61 = *__error();
    v108 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather ddt for resource exhaustion report, though process is alive", v210, v212);
    v110 = v108;
    if (!v108)
    {
      v131 = sub_100035B80(0, v109);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0240();
      }

      if (qword_100117E88)
      {
        v124 = qword_100117E88;
      }

      else
      {
        v124 = __stderrp;
      }

      goto LABEL_169;
    }

    v111 = CFStringGetCStringPtr(v108, 0x8000100u);
    if (v111)
    {
      v112 = 0;
    }

    else
    {
      v111 = malloc_type_calloc(0x400uLL, 1uLL, 0x47306041uLL);
      CFStringGetCString(v110, v111, 1024, 0x8000100u);
      v112 = v111;
    }

    if (qword_100117E88)
    {
      v184 = qword_100117E88;
    }

    else
    {
      v184 = __stderrp;
    }

    fprintf(v184, "%s\n", v111);
    if (v112)
    {
      free(v112);
    }

    goto LABEL_270;
  }

  if (byte_100117E80)
  {
    v57 = __error();
    v58 = *v57;
    v60 = sub_100035B80(v57, v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_100035B20(*v8);
      sub_1000B0274();
    }

    *__error() = v58;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_272;
  }

  v61 = *__error();
  v62 = sub_100035B20(*v8);
  v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v62, *v8);
  v65 = v63;
  if (!v63)
  {
    v123 = sub_100035B80(0, v64);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
    {
      sub_100035B20(*v8);
      sub_1000B02AC();
    }

    if (qword_100117E88)
    {
      v124 = qword_100117E88;
    }

    else
    {
      v124 = __stderrp;
    }

    goto LABEL_169;
  }

  v66 = CFStringGetCStringPtr(v63, 0x8000100u);
  if (v66)
  {
    v67 = 0;
  }

  else
  {
    v66 = malloc_type_calloc(0x400uLL, 1uLL, 0x47306041uLL);
    CFStringGetCString(v65, v66, 1024, 0x8000100u);
    v67 = v66;
  }

  if (qword_100117E88)
  {
    v129 = qword_100117E88;
  }

  else
  {
    v129 = __stderrp;
  }

  fprintf(v129, "%s\n", v66);
  if (v67)
  {
    free(v67);
  }

LABEL_151:
  CFRelease(v65);
LABEL_271:
  *__error() = v61;
LABEL_272:
  v186 = *(a1 + 100);
  if (v186 + 1 >= 2)
  {
    sub_10006B0A4(*(a1 + 64), *(a1 + 96), v186);
  }

  v187 = *(a1 + 56);
  if (v187)
  {
    if (v55)
    {
      v188 = 0x2000000000;
    }

    else
    {
      v188 = 0x1000000000;
    }

    (*(v187 + 16))(v187, v188);
  }

LABEL_301:
  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v242, 8);
}

void sub_10006AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006AD44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  v3 = (a1 + 48);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v4 = __error();
      v5 = *v4;
      v7 = sub_100035B80(v4, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000B056C();
      }

      *__error() = v5;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v9 = *__error();
    v10 = sub_100035B20(*v3);
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No ddt output for resource exhaustion report", v10, *v3);
    if (v11)
    {
      v13 = v11;
      CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
      if (CStringPtr)
      {
        v15 = CStringPtr;
        v16 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAF42398uLL);
        CFStringGetCString(v13, v15, 1024, 0x8000100u);
        v16 = v15;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v15);
      if (v16)
      {
        free(v16);
      }

      v30 = v13;
LABEL_52:
      CFRelease(v30);
LABEL_53:
      *__error() = v9;
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v28 = sub_100035B80(0, v12);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1000B05EC();
    }

    goto LABEL_41;
  }

  if (byte_100117E80)
  {
    v17 = __error();
    v18 = *v17;
    v20 = sub_100035B80(v17, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0504();
    }

    *__error() = v18;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v9 = *__error();
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No ddt output for resource exhaustion report");
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
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAF42398uLL);
        CFStringGetCString(v24, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100117E88)
      {
        v33 = qword_100117E88;
      }

      else
      {
        v33 = __stderrp;
      }

      fprintf(v33, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      v30 = v24;
      goto LABEL_52;
    }

    v31 = sub_100035B80(0, v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1000B0538();
    }

LABEL_41:
    if (qword_100117E88)
    {
      v32 = qword_100117E88;
    }

    else
    {
      v32 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
    goto LABEL_53;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10006B0A4(uint64_t a1, uint64_t a2, mach_port_name_t name)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return mach_port_deallocate(mach_task_self_, name);
      }

      if ((a2 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v5 = __error();
          v6 = *v5;
          v8 = sub_100035B80(v5, v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v69 = sub_100035B20(a2);
            v70 = 1024;
            v71 = a2;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
          }

          *__error() = v6;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          return mach_port_deallocate(mach_task_self_, name);
        }

        v10 = *__error();
        v11 = sub_100035B20(a2);
        v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v11, a2);
        if (v12)
        {
          v14 = v12;
          CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
          if (!CStringPtr)
          {
            v16 = 352151797;
LABEL_87:
            v33 = malloc_type_calloc(0x400uLL, 1uLL, v16);
            CFStringGetCString(v14, v33, 1024, 0x8000100u);
            v34 = v33;
            goto LABEL_88;
          }

          goto LABEL_42;
        }

        v61 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0810(a2);
        }

        goto LABEL_85;
      }

      if (byte_100117E80)
      {
        v52 = __error();
        v53 = *v52;
        v55 = sub_100035B80(v52, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
        }

        *__error() = v53;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        return mach_port_deallocate(mach_task_self_, name);
      }

      v10 = *__error();
      v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
      if (v57)
      {
        v42 = v57;
        v43 = CFStringGetCStringPtr(v57, 0x8000100u);
        if (v43)
        {
          goto LABEL_78;
        }

        v44 = 352151797;
LABEL_106:
        v59 = malloc_type_calloc(0x400uLL, 1uLL, v44);
        CFStringGetCString(v42, v59, 1024, 0x8000100u);
        v60 = v59;
        goto LABEL_107;
      }

      v64 = sub_100035B80(0, v58);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        sub_1000B07DC();
      }

LABEL_100:

      goto LABEL_101;
    }

    if ((a2 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v17 = __error();
        v18 = *v17;
        v20 = sub_100035B80(v17, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v69 = sub_100035B20(a2);
          v70 = 1024;
          v71 = a2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
        }

        *__error() = v18;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v10 = *__error();
        v22 = sub_100035B20(a2);
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v22, a2);
        if (v23)
        {
          v14 = v23;
          CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
          if (!CStringPtr)
          {
            v16 = 3744928640;
            goto LABEL_87;
          }

LABEL_42:
          v33 = CStringPtr;
          v34 = 0;
LABEL_88:
          if (qword_100117E88)
          {
            v62 = qword_100117E88;
          }

          else
          {
            v62 = __stderrp;
          }

          fprintf(v62, "%s\n", v33);
          if (v34)
          {
            free(v34);
          }

          v63 = v14;
LABEL_113:
          CFRelease(v63);
LABEL_114:
          *__error() = v10;
          return mach_port_deallocate(mach_task_self_, name);
        }

        v61 = sub_100035B80(0, v24);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0758(a2);
        }

        goto LABEL_85;
      }

      return mach_port_deallocate(mach_task_self_, name);
    }

    if (byte_100117E80)
    {
      v35 = __error();
      v36 = *v35;
      v38 = sub_100035B80(v35, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
      }

      *__error() = v36;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      return mach_port_deallocate(mach_task_self_, name);
    }

    v10 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
    if (!v40)
    {
      v64 = sub_100035B80(0, v41);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0724();
      }

      goto LABEL_100;
    }

    v42 = v40;
    v43 = CFStringGetCStringPtr(v40, 0x8000100u);
    if (!v43)
    {
      v44 = 3744928640;
      goto LABEL_106;
    }

LABEL_78:
    v59 = v43;
    v60 = 0;
LABEL_107:
    if (qword_100117E88)
    {
      v66 = qword_100117E88;
    }

    else
    {
      v66 = __stderrp;
    }

    fprintf(v66, "%s\n", v59);
    if (v60)
    {
      free(v60);
    }

    v63 = v42;
    goto LABEL_113;
  }

  if ((a2 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v45 = __error();
      v46 = *v45;
      v48 = sub_100035B80(v45, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
      }

      *__error() = v46;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      return mach_port_deallocate(mach_task_self_, name);
    }

    v10 = *__error();
    v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
    if (!v50)
    {
      v64 = sub_100035B80(0, v51);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        sub_1000B066C();
      }

      goto LABEL_100;
    }

    v42 = v50;
    v43 = CFStringGetCStringPtr(v50, 0x8000100u);
    if (!v43)
    {
      v44 = 3898565256;
      goto LABEL_106;
    }

    goto LABEL_78;
  }

  if (byte_100117E80)
  {
    v25 = __error();
    v26 = *v25;
    v28 = sub_100035B80(v25, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v69 = sub_100035B20(a2);
      v70 = 1024;
      v71 = a2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
    }

    *__error() = v26;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v10 = *__error();
    v30 = sub_100035B20(a2);
    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v30, a2);
    if (v31)
    {
      v14 = v31;
      CStringPtr = CFStringGetCStringPtr(v31, 0x8000100u);
      if (!CStringPtr)
      {
        v16 = 3898565256;
        goto LABEL_87;
      }

      goto LABEL_42;
    }

    v61 = sub_100035B80(0, v32);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      sub_1000B06A0(a2);
    }

LABEL_85:

LABEL_101:
    if (qword_100117E88)
    {
      v65 = qword_100117E88;
    }

    else
    {
      v65 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v65);
    goto LABEL_114;
  }

  return mach_port_deallocate(mach_task_self_, name);
}

intptr_t sub_10006B8D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  v3 = (a1 + 48);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v4 = __error();
      v5 = *v4;
      v7 = sub_100035B80(v4, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000B08FC();
      }

      *__error() = v5;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v9 = *__error();
    v10 = sub_100035B20(*v3);
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No lsof output for resource exhaustion report", v10, *v3);
    if (v11)
    {
      v13 = v11;
      CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
      if (CStringPtr)
      {
        v15 = CStringPtr;
        v16 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x2AA01106uLL);
        CFStringGetCString(v13, v15, 1024, 0x8000100u);
        v16 = v15;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v15);
      if (v16)
      {
        free(v16);
      }

      v30 = v13;
LABEL_52:
      CFRelease(v30);
LABEL_53:
      *__error() = v9;
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v28 = sub_100035B80(0, v12);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1000B097C();
    }

    goto LABEL_41;
  }

  if (byte_100117E80)
  {
    v17 = __error();
    v18 = *v17;
    v20 = sub_100035B80(v17, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0894();
    }

    *__error() = v18;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v9 = *__error();
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No lsof output for resource exhaustion report");
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
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x2AA01106uLL);
        CFStringGetCString(v24, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100117E88)
      {
        v33 = qword_100117E88;
      }

      else
      {
        v33 = __stderrp;
      }

      fprintf(v33, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      v30 = v24;
      goto LABEL_52;
    }

    v31 = sub_100035B80(0, v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1000B08C8();
    }

LABEL_41:
    if (qword_100117E88)
    {
      v32 = qword_100117E88;
    }

    else
    {
      v32 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
    goto LABEL_53;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006BC34(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 2)
  {
    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_KQWorkLoops";
    v5 = "Exhaustion_KQWorkLoops";
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_Ports";
    v5 = "Exhaustion_Ports";
  }

  else
  {
    if (v2)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_FileDescriptors";
    v5 = "Exhaustion_FileDescriptors";
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

LABEL_11:
  memset(&v202, 0, sizeof(v202));
  localtime_r((a1 + 96), &v202);
  strftime(v211, 0x40uLL, "%F_%H-%M-%S", &v202);
  v7 = [*(a1 + 32) lastPathComponent];
  v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v9 = [NSString stringWithFormat:@"/private/var/db/spindump/%s_%@_%s.txt", v6, v8, v211];

  v10 = geteuid();
  v11 = sub_100062A5C(v9, 0, 0, 1538, v10, 0x1A4u, 0);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = dup(v11);
    v14 = fdopen(v12, "w");
    if (v14)
    {
      v15 = v14;
      v16 = [[SASampleStore alloc] initForLiveSampling];
      sub_100077DF8(v16, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 >> 4) & 1);
      if (*(a1 + 40))
      {
        [v16 addKCDataStackshot:?];
      }

      v17 = (a1 + 120);
      [v16 setTargetProcessId:*(a1 + 120)];
      [v16 postprocess];
      if (*(a1 + 48))
      {
        v18 = *(a1 + 48);
      }

      else
      {
        v18 = @"none";
      }

      [v16 setActionTaken:v18];
      v19 = *(a1 + 80);
      if (v19 <= 2)
      {
        [v16 setEvent:off_100109740[v19]];
      }

      if (*(a1 + 88))
      {
        v20 = @" (fatal)";
      }

      else
      {
        v20 = &stru_10010D958;
      }

      v21 = [NSString stringWithFormat:@"%llu allocated, exceeding limit of %llu%@", *(a1 + 104), *(a1 + 112), v20];
      [v16 setEventNote:v21];

      if (*(a1 + 88))
      {
        v22 = @"Process killed";
      }

      else
      {
        v22 = @"none";
      }

      [v16 setActionTaken:v22];
      v23 = [[SASamplePrinter alloc] initWithSampleStore:v16];
      v24 = [v23 options];
      [v24 setDisplayHeader:1];

      v25 = [v23 options];
      [v25 setDisplayBody:0];

      v26 = [v23 options];
      [v26 setDisplayFooter:0];

      v201 = +[NSUUID UUID];
      [v23 setIncidentUUID:?];
      [v23 printToStream:v15];
      fputc(10, v15);
      v27 = [*(a1 + 56) lengthOfBytesUsingEncoding:4];
      if (!v27)
      {
        goto LABEL_215;
      }

      v28 = v27;
      v200 = v13;
      v29 = malloc_type_malloc(v27, 0xC5243339uLL);
      if ([*(a1 + 56) getCString:v29 maxLength:v28 encoding:4])
      {
        v30 = fwrite(v29, v28, 1uLL, v15);
        v31 = v29;
        v13 = v200;
        if (v30 == 1)
        {
          goto LABEL_214;
        }

        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v124 = __error();
            v125 = *v124;
            v127 = sub_100035B80(v124, v126);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              sub_1000B09FC(v15);
            }

            *__error() = v125;
            v13 = v200;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v196 = *__error();
            v128 = ferror(v15);
            v129 = strerror(v128);
            v130 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write ddt/lsof output to buffer: %d (%s)", v128, v129);
            if (v130)
            {
              v132 = v130;
              v199 = v31;
              CStringPtr = CFStringGetCStringPtr(v130, 0x8000100u);
              if (CStringPtr)
              {
                v134 = CStringPtr;
                v135 = 0;
              }

              else
              {
                v134 = malloc_type_calloc(0x400uLL, 1uLL, 0xF4E8CB69uLL);
                CFStringGetCString(v132, v134, 1024, 0x8000100u);
                v135 = v134;
              }

              if (qword_100117E88)
              {
                v166 = qword_100117E88;
              }

              else
              {
                v166 = __stderrp;
              }

              fprintf(v166, "%s\n", v134);
              if (v135)
              {
                free(v135);
              }

              CFRelease(v132);
              v31 = v199;
              v13 = v200;
            }

            else
            {
              v162 = sub_100035B80(0, v131);
              if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
              {
                sub_1000B0A84(v15);
              }

              if (qword_100117E88)
              {
                v163 = qword_100117E88;
              }

              else
              {
                v163 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v163);
            }

            *__error() = v196;
          }

          goto LABEL_214;
        }

        if (byte_100117E80)
        {
          v32 = v31;
          v33 = __error();
          v34 = *v33;
          v36 = sub_100035B80(v33, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0B0C();
          }

          *__error() = v34;
          v31 = v32;
          v13 = v200;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
LABEL_214:
          free(v31);
LABEL_215:
          v168 = [v23 options];
          [v168 setDisplayHeader:0];

          v169 = [v23 options];
          [v169 setDisplayBody:1];

          v170 = [v23 options];
          [v170 setDisplayFooter:1];

          [v23 printToStream:v15];
          fwrite("\n\n", 2uLL, 1uLL, v15);
          [v16 setCustomOutput:*(a1 + 56)];
          [v16 saveBinaryFormatToStream:v15];
          fclose(v15);
          if (v13 != -1)
          {
            sub_10006DE90(v13);
            close(v13);
          }

          if (byte_100117E80 == 1)
          {
            v171 = __error();
            v172 = *v171;
            v174 = sub_100035B80(v171, v173);
            if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
            {
              v175 = [*(a1 + 32) lastPathComponent];
              v176 = *(a1 + 120);
              *buf = 138413058;
              v204 = v175;
              v205 = 1024;
              v206 = v176;
              v207 = 2082;
              v208 = v6;
              v209 = 2112;
              v210 = v9;
              _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "%@ [%d] Saved %{public}s report to %@", buf, 0x26u);
            }

            *__error() = v172;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 2)
          {
            v177 = *__error();
            v178 = [*(a1 + 32) lastPathComponent];
            v179 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d] Saved %s report to %@", v178, *(a1 + 120), v6, v9);

            if (v179)
            {
              v182 = CFStringGetCStringPtr(v179, 0x8000100u);
              if (v182)
              {
                v183 = v182;
                v184 = 0;
              }

              else
              {
                v183 = malloc_type_calloc(0x400uLL, 1uLL, 0x18D21154uLL);
                CFStringGetCString(v179, v183, 1024, 0x8000100u);
                v184 = v183;
              }

              if (qword_100117E88)
              {
                v187 = qword_100117E88;
              }

              else
              {
                v187 = __stderrp;
              }

              fprintf(v187, "%s\n", v183);
              if (v184)
              {
                free(v184);
              }

              CFRelease(v179);
            }

            else
            {
              v185 = sub_100035B80(v180, v181);
              if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
              {
                v189 = [*(a1 + 32) lastPathComponent];
                v190 = *(a1 + 120);
                *buf = 138413058;
                v204 = v189;
                v205 = 1024;
                v206 = v190;
                v207 = 2080;
                v208 = v6;
                v209 = 2112;
                v210 = v9;
                _os_log_fault_impl(&_mh_execute_header, v185, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d] Saved %s report to %@", buf, 0x26u);
              }

              if (qword_100117E88)
              {
                v186 = qword_100117E88;
              }

              else
              {
                v186 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v186);
            }

            *__error() = v177;
          }

          sub_10006D368(v6, 3600);
          v188 = *(a1 + 72);
          if (v188)
          {
            (*(v188 + 16))(v188, 0);
          }

          goto LABEL_243;
        }

        v197 = v31;
        v194 = *__error();
        v37 = sub_100035B20(*v17);
        v38 = *v17;
        v39 = ferror(v15);
        v40 = strerror(v39);
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to write ddt/lsof output to buffer: %d (%s)", v37, v38, v39, v40);
        if (v41)
        {
          v43 = v41;
          v44 = CFStringGetCStringPtr(v41, 0x8000100u);
          if (v44)
          {
            v45 = v44;
            v46 = 0;
          }

          else
          {
            v45 = malloc_type_calloc(0x400uLL, 1uLL, 0xF4E8CB69uLL);
            CFStringGetCString(v43, v45, 1024, 0x8000100u);
            v46 = v45;
          }

          if (qword_100117E88)
          {
            v160 = qword_100117E88;
          }

          else
          {
            v160 = __stderrp;
          }

          fprintf(v160, "%s\n", v45);
          if (v46)
          {
            free(v46);
          }

          CFRelease(v43);
        }

        else
        {
          v158 = sub_100035B80(0, v42);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0BA8();
          }

          if (qword_100117E88)
          {
            v159 = qword_100117E88;
          }

          else
          {
            v159 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v159);
        }

        v31 = v197;
        *__error() = v194;
LABEL_213:
        v13 = v200;
        goto LABEL_214;
      }

      v198 = v29;
      v89 = [*(a1 + 56) dataUsingEncoding:4 allowLossyConversion:1];
      v90 = v89;
      if (v89)
      {
        if (fwrite([v89 bytes], objc_msgSend(v89, "length"), 1uLL, v15) == 1)
        {
LABEL_212:

          v31 = v198;
          goto LABEL_213;
        }

        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v149 = __error();
            v150 = *v149;
            v152 = sub_100035B80(v149, v151);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              sub_1000B09FC(v15);
            }

            *__error() = v150;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v195 = *__error();
          v153 = ferror(v15);
          v154 = strerror(v153);
          v98 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write ddt/lsof output to buffer: %d (%s)", v153, v154);
          if (!v98)
          {
            v167 = sub_100035B80(0, v155);
            if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0A84(v15);
            }

            goto LABEL_207;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v91 = __error();
            v92 = *v91;
            v94 = sub_100035B80(v91, v93);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              sub_1000B0B0C();
            }

            *__error() = v92;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v195 = *__error();
          v95 = sub_100035B20(*v17);
          v191 = *v17;
          alloca = v95;
          v96 = ferror(v15);
          v97 = strerror(v96);
          v98 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to write ddt/lsof output to buffer: %d (%s)", alloca, v191, v96, v97);
          if (!v98)
          {
            v100 = sub_100035B80(0, v99);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0BA8();
            }

LABEL_168:

LABEL_207:
            if (qword_100117E88)
            {
              v165 = qword_100117E88;
            }

            else
            {
              v165 = __stderrp;
            }

LABEL_210:
            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v165);
LABEL_211:
            *__error() = v195;
            goto LABEL_212;
          }
        }

        v119 = v98;
        v120 = CFStringGetCStringPtr(v98, 0x8000100u);
        alloc = v119;
        if (v120)
        {
          goto LABEL_147;
        }

        v121 = 1904296371;
      }

      else
      {
        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v136 = __error();
            v137 = *v136;
            v139 = sub_100035B80(v136, v138);
            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
            {
              sub_1000B0C44();
            }

            *__error() = v137;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v195 = *__error();
          v140 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to convert ddt/lsof output to buffer");
          if (!v140)
          {
            v164 = sub_100035B80(0, v141);
            if (os_log_type_enabled(v164, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0C78();
            }

            if (qword_100117E88)
            {
              v165 = qword_100117E88;
            }

            else
            {
              v165 = __stderrp;
            }

            goto LABEL_210;
          }

          v142 = v140;
          v143 = CFStringGetCStringPtr(v140, 0x8000100u);
          alloc = v142;
          if (v143)
          {
            v144 = v143;
            v145 = 0;
          }

          else
          {
            v144 = malloc_type_calloc(0x400uLL, 1uLL, 0x22C179E4uLL);
            CFStringGetCString(v142, v144, 1024, 0x8000100u);
            v145 = v144;
          }

LABEL_179:
          if (qword_100117E88)
          {
            v161 = qword_100117E88;
          }

          else
          {
            v161 = __stderrp;
          }

          fprintf(v161, "%s\n", v144);
          if (v145)
          {
            free(v145);
          }

          CFRelease(alloc);
          goto LABEL_211;
        }

        if (byte_100117E80)
        {
          v112 = __error();
          v113 = *v112;
          v115 = sub_100035B80(v112, v114);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0CAC();
          }

          *__error() = v113;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_212;
        }

        v195 = *__error();
        v116 = sub_100035B20(*v17);
        v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to convert ddt/lsof output to buffer", v116, *v17);
        if (!v117)
        {
          v100 = sub_100035B80(0, v118);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0D2C();
          }

          goto LABEL_168;
        }

        v119 = v117;
        v120 = CFStringGetCStringPtr(v117, 0x8000100u);
        alloc = v119;
        if (v120)
        {
LABEL_147:
          v144 = v120;
          v145 = 0;
          goto LABEL_179;
        }

        v121 = 583104996;
      }

      v144 = malloc_type_calloc(0x400uLL, 1uLL, v121);
      CFStringGetCString(v119, v144, 1024, 0x8000100u);
      v145 = v144;
      goto LABEL_179;
    }

    v63 = (a1 + 120);
    if ((*(a1 + 120) & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v64 = __error();
        v65 = *v64;
        v67 = sub_100035B80(v64, v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sub_1000B0DAC();
        }

        *__error() = v65;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_158;
      }

      v52 = *__error();
      v68 = sub_100035B20(*v63);
      v69 = *v63;
      v70 = *__error();
      v71 = __error();
      v72 = strerror(*v71);
      v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not fdopen log file %@: %d (%s)", v68, v69, v9, v70, v72);
      if (v73)
      {
        v60 = v73;
        v61 = CFStringGetCStringPtr(v73, 0x8000100u);
        if (v61)
        {
          goto LABEL_58;
        }

        v62 = 2012431390;
LABEL_125:
        v75 = malloc_type_calloc(0x400uLL, 1uLL, v62);
        CFStringGetCString(v60, v75, 1024, 0x8000100u);
        v76 = v75;
        goto LABEL_126;
      }

      v122 = sub_100035B80(0, v74);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0E50();
      }

      goto LABEL_103;
    }

    if (byte_100117E80)
    {
      v101 = __error();
      v102 = *v101;
      v104 = sub_100035B80(v101, v103);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        sub_1000AB3FC();
      }

      *__error() = v102;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_158;
    }

    v52 = *__error();
    v105 = *__error();
    v106 = __error();
    v107 = strerror(*v106);
    v108 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not fdopen log file %@: %d (%s)", v9, v105, v107);
    if (v108)
    {
      v86 = v108;
      v87 = CFStringGetCStringPtr(v108, 0x8000100u);
      if (v87)
      {
        goto LABEL_88;
      }

      v88 = 2012431390;
      goto LABEL_149;
    }

    v123 = sub_100035B80(0, v109);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
    {
      sub_1000AB494();
    }

    goto LABEL_134;
  }

  v47 = (a1 + 120);
  if ((*(a1 + 120) & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v77 = __error();
      v78 = *v77;
      v80 = sub_100035B80(v77, v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_1000ABEDC();
      }

      *__error() = v78;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_158;
    }

    v52 = *__error();
    v81 = *__error();
    v82 = __error();
    v83 = strerror(*v82);
    v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not open log file %@: %d (%s)", v9, v81, v83);
    if (v84)
    {
      v86 = v84;
      v87 = CFStringGetCStringPtr(v84, 0x8000100u);
      if (v87)
      {
LABEL_88:
        v110 = v87;
        v111 = 0;
LABEL_150:
        if (qword_100117E88)
        {
          v156 = qword_100117E88;
        }

        else
        {
          v156 = __stderrp;
        }

        fprintf(v156, "%s\n", v110);
        if (v111)
        {
          free(v111);
        }

        v147 = v86;
        goto LABEL_156;
      }

      v88 = 3350684082;
LABEL_149:
      v110 = malloc_type_calloc(0x400uLL, 1uLL, v88);
      CFStringGetCString(v86, v110, 1024, 0x8000100u);
      v111 = v110;
      goto LABEL_150;
    }

    v123 = sub_100035B80(0, v85);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
    {
      sub_1000ABF74();
    }

LABEL_134:

    goto LABEL_135;
  }

  if (byte_100117E80)
  {
    v48 = __error();
    v49 = *v48;
    v51 = sub_100035B80(v48, v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0EF4();
    }

    *__error() = v49;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_158;
  }

  v52 = *__error();
  v53 = sub_100035B20(*v47);
  v54 = *v47;
  v55 = *__error();
  v56 = __error();
  v57 = strerror(*v56);
  v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not open log file %@: %d (%s)", v53, v54, v9, v55, v57);
  if (!v58)
  {
    v122 = sub_100035B80(0, v59);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
    {
      sub_1000B0F98();
    }

LABEL_103:

LABEL_135:
    if (qword_100117E88)
    {
      v148 = qword_100117E88;
    }

    else
    {
      v148 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v148);
    goto LABEL_157;
  }

  v60 = v58;
  v61 = CFStringGetCStringPtr(v58, 0x8000100u);
  if (!v61)
  {
    v62 = 3350684082;
    goto LABEL_125;
  }

LABEL_58:
  v75 = v61;
  v76 = 0;
LABEL_126:
  if (qword_100117E88)
  {
    v146 = qword_100117E88;
  }

  else
  {
    v146 = __stderrp;
  }

  fprintf(v146, "%s\n", v75);
  if (v76)
  {
    free(v76);
  }

  v147 = v60;
LABEL_156:
  CFRelease(v147);
LABEL_157:
  *__error() = v52;
LABEL_158:
  v157 = *(a1 + 72);
  if (v157)
  {
    (*(v157 + 16))(v157, 0x1000000);
  }

LABEL_243:
}

uint64_t sub_10006D2B4(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void sub_10006D30C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_10006D328(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x12u);
}

_DWORD *sub_10006D350(int *a1)
{
  v2 = *a1;

  return sub_100035B20(v2);
}

void sub_10006D368(const char *a1, uint64_t a2)
{
  v4 = time(0);
  v5 = strdup(a1);
  v6 = sub_1000359B8("Cleanup spindump dir for %s", a1);
  v7 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D458;
  block[3] = &unk_100109760;
  v12 = v4;
  v13 = a2;
  v10 = v6;
  v11 = v5;
  v8 = v6;
  dispatch_async(v7, block);
}

void sub_10006D458(uint64_t a1)
{
  v2 = opendir("/private/var/db/spindump");
  if (v2)
  {
    v3 = v2;
    *__error() = 0;
    for (i = readdir(v3); i; i = readdir(v3))
    {
      d_name = i->d_name;
      v6 = strlen(*(a1 + 40));
      if (!strncmp(d_name, *(a1 + 40), v6))
      {
        snprintf(__str, 0x80uLL, "/private/var/db/spindump/%s", d_name);
        memset(&v101, 0, sizeof(v101));
        if (stat(__str, &v101))
        {
          if (byte_100117E80 == 1)
          {
            v19 = __error();
            v20 = *v19;
            v22 = sub_100035B80(v19, v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v73 = *__error();
              v74 = __error();
              v75 = strerror(*v74);
              *buf = 136315650;
              v98 = __str;
              v99 = 1024;
              *v100 = v73;
              *&v100[4] = 2080;
              *&v100[6] = v75;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Stat failed, attemping unlink of %s: %d (%s)", buf, 0x1Cu);
            }

            *__error() = v20;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_88;
          }

          v24 = *__error();
          v25 = *__error();
          v26 = __error();
          v27 = strerror(*v26);
          v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stat failed, attemping unlink of %s: %d (%s)", __str, v25, v27);
          if (v28)
          {
            v30 = v28;
            CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_67;
            }

            v32 = 1876247079;
            goto LABEL_80;
          }

          v55 = sub_100035B80(0, v29);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            v56 = *__error();
            v57 = __error();
            v58 = strerror(*v57);
            *buf = 136315650;
            v98 = __str;
            v99 = 1024;
            *v100 = v56;
            *&v100[4] = 2080;
            *&v100[6] = v58;
            v59 = v55;
            v60 = "Unable to format: Stat failed, attemping unlink of %s: %d (%s)";
            v61 = 28;
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        if (v101.st_ctimespec.tv_sec <= *(a1 + 48) - *(a1 + 56))
        {
          if (byte_100117E80)
          {
            v44 = __error();
            v45 = *v44;
            v47 = sub_100035B80(v44, v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v48 = *(a1 + 56);
              v49 = *(a1 + 48) - v101.st_ctimespec.tv_sec;
              *buf = 136315650;
              v98 = __str;
              v99 = 2048;
              *v100 = v49;
              *&v100[8] = 2048;
              *&v100[10] = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Unlinking %s which is %lds old (>=%lds)", buf, 0x20u);
            }

            *__error() = v45;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 1)
          {
            goto LABEL_88;
          }

          v24 = *__error();
          v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unlinking %s which is %lds old (>=%lds)", __str, *(a1 + 48) - v101.st_ctimespec.tv_sec, *(a1 + 56));
          if (v51)
          {
            v30 = v51;
            CStringPtr = CFStringGetCStringPtr(v51, 0x8000100u);
            if (CStringPtr)
            {
LABEL_67:
              v53 = CStringPtr;
              v54 = 0;
              goto LABEL_81;
            }

            v32 = 3014854008;
LABEL_80:
            v53 = malloc_type_calloc(0x400uLL, 1uLL, v32);
            CFStringGetCString(v30, v53, 1024, 0x8000100u);
            v54 = v53;
LABEL_81:
            if (qword_100117E88)
            {
              v72 = qword_100117E88;
            }

            else
            {
              v72 = __stderrp;
            }

            fprintf(v72, "%s\n", v53);
            if (v54)
            {
              free(v54);
            }

            CFRelease(v30);
LABEL_87:
            *__error() = v24;
LABEL_88:
            unlink(__str);
            continue;
          }

          v55 = sub_100035B80(0, v52);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            v69 = *(a1 + 56);
            v70 = *(a1 + 48) - v101.st_ctimespec.tv_sec;
            *buf = 136315650;
            v98 = __str;
            v99 = 2048;
            *v100 = v70;
            *&v100[8] = 2048;
            *&v100[10] = v69;
            v59 = v55;
            v60 = "Unable to format: Unlinking %s which is %lds old (>=%lds)";
            v61 = 32;
LABEL_74:
            _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, v60, buf, v61);
          }

LABEL_75:

          if (qword_100117E88)
          {
            v71 = qword_100117E88;
          }

          else
          {
            v71 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v71);
          goto LABEL_87;
        }

        if (byte_100117E80)
        {
          v33 = __error();
          v34 = *v33;
          v36 = sub_100035B80(v33, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v77 = *(a1 + 56);
            v78 = *(a1 + 48) - v101.st_ctimespec.tv_sec;
            *buf = 136315650;
            v98 = __str;
            v99 = 2048;
            *v100 = v78;
            *&v100[8] = 2048;
            *&v100[10] = v77;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Not unlinking %s which is %lds old (<%lds)", buf, 0x20u);
          }

          *__error() = v34;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          continue;
        }

        v12 = *__error();
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not unlinking %s which is %lds old (<%lds)", __str, *(a1 + 48) - v101.st_ctimespec.tv_sec, *(a1 + 56));
        if (!v38)
        {
          v41 = sub_100035B80(0, v39);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            v63 = *(a1 + 56);
            v64 = *(a1 + 48) - v101.st_ctimespec.tv_sec;
            *buf = 136315650;
            v98 = __str;
            v99 = 2048;
            *v100 = v64;
            *&v100[8] = 2048;
            *&v100[10] = v63;
            v65 = buf;
            v66 = v41;
            v67 = "Unable to format: Not unlinking %s which is %lds old (<%lds)";
            v68 = 32;
            goto LABEL_92;
          }

LABEL_43:

          if (qword_100117E88)
          {
            v42 = qword_100117E88;
          }

          else
          {
            v42 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v42);
          goto LABEL_55;
        }

        v15 = v38;
        v16 = CFStringGetCStringPtr(v38, 0x8000100u);
        if (!v16)
        {
          v40 = 2500192732;
LABEL_48:
          v17 = malloc_type_calloc(0x400uLL, 1uLL, v40);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
          goto LABEL_49;
        }
      }

      else
      {
        if (byte_100117E80 == 1)
        {
          v7 = __error();
          v8 = *v7;
          v10 = sub_100035B80(v7, v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v62 = *(a1 + 40);
            v101.st_dev = 136315394;
            *&v101.st_mode = d_name;
            WORD2(v101.st_ino) = 2080;
            *(&v101.st_ino + 6) = v62;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "File %s doesn't match prefix %s", &v101, 0x16u);
          }

          *__error() = v8;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          continue;
        }

        v12 = *__error();
        v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"File %s doesn't match prefix %s", d_name, *(a1 + 40));
        if (!v13)
        {
          v41 = sub_100035B80(0, v14);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            v76 = *(a1 + 40);
            v101.st_dev = 136315394;
            *&v101.st_mode = d_name;
            WORD2(v101.st_ino) = 2080;
            *(&v101.st_ino + 6) = v76;
            v65 = &v101;
            v66 = v41;
            v67 = "Unable to format: File %s doesn't match prefix %s";
            v68 = 22;
LABEL_92:
            _os_log_fault_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, v67, v65, v68);
          }

          goto LABEL_43;
        }

        v15 = v13;
        v16 = CFStringGetCStringPtr(v13, 0x8000100u);
        if (!v16)
        {
          v40 = 141179575;
          goto LABEL_48;
        }
      }

      v17 = v16;
      v18 = 0;
LABEL_49:
      if (qword_100117E88)
      {
        v43 = qword_100117E88;
      }

      else
      {
        v43 = __stderrp;
      }

      fprintf(v43, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      CFRelease(v15);
LABEL_55:
      *__error() = v12;
    }

    closedir(v3);
    free(*(a1 + 40));
  }

  else
  {
    if (byte_100117E80 == 1)
    {
      v79 = __error();
      v80 = *v79;
      v82 = sub_100035B80(v79, v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        sub_1000B103C();
      }

      *__error() = v80;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v84 = *__error();
      v85 = *__error();
      v86 = __error();
      v87 = strerror(*v86);
      v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to opendir /private/var/db/spindump: %d (%s)", v85, v87);
      if (v88)
      {
        v90 = v88;
        v91 = CFStringGetCStringPtr(v88, 0x8000100u);
        if (v91)
        {
          v92 = v91;
          v93 = 0;
        }

        else
        {
          v92 = malloc_type_calloc(0x400uLL, 1uLL, 0x26F36AD8uLL);
          CFStringGetCString(v90, v92, 1024, 0x8000100u);
          v93 = v92;
        }

        if (qword_100117E88)
        {
          v96 = qword_100117E88;
        }

        else
        {
          v96 = __stderrp;
        }

        fprintf(v96, "%s\n", v92);
        if (v93)
        {
          free(v93);
        }

        CFRelease(v90);
      }

      else
      {
        v94 = sub_100035B80(0, v89);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1000B10D0();
        }

        if (qword_100117E88)
        {
          v95 = qword_100117E88;
        }

        else
        {
          v95 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v95);
      }

      *__error() = v84;
    }
  }
}

int *sub_10006DE90(int *result)
{
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v32 = 66053;
  result = ffsctl(result, 0xC0084A44uLL, &v32, 0);
  if (result)
  {
    v1 = result;
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1164(v1);
      }

      result = __error();
      *result = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return result;
    }

    v7 = *__error();
    v8 = strerror(v1);
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to mark file purgeable: %d (%s)", v1, v8);
    if (v9)
    {
      v11 = v9;
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      if (CStringPtr)
      {
        v13 = CStringPtr;
        v14 = 0;
      }

      else
      {
        v13 = malloc_type_calloc(0x400uLL, 1uLL, 0xAD5BCC90uLL);
        CFStringGetCString(v11, v13, 1024, 0x8000100u);
        v14 = v13;
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v13);
      if (v14)
      {
        free(v14);
      }

      v28 = v11;
LABEL_51:
      CFRelease(v28);
LABEL_52:
      result = __error();
      *result = v7;
      return result;
    }

    v26 = sub_100035B80(0, v10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1000B11EC(v1);
    }

    goto LABEL_40;
  }

  if (byte_100117E80)
  {
    v15 = __error();
    v16 = *v15;
    v18 = sub_100035B80(v15, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B1274(v18);
    }

    result = __error();
    *result = v16;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v7 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Marked file purgeable");
    if (v20)
    {
      v22 = v20;
      v23 = CFStringGetCStringPtr(v20, 0x8000100u);
      if (v23)
      {
        v24 = v23;
        v25 = 0;
      }

      else
      {
        v24 = malloc_type_calloc(0x400uLL, 1uLL, 0x48E7ACBCuLL);
        CFStringGetCString(v22, v24, 1024, 0x8000100u);
        v25 = v24;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v24);
      if (v25)
      {
        free(v25);
      }

      v28 = v22;
      goto LABEL_51;
    }

    v29 = sub_100035B80(0, v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1000B12B8(v29);
    }

LABEL_40:
    if (qword_100117E88)
    {
      v30 = qword_100117E88;
    }

    else
    {
      v30 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v30);
    goto LABEL_52;
  }

  return result;
}

void sub_10006E1E4(id a1, OS_dispatch_source *a2)
{
  v2 = a2;
  if (byte_100117E80 == 1)
  {
    v3 = __error();
    v4 = *v3;
    v6 = sub_100035B80(v3, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      handle = dispatch_source_get_handle(v2);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received signal %ld, exiting", buf, 0xCu);
    }

    *__error() = v4;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v8 = *__error();
    v9 = dispatch_source_get_handle(v2);
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Received signal %ld, exiting", v9);
    if (v10)
    {
      v15 = v10;
      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      if (CStringPtr)
      {
        v17 = CStringPtr;
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xF020FF0BuLL);
        CFStringGetCString(v15, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100117E88)
      {
        v19 = qword_100117E88;
      }

      else
      {
        v19 = __stderrp;
      }

      fprintf(v19, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      CFRelease(v15);
    }

    else
    {
      v12 = sub_100035B80(0, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = dispatch_source_get_handle(v2);
        *buf = 134217984;
        handle = v13;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Unable to format: Received signal %ld, exiting", buf, 0xCu);
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

    *__error() = v8;
  }

  exit(0);
}

_BYTE *sub_10006E428(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = strnlen(a1, 0x100uLL);
  if (v2 < 256)
  {
    v3 = strdup(a1);
    if (v2 < 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = malloc_type_malloc(0x100uLL, 0xEC1E16DAuLL);
    __strlcpy_chk();
    v2 = 255;
  }

  for (i = 0; i != v2; ++i)
  {
    if (v3[i] - 9 <= 1)
    {
      v3[i] = 32;
    }
  }

  return v3;
}

void sub_10006E4E0(void *a1)
{
  v1 = a1;
  v2 = [v1 total];
  if (![v2 num_missing_load_info])
  {
    v3 = [v1 total];
    if (![v3 num_out_of_order])
    {
      v19 = [v1 bytes_not_microstackshots];

      if (!v19)
      {
        goto LABEL_82;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v4 = [v1 total];
  v5 = [v4 num_missing_load_info];

  if (v5)
  {
    if (byte_100117E80 == 1)
    {
      v6 = __error();
      v7 = *v6;
      v9 = sub_100035B80(v6, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1B50(v1);
      }

      *__error() = v7;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v11 = *__error();
      v12 = [v1 total];
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu microstackshots dropped due to missing load infos", [v12 num_missing_load_info]);

      if (v13)
      {
        CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
        if (CStringPtr)
        {
          v17 = CStringPtr;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xBCB12CAEuLL);
          CFStringGetCString(v13, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100117E88)
        {
          v22 = qword_100117E88;
        }

        else
        {
          v22 = __stderrp;
        }

        fprintf(v22, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        CFRelease(v13);
      }

      else
      {
        v20 = sub_100035B80(v14, v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1BE0(v1);
        }

        if (qword_100117E88)
        {
          v21 = qword_100117E88;
        }

        else
        {
          v21 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v21);
      }

      *__error() = v11;
    }
  }

  v23 = [v1 total];
  v24 = [v23 num_out_of_order];

  if (v24)
  {
    if (byte_100117E80 == 1)
    {
      v25 = __error();
      v26 = *v25;
      v28 = sub_100035B80(v25, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1C70(v1);
      }

      *__error() = v26;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v29 = *__error();
      v30 = [v1 total];
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu microstackshots dropped due to being out of order", [v30 num_out_of_order]);

      if (v31)
      {
        v34 = CFStringGetCStringPtr(v31, 0x8000100u);
        if (v34)
        {
          v35 = v34;
          v36 = 0;
        }

        else
        {
          v35 = malloc_type_calloc(0x400uLL, 1uLL, 0x725E7BBFuLL);
          CFStringGetCString(v31, v35, 1024, 0x8000100u);
          v36 = v35;
        }

        if (qword_100117E88)
        {
          v39 = qword_100117E88;
        }

        else
        {
          v39 = __stderrp;
        }

        fprintf(v39, "%s\n", v35);
        if (v36)
        {
          free(v36);
        }

        CFRelease(v31);
      }

      else
      {
        v37 = sub_100035B80(v32, v33);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1D00(v1);
        }

        if (qword_100117E88)
        {
          v38 = qword_100117E88;
        }

        else
        {
          v38 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
      }

      *__error() = v29;
    }
  }

  if ([v1 bytes_not_microstackshots])
  {
    if (byte_100117E80 == 1)
    {
      v40 = __error();
      v41 = *v40;
      v43 = sub_100035B80(v40, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1D90(v1);
      }

      *__error() = v41;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v44 = *__error();
      v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu bytes of microstackshot data was invalid (ignored)", [v1 bytes_not_microstackshots]);
      if (v45)
      {
        v47 = v45;
        v48 = CFStringGetCStringPtr(v45, 0x8000100u);
        if (v48)
        {
          v49 = v48;
          v50 = 0;
        }

        else
        {
          v49 = malloc_type_calloc(0x400uLL, 1uLL, 0x510523D0uLL);
          CFStringGetCString(v47, v49, 1024, 0x8000100u);
          v50 = v49;
        }

        if (qword_100117E88)
        {
          v53 = qword_100117E88;
        }

        else
        {
          v53 = __stderrp;
        }

        fprintf(v53, "%s\n", v49);
        if (v50)
        {
          free(v50);
        }

        CFRelease(v47);
      }

      else
      {
        v51 = sub_100035B80(0, v46);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1E10(v1);
        }

        if (qword_100117E88)
        {
          v52 = qword_100117E88;
        }

        else
        {
          v52 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v52);
      }

      *__error() = v44;
    }
  }

LABEL_82:
  if (byte_100117E80 == 1)
  {
    v54 = __error();
    v55 = *v54;
    v57 = sub_100035B80(v54, v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v372 = [v1 total];
      v375 = v55;
      v58 = [v372 bytes];
      v370 = [v1 total];
      v59 = &v58[[v370 bytes_duplicate]];
      v368 = [v1 total];
      v60 = [v368 bytes_out_of_order];
      v366 = [v1 total];
      v61 = &v59[[v366 bytes_missing_load_info] + v60];
      v62 = [v1 bytes_other_data];
      v285 = &v61[[v1 bytes_not_microstackshots] + v62];
      v364 = [v1 total];
      v63 = [v364 bytes];
      v362 = [v1 total];
      v64 = &v63[[v362 bytes_duplicate]];
      v360 = [v1 total];
      v65 = [v360 bytes_out_of_order];
      v358 = [v1 total];
      v277 = &v64[[v358 bytes_missing_load_info] + v65];
      v275 = [v1 bytes_other_data];
      v271 = [v1 bytes_not_microstackshots];
      v269 = [v1 num_microstackshots_filtered_out];
      v356 = [v1 total];
      v265 = [v356 count];
      v354 = [v1 total];
      v263 = [v354 bytes];
      v352 = [v1 total];
      v259 = [v352 num_load_infos];
      v350 = [v1 total];
      v255 = [v350 num_frames];
      v348 = [v1 total];
      v253 = [v348 num_duplicate];
      v346 = [v1 total];
      v249 = [v346 bytes_duplicate];
      v344 = [v1 total];
      v247 = [v344 num_out_of_order];
      v342 = [v1 total];
      v243 = [v342 bytes_out_of_order];
      v340 = [v1 total];
      v239 = [v340 num_missing_load_info];
      v338 = [v1 total];
      v237 = [v338 bytes_missing_load_info];
      v336 = [v1 interrupt];
      v233 = [v336 count];
      alloc = [v1 interrupt];
      v229 = [(__CFAllocator *)alloc bytes];
      v333 = [v1 interrupt];
      v227 = [v333 num_load_infos];
      v331 = [v1 interrupt];
      v223 = [v331 num_frames];
      v329 = [v1 interrupt];
      v219 = [v329 num_duplicate];
      v327 = [v1 interrupt];
      v217 = [v327 bytes_duplicate];
      v325 = [v1 interrupt];
      v213 = [v325 num_out_of_order];
      v323 = [v1 interrupt];
      v209 = [v323 bytes_out_of_order];
      v321 = [v1 interrupt];
      v207 = [v321 num_missing_load_info];
      v319 = [v1 interrupt];
      v203 = [v319 bytes_missing_load_info];
      v317 = [v1 timer];
      v201 = [v317 count];
      v315 = [v1 timer];
      v197 = [v315 bytes];
      v313 = [v1 timer];
      v193 = [v313 num_load_infos];
      v311 = [v1 timer];
      v191 = [v311 num_frames];
      v309 = [v1 timer];
      v187 = [v309 num_duplicate];
      v307 = [v1 timer];
      v183 = [v307 bytes_duplicate];
      v305 = [v1 timer];
      v179 = [v305 num_out_of_order];
      v303 = [v1 timer];
      v171 = [v303 bytes_out_of_order];
      v301 = [v1 timer];
      v165 = [v301 num_missing_load_info];
      v299 = [v1 timer];
      v161 = [v299 bytes_missing_load_info];
      v297 = [v1 io];
      v153 = [v297 count];
      v295 = [v1 io];
      v147 = [v295 bytes];
      v293 = [v1 io];
      v143 = [v293 num_load_infos];
      v291 = [v1 io];
      v137 = [v291 num_frames];
      v289 = [v1 io];
      v131 = [v289 num_duplicate];
      v287 = [v1 io];
      v127 = [v287 bytes_duplicate];
      v283 = [v1 io];
      v123 = [v283 num_out_of_order];
      v281 = [v1 io];
      v119 = [v281 bytes_out_of_order];
      v279 = [v1 io];
      v113 = [v279 num_missing_load_info];
      v273 = [v1 io];
      v109 = [v273 bytes_missing_load_info];
      v267 = [v1 pmi];
      v159 = [v267 count];
      v261 = [v1 pmi];
      v181 = [v261 bytes];
      v257 = [v1 pmi];
      v177 = [v257 num_load_infos];
      v251 = [v1 pmi];
      v173 = [v251 num_frames];
      v245 = [v1 pmi];
      v169 = [v245 num_duplicate];
      v241 = [v1 pmi];
      v163 = [v241 bytes_duplicate];
      v235 = [v1 pmi];
      v155 = [v235 num_out_of_order];
      v231 = [v1 pmi];
      v151 = [v231 bytes_out_of_order];
      v225 = [v1 pmi];
      v145 = [v225 num_missing_load_info];
      v221 = [v1 pmi];
      v141 = [v221 bytes_missing_load_info];
      v215 = [v1 macf];
      v135 = [v215 count];
      v211 = [v1 macf];
      v133 = [v211 bytes];
      v205 = [v1 macf];
      v129 = [v205 num_load_infos];
      v199 = [v1 macf];
      v125 = [v199 num_frames];
      v195 = [v1 macf];
      v121 = [v195 num_duplicate];
      v189 = [v1 macf];
      v117 = [v189 bytes_duplicate];
      v185 = [v1 macf];
      v115 = [v185 num_out_of_order];
      v175 = [v1 macf];
      v111 = [v175 bytes_out_of_order];
      v167 = [v1 macf];
      v108 = [v167 num_missing_load_info];
      v157 = [v1 macf];
      v106 = [v157 bytes_missing_load_info];
      v149 = [v1 unknown_type];
      v105 = [v149 count];
      v139 = [v1 unknown_type];
      v103 = [v139 bytes];
      v66 = [v1 unknown_type];
      v102 = [v66 num_load_infos];
      v67 = [v1 unknown_type];
      v101 = [v67 num_frames];
      v68 = [v1 unknown_type];
      v100 = [v68 num_duplicate];
      v69 = [v1 unknown_type];
      v99 = [v69 bytes_duplicate];
      v70 = [v1 unknown_type];
      v98 = [v70 num_out_of_order];
      v71 = [v1 unknown_type];
      v97 = [v71 bytes_out_of_order];
      v72 = [v1 unknown_type];
      v96 = [v72 num_missing_load_info];
      v73 = [v1 unknown_type];
      v74 = [v73 bytes_missing_load_info];
      v378 = v285;
      v380 = v277;
      v382 = v275;
      v384 = v271;
      v386 = v269;
      v388 = v265;
      v390 = v263;
      v392 = v259;
      v394 = v255;
      v396 = v253;
      v398 = v249;
      v400 = v247;
      v402 = v243;
      v404 = v239;
      v406 = v237;
      v408 = v233;
      v410 = v229;
      v412 = v227;
      v414 = v223;
      v416 = v219;
      v418 = v217;
      v420 = v213;
      v422 = v209;
      v424 = v207;
      v426 = v203;
      v428 = v201;
      v430 = v197;
      v432 = v193;
      v434 = v191;
      v436 = v187;
      v438 = v183;
      v440 = v179;
      v442 = v171;
      v444 = v165;
      v446 = v161;
      v448 = v153;
      v450 = v147;
      v452 = v143;
      v454 = v137;
      v456 = v131;
      v458 = v127;
      v460 = v123;
      v462 = v119;
      v464 = v113;
      v466 = v109;
      *buf = 134236928;
      v468 = v159;
      v379 = 2048;
      v381 = 2048;
      v383 = 2048;
      v385 = 2048;
      v387 = 2048;
      v389 = 2048;
      v391 = 2048;
      v393 = 2048;
      v395 = 2048;
      v397 = 2048;
      v399 = 2048;
      v401 = 2048;
      v403 = 2048;
      v405 = 2048;
      v407 = 2048;
      v409 = 2048;
      v411 = 2048;
      v413 = 2048;
      v415 = 2048;
      v417 = 2048;
      v419 = 2048;
      v421 = 2048;
      v423 = 2048;
      v425 = 2048;
      v427 = 2048;
      v429 = 2048;
      v431 = 2048;
      v433 = 2048;
      v435 = 2048;
      v437 = 2048;
      v439 = 2048;
      v441 = 2048;
      v443 = 2048;
      v445 = 2048;
      v447 = 2048;
      v449 = 2048;
      v451 = 2048;
      v453 = 2048;
      v455 = 2048;
      v457 = 2048;
      v459 = 2048;
      v461 = 2048;
      v463 = 2048;
      v465 = 2048;
      v467 = 2048;
      v469 = 2048;
      v470 = v181;
      v471 = 2048;
      v472 = v177;
      v473 = 2048;
      v474 = v173;
      v475 = 2048;
      v476 = v169;
      v477 = 2048;
      v478 = v163;
      v479 = 2048;
      v480 = v155;
      v481 = 2048;
      v482 = v151;
      v483 = 2048;
      v484 = v145;
      v485 = 2048;
      v486 = v141;
      v487 = 2048;
      v488 = v135;
      v489 = 2048;
      v490 = v133;
      v491 = 2048;
      v492 = v129;
      v493 = 2048;
      v494 = v125;
      v495 = 2048;
      v496 = v121;
      v497 = 2048;
      v498 = v117;
      v499 = 2048;
      v500 = v115;
      v501 = 2048;
      v502 = v111;
      v503 = 2048;
      v504 = v108;
      v505 = 0;
      v506 = 8;
      v507 = v106;
      v508 = 0;
      v509 = 8;
      v510 = v105;
      v511 = 0;
      v512 = 8;
      v513 = v103;
      v514 = 0;
      v515 = 8;
      v516 = v102;
      v517 = 0;
      v518 = 8;
      v519 = v101;
      v520 = 0;
      v521 = 8;
      v522 = v100;
      v523 = 0;
      v524 = 8;
      v525 = v99;
      v526 = 0;
      v527 = 8;
      v528 = v98;
      v529 = 0;
      v530 = 8;
      v531 = v97;
      v532 = 0;
      v533 = 8;
      v534 = v96;
      v535 = 0;
      v536 = 8;
      v537 = v74;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", buf, 0x2F0u);

      v55 = v375;
    }

    *__error() = v55;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v376 = *__error();
    log = [v1 total];
    v76 = [log bytes];
    v373 = [v1 total];
    v77 = &v76[[v373 bytes_duplicate]];
    v371 = [v1 total];
    v78 = [v371 bytes_out_of_order];
    v369 = [v1 total];
    v79 = &v77[[v369 bytes_missing_load_info] + v78];
    v80 = [v1 bytes_other_data];
    v326 = &v79[[v1 bytes_not_microstackshots] + v80];
    v367 = [v1 total];
    v81 = [v367 bytes];
    v365 = [v1 total];
    v82 = &v81[[v365 bytes_duplicate]];
    v363 = [v1 total];
    v83 = [v363 bytes_out_of_order];
    v361 = [v1 total];
    v318 = &v82[[v361 bytes_missing_load_info] + v83];
    v314 = [v1 bytes_other_data];
    v312 = [v1 bytes_not_microstackshots];
    v308 = [v1 num_microstackshots_filtered_out];
    v359 = [v1 total];
    v304 = [v359 count];
    v357 = [v1 total];
    v300 = [v357 bytes];
    v355 = [v1 total];
    v298 = [v355 num_load_infos];
    v353 = [v1 total];
    v294 = [v353 num_frames];
    v351 = [v1 total];
    v290 = [v351 num_duplicate];
    v349 = [v1 total];
    v286 = [v349 bytes_duplicate];
    v347 = [v1 total];
    v282 = [v347 num_out_of_order];
    v345 = [v1 total];
    v280 = [v345 bytes_out_of_order];
    v343 = [v1 total];
    v276 = [v343 num_missing_load_info];
    v341 = [v1 total];
    v272 = [v341 bytes_missing_load_info];
    v339 = [v1 interrupt];
    v268 = [v339 count];
    v337 = [v1 interrupt];
    v266 = [v337 bytes];
    v334 = [v1 interrupt];
    v262 = [v334 num_load_infos];
    v332 = [v1 interrupt];
    v258 = [v332 num_frames];
    v330 = [v1 interrupt];
    v254 = [v330 num_duplicate];
    v328 = [v1 interrupt];
    v250 = [v328 bytes_duplicate];
    v324 = [v1 interrupt];
    v248 = [v324 num_out_of_order];
    v322 = [v1 interrupt];
    v244 = [v322 bytes_out_of_order];
    v320 = [v1 interrupt];
    v240 = [v320 num_missing_load_info];
    v316 = [v1 interrupt];
    v236 = [v316 bytes_missing_load_info];
    v310 = [v1 timer];
    v232 = [v310 count];
    v306 = [v1 timer];
    v230 = [v306 bytes];
    v302 = [v1 timer];
    v226 = [v302 num_load_infos];
    v296 = [v1 timer];
    v222 = [v296 num_frames];
    v292 = [v1 timer];
    v218 = [v292 num_duplicate];
    v288 = [v1 timer];
    v216 = [v288 bytes_duplicate];
    v284 = [v1 timer];
    v212 = [v284 num_out_of_order];
    v278 = [v1 timer];
    v208 = [v278 bytes_out_of_order];
    v274 = [v1 timer];
    v204 = [v274 num_missing_load_info];
    v270 = [v1 timer];
    v200 = [v270 bytes_missing_load_info];
    v264 = [v1 io];
    v198 = [v264 count];
    v260 = [v1 io];
    v194 = [v260 bytes];
    v256 = [v1 io];
    v190 = [v256 num_load_infos];
    v252 = [v1 io];
    v186 = [v252 num_frames];
    v246 = [v1 io];
    v182 = [v246 num_duplicate];
    v242 = [v1 io];
    v180 = [v242 bytes_duplicate];
    v238 = [v1 io];
    v176 = [v238 num_out_of_order];
    v234 = [v1 io];
    v172 = [v234 bytes_out_of_order];
    v228 = [v1 io];
    v168 = [v228 num_missing_load_info];
    v224 = [v1 io];
    v166 = [v224 bytes_missing_load_info];
    v220 = [v1 pmi];
    v162 = [v220 count];
    v214 = [v1 pmi];
    v158 = [v214 bytes];
    v210 = [v1 pmi];
    v154 = [v210 num_load_infos];
    v206 = [v1 pmi];
    v150 = [v206 num_frames];
    v202 = [v1 pmi];
    v148 = [v202 num_duplicate];
    v196 = [v1 pmi];
    v144 = [v196 bytes_duplicate];
    v192 = [v1 pmi];
    v140 = [v192 num_out_of_order];
    v188 = [v1 pmi];
    v136 = [v188 bytes_out_of_order];
    v184 = [v1 pmi];
    v132 = [v184 num_missing_load_info];
    v178 = [v1 pmi];
    v130 = [v178 bytes_missing_load_info];
    v174 = [v1 macf];
    v126 = [v174 count];
    v170 = [v1 macf];
    v122 = [v170 bytes];
    v164 = [v1 macf];
    v118 = [v164 num_load_infos];
    v160 = [v1 macf];
    v116 = [v160 num_frames];
    v156 = [v1 macf];
    v112 = [v156 num_duplicate];
    v152 = [v1 macf];
    [v152 bytes_duplicate];
    v146 = [v1 macf];
    [v146 num_out_of_order];
    v142 = [v1 macf];
    [v142 bytes_out_of_order];
    v138 = [v1 macf];
    [v138 num_missing_load_info];
    v134 = [v1 macf];
    [v134 bytes_missing_load_info];
    v128 = [v1 unknown_type];
    [v128 count];
    v124 = [v1 unknown_type];
    [v124 bytes];
    v120 = [v1 unknown_type];
    [v120 num_load_infos];
    v114 = [v1 unknown_type];
    [v114 num_frames];
    v110 = [v1 unknown_type];
    [v110 num_duplicate];
    v107 = [v1 unknown_type];
    [v107 bytes_duplicate];
    v104 = [v1 unknown_type];
    [v104 num_out_of_order];
    v84 = [v1 unknown_type];
    [v84 bytes_out_of_order];
    v85 = [v1 unknown_type];
    [v85 num_missing_load_info];
    v86 = [v1 unknown_type];
    [v86 bytes_missing_load_info];
    v87 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", v326, v318, v314, v312, v308, v304, v300, v298, v294, v290, v286, v282, v280, v276, v272, v268, v266, v262, v258, v254, v250, v248, v244, v240, v236, v232, v230, v226, v222, v218, v216, v212, v208, v204, v200, v198, v194, v190, v186, v182, v180, v176, v172, v168, v166, v162, v158, v154, v150, v148, v144, v140, v136, v132, v130, v126, v122, v118, v116, v112);

    if (v87)
    {
      v90 = CFStringGetCStringPtr(v87, 0x8000100u);
      if (v90)
      {
        v91 = v90;
        v92 = 0;
      }

      else
      {
        v91 = malloc_type_calloc(0x400uLL, 1uLL, 0x2CD3BB1AuLL);
        CFStringGetCString(v87, v91, 1024, 0x8000100u);
        v92 = v91;
      }

      if (qword_100117E88)
      {
        v95 = qword_100117E88;
      }

      else
      {
        v95 = __stderrp;
      }

      fprintf(v95, "%s\n", v91);
      if (v92)
      {
        free(v92);
      }

      CFRelease(v87);
    }

    else
    {
      v93 = sub_100035B80(v88, v89);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1E90(v1, v93);
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

    *__error() = v376;
  }
}

void sub_10007068C(uint64_t a1)
{
  dispatch_group_leave(qword_100117ED0);
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void sub_1000706D0(id a1)
{
  if (byte_100117E80 == 1)
  {
    v1 = __error();
    v2 = *v1;
    v4 = sub_100035B80(v1, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Timed out, exiting", buf, 2u);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out, exiting");
    if (v7)
    {
      v11 = v7;
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      if (CStringPtr)
      {
        v13 = CStringPtr;
        v14 = 0;
      }

      else
      {
        v13 = malloc_type_calloc(0x400uLL, 1uLL, 0x63B76DDFuLL);
        CFStringGetCString(v11, v13, 1024, 0x8000100u);
        v14 = v13;
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v13);
      if (v14)
      {
        free(v14);
      }

      CFRelease(v11);
    }

    else
    {
      v9 = sub_100035B80(0, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *v16 = 0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Unable to format: Timed out, exiting", v16, 2u);
      }

      if (qword_100117E88)
      {
        v10 = qword_100117E88;
      }

      else
      {
        v10 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v10);
    }

    *__error() = v6;
  }

  exit(75);
}

void sub_1000708C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEvent:@"shutdown stall"];
  [v3 setEventNote:0];
  if (*(a1 + 32))
  {
    v4 = [NSString stringWithUTF8String:?];
    [v3 setSignature:v4];
  }

  else
  {
    [v3 setSignature:?];
  }

  if (*(a1 + 40))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v3 setReason:v5];
  }

  else
  {
    [v3 setReason:?];
  }

  if (*(a1 + 56))
  {
    v6 = [NSString stringWithFormat:@"sampling started after %d seconds", *(a1 + 56)];
    [v3 setDurationNote:v6];
  }

  else
  {
    [v3 setDurationNote:0];
  }

  [v3 setExtraDuration:*(a1 + 56)];
  [v3 setStepsNote:0];
  [v3 setSanitizePaths:0];
  [v3 setOmitThirdPartyProcessStacks:0];
  [v3 setIncludeBinaryFormatInReport:1];
  [v3 setIncludeTextualFormatInReport:0];
  v7 = objc_alloc_init(NSMutableString);
  v9 = sub_100034124(v7, v8);
  v10 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  v11 = proc_listallpids(v10, 4 * v9);
  if (v11 == -1)
  {
    if (byte_100117E80)
    {
      v25 = __error();
      v26 = *v25;
      v28 = sub_100035B80(v25, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2EB0();
      }

      *__error() = v26;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v29 = *__error();
      v30 = *__error();
      v31 = __error();
      v32 = strerror(*v31);
      v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get pid list: %d (%s)", v30, v32);
      if (v33)
      {
        v35 = v33;
        v36 = v7;
        CStringPtr = CFStringGetCStringPtr(v33, 0x8000100u);
        if (CStringPtr)
        {
          v38 = CStringPtr;
          v39 = 0;
        }

        else
        {
          v38 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD0E1A04uLL);
          CFStringGetCString(v35, v38, 1024, 0x8000100u);
          v39 = v38;
        }

        if (qword_100117E88)
        {
          v361 = qword_100117E88;
        }

        else
        {
          v361 = __stderrp;
        }

        fprintf(v361, "%s\n", v38);
        if (v39)
        {
          free(v39);
        }

        CFRelease(v35);
        v7 = v36;
      }

      else
      {
        v356 = sub_100035B80(0, v34);
        if (os_log_type_enabled(v356, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2F40();
        }

        if (qword_100117E88)
        {
          v357 = qword_100117E88;
        }

        else
        {
          v357 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v357);
      }

      *__error() = v29;
    }

    v362 = *__error();
    v363 = __error();
    [v7 appendFormat:@"Unable to get pid list for heap/ddt: %d %s\n", v362, strerror(*v363)];
  }

  else
  {
    v12 = v11;
    if (byte_100117E80)
    {
      v13 = __error();
      v14 = *v13;
      v16 = sub_100035B80(v13, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v472 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Running heap/ddt for all (%d) processes", buf, 8u);
      }

      *__error() = v14;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v17 = *__error();
      v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running heap/ddt for all (%d) processes", v12);
      if (v18)
      {
        v20 = v18;
        v21 = v7;
        v22 = CFStringGetCStringPtr(v18, 0x8000100u);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xF30317A3uLL);
          CFStringGetCString(v20, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100117E88)
        {
          v42 = qword_100117E88;
        }

        else
        {
          v42 = __stderrp;
        }

        fprintf(v42, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        CFRelease(v20);
        v7 = v21;
      }

      else
      {
        v40 = sub_100035B80(0, v19);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2CC4();
        }

        if (qword_100117E88)
        {
          v41 = qword_100117E88;
        }

        else
        {
          v41 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
      }

      *__error() = v17;
    }

    qsort_b(v10, v12, 4uLL, &stru_100109848);
    dsema = dispatch_semaphore_create(8);
    v43 = dispatch_group_create();
    v44 = *(a1 + 60);
    if (v44)
    {
      v45 = *(a1 + 48);
      if (v44 >= 11)
      {
        v45 = dispatch_time(v45, 1000000000 * (v44 - 10));
      }

      timeout = v45;
    }

    else
    {
      timeout = -1;
    }

    v428 = [[NSMutableArray alloc] initWithCapacity:2 * v12];
    if (v12 >= 1)
    {
      v46 = 0;
      v47 = v12;
      while (1)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v10[v46];
        if (v49 < 2 || v49 == getpid())
        {
          goto LABEL_130;
        }

        v50 = *(a1 + 60);
        if (v50)
        {
          v51 = *&qword_100117E78 + v50;
          if (v51 - CFAbsoluteTimeGetCurrent() < 10.0)
          {
LABEL_128:
            [NSString stringWithFormat:@"\nOut of time, skipping heap/ddt for %d\n", v10[v46]];
            goto LABEL_129;
          }
        }

        if (!sub_10002B3B0(v10[v46]))
        {
          [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v10[v46]];
          goto LABEL_129;
        }

        bzero(buf, 0x400uLL);
        if (proc_pidpath(v10[v46], buf, 0x400u) >= 1 && (strnstr(buf, "dext", 0x400uLL) || strnstr(buf, "/DriverExtensions/", 0x400uLL)))
        {
          [NSString stringWithFormat:@"[%d] is DriverKit, skipping heap/ddt\n", v10[v46]];
          v107 = LABEL_129:;
          [v428 addObject:v107];

          goto LABEL_130;
        }

        snprintf(__str, 8uLL, "%d", v10[v46]);
        if (qword_100117DF8 != -1)
        {
          sub_1000B2D34();
        }

        v52 = dsema;
        if (byte_100117DF0 == 1)
        {
          break;
        }

LABEL_127:
        if (dispatch_semaphore_wait(v52, timeout))
        {
          goto LABEL_128;
        }

        v108 = *(a1 + 60);
        if (v108)
        {
          v109 = *&qword_100117E78 + v108;
          if (v109 - CFAbsoluteTimeGetCurrent() < 10.0)
          {
            goto LABEL_145;
          }
        }

        if (!sub_10002B3B0(v10[v46]))
        {
          [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v10[v46]];
          v412 = a1;
          v126 = v12;
          v127 = v43;
          v129 = v128 = v52;
          [v428 addObject:v129];

          v125 = v128;
          v43 = v127;
          v12 = v126;
          a1 = v412;
          goto LABEL_148;
        }

        *v468 = "/usr/bin/heap";
        *&v468[8] = "--addresses=.*transaction.*";
        *&v468[16] = "--forkCorpseRetryTime=0";
        *&v469 = __str;
        *(&v469 + 1) = 0;
        v452 = -1;
        v451 = -1;
        v110 = SASpawnPlatformBinaryWithSigningIdentifier();
        group = v43;
        v407 = v7;
        if ((v110 & 0x80000000) == 0)
        {
          v385 = v110;
          if (byte_100117E80 == 1)
          {
            v111 = __error();
            v112 = *v111;
            v114 = sub_100035B80(v111, v113);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
            {
              v201 = v10[v46];
              *v466 = 136315394;
              *&v466[4] = buf;
              *&v466[12] = 1024;
              *&v466[14] = v201;
              _os_log_debug_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEBUG, "Running heap for %s [%d]", v466, 0x12u);
            }

            *__error() = v112;
          }

          v410 = v12;
          if (byte_100117E81 == 1 && dword_100117510 <= 0)
          {
            v115 = *__error();
            v116 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running heap for %s [%d]", buf, v10[v46], 0);
            if (v116)
            {
              v118 = v116;
              cfa = v115;
              v119 = CFStringGetCStringPtr(v116, 0x8000100u);
              if (v119)
              {
                v120 = v119;
                v121 = 0;
              }

              else
              {
                v120 = malloc_type_calloc(0x400uLL, 1uLL, 0x73A8159DuLL);
                CFStringGetCString(v118, v120, 1024, 0x8000100u);
                v121 = v120;
              }

              if (qword_100117E88)
              {
                v161 = qword_100117E88;
              }

              else
              {
                v161 = __stderrp;
              }

              fprintf(v161, "%s\n", v120);
              if (v121)
              {
                free(v121);
              }

              CFRelease(v118);
              v115 = cfa;
            }

            else
            {
              v159 = sub_100035B80(0, v117);
              if (os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
              {
                v224 = v10[v46];
                *v466 = 136315394;
                *&v466[4] = buf;
                *&v466[12] = 1024;
                *&v466[14] = v224;
                _os_log_fault_impl(&_mh_execute_header, v159, OS_LOG_TYPE_FAULT, "Unable to format: Running heap for %s [%d]", v466, 0x12u);
              }

              if (qword_100117E88)
              {
                v160 = qword_100117E88;
              }

              else
              {
                v160 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v160);
            }

            *__error() = v115;
          }

          dispatch_group_enter(v43);
          v162 = [[NSMutableString alloc] initWithFormat:@"\nheap output for %s [%d]\nheap --addresses=.*transaction.* --forkCorpseRetryTime=0 %d\n", basename(buf), v10[v46], v10[v46]];
          [v428 addObject:v162];
          v163 = v452;
          cfi = v451;
          v445[0] = _NSConcreteStackBlock;
          v445[1] = 3221225472;
          v445[2] = sub_100073DB4;
          v445[3] = &unk_100109870;
          v449 = v10;
          v450 = v46;
          v164 = v162;
          v446 = v164;
          v165 = v43;
          v166 = dsema;
          v447 = dsema;
          v448 = v165;
          sub_100058738(v385, v163, cfi, 0, 0, v164, v445);

          v12 = v410;
          goto LABEL_197;
        }

        if ((v10[v46] & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v147 = __error();
            v148 = *v147;
            v150 = sub_100035B80(v147, v149);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v418 = *__error();
              v235 = __error();
              v236 = strerror(*v235);
              *v466 = 67109378;
              *&v466[4] = v418;
              *&v466[8] = 2080;
              *&v466[10] = v236;
              _os_log_error_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "Unable to spawn heap: %d (%s)", v466, 0x12u);
            }

            *__error() = v148;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_196;
          }

          v413 = *__error();
          v151 = *__error();
          v152 = __error();
          v153 = strerror(*v152);
          v138 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn heap: %d (%s)", v151, v153, 0);
          if (v138)
          {
            goto LABEL_166;
          }

          v140 = sub_100035B80(0, v154);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
          {
            v307 = *__error();
            v308 = __error();
            v309 = strerror(*v308);
            *v466 = 67109378;
            *&v466[4] = v307;
            *&v466[8] = 2080;
            *&v466[10] = v309;
            v144 = v140;
            v145 = "Unable to format: Unable to spawn heap: %d (%s)";
            v146 = 18;
            goto LABEL_344;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v130 = __error();
            v131 = *v130;
            v133 = sub_100035B80(v130, v132);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v394 = sub_100035B20(v10[v46]);
              v416 = v10[v46];
              cfg = *__error();
              v222 = __error();
              v223 = strerror(*v222);
              *v466 = 136446978;
              *&v466[4] = v394;
              *&v466[12] = 1024;
              *&v466[14] = v416;
              *&v466[18] = 1024;
              *&v466[20] = cfg;
              LOWORD(v467[0]) = 2080;
              *(v467 + 2) = v223;
              _os_log_error_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn heap: %d (%s)", v466, 0x22u);
            }

            *__error() = v131;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_196;
          }

          v413 = *__error();
          v386 = sub_100035B20(v10[v46]);
          v134 = v10[v46];
          v135 = *__error();
          v136 = __error();
          v137 = strerror(*v136);
          v138 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn heap: %d (%s)", v386, v134, v135, v137);
          if (v138)
          {
LABEL_166:
            v155 = v138;
            v156 = CFStringGetCStringPtr(v138, 0x8000100u);
            v388 = v155;
            if (v156)
            {
              v157 = v156;
              v158 = 0;
            }

            else
            {
              v157 = malloc_type_calloc(0x400uLL, 1uLL, 0xCCCBD162uLL);
              CFStringGetCString(v155, v157, 1024, 0x8000100u);
              v158 = v157;
            }

            if (qword_100117E88)
            {
              v167 = qword_100117E88;
            }

            else
            {
              v167 = __stderrp;
            }

            fprintf(v167, "%s\n", v157);
            if (v158)
            {
              free(v158);
            }

            CFRelease(v388);
            goto LABEL_195;
          }

          v140 = sub_100035B80(0, v139);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
          {
            cfh = sub_100035B20(v10[v46]);
            v387 = v10[v46];
            v141 = *__error();
            v142 = __error();
            v143 = strerror(*v142);
            *v466 = 136315906;
            *&v466[4] = cfh;
            *&v466[12] = 1024;
            *&v466[14] = v387;
            *&v466[18] = 1024;
            *&v466[20] = v141;
            LOWORD(v467[0]) = 2080;
            *(v467 + 2) = v143;
            v144 = v140;
            v145 = "Unable to format: %s [%d]: Unable to spawn heap: %d (%s)";
            v146 = 34;
LABEL_344:
            _os_log_fault_impl(&_mh_execute_header, v144, OS_LOG_TYPE_FAULT, v145, v466, v146);
          }
        }

        if (qword_100117E88)
        {
          v168 = qword_100117E88;
        }

        else
        {
          v168 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v168);
LABEL_195:
        *__error() = v413;
LABEL_196:
        v169 = v10[v46];
        v170 = *__error();
        v171 = __error();
        v172 = [NSString stringWithFormat:@"Unable to spawn heap for %d: %d %s\n", v169, v170, strerror(*v171)];
        [v428 addObject:v172];

        v166 = dsema;
        dispatch_semaphore_signal(dsema);
LABEL_197:
        v7 = v407;
        if (dispatch_semaphore_wait(v166, timeout))
        {
          v173 = [NSString stringWithFormat:@"\nOut of time, skipping ddt for %d\n", v10[v46]];
          [v428 addObject:v173];
        }

        else
        {
          v174 = *(a1 + 60);
          if (v174 && (v175 = *&qword_100117E78 + v174, v175 - CFAbsoluteTimeGetCurrent() < 10.0))
          {
            [NSString stringWithFormat:@"\nOut of time, skipping ddt for %d\n", v10[v46]];
          }

          else
          {
            if (sub_10002B3B0(v10[v46]))
            {
              v463 = "/usr/local/bin/ddt";
              v464 = __str;
              v465 = 0;
              v444 = -1;
              v443 = -1;
              v176 = SASpawnPlatformBinaryWithSigningIdentifier();
              if ((v176 & 0x80000000) == 0)
              {
                v414 = v176;
                v43 = group;
                if (byte_100117E80 == 1)
                {
                  v177 = __error();
                  v178 = *v177;
                  v180 = sub_100035B80(v177, v179);
                  if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                  {
                    v242 = v10[v46];
                    *v466 = 136315394;
                    *&v466[4] = buf;
                    *&v466[12] = 1024;
                    *&v466[14] = v242;
                    _os_log_debug_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEBUG, "Running ddt for %s [%d]", v466, 0x12u);
                  }

                  *__error() = v178;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 0)
                {
                  v181 = *__error();
                  v182 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running ddt for %s [%d]", buf, v10[v46], 0);
                  if (v182)
                  {
                    v184 = v182;
                    cfb = v181;
                    v185 = CFStringGetCStringPtr(v182, 0x8000100u);
                    if (v185)
                    {
                      v186 = v185;
                      v389 = 0;
                    }

                    else
                    {
                      v186 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4BC0CAuLL);
                      CFStringGetCString(v184, v186, 1024, 0x8000100u);
                      v389 = v186;
                    }

                    if (qword_100117E88)
                    {
                      v218 = qword_100117E88;
                    }

                    else
                    {
                      v218 = __stderrp;
                    }

                    fprintf(v218, "%s\n", v186);
                    if (v389)
                    {
                      free(v389);
                    }

                    CFRelease(v184);
                    v181 = cfb;
                  }

                  else
                  {
                    v216 = sub_100035B80(0, v183);
                    if (os_log_type_enabled(v216, OS_LOG_TYPE_FAULT))
                    {
                      v317 = v10[v46];
                      *v466 = 136315394;
                      *&v466[4] = buf;
                      *&v466[12] = 1024;
                      *&v466[14] = v317;
                      _os_log_fault_impl(&_mh_execute_header, v216, OS_LOG_TYPE_FAULT, "Unable to format: Running ddt for %s [%d]", v466, 0x12u);
                    }

                    if (qword_100117E88)
                    {
                      v217 = qword_100117E88;
                    }

                    else
                    {
                      v217 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v217);
                  }

                  *__error() = v181;
                }

                dispatch_group_enter(group);
                v219 = [[NSMutableString alloc] initWithFormat:@"\nddt output for %s [%d]\nddt %d\n", basename(buf), v10[v46], v10[v46]];
                [v428 addObject:v219];
                v220 = v444;
                v393 = v443;
                v437[0] = _NSConcreteStackBlock;
                v437[1] = 3221225472;
                v437[2] = sub_10007426C;
                v437[3] = &unk_100109870;
                v441 = v10;
                v442 = v46;
                v221 = v219;
                v438 = v221;
                v439 = dsema;
                v440 = group;
                sub_100058738(v414, v220, v393, 0, 0, v221, v437);

LABEL_274:
                v459 = "/usr/bin/swift-inspect";
                v460 = "dump-concurrency";
                v461 = __str;
                v462 = 0;
                v436 = -1;
                v435 = -1;
                v248 = SASpawnPlatformBinaryWithSigningIdentifier();
                if ((v248 & 0x80000000) == 0)
                {
                  v420 = v248;
                  if (byte_100117E80 == 1)
                  {
                    v249 = __error();
                    v250 = *v249;
                    v252 = sub_100035B80(v249, v251);
                    if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
                    {
                      v301 = v10[v46];
                      *v466 = 136315394;
                      *&v466[4] = buf;
                      *&v466[12] = 1024;
                      *&v466[14] = v301;
                      _os_log_debug_impl(&_mh_execute_header, v252, OS_LOG_TYPE_DEBUG, "Running swift-inspect dump-concurrency for %s [%d]", v466, 0x12u);
                    }

                    *__error() = v250;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 0)
                  {
                    v253 = *__error();
                    v254 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running swift-inspect dump-concurrency for %s [%d]", buf, v10[v46], 0);
                    if (v254)
                    {
                      v256 = v254;
                      cfc = v253;
                      v257 = CFStringGetCStringPtr(v254, 0x8000100u);
                      if (v257)
                      {
                        v258 = v257;
                        v397 = 0;
                      }

                      else
                      {
                        v258 = malloc_type_calloc(0x400uLL, 1uLL, 0x32399560uLL);
                        CFStringGetCString(v256, v258, 1024, 0x8000100u);
                        v397 = v258;
                      }

                      if (qword_100117E88)
                      {
                        v287 = qword_100117E88;
                      }

                      else
                      {
                        v287 = __stderrp;
                      }

                      fprintf(v287, "%s\n", v258);
                      if (v397)
                      {
                        free(v397);
                      }

                      CFRelease(v256);
                      v253 = cfc;
                    }

                    else
                    {
                      v285 = sub_100035B80(0, v255);
                      if (os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
                      {
                        v318 = v10[v46];
                        *v466 = 136315394;
                        *&v466[4] = buf;
                        *&v466[12] = 1024;
                        *&v466[14] = v318;
                        _os_log_fault_impl(&_mh_execute_header, v285, OS_LOG_TYPE_FAULT, "Unable to format: Running swift-inspect dump-concurrency for %s [%d]", v466, 0x12u);
                      }

                      if (qword_100117E88)
                      {
                        v286 = qword_100117E88;
                      }

                      else
                      {
                        v286 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v286);
                    }

                    *__error() = v253;
                  }

                  dispatch_group_enter(v43);
                  v288 = [[NSMutableString alloc] initWithFormat:@"\nswift-inspect dump-concurrency output for %s [%d]\nswift-inspect dump-concurrency %d\n", basename(buf), v10[v46], v10[v46]];
                  [v428 addObject:v288];
                  v289 = v436;
                  v401 = v435;
                  v429[0] = _NSConcreteStackBlock;
                  v429[1] = 3221225472;
                  v429[2] = sub_100074724;
                  v429[3] = &unk_100109870;
                  v433 = v10;
                  v434 = v46;
                  v290 = v288;
                  v430 = v290;
                  v431 = dsema;
                  v432 = v43;
                  sub_100058738(v420, v289, v401, 0, 0, v290, v429);

                  goto LABEL_342;
                }

                if ((v10[v46] & 0x80000000) != 0)
                {
                  if (byte_100117E80)
                  {
                    v272 = __error();
                    v273 = *v272;
                    v275 = sub_100035B80(v272, v274);
                    if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
                    {
                      v425 = *__error();
                      v321 = __error();
                      v322 = strerror(*v321);
                      *v466 = 67109378;
                      *&v466[4] = v425;
                      *&v466[8] = 2080;
                      *&v466[10] = v322;
                      _os_log_error_impl(&_mh_execute_header, v275, OS_LOG_TYPE_ERROR, "Unable to spawn swift-inspect: %d (%s)", v466, 0x12u);
                    }

                    *__error() = v273;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v421 = *__error();
                    v276 = *__error();
                    v277 = __error();
                    v278 = strerror(*v277);
                    v279 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn swift-inspect: %d (%s)", v276, v278, 0);
                    if (v279)
                    {
                      v281 = v279;
                      v282 = CFStringGetCStringPtr(v279, 0x8000100u);
                      v400 = v281;
                      if (v282)
                      {
                        v283 = v282;
                        v284 = 0;
                      }

                      else
                      {
                        v283 = malloc_type_calloc(0x400uLL, 1uLL, 0x61084FFEuLL);
                        CFStringGetCString(v281, v283, 1024, 0x8000100u);
                        v284 = v283;
                      }

                      if (qword_100117E88)
                      {
                        v302 = qword_100117E88;
                      }

                      else
                      {
                        v302 = __stderrp;
                      }

                      fprintf(v302, "%s\n", v283);
                      if (v284)
                      {
                        free(v284);
                      }

                      v299 = v400;
LABEL_339:
                      CFRelease(v299);
                    }

                    else
                    {
                      v291 = sub_100035B80(0, v280);
                      if (os_log_type_enabled(v291, OS_LOG_TYPE_FAULT))
                      {
                        v326 = *__error();
                        v327 = __error();
                        v328 = strerror(*v327);
                        *v466 = 67109378;
                        *&v466[4] = v326;
                        *&v466[8] = 2080;
                        *&v466[10] = v328;
                        v295 = v291;
                        v296 = "Unable to format: Unable to spawn swift-inspect: %d (%s)";
                        v297 = 18;
LABEL_350:
                        _os_log_fault_impl(&_mh_execute_header, v295, OS_LOG_TYPE_FAULT, v296, v466, v297);
                      }

LABEL_328:

                      if (qword_100117E88)
                      {
                        v300 = qword_100117E88;
                      }

                      else
                      {
                        v300 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v300);
                    }

                    *__error() = v421;
                  }
                }

                else
                {
                  if (byte_100117E80)
                  {
                    v259 = __error();
                    v260 = *v259;
                    v262 = sub_100035B80(v259, v261);
                    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
                    {
                      v404 = sub_100035B20(v10[v46]);
                      v423 = v10[v46];
                      cfl = *__error();
                      v315 = __error();
                      v316 = strerror(*v315);
                      *v466 = 136446978;
                      *&v466[4] = v404;
                      *&v466[12] = 1024;
                      *&v466[14] = v423;
                      *&v466[18] = 1024;
                      *&v466[20] = cfl;
                      LOWORD(v467[0]) = 2080;
                      *(v467 + 2) = v316;
                      _os_log_error_impl(&_mh_execute_header, v262, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn swift-inspect: %d (%s)", v466, 0x22u);
                    }

                    *__error() = v260;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v421 = *__error();
                    v398 = sub_100035B20(v10[v46]);
                    v263 = v10[v46];
                    v264 = *__error();
                    v265 = __error();
                    v266 = strerror(*v265);
                    v267 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn swift-inspect: %d (%s)", v398, v263, v264, v266);
                    if (v267)
                    {
                      v269 = v267;
                      v270 = CFStringGetCStringPtr(v267, 0x8000100u);
                      if (v270)
                      {
                        v271 = v270;
                        v399 = 0;
                      }

                      else
                      {
                        v271 = malloc_type_calloc(0x400uLL, 1uLL, 0x61084FFEuLL);
                        CFStringGetCString(v269, v271, 1024, 0x8000100u);
                        v399 = v271;
                      }

                      if (qword_100117E88)
                      {
                        v298 = qword_100117E88;
                      }

                      else
                      {
                        v298 = __stderrp;
                      }

                      fprintf(v298, "%s\n", v271);
                      if (v399)
                      {
                        free(v399);
                      }

                      v299 = v269;
                      goto LABEL_339;
                    }

                    v291 = sub_100035B80(0, v268);
                    if (os_log_type_enabled(v291, OS_LOG_TYPE_FAULT))
                    {
                      cfm = sub_100035B20(v10[v46]);
                      v402 = v10[v46];
                      v292 = *__error();
                      v293 = __error();
                      v294 = strerror(*v293);
                      *v466 = 136315906;
                      *&v466[4] = cfm;
                      *&v466[12] = 1024;
                      *&v466[14] = v402;
                      *&v466[18] = 1024;
                      *&v466[20] = v292;
                      LOWORD(v467[0]) = 2080;
                      *(v467 + 2) = v294;
                      v295 = v291;
                      v296 = "Unable to format: %s [%d]: Unable to spawn swift-inspect: %d (%s)";
                      v297 = 34;
                      goto LABEL_350;
                    }

                    goto LABEL_328;
                  }
                }

                v303 = v10[v46];
                v304 = *__error();
                v305 = __error();
                v306 = [NSString stringWithFormat:@"Unable to spawn swift-inspect for %d: %d %s\n", v303, v304, strerror(*v305)];
                [v428 addObject:v306];

                dispatch_semaphore_signal(dsema);
LABEL_342:
                v7 = v407;
                goto LABEL_130;
              }

              if ((v10[v46] & 0x80000000) != 0)
              {
                v43 = group;
                if (byte_100117E80)
                {
                  v202 = __error();
                  v203 = *v202;
                  v205 = sub_100035B80(v202, v204);
                  if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                  {
                    v424 = *__error();
                    v319 = __error();
                    v320 = strerror(*v319);
                    *v466 = 67109378;
                    *&v466[4] = v424;
                    *&v466[8] = 2080;
                    *&v466[10] = v320;
                    _os_log_error_impl(&_mh_execute_header, v205, OS_LOG_TYPE_ERROR, "Unable to spawn ddt: %d (%s)", v466, 0x12u);
                  }

                  *__error() = v203;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v415 = *__error();
                  v206 = *__error();
                  v207 = __error();
                  v208 = strerror(*v207);
                  v209 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn ddt: %d (%s)", v206, v208, 0);
                  if (v209)
                  {
                    v211 = v209;
                    v212 = CFStringGetCStringPtr(v209, 0x8000100u);
                    v392 = v211;
                    if (v212)
                    {
                      v213 = v212;
                      v214 = 0;
                    }

                    else
                    {
                      v213 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E280EC6uLL);
                      CFStringGetCString(v211, v213, 1024, 0x8000100u);
                      v214 = v213;
                    }

                    if (qword_100117E88)
                    {
                      v243 = qword_100117E88;
                    }

                    else
                    {
                      v243 = __stderrp;
                    }

                    fprintf(v243, "%s\n", v213);
                    if (v214)
                    {
                      free(v214);
                    }

                    v240 = v392;
LABEL_271:
                    CFRelease(v240);
                  }

                  else
                  {
                    v228 = sub_100035B80(0, v210);
                    if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
                    {
                      v323 = *__error();
                      v324 = __error();
                      v325 = strerror(*v324);
                      *v466 = 67109378;
                      *&v466[4] = v323;
                      *&v466[8] = 2080;
                      *&v466[10] = v325;
                      v232 = v228;
                      v233 = "Unable to format: Unable to spawn ddt: %d (%s)";
                      v234 = 18;
LABEL_348:
                      _os_log_fault_impl(&_mh_execute_header, v232, OS_LOG_TYPE_FAULT, v233, v466, v234);
                    }

LABEL_260:

                    if (qword_100117E88)
                    {
                      v241 = qword_100117E88;
                    }

                    else
                    {
                      v241 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v241);
                  }

                  *__error() = v415;
                }
              }

              else
              {
                v43 = group;
                if (byte_100117E80)
                {
                  v188 = __error();
                  v189 = *v188;
                  v191 = sub_100035B80(v188, v190);
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                  {
                    v403 = sub_100035B20(v10[v46]);
                    v422 = v10[v46];
                    cfj = *__error();
                    v313 = __error();
                    v314 = strerror(*v313);
                    *v466 = 136446978;
                    *&v466[4] = v403;
                    *&v466[12] = 1024;
                    *&v466[14] = v422;
                    *&v466[18] = 1024;
                    *&v466[20] = cfj;
                    LOWORD(v467[0]) = 2080;
                    *(v467 + 2) = v314;
                    _os_log_error_impl(&_mh_execute_header, v191, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn ddt: %d (%s)", v466, 0x22u);
                  }

                  *__error() = v189;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v415 = *__error();
                  v390 = sub_100035B20(v10[v46]);
                  v192 = v10[v46];
                  v193 = *__error();
                  v194 = __error();
                  v195 = strerror(*v194);
                  v196 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn ddt: %d (%s)", v390, v192, v193, v195);
                  if (v196)
                  {
                    v198 = v196;
                    v199 = CFStringGetCStringPtr(v196, 0x8000100u);
                    if (v199)
                    {
                      v200 = v199;
                      v391 = 0;
                    }

                    else
                    {
                      v200 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E280EC6uLL);
                      CFStringGetCString(v198, v200, 1024, 0x8000100u);
                      v391 = v200;
                    }

                    if (qword_100117E88)
                    {
                      v239 = qword_100117E88;
                    }

                    else
                    {
                      v239 = __stderrp;
                    }

                    fprintf(v239, "%s\n", v200);
                    if (v391)
                    {
                      free(v391);
                    }

                    v240 = v198;
                    goto LABEL_271;
                  }

                  v228 = sub_100035B80(0, v197);
                  if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
                  {
                    cfk = sub_100035B20(v10[v46]);
                    v396 = v10[v46];
                    v229 = *__error();
                    v230 = __error();
                    v231 = strerror(*v230);
                    *v466 = 136315906;
                    *&v466[4] = cfk;
                    *&v466[12] = 1024;
                    *&v466[14] = v396;
                    *&v466[18] = 1024;
                    *&v466[20] = v229;
                    LOWORD(v467[0]) = 2080;
                    *(v467 + 2) = v231;
                    v232 = v228;
                    v233 = "Unable to format: %s [%d]: Unable to spawn ddt: %d (%s)";
                    v234 = 34;
                    goto LABEL_348;
                  }

                  goto LABEL_260;
                }
              }

              v244 = v10[v46];
              v245 = *__error();
              v246 = __error();
              v247 = [NSString stringWithFormat:@"Unable to spawn ddt for %d: %d %s\n", v244, v245, strerror(*v246)];
              [v428 addObject:v247];

              dispatch_semaphore_signal(dsema);
              goto LABEL_274;
            }

            [NSString stringWithFormat:@"[%d] has exited, cannot take ddt\n", v10[v46]];
          }
          v187 = ;
          [v428 addObject:v187];

          dispatch_semaphore_signal(v166);
        }

        v43 = group;
LABEL_130:
        objc_autoreleasePoolPop(v48);
        if (v47 == ++v46)
        {
          goto LABEL_351;
        }
      }

      if (dispatch_semaphore_wait(dsema, timeout))
      {
        goto LABEL_128;
      }

      v53 = *(a1 + 60);
      if (v53)
      {
        v54 = *&qword_100117E78 + v53;
        if (v54 - CFAbsoluteTimeGetCurrent() < 10.0)
        {
LABEL_145:
          [NSString stringWithFormat:@"\nOut of time, skipping heap/ddt for %d\n", v10[v46]];
          goto LABEL_146;
        }
      }

      if (!sub_10002B3B0(v10[v46]))
      {
        [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v10[v46]];
LABEL_146:
        v411 = v12;
        v122 = v43;
        v124 = v123 = v52;
        [v428 addObject:v124];

        v125 = v123;
        v43 = v122;
        v12 = v411;
LABEL_148:
        dispatch_semaphore_signal(v125);
        goto LABEL_130;
      }

      *v466 = "/usr/bin/leaks";
      *&v466[8] = "--outputGraph=/var/tmp/";
      *&v466[16] = __str;
      v467[0] = 0;
      LODWORD(v459) = -1;
      LODWORD(v463) = -1;
      v55 = SASpawnPlatformBinaryWithSigningIdentifier();
      v406 = v7;
      if ((v55 & 0x80000000) == 0)
      {
        v408 = v55;
        if (byte_100117E80 == 1)
        {
          v56 = __error();
          v57 = *v56;
          v59 = sub_100035B80(v56, v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v215 = v10[v46];
            *v468 = 136315394;
            *&v468[4] = buf;
            *&v468[12] = 1024;
            *&v468[14] = v215;
            _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Running leaks for %s [%d]", v468, 0x12u);
          }

          *__error() = v57;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 0)
        {
          v60 = *__error();
          v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running leaks for %s [%d]", buf, v10[v46], 0);
          if (v61)
          {
            v380 = v60;
            v63 = v61;
            v64 = CFStringGetCStringPtr(v61, 0x8000100u);
            cf = v63;
            if (v64)
            {
              v65 = v64;
              v66 = 0;
            }

            else
            {
              v65 = malloc_type_calloc(0x400uLL, 1uLL, 0xB5895E43uLL);
              CFStringGetCString(v63, v65, 1024, 0x8000100u);
              v66 = v65;
            }

            if (qword_100117E88)
            {
              v98 = qword_100117E88;
            }

            else
            {
              v98 = __stderrp;
            }

            fprintf(v98, "%s\n", v65);
            if (v66)
            {
              free(v66);
            }

            CFRelease(cf);
            v60 = v380;
          }

          else
          {
            v96 = sub_100035B80(0, v62);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
            {
              v227 = v10[v46];
              *v468 = 136315394;
              *&v468[4] = buf;
              *&v468[12] = 1024;
              *&v468[14] = v227;
              _os_log_fault_impl(&_mh_execute_header, v96, OS_LOG_TYPE_FAULT, "Unable to format: Running leaks for %s [%d]", v468, 0x12u);
            }

            if (qword_100117E88)
            {
              v97 = qword_100117E88;
            }

            else
            {
              v97 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v97);
          }

          *__error() = v60;
        }

        dispatch_group_enter(v43);
        v99 = [[NSMutableString alloc] initWithFormat:@"\nGenerating memgraph for %s [%d]\nleaks --outputGraph=/var/tmp/ %d\n", basename(buf), v10[v46], v10[v46]];
        [v428 addObject:v99];
        v384 = v459;
        cff = v463;
        v453[0] = _NSConcreteStackBlock;
        v453[1] = 3221225472;
        v453[2] = sub_1000738FC;
        v453[3] = &unk_100109870;
        v457 = v10;
        v458 = v46;
        v100 = v99;
        v454 = v100;
        v455 = dsema;
        v456 = v43;
        sub_100058738(v408, v384, cff, 0, 0, v100, v453);

        v52 = dsema;
        goto LABEL_126;
      }

      if ((v10[v46] & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v84 = __error();
          v85 = *v84;
          v87 = sub_100035B80(v84, v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v419 = *__error();
            v237 = __error();
            v238 = strerror(*v237);
            *v468 = 67109378;
            *&v468[4] = v419;
            *&v468[8] = 2080;
            *&v468[10] = v238;
            _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Unable to spawn leaks: %d (%s)", v468, 0x12u);
          }

          *__error() = v85;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_125;
        }

        v409 = *__error();
        v88 = *__error();
        v89 = __error();
        v90 = strerror(*v89);
        v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn leaks: %d (%s)", v88, v90, 0);
        if (!v75)
        {
          v77 = sub_100035B80(0, v91);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            v310 = *__error();
            v311 = __error();
            v312 = strerror(*v311);
            *v468 = 67109378;
            *&v468[4] = v310;
            *&v468[8] = 2080;
            *&v468[10] = v312;
            v81 = v77;
            v82 = "Unable to format: Unable to spawn leaks: %d (%s)";
            v83 = 18;
            goto LABEL_346;
          }

LABEL_120:

          if (qword_100117E88)
          {
            v102 = qword_100117E88;
          }

          else
          {
            v102 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v102);
LABEL_124:
          *__error() = v409;
LABEL_125:
          v103 = v10[v46];
          v104 = *__error();
          v105 = __error();
          v106 = [NSString stringWithFormat:@"Unable to spawn leaks for %d: %d %s\n", v103, v104, strerror(*v105)];
          [v428 addObject:v106];

          v52 = dsema;
          dispatch_semaphore_signal(dsema);
LABEL_126:
          v7 = v406;
          goto LABEL_127;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v67 = __error();
          v68 = *v67;
          v70 = sub_100035B80(v67, v69);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v395 = sub_100035B20(v10[v46]);
            v417 = v10[v46];
            cfd = *__error();
            v225 = __error();
            v226 = strerror(*v225);
            *v468 = 136446978;
            *&v468[4] = v395;
            *&v468[12] = 1024;
            *&v468[14] = v417;
            *&v468[18] = 1024;
            *&v468[20] = cfd;
            LOWORD(v469) = 2080;
            *(&v469 + 2) = v226;
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn leaks: %d (%s)", v468, 0x22u);
          }

          *__error() = v68;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_125;
        }

        v409 = *__error();
        v381 = sub_100035B20(v10[v46]);
        v71 = v10[v46];
        v72 = *__error();
        v73 = __error();
        v74 = strerror(*v73);
        v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn leaks: %d (%s)", v381, v71, v72, v74);
        if (!v75)
        {
          v77 = sub_100035B80(0, v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            cfe = sub_100035B20(v10[v46]);
            v382 = v10[v46];
            v78 = *__error();
            v79 = __error();
            v80 = strerror(*v79);
            *v468 = 136315906;
            *&v468[4] = cfe;
            *&v468[12] = 1024;
            *&v468[14] = v382;
            *&v468[18] = 1024;
            *&v468[20] = v78;
            LOWORD(v469) = 2080;
            *(&v469 + 2) = v80;
            v81 = v77;
            v82 = "Unable to format: %s [%d]: Unable to spawn leaks: %d (%s)";
            v83 = 34;
LABEL_346:
            _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, v82, v468, v83);
            goto LABEL_120;
          }

          goto LABEL_120;
        }
      }

      v92 = v75;
      v93 = CFStringGetCStringPtr(v75, 0x8000100u);
      v383 = v92;
      if (v93)
      {
        v94 = v93;
        v95 = 0;
      }

      else
      {
        v94 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAE77201uLL);
        CFStringGetCString(v92, v94, 1024, 0x8000100u);
        v95 = v94;
      }

      if (qword_100117E88)
      {
        v101 = qword_100117E88;
      }

      else
      {
        v101 = __stderrp;
      }

      fprintf(v101, "%s\n", v94);
      if (v95)
      {
        free(v95);
      }

      CFRelease(v383);
      goto LABEL_124;
    }

LABEL_351:
    if (dispatch_group_wait(v43, timeout))
    {
      if (byte_100117E80)
      {
        v329 = __error();
        v330 = *v329;
        v332 = sub_100035B80(v329, v331);
        if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2D5C();
        }

        *__error() = v330;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v334 = *__error();
        v335 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out running heap/ddt for all (%d) processes", v12);
        if (v335)
        {
          v337 = v335;
          v338 = CFStringGetCStringPtr(v335, 0x8000100u);
          if (v338)
          {
            v339 = v338;
            v340 = 0;
          }

          else
          {
            v339 = malloc_type_calloc(0x400uLL, 1uLL, 0x84E3AA13uLL);
            CFStringGetCString(v337, v339, 1024, 0x8000100u);
            v340 = v339;
          }

          if (qword_100117E88)
          {
            v358 = qword_100117E88;
          }

          else
          {
            v358 = __stderrp;
          }

          fprintf(v358, "%s\n", v339);
          if (v340)
          {
            free(v340);
          }

          CFRelease(v337);
        }

        else
        {
          v354 = sub_100035B80(0, v336);
          if (os_log_type_enabled(v354, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2DD0();
          }

          if (qword_100117E88)
          {
            v355 = qword_100117E88;
          }

          else
          {
            v355 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v355);
        }

        *__error() = v334;
      }

      [v7 appendFormat:@"Timed out waiting for heap/ddt, last %d heap/ddt invocations may be truncated\n", 8];
    }

    else
    {
      if (byte_100117E80)
      {
        v341 = v7;
        v342 = __error();
        v343 = *v342;
        v345 = sub_100035B80(v342, v344);
        if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v472 = v12;
          _os_log_impl(&_mh_execute_header, v345, OS_LOG_TYPE_INFO, "Done running heap/ddt for all (%d) processes", buf, 8u);
        }

        *__error() = v343;
        v7 = v341;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v347 = *__error();
        v348 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Done running heap/ddt for all (%d) processes", v12);
        if (v348)
        {
          v350 = v348;
          v351 = CFStringGetCStringPtr(v348, 0x8000100u);
          if (v351)
          {
            v352 = v351;
            v353 = 0;
          }

          else
          {
            v352 = malloc_type_calloc(0x400uLL, 1uLL, 0xFEDB4E3AuLL);
            CFStringGetCString(v350, v352, 1024, 0x8000100u);
            v353 = v352;
          }

          if (qword_100117E88)
          {
            v364 = qword_100117E88;
          }

          else
          {
            v364 = __stderrp;
          }

          fprintf(v364, "%s\n", v352);
          if (v353)
          {
            free(v353);
          }

          CFRelease(v350);
        }

        else
        {
          v359 = sub_100035B80(0, v349);
          if (os_log_type_enabled(v359, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2E40();
          }

          if (qword_100117E88)
          {
            v360 = qword_100117E88;
          }

          else
          {
            v360 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v360);
        }

        *__error() = v347;
      }
    }

    v365 = [v428 componentsJoinedByString:&stru_10010D958];
    [v7 appendString:v365];
  }

  [v3 setCustomOutput:v7];

  [v3 performSamplePrinterWork:&stru_1001098B0];
}

void sub_1000738FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v15 = __error();
        v16 = *v15;
        v18 = sub_100035B80(v15, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2FD0();
        }

        *__error() = v16;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from leaks for %d", *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3040();
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = __error();
        v6 = *v5;
        v8 = sub_100035B80(v5, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000B30B0();
        }

        *__error() = v6;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v11 = sub_100035B20(*(*v3 + 4 * *v4));
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from leaks for %d", v11, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3138();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
LABEL_40:
        *__error() = v10;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from leaks for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v21 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v23 = CStringPtr;
      v24 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x2C573E85uLL);
      CFStringGetCString(v21, v23, 1024, 0x8000100u);
      v24 = v23;
    }

    if (qword_100117E88)
    {
      v25 = qword_100117E88;
    }

    else
    {
      v25 = __stderrp;
    }

    fprintf(v25, "%s\n", v23);
    if (v24)
    {
      free(v24);
    }

    CFRelease(v21);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v27 = __error();
    v28 = *v27;
    v30 = sub_100035B80(v27, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B31C0();
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v32 = *__error();
    v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"leaks for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v33)
    {
      v35 = v33;
      v36 = CFStringGetCStringPtr(v33, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0xDD8CF07AuLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100117E88)
      {
        v41 = qword_100117E88;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      CFRelease(v35);
    }

    else
    {
      v39 = sub_100035B80(0, v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3230();
      }

      if (qword_100117E88)
      {
        v40 = qword_100117E88;
      }

      else
      {
        v40 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    }

    *__error() = v32;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100073DB4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v15 = __error();
        v16 = *v15;
        v18 = sub_100035B80(v15, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000B32A0();
        }

        *__error() = v16;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from heap for %d", *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3310();
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = __error();
        v6 = *v5;
        v8 = sub_100035B80(v5, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3380();
        }

        *__error() = v6;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v11 = sub_100035B20(*(*v3 + 4 * *v4));
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from heap for %d", v11, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3408();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
LABEL_40:
        *__error() = v10;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from heap for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v21 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v23 = CStringPtr;
      v24 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x5E63EEEFuLL);
      CFStringGetCString(v21, v23, 1024, 0x8000100u);
      v24 = v23;
    }

    if (qword_100117E88)
    {
      v25 = qword_100117E88;
    }

    else
    {
      v25 = __stderrp;
    }

    fprintf(v25, "%s\n", v23);
    if (v24)
    {
      free(v24);
    }

    CFRelease(v21);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v27 = __error();
    v28 = *v27;
    v30 = sub_100035B80(v27, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3490();
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v32 = *__error();
    v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"heap for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v33)
    {
      v35 = v33;
      v36 = CFStringGetCStringPtr(v33, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0x7B2AEA9BuLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100117E88)
      {
        v41 = qword_100117E88;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      CFRelease(v35);
    }

    else
    {
      v39 = sub_100035B80(0, v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3500();
      }

      if (qword_100117E88)
      {
        v40 = qword_100117E88;
      }

      else
      {
        v40 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    }

    *__error() = v32;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_10007426C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v15 = __error();
        v16 = *v15;
        v18 = sub_100035B80(v15, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3570();
        }

        *__error() = v16;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from ddt for %d", *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B35E0();
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = __error();
        v6 = *v5;
        v8 = sub_100035B80(v5, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3650();
        }

        *__error() = v6;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v11 = sub_100035B20(*(*v3 + 4 * *v4));
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from ddt for %d", v11, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B36D8();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
LABEL_40:
        *__error() = v10;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from ddt for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v21 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v23 = CStringPtr;
      v24 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3083BD2uLL);
      CFStringGetCString(v21, v23, 1024, 0x8000100u);
      v24 = v23;
    }

    if (qword_100117E88)
    {
      v25 = qword_100117E88;
    }

    else
    {
      v25 = __stderrp;
    }

    fprintf(v25, "%s\n", v23);
    if (v24)
    {
      free(v24);
    }

    CFRelease(v21);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v27 = __error();
    v28 = *v27;
    v30 = sub_100035B80(v27, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3760();
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v32 = *__error();
    v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ddt for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v33)
    {
      v35 = v33;
      v36 = CFStringGetCStringPtr(v33, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF12CBCDuLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100117E88)
      {
        v41 = qword_100117E88;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      CFRelease(v35);
    }

    else
    {
      v39 = sub_100035B80(0, v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000B37D0();
      }

      if (qword_100117E88)
      {
        v40 = qword_100117E88;
      }

      else
      {
        v40 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    }

    *__error() = v32;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100074724(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v15 = __error();
        v16 = *v15;
        v18 = sub_100035B80(v15, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3840();
        }

        *__error() = v16;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from swift-inspect dump-concurrency for %d", *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B38B0();
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = __error();
        v6 = *v5;
        v8 = sub_100035B80(v5, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3920();
        }

        *__error() = v6;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v10 = *__error();
      v11 = sub_100035B20(*(*v3 + 4 * *v4));
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from swift-inspect dump-concurrency for %d", v11, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v12)
      {
        v14 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B39A8();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
LABEL_40:
        *__error() = v10;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from swift-inspect dump-concurrency for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v21 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v23 = CStringPtr;
      v24 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x213DFF46uLL);
      CFStringGetCString(v21, v23, 1024, 0x8000100u);
      v24 = v23;
    }

    if (qword_100117E88)
    {
      v25 = qword_100117E88;
    }

    else
    {
      v25 = __stderrp;
    }

    fprintf(v25, "%s\n", v23);
    if (v24)
    {
      free(v24);
    }

    CFRelease(v21);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v27 = __error();
    v28 = *v27;
    v30 = sub_100035B80(v27, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3A30();
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v32 = *__error();
    v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"swift-inspect dump-concurrency for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v33)
    {
      v35 = v33;
      v36 = CFStringGetCStringPtr(v33, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0xC80695B8uLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100117E88)
      {
        v41 = qword_100117E88;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      CFRelease(v35);
    }

    else
    {
      v39 = sub_100035B80(0, v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3AA0();
      }

      if (qword_100117E88)
      {
        v40 = qword_100117E88;
      }

      else
      {
        v40 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    }

    *__error() = v32;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100074BDC(id a1, SASamplePrinter *a2)
{
  if (sub_100060FCC(a2, 0, 0, 4, 0, 0, 0.0, 0.0, 0, 0, 0, 0))
  {
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saved shutdown report", buf, 2u);
      }

      *__error() = v3;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v7 = *__error();
      v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saved shutdown report");
      if (v8)
      {
        v22 = v8;
        CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
        if (CStringPtr)
        {
          v24 = CStringPtr;
          v25 = 0;
        }

        else
        {
          v24 = malloc_type_calloc(0x400uLL, 1uLL, 0xC5A96C20uLL);
          CFStringGetCString(v22, v24, 1024, 0x8000100u);
          v25 = v24;
        }

        if (qword_100117E88)
        {
          v30 = qword_100117E88;
        }

        else
        {
          v30 = __stderrp;
        }

        fprintf(v30, "%s\n", v24);
        if (v25)
        {
          free(v25);
        }

        CFRelease(v22);
      }

      else
      {
        v10 = sub_100035B80(0, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v32 = 0;
          _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Unable to format: Saved shutdown report", v32, 2u);
        }

        if (qword_100117E88)
        {
          v11 = qword_100117E88;
        }

        else
        {
          v11 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
      }

      *__error() = v7;
    }

    exit(0);
  }

  if (byte_100117E80)
  {
    v12 = __error();
    v13 = *v12;
    v15 = sub_100035B80(v12, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to save shutdown report", v35, 2u);
    }

    *__error() = v13;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v17 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to save shutdown report");
    if (v18)
    {
      v26 = v18;
      v27 = CFStringGetCStringPtr(v18, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x2FE9A1D5uLL);
        CFStringGetCString(v26, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

      CFRelease(v26);
    }

    else
    {
      v20 = sub_100035B80(0, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *v34 = 0;
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Unable to format: Failed to save shutdown report", v34, 2u);
      }

      if (qword_100117E88)
      {
        v21 = qword_100117E88;
      }

      else
      {
        v21 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v21);
    }

    *__error() = v17;
  }

  exit(69);
}

void sub_100074FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  SAMachAbsTimeSecondsGetCurrent();
  v5 = v4;
  v6 = +[SPSampledProcess allSampledProcesses];
  if (byte_100117DB0)
  {
    v7 = v5 - *&qword_100117DA8;
    if (v5 - *&qword_100117DA8 > 1.0)
    {
      if (byte_100117E80)
      {
        v77 = __error();
        v78 = *v77;
        v80 = sub_100035B80(v77, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v99 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Interrupted again by signal %ld, exiting", buf, 0xCu);
        }

        *__error() = v78;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v82 = *__error();
        handle = dispatch_source_get_handle(v3);
        v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted again by signal %ld, exiting", handle);
        if (v84)
        {
          v88 = v84;
          CStringPtr = CFStringGetCStringPtr(v84, 0x8000100u);
          if (CStringPtr)
          {
            v90 = CStringPtr;
            v91 = 0;
          }

          else
          {
            v90 = malloc_type_calloc(0x400uLL, 1uLL, 0x45DBB5F0uLL);
            CFStringGetCString(v88, v90, 1024, 0x8000100u);
            v91 = v90;
          }

          if (qword_100117E88)
          {
            v92 = qword_100117E88;
          }

          else
          {
            v92 = __stderrp;
          }

          fprintf(v92, "%s\n", v90);
          if (v91)
          {
            free(v91);
          }

          CFRelease(v88);
        }

        else
        {
          v86 = sub_100035B80(0, v85);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            sub_1000B3D48(v3);
          }

          if (qword_100117E88)
          {
            v87 = qword_100117E88;
          }

          else
          {
            v87 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v87);
        }

        *__error() = v82;
      }

      exit(75);
    }

    if (byte_100117E80)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v99 = v5 - *&qword_100117DA8;
        v100 = 2048;
        v101 = dispatch_source_get_handle(v3);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Interrupted again after %.2f seconds by signal %ld, not exiting", buf, 0x16u);
      }

      *__error() = v9;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v13 = *__error();
      v14 = v5 - *&qword_100117DA8;
      v15 = dispatch_source_get_handle(v3);
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted again after %.2f seconds by signal %ld, not exiting", *&v14, v15);
      if (v16)
      {
        v18 = v16;
        v19 = CFStringGetCStringPtr(v16, 0x8000100u);
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x6AB5869EuLL);
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
          sub_1000B3B10(v3);
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

      *__error() = v13;
    }
  }

  else
  {
    qword_100117DA8 = *&v5;
    byte_100117DB0 = 1;
  }

  if (![v6 count])
  {
    if (byte_100117E80 == 1)
    {
      v42 = __error();
      v43 = *v42;
      v45 = sub_100035B80(v42, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
        *buf = 134217984;
        v99 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld while saving report. Interrupt again after a second to exit early", buf, 0xCu);
      }

      *__error() = v43;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_100;
    }

    v48 = *__error();
    v49 = dispatch_source_get_handle(v3);
    v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld while saving report. Interrupt again after a second to exit early", v49);
    if (v50)
    {
      v52 = v50;
      v53 = CFStringGetCStringPtr(v50, 0x8000100u);
      if (v53)
      {
LABEL_67:
        v64 = v53;
        v65 = 0;
LABEL_93:
        if (qword_100117E88)
        {
          v71 = qword_100117E88;
        }

        else
        {
          v71 = __stderrp;
        }

        fprintf(v71, "%s\n", v64);
        if (v65)
        {
          free(v65);
        }

        CFRelease(v52);
        goto LABEL_99;
      }

      v54 = 3410373351;
LABEL_92:
      v64 = malloc_type_calloc(0x400uLL, 1uLL, v54);
      CFStringGetCString(v52, v64, 1024, 0x8000100u);
      v65 = v64;
      goto LABEL_93;
    }

    v68 = sub_100035B80(0, v51);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3CC8(v3);
    }

LABEL_87:

    if (qword_100117E88)
    {
      v70 = qword_100117E88;
    }

    else
    {
      v70 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v70);
LABEL_99:
    *__error() = v48;
    goto LABEL_100;
  }

  v26 = *(a1 + 32);
  v25 = (a1 + 32);
  if (v26)
  {
    if (byte_100117E80)
    {
      v27 = __error();
      v28 = *v27;
      v30 = sub_100035B80(v27, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
        v32 = *v25;
        *buf = 134218240;
        v99 = v31;
        v100 = 1024;
        LODWORD(v101) = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld, waiting %d seconds...", buf, 0x12u);
      }

      *__error() = v28;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v34 = *__error();
      v35 = dispatch_source_get_handle(v3);
      v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld, waiting %d seconds...", v35, *v25);
      if (v36)
      {
        v38 = v36;
        v39 = CFStringGetCStringPtr(v36, 0x8000100u);
        if (v39)
        {
          v40 = v39;
          v41 = 0;
        }

        else
        {
          v40 = malloc_type_calloc(0x400uLL, 1uLL, 0x36B0616uLL);
          CFStringGetCString(v38, v40, 1024, 0x8000100u);
          v41 = v40;
        }

        if (qword_100117E88)
        {
          v69 = qword_100117E88;
        }

        else
        {
          v69 = __stderrp;
        }

        fprintf(v69, "%s\n", v40);
        if (v41)
        {
          free(v41);
        }

        CFRelease(v38);
      }

      else
      {
        v66 = sub_100035B80(0, v37);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3BB4(v3);
        }

        if (qword_100117E88)
        {
          v67 = qword_100117E88;
        }

        else
        {
          v67 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v67);
      }

      *__error() = v34;
    }

    sleep(*v25);
    goto LABEL_100;
  }

  if (byte_100117E80)
  {
    v55 = __error();
    v56 = *v55;
    v58 = sub_100035B80(v55, v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
      *buf = 134217984;
      v99 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld", buf, 0xCu);
    }

    *__error() = v56;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v48 = *__error();
    v61 = dispatch_source_get_handle(v3);
    v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld", v61);
    if (v62)
    {
      v52 = v62;
      v53 = CFStringGetCStringPtr(v62, 0x8000100u);
      if (v53)
      {
        goto LABEL_67;
      }

      v54 = 2669991196;
      goto LABEL_92;
    }

    v68 = sub_100035B80(0, v63);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3C48(v3);
    }

    goto LABEL_87;
  }

LABEL_100:
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v72 = v6;
  v73 = [v72 countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v94;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(v72);
        }

        [*(*(&v93 + 1) + 8 * i) stopSamplingWithReason:5];
      }

      v74 = [v72 countByEnumeratingWithState:&v93 objects:v97 count:16];
    }

    while (v74);
  }
}

void sub_1000759F0(id a1)
{
  v1 = getpid();
  if (sub_100076688(v1))
  {
    if (byte_100117E80 == 1)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B43D0();
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Running under debugger, ignoring");
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 209325847;
LABEL_130:
        v79 = malloc_type_calloc(0x400uLL, 1uLL, v12);
        CFStringGetCString(v10, v79, 1024, 0x8000100u);
        v80 = v79;
        goto LABEL_131;
      }

      goto LABEL_94;
    }

    v28 = sub_100035B80(0, v9);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1000B440C();
    }

    goto LABEL_114;
  }

  v13 = getenv("XPC_NULL_BOOTSTRAP");
  v14 = "0";
  if (v13)
  {
    v14 = v13;
  }

  v15 = *v14;
  if (v15 == 49)
  {
    if (!v14[1])
    {
      goto LABEL_48;
    }
  }

  else if (49 == v15)
  {
    goto LABEL_48;
  }

  if (byte_100117E80 == 1)
  {
    v16 = __error();
    v17 = *v16;
    v19 = sub_100035B80(v16, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "spindump-stuck: Spindump has taken over a minute to process samples and may be stuck, try using -noIPC", buf, 2u);
    }

    *__error() = v17;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v21 = *__error();
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Spindump has taken over a minute to process samples and may be stuck, try using -noIPC");
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
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF880919uLL);
        CFStringGetCString(v24, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      CFRelease(v24);
    }

    else
    {
      v29 = sub_100035B80(0, v23);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3DC8();
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

    *__error() = v21;
  }

LABEL_48:
  if ((byte_100117E94 & 2) == 0 || !sub_10002B3E4())
  {
    strcpy(buf, "/var/tmp/spindump-stuck-stackshot.");
    memset(&v106, 0, sizeof(v106));
    v105 = time(0);
    localtime_r(&v105, &v106);
    v39 = strftime(&buf[34], 0x3DEuLL, "%Y-%m-%d-%T", &v106);
    v40 = v39 + 34;
    if (v39 + 34 >= 0x400)
    {
      sub_1000B3E7C(buf, v40);
    }

    v41 = getpid();
    snprintf(&buf[v40], 990 - v39, ".%d.buf", v41);
    v42 = fopen(buf, "w");
    if (!v42)
    {
      if (byte_100117E80 == 1)
      {
        v70 = __error();
        v71 = *v70;
        v73 = sub_100035B80(v70, v72);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4298();
        }

        *__error() = v71;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v7 = *__error();
        v74 = *__error();
        v75 = __error();
        v76 = strerror(*v75);
        v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Unable to open %s: %d (%s)", buf, v74, v76);
        if (v77)
        {
          v10 = v77;
          CStringPtr = CFStringGetCStringPtr(v77, 0x8000100u);
          if (!CStringPtr)
          {
            v12 = 3327212590;
            goto LABEL_130;
          }

          goto LABEL_94;
        }

        v28 = sub_100035B80(0, v78);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1000B4334();
        }

        goto LABEL_114;
      }

      return;
    }

    v43 = v42;
    v44 = stackshot_config_create();
    stackshot_config_set_flags();
    v45 = sub_10008866C(v44, 0);
    v46 = v45;
    if (v45 && [v45 length])
    {
      v47 = fwrite([v46 bytes], objc_msgSend(v46, "length"), 1uLL, v43);
      stackshot_config_dealloc();
      if (v47 == 1)
      {
        fclose(v43);
        if (byte_100117E80 == 1)
        {
          v48 = __error();
          v49 = *v48;
          v51 = sub_100035B80(v48, v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *v107 = 136315138;
            v108 = buf;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "spindump-stuck: Wrote stackshot to %s", v107, 0xCu);
          }

          *__error() = v49;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 2)
        {
          v52 = *__error();
          v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Wrote stackshot to %s", buf);
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
              v57 = malloc_type_calloc(0x400uLL, 1uLL, 0xD4DB93CAuLL);
              CFStringGetCString(v55, v57, 1024, 0x8000100u);
              v58 = v57;
            }

            if (qword_100117E88)
            {
              v103 = qword_100117E88;
            }

            else
            {
              v103 = __stderrp;
            }

            fprintf(v103, "%s\n", v57);
            if (v58)
            {
              free(v58);
            }

            CFRelease(v55);
          }

          else
          {
            v99 = sub_100035B80(0, v54);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
            {
              sub_1000B41AC();
            }

            if (qword_100117E88)
            {
              v100 = qword_100117E88;
            }

            else
            {
              v100 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v100);
          }

          *__error() = v52;
        }

        goto LABEL_128;
      }

      if (byte_100117E80 == 1)
      {
        v81 = __error();
        v82 = *v81;
        v84 = sub_100035B80(v81, v83);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          sub_1000B407C(buf, v43);
        }

        *__error() = v82;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v85 = *__error();
        v86 = ferror(v43);
        v87 = strerror(v86);
        v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write stackshot to %s: %d (%s)", buf, v86, v87);
        if (v88)
        {
          v90 = v88;
          v91 = CFStringGetCStringPtr(v88, 0x8000100u);
          if (v91)
          {
            v92 = v91;
            v93 = 0;
          }

          else
          {
            v92 = malloc_type_calloc(0x400uLL, 1uLL, 0x57F80928uLL);
            CFStringGetCString(v90, v92, 1024, 0x8000100u);
            v93 = v92;
          }

          if (qword_100117E88)
          {
            v104 = qword_100117E88;
          }

          else
          {
            v104 = __stderrp;
          }

          fprintf(v104, "%s\n", v92);
          if (v93)
          {
            free(v93);
          }

          CFRelease(v90);
        }

        else
        {
          v101 = sub_100035B80(0, v89);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
          {
            sub_1000B4114(buf, v43);
          }

          if (qword_100117E88)
          {
            v102 = qword_100117E88;
          }

          else
          {
            v102 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v102);
        }

        *__error() = v85;
      }
    }

    else
    {
      if (byte_100117E80 == 1)
      {
        v59 = __error();
        v60 = *v59;
        v62 = sub_100035B80(v59, v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_1000B421C();
        }

        *__error() = v60;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v63 = *__error();
        v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Unable to take stackshot");
        if (v64)
        {
          v66 = v64;
          v67 = CFStringGetCStringPtr(v64, 0x8000100u);
          if (v67)
          {
            v68 = v67;
            v69 = 0;
          }

          else
          {
            v68 = malloc_type_calloc(0x400uLL, 1uLL, 0x5B4EC28FuLL);
            CFStringGetCString(v66, v68, 1024, 0x8000100u);
            v69 = v68;
          }

          if (qword_100117E88)
          {
            v97 = qword_100117E88;
          }

          else
          {
            v97 = __stderrp;
          }

          fprintf(v97, "%s\n", v68);
          if (v69)
          {
            free(v69);
          }

          CFRelease(v66);
        }

        else
        {
          v94 = sub_100035B80(0, v65);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
          {
            sub_1000B425C();
          }

          if (qword_100117E88)
          {
            v95 = qword_100117E88;
          }

          else
          {
            v95 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v95);
        }

        *__error() = v63;
      }

      stackshot_config_dealloc();
    }

    fclose(v43);
LABEL_128:

    return;
  }

  if (byte_100117E80 == 1)
  {
    v32 = __error();
    v33 = *v32;
    v35 = sub_100035B80(v32, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3E04();
    }

    *__error() = v33;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v7 = *__error();
    v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Audio running, avoiding stackshot");
    if (v37)
    {
      v10 = v37;
      CStringPtr = CFStringGetCStringPtr(v37, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 2668872576;
        goto LABEL_130;
      }

LABEL_94:
      v79 = CStringPtr;
      v80 = 0;
LABEL_131:
      if (qword_100117E88)
      {
        v98 = qword_100117E88;
      }

      else
      {
        v98 = __stderrp;
      }

      fprintf(v98, "%s\n", v79);
      if (v80)
      {
        free(v80);
      }

      CFRelease(v10);
LABEL_137:
      *__error() = v7;
      return;
    }

    v28 = sub_100035B80(0, v38);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3E40();
    }

LABEL_114:

    if (qword_100117E88)
    {
      v96 = qword_100117E88;
    }

    else
    {
      v96 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
    goto LABEL_137;
  }
}

BOOL sub_100076688(uint64_t a1)
{
  v40 = 0u;
  v41 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (!proc_pidinfo(a1, 13, 1uLL, buffer, 64))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v19 = __error();
        v20 = *v19;
        v22 = sub_100035B80(v19, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4448();
        }

        *__error() = v20;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        return 0;
      }

      v8 = *__error();
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get proc info, assuming not being debugged: %d (%s)", v24, v26);
      if (v27)
      {
        v29 = v27;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          v31 = CStringPtr;
          v32 = 0;
        }

        else
        {
          v31 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2D50E48uLL);
          CFStringGetCString(v29, v31, 1024, 0x8000100u);
          v32 = v31;
        }

        if (qword_100117E88)
        {
          v38 = qword_100117E88;
        }

        else
        {
          v38 = __stderrp;
        }

        fprintf(v38, "%s\n", v31);
        if (v32)
        {
          free(v32);
        }

        v35 = v29;
        goto LABEL_53;
      }

      v36 = sub_100035B80(0, v28);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1000B44D8();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v3 = __error();
        v4 = *v3;
        v6 = sub_100035B80(v3, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4568(a1);
        }

        *__error() = v4;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        return 0;
      }

      v8 = *__error();
      v9 = sub_100035B20(a1);
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get proc info, assuming not being debugged: %d (%s)", v9, a1, v10, v12);
      if (v13)
      {
        v15 = v13;
        v16 = CFStringGetCStringPtr(v13, 0x8000100u);
        if (v16)
        {
          v17 = v16;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2D50E48uLL);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100117E88)
        {
          v34 = qword_100117E88;
        }

        else
        {
          v34 = __stderrp;
        }

        fprintf(v34, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        v35 = v15;
LABEL_53:
        CFRelease(v35);
LABEL_54:
        *__error() = v8;
        return 0;
      }

      v33 = sub_100035B80(0, v14);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1000B4624(a1);
      }
    }

    if (qword_100117E88)
    {
      v37 = qword_100117E88;
    }

    else
    {
      v37 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
    goto LABEL_54;
  }

  return (v40 & 2) != 0;
}

void sub_100076A58(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncidentUUID:0];
  v4 = [v3 targetProcessName];
  v5 = v4;
  if (!v4 && *(a1 + 64))
  {
    v6 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  if (*(a1 + 108) != 1)
  {
    goto LABEL_49;
  }

  dispatch_group_wait(qword_100117ED0, 0xFFFFFFFFFFFFFFFFLL);
  if ((byte_100117E94 & 0x18) == 0x10)
  {
    if (byte_100117E80)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SIGINFO received, generating report...", buf, 2u);
      }

      *__error() = v9;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_49;
    }

    v13 = *__error();
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SIGINFO received, generating report...");
    if (!v14)
    {
      v16 = sub_100035B80(0, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v17 = "Unable to format: SIGINFO received, generating report...";
LABEL_31:
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v17, buf, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v26 = v14;
    CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
    if (!CStringPtr)
    {
      v28 = 414624890;
LABEL_40:
      v29 = malloc_type_calloc(0x400uLL, 1uLL, v28);
      CFStringGetCString(v26, v29, 1024, 0x8000100u);
      v30 = v29;
LABEL_42:
      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v26);
      goto LABEL_48;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v18 = __error();
      v19 = *v18;
      v21 = sub_100035B80(v18, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SIGINFO received, processing symbols...", buf, 2u);
      }

      *__error() = v19;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
LABEL_49:
      if (*(a1 + 32))
      {
        [v3 setPrintOptions:?];
      }

      [v3 setForceOneBasedTimeIndexes:*(a1 + 109)];
      if (*(a1 + 72))
      {
        [v3 setTargetThreadId:?];
      }

      if ([v3 numSamplesAvoidedDueToAudio] >= 1 && !objc_msgSend(v3, "numSamples"))
      {
        if (byte_100117E80 == 1)
        {
          v32 = __error();
          v33 = *v32;
          v35 = sub_100035B80(v32, v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to sample due to audio running", buf, 2u);
          }

          *__error() = v33;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v36 = *__error();
          v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to sample due to audio running");
          if (v37)
          {
            v115 = v37;
            v116 = CFStringGetCStringPtr(v37, 0x8000100u);
            if (v116)
            {
              v117 = v116;
              v118 = 0;
            }

            else
            {
              v117 = malloc_type_calloc(0x400uLL, 1uLL, 0x1BC6A6CAuLL);
              CFStringGetCString(v115, v117, 1024, 0x8000100u);
              v118 = v117;
            }

            if (qword_100117E88)
            {
              v119 = qword_100117E88;
            }

            else
            {
              v119 = __stderrp;
            }

            fprintf(v119, "%s\n", v117);
            if (v118)
            {
              free(v118);
            }

            CFRelease(v115);
          }

          else
          {
            v39 = sub_100035B80(0, v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "Unable to format: Unable to sample due to audio running", buf, 2u);
            }

            if (qword_100117E88)
            {
              v40 = qword_100117E88;
            }

            else
            {
              v40 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
          }

          *__error() = v36;
        }

        goto LABEL_172;
      }

      v42 = *(a1 + 80);
      v41 = *(a1 + 88);
      v44 = *(a1 + 40);
      v43 = *(a1 + 48);
      v45 = *(a1 + 110);
      alloc = *(a1 + 111);
      v46 = *(a1 + 112);
      v126 = *(a1 + 96);
      v47 = *(a1 + 56);
      v125 = *(a1 + 104);
      v129 = v3;
      v48 = v44;
      v49 = v43;
      v128 = v7;
      v50 = v47;
      if (v42)
      {
        v51 = [NSString stringWithUTF8String:v42];
        [v129 setSignature:v51];
      }

      if (v41)
      {
        v52 = [NSString stringWithUTF8String:v41];
        [v129 setReason:v52];
      }

      [v129 setUseDsymForUUIDForEverything:v45];
      [v129 setFindDsymsForIDs:v48];
      [v129 setIncludeBinaryFormatInReport:v46 ^ 1u];
      [v129 setIncludeTextualFormatInReport:alloc ^ 1u];
      [v129 setHeaderOnly:0];
      [v129 setDsymPaths:v49];
      v53 = v126;
      if (v126)
      {
        v55 = &CSArchitectureGetArchitectureForName_ptr;
        while (1)
        {
          v56 = [objc_alloc(v55[345]) initWithUTF8String:v53];
          v57 = [v129 targetProcessId];
          v58 = geteuid();
          v131 = 0;
          v59 = sub_100062A5C(v56, v128, v57, 1537, v58, 0x1A4u, &v131);
          v60 = v131;
          if (v59 != -1)
          {
            v61 = fdopen(v59, "w");
            if (v61)
            {
              break;
            }
          }

          if (byte_100117E80 == 1)
          {
            v62 = __error();
            v63 = *v62;
            v65 = sub_100035B80(v62, v64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v97 = v53;
              if (v60)
              {
                v97 = [v60 UTF8String];
              }

              v98 = *__error();
              v99 = __error();
              v100 = strerror(*v99);
              *v132 = 136315650;
              *&v132[4] = v97;
              v133 = 1024;
              v134 = v98;
              v135 = 2080;
              v136 = v100;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Spindump failed to save report to %s: %d (%s)", v132, 0x1Cu);
              v55 = &CSArchitectureGetArchitectureForName_ptr;
            }

            *__error() = v63;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v67 = *__error();
            v68 = v53;
            if (v60)
            {
              v68 = [v60 UTF8String];
            }

            v69 = *__error();
            v70 = __error();
            v71 = strerror(*v70);
            v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump failed to save report to %s: %d (%s)", v68, v69, v71);
            if (v72)
            {
              v74 = v72;
              v75 = CFStringGetCStringPtr(v72, 0x8000100u);
              if (v75)
              {
                v76 = v75;
                v77 = 0;
              }

              else
              {
                v76 = malloc_type_calloc(0x400uLL, 1uLL, 0x416D5A0EuLL);
                CFStringGetCString(v74, v76, 1024, 0x8000100u);
                v77 = v76;
              }

              if (qword_100117E88)
              {
                v80 = qword_100117E88;
              }

              else
              {
                v80 = __stderrp;
              }

              fprintf(v80, "%s\n", v76);
              if (v77)
              {
                free(v77);
              }

              CFRelease(v74);
              v55 = &CSArchitectureGetArchitectureForName_ptr;
            }

            else
            {
              v78 = sub_100035B80(0, v73);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
              {
                if (v60)
                {
                  v53 = [v60 UTF8String];
                }

                v101 = *__error();
                v102 = __error();
                v103 = strerror(*v102);
                *v132 = 136315650;
                *&v132[4] = v53;
                v133 = 1024;
                v134 = v101;
                v135 = 2080;
                v136 = v103;
                _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "Unable to format: Spindump failed to save report to %s: %d (%s)", v132, 0x1Cu);
              }

              if (qword_100117E88)
              {
                v79 = qword_100117E88;
              }

              else
              {
                v79 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v79);
            }

            *__error() = v67;
          }

          if (v59 != -1)
          {
            close(v59);
          }

          *v132 = 0;
          if (byte_100117E80 == 1)
          {
            v81 = __error();
            v82 = *v81;
            v84 = sub_100035B80(v81, v83);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              *v130 = 0;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Please enter a new output location (or an empty line to output to stdout, including spindump binary format)", v130, 2u);
            }

            *__error() = v82;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 2)
          {
            v85 = *__error();
            v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Please enter a new output location (or an empty line to output to stdout, including spindump binary format)");
            if (v86)
            {
              v88 = v86;
              v89 = CFStringGetCStringPtr(v86, 0x8000100u);
              if (v89)
              {
                v90 = v89;
                v91 = 0;
              }

              else
              {
                v90 = malloc_type_calloc(0x400uLL, 1uLL, 0x82D1CD77uLL);
                CFStringGetCString(v88, v90, 1024, 0x8000100u);
                v91 = v90;
              }

              if (qword_100117E88)
              {
                v94 = qword_100117E88;
              }

              else
              {
                v94 = __stderrp;
              }

              fprintf(v94, "%s\n", v90);
              if (v91)
              {
                free(v91);
              }

              CFRelease(v88);
            }

            else
            {
              v92 = sub_100035B80(0, v87);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
              {
                *v130 = 0;
                _os_log_fault_impl(&_mh_execute_header, v92, OS_LOG_TYPE_FAULT, "Unable to format: Please enter a new output location (or an empty line to output to stdout, including spindump binary format)", v130, 2u);
              }

              if (qword_100117E88)
              {
                v93 = qword_100117E88;
              }

              else
              {
                v93 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
            }

            *__error() = v85;
          }

          v95 = fgetln(__stdinp, v132);
          v96 = *v132;
          if (!*v132)
          {
            goto LABEL_140;
          }

          if (v95[*v132 - 1] == 10)
          {
            v95[*v132 - 1] = 0;
            v96 = --*v132;
          }

          if ((v96 - 1) >= 0x3FF)
          {
LABEL_140:

            v54 = 1;
            v53 = v126;
            goto LABEL_141;
          }

          v53 = buf;
          __memcpy_chk();
          buf[v96] = 0;
        }

        v104 = v61;

        [v129 saveReportToStream:v104];
        fclose(v104);
        if (byte_100117E80 == 1)
        {
          v105 = __error();
          v106 = *v105;
          v108 = sub_100035B80(v105, v107);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v138 = v60;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Spindump analysis written to file %@", buf, 0xCu);
          }

          *__error() = v106;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 2)
        {
          v110 = *__error();
          v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump analysis written to file %@", v60);
          if (v111)
          {
            v120 = v111;
            v121 = CFStringGetCStringPtr(v111, 0x8000100u);
            if (v121)
            {
              v122 = v121;
              v123 = 0;
            }

            else
            {
              v122 = malloc_type_calloc(0x400uLL, 1uLL, 0x25F28B0DuLL);
              CFStringGetCString(v120, v122, 1024, 0x8000100u);
              v123 = v122;
            }

            if (qword_100117E88)
            {
              v124 = qword_100117E88;
            }

            else
            {
              v124 = __stderrp;
            }

            fprintf(v124, "%s\n", v122);
            if (v123)
            {
              free(v123);
            }

            CFRelease(v120);
          }

          else
          {
            v113 = sub_100035B80(0, v112);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v138 = v60;
              _os_log_fault_impl(&_mh_execute_header, v113, OS_LOG_TYPE_FAULT, "Unable to format: Spindump analysis written to file %@", buf, 0xCu);
            }

            if (qword_100117E88)
            {
              v114 = qword_100117E88;
            }

            else
            {
              v114 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v114);
          }

          *__error() = v110;
        }

        v53 = v126;
        if (v125)
        {
          [v129 setIncludeBinaryFormatInReport:0];
          v54 = 0;
LABEL_141:
          [v129 saveReportToStream:__stdoutp];
          if ([v129 includeBinaryFormatInReport])
          {
            putchar(10);
          }

          if ((v54 & 1) != 0 && v53)
          {
LABEL_172:
            exit(69);
          }
        }
      }

      else if (v125)
      {
        v54 = 1;
        goto LABEL_141;
      }

      exit(0);
    }

    v13 = *__error();
    v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SIGINFO received, processing symbols...");
    if (!v23)
    {
      v16 = sub_100035B80(0, v24);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v17 = "Unable to format: SIGINFO received, processing symbols...";
        goto LABEL_31;
      }

LABEL_32:

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
LABEL_48:
      *__error() = v13;
      goto LABEL_49;
    }

    v26 = v23;
    CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
    if (!CStringPtr)
    {
      v28 = 4047495155;
      goto LABEL_40;
    }
  }

  v29 = CStringPtr;
  v30 = 0;
  goto LABEL_42;
}

BOOL sub_100077900()
{
  if (qword_100117DE0 != -1)
  {
    sub_1000B4CFC();
  }

  if (!qword_100117528)
  {
    return 0;
  }

  v17 = 0;
  v16 = 4;
  if (sysctl(dword_100117DD0, qword_100117528, &v17, &v16, 0, 0))
  {
    sub_1000B4D10(&v17);
  }

  if (byte_100117E80 == 1)
  {
    v0 = __error();
    v1 = *v0;
    v3 = sub_100035B80(v0, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B4F64();
    }

    *__error() = v1;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Memory pressure %d", v17);
    if (v6)
    {
      v8 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v10 = CStringPtr;
        v11 = 0;
      }

      else
      {
        v10 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F735A8BuLL);
        CFStringGetCString(v8, v10, 1024, 0x8000100u);
        v11 = v10;
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      fprintf(v14, "%s\n", v10);
      if (v11)
      {
        free(v11);
      }

      CFRelease(v8);
    }

    else
    {
      v12 = sub_100035B80(0, v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1000B4FD8();
      }

      if (qword_100117E88)
      {
        v13 = qword_100117E88;
      }

      else
      {
        v13 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v13);
    }

    *__error() = v5;
  }

  return v17 > 3;
}

void sub_100077B48(id a1)
{
  if (sysctlnametomib("kern.memorystatus_vm_pressure_level", dword_100117DD0, &qword_100117528))
  {
    sub_1000B504C();
  }
}

void sub_100077B84()
{
  if (geteuid())
  {
    sub_1000B5260();
  }

  if (qword_100117DE8 != -1)
  {
    sub_1000B5474();
  }
}

void sub_100077BBC(id a1)
{
  memset(&v25, 0, sizeof(v25));
  v1 = stat("/private/var/db/spindump", &v25);
  if (v1)
  {
    v9 = *__error();
    if (byte_100117E80 == 1)
    {
      v10 = __error();
      v11 = *v10;
      v13 = sub_100035B80(v10, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B5488();
      }

      *__error() = v11;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v15 = *__error();
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Creating spindump directory /private/var/db/spindump after stat said %d", v9);
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
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3AA1872uLL);
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
          sub_1000B54F8();
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

      *__error() = v15;
    }

    if (mkdir("/private/var/db/spindump", 0x1EDu))
    {
      sub_1000B5568(v9);
    }
  }

  else if ((v25.st_mode & 0xF000) != 0x4000)
  {
    sub_1000B5814(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}
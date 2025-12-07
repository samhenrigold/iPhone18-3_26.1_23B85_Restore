uint64_t sub_100049170(uint64_t a1)
{
  free(*(a1 + 40));
  free(*(a1 + 48));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000491E8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v6 = (a1 + 72);
  if ((*(a1 + 72) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v7 = __error();
      v8 = *v7;
      v10 = sub_100035B80(v7, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10009F714((a1 + 72), v3);
      }

      *__error() = v8;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_52;
    }

    v12 = *__error();
    v13 = sub_100035B20(*v6);
    v14 = *v6;
    v15 = sub_100088394(v3);
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: done monitoring due to %s", v13, v14, v15);
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
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB074FAuLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100117E88)
      {
        v35 = qword_100117E88;
      }

      else
      {
        v35 = __stderrp;
      }

      fprintf(v35, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

LABEL_50:
      CFRelease(v18);
      goto LABEL_51;
    }

    v33 = sub_100035B80(0, v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      sub_10009F7D0((a1 + 72), v3);
    }

    if (qword_100117E88)
    {
      v34 = qword_100117E88;
    }

    else
    {
      v34 = __stderrp;
    }

    goto LABEL_31;
  }

  if (byte_100117E80)
  {
    v22 = __error();
    v23 = *v22;
    v25 = sub_100035B80(v22, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10009F60C(v3);
    }

    *__error() = v23;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v12 = *__error();
    v27 = sub_100088394(v3);
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: done monitoring due to %s", v27);
    if (v28)
    {
      v18 = v28;
      v30 = CFStringGetCStringPtr(v28, 0x8000100u);
      if (v30)
      {
        v31 = v30;
        v32 = 0;
      }

      else
      {
        v31 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB074FAuLL);
        CFStringGetCString(v18, v31, 1024, 0x8000100u);
        v32 = v31;
      }

      if (qword_100117E88)
      {
        v37 = qword_100117E88;
      }

      else
      {
        v37 = __stderrp;
      }

      fprintf(v37, "%s\n", v31);
      if (v32)
      {
        free(v32);
      }

      goto LABEL_50;
    }

    v36 = sub_100035B80(0, v29);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_10009F690(v3);
    }

    if (qword_100117E88)
    {
      v34 = qword_100117E88;
    }

    else
    {
      v34 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
LABEL_51:
    *__error() = v12;
  }

LABEL_52:
  if (*(a1 + 40))
  {
    v38 = [NSString stringWithUTF8String:?];
    [v5 setReason:v38];
  }

  if (*(a1 + 48))
  {
    v39 = [NSString stringWithUTF8String:?];
    [v5 setSignature:v39];
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    v41 = [v5 printOptions];
    [v41 setPrintHeavyStacks:1];

    v40 = *(a1 + 56);
  }

  [v5 setIncludeTextualFormatInReport:(v40 & 2) == 0];
  [v5 setIncludeBinaryFormatInReport:(*(a1 + 56) & 4) == 0];
  v42 = *(a1 + 56);
  if ((v42 & 0x10) != 0)
  {
    [v5 setShouldSymbolicate:1];
    [v5 setShouldUseBulkSymbolication:0];
    v42 = *(a1 + 56);
  }

  if ((v42 & 8) != 0)
  {
    [v5 setShouldSymbolicate:0];
    [v5 setShouldUseBulkSymbolication:0];
  }

  v43 = (a1 + 64);
  v44 = *(a1 + 64);
  v45 = geteuid();
  v46 = sub_100032F24(v44, 536872449, v45, 420);
  if ((v46 & 0x80000000) == 0)
  {
    v47 = fdopen(v46, "w");
    if (v47)
    {
      v48 = v47;
      [v5 saveReportToStream:v47];
      fclose(v48);
      if (*v6 < 0)
      {
        if (byte_100117E80)
        {
          v100 = __error();
          v101 = *v100;
          v103 = sub_100035B80(v100, v102);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = sub_100035B20(*(a1 + 76));
            v105 = *(a1 + 76);
            v106 = *(a1 + 64);
            *buf = 136446722;
            v152 = v104;
            v153 = 1024;
            v154 = v105;
            v155 = 2080;
            v156 = v106;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "generate spindump: saved report (requested by %{public}s [%d]) to %s", buf, 0x1Cu);
          }

          *__error() = v101;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_140;
        }

        v58 = *__error();
        v107 = sub_100035B20(*(a1 + 76));
        v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: saved report (requested by %s [%d]) to %s", v107, *(a1 + 76), *(a1 + 64));
        if (!v62)
        {
          v64 = sub_100035B80(0, v108);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            sub_10009F87C();
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v49 = __error();
          v50 = *v49;
          v52 = sub_100035B80(v49, v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = sub_100035B20(*(a1 + 72));
            v54 = *(a1 + 72);
            v55 = sub_100035B20(*(a1 + 76));
            v56 = *(a1 + 76);
            v57 = *(a1 + 64);
            *buf = 136447234;
            v152 = v53;
            v153 = 1024;
            v154 = v54;
            v155 = 2082;
            v156 = v55;
            v157 = 1024;
            v158 = v56;
            v159 = 2080;
            v160 = v57;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: generate spindump: saved report (requested by %{public}s [%d]) to %s", buf, 0x2Cu);
          }

          *__error() = v50;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_140;
        }

        v58 = *__error();
        v59 = sub_100035B20(*(a1 + 72));
        v60 = *(a1 + 72);
        v61 = sub_100035B20(*(a1 + 76));
        v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: saved report (requested by %s [%d]) to %s", v59, v60, v61, *(a1 + 76), *(a1 + 64));
        if (!v62)
        {
          v64 = sub_100035B80(0, v63);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            v65 = sub_100035B20(*(a1 + 72));
            v66 = *(a1 + 72);
            v67 = sub_100035B20(*(a1 + 76));
            v68 = *(a1 + 76);
            v69 = *(a1 + 64);
            *buf = 136316162;
            v152 = v65;
            v153 = 1024;
            v154 = v66;
            v155 = 2080;
            v156 = v67;
            v157 = 1024;
            v158 = v68;
            v159 = 2080;
            v160 = v69;
            _os_log_fault_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: generate spindump: saved report (requested by %s [%d]) to %s", buf, 0x2Cu);
          }

LABEL_135:

          if (qword_100117E88)
          {
            v140 = qword_100117E88;
          }

          else
          {
            v140 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v140);
LABEL_139:
          *__error() = v58;
LABEL_140:
          v141 = *(a1 + 32);
          if (v141)
          {
            (*(v141 + 16))(v141, 0, *v43);
          }

          goto LABEL_171;
        }
      }

      v109 = v62;
      v110 = CFStringGetCStringPtr(v62, 0x8000100u);
      if (v110)
      {
        v111 = v110;
        v112 = 0;
      }

      else
      {
        v111 = malloc_type_calloc(0x400uLL, 1uLL, 0xC2ACEE5uLL);
        CFStringGetCString(v109, v111, 1024, 0x8000100u);
        v112 = v111;
      }

      if (qword_100117E88)
      {
        v138 = qword_100117E88;
      }

      else
      {
        v138 = __stderrp;
      }

      fprintf(v138, "%s\n", v111);
      if (v112)
      {
        free(v112);
      }

      CFRelease(v109);
      goto LABEL_139;
    }

    if ((*v6 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v86 = __error();
        v87 = *v86;
        v89 = sub_100035B80(v86, v88);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_10009FA68();
        }

        *__error() = v87;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_169;
      }

      v74 = *__error();
      v90 = sub_100035B20(*v6);
      v91 = *v43;
      v92 = *v6;
      v93 = *__error();
      v94 = __error();
      v95 = strerror(*v94);
      v96 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to fdopen %s for writing: %d (%s)", v90, v92, v91, v93, v95);
      if (v96)
      {
        v83 = v96;
        v84 = CFStringGetCStringPtr(v96, 0x8000100u);
        if (v84)
        {
          goto LABEL_93;
        }

        v85 = 3452052486;
LABEL_145:
        v98 = malloc_type_calloc(0x400uLL, 1uLL, v85);
        CFStringGetCString(v83, v98, 1024, 0x8000100u);
        v99 = v98;
        goto LABEL_146;
      }

      v139 = sub_100035B80(0, v97);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        sub_10009FB14();
      }

      goto LABEL_132;
    }

    if (byte_100117E80)
    {
      v126 = __error();
      v127 = *v126;
      v129 = sub_100035B80(v126, v128);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        sub_10009F928();
      }

      *__error() = v127;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_169;
    }

    v74 = *__error();
    v130 = *v43;
    v131 = *__error();
    v132 = __error();
    v133 = strerror(*v132);
    v134 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to fdopen %s for writing: %d (%s)", v130, v131, v133);
    if (v134)
    {
      v123 = v134;
      v124 = CFStringGetCStringPtr(v134, 0x8000100u);
      if (v124)
      {
        goto LABEL_120;
      }

      v125 = 3452052486;
      goto LABEL_160;
    }

    v142 = sub_100035B80(0, v135);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
    {
      sub_10009F9C8();
    }

    goto LABEL_154;
  }

  if (*v6 < 0)
  {
    if (byte_100117E80)
    {
      v113 = __error();
      v114 = *v113;
      v116 = sub_100035B80(v113, v115);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        sub_10009FBC0();
      }

      *__error() = v114;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_169;
    }

    v74 = *__error();
    v117 = *v43;
    v118 = *__error();
    v119 = __error();
    v120 = strerror(*v119);
    v121 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to open %s for writing: %d (%s)", v117, v118, v120);
    if (v121)
    {
      v123 = v121;
      v124 = CFStringGetCStringPtr(v121, 0x8000100u);
      if (v124)
      {
LABEL_120:
        v136 = v124;
        v137 = 0;
LABEL_161:
        if (qword_100117E88)
        {
          v146 = qword_100117E88;
        }

        else
        {
          v146 = __stderrp;
        }

        fprintf(v146, "%s\n", v136);
        if (v137)
        {
          free(v137);
        }

        v144 = v123;
        goto LABEL_167;
      }

      v125 = 1512032015;
LABEL_160:
      v136 = malloc_type_calloc(0x400uLL, 1uLL, v125);
      CFStringGetCString(v123, v136, 1024, 0x8000100u);
      v137 = v136;
      goto LABEL_161;
    }

    v142 = sub_100035B80(0, v122);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
    {
      sub_10009FC60();
    }

LABEL_154:

    goto LABEL_155;
  }

  if (byte_100117E80)
  {
    v70 = __error();
    v71 = *v70;
    v73 = sub_100035B80(v70, v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10009FD00();
    }

    *__error() = v71;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_169;
  }

  v74 = *__error();
  v75 = sub_100035B20(*v6);
  v76 = *v43;
  v77 = *v6;
  v78 = *__error();
  v79 = __error();
  v80 = strerror(*v79);
  v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to open %s for writing: %d (%s)", v75, v77, v76, v78, v80);
  if (!v81)
  {
    v139 = sub_100035B80(0, v82);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
    {
      sub_10009FDAC();
    }

LABEL_132:

LABEL_155:
    if (qword_100117E88)
    {
      v145 = qword_100117E88;
    }

    else
    {
      v145 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v145);
    goto LABEL_168;
  }

  v83 = v81;
  v84 = CFStringGetCStringPtr(v81, 0x8000100u);
  if (!v84)
  {
    v85 = 1512032015;
    goto LABEL_145;
  }

LABEL_93:
  v98 = v84;
  v99 = 0;
LABEL_146:
  if (qword_100117E88)
  {
    v143 = qword_100117E88;
  }

  else
  {
    v143 = __stderrp;
  }

  fprintf(v143, "%s\n", v98);
  if (v99)
  {
    free(v99);
  }

  v144 = v83;
LABEL_167:
  CFRelease(v144);
LABEL_168:
  *__error() = v74;
LABEL_169:
  v147 = *(a1 + 32);
  if (v147)
  {
    v148 = *__error();
    (*(v147 + 16))(v147, v148, 0);
  }

LABEL_171:
  free(*(a1 + 64));
  v149 = *(a1 + 40);
  if (v149)
  {
    free(v149);
  }

  v150 = *(a1 + 48);
  if (v150)
  {
    free(v150);
  }
}

uint64_t sub_10004A05C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a5;
  v20 = a2;
  v21 = objc_alloc_init(SAMicrostackshotStatistics);
  v22 = sub_10002CE08(0, 0, a1, v20, a3, 1, v19, 0, a8 - a7, a8, 0.0, 0.0, 0.0, a6, a7, a9, 5u, HIBYTE(word_100117EC0) & 1, 0, 0, a10, a4, SHIDWORD(a4), 17, 0, 0, 0, 0, 0, 0, 0, 0, v21, 0, 0, 0, 0);

  v23 = [v21 total];
  v24 = [v23 num_out_of_order] != 0;

  v25 = [v21 total];
  v26 = [v25 num_missing_load_info];

  if (v26)
  {
    v27 = ((v24 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v27 = v24 << 41;
  }

  if ([v21 bytes_not_microstackshots])
  {
    v28 = v27 | 0x40000000000;
  }

  else
  {
    v28 = v27;
  }

  if ((v22 & 0x800000) != 0)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v45 = __error();
        v46 = *v45;
        v48 = sub_100035B80(v45, v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_10009FFCC();
        }

        *__error() = v46;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v139 = *__error();
        v49 = sub_100035B20(a1);
        v50 = [v21 total];
        v51 = [v50 num_out_of_order];
        v52 = [v21 total];
        v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v49, a1, v51, [v52 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v40)
        {
          CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
          if (!CStringPtr)
          {
            v44 = 510317963;
            goto LABEL_81;
          }

LABEL_38:
          v65 = CStringPtr;
          v66 = 0;
LABEL_82:
          if (qword_100117E88)
          {
            v106 = qword_100117E88;
          }

          else
          {
            v106 = __stderrp;
          }

          fprintf(v106, "%s\n", v65);
          if (v66)
          {
            free(v66);
          }

          CFRelease(v40);
          goto LABEL_88;
        }

        v103 = sub_100035B80(v53, v54);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0088();
        }

LABEL_74:

        if (qword_100117E88)
        {
          v105 = qword_100117E88;
        }

        else
        {
          v105 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v105);
LABEL_88:
        *__error() = v139;
      }

LABEL_89:
      if (byte_100117E80 == 1)
      {
        v107 = __error();
        v108 = *v107;
        v110 = sub_100035B80(v107, v109);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0684();
        }

        *__error() = v108;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v111 = *__error();
        v112 = sub_100035B20(a1);
        v113 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: done reporting (%#llx)", v112, a1, v22);
        if (v113)
        {
          v115 = v113;
          v116 = CFStringGetCStringPtr(v113, 0x8000100u);
          if (v116)
          {
            v117 = v116;
            v118 = 0;
          }

          else
          {
            v117 = malloc_type_calloc(0x400uLL, 1uLL, 0x57EB9B11uLL);
            CFStringGetCString(v115, v117, 1024, 0x8000100u);
            v118 = v117;
          }

          if (qword_100117E88)
          {
            v120 = qword_100117E88;
          }

          else
          {
            v120 = __stderrp;
          }

          fprintf(v120, "%s\n", v117);
          if (v118)
          {
            free(v118);
          }

          v121 = v115;
LABEL_146:
          CFRelease(v121);
LABEL_147:
          *__error() = v111;
          goto LABEL_148;
        }

        v119 = sub_100035B80(0, v114);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0710();
        }

        goto LABEL_135;
      }

      goto LABEL_148;
    }

    if (byte_100117E80)
    {
      v67 = __error();
      v68 = *v67;
      v70 = sub_100035B80(v67, v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_10009FE58();
      }

      *__error() = v68;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v71 = *__error();
      v72 = [v21 total];
      v73 = [v72 num_out_of_order];
      v74 = [v21 total];
      v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v73, [v74 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v75)
      {
        v78 = CFStringGetCStringPtr(v75, 0x8000100u);
        if (!v78)
        {
          v79 = 510317963;
LABEL_115:
          v101 = malloc_type_calloc(0x400uLL, 1uLL, v79);
          CFStringGetCString(v75, v101, 1024, 0x8000100u);
          v102 = v101;
          goto LABEL_116;
        }

LABEL_65:
        v101 = v78;
        v102 = 0;
LABEL_116:
        if (qword_100117E88)
        {
          v123 = qword_100117E88;
        }

        else
        {
          v123 = __stderrp;
        }

        fprintf(v123, "%s\n", v101);
        if (v102)
        {
          free(v102);
        }

        CFRelease(v75);
        goto LABEL_122;
      }

      v104 = sub_100035B80(v76, v77);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        sub_10009FF14();
      }

LABEL_110:

      if (qword_100117E88)
      {
        v122 = qword_100117E88;
      }

      else
      {
        v122 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v122);
LABEL_122:
      *__error() = v71;
    }
  }

  else if (v28)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v29 = __error();
        v30 = *v29;
        v32 = sub_100035B80(v29, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = sub_100035B20(a1);
          v138 = [v21 total];
          v34 = [v138 num_out_of_order];
          v35 = [v21 total];
          *buf = 136447234;
          v141 = v33;
          v142 = 1024;
          *v143 = a1;
          *&v143[4] = 2048;
          *&v143[6] = v34;
          *&v143[14] = 2048;
          *&v143[16] = [v35 num_missing_load_info];
          v144 = 2048;
          v145 = [v21 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x30u);
        }

        *__error() = v30;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v139 = *__error();
        v36 = sub_100035B20(a1);
        v37 = [v21 total];
        v38 = [v37 num_out_of_order];
        v39 = [v21 total];
        v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v36, a1, v38, [v39 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v40)
        {
          CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
          if (!CStringPtr)
          {
            v44 = 2799573522;
LABEL_81:
            v65 = malloc_type_calloc(0x400uLL, 1uLL, v44);
            CFStringGetCString(v40, v65, 1024, 0x8000100u);
            v66 = v65;
            goto LABEL_82;
          }

          goto LABEL_38;
        }

        v103 = sub_100035B80(v41, v42);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000A01FC();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v80 = __error();
      v81 = *v80;
      v83 = sub_100035B80(v80, v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = [v21 total];
        v85 = [v84 num_out_of_order];
        v86 = [v21 total];
        *buf = 134218496;
        v141 = v85;
        v142 = 2048;
        *v143 = [v86 num_missing_load_info];
        *&v143[8] = 2048;
        *&v143[10] = [v21 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v81;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v71 = *__error();
      v87 = [v21 total];
      v88 = [v87 num_out_of_order];
      v89 = [v21 total];
      v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v88, [v89 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v75)
      {
        v78 = CFStringGetCStringPtr(v75, 0x8000100u);
        if (!v78)
        {
          v79 = 2799573522;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v104 = sub_100035B80(v90, v91);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        sub_1000A0144();
      }

      goto LABEL_110;
    }
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v55 = __error();
        v56 = *v55;
        v58 = sub_100035B80(v55, v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A050C();
        }

        *__error() = v56;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v139 = *__error();
        v59 = sub_100035B20(a1);
        v60 = [v21 total];
        v61 = [v60 num_out_of_order];
        v62 = [v21 total];
        v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v59, a1, v61, [v62 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v40)
        {
          CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
          if (!CStringPtr)
          {
            v44 = 1438902277;
            goto LABEL_81;
          }

          goto LABEL_38;
        }

        v103 = sub_100035B80(v63, v64);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000A05C8();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v92 = __error();
      v93 = *v92;
      v95 = sub_100035B80(v92, v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A02B8();
      }

      *__error() = v93;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v71 = *__error();
      v96 = [v21 total];
      v97 = [v96 num_out_of_order];
      v98 = [v21 total];
      v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v97, [v98 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v75)
      {
        v78 = CFStringGetCStringPtr(v75, 0x8000100u);
        if (!v78)
        {
          v79 = 1438902277;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v104 = sub_100035B80(v99, v100);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        sub_1000A0374();
      }

      goto LABEL_110;
    }
  }

  if (byte_100117E80 == 1)
  {
    v124 = __error();
    v125 = *v124;
    v127 = sub_100035B80(v124, v126);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A042C();
    }

    *__error() = v125;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v111 = *__error();
    v128 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: done reporting (%#llx)", v22);
    if (v128)
    {
      v130 = v128;
      v131 = CFStringGetCStringPtr(v128, 0x8000100u);
      if (v131)
      {
        v132 = v131;
        v133 = 0;
      }

      else
      {
        v132 = malloc_type_calloc(0x400uLL, 1uLL, 0x57EB9B11uLL);
        CFStringGetCString(v130, v132, 1024, 0x8000100u);
        v133 = v132;
      }

      if (qword_100117E88)
      {
        v136 = qword_100117E88;
      }

      else
      {
        v136 = __stderrp;
      }

      fprintf(v136, "%s\n", v132);
      if (v133)
      {
        free(v133);
      }

      v121 = v130;
      goto LABEL_146;
    }

    v134 = sub_100035B80(0, v129);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      sub_1000A049C();
    }

LABEL_135:
    if (qword_100117E88)
    {
      v135 = qword_100117E88;
    }

    else
    {
      v135 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v135);
    goto LABEL_147;
  }

LABEL_148:

  return v22;
}

uint64_t sub_10004AFBC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = a1;
  if (a2 >= 1 && sub_100076688(a2))
  {
    v10 = 0;
    v11 = 16;
    if ((a4 & 0x10) == 0 && (word_100117EC0 & 4) == 0)
    {
      if (v9)
      {
        if (byte_100117E80)
        {
          v12 = __error();
          v13 = *v12;
          v15 = sub_100035B80(v12, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543874;
            *&buf[4] = v9;
            *&buf[12] = 1024;
            *&buf[14] = a2;
            *&buf[18] = 2082;
            *&buf[20] = a3;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@ [%d]: %{public}s: being debugged", buf, 0x1Cu);
          }

          *__error() = v13;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
LABEL_57:
          v11 = 0;
LABEL_85:
          v10 = 16;
          goto LABEL_19;
        }

        v17 = *__error();
        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: %s: being debugged", v9, a2, a3);
        if (!v18)
        {
          v20 = sub_100035B80(0, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *&buf[4] = v9;
            *&buf[12] = 1024;
            *&buf[14] = a2;
            *&buf[18] = 2080;
            *&buf[20] = a3;
            _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: %s: being debugged", buf, 0x1Cu);
          }

LABEL_80:

          if (qword_100117E88)
          {
            v61 = qword_100117E88;
          }

          else
          {
            v61 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v61);
LABEL_84:
          v11 = 0;
          *__error() = v17;
          goto LABEL_85;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v47 = __error();
          v48 = *v47;
          v50 = sub_100035B80(v47, v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A0DBC();
          }

          *__error() = v48;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_57;
        }

        v17 = *__error();
        v53 = sub_100035B20(a2);
        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: being debugged", v53, a2, a3);
        if (!v18)
        {
          v20 = sub_100035B80(0, v54);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0E50();
          }

          goto LABEL_80;
        }
      }

      v55 = v18;
      CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
      if (CStringPtr)
      {
        v57 = CStringPtr;
        v58 = 0;
      }

      else
      {
        v57 = malloc_type_calloc(0x400uLL, 1uLL, 0x857A2DA1uLL);
        CFStringGetCString(v55, v57, 1024, 0x8000100u);
        v58 = v57;
      }

      if (qword_100117E88)
      {
        v59 = qword_100117E88;
      }

      else
      {
        v59 = __stderrp;
      }

      fprintf(v59, "%s\n", v57);
      if (v58)
      {
        free(v58);
      }

      CFRelease(v55);
      goto LABEL_84;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_19:
  if (sub_100053ACC())
  {
    v21 = v11 | 0x100;
  }

  else
  {
    v21 = v11;
  }

  if (sub_100077900())
  {
    v22 = v21 | 0x80;
  }

  else
  {
    v22 = v21;
  }

  if (a2 >= 1)
  {
    if (qword_100117D28 != -1)
    {
      sub_1000A0ED8();
    }

    if ((byte_100117D20 & 1) == 0)
    {
      target_task = 0;
      v23 = task_inspect_for_pid();
      if (v23)
      {
        v24 = v23;
        if (byte_100117E80 == 1)
        {
          v25 = __error();
          v26 = *v25;
          v28 = sub_100035B80(v25, v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000A0F00();
          }

          *__error() = v26;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v29 = *__error();
          v30 = sub_100035B20(a2);
          v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to inspect task for suspended state (%d), assuming not suspended", v30, a2, v24);
          if (v31)
          {
            v33 = v31;
            v34 = CFStringGetCStringPtr(v31, 0x8000100u);
            if (!v34)
            {
              v35 = 129436166;
LABEL_87:
              v45 = malloc_type_calloc(0x400uLL, 1uLL, v35);
              CFStringGetCString(v33, v45, 1024, 0x8000100u);
              v46 = v45;
              goto LABEL_88;
            }

            goto LABEL_48;
          }

          v52 = sub_100035B80(0, v32);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0F8C();
          }

          goto LABEL_74;
        }
      }

      else
      {
        v70 = 0;
        memset(buf, 0, sizeof(buf));
        task_info_outCnt = 10;
        v36 = task_info(target_task, 0x12u, buf, &task_info_outCnt);
        if (v36)
        {
          v37 = v36;
          if (byte_100117E80 == 1)
          {
            v38 = __error();
            v39 = *v38;
            v41 = sub_100035B80(v38, v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_1000A1018();
            }

            *__error() = v39;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v29 = *__error();
            v42 = sub_100035B20(a2);
            v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get suspended state (%d), assuming not suspended", v42, a2, v37);
            if (v43)
            {
              v33 = v43;
              v34 = CFStringGetCStringPtr(v43, 0x8000100u);
              if (!v34)
              {
                v35 = 780895780;
                goto LABEL_87;
              }

LABEL_48:
              v45 = v34;
              v46 = 0;
LABEL_88:
              if (qword_100117E88)
              {
                v62 = qword_100117E88;
              }

              else
              {
                v62 = __stderrp;
              }

              fprintf(v62, "%s\n", v45);
              if (v46)
              {
                free(v46);
              }

              CFRelease(v33);
              goto LABEL_94;
            }

            v52 = sub_100035B80(0, v44);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              sub_1000A10A4();
            }

LABEL_74:

            if (qword_100117E88)
            {
              v60 = qword_100117E88;
            }

            else
            {
              v60 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
LABEL_94:
            *__error() = v29;
          }
        }

        else if (*buf)
        {
          v22 |= 0x20uLL;
        }
      }
    }
  }

  if (sub_10002B3E4())
  {
    v63 = v22 | 0x400000000;
  }

  else
  {
    v63 = v22;
  }

  v64 = sub_100054088();
  v65 = v63 | 0x80000000000;
  if (!v64)
  {
    v65 = v63;
  }

  *a5 |= v65;

  return v10;
}

uint64_t sub_10004B73C(double a1)
{
  if (a1 > 0.0)
  {
    if (a1 < 100.0)
    {
      if (qword_100117D18 != -1)
      {
        sub_1000A1130();
      }

      v2 = rand() * 100.0 / 2147483650.0;
      v3 = v2 > a1;
      if (v2 > a1)
      {
        if (byte_100117E80)
        {
          v4 = __error();
          v5 = *v4;
          v7 = sub_100035B80(v4, v6);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A122C();
          }

          *__error() = v5;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          return 1;
        }

        v14 = *__error();
        v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Should restrict submission due to roll of %.4f (pref is %.4f)", *&v2, *&a1);
        if (v15)
        {
          v17 = v15;
          CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
          if (!CStringPtr)
          {
            v19 = 3895693281;
LABEL_39:
            v22 = malloc_type_calloc(0x400uLL, 1uLL, v19);
            CFStringGetCString(v17, v22, 1024, 0x8000100u);
            v23 = v22;
            goto LABEL_40;
          }

          goto LABEL_29;
        }

        v24 = sub_100035B80(0, v16);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1000A12A0();
        }

        goto LABEL_34;
      }

      if (byte_100117E80)
      {
        v9 = __error();
        v10 = *v9;
        v12 = sub_100035B80(v9, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1144();
        }

        *__error() = v10;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v14 = *__error();
        v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Should not restrict submission due to roll of %.4f (pref is %.4f)", *&v2, *&a1);
        if (v20)
        {
          v17 = v20;
          CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
          if (!CStringPtr)
          {
            v19 = 1932020886;
            goto LABEL_39;
          }

LABEL_29:
          v22 = CStringPtr;
          v23 = 0;
LABEL_40:
          if (qword_100117E88)
          {
            v26 = qword_100117E88;
          }

          else
          {
            v26 = __stderrp;
          }

          fprintf(v26, "%s\n", v22);
          if (v23)
          {
            free(v23);
          }

          CFRelease(v17);
LABEL_46:
          *__error() = v14;
          return v3;
        }

        v24 = sub_100035B80(0, v21);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1000A11B8();
        }

LABEL_34:

        if (qword_100117E88)
        {
          v25 = qword_100117E88;
        }

        else
        {
          v25 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
        goto LABEL_46;
      }
    }

    return 0;
  }

  return 1;
}

void sub_10004BA7C(uint64_t a1)
{
  v2 = sub_10004A05C(*(a1 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 40), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v5 - *(a1 + 80);
  v9 = *(a1 + 120) | v8;
  v10 = *(a1 + 64) & 1;
  v11 = *(a1 + 32);

  sub_100035F94(v3, v11, v4, v2, v9, v10, v7, v5, v6);
}

uint64_t sub_10004BAF4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v17 = a4;
  v18 = a2;
  v19 = objc_alloc_init(SAMicrostackshotStatistics);
  v20 = sub_10002CE08(0, 0, a1, v18, 0, 1, v17, 0, a8 - a7, a8, 0.0, 0.0, 0.0, 0.0, a7, 0.0, 6u, (word_100117EC0 & 0x200) != 0, a5, a6, a9, a3, SHIDWORD(a3), 8, 0, 0, 0, 0, 0, 0, 0, 0, v19, 0, 0, 0, 0);

  v21 = [v19 total];
  v22 = [v21 num_out_of_order] != 0;

  v23 = [v19 total];
  v24 = [v23 num_missing_load_info];

  if (v24)
  {
    v25 = ((v22 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v25 = v22 << 41;
  }

  if ([v19 bytes_not_microstackshots])
  {
    v26 = v25 | 0x40000000000;
  }

  else
  {
    v26 = v25;
  }

  if ((v20 & 0x800000) != 0)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v43 = __error();
        v44 = *v43;
        v46 = sub_100035B80(v43, v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000A1488();
        }

        *__error() = v44;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v137 = *__error();
        v47 = sub_100035B20(a1);
        v48 = [v19 total];
        v49 = [v48 num_out_of_order];
        v50 = [v19 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v47, a1, v49, [v50 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v42 = 2259332781;
            goto LABEL_81;
          }

LABEL_38:
          v63 = CStringPtr;
          v64 = 0;
LABEL_82:
          if (qword_100117E88)
          {
            v104 = qword_100117E88;
          }

          else
          {
            v104 = __stderrp;
          }

          fprintf(v104, "%s\n", v63);
          if (v64)
          {
            free(v64);
          }

          CFRelease(v38);
          goto LABEL_88;
        }

        v101 = sub_100035B80(v51, v52);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1544();
        }

LABEL_74:

        if (qword_100117E88)
        {
          v103 = qword_100117E88;
        }

        else
        {
          v103 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
LABEL_88:
        *__error() = v137;
      }

LABEL_89:
      if (byte_100117E80 == 1)
      {
        v105 = __error();
        v106 = *v105;
        v108 = sub_100035B80(v105, v107);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1B40();
        }

        *__error() = v106;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v109 = *__error();
        v110 = sub_100035B20(a1);
        v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: done reporting (%#llx)", v110, a1, v20);
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
            v115 = malloc_type_calloc(0x400uLL, 1uLL, 0x56910AC4uLL);
            CFStringGetCString(v113, v115, 1024, 0x8000100u);
            v116 = v115;
          }

          if (qword_100117E88)
          {
            v118 = qword_100117E88;
          }

          else
          {
            v118 = __stderrp;
          }

          fprintf(v118, "%s\n", v115);
          if (v116)
          {
            free(v116);
          }

          v119 = v113;
LABEL_146:
          CFRelease(v119);
LABEL_147:
          *__error() = v109;
          goto LABEL_148;
        }

        v117 = sub_100035B80(0, v112);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1BCC();
        }

        goto LABEL_135;
      }

      goto LABEL_148;
    }

    if (byte_100117E80)
    {
      v65 = __error();
      v66 = *v65;
      v68 = sub_100035B80(v65, v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1314();
      }

      *__error() = v66;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v69 = *__error();
      v70 = [v19 total];
      v71 = [v70 num_out_of_order];
      v72 = [v19 total];
      v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v71, [v72 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v73)
      {
        v76 = CFStringGetCStringPtr(v73, 0x8000100u);
        if (!v76)
        {
          v77 = 2259332781;
LABEL_115:
          v99 = malloc_type_calloc(0x400uLL, 1uLL, v77);
          CFStringGetCString(v73, v99, 1024, 0x8000100u);
          v100 = v99;
          goto LABEL_116;
        }

LABEL_65:
        v99 = v76;
        v100 = 0;
LABEL_116:
        if (qword_100117E88)
        {
          v121 = qword_100117E88;
        }

        else
        {
          v121 = __stderrp;
        }

        fprintf(v121, "%s\n", v99);
        if (v100)
        {
          free(v100);
        }

        CFRelease(v73);
        goto LABEL_122;
      }

      v102 = sub_100035B80(v74, v75);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        sub_1000A13D0();
      }

LABEL_110:

      if (qword_100117E88)
      {
        v120 = qword_100117E88;
      }

      else
      {
        v120 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v120);
LABEL_122:
      *__error() = v69;
    }
  }

  else if (v26)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v27 = __error();
        v28 = *v27;
        v30 = sub_100035B80(v27, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_100035B20(a1);
          v136 = [v19 total];
          v32 = [v136 num_out_of_order];
          v33 = [v19 total];
          *buf = 136447234;
          v139 = v31;
          v140 = 1024;
          *v141 = a1;
          *&v141[4] = 2048;
          *&v141[6] = v32;
          *&v141[14] = 2048;
          *&v141[16] = [v33 num_missing_load_info];
          v142 = 2048;
          v143 = [v19 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x30u);
        }

        *__error() = v28;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v137 = *__error();
        v34 = sub_100035B20(a1);
        v35 = [v19 total];
        v36 = [v35 num_out_of_order];
        v37 = [v19 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v34, a1, v36, [v37 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v42 = 256102797;
LABEL_81:
            v63 = malloc_type_calloc(0x400uLL, 1uLL, v42);
            CFStringGetCString(v38, v63, 1024, 0x8000100u);
            v64 = v63;
            goto LABEL_82;
          }

          goto LABEL_38;
        }

        v101 = sub_100035B80(v39, v40);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
        {
          sub_1000A16B8();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v78 = __error();
      v79 = *v78;
      v81 = sub_100035B80(v78, v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = [v19 total];
        v83 = [v82 num_out_of_order];
        v84 = [v19 total];
        *buf = 134218496;
        v139 = v83;
        v140 = 2048;
        *v141 = [v84 num_missing_load_info];
        *&v141[8] = 2048;
        *&v141[10] = [v19 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v79;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v69 = *__error();
      v85 = [v19 total];
      v86 = [v85 num_out_of_order];
      v87 = [v19 total];
      v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v86, [v87 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v73)
      {
        v76 = CFStringGetCStringPtr(v73, 0x8000100u);
        if (!v76)
        {
          v77 = 256102797;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v102 = sub_100035B80(v88, v89);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        sub_1000A1600();
      }

      goto LABEL_110;
    }
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v53 = __error();
        v54 = *v53;
        v56 = sub_100035B80(v53, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A19C8();
        }

        *__error() = v54;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v137 = *__error();
        v57 = sub_100035B20(a1);
        v58 = [v19 total];
        v59 = [v58 num_out_of_order];
        v60 = [v19 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v57, a1, v59, [v60 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v42 = 843371135;
            goto LABEL_81;
          }

          goto LABEL_38;
        }

        v101 = sub_100035B80(v61, v62);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1A84();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v90 = __error();
      v91 = *v90;
      v93 = sub_100035B80(v90, v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A1774();
      }

      *__error() = v91;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v69 = *__error();
      v94 = [v19 total];
      v95 = [v94 num_out_of_order];
      v96 = [v19 total];
      v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v95, [v96 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v73)
      {
        v76 = CFStringGetCStringPtr(v73, 0x8000100u);
        if (!v76)
        {
          v77 = 843371135;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v102 = sub_100035B80(v97, v98);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        sub_1000A1830();
      }

      goto LABEL_110;
    }
  }

  if (byte_100117E80 == 1)
  {
    v122 = __error();
    v123 = *v122;
    v125 = sub_100035B80(v122, v124);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A18E8();
    }

    *__error() = v123;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v109 = *__error();
    v126 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: done reporting (%#llx)", v20);
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
        v130 = malloc_type_calloc(0x400uLL, 1uLL, 0x56910AC4uLL);
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

      v119 = v128;
      goto LABEL_146;
    }

    v132 = sub_100035B80(0, v127);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      sub_1000A1958();
    }

LABEL_135:
    if (qword_100117E88)
    {
      v133 = qword_100117E88;
    }

    else
    {
      v133 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v133);
    goto LABEL_147;
  }

LABEL_148:

  return v20;
}

void sub_10004CA48(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, double a7, double a8, double a9)
{
  v16 = a2;
  v173 = a4;
  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v17 = __error();
      v18 = *v17;
      v20 = sub_100035B80(v17, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        v189 = sub_100035B20(a1);
        v190 = 1024;
        *v191 = a1;
        *&v191[4] = 2048;
        *&v191[6] = a5;
        *&v191[14] = 2048;
        *&v191[16] = a7;
        v192 = 2048;
        v193 = a3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x30u);
      }

      *__error() = v18;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_52;
    }

    v22 = *__error();
    v23 = sub_100035B20(a1);
    v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", v23, a1, a5, *&a7, a3);
    if (v24)
    {
      v26 = v24;
      v27 = a5;
      CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
      if (CStringPtr)
      {
        v29 = CStringPtr;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE3150D5uLL);
        CFStringGetCString(v26, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100117E88)
      {
        v44 = qword_100117E88;
      }

      else
      {
        v44 = __stderrp;
      }

      fprintf(v44, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v26);
      a5 = v27;
      goto LABEL_51;
    }

    v42 = sub_100035B80(0, v25);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v164 = sub_100035B20(a1);
      *buf = 136316162;
      v189 = v164;
      v190 = 1024;
      *v191 = a1;
      *&v191[4] = 2048;
      *&v191[6] = a5;
      *&v191[14] = 2048;
      *&v191[16] = a7;
      v192 = 2048;
      v193 = a3;
      _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x30u);
    }

    if (qword_100117E88)
    {
      v43 = qword_100117E88;
    }

    else
    {
      v43 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
LABEL_51:
    *__error() = v22;
    goto LABEL_52;
  }

  if (byte_100117E80)
  {
    v31 = __error();
    v32 = *v31;
    v34 = sub_100035B80(v31, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v189 = a5;
      v190 = 2048;
      *v191 = a7;
      *&v191[8] = 2048;
      *&v191[10] = a3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x20u);
    }

    *__error() = v32;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v22 = *__error();
    v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: %llu bytes over the last %.0f seconds with flags %#llx", a5, *&a7, a3);
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
        v40 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE3150D5uLL);
        CFStringGetCString(v38, v40, 1024, 0x8000100u);
        v41 = v40;
      }

      if (qword_100117E88)
      {
        v46 = qword_100117E88;
      }

      else
      {
        v46 = __stderrp;
      }

      fprintf(v46, "%s\n", v40);
      if (v41)
      {
        free(v41);
      }

      CFRelease(v38);
      goto LABEL_51;
    }

    v45 = sub_100035B80(0, v37);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v189 = a5;
      v190 = 2048;
      *v191 = a7;
      *&v191[8] = 2048;
      *&v191[10] = a3;
      _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "Unable to format: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x20u);
    }

    if (qword_100117E88)
    {
      v43 = qword_100117E88;
    }

    else
    {
      v43 = __stderrp;
    }

    goto LABEL_31;
  }

LABEL_52:
  v47 = sub_100035BF0(a1);
  if (!v16)
  {
    v16 = sub_100035C38(a1);
  }

  v187 = 0;
  v48 = [v16 lastPathComponent];
  v49 = sub_10004AFBC(v48, a1, "disk writes", 160, &v187);

  if ((word_100117EC0 & 0x200) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v59 = a3;
        v60 = __error();
        v61 = *v60;
        v63 = sub_100035B80(v60, v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1C58();
        }

        *__error() = v61;
        a3 = v59;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v170 = a5;
      v169 = *__error();
      v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to suppression cookie file");
      if (!v56)
      {
        v58 = sub_100035B80(0, v64);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1C94();
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v50 = a3;
        v51 = __error();
        v52 = *v51;
        v54 = sub_100035B80(v51, v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1CD0();
        }

        *__error() = v52;
        a3 = v50;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v170 = a5;
      v169 = *__error();
      v55 = sub_100035B20(a1);
      v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to suppression cookie file", v55, a1);
      if (!v56)
      {
        v58 = sub_100035B80(0, v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1D50();
        }

LABEL_83:

        if (qword_100117E88)
        {
          v71 = qword_100117E88;
        }

        else
        {
          v71 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v71);
        a5 = v170;
LABEL_87:
        *__error() = v169;
LABEL_88:
        v49 |= 0x8000uLL;
        goto LABEL_89;
      }
    }

    v65 = v56;
    v66 = v47;
    v67 = CFStringGetCStringPtr(v56, 0x8000100u);
    if (v67)
    {
      v68 = v67;
      v69 = 0;
    }

    else
    {
      v68 = malloc_type_calloc(0x400uLL, 1uLL, 0x168FDD66uLL);
      CFStringGetCString(v65, v68, 1024, 0x8000100u);
      v69 = v68;
    }

    if (qword_100117E88)
    {
      v70 = qword_100117E88;
    }

    else
    {
      v70 = __stderrp;
    }

    fprintf(v70, "%s\n", v68);
    if (v69)
    {
      free(v69);
    }

    CFRelease(v65);
    a5 = v170;
    v47 = v66;
    goto LABEL_87;
  }

LABEL_89:
  if (sub_10004B73C(*&qword_100117EB0))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v87 = __error();
        v88 = *v87;
        v90 = sub_100035B80(v87, v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A2004();
        }

        *__error() = v88;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_147;
      }

      v76 = *__error();
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to tasking-specified sampling");
      if (!v78)
      {
        v80 = sub_100035B80(0, v91);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2040();
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v72 = __error();
        v73 = *v72;
        v75 = sub_100035B80(v72, v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A207C();
        }

        *__error() = v73;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_147;
      }

      v76 = *__error();
      v77 = sub_100035B20(a1);
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to tasking-specified sampling", v77, a1);
      if (!v78)
      {
        v80 = sub_100035B80(0, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          sub_1000A20FC();
        }

LABEL_142:

        if (qword_100117E88)
        {
          v119 = qword_100117E88;
        }

        else
        {
          v119 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v119);
LABEL_146:
        *__error() = v76;
LABEL_147:
        v49 |= 0x200000uLL;
LABEL_148:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v130 = __error();
            v131 = *v130;
            v133 = sub_100035B80(v130, v132);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v189 = v49;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "disk writes: not monitoring due to conditions %#llx", buf, 0xCu);
            }

            *__error() = v131;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_181;
          }

          v125 = *__error();
          v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to conditions %#llx", v49);
          if (!v127)
          {
            v129 = sub_100035B80(0, v134);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
            {
              sub_1000A217C();
            }

            goto LABEL_176;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v120 = __error();
            v121 = *v120;
            v123 = sub_100035B80(v120, v122);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v124 = sub_100035B20(a1);
              *buf = 136446722;
              v189 = v124;
              v190 = 1024;
              *v191 = a1;
              *&v191[4] = 2048;
              *&v191[6] = v49;
              _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: not monitoring due to conditions %#llx", buf, 0x1Cu);
            }

            *__error() = v121;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_181;
          }

          v125 = *__error();
          v126 = sub_100035B20(a1);
          v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to conditions %#llx", v126, a1, v49);
          if (!v127)
          {
            v129 = sub_100035B80(0, v128);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
            {
              sub_1000A21EC();
            }

LABEL_176:

            if (qword_100117E88)
            {
              v141 = qword_100117E88;
            }

            else
            {
              v141 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v141);
LABEL_180:
            *__error() = v125;
LABEL_181:
            sub_10003673C(a1, v16, v47, v49, v187, a5, a8 - a7, a8);
            v85 = v173;
            goto LABEL_182;
          }
        }

        v135 = v127;
        v136 = a5;
        v137 = CFStringGetCStringPtr(v127, 0x8000100u);
        if (v137)
        {
          v138 = v137;
          v139 = 0;
        }

        else
        {
          v138 = malloc_type_calloc(0x400uLL, 1uLL, 0x3BDC1009uLL);
          CFStringGetCString(v135, v138, 1024, 0x8000100u);
          v139 = v138;
        }

        if (qword_100117E88)
        {
          v140 = qword_100117E88;
        }

        else
        {
          v140 = __stderrp;
        }

        fprintf(v140, "%s\n", v138);
        if (v139)
        {
          free(v139);
        }

        CFRelease(v135);
        a5 = v136;
        goto LABEL_180;
      }
    }

    v92 = v78;
    v93 = a5;
    v94 = CFStringGetCStringPtr(v78, 0x8000100u);
    if (v94)
    {
      v95 = v94;
      v96 = 0;
    }

    else
    {
      v95 = malloc_type_calloc(0x400uLL, 1uLL, 0xB53EA0ECuLL);
      CFStringGetCString(v92, v95, 1024, 0x8000100u);
      v96 = v95;
    }

    if (qword_100117E88)
    {
      v109 = qword_100117E88;
    }

    else
    {
      v109 = __stderrp;
    }

    fprintf(v109, "%s\n", v95);
    if (v96)
    {
      free(v96);
    }

    CFRelease(v92);
    a5 = v93;
    goto LABEL_146;
  }

  if (v49)
  {
    goto LABEL_148;
  }

  v81 = v47;
  v82 = v187;
  if ((v187 & 0x80000000000) != 0)
  {
    if (sub_100062D04())
    {
      v97 = a6;
      if ((a1 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v142 = __error();
          v143 = *v142;
          v145 = sub_100035B80(v142, v144);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "disk writes: deferring report generation due to game mode", buf, 2u);
          }

          *__error() = v143;
          v97 = a6;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_222;
        }

        v103 = v97;
        v104 = *__error();
        v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: deferring report generation due to game mode");
        if (!v106)
        {
          v108 = sub_100035B80(0, v146);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            sub_1000A1F48();
          }

          goto LABEL_217;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v98 = __error();
          v99 = *v98;
          v101 = sub_100035B80(v98, v100);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = sub_100035B20(a1);
            *buf = 136446466;
            v189 = v102;
            v190 = 1024;
            *v191 = a1;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: deferring report generation due to game mode", buf, 0x12u);
          }

          *__error() = v99;
          v97 = a6;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_222;
        }

        v103 = v97;
        v104 = *__error();
        v105 = sub_100035B20(a1);
        v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: deferring report generation due to game mode", v105, a1);
        if (!v106)
        {
          v108 = sub_100035B80(0, v107);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            sub_1000A1F84();
          }

LABEL_217:

          if (qword_100117E88)
          {
            v167 = qword_100117E88;
          }

          else
          {
            v167 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v167);
          v97 = v103;
LABEL_221:
          *__error() = v104;
LABEL_222:
          v85 = v173;
          sub_1000647FC(a1, v16, a3, v173, a5, v97, a7, a8, a9);
          sub_10003673C(a1, v16, v81, 0, v82 | 0x100000000000, a5, a8 - a7, a8);
          goto LABEL_182;
        }
      }

      v147 = v106;
      v172 = v104;
      v148 = a3;
      v149 = v103;
      v150 = a5;
      v151 = CFStringGetCStringPtr(v106, 0x8000100u);
      if (v151)
      {
        v152 = v151;
        v153 = 0;
      }

      else
      {
        v152 = malloc_type_calloc(0x400uLL, 1uLL, 0x3A0699CAuLL);
        CFStringGetCString(v147, v152, 1024, 0x8000100u);
        v153 = v152;
      }

      if (qword_100117E88)
      {
        v165 = qword_100117E88;
      }

      else
      {
        v165 = __stderrp;
      }

      fprintf(v165, "%s\n", v152);
      if (v153)
      {
        free(v153);
      }

      CFRelease(v147);
      a5 = v150;
      v97 = v149;
      a3 = v148;
      v104 = v172;
      goto LABEL_221;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v154 = __error();
        v155 = *v154;
        v157 = sub_100035B80(v154, v156);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1DD0();
        }

        *__error() = v155;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_102;
      }

      v114 = *__error();
      v116 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: cannot defer report generation for game mode");
      if (!v116)
      {
        v118 = sub_100035B80(0, v158);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1E0C();
        }

        goto LABEL_225;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v110 = __error();
        v111 = *v110;
        v113 = sub_100035B80(v110, v112);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1E48();
        }

        *__error() = v111;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_102;
      }

      v114 = *__error();
      v115 = sub_100035B20(a1);
      v116 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: cannot defer report generation for game mode", v115, a1);
      if (!v116)
      {
        v118 = sub_100035B80(0, v117);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1EC8();
        }

LABEL_225:

        if (qword_100117E88)
        {
          v168 = qword_100117E88;
        }

        else
        {
          v168 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v168);
LABEL_229:
        *__error() = v114;
        goto LABEL_102;
      }
    }

    v159 = v116;
    v160 = a5;
    v161 = CFStringGetCStringPtr(v116, 0x8000100u);
    if (v161)
    {
      v162 = v161;
      v163 = 0;
    }

    else
    {
      v162 = malloc_type_calloc(0x400uLL, 1uLL, 0x6EDFAA03uLL);
      CFStringGetCString(v159, v162, 1024, 0x8000100u);
      v163 = v162;
    }

    if (qword_100117E88)
    {
      v166 = qword_100117E88;
    }

    else
    {
      v166 = __stderrp;
    }

    fprintf(v166, "%s\n", v162);
    if (v163)
    {
      free(v163);
    }

    CFRelease(v159);
    a5 = v160;
    goto LABEL_229;
  }

LABEL_102:
  v83 = sub_1000359B8("Disk writes resource for [%d]", a1);
  v84 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DEEC;
  block[3] = &unk_100109030;
  v186 = a1;
  v175 = v16;
  v178 = a3;
  v85 = v173;
  v179 = a5;
  v180 = a7;
  v181 = a8;
  v182 = a6;
  v183 = a9;
  v184 = v81;
  v185 = v82;
  v176 = v173;
  v177 = v83;
  v86 = v83;
  dispatch_async(v84, block);

LABEL_182:
}

void sub_10004DEEC(uint64_t a1)
{
  v2 = sub_10004BAF4(*(a1 + 120), *(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64), *(a1 + 88), *(a1 + 72), *(a1 + 80), *(a1 + 96));
  v3 = *(a1 + 120);
  v4 = *(a1 + 104);
  v5 = *(a1 + 80);
  v6 = v5 - *(a1 + 72);
  v7 = *(a1 + 64);
  v9 = *(a1 + 112) | v8;
  v10 = *(a1 + 32);

  sub_10003673C(v3, v10, v4, v2, v9, v7, v6, v5);
}

uint64_t sub_10004DF5C(void *a1, char a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = a1;
  v22 = [v21 lastPathComponent];
  v23 = objc_alloc_init(SAMicrostackshotStatistics);
  v24 = sub_10002CE08(0, 0, 0xFFFFFFFFLL, v21, 0, 1, v18, 0, a9 - a8, a9, a9 - a7, a9, 0.0, 0.0, a7, 0.0, 0xFu, HIBYTE(word_100117EC0) & 1, 0, 0, 0.0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, v23, v20, v19, v17, a2);

  v25 = [v23 total];
  v26 = [v25 num_out_of_order] != 0;

  v27 = [v23 total];
  v28 = [v27 num_missing_load_info];

  if (v28)
  {
    v29 = ((v26 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v29 = v26 << 41;
  }

  if ([v23 bytes_not_microstackshots])
  {
    v29 |= 0x40000000000uLL;
  }

  if ((v24 & 0x800000) != 0)
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v46 = __error();
        v47 = *v46;
        v49 = sub_100035B80(v46, v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1000A2278();
        }

        *__error() = v47;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v37 = *__error();
        v50 = [v23 total];
        v51 = [v50 num_out_of_order];
        v52 = [v23 total];
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v51, [v52 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v41)
        {
          CStringPtr = CFStringGetCStringPtr(v41, 0x8000100u);
          if (!CStringPtr)
          {
            v45 = 550510900;
            goto LABEL_80;
          }

LABEL_37:
          v64 = CStringPtr;
          v65 = 0;
LABEL_81:
          if (qword_100117E88)
          {
            v105 = qword_100117E88;
          }

          else
          {
            v105 = __stderrp;
          }

          fprintf(v105, "%s\n", v64);
          if (v65)
          {
            free(v65);
          }

          CFRelease(v41);
          goto LABEL_87;
        }

        v102 = sub_100035B80(v53, v54);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2334();
        }

LABEL_73:

        if (qword_100117E88)
        {
          v104 = qword_100117E88;
        }

        else
        {
          v104 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
LABEL_87:
        *__error() = v37;
      }

LABEL_88:
      if (byte_100117E80 == 1)
      {
        v106 = __error();
        v107 = *v106;
        v109 = sub_100035B80(v106, v108);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A2844();
        }

        *__error() = v107;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v110 = *__error();
        v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: done reporting (%#llx)", v22, v24);
        if (!v111)
        {
          v113 = sub_100035B80(0, v112);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
          {
            sub_1000A28BC();
          }

LABEL_130:

          if (qword_100117E88)
          {
            v126 = qword_100117E88;
          }

          else
          {
            v126 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v126);
LABEL_134:
          *__error() = v110;
          goto LABEL_135;
        }

        goto LABEL_119;
      }

      goto LABEL_135;
    }

    if (byte_100117E80)
    {
      v66 = __error();
      v67 = *v66;
      v69 = sub_100035B80(v66, v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000A23EC();
      }

      *__error() = v67;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v70 = *__error();
      v71 = [v23 total];
      v72 = [v71 num_out_of_order];
      v73 = [v23 total];
      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v72, [v73 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v74)
      {
        v77 = CFStringGetCStringPtr(v74, 0x8000100u);
        if (!v77)
        {
          v78 = 550510900;
LABEL_104:
          v100 = malloc_type_calloc(0x400uLL, 1uLL, v78);
          CFStringGetCString(v74, v100, 1024, 0x8000100u);
          v101 = v100;
          goto LABEL_105;
        }

LABEL_64:
        v100 = v77;
        v101 = 0;
LABEL_105:
        if (qword_100117E88)
        {
          v115 = qword_100117E88;
        }

        else
        {
          v115 = __stderrp;
        }

        fprintf(v115, "%s\n", v100);
        if (v101)
        {
          free(v101);
        }

        CFRelease(v74);
        goto LABEL_111;
      }

      v103 = sub_100035B80(v75, v76);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000A24A8();
      }

LABEL_99:

      if (qword_100117E88)
      {
        v114 = qword_100117E88;
      }

      else
      {
        v114 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v114);
LABEL_111:
      *__error() = v70;
    }
  }

  else if (v29)
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v30 = __error();
        v31 = *v30;
        v33 = sub_100035B80(v30, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v23 total];
          v35 = [v34 num_out_of_order];
          v36 = [v23 total];
          *buf = 138544130;
          v129 = v22;
          v130 = 2048;
          v131 = v35;
          v132 = 2048;
          v133 = [v36 num_missing_load_info];
          v134 = 2048;
          v135 = [v23 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x2Au);
        }

        *__error() = v31;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v37 = *__error();
        v38 = [v23 total];
        v39 = [v38 num_out_of_order];
        v40 = [v23 total];
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v39, [v40 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v41)
        {
          CStringPtr = CFStringGetCStringPtr(v41, 0x8000100u);
          if (!CStringPtr)
          {
            v45 = 3848679309;
LABEL_80:
            v64 = malloc_type_calloc(0x400uLL, 1uLL, v45);
            CFStringGetCString(v41, v64, 1024, 0x8000100u);
            v65 = v64;
            goto LABEL_81;
          }

          goto LABEL_37;
        }

        v102 = sub_100035B80(v42, v43);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2560();
        }

        goto LABEL_73;
      }

      goto LABEL_88;
    }

    if (byte_100117E80)
    {
      v79 = __error();
      v80 = *v79;
      v82 = sub_100035B80(v79, v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = [v23 total];
        v84 = [v83 num_out_of_order];
        v85 = [v23 total];
        *buf = 134218496;
        v129 = v84;
        v130 = 2048;
        v131 = [v85 num_missing_load_info];
        v132 = 2048;
        v133 = [v23 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v80;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v70 = *__error();
      v86 = [v23 total];
      v87 = [v86 num_out_of_order];
      v88 = [v23 total];
      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v87, [v88 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v74)
      {
        v77 = CFStringGetCStringPtr(v74, 0x8000100u);
        if (!v77)
        {
          v78 = 3848679309;
          goto LABEL_104;
        }

        goto LABEL_64;
      }

      v103 = sub_100035B80(v89, v90);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2618();
      }

      goto LABEL_99;
    }
  }

  else
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v55 = __error();
        v56 = *v55;
        v58 = sub_100035B80(v55, v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A26D0();
        }

        *__error() = v56;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v37 = *__error();
        v59 = [v23 total];
        v60 = [v59 num_out_of_order];
        v61 = [v23 total];
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v60, [v61 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v41)
        {
          CStringPtr = CFStringGetCStringPtr(v41, 0x8000100u);
          if (!CStringPtr)
          {
            v45 = 1384705646;
            goto LABEL_80;
          }

          goto LABEL_37;
        }

        v102 = sub_100035B80(v62, v63);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          sub_1000A278C();
        }

        goto LABEL_73;
      }

      goto LABEL_88;
    }

    if (byte_100117E80)
    {
      v91 = __error();
      v92 = *v91;
      v94 = sub_100035B80(v91, v93);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A2924();
      }

      *__error() = v92;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v70 = *__error();
      v95 = [v23 total];
      v96 = [v95 num_out_of_order];
      v97 = [v23 total];
      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v96, [v97 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v74)
      {
        v77 = CFStringGetCStringPtr(v74, 0x8000100u);
        if (!v77)
        {
          v78 = 1384705646;
          goto LABEL_104;
        }

        goto LABEL_64;
      }

      v103 = sub_100035B80(v98, v99);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000A29E0();
      }

      goto LABEL_99;
    }
  }

  if (byte_100117E80 == 1)
  {
    v116 = __error();
    v117 = *v116;
    v119 = sub_100035B80(v116, v118);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A2A98();
    }

    *__error() = v117;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v110 = *__error();
    v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: done reporting (%#llx)", v24);
    if (!v111)
    {
      v113 = sub_100035B80(0, v120);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2B08();
      }

      goto LABEL_130;
    }

LABEL_119:
    v121 = v111;
    v122 = CFStringGetCStringPtr(v111, 0x8000100u);
    if (v122)
    {
      v123 = v122;
      v124 = 0;
    }

    else
    {
      v123 = malloc_type_calloc(0x400uLL, 1uLL, 0x141E3C75uLL);
      CFStringGetCString(v121, v123, 1024, 0x8000100u);
      v124 = v123;
    }

    if (qword_100117E88)
    {
      v125 = qword_100117E88;
    }

    else
    {
      v125 = __stderrp;
    }

    fprintf(v125, "%s\n", v123);
    if (v124)
    {
      free(v124);
    }

    CFRelease(v121);
    goto LABEL_134;
  }

LABEL_135:

  return v24;
}

void sub_10004EDA4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = COERCE_DOUBLE(a3);
  v196 = a4;
  v19 = a5;
  v20 = a6;
  [v17 lastPathComponent];
  v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v195 = a2;
  if (v21 != 0.0)
  {
    if (byte_100117E80)
    {
      v22 = __error();
      v23 = *v22;
      v25 = sub_100035B80(v22, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138545154;
        v211 = v21;
        v212 = 2048;
        v213 = a7;
        v214 = 2048;
        v215 = a8;
        v216 = 2112;
        v217 = v18;
        v218 = 2112;
        v219 = v196;
        v220 = 2112;
        v221 = v19;
        v222 = 2112;
        v223 = v20;
        v224 = 2048;
        v225 = a2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%{public}@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x52u);
      }

      *__error() = v23;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_52;
    }

    v27 = *__error();
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", *&v21, *&a7, *&a8, *&v18, v196, v19, v20, a2);
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
        v32 = malloc_type_calloc(0x400uLL, 1uLL, 0x6C28AB8DuLL);
        CFStringGetCString(v30, v32, 1024, 0x8000100u);
        v33 = v32;
      }

      if (qword_100117E88)
      {
        v48 = qword_100117E88;
      }

      else
      {
        v48 = __stderrp;
      }

      fprintf(v48, "%s\n", v32);
      if (v33)
      {
        free(v33);
      }

      CFRelease(v30);
      a2 = v195;
      goto LABEL_51;
    }

    v46 = sub_100035B80(0, v29);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 138414082;
      v211 = v21;
      v212 = 2048;
      v213 = a7;
      v214 = 2048;
      v215 = a8;
      v216 = 2112;
      v217 = v18;
      v218 = 2112;
      v219 = v196;
      v220 = 2112;
      v221 = v19;
      v222 = 2112;
      v223 = v20;
      v224 = 2048;
      v225 = a2;
      _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "Unable to format: %@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x52u);
    }

    if (qword_100117E88)
    {
      v47 = qword_100117E88;
    }

    else
    {
      v47 = __stderrp;
    }

LABEL_43:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
LABEL_51:
    *__error() = v27;
    goto LABEL_52;
  }

  if (byte_100117E80)
  {
    v34 = __error();
    v35 = *v34;
    v37 = sub_100035B80(v34, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 134219522;
      v211 = a7;
      v212 = 2048;
      v213 = a8;
      v214 = 2112;
      v215 = v18;
      v216 = 2112;
      v217 = *&v196;
      v218 = 2112;
      v219 = v19;
      v220 = 2112;
      v221 = v20;
      v222 = 2048;
      v223 = a2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x48u);
    }

    *__error() = v35;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v27 = *__error();
    v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", *&a7, *&a8, *&v18, v196, v19, v20, a2);
    if (v39)
    {
      v41 = v39;
      v42 = v18;
      v43 = CFStringGetCStringPtr(v39, 0x8000100u);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
      }

      else
      {
        v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x6C28AB8DuLL);
        CFStringGetCString(v41, v44, 1024, 0x8000100u);
        v45 = v44;
      }

      if (qword_100117E88)
      {
        v50 = qword_100117E88;
      }

      else
      {
        v50 = __stderrp;
      }

      fprintf(v50, "%s\n", v44);
      if (v45)
      {
        free(v45);
      }

      CFRelease(v41);
      v18 = v42;
      a2 = v195;
      goto LABEL_51;
    }

    v49 = sub_100035B80(0, v40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 134219522;
      v211 = a7;
      v212 = 2048;
      v213 = a8;
      v214 = 2112;
      v215 = v18;
      v216 = 2112;
      v217 = *&v196;
      v218 = 2112;
      v219 = v19;
      v220 = 2112;
      v221 = v20;
      v222 = 2048;
      v223 = a2;
      _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "Unable to format: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x48u);
    }

    if (qword_100117E88)
    {
      v47 = qword_100117E88;
    }

    else
    {
      v47 = __stderrp;
    }

    goto LABEL_43;
  }

LABEL_52:
  if ((a2 & 3) == 3)
  {
    v170 = __error();
    v171 = *v170;
    v173 = sub_100035B80(v170, v172);
    if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
    {
      sub_1000A2BF0();
    }

    *__error() = v171;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v174 = v17;
      v175 = v20;
      v176 = *__error();
      v177 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Reporting power exception that is both fatal and background qos");
      if (v177)
      {
        v179 = v177;
        v180 = CFStringGetCStringPtr(v177, 0x8000100u);
        if (v180)
        {
LABEL_245:
          v188 = v180;
          v189 = 0;
LABEL_256:
          if (qword_100117E88)
          {
            v192 = qword_100117E88;
          }

          else
          {
            v192 = __stderrp;
          }

          fprintf(v192, "%s\n", v188);
          if (v189)
          {
            free(v189);
          }

          CFRelease(v179);
          goto LABEL_262;
        }

        v181 = 4278200866;
LABEL_255:
        v188 = malloc_type_calloc(0x400uLL, 1uLL, v181);
        CFStringGetCString(v179, v188, 1024, 0x8000100u);
        v189 = v188;
        goto LABEL_256;
      }

      v190 = sub_100035B80(0, v178);
      if (os_log_type_enabled(v190, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2C2C();
      }

LABEL_250:

      if (qword_100117E88)
      {
        v191 = qword_100117E88;
      }

      else
      {
        v191 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v191);
LABEL_262:
      *__error() = v176;
      v20 = v175;
      v17 = v174;
    }
  }

  else
  {
    if ((a2 & 3) != 0)
    {
      v209 = 0;
      *&v51 = COERCE_DOUBLE(sub_10004AFBC(*&v21, 0xFFFFFFFFLL, "power exception", 160, &v209));
      v52 = *&v51;
      if ((word_100117EC0 & 0x100) != 0)
      {
LABEL_89:
        if ((sub_100059C44([v17 UTF8String], 1) & 1) == 0 && sub_10004B73C(*&qword_100117EB8))
        {
          if (v21 == 0.0)
          {
            if (byte_100117E80)
            {
              v102 = __error();
              v103 = *v102;
              v105 = sub_100035B80(v102, v104);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
              {
                sub_1000A2EA0();
              }

              *__error() = v103;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 0)
            {
              goto LABEL_166;
            }

            v84 = *__error();
            v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to throttling the number of reports generated for 1st party processes");
            if (!v85)
            {
              v87 = sub_100035B80(0, v106);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
              {
                sub_1000A2EDC();
              }

              goto LABEL_161;
            }
          }

          else
          {
            if (byte_100117E80)
            {
              v80 = __error();
              v81 = *v80;
              v83 = sub_100035B80(v80, v82);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
              {
                sub_1000A2DC0();
              }

              *__error() = v81;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 0)
            {
              goto LABEL_166;
            }

            v84 = *__error();
            v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to throttling the number of reports generated for 1st party processes", *&v21);
            if (!v85)
            {
              v87 = sub_100035B80(0, v86);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
              {
                sub_1000A2E30();
              }

LABEL_161:

              if (qword_100117E88)
              {
                v140 = qword_100117E88;
              }

              else
              {
                v140 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v140);
              a2 = v195;
LABEL_165:
              *__error() = v84;
LABEL_166:
              *&v52 |= 0x200000uLL;
LABEL_167:
              if (v21 == 0.0)
              {
                if (byte_100117E80)
                {
                  v149 = __error();
                  v150 = *v149;
                  v152 = sub_100035B80(v149, v151);
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v211 = v52;
                    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "power exception: not monitoring due to conditions %#llx", buf, 0xCu);
                  }

                  *__error() = v150;
                  a2 = v195;
                }

                if (byte_100117E81 != 1 || dword_100117510 > 2)
                {
                  goto LABEL_200;
                }

                v145 = *__error();
                v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to conditions %#llx", *&v52);
                if (!v146)
                {
                  v148 = sub_100035B80(0, v153);
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A2F80();
                  }

                  goto LABEL_195;
                }
              }

              else
              {
                if (byte_100117E80)
                {
                  v141 = __error();
                  v142 = *v141;
                  v144 = sub_100035B80(v141, v143);
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v211 = v21;
                    v212 = 2048;
                    v213 = v52;
                    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: not monitoring due to conditions %#llx", buf, 0x16u);
                  }

                  *__error() = v142;
                  a2 = v195;
                }

                if (byte_100117E81 != 1 || dword_100117510 > 2)
                {
                  goto LABEL_200;
                }

                v145 = *__error();
                v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to conditions %#llx", *&v21, *&v52);
                if (!v146)
                {
                  v148 = sub_100035B80(0, v147);
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A2F18();
                  }

LABEL_195:

                  if (qword_100117E88)
                  {
                    v161 = qword_100117E88;
                  }

                  else
                  {
                    v161 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v161);
LABEL_199:
                  a2 = v195;
                  *__error() = v145;
LABEL_200:
                  v162 = v209;
                  v163 = a9 - a7;
                  v164 = v17;
                  v165 = *&v52;
LABEL_201:
                  sub_1000363C4(v164, v165, v162, a2, v163, a9);
                  goto LABEL_202;
                }
              }

              v154 = v146;
              v155 = v19;
              v156 = v18;
              v157 = CFStringGetCStringPtr(v146, 0x8000100u);
              if (v157)
              {
                v158 = v157;
                v159 = 0;
              }

              else
              {
                v158 = malloc_type_calloc(0x400uLL, 1uLL, 0xFC841333uLL);
                CFStringGetCString(v154, v158, 1024, 0x8000100u);
                v159 = v158;
              }

              if (qword_100117E88)
              {
                v160 = qword_100117E88;
              }

              else
              {
                v160 = __stderrp;
              }

              fprintf(v160, "%s\n", v158);
              if (v159)
              {
                free(v159);
              }

              CFRelease(v154);
              v18 = v156;
              v19 = v155;
              goto LABEL_199;
            }
          }

          v107 = v85;
          v108 = v19;
          v109 = v18;
          v110 = CFStringGetCStringPtr(v85, 0x8000100u);
          if (v110)
          {
            v111 = v110;
            v112 = 0;
          }

          else
          {
            v111 = malloc_type_calloc(0x400uLL, 1uLL, 0xCCF352D7uLL);
            CFStringGetCString(v107, v111, 1024, 0x8000100u);
            v112 = v111;
          }

          if (qword_100117E88)
          {
            v121 = qword_100117E88;
          }

          else
          {
            v121 = __stderrp;
          }

          fprintf(v121, "%s\n", v111);
          if (v112)
          {
            free(v112);
          }

          CFRelease(v107);
          v18 = v109;
          v19 = v108;
          a2 = v195;
          goto LABEL_165;
        }

        if (v52 != 0.0)
        {
          goto LABEL_167;
        }

        v194 = v18;
        v88 = v209;
        if ((v209 & 0x80000000000) == 0)
        {
          goto LABEL_103;
        }

        if (sub_100062D04())
        {
          if (v21 == 0.0)
          {
            if (byte_100117E80)
            {
              v122 = __error();
              v123 = *v122;
              v125 = sub_100035B80(v122, v124);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "power exception: deferring report generation due to game mode", buf, 2u);
              }

              *__error() = v123;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 2)
            {
              goto LABEL_224;
            }

            v98 = *__error();
            v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: deferring report generation due to game mode");
            if (!v99)
            {
              v101 = sub_100035B80(0, v126);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                sub_1000A31B8();
              }

              goto LABEL_219;
            }
          }

          else
          {
            if (byte_100117E80)
            {
              v94 = __error();
              v95 = *v94;
              v97 = sub_100035B80(v94, v96);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v211 = v21;
                _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: deferring report generation due to game mode", buf, 0xCu);
              }

              *__error() = v95;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 2)
            {
              goto LABEL_224;
            }

            v98 = *__error();
            v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: deferring report generation due to game mode", *&v21);
            if (!v99)
            {
              v101 = sub_100035B80(0, v100);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                sub_1000A3148();
              }

LABEL_219:

              if (qword_100117E88)
              {
                v168 = qword_100117E88;
              }

              else
              {
                v168 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v168);
LABEL_223:
              *__error() = v98;
LABEL_224:
              sub_100064B28(v17, a2, *&v194, v196, v19, v20, a7, a8, a9);
              v163 = a9 - a7;
              v162 = v88 | 0x100000000000;
              v18 = v194;
              v164 = v17;
              v165 = 0;
              goto LABEL_201;
            }
          }

          v127 = v99;
          v128 = CFStringGetCStringPtr(v99, 0x8000100u);
          if (v128)
          {
            v129 = v128;
            v130 = 0;
          }

          else
          {
            v129 = malloc_type_calloc(0x400uLL, 1uLL, 0x1956EB41uLL);
            CFStringGetCString(v127, v129, 1024, 0x8000100u);
            v130 = v129;
          }

          if (qword_100117E88)
          {
            v166 = qword_100117E88;
          }

          else
          {
            v166 = __stderrp;
          }

          fprintf(v166, "%s\n", v129);
          if (v130)
          {
            free(v130);
          }

          CFRelease(v127);
          a2 = v195;
          goto LABEL_223;
        }

        if (v21 == 0.0)
        {
          if (byte_100117E80)
          {
            v131 = __error();
            v132 = *v131;
            v134 = sub_100035B80(v131, v133);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
            {
              sub_1000A30D0();
            }

            *__error() = v132;
            v21 = 0.0;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_103;
          }

          v117 = *__error();
          v118 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: cannot defer report generation for game mode");
          if (!v118)
          {
            v120 = sub_100035B80(0, v135);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
            {
              sub_1000A310C();
            }

            goto LABEL_227;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v113 = __error();
            v114 = *v113;
            v116 = sub_100035B80(v113, v115);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              sub_1000A2FF0();
            }

            *__error() = v114;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_103;
          }

          v117 = *__error();
          v118 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: cannot defer report generation for game mode", *&v21);
          if (!v118)
          {
            v120 = sub_100035B80(0, v119);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
            {
              sub_1000A3060();
            }

LABEL_227:

            if (qword_100117E88)
            {
              v169 = qword_100117E88;
            }

            else
            {
              v169 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v169);
LABEL_231:
            *__error() = v117;
LABEL_103:
            v89 = [v17 lastPathComponent];
            v90 = sub_1000359B8("power exception for %s", [v89 UTF8String]);

            dispatch_get_global_queue(9, 0);
            v92 = v91 = a2;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000505FC;
            block[3] = &unk_100109058;
            v198 = v17;
            v204 = v91;
            v199 = *&v194;
            v200 = v196;
            v201 = v19;
            v205 = a7;
            v206 = a8;
            v207 = a9;
            v208 = v88;
            v18 = v194;
            v202 = v20;
            v203 = v90;
            v93 = v90;
            dispatch_async(v92, block);

            goto LABEL_202;
          }
        }

        v136 = v118;
        v137 = CFStringGetCStringPtr(v118, 0x8000100u);
        if (v137)
        {
          v138 = v137;
          v139 = 0;
        }

        else
        {
          v138 = malloc_type_calloc(0x400uLL, 1uLL, 0x3266B2E6uLL);
          CFStringGetCString(v136, v138, 1024, 0x8000100u);
          v139 = v138;
        }

        if (qword_100117E88)
        {
          v167 = qword_100117E88;
        }

        else
        {
          v167 = __stderrp;
        }

        fprintf(v167, "%s\n", v138);
        if (v139)
        {
          free(v139);
        }

        CFRelease(v136);
        a2 = v195;
        goto LABEL_231;
      }

      if (v21 == 0.0)
      {
        if (byte_100117E80)
        {
          v62 = v51;
          v63 = __error();
          v64 = *v63;
          v66 = sub_100035B80(v63, v65);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A2D48();
          }

          *__error() = v64;
          v21 = 0.0;
          v52 = *&v62;
          a2 = v195;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_88;
        }

        v67 = *__error();
        v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to suppression cookie file");
        v193 = v67;
        if (!v59)
        {
          v61 = sub_100035B80(0, v68);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            sub_1000A2D84();
          }

          goto LABEL_83;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v53 = v51;
          v54 = __error();
          v55 = *v54;
          v57 = sub_100035B80(v54, v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A2C68();
          }

          *__error() = v55;
          v52 = *&v53;
          a2 = v195;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_88;
        }

        v58 = *__error();
        v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to suppression cookie file", *&v21);
        v193 = v58;
        if (!v59)
        {
          v61 = sub_100035B80(0, v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            sub_1000A2CD8();
          }

LABEL_83:

          if (qword_100117E88)
          {
            v79 = qword_100117E88;
          }

          else
          {
            v79 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v79);
          a2 = v195;
LABEL_87:
          *__error() = v193;
LABEL_88:
          *&v52 |= 0x8000uLL;
          goto LABEL_89;
        }
      }

      v69 = v59;
      v70 = v21;
      v71 = v17;
      v72 = v20;
      v73 = v19;
      v74 = v18;
      v75 = CFStringGetCStringPtr(v59, 0x8000100u);
      if (v75)
      {
        v76 = v75;
        v77 = 0;
      }

      else
      {
        v76 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF3FC4A2uLL);
        CFStringGetCString(v69, v76, 1024, 0x8000100u);
        v77 = v76;
      }

      if (qword_100117E88)
      {
        v78 = qword_100117E88;
      }

      else
      {
        v78 = __stderrp;
      }

      fprintf(v78, "%s\n", v76);
      if (v77)
      {
        free(v77);
      }

      CFRelease(v69);
      v18 = v74;
      v19 = v73;
      v20 = v72;
      v17 = v71;
      v21 = v70;
      a2 = v195;
      goto LABEL_87;
    }

    v182 = __error();
    v183 = *v182;
    v185 = sub_100035B80(v182, v184);
    if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
    {
      sub_1000A2B78();
    }

    *__error() = v183;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v174 = v17;
      v175 = v20;
      v176 = *__error();
      v186 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Reporting power exception that is neither fatal nor background qos");
      if (v186)
      {
        v179 = v186;
        v180 = CFStringGetCStringPtr(v186, 0x8000100u);
        if (v180)
        {
          goto LABEL_245;
        }

        v181 = 3536121195;
        goto LABEL_255;
      }

      v190 = sub_100035B80(0, v187);
      if (os_log_type_enabled(v190, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2BB4();
      }

      goto LABEL_250;
    }
  }

LABEL_202:
}

void sub_1000505FC(uint64_t a1)
{
  v2 = sub_10004DF5C(*(a1 + 32), *(a1 + 80), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 32);
  v4 = *(a1 + 104);
  v5 = v4 - *(a1 + 88);
  v6 = *(a1 + 80);
  v8 = *(a1 + 112) | v7;

  sub_1000363C4(v3, v2, v8, v6, v5, v4);
}

void sub_10005066C(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v112 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v26 = __error();
        v27 = *v26;
        v29 = sub_100035B80(v26, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v125 = sub_100035B20(a1);
          v126 = 1024;
          *v127 = a1;
          *&v127[4] = 2048;
          *&v127[6] = a5;
          v128 = 2048;
          v129 = a3;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}s [%d]: file descriptor exhaustion: %llu fds with flags %#llx", buf, 0x26u);
        }

        *__error() = v27;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v113 = *__error();
        v31 = sub_100035B20(a1);
        v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: %llu fds with flags %#llx", v31, a1, a5, a3);
        if (!v32)
        {
          v23 = sub_100035B80(0, v33);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v110 = sub_100035B20(a1);
            *buf = 136315906;
            v125 = v110;
            v126 = 1024;
            *v127 = a1;
            *&v127[4] = 2048;
            *&v127[6] = a5;
            v128 = 2048;
            v129 = a3;
            v25 = "Unable to format: %s [%d]: file descriptor exhaustion: %llu fds with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v60 = qword_100117E88;
          }

          else
          {
            v60 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
          goto LABEL_72;
        }

        v34 = v32;
        v35 = a5;
        v36 = a7;
        CStringPtr = CFStringGetCStringPtr(v32, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v38 = 1318044893;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v47 = __error();
      v48 = *v47;
      v50 = sub_100035B80(v47, v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v125 = a5;
        v126 = 2048;
        *v127 = a3;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "file descriptor exhaustion: %llu fds with flags %#llx", buf, 0x16u);
      }

      *__error() = v48;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: %llu fds with flags %#llx", a5, a3);
    if (v52)
    {
      v54 = v52;
      v35 = a5;
      v55 = CFStringGetCStringPtr(v52, 0x8000100u);
      if (v55)
      {
        v56 = v55;
        v57 = 0;
      }

      else
      {
        v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x4E8FC4DDuLL);
        CFStringGetCString(v54, v56, 1024, 0x8000100u);
        v57 = v56;
      }

      if (qword_100117E88)
      {
        v109 = qword_100117E88;
      }

      else
      {
        v109 = __stderrp;
      }

      fprintf(v109, "%s\n", v56);
      if (v57)
      {
        free(v57);
      }

      CFRelease(v54);
      goto LABEL_62;
    }

    v59 = sub_100035B80(0, v53);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A31F4();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = __error();
      v16 = *v15;
      v18 = sub_100035B80(v15, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v125 = sub_100035B20(a1);
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx", buf, 0x26u);
      }

      *__error() = v16;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v20 = sub_100035B20(a1);
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx", v20, a1, a5, a3);
    if (!v21)
    {
      v23 = sub_100035B80(0, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = sub_100035B20(a1);
        *buf = 136315906;
        v125 = v24;
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        v25 = "Unable to format: %s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v25, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v39 = __error();
    v40 = *v39;
    v42 = sub_100035B80(v39, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v125 = a5;
      v126 = 2048;
      *v127 = a3;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "file descriptor exhaustion: fatal, %llu fds with flags %#llx", buf, 0x16u);
    }

    *__error() = v40;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v113 = *__error();
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: fatal, %llu fds with flags %#llx", a5, a3);
    if (v21)
    {
LABEL_38:
      v34 = v21;
      v35 = a5;
      v36 = a7;
      CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v45 = CStringPtr;
        v46 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v58 = qword_100117E88;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        CFRelease(v34);
        a7 = v36;
LABEL_62:
        a5 = v35;
LABEL_72:
        *__error() = v113;
        goto LABEL_73;
      }

      v38 = 615798485;
LABEL_55:
      v45 = malloc_type_calloc(0x400uLL, 1uLL, v38);
      CFStringGetCString(v34, v45, 1024, 0x8000100u);
      v46 = v45;
      goto LABEL_56;
    }

    v59 = sub_100035B80(0, v44);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A325C();
    }

    goto LABEL_67;
  }

LABEL_73:
  v115 = a5;
  v114 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v123 = 0;
  v61 = [v13 lastPathComponent];
  v62 = sub_10004AFBC(v61, a1, "file descriptor exhaustion", 176, &v123);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v71 = __error();
        v72 = *v71;
        v74 = sub_100035B80(v71, v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A32C4();
        }

        *__error() = v72;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: not monitoring due to suppression cookie file");
      if (!v68)
      {
        v70 = sub_100035B80(0, v75);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3300();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v63 = __error();
        v64 = *v63;
        v66 = sub_100035B80(v63, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A333C();
        }

        *__error() = v64;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v67 = sub_100035B20(a1);
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: not monitoring due to suppression cookie file", v67, a1);
      if (!v68)
      {
        v70 = sub_100035B80(0, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A33BC();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v84 = qword_100117E88;
        }

        else
        {
          v84 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_110:
        *__error() = v111;
LABEL_111:
        v62 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v76 = v68;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v68, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD49DA78uLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_110;
  }

  if (!v62)
  {
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_100051468;
    v116[3] = &unk_100109080;
    v122 = a1;
    v117 = v13;
    v118 = v114;
    v119 = v123;
    v120 = v115;
    v121 = a6;
    sub_100068D08(0, a1, v117, a3, v14, v115, a6, a7, v116);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v95 = __error();
      v96 = *v95;
      v98 = sub_100035B80(v95, v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v62;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "file descriptor exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v96;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v90 = *__error();
    v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: not monitoring due to conditions %#llx", v62);
    if (!v92)
    {
      v94 = sub_100035B80(0, v99);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        sub_1000A343C();
      }

      goto LABEL_140;
    }

LABEL_129:
    v100 = v92;
    v101 = a6;
    v102 = v14;
    v103 = a7;
    v104 = CFStringGetCStringPtr(v92, 0x8000100u);
    if (v104)
    {
      v105 = v104;
      v106 = 0;
    }

    else
    {
      v105 = malloc_type_calloc(0x400uLL, 1uLL, 0xEE7DA05CuLL);
      CFStringGetCString(v100, v105, 1024, 0x8000100u);
      v106 = v105;
    }

    if (qword_100117E88)
    {
      v107 = qword_100117E88;
    }

    else
    {
      v107 = __stderrp;
    }

    fprintf(v107, "%s\n", v105);
    if (v106)
    {
      free(v106);
    }

    CFRelease(v100);
    a7 = v103;
    v14 = v102;
    a6 = v101;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v85 = __error();
    v86 = *v85;
    v88 = sub_100035B80(v85, v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = sub_100035B20(a1);
      *buf = 136446722;
      v125 = v89;
      v126 = 1024;
      *v127 = a1;
      *&v127[4] = 2048;
      *&v127[6] = v62;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: file descriptor exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v86;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v90 = *__error();
  v91 = sub_100035B20(a1);
  v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: not monitoring due to conditions %#llx", v91, a1, v62);
  if (v92)
  {
    goto LABEL_129;
  }

  v94 = sub_100035B80(0, v93);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
  {
    sub_1000A34AC();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v108 = qword_100117E88;
  }

  else
  {
    v108 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v108);
LABEL_144:
  *__error() = v90;
LABEL_145:
  sub_100036B70(a1, v13, v114, v62, v123, v115, a6);
  if (v112 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(0, a1, a7);
  }

LABEL_147:
}

void sub_100051484(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v112 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v26 = __error();
        v27 = *v26;
        v29 = sub_100035B80(v26, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v125 = sub_100035B20(a1);
          v126 = 1024;
          *v127 = a1;
          *&v127[4] = 2048;
          *&v127[6] = a5;
          v128 = 2048;
          v129 = a3;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}s [%d]: port exhaustion: %llu ports with flags %#llx", buf, 0x26u);
        }

        *__error() = v27;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v113 = *__error();
        v31 = sub_100035B20(a1);
        v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: %llu ports with flags %#llx", v31, a1, a5, a3);
        if (!v32)
        {
          v23 = sub_100035B80(0, v33);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v110 = sub_100035B20(a1);
            *buf = 136315906;
            v125 = v110;
            v126 = 1024;
            *v127 = a1;
            *&v127[4] = 2048;
            *&v127[6] = a5;
            v128 = 2048;
            v129 = a3;
            v25 = "Unable to format: %s [%d]: port exhaustion: %llu ports with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v60 = qword_100117E88;
          }

          else
          {
            v60 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
          goto LABEL_72;
        }

        v34 = v32;
        v35 = a5;
        v36 = a7;
        CStringPtr = CFStringGetCStringPtr(v32, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v38 = 1047609145;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v47 = __error();
      v48 = *v47;
      v50 = sub_100035B80(v47, v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v125 = a5;
        v126 = 2048;
        *v127 = a3;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "port exhaustion: %llu ports with flags %#llx", buf, 0x16u);
      }

      *__error() = v48;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: %llu ports with flags %#llx", a5, a3);
    if (v52)
    {
      v54 = v52;
      v35 = a5;
      v55 = CFStringGetCStringPtr(v52, 0x8000100u);
      if (v55)
      {
        v56 = v55;
        v57 = 0;
      }

      else
      {
        v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x3E713F39uLL);
        CFStringGetCString(v54, v56, 1024, 0x8000100u);
        v57 = v56;
      }

      if (qword_100117E88)
      {
        v109 = qword_100117E88;
      }

      else
      {
        v109 = __stderrp;
      }

      fprintf(v109, "%s\n", v56);
      if (v57)
      {
        free(v57);
      }

      CFRelease(v54);
      goto LABEL_62;
    }

    v59 = sub_100035B80(0, v53);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3538();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = __error();
      v16 = *v15;
      v18 = sub_100035B80(v15, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v125 = sub_100035B20(a1);
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s [%d]: port exhaustion: fatal, %llu ports with flags %#llx", buf, 0x26u);
      }

      *__error() = v16;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v20 = sub_100035B20(a1);
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: fatal, %llu ports with flags %#llx", v20, a1, a5, a3);
    if (!v21)
    {
      v23 = sub_100035B80(0, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = sub_100035B20(a1);
        *buf = 136315906;
        v125 = v24;
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        v25 = "Unable to format: %s [%d]: port exhaustion: fatal, %llu ports with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v25, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v39 = __error();
    v40 = *v39;
    v42 = sub_100035B80(v39, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v125 = a5;
      v126 = 2048;
      *v127 = a3;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "port exhaustion: fatal, %llu ports with flags %#llx", buf, 0x16u);
    }

    *__error() = v40;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v113 = *__error();
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: fatal, %llu ports with flags %#llx", a5, a3);
    if (v21)
    {
LABEL_38:
      v34 = v21;
      v35 = a5;
      v36 = a7;
      CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v45 = CStringPtr;
        v46 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v58 = qword_100117E88;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        CFRelease(v34);
        a7 = v36;
LABEL_62:
        a5 = v35;
LABEL_72:
        *__error() = v113;
        goto LABEL_73;
      }

      v38 = 237779063;
LABEL_55:
      v45 = malloc_type_calloc(0x400uLL, 1uLL, v38);
      CFStringGetCString(v34, v45, 1024, 0x8000100u);
      v46 = v45;
      goto LABEL_56;
    }

    v59 = sub_100035B80(0, v44);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A35A0();
    }

    goto LABEL_67;
  }

LABEL_73:
  v115 = a5;
  v114 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v123 = 0;
  v61 = [v13 lastPathComponent];
  v62 = sub_10004AFBC(v61, a1, "port exhaustion", 176, &v123);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v71 = __error();
        v72 = *v71;
        v74 = sub_100035B80(v71, v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A3608();
        }

        *__error() = v72;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: not monitoring due to suppression cookie file");
      if (!v68)
      {
        v70 = sub_100035B80(0, v75);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3644();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v63 = __error();
        v64 = *v63;
        v66 = sub_100035B80(v63, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A3680();
        }

        *__error() = v64;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v67 = sub_100035B20(a1);
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: not monitoring due to suppression cookie file", v67, a1);
      if (!v68)
      {
        v70 = sub_100035B80(0, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3700();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v84 = qword_100117E88;
        }

        else
        {
          v84 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_110:
        *__error() = v111;
LABEL_111:
        v62 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v76 = v68;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v68, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0x12D86434uLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_110;
  }

  if (!v62)
  {
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_100052280;
    v116[3] = &unk_100109080;
    v122 = a1;
    v117 = v13;
    v118 = v114;
    v119 = v123;
    v120 = v115;
    v121 = a6;
    sub_100068D08(1, a1, v117, a3, v14, v115, a6, a7, v116);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v95 = __error();
      v96 = *v95;
      v98 = sub_100035B80(v95, v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v62;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "port exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v96;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v90 = *__error();
    v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: not monitoring due to conditions %#llx", v62);
    if (!v92)
    {
      v94 = sub_100035B80(0, v99);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3780();
      }

      goto LABEL_140;
    }

LABEL_129:
    v100 = v92;
    v101 = a6;
    v102 = v14;
    v103 = a7;
    v104 = CFStringGetCStringPtr(v92, 0x8000100u);
    if (v104)
    {
      v105 = v104;
      v106 = 0;
    }

    else
    {
      v105 = malloc_type_calloc(0x400uLL, 1uLL, 0x9CA2CA51uLL);
      CFStringGetCString(v100, v105, 1024, 0x8000100u);
      v106 = v105;
    }

    if (qword_100117E88)
    {
      v107 = qword_100117E88;
    }

    else
    {
      v107 = __stderrp;
    }

    fprintf(v107, "%s\n", v105);
    if (v106)
    {
      free(v106);
    }

    CFRelease(v100);
    a7 = v103;
    v14 = v102;
    a6 = v101;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v85 = __error();
    v86 = *v85;
    v88 = sub_100035B80(v85, v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = sub_100035B20(a1);
      *buf = 136446722;
      v125 = v89;
      v126 = 1024;
      *v127 = a1;
      *&v127[4] = 2048;
      *&v127[6] = v62;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: port exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v86;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v90 = *__error();
  v91 = sub_100035B20(a1);
  v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: not monitoring due to conditions %#llx", v91, a1, v62);
  if (v92)
  {
    goto LABEL_129;
  }

  v94 = sub_100035B80(0, v93);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
  {
    sub_1000A37F0();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v108 = qword_100117E88;
  }

  else
  {
    v108 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v108);
LABEL_144:
  *__error() = v90;
LABEL_145:
  sub_100036F14(a1, v13, v114, v62, v123, v115, a6);
  if (v112 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(1, a1, a7);
  }

LABEL_147:
}

void sub_10005229C(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v112 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v26 = __error();
        v27 = *v26;
        v29 = sub_100035B80(v26, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v125 = sub_100035B20(a1);
          v126 = 1024;
          *v127 = a1;
          *&v127[4] = 2048;
          *&v127[6] = a5;
          v128 = 2048;
          v129 = a3;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx", buf, 0x26u);
        }

        *__error() = v27;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v113 = *__error();
        v31 = sub_100035B20(a1);
        v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx", v31, a1, a5, a3);
        if (!v32)
        {
          v23 = sub_100035B80(0, v33);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v110 = sub_100035B20(a1);
            *buf = 136315906;
            v125 = v110;
            v126 = 1024;
            *v127 = a1;
            *&v127[4] = 2048;
            *&v127[6] = a5;
            v128 = 2048;
            v129 = a3;
            v25 = "Unable to format: %s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v60 = qword_100117E88;
          }

          else
          {
            v60 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
          goto LABEL_72;
        }

        v34 = v32;
        v35 = a5;
        v36 = a7;
        CStringPtr = CFStringGetCStringPtr(v32, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v38 = 1539042899;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v47 = __error();
      v48 = *v47;
      v50 = sub_100035B80(v47, v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v125 = a5;
        v126 = 2048;
        *v127 = a3;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "kqworkloop exhaustion: %llu kqworkloops with flags %#llx", buf, 0x16u);
      }

      *__error() = v48;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: %llu kqworkloops with flags %#llx", a5, a3);
    if (v52)
    {
      v54 = v52;
      v35 = a5;
      v55 = CFStringGetCStringPtr(v52, 0x8000100u);
      if (v55)
      {
        v56 = v55;
        v57 = 0;
      }

      else
      {
        v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x5BBBEE53uLL);
        CFStringGetCString(v54, v56, 1024, 0x8000100u);
        v57 = v56;
      }

      if (qword_100117E88)
      {
        v109 = qword_100117E88;
      }

      else
      {
        v109 = __stderrp;
      }

      fprintf(v109, "%s\n", v56);
      if (v57)
      {
        free(v57);
      }

      CFRelease(v54);
      goto LABEL_62;
    }

    v59 = sub_100035B80(0, v53);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A387C();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = __error();
      v16 = *v15;
      v18 = sub_100035B80(v15, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v125 = sub_100035B20(a1);
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", buf, 0x26u);
      }

      *__error() = v16;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v113 = *__error();
    v20 = sub_100035B20(a1);
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", v20, a1, a5, a3);
    if (!v21)
    {
      v23 = sub_100035B80(0, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = sub_100035B20(a1);
        *buf = 136315906;
        v125 = v24;
        v126 = 1024;
        *v127 = a1;
        *&v127[4] = 2048;
        *&v127[6] = a5;
        v128 = 2048;
        v129 = a3;
        v25 = "Unable to format: %s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v25, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v39 = __error();
    v40 = *v39;
    v42 = sub_100035B80(v39, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v125 = a5;
      v126 = 2048;
      *v127 = a3;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", buf, 0x16u);
    }

    *__error() = v40;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v113 = *__error();
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", a5, a3);
    if (v21)
    {
LABEL_38:
      v34 = v21;
      v35 = a5;
      v36 = a7;
      CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v45 = CStringPtr;
        v46 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v58 = qword_100117E88;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        CFRelease(v34);
        a7 = v36;
LABEL_62:
        a5 = v35;
LABEL_72:
        *__error() = v113;
        goto LABEL_73;
      }

      v38 = 1163163842;
LABEL_55:
      v45 = malloc_type_calloc(0x400uLL, 1uLL, v38);
      CFStringGetCString(v34, v45, 1024, 0x8000100u);
      v46 = v45;
      goto LABEL_56;
    }

    v59 = sub_100035B80(0, v44);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000A38E4();
    }

    goto LABEL_67;
  }

LABEL_73:
  v115 = a5;
  v114 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v123 = 0;
  v61 = [v13 lastPathComponent];
  v62 = sub_10004AFBC(v61, a1, "kqworkloop exhaustion", 176, &v123);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v71 = __error();
        v72 = *v71;
        v74 = sub_100035B80(v71, v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A394C();
        }

        *__error() = v72;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: not monitoring due to suppression cookie file");
      if (!v68)
      {
        v70 = sub_100035B80(0, v75);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3988();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v63 = __error();
        v64 = *v63;
        v66 = sub_100035B80(v63, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A39C4();
        }

        *__error() = v64;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v111 = *__error();
      v67 = sub_100035B20(a1);
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: not monitoring due to suppression cookie file", v67, a1);
      if (!v68)
      {
        v70 = sub_100035B80(0, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3A44();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v84 = qword_100117E88;
        }

        else
        {
          v84 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_110:
        *__error() = v111;
LABEL_111:
        v62 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v76 = v68;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v68, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xA885C4D0uLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_110;
  }

  if (!v62)
  {
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_100053098;
    v116[3] = &unk_100109080;
    v122 = a1;
    v117 = v13;
    v118 = v114;
    v119 = v123;
    v120 = v115;
    v121 = a6;
    sub_100068D08(2, a1, v117, a3, v14, v115, a6, a7, v116);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v95 = __error();
      v96 = *v95;
      v98 = sub_100035B80(v95, v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v62;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "kqworkloop exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v96;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v90 = *__error();
    v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: not monitoring due to conditions %#llx", v62);
    if (!v92)
    {
      v94 = sub_100035B80(0, v99);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3AC4();
      }

      goto LABEL_140;
    }

LABEL_129:
    v100 = v92;
    v101 = a6;
    v102 = v14;
    v103 = a7;
    v104 = CFStringGetCStringPtr(v92, 0x8000100u);
    if (v104)
    {
      v105 = v104;
      v106 = 0;
    }

    else
    {
      v105 = malloc_type_calloc(0x400uLL, 1uLL, 0x776A1171uLL);
      CFStringGetCString(v100, v105, 1024, 0x8000100u);
      v106 = v105;
    }

    if (qword_100117E88)
    {
      v107 = qword_100117E88;
    }

    else
    {
      v107 = __stderrp;
    }

    fprintf(v107, "%s\n", v105);
    if (v106)
    {
      free(v106);
    }

    CFRelease(v100);
    a7 = v103;
    v14 = v102;
    a6 = v101;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v85 = __error();
    v86 = *v85;
    v88 = sub_100035B80(v85, v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = sub_100035B20(a1);
      *buf = 136446722;
      v125 = v89;
      v126 = 1024;
      *v127 = a1;
      *&v127[4] = 2048;
      *&v127[6] = v62;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: kqworkloop exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v86;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v90 = *__error();
  v91 = sub_100035B20(a1);
  v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: not monitoring due to conditions %#llx", v91, a1, v62);
  if (v92)
  {
    goto LABEL_129;
  }

  v94 = sub_100035B80(0, v93);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
  {
    sub_1000A3B34();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v108 = qword_100117E88;
  }

  else
  {
    v108 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v108);
LABEL_144:
  *__error() = v90;
LABEL_145:
  sub_1000372B8(a1, v13, v114, v62, v123, v115, a6);
  if (v112 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(2, a1, a7);
  }

LABEL_147:
}

void sub_1000530B4(uint64_t a1)
{
    ;
  }

  v2 = 0x4000;
  v3 = malloc_type_malloc(0x4000uLL, 0x59C679A8uLL);
  v4 = 0;
  do
  {
    v5 = v4;
    if (v2 - 1 <= v4)
    {
      v2 *= 2;
      v3 = reallocf(v3, v2);
    }

    v6 = read(*(a1 + 52), &v3[v5], v2 + ~v5);
    v4 = v6 + v5;
  }

  while (v6 > 0);
  if (v6 < 0)
  {
    if (byte_100117E80 == 1)
    {
      v7 = __error();
      v8 = *v7;
      v10 = sub_100035B80(v7, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3BC0();
      }

      *__error() = v8;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v12 = *__error();
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"read from child returned error: %d (%s)", v13, v15);
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
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x6B0471D8uLL);
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
          sub_1000A3C50();
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

      *__error() = v12;
    }
  }

  close(*(a1 + 52));
  v3[v5] = 0;
  v25 = strnstr(v3, "Spindump analysis written to file ", v5);
  if (!v25)
  {
    v29 = __error();
    v30 = *v29;
    v32 = sub_100035B80(v29, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3EA0();
    }

    *__error() = v30;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v33 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump output doesn't contain output path: %s", v3);
    if (!v34)
    {
      v53 = sub_100035B80(0, v35);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3F10();
      }

      goto LABEL_65;
    }

    v36 = v34;
    v37 = CFStringGetCStringPtr(v34, 0x8000100u);
    if (!v37)
    {
      v38 = 857051659;
      goto LABEL_70;
    }

    goto LABEL_58;
  }

  v26 = v25 + 34;
  v27 = strnstr(v25 + 34, "\n", &v3[v5] - (v25 + 34));
  if (!v27)
  {
    v39 = __error();
    v40 = *v39;
    v42 = sub_100035B80(v39, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3DC0();
    }

    *__error() = v40;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v33 = *__error();
    v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No newline in spindump output: %s", v3);
    if (!v43)
    {
      v53 = sub_100035B80(0, v44);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3E30();
      }

      goto LABEL_65;
    }

    v36 = v43;
    v37 = CFStringGetCStringPtr(v43, 0x8000100u);
    if (!v37)
    {
      v38 = 2251781171;
      goto LABEL_70;
    }

LABEL_58:
    v51 = v37;
    v52 = 0;
LABEL_71:
    if (qword_100117E88)
    {
      v55 = qword_100117E88;
    }

    else
    {
      v55 = __stderrp;
    }

    fprintf(v55, "%s\n", v51);
    if (v52)
    {
      free(v52);
    }

    CFRelease(v36);
LABEL_77:
    *__error() = v33;
LABEL_78:
    v28 = *(*(a1 + 40) + 16);
    goto LABEL_79;
  }

  *v27 = 0;
  if (!sub_100032E5C(v26))
  {
    v45 = __error();
    v46 = *v45;
    v48 = sub_100035B80(v45, v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3CE0();
    }

    *__error() = v46;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v33 = *__error();
    v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump output file doesn't exist: %s", v26);
    if (v49)
    {
      v36 = v49;
      v37 = CFStringGetCStringPtr(v49, 0x8000100u);
      if (v37)
      {
        goto LABEL_58;
      }

      v38 = 1400629759;
LABEL_70:
      v51 = malloc_type_calloc(0x400uLL, 1uLL, v38);
      CFStringGetCString(v36, v51, 1024, 0x8000100u);
      v52 = v51;
      goto LABEL_71;
    }

    v53 = sub_100035B80(0, v50);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3D50();
    }

LABEL_65:

    if (qword_100117E88)
    {
      v54 = qword_100117E88;
    }

    else
    {
      v54 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
    goto LABEL_77;
  }

  v28 = *(*(a1 + 40) + 16);
LABEL_79:
  v28();
  free(v3);
  dispatch_source_cancel(*(a1 + 32));
}

void sub_100053720(id a1)
{
  v1 = getenv("SPINDUMP_IGNORE_SUSPENSION");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    byte_100117D20 = 1;
  }
}

id sub_100053A2C()
{

  return [v0 bytes_not_microstackshots];
}

id sub_100053A78()
{

  return [v0 bytes_not_microstackshots];
}

_DWORD *sub_100053A9C(int *a1)
{
  v2 = *a1;

  return sub_100035B20(v2);
}

int *sub_100053AB4()
{

  return __error();
}

BOOL sub_100053ACC()
{
  if (qword_100117D30 != -1)
  {
    sub_1000A4788();
  }

  if (dword_100117514 == -1)
  {
    return 0;
  }

  state64 = 0;
  state = notify_get_state(dword_100117514, &state64);
  if (state)
  {
    v1 = state;
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A479C();
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return 0;
    }

    v20 = *__error();
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to get thermal level: %d", v1);
    if (v21)
    {
      v23 = v21;
      CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      if (CStringPtr)
      {
        v25 = CStringPtr;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0xC6796D2FuLL);
        CFStringGetCString(v23, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

      CFRelease(v23);
    }

    else
    {
      v27 = sub_100035B80(0, v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4804();
      }

      if (qword_100117E88)
      {
        v28 = qword_100117E88;
      }

      else
      {
        v28 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
    }

    v30 = __error();
    result = 0;
    *v30 = v20;
  }

  else
  {
    if (byte_100117E80)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A4874();
      }

      *__error() = v9;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v13 = *__error();
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got thermal level: %lld", state64);
      if (v14)
      {
        v16 = v14;
        v17 = CFStringGetCStringPtr(v14, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xB4D01E3uLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100117E88)
        {
          v33 = qword_100117E88;
        }

        else
        {
          v33 = __stderrp;
        }

        fprintf(v33, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v31 = sub_100035B80(0, v15);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          sub_1000A48E4();
        }

        if (qword_100117E88)
        {
          v32 = qword_100117E88;
        }

        else
        {
          v32 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
      }

      *__error() = v13;
    }

    return state64 > 0x1D;
  }

  return result;
}

void sub_100053E8C(id a1)
{
  v1 = notify_register_check(kOSThermalNotificationPressureLevelName, &dword_100117514);
  if (v1)
  {
    v2 = v1;
    if (byte_100117E80 == 1)
    {
      v3 = __error();
      v4 = *v3;
      v6 = sub_100035B80(v3, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4954();
      }

      *__error() = v4;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v8 = *__error();
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for thermal level: %d", v2);
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
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0x75B47620uLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v17 = qword_100117E88;
        }

        else
        {
          v17 = __stderrp;
        }

        fprintf(v17, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v15 = sub_100035B80(0, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1000A49BC();
        }

        if (qword_100117E88)
        {
          v16 = qword_100117E88;
        }

        else
        {
          v16 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v16);
      }

      *__error() = v8;
    }

    dword_100117514 = -1;
  }
}

BOOL sub_100054088()
{
  if (qword_100117D38 != -1)
  {
    sub_1000A4A2C();
  }

  if (dword_100117518 == -1)
  {
    return 0;
  }

  state64 = 0;
  state = notify_get_state(dword_100117518, &state64);
  if (state)
  {
    v1 = state;
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4A40();
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return 0;
    }

    v20 = *__error();
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"GM check: Failed to get game mode state: %d", v1);
    if (v21)
    {
      v23 = v21;
      CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      if (CStringPtr)
      {
        v25 = CStringPtr;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x8124F418uLL);
        CFStringGetCString(v23, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

      CFRelease(v23);
    }

    else
    {
      v27 = sub_100035B80(0, v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4AA8();
      }

      if (qword_100117E88)
      {
        v28 = qword_100117E88;
      }

      else
      {
        v28 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
    }

    v30 = __error();
    result = 0;
    *v30 = v20;
  }

  else
  {
    if (byte_100117E80)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A4B18();
      }

      *__error() = v9;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v13 = *__error();
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"GM check: Got game mode: %lld", state64);
      if (v14)
      {
        v16 = v14;
        v17 = CFStringGetCStringPtr(v14, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xC71FB3FFuLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100117E88)
        {
          v33 = qword_100117E88;
        }

        else
        {
          v33 = __stderrp;
        }

        fprintf(v33, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v31 = sub_100035B80(0, v15);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4B88();
        }

        if (qword_100117E88)
        {
          v32 = qword_100117E88;
        }

        else
        {
          v32 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
      }

      *__error() = v13;
    }

    return state64 != 0;
  }

  return result;
}

void sub_100054448(id a1)
{
  v1 = notify_register_check("com.apple.system.console_mode_changed", &dword_100117518);
  if (v1)
  {
    v2 = v1;
    if (byte_100117E80 == 1)
    {
      v3 = __error();
      v4 = *v3;
      v6 = sub_100035B80(v3, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4BF8();
      }

      *__error() = v4;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v8 = *__error();
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for game mode state: %d", v2);
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
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D4DC9A3uLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v17 = qword_100117E88;
        }

        else
        {
          v17 = __stderrp;
        }

        fprintf(v17, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v15 = sub_100035B80(0, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4C60();
        }

        if (qword_100117E88)
        {
          v16 = qword_100117E88;
        }

        else
        {
          v16 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v16);
      }

      *__error() = v8;
    }

    dword_100117518 = -1;
  }
}

void sub_100054640(void *a1, uint64_t a2, double a3)
{
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100054BA4;
  v32[3] = &unk_1001091B0;
  v5 = a1;
  v33 = v5;
  v34 = a2;
  v35 = a3;
  v6 = objc_retainBlock(v32);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("Tasking notification", v7);
  out_token = 0;
  handler = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100055140;
  v29 = &unk_1001091D8;
  v9 = v6;
  v30 = v9;
  v10 = notify_register_dispatch("com.apple.da.tasking_changed", &out_token, v8, &handler);
  if (v10)
  {
    v11 = v10;
    if (byte_100117E80 == 1)
    {
      v12 = __error();
      v13 = *v12;
      v15 = sub_100035B80(v12, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4CD0();
      }

      *__error() = v13;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v16 = *__error();
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to register for tasking update notifications: %d", v11, handler, v27, v28, v29);
      if (v17)
      {
        v19 = v17;
        CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
        if (CStringPtr)
        {
          v21 = CStringPtr;
          v22 = 0;
        }

        else
        {
          v21 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAB0C3DFuLL);
          CFStringGetCString(v19, v21, 1024, 0x8000100u);
          v22 = v21;
        }

        if (qword_100117E88)
        {
          v25 = qword_100117E88;
        }

        else
        {
          v25 = __stderrp;
        }

        fprintf(v25, "%s\n", v21);
        if (v22)
        {
          free(v22);
        }

        CFRelease(v19);
      }

      else
      {
        v23 = sub_100035B80(0, v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4D38();
        }

        if (qword_100117E88)
        {
          v24 = qword_100117E88;
        }

        else
        {
          v24 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v24);
      }

      *__error() = v16;
    }
  }

  v9[2](v9);
}

void sub_10005495C(id a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  byte_100117D40 = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    if (byte_100117E80 == 1)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "apple internal", buf, 2u);
      }

      *__error() = v3;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 1)
    {
      v7 = *__error();
      v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"apple internal");
      if (v8)
      {
        v10 = v8;
        CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
        if (CStringPtr)
        {
          v12 = CStringPtr;
          v13 = 0;
        }

        else
        {
          v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x6EB8F403uLL);
          CFStringGetCString(v10, v12, 1024, 0x8000100u);
          v13 = v12;
        }

        if (qword_100117E88)
        {
          v16 = qword_100117E88;
        }

        else
        {
          v16 = __stderrp;
        }

        fprintf(v16, "%s\n", v12);
        if (v13)
        {
          free(v13);
        }

        CFRelease(v10);
      }

      else
      {
        v14 = sub_100035B80(0, v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4DA8();
        }

        if (qword_100117E88)
        {
          v15 = qword_100117E88;
        }

        else
        {
          v15 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
      }

      *__error() = v7;
    }
  }
}

void sub_100054BA4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = OSAGetDATaskingValue();
  if (!v3)
  {
    if (byte_100117E80 == 1)
    {
      v21 = __error();
      v22 = *v21;
      v24 = sub_100035B80(v21, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        *buf = 138543618;
        v50 = v25;
        v51 = 2048;
        v52 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Tasking setting for %{public}@ not available, using default %.1f", buf, 0x16u);
      }

      *__error() = v22;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_70;
    }

    v28 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@ not available, using default %.1f", *(a1 + 32), *(a1 + 48));
    if (v29)
    {
      v31 = v29;
      CStringPtr = CFStringGetCStringPtr(v29, 0x8000100u);
      if (CStringPtr)
      {
LABEL_38:
        v41 = CStringPtr;
        v42 = 0;
LABEL_63:
        if (qword_100117E88)
        {
          v48 = qword_100117E88;
        }

        else
        {
          v48 = __stderrp;
        }

        fprintf(v48, "%s\n", v41);
        if (v42)
        {
          free(v42);
        }

        CFRelease(v31);
        goto LABEL_69;
      }

      v33 = 66643145;
LABEL_62:
      v41 = malloc_type_calloc(0x400uLL, 1uLL, v33);
      CFStringGetCString(v31, v41, 1024, 0x8000100u);
      v42 = v41;
      goto LABEL_63;
    }

    v43 = sub_100035B80(0, v30);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      sub_1000A4F6C();
    }

LABEL_49:

    if (qword_100117E88)
    {
      v46 = qword_100117E88;
    }

    else
    {
      v46 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v46);
LABEL_69:
    *__error() = v28;
LABEL_70:
    **(a1 + 40) = *(a1 + 48);
    goto LABEL_71;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (byte_100117E80 == 1)
    {
      v34 = __error();
      v35 = *v34;
      v37 = sub_100035B80(v34, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4DE8();
      }

      *__error() = v35;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_70;
    }

    v28 = *__error();
    v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@: %@ isn't a number", *v2, v3);
    if (v39)
    {
      v31 = v39;
      CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_38;
      }

      v33 = 2786403208;
      goto LABEL_62;
    }

    v43 = sub_100035B80(0, v40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      sub_1000A4E6C();
    }

    goto LABEL_49;
  }

  [v3 doubleValue];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  *v5 = v6;
  if (byte_100117E80 == 1)
  {
    v7 = __error();
    v8 = *v7;
    v10 = sub_100035B80(v7, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v2;
      v12 = **v4;
      *buf = 138543618;
      v50 = v11;
      v51 = 2048;
      v52 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tasking setting for %{public}@: %.1f", buf, 0x16u);
    }

    *__error() = v8;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@: %.1f", *v2, **v4);
    if (v15)
    {
      v17 = v15;
      v18 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (v18)
      {
        v19 = v18;
        v20 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(0x400uLL, 1uLL, 0x1265AAC3uLL);
        CFStringGetCString(v17, v19, 1024, 0x8000100u);
        v20 = v19;
      }

      if (qword_100117E88)
      {
        v47 = qword_100117E88;
      }

      else
      {
        v47 = __stderrp;
      }

      fprintf(v47, "%s\n", v19);
      if (v20)
      {
        free(v20);
      }

      CFRelease(v17);
    }

    else
    {
      v44 = sub_100035B80(0, v16);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4EE8();
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

    *__error() = v14;
  }

LABEL_71:
}

void sub_1000551C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_1000551FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (byte_100117E80 == 1)
    {
      v4 = __error();
      v5 = *v4;
      v7 = sub_100035B80(v4, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A52F0(a1, v3, v7);
      }

      *__error() = v5;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v9 = *__error();
      v10 = *(a1 + 32);
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got xpc error message in libspindump client [%d] connection: %s", v10, string);
      if (v12)
      {
        v14 = v12;
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        if (CStringPtr)
        {
          v16 = CStringPtr;
          v17 = 0;
        }

        else
        {
          v16 = malloc_type_calloc(0x400uLL, 1uLL, 0x28FD7797uLL);
          CFStringGetCString(v14, v16, 1024, 0x8000100u);
          v17 = v16;
        }

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fprintf(v20, "%s\n", v16);
        if (v17)
        {
          free(v17);
        }

        CFRelease(v14);
      }

      else
      {
        v18 = sub_100035B80(0, v13);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v21 = *(a1 + 32);
          *buf = 67109378;
          v23 = v21;
          v24 = 2080;
          v25 = xpc_dictionary_get_string(v3, _xpc_error_key_description);
          _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Unable to format: Got xpc error message in libspindump client [%d] connection: %s", buf, 0x12u);
        }

        if (qword_100117E88)
        {
          v19 = qword_100117E88;
        }

        else
        {
          v19 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v19);
      }

      *__error() = v9;
    }
  }

  else if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    sub_1000554B8(*(a1 + 32), *(a1 + 40), v3);
  }
}

void sub_1000554B8(unint64_t a1, int a2, void *a3)
{
  v5 = a3;
  int64 = xpc_dictionary_get_int64(v5, "message");
  v7 = int64;
  if (int64 > 11)
  {
    if (int64 <= 13)
    {
      if (int64 != 12)
      {
        string = xpc_dictionary_get_string(v5, "filename");
        if (string)
        {
          sub_100038AD4(string);
        }

        else
        {
          if (byte_100117E80 == 1)
          {
            v143 = __error();
            v144 = *v143;
            v146 = sub_100035B80(v143, v145);
            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5710();
            }

            *__error() = v144;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v105 = *__error();
            v148 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting workflow repsonsiveness delay: no tailspin file provided");
            if (!v148)
            {
              v109 = sub_100035B80(0, v149);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
              {
                sub_1000A5744();
              }

              goto LABEL_338;
            }

            v150 = v148;
            CStringPtr = CFStringGetCStringPtr(v148, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_177;
            }

            v152 = 205573742;
            goto LABEL_277;
          }
        }

        goto LABEL_417;
      }

      v8 = v5;
      v60 = xpc_dictionary_get_int64(v8, "pid");
      if (!v60)
      {
        if (byte_100117E80 == 1)
        {
          v122 = __error();
          v123 = *v122;
          v125 = sub_100035B80(v122, v124);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            sub_1000A58B0();
          }

          *__error() = v123;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting port exhaustion: no pid provided");
        if (!v127)
        {
          v284 = sub_100035B80(0, v128);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
          {
            sub_1000A58E4();
          }

          goto LABEL_393;
        }

        v119 = v127;
        v120 = CFStringGetCStringPtr(v127, 0x8000100u);
        if (v120)
        {
          goto LABEL_213;
        }

        v121 = 1309212622;
        goto LABEL_408;
      }

      uint64 = xpc_dictionary_get_uint64(v8, "flags");
      v62 = xpc_dictionary_get_int64(v8, "num_ports");
      if (!v62)
      {
        if (byte_100117E80 == 1)
        {
          v170 = __error();
          v171 = *v170;
          v173 = sub_100035B80(v170, v172);
          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5848();
          }

          *__error() = v171;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v174 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting port exhaustion: no num ports provided");
        if (!v174)
        {
          v284 = sub_100035B80(0, v175);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
          {
            sub_1000A587C();
          }

          goto LABEL_393;
        }

        v119 = v174;
        v120 = CFStringGetCStringPtr(v174, 0x8000100u);
        if (v120)
        {
          goto LABEL_213;
        }

        v121 = 3625252573;
        goto LABEL_408;
      }

      v63 = v62;
      v64 = xpc_dictionary_get_int64(v8, "num_ports_limit");
      v65 = xpc_dictionary_get_string(v8, "pname");
      if (v65)
      {
        v32 = [NSString stringWithUTF8String:v65];
      }

      else
      {
        v32 = 0;
      }

      v235 = xpc_dictionary_get_string(v8, "action");
      if (v235)
      {
        v236 = sub_10006E428(v235);
        v237 = [NSString stringWithUTF8String:v236];
        free(v236);
      }

      else
      {
        v237 = 0;
      }

      v240 = xpc_dictionary_copy_mach_send();
      sub_100051484(v60, v32, uint64, v237, v63, v64, v240);
      goto LABEL_275;
    }

    if (int64 == 14)
    {
      v8 = v5;
      v94 = xpc_dictionary_get_int64(v8, "pid");
      if (!v94)
      {
        if (byte_100117E80 == 1)
        {
          v129 = __error();
          v130 = *v129;
          v132 = sub_100035B80(v129, v131);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            sub_1000A57E0();
          }

          *__error() = v130;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v134 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting kqworkloop exhaustion: no pid provided");
        if (!v134)
        {
          v284 = sub_100035B80(0, v135);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5814();
          }

          goto LABEL_393;
        }

        v119 = v134;
        v120 = CFStringGetCStringPtr(v134, 0x8000100u);
        if (v120)
        {
          goto LABEL_213;
        }

        v121 = 1414939624;
        goto LABEL_408;
      }

      v95 = xpc_dictionary_get_uint64(v8, "flags");
      v96 = xpc_dictionary_get_int64(v8, "num_kqworkloops");
      if (!v96)
      {
        if (byte_100117E80 == 1)
        {
          v176 = __error();
          v177 = *v176;
          v179 = sub_100035B80(v176, v178);
          if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5778();
          }

          *__error() = v177;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v180 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting kqworkloop exhaustion: no num kqworkloops provided");
        if (!v180)
        {
          v284 = sub_100035B80(0, v181);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
          {
            sub_1000A57AC();
          }

          goto LABEL_393;
        }

        v119 = v180;
        v120 = CFStringGetCStringPtr(v180, 0x8000100u);
        if (v120)
        {
          goto LABEL_213;
        }

        v121 = 4192653758;
        goto LABEL_408;
      }

      v97 = v96;
      v98 = xpc_dictionary_get_int64(v8, "num_kqworkloops_limit");
      v99 = xpc_dictionary_get_string(v8, "pname");
      if (v99)
      {
        v32 = [NSString stringWithUTF8String:v99];
      }

      else
      {
        v32 = 0;
      }

      v238 = xpc_dictionary_get_string(v8, "action");
      if (v238)
      {
        v239 = sub_10006E428(v238);
        v237 = [NSString stringWithUTF8String:v239];
        free(v239);
      }

      else
      {
        v237 = 0;
      }

      v241 = xpc_dictionary_copy_mach_send();
      sub_10005229C(v94, v32, v95, v237, v97, v98, v241);
      goto LABEL_275;
    }

    if (int64 != 15)
    {
      goto LABEL_76;
    }

    v8 = v5;
    v33 = xpc_dictionary_get_string(v8, "pname");
    if (!v33)
    {
      if (byte_100117E80 == 1)
      {
        v160 = __error();
        v161 = *v160;
        v163 = sub_100035B80(v160, v162);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          sub_1000A56A8();
        }

        *__error() = v161;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_416;
      }

      v116 = *__error();
      v165 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting power exception: no process path provided");
      if (!v165)
      {
        v284 = sub_100035B80(0, v166);
        if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
        {
          sub_1000A56DC();
        }

        goto LABEL_393;
      }

      v119 = v165;
      v120 = CFStringGetCStringPtr(v165, 0x8000100u);
      if (v120)
      {
        goto LABEL_213;
      }

      v121 = 3494813445;
      goto LABEL_408;
    }

    v14 = [NSString stringWithUTF8String:v33];
    v34 = xpc_dictionary_get_uint64(v8, "flags");
    v35 = xpc_dictionary_get_value(v8, "event_duration");
    v36 = v35;
    if (!v35 || xpc_get_type(v35) != &_xpc_type_double)
    {
      if (byte_100117E80 == 1)
      {
        v37 = __error();
        v38 = *v37;
        v40 = sub_100035B80(v37, v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5640();
        }

        *__error() = v38;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_374;
      }

      v41 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no event duration provided");
      if (v42)
      {
        v44 = v42;
        v45 = CFStringGetCStringPtr(v42, 0x8000100u);
        if (v45)
        {
LABEL_41:
          v46 = v45;
          v47 = 0;
LABEL_367:
          if (qword_100117E88)
          {
            v289 = qword_100117E88;
          }

          else
          {
            v289 = __stderrp;
          }

          fprintf(v289, "%s\n", v46);
          if (v47)
          {
            free(v47);
          }

          CFRelease(v44);
          goto LABEL_373;
        }

        v283 = 296518957;
LABEL_366:
        v46 = malloc_type_calloc(0x400uLL, 1uLL, v283);
        CFStringGetCString(v44, v46, 1024, 0x8000100u);
        v47 = v46;
        goto LABEL_367;
      }

      v269 = sub_100035B80(0, v43);
      if (os_log_type_enabled(v269, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5674();
      }

      goto LABEL_300;
    }

    value = xpc_double_get_value(v36);
    if (value <= 0.0)
    {
      if (byte_100117E80 == 1)
      {
        v277 = __error();
        v278 = *v277;
        v280 = sub_100035B80(v277, v279);
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          sub_1000A53A0();
        }

        *__error() = v278;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_374;
      }

      v41 = *__error();
      v281 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad event duration (%f)", *&value);
      if (v281)
      {
        v44 = v281;
        v45 = CFStringGetCStringPtr(v281, 0x8000100u);
        if (v45)
        {
          goto LABEL_41;
        }

        v283 = 2650097191;
        goto LABEL_366;
      }

      v269 = sub_100035B80(0, v282);
      if (os_log_type_enabled(v269, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5414();
      }

LABEL_300:

      if (qword_100117E88)
      {
        v270 = qword_100117E88;
      }

      else
      {
        v270 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v270);
LABEL_373:
      *__error() = v41;
LABEL_374:

      goto LABEL_375;
    }

    v245 = xpc_dictionary_get_value(v8, "report_duration");

    if (v245 && xpc_get_type(v245) == &_xpc_type_double)
    {
      v306 = xpc_double_get_value(v245);
      if (v306 > 0.0)
      {
        v36 = xpc_dictionary_get_value(v8, "endtime");

        if (v36 && xpc_get_type(v36) == &_xpc_type_double)
        {
          v354 = xpc_double_get_value(v36);
          v355 = xpc_dictionary_get_string(v8, "issue_type");
          if (v355)
          {
            v356 = sub_10006E428(v355);
            v403 = [NSString stringWithUTF8String:v356];
            free(v356);
          }

          else
          {
            v403 = 0;
          }

          v359 = xpc_dictionary_get_string(v8, "mitigation_reason");
          if (v359)
          {
            v360 = sub_10006E428(v359);
            v361 = [NSString stringWithUTF8String:v360];
            free(v360);
          }

          else
          {
            v361 = 0;
          }

          v362 = xpc_dictionary_get_string(v8, "action");
          if (v362)
          {
            v363 = sub_10006E428(v362);
            v364 = [NSString stringWithUTF8String:v363];
            free(v363);
          }

          else
          {
            v364 = 0;
          }

          v365 = v5;
          v366 = xpc_dictionary_get_string(v8, "detector");
          if (v366)
          {
            v367 = sub_10006E428(v366);
            v368 = [NSString stringWithUTF8String:v367];
            free(v367);
          }

          else
          {
            v368 = 0;
          }

          sub_10004EDA4(v14, v34, v403, v361, v364, v368, value, v306, v354);

          v5 = v365;
          goto LABEL_374;
        }

        if (byte_100117E80 == 1)
        {
          v307 = __error();
          v308 = *v307;
          v310 = sub_100035B80(v307, v309);
          if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5570();
          }

          *__error() = v308;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_374;
        }

        v41 = *__error();
        v311 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no endtime provided");
        if (v311)
        {
          v44 = v311;
          v45 = CFStringGetCStringPtr(v311, 0x8000100u);
          if (v45)
          {
            goto LABEL_41;
          }

          v283 = 2667326876;
          goto LABEL_366;
        }

        v269 = sub_100035B80(0, v312);
        if (os_log_type_enabled(v269, OS_LOG_TYPE_FAULT))
        {
          sub_1000A55A4();
        }

        goto LABEL_300;
      }

      if (byte_100117E80 == 1)
      {
        v330 = __error();
        v331 = *v330;
        v333 = sub_100035B80(v330, v332);
        if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5488();
        }

        *__error() = v331;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
LABEL_494:
        v36 = v245;
        goto LABEL_374;
      }

      v250 = *__error();
      v334 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad report duration (%f)", *&v306);
      if (v334)
      {
        v253 = v334;
        v254 = CFStringGetCStringPtr(v334, 0x8000100u);
        if (v254)
        {
          goto LABEL_272;
        }

        v336 = 2351073578;
        goto LABEL_486;
      }

      v322 = sub_100035B80(0, v335);
      if (os_log_type_enabled(v322, OS_LOG_TYPE_FAULT))
      {
        sub_1000A54FC();
      }
    }

    else
    {
      if (byte_100117E80 == 1)
      {
        v246 = __error();
        v247 = *v246;
        v249 = sub_100035B80(v246, v248);
        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          sub_1000A55D8();
        }

        *__error() = v247;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_494;
      }

      v250 = *__error();
      v251 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no report duration provided");
      if (v251)
      {
        v253 = v251;
        v254 = CFStringGetCStringPtr(v251, 0x8000100u);
        if (v254)
        {
LABEL_272:
          v255 = v254;
          v256 = 0;
LABEL_487:
          if (qword_100117E88)
          {
            v337 = qword_100117E88;
          }

          else
          {
            v337 = __stderrp;
          }

          fprintf(v337, "%s\n", v255);
          if (v256)
          {
            free(v256);
          }

          CFRelease(v253);
          goto LABEL_493;
        }

        v336 = 174832231;
LABEL_486:
        v255 = malloc_type_calloc(0x400uLL, 1uLL, v336);
        CFStringGetCString(v253, v255, 1024, 0x8000100u);
        v256 = v255;
        goto LABEL_487;
      }

      v322 = sub_100035B80(0, v252);
      if (os_log_type_enabled(v322, OS_LOG_TYPE_FAULT))
      {
        sub_1000A560C();
      }
    }

    if (qword_100117E88)
    {
      v323 = qword_100117E88;
    }

    else
    {
      v323 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v323);
LABEL_493:
    *__error() = v250;
    goto LABEL_494;
  }

  if (int64 > 8)
  {
    if (int64 != 9)
    {
      if (int64 != 11)
      {
        goto LABEL_76;
      }

      v8 = v5;
      v26 = xpc_dictionary_get_int64(v8, "pid");
      if (!v26)
      {
        if (byte_100117E80 == 1)
        {
          v153 = __error();
          v154 = *v153;
          v156 = sub_100035B80(v153, v155);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5980();
          }

          *__error() = v154;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v158 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting fd exhaustion: no pid provided");
        if (!v158)
        {
          v284 = sub_100035B80(0, v159);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
          {
            sub_1000A59B4();
          }

          goto LABEL_393;
        }

        v119 = v158;
        v120 = CFStringGetCStringPtr(v158, 0x8000100u);
        if (v120)
        {
          goto LABEL_213;
        }

        v121 = 3024766766;
        goto LABEL_408;
      }

      v27 = xpc_dictionary_get_uint64(v8, "flags");
      v28 = xpc_dictionary_get_int64(v8, "num_fds");
      if (!v28)
      {
        if (byte_100117E80 == 1)
        {
          v188 = __error();
          v189 = *v188;
          v191 = sub_100035B80(v188, v190);
          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5918();
          }

          *__error() = v189;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v116 = *__error();
        v192 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting fd exhaustion: no num fds provided");
        if (v192)
        {
          v119 = v192;
          v120 = CFStringGetCStringPtr(v192, 0x8000100u);
          if (!v120)
          {
            v121 = 2030710553;
            goto LABEL_408;
          }

          goto LABEL_213;
        }

        v284 = sub_100035B80(0, v193);
        if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
        {
          sub_1000A594C();
        }

LABEL_393:

        if (qword_100117E88)
        {
          v296 = qword_100117E88;
        }

        else
        {
          v296 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v296);
LABEL_415:
        *__error() = v116;
        goto LABEL_416;
      }

      v29 = v28;
      v30 = xpc_dictionary_get_int64(v8, "num_fds_limit");
      v31 = xpc_dictionary_get_string(v8, "pname");
      if (v31)
      {
        v32 = [NSString stringWithUTF8String:v31];
      }

      else
      {
        v32 = 0;
      }

      v242 = xpc_dictionary_get_string(v8, "action");
      if (v242)
      {
        v243 = sub_10006E428(v242);
        v237 = [NSString stringWithUTF8String:v243];
        free(v243);
      }

      else
      {
        v237 = 0;
      }

      v257 = xpc_dictionary_copy_mach_send();
      sub_10005066C(v26, v32, v27, v237, v29, v30, v257);
LABEL_275:

LABEL_416:
      goto LABEL_417;
    }

    v8 = v5;
    v66 = xpc_dictionary_get_BOOL(v8, "callback");
    if (v66)
    {
      v67 = xpc_dictionary_get_remote_connection(v8);
      if (!v67)
      {
        sub_1000A66D8(0, v68, v69, v70, v71, v72, v73, v74);
      }

      v75 = v67;
      reply = xpc_dictionary_create_reply(v8);
      if (!reply)
      {
        sub_1000A64E8(0, v77, v78, v79, v80, v81, v82, v83);
      }

      v84 = reply;
      if ((a2 & 1) == 0)
      {
LABEL_62:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v196 = __error();
            v197 = *v196;
            v199 = sub_100035B80(v196, v198);
            if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6368();
            }

            *__error() = v197;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_404;
          }

          v89 = *__error();
          v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attemping to generate spindump, but not entitled");
          if (!v91)
          {
            v93 = sub_100035B80(0, v200);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              sub_1000A639C();
            }

            goto LABEL_399;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v85 = __error();
            v86 = *v85;
            v88 = sub_100035B80(v85, v87);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              sub_1000A63D0(a1, v88);
            }

            *__error() = v86;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_404;
          }

          v89 = *__error();
          v90 = sub_100035B20(a1);
          v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attemping to generate spindump, but not entitled", v90, a1);
          if (!v91)
          {
            v93 = sub_100035B80(0, v92);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              sub_1000A6460(a1);
            }

LABEL_399:

            if (qword_100117E88)
            {
              v297 = qword_100117E88;
            }

            else
            {
              v297 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v297);
LABEL_403:
            *__error() = v89;
LABEL_404:
            if (v66)
            {
              xpc_dictionary_set_int64(v84, "errno", 1);
              xpc_connection_send_message(v75, v84);
            }

LABEL_406:

            goto LABEL_416;
          }
        }

        v201 = v91;
        v202 = v84;
        v203 = CFStringGetCStringPtr(v91, 0x8000100u);
        if (v203)
        {
          v204 = v203;
          v205 = 0;
        }

        else
        {
          v204 = malloc_type_calloc(0x400uLL, 1uLL, 0xAE4ED5FCuLL);
          CFStringGetCString(v201, v204, 1024, 0x8000100u);
          v205 = v204;
        }

        if (qword_100117E88)
        {
          v286 = qword_100117E88;
        }

        else
        {
          v286 = __stderrp;
        }

        fprintf(v286, "%s\n", v204);
        if (v205)
        {
          free(v205);
        }

        CFRelease(v201);
        v84 = v202;
        goto LABEL_403;
      }
    }

    else
    {
      v84 = 0;
      v75 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v110 = xpc_dictionary_get_value(v8, "pid");

    if (v110)
    {
      v401 = xpc_dictionary_get_int64(v8, "pid");
    }

    else
    {
      v401 = 0xFFFFFFFFLL;
    }

    v399 = v5;
    v400 = xpc_dictionary_get_int64(v8, "tid");
    v206 = xpc_dictionary_get_value(v8, "duration");
    v207 = v206;
    v208 = 0.0;
    v209 = 0.0;
    if (v206 && xpc_get_type(v206) == &_xpc_type_double)
    {
      v209 = xpc_double_get_value(v207);
    }

    v210 = xpc_dictionary_get_value(v8, "interval");

    v402 = v84;
    if (v210 && xpc_get_type(v210) == &_xpc_type_double)
    {
      v208 = xpc_double_get_value(v210);
    }

    v211 = xpc_dictionary_get_uint64(v8, "flags");
    v212 = xpc_dictionary_get_string(v8, "reason");
    v213 = xpc_dictionary_get_string(v8, "signature");
    v214 = xpc_dictionary_get_string(v8, "filename");
    if (v66)
    {
      v215 = sub_1000359B8("Pending reply for spindump request from [%d] for app [%d] thread %#llx", a1, v401, v400);
      v404[0] = _NSConcreteStackBlock;
      v404[1] = 3221225472;
      v404[2] = sub_100058620;
      v404[3] = &unk_100109248;
      v405 = v402;
      v406 = v75;
      v407 = v215;
      v398 = v210;
      v216 = v214;
      v217 = v212;
      v218 = v211;
      v219 = a2;
      v220 = v75;
      v221 = v215;
      v222 = objc_retainBlock(v404);

      v75 = v220;
      a2 = v219;
      v211 = v218;
      v212 = v217;
      v214 = v216;
      v210 = v398;
    }

    else
    {
      v222 = 0;
    }

    if (v213)
    {
      v213 = sub_10006E428(v213);
    }

    sub_100046324(a1, a2, v401, v400, v211, v212, v213, v214, v209, v208, v222);
    free(v213);

    v5 = v399;
    v84 = v402;
    goto LABEL_406;
  }

  if (int64 == 3)
  {
    v8 = v5;
    v48 = xpc_dictionary_get_int64(v8, "pid");
    if (v48)
    {
      v49 = xpc_dictionary_get_uint64(v8, "tid");
      v50 = xpc_dictionary_get_uint64(v8, "flags");
      v51 = xpc_dictionary_get_value(v8, "cpu");
      v14 = v51;
      if (!v51 || xpc_get_type(v51) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v52 = __error();
          v53 = *v52;
          v55 = sub_100035B80(v52, v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_1000A6298();
          }

          *__error() = v53;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v19 = *__error();
        v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no cpu_used provided");
        if (v56)
        {
          v22 = v56;
          v23 = CFStringGetCStringPtr(v56, 0x8000100u);
          if (!v23)
          {
            v24 = 2869025052;
            goto LABEL_351;
          }

          goto LABEL_53;
        }

        v268 = sub_100035B80(0, v57);
        if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
        {
          sub_1000A62CC();
        }

        goto LABEL_360;
      }

      v223 = xpc_double_get_value(v14);
      if (v223 <= 0.0)
      {
        if (byte_100117E80 == 1)
        {
          v271 = __error();
          v272 = *v271;
          v274 = sub_100035B80(v271, v273);
          if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5DC0();
          }

          *__error() = v272;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v19 = *__error();
        v275 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad cpu_used (%f)", *&v223);
        if (v275)
        {
          v22 = v275;
          v23 = CFStringGetCStringPtr(v275, 0x8000100u);
          if (!v23)
          {
            v24 = 879454041;
            goto LABEL_351;
          }

LABEL_53:
          v58 = v23;
          v59 = 0;
LABEL_352:
          if (qword_100117E88)
          {
            v287 = qword_100117E88;
          }

          else
          {
            v287 = __stderrp;
          }

          fprintf(v287, "%s\n", v58);
          if (v59)
          {
            free(v59);
          }

          CFRelease(v22);
LABEL_364:
          *__error() = v19;
LABEL_375:

          goto LABEL_416;
        }

        v268 = sub_100035B80(0, v276);
        if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5E34();
        }

LABEL_360:

        if (qword_100117E88)
        {
          v288 = qword_100117E88;
        }

        else
        {
          v288 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v288);
        goto LABEL_364;
      }

      v224 = xpc_dictionary_get_value(v8, "duration");

      if (!v224 || xpc_get_type(v224) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v225 = __error();
          v226 = *v225;
          v228 = sub_100035B80(v225, v227);
          if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
          {
            sub_1000A6230();
          }

          *__error() = v226;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v229 = *__error();
        v230 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no duration provided");
        if (v230)
        {
          v232 = v230;
          v233 = CFStringGetCStringPtr(v230, 0x8000100u);
          if (v233)
          {
LABEL_295:
            v266 = v233;
            v267 = 0;
LABEL_503:
            if (qword_100117E88)
            {
              v339 = qword_100117E88;
            }

            else
            {
              v339 = __stderrp;
            }

            fprintf(v339, "%s\n", v266);
            if (v267)
            {
              free(v267);
            }

            CFRelease(v232);
            goto LABEL_509;
          }

          v234 = 3490618488;
LABEL_502:
          v266 = malloc_type_calloc(0x400uLL, 1uLL, v234);
          CFStringGetCString(v232, v266, 1024, 0x8000100u);
          v267 = v266;
          goto LABEL_503;
        }

        v321 = sub_100035B80(0, v231);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6264();
        }

LABEL_497:

        if (qword_100117E88)
        {
          v338 = qword_100117E88;
        }

        else
        {
          v338 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v338);
LABEL_509:
        *__error() = v229;
        goto LABEL_510;
      }

      v299 = xpc_double_get_value(v224);
      if (v299 <= 0.0)
      {
        if (byte_100117E80 == 1)
        {
          v324 = __error();
          v325 = *v324;
          v327 = sub_100035B80(v324, v326);
          if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5EA8();
          }

          *__error() = v325;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v229 = *__error();
        v328 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad duration (%f)", *&v299);
        if (v328)
        {
          v232 = v328;
          v233 = CFStringGetCStringPtr(v328, 0x8000100u);
          if (v233)
          {
            goto LABEL_295;
          }

          v234 = 2560272515;
          goto LABEL_502;
        }

        v321 = sub_100035B80(0, v329);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5F1C();
        }

        goto LABEL_497;
      }

      v14 = xpc_dictionary_get_value(v8, "endtime");

      if (!v14 || xpc_get_type(v14) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v300 = __error();
          v301 = *v300;
          v303 = sub_100035B80(v300, v302);
          if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5570();
          }

          *__error() = v301;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v19 = *__error();
        v304 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no endtime provided");
        if (v304)
        {
          v22 = v304;
          v23 = CFStringGetCStringPtr(v304, 0x8000100u);
          if (!v23)
          {
            v24 = 281607601;
            goto LABEL_351;
          }

          goto LABEL_53;
        }

        v268 = sub_100035B80(0, v305);
        if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
        {
          sub_1000A55A4();
        }

        goto LABEL_360;
      }

      v347 = xpc_double_get_value(v14);
      v224 = xpc_dictionary_get_value(v8, "cpu_limit");

      if (!v224 || xpc_get_type(v224) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v348 = __error();
          v349 = *v348;
          v351 = sub_100035B80(v348, v350);
          if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
          {
            sub_1000A61C8();
          }

          *__error() = v349;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v229 = *__error();
        v352 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no cpu_used_limit provided");
        if (v352)
        {
          v232 = v352;
          v233 = CFStringGetCStringPtr(v352, 0x8000100u);
          if (v233)
          {
            goto LABEL_295;
          }

          v234 = 4138495615;
          goto LABEL_502;
        }

        v321 = sub_100035B80(0, v353);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_FAULT))
        {
          sub_1000A61FC();
        }

        goto LABEL_497;
      }

      v369 = xpc_double_get_value(v224);
      if (v369 >= 0.0)
      {
        v14 = xpc_dictionary_get_value(v8, "duration_limit");

        if (v14 && xpc_get_type(v14) == &_xpc_type_double)
        {
          v386 = xpc_double_get_value(v14);
          if (v386 >= 0.0)
          {
            v393 = xpc_dictionary_get_string(v8, "pname");
            if (v393)
            {
              v394 = [NSString stringWithUTF8String:v393];
            }

            else
            {
              v394 = 0;
            }

            v395 = xpc_dictionary_get_string(v8, "action");
            if (v395)
            {
              v396 = sub_10006E428(v395);
              v397 = [NSString stringWithUTF8String:v396];
              free(v396);
            }

            else
            {
              v397 = 0;
            }

            sub_10002B968(v48, v394, v49, v50, v397, v223, v299, v347, v369, v386);

            goto LABEL_375;
          }

          if (byte_100117E80 == 1)
          {
            v387 = __error();
            v388 = *v387;
            v390 = sub_100035B80(v387, v389);
            if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5F90();
            }

            *__error() = v388;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v19 = *__error();
          v391 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad duration_limit (%f)", *&v386);
          if (v391)
          {
            v22 = v391;
            v23 = CFStringGetCStringPtr(v391, 0x8000100u);
            if (!v23)
            {
              v24 = 1054951101;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v268 = sub_100035B80(0, v392);
          if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
          {
            sub_1000A6004();
          }
        }

        else
        {
          if (byte_100117E80 == 1)
          {
            v380 = __error();
            v381 = *v380;
            v383 = sub_100035B80(v380, v382);
            if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6078();
            }

            *__error() = v381;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v19 = *__error();
          v384 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no duration_limit provided");
          if (v384)
          {
            v22 = v384;
            v23 = CFStringGetCStringPtr(v384, 0x8000100u);
            if (!v23)
            {
              v24 = 575563346;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v268 = sub_100035B80(0, v385);
          if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
          {
            sub_1000A60AC();
          }
        }

        goto LABEL_360;
      }

      if (byte_100117E80 == 1)
      {
        v370 = __error();
        v371 = *v370;
        v373 = sub_100035B80(v370, v372);
        if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
        {
          sub_1000A60E0();
        }

        *__error() = v371;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v229 = *__error();
        v374 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad cpu_used_limit (%f)", *&v369);
        if (v374)
        {
          v232 = v374;
          v233 = CFStringGetCStringPtr(v374, 0x8000100u);
          if (v233)
          {
            goto LABEL_295;
          }

          v234 = 2657014689;
          goto LABEL_502;
        }

        v321 = sub_100035B80(0, v375);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6154();
        }

        goto LABEL_497;
      }

LABEL_510:
      v14 = v224;
      goto LABEL_375;
    }

    if (byte_100117E80 == 1)
    {
      v111 = __error();
      v112 = *v111;
      v114 = sub_100035B80(v111, v113);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6300();
      }

      *__error() = v112;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_416;
    }

    v116 = *__error();
    v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no pid provided");
    if (!v117)
    {
      v284 = sub_100035B80(0, v118);
      if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
      {
        sub_1000A6334();
      }

      goto LABEL_393;
    }

    v119 = v117;
    v120 = CFStringGetCStringPtr(v117, 0x8000100u);
    if (v120)
    {
      goto LABEL_213;
    }

    v121 = 881578776;
    goto LABEL_408;
  }

  if (int64 == 5)
  {
    v8 = v5;
    v9 = xpc_dictionary_get_int64(v8, "pid");
    if (v9)
    {
      v10 = xpc_dictionary_get_uint64(v8, "flags");
      v11 = xpc_dictionary_get_int64(v8, "io");
      if (v11)
      {
        v12 = v11;
        v13 = xpc_dictionary_get_value(v8, "duration");
        v14 = v13;
        if (!v13 || xpc_get_type(v13) != &_xpc_type_double)
        {
          if (byte_100117E80 == 1)
          {
            v15 = __error();
            v16 = *v15;
            v18 = sub_100035B80(v15, v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5C88();
            }

            *__error() = v16;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v19 = *__error();
          v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no duration provided");
          if (v20)
          {
            v22 = v20;
            v23 = CFStringGetCStringPtr(v20, 0x8000100u);
            if (!v23)
            {
              v24 = 1633168679;
LABEL_351:
              v58 = malloc_type_calloc(0x400uLL, 1uLL, v24);
              CFStringGetCString(v22, v58, 1024, 0x8000100u);
              v59 = v58;
              goto LABEL_352;
            }

            goto LABEL_53;
          }

          v268 = sub_100035B80(0, v21);
          if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5CBC();
          }

          goto LABEL_360;
        }

        v259 = xpc_double_get_value(v14);
        if (v259 <= 0.0)
        {
          if (byte_100117E80 == 1)
          {
            v290 = __error();
            v291 = *v290;
            v293 = sub_100035B80(v290, v292);
            if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
            {
              sub_1000A59E8();
            }

            *__error() = v291;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v19 = *__error();
          v294 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: bad duration (%f)", *&v259);
          if (v294)
          {
            v22 = v294;
            v23 = CFStringGetCStringPtr(v294, 0x8000100u);
            if (!v23)
            {
              v24 = 3732300095;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v268 = sub_100035B80(0, v295);
          if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5A5C();
          }

          goto LABEL_360;
        }

        v224 = xpc_dictionary_get_value(v8, "endtime");

        if (v224 && xpc_get_type(v224) == &_xpc_type_double)
        {
          v313 = xpc_double_get_value(v224);
          v314 = xpc_dictionary_get_int64(v8, "io_limit");
          v14 = xpc_dictionary_get_value(v8, "duration_limit");

          if (v14 && xpc_get_type(v14) == &_xpc_type_double)
          {
            v340 = xpc_double_get_value(v14);
            if (v340 >= 0.0)
            {
              v357 = xpc_dictionary_get_string(v8, "pname");
              if (v357)
              {
                v358 = [NSString stringWithUTF8String:v357];
              }

              else
              {
                v358 = 0;
              }

              v376 = v5;
              v377 = xpc_dictionary_get_string(v8, "action");
              if (v377)
              {
                v378 = sub_10006E428(v377);
                v379 = [NSString stringWithUTF8String:v378];
                free(v378);
              }

              else
              {
                v379 = 0;
              }

              sub_10004CA48(v9, v358, v10, v379, v12, v314, v259, v313, v340);

              v5 = v376;
              goto LABEL_375;
            }

            if (byte_100117E80 == 1)
            {
              v341 = __error();
              v342 = *v341;
              v344 = sub_100035B80(v341, v343);
              if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
              {
                sub_1000A5AD0();
              }

              *__error() = v342;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 3)
            {
              goto LABEL_375;
            }

            v19 = *__error();
            v345 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: bad duration_limit (%f)", *&v340);
            if (v345)
            {
              v22 = v345;
              v23 = CFStringGetCStringPtr(v345, 0x8000100u);
              if (!v23)
              {
                v24 = 2088996285;
                goto LABEL_351;
              }

              goto LABEL_53;
            }

            v268 = sub_100035B80(0, v346);
            if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
            {
              sub_1000A5B44();
            }
          }

          else
          {
            if (byte_100117E80 == 1)
            {
              v315 = __error();
              v316 = *v315;
              v318 = sub_100035B80(v315, v317);
              if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
              {
                sub_1000A5BB8();
              }

              *__error() = v316;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 3)
            {
              goto LABEL_375;
            }

            v19 = *__error();
            v319 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no duration_limit provided");
            if (v319)
            {
              v22 = v319;
              v23 = CFStringGetCStringPtr(v319, 0x8000100u);
              if (!v23)
              {
                v24 = 3050175089;
                goto LABEL_351;
              }

              goto LABEL_53;
            }

            v268 = sub_100035B80(0, v320);
            if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
            {
              sub_1000A5BEC();
            }
          }

          goto LABEL_360;
        }

        if (byte_100117E80 == 1)
        {
          v260 = __error();
          v261 = *v260;
          v263 = sub_100035B80(v260, v262);
          if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5C20();
          }

          *__error() = v261;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v229 = *__error();
          v264 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no endtime provided");
          if (v264)
          {
            v232 = v264;
            v233 = CFStringGetCStringPtr(v264, 0x8000100u);
            if (v233)
            {
              goto LABEL_295;
            }

            v234 = 2064060422;
            goto LABEL_502;
          }

          v321 = sub_100035B80(0, v265);
          if (os_log_type_enabled(v321, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5C54();
          }

          goto LABEL_497;
        }

        goto LABEL_510;
      }

      if (byte_100117E80 == 1)
      {
        v182 = __error();
        v183 = *v182;
        v185 = sub_100035B80(v182, v184);
        if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5CF0();
        }

        *__error() = v183;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_416;
      }

      v116 = *__error();
      v186 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no num bytes provided");
      if (v186)
      {
        v119 = v186;
        v120 = CFStringGetCStringPtr(v186, 0x8000100u);
        if (!v120)
        {
          v121 = 813721682;
          goto LABEL_408;
        }

LABEL_213:
        v194 = v120;
        v195 = 0;
LABEL_409:
        if (qword_100117E88)
        {
          v298 = qword_100117E88;
        }

        else
        {
          v298 = __stderrp;
        }

        fprintf(v298, "%s\n", v194);
        if (v195)
        {
          free(v195);
        }

        CFRelease(v119);
        goto LABEL_415;
      }

      v284 = sub_100035B80(0, v187);
      if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5D24();
      }

      goto LABEL_393;
    }

    if (byte_100117E80 == 1)
    {
      v136 = __error();
      v137 = *v136;
      v139 = sub_100035B80(v136, v138);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5D58();
      }

      *__error() = v137;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_416;
    }

    v116 = *__error();
    v141 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no pid provided");
    if (!v141)
    {
      v284 = sub_100035B80(0, v142);
      if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5D8C();
      }

      goto LABEL_393;
    }

    v119 = v141;
    v120 = CFStringGetCStringPtr(v141, 0x8000100u);
    if (v120)
    {
      goto LABEL_213;
    }

    v121 = 3627566094;
LABEL_408:
    v194 = malloc_type_calloc(0x400uLL, 1uLL, v121);
    CFStringGetCString(v119, v194, 1024, 0x8000100u);
    v195 = v194;
    goto LABEL_409;
  }

LABEL_76:
  v100 = __error();
  v101 = *v100;
  v103 = sub_100035B80(v100, v102);
  v104 = os_log_type_enabled(v103, OS_LOG_TYPE_FAULT);
  if ((a1 & 0x80000000) != 0)
  {
    if (v104)
    {
      sub_1000A68C8();
    }

    *__error() = v101;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v105 = *__error();
      v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unknown message to libspindump (%lld)", v7);
      if (!v107)
      {
        v109 = sub_100035B80(0, v167);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6938();
        }

        goto LABEL_338;
      }

      goto LABEL_176;
    }
  }

  else
  {
    if (v104)
    {
      sub_1000A69A8(a1);
    }

    *__error() = v101;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v105 = *__error();
      v106 = sub_100035B20(a1);
      v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unknown message to libspindump (%lld)", v106, a1, v7);
      if (!v107)
      {
        v109 = sub_100035B80(0, v108);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6A3C(a1);
        }

LABEL_338:

        if (qword_100117E88)
        {
          v285 = qword_100117E88;
        }

        else
        {
          v285 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v285);
LABEL_342:
        *__error() = v105;
        goto LABEL_417;
      }

LABEL_176:
      v150 = v107;
      CStringPtr = CFStringGetCStringPtr(v107, 0x8000100u);
      if (CStringPtr)
      {
LABEL_177:
        v168 = CStringPtr;
        v169 = 0;
LABEL_278:
        if (qword_100117E88)
        {
          v258 = qword_100117E88;
        }

        else
        {
          v258 = __stderrp;
        }

        fprintf(v258, "%s\n", v168);
        if (v169)
        {
          free(v169);
        }

        CFRelease(v150);
        goto LABEL_342;
      }

      v152 = 2001167343;
LABEL_277:
      v168 = malloc_type_calloc(0x400uLL, 1uLL, v152);
      CFStringGetCString(v150, v168, 1024, 0x8000100u);
      v169 = v168;
      goto LABEL_278;
    }
  }

LABEL_417:
}
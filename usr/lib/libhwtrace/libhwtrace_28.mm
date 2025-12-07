uint64_t sub_298C4A840(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(a1 + 32);
      while (*v4 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v4 += 16;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);
    }

    v5 = *(a1 + 32) + 16 * v2;
    if (v4 != v5)
    {
      v6 = MEMORY[0x29EDCA6B0];
LABEL_10:
      v7 = *(v4 + 8);
      if (v7 + 1 >= 2)
      {
        mach_port_deallocate(*v6, v7);
      }

      while (1)
      {
        v4 += 16;
        if (v4 == v5)
        {
          break;
        }

        if (*v4 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v4 != v5)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

LABEL_15:
  if (*(a1 + 24))
  {
    if (*(a1 + 64))
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(*(a1 + 64));
    }

    dispatch_release(*(a1 + 72));
  }

  dispatch_release(*(a1 + 56));
  MEMORY[0x29C2945E0](*(a1 + 32), 8);
  return a1;
}

void **sub_298C4A92C(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = sub_298B227A0(1);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Monitor::scanAllTasks", &unk_298EC00B5, buf, 2u);
  }

  v23 = &unk_2A1F1FF10;
  *&v24 = v5;
  *(&v24 + 1) = v4;
  v25 = &v23;
  v28 = &v26;
  v29 = v5;
  v27 = v24;
  v26 = &unk_2A1F1FF10;
  v6 = *(a2 + 8);
  std::mutex::lock(v6);
  if (*(a2 + 24) != 1)
  {
    v30 = xmmword_298D1C7F0;
    v20 = 0;
    if (sysctl(&v30, 4u, 0, &v20, 0, 0) || v20 % 0x288)
    {
      v12[0] = "LiveRecording.cpp";
      v12[2] = ":";
      v13 = 771;
      std::generic_category();
      v11 = 3;
      LODWORD(v10) = 3552052;
      v14[0] = v12;
      v14[2] = &v10;
      v15 = 1026;
      v16[0] = v14;
      v16[2] = ": ";
      v17 = 770;
      v18[0] = v16;
      v18[2] = "KERN_PROC_ALL sysctl failed";
      v19 = 770;
      sub_298B996A4(v18, &__p);
      operator new();
    }

    operator new[]();
  }

  v7 = *(a2 + 8);
  *buf = *(a2 + 16);
  v8 = *sub_298C16B60(v7 + 456, buf);
  if (!v8)
  {
    operator new();
  }

  sub_298C4B1AC(a1, a2, v8);
  std::mutex::unlock(v6);
  result = v28;
  if (v28)
  {
    (*(*v28 + 6))(v28);
    result = v28;
    if (v28 == &v26)
    {
      return (*(*v28 + 4))(v28);
    }

    else if (v28)
    {
      return (*(*v28 + 5))();
    }
  }

  return result;
}

intptr_t sub_298C4B194(uint64_t a1)
{
  v1 = *(a1 + 32);
  atomic_store(1u, (v1 + 80));
  return dispatch_semaphore_signal(*(v1 + 72));
}

void sub_298C4B1AC(void *a1, uint64_t a2, uint64_t a3)
{
  v220 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 24);
  v7 = (a2 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  if (!v9)
  {
    goto LABEL_111;
  }

  v10 = v9 - 1;
  v11 = (v9 - 1) & (37 * v6);
  v12 = (v8 + 16 * v11);
  v13 = *v12;
  if (*v12 == v6)
  {
    goto LABEL_3;
  }

  v64 = 0;
  v65 = 1;
  while (v13 != -1)
  {
    if (v64)
    {
      v66 = 0;
    }

    else
    {
      v66 = v13 == -2;
    }

    if (v66)
    {
      v64 = v12;
    }

    v67 = v11 + v65++;
    v11 = v67 & v10;
    v12 = (v8 + 16 * (v67 & v10));
    v13 = *v12;
    if (*v12 == v6)
    {
      goto LABEL_3;
    }
  }

  if (v64)
  {
    v12 = v64;
  }

  v68 = *(a2 + 40);
  if (4 * v68 + 4 >= 3 * v9)
  {
LABEL_111:
    sub_298AF101C(v7, 2 * v9);
    v69 = *(a2 + 32);
    v70 = *(a2 + 48) - 1;
    v71 = v70 & (37 * v6);
    v12 = (v69 + 16 * v71);
    v72 = *v12;
    if (*v12 != v6)
    {
      v73 = 0;
      v74 = 1;
      while (v72 != -1)
      {
        if (v73)
        {
          v75 = 0;
        }

        else
        {
          v75 = v72 == -2;
        }

        if (v75)
        {
          v73 = v12;
        }

        v76 = v71 + v74++;
        v71 = v76 & v70;
        v12 = (v69 + 16 * (v76 & v70));
        v72 = *v12;
        if (*v12 == v6)
        {
          goto LABEL_260;
        }
      }

      goto LABEL_272;
    }

    goto LABEL_260;
  }

  if (v9 + ~v68 - *(a2 + 44) <= v9 >> 3)
  {
    sub_298AF101C(v7, v9);
    v139 = *(a2 + 32);
    v140 = *(a2 + 48) - 1;
    v141 = v140 & (37 * v6);
    v12 = (v139 + 16 * v141);
    v142 = *v12;
    if (*v12 != v6)
    {
      v73 = 0;
      v143 = 1;
      while (v142 != -1)
      {
        if (v73)
        {
          v144 = 0;
        }

        else
        {
          v144 = v142 == -2;
        }

        if (v144)
        {
          v73 = v12;
        }

        v145 = v141 + v143++;
        v141 = v145 & v140;
        v12 = (v139 + 16 * (v145 & v140));
        v142 = *v12;
        if (*v12 == v6)
        {
          goto LABEL_260;
        }
      }

LABEL_272:
      if (v73)
      {
        v12 = v73;
      }

      v146 = *v12;
      ++*(a2 + 40);
      if (v146 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_260:
    ++*(a2 + 40);
    if (v6 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v37 = *v12;
  ++*(a2 + 40);
  if (v37 != -1)
  {
LABEL_55:
    --*(a2 + 44);
  }

LABEL_56:
  *v12 = v6;
  *(v12 + 2) = 0;
LABEL_3:
  v14 = *(v12 + 2);
  infoCnt[0] = v14;
  if (v14 - 1 >= 0xFFFFFFFE)
  {
    if (task_read_for_pid())
    {
      std::generic_category();
      *&v202 = "LiveRecording.cpp";
      *&v203 = ":";
      LOWORD(v204) = 771;
      HIBYTE(v197) = 3;
      LODWORD(size[0]) = 3683381;
      *&v155 = &v202;
      *&v156 = size;
      LOWORD(v157) = 1026;
      *&v160 = &v155;
      *&v161 = ": ";
      LOWORD(v162) = 770;
      *&v166 = &v160;
      *&v167 = "task_for_pid failed, pid=";
      LOWORD(v168) = 770;
      if (v6)
      {
        v15 = 20;
        do
        {
          v16 = v15;
          policy_info.i8[v15--] = (v6 % 0xA) | 0x30;
          v17 = v6 > 9;
          v6 /= 0xAuLL;
        }

        while (v17);
        v18 = 21 - v16;
        if ((21 - v16) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_262;
        }
      }

      else
      {
        BYTE4(v211[0]) = 48;
        v16 = 20;
        v18 = 1;
      }

      if (v18 <= 0x16)
      {
        HIBYTE(v194) = v18;
        if (v16 != 21)
        {
          memcpy(&nesting_depth, &policy_info.i8[v16], v18);
        }

        *(&nesting_depth + v18) = 0;
        *&info = &v166;
        v217[0] = &nesting_depth;
        LOWORD(p_policy_info) = 1026;
        sub_298B996A4(&info, address);
        operator new();
      }

      operator new();
    }

    v14 = infoCnt[0];
  }

  *a1 = 0;
  LODWORD(get_default[0]) = 0;
  LODWORD(policy_infoCnt) = 16;
  v19 = task_policy_get(v14, 4u, policy_info.i32, &policy_infoCnt, get_default);
  if (v19)
  {
    v20 = v19;
    std::generic_category();
    v21 = 0;
    v180[0] = "LiveRecording.cpp";
    v181 = ":";
    v182 = 771;
    HIBYTE(v208) = 3;
    v184[0] = v180;
    v185 = v207;
    v186 = 1026;
    v187[0] = v184;
    v188 = ": ";
    v189 = 770;
    *infoCnt = v187;
    v191 = "Error llvm::applehwtrace::Monitor::scanTask(UniqueContext &, const SystemTrace::LockToken &)";
    v192 = 770;
    nesting_depth = infoCnt;
    v194 = ": ";
    v195 = 770;
    size[0] = &nesting_depth;
    v197 = "Failed to get TASK_POLICY_STATE";
    v198 = 770;
    address[0] = size;
    p_policy_infoCnt = " (err=";
    v22 = v20;
    v201 = 770;
    v23 = v217 + 1;
    v207[0] = 3158325;
    do
    {
      *--v23 = a0123456789abcd_1[v22 & 0xF];
      ++v21;
      v24 = v22 >= 0x10;
      v22 >>= 4;
    }

    while (v24);
    if (v21 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v21 > 0x16)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v21;
      memcpy(&__dst, v23, v21);
      __dst.__r_.__value_.__s.__data_[v21] = 0;
      *&v202 = address;
      *&v203 = &__dst;
      LOWORD(v204) = 1026;
      *&v155 = &v202;
      *&v156 = ") ";
      LOWORD(v157) = 770;
      if (mach_error_string(v20))
      {
        v25 = mach_error_string(v20);
        if (*v25)
        {
LABEL_22:
          *&v160 = &v155;
          *&v161 = v25;
          LOWORD(v162) = 770;
          v26 = 2;
          goto LABEL_23;
        }
      }

      else
      {
        v25 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_22;
        }
      }

      v160 = v155;
      v161 = v156;
      v162 = v157;
      v26 = v157;
LABEL_23:
      if (BYTE1(v162) != 1)
      {
        v26 = 2;
      }

      v27 = &v160;
      if (BYTE1(v162) == 1)
      {
        v27 = v160;
      }

      *&v166 = v27;
      *(&v166 + 1) = *(&v160 + 1);
      *&v167 = "\n";
      LOBYTE(v168) = v26;
      BYTE1(v168) = 3;
      sub_298B996A4(&v166, thread_info_out);
      operator new();
    }

LABEL_262:
    sub_298ADDDA0();
  }

  if ((~v213 & 0xE0000) == 0)
  {
    std::generic_category();
    *&v202 = "LiveRecording.cpp";
    *&v203 = ":";
    LOWORD(v204) = 771;
    HIBYTE(v197) = 3;
    LODWORD(size[0]) = 3420469;
    *&v155 = &v202;
    *&v156 = size;
    LOWORD(v157) = 1026;
    *&v160 = &v155;
    *&v161 = ": ";
    LOWORD(v162) = 770;
    *&v166 = &v160;
    *&v167 = "Tracing DriverKit processes is unsupported.";
    LOWORD(v168) = 770;
    sub_298B996A4(&v166, address);
    operator new();
  }

  suspend_token = 0;
  v28 = *(a3 + 24);
  if (v28 != getpid())
  {
    task_suspend2(v14, &suspend_token);
  }

  if (*(a2 + 81) == 1)
  {
    v29 = *(a3 + 64);
    v30 = *(a3 + 72);
    while (v30 != v29)
    {
      v32 = *--v30;
      v31 = v32;
      *v30 = 0;
      if (v32)
      {
        (*(*v31 + 8))(v31);
      }
    }

    *(a3 + 72) = v29;
  }

  v172 = 0;
  _dyld_process_info_create();
  if (v172)
  {
    std::generic_category();
    address[0] = "LiveRecording.cpp";
    p_policy_infoCnt = ":";
    v201 = 771;
    HIBYTE(v194) = 3;
    LODWORD(nesting_depth) = 3225142;
    *&v202 = address;
    *&v203 = &nesting_depth;
    LOWORD(v204) = 1026;
    *&v160 = &v202;
    *&v161 = ": ";
    LOWORD(v162) = 770;
    *&info = &v160;
    v217[0] = "_dyld_process_info_create";
    LOWORD(p_policy_info) = 770;
    sub_298B996A4(&info, size);
    operator new();
  }

  _dyld_process_info_get_cache();
  if ((v209 & 1) == 0)
  {
    v33 = *(a2 + 8);
    v34 = *(v33 + 432);
    v35 = *(v33 + 440);
    if (v34 == v35)
    {
LABEL_51:
      *(&thread_info_outCnt + 1) = 0;
      v171 = 0;
      *&thread_info_outCnt = v207;
      policy_info.i64[1] = 0;
      v211[0] = 0;
      policy_info.i64[0] = v207;
      LOBYTE(v166) = 0;
      v169 = 0;
      sub_298C16C08(v33, 1, &policy_info, 2 * v208, 3, "???", 3uLL, &v166);
    }

    while (1)
    {
      v36 = *v34;
      if (**v34 == 1)
      {
        break;
      }

      if (++v34 == v35)
      {
        goto LABEL_51;
      }
    }

    *(&thread_info_outCnt + 1) = 0;
    v171 = 0;
    *&thread_info_outCnt = v207;
    v38 = v36 + 1;
    v211[0] = 0;
    policy_info = (v36 + 1);
    if (!sub_298BDC880(&policy_info, &thread_info_outCnt))
    {
      v211[0] = 0;
      policy_info = v38;
      info = thread_info_outCnt;
      v217[0] = v171;
      sub_298C4D524(a1, &policy_info, &info, *(a3 + 24));
    }

    v39 = *(a2 + 8);
    policy_info = 0uLL;
    if (thread_info_outCnt)
    {
      uuid_copy(&policy_info, thread_info_outCnt);
    }

    else
    {
      uuid_parse(*(&thread_info_outCnt + 1), &policy_info);
    }

    *&info = &policy_info;
    v40 = sub_298B223E4((v39 + 392), &policy_info, &unk_298CF78C8, &info);
    v41 = v40[55];
    v42 = v41;
    if ((v41 & 0x80u) != 0)
    {
      v41 = *(v40 + 5);
    }

    if (v41 == 3)
    {
      v43 = (v40 + 32);
      v44 = v42 >= 0 ? v40 + 32 : *(v40 + 4);
      v45 = *v44;
      v46 = v44[2];
      if (*"???" == v45 && asc_298EAE9A9[2] == v46)
      {
        error_value = 0;
        v48 = dyld_process_create_for_task();
        v49 = error_value;
        if (error_value)
        {
          v50 = 0;
          *thread_info_out = "LiveRecording.cpp";
          v178 = ":";
          v179 = 771;
          v176 = 3;
          v180[0] = thread_info_out;
          v181 = get_default;
          v182 = 1026;
          v184[0] = v180;
          v185 = ": ";
          v187[0] = v184;
          v188 = "Expected<std::string> getSharedCacheMainFile(task_read_t)";
          *infoCnt = v187;
          v186 = 770;
          v189 = 770;
          v191 = ": ";
          v192 = 770;
          nesting_depth = infoCnt;
          v194 = "dyld_process_create_for_task";
          v195 = 770;
          size[0] = &nesting_depth;
          v197 = " (err=";
          v198 = 770;
          v51 = v211 + 1;
          LODWORD(get_default[0]) = 3420726;
          do
          {
            *--v51 = a0123456789abcd_1[v49 & 0xF];
            ++v50;
            v24 = v49 >= 0x10;
            v49 >>= 4;
          }

          while (v24);
          std::generic_category();
          if (v50 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_262;
          }

          if (v50 > 0x16)
          {
            operator new();
          }

          v174 = v50;
          memcpy(&policy_infoCnt, v51, v50);
          *(&policy_infoCnt + v50) = 0;
          address[0] = size;
          p_policy_infoCnt = &policy_infoCnt;
          v201 = 1026;
          *&v202 = address;
          *&v203 = ") ";
          LOWORD(v204) = 770;
          if (mach_error_string(error_value))
          {
            v59 = mach_error_string(error_value);
          }

          else
          {
            v59 = "unknown error";
          }

          if (*v59)
          {
            *&v160 = &v202;
            *&v161 = v59;
            LOWORD(v162) = 770;
            v60 = 2;
            v61 = &v160;
LABEL_91:
            *&info = v61;
            *(&info + 1) = v58;
            v217[0] = "\n";
            v62 = 3;
            goto LABEL_92;
          }

          v160 = v202;
          v161 = v203;
          v162 = v204;
          v60 = v204;
          if (v204)
          {
            if (v204 != 1)
            {
              v58 = *(&v160 + 1);
              v61 = &v160;
              if (BYTE1(v162) == 1)
              {
                v61 = v160;
              }

              else
              {
                v60 = 2;
              }

              goto LABEL_91;
            }

            *&info = "\n";
            v62 = 1;
            v60 = 3;
          }

          else
          {
            v62 = 1;
          }

LABEL_92:
          LOBYTE(p_policy_info) = v60;
          BYTE1(p_policy_info) = v62;
          sub_298B996A4(&info, &__dst);
          operator new();
        }

        v52 = v48;
        v53 = dyld_process_snapshot_create_for_process();
        v54 = error_value;
        if (!error_value)
        {
          v63 = v53;
          if (!dyld_process_snapshot_get_shared_cache())
          {
            address[0] = "LiveRecording.cpp";
            p_policy_infoCnt = ":";
            v201 = 771;
            std::generic_category();
            HIBYTE(v194) = 3;
            LODWORD(nesting_depth) = 3355702;
            *&v202 = address;
            *&v203 = &nesting_depth;
            LOWORD(v204) = 1026;
            *&v160 = &v202;
            *&v161 = ": ";
            LOWORD(v162) = 770;
            *&info = &v160;
            v217[0] = "no shared cache found within snapshot";
            LOWORD(p_policy_info) = 770;
            sub_298B996A4(&info, size);
            operator new();
          }

          policy_info.i64[0] = 0;
          policy_info.i64[1] = &policy_info;
          v211[0] = 0x4802000000;
          v211[1] = sub_298C591D4;
          v211[2] = sub_298C59210;
          LOBYTE(v212) = 0;
          v215 = 0;
          *&info = MEMORY[0x29EDCA5F8];
          *(&info + 1) = 1107296256;
          v217[0] = sub_298C59230;
          v217[1] = &unk_2A1F1FE18;
          p_policy_info = &policy_info;
          dyld_shared_cache_for_each_file();
          v206 &= ~1u;
          if (*(policy_info.i64[1] + 63) < 0)
          {
            sub_298AFE11C(&__dst, *(policy_info.i64[1] + 40), *(policy_info.i64[1] + 48));
          }

          else
          {
            __dst = *(policy_info.i64[1] + 40);
          }

          _Block_object_dispose(&policy_info, 8);
          if (v215 == 1 && v214 < 0)
          {
            operator delete(v212);
          }

          if (v63)
          {
            dyld_process_snapshot_dispose();
          }

          if (v52)
          {
            dyld_process_dispose();
          }

          if ((v206 & 1) != 0 && (v83 = __dst.__r_.__value_.__r.__words[0], __dst.__r_.__value_.__r.__words[0] = 0, v83))
          {
            *&info = v83;
            sub_298AE72FC(&info, policy_info.i64);
            if (info)
            {
              (*(*info + 8))(info);
            }
          }

          else
          {
            std::string::operator=(v43, &__dst);
          }

          if (v206)
          {
            v84 = __dst.__r_.__value_.__r.__words[0];
            __dst.__r_.__value_.__r.__words[0] = 0;
            if (v84)
            {
              (*(*v84 + 8))(v84);
            }
          }

          else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }

        v55 = 0;
        *thread_info_out = "LiveRecording.cpp";
        v178 = ":";
        v179 = 771;
        v176 = 3;
        v180[0] = thread_info_out;
        v181 = get_default;
        v182 = 1026;
        v184[0] = v180;
        v185 = ": ";
        v187[0] = v184;
        v188 = "Expected<std::string> getSharedCacheMainFile(task_read_t)";
        *infoCnt = v187;
        v186 = 770;
        v189 = 770;
        v191 = ": ";
        v192 = 770;
        nesting_depth = infoCnt;
        v194 = "dyld_process_snapshot_create_for_process";
        v195 = 770;
        size[0] = &nesting_depth;
        v197 = " (err=";
        v198 = 770;
        v56 = v211 + 1;
        LODWORD(get_default[0]) = 3420982;
        do
        {
          *--v56 = a0123456789abcd_1[v54 & 0xF];
          ++v55;
          v24 = v54 >= 0x10;
          v54 >>= 4;
        }

        while (v24);
        std::generic_category();
        if (v55 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_262;
        }

        if (v55 > 0x16)
        {
          operator new();
        }

        v174 = v55;
        memcpy(&policy_infoCnt, v56, v55);
        *(&policy_infoCnt + v55) = 0;
        address[0] = size;
        p_policy_infoCnt = &policy_infoCnt;
        v201 = 1026;
        *&v202 = address;
        *&v203 = ") ";
        LOWORD(v204) = 770;
        if (mach_error_string(error_value))
        {
          v79 = mach_error_string(error_value);
        }

        else
        {
          v79 = "unknown error";
        }

        if (*v79)
        {
          *&v160 = &v202;
          *&v161 = v79;
          LOWORD(v162) = 770;
          v80 = 2;
          v81 = &v160;
LABEL_127:
          *&info = v81;
          *(&info + 1) = v78;
          v217[0] = "\n";
          v82 = 3;
          goto LABEL_128;
        }

        v160 = v202;
        v161 = v203;
        v162 = v204;
        v80 = v204;
        if (v204)
        {
          if (v204 != 1)
          {
            v78 = *(&v160 + 1);
            v81 = &v160;
            if (BYTE1(v162) == 1)
            {
              v81 = v160;
            }

            else
            {
              v80 = 2;
            }

            goto LABEL_127;
          }

          *&info = "\n";
          v82 = 1;
          v80 = 3;
        }

        else
        {
          v82 = 1;
        }

LABEL_128:
        LOBYTE(p_policy_info) = v80;
        BYTE1(p_policy_info) = v82;
        sub_298B996A4(&info, &__dst);
        operator new();
      }
    }
  }

LABEL_160:
  *&v160 = 0;
  *(&v160 + 1) = &v160;
  *&v161 = 0x4002000000;
  *(&v161 + 1) = sub_298C4D98C;
  v162 = sub_298C4D9A8;
  v163 = 0;
  v164 = 0;
  v165 = 0x2000000000;
  *&v155 = MEMORY[0x29EDCA5F8];
  *(&v155 + 1) = 1107296256;
  *&v156 = sub_298C4DA2C;
  *(&v156 + 1) = &unk_2A1F1FDB8;
  v157 = &v160;
  v158 = a2;
  v159 = a3;
  _dyld_process_info_for_each_image();
  v153 = *(a2 + 8);
  v85 = *(&v160 + 1);
  address[0] = 0;
  size[0] = 0;
  LODWORD(nesting_depth) = 0;
  infoCnt[0] = 19;
  while (!vm_region_recurse_64(v14, address, size, &nesting_depth, &info, infoCnt))
  {
    if (v219)
    {
      LODWORD(nesting_depth) = nesting_depth + 1;
    }

    else
    {
      v97 = address[0];
      address[0] += size[0];
      if (info == 5)
      {
        *__error() = 0;
        bzero(&policy_info, 0x400uLL);
        v98 = proc_regionfilename(*(a3 + 24), v97, &policy_info, 0x400u);
        if (!*__error() && v98 >= 0x19)
        {
          v99 = &v207[1] + v98 + 3;
          v100 = *v99;
          v101 = *(v99 + 1);
          v102 = *(v99 + 2);
          v103 = v99[24];
          v104 = v100 == 0x2D636A626F62696CLL && v101 == 0x696C6F706D617274;
          v105 = v104 && v102 == 0x696C79642E73656ELL;
          if (v105 && v103 == 98)
          {
            v107 = sub_298BA724C(&policy_info, v98);
            v108 = *(v85 + 48);
            if (v108)
            {
              v109 = v108 - 1;
              v110 = (v108 - 1) & v107;
              v111 = *(v85 + 40);
              v112 = v111 + 8 * v108 + 8;
              v113 = 1;
              v114 = *(v111 + 8 * v110);
              if (v114)
              {
                while (1)
                {
                  v147 = v113;
                  v148 = v109;
                  v149 = v111;
                  v150 = v112;
                  v151 = v107;
                  v152 = v110;
                  if (v114 != -8 && *(v112 + 4 * v110) == v107 && v98 == *v114 && !memcmp(&policy_info, v114 + *(v85 + 60), v98))
                  {
                    break;
                  }

                  v107 = v151;
                  v109 = v148;
                  v110 = (v152 + v147) & v148;
                  v113 = v147 + 1;
                  v111 = v149;
                  v112 = v150;
                  v114 = *(v149 + 8 * v110);
                  if (!v114)
                  {
                    goto LABEL_184;
                  }
                }

                if (v152 != -1 && v152 != v108)
                {
                  v115 = *(v149 + 8 * v152);
                  if (v97 != *(v115 + 24))
                  {
                    v202 = (v115 + 8);
                    *&v203 = 0;
                    v116 = mach_continuous_time();
                    sub_298C177D8(v153, a3, &v202, &policy_info, v98, 2 * v97, v116, 5);
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_184:
    ;
  }

  *a1 = 0;
  _Block_object_dispose(&v160, 8);
  if (HIDWORD(v164) && v164)
  {
    v86 = 0;
    v87 = 8 * v164;
    do
    {
      v88 = *(v163 + v86);
      if (v88 != -8 && v88 != 0)
      {
        MEMORY[0x29C2945E0]();
      }

      v86 += 8;
    }

    while (v87 != v86);
  }

  free(v163);
  _dyld_process_info_release();
  if (*a1)
  {
    v90 = 0;
    v91 = suspend_token;
    if (!suspend_token)
    {
      goto LABEL_173;
    }

    goto LABEL_172;
  }

  LODWORD(policy_infoCnt) = 0;
  get_default[0] = 0;
  v92 = task_threads(v14, get_default, &policy_infoCnt);
  if (v92)
  {
    v93 = v92;
    v94 = 0;
    v184[0] = "LiveRecording.cpp";
    v185 = ":";
    v186 = 771;
    HIBYTE(v178) = 3;
    v187[0] = v184;
    v188 = thread_info_out;
    v189 = 1026;
    *infoCnt = v187;
    v191 = ": ";
    v192 = 770;
    nesting_depth = infoCnt;
    v194 = "Error llvm::applehwtrace::Monitor::getThreadIDs(UniqueContext &, task_read_t, const SystemTrace::LockToken &)";
    v195 = 770;
    size[0] = &nesting_depth;
    v197 = ": ";
    v198 = 770;
    address[0] = size;
    p_policy_infoCnt = "task_threads failed";
    v201 = 770;
    *&v202 = address;
    *&v203 = " (err=";
    v95 = v92;
    LOWORD(v204) = 770;
    v96 = v211 + 1;
    thread_info_out[0] = 3158583;
    do
    {
      *--v96 = a0123456789abcd_1[v95 & 0xF];
      ++v94;
      v24 = v95 >= 0x10;
      v95 >>= 4;
    }

    while (v24);
    std::generic_category();
    if (v94 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_262;
    }

    if (v94 > 0x16)
    {
      operator new();
    }

    HIBYTE(v208) = v94;
    memcpy(v207, v96, v94);
    *(v207 + v94) = 0;
    *&v155 = &v202;
    *&v156 = v207;
    LOWORD(v157) = 1026;
    *&v160 = &v155;
    *&v161 = ") ";
    LOWORD(v162) = 770;
    if (mach_error_string(v93))
    {
      v122 = mach_error_string(v93);
    }

    else
    {
      v122 = "unknown error";
    }

    if (*v122)
    {
      *&v166 = &v160;
      *&v167 = v122;
      LOWORD(v168) = 770;
      v123 = 2;
      v124 = &v166;
LABEL_224:
      *&info = v124;
      *(&info + 1) = v121;
      v217[0] = "\n";
      v125 = 3;
      goto LABEL_225;
    }

    v166 = v160;
    v167 = v161;
    v168 = v162;
    v123 = v162;
    if (v162)
    {
      if (v162 != 1)
      {
        v121 = *(&v166 + 1);
        v124 = &v166;
        if (BYTE1(v168) == 1)
        {
          v124 = v166;
        }

        else
        {
          v123 = 2;
        }

        goto LABEL_224;
      }

      *&info = "\n";
      v125 = 1;
      v123 = 3;
    }

    else
    {
      v125 = 1;
    }

LABEL_225:
    LOBYTE(p_policy_info) = v123;
    BYTE1(p_policy_info) = v125;
    sub_298B996A4(&info, v180);
    operator new();
  }

  v117 = policy_infoCnt;
  if (policy_infoCnt)
  {
    v118 = 0;
    while (1)
    {
      LODWORD(thread_info_outCnt) = 6;
      v119 = thread_info(get_default[0][v118], 4u, thread_info_out, &thread_info_outCnt);
      if (v119)
      {
        break;
      }

      policy_info.i64[0] = *thread_info_out;
      sub_298AFFBE8(a3 + 88, policy_info.i64);
      ++v118;
      v117 = policy_infoCnt;
      if (v118 >= policy_infoCnt)
      {
        goto LABEL_217;
      }
    }

    v126 = v119;
    v127 = 0;
    v184[0] = "LiveRecording.cpp";
    v185 = ":";
    v186 = 771;
    HIBYTE(v208) = 3;
    v187[0] = v184;
    v188 = v207;
    v189 = 1026;
    *infoCnt = v187;
    v191 = ": ";
    v192 = 770;
    nesting_depth = infoCnt;
    v194 = "Error llvm::applehwtrace::Monitor::getThreadIDs(UniqueContext &, task_read_t, const SystemTrace::LockToken &)";
    v195 = 770;
    size[0] = &nesting_depth;
    v197 = ": ";
    v198 = 770;
    address[0] = size;
    p_policy_infoCnt = "thread_info failed";
    v201 = 770;
    *&v202 = address;
    *&v203 = " (err=";
    v128 = v119;
    LOWORD(v204) = 770;
    v129 = v211 + 1;
    v207[0] = 3552055;
    do
    {
      *--v129 = a0123456789abcd_1[v128 & 0xF];
      ++v127;
      v24 = v128 >= 0x10;
      v128 >>= 4;
    }

    while (v24);
    std::generic_category();
    if (v127 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_262;
    }

    if (v127 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v127;
    memcpy(&__dst, v129, v127);
    __dst.__r_.__value_.__s.__data_[v127] = 0;
    *&v155 = &v202;
    *&v156 = &__dst;
    LOWORD(v157) = 1026;
    *&v160 = &v155;
    *&v161 = ") ";
    LOWORD(v162) = 770;
    if (mach_error_string(v126))
    {
      v132 = mach_error_string(v126);
    }

    else
    {
      v132 = "unknown error";
    }

    if (*v132)
    {
      *&v166 = &v160;
      *&v167 = v132;
      LOWORD(v168) = 770;
      v133 = 2;
      v134 = &v166;
LABEL_244:
      *&info = v134;
      *(&info + 1) = v131;
      v217[0] = "\n";
      v135 = 3;
      goto LABEL_245;
    }

    v166 = v160;
    v167 = v161;
    v168 = v162;
    v133 = v162;
    if (v162)
    {
      if (v162 != 1)
      {
        v131 = *(&v166 + 1);
        v134 = v166;
        if (BYTE1(v168) != 1)
        {
          v134 = &v166;
          v133 = 2;
        }

        goto LABEL_244;
      }

      *&info = "\n";
      v135 = 1;
      v133 = 3;
    }

    else
    {
      v135 = 1;
    }

LABEL_245:
    LOBYTE(p_policy_info) = v133;
    BYTE1(p_policy_info) = v135;
    sub_298B996A4(&info, v180);
    operator new();
  }

LABEL_217:
  *a1 = 0;
  if (v117)
  {
    v136 = 0;
    v137 = MEMORY[0x29EDCA6B0];
    do
    {
      mach_port_deallocate(*v137, get_default[0][v136++]);
    }

    while (v136 < policy_infoCnt);
    v138 = 4 * policy_infoCnt;
  }

  else
  {
    v138 = 0;
  }

  MEMORY[0x29C295580](*MEMORY[0x29EDCA6B0], get_default[0], v138);
  v90 = 1;
  v91 = suspend_token;
  if (suspend_token)
  {
LABEL_172:
    task_resume2(v91);
  }

LABEL_173:
  if ((v90 & 1) == 0)
  {
    *(a3 + 128) = 1;
  }
}

void sub_298C4D524(void *a1, const unsigned __int8 **a2, const unsigned __int8 **a3, unint64_t a4)
{
  v53 = *MEMORY[0x29EDCA608];
  std::generic_category();
  v27[0] = "LiveRecording.cpp";
  v27[2] = ":";
  v28 = 771;
  v26 = 3;
  LODWORD(v25) = 3485746;
  v29[0] = v27;
  v29[2] = &v25;
  v30 = 1026;
  v31[0] = v29;
  v31[2] = ": ";
  v32 = 770;
  v33[0] = v31;
  v33[2] = "Multiple shared caches are unsupported (106054931): tracking ";
  v34 = 770;
  v7 = v24;
  sub_298B1FB90(a2, v24);
  v35[0] = v33;
  v35[2] = v24;
  v36 = 1026;
  v37[0] = v35;
  v37[2] = ", ignoring ";
  v38 = 770;
  v8 = v23;
  sub_298B1FB90(a3, v23);
  v9 = v38;
  if (v38 == 1)
  {
    v39 = v23;
    v42 = 260;
    v10 = 4;
    v7 = v40;
  }

  else
  {
    if (!v38)
    {
      v10 = 0;
      v42 = 256;
      v11 = 1;
      v44 = 0;
      v45 = 1;
      if (!a4)
      {
LABEL_4:
        v52 = 48;
        v12 = 20;
        goto LABEL_15;
      }

LABEL_12:
      v14 = 20;
      do
      {
        *(&v51[3] + v14--) = (a4 % 0xA) | 0x30;
        v15 = a4 > 9;
        a4 /= 0xAuLL;
      }

      while (v15);
      v12 = v14 + 1;
LABEL_15:
      v16 = 21 - v12;
      if ((21 - v12) < 0x7FFFFFFFFFFFFFF8)
      {
        if (v16 <= 0x16)
        {
          v22 = 21 - v12;
          if (v12 != 21)
          {
            memcpy(&__p, &v51[3] + v12, 21 - v12);
          }

          *(&__p + v16) = 0;
          if (v10)
          {
            v17 = 2;
            if (v11)
            {
              v19 = v10;
            }

            else
            {
              v19 = 2;
            }

            v20 = v43;
            if (v11)
            {
              v20 = v8;
            }

            v46[0] = v20;
            v46[1] = v7;
            v46[2] = &__p;
            LOBYTE(v47) = v19;
            HIBYTE(v47) = 4;
            v48[0] = v46;
            v48[2] = ")";
            v18 = 3;
          }

          else
          {
            v17 = 0;
            v47 = 256;
            v18 = 1;
          }

          v49 = v17;
          v50 = v18;
          sub_298B996A4(v48, v51);
          operator new();
        }

        operator new();
      }

      sub_298ADDDA0();
    }

    v10 = 2;
    if (HIBYTE(v38) != 1)
    {
      v9 = 2;
    }

    v13 = v37;
    if (HIBYTE(v38) == 1)
    {
      v13 = v37[0];
    }

    v39 = v13;
    v40 = v37[1];
    v41 = v23;
    LOBYTE(v42) = v9;
    HIBYTE(v42) = 4;
    v8 = &v39;
  }

  v11 = 0;
  v43[0] = v8;
  v43[1] = v7;
  v43[2] = " (pid ";
  v44 = v10;
  v45 = 3;
  if (!a4)
  {
    goto LABEL_4;
  }

  goto LABEL_12;
}

__n128 sub_298C4D98C(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  result = a2[3];
  a1[3] = result;
  *(&a2[2] + 8) = 0uLL;
  a2[3].n128_u32[2] = 0;
  return result;
}

void sub_298C4D9A8(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 40) + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  v7 = *(a1 + 40);

  free(v7);
}

void sub_298C4DA2C(void *a1, uint64_t a2, const unsigned __int8 *a3, int8x16_t *__s)
{
  v8 = a1[5];
  v9 = *(a1[4] + 8);
  if (__s)
  {
    v10 = strlen(__s->i8);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_298BA724C(__s, v10);
  v12 = sub_298B96440((v9 + 10), __s, v10, v11);
  v13 = *(v9 + 5);
  v14 = v12;
  v15 = *(v13 + 8 * v12);
  if (v15 == -8)
  {
    --v9[14];
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  v29 = a3;
  v20 = a2;
  v21 = v8;
  v22 = operator new(v10 + 33, 8uLL);
  v23 = v22;
  v24 = (v22 + 4);
  if (v10)
  {
    memcpy(v22 + 4, __s, v10);
  }

  v24[v10] = 0;
  *v23 = v10;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  *(v13 + 8 * v14) = v23;
  ++v9[13];
  v25 = (*(v9 + 5) + 8 * sub_298B96888(v9 + 10, v14));
  v8 = v21;
  a2 = v20;
  a3 = v29;
  v15 = *v25;
  if (*v25)
  {
    v26 = v15 == -8;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    do
    {
      v27 = v25[1];
      ++v25;
      v15 = v27;
      if (v27)
      {
        v28 = v15 == -8;
      }

      else
      {
        v28 = 1;
      }
    }

    while (v28);
  }

LABEL_6:
  uuid_copy((v15 + 8), a3);
  *(v15 + 24) = a2;
  v16 = *(v8 + 8);
  v17 = a1[6];
  v30[1] = 0;
  v30[2] = 0;
  v30[0] = a3;
  if (__s)
  {
    v18 = strlen(__s->i8);
  }

  else
  {
    v18 = 0;
  }

  v19 = mach_continuous_time();
  sub_298C177D8(v16, v17, v30, __s, v18, 2 * a2, v19, 3);
}

void sub_298C4DC08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      goto LABEL_30;
    }

    v8 = a3;
    if (!a3)
    {
      std::generic_category();
      v56[0] = "LiveRecording.cpp";
      v57 = ":";
      v58 = 771;
      v55 = 3;
      __p[0] = 3289657;
      v59[0] = v56;
      v60 = __p;
      v61 = 1026;
      *&v62 = v59;
      *&v63 = ": ";
      LOWORD(v64) = 770;
      *&v65 = &v62;
      *&v66 = "Unspecified ktrace_session_t";
      LOWORD(v67) = 770;
      goto LABEL_41;
    }
  }

  else
  {
    v8 = ktrace_session_create();
    if (*(a2 + 24) == 3)
    {
      if (!a4)
      {
        std::generic_category();
        v56[0] = "LiveRecording.cpp";
        v57 = ":";
        v58 = 771;
        v55 = 3;
        __p[0] = 3683896;
        v59[0] = v56;
        v60 = __p;
        v61 = 1026;
        *&v62 = v59;
        *&v63 = ": ";
        LOWORD(v64) = 770;
        *&v65 = &v62;
        *&v66 = "Unspecified ktrace_file_t";
        LOWORD(v67) = 770;
        goto LABEL_39;
      }

      v9 = ktrace_set_ktrace_file();
      if (v9)
      {
        v10 = v9;
        std::generic_category();
        v56[0] = "LiveRecording.cpp";
        v57 = ":";
        v58 = 771;
        v55 = 3;
        v11 = 3225400;
        goto LABEL_13;
      }
    }

    else
    {
      ktrace_add_stackshot_flags();
    }

    if (*(a2 + 168) == 1)
    {
      v12 = ktrace_filter_pid();
      if (v12)
      {
        v10 = v12;
        std::generic_category();
        v56[0] = "LiveRecording.cpp";
        v57 = ":";
        v58 = 771;
        v55 = 3;
        v11 = 3356728;
LABEL_13:
        __p[0] = v11;
        v59[0] = v56;
        v60 = __p;
        v61 = 1026;
        *&v62 = v59;
        *&v63 = ": ";
        LOWORD(v64) = 770;
        v13 = strerror(v10);
        if (*v13)
        {
          *&v65 = &v62;
          *&v66 = v13;
          LOWORD(v67) = 770;
        }

        else
        {
          v65 = v62;
          v66 = v63;
          v67 = v64;
        }

LABEL_39:
        sub_298B996A4(&v65, v68);
        operator new();
      }
    }

    ktrace_session_set_default_event_names_enabled();
    ktrace_session_set_event_names_enabled();
    ktrace_set_jetsam_coalitions_enabled();
    ktrace_set_thread_groups_enabled();
    ktrace_set_walltimes_enabled();
    ktrace_set_vnode_paths_enabled();
    ktrace_set_thread_cputime_enabled();
    ktrace_set_uuid_map_enabled();
    ktrace_set_remotetime_conversion_enabled();
    ktrace_set_coprocessor_tracing_enabled();
    ktrace_set_execnames_enabled();
    ktrace_set_collection_qos();
    v48 = MEMORY[0x29EDCA5F8];
    v49 = 0x40000000;
    v50 = sub_298C4E5B0;
    v51 = &unk_29EEB6608;
    v52 = a2;
    v53 = v8;
    ktrace_set_completion_handler();
    *(a2 + 32) = v8;
  }

  if (v8)
  {
    v42 = MEMORY[0x29EDCA5F8];
    v43 = 0x40000000;
    v44 = sub_298C4E5FC;
    v45 = &unk_29EEB6628;
    v46 = a2;
    v47 = v8;
    ktrace_events_single();
    v37 = MEMORY[0x29EDCA5F8];
    v38 = 0x40000000;
    v39 = sub_298C4E77C;
    v40 = &unk_29EEB6648;
    v41 = a2;
    ktrace_events_single();
    v32 = MEMORY[0x29EDCA5F8];
    v33 = 0x40000000;
    v34 = sub_298C4E880;
    v35 = &unk_29EEB6668;
    v36 = a2;
    ktrace_events_single();
    *buf = 0;
    v23 = buf;
    v24 = 0x5802000000;
    v25 = sub_298C4E988;
    v27[0] = 0;
    v27[1] = 0;
    v26 = sub_298C4E9E4;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0x2000000000;
    *&v65 = MEMORY[0x29EDCA5F8];
    *(&v65 + 1) = 0x40000000;
    *&v66 = sub_298C592F8;
    *(&v66 + 1) = &unk_29EEB66E8;
    v67 = v27;
    dyld_for_each_installed_shared_cache();
    ktrace_events_range();
    ktrace_stackshot();
    ktrace_set_dropped_events_handler();
    _Block_object_dispose(buf, 8);
    if (HIDWORD(v30) && v30)
    {
      v14 = 0;
      v15 = 8 * v30;
      do
      {
        v16 = *(v29 + v14);
        if (v16 != -8 && v16 != 0)
        {
          if (*(v16 + 31) < 0)
          {
            operator delete(*(v16 + 8));
          }

          MEMORY[0x29C2945E0]();
        }

        v14 += 8;
      }

      while (v15 != v14);
    }

    free(v29);
    MEMORY[0x29C2945E0](v27[0], 8);
  }

LABEL_30:
  if ((*(a2 + 24) & 0xFFFFFFFE) == 2)
  {
    v18 = ktrace_start();
    if (v18)
    {
      v19 = v18;
      std::generic_category();
      v56[0] = "LiveRecording.cpp";
      v57 = ":";
      v58 = 771;
      v55 = 3;
      __p[0] = 3160121;
      v59[0] = v56;
      v60 = __p;
      v61 = 1026;
      *&v62 = v59;
      *&v63 = ": ";
      LOWORD(v64) = 770;
      v20 = strerror(v19);
      if (*v20)
      {
        *&v65 = &v62;
        *&v66 = v20;
        LOWORD(v67) = 770;
      }

      else
      {
        v65 = v62;
        v66 = v63;
        v67 = v64;
      }

LABEL_41:
      sub_298B996A4(&v65, v68);
      operator new();
    }
  }

  v21 = sub_298B227A0(1);
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KTraceSessionProcessor::configure", &unk_298EC00B5, buf, 2u);
  }

  *(a2 + 4) = 1;
  *a1 = 0;
}

void sub_298C4E5B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  ktrace_session_destroy();
  std::mutex::lock((v1 + 40));
  *(v1 + 32) = 0;
  std::condition_variable::notify_one((v1 + 104));

  std::mutex::unlock((v1 + 40));
}

void sub_298C4E5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v4 = *(v2 + 8);
    ktrace_get_current_timestamp();
    ktrace_get_continuous_from_timestamp();
    std::mutex::lock(v4);
    operator new();
  }
}

void sub_298C4E77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 16);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v5 = *(v2 + 8);
    std::mutex::lock(v5);
    v6 = *(a2 + 8);
    v8 = v3;
    v7 = *sub_298C16B60(v5[7].__m_.__opaque, &v8);
    if (!v7)
    {
      operator new();
    }

    v8 = v6;
    sub_298AFFBE8(v7 + 88, &v8);
    std::mutex::unlock(v5);
  }
}

void sub_298C4E880(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 88);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v5 = *(v2 + 8);
    std::mutex::lock(v5);
    v6 = *(a2 + 40);
    v8 = v3;
    v7 = *sub_298C16B60(v5[7].__m_.__opaque, &v8);
    if (!v7)
    {
      operator new();
    }

    v8 = v6;
    sub_298AFFBE8(v7 + 88, &v8);
    std::mutex::unlock(v5);
  }
}

__n128 sub_298C4E988(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v2 = *(a1 + 52);
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  v3 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

void sub_298C4E9E4(uint64_t a1)
{
  if (*(a1 + 76))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 64) + v3);
        if (v5 != -8 && v5 != 0)
        {
          if (*(v5 + 31) < 0)
          {
            operator delete(*(v5 + 8));
          }

          MEMORY[0x29C2945E0]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(a1 + 64));

  JUMPOUT(0x29C2945E0);
}

void sub_298C4EA90(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = *(v2 + 8);
  v4 = *(a1[4] + 8);
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  v53 = a1[6];
  v52 = a2;
  v7 = *(a2 + 88);
  if ((v7 & 0x80000000) == 0 && (v6 & (v5 != v7)) == 0)
  {
    v8 = a2;
    std::mutex::lock(v3);
    v50[0] = *(v8 + 88);
    v9 = *sub_298C16B60(v3[7].__m_.__opaque, v50);
    if (!v9)
    {
      operator new();
    }

    LOBYTE(v54) = 0;
    v51 = 0;
    v10 = *(v8 + 48);
    v50[0] = v4 + 5;
    v50[1] = &v52;
    v50[2] = &v51;
    v50[3] = v3;
    v50[4] = v9;
    v50[5] = &v53;
    v50[6] = &v54;
    v11 = v10 >> 2;
    if (v11 <= 5)
    {
      if (v10 >> 2)
      {
        if (v11 != 1)
        {
          if (v11 == 5)
          {
            LOBYTE(v54) = 1;
            v12 = v4[7].i32[0];
            if (v12)
            {
              v13 = v4[5];
              v14 = *(v8 + 40);
              v15 = v12 - 1;
              v16 = (37 * v14) & v15;
              v17 = (*&v13 + 48 * v16);
              v18 = *v17;
              if (v14 == *v17)
              {
                v19 = 0;
                v20 = 1;
LABEL_28:
                *(v17 + 8) = v19;
                *(v17 + 9) = v20;
LABEL_33:
                *(v17 + 10) = *(v8 + 8);
                *(v17 + 18) = *(v8 + 16);
                v17[4] = *(v8 + 24);
                v17[5] = *(v8 + 32);
                goto LABEL_34;
              }

              v42 = 0;
              v43 = 1;
              v20 = 1;
              while (v18 != -1)
              {
                if (v42)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = v18 == -2;
                }

                if (v44)
                {
                  v42 = v17;
                }

                v45 = v16 + v43++;
                v16 = v45 & v15;
                v17 = (*&v13 + 48 * v16);
                v18 = *v17;
                if (v14 == *v17)
                {
                  v19 = 0;
                  goto LABEL_28;
                }
              }

              if (v42)
              {
                v36 = v42;
              }

              else
              {
                v36 = v17;
              }
            }

            else
            {
              v36 = 0;
            }

            v17 = sub_298C59E68(&v4[5], (v8 + 40), v36);
            *v17 = *(v8 + 40);
            v17[5] = 0;
            *(v17 + 3) = 0u;
            *(v17 + 1) = 0u;
            v8 = v52;
            v19 = v51;
            v20 = v54;
            goto LABEL_28;
          }

LABEL_34:
          std::mutex::unlock(v3);
          return;
        }

LABEL_23:
        sub_298C595A4(v50);
        goto LABEL_34;
      }

      v29 = v4[7].i32[0];
      if (v29)
      {
        v30 = v4[5];
        v31 = *(v8 + 40);
        v32 = v29 - 1;
        v33 = (37 * v31) & v32;
        v17 = (*&v30 + 48 * v33);
        v34 = *v17;
        if (v31 == *v17)
        {
LABEL_20:
          v27 = 0;
          *(v17 + 8) = 0;
LABEL_32:
          *(v17 + 9) = v27;
          goto LABEL_33;
        }

        v38 = 0;
        v39 = 1;
        while (v34 != -1)
        {
          if (v38)
          {
            v40 = 0;
          }

          else
          {
            v40 = v34 == -2;
          }

          if (v40)
          {
            v38 = v17;
          }

          v41 = v33 + v39++;
          v33 = v41 & v32;
          v17 = (*&v30 + 48 * v33);
          v34 = *v17;
          if (v31 == *v17)
          {
            goto LABEL_20;
          }
        }

        if (v38)
        {
          v35 = v38;
        }

        else
        {
          v35 = v17;
        }
      }

      else
      {
        v35 = 0;
      }

      v17 = sub_298C59E68(&v4[5], (v8 + 40), v35);
      *v17 = *(v8 + 40);
      v17[5] = 0;
      *(v17 + 3) = 0u;
      *(v17 + 1) = 0u;
      v8 = v52;
      v27 = v54;
      *(v17 + 8) = v51;
      goto LABEL_32;
    }

    if (v11 == 6)
    {
      LOBYTE(v54) = 1;
      goto LABEL_23;
    }

    if (v11 == 11)
    {
      v51 = 1;
      goto LABEL_23;
    }

    if (v11 != 10)
    {
      goto LABEL_34;
    }

    v51 = 1;
    v21 = v4[7].i32[0];
    if (v21)
    {
      v22 = v4[5];
      v23 = *(v8 + 40);
      v24 = v21 - 1;
      v25 = (37 * v23) & v24;
      v17 = (*&v22 + 48 * v25);
      v26 = *v17;
      if (v23 == *v17)
      {
        v27 = 0;
        v28 = 1;
LABEL_31:
        *(v17 + 8) = v28;
        goto LABEL_32;
      }

      v46 = 0;
      v47 = 1;
      v28 = 1;
      while (v26 != -1)
      {
        if (v46)
        {
          v48 = 0;
        }

        else
        {
          v48 = v26 == -2;
        }

        if (v48)
        {
          v46 = v17;
        }

        v49 = v25 + v47++;
        v25 = v49 & v24;
        v17 = (*&v22 + 48 * v25);
        v26 = *v17;
        if (v23 == *v17)
        {
          v27 = 0;
          goto LABEL_31;
        }
      }

      if (v46)
      {
        v37 = v46;
      }

      else
      {
        v37 = v17;
      }
    }

    else
    {
      v37 = 0;
    }

    v17 = sub_298C59E68(&v4[5], (v8 + 40), v37);
    *v17 = *(v8 + 40);
    v17[5] = 0;
    *(v17 + 3) = 0u;
    *(v17 + 1) = 0u;
    v8 = v52;
    v28 = v51;
    v27 = v54;
    goto LABEL_31;
  }
}

void *sub_298C4EEB8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v8[0] = a2;
  v8[1] = a3;
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = v3[20];
  v6 = v3[21];
  v9[0] = &unk_2A1F1FF58;
  v9[1] = v3;
  v10 = v9;
  sub_298C4EFA8(v4, v5, v6, 0, v8, v9);
  result = v10;
  if (v10 == v9)
  {
    return (*(*v10 + 32))(v10);
  }

  if (v10)
  {
    return (*(*v10 + 40))();
  }

  return result;
}

void sub_298C4EFA8(std::mutex *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v18[0] = a2;
  v18[1] = a3;
  std::mutex::lock(a1);
  v17[0] = v18;
  v17[1] = a1;
  v16[0] = a1;
  v16[1] = a6;
  if (a4)
  {
    v10 = *(*a4 + 24) + *(*a4 + 16);
    v19[0] = *(*a4 + 16);
    v19[1] = v10;
    sub_298C4835C(v19, sub_298C5A278, v17, sub_298C5A360, v16, &v15);
    v11 = v15;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_298C4835C(a5, sub_298C5A278, v17, sub_298C5A360, v16, &v15);
    v11 = v15;
    if (!v15)
    {
LABEL_10:
      std::mutex::unlock(a1);
      return;
    }
  }

  v14 = v11;
  v15 = 0;
  v12 = *(a6 + 24);
  if (v12)
  {
    (*(*v12 + 48))(v12, &v14);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    goto LABEL_10;
  }

  v13 = sub_298AE761C();
  sub_298C4F100(v13);
}

void sub_298C4F114(void *result, uint64_t a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    goto LABEL_7;
  }

  v5 = sub_298B9CDFC();
  v6 = *(v5 + 32);
  if (*(v5 + 24) - v6 <= 3uLL)
  {
    v5 = sub_298B9BCEC(v5, "\n:: ", 4uLL);
    v7 = *(v5 + 32);
    if ((*(v5 + 24) - v7) > 0x10)
    {
      goto LABEL_4;
    }

LABEL_17:
    v5 = sub_298B9BCEC(v5, "waitForCompletion", 0x11uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
LABEL_5:
      *v9 = 10;
      ++*(v5 + 32);
      v10 = sub_298B9CDFC();
      v11 = v10[2];
      if (v10[4] == v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  *v6 = 540686858;
  v14 = *(v5 + 24);
  v7 = *(v5 + 32) + 4;
  *(v5 + 32) = v7;
  if ((v14 - v7) <= 0x10)
  {
    goto LABEL_17;
  }

LABEL_4:
  *(v7 + 16) = 110;
  *v7 = *"waitForCompletion";
  v8 = *(v5 + 24);
  v9 = (*(v5 + 32) + 17);
  *(v5 + 32) = v9;
  if (v8 != v9)
  {
    goto LABEL_5;
  }

LABEL_18:
  sub_298B9BCEC(v5, "\n", 1uLL);
  v10 = sub_298B9CDFC();
  v11 = v10[2];
  if (v10[4] != v11)
  {
LABEL_6:
    v10[4] = v11;
    sub_298B9BB84(v10);
  }

LABEL_7:
  v12 = *(a2 + 24);
  if ((v12 - 2) >= 2)
  {
    if (v12 == 1)
    {
      *result = 0;
      return;
    }
  }

  else
  {
    ktrace_end();
    m = (a2 + 40);
    v15.__m_ = (a2 + 40);
    v15.__owns_ = 1;
    std::mutex::lock((a2 + 40));
    if (*(a2 + 32))
    {
      do
      {
        std::condition_variable::wait((a2 + 104), &v15);
      }

      while (*(a2 + 32));
      if (!v15.__owns_)
      {
        goto LABEL_15;
      }

      m = v15.__m_;
    }

    std::mutex::unlock(m);
  }

LABEL_15:
  sub_298C4F2E0(result, a2);
}

void sub_298C4F2E0(void *a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 0x15uLL)
    {
      goto LABEL_4;
    }

LABEL_13:
    v4 = sub_298B9BCEC(v4, "signalKtraceCompletion", 0x16uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_14;
  }

  *v5 = 540686858;
  v14 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v14 - v6) <= 0x15)
  {
    goto LABEL_13;
  }

LABEL_4:
  qmemcpy(v6, "signalKtraceCompletion", 22);
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 22);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_14:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  if (*(a2 + 4) != 2)
  {
    v11 = sub_298B227A0(1);
    if (os_signpost_enabled(v11))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KTraceSessionProcessor::completed", &unk_298EC00B5, v15, 2u);
    }

    v13 = *(a2 + 176);
    v12 = (a2 + 176);
    *(v12 - 43) = 2;
    *a1 = v13;
    a1 = v12;
  }

  *a1 = 0;
}

void sub_298C4F48C(void *a1@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  v2 = geteuid();
  if (v2)
  {
    v6 = v2;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v31 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v30 = &unk_2A1F1E040;
    v38 = &v39;
    sub_298ADDDB0(&v30);
    v7 = v34;
    if ((v33 - v34) > 0x18)
    {
      *v34 = *"You are not root (EUID = ";
      *(v7 + 9) = *"ot root (EUID = ";
      v34 += 25;
    }

    else
    {
      sub_298B9BCEC(&v30, "You are not root (EUID = ", 0x19uLL);
    }

    sub_298B8FC48(&v30, v6, 0, 0, 0);
    if ((v33 - v34) > 1)
    {
      *v34 = 11817;
      v34 += 2;
    }

    else
    {
      sub_298B9BCEC(&v30, ").", 2uLL);
    }

    sub_298B9AE14(&v30);
    std::generic_category();
    v19[0] = "LiveRecording.cpp";
    v20 = ":";
    v21 = 771;
    v18 = 4;
    strcpy(__p, "1050");
    v22[0] = v19;
    v23 = __p;
    v24 = 1026;
    v25[0] = v22;
    v26 = ": ";
    v27 = 770;
    v28.__r_.__value_.__r.__words[0] = v25;
    v28.__r_.__value_.__r.__words[2] = &v39;
    v29 = 1026;
    sub_298B996A4(&v28, v42);
    operator new();
  }

  sub_298BB0F64(v2, v3, v4, v5);
  if ((v46 & 1) == 0)
  {
    if (v45)
    {
      if ((v45 & 0x100) == 0)
      {
        std::generic_category();
        v19[0] = "LiveRecording.cpp";
        v20 = ":";
        v21 = 771;
        HIBYTE(v41) = 4;
        strcpy(&v39, "1061");
        v22[0] = v19;
        v23 = &v39;
        v24 = 1026;
        v25[0] = v22;
        v26 = ": ";
        v27 = 770;
        v28.__r_.__value_.__r.__words[0] = v25;
        v28.__r_.__value_.__r.__words[2] = "boot-arg enable_skstb=1 not set.";
        v29 = 770;
        sub_298B996A4(&v28, v42);
        operator new();
      }

      goto LABEL_22;
    }

LABEL_21:
    std::generic_category();
    v19[0] = "LiveRecording.cpp";
    v20 = ":";
    v21 = 771;
    HIBYTE(v41) = 4;
    strcpy(&v39, "1059");
    v22[0] = v19;
    v23 = &v39;
    v24 = 1026;
    v25[0] = v22;
    v26 = ": ";
    v27 = 770;
    v28.__r_.__value_.__r.__words[0] = v25;
    v28.__r_.__value_.__r.__words[2] = "boot-arg phys_carveout_mb=<mb> not set.";
    v29 = 770;
    sub_298B996A4(&v28, v42);
    operator new();
  }

  v8 = v45;
  v45 = 0;
  if (!v8)
  {
    goto LABEL_21;
  }

  v30 = 0;
  v28.__r_.__value_.__r.__words[0] = v8;
  sub_298ADE6E8(&v30, &v28, v25);
  if (v28.__r_.__value_.__r.__words[0])
  {
    (*(*v28.__r_.__value_.__l.__data_ + 8))(v28.__r_.__value_.__r.__words[0]);
  }

  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  *a1 = v25[0];
LABEL_22:
  sub_298C7AA7C(&v43);
  if (v44)
  {
    v9 = v43;
    v43 = 0;
    if (v9)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v31 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 1;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      v30 = &unk_2A1F1E040;
      v38 = &v39;
      sub_298ADDDB0(&v30);
      v10 = v34;
      if ((v33 - v34) > 0x20)
      {
        v34[32] = 32;
        qmemcpy(v10, "Couldn't check dev-fused status:", 32);
        v34 += 33;
      }

      else
      {
        sub_298B9BCEC(&v30, "Couldn't check dev-fused status: ", 0x21uLL);
      }

      v16 = v9;
      sub_298B851B0(&v16, &v28);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v28;
      }

      else
      {
        v11 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      sub_298B9BCEC(&v30, v11, size);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
        v13 = v16;
        if (!v16)
        {
LABEL_38:
          sub_298B9AE14(&v30);
          std::generic_category();
          v19[0] = "LiveRecording.cpp";
          v20 = ":";
          v21 = 771;
          v18 = 4;
          strcpy(__p, "1069");
          v22[0] = v19;
          v23 = __p;
          v24 = 1026;
          v25[0] = v22;
          v26 = ": ";
          v27 = 770;
          v28.__r_.__value_.__r.__words[0] = v25;
          v28.__r_.__value_.__r.__words[2] = &v39;
          v29 = 1026;
          sub_298B996A4(&v28, v42);
          operator new();
        }
      }

      else
      {
        v13 = v16;
        if (!v16)
        {
          goto LABEL_38;
        }
      }

      (*(*v13 + 8))(v13);
      goto LABEL_38;
    }
  }

  else if (v43)
  {
    std::generic_category();
    v19[0] = "LiveRecording.cpp";
    v20 = ":";
    v21 = 771;
    HIBYTE(v41) = 4;
    strcpy(&v39, "1071");
    v22[0] = v19;
    v23 = &v39;
    v24 = 1026;
    v25[0] = v22;
    v26 = ": ";
    v27 = 770;
    v28.__r_.__value_.__r.__words[0] = v25;
    v28.__r_.__value_.__r.__words[2] = "Not a dev-fused device.";
    v29 = 770;
    sub_298B996A4(&v28, v42);
    operator new();
  }

  if (v44)
  {
    v14 = v43;
    v43 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v46)
  {
    v15 = v45;
    v45 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

uint64_t sub_298C50120(uint64_t result, void *a2, unint64_t a3)
{
  v3 = a2[1];
  if (!*&v3 || ((v4 = 0x9DDFEA08EB382D69 * (((((a3 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a3)), v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4)) >> 47)), v6 = vcnt_s8(v3), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] <= 1uLL) ? (v7 = (*&v3 - 1) & v5) : v5 < *&v3 ? (v7 = v5) : (v7 = v5 % *&v3), (v8 = *(*a2 + 8 * v7)) == 0 || (v9 = *v8) == 0))
  {
LABEL_15:
    *result = 0;
    *(result + 8) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 40) = 0;
    *(result + 80) = 1065353216;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 1065353216;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 164) = 0;
    *(result + 135) = 0;
    *(result + 128) = 0;
    *(result + 190) = 0;
    *(result + 168) = 2;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 198) = 1;
    *(result + 200) = 0;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0;
    *(result + 240) = 0;
    *(result + 248) = 0;
    return result;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v3 - 1;
    while (1)
    {
      v12 = v9[1];
      if (v5 == v12)
      {
        if (v9[2] == a3)
        {
          return sub_298AFD4AC(result, (v9 + 3));
        }
      }

      else if ((v12 & v10) != v7)
      {
        goto LABEL_15;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v5 == v11)
    {
      break;
    }

    if (v11 >= *&v3)
    {
      v11 %= *&v3;
    }

    if (v11 != v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (v9[2] != a3)
  {
    goto LABEL_10;
  }

  return sub_298AFD4AC(result, (v9 + 3));
}

void sub_298C502B0(uint64_t a1, uint64_t a2)
{
  sub_298AFD4AC(&v22, a2 + 160);
  if (!*a2)
  {
    if (v23 != 1)
    {
      if (v23 || !v22)
      {
        goto LABEL_2;
      }

      sub_298AFD4AC(v32, a2 + 160);
      v12 = *(a2 + 8);
      v11 = a2 + 8;
      v10 = v12;
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v10 = v11;
      }

      if (v13 < 0)
      {
        v13 = *(v11 + 8);
      }

      v30[0] = v10;
      v30[1] = v13;
      sub_298B1EEB8(v30, v33);
      if (*sub_298C26F78(a1 + 16, &v35, v33))
      {
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        operator new();
      }

LABEL_35:
      abort();
    }

    sub_298AFD4AC(v30, a2 + 160);
    v14 = *v30[2];
    v17 = *(a2 + 8);
    v16 = a2 + 8;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v15 = v16;
    }

    if (v18 < 0)
    {
      v18 = *(v16 + 8);
    }

    v32[0] = v15;
    v32[1] = v18;
    sub_298B1EEB8(v32, v33);
    v19 = *sub_298C26F78(a1 + 16, &v35, v33);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = *(v19 + 56);
    if (v34 < 0)
    {
      operator delete(v33[0]);
      v21 = v31;
      if (v31 != 1)
      {
LABEL_32:
        operator new();
      }
    }

    else
    {
      v21 = v31;
      if (v31 != 1)
      {
        goto LABEL_32;
      }
    }

    *(v20 + 376) = v14;
    *(v20 + 384) = v21;
    *(v20 + 365) = v21;
    *(v20 + 363) = 257;
    goto LABEL_32;
  }

LABEL_2:
  v4 = __p;
  if (__p)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = v28;
  v28 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v27;
  if (v27)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v26;
  v26 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_298C50958(void *a1@<X0>, unint64_t a2@<X2>, int8x8_t *a3@<X3>, uint64_t (**a4)()@<X8>)
{
  v70[68] = *MEMORY[0x29EDCA608];
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ ((0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2))));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_15;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] <= 1uLL)
  {
    v10 = (*&v8 - 1) & v7;
    v11 = *(*a1 + 8 * v10);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v12 = *v11;
  if (v12)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v8 - 1;
      while (1)
      {
        v42 = v12[1];
        if (v7 == v42)
        {
          if (v12[2] == a2)
          {
            goto LABEL_79;
          }
        }

        else if ((v42 & v13) != v10)
        {
          goto LABEL_15;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_15;
        }
      }
    }

    do
    {
      v14 = v12[1];
      if (v7 == v14)
      {
        if (v12[2] == a2)
        {
LABEL_79:
          std::generic_category();
          v57[0] = "LiveRecording.cpp";
          v58 = ":";
          v59 = 771;
          v56 = 4;
          strcpy(v55, "1382");
          v60[0] = v57;
          v61 = v55;
          v62 = 1026;
          v63[0] = v60;
          v64 = ": ";
          v65 = 770;
          *v66 = v63;
          v67 = "System has already been configured";
          v68 = 770;
          sub_298B996A4(v66, v69);
          operator new();
        }
      }

      else
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }

        if (v14 != v10)
        {
          break;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

LABEL_15:
  v45 = v7;
  v47 = a4;
  a3[5].i8[0] = 1;
  v15 = *(a2 + 32);
  for (i = *(a2 + 40); v15 != i; ++v15)
  {
    v17 = *v15;
    v18 = HIDWORD(*v15);
    v19 = 0x9DDFEA08EB382D69 * ((8 * (*v15 & 0x1FFFFFFF) + 8) ^ v18);
    v20 = (0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47);
    v21 = 0x9DDFEA08EB382D69 * v20;
    v22 = a3[7];
    if (!*&v22)
    {
LABEL_30:
      operator new();
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] <= 1uLL)
    {
      v24 = v21 & (*&v22 - 1);
      v25 = *(*&a3[6] + 8 * v24);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = 0x9DDFEA08EB382D69 * v20;
      if (v21 >= *&v22)
      {
        v24 = v21 % *&v22;
      }

      v25 = *(*&a3[6] + 8 * v24);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = *v25;
    if (!v26)
    {
      goto LABEL_30;
    }

    if (v23.u32[0] < 2uLL)
    {
      while (1)
      {
        v28 = v26[1];
        if (v28 == v21)
        {
          if (v26[2] == v17)
          {
            goto LABEL_31;
          }
        }

        else if ((v28 & (*&v22 - 1)) != v24)
        {
          goto LABEL_30;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v21)
      {
        break;
      }

      if (v27 >= *&v22)
      {
        v27 %= *&v22;
      }

      if (v27 != v24)
      {
        goto LABEL_30;
      }

LABEL_25:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    if (v26[2] != v17)
    {
      goto LABEL_25;
    }

LABEL_31:
    ;
  }

  sub_298AFD4AC(v48, a3);
  sub_298AFDFE4(v70, a2, a1, v48, 0);
  sub_298C5F4DC(v70, a1, v47);
  sub_298AFEAD8(v70);
  v29 = __p;
  if (__p)
  {
    do
    {
      v30 = *v29;
      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v31 = v53;
  v53 = 0;
  if (v31)
  {
    operator delete(v31);
  }

  v32 = v52;
  if (v52)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v51;
  v51 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
    if (*v47)
    {
      return;
    }
  }

  else if (*v47)
  {
    return;
  }

  v35 = a1 + 2;
  while (1)
  {
    v35 = *v35;
    if (!v35)
    {
      break;
    }

    if ((*(v35 + 38) - 2) <= 3)
    {
      if ((a3[16].i32[0] - 2) <= 3)
      {
        std::generic_category();
        v57[0] = "LiveRecording.cpp";
        v58 = ":";
        v59 = 771;
        v56 = 4;
        strcpy(v55, "1393");
        v60[0] = v57;
        v61 = v55;
        v62 = 1026;
        v63[0] = v60;
        v64 = ": ";
        v65 = 770;
        *v66 = v63;
        v67 = "Streaming to multiple systems not supported";
        v68 = 770;
        sub_298B996A4(v66, v69);
        operator new();
      }

      break;
    }
  }

  v36 = a1[1];
  if (!*&v36)
  {
    goto LABEL_69;
  }

  v37 = vcnt_s8(v36);
  v37.i16[0] = vaddlv_u8(v37);
  if (v37.u32[0] <= 1uLL)
  {
    v38 = (*&v36 - 1) & v45;
    v39 = *(*a1 + 8 * v38);
    if (v39)
    {
      goto LABEL_60;
    }

LABEL_69:
    operator new();
  }

  v38 = v45;
  if (v45 >= *&v36)
  {
    v38 = v45 % *&v36;
  }

  v39 = *(*a1 + 8 * v38);
  if (!v39)
  {
    goto LABEL_69;
  }

LABEL_60:
  v40 = *v39;
  if (!v40)
  {
    goto LABEL_69;
  }

  if (v37.u32[0] < 2uLL)
  {
    while (1)
    {
      v43 = v40[1];
      if (v43 == v45)
      {
        if (v40[2] == a2)
        {
          goto LABEL_72;
        }
      }

      else if ((v43 & (*&v36 - 1)) != v38)
      {
        goto LABEL_69;
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_69;
      }
    }
  }

  while (1)
  {
    v41 = v40[1];
    if (v41 == v45)
    {
      break;
    }

    if (v41 >= *&v36)
    {
      v41 %= *&v36;
    }

    if (v41 != v38)
    {
      goto LABEL_69;
    }

LABEL_64:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_69;
    }
  }

  if (v40[2] != a2)
  {
    goto LABEL_64;
  }

LABEL_72:
  *v47 = 0;
}

void sub_298C51414(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    for (i = 24 * a3; i; i -= 24)
    {
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v9 = realpath_DARWIN_EXTSN(v7, 0);
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_298ADDDA0();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v67) = v10;
      if (v10)
      {
        memmove(uu, v9, v10);
      }

      uu[v11] = 0;
      v12 = *&uu[8];
      v30 = *uu;
      v45[0] = v67;
      *(v45 + 3) = *(&v67 + 3);
      v13 = SHIBYTE(v67);
      free(v9);
      *uu = v7;
      *&uu[8] = v8;
      LOWORD(v38) = 257;
      BYTE2(v38) = 1;
      sub_298B1EEB8(uu, &__p);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      sub_298AFF468(&v38, uu);
      if (!*uu)
      {
        v40 = 0;
        v41 = 0;
        __p = 0;
        v15 = v44;
        v44 = 0;
        *uu = v15;
        sub_298C39D18();
      }

      LOBYTE(v63) = v63 | 1;
      v62 = *uu;
      v14 = v44;
      v44 = 0;
      if (v14)
      {
        (*(*v14 + 16))(v14);
        if ((SHIBYTE(v41) & 0x80000000) == 0)
        {
LABEL_18:
          v16 = v62;
          if (v63)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(__p);
      v16 = v62;
      if (v63)
      {
LABEL_19:
        v58 |= 1u;
        in[0] = v16;
        if (v13 < 0)
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }

LABEL_23:
      v59[0] = 0;
      v59[1] = 0;
      sub_298BD96DC(v16, v7, v8, 0, 0, uu);
      v17 = *uu;
      if ((v70 & 1) == 0 || (*uu = 0, !v17))
      {
        v21 = *&uu[8];
        memset(uu, 0, sizeof(uu));
        v47 = v17;
        v48 = v21;
        v49 = v67;
        v50.__r_.__value_.__s.__data_[0] = 0;
        v51 = 0;
        if (v69 == 1)
        {
          v50 = v68;
          memset(&v68, 0, sizeof(v68));
          v51 = 1;
          data = v67[14].__r_.__value_.__l.__data_;
          if (!data)
          {
            goto LABEL_35;
          }

LABEL_33:
          *v59 = *(data + 8);
        }

        else
        {
          data = v67[14].__r_.__value_.__l.__data_;
          if (data)
          {
            goto LABEL_33;
          }

LABEL_35:
          v59[0] = 0;
          v59[1] = 0;
        }

        sub_298BD9AA8(&v47);
        sub_298BE5B3C(uu);
        v47 = v59;
        v48 = 0;
        v49 = 0;
        sub_298B1FB90(&v47, uu);
        if (v13 < 0)
        {
          sub_298AFE11C(&v68, v30, v12);
        }

        else
        {
          v68.__r_.__value_.__r.__words[0] = v30;
          v68.__r_.__value_.__l.__size_ = v12;
          LODWORD(v68.__r_.__value_.__r.__words[2]) = v45[0];
          *(&v68.__r_.__value_.__r.__words[2] + 3) = *(v45 + 3);
          *(&v68.__r_.__value_.__s + 23) = v13;
        }

        v58 &= ~1u;
        *in = *uu;
        v56 = v67;
        v57 = v68;
        v18 = 1;
        v19 = v16->n128_u64[1];
        v16->n128_u64[1] = 0;
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }

      sub_298BE5B3C(uu);
      v47 = v17;
      sub_298AE72FC(&v47, uu);
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      v18 = 0;
      v19 = v16->n128_u64[1];
      v16->n128_u64[1] = 0;
      if (!v19)
      {
LABEL_28:
        v20 = v16->n128_u64[0];
        v16->n128_u64[0] = 0;
        if (!v20)
        {
          goto LABEL_29;
        }

LABEL_43:
        (*(*v20 + 16))(v20);
        goto LABEL_29;
      }

LABEL_40:
      v23 = *(v19 + 40);
      *(v19 + 40) = 0;
      if (v23)
      {
        MEMORY[0x29C2945C0](v23, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v19, 0x1070C4001F9CED1);
      v20 = v16->n128_u64[0];
      v16->n128_u64[0] = 0;
      if (v20)
      {
        goto LABEL_43;
      }

LABEL_29:
      MEMORY[0x29C2945F0](v16, 0x1070C401CED0764);
      if ((v18 & 1) == 0)
      {
        sub_298C41068(v7, v8);
      }

      if (v13 < 0)
      {
LABEL_58:
        operator delete(v30);
        if ((v58 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_47:
      if ((v58 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_48:
      v24 = in[0];
      in[0] = 0;
      if (v24)
      {
        std::generic_category();
        v32[0] = "LiveRecording.cpp";
        v32[2] = ":";
        v33 = 771;
        v54 = 4;
        strcpy(&v53, "1372");
        v34[0] = v32;
        v34[2] = &v53;
        v35 = 1026;
        v59[0] = v34;
        v60 = ": ";
        v61 = 770;
        v62 = v59;
        v64 = "Could not determine UUID of '";
        v65 = 770;
        v36[0] = &v62;
        v36[2] = v7;
        v36[3] = v8;
        LOWORD(v37) = 1282;
        v38 = v36;
        v40 = "':\n  - ";
        LOWORD(v42) = 770;
        v31 = v24;
        sub_298B851B0(&v31, &v52);
        v47 = &v38;
        v49 = &v52;
        LOWORD(v50.__r_.__value_.__r.__words[1]) = 1026;
        sub_298B996A4(&v47, &v46);
        operator new();
      }

LABEL_49:
      if (SHIBYTE(v56) < 0)
      {
        v25 = in[0];
      }

      else
      {
        v25 = in;
      }

      memset(uu, 0, sizeof(uu));
      uuid_parse(v25, uu);
      v47 = uu;
      v26 = sub_298C5D4C0((a1 + 48), uu, &v47);
      std::string::operator=(v26 + 2, &v57);
      if (v58)
      {
        v27 = in[0];
        in[0] = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        goto LABEL_3;
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
          goto LABEL_3;
        }

LABEL_57:
        operator delete(in[0]);
        goto LABEL_3;
      }

      if (SHIBYTE(v56) < 0)
      {
        goto LABEL_57;
      }

LABEL_3:
      a2 += 24;
    }
  }

  *a4 = 0;
}

void sub_298C5268C(void *a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  v108 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 30);
  v5 = a1[25];
  if (v5)
  {
    v6 = *(v5 + 16);
    sub_298C50120(v101, a1 + 23, v6);
    v8 = *(v2 + 296);
    v7 = *(v2 + 304);
    if (v8 < v7)
    {
      sub_298C5B8D4(v8, v6, v2 + 184, v101, (v2 + 160));
      *(v2 + 296) = v8 + 544;
      v9 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v15 = *(v2 + 288);
    v16 = 0xF0F0F0F0F0F0F0F1 * ((v8 - v15) >> 5);
    v17 = v16 + 1;
    if (v16 + 1 > 0x78787878787878)
    {
      sub_298ADDDA0();
    }

    v18 = 0xF0F0F0F0F0F0F0F1 * ((v7 - v15) >> 5);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x3C3C3C3C3C3C3CLL)
    {
      v19 = 0x78787878787878;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0x78787878787878)
      {
        operator new();
      }

      goto LABEL_127;
    }

    v20 = 544 * v16;
    sub_298C5B8D4(v20, v6, v2 + 184, v101, (v2 + 160));
    v22 = *(v2 + 288);
    v21 = *(v2 + 296);
    v72 = (v20 + v22 - v21);
    v73 = v20;
    if (v21 == v22)
    {
      goto LABEL_66;
    }

    v23 = *(v2 + 288);
    v24 = (v20 + v22 - v21);
    v25 = 0uLL;
    while (1)
    {
      *v24 = *v23;
      v28 = *(v23 + 8);
      *(v24 + 3) = *(v23 + 3);
      *(v24 + 8) = v28;
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 1) = 0;
      *(v24 + 4) = 0;
      *(v24 + 5) = 0;
      *(v24 + 6) = 0;
      *(v24 + 2) = *(v23 + 2);
      *(v24 + 6) = *(v23 + 6);
      *(v23 + 4) = 0;
      *(v23 + 5) = 0;
      *(v23 + 6) = 0;
      *(v24 + 7) = *(v23 + 7);
      v29 = *(v23 + 4);
      v30 = *(v23 + 20);
      *(v24 + 88) = v25;
      v31 = (v24 + 88);
      *(v24 + 20) = v30;
      *(v24 + 4) = v29;
      *(v24 + 104) = v25;
      *(v24 + 30) = *(v23 + 30);
      prime = *(v23 + 12);
      if (prime == 1)
      {
        goto LABEL_45;
      }

      if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(*(v23 + 12));
        v33 = *(v24 + 96);
        v34 = prime >= *&v33;
        if (prime > *&v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = 0;
        v34 = 1;
        if (prime)
        {
          goto LABEL_44;
        }
      }

      if (v34)
      {
        goto LABEL_49;
      }

      v35 = vcvtps_u32_f32(*(v24 + 14) / *(v24 + 30));
      if (*&v33 < 3uLL || (v36 = vcnt_s8(v33), v36.i16[0] = vaddlv_u8(v36), v36.u32[0] > 1uLL))
      {
        v38 = std::__next_prime(v35);
        if (prime <= v38)
        {
          prime = v38;
        }

        if (prime >= *&v33)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v37 = 1 << -__clz(v35 - 1);
        if (v35 >= 2)
        {
          v35 = v37;
        }

        if (prime <= v35)
        {
          prime = v35;
        }

        if (prime >= *&v33)
        {
          goto LABEL_49;
        }
      }

      if (prime)
      {
LABEL_44:
        if (!(prime >> 61))
        {
LABEL_45:
          operator new();
        }

LABEL_127:
        sub_298ADDDA0();
      }

      v39 = *v31;
      *v31 = 0;
      if (v39)
      {
        operator delete(v39);
      }

      *(v24 + 12) = 0;
LABEL_49:
      for (i = *(v23 + 13); i; i = *i)
      {
        sub_298AFE370(v24 + 11, i + 2, i + 2);
      }

      v41 = *(v23 + 16);
      *(v24 + 18) = 0;
      *(v24 + 17) = v24 + 144;
      *(v24 + 16) = v41;
      *(v24 + 19) = 0;
      v42 = *(v23 + 17);
      if (v42 != (v23 + 144))
      {
        do
        {
          if (!*sub_298AFE878(v24 + 17, v24 + 144, v96, &v88, v42 + 32))
          {
            operator new();
          }

          v46 = *(v42 + 1);
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = *(v42 + 2);
              v57 = *v47 == v42;
              v42 = v47;
            }

            while (!v57);
          }

          v42 = v47;
        }

        while (v47 != (v23 + 144));
      }

      sub_298AFD4AC((v24 + 160), (v23 + 160));
      v43 = *(v23 + 26);
      v44 = *(v23 + 28);
      v45 = *(v23 + 58);
      *(v24 + 27) = *(v23 + 27);
      *(v24 + 28) = v44;
      *(v24 + 26) = v43;
      *(v24 + 122) = 0;
      *(v24 + 59) = 0;
      *(v24 + 60) = 0;
      *(v24 + 58) = v45;
      *(v24 + 59) = *(v23 + 59);
      *(v23 + 59) = 0;
      *(v24 + 120) = *(v23 + 120);
      *(v23 + 120) = 0;
      LODWORD(v45) = *(v24 + 121);
      *(v24 + 121) = *(v23 + 121);
      *(v23 + 121) = v45;
      LODWORD(v45) = *(v24 + 122);
      *(v24 + 122) = *(v23 + 122);
      *(v23 + 122) = v45;
      *(v24 + 62) = v24 + 512;
      *(v24 + 63) = 0;
      if (*(v23 + 126))
      {
        sub_298C5BA84((v24 + 496), (v23 + 496));
      }

      *(v24 + 128) = *(v23 + 128);
      v26 = *(v23 + 520);
      v25 = 0uLL;
      *(v23 + 520) = 0u;
      *(v24 + 520) = v26;
      v27 = *(v23 + 67);
      *(v23 + 67) = 0;
      *(v24 + 67) = v27;
      v23 += 544;
      v24 += 544;
      if (v23 == v21)
      {
        do
        {
          sub_298AFEAD8(v22);
          v22 += 544;
        }

        while (v22 != v21);
        v2 = a1;
        v22 = a1[36];
LABEL_66:
        *(v2 + 288) = v72;
        *(v2 + 296) = v73 + 544;
        *(v2 + 304) = 0;
        if (v22)
        {
          operator delete(v22);
        }

        *(v2 + 296) = v73 + 544;
        v9 = __p;
        if (!__p)
        {
LABEL_5:
          v11 = v106;
          v106 = 0;
          if (v11)
          {
            operator delete(v11);
          }

          v12 = v105;
          if (v105)
          {
            do
            {
              v13 = *v12;
              operator delete(v12);
              v12 = v13;
            }

            while (v13);
          }

          v14 = v104;
          v104 = 0;
          if (v14)
          {
            operator delete(v14);
          }

          if (v102)
          {
            v103 = v102;
            operator delete(v102);
          }

          operator new();
        }

        do
        {
LABEL_4:
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
        goto LABEL_5;
      }
    }
  }

  v93 = 0;
  v94 = 0;
  v92 = &v93;
  v48 = a1[29];
  if (v48 != v4)
  {
    do
    {
      sub_298AFE77C(&v92, &v93, v48 + 32, (v48 + 32));
      v53 = *(v48 + 1);
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = *(v48 + 2);
          v57 = *v54 == v48;
          v48 = v54;
        }

        while (!v57);
      }

      v48 = v54;
    }

    while (v54 != v4);
  }

  sub_298C207BC(v2, v101);
  v49 = v101[0];
  v50 = v101[1];
  if (v101[0] == v101[1])
  {
    if (v101[0])
    {
LABEL_73:
      v101[1] = v49;
      operator delete(v49);
    }
  }

  else
  {
    do
    {
      v55 = *(*v49 + 408);
      v56 = v93;
      if (v55)
      {
        v57 = v93 == 0;
      }

      else
      {
        v57 = 1;
      }

      if (!v57)
      {
        if (!v93)
        {
          goto LABEL_109;
        }

LABEL_90:
        v58 = &v93;
        do
        {
          v59 = v58;
          v60 = v56 + 4;
          v61 = uuid_compare(v56 + 32, v55 + 16);
          if (v61 >= 0)
          {
            v58 = v56;
          }

          v56 = *(v56 + ((v61 >> 28) & 8));
        }

        while (v56);
        if (v58 != &v93)
        {
          v62 = v61 >= 0 ? v60 : (v59 + 4);
          if ((uuid_compare(v55 + 16, v62) & 0x80000000) == 0)
          {
            v63 = v58[1];
            v64 = v58;
            if (v63)
            {
              do
              {
                v65 = v63;
                v63 = *v63;
              }

              while (v63);
            }

            else
            {
              do
              {
                v65 = *(v64 + 2);
                v57 = *v65 == v64;
                v64 = v65;
              }

              while (!v57);
            }

            if (v92 == v58)
            {
              v92 = v65;
            }

            --v94;
            sub_298C2ADAC(v93, v58);
            if (*(v58 + 71) < 0)
            {
              operator delete(v58[6]);
            }

            operator delete(v58);
          }
        }

LABEL_109:
        while (1)
        {
          v55 = *v55;
          if (!v55)
          {
            break;
          }

          v56 = v93;
          if (v93)
          {
            goto LABEL_90;
          }
        }
      }

      v49 += 8;
    }

    while (v49 != v50);
    v49 = v101[0];
    v3 = a2;
    if (v101[0])
    {
      goto LABEL_73;
    }
  }

  v51 = v94;
  *v3 = 0;
  if (v51)
  {
    v52 = v92;
    if (v92 != &v93)
    {
      std::generic_category();
      *a2 = 0;
      v78[0] = "LiveRecording.cpp";
      v78[2] = ":";
      v79 = 771;
      v77 = 4;
      strcpy(v76, "1446");
      v80[0] = v78;
      v80[2] = v76;
      v81 = 1026;
      v82[0] = v80;
      v82[2] = ": ";
      v83 = 770;
      v84[0] = v82;
      v84[2] = "Override '";
      v85 = 770;
      v86[0] = v84;
      v86[2] = v52 + 48;
      v87 = 1026;
      v99[0] = v86;
      v99[2] = "' (UUID = ";
      v100 = 770;
      v101[0] = (v52 + 32);
      v101[1] = 0;
      v102 = 0;
      sub_298B1FB90(v101, v75);
      if (v100 == 1)
      {
        v68 = v75;
        v88 = v75;
        v91 = 260;
        v66 = 4;
        v69 = v89;
      }

      else
      {
        if (!v100)
        {
          v66 = 0;
          v91 = 256;
          v67 = 1;
          goto LABEL_123;
        }

        v68 = &v88;
        v70 = v99[0];
        v66 = 2;
        if (HIBYTE(v100) == 1)
        {
          v69 = v100;
        }

        else
        {
          v69 = 2;
        }

        if (HIBYTE(v100) != 1)
        {
          v70 = v99;
        }

        v88 = v70;
        v89 = v99[1];
        v90 = v75;
        LOBYTE(v91) = v69;
        HIBYTE(v91) = 4;
      }

      v96[0] = v68;
      v96[1] = v69;
      v67 = 3;
      v96[2] = ") is invalid: that image does not appear to be installed as firmware on the live system. Find the right image, remove the override, or file a bug on libhwtrace if you believe this message is wrong.";
LABEL_123:
      v97 = v66;
      v98 = v67;
      sub_298B996A4(v96, &v95);
      operator new();
    }
  }

  sub_298AFEF9C(&v92, v93);
}

uint64_t *sub_298C55958(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    sub_298C2FC70(v2);
    MEMORY[0x29C2945F0]();
    return v4;
  }

  return v1;
}

void sub_298C559B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 5)
    {
      goto LABEL_4;
    }

LABEL_21:
    v4 = sub_298B9BCEC(v4, "attach", 6uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_22;
  }

  *v5 = 540686858;
  v15 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v15 - v6) <= 5)
  {
    goto LABEL_21;
  }

LABEL_4:
  *(v6 + 4) = 26723;
  *v6 = 1635021921;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 6);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_22:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  sub_298C55C98(a2, *(a1 + 280), 2);
  if (!*a2)
  {
    v11 = sub_298B227A0(1);
    v12 = os_signpost_id_generate(v11);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LiveRecording::attach", &unk_298EC00B5, buf, 2u);
    }

    v16 = &unk_2A1F1FFA0;
    *&v17 = v12;
    *(&v17 + 1) = v11;
    v18 = &v16;
    v21 = buf;
    v22 = v12;
    *buf = &unk_2A1F1FFA0;
    v20 = v17;
    v14 = *(a1 + 288);
    v13 = *(a1 + 296);
    if (v14 == v13)
    {
LABEL_15:
      *a2 = 0;
    }

    else
    {
      while (1)
      {
        sub_298C621A0(v14, a2);
        if (*a2)
        {
          break;
        }

        v14 += 544;
        if (v14 == v13)
        {
          goto LABEL_15;
        }
      }
    }

    if (v21)
    {
      (*(*v21 + 48))(v21);
      if (v21 == buf)
      {
        (*(*v21 + 32))(v21);
      }

      else if (v21)
      {
        (*(*v21 + 40))(v21);
      }
    }
  }
}

void sub_298C55C98(void *a1, int a2, int a3)
{
  if (a2 != a3)
  {
    std::generic_category();
    v13[0] = "LiveRecording.cpp";
    v13[2] = ":";
    v14 = 771;
    v12 = 4;
    strcpy(__p, "2036");
    v15[0] = v13;
    v15[2] = __p;
    v16 = 1026;
    v17[0] = v15;
    v17[2] = ": ";
    v18 = 770;
    v5 = a2 - 1;
    v19[0] = v17;
    v19[2] = "LiveRecording in state='";
    v20 = 770;
    if ((a2 - 1) > 3)
    {
      v7 = "NotStarted";
      v6 = 10;
    }

    else
    {
      v6 = qword_298D1C8E8[v5];
      v7 = off_29EEB6728[v5];
    }

    v21[0] = v19;
    v21[2] = v7;
    v21[3] = v6;
    v22 = 1282;
    v23[0] = v21;
    v23[1] = v6;
    v23[2] = "', but expected to be in state='";
    v8 = a3 - 1;
    v24 = 770;
    if ((a3 - 1) > 3)
    {
      v10 = "NotStarted";
      v9 = 10;
    }

    else
    {
      v9 = qword_298D1C8E8[v8];
      v10 = off_29EEB6728[v8];
    }

    v25[0] = v23;
    v25[1] = v6;
    v25[2] = v10;
    v25[3] = v9;
    v26 = 1282;
    v27[0] = v25;
    v27[1] = v6;
    v27[2] = "'";
    v28 = 770;
    sub_298B996A4(v27, &v29);
    operator new();
  }

  *a1 = 0;
}

void sub_298C55EFC(uint64_t a1@<X0>, void ***a2@<X8>)
{
  v69 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 8)
    {
      goto LABEL_4;
    }

LABEL_25:
    v4 = sub_298B9BCEC(v4, "configure", 9uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_26;
  }

  *v5 = 540686858;
  v20 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v20 - v6) <= 8)
  {
    goto LABEL_25;
  }

LABEL_4:
  *(v6 + 8) = 101;
  *v6 = *"configure";
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 9);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_26:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  sub_298C55C98(a2, *(a1 + 280), 0);
  if (*a2)
  {
    return;
  }

  v11 = sub_298B227A0(1);
  v12 = os_signpost_id_generate(v11);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LiveRecording::configure", &unk_298EC00B5, &buf, 2u);
  }

  v62 = &unk_2A1F1FFE8;
  *&v63 = v12;
  *(&v63 + 1) = v11;
  v64 = &v62;
  v67 = &v65;
  v68 = v12;
  v66 = v63;
  v65 = &unk_2A1F1FFE8;
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  v54 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 1;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = &unk_2A1F1E040;
  v61 = __p;
  sub_298ADDDB0(&v53);
  v52[17] = 0;
  v52[18] = &v53;
  v52[19] = 0;
  v52[16] = 0;
  *&buf = v52;
  *(&buf + 1) = 0x1000000001;
  v52[0] = 0;
  v48[0] = &buf;
  v48[1] = a1 + 184;
  sub_298B89BA0(&buf);
  sub_298C5C120(v48);
  sub_298B89C2C(&buf);
  if (buf != v52)
  {
    free(buf);
  }

  sub_298B9AE14(&v53);
  v13 = sub_298B227A0(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = __p;
    if (v40 < 0)
    {
      v14 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_298AD8000, v13, OS_LOG_TYPE_INFO, "LiveRecording::configure(%{public}s)", &buf, 0xCu);
  }

  MEMORY[0x29C295550](a1 + 264);
  sub_298C56A90(a2, a1);
  if (!*a2)
  {
    v15 = *(a1 + 312);
    if (!v15)
    {
LABEL_52:
      v31 = *(a1 + 288);
      v32 = *(a1 + 296);
      if (v31 == v32)
      {
LABEL_55:
        v33 = (a1 + 200);
        v34 = (a1 + 200);
        while (1)
        {
          v34 = *v34;
          if (!v34)
          {
            break;
          }

          if (v34[27])
          {
            goto LABEL_60;
          }
        }

        if (*(a1 + 225) == 1)
        {
LABEL_60:
          if (*(a1 + 160) == 1)
          {
            v35 = sub_298B9CDFC();
            v36 = v35[4];
            if ((v35[3] - v36) > 0x13)
            {
              *(v36 + 16) = 170798638;
              *v36 = *"Taking stackshot...\n";
              v35[4] += 20;
            }

            else
            {
              sub_298B9BCEC(v35, "Taking stackshot...\n", 0x14uLL);
            }
          }

          do
          {
            v33 = *v33;
          }

          while (v33 && *(v33 + 216) != 1);
          sub_298C47E34();
        }

        if ((*(a1 + 228) | 2) != 2 || (v37 = *(a1 + 320)) == 0 || (sub_298C4DC08(a2, v37, 0, 0), !*a2))
        {
          *(a1 + 280) = 1;
          *a2 = 0;
        }
      }

      else
      {
        while (1)
        {
          sub_298C6171C(v31, a2);
          if (*a2)
          {
            break;
          }

          v31 += 68;
          if (v31 == v32)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_72;
    }

    if (*v15 != 1)
    {
LABEL_35:
      if (*(v15 + 24) == 1)
      {
        if (*v15 == 1)
        {
          v24 = sub_298B9CDFC();
          v25 = *(v24 + 32);
          if (*(v24 + 24) - v25 > 3uLL)
          {
            *v25 = 540686858;
            v26 = (*(v24 + 32) + 4);
            *(v24 + 32) = v26;
          }

          else
          {
            v24 = sub_298B9BCEC(v24, "\n:: ", 4uLL);
            v26 = *(v24 + 32);
          }

          if (*(v24 + 24) - v26 > 0x17uLL)
          {
            qmemcpy(v26, "setupHandlerOnTargetExit", 24);
            v27 = (*(v24 + 32) + 24);
            *(v24 + 32) = v27;
          }

          else
          {
            v24 = sub_298B9BCEC(v24, "setupHandlerOnTargetExit", 0x18uLL);
            v27 = *(v24 + 32);
          }

          if (*(v24 + 24) == v27)
          {
            sub_298B9BCEC(v24, "\n", 1uLL);
          }

          else
          {
            *v27 = 10;
            ++*(v24 + 32);
          }

          v28 = sub_298B9CDFC();
          v29 = v28[2];
          if (v28[4] != v29)
          {
            v28[4] = v29;
            sub_298B9BB84(v28);
          }
        }

        v30 = dispatch_source_create(MEMORY[0x29EDCA5B0], *(v15 + 16), 0x80000000uLL, *(v15 + 56));
        *(v15 + 64) = v30;
        if (!v30)
        {
          std::generic_category();
          v44[0] = "LiveRecording.cpp";
          v44[2] = ":";
          v45 = 771;
          v43 = 3;
          LODWORD(v42) = 3747892;
          v46[0] = v44;
          v46[2] = &v42;
          v47 = 1026;
          v48[0] = v46;
          v48[2] = ": ";
          v49 = 770;
          v53 = v48;
          v55 = "dispatch_source_create failed";
          LOWORD(v57) = 770;
          sub_298B996A4(&v53, &v50);
          operator new();
        }

        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 0x40000000;
        handler[2] = sub_298C4B194;
        handler[3] = &unk_29EEB65E8;
        handler[4] = v15;
        dispatch_source_set_event_handler(v30, handler);
        dispatch_activate(*(v15 + 64));
        *a2 = 0;
        if (*(v15 + 24))
        {
          sub_298C4A92C(a2, v15);
          if (*a2)
          {
            goto LABEL_72;
          }
        }
      }

      *a2 = 0;
      goto LABEL_52;
    }

    v16 = sub_298B9CDFC();
    v17 = *(v16 + 32);
    if (*(v16 + 24) - v17 > 3uLL)
    {
      *v17 = 540686858;
      v21 = *(v16 + 24);
      v18 = *(v16 + 32) + 4;
      *(v16 + 32) = v18;
      if ((v21 - v18) > 4)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = sub_298B9BCEC(v16, "\n:: ", 4uLL);
      v18 = *(v16 + 32);
      if ((*(v16 + 24) - v18) > 4)
      {
LABEL_23:
        *(v18 + 4) = 116;
        *v18 = 1918989427;
        v19 = (*(v16 + 32) + 5);
        *(v16 + 32) = v19;
        goto LABEL_30;
      }
    }

    v16 = sub_298B9BCEC(v16, "start", 5uLL);
    v19 = *(v16 + 32);
LABEL_30:
    if (*(v16 + 24) == v19)
    {
      sub_298B9BCEC(v16, "\n", 1uLL);
    }

    else
    {
      *v19 = 10;
      ++*(v16 + 32);
    }

    v22 = sub_298B9CDFC();
    v23 = v22[2];
    if (v22[4] != v23)
    {
      v22[4] = v23;
      sub_298B9BB84(v22);
    }

    goto LABEL_35;
  }

LABEL_72:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    v38 = v67;
    if (!v67)
    {
      return;
    }
  }

  else
  {
    v38 = v67;
    if (!v67)
    {
      return;
    }
  }

  (*(*v38 + 6))(v38);
  if (v67 == &v65)
  {
    (*(*v67 + 4))(v67);
  }

  else if (v67)
  {
    (*(*v67 + 5))();
  }
}

void sub_298C56A90(void ***a1, uint64_t a2)
{
  v65 = *MEMORY[0x29EDCA608];
  if (*(a2 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 0xCuLL)
    {
      goto LABEL_4;
    }

LABEL_28:
    v4 = sub_298B9BCEC(v4, "allocCarveout", 0xDuLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_29;
  }

  *v5 = 540686858;
  v25 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v25 - v6) <= 0xC)
  {
    goto LABEL_28;
  }

LABEL_4:
  qmemcpy(v6, "allocCarveout", 13);
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 13);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_29:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  v12 = *(a2 + 288);
  v11 = *(a2 + 296);
  if (v12 == v11)
  {
LABEL_25:
    *(a2 + 176) = 1;
    *a1 = 0;
    return;
  }

  v13 = 0;
LABEL_9:
  v12 += 544;
  do
  {
    if (*(v12 - 188) != 1)
    {
      v13 = 1;
      if (v12 != v11)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    v64 = 0;
    v62 = 0uLL;
    LOBYTE(v63) = 0;
    sub_298C60D6C(v12 - 544, &v62, 0, 0, a1);
    if (*a1)
    {
      return;
    }

    v14 = v12 == v11;
    v12 += 544;
  }

  while (!v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  sub_298C7A4D8(&v57);
  if (v61)
  {
    v15 = v57;
    v57 = 0;
    *a1 = v15;
    if (v15)
    {
      goto LABEL_57;
    }

    v16 = 0;
    v17 = v58;
    v36 = v59;
    v37 = v60;
    if (!v58)
    {
      goto LABEL_21;
    }

LABEL_32:
    sub_298C79B9C(*(*(a2 + 168) + 80), v16, v17, &v62);
    if ((v63 & 1) == 0)
    {
      *a1 = 0;
      v19 = v62;
LABEL_52:
      v18 = *(&v62 + 1);
      v20 = *(a2 + 288);
      v21 = *(a2 + 296);
      if (v20 == v21)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }

    v26 = v62;
    *a1 = v62;
    if (!v26)
    {
      v19 = 0;
      goto LABEL_52;
    }

LABEL_57:
    if ((v61 & 1) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  *a1 = 0;
  v16 = v57;
  v17 = v58;
  v36 = v59;
  v37 = v60;
  if (v58)
  {
    goto LABEL_32;
  }

LABEL_21:
  v18 = 0;
  v19 = "";
  v20 = *(a2 + 288);
  v21 = *(a2 + 296);
  if (v20 == v21)
  {
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

LABEL_53:
  v22 = 0;
  do
  {
    if ((v20[44].i8[4] & 1) == 0)
    {
      v22 += sub_298C60D0C(v20);
    }

    v20 += 68;
  }

  while (v20 != v21);
LABEL_23:
  v23 = getpagesize();
  v24 = v23 * v22;
  if (v17 < v24)
  {
    std::generic_category();
    v42[0] = "LiveRecording.cpp";
    v42[2] = ":";
    v43 = 771;
    v41 = 4;
    strcpy(v40, "2098");
    v44[0] = v42;
    v44[2] = v40;
    v45 = 1026;
    v46[0] = v44;
    v46[2] = ": ";
    v47 = 770;
    v48[0] = v46;
    v48[2] = "Carveout size (";
    v49 = 770;
    sub_298ADC8F4(&v39, v17);
    v50[0] = v48;
    v50[2] = &v39;
    v51 = 1026;
    v52[0] = v50;
    v52[2] = ") must be >= ";
    v53 = 770;
    sub_298ADC8F4(&__p, v24);
    v54[0] = v52;
    v54[2] = &__p;
    v55 = 1026;
    sub_298B996A4(v54, &v56);
    operator new();
  }

  v27 = *(a2 + 288);
  v28 = *(a2 + 296);
  if (v27 != v28)
  {
    v29 = 0;
    v30 = v17 / v22 / v23 * v23;
    do
    {
      if ((v27[44].i8[4] & 1) == 0)
      {
        v33 = sub_298C60D0C(v27);
        v34 = v33 * v30;
        v64 = 0;
        LOBYTE(v63) = 0;
        *&v62 = v29 + v16;
        *(&v62 + 1) = v33 * v30;
        if (v37)
        {
          v63 = v29 + v36;
          v64 = 1;
        }

        if (v18 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v18;
        }

        if (v18 - v31 >= v34)
        {
          v32 = v33 * v30;
        }

        else
        {
          v32 = v18 - v31;
        }

        sub_298C60D6C(v27, &v62, &v19[v31], v32, a1);
        if (*a1)
        {
          goto LABEL_57;
        }

        v29 += v34;
      }

      v27 += 68;
    }

    while (v27 != v28);
  }

  *(a2 + 176) = 1;
  *a1 = 0;
  if (v61)
  {
LABEL_58:
    v35 = v57;
    v57 = 0;
    if (v35)
    {
      (*(*v35 + 1))(v35);
    }
  }
}

void sub_298C57068(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 4)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = sub_298B9BCEC(v4, "start", 5uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_12;
  }

  *v5 = 540686858;
  v11 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v11 - v6) <= 4)
  {
    goto LABEL_11;
  }

LABEL_4:
  *(v6 + 4) = 116;
  *v6 = 1918989427;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 5);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:

  sub_298C571A8(a1, 1, a2);
}

void sub_298C571A8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v6 = sub_298B9CDFC();
  v7 = *(v6 + 32);
  if (*(v6 + 24) - v7 > 3uLL)
  {
    *v7 = 540686858;
    v18 = *(v6 + 24);
    v8 = *(v6 + 32) + 4;
    *(v6 + 32) = v8;
    if ((v18 - v8) > 5)
    {
LABEL_4:
      *(v8 + 4) = 25965;
      *v8 = 1970496882;
      v9 = *(v6 + 24);
      v10 = (*(v6 + 32) + 6);
      *(v6 + 32) = v10;
      if (v9 != v10)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v6 = sub_298B9BCEC(v6, "\n:: ", 4uLL);
    v8 = *(v6 + 32);
    if ((*(v6 + 24) - v8) > 5)
    {
      goto LABEL_4;
    }
  }

  v6 = sub_298B9BCEC(v6, "resume", 6uLL);
  v10 = *(v6 + 32);
  if (*(v6 + 24) != v10)
  {
LABEL_5:
    *v10 = 10;
    ++*(v6 + 32);
    v11 = sub_298B9CDFC();
    v12 = v11[2];
    if (v11[4] == v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  sub_298B9BCEC(v6, "\n", 1uLL);
  v11 = sub_298B9CDFC();
  v12 = v11[2];
  if (v11[4] != v12)
  {
LABEL_6:
    v11[4] = v12;
    sub_298B9BB84(v11);
  }

LABEL_7:
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  sub_298C55C98(a3, *(a1 + 280), v13);
  if (!*a3)
  {
    v14 = sub_298B227A0(1);
    v15 = os_signpost_id_generate(v14);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "LiveRecording::resume", &unk_298EC00B5, buf, 2u);
    }

    v20 = &unk_2A1F20078;
    *&v21 = v15;
    *(&v21 + 1) = v14;
    v22 = &v20;
    v25 = buf;
    v26 = v15;
    *buf = &unk_2A1F20078;
    v24 = v21;
    v19 = mach_continuous_time();
    sub_298AFB228(a1 + 104, &v19);
    v16 = *(a1 + 288);
    v17 = *(a1 + 296);
    if (v16 == v17)
    {
LABEL_22:
      *(a1 + 256) = std::chrono::system_clock::now();
      *(a1 + 280) = 2;
      *a3 = 0;
    }

    else if (a2)
    {
      while (1)
      {
        sub_298C61E60(v16, a3);
        if (*a3)
        {
          break;
        }

        v16 += 544;
        if (v16 == v17)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      while (1)
      {
        sub_298C628DC(v16, a3);
        if (*a3)
        {
          break;
        }

        v16 += 544;
        if (v16 == v17)
        {
          goto LABEL_22;
        }
      }
    }

    if (v25)
    {
      (*(*v25 + 48))(v25);
      if (v25 == buf)
      {
        (*(*v25 + 32))(v25);
      }

      else if (v25)
      {
        (*(*v25 + 40))();
      }
    }
  }
}

uint64_t sub_298C574F0(uint64_t a1)
{
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v2 = sub_298B9CDFC();
  v3 = *(v2 + 32);
  if (*(v2 + 24) - v3 > 3uLL)
  {
    *v3 = 540686858;
    v13 = *(v2 + 24);
    v4 = *(v2 + 32) + 4;
    *(v2 + 32) = v4;
    if ((v13 - v4) > 0x11)
    {
LABEL_4:
      *(v4 + 16) = 29541;
      *v4 = *"pollRawTracedBytes";
      v5 = *(v2 + 24);
      v6 = (*(v2 + 32) + 18);
      *(v2 + 32) = v6;
      if (v5 != v6)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v2 = sub_298B9BCEC(v2, "\n:: ", 4uLL);
    v4 = *(v2 + 32);
    if ((*(v2 + 24) - v4) > 0x11)
    {
      goto LABEL_4;
    }
  }

  v2 = sub_298B9BCEC(v2, "pollRawTracedBytes", 0x12uLL);
  v6 = *(v2 + 32);
  if (*(v2 + 24) != v6)
  {
LABEL_5:
    *v6 = 10;
    ++*(v2 + 32);
    v7 = sub_298B9CDFC();
    v8 = v7[2];
    if (v7[4] == v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  sub_298B9BCEC(v2, "\n", 1uLL);
  v7 = sub_298B9CDFC();
  v8 = v7[2];
  if (v7[4] != v8)
  {
LABEL_6:
    v7[4] = v8;
    sub_298B9BB84(v7);
  }

LABEL_7:
  v9 = *(a1 + 288);
  v10 = *(a1 + 296);
  if (v9 == v10)
  {
    return 0;
  }

  v11 = 0;
  do
  {
    v11 += sub_298C61C60(v9);
    v9 += 544;
  }

  while (v9 != v10);
  return v11;
}

void sub_298C57660(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v4 = sub_298B9BCEC(v4, "pause", 5uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_19;
  }

  *v5 = 540686858;
  v17 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v17 - v6) <= 4)
  {
    goto LABEL_18;
  }

LABEL_4:
  *(v6 + 4) = 101;
  *v6 = 1937072496;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 5);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_19:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  sub_298C55C98(a2, *(a1 + 280), 2);
  if (!*a2)
  {
    v11 = sub_298B227A0(1);
    v12 = os_signpost_id_generate(v11);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LiveRecording::pause", &unk_298EC00B5, buf, 2u);
    }

    v19 = &unk_2A1F20030;
    *&v20 = v12;
    *(&v20 + 1) = v11;
    v21 = &v19;
    v24 = buf;
    v25 = v12;
    *buf = &unk_2A1F20030;
    v23 = v20;
    v13 = *(a1 + 288);
    v14 = *(a1 + 296);
    if (v13 == v14)
    {
LABEL_15:
      v18 = mach_continuous_time();
      sub_298AFB228(a1 + 80, &v18);
      v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (*(a1 + 136) == 1)
      {
        v16 = *(a1 + 128);
      }

      else
      {
        v16 = 0;
      }

      *(a1 + 128) = v16 + v15.__d_.__rep_ - *(a1 + 256);
      *(a1 + 136) = 1;
      *(a1 + 280) = 3;
      *a2 = 0;
    }

    else
    {
      while (1)
      {
        sub_298C62648(v13, a2);
        if (*a2)
        {
          break;
        }

        v13 += 544;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }
    }

    if (v24)
    {
      (*(*v24 + 48))(v24);
      if (v24 == buf)
      {
        (*(*v24 + 32))(v24);
      }

      else if (v24)
      {
        (*(*v24 + 40))();
      }
    }
  }
}

void sub_298C57998(uint64_t a1@<X0>, void ***k@<X8>)
{
  v2 = a1;
  v84 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 3uLL)
    {
      goto LABEL_4;
    }

LABEL_36:
    v4 = sub_298B9BCEC(v4, "stop", 4uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_37;
  }

  *v5 = 540686858;
  v27 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v27 - v6) <= 3)
  {
    goto LABEL_36;
  }

LABEL_4:
  *v6 = 1886352499;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 4);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_37:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  sub_298C55C98(k, *(v2 + 280), 3);
  if (*k)
  {
    return;
  }

  v11 = sub_298B227A0(1);
  v13 = os_signpost_id_generate(v11);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "LiveRecording::stop", &unk_298EC00B5, buf, 2u);
  }

  v73 = &unk_2A1F200C0;
  *&v74 = v13;
  *(&v74 + 1) = v11;
  v75 = &v73;
  v78 = &v76;
  v79 = v13;
  v77 = v74;
  v76 = &unk_2A1F200C0;
  if ((*(v2 + 176) & 1) == 0)
  {
    sub_298C56A90(k, v2);
    if (*k)
    {
      goto LABEL_108;
    }
  }

  v15 = *(v2 + 288);
  for (i = *(v2 + 296); v15 != i; v15 += 544)
  {
    sub_298C62CA8(v15, k);
    if (*k)
    {
      goto LABEL_108;
    }
  }

  v16 = *(v2 + 312);
  if (v16)
  {
    if (*v16 != 1)
    {
      goto LABEL_24;
    }

    v17 = sub_298B9CDFC();
    v18 = *(v17 + 32);
    if (*(v17 + 24) - v18 > 3uLL)
    {
      *v18 = 540686858;
      v28 = *(v17 + 24);
      v19 = (*(v17 + 32) + 4);
      *(v17 + 32) = v19;
      if ((v28 - v19) > 3)
      {
LABEL_21:
        *v19 = 1886352499;
        v20 = *(v17 + 24);
        v21 = (*(v17 + 32) + 4);
        *(v17 + 32) = v21;
        if (v20 != v21)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v17 = sub_298B9BCEC(v17, "\n:: ", 4uLL);
      v19 = *(v17 + 32);
      if (*(v17 + 24) - v19 > 3uLL)
      {
        goto LABEL_21;
      }
    }

    v17 = sub_298B9BCEC(v17, "stop", 4uLL);
    v21 = *(v17 + 32);
    if (*(v17 + 24) != v21)
    {
LABEL_22:
      *v21 = 10;
      ++*(v17 + 32);
      v22 = sub_298B9CDFC();
      v23 = v22[2];
      if (v22[4] == v23)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_41:
    sub_298B9BCEC(v17, "\n", 1uLL);
    v22 = sub_298B9CDFC();
    v23 = v22[2];
    if (v22[4] == v23)
    {
LABEL_24:
      v24 = sub_298B227A0(1);
      v25 = os_signpost_id_generate(v24);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_298AD8000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "LiveRecording::processMonitor::stop", &unk_298EC00B5, buf, 2u);
      }

      v69 = &unk_2A1F1FEC8;
      *&v70 = v25;
      *(&v70 + 1) = v24;
      v71 = &v69;
      v82 = buf;
      v83 = v25;
      v81 = v70;
      *buf = &unk_2A1F1FEC8;
      if (v16[24] != 1 || (v26 = atomic_load(v16 + 80), (v26 & 1) == 0))
      {
        sub_298C4A92C(&v57, v16);
        v58[0] = v57;
        sub_298AE72FC(v58, v59);
        if (v58[0])
        {
          (*(*v58[0] + 8))(v58[0]);
        }
      }

      if (v82)
      {
        (*(*v82 + 48))(v82);
        if (v82 == buf)
        {
          (*(*v82 + 32))(v82);
        }

        else if (v82)
        {
          (*(*v82 + 40))(v82);
        }
      }

      goto LABEL_44;
    }

LABEL_23:
    v22[4] = v23;
    sub_298B9BB84(v22);
    goto LABEL_24;
  }

LABEL_44:
  v29 = *(v2 + 228);
  v56 = v2;
  if (v29 != 2)
  {
    if (!v29)
    {
      v30 = *(v2 + 288);
      for (j = *(v2 + 296); v30 != j; v2 = v56)
      {
        v31 = *(v30 + 8);
        v32 = *(v30 + 31);
        if (v32 >= 0)
        {
          v31 = (v30 + 8);
        }

        v33 = *(v30 + 16);
        if (v32 >= 0)
        {
          v33 = *(v30 + 31);
        }

        v69 = v31;
        *&v70 = v33;
        sub_298B1EEB8(&v69, buf);
        v34 = *sub_298C26F78(v2 + 16, v59, buf);
        if (!v34)
        {
LABEL_113:
          abort();
        }

        v35 = *(v34 + 56);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(*buf);
          if (*(v35 + 504))
          {
LABEL_56:
            operator new();
          }
        }

        else if (*(v35 + 504))
        {
          goto LABEL_56;
        }

        v30 += 544;
      }
    }

LABEL_61:
    v37 = sub_298B227A0(1);
    v38 = os_signpost_id_generate(v37);
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v38, "LiveRecording::save", &unk_298EC00B5, buf, 2u);
    }

    v66 = &unk_2A1F20108;
    *&v67 = v38;
    *(&v67 + 1) = v37;
    v68 = &v66;
    v71 = &v69;
    v72 = v38;
    v70 = v67;
    v69 = &unk_2A1F20108;
    v39 = *(v2 + 288);
    v55 = *(v2 + 296);
    if (v39 == v55)
    {
      unk_2A1F20138(&v69);
      v49 = v71;
      if (v71 != &v69)
      {
LABEL_92:
        if (v49)
        {
          (*(*v49 + 5))(v49);
        }

LABEL_97:
        v50 = sub_298B227A0(1);
        v51 = os_signpost_id_generate(v50);
        if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_298AD8000, v50, OS_SIGNPOST_INTERVAL_BEGIN, v51, "LiveRecording::unconfigure", &unk_298EC00B5, buf, 2u);
        }

        v60 = &unk_2A1F20150;
        *&v61 = v51;
        *(&v61 + 1) = v50;
        v62 = &v60;
        v82 = buf;
        v83 = v51;
        v81 = v61;
        *buf = &unk_2A1F20150;
        v53 = *(v2 + 288);
        v52 = *(v2 + 296);
        if (v53 == v52)
        {
LABEL_103:
          *(v2 + 280) = 4;
          *k = 0;
        }

        else
        {
          while (1)
          {
            sub_298C63214(v53, k);
            if (*k)
            {
              break;
            }

            v53 += 68;
            if (v53 == v52)
            {
              goto LABEL_103;
            }
          }
        }

        if (v82)
        {
          (*(*v82 + 48))(v82);
          v48 = v82;
          if (v82 == buf)
          {
LABEL_90:
            (*(*v48 + 32))(v48);
          }

          else
          {
LABEL_106:
            if (v48)
            {
              (*(*v48 + 40))(v48);
            }
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      do
      {
        v40.n128_f64[0] = sub_298C63770(v39, *(v2 + 40), &v63);
        if (v65)
        {
          v41 = v63;
          v63 = 0;
          *k = v41;
          if (v41)
          {
            if (!v71)
            {
              goto LABEL_108;
            }

            (*(*v71 + 6))(v71, v40);
            v48 = v71;
            if (v71 != &v69)
            {
              goto LABEL_106;
            }

            goto LABEL_90;
          }
        }

        else
        {
          *k = 0;
        }

        v42 = *(v39 + 8);
        v43 = *(v39 + 31);
        if (v43 >= 0)
        {
          v42 = (v39 + 8);
        }

        v44 = *(v39 + 16);
        if (v43 >= 0)
        {
          v44 = *(v39 + 31);
        }

        v59[0] = v42;
        v59[1] = v44;
        sub_298B1EEB8(v59, buf);
        if (!*sub_298C26F78(v2 + 16, v58, buf))
        {
          goto LABEL_113;
        }

        if (SHIBYTE(v81) < 0)
        {
          operator delete(*buf);
          v45 = v63;
          if (v63 != v64)
          {
LABEL_83:
            operator new();
          }
        }

        else
        {
          v45 = v63;
          if (v63 != v64)
          {
            goto LABEL_83;
          }
        }

        if (v65)
        {
          v63 = 0;
          if (v45)
          {
            (*(*v45 + 1))(v45);
          }
        }

        else if (v45)
        {
          v46 = v64;
          v47 = v45;
          if (v64 != v45)
          {
            do
            {
              v46 = sub_298C27104(v46 - 192);
            }

            while (v46 != v45);
            v47 = v63;
          }

          v64 = v45;
          operator delete(v47);
        }

        v39 += 544;
      }

      while (v39 != v55);
      if (!v71)
      {
        goto LABEL_97;
      }

      (*(*v71 + 6))(v71);
      v49 = v71;
      if (v71 != &v69)
      {
        goto LABEL_92;
      }
    }

    (*(*v49 + 4))(v49);
    goto LABEL_97;
  }

  v36 = *(v2 + 320);
  if (!v36)
  {
    goto LABEL_61;
  }

  sub_298C4F114(k, v36, v12);
  if (!*k)
  {
    goto LABEL_61;
  }

LABEL_108:
  if (v78)
  {
    (*(*v78 + 6))(v78);
    if (v78 == &v76)
    {
      (*(*v78 + 4))(v78);
    }

    else if (v78)
    {
      (*(*v78 + 5))();
    }
  }
}

void sub_298C589AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v8 = sub_298B9CDFC();
  v9 = *(v8 + 32);
  if (*(v8 + 24) - v9 <= 3uLL)
  {
    v8 = sub_298B9BCEC(v8, "\n:: ", 4uLL);
    v10 = *(v8 + 32);
    if ((*(v8 + 24) - v10) > 0xA)
    {
      goto LABEL_4;
    }

LABEL_21:
    v8 = sub_298B9BCEC(v8, "postprocess", 0xBuLL);
    v12 = *(v8 + 32);
    if (*(v8 + 24) != v12)
    {
LABEL_5:
      *v12 = 10;
      ++*(v8 + 32);
      v13 = sub_298B9CDFC();
      v14 = v13[2];
      if (v13[4] == v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_22;
  }

  *v9 = 540686858;
  v19 = *(v8 + 24);
  v10 = *(v8 + 32) + 4;
  *(v8 + 32) = v10;
  if ((v19 - v10) <= 0xA)
  {
    goto LABEL_21;
  }

LABEL_4:
  *(v10 + 7) = 1936942435;
  *v10 = *"postprocess";
  v11 = *(v8 + 24);
  v12 = (*(v8 + 32) + 11);
  *(v8 + 32) = v12;
  if (v11 != v12)
  {
    goto LABEL_5;
  }

LABEL_22:
  sub_298B9BCEC(v8, "\n", 1uLL);
  v13 = sub_298B9CDFC();
  v14 = v13[2];
  if (v13[4] != v14)
  {
LABEL_6:
    v13[4] = v14;
    sub_298B9BB84(v13);
  }

LABEL_7:
  sub_298C55C98(a4, *(a1 + 280), 4);
  if (!*a4)
  {
    v15 = sub_298B227A0(1);
    v16 = os_signpost_id_generate(v15);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "LiveRecording::postprocess", &unk_298EC00B5, buf, 2u);
    }

    v20 = &unk_2A1F20198;
    *&v21 = v16;
    *(&v21 + 1) = v15;
    v22 = &v20;
    v25 = buf;
    v26 = v16;
    *buf = &unk_2A1F20198;
    v24 = v21;
    v17 = *(a1 + 320);
    if (!v17 || (sub_298C4DC08(a4, v17, a2, a3), !*a4) && (sub_298C4F114(a4, *(a1 + 320), v18), !*a4))
    {
      *a4 = 0;
    }

    if (v25)
    {
      (*(*v25 + 48))(v25);
      if (v25 == buf)
      {
        (*(*v25 + 32))(v25);
      }

      else if (v25)
      {
        (*(*v25 + 40))(v25);
      }
    }
  }
}

void sub_298C58CB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v3 = sub_298B9CDFC();
  v4 = *(v3 + 32);
  if (*(v3 + 24) - v4 > 3uLL)
  {
    *v4 = 540686858;
    v22 = *(v3 + 24);
    v5 = (*(v3 + 32) + 4);
    *(v3 + 32) = v5;
    if ((v22 - v5) > 0x15)
    {
LABEL_4:
      qmemcpy(v5, "finalizePostprocessing", 22);
      v6 = *(v3 + 24);
      v7 = (*(v3 + 32) + 22);
      *(v3 + 32) = v7;
      if (v6 != v7)
      {
        goto LABEL_5;
      }

LABEL_38:
      sub_298B9BCEC(v3, "\n", 1uLL);
      v8 = sub_298B9CDFC();
      v9 = v8[2];
      if (v8[4] == v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v3 = sub_298B9BCEC(v3, "\n:: ", 4uLL);
    v5 = *(v3 + 32);
    if (*(v3 + 24) - v5 > 0x15uLL)
    {
      goto LABEL_4;
    }
  }

  v3 = sub_298B9BCEC(v3, "finalizePostprocessing", 0x16uLL);
  v7 = *(v3 + 32);
  if (*(v3 + 24) == v7)
  {
    goto LABEL_38;
  }

LABEL_5:
  *v7 = 10;
  ++*(v3 + 32);
  v8 = sub_298B9CDFC();
  v9 = v8[2];
  if (v8[4] != v9)
  {
LABEL_6:
    v8[4] = v9;
    sub_298B9BB84(v8);
  }

LABEL_7:
  v10 = *(a1 + 320);
  if (!v10 || (sub_298C4F2E0(a2, v10), !*a2))
  {
    v11 = *(a1 + 288);
    v25 = *(a1 + 296);
    while (v11 != v25)
    {
      v12 = *(v11 + 8);
      v13 = *(v11 + 31);
      if (v13 >= 0)
      {
        v12 = (v11 + 8);
      }

      v14 = *(v11 + 16);
      if (v13 >= 0)
      {
        v14 = *(v11 + 31);
      }

      v26[0] = v12;
      v26[1] = v14;
      sub_298B1EEB8(v26, __p);
      v15 = *sub_298C26F78(a1 + 16, &v29, __p);
      if (!v15)
      {
        abort();
      }

      v16 = *(v15 + 56);
      if (v28 < 0)
      {
        operator delete(__p[0]);
        if (*v11)
        {
          goto LABEL_30;
        }
      }

      else if (*v11)
      {
        goto LABEL_30;
      }

      v17 = *(a1 + 144);
      if (v17)
      {
        *a2 = 0;
        if (*(v11 + 168) == 1 && (v18 = *(v11 + 176), *(v11 + 184) - v18 == 8))
        {
          v20 = *v18;
          v19 = v20 & 0xFFFFFFFFFFFFFF00;
          v20 = v20;
          v21 = 1;
        }

        else
        {
          v21 = 0;
          v20 = 0;
          v19 = 0;
        }

        v30[0] = &unk_2A1F201E0;
        v30[1] = a2;
        v31 = v30;
        v23 = v21 | v23 & 0xFFFFFFFFFFFFFF00;
        sub_298C4EFA8(v16, v19 | v20, v23, v17, 0, v30);
        if (v31 == v30)
        {
          (*(*v31 + 32))(v31);
          if (*a2)
          {
            return;
          }
        }

        else
        {
          if (v31)
          {
            (*(*v31 + 40))();
          }

          if (*a2)
          {
            return;
          }
        }
      }

LABEL_30:
      if (*(v16 + 504))
      {
        operator new();
      }

      sub_298C17C34(v16);
      v11 += 544;
    }

    *a2 = 0;
  }
}

__n128 sub_298C591D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    result = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = result;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  return result;
}

void sub_298C59210(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

unint64_t sub_298C59230(unint64_t result, char *__s)
{
  v2 = *(*(result + 32) + 8);
  if ((v2[64] & 1) == 0)
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v4 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    v5 = v2 + 40;
    v2[63] = result;
    if (result)
    {
      result = memmove(v5, __s, result);
    }

    *(v5 + v4) = 0;
    v2[64] = 1;
  }

  return result;
}

void sub_298C59370(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *src = 0;
  v13 = 0;
  if (dyld_image_copy_uuid())
  {
    installname = dyld_image_get_installname();
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, src);
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = dst;
    v4 = __p;
    sub_298B1FB90(v10, __p);
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    if (v9 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_298BA724C(v4, v5);
    v7 = sub_298C5948C((v2 + 24), v4, v5, v6);
    MEMORY[0x29C294300](*v7 + 8, installname);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t *sub_298C5948C(_DWORD *a1, void *a2, size_t a3, uint64_t a4)
{
  v7 = sub_298B96440(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --a1[4];
    v10 = operator new(a3 + 33, 8uLL);
    v11 = v10 + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    v10 = operator new(a3 + 33, 8uLL);
    v11 = v10 + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *v10 = a3;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  *v8 = v10;
  ++a1[3];
  v8 = (*a1 + 8 * sub_298B96888(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void sub_298C595A4(int32x2_t **a1)
{
  v83 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2].u32[0];
  if (!v5)
  {
LABEL_7:
    v8 = (v4 + 48 * v5);
    goto LABEL_8;
  }

  v6 = *(*v3 + 40);
  v7 = (37 * v6) & (v5 - 1);
  v8 = (v4 + 48 * v7);
  v9 = *v8;
  if (v6 != *v8)
  {
    v10 = 1;
    while (v9 != -1)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v5 - 1);
      v8 = (v4 + 48 * v7);
      v9 = *v8;
      if (v6 == *v8)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  if (v8 == (v4 + 48 * v5) || (v12 = a1[2], LOBYTE(v8[1].val[0]) != v12->u8[0]))
  {
    v18 = sub_298B9CEA8();
    v19 = sub_298B9A4EC(v18, &unk_298EAC9FE, 0, 0);
    v20 = v19;
    v21 = v19[4];
    if (v19[3] - v21 > 0x1EuLL)
    {
      qmemcpy(v21, "Dropped DBG_DYLD event for tid=", 31);
      v19[4] += 31;
      v22 = *(*a1[1] + 40);
      if (HIDWORD(v22))
      {
LABEL_17:
        sub_298B8FEA0(v19, v22, 0, 0, 0);
        v23 = *(v20 + 32);
        if (*(v20 + 24) == v23)
        {
LABEL_18:
          sub_298B9BCEC(v20, "\n", 1uLL);
          goto LABEL_22;
        }

LABEL_21:
        *v23 = 10;
        ++*(v20 + 32);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = sub_298B9BCEC(v19, "Dropped DBG_DYLD event for tid=", 0x1FuLL);
      v22 = *(*a1[1] + 40);
      if (HIDWORD(v22))
      {
        goto LABEL_17;
      }
    }

    sub_298B8FC48(v19, v22, 0, 0, 0);
    v23 = *(v20 + 32);
    if (*(v20 + 24) == v23)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v79 = 0;
  v78 = &v8[1] + 2;
  if (v12->i8[0] == 1)
  {
    v13 = a1[3];
    v14 = v13[54];
    v15 = v13[55];
    if (v14 == v15)
    {
LABEL_14:
      *v80 = v78;
      v81 = v79;
      v17 = 2 * *&v8[4];
      v73[0] = 0;
      v74 = 0;
      sub_298C16C08(v13, 1, v80, v17, 4, "???", 3uLL, v73);
    }

    while (1)
    {
      v16 = *v14;
      if (**v14 == 1)
      {
        break;
      }

      if (++v14 == v15)
      {
        goto LABEL_14;
      }
    }

    v41 = v16 + 1;
    v80[1] = 0;
    v81 = 0;
    v80[0] = v16 + 1;
    if (!sub_298BDC880(v80, &v78))
    {
      v42 = a1[4];
      v42[16].i8[0] = 1;
      v80[1] = 0;
      v81 = 0;
      v80[0] = v41;
      *v75 = v78;
      v76 = v79;
      sub_298C4D524(&v77, v80, v75, *&v42[3]);
    }

    goto LABEL_22;
  }

  v30 = *(*v3 + 8);
  if (!v30)
  {
    v35 = v80;
    sub_298B1FB90(&v78, v80);
    if (v81 < 0)
    {
      v35 = v80[0];
    }

    if (v81 >= 0)
    {
      v36 = SHIBYTE(v81);
    }

    else
    {
      v36 = v80[1];
    }

    v37 = sub_298BA724C(v35, v36);
    v38 = *sub_298C5948C(&v2[3], v35, v36, v37);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
      v39 = (v38 + 8);
      v40 = *(v38 + 31);
      if ((v40 & 0x80000000) == 0)
      {
LABEL_37:
        if (!v40)
        {
          goto LABEL_72;
        }

        goto LABEL_68;
      }
    }

    else
    {
      v39 = (v38 + 8);
      v40 = *(v38 + 31);
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    if (!*(v38 + 16))
    {
LABEL_72:
      v60 = sub_298B9CEA8();
      v61 = sub_298B9A354(v60, &unk_298EAC9FE, 0, 0);
      v62 = v61;
      v63 = v61[4];
      if (v61[3] - v63 > 0x27uLL)
      {
        qmemcpy(v63, "Did not get path for shared cache image ", 40);
        v61[4] += 40;
      }

      else
      {
        sub_298B9BCEC(v61, "Did not get path for shared cache image ", 0x28uLL);
      }

      sub_298B1FB90(&v78, v80);
      if (v81 >= 0)
      {
        v64 = v80;
      }

      else
      {
        v64 = v80[0];
      }

      if (v81 >= 0)
      {
        v65 = HIBYTE(v81);
      }

      else
      {
        v65 = v80[1];
      }

      sub_298B9BCEC(v62, v64, v65);
      v66 = *(v62 + 32);
      if (*(v62 + 24) - v66 > 1uLL)
      {
        *v66 = 8250;
        *(v62 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(v62, ": ", 2uLL);
      }

      v67 = __error();
      v68 = strerror(*v67);
      v69 = *(v62 + 32);
      if (v68)
      {
        v70 = v68;
        v71 = strlen(v68);
        v72 = v71;
        if (v71 <= *(v62 + 24) - v69)
        {
          if (v71)
          {
            memcpy(v69, v70, v71);
            v69 = (*(v62 + 32) + v72);
            *(v62 + 32) = v69;
          }
        }

        else
        {
          sub_298B9BCEC(v62, v70, v71);
          v69 = *(v62 + 32);
        }
      }

      if (*(v62 + 24) == v69)
      {
        sub_298B9BCEC(v62, "\n", 1uLL);
      }

      else
      {
        *v69 = 10;
        ++*(v62 + 32);
      }

      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80[0]);
      }

      goto LABEL_22;
    }

    v39 = *v39;
LABEL_68:
    strncpy(v80, v39, 0x400uLL);
    v82 = 0;
LABEL_69:
    ktrace_get_current_timestamp();
    continuous_from_timestamp = ktrace_get_continuous_from_timestamp();
    v55 = a1[6]->u8[0];
    v57 = a1[3];
    v56 = a1[4];
    if (v55 == 1)
    {
      v75[1] = 0;
      v76 = 0;
      v75[0] = &v8[1] + 2;
      v58 = strlen(v80);
      sub_298C1797C(v57, v56, v75, v80, v58, 2 * *&v8[4], continuous_from_timestamp, 4);
    }

    v75[1] = 0;
    v76 = 0;
    v75[0] = &v8[1] + 2;
    v59 = strlen(v80);
    sub_298C177D8(v57, v56, v75, v80, v59, 2 * *&v8[4], continuous_from_timestamp, 4);
  }

  if (fsgetpath(v80, 0x401uLL, v8 + 5, v30) != -1)
  {
    goto LABEL_69;
  }

  v31 = sub_298B9CEA8();
  v32 = sub_298B9A354(v31, &unk_298EAC9FE, 0, 0);
  v33 = v32;
  v34 = v32[4];
  if (v32[3] - v34 > 0x1AuLL)
  {
    qmemcpy(v34, "Did not get path for image ", 27);
    v32[4] += 27;
  }

  else
  {
    sub_298B9BCEC(v32, "Did not get path for image ", 0x1BuLL);
  }

  sub_298B1FB90(&v78, v75);
  if (v76 >= 0)
  {
    v43 = v75;
  }

  else
  {
    v43 = v75[0];
  }

  if (v76 >= 0)
  {
    v44 = HIBYTE(v76);
  }

  else
  {
    v44 = v75[1];
  }

  sub_298B9BCEC(v33, v43, v44);
  v45 = *(v33 + 32);
  if (*(v33 + 24) - v45 > 1uLL)
  {
    *v45 = 8250;
    *(v33 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(v33, ": ", 2uLL);
  }

  v46 = __error();
  v47 = strerror(*v46);
  v48 = *(v33 + 32);
  if (v47)
  {
    v49 = v47;
    v50 = strlen(v47);
    v51 = v50;
    if (v50 <= *(v33 + 24) - v48)
    {
      if (v50)
      {
        memcpy(v48, v49, v50);
        v48 = (*(v33 + 32) + v51);
        *(v33 + 32) = v48;
      }
    }

    else
    {
      sub_298B9BCEC(v33, v49, v50);
      v48 = *(v33 + 32);
    }
  }

  if (*(v33 + 24) == v48)
  {
    sub_298B9BCEC(v33, "\n", 1uLL);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v48 = 10;
    ++*(v33 + 32);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(v75[0]);
LABEL_22:
  v24 = v2[2].i32[0];
  if (v24)
  {
    v25 = *(*v3 + 40);
    v26 = v24 - 1;
    v27 = (37 * v25) & v26;
    v28 = (*v2 + 48 * v27);
    v29 = *v28;
    if (v25 == *v28)
    {
LABEL_24:
      *v28 = -2;
      v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v52 = 1;
      while (v29 != -1)
      {
        v53 = v27 + v52++;
        v27 = v53 & v26;
        v28 = (*v2 + 48 * v27);
        v29 = *v28;
        if (v25 == *v28)
        {
          goto LABEL_24;
        }
      }
    }
  }
}

void *sub_298C59E68(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 4);
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298C5A008(a1, 2 * v4);
    v9 = *a2;
    v10 = *(v7 + 4) - 1;
    v11 = (37 * *a2) & v10;
    a3 = (*v7 + 48 * v11);
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -2;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + 48 * v11);
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - *(a1 + 3) > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298C5A008(a1, *(a1 + 4));
    v9 = *a2;
    v18 = *(v7 + 4) - 1;
    v19 = (37 * *a2) & v18;
    a3 = (*v7 + 48 * v19);
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++*(v7 + 2);
      if (v9 == -1)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -1)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -2;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + 48 * v19);
      v20 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    a3 = v13;
  }

  a1 = v7;
LABEL_3:
  v5 = *a3;
  ++*(a1 + 2);
  if (v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

  return a3;
}

void *sub_298C5A008(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 48 * v10 - 48;
    if (v11 >= 0x30)
    {
      v16 = v11 / 0x30 + 1;
      v12 = &result[6 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[6] = -1;
        v17 += 12;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v28 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v29 = *(a1 + 4) - 1;
              v30 = v29 & (37 * v28);
              v25 = *a1 + 48 * v30;
              v31 = *v25;
              if (v28 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -1)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -2;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = *a1 + 48 * (v35 & v29);
                  v31 = *v25;
                  if (v28 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v28;
              v26 = *(v20 + 1);
              v27 = *(v20 + 3);
              *(v25 + 40) = v20[5];
              *(v25 + 24) = v27;
              *(v25 + 8) = v26;
              ++*(a1 + 2);
            }

            v20 += 6;
          }

          while (v20 != &v4[6 * v3]);
        }

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[6 * v10];
    do
    {
      *v12 = -1;
      v12 += 6;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  a1[1] = 0;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = 48 * v13 - 48;
    if (v14 < 0x30)
    {
      v15 = result;
LABEL_21:
      v24 = &result[6 * v13];
      do
      {
        *v15 = -1;
        v15 += 6;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x30 + 1;
    v15 = &result[6 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -1;
      v22[6] = -1;
      v22 += 12;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *sub_298C5A278(void *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0 && (*(*result + 8) & (**result != a2)) == 0)
  {
    v4 = result[1];
    v6 = a2;
    v5 = *sub_298C16B60(v4 + 456, &v6);
    if (!v5)
    {
      operator new();
    }

    v6 = a3;
    return sub_298AFFBE8(v5 + 88, &v6);
  }

  return result;
}

void sub_298C5A360(uint64_t *result, uint64_t *a2)
{
  v91 = *MEMORY[0x29EDCA608];
  v2 = *result;
  if (*(*result + 371) & 1) != 0 || (*(v2 + 370))
  {
    v58 = result[1];
    v80 = xmmword_29EEB6708;
    *__p = *&off_29EEB6718;
    sub_298B208F4(2, &v77);
    v3 = *a2;
    v59 = a2[1];
    if (*a2 != v59)
    {
      v61 = v2;
      do
      {
        v4 = *(v3 + 24);
        if (*(v3 + 40))
        {
          v5 = 0;
        }

        else
        {
          v5 = v4 == 0;
        }

        v6 = v5;
        v7 = a2[3];
        v8 = *(a2 + 10);
        if (v8)
        {
          v9 = *(v3 + 48);
          v10 = (37 * v9) & (v8 - 1);
          v11 = (v7 + 40 * v10);
          v12 = *v11;
          if (v9 == *v11)
          {
            goto LABEL_19;
          }

          v13 = 1;
          while (v12 != -1)
          {
            v14 = v10 + v13++;
            v10 = v14 & (v8 - 1);
            v11 = (v7 + 40 * v10);
            v12 = *v11;
            if (v9 == *v11)
            {
              goto LABEL_19;
            }
          }
        }

        v11 = (v7 + 40 * v8);
LABEL_19:
        v16 = v11[2];
        v15 = v11[3];
        if (v15 == v16)
        {
          v66[0] = "LiveRecording.cpp";
          v67 = ":";
          v68 = 771;
          std::generic_category();
          v65 = 3;
          LODWORD(v64) = 3487799;
          v69[0] = v66;
          v69[2] = &v64;
          v70 = 1026;
          v71[0] = v69;
          v72 = ": ";
          v73 = 770;
          v74[0] = v71;
          v75 = "Exclave with asid ";
          v76 = 770;
          if (v4)
          {
            v52 = 20;
            do
            {
              uu2[v52--] = (v4 % 0xA) | 0x30;
              v53 = v4 > 9;
              v4 /= 0xAuLL;
            }

            while (v53);
            v54 = v52 + 1;
            v55 = 20 - v52;
            if ((20 - v52) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_298ADDDA0();
            }
          }

          else
          {
            BYTE4(v90) = 48;
            v54 = 20;
            v55 = 1;
          }

          if (v55 <= 0x16)
          {
            v63 = v55;
            if (v54 != 21)
            {
              memcpy(&__dst, &uu2[v54], v55);
            }

            *(&__dst + v55) = 0;
            *uu = v74;
            p_dst = &__dst;
            v85 = 1026;
            *dst = uu;
            v87 = " has no text layout info";
            v88 = 770;
            sub_298B996A4(dst, &v79);
            operator new();
          }

          operator new();
        }

        if (!v6)
        {
          *uu2 = *(v3 + 32);
          v31 = *sub_298C16B60(v2 + 456, uu2);
          if (!v31)
          {
            operator new();
          }

          std::string::operator=(v31, v3);
          *uu2 = *(v3 + 40);
          sub_298AFFBE8(&v31[3].__r_.__value_.__r.__words[2], uu2);
          *dst = v16;
          *&dst[8] = 0;
          v87 = 0;
          memset(uu2, 0, sizeof(uu2));
          uuid_copy(uu2, v16);
          v32 = v78;
          if (v78)
          {
            v33 = *&uu2[8] ^ *uu2;
            v34 = vcnt_s8(v78);
            v34.i16[0] = vaddlv_u8(v34);
            if (v34.u32[0] <= 1uLL)
            {
              v35 = (*&v78 - 1) & v33;
            }

            else
            {
              v35 = v33 < *&v78 ? *&uu2[8] ^ *uu2 : v33 % *&v78;
            }

            v36 = *(v77 + 8 * v35);
            if (v36)
            {
              v37 = *v36;
              if (*v36)
              {
                if (v34.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v43 = *(v37 + 1);
                    if (v43 == v33)
                    {
                      if (!uuid_compare(v37 + 16, uu2))
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((v43 & (*&v32 - 1)) != v35)
                    {
                      goto LABEL_59;
                    }

                    v37 = *v37;
                    if (!v37)
                    {
                      goto LABEL_59;
                    }
                  }
                }

                do
                {
                  v38 = *(v37 + 1);
                  if (v38 == v33)
                  {
                    if (!uuid_compare(v37 + 16, uu2))
                    {
LABEL_69:
                      v46 = *(v37 + 4);
                      v45 = (v37 + 32);
                      v44 = v46;
                      v47 = *(v45 + 23);
                      if (v47 >= 0)
                      {
                        v39 = v45;
                      }

                      else
                      {
                        v39 = v44;
                      }

                      if (v47 >= 0)
                      {
                        v40 = *(v45 + 23);
                      }

                      else
                      {
                        v40 = v45[1];
                      }

                      if (!v39)
                      {
LABEL_76:
                        memset(uu2, 0, sizeof(uu2));
                        v90 = 0;
LABEL_61:
                        sub_298C26CD8(uu, dst);
                        v74[0] = uu;
                        v41 = sub_298B223E4((v61 + 392), uu, &unk_298CF78C8, v74);
                        v42 = v41;
                        if (v41[55] < 0)
                        {
                          operator delete(*(v41 + 4));
                        }

                        *(v42 + 2) = *uu2;
                        *(v42 + 6) = v90;
                        operator new();
                      }

LABEL_60:
                      sub_298BDB508(uu2, v39, v40);
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    if (v38 >= *&v32)
                    {
                      v38 %= *&v32;
                    }

                    if (v38 != v35)
                    {
                      break;
                    }
                  }

                  v37 = *v37;
                }

                while (v37);
              }
            }
          }

LABEL_59:
          v39 = "???";
          v40 = 3;
          if (!"???")
          {
            goto LABEL_76;
          }

          goto LABEL_60;
        }

        if (v15 - v16 != 41)
        {
          v71[0] = "LiveRecording.cpp";
          v72 = ":";
          v73 = 771;
          std::generic_category();
          HIBYTE(v67) = 3;
          LODWORD(v66[0]) = 3160375;
          v74[0] = v71;
          v75 = v66;
          v76 = 1026;
          *uu = v74;
          p_dst = ": ";
          v85 = 770;
          v56 = "cl4 load info larger than expected";
          goto LABEL_105;
        }

        v17 = *(v2 + 432);
        v18 = *(v2 + 440);
        if (v17 == v18)
        {
LABEL_25:
          *uu2 = v11[2];
          *&uu2[8] = 0;
          v90 = 0;
          v20 = v16[24];
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v16);
          v21 = v78;
          if (v78)
          {
            v22 = *&dst[8] ^ *dst;
            v23 = vcnt_s8(v78);
            v23.i16[0] = vaddlv_u8(v23);
            v24 = v23.u32[0];
            if (v23.u32[0] <= 1uLL)
            {
              v25 = (*&v78 - 1) & v22;
            }

            else
            {
              v25 = v22 < *&v78 ? *&dst[8] ^ *dst : v22 % *&v78;
            }

            v26 = *(v77 + 8 * v25);
            if (v26)
            {
              for (i = *v26; i; i = *i)
              {
                v28 = *(i + 1);
                if (v28 == v22)
                {
                  if (!uuid_compare(i + 16, dst))
                  {
                    v50 = *(i + 4);
                    v49 = (i + 32);
                    v48 = v50;
                    v51 = *(v49 + 23);
                    if (v51 >= 0)
                    {
                      v29 = v49;
                    }

                    else
                    {
                      v29 = v48;
                    }

                    if (v51 >= 0)
                    {
                      v30 = *(v49 + 23);
                    }

                    else
                    {
                      v30 = v49[1];
                    }

LABEL_42:
                    LOBYTE(v80) = 0;
                    v82 = 0;
                    sub_298C16C08(v61, 10, uu2, 1, v20, v29, v30, &v80);
                  }
                }

                else if (v24 <= 1)
                {
                  if ((v28 & (*&v21 - 1)) != v25)
                  {
                    break;
                  }
                }

                else
                {
                  if (v28 >= *&v21)
                  {
                    v28 %= *&v21;
                  }

                  if (v28 != v25)
                  {
                    break;
                  }
                }
              }
            }
          }

          v29 = "???";
          v30 = 3;
          goto LABEL_42;
        }

        while (1)
        {
          v19 = *v17;
          if (**v17 == 10)
          {
            break;
          }

          if (++v17 == v18)
          {
            goto LABEL_25;
          }
        }

        if ((*(v16 + 2) ^ *(v19 + 5)) > 1 || (*uu2 = v19 + 1, *&uu2[8] = 0, v90 = 0, *dst = v16, *&dst[8] = 0, v87 = 0, !sub_298BDC880(uu2, dst)))
        {
          v71[0] = "LiveRecording.cpp";
          v72 = ":";
          v73 = 771;
          std::generic_category();
          HIBYTE(v67) = 3;
          LODWORD(v66[0]) = 3488055;
          v74[0] = v71;
          v75 = v66;
          v76 = 1026;
          *uu = v74;
          p_dst = ": ";
          v85 = 770;
          v56 = "Conflicting cl4 metadata";
LABEL_105:
          *dst = uu;
          v87 = v56;
          v88 = 770;
          sub_298B996A4(dst, v69);
          operator new();
        }

        v3 += 64;
        v2 = v61;
      }

      while (v3 != v59);
    }

    *uu2 = 0;
    sub_298C27450(&v77);
    v57 = *(v58 + 24);
    if (v57)
    {
      (*(*v57 + 48))(v57, uu2);
      if (*uu2)
      {
        (*(**uu2 + 8))(*uu2);
      }
    }

    else
    {
      sub_298AE761C();
      sub_298C5AF00();
    }
  }
}

uint64_t sub_298C5AF88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FE58;
  a2[1] = v2;
  return result;
}

void *sub_298C5AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = **(a1 + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  result = *(a2 + 32);
  if (v5 > *(a2 + 24) - result)
  {
    result = sub_298B9BCEC(a2, v6, v5);
LABEL_3:
    *a3 = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v9 = *(v4 + 24);
  result = memcpy(result, v6, v5);
  *(a2 + 32) += v9;
  *a3 = 0;
  return result;
}

void sub_298C5B040(uint64_t a1)
{
  sub_298C5B088(a1);

  JUMPOUT(0x29C2945F0);
}

void *sub_298C5B088(uint64_t a1)
{
  *a1 = &unk_2A1F1FEA0;
  v2 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v2)
  {
    sub_298C5B18C(v2);
  }

  v3 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v3)
  {
    v4 = sub_298C4A840(v3);
    MEMORY[0x29C2945F0](v4, 0x1020C40066AC55BLL);
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    v6 = *(a1 + 296);
    v7 = *(a1 + 288);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_298AFEAD8(v6 - 544);
      }

      while (v6 != v5);
      v7 = *(a1 + 288);
    }

    *(a1 + 296) = v5;
    operator delete(v7);
  }

  sub_298AFEF9C(a1 + 232, *(a1 + 240));
  v8 = *(a1 + 200);
  if (v8)
  {
    do
    {
      v9 = *v8;
      sub_298AFE6E4(v8 + 2);
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return sub_298C27214(a1);
}

uint64_t sub_298C5B18C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    goto LABEL_5;
  }

  v4 = 0;
  sub_298AE72FC(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v2 = *(a1 + 176);
  if (v2)
  {
LABEL_5:
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  return MEMORY[0x29C2945F0](a1, 0x1020C40E06DA2EALL);
}

__n128 sub_298C5B2C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FEC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5B2F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::processMonitor::stop", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5B3E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FF10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5B410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "Monitor::scanAllTasks", &unk_298EC00B5, v3, 2u);
    }
  }
}

uint64_t sub_298C5B4F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FF58;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C5B524(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = *(v3 + 176);
  *(v3 + 176) = 0;
  v7 = v2;
  v8 = v4;
  sub_298ADE6E8(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v8;
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  *(v3 + 176) = v6;
  return result;
}

uint64_t sub_298C5B5D0(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  sub_298B89CC0(*a1, "Recording", 9uLL);
  v3 = *a1;
  __p[0] = v3;
  __p[1] = v2;
  sub_298B89BA0(v3);
  sub_298C30E68(__p);
  sub_298B89C2C(v3);
  v4 = *a1;
  --*(*a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = strlen(*(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  sub_298BBB6E0(__p, v5, v6);
  sub_298B89CC0(v4, "UUID", 4uLL);
  sub_298B891F0(v4, __p);
  --*(v4 + 8);
  if (LOWORD(__p[0]) == 8)
  {
    sub_298B8A314(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 7)
  {
    sub_298B8A370(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 6 && (v21[15] & 0x80000000) != 0)
  {
    operator delete(__p[1]);
  }

  sub_298B89CC0(*a1, "Opts", 4uLL);
  v7 = *a1;
  __p[0] = v7;
  __p[1] = (v2 + 184);
  sub_298B89BA0(v7);
  sub_298C5C120(__p);
  sub_298B89C2C(v7);
  v8 = *a1;
  --*(*a1 + 8);
  v9 = *(v2 + 280) - 1;
  if (v9 > 3)
  {
    v11 = "NotStarted";
    v10 = 10;
  }

  else
  {
    v10 = qword_298D1C8E8[v9];
    v11 = off_29EEB6728[v9];
  }

  sub_298BBB6E0(__p, v11, v10);
  sub_298B89CC0(v8, "Status", 6uLL);
  sub_298B891F0(v8, __p);
  --*(v8 + 8);
  if (LOWORD(__p[0]) == 8)
  {
    sub_298B8A314(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 7)
  {
    sub_298B8A370(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 6 && (v21[15] & 0x80000000) != 0)
  {
    operator delete(__p[1]);
  }

  v12 = *a1;
  sub_298B89CC0(v12, "LiveSystems", 0xBuLL);
  sub_298B89BA0(v12);
  v13 = *(v2 + 288);
  for (i = *(v2 + 296); v13 != i; v13 += 544)
  {
    v15 = *(v13 + 31);
    if (v15 >= 0)
    {
      v16 = (v13 + 8);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    if (v15 >= 0)
    {
      v17 = *(v13 + 31);
    }

    else
    {
      v17 = *(v13 + 16);
    }

    sub_298B89CC0(v12, v16, v17);
    *__p = 0u;
    memset(v21, 0, sizeof(v21));
    uuid_unparse_upper((v13 + 68), __p);
    v19[0] = v12;
    v19[1] = v13;
    v19[2] = __p;
    sub_298B89BA0(v12);
    sub_298C65C0C(v19);
    sub_298B89C2C(v12);
    --*(v12 + 8);
  }

  result = sub_298B89C2C(v12);
  --*(v12 + 8);
  return result;
}

void sub_298C5B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = *(a4 + 8);
  v25[0] = *a4;
  v25[2] = v5;
  *v26 = *(a4 + 16);
  v27 = *(a4 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v28 = *(a4 + 40);
  v6 = *(a4 + 48);
  v7 = *(a4 + 56);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v29 = v6;
  v30 = v7;
  v9 = *(a4 + 64);
  v8 = *(a4 + 72);
  v31[0] = v9;
  v31[1] = v8;
  v32 = *(a4 + 80);
  if (v8)
  {
    v10 = v9[1];
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v10 >= v7)
      {
        v10 %= v7;
      }
    }

    else
    {
      v10 &= v7 - 1;
    }

    *(v6 + v10) = v31;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
  }

  v11 = *(a4 + 104);
  v12 = *(a4 + 88);
  v13 = *(a4 + 96);
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  v33 = v12;
  v34 = v13;
  v14 = *(a4 + 112);
  __p[0] = v11;
  __p[1] = v14;
  v36 = *(a4 + 120);
  if (v14)
  {
    v15 = v11[1];
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v15 >= v13)
      {
        v15 %= v13;
      }
    }

    else
    {
      v15 &= v13 - 1;
    }

    *(v12 + v15) = __p;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
  }

  v16 = *(a4 + 208);
  v41 = *(a4 + 192);
  v42 = v16;
  v43[0] = *(a4 + 224);
  *(v43 + 9) = *(a4 + 233);
  v17 = *(a4 + 144);
  v37 = *(a4 + 128);
  v38 = v17;
  v18 = *(a4 + 176);
  v39 = *(a4 + 160);
  v40 = v18;
  sub_298AFDFE4(a1, a2, a3, v25, *a5);
  v19 = __p[0];
  if (__p[0])
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = v33;
  v33 = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = v31[0];
  if (v31[0])
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

uint64_t sub_298C5BA84(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[200 * v7 - 192];
        v9 = -200 * v7;
        do
        {
          v8 = sub_298C27104(v8) - 200;
          v9 += 200;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
LABEL_10:
      *v10 = 0;
      return a1;
    }

    v10 = (a2 + 8);
    v12 = *(a2 + 8);
    v13 = *(a1 + 8);
    if (v13 < v12)
    {
      if (*(a1 + 12) < v12)
      {
        if (v13)
        {
          v14 = *a1 + 200 * v13 - 192;
          v15 = -200 * v13;
          do
          {
            v14 = sub_298C27104(v14) - 200;
            v15 += 200;
          }

          while (v15);
        }

        *(a1 + 8) = 0;
        sub_298C5BE04(a1, v12);
        LODWORD(v13) = 0;
        v16 = *a2;
        LODWORD(v17) = *(a2 + 8);
        if (!v17)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v13)
      {
        v28 = &v4[25 * v13];
        v29 = *a1;
        v30 = *a2;
        v31 = *a1;
        do
        {
          v32 = *v30;
          v30 += 25;
          *v31 = v32;
          v31 += 200;
          sub_298C5BF94((v29 + 8), (v4 + 1));
          v29 = v31;
          v4 = v30;
        }

        while (v30 != v28);
        v16 = *a2;
        v17 = *(a2 + 8);
        if (v13 != v17)
        {
LABEL_32:
          v33 = &v16[25 * v17];
          v34 = 200 * v13 + 112;
          v35 = (v16 + v34);
          v36 = *a1 + v34;
          do
          {
            v39 = v35 - 7;
            *(v36 - 112) = *(v35 - 14);
            *(v36 - 104) = *(v35 - 13);
            v40 = *(v35 - 6);
            *(v36 - 80) = *(v35 - 10);
            *(v36 - 96) = v40;
            *(v39 + 3) = 0;
            *(v39 + 4) = 0;
            *(v39 + 2) = 0;
            *(v36 - 72) = *(v35 - 72);
            v41 = *(v35 - 56);
            v42 = *(v35 - 40);
            v43 = *(v35 - 24);
            *(v36 - 9) = *(v35 - 9);
            *(v36 - 24) = v43;
            *(v36 - 40) = v42;
            *(v36 - 56) = v41;
            *v36 = 0;
            *(v36 + 24) = 0;
            if (*(v35 + 24) == 1)
            {
              v44 = *v35;
              *(v36 + 16) = *(v35 + 2);
              *v36 = v44;
              *(v35 + 1) = 0;
              *(v35 + 2) = 0;
              *v35 = 0;
              *(v36 + 24) = 1;
            }

            v37 = *(v35 + 6);
            *(v36 + 32) = v35[2];
            *(v36 + 48) = v37;
            *(v36 + 56) = 0;
            *(v36 + 64) = 0;
            *(v36 + 72) = 0;
            *(v36 + 56) = *(v35 + 56);
            v38 = *(v35 + 10);
            *(v36 + 72) = *(v35 + 9);
            *(v35 + 7) = 0;
            *(v35 + 8) = 0;
            *(v35 + 9) = 0;
            *(v35 + 10) = 0;
            *(v36 + 80) = v38;
            v35 = (v35 + 200);
            v36 += 200;
          }

          while ((v39 + 200) != v33);
          v16 = *a2;
        }
      }

      else
      {
        LODWORD(v13) = 0;
        v16 = *a2;
        LODWORD(v17) = *(a2 + 8);
        if (v17)
        {
          goto LABEL_32;
        }
      }

LABEL_37:
      *(a1 + 8) = v12;
      v45 = *v10;
      if (v45)
      {
        v46 = &v16[25 * v45 - 24];
        v47 = -200 * v45;
        do
        {
          v46 = sub_298C27104(v46) - 200;
          v47 += 200;
        }

        while (v47);
      }

      goto LABEL_10;
    }

    v18 = *a1;
    if (v12)
    {
      v19 = &v4[25 * v12];
      v20 = *a2;
      v21 = *a1;
      do
      {
        v22 = *v20;
        v20 += 25;
        *v21 = v22;
        v21 += 200;
        sub_298C5BF94((v18 + 8), (v4 + 1));
        v18 = v21;
        v4 = v20;
      }

      while (v20 != v19);
      v23 = *a1 + 200 * *(a1 + 8);
      if (v23 == v21)
      {
LABEL_24:
        *(a1 + 8) = v12;
        v25 = *(a2 + 8);
        if (v25)
        {
          v26 = *a2 + 200 * v25 - 192;
          v27 = -200 * v25;
          do
          {
            v26 = sub_298C27104(v26) - 200;
            v27 += 200;
          }

          while (v27);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v21 = *a1;
      v23 = &v18[200 * v13];
      if (v23 == v18)
      {
        goto LABEL_24;
      }
    }

    do
    {
      v24 = (v23 - 200);
      sub_298C27104(v23 - 192);
      v23 = v24;
    }

    while (v24 != v21);
    goto LABEL_24;
  }

  return a1;
}

void sub_298C5BE04(char **a1, unint64_t a2)
{
  v22 = 0;
  v3 = (a1 + 2);
  v4 = sub_298B90848(a1, a1 + 2, a2, 200, &v22);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = &v5[200 * v6];
    v8 = v5 + 112;
    v9 = v4 + 112;
    do
    {
      v12 = v8 - 112;
      *(v9 - 14) = *(v8 - 14);
      *(v9 - 13) = *(v8 - 13);
      v13 = *(v8 - 6);
      *(v9 - 10) = *(v8 - 10);
      *(v9 - 6) = v13;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 2) = 0;
      *(v9 - 72) = *(v8 - 72);
      v14 = *(v8 - 56);
      v15 = *(v8 - 40);
      v16 = *(v8 - 24);
      *(v9 - 9) = *(v8 - 9);
      *(v9 - 24) = v16;
      *(v9 - 40) = v15;
      *(v9 - 56) = v14;
      *v9 = 0;
      v9[24] = 0;
      if (v8[24] == 1)
      {
        v17 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v17;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        v9[24] = 1;
      }

      v10 = *(v8 + 6);
      *(v9 + 2) = *(v8 + 2);
      *(v9 + 6) = v10;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 56) = *(v8 + 56);
      v11 = *(v8 + 10);
      *(v9 + 9) = *(v8 + 9);
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v9 + 10) = v11;
      v8 += 200;
      v9 += 200;
    }

    while (v12 + 200 != v7);
    v5 = *a1;
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = &v5[200 * v18 - 192];
      v20 = -200 * v18;
      do
      {
        v19 = sub_298C27104(v19) - 200;
        v20 += 200;
      }

      while (v20);
      v5 = *a1;
    }
  }

  v21 = v22;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v21;
}

uint64_t sub_298C5BF94(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 95);
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 95) = v6;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      v9 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v9;
      *(a2 + 127) = 0;
      *(a2 + 104) = 0;
    }
  }

  else if (*(a1 + 128))
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    *(a1 + 128) = 0;
  }

  else
  {
    v10 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v10;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  v11 = *(a2 + 136);
  v12 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  if (v12)
  {
    *(a1 + 168) = v12;
    operator delete(v12);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  v13 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v14 = *(a1 + 184);
  *(a1 + 184) = v13;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  return a1;
}

uint64_t sub_298C5C120(uint64_t *a1)
{
  v81 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 40);
  LOWORD(v78) = 1;
  LOBYTE(__p) = v4;
  sub_298B89CC0(v2, "Foreground", 0xAuLL);
  sub_298B891F0(v2, &v78);
  --*(v2 + 8);
  if (v78 == 8)
  {
    sub_298B8A314(&__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else if (v78 == 7)
  {
    sub_298B8A370(&__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else if (v78 == 6 && SHIBYTE(v80) < 0)
  {
    operator delete(__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
LABEL_6:
      v7 = qword_298D1C908[v6];
      v8 = off_29EEB6748[v6];
      goto LABEL_9;
    }
  }

  v8 = "Standalone";
  v7 = 10;
LABEL_9:
  sub_298BBB6E0(&v78, v8, v7);
  sub_298B89CC0(v5, "SessionPolicy", 0xDuLL);
  sub_298B891F0(v5, &v78);
  --*(v5 + 8);
  if (v78 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v78 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v78 == 6 && SHIBYTE(v80) < 0)
  {
    operator delete(__p);
  }

  v9 = *a1;
  sub_298B89CC0(*a1, "FWOverrides", 0xBuLL);
  sub_298B89BA0(v9);
  v10 = *(v3 + 48);
  v71 = v3;
  v11 = (v3 + 56);
  if (v10 != (v3 + 56))
  {
    do
    {
      v78 = (v10 + 4);
      __p = 0uLL;
      sub_298B1FB90(&v78, v74);
      if (v75 >= 0)
      {
        v12 = v74;
      }

      else
      {
        v12 = v74[0];
      }

      if (v75 >= 0)
      {
        v13 = v75;
      }

      else
      {
        v13 = v74[1];
      }

      if (*(v10 + 71) < 0)
      {
        sub_298AFE11C(v72, v10[6], v10[7]);
      }

      else
      {
        *v72 = *(v10 + 3);
        v73 = v10[8];
      }

      LOWORD(v78) = 6;
      if (v73 >= 0)
      {
        v14 = v72;
      }

      else
      {
        v14 = v72[0];
      }

      if (v73 >= 0)
      {
        v15 = SHIBYTE(v73);
      }

      else
      {
        v15 = v72[1];
      }

      if (!sub_298B88E98(v14, v15, 0))
      {
        if (v73 >= 0)
        {
          v19 = v72;
        }

        else
        {
          v19 = v72[0];
        }

        if (v73 >= 0)
        {
          v20 = SHIBYTE(v73);
        }

        else
        {
          v20 = v72[1];
        }

        sub_298B88F28(v19, v20, &v76);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        *v72 = v76;
        v73 = v77;
      }

      __p = *v72;
      v80 = v73;
      v72[1] = 0;
      v73 = 0;
      v72[0] = 0;
      sub_298B89CC0(v9, v12, v13);
      sub_298B891F0(v9, &v78);
      --*(v9 + 8);
      if (v78 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v78 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v78 == 6 && SHIBYTE(v80) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[0]);
        if ((v75 & 0x80000000) == 0)
        {
LABEL_46:
          v16 = v10[1];
          if (!v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }
      }

      else if ((v75 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      operator delete(v74[0]);
      v16 = v10[1];
      if (!v16)
      {
        do
        {
LABEL_51:
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
        goto LABEL_20;
      }

      do
      {
LABEL_47:
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
LABEL_20:
      v10 = v17;
    }

    while (v17 != v11);
  }

  sub_298B89C2C(v9);
  --*(v9 + 8);
  v21 = *a1;
  sub_298B89CC0(v21, "TargetOptions", 0xDuLL);
  sub_298B89BA0(v21);
  for (i = *(v71 + 16); i; i = *i)
  {
    v23 = i[2];
    v26 = *(v23 + 8);
    v24 = v23 + 8;
    v25 = v26;
    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    v29 = *(v24 + 8);
    if (v27 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    sub_298B89CC0(v21, v28, v30);
    sub_298B89BA0(v21);
    v31 = *(i + 6);
    LOWORD(v78) = 3;
    *&__p = v31;
    sub_298B89CC0(v21, "Target", 6uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v32 = *(i + 8);
    LOWORD(v78) = 3;
    *&__p = v32;
    sub_298B89CC0(v21, "Filter.Type", 0xBuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
LABEL_85:
        v35 = 0;
        while (1)
        {
          if (((v35 >> 5) + 1) >> 59)
          {
            sub_298ADDDA0();
          }

          if (v35 >> 5 != -1)
          {
            if (!(((v35 >> 5) + 1) >> 59))
            {
              operator new();
            }

            sub_298ADDDA0();
          }

          v36 = *v33;
          v37 = 32 * (v35 >> 5);
          *v37 = 4;
          *(v37 + 8) = v36;
          if (v35)
          {
            break;
          }

LABEL_114:
          v35 = v37 + 32;
          if (++v33 == v34)
          {
            goto LABEL_118;
          }
        }

        v38 = 24;
        v39 = 0;
        while (2)
        {
          v40 = *v39;
          *(v38 - 24) = v40;
          if (v40 < 5)
          {
            v41 = *(v39 + 4);
            *v38 = *(v39 + 3);
            goto LABEL_94;
          }

          if (v40 > 6)
          {
            if (v40 == 7)
            {
              *(v38 - 16) = 0;
              *(v38 - 8) = 0;
              *v38 = 0;
              *(v38 - 16) = *(v39 + 1);
              *(v39 + 1) = 0;
              *(v38 - 8) = *(v39 + 4);
              *(v39 + 4) = 0;
              v43 = *(v38 - 4);
              *(v38 - 4) = *(v39 + 5);
              *(v39 + 5) = v43;
              v44 = *v38;
              *v38 = *(v39 + 6);
              *(v39 + 6) = v44;
            }

            else
            {
              if (v40 != 8)
              {
                goto LABEL_95;
              }

              *(v38 - 16) = 0;
              *(v38 - 8) = 0;
              *v38 = 0;
              *(v38 - 16) = *(v39 + 4);
              *v38 = *(v39 + 3);
              *(v39 + 1) = 0;
              *(v39 + 2) = 0;
              *(v39 + 3) = 0;
            }

LABEL_105:
            *v39 = 0;
          }

          else
          {
            if (v40 == 6)
            {
              v42 = *(v39 + 4);
              *v38 = *(v39 + 3);
              *(v38 - 16) = v42;
              *(v39 + 2) = 0;
              *(v39 + 3) = 0;
              *(v39 + 1) = 0;
              goto LABEL_105;
            }

            v41 = *(v39 + 4);
LABEL_94:
            *(v38 - 16) = v41;
          }

LABEL_95:
          v39 += 16;
          v38 += 32;
          if (v39 == v35)
          {
            for (j = 0; j != v35; j += 4)
            {
              v46 = *j;
              if (v46 == 8)
              {
                sub_298B8A314(j + 1);
              }

              else if (v46 == 7)
              {
                sub_298B8A370(j + 2);
              }

              else if (v46 == 6 && *(j + 31) < 0)
              {
                operator delete(j[1]);
              }
            }

            goto LABEL_114;
          }

          continue;
        }
      }
    }

    else
    {
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    v35 = 0;
LABEL_118:
    LOWORD(v78) = 8;
    *&__p = 0;
    *(&__p + 1) = v35;
    v80 = 0;
    sub_298B89CC0(v21, "Filter.ContextIDs", 0x11uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v47 = *(i + 156);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v47;
    sub_298B89CC0(v21, "NeverStart", 0xAuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v48 = *(i + 158);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v48;
    sub_298B89CC0(v21, "StallMDR", 8uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v49 = *(i + 159);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v49;
    sub_298B89CC0(v21, "MultIndirBrRetire", 0x11uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v50 = *(i + 160);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v50;
    sub_298B89CC0(v21, "DisableSWMessages", 0x11uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v51 = *(i + 161);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v51;
    sub_298B89CC0(v21, "DisablePCTrace", 0xEuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v52 = *(i + 162);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v52;
    sub_298B89CC0(v21, "UseCarveoutVA", 0xDuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (*(i + 176) != 1)
    {
      goto LABEL_174;
    }

    v53 = i[21];
    LOWORD(v78) = 4;
    *&__p = v53;
    sub_298B89CC0(v21, "VirtualTraceBufferSize", 0x16uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

    if (v78 == 7)
    {
      sub_298B8A370(&__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

    if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

LABEL_174:
    if (*(i + 188) != 1)
    {
      goto LABEL_188;
    }

LABEL_175:
    v54 = *(i + 46);
    LOWORD(v78) = 3;
    *&__p = v54;
    sub_298B89CC0(v21, "DataRateLimitMBSec", 0x12uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

LABEL_188:
    v55 = i[24];
    LOWORD(v78) = 4;
    *&__p = v55;
    sub_298B89CC0(v21, "LogMode", 7uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v56 = i[25];
    LOWORD(v78) = 4;
    *&__p = v56;
    sub_298B89CC0(v21, "FilterEnable", 0xCuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v57 = i[26];
    LOWORD(v78) = 4;
    *&__p = v57;
    sub_298B89CC0(v21, "FilterCount", 0xBuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v58 = *(i + 216);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v58;
    sub_298B89CC0(v21, "AddressTrace", 0xCuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v59 = *(i + 217);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v59;
    sub_298B89CC0(v21, "DisableMMUTrace", 0xFuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v60 = *(i + 218);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v60;
    sub_298B89CC0(v21, "DisableCompression", 0x12uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v61 = *(i + 219);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v61;
    sub_298B89CC0(v21, "SinglePacketPerWord", 0x13uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v62 = *(i + 220);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v62;
    sub_298B89CC0(v21, "Driver", 6uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v63 = *(i + 221);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v63;
    sub_298B89CC0(v21, "Prod", 4uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
LABEL_251:
        v65 = 7;
        v66 = "Oneshot";
        goto LABEL_252;
      }
    }

    else
    {
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    v65 = qword_298D1C920[v64];
    v66 = off_29EEB6760[v64];
LABEL_252:
    sub_298BBB6E0(&v78, v66, v65);
    sub_298B89CC0(v21, "Mode", 4uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v67 = *(i + 222);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v67;
    sub_298B89CC0(v21, "DrainWhileStreaming", 0x13uLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v68 = *(i + 58);
    LOWORD(v78) = 3;
    *&__p = v68;
    sub_298B89CC0(v21, "IOParallelism", 0xDuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    v69 = *(i + 272);
    LOWORD(v78) = 1;
    LOBYTE(__p) = v69;
    sub_298B89CC0(v21, "EnableCPMUDump", 0xEuLL);
    sub_298B891F0(v21, &v78);
    --*(v21 + 8);
    if (v78 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v78 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v78 == 6 && SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }

    sub_298B89C2C(v21);
    --*(v21 + 8);
  }

  result = sub_298B89C2C(v21);
  --*(v21 + 8);
  return result;
}
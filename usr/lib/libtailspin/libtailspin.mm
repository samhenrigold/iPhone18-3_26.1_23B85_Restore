uint64_t tailspin_dump_output_with_options(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = sub_22EE82668(v9);
  v11 = sub_22EE826AC(v6, v9);

  if (v11)
  {
    v12 = getpid();
    v13 = __error();
    v14 = *v13;
    v15 = sub_22EE82CE0(v13);
    v16 = v15;
    if ((v12 - 1) <= 0xFFFFFFFD && os_signpost_enabled(v15))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_22EE81000, v16, OS_SIGNPOST_EVENT, v12, "ClientRequestedDump", &unk_22EEB0741, v19, 2u);
    }

    *__error() = v14;
    sub_22EE82D38(v10, v11, v7, v8);

    v17 = 0;
  }

  else
  {
    v17 = 22;
  }

  return v17;
}

id sub_22EE82668(uint64_t a1)
{
  if (qword_280B25FB8 != -1)
  {
    sub_22EE82D24();
  }

  v2 = qword_280B25FB0;

  return v2;
}

id sub_22EE826AC(int a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "tailspin_request_type", 2uLL);
  xpc_dictionary_set_fd(v4, "tailspin_dump_fd", a1);
  v5 = mach_continuous_time();
  xpc_dictionary_set_uint64(v4, "tailspin_dump_request_timestamp", v5);
  if (!v3)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:&v13];
  v7 = v13;
  if (v6)
  {
    xpc_dictionary_set_data(v4, "tailspin_dump_options", [v6 bytes], objc_msgSend(v6, "length"));

LABEL_4:
    v8 = v4;
    goto LABEL_8;
  }

  v9 = __error();
  v10 = *v9;
  v11 = sub_22EE82CE0(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA98AC(v7);
  }

  *__error() = v10;
  v8 = 0;
LABEL_8:

  return v8;
}

void *tailspin_make_ondisk_config(uint64_t *a1, char a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (!v4)
  {
    sub_22EEA659C();
  }

  v5 = v4;
  if ((a2 & 1) != 0 || (*a1 & 0x80) != 0)
  {
    if (*(a1 + 8360))
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    [v4 setObject:v6 forKeyedSubscript:@"Enabled"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8361];
    [v5 setObject:v7 forKeyedSubscript:@"EnabledModifier"];
  }

  v8 = *(a1 + 2) - 1;
  if (v8 <= 2)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:off_278870D28[v8]];
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (!v9)
  {
    sub_22EEA659C();
  }

  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    if ((*a1 & 2) == 0)
    {
LABEL_15:
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1[1030]];
  [v10 setObject:v12 forKeyedSubscript:@"BufferSizeMegabytes"];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1031];
  [v10 setObject:v13 forKeyedSubscript:@"BufferSizeModifier"];

  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    goto LABEL_15;
  }

LABEL_16:
  v14 = MEMORY[0x2318F9C40](a1 + 12);
  if (!v14)
  {
    sub_22EEA659C();
  }

  v15 = v14;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  [v10 setObject:v16 forKeyedSubscript:@"FilterDescriptor"];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8204];
  [v10 setObject:v17 forKeyedSubscript:@"FilterDescriptorModifier"];

  free(v15);
LABEL_18:
  if ([v10 count])
  {
    [v5 setObject:v10 forKeyedSubscript:@"KDebug"];
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  if (!v18)
  {
    sub_22EEA659C();
  }

  v19 = v18;
  if ((a2 & 1) != 0 || (v20 = *a1, (*a1 & 0x10) != 0))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1040]];
    [v19 setObject:v21 forKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1041];
    [v19 setObject:v22 forKeyedSubscript:@"OnCoreSamplingPeriodModifier"];

    if (a2)
    {
      goto LABEL_26;
    }

    v20 = *a1;
  }

  if ((v20 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1035]];
  [v19 setObject:v23 forKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1036];
  [v19 setObject:v24 forKeyedSubscript:@"FullSystemSamplingPeriodModifier"];

  if ((a2 & 1) == 0)
  {
    v20 = *a1;
LABEL_28:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_30;
    }
  }

  v25 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 2099) & 1];
  [v19 setObject:v25 forKeyedSubscript:@"IsCswitchSamplingEnabled"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 2099) >> 1) & 1];
  [v19 setObject:v26 forKeyedSubscript:@"IsSyscallSamplingEnabled"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 2099) >> 2) & 1];
  [v19 setObject:v27 forKeyedSubscript:@"IsVMFaultSamplingEnabled"];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1050];
  [v19 setObject:v28 forKeyedSubscript:@"CswitchSamplingEnabledModifier"];

LABEL_30:
  if ([v19 count])
  {
    [v5 setObject:v19 forKeyedSubscript:@"Sampling"];
  }

  v29 = [MEMORY[0x277CBEB38] dictionary];
  if (!v29)
  {
    sub_22EEA659C();
  }

  v30 = v29;
  if ((a2 & 1) != 0 || (*a1 & 0x40) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 8432)];
    [v30 setObject:v31 forKeyedSubscript:@"CPUTraceEnabled"];

    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8433];
    [v30 setObject:v32 forKeyedSubscript:@"CPUTraceEnabledModifier"];
  }

  if ([v30 count])
  {
    [v5 setObject:v30 forKeyedSubscript:@"CPUTrace"];
  }

  if ([v5 count])
  {
    v33 = v5;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  return v33;
}

id sub_22EE82CE0(uint64_t a1)
{
  if (qword_280B25FA8 != -1)
  {
    sub_22EE85514();
  }

  v2 = qword_280B25FA0;

  return v2;
}

void sub_22EE82D38(_xpc_connection_s *a1, void *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_22EE85484;
  handler[3] = &unk_278871340;
  v10 = v7;
  v8 = v7;
  xpc_connection_send_message_with_reply(a1, a2, a3, handler);
}

uint64_t get_responsible_pid_and_name(uint64_t a1, char *a2, uint32_t a3)
{
  if (!proc_name(a1, a2, a3))
  {
    strlcpy(a2, "<unknown>", a3);
  }

  return a1;
}

void tailspin_save_trace_with_standard_chunks(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v147 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v94 = a5;
  v95 = a6;
  v16 = a7;
  v93 = a8;
  v100 = a9;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2020000000;
  v136[3] = 0;
  v96 = v16;
  mach_timebase_info(&info);
  [v16 startRecordingTimeForSaveStandardChunksPhase:a2 pid:a3];
  v90 = a3;
  v92 = a2;
  if (v15)
  {
    v17 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_min_timestamp"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v91 = [v17 unsignedLongLongValue];
    }

    else
    {
      v91 = 0;
    }

    v18 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_max_timestamp"];

    v19 = v18;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v97 = [v18 unsignedLongLongValue];
    }

    else
    {
      v97 = 0;
    }

    v20 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_end_timestamp"];

    v21 = v20;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v20 unsignedLongLongValue];
      }
    }

    v22 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_reason_string"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = v22;
      v24 = [v22 UTF8String];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_scrub_output"];

    v26 = v25;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = [v25 BOOLValue];
    }

    else
    {
      v27 = 0;
    }

    v28 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_target_pid"];

    v29 = v28;
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v89 = [v28 intValue];
    }

    else
    {
      v89 = -1;
    }

    v30 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_fullfsync_after_events"];

    v31 = v30;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = [v30 BOOLValue];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_ktrace_compression_level"];

    v34 = v33;
    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v33 intValue];
      }
    }

    v35 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_resample_truncated_stacks"];

    v36 = v35;
    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v35 BOOLValue];
      }
    }

    v37 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_should_collect_cputrace"];

    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v37 BOOLValue];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v32 = 0;
    v27 = 0;
    v24 = 0;
    v97 = 0;
    v91 = 0;
    v89 = -1;
  }

  v39 = mach_absolute_time();
  if (v97 > v39)
  {
    v40 = (v97 - v39) * info.numer / info.denom;
    if (v40 > 0x12A05F200)
    {
      v41 = __error();
      v42 = *v41;
      v43 = sub_22EE82CE0(v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8B78();
      }

      *__error() = v42;
      v40 = 5000000000;
    }

    v44 = __error();
    v45 = *v44;
    v46 = sub_22EE82CE0(v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      buf.st_dev = 134217984;
      *&buf.st_mode = v40 / 1000000000.0;
      _os_log_impl(&dword_22EE81000, v46, OS_LOG_TYPE_INFO, "Tailspin requested with max time %.1fs in the future, sleeping until then...", &buf, 0xCu);
    }

    *__error() = v45;
    usleep(v40 / 0x3E8);
  }

  ktrace_session_create();
  ktrace_set_execnames_enabled();
  ktrace_session_set_event_names_enabled();
  ktrace_add_stackshot_flags();
  if (!ktrace_set_use_existing())
  {
    if (v24)
    {
      ktrace_set_reason();
    }

    v142 = v92;
    v143 = 0;
    ktrace_set_command_argv();
    ktrace_set_trigger_kind();
    if (v91)
    {
      v50 = 1;
    }

    else
    {
      v50 = v27;
    }

    if (v50 == 1)
    {
      v129 = MEMORY[0x277D85DD0];
      v130 = 3221225472;
      v131 = sub_22EE90088;
      v132 = &unk_278870FD0;
      v133 = v91;
      v134 = v27;
      ktrace_set_writing_filter();
    }

    v127[0] = 0;
    v127[1] = v127;
    v127[2] = 0x2020000000;
    v128 = 0;
    v125[0] = 0;
    v125[1] = v125;
    v125[2] = 0x2020000000;
    v126 = 0;
    v124[0] = 0;
    v124[1] = v124;
    v124[2] = 0x2020000000;
    v124[3] = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = sub_22EE900C0;
    v110[3] = &unk_278870FF8;
    v116 = v24;
    v111 = v94;
    v112 = v127;
    v119 = v32;
    v117 = v89;
    v118 = a1;
    v113 = v125;
    v114 = v124;
    v115 = v136;
    v88 = MEMORY[0x2318F9980](v110);
    if (v38 && sub_22EE992A8() && (reinit_cputrace_live_recording_from_existing_session(), v51))
    {
      reinit_cputrace_live_recording_from_existing_session();
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = dispatch_semaphore_create(0);
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    v55 = v96;
    v105 = v55;
    dsema = v54;
    ktrace_set_post_processing_handler();
    if (v92)
    {
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    }

    else
    {
      v56 = @"<unknown>";
    }

    v101 = v55;
    v102 = v95;
    v98 = v56;
    v103 = v15;
    v57 = v100;
    v104 = v57;
    ktrace_set_completion_handler();
    if (fstat(a1, &buf))
    {
      st_size = -1;
    }

    else
    {
      st_size = buf.st_size;
    }

    v59 = dup(a1);
    v121[3] = mach_absolute_time();
    v60 = __error();
    v61 = *v60;
    v62 = sub_22EE82CE0(v60);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *v144 = 136447234;
      *&v144[4] = v92;
      *&v144[12] = 1024;
      *&v144[14] = v90;
      *&v144[18] = 1024;
      *&v144[20] = a1;
      LOWORD(v145) = 1024;
      *(&v145 + 2) = v59;
      HIWORD(v145) = 2048;
      v146 = st_size;
      _os_log_impl(&dword_22EE81000, v62, OS_LOG_TYPE_DEFAULT, "Started write fd: %{public}s [%d], original fd: %d, duped fd: %d, size: %{bytes}lld", v144, 0x28u);
    }

    *__error() = v61;
    started = ktrace_start_writing_fd();
    if (started)
    {
      v64 = __error();
      v65 = *v64;
      v66 = sub_22EE82CE0(v64);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *v144 = 67110146;
        *&v144[4] = a1;
        *&v144[8] = 1024;
        *&v144[10] = v59;
        *&v144[14] = 2082;
        *&v144[16] = v92;
        LOWORD(v145) = 1024;
        *(&v145 + 2) = v90;
        HIWORD(v145) = 1024;
        LODWORD(v146) = started;
        _os_log_error_impl(&dword_22EE81000, v66, OS_LOG_TYPE_ERROR, "ktrace_start_writing_fd() failed for original fd %d (dup %d) for client %{public}s [%d]: with errno %{errno}d", v144, 0x24u);
      }

      *__error() = v65;
      sub_22EE85528();
      ktrace_session_destroy();
      close(a1);
      (*(v57 + 2))(v57, 15);
LABEL_103:

      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v120, 8);
      _Block_object_dispose(v124, 8);
      _Block_object_dispose(v125, 8);
      _Block_object_dispose(v127, 8);
      goto LABEL_104;
    }

    if (!v38)
    {
LABEL_101:
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      if (v93)
      {
        v93[2](v93, v92, v107[3]);
      }

      goto LABEL_103;
    }

    if (sub_22EE992A8())
    {
      if (v53)
      {
        v137 = 0;
        v138 = &v137;
        v139 = 0x2020000000;
        v67 = off_27DA9D3B0;
        v140 = off_27DA9D3B0;
        if (!off_27DA9D3B0)
        {
          *v144 = MEMORY[0x277D85DD0];
          *&v144[8] = 3221225472;
          *&v144[16] = sub_22EE91098;
          v145 = &unk_278871098;
          v146 = &v137;
          v68 = sub_22EE905C4();
          v69 = dlsym(v68, "hwtrace_live_recording_pause");
          *(v146[1] + 24) = v69;
          off_27DA9D3B0 = *(v146[1] + 24);
          v67 = v138[3];
        }

        _Block_object_dispose(&v137, 8);
        if (v67)
        {
          if (v67(v53))
          {
            v70 = __error();
            v71 = *v70;
            v72 = sub_22EE82CE0(v70);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA8CFC();
            }

            *__error() = v71;
          }

          v137 = 0;
          v138 = &v137;
          v139 = 0x2020000000;
          v73 = off_27DA9D3B8;
          v140 = off_27DA9D3B8;
          if (!off_27DA9D3B8)
          {
            *v144 = MEMORY[0x277D85DD0];
            *&v144[8] = 3221225472;
            *&v144[16] = sub_22EE910E8;
            v145 = &unk_278871098;
            v146 = &v137;
            v74 = sub_22EE905C4();
            v75 = dlsym(v74, "hwtrace_live_recording_stop");
            *(v146[1] + 24) = v75;
            off_27DA9D3B8 = *(v146[1] + 24);
            v73 = v138[3];
          }

          _Block_object_dispose(&v137, 8);
          if (v73)
          {
            if (!v73(v53))
            {
              goto LABEL_101;
            }

            v76 = __error();
            v77 = *v76;
            v78 = sub_22EE82CE0(v76);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA8D6C();
            }

            v79 = __error();
            goto LABEL_100;
          }

          v85 = [MEMORY[0x277CCA890] currentHandler];
          v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_stop(hwtrace_live_recording_t)"];
          [v85 handleFailureInFunction:v86 file:@"AppleHWTrace_SoftLinking.h" lineNumber:50 description:{@"%s", dlerror()}];
        }

        else
        {
          v83 = [MEMORY[0x277CCA890] currentHandler];
          v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_pause(hwtrace_live_recording_t)"];
          [v83 handleFailureInFunction:v84 file:@"AppleHWTrace_SoftLinking.h" lineNumber:49 description:{@"%s", dlerror()}];
        }

        __break(1u);
      }

      v82 = __error();
      v77 = *v82;
      v81 = sub_22EE82CE0(v82);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8DDC();
      }
    }

    else
    {
      v80 = __error();
      v77 = *v80;
      v81 = sub_22EE82CE0(v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8C7C();
      }
    }

    v79 = __error();
LABEL_100:
    *v79 = v77;
    goto LABEL_101;
  }

  v47 = __error();
  v48 = *v47;
  v49 = sub_22EE82CE0(v47);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA8C0C();
  }

  *__error() = v48;
  sub_22EE85528();
  ktrace_session_destroy();
  close(a1);
  (*(v100 + 2))(v100, 14);
LABEL_104:
  _Block_object_dispose(v136, 8);
}

void sub_22EE83D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);

  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x290], 8);

  _Unwind_Resume(a1);
}

char *get_tailspin_ondisk_config()
{
  MEMORY[0x28223BE20]();
  v64 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/db/tailspin_config.plist"];
  if (v0)
  {
    v1 = tailspin_config_create_with_default_config();
    if (v1)
    {
      v2 = v1;
      v3 = [v0 objectForKeyedSubscript:@"EnforcedByProfile"];
      v4 = [v0 objectForKeyedSubscript:@"EnforcedByTasking"];
      v5 = [v0 objectForKeyedSubscript:@"EnforcedByManualConfiguration"];
      v6 = v5;
      if (v3)
      {
        if (v4)
        {
          sub_22EEA659C();
        }

        if (v5)
        {
          sub_22EEA659C();
        }

        if (([v3 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 3;
      }

      else if (v4)
      {
        if (v5)
        {
          sub_22EEA659C();
        }

        if (([v4 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 1;
      }

      else
      {
        if (!v5)
        {
          tailspin_config_free(v2);
          v2 = 0;
LABEL_80:

          goto LABEL_81;
        }

        if (([v5 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 2;
      }

      *(v2 + 2) = v7;
      v18 = [v0 objectForKeyedSubscript:@"Enabled"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2[8360] = [v18 BOOLValue];
          *v2 |= 0x80uLL;
          v19 = [v0 objectForKeyedSubscript:@"EnabledModifier"];
          v20 = v19;
          if (v19)
          {
            [v19 UTF8String];
            __strlcpy_chk();
          }
        }
      }

      v62 = v18;
      v21 = [v0 objectForKeyedSubscript:@"KDebug"];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:@"BufferSizeMegabytes"];
        if (v23)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1030) = [v23 unsignedLongLongValue];
            *v2 |= 2uLL;
            v24 = [v22 objectForKeyedSubscript:@"BufferSizeModifier"];
            v25 = v24;
            if (v24)
            {
              [v24 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v26 = [v22 objectForKeyedSubscript:@"FilterDescriptor"];
        if (v26)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v26 UTF8String])
            {
              [v26 UTF8String];
              if (!trace_parse_filter())
              {
                memcpy(v2 + 12, __src, 0x2000uLL);
                *v2 |= 1uLL;
                v27 = [v22 objectForKeyedSubscript:@"FilterDescriptorModifier"];
                v28 = v27;
                if (v27)
                {
                  [v27 UTF8String];
                  __strlcpy_chk();
                }
              }
            }
          }
        }
      }

      v29 = [v0 objectForKeyedSubscript:@"Sampling"];
      v30 = v29;
      if (v29)
      {
        v60 = v6;
        v31 = [v29 objectForKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];
        if (v31)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1040) = [v31 unsignedLongLongValue];
            *v2 |= 0x10uLL;
            v32 = [v30 objectForKeyedSubscript:@"OnCoreSamplingPeriodModifier"];
            v33 = v32;
            if (v32)
            {
              [v32 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v61 = v4;
        v34 = [v30 objectForKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];
        if (v34)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1035) = [v34 unsignedLongLongValue];
            *v2 |= 8uLL;
            v35 = [v30 objectForKeyedSubscript:@"FullSystemSamplingPeriodModifier"];
            v36 = v35;
            if (v35)
            {
              [v35 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v37 = [v30 objectForKeyedSubscript:@"IsCswitchSamplingEnabled"];
        if (v37)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFE | [v37 BOOLValue];
            *v2 |= 0x20uLL;
            v38 = [v30 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v39 = v38;
            if (v38)
            {
              [v38 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v40 = [v30 objectForKeyedSubscript:@"IsSyscallSamplingEnabled"];
        if (v40)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v40 BOOLValue])
            {
              v41 = 2;
            }

            else
            {
              v41 = 0;
            }

            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFD | v41;
            *v2 |= 0x20uLL;
            v42 = [v30 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v43 = v42;
            if (v42)
            {
              [v42 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v44 = [v30 objectForKeyedSubscript:@"IsVMFaultSamplingEnabled"];
        if (v44)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = v3;
            if ([v44 BOOLValue])
            {
              v45 = 4;
            }

            else
            {
              v45 = 0;
            }

            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFB | v45;
            *v2 |= 0x20uLL;
            v46 = [v30 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v47 = v46;
            if (v46)
            {
              [v46 UTF8String];
              __strlcpy_chk();
            }

            v3 = v59;
          }
        }

        v6 = v60;
        v4 = v61;
      }

      v48 = [v0 objectForKeyedSubscript:@"CPUTrace"];
      v49 = v48;
      if (v48)
      {
        v50 = [v48 objectForKeyedSubscript:@"CPUTraceEnabled"];
        if (v50)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2[8432] = [v50 BOOLValue];
            *v2 |= 0x40uLL;
            v51 = [v49 objectForKeyedSubscript:@"CPUTraceEnabledModifier"];
            v52 = v51;
            if (v51)
            {
              v53 = v3;
              v54 = v6;
              v55 = v53;
              v56 = [v51 UTF8String];
              v57 = v55;
              v6 = v54;
              v3 = v57;
              strlcpy(v2 + 8433, v56, 0x20uLL);
            }
          }
        }
      }

      if (!*v2)
      {
        sub_22EEA659C();
      }

      goto LABEL_80;
    }

    v8 = __error();
    v9 = *v8;
    v10 = sub_22EE82CE0(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6564(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v2 = 0;
    *__error() = v9;
  }

  else
  {
    v2 = 0;
  }

LABEL_81:

  return v2;
}

_DWORD *tailspin_config_create_with_default_config()
{
  v0 = malloc_type_calloc(1uLL, 0x2118uLL, 0x10000409BDBFF31uLL);
  if (!v0)
  {
    sub_22EEA659C();
  }

  v2 = v0;
  v3 = (v0 + 2048);
  *v0 = 0;
  v0[2] = 0;
  *(v0 + 8360) = tailspin_enabled_get_default(v0, v1);
  *(v2 + 1030) = tailspin_buffer_size_get_default();
  v4 = tailspin_kdbg_filter_get_default();
  memcpy(v2 + 3, v4, 0x2000uLL);
  *(v2 + 1035) = tailspin_full_sampling_period_get_default();
  *(v2 + 1040) = tailspin_oncore_sampling_period_get_default();
  v2[2099] = tailspin_sampling_options_get_default();
  v3[240] = tailspin_cputrace_enabled_get_default();
  return v2;
}

uint64_t tailspin_enabled_get_default(uint64_t a1, uint64_t a2)
{
  if (qword_280B25F60 != -1)
  {
    sub_22EE8504C();
  }

  return byte_280B25F58;
}

int *sub_22EE8484C(uint64_t a1, char *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = open(a2, 0);
  if (v4 == -1)
  {
    v17 = __error();
    v18 = *v17;
    v19 = sub_22EE82CE0(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA78D0();
    }

    goto LABEL_34;
  }

  v5 = v4;
  memset(&v45, 0, sizeof(v45));
  if (!fstat(v4, &v45))
  {
    v20 = MEMORY[0x277D85FA0];
    if (((*MEMORY[0x277D85FA0] + 0x7FFFFFFLL) & -*MEMORY[0x277D85FA0]) != 0x8000000)
    {
      sub_22EEA7898(*MEMORY[0x277D85FA0], v6, v7, v8, v9, v10, v11, v12);
    }

    v43 = a2;
    st_size = v45.st_size;
    if (v45.st_size)
    {
      v44 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = st_size - v23;
        if (v24 >= 0x8000000)
        {
          v24 = 0x8000000;
        }

        v25 = (v24 + *v20 - 1) & -*v20;
        v26 = mmap(0, v25, 1, 1, v5, v23);
        if (v26 == -1)
        {
          v31 = __error();
          v32 = *v31;
          v33 = sub_22EE82CE0(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v40 = *__error();
            *buf = 134218754;
            v47 = v23;
            v48 = 2048;
            v49 = v25;
            v50 = 2080;
            v51 = v43;
            v52 = 1024;
            v53 = v40;
            _os_log_error_impl(&dword_22EE81000, v33, OS_LOG_TYPE_ERROR, "mmap of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
          }

          *__error() = v32;
        }

        else
        {
          v27 = v26;
          if (mincore(v26, v25, *(a1 + 48)))
          {
            v28 = __error();
            v29 = *v28;
            v30 = sub_22EE82CE0(v28);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v39 = *__error();
              *buf = 134218754;
              v47 = v23;
              v48 = 2048;
              v49 = v25;
              v50 = 2080;
              v51 = v43;
              v52 = 1024;
              v53 = v39;
              _os_log_error_impl(&dword_22EE81000, v30, OS_LOG_TYPE_ERROR, "mincore of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
            }

            *__error() = v29;
            munmap(v27, v25);
          }

          else
          {
            if (munmap(v27, v25))
            {
              v34 = __error();
              v35 = *v34;
              v36 = sub_22EE82CE0(v34);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v41 = *__error();
                *buf = 134218754;
                v47 = v23;
                v48 = 2048;
                v49 = v25;
                v50 = 2080;
                v51 = v43;
                v52 = 1024;
                v53 = v41;
                _os_log_error_impl(&dword_22EE81000, v36, OS_LOG_TYPE_ERROR, "munmap of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
              }

              *__error() = v35;
            }

            v37 = v25 / *v20;
            if (*v20 <= v25)
            {
              v38 = 0;
              do
              {
                v22 += *(*(a1 + 48) + v38++) & 1;
              }

              while (v38 < v37);
            }

            v44 += v37;
          }
        }

        v23 += 0x8000000;
        st_size = v45.st_size;
      }

      while (v23 < v45.st_size);
    }

    else
    {
      v22 = 0;
      v44 = 0;
    }

    close(v5);
    *(*(*(a1 + 32) + 8) + 24) += v22;
    *(*(*(a1 + 40) + 8) + 24) += v44;
    v42 = __error();
    v18 = *v42;
    v19 = sub_22EE82CE0(v42);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v47 = v43;
      v48 = 2048;
      v49 = v22;
      v50 = 2048;
      v51 = v44;
      _os_log_debug_impl(&dword_22EE81000, v19, OS_LOG_TYPE_DEBUG, "shared cache file %s has %llu/%llu pages resident", buf, 0x20u);
    }

LABEL_34:

    result = __error();
    *result = v18;
    return result;
  }

  v13 = __error();
  v14 = *v13;
  v15 = sub_22EE82CE0(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA7814();
  }

  *__error() = v14;
  return close(v5);
}

void sub_22EE84D10()
{
  v41 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v1 = qword_27DA9CE98;
    qword_27DA9CE98 = v0;

    v2 = [MEMORY[0x277D08410] shared];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v2 domains];
    v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v26)
    {
      v25 = *v36;
      do
      {
        v3 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v3;
          v4 = *(*(&v35 + 1) + 8 * v3);
          context = objc_autoreleasePoolPush();
          v5 = [v2 featuresForDomain:v4];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v29 = v5;
          v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v32;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v32 != v8)
                {
                  objc_enumerationMutation(v29);
                }

                v10 = *(*(&v31 + 1) + 8 * i);
                v11 = [v2 stateForFeature:v10 domain:v4 level:4];
                if (v11)
                {
                  v12 = [v2 defaultStateForFeature:v10 domain:v4];
                  v13 = v12;
                  if (!v12 || (v14 = [v12 value], v14 != objc_msgSend(v11, "value")) || is_apple_internal_setting() && objc_msgSend(v11, "value") == 1 && objc_msgSend(v10, "isEqualToString:", @"Solarium") && ((objc_msgSend(v4, "isEqualToString:", @"SwiftUI") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"IconServices")))
                  {
                    v15 = [v11 value];
                    v16 = MEMORY[0x277CBEC28];
                    if (v15 == 1)
                    {
                      v16 = MEMORY[0x277CBEC38];
                    }

                    v30 = v16;
                    v17 = v7;
                    v18 = v8;
                    v19 = v2;
                    v20 = qword_27DA9CE98;
                    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", v4, v10];
                    v22 = v20;
                    v2 = v19;
                    v8 = v18;
                    v7 = v17;
                    [v22 setObject:v30 forKeyedSubscript:v21];
                  }
                }
              }

              v7 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v7);
          }

          objc_autoreleasePoolPop(context);
          v3 = v28 + 1;
        }

        while (v28 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v26);
    }

    if (![qword_27DA9CE98 count])
    {
      v23 = qword_27DA9CE98;
      qword_27DA9CE98 = 0;
    }

    [v2 invalidateCache];
  }
}

void sub_22EE85060()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1 || (os_variant_is_darwinos() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (qword_280B25F80 != -1)
  {
    sub_22EE852D4();
  }

  if (byte_280B25F88 == 1)
  {
    v0 = (byte_27DA9CEC0 & 1) == 0;
  }

  else
  {
LABEL_9:
    v0 = 0;
  }

  byte_280B25F58 = v0;
}

void sub_22EE85108()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7BBC();
    }

LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQProductType", v6, 2u);
    }

    v4 = MGGetStringAnswer();
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7B34();
    }

    goto LABEL_11;
  }

  if (![v3 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7AEC();
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_15:
  if ([v4 containsString:@"iPhone"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPad") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPod") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"Watch") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"AppleTV"))
  {
    v5 = &byte_280B25F91;
LABEL_21:
    *v5 = 1;
    goto LABEL_22;
  }

LABEL_23:
  if ((byte_280B25F91 & 1) == 0 && MGCopyAnswer())
  {
    byte_280B25F91 = 1;
    v5 = &byte_27DA9CEC0;
    goto LABEL_21;
  }

LABEL_22:

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_22EE852E8()
{
  result = os_variant_has_internal_diagnostics();
  byte_280B25F88 = result;
  return result;
}

void sub_22EE85324()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (qword_280B25F78 != -1)
  {
    sub_22EE85310();
  }

  v0 = vcvtms_u32_f32(*&dword_280B23E00 * 25.0);
  if (*&dword_280B23E00 == 1.0)
  {
    v0 = 25;
  }

  qword_280B25F68 = v0;
}

uint64_t tailspin_buffer_size_get_default()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1)
  {
    return 0;
  }

  if (qword_280B25F70 != -1)
  {
    sub_22EE853F8();
  }

  return qword_280B25F68;
}

void sub_22EE8540C()
{
  v0 = os_log_create("com.apple.tailspin", "library");
  v1 = qword_280B25FA0;
  qword_280B25FA0 = v0;

  v2 = qword_280B25FA0;
  if (!v2)
  {
    sub_22EEA659C();
  }
}

size_t set_config_field_modifier(size_t result, const char *a2)
{
  *result = 0u;
  *(result + 16) = 0u;
  if (a2)
  {
    return strlcpy(result, a2, 0x20uLL);
  }

  return result;
}

void sub_22EE85484(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x2318F9DB0]();
  v4 = *(a1 + 32);
  if (v3 == MEMORY[0x277D86468])
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = xpc_dictionary_get_BOOL(xdict, "tailspin_succeeded");
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  (*(v4 + 16))(v4, v5);
LABEL_7:
}

int *sub_22EE85528()
{
  v34 = *MEMORY[0x277D85DE8];
  __sizep = 0;
  __bufp = 0;
  v0 = __error();
  v1 = *v0;
  v2 = sub_22EE82CE0(v0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_22EE8584C();
  }

  *__error() = v1;
  if (ktrace_config_create_current())
  {
    v3 = open_memstream(&__bufp, &__sizep);
    if (!v3)
    {
      v13 = __error();
      v14 = *v13;
      v15 = sub_22EE82CE0(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        sub_22EEA82BC(v16, buf);
      }

      *__error() = v14;
      return ktrace_config_destroy();
    }

    if (ktrace_config_print_description())
    {
      v4 = __error();
      v5 = *v4;
      v6 = sub_22EE82CE0(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        sub_22EEA8238(v7, buf);
      }

      *__error() = v5;
      fclose(v3);
LABEL_9:
      if (__bufp)
      {
        free(__bufp);
      }

      return ktrace_config_destroy();
    }

    fclose(v3);
    v17 = __sizep;
    if (!__sizep)
    {
      v27 = __error();
      v28 = *v27;
      v29 = sub_22EE82CE0(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8280();
      }

      *__error() = v28;
      goto LABEL_9;
    }

    v18 = 1000;
    while (1)
    {
      if (v18 >= v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = __bufp[v18];
        __bufp[v18] = 0;
      }

      v20 = __error();
      v21 = *v20;
      v22 = sub_22EE82CE0(v20);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v18 == 1000)
      {
        if (v23)
        {
          *buf = 136446210;
          v33 = __bufp;
          v24 = v22;
          v25 = "Current system config = \n%{public}s";
LABEL_34:
          _os_log_error_impl(&dword_22EE81000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
        }
      }

      else if (v23)
      {
        *buf = 136446210;
        v33 = &__bufp[v18 - 1000];
        v24 = v22;
        v25 = "Current system config = (continued)\n%{public}s";
        goto LABEL_34;
      }

      *__error() = v21;
      v17 = __sizep;
      if (v18 < __sizep)
      {
        __bufp[v18] = v19;
        v17 = __sizep;
      }

      v26 = v18 >= v17;
      v18 += 1000;
      if (v26)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = __error();
  v9 = *v8;
  v10 = sub_22EE82CE0(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = __error();
    sub_22EEA8304(v11, buf);
  }

  result = __error();
  *result = v9;
  return result;
}

void sub_22EE8584C()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EE858AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t sub_22EE858E4()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.memsize", &v3, &v2, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v3 < 1;
  }

  if (!v1 && (v3 >> 20) >= 1901)
  {
    dword_280B23E00 = 0x40000000;
  }

  return result;
}

void *tailspin_kdbg_filter_get_default()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 == 1 && qword_280B23E28[0] != -1)
  {
    sub_22EE85CD0();
  }

  return &unk_280B23E3C;
}

void sub_22EE859A8()
{
  if (trace_parse_filter())
  {
    sub_22EEA659C();
  }

  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  byte_280B243A4 &= ~0x40u;
  byte_280B24476 &= ~2u;
}

uint64_t sub_22EE85A10()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1)
  {
    return 0;
  }

  if (qword_280B25F50 != -1)
  {
    sub_22EE85ADC();
  }

  if (byte_280B25F48)
  {
    return 10000000;
  }

  else
  {
    return 0;
  }
}

unint64_t tailspin_full_sampling_period_get_default()
{
  v0 = sub_22EE85A10();
  if (v0)
  {
    if (qword_280B23E20 != -1)
    {
      sub_22EE85AF0();
    }

    if (v0 < qword_280B23E18)
    {
      sub_22EEA659C();
    }
  }

  return v0;
}

uint64_t sub_22EE85B14()
{
  v4 = 8;
  result = sysctlbyname("kperf.limits.timer_min_bg_pet_period_ns", &qword_280B23E18, &v4, 0, 0);
  if (result)
  {
    v1 = __error();
    v2 = *v1;
    v3 = sub_22EE82CE0(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7AA8(v3);
    }

    *__error() = v2;
    result = sub_22EE85A10();
    qword_280B23E18 = result;
  }

  return result;
}

unint64_t tailspin_oncore_sampling_period_get_default()
{
  v0 = sub_22EE85C00();
  if (v0)
  {
    if (qword_27DA9CEB8 != -1)
    {
      sub_22EEA7A50();
    }

    if (v0 < qword_27DA9CEB0)
    {
      sub_22EEA659C();
    }
  }

  return v0;
}

uint64_t sub_22EE85C00()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 == 1 && qword_280B23E10 != -1)
  {
    sub_22EE85CAC();
  }

  if (byte_280B23E08)
  {
    return 50000000;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22EE85C6C()
{
  byte_280B23E08 = 1;
  result = tailspin_full_sampling_period_get_default();
  if (result)
  {
    if (byte_280B23E08 == 1)
    {
      byte_280B23E08 = 0;
    }
  }

  return result;
}

id tailspin_compress_file()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v56 = *MEMORY[0x277D85DE8];
  v3 = v0;
  v4 = [v3 stringByAppendingString:@".tgz"];
  v5 = [v4 UTF8String];
  v6 = open(v5, 2562, 432);
  if (v6 < 0)
  {
    v11 = __error();
    v12 = *v11;
    v13 = sub_22EE82CE0(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6424();
    }

    *__error() = v12;
LABEL_20:
    if (v6 != -1)
    {
      close(v6);
    }

LABEL_22:
    if (unlink(v5) && *__error() != 2)
    {
      v18 = __error();
      v19 = *v18;
      v20 = sub_22EE82CE0(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA64A8();
      }

      v17 = 0;
      *__error() = v19;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  v7 = archive_write_new();
  if (archive_write_add_filter_gzip())
  {
    v8 = __error();
    v9 = *v8;
    v10 = sub_22EE82CE0(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5DA4();
    }

LABEL_17:

    *__error() = v9;
LABEL_18:
    if (v7)
    {
      archive_write_close();
      archive_write_free();
    }

    goto LABEL_20;
  }

  if (archive_write_set_options())
  {
    v14 = __error();
    v9 = *v14;
    v10 = sub_22EE82CE0(v14);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5E30();
    }

    goto LABEL_17;
  }

  if (archive_write_set_format_pax())
  {
    v15 = __error();
    v9 = *v15;
    v10 = sub_22EE82CE0(v15);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5EBC();
    }

    goto LABEL_17;
  }

  if (archive_write_open_fd())
  {
    v16 = __error();
    v9 = *v16;
    v10 = sub_22EE82CE0(v16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5F48();
    }

    goto LABEL_17;
  }

  v22 = archive_entry_new();
  memset(&v54, 0, sizeof(v54));
  if (stat([v3 UTF8String], &v54))
  {
    v23 = __error();
    v24 = *v23;
    v25 = sub_22EE82CE0(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5FD4();
    }

    *__error() = v24;
LABEL_48:
    if (v22)
    {
      archive_entry_free();
    }

    goto LABEL_18;
  }

  archive_entry_copy_stat();
  v26 = [v3 lastPathComponent];
  [v26 UTF8String];
  archive_entry_set_pathname();

  archive_entry_set_filetype();
  archive_entry_set_perm();
  if (archive_write_header())
  {
    v27 = __error();
    v28 = *v27;
    v29 = sub_22EE82CE0(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6058();
    }

    *__error() = v28;
    goto LABEL_48;
  }

  v30 = open([v3 UTF8String], 0);
  if (v30 < 0)
  {
    v35 = __error();
    v33 = *v35;
    v34 = sub_22EE82CE0(v35);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA63A0();
    }

    goto LABEL_46;
  }

  while (1)
  {
    v31 = read(v30, v55, 0x2800uLL);
    if (v31 < 1)
    {
      break;
    }

    if (archive_write_data() != v31)
    {
      v32 = __error();
      v33 = *v32;
      v34 = sub_22EE82CE0(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA62F0();
      }

      goto LABEL_46;
    }
  }

  if (v31 < 0 && *__error() != 4)
  {
    v42 = __error();
    v33 = *v42;
    v34 = sub_22EE82CE0(v42);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA60E4();
    }

LABEL_46:

    *__error() = v33;
    if (v30 != -1)
    {
      close(v30);
    }

    goto LABEL_48;
  }

  archive_entry_free();
  close(v30);
  if (archive_write_close())
  {
    v36 = __error();
    v9 = *v36;
    v10 = sub_22EE82CE0(v36);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6168();
    }

    goto LABEL_17;
  }

  v37 = archive_write_free();
  if (v37)
  {
    v38 = v37;
    v39 = __error();
    v40 = *v39;
    v41 = sub_22EE82CE0(v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA61F4(v38, v41);
    }

    *__error() = v40;
    goto LABEL_20;
  }

  close(v6);
  v53 = 0;
  v43 = [MEMORY[0x277CCAA00] defaultManager];
  v44 = [v43 fileExistsAtPath:v4 isDirectory:&v53];
  v45 = v53;

  if (!v44 || (v45 & 1) != 0)
  {
    goto LABEL_22;
  }

  v46 = __error();
  v47 = *v46;
  v48 = sub_22EE82CE0(v46);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EE81000, v48, OS_LOG_TYPE_INFO, "Successfully compressed file", buf, 2u);
  }

  *__error() = v47;
  if (v2 && unlink([v3 UTF8String]))
  {
    v49 = __error();
    v50 = *v49;
    v51 = sub_22EE82CE0(v49);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA626C();
    }

    *__error() = v50;
  }

  v17 = v4;
LABEL_28:

  return v17;
}

uint64_t sub_22EE863C0()
{

  return MEMORY[0x2821F6FE0](v0);
}

uint64_t tailspin_parse_stackshot_chunk(uint64_t *a1, unint64_t a2, uint64_t **a3, void *a4)
{
  result = 22;
  if (a1 && a2 >= 0x10)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = a1 + a2;
    v9 = *a1;
    v7 = a1 + 2;
    v8 = v9;
    if (v7 + v9 <= v6)
    {
      result = 0;
      *a3 = v7;
      *a4 = v8;
    }
  }

  return result;
}

void *get_tailspin_tasking_config()
{
  MEMORY[0x28223BE20]();
  v28 = *MEMORY[0x277D85DE8];
  v0 = tailspin_config_create_with_default_config();
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 2048;
    v3 = OSAGetDATaskingValue();
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v2 + 168) = [v3 BOOLValue];
        *v1 |= 0x80uLL;
      }
    }

    v26 = v2;
    v4 = OSAGetDATaskingValue();
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1030] = [v4 unsignedLongLongValue];
        *v1 |= 2uLL;
      }
    }

    v5 = OSAGetDATaskingValue();
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 UTF8String])
        {
          [v5 UTF8String];
          if (!trace_parse_filter())
          {
            memcpy(v1 + 12, __src, 0x2000uLL);
            *v1 |= 1uLL;
          }
        }
      }
    }

    v6 = OSAGetDATaskingValue();
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1040] = [v6 unsignedLongLongValue];
        *v1 |= 0x10uLL;
      }
    }

    v7 = OSAGetDATaskingValue();
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1035] = [v7 unsignedLongLongValue];
        *v1 |= 8uLL;
      }
    }

    v8 = OSAGetDATaskingValue();
    v9 = OSAGetDATaskingValue();
    v10 = OSAGetDATaskingValue();
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFE | [v8 BOOLValue];
        *v1 |= 0x20uLL;
      }
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v9 BOOLValue])
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFD | v11;
        *v1 |= 0x20uLL;
      }
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 BOOLValue])
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFB | v12;
        *v1 |= 0x20uLL;
      }
    }

    v13 = OSAGetDATaskingValue();
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(v26 + 240) = [v13 BOOLValue];
      *v1 |= 0x40uLL;
      *(v1 + 2) = 1;
    }

    else
    {
      v14 = *v1;
      *(v1 + 2) = 1;
      if (!v14)
      {
        tailspin_config_free(v1);
        v1 = 0;
      }
    }
  }

  else
  {
    v15 = __error();
    v16 = *v15;
    v17 = sub_22EE82CE0(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA652C(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v1 = 0;
    *__error() = v16;
  }

  return v1;
}

char *get_tailspin_profile_config()
{
  MEMORY[0x28223BE20]();
  v30 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.tailspin.plist"];
  v1 = v0;
  if (v0 && [v0 count])
  {
    v2 = tailspin_config_create_with_default_config();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 objectForKeyedSubscript:@"Enabled"];
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3[8360] = [v4 BOOLValue];
          *v3 |= 0x80uLL;
        }
      }

      v5 = [v1 objectForKeyedSubscript:@"KDebug"];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:@"BufferSizeMegabytes"];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1030) = [v7 unsignedLongLongValue];
            *v3 |= 2uLL;
          }
        }

        v8 = [v6 objectForKeyedSubscript:@"FilterDescriptor"];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 UTF8String])
            {
              [v8 UTF8String];
              if (!trace_parse_filter())
              {
                memcpy(v3 + 12, __src, 0x2000uLL);
                *v3 |= 1uLL;
              }
            }
          }
        }
      }

      v9 = [v1 objectForKeyedSubscript:@"Sampling"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1040) = [v11 unsignedLongLongValue];
            *v3 |= 0x10uLL;
          }
        }

        v12 = [v10 objectForKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1035) = [v12 unsignedLongLongValue];
            *v3 |= 8uLL;
          }
        }

        v13 = [v10 objectForKeyedSubscript:@"IsCswitchSamplingEnabled"];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFE | [v13 BOOLValue];
            *v3 |= 0x20uLL;
          }
        }

        v14 = [v10 objectForKeyedSubscript:@"IsSyscallSamplingEnabled"];
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 BOOLValue])
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }

            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFD | v15;
            *v3 |= 0x20uLL;
          }
        }

        v16 = [v10 objectForKeyedSubscript:@"IsVMFaultSamplingEnabled"];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v16 BOOLValue])
            {
              v17 = 4;
            }

            else
            {
              v17 = 0;
            }

            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFB | v17;
            *v3 |= 0x20uLL;
          }
        }
      }

      *(v3 + 2) = 3;
      if (!*v3)
      {
        tailspin_config_free(v3);
        v3 = 0;
      }
    }

    else
    {
      v19 = __error();
      v20 = *v19;
      v21 = sub_22EE82CE0(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA6564(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v3 = 0;
      *__error() = v20;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_22EE86CC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_22EE86CE0(void *a1, void *a2)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_22EE87028;
  v16[4] = sub_22EE87038;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_22EE87028;
  v14[4] = sub_22EE87038;
  v15 = 0;
  v2 = IOServiceMatching("AGXAccelerator");
  v3 = IOReportCopyChannelsForDrivers();
  CFRelease(v2);
  if (v3)
  {
    if (IOReportGetChannelCount())
    {
      Subscription = IOReportCreateSubscription();
      v11 = __error();
      v12 = *v11;
      v13 = sub_22EE82CE0(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA65B8();
      }

      *__error() = v12;
    }

    else
    {
      v8 = __error();
      v9 = *v8;
      v10 = sub_22EE82CE0(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_22EEA6698();
      }

      Subscription = 0;
      *__error() = v9;
    }

    if (Subscription)
    {
      CFRelease(Subscription);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = __error();
    v6 = *v5;
    v7 = sub_22EE82CE0(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA66D4();
    }

    *__error() = v6;
  }

  _Block_object_dispose(v14, 8);

  _Block_object_dispose(v16, 8);
}

void sub_22EE86FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE87028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22EE87040(uint64_t a1, uint64_t a2)
{
  Group = IOReportChannelGetGroup();
  if (IOReportChannelGetFormat() == 1 && CFStringCompare(Group, @"Internal Statistics", 0) == kCFCompareEqualTo)
  {
    ChannelName = IOReportChannelGetChannelName();
    if (CFEqual(ChannelName, @"GPU Restart Count"))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v6 = 32;
LABEL_7:
      v7 = *(*(a1 + v6) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v5;

      goto LABEL_8;
    }

    if (CFEqual(ChannelName, @"Last GPU Restart"))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportSimpleGetIntegerValue()];
      v6 = 40;
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*(*(*(a1 + 32) + 8) + 40) && *(*(*(a1 + 40) + 8) + 40))
  {
    return 273;
  }

  else
  {
    return 0;
  }
}

uint64_t tailspin_write_metadata_chunk(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v238 = *MEMORY[0x277D85DE8];
  v210 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_22EEA659C();
  }

  context = v7;
  v217 = [MEMORY[0x277CBEB38] dictionary];
  if (a2)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v217 setObject:v8 forKeyedSubscript:@"TailspinDumpReason"];
  }

  if ((a4 & 0x80000000) == 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v217 setObject:v9 forKeyedSubscript:@"TailspinTargetPID"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:sysconf(57)];
  [v217 setObject:v10 forKeyedSubscript:@"ncpus"];

  v11 = _CFCopySupplementalVersionDictionary();
  if (v11)
  {
    v12 = v11;
    [v217 setObject:CFDictionaryGetValue(v11 forKeyedSubscript:{*MEMORY[0x277CBEC70]), @"osversion"}];
    [v217 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC78]), @"osproductname"}];
    [v217 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC88]), @"osproductversion"}];
    [v217 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC80]), @"osproductversionextra"}];
    CFRelease(v12);
  }

  v13 = MobileGestalt_get_current_device();
  if (v13)
  {
    v14 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
    v15 = v14;
    if (v14)
    {
      if ([v14 length])
      {
        v16 = v15;

        goto LABEL_22;
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6744();
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6788();
      }
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_22EEA6808();
    }
  }

  v22 = MEMORY[0x277D86220];
  v23 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQHWModelStr", &buf, 2u);
  }

  v16 = MGGetStringAnswer();
LABEL_22:
  [v217 setObject:v16 forKeyedSubscript:@"hw.model"];

  v24 = MobileGestalt_get_current_device();
  if (v24)
  {
    v25 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
    v26 = v25;
    if (v25)
    {
      if ([v25 length])
      {
        v27 = v26;

        goto LABEL_36;
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6888();
      }
    }

    else
    {
      v29 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA68CC();
      }
    }
  }

  else
  {
    v24 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_22EEA6950();
    }
  }

  v33 = MEMORY[0x277D86220];
  v34 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQProductType", &buf, 2u);
  }

  v27 = MGGetStringAnswer();
LABEL_36:
  [v217 setObject:v27 forKeyedSubscript:@"SubProductType"];

  v226 = 0;
  v225 = 4;
  if (!sysctlbyname("vm.pagesize", &v226, &v225, 0, 0))
  {
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v226];
    [v217 setObject:v35 forKeyedSubscript:@"vm.pagesize"];
  }

  v224 = 0;
  v223 = 4;
  if (!sysctlbyname("hw.pagesize", &v224, &v223, 0, 0))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v224];
    [v217 setObject:v36 forKeyedSubscript:@"hw.pagesize"];
  }

  v222 = 0;
  v221 = 4;
  if (!sysctlbyname("hw.memsize", &v222, &v221, 0, 0))
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v222];
    [v217 setObject:v37 forKeyedSubscript:@"hw.memsize"];
  }

  v38 = IOServiceMatching("AGXAccelerator");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v38);
  v40 = MatchingService;
  if (MatchingService && (CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"AGXTraceCodeVersion", *MEMORY[0x277CBECE8], 0), IOObjectRelease(v40), CFProperty))
  {
    [v217 setObject:CFProperty forKeyedSubscript:@"AGXVersion"];
  }

  else
  {
    CFProperty = 0;
  }

  [v217 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsKPerfPETMode"];
  v215 = objc_alloc_init(MEMORY[0x277CBEB38]);
  AdvisoryDetailed = IOCopySystemLoadAdvisoryDetailed();
  if (AdvisoryDetailed)
  {
    v41 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"UserLevel"];
    v42 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"BatteryLevel"];
    v43 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"CombinedLevel"];
    if (v41)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [v41 copy];
        [v215 setObject:v44 forKeyedSubscript:@"User"];
      }
    }

    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v42 copy];
        [v215 setObject:v45 forKeyedSubscript:@"Battery"];
      }
    }

    if (v43)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v43 copy];
        [v215 setObject:v46 forKeyedSubscript:@"Combined"];
      }
    }
  }

  out_token[0] = 0;
  if (!notify_register_check(*MEMORY[0x277D85E48], out_token))
  {
    *&buf.f_bsize = 0;
    v47 = notify_get_state(out_token[0], &buf.f_bsize) == 0;
    v48 = *&buf.f_bsize;
    notify_cancel(out_token[0]);
    if (v47)
    {
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48];
      [v215 setObject:v49 forKeyedSubscript:@"ThermalPressure"];
    }
  }

  if ([v215 count])
  {
    [v217 setObject:v215 forKeyedSubscript:@"SystemAdvisoryLevels"];
  }

  if (v210)
  {
    [v217 setObject:v210 forKeyedSubscript:@"TailspinConfiguration"];
  }

  v50 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v50 && ([MEMORY[0x277CBEBC0] fileURLWithPath:v50 isDirectory:1], v211 = objc_claimAutoreleasedReturnValue(), v50, v211))
  {
    memset(&buf, 0, 512);
    v51 = v211;
    if (!statfs([v211 fileSystemRepresentation], &buf))
    {
      f_bsize = buf.f_bsize;
      f_blocks = buf.f_blocks;
      f_bavail = buf.f_bavail;
      v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_blocks * f_bsize];
      [v55 setObject:v56 forKeyedSubscript:@"VolumeTotal"];

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_bavail * f_bsize];
      [v55 setObject:v57 forKeyedSubscript:@"VolumeAvailable"];

      *&v236[8] = 0;
      *v236 = 0;
      out_token[3] = 0;
      *&v231 = 0;
      *out_token = 5;
      out_token[2] = 32;
      v58 = v211;
      if (!getattrlist([v211 fileSystemRepresentation], out_token, v236, 0xCuLL, 1u))
      {
        v234 = 0;
        v59 = v211;
        if (!fsctl([v211 fileSystemRepresentation], 0x4004681BuLL, &v234, 0))
        {
          v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v236[4] * v234];
          [v55 setObject:v60 forKeyedSubscript:@"VolumeLowSpaceThreshold"];
        }
      }

      [v217 setObject:v55 forKeyedSubscript:@"HomeVolumeSpace"];
    }
  }

  else
  {
    v211 = 0;
  }

  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hostName = *MEMORY[0x277CBF010];
  v213 = CFPreferencesCopyValue(@"KeyboardsCurrentAndNext", @"com.apple.keyboard.preferences", @"mobile", *MEMORY[0x277CBF010]);
  if (v213 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v233 = 0u;
    v231 = 0u;
    v232 = 0u;
    *out_token = 0u;
    v62 = v213;
    v63 = [v62 countByEnumeratingWithState:out_token objects:&buf count:16];
    if (v63)
    {
      v64 = *v231;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v231 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*&out_token[2] + 8 * i);
          if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v67 = [v66 stringByReplacingOccurrencesOfString:@"@sw=" withString:@" "];
            v68 = [v67 stringByReplacingOccurrencesOfString:@"@hw=" withString:@" "];

            v69 = [v68 stringByReplacingOccurrencesOfString:@"hw=" withString:&stru_2843AA6A8];;

            v70 = [v69 stringByReplacingOccurrencesOfString:@"sw=" withString:&stru_2843AA6A8];;

            v71 = [v70 stringByReplacingOccurrencesOfString:@"Automatic" withString:&stru_2843AA6A8];

            v72 = __error();
            v73 = *v72;
            v74 = sub_22EE82CE0(v72);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *v236 = 138412546;
              *&v236[4] = v66;
              *&v236[12] = 2112;
              *&v236[14] = v71;
              _os_log_debug_impl(&dword_22EE81000, v74, OS_LOG_TYPE_DEBUG, "keyboard %@ -> %@", v236, 0x16u);
            }

            *__error() = v73;
            if (([v61 containsObject:v71] & 1) == 0)
            {
              [v61 addObject:v71];
            }
          }

          else
          {
            v75 = __error();
            v76 = *v75;
            v77 = sub_22EE82CE0(v75);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA69D4(&v227, v228, v77);
            }

            *__error() = v76;
          }
        }

        v63 = [v62 countByEnumeratingWithState:out_token objects:&buf count:16];
      }

      while (v63);
    }

    v212 = [v61 copy];
  }

  else
  {
    v78 = __error();
    v79 = *v78;
    v80 = sub_22EE82CE0(v78);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6A14();
    }

    v212 = 0;
    *__error() = v79;
  }

  if (v212)
  {
    [v217 setObject:v212 forKeyedSubscript:@"KeyboardLanguages"];
  }

  v81 = sub_22EE8A370();
  v82 = v81;
  if (!v81 || ![v81 count])
  {
    v86 = __error();
    v87 = *v86;
    v88 = sub_22EE82CE0(v86);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6AC0();
    }

    *__error() = v87;
    goto LABEL_106;
  }

  v83 = __error();
  v84 = *v83;
  v85 = sub_22EE82CE0(v83);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA6A50();
  }

  *__error() = v84;
  if ([v82 count] < 2)
  {
    v89 = MEMORY[0x277CBEA60];
    v90 = [v82 firstObject];
    v208 = [v89 arrayWithObject:v90];
  }

  else
  {
    v208 = [v82 subarrayWithRange:{0, 2}];
  }

  if (!v208)
  {
LABEL_106:
    v208 = 0;
    goto LABEL_110;
  }

  [v217 setObject:v208 forKeyedSubscript:@"PreferredLanguages"];
LABEL_110:
  v91 = sub_22EE8A370();
  v92 = MEMORY[0x277CBEAF8];
  v93 = [v91 firstObject];
  v94 = [v92 localeWithLocaleIdentifier:v93];
  v214 = [v94 objectForKey:*MEMORY[0x277CBE690]];

  v95 = __error();
  v96 = *v95;
  v97 = sub_22EE82CE0(v95);
  v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG);
  if (v214)
  {
    if (v98)
    {
      sub_22EEA6AFC();
    }

    *__error() = v96;
    v99 = v214;

    [v217 setObject:v99 forKeyedSubscript:@"CountryCode"];
  }

  else
  {
    if (v98)
    {
      sub_22EEA6B6C();
    }

    *__error() = v96;
  }

  v229 = 0;
  *out_token = 0;
  *v236 = 0;
  v234 = 0;
  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.num_vnodes", out_token, &buf.f_bsize, 0, 0))
  {
    v100 = __error();
    v101 = *v100;
    v102 = sub_22EE82CE0(v100);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6BA8();
    }

LABEL_129:

    v205 = 0;
    *__error() = v101;
    goto LABEL_130;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.free_vnodes", v236, &buf.f_bsize, 0, 0))
  {
    v103 = __error();
    v101 = *v103;
    v102 = sub_22EE82CE0(v103);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6C30();
    }

    goto LABEL_129;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.maxvnodes", &v234, &buf.f_bsize, 0, 0))
  {
    v104 = __error();
    v101 = *v104;
    v102 = sub_22EE82CE0(v104);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6CB8();
    }

    goto LABEL_129;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("vfs.vnstats.vn_dealloc_level", &v229, &buf.f_bsize, 0, 0))
  {
    v105 = __error();
    v101 = *v105;
    v102 = sub_22EE82CE0(v105);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6D40();
    }

    goto LABEL_129;
  }

  v199 = objc_alloc(MEMORY[0x277CBEAC0]);
  v200 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*out_token];
  v201 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v236];
  v202 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v234];
  v203 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v229];
  v205 = [v199 initWithObjectsAndKeys:{v200, @"NumVnodesAllocated", v201, @"NumVnodesFree", v202, @"NumVnodesMax", v203, @"VnodeDeallocLevel", 0}];

  if (v205)
  {
    [v217 setObject:v205 forKeyedSubscript:@"VnodeInfo"];
  }

  else
  {
    v205 = 0;
  }

LABEL_130:
  LODWORD(v234) = 0;
  if (!dyld_process_create_for_current_task())
  {
    v117 = __error();
    v118 = *v117;
    v119 = sub_22EE82CE0(v117);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6F28();
    }

    *__error() = v118;
    goto LABEL_146;
  }

  if (!dyld_process_snapshot_create_for_process())
  {
    v120 = __error();
    v121 = *v120;
    v122 = sub_22EE82CE0(v120);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6E94(&v234);
    }

    *__error() = v121;
    dyld_process_dispose();
    goto LABEL_146;
  }

  if (!dyld_process_snapshot_get_shared_cache())
  {
    v123 = __error();
    v124 = *v123;
    v125 = sub_22EE82CE0(v123);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6E58();
    }

    *__error() = v124;
    dyld_process_snapshot_dispose();
    dyld_process_dispose();
    goto LABEL_146;
  }

  *out_token = 0;
  *&out_token[2] = out_token;
  v231 = 0x2020000000uLL;
  *v236 = 0;
  *&v236[8] = v236;
  *&v236[16] = 0x2020000000;
  v237 = 0;
  v106 = MEMORY[0x277D85FA0];
  v107 = malloc_type_malloc(0x8000000uLL / *MEMORY[0x277D85FA0], 0x385D3CBDuLL);
  *&buf.f_bsize = MEMORY[0x277D85DD0];
  buf.f_blocks = 3221225472;
  buf.f_bfree = sub_22EE8484C;
  buf.f_bavail = &unk_278870E88;
  buf.f_ffree = v236;
  buf.f_fsid = v107;
  buf.f_files = out_token;
  dyld_shared_cache_for_each_file();
  v108 = __error();
  v109 = *v108;
  v110 = sub_22EE82CE0(v108);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA6DC8();
  }

  *__error() = v109;
  free(v107);
  dyld_process_snapshot_dispose();
  dyld_process_dispose();
  v111 = *(*&out_token[2] + 24);
  v112 = *v106;
  v113 = *(*&v236[8] + 24);
  v114 = objc_alloc(MEMORY[0x277CBEAC0]);
  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v112 * v111];
  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v113 * v112];
  v207 = [v114 initWithObjectsAndKeys:{v115, @"SharedCacheSizeResident", v116, @"SharedCacheSizeVirtual", 0}];

  _Block_object_dispose(v236, 8);
  _Block_object_dispose(out_token, 8);
  if (!v207)
  {
LABEL_146:
    v207 = 0;
    goto LABEL_147;
  }

  [v217 setObject:v207 forKeyedSubscript:@"SharedCacheInfo"];
LABEL_147:
  v126 = CFPreferencesCopyValue(@"HardwareKeyboardLastSeen", @"com.apple.keyboard.preferences", @"mobile", hostName);
  v127 = v126;
  v129 = 0;
  if (v126)
  {
    Value = CFBooleanGetValue(v126);
    CFRelease(v127);
    if (Value)
    {
      v129 = 1;
    }
  }

  v130 = [MEMORY[0x277CCABB0] numberWithBool:v129];
  [v217 setObject:v130 forKeyedSubscript:@"HardwareKeyboard"];

  if (qword_27DA9CE90 != -1)
  {
    sub_22EEA6FB8();
  }

  v131 = qword_27DA9CE98;
  if (v131)
  {
    [v217 setObject:v131 forKeyedSubscript:@"NonDefaultFeatureFlags"];
  }

  v132 = is_apple_internal_setting();
  v133 = [MEMORY[0x277CCABB0] numberWithBool:v132];
  [v217 setObject:v133 forKeyedSubscript:@"IsAppleInternal"];

  if (v132)
  {
    v134 = [MEMORY[0x277D36B80] automatedDeviceGroup];
    if ([v134 length])
    {
      v135 = v134;
      v136 = 0;
      v137 = v134;
    }

    else
    {
      v138 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", hostName);
      v139 = [v138 lowercaseString];

      if ([v139 containsString:@"carry"])
      {
        v136 = 1;
      }

      else
      {
        v136 = [v139 containsString:@"walkabout"];
      }

      v137 = 0;
    }

    v140 = v137;
    v141 = [MEMORY[0x277CCABB0] numberWithBool:v136];
    [v217 setObject:v141 forKeyedSubscript:@"IsInternalCarryDevice"];

    if (v140)
    {
      [v217 setObject:v140 forKeyedSubscript:@"AutomatedDeviceGroup"];
    }
  }

  if (objc_opt_class())
  {
    v142 = objc_alloc_init(MEMORY[0x277D036E0]);
    *v236 = 0;
    v143 = [v142 openAndReturnError:v236];
    v144 = *v236;
    v145 = v144;
    if (v143)
    {
      v234 = v144;
      v146 = [v142 allInstalledRootsAndReturnError:&v234];
      v147 = v234;

      v148 = objc_alloc_init(MEMORY[0x277CBEB40]);
      if (v146)
      {
        v233 = 0u;
        v231 = 0u;
        v232 = 0u;
        *out_token = 0u;
        v149 = v146;
        v150 = [v149 countByEnumeratingWithState:out_token objects:&buf count:16];
        if (v150)
        {
          v151 = *v231;
          do
          {
            for (j = 0; j != v150; ++j)
            {
              if (*v231 != v151)
              {
                objc_enumerationMutation(v149);
              }

              v153 = [*(*&out_token[2] + 8 * j) name];
              [v148 addObject:v153];
            }

            v150 = [v149 countByEnumeratingWithState:out_token objects:&buf count:16];
          }

          while (v150);
        }
      }

      v154 = [v142 closeAndReturnError:0];
      v155 = [v148 array];

      v145 = v147;
    }

    else
    {
      v156 = __error();
      v157 = *v156;
      v158 = sub_22EE82CE0(v156);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA6FE0();
      }

      v155 = 0;
      *__error() = v157;
    }
  }

  else
  {
    v155 = 0;
  }

  if ([v155 count])
  {
    [v217 setObject:v155 forKeyedSubscript:@"InstalledRootNames"];
    [v217 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsRootInstalled"];
  }

  else
  {
    *out_token = 0;
    *v236 = 8;
    v159 = sysctlbyname("kern.roots_installed", out_token, v236, 0, 0) == 0;
    v160 = __error();
    v161 = *v160;
    v162 = sub_22EE82CE0(v160);
    v163 = v162;
    if (v159)
    {
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 134217984;
        *&buf.f_iosize = *out_token;
        _os_log_impl(&dword_22EE81000, v163, OS_LOG_TYPE_DEFAULT, "Installed root info kern.roots_installed: %llu", &buf, 0xCu);
      }

      *__error() = v161;
      v164 = [MEMORY[0x277CCABB0] numberWithBool:*out_token != 0];
      [v217 setObject:v164 forKeyedSubscript:@"IsRootInstalled"];
    }

    else
    {
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA7050();
      }

      *__error() = v161;
    }
  }

  v165 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v166 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerd.lowpowermode.state"];
  v167 = [v166 objectForKey:@"state"];
  v168 = v167 == 0;

  if (v168)
  {
    v169 = 0;
  }

  else
  {
    v169 = [v166 BOOLForKey:@"state"];
  }

  v170 = [MEMORY[0x277CCABB0] numberWithBool:v169];
  [v165 setObject:v170 forKeyedSubscript:@"LowPowerMode"];

  v171 = [v166 objectForKey:@"stateChangeDate"];
  if (v171)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v172 = MEMORY[0x277CCABB0];
      [v171 timeIntervalSinceReferenceDate];
      v173 = [v172 numberWithDouble:?];
      [v165 setObject:v173 forKeyedSubscript:@"PowerModeTransitionTimestamp"];
    }
  }

  if (v165)
  {
    [v217 setObject:v165 forKeyedSubscript:@"MostRecentLowPowerModeTransition"];
  }

  if (sub_22EE8A4D8(0))
  {
    v174 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    *out_token = 0;
    *&out_token[2] = out_token;
    *&v231 = 0x2050000000;
    v175 = qword_27DA9CEA8;
    *(&v231 + 1) = qword_27DA9CEA8;
    if (!qword_27DA9CEA8)
    {
      *&buf.f_bsize = MEMORY[0x277D85DD0];
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_22EE8A61C;
      buf.f_bavail = &unk_278870EC8;
      buf.f_files = out_token;
      sub_22EE8A61C(&buf);
      v175 = *(*&out_token[2] + 24);
    }

    v176 = v175;
    _Block_object_dispose(out_token, 8);
    if (!v175)
    {
LABEL_219:

      goto LABEL_220;
    }

    v177 = [v175 sharedInstance];
    v178 = [v177 copyCurrentMitigationInfoForClientIdentifier:@"com.apple.pmmitigation.tailspin"];

    if (!v178)
    {
LABEL_217:
      v174 = v174;

      if (!v174)
      {
        goto LABEL_220;
      }

      [v217 setObject:v174 forKeyedSubscript:@"PowerManagementMitigation"];
      goto LABEL_219;
    }

    v179 = [v178 mitigationLevel];
    if (v179 <= 49)
    {
      if (!v179)
      {
        v180 = @"None";
        goto LABEL_216;
      }

      if (v179 == 20)
      {
        v180 = @"Low";
        goto LABEL_216;
      }
    }

    else
    {
      switch(v179)
      {
        case '2':
          v180 = @"Medium";
          goto LABEL_216;
        case 'F':
          v180 = @"High";
          goto LABEL_216;
        case 'd':
          v180 = @"Extreme";
LABEL_216:
          [v174 setObject:v180 forKeyedSubscript:@"PowerManagementMitigationLevel"];
          goto LABEL_217;
      }
    }

    v180 = @"Unknown";
    goto LABEL_216;
  }

LABEL_220:
  if (qword_27DA9CE88 != -1)
  {
    sub_22EEA70D8();
  }

  if (qword_27DA9CE80)
  {
    v181 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v217 setObject:v181 forKeyedSubscript:@"OSCryptexFileExtents"];
  }

  v219 = 0;
  v220 = 0;
  sub_22EE86CE0(&v220, &v219);
  v182 = v220;
  v183 = v219;
  if (v182)
  {
    [v217 setObject:v182 forKeyedSubscript:@"GPURestartCount"];
  }

  if (v183)
  {
    [v217 setObject:v183 forKeyedSubscript:@"GPURestartLastMachAbs"];
  }

  *&buf.f_bsize = 0;
  if (kpersona_find_by_type() == -1)
  {
    v184 = __error();
    v185 = *v184;
    v186 = sub_22EE82CE0(v184);
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7100();
    }

    *__error() = v185;
  }

  v187 = [MEMORY[0x277CCABB0] numberWithBool:*&buf.f_bsize != 0];
  [v217 setObject:v187 forKeyedSubscript:@"HasEnterprisePersona"];

  v218 = 0;
  v188 = [MEMORY[0x277CCAC58] dataWithPropertyList:v217 format:200 options:0 error:&v218];
  v189 = v218;
  if (v188)
  {
    v190 = v188;
    [v188 bytes];
    [v188 length];
    if (ktrace_file_append_chunk())
    {
      v191 = 0;
    }

    else
    {
      v195 = __error();
      v196 = *v195;
      v197 = sub_22EE82CE0(v195);
      if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA713C();
      }

      *__error() = v196;
      v191 = *__error();
    }
  }

  else
  {
    v192 = __error();
    v193 = *v192;
    v194 = sub_22EE82CE0(v192);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA71C8();
    }

    *__error() = v193;
    v191 = 22;
  }

  objc_autoreleasePoolPop(context);
  return v191;
}

void sub_22EE89048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE89084()
{
  v31 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D25710] sharedDataAccessor];
  v26 = 0;
  v1 = [v0 copyPathForPersonalizedData:11 error:&v26];
  v2 = v26;

  if (!v1)
  {
    v10 = __error();
    v11 = *v10;
    v12 = sub_22EE82CE0(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30.st_dev = 138412290;
      *&v30.st_mode = v2;
      _os_log_impl(&dword_22EE81000, v12, OS_LOG_TYPE_DEFAULT, "Unable to get path for MSUDA_CRYPTEX1_OS_CRYPTEX with error: (%@)", &v30, 0xCu);
    }

    goto LABEL_30;
  }

  v3 = [v1 UTF8String];
  if (v3 && *v3)
  {
    v4 = open(v3, 0, 0);
    if (v4 < 0)
    {
      v13 = __error();
      v14 = *v13;
      v15 = sub_22EE82CE0(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA743C();
      }

      v16 = __error();
      v9 = 0;
      *v16 = v14;
    }

    else
    {
      v5 = v4;
      memset(&v30, 0, sizeof(v30));
      if (fstat(v4, &v30))
      {
        v6 = __error();
        v7 = *v6;
        v8 = sub_22EE82CE0(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA723C();
        }
      }

      else
      {
        st_size = v30.st_size;
        if (v30.st_size)
        {
          v18 = 0;
          v19 = 0;
          v27 = 0;
          while (1)
          {
            v28 = st_size;
            v29 = v19;
            if (fcntl(v5, 65, &v27))
            {
              break;
            }

            if (!v28)
            {
              v24 = __error();
              v22 = *v24;
              v23 = sub_22EE82CE0(v24);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA7358();
              }

              goto LABEL_26;
            }

            v19 += v28;
            ++v18;
            st_size -= v28;
            if (!st_size)
            {
              goto LABEL_27;
            }
          }

          v21 = __error();
          v22 = *v21;
          v23 = sub_22EE82CE0(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA72C0();
          }

LABEL_26:

          *__error() = v22;
LABEL_27:
          close(v5);
          v9 = v18;
          goto LABEL_28;
        }

        v20 = __error();
        v7 = *v20;
        v8 = sub_22EE82CE0(v20);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA73CC();
        }
      }

      *__error() = v7;
      close(v5);
      v9 = 0;
    }

LABEL_28:
    qword_27DA9CE80 = v9;
    v25 = __error();
    v11 = *v25;
    v12 = sub_22EE82CE0(v25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA74C0();
    }

LABEL_30:

    *__error() = v11;
  }
}

uint64_t tailspin_write_symbolless_binary_info_chunk(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    if (!v3)
    {
      sub_22EEA659C();
    }

    v4 = v3;
    add_binary_info_to_binary_dictionary(v3, v2);
    v15 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v15];
    v6 = v15;
    if (v5)
    {
      [v5 bytes];
      [v5 length];
      v7 = 0;
      if (!ktrace_file_append_chunk())
      {
        v8 = __error();
        v9 = *v8;
        v10 = sub_22EE82CE0(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA7540();
        }

        *__error() = v9;
        v7 = *__error();
      }
    }

    else
    {
      v11 = __error();
      v12 = *v11;
      v13 = sub_22EE82CE0(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA75C8();
      }

      *__error() = v12;
      v7 = 22;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t tailspin_write_os_signpost_support_chunks(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6, int a7)
{
  v10 = a3;
  v11 = a4;
  if (!a2)
  {
    v12 = [MEMORY[0x277D24438] localStore];
    goto LABEL_6;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (!v12)
  {
    v21 = __error();
    v22 = *v21;
    v23 = sub_22EE82CE0(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7678();
    }

    appended = 22;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if ((v14 & 1) == 0)
  {
    v24 = __error();
    v22 = *v24;
    v23 = sub_22EE82CE0(v24);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA763C();
    }

    appended = 2;
LABEL_16:

    *__error() = v22;
    goto LABEL_17;
  }

  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  v16 = [MEMORY[0x277D24438] storeWithArchiveURL:v15];

  v12 = v16;
LABEL_6:
  if (a7)
  {
    v17 = SignpostSupportAllowlistedStringSetForCurrentDevice();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22EE8977C;
    v26[3] = &unk_278870D90;
    v27 = v17;
    v18 = v17;
    v19 = MEMORY[0x2318F9980](v26);
  }

  else
  {
    v19 = 0;
  }

  appended = ktrace_file_append_log_content_from_store();

LABEL_17:
  return appended;
}

id sub_22EE8977C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subsystem];
  v5 = [v3 category];
  v6 = [v3 signpostName];
  IsDynamicDataAllowlistedForCurrentDevice = SignpostSupportIsDynamicDataAllowlistedForCurrentDevice();

  if (IsDynamicDataAllowlistedForCurrentDevice)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 decomposedMessage];
    if ([v9 placeholderCount])
    {
      v10 = 0;
      v8 = 0;
      do
      {
        v11 = [v9 argumentAtIndex:v10];
        if ([v11 category] == 3 || objc_msgSend(v11, "category") == 2 && (objc_msgSend(v11, "objectRepresentation"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = objc_msgSend(*(a1 + 32), "containsObject:", v12), v13, (v14 & 1) == 0))
        {
          if (v8)
          {
            [v8 addIndex:v10];
          }

          else
          {
            v8 = [MEMORY[0x277CCAB58] indexSetWithIndex:v10];
          }
        }

        ++v10;
      }

      while (v10 < [v9 placeholderCount]);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void tailspin_symbolicate_file_async(uint64_t a1, char a2, char a3, void *a4, void *a5)
{
  v6 = a4;
  v7 = a5;
  sub_22EE9B5D8();
}

uint64_t sub_22EE89ED4(uint64_t a1)
{
  sub_22EE9B6E4(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t *sub_22EE89F1C(uint64_t a1, uint64_t a2)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v3 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    v5 = result;
    v8 = 0;
    v9 = 0;
    if (ktrace_chunk_tag() == 36864)
    {
      tailspin_parse_stackshot_chunk(v5, v3, &v9, &v8);
      v7 = v8;
      v6 = v9;
      if (!v9)
      {
        return ktrace_chunk_unmap_data();
      }
    }

    else
    {
      v8 = v3;
      v9 = v5;
      v7 = v3;
      v6 = v5;
    }

    if (v7)
    {
      sub_22EE9B78C(*(a1 + 32), v6, v7);
    }

    return ktrace_chunk_unmap_data();
  }

  return result;
}

_OWORD *sub_22EE89FE8(uint64_t a1, uint64_t a2)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v3 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    if (ktrace_chunk_is_64_bit())
    {
      v7 = 64;
    }

    else
    {
      v7 = 32;
    }

    sub_22EE9CB68(v6, v5, v3, v7);

    return ktrace_chunk_unmap_data();
  }

  return result;
}

uint64_t sub_22EE8A0A4(uint64_t a1, uint64_t a2)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v3 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    sub_22EE9C60C(*(a1 + 32), result, v3);

    return ktrace_chunk_unmap_data();
  }

  return result;
}

void sub_22EE8A144(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_copy_plist();
  sub_22EE9D1FC(*(a1 + 32), v3);
}

void sub_22EE8A198(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_copy_plist();
  sub_22EE9D534(*(a1 + 32), v3);
}

float *sub_22EE8A1EC(float *result, uint64_t *a2)
{
  if ((*a2 & 0xC0) != 0)
  {
    return sub_22EE9CEE0(*(result + 4), a2);
  }

  return result;
}

double sub_22EE8A204(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 32);
  pid_for_thread = ktrace_get_pid_for_thread();

  return sub_22EE9D0BC(v5, a2, a3, pid_for_thread);
}

uint64_t sub_22EE8A258(uint64_t a1)
{
  v2 = __error();
  v3 = *v2;
  v4 = sub_22EE82CE0(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA779C();
  }

  *__error() = v3;
  return sub_22EE9B76C(*(a1 + 32));
}

uint64_t sub_22EE8A2C0(uint64_t a1)
{
  sub_22EE9D840(*(a1 + 40), *(a1 + 64), *(a1 + 65), *(a1 + 48));
  sub_22EE9B6E4(*(a1 + 40));
  ktrace_session_destroy();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_22EE8A328(uint64_t a1)
{
  sub_22EE9B6E4(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

id sub_22EE8A370()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      if (![v1 count])
      {
LABEL_7:

        goto LABEL_12;
      }

      v2 = 0;
      v3 = 1;
      while (1)
      {
        v4 = [v1 objectAtIndexedSubscript:v2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v6 = (v2 + 1 >= [v1 count]) | ~v3;
        v2 = 1;
        v3 = 0;
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v7 = __error();
      v8 = *v7;
      v9 = sub_22EE82CE0(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA77D8();
      }

      *__error() = v8;
    }
  }

  v1 = [MEMORY[0x277CBEAF8] preferredLanguages];
LABEL_12:

  return v1;
}

uint64_t sub_22EE8A4D8(uint64_t a1)
{
  if (!qword_27DA9CEA0)
  {
    qword_27DA9CEA0 = _sl_dlopen();
  }

  return qword_27DA9CEA0;
}

uint64_t sub_22EE8A5A8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27DA9CEA0 = result;
  return result;
}

Class sub_22EE8A61C(uint64_t a1)
{
  v3 = 0;
  if (!sub_22EE8A4D8(&v3))
  {
    sub_22EEA79D0(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("PMPowerMitigations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22EEA7954();
  }

  qword_27DA9CEA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22EE8A6C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t is_apple_internal_setting()
{
  if (qword_280B25F80 != -1)
  {
    sub_22EE852D4();
  }

  return byte_280B25F88;
}

uint64_t tailspin_min_oncore_sampling_period_allowed(uint64_t a1, uint64_t a2)
{
  if (qword_27DA9CEB8 != -1)
  {
    sub_22EEA7A50();
  }

  return qword_27DA9CEB0;
}

uint64_t sub_22EE8A794()
{
  v4 = 8;
  result = sysctlbyname("kperf.limits.timer_min_bg_period_ns", &qword_27DA9CEB0, &v4, 0, 0);
  if (result)
  {
    v1 = __error();
    v2 = *v1;
    v3 = sub_22EE82CE0(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7A64(v3);
    }

    *__error() = v2;
    result = sub_22EE85C00();
    qword_27DA9CEB0 = result;
  }

  return result;
}

uint64_t tailspin_min_full_sampling_period_allowed()
{
  if (qword_280B23E20 != -1)
  {
    sub_22EE85AF0();
  }

  return qword_280B23E18;
}

uint64_t sub_22EE8A860(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  result = snprintf(byte_27DA9CEC8, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_27DA9CEC8[result], 1024 - result, a2, va);
  }

  qword_27DA9CD18 = byte_27DA9CEC8;
  return result;
}

void serialize_cputrace_session(uint64_t a1)
{
  if (sub_22EE992A8())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v2 = off_27DA9D2C8;
    v21 = off_27DA9D2C8;
    if (!off_27DA9D2C8)
    {
      v3 = sub_22EE905C4();
      v19[3] = dlsym(v3, "hwtrace_live_recording_session_serialize");
      off_27DA9D2C8 = v19[3];
      v2 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (v2)
    {
      v4 = v2(a1);
      if (v4)
      {
        v5 = v4;
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        v7 = [v6 fileExistsAtPath:@"/var/db/tailspin_cputrace_session.json"];

        if (v7)
        {
          unlink("/var/db/tailspin_cputrace_session.json");
        }

        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
        v9 = [v8 dataUsingEncoding:4];
        if (([v9 writeToFile:@"/var/db/tailspin_cputrace_session.json" atomically:1] & 1) == 0)
        {
          v10 = __error();
          v11 = *v10;
          v12 = sub_22EE82CE0(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA7CC4();
          }

          *__error() = v11;
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const char *soft_hwtrace_live_recording_session_serialize(hwtrace_live_recording_session_t)"];
      [v16 handleFailureInFunction:v17 file:@"AppleHWTrace_SoftLinking.h" lineNumber:43 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }

  else
  {
    v13 = __error();
    v14 = *v13;
    v15 = sub_22EE82CE0(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7C44();
    }

    *__error() = v14;
  }
}

int *create_and_start_cputrace_live_recording()
{
  v114 = *MEMORY[0x277D85DE8];
  if ((sub_22EE992A8() & 1) == 0)
  {
    v17 = __error();
    v14 = *v17;
    v18 = sub_22EE82CE0(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7D44();
    }

    result = __error();
    goto LABEL_27;
  }

  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v0 = off_27DA9D2D8;
  v108 = off_27DA9D2D8;
  if (!off_27DA9D2D8)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90828;
    v112 = &unk_278871098;
    v113 = &v105;
    v1 = sub_22EE905C4();
    v2 = dlsym(v1, "hwtrace_live_topology");
    *(v113[1] + 24) = v2;
    off_27DA9D2D8 = *(v113[1] + 24);
    v0 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v0)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_topology_t soft_hwtrace_live_topology()"];
    [v73 handleFailureInFunction:v74 file:@"AppleHWTrace_SoftLinking.h" lineNumber:64 description:{@"%s", dlerror()}];

LABEL_79:
    __break(1u);
LABEL_80:
    v72 = __error();
    v14 = *v72;
    v69 = sub_22EE82CE0(v72);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7EA4();
    }

    goto LABEL_77;
  }

  v3 = v0();
  if (!v3)
  {
    v19 = __error();
    v14 = *v19;
    v20 = sub_22EE82CE0(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7FE8();
    }

    result = __error();
    goto LABEL_27;
  }

  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v4 = off_27DA9D2E0;
  v108 = off_27DA9D2E0;
  if (!off_27DA9D2E0)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90878;
    v112 = &unk_278871098;
    v113 = &v105;
    v5 = sub_22EE905C4();
    v6 = dlsym(v5, "hwtrace_live_topology_systems");
    *(v113[1] + 24) = v6;
    off_27DA9D2E0 = *(v113[1] + 24);
    v4 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v4)
  {
    v75 = [MEMORY[0x277CCA890] currentHandler];
    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_topology_systems(hwtrace_live_topology_t, hwtrace_live_system_t **, size_t *)"}];
    [v75 handleFailureInFunction:v76 file:@"AppleHWTrace_SoftLinking.h" lineNumber:65 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v4(v3, &v104, &v103);
  if (!v103)
  {
LABEL_18:
    v13 = __error();
    v14 = *v13;
    v15 = sub_22EE82CE0(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7F68();
    }

    result = __error();
    goto LABEL_27;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v104 + 8 * v7);
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v9 = off_27DA9D2E8;
    v108 = off_27DA9D2E8;
    if (!off_27DA9D2E8)
    {
      v109 = MEMORY[0x277D85DD0];
      v110 = 3221225472;
      v111 = sub_22EE908C8;
      v112 = &unk_278871098;
      v113 = &v105;
      v10 = sub_22EE905C4();
      v11 = dlsym(v10, "hwtrace_live_system_name");
      *(v113[1] + 24) = v11;
      off_27DA9D2E8 = *(v113[1] + 24);
      v9 = v106[3];
    }

    _Block_object_dispose(&v105, 8);
    if (!v9)
    {
      v70 = [MEMORY[0x277CCA890] currentHandler];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const char *soft_hwtrace_live_system_name(hwtrace_live_system_t)"];
      [v70 handleFailureInFunction:v71 file:@"AppleHWTrace_SoftLinking.h" lineNumber:66 description:{@"%s", dlerror()}];

      goto LABEL_79;
    }

    v12 = v9(v8);
    if (*v12 == 88 && v12[1] == 78 && v12[2] == 85)
    {
      break;
    }

    if (v103 <= ++v7)
    {
      goto LABEL_18;
    }
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v21 = off_27DA9D2F0;
  v108 = off_27DA9D2F0;
  if (!off_27DA9D2F0)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90918;
    v112 = &unk_278871098;
    v113 = &v105;
    v22 = sub_22EE905C4();
    v23 = dlsym(v22, "hwtrace_live_recording_options_init");
    *(v113[1] + 24) = v23;
    off_27DA9D2F0 = *(v113[1] + 24);
    v21 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v21)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_options_t soft_hwtrace_live_recording_options_init()"];
    [v77 handleFailureInFunction:v78 file:@"AppleHWTrace_SoftLinking.h" lineNumber:25 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v24 = v21();
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v25 = off_27DA9D2F8;
  v108 = off_27DA9D2F8;
  if (!off_27DA9D2F8)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90968;
    v112 = &unk_278871098;
    v113 = &v105;
    v26 = sub_22EE905C4();
    v27 = dlsym(v26, "hwtrace_live_recording_options_set_session_policy");
    *(v113[1] + 24) = v27;
    off_27DA9D2F8 = *(v113[1] + 24);
    v25 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v25)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_options_set_session_policy(hwtrace_live_recording_options_t, hwtrace_live_recording_option_session_policy_t)"}];
    [v79 handleFailureInFunction:v80 file:@"AppleHWTrace_SoftLinking.h" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v25(v24, 2);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v28 = off_27DA9D300;
  v108 = off_27DA9D300;
  if (!off_27DA9D300)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE909B8;
    v112 = &unk_278871098;
    v113 = &v105;
    v29 = sub_22EE905C4();
    v30 = dlsym(v29, "hwtrace_live_recording_options_set_background");
    *(v113[1] + 24) = v30;
    off_27DA9D300 = *(v113[1] + 24);
    v28 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v28)
  {
    v81 = [MEMORY[0x277CCA890] currentHandler];
    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_options_set_background(hwtrace_live_recording_options_t, BOOL)"}];
    [v81 handleFailureInFunction:v82 file:@"AppleHWTrace_SoftLinking.h" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v28(v24, 1);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v31 = off_27DA9D308;
  v108 = off_27DA9D308;
  if (!off_27DA9D308)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90A08;
    v112 = &unk_278871098;
    v113 = &v105;
    v32 = sub_22EE905C4();
    v33 = dlsym(v32, "hwtrace_live_recording_options_add_system");
    *(v113[1] + 24) = v33;
    off_27DA9D308 = *(v113[1] + 24);
    v31 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v31)
  {
    v83 = [MEMORY[0x277CCA890] currentHandler];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_system_options_t soft_hwtrace_live_recording_options_add_system(hwtrace_live_recording_options_t, hwtrace_live_system_t)"}];
    [v83 handleFailureInFunction:v84 file:@"AppleHWTrace_SoftLinking.h" lineNumber:29 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v34 = v31(v24, v8);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v35 = off_27DA9D310;
  v108 = off_27DA9D310;
  if (!off_27DA9D310)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90A58;
    v112 = &unk_278871098;
    v113 = &v105;
    v36 = sub_22EE905C4();
    v37 = dlsym(v36, "hwtrace_live_recording_system_options_set_trace_mode");
    *(v113[1] + 24) = v37;
    off_27DA9D310 = *(v113[1] + 24);
    v35 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v35)
  {
    v85 = [MEMORY[0x277CCA890] currentHandler];
    v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_trace_mode(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_trace_mode_t)"}];
    [v85 handleFailureInFunction:v86 file:@"AppleHWTrace_SoftLinking.h" lineNumber:32 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v35(v34, 1);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v38 = off_27DA9D318;
  v108 = off_27DA9D318;
  if (!off_27DA9D318)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90AA8;
    v112 = &unk_278871098;
    v113 = &v105;
    v39 = sub_22EE905C4();
    v40 = dlsym(v39, "hwtrace_live_recording_system_options_set_driver");
    *(v113[1] + 24) = v40;
    off_27DA9D318 = *(v113[1] + 24);
    v38 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v38)
  {
    v87 = [MEMORY[0x277CCA890] currentHandler];
    v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_driver(hwtrace_live_recording_system_options_t, BOOL)"}];
    [v87 handleFailureInFunction:v88 file:@"AppleHWTrace_SoftLinking.h" lineNumber:33 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v38(v34, 1);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v41 = off_27DA9D320;
  v108 = off_27DA9D320;
  if (!off_27DA9D320)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90AF8;
    v112 = &unk_278871098;
    v113 = &v105;
    v42 = sub_22EE905C4();
    v43 = dlsym(v42, "hwtrace_live_recording_system_options_set_production");
    *(v113[1] + 24) = v43;
    off_27DA9D320 = *(v113[1] + 24);
    v41 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v41)
  {
    v89 = [MEMORY[0x277CCA890] currentHandler];
    v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_production(hwtrace_live_recording_system_options_t, BOOL)"}];
    [v89 handleFailureInFunction:v90 file:@"AppleHWTrace_SoftLinking.h" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v41(v34, 0);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v44 = off_27DA9D328;
  v108 = off_27DA9D328;
  if (!off_27DA9D328)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90B48;
    v112 = &unk_278871098;
    v113 = &v105;
    v45 = sub_22EE905C4();
    v46 = dlsym(v45, "hwtrace_live_recording_system_options_set_context_target");
    *(v113[1] + 24) = v46;
    off_27DA9D328 = *(v113[1] + 24);
    v44 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v44)
  {
    v91 = [MEMORY[0x277CCA890] currentHandler];
    v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_context_target(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_context_target_t)"}];
    [v91 handleFailureInFunction:v92 file:@"AppleHWTrace_SoftLinking.h" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v44(v34, 0);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v47 = off_27DA9D330;
  v108 = off_27DA9D330;
  if (!off_27DA9D330)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90B98;
    v112 = &unk_278871098;
    v113 = &v105;
    v48 = sub_22EE905C4();
    v49 = dlsym(v48, "hwtrace_live_recording_system_options_set_exception_level_target");
    *(v113[1] + 24) = v49;
    off_27DA9D330 = *(v113[1] + 24);
    v47 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v47)
  {
    v93 = [MEMORY[0x277CCA890] currentHandler];
    v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_exception_level_target(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_exception_level_target_t)"}];
    [v93 handleFailureInFunction:v94 file:@"AppleHWTrace_SoftLinking.h" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v47(v34, 1);
  v102 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v50 = off_27DA9D338;
  v108 = off_27DA9D338;
  if (!off_27DA9D338)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90BE8;
    v112 = &unk_278871098;
    v113 = &v105;
    v51 = sub_22EE905C4();
    v52 = dlsym(v51, "hwtrace_live_recording_init_with_options");
    *(v113[1] + 24) = v52;
    off_27DA9D338 = *(v113[1] + 24);
    v50 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v50)
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_init_with_options(hwtrace_live_recording_options_t, hwtrace_live_recording_t *)"}];
    [v95 handleFailureInFunction:v96 file:@"AppleHWTrace_SoftLinking.h" lineNumber:46 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v53 = v50(v24, &v102);
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v54 = off_27DA9D340;
  v108 = off_27DA9D340;
  if (!off_27DA9D340)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90C38;
    v112 = &unk_278871098;
    v113 = &v105;
    v55 = sub_22EE905C4();
    v56 = dlsym(v55, "hwtrace_live_recording_options_deinit");
    *(v113[1] + 24) = v56;
    off_27DA9D340 = *(v113[1] + 24);
    v54 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v54)
  {
    v97 = [MEMORY[0x277CCA890] currentHandler];
    v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_options_deinit(hwtrace_live_recording_options_t)"];
    [v97 handleFailureInFunction:v98 file:@"AppleHWTrace_SoftLinking.h" lineNumber:26 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v54(v24);
  if (v53)
  {
    v57 = __error();
    v58 = *v57;
    v59 = sub_22EE82CE0(v57);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7DC4();
    }

    result = __error();
LABEL_73:
    *result = v58;
    return result;
  }

  v101 = 0;
  v60 = v102;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v61 = off_27DA9D348;
  v108 = off_27DA9D348;
  if (!off_27DA9D348)
  {
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = sub_22EE90C88;
    v112 = &unk_278871098;
    v113 = &v105;
    v62 = sub_22EE905C4();
    v63 = dlsym(v62, "hwtrace_live_recording_start");
    *(v113[1] + 24) = v63;
    off_27DA9D348 = *(v113[1] + 24);
    v61 = v106[3];
  }

  _Block_object_dispose(&v105, 8);
  if (!v61)
  {
    v99 = [MEMORY[0x277CCA890] currentHandler];
    v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_start(hwtrace_live_recording_t, hwtrace_live_recording_session_t *)"}];
    [v99 handleFailureInFunction:v100 file:@"AppleHWTrace_SoftLinking.h" lineNumber:48 description:{@"%s", dlerror()}];

    goto LABEL_79;
  }

  v64 = v61(v60, &v101);
  sub_22EE8BF90(v102);
  if (v64)
  {
    v65 = __error();
    v58 = *v65;
    v66 = sub_22EE82CE0(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7E34();
    }

    result = __error();
    goto LABEL_73;
  }

  serialize_cputrace_session(v101);
  if ((v67 & 1) == 0)
  {
    goto LABEL_80;
  }

  v109 = 0;
  v110 = 0;
  sub_22EE8C10C(v101, &v109);
  v68 = __error();
  v14 = *v68;
  v69 = sub_22EE82CE0(v68);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA7EE0(&v109, v69);
  }

LABEL_77:

  result = __error();
LABEL_27:
  *result = v14;
  return result;
}

void sub_22EE8BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8BF90(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D350;
  v9 = off_27DA9D350;
  if (!off_27DA9D350)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_live_recording_deinit");
    off_27DA9D350 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_deinit(hwtrace_live_recording_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8C10C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D358;
  v11 = off_27DA9D358;
  if (!off_27DA9D358)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_session_uuid");
    off_27DA9D358 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_session_uuid(hwtrace_live_recording_session_t, unsigned char *)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8C260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cputrace_session_data_from_disk()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 fileExistsAtPath:@"/var/db/tailspin_cputrace_session.json"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/db/tailspin_cputrace_session.json"];
    if (v2)
    {
      goto LABEL_8;
    }

    v3 = __error();
    v4 = *v3;
    v5 = sub_22EE82CE0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8060();
    }
  }

  else
  {
    v6 = __error();
    v4 = *v6;
    v5 = sub_22EE82CE0(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8024();
    }
  }

  v7 = __error();
  v2 = 0;
  *v7 = v4;
LABEL_8:

  return v2;
}

void reinit_cputrace_live_recording_from_existing_session()
{
  if (sub_22EE992A8())
  {
    v29 = 0;
    v0 = cputrace_session_data_from_disk();
    if (!v0)
    {
LABEL_27:

      return;
    }

    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v0 encoding:4];
    v2 = v1;
    if (v1 && [v1 UTF8String])
    {
      v3 = [v2 UTF8String];
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v4 = off_27DA9D360;
      v38 = off_27DA9D360;
      if (!off_27DA9D360)
      {
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = sub_22EE90D78;
        v33 = &unk_278871098;
        v34 = &v35;
        v5 = sub_22EE905C4();
        v36[3] = dlsym(v5, "hwtrace_live_recording_session_init");
        off_27DA9D360 = *(v34[1] + 24);
        v4 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (!v4)
      {
        v26 = [MEMORY[0x277CCA890] currentHandler];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_session_init(const char *, hwtrace_live_recording_session_t *)"}];
        [v26 handleFailureInFunction:v27 file:@"AppleHWTrace_SoftLinking.h" lineNumber:39 description:{@"%s", dlerror()}];
LABEL_34:

        __break(1u);
        return;
      }

      v4(v3, &v29);
      v6 = v29;
      if (v29)
      {
        v28 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v7 = off_27DA9D368;
        v38 = off_27DA9D368;
        if (!off_27DA9D368)
        {
          v30 = MEMORY[0x277D85DD0];
          v31 = 3221225472;
          v32 = sub_22EE90DC8;
          v33 = &unk_278871098;
          v34 = &v35;
          v8 = sub_22EE905C4();
          v9 = dlsym(v8, "hwtrace_live_recording_init_from_session");
          *(v34[1] + 24) = v9;
          off_27DA9D368 = *(v34[1] + 24);
          v7 = v36[3];
        }

        _Block_object_dispose(&v35, 8);
        if (v7)
        {
          v7(v6, &v28);
          v10 = v29;
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v11 = off_27DA9D370;
          v38 = off_27DA9D370;
          if (!off_27DA9D370)
          {
            v30 = MEMORY[0x277D85DD0];
            v31 = 3221225472;
            v32 = sub_22EE90E18;
            v33 = &unk_278871098;
            v34 = &v35;
            v12 = sub_22EE905C4();
            v13 = dlsym(v12, "hwtrace_live_recording_session_deinit");
            *(v34[1] + 24) = v13;
            off_27DA9D370 = *(v34[1] + 24);
            v11 = v36[3];
          }

          _Block_object_dispose(&v35, 8);
          if (v11)
          {
            v11(v10);
            if (!v28)
            {
              v14 = __error();
              v15 = *v14;
              v16 = sub_22EE82CE0(v14);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA811C();
              }

              *__error() = v15;
            }

            goto LABEL_26;
          }

          v26 = [MEMORY[0x277CCA890] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_session_deinit(hwtrace_live_recording_session_t)"];
          [v26 handleFailureInFunction:v27 file:@"AppleHWTrace_SoftLinking.h" lineNumber:41 description:{@"%s", dlerror()}];
        }

        else
        {
          v26 = [MEMORY[0x277CCA890] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_init_from_session(hwtrace_live_recording_session_t, hwtrace_live_recording_t *)"}];
          [v26 handleFailureInFunction:v27 file:@"AppleHWTrace_SoftLinking.h" lineNumber:40 description:{@"%s", dlerror()}];
        }

        goto LABEL_34;
      }

      v24 = __error();
      v21 = *v24;
      v25 = sub_22EE82CE0(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA818C();
      }

      v23 = __error();
    }

    else
    {
      v20 = __error();
      v21 = *v20;
      v22 = sub_22EE82CE0(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA81FC();
      }

      v23 = __error();
    }

    *v23 = v21;
LABEL_26:

    goto LABEL_27;
  }

  v17 = __error();
  v18 = *v17;
  v19 = sub_22EE82CE0(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA809C();
  }

  *__error() = v18;
}

void sub_22EE8C8FC(uint64_t a1, void *a2, dev_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, void *a11)
{
  v177 = *MEMORY[0x277D85DE8];
  v132 = a2;
  v130 = a6;
  v131 = a7;
  v17 = a8;
  v18 = a11;
  [v17 startRecordingTimeForTailspinPostProcessing];
  if ((a5 & 0x80000000) != 0 && !a4)
  {
    goto LABEL_91;
  }

  v19 = dup(a1);
  v128 = ktrace_file_open_fd();
  if (v128)
  {
    v163 = 0;
    v164 = &v163;
    v165 = 0x3032000000;
    v166 = sub_22EE8DBA0;
    v167 = sub_22EE8DBB0;
    v168 = 0;
    v157 = 0;
    v158 = &v157;
    v159 = 0x3032000000;
    v160 = sub_22EE8DBA0;
    v161 = sub_22EE8DBB0;
    v162 = 0;
    v153 = 0;
    v154 = &v153;
    v155 = 0x2020000000;
    v156 = 0;
    v20 = ktrace_session_create();
    ktrace_set_execnames_enabled();
    if (a10 && a9)
    {
      ktrace_set_execnames_enabled();
    }

    ktrace_session_set_event_names_enabled();
    v21 = ktrace_set_ktrace_file();
    if (v21)
    {
      v22 = __error();
      v23 = *v22;
      v24 = sub_22EE82CE0(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        buf.st_dev = 67110146;
        *&buf.st_mode = a1;
        LOWORD(buf.st_ino) = 1024;
        *(&buf.st_ino + 2) = v19;
        HIWORD(buf.st_ino) = 2114;
        *&buf.st_uid = v132;
        LOWORD(buf.st_rdev) = 1024;
        *(&buf.st_rdev + 2) = a3;
        *(&buf.st_rdev + 3) = 1024;
        LODWORD(buf.st_atimespec.tv_sec) = v21;
        _os_log_fault_impl(&dword_22EE81000, v24, OS_LOG_TYPE_FAULT, "Unable to create read session for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", &buf, 0x24u);
      }

      *__error() = v23;
      a4 = 26;
      goto LABEL_73;
    }

    v126 = dispatch_semaphore_create(0);
    ktrace_events_single();
    v144 = MEMORY[0x277D85DD0];
    v145 = 3221225472;
    v146 = sub_22EE8DBBC;
    v147 = &unk_278870F60;
    v151 = a5;
    v152 = a4;
    v148 = &v163;
    v149 = &v157;
    v150 = &v153;
    ktrace_stackshot();
    if (a9)
    {
      if (sub_22EE992A8())
      {
        if (a10)
        {
          v28 = __error();
          v29 = *v28;
          v30 = sub_22EE82CE0(v28);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.st_dev) = 0;
            _os_log_impl(&dword_22EE81000, v30, OS_LOG_TYPE_DEFAULT, "Setting up post-processing for CPUTrace collection", &buf, 2u);
          }

          v31 = __error();
          *v31 = v29;
          sub_22EE8E824(v31);
          v33 = v32;
          sub_22EE8E998(v32, v20);
          sub_22EE8EB1C(a10, v33);
          sub_22EE8ECA0(v33);
          goto LABEL_26;
        }

        v38 = __error();
        v35 = *v38;
        v36 = sub_22EE82CE0(v38);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA83CC();
        }
      }

      else
      {
        v34 = __error();
        v35 = *v34;
        v36 = sub_22EE82CE0(v34);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA834C();
        }
      }

      *__error() = v35;
    }

LABEL_26:
    v139[1] = MEMORY[0x277D85DD0];
    v139[2] = 3221225472;
    v139[3] = sub_22EE8EE1C;
    v139[4] = &unk_278870F88;
    v143 = a5;
    v141 = &v163;
    v142 = v20;
    dsema = v126;
    v140 = dsema;
    ktrace_set_completion_handler();
    if (a4)
    {
      if ((a5 & 0x80000000) != 0)
      {
        v43 = __error();
        v40 = *v43;
        v41 = sub_22EE82CE0(v43);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_22EEA843C();
        }
      }

      else
      {
        v39 = __error();
        v40 = *v39;
        v41 = sub_22EE82CE0(v39);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_22EEA8470();
        }
      }
    }

    else
    {
      v42 = __error();
      v40 = *v42;
      v41 = sub_22EE82CE0(v42);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_22EEA8408();
      }
    }

    *__error() = v40;
    mach_absolute_time();
    if (fstat(a1, &buf))
    {
      st_size = -1;
    }

    else
    {
      st_size = buf.st_size;
    }

    v45 = __error();
    v46 = *v45;
    v47 = sub_22EE82CE0(v45);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v170 = 138544386;
      *&v170[4] = v132;
      *&v170[12] = 1024;
      *v171 = a3;
      *&v171[4] = 1024;
      *&v171[6] = a1;
      v172 = 1024;
      v173 = v19;
      v174 = 2048;
      v175 = st_size;
      _os_log_impl(&dword_22EE81000, v47, OS_LOG_TYPE_DEFAULT, "Started read session: %{public}@ [%d], original fd: %d, duped fd: %d, size: %{bytes}lld", v170, 0x28u);
    }

    *__error() = v46;
    v48 = ktrace_start();
    if (v48)
    {
      v49 = __error();
      v50 = *v49;
      v51 = sub_22EE82CE0(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        *v170 = 67110146;
        *&v170[4] = a1;
        *&v170[8] = 1024;
        *&v170[10] = v19;
        *v171 = 2114;
        *&v171[2] = v132;
        v172 = 1024;
        v173 = a3;
        v174 = 1024;
        LODWORD(v175) = v48;
        _os_log_fault_impl(&dword_22EE81000, v51, OS_LOG_TYPE_FAULT, "Unable to start read session for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", v170, 0x24u);
      }

      *__error() = v50;
      a4 = 26;
    }

    else
    {
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v52 = __error();
      v53 = *v52;
      v54 = sub_22EE82CE0(v52);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v170 = 138544130;
        *&v170[4] = v132;
        *&v170[12] = 1024;
        *v171 = a3;
        *&v171[4] = 1024;
        *&v171[6] = a1;
        v172 = 1024;
        v173 = v19;
        _os_log_impl(&dword_22EE81000, v54, OS_LOG_TYPE_DEFAULT, "Ended read session: %{public}@ [%d], original fd: %d, duped fd: %d", v170, 0x1Eu);
      }

      *__error() = v53;
      if (a9)
      {
        if (sub_22EE992A8())
        {
          if (a10)
          {
            *v170 = 0;
            sub_22EE8F660(a10, v170);
            v56 = v55;
            sub_22EE8BF90(a10);
            if (v56)
            {
              v57 = __error();
              v58 = *v57;
              v59 = sub_22EE82CE0(v57);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA8524();
              }

              *__error() = v58;
            }

            else
            {
              v63 = __error();
              v64 = *v63;
              v65 = sub_22EE82CE0(v63);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *v169 = 0;
                _os_log_impl(&dword_22EE81000, v65, OS_LOG_TYPE_DEFAULT, "Saving out CPUTrace data to file", v169, 2u);
              }

              *__error() = v64;
              sub_22EE8F7E4(*v170, v128);
              if (v66)
              {
                v67 = __error();
                v68 = *v67;
                v69 = sub_22EE82CE0(v67);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  sub_22EEA8594();
                }

                *__error() = v68;
              }

              sub_22EE8F968(*v170);
            }
          }

          create_and_start_cputrace_live_recording();
        }

        else
        {
          v60 = __error();
          v61 = *v60;
          v62 = sub_22EE82CE0(v60);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA84A4();
          }

          *__error() = v61;
        }
      }

      if (a4)
      {
        v70 = __error();
        v71 = *v70;
        v72 = sub_22EE82CE0(v70);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          mach_absolute_time();
          SASecondsFromMachTimeUsingLiveTimebase();
          v73 = *(v154 + 6);
          *v170 = 134218240;
          *&v170[4] = v74;
          *&v170[12] = 1024;
          *v171 = v73;
          _os_log_impl(&dword_22EE81000, v72, OS_LOG_TYPE_INFO, "Done parsing in %.2fs. Resampled %d truncated stacks", v170, 0x12u);
        }

        a4 = 0;
        *__error() = v71;
      }

      else
      {
        v75 = __error();
        v76 = *v75;
        v77 = sub_22EE82CE0(v75);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          mach_absolute_time();
          SASecondsFromMachTimeUsingLiveTimebase();
          sub_22EEA8604(v170, v77, v78);
        }

        a4 = 0;
        *__error() = v76;
      }
    }

LABEL_73:
    ktrace_session_destroy();
    if ((a5 & 0x80000000) != 0)
    {
LABEL_80:
      v85 = v158[5];
      if (v85)
      {
        v139[0] = 0;
        v86 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v85 requiringSecureCoding:1 error:v139];
        v87 = v139[0];
        if (v86)
        {
          v88 = v86;
          [v86 bytes];
          [v86 length];
          if (!ktrace_file_append_chunk())
          {
            v89 = __error();
            v90 = *v89;
            v91 = sub_22EE82CE0(v89);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v92 = __error();
              v93 = strerror(*v92);
              sub_22EEA87B8(v93, v169);
            }

            *__error() = v90;
            a4 = 17;
          }
        }

        else
        {
          v94 = __error();
          v95 = *v94;
          v96 = sub_22EE82CE0(v94);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA87FC();
          }

          *__error() = v95;
          a4 = 18;
        }
      }

      ktrace_file_close();
      _Block_object_dispose(&v153, 8);
      _Block_object_dispose(&v157, 8);

      _Block_object_dispose(&v163, 8);
      goto LABEL_91;
    }

    v79 = v164[5];
    if (!v79)
    {
      v82 = __error();
      v83 = *v82;
      v84 = sub_22EE82CE0(v82);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8748();
      }

      *__error() = v83;
      goto LABEL_80;
    }

    [v79 gatherInfoWithDataGatheringOptions:5 pid:a5];
    v80 = [v164[5] path];
    v81 = v80 == 0;

    if (!v81)
    {
LABEL_76:
      tailspin_write_symbolless_binary_info_chunk(v128, v164[5]);
      goto LABEL_80;
    }

    if (qword_27DA9D3D0 != -1)
    {
      sub_22EEA8648();
    }

    os_unfair_lock_lock(&unk_27DA9D3C8);
    v102 = qword_27DA9D3C0;
    v103 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v104 = [v102 objectForKeyedSubscript:v103];

    if (v104)
    {
      v105 = __error();
      v106 = *v105;
      v107 = sub_22EE82CE0(v105);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
      {
        buf.st_dev = 67109120;
        *&buf.st_mode = a5;
        _os_log_impl(&dword_22EE81000, v107, OS_LOG_TYPE_INFO, "Using cached load infos for [%d]", &buf, 8u);
      }

      v108 = __error();
    }

    else
    {
      v104 = [MEMORY[0x277D4B418] binaryLoadInfoForLiveProcessWithPid:a5 dataGatheringOptions:1030];
      if (v104)
      {
        v111 = __error();
        v112 = *v111;
        v113 = sub_22EE82CE0(v111);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v114 = [v104 count];
          buf.st_dev = 134218240;
          *&buf.st_mode = v114;
          WORD2(buf.st_ino) = 1024;
          *(&buf.st_ino + 6) = a5;
          _os_log_impl(&dword_22EE81000, v113, OS_LOG_TYPE_DEFAULT, "Fetched %lu load infos for [%d] from live process", &buf, 0x12u);
        }

        *__error() = v112;
        if (a5)
        {
          v115 = qword_27DA9D3C0;
          v116 = [MEMORY[0x277CCABB0] numberWithInt:a5];
          [v115 setObject:v104 forKeyedSubscript:v116];

          v117 = dispatch_get_global_queue(9, 0);
          v118 = dispatch_source_create(MEMORY[0x277D85D20], a5, 0xA0000000uLL, v117);

          *&buf.st_dev = MEMORY[0x277D85DD0];
          buf.st_ino = 3221225472;
          *&buf.st_uid = sub_22EE93C34;
          *&buf.st_rdev = &unk_278871100;
          buf.st_atimespec.tv_sec = v118;
          LODWORD(buf.st_atimespec.tv_nsec) = a5;
          v119 = v118;
          dispatch_source_set_event_handler(v119, &buf);
          dispatch_activate(v119);
        }

        goto LABEL_106;
      }

      v124 = __error();
      v106 = *v124;
      v125 = sub_22EE82CE0(v124);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8670();
      }

      v108 = __error();
      v104 = 0;
    }

    *v108 = v106;
LABEL_106:
    os_unfair_lock_unlock(&unk_27DA9D3C8);

    if (v104)
    {
      v109 = [v164[5] path];
      v110 = v109 == 0;

      if (v110)
      {
        v120 = __error();
        v121 = *v120;
        v122 = sub_22EE82CE0(v120);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v123 = [v164[5] uuid];
          sub_22EEA86E0(v123, &buf, a5, v122);
        }

        *__error() = v121;
      }

      else
      {
        [v164[5] gatherInfoWithDataGatheringOptions:5 pid:a5];
      }
    }

    goto LABEL_76;
  }

  v25 = __error();
  v26 = *v25;
  v27 = sub_22EE82CE0(v25);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    v37 = *__error();
    buf.st_dev = 67110146;
    *&buf.st_mode = a1;
    LOWORD(buf.st_ino) = 1024;
    *(&buf.st_ino + 2) = v19;
    HIWORD(buf.st_ino) = 2114;
    *&buf.st_uid = v132;
    LOWORD(buf.st_rdev) = 1024;
    *(&buf.st_rdev + 2) = a3;
    *(&buf.st_rdev + 3) = 1024;
    LODWORD(buf.st_atimespec.tv_sec) = v37;
    _os_log_fault_impl(&dword_22EE81000, v27, OS_LOG_TYPE_FAULT, "Unable to get ktfile for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", &buf, 0x24u);
  }

  *__error() = v26;
  a4 = 26;
LABEL_91:
  [MEMORY[0x277D4B410] clearSymbolCaches];
  [v17 stopRecordingTimeForTailspinPostProcessing];
  [v17 stopRecordingTimeForSaveStandardChunksPhase:a4 == 0];
  if (a4)
  {
    if (a1 != -1)
    {
      close(a1);
    }

    v18[2](v18, a4);
  }

  else
  {
    v97 = __error();
    v98 = *v97;
    v99 = sub_22EE82CE0(v97);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA8888();
    }

    *__error() = v98;
    v100 = dup(a1);
    v101 = v132;
    [v17 startRecordingTimeForAugmentPhase:objc_msgSend(v132 pid:"UTF8String") originalFd:a3 dupFd:{a1, v100}];
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_22EE8FAE4;
    v133[3] = &unk_278870FB0;
    v137 = a1;
    v134 = v132;
    v138 = a3;
    v135 = v17;
    v136 = v18;
    tailspin_augment_output_with_request_id(v100, v130, v131, v135, v133);
  }
}

void sub_22EE8D95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);

  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE8DBA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EE8DBBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a2 + 16;
  if (a2 + 16 > a3 || (v6 = a2, v4 + *(a2 + 4) > a3))
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v14 = 0;
  v8 = 0;
  v15 = 0;
  v16 = 0;
  *&pid[8] = 0;
  *pid = *(a1 + 56);
  v64 = -1;
  do
  {
    v17 = *(v6 + 4);
    if (v4 + v17 > a3)
    {
      break;
    }

    v18 = *v6;
    if (*v6 == -242132755)
    {
      break;
    }

    if ((v18 & 0xFFFFFFF0) == 0x20)
    {
      v19 = 17;
    }

    else
    {
      v19 = *v6;
    }

    if (v19 <= 19)
    {
      if (v19 != 17)
      {
        if (v19 != 19)
        {
          goto LABEL_101;
        }

        if (v17 < 4 || v18 != 19)
        {
          _os_assert_log();
          _os_crash();
          sub_22EEA88BC();
        }

        if (*(v6 + 16) != 2307)
        {
          goto LABEL_101;
        }

        v15 = *(v6 + 8);
        goto LABEL_100;
      }

      if (v18 != 17 && (v18 & 0xFFFFFFF0) != 0x20)
      {
LABEL_132:
        _os_assert_log();
        _os_crash();
        sub_22EEA88BC();
      }

      v30 = *(v6 + 8);
      if (v30)
      {
        if (v18 == 17)
        {
          if (SHIDWORD(v30) <= 2313)
          {
            if (SHIDWORD(v30) <= 2073)
            {
              if (HIDWORD(v30) == 48)
              {
                v31 = 20;
              }

              else
              {
                if (HIDWORD(v30) != 49)
                {
                  goto LABEL_132;
                }

                v31 = 24;
              }

              goto LABEL_83;
            }

            if (HIDWORD(v30) != 2074)
            {
              if (HIDWORD(v30) != 2311)
              {
                goto LABEL_132;
              }

              v31 = 4;
              goto LABEL_83;
            }
          }

          else if (SHIDWORD(v30) <= 2315)
          {
            if (HIDWORD(v30) != 2314)
            {
              goto LABEL_76;
            }
          }

          else if (HIDWORD(v30) != 2316)
          {
            if (HIDWORD(v30) != 2317)
            {
              if (HIDWORD(v30) != 2369)
              {
                goto LABEL_132;
              }

              v31 = 48;
              goto LABEL_83;
            }

LABEL_76:
            v31 = 16;
LABEL_83:
            if (v17 / v31 < v30 || v17 % v30 >= 0x10)
            {
              goto LABEL_132;
            }

LABEL_85:
            if (v16)
            {
              if (((v64 & 0x80000000) != 0 || v64 == *pid) && v30)
              {
                v38 = v6 + 16;
                if (HIDWORD(v30) == 48)
                {
                  v62 = v15;
                  v39 = 0;
                  v41 = v30;
                  while (*v38 && !uuid_is_null((v38 + 4)))
                  {
                    if (!v39 || *v39 > *v38)
                    {
                      v39 = v38;
                    }

                    v38 += 20;
                    if (!--v41)
                    {
                      goto LABEL_115;
                    }
                  }

                  v39 = 0;
LABEL_115:
                  v42 = v39 + 1;
                  goto LABEL_116;
                }

                if (HIDWORD(v30) == 49)
                {
                  v62 = v15;
                  v39 = 0;
                  v40 = v30;
                  while (*v38 && !uuid_is_null((v38 + 8)))
                  {
                    if (!v39 || *v39 > *v38)
                    {
                      v39 = v38;
                    }

                    v38 += 24;
                    if (!--v40)
                    {
                      goto LABEL_113;
                    }
                  }

                  v39 = 0;
LABEL_113:
                  v42 = v39 + 2;
LABEL_116:
                  v43 = *&pid[4];
                  if (v39)
                  {
                    v43 = v42;
                  }

                  *&pid[4] = v43;
                  v16 = 1;
                  v15 = v62;
                  goto LABEL_101;
                }

                goto LABEL_103;
              }

              goto LABEL_100;
            }

LABEL_99:
            v16 = 0;
            goto LABEL_101;
          }

          v31 = 8;
          goto LABEL_83;
        }

        v32 = *v6 & 0xF;
        v22 = v17 >= v32;
        v33 = v17 - v32;
        if (!v22 || v33 < v30)
        {
          goto LABEL_132;
        }

        LODWORD(v17) = v33 % v30;
      }

      if (v17)
      {
        goto LABEL_132;
      }

      goto LABEL_85;
    }

    switch(v19)
    {
      case 20:
        if ((v16 & 1) == 0)
        {
          goto LABEL_99;
        }

        if (*(v6 + 8) != v15)
        {
          goto LABEL_100;
        }

        if ((v64 & 0x80000000) != 0)
        {
          *&pid[4] = 0;
          v16 = 0;
        }

        else
        {
          v16 = 0;
          if (v64 == *pid && *&pid[4])
          {
            v34 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
            proc_pidpath(*pid, v34, 0x400u);
            if (*v34 == 47)
            {
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
            }

            else
            {
              v65 = 0;
            }

            free(v34);
            v44 = MEMORY[0x277D4B410];
            v45 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*&pid[4]];
            v46 = [v44 binaryWithUUID:v45 absolutePath:v65];

            *&pid[4] = 0;
            v16 = 0;
            v64 = -1;
            v14 = v46;
            break;
          }

          *&pid[4] = 0;
        }

        v64 = -1;
        break;
      case 2309:
        if (v16)
        {
          v28 = *(v6 + 8) & 0xF;
          v22 = v17 >= v28;
          v29 = v17 - v28;
          if (!v22)
          {
            v29 = 0;
          }

          if (v29 >= 0x78)
          {
            v64 = *(v6 + 100);
          }

LABEL_100:
          v16 = 1;
          break;
        }

        goto LABEL_99;
      case 2310:
        if (v16)
        {
          v20 = *(v6 + 8);
          if (v17 != 112 || (v20 & 0x8F) != 0)
          {
            v21 = v20 & 0xF;
            v22 = v17 >= v21;
            v23 = v17 - v21;
            if (!v22)
            {
              v23 = 0;
            }

            if (v23 >= 0x78)
            {
              if ((v64 & 0x80000000) != 0)
              {
                v35 = __error();
                v36 = *v35;
                v37 = sub_22EE82CE0(v35);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(v6 + 16);
                  *buf = 134217984;
                  v71 = v47;
                  _os_log_error_impl(&dword_22EE81000, v37, OS_LOG_TYPE_ERROR, "No task shapshot before thread snapshot for thread %#llx", buf, 0xCu);
                }

                *__error() = v36;
                goto LABEL_103;
              }

              if ((*(v6 + 80) & 0x80) != 0)
              {
                if (!v8)
                {
                  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
                }

                v24 = [MEMORY[0x277CCABB0] numberWithInt:v64];
                v61 = [v8 objectForKeyedSubscript:v24];

                if (!v61)
                {
                  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v26 = [MEMORY[0x277CCABB0] numberWithInt:v64];
                  v61 = v25;
                  [v8 setObject:v25 forKeyedSubscript:v26];
                }

                v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v6 + 16)];
                [v61 addObject:v27];

LABEL_103:
                v16 = 1;
                break;
              }
            }
          }

          goto LABEL_100;
        }

        goto LABEL_99;
    }

LABEL_101:
    v6 = v4 + *(v6 + 4);
    v4 = v6 + 16;
  }

  while (v6 + 16 <= a3);
  v55 = v8;
  v56 = v14;

  v7 = v14;
LABEL_4:
  v9 = v7;
  v10 = v8;
  if ((*(a1 + 56) & 0x80000000) == 0)
  {
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
      v11 = __error();
      v12 = *v11;
      v13 = sub_22EE82CE0(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v57 = [*(*(*(a1 + 32) + 8) + 40) debugDescription];
        v58 = v57;
        v59 = [v57 UTF8String];
        v60 = *(a1 + 56);
        *buf = 136315394;
        v71 = v59;
        v72 = 1024;
        v73 = v60;
        _os_log_debug_impl(&dword_22EE81000, v13, OS_LOG_TYPE_DEBUG, "Got main binary %s for pid %d from stackshot", buf, 0x12u);
      }

      *__error() = v12;
    }

    else
    {
      v48 = __error();
      v49 = *v48;
      v50 = sub_22EE82CE0(v48);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 56);
        *buf = 67109120;
        LODWORD(v71) = v51;
        _os_log_impl(&dword_22EE81000, v50, OS_LOG_TYPE_DEFAULT, "No main binary for pid %d in stackshot", buf, 8u);
      }

      *__error() = v49;
    }
  }

  if (*(a1 + 60) == 1 && v10 != 0)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_22EE8E508;
    v66[3] = &unk_278870F38;
    v68 = *(a1 + 40);
    v53 = v10;
    v54 = *(a1 + 48);
    v67 = v53;
    v69 = v54;
    [v53 enumerateKeysAndObjectsUsingBlock:v66];
  }
}

void sub_22EE8E508(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 intValue];
  if (v7 != getpid())
  {
    v8 = a1[4];
    v9 = v5;
    v10 = v6;
    SAResampleThreads();
  }
}

void sub_22EE8E634(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(*(*(a1 + 56) + 8) + 40);
  }

  v17 = [v8 objectForKeyedSubscript:*(a1 + 40)];
  if (!v17)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    [*(*(*(a1 + 56) + 8) + 40) setObject:? forKeyedSubscript:?];
  }

  v12 = a4;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  if (a4)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8 * v14)];
      [v13 setObject:v15 atIndexedSubscript:v14];

      ++v14;
    }

    while (v12 != v14);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v17 setObject:v13 forKeyedSubscript:v16];

  ++*(*(*(a1 + 64) + 8) + 24);
}

void sub_22EE8E824(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v1 = off_27DA9D378;
  v8 = off_27DA9D378;
  if (!off_27DA9D378)
  {
    v2 = sub_22EE905C4();
    v6[3] = dlsym(v2, "hwtrace_live_recording_postprocess_options_init");
    off_27DA9D378 = v6[3];
    v1 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    v1();
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_init()"];
    [v3 handleFailureInFunction:v4 file:@"AppleHWTrace_SoftLinking.h" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8E998(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D380;
  v11 = off_27DA9D380;
  if (!off_27DA9D380)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_postprocess_options_set_ktrace_session");
    off_27DA9D380 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_set_ktrace_session(hwtrace_live_recording_postprocess_options_t, ktrace_session_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8EB1C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D388;
  v11 = off_27DA9D388;
  if (!off_27DA9D388)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_postprocess");
    off_27DA9D388 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess(hwtrace_live_recording_t, hwtrace_live_recording_postprocess_options_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8ECA0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D390;
  v9 = off_27DA9D390;
  if (!off_27DA9D390)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_live_recording_postprocess_options_deinit");
    off_27DA9D390 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_deinit(hwtrace_live_recording_postprocess_options_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_22EE8EE1C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x80000000) == 0 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = main_binary_for_pid_in_ktrace(*(a1 + 48), v2);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

id main_binary_for_pid_in_ktrace(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v96 = *MEMORY[0x277D85DE8];
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v3 = ktrace_dumpbuffer_address_space_pid();
    v82 = v3;
    if (v3)
    {
      v84 = [v3 bytes];
      v85 = [v82 length];
      v86 = xmmword_22EEAB570;
      v87 = 0;
      v88 = 1;
      if (v85 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (sub_22EE91138(&v84, "SYMB", 0))
      {
        v4 = v82;
        v5 = [v82 bytes];
        v6 = *v5;
        memset(dst, 0, sizeof(dst));
        memset(uu, 0, sizeof(uu));
        v7 = *(v5 + v6 - *(v5 + v6) + 4);
        v8 = (v5 + v6 + v7);
        v9 = *v8;
        v10 = v8 + v9;
        v11 = *(v8 + v9);
        if (v11)
        {
          v83 = 0;
          v80 = 0;
          v12 = &v10[4 * v11];
          v13 = v5 + v6 + v9 + v7 + 12;
          v14 = -1;
          while (1)
          {
            v16 = *(v10 + 1);
            v10 += 4;
            v15 = v16;
            v17 = &v10[v16];
            v18 = sub_22EE903F8(v17);
            if (v18)
            {
              v19 = &v18[-*v18];
              if (*v19 >= 0xBu && (v20 = *(v19 + 5)) != 0)
              {
                uuid_parse(&v18[v20 + 4 + *&v18[v20]], uu);
              }

              else
              {
                v21 = __error();
                v22 = *v21;
                v23 = sub_22EE82CE0(v21);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *uu2 = 67109120;
                  *&uu2[4] = a2;
                  _os_log_error_impl(&dword_22EE81000, v23, OS_LOG_TYPE_ERROR, "No main uuid for target pid [%d] in ktrace flatbuffer", uu2, 8u);
                }

                *__error() = v22;
              }
            }

            v24 = (v17 - *v17);
            if (*v24 >= 9u)
            {
              v25 = v24[4];
              if (v25)
              {
                v26 = *(v17 + v25);
                v27 = (v17 + v25 + v26);
                v28 = *v27;
                if (v28)
                {
                  break;
                }
              }
            }

LABEL_59:
            v13 += 4;
            if (v10 == v12)
            {
              goto LABEL_69;
            }
          }

          v29 = &v27[v28];
          v30 = v13 + v25 + v15 + v26;
          while (1)
          {
            v32 = v27[1];
            ++v27;
            v31 = v32;
            v33 = (v27 + v32);
            v34 = sub_22EE903F8(v33);
            v35 = v34;
            if (!v34)
            {
              v41 = __error();
              v42 = *v41;
              v43 = sub_22EE82CE0(v41);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                sub_22EEA8930(buf, v33, &v93, v43);
              }

              *__error() = v42;
              goto LABEL_33;
            }

            v36 = &v34[-*v34];
            if (*v36 >= 5u)
            {
              if (*(v36 + 2))
              {
                *uu2 = 0;
                *&uu2[8] = 0;
                v37 = &v34[*&v34[-*v34 + 4]];
                uuid_parse(&v37[*v37 + 4], uu2);
                if (!uuid_is_null(uu2))
                {
                  break;
                }
              }
            }

LABEL_33:
            v30 += 4;
            if (v27 == v29)
            {
              goto LABEL_59;
            }
          }

          if (!uuid_is_null(uu))
          {
            if (!uuid_compare(uu, uu2))
            {
              v44 = (v35 - *v35);
              if (*v44 >= 7u)
              {
                v45 = v44[3];
                if (v45)
                {
                  v46 = v35 + v45 + *(v35 + v45);
                  if (v46[4] == 47)
                  {
                    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:v46 + 4];

                    v80 = v59;
                    goto LABEL_59;
                  }
                }
              }
            }

            goto LABEL_55;
          }

          v38 = v14;
          v39 = (v33 - *v33);
          v40 = *v39;
          if (v40 < 0xD)
          {
            if (v40 < 9)
            {
              goto LABEL_54;
            }
          }

          else if (v39[6])
          {
            if (*(v33 + v39[6]))
            {
              if (v39[5])
              {
                v14 = *(v33 + v39[5]);
                if (v14 != -1)
                {
                  goto LABEL_49;
                }
              }
            }
          }

          v47 = v39[4];
          if (v39[4])
          {
            v48 = *(v33 + v47);
            v49 = *(v33 + v47 + v48);
            if (v49)
            {
              v50 = 0;
              v51 = 4 * v49;
              v52 = v30 + v31 + v48 + v47;
              v14 = -1;
              do
              {
                v53 = *(v52 + v50);
                v54 = v53 - *(v52 + v50 + v53);
                if (*(v52 + v50 + v54) >= 7u)
                {
                  if (*(v52 + v50 + v54 + 6))
                  {
                    v55 = *(v52 + v53 + *(v52 + v50 + v54 + 6) + v50);
                    if (v55 < v14)
                    {
                      v14 = v55;
                    }
                  }
                }

                v50 += 4;
              }

              while (v51 != v50);
LABEL_49:
              if (v14 < v38)
              {
                uuid_copy(dst, uu2);
                v56 = (v35 - *v35);
                if (*v56 >= 7u && (v57 = v56[3]) != 0 && *(v35 + v57 + *(v35 + v57) + 4) == 47)
                {
                  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35 + v57 + *(v35 + v57) + 4];
                }

                else
                {
                  v58 = 0;
                }

                goto LABEL_56;
              }
            }
          }

LABEL_54:
          v14 = v38;
LABEL_55:
          v58 = v83;
LABEL_56:
          v83 = v58;
          goto LABEL_33;
        }

        v80 = 0;
        v83 = 0;
        v14 = -1;
LABEL_69:
        if (uuid_is_null(uu))
        {
          if (v14 == -1)
          {
            v74 = __error();
            v75 = *v74;
            v76 = sub_22EE82CE0(v74);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA89A4();
            }

            v68 = 0;
            *__error() = v75;
          }

          else
          {
            v66 = MEMORY[0x277D4B410];
            v67 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:dst];
            v68 = [v66 binaryWithUUID:v67 absolutePath:v83];

            v69 = __error();
            v70 = *v69;
            v71 = sub_22EE82CE0(v69);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              v78 = [v68 uuid];
              v79 = [v78 UUIDString];
              *uu2 = 67109634;
              *&uu2[4] = a2;
              *&uu2[8] = 2048;
              *&uu2[10] = v14;
              v90 = 2114;
              v91 = v79;
              _os_log_debug_impl(&dword_22EE81000, v71, OS_LOG_TYPE_DEBUG, "No MainBinaryUuid in ktrace flatbuffer for target pid [%d], assuming lowest binary %#llx %{public}@", uu2, 0x1Cu);
            }

            *__error() = v70;
          }
        }

        else
        {
          v72 = MEMORY[0x277D4B410];
          v73 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
          v68 = [v72 binaryWithUUID:v73 absolutePath:v80];
        }

        v2 = v68;

        goto LABEL_79;
      }

      v64 = __error();
      v61 = *v64;
      v65 = sub_22EE82CE0(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA88C0();
      }

      v63 = __error();
    }

    else
    {
      v60 = __error();
      v61 = *v60;
      v62 = sub_22EE82CE0(v60);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8A14();
      }

      v63 = __error();
    }

    v2 = 0;
    *v63 = v61;
LABEL_79:
  }

  return v2;
}

void sub_22EE8F660(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D398;
  v11 = off_27DA9D398;
  if (!off_27DA9D398)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_recording_init_from_live_recording");
    off_27DA9D398 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_recording_init_from_live_recording(hwtrace_live_recording_t, hwtrace_recording_t *)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8F7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8F7E4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D3A0;
  v11 = off_27DA9D3A0;
  if (!off_27DA9D3A0)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_recording_save_to_ktrace");
    off_27DA9D3A0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_recording_save_to_ktrace(hwtrace_recording_t, ktrace_file_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8F968(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D3A8;
  v9 = off_27DA9D3A8;
  if (!off_27DA9D3A8)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_recording_deinit");
    off_27DA9D3A8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_recording_deinit(hwtrace_recording_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:61 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE8FAE4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (v4 == -1)
  {
    st_size = 0;
  }

  else
  {
    if (fstat(v4, &v19))
    {
      v5 = __error();
      v6 = *v5;
      v7 = sub_22EE82CE0(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = __error();
        sub_22EEA8A84(v8, v9, v18, v7);
      }

      st_size = 0;
      *__error() = v6;
    }

    else
    {
      st_size = v19.st_size;
    }

    close(*(a1 + 56));
  }

  v11 = __error();
  v12 = *v11;
  v13 = sub_22EE82CE0(v11);
  v14 = v13;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 60);
      v19.st_dev = 134218498;
      *&v19.st_mode = st_size;
      WORD2(v19.st_ino) = 2114;
      *(&v19.st_ino + 6) = v15;
      HIWORD(v19.st_gid) = 1024;
      v19.st_rdev = v16;
      _os_log_impl(&dword_22EE81000, v14, OS_LOG_TYPE_DEFAULT, "Saved %{bytes}lld tailspin on behalf of %{public}@ [%d]", &v19, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA8AE0();
  }

  *__error() = v12;
  [*(a1 + 40) stopRecordingTimeForAugmentPhase:a2 == 1 finalSizeBytes:st_size];
  return (*(*(a1 + 48) + 16))();
}

void sub_22EE8FCD0(int a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x277D85DE8];
  a2;
  mach_get_times();
  _os_assert_log();
  _os_crash();
  sub_22EEA88BC();
}

uint64_t sub_22EE90088(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a1 + 32) <= a2)
  {
    v3 = (a3 >> 2 != 12599332) | *(a1 + 40) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22EE900C0(uint64_t a1, uint64_t a2)
{
  v3 = tailspin_write_metadata_chunk(a2, *(a1 + 72), *(a1 + 32), *(a1 + 80));
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = v3;
    *(*(*(a1 + 48) + 8) + 24) = 16;
  }

  if (*(a1 + 88) == 1)
  {
    fcntl(*(a1 + 84), 51);
    v4 = __error();
    v5 = *v4;
    v6 = sub_22EE82CE0(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA8E18();
    }

    *__error() = v5;
  }

  if (ktrace_file_earliest_timestamp())
  {
    v7 = __error();
    v8 = *v7;
    v9 = sub_22EE82CE0(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8E4C();
    }

    *__error() = v8;
  }

  result = ktrace_file_ktrace_event_count();
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

intptr_t sub_22EE901E4(uint64_t a1)
{
  mach_get_times();
  [*(a1 + 32) recordTimeForSaveStandardChunksWithoutPostProcessing:0];
  [*(a1 + 32) startRecordingTimeForLibktracePostProcessing];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_22EE90244(uint64_t a1)
{
  [*(a1 + 32) stopRecordingTimeForLibktracePostProcessing];
  ktrace_session_destroy();
  sub_22EE8FCD0(*(*(*(a1 + 72) + 8) + 24), *(a1 + 32), *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 88) + 8) + 24), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(*(*(a1 + 96) + 8) + 24));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22EE903B0;
  v10[3] = &unk_278871048;
  v15 = *(a1 + 144);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v18 = *(a1 + 156);
  v4 = *(a1 + 152);
  v16 = *(a1 + 148);
  v17 = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v3;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v19 = *(a1 + 157);
  v14 = *(a1 + 136);
  v13 = *(a1 + 64);
  dispatch_async(v2, v10);
}

char *sub_22EE903F8(int *a1)
{
  v1 = (a1 - *a1);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(a1 + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return a1 + v4 + *(a1 + v4);
  }

  else
  {
    return 0;
  }
}

void sub_22EE90444(void **a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  if (!a2)
  {
    sub_22EEA659C();
  }

  v9 = 1152000;
  v4 = malloc_type_malloc(0x119400uLL, 0x1000040E0EAB150uLL);
  *a1 = v4;
  if (!v4)
  {
    sub_22EEA659C();
  }

  *v10 = 0x1800000001;
  v11 = 21;
  if (sysctl(v10, 3u, v4, &v9, 0, 0) < 0)
  {
    v6 = __error();
    v7 = *v6;
    v8 = sub_22EE82CE0(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8EBC();
    }

    *__error() = v7;
    free(*a1);
    LODWORD(v5) = 0;
    *a1 = 0;
  }

  else
  {
    v5 = v9 >> 5;
  }

  *a2 = v5;
}

void *sub_22EE90574(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_serialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE905C4()
{
  v13 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = qword_27DA9D2D0;
  v10 = qword_27DA9D2D0;
  if (!qword_27DA9D2D0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = sub_22EE90790;
    v4[4] = &unk_2788710D8;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_2788710B8;
    v12 = 0;
    v8[3] = _sl_dlopen();
    qword_27DA9D2D0 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libhwtrace_privateLibrary()"];
    [v0 handleFailureInFunction:v3 file:@"AppleHWTrace_SoftLinking.h" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_22EE9075C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE90790(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D2D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90828(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_topology");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90878(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_topology_systems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE908C8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_system_name");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90918(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90968(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_set_session_policy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE909B8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_set_background");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90A08(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_add_system");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90A58(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_trace_mode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90AA8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_driver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90AF8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_production");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90B48(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_context_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D328 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90B98(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_exception_level_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90BE8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_init_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90C38(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D340 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90C88(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D348 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90CD8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D350 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90D28(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_uuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D358 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90D78(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D360 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90DC8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_init_from_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D368 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90E18(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D370 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90E68(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D378 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90EB8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_set_ktrace_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D380 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90F08(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D388 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90F58(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90FA8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_init_from_live_recording");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D398 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90FF8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_save_to_ktrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE91048(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE91098(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE910E8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_stop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE91138(void *a1, const char *a2, unint64_t a3)
{
  if (a2 && (a1[1] < 8uLL || strncmp((*a1 + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = sub_22EE911C4(a1, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*a1 + a3 + v5);

  return sub_22EE91214(v6, a1);
}

uint64_t sub_22EE911C4(uint64_t a1, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*a1 + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

uint64_t sub_22EE91214(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = *a1;
      v6 = -v5;
      v7 = (a1 - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = sub_22EE9158C(a2, (a1 + v8 + *(a1 + v8)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*a1;
        }
      }

      v9 = (a1 + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (a1 + v10 + *(a1 + v10));
      }

      else
      {
        v11 = 0;
      }

      result = sub_22EE913DC(a2, v11);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v12 = *a1;
          v13 = -v12;
          v14 = (a1 - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
            if (v15)
            {
              result = sub_22EE9158C(a2, (a1 + v15 + *(a1 + v15)), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*a1;
            }
          }

          v16 = (a1 + v13);
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (a1 + v17 + *(a1 + v17));
          }

          else
          {
            v18 = 0;
          }

          result = sub_22EE91458(a2, v18);
          if (result)
          {
            --*(a2 + 16);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE913DC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE915FC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91458(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE93B1C((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE914D4(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[5])
  {
    return 0;
  }

  v4 = a1[1];
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(a1 + 5);
  v8 = *(a1 + 4) + 1;
  *(a1 + 4) = v8;
  v9 = *(a1 + 6) + 1;
  *(a1 + 6) = v9;
  if (v8 > v7 || v9 > *(a1 + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((a1[5] & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (a1[5])
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL sub_22EE9158C(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v4 = a2 - *a1;
  if (v4 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(a1 + 8);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

uint64_t sub_22EE915FC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = sub_22EE91380(a1, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (a1 - *a1);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }
  }

  else if (v8[3])
  {
    v10 = (a1 + v8[3] + *(a1 + v8[3]));
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + v11);
  if (v12 == 3)
  {
    if (v10)
    {
      result = sub_22EE9230C(v10, a2);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_26;
  }

  if (v12 == 2)
  {
    if (!v10 || sub_22EE91E8C(v10, a2))
    {
      goto LABEL_26;
    }

    return 0;
  }

  v13 = v12 != 1 || v10 == 0;
  if (!v13 && !sub_22EE91950(v10, a2))
  {
    return 0;
  }

LABEL_26:
  result = sub_22EE91380(a1, a2, 8u);
  if (!result)
  {
    return result;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 9u)
  {
    v17 = v16[4];
    if (v17)
    {
      result = sub_22EE9158C(a2, (a1 + v17 + *(a1 + v17)), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v15 = -*a1;
    }
  }

  v18 = (a1 + v15);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = (a1 + v19 + *(a1 + v19));
  }

  else
  {
    v20 = 0;
  }

  result = sub_22EE91858(a2, v20);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 0xAu);
    if (result)
    {
      v21 = *a1;
      v22 = -v21;
      v23 = (a1 - v21);
      if (*v23 >= 0xBu)
      {
        v24 = v23[5];
        if (v24)
        {
          result = sub_22EE9158C(a2, (a1 + v24 + *(a1 + v24)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v22 = -*a1;
        }
      }

      v25 = (a1 + v22);
      if (*v25 >= 0xBu && (v26 = v25[5]) != 0)
      {
        v27 = (a1 + v26 + *(a1 + v26));
      }

      else
      {
        v27 = 0;
      }

      result = sub_22EE918D4(a2, v27);
      if (result)
      {
        --*(a2 + 16);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22EE91858(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE925E8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE918D4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE939D8((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91950(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 8), v12 >= 9) && v12 - 8 >= a1 + v11 - *a2))
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = (a1 + v14 + *(a1 + v14));
            }

            else
            {
              v15 = 0;
            }

            result = sub_22EE91B8C(a2, v15);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = *a1;
                v17 = -v16;
                v18 = (a1 - v16);
                if (*v18 >= 0xDu)
                {
                  v19 = v18[6];
                  if (v19)
                  {
                    result = sub_22EE9158C(a2, (a1 + v19 + *(a1 + v19)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*a1;
                  }
                }

                v20 = (a1 + v17);
                if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                {
                  v22 = (a1 + v21 + *(a1 + v21));
                }

                else
                {
                  v22 = 0;
                }

                result = sub_22EE91C08(a2, v22);
                if (result)
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v23 = (a1 - *a1);
                    if (*v23 < 0xFu || (v24 = v23[7]) == 0 || (result = sub_22EE91DCC((a1 + v24 + *(a1 + v24)), a2)))
                    {
                      --*(a2 + 16);
                      return 1;
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

  return result;
}

BOOL sub_22EE91B8C(void *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = sub_22EE9158C(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = a1[1];
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL sub_22EE91C08(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE91C84((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91C84(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 8), v8 >= 9) && v8 - 8 >= a1 + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v9 - *a2)))
    {
      result = sub_22EE91380(a1, a2, 0xAu);
      if (result)
      {
        v11 = (a1 - *a1);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0 || (result = sub_22EE9158C(a2, (a1 + v12 + *(a1 + v12)), 1uLL, 0)))
        {
          --*(a2 + 16);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_22EE91DCC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 8), v9 >= 9) && v9 - 8 >= a1 + v8 - *a2))
    {
      --*(a2 + 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_22EE91E8C(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = (a1 + v9 + *(a1 + v9));
          }

          else
          {
            v10 = 0;
          }

          result = sub_22EE91B8C(a2, v10);
          if (result)
          {
            v11 = (a1 - *a1);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 8), v13 >= 9) && v13 - 8 >= a1 + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 8), v15 >= 9) && v15 - 8 >= a1 + v14 - *a2))
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = (a1 - *a1);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = sub_22EE92214((a1 + v17 + *(a1 + v17)), a2)))
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v18 = (a1 - *a1);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = (a1 + v19 + *(a1 + v19));
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = sub_22EE91B8C(a2, v20);
                    if (result)
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v21 = (a1 - *a1);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = (a1 + v22 + *(a1 + v22));
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = sub_22EE91B8C(a2, v23);
                        if (result)
                        {
                          result = sub_22EE91380(a1, a2, 0x12u);
                          if (result)
                          {
                            v24 = (a1 - *a1);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = (a1 + v25 + *(a1 + v25));
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = sub_22EE91B8C(a2, v26);
                            if (result)
                            {
                              result = sub_22EE91380(a1, a2, 0x14u);
                              if (result)
                              {
                                v27 = (a1 - *a1);
                                if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
                                {
                                  v29 = (a1 + v28 + *(a1 + v28));
                                }

                                else
                                {
                                  v29 = 0;
                                }

                                result = sub_22EE91B8C(a2, v29);
                                if (result)
                                {
                                  result = sub_22EE91380(a1, a2, 0x16u);
                                  if (result)
                                  {
                                    v30 = (a1 - *a1);
                                    if (*v30 >= 0x17u && (v31 = v30[11]) != 0)
                                    {
                                      v32 = (a1 + v31 + *(a1 + v31));
                                    }

                                    else
                                    {
                                      v32 = 0;
                                    }

                                    result = sub_22EE91B8C(a2, v32);
                                    if (result)
                                    {
                                      result = sub_22EE91380(a1, a2, 0x18u);
                                      if (result)
                                      {
                                        v33 = (a1 - *a1);
                                        if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
                                        {
                                          v35 = (a1 + v34 + *(a1 + v34));
                                        }

                                        else
                                        {
                                          v35 = 0;
                                        }

                                        result = sub_22EE91B8C(a2, v35);
                                        if (result)
                                        {
                                          --*(a2 + 16);
                                          return 1;
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

  return result;
}

BOOL sub_22EE92214(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 5) && v7 - 4 >= a1 + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 8), v8 >= 5) && v8 - 4 >= a1 + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 8), v10 >= 5) && v10 - 4 >= a1 + v9 - *a2)))
    {
      --*(a2 + 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_22EE9230C(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = (a1 + v9 + *(a1 + v9));
          }

          else
          {
            v10 = 0;
          }

          result = sub_22EE91B8C(a2, v10);
          if (result)
          {
            v11 = (a1 - *a1);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 8), v13 >= 9) && v13 - 8 >= a1 + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 8), v15 >= 9) && v15 - 8 >= a1 + v14 - *a2))
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = (a1 - *a1);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = sub_22EE92214((a1 + v17 + *(a1 + v17)), a2)))
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v18 = (a1 - *a1);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = (a1 + v19 + *(a1 + v19));
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = sub_22EE91B8C(a2, v20);
                    if (result)
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v21 = (a1 - *a1);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = (a1 + v22 + *(a1 + v22));
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = sub_22EE91B8C(a2, v23);
                        if (result)
                        {
                          result = sub_22EE91380(a1, a2, 0x12u);
                          if (result)
                          {
                            v24 = (a1 - *a1);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = (a1 + v25 + *(a1 + v25));
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = sub_22EE91B8C(a2, v26);
                            if (result)
                            {
                              v27 = (a1 - *a1);
                              if (*v27 < 0x15u || (v28 = v27[10]) == 0 || (result = 0, v29 = *(a2 + 8), v29 >= 9) && v29 - 8 >= a1 + v28 - *a2)
                              {
                                --*(a2 + 16);
                                return 1;
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE925E8(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = sub_22EE91380(a1, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (a1 - *a1);
  v9 = *v8;
  if (v9 >= 7)
  {
    if (v8[3])
    {
      v10 = (a1 + v8[3] + *(a1 + v8[3]));
LABEL_12:
      v11 = v8[2];
      if (v11)
      {
        if (v10)
        {
          if (*(a1 + v11) == 1)
          {
            result = sub_22EE91E8C(v10, a2);
            if (!result)
            {
              return result;
            }
          }
        }
      }

      goto LABEL_16;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (v9 >= 5)
  {
    goto LABEL_11;
  }

LABEL_16:
  result = sub_22EE91380(a1, a2, 8u);
  if (!result)
  {
    return result;
  }

  v12 = *a1;
  v13 = -v12;
  v14 = (a1 - v12);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      result = sub_22EE9158C(a2, (a1 + v15 + *(a1 + v15)), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v13 = -*a1;
    }
  }

  v16 = (a1 + v13);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (a1 + v17 + *(a1 + v17));
  }

  else
  {
    v18 = 0;
  }

  result = sub_22EE92860(a2, v18);
  if (result)
  {
    v19 = (a1 - *a1);
    v20 = *v19;
    if (v20 < 0xB || (!v19[5] || (result = 0, v21 = *(a2 + 8), v21 >= 9) && v21 - 8 >= a1 + v19[5] - *a2) && (v20 < 0xD || (!v19[6] || (result = 0, v22 = *(a2 + 8), v22 >= 2) && v22 - 1 >= a1 + v19[6] - *a2) && (v20 < 0xF || (!v19[7] || (result = 0, v23 = *(a2 + 8), v23 >= 2) && v23 - 1 >= a1 + v19[7] - *a2) && (v20 < 0x11 || (v24 = v19[8]) == 0 || (result = 0, v25 = *(a2 + 8), v25 >= 5) && v25 - 4 >= a1 + v24 - *a2))))
    {
      --*(a2 + 16);
      return 1;
    }
  }

  return result;
}

uint64_t sub_22EE92860(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE928DC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE928DC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 8), v12 >= 9) && v12 - 8 >= a1 + v11 - *a2))
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = *a1;
            v14 = -v13;
            v15 = (a1 - v13);
            if (*v15 >= 0xBu)
            {
              v16 = v15[5];
              if (v16)
              {
                result = sub_22EE9158C(a2, (a1 + v16 + *(a1 + v16)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v14 = -*a1;
              }
            }

            v17 = (a1 + v14);
            if (*v17 >= 0xBu && (v18 = v17[5]) != 0)
            {
              v19 = (a1 + v18 + *(a1 + v18));
            }

            else
            {
              v19 = 0;
            }

            result = sub_22EE92D80(a2, v19);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v20 = *a1;
                v21 = -v20;
                v22 = (a1 - v20);
                if (*v22 >= 0xDu)
                {
                  v23 = v22[6];
                  if (v23)
                  {
                    result = sub_22EE9158C(a2, (a1 + v23 + *(a1 + v23)), 1uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v21 = -*a1;
                  }
                }

                v24 = (a1 + v21);
                v25 = *v24;
                if (v25 < 0xF || (!v24[7] || (result = 0, v26 = *(a2 + 8), v26 >= 9) && v26 - 8 >= a1 + v24[7] - *a2) && (v25 < 0x11 || (!v24[8] || (result = 0, v27 = *(a2 + 8), v27 >= 2) && v27 - 1 >= a1 + v24[8] - *a2) && (v25 < 0x13 || (!v24[9] || (result = 0, v28 = *(a2 + 8), v28 >= 2) && v28 - 1 >= a1 + v24[9] - *a2) && (v25 < 0x15 || (v29 = v24[10]) == 0 || (result = 0, v30 = *(a2 + 8), v30 >= 2) && v30 - 1 >= a1 + v29 - *a2))))
                {
                  result = sub_22EE91380(a1, a2, 0x16u);
                  if (result)
                  {
                    v31 = *a1;
                    v32 = -v31;
                    v33 = (a1 - v31);
                    if (*v33 >= 0x17u)
                    {
                      v34 = v33[11];
                      if (v34)
                      {
                        result = sub_22EE9158C(a2, (a1 + v34 + *(a1 + v34)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v32 = -*a1;
                      }
                    }

                    v35 = (a1 + v32);
                    if (*v35 >= 0x17u && (v36 = v35[11]) != 0)
                    {
                      v37 = (a1 + v36 + *(a1 + v36));
                    }

                    else
                    {
                      v37 = 0;
                    }

                    result = sub_22EE92DFC(a2, v37);
                    if (result)
                    {
                      result = sub_22EE91380(a1, a2, 0x18u);
                      if (result)
                      {
                        v38 = *a1;
                        v39 = -v38;
                        v40 = (a1 - v38);
                        if (*v40 >= 0x19u)
                        {
                          v41 = v40[12];
                          if (v41)
                          {
                            result = sub_22EE9158C(a2, (a1 + v41 + *(a1 + v41)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v39 = -*a1;
                          }
                        }

                        v42 = (a1 + v39);
                        if (*v42 >= 0x19u && (v43 = v42[12]) != 0)
                        {
                          v44 = (a1 + v43 + *(a1 + v43));
                        }

                        else
                        {
                          v44 = 0;
                        }

                        result = sub_22EE92E78(a2, v44);
                        if (result)
                        {
                          result = sub_22EE91380(a1, a2, 0x1Au);
                          if (result)
                          {
                            v45 = *a1;
                            v46 = -v45;
                            v47 = (a1 - v45);
                            if (*v47 >= 0x1Bu)
                            {
                              v48 = v47[13];
                              if (v48)
                              {
                                result = sub_22EE9158C(a2, (a1 + v48 + *(a1 + v48)), 4uLL, 0);
                                if (!result)
                                {
                                  return result;
                                }

                                v46 = -*a1;
                              }
                            }

                            v49 = (a1 + v46);
                            if (*v49 >= 0x1Bu && (v50 = v49[13]) != 0)
                            {
                              v51 = (a1 + v50 + *(a1 + v50));
                            }

                            else
                            {
                              v51 = 0;
                            }

                            result = sub_22EE92E78(a2, v51);
                            if (result)
                            {
                              --*(a2 + 16);
                              return 1;
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE92D80(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE92EF4((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE92DFC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE93740((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE92E78(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE938A0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE92EF4(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 8), v9 >= 9) && v9 - 8 >= a1 + v8 - *a2))
    {
      result = sub_22EE91380(a1, a2, 8u);
      if (result)
      {
        v10 = (a1 - *a1);
        if (*v10 >= 9u && (v11 = v10[4]) != 0)
        {
          v12 = (a1 + v11 + *(a1 + v11));
        }

        else
        {
          v12 = 0;
        }

        result = sub_22EE91B8C(a2, v12);
        if (result)
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = (a1 + v14 + *(a1 + v14));
            }

            else
            {
              v15 = 0;
            }

            result = sub_22EE91B8C(a2, v15);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = *a1;
                v17 = -v16;
                v18 = (a1 - v16);
                if (*v18 >= 0xDu)
                {
                  v19 = v18[6];
                  if (v19)
                  {
                    result = sub_22EE9158C(a2, (a1 + v19 + *(a1 + v19)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*a1;
                  }
                }

                v20 = (a1 + v17);
                if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                {
                  v22 = (a1 + v21 + *(a1 + v21));
                }

                else
                {
                  v22 = 0;
                }

                result = sub_22EE93210(a2, v22);
                if (result)
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v23 = (a1 - *a1);
                    if (*v23 < 0xFu || (v24 = v23[7]) == 0 || (result = sub_22EE9158C(a2, (a1 + v24 + *(a1 + v24)), 1uLL, 0), result))
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v25 = *a1;
                        v26 = -v25;
                        v27 = (a1 - v25);
                        if (*v27 >= 0x11u)
                        {
                          v28 = v27[8];
                          if (v28)
                          {
                            result = sub_22EE9158C(a2, (a1 + v28 + *(a1 + v28)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v26 = -*a1;
                          }
                        }

                        v29 = (a1 + v26);
                        if (*v29 >= 0x11u && (v30 = v29[8]) != 0)
                        {
                          v31 = (a1 + v30 + *(a1 + v30));
                        }

                        else
                        {
                          v31 = 0;
                        }

                        result = sub_22EE9328C(a2, v31);
                        if (result)
                        {
                          v32 = (a1 - *a1);
                          if (*v32 < 0x13u || (v33 = v32[9]) == 0 || (result = 0, v34 = *(a2 + 8), v34 >= 9) && v34 - 8 >= a1 + v33 - *a2)
                          {
                            --*(a2 + 16);
                            return 1;
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
      }
    }
  }

  return result;
}
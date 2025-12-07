void sub_23834D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23834D0FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23834D114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_23834D580(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_domain(v9, v10, v11, v12, v13);
    if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CC6330], v17, v18))
    {
      v23 = objc_msgSend_code(v14, v19, v20, v21, v22);

      if (!v23)
      {
        v24 = *(*(a1 + 32) + 16);
LABEL_8:
        v24();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v24 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v25 = *(a1 + 32);
  v26 = objc_msgSend_remoteObjectProxyCreating(v7, v10, v11, v12, v13);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23834D6F4;
  v27[3] = &unk_278A50860;
  v28 = v7;
  (*(v25 + 16))(v25, v26, v8, v27, 0);

LABEL_9:
}

void sub_23834D810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_domain(v9, v10, v11, v12, v13);
    if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CC6330], v17, v18))
    {
      v23 = objc_msgSend_code(v14, v19, v20, v21, v22);

      if (!v23)
      {
        v24 = *(*(a1 + 32) + 16);
LABEL_8:
        v24();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v24 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v25 = *(a1 + 32);
  v26 = objc_msgSend_remoteObjectProxyCreating(v7, v10, v11, v12, v13);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23834D978;
  v27[3] = &unk_278A50860;
  v28 = v7;
  (*(v25 + 16))(v25, v26, v27, 0);

LABEL_9:
}

void sub_23834DD98(uint64_t a1, void *a2)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA050];
  v32[0] = *MEMORY[0x277CC6300];
  v32[1] = v3;
  v32[2] = *MEMORY[0x277CCA5B8];
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v8 = objc_msgSend_arrayWithObjects_count_(v4, v6, v32, 3, v7);
  v12 = objc_msgSend_fp_unwrappedErrorForDomains_(v5, v9, v8, v10, v11);

  if (objc_msgSend_fp_isPOSIXErrorCode_(v12, v13, 16, v14, v15))
  {
    v20 = objc_msgSend_userInfo(v5, v16, v17, v18, v19);

    v5 = objc_msgSend_objectForKey_(v20, v21, *MEMORY[0x277CCA068], v22, v23);

    v24 = *(a1 + 32);
    v25 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA7E8];
    v31 = v12;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v31, &v30, 1);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v28, v3, 255, v27);
    (*(v24 + 16))(v24, 1, v29);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id fp_backtrace()
{
  MEMORY[0x28223BE20]();
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x2000uLL);
  sub_23834EE04(v5);
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v0, v5, v1, v2);

  return v3;
}

void fp_backtrace_exception_snprint(char *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18 = objc_msgSend_callStackSymbols(a3, a2, a3, a4, a5);
  v11 = objc_msgSend_description(v18, v7, v8, v9, v10);
  v12 = v11;
  v17 = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
  snprintf(a1, a2, "%s", v17);
}

void FPCaptureLogsForOperation(void *a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_domain(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_code(v7, v14, v15, v16, v17);
  v22 = objc_msgSend_stringWithFormat_(v8, v19, @"%@.%ld", v20, v21, v13, v18);

  v27 = objc_msgSend_underlyingErrors(v7, v23, v24, v25, v26);

  if (v27)
  {
    v60 = v5;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v33 = objc_msgSend_underlyingErrors(v7, v29, v30, v31, v32);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v61, v71, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v62;
      do
      {
        v42 = 0;
        v43 = v22;
        do
        {
          if (*v62 != v41)
          {
            objc_enumerationMutation(v33);
          }

          v44 = *(*(&v61 + 1) + 8 * v42);
          v45 = objc_msgSend_domain(v44, v36, v37, v38, v39);
          v50 = objc_msgSend_code(v44, v46, v47, v48, v49);
          v22 = objc_msgSend_stringByAppendingFormat_(v43, v51, @"%@.%ld", v52, v53, v45, v50);;

          ++v42;
          v43 = v22;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v61, v71, 16);
      }

      while (v40);
    }

    v5 = v60;
  }

  v54 = fp_current_or_default_log(v28);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v66 = v5;
    v67 = 2112;
    v68 = v6;
    v69 = 2112;
    v70 = v22;
    _os_log_debug_impl(&dword_23834C000, v54, OS_LOG_TYPE_DEBUG, "[DEBUG] Sending ABC report with signature: type = %@, subtype = %@, subtype context = %@", buf, 0x20u);
  }

  v56 = sub_23834E3C8(v55);
  v58 = objc_msgSend_signatureWithDomain_type_subType_subtypeContext_detectedProcess_triggerThresholdValues_(v56, v57, @"FileProvider", v5, v6, v22, @"fileproviderd", 0);
  objc_msgSend_snapshotWithSignature_duration_events_payload_actions_reply_(v56, v59, v58, 0, 0, 0, &unk_284B19B58, 15.0);
}

id fp_current_or_default_log(uint64_t a1)
{
  v1 = fpfs_current_log(a1);
  if (!v1)
  {
    v1 = fp_default_log(0);
  }

  return v1;
}

id sub_23834E3C8(uint64_t a1)
{
  if (qword_27DF08478 != -1)
  {
    sub_23834F08C();
  }

  v2 = qword_27DF08470;

  return v2;
}

void sub_23834E40C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *MEMORY[0x277D6B198], a4, a5);
  v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);

  v12 = fp_current_or_default_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v13)
    {
      sub_23834F0E0();
    }
  }

  else if (v13)
  {
    sub_23834F0A0();
  }
}

void sub_23834E48C()
{
  v0 = MEMORY[0x28223BE20]();
  v50 = *MEMORY[0x277D85DE8];
  v1 = v0;
  v6 = objc_msgSend_length(v1, v2, v3, v4, v5);
  v11 = v1;
  if (v6 >= 0x65)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_hash(v1, v7, v8, v9, v10);
    v17 = objc_msgSend_stringWithFormat_(v12, v14, @":0x%lx", v15, v16, v13);
    v22 = objc_msgSend_length(v17, v18, v19, v20, v21);
    v26 = objc_msgSend_substringToIndex_(v1, v23, 100 - v22, v24, v25);
    v11 = objc_msgSend_stringByAppendingString_(v26, v27, v17, v28, v29);
  }

  v30 = sub_23834E3C8(v6);
  v32 = objc_msgSend_signatureWithDomain_type_subType_detectedProcess_triggerThresholdValues_(v30, v31, @"Application", @"Functional", @"AssertionFailed", @"fileproviderd", 0);

  objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v11, *MEMORY[0x277D6B1F0], v34);
  bzero(v49, 0x2000uLL);
  sub_23834EE04(v49);
  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v49, v36, v37);
  v39 = sub_23834E3C8(v38);
  v47 = @"backtrace";
  v48 = v38;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v48, &v47, 1);
  v43 = objc_msgSend_snapshotWithSignature_duration_event_payload_reply_(v39, v42, v32, v41, 0, &unk_284B19B78, 15.0);

  v45 = fp_current_or_default_log(v44);
  v46 = v45;
  if (v43)
  {
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      sub_23834F198();
    }
  }

  else if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    sub_23834F120(v1, v46);
  }
}

void sub_23834E6D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F20C();
  }
}

void fp_simulate_crash(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);
  getpid();
  SimulateCrash();
  sub_23834E48C();
}

id fp_default_log(uint64_t a1)
{
  if (qword_27DF08420 != -1)
  {
    sub_23834F280();
  }

  v2 = qword_27DF08428;

  return v2;
}

uint64_t sub_23834E7DC()
{
  qword_27DF08428 = os_log_create("com.apple.FileProvider", "default");

  return MEMORY[0x2821F96F8]();
}

void *fpfs_current_log(uint64_t a1)
{
  if (qword_27DF08480 != -1)
  {
    sub_23834F294();
  }

  v2 = qword_27DF08448;

  return pthread_getspecific(v2);
}

uint64_t __fp_create_section()
{
  if (qword_27DF08440 != -1)
  {
    sub_23834F2A8();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23834E98C;
  block[3] = &unk_278A50918;
  block[4] = &v3;
  dispatch_sync(qword_27DF08438, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23834E928()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("create-log-section", v2);
  v1 = qword_27DF08438;
  qword_27DF08438 = v0;
}

uint64_t sub_23834E98C(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_27DF08430 + 1;
  qword_27DF08430 = *(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __fp_log_fork(uint64_t a1)
{
  section = __fp_create_section();
  v3 = fp_current_or_default_log(section);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F2BC(a1, section, v3);
  }

  return section;
}

void __fp_log_adopt(uint64_t *a1, uint64_t a2)
{
  v4 = fp_current_or_default_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F344(a1, a2, v4);
  }
}

void __fp_leave_section_Debug(uint64_t a1)
{
  v1 = fp_current_or_default_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F3F8();
  }
}

void __fp_leave_section_Notice(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = fp_current_or_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_23834C000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┗%llx ", &v4, 0xCu);
  }
}

void __fp_leave_section_Error(uint64_t *a1)
{
  v2 = fp_current_or_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_23834F470(a1, v2);
  }
}

void **__fp_pop_log(void **result)
{
  if (result)
  {
    return fpfs_adopt_log(*result);
  }

  return result;
}

id fpfs_adopt_log(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_27DF08480 != -1)
  {
    sub_23834F294();
  }

  v3 = fpfs_current_log(v1);
  v4 = qword_27DF08448;
  v5 = v2;
  pthread_setspecific(v4, v5);

  return v3;
}

os_log_t fpfs_create_log_for_provider(char *category)
{
  v1 = os_log_create("com.apple.FileProvider", category);

  return v1;
}

id fpfs_current_or_default_log(uint64_t a1)
{
  v1 = fpfs_current_log(a1);
  if (!v1)
  {
    if (qword_27DF08488 != -1)
    {
      sub_23834F4EC();
    }

    v1 = qword_27DF08490;
  }

  return v1;
}

id fssync_default_log(uint64_t a1)
{
  if (qword_27DF08450 != -1)
  {
    sub_23834F500();
  }

  v2 = qword_27DF08458;

  return v2;
}

uint64_t sub_23834ED38()
{
  qword_27DF08458 = os_log_create("com.apple.FileProvider", "fssync");

  return MEMORY[0x2821F96F8]();
}

id telemetry_default_log(uint64_t a1)
{
  if (qword_27DF08460 != -1)
  {
    sub_23834F514();
  }

  v2 = qword_27DF08468;

  return v2;
}

uint64_t sub_23834EDC0()
{
  qword_27DF08468 = os_log_create("com.apple.FileProvider", "telemetry");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23834EE04(char *a1)
{
  v23 = *MEMORY[0x277D85DE8];
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
  *v11 = 0u;
  v12 = 0u;
  result = backtrace(v11, 24);
  if (result)
  {
    v3 = 0;
    v4 = result;
    v5 = 0x2000;
    do
    {
      memset(&v10, 0, sizeof(v10));
      if (v3)
      {
        if (dladdr(v11[v3], &v10))
        {
          dli_sname = v10.dli_sname;
          v7 = rindex(v10.dli_fname, 47);
          dli_fname = v10.dli_fname;
          if (v7)
          {
            dli_fname = v7 + 1;
          }
        }

        else
        {
          dli_sname = &unk_23834FE1E;
          dli_fname = &unk_23834FE1E;
        }

        result = snprintf(a1, v5, "frame %d: %lld %s in %s\n", v3, v11[v3], dli_sname, dli_fname);
        v9 = v5 <= result;
        v5 -= result;
        if (v9)
        {
          return result;
        }

        a1 += result;
      }

      ++v3;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_23834EF3C()
{
  qword_27DF08470 = objc_alloc_init(MEMORY[0x277D6AFC8]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23834EF78()
{
  result = pthread_key_create(&qword_27DF08448, j__CFRelease);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_23834EFB4()
{
  qword_27DF08490 = os_log_create("com.apple.FileProvider", "fpfs");

  return MEMORY[0x2821F96F8]();
}

void sub_23834F004(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_23834C000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] found %@ as original URL to %@", &v3, 0x16u);
}

void sub_23834F120(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23834C000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to send snapshot for signature %@", &v2, 0xCu);
}

void sub_23834F2BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_debug_impl(&dword_23834C000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s", &v3, 0x16u);
}

void sub_23834F344(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 134218498;
  v6 = v4;
  v7 = 2080;
  v8 = a2;
  v9 = 1024;
  v10 = qos_class_self();
  _os_log_debug_impl(&dword_23834C000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s at QoS %d", &v5, 0x1Cu);
}

void sub_23834F470(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_23834C000, a2, OS_LOG_TYPE_ERROR, "[ERROR] ┗%llx ", &v3, 0xCu);
}
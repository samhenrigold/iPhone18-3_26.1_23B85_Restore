uint64_t sub_1000013E0(uint64_t a1, uint64_t a2)
{
  if (qword_1000310E0 != -1)
  {
    sub_100017444();
  }

  return qword_1000310E8;
}

id sub_100001D9C(uint64_t a1)
{
  v4 = @"skipCount";
  v1 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) skipCount]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100002024(uint64_t a1)
{
  v11[0] = @"user_time_ns";
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = @"system_time_ns";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v12[1] = v3;
  v11[2] = @"elapsed_time_ns";
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  v12[2] = v4;
  v11[3] = @"instructions";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v12[3] = v5;
  v11[4] = @"cycles";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v12[4] = v6;
  v11[5] = @"physical_footprint_MB";
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) physicalFootprintMB]);
  v12[5] = v7;
  v11[6] = @"lifetime_max_physical_footprint_MB";
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) lifetimeMaxPhysicalFootprintMB]);
  v12[6] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];

  return v9;
}

void *sub_1000022B8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000235C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100002374(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000023D0(exception, a1);
}

std::logic_error *sub_1000023D0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002404()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void ps_error_logger_dump_buffer(PSERRLOG::PSErrorLogger *result)
{
  if (result)
  {
    PSERRLOG::PSErrorLogger::dumpLogBufferSync(result);
  }
}

PSERRLOG::PSErrorLogger *PSERRLOG::PSErrorLogger::PSErrorLogger(PSERRLOG::PSErrorLogger *this)
{
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 24) = 0;
  shared_error_log = pbs_ringbuffer_create_shared_error_log();
  *this = shared_error_log;
  if (!shared_error_log)
  {
    v8 = 0;
    asprintf(&v8, "Failed creating the error logger");
    p_opt_inst_meths = &OBJC_PROTOCOL___NSXPCListenerDelegate.opt_inst_meths;
    if (qword_1000310F8 != -1)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v5 = qword_1000310F0;
      if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v10 = "PSErrorLogger";
        v11 = 1024;
        v12 = 22;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s:%d Failed creating the error logger", buf, 0x12u);
      }

      v6 = OSLogFlushBuffers();
      if (v6)
      {
        v7 = v6;
        if (p_opt_inst_meths[31].isa != -1)
        {
          sub_100017500();
        }

        p_opt_inst_meths = qword_1000310F0;
        if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v10 = "PSErrorLogger";
          v11 = 1024;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, p_opt_inst_meths, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
LABEL_13:
      sub_100017500();
    }
  }

  PSERRLOG::PSErrorLogger::_decodeInit(this);
  PSERRLOG::PSErrorLogger::_queueInit(this);
  return this;
}

void *PSERRLOG::PSErrorLogger::_decodeInit(PSERRLOG::PSErrorLogger *this)
{
  result = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *(this + 4) = result;
  if (!result)
  {
    v7 = 0;
    asprintf(&v7, "OOM. Aborting for mLineBuffer when creating PSErrorLogger");
    p_opt_inst_meths = &OBJC_PROTOCOL___NSXPCListenerDelegate.opt_inst_meths;
    if (qword_1000310F8 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v4 = qword_1000310F0;
      if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v9 = "_decodeInit";
        v10 = 1024;
        v11 = 93;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s:%d OOM. Aborting for mLineBuffer when creating PSErrorLogger", buf, 0x12u);
      }

      v5 = OSLogFlushBuffers();
      if (v5)
      {
        v6 = v5;
        if (p_opt_inst_meths[31].isa != -1)
        {
          sub_100017500();
        }

        p_opt_inst_meths = qword_1000310F0;
        if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v9 = "_decodeInit";
          v10 = 1024;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, p_opt_inst_meths, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
LABEL_12:
      sub_100017500();
    }
  }

  return result;
}

void PSERRLOG::PSErrorLogger::_queueInit(PSERRLOG::PSErrorLogger *this)
{
  v2 = dispatch_group_create();
  *(this + 2) = v2;
  if (!v2)
  {
    v11 = 0;
    asprintf(&v11, "Failed creating dispatch group for PSErrorLogger. Aborting.");
    p_opt_inst_meths = &OBJC_PROTOCOL___NSXPCListenerDelegate.opt_inst_meths;
    if (qword_1000310F8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v3 = dispatch_queue_create("polarisd-errLog-dispatch", 0);
  *(this + 1) = v3;
  if (!v3)
  {
    v11 = 0;
    asprintf(&v11, "Failed creating dispatch queue for PSErrorLogger. Aborting.");
    p_opt_inst_meths = &OBJC_PROTOCOL___NSXPCListenerDelegate.opt_inst_meths;
    if (qword_1000310F8 != -1)
    {
      sub_100017500();
    }

    v9 = qword_1000310F0;
    if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v13 = "_queueInit";
      v14 = 1024;
      v15 = 81;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s:%d Failed creating dispatch queue for PSErrorLogger. Aborting.", buf, 0x12u);
    }

    v10 = OSLogFlushBuffers();
    if (!v10)
    {
      while (1)
      {
        usleep(0x1E8480u);
LABEL_26:
        while (1)
        {
          abort_with_reason();
LABEL_27:
          sub_100017500();
LABEL_9:
          v6 = qword_1000310F0;
          if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v13 = "_queueInit";
            v14 = 1024;
            v15 = 77;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s:%d Failed creating dispatch group for PSErrorLogger. Aborting.", buf, 0x12u);
          }

          v7 = OSLogFlushBuffers();
          if (!v7)
          {
            break;
          }

          v8 = v7;
          if (p_opt_inst_meths[31].isa != -1)
          {
            sub_100017500();
          }

          p_opt_inst_meths = qword_1000310F0;
          if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            *buf = 136315394;
            v13 = "_queueInit";
            v14 = 1024;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, p_opt_inst_meths, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }
      }
    }

    v8 = v10;
    if (qword_1000310F8 != -1)
    {
      sub_100017500();
    }

    p_opt_inst_meths = qword_1000310F0;
    if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (qword_1000310F8 != -1)
  {
    sub_100017528();
  }

  v4 = qword_1000310F0;
  if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "_queueInit";
    v14 = 1024;
    v15 = 84;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d Start polling for error log", buf, 0x12u);
  }

  dispatch_group_enter(*(this + 2));
}

void PSERRLOG::PSErrorLogger::dumpLogBufferSync(PSERRLOG::PSErrorLogger *this)
{
  dispatch_group_enter(*(this + 2));
  v2 = atomic_load(this + 24);
  if (v2)
  {
    v3 = *(this + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100002BE0;
    block[3] = &unk_100028AA8;
    block[4] = this;
    dispatch_async_and_wait(v3, block);
  }

  dispatch_group_leave(*(this + 2));
}

void sub_100002BE0(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 24));
  if ((v1 & 1) == 0)
  {
    if (qword_1000310F8 != -1)
    {
      sub_100017528();
    }

    v2 = qword_1000310F0;
    if (os_log_type_enabled(qword_1000310F0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "dumpLogBufferSync_block_invoke";
      v5 = 1024;
      v6 = 139;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Error logger not running. Exit", &v3, 0x12u);
    }
  }
}

PSLOG::PSEventHandler *PSLOG::PSEventHandler::PSEventHandler(PSLOG::PSEventHandler *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  strcpy(v3, "/tmp/com.apple.polarisd/polaris-syshealth-report.XXXXXX");
  v4 = 0;
  *this = mkstemp(v3);
  *(this + 1) = dispatch_queue_create("polarisd-logger-dispatch", 0);
  return this;
}

ssize_t PSLOG::PSEventHandler::triggerDiagnosticRequest(int *a1, int a2, uint64_t a3)
{
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
  *v7 = 0u;
  v8 = 0u;
  if (ps_event_handler_trigger_dp(off_100028B08[a2], a3, v7))
  {
    snprintf(__str, 0x200uLL, "Event: %s PID: %d err=%d [%s]\n");
  }

  else
  {
    snprintf(__str, 0x200uLL, "Event: %s PID: %d Archive file: %s\n");
  }

  v4 = strlen(__str);
  return write(*a1, __str, v4 + 1);
}

ssize_t PSLOG::PSEventHandler::triggerLogArchive(int *a1, uint64_t a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  if (ps_event_handler_archive_all_log_files_for_pid(a3, v7))
  {
    snprintf(__str, 0x200uLL, "Event: %s PID: %d err=%d [%s]\n");
  }

  else
  {
    snprintf(__str, 0x200uLL, "Event: %s PID: %d Archive file: %s\n");
  }

  v4 = strlen(__str);
  return write(*a1, __str, v4 + 1);
}

void PSLOG::PSEventHandler::_reportOnError(uint64_t a1, int a2, uint64_t a3, const __CFData *a4)
{
  v7 = off_100028B08[a2];
  snprintf(__str, 0x80uLL, "\n[ %llu ] %s event: %s\n", a3, "Begin", v7);
  v8 = strlen(__str);
  write(*a1, __str, v8 + 1);
  switch(a2)
  {
    case 3:
      BytePtr = CFDataGetBytePtr(a4);
      PSLOG::PSEventHandler::triggerLogArchive(a1, 3, *BytePtr);
      ps_error_logger_dump_buffer(*(a1 + 16));
      break;
    case 2:
      v18 = CFDataGetBytePtr(a4);
      PSLOG::PSEventHandler::triggerDiagnosticRequest(a1, 2, *v18);
      break;
    case 1:
      v9 = *a1;
      v10 = CFDataGetBytePtr(a4);
      Length = CFDataGetLength(a4);
      write(v9, v10, Length);
      v12 = sub_1000045A8();
      if (v12)
      {
        v14 = v12;
        v15 = *a1;
        v16 = CFDataGetBytePtr(v12);
        v17 = CFDataGetLength(v14);
        write(v15, v16, v17);
        CFRelease(v14);
      }

      else
      {
        v22 = sub_100013BF4(0, v13);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to acquire liveness dump", buf, 2u);
        }
      }

      break;
  }

  v20 = mach_absolute_time();
  snprintf(__str, 0x80uLL, "[ %llu ] %s event: %s\n", v20, "End", v7);
  v21 = strlen(__str);
  write(*a1, __str, v21 + 1);
  CFRelease(a4);
}

void PSLOG::PSEventHandler::reportOnError(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100003280;
  v5[3] = &unk_100028B28;
  v6 = a2;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(v4, v5);
}

uint64_t ps_event_handler_archive_all_log_files_for_pid(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = sub_100013BF4(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Archive requested file: %s by pid: %d", buf, 0x12u);
  }

  memset(buf, 0, 37);
  *__nbyte = 37;
  v5 = sysctlbyname("kern.bootsessionuuid", buf, __nbyte, 0, 0);
  if (v5)
  {
    v7 = v5;
    v8 = sub_100013BF4(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 67109120;
      *&v96.st_mode = v7;
      v9 = "Unable to read boot session UUID string ret=%d";
      v10 = v8;
      v11 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, &v96, v11);
    }
  }

  else
  {
    v12 = open("/tmp/com.apple.polarisd/ps_log_boot_session.txt", 513);
    if ((v12 & 0x80000000) == 0)
    {
      v14 = v12;
      write(v12, buf, *__nbyte);
      close(v14);
      goto LABEL_10;
    }

    v8 = sub_100013BF4(v12, v13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = "/tmp/com.apple.polarisd/ps_log_boot_session.txt";
      v9 = "Unable to open %s for writing";
      v10 = v8;
      v11 = 12;
      goto LABEL_6;
    }
  }

LABEL_10:
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 contentsOfDirectoryAtPath:@"/tmp/com.apple.polarisd" error:0];

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100003C98;
  v75[3] = &unk_100028B50;
  v17 = objc_alloc_init(NSMutableArray);
  v76 = v17;
  v77 = @"/tmp/com.apple.polarisd";
  [v16 enumerateObjectsUsingBlock:v75];
  v18 = [v17 count];
  if (v18 <= 1)
  {
    v20 = sub_100013BF4(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No Archive written for pid=%d", buf, 8u);
    }

    v21 = 0xFFFFFFFFLL;
    goto LABEL_33;
  }

  if (!*a2)
  {
    strcpy(a2, "/tmp/com.apple.polarisd/polaris-syshealth.tgz");
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0x100uLL, "%s.tmp", a2);
  if (!archive_write_new())
  {
    v25 = sub_100013BF4(0, v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = a2;
      v26 = "Unable to create a new archive %s.";
      goto LABEL_30;
    }

LABEL_31:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  v23 = archive_write_add_filter_gzip();
  if (v23)
  {
    v25 = sub_100013BF4(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = a2;
      v26 = "Unable to set filter for archive %s";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, &v96, 0xCu);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v27 = archive_write_set_format_pax_restricted();
  if (v27)
  {
    v25 = sub_100013BF4(v27, v28);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = a2;
      v26 = "Unable to set format for archive %s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v29 = archive_write_open_filename();
  if (v29)
  {
    v25 = sub_100013BF4(v29, v30);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = a2;
      v26 = "Unable to open the new archive %s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v67 = v3;
  v68 = a2;
  v69 = v17;
  v70 = v16;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v32 = v17;
  v33 = [v32 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (!v33)
  {
    goto LABEL_60;
  }

  v34 = v33;
  v35 = *v72;
  do
  {
    for (i = 0; i != v34; i = i + 1)
    {
      if (*v72 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = [NSString stringWithFormat:@"%@", *(*(&v71 + 1) + 8 * i)];
      v38 = [v37 pathExtension];
      memset(&v96, 0, sizeof(v96));
      v39 = stat([v37 UTF8String], &v96);
      if (!v39)
      {
        if (archive_entry_new())
        {
          v45 = [v37 lastPathComponent];
          [v45 UTF8String];
          archive_entry_set_pathname();

          archive_entry_set_size();
          archive_entry_set_filetype();
          archive_entry_set_perm();
          v46 = archive_write_header();
          if (v46)
          {
            v48 = sub_100013BF4(v46, v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = [v37 UTF8String];
              *__nbyte = 136315138;
              *&__nbyte[4] = v49;
              v50 = v48;
              v51 = "Unable to set archive file header: %s";
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          if (sub_10000ACC8(v46, v47) && [v38 compare:@"tgz"] && objc_msgSend(v38, "compare:", @"txt"))
          {
            [v37 UTF8String];
            sub_1000040E0();
          }

          else
          {
            [v37 UTF8String];
            sub_100003F80();
          }

          archive_entry_free();
        }

        else
        {
          v48 = sub_100013BF4(0, v44);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v52 = [v37 UTF8String];
            *__nbyte = 136315138;
            *&__nbyte[4] = v52;
            v50 = v48;
            v51 = "Unable to write file: %s to archive";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v51, __nbyte, 0xCu);
          }

LABEL_50:
        }

        v53 = [v37 UTF8String];
        remove(v53, v54);
        goto LABEL_58;
      }

      v41 = sub_100013BF4(v39, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v37 UTF8String];
        v43 = *__error();
        *__nbyte = 136315394;
        *&__nbyte[4] = v42;
        v94 = 1024;
        v95 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Ignoring file: %s error=%d", __nbyte, 0x12u);
      }

LABEL_58:
    }

    v34 = [v32 countByEnumeratingWithState:&v71 objects:v78 count:16];
  }

  while (v34);
LABEL_60:

  v55 = archive_write_close();
  if (v55)
  {
    v25 = sub_100013BF4(v55, v56);
    v16 = v70;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = v68;
      v57 = "Unable to close the new archive %s";
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  v58 = archive_write_free();
  v16 = v70;
  if (!v58)
  {
    v60 = +[NSFileManager defaultManager];
    v61 = [NSString stringWithCString:buf encoding:4];
    v62 = [NSString stringWithCString:v68 encoding:4];
    v63 = [v60 moveItemAtPath:v61 toPath:v62 error:0];

    v66 = sub_100013BF4(v64, v65);
    v25 = v66;
    if (v63)
    {
      v17 = v69;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v96.st_dev = 67109120;
        *&v96.st_mode = v67;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Archive written for pid: %d", &v96, 8u);
      }

      v21 = 0;
      goto LABEL_32;
    }

    v17 = v69;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v96.st_dev = 136315138;
      *&v96.st_mode = v68;
      v26 = "Unable to remove the .tmp ending from %s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v25 = sub_100013BF4(v58, v59);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v96.st_dev = 136315138;
    *&v96.st_mode = v68;
    v57 = "Unable to free the new archive %s";
LABEL_66:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v57, &v96, 0xCu);
  }

LABEL_67:
  v21 = 0xFFFFFFFFLL;
  v17 = v69;
LABEL_32:

LABEL_33:
  return v21;
}

void sub_100003C98(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 lastPathComponent];
  v4 = [v3 containsString:@"ps_log"];

  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [v9 lastPathComponent];
    v8 = [v5 stringByAppendingPathComponent:v7];
    [v6 addObject:v8];
  }
}

uint64_t ps_event_handler_trigger_dp(const char *a1, uint64_t a2, char *__str)
{
  snprintf(__str, 0x100uLL, "/tmp/com.apple.polarisd/ps_log_file_archive-%d.tgz", a2);
  if (ps_event_handler_archive_all_log_files_for_pid(a2, __str))
  {
    v6 = 0;
    strcpy(__str, "No log files to archive");
  }

  else if (chown(__str, 0x1F5u, 0x1F5u))
  {
    strcpy(__str, "Unable to set owner for archive.");
    return 0xFFFFFFFFLL;
  }

  else
  {
    snprintf(__stra, 0x40uLL, "%s-%d", a1, a2);
    v7 = [NSString stringWithUTF8String:__stra];
    v8 = [NSString stringWithUTF8String:__str];
    DRSubmitLog();
    v9 = 0;

    if (v9)
    {
      v12 = sub_100013BF4(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v9 localizedDescription];
        *buf = 136315138;
        v16 = [v13 UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Errors detecting when submitting DP: %s", buf, 0xCu);
      }

      strcpy(__str, "Error submitting to Diagnostic Pipeline");
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_100003F4C()
{
  ps_gsm_log_decode_init();
  ps_log_decode_init();
  v0 = ps_liveness_log_decode_init();

  return _ps_ca_decode_init(v0);
}

uint64_t sub_100003F80()
{
  v0 = __chkstk_darwin();
  v1 = open(v0, 0);
  v2 = read(v1, v12, 0x2000uLL);
  if (v2 >= 1)
  {
    for (i = v2; i > 0; i = read(v1, v12, 0x2000uLL))
    {
      v4 = archive_write_data();
      if (v4 != i)
      {
        v6 = sub_100013BF4(v4, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v9 = i;
          v10 = 2080;
          v11 = v0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error writing binary data size=%ld to archive %s", buf, 0x16u);
        }
      }
    }
  }

  return close(v1);
}

void sub_1000040E0()
{
  v0 = __chkstk_darwin();
  v1 = strrchr(v0, 46);
  if (!v1 || (v2 = v1, v1 == v0))
  {

    sub_100003F80();
  }

  else
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2020000000;
    v6 = 0;
    v3 = strlen(off_100030CC8);
    if (!strncmp(v2 + 1, off_100030CC8, v3))
    {
      pbs_ringbuffer_dump_log_from_file();
    }

    else
    {
      v4 = strlen(off_100030CD0);
      if (!strncmp(v2 + 1, off_100030CD0, v4))
      {
        pbs_ringbuffer_dump_shared_log_from_file();
      }
    }

    _Block_object_dispose(v5, 8);
  }
}

void sub_1000042FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004314(void *a1, char *__s)
{
  v4 = strlen(__s);
  *&__s[v4 + 1] = 10;
  v5 = v4 + 3;
  v6 = archive_write_data();
  v8 = v6;
  *(*(a1[4] + 8) + 24) += v6;
  if (v5 != v6)
  {
    v9 = sub_100013BF4(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[4] + 8) + 24);
      v11 = a1[6];
      v12[0] = 67109890;
      v12[1] = v8;
      v13 = 1024;
      v14 = v10;
      v15 = 2080;
      v16 = __s;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error [%d:%d] writing line [%s] to archive [%s]", v12, 0x22u);
    }
  }
}

void sub_100004440(void *a1, char *__s)
{
  v4 = strlen(__s);
  *&__s[v4 + 1] = 10;
  v5 = v4 + 3;
  v6 = archive_write_data();
  v8 = v6;
  *(*(a1[4] + 8) + 24) += v6;
  if (v5 != v6)
  {
    v9 = sub_100013BF4(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[4] + 8) + 24);
      v11 = a1[6];
      v12[0] = 67109890;
      v12[1] = v8;
      v13 = 1024;
      v14 = v10;
      v15 = 2080;
      v16 = __s;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error [%d:%d] writing line [%s] to archive [%s]", v12, 0x22u);
    }
  }
}

uint64_t sub_10000456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = ps_liveness_node_get_total_deadline_exceeded_count();
  if (!result)
  {
    return ps_liveness_node_get_qos();
  }

  return result;
}

__CFData *sub_1000045A8()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    strcpy(v3, "-------- Liveness Buffer -------------\n");
    v1 = strlen(v3);
    CFDataAppendBytes(Mutable, v3, v1 + 1);
  }

  return Mutable;
}

uint64_t sub_100004658(uint64_t a1)
{
  result = ps_liveness_node_get_status();
  if (!result)
  {
    ps_liveness_node_get_tag();
    ps_liveness_node_get_name();
    ps_liveness_node_get_session_name();
    ps_liveness_node_get_clientid();
    ps_liveness_node_get_qos();
    ps_liveness_node_get_last_execute_time();
    ps_liveness_node_get_watchdog_last_seen_execute_time();
    ps_liveness_node_get_creation_time();
    ps_liveness_node_get_watchdog_update_time();
    ps_liveness_node_get_frequency();
    ps_liveness_node_get_running_frequency();
    result = ps_liveness_node_get_tag();
    if (!result)
    {
      return ps_system_action_handle_graph_hang();
    }
  }

  return result;
}

uint64_t sub_100005178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v4, "resource_key")];
  v6 = xpc_dictionary_get_value(v4, "supported_strides_array");
  v7 = xpc_dictionary_get_value(v4, "supported_offsets_array");
  count = xpc_array_get_count(v6);
  if (count != xpc_array_get_count(v7))
  {
    sub_10001753C();
  }

  uint64 = xpc_dictionary_get_uint64(v4, "default_stride");
  v10 = objc_alloc_init(PSSupportedCadencesConfig);
  v11 = [NSNumber numberWithUnsignedLongLong:uint64];
  [(PSSupportedCadencesConfig *)v10 setDefaultStride:v11];

  v12 = objc_alloc_init(NSMutableDictionary);
  [(PSSupportedCadencesConfig *)v10 setSupportedCadences:v12];

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000054C8;
  applier[3] = &unk_100028BC8;
  v13 = v6;
  v32 = v13;
  v14 = v7;
  v33 = v14;
  v15 = v10;
  v34 = v15;
  xpc_array_apply(v13, applier);
  v16 = [*(a1 + 32) resourceState];
  v17 = [v16 objectForKeyedSubscript:v5];

  if (v17)
  {
    v18 = [(PSSupportedCadencesConfig *)v15 supportedCadences];
    v19 = [*(a1 + 32) resourceState];
    v20 = [v19 objectForKeyedSubscript:v5];
    [v20 setSupportedStrides:v18];

    v21 = [(PSSupportedCadencesConfig *)v15 defaultStride];
    v22 = [*(a1 + 32) resourceState];
    v23 = [v22 objectForKeyedSubscript:v5];
    [v23 setDefaultStride:v21];
  }

  else
  {
    v24 = [[PSResourceState alloc] init:v5 withConfig:v15];
    v25 = [*(a1 + 32) resourceState];
    [v25 setObject:v24 forKeyedSubscript:v5];

    v21 = [*(a1 + 32) resourceState];
    v22 = [v21 objectForKeyedSubscript:v5];
    [v22 setState:2];
  }

  v26 = [(PSSupportedCadencesConfig *)v15 supportedCadences];
  v27 = [v26 allKeys];
  v28 = [*(a1 + 32) resourceState];
  v29 = [v28 objectForKeyedSubscript:v5];
  [v29 setProducibleStrides:v27];

  return 1;
}

uint64_t sub_1000054C8(xpc_object_t *a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(a1[4], a2);
  v5 = [NSNumber numberWithUnsignedLongLong:xpc_array_get_uint64(a1[5], a2)];
  v6 = [a1[6] supportedCadences];
  v7 = [NSNumber numberWithUnsignedLongLong:uint64];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

void sub_100005C80(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v19 = v2;
  if (*(a1 + 40) == 2)
  {
    v3 = &off_1000298C8;
  }

  else
  {
    v3 = &off_1000298B0;
  }

  if (*(a1 + 40))
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_100029898;
  }

  if (*(a1 + 40))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  [v2 setObject:v4 forKey:@"hands"];
  [v19 setObject:v4 forKey:@"hands-filter-graph"];
  [v19 setObject:v4 forKey:@"sink-arkit/hands/ARHandEnrollmentResult-resource-graph"];
  [v19 setObject:v3 forKey:@"hands-segmentation-processing"];
  [v19 setObject:v3 forKey:@"hands-detection"];
  v6 = [*(a1 + 32) policyRequests];
  v7 = [v6 objectForKeyedSubscript:@"HandsPolicy"];

  if (!v7)
  {
    v8 = objc_alloc_init(PSHandsPolicy);
    v9 = [*(a1 + 32) policyRequests];
    [v9 setObject:v8 forKeyedSubscript:@"HandsPolicy"];
  }

  v10 = [*(a1 + 32) policyRequests];
  v11 = [v10 objectForKeyedSubscript:@"HandsPolicy"];

  [v11 setSessionName:@"ARAlgorithmProvider"];
  [v11 setDesiredStride:v5];
  [v11 setGraphToDesiredStride:v19];
  v12 = *(a1 + 41);
  v13 = [*(a1 + 32) policyRequests];
  v14 = [v13 objectForKeyedSubscript:@"accessoryTrackingActivePolicy"];

  if (v12 == 1)
  {
    if (v14)
    {
      goto LABEL_18;
    }

    v15 = [PSAccessoryTrackingPolicy alloc];
    v16 = [*(a1 + 32) builder];
    v17 = [(PSAccessoryTrackingPolicy *)v15 initWithBuider:v16];
    v18 = [*(a1 + 32) policyRequests];
    [v18 setObject:v17 forKeyedSubscript:@"accessoryTrackingActivePolicy"];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v16 = [*(a1 + 32) policyRequests];
    [v16 removeObjectForKey:@"accessoryTrackingActivePolicy"];
  }

LABEL_18:
  [*(a1 + 32) refreshState];
}

void sub_100009080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100009308(&a22, a23);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000092C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100002404();
}

void sub_100009308(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100009308(a1, *a2);
    sub_100009308(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1000094FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000970C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100009518(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100009570(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100009570(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_10000970C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100009770(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

uint64_t sub_10000A23C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v4, "resource_key")];
  v6 = xpc_dictionary_get_value(v4, "supported_strides_array");
  v7 = xpc_dictionary_get_value(v4, "supported_offsets_array");
  count = xpc_array_get_count(v6);
  if (count != xpc_array_get_count(v7))
  {
    sub_1000176A8();
  }

  uint64 = xpc_dictionary_get_uint64(v4, "default_stride");
  v10 = objc_alloc_init(PSSupportedCadencesConfig);
  v11 = [NSNumber numberWithUnsignedLongLong:uint64];
  [(PSSupportedCadencesConfig *)v10 setDefaultStride:v11];

  v12 = objc_alloc_init(NSMutableDictionary);
  [(PSSupportedCadencesConfig *)v10 setSupportedCadences:v12];

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10000A718;
  applier[3] = &unk_100028BC8;
  v49 = v6;
  v46 = v7;
  v50 = v46;
  v13 = v10;
  v51 = v13;
  v47 = v49;
  xpc_array_apply(v49, applier);
  v14 = [*(a1 + 32) resourceState];
  v15 = [v14 objectForKeyedSubscript:v5];

  if (v15)
  {
    v16 = [*(a1 + 32) resourceState];
    v17 = [v16 objectForKeyedSubscript:v5];
    v18 = [v17 setupSupportedFrequencies:v13];
    v19 = [*(a1 + 32) resourceState];
    v20 = [v19 objectForKeyedSubscript:v5];
    [v20 setSupportedFrequencies:v18];

    v21 = [*(a1 + 32) resourceState];
    v22 = [v21 objectForKeyedSubscript:v5];
    v23 = [v22 setupDefaultFrequencies:v13];
    v24 = [*(a1 + 32) resourceState];
    v25 = [v24 objectForKeyedSubscript:v5];
    [v25 setDefaultFrequencies:v23];
  }

  else
  {
    v26 = [[PSResourceState_v2 alloc] init:v5 withConfig:v13];
    v27 = [*(a1 + 32) resourceState];
    [v27 setObject:v26 forKeyedSubscript:v5];

    v21 = [*(a1 + 32) resourceState];
    v22 = [v21 objectForKeyedSubscript:v5];
    [v22 setState:2];
  }

  v28 = [(PSSupportedCadencesConfig *)v13 baseMSGSyncID];

  if (v28)
  {
    v29 = [*(a1 + 32) MSGResources];
    v30 = [(PSSupportedCadencesConfig *)v13 baseMSGSyncID];
    v31 = [v29 objectForKeyedSubscript:v30];

    if (!v31)
    {
      v32 = objc_alloc_init(NSMutableArray);
      v33 = [*(a1 + 32) MSGResources];
      v34 = [(PSSupportedCadencesConfig *)v13 baseMSGSyncID];
      [v33 setObject:v32 forKeyedSubscript:v34];
    }

    v35 = [*(a1 + 32) MSGResources];
    v36 = [(PSSupportedCadencesConfig *)v13 baseMSGSyncID];
    v37 = [v35 objectForKey:v36];
    [v37 addObject:v5];
  }

  v38 = [*(a1 + 32) resourceState];
  v39 = [v38 objectForKeyedSubscript:v5];
  v40 = [(PSSupportedCadencesConfig *)v13 supportedCadences];
  v41 = [v40 allKeys];
  v42 = [v39 setupProducibleFrequencies:v41];
  v43 = [*(a1 + 32) resourceState];
  v44 = [v43 objectForKeyedSubscript:v5];
  [v44 setProducibleFrequencies:v42];

  return 1;
}

uint64_t sub_10000A718(xpc_object_t *a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(a1[4], a2);
  v5 = [NSNumber numberWithUnsignedLongLong:xpc_array_get_uint64(a1[5], a2)];
  v6 = [a1[6] supportedCadences];
  v7 = [NSNumber numberWithUnsignedLongLong:uint64];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

uint64_t sub_10000A9D4(uint64_t result, unint64_t a2, int a3, unint64_t *a4, unint64_t *a5)
{
  if (a3 >= a2)
  {
    v10 = sub_1000176D4(v13);
    return sub_10000AA4C(v10, v11, v12);
  }

  else
  {
    explicit = atomic_load_explicit((result + 8 * (a3 >> 6)), memory_order_acquire);
    v6 = 1 << a3;
    v7 = explicit;
    do
    {
      v8 = explicit | v6;
      atomic_compare_exchange_strong((result + 8 * (a3 >> 6)), &v7, explicit | v6);
      v9 = v7 == explicit;
      explicit = v7;
    }

    while (!v9);
    atomic_store(0, a4);
    if (a5)
    {
      *a5 = v8;
    }
  }

  return result;
}

uint64_t sub_10000AA4C(uint64_t result, int a2, int a3)
{
  if (a2 >= 64)
  {
    sub_1000177A8(&v9);
    return sub_10000AACC();
  }

  else
  {
    if (a2 <= 0)
    {
      v3 = -(-a2 & 0x3F);
    }

    else
    {
      LOBYTE(v3) = a2 & 0x3F;
    }

    explicit = atomic_load_explicit((result + 8 * (a2 >> 6)), memory_order_acquire);
    v5 = 1 << v3;
    v6 = explicit;
    do
    {
      v7 = explicit | v5;
      if (!a3)
      {
        v7 = explicit & ~v5;
      }

      atomic_compare_exchange_strong((result + 8 * (a2 >> 6)), &v6, v7);
      v8 = v6 == explicit;
      explicit = v6;
    }

    while (!v8);
  }

  return result;
}

uint64_t sub_10000AACC()
{

  return abort_with_reason();
}

void sub_10000AAEC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

void sub_10000AB0C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

BOOL sub_10000AB60(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL sub_10000AB78(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000AB90()
{

  return usleep(0x1E8480u);
}

uint64_t sub_10000ABA8(uint64_t a1, uint64_t a2)
{
  if (qword_100031100 != -1)
  {
    sub_10001787C();
  }

  return qword_100031108;
}

unint64_t sub_10000AC10(unint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return (v2 / v3 * a1);
}

dispatch_queue_t sub_10000AC60(const char *a1, uint64_t a2)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v4 = dispatch_queue_create_with_target_V2(a1, 0, inactive);
  dispatch_release(inactive);
  return v4;
}

uint64_t sub_10000ACC8(uint64_t a1, uint64_t a2)
{
  if (qword_100031118 != -1)
  {
    sub_100017890();
  }

  return byte_100031110;
}

void sub_10000B530(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v18 = v2;
  if (*(a1 + 40) == 2)
  {
    v3 = &off_1000299A0;
  }

  else
  {
    v3 = &off_100029988;
  }

  if (*(a1 + 40))
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_100029970;
  }

  [v2 setObject:v4 forKey:@"hands"];
  [v18 setObject:v4 forKey:@"hands-filter-graph"];
  [v18 setObject:v4 forKey:@"sink-arkit/hands/ARHandEnrollmentResult-resource-graph"];
  [v18 setObject:v3 forKey:@"hands-segmentation-processing"];
  [v18 setObject:v3 forKey:@"hands-detection"];
  v5 = [*(a1 + 32) policyRequests];
  v6 = [v5 objectForKeyedSubscript:@"HandsPolicy"];

  if (!v6)
  {
    v7 = objc_alloc_init(PSHandsPolicy_v2);
    v8 = [*(a1 + 32) policyRequests];
    [v8 setObject:v7 forKeyedSubscript:@"HandsPolicy"];
  }

  v9 = [*(a1 + 32) policyRequests];
  v10 = [v9 objectForKeyedSubscript:@"HandsPolicy"];

  [v10 setSessionName:@"ARAlgorithmProvider"];
  [v10 setGraphToDesiredStride:v18];
  v11 = *(a1 + 41);
  v12 = [*(a1 + 32) policyRequests];
  v13 = [v12 objectForKeyedSubscript:@"accessoryTrackingActivePolicy"];

  if (v11 == 1)
  {
    if (v13)
    {
      goto LABEL_15;
    }

    v14 = [PSAccessoryTrackingPolicy_v2 alloc];
    v15 = [*(a1 + 32) builder];
    v16 = [(PSAccessoryTrackingPolicy_v2 *)v14 initWithBuider:v15];
    v17 = [*(a1 + 32) policyRequests];
    [v17 setObject:v16 forKeyedSubscript:@"accessoryTrackingActivePolicy"];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_15;
    }

    v15 = [*(a1 + 32) policyRequests];
    [v15 removeObjectForKey:@"accessoryTrackingActivePolicy"];
  }

LABEL_15:
  [*(a1 + 32) refreshState];
}

void sub_10001087C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  sub_100009308(&a24, a25);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100011154(void *value)
{

  CFDictionarySetValue(v1, v2, value);
}

uint64_t sub_100011424(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = v3;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 1068);
    v8 = [NSString stringWithCString:v6 + 44 encoding:4];
    v10 = sub_100013BF4(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v6 + 1068);
      LODWORD(v15[0]) = 136315394;
      *(v15 + 4) = v6 + 44;
      WORD6(v15[0]) = 1024;
      *(v15 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "got key %s msg type %d", v15, 0x12u);
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v12 = [v5 startStreamWithKey:v8];
        goto LABEL_16;
      }

      if (v7 == 3)
      {
        v12 = [v5 stopStreamWithKey:v8];
        goto LABEL_16;
      }
    }

    else
    {
      if (!v7)
      {
        v12 = [v5 openStreamWithKey:v8];
        goto LABEL_16;
      }

      if (v7 == 1)
      {
        v12 = [v5 closeStreamWithKey:v8];
LABEL_16:
        memset(v15, 0, sizeof(v15));
        v13 = (v12 & 1) != 0;
        goto LABEL_17;
      }
    }

    v13 = 0;
    memset(v15, 0, 44);
LABEL_17:
    HIDWORD(v15[2]) = v13;
    ps_comms_reply();
    goto LABEL_18;
  }

  v8 = sub_100013BF4(v3, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Valid data not received.", v15, 2u);
  }

LABEL_18:

  return 0;
}

void sub_100011DA8(uint64_t a1)
{
  v1 = [[PSSynchronizer alloc] initWithGSM:*(a1 + 32)];
  v2 = qword_100031128;
  qword_100031128 = v1;

  bzero(qword_100031130, 0x4E0uLL);
  memset(dword_100032180, 255, sizeof(dword_100032180));
  bzero(qword_100031610, 0x4E0uLL);
  qword_100032520 = 0;
  xmmword_100032500 = 0u;
  unk_100032510 = 0u;
  xmmword_1000324E0 = 0u;
  unk_1000324F0 = 0u;
  xmmword_1000324C0 = 0u;
  unk_1000324D0 = 0u;
  xmmword_1000324A0 = 0u;
  unk_1000324B0 = 0u;
  xmmword_100032480 = 0u;
  unk_100032490 = 0u;
  xmmword_100032460 = 0u;
  unk_100032470 = 0u;
  xmmword_100032440 = 0u;
  unk_100032450 = 0u;
  xmmword_100032420 = 0u;
  unk_100032430 = 0u;
  xmmword_100032400 = 0u;
  unk_100032410 = 0u;
  xmmword_1000323F0 = 0u;

  bzero(qword_100032528, 0x4E0uLL);
}

void start()
{
  v0 = os_log_create("com.apple.polaris", "polarisd");
  v1 = qword_100032EE8;
  qword_100032EE8 = v0;

  byte_100032EF0 = 2;
  v2 = +[PLSSettings currentSettings];
  v3 = [v2 polarisdStartDelaySec];

  if ((v3 - 1) <= 0xFFFFFFFD)
  {
    v6 = sub_100013BF4(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v47 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Polarisd sleeping for (%ld) seconds.", buf, 0xCu);
    }

    sleep(v3);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [NSURL fileURLWithPath:@"/tmp/com.apple.polarisd" isDirectory:1];
  v9 = +[NSFileManager defaultManager];
  v50 = 0;
  [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v50];
  v10 = v50;

  if (v10)
  {
    v13 = sub_100013BF4(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create a folder for polarisd in /tmp folder : %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v7);
  v16 = sub_100013BF4(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "Oct 10 2025";
    v48 = 2080;
    v49 = "21:55:44";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting Polarisd (built on %s %s)", buf, 0x16u);
  }

  v19 = sub_10000ACC8(v17, v18);
  v20 = v19;
  v22 = sub_100013BF4(v19, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "a customer";
    if (v20)
    {
      v23 = "an internal";
    }

    *buf = 136446210;
    v47 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Running on %{public}s build", buf, 0xCu);
  }

  v24 = objc_autoreleasePoolPush();
  v25 = +[PLSSettings currentSettings];
  v26 = [v25 enableFastTransition];

  if (v26)
  {
    v29 = sub_100013BF4(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Initializing the system graph server queue", buf, 2u);
    }

    v30 = sub_10000AC60("PolarisD-System-Graph-Server-Queue", 60);
    v31 = qword_100032098;
    qword_100032098 = v30;
  }

  v32 = [PSDaemon alloc];
  v33 = [v32 initWithDispatchQueue:qword_100032098];
  v34 = qword_1000320B8;
  qword_1000320B8 = v33;

  v35 = [PSSharedStreamManager alloc];
  v36 = [qword_1000320B8 comms_server];
  v37 = [qword_1000320B8 device];
  v38 = -[PSSharedStreamManager initWithServer:device:gsm:](v35, "initWithServer:device:gsm:", v36, v37, [qword_1000320B8 gsm]);
  v39 = qword_100032070;
  qword_100032070 = v38;

  v40 = [qword_1000320B8 start];
  if ((v3 - 1) <= 0xFFFFFFFD)
  {
    v42 = sub_100013BF4(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v47 = v3;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Polarisd sleeping for (%ld) seconds.", buf, 0xCu);
    }

    sleep(v3);
  }

  v43 = [PSPowerManager alloc];
  v44 = -[PSPowerManager initWithgsm:](v43, "initWithgsm:", [qword_1000320B8 gsm]);
  v45 = qword_100032078;
  qword_100032078 = v44;

  [qword_1000320B8 comms_server];
  ps_event_handler_init();
}

void sub_100013A10(id a1, int a2, BOOL a3)
{
  *bytes = a2;
  v4 = CFDataCreate(0, bytes, 4);
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    j__pbs_ringbuffer_decoder_cleanup_for_pid();
    v5 = 2;
  }

  v6 = qword_1000320C0;
  v7 = mach_absolute_time();
  ps_event_handler_report(v6, v5, v7, v4);
}

BOOL sub_100013A90(id a1, unsigned int a2)
{
  v7 = 0;
  v8 = 0;
  v2 = sub_10000456C(*&a2, &v8, &v7);
  v4 = v7;
  if (v7)
  {
    v5 = sub_100013BF4(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v10 = v8;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Liveness miss qos:%llu result:%llu", buf, 0x16u);
    }
  }

  return v4 != 0;
}

void sub_100013B70(id a1)
{
  [qword_1000320B8 stop];
  j__ps_system_action_stop();
  v1 = [qword_100032078 stop];
  v3 = sub_100013BF4(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PolarisD : Received SIGTERM ", v4, 2u);
  }
}

uint64_t sub_100013BF4(uint64_t a1, uint64_t a2)
{
  if (qword_100032118 != -1)
  {
    sub_1000182E8();
  }

  return qword_100032110;
}

void sub_100013D60(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = a1;
  v8 = v6;
  HIDWORD(v10) = a3 + 536870288;
  LODWORD(v10) = a3 + 536870288;
  v9 = v10 >> 4;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_26;
      }

      v14 = sub_100013BF4(v6, v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received kIOMessageSystemWillSleep \n", buf, 2u);
      }

      ps_liveness_server_pause_liveness();
      ps_gsm_pause_all_sources([v8 gsm]);
    }

    else
    {
      v18 = sub_100013BF4(v6, v7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received kIOMessageCanSystemSleep.\n", v23, 2u);
      }
    }

    IOAllowPowerChange([v8 pm_ack_port], a4);
    goto LABEL_26;
  }

  switch(v9)
  {
    case 2:
      v11 = sub_100013BF4(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        v12 = "Received kIOMessageSystemWillNotSleep \n";
        v13 = v21;
        goto LABEL_14;
      }

LABEL_15:

      break;
    case 9:
      v15 = sub_100013BF4(v6, v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received kIOMessageSystemHasPoweredOn.\n", v20, 2u);
      }

      ps_gsm_resume_all_sources([v8 gsm]);
      if ([v8 resolvedUserActivity] == 2)
      {
        v17 = sub_100013BF4(2, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User is Active on wake.\n", v19, 2u);
        }

        ps_liveness_server_resume_liveness();
      }

      break;
    case 11:
      v11 = sub_100013BF4(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 0;
        v12 = "Received kIOMessageSystemWillPowerOn.\n";
        v13 = &v22;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
  }

LABEL_26:
}

id sub_100014294(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 40);
  v2 = *(a1 + 32);
  v6[1] = _NSConcreteStackBlock;
  v6[2] = 3221225472;
  v6[3] = sub_10001433C;
  v6[4] = &unk_100028EA0;
  v6[5] = v2;
  result = IOPMScheduleUserActivityLevelNotificationWithTimeout();
  *(*(a1 + 32) + 8) = result;
  if (!*(*(a1 + 32) + 8))
  {
    v4 = sub_1000182FC(v6);
    return sub_10001433C(v4, v5);
  }

  return result;
}

id sub_10001433C(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 5;
  v5 = sub_100013BF4(a1, a2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received user is active notification from IOPM (value: %lld)", &v9, 0xCu);
    }

    v7 = 2;
  }

  else
  {
    if (v6)
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received user is inactive notification from IOPM (value: %lld)", &v9, 0xCu);
    }

    v7 = 1;
  }

  *(*(a1 + 32) + 24) = v7;
  return [*(a1 + 32) handleUserActivityStateChange];
}

void sub_1000144FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 32) = 0;
    v3 = WeakRetained;
    [*(a1 + 32) handleUserActivityStateChange];
    WeakRetained = v3;
  }
}

void sub_100014608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 32) = 2;
    v3 = WeakRetained;
    [*(a1 + 32) handleUserActivityStateChange];
    WeakRetained = v3;
  }
}

void sub_100014718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 32) = 1;
    v3 = WeakRetained;
    [*(a1 + 32) handleUserActivityStateChange];
    WeakRetained = v3;
  }
}

uint64_t sub_100014868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014880(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptionForActivity:{objc_msgSend(*(a1 + 32), "resolvedUserActivity")}];
  v3 = [NSString stringWithFormat:@"User activity level: %@ ", v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  if (v6[4])
  {
    v7 = [v6 descriptionForActivity:v6[3]];
    v11 = [NSString stringWithFormat:@"(via override, IOPM level: %@)", v7];
  }

  else
  {
    v11 = @"(via IOPM, override disabled)";
  }

  v8 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:v11];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000149F8()
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &stru_100028F70);
}

void sub_100014A34()
{
  v0 = IOServiceNameMatching("AppleBoraModule");
  if (!v0)
  {
    v10 = sub_100013BF4(0, v1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buffer = 0;
    v11 = "strapAnalytics: Failed to get module";
    goto LABEL_13;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    v10 = sub_100013BF4(MatchingService, v3);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buffer = 0;
    v11 = "strapAnalytics: Failed to get io_service";
    goto LABEL_13;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"LeviathanWorkaroundOutcome", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    CFRelease(@"LeviathanWorkaroundOutcome");
    v12 = IOObjectRelease(v4);
    v10 = sub_100013BF4(v12, v13);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buffer = 0;
    v11 = "strapAnalytics: Failed to get cfprop";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buffer, 2u);
LABEL_14:
    v14 = dword_100032128++;
    if (v14 > 1)
    {
      sub_100014C6C("Failed to get strapAnalytics");
    }

    else
    {
      v15 = dispatch_time(0, 3000000000);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after(v15, global_queue, &stru_100028FB0);
    }

    return;
  }

  v6 = CFProperty;
  CString = CFStringGetCString(CFProperty, buffer, 128, 0x8000100u);
  v9 = sub_100013BF4(CString, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = buffer;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "strapAnalytics: PASS, outcomeStr - %s", &v17, 0xCu);
  }

  sub_100014C6C(buffer);
  IOObjectRelease(v4);
  CFRelease(@"LeviathanWorkaroundOutcome");
  CFRelease(v6);
}

void sub_100014C6C(const char *a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, off_100031038[0], a1);
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_100014D4C;
  v10 = &unk_100028FD0;
  v11 = empty;
  v3 = analytics_send_event_lazy();
  if ((v3 & 1) == 0)
  {
    v5 = sub_100013BF4(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "strapAnalytics: Failed to send CA event", v6, 2u);
    }

    xpc_release(empty);
  }
}

uint64_t sub_100014D54(uint64_t result, uint64_t a2)
{
  if (*(result + 128) == 1)
  {
    return sub_10001843C(result);
  }

  return result;
}

uint64_t sub_100014D80(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    atomic_fetch_add((result + 136), 1uLL);
  }

  return result;
}

void sub_100014DA0(semaphore_t a1)
{
  v1 = semaphore_signal(a1);
  if (v1)
  {
    if (v1 != 37)
    {
      sub_100018464(&v3, v1);
    }

    v2 = sub_1000013E0(v1, v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = "ps_gsm_signal_sem";
      v5 = 1024;
      v6 = 37;
      v7 = 2080;
      v8 = mach_error_string(37);
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: semaphore_signal failed because it was terminated: code %d (%s)", &v3, 0x1Cu);
    }
  }
}

char *sub_100014E84(void *a1, mach_error_t error_value)
{
  *a1 = 0;

  return mach_error_string(error_value);
}

void sub_100014EA4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x2Cu);
}

void sub_100014EC4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

unint64_t sub_100014F08(unint64_t result)
{
  if (result >= 0x401)
  {
    v3[1] = v1;
    v3[2] = v2;
    sub_10001855C(v3, result);
  }

  return result;
}

unint64_t *sub_100014F30(unint64_t *result, unint64_t a2)
{
  if (a2 >= 0x3FF)
  {
    v4[1] = v2;
    v4[2] = v3;
    sub_100018644(v4, a2);
  }

  *result = *result & 0xE007FFFFFFFFFFFFLL | (a2 << 51);
  return result;
}

uint64_t sub_100014F64(uint64_t result, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = (a2 + 1);
  explicit = atomic_load_explicit(a2 + 1, memory_order_acquire);
  while ((explicit & 0xFFFFFFFFFFLL) == a3)
  {
    if (explicit == (a3 & 0xFFFFFFFFFFLL | a4 | 0x400000000000000))
    {
      if (*(a2 + 1184) == 1)
      {
        sub_100015F90(result, *(a2 + 601), *(a2 + 600));
      }

      v10 = **(v5 + 64);
      sub_100014F08(v10);
      v11 = *a2;
      v12 = *(v5 + 64) + 8;

      return sub_10000A9CC(v12, v10, v11, v6);
    }

    v8 = explicit;
    atomic_compare_exchange_strong(v6, &v8, explicit & ~a4);
    v9 = v8 == explicit;
    explicit = v8;
    if (v9)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100015034(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1000150B4(a2, 1024);
  sub_1000150B4(a3, 16);
  v8 = (*(a1 + 72) + 1320 * a2);

  return sub_100014F64(a1, v8, a4, (1 << a3) << 40);
}

uint64_t sub_1000150B4(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    v3 = result;
    v11 = 0;
    v4 = asprintf(&v11, "Out of bounds assert error (%llud>= %lld)", result, a2);
    v6 = sub_10000ABA8(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v13 = "ps_util_assert_less_than_signed";
      v14 = 1024;
      v15 = 213;
      v16 = 2048;
      v17 = v3;
      v18 = 2048;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llud>= %lld)", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
      v9 = v7;
      v10 = sub_10000ABA8(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "ps_util_assert_less_than_signed";
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  return result;
}

uint64_t sub_100015234(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = (*(a1 + 72) + 1320 * a2);
  v8 = &v7[a3];
  v9 = v8[76];
  v10 = v8[92];
  v11 = *(v7 + 432);
  v12 = *(v7 + 37);
  v13 = v7[36];
  sub_10001641C(a1, *(v7 + a3 + 276), v8[37]);
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if (v9)
  {
    v15 = v14 == 0xFFFFFFFFFFFELL;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v14 / v10 % v9)
  {
    v39 = *(a1 + 128);
    goto LABEL_47;
  }

  if (v11)
  {
    v16 = a4 & 0xFFFFFFFFFFFFLL;
    LOBYTE(v17) = 1;
    if (v16 != 0xFFFFFFFFFFFFLL)
    {
      v18 = &v7[2 * (v16 - 91 * ((v16 * 0x2D02D02D02D02D1uLL) >> 64)) + 112];
      v19 = atomic_load(v18);
      v20 = (1 << v5);
      v21 = v20 << 48;
      v22 = v12 | v16;
      v23 = v16 & 0xFFFFFFFFFFFFLL | (v20 << 48) | 0x8000000000000000;
      v24 = 0xFFFFFFFFFFFFLL;
      while ((v19 & 0xFFFFFFFFFFFFLL) <= v16)
      {
        v25 = v19 | v21;
        if (v22 == (v19 | v21))
        {
          v25 = 0x8000000000000000;
        }

        if ((v19 & 0xFFFFFFFFFFFFLL) < v16)
        {
          v25 = v23;
        }

        v26 = (v19 & 0xFFFFFFFFFFFFLL) >= v16 && v22 == (v19 | v21);
        if (v26)
        {
          v24 = v16;
        }

        v27 = v19;
        atomic_compare_exchange_strong(v18, &v27, v25);
        v15 = v27 == v19;
        v19 = v27;
        if (v15)
        {
          if (!v26)
          {
            break;
          }

          v41 = 0;
          explicit = atomic_load_explicit(v7 + 147, memory_order_acquire);
          v29 = v24 & 0xFFFFFFFFFFFFLL;
          do
          {
            v30 = explicit;
            v31 = (explicit >> 49) & 1;
            if (v16 == 0xFFFFFFFFFFFELL)
            {
              LODWORD(v31) = 1;
            }

            if (v31)
            {
              v32 = 0x2000000000000;
            }

            else
            {
              v32 = 0;
            }

            v41 = v29 | explicit & 0xFFF9000000000000 | v32 | 0x4000000000000;
            sub_100014F30(&v41, v10 * v9);
            atomic_compare_exchange_strong(v7 + 147, &explicit, v41);
          }

          while (explicit != v30);
          v17 = (v30 >> 50) & 1;
          if ((v30 & 0x4000000000000) == 0)
          {
            sub_100014D80(a1);
            if (*(v7 + 1184) == 1)
            {
              sub_100015F00(a1, *(v7 + 601), *(v7 + 600));
            }

            else
            {
              sub_100014DA0(*(a1 + 4 * *v7 + 168));
            }
          }

          goto LABEL_46;
        }
      }

LABEL_43:
      LOBYTE(v17) = 1;
    }
  }

  else
  {
    LOBYTE(v17) = 1;
    atomic_fetch_or(v7 + 56, (1 << v5) << 48);
    v33 = v12;
    atomic_compare_exchange_strong(v7 + 56, &v33, 0x8000000000000000);
    if (v33 == v12)
    {
      v34 = a4 & 0xFFFFFFFFFFFFLL;
      v35 = atomic_load_explicit(v7 + 147, memory_order_acquire);
      if (v13 != 1)
      {
        v34 = 0xFFFFFFFFFFFFLL;
      }

      do
      {
        v36 = v35;
        v37 = (v35 >> 49) & 1;
        if (v34 == 0xFFFFFFFFFFFELL)
        {
          LODWORD(v37) = 1;
        }

        if (v37)
        {
          v38 = 0x2000000000000;
        }

        else
        {
          v38 = 0;
        }

        atomic_compare_exchange_strong(v7 + 147, &v35, v35 & 0xE001000000000000 | v34 | v38 | 0x4000000000000);
      }

      while (v35 != v36);
      if ((v36 & 0x4000000000000) == 0)
      {
        sub_100014D80(a1);
        if (*(v7 + 1184) == 1)
        {
          sub_100015F00(a1, *(v7 + 601), *(v7 + 600));
        }

        else
        {
          sub_100014DA0(*(a1 + 4 * *v7 + 168));
        }

        LOBYTE(v17) = 0;
        goto LABEL_46;
      }

      goto LABEL_43;
    }
  }

LABEL_46:
  v39 = v17 & *(a1 + 128);
LABEL_47:
  if (v39)
  {
    return 3758097112;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015524(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = (*(a1 + 72) + 1320 * a2);
  if (*(v6 + 110))
  {
    v7 = a4 & 0xFFFFFFFFFFFFLL;
    v8 = sub_100015ABC(*(a1 + 72) + 1320 * a2, a4 & 0xFFFFFFFFFFFFLL);
    if (v7 != 0xFFFFFFFFFFFELL && !v8)
    {
      goto LABEL_20;
    }

    explicit = atomic_load_explicit(&v6[v7 - 91 * ((v7 * 0x2D02D02D02D02D1uLL) >> 64) + 56], memory_order_acquire);
    v10 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) <= v7)
    {
      v13 = (1 << a3);
      v14 = v13 << 48;
      v15 = v7 & 0xFFFFFFFFFFFFLL | (v13 << 48) | 0x8000000000000000;
      v16 = explicit;
      do
      {
        v11 = explicit | v14;
        if (v10 < v7)
        {
          v11 = v15;
        }

        atomic_compare_exchange_strong(&v6[v7 - 91 * ((v7 * 0x2D02D02D02D02D1uLL) >> 64) + 56], &v16, v11);
        if (v16 == explicit)
        {
          break;
        }

        v10 = v16 & 0xFFFFFFFFFFFFLL;
        explicit = v16;
      }

      while ((v16 & 0xFFFFFFFFFFFFLL) <= v7);
    }

    else
    {
      v11 = 0;
    }

    if (v11 == (v6[37] | v7))
    {
      sub_100015B88(v6, v7);
      v20 = 0;
      v17 = atomic_load_explicit(v6 + 147, memory_order_acquire);
      do
      {
        v18 = v17;
        v20 = v7 | v17 & 0xFFFF000000000000 | 0x4000000000000;
        sub_100014F30(&v20, *(v6 + 110));
        atomic_compare_exchange_strong(v6 + 147, &v17, v20);
      }

      while (v17 != v18);
      v19 = (v18 >> 50) & 1;
      if ((v18 & 0x4000000000000) == 0)
      {
        sub_100014D80(a1);
        if (*(v6 + 1184) == 1)
        {
          sub_100015F00(a1, *(v6 + 601), *(v6 + 600));
        }

        else
        {
          sub_100014DA0(*(a1 + 4 * *v6 + 168));
        }
      }
    }

    else
    {
LABEL_20:
      LOBYTE(v19) = 1;
    }

    if ((v19 & *(a1 + 128)) != 0)
    {
      return 3758097112;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_100015234(a1, a2, a3, a4);
  }
}

uint64_t sub_1000156FC(uint64_t a1, char *a2, int a3)
{
  v12 = a2;
  v11 = a3;
  sub_100015A2C(&v12, &v11, "Name: %s group-synced:%d\n", (a1 + 16), *(a1 + 432));
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  sub_100015A2C(&v12, &v11, "\nToken:\n");
  sub_100015A2C(&v12, &v11, "\tpid: %u\n", explicit);
  sub_100015A2C(&v12, &v11, "\tcounter: %u\n", BYTE4(explicit));
  sub_100015A2C(&v12, &v11, "\tnonce: %llu\n", explicit & 0xFFFFFFFFFFLL);
  sub_100015A2C(&v12, &v11, "\tsources: %0x\n", (HIDWORD(explicit) >> 8));
  sub_100015A2C(&v12, &v11, "\twaiter: %u\n", HIBYTE(explicit) & 1);
  sub_100015A2C(&v12, &v11, "\nInit complete: %d\n", (explicit & 0x400000000000000) != 0);
  sub_100015A2C(&v12, &v11, "\nSources:\n");
  if (*(a1 + 144) >= 1)
  {
    v5 = 0;
    v6 = (a1 + 212);
    do
    {
      sub_100015A2C(&v12, &v11, "\tglobal_source_index: %u\n", *(v6 - 16));
      sub_100015A2C(&v12, &v11, "\tlocal_gst_index: %u\n", *v6);
      sub_100015A2C(&v12, &v11, "\tdown sample: %u\n", v6[23]);
      sub_100015A2C(&v12, &v11, "\tstride: %u\n", v6[39]);
      sub_100015A2C(&v12, &v11, "\n");
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 144));
  }

  v7 = atomic_load_explicit((a1 + 1176), memory_order_acquire);
  sub_100015A2C(&v12, &v11, "\nTrigger:\n");
  if ((v7 & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFLL)
  {
    sub_100015A2C(&v12, &v11, "\ttag: TAG_READ\n");
  }

  else
  {
    sub_100015A2C(&v12, &v11, "\ttag: %llu\n");
  }

  sub_100015A2C(&v12, &v11, "\tshould_exit: %d\n", HIWORD(v7) & 1);
  sub_100015A2C(&v12, &v11, "\tsequenced_teardown: %d\n", (v7 >> 49) & 1);
  sub_100015A2C(&v12, &v11, "\tsem_signaled: %d\n", (v7 >> 50) & 1);
  sub_100015A2C(&v12, &v11, "\nReady sources:\n");
  for (i = 0; i != 91; ++i)
  {
    v9 = atomic_load_explicit((a1 + 448 + 8 * i), memory_order_acquire);
    sub_100015A2C(&v12, &v11, "\t%d: tag: %llu ready: %0x", i, v9 & 0xFFFFFFFFFFFFLL, HIWORD(v9) & 0x3FFF);
  }

  return sub_100015A2C(&v12, &v11, "\n");
}

uint64_t sub_100015A2C(char **a1, _DWORD *a2, const char *a3, ...)
{
  va_start(va, a3);
  result = vsnprintf(*a1, *a2, a3, va);
  if (result < 1 || *a2 <= result)
  {
    *a2 = 0;
  }

  else
  {
    *a2 -= result;
    *a1 += result;
  }

  return result;
}

void sub_100015A9C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

BOOL sub_100015ABC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFFFFFFLL)
  {
    sub_100018740();
  }

  explicit = atomic_load_explicit((a1 + 1304), memory_order_acquire);
  while ((explicit & 0xFFFFFFFFFFFFLL) <= a2)
  {
    v3 = explicit & 0xFFFF000000000000 | (a2 + 1);
    v4 = explicit;
    atomic_compare_exchange_strong((a1 + 1304), &v4, v3);
    v5 = v4 == explicit;
    explicit = v4;
    if (v5)
    {
      explicit = v3;
      break;
    }
  }

  v6 = *(a1 + 440);
  v7 = (explicit >> 50) & 7;
  if (v7)
  {
    v9 = -v7;
    for (i = v7 + HIWORD(explicit) - 1; ; --i)
    {
      v11 = a1 + 1208 + 24 * (i & 3);
      if (*v11 == 1 && *(v11 + 8) <= a2)
      {
        break;
      }

      if (__CFADD__(v9++, 1))
      {
        return a2 % v6 == HIDWORD(v6);
      }
    }

    v6 = *(v11 + 16);
  }

  return a2 % v6 == HIDWORD(v6);
}

uint64_t sub_100015B88(uint64_t result, unint64_t a2)
{
  if (HIWORD(a2))
  {
    sub_10001876C();
  }

  v2 = atomic_load((result + 1304));
  if ((v2 & 0x1C000000000000) != 0)
  {
    v3 = result + 1208;
    v4 = *(result + 440);
    explicit = atomic_load_explicit((result + 1304), memory_order_acquire);
    while (*(v3 + 24 * (HIWORD(explicit) & 3) + 8) <= a2)
    {
      v13 = v4;
      v14 = a2;
      v15 = result;
      v12 = explicit;
      do
      {
        sub_100015D54(v15, v3 + 24 * (HIWORD(explicit) & 3));
        v6 = explicit + 0x1000000000000;
        v7 = ((explicit + 0x1C000000000000) & 0x1C000000000000) == 0;
        explicit = (explicit + 0x1000000000000) & 0x3000000000000 | explicit & 0xFFE0FFFFFFFFFFFFLL | (explicit + 0x1C000000000000) & 0x1C000000000000;
      }

      while (!v7 && *(v3 + 24 * (HIWORD(v6) & 3) + 8) <= v14);
      a2 = v14;
      result = v15;
      v8 = v12;
      v9 = v12;
      atomic_compare_exchange_strong((v15 + 1304), &v9, explicit);
      explicit = v9;
      v4 = v13;
      if (v9 == v8)
      {
        if (*(v15 + 440) != v13)
        {
          v10 = sub_1000013E0(v15, v14);
          result = os_signpost_enabled(v10);
          if (result)
          {
            v11 = *(v15 + 440);
            v16 = 136316419;
            v17 = v15 + 16;
            v18 = 2048;
            v19 = v14;
            v20 = 1025;
            v21 = v13;
            v22 = 1025;
            v23 = HIDWORD(v13);
            v24 = 1025;
            v25 = v11;
            v26 = 1025;
            v27 = HIDWORD(v11);
            return _os_signpost_emit_unreliably_with_name_impl(&_mh_execute_header, v10, 0, 0xEEEEB0B5B2B2EEEELL, "PSGSM Log", "Graph stride changed for graph %s at frame ID %llu. Previous cadence: (%{private}u, %{private}u). Current cadence: (%{private}u, %{private}u).", &v16, 46);
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100015D54(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    if (*a2 != 1)
    {
      sub_100018798();
    }

    *(result + 440) = *(a2 + 16);
  }

  return result;
}

unint64_t sub_100015D80(unint64_t result, unint64_t a2)
{
  if (result >= a2)
  {
    v3 = result;
    v11 = 0;
    v4 = asprintf(&v11, "Out of bounds assert error (%llu >= %llu)", result, a2);
    v6 = sub_10000ABA8(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v13 = "ps_util_assert_less_than_unsigned";
      v14 = 1024;
      v15 = 192;
      v16 = 2048;
      v17 = v3;
      v18 = 2048;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llu >= %llu)", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
      v9 = v7;
      v10 = sub_10000ABA8(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "ps_util_assert_less_than_unsigned";
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  return result;
}

void sub_100015F00(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x80)
  {
    sub_1000187F0();
  }

  if (a3 >= 0x40)
  {
    sub_1000187C4();
  }

  v3 = (*(a1 + 120) + 312 * a2);
  explicit = atomic_load_explicit(v3 + 18, memory_order_acquire);
  v5 = 1 << a3;
  do
  {
    v6 = explicit;
    v7 = explicit | v5;
    if (explicit < 0)
    {
      v7 = (explicit | v5) & 0x7FFFFFFFFFFFFFFFLL;
    }

    atomic_compare_exchange_strong(v3 + 18, &explicit, v7);
  }

  while (explicit != v6);
  if (v6 < 0)
  {
    v8 = *(a1 + 4 * *v3 + 4264);

    sub_100014DA0(v8);
  }
}

void sub_100015F90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_100015D80(a2, 0x80uLL);
  v6 = sub_100015D80(a3, 0x40uLL);
  v8 = (*(a1 + 120) + 312 * a2);
  if ((atomic_load_explicit(v8 + 21, memory_order_acquire) >> a3))
  {
    v9 = sub_1000013E0(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = v8 + 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Shared Trigger (%s) Could not repair. The shared trigger will go out of commission.", &v17, 0xCu);
    }
  }

  else
  {
    explicit = atomic_load_explicit(v8 + 17, memory_order_acquire);
    sub_10000AA4C((v8 + 18), a3, 0);
    sub_10000A9A4((v8 + 21), 0x40uLL, a3);
    do
    {
      v11 = explicit;
      if ((explicit & 0xFF00000000) != 0)
      {
        v12 = explicit & 0xFFFFFF00FFFFFFFFLL | (((explicit + 0xFF00000000) >> 32) << 32);
      }

      else
      {
        v12 = explicit;
      }

      atomic_compare_exchange_strong(v8 + 17, &explicit, v12);
    }

    while (explicit != v11);
    v13 = v11 & 0x10000000000;
    if ((v12 & 0xFF00000000) == 0 && v13 != 0)
    {
      v15 = *(a1 + 112);
      v16 = *v8;

      sub_10000A9CC(v15, 0x80uLL, v16, v8 + 17);
    }
  }
}

void sub_100016138(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  populateSourceInfo();
  v5 = xpc_session_send_message(*(a1 + 4784), v4);
  if (v5)
  {
    v6 = xpc_rich_error_copy_description(v5);
    v8 = sub_1000013E0(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", &v9, 0xCu);
    }

    free(v6);
  }

  xpc_release(v4);
}

uint64_t ps_gsm_finish_clear_gst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 8 * a3 + 160);
  explicit = atomic_load_explicit(v5, memory_order_acquire);
  sub_100015034(a1, (explicit >> 40) & 0x3FF, (explicit >> 50) & 0xF, explicit & 0xFFFFFFFFFFLL);

  return sub_10000A9CC(a2 + 152, 0x40uLL, a3, v5);
}

uint64_t ps_gsm_notify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100014D80(a1);
  explicit = atomic_load_explicit((a2 + 152), memory_order_acquire);
  if (explicit != -1)
  {
    v7 = ~explicit;
    do
    {
      v8 = __clz(__rbit64(v7));
      v9 = (a2 + 160 + 8 * v8);
      v10 = atomic_load_explicit(v9, memory_order_acquire);
      while (v10)
      {
        v11 = v10;
        if ((v10 & 0x240000000000000) != 0)
        {
          break;
        }

        atomic_compare_exchange_strong(v9, &v10, v10 | 0x80000000000000);
        if (v10 == v11)
        {
          if ((atomic_load_explicit((*(a1 + 80) + 136), memory_order_acquire) & 1) == 0)
          {
            sub_100015524(a1, (v11 >> 40) & 0x3FF, (v11 >> 50) & 0xF, a3);
          }

          v12 = atomic_load_explicit(v9, memory_order_acquire);
          while ((v12 & 0x100000000000000) == 0)
          {
            if ((v12 & 0x80000000000000) == 0)
            {
              sub_10001881C();
            }

            v13 = v12;
            atomic_compare_exchange_strong(v9, &v13, v12 & 0xFE7FFFFFFFFFFFFFLL);
            v14 = v13 == v12;
            v12 = v13;
            if (v14)
            {
              goto LABEL_21;
            }
          }

          if (*(a1 + 4784))
          {
            v15 = v12;
            do
            {
              atomic_compare_exchange_strong(v9, &v15, v12 | 0x200000000000000);
              v14 = v15 == v12;
              v12 = v15;
            }

            while (!v14);
            sub_100016138(a1, a2, v8);
          }

          else
          {
            ps_gsm_finish_clear_gst(a1, a2, v8);
          }

          break;
        }
      }

LABEL_21:
      v7 &= ~(1 << v8);
    }

    while (v7);
  }

  return sub_100014D54(a1, 0);
}

uint64_t sub_10001641C(uint64_t a1, int a2, int a3)
{
  v3 = 88;
  if (!a2)
  {
    v3 = 104;
  }

  return *(a1 + v3) + 672 * a3 + 16;
}

void sub_10001671C(uint64_t result, uint64_t a2)
{
  if (qword_100032140 != -1)
  {
    sub_1000188BC();
  }
}

uint64_t sub_100016788(uint64_t a1, uint64_t a2)
{
  if (qword_100032148 != -1)
  {
    sub_1000188D0();
  }

  return qword_100032150;
}

uint64_t sub_1000167F0(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48 + a1) % 0x7FF0uLL;
  v3 = v2 - 32705 + (-v2 & 7);
  v4 = 32752 - v2;
  if (v3 >= 0xFFFFFFFFFFFF800FLL)
  {
    v4 = -((a2 + 48 + a1) % 0x7FF0uLL) & 7;
  }

  return v4 + a2 + 48;
}

void sub_100016848(uint64_t result, uint64_t a2)
{
  if (qword_100032158 != -1)
  {
    sub_100018A00();
  }
}

void sub_100016874(id a1)
{
  v1 = getpid();
  dword_100033F08 = v1;
  sub_10001671C(v1, v2);
  proc_name(dword_100033F08, byte_100032160, 0x20u);
  qword_100033F28 = ps_buffer_create_serial_data_reader();
  buffer = ps_buffer_get_serial_data_read_buffer();
  v4 = atomic_load(buffer);
  v5 = buffer + 1;
  if (v4)
  {
    v6 = 0;
    if (!strncmp(byte_100032160, (buffer + 3), 0x20uLL))
    {
LABEL_7:
      qword_100032EF8[0] = v5 + 34 * v6;
      qword_100033F20 = ps_buffer_create_serial_data_reader();
      qword_100032F00 = ps_buffer_get_serial_data_read_buffer();
      goto LABEL_9;
    }

    v7 = (buffer + 37);
    while (v4 - 1 != v6)
    {
      v8 = strncmp(byte_100032160, v7, 0x20uLL);
      v7 += 34;
      ++v6;
      if (!v8)
      {
        if (v6 >= v4)
        {
          break;
        }

        goto LABEL_7;
      }
    }
  }

  add = atomic_fetch_add(buffer, 1u);
  qword_100032EF8[0] = v5 + 34 * add;
  qword_100033F18 = ps_buffer_create_serial_data_writer();
  qword_100032F00 = ps_buffer_get_serial_data_write_buffer();
  atomic_store(0, qword_100032F00);
  strlcpy((qword_100032EF8[0] + 2), byte_100032160, 0x20uLL);
  v10 = qword_100032EF8[0];
  atomic_store(add, (qword_100032EF8[0] + 1));
  atomic_store(0, v10);
LABEL_9:
  qword_100033F10 = dispatch_queue_create("polaris.telemetry.bufferAllocation", 0);
  v11 = atomic_load(qword_100032EF8[0]);
  if (v11)
  {
    v12 = 0;
    v13 = &qword_100032F10;
    do
    {
      v14 = atomic_load((qword_100032EF8[0] + 1));
      snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v14);
      serial_data_reader = ps_buffer_create_serial_data_reader();
      *(v13 - 1) = ps_buffer_get_serial_data_read_buffer();
      *v13 = 0;
      v13[2] = serial_data_reader;
      ++v12;
      v13 += 4;
    }

    while (v11 != v12);
  }

  dispatch_async(qword_100033F10, &stru_100029138);
  atomic_store(1u, byte_100033F0C);
}

uint64_t sub_100016AF0(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100016BC0;
  v4[3] = &unk_1000290F8;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(qword_100033F10, v4);
  dispatch_async(qword_100033F10, &stru_100029138);
  v1 = v6[3];
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100016BC0(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v3 = atomic_load(qword_100032EF8[0]);
  if (v3)
  {
    v4 = v3 + 1;
    v5 = &qword_100032EF8[4 * v3 - 2];
    while (v5[1] || atomic_load(*v5))
    {
      --v4;
      v5 -= 4;
      if (v4 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  *(*(a1[4] + 8) + 24) = v5;
  v7 = *(*(a1[4] + 8) + 24);
  if (v7 || (a1 = sub_100016D90(), *(*(v2[4] + 8) + 24) = a1, (v7 = *(*(v2[4] + 8) + 24)) != 0))
  {
    if (atomic_load(*v7))
    {
      sub_100018A14();
    }

    atomic_store(1u, (**(*(v2[4] + 8) + 24) + 8));
    *(*(*(v2[4] + 8) + 24) + 8) = v2[5];
    v9 = sub_100016788(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v2[5];
      v11 = *(**(*(v2[4] + 8) + 24) + 9);
      v18 = 67109376;
      LODWORD(v19[0]) = v11;
      WORD2(v19[0]) = 2048;
      *(v19 + 6) = v10;
      v12 = "acquired buffer %d for thread %llu";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 18;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    v16 = sub_100016788(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v2[5];
      v18 = 134217984;
      v19[0] = v17;
      v12 = "unable to acquire buffer for thread %llu";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
      goto LABEL_12;
    }
  }
}

uint64_t *sub_100016D90()
{
  v0 = atomic_load(qword_100032EF8[0]);
  if (v0 == 128)
  {
    return 0;
  }

  v2 = atomic_load((qword_100032EF8[0] + 1));
  snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v2);
  v3 = &qword_100032EF8[4 * v0];
  v3[4] = ps_buffer_create_serial_data_writer();
  v4 = ps_buffer_get_serial_data_write_buffer();
  v3[2] = v4;
  v1 = v3 + 2;
  *(v4 + 9) = v0;
  atomic_store(0, *v1);
  atomic_store(1u, (*v1 + 8));
  v1[1] = 0;
  atomic_fetch_add(qword_100032EF8[0], 1u);
  v6 = sub_100016788(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = __str;
    v10 = 1024;
    v11 = v0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "allocated local buffer with key: %s id: %d", buf, 0x12u);
  }

  return v1;
}

void sub_100016EE8(id a1)
{
  v2 = atomic_load(qword_100032EF8[0]);
  v3 = sub_100016788(a1, v1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v14 = 67109376;
    v15 = v2;
    v16 = 1024;
    v17 = 128;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "thread buffer count: %d, max: %d", &v14, 0xEu);
  }

  if (v2)
  {
    if (v2 == 128)
    {
      return;
    }

    v6 = 0;
    v7 = &qword_100032F10;
    v8 = v2;
    do
    {
      if (!*v7 && !atomic_load(*(v7 - 1)))
      {
        ++v6;
      }

      v7 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = sub_100016788(v4, v5);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    v14 = 67109376;
    v15 = v6;
    v16 = 1024;
    v17 = 4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "free buffer count: %d, watermark: %d", &v14, 0xEu);
  }

  if (v6 <= 3u)
  {
    if (128 - v2 >= (4 - v6))
    {
      LOBYTE(v2) = 4 - v6;
    }

    else
    {
      LOBYTE(v2) = 0x80 - v2;
    }

    v13 = sub_100016788(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v2) = v2;
      v14 = 67109120;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "will allocate %d to meet watermark", &v14, 8u);
      if (!v2)
      {
        return;
      }
    }

    else
    {
      LODWORD(v2) = v2;
      if (!v2)
      {
        return;
      }
    }

    do
    {
      sub_100016D90();
      LODWORD(v2) = v2 - 1;
    }

    while (v2);
  }
}

void sub_1000170D8(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  if (a3 >= 0x7FC1)
  {
    sub_100018A40();
  }

  v8 = sub_100018848();
  if (v8)
  {
    v10 = atomic_load(qword_100032EF8 + "ary/Frameworks/CoreVideo.framework/CoreVideo");
    if ((v10 & 1) == 0)
    {
      sub_100016848(v8, v9);
    }

    off_100031048();
    v12 = v11;
    if ((*v11 & 1) == 0)
    {
      sub_1000172A4();
    }

    off_100031060();
    if (*v13)
    {
      v14 = v13;
      if (*(v12 + 7))
      {
        v15 = sub_1000167F0(*(v12 + 1), 32);
        v16 = atomic_load(*v14);
        if (v16 + v15 > 0x7FF0)
        {
          *(v12 + 3) = vadd_s32(*(v12 + 24), (sub_1000167F0(*(v12 + 1), a3) | 0x100000000));
          return;
        }

        v25 = 0;
        v23 = *(v12 + 2);
        v17 = *(v12 + 3);
        v18.i64[0] = v17;
        v18.i64[1] = HIDWORD(v17);
        v24 = vextq_s8(v18, v18, 8uLL);
        off_100031078();
        LOWORD(v25) = *v19;
        sub_1000172C8(7, &v23, 0x20uLL, 8, v20);
        *(v12 + 3) = 0;
      }

      v21 = sub_1000167F0(*(v12 + 1), a3);
      v22 = atomic_load(*v14);
      if (v22 + v21 >= 0x7FF1)
      {
        *(v12 + 6) = v21;
        *(v12 + 7) = 1;
        *(v12 + 2) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      }

      else
      {

        sub_1000172C8(a1, a2, a3, a4, v21);
      }
    }
  }
}

void sub_1000172A4()
{
  if (sub_100018848())
  {
    sub_100018A6C();
  }
}

void *sub_1000172C8(uint64_t a1, char *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  off_100031048();
  if ((*(v10 + 8) - 32705) <= 0xFFFFFFFFFFFF800ELL)
  {
    sub_100018B78();
  }

  v11 = v10;
  off_100031060();
  v13 = v12;
  v15 = *v12 + v14;
  *(v15 + 2) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v16 = atomic_load((qword_100032EF8[0] + 1));
  v15[36] = v16;
  *(v15 + 8) = dword_100033F08;
  off_100031090();
  *(v15 + 3) = *v17;
  *(v15 + 5) = a1;
  *(v15 + 6) = a3;
  *(v15 + 7) = a4;
  v18 = *v13;
  v19 = *(v11 + 8);
  if (32704 - v19 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = 32704 - v19;
  }

  result = memcpy(v18 + v19 + 64, a2, v20);
  if (32704 - v19 < a3)
  {
    result = memcpy(v18 + 2, &a2[v20], a3 - v20);
  }

  *(v11 + 8) = (v19 + a5) % 0x7FF0;
  atomic_fetch_add(v18, a5);
  return result;
}

void sub_100017458(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "proc_pid_rusage returned errorno %d (%s)", v5, 0x12u);
}

void sub_100017568(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v4 = sub_100013BF4(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v10 = 136315650;
    v11 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
    v12 = 1024;
    v13 = 87;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", &v10, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = sub_100013BF4(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  sub_1000176A8();
}

uint64_t sub_1000176D4(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_clear_get_updated_mask", "index < count");
  v3 = sub_10000ABA8(v1, v2);
  if (sub_10000AB60(v3))
  {
    sub_10000AB2C();
    sub_10000AAEC(&_mh_execute_header, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = sub_10000ABA8(v10, v11);
    if (sub_10000AB78(v12))
    {
      sub_10000AB48();
      sub_10000AB0C(&_mh_execute_header, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    sub_10000AB90();
  }

  v19 = sub_10000AACC();
  return sub_1000177A8(v19);
}

void sub_1000177A8(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_set_mask_value_at_index", "index < 64");
  v3 = sub_10000ABA8(v1, v2);
  if (sub_10000AB60(v3))
  {
    sub_10000AB2C();
    sub_10000AAEC(&_mh_execute_header, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = sub_10000ABA8(v10, v11);
    if (sub_10000AB78(v12))
    {
      sub_10000AB48();
      sub_10000AB0C(&_mh_execute_header, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    sub_10000AB90();
  }

  sub_10000AACC();
  sub_10001787C();
}

CVPixelBufferRef sub_1000178A4(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v4 = sub_100013BF4(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v12 = 136315650;
    v13 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
    v14 = 1024;
    v15 = 85;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", &v12, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = sub_100013BF4(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v12, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = abort_with_reason();
  return sub_1000179E4(v10);
}

CVPixelBufferRef sub_1000179E4(uint64_t a1)
{
  pixelBufferOut = 0;
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v72 = v3;
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(kCFAllocatorDefault, v3);
  [CFDictionaryGetValue(v5 kCVPixelFormatContainsRGB)];
  v6 = [CFDictionaryGetValue(v5 kCVPixelFormatContainsYCbCr)];
  [CFDictionaryGetValue(v5 kCVPixelFormatBitsPerComponent)];
  v7 = [CFDictionaryGetValue(v5 kCVPixelFormatBitsPerBlock)];
  v8 = CFDictionaryGetValue(v5, kCVPixelFormatBlockWidth);
  v9 = CFDictionaryGetValue(v5, kCVPixelFormatBlockHeight);
  v10 = v9;
  if (v8)
  {
    v11 = [v8 unsignedIntValue];
    if (v10)
    {
LABEL_3:
      v12 = [v10 unsignedIntValue];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 1;
LABEL_6:
  CFRelease(v5);
  value = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
  if (!value)
  {
    goto LABEL_29;
  }

  if (v6)
  {
    v69 = v10;
    if (v72 == 875836534)
    {
      v13 = v1;
    }

    else
    {
      v13 = (v1 + 1) >> 1;
    }

    if (v72 == 875836534)
    {
      v14 = v2;
    }

    else
    {
      v14 = (v2 + 1) >> 1;
    }

    v15 = (v1 + 63) & 0xFFFFFFFFFFFFFFC0;
    v16 = (v2 + 63) & 0xFFFFFFFFFFFFFFC0;
    v17 = v16 * v15;
    v18 = 2 * v16 * v15;
    v70 = v15;
    v19 = (v16 >> 1) * v15;
    if (v72 == 875836534)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    CFDictionarySetValue(Mutable, kIOSurfaceCacheMode, &off_100029A60);
    sub_100011154([NSNumber numberWithUnsignedInteger:v1]);
    sub_100011154([NSNumber numberWithUnsignedInteger:v2]);
    sub_100011154([NSNumber numberWithUnsignedInt:v72]);
    v71 = v17;
    sub_100011154([NSNumber numberWithUnsignedLong:v20 + v17]);
    v21 = value;
    CFDictionarySetValue(Mutable, kIOSurfacePlaneInfo, value);
    v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v22)
    {
      v10 = v69;
      goto LABEL_28;
    }

    v23 = v22;
    CFArrayAppendValue(value, v22);
    CFDictionarySetValue(v23, kIOSurfacePlaneOffset, &off_100029A60);
    [NSNumber numberWithUnsignedInteger:v1];
    v24 = sub_100011170();
    CFDictionarySetValue(v24, kIOSurfacePlaneWidth, v25);
    [NSNumber numberWithUnsignedInteger:v2];
    v26 = sub_100011170();
    CFDictionarySetValue(v26, kIOSurfacePlaneHeight, v27);
    CFDictionarySetValue(v23, kIOSurfacePlaneBytesPerElement, &off_100029A78);
    [NSNumber numberWithUnsignedLong:v70];
    v28 = sub_100011170();
    CFDictionarySetValue(v28, kIOSurfacePlaneBytesPerRow, v29);
    [NSNumber numberWithUnsignedLong:v71];
    v30 = sub_100011170();
    CFDictionarySetValue(v30, kIOSurfacePlaneSize, v31);
    CFRelease(v23);
    v32 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v32)
    {
      v10 = v69;
      v21 = value;
      goto LABEL_28;
    }

    v33 = v32;
    CFArrayAppendValue(value, v32);
    [NSNumber numberWithUnsignedLong:v71];
    v34 = sub_100011170();
    CFDictionarySetValue(v34, kIOSurfacePlaneOffset, v35);
    [NSNumber numberWithUnsignedLong:v13];
    v36 = sub_100011170();
    CFDictionarySetValue(v36, kIOSurfacePlaneWidth, v37);
    [NSNumber numberWithUnsignedLong:v14];
    v38 = sub_100011170();
    CFDictionarySetValue(v38, kIOSurfacePlaneHeight, v39);
    CFDictionarySetValue(v33, kIOSurfacePlaneBytesPerElement, &off_100029A90);
    [NSNumber numberWithUnsignedLong:v70 << (v72 == 875836534)];
    v40 = sub_100011170();
    CFDictionarySetValue(v40, kIOSurfacePlaneBytesPerRow, v41);
    [NSNumber numberWithUnsignedLong:v20];
    v42 = sub_100011170();
    CFDictionarySetValue(v42, kIOSurfacePlaneSize, v43);
    v10 = v69;
    goto LABEL_23;
  }

  v44 = v7 / v11 / v12;
  sub_100011154([NSNumber numberWithUnsignedInteger:v1]);
  sub_100011154([NSNumber numberWithUnsignedInteger:v2]);
  sub_100011154([NSNumber numberWithUnsignedInt:v72]);
  sub_100011154([NSNumber numberWithUnsignedLong:v44 >> 3]);
  v45 = (v1 * v44 + 511) >> 3;
  sub_100011154([NSNumber numberWithUnsignedLong:v45 & 0x1FFFFFFFFFFFFFC0]);
  if (v72 != 1899524402)
  {
    goto LABEL_24;
  }

  v21 = value;
  CFDictionarySetValue(Mutable, kIOSurfacePlaneInfo, value);
  v46 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v46)
  {
    v33 = v46;
    CFArrayAppendValue(value, v46);
    CFDictionarySetValue(v33, kIOSurfacePlaneOffset, &off_100029A60);
    [NSNumber numberWithUnsignedInteger:v1];
    v47 = sub_100011170();
    CFDictionarySetValue(v47, kIOSurfacePlaneWidth, v48);
    [NSNumber numberWithUnsignedInteger:v2];
    v49 = sub_100011170();
    CFDictionarySetValue(v49, kIOSurfacePlaneHeight, v50);
    [NSNumber numberWithUnsignedLong:v44];
    v51 = sub_100011170();
    CFDictionarySetValue(v51, kIOSurfacePlaneBitsPerElement, v52);
    [NSNumber numberWithUnsignedLong:v45 & 0x1FFFFFFFFFFFFFC0];
    v53 = sub_100011170();
    CFDictionarySetValue(v53, kIOSurfacePlaneBytesPerRow, v54);
LABEL_23:
    CFRelease(v33);
LABEL_24:
    v55 = IOSurfaceCreate(Mutable);
    if (!v55)
    {
      v64 = sub_100013BF4(0, v56);
      v21 = value;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "failed to allocate IO Surface for properties", buf, 2u);
      }

      goto LABEL_28;
    }

    v57 = v55;
    CFDictionarySetValue(Mutable, kCVPixelBufferDoNotIncrementUseCountKey, kCFBooleanTrue);
    v58 = CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, v57, Mutable, &pixelBufferOut);
    if (v58)
    {
      v65 = v58;
      v66 = sub_100013BF4(v58, v59);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v76 = v65;
        v67 = "failed to create CV Pixel Buffer for resource ret=%d";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v67, buf, 8u);
      }
    }

    else
    {
      v60 = CVPixelBufferIncrementUseCountForCategory();
      if (!v60)
      {
LABEL_27:
        CFRelease(value);
        v21 = v57;
        goto LABEL_28;
      }

      v68 = v60;
      v66 = sub_100013BF4(v60, v61);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v76 = v68;
        v67 = "failed to increment category 1 use count for CV Pixel Buffer ret=%d";
        goto LABEL_39;
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  CFRelease(v21);
LABEL_29:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v62 = pixelBufferOut;

  return v62;
}

void sub_1000181C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100013BF4(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Serialize: metadata size exceeds allocated size!\n", v3, 2u);
  }

  abort();
}

void sub_100018224(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013BF4(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Key : %@ not found in map. Make sure you have created the enum for the resource", &v4, 0xCu);
  }

  abort();
}

void sub_100018290(char a1, uint64_t a2, os_log_t log)
{
  if (a1)
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "In PSSynchronizer, requested to close stream %@ which does not exist. Aborting", &v4, 0xCu);
  }

  abort();
}

uint64_t sub_1000182FC(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to register for user activity notifications");
  v4 = sub_100013BF4(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v12 = 136315650;
    v13 = "[PSPowerManager registerForUserActivityNotifications:]_block_invoke";
    v14 = 1024;
    v15 = 209;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", &v12, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = sub_100013BF4(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[PSPowerManager registerForUserActivityNotifications:]_block_invoke";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v12, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = abort_with_reason();
  return sub_10001843C(v10);
}

uint64_t sub_10001843C(uint64_t result)
{
  if (atomic_fetch_add((result + 136), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*(result + 144) + 16))();
  }

  return result;
}

void sub_100018464(void *a1, mach_error_t a2)
{
  v4 = sub_100014E84(a1, a2);
  v5 = asprintf(v2, "%s: semaphore_signal failed with code %d (%s)", "ps_gsm_signal_sem", v3, v4);
  v7 = sub_1000013E0(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    mach_error_string(v3);
    sub_100014EE4();
    sub_100014EA4(&_mh_execute_header, v8, v9, "%s:%d %s: semaphore_signal failed with code %d (%s)", v10, v11, v12, v13, v25, v26, v27, v28);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = sub_1000013E0(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100014EC4(&_mh_execute_header, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v25, v26, v27, v28);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = sub_10000AACC();
  sub_10001855C(v23, v24);
}

void sub_10001855C(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Out of bounds assert error (%llu > %llu)", a2, 1024);
  v4 = sub_10000ABA8(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100015A9C(&_mh_execute_header, v5, v6, "%s:%d Out of bounds assert error (%llu > %llu)", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = sub_10000ABA8(v11, v12);
    if (sub_10000AB78(v13))
    {
      sub_10000AB48();
      sub_10000AB0C(&_mh_execute_header, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    sub_10000AB90();
  }

  v20 = sub_10000AACC();
  sub_100018644(v20, v21);
}

void sub_100018644(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Stride %llu does not fit within the allocated %d bits.", a2, 10);
  v5 = sub_1000013E0(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v18 = "ps_gsm_gst_trigger_set_stride";
    v19 = 1024;
    v20 = 96;
    v21 = 2048;
    v22 = a2;
    v23 = 1024;
    v24 = 10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s:%d Stride %llu does not fit within the allocated %d bits.", buf, 0x22u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = sub_1000013E0(v6, v7);
    if (sub_10000AB78(v8))
    {
      sub_10000AB48();
      sub_10000AB0C(&_mh_execute_header, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    sub_10000AB90();
  }

  sub_10000AACC();
  sub_100018740();
}

uint64_t sub_100018848()
{
  if (byte_100032EF1)
  {
    v2 = 0;
  }

  else
  {
    v0 = &qword_100031B90[142];
    v1 = qword_100032138;
    if (!qword_100032138)
    {
      if (qword_100032140 != -1)
      {
        dispatch_once(&qword_100032140, &stru_100029050);
        v0 = qword_100031B90 + 1136;
      }

      v1 = v0[39];
    }

    v2 = atomic_load(v1);
  }

  return v2 & 1;
}

uint64_t sub_1000188E4(char *__s1)
{
  if (byte_100032EF1)
  {
    return 0xFFFFLL;
  }

  v2 = atomic_load(byte_100033F0C);
  if ((v2 & 1) == 0 && qword_100032158 != -1)
  {
    dispatch_once(&qword_100032158, &stru_1000290D0);
  }

  if (!atomic_load(qword_100032F00))
  {
LABEL_9:
    v8 = atomic_load(qword_100032F00);
    if (v8 != 1024)
    {
      add = atomic_fetch_add(qword_100032F00, 1u);
      strlcpy((qword_100032F00 + 130 * add + 4), __s1, 0x80uLL);
      atomic_store(add, (qword_100032F00 + 130 * add + 2));
      return add;
    }

    return 0xFFFFLL;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = qword_100032F00;
    if (!strncmp(__s1, (qword_100032F00 + v5 * 2 + 2), 0x80uLL))
    {
      return atomic_load(&v6[v5]);
    }

    ++v4;
    v7 = atomic_load(v6);
    v5 += 65;
    if (v4 >= v7)
    {
      goto LABEL_9;
    }
  }
}

void sub_100018A6C()
{
  off_100031048();
  if ((*v0 & 1) == 0)
  {
    v1 = v0;
    *v0 = 1;
    off_100031090();
    v3 = v2;
    pthread_threadid_np(0, v2);
    v4 = pthread_self();
    pthread_getname_np(v4, __s1, 0x40uLL);
    sub_1000188E4(__s1);
    off_100031078();
    *v5 = v7;
    LOBYTE(v7) = atomic_load(qword_100032EF8 + "ary/Frameworks/CoreVideo.framework/CoreVideo");
    if ((v7 & 1) == 0)
    {
      sub_100016848(v5, v6);
    }

    sub_100016AF0(*v3);
    off_100031060();
    *v8 = v9;
    if (v9)
    {
      *(v1 + 1) = 0;
      *(v1 + 3) = 0;
    }
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v393 = 0;
  v392 = 0;
  default_set = 0;
  set = 0;
  v468 = 0;
  v467 = 0;
  *&size[1] = 0;
  v525.name = "threads";
  v525.flag = &v467 + 1;
  v525.has_arg = 0;
  v525.val = 1;
  v526 = "dq";
  v528 = &v467;
  v527 = 0;
  v529 = 1;
  v530 = "boosts";
  v532 = &size[2];
  v531 = 0;
  v533 = 1;
  v534 = "coalitions-only";
  v536 = &size[1];
  v535 = 0;
  v537 = 1;
  v538 = "xpcinfo";
  v540 = 0;
  v539 = 2;
  v541 = 6;
  v542 = "responsibility";
  v544 = 0;
  v543 = 2;
  v545 = 7;
  v546 = "precise";
  v548 = 0;
  v547 = 2;
  v549 = 5;
  v550 = "threadcounts";
  v552 = 0;
  v551 = 2;
  v553 = 1;
  v554 = "vouchers";
  v555 = 2;
  v556 = 0;
  v557 = 2;
  v558 = "coalitions";
  v390 = 1;
  v559 = 1;
  v560 = 0;
  v561 = 4;
  v562 = "verbose";
  v563 = 0;
  v564 = 0;
  v565 = 3;
  v566 = "all";
  v567 = 0;
  v568 = 0;
  v569 = 8;
  v570 = "help";
  v571 = 0;
  v572 = 0;
  v573 = 104;
  v575 = 0u;
  v574 = 0u;
  qword_1000100D0 = &v525;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = getopt_long(v3, v2, "h", &v525, &dword_1000100C8);
          if (v5 > 3)
          {
            break;
          }

          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v390 = 1;
              if (optarg)
              {
                v390 = sub_100005274() != 0;
              }
            }

            else
            {
              v467 = 0x100000001;
              size[2] = 1;
              v393 = 1;
              byte_100010000 = 1;
            }
          }

          else if (v5)
          {
            if (v5 != 1)
            {
              if (v5 != -1)
              {
                goto LABEL_72;
              }

              if (v4)
              {
                v8 = 1;
              }

              else
              {
                v8 = size[1] == 0;
              }

              if (v8)
              {
                v9 = v4;
              }

              else
              {
                v9 = 2;
              }

              v369 = v9;
              if (optind >= v3)
              {
                v372 = 0;
                v373 = 0;
                __s1 = 0;
              }

              else
              {
                v10 = v2[optind];
                __endptr[0] = 0;
                v11 = strtoul(v10, __endptr, 10);
                __s1 = v10;
                v373 = v11 >> 31 == 0 && v10 != __endptr[0];
                if (v373)
                {
                  v12 = v11;
                }

                else
                {
                  v12 = 0;
                }

                v372 = v12;
              }

              if (geteuid())
              {
                sub_100006198();
              }

              if (sub_1000052D4("kern.development"))
              {
                v13 = sub_100005358("kern.development") != 0;
              }

              else
              {
                v13 = 0;
              }

              byte_100010001 = v13;
              if (sub_1000052D4("kern.thread_groups_supported"))
              {
                v14 = sub_100005358("kern.thread_groups_supported") != 0;
              }

              else
              {
                v14 = 0;
              }

              byte_100010002 = v14;
              if (sub_1000052D4("kern.monotonic.supported"))
              {
                v15 = sub_100005358("kern.monotonic.supported") != 0;
              }

              else
              {
                v15 = 0;
              }

              byte_100010003 = v15;
              if (qword_100010018 != -1)
              {
                sub_1000061CC();
              }

              v377 = dword_100010020;
              size[0] = 0;
              *v576 = 0x800000001;
              v468 = 4;
              if (sysctl(v576, 2u, size, &v468, 0, 0))
              {
                sub_1000061F4();
              }

              v370 = malloc_type_malloc(size[0], 0x9CFE35B2uLL);
              if (!v370)
              {
                sub_100006420();
              }

              v16 = mach_timebase_info(&stru_100010004);
              if (v16)
              {
                v362 = v16;
                v363 = "mach_timebase_info";
              }

              else
              {
                v17 = mach_host_self();
                v18 = processor_set_default(v17, &default_set);
                if (v18)
                {
                  v362 = v18;
                  v363 = "processor_set_default";
                }

                else
                {
                  v19 = mach_host_self();
                  v20 = host_processor_set_priv(v19, default_set, &set);
                  if (v20)
                  {
                    v362 = v20;
                    v363 = "host_processor_set_priv";
                  }

                  else
                  {
                    task_list = 0;
                    task_listCnt = 0;
                    if (v390 || v467 != 0)
                    {
                      v21 = processor_set_tasks_with_flavor(set, 1u, &task_list, &task_listCnt);
                      if (v21)
                      {
                        mach_error("processor_set_tasks_with_flavor(TASK_FLAVOR_READ)", v21);
                      }

                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
LABEL_64:
                        if (!__s1)
                        {
                          printf("num tasks: %u\n\n", v22);
                        }

                        if (size[2])
                        {
                          v24 = stackshot_config_create();
                          if (v24)
                          {
                            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
                            if (Mutable)
                            {
                              cf = Mutable;
                              if (stackshot_config_set_flags())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_config_set_flags failure\n";
                                v28 = 35;
                                goto LABEL_79;
                              }

                              if (stackshot_config_set_pid())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_config_set_pid failure\n";
                                v28 = 33;
                                goto LABEL_79;
                              }

                              if (stackshot_capture_with_config())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_capture_with_config failure\n";
                                v28 = 38;
LABEL_79:
                                fwrite(v27, v28, 1uLL, v26);
LABEL_80:
                                stackshot_config_dealloc();
                                CFRelease(cf);
                                goto LABEL_81;
                              }

                              stackshot_buffer = stackshot_config_get_stackshot_buffer();
                              v337 = stackshot_buffer + stackshot_config_get_stackshot_size();
                              v338 = stackshot_buffer + 16;
                              if (stackshot_buffer + 16 > v337)
                              {
LABEL_82:
                                v29 = malloc_type_calloc(4uLL, task_listCnt, 0xDCA693A2uLL);
                                v374 = v29;
                                if (task_listCnt)
                                {
                                  v30 = 0;
                                  v31 = v29;
                                  do
                                  {
                                    v32 = pid_for_task(task_list[v30], v31);
                                    if (v32)
                                    {
                                      mach_error("pid_for_task", v32);
                                    }

                                    ++v30;
                                    ++v31;
                                  }

                                  while (v30 < task_listCnt);
                                  v33 = size[1] == 0;
                                  v34 = task_listCnt;
                                  if (task_listCnt)
                                  {
                                    v35 = v374;
                                    if (!size[1])
                                    {
                                      v36 = 0;
                                      v367 = dispatch_queue_offsets[1];
                                      do
                                      {
                                        v37 = v35[v36];
                                        task_info_outCnt = 0;
                                        memset(&basic_info, 0, sizeof(basic_info));
                                        v460 = 0u;
                                        v461 = 0u;
                                        v459 = 0;
                                        task_info_out = 0u;
                                        v458 = 0u;
                                        v455 = 0;
                                        v456 = 0;
                                        v454 = 0;
                                        v452 = 0u;
                                        v453 = 0u;
                                        v450 = 0u;
                                        v451 = 0u;
                                        v448 = 0u;
                                        v449 = 0u;
                                        v446 = 0u;
                                        v447 = 0u;
                                        v523 = 0u;
                                        v524 = 0u;
                                        v521 = 0u;
                                        v522 = 0u;
                                        v444 = 0;
                                        v445 = 0;
                                        v442 = 0u;
                                        v443 = 0u;
                                        policy_info = 0u;
                                        v441 = 0u;
                                        v520 = 0;
                                        v519 = 0u;
                                        memset(v518, 0, sizeof(v518));
                                        v516 = 0u;
                                        v517 = 0u;
                                        buffer = 0u;
                                        v515 = 0u;
                                        v438 = 0;
                                        v439 = 0;
                                        memset(v437, 0, sizeof(v437));
                                        v513 = 0;
                                        v511 = 0u;
                                        v512 = 0u;
                                        uu = 0u;
                                        v435 = 0;
                                        v436 = 0;
                                        v434 = 0;
                                        v508 = 0u;
                                        v509 = 0u;
                                        v506 = 0u;
                                        v507 = 0u;
                                        v504 = 0u;
                                        v505 = 0u;
                                        v502 = 0u;
                                        v503 = 0u;
                                        v500 = 0u;
                                        v501 = 0u;
                                        v498 = 0u;
                                        v499 = 0u;
                                        memset(v497, 0, sizeof(v497));
                                        v495 = 0u;
                                        v496 = 0u;
                                        v493 = 0u;
                                        v494 = 0u;
                                        v491 = 0u;
                                        v492 = 0u;
                                        v489 = 0u;
                                        v490 = 0u;
                                        v487 = 0u;
                                        v488 = 0u;
                                        v485 = 0u;
                                        v486 = 0u;
                                        v483 = 0u;
                                        v484 = 0u;
                                        v482 = 0u;
                                        flags = 0;
                                        act_list = 0;
                                        *x = 0;
                                        if (pid_for_task(task_list[v36], x))
                                        {
                                          fprintf(__stderrp, "pid %d no longer active, skipping\n", v35[v36]);
                                          goto LABEL_891;
                                        }

                                        if (x[0] != v35[v36])
                                        {
                                          fprintf(__stderrp, "task %u pid changed? from %d to %d\n", task_list[v36], v35[v36], x[0]);
                                        }

                                        if (proc_pidinfo(v37, 3, 0, &buffer, 136) <= 135)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDTBSDINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 19, 0, &v439, 8) <= 7)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDARCHINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 30, 0, &v434, 4) <= 3)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDPLATFORMINFO ...)");
                                        }

                                        *__error() = 0;
                                        if (proc_pidinfo(v37, 12, 0, &v435, 16) <= 15)
                                        {
                                          if (*__error() == 3)
                                          {
                                            v396 = 0;
                                            if (!v37)
                                            {
                                              goto LABEL_103;
                                            }

                                            goto LABEL_110;
                                          }

                                          if (!v37 && *__error() == 22)
                                          {
                                            v38 = 0;
                                            v396 = 0;
                                            goto LABEL_107;
                                          }

                                          perror("proc_pidinfo(, ... PROC_PIDWORKQUEUEINFO ...)");
                                        }

                                        v396 = 1;
                                        if (!v37)
                                        {
LABEL_103:
                                          v38 = 0;
LABEL_107:
                                          v39 = "kernel_task";
                                          goto LABEL_113;
                                        }

LABEL_110:
                                        *v576 = 0x3100000001;
                                        v576[2] = v37;
                                        v468 = size[0];
                                        if (sysctl(v576, 3u, v370, &v468, 0, 0))
                                        {
                                          perror("sysctl(... KERN_PROCARGS2 ...)");
                                          if (v518[0])
                                          {
                                            v39 = v518;
                                          }

                                          else
                                          {
                                            v39 = &v517;
                                          }
                                        }

                                        else
                                        {
                                          v39 = basename(v370 + 4);
                                        }

                                        v38 = 1;
LABEL_113:
                                        if (__s1)
                                        {
                                          if (v39)
                                          {
                                            if (strncmp(__s1, v39, 0x20uLL) && (!v373 || v372 != v37))
                                            {
                                              goto LABEL_891;
                                            }
                                          }

                                          else if (!v373 || v372 != v37)
                                          {
                                            goto LABEL_891;
                                          }
                                        }

                                        task_info_outCnt = 10;
                                        v40 = task_info(task_list[v36], 0x12u, &task_info_out, &task_info_outCnt);
                                        if (v40)
                                        {
                                          mach_error("task_info(... TASK_BASIC_INFO ...)", v40);
                                        }

                                        task_info_outCnt = 4;
                                        v41 = task_info(task_list[v36], 3u, &v455, &task_info_outCnt);
                                        if (v41)
                                        {
                                          mach_error("task_info(... TASK_THREAD_TIMES_INFO ...)", v41);
                                        }

                                        task_info_outCnt = 26;
                                        v42 = task_info(task_list[v36], 0x1Au, &v448, &task_info_outCnt);
                                        if (v42)
                                        {
                                          mach_error("task_info(... TASK_POWER_INFO_V2 ...)", v42);
                                        }

                                        task_info_outCnt = 8;
                                        v43 = task_info(task_list[v36], 2u, &v446, &task_info_outCnt);
                                        if (v43)
                                        {
                                          mach_error("task_info(... TASK_EVENTS_INFO ...)", v43);
                                        }

                                        task_info_outCnt = 16;
                                        v44 = task_info(task_list[v36], 0x13u, &v521, &task_info_outCnt);
                                        if (v44)
                                        {
                                          mach_error("task_info(... TASK_EXTMOD_INFO ...)", v44);
                                        }

                                        task_info_outCnt = 4;
                                        v45 = task_info(task_list[v36], 0x10u, &v444, &task_info_outCnt);
                                        if (v45)
                                        {
                                          mach_error("task_info(... TASK_AFFINITY_TAG_INFO ...)", v45);
                                        }

                                        task_info_outCnt = 8;
                                        v46 = task_info(task_list[v36], 0xFu, &v460, &task_info_outCnt);
                                        if (v46)
                                        {
                                          mach_error("task_info(... TASK_AUDIT_TOKEN ...)", v46);
                                        }

                                        v47 = mach_port_space_basic_info(task_list[v36], &basic_info);
                                        if (v47)
                                        {
                                          mach_error("mach_port_space_basic_info()", v47);
                                        }

                                        if (v38)
                                        {
                                          LODWORD(__endptr[0]) = 0;
                                          task_info_outCnt = 16;
                                          v48 = task_policy_get(task_list[v36], 4u, &policy_info, &task_info_outCnt, __endptr);
                                          if (v48)
                                          {
                                            mach_error("task_policy_get(... TASK_POLICY_STATE ...)", v48);
                                          }
                                        }

                                        if (proc_pidinfo(v37, 20, 0, v437, 40) <= 39)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDCOALITIONINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 17, 0, &uu, 56) <= 55)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDUNIQIDENTIFIERINFO ...)");
                                        }

                                        if (proc_pid_rusage(v37, 6, &v482))
                                        {
                                          perror("proc_pid_rusage");
                                        }

                                        if (proc_get_dirty(v37, &flags))
                                        {
                                          perror("proc_get_dirty");
                                        }

                                        v430 = 0;
                                        if (csops())
                                        {
                                          perror("csops_audittoken");
                                        }

                                        __nel = v38;
                                        if (HIDWORD(v467))
                                        {
                                          v49 = task_threads(task_list[v36], &act_list, &x[1]);
                                          if (v49)
                                          {
                                            mach_error("task_threads", v49);
                                          }
                                        }

                                        v429 = 0;
                                        v428 = 0u;
                                        v427 = 0u;
                                        v426 = 0u;
                                        v50 = proc_pidinfo(v37, 1, 0, 0, 0);
                                        v51 = v50;
                                        if (v50 <= 0)
                                        {
                                          v52 = 0;
                                          if (v50 != -1)
                                          {
                                            goto LABEL_162;
                                          }

                                          v57 = "proc_pidinfo(PROC_PIDLISTFDS)";
LABEL_897:
                                          perror(v57);
                                          goto LABEL_162;
                                        }

                                        v52 = malloc_type_malloc(v50, 0x100004000313F17uLL);
                                        v53 = proc_pidinfo(v37, 1, 0, v52, v51);
                                        if (v53 <= 0)
                                        {
                                          if (v53 != -1)
                                          {
                                            goto LABEL_162;
                                          }

                                          v57 = "proc_pidinfo(PROC_PIDLISTFDS, fds)";
                                          goto LABEL_897;
                                        }

                                        v54 = v53 >> 3;
                                        LODWORD(v426) = v53 >> 3;
                                        if (v53 >= 8)
                                        {
                                          v55 = 4;
                                          do
                                          {
                                            v56 = *&v52[v55];
                                            if (v56 >= 0xC)
                                            {
                                              v56 = 12;
                                            }

                                            ++*(&v426 + v56 + 1);
                                            v55 += 8;
                                            --v54;
                                          }

                                          while (v54);
                                        }

LABEL_162:
                                        free(v52);
                                        printf("process: %s [%d]\n", v39, v37);
                                        printf("unique ID/version: %llu / %d, parent: %u / %llu / %d\n", v511, v512, v515, *(&v511 + 1), DWORD1(v512));
                                        printf("audit: { auid %d uid %u gid %u ruid %u rgid %u pid %u asid %u version %u}\n", v460, DWORD1(v460), DWORD2(v460), HIDWORD(v460), v461, DWORD1(v461), DWORD2(v461), HIDWORD(v461));
                                        memset(out, 0, 37);
                                        uuid_unparse(&uu, out);
                                        printf("executable uuid: %s\n", out);
                                        switch(v439)
                                        {
                                          case 7:
                                            v58 = "i386";
                                            break;
                                          case 0x1000007:
                                            v58 = "x86_64";
                                            break;
                                          case 0x100000C:
                                            v58 = "arm64";
                                            if ((HIDWORD(v439) & 0xFFFFFF) == 2)
                                            {
                                              v58 = "arm64e";
                                            }

                                            break;
                                          default:
                                            v58 = "arm";
                                            if (v439 != 12)
                                            {
                                              v58 = "???";
                                            }

                                            break;
                                        }

                                        v385 = v36;
                                        v388 = v37;
                                        key = v37;
                                        printf("architecture: %s\n", v58);
                                        v59 = "unknown";
                                        if (v434 <= 0xC)
                                        {
                                          v59 = (&off_10000C3F0)[v434];
                                        }

                                        printf("platform: %s (%u)\n", v59, v434);
                                        v60 = " valid";
                                        v61 = &unk_100007155;
                                        if ((v430 & 1) == 0)
                                        {
                                          v60 = &unk_100007155;
                                        }

                                        v382 = v60;
                                        v62 = " adhoc";
                                        if ((v430 & 2) == 0)
                                        {
                                          v62 = &unk_100007155;
                                        }

                                        v379 = v62;
                                        if ((v430 & 4) != 0)
                                        {
                                          v63 = " get_task_allow";
                                        }

                                        else
                                        {
                                          v63 = &unk_100007155;
                                        }

                                        if ((v430 & 8) != 0)
                                        {
                                          v64 = " installer";
                                        }

                                        else
                                        {
                                          v64 = &unk_100007155;
                                        }

                                        if ((v430 & 0x10) != 0)
                                        {
                                          v65 = " forced_lv";
                                        }

                                        else
                                        {
                                          v65 = &unk_100007155;
                                        }

                                        if ((v430 & 0x20) != 0)
                                        {
                                          v66 = " invalid_allowed";
                                        }

                                        else
                                        {
                                          v66 = &unk_100007155;
                                        }

                                        if ((v430 & 0x100) != 0)
                                        {
                                          v67 = " hard";
                                        }

                                        else
                                        {
                                          v67 = &unk_100007155;
                                        }

                                        if ((v430 & 0x200) != 0)
                                        {
                                          v68 = " kill";
                                        }

                                        else
                                        {
                                          v68 = &unk_100007155;
                                        }

                                        if ((v430 & 0x400) != 0)
                                        {
                                          v69 = " check_expiration";
                                        }

                                        else
                                        {
                                          v69 = &unk_100007155;
                                        }

                                        if ((v430 & 0x800) != 0)
                                        {
                                          v70 = " restrict";
                                        }

                                        else
                                        {
                                          v70 = &unk_100007155;
                                        }

                                        if ((v430 & 0x1000) != 0)
                                        {
                                          v71 = " enforcement";
                                        }

                                        else
                                        {
                                          v71 = &unk_100007155;
                                        }

                                        if ((v430 & 0x2000) != 0)
                                        {
                                          v72 = " require_lv";
                                        }

                                        else
                                        {
                                          v72 = &unk_100007155;
                                        }

                                        if ((v430 & 0x4000) != 0)
                                        {
                                          v73 = " entitlements_validated";
                                        }

                                        else
                                        {
                                          v73 = &unk_100007155;
                                        }

                                        if ((v430 & 0x8000) != 0)
                                        {
                                          v74 = " nvram_unrestricted";
                                        }

                                        else
                                        {
                                          v74 = &unk_100007155;
                                        }

                                        if ((v430 & 0x10000) != 0)
                                        {
                                          v75 = " runtime";
                                        }

                                        else
                                        {
                                          v75 = &unk_100007155;
                                        }

                                        if ((v430 & 0x20000) != 0)
                                        {
                                          v76 = " linker_signed";
                                        }

                                        else
                                        {
                                          v76 = &unk_100007155;
                                        }

                                        if ((v430 & 0x100000) != 0)
                                        {
                                          v77 = " exec_set_hard";
                                        }

                                        else
                                        {
                                          v77 = &unk_100007155;
                                        }

                                        if ((v430 & 0x200000) != 0)
                                        {
                                          v78 = " exec_set_kill";
                                        }

                                        else
                                        {
                                          v78 = &unk_100007155;
                                        }

                                        if ((v430 & 0x400000) != 0)
                                        {
                                          v79 = " exec_set_enforcement";
                                        }

                                        else
                                        {
                                          v79 = &unk_100007155;
                                        }

                                        if ((v430 & 0x800000) != 0)
                                        {
                                          v80 = " exec_inherit_sip";
                                        }

                                        else
                                        {
                                          v80 = &unk_100007155;
                                        }

                                        if ((v430 & 0x1000000) != 0)
                                        {
                                          v81 = " killed";
                                        }

                                        else
                                        {
                                          v81 = &unk_100007155;
                                        }

                                        if ((v430 & 0x2000000) != 0)
                                        {
                                          v82 = " dyld_platform";
                                        }

                                        else
                                        {
                                          v82 = &unk_100007155;
                                        }

                                        if ((v430 & 0x4000000) != 0)
                                        {
                                          v83 = " platform_binary";
                                        }

                                        else
                                        {
                                          v83 = &unk_100007155;
                                        }

                                        if ((v430 & 0x8000000) != 0)
                                        {
                                          v84 = " platform_path";
                                        }

                                        else
                                        {
                                          v84 = &unk_100007155;
                                        }

                                        if ((v430 & 0x10000000) != 0)
                                        {
                                          v85 = " debugged";
                                        }

                                        else
                                        {
                                          v85 = &unk_100007155;
                                        }

                                        if ((v430 & 0x20000000) != 0)
                                        {
                                          v86 = " signed";
                                        }

                                        else
                                        {
                                          v86 = &unk_100007155;
                                        }

                                        v87 = " dev_code";
                                        if ((v430 & 0x40000000) == 0)
                                        {
                                          v87 = &unk_100007155;
                                        }

                                        if (v430 < 0)
                                        {
                                          v61 = " datavault_controller";
                                        }

                                        printf("cs_flags (0x%x):%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\n", v430, v382, v379, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v61);
                                        v88 = 0;
                                        v89 = v437;
                                        v90 = 1;
                                        do
                                        {
                                          v91 = v90;
                                          v92 = sub_1000053D4();
                                          v94 = v93;
                                          v95 = *v89;
                                          if (v88)
                                          {
                                            printf("coalition (type %d JETSAM) ID: %llu", 1, v95);
                                            if (byte_100010001 == 1 && byte_100010002 == 1 && (byte_100010024 & 1) == 0)
                                            {
                                              v578 = 0u;
                                              *__endptr = 0u;
                                              if (coalition_info_debug_info() == -1)
                                              {
                                                sub_100006214();
                                              }

                                              else
                                              {
                                                v96 = "A";
                                                if ((BYTE4(__endptr[1]) & 2) == 0)
                                                {
                                                  v96 = "-";
                                                }

                                                v97 = "U";
                                                if ((WORD2(__endptr[1]) & 0x100) == 0)
                                                {
                                                  v97 = "-";
                                                }

                                                v98 = "E";
                                                if ((BYTE4(__endptr[1]) & 1) == 0)
                                                {
                                                  v98 = "-";
                                                }

                                                v99 = "C";
                                                if ((BYTE4(__endptr[1]) & 4) == 0)
                                                {
                                                  v99 = "-";
                                                }

                                                v100 = "B";
                                                if ((BYTE4(__endptr[1]) & 8) == 0)
                                                {
                                                  v100 = "-";
                                                }

                                                v101 = "X";
                                                if ((WORD2(__endptr[1]) & 0x200) == 0)
                                                {
                                                  v101 = "-";
                                                }

                                                v102 = "T";
                                                if ((WORD2(__endptr[1]) & 0x400) == 0)
                                                {
                                                  v102 = "-";
                                                }

                                                v103 = "G";
                                                if ((WORD2(__endptr[1]) & 0x800) == 0)
                                                {
                                                  v103 = "-";
                                                }

                                                v104 = "P";
                                                if ((WORD2(__endptr[1]) & 0x1000) == 0)
                                                {
                                                  v104 = "-";
                                                }

                                                printf(" group 0x%llx (%s%s%s%s%s%s%s%s%s, 0x%u)", __endptr[0], v96, v97, v98, v99, v100, v101, v102, v103, v104, LODWORD(__endptr[1]));
                                              }
                                            }

                                            sub_10000547C(v92, v94);
                                            v105 = coalition_policy_get();
                                            if (v105 == 1)
                                            {
                                              printf(" suppressed (BG)");
                                            }

                                            else if (v105 == -1 && (byte_10001000C & 1) == 0)
                                            {
                                              sub_100006240();
                                            }
                                          }

                                          else
                                          {
                                            printf("coalition (type %d RESOURCE) ID: %llu", 0, v95);
                                            sub_10000547C(v92, v94);
                                          }

                                          putchar(10);
                                          free(v92);
                                          free(v94);
                                          v90 = 0;
                                          v88 = 1;
                                          v89 = &v437[8];
                                        }

                                        while ((v91 & 1) != 0);
                                        v106 = v443;
                                        printf("suspend count: %d\n", task_info_out);
                                        v107 = *(&task_info_out + 4);
                                        if (*(&task_info_out + 4) <= 0x8000000000000uLL)
                                        {
                                          if (*(&task_info_out + 4) <= 0x20000000000uLL)
                                          {
                                            if (*(&task_info_out + 4) <= 0x80000000uLL)
                                            {
                                              if (*(&task_info_out + 4) <= 0x200000uLL)
                                              {
                                                if (*(&task_info_out + 4) > 0x800uLL)
                                                {
                                                  v107 = v107 * 0.0009765625;
                                                }

                                                v108 = &unk_100007155;
                                                if (*(&task_info_out + 4) > 0x800uLL)
                                                {
                                                  v108 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v107 = v107 * 0.000000953674316;
                                                v108 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v107 = v107 * 9.31322575e-10;
                                              v108 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v107 = v107 * 9.09494702e-13;
                                            v108 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v107 = v107 * 8.8817842e-16;
                                          v108 = "Pi";
                                        }

                                        v109 = *(&v486 + 1);
                                        if (*(&v486 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v486 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v486 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v486 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v486 + 1) > 0x800uLL)
                                                {
                                                  v109 = v109 * 0.0009765625;
                                                }

                                                v110 = &unk_100007155;
                                                if (*(&v486 + 1) > 0x800uLL)
                                                {
                                                  v110 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v109 = v109 * 0.000000953674316;
                                                v110 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v109 = v109 * 9.31322575e-10;
                                              v110 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v109 = v109 * 9.09494702e-13;
                                            v110 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v109 = v109 * 8.8817842e-16;
                                          v110 = "Pi";
                                        }

                                        v111 = v497[0];
                                        if (v497[0] <= 0x8000000000000uLL)
                                        {
                                          if (v497[0] <= 0x20000000000uLL)
                                          {
                                            if (v497[0] <= 0x80000000uLL)
                                            {
                                              if (v497[0] <= 0x200000uLL)
                                              {
                                                if (v497[0] > 0x800uLL)
                                                {
                                                  v111 = v111 * 0.0009765625;
                                                }

                                                v112 = &unk_100007155;
                                                if (v497[0] > 0x800uLL)
                                                {
                                                  v112 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v111 = v111 * 0.000000953674316;
                                                v112 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v111 = v111 * 9.31322575e-10;
                                              v112 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v111 = v111 * 9.09494702e-13;
                                            v112 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v111 = v111 * 8.8817842e-16;
                                          v112 = "Pi";
                                        }

                                        printf("virtual bytes: %.2f %s%s; phys_footprint bytes: %.2f %s%s; phys_footprint lifetime maximum bytes: %.2f %s%s\n", v107, v108, "B", v109, v110, "B", v111, v112, "B");
                                        if (*(&v504 + 1))
                                        {
                                          v113 = v504;
                                          if (v504 <= 0x8000000000000)
                                          {
                                            if (v504 <= 0x20000000000)
                                            {
                                              if (v504 <= 0x80000000)
                                              {
                                                if (v504 <= 0x200000)
                                                {
                                                  if (v504 > 0x800)
                                                  {
                                                    v113 = v113 * 0.0009765625;
                                                  }

                                                  v114 = &unk_100007155;
                                                  if (v504 > 0x800)
                                                  {
                                                    v114 = "Ki";
                                                  }
                                                }

                                                else
                                                {
                                                  v113 = v113 * 0.000000953674316;
                                                  v114 = "Mi";
                                                }
                                              }

                                              else
                                              {
                                                v113 = v113 * 9.31322575e-10;
                                                v114 = "Gi";
                                              }
                                            }

                                            else
                                            {
                                              v113 = v113 * 9.09494702e-13;
                                              v114 = "Ti";
                                            }
                                          }

                                          else
                                          {
                                            v113 = v113 * 8.8817842e-16;
                                            v114 = "Pi";
                                          }

                                          v115 = *(&v504 + 1);
                                          if (*(&v504 + 1) <= 0x8000000000000uLL)
                                          {
                                            if (*(&v504 + 1) <= 0x20000000000uLL)
                                            {
                                              if (*(&v504 + 1) <= 0x80000000uLL)
                                              {
                                                if (*(&v504 + 1) <= 0x200000uLL)
                                                {
                                                  if (*(&v504 + 1) > 0x800uLL)
                                                  {
                                                    v115 = v115 * 0.0009765625;
                                                  }

                                                  v116 = &unk_100007155;
                                                  if (*(&v504 + 1) > 0x800uLL)
                                                  {
                                                    v116 = "Ki";
                                                  }
                                                }

                                                else
                                                {
                                                  v115 = v115 * 0.000000953674316;
                                                  v116 = "Mi";
                                                }
                                              }

                                              else
                                              {
                                                v115 = v115 * 9.31322575e-10;
                                                v116 = "Gi";
                                              }
                                            }

                                            else
                                            {
                                              v115 = v115 * 9.09494702e-13;
                                              v116 = "Ti";
                                            }
                                          }

                                          else
                                          {
                                            v115 = v115 * 8.8817842e-16;
                                            v116 = "Pi";
                                          }

                                          printf("neural footprint: %.2f %s%s neural footprint lifetime maximum bytes: %.2f %s%s\n", v113, v114, "B", v115, v116, "B");
                                        }

                                        v117 = time(0);
                                        printf("run time: %llu s\n", v117 - *(&v519 + 1));
                                        printf("user/system time    (current threads): %lf s / %lf s\n", SHIDWORD(v455) / 1000000.0 + v455, SHIDWORD(v456) / 1000000.0 + v456);
                                        printf("user/system time (terminated threads): %lf s / %lf s\n", SDWORD2(v458) / 1000000.0 + SDWORD1(v458), v459 / 1000000.0 + SHIDWORD(v458));
                                        *__endptr = *&v497[1];
                                        v578 = v483;
                                        *&v579 = v502;
                                        v378 = v483;
                                        v380 = *&v497[1];
                                        v472 = *&v497[1];
                                        v473 = v483;
                                        v376 = v502;
                                        *&v474 = v502;
                                        sub_100005518("CPU time:", __endptr, &v472, 0, &unk_100007155);
                                        if (v377 >= 2)
                                        {
                                          v118 = v502 - *(&v502 + 1);
                                          *&v579 = *(&v502 + 1);
                                          v472 = v380;
                                          v473 = v378;
                                          *&v474 = v376;
                                          v365 = vsubq_s64(v483, v500);
                                          v366 = vsubq_s64(*&v497[1], v501);
                                          *__endptr = v501;
                                          v578 = v500;
                                          sub_100005518("P-time:  ", __endptr, &v472, 1, &unk_100007155);
                                          v578 = v365;
                                          *__endptr = v366;
                                          *&v579 = v118;
                                          v472 = v380;
                                          v473 = v378;
                                          *&v474 = v376;
                                          sub_100005518("E-time:  ", __endptr, &v472, 1, &unk_100007155);
                                          if (HIDWORD(v447))
                                          {
                                            v119 = v454 * 100.0 / SHIDWORD(v447);
                                          }

                                          else
                                          {
                                            v119 = 0.0;
                                          }

                                          printf("P/E switches: %llu (%.0f%%)\n", v454, v119);
                                        }

                                        printf("CPU time billed to me by others: %llu.%06llu s ", *(&v495 + 1) * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, *(&v495 + 1) * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8);
                                        sub_100005A3C();
                                        putchar(10);
                                        v120 = 0.0;
                                        v121 = 0.0;
                                        if (v483.i64[1] + v483.i64[0])
                                        {
                                          v121 = v496 * 100.0 / (v483.i64[1] + v483.i64[0]);
                                        }

                                        printf("CPU time I billed to others: %llu.%06llu s (%.0f%%) ", v496 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v496 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8, v121);
                                        sub_100005A3C();
                                        if (v502)
                                        {
                                          v120 = v498 * 100.0 / v502;
                                        }

                                        printf(" (%.0f%%)\n", v120);
                                        v122 = v495 * stru_100010004.numer / stru_100010004.denom;
                                        v123 = *(&v494 + 1) * stru_100010004.numer / stru_100010004.denom;
                                        v124 = v494 * stru_100010004.numer / stru_100010004.denom;
                                        v125 = *(&v493 + 1) * stru_100010004.numer / stru_100010004.denom;
                                        printf("QoS time (s): UI: %llu.%06llu IN: %llu.%06llu DF: %llu.%06llu UT: %llu.%06llu BG: %llu.%06llu MT: %llu.%06llu UN: %llu.%06llu\n", v122 / 0x3B9ACA00, v122 % 0x3B9ACA00 / 0x3E8, v123 / 0x3B9ACA00, v123 % 0x3B9ACA00 / 0x3E8, v124 / 0x3B9ACA00, v124 % 0x3B9ACA00 / 0x3E8, v125 / 0x3B9ACA00, v125 % 0x3B9ACA00 / 0x3E8, v493 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v493 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8, *(&v492 + 1) * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, *(&v492 + 1) * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8, v492 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v492 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8);
                                        if (v449)
                                        {
                                          v126 = *(&v449 + 1) * 100.0 / v449;
                                        }

                                        else
                                        {
                                          v126 = 0.0;
                                        }

                                        printf("interrupt wakeups: %llu (%llu / %.2f%% from platform idle)\n", v449, *(&v449 + 1), v126);
                                        if (HIDWORD(v459) >= 3)
                                        {
                                          v127 = "POLICY_FIFO";
                                          if (HIDWORD(v459) != 4)
                                          {
                                            v127 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v127 = (&off_10000C4C0)[HIDWORD(v459)];
                                        }

                                        printf("default sched policy: %s\n", v127);
                                        v128 = v491;
                                        if (v491 <= 0x8000000000000)
                                        {
                                          if (v491 <= 0x20000000000)
                                          {
                                            if (v491 <= 0x80000000)
                                            {
                                              if (v491 <= 0x200000)
                                              {
                                                if (v491 > 0x800)
                                                {
                                                  v128 = v128 * 0.0009765625;
                                                }

                                                v129 = &unk_100007155;
                                                if (v491 > 0x800)
                                                {
                                                  v129 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v128 = v128 * 0.000000953674316;
                                                v129 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v128 = v128 * 9.31322575e-10;
                                              v129 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v128 = v128 * 9.09494702e-13;
                                            v129 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v128 = v128 * 8.8817842e-16;
                                          v129 = "Pi";
                                        }

                                        v130 = *(&v491 + 1);
                                        if (*(&v491 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v491 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v491 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v491 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v491 + 1) > 0x800uLL)
                                                {
                                                  v130 = v130 * 0.0009765625;
                                                }

                                                v131 = &unk_100007155;
                                                if (*(&v491 + 1) > 0x800uLL)
                                                {
                                                  v131 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v130 = v130 * 0.000000953674316;
                                                v131 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v130 = v130 * 9.31322575e-10;
                                              v131 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v130 = v130 * 9.09494702e-13;
                                            v131 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v130 = v130 * 8.8817842e-16;
                                          v131 = "Pi";
                                        }

                                        v132 = *(&v496 + 1);
                                        if (*(&v496 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v496 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v496 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v496 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v496 + 1) > 0x800uLL)
                                                {
                                                  v132 = v132 * 0.0009765625;
                                                }

                                                v133 = &unk_100007155;
                                                if (*(&v496 + 1) > 0x800uLL)
                                                {
                                                  v133 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v132 = v132 * 0.000000953674316;
                                                v133 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v132 = v132 * 9.31322575e-10;
                                              v133 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v132 = v132 * 9.09494702e-13;
                                            v133 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v132 = v132 * 8.8817842e-16;
                                          v133 = "Pi";
                                        }

                                        printf("bytes read: %.2f %s%s written: %.2f %s%s logical writes: %.2f %s%s\n", v128, v129, "B", v130, v131, "B", v132, v133, "B");
                                        if (basic_info.iisb_table_size)
                                        {
                                          v134 = basic_info.iisb_table_inuse * 100.0 / basic_info.iisb_table_size;
                                        }

                                        else
                                        {
                                          v134 = 0.0;
                                        }

                                        printf("mach ports: %u (%.0f%% occupied)\n", basic_info.iisb_table_inuse, v134);
                                        *__endptr = v426;
                                        v578 = v427;
                                        v579 = v428;
                                        *&v580 = v429;
                                        printf("file descriptors: %u (", v426);
                                        v135 = 1;
                                        v136 = off_10000C338;
                                        for (i = 4; i != 56; i += 4)
                                        {
                                          v138 = *(__endptr + i);
                                          if (v138)
                                          {
                                            v8 = (v135 & 1) == 0;
                                            v139 = &unk_100007155;
                                            if (v8)
                                            {
                                              v139 = ", ";
                                            }

                                            printf("%s%s: %u", v139, *v136, v138);
                                            v135 = 0;
                                          }

                                          ++v136;
                                        }

                                        puts(")");
                                        printf("faults: %d, pageins: %d, cow_faults: %d, msgsent: %d, msgrecv: %d, syscalls (mach/unix): %d / %d, csw: %d\n", v446, DWORD1(v446), DWORD2(v446), HIDWORD(v446), v447, DWORD1(v447), DWORD2(v447), HIDWORD(v447));
                                        if (HIDWORD(v445))
                                        {
                                          printf("affinity sets: %d tasks: %d (min: %d max: %d)", v444, HIDWORD(v445), HIDWORD(v444), v445);
                                        }

                                        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v522), vceqzq_s64(v523))))) & 1) != 0 || v524 != 0)
                                        {
                                          printf("extmod: task for pid: %lld (%lld) thread injection: %lld (%lld) set state: %lld (%lld)\n", v522.i64[0], v522.i64[1], v523.i64[0], v523.i64[1], v524, *(&v524 + 1));
                                        }

                                        if (v396)
                                        {
                                          printf("workqueue threads: %u running: %u blocked: %u", v435, HIDWORD(v435), v436);
                                          v140 = BYTE4(v436);
                                          if ((v436 & 0x100000000) != 0)
                                          {
                                            printf(" constrained-limit");
                                            v140 = BYTE4(v436);
                                            if ((v436 & 0x200000000) != 0)
                                            {
                                              goto LABEL_454;
                                            }

LABEL_423:
                                            if ((v140 & 8) == 0)
                                            {
                                              goto LABEL_424;
                                            }

LABEL_455:
                                            printf(" cooperative-limit");
                                            if ((v436 & 0x1000000000) != 0)
                                            {
LABEL_425:
                                              printf(" active-constrained-limit");
                                            }
                                          }

                                          else
                                          {
                                            if ((v436 & 0x200000000) == 0)
                                            {
                                              goto LABEL_423;
                                            }

LABEL_454:
                                            printf(" total-limit");
                                            v140 = BYTE4(v436);
                                            if ((v436 & 0x800000000) != 0)
                                            {
                                              goto LABEL_455;
                                            }

LABEL_424:
                                            if ((v140 & 0x10) != 0)
                                            {
                                              goto LABEL_425;
                                            }
                                          }

                                          putchar(10);
                                        }

                                        LODWORD(__endptr[0]) = 0;
                                        LODWORD(v472) = 0;
                                        v479[0] = 0;
                                        v410[0] = 0;
                                        printf("CPU usage monitor: ");
                                        if (proc_get_cpumon_params())
                                        {
                                          sub_10000626C();
                                        }

                                        else if (SLODWORD(__endptr[0]) > 0 || v472 >= 1)
                                        {
                                          printf("%d%% CPU over %d seconds\n", LODWORD(__endptr[0]), v472);
                                        }

                                        else
                                        {
                                          puts("none");
                                        }

                                        printf("CPU wakes monitor: ");
                                        if (proc_get_wakemon_params())
                                        {
                                          sub_100006298();
                                        }

                                        else if (v479[0] < 1)
                                        {
                                          puts("none");
                                        }

                                        else
                                        {
                                          printf("%d wakes per second (over system-default time period)\n", v479[0]);
                                        }

                                        v141 = "tracked";
                                        if ((flags & 1) == 0)
                                        {
                                          v141 = "untracked";
                                        }

                                        v142 = &unk_100007155;
                                        if ((~flags & 3) == 0)
                                        {
                                          v142 = "idle-exit";
                                        }

                                        v143 = "dirty";
                                        if ((flags & 5) == 1)
                                        {
                                          v143 = "clean";
                                        }

                                        printf("dirty tracking: %s %s %s\n", v141, v142, v143);
                                        if (!__nel)
                                        {
                                          goto LABEL_588;
                                        }

                                        printf("boosts: %u (%u externalized)\n", DWORD2(v441), HIDWORD(v441));
                                        if (cf && DWORD2(v441))
                                        {
                                          Value = CFDictionaryGetValue(cf, key);
                                          if (Value)
                                          {
                                            v145 = Value;
                                            if (CFArrayGetCount(Value) >= 1)
                                            {
                                              v146 = 0;
                                              do
                                              {
                                                ValueAtIndex = CFArrayGetValueAtIndex(v145, v146);
                                                CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
                                                if (CStringPtr)
                                                {
                                                  v149 = CStringPtr;
                                                }

                                                else
                                                {
                                                  v149 = "NULL";
                                                }

                                                printf("\tboosted by: %s\n", v149);
                                                ++v146;
                                              }

                                              while (v146 < CFArrayGetCount(v145));
                                            }
                                          }

                                          else
                                          {
                                            puts("\tsource(s) of boost(s) unknown");
                                          }
                                        }

                                        puts("requested policy");
                                        v150 = sub_100005C84((v106 >> 17) & 7, 0);
                                        printf("\treq apptype: %s\n", v150);
                                        v151 = sub_100005D70((v106 >> 21) & 0x1F, 0);
                                        printf("\treq role: %s\n", v151);
                                        v152 = (v106 >> 33) & 7;
                                        if (v152 == 7 || ((0x7Du >> v152) & 1) == 0)
                                        {
                                          if (v152 == 1)
                                          {
                                            v153 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v153 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v153 = (&off_10000C580)[v152];
                                        }

                                        printf("\treq qos clamp: %s\n", v153);
                                        v154 = (v106 >> 11) & 7;
                                        v155 = v154 == 6;
                                        if (v154 >= 6)
                                        {
                                          v156 = "LATENCY_QOS_TIER_5";
                                          if (!v155)
                                          {
                                            v156 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v156 = (&off_10000C4D8)[v154];
                                        }

                                        v157 = (v106 >> 26) & 7;
                                        v158 = v157 == 6;
                                        if (v157 >= 6)
                                        {
                                          v159 = "LATENCY_QOS_TIER_5";
                                          if (!v158)
                                          {
                                            v159 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v159 = (&off_10000C4D8)[v157];
                                        }

                                        printf("\treq base/override latency qos: %s / %s\n", v156, v159);
                                        v160 = (v106 >> 14) & 7;
                                        v161 = v160 == 6;
                                        if (v160 >= 6)
                                        {
                                          v162 = "THROUGHPUT_QOS_TIER_5";
                                          if (!v161)
                                          {
                                            v162 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v162 = (&off_10000C508)[v160];
                                        }

                                        v163 = v106 >> 29;
                                        v164 = "THROUGHPUT_QOS_TIER_UNSPECIFIED";
                                        if (v106 >> 29)
                                        {
                                          if (v163 - 1 >= 5)
                                          {
                                            v164 = "THROUGHPUT_QOS_TIER_5";
                                            if (v163 != 6)
                                            {
                                              v164 = "???";
                                            }
                                          }

                                          else
                                          {
                                            v164 = (&off_10000C458)[v163 - 1];
                                          }
                                        }

                                        printf("\treq base/override thruput qos: %s / %s\n", v162, v164);
                                        if ((v106 & 3) != 0)
                                        {
                                          v165 = "YES";
                                        }

                                        else
                                        {
                                          v165 = "NO";
                                        }

                                        v166 = &unk_100007155;
                                        v167 = "(internal)";
                                        if ((v106 & 1) == 0)
                                        {
                                          v167 = &unk_100007155;
                                        }

                                        if ((v106 & 2) != 0)
                                        {
                                          v166 = "(external)";
                                        }

                                        printf("\treq darwin BG: %s %s %s\n", v165, v167, v166);
                                        printf("\treq internal/external iotier: %s / %s\n", (&off_10000C5B8)[(v106 >> 2) & 3], (&off_10000C5B8)[(v106 >> 4) & 3]);
                                        printf("\treq darwin BG iotier: %s\n", (&off_10000C5B8)[(v106 >> 8) & 3]);
                                        if ((v106 & &_mh_execute_header) != 0)
                                        {
                                          v168 = "YES";
                                        }

                                        else
                                        {
                                          v168 = "NO";
                                        }

                                        printf("\treq managed: %s\n", v168);
                                        printf("\treq other: ");
                                        if ((v106 & 0x40) != 0)
                                        {
                                          printf("passive-int ");
                                        }

                                        if ((v106 & 0x80) != 0)
                                        {
                                          printf("passive-ext ");
                                          if ((v106 & 0x400) == 0)
                                          {
LABEL_495:
                                            if ((v106 & 0x100000) == 0)
                                            {
                                              goto LABEL_496;
                                            }

                                            goto LABEL_509;
                                          }
                                        }

                                        else if ((v106 & 0x400) == 0)
                                        {
                                          goto LABEL_495;
                                        }

                                        printf("terminated ");
                                        if ((v106 & 0x100000) == 0)
                                        {
LABEL_496:
                                          if ((v106 & 0x800000000000) == 0)
                                          {
                                            goto LABEL_498;
                                          }

LABEL_497:
                                          printf("runaway-mitigation ");
                                          goto LABEL_498;
                                        }

LABEL_509:
                                        printf("boosted ");
                                        if ((v106 & 0x800000000000) != 0)
                                        {
                                          goto LABEL_497;
                                        }

LABEL_498:
                                        putchar(10);
                                        printf("\treq suppression (App Nap) behaviors: ");
                                        if ((v106 & 0x1000000000) != 0)
                                        {
                                          printf("active ");
                                          if ((v106 & 0x2000000000) == 0)
                                          {
LABEL_500:
                                            if ((v106 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_502;
                                            }

LABEL_501:
                                            printf("low-priority-cpu (28) ");
                                            goto LABEL_502;
                                          }
                                        }

                                        else if ((v106 & 0x2000000000) == 0)
                                        {
                                          goto LABEL_500;
                                        }

                                        printf("low-priority-cpu (4) ");
                                        if ((v106 & 0x200000000000) != 0)
                                        {
                                          goto LABEL_501;
                                        }

LABEL_502:
                                        v169 = (v106 >> 38) & 7;
                                        if (((v106 >> 38) & 7) > 2)
                                        {
                                          switch(v169)
                                          {
                                            case 3:
                                              v170 = "LATENCY_QOS_TIER_2";
                                              break;
                                            case 4:
                                              v170 = "LATENCY_QOS_TIER_3";
                                              break;
                                            case 5:
                                              v170 = "LATENCY_QOS_TIER_4";
                                              break;
                                            default:
LABEL_519:
                                              v8 = v169 == 6;
                                              v170 = "LATENCY_QOS_TIER_5";
                                              if (!v8)
                                              {
                                                v170 = "???";
                                              }

                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v169)
                                          {
                                            case 0:
                                              goto LABEL_525;
                                            case 1:
                                              v170 = "LATENCY_QOS_TIER_0";
                                              break;
                                            case 2:
                                              v170 = "LATENCY_QOS_TIER_1";
                                              break;
                                            default:
                                              goto LABEL_519;
                                          }
                                        }

                                        printf("timer-throttling (%s) ", v170);
LABEL_525:
                                        v171 = (v106 >> 42) & 7;
                                        if (((v106 >> 42) & 7) > 2)
                                        {
                                          switch(v171)
                                          {
                                            case 3:
                                              v172 = "THROUGHPUT_QOS_TIER_2";
                                              break;
                                            case 4:
                                              v172 = "THROUGHPUT_QOS_TIER_3";
                                              break;
                                            case 5:
                                              v172 = "THROUGHPUT_QOS_TIER_4";
                                              break;
                                            default:
LABEL_535:
                                              v8 = v171 == 6;
                                              v172 = "THROUGHPUT_QOS_TIER_5";
                                              if (!v8)
                                              {
                                                v172 = "???";
                                              }

                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v171)
                                          {
                                            case 0:
                                              goto LABEL_541;
                                            case 1:
                                              v172 = "THROUGHPUT_QOS_TIER_0";
                                              break;
                                            case 2:
                                              v172 = "THROUGHPUT_QOS_TIER_1";
                                              break;
                                            default:
                                              goto LABEL_535;
                                          }
                                        }

                                        printf("throughput-qos (%s) ", v172);
LABEL_541:
                                        if ((v106 & 0x20000000000) != 0)
                                        {
                                          printf("disk-throttling ");
                                        }

                                        if ((v106 & 0x400000000000) != 0)
                                        {
                                          printf("bg-sockets ");
                                        }

                                        putchar(10);
                                        puts("effective policy");
                                        v173 = sub_100005D70((DWORD2(v106) >> 20) & 0xF, 0);
                                        printf("\teff role: %s\n", v173);
                                        v174 = (DWORD2(v106) >> 11) & 7;
                                        v175 = v174 == 6;
                                        if (v174 >= 6)
                                        {
                                          v176 = "LATENCY_QOS_TIER_5";
                                          if (!v175)
                                          {
                                            v176 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v176 = (&off_10000C4D8)[v174];
                                        }

                                        printf("\teff latency qos: %s\n", v176);
                                        v177 = (DWORD2(v106) >> 14) & 7;
                                        v178 = v177 == 6;
                                        if (v177 >= 6)
                                        {
                                          v179 = "THROUGHPUT_QOS_TIER_5";
                                          if (!v178)
                                          {
                                            v179 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v179 = (&off_10000C508)[v177];
                                        }

                                        printf("\teff thruput qos: %s\n", v179);
                                        if (BYTE8(v106))
                                        {
                                          v180 = "YES";
                                        }

                                        else
                                        {
                                          v180 = "NO";
                                        }

                                        printf("\teff darwin BG: %s\n", v180);
                                        printf("\teff iotier: %s\n", (&off_10000C5B8)[(*(&v106 + 1) >> 2) & 3]);
                                        if ((DWORD2(v106) & 0x2000000) != 0)
                                        {
                                          v181 = "YES";
                                        }

                                        else
                                        {
                                          v181 = "NO";
                                        }

                                        printf("\teff managed: %s\n", v181);
                                        v182 = (*(&v106 + 1) >> 30) & 7;
                                        if (v182 == 7 || ((0x7Du >> v182) & 1) == 0)
                                        {
                                          if (v182 == 1)
                                          {
                                            v183 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v183 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v183 = (&off_10000C580)[v182];
                                        }

                                        printf("\teff qos ceiling: %s\n", v183);
                                        v184 = (DWORD2(v106) >> 27) & 7;
                                        if (v184 == 7 || ((0x7Du >> v184) & 1) == 0)
                                        {
                                          if (v184 == 1)
                                          {
                                            v185 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v185 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v185 = (&off_10000C580)[v184];
                                        }

                                        printf("\teff qos clamp: %s\n", v185);
                                        printf("\teff other: ");
                                        if ((BYTE8(v106) & 0x10) != 0)
                                        {
                                          printf("passive ");
                                        }

                                        v186 = "low-priority-cpu (4) ";
                                        if ((BYTE8(v106) & 2) != 0 || (v186 = "low-priority-cpu (28) ", (DWORD2(v106) & 0x1000000) != 0))
                                        {
                                          printf(v186);
                                          if ((BYTE8(v106) & 0x20) == 0)
                                          {
LABEL_576:
                                            if ((BYTE8(v106) & 0x40) == 0)
                                            {
                                              goto LABEL_577;
                                            }

                                            goto LABEL_604;
                                          }
                                        }

                                        else if ((BYTE8(v106) & 0x20) == 0)
                                        {
                                          goto LABEL_576;
                                        }

                                        printf("bg-allsockets ");
                                        if ((BYTE8(v106) & 0x40) == 0)
                                        {
LABEL_577:
                                          if ((WORD4(v106) & 0x200) == 0)
                                          {
                                            goto LABEL_578;
                                          }

                                          goto LABEL_605;
                                        }

LABEL_604:
                                        printf("bg-newsockets ");
                                        if ((WORD4(v106) & 0x200) == 0)
                                        {
LABEL_578:
                                          if ((DWORD2(v106) & 0x20000) == 0)
                                          {
                                            goto LABEL_579;
                                          }

                                          goto LABEL_606;
                                        }

LABEL_605:
                                        printf("terminated ");
                                        if ((DWORD2(v106) & 0x20000) == 0)
                                        {
LABEL_579:
                                          if ((DWORD2(v106) & 0x40000) == 0)
                                          {
                                            goto LABEL_580;
                                          }

                                          goto LABEL_607;
                                        }

LABEL_606:
                                        printf("tal-engaged ");
                                        if ((DWORD2(v106) & 0x40000) == 0)
                                        {
LABEL_580:
                                          if ((DWORD2(v106) & 0x80000) == 0)
                                          {
                                            goto LABEL_581;
                                          }

                                          goto LABEL_608;
                                        }

LABEL_607:
                                        printf("bg-watchers ");
                                        if ((DWORD2(v106) & 0x80000) == 0)
                                        {
LABEL_581:
                                          if ((DWORD2(v106) & 0x4000000) == 0)
                                          {
                                            goto LABEL_582;
                                          }

                                          goto LABEL_609;
                                        }

LABEL_608:
                                        printf("suppression-active (App Nap) ");
                                        if ((DWORD2(v106) & 0x4000000) == 0)
                                        {
LABEL_582:
                                          if ((WORD4(v106) & 0x400) == 0)
                                          {
                                            goto LABEL_583;
                                          }

                                          goto LABEL_610;
                                        }

LABEL_609:
                                        printf("live-donor ");
                                        if ((WORD4(v106) & 0x400) == 0)
                                        {
LABEL_583:
                                          if ((*(&v106 + 1) & 0x400000000) == 0)
                                          {
                                            goto LABEL_584;
                                          }

                                          goto LABEL_611;
                                        }

LABEL_610:
                                        printf("ui-is-urgent ");
                                        if ((*(&v106 + 1) & 0x400000000) == 0)
                                        {
LABEL_584:
                                          if ((*(&v106 + 1) & 0x800000000) != 0)
                                          {
                                            goto LABEL_612;
                                          }

                                          goto LABEL_585;
                                        }

LABEL_611:
                                        printf("coalition-suppressed (BG) ");
                                        if ((*(&v106 + 1) & 0x800000000) != 0)
                                        {
LABEL_612:
                                          printf("runaway-mitigation ");
                                          if ((*(&v106 + 1) & 0x200000000) == 0)
                                          {
                                            goto LABEL_587;
                                          }

LABEL_586:
                                          printf("allow-promote-above");
                                          goto LABEL_587;
                                        }

LABEL_585:
                                        if ((*(&v106 + 1) & 0x200000000) != 0)
                                        {
                                          goto LABEL_586;
                                        }

LABEL_587:
                                        putchar(10);
LABEL_588:
                                        if ((buffer & 0x20000) != 0)
                                        {
                                          v187 = "YES";
                                        }

                                        else
                                        {
                                          v187 = "NO";
                                        }

                                        printf("ios-appledaemon: %s\n", v187);
                                        if ((buffer & 0x80000) != 0)
                                        {
                                          v188 = "YES";
                                        }

                                        else
                                        {
                                          v188 = "NO";
                                        }

                                        printf("ios-imppromotion: %s\n", v188);
                                        if ((buffer & 0x1000000) != 0)
                                        {
                                          v189 = "YES";
                                        }

                                        else
                                        {
                                          v189 = "NO";
                                        }

                                        printf("ios-application: %s\n", v189);
                                        v36 = v385;
                                        if (__nel)
                                        {
                                          v190 = getpriority(7, v388);
                                          if (v190 == 1)
                                          {
                                            puts("game mode: ON");
                                          }

                                          else if (v190 == -1 && (byte_10001000D & 1) == 0)
                                          {
                                            sub_1000062C4();
                                          }

                                          v191 = getpriority(8, v388);
                                          if (v191 == 1)
                                          {
                                            puts("carplay mode: ON");
                                          }

                                          else if (v191 == -1 && (byte_10001000E & 1) == 0)
                                          {
                                            sub_1000062F0();
                                          }

                                          v192 = getpriority(5, v388);
                                          if (v192)
                                          {
                                            if (v192 == -1)
                                            {
                                              if ((byte_10001000F & 1) == 0)
                                              {
                                                sub_10000631C();
                                              }
                                            }

                                            else
                                            {
                                              v193 = "???";
                                              if ((v192 & 0xF8) == 0)
                                              {
                                                v193 = (&off_10000C480)[v192 & 7];
                                              }

                                              printf("GPU role: %s\n", v193);
                                            }
                                          }

                                          v194 = getpriority(9, v388);
                                          if (v194)
                                          {
                                            if (v194 == -1)
                                            {
                                              if ((byte_100010010 & 1) == 0)
                                              {
                                                sub_100006348();
                                              }
                                            }

                                            else
                                            {
                                              puts("runaway daemon mitigation: ACTIVE");
                                            }
                                          }

                                          *__error() = 0;
                                          v195 = getpriority(0, v388);
                                          if (v195)
                                          {
                                            v196 = v195;
                                            if (v195 == -1 && *__error())
                                            {
                                              perror("getpriority(PRIO_PROCESS, pid)");
                                            }

                                            else
                                            {
                                              printf("nice: %d\n", v196);
                                            }
                                          }

                                          if (v442)
                                          {
                                            v197 = "YES";
                                            if ((v442 & 2) == 0)
                                            {
                                              v197 = "YES (boosted receiver)";
                                              if (!DWORD2(v441))
                                              {
                                                v197 = "NO";
                                              }
                                            }
                                          }

                                          else if ((v442 & 4) != 0)
                                          {
                                            v197 = "CURRENTLY";
                                            if ((v442 & 2) == 0)
                                            {
                                              v197 = "NOT CURRENTLY";
                                            }
                                          }

                                          else if ((v442 & 2) != 0)
                                          {
                                            v197 = "YES";
                                          }

                                          else
                                          {
                                            v197 = "NO";
                                          }

                                          printf("imp_donor: %s\n", v197);
                                          v198 = "DE-NAP";
                                          if ((v442 & 8) == 0)
                                          {
                                            v198 = "NO";
                                          }

                                          if (v442)
                                          {
                                            v199 = "YES";
                                          }

                                          else
                                          {
                                            v199 = v198;
                                          }

                                          printf("imp_receiver: %s\n", v199);
                                          v200 = memorystatus_control();
                                          if (v200 == -1)
                                          {
                                            if ((byte_100010011 & 1) == 0)
                                            {
                                              sub_100006374();
                                            }
                                          }

                                          else
                                          {
                                            if (v200)
                                            {
                                              v201 = "YES";
                                            }

                                            else
                                            {
                                              v201 = "NO";
                                            }

                                            printf("runningboard managed: %s\n", v201);
                                          }
                                        }

                                        if ((v442 & 0x10) != 0)
                                        {
                                          v202 = "YES";
                                        }

                                        else
                                        {
                                          v202 = "NO";
                                        }

                                        printf("pid suspended: %s\n", v202);
                                        if ((buffer & 0x100000) != 0)
                                        {
                                          v203 = "YES";
                                        }

                                        else
                                        {
                                          v203 = "NO";
                                        }

                                        if ((buffer & 0x200000) != 0)
                                        {
                                          v204 = "YES";
                                        }

                                        else
                                        {
                                          v204 = "NO";
                                        }

                                        printf("adaptive daemon: %s (boosted: %s)\n", v203, v204);
                                        if ((buffer & 0x4000000) != 0)
                                        {
                                          v205 = "YES";
                                        }

                                        else
                                        {
                                          v205 = "NO";
                                        }

                                        printf("checked allocations: %s\n", v205);
                                        if (HIDWORD(v467))
                                        {
                                          puts("threads:");
                                          if (x[1])
                                          {
                                            v206 = 0;
                                            v383 = __nel & v390;
                                            do
                                            {
                                              v425 = 0;
                                              v424 = 0u;
                                              thread_info_out = 0u;
                                              v421[0] = 0;
                                              v421[1] = 0;
                                              v422 = 0;
                                              v418 = 0;
                                              v419 = 0;
                                              v420 = 0;
                                              *v417 = 0;
                                              v415 = 0;
                                              v416 = 0;
                                              *v414 = 0;
                                              v412 = 0u;
                                              v413 = 0u;
                                              *v410 = 0u;
                                              v411 = 0u;
                                              v477 = 0u;
                                              v478 = 0u;
                                              v475 = 0u;
                                              v476 = 0u;
                                              v473 = 0u;
                                              v474 = 0u;
                                              v472 = 0u;
                                              task_info_outCnt = 10;
                                              v207 = thread_info(act_list[v206], 3u, &thread_info_out, &task_info_outCnt);
                                              if (v207)
                                              {
                                                mach_error("thread_info(... THREAD_BASIC_INFO ...)", v207);
                                              }

                                              task_info_outCnt = 6;
                                              v208 = thread_info(act_list[v206], 4u, v421, &task_info_outCnt);
                                              if (v208)
                                              {
                                                mach_error("thread_info(... THREAD_IDENTIFIER_INFO ...)", v208);
                                              }

                                              v209 = 1;
                                              if (v467 && v422)
                                              {
                                                __endptr[0] = 0;
                                                *&object_type = 0;
                                                outsize = 0;
                                                v480 = 0;
                                                v210 = vm_read_overwrite(task_list[v36], v422, 8uLL, __endptr, &outsize);
                                                if (v210)
                                                {
                                                  v211 = v210;
                                                  v212 = "vm_read_overwrite(... &qaddr ...)";
LABEL_682:
                                                  mach_error(v212, v211);
                                                  goto LABEL_683;
                                                }

                                                if (outsize == 8 && __endptr[0])
                                                {
                                                  v232 = vm_read_overwrite(task_list[v36], &__endptr[0][v367], 8uLL, &object_type, &outsize);
                                                  if (v232)
                                                  {
                                                    v211 = v232;
                                                    v212 = "vm_read_overwrite(... &label_addr ...)";
                                                    goto LABEL_682;
                                                  }

                                                  if (outsize == 8 && object_type)
                                                  {
                                                    v282 = vm_read_overwrite(task_list[v36], object_type, 0x40uLL, v479, &outsize);
                                                    if (v282)
                                                    {
                                                      v211 = v282;
                                                      v212 = "vm_read_overwrite(... dqlabel ...)";
                                                      goto LABEL_682;
                                                    }

                                                    v209 = 0;
                                                  }
                                                }
                                              }

LABEL_683:
                                              if (DWORD1(v424) == 2)
                                              {
                                                task_info_outCnt = 5;
                                                v216 = thread_info(act_list[v206], 0xBu, &v418, &task_info_outCnt);
                                                if (!v216)
                                                {
                                                  goto LABEL_690;
                                                }

                                                v214 = v216;
                                                v215 = "thread_info(... THREAD_SCHED_RR_INFO ...)";
                                                goto LABEL_689;
                                              }

                                              if (DWORD1(v424) == 1)
                                              {
                                                task_info_outCnt = 5;
                                                v213 = thread_info(act_list[v206], 0xAu, &v418, &task_info_outCnt);
                                                if (v213)
                                                {
                                                  v214 = v213;
                                                  v215 = "thread_info(... THREAD_SCHED_TIMESHARE_INFO ...)";
LABEL_689:
                                                  mach_error(v215, v214);
                                                }
                                              }

LABEL_690:
                                              get_default = 0;
                                              task_info_outCnt = 1;
                                              v217 = thread_policy_get(act_list[v206], 1u, &v417[1], &task_info_outCnt, &get_default);
                                              if (v217)
                                              {
                                                mach_error("thread_policy_get(... THREAD_EXTENDED_POLICY ...)", v217);
                                              }

                                              v407 = 0;
                                              task_info_outCnt = 5;
                                              v218 = thread_policy_get(act_list[v206], 0xAu, &v415, &task_info_outCnt, &v407);
                                              if (v218)
                                              {
                                                mach_error("thread_policy_get(... THREAD_TIME_CONSTRAINT_WITH_PRIORITY_POLICY ...)", v218);
                                              }

                                              v407 = 0;
                                              task_info_outCnt = 1;
                                              v219 = thread_policy_get(act_list[v206], 3u, &v414[1], &task_info_outCnt, &v407);
                                              if (v219)
                                              {
                                                mach_error("thread_policy_get(... THREAD_PRECEDENCE_POLICY ...)", v219);
                                              }

                                              v407 = 0;
                                              task_info_outCnt = 1;
                                              v220 = thread_policy_get(act_list[v206], 4u, v414, &task_info_outCnt, &v407);
                                              if (v220)
                                              {
                                                if (v220 == 46)
                                                {
                                                  v221 = 1;
                                                  goto LABEL_701;
                                                }

                                                mach_error("thread_policy_get(... THREAD_AFFINITY_POLICY ...)", v220);
                                              }

                                              v221 = 0;
LABEL_701:
                                              v407 = 0;
                                              task_info_outCnt = 16;
                                              v222 = thread_policy_get(act_list[v206], 6u, v410, &task_info_outCnt, &v407);
                                              if (v222)
                                              {
                                                mach_error("thread_policy_get(... THREAD_POLICY_STATE ...)", v222);
                                              }

                                              v223 = *(&v411 + 1);
                                              v224 = v411;
                                              v225 = proc_pidinfo(v388, 15, v421[0], &v472, 112);
                                              if (v225 <= 111)
                                              {
                                                perror("proc_pidinfo(... PROC_PIDTHREADID64INFO ...)");
                                              }

                                              printf("\tthread ID: 0x%llx / %llu\n", v421[0], v421[0]);
                                              if (v475)
                                              {
                                                printf("\tthread name: %s\n");
                                              }

                                              else if ((v209 & 1) == 0)
                                              {
                                                printf("\tdispatch queue name: %s\n");
                                              }

                                              printf("\tuser/system time: %lf s / %lf s\n", SDWORD1(thread_info_out) / 1000000.0 + thread_info_out, SHIDWORD(thread_info_out) / 1000000.0 + SDWORD2(thread_info_out));
                                              if (v225 >= 112 && (byte_100010003 & v392 & 1) != 0)
                                              {
                                                if (v377 >= 3)
                                                {
                                                  sub_1000063F4();
                                                }

                                                *__error() = 0;
                                                if (proc_pidinfo(v388, 34, v421[0], &word_100010028, 88) < 40 * v377 + 8)
                                                {
                                                  perror("proc_pidinfo(... PROC_PIDTHREADCOUNTS ...)");
                                                }

                                                if (v377 != word_100010028)
                                                {
                                                  fprintf(__stderrp, "threadcounts.ptc_len %d mismatch with level_count %u\n", word_100010028, v377);
                                                }

                                                v226 = 0;
                                                v227 = 0uLL;
                                                if (v377)
                                                {
                                                  v228 = v377;
                                                  v229 = &qword_100010050;
                                                  v230 = 0uLL;
                                                  do
                                                  {
                                                    v230 = vaddq_s64(*(v229 - 1), v230);
                                                    v227 = vaddq_s64(*(v229 - 2), v227);
                                                    v231 = *v229;
                                                    v229 += 5;
                                                    v226 += v231;
                                                    --v228;
                                                  }

                                                  while (v228);
                                                }

                                                else
                                                {
                                                  v230 = 0uLL;
                                                }

                                                *v397 = v230;
                                                *__nela = v227;
                                                *__endptr = v227;
                                                v578 = v230;
                                                *&v579 = v226;
                                                v405 = v378;
                                                object_type = v380;
                                                v406 = v376;
                                                sub_100005518("\tCPU time:", __endptr, &object_type, 1, " of task");
                                                if (v377 >= 2)
                                                {
                                                  v233 = 0;
                                                  v234 = &xmmword_100010030;
                                                  do
                                                  {
                                                    if (v233 == 24)
                                                    {
                                                      sub_1000063C8();
                                                    }

                                                    if (qword_1000100C0 != -1)
                                                    {
                                                      sub_1000063A0();
                                                    }

                                                    printf("\t%s:", *(&off_10000C3E0 + v233));
                                                    v235 = v234[1];
                                                    *__endptr = *v234;
                                                    v578 = v235;
                                                    *&v579 = *(v234 + 4);
                                                    v405 = *v397;
                                                    object_type = *__nela;
                                                    v406 = v226;
                                                    sub_100005518(&unk_100007155, __endptr, &object_type, 1, &unk_100007155);
                                                    v233 += 8;
                                                    v234 = (v234 + 40);
                                                  }

                                                  while (8 * v377 != v233);
                                                }
                                              }

                                              printf("\tCPU usage (over last tick): %d%%\n", v424 / 10);
                                              v236 = "timeshare";
                                              if (!v417[1])
                                              {
                                                v236 = "fixed-priority";
                                              }

                                              v237 = "real-time";
                                              if (!get_default)
                                              {
                                                v237 = v236;
                                              }

                                              printf("\tsched mode: %s", v237);
                                              if (DWORD1(v424) == 1 && (get_default || !v417[1]))
                                              {
                                                printf(" demoted to policy %s: base priority: %d cur priority %d", "POLICY_TIMESHARE", HIDWORD(v418), v419);
                                              }

                                              putchar(10);
                                              if (get_default)
                                              {
                                                goto LABEL_745;
                                              }

                                              if (DWORD1(v424) >= 3)
                                              {
                                                v238 = "POLICY_FIFO";
                                                if (DWORD1(v424) != 4)
                                                {
                                                  v238 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v238 = (&off_10000C4C0)[DWORD1(v424)];
                                              }

                                              printf("\tpolicy: %s\n", v238);
                                              if (get_default)
                                              {
LABEL_745:
                                                printf("\t\treal-time priority: %u\n", v417[0]);
                                                printf("\t\treal-time period: %u\n", v415);
                                                printf("\t\treal-time computation: %u\n", HIDWORD(v415));
                                                printf("\t\treal-time constraint: %u\n", v416);
                                                printf("\t\treal-time preemptible: %s\n");
                                              }

                                              else if (DWORD1(v424) == 2)
                                              {
                                                printf("\t\tround-robin max  priority: %d\n", v418);
                                                printf("\t\tround-robin base priority: %d\n", HIDWORD(v418));
                                                printf("\t\tround-robin quantum: %d\n", v419);
                                                printf("\t\tround-robin depressed: %s, prio %d\n");
                                              }

                                              else if (DWORD1(v424) == 1)
                                              {
                                                printf("\t\ttimeshare max  priority: %d\n", v418);
                                                printf("\t\ttimeshare base priority: %d\n", HIDWORD(v418));
                                                printf("\t\ttimeshare cur  priority: %d\n", v419);
                                                v280 = "YES";
                                                if (!HIDWORD(v419))
                                                {
                                                  v280 = "NO";
                                                }

                                                printf("\t\ttimeshare depressed: %s, prio %d\n", v280, v420);
                                              }

                                              puts("\trequested policy:");
                                              v239 = (v224 >> 15) & 7;
                                              if (v239 == 7 || ((0x7Du >> v239) & 1) == 0)
                                              {
                                                if (v239 == 1)
                                                {
                                                  v240 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v240 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v240 = (&off_10000C580)[v239];
                                              }

                                              printf("\t\treq thread qos: %s, relprio: %d\n", v240, -((v224 >> 18) & 0xF));
                                              puts("\t\treq workqueue/pthread overrides:");
                                              v241 = (v224 >> 22) & 7;
                                              if (v241 == 7 || ((0x7Du >> v241) & 1) == 0)
                                              {
                                                if (v241 == 1)
                                                {
                                                  v242 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v242 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v242 = (&off_10000C580)[v241];
                                              }

                                              printf("\t\t\treq legacy qos override: %s\n", v242);
                                              v243 = HIDWORD(v224) & 7;
                                              if (v243 == 7 || ((0x7Du >> (BYTE4(v224) & 7)) & 1) == 0)
                                              {
                                                if (v243 == 1)
                                                {
                                                  v244 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v244 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v244 = (&off_10000C580)[v243];
                                              }

                                              printf("\t\t\treq workqueue qos override: %s\n", v244);
                                              puts("\t\treq kernel overrides:");
                                              v245 = (v224 >> 28) & 7;
                                              if (v245 == 7 || ((0x7Du >> v245) & 1) == 0)
                                              {
                                                if (v245 == 1)
                                                {
                                                  v246 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v246 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v246 = (&off_10000C580)[v245];
                                              }

                                              printf("\t\t\treq kevent overrides: %s\n", v246);
                                              v247 = (v224 >> 35) & 7;
                                              if (v247 == 7 || ((0x7Du >> v247) & 1) == 0)
                                              {
                                                if (v247 == 1)
                                                {
                                                  v248 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v248 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v248 = (&off_10000C580)[v247];
                                              }

                                              printf("\t\t\treq workloop servicer override: %s\n", v248);
                                              v249 = (v224 >> 25) & 7;
                                              if (v249 == 7 || ((0x7Du >> v249) & 1) == 0)
                                              {
                                                if (v249 == 1)
                                                {
                                                  v250 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v250 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v250 = (&off_10000C580)[v249];
                                              }

                                              printf("\t\treq turnstiles sync promotion qos: %s, user promotion base pri: %u\n", v250, DWORD1(v412));
                                              v251 = (v224 >> 8) & 7;
                                              v252 = v251 == 6;
                                              if (v251 >= 6)
                                              {
                                                v253 = "LATENCY_QOS_TIER_5";
                                                if (!v252)
                                                {
                                                  v253 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v253 = (&off_10000C4D8)[v251];
                                              }

                                              printf("\t\treq latency qos: %s\n", v253);
                                              v254 = (v224 >> 11) & 7;
                                              v255 = v254 == 6;
                                              if (v254 >= 6)
                                              {
                                                v256 = "THROUGHPUT_QOS_TIER_5";
                                                if (!v255)
                                                {
                                                  v256 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v256 = (&off_10000C508)[v254];
                                              }

                                              printf("\t\treq thruput qos: %s\n", v256);
                                              v257 = "YES";
                                              if ((v224 & 3) == 0)
                                              {
                                                v257 = "NO";
                                              }

                                              v258 = &unk_100007155;
                                              v259 = "(internal)";
                                              if ((v224 & 1) == 0)
                                              {
                                                v259 = &unk_100007155;
                                              }

                                              if ((v224 & 2) != 0)
                                              {
                                                v258 = "(external)";
                                              }

                                              printf("\t\treq darwin BG: %s %s %s\n", v257, v259, v258);
                                              printf("\t\treq internal/external iotier: %s / %s\n", (&off_10000C5B8)[(v224 >> 2) & 3], (&off_10000C5B8)[(v224 >> 4) & 3]);
                                              printf("\t\treq other: ");
                                              if ((v224 & 0x40) != 0)
                                              {
                                                printf("passive-int ");
                                                if ((v224 & 0x80) == 0)
                                                {
LABEL_798:
                                                  if ((v224 & 0x4000) == 0)
                                                  {
                                                    goto LABEL_799;
                                                  }

                                                  goto LABEL_819;
                                                }
                                              }

                                              else if ((v224 & 0x80) == 0)
                                              {
                                                goto LABEL_798;
                                              }

                                              printf("passive-ext ");
                                              if ((v224 & 0x4000) == 0)
                                              {
LABEL_799:
                                                if ((v224 & 0x10000000000) == 0)
                                                {
                                                  goto LABEL_801;
                                                }

LABEL_800:
                                                printf("workload-property-controlled ");
                                                goto LABEL_801;
                                              }

LABEL_819:
                                              printf("bg-pidbind ");
                                              if ((v224 & 0x10000000000) != 0)
                                              {
                                                goto LABEL_800;
                                              }

LABEL_801:
                                              if (v410[3])
                                              {
                                                printf("static-param ");
                                              }

                                              putchar(10);
                                              puts("\teffective policy:");
                                              v260 = (v223 >> 14) & 7;
                                              if (v260 == 7 || ((0x7Du >> v260) & 1) == 0)
                                              {
                                                if (v260 == 1)
                                                {
                                                  v261 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v261 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v261 = (&off_10000C580)[v260];
                                              }

                                              printf("\t\teff thread qos: %s\n", v261);
                                              printf("\t\teff thread qos relprio: %d\n", -((v223 >> 17) & 0xF));
                                              v262 = (v223 >> 21) & 7;
                                              if (v262 == 7 || ((0x7Du >> v262) & 1) == 0)
                                              {
                                                if (v262 == 1)
                                                {
                                                  v263 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v263 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v263 = (&off_10000C580)[v262];
                                              }

                                              printf("\t\teff promotion qos: %s\n", v263);
                                              v264 = (v223 >> 8) & 7;
                                              v265 = v264 == 6;
                                              if (v264 >= 6)
                                              {
                                                v266 = "LATENCY_QOS_TIER_5";
                                                if (!v265)
                                                {
                                                  v266 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v266 = (&off_10000C4D8)[v264];
                                              }

                                              printf("\t\teff latency qos: %s\n", v266);
                                              v267 = (v223 >> 11) & 7;
                                              v268 = v267 == 6;
                                              if (v267 >= 6)
                                              {
                                                v269 = "THROUGHPUT_QOS_TIER_5";
                                                if (!v268)
                                                {
                                                  v269 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v269 = (&off_10000C508)[v267];
                                              }

                                              printf("\t\teff thruput qos: %s\n", v269);
                                              v270 = "YES";
                                              if ((v223 & 1) == 0)
                                              {
                                                v270 = "NO";
                                              }

                                              printf("\t\teff darwin BG: %s\n", v270);
                                              printf("\t\teff iotier: %s\n", (&off_10000C5B8)[(v223 >> 1) & 3]);
                                              printf("\t\teff other: ");
                                              if ((v223 & 8) != 0)
                                              {
                                                printf("passive ");
                                                if ((v223 & 0x80) == 0)
                                                {
LABEL_831:
                                                  if ((v223 & 0x10) == 0)
                                                  {
                                                    goto LABEL_832;
                                                  }

                                                  goto LABEL_841;
                                                }
                                              }

                                              else if ((v223 & 0x80) == 0)
                                              {
                                                goto LABEL_831;
                                              }

                                              printf("ui-is-urgent (47) ");
                                              if ((v223 & 0x10) == 0)
                                              {
LABEL_832:
                                                if ((v223 & 0x20) == 0)
                                                {
                                                  goto LABEL_833;
                                                }

                                                goto LABEL_842;
                                              }

LABEL_841:
                                              printf("bg-allsockets ");
                                              if ((v223 & 0x20) == 0)
                                              {
LABEL_833:
                                                if ((v223 & 0x40) == 0)
                                                {
                                                  goto LABEL_834;
                                                }

                                                goto LABEL_843;
                                              }

LABEL_842:
                                              printf("bg-newsockets ");
                                              if ((v223 & 0x40) == 0)
                                              {
LABEL_834:
                                                if ((v223 & 0x2000000) == 0)
                                                {
                                                  goto LABEL_835;
                                                }

                                                goto LABEL_844;
                                              }

LABEL_843:
                                              printf("terminated ");
                                              if ((v223 & 0x2000000) == 0)
                                              {
LABEL_835:
                                                if ((v223 & 0x1000000) == 0)
                                                {
                                                  goto LABEL_837;
                                                }

LABEL_836:
                                                printf("promote-above-task ");
                                                goto LABEL_837;
                                              }

LABEL_844:
                                              printf("workload-property-controlled ");
                                              if ((v223 & 0x1000000) != 0)
                                              {
                                                goto LABEL_836;
                                              }

LABEL_837:
                                              putchar(10);
                                              if ((DWORD2(v424) - 1) >= 4)
                                              {
                                                v271 = "TH_STATE_HALTED";
                                                if (DWORD2(v424) != 5)
                                                {
                                                  v271 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v271 = (&off_10000C538)[DWORD2(v424) - 1];
                                              }

                                              printf("\trun state: %s\n", v271);
                                              if (HIDWORD(v424))
                                              {
                                                v272 = "TH_FLAGS_SWAPPED ";
                                                if ((BYTE12(v424) & 1) == 0)
                                                {
                                                  v272 = &unk_100007155;
                                                }

                                                v273 = "TH_FLAGS_IDLE ";
                                                if ((BYTE12(v424) & 2) == 0)
                                                {
                                                  v273 = &unk_100007155;
                                                }

                                                v274 = "TH_FLAGS_GLOBAL_FORCED_IDLE ";
                                                if ((BYTE12(v424) & 4) == 0)
                                                {
                                                  v274 = &unk_100007155;
                                                }

                                                printf("\tflags: %s%s%s\n", v272, v273, v274);
                                              }

                                              printf("\tsuspend count: %d\n", v425);
                                              printf("\tsleep time: %d s\n", HIDWORD(v425));
                                              printf("\timportance in task: %d\n", v414[1]);
                                              if ((v221 & 1) == 0)
                                              {
                                                printf("\taffinity tag: %d\n", v414[0]);
                                              }

                                              v36 = v385;
                                              if (!v383)
                                              {
                                                goto LABEL_887;
                                              }

                                              voucher = 0;
                                              mach_voucher = thread_get_mach_voucher(act_list[v206], 0, &voucher);
                                              if (mach_voucher)
                                              {
                                                mach_error("thread_get_mach_voucher(...)", mach_voucher);
                                              }

                                              v276 = voucher;
                                              if (!voucher)
                                              {
                                                goto LABEL_887;
                                              }

                                              LODWORD(object_type) = 0;
                                              LODWORD(outsize) = 0;
                                              v277 = mach_port_kernel_object(mach_task_self_, voucher, &object_type, &outsize);
                                              if (v277)
                                              {
                                                LODWORD(v278) = v277;
                                                v279 = "mach_port_kernel_object(...)";
                                              }

                                              else
                                              {
                                                if (object_type != 37)
                                                {
                                                  goto LABEL_886;
                                                }

                                                printf("\tvoucher: 0x%x\n", outsize);
                                                recipesCnt = 0x2000;
                                                v281 = mach_voucher_debug_info(mach_task_self_, v276, __endptr, &recipesCnt);
                                                if (v281 == 46 || !recipesCnt)
                                                {
                                                  goto LABEL_886;
                                                }

                                                v278 = v281;
                                                if (!v281)
                                                {
                                                  for (j = 0; j < recipesCnt; j += *(&__endptr[1] + j + 4) + 16)
                                                  {
                                                    v284 = *(__endptr + j);
                                                    if (v284 == 3 || v284 == 2)
                                                    {
                                                      printf("\t\t%s\n", v278);
                                                    }

                                                    else
                                                    {
                                                      printf("\t\tUnknown (%u): %s\n", v278);
                                                    }
                                                  }

                                                  goto LABEL_886;
                                                }

                                                v279 = "mach_voucher_debug_info(...)";
                                              }

                                              mach_error(v279, v278);
LABEL_886:
                                              mach_port_deallocate(mach_task_self_, voucher);
LABEL_887:
                                              mach_port_deallocate(mach_task_self_, act_list[v206]);
                                              putchar(10);
                                              ++v206;
                                            }

                                            while (v206 < x[1]);
                                          }
                                        }

                                        putchar(10);
                                        v35 = v374;
LABEL_891:
                                        ++v36;
                                        v34 = task_listCnt;
                                        v33 = size[1] == 0;
                                      }

                                      while (v36 < task_listCnt && !size[1]);
                                    }
                                  }
                                }

                                else
                                {
                                  v34 = 0;
                                  v33 = size[1] == 0;
                                }

                                if (!v369)
                                {
                                  goto LABEL_989;
                                }

                                if (v33)
                                {
                                  puts("Coalitions: ");
                                  v34 = task_listCnt;
                                }

                                v394 = task_list;
                                v285 = proc_listpids(1u, 0, 0, 0);
                                if (v285 <= 0)
                                {
                                  v293 = __stderrp;
                                  __error();
                                  fprintf(v293, "proc_listpids(PROC_ALL_PIDS): %d\n");
                                }

                                else
                                {
                                  if ((2 * v285) <= 0x1E)
                                  {
                                    v286 = 30;
                                  }

                                  else
                                  {
                                    v286 = (2 * v285);
                                  }

                                  v287 = malloc_type_malloc(v286, 0x5A072193uLL);
                                  v288 = proc_listpids(1u, 0, v287, v286);
                                  if (v288 > 0)
                                  {
                                    v289 = v288;
                                    v290 = v288 >> 2;
                                    v291 = malloc_type_calloc(v290, 0xA0uLL, 0x1000040B8406A4EuLL);
                                    v398 = v287;
                                    if (v289 < 4)
                                    {
                                      __nelb = 0;
LABEL_910:
                                      free(v398);
                                      v292 = v291;
                                      goto LABEL_914;
                                    }

                                    __nelb = 0;
                                    while (1)
                                    {
                                      v329 = &v291[160 * __nelb];
                                      if (proc_name(*v287, v329 + 24, 0x40u) < 0)
                                      {
                                        fprintf(__stderrp, "skipping pid %d (proc_name)\n");
                                      }

                                      else
                                      {
                                        LODWORD(v472) = *v287;
                                        v330 = v472;
                                        *__error() = 0;
                                        *&v579 = 0;
                                        v578 = 0u;
                                        *__endptr = 0u;
                                        if (proc_pidinfo(v330, 20, 1uLL, __endptr, 40) == 40)
                                        {
                                          *__error() = 0;
                                          *&v482 = 0;
                                          *&buffer = 8;
                                          if ((sysctlbyname("kern.coalition_roles", &v482, &buffer, &v472, 4uLL) & 0x80000000) == 0 && buffer == 8 || (byte_100010001 & 1) == 0 && *__error() == 2)
                                          {
                                            *v329 = *__endptr;
                                            *(v329 + 2) = v482;
                                            v331 = *v287;
                                            v332.i64[0] = -1;
                                            v332.i64[1] = -1;
                                            v578 = v332;
                                            *__endptr = v332;
                                            LODWORD(v482) = 0;
                                            if (!task_name_for_pid(mach_task_self_, v331, &v482))
                                            {
                                              LODWORD(buffer) = 8;
                                              task_info(v482, 0xFu, __endptr, &buffer);
                                              mach_port_deallocate(mach_task_self_, v482);
                                            }

                                            if (v578.i32[1] == -1)
                                            {
                                              fprintf(__stderrp, "skipping pid %d (get_audit_token)\n");
                                            }

                                            else
                                            {
                                              v333 = *__endptr;
                                              *(v329 + 104) = v578;
                                              *(v329 + 88) = v333;
                                              *(v329 + 120) = 0u;
                                              *(v329 + 136) = 0u;
                                              *(v329 + 38) = *v287;
                                              ++__nelb;
                                            }

                                            goto LABEL_1011;
                                          }

                                          v335 = __stderrp;
                                          __error();
                                          fprintf(v335, "kern.coalition_roles(%d): %d\n");
                                        }

                                        else
                                        {
                                          v334 = __stderrp;
                                          __error();
                                          fprintf(v334, "PROC_PIDCOALITIONINFO(%d): %d\n");
                                        }

                                        fprintf(__stderrp, "skipping pid %d (fill_coalitions)\n");
                                      }

LABEL_1011:
                                      ++v287;
                                      if (!--v290)
                                      {
                                        goto LABEL_910;
                                      }
                                    }
                                  }

                                  v294 = __stderrp;
                                  __error();
                                  fprintf(v294, "proc_listpids(PROC_ALL_PIDS, pids): %d\n");
                                }

                                __nelb = 0;
                                v292 = 0;
LABEL_914:
                                if (v369 == 3)
                                {
                                  v295 = 0;
                                  v391 = 0;
                                  v296 = sub_1000060C8;
                                }

                                else
                                {
                                  v296 = sub_100006070;
                                  v295 = 1;
                                  v391 = 1;
                                }

                                qsort(v292, __nelb, 0xA0uLL, v296);
                                printf("PID   Command                           ");
                                printf("Resource  Jetsam ");
                                printf(" Role   ");
                                printf("  Apptype  Background App Nap");
                                if (v393)
                                {
                                  printf(" (coalition names, bundle ids)");
                                }

                                putchar(10);
                                if (__nelb)
                                {
                                  v297 = 0;
                                  v298 = 0;
                                  if (!__s1)
                                  {
                                    v295 = 0;
                                  }

                                  v386 = v295;
                                  do
                                  {
                                    v299 = &v292[160 * v298];
                                    v300 = *(v299 + 5) + 1;
                                    v301 = "unknown";
                                    if (v300 <= 4)
                                    {
                                      v301 = (&off_10000C558)[v300];
                                    }

                                    v302 = *&v299[4 * v391 + 16] == 1;
                                    if (!v295)
                                    {
LABEL_940:
                                      if (*(v299 + 38) < 2u || v302)
                                      {
                                        printf("%-5d %-34s");
                                      }

                                      else
                                      {
                                        printf("  %-5d %-32s");
                                      }

                                      printf(" %7llu %7llu ", *v299, *(v299 + 1));
                                      printf(" %s ", v301);
                                      v306 = v374;
                                      v307 = v34;
                                      v308 = v394;
                                      if (!v34)
                                      {
                                        goto LABEL_951;
                                      }

                                      while (1)
                                      {
                                        v309 = *v306++;
                                        if (v309 == *(v299 + 38))
                                        {
                                          break;
                                        }

                                        ++v308;
                                        if (!--v307)
                                        {
                                          goto LABEL_951;
                                        }
                                      }

                                      v310 = *v308;
                                      if (!*v308)
                                      {
LABEL_951:
                                        fprintf(__stderrp, "could not find task for pid %d", *(v299 + 38));
                                        v310 = 0;
                                      }

                                      v580 = 0u;
                                      v579 = 0u;
                                      v578 = 0u;
                                      *__endptr = 0u;
                                      if (*(v299 + 38))
                                      {
                                        LODWORD(v482) = 16;
                                        LODWORD(buffer) = 0;
                                        v311 = task_policy_get(v310, 4u, __endptr, &v482, &buffer);
                                        if (v311)
                                        {
                                          mach_error("task_policy_get(TASK_POLICY_STATE)", v311);
                                        }

                                        v312 = DWORD2(v580);
                                        v313 = (v580 >> 17) & 7;
                                        if (v313 == 5)
                                        {
                                          v314 = sub_100005D70((DWORD2(v580) >> 20) & 0xF, 1);
LABEL_959:
                                          printf("  %s ", v314);
                                          v315 = coalition_policy_get();
                                          if (v315 == 1)
                                          {
                                            printf(" CBG ");
                                          }

                                          else if (v315 == -1)
                                          {
                                            perror("coalition_policy_get(COALITION_POLICY_SUPPRESS) failed");
                                          }

                                          else
                                          {
                                            printf("     ");
                                          }

                                          if ((__endptr[1] & 0x10) != 0)
                                          {
                                            printf(" TBG ");
                                          }

                                          else
                                          {
                                            printf("     ");
                                          }

                                          v316 = " Nap     ";
                                          if ((*&v312 & 0x80000) == 0)
                                          {
                                            v316 = "         ";
                                          }

                                          if ((v579 & 0x10) != 0)
                                          {
                                            printf(" Suspend ");
                                          }

                                          else
                                          {
                                            printf(v316);
                                          }

                                          if (v393 && *(v299 + 38))
                                          {
                                            v317 = v292;
                                            v318 = sub_1000053D4();
                                            v320 = v319;
                                            v321 = sub_1000053D4();
                                            v322 = v321;
                                            v324 = v323;
                                            if ((!(v321 | v318) || v318 && v321 && !strcmp(v318, v321)) && (!(v324 | v320) || v320 && v324 && !strcmp(v320, v324)))
                                            {
                                              v325 = v318;
                                              v326 = v320;
                                            }

                                            else
                                            {
                                              sub_10000547C(v318, v320);
                                              v325 = v322;
                                              v326 = v324;
                                            }

                                            sub_10000547C(v325, v326);
                                            free(v318);
                                            free(v320);
                                            free(v322);
                                            free(v324);
                                            v292 = v317;
                                            v295 = v386;
                                          }

                                          putchar(10);
                                          goto LABEL_985;
                                        }
                                      }

                                      else
                                      {
                                        v313 = 0;
                                        v312 = 0;
                                      }

                                      v314 = sub_100005C84(v313, 1);
                                      goto LABEL_959;
                                    }

                                    if (!strncmp(__s1, v299 + 24, 0x20uLL))
                                    {
                                      if (v297)
                                      {
                                        v304 = 0;
                                      }

                                      else
                                      {
                                        v304 = v302;
                                      }

                                      if (v304)
                                      {
LABEL_937:
                                        v297 = *(v299 + 1);
                                      }
                                    }

                                    else if (v373 && *(v299 + 38) == v372 && v302 && v297 == 0)
                                    {
                                      goto LABEL_937;
                                    }

                                    if (v297 && v297 == *(v299 + 1))
                                    {
                                      goto LABEL_940;
                                    }

LABEL_985:
                                    ++v298;
                                  }

                                  while (v298 != __nelb);
                                }

                                free(v292);
                                v34 = task_listCnt;
LABEL_989:
                                if (v34)
                                {
                                  v327 = 0;
                                  do
                                  {
                                    mach_port_deallocate(mach_task_self_, task_list[v327++]);
                                  }

                                  while (v327 < task_listCnt);
                                }

                                if (cf)
                                {
                                  CFRelease(cf);
                                  stackshot_config_dealloc();
                                }

                                free(v374);
                                free(v370);
                                return 0;
                              }

                              v339 = 0;
                              v340 = 0;
                              v341 = 0;
                              v342 = 0;
                              v343 = 0;
                              v344 = 1;
                              while (1)
                              {
                                v345 = *(stackshot_buffer + 4);
                                v346 = v338 + v345;
                                if (v338 + v345 > v337)
                                {
                                  goto LABEL_82;
                                }

                                v347 = *stackshot_buffer;
                                if (*stackshot_buffer == -242132755)
                                {
                                  goto LABEL_82;
                                }

                                v348 = (v347 & 0xFFFFFFF0) == 0x20 ? 17 : *stackshot_buffer;
                                if (v348 <= 19)
                                {
                                  break;
                                }

                                if (v348 != 20)
                                {
                                  if (v348 == 2309)
                                  {
                                    if ((v344 & 1) == 0)
                                    {
                                      v344 = 0;
                                      v343 = stackshot_buffer + 16;
                                      goto LABEL_1094;
                                    }

                                    v26 = __stderrp;
                                    v27 = "Encountered task snapshot outside of a container while generating boost map\n";
                                    v28 = 76;
                                  }

                                  else
                                  {
                                    if (v348 != 2352)
                                    {
                                      goto LABEL_1094;
                                    }

                                    if ((v344 & 1) == 0)
                                    {
                                      v344 = 0;
                                      v342 = stackshot_buffer + 16;
                                      goto LABEL_1094;
                                    }

                                    v26 = __stderrp;
                                    v27 = "Encountered transitioning task snapshot outside of a container while generating boost map\n";
                                    v28 = 90;
                                  }

                                  goto LABEL_79;
                                }

                                if (v344)
                                {
                                  goto LABEL_1037;
                                }

                                if (*(stackshot_buffer + 8) == v341)
                                {
                                  if (v343 | v342)
                                  {
                                    if (!v339 || v340)
                                    {
                                      if (!v339)
                                      {
LABEL_1037:
                                        v344 = 1;
                                        goto LABEL_1094;
                                      }

                                      v381 = v337;
                                      v364 = v24;
                                      v352 = 0;
                                      v353 = v343 + 88;
                                      *v389 = v342;
                                      if (!v343)
                                      {
                                        v353 = v342 + 28;
                                      }

                                      v399 = v353;
                                      v384 = v341;
                                      v387 = (v342 + 24);
                                      if (v343)
                                      {
                                        v354 = (v343 + 84);
                                      }

                                      else
                                      {
                                        v354 = (v342 + 24);
                                      }

                                      v395 = v354;
                                      while (2)
                                      {
                                        v355 = *(v340 + 4 * v352);
                                        if (v343)
                                        {
                                          v356 = (v343 + 84);
                                          goto LABEL_1065;
                                        }

                                        if (!*v389)
                                        {
                                          goto LABEL_1066;
                                        }

                                        v356 = v387;
LABEL_1065:
                                        if (v355 != *v356)
                                        {
LABEL_1066:
                                          v357 = CFDictionaryGetValue(cf, v355);
                                          if (!v357)
                                          {
                                            v357 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                            CFDictionarySetValue(cf, *(v340 + 4 * v352), v357);
                                            CFRelease(v357);
                                          }

                                          v358 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]", v399, *v395);
                                          CFArrayAppendValue(v357, v358);
                                          CFRelease(v358);
                                        }

                                        if (v339 == ++v352)
                                        {
                                          v346 = v338 + *(stackshot_buffer + 4);
                                          v344 = 1;
                                          v24 = v364;
                                          v341 = v384;
                                          v342 = *v389;
                                          v337 = v381;
                                          goto LABEL_1094;
                                        }

                                        continue;
                                      }
                                    }

                                    v26 = __stderrp;
                                    v27 = "Donating pids count was non-zero with a NULL array while generating boost map\n";
                                    v28 = 78;
                                  }

                                  else
                                  {
                                    v26 = __stderrp;
                                    v27 = "Encountered container end without a corresponding task snapshot while generating boost map\n";
                                    v28 = 91;
                                  }

                                  goto LABEL_79;
                                }

                                v344 = 0;
LABEL_1094:
                                v338 = v346 + 16;
                                stackshot_buffer = v346;
                                if (v346 + 16 > v337)
                                {
                                  goto LABEL_82;
                                }
                              }

                              if (v348 != 17)
                              {
                                if (v348 != 19)
                                {
                                  goto LABEL_1094;
                                }

                                if (v345 < 4 || v347 != 19)
                                {
                                  fprintf(__stderrp, "Encountered invalid container while generating boost map (id 0x%llx)\n", *(stackshot_buffer + 8));
                                  goto LABEL_80;
                                }

                                v349 = *(stackshot_buffer + 16);
                                if (v349 == 2307 || v349 == 2353)
                                {
                                  v343 = 0;
                                  v342 = 0;
                                  v344 = 0;
                                  v340 = 0;
                                  v339 = 0;
                                  v341 = *(stackshot_buffer + 8);
                                }

                                goto LABEL_1094;
                              }

                              if (v347 != 17 && (v347 & 0xFFFFFFF0) != 0x20)
                              {
LABEL_1097:
                                fwrite("Encountered invalid array iterator while generating boost map\n", 0x3EuLL, 1uLL, __stderrp);
                                goto LABEL_80;
                              }

                              v350 = *(stackshot_buffer + 8);
                              if (v350)
                              {
                                if (v347 == 17)
                                {
                                  if (SHIDWORD(v350) > 2313)
                                  {
                                    if (SHIDWORD(v350) <= 2315)
                                    {
                                      if (HIDWORD(v350) != 2314)
                                      {
                                        goto LABEL_1086;
                                      }
                                    }

                                    else if (HIDWORD(v350) != 2316)
                                    {
                                      if (HIDWORD(v350) != 2317)
                                      {
                                        if (HIDWORD(v350) != 2369)
                                        {
                                          goto LABEL_1097;
                                        }

                                        v351 = 48;
                                        goto LABEL_1089;
                                      }

LABEL_1086:
                                      v351 = 16;
                                      goto LABEL_1089;
                                    }

LABEL_1087:
                                    v351 = 8;
                                    goto LABEL_1089;
                                  }

                                  if (SHIDWORD(v350) > 2073)
                                  {
                                    if (HIDWORD(v350) == 2074)
                                    {
                                      goto LABEL_1087;
                                    }

                                    if (HIDWORD(v350) != 2311)
                                    {
                                      goto LABEL_1097;
                                    }

                                    v351 = 4;
                                  }

                                  else if (HIDWORD(v350) == 48)
                                  {
                                    v351 = 20;
                                  }

                                  else
                                  {
                                    if (HIDWORD(v350) != 49)
                                    {
                                      goto LABEL_1097;
                                    }

                                    v351 = 24;
                                  }

LABEL_1089:
                                  if (v345 / v351 < v350 || v345 % v350 >= 0x10)
                                  {
                                    goto LABEL_1097;
                                  }

LABEL_1091:
                                  if (HIDWORD(v350) == 2311)
                                  {
                                    if (v344)
                                    {
                                      v26 = __stderrp;
                                      v27 = "Encountered donating pids array outside of a container while generating boost map\n";
                                      v28 = 82;
                                      goto LABEL_79;
                                    }

                                    v344 = 0;
                                    v340 = stackshot_buffer + 16;
                                    v339 = v350;
                                  }

                                  goto LABEL_1094;
                                }

                                v359 = *stackshot_buffer & 0xF;
                                v360 = v345 >= v359;
                                v361 = v345 - v359;
                                if (!v360 || v361 < v350)
                                {
                                  goto LABEL_1097;
                                }

                                LODWORD(v345) = v361 % v350;
                              }

                              if (v345)
                              {
                                goto LABEL_1097;
                              }

                              goto LABEL_1091;
                            }

                            fwrite("Unable to allocate boost dictionary\n", 0x24uLL, 1uLL, __stderrp);
                            stackshot_config_dealloc();
                          }

                          else
                          {
                            fwrite("Unable to create stackshot config\n", 0x22uLL, 1uLL, __stderrp);
                          }
                        }

LABEL_81:
                        cf = 0;
                        goto LABEL_82;
                      }

                      fwrite("processor_set_tasks_with_flavor(TASK_FLAVOR_READ) returned 0 tasks", 0x42uLL, 1uLL, __stderrp);
                      LODWORD(v467) = 0;
                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
LABEL_63:
                        v390 = 0;
                        goto LABEL_64;
                      }
                    }

                    v23 = processor_set_tasks_with_flavor(set, 2u, &task_list, &task_listCnt);
                    if (!v23)
                    {
                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
                        goto LABEL_63;
                      }

                      fwrite("processor_set_tasks_with_flavor(TASK_FLAVOR_INSPECT) returned 0 tasks", 0x45uLL, 1uLL, __stderrp);
LABEL_1113:
                      exit(1);
                    }

                    v362 = v23;
                    v363 = "processor_set_tasks_with_flavor(TASK_FLAVOR_INSPECT)";
                  }
                }
              }

              mach_error(v363, v362);
              goto LABEL_1113;
            }

            v392 = 1;
            if (optarg)
            {
              v392 = sub_100005274() != 0;
            }
          }
        }

        if (v5 > 5)
        {
          break;
        }

        if (v5 == 4)
        {
          v7 = optarg;
          v4 = 2;
          if (strcmp(optarg, "jetsam"))
          {
            v4 = 3;
            if (strcmp(v7, "resource"))
            {
              sub_100006120(v7);
            }
          }
        }

        else
        {
          if (optarg)
          {
            v6 = sub_100005274() != 0;
          }

          else
          {
            v6 = 1;
          }

          byte_100010000 = v6;
        }
      }

      if (v5 != 6)
      {
        break;
      }

      v393 = 1;
      if (optarg)
      {
        v393 = sub_100005274() != 0;
      }
    }

    if (v5 != 8)
    {
      break;
    }

    v467 = 0x100000001;
    v393 = 1;
    size[2] = 1;
    v4 = 2;
  }

  if (v5 == 7)
  {
    sub_10000615C();
  }

LABEL_72:
  puts("usage:");
  puts("\ttaskinfo [process-name|pid] [-h|--help] [--threads] [--dq] [--boosts] [--verbose] [--all]");
  puts("\t\t [--precise(=1|0)] [--xpcinfo(=1|0)] [--coalitions-only] [--threadcounts(=1|0)]");
  puts("\t\t [--vouchers(=1|0)] [--coalitions=(all|jetsam|resource)]");
  return 0;
}

unint64_t sub_100005274()
{
  __endptr = 0;
  result = strtoull(optarg, &__endptr, 10);
  if (__endptr == optarg || *__endptr)
  {
    sub_100006440(optarg);
  }

  return result;
}

uint64_t sub_1000052D4(const char *a1)
{
  v4 = 0;
  v3 = 4;
  *__error() = 0;
  if (sysctlbyname(a1, &v4, &v3, 0, 0) != -1)
  {
    return 1;
  }

  if (*__error() != 2)
  {
    perror(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_100005358(const char *a1)
{
  v4 = 0;
  v3 = 4;
  *__error() = 0;
  if (sysctlbyname(a1, &v4, &v3, 0, 0) == -1 && *__error() != 2)
  {
    perror(a1);
  }

  return v4;
}

char *sub_1000053D4()
{
  v0 = xpc_coalition_copy_info();
  if (xpc_get_type(v0) != &_xpc_type_dictionary)
  {
    v1 = strdup("coalition unknown");
    v2 = "to launchd";
LABEL_7:
    strdup(v2);
    return v1;
  }

  string = xpc_dictionary_get_string(v0, XPC_COALITION_INFO_KEY_NAME);
  if (string)
  {
    v1 = strdup(string);
  }

  else
  {
    v1 = 0;
  }

  v2 = xpc_dictionary_get_string(v0, XPC_COALITION_INFO_KEY_BUNDLE_IDENTIFIER);
  if (v2)
  {
    goto LABEL_7;
  }

  return v1;
}

uint64_t sub_10000547C(char *__s1, char *__s2)
{
  if (__s1 && __s2)
  {
    if (strcmp(__s1, __s2))
    {
      return printf(" (%s, %s)");
    }

    return printf(" (%s)");
  }

  if (__s1 || __s2)
  {
    return printf(" (%s)");
  }

  return printf(" ()");
}

uint64_t sub_100005518(const char *a1, unint64_t *a2, void *a3, int a4, const char *a5)
{
  v9 = a2[3] + a2[2];
  v10 = a3[2];
  v11 = a3[3];
  printf("%s %llu.%06llu s ", a1, v9 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v9 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8);
  if (a4)
  {
    if (v11 + v10)
    {
      v12 = v9 * 100.0 / (v11 + v10);
    }

    else
    {
      v12 = 0.0;
    }

    printf("(%.2f%%%s) ", v12, a5);
  }

  if (byte_100010000 == 1)
  {
    printf("(%llu cycles, %llu instructions");
  }

  else
  {
    printf("(%.2f%s cycles, %.2f%s instructions");
  }

  v13 = a2[1];
  if (v13)
  {
    v14 = *a2 / v13;
  }

  else
  {
    v14 = 0.0;
  }

  printf(", IPC %.3f, ", v14);
  if ((v9 * stru_100010004.numer / stru_100010004.denom) / 1000000000.0 != 0.0)
  {
    if ((byte_100010000 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    printf("%.0f hz ");
    goto LABEL_18;
  }

  if (byte_100010000 == 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  printf("%.2f%s%s, ");
LABEL_18:
  sub_100005A3C();
  if (a4)
  {
    v15 = a3[4];
    if (v15)
    {
      v16 = a2[4] * 100.0 / v15;
    }

    else
    {
      v16 = 0.0;
    }

    printf(" (%.2f%%%s)", v16, a5);
  }

  printf(") ");
  v17 = a2[2];
  v18 = a2[3];
  if (v9)
  {
    v19 = v17 * 100.0 / v9;
    v20 = v18 * 100.0 / v9;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
  }

  return printf("user/system: %llu.%06llu / %llu.%06llu (%.0f%% / %.0f%%)\n", v17 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v17 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8, v18 * stru_100010004.numer / stru_100010004.denom / 0x3B9ACA00, v18 * stru_100010004.numer / stru_100010004.denom % 0x3B9ACA00 / 0x3E8, v19, v20);
}

uint64_t sub_100005A3C()
{
  if (byte_100010000 == 1)
  {
    return printf("%llu nJ %.0f nW");
  }

  else
  {
    return printf("%.2f%s%s, %.2f%s%s");
  }
}

const char *sub_100005C84(int a1, int a2)
{
  if (a1 > 3)
  {
    v2 = "TASK_APPTYPE_APP_NONUI";
    if (a2)
    {
      v2 = "NonUIApp";
    }

    v7 = "TASK_APPTYPE_DRIVER";
    if (a2)
    {
      v7 = "Driver  ";
    }

    v8 = "TASK_APPTYPE_DAEMON_BACKGROUND";
    if (a1 != 6)
    {
      v2 = v7;
    }

    v5 = "TASK_APPTYPE_APP_DEFAULT";
    if (a2)
    {
      v8 = "BG Dmon ";
      v5 = "App     ";
    }

    if (a1 == 4)
    {
      v5 = v8;
    }

    v6 = a1 <= 5;
  }

  else
  {
    v2 = "TASK_APPTYPE_DAEMON_STANDARD";
    if (a2)
    {
      v2 = "Std Dmon";
    }

    v3 = "TASK_APPTYPE_DAEMON_ADAPTIVE";
    if (a2)
    {
      v3 = "Adaptive";
    }

    v4 = "TASK_APPTYPE_NONE";
    if (a1 != 2)
    {
      v2 = v3;
    }

    v5 = "TASK_APPTYPE_DAEMON_INTERACTIVE";
    if (a2)
    {
      v4 = "        ";
      v5 = "Int Dmon";
    }

    if (!a1)
    {
      v5 = v4;
    }

    v6 = a1 <= 1;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

const char *sub_100005D70(int a1, int a2)
{
  v2 = "???";
  if (a1 > 4)
  {
    v3 = "TASK_DEFAULT_APPLICATION (PRIO_DARWIN_ROLE_UI)";
    if (a2)
    {
      v3 = "UI App  ";
    }

    v9 = "TASK_DARWINBG_APPLICATION (PRIO_DARWIN_ROLE_DARWIN_BG)";
    if (a2)
    {
      v9 = "DarwinBG";
    }

    v10 = "TASK_USER_INIT_APPLICATION (PRIO_DARWIN_ROLE_USER_INIT)";
    if (a2)
    {
      v10 = "UserInit";
    }

    if (a1 != 9)
    {
      v10 = "???";
    }

    if (a1 != 8)
    {
      v9 = v10;
    }

    if (a1 != 7)
    {
      v3 = v9;
    }

    v11 = "TASK_THROTTLE_APPLICATION (PRIO_DARWIN_ROLE_TAL_LAUNCH)";
    if (a2)
    {
      v11 = "TAL App ";
    }

    v12 = "TASK_NONUI_APPLICATION (PRIO_DARWIN_ROLE_NON_UI)";
    if (a2)
    {
      v12 = "Non-UI  ";
    }

    if (a1 == 6)
    {
      v2 = v12;
    }

    if (a1 == 5)
    {
      v2 = v11;
    }

    v8 = a1 <= 6;
  }

  else
  {
    v3 = "TASK_BACKGROUND_APPLICATION (PRIO_DARWIN_ROLE_UI_NON_FOCAL)";
    if (a2)
    {
      v3 = "NonFocal";
    }

    v4 = "TASK_CONTROL_APPLICATION";
    if (a2)
    {
      v4 = "Control ";
    }

    v5 = "TASK_GRAPHICS_SERVER";
    if (a2)
    {
      v5 = "Graphics";
    }

    if (a1 != 4)
    {
      v5 = "???";
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v6 = "TASK_UNSPECIFIED (PRIO_DARWIN_ROLE_DEFAULT)";
    if (a2)
    {
      v6 = "App     ";
    }

    v7 = "TASK_FOREGROUND_APPLICATION (PRIO_DARWIN_ROLE_UI_FOCAL)";
    if (a2)
    {
      v7 = "FocalApp";
    }

    if (a1 == 1)
    {
      v2 = v7;
    }

    if (!a1)
    {
      v2 = v6;
    }

    v8 = a1 <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_100005EC4(id a1)
{
  v1 = 4;
  if (sysctlbyname("hw.nperflevels", &dword_100010020, &v1, 0, 0) == -1)
  {
    perror("sysctlbyname(hw.nperflevels)");
  }

  if (dword_100010020 >= 3)
  {
    fprintf(__stderrp, "count:%u exceeds STATIC_PERFLEVEL_COUNT:%d skipping PROC_PIDTHREADCOUNTS data\n", dword_100010020, 2);
    byte_100010003 = 0;
  }
}

void sub_100005F58(id a1)
{
  if (qword_100010018 != -1)
  {
    sub_10000647C();
  }

  v1 = dword_100010020;
  if (dword_100010020)
  {
    v2 = 0;
    v3 = &unk_100010080;
    do
    {
      v7 = 0u;
      v8 = 0u;
      *__str = 0u;
      v6 = 0u;
      snprintf(__str, 0x40uLL, "hw.perflevel%u.name", v2);
      v4 = 32;
      if (sysctlbyname(__str, v3, &v4, 0, 0) == -1)
      {
        perror(__str);
      }

      ++v2;
      v3 += 32;
    }

    while (v1 != v2);
  }
}

uint64_t sub_100006058(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100006070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  if (*(a1 + 20) == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 20) == 1)
  {
    return 1;
  }

  v5 = *(a1 + 152);
  v6 = *(a2 + 152);
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000060C8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  if (*(a1 + 16) == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 16) == 1)
  {
    return 1;
  }

  v3 = *(a1 + 152);
  v4 = *(a2 + 152);
  v6 = __OFSUB__(v3, v4);
  v5 = v3 - v4 < 0;
  v7 = v3 > v4;
  if (v5 != v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void sub_100006198()
{
  v0 = getuid();
  v1 = geteuid();
  errx(77, "must be run as root, running as uid:%u euid:%u", v0, v1);
}
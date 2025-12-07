uint64_t start(unsigned int a1, uint64_t a2)
{
  v2 = a1 - 1;
  if (a1 <= 1)
  {
    goto LABEL_163;
  }

  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (!strcmp(v6, "list"))
  {
    remote_device_browse_present();
    dispatch_main();
  }

  if (!strcmp(v6, "browse"))
  {
    v8 = 0;
    v110 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v121[0] = 0;
    v121[1] = v121;
    v121[2] = 0x2020000000;
    v122 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x2020000000;
    v120 = 0;
    v113 = 0;
    v114 = &v113;
    v115 = 0x3032000000;
    v116 = sub_1000046C4;
    v117 = sub_1000046D4;
    v118 = 0;
    memset(uu, 170, sizeof(uu));
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v13 = getopt(v2, v5, "d:t:s");
          if (v13 == 100)
          {
            break;
          }

          switch(v13)
          {
            case 115:
              v8 = 1;
              break;
            case 116:
              v110 = strtoull(optarg, 0, 10);
              break;
            case -1:
              *v124 = _NSConcreteStackBlock;
              *&v124[8] = 3221225472;
              *&v124[16] = sub_1000046DC;
              v125 = &unk_100025278;
              v129 = v10;
              v130 = v9;
              v126 = v121;
              v127 = v119;
              v132 = v12 & 1;
              v133 = v8 & 1;
              v131 = v11;
              v128 = &v113;
              objc_retainBlock(v124);
              v30 = &_dispatch_main_q;
              started = remote_device_start_browsing();
              v32 = v114[5];
              v114[5] = started;

              if (signal(2, 1) == -1)
              {
                block[0] = 0;
                v137 = 0u;
                v138 = 0u;
                memset(v136, 0, sizeof(v136));
                handler = 0u;
                v88 = &_os_log_default;
                v89 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                v90 = *__error();
                if (v89)
                {
                  v91 = 3;
                }

                else
                {
                  v91 = 2;
                }

                v123[0] = 67109120;
                v123[1] = v90;
                _os_log_send_and_compose_impl(v91, block, &handler, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: signal(2, (void (*)(int))1) -> %{errno}d", v123, 8);

                _os_crash_msg();
                sub_10001AA18();
              }

              v33 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, &_dispatch_main_q);
              v34 = qword_100028F50;
              qword_100028F50 = v33;

              *&handler = _NSConcreteStackBlock;
              *(&handler + 1) = 3221225472;
              *&v136[0] = sub_100004B6C;
              *(&v136[0] + 1) = &unk_1000252A0;
              *&v136[1] = v121;
              *(&v136[1] + 1) = &v113;
              dispatch_source_set_event_handler(qword_100028F50, &handler);
              dispatch_activate(qword_100028F50);
              if (v110)
              {
                v35 = dispatch_time(0, 1000000000 * v110);
              }

              else
              {
                v35 = -1;
              }

              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100004B8C;
              block[3] = &unk_1000252A0;
              block[4] = v121;
              block[5] = &v113;
              dispatch_after(v35, &_dispatch_main_q, block);

LABEL_141:
              dispatch_main();
            default:
              sub_10000275C();
          }
        }

        if (uuid_parse(optarg, uu))
        {
          break;
        }

        v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
        v10 = v15;
        if (!v15)
        {
          block[0] = 0;
          v137 = 0u;
          v138 = 0u;
          memset(v136, 0, sizeof(v136));
          handler = 0u;
          v67 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v68 = 3;
          }

          else
          {
            v68 = 2;
          }

          v69 = __error();
          v70 = strerror(*v69);
          *v124 = 136315650;
          *&v124[4] = "known-constant allocation";
          *&v124[12] = 2048;
          *&v124[14] = 16;
          *&v124[22] = 2080;
          v125 = v70;
          _os_log_send_and_compose_impl(v68, block, &handler, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v124, 32, v108);

          _os_crash_msg();
          sub_10001AA18();
        }

        uuid_copy(v15, uu);
        printf("Browse for uuid: %s\n");
LABEL_19:
        v12 = 1;
      }

      v11 = remote_device_type_parse();
      v14 = optarg;
      if (v11)
      {
        printf("Browse for type: %s\n");
        goto LABEL_19;
      }

      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v16 = strdup(v14);
          if (v16)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v9 = v16;
      }

      else
      {
        v9 = strdup(v14);
        v17 = strlen(v14);
        if (!v9)
        {
          v73 = v17;
          block[0] = 0;
          v137 = 0u;
          v138 = 0u;
          memset(v136, 0, sizeof(v136));
          handler = 0u;
          v74 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v76 = 3;
          }

          else
          {
            v76 = 2;
          }

          v77 = __error();
          v78 = strerror(*v77);
          *v124 = 136315650;
          *&v124[4] = "known-constant allocation";
          *&v124[12] = 2048;
          *&v124[14] = v73;
          *&v124[22] = 2080;
          v125 = v78;
          _os_log_send_and_compose_impl(v76, block, &handler, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v124, 32, v108);

          _os_crash_msg();
          sub_10001AA18();
        }
      }

      printf("Browse for device: %s\n", optarg);
      v11 = 0;
      v12 = 1;
    }
  }

  if (strcmp(v6, "show"))
  {
    if (strcmp(v6, "get-property"))
    {
      if (!strcmp(v6, "dumpstate"))
      {
        v92 = local_device_copy_description();
        v93 = local_device_copy_service_names();
        v94 = local_device_copy_identity();
        if (v92 && v93)
        {
          v95 = v92;
          v96 = v93;
          puts("Local device");
          v97 = xpc_dictionary_get_dictionary(v95, "properties");
          uuid = xpc_dictionary_get_uuid(v95, "UUID");
          if (uuid)
          {
            *(v136 + 13) = 0xAAAAAAAAAAAAAAAALL;
            *&v99 = 0xAAAAAAAAAAAAAAAALL;
            *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
            handler = v99;
            v136[0] = v99;
            uuid_unparse(uuid, &handler);
            printf("\tUUID: %s\n", &handler);
          }

          uint64 = xpc_dictionary_get_uint64(v95, "device_messaging_protocol_version");
          printf("\tMessaging Protocol Version: %llu\n", uint64);
          string = xpc_dictionary_get_string(v97, "ProductType");
          if (string)
          {
            printf("\tProduct Type: %s\n", string);
          }

          v102 = xpc_dictionary_get_string(v97, "BuildVersion");
          v103 = xpc_dictionary_get_string(v97, "OSVersion");
          v104 = xpc_dictionary_get_BOOL(v97, "AppleInternal");
          if (v102 && v103)
          {
            v105 = "";
            if (v104)
            {
              v105 = " AppleInternal";
            }

            printf("\tOS Build: %s (%s)%s\n", v103, v102, v105);
          }

          v106 = xpc_copy_clean_description();
          printf("\tProperties: ");
          sub_1000053FC(v106, "\t");
          free(v106);
          putchar(10);
          puts("\tServices:");
          xpc_array_apply(v96, &stru_100025368);

          sub_1000055B4(v94);
          putchar(10);
        }

        v107 = &_dispatch_main_q;
        remote_device_browse_present();

        goto LABEL_141;
      }

      if (!strcmp(v6, "dump-local-ports"))
      {
        *&handler = _NSConcreteStackBlock;
        *(&handler + 1) = 3221225472;
        *&v136[0] = sub_1000059A0;
        *(&v136[0] + 1) = &unk_100025390;
        *&v136[1] = objc_alloc_init(NSMutableDictionary);
        objc_retainBlock(&handler);
        remote_device_browse_present();
        goto LABEL_141;
      }

      if (strcmp(v6, "echo"))
      {
        if (!strcmp(v6, "echo-file"))
        {
          sub_100002A8C(v2, v5);
        }

        if (!strcmp(v6, "netcat"))
        {
          sub_100002C08(v2, v5);
          return 0;
        }

        v7 = strcmp(v6, "relay");
        if (a1 >= 4 && !v7)
        {
          sub_100002DD4(v2, v5);
          return 0;
        }

        if (!strcmp(v6, "relay-child"))
        {
          sub_1000032A4(v2, v5);
          return 0;
        }

        v61 = strcmp(v6, "convert-bridge-version");
        if (a1 == 4 && !v61)
        {
          sub_100003510(*(a2 + 16), *(a2 + 24));
          return 0;
        }

        v62 = strcmp(v6, "heartbeat");
        if (a1 == 3 && !v62)
        {
          sub_1000035C4(*(a2 + 16));
        }

        if (!strcmp(v6, "trampoline"))
        {
          sub_1000035FC(v2, v5);
        }

        v63 = strcmp(v6, "reset");
        if (a1 == 3 && !v63)
        {
          sub_100003A50(*(a2 + 16));
          return 0;
        }

        v64 = strcmp(v6, "alias");
        if (a1 == 4 && !v64)
        {
          sub_100003AA4(*(a2 + 16), *(a2 + 24));
          return 0;
        }

        v65 = strcmp(v6, "synctime");
        v66 = a1 - 3;
        if (a1 == 3 && !v65)
        {
          sub_100003B08(*(a2 + 16));
          return 0;
        }

        if (os_variant_has_internal_content())
        {
          v71 = *v5;
          v72 = strcmp(*v5, "loopback");
          if (v66 <= 1 && !v72)
          {
            sub_100003B5C(*(a2 + 16));
            return 0;
          }

          v79 = strcmp(v71, "bonjour");
          if (v66 <= 1 && !v79)
          {
            if (a1 == 4)
            {
              v80 = *(a2 + 24);
            }

            else
            {
              v80 = 0;
            }

            sub_100003C1C(*(a2 + 16), v80);
            return 0;
          }

          v81 = strcmp(v71, "network");
          if (v66 <= 1 && !v81)
          {
            if (a1 == 4)
            {
              v82 = *(a2 + 24);
            }

            else
            {
              v82 = 0;
            }

            sub_100003CB4(*(a2 + 16), v82);
            return 0;
          }

          v83 = strcmp(v71, "compute");
          if (v66 <= 1 && !v83)
          {
            if (a1 == 4)
            {
              v84 = *(a2 + 24);
            }

            else
            {
              v84 = 0;
            }

            sub_100003DB0(*(a2 + 16), v84);
            return 0;
          }

          v85 = strcmp(v71, "identity");
          if (a1 == 3 && !v85)
          {
            sub_100003F00(*(a2 + 16));
            return 0;
          }

          v87 = strcmp(v71, "setup-ssh");
          if (a1 <= 3 && !v87)
          {
            sub_100003FC4(v2, v5);
            return 0;
          }

          if (!strcmp(v71, "ssh-tunnel"))
          {
            sub_10000DCA4(v2, v5);
            return 0;
          }

          if (!strcmp(v71, "ssh-tunnel-callback"))
          {
            sub_10000F02C(v2, v5);
            return 0;
          }

          if (!strcmp(v71, "ssh-tunnel-privileged"))
          {
            sub_10000FB70(v2, v5);
            return 0;
          }
        }

LABEL_163:
        sub_10000275C();
      }

      v40 = 0;
      v41 = 0;
      while (1)
      {
        while (1)
        {
          v42 = getopt(v2, v5, "v:d:");
          if (v42 != 118)
          {
            break;
          }

          v41 = strtoll(optarg, 0, 10);
        }

        if (v42 == -1)
        {
          break;
        }

        if (v42 != 100)
        {
          goto LABEL_163;
        }

        v43 = sub_100004BAC(0, optarg, "com.apple.internal.xpc.remote.echo");

        v40 = v43;
      }

      v109 = dispatch_queue_create("echo", 0);
      if (!v40)
      {
        v44 = remote_device_copy_unique_of_type();
        if (!v44)
        {
          fwrite("No coproc device found, falling back to external.\n", 0x32uLL, 1uLL, __stderrp);
          v44 = remote_device_copy_unique_of_type();
          if (!v44)
          {
            fwrite("No external device found, falling back to loopback.\n", 0x34uLL, 1uLL, __stderrp);
            v44 = remote_device_copy_unique_of_type();
            if (!v44)
            {
              v24 = __stderrp;
              v25 = "No loopback device found.\n";
              v26 = 26;
              goto LABEL_45;
            }
          }
        }

        v40 = v44;
      }

      if (remote_device_get_state() == 2)
      {
        v111 = sub_1000052D8(v40, "com.apple.internal.xpc.remote.echo");
        if (v111)
        {
          v45 = xpc_remote_connection_create_with_remote_service();
          xpc_remote_connection_set_event_handler();
          if (v41)
          {
            xpc_remote_connection_set_local_service_version();
          }

          xpc_remote_connection_activate();
          remote_service_version = xpc_remote_connection_get_remote_service_version();
          if (remote_service_version)
          {
            fprintf(__stderrp, "Remote Service Version: %lld\n", remote_service_version);
          }

          *&handler = 0;
          v47 = fgetln(__stdinp, &handler);
          if (v47 && handler >= 2)
          {
            do
            {
              v48 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:v47 freeWhenDone:?];
              v49 = [NSJSONSerialization JSONObjectWithData:v48 options:4 error:0];
              if (v49)
              {
                v50 = _CFXPCCreateXPCObjectFromCFObject();
                if (!v50)
                {
                  fwrite("Unable to render as XPC message\n", 0x20uLL, 1uLL, __stderrp);
                }

                xpc_remote_connection_send_message();
              }

              else
              {
                fwrite("Rejecting invalid input message\n", 0x20uLL, 1uLL, __stderrp);
              }

              v47 = fgetln(__stdinp, &handler);
              if (v47)
              {
                v51 = handler > 1;
              }

              else
              {
                v51 = 0;
              }
            }

            while (v51);
          }

          xpc_remote_connection_send_barrier();
          xpc_remote_connection_cancel();
          fwrite("Connection cancelled, waiting for invalid error...\n", 0x33uLL, 1uLL, __stderrp);

          return 0;
        }

        fprintf(__stderrp, "Service %s not found.\n", "com.apple.internal.xpc.remote.echo");
LABEL_46:
        exit(1);
      }

      v24 = __stderrp;
      v25 = "Device not in state CONNECTED\n";
      v26 = 30;
LABEL_45:
      fwrite(v25, v26, 1uLL, v24);
      goto LABEL_46;
    }

    v22 = 0;
    while (1)
    {
      v23 = getopt(v2, v5, "t:");
      if (v23 != 116)
      {
        break;
      }

      v22 = remote_device_type_parse();
      if (!v22)
      {
        goto LABEL_44;
      }
    }

    if (v23 != -1)
    {
      goto LABEL_163;
    }

    v27 = &v5[optind];
    if (v2 - optind == 2)
    {
      v28 = 0;
      v29 = 1;
    }

    else
    {
      if (v2 - optind != 3)
      {
        goto LABEL_163;
      }

      v28 = v27[1];
      v29 = 2;
    }

    v52 = v27[v29];
    v53 = sub_100004BAC(v22, *v27, v28);
    v54 = v53;
    if (v28)
    {
      v55 = sub_1000052D8(v53, v28);
      if (!v55)
      {
        errx(65, "Unable to find service %s", v28);
      }

      v56 = remote_service_copy_property();

      if (v56)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v56 = remote_device_copy_property();
      if (v56)
      {
LABEL_94:
        v57 = xpc_copy_clean_description();
        puts(v57);
        free(v57);

        return 0;
      }
    }

    name = remote_device_get_name();
    v59 = "/";
    v60 = "";
    if (v28)
    {
      v60 = v28;
    }

    else
    {
      v59 = "";
    }

    errx(66, "No such property %s on %s%s%s", v52, name, v59, v60);
  }

  v18 = 0;
  while (1)
  {
    v19 = getopt(v2, v5, "t:");
    if (v19 != 116)
    {
      break;
    }

    v18 = remote_device_type_parse();
    if (!v18)
    {
LABEL_44:
      v24 = __stderrp;
      v25 = "Invalid device type\n";
      v26 = 20;
      goto LABEL_45;
    }
  }

  if (v19 != -1)
  {
    goto LABEL_163;
  }

  v20 = &v5[optind];
  if (v2 - optind == 1)
  {
    v21 = 0;
  }

  else
  {
    if (v2 - optind != 2)
    {
      goto LABEL_163;
    }

    v21 = v20[1];
  }

  v36 = sub_100004BAC(v18, *v20, v21);
  v37 = v36;
  if (v21)
  {
    v38 = sub_1000052D8(v36, v21);
    v39 = v38;
    if (!v38)
    {
      errx(65, "Unable to find service %s", v21);
    }

    sub_10000533C(v38, 0);
  }

  else
  {
    sub_100004E00(v36, 0);
  }

  return 0;
}

void sub_1000026DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (v31)
  {
    CFRelease(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000275C()
{
  fwrite("usage: remotectl list\n", 0x16uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl show [-t type] (name|uuid|trait)\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl get-property [-t type] (name|uuid|trait) [service] property\n", 0x4DuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl dumpstate\n", 0x1BuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl dump-local-ports\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl browse [-d (type|name|uuid)] [-t timeout]\n", 0x3BuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl echo [-v service_version] [-d (type|name|uuid|trait)]\n", 0x47uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl echo-file (type|name|uuid|trait) path\n", 0x37uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl eos-echo\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl netcat (type|name|uuid|trait) service\n", 0x37uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl relay [-b address] [-p port] [-s] (type|name|uuid|trait) service\n", 0x52uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl convert-bridge-version plist-in-path bin-out-path\n", 0x43uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl heartbeat (type|name|uuid|trait)\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl trampoline [-2 fd] service_name command args ... [ -- [-2 fd] service_name command args ... ]\n", 0x6FuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl reset (type|name|uuid|trait)\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("usage: remotectl alias (type|name|uuid|trait) alias\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl synctime (type|name|uuid|trait)\n", 0x31uLL, 1uLL, __stderrp);
  fwrite("usage: remotectl identity (show|create|delete)\n", 0x2FuLL, 1uLL, __stderrp);
  if (os_variant_has_internal_content())
  {
    fwrite("\nAppleInternal commands:\n\n", 0x1AuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl loopback (attach [--tls]|connect|detach|suspend|resume)\n", 0x49uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl bonjour ((enable|enable-loopback interface_name)|(disable))\n", 0x4DuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl network ((enable interface_name)|disable|(connect address)|(disconnect name|uuid|trait))\n", 0x6AuLL, 1uLL, __stderrp);
    fwrite("usage: remotectl compute ((listen interface_name)|(browse interface_name)|(disconnect name|uuid|trait)|(tls [required|optional])\n", 0x81uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl setup-ssh [-f]\n", 0x20uLL, 1uLL, __stderrp);
    fwrite("usage: remotectl ssh-tunnel [ssh_host]\n", 0x27uLL, 1uLL, __stderrp);
  }

  v0 = 1;
  fwrite("\nDevice Types:\n", 0xFuLL, 1uLL, __stderrp);
  while (1)
  {
    HIDWORD(v1) = 1431655765 - 1431655765 * v0;
    LODWORD(v1) = HIDWORD(v1);
    if ((v1 >> 1) <= 0x2AAAAAAA)
    {
      fputc(10, __stderrp);
    }

    v2 = __stderrp;
    description = remote_device_type_get_description();
    fputs(description, v2);
    if (v0 == 18)
    {
      fputc(10, __stderrp);
      exit(64);
    }

    fwrite(", ", 2uLL, 1uLL, __stderrp);
    ++v0;
  }
}

void sub_100002A8C(int a1, uint64_t a2)
{
  if (a1 == 3)
  {
    v2 = *(a2 + 8);
    fprintf(__stderrp, "Sending %s to %s.\n", *(a2 + 16), v2);
    dispatch_queue_create("echo", 0);
    v3 = sub_100004BAC(0, v2, "com.apple.internal.xpc.remote.echo");
    if (remote_device_get_state() == 2)
    {
      sub_1000052D8(v3, "com.apple.internal.xpc.remote.echo");
      if (!objc_claimAutoreleasedReturnValue())
      {
        errx(69, "Service %s not found.");
      }

      xpc_remote_connection_create_with_remote_service();
      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      v4 = xpc_dictionary_create(0, 0, 0);
      v5 = xpc_file_transfer_create_with_path();
      if (!v5)
      {
        err(66, "Unable to create file transfer object");
      }

      xpc_dictionary_set_value(v4, "file", v5);
      xpc_dictionary_set_BOOL(v4, "DisableFileReflection", 1);
      v6 = xpc_copy_clean_description();
      fprintf(__stderrp, "Sending Message: %s\n", v6);
      free(v6);
      xpc_remote_connection_send_message();
      dispatch_main();
    }

    errx(69, "Device not in state CONNECTED");
  }

  sub_10000275C();
}

void sub_100002C08(int a1, char **a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = getopt(a1, a2, "F");
    v4 = 1;
  }

  while (v6 == 70);
  if (v6 != -1 || a1 - optind != 2)
  {
    sub_10000275C();
  }

  v7 = &a2[optind];
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_100004BAC(0, *v7, v9);
  v11 = sub_1000052D8(v10, v9);
  if (!v11)
  {
    errx(65, "Unable to find service %s/%s", v8, v9);
  }

  v12 = v11;
  v13 = sub_100005F78();
  if (v13 == -1)
  {
    errx(69, "Unable to connect to %s/%s", v8, v9);
  }

  v14 = v13;
  if (v5)
  {
    if (remote_service_should_encrypt_socket_data())
    {
      sub_10001AA38();
    }

    v15 = malloc_type_malloc(0x10uLL, 0x10000403E1C8BA9uLL);
    v17[0] = "";
    v17[1] = 1;
    *(&v16.msg_iovlen + 1) = -1431655766;
    v16.msg_name = 0;
    *(&v16.msg_namelen + 1) = -1431655766;
    v16.msg_namelen = 0;
    v16.msg_iov = v17;
    v16.msg_iovlen = 1;
    v16.msg_control = v15;
    *&v16.msg_controllen = 16;
    *v15 = 0xFFFF00000010;
    v15[2] = 1;
    v15[3] = v14;
    if (sendmsg(1, &v16, 0) < 0)
    {
      sub_10001AA1C();
    }
  }

  else
  {
    sub_100005FD4(0, 1, v13);
  }
}

void sub_100002DD4(int a1, char **a2)
{
  LODWORD(v4) = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    while (1)
    {
      v7 = getopt(a1, a2, "b:p:s");
      if (v7 != 98)
      {
        break;
      }

      v6 = optarg;
    }

    if (v7 == -1)
    {
      break;
    }

    if (v7 == 112)
    {
      v8 = optarg;
      *__error() = 0;
      v4 = strtoul(v8, 0, 0);
      if (*__error())
      {
        sub_10001AA54(v8);
      }

      if (v4 >= 0x10000)
      {
        sub_10001AA88();
      }
    }

    else
    {
      if (v7 != 115)
      {
        goto LABEL_30;
      }

      v5 = 1;
    }
  }

  if (a1 - optind != 2)
  {
LABEL_30:
    sub_10000275C();
  }

  v9 = &a2[optind];
  v10 = *v9;
  v11 = v9[1];
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = "::";
  }

  v32 = 0;
  v33 = 0;
  v13 = inet_pton(30, v12, &v32);
  if (v13 != 1)
  {
    if (v13)
    {
      sub_10001AAA4();
    }

    v31 = 0;
    if (asprintf(&v31, "::ffff:%s", v12) < 0)
    {
      sub_10001AB18(&v41, &v34);
    }

    v14 = inet_pton(30, v31, &v32);
    if (v14 != 1)
    {
      if (v14 != -1)
      {
        if (!v14)
        {
          sub_10001AAD0();
        }

        sub_10001AC30(&v41, &v34);
      }

      sub_10001AAA4();
    }
  }

  v15 = v32;
  v16 = v33;
  v17 = sub_100004BAC(0, v10, v11);
  v18 = sub_1000052D8(v17, v11);
  if (!v18)
  {
    errx(65, "Unable to find service %s/%s", v10, v11);
  }

  v19 = v18;
  v20 = socket(30, 1, 0);
  if (v20 == -1)
  {
    sub_10001AC14();
  }

  v21 = v20;
  LODWORD(v32) = 0;
  if (setsockopt(v20, 41, 27, &v32, 4u))
  {
    sub_10001AAEC();
  }

  *&v34.sa_len = 7680;
  *v34.sa_data = bswap32(v4) >> 16;
  *&v34.sa_data[2] = 0;
  *&v34.sa_data[6] = v15;
  v35 = v16;
  LODWORD(v36) = 0;
  if (bind(v21, &v34, 0x1Cu) == -1)
  {
    sub_10001ABE8();
  }

  if (listen(v21, 128) == -1)
  {
    sub_10001ABCC();
  }

  LODWORD(v41) = 28;
  if (getsockname(v21, &v34, &v41) == -1)
  {
    sub_10001ABB0();
  }

  v22 = *v34.sa_data;
  v23 = sub_100005F78();
  if (v23 == -1)
  {
LABEL_49:
    errx(69, "Unable to connect to %s/%s", v10, v11);
  }

  v24 = v23;
  v25 = __rev16(v22);
  if (v5)
  {
    printf("Listening on %s port %d...\n", v12, v25);
    close(v24);
    while (1)
    {
      while (1)
      {
        v26 = accept(v21, 0, 0);
        if (v26 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          sub_10001AB94();
        }
      }

      v27 = v26;
      v28 = sub_100005F78();
      if (v28 == -1)
      {
        break;
      }

      v29 = v28;
      v41 = __PAIR64__(v28, v27);
      v30 = 0;
      v31 = 0;
      if (asprintf(&v31, "%d", v27) < 0)
      {
        sub_10001AB18(&v32, &v34);
      }

      if (asprintf(&v30, "%d", v29) < 0)
      {
        sub_10001AB18(&v32, &v34);
      }

      *&v34.sa_len = "remotectl";
      *&v34.sa_data[6] = "relay-child";
      v35 = "-i";
      v36 = v31;
      v37 = "-o";
      v38 = v30;
      v39 = "-s";
      v40 = 0;
      sub_10000618C(&v34, &v41);
      close(v27);
      close(v29);
    }

    goto LABEL_49;
  }

  printf("%d\n", v25);
  fflush(__stdoutp);
  v41 = __PAIR64__(v24, v21);
  v30 = 0;
  v31 = 0;
  if (asprintf(&v31, "%d", v21) < 0)
  {
    sub_10001AB18(&v32, &v34);
  }

  if (asprintf(&v30, "%d", v24) < 0)
  {
    sub_10001AB18(&v32, &v34);
  }

  *&v34.sa_len = "remotectl";
  *&v34.sa_data[6] = "relay-child";
  v35 = "-l";
  v36 = v31;
  v37 = "-o";
  v38 = v30;
  v39 = 0;
  sub_10000618C(&v34, &v41);
  close(v21);
  close(v24);
}

void sub_1000032A4(int a1, char *const *a2)
{
  v4 = os_log_create("com.apple.RemoteServiceDiscovery", "relay-child");
  v5 = 0;
  v6 = -1;
  v7 = -1;
  v8 = -1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = getopt(a1, a2, "l:i:o:s");
        if (v9 != 108)
        {
          break;
        }

        v8 = strtol(optarg, 0, 0);
      }

      if (v9 <= 110)
      {
        break;
      }

      if (v9 == 111)
      {
        v6 = strtol(optarg, 0, 0);
      }

      else
      {
        if (v9 != 115)
        {
LABEL_22:
          sub_10000275C();
        }

        v5 = 1;
      }
    }

    if (v9 == -1)
    {
      break;
    }

    if (v9 != 105)
    {
      goto LABEL_22;
    }

    v7 = strtol(optarg, 0, 0);
  }

  if (v5)
  {
    v10 = getppid();
    if (v10 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "parent exited, exiting", buf, 2u);
      }

      exit(1);
    }

    v11 = v10;
    v12 = dispatch_queue_create("relay-child", 0);
    v13 = dispatch_source_create(&_dispatch_source_type_proc, v11, 0x80000000uLL, v12);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000063A8;
    handler[3] = &unk_1000254C0;
    v16 = v4;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v8 != -1)
  {
    while (1)
    {
      v14 = accept(v8, 0, 0);
      if (v14 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        sub_10001AB94();
      }
    }

    v7 = v14;
    close(v8);
  }

  sub_100005FD4(v7, v7, v6);
}

uint64_t sub_100003510(uint64_t a1, const char *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  if ((bridge_version_read_plist() & 1) == 0)
  {
    sub_10001ACBC();
  }

  memset(v6, 0, sizeof(v6));
  if ((bridge_version_serialize() & 1) == 0)
  {
    sub_10001ACD8();
  }

  v3 = fopen(a2, "wx");
  if (!v3)
  {
    sub_10001AD10();
  }

  v4 = v3;
  if (fwrite(v6, 0x20uLL, 1uLL, v3) <= 0x1F)
  {
    sub_10001ACF4();
  }

  result = fclose(v4);
  if (result)
  {
    sub_10001ACF4();
  }

  return result;
}

void sub_1000035C4(char *__s1)
{
  sub_100004BAC(0, __s1, 0);
  objc_claimAutoreleasedReturnValue();
  remote_device_heartbeat();
  dispatch_main();
}

void sub_1000035FC(int a1, char *const *a2)
{
  v22 = os_log_create("com.apple.RemoteServiceDiscovery", "rsdtrampoline");
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1000046C4;
  v32[4] = sub_1000046D4;
  v32[5] = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  if (optind != 1 || a1 < 1)
  {
LABEL_6:
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x14uLL, 0, &_dispatch_main_q);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006748;
    handler[3] = &unk_100025550;
    handler[4] = v22;
    handler[5] = v31;
    handler[6] = v32;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(v5);
    dispatch_main();
  }

  while (1)
  {
    for (i = -1; ; i = atoi(optarg))
    {
      v7 = getopt(a1, a2, "2:");
      if (v7 != 50)
      {
        break;
      }
    }

    if (v7 != -1)
    {
      goto LABEL_35;
    }

    v8 = (a1 - optind);
    if (v8 < 1)
    {
      goto LABEL_36;
    }

    v9 = 0;
    v10 = &a2[optind];
    while (1)
    {
      v11 = v10[v9];
      if (*v11 == 45 && v11[1] == 45 && !v11[2])
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = v8;
        goto LABEL_19;
      }
    }

    optind = 1;
LABEL_19:
    if (v9 <= 1)
    {
LABEL_36:
      sub_10000275C();
    }

    v12 = v9;
    v13 = *v10;
    v14 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
    v15 = v14;
    if (!v14)
    {
      break;
    }

    v16 = 0;
    a2 = &v10[v9];
    a1 = v8 - v9;
    do
    {
      v14[v16 / 8] = v10[v16 / 8 + 1];
      v16 += 8;
    }

    while (8 * v12 - 8 != v16);
    v17 = &_dispatch_main_q;
    handler[7] = _NSConcreteStackBlock;
    handler[8] = 3221225472;
    handler[9] = sub_100006454;
    handler[10] = &unk_100025528;
    v29 = i;
    v27 = v15;
    v18 = v22;
    v24 = v18;
    v25 = v31;
    v28 = v13;
    v26 = v32;
    remote_service_listen();

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v15;
      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 2082;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Trampoline started for %{public}s -> %{public}s", buf, 0x16u);
    }

    if (optind != 1 || a1 <= 0)
    {
      goto LABEL_6;
    }
  }

  v30 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(buf, 0, sizeof(buf));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v33 = 134217984;
  v34 = 0;
  _os_log_send_and_compose_impl(v21, &v30, buf, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: cmd_argv_copy != ((void*)0) -> %llu", &v33);
  _os_crash_msg();
  __break(1u);
LABEL_35:
  sub_10000275C();
}

void sub_100003A50(char *__s1)
{
  v1 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_reset() & 1) == 0)
  {
    sub_10001AD2C();
  }
}

void sub_100003AA4(char *__s1, uint64_t a2)
{
  v2 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_set_alias() & 1) == 0)
  {
    sub_10001AD4C();
  }
}

void sub_100003B08(char *__s1)
{
  v1 = sub_100004BAC(0, __s1, 0);
  if ((remote_device_timesync() & 1) == 0)
  {
    sub_10001AD6C();
  }
}

uint64_t sub_100003B5C(const char *a1)
{
  if (!strcmp(a1, "attach"))
  {
    result = remote_control_attach_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "connect"))
  {
    result = remote_control_connect_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "detach"))
  {
    result = remote_control_detach_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!strcmp(a1, "suspend"))
  {
    result = remote_control_suspend_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (strcmp(a1, "resume"))
    {
      sub_10000275C();
    }

    result = remote_control_resume_loopback();
    if ((result & 1) == 0)
    {
LABEL_11:
      exit(1);
    }
  }

  return result;
}

uint64_t sub_100003C1C(const char *a1, uint64_t a2)
{
  v4 = strcmp(a1, "enable");
  if (a2 && !v4)
  {
    result = remote_control_enable_bonjour();
    if (result)
    {
      return result;
    }

LABEL_8:
    exit(1);
  }

  v6 = strcmp(a1, "enable-loopback");
  if (!a2 || v6)
  {
    v7 = strcmp(a1, "disable");
    if (a2 || v7)
    {
      sub_10000275C();
    }

    result = remote_control_disable_bonjour();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = remote_control_enable_bonjour_loopback();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100003CB4(const char *a1, char *a2)
{
  v4 = strcmp(a1, "enable");
  if (!a2 || v4)
  {
    v5 = strcmp(a1, "disable");
    if (a2 || v5)
    {
      v6 = strcmp(a1, "connect");
      if (a2 && !v6)
      {
        if ((remote_control_connect_network_peer() & 1) == 0)
        {
          goto LABEL_19;
        }

        return;
      }

      v7 = strcmp(a1, "disconnect");
      if (!a2 || v7)
      {
        sub_10000275C();
      }

      v8 = sub_100004BAC(v7, a2, 0);
      if (remote_device_disconnect())
      {

        return;
      }
    }

    else if (remote_control_disable_network_peer())
    {
      return;
    }

LABEL_19:
    exit(1);
  }

  if ((remote_control_enable_network_peer() & 1) == 0)
  {
    goto LABEL_19;
  }
}

void sub_100003DB0(const char *a1, char *a2)
{
  v4 = strcmp(a1, "browse");
  if (!a2 || v4)
  {
    v5 = strcmp(a1, "listen");
    if (!a2 || v5)
    {
      v6 = strcmp(a1, "disconnect");
      if (!a2 || v6)
      {
        if (strcmp(a1, "tls"))
        {
          goto LABEL_25;
        }

        if (!a2)
        {

          sub_1000068F0();
          return;
        }

        if (strcmp(a2, "required") && strcmp(a2, "optional"))
        {
LABEL_25:
          sub_10000275C();
        }

        if (local_device_compute_platform_require_tls())
        {
          goto LABEL_24;
        }
      }

      else
      {
        v7 = sub_100004BAC(v6, a2, 0);
        if ((remote_device_disconnect() & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else if (!remote_compute_node_listen())
    {
LABEL_24:
      exit(1);
    }
  }

  else if (!remote_compute_controller_browse())
  {
    goto LABEL_24;
  }
}

void sub_100003F00(const char *a1)
{
  if (!strcmp(a1, "show"))
  {
    v2 = local_device_copy_identity();
    sub_1000055B4(v2);
    if (v2)
    {

      CFRelease(v2);
    }
  }

  else if (!strcmp(a1, "delete"))
  {
    if ((local_device_delete_identity() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (strcmp(a1, "create"))
    {
      sub_10000275C();
    }

    if ((local_device_create_identity() & 1) == 0)
    {
LABEL_12:
      exit(1);
    }
  }
}

void sub_100003FA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003FC4(int a1, char *const *a2)
{
  strcpy(__dst, "\nHost *.rsd\n\t# This host entry is generated by remotectl setup-ssh\n\tProxyCommand /usr/local/bin/remotectl netcat -F %h com.apple.internal.ssh\n\tProxyUseFdpass yes\n\tServerAliveInterval 1\n\tServerAliveCountMax 3\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile /dev/null\n\tUser root\n\tControlPersist no\n");
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = getopt(a1, a2, "f");
    v4 = 1;
  }

  while (v6 == 102);
  if (v6 != -1)
  {
    sub_10000275C();
  }

  v7 = NSHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:@".ssh"];
  v9 = [v8 UTF8String];

  v10 = open(v9, 0x100000);
  if ((v10 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v11 = *__error();
  if (v11)
  {
    if (v11 != 2)
    {
      v27 = __error();
      err(*v27, "failed to open directory %s");
    }

    if (mkdir(v9, 0x1C0u) == -1)
    {
      v28 = __error();
      err(*v28, "failed to mkdir %s");
    }

    v10 = open(v9, 0x100000);
    if (v10 == -1)
    {
      v29 = __error();
      err(*v29, "failed to open created directory %s");
    }
  }

  v12 = openat(v10, ".RSDSetupDone", 1);
  if ((v12 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v13 = *__error();
  if (v13)
  {
    if (v13 != 2)
    {
      v14 = __error();
      warnc(*v14, "failed to open cookie file");
    }
  }

  else if ((v5 & 1) == 0)
  {
    puts("RSD ssh has been setup before. Pass -f to force redo the setup");
    exit(0);
  }

  v15 = openat(v10, "config", 521, 420);
  v16 = v15;
  if (v15 == -1)
  {
    v25 = __error();
    err(*v25, "failed to open or create %s/config file", v9);
  }

  if (write(v15, __dst, 0x126uLL) == -1)
  {
    v26 = __error();
    err(*v26, "failed to write RSD ssh config to %s/config file", v9);
  }

  if (v12 == -1)
  {
    v12 = openat(v10, ".RSDSetupDone", 513, 420);
    if (v12 == -1)
    {
      v17 = __error();
      warnc(*v17, "failed to create the cookie file");
      v12 = -1;
    }
  }

  result = close(v16);
  if (result == -1)
  {
    v30 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v20 = *__error();
    if (v19)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v32 = 67109120;
    v33 = v20;
    _os_log_send_and_compose_impl(v21, &v30, &v34, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", &v32, 8);
    _os_crash_msg();
    sub_10001AA18();
  }

  if (v12 != -1)
  {
    result = close(v12);
    if (result == -1)
    {
      v30 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v23 = *__error();
      if (v22)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v32 = 67109120;
      v33 = v23;
      _os_log_send_and_compose_impl(v24, &v30, &v34, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", &v32, 8);
      _os_crash_msg();
      sub_10001AA18();
    }
  }

  if (v10 != -1)
  {
    result = close(v10);
    if (result == -1)
    {
      sub_10001AD8C(&v30, &v34);
    }
  }

  return result;
}

void sub_10000441C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, unsigned int a14, unsigned int a16)
{
  sub_100006950(&a12);
  sub_100006950(&a14);
  sub_100006950(&a16);
  _Unwind_Resume(a1);
}

void sub_10000446C(id a1, OS_remote_device *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  if (v3)
  {
    exit(0);
  }

  v5 = v4;
  memset(uu, 170, sizeof(uu));
  remote_device_copy_uuid();
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  uuid_unparse(uu, out);
  name = remote_device_get_name();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  v25 = 0u;
  if (remote_device_get_state() == 1)
  {
    printf("%s %-16s\n", out, name);
  }

  else if (remote_device_get_state() == 2)
  {
    v8 = remote_device_copy_product_type();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "-";
    }

    v10 = remote_device_copy_property();
    v11 = v10;
    if (v10 && (string_ptr = xpc_string_get_string_ptr(v10)) != 0)
    {
      v13 = strdup(string_ptr);
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "-";
    }

    v15 = remote_device_copy_os_version();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "-";
    }

    v17 = remote_device_copy_os_build();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "-";
    }

    v19 = remote_device_copy_bridge_version_string();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = "-";
    }

    alias = remote_device_get_alias();
    if (alias)
    {
      snprintf(__str, 0x80uLL, "%s(%s)", name, alias);
    }

    else
    {
      __strlcpy_chk();
    }

    v22 = remote_device_copy_internal_build();
    v23 = "AppleInternal";
    if (!v22)
    {
      v23 = "-";
    }

    printf("%s %-16s %-12s %-8s %s (%s/%s) %s\n", out, __str, v9, v14, v16, v18, v20, v23);
    if (v9 != "-")
    {
      free(v9);
    }

    if (v13)
    {
      free(v13);
    }

    if (v18 != "-")
    {
      free(v18);
    }

    if (v16 != "-")
    {
      free(v16);
    }

    if (v20 != "-")
    {
      free(v20);
    }
  }
}

uint64_t sub_1000046C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000046DC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    free(*(a1 + 56));
    free(*(a1 + 64));
    printf("Browse Complete: ");
    v8 = *(*(*(a1 + 32) + 8) + 24) - 1;
    if (v8 < 3)
    {
      puts(off_100025570[v8]);
      if (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (*(a1 + 76))
      {
        exit(-1);
      }

      exit(0);
    }

    sub_10001AE58();
  }

  v6 = v5;
  if (remote_device_get_state() == 1)
  {
    sub_1000048A4("ATTACH", v6, *(a1 + 77));
  }

  v9 = v6;
  v7 = v6;
  remote_device_set_connected_callback();
  remote_device_set_disconnected_callback();
}

uint64_t sub_1000048A4(const char *a1, void *a2, int a3)
{
  v5 = a2;
  name = remote_device_get_name();
  memset(uu, 170, sizeof(uu));
  remote_device_copy_uuid();

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&out[16] = v7;
  *out = v7;
  uuid_unparse(uu, out);
  if (a3)
  {
    *__str = 0u;
    v18 = 0u;
    v16 = time(0);
    v8 = localtime(&v16);
    v10 = *&v8->tm_mon;
    v9 = *&v8->tm_isdst;
    v11 = *&v8->tm_sec;
    v15.tm_zone = v8->tm_zone;
    *&v15.tm_mon = v10;
    *&v15.tm_isdst = v9;
    *&v15.tm_sec = v11;
    v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v14.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v14, 0);
    memset(v21, 170, 20);
    strftime(v21, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v15);
    memset(v13, 170, 6);
    strftime(v13, 6uLL, "%z", &v15);
    snprintf(__str, 0x20uLL, "%s.%06d%s", v21, v14.tv_usec, v13);
    printf("%s ", __str);
  }

  return printf("%-16s %s (%s)\n", a1, name, out);
}

void sub_100004A3C(uint64_t a1, void *a2)
{
  sub_1000048A4("CONNECT", a2, *(a1 + 84));
  if (*(a1 + 85) == 1)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 32);
    if (remote_device_get_type() == v3)
    {
LABEL_3:

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *(*(*(a1 + 48) + 8) + 24) = 1;
      remote_device_browser_cancel();
      return;
    }

    if (v4)
    {
      memset(uu2, 170, sizeof(uu2));
      remote_device_copy_uuid();
      if (!uuid_compare(v4, uu2))
      {
        goto LABEL_3;
      }
    }

    else if (v5)
    {
      name = remote_device_get_name();
      if (!strcmp(v5, name))
      {
        goto LABEL_3;
      }
    }
  }
}

id sub_100004BAC(uint64_t a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v5 = a1;
  v6 = strstr(__s1, ".rsd");
  if (v6)
  {
    *v6 = 0;
  }

  if (!v5)
  {
    v5 = remote_device_type_parse();
    if (v5)
    {
      v4 = 0;
    }
  }

  memset(uu, 0, sizeof(uu));
  empty = xpc_dictionary_create_empty();
  if (v5)
  {
    description = remote_device_type_get_description();
    xpc_dictionary_set_string(empty, "DeviceType", description);
  }

  if (v4)
  {
    if (uuid_parse(v4, uu))
    {
      v9 = "DeviceName";
    }

    else
    {
      v9 = "DeviceUUID";
    }

    xpc_dictionary_set_string(empty, v9, v4);
  }

  if (a3)
  {
    xpc_dictionary_set_string(empty, "AvailableService", a3);
  }

  v10 = remote_device_copy_device_matching();
  if (!v10)
  {
    v13 = objc_alloc_init(NSMutableArray);
    if (v5)
    {
      v17 = [NSString stringWithFormat:@"type '%s'", remote_device_type_get_description(), *uu, *&uu[8]];
      [v13 addObject:v17];

      if (!v4)
      {
LABEL_21:
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (!v4)
    {
      goto LABEL_21;
    }

    v18 = [NSString stringWithFormat:@"name '%s'", v4];
    [v13 addObject:v18];

    if (!a3)
    {
LABEL_23:
      v15 = [v13 componentsJoinedByString:@" and "];
      v16 = [NSString stringWithFormat:@"Unable to find device with %@", v15];

      errx(65, "%s\n", [v16 UTF8String]);
    }

LABEL_22:
    v14 = [NSString stringWithFormat:@"service '%s'", a3];
    [v13 addObject:v14];

    goto LABEL_23;
  }

  v11 = v10;

  return v11;
}

void sub_100004E00(void *a1, char a2)
{
  v3 = a1;
  remote_device_get_type();
  description = remote_device_type_get_description();
  name = remote_device_get_name();
  printf("Found %s (%s)\n", name, description);
  alias = remote_device_get_alias();
  if (alias)
  {
    printf("\tAlias Name: %s\n", alias);
  }

  state = remote_device_get_state();
  v8 = remote_device_state_get_description();
  v9 = v8;
  if (state == 2)
  {
    connectable = remote_device_get_connectable();
    v11 = "not-connectable";
    if (connectable)
    {
      v11 = "connectable";
    }

    printf("\tState: %s (%s)\n", v9, v11);
    memset(uu, 170, sizeof(uu));
    remote_device_copy_uuid();
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v12;
    *&out[16] = v12;
    uuid_unparse(uu, out);
    printf("\tUUID: %s\n", out);
    v13 = remote_device_copy_product_type();
    if (v13)
    {
      v14 = v13;
      printf("\tProduct Type: %s\n", v13);
      free(v14);
    }

    v15 = remote_device_copy_os_build();
    v16 = remote_device_copy_os_version();
    v17 = v16;
    if (v15 && v16)
    {
      v18 = remote_device_copy_internal_build();
      v19 = "";
      if (v18)
      {
        v19 = " AppleInternal";
      }

      printf("\tOS Build: %s (%s)%s\n", v17, v15, v19);
    }

    free(v15);
    free(v17);
    messaging_protocol_version = remote_device_get_messaging_protocol_version();
    printf("\tMessaging Protocol Version: %llu\n", messaging_protocol_version);
    v21 = remote_device_xpc_remote_connection_tls_enabled();
    v22 = "disabled";
    if (v21)
    {
      v22 = "enabled";
    }

    printf("\tEncrypted RemoteXPC: %s\n", v22);
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v23;
    v41 = v23;
    v39 = v23;
    if (remote_device_get_heartbeat_stats())
    {
      v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      puts("\tHeartbeat:");
      if (*(&v39 + 1))
      {
        printf("\t\tLast successful heartbeat sent %.3fs ago, received %.3fs ago (took %.3fs)\n", (v24 - v39) / 1000000000.0, (v24 - *(&v39 + 1)) / 1000000000.0, (*(&v39 + 1) - v39) / 1000000000.0);
      }

      if (v40)
      {
        printf("\t\tOutstanding heartbeat sent %.3fs ago\n", (v24 - v40) / 1000000000.0);
      }

      if (*(&v40 + 1))
      {
        printf("\t\tLast incoming heartbeat received %.3fs ago\n", (v24 - *(&v40 + 1)) / 1000000000.0);
      }

      printf("\t\t%llu heartbeats sent, %llu received\n", v41, *(&v41 + 1));
    }

    v25 = remote_device_copy_properties();
    v26 = xpc_copy_clean_description();

    printf("\tProperties: ");
    sub_1000053FC(v26, "\t");
    free(v26);
    putchar(10);
    puts("\tServices:");
    v27 = remote_device_copy_service_names();
    if (!v27 || (v28 = v27, xpc_get_type(v27) != &_xpc_type_array))
    {
      sub_10001AEE0(out, &v39);
    }

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100005468;
    applier[3] = &unk_1000252C8;
    v38 = a2;
    v37 = v3;
    xpc_array_apply(v28, applier);
    puts("\tLocal Services:");
    v29 = remote_device_copy_local_services();
    if (!v29 || (v30 = v29, xpc_get_type(v29) != &_xpc_type_dictionary))
    {
      sub_10001AE74(out, &v39);
    }

    xpc_dictionary_apply(v30, &stru_100025308);
  }

  else
  {
    printf("\tState: %s\n", v8);
    latest_connect_result = remote_device_get_latest_connect_result();
    if (latest_connect_result < 0)
    {
      puts("\t No connect() results");
    }

    else
    {
      v32 = latest_connect_result;
      if (latest_connect_result)
      {
        v33 = strerror(latest_connect_result);
      }

      else
      {
        v33 = "No error";
      }

      printf("\tconnect() result: %d (%s)\n", v32, v33);
    }

    v34 = remote_device_copy_properties();
    v35 = xpc_copy_clean_description();

    printf("\tProperties: ");
    sub_1000053FC(v35, "\t");
    free(v35);
    putchar(10);
  }

  putchar(10);
}

id sub_1000052D8(void *a1, uint64_t a2)
{
  v2 = a1;
  if (remote_device_get_state() != 2)
  {
    sub_10001AF4C(v2);
  }

  v3 = remote_device_copy_service();

  return v3;
}

void sub_10000533C(void *a1, const char *a2)
{
  v3 = a1;
  if (!a2)
  {
    a2 = "";
  }

  v7 = v3;
  version = remote_service_get_version();
  if (version)
  {
    printf("%sVersion: %lld\n", a2, version);
  }

  v5 = remote_service_copy_properties();
  if (xpc_dictionary_get_count(v5))
  {
    printf("%sProperties: ", a2);
    v6 = xpc_copy_clean_description();
    sub_1000053FC(v6, a2);
    free(v6);
    putchar(10);
  }
}

unsigned __int8 *sub_1000053FC(unsigned __int8 *result, const char *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result + 1;
    do
    {
      v5 = v2;
      result = putc(v2, __stdoutp);
      if (v5 == 10)
      {
        result = fputs(a2, __stdoutp);
      }

      v6 = *v4++;
      v2 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_100005468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  printf("\t\t%s\n", string_ptr);
  if (*(a1 + 40) == 1)
  {
    xpc_string_get_string_ptr(v4);
    v6 = remote_device_copy_service();
    v7 = v6;
    if (v6)
    {
      sub_10000533C(v6, "\t\t\t");
    }
  }

  return 1;
}

void sub_100005524(id a1, OS_remote_device *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  if (v3)
  {
    exit(0);
  }

  v5 = v4;
  sub_100004E00(v4, 1);
}

BOOL sub_10000557C(id a1, unint64_t a2, OS_xpc_object *a3)
{
  string_ptr = xpc_string_get_string_ptr(a3);
  printf("\t\t%s\n", string_ptr);
  return 1;
}

void sub_1000055B4(__SecIdentity *a1)
{
  certificateRef = 0;
  privateKeyRef = 0;
  puts("\tIdentity:");
  if (a1)
  {
    if (SecIdentityCopyPrivateKey(a1, &privateKeyRef))
    {
      v13 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v16 = 134217984;
      v17 = 0;
      _os_log_send_and_compose_impl(v9, &v13, &v18, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: errSecSuccess == SecIdentityCopyPrivateKey(identity, &idKey) -> %llu", &v16);
      _os_crash_msg();
      sub_10001AA18();
    }

    v2 = SecKeyCopyPublicKey(privateKeyRef);
    v3 = v2;
    if (!v2)
    {
      v13 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 134217984;
      v17 = 0;
      _os_log_send_and_compose_impl(v10, &v13, &v18, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: idPubKey = SecKeyCopyPublicKey(idKey) -> %llu", &v16);
      _os_crash_msg();
      sub_10001AA18();
    }

    v4 = SecKeyCopyExternalRepresentation(v2, 0);
    if (!v4)
    {
      v13 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v16 = 134217984;
      v17 = 0;
      _os_log_send_and_compose_impl(v11, &v13, &v18, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: idPubKeyData = (__bridge_transfer NSData *)SecKeyCopyExternalRepresentation(idPubKey, ((void*)0)) -> %llu", &v16);
      _os_crash_msg();
      sub_10001AA18();
    }

    v5 = v4;

    if (SecIdentityCopyCertificate(a1, &certificateRef))
    {
      v13 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v16 = 134217984;
      v17 = 0;
      _os_log_send_and_compose_impl(v12, &v13, &v18, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: errSecSuccess == SecIdentityCopyCertificate(identity, &idCert) -> %llu", &v16);
      _os_crash_msg();
      sub_10001AA18();
    }

    v6 = [(__CFData *)v5 sha256];
    v7 = [v6 base64EncodedStringWithOptions:0];
    v8 = v7;
    printf("\t\tPublic key SHA256: %s\n", [v7 UTF8String]);

    if (certificateRef)
    {
      CFRelease(certificateRef);
    }

    CFRelease(v3);
  }

  else
  {
    puts("\t\tnone");
  }

  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }
}

void sub_100005928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef a13, CFTypeRef cf)
{
  CFRelease(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_1000059A0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v23 = *(a1 + 32);
    v29 = 0;
    v24 = [NSJSONSerialization dataWithJSONObject:v23 options:1 error:&v29];
    v25 = v29;
    if (!v24)
    {
      v26 = __stderrp;
      v27 = [v25 localizedDescription];
      fprintf(v26, "%s\n", [v27 UTF8String]);

      exit(1);
    }

    v28 = [[NSString alloc] initWithData:v24 encoding:4];
    puts([v28 UTF8String]);

    exit(0);
  }

  v6 = v5;
  v7 = [NSString stringWithUTF8String:remote_device_get_name()];
  v8 = objc_alloc_init(NSMutableDictionary);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  v9 = v6;
  v10 = objc_alloc_init(NSMutableDictionary);
  if (remote_device_get_state() == 2)
  {
    v11 = remote_device_copy_local_services();
    if (!v11 || (v12 = v11, xpc_get_type(v11) != &_xpc_type_dictionary))
    {
      sub_10001AE74(&v30, &applier);
    }

    *&applier = _NSConcreteStackBlock;
    *(&applier + 1) = 3221225472;
    v32 = sub_100005CFC;
    v33 = &unk_1000253B8;
    v34 = v10;
    xpc_dictionary_apply(v12, &applier);
  }

  v13 = [v10 copy];

  v14 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v14 setObject:v13 forKeyedSubscript:@"local-services"];

  v15 = remote_device_copy_property();
  v16 = v15;
  if (v15 && xpc_get_type(v15) == &_xpc_type_string)
  {
    v17 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v16)];
    v18 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v18 setObject:v17 forKeyedSubscript:@"interface-name"];
  }

  v19 = remote_device_copy_property();
  v20 = v19;
  if (v19 && xpc_get_type(v19) == &_xpc_type_string)
  {
    v21 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v20)];
    v22 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v22 setObject:v21 forKeyedSubscript:@"udid"];
  }
}

uint64_t sub_100005CFC(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v10 = @"port";
  v5 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, "port")];
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = *(a1 + 32);
  v8 = [NSString stringWithUTF8String:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  return 1;
}

void sub_100005DF8(id a1, OS_xpc_object *a2)
{
  object = a2;
  v2 = xpc_copy_clean_description();
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    fprintf(__stderrp, "Error: %s\n", v2);
    exit(1);
  }

  puts(v2);
  free(v2);
}

void sub_100005EA0(id a1, OS_xpc_object *a2)
{
  object = a2;
  v2 = xpc_copy_clean_description();
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    errx(70, "Connection got error: %s", v2);
  }

  fprintf(__stderrp, "Reply: %s\n", v2);
}

void sub_100005F30(id a1, int a2)
{
  if (!a2)
  {
    fwrite("File Transfer Complete!\n", 0x18uLL, 1uLL, __stderrp);
    exit(0);
  }

  errc(70, a2, "File Transfer Failed");
}

uint64_t sub_100005F78()
{
  connected_socket = remote_service_create_connected_socket();
  v1 = connected_socket;
  if (connected_socket != -1)
  {
    v2 = fcntl(connected_socket, 3, 0);
    fcntl(v1, 4, v2 & 0xFFFFFFFB);
  }

  return v1;
}

void sub_100005FD4(int a1, int a2, int a3)
{
  v6 = malloc_type_valloc(0x20000uLL, 0x3DD42F38uLL);
  v7 = kqueue();
  if (v7 < 0)
  {
    sub_10001AFE4();
  }

  v8 = v7;
  changelist.ident = a1;
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  v16 = a3;
  v17 = 0x1FFFF;
  v19 = 0;
  v18 = 0;
  v20 = 0;
  if (kevent(v7, &changelist, 2, 0, 0, 0))
  {
    sub_10001AF74();
  }

  while (1)
  {
    do
    {
      while (1)
      {
        timeout = xmmword_10001D5A0;
        v9 = kevent(v8, 0, 0, &changelist, 1, &timeout);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          sub_10001AFC8();
        }
      }
    }

    while (!v9);
    if (!changelist.data && changelist.flags < 0)
    {
      break;
    }

    if (changelist.data >= 0x20000uLL)
    {
      data = 0x20000;
    }

    else
    {
      data = changelist.data;
    }

    v11 = read(changelist.ident, v6, data);
    if (v11 < 0)
    {
      sub_10001AFAC();
    }

    v12 = v11;
    if (v11)
    {
      if (LODWORD(changelist.ident) == a1)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      if (write(v13, v6, v12) < 0)
      {
        sub_10001AF90();
      }
    }
  }

  close(v8);
  close(a1);
  if (a2 != a1)
  {
    close(a2);
  }

  close(a3);
  free(v6);
}

uint64_t sub_10000618C(char *const *a1, uint64_t a2)
{
  memset(__b, 170, sizeof(__b));
  bufsize = 1024;
  _NSGetExecutablePath(__b, &bufsize);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawn_file_actions_init(&v13))
  {
    sub_10001B000(&v12, v15);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (posix_spawn_file_actions_addinherit_np(&v13, *(a2 + 4 * v4)))
    {
      sub_10001B06C(&v12, v15);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v7 = open("/dev/null", 2);
  if (v7 != -1)
  {
    if (posix_spawn_file_actions_adddup2(&v13, v7, 0))
    {
      sub_10001B0D8(&v12, v15);
    }

    if (posix_spawn_file_actions_adddup2(&v13, v7, 1))
    {
      sub_10001B144(&v12, v15);
    }

    if (posix_spawn_file_actions_adddup2(&v13, v7, 2))
    {
      sub_10001B1B0(&v12, v15);
    }
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawnattr_init(&v12))
  {
    sub_10001B21C(&v11, v15);
  }

  if (posix_spawnattr_setflags(&v12, 2))
  {
    sub_10001B288(&v11, v15);
  }

  if (posix_spawnattr_setflags(&v12, 0x4000))
  {
    sub_10001B2F4(&v11, v15);
  }

  v15[0] = -1;
  v8 = _NSGetEnviron();
  v9 = posix_spawn(v15, __b, &v13, &v12, a1, *v8);
  if (v9)
  {
    sub_10001B360(v9);
  }

  posix_spawn_file_actions_destroy(&v13);
  result = posix_spawnattr_destroy(&v12);
  if (v7 != -1)
  {
    return close(v7);
  }

  return result;
}

void sub_1000063A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "parent exited, exiting", v2, 2u);
  }

  exit(1);
}

void sub_100006400(id a1, BOOL a2)
{
  v2 = a2;
  v3 = "failure";
  if (a2)
  {
    v3 = "success";
  }

  fprintf(__stderrp, "Heartbeat %s\n", v3);
  exit(!v2);
}

uint64_t sub_100006454(uint64_t a1, int a2)
{
  v4 = fcntl(a2, 3, 0);
  fcntl(a2, 4, v4 & 0xFFFFFFFB);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawn_file_actions_init(&v23))
  {
    sub_10001B000(&v22, buf);
  }

  v5 = *(a1 + 72);
  if (v5 == -1)
  {
    if (posix_spawn_file_actions_adddup2(&v23, a2, 0))
    {
      sub_10001B3EC(&v22, buf);
    }

    if (posix_spawn_file_actions_adddup2(&v23, a2, 1))
    {
      sub_10001B458(&v22, buf);
    }
  }

  else if (posix_spawn_file_actions_adddup2(&v23, a2, v5))
  {
    sub_10001B380(&v22, buf);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (posix_spawnattr_init(&v22))
  {
    sub_10001B21C(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 2))
  {
    sub_10001B288(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 0x4000))
  {
    sub_10001B2F4(&v21, buf);
  }

  if (posix_spawnattr_setflags(&v22, 12))
  {
    sub_10001B4C4(&v21, buf);
  }

  v19 = 0;
  v20 = -1;
  if (posix_spawnattr_setsigdefault(&v22, &v20))
  {
    sub_10001B530(&v21, buf);
  }

  if (posix_spawnattr_setsigmask(&v22, &v19))
  {
    sub_10001B59C(&v21, buf);
  }

  LODWORD(v21) = -1;
  v6 = *(a1 + 56);
  v7 = *v6;
  v8 = _NSGetEnviron();
  v9 = posix_spawn(&v21, v7, &v23, &v22, v6, *v8);
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10001B608(a1, v11, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      *buf = 136446466;
      v25 = v12;
      v26 = 1024;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Accepted service, started pid %d", buf, 0x12u);
    }

    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 24);
    if (!v14)
    {
      v15 = os_transaction_create();
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24);
    }

    *(v13 + 24) = v14 + 1;
  }

  close(a2);
  posix_spawn_file_actions_destroy(&v23);
  return posix_spawnattr_destroy(&v22);
}

int *sub_100006748(void *a1)
{
  v9 = 0;
  do
  {
    while (1)
    {
      result = wait3(&v9, 1, 0);
      if (result == -1)
      {
        break;
      }

      v3 = result;
      if (!result)
      {
        return result;
      }

      v4 = a1[4];
      if ((v9 & 0x7F) != 0)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v11 = v3;
          v12 = 1024;
          v13 = v9 & 0x7F;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Reaped child %d, terminated with signal %d", buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reaped child %d, exited normally", buf, 8u);
      }

      v5 = *(a1[5] + 8);
      v6 = *(v5 + 24);
      if (v6)
      {
        *(v5 + 24) = v6 - 1;
        if (*(*(a1[5] + 8) + 24))
        {
          continue;
        }
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }

    result = __error();
  }

  while (*result == 4);
  return result;
}

uint64_t sub_1000068F0()
{
  if (remote_compute_platform_tls_required())
  {
    exit(1);
  }

  return printf("TLS is currently %s for the compute platform\n", "not required");
}

uint64_t sub_100006950(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_10001B694(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_1000069BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double sub_1000069E0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100006A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double sub_100006A48(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100006A68(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL sub_100006A80()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100006AB4(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL sub_100006ACC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100006B00(NSObject *a1, uint64_t a2, uint64_t a3, uid_t a4, gid_t a5, int a6, pid_t a7)
{
  v282 = a7;
  v235 = a6;
  v240 = a5;
  v241 = a4;
  v272 = a3;
  v274 = a2;
  v275 = a1;
  v229 = type metadata accessor for DispatchTime();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v227 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for String.Encoding();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for DispatchWorkItemFlags();
  *&v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v252 = &v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for DispatchQoS();
  v251 = *(v253 - 8);
  __chkstk_darwin(v253);
  v250 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for DispatchTimeInterval();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = (&v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for IPv6Address();
  v271 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v239 = &v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v238 = &v223 - v16;
  v17 = __chkstk_darwin(v15);
  v246 = &v223 - v18;
  v19 = __chkstk_darwin(v17);
  v245 = &v223 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v223 - v22);
  __chkstk_darwin(v21);
  v25 = &v223 - v24;
  v26 = type metadata accessor for NWEndpoint.Port();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v232 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v244 = &v223 - v31;
  __chkstk_darwin(v30);
  v33 = &v223 - v32;
  v34 = type metadata accessor for Logger();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v226 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v225 = &v223 - v39;
  v40 = __chkstk_darwin(v38);
  v230 = &v223 - v41;
  v42 = __chkstk_darwin(v40);
  v233 = &v223 - v43;
  v44 = __chkstk_darwin(v42);
  v270 = &v223 - v45;
  v46 = __chkstk_darwin(v44);
  v264 = &v223 - v47;
  __chkstk_darwin(v46);
  v49 = &v223 - v48;
  v50 = sub_10000DB58();
  v266 = v35;
  v51 = v35[2];
  v267 = v50;
  v263 = v34;
  v268 = v51;
  (v51)(v49);
  v260 = v27;
  v52 = *(v27 + 16);
  v265 = v27 + 16;
  v259 = v52;
  v52(v33, v275, v26);
  v53 = v271 + 16;
  v54 = *(v271 + 16);
  v243 = v25;
  v54(v25, v272, v12);
  v262 = v23;
  v273 = v12;
  v258 = v53;
  v257 = v54;
  v54(v23, v274, v12);
  v242 = v49;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  v57 = os_log_type_enabled(v55, v56);
  v269 = v35 + 2;
  v261 = v26;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    aBlock = v224;
    *v58 = 33555202;
    v223 = v55;
    v59 = NWEndpoint.Port.rawValue.getter();
    v231 = *(v260 + 8);
    v231(v33, v26);
    *(v58 + 4) = v59;
    *(v58 + 6) = 2080;
    v60 = v243;
    v61 = IPv6Address.debugDescription.getter();
    v63 = v62;
    v64 = *(v271 + 8);
    v65 = v273;
    v64(v60, v273);
    v66 = sub_1000091D0(v61, v63, &aBlock);

    *(v58 + 8) = v66;
    *(v58 + 16) = 2080;
    v67 = v262;
    v68 = IPv6Address.debugDescription.getter();
    v70 = v69;
    v243 = v64;
    v64(v67, v65);
    v71 = v263;
    v72 = sub_1000091D0(v68, v70, &aBlock);

    *(v58 + 18) = v72;
    v73 = v56;
    v74 = v71;
    v75 = v223;
    _os_log_impl(&_mh_execute_header, v223, v73, "SSH tunnel privileged helper started. Will listen on %hu and attempt to create a utun from %s -> %s", v58, 0x1Au);
    swift_arrayDestroy();

    v76 = v266;
    v77 = v266[1];
    v77(v242, v71);
  }

  else
  {
    v231 = *(v260 + 8);
    v231(v33, v26);

    v78 = *(v271 + 8);
    v79 = v273;
    v78(v262, v273);
    v80 = v243;
    v243 = v78;
    v78(v80, v79);
    v76 = v266;
    v77 = v266[1];
    v74 = v263;
    v77(v242, v263);
  }

  v81 = v282;
  v82 = tcsetpgrp(0, v282);
  v83 = v275;
  v84 = v274;
  if (v82)
  {
    v268(v264, v267, v74);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 67109378;
      *(v87 + 4) = v81;
      *(v87 + 8) = 2112;
      v89 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v90 = v89;
      v83 = v275;
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 10) = v91;
      *v88 = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "Failed returning foreground to remotectl at %d: %@", v87, 0x12u);
      sub_100009BDC(v88);
      v84 = v274;
    }

    v76 = v266;
    v77(v264, v74);
  }

  v262 = v77;
  v268(v270, v267, v74);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 67109120;
    *(v94 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v92, v93, "SSH tunnel privileged helper returned foreground to %d", v94, 8u);
  }

  v95 = v270;
  v270 = (v76 + 1);
  v262(v95, v74);
  type metadata accessor for TCPPacketTunnelServer(0);
  v96 = v244;
  v259(v244, v83, v261);
  v97 = v245;
  v98 = v273;
  v99 = v257;
  v257(v245, v272, v273);
  v100 = v246;
  v99(v246, v84, v98);
  v101 = sub_10000DA60();
  v102 = v247;
  *v247 = *v101;
  (*(v248 + 104))(v102, enum case for DispatchTimeInterval.seconds(_:), v249);
  v103 = sub_10000A8D0(v96, v97, v100, v102);
  v104 = SIG_IGN.getter();
  signal(2, v104);
  sub_100008A2C(0, &qword_100028C80, OS_dispatch_source_ptr);
  sub_100008A2C(0, &qword_1000288B0, OS_dispatch_queue_ptr);
  v105 = static OS_dispatch_queue.main.getter();
  v106 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v280 = sub_100008C6C;
  v281 = v103;
  aBlock = _NSConcreteStackBlock;
  v277 = 1107296256;
  v278 = sub_100008C74;
  v279 = &unk_1000255B0;
  v107 = _Block_copy(&aBlock);

  v108 = v250;
  static DispatchQoS.unspecified.getter();
  v109 = v252;
  sub_100008CD0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v107);
  (*(v254 + 8))(v109, v255);
  v110 = v108;
  v111 = v103;
  (*(v251 + 8))(v110, v253);

  OS_dispatch_source.activate()();
  v112 = v256;
  (*(*v103 + 184))();
  if (v112)
  {
    goto LABEL_24;
  }

  v266 = v101;
  v113 = v240;
  if (setgid(v240) == -1)
  {
    aBlock = 0;
    v277 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v172 = "Could not set gid: ";
LABEL_23:
    aBlock = 0xD000000000000013;
    v277 = (v172 - 32) | 0x8000000000000000;
    errno.getter();
    v173._countAndFlagsBits = Errno.description.getter();
    String.append(_:)(v173);

    v174 = aBlock;
    v175 = v277;
    sub_100009A68();
    swift_allocError();
    *v176 = v174;
    v176[1] = v175;
    swift_willThrow();
LABEL_24:

    return swift_unknownObjectRelease();
  }

  if (setuid(v241) == -1)
  {
    aBlock = 0;
    v277 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v172 = "Could not set uid: ";
    goto LABEL_23;
  }

  v256 = v106;
  v264 = [objc_opt_self() defaultManager];
  aBlock = 0;
  v277 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  aBlock = 0x6D65722F706D742FLL;
  v277 = 0xEF2E6C746365746FLL;
  v114 = v235;
  v283 = v235;
  v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v115);

  v116._countAndFlagsBits = 0x2D7265706C65682ELL;
  v116._object = 0xED00007964616572;
  String.append(_:)(v116);
  v117 = String._bridgeToObjectiveC()();

  v283 = v114;
  aBlock = dispatch thunk of CustomStringConvertible.description.getter();
  v277 = v118;
  v119._countAndFlagsBits = 0x594441455220;
  v119._object = 0xE600000000000000;
  String.append(_:)(v119);
  v120 = v234;
  static String.Encoding.utf8.getter();
  v121 = String.data(using:allowLossyConversion:)();
  v123 = v122;

  (*(v236 + 8))(v120, v237);
  isa = 0;
  if (v123 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009B20(v121, v123);
  }

  sub_100008D88(&qword_1000288B8, &qword_10001D5F0);
  inited = swift_initStackObject();
  *(inited + 32) = NSFileOwnerAccountID;
  *(inited + 16) = xmmword_10001D5D0;
  *(inited + 40) = v241;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = NSFileGroupOwnerAccountID;
  *(inited + 80) = v113;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = NSFilePosixPermissions;
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = 438;
  v126 = NSFileOwnerAccountID;
  v127 = NSFileGroupOwnerAccountID;
  v128 = NSFilePosixPermissions;
  sub_100009910(inited);
  swift_setDeallocating();
  sub_100008D88(&qword_1000288C0, &qword_10001D5F8);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey();
  sub_100009E48(&qword_1000288C8, type metadata accessor for FileAttributeKey, &unk_10001D788);
  v129 = Dictionary._bridgeToObjectiveC()().super.isa;

  v130 = v264;
  v131 = [v264 createFileAtPath:v117 contents:isa attributes:v129];

  if (!v131)
  {
    sub_100009A68();
    swift_allocError();
    *v178 = 0xD000000000000026;
    v178[1] = 0x800000010001F650;
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  v132 = 1853191285;
  v133 = (*(*v111 + 168))();
  if (v134)
  {
    v132 = v133;
    v135 = v134;
  }

  else
  {
    v135 = 0xE400000000000000;
  }

  v264 = v135;
  v253 = sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v136 = swift_allocObject();
  v254 = xmmword_10001D5E0;
  *(v136 + 16) = xmmword_10001D5E0;
  aBlock = 0;
  v277 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v137._countAndFlagsBits = 0xD00000000000001DLL;
  v137._object = 0x800000010001F680;
  String.append(_:)(v137);
  v255 = v132;
  v138._countAndFlagsBits = v132;
  v138._object = v135;
  String.append(_:)(v138);
  v139._countAndFlagsBits = 0x206D6F726620;
  v139._object = 0xE600000000000000;
  String.append(_:)(v139);
  v140 = v272;
  v141._countAndFlagsBits = IPv6Address.debugDescription.getter();
  String.append(_:)(v141);

  v142._countAndFlagsBits = 540945696;
  v142._object = 0xE400000000000000;
  String.append(_:)(v142);
  v143 = v274;
  v144._countAndFlagsBits = IPv6Address.debugDescription.getter();
  String.append(_:)(v144);

  v145._countAndFlagsBits = 0xD000000000000018;
  v145._object = 0x800000010001F6A0;
  String.append(_:)(v145);
  v146 = aBlock;
  v147 = v277;
  *(v136 + 56) = &type metadata for String;
  *(v136 + 32) = v146;
  *(v136 + 40) = v147;
  print(_:separator:terminator:)();

  v148 = v233;
  v268(v233, v267, v263);
  v149 = v140;
  v150 = v273;
  v151 = v257;
  v257(v238, v149, v273);
  v151(v239, v143, v150);
  v152 = v264;
  v153 = v232;
  v154 = v261;
  v259(v232, v275, v261);

  v155 = Logger.logObject.getter();
  LODWORD(v136) = static os_log_type_t.info.getter();

  LODWORD(v274) = v136;
  v275 = v155;
  if (os_log_type_enabled(v155, v136))
  {
    v156 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    aBlock = v272;
    *v156 = 136315906;
    v157 = sub_1000091D0(v255, v152, &aBlock);

    *(v156 + 4) = v157;
    *(v156 + 12) = 2080;
    v158 = v238;
    v159 = IPv6Address.debugDescription.getter();
    v161 = v160;
    v162 = v239;
    v271 += 8;
    v163 = v243;
    v243(v158, v150);
    v164 = sub_1000091D0(v159, v161, &aBlock);

    *(v156 + 14) = v164;
    *(v156 + 22) = 2080;
    v165 = IPv6Address.debugDescription.getter();
    v167 = v166;
    v163(v162, v150);
    v168 = sub_1000091D0(v165, v167, &aBlock);

    *(v156 + 24) = v168;
    *(v156 + 32) = 512;
    v169 = v232;
    LOWORD(v168) = NWEndpoint.Port.rawValue.getter();
    v231(v169, v261);
    *(v156 + 34) = v168;
    v170 = v275;
    _os_log_impl(&_mh_execute_header, v275, v274, "SSH tunnel privileged helper created %s from %s -> %s and is listening for a tunnel connection on ::1:%hu.", v156, 0x24u);
    swift_arrayDestroy();

    v171 = v233;
  }

  else
  {
    v231(v153, v154);

    v179 = v243;
    v243(v239, v150);
    v179(v238, v150);
    v171 = v148;
  }

  v180 = (v262)(v171, v263);
  v181 = 0;
  v182 = *(*v111 + 144);
  v183 = v266;
  do
  {
    v180 = v182(v180);
    v185 = v184;
    v187 = v186;
    if (v186 >> 62)
    {
      goto LABEL_35;
    }

    if (__OFADD__(*v183, 5))
    {
      __break(1u);
      return result;
    }

    if (*v183 + 5 < v181)
    {
      (*(*v111 + 192))(result);
      v209 = v230;
      v210 = v263;
      v268(v230, v267, v263);
      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        *v213 = 134217984;
        *(v213 + 4) = *v183;
        _os_log_impl(&_mh_execute_header, v211, v212, "SSH tunnel privileged helper waited longer than TCPPacketTunnelServer's timeout (%ld) for a connection.", v213, 0xCu);
      }

      v262(v209, v210);
      v214 = 0x800000010001F770;
      sub_100009A68();
      swift_allocError();
      v216 = 0xD00000000000002FLL;
      goto LABEL_49;
    }

    v180 = sleep(1u);
  }

  while (!__OFADD__(v181++, 1));
  __break(1u);
LABEL_35:
  v189 = sub_100009ABC(v180, v185, v187);
  v182(v189);
  v192 = v191;
  if (!(v190 >> 62))
  {

    v217 = v225;
    v218 = v263;
    v268(v225, v267, v263);
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&_mh_execute_header, v219, v220, "SSH tunnel privileged helper still listening after wait loop.", v221, 2u);
    }

    v262(v217, v218);
    sub_100009A68();
    swift_allocError();
    *v222 = 0xD000000000000027;
    v222[1] = 0x800000010001F740;
    swift_willThrow();
    goto LABEL_50;
  }

  if (v190 >> 62 != 1)
  {
    v214 = 0x800000010001F740;
    sub_100009A68();
    swift_allocError();
    v216 = 0xD000000000000027;
LABEL_49:
    *v215 = v216;
    v215[1] = v214;
    swift_willThrow();
LABEL_50:
    swift_unknownObjectRelease();
  }

  v193 = swift_allocObject();
  *(v193 + 16) = v254;
  aBlock = 0;
  v277 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v194._countAndFlagsBits = 0xD000000000000020;
  v194._object = 0x800000010001F6C0;
  String.append(_:)(v194);
  v195 = (*(*v192 + 176))();
  if (v196)
  {
    v197 = v196;
  }

  else
  {
    v195 = 1853191285;
    v197 = 0xE400000000000000;
  }

  v198 = v197;
  String.append(_:)(*&v195);

  v199._countAndFlagsBits = 0xD000000000000026;
  v199._object = 0x800000010001F6F0;
  String.append(_:)(v199);
  v200 = aBlock;
  v201 = v277;
  *(v193 + 56) = &type metadata for String;
  *(v193 + 32) = v200;
  *(v193 + 40) = v201;
  print(_:separator:terminator:)();

  v203 = v227;
  j___s8Dispatch0A4TimeV13distantFutureACvgZ(v202);
  (*(*v111 + 200))(v203);
  (*(v228 + 8))(v203, v229);
  v204 = swift_allocObject();
  *(v204 + 16) = v254;
  *(v204 + 56) = &type metadata for String;
  *(v204 + 32) = 0xD000000000000010;
  *(v204 + 40) = 0x800000010001F720;
  print(_:separator:terminator:)();

  v205 = v226;
  v268(v226, v267, v263);
  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    *v208 = 0;
    _os_log_impl(&_mh_execute_header, v206, v207, "SSH tunnel privileged server disconnected. Exiting...", v208, 2u);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (v262)(v205, v263);
}

uint64_t sub_100008A2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008A74(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB58();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SSH tunnel privileged helper received SIGINT, shutting down server...", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001D5E0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0xD000000000000017;
  *(v10 + 40) = 0x800000010001F7E0;
  print(_:separator:terminator:)();

  return (*(*a1 + 192))(v11);
}

uint64_t sub_100008C74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008CD0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100009E48(&unk_100028E70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008D88(&qword_100028920, &qword_10001D7E0);
  sub_100009E90();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100008D88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008DD8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100008E50(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100008ED0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100008F14()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100008F50(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100008FA4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100009018(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000090A0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000090E8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100009114(uint64_t a1)
{
  v2 = sub_100009E48(&qword_1000288C8, type metadata accessor for FileAttributeKey, &unk_10001D788);
  v3 = sub_100009E48(&qword_100028908, type metadata accessor for FileAttributeKey, &unk_10001D6DC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_1000091D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000929C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100009D68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009D1C(v11);
  return v7;
}

unint64_t sub_10000929C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000093A8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000093A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000093F4(a1, a2);
  sub_100009524(&off_100025588);
  return v3;
}

char *sub_1000093F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009610(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009610(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009524(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100009684(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009610(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100008D88(&qword_100028910, &qword_10001D7D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009684(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008D88(&qword_100028910, &qword_10001D7D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100009778(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000980C(a1, v2);
}

unint64_t sub_10000980C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100009910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008D88(&qword_100028918, &qword_10001D7D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009DC8(v4, &v11);
      v5 = v11;
      result = sub_100009778(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009E38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000288E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000288E8);
    }
  }
}

unint64_t sub_100009A68()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

uint64_t sub_100009ABC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return v3;
}

uint64_t sub_100009B20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009B34(a1, a2);
  }

  return a1;
}

uint64_t sub_100009B34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100009B88()
{
  result = qword_1000288E0;
  if (!qword_1000288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E0);
  }

  return result;
}

uint64_t sub_100009BDC(uint64_t a1)
{
  v2 = sub_100008D88(&qword_100028C90, &qword_10001D990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D1C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100009D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008D88(&qword_1000288C0, &qword_10001D5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100009E38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009E90()
{
  result = qword_100028E80;
  if (!qword_100028E80)
  {
    sub_100009EF4(&qword_100028920, &qword_10001D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E80);
  }

  return result;
}

uint64_t sub_100009EF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009F4C(uint64_t a1, unsigned int a2, uint64_t (*a3)(uint64_t))
{
  result = (a3)();
  if (v3)
  {
    if (a1 <= 1)
    {
      a1 = 1;
    }

    if (a1 == 1)
    {
      return swift_willThrow();
    }

    else
    {
      sleep(a2);

      return a3(v8);
    }
  }

  return result;
}

uint64_t sub_100009FE4(uint64_t a1, void *a2)
{
  String.utf8CString.getter();
  v4 = remote_control_enable_network_peer();

  if (!v4)
  {
    _StringGuts.grow(_:)(34);

    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    sub_100009A68();
    swift_allocError();
    *v7 = 0xD000000000000020;
    v7[1] = 0x800000010001F800;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A0C0()
{
  result = remote_control_disable_network_peer();
  if (!result)
  {
    sub_100009A68();
    swift_allocError();
    *v1 = 0xD000000000000022;
    v1[1] = 0x800000010001F830;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A130(uint64_t a1)
{
  IPv6Address.debugDescription.getter();
  String.utf8CString.getter();

  v1 = remote_control_connect_network_peer();

  if (!v1)
  {
    _StringGuts.grow(_:)(37);
    v3._object = 0x800000010001F860;
    v3._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v3);
    type metadata accessor for IPv6Address();
    _print_unlocked<A, B>(_:_:)();
    sub_100009A68();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000A230(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    _StringGuts.grow(_:)(16);
    v6._countAndFlagsBits = 0x6E696E657473696CLL;
    v6._object = 0xEA00000000002867;
    String.append(_:)(v6);
    type metadata accessor for NWListener();
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    type metadata accessor for UtunSocket(0);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a3 >> 62 == 1)
  {
    _StringGuts.grow(_:)(17);
    v3._countAndFlagsBits = 0x657463656E6E6F63;
    v3._object = 0xEA00000000002864;
    String.append(_:)(v3);
    type metadata accessor for NWConnection();
    _print_unlocked<A, B>(_:_:)();
    v4._countAndFlagsBits = 8236;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    type metadata accessor for UtunSocket(0);
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 41;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    return 0;
  }

  return 0x656E6E6F63736964;
}

unint64_t sub_10000A404()
{
  result = qword_1000288B0;
  if (!qword_1000288B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000288B0);
  }

  return result;
}

void sub_10000A450()
{
  v1 = v0;

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315138;
    v5 = (v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    sub_10000A670(v6, v7, v8);
    v9 = sub_10000A230(v6, v7, v8);
    v11 = v10;
    sub_100009ABC(v6, v7, v8);
    v12 = sub_1000091D0(v9, v11, &v14);

    *(v3 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v2, "State changed to %s", v3, 0xCu);
    sub_100009D1C(v4);
  }

  else
  {
  }
}

uint64_t sub_10000A600()
{
  v1 = v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state;
  swift_beginAccess();
  v2 = *v1;
  sub_10000A670(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_10000A670(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return v3;
}

uint64_t sub_10000A6D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  sub_10000A670(a1, a2, a3);
  sub_100009ABC(v8, v9, v10);
  sub_10000A450();
  return sub_100009ABC(a1, a2, a3);
}

void (*sub_10000A780(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10000A7E4;
}

void sub_10000A7E4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10000A450();
  }
}

uint64_t sub_10000A818()
{
  (*(*v0 + 144))();
  v2 = v1;
  if ((v3 >> 62) > 1)
  {
    return 0;
  }

  v5 = (*(*v2 + 176))(v4);

  return v5;
}

uint64_t sub_10000A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = swift_allocObject();
  v23[2] = sub_10000A404();
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v9 = sub_10000D644();
  v11 = *v9;
  v10 = v9[1];
  v31 = v11;
  v32 = v10;

  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x800000010001F890;
  String.append(_:)(v12);
  v23[1] = v32;
  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_10000D1E8(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_10000BE7C(&qword_100028938, &qword_100028930, qword_10001D880);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *(v8 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  Logger.init(subsystem:category:)();
  v13 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_exitSemaphore;
  *(v8 + v13) = dispatch_semaphore_create(0);
  v14 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port;
  v15 = type metadata accessor for NWEndpoint.Port();
  (*(*(v15 - 8) + 32))(v8 + v14, v27, v15);
  v16 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress;
  v17 = type metadata accessor for IPv6Address();
  v18 = *(*(v17 - 8) + 32);
  v18(v8 + v16, v28, v17);
  v18(v8 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v29, v17);
  v19 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_timeout;
  v20 = type metadata accessor for DispatchTimeInterval();
  (*(*(v20 - 8) + 32))(v8 + v19, v30, v20);
  v21 = (v8 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state);
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0x8000000000000000;
  return v8;
}

uint64_t sub_10000ACE4()
{
  v1 = type metadata accessor for DispatchTime();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = __chkstk_darwin(v1);
  v43 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = v42 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for IPv6Address();
  v48 = *(v50 - 8);
  v8 = __chkstk_darwin(v50);
  v49 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v42 - v10;
  v11 = type metadata accessor for NWEndpoint.Port();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
  type metadata accessor for NWParameters();

  v15 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.acceptLocalOnly.setter();
  v16 = *(v12 + 16);
  v51 = v0;
  v16(v14, v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port, v11);
  type metadata accessor for NWListener();
  swift_allocObject();

  v17 = v52;
  v18 = NWListener.init(using:on:)();
  if (v17)
  {
  }

  else
  {
    v19 = v18;
    v42[2] = v7;
    v42[3] = v15;
    v42[1] = v5;
    v20 = v51;

    sub_10000B858(sub_10000B458, v20);
    NWListener.newConnectionHandler.setter();

    sub_10000B858(sub_10000B854, v20);
    NWListener.stateUpdateHandler.setter();

    type metadata accessor for UtunSocket(0);
    v52 = v19;
    v21 = *(v20 + 16);
    v22 = v47;
    v23 = *(v48 + 16);
    v24 = v50;
    v23(v47, v20 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress, v50);
    v25 = v49;
    v23(v49, v20 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v24);
    v26 = sub_100017D64(v21, v22, v25);
    v27 = v51;
    v28 = *(*v26 + 240);

    v29 = v28(sub_10000BC78, v27);
    v32 = v31;
    v50 = v26;
    v33 = v29;

    sub_100009FE4(v33, v32);

    NWListener.start(queue:)();
    v34 = v51;
    aBlock[4] = sub_10000BD48;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008C74;
    aBlock[3] = &unk_100025640;
    v49 = _Block_copy(aBlock);
    aBlock[7] = &_swiftEmptyArrayStorage;
    v48 = sub_10000D1E8(&unk_100028E70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_100008D88(&qword_100028920, &qword_10001D7E0);
    sub_10000BE7C(&qword_100028E80, &qword_100028920, &qword_10001D7E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v35 = DispatchWorkItem.init(flags:block:)();
    v49 = v35;

    v36 = *(*v34 + 152);
    v37 = v52;

    v38 = v50;

    v36(v37, v38, v35);
    v39 = v43;
    static DispatchTime.now()();
    v40 = v44;
    + infix(_:_:)();
    v41 = *(v45 + 8);
    v41(v39, v46);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v41)(v40, v46);
  }
}

void sub_10000B458(uint64_t a1)
{
  v3 = *(*v1 + 144);
  v4 = v3();
  v7 = v5;
  if (v6 >> 62)
  {
    sub_100009ABC(v4, v5, v6);

    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      v13 = v3();
      v15 = v14;
      v17 = v16;
      v18 = sub_10000A230(v13, v14, v16);
      v20 = v19;
      sub_100009ABC(v13, v15, v17);
      v21 = sub_1000091D0(v18, v20, &v24);

      *(v11 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v10, "In state %s, rejecting new connection", v11, 0xCu);
      sub_100009D1C(v12);
    }
  }

  else
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    NWListener.cancel()();

    sub_10000B858(sub_10000D1E4, v1);
    NWConnection.stateUpdateHandler.setter();

    type metadata accessor for TCPPacketTunnel(0);

    v8 = sub_100014808(a1, v7);
    v9 = NWConnection.start(queue:)();
    (*(*v8 + 128))(v9);
    sub_10000A130(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress);
    v22 = *(*v1 + 152);

    v22(a1, v7, v8 | 0x4000000000000000);
  }
}

uint64_t sub_10000B858(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10000B868(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWListener.State();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_logger;
  v36 = *(v5 + 16);
  v37 = a1;
  v36(&v31 - v9, a1, v4);
  v35 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v8;
    v15 = v14;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v15 = 136315138;
    sub_10000D1E8(&qword_100028A50, &type metadata accessor for NWListener.State, &protocol conformance descriptor for NWListener.State);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v2;
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v10, v4);
    v20 = sub_1000091D0(v16, v18, &v38);
    v2 = v33;

    *(v15 + 4) = v20;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "NWListener in state %s", v15, 0xCu);
    sub_100009D1C(v32);

    v8 = v34;
  }

  else
  {

    v21 = *(v5 + 8);
    v21(v10, v4);
  }

  v36(v8, v37, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == enum case for NWListener.State.waiting(_:) || result == enum case for NWListener.State.failed(_:))
  {
    result = (v21)(v8, v4);
LABEL_10:
    v24 = (*(*v2 + 144))(result);
    if (v26 >> 62)
    {
      return sub_100009ABC(v24, v25, v26);
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Listener ended without a connection, shutting down.", v29, 2u);
    }

    return sub_10000C274();
  }

  if (result != enum case for NWListener.State.setup(_:) && result != enum case for NWListener.State.ready(_:))
  {
    if (result != enum case for NWListener.State.cancelled(_:))
    {
      return (v21)(v8, v4);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10000BC78(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 144))();
  if (v7 >> 62 == 1)
  {
    v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    (*(*v8 + 136))(a1, a2);
  }

  else
  {

    return sub_100009ABC(v5, v6, v7);
  }
}

uint64_t sub_10000BD48()
{
  v1 = (*(*v0 + 144))();
  if (v3 >> 62)
  {

    return sub_100009ABC(v1, v2, v3);
  }

  else
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Listener timed out waiting for an incoming connection", v6, 2u);
    }

    NWListener.cancel()();
  }
}

uint64_t sub_10000BE64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BE7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009EF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BED0(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000091D0(0x656E6E6F63736964, 0xEC00000029287463, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100009D1C(v6);
  }

  result = (*(*v2 + 144))();
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      return result;
    }

    NWConnection.cancel()();
  }

  else
  {

    NWListener.cancel()();
    dispatch thunk of DispatchWorkItem.cancel()();
  }
}

uint64_t sub_10000C0B8()
{
  v1 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_port;
  v4 = type metadata accessor for NWEndpoint.Port();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelSourceAddress;
  v6 = type metadata accessor for IPv6Address();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_tunnelDestinationAddress, v6);
  v8 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_timeout;
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_100009ABC(*(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state), *(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state + 8), *(v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelServer_state + 16));

  return swift_deallocClassInstance();
}

Swift::Int sub_10000C274()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWListener.State();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v0 + 144))(v8);
  v14 = v13;
  if (!(v12 >> 62))
  {
    v26[0] = v11;
    NWListener.state.getter();
    v20 = (*(v7 + 88))(v10, v6);
    if (v20 != enum case for NWListener.State.failed(_:))
    {
      if (v20 == enum case for NWListener.State.cancelled(_:))
      {
LABEL_16:
        dispatch thunk of DispatchWorkItem.cancel()();
        v24 = sub_10000A0C0();
        (*(*v14 + 272))(v24);
        (*(*v1 + 152))(0, 0, 0x8000000000000000);
        OS_dispatch_semaphore.signal()();
      }

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Shutting down utun before NWListener is shut down", v23, 2u);
      }
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_16;
  }

  if (v12 >> 62 != 1)
  {
    return OS_dispatch_semaphore.signal()();
  }

  NWConnection.state.getter();
  v15 = (*(v3 + 88))(v5, v2);
  if (v15 == enum case for NWConnection.State.failed(_:))
  {
    goto LABEL_8;
  }

  if (v15 != enum case for NWConnection.State.cancelled(_:))
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Shutting down utun before NWConnection is shut down", v18, 2u);
    }

LABEL_8:
    (*(v3 + 8))(v5, v2);
  }

  v19 = sub_10000A0C0();
  (*(*v14 + 272))(v19);
  (*(*v1 + 152))(0, 0, 0x8000000000000000);
  OS_dispatch_semaphore.signal()();
}

Swift::Int sub_10000CAC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWConnection.State();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v28 = *(v5 + 16);
  v29 = a1;
  v28(&v25 - v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v8;
    v14 = v13;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v14 = 136315138;
    sub_10000D1E8(&qword_100028A58, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v2;
    v17 = v16;
    v18 = *(v5 + 8);
    v18(v10, v4);
    v19 = sub_1000091D0(v15, v17, &v30);
    v2 = v26;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "NWConnection in state %s", v14, 0xCu);
    sub_100009D1C(v25);

    v8 = v27;
  }

  else
  {

    v18 = *(v5 + 8);
    v18(v10, v4);
  }

  v28(v8, v29, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == enum case for NWConnection.State.waiting(_:) || result == enum case for NWConnection.State.failed(_:))
  {
    result = (v18)(v8, v4);
LABEL_10:
    result = (*(*v2 + 144))(result);
    if ((v22 >> 62) <= 1)
    {

      return sub_10000C274();
    }

    return result;
  }

  if (result != enum case for NWConnection.State.setup(_:) && result != enum case for NWConnection.State.preparing(_:) && result != enum case for NWConnection.State.ready(_:))
  {
    if (result != enum case for NWConnection.State.cancelled(_:))
    {
      return (v18)(v8, v4);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t type metadata accessor for TCPPacketTunnelServer(uint64_t a1)
{
  result = qword_100029390;
  if (!qword_100029390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CEC0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint.Port();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for IPv6Address();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DispatchTimeInterval();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

unint64_t sub_10000D018(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_10000D038(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000D04C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD && *(a1 + 24))
  {
    return (*a1 + 2097150);
  }

  if (((((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_10000D0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_10001D850), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_10001D860), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_10000D18C(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_10001D870;
  }

  return result;
}

uint64_t sub_10000D1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D230()
{
  v0 = *(String.utf8CString.getter() + 16);

  if (v0)
  {
    dword_100029768 = -1067168253;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_10000D278()
{
  if (qword_1000293A0 != -1)
  {
    swift_once();
  }

  return &dword_100029768;
}

uint64_t NWConnection.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NWError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    v11 = 0x28676E6974696177;
    v12 = 0xE800000000000000;
LABEL_5:
    String.append(_:)(*&v11);
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = v16;
    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for NWConnection.State.failed(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    v11 = 0x2864656C696166;
    v12 = 0xE700000000000000;
    goto LABEL_5;
  }

  if (v10 == enum case for NWConnection.State.setup(_:))
  {
    return 0x7075746573;
  }

  if (v10 == enum case for NWConnection.State.preparing(_:))
  {
    return 0x6E69726170657270;
  }

  if (v10 == enum case for NWConnection.State.ready(_:))
  {
    return 0x7964616572;
  }

  if (v10 == enum case for NWConnection.State.cancelled(_:))
  {
    return 0x656C6C65636E6163;
  }

  (*(v7 + 8))(v9, v6);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_10000D698(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000D6E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100008D88(&qword_100028A68, &qword_10001D9D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NWEndpoint.Port();
  sub_10000DA6C(v7, a2);
  v8 = sub_10000D698(v7, a2);
  NWEndpoint.Port.init(rawValue:)();
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 32))(v8, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D89C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100008D88(&qword_100028A60, &qword_10001D9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for IPv6Address();
  sub_10000DA6C(v7, a2);
  v8 = sub_10000D698(v7, a2);
  IPv6Address.init(_:)();
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 32))(v8, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DA00(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_10000D698(v5, a3);
}

uint64_t *sub_10000DA6C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000DAD0()
{
  v0 = type metadata accessor for Logger();
  sub_10000DA6C(v0, qword_1000297D0);
  sub_10000D698(v0, qword_1000297D0);
  sub_10000D644();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000DB58()
{
  if (qword_100029450 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000D698(v0, qword_1000297D0);
}

char *sub_10000DBBC(int a1, void *a2)
{
  v2 = a1;
  if (*a2)
  {
    v3 = a1 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 + 1;
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v7 = String.init(cString:)();
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100010E94(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_100010E94((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
    v13 = *v5++;
    v14 = v2-- != 0;
  }

  while (v13 && v2 != 0 && v14);
  return v6;
}

uint64_t sub_10000DCBC(uint64_t a1)
{
  v3 = sub_100008D88(&qword_100028A60, &qword_10001D9D0);
  v4 = __chkstk_darwin(v3 - 8);
  v114 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v117 = &v112 - v6;
  v125 = type metadata accessor for IPv6Address();
  v122 = *(v125 - 8);
  v7 = __chkstk_darwin(v125);
  v112 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v127 = &v112 - v10;
  v11 = __chkstk_darwin(v9);
  v113 = &v112 - v12;
  __chkstk_darwin(v11);
  v14 = &v112 - v13;
  v15 = sub_100008D88(&qword_100028A68, &qword_10001D9D8);
  v16 = __chkstk_darwin(v15 - 8);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v112 - v18;
  v136 = type metadata accessor for NWEndpoint.Port();
  v124 = *(v136 - 8);
  v19 = __chkstk_darwin(v136);
  v115 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v126 = &v112 - v22;
  v23 = __chkstk_darwin(v21);
  v118 = &v112 - v24;
  __chkstk_darwin(v23);
  v128 = &v112 - v25;
  v119 = 0;
  v131 = 0;
  v132 = 0;
  v26 = 0;
  v134 = 0;
  v135 = 0;
  v123 = 0;
  v27 = 0;
  v130 = 0;
  v28 = 0;
  v29 = *(a1 + 16);
  v137 = a1 + 40;
  v138 = 0;
  v133 = v14;
  while (2)
  {
    if (v28 == v29)
    {
LABEL_31:
      if (!v138)
      {

        v139 = 0;
        v140 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        v139 = 0xD000000000000030;
        v140 = 0x800000010001F9C0;
        goto LABEL_37;
      }

      v36 = v26;
      v37 = v131;
      if (v131)
      {

        v38 = v121;
        NWEndpoint.Port.init(_:)();
        v39 = v27;
        v40 = v124;
        v41 = (*(v124 + 48))(v38, 1, v136);
        v42 = v125;
        if (v41 == 1)
        {

          sub_100011004(v38, &qword_100028A68, &qword_10001D9D8);
          v139 = 0;
          v140 = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          v139 = 0xD000000000000012;
          v140 = 0x800000010001FA80;
          v43._countAndFlagsBits = v39;
          v43._object = v37;
          String.append(_:)(v43);

          v34 = 10;
          v35 = 0xE100000000000000;
          goto LABEL_35;
        }

        v49 = v40;
        v51 = *(v40 + 32);
        v52 = v118;
        v53 = v136;
        v51(v118, v38, v136);
        v51(v128, v52, v53);
        v50 = v42;
        v14 = v133;
      }

      else
      {
        v48 = sub_10000D660();
        v49 = v124;
        (*(v124 + 16))(v128, v48, v136);
        v50 = v125;
      }

      v54 = v127;
      v55 = v123;
      v56 = v132;
      v57 = v134;
      if (v134)
      {

        v58 = v120;
        NWEndpoint.Port.init(_:)();
        if ((*(v49 + 48))(v58, 1, v136) == 1)
        {

          sub_100011004(v58, &qword_100028A68, &qword_10001D9D8);
          v139 = 0;
          v140 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          v139 = 0xD000000000000014;
          v140 = 0x800000010001FA60;
          v59._countAndFlagsBits = v36;
          v59._object = v57;
          String.append(_:)(v59);

          v60._countAndFlagsBits = 10;
          v60._object = 0xE100000000000000;
          String.append(_:)(v60);
          if (qword_100029458 != -1)
          {
            swift_once();
          }

          String.append(_:)(xmmword_1000297E8);
          v61 = v139;
          v62 = v140;
          sub_100009A68();
          swift_allocError();
          *v63 = v61;
          v63[1] = v62;
          swift_willThrow();
          return (*(v49 + 8))(v128, v136);
        }

        v73 = v58;
        v74 = *(v49 + 32);
        v75 = v115;
        v76 = v136;
        v74(v115, v73, v136);
        v74(v126, v75, v76);
        v56 = v132;
        v54 = v127;
        v65 = v122;
        if (!v132)
        {
LABEL_53:
          v77 = sub_10000D9C8();
          (*(v65 + 16))(v14, v77, v50);
          v78 = v135;
          if (v135)
          {
LABEL_54:

            v79 = v114;
            IPv6Address.init(_:)();
            if ((*(v65 + 48))(v79, 1, v50) == 1)
            {
              v80 = v50;

              sub_100011004(v79, &qword_100028A60, &qword_10001D9D0);
              v139 = 0;
              v140 = 0xE000000000000000;
              _StringGuts.grow(_:)(21);

              v139 = 0xD000000000000010;
              v140 = 0x800000010001FA20;
              v81._countAndFlagsBits = v55;
              v81._object = v78;
              String.append(_:)(v81);

              v82._countAndFlagsBits = 10;
              v82._object = 0xE100000000000000;
              String.append(_:)(v82);
              if (qword_100029458 != -1)
              {
                swift_once();
              }

              String.append(_:)(xmmword_1000297E8);
              v83 = v139;
              v84 = v140;
              sub_100009A68();
              swift_allocError();
              *v85 = v83;
              v85[1] = v84;
              swift_willThrow();
              (*(v122 + 8))(v14, v80);
              goto LABEL_68;
            }

            v91 = v79;
            v92 = *(v65 + 32);
            v93 = v112;
            v92(v112, v91, v50);
            v92(v127, v93, v50);
            v54 = v127;
LABEL_61:
            v94 = v116;
            sub_100011F10(v130, v138, v54, v128, v14, v126);
            if (v94)
            {

              if (qword_100029450 != -1)
              {
                swift_once();
              }

              v95 = type metadata accessor for Logger();
              sub_10000D698(v95, qword_1000297D0);
              swift_errorRetain();
              v96 = Logger.logObject.getter();
              v97 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                *v98 = 138412290;
                swift_errorRetain();
                v100 = _swift_stdlib_bridgeErrorToNSError();
                *(v98 + 4) = v100;
                *v99 = v100;
                _os_log_impl(&_mh_execute_header, v96, v97, "remotectl ssh-tunnel failed: %@", v98, 0xCu);
                sub_100011004(v99, &qword_100028C90, &qword_10001D990);
                v14 = v133;
              }

              v139 = 0;
              v140 = 0xE000000000000000;
              _StringGuts.grow(_:)(31);
              v101._countAndFlagsBits = 0xD00000000000001DLL;
              v101._object = 0x800000010001FA00;
              String.append(_:)(v101);
              v141 = v94;
              sub_100008D88(&unk_100028C70, &qword_10001D9E0);
              _print_unlocked<A, B>(_:_:)();
              v102 = v139;
              v103 = v140;
              sub_100009A68();
              swift_allocError();
              *v104 = v102;
              v104[1] = v103;
              swift_willThrow();

              v105 = *(v122 + 8);
              v106 = v125;
              v105(v127, v125);
              v105(v14, v106);
              v107 = *(v49 + 8);
              v108 = v136;
              v107(v126, v136);
              return (v107)(v128, v108);
            }

            v109 = *(v65 + 8);
            v109(v54, v50);
            v109(v14, v50);
LABEL_68:
            v110 = *(v49 + 8);
            v111 = v136;
            v110(v126, v136);
            return (v110)(v128, v111);
          }

LABEL_59:
          v90 = sub_10000D84C();
          (*(v65 + 16))(v54, v90, v50);
          goto LABEL_61;
        }
      }

      else
      {
        v64 = sub_10000D7FC();
        (*(v49 + 16))(v126, v64, v136);
        v65 = v122;
        if (!v56)
        {
          goto LABEL_53;
        }
      }

      v66 = v117;
      v67 = v119;
      IPv6Address.init(_:)();
      if ((*(v65 + 48))(v66, 1, v50) == 1)
      {

        sub_100011004(v66, &qword_100028A60, &qword_10001D9D0);
        v139 = 0;
        v140 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v139 = 0xD000000000000012;
        v140 = 0x800000010001FA40;
        v68._countAndFlagsBits = v67;
        v68._object = v56;
        String.append(_:)(v68);

        v69._countAndFlagsBits = 10;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        if (qword_100029458 != -1)
        {
          swift_once();
        }

        String.append(_:)(xmmword_1000297E8);
        v70 = v139;
        v71 = v140;
        sub_100009A68();
        swift_allocError();
        *v72 = v70;
        v72[1] = v71;
        swift_willThrow();
        goto LABEL_68;
      }

      v86 = v66;
      v87 = *(v65 + 32);
      v88 = v113;
      v87(v113, v86, v50);
      v89 = v88;
      v55 = v123;
      v87(v14, v89, v50);
      v54 = v127;
      v78 = v135;
      if (v135)
      {
        goto LABEL_54;
      }

      goto LABEL_59;
    }

LABEL_3:
    v129 = v26;
LABEL_4:
    while (2)
    {
      v30 = v27;
      while (2)
      {
        v31 = (v137 + 16 * v28);
        v32 = v28;
        while (1)
        {
          if (v32 >= v29)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v27 = v26;
            v131 = v1;
            v14 = v133;
            v26 = v129;
            goto LABEL_31;
          }

          v28 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_70;
          }

          v26 = *(v31 - 1);
          v1 = *v31;
          if (v32)
          {
            break;
          }

          v33 = v26 == 0x6E6E75742D687373 && v1 == 0xEA00000000006C65;
          if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_71;
          }

          v32 = 1;
          v31 += 2;
          if (v28 == v29)
          {
            goto LABEL_30;
          }
        }

        switch(v32)
        {
          case 1uLL:

            v138 = v1;
            v130 = v26;
            if (v28 != v29)
            {
              continue;
            }

            v130 = v26;
            v138 = v1;
LABEL_30:
            v14 = v133;
            v26 = v129;
            v27 = v30;
            goto LABEL_31;
          case 2uLL:

            v131 = v1;
            v27 = v26;
            if (v28 != v29)
            {
              goto LABEL_4;
            }

            goto LABEL_72;
          case 3uLL:

            v134 = v1;
            v14 = v133;
            v27 = v30;
            if (v28 != v29)
            {
              goto LABEL_3;
            }

            goto LABEL_31;
        }
      }

      v14 = v133;
      if (v32 == 4)
      {

        v135 = v1;
        v123 = v26;
        v27 = v30;
        if (v28 != v29)
        {
          continue;
        }

        v123 = v26;
        v135 = v1;
        v26 = v129;
        goto LABEL_31;
      }

      break;
    }

    v119 = v26;
    v132 = v1;
    v33 = v32 == 5;
    v26 = v129;
    v27 = v30;
    if (v33)
    {
      continue;
    }

    break;
  }

  v139 = 0;
  v140 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v34 = 0xD000000000000032;
  v35 = 0x800000010001F980;
LABEL_35:
  String.append(_:)(*&v34);
LABEL_37:
  if (qword_100029458 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_1000297E8);
  v44 = v139;
  v45 = v140;
  sub_100009A68();
  swift_allocError();
  *v46 = v44;
  v46[1] = v45;
  return swift_willThrow();
}

void sub_10000ECC8()
{
  v0 = type metadata accessor for IPv6Address();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint.Port();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010001FD90;
  String.append(_:)(v8);
  v9 = sub_10000D660();
  v22 = *(v5 + 16);
  v22(v7, v9, v4);
  _print_unlocked<A, B>(_:_:)();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v10._countAndFlagsBits = 0x50497475643C203ELL;
  v10._object = 0xEC000000203F3F20;
  String.append(_:)(v10);
  v11 = sub_10000D84C();
  v12 = v1;
  v13 = *(v1 + 16);
  v13(v3, v11, v0);
  _print_unlocked<A, B>(_:_:)();
  v14 = *(v12 + 8);
  v20[1] = v12 + 8;
  v14(v3, v0);
  v15._object = 0x800000010001FDC0;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  v16 = sub_10000D7FC();
  v22(v7, v16, v4);
  _print_unlocked<A, B>(_:_:)();
  v21(v7, v4);
  v17._countAndFlagsBits = 0x6C61636F6C3C203ELL;
  v17._object = 0xEE00203F3F205049;
  String.append(_:)(v17);
  v18 = sub_10000D9C8();
  v13(v3, v18, v0);
  _print_unlocked<A, B>(_:_:)();
  v14(v3, v0);
  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  xmmword_1000297E8 = v23;
}

uint64_t sub_10000F044(uint64_t a1)
{
  v3 = sub_100008D88(&qword_100028A60, &qword_10001D9D0);
  v4 = __chkstk_darwin(v3 - 8);
  v80 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = v78 - v6;
  v7 = type metadata accessor for IPv6Address();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = __chkstk_darwin(v7);
  v79 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v78 - v10;
  v11 = sub_100008D88(&qword_100028A68, &qword_10001D9D8);
  __chkstk_darwin(v11 - 8);
  v89 = v78 - v12;
  v13 = type metadata accessor for NWEndpoint.Port();
  v90 = *(v13 - 8);
  v91 = v13;
  __chkstk_darwin(v13);
  v87 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = 0;
  v81 = 0;
  v94 = 0;
  v95 = 0;
  v84 = 0;
  v15 = 0;
  v92 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = a1 + 40;
LABEL_2:
  while (v17 != v18)
  {
    v93 = v15;
    while (2)
    {
      v20 = (v19 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v18)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_53;
        }

        v22 = *v20;
        if (v21)
        {
          break;
        }

        v23 = *(v20 - 1) == 0xD000000000000013 && 0x800000010001FAE0 == v22;
        if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_54;
        }

        v21 = 1;
        v20 += 2;
        if (v17 == v18)
        {
          goto LABEL_25;
        }
      }

      v24 = *(v20 - 1);
      v1 = v22;

      switch(v21)
      {
        case 1uLL:

          v16 = v1;
          v92 = v24;
          if (v17 != v18)
          {
            continue;
          }

          v92 = v24;
          v16 = v1;
LABEL_25:
          v15 = v93;
          goto LABEL_26;
        case 2uLL:

          v95 = v1;
          v88 = v24;
          if (v17 != v18)
          {
            continue;
          }

          v88 = v24;
          v95 = v1;
          goto LABEL_25;
        case 3uLL:

          v84 = v24;
          v15 = v1;
          goto LABEL_2;
      }
    }

    v81 = v24;
    v94 = v1;
    v15 = v93;
    if (v21 != 4)
    {

      v25 = 0x800000010001FAA0;
      sub_100009A68();
      swift_allocError();
      v27 = 0xD00000000000003ALL;
      goto LABEL_31;
    }
  }

LABEL_26:
  if (!v16)
  {

    v25 = 0x800000010001FB00;
    sub_100009A68();
    swift_allocError();
    v27 = 0xD000000000000046;
LABEL_31:
    *v26 = v27;
    v26[1] = v25;
    return swift_willThrow();
  }

  v28 = v95;
  if (!v95)
  {
    v30 = 7104878;

    v29 = v89;
    (*(v90 + 56))(v89, 1, 1, v91);
    v28 = 0xE300000000000000;
    goto LABEL_33;
  }

  v30 = v88;
  v29 = v89;
  NWEndpoint.Port.init(_:)();
  v19 = v90;
  v31 = v91;
  if ((*(v90 + 48))(v29, 1, v91) == 1)
  {

LABEL_33:
    sub_100011004(v29, &qword_100028A68, &qword_10001D9D8);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v96 = 0xD000000000000023;
    v97 = 0x800000010001FB50;
    v32._countAndFlagsBits = v30;
    v32._object = v28;
    String.append(_:)(v32);

    v33 = v96;
    v34 = v97;
    sub_100009A68();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    return swift_willThrow();
  }

  v37 = v87;
  (*(v19 + 32))(v87, v29, v31);
  if (!v15)
  {
    v42 = 7104878;

    v38 = v83;
    (*(v85 + 56))(v83, 1, 1, v86);
    v15 = 0xE300000000000000;
    goto LABEL_39;
  }

  v38 = v83;
  IPv6Address.init(_:)();
  v39 = v85;
  v40 = v86;
  v41 = *(v85 + 48);
  if (v41(v38, 1, v86) == 1)
  {

    v37 = v87;
    v31 = v91;
    v42 = v84;
LABEL_39:
    sub_100011004(v38, &qword_100028A60, &qword_10001D9D0);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v96 = 0xD00000000000001ELL;
    v97 = 0x800000010001FB80;
    v43._countAndFlagsBits = v42;
    v43._object = v15;
    String.append(_:)(v43);

    v44 = v96;
    v45 = v97;
    sub_100009A68();
    swift_allocError();
    *v46 = v44;
    v46[1] = v45;
    swift_willThrow();
    return (*(v19 + 8))(v37, v31);
  }

  v47 = v40;
  v48 = v39;
  v49 = *(v39 + 32);
  v49(v82, v38, v47);
  v50 = v94;
  if (!v94)
  {
    v54 = 7104878;

    v52 = v48;
    v57 = *(v48 + 56);
    v51 = v80;
    v56 = v86;
    v57(v80, 1, 1, v86);
    v53 = 0xE300000000000000;
    v55 = v87;
    goto LABEL_44;
  }

  v51 = v80;
  IPv6Address.init(_:)();
  if (v41(v51, 1, v86) == 1)
  {

    v52 = v85;
    v53 = v50;
    v54 = v81;
    v56 = v86;
    v55 = v87;
LABEL_44:
    sub_100011004(v51, &qword_100028A60, &qword_10001D9D0);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v96 = 0xD000000000000021;
    v97 = 0x800000010001FBA0;
    v58._countAndFlagsBits = v54;
    v58._object = v53;
    String.append(_:)(v58);

    v59 = v96;
    v60 = v97;
    sub_100009A68();
    swift_allocError();
    *v61 = v59;
    v61[1] = v60;
    swift_willThrow();
    (*(v52 + 8))(v82, v56);
    v62 = *(v19 + 8);
    v63 = v55;
    return v62(v63, v91);
  }

  v17 = v79;
  v1 = v86;
  v49(v79, v51, v86);
  v18 = v87;
  v21 = v82;
  v64 = v78[1];
  sub_1000161D0(v92, v16, v87, v82, v17);
  if (!v64)
  {
LABEL_55:

    v77 = *(v85 + 8);
    v77(v17, v1);
    v77(v21, v1);
    v62 = *(v19 + 8);
    v63 = v18;
    return v62(v63, v91);
  }

  if (qword_100029450 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_10000D698(v65, qword_1000297D0);
  swift_errorRetain();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    swift_errorRetain();
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v70;
    *v69 = v70;
    _os_log_impl(&_mh_execute_header, v66, v67, "remotectl ssh-tunnel-callback failed: %@", v68, 0xCu);
    sub_100011004(v69, &qword_100028C90, &qword_10001D990);
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v71._countAndFlagsBits = 0xD000000000000026;
  v71._object = 0x800000010001FBD0;
  String.append(_:)(v71);
  v98 = v64;
  sub_100008D88(&unk_100028C70, &qword_10001D9E0);
  _print_unlocked<A, B>(_:_:)();
  v72 = v96;
  v73 = v97;
  sub_100009A68();
  swift_allocError();
  *v74 = v72;
  v74[1] = v73;
  swift_willThrow();

  v75 = v86;
  v76 = *(v85 + 8);
  v76(v79, v86);
  v76(v82, v75);
  return (*(v19 + 8))(v87, v91);
}

uint64_t sub_10000FB88(int a1, void *a2, void (*a3)(void))
{
  sub_10000DBBC(a1, a2);
  a3();
}

uint64_t sub_10000FC80(void *a1)
{
  v2 = sub_100008D88(&qword_100028A60, &qword_10001D9D0);
  v3 = __chkstk_darwin(v2 - 8);
  v108 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v100 - v5;
  v7 = type metadata accessor for IPv6Address();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v100 - v11;
  v12 = sub_100008D88(&qword_100028A68, &qword_10001D9D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v100 - v13;
  v15 = type metadata accessor for NWEndpoint.Port();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[2];
  if (!v19)
  {
    goto LABEL_6;
  }

  if ((a1[4] != 0xD000000000000015 || 0x800000010001FC40 != a1[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (v19 == 1)
  {
LABEL_6:
    v20 = 7104878;

    (*(v16 + 56))(v14, 1, 1, v15);
    v21 = 0xE300000000000000;
LABEL_7:
    sub_100011004(v14, &qword_100028A68, &qword_10001D9D8);
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v121 = 0xD000000000000023;
    v122 = 0x800000010001FC60;
    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = v121;
    v24 = v122;
    sub_100009A68();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    return swift_willThrow();
  }

  v103 = v6;
  v100 = v7;
  v101 = v8;
  v102 = v18;
  v104 = v16;
  v105 = v15;
  v21 = 0;
  v20 = 0;
  v27 = 0;
  v114 = 0;
  v115 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  v116 = 0;
  v28 = (a1 + 7);
  for (i = 1; i != v19; ++i)
  {
    v30 = *(v28 - 1);
    v31 = *v28;

    if (i > 3)
    {
      switch(i)
      {
        case 4:
          v112 = v30;
          v120 = v31;
LABEL_11:
          v30 = v20;
LABEL_12:

          v20 = v30;
          goto LABEL_13;
        case 5:
          v113 = v30;
          v119 = v31;
          goto LABEL_11;
        case 6:
          v111 = v30;
          v118 = v31;
          goto LABEL_11;
      }
    }

    else
    {
      switch(i)
      {
        case 1:
          v21 = v31;
          goto LABEL_12;
        case 2:
          v115 = v30;
          v27 = v31;
          goto LABEL_11;
        case 3:
          v114 = v30;
          v117 = v31;
          goto LABEL_11;
      }
    }

    if (i != 7)
    {

      sub_100009A68();
      swift_allocError();
      *v39 = 0xD000000000000037;
      v39[1] = 0x800000010001FC00;
      return swift_willThrow();
    }

    v110 = v30;
    v116 = v31;
LABEL_13:
    v28 += 2;
  }

  v32 = v103;
  if (!v21)
  {
    v16 = v104;
    v15 = v105;
    goto LABEL_6;
  }

  NWEndpoint.Port.init(_:)();
  v7 = v104;
  v33 = v105;
  if ((*(v104 + 48))(v14, 1, v105) == 1)
  {

    goto LABEL_7;
  }

  v34 = v102;
  (*(v7 + 32))(v102, v14, v33);
  if (!v27)
  {
    v35 = 7104878;

    (*(v101 + 56))(v32, 1, 1, v100);
    v27 = 0xE300000000000000;
LABEL_37:
    sub_100011004(v32, &qword_100028A60, &qword_10001D9D0);
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v121 = 0xD00000000000001ELL;
    v122 = 0x800000010001FC90;
    v40._countAndFlagsBits = v35;
    v40._object = v27;
    String.append(_:)(v40);

    v41 = v121;
    v42 = v122;
    sub_100009A68();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
    return (*(v7 + 8))(v34, v33);
  }

  v35 = v115;
  IPv6Address.init(_:)();
  v36 = v101;
  v37 = *(v101 + 48);
  v38 = v100;
  if (v37(v32, 1, v100) == 1)
  {

    v34 = v102;
    goto LABEL_37;
  }

  v44 = *(v36 + 32);
  v44(v109, v32, v38);
  v45 = v117;
  if (!v117)
  {
    v49 = 7104878;

    v50 = *(v36 + 56);
    v48 = v36;
    v46 = v108;
    v50(v108, 1, 1, v38);
    v45 = 0xE300000000000000;
    v47 = v102;
LABEL_42:
    sub_100011004(v46, &qword_100028A60, &qword_10001D9D0);
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v121 = 0xD000000000000020;
    v122 = 0x800000010001FCB0;
    v51._countAndFlagsBits = v49;
    v51._object = v45;
    String.append(_:)(v51);

    v52 = v121;
    v53 = v122;
    sub_100009A68();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
    (*(v48 + 8))(v109, v38);
    return (*(v7 + 8))(v47, v105);
  }

  v46 = v108;
  IPv6Address.init(_:)();
  if (v37(v46, 1, v38) == 1)
  {

    v47 = v102;
    v48 = v101;
    v49 = v114;
    goto LABEL_42;
  }

  v55 = v46;
  v56 = v107;
  v44(v107, v55, v38);
  v57 = v119;
  if (!v119)
  {
    v57 = 0xE300000000000000;
    v58 = 7104878;
    v8 = v105;
    goto LABEL_58;
  }

  v58 = v113;
  v59 = sub_100010BB8(v113, v57);
  v16 = 0xD00000000000001BLL;
  v8 = v105;
  if ((v59 & 0x100000000) != 0)
  {
LABEL_58:

    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v121 = 0xD00000000000001BLL;
    v122 = 0x800000010001FCE0;
    v85 = v58;
LABEL_61:
    v86 = v57;
    String.append(_:)(*&v85);
LABEL_62:

    v87 = v121;
    v88 = v122;
    sub_100009A68();
    swift_allocError();
    *v89 = v87;
    v89[1] = v88;
    swift_willThrow();
    v90 = *(v101 + 8);
    v91 = v56;
LABEL_63:
    v92 = v100;
    v90(v91, v100);
    v90(v109, v92);
    return (*(v7 + 8))(v102, v8);
  }

  v60 = v59;

  v57 = v120;
  if (!v120)
  {
    v57 = 0xE300000000000000;
    v61 = 7104878;
    goto LABEL_60;
  }

  v61 = v112;
  v62 = sub_100010BB8(v112, v57);
  if ((v62 & 0x100000000) != 0)
  {
LABEL_60:

    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v121 = 0xD00000000000001BLL;
    v122 = 0x800000010001FD00;
    v85 = v61;
    goto LABEL_61;
  }

  v63 = v62;

  v64 = v118;
  if (!v118)
  {
    v64 = 0xE300000000000000;
    v65 = 7104878;
    goto LABEL_65;
  }

  v65 = v111;
  v66 = sub_100010BB8(v111, v64);
  if ((v66 & 0x100000000) != 0)
  {
LABEL_65:

    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v121 = 0xD00000000000001BLL;
    v122 = 0x800000010001FD20;
    v93._countAndFlagsBits = v65;
    v93._object = v64;
    String.append(_:)(v93);
    goto LABEL_62;
  }

  v67 = v66;

  v68 = v116;
  if (!v116)
  {
LABEL_67:
    v68 = 0xE300000000000000;
    v69 = 7104878;
    goto LABEL_68;
  }

  v69 = v110;
  v70 = sub_100010BB8(v110, v68);
  if ((v70 & 0x100000000) != 0)
  {
LABEL_68:
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v121 = v16 + 1;
    v122 = 0x800000010001FD40;
    v94._countAndFlagsBits = v69;
    v94._object = v68;
    String.append(_:)(v94);

    v95 = v121;
    v96 = v122;
    sub_100009A68();
    swift_allocError();
    *v97 = v95;
    v97[1] = v96;
    swift_willThrow();
    v90 = *(v101 + 8);
    v91 = v107;
    goto LABEL_63;
  }

  v71 = v70;

  if ((v71 | v67) < 0)
  {
    __break(1u);
LABEL_71:
    swift_once();
LABEL_54:
    v73 = type metadata accessor for Logger();
    sub_10000D698(v73, qword_1000297D0);
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v78;
      *v77 = v78;
      _os_log_impl(&_mh_execute_header, v74, v75, "remotectl ssh-tunnel-privileged failed: %@", v76, 0xCu);
      sub_100011004(v77, &qword_100028C90, &qword_10001D990);
    }

    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v79._countAndFlagsBits = 0xD000000000000028;
    v79._object = 0x800000010001FD60;
    String.append(_:)(v79);
    v123 = v60;
    sub_100008D88(&unk_100028C70, &qword_10001D9E0);
    _print_unlocked<A, B>(_:_:)();
    v80 = v121;
    v81 = v122;
    sub_100009A68();
    swift_allocError();
    *v82 = v80;
    v82[1] = v81;
    swift_willThrow();

    v83 = *(v101 + 8);
    v84 = v100;
    v83(v107, v100);
    v83(v109, v84);
    return (*(v104 + 8))(v102, v105);
  }

  else
  {
    v72 = v106;
    sub_100006B00(v102, v109, v107, v63, v60, v67, v71);
    v60 = v72;
    if (v72)
    {
      if (qword_100029450 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_71;
    }

    v98 = *(v101 + 8);
    v99 = v100;
    v98(v107, v100);
    v98(v109, v99);
    return (*(v104 + 8))(v102, v105);
  }
}

unint64_t sub_100010BB8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100011064(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

char *sub_100010E94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008D88(&qword_100028A70, &qword_10001D9E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_100010FA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008D88(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unsigned __int8 *sub_100011064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000115E0(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000115E0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100011660(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100011660(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100009610(v9, 0), v12 = sub_1000117B8(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000117B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000119D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000119D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000119D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_100011A54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5, uint64_t a6, void *a7, int a8)
{
  v40 = a8;
  v44._countAndFlagsBits = a6;
  v44._object = a7;
  v43._countAndFlagsBits = a3;
  v43._object = a4;
  v41 = a1;
  v42 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008D88(&unk_100028E60, &unk_10001DA10);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(NSTask) init];
  (*(v17 + 56))(v15, 1, 1, v16);
  (*(v10 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  (*(v17 + 8))(v19, v16);
  [v20 setExecutableURL:v23];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10001D9F0;
  *(v24 + 32) = 28461;
  *(v24 + 40) = 0xE200000000000000;
  *(v24 + 48) = 0xD000000000000018;
  *(v24 + 56) = 0x800000010001FEE0;
  *(v24 + 64) = 21037;
  *(v24 + 72) = 0xE200000000000000;
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v46 = 0x3A5D313A3A5BLL;
  v47 = 0xE600000000000000;
  v45 = a5;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x3A5D313A3A5B3ALL;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v45 = v40;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28 = v47;
  *(v24 + 80) = v46;
  *(v24 + 88) = v28;
  v29 = v42;
  *(v24 + 96) = v41;
  *(v24 + 104) = v29;
  v46 = 0;
  v47 = 0xE000000000000000;

  _StringGuts.grow(_:)(57);
  v30._countAndFlagsBits = 0xD000000000000031;
  v30._object = 0x800000010001FF00;
  String.append(_:)(v30);
  v45 = a5;
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  String.append(_:)(v43);
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  String.append(_:)(v44);
  v34 = v47;
  *(v24 + 112) = v46;
  *(v24 + 120) = v34;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setArguments:isa];

  v46 = 0;
  if ([v20 launchAndReturnError:&v46])
  {
    v36 = v46;
  }

  else
  {
    v37 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v20;
}

void sub_100011F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a6;
  v78 = a3;
  v79 = a5;
  v75 = a4;
  v76 = a1;
  v77 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 1024;
  bzero((v9 + 32), 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath((v9 + 32), &bufsize) == -1)
  {

    __break(1u);
  }

  v10 = String.init(cString:)();
  v12 = v11;
  v74 = sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v13 = swift_allocObject();
  v73 = xmmword_10001D5E0;
  *(v13 + 16) = xmmword_10001D5E0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0xD000000000000052;
  *(v13 + 40) = 0x800000010001FE00;
  print(_:separator:terminator:)();

  v14 = getpgrp();
  v15 = getegid();
  v16 = getuid();
  v17 = getpid();
  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10001DA00;
  *(v18 + 32) = v10;
  *(v18 + 40) = v12;
  *(v18 + 48) = 0xD000000000000015;
  *(v18 + 56) = 0x800000010001FC40;
  LOWORD(aBlock) = NWEndpoint.Port.rawValue.getter();
  *(v18 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 72) = v19;
  *(v18 + 80) = IPv6Address.debugDescription.getter();
  *(v18 + 88) = v20;
  *(v18 + 96) = IPv6Address.debugDescription.getter();
  *(v18 + 104) = v21;
  LODWORD(aBlock) = v16;
  *(v18 + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 120) = v22;
  LODWORD(aBlock) = v15;
  *(v18 + 128) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 136) = v23;
  LODWORD(aBlock) = v17;
  *(v18 + 144) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 152) = v24;
  LODWORD(aBlock) = v14;
  *(v18 + 160) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 168) = v25;
  v26 = v81;
  v27 = sub_100014558();

  if (v26)
  {

    return;
  }

  v66 = 0;
  v81 = v27;
  aBlock = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  aBlock = 0x6D65722F706D742FLL;
  v83 = 0xEF2E6C746365746FLL;
  v88 = v17;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x2D7265706C65682ELL;
  v29._object = 0xED00007964616572;
  String.append(_:)(v29);
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 fileExistsAtPath:v32];

  if ((v33 & 1) == 0)
  {
    v34 = 62;
    while (1)
    {
      --v34;
      v35 = v81;
      if (!v34 || ([v81 isRunning] & 1) == 0)
      {
        break;
      }

      sleep(1u);
      v36 = [v30 defaultManager];
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 fileExistsAtPath:v37];

      if (v38)
      {
        goto LABEL_9;
      }
    }

    sub_100009A68();
    swift_allocError();
    *v55 = 0xD00000000000001ALL;
    v55[1] = 0x800000010001FE60;
    swift_willThrow();
    goto LABEL_16;
  }

LABEL_9:

  v39 = [v30 defaultManager];
  v40 = String._bridgeToObjectiveC()();

  aBlock = 0;
  v41 = [v39 removeItemAtPath:v40 error:&aBlock];

  v42 = aBlock;
  if (!v41)
  {
    v56 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_14;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = v73;
  *(v43 + 56) = &type metadata for String;
  *(v43 + 32) = 0xD000000000000037;
  *(v43 + 40) = 0x800000010001FE80;
  v44 = v42;
  print(_:separator:terminator:)();

  v45 = IPv6Address.debugDescription.getter();
  v47 = v46;
  v48 = NWEndpoint.Port.rawValue.getter();
  v49 = IPv6Address.debugDescription.getter();
  v51 = v50;
  v52 = NWEndpoint.Port.rawValue.getter();
  v53 = v66;
  v54 = sub_100011A54(v76, v77, v45, v47, v48, v49, v51, v52);
  if (v53)
  {

LABEL_14:

    return;
  }

  v57 = v54;

  v58 = SIG_IGN.getter();
  signal(2, v58);
  sub_100008A2C(0, &qword_100028C80, OS_dispatch_source_ptr);
  sub_100008A2C(0, &qword_1000288B0, OS_dispatch_queue_ptr);
  v59 = static OS_dispatch_queue.main.getter();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  v86 = sub_100012A50;
  v87 = v60;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100008C74;
  v85 = &unk_100025730;
  v61 = _Block_copy(&aBlock);
  v62 = v57;
  v63 = v67;
  static DispatchQoS.unspecified.getter();
  v64 = v69;
  sub_100008CD0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v61);
  (*(v71 + 8))(v64, v72);
  (*(v68 + 8))(v63, v70);

  OS_dispatch_source.resume()();
  v35 = v81;
  [v81 waitUntilExit];

  swift_unknownObjectRelease();
LABEL_16:
}

uint64_t sub_1000127C8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008D88(&qword_1000288D8, &unk_10001D600);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001D5E0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = 0xD000000000000012;
  *(v6 + 40) = 0x800000010001FEC0;
  print(_:separator:terminator:)();

  result = kill([a1 processIdentifier], 9);
  if (result)
  {
    v8 = sub_10000DB58();
    (*(v3 + 16))(v5, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v14 = v13;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v15;
      *v12 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to shut down SSH: %@", v11, 0xCu);
      sub_100009BDC(v12);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100012A18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012A70()
{
  result = qword_100028938;
  if (!qword_100028938)
  {
    sub_100009EF4(&qword_100028930, qword_10001D880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028938);
  }

  return result;
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a2;
  v31 = a3;
  v40 = a1;
  v28 = type metadata accessor for IPv6Address();
  v37 = *(v28 - 8);
  v5 = __chkstk_darwin(v28);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v27 - v7;
  v8 = type metadata accessor for NWEndpoint.Port();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWEndpoint.Host();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
  dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
  type metadata accessor for NWConnection();
  v32 = v13;
  v16 = *(v13 + 16);
  v34 = v12;
  v17 = v12;
  v18 = v28;
  v16(v15, v40, v17);
  v35 = v9;
  v36 = v8;
  (*(v9 + 16))(v11, v39, v8);
  type metadata accessor for NWParameters();

  NWParameters.__allocating_init(tls:tcp:)();
  v19 = v31;
  v20 = NWConnection.__allocating_init(host:port:using:)();
  v21 = *(v37 + 16);
  v22 = v29;
  v21(v29, v19, v18);
  v23 = v30;
  v21(v30, v38, v18);
  v24 = (*(v33 + 152))(v20, v22, v23);

  v25 = *(v37 + 8);
  v25(v38, v18);
  v25(v19, v18);
  (*(v35 + 8))(v39, v36);
  (*(v32 + 8))(v40, v34);
  return v24;
}

uint64_t sub_100012E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100012EEC(a1, a2, a3);
  return v6;
}

void *sub_100012EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for IPv6Address();
  v49 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v33 - v9;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v3[4] = 0;
  v37 = sub_10000A404();
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v15 = sub_10000D644();
  v17 = *v15;
  v16 = v15[1];
  v33 = v15;

  v47 = v17;
  v48 = v16;
  v18._countAndFlagsBits = 0xD000000000000016;
  v18._object = 0x800000010001FF40;
  String.append(_:)(v18);
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  sub_100014450(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_100012A70();
  v19 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  v3[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_exitSemaphore;
  *(v3 + v20) = dispatch_semaphore_create(0);
  type metadata accessor for UtunSocket(0);
  v21 = v3[5];
  v22 = *(v49 + 16);
  v23 = v41;
  v22(v41, v45, v19);
  v24 = v42;
  v22(v42, v46, v19);
  v25 = v21;
  v26 = v43;
  v27 = sub_100017D64(v25, v23, v24);
  if (v26)
  {

    v28 = *(v49 + 8);
    v28(v46, v19);
    v28(v45, v19);

    type metadata accessor for TCPPacketTunnelClient(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v44;
    v3[2] = v27;
    v3[3] = v29;

    v30 = v34;
    Logger.init(subsystem:category:)();
    (*(v35 + 32))(v3 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v30, v36);

    sub_10000B858(sub_1000134EC, v3);
    NWConnection.stateUpdateHandler.setter();

    v31 = *(v49 + 8);
    v31(v46, v19);
    v31(v45, v19);
  }

  return v4;
}

uint64_t type metadata accessor for TCPPacketTunnelClient(uint64_t a1)
{
  result = qword_100029470;
  if (!qword_100029470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000134F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWConnection.State();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v26 = *(v5 + 16);
  v27 = a1;
  v26(v24 - v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v8;
    v14 = v13;
    v24[0] = swift_slowAlloc();
    v28 = v24[0];
    *v14 = 136315138;
    sub_100014450(&qword_100028A58, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v24[1] = v2;
    v17 = v16;
    v18 = *(v5 + 8);
    v18(v10, v4);
    v19 = sub_1000091D0(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "NWConnection in state %s", v14, 0xCu);
    sub_100009D1C(v24[0]);

    v8 = v25;
  }

  else
  {

    v18 = *(v5 + 8);
    v18(v10, v4);
  }

  v26(v8, v27, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == enum case for NWConnection.State.waiting(_:) || result == enum case for NWConnection.State.failed(_:))
  {
    v18(v8, v4);
    return sub_100014024();
  }

  if (result != enum case for NWConnection.State.setup(_:) && result != enum case for NWConnection.State.preparing(_:) && result != enum case for NWConnection.State.ready(_:))
  {
    if (result != enum case for NWConnection.State.cancelled(_:))
    {
      return (v18)(v8, v4);
    }

    return sub_100014024();
  }

  return result;
}

uint64_t sub_100013890()
{
  v2 = v0;
  type metadata accessor for TCPPacketTunnel(0);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = sub_100014808(v3, v4);
  v6 = *(*v4 + 240);

  v7 = v6(sub_1000139DC, v5);
  v9 = v8;

  if (!v1)
  {
    sub_100009FE4(v7, v9);

    v11 = NWConnection.start(queue:)();
    (*(*v5 + 128))(v11);
    *(v2 + 32) = v5;
  }
}

uint64_t sub_100013A00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v42[-v7];
  v9 = type metadata accessor for NWConnection.State();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v42[-v14];

  NWConnection.state.getter();

  v16 = (*(v10 + 88))(v15, v9);
  if (v16 == enum case for NWConnection.State.setup(_:) || v16 == enum case for NWConnection.State.preparing(_:) || v16 == enum case for NWConnection.State.ready(_:))
  {
    v46 = v6;
    (*(v3 + 16))(v8, v0 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v2;
      v22 = v21;
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v22 = 136315138;
      v43 = v20;
      NWConnection.state.getter();
      sub_100014450(&qword_100028A58, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v10 + 8))(v13, v9);
      v26 = sub_1000091D0(v23, v25, v47);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v43, "NWConnection in state %s at deinit", v22, 0xCu);
      sub_100009D1C(v44);

      v2 = v45;
    }

    (*(v3 + 8))(v8, v2);
    v6 = v46;
  }

  else
  {
    (*(v10 + 8))(v15, v9);
  }

  v27 = *(**(v1 + 16) + 152);

  v27(v28);
  v30 = v29;

  if (v30)
  {

    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v35 = (*(**(v1 + 16) + 152))();
      v46 = v6;
      v47[0] = v35;
      v47[1] = v36;
      sub_1000143FC();
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;

      v40 = sub_1000091D0(v37, v39, &v48);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Utun in state %s at deinit, not disconnected.", v33, 0xCu);
      sub_100009D1C(v34);

      (*(v3 + 8))(v46, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC15SSHPacketTunnel21TCPPacketTunnelClient_logger, v2);
  return v1;
}

uint64_t sub_100013FCC()
{
  sub_100013A00();

  return swift_deallocClassInstance();
}

Swift::Int sub_100014024()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.state.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for NWConnection.State.waiting(_:) || v6 == enum case for NWConnection.State.failed(_:))
  {
LABEL_9:
    (*(v3 + 8))(v5, v2);
    goto LABEL_10;
  }

  if (v6 != enum case for NWConnection.State.cancelled(_:))
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Shutting down utun before NWConnection is shut down", v10, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v11 = sub_10000A0C0();
  (*(**(v1 + 16) + 272))(v11);
  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_1000143FC()
{
  result = qword_100028A78;
  if (!qword_100028A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A78);
  }

  return result;
}

uint64_t sub_100014450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000144A0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100014558()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSTask) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setLaunchPath:v6];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setArguments:isa];

  [v5 launch];
  v8 = getpgid([v5 processIdentifier]);
  if (tcsetpgrp(0, v8))
  {
    v9 = sub_10000DB58();
    (*(v2 + 16))(v4, v9, v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[1] = v0;
      v14 = v13;
      *v12 = 138412290;
      v15 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v16 = v15;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v17;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to set sudo process to foreground: %@", v12, 0xCu);
      sub_100009BDC(v14);
    }

    (*(v2 + 8))(v4, v1);
  }

  kill([v5 processIdentifier], 19);
  return v5;
}

uint64_t sub_100014808(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100014858(a1, a2);
  return v4;
}

void *sub_100014858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v24 = a1;
  v4 = type metadata accessor for Logger();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v19 = sub_10000A404();
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v11 = sub_10000D644();
  v13 = *v11;
  v12 = v11[1];

  v27 = v13;
  v28 = v12;
  v14._object = 0x800000010001FFC0;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100015C80(&qword_100028928, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100008D88(&qword_100028930, qword_10001D880);
  sub_100012A70();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  *(v2 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_exitSemaphore;
  *(v3 + v15) = dispatch_semaphore_create(0);
  v16 = v24;
  *(v3 + 16) = v23;
  *(v3 + 24) = v16;

  v17 = v22;
  Logger.init(subsystem:category:)();
  (*(v25 + 32))(v3 + OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_logger, v17, v26);
  return v3;
}

uint64_t sub_100014BDC()
{

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();
}

uint64_t sub_100014C4C(uint64_t a1, unint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for NWConnection.SendCompletion();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    LODWORD(v9) = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = *(v21 + 16);
    v10 = *(v21 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_15;
    }

    v9 = v9;
LABEL_10:
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v9 >> 16))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v8)
  {
    goto LABEL_8;
  }

  LODWORD(v9) = BYTE6(a2);
LABEL_12:
  __src = bswap32(v9) >> 16;
  v13 = sub_1000159B8(&__src, &v23);
  v15 = v14;
  v18[0] = *(v2 + 24);
  *v7 = sub_100015A70;
  v7[1] = v2;
  v20 = enum case for NWConnection.SendCompletion.contentProcessed(_:);
  v19 = *(v5 + 104);
  v19(v7);
  v18[1] = type metadata accessor for NWConnection.ContentContext();
  sub_100015A94(v13, v15 & 0xFFFFFFFFFFFFFFLL);

  v18[2] = a2;
  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_100009B34(v13, v15 & 0xFFFFFFFFFFFFFFLL);
  v16 = *(v5 + 8);
  v16(v7, v4);
  *v7 = sub_100015AE8;
  v7[1] = v2;
  (v19)(v7, v20, v4);

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_100009B34(v13, v15 & 0xFFFFFFFFFFFFFFLL);
  return (v16)(v7, v4);
}

uint64_t sub_100014F14(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_100008D88(&qword_100028C58, "R?");
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for NWError();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_100015C10(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100011004(v8, &qword_100028C58, "R?");
  }

  v28 = a3;
  (*(v10 + 32))(v15, v8, v9);
  v17 = *(v10 + 16);
  v17(v13, v15, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v20 = 138412290;
    sub_100015C80(&unk_100028C60, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v27 = a2;
    v17(v21, v13, v9);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v10 + 8);
    v23(v13, v9);
    *(v20 + 4) = v22;
    v24 = v26;
    *v26 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, v28, v20, 0xCu);
    sub_100011004(v24, &qword_100028C90, &qword_10001D990);
  }

  else
  {

    v23 = *(v10 + 8);
    v23(v13, v9);
  }

  NWConnection.cancel()();
  return (v23)(v15, v9);
}

uint64_t sub_10001526C()
{

  v1 = OBJC_IVAR____TtC15SSHPacketTunnel15TCPPacketTunnel_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100015330(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100008D88(&qword_100028C58, "R?");
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for NWError();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  if (a3)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "TCP connection closed when reading header", v20, 2u);
    }

    NWConnection.cancel()();
    return;
  }

  sub_100015C10(a4, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v17, v10, v11);
    v24 = *(v12 + 16);
    v24(v15, v17, v11);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v49 = v27;
      v50 = swift_slowAlloc();
      *v27 = 138412290;
      sub_100015C80(&unk_100028C60, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v24(v28, v15, v11);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v12 + 8);
      v30(v15, v11);
      v31 = v49;
      v32 = v50;
      *(v49 + 1) = v29;
      *v32 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "TCP connection error %@ when reading header, shutting down...", v31, 0xCu);
      sub_100011004(v32, &qword_100028C90, &qword_10001D990);
    }

    else
    {

      v30 = *(v12 + 8);
      v30(v15, v11);
    }

    NWConnection.cancel()();
    v30(v17, v11);
    return;
  }

  sub_100011004(v10, &qword_100028C58, "R?");
  if (a2 >> 60 == 15)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No error on connection, but Data was nil when reading header", v23, 2u);
    }

    return;
  }

  v33 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v33)
    {
      if (BYTE6(a2) != 2)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v33 != 2)
  {
    goto LABEL_32;
  }

  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v36 = v34 - v35;
  if (__OFSUB__(v34, v35))
  {
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_42;
    }

    v36 = HIDWORD(a1) - a1;
  }

  sub_100015A94(a1, a2);
  if (v36 == 2)
  {
LABEL_25:
    if (v33 == 2)
    {
      v44 = *(a1 + 16);
      v45 = *(a1 + 24);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v44, v47))
        {
          goto LABEL_45;
        }

        v46 += v44 - v47;
      }

      if (!__OFSUB__(v45, v44))
      {
        __DataStorage._length.getter();
        if (!v46)
        {
LABEL_48:
          __break(1u);
          return;
        }

        goto LABEL_40;
      }

      goto LABEL_43;
    }

    if (v33 != 1)
    {
      goto LABEL_40;
    }

    if (a1 <= a1 >> 32)
    {
      v37 = __DataStorage._bytes.getter();
      if (!v37)
      {
        __DataStorage._length.getter();
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v39))
      {
        v40 = a1 - v39 + v38;
        __DataStorage._length.getter();
        if (!v40)
        {
          goto LABEL_47;
        }

LABEL_40:

        NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

        sub_100009B20(a1, a2);
        return;
      }

      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

LABEL_32:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Header read guaranteed to be length 2 by Network.framework", v43, 2u);
  }

  sub_100009B20(a1, a2);
}
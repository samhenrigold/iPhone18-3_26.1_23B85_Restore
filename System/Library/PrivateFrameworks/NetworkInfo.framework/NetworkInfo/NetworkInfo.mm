id DisplayAddressForAddress(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && !getnameinfo([v1 bytes], objc_msgSend(v1, "length"), v5, 0x401u, 0, 0, 2))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1];
    if (!v3)
    {
      DisplayAddressForAddress_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *icmpTypeToString(uint64_t a1)
{
  if ((a1 + 123) >= 5u)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = off_279968328[(a1 + 123)];
  }

  return v2;
}

void SocketReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    SocketReadCallback_cold_1();
  }

  if (v9[13] != a1)
  {
    SocketReadCallback_cold_2();
  }

  if (a2 != 1)
  {
    SocketReadCallback_cold_3();
  }

  if (a3)
  {
    SocketReadCallback_cold_4();
  }

  if (a4)
  {
    SocketReadCallback_cold_5();
  }

  [v9 readData];
}

uint64_t ping_runloop_thread(void *a1)
{
  v1 = a1;
  [v1 setPingRunLoop:CFRunLoopGetCurrent()];
  v2 = [v1 pingRunLoopReady];
  dispatch_semaphore_signal(v2);

  v3 = *MEMORY[0x277CBF058];
  do
  {
    CFRunLoopRunInMode(v3, 10.0, 1u);
  }

  while (([v1 running] & 1) != 0);

  return 0;
}

double __getMachTimeBaseInfo_block_invoke()
{
  if (mach_timebase_info(&getMachTimeBaseInfo_machTimeInfoData))
  {
    _os_assumes_log();
  }

  else if (HIDWORD(getMachTimeBaseInfo_machTimeInfoData))
  {
    return result;
  }

  *&result = 0x100000001;
  getMachTimeBaseInfo_machTimeInfoData = 0x100000001;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x3Au);
}

void sub_25B85F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void netqual_log_init(uint64_t result, uint64_t a2)
{
  if (netqual_log_init_onceToken != -1)
  {
    netqual_log_init_cold_1();
  }
}

uint64_t __netqual_log_init_block_invoke()
{
  os_log_netqual = os_log_create("com.apple.networkQuality", "netqual");

  return MEMORY[0x2821F96F8]();
}

uint64_t traceroute6_parseargs(uint64_t *a1, int a2, char **a3)
{
  __endptr = 0;
  v6 = MEMORY[0x277D85E68];
  while (2)
  {
    v7 = getopt(a2, a3, "aA:deEf:g:i:Ilm:nNp:q:rs:t:TUvw:");
    switch(v7)
    {
      case 'A':
        *(a1 + 855) = 1;
        a1[286] = *v6;
        continue;
      case 'B':
      case 'C':
      case 'D':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'o':
      case 'u':
        return 0xFFFFFFFFLL;
      case 'E':
        *(a1 + 854) = 1;
        continue;
      case 'I':
        *(a1 + 852) = 58;
        continue;
      case 'N':
        *(a1 + 852) = 59;
        continue;
      case 'T':
        *(a1 + 852) = 6;
        continue;
      case 'U':
        *(a1 + 852) = 17;
        continue;
      case 'a':
        *(a1 + 855) = 1;
        continue;
      case 'd':
        *(a1 + 849) |= 1u;
        continue;
      case 'e':
        *(a1 + 856) = 1;
        continue;
      case 'f':
        __endptr = 0;
        *__error() = 0;
        *(a1 + 847) = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr && *(a1 + 847) < 256)
        {
          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid min hoplimit.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid min hoplimit.\n";
        goto LABEL_79;
      case 'g':
        v10 = gethostbyname2(*v6, 30);
        if (!v10)
        {
          v22 = a1[1];
          if (!v22)
          {
            fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown host %s\n");
            return 0xFFFFFFFFLL;
          }

          v23 = *a1;
          v24 = "traceroute6: unknown host %s\n";
          goto LABEL_89;
        }

        v11 = v10;
        v12 = a1[284];
        if (!v12)
        {
          v12 = inet6_rth_init(a1 + 26, 0x810u, 0, 0);
          a1[284] = v12;
          if (!v12)
          {
            v14 = a1[1];
            if (!v14)
            {
              v19 = *MEMORY[0x277D85DF8];
              v20 = "inet6_rth_init failed.\n";
              v21 = 23;
              goto LABEL_114;
            }

            v15 = *a1;
            v16 = "inet6_rth_init failed.\n";
            goto LABEL_99;
          }
        }

        if (inet6_rth_add(v12, *v11->h_addr_list))
        {
          v22 = a1[1];
          if (!v22)
          {
            fprintf(*MEMORY[0x277D85DF8], "inet6_rth_add failed for %s\n");
            return 0xFFFFFFFFLL;
          }

          v23 = *a1;
          v24 = "inet6_rth_add failed for %s\n";
LABEL_89:
          v22(v23, v24);
          return 0xFFFFFFFFLL;
        }

        continue;
      case 'i':
        __endptr = 0;
        *__error() = 0;
        v9 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr || v9 >= 0x10000)
        {
          v14 = a1[1];
          if (!v14)
          {
            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: invalid ident.\n";
            v21 = 28;
            goto LABEL_114;
          }

          v15 = *a1;
          v16 = "traceroute6: invalid ident.\n";
LABEL_99:
          v14(v15, v16);
          return 0xFFFFFFFFLL;
        }

        *(a1 + 1683) = v9;
        continue;
      case 'l':
        ++*(a1 + 853);
        continue;
      case 'm':
        __endptr = 0;
        *__error() = 0;
        a1[430] = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr && a1[430] < 0x100)
        {
          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid max hoplimit.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid max hoplimit.\n";
LABEL_79:
        v21 = 35;
        goto LABEL_114;
      case 'n':
        ++*(a1 + 851);
        continue;
      case 'p':
        __endptr = 0;
        *__error() = 0;
        v8 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid port.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid port.\n";
          v21 = 27;
          goto LABEL_114;
        }

        if (v8 - 1 >= 0xFFFF)
        {
          v14 = a1[1];
          if (!v14)
          {
            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: port out of range.\n";
            goto LABEL_105;
          }

          v15 = *a1;
          v16 = "traceroute6: port out of range.\n";
          goto LABEL_99;
        }

        *(a1 + 1682) = v8;
        continue;
      case 'q':
        __endptr = 0;
        *__error() = 0;
        a1[429] = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid nprobes.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid nprobes.\n";
          v21 = 30;
          goto LABEL_114;
        }

        if (a1[429])
        {
          continue;
        }

        v14 = a1[1];
        if (!v14)
        {
          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: nprobes must be >0.\n";
          v21 = 33;
          goto LABEL_114;
        }

        v15 = *a1;
        v16 = "traceroute6: nprobes must be >0.\n";
        goto LABEL_99;
      case 'r':
        *(a1 + 849) |= 0x10u;
        continue;
      case 's':
        a1[287] = *v6;
        continue;
      case 't':
        __endptr = 0;
        *__error() = 0;
        v13 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr || v13 >= 0x100)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid traffic class.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid traffic class.\n";
          goto LABEL_113;
        }

        *(a1 + 848) = v13;
        continue;
      case 'v':
        ++*(a1 + 850);
        continue;
      case 'w':
        __endptr = 0;
        *__error() = 0;
        a1[431] = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr)
        {
          if (!a1[431])
          {
            v14 = a1[1];
            if (v14)
            {
              v15 = *a1;
              v16 = "traceroute6: wait must be >= 1 sec.\n";
              goto LABEL_99;
            }

            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_113:
            v21 = 36;
            goto LABEL_114;
          }

          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid wait time.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid wait time.\n";
LABEL_105:
        v21 = 32;
LABEL_114:
        fwrite(v20, v21, 1uLL, v19);
        return 0xFFFFFFFFLL;
      default:
        if (v7 != -1)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = MEMORY[0x277D85E78];
        v18 = a2 - *MEMORY[0x277D85E78];
        if (v18 == 1)
        {
          goto LABEL_109;
        }

        if (v18 != 2)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 843) = strtoul(*a3, &__endptr, 0);
        if (!*__error() && *a3 && !*__endptr)
        {
LABEL_109:
          v25 = a1[288];
          if (v25)
          {
            free(v25);
          }

          v26 = strdup(a3[*v17]);
          result = 0;
          a1[288] = v26;
          *MEMORY[0x277D85E88] = 1;
          *v17 = 1;
          return result;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid packet length.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid packet length.\n";
        goto LABEL_113;
    }
  }
}

uint64_t traceroute6_run(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = v1;
  v201 = *MEMORY[0x277D85DE8];
  v197 = xmmword_25B949890;
  v192 = 1;
  v189 = 0;
  if (!v1[288])
  {
    v9 = v1[1];
    if (!v9)
    {
      v11 = 1;
      fwrite("traceroute6: Error: No hostname provided in context.\n", 0x35uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return v11;
    }

    v9(*v1, "traceroute6: Error: No hostname provided in context.\n");
    return 1;
  }

  v3 = socket(30, 3, 58);
  *(v2 + 844) = v3;
  if (v3 < 0)
  {
    v20 = "socket(ICMPv6)";
LABEL_43:
    perror(v20);
    return 5;
  }

  v191 = 0;
  memset(&v190, 0, sizeof(v190));
  v188 = 0;
  if (!v2[430])
  {
    v188 = 8;
    sysctl(&v197, 4u, &v191, &v188, 0, 0);
    v2[430] = v191;
    v3 = *(v2 + 844);
  }

  if (setsockopt(v3, 41, 61, &v192, 4u) < 0)
  {
    traceroute6_run_cold_3();
  }

  if (setsockopt(*(v2 + 844), 41, 37, &v192, 4u) < 0)
  {
    traceroute6_run_cold_2();
  }

  *(v2 + 1683) = bswap32(getpid()) >> 16;
  v4 = *(v2 + 852);
  if (v4 > 0x3B || ((1 << v4) & 0xC00000000020040) == 0)
  {
    v12 = v2[1];
    if (v12)
    {
      v12(*v2, "traceroute6: unknown probe protocol %d\n", *(v2 + 852));
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d\n", *(v2 + 852));
    }

    return 5;
  }

  v5 = socket(30, 3, v4);
  *(v2 + 845) = v5;
  if (v5 < 0)
  {
    v20 = "socket(SOCK_RAW)";
    goto LABEL_43;
  }

  if (v2[430] < *(v2 + 847))
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = "traceroute6: max hoplimit must be larger than first hoplimit.\n";
LABEL_13:
      v6(v7, v8);
      return 0xFFFFFFFFLL;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "traceroute6: max hoplimit must be larger than first hoplimit.\n";
    v15 = 62;
    goto LABEL_24;
  }

  if (*(v2 + 854))
  {
    *(v2 + 848) = 1;
  }

  v10 = getuid();
  if (setuid(v10))
  {
    return 1;
  }

  if (*(v2 + 848) != -1 && setsockopt(*(v2 + 845), 41, 36, v2 + 424, 4u) == -1)
  {
    perror("setsockopt(IPV6_TCLASS)");
    return 7;
  }

  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0x400uLL);
  memset(&v190.ai_addrlen, 0, 32);
  *&v190.ai_flags = xmmword_25B949880;
  v16 = getaddrinfo(v2[288], 0, &v190, &v189);
  if (v16)
  {
    v17 = v2[1];
    if (v17)
    {
      v18 = *v2;
      v19 = gai_strerror(v16);
      v17(v18, "traceroute6: %s\n", v19);
    }

    else
    {
      v28 = *MEMORY[0x277D85DF8];
      gai_strerror(v16);
      fprintf(v28, "traceroute6: %s\n");
    }

    return 0xFFFFFFFFLL;
  }

  v21 = v189;
  if (v189->ai_addrlen != 28)
  {
    v29 = v2[1];
    if (v29)
    {
      v30 = *v2;
      v31 = "traceroute6: size of sockaddr mismatch\n";
LABEL_51:
      v29(v30, v31);
LABEL_55:
      freeaddrinfo(v189);
      return 0xFFFFFFFFLL;
    }

    v32 = *MEMORY[0x277D85DF8];
    v33 = "traceroute6: size of sockaddr mismatch\n";
    v34 = 39;
LABEL_54:
    fwrite(v33, v34, 1uLL, v32);
    goto LABEL_55;
  }

  ai_addr = v189->ai_addr;
  v23 = *ai_addr;
  *(v2 + 9) = *&ai_addr->sa_data[10];
  *(v2 + 60) = v23;
  v24 = v2[288];
  if (v24)
  {
    free(v24);
    v21 = v189;
  }

  ai_canonname = v21->ai_canonname;
  if (!ai_canonname)
  {
    v2[288] = 0;
    goto LABEL_49;
  }

  v26 = strdup(ai_canonname);
  v2[288] = v26;
  if (!v26)
  {
LABEL_49:
    v29 = v2[1];
    if (v29)
    {
      v30 = *v2;
      v31 = "traceroute6: not enough core\n";
      goto LABEL_51;
    }

    v32 = *MEMORY[0x277D85DF8];
    v33 = "traceroute6: not enough core\n";
    v34 = 29;
    goto LABEL_54;
  }

  if (v21->ai_next)
  {
    if (getnameinfo(v21->ai_addr, v21->ai_addrlen, v2 + 2336, 0x401u, 0, 0, 2))
    {
      __strlcpy_chk();
    }

    v27 = v2[1];
    if (v27)
    {
      v27(*v2, "traceroute6: Warning: %s has multiple addresses; using %s\n", v2[288], v2 + 2336);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: Warning: %s has multiple addresses; using %s\n", v2[288], v2 + 2336);
    }
  }

  freeaddrinfo(v189);
  v36 = *(v2 + 852);
  v37 = 8;
  if (v36 <= 57)
  {
    if (v36 == 6)
    {
      v37 = 20;
    }

    else if (v36 != 17)
    {
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if (v36 == 58)
  {
LABEL_70:
    v38 = *(v2 + 843);
    if (v38 >= v37)
    {
      if (v38 >= 0xFFFF)
      {
        v39 = v2[1];
        if (v39)
        {
          v39(*v2, "traceroute6: packet size must be %u <= s < %d.\n", v37, 0xFFFF);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "traceroute6: packet size must be %u <= s < %d.\n");
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *(v2 + 843) = v37;
    }

    goto LABEL_75;
  }

  if (v36 != 59)
  {
LABEL_67:
    v6 = v2[1];
    if (!v6)
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d.\n");
      return 0xFFFFFFFFLL;
    }

    v7 = *v2;
    v8 = "traceroute6: unknown probe protocol %d.\n";
    goto LABEL_13;
  }

  *(v2 + 843) = 0;
LABEL_75:
  v40 = malloc_type_calloc(0xFFFFuLL, 1uLL, 0x100004077774924uLL);
  v2[433] = v40;
  if (!v40)
  {
    perror("calloc");
    return 0xFFFFFFFFLL;
  }

  __memset_chk();
  v2[15] = v2 + 11;
  v2[21] = v2 + 434;
  v2[22] = 0xFFFFLL;
  *(v2 + 32) = 28;
  v2[17] = v2 + 21;
  *(v2 + 36) = 1;
  v41 = malloc_type_malloc(0x30uLL, 0xE720EE08uLL);
  if (!v41)
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = "traceroute6: malloc failed\n";
      goto LABEL_13;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "traceroute6: malloc failed\n";
    v15 = 27;
LABEL_24:
    fwrite(v14, v15, 1uLL, v13);
    return 0xFFFFFFFFLL;
  }

  v42 = v41;
  v2[19] = v41;
  *(v2 + 40) = 48;
  setsockopt(*(v2 + 844), 0xFFFF, 4356, &v192, 4u);
  v43 = *(v2 + 849);
  if (v43)
  {
    setsockopt(*(v2 + 844), 0xFFFF, 1, &v192, 4u);
    v43 = *(v2 + 849);
  }

  if ((v43 & 0x10) != 0)
  {
    setsockopt(*(v2 + 844), 0xFFFF, 16, &v192, 4u);
  }

  v44 = *(v2 + 843);
  if (v44 <= 1)
  {
    v44 = 1;
  }

  v191 = v44;
  if (setsockopt(*(v2 + 845), 0xFFFF, 4097, &v191, 8u) < 0 && *(v2 + 852) != 59)
  {
    perror("setsockopt(SO_SNDBUF)");
    free(v42);
    return 6;
  }

  v45 = *(v2 + 849);
  if (v45)
  {
    setsockopt(*(v2 + 845), 0xFFFF, 1, &v192, 4u);
    v45 = *(v2 + 849);
  }

  if ((v45 & 0x10) != 0)
  {
    setsockopt(*(v2 + 845), 0xFFFF, 16, &v192, 4u);
  }

  v46 = v2[284];
  if (v46)
  {
    v47 = v46[3];
    v46[1] = 2 * v47;
    if (setsockopt(*(v2 + 845), 41, 51, v46, (16 * (v47 & 0x7F)) | 8))
    {
      v48 = v2[1];
      if (!v48)
      {
        v63 = *MEMORY[0x277D85DF8];
        v64 = __error();
        strerror(*v64);
        fprintf(v63, "setsockopt(IPV6_RTHDR): %s\n");
        goto LABEL_134;
      }

      v49 = *v2;
      v50 = __error();
      strerror(*v50);
      v51 = "setsockopt(IPV6_RTHDR): %s\n";
LABEL_93:
      v48(v49, v51);
LABEL_134:
      free(v42);
      return 0xFFFFFFFFLL;
    }
  }

  v2[4] = 0;
  *(v2 + 14) = 0;
  v2[5] = 0;
  v2[6] = 0;
  v52 = (v2 + 287);
  v53 = v2[287];
  if (!v53)
  {
    v199[0] = 0;
    *&v193.ai_flags = *(v2 + 60);
    *&v193.ai_protocol = *(v2 + 9);
    HIWORD(v193.ai_flags) = 6695;
    v59 = v2[285];
    if (v59)
    {
      *&v193.ai_socktype = *inet6_rthdr_getaddr(v59, 1);
    }

    v60 = socket(30, 2, 0);
    if (v60 < 0)
    {
      v77 = "socket";
LABEL_400:
      perror(v77);
      goto LABEL_134;
    }

    v61 = v60;
    if (connect(v60, &v193, LOBYTE(v193.ai_flags)) < 0)
    {
      v78 = "connect";
    }

    else
    {
      v199[0] = 28;
      if ((getsockname(v61, v2 + 2, v199) & 0x80000000) == 0)
      {
        if (!getnameinfo(v2 + 2, *(v2 + 32), v196, 0x401u, 0, 0, 2))
        {
          *v52 = v196;
          close(v61);
          goto LABEL_119;
        }

        v62 = v2[1];
        if (v62)
        {
          v62(*v2, "getnameinfo failed for source\n");
        }

        else
        {
          fwrite("getnameinfo failed for source\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
        }

LABEL_133:
        close(v61);
        goto LABEL_134;
      }

      v78 = "getsockname";
    }

    perror(v78);
    goto LABEL_133;
  }

  *v199 = 0;
  memset(&v193.ai_socktype, 0, 40);
  v193.ai_socktype = 2;
  *&v193.ai_flags = 0x1E00000004;
  v54 = getaddrinfo(v53, "0", &v193, v199);
  if (v54)
  {
    v55 = v2[1];
    if (v55)
    {
      v56 = *v2;
      v57 = v2[287];
      v58 = gai_strerror(v54);
      v55(v56, "traceroute6: %s: %s\n", v57, v58);
    }

    else
    {
      v71 = *v52;
      v72 = gai_strerror(v54);
      printf("traceroute6: %s: %s\n", v71, v72);
    }

    goto LABEL_134;
  }

  v65 = *v199;
  v66 = *(*v199 + 16);
  if (v66 >= 0x1D)
  {
    v67 = v2[1];
    if (v67)
    {
      v68 = *v2;
      v69 = v2[287];
      v70 = gai_strerror(0);
      v67(v68, "traceroute6: %s: %s\n", v69, v70);
    }

    else
    {
      v75 = *v52;
      v76 = gai_strerror(0);
      printf("traceroute6: %s: %s\n", v75, v76);
    }

    freeaddrinfo(*v199);
    goto LABEL_134;
  }

  memcpy(v2 + 4, *(*v199 + 32), v66);
  freeaddrinfo(v65);
LABEL_119:
  *(v2 + 17) = 0;
  if (bind(*(v2 + 845), v2 + 2, *(v2 + 32)) < 0)
  {
    v77 = "bind";
    goto LABEL_400;
  }

  v193.ai_flags = 28;
  if (getsockname(*(v2 + 845), v2 + 2, &v193) < 0)
  {
    v77 = "getsockname";
    goto LABEL_400;
  }

  *(v2 + 1681) = bswap32(*(v2 + 17)) >> 16;
  if (*(v2 + 855))
  {
    v73 = as_setup(v2[286]);
    v2[432] = v73;
    if (!v73)
    {
      v74 = v2[1];
      if (v74)
      {
        v74(*v2, "traceroute6: as_setup failed, AS# lookups disabled\n");
      }

      else
      {
        fwrite("traceroute6: as_setup failed, AS# lookups disabled\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      fflush(*MEMORY[0x277D85DF8]);
      *(v2 + 855) = 0;
    }
  }

  v175 = (v2 + 292);
  if (getnameinfo((v2 + 60), *(v2 + 60), v2 + 2336, 0x401u, 0, 0, 2))
  {
    __strlcpy_chk();
  }

  v79 = v2[1];
  if (v79)
  {
    v79(*v2, "traceroute6");
  }

  else
  {
    fwrite("traceroute6", 0xBuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v80 = v2[1];
  if (v80)
  {
    v80(*v2, " to %s (%s)", v2[288], v175);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], " to %s (%s)", v2[288], v175);
  }

  if (*v52)
  {
    v81 = v2[1];
    if (v81)
    {
      v81(*v2, " from %s", *v52);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], " from %s", *v52);
    }
  }

  v82 = v2[1];
  v83 = *(v2 + 843) + 8 * (*(v2 + 852) == 17);
  if (v82)
  {
    v82(*v2, ", %lu hops max, %lu byte packets\n", v2[430], v83);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], ", %lu hops max, %lu byte packets\n", v2[430], v83);
  }

  fflush(*MEMORY[0x277D85DF8]);
  v84 = *(v2 + 847);
  if (v84 >= 2)
  {
    v85 = v2[1];
    if (v85)
    {
      v85(*v2, "Skipping %d intermediate hops\n", v84 - 1);
    }

    else
    {
      printf("Skipping %d intermediate hops\n", v84 - 1);
    }
  }

  if (connect(*(v2 + 845), (v2 + 60), 0x1Cu))
  {
    v48 = v2[1];
    if (!v48)
    {
      v89 = *MEMORY[0x277D85DF8];
      v90 = __error();
      strerror(*v90);
      fprintf(v89, "connect: %s\n");
      goto LABEL_134;
    }

    v49 = *v2;
    v86 = __error();
    strerror(*v86);
    v51 = "connect: %s\n";
    goto LABEL_93;
  }

  v174 = v42;
  interface_for_ipv6_address = get_interface_for_ipv6_address((v2 + 4), v2 + 2320, 0x10uLL);
  v2[289] = interface_for_ipv6_address;
  if (*(v2 + 852) == 6)
  {
    if (!interface_for_ipv6_address)
    {
      traceroute6_run_cold_1(v2 + 287);
    }

    pcap_on_interface = create_pcap_on_interface(v2, interface_for_ipv6_address);
  }

  else
  {
    pcap_on_interface = 0;
  }

  v91 = *(v2 + 847);
  if (v2[430] >= v91)
  {
    v180 = 0;
    v182 = 0;
    v183 = 0;
    v92 = 0;
    while (1)
    {
      v178 = v91;
      if (v180)
      {
        v93 = *(v2 + 842);
        if (v93)
        {
          usleep(1000 * v93);
        }
      }

      bzero(&v193, 0x8B8uLL);
      v193.ai_flags = 30;
      v193.ai_socktype = v178;
      v195 = v2 + 292;
      v94 = v2[1];
      if (v94)
      {
        v94(*v2, "%2d ", v178);
      }

      else
      {
        printf("%2d ", v178);
      }

      v187 = 0uLL;
      if (v2[429])
      {
        break;
      }

      v176 = 0;
      v170 = 1;
LABEL_385:
      v171 = v2[1];
      if (v171)
      {
        v171(*v2, "\n");
      }

      else
      {
        putchar(10);
      }

      if (!v170 || v176 >= 1 && v176 >= (v2[429] + 1) >> 1)
      {
        return 0;
      }

      v91 = v178 + 1;
      if (v2[430] < (v178 + 1))
      {
        goto LABEL_392;
      }
    }

    v176 = 0;
    v177 = 0;
    v181 = 0;
LABEL_174:
    v186.tv_sec = 0;
    *&v186.tv_usec = 0;
    v185.tv_sec = 0;
    *&v185.tv_usec = 0;
    v184 = 0;
    gettimeofday(&v186, 0);
    send_probe6(v2, ++v182, v178);
    v179 = bswap32(v182) >> 16;
    ++v180;
    while (1)
    {
      v95 = wait_for_reply6(v2, *(v2 + 844), pcap_on_interface, (v2 + 15), &v184);
      if (!v95)
      {
LABEL_311:
        v193.ai_protocol = 1;
        v150 = v2[1];
        if (v150)
        {
          v150(*v2, " *");
        }

        else
        {
          printf(" *");
        }

        goto LABEL_314;
      }

      v96 = v95;
      gettimeofday(&v185, 0);
      v97 = v184;
      if (v184)
      {
        v98 = *(v2 + 850);
        if (v96 <= 0x3B)
        {
          if (v98)
          {
            v99 = v2[1];
            if (v99)
            {
              v100 = *v2;
              v101 = inet_ntop(30, v2 + 12, v199, 0x2Eu);
              v99(v100, "packet too short (%zd bytes) from %s\n", v96, v101);
            }

            else
            {
              inet_ntop(30, v2 + 12, v199, 0x2Eu);
              printf("packet too short (%zd bytes) from %s\n");
            }
          }

          goto LABEL_308;
        }

        if (v98 >= 2)
        {
          v106 = v2[1];
          if (v106)
          {
            v106(*v2, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v2 + 1756)) >> 16, bswap32(*(v2 + 1757)) >> 16, *(v2 + 879));
          }

          else
          {
            printf("tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v2 + 1756)) >> 16, bswap32(*(v2 + 1757)) >> 16, *(v2 + 879));
          }
        }

        if (*(v2 + 1683) == bswap32(*(v2 + 1757)) >> 16)
        {
          v122 = bswap32(*(v2 + 1756));
          v123 = v182;
          if (*(v2 + 856))
          {
            v123 = 0;
          }

          v124 = *(v2 + 850);
          if (v123 + *(v2 + 1682) == HIWORD(v122))
          {
            if (v124 >= 2)
            {
              v153 = v2[1];
              if (v153)
              {
                v153(*v2, "tcp_packet_ok: match\n");
              }

              else
              {
                puts("tcp_packet_ok: match");
              }
            }

LABEL_329:
            v154 = v2[12] == v187 && v2[13] == *(&v187 + 1);
            if (!v154)
            {
              if (v181)
              {
                v155 = v2[1];
                if (v155)
                {
                  v155(*v2, "\n   \n");
                }

                else
                {
                  fwrite("\n   \n", 5uLL, 1uLL, *MEMORY[0x277D85E08]);
                }
              }

              v156 = v2[15];
              v157 = *(v156 + 12);
              v194[0] = *v156;
              *(v194 + 12) = v157;
              print(v2, &v193, v2 + 15, v96);
              v187 = *(v2 + 6);
            }

            v158 = v2[1];
            if (v158)
            {
              v159 = *v2;
              v160 = deltaT(&v186, &v185);
              v158(v159, "  %.3f ms", v160);
            }

            else
            {
              v161 = deltaT(&v186, &v185);
              printf("  %.3f ms", v161);
            }

            v193.ai_addr = COERCE_SOCKADDR_(deltaT(&v186, &v185));
            if (v97)
            {
              ++v177;
              goto LABEL_314;
            }

            v193.ai_addrlen = v183;
            *(&v193.ai_addrlen + 1) = v92;
            if (v92 == 1)
            {
              v92 = 1;
              if (v183 > 1)
              {
                switch(v183)
                {
                  case 2:
                    ++v176;
                    v167 = v2[1];
                    if (v167)
                    {
                      v167(*v2, " !S");
                    }

                    else
                    {
                      printf(" !S");
                    }

                    v92 = 1;
                    v166 = 2;
                    break;
                  case 3:
                    ++v176;
                    v168 = v2[1];
                    if (v168)
                    {
                      v168(*v2, " !A");
                    }

                    else
                    {
                      printf(" !A");
                    }

                    v92 = 1;
                    v166 = 3;
                    break;
                  case 4:
                    if (*(v2 + 846) <= 1u)
                    {
                      v162 = v2[1];
                      if (v162)
                      {
                        v162(*v2, " !");
                      }

                      else
                      {
                        printf(" !");
                      }
                    }

                    ++v177;
                    v92 = 1;
                    v166 = 4;
                    break;
                  default:
                    goto LABEL_314;
                }

                goto LABEL_382;
              }

              if (v183)
              {
                ++v176;
                v165 = v2[1];
                if (v165)
                {
                  v165(*v2, " !P");
                }

                else
                {
                  printf(" !P");
                }

                v92 = 1;
                v183 = 1;
              }

              else
              {
                ++v176;
                v169 = v2[1];
                if (v169)
                {
                  v169(*v2, " !N");
                }

                else
                {
                  printf(" !N");
                }

                v183 = 0;
                v92 = 1;
              }
            }

            else
            {
              if (v92 == 4 && v183 == 1)
              {
                v163 = v2[1];
                if (v163)
                {
                  v163(*v2, " !H");
                }

                else
                {
                  printf(" !H");
                }

                ++v177;
                v92 = 4;
                v166 = 1;
LABEL_382:
                v183 = v166;
                goto LABEL_314;
              }

              if (v92 == 129)
              {
                if (*(v2 + 846) <= 1u)
                {
                  v164 = v2[1];
                  if (v164)
                  {
                    v164(*v2, " !");
                  }

                  else
                  {
                    printf(" !");
                  }
                }

                ++v177;
                v92 = 129;
              }
            }

LABEL_314:
            v151 = v2[3];
            if (v151)
            {
              if (v177)
              {
                v152 = 1;
              }

              else
              {
                v152 = v176 >= 1 && v176 >= (v2[429] + 1) >> 1;
              }

              LOBYTE(v193.ai_next) = v152;
              v151(v2[2], &v193);
            }

            else
            {
              fflush(*MEMORY[0x277D85E08]);
            }

            if (++v181 >= v2[429])
            {
              v170 = v177 == 0;
              goto LABEL_385;
            }

            goto LABEL_174;
          }
        }

        else
        {
          v124 = *(v2 + 850);
        }

        if (v124 >= 2)
        {
          v103 = v2[1];
          if (v103)
          {
            v104 = *v2;
            v105 = "tcp_packet_ok: no match\n";
            goto LABEL_307;
          }

          puts("tcp_packet_ok: no match");
        }
      }

      else
      {
        v102 = v2[15];
        if (v96 > 7)
        {
          v107 = *v2[17];
          v2[25] = 0;
          v108 = *(v2 + 40);
          if (v108 < 0xC)
          {
            goto LABEL_234;
          }

          v109 = v2[19];
          if (!v109)
          {
            goto LABEL_234;
          }

          v110 = 0;
          v111 = 0;
          v112 = v109 + v108;
          do
          {
            if (v109[1] == 41)
            {
              v113 = v109[2];
              v114 = *v109;
              if (v113 == 47)
              {
                if (v114 == 16)
                {
                  v111 = (v109 + 3);
                }
              }

              else if (v113 == 46 && v114 == 32)
              {
                v110 = v109 + 3;
                v2[25] = v109 + 3;
              }
            }

            else
            {
              v114 = *v109;
            }

            v109 = (v109 + ((v114 + 3) & 0x1FFFFFFFCLL));
          }

          while ((v109 + 3) <= v112);
          if (v110 && v111)
          {
            v115 = *v111;
          }

          else
          {
LABEL_234:
            warnx("failed to get received hop limit or packet info", v172, v173);
            v115 = 0;
          }

          *(v2 + 846) = v115;
          v92 = *v107;
          v183 = v107[1];
          if ((v92 != 3 || v107[1]) && v92 != 1)
          {
            if (v92 == 4)
            {
              if (v183 == 1)
              {
                goto LABEL_210;
              }

LABEL_270:
              if (!*(v2 + 850))
              {
                goto LABEL_308;
              }

              if (getnameinfo(v102, v102->sa_len, v199, 0x402u, 0, 0, 2))
              {
                __strlcpy_chk();
              }

              v134 = v2[1];
              if (v134)
              {
                v135 = *v2;
                v136 = v2[25];
                if (v136)
                {
                  v137 = inet_ntop(30, v136, v198, 0x2Eu);
                }

                else
                {
                  v137 = "?";
                }

                v134(v135, "\n%zd bytes from %s to %s", v96, v199, v137);
              }

              else
              {
                v138 = v2[25];
                if (v138)
                {
                  v139 = inet_ntop(30, v138, v198, 0x2Eu);
                }

                else
                {
                  v139 = "?";
                }

                printf("\n%zd bytes from %s to %s", v96, v199, v139);
              }

              v140 = v2[1];
              if (v140)
              {
                v141 = *v2;
                v142 = pr_type6(v92);
                v140(v141, ": icmp type %d (%s) code %d\n", v92, v142, v183);
              }

              else
              {
                v143 = pr_type6(v92);
                printf(": icmp type %d (%s) code %d\n", v92, v143, v183);
              }

              if (v96 >= 1)
              {
                v144 = 0;
                v145 = v107 + 8;
                do
                {
                  if ((v144 & 0xF) == 0)
                  {
                    v146 = v2[1];
                    if (v146)
                    {
                      v146(*v2, "%04x:", v144);
                    }

                    else
                    {
                      printf("%04x:", v144);
                    }
                  }

                  if ((v144 & 3) == 0)
                  {
                    v147 = v2[1];
                    if (v147)
                    {
                      v147(*v2, " ");
                    }

                    else
                    {
                      putchar(32);
                    }
                  }

                  v148 = v2[1];
                  if (v148)
                  {
                    v148(*v2, "%02x", v145[v144]);
                  }

                  else
                  {
                    printf("%02x", v145[v144]);
                  }

                  if ((v144 & 0xF) == 0xF)
                  {
                    v149 = v2[1];
                    if (v149)
                    {
                      v149(*v2, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }
                  }

                  ++v144;
                }

                while (v96 != v144);
              }

              if ((v96 & 0xF) == 0)
              {
                goto LABEL_308;
              }

              v103 = v2[1];
              if (!v103)
              {
                putchar(10);
                goto LABEL_308;
              }

              v104 = *v2;
              v105 = "\n";
              goto LABEL_307;
            }

            if (v92 != 129 || *(v2 + 852) != 58 || *(v107 + 2) != *(v2 + 1683))
            {
              goto LABEL_270;
            }

            v125 = *(v107 + 3);
LABEL_258:
            if (v125 == v179)
            {
              goto LABEL_329;
            }

            goto LABEL_270;
          }

LABEL_210:
          uphdr = get_uphdr(v2, (v107 + 8), &v107[v96]);
          if (!uphdr)
          {
            if (*(v2 + 850))
            {
              warnx("failed to get upper layer header");
            }

            goto LABEL_308;
          }

          v117 = uphdr;
          if (*(v2 + 854))
          {
            v118 = (*(v107 + 2) >> 12) & 3;
            if (v118 != (v2[424] & 3))
            {
              if (v118)
              {
                if (v118 != 3)
                {
                  goto LABEL_245;
                }

                v119 = v2[1];
                if (!v119)
                {
                  printf(" (ecn=mangled)");
                  goto LABEL_245;
                }

                v120 = *v2;
                v121 = " (ecn=mangled)";
              }

              else
              {
                v119 = v2[1];
                if (!v119)
                {
                  printf(" (ecn=bleached)");
                  goto LABEL_245;
                }

                v120 = *v2;
                v121 = " (ecn=bleached)";
              }

LABEL_242:
              v119(v120, v121);
              goto LABEL_245;
            }

            v119 = v2[1];
            if (v119)
            {
              v120 = *v2;
              v121 = " (ecn=passed)";
              goto LABEL_242;
            }

            printf(" (ecn=passed)");
          }

LABEL_245:
          v126 = *(v2 + 852);
          if (v126 > 57)
          {
            if (v126 == 58)
            {
              if (v117[2] != *(v2 + 1683))
              {
                goto LABEL_270;
              }

              v125 = v117[3];
              goto LABEL_258;
            }

            if (v126 == 59)
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v126 == 6)
            {
              v130 = *v117;
              if (v130 == bswap32(*(v2 + 1683)) >> 16)
              {
                v131 = v117[1];
                v132 = v182;
                if (*(v2 + 856))
                {
                  v132 = 0;
                }

                if (v131 == bswap32(v132 + *(v2 + 1682)) >> 16 && *(v117 + 1) == (v131 | (v130 << 16)))
                {
                  goto LABEL_329;
                }
              }

              goto LABEL_270;
            }

            if (v126 == 17)
            {
              v127 = *(v2 + 856);
              v128 = v182;
              if (!v127)
              {
                v128 = 0;
              }

              if (*v117 == bswap32(v128 + *(v2 + 1683)) >> 16)
              {
                v154 = v127 == 0;
                v129 = v182;
                if (!v154)
                {
                  v129 = 0;
                }

                if (v117[1] == bswap32(*(v2 + 1682) + v129) >> 16)
                {
                  goto LABEL_329;
                }
              }

              goto LABEL_270;
            }
          }

          v133 = v2[1];
          if (v133)
          {
            v133(*v2, "Unknown probe proto %d.\n", *(v2 + 852));
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "Unknown probe proto %d.\n", *(v2 + 852));
          }

          goto LABEL_270;
        }

        if (*(v2 + 850))
        {
          if (getnameinfo(v2[15], v102->sa_len, v200, 0x401u, 0, 0, 2))
          {
            __strlcpy_chk();
          }

          v103 = v2[1];
          if (v103)
          {
            v104 = *v2;
            v172 = v96;
            v173 = v200;
            v105 = "data too short (%zd bytes) from %s\n";
LABEL_307:
            v103(v104, v105);
            goto LABEL_308;
          }

          printf("data too short (%zd bytes) from %s\n");
        }
      }

LABEL_308:
      if (deltaT(&v186, &v185) > (1000 * v2[431]))
      {
        goto LABEL_311;
      }
    }
  }

LABEL_392:
  if (*(v2 + 855))
  {
    as_shutdown(v2[432]);
  }

  if (pcap_on_interface)
  {
    pcap_close(pcap_on_interface);
  }

  free(v174);
  return 0;
}

char *get_interface_for_ipv6_address(uint64_t a1, char *a2, size_t a3)
{
  v12 = 0;
  if (getifaddrs(&v12))
  {
    get_interface_for_ipv6_address_cold_1();
  }

  if (v12)
  {
    v6 = v12;
    while (1)
    {
      ifa_addr = v6->ifa_addr;
      if (ifa_addr->sa_family == 30 && *(a1 + 24) == *&ifa_addr[1].sa_data[6])
      {
        v9 = *&ifa_addr->sa_data[6];
        v8 = *&ifa_addr[1].sa_len;
        if (*(a1 + 8) == v9 && *(a1 + 16) == v8)
        {
          break;
        }
      }

      v6 = v6->ifa_next;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    snprintf(a2, a3, "%s", v6->ifa_name);
  }

  else
  {
LABEL_11:
    a2 = 0;
  }

  MEMORY[0x25F872010]();
  return a2;
}

pcap_t *create_pcap_on_interface(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v7.bf_len = 0;
  v7.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf))
  {
    create_pcap_on_interface_cold_1();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5();
  }

  inet_ntop(30, (a1 + 68), v9, 0x2Eu);
  inet_ntop(30, (a1 + 40), v8, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str, 0x400uLL, "tcp and src %s and dst %s", v9, v8);
  if (pcap_compile(v4, &v7, create_pcap_on_interface_filter_str, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3(v4);
  }

  if (pcap_setfilter(v4, &v7) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 3400) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str);
    }

    else
    {
      printf("# using pcap filter %s\n", create_pcap_on_interface_filter_str);
    }
  }

  return v4;
}

uint64_t send_probe6(void *a1, unsigned int a2, int a3)
{
  v22 = a3;
  if (setsockopt(*(a1 + 845), 41, 4, &v22, 4u) < 0)
  {
    perror("setsockopt IPV6_UNICAST_HOPS");
  }

  v5 = *(a1 + 852);
  if (v5 > 57)
  {
    if (v5 == 59)
    {
      goto LABEL_28;
    }

    if (v5 == 58)
    {
      v12 = a1[433];
      *v12 = 128;
      *(v12 + 4) = *(a1 + 1683);
      *(v12 + 6) = bswap32(a2) >> 16;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 == 6)
    {
      v6 = a1[433];
      v14 = *(a1 + 1683);
      *v6 = __rev16(v14);
      if (*(a1 + 856))
      {
        v15 = 0;
      }

      else
      {
        v15 = a2;
      }

      v16 = v15 + *(a1 + 1682);
      v6[1] = bswap32(v16) >> 16;
      *(v6 + 1) = bswap32(v14 | (v16 << 16));
      *(v6 + 2) = 0;
      *(v6 + 12) = v6[6] & 0xF | 0x50;
      *(v6 + 13) = 2;
      v6[8] = 0;
      v6[8] = tcp_chksum((a1 + 4), a1 + 60, a1[433], *(a1 + 843));
      if (*(a1 + 850) >= 2)
      {
        v17 = a1[1];
        if (v17)
        {
          v17(*a1, "\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }

        else
        {
          printf("\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }
      }

      goto LABEL_27;
    }

    if (v5 == 17)
    {
      v6 = a1[433];
      v7 = *(a1 + 856);
      v8 = v7 == 0;
      if (v7)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      *v6 = bswap32(v9 + *(a1 + 1683)) >> 16;
      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v6[1] = bswap32(v10 + *(a1 + 1682)) >> 16;
      v11 = *(a1 + 843);
      *(v6 + 1) = bswap32(v11) >> 16;
      v6[3] = udp_cksum((a1 + 4), a1 + 60, v6, v11);
LABEL_27:
      *(a1 + 31) = v6[1];
LABEL_28:
      v19 = send(*(a1 + 845), a1[433], *(a1 + 843), 0);
      v20 = v19;
      if (v19 < 0)
      {
        perror("send");
      }

      else if (v19 == *(a1 + 843))
      {
        return 0;
      }

      v21 = a1[1];
      if (v21)
      {
        v21(*a1, "traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 843), v20);
      }

      else
      {
        printf("traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 843), v20);
      }

      fflush(*MEMORY[0x277D85E08]);
      return 0;
    }
  }

  v13 = a1[1];
  if (v13)
  {
    v13(*a1, "Unknown probe protocol %d.\n", *(a1 + 852));
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Unknown probe protocol %d.\n", *(a1 + 852));
  }

  return 0xFFFFFFFFLL;
}

ssize_t wait_for_reply6(void *a1, int a2, pcap_t *a3, msghdr *a4, _BYTE *a5)
{
  if (a3)
  {
    selectable_fd = pcap_get_selectable_fd(a3);
  }

  else
  {
    selectable_fd = -1;
  }

  if (selectable_fd <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = selectable_fd;
  }

  if (selectable_fd == -1)
  {
    v10 = a2;
  }

  else
  {
    v10 = v9;
  }

  v11 = (a2 + 1) >> 5;
  if (((a2 + 1) & 0x1F) != 0)
  {
    ++v11;
  }

  v12 = 4 * v11;
  v13 = malloc_type_malloc(4 * v11, 0x1000040AE2C30F4uLL);
  if (!v13)
  {
    wait_for_reply6_cold_1();
  }

  v14 = v13;
  v38.tv_sec = 0;
  *&v38.tv_usec = 0;
  bzero(v13, v12);
  v15 = 1 << a2;
  v16 = a2 >> 5;
  v17 = 1 << selectable_fd;
  v18 = selectable_fd >> 5;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a2, v14, 0))
    {
      v14->fds_bits[v16] |= v15;
    }

    if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v14, 0))
    {
      v14->fds_bits[v18] |= v17;
    }

    v38.tv_sec = a1[431];
    v38.tv_usec = 0;
    if (select(v10 + 1, v14, 0, 0, &v38) < 1)
    {
      goto LABEL_56;
    }

    if (__darwin_check_fd_set_overflow(a2, v14, 0) && (v14->fds_bits[v16] & v15) != 0)
    {
      v28 = recvmsg(*(a1 + 844), a4, 0);
      goto LABEL_57;
    }

    if (selectable_fd == -1)
    {
      goto LABEL_56;
    }

    if (!__darwin_check_fd_set_overflow(selectable_fd, v14, 0))
    {
      goto LABEL_56;
    }

    if ((v14->fds_bits[v18] & v17) == 0)
    {
      goto LABEL_56;
    }

    v36 = 0;
    v37 = 0;
    if (pcap_next_ex(a3, &v37, &v36) != 1)
    {
      goto LABEL_56;
    }

    if (*(a1 + 850) >= 2)
    {
      v19 = a1[1];
      if (v19)
      {
        v19(*a1, "# got TCP packet %d bytes\n", v37->caplen);
      }

      else
      {
        printf("# got TCP packet %d bytes\n", v37->caplen);
      }

      dump_hex(v36, v37->caplen);
    }

    v20 = pcap_datalink(a3);
    if (v20 != 1)
    {
      break;
    }

    caplen = v37->caplen;
    if (caplen >= 0xE)
    {
      v24 = *(v36 + 6);
      if (v24 == 33024)
      {
        v22 = 18;
        goto LABEL_34;
      }

      if (v24 == 56710)
      {
        v22 = 14;
LABEL_34:
        if (v22 <= caplen)
        {
          goto LABEL_48;
        }

        v23 = a1[1];
        if (v23)
        {
          v23(*a1, "# hdrlen %d > caplen %u\n", v22, caplen);
        }

        else
        {
          printf("# hdrlen %d > caplen %u\n", v22, caplen);
        }
      }

      else
      {
        v25 = __rev16(v24);
        v26 = a1[1];
        if (v26)
        {
          v26(*a1, "# cannot process TCP packet with Ethernet type 0x%04x\n", v25);
        }

        else
        {
          printf("# cannot process TCP packet with Ethernet type 0x%04x\n", v25);
        }
      }
    }
  }

  if (v20 == 108)
  {
    caplen = v37->caplen;
    v22 = 4;
    goto LABEL_34;
  }

  if (v20 != 12)
  {
    v29 = a1[1];
    if (v29)
    {
      v30 = *a1;
      v31 = pcap_datalink(a3);
      v29(v30, "# cannot process TCP packet with data link %d\n", v31);
    }

    else
    {
      v32 = pcap_datalink(a3);
      printf("# cannot process TCP packet with data link %d\n", v32);
    }

LABEL_56:
    v28 = 0;
    goto LABEL_57;
  }

  v22 = 0;
  caplen = v37->caplen;
LABEL_48:
  v27 = caplen - v22;
  if (v27 >= 0xFFFF)
  {
    v28 = 0xFFFFLL;
  }

  else
  {
    v28 = v27;
  }

  memcpy(a1 + 434, &v36[v22], v28);
  *(a1 + 6) = *(a1 + 68);
  *(a1 + 44) = 7696;
  *a5 = 1;
LABEL_57:
  free(v14);
  return v28;
}

void print(uint64_t *a1, _DWORD *a2, sockaddr **a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (getnameinfo(*a3, (*a3)->sa_len, __s1, 0x401u, 0, 0, 2))
  {
    __strlcpy_chk();
  }

  if (*(a1 + 855))
  {
    v8 = as_lookup(a1[432], __s1, 30);
    a2[1] = v8;
    v9 = a1[1];
    if (v9)
    {
      v9(*a1, " [AS%u]", v8);
    }

    else
    {
      printf(" [AS%u]", v8);
    }
  }

  if (!*(a1 + 851))
  {
    v12 = *(a1 + 853);
    v13 = inetname6(v7, 0);
    v14 = strnlen(v13, 0x401uLL);
    memcpy(a2 + 1201, v13, v14);
    v15 = a1[1];
    if (v12)
    {
      if (!v15)
      {
        printf(" %s (%s)");
        goto LABEL_19;
      }

      v16 = *a1;
      v17 = " %s (%s)";
    }

    else
    {
      if (!v15)
      {
        printf(" %s");
        goto LABEL_19;
      }

      v16 = *a1;
      v17 = " %s";
    }

    v15(v16, v17);
LABEL_19:
    free(v13);
    goto LABEL_20;
  }

  v10 = strnlen(__s1, 0x401uLL);
  memcpy(a2 + 44, __s1, v10);
  v11 = a1[1];
  if (v11)
  {
    v11(*a1, " %s", __s1);
  }

  else
  {
    printf(" %s", __s1);
  }

LABEL_20:
  if (*(a1 + 850))
  {
    v18 = a1[1];
    if (v18)
    {
      v19 = *a1;
      v20 = a1[25];
      if (v20)
      {
        v21 = inet_ntop(30, v20, __s1, 0x401u);
      }

      else
      {
        v21 = "?";
      }

      v18(v19, " %zd bytes of data to %s", a4, v21);
    }

    else
    {
      v22 = a1[25];
      if (v22)
      {
        v23 = inet_ntop(30, v22, __s1, 0x401u);
      }

      else
      {
        v23 = "?";
      }

      printf(" %zd bytes of data to %s", a4, v23);
    }
  }
}

uint64_t udp_cksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 17;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t tcp_chksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 6;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

const char *pr_type6(unsigned __int8 a1)
{
  if (a1 <= 0x82u)
  {
    if (a1 <= 3u)
    {
      switch(a1)
      {
        case 1u:
          return "Destination Unreachable";
        case 2u:
          return "Packet Too Big";
        case 3u:
          return "Time Exceeded";
      }
    }

    else if (a1 > 0x80u)
    {
      if (a1 == 129)
      {
        return "Echo Reply";
      }

      if (a1 == 130)
      {
        return "Group Membership Query";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Parameter Problem";
      }

      if (a1 == 128)
      {
        return "Echo Request";
      }
    }

    return "Unknown";
  }

  if (a1 <= 0x85u)
  {
    switch(a1)
    {
      case 0x83u:
        return "Group Membership Report";
      case 0x84u:
        return "Group Membership Reduction";
      case 0x85u:
        return "Router Solicitation";
    }

    return "Unknown";
  }

  if (a1 > 0x87u)
  {
    if (a1 == 136)
    {
      return "Neighbor Advertisement";
    }

    if (a1 == 137)
    {
      return "Redirect";
    }

    return "Unknown";
  }

  if (a1 == 134)
  {
    return "Router Advertisement";
  }

  else
  {
    return "Neighbor Solicitation";
  }
}

unsigned __int8 *get_uphdr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + 40);
  if (a2 + 40 <= a3)
  {
    v5 = *(a2 + 6);
    while (1)
    {
      if ((a3 - v3) < 8 * (v5 != 59))
      {
        return 0;
      }

      if (v5 <= 49)
      {
        if (v5 == 44)
        {
          v7 = 8;
          goto LABEL_20;
        }

        if (v5 == 6 || v5 == 17)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 > 57)
      {
        break;
      }

      if (v5 != 51)
      {
        if (v5 == 50)
        {
          return 0;
        }

LABEL_18:
        v6 = 3;
        goto LABEL_19;
      }

      v6 = 2;
LABEL_19:
      v7 = (v3[1] << v6) + 8;
LABEL_20:
      v5 = *v3;
      v3 += v7;
    }

    if (v5 == 58)
    {
      goto LABEL_21;
    }

    if (v5 == 59)
    {
      v3 = &get_uphdr_none_hdr;
LABEL_21:
      if (*(a1 + 3408) == v5)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

char *inetname6(sockaddr *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_15;
  }

  if (gethostname(__s, 0x101uLL) || (v3 = strchr(__s, 46)) == 0)
  {
    __s[0] = 0;
  }

  else
  {
    strlen(v3 + 1);
    __memmove_chk();
  }

  if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 4))
  {
LABEL_15:
    if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 2))
    {
      __strlcpy_chk();
    }
  }

  else
  {
    v5 = strchr(__s1, 46);
    if (v5)
    {
      v6 = v5;
      if (!strcmp(v5 + 1, __s))
      {
        *v6 = 0;
      }
    }
  }

  return strdup(__s1);
}

uint64_t ifaddrlist(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v28 = 0u;
  v7 = socket(2, 2, 0);
  if (v7 < 0)
  {
    v16 = __error();
    v17 = strerror(*v16);
    snprintf(v5, v3, "socket: %s", v17);
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v24 = 0x8000;
  v25 = v30;
  if (ioctl(v7, 0xC00C6924uLL, &v24) < 0 || v24 <= 0x1F)
  {
    if (*__error() == 22)
    {
      snprintf(v5, v3, "SIOCGIFCONF: ifreq struct too small (%d bytes)");
    }

    else
    {
      v18 = __error();
      strerror(*v18);
      snprintf(v5, v3, "SIOCGIFCONF: %s");
    }

    close(v8);
    return 0xFFFFFFFFLL;
  }

  v23 = v6;
  if (v24 < 1)
  {
    v10 = 0;
LABEL_27:
    close(v8);
    *v23 = v27;
    return v10;
  }

  v22 = v5;
  v9 = 0;
  v10 = 0;
  v11 = &v30[v24];
  v12 = v30;
  v13 = v27;
  while (1)
  {
    v14 = v12[16];
    if (v14 >= 0x10)
    {
      v15 = v14 + 16;
    }

    else
    {
      v15 = 32;
    }

    if (v12[17] != 2)
    {
      goto LABEL_18;
    }

    __strlcpy_chk();
    if ((ioctl(v8, 0xC0206911uLL, &v28) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 6)
    {
      v20 = __error();
      strerror(*v20);
      snprintf(v22, v3, "SIOCGIFFLAGS: %.*s: %s");
      goto LABEL_32;
    }

LABEL_18:
    v12 += v15;
    if (v12 >= v11)
    {
      goto LABEL_27;
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_18;
  }

  __strlcpy_chk();
  if (ioctl(v8, 0xC0206921uLL, &v28) < 0)
  {
    v21 = __error();
    strerror(*v21);
    snprintf(v22, v3, "SIOCGIFADDR: %s: %s");
    goto LABEL_32;
  }

  if (v10 < 0x400)
  {
    *v13 = DWORD1(v29);
    if (v9)
    {
      free(v9);
    }

    v9 = strdup(__s1);
    *(v13 + 1) = v9;
    v13 += 16;
    v10 = (v10 + 1);
    goto LABEL_18;
  }

  snprintf(v22, v3, "Too many interfaces (%d)");
LABEL_32:
  close(v8);
  if (v9)
  {
    free(v9);
  }

  return 0xFFFFFFFFLL;
}

void ifaddrlist_free(uint64_t a1, unsigned int a2)
{
  if (a1 && a2 >= 1)
  {
    v2 = 0;
    v3 = a2;
    v4 = (a1 + 8);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v5 == v2;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        free(v5);
        v2 = *v4;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

const char *findsaddr(__int128 *a1, _OWORD *a2, _WORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  bzero(&__buf, 0x25CuLL);
  v25 = 1029;
  v27 = 0x2100000807;
  v6 = socket(17, 3, 0);
  if (v6 < 0)
  {
    v17 = __error();
    strerror(*v17);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "socket: %.128s");
    return v16;
  }

  v7 = v6;
  v8 = getpid();
  v29 = 1;
  v31 = *a1;
  v9 = v31;
  if ((v31 & 3) != 0)
  {
    v9 = (v31 & 0xFC) + 4;
  }

  v10 = v9 + 92;
  __buf = v9 + 92;
  v11 = write(v7, &__buf, v9 + 92);
  if (v11 < 0)
  {
    v18 = __error();
    strerror(*v18);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "write: %.128s");
LABEL_20:
    close(v7);
    return v16;
  }

  if (v11 != v10)
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "short write (%zd != %zd)");
    goto LABEL_20;
  }

  v12 = &v31;
  do
  {
    bzero(&__buf, 0x25CuLL);
    v13 = read(v7, &__buf, 0x25CuLL);
    if (v13 < 0)
    {
      v19 = __error();
      strerror(*v19);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "read: %.128s");
      goto LABEL_20;
    }
  }

  while (v29 != 1 || v28 != v8);
  v15 = v13;
  close(v7);
  if (v25 == 5)
  {
    if (v15 >= __buf)
    {
      if (!__errnum)
      {
        v21 = 1;
        v16 = "failed!";
        while (1)
        {
          if ((HIDWORD(v27) & v21) != 0)
          {
            if (v21 == 32 && v12[1] == 2 && *(v12 + 1))
            {
              v16 = 0;
              *a2 = *v12;
              *a3 = v26;
              return v16;
            }

            v22 = (*v12 & 0xFC) + 4;
            if ((*v12 & 3) == 0)
            {
              v22 = *v12;
            }

            v23 = &v12[v22];
            if (*v12)
            {
              v12 = v23;
            }

            else
            {
              v12 += 4;
            }
          }

          v21 *= 2;
          if (!v21)
          {
            return v16;
          }
        }
      }

      strerror(__errnum);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "rtm_errno: %.128s");
    }

    else
    {
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "bad msglen %d > %zd");
    }
  }

  else
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "bad version %d");
  }

  return v16;
}

unsigned __int8 *udp_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  v3 = *(a2 + 1800);
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  *v2 = bswap32(v4 + *(a2 + 1832)) >> 16;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *result;
  }

  v2[1] = bswap32(v5 + *(a2 + 1834)) >> 16;
  v6 = *(a2 + 656);
  v2[2] = bswap32(v6) >> 16;
  v2[3] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v2, v6, v6);
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    v2[3] = v7;
  }

  return result;
}

BOOL udp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  result = 0;
  v5 = bswap32(*a1);
  v6 = *(a3 + 1800);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 + *(a3 + 1832) == HIWORD(v5))
  {
    v8 = bswap32(a1[1]);
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    return v9 + *(a3 + 1834) == HIWORD(v8);
  }

  return result;
}

unsigned __int8 *tcp_prep(unsigned __int8 *result, uint64_t a2)
{
  v3 = *(a2 + 552);
  *v3 = bswap32(*(a2 + 1832)) >> 16;
  if (*(a2 + 1800))
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  v3[1] = bswap32(v4 + *(a2 + 1834)) >> 16;
  *(v3 + 1) = v3[1] | (*v3 << 16);
  *(v3 + 2) = 0;
  *(v3 + 12) = v3[6] & 0xF | 0x50;
  *(v3 + 13) = 2;
  v3[8] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v3, *(a2 + 656), *(a2 + 656));
    v3[8] = result;
  }

  if (*(a2 + 1776) >= 2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      return v5(*a2, "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
    }

    else
    {
      return fprintf(*MEMORY[0x277D85DF8], "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
    }
  }

  return result;
}

BOOL tcp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (*(a3 + 1776) >= 2)
  {
    v6 = *(a3 + 8);
    v7 = bswap32(*a1) >> 16;
    v8 = bswap32(a1[1]) >> 16;
    v9 = *(a1 + 1);
    if (v6)
    {
      v6(*a3, "tcp_check: th_sport %u th_dport %u th_seq %u\n", v7, v8, v9);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "tcp_check: th_sport %u th_dport %u th_seq %u\n", v7, v8, v9);
    }
  }

  v10 = *a1;
  if (*(a3 + 1832) == bswap32(v10) >> 16 && ((v11 = a1[1], v12 = bswap32(v11), *(a3 + 1800)) ? (v13 = 0) : (v13 = a2), v13 + *(a3 + 1834) == HIWORD(v12)))
  {
    return *(a1 + 1) == (v11 | (v10 << 16));
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *gre_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 288;
  v2[1] = bswap32(*(a2 + 1834)) >> 16;
  v2[2] = 0;
  v2[3] = bswap32(*(a2 + 1832) + *result) >> 16;
  return result;
}

uint64_t icmp_prep(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 8;
  v2[2] = bswap32(*(a2 + 1832)) >> 16;
  v2[3] = *a1 << 8;
  v2[1] = 0;
  result = in_cksum(v2, *(a2 + 656));
  v2[1] = result;
  if (!v2[1])
  {
    v2[1] = -1;
  }

  return result;
}

unsigned __int8 *gen_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = bswap32(*(a2 + 1832)) >> 16;
  v2[1] = bswap32(*(a2 + 1834) + *result) >> 16;
  return result;
}

uint64_t traceroute4_parseargs(in_addr *a1, int a2, char **a3)
{
  v6 = a1 + 153;
  *MEMORY[0x277D85E70] = 0;
  v7 = &a1[144];
  while (2)
  {
    v8 = getopt(a2, a3, "aA:eEdDFInrSvxf:g:i:M:m:P:p:q:s:t:w:z:");
    switch(v8)
    {
      case 'A':
        a1[447].s_addr = 1;
        *&a1[460].s_addr = *MEMORY[0x277D85E68];
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'o':
      case 'u':
      case 'y':
        return 0xFFFFFFFFLL;
      case 'D':
        a1[451].s_addr = 1;
        continue;
      case 'E':
        a1[452].s_addr = 1;
        continue;
      case 'F':
        LOWORD(a1[459].s_addr) = 0x4000;
        continue;
      case 'I':
        v9 = "icmp";
        goto LABEL_21;
      case 'M':
      case 'f':
        a1[442].s_addr = str2val(*MEMORY[0x277D85E68], "first ttl", 1, 255);
        continue;
      case 'P':
        v9 = *MEMORY[0x277D85E68];
LABEL_21:
        *&a1[466].s_addr = setproto(v9);
        continue;
      case 'S':
        a1[457].s_addr = 1;
        continue;
      case 'a':
        a1[447].s_addr = 1;
        continue;
      case 'd':
        a1[443].s_addr |= 1u;
        continue;
      case 'e':
        a1[450].s_addr = 1;
        continue;
      case 'g':
        s_addr = a1[453].s_addr;
        if (s_addr < 8)
        {
          v11 = gethostinfo(a1, *MEMORY[0x277D85E68]);
          if (v11)
          {
            *(v7 + s_addr) = **(v11 + 2);
          }

          freehostinfo(v11);
          ++a1[453].s_addr;
          continue;
        }

        v23 = *&a1[2].s_addr;
        if (v23)
        {
          v23(*&a1->s_addr, "%s: No more than %d gateways\n", "libtraceroute", 8);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: No more than %d gateways\n", "libtraceroute", 8);
        }

        return 0xFFFFFFFFLL;
      case 'i':
        *&a1[172].s_addr = *MEMORY[0x277D85E68];
        continue;
      case 'm':
        a1[441].s_addr = str2val(*MEMORY[0x277D85E68], "max ttl", 1, 255);
        continue;
      case 'n':
        ++a1[446].s_addr;
        continue;
      case 'p':
        a1[456].s_addr = str2val(*MEMORY[0x277D85E68], "port", 1, 0xFFFF);
        continue;
      case 'q':
        a1[440].s_addr = str2val(*MEMORY[0x277D85E68], "nprobes", 1, -1);
        continue;
      case 'r':
        a1[443].s_addr |= 0x10u;
        continue;
      case 's':
        *&a1[168].s_addr = *MEMORY[0x277D85E68];
        continue;
      case 't':
        a1[454].s_addr = str2val(*MEMORY[0x277D85E68], "tos", 0, 255);
        ++a1[455].s_addr;
        continue;
      case 'v':
        ++a1[444].s_addr;
        continue;
      case 'w':
        a1[445].s_addr = str2val(*MEMORY[0x277D85E68], "wait time", 1, 86400);
        continue;
      case 'x':
        a1[448].s_addr = 1;
        continue;
      case 'z':
        a1[166].s_addr = str2val(*MEMORY[0x277D85E68], "pause msecs", 0, 3600000);
        continue;
      default:
        if (v8 != -1)
        {
          return 0xFFFFFFFFLL;
        }

        v12 = MEMORY[0x277D85E78];
        v13 = *MEMORY[0x277D85E78];
        v14 = a2 - *MEMORY[0x277D85E78];
        if (v14 == 1)
        {
          goto LABEL_35;
        }

        if (v14 != 2)
        {
          return 0xFFFFFFFFLL;
        }

        *&a1[162].s_addr = str2val(a3[v13 + 1], "packet length", a1[437].s_addr, a1[438].s_addr);
        v13 = *v12;
LABEL_35:
        v15 = gethostinfo(a1, a3[v13]);
        *&a1[464].s_addr = v15;
        if (!v15)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v15;
        v17 = *&a1[170].s_addr;
        if (v17)
        {
          free(v17);
          v16 = *&a1[464].s_addr;
        }

        *&a1[170].s_addr = strdup(*v16);
        v18.s_addr = **(v16 + 16);
        *&v6->s_addr = 0;
        *&v6[2].s_addr = 0;
        LOWORD(a1[153].s_addr) = 528;
        a1[154].s_addr = v18.s_addr;
        if (*(v16 + 8) >= 2)
        {
          v19 = *&a1[2].s_addr;
          v20 = a3[*v12];
          if (v19)
          {
            v21 = *&a1->s_addr;
            v22 = inet_ntoa(v18);
            v19(v21, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v20, v22);
          }

          else
          {
            v25 = *MEMORY[0x277D85DF8];
            v26 = inet_ntoa(v18);
            fprintf(v25, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v20, v26);
          }
        }

        freehostinfo(*&a1[464].s_addr);
        result = 0;
        *MEMORY[0x277D85E88] = 1;
        *v12 = 1;
        return result;
    }
  }
}

uint64_t str2val(char *__str, uint64_t a2, int a3, int a4)
{
  __endptr = 0;
  if (*__str == 48 && (__str[1] | 0x20) == 0x78)
  {
    __str += 2;
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  result = strtol(__str, &__endptr, v6);
  if (*__endptr)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: %s bad value for %s \n");
    return 0xFFFFFFFFLL;
  }

  if (a3 < 0 || result >= a3)
  {
    if ((a4 & 0x80000000) == 0 && result > a4)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: %s must be <= %d\n");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    if (a3)
    {
      fprintf(v8, "%s: %s must be > %d\n");
    }

    else
    {
      fprintf(v8, "%s: %s must be >= %d\n");
    }

    return 1;
  }

  return result;
}

char **setproto(char *a1)
{
  v2 = protos;
  if (protos[0])
  {
    if (!strcasecmp(protos[0], a1))
    {
      return v2;
    }

    v2 = off_281E1C4E8;
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v2 += 5;
      if (!strcasecmp(v3, a1))
      {
        v2 -= 5;
        return v2;
      }
    }
  }

  v4 = getprotobyname(a1);
  if (v4)
  {
    p_proto = v4->p_proto;
  }

  else
  {
    LOBYTE(p_proto) = str2val(*MEMORY[0x277D85E68], "proto number", 1, 255);
  }

  *(v2 + 16) = p_proto;
  return v2;
}

_DWORD *gethostinfo(void *a1, char *__s)
{
  if (strlen(__s) >= 0x100)
  {
    v4 = a1[1];
    if (v4)
    {
      v4(*a1, "%s: hostname %.32s... is too long\n", prog, __s);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: hostname %.32s... is too long\n");
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x101004023BA6C86uLL);
  if (!v5)
  {
    v10 = a1[1];
    v11 = prog;
    if (v10)
    {
      v12 = *a1;
      v13 = __error();
      v14 = strerror(*v13);
      v10(v12, "%s: calloc %s\n", v11, v14);
    }

    else
    {
      v33 = *MEMORY[0x277D85DF8];
      v34 = __error();
      strerror(*v34);
      fprintf(v33, "%s: calloc %s\n");
    }

    return 0;
  }

  v6 = v5;
  v7 = inet_addr(__s);
  if (v7 != -1)
  {
    v8 = v7;
    *v6 = strdup(__s);
    v6[2] = 1;
    v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *(v6 + 2) = v9;
    if (v9)
    {
      *v9 = v8;
      return v6;
    }

    goto LABEL_22;
  }

  v15 = gethostbyname(__s);
  if (!v15)
  {
    v35 = a1[1];
    if (!v35)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: unknown host %s\n");
      goto LABEL_33;
    }

    v36 = *a1;
    v37 = "%s: unknown host %s\n";
    goto LABEL_29;
  }

  v16 = v15;
  if (v15->h_addrtype != 2 || v15->h_length != 4)
  {
    v35 = a1[1];
    if (!v35)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: bad host %s\n");
      goto LABEL_33;
    }

    v36 = *a1;
    v37 = "%s: bad host %s\n";
LABEL_29:
    v35(v36, v37);
LABEL_33:
    freehostinfo(v6);
    return 0;
  }

  v17 = strdup(v15->h_name);
  *v6 = v17;
  v18 = strlen(v17);
  clean_non_printable(v17, v18);
  h_addr_list = v16->h_addr_list;
  v20 = *h_addr_list;
  if (*h_addr_list)
  {
    v20 = 0;
    v21 = h_addr_list + 1;
      ;
    }
  }

  v6[2] = v20;
  v23 = malloc_type_calloc(v20, 4uLL, 0x100004052888210uLL);
  *(v6 + 2) = v23;
  if (!v23)
  {
LABEL_22:
    v28 = a1[1];
    v29 = prog;
    if (v28)
    {
      v30 = *a1;
      v31 = __error();
      v32 = strerror(*v31);
      v28(v30, "%s: calloc %s\n", v29, v32);
    }

    else
    {
      v38 = *MEMORY[0x277D85DF8];
      v39 = __error();
      strerror(*v39);
      fprintf(v38, "%s: calloc %s\n");
    }

    goto LABEL_33;
  }

  v24 = v16->h_addr_list;
  v25 = *v24;
  if (*v24)
  {
    v26 = v24 + 1;
    do
    {
      *v23++ = *v25;
      v27 = *v26++;
      v25 = v27;
    }

    while (v27);
  }

  return v6;
}

void freehostinfo(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    free(a1[2]);

    free(a1);
  }
}

uint64_t traceroute4_run(void *a1)
{
  v315 = *MEMORY[0x277D85DE8];
  v296 = 1;
  v295 = 0;
  v2 = a1[85];
  if (!v2)
  {
    v12 = a1[1];
    if (!v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Error: No hostname provided in context.\n");
      return 1;
    }

    v13 = *a1;
    v14 = "%s: Error: No hostname provided in context.\n";
    goto LABEL_9;
  }

  v3 = (a1 + 612);
  if (!a1[232])
  {
    v4 = gethostinfo(a1, v2);
    a1[232] = v4;
    if (v4)
    {
      v5 = v4;
      v6.s_addr = **(v4 + 2);
      *&v3->sa_len = 0;
      *(a1 + 620) = 0;
      *(a1 + 306) = 528;
      *(a1 + 154) = v6;
      if (v5[2] >= 2)
      {
        v7 = a1[1];
        v8 = prog;
        v9 = a1[85];
        if (v7)
        {
          v10 = *a1;
          v11 = inet_ntoa(v6);
          v7(v10, "%s: Warning: %s has multiple addresses; using %s\n", v8, v9, v11);
        }

        else
        {
          v15 = *MEMORY[0x277D85DF8];
          v16 = inet_ntoa(v6);
          fprintf(v15, "%s: Warning: %s has multiple addresses; using %s\n", v8, v9, v16);
        }
      }

      v17 = a1[85];
      if (v17)
      {
        free(v17);
      }

      v18 = a1[232];
      a1[85] = strdup(*v18);
      freehostinfo(v18);
    }
  }

  a1[233] = protos;
  v19 = getprotobyname("icmp");
  v20 = v19;
  if (v19 && ((v21 = socket(2, 3, v19->p_proto), *(a1 + 435) = v21, v21 < 0) || (v22 = socket(2, 3, 255), *(a1 + 436) = v22, v22 < 0)))
  {
    v23 = *__error();
  }

  else
  {
    v23 = 0;
  }

  v24 = getuid();
  if (setuid(v24))
  {
    return 1;
  }

  v25 = a1 + 441;
  if (!*(a1 + 441))
  {
    *v302 = xmmword_25B9498C0;
    v313[0] = 4;
    if (sysctl(v302, 4u, a1 + 1764, v313, 0, 0) == -1)
    {
      perror("sysctl(net.inet.ip.ttl)");
      return 1;
    }
  }

  v26 = *(a1 + 456);
  if (v26 == -1)
  {
    LOWORD(v26) = *(a1[233] + 20);
  }

  *(a1 + 917) = v26;
  if (*(a1 + 440) == -1)
  {
    if (*(a1 + 451))
    {
      v27 = 1;
    }

    else
    {
      v27 = 3;
    }

    *(a1 + 440) = v27;
  }

  v28 = *(a1 + 441);
  if (*(a1 + 442) > v28)
  {
    v29 = a1[1];
    if (v29)
    {
      v29(*a1, "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v28);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: first ttl (%d) may not be greater than max ttl (%d)\n");
    }

    return 1;
  }

  if (!*(a1 + 448))
  {
    v30 = a1[1];
    if (v30)
    {
      v30(*a1, "%s: Warning: ip checksums disabled\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Warning: ip checksums disabled\n", prog);
    }
  }

  v31 = *(a1 + 453);
  if (v31 <= 0)
  {
    v32 = *(a1 + 449);
  }

  else
  {
    v32 = 4 * v31 + 4;
    *(a1 + 449) = v32;
  }

  LODWORD(v33) = *(a1[233] + 18) + v32 + 20;
  *(a1 + 437) = v33;
  if (v33 <= 40)
  {
    v33 = 40;
  }

  else
  {
    v33 = v33;
  }

  v34 = a1 + 81;
  a1[81] = v33;
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0);
  v35 = a1[81];
  v36 = *(a1 + 449);
  v37 = v35 - v36 - 20;
  if (*(a1[233] + 16) == 6)
  {
    LODWORD(v35) = v36 + 40;
    *v34 = v36 + 40;
  }

  a1[82] = v37;
  v38 = malloc_type_malloc(v35, 0x1000040A86A77D5uLL);
  a1[68] = v38;
  if (!v38)
  {
    v55 = a1[1];
    if (!v55)
    {
      v60 = *MEMORY[0x277D85DF8];
      v61 = __error();
      strerror(*v61);
      fprintf(v60, "%s: malloc: %s\n");
      return 1;
    }

    v56 = *a1;
    v57 = __error();
    strerror(*v57);
    v58 = "%s: malloc: %s\n";
    goto LABEL_100;
  }

  bzero(v38, a1[81]);
  *a1[68] = *a1[68] & 0xF | 0x40;
  v39 = a1[68];
  if (*(a1 + 455))
  {
    *(v39 + 1) = *(a1 + 454);
  }

  if (*(a1 + 452))
  {
    *(v39 + 1) |= 1u;
  }

  *(v39 + 2) = a1[81];
  *(v39 + 6) = *(a1 + 918);
  *(v39 + 9) = *(a1[233] + 16);
  a1[69] = v39 + 20;
  *(v39 + 16) = *(a1 + 154);
  *v39 = *v39 & 0xF0 | 5;
  *(a1 + 916) = getpid() | 0x8000;
  if (!v20)
  {
    v52 = a1[1];
    if (v52)
    {
      v53 = *a1;
LABEL_80:
      v54 = "%s: unknown protocol %s\n";
      goto LABEL_81;
    }

    v63 = *MEMORY[0x277D85DF8];
LABEL_88:
    fprintf(v63, "%s: unknown protocol %s\n");
    return 1;
  }

  v40 = *(a1 + 435);
  if (v40 < 0)
  {
    *__error() = v23;
    v55 = a1[1];
    if (!v55)
    {
      v64 = *MEMORY[0x277D85DF8];
      v65 = __error();
      strerror(*v65);
      fprintf(v64, "%s: icmp socket: %s\n");
      return 1;
    }

    v56 = *a1;
    v59 = __error();
    strerror(*v59);
    v58 = "%s: icmp socket: %s\n";
    goto LABEL_100;
  }

  setsockopt(v40, 0xFFFF, 4356, &v296, 4u);
  v41 = *(a1 + 443);
  if (v41)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 1, &v296, 4u);
    v41 = *(a1 + 443);
  }

  if ((v41 & 0x10) != 0)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 16, &v296, 4u);
  }

  v42 = *(a1 + 436);
  if (v42 < 0)
  {
    *__error() = v23;
    v55 = a1[1];
    if (!v55)
    {
      v67 = *MEMORY[0x277D85DF8];
      v68 = __error();
      strerror(*v68);
      fprintf(v67, "%s: raw socket: %s\n");
      return 1;
    }

    v56 = *a1;
    v62 = __error();
    strerror(*v62);
    v58 = "%s: raw socket: %s\n";
    goto LABEL_100;
  }

  if (*(a1 + 453) < 1)
  {
    goto LABEL_62;
  }

  v43 = getprotobyname("ip");
  if (!v43)
  {
    v52 = a1[1];
    if (v52)
    {
      v53 = *a1;
      goto LABEL_80;
    }

    v63 = *MEMORY[0x277D85DF8];
    goto LABEL_88;
  }

  v44 = v43;
  *(a1 + *(a1 + 453) + 144) = *(a1 + 154);
  v45 = *(a1 + 453) + 1;
  *(a1 + 453) = v45;
  LOWORD(v302[0]) = -31999;
  v46 = 4 * v45;
  BYTE2(v302[0]) = (4 * v45) | 3;
  HIBYTE(v302[0]) = 4;
  __memcpy_chk();
  if (setsockopt(*(a1 + 436), v44->p_proto, 1, v302, v46 + 4) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v73 = *MEMORY[0x277D85DF8];
      v74 = __error();
      strerror(*v74);
      fprintf(v73, "%s: IP_OPTIONS: %s\n");
      return 1;
    }

    v56 = *a1;
    v69 = __error();
    strerror(*v69);
    v58 = "%s: IP_OPTIONS: %s\n";
    goto LABEL_100;
  }

  v42 = *(a1 + 436);
LABEL_62:
  if (setsockopt(v42, 0xFFFF, 4097, a1 + 81, 8u) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v71 = *MEMORY[0x277D85DF8];
      v72 = __error();
      strerror(*v72);
      fprintf(v71, "%s: SO_SNDBUF: %s\n");
      return 1;
    }

    v56 = *a1;
    v66 = __error();
    strerror(*v66);
    v58 = "%s: SO_SNDBUF: %s\n";
    goto LABEL_100;
  }

  if (setsockopt(*(a1 + 436), 0, 2, &v296, 4u) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v75 = *MEMORY[0x277D85DF8];
      v76 = __error();
      strerror(*v76);
      fprintf(v75, "%s: IP_HDRINCL: %s\n");
      return 1;
    }

    v56 = *a1;
    v70 = __error();
    strerror(*v70);
    v58 = "%s: IP_HDRINCL: %s\n";
LABEL_100:
    v55(v56, v58);
    return 1;
  }

  v47 = *(a1 + 443);
  if (v47)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 1, &v296, 4u);
    v47 = *(a1 + 443);
  }

  if ((v47 & 0x10) != 0)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 16, &v296, 4u);
  }

  v48 = ifaddrlist(&v295);
  if ((v48 & 0x80000000) != 0)
  {
    v52 = a1[1];
    if (!v52)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: ifaddrlist: %s\n");
      return 1;
    }

    v53 = *a1;
    v54 = "%s: ifaddrlist: %s\n";
LABEL_81:
    v52(v53, v54);
    return 1;
  }

  if (!v48)
  {
    v12 = a1[1];
    if (!v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Can't find any network interfaces\n");
      return 1;
    }

    v13 = *a1;
    v14 = "%s: Can't find any network interfaces\n";
LABEL_9:
    v12(v13, v14);
    return 1;
  }

  v278 = (a1 + 628);
  v49 = a1[86];
  v275 = v48;
  if (!v49)
  {
    v78 = (a1 + 84);
    v79 = a1[84];
    if (!v79)
    {
      LOWORD(v302[0]) = 0;
      v80 = findsaddr((a1 + 612), v278, v302);
      if (v80)
      {
        v81 = a1[1];
        if (v81)
        {
          v81(*a1, "%s: findsaddr: %s\n", prog, v80);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: findsaddr: %s\n");
        }

        return 1;
      }

      v97 = if_indextoname(LOWORD(v302[0]), a1 + 696);
      a1[86] = v97;
      if (!v97)
      {
        v98 = a1[1];
        v99 = prog;
        v100 = LOWORD(v302[0]);
        if (v98)
        {
          v101 = *a1;
          v102 = __error();
          v103 = strerror(*v102);
          v98(v101, "%s: if_indextoname(%u): %s\n", v99, v100, v103);
        }

        else
        {
          v265 = *MEMORY[0x277D85DF8];
          v266 = __error();
          strerror(*v266);
          fprintf(v265, "%s: if_indextoname(%u): %s\n");
        }

        return 1;
      }

LABEL_143:
      if (*(a1 + 444))
      {
        v109 = a1[1];
        if (v109)
        {
          v109(*a1, "Using interface: %s\n", a1[86]);
        }

        else
        {
          printf("Using interface: %s\n", a1[86]);
        }
      }

      *(a1[68] + 12) = *(a1 + 158);
      if (bind(*(a1 + 436), v278, 0x10u) < 0)
      {
        v267 = a1[1];
        v268 = prog;
        if (v267)
        {
          v272 = *a1;
          v273 = __error();
          v274 = strerror(*v273);
          v267(v272, "%s: bind: %s\n", v268, v274);
        }

        else
        {
          v269 = *MEMORY[0x277D85DF8];
          v270 = __error();
          v271 = strerror(*v270);
          fprintf(v269, "%s: bind: %s\n", v268, v271);
        }

        exit(1);
      }

      if (*(a1 + 447))
      {
        v110 = as_setup(a1[230]);
        a1[231] = v110;
        if (!v110)
        {
          v111 = a1[1];
          if (v111)
          {
            v111(*a1, "%s: as_setup failed, AS# lookups disabled\n", prog);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: as_setup failed, AS# lookups disabled\n", prog);
          }

          fflush(*MEMORY[0x277D85DF8]);
          *(a1 + 447) = 0;
        }
      }

      if (*(a1[233] + 16) == 6)
      {
        pcap_on_interface_0 = create_pcap_on_interface_0(a1, a1[86]);
      }

      else
      {
        pcap_on_interface_0 = 0;
      }

      v118 = a1 + 89;
      if (getnameinfo((a1 + 612), *(a1 + 612), a1 + 712, 0x401u, 0, 0, 2))
      {
        __strlcpy_chk();
      }

      v119 = a1[1];
      if (v119)
      {
        v119(*a1, "%s to %s (%s)", prog, a1[85], a1 + 712);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s to %s (%s)", prog, a1[85], a1 + 712);
      }

      if (*v78)
      {
        v120 = a1[1];
        if (v120)
        {
          v120(*a1, " from %s", *v78);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], " from %s", *v78);
        }
      }

      v121 = a1[1];
      v122 = a1[81];
      if (v121)
      {
        v121(*a1, ", %d hops max, %zu byte packets\n", *(a1 + 441), v122);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], ", %d hops max, %zu byte packets\n", *(a1 + 441), v122);
      }

      fflush(*MEMORY[0x277D85DF8]);
      v123 = *(a1 + 442);
      if (v123 > *(a1 + 441))
      {
LABEL_467:
        if (*(a1 + 447))
        {
          as_shutdown(a1[231]);
        }

        if (pcap_on_interface_0)
        {
          pcap_close(pcap_on_interface_0);
        }

        result = v295;
        if (v295)
        {
          ifaddrlist_free(v295, v275);
          return 0;
        }

        return result;
      }

      v285 = 0;
      __dst = a1 + 4;
      while (1)
      {
        bzero(v302, 0x8B8uLL);
        v302[0] = 2;
        v302[2] = v123;
        v312 = v118;
        v124 = a1[1];
        if (v124)
        {
          v124(*a1, "%2d ", v123);
        }

        else
        {
          printf("%2d ", v123);
        }

        v125 = *(a1 + 440);
        if (v125 >= 1)
        {
          break;
        }

        HIDWORD(v277) = 0;
        v259 = 0;
        v260 = 1;
LABEL_456:
        if (*(a1 + 457))
        {
          v261 = v259 / v125;
          v304 = v261;
          v262 = a1[1];
          if (v262)
          {
            v262(*a1, " (%d%% loss)", v261);
          }

          else
          {
            printf(" (%d%% loss)", v261);
          }
        }

        v263 = a1[1];
        if (v263)
        {
          v263(*a1, "\n");
        }

        else
        {
          putchar(10);
        }

        if (v260 && (SHIDWORD(v277) < 1 || SHIDWORD(v277) < *(a1 + 440) - 1))
        {
          v201 = v123++ < *v25;
          if (v201)
          {
            continue;
          }
        }

        goto LABEL_467;
      }

      v282 = 0;
      v126 = 0;
      v277 = 0;
      v279 = 0;
      v276 = 0;
      v280 = v123;
LABEL_178:
      v294.tv_sec = 0;
      *&v294.tv_usec = 0;
      v293.tv_sec = 0;
      *&v293.tv_usec = 0;
      v292 = 0;
      v290 = 0;
      v291 = 0;
      v286 = v126;
      if (v126)
      {
        v127 = *(a1 + 166);
        if (v127)
        {
          usleep(1000 * v127);
        }
      }

      LOBYTE(v290) = v285 + 1;
      BYTE1(v290) = v123;
      gettimeofday(&v294, &v292);
      v291 = v294;
      (*(a1[233] + 24))(&v290, a1);
      v128 = a1[68];
      v128[8] = v123;
      ++v285;
      *(v128 + 2) = bswap32(*(a1 + 916) + v285) >> 16;
      if (*(a1 + 444) < 2)
      {
LABEL_194:
        v132 = sendto(*(a1 + 436), v128, a1[81], 0, v3, 0x10u);
        v133 = v132;
        if (v132 < 0)
        {
          v134 = a1[1];
          v135 = prog;
          if (v134)
          {
            v136 = *a1;
            v137 = __error();
            v138 = strerror(*v137);
            v134(v136, "%s: sendto: %s\n", v135, v138);
          }

          else
          {
            v139 = *MEMORY[0x277D85DF8];
            v140 = __error();
            v141 = strerror(*v140);
            fprintf(v139, "%s: sendto: %s\n", v135, v141);
          }
        }

        else if (v132 == *v34)
        {
LABEL_201:
          v283 = 0;
          v287 = v286 + 1;
LABEL_202:
          v142 = *(a1 + 435);
          v314.tv_sec = 0;
          *&v314.tv_usec = 0;
          v300 = 0;
          v299 = 16;
          if (pcap_on_interface_0)
          {
            selectable_fd = pcap_get_selectable_fd(pcap_on_interface_0);
          }

          else
          {
            selectable_fd = -1;
          }

          v144 = pcap_on_interface_0;
          if (selectable_fd <= v142)
          {
            v145 = v142;
          }

          else
          {
            v145 = selectable_fd;
          }

          if (selectable_fd == -1)
          {
            v145 = v142;
          }

          v146 = v145 + 1;
          v147 = (v145 + 1) >> 5;
          if ((v146 & 0x1FLL) != 0)
          {
            ++v147;
          }

          v148 = v147 << 7;
          v149 = malloc_type_malloc(v147 << 7, 0x1000040AE2C30F4uLL);
          if (!v149)
          {
            wait_for_reply6_cold_1();
          }

          v150 = v149;
          v301.tv_sec = 0;
          *&v301.tv_usec = 0;
          bzero(v149, v148);
          v151 = 1 << v142;
          v152 = v142 >> 5;
          v153 = 1 << selectable_fd;
          v288 = v294;
          v154 = selectable_fd >> 5;
          while (1)
          {
            do
            {
              while (1)
              {
                if (__darwin_check_fd_set_overflow(v142, v150, 0))
                {
                  v150->fds_bits[v152] |= v151;
                }

                if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v150, 0))
                {
                  v150->fds_bits[v154] |= v153;
                }

                v301.tv_sec = v288.tv_sec + *(a1 + 445);
                v301.tv_usec = v288.tv_usec;
                gettimeofday(&v314, &v300);
                tv_sec = v301.tv_sec;
                v156 = v301.tv_usec - v314.tv_usec;
                v301.tv_usec = v156;
                if (v156 < 0)
                {
                  tv_sec = v301.tv_sec - 1;
                  v301.tv_usec = v156 + 1000000;
                }

                v301.tv_sec = tv_sec - v314.tv_sec;
                if (tv_sec - v314.tv_sec < 0)
                {
                  v301.tv_sec = 0;
                  v301.tv_usec = 1;
                }

                v157 = select(v146, v150, 0, 0, &v301);
                if (v157 == -1)
                {
                  if (*__error() != 22)
                  {
LABEL_308:
                    free(v150);
                    pcap_on_interface_0 = v144;
                    goto LABEL_309;
                  }

                  v165 = a1[1];
                  if (v165)
                  {
                    v165(*a1, "%s: botched select() args\n", prog);
                  }

                  else
                  {
                    fprintf(*MEMORY[0x277D85DF8], "%s: botched select() args\n", prog);
                  }

                  pcap_on_interface_0 = v144;
                  free(v150);
                  v166 = -1;
                  goto LABEL_267;
                }

                if (v157 < 1)
                {
                  goto LABEL_308;
                }

                if (__darwin_check_fd_set_overflow(v142, v150, 0) && (v150->fds_bits[v152] & v151) != 0)
                {
                  v166 = recvfrom(v142, __dst, 0x200uLL, 0, v278, &v299);
                  goto LABEL_260;
                }

                if (selectable_fd == -1 || !__darwin_check_fd_set_overflow(selectable_fd, v150, 0) || (v150->fds_bits[v154] & v153) == 0)
                {
                  goto LABEL_308;
                }

                v297 = 0;
                v298 = 0;
                if (pcap_next_ex(v144, &v298, &v297) != 1)
                {
                  v166 = 0;
                  goto LABEL_260;
                }

                if (*(a1 + 444) >= 2)
                {
                  v158 = a1[1];
                  if (v158)
                  {
                    v158(*a1, "# got TCP packet %d bytes\n", v298->caplen);
                  }

                  else
                  {
                    fprintf(*MEMORY[0x277D85DF8], "# got TCP packet %d bytes\n", v298->caplen);
                  }

                  dump_hex(v297, v298->caplen);
                }

                v159 = pcap_datalink(v144);
                if (v159 == 1)
                {
                  break;
                }

                if (v159 != 108)
                {
                  if (v159 == 12)
                  {
                    v161 = 0;
                    caplen = v298->caplen;
LABEL_255:
                    v167 = caplen - v161;
                    if (v167 >= 0x200)
                    {
                      v166 = 512;
                    }

                    else
                    {
                      v166 = v167;
                    }

                    memcpy(__dst, &v297[v161], v166);
                    *v278 = *(a1 + 612);
                    v283 = 1;
LABEL_260:
                    pcap_on_interface_0 = v144;
                  }

                  else
                  {
                    v168 = a1[1];
                    pcap_on_interface_0 = v144;
                    if (v168)
                    {
                      v169 = *a1;
                      v170 = pcap_datalink(v144);
                      v168(v169, "# cannot process TCP packet with data link %d\n", v170);
                    }

                    else
                    {
                      v204 = *MEMORY[0x277D85DF8];
                      v205 = pcap_datalink(v144);
                      fprintf(v204, "# cannot process TCP packet with data link %d\n", v205);
                    }

                    v166 = 0;
                  }

                  free(v150);
                  if (!v166)
                  {
LABEL_309:
                    ++v282;
                    v302[3] = 1;
                    v206 = a1[1];
                    v34 = a1 + 81;
                    if (v206)
                    {
                      v206(*a1, " *");
                    }

                    else
                    {
                      printf(" *");
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    goto LABEL_313;
                  }

LABEL_267:
                  gettimeofday(&v293, &v292);
                  if (v283)
                  {
                    a1[70] = __dst;
                    v171 = 4 * (a1[4] & 0xF);
                    if (v171 + 20 > v166)
                    {
LABEL_273:
                      if (*(a1 + 444))
                      {
                        v179.s_addr = *(a1 + 158);
                        v180 = inet_ntoa(v179);
                        printf("packet too short (%zu bytes) from %s\n", v166, v180);
                      }

                      goto LABEL_202;
                    }

                    v172 = &__dst[v171];
                    if (*(a1 + 444) >= 2)
                    {
                      v173 = a1[1];
                      v174 = bswap32(*v172) >> 16;
                      v175 = bswap32(v172[1]) >> 16;
                      v176 = *(v172 + 1);
                      if (v173)
                      {
                        v173(*a1, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", v174, v175, v176);
                      }

                      else
                      {
                        fprintf(*MEMORY[0x277D85DF8], "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", v174, v175, v176);
                      }
                    }

                    if (*(a1 + 916) == bswap32(v172[1]) >> 16)
                    {
                      v202 = bswap32(*v172);
                      v203 = v285;
                      if (*(a1 + 450))
                      {
                        v203 = 0;
                      }

                      if (v203 + *(a1 + 917) == HIWORD(v202))
                      {
LABEL_324:
                        v209 = -2;
                        goto LABEL_325;
                      }
                    }

                    goto LABEL_202;
                  }

                  v177 = a1 + 4;
                  v178 = 4 * (*__dst & 0xF);
                  if (v166 < v178 + 8)
                  {
                    goto LABEL_273;
                  }

                  v181 = &__dst[v178];
                  v182 = __dst[4 * (*__dst & 0xF)];
                  v183 = __dst[v178 + 1];
                  if (v183 == 4)
                  {
                    v184 = bswap32(*(v181 + 3)) >> 16;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  *(a1 + 439) = v184;
                  if (!v182)
                  {
                    v185 = a1[233];
                    if (*(v185 + 16) == 1)
                    {
                      v186 = (*(v185 + 32))(&__dst[v178], v285, a1);
                      v177 = a1 + 4;
                      if (v186)
                      {
                        goto LABEL_324;
                      }
                    }
                  }

                  v187 = v166 - v178;
                  v189 = v182 == 11 && v183 == 0;
                  if (v182 != 3 && !v189 || (v190 = v181[8], a1[70] = v181 + 8, a1[71] = v177 + v166 - (v181 + 8), v191 = 4 * (v190 & 0xF), v187 < (v191 + 16)) || (v192 = a1[233], v181[17] != *(v192 + 16)) || !(*(v192 + 32))(&v181[v191 + 8], v285, a1))
                  {
                    if (*(a1 + 444))
                    {
                      v193.s_addr = *(a1 + 158);
                      v194 = inet_ntoa(v193);
                      printf("\n%zu bytes from %s to ", v187, v194);
                      v195.s_addr = *(a1 + 12);
                      v196 = inet_ntoa(v195);
                      v197 = "OUT-OF-RANGE";
                      if (v182 <= 0x10)
                      {
                        v197 = pr_type_ttab[v182];
                      }

                      printf("%s: icmp type %d (%s) code %d\n", v196, v182, v197, v181[1]);
                      if (v187 >= 5)
                      {
                        v198 = (v181 + 8);
                        v199 = 8;
                        do
                        {
                          v200 = *v198++;
                          printf("%2d: x%8.8x\n", v199 - 4, v200);
                          v201 = v187 <= v199;
                          v199 += 4;
                        }

                        while (!v201);
                      }
                    }

                    goto LABEL_202;
                  }

                  if (v182 == 11)
                  {
                    v209 = -1;
                  }

                  else
                  {
                    v209 = v183 + 1;
                  }

LABEL_325:
                  v284 = v209;
                  if (v277)
                  {
                    if (*(a1 + 158) != v276)
                    {
                      v210 = a1[1];
                      if (v210)
                      {
                        v210(*a1, "\n   ");
                      }

                      else
                      {
                        printf("\n   ");
                      }

                      goto LABEL_330;
                    }
                  }

                  else
                  {
LABEL_330:
                    v211.s_addr = *(a1 + 158);
                    v308 = 0;
                    v310 = 0;
                    v307 = 528;
                    s_addr = v211.s_addr;
                    v212 = *(a1 + 32);
                    inet_ntoa(v211);
                    __strlcpy_chk();
                    v311 = v314;
                    if (*(a1 + 447))
                    {
                      v302[1] = as_lookup(a1[231], &v314, 2);
                      v213 = a1[1];
                      if (v213)
                      {
                        v214 = *a1;
                        v215 = as_lookup(a1[231], &v314, 2);
                        v213(v214, " [AS%u]", v215);
                      }

                      else
                      {
                        v216 = as_lookup(a1[231], &v314, 2);
                        printf(" [AS%u]", v216);
                      }
                    }

                    if (*(a1 + 446))
                    {
                      v217 = a1[1];
                      if (v217)
                      {
                        v217(*a1, " %s", &v314);
                      }

                      else
                      {
                        printf(" %s", &v314);
                      }
                    }

                    else
                    {
                      v218.s_addr = *(a1 + 158);
                      v219 = inetname(v218, 0);
                      strnlen(v219, 0x401uLL);
                      __memcpy_chk();
                      v220 = a1[1];
                      if (v220)
                      {
                        v220(*a1, " %s (%s)", v219, &v314);
                      }

                      else
                      {
                        printf(" %s (%s)", v219, &v314);
                      }

                      free(v219);
                      pcap_on_interface_0 = v144;
                    }

                    if (*(a1 + 444))
                    {
                      v221 = v166 - 4 * (v212 & 0xF);
                      v222 = a1[1];
                      if (v222)
                      {
                        v223 = *a1;
                        v224.s_addr = *(a1 + 12);
                        v225 = inet_ntoa(v224);
                        v222(v223, " %zu bytes to %s", v221, v225);
                      }

                      else
                      {
                        v226.s_addr = *(a1 + 12);
                        v227 = inet_ntoa(v226);
                        printf(" %zu bytes to %s", v221, v227);
                      }
                    }

                    v276 = *(a1 + 158);
                    LODWORD(v277) = v277 + 1;
                  }

                  v228 = (v293.tv_sec - v288.tv_sec);
                  v229 = (v293.tv_usec - v288.tv_usec) / 1000.0;
                  v230 = v229 + v228 * 1000.0;
                  v231 = a1[1];
                  if (v231)
                  {
                    v231(*a1, "  %.*f ms", 3, v229 + v228 * 1000.0);
                  }

                  else
                  {
                    printf("  %.*f ms", 3, v229 + v228 * 1000.0);
                  }

                  v3 = (a1 + 612);
                  v25 = a1 + 441;
                  v305 = v230;
                  if (*(a1 + 452))
                  {
                    v232 = *(a1[70] + 1) & 3;
                    if (v232 == (*(a1[68] + 1) & 3))
                    {
                      v233 = a1[1];
                      if (v233)
                      {
                        v233(*a1, " (ecn=passed)");
                      }

                      else
                      {
                        printf(" (ecn=passed)");
                      }

                      goto LABEL_368;
                    }

                    if ((*(a1[70] + 1) & 3) != 0)
                    {
                      if (v232 != 3)
                      {
                        goto LABEL_368;
                      }

                      v234 = a1[1];
                      if (v234)
                      {
                        v235 = *a1;
                        v236 = " (ecn=mangled)";
                        goto LABEL_364;
                      }

                      printf(" (ecn=mangled)");
                    }

                    else
                    {
                      v234 = a1[1];
                      if (v234)
                      {
                        v235 = *a1;
                        v236 = " (ecn=bleached)";
LABEL_364:
                        v234(v235, v236);
                      }

                      else
                      {
                        printf(" (ecn=bleached)");
                      }
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    pcap_on_interface_0 = v144;
                  }

LABEL_368:
                  if (*(a1 + 451))
                  {
                    v237 = a1[1];
                    if (v237)
                    {
                      v237(*a1, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }

                    v238 = a1[1];
                    if (v238)
                    {
                      v238(*a1, "%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                    }

                    else
                    {
                      printf("%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                    }

                    v239 = a1[68];
                    v240 = a1[81];
                    v289 = a1[70];
                    v241 = a1[71];
                    if (v240 >= 1)
                    {
                      v242 = a1[68];
                      v243 = a1[81];
                      do
                      {
                        v244 = *v242++;
                        printf("%02x", v244);
                        --v243;
                      }

                      while (v243);
                    }

                    putchar(10);
                    if (v240 >= v241)
                    {
                      v240 = v241;
                    }

                    v245 = v289;
                    v246 = v240;
                    if (v240 < 1)
                    {
                      v250 = 0;
                    }

                    else
                    {
                      do
                      {
                        v248 = *v239++;
                        v247 = v248;
                        v249 = *v245++;
                        if (v247 == v249)
                        {
                          printf("__");
                        }

                        else
                        {
                          printf("%02x");
                        }

                        --v246;
                      }

                      while (v246);
                      v250 = v240;
                    }

                    v201 = v241 <= v250;
                    v251 = v241 - v250;
                    pcap_on_interface_0 = v144;
                    if (!v201)
                    {
                      v252 = &v289[v250];
                      do
                      {
                        v253 = *v252++;
                        printf("%02x", v253);
                        --v251;
                      }

                      while (v251);
                    }

                    putchar(10);
                  }

                  if (v284 == -1)
                  {
                    v34 = a1 + 81;
LABEL_313:
                    v118 = a1 + 89;
                    v123 = v280;
                    goto LABEL_314;
                  }

                  if (v284 != -2)
                  {
                    v303 = v284 - 1;
                    switch(v284)
                    {
                      case 1:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !N";
                          goto LABEL_435;
                        }

                        printf(" !N");
                        break;
                      case 2:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !H";
                          goto LABEL_435;
                        }

                        printf(" !H");
                        break;
                      case 3:
                        ++v279;
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !P";
                          goto LABEL_435;
                        }

                        printf(" !P");
                        break;
                      case 4:
                        if (*(a1 + 40) <= 1u)
                        {
                          v258 = a1[1];
                          if (v258)
                          {
                            v258(*a1, " !");
                          }

                          else
                          {
                            printf(" !");
                          }
                        }

                        ++v279;
                        break;
                      case 5:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !F-%d";
                          goto LABEL_435;
                        }

                        printf(" !F-%d");
                        break;
                      case 6:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !S";
                          goto LABEL_435;
                        }

                        printf(" !S");
                        break;
                      case 7:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !U";
                          goto LABEL_435;
                        }

                        printf(" !U");
                        break;
                      case 8:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !W";
                          goto LABEL_435;
                        }

                        printf(" !W");
                        break;
                      case 9:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !I";
                          goto LABEL_435;
                        }

                        printf(" !I");
                        break;
                      case 10:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !A";
                          goto LABEL_435;
                        }

                        printf(" !A");
                        break;
                      case 11:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !Z";
                          goto LABEL_435;
                        }

                        printf(" !Z");
                        break;
                      case 12:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !Q";
                          goto LABEL_435;
                        }

                        printf(" !Q");
                        break;
                      case 13:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !T";
                          goto LABEL_435;
                        }

                        printf(" !T");
                        break;
                      case 14:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !X";
                          goto LABEL_435;
                        }

                        printf(" !X");
                        break;
                      case 15:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !V";
                          goto LABEL_435;
                        }

                        printf(" !V");
                        break;
                      case 16:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !C";
                          goto LABEL_435;
                        }

                        printf(" !C");
                        break;
                      default:
                        ++HIDWORD(v277);
                        v255 = a1[1];
                        if (v255)
                        {
                          v256 = *a1;
                          v257 = " !<%d>";
LABEL_435:
                          v255(v256, v257);
                        }

                        else
                        {
                          printf(" !<%d>");
                        }

                        break;
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    v34 = a1 + 81;
                    pcap_on_interface_0 = v144;
                    goto LABEL_313;
                  }

                  v34 = a1 + 81;
                  v118 = a1 + 89;
                  v123 = v280;
                  if (*(a1 + 40) <= 1u)
                  {
                    v254 = a1[1];
                    if (v254)
                    {
                      v254(*a1, " !");
                    }

                    else
                    {
                      printf(" !");
                    }
                  }

                  ++v279;
LABEL_314:
                  v207 = a1[3];
                  if (v207)
                  {
                    if (v279)
                    {
                      v208 = 1;
                    }

                    else
                    {
                      v208 = SHIDWORD(v277) >= 1 && SHIDWORD(v277) >= *(a1 + 440) - 1;
                    }

                    v306 = v208;
                    v207(a1[2], v302);
                  }

                  else
                  {
                    fflush(*MEMORY[0x277D85E08]);
                  }

                  v125 = *(a1 + 440);
                  v126 = v287;
                  if (v287 >= v125)
                  {
                    v259 = 100 * v282;
                    v260 = v279 == 0;
                    goto LABEL_456;
                  }

                  goto LABEL_178;
                }

                caplen = v298->caplen;
                v161 = 4;
LABEL_239:
                if (v161 <= caplen)
                {
                  goto LABEL_255;
                }
              }

              caplen = v298->caplen;
            }

            while (caplen < 0xE);
            v162 = *(v297 + 6);
            if (v162 == 8)
            {
              v161 = 14;
              goto LABEL_239;
            }

            if (v162 == 33024)
            {
              v161 = 18;
              goto LABEL_239;
            }

            v163 = __rev16(v162);
            v164 = a1[1];
            if (v164)
            {
              v164(*a1, "# cannot process TCP packet with Ethernet type 0x%04x\n", v163);
            }

            else
            {
              fprintf(*MEMORY[0x277D85DF8], "# cannot process TCP packet with Ethernet type 0x%04x\n", v163);
            }
          }
        }

        printf("%s: wrote %s %zu chars, ret=%zu\n", prog, a1[85], a1[81], v133);
        fflush(*MEMORY[0x277D85E08]);
        goto LABEL_201;
      }

      v129 = *v34;
      printf("[ %zu bytes", *v34);
      if (v129 >= 2)
      {
        v130 = 0;
        do
        {
          if ((v130 & 7) == 0)
          {
            printf("\n\t");
          }

          ++v130;
          v131 = *v128;
          v128 += 2;
          printf(" %04x", bswap32(v131) >> 16);
        }

        while (v129 >> 1 != v130);
        if ((*v34 & 1) == 0)
        {
          goto LABEL_193;
        }

        if ((v129 & 0xE) != 0)
        {
          goto LABEL_192;
        }
      }

      else if ((*v34 & 1) == 0)
      {
        goto LABEL_193;
      }

      printf("\n\t");
LABEL_192:
      printf(" %02x", *v128);
LABEL_193:
      puts("]");
      v128 = a1[68];
      goto LABEL_194;
    }

LABEL_117:
    v82 = gethostinfo(a1, v79);
    v83 = v82;
    v84 = *v82;
    a1[84] = *v82;
    *v82 = 0;
    v85 = a1[86];
    if (v85)
    {
      v86 = v82[2];
      if (v86 >= 1)
      {
        v87 = *(v82 + 2);
        v88 = *v295;
        v89 = v86 + 1;
        while (*v87 != v88)
        {
          ++v87;
          if (--v89 <= 1)
          {
            goto LABEL_122;
          }
        }

        *&v278->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v88;
        goto LABEL_142;
      }

LABEL_122:
      v90 = a1[1];
      if (v90)
      {
        v90(*a1, "%s: %s is not on interface %.32s\n", prog, v84, v85);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s: %s is not on interface %.32s\n");
      }
    }

    else
    {
      v91.s_addr = **(v82 + 2);
      *&v278->sa_len = 0;
      *(a1 + 636) = 0;
      *(a1 + 314) = 528;
      *(a1 + 158) = v91;
      if (v83[2] >= 2)
      {
        v92 = a1[1];
        v93 = prog;
        if (v92)
        {
          v94 = *a1;
          v95 = inet_ntoa(v91);
          v92(v94, "%s: Warning: %s has multiple addresses; using %s\n", v93, v84, v95);
        }

        else
        {
          v104 = *MEMORY[0x277D85DF8];
          v105 = inet_ntoa(v91);
          fprintf(v104, "%s: Warning: %s has multiple addresses; using %s\n", v93, v84, v105);
        }
      }

      v106 = v295;
      v107 = **(v83 + 2);
      v108 = v275 + 1;
      do
      {
        if (*v106 == v107)
        {
          a1[86] = v106[1];
        }

        v106 += 2;
        --v108;
      }

      while (v108 > 1);
      v295 = v106;
      if (a1[86])
      {
LABEL_142:
        freehostinfo(v83);
        goto LABEL_143;
      }

      v112 = a1[1];
      v113 = prog;
      v114.s_addr = *(a1 + 158);
      if (v112)
      {
        v115 = *a1;
        v116 = inet_ntoa(v114);
        v112(v115, "%s: no device for: %s\n", v113, v116);
      }

      else
      {
        v264 = *MEMORY[0x277D85DF8];
        inet_ntoa(v114);
        fprintf(v264, "%s: no device for: %s\n");
      }
    }

    freehostinfo(v83);
    return 1;
  }

  v50 = v48 + 1;
  v51 = v295 + 2;
  do
  {
    if (!strcmp(v49, *(v51 - 1)))
    {
      v78 = (a1 + 84);
      v79 = a1[84];
      if (!v79)
      {
        v96 = *(v51 - 4);
        *&v278->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v96;
        goto LABEL_143;
      }

      goto LABEL_117;
    }

    v295 = v51;
    --v50;
    v51 += 2;
  }

  while (v50 > 1);
  v52 = a1[1];
  if (v52)
  {
    v53 = *a1;
    v54 = "%s: Can't find interface %.32s\n";
    goto LABEL_81;
  }

  fprintf(*MEMORY[0x277D85DF8], "%s: Can't find interface %.32s\n");
  return 1;
}

pcap_t *create_pcap_on_interface_0(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v7.bf_len = 0;
  v7.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf_0);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf_0))
  {
    create_pcap_on_interface_cold_1_0();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2_0();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5_0();
  }

  inet_ntop(2, (a1 + 616), v9, 0x2Eu);
  inet_ntop(2, (a1 + 632), v8, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str_0, 0x400uLL, "tcp and src %s and dst %s", v9, v8);
  if (pcap_compile(v4, &v7, create_pcap_on_interface_filter_str_0, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3_0(v4);
  }

  if (pcap_setfilter(v4, &v7) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 1776) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }
  }

  return v4;
}

uint64_t p_cksum(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  BYTE1(v9) = *(a1 + 9);
  HIWORD(v9) = bswap32(a3) >> 16;
  v10 = *(a1 + 12);
  v7[1] = in_cksum(&v8, 0x14u);
  v7[0] = in_cksum(a2, a4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

char *inetname(in_addr a1, int a2)
{
  s_addr = a1.s_addr;
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1.s_addr;
  if (a2)
  {
    goto LABEL_2;
  }

  if ((gethostname(__s, 0x100uLL) & 0x80000000) == 0 && ((v6 = strchr(__s, 46)) != 0 || (v7 = gethostbyname(__s)) != 0 && (v6 = strchr(v7->h_name, 46)) != 0))
  {
    strlen(v6 + 1);
    __memmove_chk();
    s_addr = v12;
    if (!v12)
    {
      goto LABEL_2;
    }
  }

  else
  {
    __s[0] = 0;
    if (!s_addr)
    {
LABEL_2:
      v3.s_addr = s_addr;
      v4 = inet_ntoa(v3);
      return strdup(v4);
    }
  }

  v8 = gethostbyaddr(&v12, 4u, 2);
  if (!v8)
  {
    s_addr = v12;
    goto LABEL_2;
  }

  v9 = strchr(v8->h_name, 46);
  if (v9)
  {
    v10 = v9;
    if (!strcmp(v9 + 1, __s))
    {
      *v10 = 0;
    }
  }

  __strlcpy_chk();
  v11 = strlen(v13);
  clean_non_printable(v13, v11);
  v4 = v13;
  return strdup(v4);
}

uint64_t traceroute4_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x750uLL);
  result = 0;
  *(a1 + 560) = 0u;
  *(a1 + 1752) = 0x8000;
  *(a1 + 1760) = 0xFFFFFFFFLL;
  *(a1 + 1768) = 1;
  *(a1 + 1780) = 5;
  *(a1 + 1840) = 0u;
  *(a1 + 1792) = 1;
  *(a1 + 1864) = 0;
  *(a1 + 1836) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0xFFFFFFFFLL;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_set_result_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t traceroute6_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x10D90uLL);
  result = 0;
  *(a1 + 3372) = 20;
  *(a1 + 3432) = 3;
  *(a1 + 3388) = 0xFFFFFFFF00000001;
  *(a1 + 3440) = 30;
  *(a1 + 3364) = -32102;
  *(a1 + 3448) = 5;
  *(a1 + 3408) = 17;
  *(a1 + 8) = null_output_callback;
  return result;
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = MEMORY[0x277D85DE0];
      for (i = a1; ; ++i)
      {
        v6 = *i;
        if (!*i)
        {
          return a1;
        }

        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v4 + 4 * v6 + 60) & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t dump_hex(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  for (i = 0; i != a2; ++i)
  {
    result = printf("%02x", *(v3 + i));
    if ((~i & 0xF) != 0)
    {
      if ((i & 1) == 0)
      {
        continue;
      }

      v5 = 32;
    }

    else
    {
      v5 = 10;
    }

    result = putchar(v5);
  }

  if ((a2 & 0xF) != 0)
  {

    return putchar(10);
  }

  return result;
}

uint64_t in_cksum(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 += v3;
      a2 -= 2;
    }

    while (a2 > 1);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

void *as_setup(const char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "whois.radb.net";
  }

  *&v12.sa_data[10] = 0;
  *&v12.sa_data[2] = 0;
  *&v12.sa_len = 528;
  v2 = getservbyname("whois", "tcp");
  if (v2)
  {
    s_port = v2->s_port;
  }

  else
  {
    warnx("warning: whois/tcp service not found");
    LOWORD(s_port) = 11008;
  }

  *v12.sa_data = s_port;
  if (!inet_aton(v1, &v12.sa_data[2]))
  {
    v9 = gethostbyname(v1);
    if (!v9 || (v10 = v9, !*v9->h_addr_list))
    {
      as_setup_cold_1(v1);
      return 0;
    }

    v11 = socket(2, 1, 0);
    if (v11 != -1)
    {
      v5 = v11;
      while (1)
      {
        __memcpy_chk();
        ++v10->h_addr_list;
        if (!connect(v5, &v12, 0x10u))
        {
          goto LABEL_9;
        }

        if (!*v10->h_addr_list)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    warn("socket");
    return 0;
  }

  v4 = socket(2, 1, 0);
  if (v4 == -1)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (connect(v4, &v12, 0x10u))
  {
LABEL_18:
    close(v5);
    warn("connect");
    return 0;
  }

LABEL_9:
  v6 = fdopen(v5, "r+");
  if (v6)
  {
    v7 = v6;
    fwrite("!!\n", 3uLL, 1uLL, v6);
    fflush(v7);
    result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    if (result)
    {
      *result = v7;
      return result;
    }

    fclose(v7);
  }

  else
  {
    warn("fdopen");
  }

  return 0;
}

uint64_t as_lookup(FILE **a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 32;
  if (a3 == 30)
  {
    v5 = 128;
  }

  v10 = 0;
  fprintf(v4, "!r%s/%d,l\n", a2, v5);
  fflush(*a1);
  if (fgets(__s, 1024, *a1))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v12[1016] = 0;
      if ((v7 & 1) != 0 && (v6 = __s[0], __s[0] == 65))
      {
        sscanf(__s, "A%d\n");
      }

      else
      {
        if (!v10)
        {
          v6 = __s[0];
        }

        if (v6 != 65)
        {
          return 0;
        }

        v10 -= strlen(__s);
        if (!strncasecmp(__s, "origin:", 7uLL))
        {
          sscanf(v12, " AS%u");
        }
      }

      v8 = fgets(__s, 1024, *a1);
      v7 = 0;
      v6 = 65;
    }

    while (v8);
  }

  return 0;
}

void as_shutdown(FILE **a1)
{
  fwrite("!q\n", 3uLL, 1uLL, *a1);
  fclose(*a1);

  free(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_25B868874@<X0>(double *a2@<X8>)
{

  *a2 = sub_25B868924();
}

uint64_t sub_25B8688CC(double *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_25B86897C(v3);
}

double sub_25B868924()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B86897C(double a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868A80@<X0>(_DWORD *a2@<X8>)
{

  *a2 = sub_25B868B34();
}

uint64_t sub_25B868ADC(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_25B868B8C(v3);
}

uint64_t sub_25B868B34()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B868B8C(int a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868C50@<X0>(_DWORD *a2@<X8>)
{

  *a2 = sub_25B868D04();
}

uint64_t sub_25B868CAC(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_25B868D5C(v3);
}

uint64_t sub_25B868D04()
{
  swift_beginAccess();
  v2 = *(v0 + 28);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B868D5C(int a1)
{
  swift_beginAccess();
  *(v1 + 28) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868E20@<X0>(uint64_t a2@<X8>)
{

  v2 = sub_25B868F0C();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B868E94(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  sub_25B868F84(v5);
}

uint64_t sub_25B868F0C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B868F84(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 32) = v3;
  *(v1 + 36) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B869084@<X0>(uint64_t a2@<X8>)
{

  v2 = sub_25B869170();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B8690F8(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  sub_25B8691E8(v5);
}

uint64_t sub_25B869170()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B8691E8(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B8692E8@<X0>(uint64_t a2@<X8>)
{

  v2 = sub_25B8693D4();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B86935C(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  sub_25B86944C(v5);
}

uint64_t sub_25B8693D4()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B86944C(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 48) = v3;
  *(v1 + 52) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B86954C@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_25B869620();
  a2[1] = v2;
}

uint64_t sub_25B8695AC(void *a1, uint64_t *a2)
{
  sub_25B898FF0(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  sub_25B869688(v3, v4);
}

uint64_t sub_25B869620()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B869688(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  swift_endAccess();
}

uint64_t sub_25B86977C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = sub_25B869838() & 1;
}

uint64_t sub_25B8697DC(char *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_25B869894(v3 & 1);
}

uint64_t sub_25B869838()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_25B869894(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
  return swift_endAccess();
}

uint64_t sub_25B869960@<X0>(_BYTE *a2@<X8>)
{

  *a2 = sub_25B869A1C() & 1;
}

uint64_t sub_25B8699C0(char *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_25B869A78(v3 & 1);
}

uint64_t sub_25B869A1C()
{
  swift_beginAccess();
  v2 = *(v0 + 73);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_25B869A78(char a1)
{
  swift_beginAccess();
  *(v1 + 73) = a1;
  return swift_endAccess();
}

uint64_t sub_25B869B44@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_25B869C18();
  a2[1] = v2;
}

uint64_t sub_25B869BA4(void *a1, uint64_t *a2)
{
  sub_25B898FF0(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  sub_25B869C80(v3, v4);
}

uint64_t sub_25B869C18()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B869C80(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t TraceRouteOptions.init()()
{
  *(v0 + 16) = 1.0;
  *(v0 + 24) = 3;
  *(v0 + 28) = 32;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 73) = 0;
  v1 = sub_25B946F48("", 0, 1);
  result = v4;
  *(v4 + 80) = v1;
  *(v4 + 88) = v3;
  return result;
}

uint64_t sub_25B869E60(uint64_t a1, uint64_t a2)
{
  v36[2] = a1;
  v36[3] = a2;
  sub_25B946ED8();
  v36[0] = sub_25B946F48("timeout", 7, 1);
  v36[1] = v2;
  v35[2] = a1;
  v35[3] = a2;
  v26 = MEMORY[0x25F870E10](v36[0], v2, a1, a2);
  sub_25B86AEEC(v36);
  if (v26)
  {

    v37 = 0;
    v23 = 0;
LABEL_22:

    return v23;
  }

  sub_25B946ED8();
  v35[0] = sub_25B946F48("count", 5, 1);
  v35[1] = v3;
  v34[2] = a1;
  v34[3] = a2;
  v22 = MEMORY[0x25F870E10](v35[0], v3, a1, a2);
  sub_25B86AEEC(v35);
  if (v22)
  {

    v37 = 1;
    v23 = 1;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v34[0] = sub_25B946F48("maxTTL", 6, 1);
  v34[1] = v4;
  v33[2] = a1;
  v33[3] = a2;
  v21 = MEMORY[0x25F870E10](v34[0], v4, a1, a2);
  sub_25B86AEEC(v34);
  if (v21)
  {

    v37 = 2;
    v23 = 2;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v33[0] = sub_25B946F48("firstTTL", 8, 1);
  v33[1] = v5;
  v32[2] = a1;
  v32[3] = a2;
  v20 = MEMORY[0x25F870E10](v33[0], v5, a1, a2);
  sub_25B86AEEC(v33);
  if (v20)
  {

    v37 = 3;
    v23 = 3;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v32[0] = sub_25B946F48("probeIntervalMS", 15, 1);
  v32[1] = v6;
  v31[2] = a1;
  v31[3] = a2;
  v19 = MEMORY[0x25F870E10](v32[0], v6, a1, a2);
  sub_25B86AEEC(v32);
  if (v19)
  {

    v37 = 4;
    v23 = 4;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v31[0] = sub_25B946F48("pauseMS", 7, 1);
  v31[1] = v7;
  v30[2] = a1;
  v30[3] = a2;
  v18 = MEMORY[0x25F870E10](v31[0], v7, a1, a2);
  sub_25B86AEEC(v31);
  if (v18)
  {

    v37 = 5;
    v23 = 5;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v30[0] = sub_25B946F48("proto", 5, 1);
  v30[1] = v8;
  v29[2] = a1;
  v29[3] = a2;
  v17 = MEMORY[0x25F870E10](v30[0], v8, a1, a2);
  sub_25B86AEEC(v30);
  if (v17)
  {

    v37 = 6;
    v23 = 6;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48("skipNameResolution", 18, 1);
  v29[1] = v9;
  v28[2] = a1;
  v28[3] = a2;
  v16 = MEMORY[0x25F870E10](v29[0], v9, a1, a2);
  sub_25B86AEEC(v29);
  if (v16)
  {

    v37 = 7;
    v23 = 7;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48("disableIPChecksum", 17, 1);
  v28[1] = v10;
  v27[2] = a1;
  v27[3] = a2;
  v15 = MEMORY[0x25F870E10](v28[0], v10, a1, a2);
  sub_25B86AEEC(v28);
  if (v15)
  {

    v37 = 8;
    v23 = 8;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48("target", 6, 1);
  v27[1] = v11;
  v14 = MEMORY[0x25F870E10](v27[0], v11, a1, a2);
  sub_25B86AEEC(v27);
  if (v14)
  {

    v37 = 9;
    v23 = 9;
    goto LABEL_22;
  }

  return 10;
}

BOOL sub_25B86A4E4(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_25B86A9C0()
{
  v2 = qword_27FBAAAA8;
  if (!qword_27FBAAAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B86AA58(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("timeout", 7, 1);
    case 1:
      return sub_25B946F48("count", 5, 1);
    case 2:
      return sub_25B946F48("maxTTL", 6, 1);
    case 3:
      return sub_25B946F48("firstTTL", 8, 1);
    case 4:
      return sub_25B946F48("probeIntervalMS", 15, 1);
    case 5:
      return sub_25B946F48("pauseMS", 7, 1);
    case 6:
      return sub_25B946F48("proto", 5, 1);
    case 7:
      return sub_25B946F48("skipNameResolution", 18, 1);
    case 8:
      return sub_25B946F48("disableIPChecksum", 17, 1);
  }

  return sub_25B946F48("target", 6, 1);
}

uint64_t sub_25B86AD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B869E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B86ADA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B86A4CC();
  *a1 = result;
  return result;
}

unint64_t sub_25B86AE00()
{
  v2 = qword_27FBAAAB0;
  if (!qword_27FBAAAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TraceRouteOptions.deinit()
{
  sub_25B86AEEC(v0 + 56);
  sub_25B86AEEC(v0 + 80);
  return v2;
}

uint64_t sub_25B86AF58(uint64_t a1)
{
  v48 = a1;
  v79 = 0;
  v78 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAB8, &qword_25B9498D0);
  v49 = *(v55 - 8);
  v50 = v55 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v18 - v51;
  v79 = MEMORY[0x28223BE20](v48);
  v78 = v1;
  v52 = v79[3];
  v53 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v52);
  sub_25B86AE00();
  sub_25B9479C8();
  sub_25B868924();
  v2 = v56;
  v77 = 0;
  sub_25B947758();
  v57 = v2;
  v58 = v2;
  if (v2)
  {
    v26 = v58;
    result = (*(v49 + 8))(v54, v55);
    v27 = v26;
  }

  else
  {
    sub_25B868B34();
    v3 = v57;
    v76 = 1;
    sub_25B947788();
    v46 = v3;
    v47 = v3;
    if (v3)
    {
      v25 = v47;
      result = (*(v49 + 8))(v54, v55);
      v27 = v25;
    }

    else
    {
      sub_25B868D04();
      v4 = v46;
      v75 = 2;
      sub_25B947788();
      v44 = v4;
      v45 = v4;
      if (v4)
      {
        v24 = v45;
        result = (*(v49 + 8))(v54, v55);
        v27 = v24;
      }

      else
      {
        v5 = sub_25B868F0C();
        v6 = v44;
        v74 = v5;
        v73 = 3;
        v71 = v5;
        v72 = BYTE4(v5) & 1;
        sub_25B947718();
        v42 = v6;
        v43 = v6;
        if (v6)
        {
          v23 = v43;
          result = (*(v49 + 8))(v54, v55);
          v27 = v23;
        }

        else
        {
          v7 = sub_25B869170();
          v8 = v42;
          v70 = v7;
          v69 = 4;
          v67 = v7;
          v68 = BYTE4(v7) & 1;
          sub_25B947718();
          v40 = v8;
          v41 = v8;
          if (v8)
          {
            v22 = v41;
            result = (*(v49 + 8))(v54, v55);
            v27 = v22;
          }

          else
          {
            v9 = sub_25B8693D4();
            v10 = v40;
            v66 = v9;
            v65 = 5;
            v63 = v9;
            v64 = BYTE4(v9) & 1;
            sub_25B947728();
            v38 = v10;
            v39 = v10;
            if (v10)
            {
              v21 = v39;
              result = (*(v49 + 8))(v54, v55);
              v27 = v21;
            }

            else
            {
              sub_25B869620();
              v11 = v38;
              v35 = v12;
              v62 = 6;
              sub_25B9476F8();
              v36 = v11;
              v37 = v11;
              if (v11)
              {
                v20 = v37;

                result = (*(v49 + 8))(v54, v55);
                v27 = v20;
              }

              else
              {

                sub_25B869838();
                v13 = v36;
                v61 = 7;
                sub_25B947748();
                v33 = v13;
                v34 = v13;
                if (v13)
                {
                  v19 = v34;
                  result = (*(v49 + 8))(v54, v55);
                  v27 = v19;
                }

                else
                {
                  sub_25B869A1C();
                  v14 = v33;
                  v60 = 8;
                  sub_25B947748();
                  v31 = v14;
                  v32 = v14;
                  if (v14)
                  {
                    v18[1] = v32;
                    return (*(v49 + 8))(v54, v55);
                  }

                  else
                  {
                    sub_25B869C18();
                    v15 = v31;
                    v28 = v16;
                    v59 = 9;
                    sub_25B947738();
                    v29 = v15;
                    v30 = v15;
                    if (v15)
                    {
                      v18[0] = v30;
                    }

                    return (*(v49 + 8))(v54, v55);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t TraceRouteOptions.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  v5 = TraceRouteOptions.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t TraceRouteOptions.init(from:)(void *a1)
{
  v114 = a1;
  v137 = 0;
  v136 = 0;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAC0, &qword_25B9498D8);
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = v38 - v113;
  v137 = MEMORY[0x28223BE20](v114);
  v136 = v1;
  *(v1 + 16) = 1.0;
  *(v1 + 24) = 3;
  *(v1 + 28) = 32;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 73) = 0;
  v2 = sub_25B946F48("", 0, 1);
  v3 = v114;
  *(v1 + 80) = v2;
  *(v1 + 88) = v4;
  v117 = v3[3];
  v118 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v117);
  sub_25B86AE00();
  v5 = v116;
  sub_25B9479A8();
  v119 = v5;
  v120 = v5;
  if (v5)
  {
    v48 = v120;
  }

  else
  {
    v135[31] = 0;
    sub_25B9476B8();
    v106 = 0;
    v107 = v6;
    v108 = 0;
    v101 = v6;
    v102 = v135;
    swift_beginAccess();
    *(v109 + 16) = v101;
    swift_endAccess();
    v7 = v106;
    v134[31] = 1;
    v8 = sub_25B9476E8();
    v103 = v7;
    v104 = v8;
    v105 = v7;
    if (v7)
    {
      v47 = v105;
      (*(v111 + 8))(v115, v110);
      v48 = v47;
    }

    else
    {
      v96 = v104;
      v97 = v134;
      swift_beginAccess();
      *(v109 + 24) = v96;
      swift_endAccess();
      v9 = v103;
      v133[31] = 2;
      v10 = sub_25B9476E8();
      v98 = v9;
      v99 = v10;
      v100 = v9;
      if (v9)
      {
        v46 = v100;
        (*(v111 + 8))(v115, v110);
        v48 = v46;
      }

      else
      {
        v90 = v99;
        v91 = v133;
        swift_beginAccess();
        *(v109 + 28) = v90;
        swift_endAccess();
        v11 = v98;
        v132 = 3;
        v12 = sub_25B947678();
        v92 = v11;
        v131 = v12;
        v93 = v12;
        v94 = BYTE4(v12);
        v95 = v11;
        if (v11)
        {
          v45 = v95;
          (*(v111 + 8))(v115, v110);
          v48 = v45;
        }

        else
        {
          v84 = v94;
          v83 = v93;
          v85 = &v130;
          swift_beginAccess();
          v13 = v84;
          v14 = v109;
          *(v109 + 32) = v83;
          *(v14 + 36) = v13 & 1;
          swift_endAccess();
          v15 = v92;
          v129 = 4;
          v16 = sub_25B947678();
          v86 = v15;
          v128 = v16;
          v87 = v16;
          v88 = BYTE4(v16);
          v89 = v15;
          if (v15)
          {
            v44 = v89;
            (*(v111 + 8))(v115, v110);
            v48 = v44;
          }

          else
          {
            v77 = v88;
            v76 = v87;
            v78 = &v127;
            swift_beginAccess();
            v17 = v77;
            v18 = v109;
            *(v109 + 40) = v76;
            *(v18 + 44) = v17 & 1;
            swift_endAccess();
            v19 = v86;
            v126 = 5;
            v20 = sub_25B947688();
            v79 = v19;
            v125[3] = v20;
            v80 = v20;
            v81 = BYTE4(v20);
            v82 = v19;
            if (v19)
            {
              v43 = v82;
              (*(v111 + 8))(v115, v110);
              v48 = v43;
            }

            else
            {
              v70 = v81;
              v69 = v80;
              v71 = v125;
              swift_beginAccess();
              v21 = v70;
              v22 = v109;
              *(v109 + 48) = v69;
              *(v22 + 52) = v21 & 1;
              swift_endAccess();
              v23 = v79;
              v124[31] = 6;
              v24 = sub_25B947668();
              v72 = v23;
              v73 = v24;
              v74 = v25;
              v75 = v23;
              if (v23)
              {
                v42 = v75;
                (*(v111 + 8))(v115, v110);
                v48 = v42;
              }

              else
              {
                v64 = v74;
                v63 = v73;
                v65 = v124;
                swift_beginAccess();
                v26 = v109;
                v27 = v64;
                *(v109 + 56) = v63;
                *(v26 + 64) = v27;

                swift_endAccess();
                v28 = v72;
                v123[31] = 7;
                v29 = sub_25B9476A8();
                v66 = v28;
                v67 = v29;
                v68 = v28;
                if (v28)
                {
                  v41 = v68;
                  (*(v111 + 8))(v115, v110);
                  v48 = v41;
                }

                else
                {
                  v58 = v67;
                  v59 = v123;
                  swift_beginAccess();
                  *(v109 + 72) = v58 & 1;
                  swift_endAccess();
                  v30 = v66;
                  v122[31] = 8;
                  v31 = sub_25B9476A8();
                  v60 = v30;
                  v61 = v31;
                  v62 = v30;
                  if (v30)
                  {
                    v40 = v62;
                    (*(v111 + 8))(v115, v110);
                    v48 = v40;
                  }

                  else
                  {
                    v52 = v61;
                    v53 = v122;
                    swift_beginAccess();
                    *(v109 + 73) = v52 & 1;
                    swift_endAccess();
                    v32 = v60;
                    v121[31] = 9;
                    v33 = sub_25B947698();
                    v54 = v32;
                    v55 = v33;
                    v56 = v34;
                    v57 = v32;
                    if (!v32)
                    {
                      v50 = v56;
                      v49 = v55;
                      v51 = v121;
                      swift_beginAccess();
                      v35 = v50;
                      v36 = v109;
                      *(v109 + 80) = v49;
                      *(v36 + 88) = v35;

                      swift_endAccess();
                      (*(v111 + 8))(v115, v110);
                      __swift_destroy_boxed_opaque_existential_1(v114);
                      return v109;
                    }

                    v39 = v57;
                    (*(v111 + 8))(v115, v110);
                    v48 = v39;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v38[0] = v48;

  __swift_destroy_boxed_opaque_existential_1(v114);
  return v38[1];
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_25B86C32C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TraceRouteOptions.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TracerouteRequest.options.getter()
{
  v2 = *v0;

  return v2;
}

void TracerouteRequest.init(hostname:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  type metadata accessor for TraceRouteOptions();
  v5 = TraceRouteOptions.__allocating_init()();

  v7 = v5;
  sub_25B869C80(a1, a2);

  sub_25B86C480(&v7, a3);
  sub_25B86C4B8(&v7);
}

void *sub_25B86C480(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

BOOL sub_25B86C4E4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_25B946ED8();
  v7[0] = sub_25B946F48("options", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x25F870E10](v7[0], v2, a1, a2);
  sub_25B86AEEC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_25B86C6A8()
{
  v2 = qword_27FBAAAC8;
  if (!qword_27FBAAAC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAC8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_25B86C7C8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B86C4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B86C818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B86C5DC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25B86C87C()
{
  v2 = qword_27FBAAAD0;
  if (!qword_27FBAAAD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteRequest.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v21 = 0;
  v20 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAD8, &qword_25B9498E0);
  v6 = *(v13 - 8);
  v7 = v13 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v4 - v8;
  v21 = MEMORY[0x28223BE20](v5);
  v12 = *v1;
  v20 = v1;
  v9 = v21[3];
  v10 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v9);
  sub_25B86C87C();
  sub_25B9479C8();

  v16 = &v19;
  v19 = v12;
  v14 = type metadata accessor for TraceRouteOptions();
  sub_25B86CB10();
  v2 = v15;
  sub_25B947778();
  v17 = v2;
  v18 = v2;
  if (v2)
  {
    v4[1] = v18;
  }

  return (*(v6 + 8))(v11, v13);
}

unint64_t sub_25B86CB10()
{
  v2 = qword_27FBAAAE0;
  if (!qword_27FBAAAE0)
  {
    type metadata accessor for TraceRouteOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAE0);
    return WitnessTable;
  }

  return v2;
}

void TracerouteRequest.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v24 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAE8, &qword_25B9498E8);
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v4 - v16;
  v24 = MEMORY[0x28223BE20](v12);
  v19 = v24[3];
  v20 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v19);
  sub_25B86C87C();
  v2 = v18;
  sub_25B9479A8();
  v21 = v2;
  v22 = v2;
  if (v2)
  {
    v6 = v22;
  }

  else
  {
    v8 = type metadata accessor for TraceRouteOptions();
    sub_25B86CDB4();
    v3 = v21;
    sub_25B9476D8();
    v9 = v3;
    v10 = v3;
    if (!v3)
    {
      v7 = &v25;
      v25 = v23;
      (*(v14 + 8))(v17, v13);
      sub_25B86C480(v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_25B86C4B8(v7);
      return;
    }

    v5 = v10;
    (*(v14 + 8))(v17, v13);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_25B86CDB4()
{
  v2 = qword_27FBAAAF0;
  if (!qword_27FBAAAF0)
  {
    type metadata accessor for TraceRouteOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteResponse.results.getter()
{
  v2 = *v0;
  sub_25B946ED8();
  return v2;
}

NetworkInfo::TracerouteResponse __swiftcall TracerouteResponse.init(results:)(Swift::OpaquePointer results)
{
  v3 = v1;
  rawValue = 0;
  sub_25B946ED8();
  rawValue = results._rawValue;
  sub_25B86CF68(&rawValue, v3);

  sub_25B86CFA0(&rawValue);
  return result;
}

void *sub_25B86CF68(void *a1, void *a2)
{
  v4 = *a1;
  sub_25B946ED8();
  result = a2;
  *a2 = v4;
  return result;
}

BOOL sub_25B86CFCC(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_25B946ED8();
  v7[0] = sub_25B946F48("results", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x25F870E10](v7[0], v2, a1, a2);
  sub_25B86AEEC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_25B86D0FC()
{
  v2 = qword_27FBAAAF8;
  if (!qword_27FBAAAF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAF8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_25B86D1DC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B86CFCC(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25B86D240()
{
  v2 = qword_27FBAAB00;
  if (!qword_27FBAAB00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB00);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteResponse.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v21 = 0;
  v20 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB08, &unk_25B9498F0);
  v6 = *(v13 - 8);
  v7 = v13 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v4 - v8;
  v21 = MEMORY[0x28223BE20](v5);
  v12 = *v1;
  v20 = v1;
  v9 = v21[3];
  v10 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v9);
  sub_25B86D240();
  sub_25B9479C8();
  sub_25B946ED8();
  v16 = &v19;
  v19 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
  sub_25B86D4E0();
  v2 = v15;
  sub_25B947778();
  v17 = v2;
  v18 = v2;
  if (v2)
  {
    v4[1] = v18;
  }

  sub_25B86CFA0(&v19);
  return (*(v6 + 8))(v11, v13);
}

unint64_t sub_25B86D4E0()
{
  v2 = qword_27FBAAB18;
  if (!qword_27FBAAB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D5EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB18);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_25B86D5EC()
{
  v2 = qword_27FBAAB20;
  if (!qword_27FBAAB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB20);
    return WitnessTable;
  }

  return v2;
}

void TracerouteResponse.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v24 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB28, &qword_25B949900);
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v4 - v16;
  v24 = MEMORY[0x28223BE20](v12);
  v19 = v24[3];
  v20 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v19);
  sub_25B86D240();
  v2 = v18;
  sub_25B9479A8();
  v21 = v2;
  v22 = v2;
  if (v2)
  {
    v6 = v22;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D894();
    v3 = v21;
    sub_25B9476D8();
    v9 = v3;
    v10 = v3;
    if (!v3)
    {
      v7 = &v25;
      v25 = v23;
      (*(v14 + 8))(v17, v13);
      sub_25B86CF68(v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_25B86CFA0(v7);
      return;
    }

    v5 = v10;
    (*(v14 + 8))(v17, v13);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_25B86D894()
{
  v2 = qword_27FBAAB30;
  if (!qword_27FBAAB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D92C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B86D92C()
{
  v2 = qword_27FBAAB38;
  if (!qword_27FBAAB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B86DA40()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1118);
  __swift_project_value_buffer(v1, qword_27FBB1118);
  sub_25B946F48("com.apple.NetworkInfo", 21, 1);
  sub_25B946F48("TraceRoute", 10, 1);
  return sub_25B946C28();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_25B86DBD8()
{
  if (qword_27FBAAA28 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1118);
}

uint64_t sub_25B86DC44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B86DBD8();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double static TraceRoute.defaultTimeout.getter()
{
  v1 = sub_25B86DCB4();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultTimeout.setter(double a1)
{
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultTimeout.modify())(uint64_t a1)
{
  sub_25B86DCB4();
  swift_beginAccess();
  return sub_25B868A40;
}

double sub_25B86DDE4@<D0>(double *a1@<X8>)
{
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25B86DE44(uint64_t *a1)
{
  v3 = *a1;
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultCount.getter()
{
  v1 = sub_25B86DE9C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultCount.setter(int a1)
{
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultCount.modify())(uint64_t a1)
{
  sub_25B86DE9C();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86DFCC@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E02C(int *a1)
{
  v3 = *a1;
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultMaxTTL.getter()
{
  v1 = sub_25B86E084();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultMaxTTL.setter(int a1)
{
  v2 = sub_25B86E084();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultMaxTTL.modify())(uint64_t a1)
{
  sub_25B86E084();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86E1B4@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25B86E084();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E214(int *a1)
{
  v3 = *a1;
  v2 = sub_25B86E084();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultSkipNameResolution.getter()
{
  v1 = sub_25B86E26C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static TraceRoute.defaultSkipNameResolution.setter(char a1)
{
  v2 = sub_25B86E26C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultSkipNameResolution.modify())(uint64_t a1)
{
  sub_25B86E26C();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86E3A8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_25B86E26C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E408(char *a1)
{
  v3 = *a1;
  v2 = sub_25B86E26C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.trace(domains:)(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v3 = sub_25B946C48();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_25B86E594, 0);
}

uint64_t sub_25B86E594()
{
  v39 = v0;
  v1 = v0[11];
  v22 = v0[9];
  v23 = v0[8];
  v24 = v0[6];
  v0[2] = v0;
  v0[5] = sub_25B947838();
  v2 = sub_25B86DBD8();
  v3 = *(v22 + 16);
  v0[12] = v3;
  v0[13] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v23);
  sub_25B946ED8();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = sub_25B86F500;
  *(v26 + 24) = v25;

  v32 = sub_25B946C18();
  v33 = sub_25B947438();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25B88983C;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25B88B668;
  *(v30 + 24) = v27;
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v31 = v4;

  *v31 = sub_25B88B5F4;
  v31[1] = v28;

  v31[2] = sub_25B88B5F4;
  v31[3] = v29;

  v31[4] = sub_25B88B6B4;
  v31[5] = v30;
  sub_25B8860FC();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_25B9474D8();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(0, v17, v17);
    v20 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v34 = buf;
    v35 = v19;
    v36 = v20;
    sub_25B889650(2, &v34);
    sub_25B889650(1, &v34);
    v37 = sub_25B88B5F4;
    v38 = v28;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B88B5F4;
    v38 = v29;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B88B6B4;
    v38 = v30;
    sub_25B889664(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_25B859000, v32, v33, "Starting traceroute of %s", buf, 0xCu);
    sub_25B8896B0(v19, 0, v17);
    sub_25B8896B0(v20, 1, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v21[15] = 0;
  v9 = v21[11];
  v10 = v21[8];
  v12 = v21[7];
  v11 = v21[6];
  v8 = v21[9];
  MEMORY[0x277D82BD8](v32);
  v5 = *(v8 + 8);
  v21[16] = v5;
  v21[17] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v9, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB48, &qword_25B949930);
  sub_25B946ED8();
  v14 = swift_task_alloc();
  v21[18] = v14;
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v21 + 5;
  v13 = MEMORY[0x277D84F78] + 8;
  sub_25B87140C(v15, MEMORY[0x277D84F78] + 8);
  v6 = swift_task_alloc();
  v21[19] = v6;
  *v6 = v21[2];
  v6[1] = sub_25B86ECF0;
  v41 = v13;

  return MEMORY[0x282200600](v16, v15);
}

uint64_t sub_25B86ECF0()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](sub_25B86EE48, 0);
}

uint64_t sub_25B86EE48()
{
  v33 = v0;
  v17 = v0[12];
  v1 = v0[10];
  v16 = v0[8];
  v18 = v0[6];
  v0[2] = v0;
  v2 = sub_25B86DBD8();
  v17(v1, v2, v16);
  sub_25B946ED8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = sub_25B86F500;
  *(v20 + 24) = v19;

  v26 = sub_25B946C18();
  v27 = sub_25B947438();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25B88983C;
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B88B668;
  *(v24 + 24) = v21;
  sub_25B947838();
  v25 = v3;

  *v25 = sub_25B88B5F4;
  v25[1] = v22;

  v25[2] = sub_25B88B5F4;
  v25[3] = v23;

  v25[4] = sub_25B88B6B4;
  v25[5] = v24;
  sub_25B8860FC();

  if (os_log_type_enabled(v26, v27))
  {
    v4 = v15[15];
    buf = sub_25B9474D8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v13 = sub_25B8895FC(0, v11, v11);
    v14 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v29 = v13;
    v30 = v14;
    sub_25B889650(2, &v28);
    sub_25B889650(1, &v28);
    v31 = sub_25B88B5F4;
    v32 = v22;
    sub_25B889664(&v31, &v28, &v29, &v30);
    if (v4)
    {
    }

    v31 = sub_25B88B5F4;
    v32 = v23;
    sub_25B889664(&v31, &v28, &v29, &v30);
    v31 = sub_25B88B6B4;
    v32 = v24;
    sub_25B889664(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_25B859000, v26, v27, "Completed traceroute of %s", buf, 0xCu);
    sub_25B8896B0(v13, 0, v11);
    sub_25B8896B0(v14, 1, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v8 = v15[16];
  v9 = v15[10];
  v7 = v15[8];
  MEMORY[0x277D82BD8](v26);
  v8(v9, v7);
  v10 = v15[5];
  sub_25B946ED8();
  sub_25B86CFA0(v15 + 5);

  v6 = *(v15[2] + 8);

  return v6(v10);
}

uint64_t sub_25B86F48C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25B946ED8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_25B86F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a5;
  v5[33] = a4;
  v5[32] = a3;
  v5[31] = a2;
  v5[20] = v5;
  v5[21] = 0;
  v5[22] = 0;
  v5[23] = 0;
  v5[24] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[30] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00);
  v5[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC70, &qword_25B94A5C0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = a4;
  v5[24] = a5;

  return MEMORY[0x2822009F8](sub_25B86F6C0, 0);
}

uint64_t sub_25B86F6C0()
{
  v23 = v0[32];
  v0[20] = v0;
  sub_25B946ED8();
  v0[25] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  sub_25B89906C();
  sub_25B947418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC80, &qword_25B94A5C8);
    sub_25B9475E8();
    v20 = v22[16];
    v21 = v22[17];
    if (!v21)
    {
      break;
    }

    v18 = v22[35];
    v16 = v22[33];
    v22[18] = v20;
    v22[19] = v21;
    type metadata accessor for TraceRouteOptions();
    v19 = TraceRouteOptions.__allocating_init()();
    v22[30] = v19;
    v5 = sub_25B86DCB4();
    swift_beginAccess();
    v6 = *v5;
    swift_endAccess();
    sub_25B86897C(v6);
    v7 = sub_25B86DE9C();
    swift_beginAccess();
    v8 = *v7;
    swift_endAccess();
    sub_25B868B8C(v8);
    v9 = sub_25B86E084();
    swift_beginAccess();
    v10 = *v9;
    swift_endAccess();
    sub_25B868D5C(v10);
    v11 = sub_25B86E26C();
    swift_beginAccess();
    v12 = *v11;
    swift_endAccess();
    sub_25B869894(v12 & 1);
    sub_25B946ED8();
    sub_25B869C80(v20, v21);
    v14 = sub_25B9472A8();
    v15 = *(*(v14 - 8) + 56);
    v15(v18, 1);
    sub_25B946ED8();

    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v16;
    v13[5] = v20;
    v13[6] = v21;
    v13[7] = v19;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC90, &qword_25B94A5E0);
    sub_25B8A5420(v18, &unk_25B94A5D8, v13, v17);
    sub_25B8992C8(v18);
    (v15)(v18, 1, 1, v14);

    v1 = swift_allocObject();
    v1[2] = 0;
    v1[3] = 0;
    v1[4] = v16;
    v1[5] = v20;
    v1[6] = v21;
    v1[7] = v19;
    sub_25B8A5420(v18, &unk_25B94A5F0, v1, v17);
    sub_25B8992C8(v18);
  }

  sub_25B86CFA0(v22 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB48, &qword_25B949930);
  sub_25B947278();
  v2 = swift_task_alloc();
  v22[39] = v2;
  *v2 = v22[20];
  v2[1] = sub_25B86FBE8;
  v3 = v22[36];

  return MEMORY[0x2822002E8](v22 + 26, 0, 0, v3);
}

uint64_t sub_25B86FBE8()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x2822009F8](sub_25B86FD00, 0);
}

uint64_t sub_25B86FD00()
{
  *(v0 + 160) = v0;
  v6 = *(v0 + 208);
  if (v6 == 1)
  {
    (*(v5[37] + 8))();

    v1 = *(v5[20] + 8);

    return v1();
  }

  else
  {
    v5[27] = v6;
    sub_25B946ED8();
    if (v6)
    {
      v5[28] = v6;
      sub_25B946ED8();
      v5[29] = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B8990F4();
      sub_25B9471F8();
    }

    v3 = swift_task_alloc();
    v5[39] = v3;
    *v3 = v5[20];
    v3[1] = sub_25B86FBE8;
    v4 = v5[36];

    return MEMORY[0x2822002E8](v5 + 26, 0, 0, v4);
  }
}

uint64_t sub_25B86FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a7;
  v7[17] = a6;
  v7[16] = a5;
  v7[15] = a1;
  v7[9] = v7;
  v7[10] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[13] = 0;
  v8 = sub_25B946C48();
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v7[10] = a4;
  v7[7] = a5;
  v7[8] = a6;
  v7[11] = a7;

  return MEMORY[0x2822009F8](sub_25B8700E0, 0);
}

uint64_t sub_25B8700E0()
{
  v36 = v0;
  v1 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v21 = v0[17];
  v20 = v0[16];
  v0[9] = v0;
  v2 = sub_25B86DBD8();
  (*(v18 + 16))(v1, v2, v19);
  sub_25B946ED8();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v28 = sub_25B946C18();
  v29 = sub_25B947438();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_25B8994FC;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25B88B668;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v27 = v3;

  *v27 = sub_25B88B5F4;
  v27[1] = v24;

  v27[2] = sub_25B88B5F4;
  v27[3] = v25;

  v27[4] = sub_25B88B6B4;
  v27[5] = v26;
  sub_25B8860FC();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_25B9474D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(0, v13, v13);
    v16 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v15;
    v33 = v16;
    sub_25B889650(2, &v31);
    sub_25B889650(1, &v31);
    v34 = sub_25B88B5F4;
    v35 = v24;
    sub_25B889664(&v34, &v31, &v32, &v33);
    v34 = sub_25B88B5F4;
    v35 = v25;
    sub_25B889664(&v34, &v31, &v32, &v33);
    v34 = sub_25B88B6B4;
    v35 = v26;
    sub_25B889664(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_25B859000, v28, v29, "Starting traceroute4 of %s", buf, 0xCu);
    sub_25B8896B0(v15, 0, v13);
    sub_25B8896B0(v16, 1, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = v17[21];
  v11 = v17[19];
  v12 = v17[18];
  v9 = v17[20];
  MEMORY[0x277D82BD8](v28);
  (*(v9 + 8))(v10, v11);
  type metadata accessor for TraceRoute4();

  v17[12] = TraceRoute4.__allocating_init(options:)(v12);
  v30[3] = type metadata accessor for JSONTracerouteDelegate();
  v30[4] = &protocol witness table for JSONTracerouteDelegate;
  v30[0] = JSONTracerouteDelegate.__allocating_init()();
  sub_25B871684(v30);
  sub_25B883650(sub_25B8709DC);
  sub_25B871628(v17 + 2);
  if (v17[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC98, &qword_25B94A5F8);
    if (swift_dynamicCast())
    {
      v7 = v17[14];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    sub_25B88BBA0(v17 + 2);
    v8 = 0;
  }

  if (v8)
  {
    v6 = v17[15];
    v17[13] = v8;
    *v6 = sub_25B94194C();
  }

  else
  {
    *v17[15] = 0;
  }

  v4 = *(v17[9] + 8);

  return v4();
}

uint64_t sub_25B8709F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a7;
  v7[17] = a6;
  v7[16] = a5;
  v7[15] = a1;
  v7[9] = v7;
  v7[10] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[13] = 0;
  v8 = sub_25B946C48();
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v7[10] = a4;
  v7[7] = a5;
  v7[8] = a6;
  v7[11] = a7;

  return MEMORY[0x2822009F8](sub_25B870B44, 0);
}

uint64_t sub_25B870B44()
{
  v36 = v0;
  v1 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v21 = v0[17];
  v20 = v0[16];
  v0[9] = v0;
  v2 = sub_25B86DBD8();
  (*(v18 + 16))(v1, v2, v19);
  sub_25B946ED8();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v28 = sub_25B946C18();
  v29 = sub_25B947438();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_25B8994FC;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25B88B668;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v27 = v3;

  *v27 = sub_25B88B5F4;
  v27[1] = v24;

  v27[2] = sub_25B88B5F4;
  v27[3] = v25;

  v27[4] = sub_25B88B6B4;
  v27[5] = v26;
  sub_25B8860FC();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_25B9474D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(0, v13, v13);
    v16 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v15;
    v33 = v16;
    sub_25B889650(2, &v31);
    sub_25B889650(1, &v31);
    v34 = sub_25B88B5F4;
    v35 = v24;
    sub_25B889664(&v34, &v31, &v32, &v33);
    v34 = sub_25B88B5F4;
    v35 = v25;
    sub_25B889664(&v34, &v31, &v32, &v33);
    v34 = sub_25B88B6B4;
    v35 = v26;
    sub_25B889664(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_25B859000, v28, v29, "Starting traceroute6 of %s", buf, 0xCu);
    sub_25B8896B0(v15, 0, v13);
    sub_25B8896B0(v16, 1, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = v17[21];
  v11 = v17[19];
  v12 = v17[18];
  v9 = v17[20];
  MEMORY[0x277D82BD8](v28);
  (*(v9 + 8))(v10, v11);
  type metadata accessor for TraceRoute6();

  v17[12] = TraceRoute6.__allocating_init(options:)(v12);
  v30[3] = type metadata accessor for JSONTracerouteDelegate();
  v30[4] = &protocol witness table for JSONTracerouteDelegate;
  v30[0] = JSONTracerouteDelegate.__allocating_init()();
  sub_25B871684(v30);
  sub_25B882480(sub_25B8709DC, 0);
  sub_25B871628(v17 + 2);
  if (v17[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC98, &qword_25B94A5F8);
    if (swift_dynamicCast())
    {
      v7 = v17[14];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    sub_25B88BBA0(v17 + 2);
    v8 = 0;
  }

  if (v8)
  {
    v6 = v17[15];
    v17[13] = v8;
    *v6 = sub_25B94194C();
  }

  else
  {
    *v17[15] = 0;
  }

  v4 = *(v17[9] + 8);

  return v4();
}

id TraceRoute.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for TraceRoute();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id TraceRoute.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TraceRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B871558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  v5[5] = v3;
  sub_25B871628(v5);
  memcpy(a2, v5, 0x28uLL);
}

uint64_t sub_25B8715C4(void *a1, void *a2)
{
  sub_25B88BA48(a1, v3);

  sub_25B871684(v3);
}

uint64_t sub_25B871628@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_25B88BA48((v1 + 16), a1);
  return swift_endAccess();
}

void *sub_25B871684(void *a1)
{
  v4[5] = 0;
  v4[6] = a1;
  sub_25B88BA48(a1, v4);
  swift_beginAccess();
  sub_25B88BADC(v4, (v1 + 16));
  swift_endAccess();
  return sub_25B88BBA0(a1);
}

uint64_t sub_25B871700()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B871758(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_25B8717B8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_25B88BA48((v1 + 64), a1);
  return swift_endAccess();
}

void *sub_25B871814(void *a1)
{
  v4[5] = 0;
  v4[6] = a1;
  sub_25B88BA48(a1, v4);
  swift_beginAccess();
  sub_25B88BADC(v4, (v1 + 64));
  swift_endAccess();
  return sub_25B88BBA0(a1);
}

uint64_t sub_25B8718F4()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B871950(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v1 + 104) = a1;

  swift_endAccess();
}

uint64_t sub_25B871A2C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t sub_25B871A88(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t TraceRoute6.init(options:)(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  type metadata accessor for TraceRouteResult();
  v1[13] = sub_25B947838();
  v1[14] = 0;
  type metadata accessor for traceroute6_context_t(0);
  v1[7] = sub_25B9474D8();

  v7[3] = type metadata accessor for TraceRoute6();
  v7[4] = &protocol witness table for TraceRoute6;
  v7[0] = v1;
  swift_beginAccess();
  sub_25B88BADC(v7, v1 + 8);
  swift_endAccess();
  swift_beginAccess();
  v5 = v1[7];
  swift_endAccess();
  traceroute6_context_init(v5);

  if (a1)
  {

    swift_beginAccess();
    *(v4 + 112) = a1;

    swift_endAccess();
    sub_25B881B50(a1);
  }

  swift_beginAccess();
  v3 = *(v4 + 56);
  swift_endAccess();
  traceroute4_set_result_callback(v3, v4, sub_25B8819CC);

  return v4;
}

uint64_t sub_25B871D8C(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v29 = a1;
  v28 = a2;
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NetworkInfo/TraceRoute.swift", 28, 2, 144, 0);
    __break(1u);
  }

  v27 = v13;
  v24 = sub_25B871A2C();
  if (v24)
  {

    sub_25B86C4B8(&v24);
    v9 = sub_25B869C18();
    v10 = v2;

    v11 = v9;
    v12 = v10;
  }

  else
  {
    sub_25B86C4B8(&v24);
    v11 = 0;
    v12 = 0;
  }

  v22 = v11;
  v23 = v12;
  if (v12)
  {
    v25 = v22;
    v26 = v23;
  }

  else
  {
    v25 = sub_25B946F48("unknown", 7, 1);
    v26 = v3;
  }

  v20 = v25;
  v21 = v26;
  type metadata accessor for TraceRouteResult();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NetworkInfo/TraceRoute.swift", 28, 2, 146, 0);
    __break(1u);
  }

  v7 = sub_25B872094(v8);
  v19 = v7;
  sub_25B8717B8(v15);
  if (v15[3])
  {
    sub_25B899030(v15, __dst);
    v5 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(__dst, v17);
    (*(v6 + 8))(v7, v5);
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    sub_25B88BBA0(v15);
  }
}

uint64_t sub_25B872094(uint64_t a1)
{
  v11 = MEMORY[0x28223BE20](a1);
  v8 = v2;
  v9 = v3;
  v827 = v11;
  v825 = v2;
  v826 = v3;
  v824 = v1;
  type metadata accessor for TraceRouteResult();
  v10 = TraceRouteResult.__allocating_init()();
  v823 = v10;
  sub_25B946ED8();
  sub_25B884534(v8, v9);
  sub_25B883804(*v11);
  sub_25B883970(*(v11 + 4));
  sub_25B868B8C(*(v11 + 8));
  sub_25B868D5C(*(v11 + 12));
  sub_25B883B40(*(v11 + 16));
  sub_25B883CAC(*(v11 + 20));
  sub_25B947368();
  sub_25B883E78(v4);
  sub_25B884390(*(v11 + 40) & 1);
  memcpy(v828, (v11 + 1201), sizeof(v828));
  v829 = 0;
  v42[0] = v828[0];
  v42[1] = v828[1];
  v42[2] = v828[2];
  v42[3] = v828[3];
  v42[4] = v828[4];
  v42[5] = v828[5];
  v42[6] = v828[6];
  v42[7] = v828[7];
  v42[8] = v828[8];
  v42[9] = v828[9];
  v42[10] = v828[10];
  v42[11] = v828[11];
  v42[12] = v828[12];
  v42[13] = v828[13];
  v42[14] = v828[14];
  v42[15] = v828[15];
  v42[16] = v828[16];
  v42[17] = v828[17];
  v42[18] = v828[18];
  v42[19] = v828[19];
  v42[20] = v828[20];
  v42[21] = v828[21];
  v42[22] = v828[22];
  v42[23] = v828[23];
  v42[24] = v828[24];
  v42[25] = v828[25];
  v42[26] = v828[26];
  v42[27] = v828[27];
  v42[28] = v828[28];
  v42[29] = v828[29];
  v42[30] = v828[30];
  v42[31] = v828[31];
  v42[32] = v828[32];
  v42[33] = v828[33];
  v42[34] = v828[34];
  v42[35] = v828[35];
  v42[36] = v828[36];
  v42[37] = v828[37];
  v42[38] = v828[38];
  v42[39] = v828[39];
  v42[40] = v828[40];
  v42[41] = v828[41];
  v42[42] = v828[42];
  v42[43] = v828[43];
  v42[44] = v828[44];
  v42[45] = v828[45];
  v42[46] = v828[46];
  v42[47] = v828[47];
  v42[48] = v828[48];
  v42[49] = v828[49];
  v42[50] = v828[50];
  v42[51] = v828[51];
  v42[52] = v828[52];
  v42[53] = v828[53];
  v42[54] = v828[54];
  v42[55] = v828[55];
  v42[56] = v828[56];
  v42[57] = v828[57];
  v42[58] = v828[58];
  v42[59] = v828[59];
  v42[60] = v828[60];
  v42[61] = v828[61];
  v42[62] = v828[62];
  v42[63] = v828[63];
  v42[64] = v828[64];
  v42[65] = v828[65];
  v42[66] = v828[66];
  v42[67] = v828[67];
  v42[68] = v828[68];
  v42[69] = v828[69];
  v42[70] = v828[70];
  v42[71] = v828[71];
  v42[72] = v828[72];
  v42[73] = v828[73];
  v42[74] = v828[74];
  v42[75] = v828[75];
  v42[76] = v828[76];
  v42[77] = v828[77];
  v42[78] = v828[78];
  v42[79] = v828[79];
  v42[80] = v828[80];
  v42[81] = v828[81];
  v42[82] = v828[82];
  v42[83] = v828[83];
  v42[84] = v828[84];
  v42[85] = v828[85];
  v42[86] = v828[86];
  v42[87] = v828[87];
  v42[88] = v828[88];
  v42[89] = v828[89];
  v42[90] = v828[90];
  v42[91] = v828[91];
  v42[92] = v828[92];
  v42[93] = v828[93];
  v42[94] = v828[94];
  v42[95] = v828[95];
  v42[96] = v828[96];
  v42[97] = v828[97];
  v42[98] = v828[98];
  v42[99] = v828[99];
  v42[100] = v828[100];
  v42[101] = v828[101];
  v42[102] = v828[102];
  v42[103] = v828[103];
  v42[104] = v828[104];
  v42[105] = v828[105];
  v42[106] = v828[106];
  v42[107] = v828[107];
  v42[108] = v828[108];
  v42[109] = v828[109];
  v42[110] = v828[110];
  v42[111] = v828[111];
  v42[112] = v828[112];
  v42[113] = v828[113];
  v42[114] = v828[114];
  v42[115] = v828[115];
  v42[116] = v828[116];
  v42[117] = v828[117];
  v42[118] = v828[118];
  v42[119] = v828[119];
  v42[120] = v828[120];
  v42[121] = v828[121];
  v42[122] = v828[122];
  v42[123] = v828[123];
  v42[124] = v828[124];
  v42[125] = v828[125];
  v42[126] = v828[126];
  v42[127] = v828[127];
  v42[128] = v828[128];
  v42[129] = v828[129];
  v42[130] = v828[130];
  v42[131] = v828[131];
  v42[132] = v828[132];
  v42[133] = v828[133];
  v42[134] = v828[134];
  v42[135] = v828[135];
  v42[136] = v828[136];
  v42[137] = v828[137];
  v42[138] = v828[138];
  v42[139] = v828[139];
  v42[140] = v828[140];
  v42[141] = v828[141];
  v42[142] = v828[142];
  v42[143] = v828[143];
  v42[144] = v828[144];
  v42[145] = v828[145];
  v42[146] = v828[146];
  v42[147] = v828[147];
  v42[148] = v828[148];
  v42[149] = v828[149];
  v42[150] = v828[150];
  v42[151] = v828[151];
  v42[152] = v828[152];
  v42[153] = v828[153];
  v42[154] = v828[154];
  v42[155] = v828[155];
  v42[156] = v828[156];
  v42[157] = v828[157];
  v42[158] = v828[158];
  v42[159] = v828[159];
  v42[160] = v828[160];
  v42[161] = v828[161];
  v42[162] = v828[162];
  v42[163] = v828[163];
  v42[164] = v828[164];
  v42[165] = v828[165];
  v42[166] = v828[166];
  v42[167] = v828[167];
  v42[168] = v828[168];
  v42[169] = v828[169];
  v42[170] = v828[170];
  v42[171] = v828[171];
  v42[172] = v828[172];
  v42[173] = v828[173];
  v42[174] = v828[174];
  v42[175] = v828[175];
  v42[176] = v828[176];
  v42[177] = v828[177];
  v42[178] = v828[178];
  v42[179] = v828[179];
  v42[180] = v828[180];
  v42[181] = v828[181];
  v42[182] = v828[182];
  v42[183] = v828[183];
  v42[184] = v828[184];
  v42[185] = v828[185];
  v42[186] = v828[186];
  v42[187] = v828[187];
  v42[188] = v828[188];
  v42[189] = v828[189];
  v42[190] = v828[190];
  v42[191] = v828[191];
  v42[192] = v828[192];
  v42[193] = v828[193];
  v42[194] = v828[194];
  v42[195] = v828[195];
  v42[196] = v828[196];
  v42[197] = v828[197];
  v42[198] = v828[198];
  v42[199] = v828[199];
  v42[200] = v828[200];
  v42[201] = v828[201];
  v42[202] = v828[202];
  v42[203] = v828[203];
  v42[204] = v828[204];
  v42[205] = v828[205];
  v42[206] = v828[206];
  v42[207] = v828[207];
  v42[208] = v828[208];
  v42[209] = v828[209];
  v42[210] = v828[210];
  v42[211] = v828[211];
  v42[212] = v828[212];
  v42[213] = v828[213];
  v42[214] = v828[214];
  v42[215] = v828[215];
  v42[216] = v828[216];
  v42[217] = v828[217];
  v42[218] = v828[218];
  v42[219] = v828[219];
  v42[220] = v828[220];
  v42[221] = v828[221];
  v42[222] = v828[222];
  v42[223] = v828[223];
  v42[224] = v828[224];
  v42[225] = v828[225];
  v42[226] = v828[226];
  v42[227] = v828[227];
  v42[228] = v828[228];
  v42[229] = v828[229];
  v42[230] = v828[230];
  v42[231] = v828[231];
  v42[232] = v828[232];
  v42[233] = v828[233];
  v42[234] = v828[234];
  v42[235] = v828[235];
  v42[236] = v828[236];
  v42[237] = v828[237];
  v42[238] = v828[238];
  v42[239] = v828[239];
  v42[240] = v828[240];
  v42[241] = v828[241];
  v42[242] = v828[242];
  v42[243] = v828[243];
  v43 = *&v828[244];
  v44 = v828[246];
  v45 = v828[247];
  v46 = v828[248];
  v47 = v828[249];
  v48 = v828[250];
  v49 = v828[251];
  v50 = v828[252];
  v51 = v828[253];
  v52 = v828[254];
  v53 = v828[255];
  v54 = v828[256];
  v55 = v828[257];
  v56 = v828[258];
  v57 = v828[259];
  v58 = v828[260];
  v59 = v828[261];
  v60 = v828[262];
  v61 = v828[263];
  v62 = v828[264];
  v63 = v828[265];
  v64 = v828[266];
  v65 = v828[267];
  v66 = v828[268];
  v67 = v828[269];
  v68 = v828[270];
  v69 = v828[271];
  v70 = v828[272];
  v71 = v828[273];
  v72 = v828[274];
  v73 = v828[275];
  v74 = v828[276];
  v75 = v828[277];
  v76 = v828[278];
  v77 = v828[279];
  v78 = v828[280];
  v79 = v828[281];
  v80 = v828[282];
  v81 = v828[283];
  v82 = v828[284];
  v83 = v828[285];
  v84 = v828[286];
  v85 = v828[287];
  v86 = v828[288];
  v87 = v828[289];
  v88 = v828[290];
  v89 = v828[291];
  v90 = v828[292];
  v91 = v828[293];
  v92 = v828[294];
  v93 = v828[295];
  v94 = v828[296];
  v95 = v828[297];
  v96 = v828[298];
  v97 = v828[299];
  v98 = v828[300];
  v99 = v828[301];
  v100 = v828[302];
  v101 = v828[303];
  v102 = v828[304];
  v103 = v828[305];
  v104 = v828[306];
  v105 = v828[307];
  v106 = v828[308];
  v107 = v828[309];
  v108 = v828[310];
  v109 = v828[311];
  v110 = v828[312];
  v111 = v828[313];
  v112 = v828[314];
  v113 = v828[315];
  v114 = v828[316];
  v115 = v828[317];
  v116 = v828[318];
  v117 = v828[319];
  v118 = v828[320];
  v119 = v828[321];
  v120 = v828[322];
  v121 = v828[323];
  v122 = v828[324];
  v123 = v828[325];
  v124 = v828[326];
  v125 = v828[327];
  v126 = v828[328];
  v127 = v828[329];
  v128 = v828[330];
  v129 = v828[331];
  v130 = v828[332];
  v131 = v828[333];
  v132 = v828[334];
  v133 = v828[335];
  v134 = v828[336];
  v135 = v828[337];
  v136 = v828[338];
  v137 = v828[339];
  v138 = v828[340];
  v139 = v828[341];
  v140 = v828[342];
  v141 = v828[343];
  v142 = v828[344];
  v143 = v828[345];
  v144 = v828[346];
  v145 = v828[347];
  v146 = v828[348];
  v147 = v828[349];
  v148 = v828[350];
  v149 = v828[351];
  v150 = v828[352];
  v151 = v828[353];
  v152 = v828[354];
  v153 = v828[355];
  v154 = v828[356];
  v155 = v828[357];
  v156 = v828[358];
  v157 = v828[359];
  v158 = v828[360];
  v159 = v828[361];
  v160 = v828[362];
  v161 = v828[363];
  v162 = v828[364];
  v163 = v828[365];
  v164 = v828[366];
  v165 = v828[367];
  v166 = v828[368];
  v167 = v828[369];
  v168 = v828[370];
  v169 = v828[371];
  v170 = v828[372];
  v171 = v828[373];
  v172 = v828[374];
  v173 = v828[375];
  v174 = v828[376];
  v175 = v828[377];
  v176 = v828[378];
  v177 = v828[379];
  v178 = v828[380];
  v179 = v828[381];
  v180 = v828[382];
  v181 = v828[383];
  v182 = v828[384];
  v183 = v828[385];
  v184 = v828[386];
  v185 = v828[387];
  v186 = v828[388];
  v187 = v828[389];
  v188 = v828[390];
  v189 = v828[391];
  v190 = v828[392];
  v191 = v828[393];
  v192 = v828[394];
  v193 = v828[395];
  v194 = v828[396];
  v195 = v828[397];
  v196 = v828[398];
  v197 = v828[399];
  v198 = v828[400];
  v199 = v828[401];
  v200 = v828[402];
  v201 = v828[403];
  v202 = v828[404];
  v203 = v828[405];
  v204 = v828[406];
  v205 = v828[407];
  v206 = v828[408];
  v207 = v828[409];
  v208 = v828[410];
  v209 = v828[411];
  v210 = v828[412];
  v211 = v828[413];
  v212 = v828[414];
  v213 = v828[415];
  v214 = v828[416];
  v215 = v828[417];
  v216 = v828[418];
  v217 = v828[419];
  v218 = v828[420];
  v219 = v828[421];
  v220 = v828[422];
  v221 = v828[423];
  v222 = v828[424];
  v223 = v828[425];
  v224 = v828[426];
  v225 = v828[427];
  v226 = v828[428];
  v227 = v828[429];
  v228 = v828[430];
  v229 = v828[431];
  v230 = v828[432];
  v231 = v828[433];
  v232 = v828[434];
  v233 = v828[435];
  v234 = v828[436];
  v235 = v828[437];
  v236 = v828[438];
  v237 = v828[439];
  v238 = v828[440];
  v239 = v828[441];
  v240 = v828[442];
  v241 = v828[443];
  v242 = v828[444];
  v243 = v828[445];
  v244 = v828[446];
  v245 = v828[447];
  v246 = v828[448];
  v247 = v828[449];
  v248 = v828[450];
  v249 = v828[451];
  v250 = v828[452];
  v251 = v828[453];
  v252 = v828[454];
  v253 = v828[455];
  v254 = v828[456];
  v255 = v828[457];
  v256 = v828[458];
  v257 = v828[459];
  v258 = v828[460];
  v259 = v828[461];
  v260 = v828[462];
  v261 = v828[463];
  v262 = v828[464];
  v263 = v828[465];
  v264 = v828[466];
  v265 = v828[467];
  v266 = v828[468];
  v267 = v828[469];
  v268 = v828[470];
  v269 = v828[471];
  v270 = v828[472];
  v271 = v828[473];
  v272 = v828[474];
  v273 = v828[475];
  v274 = v828[476];
  v275 = v828[477];
  v276 = v828[478];
  v277 = v828[479];
  v278 = v828[480];
  v279 = v828[481];
  v280 = v828[482];
  v281 = v828[483];
  v282 = v828[484];
  v283 = v828[485];
  v284 = v828[486];
  v285 = v828[487];
  v286 = v828[488];
  v287 = v828[489];
  v288 = v828[490];
  v289 = v828[491];
  v290 = v828[492];
  v291 = v828[493];
  v292 = v828[494];
  v293 = v828[495];
  v294 = v828[496];
  v295 = v828[497];
  v296 = v828[498];
  v297 = v828[499];
  v298 = v828[500];
  v299 = v828[501];
  v300 = v828[502];
  v301 = v828[503];
  v302 = v828[504];
  v303 = v828[505];
  v304 = v828[506];
  v305 = v828[507];
  v306 = v828[508];
  v307 = v828[509];
  v308 = v828[510];
  v309 = v828[511];
  v310 = v828[512];
  v311 = v828[513];
  v312 = v828[514];
  v313 = v828[515];
  v314 = v828[516];
  v315 = v828[517];
  v316 = v828[518];
  v317 = v828[519];
  v318 = v828[520];
  v319 = v828[521];
  v320 = v828[522];
  v321 = v828[523];
  v322 = v828[524];
  v323 = v828[525];
  v324 = v828[526];
  v325 = v828[527];
  v326 = v828[528];
  v327 = v828[529];
  v328 = v828[530];
  v329 = v828[531];
  v330 = v828[532];
  v331 = v828[533];
  v332 = v828[534];
  v333 = v828[535];
  v334 = v828[536];
  v335 = v828[537];
  v336 = v828[538];
  v337 = v828[539];
  v338 = v828[540];
  v339 = v828[541];
  v340 = v828[542];
  v341 = v828[543];
  v342 = v828[544];
  v343 = v828[545];
  v344 = v828[546];
  v345 = v828[547];
  v346 = v828[548];
  v347 = v828[549];
  v348 = v828[550];
  v349 = v828[551];
  v350 = v828[552];
  v351 = v828[553];
  v352 = v828[554];
  v353 = v828[555];
  v354 = v828[556];
  v355 = v828[557];
  v356 = v828[558];
  v357 = v828[559];
  v358 = v828[560];
  v359 = v828[561];
  v360 = v828[562];
  v361 = v828[563];
  v362 = v828[564];
  v363 = v828[565];
  v364 = v828[566];
  v365 = v828[567];
  v366 = v828[568];
  v367 = v828[569];
  v368 = v828[570];
  v369 = v828[571];
  v370 = v828[572];
  v371 = v828[573];
  v372 = v828[574];
  v373 = v828[575];
  v374 = v828[576];
  v375 = v828[577];
  v376 = v828[578];
  v377 = v828[579];
  v378 = v828[580];
  v379 = v828[581];
  v380 = v828[582];
  v381 = v828[583];
  v382 = v828[584];
  v383 = v828[585];
  v384 = v828[586];
  v385 = v828[587];
  v386 = v828[588];
  v387 = v828[589];
  v388 = v828[590];
  v389 = v828[591];
  v390 = v828[592];
  v391 = v828[593];
  v392 = v828[594];
  v393 = v828[595];
  v394 = v828[596];
  v395 = v828[597];
  v396 = v828[598];
  v397 = v828[599];
  v398 = v828[600];
  v399 = v828[601];
  v400 = v828[602];
  v401 = v828[603];
  v402 = v828[604];
  v403 = v828[605];
  v404 = v828[606];
  v405 = v828[607];
  v406 = v828[608];
  v407 = v828[609];
  v408 = v828[610];
  v409 = v828[611];
  v410 = v828[612];
  v411 = v828[613];
  v412 = v828[614];
  v413 = v828[615];
  v414 = v828[616];
  v415 = v828[617];
  v416 = v828[618];
  v417 = v828[619];
  v418 = v828[620];
  v419 = v828[621];
  v420 = v828[622];
  v421 = v828[623];
  v422 = v828[624];
  v423 = v828[625];
  v424 = v828[626];
  v425 = v828[627];
  v426 = v828[628];
  v427 = v828[629];
  v428 = v828[630];
  v429 = v828[631];
  v430 = v828[632];
  v431 = v828[633];
  v432 = v828[634];
  v433 = v828[635];
  v434 = v828[636];
  v435 = v828[637];
  v436 = v828[638];
  v437 = v828[639];
  v438 = v828[640];
  v439 = v828[641];
  v440 = v828[642];
  v441 = v828[643];
  v442 = v828[644];
  v443 = v828[645];
  v444 = v828[646];
  v445 = v828[647];
  v446 = v828[648];
  v447 = v828[649];
  v448 = v828[650];
  v449 = v828[651];
  v450 = v828[652];
  v451 = v828[653];
  v452 = v828[654];
  v453 = v828[655];
  v454 = v828[656];
  v455 = v828[657];
  v456 = v828[658];
  v457 = v828[659];
  v458 = v828[660];
  v459 = v828[661];
  v460 = v828[662];
  v461 = v828[663];
  v462 = v828[664];
  v463 = v828[665];
  v464 = v828[666];
  v465 = v828[667];
  v466 = v828[668];
  v467 = v828[669];
  v468 = v828[670];
  v469 = v828[671];
  v470 = v828[672];
  v471 = v828[673];
  v472 = v828[674];
  v473 = v828[675];
  v474 = v828[676];
  v475 = v828[677];
  v476 = v828[678];
  v477 = v828[679];
  v478 = v828[680];
  v479 = v828[681];
  v480 = v828[682];
  v481 = v828[683];
  v482 = v828[684];
  v483 = v828[685];
  v484 = v828[686];
  v485 = v828[687];
  v486 = v828[688];
  v487 = v828[689];
  v488 = v828[690];
  v489 = v828[691];
  v490 = v828[692];
  v491 = v828[693];
  v492 = v828[694];
  v493 = v828[695];
  v494 = v828[696];
  v495 = v828[697];
  v496 = v828[698];
  v497 = v828[699];
  v498 = v828[700];
  v499 = v828[701];
  v500 = v828[702];
  v501 = v828[703];
  v502 = v828[704];
  v503 = v828[705];
  v504 = v828[706];
  v505 = v828[707];
  v506 = v828[708];
  v507 = v828[709];
  v508 = v828[710];
  v509 = v828[711];
  v510 = v828[712];
  v511 = v828[713];
  v512 = v828[714];
  v513 = v828[715];
  v514 = v828[716];
  v515 = v828[717];
  v516 = v828[718];
  v517 = v828[719];
  v518 = v828[720];
  v519 = v828[721];
  v520 = v828[722];
  v521 = v828[723];
  v522 = v828[724];
  v523 = v828[725];
  v524 = v828[726];
  v525 = v828[727];
  v526 = v828[728];
  v527 = v828[729];
  v528 = v828[730];
  v529 = v828[731];
  v530 = v828[732];
  v531 = v828[733];
  v532 = v828[734];
  v533 = v828[735];
  v534 = v828[736];
  v535 = v828[737];
  v536 = v828[738];
  v537 = v828[739];
  v538 = v828[740];
  v539 = v828[741];
  v540 = v828[742];
  v541 = v828[743];
  v542 = v828[744];
  v543 = v828[745];
  v544 = v828[746];
  v545 = v828[747];
  v546 = v828[748];
  v547 = v828[749];
  v548 = v828[750];
  v549 = v828[751];
  v550 = v828[752];
  v551 = v828[753];
  v552 = v828[754];
  v553 = v828[755];
  v554 = v828[756];
  v555 = v828[757];
  v556 = v828[758];
  v557 = v828[759];
  v558 = v828[760];
  v559 = v828[761];
  v560 = v828[762];
  v561 = v828[763];
  v562 = v828[764];
  v563 = v828[765];
  v564 = v828[766];
  v565 = v828[767];
  v566 = v828[768];
  v567 = v828[769];
  v568 = v828[770];
  v569 = v828[771];
  v570 = v828[772];
  v571 = v828[773];
  v572 = v828[774];
  v573 = v828[775];
  v574 = v828[776];
  v575 = v828[777];
  v576 = v828[778];
  v577 = v828[779];
  v578 = v828[780];
  v579 = v828[781];
  v580 = v828[782];
  v581 = v828[783];
  v582 = v828[784];
  v583 = v828[785];
  v584 = v828[786];
  v585 = v828[787];
  v586 = v828[788];
  v587 = v828[789];
  v588 = v828[790];
  v589 = v828[791];
  v590 = v828[792];
  v591 = v828[793];
  v592 = v828[794];
  v593 = v828[795];
  v594 = v828[796];
  v595 = v828[797];
  v596 = v828[798];
  v597 = v828[799];
  v598 = v828[800];
  v599 = v828[801];
  v600 = v828[802];
  v601 = v828[803];
  v602 = v828[804];
  v603 = v828[805];
  v604 = v828[806];
  v605 = v828[807];
  v606 = v828[808];
  v607 = v828[809];
  v608 = v828[810];
  v609 = v828[811];
  v610 = v828[812];
  v611 = v828[813];
  v612 = v828[814];
  v613 = v828[815];
  v614 = v828[816];
  v615 = v828[817];
  v616 = v828[818];
  v617 = v828[819];
  v618 = v828[820];
  v619 = v828[821];
  v620 = v828[822];
  v621 = v828[823];
  v622 = v828[824];
  v623 = v828[825];
  v624 = v828[826];
  v625 = v828[827];
  v626 = v828[828];
  v627 = v828[829];
  v628 = v828[830];
  v629 = v828[831];
  v630 = v828[832];
  v631 = v828[833];
  v632 = v828[834];
  v633 = v828[835];
  v634 = v828[836];
  v635 = v828[837];
  v636 = v828[838];
  v637 = v828[839];
  v638 = v828[840];
  v639 = v828[841];
  v640 = v828[842];
  v641 = v828[843];
  v642 = v828[844];
  v643 = v828[845];
  v644 = v828[846];
  v645 = v828[847];
  v646 = v828[848];
  v647 = v828[849];
  v648 = v828[850];
  v649 = v828[851];
  v650 = v828[852];
  v651 = v828[853];
  v652 = v828[854];
  v653 = v828[855];
  v654 = v828[856];
  v655 = v828[857];
  v656 = v828[858];
  v657 = v828[859];
  v658 = v828[860];
  v659 = v828[861];
  v660 = v828[862];
  v661 = v828[863];
  v662 = v828[864];
  v663 = v828[865];
  v664 = v828[866];
  v665 = v828[867];
  v666 = v828[868];
  v667 = v828[869];
  v668 = v828[870];
  v669 = v828[871];
  v670 = v828[872];
  v671 = v828[873];
  v672 = v828[874];
  v673 = v828[875];
  v674 = v828[876];
  v675 = v828[877];
  v676 = v828[878];
  v677 = v828[879];
  v678 = v828[880];
  v679 = v828[881];
  v680 = v828[882];
  v681 = v828[883];
  v682 = v828[884];
  v683 = v828[885];
  v684 = v828[886];
  v685 = v828[887];
  v686 = v828[888];
  v687 = v828[889];
  v688 = v828[890];
  v689 = v828[891];
  v690 = v828[892];
  v691 = v828[893];
  v692 = v828[894];
  v693 = v828[895];
  v694 = v828[896];
  v695 = v828[897];
  v696 = v828[898];
  v697 = v828[899];
  v698 = v828[900];
  v699 = v828[901];
  v700 = v828[902];
  v701 = v828[903];
  v702 = v828[904];
  v703 = v828[905];
  v704 = v828[906];
  v705 = v828[907];
  v706 = v828[908];
  v707 = v828[909];
  v708 = v828[910];
  v709 = v828[911];
  v710 = v828[912];
  v711 = v828[913];
  v712 = v828[914];
  v713 = v828[915];
  v714 = v828[916];
  v715 = v828[917];
  v716 = v828[918];
  v717 = v828[919];
  v718 = v828[920];
  v719 = v828[921];
  v720 = v828[922];
  v721 = v828[923];
  v722 = v828[924];
  v723 = v828[925];
  v724 = v828[926];
  v725 = v828[927];
  v726 = v828[928];
  v727 = v828[929];
  v728 = v828[930];
  v729 = v828[931];
  v730 = v828[932];
  v731 = v828[933];
  v732 = v828[934];
  v733 = v828[935];
  v734 = v828[936];
  v735 = v828[937];
  v736 = v828[938];
  v737 = v828[939];
  v738 = v828[940];
  v739 = v828[941];
  v740 = v828[942];
  v741 = v828[943];
  v742 = v828[944];
  v743 = v828[945];
  v744 = v828[946];
  v745 = v828[947];
  v746 = v828[948];
  v747 = v828[949];
  v748 = v828[950];
  v749 = v828[951];
  v750 = v828[952];
  v751 = v828[953];
  v752 = v828[954];
  v753 = v828[955];
  v754 = v828[956];
  v755 = v828[957];
  v756 = v828[958];
  v757 = v828[959];
  v758 = v828[960];
  v759 = v828[961];
  v760 = v828[962];
  v761 = v828[963];
  v762 = v828[964];
  v763 = v828[965];
  v764 = v828[966];
  v765 = v828[967];
  v766 = v828[968];
  v767 = v828[969];
  v768 = v828[970];
  v769 = v828[971];
  v770 = v828[972];
  v771 = v828[973];
  v772 = v828[974];
  v773 = v828[975];
  v774 = v828[976];
  v775 = v828[977];
  v776 = v828[978];
  v777 = v828[979];
  v778 = v828[980];
  v779 = v828[981];
  v780 = v828[982];
  v781 = v828[983];
  v782 = v828[984];
  v783 = v828[985];
  v784 = v828[986];
  v785 = v828[987];
  v786 = v828[988];
  v787 = v828[989];
  v788 = v828[990];
  v789 = v828[991];
  v790 = v828[992];
  v791 = v828[993];
  v792 = v828[994];
  v793 = v828[995];
  v794 = v828[996];
  v795 = v828[997];
  v796 = v828[998];
  v797 = v828[999];
  v798 = v828[1000];
  v799 = v828[1001];
  v800 = v828[1002];
  v801 = v828[1003];
  v802 = v828[1004];
  v803 = v828[1005];
  v804 = v828[1006];
  v805 = v828[1007];
  v806 = v828[1008];
  v807 = v828[1009];
  v808 = v828[1010];
  v809 = v828[1011];
  v810 = v828[1012];
  v811 = v828[1013];
  v812 = v828[1014];
  v813 = v828[1015];
  v814 = v828[1016];
  v815 = v828[1017];
  v816 = v828[1018];
  v817 = v828[1019];
  v818 = v828[1020];
  v819 = v828[1021];
  v820 = v828[1022];
  v821 = v828[1023];
  v822 = v828[1024];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB58, &unk_25B949950);
  sub_25B8850CC(v42, sub_25B884AFC, 0, v13, MEMORY[0x277D84A98], MEMORY[0x277D837D0], MEMORY[0x277D84AC0], v12);
  sub_25B884014(v40, v41);
  memcpy(v39, (v11 + 176), sizeof(v39));
  v829 = v39[1002];
  v16[0] = v39[0];
  v16[1] = v39[1];
  v16[2] = v39[2];
  v16[3] = v39[3];
  v16[4] = v39[4];
  v16[5] = v39[5];
  v16[6] = v39[6];
  v16[7] = v39[7];
  v16[8] = v39[8];
  v16[9] = v39[9];
  v16[10] = v39[10];
  v16[11] = v39[11];
  v16[12] = v39[12];
  v16[13] = v39[13];
  v16[14] = v39[14];
  v16[15] = v39[15];
  v16[16] = v39[16];
  v16[17] = v39[17];
  v16[18] = v39[18];
  v16[19] = v39[19];
  v16[20] = v39[20];
  v16[21] = v39[21];
  v16[22] = v39[22];
  v16[23] = v39[23];
  v16[24] = v39[24];
  v16[25] = v39[25];
  v16[26] = v39[26];
  v16[27] = v39[27];
  v16[28] = v39[28];
  v16[29] = v39[29];
  v16[30] = v39[30];
  v16[31] = v39[31];
  v16[32] = v39[32];
  v16[33] = v39[33];
  v16[34] = v39[34];
  v16[35] = v39[35];
  v16[36] = v39[36];
  v16[37] = v39[37];
  v16[38] = v39[38];
  v16[39] = v39[39];
  v16[40] = v39[40];
  v16[41] = v39[41];
  v16[42] = v39[42];
  v16[43] = v39[43];
  v16[44] = v39[44];
  v16[45] = v39[45];
  v16[46] = v39[46];
  v16[47] = v39[47];
  v16[48] = v39[48];
  v16[49] = v39[49];
  v16[50] = v39[50];
  v16[51] = v39[51];
  v16[52] = v39[52];
  v16[53] = v39[53];
  v16[54] = v39[54];
  v16[55] = v39[55];
  v16[56] = v39[56];
  v16[57] = v39[57];
  v16[58] = v39[58];
  v16[59] = v39[59];
  v16[60] = v39[60];
  v16[61] = v39[61];
  v16[62] = v39[62];
  v16[63] = v39[63];
  v16[64] = v39[64];
  v16[65] = v39[65];
  v16[66] = v39[66];
  v16[67] = v39[67];
  v16[68] = v39[68];
  v16[69] = v39[69];
  v16[70] = v39[70];
  v16[71] = v39[71];
  v16[72] = v39[72];
  v16[73] = v39[73];
  v16[74] = v39[74];
  v16[75] = v39[75];
  v16[76] = v39[76];
  v16[77] = v39[77];
  v16[78] = v39[78];
  v16[79] = v39[79];
  v16[80] = v39[80];
  v16[81] = v39[81];
  v16[82] = v39[82];
  v16[83] = v39[83];
  v16[84] = v39[84];
  v16[85] = v39[85];
  v16[86] = v39[86];
  v16[87] = v39[87];
  v16[88] = v39[88];
  v16[89] = v39[89];
  v16[90] = v39[90];
  v16[91] = v39[91];
  v16[92] = v39[92];
  v16[93] = v39[93];
  v16[94] = v39[94];
  v16[95] = v39[95];
  v16[96] = v39[96];
  v16[97] = v39[97];
  v16[98] = v39[98];
  v16[99] = v39[99];
  v16[100] = v39[100];
  v16[101] = v39[101];
  v16[102] = v39[102];
  v16[103] = v39[103];
  v16[104] = v39[104];
  v16[105] = v39[105];
  v16[106] = v39[106];
  v16[107] = v39[107];
  v16[108] = v39[108];
  v16[109] = v39[109];
  v16[110] = v39[110];
  v16[111] = v39[111];
  v16[112] = v39[112];
  v16[113] = v39[113];
  v16[114] = v39[114];
  v16[115] = v39[115];
  v16[116] = v39[116];
  v16[117] = v39[117];
  v16[118] = v39[118];
  v16[119] = v39[119];
  v16[120] = v39[120];
  v16[121] = v39[121];
  v16[122] = v39[122];
  v16[123] = v39[123];
  v16[124] = v39[124];
  v16[125] = v39[125];
  v16[126] = v39[126];
  v16[127] = v39[127];
  v16[128] = v39[128];
  v16[129] = v39[129];
  v16[130] = v39[130];
  v16[131] = v39[131];
  v16[132] = v39[132];
  v16[133] = v39[133];
  v16[134] = v39[134];
  v16[135] = v39[135];
  v16[136] = v39[136];
  v16[137] = v39[137];
  v16[138] = v39[138];
  v16[139] = v39[139];
  v16[140] = v39[140];
  v16[141] = v39[141];
  v16[142] = v39[142];
  v16[143] = v39[143];
  v16[144] = v39[144];
  v16[145] = v39[145];
  v16[146] = v39[146];
  v16[147] = v39[147];
  v16[148] = v39[148];
  v16[149] = v39[149];
  v16[150] = v39[150];
  v16[151] = v39[151];
  v16[152] = v39[152];
  v16[153] = v39[153];
  v16[154] = v39[154];
  v16[155] = v39[155];
  v16[156] = v39[156];
  v16[157] = v39[157];
  v16[158] = v39[158];
  v16[159] = v39[159];
  v16[160] = v39[160];
  v16[161] = v39[161];
  v16[162] = v39[162];
  v16[163] = v39[163];
  v16[164] = v39[164];
  v16[165] = v39[165];
  v16[166] = v39[166];
  v16[167] = v39[167];
  v16[168] = v39[168];
  v16[169] = v39[169];
  v16[170] = v39[170];
  v16[171] = v39[171];
  v16[172] = v39[172];
  v16[173] = v39[173];
  v16[174] = v39[174];
  v16[175] = v39[175];
  v16[176] = v39[176];
  v16[177] = v39[177];
  v16[178] = v39[178];
  v16[179] = v39[179];
  v16[180] = v39[180];
  v16[181] = v39[181];
  v16[182] = v39[182];
  v16[183] = v39[183];
  v16[184] = v39[184];
  v16[185] = v39[185];
  v16[186] = v39[186];
  v16[187] = v39[187];
  v16[188] = v39[188];
  v16[189] = v39[189];
  v16[190] = v39[190];
  v16[191] = v39[191];
  v16[192] = v39[192];
  v16[193] = v39[193];
  v16[194] = v39[194];
  v16[195] = v39[195];
  v16[196] = v39[196];
  v16[197] = v39[197];
  v16[198] = v39[198];
  v16[199] = v39[199];
  v16[200] = v39[200];
  v16[201] = v39[201];
  v16[202] = v39[202];
  v16[203] = v39[203];
  v16[204] = v39[204];
  v16[205] = v39[205];
  v16[206] = v39[206];
  v16[207] = v39[207];
  v16[208] = v39[208];
  v16[209] = v39[209];
  v16[210] = v39[210];
  v16[211] = v39[211];
  v16[212] = v39[212];
  v16[213] = v39[213];
  v16[214] = v39[214];
  v16[215] = v39[215];
  v16[216] = v39[216];
  v16[217] = v39[217];
  v16[218] = v39[218];
  v16[219] = v39[219];
  v16[220] = v39[220];
  v16[221] = v39[221];
  v16[222] = v39[222];
  v16[223] = v39[223];
  v16[224] = v39[224];
  v16[225] = v39[225];
  v16[226] = v39[226];
  v16[227] = v39[227];
  v16[228] = v39[228];
  v16[229] = v39[229];
  v16[230] = v39[230];
  v16[231] = v39[231];
  v16[232] = v39[232];
  v16[233] = v39[233];
  v16[234] = v39[234];
  v16[235] = v39[235];
  v16[236] = v39[236];
  v16[237] = v39[237];
  v16[238] = v39[238];
  v16[239] = v39[239];
  v16[240] = v39[240];
  v16[241] = v39[241];
  v16[242] = v39[242];
  v16[243] = v39[243];
  v16[244] = v39[244];
  v16[245] = v39[245];
  v16[246] = v39[246];
  v16[247] = v39[247];
  v16[248] = v39[248];
  v16[249] = v39[249];
  v16[250] = v39[250];
  v16[251] = v39[251];
  v16[252] = v39[252];
  v16[253] = v39[253];
  v16[254] = v39[254];
  v16[255] = v39[255];
  v16[256] = v39[256];
  v16[257] = v39[257];
  v16[258] = v39[258];
  v16[259] = v39[259];
  v16[260] = v39[260];
  v16[261] = v39[261];
  v16[262] = v39[262];
  v16[263] = v39[263];
  v16[264] = v39[264];
  v16[265] = v39[265];
  v16[266] = v39[266];
  v16[267] = v39[267];
  v16[268] = v39[268];
  v16[269] = v39[269];
  v16[270] = v39[270];
  v16[271] = v39[271];
  v16[272] = v39[272];
  v16[273] = v39[273];
  v16[274] = v39[274];
  v16[275] = v39[275];
  v16[276] = v39[276];
  v16[277] = v39[277];
  v16[278] = v39[278];
  v16[279] = v39[279];
  v16[280] = v39[280];
  v16[281] = v39[281];
  v16[282] = v39[282];
  v16[283] = v39[283];
  v16[284] = v39[284];
  v16[285] = v39[285];
  v16[286] = v39[286];
  v16[287] = v39[287];
  v16[288] = v39[288];
  v16[289] = v39[289];
  v16[290] = v39[290];
  v16[291] = v39[291];
  v16[292] = v39[292];
  v16[293] = v39[293];
  v16[294] = v39[294];
  v16[295] = v39[295];
  v16[296] = v39[296];
  v16[297] = v39[297];
  v16[298] = v39[298];
  v16[299] = v39[299];
  v16[300] = v39[300];
  v16[301] = v39[301];
  v16[302] = v39[302];
  v16[303] = v39[303];
  v16[304] = v39[304];
  v16[305] = v39[305];
  v16[306] = v39[306];
  v16[307] = v39[307];
  v16[308] = v39[308];
  v16[309] = v39[309];
  v16[310] = v39[310];
  v16[311] = v39[311];
  v16[312] = v39[312];
  v16[313] = v39[313];
  v16[314] = v39[314];
  v16[315] = v39[315];
  v16[316] = v39[316];
  v16[317] = v39[317];
  v16[318] = v39[318];
  v16[319] = v39[319];
  v16[320] = v39[320];
  v16[321] = v39[321];
  v16[322] = v39[322];
  v16[323] = v39[323];
  v16[324] = v39[324];
  v16[325] = v39[325];
  v16[326] = v39[326];
  v16[327] = v39[327];
  v16[328] = v39[328];
  v16[329] = v39[329];
  v16[330] = v39[330];
  v16[331] = v39[331];
  v16[332] = v39[332];
  v16[333] = v39[333];
  v16[334] = v39[334];
  v16[335] = v39[335];
  v16[336] = v39[336];
  v16[337] = v39[337];
  v16[338] = v39[338];
  v16[339] = v39[339];
  v16[340] = v39[340];
  v16[341] = v39[341];
  v16[342] = v39[342];
  v16[343] = v39[343];
  v16[344] = v39[344];
  v16[345] = v39[345];
  v16[346] = v39[346];
  v16[347] = v39[347];
  v16[348] = v39[348];
  v16[349] = v39[349];
  v16[350] = v39[350];
  v16[351] = v39[351];
  v16[352] = v39[352];
  v16[353] = v39[353];
  v16[354] = v39[354];
  v16[355] = v39[355];
  v16[356] = v39[356];
  v16[357] = v39[357];
  v16[358] = v39[358];
  v16[359] = v39[359];
  v16[360] = v39[360];
  v16[361] = v39[361];
  v16[362] = v39[362];
  v16[363] = v39[363];
  v16[364] = v39[364];
  v16[365] = v39[365];
  v16[366] = v39[366];
  v16[367] = v39[367];
  v16[368] = v39[368];
  v16[369] = v39[369];
  v16[370] = v39[370];
  v16[371] = v39[371];
  v16[372] = v39[372];
  v16[373] = v39[373];
  v16[374] = v39[374];
  v16[375] = v39[375];
  v16[376] = v39[376];
  v16[377] = v39[377];
  v16[378] = v39[378];
  v16[379] = v39[379];
  v16[380] = v39[380];
  v16[381] = v39[381];
  v16[382] = v39[382];
  v16[383] = v39[383];
  v16[384] = v39[384];
  v16[385] = v39[385];
  v16[386] = v39[386];
  v16[387] = v39[387];
  v16[388] = v39[388];
  v16[389] = v39[389];
  v16[390] = v39[390];
  v16[391] = v39[391];
  v16[392] = v39[392];
  v16[393] = v39[393];
  v16[394] = v39[394];
  v16[395] = v39[395];
  v16[396] = v39[396];
  v16[397] = v39[397];
  v16[398] = v39[398];
  v16[399] = v39[399];
  v16[400] = v39[400];
  v16[401] = v39[401];
  v16[402] = v39[402];
  v16[403] = v39[403];
  v16[404] = v39[404];
  v16[405] = v39[405];
  v16[406] = v39[406];
  v16[407] = v39[407];
  v16[408] = v39[408];
  v16[409] = v39[409];
  v16[410] = v39[410];
  v16[411] = v39[411];
  v16[412] = v39[412];
  v16[413] = v39[413];
  v16[414] = v39[414];
  v16[415] = v39[415];
  v16[416] = v39[416];
  v16[417] = v39[417];
  v16[418] = v39[418];
  v16[419] = v39[419];
  v16[420] = v39[420];
  v16[421] = v39[421];
  v16[422] = v39[422];
  v16[423] = v39[423];
  v16[424] = v39[424];
  v16[425] = v39[425];
  v16[426] = v39[426];
  v16[427] = v39[427];
  v16[428] = v39[428];
  v16[429] = v39[429];
  v16[430] = v39[430];
  v16[431] = v39[431];
  v16[432] = v39[432];
  v16[433] = v39[433];
  v16[434] = v39[434];
  v16[435] = v39[435];
  v16[436] = v39[436];
  v16[437] = v39[437];
  v16[438] = v39[438];
  v16[439] = v39[439];
  v16[440] = v39[440];
  v16[441] = v39[441];
  v16[442] = v39[442];
  v16[443] = v39[443];
  v16[444] = v39[444];
  v16[445] = v39[445];
  v16[446] = v39[446];
  v16[447] = v39[447];
  v16[448] = v39[448];
  v16[449] = v39[449];
  v16[450] = v39[450];
  v16[451] = v39[451];
  v16[452] = v39[452];
  v16[453] = v39[453];
  v16[454] = v39[454];
  v16[455] = v39[455];
  v16[456] = v39[456];
  v16[457] = v39[457];
  v16[458] = v39[458];
  v16[459] = v39[459];
  v16[460] = v39[460];
  v16[461] = v39[461];
  v16[462] = v39[462];
  v16[463] = v39[463];
  v16[464] = v39[464];
  v16[465] = v39[465];
  v16[466] = v39[466];
  v16[467] = v39[467];
  v16[468] = v39[468];
  v16[469] = v39[469];
  v16[470] = v39[470];
  v16[471] = v39[471];
  v16[472] = v39[472];
  v16[473] = v39[473];
  v16[474] = v39[474];
  v16[475] = v39[475];
  v16[476] = v39[476];
  v16[477] = v39[477];
  v16[478] = v39[478];
  v16[479] = v39[479];
  v16[480] = v39[480];
  v16[481] = v39[481];
  v16[482] = v39[482];
  v16[483] = v39[483];
  v16[484] = v39[484];
  v16[485] = v39[485];
  v16[486] = v39[486];
  v16[487] = v39[487];
  v16[488] = v39[488];
  v16[489] = v39[489];
  v16[490] = v39[490];
  v16[491] = v39[491];
  v16[492] = v39[492];
  v16[493] = v39[493];
  v16[494] = v39[494];
  v16[495] = v39[495];
  v16[496] = v39[496];
  v16[497] = v39[497];
  v16[498] = v39[498];
  v16[499] = v39[499];
  v16[500] = v39[500];
  v16[501] = v39[501];
  v16[502] = v39[502];
  v16[503] = v39[503];
  v16[504] = v39[504];
  v16[505] = v39[505];
  v16[506] = v39[506];
  v16[507] = v39[507];
  v16[508] = v39[508];
  v16[509] = v39[509];
  v16[510] = v39[510];
  v16[511] = v39[511];
  v16[512] = v39[512];
  v16[513] = v39[513];
  v16[514] = v39[514];
  v16[515] = v39[515];
  v16[516] = v39[516];
  v16[517] = v39[517];
  v16[518] = v39[518];
  v16[519] = v39[519];
  v16[520] = v39[520];
  v16[521] = v39[521];
  v16[522] = v39[522];
  v16[523] = v39[523];
  v16[524] = v39[524];
  v16[525] = v39[525];
  v16[526] = v39[526];
  v16[527] = v39[527];
  v16[528] = v39[528];
  v16[529] = v39[529];
  v16[530] = v39[530];
  v16[531] = v39[531];
  v16[532] = v39[532];
  v16[533] = v39[533];
  v16[534] = v39[534];
  v16[535] = v39[535];
  v16[536] = v39[536];
  v16[537] = v39[537];
  v16[538] = v39[538];
  v16[539] = v39[539];
  v16[540] = v39[540];
  v16[541] = v39[541];
  v16[542] = v39[542];
  v16[543] = v39[543];
  v16[544] = v39[544];
  v16[545] = v39[545];
  v16[546] = v39[546];
  v16[547] = v39[547];
  v16[548] = v39[548];
  v16[549] = v39[549];
  v16[550] = v39[550];
  v16[551] = v39[551];
  v16[552] = v39[552];
  v16[553] = v39[553];
  v16[554] = v39[554];
  v16[555] = v39[555];
  v16[556] = v39[556];
  v16[557] = v39[557];
  v16[558] = v39[558];
  v16[559] = v39[559];
  v16[560] = v39[560];
  v16[561] = v39[561];
  v16[562] = v39[562];
  v16[563] = v39[563];
  v16[564] = v39[564];
  v16[565] = v39[565];
  v16[566] = v39[566];
  v16[567] = v39[567];
  v16[568] = v39[568];
  v16[569] = v39[569];
  v16[570] = v39[570];
  v16[571] = v39[571];
  v16[572] = v39[572];
  v16[573] = v39[573];
  v16[574] = v39[574];
  v16[575] = v39[575];
  v16[576] = v39[576];
  v16[577] = v39[577];
  v16[578] = v39[578];
  v16[579] = v39[579];
  v16[580] = v39[580];
  v16[581] = v39[581];
  v16[582] = v39[582];
  v16[583] = v39[583];
  v16[584] = v39[584];
  v16[585] = v39[585];
  v16[586] = v39[586];
  v16[587] = v39[587];
  v16[588] = v39[588];
  v16[589] = v39[589];
  v16[590] = v39[590];
  v16[591] = v39[591];
  v16[592] = v39[592];
  v16[593] = v39[593];
  v16[594] = v39[594];
  v16[595] = v39[595];
  v16[596] = v39[596];
  v16[597] = v39[597];
  v16[598] = v39[598];
  v16[599] = v39[599];
  v16[600] = v39[600];
  v16[601] = v39[601];
  v16[602] = v39[602];
  v16[603] = v39[603];
  v16[604] = v39[604];
  v16[605] = v39[605];
  v16[606] = v39[606];
  v16[607] = v39[607];
  v16[608] = v39[608];
  v16[609] = v39[609];
  v16[610] = v39[610];
  v16[611] = v39[611];
  v16[612] = v39[612];
  v16[613] = v39[613];
  v16[614] = v39[614];
  v16[615] = v39[615];
  v16[616] = v39[616];
  v16[617] = v39[617];
  v16[618] = v39[618];
  v16[619] = v39[619];
  v16[620] = v39[620];
  v16[621] = v39[621];
  v16[622] = v39[622];
  v16[623] = v39[623];
  v16[624] = v39[624];
  v16[625] = v39[625];
  v16[626] = v39[626];
  v16[627] = v39[627];
  v16[628] = v39[628];
  v16[629] = v39[629];
  v16[630] = v39[630];
  v16[631] = v39[631];
  v16[632] = v39[632];
  v16[633] = v39[633];
  v16[634] = v39[634];
  v16[635] = v39[635];
  v16[636] = v39[636];
  v16[637] = v39[637];
  v16[638] = v39[638];
  v16[639] = v39[639];
  v16[640] = v39[640];
  v16[641] = v39[641];
  v16[642] = v39[642];
  v16[643] = v39[643];
  v16[644] = v39[644];
  v16[645] = v39[645];
  v16[646] = v39[646];
  v16[647] = v39[647];
  v16[648] = v39[648];
  v16[649] = v39[649];
  v16[650] = v39[650];
  v16[651] = v39[651];
  v16[652] = v39[652];
  v16[653] = v39[653];
  v16[654] = v39[654];
  v16[655] = v39[655];
  v16[656] = v39[656];
  v16[657] = v39[657];
  v16[658] = v39[658];
  v16[659] = v39[659];
  v16[660] = v39[660];
  v16[661] = v39[661];
  v16[662] = v39[662];
  v16[663] = v39[663];
  v16[664] = v39[664];
  v16[665] = v39[665];
  v16[666] = v39[666];
  v16[667] = v39[667];
  v16[668] = v39[668];
  v16[669] = v39[669];
  v16[670] = v39[670];
  v16[671] = v39[671];
  v16[672] = v39[672];
  v16[673] = v39[673];
  v16[674] = v39[674];
  v16[675] = v39[675];
  v16[676] = v39[676];
  v16[677] = v39[677];
  v16[678] = v39[678];
  v16[679] = v39[679];
  v16[680] = v39[680];
  v16[681] = v39[681];
  v16[682] = v39[682];
  v16[683] = v39[683];
  v16[684] = v39[684];
  v16[685] = v39[685];
  v16[686] = v39[686];
  v16[687] = v39[687];
  v16[688] = v39[688];
  v16[689] = v39[689];
  v16[690] = v39[690];
  v16[691] = v39[691];
  v16[692] = v39[692];
  v16[693] = v39[693];
  v16[694] = v39[694];
  v16[695] = v39[695];
  v16[696] = v39[696];
  v16[697] = v39[697];
  v16[698] = v39[698];
  v16[699] = v39[699];
  v16[700] = v39[700];
  v16[701] = v39[701];
  v16[702] = v39[702];
  v16[703] = v39[703];
  v16[704] = v39[704];
  v16[705] = v39[705];
  v16[706] = v39[706];
  v16[707] = v39[707];
  v16[708] = v39[708];
  v16[709] = v39[709];
  v16[710] = v39[710];
  v16[711] = v39[711];
  v16[712] = v39[712];
  v16[713] = v39[713];
  v16[714] = v39[714];
  v16[715] = v39[715];
  v16[716] = v39[716];
  v16[717] = v39[717];
  v16[718] = v39[718];
  v16[719] = v39[719];
  v16[720] = v39[720];
  v16[721] = v39[721];
  v16[722] = v39[722];
  v16[723] = v39[723];
  v16[724] = v39[724];
  v16[725] = v39[725];
  v16[726] = v39[726];
  v16[727] = v39[727];
  v16[728] = v39[728];
  v16[729] = v39[729];
  v16[730] = v39[730];
  v16[731] = v39[731];
  v16[732] = v39[732];
  v16[733] = v39[733];
  v16[734] = v39[734];
  v16[735] = v39[735];
  v16[736] = v39[736];
  v16[737] = v39[737];
  v16[738] = v39[738];
  v16[739] = v39[739];
  v16[740] = v39[740];
  v16[741] = v39[741];
  v16[742] = v39[742];
  v16[743] = v39[743];
  v16[744] = v39[744];
  v16[745] = v39[745];
  v16[746] = v39[746];
  v16[747] = v39[747];
  v16[748] = v39[748];
  v16[749] = v39[749];
  v16[750] = v39[750];
  v16[751] = v39[751];
  v16[752] = v39[752];
  v16[753] = v39[753];
  v16[754] = v39[754];
  v16[755] = v39[755];
  v16[756] = v39[756];
  v16[757] = v39[757];
  v16[758] = v39[758];
  v16[759] = v39[759];
  v16[760] = v39[760];
  v16[761] = v39[761];
  v16[762] = v39[762];
  v16[763] = v39[763];
  v16[764] = v39[764];
  v16[765] = v39[765];
  v16[766] = v39[766];
  v16[767] = v39[767];
  v16[768] = v39[768];
  v16[769] = v39[769];
  v16[770] = v39[770];
  v16[771] = v39[771];
  v16[772] = v39[772];
  v16[773] = v39[773];
  v16[774] = v39[774];
  v16[775] = v39[775];
  v16[776] = v39[776];
  v16[777] = v39[777];
  v16[778] = v39[778];
  v16[779] = v39[779];
  v16[780] = v39[780];
  v16[781] = v39[781];
  v16[782] = v39[782];
  v16[783] = v39[783];
  v16[784] = v39[784];
  v16[785] = v39[785];
  v16[786] = v39[786];
  v16[787] = v39[787];
  v16[788] = v39[788];
  v16[789] = v39[789];
  v16[790] = v39[790];
  v16[791] = v39[791];
  v16[792] = v39[792];
  v16[793] = v39[793];
  v16[794] = v39[794];
  v16[795] = v39[795];
  v16[796] = v39[796];
  v16[797] = v39[797];
  v16[798] = v39[798];
  v16[799] = v39[799];
  v16[800] = v39[800];
  v16[801] = v39[801];
  v16[802] = v39[802];
  v16[803] = v39[803];
  v16[804] = v39[804];
  v16[805] = v39[805];
  v16[806] = v39[806];
  v16[807] = v39[807];
  v16[808] = v39[808];
  v16[809] = v39[809];
  v16[810] = v39[810];
  v16[811] = v39[811];
  v16[812] = v39[812];
  v16[813] = v39[813];
  v16[814] = v39[814];
  v16[815] = v39[815];
  v16[816] = v39[816];
  v16[817] = v39[817];
  v16[818] = v39[818];
  v16[819] = v39[819];
  v16[820] = v39[820];
  v16[821] = v39[821];
  v16[822] = v39[822];
  v16[823] = v39[823];
  v16[824] = v39[824];
  v16[825] = v39[825];
  v16[826] = v39[826];
  v16[827] = v39[827];
  v16[828] = v39[828];
  v16[829] = v39[829];
  v16[830] = v39[830];
  v16[831] = v39[831];
  v16[832] = v39[832];
  v16[833] = v39[833];
  v16[834] = v39[834];
  v16[835] = v39[835];
  v16[836] = v39[836];
  v16[837] = v39[837];
  v16[838] = v39[838];
  v16[839] = v39[839];
  v16[840] = v39[840];
  v16[841] = v39[841];
  v16[842] = v39[842];
  v16[843] = v39[843];
  v16[844] = v39[844];
  v16[845] = v39[845];
  v16[846] = v39[846];
  v16[847] = v39[847];
  v16[848] = v39[848];
  v16[849] = v39[849];
  v16[850] = v39[850];
  v16[851] = v39[851];
  v16[852] = v39[852];
  v16[853] = v39[853];
  v16[854] = v39[854];
  v16[855] = v39[855];
  v16[856] = v39[856];
  v16[857] = v39[857];
  v16[858] = v39[858];
  v16[859] = v39[859];
  v16[860] = v39[860];
  v16[861] = v39[861];
  v16[862] = v39[862];
  v16[863] = v39[863];
  v16[864] = v39[864];
  v16[865] = v39[865];
  v16[866] = v39[866];
  v16[867] = v39[867];
  v16[868] = v39[868];
  v16[869] = v39[869];
  v16[870] = v39[870];
  v16[871] = v39[871];
  v16[872] = v39[872];
  v16[873] = v39[873];
  v16[874] = v39[874];
  v16[875] = v39[875];
  v16[876] = v39[876];
  v16[877] = v39[877];
  v16[878] = v39[878];
  v16[879] = v39[879];
  v16[880] = v39[880];
  v16[881] = v39[881];
  v16[882] = v39[882];
  v16[883] = v39[883];
  v16[884] = v39[884];
  v16[885] = v39[885];
  v16[886] = v39[886];
  v16[887] = v39[887];
  v16[888] = v39[888];
  v16[889] = v39[889];
  v16[890] = v39[890];
  v16[891] = v39[891];
  v16[892] = v39[892];
  v16[893] = v39[893];
  v16[894] = v39[894];
  v16[895] = v39[895];
  v16[896] = v39[896];
  v16[897] = v39[897];
  v16[898] = v39[898];
  v16[899] = v39[899];
  v16[900] = v39[900];
  v16[901] = v39[901];
  v16[902] = v39[902];
  v16[903] = v39[903];
  v16[904] = v39[904];
  v16[905] = v39[905];
  v16[906] = v39[906];
  v16[907] = v39[907];
  v16[908] = v39[908];
  v16[909] = v39[909];
  v16[910] = v39[910];
  v16[911] = v39[911];
  v16[912] = v39[912];
  v16[913] = v39[913];
  v16[914] = v39[914];
  v16[915] = v39[915];
  v16[916] = v39[916];
  v16[917] = v39[917];
  v16[918] = v39[918];
  v16[919] = v39[919];
  v16[920] = v39[920];
  v16[921] = v39[921];
  v16[922] = v39[922];
  v16[923] = v39[923];
  v16[924] = v39[924];
  v16[925] = v39[925];
  v16[926] = v39[926];
  v16[927] = v39[927];
  v16[928] = v39[928];
  v16[929] = v39[929];
  v16[930] = v39[930];
  v16[931] = v39[931];
  v16[932] = v39[932];
  v16[933] = v39[933];
  v16[934] = v39[934];
  v16[935] = v39[935];
  v16[936] = v39[936];
  v16[937] = v39[937];
  v16[938] = v39[938];
  v16[939] = v39[939];
  v16[940] = v39[940];
  v16[941] = v39[941];
  v16[942] = v39[942];
  v16[943] = v39[943];
  v16[944] = v39[944];
  v16[945] = v39[945];
  v16[946] = v39[946];
  v16[947] = v39[947];
  v16[948] = v39[948];
  v16[949] = v39[949];
  v16[950] = v39[950];
  v16[951] = v39[951];
  v16[952] = v39[952];
  v16[953] = v39[953];
  v16[954] = v39[954];
  v16[955] = v39[955];
  v16[956] = v39[956];
  v16[957] = v39[957];
  v16[958] = v39[958];
  v16[959] = v39[959];
  v16[960] = v39[960];
  v16[961] = v39[961];
  v16[962] = v39[962];
  v16[963] = v39[963];
  v16[964] = v39[964];
  v16[965] = v39[965];
  v16[966] = v39[966];
  v16[967] = v39[967];
  v16[968] = v39[968];
  v16[969] = v39[969];
  v16[970] = v39[970];
  v16[971] = v39[971];
  v16[972] = v39[972];
  v16[973] = v39[973];
  v16[974] = v39[974];
  v16[975] = v39[975];
  v16[976] = v39[976];
  v16[977] = v39[977];
  v16[978] = v39[978];
  v16[979] = v39[979];
  v16[980] = v39[980];
  v16[981] = v39[981];
  v16[982] = v39[982];
  v16[983] = v39[983];
  v16[984] = v39[984];
  v16[985] = v39[985];
  v16[986] = v39[986];
  v16[987] = v39[987];
  v16[988] = v39[988];
  v16[989] = v39[989];
  v16[990] = v39[990];
  v16[991] = v39[991];
  v16[992] = v39[992];
  v16[993] = v39[993];
  v16[994] = v39[994];
  v16[995] = v39[995];
  v16[996] = v39[996];
  v16[997] = v39[997];
  v16[998] = v39[998];
  v16[999] = v39[999];
  v16[1000] = v39[1000];
  v16[1001] = v39[1001];
  v17 = *&v39[1002];
  v18 = v39[1004];
  v19 = v39[1005];
  v20 = v39[1006];
  v21 = v39[1007];
  v22 = v39[1008];
  v23 = v39[1009];
  v24 = v39[1010];
  v25 = v39[1011];
  v26 = v39[1012];
  v27 = v39[1013];
  v28 = v39[1014];
  v29 = v39[1015];
  v30 = v39[1016];
  v31 = v39[1017];
  v32 = v39[1018];
  v33 = v39[1019];
  v34 = v39[1020];
  v35 = v39[1021];
  v36 = v39[1022];
  v37 = v39[1023];
  v38 = v39[1024];
  sub_25B8850CC(v16, sub_25B884AFC, 0, v13, MEMORY[0x277D84A98], MEMORY[0x277D837D0], MEMORY[0x277D84AC0], v12);
  sub_25B8841E4(v14, v15);
  if (*(v11 + 2232))
  {
    v5 = sub_25B947058();
    sub_25B884768(v5, v6);
  }

  return v10;
}
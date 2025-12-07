uint64_t ramrod_compare_restoreversions(void *a1, void *a2)
{
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  if (sub_18A8(a1, v5) && sub_18A8(a2, v4))
  {
    return sub_1960(v5, v4);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_18A8(void *a1, uint64_t a2)
{
  if (![a1 count])
  {
    return 1;
  }

  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"RestoreVersion", "UTF8String"}];
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{@"RestoreBuildGroup", "UTF8String"}];
  if (bridge_version_parse_components())
  {
    return 1;
  }

  ramrod_log_msg("%s: could not parse %s,%s\n", "_parse_version_dict", v3, v4);
  return 0;
}

uint64_t sub_1960(_DWORD *a1, _DWORD *a2)
{
  v3 = sub_1B70(a1);
  v4 = sub_1B70(a2);
  if (v3 && v4)
  {
    ramrod_log_msg("%s: versions are both equal to NULL\n", "_ramrod_compare_parsed_versions");
    return 0;
  }

  else if (v3)
  {
    ramrod_log_msg("%s: a is NULL, but b is not.  a < b\n", "_ramrod_compare_parsed_versions");
    return 0xFFFFFFFFLL;
  }

  else if (v4)
  {
    ramrod_log_msg("%s: a is not NULL, but b is.  a > b\n", "_ramrod_compare_parsed_versions");
    return 1;
  }

  else
  {
    v6 = bridge_version_compare();
    if (v6 > 3)
    {
      v5 = 4294967294;
      v7 = "??";
    }

    else
    {
      v7 = off_1A82C8[v6];
      v5 = dword_109530[v6];
    }

    v8 = bridge_version_unparse();
    v9 = bridge_version_unparse();
    ramrod_log_msg("%s: %s %s %s\n", "_ramrod_compare_parsed_versions", v8, v7, v9);
    free(v8);
    free(v9);
  }

  return v5;
}

uint64_t ramrod_compare_restoreversion_strings(const char *a1, const char *a2)
{
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  if (sub_1B00(a1) && sub_1B00(a2))
  {
    return sub_1960(v5, v4);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_1B00(const char *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*a1 || (bridge_version_parse() & 1) != 0)
  {
    return 1;
  }

  ramrod_log_msg("%s: error parsing %s.\n", "_parse_version_string", a1);
  return 0;
}

CFStringRef sub_1BC4(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef sub_1C3C(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef sub_1CBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1D00(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v10 = 0;
    asprintf(&v10, "{");
    v3 = v10;
    if (v10)
    {
      v4 = 0;
      v9 = 0;
      v5 = 1;
      do
      {
        v6 = v5;
        v7 = *(&v2->isa + v4);
        if (v7)
        {
          v3 = sub_8FF4(v3, off_1A8380[v4], v7, &v9);
          v10 = v3;
        }

        v5 = 0;
        v4 = 1;
      }

      while ((v6 & 1) != 0);
      v10 = sub_90E4(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v10);
      if (v10)
      {
        free(v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_1DD0(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v8 = 0;
    asprintf(&v8, "{");
    v3 = v8;
    if (v8)
    {
      v7 = 0;
      p_info = &v2->info;
      v5 = 8;
      do
      {
        if (*p_info)
        {
          v3 = sub_9184(v3, *(p_info - 2), *p_info, &v7);
          v8 = v3;
        }

        p_info += 2;
        --v5;
      }

      while (v5);
      v8 = sub_90E4(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v8);
      if (v8)
      {
        free(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_1E8C(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v7 = 0;
    asprintf(&v7, "{");
    if (v7)
    {
      v6 = 0;
      v3 = 8;
      do
      {
        if (LODWORD(v2->isa))
        {
          v5 = 0;
          asprintf(&v5, "%d", HIDWORD(v2->isa));
          if (v5)
          {
            v7 = sub_9184(v7, v2->isa, v5, &v6);
            if (v5)
            {
              free(v5);
            }
          }
        }

        v2 = (v2 + 8);
        --v3;
      }

      while (v3);
      v7 = sub_90E4(v7, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v7);
      if (v7)
      {
        free(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_1F88(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v12 = 0;
    asprintf(&v12, "{");
    if (v12)
    {
      v3 = 0;
      v11 = 0;
      p_info = &v2->info;
      do
      {
        v5 = v2 + 18 * v3;
        if (*v5)
        {
          v15 = 0;
          asprintf(&v15, "{");
          if (v15)
          {
            v6 = 0;
            v14 = 0;
            do
            {
              v7 = p_info[v6];
              if (v7)
              {
                v13 = 0;
                asprintf(&v13, "%s", v7);
                if (v13)
                {
                  v15 = sub_91FC(v15, v6, v13, &v14);
                  if (v13)
                  {
                    free(v13);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v8 = sub_90E4(v15, "}");
            if (v8)
            {
              v9 = v8;
              v12 = sub_9184(v12, *v5, v8, &v11);
              free(v9);
            }
          }
        }

        ++v3;
        p_info += 9;
      }

      while (v3 != 8);
      v12 = sub_90E4(v12, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v12);
      if (v12)
      {
        free(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_2120(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v11 = 0;
    asprintf(&v11, "{");
    if (v11)
    {
      v3 = 0;
      v10 = 0;
      v4 = v2;
      do
      {
        v5 = v2 + 11 * v3;
        if (*v5)
        {
          v14 = 0;
          asprintf(&v14, "{");
          if (v14)
          {
            v6 = 0;
            v13 = 0;
            do
            {
              if (*(&v4[1].isa + v6 + 4))
              {
                v12 = 0;
                asprintf(&v12, "%d", *(&v4->isa + v6 + 1));
                if (v12)
                {
                  v14 = sub_91FC(v14, v6, v12, &v13);
                  if (v12)
                  {
                    free(v12);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v7 = sub_90E4(v14, "}");
            if (v7)
            {
              v8 = v7;
              v11 = sub_9184(v11, *v5, v7, &v10);
              free(v8);
            }
          }
        }

        ++v3;
        v4 = (v4 + 44);
      }

      while (v3 != 8);
      v11 = sub_90E4(v11, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v11);
      if (v11)
      {
        free(v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t checkpoint_is_after_nvram_init()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (v0)
  {
    return *(v0 + 845);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_is_reboot_retry()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (v0)
  {
    return *(v0 + 104);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_would_reboot_retry()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (!v0)
  {
    return 0;
  }

  v1 = v0[101];
  v2 = v0[102];
  v3 = v0[104];
  v4 = v0[100];
  if (v1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    v6 = 0;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void checkpoint_monitor_init(int a1)
{
  if (qword_1C6480)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): additional_init_of_monitor\n");
  }

  else
  {
    v2 = sub_2468();
    if (v2)
    {
      v3 = v2;
      qword_1C6480 = v2;
      *v2 = 1;
      *(v2 + 22) = a1;
      if (a1 == 1)
      {
        v2[101] = 1;
      }

      if (sub_2668(v2, 1, 0))
      {
        *(v3 + 1632) = 1;
        *(v3 + 1640) = "initial entry";
        sub_2F64(v3);
      }

      if (*(v3 + 88) != 3)
      {

        sub_3420(v3);
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate monitor context\n");
    }
  }
}

char *sub_2468()
{
  v0 = calloc(1uLL, 0x9A8uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutexattr_init((v0 + 72));
    pthread_mutex_init((v1 + 8), (v1 + 72));
    *(v1 + 26) = 0;
    *(v1 + 24) = 0;
    *(v1 + 27) = v1 + 208;
    pthread_mutexattr_init(v1 + 20);
    pthread_mutex_init(v1 + 4, v1 + 20);
    *(v1 + 42) = dispatch_semaphore_create(0);
    *(v1 + 43) = dispatch_semaphore_create(0);
    *(v1 + 62) = 0;
    *(v1 + 63) = v1 + 496;
    *(v1 + 83) = 0;
    *(v1 + 84) = v1 + 664;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v1 + 304) = Mutable;
    if (!Mutable)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create failed step tracking (tolerated steps cannot be stored to filesystem\n", "checkpoint_init_alloc_context");
    }

    v3 = 0;
    *(v1 + 8) = 0u;
    *(v1 + 9) = 0u;
    v1[160] = 1;
    *(v1 + 212) = 1;
    *(v1 + 310) = 2;
    v1[844] = 1;
    v4 = v1 + 1672;
    v5 = &dword_1A83A4;
    do
    {
      v7 = *v5;
      v5 += 8;
      v6 = v7;
      if (v7 > 4)
      {
        if (v6 > 6)
        {
          if (v6 == 7)
          {
            v8 = 576;
          }

          else
          {
            if (v6 != 8)
            {
              goto LABEL_27;
            }

            v8 = 352;
          }
        }

        else if (v6 == 5)
        {
          v8 = 128;
        }

        else
        {
          if (v6 != 6)
          {
            goto LABEL_27;
          }

          v8 = 64;
        }
      }

      else
      {
        if (v6 > 2)
        {
          if (v6 != 3)
          {
            if (v6 != 4)
            {
LABEL_27:
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown field type (%d) for NVRAM ID %d\n", "checkpoint_init_alloc_context", v6, v3);
              if (!*v4)
              {
                goto LABEL_25;
              }

LABEL_24:
              *(v4 - 2) = v3;
              goto LABEL_25;
            }

            goto LABEL_19;
          }
        }

        else if (v6 >= 2)
        {
          if (v6 != 2)
          {
            goto LABEL_27;
          }

LABEL_19:
          v8 = 16;
          goto LABEL_23;
        }

        v8 = 8;
      }

LABEL_23:
      v9 = calloc(1uLL, v8);
      *v4 = v9;
      if (v9)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v3;
      v4 += 2;
    }

    while (v3 != 48);
  }

  return v1;
}

uint64_t sub_2668(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 840);
  if (!v5)
  {
    goto LABEL_156;
  }

  if (v5 == 1)
  {
    v6 = 1;
    goto LABEL_20;
  }

  v6 = 0;
  if (a2)
  {
    if (v5 == 2)
    {
LABEL_156:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2448))
        {
          if (!*(a1 + 2449))
          {
LABEL_24:
            v11 = *(a1 + 840);
            if (*(a1 + 845))
            {
LABEL_149:
              v6 = 1;
              *(a1 + 840) = 1;
              if (!a3)
              {
                if (v11)
                {
                  sub_3680(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  sub_3680(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v12 = *a1 == 1 && v11 == 2;
            v13 = 848;
            if (v12)
            {
              v13 = 1240;
            }

            v14 = a1 + v13;
            if (*(a1 + v13 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_handle_first_available");
            }

            else
            {
              sub_4524(a1, v14);
            }

            if (*a1 == 1)
            {
              v15 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v15 == 2)
                {
                  v19 = &unk_1097D8;
                }

                else
                {
                  v19 = &unk_109920;
                }
              }

              else
              {
                if (v15 == 2)
                {
                  v17 = sub_968C(a1, v14, dword_109548);
                  sub_9924(a1, v14);
                  goto LABEL_53;
                }

                v19 = &unk_1096C8;
              }

              v17 = sub_968C(a1, v14, v19);
LABEL_53:
              if (!*(v14 + 48))
              {
                goto LABEL_111;
              }

              v24 = sub_46F8(a1, v14);
              if (v24 < 0x22)
              {
                v25 = &dword_109EC8[3 * v24];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v24);
                v25 = dword_109EC8;
              }

              v26 = *(v14 + 48);
              bzero(v48, 0x400uLL);
              if (*v25 == 2)
              {
                v27 = *(v25 + 8);
                if (*(v25 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v25 + 7))
                {
                  v17 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v25 + 5))
                {
                  if (!*(v25 + 4) || !*(v25 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v27)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!*(v14 + 64))
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v35 = *(v14 + 56);
                  *(a1 + 101) = 1;
                  if (!v35 || CFStringCompare(v35, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v25 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v17 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    sub_4774(a1, v18, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v27)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (*(v14 + 64))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v25 + 5))
                {
                  goto LABEL_111;
                }

                if (!*(v14 + 64))
                {
                  sub_4F28(v26, v48);
                  sub_4774(a1, v37, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v28 = *(v14 + 56);
                if (!v28 || CFStringCompare(v28, @"true", 0))
                {
LABEL_99:
                  sub_4F28(v26, v48);
                  sub_4774(a1, v36, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v11 == 2)
                    {
                      v39 = 0;
                      v40 = (a1 + 1672);
                      v41 = &dword_1A83A0;
LABEL_119:
                      v42 = *v41;
                      if (v39 != v42)
                      {
                        v43 = a1 + 1664 + 16 * v42;
                        *(v43 + 4) = *(v40 - 4);
                        *(v40 - 4) = 0;
                        v44 = *v40;
                        *v40 = *(v43 + 8);
                        *(v43 + 8) = v44;
                      }

                      while (v39 != 47)
                      {
                        v40 += 2;
                        v41 += 8;
                        ++v39;
                        if (*(a1 + 104))
                        {
                          goto LABEL_119;
                        }
                      }
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", "void clear_stale_ota_nvram(void)");
                    sub_9A70(@"boot-breadcrumbs", 1);
                    sub_9A70(@"OTA-pre-conversion", 1);
                    sub_9A70(@"OTA-post-conversion", 1);
                    sub_9A70(@"ota-conv-panic-indicator", 1);
                    sub_9A70(@"OTA-fsck-metrics", 1);
                    sub_9A70(@"OTA-sealvolume-metrics", 1);
                    sub_9A70(@"OTA-migrator-metrics", 1);
                    for (i = 0; i != 28; ++i)
                    {
                      v46 = &off_1A8390[4 * dword_109E58[i]];
                      sub_9A70(v46[1], 1);
                      sub_9A70(*v46, 1);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v47 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v47 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v47 = 10;
                        }

                        else
                        {
                          v47 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v47 = 10;
                      }

                      else
                      {
                        v47 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v47 = 7;
                      }

                      else
                      {
                        v47 = 6;
                      }
                    }

                    else
                    {
                      v47 = 2;
                    }

                    sub_4814(a1, v47);
                  }

                  else
                  {
                    sub_9274(a1, 1);
                  }

                  *(a1 + 845) = 1;
                  goto LABEL_149;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v16 = *(v14 + 56);
            if (v16 && CFStringCompare(v16, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              sub_5B04(a1);
            }

            v20 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v20 == 2)
              {
                v21 = sub_968C(a1, v14, dword_109BC0);
                sub_9924(a1, v14);
                goto LABEL_71;
              }

              v23 = &unk_109D48;
            }

            else if (v20 == 2)
            {
              v23 = &unk_109A00;
            }

            else
            {
              v23 = &unk_109B18;
            }

            v21 = sub_968C(a1, v14, v23);
LABEL_71:
            if (!*(v14 + 48))
            {
              *(a1 + 1632) = 1;
              *(a1 + 1640) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (*(v14 + 64))
                {
                  sub_4E24(a1, 7u, 0, 0);
                }

                v31 = *(v14 + 24);
                if (v31 && CFStringCompare(v31, @"recover", 0))
                {
                  sub_4E24(a1, 2u, 1, 0);
                }

                if (*(v14 + 32))
                {
                  sub_4E24(a1, 3u, 1, 0);
                }
              }

              goto LABEL_103;
            }

            v29 = sub_46F8(a1, v14);
            if (v29 < 0x22)
            {
              v30 = &dword_109EC8[3 * v29];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v29);
              v30 = dword_109EC8;
            }

            v32 = *(v14 + 48);
            bzero(v48, 0x400uLL);
            if (*v30 != 1)
            {
              if (*(v30 + 6))
              {
                if (*(v14 + 64))
                {
                  sub_998C(a1, v32);
                }

                else
                {
                  sub_4F28(v32, v48);
                  sub_4774(a1, v38, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v48);
                }
              }

              *(a1 + 1632) = 1;
              *(a1 + 1640) = "access now enabled";
              goto LABEL_103;
            }

            v33 = *(v14 + 64);
            if (*(v30 + 5))
            {
              if (!v33)
              {
                sub_4F28(v32, v48);
                sub_4774(a1, v34, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v48);
LABEL_103:
                if (v21 && !*(a1 + 104))
                {
                  sub_4774(a1, v22, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v33)
            {
              goto LABEL_103;
            }

            sub_998C(a1, v32);
            goto LABEL_103;
          }
        }

        else
        {
          sub_933C(a1, 1u, 0x2Fu, (a1 + 1232));
          if (!*(a1 + 1232))
          {
            *(a1 + 2448) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            sub_4E24(a1, 0x2Fu, 0, 0);
          }

          *(a1 + 2449) = 1;
          *(a1 + 844) = 0;
          v7 = (a1 + 1168);
          v8 = -4;
          do
          {
            sub_933C(a1, 1u, v8 + 43, v7++);
          }

          while (!__CFADD__(v8++, 1));
          *(a1 + 2448) = 1;
        }
      }

      *(a1 + 840) = 2;
      if (!a3)
      {
        sub_3680(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v6 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    sub_9274(a1, v6);
  }

  return v6;
}

void sub_2F64(uint64_t a1)
{
  if (*(a1 + 88) != 3)
  {
    if (sub_2668(a1, 0, 0))
    {
      v2 = 0uLL;
      v3 = 1668;
      v4.i64[0] = 0x100000001;
      v4.i64[1] = 0x100000001;
      v5 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      do
      {
        v8.i8[0] = *(a1 + v3);
        v8.i8[1] = *(a1 + v3 + 16);
        v8.i8[2] = *(a1 + v3 + 32);
        v8.i8[3] = *(a1 + v3 + 48);
        v8.i8[4] = *(a1 + v3 + 64);
        v8.i8[5] = *(a1 + v3 + 80);
        v8.i8[6] = *(a1 + v3 + 96);
        v8.i8[7] = *(a1 + v3 + 112);
        v8.i8[8] = *(a1 + v3 + 128);
        v8.i8[9] = *(a1 + v3 + 144);
        v8.i8[10] = *(a1 + v3 + 160);
        v8.i8[11] = *(a1 + v3 + 176);
        v8.i8[12] = *(a1 + v3 + 192);
        v8.i8[13] = *(a1 + v3 + 208);
        v8.i8[14] = *(a1 + v3 + 224);
        v8.i8[15] = *(a1 + v3 + 240);
        v9 = vtstq_s8(v8, v8);
        v10 = vmovl_u8(*v9.i8);
        v11 = vmovl_high_u8(v9);
        v7 = vaddq_s32(v7, vandq_s8(vmovl_high_u16(v11), v4));
        v6 = vaddq_s32(v6, vandq_s8(vmovl_u16(*v11.i8), v4));
        v5 = vaddq_s32(v5, vandq_s8(vmovl_high_u16(v10), v4));
        v2 = vaddq_s32(v2, vandq_s8(vmovl_u16(*v10.i8), v4));
        v3 += 256;
      }

      while (v3 != 2436);
      v12 = vaddvq_s32(vaddq_s32(vaddq_s32(v2, v6), vaddq_s32(v5, v7)));
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = 0;
        LODWORD(v15) = 1;
        while (1)
        {
          v16 = 0;
          v17 = 1668;
          v18 = off_1A8390;
          v28 = v14;
          while (v13 < v12 && v16 <= 0x2F)
          {
            if (*(v18 + 6) == v14 && *(a1 + v17))
            {
              if (++v13 == v12)
              {
                v30 = *(a1 + 1632);
                v19 = *(a1 + 1640);
              }

              else
              {
                v30 = 0;
                v19 = 0;
              }

              v20 = sub_9BFC(a1, v16);
              if (v20)
              {
                v21 = v20;
                err = 0;
                if (*(a1 + 88) == 1)
                {
                  v22 = v18;
                }

                else
                {
                  v22 = (v18 + 1);
                }

                v15 = *v22;
                v29 = ramrod_set_NVRAM_shadow_limit(*v22, v20, &err, v30 != 0, (0xF80BFFFFFD00uLL >> v16) & 1, 128);
                if (v29)
                {
                  if (v30)
                  {
                    bzero(buffer, 0x400uLL);
                    bzero(v33, 0x400uLL);
                    CFStringGetCString(v15, buffer, 1024, 0x8000100u);
                    CFStringGetCString(v21, v33, 1024, 0x8000100u);
                    v32[0] = 0;
                    if (v19)
                    {
                      asprintf(v32, "(NVRAM set) %s=%s [sync=true] (%s)");
                    }

                    else
                    {
                      asprintf(v32, "(NVRAM set) %s=%s [sync=true]");
                    }

                    v14 = v28;
                    v26 = v29;
                    if (v32[0])
                    {
                      sub_3680(a1, 2, 1, 0, 261, v32[0], 0, 0, 0);
                      if (v32[0])
                      {
                        free(v32[0]);
                      }
                    }

                    LODWORD(v15) = 1;
                    goto LABEL_37;
                  }

                  LODWORD(v15) = 1;
LABEL_28:
                  v14 = v28;
                  v26 = v29;
                }

                else
                {
                  if (!v15)
                  {
                    goto LABEL_28;
                  }

                  bzero(buffer, 0x400uLL);
                  bzero(v33, 0x400uLL);
                  CFStringGetCString(v15, buffer, 1024, 0x8000100u);
                  CFStringGetCString(v21, v33, 1024, 0x8000100u);
                  if (err)
                  {
                    Code = CFErrorGetCode(err);
                    v24 = CFErrorCopyDescription(err);
                    if (v24)
                    {
                      v25 = v24;
                      bzero(v32, 0x400uLL);
                      CFStringGetCString(v25, v32, 1024, 0x8000100u);
                      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s %ld:%s\n", "checkpoint_nvram_set", buffer, v33, Code, v32);
                      CFRelease(v25);
                    }

                    else
                    {
                      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s %ld[no description]\n");
                    }
                  }

                  else
                  {
                    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s\n");
                  }

                  v14 = v28;
                  v26 = 0;
                  LODWORD(v15) = 0;
                }

LABEL_37:
                if (err)
                {
                  CFRelease(err);
                }

                if (v26)
                {
                  *(a1 + v17) = 0;
                  if (v30)
                  {
                    *(a1 + 1632) = 0;
                    *(a1 + 1640) = 0;
                  }
                }

                CFRelease(v21);
              }
            }

            ++v16;
            v18 += 4;
            v17 += 16;
            if (!v15)
            {
              return;
            }
          }

          if (v13 < v12 && v14++ < 4)
          {
            continue;
          }

          return;
        }
      }
    }
  }
}

void sub_3420(uint64_t result)
{
  v1 = (result + 232);
  if (*(result + 232))
  {
    if (*result == 1)
    {
      sub_9C6C((result + 232));
      sub_9D00(v1);
      if (!*(result + 658))
      {
        if (*(result + 512))
        {
          *(result + 658) = 1;
          *(result + 512) = 0;
        }
      }

      sub_9D44(v1);
      sub_9F08(v1);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): only MONITOR can directly activate recorder\n", "checkpoint_recorder_monitor_activate");
    }

    *v1 = 0;
  }
}

void checkpoint_monitor_recorder_path(char *__src)
{
  v1 = qword_1C6480;
  if (qword_1C6480)
  {
    if (*(qword_1C6480 + 88) != 3)
    {
      sub_3540(qword_1C6480, __src);

      sub_3420(v1);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", "checkpoint_monitor_recorder_path");
  }
}

char *sub_3540(char *result, char *__src)
{
  v3 = result;
  if (*result == 1)
  {
    v4 = 1;
  }

  else
  {
    result = pthread_mutex_lock(result + 4);
    v4 = *v3;
  }

  *(v3 + 89) = v4;
  *(v3 + 90) = *(v3 + 22);
  if (__src)
  {
    result = strncpy(v3 + 364, __src, 0x80uLL);
  }

  else
  {
    v3[364] = 0;
  }

  v3[352] = 1;
  if (v4 != 1)
  {
    result = pthread_mutex_unlock(v3 + 4);
  }

  v3[232] = 1;
  return result;
}

void checkpoint_monitor_step(uint64_t a1, const char *a2, uint64_t a3, const void *a4)
{
  v4 = qword_1C6480;
  if (qword_1C6480)
  {
    sub_3680(qword_1C6480, 1, 2, 0, a1, a2, 0, a3, a4);
    if (!*(v4 + 847))
    {
      sub_2F64(v4);
    }

    if (*(v4 + 88) != 3)
    {

      sub_3420(v4);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", "checkpoint_monitor_step");
  }
}

void *sub_3680(int *a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v93 = 0;
  asprintf(&v93, "%s", a6);
  if (!v93)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v93;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
  }

  *(v17 + 14) = ramrod_display_get_progress();
  *(v17 + 22) = *(v17 + 14) | (*(v17 + 2) << 16) | 0x11000000;
  *v97 = 0x1500000001;
  v94[0] = 0;
  v94[1] = 0;
  v95 = 16;
  if (sysctl(v97, 2u, v94, &v95, 0, 0))
  {
    v18 = -1;
  }

  else
  {
    v18 = v17[2] - v94[0];
  }

  v19 = *(v17 + 2);
  if (v19 <= 0x21)
  {
    if (((1 << v19) & 0x100000090) != 0)
    {
      sub_A378(a1, 0xDu, *(v17 + 14) | 0x11070000, *(v17 + 18), *(v17 + 19));
      v22 = v17[10];
      if (v22)
      {
        Code = CFErrorGetCode(v22);
        Domain = CFErrorGetDomain(v17[10]);
        v25 = sub_7A84(v17[10]);
        sub_A378(a1, 0xFu, *(v17 + 22), *(v17 + 18), Code);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          sub_A4D4(a1, 0x10u, *(v17 + 22), *(v17 + 18), buffer);
        }

        if (v25)
        {
          sub_A148(a1, 0x11u, *(v17 + 22), v25);
          free(v25);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v19) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v21 = *(v17 + 14);
      if (v20)
      {
        sub_A378(a1, 0xDu, v21 | 0x11070000, v20, 0);
        goto LABEL_76;
      }

      v35 = a1 + 416;
      v36 = 92;
      if (!*(a1 + 104))
      {
        v36 = 44;
      }

      v37 = &v35[v36];
      v38 = *(v37 + 1);
      if (v38)
      {
        v39 = v21 | 0x11030000;
        if (*v38 == v39)
        {
          v40 = 0;
          *v38 = 0;
LABEL_41:
          v41 = &v38[v40 + 1];
          v42 = v40 - 7;
          do
          {
            *(v41 - 1) = *v41;
            ++v41;
            v43 = __CFADD__(v42++, 1);
          }

          while (!v43);
LABEL_44:
          v38[7] = 0;
          *(v37 + 4) = 1;
          goto LABEL_53;
        }

        v44 = v38 + 1;
        v45 = -1;
        while (v45 != 6)
        {
          v46 = *v44;
          v44 += 2;
          ++v45;
          if (v46 == v39)
          {
            *(v44 - 1) = 0;
            if (v45 > 5)
            {
              goto LABEL_44;
            }

            v40 = v45 + 1;
            goto LABEL_41;
          }
        }
      }

      v47 = a1[414];
      if (!v47)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id_int", "not removed");
        v47 = a1[414];
      }

      a1[414] = v47 + 1;
LABEL_53:
      v48 = 24;
      if (!*(a1 + 104))
      {
        v48 = 12;
      }

      if ((0x1001100uLL >> v48))
      {
        v49 = &v35[4 * v48];
        v50 = *(v49 + 1);
        if (v50)
        {
          v51 = *(v17 + 14) | 0x11030000;
          v52 = v50 + 28;
          if (*v50 == v51)
          {
            v53 = 0;
LABEL_66:
            v57 = &v50[4 * v53];
            v58 = v57[1];
            if (v58)
            {
              free(v58);
            }

            *v57 = 0;
            v57[1] = 0;
            if (v53 <= 6)
            {
              v59 = v57 + 2;
              v60 = v53 - 7;
              do
              {
                *(v59 - 1) = *v59;
                ++v59;
                v43 = __CFADD__(v60++, 1);
              }

              while (!v43);
            }

            *v52 = 0;
            v52[1] = 0;
            *(v49 + 4) = 1;
            goto LABEL_76;
          }

          v53 = 0;
          v55 = v50 + 4;
          while (v53 != 7)
          {
            ++v53;
            v56 = *v55;
            v55 += 4;
            if (v56 == v51)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v61 = a1[414];
      if (!v61)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id", "not removed");
        v61 = a1[414];
      }

      a1[414] = v61 + 1;
LABEL_76:
      sub_A288(a1, 0x12u, v18);
      sub_A288(a1, 0x15u, *(v17 + 14));
      goto LABEL_77;
    }

    if (v19 == 6)
    {
      sub_A4D4(a1, 0xEu, *(v17 + 22), *(v17 + 18), v17[8]);
      goto LABEL_77;
    }
  }

  if (v19 == 3)
  {
    if (!*(v17 + 18))
    {
      v26 = a1[412] + 1;
      a1[412] = v26;
      v27 = *(v17 + 22);
      v28 = 92;
      if (!*(a1 + 104))
      {
        v28 = 44;
      }

      v29 = &a1[v28];
      v30 = *(v29 + 209);
      if (!v30)
      {
        goto LABEL_59;
      }

      v31 = 0;
      v32 = *(v29 + 209);
      do
      {
        v33 = *v32;
        v32 += 2;
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

        if (v31 > 6)
        {
          break;
        }

        ++v31;
        v30 = v32;
      }

      while (!v34);
      if (v34)
      {
        *v34 = v27;
        v34[1] = v26;
        *(v29 + 1668) = 1;
      }

      else
      {
LABEL_59:
        v54 = a1[413];
        if (!v54)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_int", "dest_store == NULL");
          v54 = a1[413];
          v27 = *(v17 + 22);
        }

        a1[413] = v54 + 1;
      }

      sub_A148(a1, 0xCu, v27, v17[8]);
    }

    goto LABEL_76;
  }

  if (v19 == 1)
  {
    sub_A148(a1, 0xAu, *(v17 + 22), v17[8]);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 27) = v17;
  *(a1 + 27) = v17;
  v62 = a1[56] + 1;
  a1[56] = v62;
  if (v62 >= 0x201)
  {
    v63 = a1 + 52;
    do
    {
      v64 = *v63;
      v65 = **v63;
      *v63 = v65;
      if (!v65)
      {
        *(a1 + 27) = v63;
      }

      a1[56] = v62 - 1;
      v66 = v64[8];
      if (v66)
      {
        free(v66);
        v64[8] = 0;
      }

      v67 = v64[10];
      if (v67)
      {
        CFRelease(v67);
      }

      free(v64);
      v62 = a1[56];
    }

    while (v62 > 0x200);
  }

  memset(buffer, 0, 56);
  v94[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v68 = *(v17 + 2);
  if (v68 > 0x21)
  {
    v69 = "GENERAL";
  }

  else
  {
    v69 = off_1A8A18[v68];
  }

  asprintf(v94, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v69);
  v70 = v94[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    asprintf(buffer, "(FAILURE:%d) ", *(v17 + 19));
    if (byte_1C6488 == 1)
    {
      sub_A794();
    }
  }

  else
  {
    v71 = *(v17 + 2);
    if (v71 <= 0x1C && ((1 << v71) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ");
    }

    else
    {
      asprintf(buffer, " ");
    }
  }

  v72 = *&buffer[0].tm_sec;
  if (!v70 || !*&buffer[0].tm_sec)
  {
    goto LABEL_159;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v73 = *(v17 + 2);
    if (v73 == 28 || v73 == 1)
    {
      asprintf(buffer, "[0x%04X] %s");
    }

    else if (*(v17 + 12) == 1)
    {
      asprintf(buffer, "%s");
    }

    else
    {
      asprintf(buffer, "%s:[0x%04X] %s");
    }

    v74 = *&buffer[0].tm_sec;
  }

  else
  {
    v74 = 0;
  }

  v94[0] = 0;
  v75 = *(v17 + 2);
  if (v75 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      asprintf(buffer, "... %s");
      goto LABEL_132;
    }

    v78 = sub_A6E4(a1, 9);
    v79 = sub_A7D4(a1, (a1 + 310), 0xCu);
    v80 = v79;
    v81 = a1[27];
    if (v81 > 6)
    {
      v82 = "GENERAL";
    }

    else
    {
      v82 = off_1A8C10[v81];
    }

    if (v78)
    {
      if (!v79)
      {
        asprintf(buffer, "[%s] %s", v82, v78);
        v84 = v78;
        goto LABEL_131;
      }

      asprintf(buffer, "[%s] %s %s", v82, v79, v78);
      free(v78);
    }

    else
    {
      if (!v79)
      {
        asprintf(buffer, "[%s]");
LABEL_132:
        v77 = *&buffer[0].tm_sec;
        if (v74)
        {
          goto LABEL_116;
        }

LABEL_133:
        if (v77)
        {
          asprintf(v94, "%s:%s %s", v70, v72, v77);
LABEL_136:
          v83 = 1;
          goto LABEL_137;
        }

LABEL_135:
        asprintf(v94, "%s:%s", v70, v72);
        v77 = 0;
        goto LABEL_136;
      }

      asprintf(buffer, "[%s] %s", v82, v79);
    }

    v84 = v80;
LABEL_131:
    free(v84);
    goto LABEL_132;
  }

  if (v75 == 27)
  {
    v76 = sub_A6E4(a1, 13);
    v77 = v76;
    if (*v76 == 123 && v76[1] == 125 && !v76[2])
    {
      free(v76);
      if (!v74)
      {
        goto LABEL_135;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v77 = sub_7A84(v17[10]);
  }

  if (!v74)
  {
    goto LABEL_133;
  }

LABEL_116:
  if (!v77)
  {
LABEL_118:
    asprintf(v94, "%s:%s%s", v70, v72, v74);
    v83 = 0;
    v77 = 0;
    goto LABEL_137;
  }

  asprintf(v94, "%s:%s%s %s", v70, v72, v74, v77);
  v83 = 0;
LABEL_137:
  v85 = v94[0];
  if (v94[0])
  {
    v92 = v83;
    if (*(v17 + 2) == 28)
    {
      if (a1[22] == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 3;
      }
    }

    else
    {
      v86 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v85);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");
      }

      if (v86 < 2)
      {
        break;
      }

      --v86;
      sleep(1u);
    }

    v87 = v94[0];
    v88 = calloc(1uLL, 0x10uLL);
    if (v88)
    {
      v89 = v88;
      v88[1] = v87;
      if (*a1 == 1)
      {
        *v88 = 0;
        **(a1 + 63) = v88;
        *(a1 + 63) = v88;
      }

      else
      {
        pthread_mutex_lock(a1 + 4);
        v90 = *a1;
        *v89 = 0;
        **(a1 + 63) = v89;
        *(a1 + 63) = v89;
        if (v90 != 1)
        {
          pthread_mutex_unlock(a1 + 4);
        }
      }

      *(a1 + 232) = 1;
      v83 = v92;
    }

    else if (v87)
    {
      free(v87);
    }
  }

  if ((v83 & 1) == 0)
  {
    free(v74);
  }

  if (v77)
  {
    free(v77);
  }

LABEL_159:
  if (v70)
  {
    free(v70);
  }

  if (v72)
  {
    free(v72);
  }

  return v17;
}

void checkpoint_monitor_engine_failure(unsigned int a1, int a2)
{
  v2 = qword_1C6480;
  if (!qword_1C6480)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", "checkpoint_monitor_engine_failure");
    return;
  }

  if (a1 > 6)
  {
    v5 = "GENERAL";
  }

  else
  {
    v5 = off_1A8C10[a1];
  }

  *(qword_1C6480 + 2449) = 0;
  if (sub_2668(v2, 1, 0) && !*(v2 + 107))
  {
    v21 = 0;
    if (!*(v2 + 1244))
    {
      sub_4524(v2, (v2 + 1240));
    }

    asprintf(&v21, "%s(%d)[REBOOT]", v5, a2);
    if (v21)
    {
      if (*(v2 + 104) && (v6 = *(v2 + 1320), v22 = 0, v6) && (location = CFStringFind(v6, @":", 0).location, location != -1) && ((v8 = location, v9 = CFStringFind(v6, @";", 0).location, v10 = v8 + 1, v9 != -1) && (v11.length = v9, v9 > v10) || (v12 = CFStringFind(v6, @"}", 0).location, v12 != -1) && (v11.length = v12, v12 > v10)) && (v11.location = v10, (v13 = CFStringCreateWithSubstring(kCFAllocatorDefault, v6, v11)) != 0) && (v14 = v13, bzero(buffer, 0x400uLL), CFStringGetCString(v14, buffer, 1024, 0x8000100u), asprintf(&v22, "%s", buffer), CFRelease(v14), (v15 = v22) != 0))
      {
        sub_4670(v2, 0, v22);
        free(v15);
        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      sub_4670(v2, v16, v21);
      if (v21)
      {
        free(v21);
        v21 = 0;
      }
    }

    *(v2 + 107) = 1;
    *(v2 + 108) = a1;
    *(v2 + 112) = a2;
    if (!*(v2 + 1288))
    {
      goto LABEL_39;
    }

    v17 = sub_46F8(v2, v2 + 1240);
    if (v17 < 0x22)
    {
      v19 = &dword_109EC8[3 * v17];
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v17);
      v19 = dword_109EC8;
    }

    if (*v19 == 2)
    {
      if (*(v19 + 4))
      {
        *(v2 + 101) = 1;
      }

      if (*(v19 + 5))
      {
        if (*(v2 + 1304))
        {
          *(v2 + 104) = 1;
LABEL_39:
          v20 = sub_48A4();
          sub_4814(v2, v20);
          goto LABEL_40;
        }

        if (!*(v19 + 7))
        {
          sub_4774(v2, v18, "[engine_failure]outcome=%s(pre_existing_reboot_retry_not_in_zone)");
          goto LABEL_39;
        }
      }

      else if (!*(v19 + 7))
      {
        goto LABEL_39;
      }

      *(v2 + 102) = 1;
      goto LABEL_39;
    }

    sub_4774(v2, v18, "[engine_failure]outcome=%s(pre_existing_set_by_monitor)");
    goto LABEL_39;
  }

LABEL_40:
  sub_2F64(v2);
  if (*(v2 + 88) != 3)
  {
    sub_3420(v2);
  }
}

void sub_4524(int *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_collect");
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 2;
  do
  {
    sub_933C(a1, *a2, v5, &v6[v4]);
    v7 = *a1;
    if ((v5 - 39) <= 3 && v7 == 2)
    {
      if (*&v6[2 * v5])
      {
        goto LABEL_13;
      }
    }

    else if (v5 >= 0x2B && v5 != 47 && v7 == 2)
    {
      v8 = *&v6[2 * v5];
      if (v8)
      {
        bzero(v9, 0x400uLL);
        sub_4F28(v8, v9);
        sub_5080(a1, v5 - 4, v9);
LABEL_13:
        sub_4E24(a1, v5, 0, 0);
      }
    }

    ++v5;
    v4 += 2;
  }

  while (v5 != 48);
  *(a2 + 4) = 1;
}

void sub_4670(uint64_t result, unsigned int a2, const char *a3)
{
  v4 = *(result + 1816);
  if (v4)
  {
    sub_A63C(result + 1632, (v4 + 8 * a2), a3);
    *(result + 1812) = 1;
  }

  else
  {
    v5 = *(result + 1652);
    if (!v5)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_boot", "wrong type or internalStore.byBoot == NULL or boot_type out-of-range");
      v5 = *(result + 1652);
    }

    *(result + 1652) = v5 + 1;
  }
}

uint64_t sub_46F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_A7D4(a1, a2, 5u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    if (!strcmp(v3, off_1A8C48[v4]))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      break;
    }
  }

  while (v4++ < 0x21);
  free(v3);
  return v5;
}

void sub_4774(int *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v4[0] = 0;
  va_copy(&v4[1], va);
  vasprintf(v4, a3, va);
  if (v4[0])
  {
    sub_3680(a1, 30, 1, 0, 260, v4[0], 0, 0, 0);
    sub_A148(a1, 8u, a1[30], v4[0]);
    if (v4[0])
    {
      free(v4[0]);
      v4[0] = 0;
    }
  }

  ++a1[30];
}

void sub_4814(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(&off_1A8D58 + v2);
  if (*(v3 + 4 * a2))
  {
    v4 = a2;
    *(result + 92) = v2;
    v6 = *(v3 + 4 * a2);
    *(result + 96) = v6;
    if (v6 > 0x21)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_1A8C48[v6];
    }

    sub_5080(result, 5u, v7);

    sub_9B34(result, v4);
  }
}

uint64_t sub_48A4()
{
  v0 = off_1AD470();
  v1 = v0;
  if (*(v0 + 107))
  {
    if (*(v0 + 104))
    {
      if (*(v0 + 102))
      {
        return 7;
      }

      else
      {
        return 11;
      }
    }

    else
    {
      if (*(v0 + 88) == 2)
      {
        if (*(v0 + 102))
        {
          return 6;
        }

        if (!*(v0 + 101))
        {
          return 13;
        }

        v3 = *(v0 + 1256);
        v4 = *(v0 + 1264);
        v5 = *(v0 + 1272);
        v6 = *(v0 + 1304);
        v7 = *(v0 + 1296);
        if (v3 && v4 && v5 && v6 && v7 && CFStringCompare(*(v0 + 1256), @"true", 0) == kCFCompareEqualTo && CFStringCompare(v4, @"upgrade", 0) == kCFCompareEqualTo && CFStringCompare(v5, @"true", 0) == kCFCompareEqualTo && CFStringCompare(v6, @"true", 0) == kCFCompareEqualTo && CFStringCompare(v7, @"true", 0) == kCFCompareEqualTo)
        {
          return 10;
        }

        bzero(v13, 0x400uLL);
        bzero(v12, 0x400uLL);
        bzero(v11, 0x400uLL);
        bzero(v10, 0x400uLL);
        bzero(v9, 0x400uLL);
        if (v7 && CFStringCompare(v7, @"true", 0) == kCFCompareEqualTo || v4 || v5 || v6)
        {
          sub_4F28(v3, v13);
          sub_4F28(v4, v12);
          sub_4F28(v5, v11);
          sub_4F28(v6, v10);
          sub_4F28(v7, v9);
          sub_4774(v1, v8, "[monitor_final](auto_boot=%s)(boot_command=%s)(upgrade_retry=%s)(reboot_retry_zone=%s)(reboot_retry_enabled=%s)", v13, v12, v11, v10, v9);
          sub_9924(v1, (v1 + 310));
          if (v5)
          {
            sub_4E24(v1, 3u, 1, 0);
          }

          if (v6)
          {
            sub_4E24(v1, 7u, 0, 0);
          }
        }
      }

      return 11;
    }
  }

  else if (*(v0 + 105))
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

BOOL checkpoint_monitor_success()
{
  v0 = qword_1C6480;
  if (qword_1C6480)
  {
    *(qword_1C6480 + 2449) = 0;
    if (sub_2668(v0, 1, 0))
    {
      if (!*(v0 + 1244))
      {
        sub_4524(v0, (v0 + 1240));
      }

      v2 = *(v0 + 1520) != 0;
      if (*(v0 + 88) == 2)
      {
        if (*(v0 + 1304))
        {
          v3 = *(v0 + 96);
          if (v3 > 0x21)
          {
            v4 = "unknown";
          }

          else
          {
            v4 = off_1A8C48[v3];
          }

          sub_4774(v0, v1, "[monitor_success](outcome=%s)success_when_still_in_retry_zone", v4);
          sub_4E24(v0, 7u, 0, 1);
        }

        v5 = *(v0 + 1264);
        if (v5)
        {
          bzero(v15, 0x400uLL);
          sub_4F28(v5, v15);
          sub_4774(v0, v6, "[monitor_success]boot_command=%s(success_when_boot_command_set)", v15);
          sub_4E24(v0, 2u, 1, 1);
        }

        v7 = *(v0 + 1272);
        if (v7)
        {
          bzero(v15, 0x400uLL);
          sub_4F28(v7, v15);
          sub_4774(v0, v8, "[monitor_success]upgrade_retry=%s(success_when_upgrade_retry_set)", v15);
          sub_4E24(v0, 3u, 1, 1);
        }

        sub_4F74(v0, 0xBu, v0 + 1240);
        sub_4F74(v0, 0xCu, v0 + 1240);
        sub_4F74(v0, 0x17u, v0 + 1240);
        sub_4F74(v0, 0x18u, v0 + 1240);
      }

      if (!*(v0 + 1256))
      {
        sub_4774(v0, v1, "[monitor_success]success_when_no_auto_boot");
        sub_5080(v0, 1u, "true");
        sync();
      }
    }

    else
    {
      v2 = 0;
    }

    v9 = sub_48A4();
    sub_4814(v0, v9);
    sub_2F64(v0);
    v10 = *(v0 + 88);
    if (v10 == 1)
    {
      v11 = 0;
      v12 = &dword_1A83A8;
      do
      {
        v13 = *v12;
        v12 += 8;
        if ((v13 - 5) <= 0xFFFFFFFC && *(v0 + 8 * v11 + 1248))
        {
          sub_4E24(v0, v11, 0, 0);
        }

        ++v11;
      }

      while (v11 != 48);
      v10 = *(v0 + 88);
    }

    *(v0 + 847) = 1;
    if (v10 != 3)
    {
      sub_3420(v0);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", "checkpoint_monitor_success");
    return 0;
  }

  return v2;
}

void sub_4E24(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a2 < 0x30)
  {
    v4 = a4;
    v6 = &off_1A8390[4 * a2];
    if (a3 || (*(v6 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v7 = v6;
      }

      else
      {
        v7 = (v6 + 1);
      }

      v8 = *v7;
      CFStringGetCString(*v7, buffer, 1024, 0x8000100u);
      sub_9A70(v8, v4);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n");
  }
}

char *sub_4F28(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void sub_4F74(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a2;
  if (a2 >= 0x30)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_get_nvram_name", a2);
    v6 = 0;
  }

  bzero(buffer, 0x400uLL);
  if (*(a1 + 88) == 1)
  {
    v7 = &off_1A8390[4 * v6];
  }

  else
  {
    v7 = &off_1A8390[4 * v6 + 1];
  }

  CFStringGetCString(*v7, buffer, 1024, 0x8000100u);
  v8 = *(a3 + 8 * a2 + 8);
  if (v8)
  {
    if (CFStringCompare(v8, @"{}", 0) == kCFCompareEqualTo)
    {
      sub_4E24(a1, a2, 0, 1);
    }
  }
}

void sub_5080(uint64_t result, unsigned int a2, const char *a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1664;
      goto LABEL_7;
    }

    a2 = off_1A8390[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1664;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*v7)
      {
        free(*v7);
        *v7 = 0;
      }

      sub_A63C(result + 1632, v7, a3);
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v8 = *(result + 1652);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_string", "wrong type or internalStore.string == NULL");
    v8 = *(result + 1652);
  }

  *(result + 1652) = v8 + 1;
}

void checkpoint_monitor_final_result()
{
  v0 = qword_1C6480;
  if (qword_1C6480)
  {
    sub_3680(qword_1C6480, 28, 1, 0, 0, "FINAL", 0, *(qword_1C6480 + 112), 0);
    if (!*(v0 + 847))
    {
      sub_2F64(v0);
    }

    if (*(v0 + 88) != 3)
    {
      sub_5250(v0);

      sub_3420(v0);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", "checkpoint_monitor_final_result");
  }
}

uint64_t sub_5250(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    *(result + 512) = 1;
  }

  else
  {
    result = pthread_mutex_lock((result + 256));
    v2 = *v1;
    *(v1 + 512) = 1;
    if (v2 != 1)
    {
      result = pthread_mutex_unlock((v1 + 256));
    }
  }

  *(v1 + 232) = 1;
  return result;
}

uint64_t checkpoint_engine_enable_crash_handlers()
{
  bzero(__s1, 0x400uLL);
  v8 = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, &v8, 0, 0))
  {
    if (strstr(__s1, "-panicOnFail"))
    {
      byte_1C6488 = 1;
      ramrod_log_msg("panic on fail is enabled (-panicOnFail boot-arg)\n");
    }

    if (strstr(__s1, "-panicOnCrash"))
    {
      byte_1C6489 = 1;
      ramrod_log_msg("panic on crash is enabled (-panicOnCrash boot-arg)\n");
    }
  }

  if (byte_1C6489)
  {
    v0 = "panicOnCrash";
  }

  else
  {
    v0 = "logOnCrash";
  }

  if (byte_1C6488)
  {
    v1 = "panicOnFail";
  }

  else
  {
    v1 = v0;
  }

  ramrod_log_msg("Setting crash behaviors: %s\n", v1);
  v2 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_552C;
  v6 = &unk_1A8360;
  v7 = off_1AD538;
  do
  {
    result = v5(v4, dword_10A070[v2++]);
  }

  while (v2 != 5);
  return result;
}

uint64_t sub_5450(int a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = pthread_sigmask(3, &v9, 0);
  for (i = 0; i != 5; ++i)
  {
    v6 = sub_A8CC(v6, dword_10A070[i]);
  }

  if (a3)
  {
    a3 = *(a3 + 48);
  }

  ramrod_log_msg("\n*****************************\nCaught signal %d (%s), si_code=%d, si_addr=%p\n*****************************\n\n", a1, sys_signame[a1], *(a2 + 8), *(a2 + 24));
  sub_A938(a3);
  sub_ABB4(a3);
  if ((byte_1C6489 & 1) != 0 || byte_1C6488 == 1)
  {
    sub_A794();
  }

  return raise(a1);
}

void *checkpoint_engine_init(unsigned int a1, int a2, int a3)
{
  v6 = pthread_once(&stru_1C45D0, sub_AF04);
  if (v6)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to initialize shared control: result=%d\n", "checkpoint_init_control", v6);
  }

  v7 = qword_1C6478;
  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): chassis failed to initialize\n");
    return 0;
  }

  specific = dispatch_get_specific(kCheckpointAsyncStepContextKey[0]);
  v9 = qword_1C6490;
  if (specific)
  {
    v9 = specific;
  }

  if (v9 && *(*v9 + 80))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): You may not start a checkpoint engine from inside a async checkpoint.\n");
    return 0;
  }

  if (*v7 != 1)
  {
    pthread_mutex_lock((v7 + 8));
  }

  v10 = *(v7 + 88);
  if (v10)
  {
    if (a1)
    {
      if (v10 != a1)
      {
        if (v10 > 3)
        {
          v11 = "UNKNOWN";
        }

        else
        {
          v11 = (&off_1A8E68)[v10];
        }

        if (a1 > 3)
        {
          v16 = "UNKNOWN";
        }

        else
        {
          v16 = (&off_1A8E68)[a1];
        }

        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): mixed checkpointing purposes (initial=%s) (latest=%s)\n", "checkpoint_engine_init", v11, v16);
        goto LABEL_56;
      }
    }

    else
    {
      a1 = *(v7 + 88);
    }
  }

  else
  {
    *v7 = 2;
    *(v7 + 88) = a1;
    v13 = MGCopyAnswer();
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v14))
        {
          sub_3680(v7, 2, 1, 0, 263, "Image4 device: AP nonce clearable", 0, 0, 0);
          *(v7 + 116) = 1;
        }

        else
        {
          sub_3680(v7, 2, 1, 0, 263, "Not image4 device: AP nonce not clearable", 0, 0, 0);
        }
      }

      else
      {
        sub_3680(v7, 2, 1, 0, 263, "Unable to determine whether image4 device: assuming AP nonce not clearable", 0, 0, 0);
      }

      CFRelease(v14);
    }

    else
    {
      sub_3680(v7, 2, 1, 0, 263, "Unable to determine whether image4 device: assuming AP nonce not clearable", 0, 0, 0);
    }

    if (a1 == 1)
    {
      *(v7 + 101) = 1;
      sub_5B04(v7);
    }
  }

  v12 = calloc(1uLL, 0xA8uLL);
  if (v12)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v12 + 5) = Mutable;
    if (!Mutable)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to init statistics dictionary\n", "checkpoint_engine_init");
      sub_5C10(v12);
LABEL_56:
      v20 = 0;
LABEL_58:
      v21 = 0;
LABEL_59:
      v12 = 0;
      goto LABEL_60;
    }

    *(v12 + 6) = a2;
    *(v12 + 7) = a3;
    *(v12 + 1) = v7;
    v18 = *(v7 + 200);
    if (v18 == 0x7FFFFFFF)
    {
      sub_D5840();
    }

    v19 = v18 + 1;
    *(v7 + 200) = v19;
    *(v12 + 8) = v19;
    valuePtr = a2;
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (!v20)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): engine id alloc failed\n", "checkpoint_engine_init");
      sub_5C10(v12);
      goto LABEL_58;
    }

    v21 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v21)
    {
      CFDictionarySetValue(*(v12 + 5), kCheckpointEngineStatsEngineIDKey[0], v20);
      CFDictionarySetValue(*(v12 + 5), kCheckpointEngineStatsCheckpointsKey[0], v21);
      if (a1 == 2)
      {
        goto LABEL_47;
      }

      v22 = *(v7 + 192);
      if (!v22)
      {
        goto LABEL_47;
      }

      if (*(v22 + 48))
      {
        v23 = sub_5CCC(*(v22 + 40), *(*(v22 + 56) + 8));
        if (v23)
        {
          v24 = v23;
          Value = CFDictionaryGetValue(v23, kCheckpointEngineStatsCheckpointSubenginesKey[0]);
          if (Value)
          {
LABEL_46:
            CFArrayAppendValue(Value, *(v12 + 5));
LABEL_47:
            if (*(v7 + 88) != 3 && !*(v7 + 240))
            {
              *(v7 + 240) = sub_5D94(v7);
            }

            if (sub_2668(v7, 1, 0))
            {
              sub_2F64(v7);
            }

            if (*(v7 + 88) != 3)
            {
              sub_5E20(v7);
            }

            goto LABEL_60;
          }

          v26 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v26)
          {
            Value = v26;
            CFDictionarySetValue(v24, kCheckpointEngineStatsCheckpointSubenginesKey[0], v26);
            CFRelease(Value);
            goto LABEL_46;
          }

          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): subengines alloc failed.\n");
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): parent stat update alloc failed\n");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): parent is set but we're not in a checkpoint step.\n");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoints_dictionary alloc failed\n");
    }

    sub_5C10(v12);
    goto LABEL_59;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate engine control context\n", "checkpoint_engine_init");
  v20 = 0;
  v21 = 0;
LABEL_60:
  if (*v7 != 1)
  {
    pthread_mutex_unlock((v7 + 8));
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v12;
}

void *checkpoint_closure_get_context()
{
  result = dispatch_get_specific(kCheckpointAsyncStepContextKey[0]);
  if (!result)
  {
    return qword_1C6490;
  }

  return result;
}

void sub_5AA8(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_lock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_obtain");
  }
}

int *sub_5B04(int *result)
{
  if (*(result + 116))
  {
    v1 = result;
    if (!*(result + 117))
    {
      v5 = 0;
      if (!ramrod_check_NVRAM_access())
      {
        return sub_3680(v1, 6, 1, 0, 264, "Skipping consuming APNonce becauase we have no nvram access yet", 0, -1, 0);
      }

      v2 = ramrod_clear_ap_nonce(&v5);
      if (v2 == -536870201)
      {
        v4 = v5;
        v3 = "Device does not support clearing of AP nonce";
      }

      else
      {
        if (!v2)
        {
          result = sub_3680(v1, 2, 1, 0, 264, "AP nonce consumed", 0, 0, 0);
LABEL_11:
          *(v1 + 117) = 1;
          return result;
        }

        v4 = v5;
        v3 = "Failed to consume AP nonce";
      }

      result = sub_3680(v1, 6, 1, 0, 264, v3, 0, -1, v4);
      goto LABEL_11;
    }
  }

  return result;
}

void sub_5C10(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine within step\n");
    }

    else
    {
      free(*(a1 + 80));
      free(*(a1 + 88));
      free(*(a1 + 160));
      v2 = *(a1 + 40);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 40) = 0;
      }

      v3 = *(a1 + 144);
      if (v3)
      {
        CFRelease(v3);
      }

      free(a1);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

const void *sub_5CCC(const __CFDictionary *a1, const char *a2)
{
  Value = CFDictionaryGetValue(a1, kCheckpointEngineStatsCheckpointsKey[0]);
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Mutable = CFDictionaryGetValue(v4, v5);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      CFDictionarySetValue(v4, v6, Mutable);
      CFRelease(Mutable);
    }
  }

  CFRelease(v6);
  return Mutable;
}

uint64_t sub_5D94(uint64_t a1)
{
  if (*a1 == 2)
  {
    if (!pthread_create((a1 + 248), 0, sub_AF4C, (a1 + 232)))
    {
      return 1;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create recorder thread: error=%d\n");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): recorder thread is only used for engine chassis\n");
  }

  return 0;
}

void sub_5E20(intptr_t result)
{
  if (*(result + 232))
  {
    if (*result == 1)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): MONITOR should activate rather than wake the recorder\n", "checkpoint_recorder_chassis_wake");
    }

    else
    {
      dispatch_semaphore_signal(*(result + 336));
    }

    *(result + 232) = 0;
  }
}

void sub_5E88(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_unlock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_yield");
  }
}

void checkpoint_engine_set_crash_handler(uint64_t result, uint64_t a2)
{
  v2 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 128) = result;
      *(v2 + 136) = a2;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v5 = *v2;
      *(v2 + 128) = result;
      *(v2 + 136) = a2;
      if (v5 != 1)
      {

        pthread_mutex_unlock((v2 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set crash handler called with a null chassis\n", "checkpoint_engine_set_crash_handler");
  }
}

void checkpoint_engine_set_checkpoint_status_handler(uint64_t result, uint64_t a2)
{
  v2 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 144) = result;
      *(v2 + 152) = a2;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v5 = *v2;
      *(v2 + 144) = result;
      *(v2 + 152) = a2;
      if (v5 != 1)
      {

        pthread_mutex_unlock((v2 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set status handler called with a null chassis\n", "checkpoint_engine_set_checkpoint_status_handler");
  }
}

void checkpoint_engine_set_supports_async_operations(char a1)
{
  v1 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 160) = a1;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v3 = *v1;
      *(v1 + 160) = a1;
      if (v3 != 1)
      {
        pthread_mutex_unlock((v1 + 8));
      }
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Async support set to: %s\n");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set supports async called with a null chassis\n");
  }
}

void checkpoint_engine_recorder_path(char *__src)
{
  v1 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*(qword_1C6478 + 88) != 3)
    {
      if (*qword_1C6478 != 1)
      {
        pthread_mutex_lock((qword_1C6478 + 8));
      }

      sub_3540(v1, __src);
      sub_5E20(v1);
      if (__src)
      {
        strncpy((v1 + 688), __src, 0x80uLL);
        if (*(v1 + 832))
        {
          sub_B3CC(v1);
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): NULL storage path\n", "checkpoint_storage_path");
      }

      if (*v1 != 1)
      {

        pthread_mutex_unlock((v1 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", "checkpoint_engine_recorder_path");
  }
}

void checkpoint_engine_free(uint64_t a1)
{
  sub_5AA8(qword_1C6478);
  sub_5C10(a1);
  v2 = qword_1C6478;

  sub_5E88(v2);
}

void checkpoint_engine_perform(uint64_t *a1, unsigned int *a2, int *a3, __CFError **a4)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", "checkpoint_engine_perform");
    return;
  }

  v5 = a2;
  a1[2] = a2;
  sub_5AA8(qword_1C6478);
  v7 = qword_1C6478;
  if (*(qword_1C6478 + 88) != 2)
  {
    *a1 = *(qword_1C6478 + 192);
    *(v7 + 192) = a1;
  }

  if (*v7 != 1)
  {
    pthread_mutex_unlock((v7 + 8));
  }

  v8 = sub_7264();
  p_tv_sec = &v8->tv_sec;
  if (*(a1 + 48))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine within step\n", "checkpoint_engine_perform");
    goto LABEL_18;
  }

  v10 = a3;
  v81 = a1[1];
  v82 = v8;
  if (!v5 || !a3 || !a4)
  {
    ramrod_log_msg("Missing required parameters for Checkpoint Engine step execution: steps=%p, result=%p, error=%p\n", v5, a3, a4);
    goto LABEL_16;
  }

  if (!*(v5 + 1))
  {
    ramrod_log_msg("No steps to process for Checkpoint Engine %d.\n", *(a1 + 6));
    *a3 = 0;
    goto LABEL_16;
  }

  v83 = *a3;
  v84 = a4;
  do
  {
    v86 = 0;
    v15 = 0;
    v88 = 0;
    v16 = 0;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    *(a1 + 26) = 0;
    while (1)
    {
      sub_5AA8(a1[1]);
      v17 = a1[1];
      v18 = *(v17 + 176);
      if (v18)
      {
        v19 = *(v17 + 168);
        if (v19)
        {
          sub_7588(a1, v18, v19, *(v17 + 184));
LABEL_196:
          sub_5E88(a1[1]);
          goto LABEL_199;
        }
      }

      if (*v17 != 1)
      {
        pthread_mutex_unlock((v17 + 8));
        v17 = a1[1];
      }

      sub_5AA8(v17);
      v20 = sub_3680(a1[1], 3, *(a1 + 6), *(a1 + 7), *v5, *(v5 + 1), v15, 0, 0);
      sub_2F64(a1[1]);
      if (v5[9])
      {
        v21 = a1[1];
        *(v21 + 832) = 1;
        if (!*(v21 + 833) && *(v21 + 688))
        {
          sub_B3CC(v21);
          v21 = a1[1];
        }

        if (*(v21 + 104))
        {
          v22 = sub_B060(*(v21 + 2432), *v5);
          if (!*(v5 + 24) && v22 && *(v22 + 8) == 1 && !*(v22 + 4))
          {
            sub_B0F8(a1[1], v20);
            v16 = 1;
            goto LABEL_196;
          }
        }
      }

      v23 = a1[1];
      v24 = *(v23 + 160);
      sub_5E88(v23);
      BYTE9(v91) = 0;
      *&v89 = v5;
      v25 = a1[1];
      v26 = *(v25 + 144);
      if (v26)
      {
        v26(*(v25 + 152), &v89);
        v25 = a1[1];
      }

      v27 = *(a1 + 26) != 0;
      a1[7] = v5;
      qword_1C6490 = (a1 + 7);
      *(a1 + 48) = 1;
      if (sub_8138(v25, v5, 1u, v10, a4))
      {
        if (*(v5 + 10))
        {
          if (!*(v5 + 88))
          {
            if (!v24)
            {
              ramrod_log_msg("skipping %s for now because async checkpoints are disabled.\n", *(v5 + 1));
              [*(v5 + 10) setCheckpoint_closure_context:sub_B230(a1)];
              if ([*(v5 + 10) awaitDescription])
              {
                sub_B328([*(v5 + 10) checkpoint_closure_context], objc_msgSend(*(v5 + 10), "awaitDescription"));
              }

              v33 = 0;
              v28 = 0;
              goto LABEL_133;
            }

            ramrod_log_msg("running %s in the background.\n", *(v5 + 1));
            v38 = sub_B230(a1);
            if ([*(v5 + 10) awaitDescription])
            {
              *&v39 = sub_B328(v38, [*(v5 + 10) awaitDescription]).n128_u64[0];
            }

            [*(v5 + 10) runForCheckpoint:{v38, v39}];
            v33 = 0;
            v28 = 0;
LABEL_80:
            if (*(v5 + 10))
            {
              if (!v28)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

LABEL_133:
            LODWORD(v86) = sub_8138(a1[1], v5, 0, v10, a4);
            if (!v28)
            {
LABEL_83:
              if (v33)
              {
                free(v33);
              }

              goto LABEL_85;
            }

LABEL_82:
            free(v28);
            goto LABEL_83;
          }

          if (v5[7])
          {
            sub_D586C(v5 + 1);
          }

          v28 = sub_7264();
          if (v24)
          {
            BYTE8(v91) = 1;
            v29 = a1[1];
            v30 = *(v29 + 144);
            if (v30)
            {
              v30(*(v29 + 152), &v89);
            }

            ramrod_log_msg("waiting for %s.\n", *(v5 + 1));
            v31 = v5[23];
            if (v31 == -1)
            {
              v32 = -1;
            }

            else
            {
              v32 = dispatch_time(0, 1000000000 * v31);
            }

            if ([*(v5 + 10) waitUntilTime:v32])
            {
              *v10 = [*(v5 + 10) result];
              *a4 = [*(v5 + 10) error];
              v42 = [*(v5 + 10) checkpoint_closure_context];
              [*(v5 + 10) setCheckpoint_closure_context:0];
              v43 = sub_5CCC(a1[5], *(*v42 + 1));
              if (v43)
              {
                sub_D56C8(v43, v42[7], v42[8], *(v42 + 72));
              }

              sub_B13C(a1 + 72, (v42 + 2));
              sub_B1C0(v42);
            }

            else
            {
              *v10 = -1;
              *a4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
            }

            BYTE8(v91) = 0;
          }

          else
          {
            ramrod_log_msg("running %s in the foreground.\n", *(v5 + 1));
            v40 = [*(v5 + 10) checkpoint_closure_context];
            [*(v5 + 10) runSynchronousForCheckpoint:v40];
            v41 = sub_5CCC(a1[5], *(*v40 + 1));
            if (v41)
            {
              v72 = v41;
              CFDictionarySetValue(v41, kCheckpointEngineStatsCheckpointIsForcedSyncCheckpoint[0], kCFBooleanTrue);
              sub_D56C8(v72, v40[7], v40[8], *(v40 + 72));
            }

            *v10 = [*(v5 + 10) result];
            *a4 = [*(v5 + 10) error];
            [*(v5 + 10) setCheckpoint_closure_context:0];
            sub_B13C(a1 + 72, (v40 + 2));
            sub_B1C0(v40);
          }

          v44 = *(v5 + 2);
          if (v44)
          {
            (*(v44 + 16))();
          }

          *(v5 + 10) = 0;
          v33 = sub_7264();
          v45 = sub_5CCC(a1[5], *(v5 + 1));
          if (!v45)
          {
LABEL_79:
            if (!v24)
            {
              goto LABEL_133;
            }

            goto LABEL_80;
          }

          v64 = v45;
          CFDictionarySetValue(v45, kCheckpointEngineStatsCheckpointIsAsyncAwait, kCFBooleanTrue);
          v34 = v64;
          v35 = &v28->tv_sec;
          v36 = &v33->tv_sec;
          v37 = 0;
        }

        else
        {
          v28 = sub_7264();
          (*(*(v5 + 2) + 16))();
          v33 = sub_7264();
          v34 = sub_5CCC(a1[5], *(v5 + 1));
          if (!v34)
          {
            goto LABEL_79;
          }

          v35 = &v28->tv_sec;
          v36 = &v33->tv_sec;
          v37 = v27;
        }

        sub_D56C8(v34, v35, v36, v37);
        if (!v24)
        {
          goto LABEL_133;
        }

        goto LABEL_80;
      }

LABEL_85:
      *(a1 + 48) = 0;
      qword_1C6490 = 0;
      a1[7] = 0;
      sub_5AA8(a1[1]);
      if (*(a1 + 137))
      {
        *v10 = -1;
        *(a1 + 75) = 0;
        if (*a4)
        {
          CFRelease(*a4);
          *a4 = 0;
        }

        *a4 = CFErrorCreate(kCFAllocatorDefault, @"CheckpointEngineErrorDomain", 1, 0);
      }

      v47 = a1[10];
      if (v47)
      {
        if (v20)
        {
          sub_3680(a1[1], 31, *(v20 + 12), *(v20 + 13), *(v20 + 14), v47, *(v20 + 18), 0, 0);
          v47 = a1[10];
        }

        a1[10] = 0;
      }

      v48 = a1[11];
      if (v48)
      {
        if (v20)
        {
          sub_3680(a1[1], 6, *(v20 + 12), *(v20 + 13), *(v20 + 14), v48, *(v20 + 18), 0, 0);
        }

        warnx("%s", v48);
        v49 = a1[11];
        a1[11] = 0;
      }

      else
      {
        v49 = 0;
      }

      if (*(a1 + 75))
      {
        *(a1 + 75) = 0;
        v88 = 1;
      }

      v87 = v24;
      if (*(a1 + 76))
      {
        *(a1 + 76) = 0;
        if (*v10)
        {
          sub_4774(a1[1], v46, "Disabled step %s failed", *(v5 + 1));
        }

        HIDWORD(v86) = 1;
LABEL_102:
        sub_B0F8(a1[1], v20);
LABEL_103:
        v50 = 0;
        v16 = 1;
        goto LABEL_104;
      }

      if (HIDWORD(v86))
      {
        goto LABEL_102;
      }

      if (!*v10)
      {
        if (v20)
        {
          sub_3680(a1[1], 5, *(v20 + 12), *(v20 + 13), *(v20 + 14), v20[8], *(v20 + 18), 0, 0);
        }

        HIDWORD(v86) = 0;
        goto LABEL_103;
      }

      if (v15 >= v5[7] || v88 || v86)
      {
        if (sub_74A4(a1[1], v5))
        {
          if (v20)
          {
            sub_3680(a1[1], 32, *(v20 + 12), *(v20 + 13), *(v20 + 14), v20[8], *(v20 + 18), *v10, *a4);
          }
        }

        else
        {
          sub_B384(a1[1], v20, *v10, *a4);
        }
      }

      else
      {
        if (v20)
        {
          sub_3680(a1[1], 4, *(v20 + 12), *(v20 + 13), *(v20 + 14), v20[8], *(v20 + 18), *v10, *a4);
        }

        *v10 = v83;
      }

      v63 = a1[1];
      v50 = 1;
      if (*(v63 + 846))
      {
        HIDWORD(v86) = 0;
        v16 = 0;
      }

      else
      {
        *(v63 + 1632) = 1;
        *(v63 + 1640) = "first failure";
        sub_2668(v63, 1, 0);
        HIDWORD(v86) = 0;
        v16 = 0;
        *(v63 + 846) = 1;
      }

LABEL_104:
      v51 = a1[1];
      v52 = *(a1 + 72);
      if (*(a1 + 72))
      {
        *(v51 + 2449) = 0;
      }

      v53 = v52 | v50;
      if (v52 | v50 || !*(v51 + 852))
      {
        v54 = v52 == 0;
        v55 = *(v51 + 844);
        if (v53)
        {
          v55 = 1;
        }

        sub_2668(v51, v55, v54);
        *(a1 + 72) = 0;
      }

      v10 = a3;
      if (*(a1 + 73))
      {
        if (sub_2668(v51, 1, 0))
        {
          if (*(v51 + 101))
          {
            v57 = v51;
            if (*(v51 + 104))
            {
              v58 = 4;
LABEL_159:
              sub_4814(v57, v58);
              *(v51 + 1632) = 1;
              *(v51 + 1640) = "point-of-no-return";
              goto LABEL_160;
            }

            sub_4774(v51, v56, "[step_access]already_crossed_PoNR_not_rebootRetry");
          }

          else
          {
            if (!*(v51 + 104))
            {
              *(v51 + 101) = 1;
              v59 = *(v51 + 96);
              if (v59 < 0x22)
              {
                v60 = &dword_109EC8[3 * v59];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", *(v51 + 96));
                v60 = dword_109EC8;
              }

              if (*(v60 + 6))
              {
                if (*(v51 + 100))
                {
                  sub_5080(v51, 7u, "true");
                  sub_5080(v51, 3u, "true");
                  sub_5080(v51, 2u, "upgrade");
                  sub_5080(v51, 1u, "true");
                  v58 = 10;
                }

                else
                {
                  sub_5080(v51, 1u, "false");
                  v58 = 11;
                }
              }

              else
              {
                v61 = *(v51 + 96);
                v62 = "unknown";
                if (v61 <= 0x21)
                {
                  v62 = off_1A8C48[v61];
                }

                sub_4774(v51, v56, "[step_access]outcome=%s(crossing_PoNR_initial_attempt)", v62);
                v58 = 4;
              }

              v57 = v51;
              goto LABEL_159;
            }

            sub_4774(v51, v56, "[step_access]crossing_PoNR_initial_attempt_rebootRetry");
          }
        }

        else
        {
          sub_4774(v51, v56, "[step_access]crossed_PoNR_when_NVRAM_not_available");
        }

LABEL_160:
        *(a1 + 73) = 0;
      }

      if (*(a1 + 74))
      {
        if (sub_2668(v51, 1, 0))
        {
          if (*(v51 + 102))
          {
            sub_4774(v51, v65, "[step_access]already_crossed_PoFF");
          }

          else
          {
            *(v51 + 102) = 1;
            sub_4E24(v51, 3u, 1, 0);
            sub_4E24(v51, 7u, 0, 0);
            sub_4E24(v51, 2u, 1, 0);
            sub_5080(v51, 1u, "true");
            sync();
            sub_5B04(v51);
            sub_4814(v51, 5);
            *(v51 + 1632) = 1;
            a4 = v84;
            *(v51 + 1640) = "point-of-fail-forward";
          }
        }

        else
        {
          sub_4774(v51, v65, "[step_access]crossed_PoFF_when_NVRAM_not_available");
        }

        *(a1 + 74) = 0;
      }

      if (v88)
      {
        if (!v20)
        {
          if (!*(a1 + 77))
          {
            goto LABEL_176;
          }

          goto LABEL_175;
        }

        sub_3680(a1[1], 8, *(v20 + 12), *(v20 + 13), *(v20 + 14), v20[8], *(v20 + 18), 0, 0);
      }

      if (!*(a1 + 77))
      {
        goto LABEL_176;
      }

      if (v20)
      {
        sub_3680(a1[1], 26, *(v20 + 12), *(v20 + 13), *(v20 + 14), v20[8], *(v20 + 18), 0, 0);
      }

LABEL_175:
      v66 = a1[1];
      *(v66 + 118) = 1;
      sub_5080(v66, 0x22u, "SHUTDOWN");
      *(a1 + 77) = 0;
LABEL_176:
      sub_2F64(a1[1]);
      BYTE9(v91) = 1;
      v67 = *a4;
      DWORD2(v89) = *a3;
      *&v90 = v67;
      *(&v90 + 1) = v49;
      *&v91 = v47;
      v68 = a1[1];
      v69 = *(v68 + 144);
      if (v69)
      {
        v69(*(v68 + 152), &v89);
        v68 = a1[1];
      }

      sub_5E88(v68);
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      if (v49)
      {
        free(v49);
      }

      if (v47)
      {
        free(v47);
      }

      *(a1 + 26) = v15 + 1;
      v70 = v88 ? 1 : v16;
      if ((v70 & 1) == 0)
      {
        break;
      }

      v71 = v16 ^ 1;
      if (!v86)
      {
        v71 = 1;
      }

      if (v71)
      {
        goto LABEL_199;
      }

      if (v87 && *(v5 + 10))
      {
        v16 = 1;
        goto LABEL_199;
      }

      v16 = 1;
      if (!sub_87AC(a1[1], v5))
      {
        goto LABEL_199;
      }

LABEL_194:
      ++v15;
    }

    v16 = 0;
    if (v15 < v5[7])
    {
      goto LABEL_194;
    }

    v88 = 0;
LABEL_199:
    if (!HIDWORD(v86) && (v5[9] & 3) != 0)
    {
      if (v16)
      {
        if (sub_74A4(a1[1], v5))
        {
          ramrod_log_msg("Tolerated step 0x%x has actually succeeded. Marking it as such\n", *v5);
          v80 = a1[1];
          sub_5AA8(v80);
          sub_CB48(v80, v5, 0, *a4);
          goto LABEL_219;
        }

        v16 = 1;
      }

      else if (v88)
      {
        v16 = 0;
      }

      else
      {
        v80 = a1[1];
        sub_5AA8(v80);
        if (sub_74A4(v80, v5))
        {
          sub_CB48(v80, v5, *v10, *a4);
          *v10 = 0;
          if (*a4)
          {
            CFRelease(*a4);
            *a4 = 0;
          }

LABEL_219:
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        sub_5E88(v80);
      }
    }

    sub_5AA8(a1[1]);
    v73 = a1[18];
    if (v73)
    {
      if (*a4)
      {
        CFRelease(*a4);
        *a4 = 0;
        v73 = a1[18];
      }

      *a4 = CFRetain(v73);
      *v10 = *(a1 + 38);
      v74 = a1[20];
      if (v74)
      {
        v75 = sub_3680(a1[1], 3, *(a1 + 6), *(a1 + 7), *v74, *(v74 + 8), 0, 0, 0);
        sub_B384(a1[1], v75, *v10, *a4);
      }

      v76 = a1[1];
      if (v16 && !*(v76 + 846))
      {
        *(v76 + 1632) = 1;
        *(v76 + 1640) = "first failure";
        sub_2668(v76, 1, 0);
        *(v76 + 846) = 1;
        a4 = v84;
        v76 = a1[1];
      }

      *&v89 = a1[20];
      WORD4(v91) = 256;
      v90 = *a4;
      DWORD2(v89) = *v10;
      *&v91 = 0;
      v77 = *(v76 + 144);
      if (v77)
      {
        v77(*(v76 + 152), &v89);
      }

      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      sub_7588(a1, 0, 0, 0);
      v16 = 0;
    }

    sub_5E88(a1[1]);
    if (v88)
    {
      break;
    }

    v78 = a1[1];
    sub_5AA8(v78);
    sub_BCB8((v78 + 172), (v78 + 608));
    sub_5E88(v78);
    if (!v16)
    {
      break;
    }

    v79 = *(v5 + 13);
    v5 += 24;
  }

  while (v79);
LABEL_16:
  *(a1 + 136) = 1;
  p_tv_sec = &v82->tv_sec;
  if (v81[22] != 3)
  {
    sub_5AA8(v81);
    sub_5E20(v81);
    sub_5E88(v81);
  }

LABEL_18:
  v11 = sub_7264();
  sub_D56C8(a1[5], p_tv_sec, &v11->tv_sec, 0);
  sub_5AA8(qword_1C6478);
  v12 = qword_1C6478;
  if (*(qword_1C6478 + 88) != 2)
  {
    if (*(qword_1C6478 + 192) != a1)
    {
      sub_D5894();
    }

    v13 = *a1;
    if (*a1)
    {
      if (!*(v13 + 152) && !*(v13 + 144))
      {
        sub_7588(v13, *(a1 + 38), a1[18], a1[20]);
      }
    }

    else
    {
      v14 = a1[1];
      if (!*(v14 + 176) && !*(v14 + 168))
      {
        sub_7694(v14, *(a1 + 38), a1[18], a1[20]);
      }
    }

    v12 = qword_1C6478;
    *(qword_1C6478 + 192) = *a1;
  }

  if (*v12 != 1)
  {
    pthread_mutex_unlock((v12 + 8));
  }

  a1[2] = 0;
  if (p_tv_sec)
  {
    free(p_tv_sec);
  }

  if (v11)
  {
    free(v11);
  }
}

timeval *sub_7264()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = sub_7264();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = sub_7264();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(_DWORD *result, uint64_t a2, __CFError *a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = qword_1C6478;
    if (!sub_744C(a3))
    {
      v7 = *(result + 1);
      if (!v7 || (*(v7 + 36) & 3) == 0 || !sub_74A4(v6, v7))
      {
        sub_5AA8(v6);
        v8 = (v6 + 48);
        v9 = (v6 + 48);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (*(v9 + 32) == result[19])
          {
            goto LABEL_12;
          }
        }

        v9 = *v8;
        if (!*v8)
        {
          sub_7694(v6, v4, a3, *(result + 1));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v9 + 144) && !*(v9 + 137))
        {
          sub_7588(v9, v4, a3, *(result + 1));
          for (i = *v8; i != v9; i = *i)
          {
            sub_7630(i);
          }

          sub_7630(v9);
        }

LABEL_19:

        sub_5E88(v6);
      }
    }
  }
}

__CFError *sub_744C(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_74A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1136);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = v7 == 1 && (!should_do_legacy_restored_internal_behaviors || v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        v16 = sub_B060(*(a1 + 2432), v15);
        if (v16 && (!*(a1 + 104) || *(v16 + 48) == 1 && *(v16 + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 sub_7588(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_744C(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_D58C0();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *sub_7630(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 sub_7694(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_744C(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_D58EC();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void checkpoint_engine_notice(int a1, int a2, const char *a3)
{
  v3 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 != 1)
    {
      pthread_mutex_lock((qword_1C6478 + 8));
    }

    sub_3680(v3, 2, a1, a2, 260, a3, 0, 0, 0);
    sub_2F64(v3);
    if (*(v3 + 88) != 3)
    {
      sub_5E20(v3);
    }

    if (*v3 != 1)
    {

      pthread_mutex_unlock((v3 + 8));
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", "checkpoint_engine_notice");
  }
}

uint64_t checkpoint_engine_finished_result(uint64_t a1)
{
  v2 = qword_1C6478;
  if (qword_1C6478)
  {
    sub_5AA8(qword_1C6478);
    if (!a1)
    {
      if (*(v2 + 88) == 2 && !*(v2 + 104))
      {
        if (*(v2 + 2446) == 1)
        {
          a1 = 4294967294;
        }

        else
        {
          a1 = 0;
        }
      }

      else
      {
        a1 = 0;
      }
    }

    sub_3680(v2, 27, 1, 0, 0, "FINISHED", 0, a1, 0);
    *(v2 + 1632) = 1;
    *(v2 + 1640) = "engine process terminating";
    if (a1)
    {
      sub_4814(v2, 13);
      if (!*(v2 + 101))
      {
        sub_5B04(v2);
      }
    }

    else
    {
      if (*(v2 + 105))
      {
        v3 = 9;
      }

      else
      {
        v3 = 8;
      }

      sub_4814(v2, v3);
      sub_5B04(v2);
      if (*(v2 + 88) == 2 && *(v2 + 101))
      {
        sub_4E24(v2, 2u, 1, 0);
        sub_4E24(v2, 3u, 1, 0);
        sub_4E24(v2, 7u, 0, 0);
        sub_5080(v2, 1u, "true");
        sync();
      }
    }

    sub_2F64(v2);
    if (*(v2 + 88) != 3)
    {
      sub_5250(v2);
      sub_5E20(v2);
    }

    if (*(v2 + 2464))
    {
      ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): Freeing simulator data\n", "checkpoint_engine_finished_result");
      v4 = *(v2 + 2464);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 2464) = 0;
      }
    }

    sub_5E88(v2);
    if (*(v2 + 88) != 3)
    {
      dispatch_semaphore_wait(*(v2 + 344), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", "checkpoint_engine_finished_result");
  }

  return a1;
}

__CFError *checkpoint_status_copy_error_string(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = sub_7A84(result);
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_7A84(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = sub_90E4(v2, "[%d]", v3);
    if (!v4)
    {
      break;
    }

    v16 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v6 = sub_CD10(v2, "RS", Value, &v16);
    v7 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v8 = sub_CD10(v6, "LD", v7, &v16);
    v9 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v10 = sub_CD10(v8, "D", v9, &v16);
    v11 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = sub_CD10(v10, "FR", v11, &v16);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v13 = strlen(v2);
  if (v13 >= 0xF3)
  {
    v15 = 0;
    asprintf(&v15, "%s", &v2[v13 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v15;
  }

  return v2;
}

CFStringRef checkpoint_status_copy_warning_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

CFStringRef checkpoint_status_copy_info_string(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t *checkpoint_closure_context_tolerated_treat_as_success(uint64_t *result)
{
  if (result)
  {
    return sub_74A4(qword_1C6478, *result);
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_reboot_retry()
{
  if (qword_1C6478)
  {
    return *(qword_1C6478 + 104);
  }

  else
  {
    return 0;
  }
}

void checkpoint_closure_context_info(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9[0] = 0;
  va_copy(&v9[1], va);
  vasprintf(v9, a2, va);
  if (v9[0])
  {
    if (a1)
    {
      if (!*(a1 + 24))
      {
        *(a1 + 24) = v9[0];
        return;
      }

      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step info\n");
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): NULL checkpoint context\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate info message\n");
  }

  if (v9[0])
  {
    free(v9[0]);
  }
}

void checkpoint_closure_context_warning(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9[0] = 0;
  va_copy(&v9[1], va);
  vasprintf(v9, a2, va);
  if (v9[0])
  {
    if (a1)
    {
      if (!*(a1 + 32))
      {
        *(a1 + 32) = v9[0];
        return;
      }

      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step warning\n");
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): NULL checkpoint context\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate warning message\n");
  }

  if (v9[0])
  {
    free(v9[0]);
  }
}

void checkpoint_closure_context_shutdown(char **a1, const char *a2)
{
  if (a1)
  {
    v3 = a1 + 5;
    v2 = a1[5];
    *(a1 + 21) = 1;
    if (v2)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional shutdown message\n", a2);
    }

    else
    {
      asprintf(a1 + 5, "%s", a2);
      if (!*v3)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate shutdown message\n", v4);
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Checkpoint context == NULL\n", a2);
  }
}

void checkpoint_closure_context_cross_point_of_no_return(uint64_t result)
{
  if (result)
  {
    *(result + 17) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", "checkpoint_closure_context_cross_point_of_no_return");
  }
}

void checkpoint_closure_context_cross_point_of_fail_forward(uint64_t result)
{
  if (result)
  {
    *(result + 18) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", "checkpoint_closure_context_cross_point_of_fail_forward");
  }
}

uint64_t checkpoint_closure_context_get_immediate_retry_attempt_number(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", "checkpoint_closure_context_get_immediate_retry_attempt_number");
  return 0;
}

BOOL checkpoint_closure_context_is_async(uint64_t a1)
{
  if (a1)
  {
    return *(*a1 + 80) && *(qword_1C6478 + 160) == 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", "checkpoint_closure_context_is_async");
    return 0;
  }
}

void checkpoint_closure_context_step_disabled(uint64_t result)
{
  if (result)
  {
    *(result + 20) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", "checkpoint_closure_context_step_disabled");
  }
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2);
    return a2;
  }

  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3);
    return a2;
  }

  v5 = *a1;
  v6 = qword_1C6478;

  return sub_8138(v6, v5, a2, a3, a4);
}

uint64_t sub_8138(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, __CFError **a5)
{
  if (a5 && sub_744C(*a5))
  {
    return 0;
  }

  v11 = a3;
  sub_5AA8(a1);
  sub_CDE4(a1);
  if (!*(a1 + 2452) || !*(a1 + 2464))
  {
    goto LABEL_17;
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2464));
  if (Count < 1)
  {
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2464), 0);
  if (CFStringCompare(v12, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v20 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v12);
    goto LABEL_13;
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14 == v16)
    {
      break;
    }

    v18 = CFArrayGetValueAtIndex(*(a1 + 2464), v16);
    v19 = CFStringCompare(v12, v18, 0);
    v16 = v17 + 1;
  }

  while (v19);
  v20 = v17 < v14;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v20)
  {
    v21 = *(a1 + 2460);
    if (!v21)
    {
      if (a3)
      {
        sub_3680(a1, *(a1 + 2452), 1, 0, *a2, *(a2 + 8), *(a1 + 2456), *a4, *a5);
      }

      sub_5E88(a1);
      v26 = 0;
      v22 = 0;
      switch(*(a1 + 2452))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2451) == a3)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v23, v24, v25, v35);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2451) == a3)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2451) == a3)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2451) == a3)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2451) == a3)
          {
            for (i = 0; ; ++i)
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", "checkpoint_simulator_action", i, *i);
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2451) == a3)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2451) == a3)
          {
            memset(&v37, 0, sizeof(v37));
            v36.__sig = 0;
            *v36.__opaque = 0;
            pthread_mutexattr_init(&v36);
            pthread_mutex_init(&v37, &v36);
            pthread_mutex_lock(&v37);
            pthread_mutex_lock(&v37);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2451) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2451) != a3)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2451) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 4096;
LABEL_72:
          host_reboot(v30, v31);
LABEL_73:
          v22 = 0;
LABEL_74:
          v26 = a3;
LABEL_75:
          if (!a3)
          {
            goto LABEL_77;
          }

          v11 = v26;
          if (!v26)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v22 = a3 == 0;
          goto LABEL_74;
        case 0x17:
          v22 = 0;
          if (*(a1 + 2451) == a3)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          if (a3 || *(a1 + 2451))
          {
            goto LABEL_75;
          }

          if (*a4)
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", "checkpoint_simulator_action", *(a2 + 8), *a4);
            *a4 = 0;
            if (*a5)
            {
              v28 = sub_7A84(*a5);
              if (v28)
              {
                v29 = v28;
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", "checkpoint_simulator_action", *(a2 + 8), v28);
                free(v29);
              }

              CFRelease(*a5);
              v26 = 0;
              v22 = 0;
              *a5 = 0;
LABEL_77:
              v33 = *(a1 + 2456);
              if (v33)
              {
                v34 = v33 - 1;
                *(a1 + 2456) = v34;
                if (!v34)
                {
                  *(a1 + 2452) = 0;
                }
              }

              v11 = v26;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", "checkpoint_simulator_action", *(a2 + 8));
          }

          v26 = 0;
          v22 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2451) == a3)
          {
            sub_D018();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2451) == a3)
          {
            v27 = fork();
            if (v27 < 1)
            {
              if (!v27)
              {
                sub_D018();
                exit(0);
              }

              __error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n");
            }

            else
            {
              LODWORD(v37.__sig) = 0;
              if (waitpid(v27, &v37, 0) < 0)
              {
                __error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n");
              }

              else if ((v37.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n");
              }

              else if ((v37.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", "checkpoint_simulator_action");
          v22 = 0;
          v26 = 1;
          goto LABEL_75;
      }
    }

    if (!a3)
    {
      *(a1 + 2460) = v21 - 1;
    }
  }

LABEL_17:
  sub_5E88(a1);
  v22 = 0;
LABEL_18:
  if (a3)
  {
    return v11;
  }

  else
  {
    return v22;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n");
    return 0;
  }

  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n");
    return 0;
  }

  v1 = *a1;
  v2 = qword_1C6478;

  return sub_87AC(v2, v1);
}

uint64_t sub_87AC(uint64_t a1, uint64_t a2)
{
  sub_5AA8(a1);
  sub_CDE4(a1);
  if (*(a1 + 2452))
  {
    Count = CFArrayGetCount(*(a1 + 2464));
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2464), v6);
        if (CFStringCompare(v5, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 1;
    }

    sub_5E88(a1);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    sub_5E88(a1);
    return 0;
  }

  return v8;
}

uint64_t checkpoint_closure_get_step_desc(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      return *(a1 + 56);
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }

  return 0;
}

BOOL checkpoint_closure_supports_reboot_retry(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      return *(v1 + 88) == 2;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine without chassis\n");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }

  return 0;
}

uint64_t checkpoint_closure_is_reboot_retry(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      return *(*(a1 + 8) + 104);
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }

  return 0;
}

void checkpoint_closure_nvram_available(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      *(result + 72) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

void checkpoint_closure_point_of_no_return(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      *(result + 73) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

void checkpoint_closure_point_of_fail_forward(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      *(result + 74) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

uint64_t checkpoint_closure_cross_fail_forward_or_die(uint64_t a1)
{
  if (a1)
  {
    if (checkpoint_would_reboot_retry())
    {
      if (qword_1C6478)
      {
        if (*(qword_1C6478 + 2446))
        {
          return 4294967294;
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", "checkpoint_engine_hit_tolerated_failure");
      }
    }

    if (*(a1 + 48))
    {
      result = 0;
      *(a1 + 74) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", "checkpoint_closure_point_of_fail_forward");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", "checkpoint_closure_cross_fail_forward_or_die");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void checkpoint_closure_partition_mounted(uint64_t result)
{
  if (!result)
  {
    v1 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
LABEL_6:
    ramrod_log_msg(v1, "checkpoint_closure_partition_mounted");
    return;
  }

  if (!*(result + 48))
  {
    v1 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
    goto LABEL_6;
  }
}

void checkpoint_closure_partition_unmounting(uint64_t result)
{
  if (!result)
  {
    v1 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
LABEL_6:
    ramrod_log_msg(v1, "checkpoint_closure_partition_unmounting");
    return;
  }

  if (!*(result + 48))
  {
    v1 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
    goto LABEL_6;
  }
}

void checkpoint_closure_terminate(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      *(result + 75) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

void checkpoint_closure_info(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9[0] = 0;
  va_copy(&v9[1], va);
  vasprintf(v9, a2, va);
  if (v9[0])
  {
    if (a1)
    {
      if (*(a1 + 48))
      {
        if (!*(a1 + 80))
        {
          *(a1 + 80) = v9[0];
          return;
        }

        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step info\n");
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate info message\n");
  }

  if (v9[0])
  {
    free(v9[0]);
  }
}

void checkpoint_closure_warning(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9[0] = 0;
  va_copy(&v9[1], va);
  vasprintf(v9, a2, va);
  if (v9[0])
  {
    if (a1)
    {
      if (*(a1 + 48))
      {
        if (!*(a1 + 88))
        {
          *(a1 + 88) = v9[0];
          return;
        }

        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step warning\n");
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate warning message\n");
  }

  if (v9[0])
  {
    free(v9[0]);
  }
}

void checkpoint_closure_shutdown(char **a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v3 = a1 + 12;
      v2 = a1[12];
      *(a1 + 77) = 1;
      if (v2)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional shutdown message\n", a2);
      }

      else
      {
        asprintf(v3, "%s", a2);
        if (!*v3)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate shutdown message\n", v4);
        }
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2);
  }
}

void checkpoint_closure_step_disabled(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      *(result + 76) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n");
  }
}

void checkpoint_recovered_clear(int a1)
{
  v2 = sub_2468();
  if (v2)
  {
    v3 = v2;
    *(v2 + 22) = a1;
    if (sub_2668(v2, 1, 1))
    {
      v4 = 0;
      v5 = &dword_1A83A8;
      do
      {
        v6 = *v5;
        v5 += 8;
        if ((v6 - 5) <= 0xFFFFFFFC)
        {
          sub_4E24(v3, v4, 0, 1);
        }

        ++v4;
      }

      while (v4 != 48);
    }

    checkpoint_engine_free(v3);
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate recover context\n", "checkpoint_recovered_clear");
  }
}

char *sub_8FF4(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *sub_90E4(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = 0;
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  if (!v5[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v5[0];
  }

  asprintf(&v4, "%s%s", a1, v5[0]);
  if (v4)
  {
    free(a1);
  }

  else
  {
    v4 = a1;
  }

  if (v5[0])
  {
    free(v5[0]);
    v5[0] = 0;
  }

  return v4;
}

char *sub_9184(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = sub_8FF4(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *sub_91FC(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = sub_8FF4(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void sub_9274(uint64_t a1, int a2)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v3 = 17;
        goto LABEL_14;
      }

      v4 = *(a1 + 101) == 0;
      v3 = 5;
    }

    else
    {
      v4 = *(a1 + 88) == 2;
      v3 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v3 = 19;
      goto LABEL_14;
    }

    v4 = *(a1 + 101) == 0;
    v3 = 7;
  }

  else
  {
    v4 = *(a1 + 88) == 2;
    v3 = 3;
  }

  if (!v4)
  {
    ++v3;
  }

LABEL_14:
  *(a1 + 96) = v3;
  sub_5080(a1, 5u, off_1A8C48[v3]);

  sub_9B34(a1, 1);
}

void sub_933C(int *a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v19, 0x400uLL);
  if (a3 < 0x30)
  {
    if (a1[22] == 1)
    {
      v9 = &off_1A8390[4 * a3];
    }

    else
    {
      v9 = &off_1A8390[4 * a3 + 1];
    }

    v10 = *v9;
    CFStringGetCString(*v9, buffer, 1024, 0x8000100u);
    v11 = ramrod_copy_NVRAM_variable(v10);
    if (!v11)
    {
      return;
    }

    v8 = v11;
    v12 = CFGetTypeID(v11);
    if (v12 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, v19, 1024, 0x8000100u);
      *a4 = v8;
      v8 = 0;
      goto LABEL_22;
    }

    if (v12 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v14 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v13)
      {
        v14 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v14, "checkpoint_nvram_collect_var", buffer);
        goto LABEL_3;
      }
    }

    else
    {
      if (v12 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n");
        goto LABEL_3;
      }

      v13 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
      if (!v13)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n");
        goto LABEL_3;
      }
    }

    v15 = v13;
    CFStringGetCString(v13, v19, 1024, 0x8000100u);
    *a4 = v15;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v16 = "Unknown";
    }

    else
    {
      v16 = off_1A8990[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v16, buffer, v19);
    if (valuePtr)
    {
      sub_3680(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n");
  v8 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t sub_9624(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      return 0;
    }

    else
    {
      return LODWORD(off_1A8390[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t sub_968C(int *a1, uint64_t a2, unsigned int *a3)
{
  memset(v23, 0, sizeof(v23));
  v4 = *a3;
  v5 = 1;
  v6 = 0;
  if (*a3)
  {
    v7 = 0;
    v20 = a2;
    v8 = a2 + 8;
    v9 = a3 + 2;
    do
    {
      *(v23 + v4) = 1;
      if (*(v8 + 8 * v4))
      {
        if (*(v9 - 3))
        {
          v6 = 1;
        }

        if (*(v9 - 2))
        {
          v7 = 1;
        }

        if (*(v9 - 1))
        {
          v10 = v4 <= 0x2F && (LODWORD(off_1A8390[4 * v4 + 3]) - 2) < 3;
          sub_4E24(a1, v4, v10, 1);
        }
      }

      else if (*(v9 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v4 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_get_nvram_name", v4);
          v4 = 0;
        }

        if (a1[22] == 1)
        {
          v11 = &off_1A8390[4 * v4];
        }

        else
        {
          v11 = &off_1A8390[4 * v4 + 1];
        }

        CFStringGetCString(*v11, buffer, 1024, 0x8000100u);
        sub_4774(a1, v12, "[check_collection]%s(does_not_exist)", buffer);
      }

      v13 = *v9;
      v9 += 2;
      v4 = v13;
    }

    while (v13);
    v5 = v7 == 0;
    a2 = v20;
  }

  v14 = 0;
  v15 = a2 + 16;
  v16 = off_1A83B0;
  do
  {
    if (!*(v23 + v14 + 1) && *(v15 + 8 * v14))
    {
      bzero(buffer, 0x400uLL);
      bzero(v21, 0x400uLL);
      if (a1[22] == 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = (v16 + 1);
      }

      CFStringGetCString(*v17, buffer, 1024, 0x8000100u);
      sub_4F28(*(v15 + 8 * v14), v21);
      sub_4774(a1, v18, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v21);
      sub_4E24(a1, v14 + 1, 0, 1);
    }

    ++v14;
    v16 += 4;
  }

  while (v14 != 47);
  if (!v5)
  {
    sub_3680(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v6;
}

void sub_9924(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    sub_4E24(a1, 2u, 1, 0);
  }
}

void sub_998C(uint64_t a1, const __CFString *a2)
{
  if (*(a1 + 100))
  {
    *(a1 + 104) = 1;
    *(a1 + 101) = 1;

    sub_5B04(a1);
  }

  else
  {
    bzero(v5, 0x400uLL);
    sub_4F28(a2, v5);
    sub_4774(a1, v4, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v5);
  }
}

void sub_9A70(const __CFString *a1, int a2)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable(a1, &cf);
  v4 = cf;
  if (cf)
  {
    if (!a2)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to delete NVRAM variable %s\n", "checkpoint_nvram_delete_var_raw", buffer);
      v4 = cf;
    }

    CFRelease(v4);
  }
}

void sub_9B34(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1A8C48[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_1A8C48[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", off_1A89A8[a2], v4, v6);
  if (v7)
  {
    sub_3680(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t sub_9BFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_9624(a1, a2);
  if (v3 > 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(off_1A8390[4 * v3 + 2]);
  }

  v5 = checkpoint_nvram_encoder[v4];
  v6 = *(a1 + 16 * v3 + 1672);

  return (v5)(a1, v6);
}

char *sub_9C6C(char *result)
{
  v1 = result;
  if (!*(result + 72))
  {
    v2 = *(result + 31);
    if (v2)
    {
      *(result + 72) = v2;
      *(result + 31) = 0;
    }
  }

  if (!*(result + 73))
  {
    v3 = *(result + 32);
    if (v3)
    {
      *(result + 73) = v3;
      *(result + 32) = 0;
    }
  }

  if (result[120])
  {
    if (result[296])
    {
      if (!result[132])
      {
        result[425] = 1;
      }
    }

    else if (result[132])
    {
      result = strncpy(result + 296, result + 132, 0x80uLL);
      v1[424] = 1;
    }

    v1[120] = 0;
  }

  return result;
}

uint64_t sub_9D00(uint64_t result)
{
  v1 = *(result + 264);
  if (v1)
  {
    v2 = (result + 264);
    v3 = *(result + 448);
    do
    {
      v4 = *v1;
      *v2 = *v1;
      if (!v4)
      {
        *(result + 272) = v2;
      }

      *v1 = 0;
      **(result + 440) = v1;
      *(result + 440) = v1;
      ++v3;
      v1 = *(result + 264);
    }

    while (v1);
    *(result + 448) = v3;
  }

  return result;
}

void sub_9D44(uint64_t a1)
{
  if (*(a1 + 424))
  {
    if (*(a1 + 427))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): file already open\n");
    }

    else if (*(a1 + 288) && *(a1 + 292) && *(a1 + 296))
    {
      v8 = 0;
      if (*(strlen((a1 + 296)) + a1 + 296 - 1) == 47)
      {
        asprintf(&v8, "%s%s");
      }

      else
      {
        asprintf(&v8, "%s/%s");
      }

      if (v8)
      {
        v7 = 0;
        v2 = *(a1 + 292);
        v3 = v2 == 2;
        if (v2 == 2)
        {
          v4 = "ota";
        }

        else
        {
          v4 = "restore";
        }

        v5 = "perform";
        if (v3)
        {
          v5 = "patch";
        }

        if (*(a1 + 288) == 1)
        {
          v5 = "monitor";
        }

        asprintf(&v7, "%s/%s_%s.%s", v8, v4, v5, "txt");
        if (v7)
        {
          mkdir(v8, 0x1FFu);
          v6 = open(v7, 521, 420);
          *(a1 + 428) = v6;
          if (v6 != -1)
          {
            *(a1 + 427) = 1;
          }

          if (v7)
          {
            free(v7);
          }
        }

        if (v8)
        {
          free(v8);
        }
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): not [fully] configured: providerType=%d, purpose=%d, path=%s\n");
    }

    *(a1 + 424) = 0;
  }

  else if (*(a1 + 425))
  {
    if (*(a1 + 427))
    {
      close(*(a1 + 428));
      *(a1 + 428) = -1;
      *(a1 + 427) = 0;
    }

    *(a1 + 425) = 0;
  }
}

void sub_9F08(uint64_t a1)
{
  v2 = (a1 + 432);
  v3 = *(a1 + 432);
  if (v3)
  {
    do
    {
      if (!*(a1 + 427))
      {
        break;
      }

      v4 = *v3;
      *v2 = *v3;
      if (!v4)
      {
        *(a1 + 440) = v2;
      }

      --*(a1 + 448);
      v5 = v3[1];
      if (v5)
      {
        v6 = strlen(v3[1]);
        if (v6)
        {
          for (i = 0; i != v6; ++i)
          {
            v8 = v3[1];
            if (*(v8 + i) == 10)
            {
              *(v8 + i) = 124;
            }
          }

          v5 = v3[1];
        }

        if ((!sub_A070(a1, v5) || !sub_A070(a1, "\n")) && *(a1 + 427))
        {
          close(*(a1 + 428));
          *(a1 + 428) = -1;
          *(a1 + 427) = 0;
        }

        v9 = v3[1];
        if (v9)
        {
          free(v9);
        }
      }

      free(v3);
      v3 = *v2;
    }

    while (*v2);
  }

  if (*(a1 + 426))
  {
    if (v3)
    {
      do
      {
        v10 = *v3;
        *v2 = *v3;
        if (!v10)
        {
          *(a1 + 440) = v2;
        }

        --*(a1 + 448);
        v11 = v3[1];
        if (v11)
        {
          free(v11);
        }

        free(v3);
        v3 = *v2;
      }

      while (*v2);
    }

    if (*(a1 + 427))
    {
      close(*(a1 + 428));
      *(a1 + 428) = -1;
      *(a1 + 427) = 0;
    }
  }
}

uint64_t sub_A070(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = 4;
  while (1)
  {
    v6 = strlen(__s);
    v7 = write(*(a1 + 428), __s, v6);
    if (v7 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d writing to file\n");
      return 0;
    }

    if (--v5 <= 1)
    {
      return 0;
    }
  }

  if (v7 == v4)
  {
    return 1;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): partial write of %zd characters when requested %ld\n");
  return 0;
}

void sub_A148(uint64_t result, unsigned int a2, int a3, const char *a4)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v7 = 0;
      v8 = result + 1664;
      goto LABEL_7;
    }

    a2 = off_1A8390[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v7 = a2;
  v8 = result + 16 * a2 + 1664;
LABEL_7:
  if ((0x20420400uLL >> v7))
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v7))
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 0;
      v9 = v10 - 16;
      do
      {
        v13 = *(v9 + 16);
        v9 += 16;
        v12 = v13;
        if (v13)
        {
          v14 = v11 >= 7;
        }

        else
        {
          v14 = 1;
        }

        ++v11;
      }

      while (!v14);
      if (!v12)
      {
LABEL_21:
        *v9 = a3;
        sub_A63C(result + 1632, (v9 + 8), a4);
        *(v8 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v15 = *(result + 1652);
  if (!v15)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id", "dest_store == NULL");
    v15 = *(result + 1652);
  }

  *(result + 1652) = v15 + 1;
}

void sub_A288(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1664;
      goto LABEL_7;
    }

    a2 = off_1A8390[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1664;
LABEL_7:
  if ((0x3C03C0000uLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      *v7 = a3;
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v8 = *(result + 1652);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_long", "wrong type or internalStore.longVal == NULL");
    v8 = *(result + 1652);
  }

  *(result + 1652) = v8 + 1;
}

void sub_A378(uint64_t result, unsigned int a2, int a3, int a4, int a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1664;
      goto LABEL_7;
    }

    a2 = off_1A8390[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1664;
LABEL_7:
  if (((0xA00A000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 11;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        v14[a4 + 1] = a5;
        *(v14 + a4 + 36) = 1;
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1652);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try_int", "dest_store == NULL");
    v11 = *(result + 1652);
  }

  *(result + 1652) = v11 + 1;
}

void sub_A4D4(uint64_t result, unsigned int a2, int a3, int a4, const char *a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1664;
      goto LABEL_7;
    }

    a2 = off_1A8390[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1664;
LABEL_7:
  if (((0x14014000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 18;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        sub_A63C(result + 1632, &v14[2 * a4 + 2], a5);
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1652);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try", "dest_store == NULL");
    v11 = *(result + 1652);
  }

  *(result + 1652) = v11 + 1;
}

void sub_A63C(uint64_t a1, char **a2, const char *a3)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v6 = *(a1 + 20);
    if (!v6)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_set_string", "dest == NULL");
      v6 = *(a1 + 20);
    }

    *(a1 + 20) = v6 + 1;
  }
}

char *sub_A6E4(uint64_t a1, uint64_t a2)
{
  result = sub_9BFC(a1, a2);
  v4 = 0;
  if (result)
  {
    v3 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
    asprintf(&v4, "%s", buffer);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void sub_A794()
{
  v0 = reboot_np(3072, "Panic system for debugging purpose!");
  if (v0)
  {
    ramrod_log_msg("Failed to trigger system panic: %d", v0);
  }
}

char *sub_A7D4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a3);
      a3 = 0;
    }

    else
    {
      a3 = off_1A8390[4 * a3 + 2];
    }
  }

  v4 = *(a2 + 8 * a3 + 8);
  if (!v4)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v4, buffer, 1024, 0x8000100u);
  asprintf(&v6, "%s", buffer);
  return v6;
}

uint64_t sub_A8CC(int a1, int a2)
{
  v5.__sigaction_u.__sa_handler = 0;
  *&v5.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = 0;
  *&v4.sa_mask = 0;
  result = sigaction(a2, 0, &v4);
  if (!result && v4.__sigaction_u.__sa_handler == sub_5450)
  {
    return sigaction(a2, &v5, 0);
  }

  return result;
}

void sub_A938(uint64_t result)
{
  if (result)
  {
    ramrod_log_msg("ARM64 exception state (%u):\n", *(result + 12));
    ramrod_log_msg("  %4s: 0x%08x\n", "esr", *(result + 8));
    ramrod_log_msg("  %4s: 0x%016llx\n", "far", *result);
    ramrod_log_msg("\n");
    ramrod_log_msg("ARM64 thread state:\n");
    for (i = 0; i != 29; ++i)
    {
      *__str = 0;
      snprintf(__str, 8uLL, "x%lu", i);
      ramrod_log_msg("  %4s: 0x%016llx\n", __str, *(result + 16 + 8 * i));
    }

    ramrod_log_msg("  %4s: 0x%016llx\n", "fp", *(result + 248));
    ramrod_log_msg("  %4s: 0x%016llx\n", "lr", *(result + 256));
    ramrod_log_msg("  %4s: 0x%016llx\n", "sp", *(result + 264));
    ramrod_log_msg("  %4s: 0x%016llx\n", "pc", *(result + 272));
    ramrod_log_msg("  %4s: 0x%08x\n", "cpsr", *(result + 280));
    ramrod_log_msg("\n");
  }
}

void sub_ABB4(uint64_t a1)
{
  bzero(array, 0x400uLL);
  if (a1 && (v2 = *(a1 + 248), array[0] = *(a1 + 272), LODWORD(a1) = 1, v2))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = &vars0;
    v3 = 1;
    v4 = 2;
  }

  bzero(image_offsets, 0xA00uLL);
  ramrod_log_msg("Attempting to gather and print unsymbolicated backtrace.\n");
  v5 = backtrace_from_fp(v2, &array[a1], 128 - a1) + a1;
  if (v5 > v4)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      if ((v3 & (v6 == 0)) != 0)
      {
        v8 = " [approximate]";
      }

      else
      {
        v8 = "";
      }

      ramrod_log_msg("    %-3lu 0x%0*lx%s\n", v7, 16, array[v7], v8);
      ++v7;
      --v6;
    }

    while (v5 != v7);
  }

  ramrod_log_msg("\n");
  ramrod_log_msg("Attempting to gather and print backtrace symbols and image offsets.\n");
  v25 = backtrace_symbols(array, v5);
  backtrace_image_offsets(array, image_offsets, v5);
  v9 = v5 - v4;
  if (v5 > v4)
  {
    v10 = 0;
    v11 = &v25[v4];
    v12 = v11;
    do
    {
      v13 = *v12++;
      v14 = strlen(v13);
      if (v14 <= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >> 31)
      {
        v10 = 0x7FFFFFFF;
      }

      else
      {
        v10 = v15;
      }

      --v9;
    }

    while (v9);
    v16 = v5 - v4;
    if (v5 > v4)
    {
      v17 = 0;
      v18 = &image_offsets[v4];
      do
      {
        *&out[29] = 0;
        if ((v3 & (v17 == 0)) != 0)
        {
          v19 = " [approximate]";
        }

        else
        {
          v19 = "";
        }

        memset(out, 0, 32);
        uuid_unparse(v18->uuid, out);
        ramrod_log_msg("    %-*s (UUID: %s __TEXT + 0x%X)%s\n", v10, v11[v17++], out, v18->offset, v19);
        ++v18;
      }

      while (v16 != v17);
    }
  }

  ramrod_log_msg("\n");
  v20 = qword_1C6478;
  if (qword_1C6478 && *(qword_1C6478 + 128))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v5, &kCFTypeArrayCallBacks);
    if (v5)
    {
      v22 = v25;
      do
      {
        v23 = *v22++;
        v24 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
        CFArrayAppendValue(Mutable, v24);
        CFRelease(v24);
        --v5;
      }

      while (v5);
    }

    (*(v20 + 128))(*(v20 + 136), Mutable);
    CFRelease(Mutable);
  }

  free(v25);
}

void sub_AF04()
{
  v0 = sub_2468();
  if (v0)
  {
    qword_1C6478 = v0;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate chassis control context\n", "checkpoint_init_once");
  }
}

uint64_t sub_AF4C(uint64_t a1)
{
  v2 = (a1 + 432);
  while (1)
  {
    while (1)
    {
      sub_9D44(a1);
      sub_9F08(a1);
      pthread_mutex_lock((a1 + 24));
      sub_9C6C(a1);
      sub_9D00(a1);
      if (!*(a1 + 426) && *(a1 + 280))
      {
        *(a1 + 426) = 1;
        *(a1 + 280) = 0;
      }

      pthread_mutex_unlock((a1 + 24));
      v3 = *(a1 + 448);
      if (v3 >= 0x201)
      {
        do
        {
          v4 = *v2;
          v5 = **v2;
          *v2 = v5;
          if (!v5)
          {
            *(a1 + 440) = v2;
          }

          *(a1 + 448) = v3 - 1;
          v6 = v4[1];
          if (v6)
          {
            free(v6);
          }

          free(v4);
          v3 = *(a1 + 448);
        }

        while (v3 > 0x200);
      }

      if (!*(a1 + 426))
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_20;
      }
    }

    if (!*(a1 + 424) && !*(a1 + 425) && (!*(a1 + 427) || !v3))
    {
      dispatch_semaphore_wait(*(a1 + 104), 0xFFFFFFFFFFFFFFFFLL);
      if (*(a1 + 426))
      {
        if (!*(a1 + 448))
        {
          break;
        }
      }
    }
  }

LABEL_20:
  dispatch_semaphore_signal(*(a1 + 112));
  return 0;
}

const __CFDictionary *sub_B060(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

int *sub_B0F8(int *result, uint64_t a2)
{
  if (a2)
  {
    return sub_3680(result, 33, *(a2 + 48), *(a2 + 52), *(a2 + 56), *(a2 + 64), *(a2 + 72), 0, 0);
  }

  return result;
}

char *sub_B13C(char *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  *(result + 2) = *(a2 + 4);
  if (!*(result + 1))
  {
    result = *(a2 + 8);
    if (result)
    {
      result = strdup(result);
      *(v3 + 1) = result;
    }
  }

  if (!*(v3 + 2))
  {
    result = *(a2 + 16);
    if (result)
    {
      result = strdup(result);
      *(v3 + 2) = result;
    }
  }

  if (!*(v3 + 3))
  {
    result = *(a2 + 24);
    if (result)
    {
      result = strdup(result);
      *(v3 + 3) = result;
    }
  }

  *(v3 + 8) = *(a2 + 32);
  return result;
}

void sub_B1C0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

void *sub_B230(uint64_t a1)
{
  v2 = calloc(1uLL, 0x50uLL);
  v3 = calloc(1uLL, 0x60uLL);
  *v2 = v3;
  v4 = *(a1 + 56);
  v5 = v4[1];
  *v3 = *v4;
  v3[1] = v5;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v3[4] = v4[4];
  v3[5] = v8;
  v3[2] = v6;
  v3[3] = v7;
  *(v2 + 19) = *(a1 + 32);
  if (*(*v2 + 80))
  {
    if (!*(*v2 + 88))
    {
      v9 = *(a1 + 56);
      v10 = *v9;
      *(a1 + 56) = v9 + 24;
      if (v10)
      {
        v11 = v9 + 24;
        while (*(v11 - 2) != *(*v2 + 80) || !*(v11 - 8))
        {
          v12 = *v11;
          v11 += 24;
          if (!v12)
          {
            goto LABEL_10;
          }
        }

        v13 = calloc(1uLL, 0x60uLL);
        *(v2 + 1) = v13;
        v14 = *(v11 - 5);
        *v13 = *(v11 - 6);
        v13[1] = v14;
        v15 = *(v11 - 1);
        v17 = *(v11 - 4);
        v16 = *(v11 - 3);
        v13[4] = *(v11 - 2);
        v13[5] = v15;
        v13[2] = v17;
        v13[3] = v16;
      }
    }
  }

LABEL_10:
  sub_B13C(v2 + 16, a1 + 72);
  return v2;
}

__n128 sub_B328(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  if (a2)
  {
    v5 = calloc(1uLL, 0x60uLL);
    *(a1 + 8) = v5;
    v6 = *(a2 + 16);
    *v5 = *a2;
    v5[1] = v6;
    result = *(a2 + 64);
    v7 = *(a2 + 80);
    v9 = *(a2 + 32);
    v8 = *(a2 + 48);
    v5[4] = result;
    v5[5] = v7;
    v5[2] = v9;
    v5[3] = v8;
  }

  return result;
}

int *sub_B384(int *result, uint64_t a2, int a3, const void *a4)
{
  if (a2)
  {
    return sub_3680(result, 7, *(a2 + 48), *(a2 + 52), *(a2 + 56), *(a2 + 64), *(a2 + 72), a3, a4);
  }

  return result;
}

void sub_B3CC(uint64_t a1)
{
  if (*(a1 + 833) == 1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint_storage_now_accessible has already been called once..returning\n", "checkpoint_storage_now_accessible");
    return;
  }

  v2 = a1 + 688;
  v3 = *(a1 + 88);
  memset(&buffer, 0, 128);
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/%s", a1 + 688, "checkpoint");
  *(a1 + 816) = v4;
  if (v4)
  {
    if (CFStringGetFileSystemRepresentation(v4, &buffer, 128))
    {
      if (mkdir(&buffer, 0x1FFu) && *__error() != 17)
      {
        v5 = __error();
        strerror(*v5);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): mkdir %s error: %s\n");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for base checkpoint storage directory\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create path for base checkpoint storage directory\n");
  }

  v6 = (a1 + 816);
  v7 = ramrod_copy_log_storage_dir_path();
  if (v7)
  {
    v8 = v7;
    *(a1 + 824) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA/%s_%s.%s", v7, "ota", "tolerated_failures", "plist");
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA", v8);
    if (v9)
    {
      v10 = v9;
      memset(&buffer, 0, 128);
      if (CFStringGetFileSystemRepresentation(v9, &buffer, 128))
      {
        if (mkdir(&buffer, 0x1FFu) && *__error() != 17)
        {
          v11 = __error();
          strerror(*v11);
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Error while making lastOTA dir at %s: %s\n\n");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to get file system representation for lastOTA directory\n");
      }

      CFRelease(v10);
    }

    CFRelease(v8);
  }

  else
  {
    if (!*v6)
    {
      goto LABEL_30;
    }

    v12 = "restore";
    if (v3 == 2)
    {
      v12 = "ota";
    }

    *(a1 + 824) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s_%s.%s", *v6, v12, "tolerated_failures", "plist");
  }

  if (!*v6 || (v13 = *(a1 + 824)) == 0)
  {
LABEL_30:
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): resource limitations have blocked checkpointing access to filesystem storage\n", "checkpoint_storage_now_accessible");
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = v6[v18];
      if (v21)
      {
        CFRelease(v21);
        v6[v18] = 0;
      }

      v19 = 0;
      v18 = 1;
    }

    while ((v20 & 1) != 0);
    return;
  }

  *(a1 + 833) = 1;
  memset(__p, 0, sizeof(__p));
  if (CFStringGetFileSystemRepresentation(v13, __p, 128))
  {
    memset(&buffer, 0, sizeof(buffer));
    v14 = stat(__p, &buffer);
    if (!*(a1 + 104))
    {
      if (!v14 && remove(__p, v15))
      {
        v16 = __error();
        v17 = strerror(*v16);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to delete stale tolerated failure plist: %s\n", "checkpoint_storage_now_accessible", v17);
      }

      goto LABEL_47;
    }
  }

  else if (!*(a1 + 104))
  {
LABEL_47:
    sub_BCB8(v2, a1 + 2432);
    return;
  }

  if (!*(a1 + 2445) && *(a1 + 2440) >= 1)
  {
    *(a1 + 2444) = 1;
  }

  memset(v80, 0, sizeof(v80));
  if (!*(a1 + 833))
  {
    return;
  }

  v22 = ramrod_copy_log_storage_dir_path();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA/%s_%s.%s", v22, "ota", "tolerated_failures", "plist");
  if (!v24)
  {
    v30 = v23;
LABEL_87:
    CFRelease(v30);
    return;
  }

  v25 = v24;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  *error = 0u;
  v82 = 0u;
  if (!CFStringGetFileSystemRepresentation(v24, error, 128))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for storage read path\n");
LABEL_51:
    v29 = 0;
    goto LABEL_67;
  }

  v26 = open(error, 0);
  if (v26 == -1)
  {
    v31 = __error();
    strerror(*v31);
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to open storage read path [%s]: %s\n");
    goto LABEL_51;
  }

  v27 = v26;
  memset(&buffer, 0, sizeof(buffer));
  if (fstat(v26, &buffer))
  {
    v28 = __error();
    strerror(*v28);
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to stat storage read path [%s]: %s\n");
  }

  else
  {
    st_size = buffer.st_size;
    v33 = malloc(buffer.st_size);
    if (v33)
    {
      v34 = v33;
      if (st_size < 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = 0;
        while (1)
        {
          v36 = read(v27, &v34[v35], st_size - v35);
          if (v36 == -1)
          {
            break;
          }

          v35 += v36;
          st_size = buffer.st_size;
          if (v35 >= buffer.st_size)
          {
            goto LABEL_61;
          }
        }

        v37 = __error();
        v38 = strerror(*v37);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to read storage read path [%s]: %s\n", "checkpoint_filesystem_create_data_from_path", error, v38);
        st_size = buffer.st_size;
      }

LABEL_61:
      if (v35 == st_size)
      {
        v29 = CFDataCreate(kCFAllocatorDefault, v34, st_size);
        if (!v29)
        {
          v39 = __error();
          v40 = strerror(*v39);
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create data for storage read path [%s]: %s\n", "checkpoint_filesystem_create_data_from_path", error, v40);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v34);
      goto LABEL_66;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate buffer for storage read path [%s]\n");
  }

  v29 = 0;
LABEL_66:
  close(v27);
LABEL_67:
  FileSystemRepresentation = CFStringGetFileSystemRepresentation(*(a1 + 824), v80, 128);
  CFRelease(v25);
  CFRelease(v23);
  if (!v29)
  {
    return;
  }

  error[0] = 0;
  v42 = CFPropertyListCreateWithData(kCFAllocatorDefault, v29, 0, 0, error);
  if (error[0])
  {
    v43 = CFErrorCopyDescription(error[0]);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    memset(&buffer, 0, sizeof(buffer));
    if (v43)
    {
      v44 = v43;
      CFStringGetCString(v43, &buffer, 512, 0x8000100u);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file: %s\n", "checkpoint_storage_load_tolerated", &buffer);
      CFRelease(v44);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file\n");
    }

    goto LABEL_80;
  }

  if (!v42)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file (yet no error)\n");
LABEL_80:
    v49 = 0;
    v52 = 0;
    goto LABEL_81;
  }

  Value = CFDictionaryGetValue(v42, @"uuid");
  if (!Value)
  {
    v49 = 0;
    goto LABEL_89;
  }

  v47 = Value;
  v48 = ramrod_copy_NVRAM_variable(@"ota-uuid");
  v49 = v48;
  if (!v48)
  {
LABEL_89:
    v52 = 0;
    goto LABEL_90;
  }

  BytePtr = CFDataGetBytePtr(v48);
  Length = CFDataGetLength(v49);
  v52 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
  if (v52 && CFStringCompare(v47, v52, 0) == kCFCompareEqualTo)
  {
    CFDictionaryApplyFunction(v42, sub_C0B4, (a1 + 2432));
    *&buffer.st_dev = 0;
    CFDictionaryApplyFunction(*(a1 + 2432), sub_C6AC, &buffer);
    if (*&buffer.st_mode)
    {
      CFDictionaryApplyFunction(*(a1 + 2432), sub_C714, &buffer);
      st_dev = buffer.st_dev + *&buffer.st_mode - 1;
    }

    else
    {
      st_dev = buffer.st_dev;
    }

    *(a1 + 2440) = st_dev;
    if (*(a1 + 2444))
    {
      sub_BCB8(v2, a1 + 2432);
    }

    *(a1 + 2445) = 1;
    goto LABEL_81;
  }

LABEL_90:
  if (FileSystemRepresentation)
  {
    if (remove(v80, v46))
    {
      v54 = __error();
      strerror(*v54);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to delete stale tolerated failure plist: %s\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): tolerated failure plist path string not set..\n");
  }

LABEL_81:
  if (error[0])
  {
    CFRelease(error[0]);
    error[0] = 0;
  }

  CFRelease(v29);
  if (v49)
  {
    CFRelease(v49);
  }

  if (v52)
  {
    v30 = v52;
    goto LABEL_87;
  }
}

void sub_BCB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 145))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  v5 = [*(a1 + 136) fileSystemRepresentation];
  if (*(a2 + 12))
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  ramrod_log_msg("Considering saving tolerated failures: %s %s %s\n", v4, v5, v6);
  if (*(a1 + 145) && *(a1 + 136) && *(a2 + 12))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      error = 0;
      CFDictionaryApplyFunction(*a2, sub_C768, Mutable);
      v9 = ramrod_copy_NVRAM_variable(@"ota-uuid");
      if (v9)
      {
        v10 = v9;
        BytePtr = CFDataGetBytePtr(v9);
        Length = CFDataGetLength(v10);
        v13 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
        if (v13)
        {
          v14 = v13;
          v43 = 0u;
          memset(v44, 0, 31);
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          *buffer = 0u;
          v31 = 0u;
          CFStringGetCString(v13, buffer, 255, 0x8000100u);
          CFDictionarySetValue(v8, @"uuid", v14);
          CFRelease(v14);
        }

        CFRelease(v10);
      }

      v15 = CFPropertyListCreateData(kCFAllocatorDefault, v8, kCFPropertyListXMLFormat_v1_0, 0, &error);
      if (error)
      {
        v16 = CFErrorCopyDescription(error);
        memset(v44, 0, sizeof(v44));
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *buffer = 0u;
        v31 = 0u;
        if (v16)
        {
          v17 = v16;
          CFStringGetCString(v16, buffer, 512, 0x8000100u);
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data: %s\n", "checkpoint_storage_save_tolerated", buffer);
          CFRelease(v17);
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data\n");
        }
      }

      else if (v15)
      {
        v18 = *(a1 + 136);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *buffer = 0u;
        v31 = 0u;
        if (v18 && CFStringGetFileSystemRepresentation(v18, buffer, 128))
        {
          v19 = open(buffer, 1538, 420);
          if (v19 == -1)
          {
            v23 = __error();
            strerror(*v23);
            ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to open storage write path [%s]: %s\n");
          }

          else
          {
            v20 = v19;
            v21 = CFDataGetLength(v15);
            v22 = CFDataGetBytePtr(v15);
            if (write(v20, v22, v21) == v21)
            {
              close(v20);
              *(a2 + 12) = 0;
              ramrod_log_msg("Saved tolerated steps\n", v26, v27, v28);
            }

            else
            {
              v24 = __error();
              v25 = strerror(*v24);
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed on write of %zd bytes to storage path [%s]: %s\n", "checkpoint_filesystem_write_data_to_path", v21, buffer, v25);
              close(v20);
            }
          }
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for storage write path\n");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data (yet no error)\n");
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      if (v15)
      {
        CFRelease(v15);
      }

      CFRelease(v8);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create dictionary for storing tolerated failures\n", "checkpoint_storage_save_tolerated");
    }
  }
}

void sub_C0B4(const __CFString *a1, const void *a2, void *a3)
{
  *buffer = 0;
  v27 = 0;
  v28 = 0;
  CFStringGetCString(a1, buffer, 24, 0x8000100u);
  v5 = strtoll(buffer, 0, 16);
  if (!a2 || (v6 = v5, v7 = CFGetTypeID(a2), v7 != CFDictionaryGetTypeID()))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid format for loaded tolerated failure - entry discarded\n");
    return;
  }

  Value = CFDictionaryGetValue(a2, @"StepName");
  v9 = sub_C324(a2, @"InitialAttempted");
  if (!Value || (v10 = v9, v11 = CFGetTypeID(Value), v11 != CFStringGetTypeID()) || !v10)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid information for loaded tolerated step ID:0x%llX - entry discarded\n");
    return;
  }

  v12 = sub_C384(a2, @"InitialFailureNumber");
  v13 = sub_C384(a2, @"InitialResult");
  v14 = CFDictionaryGetValue(a2, @"InitialError");
  v15 = v14;
  if (v14)
  {
    v16 = CFGetTypeID(v14);
    if (v16 == CFStringGetTypeID())
    {
      CFRetain(v15);
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = sub_C324(a2, @"InitialSkipped");
  v18 = sub_B060(*a3, v6);
  if (v18)
  {
    v19 = v18;
    *(v18 + 8) = 0;
    *(v18 + 3) = v12;
    *(v18 + 4) = v13;
    v20 = *(v18 + 3);
    if (v20)
    {
      CFRelease(v20);
      *(v19 + 3) = 0;
    }

    v21 = *(v19 + 4);
    if (v21)
    {
      CFRelease(v21);
      *(v19 + 4) = 0;
    }

    if (v15)
    {
      *(v19 + 4) = v15;
      CFRetain(v15);
    }

    *(v19 + 40) = v17;
    *(a3 + 12) = 1;
  }

  else
  {
    v22 = sub_C414(*a3, v6);
    if (v22)
    {
      v23 = v22;
      *v22 = Value;
      v24 = v22 + 1;
      CFRetain(Value);
      sub_C544(v24, v12, v13, 0);
      if (!v15)
      {
        return;
      }

      v25 = v23[4];
      if (v25)
      {
        CFRelease(v25);
      }

      v23[4] = v15;
      CFRetain(v15);
LABEL_28:
      CFRelease(v15);
      return;
    }
  }

  if (v15)
  {
    goto LABEL_28;
  }
}

uint64_t sub_C324(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v3);
}

uint64_t sub_C384(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFNumberGetTypeID()))
  {
    if (!CFNumberGetValue(v3, kCFNumberIntType, &valuePtr))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): value that is not a number\n");
  }

  return valuePtr;
}

void *sub_C414(__CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = calloc(1uLL, 0x58uLL);
  if (v3)
  {
    pthread_once(&stru_1C45E0, sub_C5B4);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      *(Instance + 16) = v3;
      v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(a1, v6, v5);
        CFRelease(v7);
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for new tolerated\n", "checkpoint_tolerated_new");
      }

      CFRelease(v5);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create tolerated ref\n", "checkpoint_tolerated_new");
      free(v3);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to alloc tolerated\n", "checkpoint_tolerated_new");
  }

  return v3;
}

_DWORD *sub_C544(_DWORD *result, int a2, int a3, CFTypeRef cf)
{
  *result = 1;
  result[1] = a2;
  result[2] = a3;
  if (cf)
  {
    v5 = result;
    v6 = *(result + 2);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 2) = 0;
    }

    v7 = *(v5 + 3);
    if (v7)
    {
      CFRelease(v7);
      *(v5 + 3) = 0;
    }

    *(v5 + 2) = cf;

    return CFRetain(cf);
  }

  return result;
}

uint64_t sub_C5B4()
{
  result = _CFRuntimeRegisterClass();
  qword_1C64D0 = result;
  return result;
}

void sub_C5DC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

CFStringRef sub_C614(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"tolerated=%p", result->data);
  }

  return result;
}

CFStringRef sub_C660(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"tolerated=%p", result->data);
  }

  return result;
}

void sub_C6AC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(v3 + 12);
    if (v4 > *a3)
    {
      *a3 = v4;
    }

    v5 = *(v3 + 52);
    if (v5 > a3[1])
    {
      a3[1] = v5;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n", "_checkpoint_iterate_tolerated_failure_max");
  }
}

void sub_C714(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(v3 + 52);
    if (v4)
    {
      *(v3 + 52) = *a3 + v4;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n", "_checkpoint_iterate_tolerated_failure_adjust");
  }
}

void sub_C768(const __CFNumber *a1, uint64_t a2, __CFDictionary *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"StepName", *v3);
      if (*(v3 + 8))
      {
        v8 = kCFBooleanTrue;
      }

      else
      {
        v8 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v7, @"InitialAttempted", v8);
      sub_C9BC(v7, @"InitialFailureNumber", *(v3 + 12));
      sub_C9BC(v7, @"InitialResult", *(v3 + 16));
      sub_CA5C(v7, @"InitialError", v3 + 8);
      if (*(v3 + 40))
      {
        v9 = kCFBooleanTrue;
      }

      else
      {
        v9 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v7, @"InitialSkipped", v9);
      if (*(v3 + 48))
      {
        CFDictionarySetValue(v7, @"RetryAttempted", kCFBooleanTrue);
        sub_C9BC(v7, @"RetryFailureNumber", *(v3 + 52));
        sub_C9BC(v7, @"RetryResult", *(v3 + 56));
        sub_CA5C(v7, @"RetryError", v3 + 48);
        if (*(v3 + 80))
        {
          v10 = kCFBooleanTrue;
        }

        else
        {
          v10 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v7, @"RetrySkipped", v10);
      }

      valuePtr = 0;
      if (CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
      {
        v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"0x%llx", valuePtr);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(a3, v11, v7);
          CFRelease(v12);
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): step ID cannot be converted to hex string: entry not stored\n");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): step ID cannot be converted to int64: entry not stored\n");
      }

      CFRelease(v7);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create tolerated failure entry\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n");
  }
}

void sub_C9BC(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, @"test_int_value");
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): value cannot be converted to number ref: key/value not stored\n", "_checkpoint_iterate_tolerated_store_int");
  }
}

void sub_CA5C(CFMutableDictionaryRef theDict, void *key, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 16))
    {
      v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", *(a3 + 16));
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(theDict, key, v5);

        CFRelease(v6);
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error cannot be converted to string: key/value not stored\n", "_checkpoint_iterate_tolerated_store_error");
      }
    }

    else
    {
      v7 = *(a3 + 24);
      if (v7)
      {

        CFDictionarySetValue(theDict, key, v7);
      }
    }
  }
}

const void **sub_CB48(uint64_t a1, const char **a2, int a3, const void *a4)
{
  v8 = sub_B060(*(a1 + 2432), *a2);
  v9 = *(a1 + 2440) + 1;
  *(a1 + 2440) = v9;
  if (v8)
  {
    v10 = v8;
    if (*(a1 + 104))
    {
      v11 = (v8 + 48);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed tolerated step (%s) on initial attempt when already tracking tolerated failure for step\n", "checkpoint_tolerated_set_failed_entry", a2[1]);
      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      v15 = *(v10 + 3);
      if (v15)
      {
        CFRelease(v15);
        *(v10 + 3) = 0;
      }

      v16 = *(v10 + 4);
      if (v16)
      {
        CFRelease(v16);
        *(v10 + 4) = 0;
      }

      v17 = *(v10 + 8);
      if (v17)
      {
        CFRelease(v17);
        *(v10 + 8) = 0;
      }

      v18 = *(v10 + 9);
      if (v18)
      {
        CFRelease(v18);
      }

      *(v10 + 10) = 0;
      *(v10 + 3) = 0u;
      *(v10 + 4) = 0u;
      *(v10 + 1) = 0u;
      *(v10 + 2) = 0u;
      *v10 = 0u;
      sub_CCB0(v10, a2[1]);
      v9 = *(a1 + 2440);
      v11 = (v10 + 8);
    }
  }

  else
  {
    result = sub_C414(*(a1 + 2432), *a2);
    if (!result)
    {
      goto LABEL_20;
    }

    v13 = result;
    sub_CCB0(result, a2[1]);
    v9 = *(a1 + 2440);
    v14 = 6;
    if (!*(a1 + 104))
    {
      v14 = 1;
    }

    v11 = &v13[v14];
  }

  result = sub_C544(v11, v9, a3, a4);
  *(a1 + 2444) = 1;
LABEL_20:
  if (a3)
  {
    if (!*(a1 + 2446))
    {
      *(a1 + 2446) = 1;
    }
  }

  return result;
}

CFStringRef sub_CCB0(const void **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
    *a1 = 0;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", a2);
  *a1 = result;
  return result;
}

char *sub_CD10(char *a1, uint64_t a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v7 = sub_90E4(a1, "|%s(%s)");
    }

    else
    {
      v7 = sub_90E4(a1, "%s(%s)");
    }

    a1 = v7;
    *a4 = 1;
  }

  return a1;
}

void sub_CDE4(uint64_t result)
{
  if (!*(result + 2450) && sub_2668(result, 0, 0))
  {
    if (!*(result + 1168))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v14, 0x400uLL);
    *(result + 2452) = 0;
    *(result + 2464) = 0;
    __strlcpy_chk();
    v2 = strlen(__s);
    CFStringGetCString(*(result + 1168), &__s[v2], 1024 - v2, 0x8000100u);
    __strlcpy_chk();
    v3 = strlen(v14);
    CFStringGetCString(*(result + 1168), &v14[v3], 1024 - v3, 0x8000100u);
    v4 = 0;
    while (1)
    {
      v5 = off_1A8A18[v4];
      if (!strncasecmp(__s, v5, 0x400uLL))
      {
        *(result + 2452) = v4;
        goto LABEL_11;
      }

      if (!strncasecmp(v14, v5, 0x400uLL))
      {
        break;
      }

      if (++v4 == 34)
      {
        LODWORD(v4) = *(result + 2452);
        goto LABEL_11;
      }
    }

    *(result + 2452) = v4;
    *(result + 2451) = 1;
LABEL_11:
    if (!v4)
    {
      goto LABEL_23;
    }

    v6 = *(result + 1192);
    if (v6)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v6, @",");
      *(result + 2464) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(result + 2464), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v12 = *(result + 1176);
        if (v12)
        {
          *(result + 2456) = CFStringGetIntValue(v12);
        }

        v13 = *(result + 1184);
        if (v13)
        {
          *(result + 2460) = CFStringGetIntValue(v13);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", "checkpoint_simulator_configure");
    }

    *(result + 2452) = 0;
LABEL_23:
    *(result + 2450) = 1;
  }
}

void *sub_D018()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t unit_test_reboot(uint64_t a1, uint64_t a2, CFStringRef *a3, BOOL *a4)
{
  v5 = a2;
  if ((a2 - 3) > 0xFFFFFFFD)
  {
    result = (qword_1AD5A8[2 * a2 + 1])(a2, qword_1AD5A8[2 * a2], a3);
  }

  else
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reboot test #%d: invalid", a2);
    result = 1;
  }

  *a4 = v5 < 1;
  return result;
}

uint64_t sub_D160(int a1, const char *a2)
{
  v7 = off_1A8E88;
  ramrod_log_msg("\nUNIT TEST(%s) : {test #%d: %s} triggering reboot\n", "utest_reboot_device", a1, a2);
  v4 = ramrod_execute_command(&v7);
  v5 = v4;
  if (v4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : {test #%d: %s} unable to execute reboot command: %d\n", "utest_reboot_device", a1, a2, v4);
  }

  return v5;
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_write_full_log_buffer_to_fd(int __fd)
{
  v1 = qword_1C64E8;
  if (qword_1C64E0)
  {
    v2 = qword_1C64E8 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && ((v4 = qword_1C64F0, (v5 = (qword_1C64F0 - qword_1C64E0) & 0xFFFFFLL) != 0) && write(__fd, qword_1C64E0, v5) == -1 || v1 != v4 && write(__fd, qword_1C64F0, v1 - v4) == -1))
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t ramrod_add_log_fd(int a1)
{
  valuePtr = a1;
  memset(&v10, 0, sizeof(v10));
  pthread_mutex_lock(&stru_1C45F0);
  pthread_mutex_lock(&stru_1C4630);
  if (fstat(a1, &v10) || (v10.st_mode & 0x80000000) == 0)
  {
    v2 = *(&xmmword_1C64F8 + 1);
    if (!*(&xmmword_1C64F8 + 1))
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
      *(&xmmword_1C64F8 + 1) = Mutable;
      if (!Mutable)
      {
        v4 = __stderrp;
        v5 = "failed to allocate logging file descriptors";
        v6 = 43;
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v2 = xmmword_1C64F8;
    if (!xmmword_1C64F8)
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
      *&xmmword_1C64F8 = Mutable;
      if (!Mutable)
      {
        v4 = __stderrp;
        v5 = "failed to allocate logging file descriptors for regular files";
        v6 = 61;
LABEL_13:
        fwrite(v5, v6, 1uLL, v4);
        v7 = 0;
        goto LABEL_14;
      }

LABEL_8:
      v2 = Mutable;
    }
  }

  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v7)
  {
    ramrod_write_full_log_buffer_to_fd(valuePtr);
    CFSetAddValue(v2, v7);
    v8 = 0;
    goto LABEL_15;
  }

  fwrite("failed to allocate file descriptor number", 0x29uLL, 1uLL, __stderrp);
LABEL_14:
  v8 = 0xFFFFFFFFLL;
LABEL_15:
  pthread_mutex_unlock(&stru_1C4630);
  pthread_mutex_unlock(&stru_1C45F0);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t ramrod_remove_log_fd(uint64_t a1)
{
  v1 = a1;
  pthread_mutex_lock(&stru_1C4630);
  v2 = sub_D7A0(v1);
  pthread_mutex_unlock(&stru_1C4630);
  return v2;
}

uint64_t sub_D7A0(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &xmmword_1C64F8 + 1;
  if (v2)
  {
    v3 = &xmmword_1C64F8;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&stru_1C4630);
  if (a1 && xmmword_1C64F8 != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (*(&xmmword_1C64F8 + 1))
    {
      CFSetApplyFunction(*(&xmmword_1C64F8 + 1), sub_DA40, &context);
    }

    qword_1C6508 += a2;
    if (qword_1C6508)
    {
      LOBYTE(theArray[1]) = 1;
      qword_1C6508 = 0;
    }

    if (xmmword_1C64F8)
    {
      CFSetApplyFunction(xmmword_1C64F8, sub_DA40, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            sub_D7A0(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&stru_1C4630);
  return 0;
}

void sub_DA40(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

_BYTE *ramrod_copy_log_buffer()
{
  pthread_mutex_lock(&stru_1C45F0);
  v0 = qword_1C64F0;
  if (qword_1C64F0)
  {
    v1 = malloc(0x100000uLL);
    if (v1)
    {
      v2 = qword_1C64E8;
      v3 = (v0 - qword_1C64E0) & 0xFFFFF;
      if (((v0 - qword_1C64E0) & 0xFFFFF) != 0)
      {
        __memcpy_chk();
      }

      if (v2 != v0)
      {
        memcpy(&v1[v3], v0, v2 - v0);
      }

      v1[v3 + v2 - v0] = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_unlock(&stru_1C45F0);
  return v1;
}

void sub_DC90(uint64_t a1, const char *a2, va_list a3)
{
  v5 = a1;
  if (byte_1C4670 == 1)
  {
    if (qword_1C6520 != -1)
    {
      sub_D5918();
    }

    if (qword_1C6518)
    {
      pthread_mutex_lock(&stru_1C4678);
      last = 0;
      v6 = asl_match(qword_1C6518, 0, &last, qword_1C6528, 0x100uLL, 0, 1);
      if (v6)
      {
        v7 = v6;
        do
        {
          qword_1C6528 = last + 1;
          while (1)
          {
            v8 = asl_next(v7);
            if (!v8)
            {
              break;
            }

            v9 = asl_format(v8, "std", "lcl", 1u);
            if (v9)
            {
              v10 = v9;
              sub_E18C(v5, "SYSLOG: %s", v9);
              free(v10);
            }
          }

          asl_close(v7);
          v7 = asl_match(qword_1C6518, 0, &last, qword_1C6528, 0x100uLL, 0, 1);
        }

        while (v7);
      }

      pthread_mutex_unlock(&stru_1C4678);
    }
  }

  sub_DFA0(v5, a2, a3);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (v1)
  {
    v2 = v1;
    if (CFStringGetCStringPtr(v1, 0x8000100u))
    {
      ramrod_log_msg("%s");
    }

    else
    {
      Length = CFStringGetLength(v2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v5 = malloc(MaximumSizeForEncoding + 1);
      if (v5)
      {
        v6 = v5;
        if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          ramrod_log_msg("%s");
        }

        else
        {
          ramrod_log_msg("(Failed to alloc and convert log message)\n");
        }

        free(v6);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n");
      }
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("(Failed to format log message)\n");
  }
}

void sub_DFA0(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&stru_1C45F0);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (off_1C6510)
      {
        off_1C6510(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((byte_1C4671 & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = qword_1C64F0;
    if (!qword_1C64F0)
    {
      v5 = malloc(0x100000uLL);
      qword_1C64F0 = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&stru_1C45F0);
        goto LABEL_24;
      }

      qword_1C64E0 = v5;
      qword_1C64E8 = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = qword_1C64E8;
      v9 = qword_1C64E0;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        qword_1C64E8 = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          qword_1C64E0 = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

void sub_E11C(id a1)
{
  v1 = asl_open_path(0, 0);
  if (v1)
  {
    asl_close(v1);
    v2 = "asl_open_path() succeeded - syslogd polling not needed";
  }

  else
  {
    v3 = asl_open(0, 0, 4u);
    if (v3)
    {
      qword_1C6518 = v3;
      return;
    }

    v2 = "asl_open() returned NULL - disabling syslogd polling";
  }

  sub_E18C(1, v2);
}

uint64_t sub_E434(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D59D0(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_EAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_EC5C(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

CFTypeRef ramrod_copy_value_from_IONode(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  if (CFProperty)
  {
    v6 = CFGetTypeID(CFProperty);
    if (v6 != CFDataGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      ramrod_log_msg("%s: Got a non-CFData return value from IORegistryEntryCreateCFProperty for property %s\n", "ramrod_copy_value_from_IONode", CStringPtr);
      CFRelease(CFProperty);
      return 0;
    }
  }

  return CFProperty;
}

CFStringRef ramrod_copy_crypto_hash_method()
{
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"crypto-hash-method");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = CFStringCreateWithCString(kCFAllocatorDefault, BytePtr, 0x8000100u);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_crypto_hash_method");
      v4 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_crypto_hash_method");
    return 0;
  }

  return v4;
}

CFNumberRef ramrod_copy_ecid()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"unique-chip-id");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_ecid");
      v3 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_ecid");
    return 0;
  }

  return v3;
}

CFNumberRef ramrod_copy_board_id()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"board-id");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_board_id");
      v3 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_board_id");
    return 0;
  }

  return v3;
}

CFNumberRef ramrod_copy_chip_id()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"chip-id");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_chip_id");
      v3 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_copy_chip_id");
    return 0;
  }

  return v3;
}

CFBooleanRef ramrod_get_certificate_production_status()
{
  v0 = kCFBooleanTrue;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"certificate-production-status");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (!*CFDataGetBytePtr(v2))
      {
        v0 = kCFBooleanFalse;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_certificate_production_status");
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_certificate_production_status");
  }

  return v0;
}

CFBooleanRef ramrod_get_certificate_security_mode()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"certificate-security-mode");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_certificate_security_mode");
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", "ramrod_get_certificate_security_mode");
  }

  return v0;
}